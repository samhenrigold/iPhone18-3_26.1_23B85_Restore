uint64_t sub_1C8385814()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0[3];
  v2 = v0[2];
  v3 = sub_1C840D08C();
  OUTLINED_FUNCTION_69_0(v1, v4, v5, v3);
  v6 = v2;
  v7 = sub_1C840D04C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  sub_1C83BE2BC();
  v0[8] = v10;
  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = sub_1C8385938;

  return MEMORY[0x1EEE6DA40]();
}

uint64_t sub_1C8385938()
{
  OUTLINED_FUNCTION_10_0();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_95();
  *v3 = v2;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1C8385A70, v5, v4);
}

uint64_t sub_1C8385A70()
{
  OUTLINED_FUNCTION_130();

  OUTLINED_FUNCTION_19_2();

  return v0();
}

uint64_t sub_1C8385AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[65] = a4;
  v5 = sub_1C840B4AC();
  v4[66] = v5;
  v4[67] = *(v5 - 8);
  v4[68] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAD0, &qword_1C8418AB0);
  v4[69] = swift_task_alloc();
  v6 = sub_1C840CA1C();
  v4[70] = v6;
  v4[71] = *(v6 - 8);
  v4[72] = swift_task_alloc();
  v7 = sub_1C840CADC();
  v4[73] = v7;
  v4[74] = *(v7 - 8);
  v4[75] = swift_task_alloc();
  v4[76] = swift_task_alloc();
  v4[77] = swift_task_alloc();
  v4[78] = swift_task_alloc();
  v8 = sub_1C840C70C();
  v4[79] = v8;
  v4[80] = *(v8 - 8);
  v4[81] = swift_task_alloc();
  v4[82] = swift_task_alloc();
  v4[83] = swift_task_alloc();
  v4[84] = swift_task_alloc();
  v4[85] = *(type metadata accessor for ParameterSummaryToolTemplate(0) - 8);
  v4[86] = swift_task_alloc();
  sub_1C840D05C();
  v4[87] = sub_1C840D04C();
  v10 = sub_1C840D03C();
  v4[88] = v10;
  v4[89] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1C8385DB8, v10, v9);
}

uint64_t sub_1C8385DB8()
{
  OUTLINED_FUNCTION_120();
  v1 = v0[65];
  v2 = OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_templateDataSource;
  v0[90] = OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_templateDataSource;
  OUTLINED_FUNCTION_60(v1 + v2, (v0 + 59));
  sub_1C832DE28(v1 + v2, (v0 + 14));
  v3 = v0[17];
  v4 = v0[18];
  __swift_project_boxed_opaque_existential_1(v0 + 14, v3);
  OUTLINED_FUNCTION_28_3();
  OUTLINED_FUNCTION_23_4();
  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[91] = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_42_1(v6);

  return v8(v3, v4);
}

uint64_t sub_1C8385EF4()
{
  OUTLINED_FUNCTION_10_0();
  v2 = *v1;
  OUTLINED_FUNCTION_13_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_7();
  *v6 = v5;
  *(v8 + 736) = v7;
  *(v8 + 744) = v0;

  v9 = *(v2 + 712);
  v10 = *(v2 + 704);
  if (v0)
  {
    v11 = sub_1C83873F0;
  }

  else
  {
    v11 = sub_1C8386030;
  }

  return MEMORY[0x1EEE6DFA0](v11, v10, v9);
}

void sub_1C8386030()
{
  v1 = *(v0 + 736);
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  v2 = *(v1 + 16);
  *(v0 + 752) = v2;
  if (v2)
  {
    v3 = *(v0 + 736);
    v4 = *(v0 + 680);
    v5 = (*(v0 + 520) + OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_parameterTemplateMappingHandler);
    *(v0 + 760) = *v5;
    *(v0 + 768) = v5[1];
    LODWORD(v5) = *(v4 + 80);
    *(v0 + 60) = v5;
    *(v0 + 776) = *(v4 + 72);
    *(v0 + 792) = MEMORY[0x1E69E7CC0];
    *(v0 + 784) = 0;
    sub_1C83535E8(v3 + ((v5 + 32) & ~v5), *(v0 + 688));
    OUTLINED_FUNCTION_12_8();
    swift_task_alloc();
    OUTLINED_FUNCTION_87();
    *(v0 + 800) = v6;
    *v6 = v7;
    OUTLINED_FUNCTION_15_7(v6);
    OUTLINED_FUNCTION_83_0();

    __asm { BRAA            X2, X16 }
  }

  v10 = *(v0 + 720);
  v11 = *(v0 + 672);
  v12 = *(v0 + 640);
  v13 = *(v0 + 632);
  v14 = *(v0 + 520);
  v15 = OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_parameters;
  OUTLINED_FUNCTION_33(v14 + OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_parameters, v0 + 496);
  *(v14 + v15) = MEMORY[0x1E69E7CC0];

  sub_1C8384374();
  sub_1C832DE28(v14 + v10, v0 + 152);
  v16 = *(v0 + 184);
  __swift_project_boxed_opaque_existential_1((v0 + 152), *(v0 + 176));
  v17 = OUTLINED_FUNCTION_49_1();
  v18(v17, v16);
  v19 = sub_1C840C6FC();
  v20 = *(v12 + 8);
  v20(v11, v13);
  __swift_destroy_boxed_opaque_existential_1((v0 + 152));
  v21 = *(v19 + 16);

  if (!v21)
  {

LABEL_31:

    sub_1C83875D4(v95);
    OUTLINED_FUNCTION_3_10();

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_83_0();

    __asm { BRAA            X1, X16 }
  }

  v22 = *(v0 + 632);
  v23 = *(v0 + 592);
  sub_1C832DE28(*(v0 + 520) + *(v0 + 720), v0 + 192);
  v24 = *(v0 + 216);
  v25 = *(v0 + 224);
  __swift_project_boxed_opaque_existential_1((v0 + 192), v24);
  OUTLINED_FUNCTION_27_4();
  v26(v24, v25);
  sub_1C840C6FC();
  v27 = OUTLINED_FUNCTION_28_3();
  v20(v27, v22);
  __swift_destroy_boxed_opaque_existential_1((v0 + 192));
  v28 = 0;
  OUTLINED_FUNCTION_36_1();
  v32 = v31 & v30;
  v34 = (63 - v33) >> 6;
  v105 = v23 + 16;
  v104 = *MEMORY[0x1E69DB120];
  v106 = v23;
  v103 = (v23 + 8);
  v108 = v29;
  v109 = v20;
  v107 = v34;
  if ((v31 & v30) != 0)
  {
    goto LABEL_11;
  }

  do
  {
LABEL_7:
    v35 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (v35 >= v34)
    {

      goto LABEL_31;
    }

    v32 = *(v29 + 8 * v35);
    ++v28;
  }

  while (!v32);
  v28 = v35;
  while (1)
  {
LABEL_11:
    v32 &= v32 - 1;
    OUTLINED_FUNCTION_80_0();

    v36 = OUTLINED_FUNCTION_47_1();
    sub_1C83877A0(v36, v37, 0, v38);
    if (!*(v0 + 296))
    {
      sub_1C8375520(v0 + 272, &qword_1EC29E660, &qword_1C8419D90);
      goto LABEL_18;
    }

    v39 = *(v0 + 720);
    v40 = *(v0 + 656);
    v41 = *(v0 + 632);
    v42 = *(v0 + 520);
    sub_1C830D408((v0 + 272), v0 + 232);
    sub_1C832DE28(v42 + v39, v0 + 432);
    v43 = *(v0 + 464);
    __swift_project_boxed_opaque_existential_1((v0 + 432), *(v0 + 456));
    v44 = OUTLINED_FUNCTION_25_5();
    v45(v44, v43);
    sub_1C840C6FC();
    v46 = OUTLINED_FUNCTION_6_9();
    v109(v46);
    if (*(v40 + 16))
    {
      OUTLINED_FUNCTION_47_1();
      sub_1C8317708();
      if (v47)
      {
        break;
      }
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 432));
    __swift_destroy_boxed_opaque_existential_1((v0 + 232));
LABEL_18:
    OUTLINED_FUNCTION_47_1();
    sub_1C8387A84();
    if (!*(v0 + 376))
    {

      sub_1C8375520(v0 + 352, &unk_1EC29EAB0, &qword_1C8417C58);
      goto LABEL_27;
    }

    v68 = *(v0 + 720);
    v69 = *(v0 + 648);
    v70 = *(v0 + 632);
    v71 = *(v0 + 520);
    sub_1C830D408((v0 + 352), v0 + 312);
    sub_1C832DE28(v71 + v68, v0 + 392);
    v72 = *(v0 + 424);
    __swift_project_boxed_opaque_existential_1((v0 + 392), *(v0 + 416));
    v73 = OUTLINED_FUNCTION_6_9();
    v74(v73);
    sub_1C840C6FC();
    v75 = OUTLINED_FUNCTION_28_3();
    (v109)(v75, v70);
    if (*(v69 + 16) && (OUTLINED_FUNCTION_47_1(), sub_1C8317708(), (v76 & 1) != 0))
    {
      v77 = *(v0 + 608);
      v101 = *(v0 + 600);
      v78 = *(v0 + 584);
      v79 = OUTLINED_FUNCTION_78_0();
      v72(v79);

      __swift_destroy_boxed_opaque_existential_1((v0 + 392));
      v80 = OUTLINED_FUNCTION_15();
      v72(v80);
      v52 = (*(v106 + 88))(v101, v78);
      if (v52 != v104)
      {
        goto LABEL_36;
      }

      v102 = *(v0 + 608);
      OUTLINED_FUNCTION_65_0();
      v81 = OUTLINED_FUNCTION_76_0();
      v82(v81, v105);
      v83 = OUTLINED_FUNCTION_58_0();
      v84(v83);
      v85 = *(v0 + 336);
      v86 = *(v0 + 344);
      __swift_project_boxed_opaque_existential_1((v0 + 312), v85);
      v87 = OUTLINED_FUNCTION_40_2();
      v88(v87);
      OUTLINED_FUNCTION_55_0();
      OUTLINED_FUNCTION_35_2();
      __swift_storeEnumTagSinglePayload(v89, v90, v91, v92);
      (*(v86 + 56))(v77, v85, v86);
      sub_1C8375520(v77, &qword_1EC29EAD0, &qword_1C8418AB0);
      OUTLINED_FUNCTION_75_0();
      v93 = OUTLINED_FUNCTION_77_0();
      v94(v93);
      (*v103)(v102, v105);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1((v0 + 392));
    }

    v67 = (v0 + 312);
LABEL_25:
    __swift_destroy_boxed_opaque_existential_1(v67);
LABEL_27:
    v34 = v107;
    v29 = v108;
    if (!v32)
    {
      goto LABEL_7;
    }
  }

  v48 = *(v0 + 624);
  v99 = *(v0 + 616);
  v49 = *(v0 + 584);
  v50 = OUTLINED_FUNCTION_78_0();
  v41(v50);

  __swift_destroy_boxed_opaque_existential_1((v0 + 432));
  v51 = OUTLINED_FUNCTION_15();
  v41(v51);
  v52 = (*(v106 + 88))(v99, v49);
  if (v52 == v104)
  {
    v100 = *(v0 + 624);
    OUTLINED_FUNCTION_65_0();
    v53 = OUTLINED_FUNCTION_76_0();
    v54(v53, v49);
    v55 = OUTLINED_FUNCTION_58_0();
    v56(v55);
    v58 = *(v0 + 256);
    v57 = *(v0 + 264);
    __swift_project_boxed_opaque_existential_1((v0 + 232), v58);
    v59 = OUTLINED_FUNCTION_40_2();
    v60(v59);
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_35_2();
    __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
    (*(v57 + 128))(v48, v58, v57);
    sub_1C8375520(v48, &qword_1EC29EAD0, &qword_1C8418AB0);
    OUTLINED_FUNCTION_75_0();
    v65 = OUTLINED_FUNCTION_77_0();
    v66(v65);
    (*v103)(v100, v49);
    v67 = (v0 + 232);
    goto LABEL_25;
  }

  if (v52 == *MEMORY[0x1E69DB128])
  {
    __break(1u);
LABEL_36:
    if (v52 == *MEMORY[0x1E69DB128])
    {
LABEL_41:
      __break(1u);
      return;
    }
  }

  OUTLINED_FUNCTION_83_0();

  sub_1C840D68C();
}

uint64_t sub_1C83868EC()
{
  OUTLINED_FUNCTION_10_0();
  v1 = *v0;
  v2 = *(*v0 + 688);
  v3 = *v0;
  OUTLINED_FUNCTION_95();
  *v4 = v3;

  sub_1C838B69C(v2);
  v5 = *(v1 + 712);
  v6 = *(v1 + 704);

  return MEMORY[0x1EEE6DFA0](sub_1C8386A24, v6, v5);
}

uint64_t sub_1C8386A24()
{
  sub_1C8375B48(v0 + 16, v0 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 792);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_2:
  v3 = *(v2 + 16);
  if (v3 >= *(v2 + 24) >> 1)
  {
    sub_1C832EE28();
    v2 = v106;
  }

  v4 = *(v0 + 752);
  v5 = *(v0 + 784) + 1;
  sub_1C8375BA4(v0 + 16);
  *(v2 + 16) = v3 + 1;
  OUTLINED_FUNCTION_73_0(v2 + 48 * v3, *(v0 + 89), *(v0 + 80), *(v0 + 64));
  if (v5 != v4)
  {
    v94 = *(v0 + 784) + 1;
    *(v0 + 792) = v2;
    *(v0 + 784) = v94;
    v95 = OUTLINED_FUNCTION_31_3(v94);
    sub_1C83535E8(v95, v96);
    OUTLINED_FUNCTION_12_8();
    swift_task_alloc();
    OUTLINED_FUNCTION_87();
    *(v0 + 800) = v97;
    *v97 = v98;
    OUTLINED_FUNCTION_15_7(v97);
    OUTLINED_FUNCTION_84_0();

    __asm { BRAA            X2, X16 }
  }

  v6 = *(v0 + 720);
  v7 = *(v0 + 640);
  v8 = *(v0 + 520);
  v9 = OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_parameters;
  OUTLINED_FUNCTION_33(v8 + OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_parameters, v0 + 496);
  *(v8 + v9) = v2;

  sub_1C8384374();
  sub_1C832DE28(v8 + v6, v0 + 152);
  __swift_project_boxed_opaque_existential_1((v0 + 152), *(v0 + 176));
  OUTLINED_FUNCTION_27_4();
  v10 = OUTLINED_FUNCTION_102();
  v11(v10);
  v12 = sub_1C840C6FC();
  v13 = *(v7 + 8);
  v14 = OUTLINED_FUNCTION_79();
  v13(v14);
  __swift_destroy_boxed_opaque_existential_1((v0 + 152));
  v15 = *(v12 + 16);

  if (!v15)
  {

LABEL_33:

    sub_1C83875D4(v101);
    OUTLINED_FUNCTION_3_10();

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_84_0();

    __asm { BRAA            X1, X16 }
  }

  v117 = v13;
  v16 = *(v0 + 632);
  v17 = *(v0 + 592);
  v18 = *(v0 + 568);
  sub_1C832DE28(*(v0 + 520) + *(v0 + 720), v0 + 192);
  v19 = *(v0 + 224);
  __swift_project_boxed_opaque_existential_1((v0 + 192), *(v0 + 216));
  v20 = OUTLINED_FUNCTION_28_3();
  v21(v20, v19);
  sub_1C840C6FC();
  v22 = OUTLINED_FUNCTION_49_1();
  v117(v22, v16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 192));
  v23 = 0;
  OUTLINED_FUNCTION_36_1();
  v27 = v26 & v25;
  v29 = (63 - v28) >> 6;
  v109 = *MEMORY[0x1E69DB120];
  v108 = (v18 + 32);
  v107 = (v18 + 8);
  v110 = v17;
  v116 = v24;
  v115 = v29;
  while (1)
  {
    if (v27)
    {
      goto LABEL_12;
    }

    do
    {
      v30 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
LABEL_43:
        OUTLINED_FUNCTION_9_0();
        sub_1C832EE28();
        v2 = v105;
        goto LABEL_2;
      }

      if (v30 >= v29)
      {

        goto LABEL_33;
      }

      v27 = *(v24 + 8 * v30);
      ++v23;
    }

    while (!v27);
    v23 = v30;
LABEL_12:
    v27 &= v27 - 1;
    OUTLINED_FUNCTION_80_0();

    v31 = OUTLINED_FUNCTION_56_0();
    sub_1C83877A0(v31, v32, 0, v33);
    if (*(v0 + 296))
    {
      break;
    }

    sub_1C8375520(v0 + 272, &qword_1EC29E660, &qword_1C8419D90);
LABEL_19:
    OUTLINED_FUNCTION_56_0();
    sub_1C8387A84();
    if (!*(v0 + 376))
    {

      sub_1C8375520(v0 + 352, &unk_1EC29EAB0, &qword_1C8417C58);
      goto LABEL_27;
    }

    v66 = *(v0 + 720);
    v67 = *(v0 + 648);
    v68 = *(v0 + 632);
    v69 = *(v0 + 520);
    sub_1C830D408((v0 + 352), v0 + 312);
    sub_1C832DE28(v69 + v66, v0 + 392);
    v70 = *(v0 + 416);
    v71 = *(v0 + 424);
    __swift_project_boxed_opaque_existential_1((v0 + 392), v70);
    OUTLINED_FUNCTION_27_4();
    v72(v70, v71);
    sub_1C840C6FC();
    v73 = OUTLINED_FUNCTION_28_3();
    v117(v73, v68);
    if (*(v67 + 16) && (v74 = sub_1C8317708(), (v75 & 1) != 0))
    {
      v113 = *(v0 + 600);
      v76 = *(v0 + 584);
      v77 = *(v110 + 16);
      (v77)(*(v0 + 608), *(v67 + 56) + *(v110 + 72) * v74, v76);

      __swift_destroy_boxed_opaque_existential_1((v0 + 392));
      v78 = OUTLINED_FUNCTION_15();
      v77(v78);
      result = (*(v110 + 88))(v113, v76);
      if (result != v109)
      {
        goto LABEL_38;
      }

      v114 = *(v0 + 608);
      v79 = *(v0 + 600);
      v80 = *(v0 + 584);
      v81 = *(v0 + 576);
      v82 = *(v0 + 560);
      v83 = *(v0 + 552);

      v84 = OUTLINED_FUNCTION_76_0();
      v85(v84, v80);
      (*v108)(v81, v79, v82);
      v86 = *(v0 + 336);
      v87 = *(v0 + 344);
      __swift_project_boxed_opaque_existential_1((v0 + 312), v86);
      v88 = OUTLINED_FUNCTION_79();
      v89(v88);
      OUTLINED_FUNCTION_27();
      __swift_storeEnumTagSinglePayload(v90, v91, v92, v82);
      (*(v87 + 56))(v83, v86, v87);
      sub_1C8375520(v83, &qword_1EC29EAD0, &qword_1C8418AB0);
      (*v107)(v81, v82);
      OUTLINED_FUNCTION_75_0();
      v93(v114, v80);
      v65 = (v0 + 312);
LABEL_24:
      __swift_destroy_boxed_opaque_existential_1(v65);
LABEL_27:
      v24 = v116;
      v29 = v115;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1((v0 + 392));
      __swift_destroy_boxed_opaque_existential_1((v0 + 312));
      v24 = v116;
      v29 = v115;
    }
  }

  v34 = *(v0 + 720);
  v35 = *(v0 + 656);
  v36 = *(v0 + 632);
  v37 = *(v0 + 520);
  sub_1C830D408((v0 + 272), v0 + 232);
  sub_1C832DE28(v37 + v34, v0 + 432);
  v39 = *(v0 + 456);
  v38 = *(v0 + 464);
  __swift_project_boxed_opaque_existential_1((v0 + 432), v39);
  (*(v38 + 16))(v39, v38);
  v40 = v35;
  sub_1C840C6FC();
  v41 = OUTLINED_FUNCTION_49_1();
  v117(v41, v36);
  if (!*(v35 + 16) || (OUTLINED_FUNCTION_56_0(), v42 = sub_1C8317708(), (v43 & 1) == 0))
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 432));
    __swift_destroy_boxed_opaque_existential_1((v0 + 232));
    goto LABEL_19;
  }

  v44 = *(v0 + 624);
  v111 = *(v0 + 616);
  v45 = *(v0 + 584);
  v46 = *(v110 + 16);
  v46(v44, *(v40 + 56) + *(v110 + 72) * v42, v45);

  __swift_destroy_boxed_opaque_existential_1((v0 + 432));
  v46(v111, v44, v45);
  v47 = OUTLINED_FUNCTION_15();
  result = v48(v47);
  if (result == v109)
  {
    v112 = *(v0 + 624);
    v50 = *(v0 + 616);
    v51 = *(v0 + 584);
    v52 = *(v0 + 576);
    v53 = *(v0 + 560);
    v54 = *(v0 + 552);

    v55 = OUTLINED_FUNCTION_76_0();
    v56(v55, v51);
    (*v108)(v52, v50, v53);
    __swift_project_boxed_opaque_existential_1((v0 + 232), *(v0 + 256));
    v57 = OUTLINED_FUNCTION_47_1();
    v58(v57);
    OUTLINED_FUNCTION_27();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v53);
    v62 = OUTLINED_FUNCTION_102();
    v63(v62);
    sub_1C8375520(v54, &qword_1EC29EAD0, &qword_1C8418AB0);
    (*v107)(v52, v53);
    OUTLINED_FUNCTION_75_0();
    v64(v112, v51);
    v65 = (v0 + 232);
    goto LABEL_24;
  }

  if (result != *MEMORY[0x1E69DB128])
  {
    goto LABEL_39;
  }

  __break(1u);
LABEL_38:
  if (result == *MEMORY[0x1E69DB128])
  {
    __break(1u);
  }

  else
  {
LABEL_39:
    OUTLINED_FUNCTION_84_0();

    return sub_1C840D68C();
  }

  return result;
}

uint64_t sub_1C83873F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_48_1();
  v15 = v14[93];

  __swift_destroy_boxed_opaque_existential_1(v14 + 14);
  sub_1C840B36C();
  v16 = v15;
  v17 = sub_1C840B48C();
  v18 = sub_1C840D16C();

  v19 = os_log_type_enabled(v17, v18);
  v20 = v14[93];
  if (v19)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    v23 = v20;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 4) = v24;
    *v22 = v24;
    _os_log_impl(&dword_1C830A000, v17, v18, "Could not get tool invocation with error %@", v21, 0xCu);
    sub_1C8375520(v22, &qword_1EC29E910, &qword_1C8417950);
    OUTLINED_FUNCTION_134();
    OUTLINED_FUNCTION_134();
  }

  else
  {
  }

  (*(v14[67] + 8))(v14[68], v14[66]);
  OUTLINED_FUNCTION_3_10();
  v36 = v26;
  v37 = v25;

  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_30();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36, v37, a12, a13, a14);
}

void sub_1C83875D4(uint64_t a1)
{
  sub_1C8387BEC();
  v2 = v1;
  v3 = 0;
  v4 = *(v1 + 16);
  for (i = v1 + 32; ; i += 40)
  {
    if (v4 == v3)
    {
      v16 = 0;
      memset(v15, 0, sizeof(v15));
      goto LABEL_8;
    }

    if (v3 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    sub_1C832DE28(i, &v12);
    v6 = v13;
    v7 = v14;
    __swift_project_boxed_opaque_existential_1(&v12, v13);
    (*(v7 + 40))(v15, v6, v7);
    v8 = *(*&v15[0] + 16);

    if (!v8)
    {
      break;
    }

    ++v3;
    __swift_destroy_boxed_opaque_existential_1(&v12);
  }

  sub_1C830D408(&v12, v15);
LABEL_8:
  sub_1C8344AB4(v15, &v12, &qword_1EC29E660, &qword_1C8419D90);
  if (v13)
  {

    sub_1C830D408(&v12, &v10);
  }

  else
  {
    sub_1C8388E60(v2, &v10);

    if (v13)
    {
      sub_1C8375520(&v12, &qword_1EC29E660, &qword_1C8419D90);
    }
  }

  if (v11)
  {
    sub_1C830D408(&v10, &v12);
    ParameterSummaryViewModel.beginTypingInParameter(_:)(&v12);
    __swift_destroy_boxed_opaque_existential_1(&v12);
    v9 = v15;
  }

  else
  {
    sub_1C8375520(v15, &qword_1EC29E660, &qword_1C8419D90);
    v9 = &v10;
  }

  sub_1C8375520(v9, &qword_1EC29E660, &qword_1C8419D90);
}

void sub_1C83877A0(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v9 = OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_parameters;
  OUTLINED_FUNCTION_60(v4 + OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_parameters, v48);
  v10 = *(v4 + v9);
  v11 = *(v10 + 16);
  if (v11)
  {
    v32 = a4;
    v12 = v10 + 32;

    v13 = 0;
    v35 = v10 + 32;
    v36 = v11;
    v34 = a3;
    v33 = v10;
    while (v13 < *(v10 + 16))
    {
      sub_1C8375B48(v12 + 48 * v13, v46);
      if (v47)
      {
        if (v47 == 1)
        {
          sub_1C830D408(v46, v44);
          __swift_project_boxed_opaque_existential_1(v44, v45);
          v14 = OUTLINED_FUNCTION_0_11();
          v16 = v15(v14);
          if (v16 == a1 && v17 == a2)
          {

LABEL_33:

            sub_1C832DE28(v44, v32);
LABEL_35:
            __swift_destroy_boxed_opaque_existential_1(v44);
            return;
          }

          v19 = OUTLINED_FUNCTION_85_0(v16);

          if (v19)
          {
            goto LABEL_33;
          }

          __swift_destroy_boxed_opaque_existential_1(v44);
          v12 = v35;
          v11 = v36;
        }

        else
        {
          sub_1C830D408(v46, v44);
          if (a3)
          {
            __swift_project_boxed_opaque_existential_1(v44, v45);
            v20 = OUTLINED_FUNCTION_0_11();
            v22 = v21(v20);
            v23 = 0;
            v24 = *(v22 + 16);
            for (i = v22 + 32; ; i += 40)
            {
              if (v24 == v23)
              {

                v43 = 0;
                v41 = 0u;
                v42 = 0u;
                goto LABEL_26;
              }

              if (v23 >= *(v22 + 16))
              {
                __break(1u);
                goto LABEL_38;
              }

              sub_1C832DE28(i, &v39);
              __swift_project_boxed_opaque_existential_1(&v39, v40);
              v26 = OUTLINED_FUNCTION_1_14();
              v28 = v27(v26);
              if (v28 == a1 && v29 == a2)
              {
                break;
              }

              v31 = OUTLINED_FUNCTION_85_0(v28);

              if (v31)
              {
                goto LABEL_25;
              }

              __swift_destroy_boxed_opaque_existential_1(&v39);
              ++v23;
            }

LABEL_25:

            sub_1C830D408(&v39, &v41);
LABEL_26:
            a3 = v34;
            v10 = v33;
            v12 = v35;
            v11 = v36;
            v37[0] = v41;
            v37[1] = v42;
            v38 = v43;
            if (!*(&v42 + 1))
            {
              sub_1C8375520(v37, &qword_1EC29E660, &qword_1C8419D90);
              goto LABEL_28;
            }

            sub_1C830D408(v37, &v39);
            sub_1C830D408(&v39, v32);
            goto LABEL_35;
          }

LABEL_28:
          __swift_destroy_boxed_opaque_existential_1(v44);
        }
      }

      else
      {
        sub_1C8375BA4(v46);
      }

      if (++v13 == v11)
      {

        a4 = v32;
        goto LABEL_31;
      }
    }

LABEL_38:
    __break(1u);
  }

  else
  {
LABEL_31:
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }
}

uint64_t sub_1C8387A84()
{
  OUTLINED_FUNCTION_60_0();
  v4 = v3;
  *(v3 + 32) = 0;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  v5 = OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_parameters;
  result = OUTLINED_FUNCTION_60(v1 + OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_parameters, v19);
  v7 = *(v1 + v5);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + 32;

    while (1)
    {
      sub_1C8375B48(v9, v17);
      if (v18)
      {
        if (v18 != 1)
        {
          break;
        }
      }

      sub_1C8375BA4(v17);
LABEL_15:
      v9 += 48;
      if (!--v8)
      {
      }
    }

    sub_1C830D408(v17, v16);
    v10 = v16[4];
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    v11 = OUTLINED_FUNCTION_25_5();
    if (v12(v11, v10) == v2 && v13 == v0)
    {
    }

    else
    {
      v15 = sub_1C840D69C();

      if ((v15 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    sub_1C8375520(v4, &unk_1EC29EAB0, &qword_1C8417C58);
    sub_1C832DE28(v16, v4);
LABEL_14:
    __swift_destroy_boxed_opaque_existential_1(v16);
    goto LABEL_15;
  }

  return result;
}

void sub_1C8387BEC()
{
  v1 = OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_parameters;
  OUTLINED_FUNCTION_60(v0 + OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_parameters, v20);
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;

    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1C8375B48(v4, v19);
      sub_1C8375B48(v19, v17);
      if (v18)
      {
        if (v18 == 1)
        {
          sub_1C830D408(v17, &v15);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAC0, &unk_1C8419240);
          v6 = swift_allocObject();
          *(v6 + 16) = xmmword_1C8414660;
          sub_1C830D408(&v15, v6 + 32);
          sub_1C8375BA4(v19);
        }

        else
        {
          sub_1C830D408(v17, &v15);
          __swift_project_boxed_opaque_existential_1(&v15, v16);
          v7 = OUTLINED_FUNCTION_0_11();
          v6 = v8(v7);
          sub_1C8375BA4(v19);
          __swift_destroy_boxed_opaque_existential_1(&v15);
        }
      }

      else
      {
        sub_1C8375BA4(v17);
        sub_1C8375BA4(v19);
        v6 = MEMORY[0x1E69E7CC0];
      }

      v9 = *(v6 + 16);
      v10 = *(v5 + 16);
      if (__OFADD__(v10, v9))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v10 + v9 > *(v5 + 24) >> 1)
      {
        sub_1C832ED10();
        v5 = v11;
      }

      if (*(v6 + 16))
      {
        if ((*(v5 + 24) >> 1) - *(v5 + 16) < v9)
        {
          goto LABEL_23;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D2D8, &qword_1C8415200);
        swift_arrayInitWithCopy();

        if (v9)
        {
          v12 = *(v5 + 16);
          v13 = __OFADD__(v12, v9);
          v14 = v12 + v9;
          if (v13)
          {
            goto LABEL_24;
          }

          *(v5 + 16) = v14;
        }
      }

      else
      {

        if (v9)
        {
          goto LABEL_22;
        }
      }

      v4 += 48;
      if (!--v3)
      {

        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void sub_1C8387E30(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1C8387BEC();
  v7 = v6;
  v8 = 0;
  v9 = *(v6 + 16);
  for (i = v6 + 72; ; i += 40)
  {
    if (v9 == v8)
    {

      OUTLINED_FUNCTION_45_1();
      return;
    }

    if (v8 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_19;
    }

    sub_1C832DE28(i - 40, v16);
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    v11 = OUTLINED_FUNCTION_1_14();
    if (v12(v11) == a1 && v13 == a2)
    {
      break;
    }

    v15 = sub_1C840D69C();

    __swift_destroy_boxed_opaque_existential_1(v16);
    if (v15)
    {
      goto LABEL_12;
    }

    ++v8;
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
LABEL_12:
  if (v8 + 1 >= v9)
  {
    sub_1C83BB318(v7, a3);
    goto LABEL_16;
  }

  if (v8 + 1 < *(v7 + 16))
  {
    sub_1C832DE28(i, a3);
LABEL_16:

    return;
  }

LABEL_19:
  __break(1u);
}

double sub_1C8387F80()
{
  v1 = v0 + OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return OUTLINED_FUNCTION_45_1();
  }

  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 64))(ObjectType, v2);
  swift_unknownObjectRelease();
  if (!v4)
  {
    return OUTLINED_FUNCTION_45_1();
  }

  v5 = [v4 key];
  sub_1C840CDDC();

  v6 = OUTLINED_FUNCTION_30_1();
  sub_1C83877A0(v6, v7, 1, v8);

  return result;
}

double sub_1C8388070@<D0>(uint64_t a1@<X8>)
{
  sub_1C8387F80();
  if (v4)
  {
    sub_1C830D408(&v3, v5);
    sub_1C83885F0(v5, a1);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    sub_1C8375520(&v3, &qword_1EC29E660, &qword_1C8419D90);
    return OUTLINED_FUNCTION_45_1();
  }

  return result;
}

void sub_1C83880E8()
{
  OUTLINED_FUNCTION_26_4();
  v2 = v1;
  v51 = v3;
  v59 = sub_1C840CB6C();
  OUTLINED_FUNCTION_5();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1C840C6CC();
  OUTLINED_FUNCTION_5();
  v56 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_77();
  v55 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - v12;
  v57 = sub_1C840C70C();
  OUTLINED_FUNCTION_5();
  v54 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_77();
  v53 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v50 - v18;
  sub_1C83885F0(v2, v64);
  if (v65)
  {
    v20 = v66;
    __swift_project_boxed_opaque_existential_1(v64, v65);
    v21 = OUTLINED_FUNCTION_25_5();
    v23 = v22(v21, v20);
    v25 = v24;
    __swift_destroy_boxed_opaque_existential_1(v64);
  }

  else
  {
    sub_1C8375520(v64, &unk_1EC29EAB0, &qword_1C8417C58);
    v27 = v2[3];
    v26 = v2[4];
    v28 = OUTLINED_FUNCTION_77_0();
    __swift_project_boxed_opaque_existential_1(v28, v29);
    OUTLINED_FUNCTION_16_6();
    v23 = v30(v27, v26);
    v25 = v31;
  }

  v32 = OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_templateDataSource;
  OUTLINED_FUNCTION_60(v0 + OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_templateDataSource, &v63);
  sub_1C832DE28(v0 + v32, v64);
  __swift_project_boxed_opaque_existential_1(v64, v65);
  v33 = OUTLINED_FUNCTION_102();
  v34(v33);
  __swift_destroy_boxed_opaque_existential_1(v64);
  sub_1C840C6DC();
  v52 = *(v54 + 8);
  v52(v19, v57);
  v54 = sub_1C840C69C();
  v56 = *(v56 + 8);
  (v56)(v13, v58);
  sub_1C832DE28(v0 + v32, v62);
  v35 = v62[4];
  __swift_project_boxed_opaque_existential_1(v62, v62[3]);
  v36 = v53;
  v37 = OUTLINED_FUNCTION_49_1();
  v38(v37, v35);
  __swift_destroy_boxed_opaque_existential_1(v62);
  v39 = v55;
  sub_1C840C6DC();
  v52(v36, v57);
  v40 = sub_1C840C6AC();
  (v56)(v39, v58);
  v61 = v54;
  sub_1C838B50C(v40);
  v41 = 0;
  v42 = v61;
  v43 = *(v61 + 16);
  v44 = v59;
  while (1)
  {
    if (v43 == v41)
    {

      v48 = 1;
      v49 = v51;
      goto LABEL_17;
    }

    if (v41 >= *(v42 + 16))
    {
      break;
    }

    (*(v5 + 16))(v60, v42 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v41, v44);
    if (sub_1C840CB3C() == v23 && v45 == v25)
    {

      goto LABEL_16;
    }

    v47 = sub_1C840D69C();

    if (v47)
    {

      v44 = v59;
LABEL_16:
      v49 = v51;
      (*(v5 + 32))(v51, v60, v44);
      v48 = 0;
LABEL_17:
      __swift_storeEnumTagSinglePayload(v49, v48, 1, v44);
      OUTLINED_FUNCTION_27_0();
      return;
    }

    v44 = v59;
    (*(v5 + 8))(v60, v59);
    ++v41;
  }

  __break(1u);
}

void sub_1C83885F0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_parameters;
  OUTLINED_FUNCTION_60(v2 + OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_parameters, v32);
  v6 = *(v2 + v5);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 32;

    v9 = 0;
    v26 = v7;
    v27 = a2;
    while (1)
    {
      if (v9 >= *(v6 + 16))
      {
        __break(1u);
        return;
      }

      sub_1C8375B48(v8 + 48 * v9, v30);
      if (v31)
      {
        if (v31 != 1)
        {
          break;
        }
      }

      sub_1C8375BA4(v30);
LABEL_7:
      if (++v9 == v7)
      {

        goto LABEL_20;
      }
    }

    sub_1C830D408(v30, v29);
    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    OUTLINED_FUNCTION_16_6();
    v10 = OUTLINED_FUNCTION_30_1();
    v28 = v11(v10);
    v12 = v28 + 32;
    v13 = *(v28 + 16) + 1;
    while (1)
    {
      if (!--v13)
      {

        __swift_destroy_boxed_opaque_existential_1(v29);
        v7 = v26;
        a2 = v27;
        v8 = v6 + 32;
        goto LABEL_7;
      }

      v14 = OUTLINED_FUNCTION_102();
      __swift_project_boxed_opaque_existential_1(v14, v15);
      v16 = OUTLINED_FUNCTION_1_14();
      v18 = v17(v16);
      v20 = v19;
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v21 = OUTLINED_FUNCTION_0_11();
      if (v18 == v22(v21) && v20 == v23)
      {
        break;
      }

      v12 += 40;
      v25 = sub_1C840D69C();

      if (v25)
      {

        goto LABEL_19;
      }
    }

LABEL_19:

    sub_1C832DE28(v29, v27);
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
LABEL_20:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

id sub_1C8388810(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v28 = *(v3 + 40);
  v30 = v3;
  v31 = v2;
  v28(&v32, v2, v3);
  v29 = sub_1C83C58D4();

  v4 = OUTLINED_FUNCTION_102();
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v6 = OUTLINED_FUNCTION_6_9();
  v7(v6);
  if (v32)
  {
    v8 = sub_1C83C58D4();
  }

  else
  {
    v8 = 0;
  }

  sub_1C838BF44();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = OUTLINED_FUNCTION_25_5();
  v26 = v11(v10, v9);
  v13 = v12;
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = (*(v15 + 32))(v14, v15);
  v18 = v17;
  v19 = a1[4];
  v20 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = *(v19 + 16);
  v27 = v8;
  v22 = OUTLINED_FUNCTION_77_0();
  v21(v22);
  sub_1C840CD9C();
  OUTLINED_FUNCTION_8_7();

  v23 = sub_1C8388A50(v26, v13, v16, v18, v8, v20);
  v28(&v32, v31, v30);
  v24 = v33;

  [v23 setInvalid_];
  [v23 populateWithAttributedString_];

  return v23;
}

id sub_1C8388A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = sub_1C840CD9C();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_1C840CD9C();

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() slotWithLocalizedName:v9 localizedPlaceholder:v10 localizedAttributedPlaceholder:a5 key:a6];

  return v11;
}

id ParameterSummaryViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ParameterSummaryViewModel.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ParameterSummaryViewModel();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t ParameterSummaryViewModel.beginTypingInParameter(_:)(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    OUTLINED_FUNCTION_16_6();
    v7 = OUTLINED_FUNCTION_102();
    v8(v7);
    v9 = sub_1C840CD9C();

    v10 = [objc_allocWithZone(WFSlotIdentifier) initWithKey_];

    (*(v5 + 32))(v10, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ParameterSummaryViewModel.beginTypingInParameter(_:at:)(void *a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v9 = OUTLINED_FUNCTION_1_14();
    v10(v9);
    v11 = sub_1C840CD9C();

    v12 = [objc_allocWithZone(WFSlotIdentifier) initWithKey_];

    (*(v7 + 40))(v12, a2, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_1C8388E60@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1C832DE28(a1 + 40 * v2 - 8, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

Swift::Void __swiftcall ParameterSummaryViewModel.beginTypingInPreviousParameter()()
{
  OUTLINED_FUNCTION_26_4();
  sub_1C8387F80();
  if (!v29)
  {
    sub_1C8375520(&v28, &qword_1EC29E660, &qword_1C8419D90);
LABEL_31:
    OUTLINED_FUNCTION_27_0();
    return;
  }

  sub_1C830D408(&v28, v31);
  v1 = OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_parameters;
  OUTLINED_FUNCTION_60(v0 + OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_parameters, &v30);
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (v3)
  {
    v21[5] = v0;
    v4 = v2 + 32;
    v21[4] = v2;

    v5 = MEMORY[0x1E69E7CC0];
    v22 = xmmword_1C8414660;
    while (1)
    {
      sub_1C8375B48(v4, &v28);
      sub_1C8375B48(&v28, v26);
      if (v27)
      {
        if (v27 == 1)
        {
          sub_1C830D408(v26, &v23);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAC0, &unk_1C8419240);
          v6 = swift_allocObject();
          *(v6 + 16) = v22;
          sub_1C830D408(&v23, v6 + 32);
          sub_1C8375BA4(&v28);
        }

        else
        {
          sub_1C830D408(v26, &v23);
          v7 = v24;
          v8 = v25;
          __swift_project_boxed_opaque_existential_1(&v23, v24);
          OUTLINED_FUNCTION_16_6();
          v6 = v9(v7, v8);
          sub_1C8375BA4(&v28);
          __swift_destroy_boxed_opaque_existential_1(&v23);
        }
      }

      else
      {
        sub_1C8375BA4(v26);
        sub_1C8375BA4(&v28);
        v6 = MEMORY[0x1E69E7CC0];
      }

      v10 = *(v6 + 16);
      v11 = *(v5 + 16);
      if (__OFADD__(v11, v10))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v11 + v10 > *(v5 + 24) >> 1)
      {
        sub_1C832ED10();
        v5 = v12;
      }

      if (*(v6 + 16))
      {
        if ((*(v5 + 24) >> 1) - *(v5 + 16) < v10)
        {
          goto LABEL_34;
        }

        v13 = OUTLINED_FUNCTION_102();
        __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
        swift_arrayInitWithCopy();

        if (v10)
        {
          v15 = *(v5 + 16);
          v16 = __OFADD__(v15, v10);
          v17 = v15 + v10;
          if (v16)
          {
            goto LABEL_35;
          }

          *(v5 + 16) = v17;
        }
      }

      else
      {

        if (v10)
        {
          goto LABEL_33;
        }
      }

      v4 += 48;
      if (!--v3)
      {

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_23:
  MEMORY[0x1EEE9AC00](v2);
  v21[2] = v31;
  v18 = sub_1C8382B14(sub_1C838B60C, v21, v5);
  if ((v19 & 1) != 0 || !v18)
  {

    goto LABEL_30;
  }

  v20 = v18 - 1;
  if (__OFSUB__(v18, 1))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v20 < *(v5 + 16))
  {
    sub_1C832DE28(v5 + 40 * v20 + 32, &v28);

    ParameterSummaryViewModel.beginTypingInParameter(_:)(&v28);
    __swift_destroy_boxed_opaque_existential_1(&v28);
LABEL_30:
    __swift_destroy_boxed_opaque_existential_1(v31);
    goto LABEL_31;
  }

LABEL_38:
  __break(1u);
}

uint64_t sub_1C83891F8(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v7 = v6;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  if (v5 == (*(v9 + 16))(v8, v9) && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1C840D69C();
  }

  return v12 & 1;
}

Swift::Void __swiftcall ParameterSummaryViewModel.resignFirstResponder()()
{
  v1 = v0 + OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v2 + 48))(ObjectType, v2);

    swift_unknownObjectRelease();
  }
}

uint64_t ParameterSummaryViewModel.parameterDidChange(_:)()
{
  OUTLINED_FUNCTION_130();
  v1[78] = v0;
  v1[77] = v2;
  v3 = sub_1C840CB6C();
  v1[79] = v3;
  OUTLINED_FUNCTION_13(v3);
  v1[80] = v4;
  v1[81] = OUTLINED_FUNCTION_89();
  v5 = type metadata accessor for ParameterSummaryToolTemplate(0);
  v1[82] = v5;
  OUTLINED_FUNCTION_13(v5);
  v1[83] = v6;
  v1[84] = OUTLINED_FUNCTION_90();
  v1[85] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAC8, &unk_1C8419DE8);
  OUTLINED_FUNCTION_59(v7);
  v1[86] = OUTLINED_FUNCTION_89();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAD0, &qword_1C8418AB0);
  OUTLINED_FUNCTION_59(v8);
  v1[87] = OUTLINED_FUNCTION_89();
  v9 = sub_1C840CA1C();
  v1[88] = v9;
  OUTLINED_FUNCTION_13(v9);
  v1[89] = v10;
  v1[90] = OUTLINED_FUNCTION_89();
  v11 = sub_1C840D05C();
  v1[91] = OUTLINED_FUNCTION_90_0(v11);
  OUTLINED_FUNCTION_8_7();
  v13 = sub_1C840D03C();
  v1[92] = v13;
  v1[93] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1C8389534, v13, v12);
}

uint64_t sub_1C8389534()
{
  OUTLINED_FUNCTION_120();
  v1 = v0[77];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  OUTLINED_FUNCTION_28_3();
  OUTLINED_FUNCTION_23_4();
  v9 = (v4 + *v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_87();
  v0[94] = v5;
  *v5 = v6;
  v5[1] = sub_1C8389650;
  v7 = v0[87];

  return v9(v7, v2, v3);
}

uint64_t sub_1C8389650()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_16_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_95();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v3 + 744);
    v8 = *(v3 + 736);
    v9 = sub_1C838A690;
  }

  else
  {
    v7 = *(v3 + 744);
    v8 = *(v3 + 736);
    v9 = sub_1C8389768;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1C8389768()
{
  v1 = v0[88];
  v2 = v0[87];
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v3 = v0[86];
    v4 = v0[78];
    sub_1C8375520(v2, &qword_1EC29EAD0, &qword_1C8418AB0);
    v5 = OUTLINED_FUNCTION_102();
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v7 = OUTLINED_FUNCTION_1_14();
    v8(v7);
    v10 = v9;
    v11 = sub_1C840CADC();
    OUTLINED_FUNCTION_69_0(v3, v12, v13, v11);
    v14 = v4 + OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_templateDataSource;
    OUTLINED_FUNCTION_64_0(v4 + OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_templateDataSource, (v0 + 59));
    __swift_mutable_project_boxed_opaque_existential_1(v14, *(v14 + 24));
    v15 = OUTLINED_FUNCTION_41_1();
    v17 = v16(v15);
    v18 = sub_1C840C6EC();
    v19 = OUTLINED_FUNCTION_30_1();
    sub_1C83823A8(v19, v20, v10);
    v21 = OUTLINED_FUNCTION_55_0();
    v18(v21);
    v17(v0 + 43, 0);
    swift_endAccess();
  }

  else
  {
    v22 = v0[90];
    v23 = v0[89];
    v24 = v0[86];
    v48 = v0[78];
    (*(v23 + 32))(v22, v2, v1);
    v25 = OUTLINED_FUNCTION_77_0();
    __swift_project_boxed_opaque_existential_1(v25, v26);
    v27 = OUTLINED_FUNCTION_0_11();
    v49 = v28(v27);
    v30 = v29;
    (*(v23 + 16))(v24, v22, v1);
    v31 = *MEMORY[0x1E69DB120];
    v32 = sub_1C840CADC();
    OUTLINED_FUNCTION_6();
    (*(v33 + 104))(v24, v31, v32);
    OUTLINED_FUNCTION_27();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v32);
    v37 = v48 + OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_templateDataSource;
    OUTLINED_FUNCTION_64_0(v48 + OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_templateDataSource, (v0 + 74));
    v39 = *(v37 + 24);
    v38 = *(v37 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v37, v39);
    v40 = (*(v38 + 32))(v0 + 51, v39, v38);
    v41 = sub_1C840C6EC();
    sub_1C83823A8(v24, v49, v30);
    v41(v0 + 55, 0);
    v40(v0 + 51, 0);
    swift_endAccess();
    (*(v23 + 8))(v22, v1);
  }

  v42 = v0[78];
  v43 = OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_templateDataSource;
  OUTLINED_FUNCTION_60(v42 + OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_templateDataSource, (v0 + 62));
  sub_1C832DE28(v42 + v43, (v0 + 38));
  __swift_project_boxed_opaque_existential_1(v0 + 38, v0[41]);
  OUTLINED_FUNCTION_28_3();
  OUTLINED_FUNCTION_23_4();
  v50 = (v44 + *v44);
  v45 = swift_task_alloc();
  v0[95] = v45;
  *v45 = v0;
  v46 = OUTLINED_FUNCTION_18_4(v45);

  return v50(v46);
}

uint64_t sub_1C8389B4C()
{
  OUTLINED_FUNCTION_10_0();
  v2 = *v1;
  OUTLINED_FUNCTION_13_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_7();
  *v6 = v5;
  *(v8 + 768) = v7;
  *(v8 + 776) = v0;

  v9 = *(v2 + 744);
  v10 = *(v2 + 736);
  if (v0)
  {
    v11 = sub_1C838A8A8;
  }

  else
  {
    v11 = sub_1C8389C88;
  }

  return MEMORY[0x1EEE6DFA0](v11, v10, v9);
}

uint64_t sub_1C8389C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_48_1();
  v15 = *(v14 + 768);
  __swift_destroy_boxed_opaque_existential_1((v14 + 304));
  v16 = *(v15 + 16);
  *(v14 + 784) = v16;
  v17 = &qword_1EC29E000;
  if (v16)
  {
    v18 = *(v14 + 664);
    v19 = *(v14 + 624);
    v20 = OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_parameters;
    *(v14 + 792) = OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_parameters;
    *(v14 + 800) = OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_parameterTemplateMappingHandler;
    *(v14 + 60) = *(v18 + 80);
    OUTLINED_FUNCTION_60(v19 + v20, v14 + 520);
    v21 = 0;
    *(v14 + 808) = *(v18 + 72);
    v22 = MEMORY[0x1E69E7CC0];
    v23 = *(v14 + 776);
    while (1)
    {
      *(v14 + 824) = v22;
      OUTLINED_FUNCTION_74_0(v21);
      v24 = *(v14 + 680);
      v25 = *(v14 + 672);
      v27 = OUTLINED_FUNCTION_31_3(v26);
      sub_1C83535E8(v27, v24);
      sub_1C83535E8(v24, v25);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = *(v14 + 792);
        v29 = *(v14 + 648);
        v30 = *(v14 + 624);
        (*(*(v14 + 640) + 32))(v29, *(v14 + 672), *(v14 + 632));
        v31 = *(v30 + v28);
        *(swift_task_alloc() + 16) = v29;

        v32 = OUTLINED_FUNCTION_21_4();
        sub_1C838275C(v32, v31, v33);
        *(v14 + 832) = v23;

        sub_1C8344AB4(v14 + 16, v14 + 112, &qword_1EC29EAD8, &unk_1C8419DF8);
        if (*(v14 + 152) == 255)
        {
          sub_1C8375520(v14 + 112, &qword_1EC29EAD8, &unk_1C8419DF8);
          OUTLINED_FUNCTION_11_8();
          v77 = v66;
          swift_task_alloc();
          OUTLINED_FUNCTION_87();
          *(v14 + 840) = v67;
          *v67 = v68;
          OUTLINED_FUNCTION_17_7(v67);
          OUTLINED_FUNCTION_30();

          return v71(v69, v70, v71, v72, v73, v74, v75, v76, a9, v77, a11, a12, a13, a14);
        }

        v34 = OUTLINED_FUNCTION_53_0();
        sub_1C8375B48(v34, v14 + 256);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_9_0();
          sub_1C832EE28();
          v22 = v53;
        }

        v36 = *(v22 + 16);
        v35 = *(v22 + 24);
        if (v36 >= v35 >> 1)
        {
          OUTLINED_FUNCTION_71_0(v35);
          sub_1C832EE28();
          v22 = v54;
        }

        v37 = *(v14 + 680);
        sub_1C8375BA4(v14 + 64);
        sub_1C8375520(v14 + 16, &qword_1EC29EAD8, &unk_1C8419DF8);
        sub_1C838B69C(v37);
        *(v22 + 16) = v36 + 1;
        OUTLINED_FUNCTION_73_0(v22 + 48 * v36, *(v14 + 281), *(v14 + 272), *(v14 + 256));
        v38 = *(v14 + 672);
        v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAE0, &qword_1C8417B90) + 48);
        v40 = OUTLINED_FUNCTION_56_0();
        v41(v40);
        sub_1C840C7BC();
        OUTLINED_FUNCTION_0_10();
        (*(v42 + 8))(v38 + v39);
        v23 = *(v14 + 832);
      }

      else
      {
        v43 = *(v14 + 672);
        v44 = *v43;
        v45 = v43[1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_9_0();
          sub_1C832EE28();
          v22 = v51;
        }

        v47 = *(v22 + 16);
        v46 = *(v22 + 24);
        if (v47 >= v46 >> 1)
        {
          OUTLINED_FUNCTION_71_0(v46);
          sub_1C832EE28();
          v22 = v52;
        }

        sub_1C838B69C(*(v14 + 680));
        *(v22 + 16) = v47 + 1;
        v48 = v22 + 48 * v47;
        *(v48 + 32) = v44;
        *(v48 + 40) = v45;
        v49 = *(v14 + 568);
        *(v48 + 64) = *(v14 + 584);
        *(v48 + 48) = v49;
        *(v48 + 72) = 0;
      }

      OUTLINED_FUNCTION_72_1();
      if (v50)
      {

        v17 = &qword_1EC29E000;
        goto LABEL_19;
      }
    }
  }

  v22 = MEMORY[0x1E69E7CC0];
LABEL_19:

  OUTLINED_FUNCTION_52_0();
  v55 = *(v14 + 624);
  v56 = v17[338];
  OUTLINED_FUNCTION_33(v55 + v56, v14 + 544);
  *(v55 + v56) = v22;

  sub_1C8384374();

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_30();

  return v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C838A0E4()
{
  OUTLINED_FUNCTION_130();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_95();
  *v3 = v2;

  v4 = *(v1 + 744);
  v5 = *(v1 + 736);

  return MEMORY[0x1EEE6DFA0](sub_1C838A1F8, v5, v4);
}

uint64_t sub_1C838A1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_48_1();
  sub_1C8375B48(v14 + 160, v14 + 208);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v14 + 824);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_9_0();
    sub_1C832EE28();
    v16 = v75;
  }

  v17 = *(v16 + 16);
  if (v17 >= *(v16 + 24) >> 1)
  {
    OUTLINED_FUNCTION_35_2();
    sub_1C832EE28();
    v16 = v76;
  }

  v77 = v14 + 256;
  v18 = *(v14 + 680);
  sub_1C8375BA4(v14 + 160);
  sub_1C8375520(v14 + 16, &qword_1EC29EAD8, &unk_1C8419DF8);
  sub_1C838B69C(v18);
  *(v16 + 16) = v17 + 1;
  OUTLINED_FUNCTION_73_0(v16 + 48 * v17, *(v14 + 233), *(v14 + 224), *(v14 + 208));
  while (2)
  {
    v19 = *(v14 + 672);
    v20 = *(v14 + 648);
    v21 = *(v14 + 640);
    v22 = *(v14 + 632);
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAE0, &qword_1C8417B90) + 48);
    (*(v21 + 8))(v20, v22);
    sub_1C840C7BC();
    OUTLINED_FUNCTION_0_10();
    (*(v24 + 8))(v19 + v23);
    v25 = *(v14 + 832);
    while (1)
    {
      OUTLINED_FUNCTION_72_1();
      if (v27)
      {

        OUTLINED_FUNCTION_52_0();
        v53 = *(v14 + 624);
        v54 = OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_parameters;
        OUTLINED_FUNCTION_33(v53 + OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_parameters, v14 + 544);
        *(v53 + v54) = v16;

        sub_1C8384374();

        OUTLINED_FUNCTION_19_2();
        OUTLINED_FUNCTION_30();

        return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, v77, a11, a12, a13, a14);
      }

      *(v14 + 824) = v16;
      OUTLINED_FUNCTION_74_0(v26);
      v28 = *(v14 + 680);
      v29 = *(v14 + 672);
      v31 = OUTLINED_FUNCTION_31_3(v30);
      sub_1C83535E8(v31, v28);
      sub_1C83535E8(v28, v29);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      v32 = *(v14 + 672);
      v33 = *v32;
      v34 = v32[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_9_0();
        sub_1C832EE28();
        v16 = v39;
      }

      v36 = *(v16 + 16);
      v35 = *(v16 + 24);
      if (v36 >= v35 >> 1)
      {
        OUTLINED_FUNCTION_71_0(v35);
        OUTLINED_FUNCTION_35_2();
        sub_1C832EE28();
        v16 = v40;
      }

      sub_1C838B69C(*(v14 + 680));
      *(v16 + 16) = v36 + 1;
      v37 = v16 + 48 * v36;
      *(v37 + 32) = v33;
      *(v37 + 40) = v34;
      v38 = *(v14 + 568);
      *(v37 + 64) = *(v14 + 584);
      *(v37 + 48) = v38;
      *(v37 + 72) = 0;
    }

    v41 = *(v14 + 792);
    v42 = *(v14 + 648);
    v43 = *(v14 + 624);
    (*(*(v14 + 640) + 32))(v42, *(v14 + 672), *(v14 + 632));
    v44 = *(v43 + v41);
    *(swift_task_alloc() + 16) = v42;

    v45 = OUTLINED_FUNCTION_21_4();
    sub_1C838275C(v45, v44, v46);
    *(v14 + 832) = v25;

    sub_1C8344AB4(v14 + 16, v14 + 112, &qword_1EC29EAD8, &unk_1C8419DF8);
    if (*(v14 + 152) != 255)
    {
      v47 = OUTLINED_FUNCTION_53_0();
      sub_1C8375B48(v47, v77);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_9_0();
        sub_1C832EE28();
        v16 = v51;
      }

      v49 = *(v16 + 16);
      v48 = *(v16 + 24);
      if (v49 >= v48 >> 1)
      {
        OUTLINED_FUNCTION_71_0(v48);
        OUTLINED_FUNCTION_35_2();
        sub_1C832EE28();
        v16 = v52;
      }

      v50 = *(v14 + 680);
      sub_1C8375BA4(v14 + 64);
      sub_1C8375520(v14 + 16, &qword_1EC29EAD8, &unk_1C8419DF8);
      sub_1C838B69C(v50);
      *(v16 + 16) = v49 + 1;
      OUTLINED_FUNCTION_73_0(v16 + 48 * v49, *(v14 + 281), *(v14 + 272), *(v14 + 256));
      continue;
    }

    break;
  }

  sub_1C8375520(v14 + 112, &qword_1EC29EAD8, &unk_1C8419DF8);
  OUTLINED_FUNCTION_11_8();
  v78 = v64;
  swift_task_alloc();
  OUTLINED_FUNCTION_87();
  *(v14 + 840) = v65;
  *v65 = v66;
  OUTLINED_FUNCTION_17_7(v65);
  OUTLINED_FUNCTION_30();

  return v69(v67, v68, v69, v70, v71, v72, v73, v74, a9, v78, a11, a12, a13, a14);
}

uint64_t sub_1C838A690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_69_0(v14[87], v15, v16, v14[88]);
  v17 = v14[86];
  v18 = v14[78];
  v19 = v14[77];
  sub_1C8375520(v14[87], &qword_1EC29EAD0, &qword_1C8418AB0);
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  OUTLINED_FUNCTION_16_6();
  v20 = OUTLINED_FUNCTION_102();
  v21(v20);
  v23 = v22;
  v24 = sub_1C840CADC();
  OUTLINED_FUNCTION_69_0(v17, v25, v26, v24);
  v27 = v18 + OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_templateDataSource;
  OUTLINED_FUNCTION_64_0(v18 + OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_templateDataSource, (v14 + 59));
  __swift_mutable_project_boxed_opaque_existential_1(v27, *(v27 + 24));
  v28 = OUTLINED_FUNCTION_41_1();
  v30 = v29(v28);
  v31 = sub_1C840C6EC();
  v32 = OUTLINED_FUNCTION_30_1();
  sub_1C83823A8(v32, v33, v23);
  v34 = OUTLINED_FUNCTION_55_0();
  v31(v34);
  v30(v14 + 43, 0);
  swift_endAccess();
  v35 = v14[78];
  v36 = OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_templateDataSource;
  OUTLINED_FUNCTION_60(v35 + OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_templateDataSource, (v14 + 62));
  sub_1C832DE28(v35 + v36, (v14 + 38));
  __swift_project_boxed_opaque_existential_1(v14 + 38, v14[41]);
  v48 = OUTLINED_FUNCTION_28_3() + 40;
  OUTLINED_FUNCTION_23_4();
  v49 = v37 + *v37;
  v38 = swift_task_alloc();
  v14[95] = v38;
  *v38 = v14;
  OUTLINED_FUNCTION_18_4(v38);
  OUTLINED_FUNCTION_30();

  return v41(v39, v40, v41, v42, v43, v44, v45, v46, a9, v48, v49, a12, a13, a14);
}

uint64_t sub_1C838A8A8()
{
  OUTLINED_FUNCTION_120();

  __swift_destroy_boxed_opaque_existential_1((v0 + 304));

  OUTLINED_FUNCTION_41();

  return v1();
}

uint64_t sub_1C838A964(uint64_t a1)
{
  sub_1C8375B48(a1, v24);
  if (v25)
  {
    if (v25 == 1)
    {
      sub_1C830D408(v24, v21);
      v1 = v22;
      v2 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      v3 = (*(v2 + 16))(v1, v2);
      v5 = v4;
      if (v3 == sub_1C840CB3C() && v5 == v6)
      {
        v8 = 1;
      }

      else
      {
        v8 = sub_1C840D69C();
      }

      goto LABEL_17;
    }

    sub_1C830D408(v24, v21);
    v9 = v22;
    v10 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v11 = (*(v10 + 8))(v9, v10);
    v13 = v12;
    if (v11 == sub_1C840CB3C() && v13 == v14)
    {
    }

    else
    {
      v16 = sub_1C840D69C();

      if ((v16 & 1) == 0)
      {
        v17 = v22;
        v18 = v23;
        __swift_project_boxed_opaque_existential_1(v21, v22);
        v19 = (*(v18 + 16))(v17, v18);
        MEMORY[0x1EEE9AC00](v19);
        v8 = sub_1C83B8FE0();

LABEL_17:
        __swift_destroy_boxed_opaque_existential_1(v21);
        return v8 & 1;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v21);
    v8 = 1;
    return v8 & 1;
  }

  sub_1C8375BA4(v24);
  v8 = 0;
  return v8 & 1;
}

uint64_t sub_1C838ABA0(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  v3 = (*(v2 + 16))(v1, v2);
  v5 = v4;
  if (v3 == sub_1C840CB3C() && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C840D69C();
  }

  return v8 & 1;
}

uint64_t ParameterSummaryViewModel.parameterPlaceholderDidChange(_:)()
{
  OUTLINED_FUNCTION_130();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_1C840D05C();
  v1[7] = OUTLINED_FUNCTION_90_0(v3);
  OUTLINED_FUNCTION_8_7();
  v5 = sub_1C840D03C();

  return MEMORY[0x1EEE6DFA0](sub_1C838ACE4, v5, v4);
}

uint64_t sub_1C838ACE4()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);

  v3 = OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_parameters;
  OUTLINED_FUNCTION_33(v1 + OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_parameters, v0 + 16);
  v4 = *(v1 + v3);
  *(swift_task_alloc() + 16) = v2;

  v5 = sub_1C83B9030();

  if (v5)
  {
    *(v1 + v3) = v4;

    sub_1C8384374();
  }

  else
  {
  }

  OUTLINED_FUNCTION_19_2();

  return v6();
}

uint64_t sub_1C838ADDC(uint64_t a1, void *a2)
{
  sub_1C8375B48(a1, v14);
  if (v15 == 1)
  {
    sub_1C830D408(v14, v16);
    v3 = v17;
    v4 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v5 = (*(v4 + 16))(v3, v4);
    v7 = v6;
    v8 = a2[3];
    v9 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v8);
    if (v5 == (*(v9 + 16))(v8, v9) && v7 == v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_1C840D69C();
    }

    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    sub_1C8375BA4(v14);
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t ParameterSummaryViewModel.groupDidChange(_:parameterToSelect:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_parameters;
  OUTLINED_FUNCTION_33(v2 + OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_parameters, v14);
  v5 = *(v2 + v4);
  v6 = v2 + OBJC_IVAR____TtC18WorkflowUIServices25ParameterSummaryViewModel_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 72);

    v9(ObjectType, v7);
    swift_unknownObjectRelease();
  }

  else
  {
  }

  *(v2 + v4) = v5;

  sub_1C8384374();
  sub_1C8344AB4(a2, &v11, &qword_1EC29E660, &qword_1C8419D90);
  if (!v12)
  {
    return sub_1C8375520(&v11, &qword_1EC29E660, &qword_1C8419D90);
  }

  sub_1C830D408(&v11, v13);
  ParameterSummaryViewModel.beginTypingInParameter(_:)(v13);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_1C838B054()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C837541C;

  return ParameterSummaryViewModel.parameterDidChange(_:)();
}

uint64_t sub_1C838B0E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C838C18C;

  return ParameterSummaryViewModel.parameterPlaceholderDidChange(_:)();
}

uint64_t sub_1C838B1A0()
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_60_0();
  v1 = sub_1C840C70C();
  OUTLINED_FUNCTION_13(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_87();
  *(v0 + 16) = v2;
  *v2 = v3;
  v2[1] = sub_1C838C18C;
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_67_0();

  return sub_1C8384E34(v4, v5);
}

uint64_t type metadata accessor for ParameterSummaryViewModel.ToolTemplateDataSource(uint64_t a1)
{
  result = qword_1EC29EAE8;
  if (!qword_1EC29EAE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C838B314()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_60_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_87();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1C838C18C;
  v3 = OUTLINED_FUNCTION_46_1();

  return v4(v3);
}

uint64_t sub_1C838B3C8()
{
  OUTLINED_FUNCTION_10_0();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_87();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_1C837541C;

  return sub_1C8385AD4(v3, v4, v5, v6);
}

id sub_1C838B474(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a3)
  {
    v8 = sub_1C840CD9C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 initWithKey:a1 parameterKey:v8 arrayIndex:a4];

  return v9;
}

uint64_t sub_1C838B50C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C838BFA8(result);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_1C840CB6C();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1C838B69C(uint64_t a1)
{
  v2 = type metadata accessor for ParameterSummaryToolTemplate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of ParameterSummaryViewModel.startViewModel()()
{
  OUTLINED_FUNCTION_10_0();
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xF0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  OUTLINED_FUNCTION_42_1(v3);

  return v5();
}

uint64_t dispatch thunk of ParameterSummaryViewModel.TemplateDataSource.fetchCurrentParameterSummaryTemplate()()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_23_4();
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  OUTLINED_FUNCTION_42_1(v4);

  return v6(v1, v0);
}

uint64_t sub_1C838BB4C()
{
  OUTLINED_FUNCTION_130();
  v2 = v1;
  OUTLINED_FUNCTION_16_0();
  v3 = *v0;
  OUTLINED_FUNCTION_95();
  *v4 = v3;

  OUTLINED_FUNCTION_70_0();

  return v5(v2);
}

uint64_t sub_1C838BC3C(uint64_t a1)
{
  result = sub_1C840C70C();
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

uint64_t dispatch thunk of ParameterSummaryViewModel.ToolTemplateDataSource.fetchCurrentParameterSummaryTemplate()()
{
  OUTLINED_FUNCTION_10_0();
  v4 = (*(*v0 + 128) + **(*v0 + 128));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  OUTLINED_FUNCTION_42_1(v2);

  return v4();
}

uint64_t sub_1C838BE6C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 16))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 57) >> 6) | (2 * ((*(a1 + 8) >> 57) & 0x38 | *(a1 + 8) & 7))) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1C838BEC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_1C838BF44()
{
  result = qword_1EC29EAF8;
  if (!qword_1EC29EAF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC29EAF8);
  }

  return result;
}

void sub_1C838BFA8(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {
    sub_1C832EF1C();
    *v1 = v5;
  }
}

uint64_t (*sub_1C838C010(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_1C838B500(a3);
  sub_1C83A8658();
  if (v6)
  {
    v7 = swift_unknownObjectRetain();
  }

  else
  {
    v7 = MEMORY[0x1CCA75DF0](a2, a3);
  }

  *a1 = v7;
  return sub_1C838C09C;
}

unint64_t sub_1C838C0A4()
{
  result = qword_1EC29EB70;
  if (!qword_1EC29EB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29EB68, &qword_1C8419FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29EB70);
  }

  return result;
}

uint64_t sub_1C838C128(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParameterSummaryToolTemplate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_85_0(uint64_t a1)
{

  return sub_1C840D69C();
}

uint64_t OUTLINED_FUNCTION_90_0(uint64_t a1)
{

  return sub_1C840D04C();
}

uint64_t ParameterSummaryCustomEnumerableParameter.init(parameterDefinition:identifier:placeholder:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAD0, &qword_1C8418AB0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24 - v13;
  v15 = sub_1C840CB6C();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v21, a1, v15, v19);
  sub_1C83379C0(a6, v14);
  v22 = ParameterSummaryBaseParameter.init(parameterDefinition:identifier:placeholder:defaultValue:)(v21, a2, a3, a4, a5, v14);
  sub_1C8371618(a6);
  (*(v17 + 8))(a1, v15);
  return v22;
}

uint64_t ParameterSummaryCustomEnumerableParameter.init(parameterDefinition:identifier:placeholder:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a4;
  v28 = a5;
  v26 = a3;
  v10 = *(*v6 + 312);
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = sub_1C840CB6C();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v22, a1, v16, v20);
  (*(v12 + 16))(v15, a6, v10);
  v23 = ParameterSummaryBaseParameter.init(parameterDefinition:identifier:placeholder:value:)(v22, a2, v26, v27, v28, v15);
  (*(v12 + 8))(a6, v10);
  (*(v18 + 8))(a1, v16);
  return v23;
}

uint64_t ParameterSummaryCustomEnumerableParameter.__deallocating_deinit()
{
  v0 = ParameterSummaryBaseParameter.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t ParameterSummaryCurrencyAmountGroup.__allocating_init(parameterDefinition:defaultValue:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ParameterSummaryCurrencyAmountGroup.init(parameterDefinition:defaultValue:)(a1, a2);
  return v4;
}

uint64_t ParameterSummaryCurrencyAmountGroup.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ParameterSummaryCurrencyAmountGroup.parameterDefinition.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18WorkflowUIServices35ParameterSummaryCurrencyAmountGroup_parameterDefinition;
  sub_1C840CB6C();
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_1C838C8E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAC0, &unk_1C8419240);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C8414650;
  v2 = *(v0 + OBJC_IVAR____TtC18WorkflowUIServices35ParameterSummaryCurrencyAmountGroup_amountParameter);
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DF60, &qword_1C8417BE0);
  *(v1 + 64) = sub_1C830D3C0(&qword_1EC29DF68, &qword_1EC29DF60, &qword_1C8417BE0, &protocol conformance descriptor for ParameterSummaryBaseParameter<A>);
  *(v1 + 32) = v2;
  v3 = *(v0 + OBJC_IVAR____TtC18WorkflowUIServices35ParameterSummaryCurrencyAmountGroup_currencyCodeParameter);
  *(v1 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DFA8, &unk_1C841A030);
  *(v1 + 104) = sub_1C830D3C0(&qword_1EC29DFB0, &qword_1EC29DFA8, &unk_1C841A030, &protocol conformance descriptor for ParameterSummaryBaseParameter<A>);
  *(v1 + 72) = v3;

  return v1;
}

uint64_t sub_1C838CA04(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = swift_unknownObjectRetain();
  return sub_1C838CA90(v3, v2);
}

uint64_t sub_1C838CA90(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC18WorkflowUIServices35ParameterSummaryCurrencyAmountGroup_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_1C838CAFC(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC18WorkflowUIServices35ParameterSummaryCurrencyAmountGroup_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1C8372180;
}

uint64_t ParameterSummaryCurrencyAmountGroup.init(parameterDefinition:defaultValue:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v35 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAD0, &qword_1C8418AB0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v32 - v6;
  v8 = sub_1C840CB6C();
  OUTLINED_FUNCTION_5();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v34 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  *(v2 + OBJC_IVAR____TtC18WorkflowUIServices35ParameterSummaryCurrencyAmountGroup_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v16 = sub_1C840CB3C();
  v18 = v17;
  *(v3 + 16) = v16;
  *(v3 + 24) = v17;
  v19 = *(v10 + 16);
  v19(v3 + OBJC_IVAR____TtC18WorkflowUIServices35ParameterSummaryCurrencyAmountGroup_parameterDefinition, a1, v8);
  v33 = a1;
  v19(v15, a1, v8);
  v36 = v16;
  v37 = v18;

  MEMORY[0x1CCA75890](0x746E756F6D612DLL, 0xE700000000000000);
  v20 = v36;
  v21 = v37;
  v22 = sub_1C840CA1C();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DF60, &qword_1C8417BE0);
  swift_allocObject();
  *(v3 + OBJC_IVAR____TtC18WorkflowUIServices35ParameterSummaryCurrencyAmountGroup_amountParameter) = sub_1C838F5D0(v15, v20, v21, 0, 0, v7, sub_1C838E388, sub_1C8337C34);
  v19(v15, a1, v8);
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_1C840D3DC();
  v24 = *(v3 + 16);
  v23 = *(v3 + 24);

  v36 = v24;
  v37 = v23;
  MEMORY[0x1CCA75890](0x636E65727275632DLL, 0xEE0065646F632D79);
  v25 = v36;
  v26 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DFA8, &unk_1C841A030);
  swift_allocObject();
  v27 = v34;
  v19(v34, v15, v8);
  v28 = sub_1C83382D8(v27, v25, v26, 0, 0, 4477781, 0xE300000000000000);
  v29 = *(v10 + 8);
  v29(v15, v8);
  *(v3 + OBJC_IVAR____TtC18WorkflowUIServices35ParameterSummaryCurrencyAmountGroup_currencyCodeParameter) = v28;
  v30 = v35;
  sub_1C838D304(v35);
  sub_1C832D574(v30, &qword_1EC29EAD0, &qword_1C8418AB0);
  v29(v33, v8);
  return v3;
}

uint64_t sub_1C838CF28(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = sub_1C840C94C();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v4 = sub_1C840AFEC();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  sub_1C840D05C();
  v2[18] = sub_1C840D04C();
  v6 = sub_1C840D03C();

  return MEMORY[0x1EEE6DFA0](sub_1C838D078, v6, v5);
}

uint64_t sub_1C838D078()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[16];

  v4 = swift_beginAccess();
  v0[8] = OUTLINED_FUNCTION_3_11(v4, v5);
  v0[9] = v6;
  sub_1C840AFDC();
  sub_1C833644C();
  v7 = sub_1C840D31C();
  v9 = v8;
  (*(v3 + 8))(v1, v2);

  v11 = sub_1C838DABC(v7, v9, v10);
  if (v12)
  {
    v13 = v0[10];
    v14 = sub_1C840CA1C();
    v15 = v13;
    v16 = 1;
  }

  else
  {
    v18 = v0[13];
    v17 = v0[14];
    v19 = v0[12];
    v20 = v0[10];
    MEMORY[0x1CCA75CD0](*&v11);
    v21 = swift_beginAccess();
    OUTLINED_FUNCTION_3_11(v21, v22);
    sub_1C840C92C();
    v23 = sub_1C840C9DC();
    v24 = swift_allocBox();
    v26 = v25;
    (*(v18 + 32))(v25, v17, v19);
    (*(*(v23 - 8) + 104))(v26, *MEMORY[0x1E69DAD78], v23);
    *v20 = v24;
    v27 = *MEMORY[0x1E69DAE70];
    v28 = sub_1C840CA1C();
    OUTLINED_FUNCTION_6();
    (*(v29 + 104))(v20, v27, v28);
    v15 = v20;
    v16 = 0;
    v14 = v28;
  }

  __swift_storeEnumTagSinglePayload(v15, v16, 1, v14);

  v30 = v0[1];

  return v30();
}

double sub_1C838D304(uint64_t a1)
{
  v2 = sub_1C840C9DC();
  OUTLINED_FUNCTION_5();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAD0, &qword_1C8418AB0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  v38 = sub_1C840C94C();
  OUTLINED_FUNCTION_5();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  sub_1C832D46C(a1, v14, &qword_1EC29EAD0, &qword_1C8418AB0);
  v21 = sub_1C840CA1C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v21) == 1)
  {
    sub_1C832D574(v14, &qword_1EC29EAD0, &qword_1C8418AB0);
  }

  else
  {
    v23 = *(v21 - 8);
    v24 = (*(v23 + 88))(v14, v21);
    if (v24 == *MEMORY[0x1E69DAE70])
    {
      v25 = v24;
      (*(v23 + 96))(v14, v21);
      v26 = swift_projectBox();
      (*(v4 + 16))(v8, v26, v2);
      if ((*(v4 + 88))(v8, v2) == *MEMORY[0x1E69DAD78])
      {
        (*(v4 + 96))(v8, v2);
        v37 = v16;
        (*(v16 + 32))(v20, v8, v38);

        v27 = *(v39 + OBJC_IVAR____TtC18WorkflowUIServices35ParameterSummaryCurrencyAmountGroup_amountParameter);
        v36 = swift_allocBox();
        v29 = v28;
        *v28 = sub_1C840C93C();
        v29[1] = v30;
        *(v29 + 4) = v31;
        (*(v4 + 104))(v29, *MEMORY[0x1E69DADF8], v2);
        *v11 = v36;
        (*(v23 + 104))(v11, v25, v21);
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v21);
        (*(*v27 + 272))(v11);
        sub_1C832D574(v11, &qword_1EC29EAD0, &qword_1C8418AB0);
        v32 = *(v39 + OBJC_IVAR____TtC18WorkflowUIServices35ParameterSummaryCurrencyAmountGroup_currencyCodeParameter);
        v33 = sub_1C840C91C();
        v42 = MEMORY[0x1E69E6158];
        v43 = &protocol witness table for String;
        v40 = v33;
        v41 = v34;
        static ParameterSummaryContent.value(_:fallbackName:)(&v40, 0, 0xE000000000000000, &v44);
        __swift_destroy_boxed_opaque_existential_1(&v40);
        v40 = v44;
        LOBYTE(v41) = v45;
        (*(*v32 + 280))(&v40);

        (*(v37 + 8))(v20, v38);
      }

      else
      {
        (*(v4 + 8))(v8, v2);
      }
    }

    else
    {
      (*(v23 + 8))(v14, v21);
    }
  }

  return result;
}

uint64_t ParameterSummaryCurrencyAmountGroup.deinit()
{

  v1 = OBJC_IVAR____TtC18WorkflowUIServices35ParameterSummaryCurrencyAmountGroup_parameterDefinition;
  sub_1C840CB6C();
  OUTLINED_FUNCTION_6();
  (*(v2 + 8))(v0 + v1);

  sub_1C8338A00(v0 + OBJC_IVAR____TtC18WorkflowUIServices35ParameterSummaryCurrencyAmountGroup_delegate);
  return v0;
}

uint64_t ParameterSummaryCurrencyAmountGroup.__deallocating_deinit()
{
  ParameterSummaryCurrencyAmountGroup.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t (*sub_1C838D96C(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = *v1;
  v5 = OBJC_IVAR____TtC18WorkflowUIServices35ParameterSummaryCurrencyAmountGroup_delegate;
  v3[5] = *v1;
  v3[6] = v5;
  v6 = v4 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  v3[3] = Strong;
  v3[4] = v8;
  return sub_1C8375E04;
}

uint64_t sub_1C838D9FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C8311C5C;

  return sub_1C838CF28(a1);
}

uint64_t sub_1C838DABC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = 0;
  v3 = sub_1C83B1C04(a1, a2, &v5, a3);

  if (v3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void sub_1C838DB1C(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = a4;
  v70 = a3;
  v68 = a1;
  *&v85 = sub_1C840CB0C();
  v4 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v67 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C840CB1C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v83 = &v64 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EC28, &qword_1C841A0E8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v72 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v64 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v64 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v71 = &v64 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v73 = &v64 - v23;
  v24 = sub_1C840CA4C();
  v25 = v24 + 56;
  v26 = 1 << *(v24 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v24 + 56);
  v29 = (v26 + 63) >> 6;
  v81 = v7 + 32;
  v82 = v7 + 16;
  v80 = v7 + 88;
  v79 = *MEMORY[0x1E69DB140];
  v76 = (v7 + 96);
  v77 = (v7 + 8);
  v74 = v4;
  v78 = (v4 + 32);
  *&v84 = v24;

  v30 = 0;
  v75 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v31 = v30;
    if (!v28)
    {
      break;
    }

LABEL_8:
    v32 = v83;
    (*(v7 + 16))(v83, *(v84 + 48) + *(v7 + 72) * (__clz(__rbit64(v28)) | (v30 << 6)), v6);
    (*(v7 + 32))(v9, v32, v6);
    v33 = (*(v7 + 88))(v9, v6);
    if (v33 == v79)
    {
      (*v76)(v9, v6);
      v34 = v85;
      (*v78)(v16, v9, v85);
      v35 = 0;
    }

    else
    {
      (*v77)(v9, v6);
      v35 = 1;
      v34 = v85;
    }

    v28 &= v28 - 1;
    __swift_storeEnumTagSinglePayload(v16, v35, 1, v34);
    sub_1C838FC3C(v16, v19);
    if (__swift_getEnumTagSinglePayload(v19, 1, v34) == 1)
    {
      sub_1C832D574(v19, &qword_1EC29EC28, &qword_1C841A0E8);
    }

    else
    {
      v36 = *v78;
      (*v78)(v67, v19, v85);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C832EC24();
        v75 = v41;
      }

      v37 = *(v75 + 16);
      v38 = v37 + 1;
      if (v37 >= *(v75 + 24) >> 1)
      {
        v66 = v37 + 1;
        v65 = v37;
        sub_1C832EC24();
        v38 = v66;
        v37 = v65;
        v75 = v42;
      }

      v39 = v74;
      v40 = v75;
      *(v75 + 16) = v38;
      v36(v40 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v37, v67, v85);
    }
  }

  while (1)
  {
    v30 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v30 >= v29)
    {
      break;
    }

    v28 = *(v25 + 8 * v30);
    ++v31;
    if (v28)
    {
      goto LABEL_8;
    }
  }

  v43 = v73;
  sub_1C83BB350(v75, v73);

  v44 = v71;
  sub_1C832D46C(v43, v71, &qword_1EC29EC28, &qword_1C841A0E8);
  v45 = v85;
  if (__swift_getEnumTagSinglePayload(v44, 1, v85) == 1)
  {
    sub_1C832D574(v44, &qword_1EC29EC28, &qword_1C841A0E8);
    v46 = 0;
  }

  else
  {
    v46 = sub_1C840CAEC();
    (*(v74 + 8))(v44, v45);
  }

  v47 = v72;
  sub_1C832D46C(v43, v72, &qword_1EC29EC28, &qword_1C841A0E8);
  if (__swift_getEnumTagSinglePayload(v47, 1, v45) != 1)
  {
    v48 = sub_1C840CAFC();
    (*(v74 + 8))(v47, v45);
    if (!v46)
    {
      if (!v48)
      {
        goto LABEL_31;
      }

      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EC30, &qword_1C841A0F0);
      v56 = sub_1C830D3C0(&qword_1EC29EC38, &qword_1EC29EC30, &qword_1C841A0F0, MEMORY[0x1E69E6ED8]);
      v59 = v48;
      sub_1C840D0BC();
      v85 = v60;

      v55 = v85;
      goto LABEL_32;
    }

    if (!v48)
    {
      goto LABEL_28;
    }

    v49 = v46;
    sub_1C840D0BC();
    v85 = v50;

    v51 = v48;
    sub_1C840D0BC();
    v84 = v52;

    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EC50, &qword_1C841A100);
    v54 = sub_1C830D3C0(&qword_1EC29EC58, &qword_1EC29EC50, &qword_1C841A100, MEMORY[0x1E69E5FB8]);
    *&v55 = v85;
    if (*&v85 <= *&v84)
    {
      v56 = v54;
      *(&v55 + 1) = v84;
      goto LABEL_32;
    }

LABEL_36:
    __break(1u);
    return;
  }

  sub_1C832D574(v47, &qword_1EC29EC28, &qword_1C841A0E8);
  if (!v46)
  {
LABEL_31:
    v53 = 0;
    v56 = 0;
    v55 = 0uLL;
    goto LABEL_32;
  }

LABEL_28:
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EC40, &qword_1C841A0F8);
  v56 = sub_1C830D3C0(&qword_1EC29EC48, &qword_1EC29EC40, &qword_1C841A0F8, MEMORY[0x1E69E6D18]);
  v57 = v46;
  sub_1C840D0BC();
  v85 = v58;

  v55 = v85;
LABEL_32:
  v61 = v70;
  v62 = v69;
  v63 = v68;
  *v68 = v55;
  v63[2] = 0;
  v63[3] = v53;
  v63[4] = v56;
  if (v62)
  {
    v87[0] = v61;
    v87[1] = v62;
    sub_1C83B0084(v87, v43, &v86);
  }

  sub_1C832D574(v43, &qword_1EC29EC28, &qword_1C841A0E8);
}

void sub_1C838E388(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v85 = a4;
  v83 = a3;
  v84 = a1;
  v100 = sub_1C840CB0C();
  v4 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v82 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C840CB1C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v98 = &v79 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EC28, &qword_1C841A0E8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v87 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v79 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v79 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v86 = &v79 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v89 = &v79 - v23;
  v24 = sub_1C840CA4C();
  v25 = v24 + 56;
  v26 = 1 << *(v24 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v24 + 56);
  v29 = (v26 + 63) >> 6;
  v96 = v7 + 32;
  v97 = v7 + 16;
  v95 = v7 + 88;
  v94 = *MEMORY[0x1E69DB140];
  v91 = (v7 + 96);
  v92 = (v7 + 8);
  v88 = v4;
  v93 = (v4 + 32);
  v99 = v24;

  v30 = 0;
  v90 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v31 = v30;
    if (!v28)
    {
      break;
    }

LABEL_8:
    v32 = v98;
    (*(v7 + 16))(v98, *(v99 + 48) + *(v7 + 72) * (__clz(__rbit64(v28)) | (v30 << 6)), v6);
    (*(v7 + 32))(v9, v32, v6);
    v33 = (*(v7 + 88))(v9, v6);
    if (v33 == v94)
    {
      (*v91)(v9, v6);
      v34 = v100;
      (*v93)(v16, v9, v100);
      v35 = 0;
    }

    else
    {
      (*v92)(v9, v6);
      v35 = 1;
      v34 = v100;
    }

    v28 &= v28 - 1;
    __swift_storeEnumTagSinglePayload(v16, v35, 1, v34);
    sub_1C838FC3C(v16, v19);
    if (__swift_getEnumTagSinglePayload(v19, 1, v34) == 1)
    {
      sub_1C832D574(v19, &qword_1EC29EC28, &qword_1C841A0E8);
    }

    else
    {
      v36 = *v93;
      (*v93)(v82, v19, v100);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C832EC24();
        v90 = v40;
      }

      v37 = *(v90 + 16);
      v38 = v37 + 1;
      if (v37 >= *(v90 + 24) >> 1)
      {
        v81 = v37 + 1;
        v80 = v37;
        sub_1C832EC24();
        v38 = v81;
        v37 = v80;
        v90 = v41;
      }

      v39 = v90;
      *(v90 + 16) = v38;
      v36((v39 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v37), v82, v100);
    }
  }

  while (1)
  {
    v30 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v30 >= v29)
    {
      break;
    }

    v28 = *(v25 + 8 * v30);
    ++v31;
    if (v28)
    {
      goto LABEL_8;
    }
  }

  v42 = v89;
  sub_1C83BB350(v90, v89);

  v43 = v86;
  sub_1C832D46C(v42, v86, &qword_1EC29EC28, &qword_1C841A0E8);
  v44 = v100;
  if (__swift_getEnumTagSinglePayload(v43, 1, v100) == 1)
  {
    sub_1C832D574(v43, &qword_1EC29EC28, &qword_1C841A0E8);
    v45 = 0;
  }

  else
  {
    v45 = sub_1C840CAEC();
    (*(v88 + 8))(v43, v44);
  }

  v46 = v87;
  sub_1C832D46C(v42, v87, &qword_1EC29EC28, &qword_1C841A0E8);
  if (__swift_getEnumTagSinglePayload(v46, 1, v44) != 1)
  {
    v51 = sub_1C840CAFC();
    (*(v88 + 8))(v46, v44);
    if (!v45)
    {
      goto LABEL_30;
    }

    if (!v51)
    {
      goto LABEL_28;
    }

    v53 = v45;
    v100 = MEMORY[0x1CCA75CD0]([v53 doubleValue]);
    v55 = v54;
    v57 = v56;

    v58 = v51;
    v59 = MEMORY[0x1CCA75CD0]([v58 doubleValue]);
    v61 = v60;
    v63 = v62;

    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EC80, &qword_1C841A118);
    v48 = sub_1C830D3C0(&qword_1EC29EC88, &qword_1EC29EC80, &qword_1C841A118, MEMORY[0x1E69E5FB8]);
    v45 = swift_allocObject();
    v98 = v61;
    v99 = v59;
    v64 = v59;
    LODWORD(v97) = v63;
    v65 = v63;
    v66 = v100;
    v67 = v57;
    LOBYTE(v57) = MEMORY[0x1CCA75CA0](v64, v61, v65);

    if ((v57 & 1) == 0)
    {
      LOWORD(v49) = 0;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      *(v45 + 16) = v66;
      *(v45 + 24) = v55;
      v68 = v45 & 0xFFFF000000000000;
      *(v45 + 32) = v67;
      *(v45 + 36) = v99;
      *(v45 + 44) = v98;
      *(v45 + 52) = v97;
      v69 = v85;
      v70 = v84;
      v42 = v89;
      goto LABEL_36;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  sub_1C832D574(v46, &qword_1EC29EC28, &qword_1C841A0E8);
  if (!v45)
  {
    v47 = 0;
    v48 = 0;
    LOWORD(v49) = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    goto LABEL_34;
  }

LABEL_28:
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EC70, &qword_1C841A110);
  v48 = sub_1C830D3C0(&qword_1EC29EC78, &qword_1EC29EC70, &qword_1C841A110, MEMORY[0x1E69E6D18]);
  v71 = v45;
  v45 = MEMORY[0x1CCA75CD0]([v71 doubleValue]);
  v51 = v72;
  v49 = v73;

  v74 = MEMORY[0x1CCA75CB0](v45, v51, v49, v45, v51, v49);
  if (v74)
  {
LABEL_32:
    v50 = v49 & 0xFFFF0000;
    v52 = v51 & 0xFFFF000000000000;
    v68 = v45 & 0xFFFF000000000000;
  }

  else
  {
    __break(1u);
LABEL_30:
    if (v51)
    {
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EC60, &qword_1C841A108);
      v48 = sub_1C830D3C0(&qword_1EC29EC68, &qword_1EC29EC60, &qword_1C841A108, MEMORY[0x1E69E6ED8]);
      v75 = v51;
      v45 = MEMORY[0x1CCA75CD0]([v75 doubleValue]);
      v51 = v76;
      v49 = v77;

      v78 = MEMORY[0x1CCA75CB0](v45, v51, v49, v45, v51, v49);
      if (v78)
      {
        goto LABEL_32;
      }

LABEL_41:
      __break(1u);
      return;
    }

    v47 = 0;
    v48 = 0;
    LOWORD(v49) = 0;
    v50 = 0;
    v52 = 0;
    v45 = 0;
LABEL_34:
    v68 = 0;
  }

  v69 = v85;
  v70 = v84;
LABEL_36:
  *v70 = v45 & 0xFFFFFFFFFFFFLL | v68;
  v70[1] = v51 & 0xFFFFFFFFFFFFLL | v52;
  v70[2] = v50 | v49;
  v70[3] = v47;
  v70[4] = v48;
  if (v69)
  {
    v102[0] = v83;
    v102[1] = v69;
    sub_1C83B0084(v102, v42, &v101);
  }

  sub_1C832D574(v42, &qword_1EC29EC28, &qword_1C841A0E8);
}

void sub_1C838ED3C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a4;
  v63 = a3;
  v61 = a1;
  v78 = sub_1C840CB0C();
  v4 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v60 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C840CB1C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v76 = &v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EC28, &qword_1C841A0E8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v65 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v57 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v57 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v64 = &v57 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v66 = &v57 - v23;
  v24 = sub_1C840CA4C();
  v25 = v24 + 56;
  v26 = 1 << *(v24 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v24 + 56);
  v29 = (v26 + 63) >> 6;
  v74 = v7 + 32;
  v75 = v7 + 16;
  v73 = v7 + 88;
  v72 = *MEMORY[0x1E69DB140];
  v69 = (v7 + 96);
  v70 = (v7 + 8);
  v67 = v4;
  v71 = (v4 + 32);
  v77 = v24;

  v30 = 0;
  v68 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v31 = v30;
    if (!v28)
    {
      break;
    }

LABEL_8:
    v32 = v76;
    (*(v7 + 16))(v76, *(v77 + 48) + *(v7 + 72) * (__clz(__rbit64(v28)) | (v30 << 6)), v6);
    (*(v7 + 32))(v9, v32, v6);
    v33 = (*(v7 + 88))(v9, v6);
    if (v33 == v72)
    {
      (*v69)(v9, v6);
      v34 = v78;
      (*v71)(v16, v9, v78);
      v35 = 0;
    }

    else
    {
      (*v70)(v9, v6);
      v35 = 1;
      v34 = v78;
    }

    v28 &= v28 - 1;
    __swift_storeEnumTagSinglePayload(v16, v35, 1, v34);
    sub_1C838FC3C(v16, v19);
    if (__swift_getEnumTagSinglePayload(v19, 1, v34) == 1)
    {
      sub_1C832D574(v19, &qword_1EC29EC28, &qword_1C841A0E8);
    }

    else
    {
      v36 = *v71;
      (*v71)(v60, v19, v78);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C832EC24();
        v68 = v41;
      }

      v37 = *(v68 + 16);
      v38 = v37 + 1;
      if (v37 >= *(v68 + 24) >> 1)
      {
        v59 = v37 + 1;
        v58 = v37;
        sub_1C832EC24();
        v38 = v59;
        v37 = v58;
        v68 = v42;
      }

      v39 = v67;
      v40 = v68;
      *(v68 + 16) = v38;
      v36((v40 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v37), v60, v78);
    }
  }

  while (1)
  {
    v30 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v30 >= v29)
    {
      break;
    }

    v28 = *(v25 + 8 * v30);
    ++v31;
    if (v28)
    {
      goto LABEL_8;
    }
  }

  v43 = v66;
  sub_1C83BB350(v68, v66);

  v44 = v64;
  sub_1C832D46C(v43, v64, &qword_1EC29EC28, &qword_1C841A0E8);
  v45 = v78;
  if (__swift_getEnumTagSinglePayload(v44, 1, v78) == 1)
  {
    sub_1C832D574(v44, &qword_1EC29EC28, &qword_1C841A0E8);
    v46 = 0;
  }

  else
  {
    v46 = sub_1C840CAEC();
    (*(v67 + 8))(v44, v45);
  }

  v47 = v65;
  sub_1C832D46C(v43, v65, &qword_1EC29EC28, &qword_1C841A0E8);
  if (__swift_getEnumTagSinglePayload(v47, 1, v45) != 1)
  {
    v50 = sub_1C840CAFC();
    (*(v67 + 8))(v47, v45);
    if (!v46)
    {
      if (v50)
      {
        v46 = &qword_1C841A120;
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EC90, &qword_1C841A120);
        v49 = sub_1C830D3C0(&qword_1EC29EC98, &qword_1EC29EC90, &qword_1C841A120, MEMORY[0x1E69E6ED8]);
        v52 = sub_1C840D0FC();
      }

      else
      {
        v48 = 0;
        v49 = 0;
        v46 = 0;
LABEL_32:
        v52 = 0;
      }

      goto LABEL_33;
    }

    if (!v50)
    {
      goto LABEL_28;
    }

    v51 = v46;
    v52 = sub_1C840D0FC();

    v53 = v50;
    v46 = sub_1C840D0FC();

    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29ECB0, &qword_1C841A130);
    v54 = sub_1C830D3C0(&qword_1EC29ECB8, &qword_1EC29ECB0, &qword_1C841A130, MEMORY[0x1E69E5FB8]);
    if (v46 >= v52)
    {
      v49 = v54;
      goto LABEL_33;
    }

LABEL_37:
    __break(1u);
    return;
  }

  sub_1C832D574(v47, &qword_1EC29EC28, &qword_1C841A0E8);
  if (!v46)
  {
    v48 = 0;
    v49 = 0;
    goto LABEL_32;
  }

LABEL_28:
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29ECA0, &qword_1C841A128);
  v49 = sub_1C830D3C0(&qword_1EC29ECA8, &qword_1EC29ECA0, &qword_1C841A128, MEMORY[0x1E69E6D18]);
  v52 = sub_1C840D0FC();

LABEL_33:
  v55 = v62;
  v56 = v61;
  *v61 = v52;
  v56[1] = v46;
  v56[2] = 0;
  v56[3] = v48;
  v56[4] = v49;
  if (v55)
  {
    v80[0] = v63;
    v80[1] = v55;
    sub_1C83B0084(v80, v43, &v79);
  }

  sub_1C832D574(v43, &qword_1EC29EC28, &qword_1C841A0E8);
}

uint64_t sub_1C838F5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void *, uint64_t, uint64_t, uint64_t), uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v46 = a8;
  v42 = a7;
  v47 = a6;
  v44 = a2;
  v45 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAD0, &qword_1C8418AB0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v41 - v12;
  v43 = sub_1C840CB6C();
  OUTLINED_FUNCTION_5();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  v20 = sub_1C840CA5C();
  OUTLINED_FUNCTION_5();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1();
  v26 = v25 - v24;
  v27 = a1;
  MEMORY[0x1CCA75550]();
  v28 = v42(v53, v26, a4, a5);
  v30 = v29;

  (*(v22 + 8))(v26, v20);
  v55[0] = v28;
  v55[1] = v30;
  if (v54)
  {
    sub_1C832DE28(v53, &v49);
  }

  else
  {
    OUTLINED_FUNCTION_4_9();
  }

  sub_1C832D46C(v55, v52, &qword_1EC29DFB8, &qword_1C841A0E0);

  v31 = v48 + qword_1EC2A9D40;
  v32 = v50;
  *v31 = v49;
  *(v31 + 16) = v32;
  *(v31 + 32) = v51;
  v33 = v27;
  v34 = v27;
  v35 = v43;
  (*(v15 + 16))(v19, v34, v43);
  if (v54)
  {
    sub_1C832DE28(v53, &v49);
  }

  else
  {
    OUTLINED_FUNCTION_4_9();
  }

  sub_1C832D46C(v55, v52, &qword_1EC29DFB8, &qword_1C841A0E0);
  v36 = v52[0];
  v37 = v52[1];
  v38 = v47;
  sub_1C832D46C(v47, v13, &qword_1EC29EAD0, &qword_1C8418AB0);
  v39 = v46(v19, v44, v45, v36, v37, v13);
  sub_1C832D574(v38, &qword_1EC29EAD0, &qword_1C8418AB0);
  (*(v15 + 8))(v33, v35);
  if (v54)
  {
    __swift_destroy_boxed_opaque_existential_1(v53);
  }

  sub_1C832D574(v55, &qword_1EC29DFB8, &qword_1C841A0E0);
  if (*(&v50 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1(&v49);
  }

  return v39;
}

uint64_t type metadata accessor for ParameterSummaryCurrencyAmountGroup(uint64_t a1)
{
  result = qword_1EC29EC18;
  if (!qword_1EC29EC18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C838F984(uint64_t a1)
{
  result = sub_1C840CB6C();
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

uint64_t dispatch thunk of ParameterSummaryCurrencyAmountGroup.asTypedValue()(uint64_t a1)
{
  v6 = (*(*v1 + 160) + **(*v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C8311C5C;

  return v6(a1);
}

uint64_t sub_1C838FC3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EC28, &qword_1C841A0E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Measurement.init(textValue:unit:)@<X0>(void *a1@<X2>, uint64_t a3@<X8>, uint64_t x0_0@<X0>, uint64_t a4@<X1>, __n128 a5@<Q0>)
{
  sub_1C838DABC(x0_0, a4, a5);
  if (v8)
  {

    v9 = 1;
  }

  else
  {
    sub_1C840AF9C();
    v9 = 0;
  }

  v10 = sub_1C840AFBC();

  return __swift_storeEnumTagSinglePayload(a3, v9, 1, v10);
}

uint64_t Measurement.init(typedValue:)@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v37 = a3;
  v36 = sub_1C840AFBC();
  sub_1C840D2FC();
  OUTLINED_FUNCTION_5();
  v33 = v5;
  v34 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v32 - v6;
  v7 = sub_1C840C9DC();
  OUTLINED_FUNCTION_5();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29ECC0, &qword_1C841A160);
  OUTLINED_FUNCTION_5();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v32 - v20;
  v22 = sub_1C840CA1C();
  v23 = *(v22 - 8);
  if ((*(v23 + 88))(a1, v22) != *MEMORY[0x1E69DAE70])
  {
    (*(v23 + 8))(a1, v22);
LABEL_7:
    v30 = 1;
    v26 = v36;
    v29 = v37;
    return __swift_storeEnumTagSinglePayload(v29, v30, 1, v26);
  }

  (*(v23 + 96))(a1, v22);
  v24 = swift_projectBox();
  (*(v9 + 16))(v12, v24, v7);
  if ((*(v9 + 88))(v12, v7) != *MEMORY[0x1E69DAD60])
  {
    (*(v9 + 8))(v12, v7);

    goto LABEL_7;
  }

  (*(v9 + 96))(v12, v7);
  v25 = *(v15 + 32);
  v25(v21, v12, v13);

  v25(v18, v21, v13);
  v27 = v35;
  v26 = v36;
  v28 = swift_dynamicCast();
  v29 = v37;
  if (v28)
  {
    __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
    (*(*(v26 - 8) + 32))(v29, v27, v26);
    v30 = 0;
  }

  else
  {
    v30 = 1;
    __swift_storeEnumTagSinglePayload(v27, 1, 1, v26);
    (*(v33 + 8))(v27, v34);
  }

  return __swift_storeEnumTagSinglePayload(v29, v30, 1, v26);
}

uint64_t Measurement.typedValue()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29ECC0, &qword_1C841A160);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8390224, 0, 0);
}

uint64_t sub_1C8390224()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  sub_1C840AFAC();
  sub_1C840AF8C();
  sub_1C839039C();
  sub_1C840AF9C();
  v5 = sub_1C840C9DC();
  v6 = swift_allocBox();
  v8 = v7;
  (*(v2 + 32))(v7, v1, v3);
  (*(*(v5 - 8) + 104))(v8, *MEMORY[0x1E69DAD60], v5);
  *v4 = v6;
  v9 = *MEMORY[0x1E69DAE70];
  v10 = sub_1C840CA1C();
  (*(*(v10 - 8) + 104))(v4, v9, v10);

  v11 = v0[1];

  return v11();
}

unint64_t sub_1C839039C()
{
  result = qword_1EC29E540;
  if (!qword_1EC29E540)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC29E540);
  }

  return result;
}

uint64_t sub_1C83903E8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C8311C5C;

  return Measurement.typedValue()(a1, a2);
}

uint64_t ParameterSummaryMeasurementGroup.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ParameterSummaryMeasurementGroup.parameterDefinition.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EC2A9D28;
  sub_1C840CB6C();
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_1C839057C()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAC0, &unk_1C8419240);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C8414650;
  v3 = *(v0 + qword_1EC29ECC8);
  *(v2 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DF70, &qword_1C8417BE8);
  *(v2 + 64) = sub_1C8390B9C();
  *(v2 + 32) = v3;
  v4 = *(v0 + qword_1EC29ECD0);
  *(v2 + 96) = type metadata accessor for ParameterSummaryMeasurementUnitParameter(0, *(v1 + 80), v5, v6);
  *(v2 + 104) = swift_getWitnessTable();
  *(v2 + 72) = v4;

  return v2;
}

uint64_t sub_1C8390670(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = swift_unknownObjectRetain();
  return sub_1C83906FC(v3, v2);
}

uint64_t sub_1C83906FC(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_1EC2A9D30;
  swift_beginAccess();
  *(v4 + 8) = a2;
  OUTLINED_FUNCTION_15();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1C8390764(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = qword_1EC2A9D30;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  OUTLINED_FUNCTION_15();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1C83752F8;
}

char *ParameterSummaryMeasurementGroup.init(parameterDefinition:defaultValue:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = a2;
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAD0, &qword_1C8418AB0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v33 - v7;
  v9 = sub_1C840CB6C();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[qword_1EC2A9D30 + 8] = 0;
  swift_unknownObjectWeakInit();
  v15 = *(v5 + 80);
  static ParameterUnit.defaultValue()(v15, &v38);
  v16 = v38;
  if (v38)
  {
    v35 = v15;
    v17 = sub_1C840CB3C();
    v19 = v18;
    *(v3 + 2) = v17;
    *(v3 + 3) = v18;
    v36 = v11;
    v20 = *(v11 + 16);
    v20(&v3[qword_1EC2A9D28], a1, v9);
    v34 = v9;
    v20(v14, a1, v9);
    v38 = v17;
    v39 = v19;

    MEMORY[0x1CCA75890](0x65756C61762DLL, 0xE600000000000000);
    v21 = v38;
    v22 = v39;
    v23 = sub_1C840CA1C();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DF70, &qword_1C8417BE8);
    swift_allocObject();
    *&v3[qword_1EC29ECC8] = sub_1C838F578(v14, v21, v22, 0, 0, v8);
    v24 = v35;
    v33[1] = type metadata accessor for ParameterSummaryMeasurementUnitParameter(0, v35, v25, v26);
    v20(v14, a1, v9);
    v27 = *(v3 + 3);
    v38 = *(v3 + 2);
    v39 = v27;

    MEMORY[0x1CCA75890](0x74696E752DLL, 0xE500000000000000);
    sub_1C8370F08(v24);
    v38 = v16;
    v28 = v16;
    *&v3[qword_1EC29ECD0] = ParameterSummaryMeasurementUnitParameter.__allocating_init(parameterDefinition:identifier:placeholder:value:)();
    v29 = v37;
    sub_1C839104C(v37);

    sub_1C832D574(v29, &qword_1EC29EAD0, &qword_1C8418AB0);
    (*(v36 + 8))(a1, v34);
  }

  else
  {
    sub_1C832D574(v37, &qword_1EC29EAD0, &qword_1C8418AB0);
    (*(v11 + 8))(a1, v9);
    sub_1C8338A00(&v3[qword_1EC2A9D30]);
    type metadata accessor for ParameterSummaryMeasurementGroup(0, v15, v30, v31);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

unint64_t sub_1C8390B9C()
{
  result = qword_1EC29DF78;
  if (!qword_1EC29DF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DF70, &qword_1C8417BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29DF78);
  }

  return result;
}

uint64_t sub_1C8390C18(uint64_t a1)
{
  v2[62] = a1;
  v2[63] = v1;
  v2[64] = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29ECC0, &qword_1C841A160);
  v2[65] = v3;
  v2[66] = *(v3 - 8);
  v2[67] = swift_task_alloc();
  sub_1C840D05C();
  v2[68] = sub_1C840D04C();
  v5 = sub_1C840D03C();

  return MEMORY[0x1EEE6DFA0](sub_1C8390D40, v5, v4);
}

uint64_t sub_1C8390D40()
{
  v1 = *(v0 + 504);

  v2 = (*(v1 + qword_1EC29ECC8) + qword_1EC2A9D90);
  swift_beginAccess();
  v27 = *v2;
  v3 = ParameterSummaryContent.text.getter();
  sub_1C8391AC8(v3, v4);
  if ((v5 & 1) == 0)
  {
    sub_1C83BB920();
    sub_1C83BB2D0(v27, v0 + 120);

    if (*(v0 + 216) == 255)
    {
      sub_1C832D574(v0 + 120, &qword_1EC29ECD8, &qword_1C841A168);
    }

    else
    {
      memcpy((v0 + 16), (v0 + 120), 0x61uLL);
      sub_1C832D808(v0 + 16, v0 + 224);
      if (*(v0 + 320))
      {
        v6 = *(v0 + 512);
        memcpy((v0 + 328), (v0 + 224), 0x60uLL);
        sub_1C832DE28(v0 + 384, v0 + 424);
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC29ECE0, &qword_1C841A170);
        type metadata accessor for ParameterUnit(0, *(v6 + 80), v7, v8);
        if (swift_dynamicCast())
        {
          v9 = *(v0 + 536);
          v10 = *(v0 + 528);
          v11 = *(v0 + 520);
          v12 = *(v0 + 496);
          sub_1C839039C();
          sub_1C840AF9C();
          sub_1C832D840(v0 + 328);
          sub_1C832D870(v0 + 16);
          v13 = sub_1C840C9DC();
          v14 = swift_allocBox();
          v16 = v15;
          (*(v10 + 32))(v15, v9, v11);
          (*(*(v13 - 8) + 104))(v16, *MEMORY[0x1E69DAD60], v13);
          *v12 = v14;
          v17 = *MEMORY[0x1E69DAE70];
          v18 = sub_1C840CA1C();
          OUTLINED_FUNCTION_6();
          (*(v19 + 104))(v12, v17, v18);
          v20 = v12;
          v21 = 0;
          v22 = v18;
          goto LABEL_11;
        }

        sub_1C832D840(v0 + 328);
        v23 = v0 + 16;
      }

      else
      {
        sub_1C832D870(v0 + 16);
        v23 = v0 + 224;
      }

      sub_1C832D870(v23);
    }
  }

  v24 = *(v0 + 496);
  v22 = sub_1C840CA1C();
  v20 = v24;
  v21 = 1;
LABEL_11:
  __swift_storeEnumTagSinglePayload(v20, v21, 1, v22);

  v25 = *(v0 + 8);

  return v25();
}

void sub_1C839104C(uint64_t a1)
{
  v2 = v1;
  v66 = *(*v1 + 80);
  v4 = sub_1C840AFBC();
  sub_1C840D2FC();
  OUTLINED_FUNCTION_0();
  v63 = v6;
  v64 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v58 - v7;
  OUTLINED_FUNCTION_0();
  v65 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v58 - v11;
  v12 = sub_1C840C9DC();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAD0, &qword_1C8418AB0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v62 = (&v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v58 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29ECC0, &qword_1C841A160);
  OUTLINED_FUNCTION_0();
  v68 = v24;
  v69 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v58 - v28;
  sub_1C83379C0(a1, v22);
  v30 = sub_1C840CA1C();
  if (__swift_getEnumTagSinglePayload(v22, 1, v30) == 1)
  {
    sub_1C832D574(v22, &qword_1EC29EAD0, &qword_1C8418AB0);
  }

  else
  {
    v61 = v4;
    OUTLINED_FUNCTION_0();
    v32 = v31;
    v34 = (*(v33 + 88))(v22, v30);
    if (v34 == *MEMORY[0x1E69DAE70])
    {
      v59 = v34;
      v60 = v29;
      (*(v32 + 96))(v22, v30);
      v35 = swift_projectBox();
      (*(v14 + 16))(v17, v35, v12);
      if ((*(v14 + 88))(v17, v12) == *MEMORY[0x1E69DAD60])
      {
        v58 = v14;
        (*(v14 + 96))(v17, v12);
        v36 = v68;
        v37 = v60;
        v38 = OUTLINED_FUNCTION_15();
        v39 = v69;
        v40(v38);

        (*(v36 + 16))(v26, v37, v39);
        v41 = v61;
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v8, 0, 1, v41);
          v42 = v65;
          v43 = v67;
          (*(v65 + 32))(v67, v8, v41);
          v44 = sub_1C840AF8C();
          ParameterUnit.init(unit:)(v44, v66, &v70);
          v45 = v70;
          if (v70)
          {
            v46 = v42;
            v47 = *(v2 + qword_1EC29ECC8);
            v64 = swift_allocBox();
            v49 = v48;
            sub_1C840AFAC();
            *v49 = v50;
            (*(v58 + 104))(v49, *MEMORY[0x1E69DADE0], v12);
            v51 = v62;
            *v62 = v64;
            (*(v32 + 104))(v51, v59, v30);
            __swift_storeEnumTagSinglePayload(v51, 0, 1, v30);
            (*(*v47 + 272))(v51);
            sub_1C832D574(v51, &qword_1EC29EAD0, &qword_1C8418AB0);
            v52 = *(v2 + qword_1EC29ECD0);
            v72 = type metadata accessor for ParameterUnit(0, v66, v53, v54);
            v73 = &protocol witness table for ParameterUnit<A>;
            v70 = v45;
            v55 = v45;
            static ParameterSummaryContent.value(_:fallbackName:)(&v70, 0, 0xE000000000000000, &v74);
            __swift_destroy_boxed_opaque_existential_1(&v70);
            v70 = v74;
            v71 = v75;
            (*(*v52 + 280))(&v70);

            (*(v46 + 8))(v67, v41);
          }

          else
          {
            (*(v42 + 8))(v43, v41);
          }

          (*(v68 + 8))(v60, v69);
        }

        else
        {
          v56 = OUTLINED_FUNCTION_15();
          v57(v56);
          __swift_storeEnumTagSinglePayload(v8, 1, 1, v41);
          (*(v63 + 8))(v8, v64);
        }
      }

      else
      {
        (*(v14 + 8))(v17, v12);
      }
    }

    else
    {
      (*(v32 + 8))(v22, v30);
    }
  }
}

uint64_t ParameterSummaryMeasurementGroup.deinit()
{

  v1 = qword_1EC2A9D28;
  sub_1C840CB6C();
  OUTLINED_FUNCTION_6();
  (*(v2 + 8))(v0 + v1);

  sub_1C8338A00(v0 + qword_1EC2A9D30);
  return v0;
}

uint64_t ParameterSummaryMeasurementGroup.__deallocating_deinit()
{
  ParameterSummaryMeasurementGroup.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t (*sub_1C83918F4(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C8390764(v2);
  return sub_1C8391954;
}

void sub_1C8391954(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1C839199C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C8311C5C;

  return sub_1C8390C18(a1);
}

_BYTE *sub_1C8391A5C@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

uint64_t sub_1C8391AC8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    sub_1C840D3CC();

    v6 = v9;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if ((a2 & 0x2000000000000000) != 0)
    {
      v6 = (v3 > 0x20u || ((0x100003E01uLL >> v3) & 1) == 0) && (v7 = _swift_stdlib_strtod_clocale()) != 0 && *v7 == 0;
    }

    else
    {
      if ((v3 & 0x1000000000000000) != 0)
      {
        v4 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v5 = v3 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v4 = sub_1C840D43C();
      }

      v6 = sub_1C8391F24(v4, v5, sub_1C8391FA0);
    }
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C8391C6C(uint64_t a1)
{
  result = sub_1C840CB6C();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of ParameterSummaryMeasurementGroup.asTypedValue()(uint64_t a1)
{
  v6 = (*(*v1 + 168) + **(*v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C8311C5C;

  return v6(a1);
}

uint64_t sub_1C8391F24(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  if (a1)
  {
    a3(&var2, a1, a2);
    if (!v3)
    {
      v4 = var2;
    }
  }

  else
  {
    a3((&var2 + 1), 0, 0);
    if (!v3)
    {
      v4 = BYTE1(var2);
    }
  }

  return v4 & 1;
}

void *sub_1C8391FA0@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t TypedValue.EntityValue.init(typedValue:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C840CA1C();
  OUTLINED_FUNCTION_5();
  v6 = v5;
  if ((*(v7 + 88))(a1, v4) == *MEMORY[0x1E69DAE58])
  {
    (*(v6 + 96))(a1, v4);
    v8 = sub_1C840C8CC();
    v9 = swift_projectBox();
    (*(*(v8 - 8) + 16))(a2, v9, v8);

    v10 = a2;
    v11 = 0;
    v12 = v8;
  }

  else
  {
    (*(v6 + 8))(a1, v4);
    v12 = sub_1C840C8CC();
    v10 = a2;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TypedValue.EntityValue.textValue()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D298, &unk_1C8415B80);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v15 - v1;
  sub_1C840C8BC();
  v3 = sub_1C840CC0C();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_1C832D574(v2, &qword_1EC29D298, &unk_1C8415B80);
    sub_1C840CE2C("Item", 4);
    if (qword_1EC29CF30 != -1)
    {
      swift_once();
    }

    v4 = qword_1EC29EA60;
    v5 = sub_1C840CD9C();
    v6 = sub_1C840CD9C();

    v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

    v8 = sub_1C840CDDC();
    v10 = v9;
  }

  else
  {
    v8 = sub_1C840CBDC();
    v10 = v11;
    (*(*(v3 - 8) + 8))(v2, v3);
  }

  v12 = v8;
  v13 = v10;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

uint64_t TypedValue.EntityValue.typedValue()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C83923B4, 0, 0);
}

uint64_t sub_1C83923B4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1C840C8CC();
  v4 = swift_allocBox();
  (*(*(v3 - 8) + 16))(v5, v2, v3);
  *v1 = v4;
  v6 = *MEMORY[0x1E69DAE58];
  sub_1C840CA1C();
  OUTLINED_FUNCTION_6();
  (*(v7 + 104))(v1, v6);
  v8 = v0[1];

  return v8();
}

uint64_t sub_1C83924C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C8311C5C;

  return TypedValue.EntityValue.typedValue()(a1);
}

uint64_t sub_1C839255C(uint64_t a1)
{
  v2 = sub_1C840CACC();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1C83926A8(v5);
}

uint64_t sub_1C8392628@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EC2A9D38;
  swift_beginAccess();
  sub_1C840CACC();
  OUTLINED_FUNCTION_6();
  return (*(v4 + 16))(a1, v1 + v3);
}

uint64_t sub_1C83926A8(uint64_t a1)
{
  v3 = qword_1EC2A9D38;
  swift_beginAccess();
  sub_1C840CACC();
  OUTLINED_FUNCTION_6();
  (*(v4 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

uint64_t ParameterSummaryEntityParameter.init(entityDefinition:parameterDefinition:identifier:defaultValue:placeholder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a6;
  v31 = a7;
  v28 = a3;
  v29 = a4;
  v27 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAD0, &qword_1C8418AB0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v26 - v11;
  v13 = sub_1C840CB6C();
  OUTLINED_FUNCTION_5();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = qword_1EC2A9D38;
  v20 = sub_1C840CACC();
  v21 = *(v20 - 8);
  v22 = v7 + v19;
  v23 = v27;
  (*(v21 + 16))(v22, v27, v20);
  (*(v15 + 16))(v18, a2, v13);
  sub_1C83379C0(a5, v12);
  v24 = sub_1C8337CF4(v18, v28, v29, v30, v31, v12);
  sub_1C832D574(a5, &qword_1EC29EAD0, &qword_1C8418AB0);
  (*(v15 + 8))(a2, v13);
  (*(v21 + 8))(v23, v20);
  return v24;
}

uint64_t sub_1C83929F0()
{
  v1 = qword_1EC2A9D38;
  sub_1C840CACC();
  OUTLINED_FUNCTION_6();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t ParameterSummaryEntityParameter.deinit()
{
  v0 = _s18WorkflowUIServices024ParameterSummaryLocationC0Cfd_0();
  v1 = qword_1EC2A9D38;
  sub_1C840CACC();
  OUTLINED_FUNCTION_6();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t ParameterSummaryEntityParameter.__deallocating_deinit()
{
  v0 = _s18WorkflowUIServices024ParameterSummaryLocationC0Cfd_0();
  v1 = qword_1EC2A9D38;
  sub_1C840CACC();
  OUTLINED_FUNCTION_6();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for ParameterSummaryEntityParameter(uint64_t a1)
{
  result = qword_1EC29ED68;
  if (!qword_1EC29ED68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C8392B98(uint64_t a1)
{
  result = sub_1C840CACC();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t Color.init(_:)(void *a1)
{
  v2 = [a1 platformColor];
  v3 = sub_1C840C26C();

  return v3;
}

id Color.wfColor(with:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C840B5EC();
  OUTLINED_FUNCTION_5();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C840BB2C();
  OUTLINED_FUNCTION_5();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C840BB1C();
  (*(v5 + 16))(v8, a1, v3);
  sub_1C840B9AC();
  sub_1C840C2FC();
  v15 = sub_1C840C30C();
  v16 = [objc_allocWithZone(MEMORY[0x1E69E09E0]) initWithCGColor_];

  (*(v11 + 8))(v14, v9);
  return v16;
}

uint64_t TypedValue.PrimitiveValue.FileValue.init(typedValue:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C840C9DC();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = sub_1C840CA1C();
  v12 = *(v11 - 8);
  if ((*(v12 + 88))(a1, v11) != *MEMORY[0x1E69DAE70])
  {
    (*(v12 + 8))(a1, v11);
LABEL_6:
    v18 = sub_1C840C97C();
    v16 = a2;
    v17 = 1;
    return __swift_storeEnumTagSinglePayload(v16, v17, 1, v18);
  }

  (*(v12 + 96))(a1, v11);
  v13 = swift_projectBox();
  (*(v6 + 16))(v10, v13, v4);
  if ((*(v6 + 88))(v10, v4) != *MEMORY[0x1E69DADD0])
  {
    (*(v6 + 8))(v10, v4);

    goto LABEL_6;
  }

  (*(v6 + 96))(v10, v4);
  v14 = sub_1C840C97C();
  OUTLINED_FUNCTION_6();
  (*(v15 + 32))(a2, v10, v14);

  v16 = a2;
  v17 = 0;
  v18 = v14;
  return __swift_storeEnumTagSinglePayload(v16, v17, 1, v18);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TypedValue.PrimitiveValue.FileValue.textValue()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D298, &unk_1C8415B80);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v18 - v1;
  sub_1C840C95C();
  v3 = sub_1C840CC0C();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_1C832D574(v2, &qword_1EC29D298, &unk_1C8415B80);
    v4 = sub_1C840C96C();
    v5 = [v4 filename];

    v6 = sub_1C840CDDC();
    v8 = v7;
  }

  else
  {
    v6 = sub_1C840CBDC();
    v8 = v9;
    (*(*(v3 - 8) + 8))(v2, v3);
  }

  if (sub_1C840CE5C() >= 25)
  {
    v10 = sub_1C83932E0(24, v6, v8);
    v6 = sub_1C83933A0(10911970, 0xA300000000000000, v10, v11, v12, v13);
    v8 = v14;
  }

  v15 = v6;
  v16 = v8;
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

uint64_t sub_1C83932E0(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1C840CE6C();
    v3 = sub_1C840CF2C();

    return v3;
  }

  return result;
}

uint64_t sub_1C83933A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1C8393AD4();

  v7 = sub_1C840CF1C();
  sub_1C840CE8C();
  return v7;
}

uint64_t TypedValue.PrimitiveValue.FileValue.typedValue()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C8393444, 0, 0);
}

uint64_t sub_1C8393444()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_1C840C9DC();
  v4 = swift_allocBox();
  v6 = v5;
  sub_1C840C97C();
  OUTLINED_FUNCTION_6();
  (*(v7 + 16))(v6, v1);
  (*(*(v3 - 8) + 104))(v6, *MEMORY[0x1E69DADD0], v3);
  *v2 = v4;
  v8 = *MEMORY[0x1E69DAE70];
  sub_1C840CA1C();
  OUTLINED_FUNCTION_6();
  (*(v9 + 104))(v2, v8);
  v10 = v0[1];

  return v10();
}

uint64_t sub_1C83935BC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C8311C5C;

  return TypedValue.PrimitiveValue.FileValue.typedValue()(a1);
}

uint64_t ParameterSummaryFileParameter.init(parameterDefinition:identifier:placeholder:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAD0, &qword_1C8418AB0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24 - v13;
  v15 = sub_1C840CB6C();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  (*(v17 + 16))(v20 - v19, a1, v15);
  sub_1C83379C0(a6, v14);
  v22 = ParameterSummaryBaseParameter.init(parameterDefinition:identifier:placeholder:defaultValue:)(v21, a2, a3, a4, a5, v14);
  sub_1C832D574(a6, &qword_1EC29EAD0, &qword_1C8418AB0);
  (*(v17 + 8))(a1, v15);
  return v22;
}

uint64_t ParameterSummaryFileParameter.init(parameterDefinition:identifier:placeholder:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a4;
  v28 = a5;
  v26 = a3;
  v10 = *(*v6 + 312);
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = sub_1C840CB6C();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1();
  v22 = v21 - v20;
  (*(v18 + 16))(v21 - v20, a1, v16);
  (*(v12 + 16))(v15, a6, v10);
  v23 = ParameterSummaryBaseParameter.init(parameterDefinition:identifier:placeholder:value:)(v22, a2, v26, v27, v28, v15);
  (*(v12 + 8))(a6, v10);
  (*(v18 + 8))(a1, v16);
  return v23;
}

uint64_t ParameterSummaryFileParameter.__deallocating_deinit()
{
  v0 = ParameterSummaryBaseParameter.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1C8393AD4()
{
  result = qword_1EC29EDF8;
  if (!qword_1EC29EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29EDF8);
  }

  return result;
}

uint64_t sub_1C8393B30(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0();
  v14 = MEMORY[0x1EEE9AC00](v13);
  (*(v16 + 16))(&v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v14);
  (*(v9 + 16))(v12, a1, a4);
  return sub_1C840B5BC();
}

uint64_t Shape.fill(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v128 = a4;
  OUTLINED_FUNCTION_0();
  v116 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_22();
  v115 = v9 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v119 = &v112 - v12;
  v161[0] = v13;
  v161[1] = MEMORY[0x1E69815C0];
  v161[2] = v14;
  v161[3] = MEMORY[0x1E6981568];
  v15 = sub_1C840B5CC();
  OUTLINED_FUNCTION_0();
  v123 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_22();
  v114 = v18 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v118 = &v112 - v21;
  OUTLINED_FUNCTION_7();
  swift_getWitnessTable();
  v22 = OUTLINED_FUNCTION_17_0();
  v127 = v23;
  v25 = type metadata accessor for GradientColorResolverView(v22, v15, v23, v24);
  v26 = a3;
  sub_1C840B64C();
  sub_1C840B85C();
  v27 = sub_1C8319BC0();
  OUTLINED_FUNCTION_6_10();
  WitnessTable = swift_getWitnessTable();
  v159 = v27;
  v160 = WitnessTable;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_17_0();
  sub_1C840B8DC();
  OUTLINED_FUNCTION_17_0();
  v131 = v25;
  v129 = v29;
  v130 = sub_1C840B85C();
  v30 = sub_1C840B85C();
  sub_1C840BC7C();
  OUTLINED_FUNCTION_0();
  v120 = v31;
  MEMORY[0x1EEE9AC00](v32);
  v117 = &v112 - v33;
  v132 = v30;
  v113 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_22();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v112 - v39;
  v124 = v41;
  v42 = a2;
  sub_1C840BC7C();
  OUTLINED_FUNCTION_0();
  v125 = v44;
  v126 = v43;
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v112 - v45;
  v47 = *a1;
  v48 = *(a1 + 8);
  v49 = MEMORY[0x1E69802C0];
  v122 = v46;
  if (v48)
  {
    if (v48 == 1)
    {
      v161[0] = v47;
      v50 = v114;
      v112 = v42;
      sub_1C8393B30(v161, 256, v42, MEMORY[0x1E69815C0], v26, MEMORY[0x1E6981568]);
      v51 = v118;
      v52 = v127;
      sub_1C8317B60(v50, v15, v127);
      v121 = *(v123 + 8);
      v123 += 8;
      v121(v50, v15);
      sub_1C8317B60(v51, v15, v52);
      OUTLINED_FUNCTION_1_0();
      v53 = swift_getWitnessTable();
      OUTLINED_FUNCTION_0_12();
      v54 = swift_getWitnessTable();
      v143 = v53;
      v144 = v54;
      OUTLINED_FUNCTION_4_10();
      v141 = swift_getWitnessTable();
      v142 = v49;
      v55 = v132;
      v56 = swift_getWitnessTable();
      v57 = v117;
      sub_1C8322590(v50, v55, v15, v56, v52, v58, v59, v60, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121);
      v139 = v56;
      v140 = v52;
      OUTLINED_FUNCTION_4_3();
      v61 = v124;
      v62 = swift_getWitnessTable();
      v63 = *(v26 + 16);
      v42 = v122;
      sub_1C832271C(v57, v61, v112, v62, v63, v64, v65, v66, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121);
      (*(v120 + 8))(v57, v61);
      v67 = v121;
      v121(v50, v15);
      v67(v118, v15);
      v68 = v63;
    }

    else
    {
      v68 = *(v26 + 16);
      v95 = v119;
      sub_1C8317B60(v121, v42, v68);
      v96 = v115;
      sub_1C8317B60(v95, v42, v68);
      OUTLINED_FUNCTION_1_0();
      v97 = swift_getWitnessTable();
      OUTLINED_FUNCTION_0_12();
      v98 = swift_getWitnessTable();
      v157 = v97;
      v158 = v98;
      OUTLINED_FUNCTION_5_10();
      v155 = swift_getWitnessTable();
      v156 = v49;
      v99 = swift_getWitnessTable();
      v52 = v127;
      v153 = v99;
      v154 = v127;
      OUTLINED_FUNCTION_4_3();
      swift_getWitnessTable();
      v100 = OUTLINED_FUNCTION_10_10();
      sub_1C8322590(v100, v101, v42, v102, v68, v103, v104, v105, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121);
      v106 = *(v116 + 8);
      v106(v96, v42);
      v106(v119, v42);
    }
  }

  else
  {
    v112 = v42;
    v69 = v42;
    v42 = v26;
    Shape.fill(_:shouldUseClearBackground:)(v47, 0, v69, v37);
    OUTLINED_FUNCTION_1_0();
    v70 = swift_getWitnessTable();
    OUTLINED_FUNCTION_0_12();
    v71 = swift_getWitnessTable();
    v137 = v70;
    v138 = v71;
    OUTLINED_FUNCTION_4_10();
    v135 = swift_getWitnessTable();
    v136 = v49;
    v72 = v132;
    v73 = swift_getWitnessTable();
    v74 = OUTLINED_FUNCTION_9_7();
    sub_1C8317B60(v74, v75, v73);
    v123 = *(v113 + 8);
    v76 = OUTLINED_FUNCTION_9_7();
    v77(v76);
    sub_1C8317B60(v40, v72, v73);
    v78 = v117;
    v79 = OUTLINED_FUNCTION_9_7();
    v80 = v15;
    v81 = v127;
    sub_1C832271C(v79, v82, v80, v73, v127, v83, v84, v85, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121);
    v133 = v73;
    v134 = v81;
    OUTLINED_FUNCTION_4_3();
    v86 = v124;
    swift_getWitnessTable();
    v68 = *(v26 + 16);
    v87 = OUTLINED_FUNCTION_10_10();
    sub_1C832271C(v87, v88, v112, v89, v68, v90, v91, v92, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121);
    (*(v120 + 8))(v78, v86);
    v93 = OUTLINED_FUNCTION_9_7();
    v94 = v123;
    (v123)(v93);
    v94(v40, v72);
    v52 = v81;
  }

  OUTLINED_FUNCTION_1_0();
  v107 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_12();
  v108 = swift_getWitnessTable();
  v151 = v107;
  v152 = v108;
  OUTLINED_FUNCTION_5_10();
  v149 = swift_getWitnessTable();
  v150 = MEMORY[0x1E69802C0];
  v147 = swift_getWitnessTable();
  v148 = v52;
  v145 = swift_getWitnessTable();
  v146 = v68;
  v109 = v126;
  v110 = swift_getWitnessTable();
  sub_1C8317B60(v42, v109, v110);
  return (*(v125 + 8))(v42, v109);
}

uint64_t get_enum_tag_for_layout_string_18WorkflowUIServices10SStackFillO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1C839454C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_1C839458C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C83945D0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t TypedValue.PrimitiveValue.PaymentMethodValue.init(typedValue:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C840C9DC();
  OUTLINED_FUNCTION_5();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = sub_1C840CA1C();
  v12 = *(v11 - 8);
  if ((*(v12 + 88))(a1, v11) != *MEMORY[0x1E69DAE70])
  {
    (*(v12 + 8))(a1, v11);
LABEL_6:
    v18 = sub_1C840C90C();
    v16 = a2;
    v17 = 1;
    return __swift_storeEnumTagSinglePayload(v16, v17, 1, v18);
  }

  (*(v12 + 96))(a1, v11);
  v13 = swift_projectBox();
  (*(v6 + 16))(v10, v13, v4);
  if ((*(v6 + 88))(v10, v4) != *MEMORY[0x1E69DAD70])
  {
    (*(v6 + 8))(v10, v4);

    goto LABEL_6;
  }

  (*(v6 + 96))(v10, v4);
  v14 = sub_1C840C90C();
  OUTLINED_FUNCTION_6();
  (*(v15 + 32))(a2, v10, v14);

  v16 = a2;
  v17 = 0;
  v18 = v14;
  return __swift_storeEnumTagSinglePayload(v16, v17, 1, v18);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TypedValue.PrimitiveValue.PaymentMethodValue.textValue()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D298, &unk_1C8415B80);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v17 - v1;
  sub_1C840C8FC();
  v3 = sub_1C840CC0C();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_1C832D574(v2, &qword_1EC29D298, &unk_1C8415B80);
    v4 = sub_1C840C8EC();
    if (v5)
    {
      v6 = v4;
      v7 = v5;
    }

    else
    {
      sub_1C840CE2C("Unknown Payment Method", 22);
      if (qword_1EC29CF30 != -1)
      {
        swift_once();
      }

      v9 = qword_1EC29EA60;
      v10 = sub_1C840CD9C();
      v11 = sub_1C840CD9C();

      v12 = [v9 localizedStringForKey:v10 value:v11 table:0];

      v6 = sub_1C840CDDC();
      v7 = v13;
    }
  }

  else
  {
    v6 = sub_1C840CBDC();
    v7 = v8;
    (*(*(v3 - 8) + 8))(v2, v3);
  }

  v14 = v6;
  v15 = v7;
  result._object = v15;
  result._countAndFlagsBits = v14;
  return result;
}

uint64_t TypedValue.PrimitiveValue.PaymentMethodValue.typedValue()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C8394A54, 0, 0);
}

uint64_t sub_1C8394A54()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_1C840C9DC();
  v4 = swift_allocBox();
  v6 = v5;
  sub_1C840C90C();
  OUTLINED_FUNCTION_6();
  (*(v7 + 16))(v6, v1);
  (*(*(v3 - 8) + 104))(v6, *MEMORY[0x1E69DAD70], v3);
  *v2 = v4;
  v8 = *MEMORY[0x1E69DAE70];
  sub_1C840CA1C();
  OUTLINED_FUNCTION_6();
  (*(v9 + 104))(v2, v8);
  v10 = v0[1];

  return v10();
}

uint64_t sub_1C8394BAC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C8311C5C;

  return TypedValue.PrimitiveValue.PaymentMethodValue.typedValue()(a1);
}

uint64_t ParameterSummaryPaymentMethodParameter.init(parameterDefinition:identifier:placeholder:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAD0, &qword_1C8418AB0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24 - v13;
  v15 = sub_1C840CB6C();
  OUTLINED_FUNCTION_5();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  (*(v17 + 16))(v20 - v19, a1, v15);
  sub_1C83379C0(a6, v14);
  v22 = sub_1C8337C1C(v21, a2, a3, a4, a5, v14);
  sub_1C832D574(a6, &qword_1EC29EAD0, &qword_1C8418AB0);
  (*(v17 + 8))(a1, v15);
  return v22;
}

uint64_t ParameterSummaryPaymentMethodParameter.init(parameterDefinition:identifier:placeholder:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1C840C90C();
  OUTLINED_FUNCTION_5();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = sub_1C840CB6C();
  OUTLINED_FUNCTION_5();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  v23 = v22 - v21;
  (*(v19 + 16))(v22 - v21, a1, v17);
  (*(v12 + 16))(v16, a6, v10);
  v24 = sub_1C833848C(v23, a2, a3, a4, a5, v16);
  (*(v12 + 8))(a6, v10);
  (*(v19 + 8))(a1, v17);
  return v24;
}

uint64_t ParameterSummaryPaymentMethodParameter.__deallocating_deinit()
{
  v0 = _s18WorkflowUIServices024ParameterSummaryLocationC0Cfd_0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for ParameterSummaryPaymentMethodParameter(uint64_t a1)
{
  result = qword_1EC29EE00;
  if (!qword_1EC29EE00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id UIView.platformLayer.getter()
{
  v1 = [v0 layer];

  return v1;
}

id (*UIView.platformAlpha.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  [v1 alpha];
  *a1 = v3;
  return sub_1C839517C;
}

uint64_t SStackView.top.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SStackView.bottom.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SStackView.init(top:bottom:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t SStackView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v4 = *(a1 + 24);
  sub_1C840B85C();
  sub_1C840B85C();
  v5 = *(a1 + 16);
  sub_1C840B85C();
  OUTLINED_FUNCTION_10_2();
  sub_1C840B85C();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_10_2();
  sub_1C840C63C();
  OUTLINED_FUNCTION_1_3();
  swift_getWitnessTable();
  v6 = sub_1C840C59C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v18 - v11;
  v18[4] = v5;
  v18[5] = v4;
  v13 = *v2;
  v14 = v2[1];
  v19 = *(a1 + 32);
  v20 = v13;
  v21 = v14;
  sub_1C840C5FC();
  sub_1C840C58C();
  OUTLINED_FUNCTION_8();
  WitnessTable = swift_getWitnessTable();
  sub_1C8317B60(v9, v6, WitnessTable);
  v16 = *(v7 + 8);
  v16(v9, v6);
  sub_1C8317B60(v12, v6, WitnessTable);
  return (v16)(v12, v6);
}

uint64_t sub_1C839541C@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, void (*a3)(__n128)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v69 = a6;
  v56 = a3;
  v64 = a2;
  v65 = a1;
  v70 = a8;
  v61 = a4;
  v66 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v59 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1C840B85C();
  v68 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v57 = &v51 - v11;
  v63 = sub_1C840B85C();
  v67 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v58 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v51 - v14;
  v15 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C840B85C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v51 - v21;
  v23 = sub_1C840B85C();
  v71 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v51 = &v51 - v28;
  v56(v27);
  sub_1C840C0DC();
  (*(v15 + 8))(v18, a5);
  LOBYTE(v75) = 0;
  v53 = xmmword_1C841A410;
  v76 = xmmword_1C841A410;
  v74[8] = a7;
  v74[9] = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1CCA74BF0](&v75, v19, &type metadata for SStackEffect, WitnessTable);
  (*(v20 + 8))(v22, v19);
  v30 = sub_1C83961E4();
  v74[6] = WitnessTable;
  v74[7] = v30;
  v31 = v23;
  v52 = v23;
  v55 = swift_getWitnessTable();
  v32 = v51;
  sub_1C8317B60(v25, v31, v55);
  v33 = *(v71 + 8);
  v54 = v71 + 8;
  v56 = v33;
  v34 = (v33)(v25, v31);
  v35 = v59;
  v65(v34);
  v36 = v57;
  v37 = v61;
  v38 = v69;
  sub_1C840C0DC();
  (*(v66 + 8))(v35, v37);
  LOBYTE(v75) = 1;
  v76 = v53;
  v74[4] = v38;
  v74[5] = MEMORY[0x1E697F568];
  v39 = v60;
  v40 = swift_getWitnessTable();
  v41 = v58;
  MEMORY[0x1CCA74BF0](&v75, v39, &type metadata for SStackEffect, v40);
  (*(v68 + 8))(v36, v39);
  v74[2] = v40;
  v74[3] = v30;
  v42 = v63;
  v43 = swift_getWitnessTable();
  v44 = v62;
  v45 = v41;
  sub_1C8317B60(v41, v42, v43);
  v46 = v67;
  v47 = *(v67 + 8);
  v47(v45, v42);
  v48 = v52;
  (*(v71 + 16))(v25, v32, v52);
  v75 = v25;
  (*(v46 + 16))(v45, v44, v42);
  *&v76 = v45;
  v74[0] = v48;
  v74[1] = v42;
  v72 = v55;
  v73 = v43;
  sub_1C8375E44(&v75, 2, v74);
  v47(v44, v42);
  v49 = v56;
  (v56)(v32, v48);
  v47(v45, v42);
  return (v49)(v25, v48);
}

uint64_t sub_1C8395BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C8395BF0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1C8395C30(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for SStackEffect(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[24])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SStackEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1C8395D34@<X0>(char a1@<W0>, void *a2@<X8>, double a3@<D0>, double a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v11 = -a4;
  if ((a1 & 1) == 0)
  {
    v11 = a4;
  }

  *v13 = 0x3FF0000000000000uLL;
  *&v13[16] = 0;
  *&v13[24] = 0x3FF0000000000000;
  *&v13[32] = 0uLL;
  CGAffineTransformTranslate(&v14, v13, 0.0, v11 * (a6 * 0.229));
  *v13 = v14;
  CGAffineTransformTranslate(&v14, v13, (1.0 - a6) * 0.5 * a3, (1.0 - a6) * 0.5 * a4);
  *v13 = v14;
  CGAffineTransformScale(&v14, v13, a6, a6);
  *v13 = v14;
  CGAffineTransformTranslate(&v14, v13, 0.0, (1.0 - a5) * 0.5 * a4);
  *v13 = v14;
  CGAffineTransformScale(&v14, v13, 1.0, a5);
  *v13 = v14;
  CGAffineTransformTranslate(&v14, v13, a3 * 0.5, a4 * 0.5);
  *v13 = v14;
  CGAffineTransformRotate(&v14, v13, -0.785398163);
  *v13 = v14;
  CGAffineTransformTranslate(&v14, v13, a3 * -0.5, a4 * -0.5);
  sub_1C840BBDC();
  return memcpy(a2, v13, 0x48uLL);
}

void (*sub_1C8395F50(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C840B54C();
  return sub_1C8391954;
}

uint64_t sub_1C8395FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C8396238();

  return MEMORY[0x1EEDDEA98](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_1C8396044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C8396238();

  return MEMORY[0x1EEDDEA80](a1, a2, a3, a4, a5, v10);
}

unint64_t sub_1C8396134()
{
  result = qword_1EC29EE90;
  if (!qword_1EC29EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29EE90);
  }

  return result;
}

unint64_t sub_1C839618C()
{
  result = qword_1EC29EE98;
  if (!qword_1EC29EE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29EE98);
  }

  return result;
}

unint64_t sub_1C83961E4()
{
  result = qword_1EC29EEA0;
  if (!qword_1EC29EEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29EEA0);
  }

  return result;
}

unint64_t sub_1C8396238()
{
  result = qword_1EC29EEA8;
  if (!qword_1EC29EEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29EEA8);
  }

  return result;
}

double sub_1C839628C()
{
  qword_1EC29EED0 = 0;
  result = 0.0;
  xmmword_1EC29EEB0 = 0u;
  unk_1EC29EEC0 = 0u;
  return result;
}

uint64_t sub_1C83962A4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC29CDA8 != -1)
  {
    swift_once();
  }

  return sub_1C8396400(&xmmword_1EC29EEB0, a1);
}

void *EnvironmentValues.asyncViewWaiter.getter()
{
  sub_1C8396358();

  return sub_1C840BB3C();
}

unint64_t sub_1C8396358()
{
  result = qword_1EC29CDA0;
  if (!qword_1EC29CDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29CDA0);
  }

  return result;
}

uint64_t EnvironmentValues.asyncViewWaiter.setter(uint64_t a1)
{
  sub_1C8396400(a1, v3);
  sub_1C8396358();
  sub_1C840BB4C();
  return sub_1C8396470(a1);
}

uint64_t sub_1C8396400(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DE58, qword_1C841A5F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8396470(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DE58, qword_1C841A5F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*EnvironmentValues.asyncViewWaiter.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[15] = v1;
  v3[16] = sub_1C8396358();
  sub_1C840BB3C();
  return sub_1C8396554;
}

void sub_1C8396554(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1C8396400(*a1, v2 + 40);
    sub_1C8396400(v2 + 40, v2 + 80);
    sub_1C840BB4C();
    sub_1C8396470(v2 + 40);
  }

  else
  {
    sub_1C8396400(*a1, v2 + 40);
    sub_1C840BB4C();
  }

  sub_1C8396470(v2);

  free(v2);
}

id VariablePillLayoutMetrics.init(name:icon:font:height:)(uint64_t a1, uint64_t a2, void *a3, void *a4, double a5)
{
  *&v5[OBJC_IVAR___WFVariablePillLayoutMetrics_leadingPadding] = round(dbl_1C841A670[a3 == 0] * a5);
  v9 = round(a5 * 0.8);
  v10 = &v5[OBJC_IVAR___WFVariablePillLayoutMetrics_iconSize];
  v11.f64[0] = 0.0;
  if (a3)
  {
    v11.f64[0] = v9;
  }

  *v10 = v11.f64[0];
  v10[1] = v9;
  v11.f64[1] = v9;
  *&v5[OBJC_IVAR___WFVariablePillLayoutMetrics_iconDisplaySize] = vdivq_f64(v11, vdupq_n_s64(0x3FE999999999999AuLL));
  *&v5[OBJC_IVAR___WFVariablePillLayoutMetrics_spacing] = round(a5 * 0.1);
  if (a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = WFSmallVariableTitleFont();
  }

  v13 = OBJC_IVAR___WFVariablePillLayoutMetrics_textFont;
  *&v5[OBJC_IVAR___WFVariablePillLayoutMetrics_textFont] = v12;
  v14 = a4;
  v15 = sub_1C840CD9C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29F120, &qword_1C841A690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C8414660;
  v17 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v18 = *&v5[v13];
  *(inited + 64) = sub_1C83968F0();
  *(inited + 40) = v18;
  type metadata accessor for Key(0);
  sub_1C8396934();
  v19 = v17;
  v20 = v18;
  v21 = sub_1C840CD3C();
  v22 = sub_1C8396B30(v21, v15);
  v24 = v23;

  v25 = &v5[OBJC_IVAR___WFVariablePillLayoutMetrics_textSize];
  *v25 = v22;
  *(v25 + 1) = v24;
  *&v5[OBJC_IVAR___WFVariablePillLayoutMetrics_trailingPadding] = round(a5 * 0.2);
  *&v5[OBJC_IVAR___WFVariablePillLayoutMetrics_cornerRadius] = round(a5 * 0.27);
  v28.receiver = v5;
  v28.super_class = type metadata accessor for VariablePillLayoutMetrics();
  v26 = objc_msgSendSuper2(&v28, sel_init);

  return v26;
}

unint64_t sub_1C83968F0()
{
  result = qword_1EC29EF00;
  if (!qword_1EC29EF00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC29EF00);
  }

  return result;
}

unint64_t sub_1C8396934()
{
  result = qword_1EC29F130;
  if (!qword_1EC29F130)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F130);
  }

  return result;
}

id VariablePillLayoutMetrics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VariablePillLayoutMetrics.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for VariablePillLayoutMetrics();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double sub_1C8396B30(uint64_t a1, void *a2)
{
  type metadata accessor for Key(0);
  sub_1C8396934();
  v3 = sub_1C840CD1C();

  [a2 sizeWithAttributes_];
  v5 = v4;

  return v5;
}

id sub_1C8396C48(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_79_0();
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1C840CD9C();

  v4 = OUTLINED_FUNCTION_78_1();
  v6 = [v4 v5];

  return v6;
}

uint64_t sub_1C8396CE0(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_20_6();
  return OUTLINED_FUNCTION_44_1();
}

void sub_1C8396D60(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C8396DD4(v1, v3);
}

void *sub_1C8396D90()
{
  v1 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_textSnapshotView;
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_17_1();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C8396DD4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_textSnapshotView;
  OUTLINED_FUNCTION_39_1(v2 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_textSnapshotView, a2);
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

double sub_1C8396E6C()
{
  v1 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_maxHeight;
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_17_1();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C8396EA8(double a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_maxHeight;
  result = OUTLINED_FUNCTION_39_1(v3 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_maxHeight, a3);
  *(v3 + v5) = a1;
  return result;
}

uint64_t sub_1C8396F38()
{
  v1 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView____lazy_storage___sinusoidalScaleOscillationAnimator;
  if (*&v0[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView____lazy_storage___sinusoidalScaleOscillationAnimator])
  {
    v2 = *&v0[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView____lazy_storage___sinusoidalScaleOscillationAnimator];
  }

  else
  {
    v3 = v0;
    type metadata accessor for SinusoidalScaleOscillationAnimator();
    v2 = swift_allocObject();
    v4 = v3;
    sub_1C83A3E24(v4, v5);
    *&v3[v1] = v2;
  }

  return v2;
}

double sub_1C8396FB8()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
  [v0 scaledValueForValue_];
  v2 = v1;

  return v2 + 2.0;
}

double sub_1C8397028()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
  [v0 scaledValueForValue_];
  v2 = v1;

  return v2;
}

void sub_1C8397094()
{
  v1 = [*(v0 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_textView) font];
  if (v1)
  {
    v2 = v1;
    [v1 lineHeight];
  }
}

uint64_t sub_1C8397100(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = swift_unknownObjectRetain();
  return sub_1C8397188(v3, v2);
}

uint64_t sub_1C839713C()
{
  OUTLINED_FUNCTION_17_1();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1C8397188(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_35_3(OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_delegate);
  swift_beginAccess();
  *(v2 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C83971EC(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return OUTLINED_FUNCTION_76_1();
}

uint64_t sub_1C8397274@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_1C8397374();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1C83A6708;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

double sub_1C83972E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1C83A66D0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1C832AD1C(v1, v2);
  return sub_1C83973CC(v4, v3);
}

uint64_t sub_1C8397374()
{
  v1 = (v0 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_onSizeChanged);
  OUTLINED_FUNCTION_17_1();
  swift_beginAccess();
  v2 = *v1;
  sub_1C832AD1C(*v1, v1[1]);
  return v2;
}

double sub_1C83973CC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_35_3(OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_onSizeChanged);
  swift_beginAccess();
  v5 = *v2;
  v6 = v2[1];
  *v2 = a1;
  v2[1] = a2;
  return sub_1C8381E78(v5, v6);
}

uint64_t sub_1C8397470(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

void sub_1C83974B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_placeholderLabel);
  v2 = (v0 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_placeholder);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  sub_1C83A6C74(v4, v3, v1);
}

uint64_t sub_1C8397538(void *a1)
{
  v2 = (v1 + *a1);
  OUTLINED_FUNCTION_17_1();
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_1C83975A8(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  *v8 = a1;
  v8[1] = a2;

  return a4(v9);
}

uint64_t sub_1C8397618(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_20_6();
  return OUTLINED_FUNCTION_44_1();
}

void *sub_1C8397680@<X0>(void *a1@<X8>)
{
  result = sub_1C83976F8(&v3);
  *a1 = v3;
  return result;
}

void sub_1C83976BC(id *a1)
{
  v3 = *a1;
  v1 = v3;
  sub_1C8397758(&v3, v2);
}

id sub_1C83976F8@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_accessoryStyle;
  OUTLINED_FUNCTION_17_1();
  swift_beginAccess();
  v4 = *(v1 + v3);
  *a1 = v4;

  return v4;
}

void sub_1C8397758(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_accessoryStyle;
  OUTLINED_FUNCTION_39_1(v2 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_accessoryStyle, a2);
  v5 = *(v2 + v4);
  *(v2 + v4) = v3;

  sub_1C8399570();
}

uint64_t sub_1C83977A8(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_20_6();
  return OUTLINED_FUNCTION_44_1();
}

uint64_t sub_1C8397810(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_1C8397854()
{
  v1 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_suppressDoneButton;
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_17_1();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C839789C()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_50_1(v2);
  v3 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_suppressDoneButton;
  OUTLINED_FUNCTION_17_1();
  swift_beginAccess();
  *(v1 + 32) = *(v0 + v3);
  return OUTLINED_FUNCTION_76_1();
}

void sub_1C8397924(char a1, uint64_t *a2)
{
  v3 = a1 & 1;
  v4 = *a2;
  OUTLINED_FUNCTION_17_1();
  swift_beginAccess();
  if (v2[v4] != v3)
  {
    [v2 bounds];
    v6.origin.x = 0.0;
    v6.origin.y = 0.0;
    v6.size.width = 0.0;
    v6.size.height = 0.0;
    if (!CGRectEqualToRect(v5, v6))
    {
      sub_1C839B914(0);
    }
  }
}

uint64_t sub_1C83979A4()
{
  v1 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_suppressSendButton;
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_17_1();
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1C83979EC(char a1, uint64_t *a2)
{
  v5 = *a2;
  OUTLINED_FUNCTION_39_1(v2 + *a2, a2);
  v6 = *(v2 + v5);
  *(v2 + v5) = a1;
  sub_1C8397924(v6, a2);
}

uint64_t sub_1C8397A3C()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_50_1(v2);
  v3 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_suppressSendButton;
  OUTLINED_FUNCTION_17_1();
  swift_beginAccess();
  *(v1 + 32) = *(v0 + v3);
  return OUTLINED_FUNCTION_76_1();
}

char *WFIntelligencePromptView.__allocating_init(suppressSendButton:suppressDoneButton:symbolName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = a1;
  v9 = objc_allocWithZone(v4);
  return WFIntelligencePromptView.init(suppressSendButton:suppressDoneButton:symbolName:)(v8, v7, a3, a4);
}

char *WFIntelligencePromptView.init(suppressSendButton:suppressDoneButton:symbolName:)(char a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v9 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_textView;
  *(v4 + v9) = [objc_allocWithZone(MEMORY[0x1E69DD168]) init];
  v10 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_textClippingView;
  *(v4 + v10) = [objc_allocWithZone(MEMORY[0x1E69DD250]) &selRef_primaryColor];
  *(v4 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_textSnapshotView) = 0;
  *(v4 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_maxHeight) = 0x404E000000000000;
  v11 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pillViewTransformContainer;
  *(v4 + v11) = [objc_allocWithZone(MEMORY[0x1E69DD250]) &selRef_primaryColor];
  v12 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_detachedButtonTransformContainer;
  *(v4 + v12) = [objc_allocWithZone(MEMORY[0x1E69DD250]) &selRef_primaryColor];
  v13 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pillView;
  *(v4 + v13) = [objc_allocWithZone(MEMORY[0x1E69DD250]) &selRef_primaryColor];
  v14 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_detachedButton;
  *(v4 + v14) = [objc_allocWithZone(MEMORY[0x1E69DD250]) &selRef_primaryColor];
  v15 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pillGlassHighlightView;
  type metadata accessor for WFSDFView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v4 + v15) = [objc_allocWithZone(ObjCClassFromMetadata) &selRef_primaryColor];
  v17 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pillGlassHighlightEdgeView;
  *(v4 + v17) = [objc_allocWithZone(ObjCClassFromMetadata) &selRef_primaryColor];
  *(v4 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView____lazy_storage___sinusoidalScaleOscillationAnimator) = 0;
  v18 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_leadingSymbolView;
  v19 = type metadata accessor for WFIntelligenceSymbolView();
  *(v4 + v18) = [objc_allocWithZone(v19) &selRef_primaryColor];
  v20 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_accessoryButton;
  *(v4 + v20) = [objc_opt_self() buttonWithType_];
  v21 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_accessoryButtonSymbolView;
  *(v4 + v21) = [objc_allocWithZone(v19) &selRef_primaryColor];
  v22 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_placeholderLabel;
  *(v4 + v22) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) &selRef_primaryColor];
  v23 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_detachedButtonSymbolView;
  *(v4 + v23) = [objc_allocWithZone(v19) &selRef_primaryColor];
  *(v4 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_horizontalPadding) = 0x4030000000000000;
  *(v4 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_verticalPadding) = 0x402E000000000000;
  *(v4 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_leadingSymbolSpacing) = 0x4010000000000000;
  *(v4 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_accessoryButtonSpacing) = 0x4020000000000000;
  *(v4 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_detachedButtonSpacing) = 0x4020000000000000;
  v24 = (v4 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_detachedButtonHiddenScale);
  CGAffineTransformMakeScale(&v205, 0.96, 0.94);
  v25 = *&v205.c;
  v26 = *&v205.tx;
  *v24 = *&v205.a;
  v24[1] = v25;
  v24[2] = v26;
  v27 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pendingTransitionWorkItems;
  sub_1C840CCEC();
  *(v4 + v27) = sub_1C840CD3C();
  *(v4 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_previousLineCount) = 1;
  *(v4 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v28 = (v4 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_onSizeChanged);
  *v28 = 0;
  v28[1] = 0;
  OUTLINED_FUNCTION_48_2(OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_placeholder);
  v29 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_accessoryStyle;
  v203 = objc_opt_self();
  *(v4 + v29) = [v203 labelColor];
  v30 = v4 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_cachedBounds;
  *v30 = 0u;
  *(v30 + 16) = 0u;
  *(v30 + 32) = 1;
  *(v4 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_isHighlightEffectActive) = 0;
  *(v4 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_isDetachedButtonVisible) = 0;
  *(v4 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pausePlaceholderLayout) = 0;
  *(v4 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pausePlaceholderVisibilityUpdates) = 0;
  *(v4 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pauseDetachedButtonVisibilityUpdates) = 0;
  *(v4 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pauseTextInput) = 0;
  *(v4 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_suppressSendButton) = a1;
  *(v4 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_suppressDoneButton) = v7;
  v31 = (v4 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_symbolName);
  *v31 = a3;
  v31[1] = a4;
  v201 = type metadata accessor for WFIntelligencePromptView();

  v32 = OUTLINED_FUNCTION_36_2();
  v35 = objc_msgSendSuper2(v33, v34, v32);
  v36 = [v203 clearColor];
  [v35 setBackgroundColor_];

  v37 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_detachedButtonTransformContainer;
  [v35 addSubview_];
  v38 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pillViewTransformContainer;
  [v35 &selRef_cache];
  v200 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_detachedButton;
  [*&v35[v37] &selRef_cache];
  v39 = *&v35[v38];
  v40 = *&v35[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pillView];
  v41 = v35;
  v42 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pillView;
  v204 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pillView;
  [v39 &selRef_cache];
  *&v205.d = sub_1C840B4CC();
  *&v205.tx = MEMORY[0x1E69DBEA8];
  __swift_allocate_boxed_opaque_existential_1(&v205);
  v199 = v41;
  v43 = v41;
  sub_1C840B4BC();
  sub_1C840D24C();

  v44 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_textClippingView;
  v196 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_textClippingView;
  [*&v43[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_textClippingView] setClipsToBounds_];
  [*&v41[v42] &selRef_cache];
  v45 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pillGlassHighlightView;
  v46 = [*&v43[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pillGlassHighlightView] layer];
  v47 = [objc_allocWithZone(MEMORY[0x1E6979460]) &selRef_primaryColor];
  v48 = OUTLINED_FUNCTION_54_0();
  [v48 v49];

  v50 = [*&v43[v45] &selRef_maximumLineHeight];
  [v50 setSmoothness_];

  v51 = [*&v43[v45] &selRef_maximumLineHeight];
  v52 = sub_1C840B30C();
  v53 = OUTLINED_FUNCTION_34_3();
  v54 = OUTLINED_FUNCTION_58_1(v53);
  [v51 setValue:v52 forKeyPath:v54];

  v55 = [*&v43[v45] &selRef_maximumLineHeight];
  v56 = sub_1C840B30C();
  v57 = sub_1C840CD9C();
  [v55 &selRef:v56 setHidden:v57];

  v58 = [*&v43[v45] &selRef_maximumLineHeight];
  v59 = sub_1C840B30C();
  v60 = sub_1C840CD9C();
  [v58 &selRef:v59 setHidden:v60];

  v61 = [*&v43[v45] &selRef_maximumLineHeight];
  v62 = sub_1C840B30C();
  v63 = OUTLINED_FUNCTION_34_3();
  v64 = OUTLINED_FUNCTION_57_0(v63);
  [v61 &selRef:v62 setHidden:v64];

  v65 = OUTLINED_FUNCTION_59_0();
  v66 = sub_1C840B30C();
  OUTLINED_FUNCTION_68_1();
  v67 = sub_1C840CD9C();
  [v65 &selRef:v66 setHidden:v67];

  v68 = OUTLINED_FUNCTION_59_0();
  LODWORD(v69) = 1.5;
  [v68 setGain_];

  [*&v43[v45] setAlpha_];
  [*&v43[v196] addSubview_];
  v70 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pillGlassHighlightEdgeView;
  v71 = OUTLINED_FUNCTION_59_0();
  v72 = [objc_allocWithZone(MEMORY[0x1E6979460]) init];
  [v71 setEffect_];

  v73 = OUTLINED_FUNCTION_59_0();
  [v73 setSmoothness_];

  v74 = OUTLINED_FUNCTION_59_0();
  v75 = sub_1C840B30C();
  v76 = OUTLINED_FUNCTION_34_3();
  v77 = OUTLINED_FUNCTION_58_1(v76);
  v78 = OUTLINED_FUNCTION_22_5();
  [v78 v79];

  v80 = OUTLINED_FUNCTION_59_0();
  v81 = sub_1C840B30C();
  v82 = sub_1C840CD9C();
  v83 = OUTLINED_FUNCTION_22_5();
  [v83 v84];

  v85 = [*&v43[v70] &selRef_maximumLineHeight];
  sub_1C840B30C();
  OUTLINED_FUNCTION_79_0();
  v86 = sub_1C840CD9C();
  v87 = OUTLINED_FUNCTION_22_5();
  [v87 v88];

  v89 = [*&v43[v70] &selRef_maximumLineHeight];
  v90 = sub_1C840B30C();
  v91 = OUTLINED_FUNCTION_34_3();
  v92 = OUTLINED_FUNCTION_57_0(v91);
  v93 = OUTLINED_FUNCTION_22_5();
  [v93 v94];

  v95 = [*&v43[v70] &selRef_maximumLineHeight];
  sub_1C840B30C();
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_68_1();
  v96 = sub_1C840CD9C();
  v97 = OUTLINED_FUNCTION_22_5();
  [v97 v98];

  v99 = [*&v43[v70] &selRef_maximumLineHeight];
  LODWORD(v100) = 3.0;
  [v99 setGain_];

  [*&v43[v70] setAlpha_];
  [*&v43[v196] addSubview_];
  v101 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_textView;
  v102 = *&v43[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_textView];
  v103 = [v203 clearColor];
  v104 = OUTLINED_FUNCTION_54_0();
  [v104 v105];

  v106 = *&v43[v101];
  v107 = [v203 labelColor];
  v108 = OUTLINED_FUNCTION_54_0();
  [v108 v109];

  [*&v43[v101] setScrollEnabled_];
  [*&v43[v101] setShowsVerticalScrollIndicator_];
  [*&v43[v101] setAutocorrectionType_];
  [*&v43[v101] setDelegate_];
  v110 = OUTLINED_FUNCTION_67_1();
  [v111 v112];
  v113 = [*&v43[v101] textContainer];
  [v113 setLineFragmentPadding_];

  v198 = v101;
  [*&v43[v101] setWritingToolsBehavior_];
  [*&v43[v196] &selRef_cache];
  [*&v199[v204] &selRef_cache];
  v114 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_accessoryButton;
  v115 = *&v43[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_accessoryButton];
  v116 = [v203 clearColor];
  v117 = OUTLINED_FUNCTION_54_0();
  [v117 v118];

  v119 = *&v43[v114];
  [v119 addTarget:v43 action:sel_accessoryButtonTapped forControlEvents:64];

  [*&v43[v114] setAlpha_];
  v120 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_accessoryButtonSymbolView;
  [*&v43[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_accessoryButtonSymbolView] setUserInteractionEnabled_];
  [*&v43[v114] &selRef_cache];
  v121 = sub_1C8312180(0, &qword_1EC29DAE0, 0x1E6979378);
  v122 = sub_1C840CDDC();
  v124 = sub_1C8396C48(v122, v123);
  v125 = sub_1C840B30C();
  v126 = OUTLINED_FUNCTION_31_4();
  [v126 v127];

  v128 = sub_1C840D02C();
  v129 = OUTLINED_FUNCTION_31_4();
  [v129 v130];

  v131 = sub_1C840D02C();
  v132 = OUTLINED_FUNCTION_31_4();
  [v132 v133];

  v134 = sub_1C840CD9C();
  v135 = OUTLINED_FUNCTION_31_4();
  [v135 v136];

  v137 = sub_1C840CD9C();
  v195 = *MEMORY[0x1E6979B60];
  v138 = OUTLINED_FUNCTION_31_4();
  [v138 v139];

  v140 = [*&v43[v114] layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F060, &qword_1C84166D0);
  v141 = swift_allocObject();
  *(v141 + 16) = xmmword_1C8414660;
  *(v141 + 56) = v121;
  v142 = v121;
  *(v141 + 32) = v124;
  v194 = v124;
  sub_1C83A6594(v141, v140, &selRef_setFilters_);

  [*&v199[v204] addSubview_];
  v143 = *&v43[v114];
  sub_1C8312180(0, &qword_1EC29F068, 0x1E69DC628);
  OUTLINED_FUNCTION_16_7();
  *(swift_allocObject() + 16) = v43;
  v144 = v43;
  v145 = v143;
  v146 = OUTLINED_FUNCTION_13_8();
  [v145 addAction:v146 forControlEvents:1];

  v147 = *&v43[v114];
  OUTLINED_FUNCTION_16_7();
  *(swift_allocObject() + 16) = v144;
  v148 = v144;
  v149 = v147;
  v150 = OUTLINED_FUNCTION_13_8();
  [v149 addAction:v150 forControlEvents:16];

  v151 = *&v43[v114];
  OUTLINED_FUNCTION_16_7();
  v152 = swift_allocObject();
  v152[2] = v148;
  v153 = v151;
  v154 = OUTLINED_FUNCTION_13_8();
  [v153 addAction:v154 forControlEvents:352];

  v155 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_detachedButtonSymbolView;
  if (a2)
  {
    v156 = 0.0;
  }

  else
  {
    v156 = 1.0;
  }

  [*&v148[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_detachedButtonSymbolView] setAlpha_];
  [*&v199[v200] addSubview_];
  v157 = sub_1C840CDDC();
  v159 = sub_1C8396C48(v157, v158);
  sub_1C840B30C();
  v160 = OUTLINED_FUNCTION_19_6();
  [v160 v161];

  sub_1C840D02C();
  v162 = OUTLINED_FUNCTION_19_6();
  [v162 v163];

  sub_1C840D02C();
  v164 = OUTLINED_FUNCTION_19_6();
  [v164 v165];

  sub_1C840CD9C();
  v166 = OUTLINED_FUNCTION_19_6();
  [v166 v167];

  v168 = sub_1C840CD9C();
  v169 = OUTLINED_FUNCTION_31_4();
  [v169 v170];

  v171 = [*&v148[v155] layer];
  v172 = swift_allocObject();
  *(v172 + 16) = xmmword_1C8414660;
  *(v172 + 56) = v142;
  *(v172 + 32) = v159;
  v197 = v159;
  sub_1C83A6594(v172, v171, &selRef_setFilters_);

  *&v205.d = v201;
  *&v205.a = v148;
  v173 = objc_allocWithZone(MEMORY[0x1E69DD060]);
  v174 = v148;
  v175 = sub_1C83A51CC(&v205, sel_detachedButtonTapped);
  [*&v199[v200] addGestureRecognizer_];
  [*&v199[v200] setUserInteractionEnabled_];
  v176 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_placeholderLabel;
  v177 = *&v174[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_placeholderLabel];
  v178 = &v174[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_placeholder];
  OUTLINED_FUNCTION_17_1();
  swift_beginAccess();
  v180 = *v178;
  v179 = v178[1];

  sub_1C83A6C74(v180, v179, v177);
  v181 = *&v174[v176];
  v182 = [v203 labelColor];
  v183 = [v182 colorWithAlphaComponent_];

  [v181 setTextColor_];
  v184 = [*&v174[v176] layer];
  [v184 setCompositingFilter_];

  v185 = [*&v174[v176] layer];
  [v185 setAllowsGroupOpacity_];

  v186 = [*&v174[v176] layer];
  [v186 setAllowsGroupBlending_];

  [*&v174[v176] setNumberOfLines_];
  [*&v174[v176] setAdjustsFontForContentSizeCategory_];
  [*&v199[v204] addSubview_];
  result = sub_1C83A5A1C(&v43[v198]);
  if (v188)
  {
    v189 = result;
    v190 = v188;

    v191 = HIBYTE(v190) & 0xF;
    if ((v190 & 0x2000000000000000) == 0)
    {
      v191 = v189 & 0xFFFFFFFFFFFFLL;
    }

    v192 = (v191 == 0) & (a2 ^ 1);
    v174[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_isDetachedButtonVisible] = v192;
    [*&v199[v200] setHidden_];
    sub_1C8399B8C();
    sub_1C8399570();
    sub_1C83996E8();
    sub_1C83A0D54();
    v193 = [objc_opt_self() defaultCenter];
    [v193 addObserver:v174 selector:sel_contentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];

    return v174;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C8398ED0(double a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_16_7();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  v9 = objc_allocWithZone(MEMORY[0x1E69DD278]);
  v10 = a3;
  v11 = sub_1C83A5104(a5, v8, a1, 1.0);
  [v11 startAnimation];
}

void sub_1C8398F74()
{
  v1 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_textView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DD168]) init];
  v2 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_textClippingView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *(v0 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_textSnapshotView) = 0;
  *(v0 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_maxHeight) = 0x404E000000000000;
  v3 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pillViewTransformContainer;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v4 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_detachedButtonTransformContainer;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v5 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pillView;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v6 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_detachedButton;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v7 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pillGlassHighlightView;
  type metadata accessor for WFSDFView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v7) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v9 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pillGlassHighlightEdgeView;
  *(v0 + v9) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v0 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView____lazy_storage___sinusoidalScaleOscillationAnimator) = 0;
  v10 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_leadingSymbolView;
  v11 = type metadata accessor for WFIntelligenceSymbolView();
  *(v0 + v10) = [objc_allocWithZone(v11) init];
  v12 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_accessoryButton;
  *(v0 + v12) = [objc_opt_self() buttonWithType_];
  v13 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_accessoryButtonSymbolView;
  *(v0 + v13) = [objc_allocWithZone(v11) init];
  v14 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_placeholderLabel;
  *(v0 + v14) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v15 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_detachedButtonSymbolView;
  *(v0 + v15) = [objc_allocWithZone(v11) init];
  *(v0 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_horizontalPadding) = 0x4030000000000000;
  *(v0 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_verticalPadding) = 0x402E000000000000;
  *(v0 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_leadingSymbolSpacing) = 0x4010000000000000;
  *(v0 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_accessoryButtonSpacing) = 0x4020000000000000;
  *(v0 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_detachedButtonSpacing) = 0x4020000000000000;
  v16 = (v0 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_detachedButtonHiddenScale);
  CGAffineTransformMakeScale(&v23, 0.96, 0.94);
  v17 = *&v23.c;
  v18 = *&v23.tx;
  *v16 = *&v23.a;
  v16[1] = v17;
  v16[2] = v18;
  v19 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pendingTransitionWorkItems;
  sub_1C840CCEC();
  *(v0 + v19) = sub_1C840CD3C();
  *(v0 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_previousLineCount) = 1;
  *(v0 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v20 = (v0 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_onSizeChanged);
  *v20 = 0;
  v20[1] = 0;
  OUTLINED_FUNCTION_48_2(OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_placeholder);
  v21 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_accessoryStyle;
  *(v0 + v21) = [objc_opt_self() labelColor];
  v22 = v0 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_cachedBounds;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_isHighlightEffectActive) = 0;
  *(v0 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_isDetachedButtonVisible) = 0;
  *(v0 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pausePlaceholderLayout) = 0;
  *(v0 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pausePlaceholderVisibilityUpdates) = 0;
  *(v0 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pauseDetachedButtonVisibilityUpdates) = 0;
  *(v0 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pauseTextInput) = 0;
  sub_1C840D50C();
  __break(1u);
}

id WFIntelligencePromptView.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for WFIntelligencePromptView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1C8399570()
{
  v1 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_accessoryStyle;
  OUTLINED_FUNCTION_17_1();
  swift_beginAccess();
  v5 = *(v0 + v1);
  v2 = v5;
  sub_1C83A4610(&v5);
  v5 = *(v0 + v1);
  v3 = v5;
  sub_1C83A4610(&v5);
  v5 = *(v0 + v1);
  v4 = v5;
  sub_1C83A4610(&v5);
  sub_1C83996E8();
}

void sub_1C8399620(uint64_t a1)
{
  sub_1C83996E8();
  [v1 invalidateIntrinsicContentSize];
  [v1 setNeedsLayout];
  v2 = [v1 superview];
  [v2 setNeedsLayout];
}

void sub_1C83996E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_leadingSymbolView);
  sub_1C8312180(0, &unk_1EC29F150, 0x1E69DCAB8);
  OUTLINED_FUNCTION_17_1();
  swift_beginAccess();
  v2 = *MEMORY[0x1E69DDCF8];
  v3 = objc_allocWithZone(MEMORY[0x1E69DCA40]);

  v4 = [v3 initForTextStyle_];
  v5 = objc_opt_self();
  v6 = *MEMORY[0x1E69DB970];
  v7 = [v5 systemFontOfSize:23.0 weight:*MEMORY[0x1E69DB970]];
  v8 = [v4 scaledFontForFont_];

  v9 = objc_opt_self();
  v10 = [v9 configurationWithFont_];

  v11 = OUTLINED_FUNCTION_102();
  v13 = sub_1C8399A9C(v11, v12, v10);
  [*(v1 + OBJC_IVAR____TtC18WorkflowUIServicesP33_0AA0F540543667CA4C1C84043083E7DB24WFIntelligenceSymbolView_symbolImageView) setImage_];

  v14 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_accessoryStyle;
  OUTLINED_FUNCTION_17_1();
  swift_beginAccess();
  v15 = *(v0 + v14) == 0;
  if (*(v0 + v14))
  {
    v16 = 0xD000000000000014;
  }

  else
  {
    v16 = 0x70752E776F727261;
  }

  if (v15)
  {
    v17 = 0xEF656C637269632ELL;
  }

  else
  {
    v17 = 0x80000001C8420330;
  }

  v18 = *(v0 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_accessoryButtonSymbolView);
  v19 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
  v20 = [v5 systemFontOfSize:25.0 weight:v6];
  v21 = [v19 scaledFontForFont_];

  v22 = [v9 configurationWithFont_];
  v23 = sub_1C8399B1C(v16, v17, v22);
  [*(v18 + OBJC_IVAR____TtC18WorkflowUIServicesP33_0AA0F540543667CA4C1C84043083E7DB24WFIntelligenceSymbolView_symbolImageView) setImage_];

  v24 = *(v0 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_detachedButtonSymbolView);
  v25 = [v5 _preferredFontForTextStyle_weight_];
  if (v25)
  {
    v26 = v25;
    v27 = [v9 configurationWithFont_];

    v28 = sub_1C8399B1C(0x72616D6B63656863, 0xE90000000000006BLL, v27);
    [*(v24 + OBJC_IVAR____TtC18WorkflowUIServicesP33_0AA0F540543667CA4C1C84043083E7DB24WFIntelligenceSymbolView_symbolImageView) setImage_];
  }

  else
  {
    __break(1u);
  }
}

id sub_1C8399A9C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_1C840CD9C();
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() _systemImageNamed_withConfiguration_];

  return v5;
}

id sub_1C8399B1C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C840CD9C();

  v5 = [swift_getObjCClassFromMetadata() systemImageNamed:v4 withConfiguration:a3];

  return v5;
}

void sub_1C8399B8C()
{
  if ((*(v0 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pausePlaceholderVisibilityUpdates) & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_placeholderLabel);
    v2 = [*(v0 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_textView) text];
    if (v2)
    {
      v3 = v2;
      v4 = sub_1C840CDDC();
      v6 = v5;

      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = v4 & 0xFFFFFFFFFFFFLL;
      }

      [v1 setHidden_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1C8399C54(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_textView);
  v4 = [v3 text];
  if (!v4)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = v4;
  v6 = sub_1C840CDDC();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29F120, &qword_1C841A690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C8414660;
    v11 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    v12 = v11;
    v13 = [v3 font];
    if (v13)
    {
      v14 = v13;
      *(inited + 64) = sub_1C8312180(0, &qword_1EC29EF00, 0x1E69DB878);
      *(inited + 40) = v14;
      type metadata accessor for Key(0);
      sub_1C83A6688(&qword_1EC29F130, type metadata accessor for Key, &unk_1C8414D94);
      OUTLINED_FUNCTION_75_1();
      sub_1C840CD3C();
      v15 = [v3 text];
      if (v15)
      {
        v16 = v15;
        OUTLINED_FUNCTION_75_1();
        v17 = sub_1C840CD1C();

        [v16 boundingRectWithSize:3 options:v17 attributes:0 context:{a1, 1.79769313e308}];
        v19 = v18;

        v23.origin.x = OUTLINED_FUNCTION_36_2();
        v23.size.height = v19;
        v20 = ceil(CGRectGetHeight(v23));
        sub_1C8397094();
        if (v20 <= v21 * 1.1)
        {
          sub_1C8397094();
        }

        return;
      }

LABEL_15:
      __break(1u);
      return;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1C8397094();
}

void sub_1C8399EB8()
{
  v1 = 0.0;
  if (([*&v0[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_leadingSymbolView] isHidden] & 1) == 0)
  {
    v1 = sub_1C8396FB8() + 4.0;
  }

  v2 = sub_1C8397028() + 8.0;
  sub_1C8397094();
  v4 = v3 + 30.0;
  [v0 bounds];
  Width = CGRectGetWidth(v11);
  v6 = v4 + 8.0;
  if (!v0[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_isDetachedButtonVisible])
  {
    v6 = 0.0;
  }

  sub_1C8399C54(Width - v6 - v1 - v2 + -32.0);
  v8 = v7;
  sub_1C8397094();
  v10 = round(v8 / v9);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
  }
}

void sub_1C8399FD0(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = 0.0;
  if (([*(v2 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_leadingSymbolView) isHidden] & 1) == 0)
  {
    v5 = sub_1C8396FB8() + 4.0;
  }

  v6 = sub_1C8397028() + 8.0;
  sub_1C8397094();
  v8 = v7 + 30.0;
  v9 = v7 + 30.0 + 8.0;
  if (!*(v2 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_isDetachedButtonVisible))
  {
    v9 = 0.0;
  }

  v10 = a2 - v9;
  v11 = a2 - v9 - v5 - v6;
  sub_1C8399C54(v11 + -32.0);
  v13 = v12;
  v14 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_maxHeight;
  OUTLINED_FUNCTION_17_1();
  swift_beginAccess();
  v15 = *(v2 + v14);
  v16 = v15 < v13;
  if (v15 >= v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = v15;
  }

  sub_1C8397094();
  *a1 = v5;
  *(a1 + 8) = v6;
  if (v17 > v18)
  {
    v19 = v17 + 30.0;
  }

  else
  {
    v19 = v8;
  }

  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = v11 + -32.0;
  *(a1 + 48) = v13;
  *(a1 + 56) = v17;
  *(a1 + 64) = v19;
  *(a1 + 72) = v16;
}

id sub_1C839A0FC()
{
  v1 = v0;
  *&v105 = sub_1C840CC7C();
  OUTLINED_FUNCTION_5();
  v104 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_3(v5 - v4);
  v103 = sub_1C840CC9C();
  OUTLINED_FUNCTION_5();
  v101 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_3(v9 - v8);
  *&v106 = sub_1C840CCBC();
  OUTLINED_FUNCTION_5();
  v99 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v96 - v13;
  v15 = type metadata accessor for WFIntelligencePromptView();
  v114.receiver = v0;
  v114.super_class = v15;
  objc_msgSendSuper2(&v114, sel_layoutSubviews);
  v16 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
  [v16 scaledValueForValue_];
  v18 = v17;

  v19 = *&v1[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_textView];
  v20 = [v19 font];
  if (!v20 || (v21 = v20, [v20 pointSize], v23 = v22, v21, v23 != v18))
  {
    v24 = [objc_opt_self() systemFontOfSize:v18 weight:*MEMORY[0x1E69DB970]];
    [v19 setFont_];

    v25 = [v19 font];
    v26 = OUTLINED_FUNCTION_77_1();
    [v26 v27];
  }

  v28 = &v1[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_cachedBounds];
  v29 = *&v1[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_cachedBounds + 24];
  v30 = v1[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_cachedBounds + 32];
  [v1 bounds];
  if ((v30 & 1) != 0 || (v115.origin.x = OUTLINED_FUNCTION_36_2(), v115.size.height = v29, !CGRectEqualToRect(v115, v120)))
  {
    [v1 bounds];
    *v28 = v31;
    *(v28 + 1) = v32;
    *(v28 + 2) = v33;
    *(v28 + 3) = v34;
    v28[32] = 0;
    [*&v1[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pillView] _removeAllRetargetableAnimations_];
    [*&v1[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_accessoryButton] _removeAllRetargetableAnimations_];
  }

  [v1 bounds];
  Width = CGRectGetWidth(v116);
  sub_1C8399FD0(&aBlock, Width);
  v36 = *&aBlock;
  v37 = v110;
  *&v107 = v111;
  v38 = v112;
  [v19 setScrollEnabled_];
  v39 = *&v1[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pillView];
  v40 = [v39 layer];
  OUTLINED_FUNCTION_84_1(v40);

  v41 = *&v1[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_textClippingView];
  v42 = [v41 layer];
  OUTLINED_FUNCTION_84_1(v42);

  v43 = *&v1[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pillGlassHighlightView];
  v44 = [v43 layer];
  OUTLINED_FUNCTION_84_1(v44);

  v45 = *&v1[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pillGlassHighlightEdgeView];
  v46 = [v45 layer];
  OUTLINED_FUNCTION_84_1(v46);

  v108 = *(&v37 + 1);
  [v41 setFrame_];
  v47 = *&v1[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pillViewTransformContainer];
  OUTLINED_FUNCTION_64_1();
  [v47 setFrame_];
  OUTLINED_FUNCTION_64_1();
  [v39 setFrame_];
  OUTLINED_FUNCTION_64_1();
  Height = CGRectGetHeight(v117);
  v49 = &selRef_addAction_forControlEvents_;
  [v43 frame];
  if (Height < v50 && [objc_opt_self() _isInRetargetableAnimationBlock])
  {
    v51 = sub_1C8312180(0, &unk_1ED7EE750, 0x1E69E9610);
    v98 = sub_1C840D1EC();
    OUTLINED_FUNCTION_83_1(v52);
    sub_1C840CCFC();
    v97 = v14;
    v99 = *(v99 + 8);
    (v99)(v51, v106);
    OUTLINED_FUNCTION_16_7();
    v53 = swift_allocObject();
    *(v53 + 16) = v1;
    *&v111 = sub_1C83A5A48;
    *(&v111 + 1) = v53;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    OUTLINED_FUNCTION_9_8();
    *&v110 = v54;
    *(&v110 + 1) = &block_descriptor_1;
    v55 = _Block_copy(&aBlock);
    v56 = v1;

    v57 = v100;
    sub_1C840CC8C();
    *&aBlock = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_29_2();
    sub_1C83A6688(v58, v59, MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29F070, &qword_1C841E0A0);
    sub_1C83A5A68();
    v60 = v102;
    v61 = v105;
    sub_1C840D37C();
    v62 = v97;
    v63 = v98;
    MEMORY[0x1CCA75BC0](v97, v57, v60, v55);
    _Block_release(v55);

    (*(v104 + 8))(v60, v61);
    (*(v101 + 8))(v57, v103);
    (v99)(v62, v106);
    v49 = &selRef_addAction_forControlEvents_;
    v64 = &selRef_addAction_forControlEvents_;
  }

  else
  {
    v64 = &selRef_addAction_forControlEvents_;
    [v41 bounds];
    [v43 setFrame_];
    [v41 bounds];
    [v45 setFrame_];
  }

  [v1 v64[249]];
  v65 = CGRectGetWidth(v118) - *&v37;
  v66 = *&v1[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_detachedButtonTransformContainer];
  [v66 transform];
  v67 = v111;
  v106 = aBlock;
  v105 = v110;
  v68 = *(MEMORY[0x1E695EFD0] + 16);
  aBlock = *MEMORY[0x1E695EFD0];
  v110 = v68;
  v111 = *(MEMORY[0x1E695EFD0] + 32);
  [v66 setTransform_];
  [v66 setFrame_];
  aBlock = v106;
  v110 = v105;
  v111 = v67;
  [v66 setTransform_];
  v69 = *&v1[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_detachedButton];
  [v66 v64[249]];
  [v69 setFrame_];
  v70 = [v69 layer];
  [v70 setCornerRadius_];

  [*&v1[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_detachedButtonSymbolView] setFrame_];
  v71 = sub_1C8396FB8();
  v72 = &v1[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_symbolName];
  OUTLINED_FUNCTION_17_1();
  swift_beginAccess();
  v74 = *v72 == 0xD000000000000012 && 0x80000001C841FC80 == v72[1];
  if (v74 || (v75 = sub_1C840D69C(), v73 = 0.0, (v75 & 1) != 0))
  {
    v76 = [v1 traitCollection];
    [v76 displayScale];
    v78 = v77;

    v73 = -2.0 / v78;
  }

  v79 = (*&v37 - v71) * 0.5 + v73;
  v80 = *&v1[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_leadingSymbolView];
  v81 = sub_1C8396FB8();
  [v80 setFrame_];
  [v19 setFrame_];
  v82 = OUTLINED_FUNCTION_67_1();
  [v19 v83];
  [v19 layoutIfNeeded];
  if ((v1[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pausePlaceholderLayout] & 1) == 0)
  {
    [v19 v49[505]];
    v84 = CGRectGetWidth(v119) + -16.0;
    v85 = *&v1[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_placeholderLabel];
    v86 = [v1 traitCollection];
    [v86 displayScale];
    v88 = v87;

    sub_1C8397094();
    [v85 setFrame_];
  }

  sub_1C8397028();
  sub_1C8397028();
  sub_1C8397028();
  sub_1C8397028();
  sub_1C8397028();
  v90 = OUTLINED_FUNCTION_36_2();
  [v91 v92];
  v93 = *&v1[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_accessoryButtonSymbolView];
  v94 = sub_1C8397028();
  return [v93 setFrame_];
}

id sub_1C839AC48(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pillGlassHighlightView);
  v3 = *(a1 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_textClippingView);
  [v3 bounds];
  [v2 setFrame_];
  v4 = *(a1 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pillGlassHighlightEdgeView);
  [v3 bounds];

  return [v4 setFrame_];
}

double sub_1C839ACE0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

void sub_1C839ADF0(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_isHighlightEffectActive;
  swift_beginAccess();
  if (v2[v4] != v3)
  {
    if (v2[v4])
    {
      v2[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pauseTextInput] = 1;
      v5 = *&v2[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_textView];
      [v5 frame];
      v10 = [objc_allocWithZone(MEMORY[0x1E69DD168]) initWithFrame_];
      v11 = [v5 backgroundColor];
      [v10 setBackgroundColor_];

      v12 = [v5 textColor];
      [v10 setTextColor_];

      v13 = v10;
      [v13 setScrollEnabled_];
      [v13 setShowsVerticalScrollIndicator_];
      [v13 setAutocorrectionType_];
      [v5 textContainerInset];
      [v13 setTextContainerInset_];
      v14 = [v13 textContainer];
      v15 = [v5 textContainer];
      [v15 lineFragmentPadding];
      v17 = v16;

      [v14 setLineFragmentPadding_];
      [v13 setWritingToolsBehavior_];
      [v13 setEditable_];
      v18 = [v5 font];
      [v13 setFont_];

      v19 = [v5 text];
      [v13 setText_];

      [v5 contentOffset];
      [v13 setContentOffset_];

      v20 = [v5 superview];
      [v20 addSubview_];

      v21 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_textSnapshotView;
      swift_beginAccess();
      v22 = *&v2[v21];
      *&v2[v21] = v13;
      v23 = v13;

      [v5 setHidden_];
      sub_1C83A6C74(0, 0xE000000000000000, v5);
      sub_1C8396F38();
      sub_1C83A3E6C();

      v24 = objc_opt_self();
      v25 = swift_allocObject();
      *(v25 + 16) = v2;
      v41 = sub_1C83A6CD8;
      v42 = v25;
      aBlock = MEMORY[0x1E69E9820];
      v38 = 1107296256;
      v39 = sub_1C839ACE0;
      v40 = &block_descriptor_727;
      v26 = _Block_copy(&aBlock);
      v27 = v2;

      [v24 animateWithDuration:v26 animations:0.4];
      _Block_release(v26);
      v28 = swift_allocObject();
      *(v28 + 16) = v27;
      v41 = sub_1C83A6CF8;
      v42 = v28;
      aBlock = MEMORY[0x1E69E9820];
      v38 = 1107296256;
      v39 = sub_1C839ACE0;
      v40 = &block_descriptor_733;
      v29 = _Block_copy(&aBlock);
      v30 = v27;

      [v24 animateWithDuration:196616 delay:v29 options:0 animations:2.0 completion:0.0];
    }

    else
    {
      sub_1C8396F38();
      sub_1C83A4204();

      v31 = objc_opt_self();
      v32 = swift_allocObject();
      *(v32 + 16) = v2;
      v41 = sub_1C83A6C4C;
      v42 = v32;
      aBlock = MEMORY[0x1E69E9820];
      v38 = 1107296256;
      v39 = sub_1C839ACE0;
      v40 = &block_descriptor_715;
      v29 = _Block_copy(&aBlock);
      v33 = v2;

      v34 = swift_allocObject();
      *(v34 + 16) = v33;
      v41 = sub_1C83A6C6C;
      v42 = v34;
      aBlock = MEMORY[0x1E69E9820];
      v38 = 1107296256;
      v39 = sub_1C839B76C;
      v40 = &block_descriptor_721;
      v35 = _Block_copy(&aBlock);
      v36 = v33;

      [v31 animateWithDuration:v29 animations:v35 completion:0.3];
      _Block_release(v35);
    }

    _Block_release(v29);
  }
}

void sub_1C839B448(uint64_t a1)
{
  v2 = [*(a1 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pillGlassHighlightView) layer];
  v3 = sub_1C840B30C();
  v4 = sub_1C840CD9C();
  [v2 setValue:v3 forKeyPath:v4];

  v5 = [*(a1 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pillGlassHighlightEdgeView) layer];
  v6 = sub_1C840B30C();
  v7 = sub_1C840CD9C();
  [v5 setValue:v6 forKeyPath:v7];
}

id sub_1C839B584(uint64_t a1, double a2)
{
  [*(a1 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pillGlassHighlightView) setAlpha_];
  v4 = *(a1 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pillGlassHighlightEdgeView);

  return [v4 setAlpha_];
}

void sub_1C839B5EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pillGlassHighlightEdgeView);
  v4 = [v3 layer];
  [v4 removeAllAnimations];

  v5 = *(a2 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pillGlassHighlightView);
  v6 = [v5 layer];
  [v6 removeAllAnimations];

  v7 = [v5 layer];
  v8 = sub_1C840B30C();
  v9 = sub_1C840CD9C();
  [v7 setValue:v8 forKeyPath:v9];

  v10 = [v3 layer];
  v11 = sub_1C840B30C();
  v12 = sub_1C840CD9C();
  [v10 setValue:v11 forKeyPath:v12];
}

double sub_1C839B76C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t sub_1C839B7C0()
{
  v1 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_isHighlightEffectActive;
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_17_1();
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1C839B7FC(char a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_isHighlightEffectActive;
  OUTLINED_FUNCTION_39_1(v2 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_isHighlightEffectActive, a2);
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  sub_1C839ADF0(v5);
}

uint64_t sub_1C839B848()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_50_1(v2);
  v3 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_isHighlightEffectActive;
  OUTLINED_FUNCTION_17_1();
  swift_beginAccess();
  *(v1 + 32) = *(v0 + v3);
  return OUTLINED_FUNCTION_76_1();
}

void sub_1C839B8D0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  (a3)(*(*a1 + 32), a2);

  free(v3);
}

void sub_1C839B914(int a1)
{
  v2 = v1;
  v233 = a1;
  v3 = sub_1C840CCBC();
  OUTLINED_FUNCTION_5();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21();
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v232 = &v223 - v11;
  v12 = *&v1[OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_textView];
  v13 = [v12 text];
  if (!v13)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = sub_1C840CDDC();
  v17 = v16;

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v20 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_suppressDoneButton;
    OUTLINED_FUNCTION_17_1();
    swift_beginAccess();
    v19 = *(v2 + v20) ^ 1;
  }

  v21 = [v12 text];
  if (!v21)
  {
    goto LABEL_51;
  }

  v22 = v21;
  v23 = sub_1C840CDDC();
  v25 = v24;

  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    v27 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_suppressSendButton;
    OUTLINED_FUNCTION_17_1();
    swift_beginAccess();
    v28 = *(v2 + v27) ^ 1;
  }

  else
  {
    v28 = 0;
  }

  if (*(v2 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_cachedBounds + 32) == 1)
  {
    [v2 layoutIfNeeded];
  }

  if (v19 & 1) == *(v2 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_isDetachedButtonVisible) || (*(v2 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pauseDetachedButtonVisibilityUpdates))
  {
    goto LABEL_43;
  }

  v229 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_isDetachedButtonVisible;
  v227 = v5;
  v228 = v3;
  [*(v2 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pillViewTransformContainer) transform];
  v29 = MEMORY[0x1E695EFD0];
  v30 = *(MEMORY[0x1E695EFD0] + 16);
  v226 = *MEMORY[0x1E695EFD0];
  v238 = v226;
  v239 = v30;
  v225 = v30;
  v240 = *(MEMORY[0x1E695EFD0] + 32);
  if ((sub_1C840D1AC() & 1) == 0)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_16_7();
    v31 = swift_allocObject();
    *(v31 + 16) = v2;
    v236 = sub_1C83A6734;
    v237 = v31;
    OUTLINED_FUNCTION_0_13();
    *(v32 - 256) = v33;
    OUTLINED_FUNCTION_25_6();
    OUTLINED_FUNCTION_30_4();
    *&v235 = v34;
    v35 = OUTLINED_FUNCTION_15_8(block_descriptor_158);
    v36 = v2;

    v236 = nullsub_1;
    v237 = 0;
    OUTLINED_FUNCTION_0_13();
    *(v37 - 256) = v38;
    OUTLINED_FUNCTION_5_11();
    *&v235 = v39;
    v40 = OUTLINED_FUNCTION_15_8(block_descriptor_161);
    v41 = OUTLINED_FUNCTION_3_12();
    [v41 v42];
    _Block_release(v40);
    _Block_release(v35);
  }

  v43 = *(v29 + 32);
  v44 = *(v29 + 40);
  v45 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pendingTransitionWorkItems;
  OUTLINED_FUNCTION_17_1();
  swift_beginAccess();
  v46 = *(v2 + v45);
  v49 = *(v46 + 64);
  v48 = v46 + 64;
  v47 = v49;
  v50 = 1 << *(*(v2 + v45) + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v52 = v51 & v47;
  v53 = (v50 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v54 = 0;
  if (v52)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v55 = (v54 + 1);
    if (__OFADD__(v54, 1))
    {
      __break(1u);
      goto LABEL_50;
    }

    if (v55 >= v53)
    {
      break;
    }

    v52 = *(v48 + 8 * v55);
    ++v54;
    if (v52)
    {
      v54 = v55;
      do
      {
LABEL_27:
        v52 &= v52 - 1;

        sub_1C840CCDC();
      }

      while (v52);
      continue;
    }
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29F140, &qword_1C841A8C8);
  sub_1C840CD4C();
  swift_endAccess();
  v56 = v19 & 1;
  v57 = v229;
  v229[v2] = v56;
  sub_1C8397094();
  v59 = v58 + 30.0;
  if (v57[v2] == 1)
  {
    [*(v2 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_detachedButton) setHidden_];
    v60 = *(v2 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_detachedButtonTransformContainer);
    v235 = v225;
    v234 = v226;
    v236 = v43;
    v237 = v44;
    [v60 setTransform_];
    objc_opt_self();
    OUTLINED_FUNCTION_16_7();
    v61 = swift_allocObject();
    *(v61 + 16) = v2;
    v236 = sub_1C83A6824;
    v237 = v61;
    OUTLINED_FUNCTION_2_8();
    *(v62 - 256) = v63;
    OUTLINED_FUNCTION_25_6();
    OUTLINED_FUNCTION_28_4();
    *&v235 = v64;
    OUTLINED_FUNCTION_15_8(block_descriptor_272);
    OUTLINED_FUNCTION_71_1();
    v65 = v2;

    v236 = nullsub_1;
    v237 = 0;
    OUTLINED_FUNCTION_2_8();
    *(v66 - 256) = v67;
    OUTLINED_FUNCTION_25_6();
    *&v235 = sub_1C839D568;
    v68 = OUTLINED_FUNCTION_15_8(block_descriptor_275);
    v69 = OUTLINED_FUNCTION_3_12();
    [v69 v70];
    _Block_release(v68);
    _Block_release(v54);
    v71 = swift_allocObject();
    *(v71 + 16) = v65;
    *(v71 + 24) = v59 * -0.25;
    v236 = sub_1C83A682C;
    v237 = v71;
    OUTLINED_FUNCTION_2_8();
    *(v72 - 256) = v73;
    OUTLINED_FUNCTION_25_6();
    *&v235 = sub_1C839ACE0;
    v74 = OUTLINED_FUNCTION_15_8(block_descriptor_281);
    v54 = v237;
    v75 = v65;

    v236 = nullsub_1;
    v237 = 0;
    OUTLINED_FUNCTION_2_8();
    *(v76 - 256) = v77;
    OUTLINED_FUNCTION_25_6();
    *&v235 = sub_1C839D568;
    v78 = OUTLINED_FUNCTION_15_8(block_descriptor_284);
    v79 = OUTLINED_FUNCTION_3_12();
    [v79 v80];
    _Block_release(v78);
    _Block_release(v74);
    v81 = v228;
LABEL_33:
    OUTLINED_FUNCTION_66_0();
    goto LABEL_35;
  }

  v82 = v233;
  objc_opt_self();
  OUTLINED_FUNCTION_16_7();
  v83 = swift_allocObject();
  *(v83 + 16) = v2;
  v236 = sub_1C83A673C;
  v237 = v83;
  OUTLINED_FUNCTION_0_13();
  *(v84 - 256) = v85;
  OUTLINED_FUNCTION_69_1();
  *&v235 = sub_1C839ACE0;
  OUTLINED_FUNCTION_15_8(block_descriptor_167);
  OUTLINED_FUNCTION_71_1();
  v86 = v2;

  v236 = nullsub_1;
  v237 = 0;
  OUTLINED_FUNCTION_0_13();
  *(v87 - 256) = v88;
  OUTLINED_FUNCTION_69_1();
  *&v235 = sub_1C839D568;
  v89 = OUTLINED_FUNCTION_15_8(block_descriptor_170);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_45_2();
  [v90 v91];
  _Block_release(v89);
  _Block_release(v54);
  v81 = v228;
  if (v82)
  {
    OUTLINED_FUNCTION_16_7();
    v93 = swift_allocObject();
    *(v93 + 16) = v86;
    v236 = sub_1C83A681C;
    v237 = v93;
    OUTLINED_FUNCTION_2_8();
    *(v94 - 256) = v95;
    OUTLINED_FUNCTION_69_1();
    OUTLINED_FUNCTION_28_4();
    *&v235 = v96;
    OUTLINED_FUNCTION_15_8(block_descriptor_263);
    OUTLINED_FUNCTION_71_1();
    v97 = v86;

    v236 = nullsub_1;
    v237 = 0;
    OUTLINED_FUNCTION_2_8();
    *(v98 - 256) = v99;
    OUTLINED_FUNCTION_69_1();
    *&v235 = sub_1C839D568;
    v100 = OUTLINED_FUNCTION_15_8(block_descriptor_266);
    OUTLINED_FUNCTION_4_11();
    OUTLINED_FUNCTION_45_2();
    [v101 v102];
    _Block_release(v100);
    _Block_release(v54);
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_83_1(v92);
  v103 = v232;
  sub_1C840CCFC();
  OUTLINED_FUNCTION_66_0();
  *&v226 = sel_detachedButtonTapped;
  v104 = OUTLINED_FUNCTION_55_1();
  v105(v104);
  OUTLINED_FUNCTION_16_7();
  v106 = swift_allocObject();
  OUTLINED_FUNCTION_51_1(v106);
  *&v225 = v86;
  swift_unknownObjectWeakInit();
  v107 = swift_allocObject();
  *(v107 + 16) = v89;
  *(v107 + 24) = v59;

  sub_1C839CFD8(v103, sub_1C83A6744, v107, v86);

  v108 = v226;
  (v226)(v103, v81);

  sub_1C840CCAC();
  sub_1C840CCFC();
  v109 = OUTLINED_FUNCTION_55_1();
  v108(v109);
  OUTLINED_FUNCTION_16_7();
  v110 = swift_allocObject();
  OUTLINED_FUNCTION_51_1(v110);
  v54 = v225;
  swift_unknownObjectWeakInit();

  OUTLINED_FUNCTION_81_0();

  (v108)(v103, v81);

  sub_1C840CCAC();
  sub_1C840CCFC();
  v111 = OUTLINED_FUNCTION_55_1();
  v108(v111);
  OUTLINED_FUNCTION_16_7();
  v112 = swift_allocObject();
  OUTLINED_FUNCTION_51_1(v112);
  swift_unknownObjectWeakInit();

  OUTLINED_FUNCTION_81_0();

  (v108)(v103, v81);

LABEL_35:
  LODWORD(v226) = v28;
  v113 = v231;
  sub_1C840CCAC();
  OUTLINED_FUNCTION_49_2();
  sub_1C840CCFC();
  v5 = &selRef_detachedButtonTapped;
  (*sel_detachedButtonTapped)(v113, v81);
  OUTLINED_FUNCTION_16_7();
  v114 = swift_allocObject();
  OUTLINED_FUNCTION_51_1(v114);
  swift_unknownObjectWeakInit();

  v115 = OUTLINED_FUNCTION_72_2();
  sub_1C839CFD8(v115, v116, v113, v2);

  v117 = OUTLINED_FUNCTION_73_1();
  (*sel_detachedButtonTapped)(v117);

  *&v225 = sel_detachedButtonTapped;
  if ((v233 & 1) != 0 && v229[v2] != 1)
  {
    v131 = v229;
  }

  else
  {
    v224 = objc_opt_self();
    OUTLINED_FUNCTION_16_7();
    v118 = swift_allocObject();
    *(v118 + 16) = v2;
    v236 = sub_1C83A6768;
    v237 = v118;
    OUTLINED_FUNCTION_27_5();
    *(v119 - 256) = v120;
    OUTLINED_FUNCTION_25_6();
    *&v235 = sub_1C839ACE0;
    v121 = OUTLINED_FUNCTION_15_8(block_descriptor_185);
    v122 = v2;

    v236 = nullsub_1;
    v237 = 0;
    OUTLINED_FUNCTION_27_5();
    *(v123 - 256) = v124;
    OUTLINED_FUNCTION_5_11();
    v125 = v228;
    *&v235 = v126;
    v54 = OUTLINED_FUNCTION_15_8(block_descriptor_188);
    OUTLINED_FUNCTION_4_11();
    [v224 v127];
    _Block_release(v54);
    _Block_release(v121);
    v128 = v231;
    sub_1C840CCAC();
    OUTLINED_FUNCTION_49_2();
    sub_1C840CCFC();
    (*sel_detachedButtonTapped)(v128, v125);
    OUTLINED_FUNCTION_16_7();
    v129 = swift_allocObject();
    OUTLINED_FUNCTION_51_1(v129);
    swift_unknownObjectWeakInit();

    sub_1C839CFD8(&v234, sub_1C83A6770, v128, v122);

    v130 = OUTLINED_FUNCTION_73_1();
    (*sel_detachedButtonTapped)(v130);

    v131 = v229;
  }

  v132 = objc_opt_self();
  OUTLINED_FUNCTION_16_7();
  v133 = swift_allocObject();
  *(v133 + 16) = v2;
  v236 = sub_1C83A6778;
  v237 = v133;
  OUTLINED_FUNCTION_26_5();
  *(v134 - 256) = v135;
  *(&v234 + 1) = 1107296256;
  *&v235 = sub_1C839ACE0;
  OUTLINED_FUNCTION_15_8(block_descriptor_195);
  OUTLINED_FUNCTION_71_1();
  v136 = v2;

  v236 = nullsub_1;
  v237 = 0;
  OUTLINED_FUNCTION_26_5();
  *(v137 - 256) = v138;
  OUTLINED_FUNCTION_6_11();
  *&v235 = v139;
  v140 = OUTLINED_FUNCTION_15_8(block_descriptor_198);
  OUTLINED_FUNCTION_4_11();
  v229 = v132;
  OUTLINED_FUNCTION_45_2();
  [v141 v142];
  _Block_release(v140);
  _Block_release(v54);
  if (v131[v2] == 1)
  {
    OUTLINED_FUNCTION_83_1(v143);
    OUTLINED_FUNCTION_49_2();
    sub_1C840CCFC();
    v144 = OUTLINED_FUNCTION_55_1();
    v145 = v225;
    (v225)(v144);
    OUTLINED_FUNCTION_16_7();
    v146 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1C839CFD8(&v235, sub_1C83A6814, v146, v136);

    v147 = OUTLINED_FUNCTION_73_1();
    v145(v147);
  }

  else
  {
    OUTLINED_FUNCTION_16_7();
    v148 = swift_allocObject();
    *(v148 + 16) = v136;
    v236 = sub_1C83A6780;
    v237 = v148;
    OUTLINED_FUNCTION_1_15();
    *(v149 - 256) = v150;
    OUTLINED_FUNCTION_12_9();
    *&v235 = v151;
    v152 = OUTLINED_FUNCTION_15_8(block_descriptor_204);
    v153 = v136;

    OUTLINED_FUNCTION_16_7();
    v154 = swift_allocObject();
    *(v154 + 16) = v153;
    v236 = sub_1C83A6788;
    v237 = v154;
    OUTLINED_FUNCTION_1_15();
    *(v155 - 256) = v156;
    OUTLINED_FUNCTION_6_11();
    *&v235 = v157;
    v158 = OUTLINED_FUNCTION_15_8(block_descriptor_210);
    v159 = v153;

    OUTLINED_FUNCTION_4_11();
    v5 = v229;
    [v229 v160];
    _Block_release(v158);
    _Block_release(v152);
    OUTLINED_FUNCTION_16_7();
    v161 = swift_allocObject();
    *(v161 + 16) = v159;
    v236 = sub_1C83A67AC;
    v237 = v161;
    OUTLINED_FUNCTION_1_15();
    *(v162 - 256) = v163;
    OUTLINED_FUNCTION_12_9();
    *&v235 = v164;
    v165 = OUTLINED_FUNCTION_15_8(block_descriptor_216);
    v166 = v159;

    v236 = nullsub_1;
    v237 = 0;
    OUTLINED_FUNCTION_1_15();
    *(v167 - 256) = v168;
    OUTLINED_FUNCTION_6_11();
    *&v235 = v169;
    v170 = OUTLINED_FUNCTION_15_8(block_descriptor_219);
    OUTLINED_FUNCTION_4_11();
    [v5 v171];
    _Block_release(v170);
    _Block_release(v165);
    OUTLINED_FUNCTION_16_7();
    v172 = swift_allocObject();
    *(v172 + 16) = v166;
    v236 = sub_1C83A67B4;
    v237 = v172;
    OUTLINED_FUNCTION_1_15();
    *(v173 - 256) = v174;
    OUTLINED_FUNCTION_12_9();
    *&v235 = v175;
    v176 = OUTLINED_FUNCTION_15_8(block_descriptor_225);
    v177 = v166;

    v236 = nullsub_1;
    v237 = 0;
    OUTLINED_FUNCTION_1_15();
    *(v178 - 256) = v179;
    OUTLINED_FUNCTION_6_11();
    *&v235 = v180;
    v181 = OUTLINED_FUNCTION_15_8(block_descriptor_228);
    OUTLINED_FUNCTION_4_11();
    [v5 v182];
    _Block_release(v181);
    _Block_release(v176);
  }

  OUTLINED_FUNCTION_66_0();
  LOBYTE(v28) = v226;
LABEL_43:
  [*(v2 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_accessoryButton) alpha];
  if (v28)
  {
    if (v183.n128_f64[0] == 0.0)
    {
      OUTLINED_FUNCTION_83_1(v183);
      v184 = v230;
      sub_1C840CCFC();
      v185 = v5[1];
      v186 = OUTLINED_FUNCTION_55_1();
      (v185)(v186);
      OUTLINED_FUNCTION_16_7();
      v187 = swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_1C839CFD8(v184, sub_1C83A680C, v187, v2);

      v188 = OUTLINED_FUNCTION_73_1();
      (v185)(v188);
    }
  }

  else if (v183.n128_f64[0] == 1.0)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_16_7();
    v189 = swift_allocObject();
    *(v189 + 16) = v2;
    v236 = sub_1C83A67BC;
    v237 = v189;
    OUTLINED_FUNCTION_0_13();
    *(v190 - 256) = v191;
    OUTLINED_FUNCTION_25_6();
    OUTLINED_FUNCTION_30_4();
    *&v235 = v192;
    v193 = OUTLINED_FUNCTION_15_8(block_descriptor_234);
    v194 = v2;
    OUTLINED_FUNCTION_82_1();
    OUTLINED_FUNCTION_16_7();
    v195 = swift_allocObject();
    *(v195 + 16) = v2;
    v236 = sub_1C83A67C4;
    v237 = v195;
    OUTLINED_FUNCTION_0_13();
    *(v196 - 256) = v197;
    OUTLINED_FUNCTION_5_11();
    *&v235 = v198;
    v199 = OUTLINED_FUNCTION_15_8(block_descriptor_240);
    v200 = v2;

    v201 = OUTLINED_FUNCTION_3_12();
    OUTLINED_FUNCTION_56_1(v201, v202, v203);
    _Block_release(v199);
    _Block_release(v193);
    OUTLINED_FUNCTION_16_7();
    v204 = swift_allocObject();
    *(v204 + 16) = v200;
    v236 = sub_1C83A67E8;
    v237 = v204;
    OUTLINED_FUNCTION_0_13();
    *(v205 - 256) = v206;
    OUTLINED_FUNCTION_25_6();
    *&v235 = sub_1C839ACE0;
    v207 = OUTLINED_FUNCTION_15_8(block_descriptor_246);
    v208 = v200;
    OUTLINED_FUNCTION_82_1();
    v236 = nullsub_1;
    v237 = 0;
    OUTLINED_FUNCTION_0_13();
    *(v209 - 256) = v210;
    OUTLINED_FUNCTION_5_11();
    *&v235 = v211;
    v212 = OUTLINED_FUNCTION_15_8(block_descriptor_249);
    v213 = OUTLINED_FUNCTION_3_12();
    OUTLINED_FUNCTION_56_1(v213, v214, v215);
    _Block_release(v212);
    _Block_release(v207);
    OUTLINED_FUNCTION_16_7();
    v216 = swift_allocObject();
    *(v216 + 16) = v200;
    v236 = sub_1C83A67F0;
    v237 = v216;
    OUTLINED_FUNCTION_0_13();
    *(v217 - 256) = v218;
    OUTLINED_FUNCTION_25_6();
    *&v235 = sub_1C839ACE0;
    v219 = OUTLINED_FUNCTION_15_8(block_descriptor_255);
    v220 = v200;

    v221 = OUTLINED_FUNCTION_78_1();
    [v221 v222];
    _Block_release(v219);
  }
}

void sub_1C839CFD8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v23 = a1;
  v7 = sub_1C840CC7C();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C840B1DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C840B1CC();
  v12 = sub_1C840B1BC();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = v12;
  v15[6] = v14;
  aBlock[4] = sub_1C83A6B48;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C839ACE0;
  aBlock[3] = &block_descriptor_567;
  _Block_copy(aBlock);
  v24 = MEMORY[0x1E69E7CC0];
  sub_1C83A6688(&qword_1ED7EE778, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);

  v16 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29F070, &qword_1C841E0A0);
  sub_1C83A5A68();
  sub_1C840D37C();
  sub_1C840CCEC();
  swift_allocObject();
  v17 = sub_1C840CCCC();

  v18 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_pendingTransitionWorkItems;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *&v16[v18];
  sub_1C8351804(v17, v12, v14, isUniquelyReferenced_nonNull_native, v20, v21);
  *&v16[v18] = v24;

  swift_endAccess();
  sub_1C8312180(0, &unk_1ED7EE750, 0x1E69E9610);
  v22 = sub_1C840D1EC();
  sub_1C840D1DC();
}

double sub_1C839D308(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  a1();
  swift_beginAccess();
  sub_1C83A5874();
  swift_endAccess();

  return result;
}

void sub_1C839D38C(void *a1)
{
  v2 = objc_opt_self();
  sub_1C840D19C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C83A7024;
  *(v10 + 24) = v9;
  v16[4] = sub_1C83A6ED4;
  v16[5] = v10;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1C839D540;
  v16[3] = &block_descriptor_606;
  v11 = _Block_copy(v16);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

double sub_1C839D568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);

  return result;
}

void sub_1C839D5C8(void *a1)
{
  v2 = objc_opt_self();
  sub_1C840D19C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C83A689C;
  *(v10 + 24) = v9;
  v16[4] = sub_1C83A6ED4;
  v16[5] = v10;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1C839D540;
  v16[3] = &block_descriptor_323;
  v11 = _Block_copy(v16);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

void sub_1C839D77C(void *a1, double a2)
{
  v4 = objc_opt_self();
  sub_1C840D19C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1C83A686C;
  *(v12 + 24) = v11;
  v18[4] = sub_1C83A6ED4;
  v18[5] = v12;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1C839D540;
  v18[3] = &block_descriptor_313;
  v13 = _Block_copy(v18);
  v14 = a1;

  LODWORD(v15) = v6;
  LODWORD(v16) = v8;
  LODWORD(v17) = v10;
  [v4 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v13);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }
}

void sub_1C839D938(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    v12 = sub_1C83A6840;
    v13 = v4;
    aBlock = MEMORY[0x1E69E9820];
    v9 = 1107296256;
    v10 = sub_1C839ACE0;
    v11 = &block_descriptor_291;
    v5 = _Block_copy(&aBlock);
    v6 = v2;

    v12 = nullsub_1;
    v13 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v9 = 1107296256;
    v10 = sub_1C839D568;
    v11 = &block_descriptor_294;
    v7 = _Block_copy(&aBlock);
    [v3 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
    _Block_release(v7);
    _Block_release(v5);
  }
}

void sub_1C839DADC(void *a1)
{
  v2 = objc_opt_self();
  sub_1C840D19C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C83A6848;
  *(v10 + 24) = v9;
  v16[4] = sub_1C83821A0;
  v16[5] = v10;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1C839D540;
  v16[3] = &block_descriptor_303;
  v11 = _Block_copy(v16);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

void sub_1C839DC90(void *a1)
{
  v2 = objc_opt_self();
  sub_1C840D19C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C83A701C;
  *(v10 + 24) = v9;
  v16[4] = sub_1C83A6ED4;
  v16[5] = v10;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1C839D540;
  v16[3] = &block_descriptor_596;
  v11 = _Block_copy(v16);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

void sub_1C839DE44(void *a1)
{
  v2 = objc_opt_self();
  sub_1C840D19C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C83A6FF8;
  *(v10 + 24) = v9;
  v16[4] = sub_1C83A6ED4;
  v16[5] = v10;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1C839D540;
  v16[3] = &block_descriptor_333;
  v11 = _Block_copy(v16);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

void sub_1C839DFF8(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = a2 / -6.0;
    v14 = sub_1C83A6B58;
    v15 = v6;
    aBlock = MEMORY[0x1E69E9820];
    v11 = 1107296256;
    v12 = sub_1C839ACE0;
    v13 = &block_descriptor_573;
    v7 = _Block_copy(&aBlock);
    v8 = v4;

    v14 = nullsub_1;
    v15 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v11 = 1107296256;
    v12 = sub_1C839D568;
    v13 = &block_descriptor_576;
    v9 = _Block_copy(&aBlock);
    [v5 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
    _Block_release(v9);
    _Block_release(v7);
  }
}

void sub_1C839E1AC(void *a1, double a2)
{
  v4 = objc_opt_self();
  sub_1C840D19C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1C83A6B64;
  *(v12 + 24) = v11;
  v18[4] = sub_1C83A6ED4;
  v18[5] = v12;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1C839D540;
  v18[3] = &block_descriptor_586;
  v13 = _Block_copy(v18);
  v14 = a1;

  LODWORD(v15) = v6;
  LODWORD(v16) = v8;
  LODWORD(v17) = v10;
  [v4 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v13);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }
}

id sub_1C839E368(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v6 = *(a1 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_detachedButtonTransformContainer);
  CGAffineTransformMakeTranslation(&t1, a2, 0.0);
  tx = t1.tx;
  ty = t1.ty;
  v13 = *&t1.c;
  v14 = *&t1.a;
  CGAffineTransformMakeScale(&t1, a3, a4);
  v9 = *&t1.a;
  v10 = *&t1.c;
  v11 = *&t1.tx;
  *&t1.a = v14;
  *&t1.c = v13;
  t1.tx = tx;
  t1.ty = ty;
  *&t2.a = v9;
  *&t2.c = v10;
  *&t2.tx = v11;
  CGAffineTransformConcat(&v15, &t1, &t2);
  t1 = v15;
  return [v6 setTransform_];
}

void sub_1C839E428(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    v12 = sub_1C83A6B0C;
    v13 = v4;
    aBlock = MEMORY[0x1E69E9820];
    v9 = 1107296256;
    v10 = sub_1C839ACE0;
    v11 = &block_descriptor_548;
    v5 = _Block_copy(&aBlock);
    v6 = v2;

    v12 = nullsub_1;
    v13 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v9 = 1107296256;
    v10 = sub_1C839D568;
    v11 = &block_descriptor_551;
    v7 = _Block_copy(&aBlock);
    [v3 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
    _Block_release(v7);
    _Block_release(v5);
  }
}

void sub_1C839E5CC(void *a1)
{
  v2 = objc_opt_self();
  sub_1C840D19C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C83A6B14;
  *(v10 + 24) = v9;
  v16[4] = sub_1C83A6ED4;
  v16[5] = v10;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1C839D540;
  v16[3] = &block_descriptor_561;
  v11 = _Block_copy(v16);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

void sub_1C839E780(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    v12 = sub_1C83A6AE8;
    v13 = v4;
    aBlock = MEMORY[0x1E69E9820];
    v9 = 1107296256;
    v10 = sub_1C839ACE0;
    v11 = &block_descriptor_529;
    v5 = _Block_copy(&aBlock);
    v6 = v2;

    v12 = nullsub_1;
    v13 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v9 = 1107296256;
    v10 = sub_1C839D568;
    v11 = &block_descriptor_532;
    v7 = _Block_copy(&aBlock);
    [v3 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
    _Block_release(v7);
    _Block_release(v5);
  }
}

void sub_1C839E924(void *a1)
{
  v2 = objc_opt_self();
  sub_1C840D19C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C83A6AF0;
  *(v10 + 24) = v9;
  v16[4] = sub_1C83A6ED4;
  v16[5] = v10;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1C839D540;
  v16[3] = &block_descriptor_542;
  v11 = _Block_copy(v16);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

id sub_1C839EAD8(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_detachedButtonTransformContainer);
  v2 = *(a1 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_detachedButtonHiddenScale + 16);
  v4[0] = *(a1 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_detachedButtonHiddenScale);
  v4[1] = v2;
  v4[2] = *(a1 + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_detachedButtonHiddenScale + 32);
  return [v1 setTransform_];
}

void sub_1C839EB30(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [*(Strong + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_detachedButton) setHidden_];
  }
}

void sub_1C839EB9C(void *a1)
{
  v2 = objc_opt_self();
  sub_1C840D19C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C83A6AB4;
  *(v10 + 24) = v9;
  v16[4] = sub_1C83A6ED4;
  v16[5] = v10;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1C839D540;
  v16[3] = &block_descriptor_523;
  v11 = _Block_copy(v16);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

void sub_1C839ED50(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    v12 = sub_1C83A6A88;
    v13 = v4;
    aBlock = MEMORY[0x1E69E9820];
    v9 = 1107296256;
    v10 = sub_1C839ACE0;
    v11 = &block_descriptor_500;
    v5 = _Block_copy(&aBlock);
    v6 = v2;

    v12 = nullsub_1;
    v13 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v9 = 1107296256;
    v10 = sub_1C839D568;
    v11 = &block_descriptor_503;
    v7 = _Block_copy(&aBlock);
    [v3 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
    _Block_release(v7);
    _Block_release(v5);
  }
}

void sub_1C839EEF4(void *a1)
{
  v2 = objc_opt_self();
  sub_1C840D19C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C83A6A90;
  *(v10 + 24) = v9;
  v16[4] = sub_1C83A6ED4;
  v16[5] = v10;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1C839D540;
  v16[3] = &block_descriptor_513;
  v11 = _Block_copy(v16);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

void sub_1C839F0A8(void *a1)
{
  v2 = objc_opt_self();
  sub_1C840D19C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C83A6A64;
  *(v10 + 24) = v9;
  v16[4] = sub_1C83A6ED4;
  v16[5] = v10;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1C839D540;
  v16[3] = &block_descriptor_494;
  v11 = _Block_copy(v16);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

void sub_1C839F25C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_detachedButtonSymbolView;
    v4 = *(Strong + OBJC_IVAR____TtC18WorkflowUIServices24WFIntelligencePromptView_detachedButtonSymbolView);
    CGAffineTransformMakeScale(&v21, 0.7, 0.7);
    [v4 setTransform_];
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *&v21.tx = sub_1C83A68A4;
    *&v21.ty = v6;
    *&v21.a = MEMORY[0x1E69E9820];
    *&v21.b = 1107296256;
    *&v21.c = sub_1C839ACE0;
    *&v21.d = &block_descriptor_339;
    v7 = _Block_copy(&v21);
    v8 = v2;

    *&v21.tx = nullsub_1;
    v21.ty = 0.0;
    *&v21.a = MEMORY[0x1E69E9820];
    *&v21.b = 1107296256;
    *&v21.c = sub_1C839D568;
    *&v21.d = &block_descriptor_342;
    v9 = _Block_copy(&v21);
    [v5 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
    _Block_release(v9);
    _Block_release(v7);
    v10 = [*&v2[v3] layer];
    v11 = sub_1C840B30C();
    v12 = sub_1C840CD9C();
    [v10 setValue:v11 forKeyPath:v12];

    v13 = swift_allocObject();
    *(v13 + 16) = v8;
    *&v21.tx = sub_1C83A68AC;
    *&v21.ty = v13;
    *&v21.a = MEMORY[0x1E69E9820];
    *&v21.b = 1107296256;
    *&v21.c = sub_1C839ACE0;
    *&v21.d = &block_descriptor_348;
    v14 = _Block_copy(&v21);
    v15 = v8;

    *&v21.tx = nullsub_1;
    v21.ty = 0.0;
    *&v21.a = MEMORY[0x1E69E9820];
    *&v21.b = 1107296256;
    *&v21.c = sub_1C839D568;
    *&v21.d = &block_descriptor_351;
    v16 = _Block_copy(&v21);
    [v5 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
    _Block_release(v16);
    _Block_release(v14);
    [*&v2[v3] setAlpha_];
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *&v21.tx = sub_1C83A68B4;
    *&v21.ty = v17;
    *&v21.a = MEMORY[0x1E69E9820];
    *&v21.b = 1107296256;
    *&v21.c = sub_1C839ACE0;
    *&v21.d = &block_descriptor_357;
    v18 = _Block_copy(&v21);
    v19 = v15;

    *&v21.tx = nullsub_1;
    v21.ty = 0.0;
    *&v21.a = MEMORY[0x1E69E9820];
    *&v21.b = 1107296256;
    *&v21.c = sub_1C839D568;
    *&v21.d = &block_descriptor_360;
    v20 = _Block_copy(&v21);
    [v5 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
    _Block_release(v20);
    _Block_release(v18);
  }
}

void sub_1C839F704(void *a1)
{
  v2 = objc_opt_self();
  sub_1C840D19C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C83A6900;
  *(v10 + 24) = v9;
  v16[4] = sub_1C83A6ED4;
  v16[5] = v10;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1C839D540;
  v16[3] = &block_descriptor_390;
  v11 = _Block_copy(v16);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

void sub_1C839F8B8(void *a1)
{
  v2 = objc_opt_self();
  sub_1C840D19C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C83A68D8;
  *(v10 + 24) = v9;
  v16[4] = sub_1C83A6ED4;
  v16[5] = v10;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1C839D540;
  v16[3] = &block_descriptor_380;
  v11 = _Block_copy(v16);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

void sub_1C839FA6C(void *a1)
{
  v2 = objc_opt_self();
  sub_1C840D19C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C83A68BC;
  *(v10 + 24) = v9;
  v16[4] = sub_1C83A6ED4;
  v16[5] = v10;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1C839D540;
  v16[3] = &block_descriptor_370;
  v11 = _Block_copy(v16);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

void sub_1C839FC20(void *a1)
{
  v2 = objc_opt_self();
  sub_1C840D19C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C83A6A38;
  *(v10 + 24) = v9;
  v16[4] = sub_1C83A6ED4;
  v16[5] = v10;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1C839D540;
  v16[3] = &block_descriptor_484;
  v11 = _Block_copy(v16);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

void sub_1C839FDD4(void *a1)
{
  v2 = objc_opt_self();
  sub_1C840D19C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C83A6A10;
  *(v10 + 24) = v9;
  v16[4] = sub_1C83A6ED4;
  v16[5] = v10;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1C839D540;
  v16[3] = &block_descriptor_474;
  v11 = _Block_copy(v16);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}