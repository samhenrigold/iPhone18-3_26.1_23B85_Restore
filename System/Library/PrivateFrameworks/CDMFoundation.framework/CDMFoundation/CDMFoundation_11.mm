uint64_t sub_1DC39430C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 3)
  {
    return 3;
  }

  else
  {
    return dword_1DC5269F0[v1];
  }
}

void sub_1DC394330()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  sub_1DC5161CC();
  OUTLINED_FUNCTION_0();
  v136 = v5;
  v137 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v135 = v7 - v6;
  OUTLINED_FUNCTION_12();
  sub_1DC515EBC();
  OUTLINED_FUNCTION_0();
  v133 = v9;
  v134 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v132 = v11 - v10;
  OUTLINED_FUNCTION_12();
  v131 = sub_1DC515ECC();
  OUTLINED_FUNCTION_0();
  v129 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v124[1] = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v124[0] = v124 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D090, &qword_1DC524180);
  v19 = OUTLINED_FUNCTION_10(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_8();
  v130 = v20 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v125 = v124 - v23;
  OUTLINED_FUNCTION_12();
  sub_1DC515E7C();
  OUTLINED_FUNCTION_0();
  v127 = v25;
  v128 = v24;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_1();
  v126 = v27 - v26;
  OUTLINED_FUNCTION_12();
  sub_1DC515EDC();
  OUTLINED_FUNCTION_0();
  v138 = v29;
  v139 = v28;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_68_4();
  v31 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();
  v35 = sub_1DC515F3C();
  OUTLINED_FUNCTION_0();
  v37 = v36;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_8();
  v41 = v39 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = v124 - v43;
  (*(v33 + 16))(v1, v3, v31);
  v45 = OUTLINED_FUNCTION_55();
  if (v46(v45) == *MEMORY[0x1E69D02E0])
  {
    v47 = OUTLINED_FUNCTION_55();
    v48(v47);
    (*(v37 + 32))(v44, v1, v35);
    v49 = v35;
    v50 = [objc_allocWithZone(MEMORY[0x1E69CEF90]) init];
    if (v50)
    {
      sub_1DC515EFC();
      v51 = OUTLINED_FUNCTION_43();
      v53 = v52(v51);
      if (v53 == *MEMORY[0x1E69D0608])
      {
        v54 = OUTLINED_FUNCTION_43();
        v55(v54);
        v56 = OUTLINED_FUNCTION_31_0();
        v57(v56);
        v58 = OUTLINED_FUNCTION_98_3();
        [v58 v59];
        v60 = v130;
        sub_1DC515E8C();
        v61 = v131;
        OUTLINED_FUNCTION_39(v60, 1, v131);
        v62 = v135;
        v63 = v129;
        if (v64)
        {
          sub_1DC28EB30(v60, &qword_1ECC7D090, &qword_1DC524180);
          v65 = 1;
          v66 = v136;
        }

        else
        {
          v83 = OUTLINED_FUNCTION_63_0();
          v84(v83);
          v85 = OUTLINED_FUNCTION_85_0();
          v87 = v86(v85);
          v88 = *(v63 + 8);
          v66 = v136;
          if (v87 == *MEMORY[0x1E69D05E8])
          {
            v65 = 2;
          }

          else
          {
            v107 = OUTLINED_FUNCTION_85_0();
            v88(v107);
            v65 = 0;
          }

          (v88)(v130, v61);
        }

        [v50 setCorrectionOutcome_];
        v133[1](v132, v134);
      }

      else if (v53 == *MEMORY[0x1E69D0600])
      {
        v76 = OUTLINED_FUNCTION_43();
        v77(v76);
        v78 = OUTLINED_FUNCTION_31_0();
        v79(v78);
        [v50 setIsExplicit_];
        v80 = v125;
        sub_1DC515E3C();
        v81 = v131;
        OUTLINED_FUNCTION_39(v80, 1, v131);
        v62 = v135;
        if (v64)
        {
          sub_1DC28EB30(v80, &qword_1ECC7D090, &qword_1DC524180);
          v82 = 1;
          v66 = v136;
        }

        else
        {
          v100 = v129;
          v101 = OUTLINED_FUNCTION_63_0();
          v102(v101);
          v103 = OUTLINED_FUNCTION_85_0();
          v105 = v104(v103);
          v106 = *(v100 + 8);
          v66 = v136;
          if (v105 == *MEMORY[0x1E69D05E8])
          {
            v82 = 2;
          }

          else
          {
            v110 = OUTLINED_FUNCTION_85_0();
            v106(v110);
            v82 = 0;
          }

          (v106)(v125, v81);
        }

        [v50 setCorrectionOutcome_];
        (*(v127 + 8))(v126, v128);
      }

      else
      {
        v133 = v50;
        v89 = sub_1DC517B9C();
        sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
        v90 = sub_1DC296DBC();
        v91 = *(v37 + 16);
        v134 = v44;
        v91(v41, v44, v49);
        if (os_log_type_enabled(v90, v89))
        {
          v92 = OUTLINED_FUNCTION_63();
          v93 = OUTLINED_FUNCTION_82();
          v140 = v93;
          *v92 = 136315138;
          sub_1DC515EFC();
          LODWORD(v132) = v89;
          v94 = v139;
          v95 = sub_1DC51777C();
          v96 = v49;
          v98 = v97;
          (*(v37 + 8))(v41, v96);
          v99 = sub_1DC291244(v95, v98, &v140);

          *(v92 + 4) = v99;
          _os_log_impl(&dword_1DC287000, v90, v132, "Unable to log GenAI query type: %s", v92, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v93);
          OUTLINED_FUNCTION_66();
          OUTLINED_FUNCTION_66();
        }

        else
        {

          (*(v37 + 8))(v41, v49);
          v94 = v139;
        }

        v50 = v133;
        v108 = OUTLINED_FUNCTION_98_3();
        [v108 v109];
        (*(v138 + 8))(v0, v94);
        v62 = v135;
        v66 = v136;
      }

      sub_1DC515E2C();
      v111 = v137;
      v112 = (*(v66 + 88))(v62, v137);
      if (v112 == *MEMORY[0x1E69D0720])
      {
        [v50 setGenAIAppIntent_];
LABEL_33:
        v116 = OUTLINED_FUNCTION_78_6();
        v117(v116);
        goto LABEL_34;
      }

      if (v112 == *MEMORY[0x1E69D0730])
      {
        [v50 setGenAIAppIntent_];
        goto LABEL_33;
      }

      if (v112 == *MEMORY[0x1E69D0718])
      {
        v113 = OUTLINED_FUNCTION_98_3();
        [v113 v114];
        goto LABEL_33;
      }

      if (v112 == *MEMORY[0x1E69D0728])
      {
        [v50 setGenAIAppIntent_];
        v118 = OUTLINED_FUNCTION_78_6();
        v119(v118);
      }

      else
      {
        v120 = OUTLINED_FUNCTION_98_3();
        [v120 v121];
        v122 = OUTLINED_FUNCTION_78_6();
        v123(v122);
        (*(v66 + 8))(v62, v111);
      }
    }

    else
    {
      sub_1DC517B9C();
      sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
      v69 = sub_1DC296DBC();
      v70 = OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C(v70, v71, v72, v73, 30, 2);

      v74 = OUTLINED_FUNCTION_78_6();
      v75(v74);
    }
  }

  else
  {
    v67 = OUTLINED_FUNCTION_55();
    v68(v67);
  }

LABEL_34:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC394DC0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 == 1)
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 1;
  }
}

void *sub_1DC394DDC(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_54_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_10(v5);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_40();
  v7 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  sub_1DC28F3B8(a1, v1, &unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_39(v1, 1, v7);
  if (v17)
  {
    sub_1DC28EB30(v1, &unk_1ECC7CA30, &qword_1DC522A00);
    return 0;
  }

  (*(v9 + 32))(v16, v1, v7);
  v18 = [objc_allocWithZone(MEMORY[0x1E69CEFC0]) init];
  if (!v18)
  {
    v23 = sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v24 = sub_1DC296DBC();
    sub_1DC516F0C(v23, &dword_1DC287000, v24, "Unable to create NLRouter override metadata", 43, 2, MEMORY[0x1E69E7CC0]);

    (*(v9 + 8))(v16, v7);
    return 0;
  }

  v19 = v18;
  sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
  v20 = OUTLINED_FUNCTION_56_0();
  v21(v20);
  v22 = sub_1DC299428(v13);
  [v19 setOverrideId_];

  (*(v9 + 8))(v16, v7);
  return v19;
}

uint64_t sub_1DC395058()
{
  OUTLINED_FUNCTION_1_0();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[4] = v5;
  v6 = sub_1DC516F5C();
  v1[9] = v6;
  OUTLINED_FUNCTION_52(v6);
  v1[10] = v7;
  v1[11] = OUTLINED_FUNCTION_118();
  v8 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1DC395104()
{
  OUTLINED_FUNCTION_93_0();
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  *(v0 + 96) = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v10 = *(v0 + 48);
  v3 = sub_1DC399080();
  *(v0 + 104) = v3;
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = sub_1DC296DBC();
  sub_1DC2A2ED0(v4, v5, v6, v7, 1, v1);

  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *(v8 + 16) = v10;
  v11 = *(*v2 + 504) + **(*v2 + 504);
  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  *v9 = v0;
  v9[1] = sub_1DC3952F8;
  OUTLINED_FUNCTION_70_6();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1DC3952F8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC3953F8()
{
  OUTLINED_FUNCTION_100_0();
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[3];
  v12 = v0[2];
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = sub_1DC296DBC();
  sub_1DC2B8848(v2, v4, v5, v6, v7);

  v8 = OUTLINED_FUNCTION_63_0();
  v9(v8);

  v10 = v0[1];

  return v10(v12, v3);
}

uint64_t sub_1DC3954D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_60_9();
  OUTLINED_FUNCTION_36_11();
  v11 = *(v10 + 104);
  v12 = *(v10 + 88);

  v13 = *v11;
  v14 = *(v11 + 8);
  v15 = *(v11 + 16);
  v16 = sub_1DC296DBC();
  sub_1DC2B8848(v12, v13, v14, v15, v16);

  v17 = OUTLINED_FUNCTION_63_0();
  v18(v17);

  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_64_5();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_1DC395588(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1DC39864C;

  return v5();
}

uint64_t sub_1DC395674()
{
  OUTLINED_FUNCTION_1_0();
  v1[5] = v2;
  v1[6] = v0;
  v6 = OUTLINED_FUNCTION_63_7(v3, v4, v5);
  v1[7] = v6;
  OUTLINED_FUNCTION_52(v6);
  v1[8] = v7;
  v1[9] = OUTLINED_FUNCTION_118();
  v8 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1DC395714()
{
  OUTLINED_FUNCTION_41_5();
  sub_1DC510B5C();
  OUTLINED_FUNCTION_12_0();
  v4 = *(v1 + 504) + **(v1 + 504);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v3 = type metadata accessor for NLRouterServiceResponse(0);
  *v2 = v0;
  v2[1] = sub_1DC395864;
  OUTLINED_FUNCTION_38_9(v3);

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1DC395864()
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v6 = v5;
  *(v3 + 88) = v0;

  v7 = OUTLINED_FUNCTION_66_8();
  v8(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_89_2();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_89_2();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_1DC3959D8()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_2_2();

  return v0();
}

uint64_t sub_1DC395A34()
{
  OUTLINED_FUNCTION_1_0();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v8 = OUTLINED_FUNCTION_63_7(v5, v6, v7);
  v1[9] = v8;
  OUTLINED_FUNCTION_52(v8);
  v1[10] = v9;
  v1[11] = OUTLINED_FUNCTION_118();
  v10 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1DC395AD8()
{
  OUTLINED_FUNCTION_41_5();
  sub_1DC510B5C();
  OUTLINED_FUNCTION_12_0();
  v4 = *(v1 + 504) + **(v1 + 504);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  v3 = type metadata accessor for NLRouterServiceResponse(0);
  *v2 = v0;
  v2[1] = sub_1DC395C24;
  OUTLINED_FUNCTION_38_9(v3);

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1DC395C24()
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v6 = v5;
  *(v3 + 104) = v0;

  v7 = OUTLINED_FUNCTION_66_8();
  v8(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_89_2();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_89_2();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_1DC395D98()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_2_2();

  return v0();
}

uint64_t sub_1DC395DF4()
{
  OUTLINED_FUNCTION_1_0();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v8 = OUTLINED_FUNCTION_63_7(v5, v6, v7);
  v1[9] = v8;
  OUTLINED_FUNCTION_52(v8);
  v1[10] = v9;
  v1[11] = OUTLINED_FUNCTION_118();
  v10 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1DC395E98()
{
  OUTLINED_FUNCTION_41_5();
  sub_1DC510B5C();
  OUTLINED_FUNCTION_12_0();
  v4 = *(v1 + 504) + **(v1 + 504);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D098, &unk_1DC5268D0);
  *v2 = v0;
  v2[1] = sub_1DC395FF0;
  OUTLINED_FUNCTION_38_9(v3);

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1DC395FF0()
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v6 = v5;
  *(v3 + 104) = v0;

  v7 = OUTLINED_FUNCTION_66_8();
  v8(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_89_2();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_89_2();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_1DC396164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return OUTLINED_FUNCTION_0_36();
}

void sub_1DC396180()
{
  OUTLINED_FUNCTION_37_4();
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *(v2 + 16) = *(v0 + 48);
  v4 = *(*v1 + 504) + **(*v1 + 504);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D0A0, &unk_1DC524070);
  *v3 = v0;
  v3[1] = sub_1DC39630C;
  OUTLINED_FUNCTION_70_6();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1DC39630C()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC396424()
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_37_4();

  sub_1DC517BAC();
  v2 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v3 = sub_1DC296DBC();
  v4 = OUTLINED_FUNCTION_117_4(v3);
  v5 = *(v0 + 88);
  if (v4)
  {
    OUTLINED_FUNCTION_63();
    v6 = OUTLINED_FUNCTION_85();
    *v1 = 138412290;
    v7 = v5;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v8;
    *v6 = v8;
    OUTLINED_FUNCTION_55_0(&dword_1DC287000, v9, v10, "Error encountered during SELF cache search handle %@");
    sub_1DC28EB30(v6, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_58();
  }

  else
  {
  }

  OUTLINED_FUNCTION_89_2();

  return v14(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1DC396548(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1DC396634;

  return v5();
}

uint64_t sub_1DC396634(uint64_t a1)
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_37_4();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_7_0();
  v8 = v7;
  OUTLINED_FUNCTION_10_18();
  *v9 = v8;
  v10 = *v2;
  OUTLINED_FUNCTION_4_0();
  *v11 = v10;

  if (!v1)
  {
    v12 = *(v8 + 16);
    *v12 = v6;
    v12[1] = v4;
  }

  OUTLINED_FUNCTION_89_2();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1DC396730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_0_36();
}

void sub_1DC39674C()
{
  OUTLINED_FUNCTION_41_5();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = *(v0 + 32);
  v6 = *(*v1 + 504) + **(*v1 + 504);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_77_4(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_94_2(v4);
  OUTLINED_FUNCTION_70_6();

  __asm { BRAA            X0, X16 }
}

uint64_t sub_1DC3968C0()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC3969E0()
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_37_4();

  sub_1DC517BAC();
  v2 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v3 = sub_1DC296DBC();
  v4 = OUTLINED_FUNCTION_117_4(v3);
  v5 = *(v0 + 72);
  if (v4)
  {
    OUTLINED_FUNCTION_63();
    v6 = OUTLINED_FUNCTION_85();
    *v1 = 138412290;
    v7 = v5;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v8;
    *v6 = v8;
    OUTLINED_FUNCTION_55_0(&dword_1DC287000, v9, v10, "Error encountered during SELF cache insert handle %@");
    sub_1DC28EB30(v6, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_58();
  }

  else
  {
  }

  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_89_2();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1DC396AF8(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1DC29F120;

  return v5();
}

uint64_t sub_1DC396BE0()
{
  OUTLINED_FUNCTION_1_0();
  *(v1 + 72) = v18;
  *(v1 + 80) = v0;
  *(v1 + 56) = v2;
  *(v1 + 64) = v17;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 24) = v5;
  *(v1 + 32) = v6;
  *(v1 + 212) = v7;
  *(v1 + 208) = v8;
  *(v1 + 16) = v9;
  v10 = sub_1DC517D8C();
  *(v1 + 88) = v10;
  OUTLINED_FUNCTION_52(v10);
  *(v1 + 96) = v11;
  *(v1 + 104) = OUTLINED_FUNCTION_118();
  v12 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DC396CA8()
{
  OUTLINED_FUNCTION_41_5();
  mach_absolute_time();
  OUTLINED_FUNCTION_23_15();
  v5 = (*(v1 + 216) + **(v1 + 216));
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_1DC396DD4;
  v3 = OUTLINED_FUNCTION_33_12(*(v0 + 24));

  return v5(v3);
}

uint64_t sub_1DC396DD4()
{
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else if (*(v3 + 212) == 1)
  {
    OUTLINED_FUNCTION_28_11();
    v17 = (*(v10 + 224) + **(v10 + 224));
    v11 = swift_task_alloc();
    *(v3 + 128) = v11;
    *v11 = v5;
    v11[1] = sub_1DC39703C;
    v12 = OUTLINED_FUNCTION_33_12(*(v3 + 24));

    return v17(v12);
  }

  else
  {
    OUTLINED_FUNCTION_24_9();
    v13 = swift_task_alloc();
    *(v3 + 144) = v13;
    *v13 = v5;
    v14 = OUTLINED_FUNCTION_30_12(v13);

    return v15(v14);
  }
}

uint64_t sub_1DC39703C()
{
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_24_9();
    v10 = swift_task_alloc();
    *(v3 + 144) = v10;
    *v10 = v5;
    v11 = OUTLINED_FUNCTION_30_12(v10);

    return v12(v11);
  }
}

uint64_t sub_1DC3971A0()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC397298()
{
  OUTLINED_FUNCTION_36_11();
  v1 = v0[13];
  v2 = v0[9];
  mach_absolute_time();
  v0[20] = *(v2 - 8);
  OUTLINED_FUNCTION_75_4();
  v3();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
  OUTLINED_FUNCTION_12_0();
  v8 = (*(v4 + 232) + **(v4 + 232));
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_1DC39744C;
  v6 = OUTLINED_FUNCTION_33_12(v0[3]);

  return v8(v6);
}

uint64_t sub_1DC39744C()
{
  OUTLINED_FUNCTION_41_5();
  v2 = *v1;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 176) = v0;

  (*(v2[12] + 8))(v2[13], v2[11]);
  if (v0)
  {
    OUTLINED_FUNCTION_19_0();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }

  else
  {

    v9 = v5[1];

    return v9();
  }
}

uint64_t sub_1DC3975D8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC3976D0()
{
  OUTLINED_FUNCTION_41_5();
  swift_willThrow();

  OUTLINED_FUNCTION_2_2();

  return v0();
}

uint64_t sub_1DC39773C()
{
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_112_2();
  OUTLINED_FUNCTION_23_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_95_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_21(v1);

  return v4(v3);
}

uint64_t sub_1DC397830()
{
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_112_2();
  OUTLINED_FUNCTION_23_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_95_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_21(v1);

  return v4(v3);
}

uint64_t sub_1DC397924()
{
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_112_2();
  OUTLINED_FUNCTION_23_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_95_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_21(v1);

  return v4(v3);
}

uint64_t sub_1DC397A18()
{
  OUTLINED_FUNCTION_37_4();
  (*(v0[20] + 8))(v0[2], v0[9]);
  OUTLINED_FUNCTION_112_2();
  OUTLINED_FUNCTION_23_15();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_95_1(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_2_21(v2);

  return v5(v4);
}

uint64_t sub_1DC397B28()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_2_2();

  return v1();
}

uint64_t sub_1DC397B8C()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1DC397BB4()
{
  sub_1DC397B8C();
  v0 = OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

id sub_1DC397BE0(void *a1, int a2, uint64_t a3, id a4, uint64_t a5, void *a6)
{
  v8 = [a4 nlRouterSubComponentHandleContext];
  if (v8 && (v9 = v8, v10 = [v8 failed], v9, v10))
  {
    sub_1DC389620();

    v11 = sub_1DC5176FC();

    OUTLINED_FUNCTION_78_6();
    v12 = sub_1DC5176FC();

    v13 = [v10 errorCode];
    sub_1DC3985F8(v13, v14, v15);
    sub_1DC517E7C();
    v16 = sub_1DC5176FC();

    if (a6)
    {
      a6 = sub_1DC5176FC();
    }

    v17 = [objc_opt_self() processInfo];
    v18 = [v17 processName];

    v19 = sub_1DC51772C();
    v21 = v20;

    v22 = OUTLINED_FUNCTION_55();
    v24 = sub_1DC3980EC(v22, v23, v16, a6, v19, v21, 0, 0xE000000000000000, a1);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v25 = sub_1DC296DBC();
    v26 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v26, v27, v28, v29, 37, 2);

    return 0;
  }

  return v24;
}

id sub_1DC397E28(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 nlRouterHandleContext];
  if (v7 && (v8 = v7, v9 = [v7 failed], v8, v9))
  {
    [v9 errorCode];
    v12 = sub_1DC5176FC();
    [v9 errorDomain];
    sub_1DC517B6C();
    v13 = sub_1DC5176FC();

    v14 = sub_1DC5176FC();

    if (a4)
    {
      v15 = a4;
    }

    else
    {
      a3 = 0;
      v15 = 0xE000000000000000;
    }

    v16 = objc_opt_self();

    v17 = [v16 processInfo];
    v18 = [v17 processName];

    v19 = sub_1DC51772C();
    v21 = v20;

    v11 = sub_1DC3981B8(v12, v13, v14, a3, v15, v19, v21, 0, 0xE000000000000000, a1);
  }

  else
  {
    v10 = sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v9 = sub_1DC296DBC();
    sub_1DC516F0C(v10, &dword_1DC287000, v9, "No failed event that can be converted", 37, 2, MEMORY[0x1E69E7CC0]);
    v11 = 0;
  }

  return v11;
}

id sub_1DC3980EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v13 = sub_1DC5176FC();

  v14 = sub_1DC5176FC();

  v15 = [a9 signatureWithDomain:a1 type:a2 subType:a3 subtypeContext:a4 detectedProcess:v13 triggerThresholdValues:v14];

  return v15;
}

id sub_1DC3981B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v13 = sub_1DC5176FC();

  v14 = sub_1DC5176FC();

  v15 = sub_1DC5176FC();

  v16 = [a10 signatureWithDomain:a1 type:a2 subType:a3 subtypeContext:v13 detectedProcess:v14 triggerThresholdValues:v15];

  return v16;
}

void sub_1DC3982A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DC5176FC();
  [a3 setTriggeredHeuristicRule_];
}

uint64_t sub_1DC3982F8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_1DC39830C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_1DC398320(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_35();
  v4 = OUTLINED_FUNCTION_43();
  v5(v4);
  return a2;
}

uint64_t sub_1DC39837C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_35();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DC3983D4()
{
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_80_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_19_2(v1);

  return v4(v3);
}

uint64_t sub_1DC398464()
{
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_80_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_19_2(v1);

  return v4(v3);
}

uint64_t sub_1DC3984F4()
{
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_80_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_19_2(v1);

  return v4(v3);
}

uint64_t sub_1DC3985A8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1DC3985F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7B908;
  if (!qword_1ECC7B908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7B908);
  }

  return result;
}

id OUTLINED_FUNCTION_91_1(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_92_2()
{
}

uint64_t OUTLINED_FUNCTION_109_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_111_1()
{

  return [v0 (v1 + 2936)];
}

uint64_t OUTLINED_FUNCTION_113_3(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return sub_1DC516F0C(a1, a2, a3, a4, 74, 2);
}

uint64_t OUTLINED_FUNCTION_116_1()
{
}

uint64_t sub_1DC39875C()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F8F0);
  v1 = OUTLINED_FUNCTION_43();
  v3 = __swift_project_value_buffer(v1, v2);
  v4 = swift_allocObject();
  v4[2] = 0xD000000000000014;
  v4[3] = 0x80000001DC53F090;
  v4[4] = 0xD000000000000011;
  v4[5] = 0x80000001DC526A30;
  *v3 = v4;
  OUTLINED_FUNCTION_7_1();
  v6 = *(v5 + 104);

  return v6(v3);
}

uint64_t sub_1DC398830@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v42 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v42 - v11;
  v13 = sub_1DC5172FC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC5171CC();
  if (qword_1ECC87CC8 != -1)
  {
    OUTLINED_FUNCTION_0_37(&qword_1ECC87CC8);
  }

  __swift_project_value_buffer(v13, qword_1ECC8F8F0);
  v17 = sub_1DC5172DC();
  (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v18 = sub_1DC5171EC();
    sub_1DC30F668(0x7265646E6573, 0xE600000000000000, v18, v12);

    v19 = sub_1DC5172AC();
    OUTLINED_FUNCTION_3_3(v12);
    if (v20)
    {
      sub_1DC30F72C(v12);
    }

    else
    {
      sub_1DC382AC0();
      v28 = v27;
      v30 = v29;
      OUTLINED_FUNCTION_7_1();
      (*(v31 + 8))(v12, v19);
      if (v30)
      {
LABEL_10:
        v32 = sub_1DC5171EC();
        sub_1DC30F668(0x7463656A627573, 0xE700000000000000, v32, v10);

        OUTLINED_FUNCTION_3_3(v10);
        if (v20)
        {
          sub_1DC30F72C(v10);
        }

        else
        {
          sub_1DC382AC0();
          v23 = v33;
          v24 = v34;
          OUTLINED_FUNCTION_7_1();
          (*(v35 + 8))(v10, v19);
          if (v24)
          {
LABEL_15:
            v36 = sub_1DC5171EC();
            sub_1DC30F668(0x6563655265746164, 0xEC00000064657669, v36, v7);

            OUTLINED_FUNCTION_3_3(v7);
            if (v20)
            {
              sub_1DC30F72C(v7);
            }

            else
            {
              sub_1DC382AC0();
              v25 = v37;
              v26 = v38;
              OUTLINED_FUNCTION_7_1();
              (*(v39 + 8))(v7, v19);
              if (v26)
              {
                sub_1DC51721C();
                OUTLINED_FUNCTION_0_2();
                result = (*(v40 + 8))(a1);
                goto LABEL_21;
              }
            }

            sub_1DC51721C();
            OUTLINED_FUNCTION_0_2();
            (*(v41 + 8))(a1);

            v25 = 0;
            v26 = 0xE000000000000000;
            goto LABEL_21;
          }
        }

        v23 = 0;
        v24 = 0xE000000000000000;
        goto LABEL_15;
      }
    }

    v28 = 0;
    v30 = 0xE000000000000000;
    goto LABEL_10;
  }

  sub_1DC51721C();
  OUTLINED_FUNCTION_0_2();
  result = (*(v21 + 8))(a1);
  v28 = 0;
  v30 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
LABEL_21:
  *a2 = v28;
  a2[1] = v30;
  a2[2] = v23;
  a2[3] = v24;
  a2[4] = v25;
  a2[5] = v26;
  return result;
}

uint64_t sub_1DC398C7C()
{
  v1 = v0;
  sub_1DC517F4C();

  MEMORY[0x1E1296160](*v1, v1[1]);
  MEMORY[0x1E1296160](0x656A627553207C20, 0xEC000000203A7463);
  MEMORY[0x1E1296160](v1[2], v1[3]);
  MEMORY[0x1E1296160](0xD000000000000011, 0x80000001DC543B10);
  MEMORY[0x1E1296160](v1[4], v1[5]);
  return 0x203A7265646E6553;
}

uint64_t sub_1DC398D44@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC87CC8 != -1)
  {
    OUTLINED_FUNCTION_0_37(&qword_1ECC87CC8);
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F8F0);
  OUTLINED_FUNCTION_7_1();
  v4 = *(v3 + 16);

  return v4(a1);
}

double sub_1DC398DD8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DC398830(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

uint64_t sub_1DC398ECC()
{
  sub_1DC297814();
  result = sub_1DC517D7C();
  qword_1EDAC94E8 = result;
  return result;
}

uint64_t sub_1DC398F34()
{
  sub_1DC297814();
  result = sub_1DC517D7C();
  qword_1EDAC94F8 = result;
  return result;
}

uint64_t sub_1DC398FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1DC297814();
  result = sub_1DC517D7C();
  *a4 = result;
  return result;
}

uint64_t sub_1DC3990D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1A8, &qword_1DC526A90);
  __swift_allocate_value_buffer(v0, qword_1ECC8F908);
  __swift_project_value_buffer(v0, qword_1ECC8F908);
  return sub_1DC51641C();
}

uint64_t sub_1DC3992E4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC13CDMFoundation31SSUInferenceServiceStateBuilder_built;
  OUTLINED_FUNCTION_9_10(a1);
  return *(v1 + v2);
}

uint64_t sub_1DC399318(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC13CDMFoundation31SSUInferenceServiceStateBuilder_built;
  result = OUTLINED_FUNCTION_35_1(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t SSUInferenceServiceStateBuilder.__allocating_init(locale:)()
{
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_121();
  SSUInferenceServiceStateBuilder.init(locale:)(v1);
  return v0;
}

uint64_t SSUInferenceServiceStateBuilder.init(locale:)(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC13CDMFoundation31SSUInferenceServiceStateBuilder_appIntentMetadataFiles) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC13CDMFoundation31SSUInferenceServiceStateBuilder_appBundles) = v3;
  *(v1 + OBJC_IVAR____TtC13CDMFoundation31SSUInferenceServiceStateBuilder_kvAppItems) = v3;
  *(v1 + OBJC_IVAR____TtC13CDMFoundation31SSUInferenceServiceStateBuilder_kvBundleEntityDatasets) = MEMORY[0x1E69E7CC8];
  *(v1 + OBJC_IVAR____TtC13CDMFoundation31SSUInferenceServiceStateBuilder_built) = 0;
  v4 = OBJC_IVAR____TtC13CDMFoundation31SSUInferenceServiceStateBuilder_locale;
  sub_1DC510C8C();
  OUTLINED_FUNCTION_35();
  (*(v5 + 32))(v1 + v4, a1);
  return v1;
}

void sub_1DC3994AC()
{
  OUTLINED_FUNCTION_28_1();
  v3 = v0;
  v91 = v4;
  v92 = v5;
  v90 = v6;
  v94[4] = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D0A8, &qword_1DC526A98);
  OUTLINED_FUNCTION_0();
  v86 = v8;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v83 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D0B0, &qword_1DC526AA0);
  OUTLINED_FUNCTION_0();
  v87 = v13;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v83 - v15;
  sub_1DC5109BC();
  OUTLINED_FUNCTION_0();
  v88 = v18;
  v89 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D0B8, &qword_1DC526AA8);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v83 - v20;
  OUTLINED_FUNCTION_12_0();
  v23 = (*(v22 + 224))();
  if ((v23 & 1) == 0)
  {
    if (qword_1ECC87CD0 != -1)
    {
      OUTLINED_FUNCTION_1_26();
      swift_once();
    }

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1A8, &qword_1DC526A90);
    __swift_project_value_buffer(v28, qword_1ECC8F908);
    sub_1DC51642C();
    if (v1)
    {

      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D0C0, &qword_1DC526AB0);
      __swift_storeEnumTagSinglePayload(v21, 1, 1, v29);
LABEL_8:
      v31 = sub_1DC28EB30(v21, &qword_1ECC7D0B8, &qword_1DC526AA8);
      v34 = sub_1DC399C5C(v31, v32, v33);
      OUTLINED_FUNCTION_33_1(&type metadata for SSUInferenceServiceStateBuilder.StateBuilderError, v34);
      *v35 = 1;
      goto LABEL_9;
    }

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D0C0, &qword_1DC526AB0);
    if (__swift_getEnumTagSinglePayload(v21, 1, v30) == 1)
    {
      goto LABEL_8;
    }

    v84 = v11;
    sub_1DC28EB30(v21, &qword_1ECC7D0B8, &qword_1DC526AA8);
    v36 = [objc_opt_self() defaultManager];
    HIBYTE(v93) = 0;
    sub_1DC51094C();
    v37 = sub_1DC5176FC();

    v85 = v36;
    v38 = [v36 fileExistsAtPath:v37 isDirectory:&v93 + 7];

    if (!v38 || HIBYTE(v93) != 1)
    {
      v67 = sub_1DC399C5C(v39, v40, v41);
      OUTLINED_FUNCTION_33_1(&type metadata for SSUInferenceServiceStateBuilder.StateBuilderError, v67);
      *v68 = 2;
      swift_willThrow();
LABEL_27:

      goto LABEL_10;
    }

    v42 = sub_1DC5108FC();
    v45 = v42 == 0xD000000000000013 && 0x80000001DC543D00 == v43;
    v83 = 0x80000001DC543D00;
    if (v45)
    {
    }

    else
    {
      v46 = OUTLINED_FUNCTION_36_12(v42, v43, v44, 0x80000001DC543D00);

      if ((v46 & 1) == 0)
      {
        v47 = sub_1DC517BBC();
        sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
        v48 = sub_1DC2C0F8C();
        if (os_log_type_enabled(v48, v47))
        {
          OUTLINED_FUNCTION_11();
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v94[0] = v50;
          *v49 = 136315138;
          *(v49 + 4) = OUTLINED_FUNCTION_35_12();
          _os_log_impl(&dword_1DC287000, v48, v47, "Input directory named not %s; will not discover lproj folders with localization data.", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v50);
          OUTLINED_FUNCTION_8_0();
          MEMORY[0x1E1298840](v51);
          OUTLINED_FUNCTION_8_0();
          MEMORY[0x1E1298840](v52);
        }

        v53 = v92;
        v54 = v84;
        v55 = *(v7 + 48);
        *v84 = v91;
        *(v54 + 1) = v53;
        (*(v88 + 16))(&v54[v55], v90, v89);
        v56 = *(*v3 + 144);

        v57 = v56(v94);
        v59 = v58;
        sub_1DC39DC08(&qword_1ECC7D140, &qword_1DC526DB0, &qword_1ECC7D0A8, &qword_1DC526A98);
        v60 = *(*v59 + 16);
        sub_1DC39DC84(v60, &qword_1ECC7D140, &qword_1DC526DB0, &qword_1ECC7D0A8, &qword_1DC526A98);
        *(*v59 + 16) = v60 + 1;
        OUTLINED_FUNCTION_7_15();
        v63 = v61 + v62 * v60;
        v64 = v54;
        v65 = &qword_1ECC7D0A8;
        v66 = &qword_1DC526A98;
LABEL_26:
        sub_1DC2E5B08(v64, v63, v65, v66);
        v82 = OUTLINED_FUNCTION_21_0();
        v57(v82);
        goto LABEL_27;
      }
    }

    v69 = sub_1DC517BBC();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v70 = sub_1DC2C0F8C();
    if (os_log_type_enabled(v70, v69))
    {
      OUTLINED_FUNCTION_11();
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v94[0] = v72;
      *v71 = 136315138;
      *(v71 + 4) = OUTLINED_FUNCTION_35_12();
      _os_log_impl(&dword_1DC287000, v70, v69, "Input directory named %s, treating parent directory as bundle to find lproj folders.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840](v73);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840](v74);
    }

    v75 = v92;

    sub_1DC51092C();
    v76 = *(v12 + 48);
    *v16 = v91;
    *(v16 + 1) = v75;
    (*(v88 + 32))(&v16[v76], v2, v89);
    v57 = (*(*v3 + 168))(v94);
    v78 = v77;
    sub_1DC39DC08(&qword_1ECC7D138, &unk_1DC526DA0, &qword_1ECC7D0B0, &qword_1DC526AA0);
    v79 = *(*v78 + 16);
    sub_1DC39DC84(v79, &qword_1ECC7D138, &unk_1DC526DA0, &qword_1ECC7D0B0, &qword_1DC526AA0);
    *(*v78 + 16) = v79 + 1;
    OUTLINED_FUNCTION_7_15();
    v63 = v80 + v81 * v79;
    v64 = v16;
    v65 = &qword_1ECC7D0B0;
    v66 = &qword_1DC526AA0;
    goto LABEL_26;
  }

  v26 = sub_1DC399C5C(v23, v24, v25);
  OUTLINED_FUNCTION_33_1(&type metadata for SSUInferenceServiceStateBuilder.StateBuilderError, v26);
  *v27 = 0;
LABEL_9:
  swift_willThrow();
LABEL_10:
  OUTLINED_FUNCTION_30_13();
  OUTLINED_FUNCTION_26_0();
}

unint64_t sub_1DC399C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7D0C8;
  if (!qword_1ECC7D0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D0C8);
  }

  return result;
}

void sub_1DC399CB0()
{
  OUTLINED_FUNCTION_28_1();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v55[4] = *MEMORY[0x1E69E9840];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D0B0, &qword_1DC526AA0);
  OUTLINED_FUNCTION_0();
  v53 = v10;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D0B8, &qword_1DC526AA8);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v50 - v15;
  OUTLINED_FUNCTION_12_0();
  v18 = (*(v17 + 224))();
  if (v18)
  {
    v21 = sub_1DC399C5C(v18, v19, v20);
    OUTLINED_FUNCTION_33_1(&type metadata for SSUInferenceServiceStateBuilder.StateBuilderError, v21);
    *v22 = 0;
LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  if (qword_1ECC87CD0 != -1)
  {
    OUTLINED_FUNCTION_1_26();
    swift_once();
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1A8, &qword_1DC526A90);
  __swift_project_value_buffer(v23, qword_1ECC8F908);
  sub_1DC51642C();
  if (v1)
  {

    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D0C0, &qword_1DC526AB0);
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v24);
LABEL_8:
    v26 = sub_1DC28EB30(v16, &qword_1ECC7D0B8, &qword_1DC526AA8);
    v29 = sub_1DC399C5C(v26, v27, v28);
    OUTLINED_FUNCTION_33_1(&type metadata for SSUInferenceServiceStateBuilder.StateBuilderError, v29);
    *v30 = 1;
    goto LABEL_9;
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D0C0, &qword_1DC526AB0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v25) == 1)
  {
    goto LABEL_8;
  }

  sub_1DC28EB30(v16, &qword_1ECC7D0B8, &qword_1DC526AA8);
  v31 = v8;
  v32 = [objc_opt_self() defaultManager];
  v54 = 0;
  v51 = v31;
  sub_1DC51094C();
  v33 = sub_1DC5176FC();

  v52 = v32;
  v34 = [v32 fileExistsAtPath:v33 isDirectory:&v54];

  if (v34 && (v54 & 1) != 0)
  {
    v38 = *(v9 + 48);
    *v13 = v6;
    *(v13 + 1) = v4;
    sub_1DC5109BC();
    OUTLINED_FUNCTION_35();
    (*(v39 + 16))(&v13[v38], v51);
    v40 = *(*v2 + 168);

    v41 = v40(v55);
    v43 = v42;
    sub_1DC39DC08(&qword_1ECC7D138, &unk_1DC526DA0, &qword_1ECC7D0B0, &qword_1DC526AA0);
    v44 = *(*v43 + 16);
    sub_1DC39DC84(v44, &qword_1ECC7D138, &unk_1DC526DA0, &qword_1ECC7D0B0, &qword_1DC526AA0);
    *(*v43 + 16) = v44 + 1;
    OUTLINED_FUNCTION_7_15();
    sub_1DC2E5B08(v13, v45 + v46 * v44, &qword_1ECC7D0B0, &qword_1DC526AA0);
    v47 = OUTLINED_FUNCTION_21_0();
    v41(v47);
  }

  else
  {
    v48 = sub_1DC399C5C(v35, v36, v37);
    OUTLINED_FUNCTION_33_1(&type metadata for SSUInferenceServiceStateBuilder.StateBuilderError, v48);
    *v49 = 3;
    swift_willThrow();
  }

LABEL_10:
  OUTLINED_FUNCTION_26_0();
}

void sub_1DC39A104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39[4] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_12_0();
  v7 = (*(v6 + 224))();
  if (v7)
  {
    v10 = sub_1DC399C5C(v7, v8, v9);
    v11 = OUTLINED_FUNCTION_33_1(&type metadata for SSUInferenceServiceStateBuilder.StateBuilderError, v10);
    OUTLINED_FUNCTION_18_16(v11, v12);
    return;
  }

  v13 = [objc_allocWithZone(MEMORY[0x1E69ABCF8]) init];
  v14 = sub_1DC5176FC();
  v39[0] = 0;
  v15 = [v13 setItemType:3 itemId:v14 error:v39];

  if (!v15)
  {
LABEL_13:
    v38 = v39[0];
    sub_1DC51085C();

    goto LABEL_14;
  }

  v16 = v39[0];

  v39[0] = 0;
  v17 = sub_1DC39E644(100, a2, a3, v39, v13);
  v18 = v39[0];
  if (v17)
  {

    v19 = 0;
    v20 = *(a1 + 16);
    v21 = (a1 + 40);
    while (v20 != v19)
    {
      v22 = *v21;
      v39[0] = 0;

      v23 = OUTLINED_FUNCTION_16();
      v26 = sub_1DC39E6B4(v23, v24, v22, v25, v13);
      if (!v26)
      {
        goto LABEL_13;
      }

      v27 = v26;
      ++v19;
      v28 = v39[0];

      v21 += 2;
    }

    v39[0] = 0;
    v30 = [v13 buildItemWithError_];
    v31 = v39[0];
    if (v30)
    {
      OUTLINED_FUNCTION_12_0();
      v33 = *(v32 + 192);
      v34 = v31;
      v35 = v33(v39);
      v37 = v36;
      MEMORY[0x1E12962A0]();
      sub_1DC301904(*((*v37 & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1DC517A5C();
      v35(v39, 0);

      return;
    }

    goto LABEL_13;
  }

  v29 = v18;
  sub_1DC51085C();

LABEL_14:
  swift_willThrow();
}

void sub_1DC39A3CC()
{
  OUTLINED_FUNCTION_28_1();
  v65 = v1;
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v68[4] = *MEMORY[0x1E69E9840];
  v11 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_12_0();
  v19 = (*(v18 + 224))();
  if ((v19 & 1) == 0)
  {
    v62 = v8;
    v25 = (*(*v0 + 200))();
    v26 = OUTLINED_FUNCTION_16();
    sub_1DC2E4CBC(v26, v27, v25);
    OUTLINED_FUNCTION_121();

    v60 = v6;
    v61 = v4;
    if (v0)
    {
    }

    else
    {
      v63 = (*(MEMORY[0] + 216))(v68);
      v28 = v10;
      v30 = v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = *v30;
      sub_1DC39E304(MEMORY[0x1E69E7CC0], v6, v4, isUniquelyReferenced_nonNull_native);
      *v30 = v67;
      v10 = v28;
      v32 = OUTLINED_FUNCTION_21_0();
      v63(v32);
    }

    v33 = [objc_allocWithZone(MEMORY[0x1E69ABCF8]) init];
    sub_1DC510B5C();
    sub_1DC510B1C();
    v64 = *(v13 + 8);
    v64(v17, v11);
    v34 = sub_1DC5176FC();

    v68[0] = 0;
    v35 = [v33 setItemType:18 itemId:v34 error:v68];

    if (v35)
    {
      v59 = v10;
      v36 = v68[0];

      v37 = *(v65 + 16);
      v38 = (v65 + 40);
      if (v37)
      {
        while (1)
        {
          v39 = *(v38 - 1);
          v40 = *v38;
          v68[0] = 0;

          v41 = sub_1DC39E6B4(801, v39, v40, v68, v33);
          if (!v41)
          {
            break;
          }

          v42 = v41;
          v43 = v68[0];

          v38 += 2;
          if (!--v37)
          {
            goto LABEL_10;
          }
        }

        v57 = v68[0];
        sub_1DC51085C();

        goto LABEL_20;
      }

LABEL_10:
      sub_1DC510B5C();
      v44 = sub_1DC510B1C();
      v46 = v45;
      v64(v17, v11);
      v68[0] = 0;
      v47 = sub_1DC39E6B4(800, v44, v46, v68, v33);
      v48 = v68[0];
      if (v47)
      {

        v68[0] = 0;
        v49 = sub_1DC39E644(803, v59, v62, v68, v33);
        v48 = v68[0];
        if (v49)
        {

          v68[0] = 0;
          v50 = sub_1DC39E644(802, v59, v62, v68, v33);
          v48 = v68[0];
          if (v50)
          {

            v51 = (*(*v2 + 216))(v68);
            v53 = sub_1DC39A934(&v67, v60, v61);
            if (*v52)
            {
              v54 = v52;
              v66 = 0;
              if ([v33 buildItemWithError_])
              {
                MEMORY[0x1E12962A0](v66);
                sub_1DC301904(*((*v54 & 0xFFFFFFFFFFFFFF8) + 0x10));
                sub_1DC517A5C();
                (v53)(&v67, 0);
                v55 = 0;
              }

              else
              {
                v58 = v66;
                sub_1DC51085C();

                swift_willThrow();
                (v53)(&v67, 1);
                v55 = 1;
              }

              v51(v68, v55);
            }

            else
            {
              (v53)(&v67, 0);
              v51(v68, 0);
            }

            goto LABEL_21;
          }
        }
      }

      v56 = v48;
    }

    else
    {
      v56 = v68[0];
    }

    sub_1DC51085C();

LABEL_20:
    swift_willThrow();
LABEL_21:

    goto LABEL_22;
  }

  v22 = sub_1DC399C5C(v19, v20, v21);
  v23 = OUTLINED_FUNCTION_33_1(&type metadata for SSUInferenceServiceStateBuilder.StateBuilderError, v22);
  OUTLINED_FUNCTION_18_16(v23, v24);
LABEL_22:
  OUTLINED_FUNCTION_30_13();
  OUTLINED_FUNCTION_26_0();
}

void (*sub_1DC39A934(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1DC39DFBC(v6, a2, a3);
  return sub_1DC337000;
}

void sub_1DC39A9A8()
{
  OUTLINED_FUNCTION_28_1();
  v110 = v3;
  OUTLINED_FUNCTION_23_16(*MEMORY[0x1E69E9840]);
  v4 = sub_1DC51776C();
  OUTLINED_FUNCTION_0();
  v112 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v111 = v8 - v7;
  v9 = sub_1DC510C8C();
  OUTLINED_FUNCTION_0();
  v114 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  v113 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v102 - v14;
  OUTLINED_FUNCTION_12_0();
  v17 = *(v16 + 176);
  v18 = v17();
  sub_1DC2C20B8(v18);
  OUTLINED_FUNCTION_10_19();

  v20 = *(*v0 + 200);
  v115 = v0;
  v21 = *(v20(v19) + 16);

  if (v2)
  {
    ++v21;
  }

  v22 = objc_opt_self();
  if (HIDWORD(v21))
  {
    goto LABEL_58;
  }

  v122 = 0;
  v23 = [v22 syntheticWithDatasetCount:v21 error:&v122];
  v24 = v122;
  if (v23)
  {
    v25 = v23;
    v108 = v4;
    v109 = v15;
    sub_1DC298C74(0, &qword_1ECC7D0D0, 0x1E69ABD08);
    v26 = v24;
    v27 = sub_1DC39B33C(v25, 3u);
    if (!v1)
    {
      v28 = v27;
      v29 = v115;
      v30 = v17();
      sub_1DC2C20B8(v30);
      OUTLINED_FUNCTION_10_19();

      v32 = (v17)(v31);
      sub_1DC2C20B8(v32);
      OUTLINED_FUNCTION_121();

      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_61;
      }

      if (HIDWORD(v29))
      {
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
      }

      objc_allocWithZone(MEMORY[0x1E69ABCC8]);
      v33 = sub_1DC39D730(3, 0x746163696C707041, 0xEC000000736E6F69, v29);
      v35 = v33;
      v107 = 0;
      v122 = 0;
      v36 = [v28 addDataset:v33 error:&v122];

      if (v36)
      {
        v106 = v28;
        v104 = v9;
        v37 = (v17)(v122);
        v38 = sub_1DC2C20B8(v37);
        for (i = 0; v38 != i; ++i)
        {
          if ((v37 & 0xC000000000000001) != 0)
          {
            v40 = MEMORY[0x1E1296800](i, v37);
          }

          else
          {
            if (i >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_60;
            }

            v40 = *(v37 + 8 * i + 32);
          }

          v41 = v40;
          if (__OFADD__(i, 1))
          {
            goto LABEL_59;
          }

          v122 = 0;
          v42 = [v36 addItem:v40 error:&v122];
          if (!v42)
          {
            v93 = v122;
            OUTLINED_FUNCTION_10_19();

            sub_1DC51085C();

            swift_willThrow();
LABEL_49:

            goto LABEL_10;
          }

          v43 = v42;
          v44 = v122;
        }

        v48 = v106;
        v47 = v107;
        v49 = v104;
        v50 = (*(*v115 + 200))(v46);
        v51 = 0;
        v52 = *(v50 + 64);
        v103 = v50 + 64;
        v53 = 1 << *(v50 + 32);
        v54 = -1;
        if (v53 < 64)
        {
          v54 = ~(-1 << v53);
        }

        v55 = v54 & v52;
        v102 = (v53 + 63) >> 6;
        v104 = v49;
        v105 = v50;
        v106 = v48;
        if ((v54 & v52) != 0)
        {
          while (1)
          {
            v56 = v51;
LABEL_29:
            v57 = __clz(__rbit64(v55)) | (v56 << 6);
            v58 = (*(v50 + 48) + 16 * v57);
            v59 = *v58;
            v60 = v58[1];
            v117 = *(*(v50 + 56) + 8 * v57);
            v61 = sub_1DC2C20B8(v117);
            if ((v61 & 0x8000000000000000) != 0)
            {
              goto LABEL_63;
            }

            v62 = v61;
            if (HIDWORD(v61))
            {
              goto LABEL_64;
            }

            objc_allocWithZone(MEMORY[0x1E69ABCC8]);

            v63 = sub_1DC39D730(18, v59, v60, v62);
            if (v47)
            {

              goto LABEL_54;
            }

            v64 = v63;
            v122 = 0;
            v65 = [v48 addDataset:v63 error:&v122];

            v66 = v122;
            v116 = v65;
            if (!v65)
            {
              break;
            }

            v107 = 0;
            v55 &= v55 - 1;
            v67 = v117;
            v68 = sub_1DC2C20B8(v117);
            v69 = v67 & 0xC000000000000001;
            v70 = v67 & 0xFFFFFFFFFFFFFF8;
            v71 = v66;
            for (j = 0; v68 != j; ++j)
            {
              if (v69)
              {
                v73 = MEMORY[0x1E1296800](j, v117);
              }

              else
              {
                if (j >= *(v70 + 16))
                {
                  goto LABEL_56;
                }

                v73 = *(v117 + 8 * j + 32);
              }

              v74 = v73;
              if (__OFADD__(j, 1))
              {
                __break(1u);
LABEL_56:
                __break(1u);
LABEL_57:
                __break(1u);
LABEL_58:
                __break(1u);
LABEL_59:
                __break(1u);
LABEL_60:
                __break(1u);
LABEL_61:
                __break(1u);
                goto LABEL_62;
              }

              v122 = 0;
              v75 = [v116 addItem:v73 error:&v122];
              if (!v75)
              {
                v78 = v122;

                sub_1DC51085C();

                swift_willThrow();

                goto LABEL_49;
              }

              v76 = v75;
              v77 = v122;
            }

            v51 = v56;
            v48 = v106;
            v47 = v107;
            v50 = v105;
            if (!v55)
            {
              goto LABEL_26;
            }
          }

          v101 = v122;

          sub_1DC51085C();

          swift_willThrow();
LABEL_54:
        }

        else
        {
          while (1)
          {
LABEL_26:
            v56 = v51 + 1;
            if (__OFADD__(v51, 1))
            {
              goto LABEL_57;
            }

            if (v56 >= v102)
            {
              break;
            }

            v55 = *(v103 + 8 * v56);
            ++v51;
            if (v55)
            {
              goto LABEL_29;
            }
          }

          v107 = v47;

          v79 = sub_1DC510B8C();
          v81 = v80;
          v122 = v79;
          v123 = v80;
          v120 = 45;
          v121 = 0xE100000000000000;
          v118 = 95;
          v119 = 0xE100000000000000;
          sub_1DC2A32B0(v79, v80, v82);
          sub_1DC517E1C();

          v83 = v109;
          sub_1DC510B7C();
          v122 = 0;
          v84 = [v48 buildWithError_];
          v85 = v122;
          if (v84)
          {
            v86 = v84;
            sub_1DC298C74(0, &qword_1ECC7D0D8, 0x1E6997E88);
            v87 = v113;
            v88 = v114;
            v89 = v104;
            (*(v114 + 16))(v113, v83, v104);
            v90 = v85;
            v91 = v107;
            v92 = sub_1DC39B418(v86, v87);
            if (v91)
            {
              (*(v88 + 8))(v83, v89);
            }

            else
            {
              v95 = v92;
              v96 = [v92 save];
              v97 = sub_1DC51772C();
              v99 = v98;

              v122 = v97;
              v123 = v99;
              v100 = v111;
              sub_1DC51775C();
              sub_1DC517E3C();

              (*(v112 + 8))(v100, v108);
              (*(v88 + 8))(v109, v89);
            }
          }

          else
          {
            v94 = v122;
            OUTLINED_FUNCTION_10_19();
            sub_1DC51085C();

            swift_willThrow();
            (*(v114 + 8))(v83, v104);
          }
        }
      }

      else
      {
        v45 = v122;
        OUTLINED_FUNCTION_10_19();
        sub_1DC51085C();

        swift_willThrow();
      }
    }
  }

  else
  {
    v34 = v122;
    OUTLINED_FUNCTION_10_19();
    sub_1DC51085C();

    swift_willThrow();
  }

LABEL_10:
  OUTLINED_FUNCTION_26_0();
}

id sub_1DC39B33C(void *a1, unsigned __int8 a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() builderWithProfileInfo:a1 format:a2 error:v7];
  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_1DC51085C();

    swift_willThrow();
  }

  return v3;
}

id sub_1DC39B418(void *a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1DC510BFC();
  v13[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() sandboxWithProfile:a1 locale:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_1DC510C8C();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a2, v7);
  }

  else
  {
    v10 = v13[0];
    sub_1DC51085C();

    swift_willThrow();
    v11 = sub_1DC510C8C();
    (*(*(v11 - 8) + 8))(a2, v11);
  }

  return v5;
}

void sub_1DC39B580()
{
  OUTLINED_FUNCTION_28_1();
  v63 = v0;
  v73 = v1;
  OUTLINED_FUNCTION_23_16(*MEMORY[0x1E69E9840]);
  v81 = sub_1DC5108BC();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  v86 = sub_1DC5109BC();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  v85 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D0A8, &qword_1DC526A98);
  OUTLINED_FUNCTION_0();
  v72 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v87 = &v62 - v18;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_62();
  v70 = v19;
  v84 = [objc_opt_self() defaultManager];
  OUTLINED_FUNCTION_12_0();
  v21 = (*(v20 + 128))();
  v22 = 0;
  v74 = *(v21 + 16);
  v69 = (v9 + 32);
  v83 = *MEMORY[0x1E6968F70];
  v23 = (v3 + 104);
  v82 = (v3 + 8);
  v65 = 0x80000001DC543D00;
  v24 = MEMORY[0x1E69E6158];
  v64 = v13;
  v71 = (v9 + 8);
  v68 = v21;
  v80 = (v3 + 104);
  while (1)
  {
    if (v74 == v22)
    {

      goto LABEL_11;
    }

    if (v22 >= *(v21 + 16))
    {
      __break(1u);
    }

    v25 = v23;
    OUTLINED_FUNCTION_24();
    v28 = *(v27 + 72);
    v77 = v29;
    v30 = v70;
    sub_1DC28F308(v21 + v26 + v28 * v29, v70, &qword_1ECC7D0A8, &qword_1DC526A98);
    v31 = *v30;
    v32 = *(v30 + 8);
    v33 = *(v13 + 48);
    v34 = v86;
    v35 = v87;
    *v87 = *v30;
    *(v35 + 1) = v32;
    (*v69)(&v35[v33], v30 + v33, v34);
    v88 = v31;
    v89 = v32;
    v36 = *v25;
    v37 = v81;
    v38 = (*v25)(v7, v83, v81);
    v79 = sub_1DC2A32B0(v38, v39, v40);
    sub_1DC5109AC();
    v78 = *v82;
    v78(v7, v37);
    v41 = sub_1DC51090C();
    v88 = 0;
    v42 = v84;
    v43 = v7;
    v44 = [v84 createDirectoryAtURL:v41 withIntermediateDirectories:0 attributes:0 error:&v88];

    v45 = v88;
    if (!v44)
    {
      v60 = v88;

      sub_1DC51085C();

      swift_willThrow();
      (*v71)(v85, v86);
      goto LABEL_10;
    }

    v75 = v36;
    v46 = v66;
    sub_1DC28F308(v87, v66, &qword_1ECC7D0A8, &qword_1DC526A98);
    v47 = v45;

    v48 = v24;
    v49 = *(v13 + 48);
    v76 = sub_1DC51090C();
    v50 = *v71;
    v51 = v46 + v49;
    v52 = v86;
    v53 = v81;
    (*v71)(v51, v86);
    v88 = 0xD000000000000013;
    v89 = v65;
    v75(v43, v83, v53);
    v54 = v67;
    sub_1DC5109AC();
    v78(v43, v53);
    v55 = v54;
    sub_1DC51090C();
    v56 = OUTLINED_FUNCTION_121();
    v50(v56, v52);
    v88 = 0;
    v57 = v84;
    v58 = v76;
    LODWORD(v53) = [v84 copyItemAtURL:v76 toURL:v55 error:&v88];

    if (!v53)
    {
      break;
    }

    v7 = v43;
    v59 = v88;
    v50(v85, v86);
    sub_1DC28EB30(v87, &qword_1ECC7D0A8, &qword_1DC526A98);
    v22 = v77 + 1;
    v13 = v64;
    v21 = v68;
    v23 = v80;
    v24 = v48;
  }

  v61 = v88;

  sub_1DC51085C();

  swift_willThrow();
  v50(v85, v86);
LABEL_10:
  sub_1DC28EB30(v87, &qword_1ECC7D0A8, &qword_1DC526A98);
LABEL_11:
  OUTLINED_FUNCTION_26_0();
}

void sub_1DC39BBD0()
{
  OUTLINED_FUNCTION_28_1();
  v3 = v0;
  v107 = v4;
  OUTLINED_FUNCTION_23_16(*MEMORY[0x1E69E9840]);
  v127 = sub_1DC5107DC();
  OUTLINED_FUNCTION_0();
  v135 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v121 = sub_1DC5108BC();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v120 = v11 - v10;
  v12 = sub_1DC5109BC();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_53();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_62();
  v124 = v18;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D0B0, &qword_1DC526AA0);
  OUTLINED_FUNCTION_0();
  v106 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v98 - v23;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_62();
  v105 = v25;
  v123 = [objc_opt_self() defaultManager];
  OUTLINED_FUNCTION_12_0();
  v27 = (*(v26 + 152))();
  v28 = *(v27 + 16);
  v104 = (v14 + 32);
  v119 = *MEMORY[0x1E6968F70];
  v118 = (v8 + 104);
  v117 = (v8 + 8);
  v29 = (v14 + 8);
  v100 = *MEMORY[0x1E695DB78];
  v113 = v14;
  v128 = v14 + 16;
  v30 = 0;
  v126 = (v135 + 8);
  v31 = v24;
  v109 = 0x80000001DC543D00;
  v134 = xmmword_1DC522F20;
  v99 = v24;
  v112 = v2;
  v122 = v29;
  v102 = v27;
  v98 = v28;
  v103 = v12;
  while (1)
  {
    if (v30 == v28)
    {
      OUTLINED_FUNCTION_29_5();

      goto LABEL_37;
    }

    if (v30 >= *(v27 + 16))
    {
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_24();
    v35 = *(v34 + 72);
    v108 = v30;
    v36 = v105;
    sub_1DC28F308(v32 + v33 + v35 * v30, v105, &qword_1ECC7D0B0, &qword_1DC526AA0);
    v37 = v12;
    v38 = *v36;
    v39 = *(v36 + 8);
    v40 = *(v110 + 48);
    *v31 = *v36;
    *(v31 + 1) = v39;
    (*v104)(&v31[v40], v36 + v40, v37);
    v136 = v38;
    v137 = v39;
    v41 = v120;
    v42 = v121;
    v116 = *v118;
    v43 = v116(v120, v119, v121);
    v115 = sub_1DC2A32B0(v43, v44, v45);
    sub_1DC5109AC();
    v114 = *v117;
    v114(v41, v42);
    v46 = sub_1DC51090C();
    v136 = 0;
    v47 = v123;
    LODWORD(v42) = [v123 createDirectoryAtURL:v46 withIntermediateDirectories:0 attributes:0 error:&v136];

    v48 = v136;
    if (!v42)
    {
      v93 = v136;
      OUTLINED_FUNCTION_17_11();

      sub_1DC51085C();

      swift_willThrow();
      (*v122)(v124, v103);
      v94 = v31;
      goto LABEL_36;
    }

    v49 = v31;
    v50 = v101;
    sub_1DC28F308(v49, v101, &qword_1ECC7D0B0, &qword_1DC526AA0);
    v51 = v48;

    v52 = *(v110 + 48);
    v53 = sub_1DC51090C();
    v54 = v50 + v52;
    v12 = v103;
    v135 = *v122;
    v135(v54, v103);
    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D0E0, &unk_1DC526AB8);
    v55 = swift_allocObject();
    *(v55 + 16) = v134;
    v56 = v100;
    *(v55 + 32) = v100;
    v136 = 0;
    v132 = v56;
    v57 = sub_1DC39E738(v53, v55, 0, &v136, v47);

    v58 = v136;
    if (!v57)
    {
      break;
    }

    v59 = sub_1DC517A1C();
    v60 = v58;

    v131 = *(v59 + 16);
    if (v131)
    {
      v61 = 0;
      v62 = v113;
      OUTLINED_FUNCTION_24();
      v129 = v63 + v64;
      v130 = v63;
      while (1)
      {
        if (v61 >= *(v63 + 16))
        {
          __break(1u);
LABEL_39:
          __break(1u);
        }

        (*(v62 + 16))(v2, v129 + *(v62 + 72) * v61, v12);
        inited = swift_initStackObject();
        *(inited + 16) = v134;
        v66 = v132;
        *(inited + 32) = v132;
        v67 = v66;
        sub_1DC39E440(inited);
        v68 = v3;
        sub_1DC5108EC();
        if (v3)
        {
          OUTLINED_FUNCTION_29_5();

          OUTLINED_FUNCTION_17_11();

          v88 = v135;
          v135(v2, v12);
          v88(v124, v12);
          goto LABEL_35;
        }

        v69 = sub_1DC5107CC();
        (*v126)(v1, v127);
        if (v69 != 2)
        {
          break;
        }

LABEL_28:
        ++v61;
        v135(v2, v12);
        v63 = v130;
        if (v131 == v61)
        {
          goto LABEL_29;
        }
      }

      v70 = sub_1DC5108FC();
      if (v69)
      {
        if (v70 != 0xD000000000000013 || v109 != v71)
        {
          v74 = OUTLINED_FUNCTION_36_12(v70, v71, v72, v109);

          if ((v74 & 1) == 0)
          {
            sub_1DC5108FC();
            v75 = sub_1DC51795C();
LABEL_23:
            v77 = v75;

            if ((v77 & 1) == 0)
            {
              goto LABEL_28;
            }
          }

LABEL_26:
          v125 = sub_1DC51090C();
          v136 = sub_1DC5108FC();
          v137 = v78;
          v79 = v120;
          v80 = v121;
          v116(v120, v119, v121);
          v81 = v111;
          sub_1DC5109AC();
          v114(v79, v80);

          v82 = sub_1DC51090C();
          v83 = v12;
          v135(v81, v12);
          v136 = 0;
          v84 = v125;
          v85 = [v123 copyItemAtURL:v125 toURL:v82 error:&v136];

          if (!v85)
          {
            v89 = v136;
            OUTLINED_FUNCTION_17_11();

            sub_1DC51085C();

            swift_willThrow();
            OUTLINED_FUNCTION_29_5();

            v91 = v135;
            v135(v112, v83);
            v91(v124, v83);
            goto LABEL_35;
          }

          v86 = v136;
          v12 = v83;
          v3 = v68;
          v2 = v112;
          v62 = v113;
          goto LABEL_28;
        }
      }

      else if (v70 != 0x696C702E6F666E49 || v71 != 0xEA00000000007473)
      {
        v75 = sub_1DC51825C();
        goto LABEL_23;
      }

      goto LABEL_26;
    }

LABEL_29:
    v30 = v108 + 1;

    v135(v124, v12);
    v31 = v99;
    sub_1DC28EB30(v99, &qword_1ECC7D0B0, &qword_1DC526AA0);
    v27 = OUTLINED_FUNCTION_17_11();
    v28 = v98;
  }

  v95 = v12;
  v96 = v136;
  OUTLINED_FUNCTION_17_11();

  sub_1DC51085C();

  swift_willThrow();
  OUTLINED_FUNCTION_29_5();

  v135(v124, v95);
LABEL_35:
  v94 = v99;
LABEL_36:
  sub_1DC28EB30(v94, &qword_1ECC7D0B0, &qword_1DC526AA0);
LABEL_37:
  OUTLINED_FUNCTION_30_13();
  OUTLINED_FUNCTION_26_0();
}

void sub_1DC39C6E4()
{
  OUTLINED_FUNCTION_28_1();
  v116 = v1;
  v119 = v4;
  OUTLINED_FUNCTION_23_16(*MEMORY[0x1E69E9840]);
  sub_1DC5108BC();
  OUTLINED_FUNCTION_0();
  v121 = v5;
  v122 = v6;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v120 = v8 - v7;
  v9 = sub_1DC5109BC();
  OUTLINED_FUNCTION_0();
  v118 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  v115 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_53();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v103 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v103 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v103 - v21;
  v23 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_12_0();
  v28 = (*(v27 + 224))();
  if ((v28 & 1) == 0)
  {
    v106 = v0;
    v107 = v3;
    v109 = v17;
    v111 = v20;
    v34 = objc_opt_self();
    v35 = [v34 defaultManager];
    sub_1DC510B5C();
    v36 = sub_1DC510B1C();
    v117 = v9;
    v114 = v36;
    v38 = v37;
    (*(v25 + 8))(v2, v23);
    v39 = v119;
    v40 = [v34 defaultManager];
    v41 = [v40 temporaryDirectory];

    sub_1DC51093C();
    strcpy(v123, "ssu-ssd-");
    BYTE1(v123[1]) = 0;
    WORD1(v123[1]) = 0;
    HIDWORD(v123[1]) = -402653184;
    v42 = v117;
    MEMORY[0x1E1296160](v114, v38);

    v43 = v121;
    v44 = v122;
    v45 = *(v122 + 104);
    v46 = v120;
    LODWORD(v114) = *MEMORY[0x1E6968F70];
    v113 = v45;
    v108 = v122 + 104;
    v47 = v45(v120);
    v110 = sub_1DC2A32B0(v47, v48, v49);
    sub_1DC5109AC();
    v51 = *(v44 + 8);
    v50 = v44 + 8;
    v112 = v51;
    v51(v46, v43);

    v53 = v118 + 8;
    v52 = *(v118 + 1);
    v105 = v22;
    v54 = v22;
    v55 = v42;
    v52(v54, v42);
    v56 = sub_1DC51090C();
    v123[0] = 0;
    v57 = v35;
    LODWORD(v41) = [v35 createDirectoryAtURL:v56 withIntermediateDirectories:1 attributes:0 error:v123];

    v58 = v123[0];
    if (v41)
    {
      v103 = v53;
      v104 = v52;
      v59 = v111;
      (*(v118 + 2))(v111, v39, v55);
      v123[0] = 0xD000000000000021;
      v123[1] = 0x80000001DC543CD0;
      v60 = v120;
      v122 = v50;
      v61 = v121;
      v113(v120, v114, v121);
      v62 = v58;
      v63 = v109;
      sub_1DC5109AC();
      v112(v60, v61);
      v64 = sub_1DC51090C();
      v123[0] = 0;
      v118 = v35;
      v65 = [v35 createDirectoryAtURL:v64 withIntermediateDirectories:1 attributes:0 error:v123];

      v66 = v123[0];
      if (v65)
      {
        strcpy(v123, "sandbox_id");
        BYTE3(v123[1]) = 0;
        HIDWORD(v123[1]) = -369098752;
        v68 = v120;
        v67 = v121;
        v113(v120, v114, v121);
        v69 = v66;
        v70 = v107;
        sub_1DC5109AC();
        v112(v68, v67);
        v71 = v116;
        (*(*v106 + 288))(v70);
        if (!v71)
        {
          strcpy(v123, "CDMSSUService");
          HIWORD(v123[1]) = -4864;
          v78 = v120;
          v77 = v121;
          v79 = OUTLINED_FUNCTION_26_11();
          v80(v79);
          v81 = v105;
          sub_1DC5109AC();
          v112(v78, v77);
          strcpy(v123, "installed_apps");
          HIBYTE(v123[1]) = -18;
          v82 = OUTLINED_FUNCTION_26_11();
          v83(v82);
          v84 = v115;
          sub_1DC5109AC();
          v112(v78, v77);
          v85 = v81;
          v86 = v117;
          v87 = v104;
          v104(v85, v117);
          v88 = sub_1DC51090C();
          v123[0] = 0;
          v89 = v118;
          LODWORD(v77) = [v118 createDirectoryAtURL:v88 withIntermediateDirectories:1 attributes:0 error:v123];

          v90 = v123[0];
          if (v77)
          {
            OUTLINED_FUNCTION_12_0();
            v92 = *(v91 + 296);
            v93 = v90;
            v92(v84);
            v94 = v107;
            OUTLINED_FUNCTION_12_0();
            (*(v98 + 304))(v84);
            v99 = v104;
            v104(v84, v86);
            v99(v94, v86);
            v100 = OUTLINED_FUNCTION_27_13();
            (v99)(v100);
            v101 = OUTLINED_FUNCTION_31_12();
            (v99)(v101);
            OUTLINED_FUNCTION_12_0();
            (*(v102 + 232))(1);

            goto LABEL_11;
          }

          v95 = v123[0];
          sub_1DC51085C();

          swift_willThrow();
          v87(v84, v86);
          v87(v107, v86);
          v96 = OUTLINED_FUNCTION_27_13();
          (v87)(v96);
          v97 = OUTLINED_FUNCTION_31_12();
          (v87)(v97);
          v57 = v89;
          v39 = v119;
          v52 = v87;
          v55 = v86;
          goto LABEL_10;
        }

        v72 = v70;
        v55 = v117;
        v52 = v104;
        v104(v72, v117);
        v52(v63, v55);
        v52(v111, v55);
      }

      else
      {
        v74 = v123[0];
        sub_1DC51085C();

        swift_willThrow();
        v75 = v104;
        v104(v63, v55);
        v76 = v59;
        v52 = v75;
        v75(v76, v55);
      }

      v57 = v118;
      v39 = v119;
    }

    else
    {
      v73 = v123[0];
      sub_1DC51085C();

      swift_willThrow();
    }

LABEL_10:
    type metadata accessor for SSUInferenceServiceStateBuilder(0);
    static SSUInferenceServiceStateBuilder.clean(serviceStateDirectory:)();
    swift_willThrow();

    v52(v39, v55);
    goto LABEL_11;
  }

  v31 = sub_1DC399C5C(v28, v29, v30);
  v32 = OUTLINED_FUNCTION_33_1(&type metadata for SSUInferenceServiceStateBuilder.StateBuilderError, v31);
  OUTLINED_FUNCTION_18_16(v32, v33);
LABEL_11:
  OUTLINED_FUNCTION_30_13();
  OUTLINED_FUNCTION_26_0();
}

void static SSUInferenceServiceStateBuilder.clean(serviceStateDirectory:)()
{
  v42[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1DC5108BC();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  sub_1DC5109BC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v6 = [objc_opt_self() defaultManager];
  v7 = (*(v3 + 104))(v0, *MEMORY[0x1E6968F70], v1);
  sub_1DC2A32B0(v7, v8, v9);
  sub_1DC51098C();
  (*(v3 + 8))(v0, v1);
  sub_1DC51094C();
  v10 = sub_1DC5176FC();

  v11 = [v6 fileExistsAtPath_];

  if (v11)
  {
    sub_1DC5176DC();
    v22 = objc_opt_self();
    v23 = sub_1DC5176FC();

    v42[0] = 0;
    v24 = [v22 loadWithSandboxId:v23 error:v42];

    if (!v24)
    {
      v40 = v42[0];
      v41 = sub_1DC51085C();

      swift_willThrow();
      v12 = OUTLINED_FUNCTION_16();
      v13(v12);
      v14 = sub_1DC517BAC();
      sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
      v15 = sub_1DC2C0F8C();
      if (os_log_type_enabled(v15, v14))
      {
        OUTLINED_FUNCTION_11();
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        v18 = v41;
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 4) = v19;
        *v17 = v19;
        OUTLINED_FUNCTION_55_0(&dword_1DC287000, v20, v21, "Unable to reset CKVocabularySandbox: %@");
        sub_1DC28EB30(v17, &qword_1ECC7DFE0, &qword_1DC5227F0);
        OUTLINED_FUNCTION_8_0();
        MEMORY[0x1E1298840]();
        OUTLINED_FUNCTION_8_0();
        MEMORY[0x1E1298840]();
      }

      else
      {
      }

      goto LABEL_9;
    }

    v25 = v42[0];
    [v24 reset];
  }

  v26 = OUTLINED_FUNCTION_16();
  v27(v26);
LABEL_9:
  v28 = sub_1DC51090C();
  v42[0] = 0;
  v29 = [v6 removeItemAtURL:v28 error:v42];

  if (v29)
  {
    v30 = v42[0];
  }

  else
  {
    v31 = v42[0];
    v32 = sub_1DC51085C();

    swift_willThrow();
    LOBYTE(v31) = sub_1DC517BAC();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v33 = sub_1DC2C0F8C();
    if (os_log_type_enabled(v33, v31))
    {
      OUTLINED_FUNCTION_11();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      v36 = v32;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v37;
      *v35 = v37;
      OUTLINED_FUNCTION_55_0(&dword_1DC287000, v38, v39, "Unable to remove service state directory: %@");
      sub_1DC28EB30(v35, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    else
    {
    }
  }
}

uint64_t SSUInferenceServiceStateBuilder.deinit()
{
  v1 = OBJC_IVAR____TtC13CDMFoundation31SSUInferenceServiceStateBuilder_locale;
  sub_1DC510C8C();
  OUTLINED_FUNCTION_35();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t SSUInferenceServiceStateBuilder.__deallocating_deinit()
{
  SSUInferenceServiceStateBuilder.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

id sub_1DC39D730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1DC5176FC();

  v12[0] = 0;
  v8 = [v4 initWithItemType:a1 originAppId:v7 itemCount:a4 error:v12];

  if (v8)
  {
    v9 = v12[0];
  }

  else
  {
    v10 = v12[0];
    sub_1DC51085C();

    swift_willThrow();
  }

  return v8;
}

uint64_t sub_1DC39D82C(uint64_t a1, id *a2)
{
  result = sub_1DC51770C();
  *a2 = 0;
  return result;
}

uint64_t sub_1DC39D8A8(uint64_t a1, id *a2)
{
  v3 = sub_1DC51771C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1DC39D928@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1DC39ECE0(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1DC39D958(uint64_t a1)
{
  v1 = sub_1DC51772C();
  v2 = MEMORY[0x1E1296210](v1);

  return v2;
}

uint64_t sub_1DC39D998(uint64_t a1, uint64_t a2)
{
  sub_1DC51772C();
  sub_1DC51769C();
}

uint64_t sub_1DC39D9F4(uint64_t a1, uint64_t a2)
{
  sub_1DC51772C();
  sub_1DC5182FC();
  sub_1DC51769C();
  v2 = sub_1DC51833C();

  return v2;
}

uint64_t sub_1DC39DA68(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DC51772C();
  v4 = v3;
  if (v2 == sub_1DC51772C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1DC51825C();
  }

  return v7 & 1;
}

uint64_t sub_1DC39DAF8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1DC5176FC();

  *a2 = v3;
  return result;
}

uint64_t sub_1DC39DB40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DC39DB6C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DC39DB70(uint64_t a1)
{
  v2 = sub_1DC39ED18(&qword_1ECC7D110, &unk_1DC526CF8);
  v3 = sub_1DC39ED18(&qword_1ECC7D118, &unk_1DC526C98);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

void *sub_1DC39DC08(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v9 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v9;
  if (!result)
  {
    result = sub_1DC39DCD4(result, *(v9 + 16) + 1, 1, v9, a1, a2, a3, a4);
    *v4 = result;
  }

  return result;
}

void *sub_1DC39DC84(void *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *(*v5 + 24);
  if (result + 1 > (v6 >> 1))
  {
    result = sub_1DC39DCD4((v6 > 1), result + 1, 1, *v5, a2, a3, a4, a5);
    *v5 = result;
  }

  return result;
}

void *sub_1DC39DCD4(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  v15 = sub_1DC39DDE8(v14, v13, a5, a6, a7, a8);
  __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  OUTLINED_FUNCTION_24();
  if (v11)
  {
    sub_1DC39DEE8(a4 + v16, v14, v15 + v16, a7, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

void *sub_1DC39DDE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v11)
  {
    if ((result - v12) != 0x8000000000000000 || v11 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v11);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1DC39DEE8(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 < a1 || (__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), OUTLINED_FUNCTION_35(), a1 + *(v10 + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_52_0();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_52_0();

    swift_arrayInitWithTakeBackToFront();
  }
}

void (*sub_1DC39DFBC(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_1DC39E2D0(v6);
  v6[9] = sub_1DC39E0B4(v6 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1DC39E054;
}

void sub_1DC39E054(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1DC39E0B4(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  v9 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v9;
  v9[2] = a3;
  v9[3] = v4;
  v9[1] = a2;
  v10 = *v4;
  v11 = sub_1DC2AEB04(a2, a3);
  *(v9 + 40) = v12 & 1;
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D128, &qword_1DC526D90);
  if (sub_1DC517FFC())
  {
    v15 = sub_1DC2AEB04(a2, a3);
    if ((v14 & 1) == (v16 & 1))
    {
      v13 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1DC51829C();
    __break(1u);
    return result;
  }

LABEL_5:
  v9[4] = v13;
  if (v14)
  {
    v17 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v17 = 0;
  }

  *v9 = v17;
  return sub_1DC39E1F4;
}

void sub_1DC39E1F4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_1DC361B0C(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    sub_1DC39ED5C(*(*v1[3] + 48) + 16 * v1[4]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D130, &qword_1DC526D98);
    sub_1DC51800C();
  }

  free(v1);
}

uint64_t (*sub_1DC39E2D0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1DC39E2F8;
}

uint64_t sub_1DC39E304(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1DC2AEB04(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D128, &qword_1DC526D90);
  if ((sub_1DC517FFC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1DC2AEB04(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1DC51829C();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    *(v16[7] + 8 * v12) = a1;
  }

  else
  {
    sub_1DC361B0C(v12, a2, a3, a1, v16);
  }
}

void sub_1DC39E440(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D120, &qword_1DC526D88), v2 = sub_1DC517F0C(), v3 = v2, (v24 = *(v1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v22 = v1;
    v23 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      v6 = *(v23 + 8 * v4++);
      sub_1DC51772C();
      sub_1DC5182FC();
      v25 = v6;
      sub_1DC51769C();
      v7 = sub_1DC51833C();

      v8 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v9 = v7 & v8;
        v10 = (v7 & v8) >> 6;
        v11 = *(v5 + 8 * v10);
        v12 = 1 << (v7 & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        v13 = sub_1DC51772C();
        v15 = v14;
        if (v13 == sub_1DC51772C() && v15 == v16)
        {

          goto LABEL_17;
        }

        v18 = sub_1DC51825C();

        if (v18)
        {

          goto LABEL_17;
        }

        v7 = v9 + 1;
      }

      *(v5 + 8 * v10) = v12 | v11;
      *(*(v3 + 48) + 8 * v9) = v25;
      v19 = *(v3 + 16);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      *(v3 + 16) = v21;
LABEL_17:
      v1 = v22;
      if (v4 == v24)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

id sub_1DC39E644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1DC5176FC();
  v9 = [a5 addFieldWithType:a1 value:v8 error:a4];

  return v9;
}

id sub_1DC39E6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1DC5176FC();

  v9 = [a5 addFieldWithType:a1 value:v8 error:a4];

  return v9;
}

id sub_1DC39E738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for URLResourceKey();
  v9 = sub_1DC517A0C();

  v10 = [a5 contentsOfDirectoryAtURL:a1 includingPropertiesForKeys:v9 options:a3 error:a4];

  return v10;
}

uint64_t type metadata accessor for SSUInferenceServiceStateBuilder(uint64_t a1)
{
  result = qword_1ECC87E60;
  if (!qword_1ECC87E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DC39E81C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7D0E8;
  if (!qword_1ECC7D0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D0E8);
  }

  return result;
}

uint64_t sub_1DC39E878(uint64_t a1)
{
  result = sub_1DC510C8C();
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

uint64_t getEnumTagSinglePayload for SSUInferenceServiceStateBuilder.StateBuilderError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SSUInferenceServiceStateBuilder.StateBuilderError(_BYTE *result, unsigned int a2, unsigned int a3)
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

void type metadata accessor for URLResourceKey()
{
  if (!qword_1ECC7D0F0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECC7D0F0);
    }
  }
}

uint64_t sub_1DC39ECE0(uint64_t a1)
{
  sub_1DC51772C();
  v1 = sub_1DC5176FC();

  return v1;
}

uint64_t sub_1DC39ED18(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLResourceKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DC39EDB0()
{
  OUTLINED_FUNCTION_33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C150, &qword_1DC522EF8);
  OUTLINED_FUNCTION_38_2();
  v0 = sub_1DC5172FC();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DC522F10;
  v7 = (v6 + v5);
  v8 = swift_allocObject();
  v9 = sub_1DC3EAADC();
  v10 = v9[1];
  v8[2] = *v9;
  v8[3] = v10;
  v8[4] = 0xD000000000000012;
  v8[5] = 0x80000001DC543F60;
  *v7 = v8;
  v11 = *MEMORY[0x1E69DB098];
  v12 = *(v2 + 104);
  v12(v7, v11, v0);
  v13 = swift_allocObject();

  v14 = sub_1DC3EAAE8();
  v15 = *(v14 + 1);
  v13[2] = *v14;
  v13[3] = v15;
  v13[4] = 0xD000000000000012;
  v13[5] = 0x80000001DC543F60;
  *(v7 + v4) = v13;
  v12((v7 + v4), v11, v0);
  qword_1ECC8F950 = v6;
  OUTLINED_FUNCTION_34();
}

void sub_1DC39EF40()
{
  OUTLINED_FUNCTION_33();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1A8, &qword_1DC526A90);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1B0, &qword_1DC522F88);
  v7 = *(v1 + 72);
  v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DC522F20;
  sub_1DC51641C();
  v14 = MEMORY[0x1E69E7CC0];
  sub_1DC2E5748(0, 1, 0);
  v10 = v14;
  (*(v1 + 16))(v4, v9 + v8, v0);

  sub_1DC51643C();
  (*(v1 + 8))(v4, v0);
  v12 = *(v10 + 16);
  v11 = *(v10 + 24);
  if (v12 >= v11 >> 1)
  {
    sub_1DC2E5748((v11 > 1), v12 + 1, 1);
    v10 = v14;
  }

  *(v10 + 16) = v12 + 1;
  (*(v1 + 32))(v10 + v8 + v12 * v7, v6, v0);
  qword_1ECC8F958 = v10;
  OUTLINED_FUNCTION_34();
}

void sub_1DC39F16C()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v454 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEB8, &unk_1DC527150);
  OUTLINED_FUNCTION_10(v5);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  v425 = &v405 - v7;
  OUTLINED_FUNCTION_12();
  v444 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v456 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v422 = v10;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_23_1();
  v440 = v12;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_23_1();
  v442 = v14;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_23_1();
  v429 = v16;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_23_1();
  v443 = v18;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_62();
  v430 = v20;
  OUTLINED_FUNCTION_12();
  sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v458 = v21;
  v459 = v22;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_15();
  v449 = v23;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_23_1();
  v423 = v25;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_23_1();
  v431 = v27;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_23_1();
  v450 = v29;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_62();
  v441 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  v33 = OUTLINED_FUNCTION_10(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_15();
  v434 = v34;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_23_1();
  v416 = v36;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_23_1();
  v438 = v38;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_23_1();
  v428 = v40;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_23_1();
  v436 = v42;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_23_1();
  v426 = v44;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_62();
  v437 = v46;
  OUTLINED_FUNCTION_12();
  v457 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v447 = v47;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_15();
  v413 = v49;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_23_1();
  v421 = v51;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_23_1();
  v412 = v53;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_23_1();
  v414 = v55;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_23_1();
  v427 = v57;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_23_1();
  v435 = v59;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_23_1();
  v415 = v61;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_23_1();
  v424 = v63;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_23_1();
  v419 = v65;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_23_1();
  v433 = v67;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_23_1();
  v417 = v69;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_23_1();
  v420 = v71;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_23_1();
  v439 = v73;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_23_1();
  v418 = v75;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_23_1();
  v432 = v77;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_62();
  v445 = v79;
  v80 = OUTLINED_FUNCTION_55();
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(v80, v81);
  OUTLINED_FUNCTION_10(v82);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v83);
  v85 = &v405 - v84;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v86);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_95();
  v88 = type metadata accessor for NLRouterNLParseResponse(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_2_1();
  v446 = v90;
  OUTLINED_FUNCTION_12();
  sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v452 = v92;
  v453 = v91;
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_64();
  v93 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v94 = sub_1DC2BE518();
  v95 = OUTLINED_FUNCTION_130();
  v451 = v1;
  v455 = v93;
  sub_1DC2A2ED0("HeuristicRules.EmailRule", 24, 2, v94, v95 & 1, v1);

  v96 = *(type metadata accessor for NLRouterServiceRequest(0) + 32);
  v448 = v3;
  sub_1DC28F358(v3 + v96, v85, &qword_1ECC7C158, &unk_1DC5234A0);
  v97 = type metadata accessor for NLRouterTurnProbingResult(0);
  OUTLINED_FUNCTION_39(v85, 1, v97);
  if (v106)
  {
    sub_1DC28EB30(v85, &qword_1ECC7C158, &unk_1DC5234A0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v98, v99, v100, v88);
LABEL_6:
    sub_1DC28EB30(v0, &qword_1ECC7C160, qword_1DC5233B0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v107, v108, v109, v457);
    goto LABEL_165;
  }

  v101 = OUTLINED_FUNCTION_87_1();
  sub_1DC28F358(v101, v102, v103, v104);
  OUTLINED_FUNCTION_47_9();
  sub_1DC3A5DA0(v85, v105);
  OUTLINED_FUNCTION_39(v0, 1, v88);
  if (v106)
  {
    goto LABEL_6;
  }

  sub_1DC2E53A4(v0, v446);
  v407 = type metadata accessor for HeuristicRoutingRequest(0);
  v110 = *(v407 + 20);
  v111 = *(v447 + 16);
  v409 = v447 + 16;
  v410 = v110;
  v408 = v111;
  (v111)(v445, v448 + v110, v457);
  v112 = sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v113 = sub_1DC343BE4();
  v115 = v114;
  v116 = sub_1DC312FB4(0);
  v118 = v117;
  v119 = v113 == v116 && v115 == v117;
  v411 = v112;
  if (v119)
  {

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_99_1();

  if ((v94 & 1) == 0)
  {
    v120 = sub_1DC343BE4();
    sub_1DC312F68(v120, v121);
    OUTLINED_FUNCTION_43_0();
    if (v106)
    {
      v94 = v437;
      OUTLINED_FUNCTION_19();
      __swift_storeEnumTagSinglePayload(v123, v124, v125, v457);
    }

    else
    {
      v94 = v437;
      sub_1DC312E7C(v122, v437);
      v126 = OUTLINED_FUNCTION_100();
      v127 = v457;
      OUTLINED_FUNCTION_39(v126, v128, v457);
      if (!v129)
      {
        (*(v447 + 32))(v432, v94, v127);
        OUTLINED_FUNCTION_24_10();
        v437 = v194;
        v0 = v195 + 1;
        v1 = v459;
        do
        {
          if (v85 == v118)
          {
            (*(v447 + 8))(v432, v457);
            v112 = v411;
            goto LABEL_19;
          }

          if (v118 >= *(v113 + 16))
          {
            goto LABEL_191;
          }

          OUTLINED_FUNCTION_15_10();
          v196(v441);
          ++v118;
          sub_1DC5111AC();
          sub_1DC3A1308();
          OUTLINED_FUNCTION_99_1();
          v197 = OUTLINED_FUNCTION_78_7();
          v198(v197);
        }

        while ((v94 & 1) == 0);
        v199 = sub_1DC517B9C();
        v200 = sub_1DC2BE518();
        v201 = v418;
        v0 = v457;
        OUTLINED_FUNCTION_102_3();
        v202();
        if (os_log_type_enabled(v200, v199))
        {
          OUTLINED_FUNCTION_140();
          v441 = OUTLINED_FUNCTION_54_13();
          v482[0] = v441;
          *v113 = 136315394;
          LODWORD(v437) = v199;
          v94 = v445;
          OUTLINED_FUNCTION_36_7(v445, &v460);
          v406 = v200;
          v203 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg();
          OUTLINED_FUNCTION_93_1(v203, v204);
          OUTLINED_FUNCTION_91_2();
          OUTLINED_FUNCTION_25_11();
          j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg();
          OUTLINED_FUNCTION_238();
          v205 = OUTLINED_FUNCTION_63_8();
          v3(v205);
          OUTLINED_FUNCTION_55_12();
          OUTLINED_FUNCTION_57_11();

          *(v113 + 14) = v201;
          v206 = v406;
          _os_log_impl(&dword_1DC287000, v406, v437, "[EmailRule] triggered by isReadEmail. Updating routing from %s to %s", v113, 0x16u);
          OUTLINED_FUNCTION_94_3(v207, v208, MEMORY[0x1E69E7CA0] + 8);
          OUTLINED_FUNCTION_42();
          OUTLINED_FUNCTION_66();
        }

        else
        {

          v373 = OUTLINED_FUNCTION_63_8();
          v3(v373);
          v94 = v445;
        }

        v112 = v411;
        OUTLINED_FUNCTION_36_7(v94, &v462);
        v113 = v439;
        v1 = v432;
        sub_1DC32DE40();
        (v3)(v1, v0);
        OUTLINED_FUNCTION_142(v94, &v461);
        v118 += 40;
        v374 = OUTLINED_FUNCTION_45_2();
        v375(v374);
        goto LABEL_19;
      }
    }

    sub_1DC28EB30(v94, &qword_1ECC7CA40, &unk_1DC5233A0);
  }

LABEL_19:
  sub_1DC343B08();
  OUTLINED_FUNCTION_60_10();
  OUTLINED_FUNCTION_88_1();
  if (v106)
  {
    v131 = v112 == v130;
  }

  else
  {
    v131 = 0;
  }

  if (v131)
  {

    goto LABEL_32;
  }

  OUTLINED_FUNCTION_19_16();
  OUTLINED_FUNCTION_97();

  if (v118)
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_24_10();
  v441 = v132;
  v0 = v133 + 1;
  v1 = v459;
  do
  {
    if (v85 == v118)
    {
      goto LABEL_32;
    }

    if (v118 >= *(v113 + 16))
    {
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
      goto LABEL_193;
    }

    OUTLINED_FUNCTION_15_10();
    v134(v450);
    ++v118;
    v135 = sub_1DC5111AC();
    sub_1DC3A1A9C(v135, v136, v137, v138, v139, v140, v141, v142, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416);
    OUTLINED_FUNCTION_99_1();
    v143 = OUTLINED_FUNCTION_78_7();
    v144(v143);
  }

  while ((v94 & 1) == 0);
  v145 = sub_1DC343B08();
  sub_1DC312F68(v145, v146);
  OUTLINED_FUNCTION_43_0();
  if (v106)
  {
    v264 = v426;
    v148 = OUTLINED_FUNCTION_13_16();
    __swift_storeEnumTagSinglePayload(v148, v149, v150, v457);
  }

  else
  {
    v264 = v426;
    sub_1DC312E7C(v147, v426);
    v265 = OUTLINED_FUNCTION_34_11();
    v0 = v457;
    OUTLINED_FUNCTION_39(v265, v266, v457);
    if (!v267)
    {
      OUTLINED_FUNCTION_76_5();
      v335(v420, v264, v0);
      v336 = sub_1DC517B9C();
      v94 = sub_1DC2BE518();
      v337 = v417;
      OUTLINED_FUNCTION_102_3();
      v338();
      if (os_log_type_enabled(v94, v336))
      {
        OUTLINED_FUNCTION_140();
        LODWORD(v441) = v336;
        v340 = OUTLINED_FUNCTION_54_13();
        v450 = v340;
        v482[0] = v340;
        *v336 = 136315394;
        v118 = v445;
        OUTLINED_FUNCTION_48(v340, &v463);
        v1 = v85;
        v341 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg();
        OUTLINED_FUNCTION_93_1(v341, v342);
        OUTLINED_FUNCTION_91_2();
        OUTLINED_FUNCTION_25_11();
        j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg();
        OUTLINED_FUNCTION_238();
        OUTLINED_FUNCTION_10_20();
        v343 = OUTLINED_FUNCTION_87_1();
        (v85)(v343);
        OUTLINED_FUNCTION_55_12();
        OUTLINED_FUNCTION_57_11();

        *(v336 + 14) = v337;
        OUTLINED_FUNCTION_61_5(&dword_1DC287000, v344, v441, "[EmailRule] triggered by isEmailDomainTaskForPlanner. Updating routing from %s to %s");
        OUTLINED_FUNCTION_94_3(v345, v346, MEMORY[0x1E69E7CA0] + 8);
        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_66();

        v85 = v447;
      }

      else
      {

        OUTLINED_FUNCTION_10_20();
        v376 = OUTLINED_FUNCTION_152();
        v347 = (v1)(v376);
        v118 = v445;
      }

      OUTLINED_FUNCTION_48(v347, &v465);
      OUTLINED_FUNCTION_9_20();
      sub_1DC32F9DC();
      v377 = OUTLINED_FUNCTION_78_6();
      (v1)(v377);
      OUTLINED_FUNCTION_142(v118, &v464);
      v378 = OUTLINED_FUNCTION_32_10();
      v379(v378);
      goto LABEL_32;
    }
  }

  sub_1DC28EB30(v264, &qword_1ECC7CA40, &unk_1DC5233A0);
LABEL_32:
  v151 = v411;
  v152 = v411;
  sub_1DC343CC0();
  OUTLINED_FUNCTION_60_10();
  OUTLINED_FUNCTION_88_1();
  if (v106)
  {
    v154 = v152 == v153;
  }

  else
  {
    v154 = 0;
  }

  if (v154)
  {

    v113 = v457;
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_19_16();
  OUTLINED_FUNCTION_97();

  v113 = v457;
  if (v118)
  {
    goto LABEL_44;
  }

  v155 = sub_1DC343CC0();
  sub_1DC312F68(v155, v156);
  OUTLINED_FUNCTION_43_0();
  if (v106)
  {
    v94 = v436;
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v158, v159, v160, v113);
LABEL_43:
    sub_1DC28EB30(v94, &qword_1ECC7CA40, &unk_1DC5233A0);
    goto LABEL_44;
  }

  v94 = v436;
  sub_1DC312E7C(v157, v436);
  OUTLINED_FUNCTION_5_3(v94);
  if (v161)
  {
    goto LABEL_43;
  }

  v209 = v447;
  (*(v447 + 32))(v433, v94, v113);
  v426 = *(*v446 + 16);
  if (v426)
  {
    v94 = 0;
    OUTLINED_FUNCTION_39_9();
    v436 = v212;
    v420 = v210;
    v417 = v213;
    v418 = v211;
    while (v94 < *(v210 + 16))
    {
      (*(v459 + 16))(v431, v211 + *(v459 + 72) * v94, v458);
      v432 = v94 + 1;
      v118 = sub_1DC5111AC();
      v85 = 0;
      v1 = *(v118 + 16);
      v94 = MEMORY[0x1E69E7CC0];
      v214 = v444;
LABEL_72:
      v215 = v430;
      while (v1 != v85)
      {
        if (v85 >= *(v118 + 16))
        {
          goto LABEL_188;
        }

        OUTLINED_FUNCTION_81_3();
        v113 = *(v216 + 72);
        (*(v216 + 16))(v215, v217 + v113 * v85, v214);
        if (sub_1DC5114CC())
        {
          v437 = *v441;
          v437(v429, v215, v214);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v482[0] = v94;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_111_2(*(v94 + 16));
            v214 = v444;
            v94 = v482[0];
          }

          v220 = *(v94 + 16);
          v219 = *(v94 + 24);
          v221 = v220 + 1;
          if (v220 >= v219 >> 1)
          {
            v222 = v220 + 1;
            v223 = *(v94 + 16);
            sub_1DC3A5718((v219 > 1), v220 + 1, 1);
            v221 = v222;
            v220 = v223;
            v214 = v444;
            v94 = v482[0];
          }

          ++v85;
          *(v94 + 16) = v221;
          v437(v0 + v94 + v220 * v113, v429, v214);
          goto LABEL_72;
        }

        (*v151)(v215, v214);
        ++v85;
      }

      v118 = 0;
      v113 = *(v94 + 16);
      while (v113 != v118)
      {
        if (v118 >= *(v94 + 16))
        {
          goto LABEL_189;
        }

        v0 = v456;
        OUTLINED_FUNCTION_24();
        v1 = v443;
        v85 = v444;
        (v0[2].isa)(v443, v94 + v224 + v0[9].isa * v118, v444);
        sub_1DC3A4698();
        v226 = v225;
        ++v118;
        (v0[1].isa)(v1, v85);
        if (v226)
        {
          v280 = OUTLINED_FUNCTION_104_0();
          v281(v280);

          sub_1DC517B9C();
          v94 = OUTLINED_FUNCTION_113_4();
          v282 = v419;
          v0 = v457;
          OUTLINED_FUNCTION_102_3();
          v283();
          if (OUTLINED_FUNCTION_112_3())
          {
            OUTLINED_FUNCTION_140();
            v450 = OUTLINED_FUNCTION_54_13();
            v482[0] = v450;
            *v113 = 136315394;
            v85 = v445;
            OUTLINED_FUNCTION_36_7(v445, &v466);
            v443 = v94;
            v285 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg();
            OUTLINED_FUNCTION_93_1(v285, v286);
            OUTLINED_FUNCTION_91_2();
            OUTLINED_FUNCTION_25_11();
            j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg();
            OUTLINED_FUNCTION_238();
            LODWORD(v441) = v118;
            v287 = v447;
            OUTLINED_FUNCTION_10_20();
            (v1)(v282, v0);
            OUTLINED_FUNCTION_55_12();
            OUTLINED_FUNCTION_57_11();

            *(v113 + 14) = v282;
            v94 = v443;
            OUTLINED_FUNCTION_61_5(&dword_1DC287000, v288, v441, "[EmailRule] triggered by isCheckRequestsummariseEmailRoutable for PQA. Updating routing from %s to %s");
            OUTLINED_FUNCTION_94_3(v289, v290, MEMORY[0x1E69E7CA0] + 8);
            OUTLINED_FUNCTION_42();
            OUTLINED_FUNCTION_66();
          }

          else
          {

            v287 = v447;
            OUTLINED_FUNCTION_10_20();
            v356 = OUTLINED_FUNCTION_152();
            (v1)(v356);
            v85 = v445;
          }

          v151 = v411;
          OUTLINED_FUNCTION_36_7(v85, &v468);
          OUTLINED_FUNCTION_9_20();
          sub_1DC32F9DC();
          v357 = OUTLINED_FUNCTION_78_6();
          (v1)(v357);
          OUTLINED_FUNCTION_142(v85, &v467);
          v358 = *(v287 + 40);
          v118 = v287 + 40;
          v358(v85, v94, v0);
          v113 = v0;
          goto LABEL_44;
        }
      }

      v227 = OUTLINED_FUNCTION_104_0();
      v228(v227);

      v94 = v432;
      v209 = v447;
      v210 = v420;
      v211 = v418;
      if (v432 == v426)
      {
        goto LABEL_88;
      }
    }

LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    OUTLINED_FUNCTION_53_11(&_MergedGlobals_13);
LABEL_152:
    sub_1DC30A498();
    if ((v313 & 1) == 0)
    {
      goto LABEL_160;
    }

    if (qword_1EDAC9518 != -1)
    {
      OUTLINED_FUNCTION_56_12(&qword_1EDAC9518);
    }

    sub_1DC30A0F8();
    if (v314)
    {
      sub_1DC517B9C();
      v315 = OUTLINED_FUNCTION_113_4();
      v316 = v413;
      v252 = v457;
      (v408)(v413, v113, v457);
      if (OUTLINED_FUNCTION_112_3())
      {
        v317 = swift_slowAlloc();
        v318 = swift_slowAlloc();
        v459 = v318;
        v481[0] = v318;
        *v317 = 136315650;
        LODWORD(v458) = v118;
        v319 = v316;
        sub_1DC344030(v318, v320, v321, v322, v323, v324, v325, v326);
        v327 = v482[0];
        v328 = v482[1];

        sub_1DC28EB30(v482, &qword_1ECC7C168, &qword_1DC522F30);
        sub_1DC291244(v327, v328, v481);
        OUTLINED_FUNCTION_57_11();

        *(v317 + 4) = v327;
        *(v317 + 12) = 2080;
        v456 = v315;
        v329 = v445;
        OUTLINED_FUNCTION_36_7(v445, &v478);
        v330 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg();
        sub_1DC291244(v330, v331, v481);
        OUTLINED_FUNCTION_91_2();
        *(v317 + 14) = v328;
        *(v317 + 22) = 2080;
        j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg();
        OUTLINED_FUNCTION_238();
        v332 = v447;
        OUTLINED_FUNCTION_10_20();
        (v1)(v319, v252);
        sub_1DC291244(v319, v328, v481);
        OUTLINED_FUNCTION_57_11();

        *(v317 + 24) = v319;
        v333 = v332;
        v334 = v456;
        _os_log_impl(&dword_1DC287000, v456, v458, "[EmailRule] triggered by %s. Updating routing from %s to %s", v317, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_42();
        v113 = v421;
        OUTLINED_FUNCTION_66();
      }

      else
      {

        v333 = v447;
        OUTLINED_FUNCTION_10_20();
        (v1)(v316, v252);
        v329 = v445;
      }

      OUTLINED_FUNCTION_36_7(v329, &v480);
      v400 = v439;
      sub_1DC32F9DC();
      (v1)(v113, v252);
      OUTLINED_FUNCTION_142(v329, &v479);
      v251 = (*(v333 + 40))(v329, v400, v252);
    }

    else
    {
LABEL_160:
      v252 = v457;
      v251 = (*(v94 + 8))(v113, v457);
    }

    goto LABEL_161;
  }

LABEL_88:
  v113 = v457;
  (*(v209 + 8))(v433, v457);
  v151 = v411;
LABEL_44:
  sub_1DC343D9C();
  OUTLINED_FUNCTION_60_10();
  OUTLINED_FUNCTION_88_1();
  if (v106)
  {
    v163 = v151 == v162;
  }

  else
  {
    v163 = 0;
  }

  if (v163)
  {

    goto LABEL_54;
  }

  OUTLINED_FUNCTION_19_16();
  OUTLINED_FUNCTION_97();

  if ((v118 & 1) == 0)
  {
    v164 = v447;
    v118 = v439;
    (*(v447 + 104))(v439, *MEMORY[0x1E69D02F8], v113);
    v165 = sub_1DC5157DC();
    v166 = *(v164 + 8);
    v94 = v164 + 8;
    v85 = v166;
    v167 = OUTLINED_FUNCTION_55();
    v166(v167);
    if (v165)
    {
      v168 = sub_1DC343D9C();
      sub_1DC312F68(v168, v169);
      OUTLINED_FUNCTION_43_0();
      if (v106)
      {
        v229 = v428;
        v171 = OUTLINED_FUNCTION_13_16();
        __swift_storeEnumTagSinglePayload(v171, v172, v173, v113);
      }

      else
      {
        v229 = v428;
        sub_1DC312E7C(v170, v428);
        OUTLINED_FUNCTION_5_3(v229);
        if (!v230)
        {
          (*(v447 + 32))(v424, v229, v113);
          v430 = *(*v446 + 16);
          if (!v430)
          {
LABEL_150:
            (v85)(v424, v113);
            v151 = v411;
            goto LABEL_54;
          }

          v118 = 0;
          OUTLINED_FUNCTION_39_9();
          v432 = v293;
          v433 = v85;
          v436 = v94;
          v428 = v292;
          v429 = v291;
          v426 = v294;
          while (v118 < *(v291 + 16))
          {
            (*(v459 + 16))(v423, v292 + *(v459 + 72) * v118, v458);
            v431 = v118 + 1;
            v118 = sub_1DC5111AC();
            v295 = 0;
            v113 = *(v118 + 16);
            v443 = MEMORY[0x1E69E7CC0];
            v94 = v444;
            while (v113 != v295)
            {
              v296 = v442;
              if (v295 >= *(v118 + 16))
              {
                goto LABEL_190;
              }

              OUTLINED_FUNCTION_81_3();
              v1 = *(v297 + 72);
              (*(v297 + 16))(v296, v298 + v1 * v295, v94);
              if (sub_1DC5114CC())
              {
                v437 = *v441;
                v437(v422, v296, v94);
                v299 = v443;
                v300 = swift_isUniquelyReferenced_nonNull_native();
                v482[0] = v299;
                if ((v300 & 1) == 0)
                {
                  OUTLINED_FUNCTION_111_2(*(v299 + 16));
                  v94 = v444;
                  v299 = v482[0];
                }

                v302 = *(v299 + 16);
                v301 = *(v299 + 24);
                v303 = v302 + 1;
                if (v302 >= v301 >> 1)
                {
                  sub_1DC3A5718((v301 > 1), v302 + 1, 1);
                  v303 = v302 + 1;
                  v94 = v444;
                  v299 = v482[0];
                }

                ++v295;
                *(v299 + 16) = v303;
                v443 = v299;
                v437(v0 + v299 + v302 * v1, v422, v94);
              }

              else
              {
                (*v151)(v296, v94);
                ++v295;
              }
            }

            v118 = 0;
            v94 = v443;
            v113 = *(v443 + 16);
            v304 = v457;
            while (v113 != v118)
            {
              v305 = v444;
              if (v118 >= *(v94 + 16))
              {
                goto LABEL_192;
              }

              v306 = v456;
              OUTLINED_FUNCTION_24();
              v0 = v440;
              (v306[2].isa)(v440, v94 + v307 + v306[9].isa * v118, v305);
              sub_1DC3A4698();
              v308 = v305;
              v310 = v309;
              ++v118;
              (v306[1].isa)(v0, v308);
              if (v310)
              {
                v359 = OUTLINED_FUNCTION_108_0();
                v360(v359);

                sub_1DC517B9C();
                v361 = OUTLINED_FUNCTION_113_4();
                v1 = v415;
                v113 = v304;
                (v408)(v415, v424, v304);
                if (OUTLINED_FUNCTION_112_3())
                {
                  OUTLINED_FUNCTION_140();
                  v456 = OUTLINED_FUNCTION_54_13();
                  v482[0] = v456;
                  *v304 = 136315394;
                  v363 = v445;
                  OUTLINED_FUNCTION_36_7(v445, &v469);
                  v364 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg();
                  OUTLINED_FUNCTION_93_1(v364, v365);
                  OUTLINED_FUNCTION_91_2();
                  OUTLINED_FUNCTION_25_11();
                  v366 = v1;
                  j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg();
                  OUTLINED_FUNCTION_238();
                  v367 = v1;
                  v1 = v436;
                  v368 = v433;
                  (v433)(v367, v304);
                  OUTLINED_FUNCTION_55_12();
                  OUTLINED_FUNCTION_57_11();

                  *(v304 + 14) = v366;
                  OUTLINED_FUNCTION_61_5(&dword_1DC287000, v369, v118, "[EmailRule] triggered by isCheckRequestsummariseEmailRoutable not for PQA. Updating routing from %s to %s");
                  OUTLINED_FUNCTION_94_3(v370, v371, MEMORY[0x1E69E7CA0] + 8);
                  OUTLINED_FUNCTION_42();
                  v113 = v304;
                  v372 = v368;
                  v85 = v1;
                  OUTLINED_FUNCTION_66();
                }

                else
                {

                  v384 = v304;
                  v85 = v436;
                  v372 = v433;
                  (v433)(v1, v384);
                  v363 = v445;
                }

                v151 = v411;
                OUTLINED_FUNCTION_36_7(v363, &v471);
                v94 = v439;
                v118 = v424;
                sub_1DC32DE40();
                v385 = OUTLINED_FUNCTION_55();
                v372(v385);
                OUTLINED_FUNCTION_142(v363, &v470);
                (*(v447 + 40))(v363, v94, v113);
                goto LABEL_54;
              }
            }

            v311 = OUTLINED_FUNCTION_108_0();
            v312(v311);

            v118 = v431;
            v113 = v304;
            v94 = v436;
            v85 = v433;
            v292 = v428;
            v291 = v429;
            if (v431 == v430)
            {
              goto LABEL_150;
            }
          }

          goto LABEL_194;
        }
      }

      sub_1DC28EB30(v229, &qword_1ECC7CA40, &unk_1DC5233A0);
    }
  }

LABEL_54:
  sub_1DC3A3334();
  if (v174)
  {
    v175 = sub_1DC345D18();
    sub_1DC312F68(v175, v176);
    OUTLINED_FUNCTION_43_0();
    if (v106)
    {
      v181 = v438;
      v178 = OUTLINED_FUNCTION_13_16();
      __swift_storeEnumTagSinglePayload(v178, v179, v180, v113);
    }

    else
    {
      v181 = v438;
      sub_1DC312E7C(v177, v438);
      OUTLINED_FUNCTION_5_3(v181);
      if (!v182)
      {
        OUTLINED_FUNCTION_76_5();
        v183(v435, v181, v113);
        v1 = sub_1DC517B9C();
        v94 = sub_1DC2BE518();
        v184 = v427;
        OUTLINED_FUNCTION_58_10();
        v408();
        if (os_log_type_enabled(v94, v1))
        {
          OUTLINED_FUNCTION_140();
          v186 = OUTLINED_FUNCTION_54_13();
          v456 = v186;
          v482[0] = v186;
          *v113 = 136315394;
          v118 = v445;
          OUTLINED_FUNCTION_48(v186, &v472);
          v187 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg();
          OUTLINED_FUNCTION_93_1(v187, v188);
          OUTLINED_FUNCTION_91_2();
          OUTLINED_FUNCTION_25_11();
          j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg();
          OUTLINED_FUNCTION_238();
          LODWORD(v450) = v1;
          OUTLINED_FUNCTION_10_20();
          v189 = OUTLINED_FUNCTION_87_1();
          (v1)(v189);
          OUTLINED_FUNCTION_55_12();
          OUTLINED_FUNCTION_57_11();
          v151 = v411;

          *(v113 + 14) = v184;
          OUTLINED_FUNCTION_61_5(&dword_1DC287000, v190, v450, "[EmailRule] triggered by isUndoSendInMailAndNotPreviousMessage. Updating routing from %s to %s");
          OUTLINED_FUNCTION_94_3(v191, v192, MEMORY[0x1E69E7CA0] + 8);
          OUTLINED_FUNCTION_42();
          OUTLINED_FUNCTION_66();

          v85 = v447;
        }

        else
        {

          OUTLINED_FUNCTION_10_20();
          v231 = OUTLINED_FUNCTION_152();
          v193 = (v1)(v231);
          v118 = v445;
        }

        OUTLINED_FUNCTION_48(v193, &v474);
        OUTLINED_FUNCTION_9_20();
        v113 = v435;
        sub_1DC32F9DC();
        v232 = OUTLINED_FUNCTION_78_6();
        (v1)(v232);
        OUTLINED_FUNCTION_142(v118, &v473);
        v233 = OUTLINED_FUNCTION_32_10();
        v234(v233);
        goto LABEL_94;
      }
    }

    sub_1DC28EB30(v181, &qword_1ECC7CA40, &unk_1DC5233A0);
  }

LABEL_94:
  sub_1DC343E78();
  OUTLINED_FUNCTION_60_10();
  OUTLINED_FUNCTION_88_1();
  if (v106)
  {
    v236 = v151 == v235;
  }

  else
  {
    v236 = 0;
  }

  if (v236)
  {
  }

  else
  {
    OUTLINED_FUNCTION_19_16();
    OUTLINED_FUNCTION_97();

    if ((v118 & 1) == 0)
    {
      OUTLINED_FUNCTION_24_10();
      v456 = v237;
      v1 = v459;
      do
      {
        if (v85 == v118)
        {
          goto LABEL_107;
        }

        if (v118 >= *(v113 + 16))
        {
          goto LABEL_187;
        }

        OUTLINED_FUNCTION_15_10();
        v238(v449);
        ++v118;
        sub_1DC5111AC();
        sub_1DC3A3DC4();
        OUTLINED_FUNCTION_99_1();
        v239 = OUTLINED_FUNCTION_78_7();
        v240(v239);
      }

      while ((v94 & 1) == 0);
      v241 = v425;
      sub_1DC3EAD64(v425);
      type metadata accessor for QDContextState(0);
      v242 = OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_39(v242, v243, v244);
      if (v106)
      {
        v245 = &qword_1ECC7BEB8;
        v246 = &unk_1DC527150;
        v247 = v241;
      }

      else
      {
        v268 = *v241;
        OUTLINED_FUNCTION_44_10();
        v270 = sub_1DC3A5DA0(v241, v269);
        LOBYTE(v482[0]) = v268;
        LOBYTE(v481[0]) = 3;
        sub_1DC3A56C4(v270, v271, v272);
        v273 = sub_1DC5176CC();
        if ((v273 & 1) == 0)
        {
          goto LABEL_107;
        }

        v274 = sub_1DC343E78();
        sub_1DC312F68(v274, v275);
        OUTLINED_FUNCTION_43_0();
        if (v106)
        {
          v380 = v416;
          v277 = OUTLINED_FUNCTION_13_16();
          __swift_storeEnumTagSinglePayload(v277, v278, v279, v457);
        }

        else
        {
          v380 = v416;
          sub_1DC312E7C(v276, v416);
          v381 = OUTLINED_FUNCTION_34_11();
          OUTLINED_FUNCTION_39(v381, v382, v457);
          if (!v383)
          {
            OUTLINED_FUNCTION_76_5();
            v386 = v414;
            v387(v414, v380, v457);
            sub_1DC517B9C();
            v388 = OUTLINED_FUNCTION_113_4();
            v389 = v412;
            OUTLINED_FUNCTION_102_3();
            v390();
            if (OUTLINED_FUNCTION_112_3())
            {
              OUTLINED_FUNCTION_140();
              v392 = OUTLINED_FUNCTION_54_13();
              v459 = v392;
              v482[0] = v392;
              *v386 = 136315394;
              LODWORD(v458) = v118;
              v118 = v445;
              OUTLINED_FUNCTION_48(v392, &v475);
              v1 = v85;
              v393 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg();
              OUTLINED_FUNCTION_93_1(v393, v394);
              OUTLINED_FUNCTION_91_2();
              OUTLINED_FUNCTION_25_11();
              j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg();
              OUTLINED_FUNCTION_238();
              OUTLINED_FUNCTION_10_20();
              v395 = OUTLINED_FUNCTION_87_1();
              (v85)(v395);
              OUTLINED_FUNCTION_55_12();
              OUTLINED_FUNCTION_57_11();

              *(v386 + 14) = v389;
              OUTLINED_FUNCTION_61_5(&dword_1DC287000, v396, v458, "[EmailRule] triggered by emailSendItRouting. Updating routing from %s to %s");
              OUTLINED_FUNCTION_94_3(v397, v398, MEMORY[0x1E69E7CA0] + 8);
              OUTLINED_FUNCTION_42();
              OUTLINED_FUNCTION_66();
            }

            else
            {

              OUTLINED_FUNCTION_10_20();
              v401 = OUTLINED_FUNCTION_152();
              v399 = (v1)(v401);
              v118 = v445;
            }

            OUTLINED_FUNCTION_48(v399, &v477);
            OUTLINED_FUNCTION_9_20();
            sub_1DC32F9DC();
            v402 = OUTLINED_FUNCTION_78_6();
            (v1)(v402);
            OUTLINED_FUNCTION_142(v118, &v476);
            v403 = OUTLINED_FUNCTION_32_10();
            v404(v403);
            goto LABEL_107;
          }
        }

        v245 = &qword_1ECC7CA40;
        v246 = &unk_1DC5233A0;
        v247 = v380;
      }

      sub_1DC28EB30(v247, v245, v246);
    }
  }

LABEL_107:
  v248 = v411;
  sub_1DC343F54();
  OUTLINED_FUNCTION_60_10();
  OUTLINED_FUNCTION_88_1();
  if (v106)
  {
    v250 = v248 == v249;
  }

  else
  {
    v250 = 0;
  }

  if (v250)
  {

    v252 = v457;
    goto LABEL_161;
  }

  OUTLINED_FUNCTION_19_16();
  OUTLINED_FUNCTION_97();

  v252 = v457;
  if (v118)
  {
    goto LABEL_161;
  }

  v253 = sub_1DC343F54();
  sub_1DC312F68(v253, v254);
  OUTLINED_FUNCTION_43_0();
  if (v106)
  {
    v259 = v434;
    v256 = OUTLINED_FUNCTION_13_16();
    __swift_storeEnumTagSinglePayload(v256, v257, v258, v252);
LABEL_118:
    v251 = sub_1DC28EB30(v259, &qword_1ECC7CA40, &unk_1DC5233A0);
    goto LABEL_161;
  }

  v259 = v434;
  sub_1DC312E7C(v255, v434);
  v260 = OUTLINED_FUNCTION_34_11();
  OUTLINED_FUNCTION_39(v260, v261, v252);
  if (v262)
  {
    goto LABEL_118;
  }

  v94 = v447;
  v113 = v421;
  (*(v447 + 32))(v421, v259, v252);
  sub_1DC3A5DF8(&qword_1ECC7BB68, MEMORY[0x1E69D0300], MEMORY[0x1E69D0310]);
  v263 = sub_1DC5176CC();
  if ((v263 & 1) == 0)
  {
    type metadata accessor for NLRouterBypassUtils();
    if (_MergedGlobals_13 != -1)
    {
      goto LABEL_195;
    }

    goto LABEL_152;
  }

  v251 = (*(v94 + 8))(v113, v252);
LABEL_161:
  v348 = v445;
  OUTLINED_FUNCTION_48(v251, v481);
  v349 = sub_1DC5157DC();
  OUTLINED_FUNCTION_8_12();
  sub_1DC3A5DA0(v446, v350);
  if (v349)
  {
    v351 = 1;
    v352 = v454;
  }

  else
  {
    v352 = v454;
    (v408)(v454, v348, v252);
    v351 = 0;
  }

  v353 = v447;
  __swift_storeEnumTagSinglePayload(v352, v351, 1, v252);
  (*(v353 + 8))(v348, v252);
LABEL_165:
  v354 = sub_1DC2BE518();
  v355 = v451;
  sub_1DC2B8848(v451, "HeuristicRules.EmailRule", 24, 2, v354);

  (*(v452 + 8))(v355, v453);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3A1308()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = sub_1DC5149BC();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  v82 = v8;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C238, &qword_1DC527190);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_95();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C200, &qword_1DC523020);
  v11 = OUTLINED_FUNCTION_10(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  v83 = v12;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_23_1();
  v86 = v14;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_62();
  v85 = v16;
  OUTLINED_FUNCTION_12();
  v90 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_1();
  v89 = v20;
  OUTLINED_FUNCTION_12();
  v93 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1();
  v26 = v25 - v24;
  v91 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_64();
  v30 = *(v3 + 16);
  if (!v30)
  {
    goto LABEL_28;
  }

  v80 = v4;
  v81 = v6;
  v79 = v0;
  v31 = *(v28 + 16);
  OUTLINED_FUNCTION_24();
  v33 = v3 + v32;
  v92 = (v22 + 8);
  v87 = v1;
  v88 = (v18 + 8);
  v34 = *(v28 + 72);
  v35 = v91;
  while (1)
  {
    v31(v1, v33, v35);
    if ((sub_1DC5114CC() & 1) == 0)
    {
      v41 = OUTLINED_FUNCTION_16_10();
LABEL_11:
      v42(v41, v35);
      goto LABEL_12;
    }

    sub_1DC51154C();
    v36 = sub_1DC51177C();
    v37 = *v92;
    (*v92)(v26, v93);
    if ((v36 & 1) == 0 || (type metadata accessor for NLRouterBypassUtils(), sub_1DC51154C(), sub_1DC51178C(), v37(v26, v93), v38 = sub_1DC307E5C(v89), v1 = v87, (*v88)(v89, v90), !v38))
    {
      v41 = OUTLINED_FUNCTION_16_10();
      v35 = v91;
      goto LABEL_11;
    }

    sub_1DC51478C();

    if (!v94[3])
    {
      v43 = OUTLINED_FUNCTION_16_10();
      v35 = v91;
      v44(v43, v91);

      sub_1DC28EB30(v94, &qword_1ECC7D3F0, &qword_1DC5238B0);
      goto LABEL_12;
    }

    sub_1DC51493C();
    if (OUTLINED_FUNCTION_115_3())
    {
      break;
    }

    v39 = OUTLINED_FUNCTION_16_10();
    v35 = v91;
    v40(v39, v91);

LABEL_12:
    v33 += v34;
    if (!--v30)
    {
      goto LABEL_28;
    }
  }

  sub_1DC5148BC();

  if (v94[0] && (v45 = sub_1DC51477C(), , v45))
  {
    v46 = v85;
    sub_1DC5149AC();

    v47 = v80;
  }

  else
  {
    v46 = v85;
    OUTLINED_FUNCTION_19();
    v47 = v80;
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v80);
  }

  (*(v81 + 104))(v86, *MEMORY[0x1E69D1D40], v47);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v47);
  v54 = *(v84 + 48);
  sub_1DC28F358(v46, v79, &qword_1ECC7C200, &qword_1DC523020);
  sub_1DC28F358(v86, v79 + v54, &qword_1ECC7C200, &qword_1DC523020);
  OUTLINED_FUNCTION_5_3(v79);
  if (!v63)
  {
    sub_1DC28F358(v79, v83, &qword_1ECC7C200, &qword_1DC523020);
    OUTLINED_FUNCTION_5_3(v79 + v54);
    if (!v63)
    {
      (*(v81 + 32))(v82, v79 + v54, v47);
      OUTLINED_FUNCTION_0_39();
      sub_1DC3A5DF8(v74, v75, MEMORY[0x1E69D1D50]);
      sub_1DC5176CC();

      v76 = *(v81 + 8);
      v76(v82, v47);
      sub_1DC28EB30(v86, &qword_1ECC7C200, &qword_1DC523020);
      sub_1DC28EB30(v85, &qword_1ECC7C200, &qword_1DC523020);
      v77 = OUTLINED_FUNCTION_16_10();
      v78(v77, v91);
      v76(v83, v47);
      sub_1DC28EB30(v79, &qword_1ECC7C200, &qword_1DC523020);
      goto LABEL_28;
    }

    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v64, v65, v66);
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v67, v68, v69);
    v70 = OUTLINED_FUNCTION_16_10();
    v71(v70, v91);
    v72 = OUTLINED_FUNCTION_45_2();
    v73(v72);
LABEL_27:
    sub_1DC28EB30(v79, &qword_1ECC7C238, &qword_1DC527190);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_59_2();
  sub_1DC28EB30(v55, v56, v57);
  OUTLINED_FUNCTION_59_2();
  sub_1DC28EB30(v58, v59, v60);
  v61 = OUTLINED_FUNCTION_16_10();
  v62(v61, v91);
  OUTLINED_FUNCTION_5_3(v79 + v54);
  if (!v63)
  {
    goto LABEL_27;
  }

  sub_1DC28EB30(v79, &qword_1ECC7C200, &qword_1DC523020);
LABEL_28:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3A1A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = sub_1DC514BFC();
  OUTLINED_FUNCTION_0();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2_1();
  v282 = v28;
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C258, &qword_1DC523078);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v29);
  v286 = v270 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C260, &unk_1DC523080);
  v32 = OUTLINED_FUNCTION_10(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_62();
  v285 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C200, &qword_1DC523020);
  v37 = OUTLINED_FUNCTION_10(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_62();
  v292[2] = v43;
  OUTLINED_FUNCTION_12();
  v294 = sub_1DC5149BC();
  OUTLINED_FUNCTION_0();
  v45 = v44;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_62();
  v291 = v58;
  OUTLINED_FUNCTION_12();
  v301 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v60 = v59;
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_2_1();
  v300 = v62;
  OUTLINED_FUNCTION_12();
  v305 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v64 = v63;
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_1();
  v68 = v67 - v66;
  v69 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_1();
  v73 = v72 - v71;
  v74 = *(v23 + 16);
  if (!v74)
  {
LABEL_119:
    OUTLINED_FUNCTION_34();
    return;
  }

  v277 = v24;
  OUTLINED_FUNCTION_24();
  v76 = v23 + v75;
  v78 = (v77 - 8);
  v304 = (v64 + 8);
  v80 = v79;
  v298 = v60 + 8;
  v281 = v45 + 32;
  v280 = *MEMORY[0x1E69D1D40];
  v279 = v45 + 104;
  v278 = (v45 + 8);
  v276 = *MEMORY[0x1E69D20C8];
  v275 = v26 + 104;
  v273 = v26 + 32;
  v274 = (v26 + 8);
  v81 = *(v77 + 56);
  v295 = (v77 - 8);
  v299 = v77;
  v302 = v79;
  v303 = v81;
  v296 = v68;
  while (1)
  {
    v80(v73, v76, v69);
    if (sub_1DC5114CC())
    {
      break;
    }

    v96 = OUTLINED_FUNCTION_6_16();
    v97(v96);
LABEL_116:
    v76 += v81;
    if (!--v74)
    {
      goto LABEL_119;
    }
  }

  sub_1DC51154C();
  v82 = sub_1DC51177C();
  v83 = *v304;
  (*v304)(v68, v305);
  if ((v82 & 1) == 0 || (type metadata accessor for NLRouterBypassUtils(), sub_1DC51154C(), v84 = v300, sub_1DC51178C(), v83(v68, v305), v80 = v302, v85 = sub_1DC307E5C(v84), OUTLINED_FUNCTION_37(), v86 = v84, v87 = v299, v88(v86, v301), !v85))
  {
    v98 = OUTLINED_FUNCTION_6_16();
    v99(v98);
    v81 = v303;
    goto LABEL_116;
  }

  v68 = v69;

  sub_1DC51478C();

  v69 = v85;
  sub_1DC28F358(&v317, &v314, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v316[1])
  {

    sub_1DC28EB30(&v317, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v100 = OUTLINED_FUNCTION_110_4();
    v101(v100);
    v81 = v303;
    OUTLINED_FUNCTION_73_4();
    goto LABEL_115;
  }

  v297 = v85;
  sub_1DC28F358(&v314, &v310, &qword_1ECC7D3F0, &qword_1DC5238B0);
  sub_1DC514A7C();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_98_4();
    OUTLINED_FUNCTION_84_4();
    sub_1DC5148BC();

    v89 = v308;
    if (v308)
    {
      sub_1DC51477C();
      OUTLINED_FUNCTION_78_0();
      OUTLINED_FUNCTION_106();
      sub_1DC5149AC();

      v90 = OUTLINED_FUNCTION_21_11();
      v92 = *(v91 - 256);
      OUTLINED_FUNCTION_39(v90, v93, v92);
      v69 = v68;
      if (!v160)
      {
        OUTLINED_FUNCTION_23_17();
        v156(v291, v89, v92);
        OUTLINED_FUNCTION_22_11();
        v157(v292[0], v280, v92);
        OUTLINED_FUNCTION_0_39();
        v159 = sub_1DC3A5DF8(&unk_1ECC7C270, v158, MEMORY[0x1E69D1D58]);
        sub_1DC5179EC();
        sub_1DC5179EC();
        OUTLINED_FUNCTION_36_13();
        if (v160)
        {
          v162 = v92 == v161;
        }

        else
        {
          v162 = 0;
        }

        v68 = v296;
        v272 = v161;
        if (v162)
        {
          OUTLINED_FUNCTION_33_13();
        }

        else
        {
          v163 = OUTLINED_FUNCTION_59_7();
          OUTLINED_FUNCTION_85_5(v163);
        }

        OUTLINED_FUNCTION_68_5();

        OUTLINED_FUNCTION_37_7();
        v185 = OUTLINED_FUNCTION_12_17(&v319);
        (qword_1DC5238B0)(v185);
        (qword_1DC5238B0)(v291, v159);
        sub_1DC28EB30(&v317, &qword_1ECC7D3F0, &qword_1DC5238B0);
        v186 = OUTLINED_FUNCTION_6_16();
        v187(v186);

        OUTLINED_FUNCTION_89_3();

        v81 = v303;
        if (v289)
        {
          goto LABEL_122;
        }

LABEL_26:
        __swift_destroy_boxed_opaque_existential_1Tm(&v310);
        v80 = v302;
LABEL_115:
        sub_1DC28EB30(&v314, &qword_1ECC7D3F0, &qword_1DC5238B0);
        v78 = v295;
        goto LABEL_116;
      }

      OUTLINED_FUNCTION_68_5();

      sub_1DC28EB30(&v317, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v94 = OUTLINED_FUNCTION_6_16();
      v95(v94);
    }

    else
    {
      OUTLINED_FUNCTION_68_5();

      sub_1DC28EB30(&v317, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v118 = OUTLINED_FUNCTION_110_4();
      v119(v118);
      OUTLINED_FUNCTION_83_4(&a9);
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_117_5(v120, v121, v122);
    }

    OUTLINED_FUNCTION_73_4();
    sub_1DC28EB30(v89, &qword_1ECC7C200, &qword_1DC523020);
    v81 = v303;
    goto LABEL_26;
  }

  v102 = sub_1DC51497C();
  v103 = OUTLINED_FUNCTION_1_20(v102);
  v104 = v293;
  if (!v103)
  {
    v123 = sub_1DC51496C();
    if (OUTLINED_FUNCTION_1_20(v123))
    {
      OUTLINED_FUNCTION_98_4();
      OUTLINED_FUNCTION_84_4();
      sub_1DC514C9C();

      v69 = v68;
      if (!v308)
      {
        OUTLINED_FUNCTION_68_5();

        sub_1DC28EB30(&v317, &qword_1ECC7D3F0, &qword_1DC5238B0);
        v166 = OUTLINED_FUNCTION_6_16();
        v167(v166);
        v124 = v288;
        v168 = OUTLINED_FUNCTION_13_16();
        OUTLINED_FUNCTION_117_5(v168, v169, v170);
        OUTLINED_FUNCTION_73_4();
LABEL_94:
        v219 = v124;
        v226 = &qword_1ECC7C200;
        v227 = &qword_1DC523020;
LABEL_95:
        sub_1DC28EB30(v219, v226, v227);
        goto LABEL_96;
      }

      v124 = v308;
      sub_1DC51477C();
      OUTLINED_FUNCTION_78_0();
      OUTLINED_FUNCTION_106();
      sub_1DC5149AC();
      OUTLINED_FUNCTION_116_2();
      v125 = OUTLINED_FUNCTION_21_11();
      v127 = *(v126 - 256);
      OUTLINED_FUNCTION_49_0(v125, v128);
      v68 = v296;
      if (!v160)
      {
        OUTLINED_FUNCTION_23_17();
        v129 = OUTLINED_FUNCTION_52_11();
        v130(v129);
        OUTLINED_FUNCTION_22_11();
        v131 = OUTLINED_FUNCTION_26_12();
        v132(v131);
        OUTLINED_FUNCTION_0_39();
        sub_1DC3A5DF8(&unk_1ECC7C270, v133, MEMORY[0x1E69D1D58]);
        OUTLINED_FUNCTION_107_2();
        OUTLINED_FUNCTION_40_13();
        OUTLINED_FUNCTION_40_13();
        OUTLINED_FUNCTION_36_13();
        if (v160)
        {
          v135 = v127 == v134;
        }

        else
        {
          v135 = 0;
        }

        v272 = v134;
        if (v135)
        {
          OUTLINED_FUNCTION_33_13();
        }

        else
        {
          v136 = OUTLINED_FUNCTION_59_7();
          OUTLINED_FUNCTION_85_5(v136);
        }

        OUTLINED_FUNCTION_68_5();

        OUTLINED_FUNCTION_37_7();
        v228 = OUTLINED_FUNCTION_12_17(&v313);
        v104(v228);
        v229 = &v312;
        goto LABEL_108;
      }

LABEL_77:
      OUTLINED_FUNCTION_68_5();

      sub_1DC28EB30(&v317, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v196 = OUTLINED_FUNCTION_6_16();
      v197(v196);
      goto LABEL_94;
    }

    v142 = sub_1DC514ACC();
    v69 = v68;
    if (OUTLINED_FUNCTION_1_20(v142))
    {
      OUTLINED_FUNCTION_98_4();
      OUTLINED_FUNCTION_84_4();
      sub_1DC5148BC();

      v143 = v308;
      OUTLINED_FUNCTION_73_4();
      if (v143)
      {
        v124 = v143;
        sub_1DC51477C();
        OUTLINED_FUNCTION_78_0();
        OUTLINED_FUNCTION_106();
        sub_1DC5149AC();
        OUTLINED_FUNCTION_116_2();
        v144 = OUTLINED_FUNCTION_21_11();
        v146 = *(v145 - 256);
        OUTLINED_FUNCTION_49_0(v144, v147);
        if (!v160)
        {
          OUTLINED_FUNCTION_23_17();
          v148 = OUTLINED_FUNCTION_52_11();
          v149(v148);
          OUTLINED_FUNCTION_22_11();
          v150 = OUTLINED_FUNCTION_26_12();
          v151(v150);
          OUTLINED_FUNCTION_0_39();
          sub_1DC3A5DF8(&unk_1ECC7C270, v152, MEMORY[0x1E69D1D58]);
          OUTLINED_FUNCTION_107_2();
          OUTLINED_FUNCTION_40_13();
          OUTLINED_FUNCTION_40_13();
          OUTLINED_FUNCTION_36_13();
          if (v160)
          {
            v154 = v146 == v153;
          }

          else
          {
            v154 = 0;
          }

          v272 = v153;
          if (v154)
          {
            OUTLINED_FUNCTION_33_13();
          }

          else
          {
            v155 = OUTLINED_FUNCTION_59_7();
            OUTLINED_FUNCTION_85_5(v155);
          }

          OUTLINED_FUNCTION_68_5();

          OUTLINED_FUNCTION_37_7();
          v244 = OUTLINED_FUNCTION_12_17(&v309);
          v104(v244);
          v229 = &v308;
          goto LABEL_108;
        }

        goto LABEL_77;
      }

      OUTLINED_FUNCTION_68_5();

      sub_1DC28EB30(&v317, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v188 = OUTLINED_FUNCTION_6_16();
      v189(v188);
      v190 = &v311;
    }

    else
    {
      v171 = sub_1DC514A0C();
      OUTLINED_FUNCTION_1_20(v171);
      OUTLINED_FUNCTION_73_4();
      if (v172)
      {
        OUTLINED_FUNCTION_98_4();
        OUTLINED_FUNCTION_84_4();
        sub_1DC514C9C();

        if (v308)
        {
          v124 = v308;
          sub_1DC51477C();
          OUTLINED_FUNCTION_78_0();
          OUTLINED_FUNCTION_106();
          sub_1DC5149AC();
          OUTLINED_FUNCTION_116_2();
          v173 = OUTLINED_FUNCTION_21_11();
          v175 = *(v174 - 256);
          OUTLINED_FUNCTION_49_0(v173, v176);
          if (!v160)
          {
            OUTLINED_FUNCTION_23_17();
            v177 = OUTLINED_FUNCTION_52_11();
            v178(v177);
            OUTLINED_FUNCTION_22_11();
            v179 = OUTLINED_FUNCTION_26_12();
            v180(v179);
            OUTLINED_FUNCTION_0_39();
            sub_1DC3A5DF8(&unk_1ECC7C270, v181, MEMORY[0x1E69D1D58]);
            OUTLINED_FUNCTION_107_2();
            OUTLINED_FUNCTION_40_13();
            OUTLINED_FUNCTION_40_13();
            OUTLINED_FUNCTION_36_13();
            if (v160)
            {
              v183 = v175 == v182;
            }

            else
            {
              v183 = 0;
            }

            v272 = v182;
            if (v183)
            {
              OUTLINED_FUNCTION_33_13();
            }

            else
            {
              v184 = OUTLINED_FUNCTION_59_7();
              OUTLINED_FUNCTION_85_5(v184);
            }

            OUTLINED_FUNCTION_68_5();

            OUTLINED_FUNCTION_37_7();
            v245 = OUTLINED_FUNCTION_12_17(&v305);
            v104(v245);
            v229 = &v304;
            goto LABEL_108;
          }

          goto LABEL_77;
        }

        OUTLINED_FUNCTION_68_5();

        sub_1DC28EB30(&v317, &qword_1ECC7D3F0, &qword_1DC5238B0);
        v198 = OUTLINED_FUNCTION_6_16();
        v199(v198);
        v190 = &v307;
      }

      else
      {
        v191 = sub_1DC514B6C();
        if (!OUTLINED_FUNCTION_1_20(v191))
        {
          OUTLINED_FUNCTION_68_5();
          sub_1DC28EB30(&v317, &qword_1ECC7D3F0, &qword_1DC5238B0);
          (*v78)(v73, v68);
          __swift_destroy_boxed_opaque_existential_1Tm(&v310);
          v81 = v303;
          goto LABEL_115;
        }

        OUTLINED_FUNCTION_98_4();
        OUTLINED_FUNCTION_84_4();
        sub_1DC514C9C();

        if (v308)
        {
          v124 = v308;
          sub_1DC51477C();
          OUTLINED_FUNCTION_78_0();
          OUTLINED_FUNCTION_106();
          sub_1DC5149AC();
          OUTLINED_FUNCTION_116_2();
          v192 = OUTLINED_FUNCTION_21_11();
          v194 = *(v193 - 256);
          OUTLINED_FUNCTION_49_0(v192, v195);
          if (!v160)
          {
            OUTLINED_FUNCTION_23_17();
            v246 = OUTLINED_FUNCTION_52_11();
            v247(v246);
            OUTLINED_FUNCTION_22_11();
            v248 = OUTLINED_FUNCTION_26_12();
            v249(v248);
            OUTLINED_FUNCTION_0_39();
            sub_1DC3A5DF8(&unk_1ECC7C270, v250, MEMORY[0x1E69D1D58]);
            OUTLINED_FUNCTION_107_2();
            OUTLINED_FUNCTION_40_13();
            OUTLINED_FUNCTION_40_13();
            OUTLINED_FUNCTION_36_13();
            if (v251)
            {
              v253 = v194 == v252;
            }

            else
            {
              v253 = 0;
            }

            v272 = v252;
            if (v253)
            {
              OUTLINED_FUNCTION_33_13();
            }

            else
            {
              v254 = OUTLINED_FUNCTION_59_7();
              OUTLINED_FUNCTION_85_5(v254);
            }

            OUTLINED_FUNCTION_68_5();

            OUTLINED_FUNCTION_37_7();
            v255 = OUTLINED_FUNCTION_12_17(&v302);
            v104(v255);
            v229 = &v301;
LABEL_108:
            (v104)(*(v229 - 32), v87);
            sub_1DC28EB30(&v317, &qword_1ECC7D3F0, &qword_1DC5238B0);
            v256 = OUTLINED_FUNCTION_6_16();
            v257(v256);

            OUTLINED_FUNCTION_89_3();

            v80 = v302;
            v81 = v303;
            v243 = &v317;
LABEL_109:
            if (*(v243 - 32))
            {
              goto LABEL_122;
            }

            goto LABEL_114;
          }

          goto LABEL_77;
        }

        OUTLINED_FUNCTION_68_5();

        sub_1DC28EB30(&v317, &qword_1ECC7D3F0, &qword_1DC5238B0);
        v230 = OUTLINED_FUNCTION_6_16();
        v231(v230);
        v190 = &v303;
      }
    }

    v124 = *(v190 - 32);
    v232 = OUTLINED_FUNCTION_13_16();
    OUTLINED_FUNCTION_117_5(v232, v233, v234);
    goto LABEL_94;
  }

  sub_1DC51475C();
  v105 = v308;
  if (!v308)
  {
    OUTLINED_FUNCTION_83_4(&v320);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_117_5(v137, v138, v139);
    v69 = v68;
    goto LABEL_36;
  }

  sub_1DC51477C();
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_106();
  sub_1DC5149AC();

  v106 = OUTLINED_FUNCTION_21_11();
  v108 = *(v107 - 256);
  OUTLINED_FUNCTION_39(v106, v109, v108);
  v69 = v68;
  if (v160)
  {
LABEL_36:
    sub_1DC28EB30(v105, &qword_1ECC7C200, &qword_1DC523020);
    OUTLINED_FUNCTION_73_4();
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_23_17();
  v110(v290, v105, v108);
  OUTLINED_FUNCTION_22_11();
  v111(v104, v280, v108);
  OUTLINED_FUNCTION_0_39();
  sub_1DC3A5DF8(&unk_1ECC7C270, v112, MEMORY[0x1E69D1D58]);
  sub_1DC5179EC();
  sub_1DC5179EC();
  v113 = v307;
  v114 = v308 == v306 && v309 == v307;
  v68 = v296;
  if (v114)
  {
    v260 = *v278;
    (*v278)(v293, v108);
    v261 = OUTLINED_FUNCTION_82_4(v318);
    v260(v261);

LABEL_121:
    OUTLINED_FUNCTION_68_5();
    OUTLINED_FUNCTION_86();

    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v262, v263, v264);
    v265 = OUTLINED_FUNCTION_6_16();
    v266(v265);
    __swift_destroy_boxed_opaque_existential_1Tm(&v310);
    OUTLINED_FUNCTION_59_2();
    goto LABEL_123;
  }

  v271 = v309;
  LODWORD(v272) = sub_1DC51825C();
  v270[1] = v113;
  v115 = *v278;
  v116 = OUTLINED_FUNCTION_82_4(&a10);
  v115(v116);
  v117 = OUTLINED_FUNCTION_82_4(v318);
  v115(v117);

  if (v272)
  {
    goto LABEL_121;
  }

LABEL_37:
  sub_1DC51475C();

  if (!v308)
  {
    OUTLINED_FUNCTION_68_5();

    sub_1DC28EB30(&v317, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v164 = OUTLINED_FUNCTION_6_16();
    v165(v164);
LABEL_96:
    v80 = v302;
    v81 = v303;
    goto LABEL_114;
  }

  v140 = v308;
  sub_1DC51476C();
  OUTLINED_FUNCTION_78_0();
  v81 = v303;
  if (!(v140 >> 62))
  {
    if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

LABEL_112:

LABEL_113:
    OUTLINED_FUNCTION_68_5();
    OUTLINED_FUNCTION_86();

    sub_1DC28EB30(&v317, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v258 = OUTLINED_FUNCTION_6_16();
    v259(v258);
    v80 = v302;
LABEL_114:
    __swift_destroy_boxed_opaque_existential_1Tm(&v310);
    goto LABEL_115;
  }

  if (!sub_1DC51802C())
  {
    goto LABEL_112;
  }

LABEL_40:
  if ((v140 & 0xC000000000000001) != 0)
  {
    v141 = MEMORY[0x1E1296800](0, v140);
LABEL_43:

    sub_1DC5146BC();

    if (!v306)
    {
      goto LABEL_113;
    }

    v272 = v306;
    if (sub_1DC5148CC())
    {
      OUTLINED_FUNCTION_106();
      sub_1DC514BEC();
    }

    else
    {
      OUTLINED_FUNCTION_83_4(&v314);
      OUTLINED_FUNCTION_19();
      __swift_storeEnumTagSinglePayload(v200, v201, v202, v277);
    }

    v203 = v287;
    OUTLINED_FUNCTION_37();
    v204 = v277;
    v205(v203, v276, v277);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v206, v207, v208, v204);
    v209 = v141;
    v210 = *(v283 + 48);
    v211 = v286;
    sub_1DC28F358(v209, v286, &qword_1ECC7C260, &unk_1DC523080);
    v271 = v210;
    v212 = OUTLINED_FUNCTION_83_4(v316);
    sub_1DC28F358(v212, v213, &qword_1ECC7C260, &unk_1DC523080);
    OUTLINED_FUNCTION_39(v211, 1, v277);
    if (v160)
    {
      OUTLINED_FUNCTION_68_5();
      OUTLINED_FUNCTION_86();

      OUTLINED_FUNCTION_89_3();

      sub_1DC28EB30(v210, &qword_1ECC7C260, &unk_1DC523080);
      v214 = OUTLINED_FUNCTION_82_4(&v314);
      sub_1DC28EB30(v214, v215, &unk_1DC523080);
      sub_1DC28EB30(&v317, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v216 = OUTLINED_FUNCTION_6_16();
      v217(v216);
      v218 = v286;
      OUTLINED_FUNCTION_39(v286 + v271, 1, v277);
      v219 = v218;
      if (v160)
      {
        sub_1DC28EB30(v218, &qword_1ECC7C260, &unk_1DC523080);
LABEL_122:
        __swift_destroy_boxed_opaque_existential_1Tm(&v310);
        v268 = &qword_1ECC7D3F0;
        v269 = &qword_1DC5238B0;
        v267 = &v314;
LABEL_123:
        sub_1DC28EB30(v267, v268, v269);
        goto LABEL_119;
      }
    }

    else
    {
      v220 = OUTLINED_FUNCTION_83_4(&v315);
      sub_1DC28F358(v220, v284, &qword_1ECC7C260, &unk_1DC523080);
      v221 = v271;
      OUTLINED_FUNCTION_39(v210 + v271, 1, v277);
      if (!v222)
      {
        OUTLINED_FUNCTION_37();
        v235 = v210 + v221;
        v236 = v277;
        v237(v282, v235, v277);
        sub_1DC3A5DF8(&qword_1ECC7C268, MEMORY[0x1E69D2110], MEMORY[0x1E69D2120]);
        LODWORD(v271) = sub_1DC5176CC();
        OUTLINED_FUNCTION_68_5();
        OUTLINED_FUNCTION_86();

        OUTLINED_FUNCTION_89_3();

        v238 = *v274;
        (*v274)(v282, v236);
        v239 = OUTLINED_FUNCTION_82_4(v316);
        sub_1DC28EB30(v239, v240, &unk_1DC523080);
        sub_1DC28EB30(v285, &qword_1ECC7C260, &unk_1DC523080);
        sub_1DC28EB30(&v317, &qword_1ECC7D3F0, &qword_1DC5238B0);
        v241 = OUTLINED_FUNCTION_6_16();
        v242(v241);
        v238(v284, v236);
        sub_1DC28EB30(v286, &qword_1ECC7C260, &unk_1DC523080);
        v80 = v302;
        v81 = v303;
        v243 = v292;
        goto LABEL_109;
      }

      OUTLINED_FUNCTION_68_5();
      OUTLINED_FUNCTION_86();

      OUTLINED_FUNCTION_89_3();

      sub_1DC28EB30(v287, &qword_1ECC7C260, &unk_1DC523080);
      sub_1DC28EB30(v285, &qword_1ECC7C260, &unk_1DC523080);
      sub_1DC28EB30(&v317, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v223 = OUTLINED_FUNCTION_6_16();
      v224(v223);
      OUTLINED_FUNCTION_37();
      v225(v284, v277);
      v219 = v210;
    }

    v226 = &qword_1ECC7C258;
    v227 = &qword_1DC523078;
    goto LABEL_95;
  }

  if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v141 = *(v140 + 32);

    goto LABEL_43;
  }

  __break(1u);
}

void sub_1DC3A3334()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  v3 = OUTLINED_FUNCTION_10(v2);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v130 = v7;
  OUTLINED_FUNCTION_12();
  v139 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v137 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  v138 = v10;
  OUTLINED_FUNCTION_12();
  v11 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v141 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_1();
  v142 = v14;
  OUTLINED_FUNCTION_12();
  v140 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v131 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  v134 = sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v132 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_1();
  v133 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEB8, &unk_1DC527150);
  OUTLINED_FUNCTION_10(v23);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v118 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v27);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v118 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v31);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v118 - v33;
  v35 = type metadata accessor for NLRouterNLParseResponse(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_2_1();
  v135 = v37;
  v38 = OUTLINED_FUNCTION_12();
  v129 = type metadata accessor for NLRouterServiceRequest(v38);
  OUTLINED_FUNCTION_58_10();
  sub_1DC28F358(v39, v40, v41, &unk_1DC5234A0);
  v42 = type metadata accessor for NLRouterTurnProbingResult(0);
  OUTLINED_FUNCTION_39(v30, 1, v42);
  if (v49)
  {
    sub_1DC28EB30(v30, &qword_1ECC7C158, &unk_1DC5234A0);
    v43 = OUTLINED_FUNCTION_13_16();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v35);
LABEL_6:
    sub_1DC28EB30(v34, &qword_1ECC7C160, qword_1DC5233B0);
    goto LABEL_17;
  }

  sub_1DC28F358(v30, v34, &qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_47_9();
  sub_1DC3A5DA0(v30, v46);
  v47 = OUTLINED_FUNCTION_34_11();
  OUTLINED_FUNCTION_39(v47, v48, v35);
  if (v49)
  {
    goto LABEL_6;
  }

  v50 = v135;
  sub_1DC2E53A4(v34, v135);
  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v51 = sub_1DC345D18();
  v53 = v52;
  v54 = sub_1DC312FB4(0);
  if (v51 == v54 && v53 == v55)
  {

    goto LABEL_16;
  }

  v57 = OUTLINED_FUNCTION_95_2();

  if (v57)
  {
    goto LABEL_16;
  }

  sub_1DC3EAD64(v26);
  v58 = type metadata accessor for QDContextState(0);
  OUTLINED_FUNCTION_39(v26, 1, v58);
  if (v49)
  {
    sub_1DC28EB30(v26, &qword_1ECC7BEB8, &unk_1DC527150);
    goto LABEL_16;
  }

  v60 = *v26;
  OUTLINED_FUNCTION_44_10();
  v62 = sub_1DC3A5DA0(v26, v61);
  LOBYTE(v144) = v60;
  LOBYTE(v143[0]) = 3;
  sub_1DC3A56C4(v62, v63, v64);
  if ((sub_1DC5176CC() & 1) == 0)
  {
LABEL_16:
    OUTLINED_FUNCTION_8_12();
    sub_1DC3A5DA0(v50, v59);
    goto LABEL_17;
  }

  v65 = 0;
  v66 = *v50;
  v124 = *(*v50 + 16);
  v122 = v132 + 16;
  v128 = v131 + 16;
  ++v141;
  v127 = v137 + 8;
  v123 = v132 + 8;
  v120 = v6;
  v119 = v1;
  for (i = v66; ; v66 = i)
  {
    if (v65 == v124)
    {
      goto LABEL_16;
    }

    if (v65 >= *(v66 + 16))
    {
      __break(1u);
      return;
    }

    v67 = v133;
    OUTLINED_FUNCTION_24();
    (*(v70 + 16))(v67, v69 + v68 + *(v70 + 72) * v65, v134);
    v71 = *(sub_1DC5111AC() + 16);
    if (v71)
    {
      break;
    }

LABEL_37:
    ++v65;
    OUTLINED_FUNCTION_37();
    v95(v133, v134);
  }

  v125 = v65;
  OUTLINED_FUNCTION_24();
  v126 = v72;
  v74 = v72 + v73;
  v76 = *(v75 + 72);
  v77 = *(v75 + 16);
  v78 = v140;
  v136 = v76;
  v137 = v77;
  while (1)
  {
    (v77)(v19, v74, v78);
    if (sub_1DC5114CC())
    {
      break;
    }

    v91 = OUTLINED_FUNCTION_79_6();
    v92(v91);
LABEL_34:
    v74 += v76;
    if (!--v71)
    {

      v50 = v135;
      v65 = v125;
      goto LABEL_37;
    }
  }

  v79 = v142;
  sub_1DC51154C();
  v80 = sub_1DC51177C();
  v81 = *v141;
  (*v141)(v79, v11);
  if ((v80 & 1) == 0 || (type metadata accessor for NLRouterBypassUtils(), v82 = v142, sub_1DC51154C(), v83 = v11, v84 = v138, sub_1DC51178C(), v81(v82, v83), v85 = sub_1DC307E5C(v84), OUTLINED_FUNCTION_37(), v86 = v84, v11 = v83, v78 = v140, v87(v86, v139), !v85))
  {
    v93 = OUTLINED_FUNCTION_79_6();
    v94(v93);
    v76 = v136;
    v77 = v137;
    goto LABEL_34;
  }

  sub_1DC51478C();

  v88 = OUTLINED_FUNCTION_79_6();
  v89(v88);
  v143[0] = v144;
  v143[1] = v145;
  if (!*(&v145 + 1))
  {
    sub_1DC28EB30(v143, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v77 = v137;
    goto LABEL_33;
  }

  sub_1DC514ACC();
  v90 = OUTLINED_FUNCTION_115_3();
  v77 = v137;
  if ((v90 & 1) == 0)
  {
LABEL_33:
    v76 = v136;
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_37();
  v96(v133, v134);
  v97 = *(v129 + 20);
  v98 = v119;
  v99 = v130;
  sub_1DC28F358(v119 + v97, v130, &qword_1ECC7BFD0, &unk_1DC522550);
  v100 = type metadata accessor for NLRouterTurnContext(0);
  v101 = OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_39(v101, v102, v100);
  if (v103)
  {
    sub_1DC28EB30(v99, &qword_1ECC7BFD0, &unk_1DC522550);
    v104 = v120;
    v50 = v135;
  }

  else
  {
    v105 = *v99;

    OUTLINED_FUNCTION_46();
    sub_1DC3A5DA0(v99, v106);
    sub_1DC3A505C(v105);
    OUTLINED_FUNCTION_99_1();
    v104 = v120;
    v50 = v135;
    if (v99)
    {
      v107 = sub_1DC517B9C();
      sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
      v108 = sub_1DC2BE518();
      sub_1DC516F0C(v107, &dword_1DC287000, v108, "[EmailRule] Unsend message + Email in foreground detected. Ongoing Send message, skipping...", 92, 2, MEMORY[0x1E69E7CC0]);
      goto LABEL_48;
    }
  }

  sub_1DC28F358(v98 + v97, v104, &qword_1ECC7BFD0, &unk_1DC522550);
  v109 = OUTLINED_FUNCTION_34_11();
  OUTLINED_FUNCTION_39(v109, v110, v100);
  if (v49)
  {
    sub_1DC28EB30(v104, &qword_1ECC7BFD0, &unk_1DC522550);
  }

  else
  {
    v111 = *(v104 + 8);

    OUTLINED_FUNCTION_46();
    sub_1DC3A5DA0(v104, v112);
    v113 = sub_1DC3A505C(v111);

    if (v113)
    {
      v114 = sub_1DC517B9C();
      sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
      v108 = sub_1DC2BE518();
      sub_1DC516F0C(v114, &dword_1DC287000, v108, "[EmailRule] Unsend message + Email in foreground detected. Previously executed a send message, skipping...", 106, 2, MEMORY[0x1E69E7CC0]);
LABEL_48:

      goto LABEL_16;
    }
  }

  v115 = sub_1DC517B9C();
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v116 = sub_1DC2BE518();
  sub_1DC516F0C(v115, &dword_1DC287000, v116, "[EmailRule] Unsend message + Email in foreground detected.", 58, 2, MEMORY[0x1E69E7CC0]);

  OUTLINED_FUNCTION_8_12();
  sub_1DC3A5DA0(v50, v117);
LABEL_17:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3A3DC4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_38_2();
  v3 = sub_1DC514B2C();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  v87 = v7;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C240, &qword_1DC523070);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_95();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C248, &qword_1DC52F220);
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v88 = v11;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23_1();
  v91 = v13;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_62();
  v90 = v15;
  OUTLINED_FUNCTION_12();
  v95 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_1();
  v94 = v19;
  OUTLINED_FUNCTION_12();
  v20 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1();
  v26 = v25 - v24;
  v98 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_64();
  v28 = *(v0 + 16);
  if (!v28)
  {
    goto LABEL_19;
  }

  v86 = v3;
  OUTLINED_FUNCTION_24();
  v30 = v0 + v29;
  v99 = v31;
  v32 = (v22 + 8);
  v93 = (v17 + 8);
  v34 = *(v33 + 56);
  v35 = v98;
  v92 = v26;
  v96 = v34;
  v97 = v32;
  while (1)
  {
    v99(v2, v30, v35);
    if (sub_1DC5114CC())
    {
      break;
    }

    v42 = OUTLINED_FUNCTION_30_14();
    v43(v42, v35);
LABEL_18:
    v30 += v34;
    if (!--v28)
    {
      goto LABEL_19;
    }
  }

  sub_1DC51154C();
  v36 = sub_1DC51177C();
  v37 = *v97;
  (*v97)(v26, v20);
  if ((v36 & 1) == 0)
  {
    v35 = v98;
    v44 = OUTLINED_FUNCTION_147_0();
    v45(v44);
    goto LABEL_17;
  }

  type metadata accessor for NLRouterBypassUtils();
  sub_1DC51154C();
  sub_1DC51178C();
  v37(v26, v20);
  v38 = sub_1DC307E5C(v94);
  (*v93)(v94, v95);
  if (!v38)
  {
    v35 = v98;
    v46 = OUTLINED_FUNCTION_147_0();
    v47(v46);
LABEL_15:
    v26 = v92;
    goto LABEL_17;
  }

  sub_1DC51478C();

  v35 = v98;
  if (!v100[3])
  {
    v48 = OUTLINED_FUNCTION_147_0();
    v49(v48);

    sub_1DC28EB30(v100, &qword_1ECC7D3F0, &qword_1DC5238B0);
    goto LABEL_15;
  }

  sub_1DC51497C();
  v26 = v92;
  if ((OUTLINED_FUNCTION_115_3() & 1) == 0)
  {
    v50 = OUTLINED_FUNCTION_30_14();
    v51(v50, v98);

    goto LABEL_17;
  }

  sub_1DC51475C();
  if (v100[0])
  {
    v39 = sub_1DC51477C();

    if (v39)
    {

      v35 = v98;
      v40 = OUTLINED_FUNCTION_30_14();
      v41(v40, v98);
LABEL_17:
      v34 = v96;
      goto LABEL_18;
    }
  }

  sub_1DC51475C();

  if (v100[0] && (v52 = sub_1DC5146CC(), , v52))
  {
    v53 = v90;
    sub_1DC514B1C();

    v54 = v86;
  }

  else
  {
    v53 = v90;
    OUTLINED_FUNCTION_19();
    v54 = v86;
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v86);
  }

  (*(v5 + 104))(v91, *MEMORY[0x1E69D2070], v54);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v54);
  v61 = *(v89 + 48);
  sub_1DC28F358(v53, v1, &qword_1ECC7C248, &qword_1DC52F220);
  sub_1DC28F358(v91, v1 + v61, &qword_1ECC7C248, &qword_1DC52F220);
  OUTLINED_FUNCTION_5_3(v1);
  if (!v70)
  {
    sub_1DC28F358(v1, v88, &qword_1ECC7C248, &qword_1DC52F220);
    OUTLINED_FUNCTION_5_3(v1 + v61);
    if (!v70)
    {
      (*(v5 + 32))(v87, v1 + v61, v54);
      sub_1DC3A5DF8(&qword_1ECC7C250, MEMORY[0x1E69D2078], MEMORY[0x1E69D2080]);
      sub_1DC5176CC();

      v81 = v53;
      v82 = *(v5 + 8);
      v83 = OUTLINED_FUNCTION_45_2();
      v82(v83);
      sub_1DC28EB30(v91, &qword_1ECC7C248, &qword_1DC52F220);
      sub_1DC28EB30(v81, &qword_1ECC7C248, &qword_1DC52F220);
      v84 = OUTLINED_FUNCTION_30_14();
      v85(v84);
      (v82)(v88, v54);
      sub_1DC28EB30(v1, &qword_1ECC7C248, &qword_1DC52F220);
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v71, v72, v73);
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v74, v75, v76);
    v77 = OUTLINED_FUNCTION_30_14();
    v78(v77);
    v79 = OUTLINED_FUNCTION_45_2();
    v80(v79);
LABEL_32:
    sub_1DC28EB30(v1, &qword_1ECC7C240, &qword_1DC523070);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_59_2();
  sub_1DC28EB30(v62, v63, v64);
  OUTLINED_FUNCTION_59_2();
  sub_1DC28EB30(v65, v66, v67);
  v68 = OUTLINED_FUNCTION_30_14();
  v69(v68);
  OUTLINED_FUNCTION_5_3(v1 + v61);
  if (!v70)
  {
    goto LABEL_32;
  }

  sub_1DC28EB30(v1, &qword_1ECC7C248, &qword_1DC52F220);
LABEL_19:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3A4630(uint64_t a1)
{
  result = sub_1DC3A5CC8(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1DC3A5D08(result, v3, 0, a1);
  }
}

void sub_1DC3A4698()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  OUTLINED_FUNCTION_38_2();
  v91 = sub_1DC5149BC();
  OUTLINED_FUNCTION_0();
  v88 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  v85 = v5;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C238, &qword_1DC527190);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  v90 = &v83 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C200, &qword_1DC523020);
  v9 = OUTLINED_FUNCTION_10(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v86 = v10;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_23_1();
  v92 = v12;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_62();
  v89 = v14;
  OUTLINED_FUNCTION_12();
  v93 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  v21 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_64();
  sub_1DC51154C();
  v25 = sub_1DC51177C();
  v26 = *(v23 + 8);
  v26(v0, v21);
  if ((v25 & 1) == 0)
  {
    goto LABEL_29;
  }

  v84 = v2;
  type metadata accessor for NLRouterBypassUtils();
  sub_1DC51154C();
  sub_1DC51178C();
  v26(v0, v21);
  v27 = sub_1DC307E5C(v20);
  (*(v16 + 8))(v20, v93);
  if (!v27)
  {
    goto LABEL_29;
  }

  sub_1DC51478C();

  sub_1DC28F358(v94, v96, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v96[3])
  {
    v35 = 0;
    v33 = v90;
    v32 = v91;
    v34 = v92;
    goto LABEL_12;
  }

  sub_1DC28F358(v96, v95, &qword_1ECC7D3F0, &qword_1DC5238B0);
  v28 = sub_1DC514A9C();
  v31 = OUTLINED_FUNCTION_50_12(v28, v29, v30, v28);
  v33 = v90;
  v32 = v91;
  v34 = v92;
  if (v31)
  {

    sub_1DC51392C();
LABEL_11:

    v35 = v94[4];
    __swift_destroy_boxed_opaque_existential_1Tm(v95);
    goto LABEL_12;
  }

  v36 = sub_1DC514DAC();
  if (OUTLINED_FUNCTION_50_12(v36, v37, v38, v36))
  {
    goto LABEL_8;
  }

  v39 = sub_1DC514B9C();
  if (OUTLINED_FUNCTION_50_12(v39, v40, v41, v39))
  {

    sub_1DC514C8C();
    goto LABEL_11;
  }

  v80 = sub_1DC514C4C();
  if (OUTLINED_FUNCTION_50_12(v80, v81, v82, v80))
  {
LABEL_8:

    sub_1DC5148BC();
    goto LABEL_11;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v95);
  v35 = 0;
LABEL_12:
  sub_1DC28EB30(v96, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v35)
  {
    sub_1DC28EB30(v94, &qword_1ECC7D3F0, &qword_1DC5238B0);
LABEL_28:

    goto LABEL_29;
  }

  if (sub_1DC51477C())
  {
    sub_1DC5149AC();
  }

  else
  {
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v32);
  }

  (*(v88 + 104))(v34, *MEMORY[0x1E69D1D40], v32);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v32);
  v48 = *(v87 + 48);
  v49 = OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_114_0(v49, v50);
  OUTLINED_FUNCTION_114_0(v34, v33 + v48);
  OUTLINED_FUNCTION_39(v33, 1, v32);
  if (!v52)
  {
    v51 = v86;
    sub_1DC28F358(v33, v86, &qword_1ECC7C200, &qword_1DC523020);
    OUTLINED_FUNCTION_39(v33 + v48, 1, v32);
    if (!v52)
    {
      v53 = v88;
      v54 = v85;
      (*(v88 + 32))(v85, v33 + v48, v32);
      OUTLINED_FUNCTION_0_39();
      sub_1DC3A5DF8(v55, v56, MEMORY[0x1E69D1D50]);
      v93 = v35;
      LODWORD(v91) = sub_1DC5176CC();
      v57 = *(v53 + 8);
      v57(v54, v32);
      OUTLINED_FUNCTION_58_10();
      sub_1DC28EB30(v58, v59, v60);
      OUTLINED_FUNCTION_58_10();
      sub_1DC28EB30(v61, v62, v63);
      v57(v51, v32);
      OUTLINED_FUNCTION_58_10();
      sub_1DC28EB30(v64, v65, v66);
      if (v91)
      {
        goto LABEL_31;
      }

LABEL_26:
      sub_1DC28EB30(v94, &qword_1ECC7D3F0, &qword_1DC5238B0);
LABEL_27:

      goto LABEL_28;
    }

    OUTLINED_FUNCTION_80(v34);
    OUTLINED_FUNCTION_46_4();
    (*(v88 + 8))(v51, v32);
LABEL_25:
    sub_1DC28EB30(v33, &qword_1ECC7C238, &qword_1DC527190);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_80(v34);
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_39(v33 + v48, 1, v32);
  if (!v52)
  {
    goto LABEL_25;
  }

  sub_1DC28EB30(v33, &qword_1ECC7C200, &qword_1DC523020);
LABEL_31:

  sub_1DC5145FC();

  v67 = sub_1DC514F8C();

  v68 = sub_1DC2E5024(v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DC522F00;
  strcpy((inited + 32), "usoQuantifier");
  *(inited + 46) = -4864;
  *(inited + 48) = 0xD000000000000012;
  *(inited + 56) = 0x80000001DC53D420;
  *(inited + 64) = 1701080941;
  *(inited + 72) = 0xE400000000000000;
  v70 = sub_1DC2E5CA4(inited, v68);
  swift_setDeallocating();
  sub_1DC2A180C();
  v71 = v70[2];
  if (v84)
  {
    if (v71)
    {
      v72 = swift_initStackObject();
      v73 = OUTLINED_FUNCTION_38_10(v72, xmmword_1DC523DA0);
      v74 = OUTLINED_FUNCTION_45_10(v73, "associatedDateTime");
      sub_1DC2E5CA4(v74, v75);

      swift_setDeallocating();
      sub_1DC2A180C();
      sub_1DC28EB30(v94, &qword_1ECC7D3F0, &qword_1DC5238B0);

      goto LABEL_29;
    }

    sub_1DC28EB30(v94, &qword_1ECC7D3F0, &qword_1DC5238B0);

    goto LABEL_27;
  }

  if (v71)
  {
    v76 = swift_initStackObject();
    v77 = OUTLINED_FUNCTION_38_10(v76, xmmword_1DC523DA0);
    v78 = OUTLINED_FUNCTION_45_10(v77, "associatedDateTime");
    sub_1DC3A4F78(v78, v79);
    swift_setDeallocating();
    sub_1DC2A180C();

    sub_1DC28EB30(v94, &qword_1ECC7D3F0, &qword_1DC5238B0);
  }

  else
  {
    sub_1DC28EB30(v94, &qword_1ECC7D3F0, &qword_1DC5238B0);
  }

LABEL_29:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3A4F78(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == 1)
  {
    result = sub_1DC3A4630(a2);
    v8[0] = result;
    v8[1] = v6;
    if (v6)
    {
      MEMORY[0x1EEE9AC00](result);
      v7[2] = v8;
      v4 = sub_1DC2CF098(sub_1DC2CF174, v7, a1);

      return v4;
    }

    __break(1u);
  }

  else
  {
    if (!v3)
    {
      return 1;
    }

    return sub_1DC3A58FC(a1, a2);
  }

  return result;
}

BOOL sub_1DC3A505C(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  do
  {
    v3 = v1;
    if (v2 == v1)
    {
      break;
    }

    sub_1DC510F1C();
    ++v1;
    sub_1DC3A5104();
  }

  while ((v4 & 1) == 0);
  return v2 != v3;
}

void sub_1DC3A5104()
{
  OUTLINED_FUNCTION_33();
  v0 = sub_1DC5149BC();
  OUTLINED_FUNCTION_0();
  v62 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_1();
  v59 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C238, &qword_1DC527190);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v58 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C200, &qword_1DC523020);
  v9 = OUTLINED_FUNCTION_10(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v60 = v10;
  OUTLINED_FUNCTION_22();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v58 - v13;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  v61 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C890, &qword_1DC5234B0);
  OUTLINED_FUNCTION_10(v16);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58 - v18;
  type metadata accessor for NLRouterBypassUtils();
  OUTLINED_FUNCTION_38_2();
  v20 = sub_1DC510F1C();
  OUTLINED_FUNCTION_35();
  v21 = OUTLINED_FUNCTION_55();
  v22(v21);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v20);
  sub_1DC307F68(v19);
  sub_1DC28EB30(v19, &qword_1ECC7C890, &qword_1DC5234B0);
  sub_1DC51478C();

  if (!v63[3])
  {
    v28 = &qword_1ECC7D3F0;
    v29 = &qword_1DC5238B0;
    v30 = v63;
LABEL_7:
    sub_1DC28EB30(v30, v28, v29);
    goto LABEL_8;
  }

  sub_1DC51497C();
  if (OUTLINED_FUNCTION_115_3())
  {

    sub_1DC51475C();

    if (v63[0] && (v26 = sub_1DC51477C(), , v26))
    {
      v27 = v61;
      sub_1DC5149AC();
    }

    else
    {
      v27 = v61;
      OUTLINED_FUNCTION_19();
      __swift_storeEnumTagSinglePayload(v31, v32, v33, v0);
    }

    v34 = v62;
    (*(v62 + 104))(v14, *MEMORY[0x1E69D1D40], v0);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v0);
    v38 = *(v4 + 48);
    OUTLINED_FUNCTION_114_0(v27, v7);
    OUTLINED_FUNCTION_114_0(v14, &v7[v38]);
    v39 = OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_39(v39, v40, v0);
    if (!v41)
    {
      sub_1DC28F358(v7, v60, &qword_1ECC7C200, &qword_1DC523020);
      OUTLINED_FUNCTION_39(&v7[v38], 1, v0);
      if (!v41)
      {
        v44 = v59;
        (*(v34 + 32))(v59, &v7[v38], v0);
        OUTLINED_FUNCTION_0_39();
        sub_1DC3A5DF8(v45, v46, MEMORY[0x1E69D1D50]);
        sub_1DC5176CC();

        v47 = *(v34 + 8);
        v47(v44, v0);
        OUTLINED_FUNCTION_58_10();
        sub_1DC28EB30(v48, v49, v50);
        OUTLINED_FUNCTION_58_10();
        sub_1DC28EB30(v51, v52, v53);
        v54 = OUTLINED_FUNCTION_147_0();
        (v47)(v54);
        OUTLINED_FUNCTION_58_10();
        sub_1DC28EB30(v55, v56, v57);
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_80(v14);
      OUTLINED_FUNCTION_46_4();
      v42 = OUTLINED_FUNCTION_147_0();
      v43(v42);
LABEL_18:
      sub_1DC28EB30(v7, &qword_1ECC7C238, &qword_1DC527190);
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_80(v14);
    OUTLINED_FUNCTION_46_4();
    OUTLINED_FUNCTION_39(&v7[v38], 1, v0);
    if (!v41)
    {
      goto LABEL_18;
    }

    v28 = &qword_1ECC7C200;
    v29 = &qword_1DC523020;
    v30 = v7;
    goto LABEL_7;
  }

LABEL_8:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3A55F0(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1DC51164C(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1DC51164C();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_1DC3A56C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7D148;
  if (!qword_1ECC7D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D148);
  }

  return result;
}

void *sub_1DC3A5718(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DC3A5748(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DC3A5748(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D150, qword_1DC526DD8);
  v10 = *(sub_1DC51164C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1DC51164C() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DC3A55F0(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1DC3A58FC(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v11[6] = *MEMORY[0x1E69E9840];
  v11[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v11[3] = v11;
  v11[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v6 = &v11[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1DC2A3304(0, v5, v6);
    v7 = sub_1DC3A5A88(v6, v5, v3, a2);
  }

  else
  {
    v9 = swift_slowAlloc();
    v7 = sub_1DC3A5C14(v9, v5, sub_1DC3A5D84);
    MEMORY[0x1E1298840](v9, -1, -1);
  }

  return v7 & 1;
}

uint64_t sub_1DC3A5A88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v24 = *(a3 + 16);
  v22 = result;
  v23 = a3 + 32;
  v6 = a4 + 56;
LABEL_2:
  while (2)
  {
    while (2)
    {
      v7 = v5;
      if (v5 == v24)
      {
        return v7 != v24;
      }

      if (v5 >= v24)
      {
        __break(1u);
        goto LABEL_19;
      }

      if (__OFADD__(v5, 1))
      {
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v25 = v5 + 1;
      v8 = (v23 + 16 * v5);
      v10 = *v8;
      v9 = v8[1];
      sub_1DC5182FC();

      sub_1DC51769C();
      v11 = sub_1DC51833C();
      v12 = ~(-1 << *(a4 + 32));
      do
      {
        v13 = v11 & v12;
        v14 = (v11 & v12) >> 6;
        v15 = 1 << (v11 & v12);
        if ((v15 & *(v6 + 8 * v14)) == 0)
        {

          v5 = v25;
          goto LABEL_2;
        }

        v16 = (*(a4 + 48) + 16 * v13);
        if (*v16 == v10 && v16[1] == v9)
        {
          break;
        }

        v18 = sub_1DC51825C();
        v11 = v13 + 1;
      }

      while ((v18 & 1) == 0);

      v19 = *(v22 + 8 * v14);
      *(v22 + 8 * v14) = v19 | v15;
      v5 = v25;
      if ((v19 & v15) != 0)
      {
        continue;
      }

      break;
    }

    v20 = v21 + 1;
    if (!__OFADD__(v21, 1))
    {
      ++v21;
      if (v20 != *(a4 + 16))
      {
        continue;
      }

      return v7 != v24;
    }

    break;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_1DC3A5C14(void *result, uint64_t a2, void (*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    a3(&v8, v6, a2);
    if (!v3)
    {
      v7 = v8;
    }

    return (v7 & 1);
  }

  return result;
}

uint64_t sub_1DC3A5C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = sub_1DC3A5A88(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = result & 1;
  }

  return result;
}

uint64_t sub_1DC3A5D08(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 48) + 16 * result);

    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1DC3A5DA0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_35();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DC3A5DF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_91_2()
{
}

void *OUTLINED_FUNCTION_111_2@<X0>(uint64_t a1@<X8>)
{

  return sub_1DC3A5718(0, a1 + 1, 1);
}

id OUTLINED_FUNCTION_113_4()
{

  return sub_1DC2BE518();
}

uint64_t OUTLINED_FUNCTION_116_2()
{
}

uint64_t sub_1DC3A5EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a1;
  v102 = a2;
  v107 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v112 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v106 = v5 - v4;
  OUTLINED_FUNCTION_12();
  v109 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v111 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v105 = v8;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v9);
  v113 = &v88 - v10;
  OUTLINED_FUNCTION_12();
  v108 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v101 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v103 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  v100 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v88 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v88 - v25;
  v114 = type metadata accessor for NLRouterNLParseResponse(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_1();
  v93 = (v29 - v28);
  OUTLINED_FUNCTION_12();
  v30 = sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_1();
  v36 = v35 - v34;
  v37 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v38 = sub_1DC2BE518();
  v39 = OUTLINED_FUNCTION_130();
  sub_1DC2A2ED0("HeuristicRules.JournalRule", 26, 2, v38, v39 & 1, v36);

  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  if ((sub_1DC3442F0() & 1) == 0)
  {
    v45 = sub_1DC517B9C();
    v46 = sub_1DC2BE518();
    sub_1DC516F0C(v45, &dword_1DC287000, v46, "[JournalRule] rule is off", 25, 2, MEMORY[0x1E69E7CC0]);

    sub_1DC5157EC();
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
LABEL_25:
    v87 = sub_1DC2BE518();
    sub_1DC2B8848(v36, "HeuristicRules.JournalRule", 26, 2, v87);

    return (*(v32 + 8))(v36, v30);
  }

  v92 = v37;
  v40 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(v115 + *(v40 + 32), v23, &qword_1ECC7C158, &unk_1DC5234A0);
  v41 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v23, 1, v41) == 1)
  {
    sub_1DC28EB30(v23, &qword_1ECC7C158, &unk_1DC5234A0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v114);
LABEL_6:
    sub_1DC28EB30(v26, &qword_1ECC7C160, qword_1DC5233B0);
    sub_1DC5157EC();
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
    goto LABEL_25;
  }

  sub_1DC28F358(v23, v26, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v23, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v26, 1, v114) == 1)
  {
    goto LABEL_6;
  }

  v88 = v36;
  v89 = v32;
  v90 = v30;
  v55 = v93;
  result = sub_1DC2E53A4(v26, v93);
  v57 = 0;
  v58 = *v55;
  v95 = v103 + 16;
  v97 = *(v58 + 16);
  v114 = (v101 + 8);
  v115 = v101 + 16;
  v104 = v112 + 8;
  v94 = (v103 + 8);
  v59 = v108;
  v60 = v109;
  v61 = v100;
  v96 = v16;
  v91 = v58;
  v110 = (v111 + 8);
  while (1)
  {
    if (v57 == v97)
    {
      OUTLINED_FUNCTION_4_21();
      sub_1DC5157EC();
      OUTLINED_FUNCTION_19();
LABEL_24:
      __swift_storeEnumTagSinglePayload(v83, v84, v85, v86);
      v30 = v90;
      v32 = v89;
      v36 = v88;
      goto LABEL_25;
    }

    if (v57 >= *(v58 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_24();
    (*(v63 + 16))(v61, v58 + v62 + *(v63 + 72) * v57, v16);
    v64 = sub_1DC5111AC();
    v65 = *(v64 + 16);
    if (v65)
    {
      v98 = v57;
      v99 = v64;
      OUTLINED_FUNCTION_24();
      v68 = v66 + v67;
      v70 = *(v69 + 72);
      v71 = *(v69 + 16);
      v111 = v71;
      v112 = v70;
      while (1)
      {
        (v71)(v15, v68, v59);
        if ((sub_1DC5114CC() & 1) == 0)
        {
          goto LABEL_16;
        }

        v72 = v113;
        sub_1DC51154C();
        v73 = sub_1DC51177C();
        v74 = *v110;
        (*v110)(v72, v60);
        if ((v73 & 1) == 0)
        {
          break;
        }

        v75 = v105;
        sub_1DC51154C();
        sub_1DC51178C();
        v74(v75, v60);
        sub_1DC5138FC();
        v76 = OUTLINED_FUNCTION_6_17();
        v77(v76);
        v78 = sub_1DC3A67C8();

        v59 = v108;
        (*v114)(v15, v108);
        v60 = v109;
        v71 = v111;
        v70 = v112;
        if (v78)
        {

          (*v94)(v100, v96);
          OUTLINED_FUNCTION_4_21();
          v79 = *MEMORY[0x1E69D02F8];
          v80 = sub_1DC5157EC();
          OUTLINED_FUNCTION_35();
          v82 = v102;
          (*(v81 + 104))(v102, v79, v80);
          v83 = v82;
          v84 = 0;
          v85 = 1;
          v86 = v80;
          goto LABEL_24;
        }

LABEL_17:
        v68 += v70;
        if (!--v65)
        {

          v61 = v100;
          v57 = v98;
          v58 = v91;
          goto LABEL_22;
        }
      }

      v71 = v111;
      v70 = v112;
LABEL_16:
      (*v114)(v15, v59);
      goto LABEL_17;
    }

LABEL_22:
    ++v57;
    v16 = v96;
    result = (*v94)(v61, v96);
  }

  __break(1u);
  return result;
}

unint64_t sub_1DC3A67C8()
{
  sub_1DC514ECC();
  OUTLINED_FUNCTION_0();
  v50 = v2;
  v51 = v1;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  v49 = v4 - v3;
  OUTLINED_FUNCTION_12();
  v58 = sub_1DC514E7C();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v48 = v8;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - v10;
  v12 = sub_1DC514E3C();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15();
  v53 = v16;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1A0, &qword_1DC522F80);
  MEMORY[0x1EEE9AC00](v20 - 8);
  OUTLINED_FUNCTION_15();
  v54 = v21;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v22);
  v55 = &v47 - v23;
  v52 = v0;
  result = sub_1DC514EEC();
  v25 = result;
  v26 = 0;
  v27 = *(result + 16);
  v56 = (v14 + 8);
  v57 = (v6 + 8);
  while (1)
  {
    if (v27 == v26)
    {

      v35 = 1;
      v36 = v55;
      goto LABEL_13;
    }

    if (v26 >= *(v25 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_24();
    v29 = v12;
    (*(v14 + 16))(v19, v25 + v28 + *(v14 + 72) * v26, v12);
    sub_1DC514E0C();
    v30 = sub_1DC514E6C();
    v32 = v31;
    (*v57)(v11, v58);
    if (v30 == 1802723700 && v32 == 0xE400000000000000)
    {
      break;
    }

    v34 = sub_1DC51825C();

    if (v34)
    {
      goto LABEL_12;
    }

    v12 = v29;
    result = (*v56)(v19, v29);
    ++v26;
  }

LABEL_12:

  v36 = v55;
  v12 = v29;
  (*(v14 + 32))(v55, v19, v29);
  v35 = 0;
LABEL_13:
  v37 = v54;
  __swift_storeEnumTagSinglePayload(v36, v35, 1, v12);
  sub_1DC28F358(v36, v37, &qword_1ECC7C1A0, &qword_1DC522F80);
  if (__swift_getEnumTagSinglePayload(v37, 1, v12) == 1)
  {
    sub_1DC28EB30(v36, &qword_1ECC7C1A0, &qword_1DC522F80);
    v38 = 0;
    v36 = v37;
LABEL_18:
    sub_1DC28EB30(v36, &qword_1ECC7C1A0, &qword_1DC522F80);
    return v38 & 1;
  }

  (*(v14 + 32))(v53, v37, v12);
  v39 = sub_1DC514EFC();
  result = sub_1DC514E1C();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

  if (result < *(v39 + 16))
  {
    v41 = v49;
    v40 = v50;
    OUTLINED_FUNCTION_24();
    v44 = v12;
    v45 = v51;
    (*(v40 + 16))(v41, v39 + v42 + *(v40 + 72) * v43, v51);

    v46 = v48;
    sub_1DC514EBC();
    sub_1DC514E6C();
    (*v57)(v46, v58);
    v38 = sub_1DC51795C();

    (*(v40 + 8))(v41, v45);
    (*v56)(v53, v44);
    goto LABEL_18;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1DC3A6D48(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13CDMFoundation9BitVector_data;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

unint64_t sub_1DC3A6DA0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DC51808C();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DC3A6DEC(char a1)
{
  result = 0x664F7265626D756ELL;
  switch(a1)
  {
    case 2:
      result = 0x4272655073746962;
      break;
    case 3:
      result = 0x7466696853746962;
      break;
    case 4:
      result = 1635017060;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DC3A6E98(unsigned __int8 a1, char a2)
{
  v2 = 0xEC00000073746942;
  v3 = 0x664F7265626D756ELL;
  v4 = a1;
  v5 = 0x664F7265626D756ELL;
  v6 = 0xEC00000073746942;
  switch(v4)
  {
    case 1:
      v6 = 0xED00007365747942;
      v5 = 0x664F7265626D756ELL;
      break;
    case 2:
      v5 = 0x4272655073746962;
      v6 = 0xEC0000006B636F6CLL;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v5 = 0x7466696853746962;
      break;
    case 4:
      v6 = 0xE400000000000000;
      v5 = 1635017060;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xED00007365747942;
      break;
    case 2:
      v3 = 0x4272655073746962;
      v2 = 0xEC0000006B636F6CLL;
      break;
    case 3:
      v2 = 0xE800000000000000;
      v3 = 0x7466696853746962;
      break;
    case 4:
      v2 = 0xE400000000000000;
      v3 = 1635017060;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DC51825C();
  }

  return v8 & 1;
}

uint64_t sub_1DC3A7020(char a1)
{
  sub_1DC5182FC();
  sub_1DC3A6DEC(a1);
  sub_1DC51769C();

  return sub_1DC51833C();
}

uint64_t sub_1DC3A708C(uint64_t a1, char a2)
{
  sub_1DC51769C();
}

uint64_t sub_1DC3A7168(uint64_t a1, char a2)
{
  sub_1DC5182FC();
  sub_1DC3A6DEC(a2);
  sub_1DC51769C();

  return sub_1DC51833C();
}

unint64_t sub_1DC3A71C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DC3A6DA0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1DC3A71F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DC3A6DEC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DC3A722C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DC3A6DA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DC3A7260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DC3A7574(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1DC3A729C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DC3A7574(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void *sub_1DC3A731C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D160, &qword_1DC526E08);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DC3A7574(v11, v12, v13);
  sub_1DC51834C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for BitVector();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v21) = 0;
    *&v3[OBJC_IVAR____TtC13CDMFoundation9BitVector_numberOfBits] = OUTLINED_FUNCTION_1_27();
    LOBYTE(v21) = 1;
    *&v3[OBJC_IVAR____TtC13CDMFoundation9BitVector_numberOfBytes] = OUTLINED_FUNCTION_1_27();
    LOBYTE(v21) = 2;
    *&v3[OBJC_IVAR____TtC13CDMFoundation9BitVector_bitsPerBlock] = OUTLINED_FUNCTION_1_27();
    LOBYTE(v21) = 3;
    v14 = OUTLINED_FUNCTION_1_27();
    *&v3[OBJC_IVAR____TtC13CDMFoundation9BitVector_bitShift] = v14;
    v23 = 4;
    sub_1DC3A75EC(v14, v15, v16);
    sub_1DC51814C();
    v18 = sub_1DC33360C(v21, v22);
    (*(v7 + 8))(v10, v5);
    *&v3[OBJC_IVAR____TtC13CDMFoundation9BitVector_data] = v18;
    v19 = type metadata accessor for BitVector();
    v20.receiver = v3;
    v20.super_class = v19;
    v11 = objc_msgSendSuper2(&v20, sel_init);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v11;
}

unint64_t sub_1DC3A7574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7D168;
  if (!qword_1ECC7D168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D168);
  }

  return result;
}

unint64_t sub_1DC3A75EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7BEB0;
  if (!qword_1ECC7BEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BEB0);
  }

  return result;
}

uint64_t sub_1DC3A7640(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D170, &qword_1DC526E10);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17[-v7];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DC3A7574(v9, v10, v11);
  sub_1DC51835C();
  LOBYTE(v18) = 0;
  OUTLINED_FUNCTION_0_40();
  sub_1DC5181FC();
  if (v1)
  {
    return (*(v5 + 8))(v8, v3);
  }

  LOBYTE(v18) = 1;
  OUTLINED_FUNCTION_0_40();
  sub_1DC5181FC();
  LOBYTE(v18) = 2;
  OUTLINED_FUNCTION_0_40();
  sub_1DC5181FC();
  LOBYTE(v18) = 3;
  OUTLINED_FUNCTION_0_40();
  sub_1DC5181FC();
  v12 = sub_1DC3A7AB4();
  v14 = v13;
  v18 = v12;
  v19 = v13;
  v17[15] = 4;
  sub_1DC3A7D2C(v12, v13, v15);
  OUTLINED_FUNCTION_0_40();
  sub_1DC51820C();
  (*(v5 + 8))(v8, v3);
  return sub_1DC2AD740(v12, v14);
}

id sub_1DC3A7888(id result)
{
  *&v1[OBJC_IVAR____TtC13CDMFoundation9BitVector_bitsPerBlock] = 8;
  *&v1[OBJC_IVAR____TtC13CDMFoundation9BitVector_bitShift] = 3;
  v2 = ceilf(vcvts_n_f32_u64(result, 3uLL));
  if (v2 == INFINITY)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v2 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 >= 1.8447e19)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  if (v2 >= 1.8447e19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *&v1[OBJC_IVAR____TtC13CDMFoundation9BitVector_numberOfBytes] = v3;
  *&v1[OBJC_IVAR____TtC13CDMFoundation9BitVector_numberOfBits] = result;
  if ((v3 & 0x8000000000000000) == 0)
  {
    *&v1[OBJC_IVAR____TtC13CDMFoundation9BitVector_data] = sub_1DC3A796C(0, v3);
    v4.receiver = v1;
    v4.super_class = type metadata accessor for BitVector();
    return objc_msgSendSuper2(&v4, sel_init);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1DC3A796C(uint64_t result, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    v4 = sub_1DC517A4C();
    *(v4 + 16) = a2;
    memset((v4 + 32), v3, a2);
    return v4;
  }

  return result;
}

void sub_1DC3A79DC(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC13CDMFoundation9BitVector_bitShift);
    if (v5 <= 0x3F)
    {
      v3 = a1 >> v5;
    }

    else
    {
      v3 = 0;
    }

    if (*(v1 + OBJC_IVAR____TtC13CDMFoundation9BitVector_bitsPerBlock))
    {
      v4 = OBJC_IVAR____TtC13CDMFoundation9BitVector_data;
      swift_beginAccess();
      v2 = *(v1 + v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v4) = v2;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  v2 = sub_1DC3A7D18(v2);
LABEL_7:
  if (v3 >= *(v2 + 2))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_2_23();
    v2[v3 + 32] |= v7;
    *(v1 + v4) = v2;
  }
}

uint64_t sub_1DC3A7AB4()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x78))();
  if ((*(v0 + OBJC_IVAR____TtC13CDMFoundation9BitVector_numberOfBytes) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = MEMORY[0x1E128F2C0](result + 32);

    return v2;
  }

  return result;
}

unint64_t sub_1DC3A7B44(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *(v1 + OBJC_IVAR____TtC13CDMFoundation9BitVector_bitShift);
  if (v2 <= 0x3F)
  {
    v3 = result >> v2;
  }

  else
  {
    v3 = 0;
  }

  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x78))();
  if (v3 >= *(result + 16))
  {
    goto LABEL_9;
  }

  v4 = *(result + v3 + 32);

  if (*(v1 + OBJC_IVAR____TtC13CDMFoundation9BitVector_bitsPerBlock))
  {
    OUTLINED_FUNCTION_2_23();
    return (v5 & v4) != 0;
  }

LABEL_10:
  __break(1u);
  return result;
}

id sub_1DC3A7C44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BitVector();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DC3A7C88@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 144))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1DC3A7D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7D178;
  if (!qword_1ECC7D178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D178);
  }

  return result;
}

unint64_t sub_1DC3A7D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7D180;
  if (!qword_1ECC7D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D180);
  }

  return result;
}

unint64_t sub_1DC3A7DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7D188;
  if (!qword_1ECC7D188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D188);
  }

  return result;
}

unint64_t sub_1DC3A7E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7D190;
  if (!qword_1ECC7D190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D190);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BitVector.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BitVector.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DC3A7FEC()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F960);
  v1 = OUTLINED_FUNCTION_43();
  v3 = __swift_project_value_buffer(v1, v2);
  v4 = swift_allocObject();
  v4[2] = 0xD000000000000013;
  v4[3] = 0x80000001DC544080;
  v4[4] = 0x746E45746E657645;
  v4[5] = 0xEB00000000797469;
  *v3 = v4;
  OUTLINED_FUNCTION_7_1();
  v6 = *(v5 + 104);

  return v6(v3);
}

uint64_t sub_1DC3A80C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_8();
  v81 = v5 - v6;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v80 = &v74 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v74 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v74 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v74 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v74 - v19;
  v21 = sub_1DC5172FC();
  OUTLINED_FUNCTION_0();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_1();
  v27 = v26 - v25;
  sub_1DC5171CC();
  if (qword_1ECC88570 != -1)
  {
    OUTLINED_FUNCTION_4_22(&qword_1ECC88570);
  }

  __swift_project_value_buffer(v21, qword_1ECC8F960);
  v28 = sub_1DC5172DC();
  (*(v23 + 8))(v27, v21);
  if (v28)
  {
    v29 = sub_1DC5171EC();
    sub_1DC30F668(0x656C746974, 0xE500000000000000, v29, v20);

    v30 = sub_1DC5172AC();
    OUTLINED_FUNCTION_5_3(v20);
    if (v31)
    {
      sub_1DC30F72C(v20);
    }

    else
    {
      sub_1DC382AC0();
      v79 = v46;
      v48 = v47;
      OUTLINED_FUNCTION_1_28();
      (*(v49 + 8))(v20, v30);
      v78 = v48;
      if (v48)
      {
LABEL_10:
        v50 = sub_1DC5171EC();
        sub_1DC30F668(0x6E6F697461636F6CLL, 0xE800000000000000, v50, v18);

        OUTLINED_FUNCTION_5_3(v18);
        if (v31)
        {
          sub_1DC30F72C(v18);
        }

        else
        {
          sub_1DC382AC0();
          v77 = v51;
          v53 = v52;
          OUTLINED_FUNCTION_1_28();
          (*(v54 + 8))(v18, v30);
          v76 = v53;
          if (v53)
          {
LABEL_15:
            v55 = sub_1DC5171EC();
            sub_1DC30F668(0x7461447472617473, 0xE900000000000065, v55, v15);

            OUTLINED_FUNCTION_5_3(v15);
            if (v31)
            {
              sub_1DC30F72C(v15);
            }

            else
            {
              sub_1DC382AC0();
              v75 = v56;
              v39 = v57;
              OUTLINED_FUNCTION_1_28();
              (*(v58 + 8))(v15, v30);
              if (v39)
              {
LABEL_20:
                v59 = sub_1DC5171EC();
                sub_1DC30F668(0x65746144646E65, 0xE700000000000000, v59, v12);

                OUTLINED_FUNCTION_5_3(v12);
                if (v31)
                {
                  sub_1DC30F72C(v12);
                }

                else
                {
                  sub_1DC382AC0();
                  v40 = v60;
                  v41 = v61;
                  OUTLINED_FUNCTION_1_28();
                  (*(v62 + 8))(v12, v30);
                  if (v41)
                  {
                    goto LABEL_25;
                  }
                }

                v40 = 0;
                v41 = 0xE000000000000000;
LABEL_25:
                v63 = v81;
                v64 = sub_1DC5171EC();
                v65 = v80;
                sub_1DC30F668(0x657A696E6167726FLL, 0xE900000000000072, v64, v80);

                v66 = sub_1DC3A872C(v65);
                if (v67)
                {
                  v42 = v66;
                }

                else
                {
                  v42 = 0;
                }

                if (v67)
                {
                  v43 = v67;
                }

                else
                {
                  v43 = 0xE000000000000000;
                }

                v68 = sub_1DC5171EC();
                sub_1DC30F668(0x7365746F6ELL, 0xE500000000000000, v68, v63);

                OUTLINED_FUNCTION_5_3(v63);
                if (v31)
                {
                  sub_1DC30F72C(v63);
                }

                else
                {
                  sub_1DC382AC0();
                  v44 = v69;
                  v45 = v70;
                  OUTLINED_FUNCTION_1_28();
                  (*(v71 + 8))();
                  if (v45)
                  {
                    sub_1DC51721C();
                    OUTLINED_FUNCTION_7_1();
                    result = (*(v72 + 8))(a1);
LABEL_37:
                    v35 = v78;
                    v34 = v79;
                    v37 = v76;
                    v36 = v77;
                    v38 = v75;
                    goto LABEL_38;
                  }
                }

                sub_1DC51721C();
                OUTLINED_FUNCTION_7_1();
                (*(v73 + 8))(a1);

                v44 = 0;
                v45 = 0xE000000000000000;
                goto LABEL_37;
              }
            }

            v75 = 0;
            v39 = 0xE000000000000000;
            goto LABEL_20;
          }
        }

        v76 = 0xE000000000000000;
        v77 = 0;
        goto LABEL_15;
      }
    }

    v78 = 0xE000000000000000;
    v79 = 0;
    goto LABEL_10;
  }

  sub_1DC51721C();
  OUTLINED_FUNCTION_7_1();
  result = (*(v32 + 8))(a1);
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
LABEL_38:
  *a2 = v34;
  a2[1] = v35;
  a2[2] = v36;
  a2[3] = v37;
  a2[4] = v38;
  a2[5] = v39;
  a2[6] = v40;
  a2[7] = v41;
  a2[8] = v42;
  a2[9] = v43;
  a2[10] = v44;
  a2[11] = v45;
  return result;
}

uint64_t sub_1DC3A872C(uint64_t a1)
{
  v2 = sub_1DC5172FC();
  OUTLINED_FUNCTION_0();
  v54 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  sub_1DC51721C();
  OUTLINED_FUNCTION_0();
  v55 = v9;
  v56 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  MEMORY[0x1EEE9AC00](v13 - 8);
  OUTLINED_FUNCTION_8();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v53 - v18;
  v20 = sub_1DC5172AC();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_8();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v53 - v28;
  sub_1DC35D0B4(a1, v19);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_1DC30F72C(a1);
    sub_1DC30F72C(v19);
  }

  else
  {
    (*(v22 + 32))(v29, v19, v20);
    (*(v22 + 16))(v26, v29, v20);
    if ((*(v22 + 88))(v26, v20) == *MEMORY[0x1E69DAE58])
    {
      (*(v22 + 96))(v26, v20);
      v30 = swift_projectBox();
      (*(v55 + 16))(v12, v30, v56);
      sub_1DC5171CC();
      if (qword_1ECC88578 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v2, qword_1ECC8F978);
      v31 = sub_1DC5172DC();
      (*(v54 + 8))(v7, v2);
      if (v31)
      {
        v32 = sub_1DC5171EC();
        sub_1DC30F668(1701667182, 0xE400000000000000, v32, v16);

        if (__swift_getEnumTagSinglePayload(v16, 1, v20) == 1)
        {
          sub_1DC30F72C(v16);
        }

        else
        {
          sub_1DC382AC0();
          v39 = v41;
          v43 = v42;
          v44 = v16;
          v45 = *(v22 + 8);
          v45(v44, v20);
          if (v43)
          {
            sub_1DC30F72C(a1);
            v46 = OUTLINED_FUNCTION_4_1();
            v47(v46);
            v48 = OUTLINED_FUNCTION_35_0();
            (v45)(v48);

            return v39;
          }
        }

        sub_1DC30F72C(a1);
        v49 = OUTLINED_FUNCTION_4_1();
        v50(v49);
        v51 = OUTLINED_FUNCTION_35_0();
        v52(v51);

        return 0;
      }

      sub_1DC30F72C(a1);
      v35 = OUTLINED_FUNCTION_4_1();
      v36(v35);
      v37 = OUTLINED_FUNCTION_35_0();
      v38(v37);
    }

    else
    {
      sub_1DC30F72C(a1);
      v33 = *(v22 + 8);
      v34 = OUTLINED_FUNCTION_35_0();
      v33(v34);
      (v33)(v26, v20);
    }
  }

  return 0;
}

uint64_t sub_1DC3A8C04()
{
  v1 = v0;
  sub_1DC517F4C();
  MEMORY[0x1E1296160](0x203A656C746954, 0xE700000000000000);
  MEMORY[0x1E1296160](*v1, v1[1]);
  MEMORY[0x1E1296160](0x7461636F4C207C20, 0xED0000203A6E6F69);
  MEMORY[0x1E1296160](v1[2], v1[3]);
  MEMORY[0x1E1296160](0x7472617453207C20, 0xEE00203A65746144);
  MEMORY[0x1E1296160](v1[4], v1[5]);
  MEMORY[0x1E1296160](0x6144646E45207C20, 0xEC000000203A6574);
  MEMORY[0x1E1296160](v1[6], v1[7]);
  MEMORY[0x1E1296160](0xD000000000000013, 0x80000001DC544060);
  MEMORY[0x1E1296160](v1[8], v1[9]);
  MEMORY[0x1E1296160](0x7365746F4E207C20, 0xEA0000000000203ALL);
  MEMORY[0x1E1296160](v1[10], v1[11]);
  return 0;
}

uint64_t sub_1DC3A8D64()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F978);
  v1 = OUTLINED_FUNCTION_43();
  v3 = __swift_project_value_buffer(v1, v2);
  v4 = swift_allocObject();
  v4[2] = 0xD000000000000013;
  v4[3] = 0x80000001DC544080;
  v4[4] = 0xD000000000000011;
  v4[5] = 0x80000001DC527040;
  *v3 = v4;
  OUTLINED_FUNCTION_7_1();
  v6 = *(v5 + 104);

  return v6(v3);
}

uint64_t sub_1DC3A8E38@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC88570 != -1)
  {
    OUTLINED_FUNCTION_4_22(&qword_1ECC88570);
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F960);
  OUTLINED_FUNCTION_7_1();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1DC3A8F18(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1DC3A8F58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

      return OUTLINED_FUNCTION_9_13(result, a2);
    }

    *(result + 96) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_9_13(result, a2);
    }
  }

  return result;
}

uint64_t sub_1DC3A8FC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D1A0, &qword_1DC5270E0);
  v0 = OUTLINED_FUNCTION_155();
  v1 = *(type metadata accessor for TurnSummary.ExecutionSource(v0) - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DC522F10;
  v5 = v4 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
  __swift_storeEnumTagSinglePayload(v5, 2, 4, v6);
  result = __swift_storeEnumTagSinglePayload(v5 + v2, 3, 4, v6);
  qword_1ECC8F568 = v4;
  return result;
}

uint64_t sub_1DC3A90C0()
{
  sub_1DC2E54B8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DC527080;
  *(v0 + 32) = sub_1DC51497C();
  *(v0 + 40) = sub_1DC514A1C();
  *(v0 + 48) = sub_1DC51496C();
  *(v0 + 56) = sub_1DC51485C();
  *(v0 + 64) = sub_1DC514B3C();
  *(v0 + 72) = sub_1DC514BCC();
  *(v0 + 80) = sub_1DC5148DC();
  *(v0 + 88) = sub_1DC514A6C();
  *(v0 + 96) = sub_1DC5147FC();
  result = sub_1DC5147EC();
  *(v0 + 104) = result;
  qword_1ECC8F990 = v0;
  return result;
}

uint64_t sub_1DC3A918C()
{
  v0 = *sub_1DC2E08AC();

  sub_1DC33E158();

  sub_1DC3ABFF8(v1);
  sub_1DC33E0A0();

  v3 = sub_1DC3A9218(v2);

  result = sub_1DC3ABFF8(v3);
  qword_1ECC8F998 = v0;
  return result;
}