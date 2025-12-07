uint64_t sub_2312D51A0()
{
  OUTLINED_FUNCTION_131();
  if (!*(v1 + 880))
  {
    sub_2311D1F18(v1 + 856, &qword_27DD443C0, &unk_23136E000);
    goto LABEL_7;
  }

  v2 = MEMORY[0x277D839B0];
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v3 = *(v1 + 1568);
    goto LABEL_8;
  }

  v3 = *(v1 + 1568);
  if (*(v1 + 1956) == 1 && v3)
  {
    v4 = *(v1 + 1016);
    sub_231369EE0();
    sub_231369EE0();
    sub_231368680();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43FF0, &unk_231370EA0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_23136B670;
    OUTLINED_FUNCTION_69_6();
    *(v7 + 32) = v6 | 7;
    *(v7 + 40) = v8;
    v9 = sub_2312D8A24();
    *(v5 + 72) = v2;
    *(v5 + 48) = v9 & 1;
    *(v1 + 1624) = sub_231369EC0();
    *(v1 + 1632) = *(v4 + 96);
    v10 = swift_task_alloc();
    *(v1 + 1640) = v10;
    *v10 = v1;
    v10[1] = sub_2312D5CE8;
    v11 = *(v1 + 1136);
LABEL_16:
    OUTLINED_FUNCTION_127(v11);
    OUTLINED_FUNCTION_54_9();

    return sub_2312D8A7C();
  }

LABEL_8:
  v12 = *(v1 + 1544);
  v13 = *(v1 + 1536);
  v14 = *(v1 + 1560);
  v15 = OUTLINED_FUNCTION_49_9();
  v16(v15);
  v17 = OUTLINED_FUNCTION_71();
  if (v18(v17) == v0)
  {
    v19 = OUTLINED_FUNCTION_99_0();
    v20(v19);
    v21 = OUTLINED_FUNCTION_71();
    v22(v21);
    if (v3)
    {
      v23 = *(v1 + 1424);
      v24 = *(v1 + 1416);
      v25 = *(v1 + 1016);
      sub_231369EE0();
      sub_231369EE0();
      sub_231368680();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43FF0, &unk_231370EA0);
      v26 = swift_allocObject();
      v27 = OUTLINED_FUNCTION_77_3(v26, xmmword_23136C1C0);
      v28 = MEMORY[0x277D837D0];
      v26[3].n128_u64[0] = v27;
      v26[3].n128_u64[1] = v29;
      OUTLINED_FUNCTION_69_6();
      v26[4].n128_u64[1] = v28;
      v26[5].n128_u64[0] = v31;
      v26[7].n128_u64[1] = v28;
      if (v23)
      {
        v32 = v24;
      }

      else
      {
        v32 = 0;
      }

      v33 = 0xE000000000000000;
      if (v23)
      {
        v33 = v23;
      }

      v26[5].n128_u64[1] = v30;
      v26[6].n128_u64[0] = v32;
      v26[6].n128_u64[1] = v33;
      sub_231369EE0();
      OUTLINED_FUNCTION_64();
      *(v1 + 1704) = sub_231369EC0();
      *(v1 + 1712) = *(v25 + 104);
      v34 = swift_task_alloc();
      *(v1 + 1720) = v34;
      *v34 = v1;
      OUTLINED_FUNCTION_48_8(v34);
      v11 = *(v1 + 1128);
      goto LABEL_16;
    }
  }

  else
  {
    v37 = OUTLINED_FUNCTION_136();
    v38(v37);
  }

  v175 = v12;
  *(v1 + 1792) = v12;
  *(v1 + 1784) = v13;
  *(v1 + 1776) = v3;
  *(v1 + 1768) = v14;
  v39 = *(v1 + 1480);
  v40 = *(v1 + 1472);
  v41 = *(v1 + 1464);
  OUTLINED_FUNCTION_16_23();
  OUTLINED_FUNCTION_70_6();
  v42(v14, *MEMORY[0x277D607E8]);
  v43 = OUTLINED_FUNCTION_16_7();
  (v41)(v43);
  v44 = OUTLINED_FUNCTION_26_1();
  v46 = sub_231311D04(v44, v45);
  v47 = OUTLINED_FUNCTION_54_0();
  v39(v47);
  if ((v46 & 1) != 0 && !v3)
  {
    v48 = *(v1 + 1184);
    sub_2313690F0();
    sub_231369EE0();
    v49 = sub_2313698A0();
    v50 = sub_23136A3A0();

    os_log_type_enabled(v49, v50);
    OUTLINED_FUNCTION_74_5();
    if (v51)
    {
      OUTLINED_FUNCTION_66_5();
      v169 = v52;
      v171 = v53;
      v54 = *(v1 + 1152);
      OUTLINED_FUNCTION_93_0();
      v176 = OUTLINED_FUNCTION_97_0();
      *v40 = 136315138;
      v55 = OUTLINED_FUNCTION_134();
      v58 = sub_2311CFD58(v55, v56, v57);

      *(v40 + 4) = v58;
      OUTLINED_FUNCTION_140(&dword_2311CB000, v59, v60, "Suggestion %s has siriHintsDisplay deliveryVehicle but displayDialog is nil. Returning nil SuggestionViewDetails");
      __swift_destroy_boxed_opaque_existential_1Tm(v176);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_88_0();

      (*(v54 + 8))();
      sub_2311D1F18(v1 + 216, &qword_27DD44720, &qword_231375260);
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 56));
      v174(v171, v169);
    }

    else
    {
      OUTLINED_FUNCTION_110();

      (*(v41 + 8))(v39, v40);
      sub_2311D1F18(v1 + 216, &qword_27DD44720, &qword_231375260);
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 56));
      v174(v48, v50);
    }

    goto LABEL_37;
  }

  v61 = *(v1 + 1480);
  v62 = *(v1 + 1464);
  OUTLINED_FUNCTION_16_23();
  OUTLINED_FUNCTION_70_6();
  v63(v14);
  v64 = OUTLINED_FUNCTION_16_7();
  v62(v64);
  v65 = OUTLINED_FUNCTION_26_1();
  v67 = sub_231311D04(v65, v66);
  v68 = OUTLINED_FUNCTION_54_0();
  v69 = v61(v68);
  if ((v67 & 1) != 0 && !v3 && !v175)
  {
    OUTLINED_FUNCTION_117(v69);
    sub_231369EE0();
    v70 = sub_2313698A0();
    sub_23136A3A0();
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_146();
    OUTLINED_FUNCTION_81_3();
    if (v71)
    {
      OUTLINED_FUNCTION_78_4();
      v72 = OUTLINED_FUNCTION_57_0();
      OUTLINED_FUNCTION_124(v72);
      v73 = OUTLINED_FUNCTION_94_0(4.8149e-34);

      MEMORY[4] = v73;
      OUTLINED_FUNCTION_59_7(&dword_2311CB000, v74, v75, "Suggestion %s has siriHintsSpoken deliveryVehicle but displayDialog and spokenDialog are nil. Returning nil SuggestionViewDetails");
      OUTLINED_FUNCTION_26_2();
      OUTLINED_FUNCTION_24();

      (*(v67 + 8))();
      sub_2311D1F18(v1 + 216, &qword_27DD44720, &qword_231375260);
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 56));
      v77 = v170;
      v76 = v172;
    }

    else
    {
      OUTLINED_FUNCTION_71_5();

      v90 = OUTLINED_FUNCTION_65_6();
      v91(v90);
      sub_2311D1F18(v1 + 216, &qword_27DD44720, &qword_231375260);
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 56));
      v76 = OUTLINED_FUNCTION_40_8();
    }

    v174(v76, v77);
LABEL_37:
    OUTLINED_FUNCTION_118();
    type metadata accessor for SuggestionViewDetails(0);
    v92 = OUTLINED_FUNCTION_90_0();
    OUTLINED_FUNCTION_106_0(v92, v93, v94, v95);
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 96));
    OUTLINED_FUNCTION_0_32();
    OUTLINED_FUNCTION_62_8();

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_54_9();

    __asm { BRAA            X1, X16 }
  }

  v78 = *(v1 + 1016);
  OUTLINED_FUNCTION_3_2((v1 + 96));
  OUTLINED_FUNCTION_57_10();
  sub_2313688E0();
  __swift_project_boxed_opaque_existential_1((v78 + 16), *(v78 + 40));
  v79 = OUTLINED_FUNCTION_8_22();
  if (v80(v79))
  {
    sub_2312DC674(v1 + 416, v1 + 816, &qword_27DD44718, &qword_231375258);
    if (*(v1 + 840))
    {
      OUTLINED_FUNCTION_35_13();
      v81 = swift_task_alloc();
      *(v1 + 1800) = v81;
      *v81 = v1;
      OUTLINED_FUNCTION_9_24(v81);
      OUTLINED_FUNCTION_82_2();

      return sub_2312DB7CC(v82, v83, v84, v85, v86, v87, v88);
    }

    sub_2311D1F18(v1 + 816, &qword_27DD44718, &qword_231375258);
  }

  *(v1 + 1824) = 0u;
  OUTLINED_FUNCTION_6_19();
  v98 = OUTLINED_FUNCTION_8_22();
  v100 = v99(v98);
  if (v100)
  {
    OUTLINED_FUNCTION_3_28();
    v101 = sub_231368300();
    *(v1 + 1856) = OUTLINED_FUNCTION_144(v101, v102);
    OUTLINED_FUNCTION_3_28();
    sub_231368300();
    OUTLINED_FUNCTION_90();
    v105 = OUTLINED_FUNCTION_143(v103, v104);
    OUTLINED_FUNCTION_100(v105);
    OUTLINED_FUNCTION_4_21();
    OUTLINED_FUNCTION_54_9();

    return MEMORY[0x2822009F8](v106, v107, v108);
  }

  OUTLINED_FUNCTION_142(v100);
  sub_2313698A0();
  v110 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v110))
  {
    v111 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v111);
    OUTLINED_FUNCTION_57(&dword_2311CB000, v112, v113, "Removing icon assets as it is disabled in config");
    OUTLINED_FUNCTION_9_10();
  }

  OUTLINED_FUNCTION_37_15();
  v114 = OUTLINED_FUNCTION_28_0();
  v115(v114);
  v116 = sub_231368F50();
  OUTLINED_FUNCTION_32_12(v116);
  OUTLINED_FUNCTION_6_19();
  v117 = OUTLINED_FUNCTION_8_22();
  if ((v118(v117) & 1) == 0)
  {
    goto LABEL_51;
  }

  v119 = OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_121(v119);

  OUTLINED_FUNCTION_123(v120);
  v121 = OUTLINED_FUNCTION_28_0();
  v3(v121);
  OUTLINED_FUNCTION_3_2((v1 + 576));
  OUTLINED_FUNCTION_29_13();
  sub_231367A60();
  v122 = __swift_destroy_boxed_opaque_existential_1Tm((v1 + 576));
  OUTLINED_FUNCTION_122(v122, v123, &qword_27DD44728, &qword_231375278);
  if (!*(v1 + 640))
  {
    OUTLINED_FUNCTION_85_1();
    OUTLINED_FUNCTION_84_1();
LABEL_51:
    v125.n128_f64[0] = OUTLINED_FUNCTION_41_13();
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_3_2((v1 + 616));
  OUTLINED_FUNCTION_42_12();
  sub_2311D1F18(v1 + 536, &qword_27DD44728, &qword_231375278);
  v125 = OUTLINED_FUNCTION_30_14();
LABEL_52:
  OUTLINED_FUNCTION_2_21(v124, v125, v126);
  OUTLINED_FUNCTION_64_7();
  OUTLINED_FUNCTION_33_13();
  if (v129)
  {
    v128 = 0;
  }

  else
  {
    v127 = v3;
  }

  v161 = v127;
  v162 = v128;
  v130 = OUTLINED_FUNCTION_14_24();
  v131(v130);
  v132 = OUTLINED_FUNCTION_31_17();
  v133(v132);
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_7_0();
  v134 = OUTLINED_FUNCTION_112();
  v135(v134);
  OUTLINED_FUNCTION_55_8();
  OUTLINED_FUNCTION_7_0();
  v136 = OUTLINED_FUNCTION_111();
  v137(v136);
  OUTLINED_FUNCTION_3_2(v62);
  OUTLINED_FUNCTION_148();
  sub_231369EE0();
  sub_231369EE0();
  OUTLINED_FUNCTION_28_0();
  sub_231368360();
  sub_2313667C0();
  v138 = OUTLINED_FUNCTION_22_16();
  v140 = v139(v138);
  OUTLINED_FUNCTION_7_19(v140, v141, v142, v143, v144, v145, v146, v147, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v170, v172, v173);
  type metadata accessor for SuggestionService();
  v148 = OUTLINED_FUNCTION_20_21();
  OUTLINED_FUNCTION_17_14(v148);
  v149 = swift_task_alloc();
  v150 = OUTLINED_FUNCTION_45_8(v149);
  *v150 = v151;
  OUTLINED_FUNCTION_1_30(v150);
  OUTLINED_FUNCTION_54_9();

  return sub_231316710();
}

uint64_t sub_2312D5CE8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1648) = v3;
  *(v1 + 1656) = v4;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312D5DD4()
{
  OUTLINED_FUNCTION_8();

  v1 = swift_task_alloc();
  *(v0 + 1664) = v1;
  *v1 = v0;
  v1[1] = sub_2312D5E74;
  OUTLINED_FUNCTION_96_0(*(v0 + 1136));

  return sub_2312D8A7C();
}

uint64_t sub_2312D5E74()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v6 + 1672) = v5;
  *(v6 + 1680) = v7;

  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2312D5F78()
{
  OUTLINED_FUNCTION_131();
  v1 = *(v0 + 1136);

  v2 = OUTLINED_FUNCTION_27();
  v3(v2);
  v4 = *(v0 + 1680);
  v5 = *(v0 + 1672);
  v6 = *(v0 + 1656);
  v7 = *(v0 + 1648);
  v8 = OUTLINED_FUNCTION_49_9();
  v9(v8);
  v10 = OUTLINED_FUNCTION_71();
  if (v11(v10) == v1)
  {
    v12 = OUTLINED_FUNCTION_99_0();
    v13(v12);
    v14 = OUTLINED_FUNCTION_71();
    v15(v14);
    if (v4)
    {
      v16 = *(v0 + 1424);
      v17 = *(v0 + 1416);
      v18 = *(v0 + 1016);
      sub_231369EE0();
      sub_231369EE0();
      sub_231368680();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43FF0, &unk_231370EA0);
      v19 = swift_allocObject();
      v20 = OUTLINED_FUNCTION_77_3(v19, xmmword_23136C1C0);
      v21 = MEMORY[0x277D837D0];
      v19[3].n128_u64[0] = v20;
      v19[3].n128_u64[1] = v22;
      OUTLINED_FUNCTION_69_6();
      v19[4].n128_u64[1] = v21;
      v19[5].n128_u64[0] = v24;
      v19[7].n128_u64[1] = v21;
      if (v16)
      {
        v25 = v17;
      }

      else
      {
        v25 = 0;
      }

      v26 = 0xE000000000000000;
      if (v16)
      {
        v26 = v16;
      }

      v19[5].n128_u64[1] = v23;
      v19[6].n128_u64[0] = v25;
      v19[6].n128_u64[1] = v26;
      sub_231369EE0();
      OUTLINED_FUNCTION_64();
      *(v0 + 1704) = sub_231369EC0();
      *(v0 + 1712) = *(v18 + 104);
      v27 = swift_task_alloc();
      *(v0 + 1720) = v27;
      *v27 = v0;
      OUTLINED_FUNCTION_48_8(v27);
      OUTLINED_FUNCTION_127(*(v0 + 1128));
      OUTLINED_FUNCTION_54_9();

      return sub_2312D8A7C();
    }
  }

  else
  {
    v30 = OUTLINED_FUNCTION_136();
    v31(v30);
  }

  v168 = v6;
  *(v0 + 1792) = v6;
  *(v0 + 1784) = v7;
  *(v0 + 1776) = v4;
  *(v0 + 1768) = v5;
  v32 = *(v0 + 1480);
  v33 = *(v0 + 1472);
  v34 = *(v0 + 1464);
  OUTLINED_FUNCTION_16_23();
  OUTLINED_FUNCTION_70_6();
  v35(v7, *MEMORY[0x277D607E8]);
  v36 = OUTLINED_FUNCTION_16_7();
  (v34)(v36);
  v37 = OUTLINED_FUNCTION_26_1();
  v39 = sub_231311D04(v37, v38);
  v40 = OUTLINED_FUNCTION_54_0();
  v32(v40);
  if ((v39 & 1) != 0 && !v4)
  {
    v41 = *(v0 + 1184);
    sub_2313690F0();
    sub_231369EE0();
    v42 = sub_2313698A0();
    v43 = sub_23136A3A0();

    os_log_type_enabled(v42, v43);
    OUTLINED_FUNCTION_74_5();
    if (v44)
    {
      OUTLINED_FUNCTION_66_5();
      v162 = v45;
      v164 = v46;
      v47 = *(v0 + 1152);
      OUTLINED_FUNCTION_93_0();
      v169 = OUTLINED_FUNCTION_97_0();
      *v33 = 136315138;
      v48 = OUTLINED_FUNCTION_134();
      v51 = sub_2311CFD58(v48, v49, v50);

      *(v33 + 4) = v51;
      OUTLINED_FUNCTION_140(&dword_2311CB000, v52, v53, "Suggestion %s has siriHintsDisplay deliveryVehicle but displayDialog is nil. Returning nil SuggestionViewDetails");
      __swift_destroy_boxed_opaque_existential_1Tm(v169);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_88_0();

      (*(v47 + 8))();
      sub_2311D1F18(v0 + 216, &qword_27DD44720, &qword_231375260);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
      v167(v164, v162);
    }

    else
    {
      OUTLINED_FUNCTION_110();

      (*(v34 + 8))(v32, v33);
      sub_2311D1F18(v0 + 216, &qword_27DD44720, &qword_231375260);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
      v167(v41, v43);
    }

    goto LABEL_29;
  }

  v54 = *(v0 + 1480);
  v55 = *(v0 + 1464);
  OUTLINED_FUNCTION_16_23();
  OUTLINED_FUNCTION_70_6();
  v56(v7);
  v57 = OUTLINED_FUNCTION_16_7();
  v55(v57);
  v58 = OUTLINED_FUNCTION_26_1();
  v60 = sub_231311D04(v58, v59);
  v61 = OUTLINED_FUNCTION_54_0();
  v62 = v54(v61);
  if ((v60 & 1) != 0 && !v4 && !v168)
  {
    OUTLINED_FUNCTION_117(v62);
    sub_231369EE0();
    v63 = sub_2313698A0();
    sub_23136A3A0();
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_146();
    OUTLINED_FUNCTION_81_3();
    if (v64)
    {
      OUTLINED_FUNCTION_78_4();
      v65 = OUTLINED_FUNCTION_57_0();
      OUTLINED_FUNCTION_124(v65);
      v66 = OUTLINED_FUNCTION_94_0(4.8149e-34);

      MEMORY[4] = v66;
      OUTLINED_FUNCTION_59_7(&dword_2311CB000, v67, v68, "Suggestion %s has siriHintsSpoken deliveryVehicle but displayDialog and spokenDialog are nil. Returning nil SuggestionViewDetails");
      OUTLINED_FUNCTION_26_2();
      OUTLINED_FUNCTION_24();

      (*(v60 + 8))();
      sub_2311D1F18(v0 + 216, &qword_27DD44720, &qword_231375260);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
      v70 = v163;
      v69 = v165;
    }

    else
    {
      OUTLINED_FUNCTION_71_5();

      v83 = OUTLINED_FUNCTION_65_6();
      v84(v83);
      sub_2311D1F18(v0 + 216, &qword_27DD44720, &qword_231375260);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
      v69 = OUTLINED_FUNCTION_40_8();
    }

    v167(v69, v70);
LABEL_29:
    OUTLINED_FUNCTION_118();
    type metadata accessor for SuggestionViewDetails(0);
    v85 = OUTLINED_FUNCTION_90_0();
    OUTLINED_FUNCTION_106_0(v85, v86, v87, v88);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    OUTLINED_FUNCTION_0_32();
    OUTLINED_FUNCTION_62_8();

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_54_9();

    __asm { BRAA            X1, X16 }
  }

  v71 = *(v0 + 1016);
  OUTLINED_FUNCTION_3_2((v0 + 96));
  OUTLINED_FUNCTION_57_10();
  sub_2313688E0();
  __swift_project_boxed_opaque_existential_1((v71 + 16), *(v71 + 40));
  v72 = OUTLINED_FUNCTION_8_22();
  if (v73(v72))
  {
    sub_2312DC674(v0 + 416, v0 + 816, &qword_27DD44718, &qword_231375258);
    if (*(v0 + 840))
    {
      OUTLINED_FUNCTION_35_13();
      v74 = swift_task_alloc();
      *(v0 + 1800) = v74;
      *v74 = v0;
      OUTLINED_FUNCTION_9_24(v74);
      OUTLINED_FUNCTION_82_2();

      return sub_2312DB7CC(v75, v76, v77, v78, v79, v80, v81);
    }

    sub_2311D1F18(v0 + 816, &qword_27DD44718, &qword_231375258);
  }

  *(v0 + 1824) = 0u;
  OUTLINED_FUNCTION_6_19();
  v91 = OUTLINED_FUNCTION_8_22();
  v93 = v92(v91);
  if (v93)
  {
    OUTLINED_FUNCTION_3_28();
    v94 = sub_231368300();
    *(v0 + 1856) = OUTLINED_FUNCTION_144(v94, v95);
    OUTLINED_FUNCTION_3_28();
    sub_231368300();
    OUTLINED_FUNCTION_90();
    v98 = OUTLINED_FUNCTION_143(v96, v97);
    OUTLINED_FUNCTION_100(v98);
    OUTLINED_FUNCTION_4_21();
    OUTLINED_FUNCTION_54_9();

    return MEMORY[0x2822009F8](v99, v100, v101);
  }

  OUTLINED_FUNCTION_142(v93);
  sub_2313698A0();
  v103 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v103))
  {
    v104 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v104);
    OUTLINED_FUNCTION_57(&dword_2311CB000, v105, v106, "Removing icon assets as it is disabled in config");
    OUTLINED_FUNCTION_9_10();
  }

  OUTLINED_FUNCTION_37_15();
  v107 = OUTLINED_FUNCTION_28_0();
  v108(v107);
  v109 = sub_231368F50();
  OUTLINED_FUNCTION_32_12(v109);
  OUTLINED_FUNCTION_6_19();
  v110 = OUTLINED_FUNCTION_8_22();
  if ((v111(v110) & 1) == 0)
  {
    goto LABEL_43;
  }

  v112 = OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_121(v112);

  OUTLINED_FUNCTION_123(v113);
  v114 = OUTLINED_FUNCTION_28_0();
  v4(v114);
  OUTLINED_FUNCTION_3_2((v0 + 576));
  OUTLINED_FUNCTION_29_13();
  sub_231367A60();
  v115 = __swift_destroy_boxed_opaque_existential_1Tm((v0 + 576));
  OUTLINED_FUNCTION_122(v115, v116, &qword_27DD44728, &qword_231375278);
  if (!*(v0 + 640))
  {
    OUTLINED_FUNCTION_85_1();
    OUTLINED_FUNCTION_84_1();
LABEL_43:
    v118.n128_f64[0] = OUTLINED_FUNCTION_41_13();
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_3_2((v0 + 616));
  OUTLINED_FUNCTION_42_12();
  sub_2311D1F18(v0 + 536, &qword_27DD44728, &qword_231375278);
  v118 = OUTLINED_FUNCTION_30_14();
LABEL_44:
  OUTLINED_FUNCTION_2_21(v117, v118, v119);
  OUTLINED_FUNCTION_64_7();
  OUTLINED_FUNCTION_33_13();
  if (v122)
  {
    v121 = 0;
  }

  else
  {
    v120 = v4;
  }

  v154 = v120;
  v155 = v121;
  v123 = OUTLINED_FUNCTION_14_24();
  v124(v123);
  v125 = OUTLINED_FUNCTION_31_17();
  v126(v125);
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_7_0();
  v127 = OUTLINED_FUNCTION_112();
  v128(v127);
  OUTLINED_FUNCTION_55_8();
  OUTLINED_FUNCTION_7_0();
  v129 = OUTLINED_FUNCTION_111();
  v130(v129);
  OUTLINED_FUNCTION_3_2(v55);
  OUTLINED_FUNCTION_148();
  sub_231369EE0();
  sub_231369EE0();
  OUTLINED_FUNCTION_28_0();
  sub_231368360();
  sub_2313667C0();
  v131 = OUTLINED_FUNCTION_22_16();
  v133 = v132(v131);
  OUTLINED_FUNCTION_7_19(v133, v134, v135, v136, v137, v138, v139, v140, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v163, v165, v166);
  type metadata accessor for SuggestionService();
  v141 = OUTLINED_FUNCTION_20_21();
  OUTLINED_FUNCTION_17_14(v141);
  v142 = swift_task_alloc();
  v143 = OUTLINED_FUNCTION_45_8(v142);
  *v143 = v144;
  OUTLINED_FUNCTION_1_30(v143);
  OUTLINED_FUNCTION_54_9();

  return sub_231316710();
}

uint64_t sub_2312D6984()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1728) = v3;
  *(v1 + 1736) = v4;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312D6A70()
{
  OUTLINED_FUNCTION_8();

  v1 = swift_task_alloc();
  *(v0 + 1744) = v1;
  *v1 = v0;
  v1[1] = sub_2312D6B10;
  OUTLINED_FUNCTION_96_0(*(v0 + 1128));

  return sub_2312D8A7C();
}

uint64_t sub_2312D6B10()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v6 + 1752) = v5;
  *(v6 + 1760) = v7;

  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2312D6C14()
{
  v149 = v0;
  v1 = *(v0 + 1128);

  v2 = OUTLINED_FUNCTION_27();
  v3(v2);
  v147 = *(v0 + 1752);
  v144 = *(v0 + 1728);
  *(v0 + 1768) = v147;
  *(v0 + 1784) = v144;
  v4 = *(v0 + 1480);
  v5 = *(v0 + 1472);
  v6 = *(v0 + 1464);
  OUTLINED_FUNCTION_16_23();
  v7 = *(v0 + 1304);
  v8 = *(v0 + 1280);
  v9(v7, *MEMORY[0x277D607E8]);
  v6(v7, v1, v8);
  v10 = OUTLINED_FUNCTION_28_0();
  v12 = sub_231311D04(v10, v11);
  v13 = OUTLINED_FUNCTION_26_1();
  v4(v13);
  if ((v12 & 1) != 0 && !*(&v147 + 1))
  {
    sub_2313690F0();
    sub_231369EE0();
    v14 = sub_2313698A0();
    sub_23136A3A0();
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_146();
    OUTLINED_FUNCTION_115();
    v142 = v15;
    v16 = *(v0 + 1368);
    if (v17)
    {
      v18 = *(v0 + 1360);
      v135 = *(v0 + 1280);
      v137 = *(v0 + 1312);
      v19 = *(v0 + 1152);
      v131 = *(v0 + 1144);
      v133 = *(v0 + 1184);
      swift_slowAlloc();
      v20 = OUTLINED_FUNCTION_57_0();
      OUTLINED_FUNCTION_124(v20);
      *v5 = 136315138;
      v21 = sub_2311CFD58(v18, v16, v148);

      *(v5 + 4) = v21;
      OUTLINED_FUNCTION_59_7(&dword_2311CB000, v22, v23, "Suggestion %s has siriHintsDisplay deliveryVehicle but displayDialog is nil. Returning nil SuggestionViewDetails");
      OUTLINED_FUNCTION_26_2();
      OUTLINED_FUNCTION_24();

      (*(v19 + 8))(v133, v131);
      sub_2311D1F18(v0 + 216, &qword_27DD44720, &qword_231375260);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
      v25 = v135;
      v24 = v137;
    }

    else
    {
      v58 = *(v0 + 1312);
      v59 = *(v0 + 1280);

      v60 = OUTLINED_FUNCTION_65_6();
      v61(v60);
      sub_2311D1F18(v0 + 216, &qword_27DD44720, &qword_231375260);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
      v24 = v58;
      v25 = v59;
    }

    v142(v24, v25);
    goto LABEL_19;
  }

  v26 = *(v0 + 1480);
  v27 = *(v0 + 1464);
  OUTLINED_FUNCTION_16_23();
  v28 = *(v0 + 1304);
  v29 = *(v0 + 1280);
  v30(v28, *(v0 + 1948));
  v27(v28, v12, v29);
  v31 = OUTLINED_FUNCTION_28_0();
  v33 = sub_231311D04(v31, v32);
  v34 = OUTLINED_FUNCTION_26_1();
  v35 = (v26)(v34);
  if ((v33 & 1) != 0 && !*(&v147 + 1) && !*(&v144 + 1))
  {
    OUTLINED_FUNCTION_117(v35);
    sub_231369EE0();
    v36 = sub_2313698A0();
    sub_23136A3A0();
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_146();
    OUTLINED_FUNCTION_115();
    v145 = v37;
    if (v38)
    {
      v138 = *(v0 + 1280);
      v140 = *(v0 + 1312);
      v39 = *(v0 + 1152);
      OUTLINED_FUNCTION_93_0();
      v40 = OUTLINED_FUNCTION_57_0();
      OUTLINED_FUNCTION_124(v40);
      v41 = OUTLINED_FUNCTION_94_0(4.8149e-34);

      *(v26 + 4) = v41;
      OUTLINED_FUNCTION_59_7(&dword_2311CB000, v42, v43, "Suggestion %s has siriHintsSpoken deliveryVehicle but displayDialog and spokenDialog are nil. Returning nil SuggestionViewDetails");
      OUTLINED_FUNCTION_26_2();
      OUTLINED_FUNCTION_24();

      (*(v39 + 8))();
      sub_2311D1F18(v0 + 216, &qword_27DD44720, &qword_231375260);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
      v45 = v138;
      v44 = v140;
    }

    else
    {
      OUTLINED_FUNCTION_71_5();

      v62 = OUTLINED_FUNCTION_65_6();
      v63(v62);
      sub_2311D1F18(v0 + 216, &qword_27DD44720, &qword_231375260);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
      v44 = OUTLINED_FUNCTION_40_8();
    }

    v145(v44, v45);
LABEL_19:
    OUTLINED_FUNCTION_118();
    type metadata accessor for SuggestionViewDetails(0);
    v64 = OUTLINED_FUNCTION_90_0();
    OUTLINED_FUNCTION_106_0(v64, v65, v66, v67);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    OUTLINED_FUNCTION_0_32();
    OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_91_0();

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_137();

    __asm { BRAA            X1, X16 }
  }

  v46 = *(v0 + 1016);
  OUTLINED_FUNCTION_3_2((v0 + 96));
  OUTLINED_FUNCTION_57_10();
  sub_2313688E0();
  __swift_project_boxed_opaque_existential_1((v46 + 16), *(v46 + 40));
  v47 = OUTLINED_FUNCTION_8_22();
  if (v48(v47))
  {
    sub_2312DC674(v0 + 416, v0 + 816, &qword_27DD44718, &qword_231375258);
    if (*(v0 + 840))
    {
      OUTLINED_FUNCTION_35_13();
      v49 = swift_task_alloc();
      *(v0 + 1800) = v49;
      *v49 = v0;
      v50 = OUTLINED_FUNCTION_9_24(v49);

      return sub_2312DB7CC(v50, v51, v52, v53, v54, v55, v56);
    }

    sub_2311D1F18(v0 + 816, &qword_27DD44718, &qword_231375258);
  }

  *(v0 + 1824) = 0u;
  OUTLINED_FUNCTION_6_19();
  v70 = OUTLINED_FUNCTION_8_22();
  v72 = v71(v70);
  if (v72)
  {
    OUTLINED_FUNCTION_3_28();
    v73 = sub_231368300();
    *(v0 + 1856) = OUTLINED_FUNCTION_144(v73, v74);
    OUTLINED_FUNCTION_3_28();
    sub_231368300();
    OUTLINED_FUNCTION_90();
    v77 = OUTLINED_FUNCTION_143(v75, v76);
    OUTLINED_FUNCTION_100(v77);
    OUTLINED_FUNCTION_4_21();
    OUTLINED_FUNCTION_137();

    return MEMORY[0x2822009F8](v78, v79, v80);
  }

  OUTLINED_FUNCTION_142(v72);
  sub_2313698A0();
  v82 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v82))
  {
    v83 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v83);
    OUTLINED_FUNCTION_57(&dword_2311CB000, v84, v85, "Removing icon assets as it is disabled in config");
    OUTLINED_FUNCTION_9_10();
  }

  OUTLINED_FUNCTION_37_15();
  v86 = OUTLINED_FUNCTION_28_0();
  v87(v86);
  v88 = sub_231368F50();
  OUTLINED_FUNCTION_32_12(v88);
  OUTLINED_FUNCTION_6_19();
  v89 = OUTLINED_FUNCTION_8_22();
  if ((v90(v89) & 1) == 0)
  {
    goto LABEL_33;
  }

  v91 = OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_121(v91);

  OUTLINED_FUNCTION_123(v92);
  v93 = OUTLINED_FUNCTION_28_0();
  (v26)(v93);
  OUTLINED_FUNCTION_3_2((v0 + 576));
  OUTLINED_FUNCTION_29_13();
  sub_231367A60();
  v94 = __swift_destroy_boxed_opaque_existential_1Tm((v0 + 576));
  OUTLINED_FUNCTION_122(v94, v95, &qword_27DD44728, &qword_231375278);
  if (!*(v0 + 640))
  {
    OUTLINED_FUNCTION_85_1();
    OUTLINED_FUNCTION_84_1();
LABEL_33:
    v97.n128_f64[0] = OUTLINED_FUNCTION_41_13();
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_3_2((v0 + 616));
  OUTLINED_FUNCTION_42_12();
  sub_2311D1F18(v0 + 536, &qword_27DD44728, &qword_231375278);
  v97 = OUTLINED_FUNCTION_30_14();
LABEL_34:
  *(v0 + 1920) = v96;
  *(v0 + 1888) = v97;
  *(v0 + 1904) = v98;
  v141 = *(v0 + 1824);
  v143 = *(v0 + 1832);
  v99 = *(v0 + 1792);
  v125 = *(v0 + 1768);
  v128 = *(v0 + 1784);
  v130 = *(v0 + 1368);
  v123 = *(v0 + 1328);
  v122 = *(v0 + 1312);
  v120 = *(v0 + 1776);
  v121 = *(v0 + 1280);
  v132 = *(v0 + 1264);
  v134 = *(v0 + 1256);
  v136 = *(v0 + 1248);
  v139 = *(v0 + 1360);
  v100 = *(v0 + 1048);
  v101 = *(v0 + 1040);
  v146 = (*(v0 + 1000) + *(v0 + 1944));
  v102 = *(v0 + 1008);
  sub_2312D92AC((v0 + 16), *(v0 + 1056));
  if (v99)
  {
    v103 = v128;
  }

  else
  {
    v103 = 0;
  }

  v104 = 0xE000000000000000;
  if (v99)
  {
    v105 = v99;
  }

  else
  {
    v105 = 0xE000000000000000;
  }

  v127 = v105;
  v129 = v103;
  v106 = v125;
  if (v120)
  {
    v104 = v120;
  }

  else
  {
    v106 = 0;
  }

  v124 = v104;
  v126 = v106;
  v107 = OUTLINED_FUNCTION_14_24();
  v108(v107);
  v123(&v100[v101[9]], v122, v121);
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_7_0();
  v109 = OUTLINED_FUNCTION_112();
  v110(v109);
  sub_231369050();
  OUTLINED_FUNCTION_7_0();
  v111 = OUTLINED_FUNCTION_111();
  v112(v111);
  v113 = v102[3];
  OUTLINED_FUNCTION_3_2(v102);
  sub_231369EE0();
  sub_231369EE0();
  sub_231369EE0();
  OUTLINED_FUNCTION_28_0();
  sub_231368360();
  sub_2313667C0();
  OUTLINED_FUNCTION_90();
  (*(v134 + 8))(v132, v136);
  *v100 = v129;
  *(v100 + 1) = v127;
  *(v100 + 2) = v126;
  *(v100 + 3) = v124;
  *(v100 + 4) = v141;
  *(v100 + 5) = v143;
  v114 = &v100[v101[8]];
  *v114 = v139;
  *(v114 + 1) = v130;
  v115 = &v100[v101[12]];
  *v115 = v132;
  *(v115 + 1) = v113;
  sub_2311CF388(v0 + 56, v0 + 456);
  type metadata accessor for SuggestionService();
  *(v0 + 1928) = OUTLINED_FUNCTION_20_21();
  __swift_project_boxed_opaque_existential_1(v146, v146[3]);
  OUTLINED_FUNCTION_71();
  sub_2313682B0();
  v116 = swift_task_alloc();
  v117 = OUTLINED_FUNCTION_45_8(v116);
  *v117 = v118;
  OUTLINED_FUNCTION_1_30(v117);
  OUTLINED_FUNCTION_137();

  return sub_231316710();
}

uint64_t sub_2312D768C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1808) = v3;
  *(v1 + 1816) = v4;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312D7778()
{
  OUTLINED_FUNCTION_131();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 776));
  *(v0 + 1824) = *(v0 + 1808);
  OUTLINED_FUNCTION_6_19();
  v3 = OUTLINED_FUNCTION_8_22();
  v5 = v4(v3);
  if (v5)
  {
    OUTLINED_FUNCTION_3_28();
    v6 = sub_231368300();
    *(v0 + 1856) = OUTLINED_FUNCTION_144(v6, v7);
    OUTLINED_FUNCTION_3_28();
    sub_231368300();
    OUTLINED_FUNCTION_90();
    v10 = OUTLINED_FUNCTION_143(v8, v9);
    OUTLINED_FUNCTION_100(v10);
    OUTLINED_FUNCTION_4_21();
    OUTLINED_FUNCTION_82_2();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  OUTLINED_FUNCTION_142(v5);
  sub_2313698A0();
  v15 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v15))
  {
    v16 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v16);
    OUTLINED_FUNCTION_57(&dword_2311CB000, v17, v18, "Removing icon assets as it is disabled in config");
    OUTLINED_FUNCTION_9_10();
  }

  OUTLINED_FUNCTION_37_15();
  v19 = OUTLINED_FUNCTION_28_0();
  v20(v19);
  v21 = sub_231368F50();
  OUTLINED_FUNCTION_32_12(v21);
  OUTLINED_FUNCTION_6_19();
  v22 = OUTLINED_FUNCTION_8_22();
  if ((v23(v22) & 1) == 0)
  {
    goto LABEL_11;
  }

  v24 = OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_121(v24);

  OUTLINED_FUNCTION_123(v25);
  v26 = OUTLINED_FUNCTION_28_0();
  v1(v26);
  OUTLINED_FUNCTION_3_2((v0 + 576));
  OUTLINED_FUNCTION_29_13();
  sub_231367A60();
  v27 = __swift_destroy_boxed_opaque_existential_1Tm((v0 + 576));
  OUTLINED_FUNCTION_122(v27, v28, &qword_27DD44728, &qword_231375278);
  if (!*(v0 + 640))
  {
    OUTLINED_FUNCTION_85_1();
    OUTLINED_FUNCTION_84_1();
LABEL_11:
    v30.n128_f64[0] = OUTLINED_FUNCTION_41_13();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_3_2((v0 + 616));
  OUTLINED_FUNCTION_42_12();
  sub_2311D1F18(v0 + 536, &qword_27DD44728, &qword_231375278);
  v30 = OUTLINED_FUNCTION_30_14();
LABEL_12:
  OUTLINED_FUNCTION_2_21(v29, v30, v31);
  OUTLINED_FUNCTION_64_7();
  OUTLINED_FUNCTION_33_13();
  if (v34)
  {
    v33 = 0;
  }

  else
  {
    v32 = v1;
  }

  v67 = v32;
  v68 = v33;
  v35 = OUTLINED_FUNCTION_14_24();
  v36(v35);
  v37 = OUTLINED_FUNCTION_31_17();
  v38(v37);
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_7_0();
  v39 = OUTLINED_FUNCTION_112();
  v40(v39);
  OUTLINED_FUNCTION_55_8();
  OUTLINED_FUNCTION_7_0();
  v41 = OUTLINED_FUNCTION_111();
  v42(v41);
  OUTLINED_FUNCTION_3_2(v2);
  OUTLINED_FUNCTION_148();
  sub_231369EE0();
  sub_231369EE0();
  OUTLINED_FUNCTION_28_0();
  sub_231368360();
  sub_2313667C0();
  v43 = OUTLINED_FUNCTION_22_16();
  v45 = v44(v43);
  OUTLINED_FUNCTION_7_19(v45, v46, v47, v48, v49, v50, v51, v52, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
  type metadata accessor for SuggestionService();
  v53 = OUTLINED_FUNCTION_20_21();
  OUTLINED_FUNCTION_17_14(v53);
  v54 = swift_task_alloc();
  v55 = OUTLINED_FUNCTION_45_8(v54);
  *v55 = v56;
  OUTLINED_FUNCTION_1_30(v55);
  OUTLINED_FUNCTION_82_2();

  return sub_231316710();
}

uint64_t sub_2312D7A8C()
{
  OUTLINED_FUNCTION_8();
  sub_231369380();
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_2312D7AFC()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[85];
  v2 = v0[86];
  __swift_project_boxed_opaque_existential_1(v0 + 82, v1);
  v0[90] = v1;
  v0[91] = *(v2 + 8);
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 87);
  OUTLINED_FUNCTION_26_0();
  (*(v3 + 16))();
  sub_23136A260();
  v4 = OUTLINED_FUNCTION_10_16();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312D7BDC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_80_4();
  sub_231369430();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 696));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 656));
  v1 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_2312D7C64()
{
  OUTLINED_FUNCTION_131();
  v1 = *(v0 + 1080);
  if (*(v0 + 912))
  {
    v2 = sub_231368F50();
    v3 = swift_dynamicCast() ^ 1;
    v4 = v1;
  }

  else
  {
    sub_2311D1F18(v0 + 888, &qword_27DD443C0, &unk_23136E000);
    v2 = sub_231368F50();
    v4 = v1;
    v3 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v3, 1, v2);
  v5 = *(v0 + 1072);
  sub_2312DC674(*(v0 + 1080), v5, &qword_27DD436D0, &qword_23136D3E0);
  sub_231368F50();
  if (__swift_getEnumTagSinglePayload(v5, 1, v2) == 1)
  {
    sub_2311D1F18(*(v0 + 1072), &qword_27DD436D0, &qword_23136D3E0);
    *(v0 + 920) = 0u;
    *(v0 + 936) = 0u;
  }

  else
  {
    *(v0 + 944) = v2;
    __swift_allocate_boxed_opaque_existential_1Tm((v0 + 920));
    OUTLINED_FUNCTION_26_0();
    (*(v6 + 32))();
  }

  v7 = *(v0 + 1384);
  v8 = *(v0 + 1376);
  v9 = *(v0 + 1200);
  v68 = *(v0 + 1080);
  v10 = sub_2313678C0();
  OUTLINED_FUNCTION_80_4();
  sub_2312C5010();
  v10(v0 + 952, 0);
  OUTLINED_FUNCTION_3_28();
  sub_2313682A0();
  sub_2313676F0();

  sub_231368140();
  v11 = OUTLINED_FUNCTION_40_8();
  v8(v11);
  OUTLINED_FUNCTION_3_2((v0 + 736));
  sub_231367AA0();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 736));
  sub_2311D1F18(v68, &qword_27DD436D0, &qword_23136D3E0);
  OUTLINED_FUNCTION_6_19();
  v12 = OUTLINED_FUNCTION_8_22();
  if (v13(v12))
  {
    v14 = OUTLINED_FUNCTION_10_23();
    OUTLINED_FUNCTION_121(v14);

    OUTLINED_FUNCTION_123(v15);
    v16 = OUTLINED_FUNCTION_28_0();
    v9(v16);
    OUTLINED_FUNCTION_3_2((v0 + 576));
    OUTLINED_FUNCTION_29_13();
    sub_231367A60();
    v17 = __swift_destroy_boxed_opaque_existential_1Tm((v0 + 576));
    OUTLINED_FUNCTION_122(v17, v18, &qword_27DD44728, &qword_231375278);
    if (*(v0 + 640))
    {
      OUTLINED_FUNCTION_3_2((v0 + 616));
      OUTLINED_FUNCTION_42_12();
      sub_2311D1F18(v0 + 536, &qword_27DD44728, &qword_231375278);
      v20 = OUTLINED_FUNCTION_30_14();
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_85_1();
    OUTLINED_FUNCTION_84_1();
  }

  v20.n128_f64[0] = OUTLINED_FUNCTION_41_13();
LABEL_12:
  OUTLINED_FUNCTION_2_21(v19, v20, v21);
  OUTLINED_FUNCTION_64_7();
  OUTLINED_FUNCTION_33_13();
  if (v24)
  {
    v23 = 0;
  }

  else
  {
    v22 = v9;
  }

  v57 = v22;
  v58 = v23;
  v25 = OUTLINED_FUNCTION_14_24();
  v26(v25);
  v27 = OUTLINED_FUNCTION_31_17();
  v28(v27);
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_7_0();
  v29 = OUTLINED_FUNCTION_112();
  v30(v29);
  OUTLINED_FUNCTION_55_8();
  OUTLINED_FUNCTION_7_0();
  v31 = OUTLINED_FUNCTION_111();
  v32(v31);
  OUTLINED_FUNCTION_3_2(v7);
  OUTLINED_FUNCTION_148();
  sub_231369EE0();
  sub_231369EE0();
  OUTLINED_FUNCTION_28_0();
  sub_231368360();
  sub_2313667C0();
  v33 = OUTLINED_FUNCTION_22_16();
  v35 = v34(v33);
  OUTLINED_FUNCTION_7_19(v35, v36, v37, v38, v39, v40, v41, v42, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
  type metadata accessor for SuggestionService();
  v43 = OUTLINED_FUNCTION_20_21();
  OUTLINED_FUNCTION_17_14(v43);
  v44 = swift_task_alloc();
  v45 = OUTLINED_FUNCTION_45_8(v44);
  *v45 = v46;
  OUTLINED_FUNCTION_1_30(v45);
  OUTLINED_FUNCTION_82_2();

  return sub_231316710();
}

uint64_t sub_2312D8084()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 1032);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  swift_unknownObjectRelease();
  sub_2311D1F18(v2, &qword_27DD432D8, &unk_23136BED0);
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312D81D4()
{
  v16 = *(v0 + 1920);
  v11 = *(v0 + 1480);
  v9 = *(v0 + 1312);
  v1 = *(v0 + 1280);
  v15 = *(v0 + 1056);
  v10 = *(v0 + 1048);
  v12 = *(v0 + 1000);
  v2 = *(v0 + 992);
  v13 = *(v0 + 1904);
  v14 = *(v0 + 1888);

  v3 = OUTLINED_FUNCTION_26_1();
  v4(v3);
  sub_2311D1F18(v0 + 416, &qword_27DD44718, &qword_231375258);
  sub_2311D1F18(v0 + 216, &qword_27DD44720, &qword_231375260);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v11(v9, v1);
  sub_2312DC61C(v10, v2, type metadata accessor for ViewDetails);
  v5 = type metadata accessor for SuggestionViewDetails(0);
  sub_2312DC54C(v12, v2 + v5[5], type metadata accessor for RankedCandidateSuggestion);
  sub_2311D38A8((v0 + 456), v2 + v5[6]);
  sub_2311D38A8((v0 + 496), v2 + v5[7]);
  v6 = v2 + v5[8];
  *v6 = v14;
  *(v6 + 16) = v13;
  *(v6 + 32) = v16;
  sub_2312DBEC4(v15, v2 + v5[9]);

  __swift_storeEnumTagSinglePayload(v2, 0, 1, v5);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  OUTLINED_FUNCTION_0_32();
  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_91_0();

  OUTLINED_FUNCTION_56_0();

  return v7();
}

uint64_t sub_2312D84B0(double a1)
{
  v3[7] = MEMORY[0x277D839F8];
  *&v3[4] = a1;
  v1 = sub_2313678C0();
  sub_2312C5010();
  return v1(v3, 0);
}

uint64_t sub_2312D8534@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v53 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43FF0, &unk_231370EA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23136B670;
  strcpy((inited + 32), "invocationType");
  *(inited + 47) = -18;
  sub_231367C70();
  sub_2312DC504(&qword_280F7CA70, MEMORY[0x277D60AE8], MEMORY[0x277D60B08]);
  v4 = sub_23136A8B0();
  v5 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v6;
  sub_231367D80();
  sub_2312DC504(&qword_280F7CA40, MEMORY[0x277D60BA8], MEMORY[0x277D60BD8]);
  v7 = sub_23136A8B0();
  v9 = v8;
  *(&v48 + 1) = v5;
  *&v47 = v7;
  *(&v47 + 1) = v8;
  *&v50 = 0x79726576696C6564;
  *(&v50 + 1) = 0xEF656C6369686556;
  sub_2312250F8(&v47, &v51);
  sub_231369EE0();
  sub_23126E654();
  v11 = v10;
  *(v10 + 16) = 2;
  v12 = v51;
  *(v10 + 80) = v50;
  *(v10 + 96) = v12;
  *(v10 + 112) = v52;
  *&v50 = 29545;
  *(&v50 + 1) = 0xE200000000000000;
  v13 = sub_2312D9770(v7, v9);
  v15 = v14;

  MEMORY[0x23192A730](v13, v15);

  *(&v48 + 1) = MEMORY[0x277D839B0];
  LOBYTE(v47) = 1;
  sub_2312250F8(&v47, &v51);
  v16 = *(v11 + 16);
  v17 = v16 + 1;
  if (v16 >= *(v11 + 24) >> 1)
  {
LABEL_18:
    sub_23126E654();
    v11 = v41;
  }

  *(v11 + 16) = v17;
  v18 = (v11 + 48 * v16);
  v19 = v50;
  v20 = v52;
  v18[3] = v51;
  v18[4] = v20;
  v18[2] = v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = sub_2313682F0();
  a1 = v21;
  v17 = v21 + 64;
  v22 = 1 << *(v21 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v21 + 64);
  v25 = (v22 + 63) >> 6;
  sub_231369EE0();
  v16 = 0;
  v43 = MEMORY[0x277D84F90];
  while (1)
  {
    v26 = v16;
    if (!v24)
    {
      break;
    }

LABEL_9:
    v27 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v28 = v27 | (v16 << 6);
    v29 = (a1[6] + 16 * v28);
    v30 = *v29;
    v31 = v29[1];
    sub_2311D1D6C(a1[7] + 32 * v28, &v51);
    *&v50 = v30;
    *(&v50 + 1) = v31;
    sub_231369EE0();
    sub_2312D9858(v30, v31, &v51, &v47);
    sub_2311D1F18(&v50, &qword_27DD43558, &qword_231374890);
    if (*(&v47 + 1))
    {
      v44 = v47;
      v45 = v48;
      v46 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23126E654();
        v43 = v35;
      }

      v32 = *(v43 + 16);
      v33 = v32 + 1;
      if (v32 >= *(v43 + 24) >> 1)
      {
        sub_23126E654();
        v33 = v32 + 1;
        v43 = v36;
      }

      *(v43 + 16) = v33;
      v34 = (v43 + 48 * v32);
      v34[3] = v45;
      v34[4] = v46;
      v34[2] = v44;
    }

    else
    {
      sub_2311D1F18(&v47, &qword_27DD44788, &unk_231375458);
    }
  }

  while (1)
  {
    v16 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v16 >= v25)
    {
      break;
    }

    v24 = *(v17 + 8 * v16);
    ++v26;
    if (v24)
    {
      goto LABEL_9;
    }
  }

  *&v50 = v43;
  v37 = sub_231369EE0();
  sub_231267450(v37);
  sub_2312D3380(v50);

  v38 = sub_2313688B0();
  swift_allocObject();
  result = sub_2313688A0();
  v40 = MEMORY[0x277D61040];
  a2[3] = v38;
  a2[4] = v40;
  *a2 = result;
  return result;
}

id sub_2312D8A24()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 deviceUsesCompactVoiceTrigger];

  return v1;
}

uint64_t sub_2312D8A7C()
{
  OUTLINED_FUNCTION_8();
  *(v1 + 200) = v2;
  *(v1 + 208) = v0;
  *(v1 + 312) = v3;
  *(v1 + 184) = v4;
  *(v1 + 192) = v5;
  *(v1 + 168) = v6;
  *(v1 + 176) = v7;
  v8 = sub_2313698C0();
  *(v1 + 216) = v8;
  OUTLINED_FUNCTION_0(v8);
  *(v1 + 224) = v9;
  *(v1 + 232) = OUTLINED_FUNCTION_43();
  v10 = type metadata accessor for DefaultDialogIdProvider(0);
  *(v1 + 240) = v10;
  OUTLINED_FUNCTION_40_0(v10);
  *(v1 + 248) = OUTLINED_FUNCTION_43();
  v11 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2312D8B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v18 = *(v16 + 240);
  v17 = *(v16 + 248);
  v19 = *(v16 + 200);
  v20 = *(v16 + 208);
  v21 = *(v16 + 312);
  sub_231369EE0();
  v22 = sub_231368670();
  *(v16 + 120) = MEMORY[0x277D837D0];
  *(v16 + 96) = v22;
  *(v16 + 104) = v23;
  sub_2312250F8((v16 + 96), (v16 + 128));
  swift_isUniquelyReferenced_nonNull_native();
  sub_231259D04();
  v24 = sub_2313688B0();
  swift_allocObject();
  v25 = sub_2313688A0();
  *(v16 + 256) = v25;
  v26 = OBJC_IVAR____TtC15SiriSuggestions25ExampleUtteranceDecorator_platformRootLocation;
  sub_231366690();
  OUTLINED_FUNCTION_7_0();
  (*(v27 + 16))(v17, &v20[v26]);
  v28 = *(v20 + 2);
  *(v16 + 264) = v28;
  v29 = *(v20 + 3);
  *(v16 + 272) = v29;
  v30 = *(v20 + 4);
  v31 = *(v20 + 5);
  v32 = (v17 + v18[8]);
  *v32 = 0xD000000000000017;
  v32[1] = 0x8000000231375410;
  v33 = (v17 + v18[5]);
  *v33 = v28;
  v33[1] = v29;
  v34 = (v17 + v18[6]);
  *v34 = v30;
  v34[1] = v31;
  *(v17 + v18[7]) = v21;
  v35 = v19[3];
  v36 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v35);
  *(v16 + 40) = v18;
  *(v16 + 48) = sub_2312DC504(&qword_280F810D8, type metadata accessor for DefaultDialogIdProvider, &unk_2313755EC);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v16 + 16));
  sub_2312DC54C(v17, boxed_opaque_existential_1Tm, type metadata accessor for DefaultDialogIdProvider);
  v38 = MEMORY[0x277D61040];
  *(v16 + 80) = v24;
  *(v16 + 88) = v38;
  *(v16 + 56) = v25;
  sub_231369EE0();
  sub_231369EE0();

  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v16 + 280) = v41;
  *v41 = v42;
  v41[1] = sub_2312D8E00;
  v43 = *(v16 + 184);
  v44 = *(v16 + 192);

  return MEMORY[0x2821C69D8](v16 + 16, v16 + 56, v43, v44, v35, v36, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2312D8E00()
{
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_12();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  v7[36] = v0;

  if (!v0)
  {
    v7[37] = v3;
    v7[38] = v5;
    __swift_destroy_boxed_opaque_existential_1Tm(v7 + 7);
    __swift_destroy_boxed_opaque_existential_1Tm(v7 + 2);
  }

  OUTLINED_FUNCTION_107_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2312D8F24()
{
  OUTLINED_FUNCTION_26();

  OUTLINED_FUNCTION_63_7();

  OUTLINED_FUNCTION_130();
  v0 = OUTLINED_FUNCTION_27();

  return v1(v0);
}

uint64_t sub_2312D8FA4()
{
  v33 = v0;
  v1 = *(v0 + 312);

  OUTLINED_FUNCTION_63_7();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  if (v1)
  {
    v31 = sub_2313686A0();
    v3 = v2;
    v4 = 0xE600000000000000;
    v5 = 0x6E656B6F7073;
  }

  else
  {
    v31 = sub_231368690();
    v3 = v6;
    v4 = 0xE700000000000000;
    v5 = 0x79616C70736964;
  }

  v7 = *(v0 + 288);
  sub_2313690F0();
  sub_231369EE0();
  sub_231369EE0();

  v8 = v7;
  v9 = sub_2313698A0();
  v10 = sub_23136A3A0();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 288);
  if (v11)
  {
    v13 = v5;
    v14 = *(v0 + 264);
    v27 = *(v0 + 272);
    v28 = *(v0 + 224);
    v29 = *(v0 + 216);
    v30 = *(v0 + 232);
    v15 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v15 = 136315906;
    v16 = sub_2311CFD58(v13, v4, &v32);

    *(v15 + 4) = v16;
    *(v15 + 12) = 2080;
    v17 = v31;
    *(v15 + 14) = sub_2311CFD58(v31, v3, &v32);
    *(v15 + 22) = 2080;
    *(v15 + 24) = sub_2311CFD58(v14, v27, &v32);
    *(v15 + 32) = 2080;
    *(v0 + 160) = v12;
    v18 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
    v19 = sub_23136A010();
    v21 = sub_2311CFD58(v19, v20, &v32);

    *(v15 + 34) = v21;
    _os_log_impl(&dword_2311CB000, v9, v10, "Failed to decorate %s exampleUtterance=%s with using CATTemplate: %s. Error: %s", v15, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_88_0();

    (*(v28 + 8))(v30, v29);
  }

  else
  {
    v23 = *(v0 + 224);
    v22 = *(v0 + 232);
    v24 = *(v0 + 216);

    (*(v23 + 8))(v22, v24);
    v17 = v31;
  }

  OUTLINED_FUNCTION_130();

  return v25(v17, v3);
}

uint64_t sub_2312D92AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_231367550();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_231367560();
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436F0, &unk_23136D510);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v28 - v12;
  v14 = type metadata accessor for IntentDetails(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2313682F0();
  sub_231210C60();

  if (!v33)
  {
    sub_2311D1F18(v32, &qword_27DD443C0, &unk_23136E000);
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
    goto LABEL_7;
  }

  v17 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v13, v17 ^ 1u, 1, v14);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
LABEL_7:
    sub_2311D1F18(v13, &qword_27DD436F0, &unk_23136D510);
LABEL_8:
    v26 = sub_2313699E0();
    v24 = v31;
    v25 = 1;
    return __swift_storeEnumTagSinglePayload(v24, v25, 1, v26);
  }

  sub_2312DC61C(v13, v16, type metadata accessor for IntentDetails);
  (*(v4 + 16))(v6, v16, v3);
  sub_2312DC5C4(v16, type metadata accessor for IntentDetails);
  if ((*(v4 + 88))(v6, v3) != *MEMORY[0x277D60920])
  {
    (*(v4 + 8))(v6, v3);
    goto LABEL_8;
  }

  (*(v4 + 96))(v6, v3);
  v18 = v28;
  v19 = *(v28 + 32);
  v20 = v30;
  v19(v10, v6, v30);
  v21 = v29;
  v19(v29, v10, v20);
  if ((*(v18 + 88))(v21, v20) != *MEMORY[0x277D60950])
  {
    (*(v18 + 8))(v21, v20);
    goto LABEL_8;
  }

  (*(v18 + 96))(v21, v20);
  v22 = sub_2313699E0();
  v23 = v31;
  (*(*(v22 - 8) + 32))(v31, v21, v22);
  v24 = v23;
  v25 = 0;
  v26 = v22;
  return __swift_storeEnumTagSinglePayload(v24, v25, 1, v26);
}

uint64_t sub_2312D9770(uint64_t a1, unint64_t a2)
{
  sub_231369EE0();
  v4 = sub_2312EECB4(1, a1, a2);
  sub_2312DC73C(v4, v5, v6);
  v7 = sub_23136A4F0();

  sub_231369EE0();
  v8 = sub_2312DAF34(1uLL, a1, a2);
  v9 = MEMORY[0x23192A6F0](v8);
  v11 = v10;

  sub_231369EE0();
  MEMORY[0x23192A730](v9, v11);

  return v7;
}

uint64_t sub_2312D9858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2313698C0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2311D1D6C(a3, v27);
  sub_2312DC674(v27, &v25, &qword_27DD443C0, &unk_23136E000);
  if (*(&v26 + 1))
  {
    sub_231368540();
    if (swift_dynamicCast())
    {

      sub_231369120();
      v12 = sub_2313698A0();
      v13 = sub_23136A3A0();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *&v23 = v21;
        *v14 = 136315138;
        swift_beginAccess();
        v22 = a1;
        sub_2312DC674(v27, &v25, &qword_27DD443C0, &unk_23136E000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD443C0, &unk_23136E000);
        v15 = sub_23136A010();
        v17 = sub_2311CFD58(v15, v16, &v23);
        a1 = v22;

        *(v14 + 4) = v17;
        _os_log_impl(&dword_2311CB000, v12, v13, "value %s is being nilled out", v14, 0xCu);
        v18 = v21;
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        MEMORY[0x23192B930](v18, -1, -1);
        MEMORY[0x23192B930](v14, -1, -1);
      }

      (*(v9 + 8))(v11, v8);
      v25 = 0u;
      v26 = 0u;
      swift_beginAccess();
      sub_2312DC6CC(&v25, v27);
    }
  }

  else
  {
    sub_2311D1F18(&v25, &qword_27DD443C0, &unk_23136E000);
  }

  swift_beginAccess();
  sub_2312DC674(v27, &v23, &qword_27DD443C0, &unk_23136E000);
  if (v24)
  {
    sub_2312250F8(&v23, &v25);
    *a4 = a1;
    *(a4 + 8) = a2;
    sub_2312250F8(&v25, (a4 + 16));
    sub_231369EE0();
  }

  else
  {
    sub_2311D1F18(&v23, &qword_27DD443C0, &unk_23136E000);
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
  }

  return sub_2311D1F18(v27, &qword_27DD443C0, &unk_23136E000);
}

uint64_t ConfigurablePresentationService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return v0;
}

uint64_t ConfigurablePresentationService.__deallocating_deinit()
{
  ConfigurablePresentationService.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2312D9C30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311D05C8;

  return ConfigurablePresentationService.getView(rankedCandidate:environment:)();
}

char *sub_2312D9CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 2) = a1;
  *(v5 + 3) = a2;
  *(v5 + 4) = a3;
  *(v5 + 5) = a4;
  v7 = OBJC_IVAR____TtC15SiriSuggestions25ExampleUtteranceDecorator_platformRootLocation;
  sub_231366690();
  OUTLINED_FUNCTION_7_0();
  (*(v8 + 32))(&v5[v7], a5);
  return v5;
}

uint64_t sub_2312D9D50()
{

  v1 = OBJC_IVAR____TtC15SiriSuggestions25ExampleUtteranceDecorator_platformRootLocation;
  sub_231366690();
  OUTLINED_FUNCTION_11();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_2312D9DB8()
{
  sub_2312D9D50();

  return swift_deallocClassInstance();
}

uint64_t sub_2312D9E10()
{
  type metadata accessor for DefaultDialogIdProvider(0);
  sub_231369EE0();
  return OUTLINED_FUNCTION_64();
}

uint64_t sub_2312D9E4C()
{
  type metadata accessor for DefaultDialogIdProvider(0);
  sub_231369EE0();
  return OUTLINED_FUNCTION_64();
}

uint64_t sub_2312D9E88()
{
  sub_231366690();
  OUTLINED_FUNCTION_11();
  v0 = OUTLINED_FUNCTION_64();

  return v1(v0);
}

uint64_t sub_2312D9F00(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));
  sub_231369EE0();
  return v2;
}

uint64_t sub_2312D9F38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656B6F7073 && a2 == 0xE600000000000000;
  if (v4 || (sub_23136A900() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x79616C70736964 && a2 == 0xE700000000000000;
    if (v6 || (sub_23136A900() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
      if (v7 || (sub_23136A900() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x737465737361 && a2 == 0xE600000000000000;
        if (v8 || (sub_23136A900() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6974736567677573 && a2 == 0xEC00000064496E6FLL;
          if (v9 || (sub_23136A900() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x79726576696C6564 && a2 == 0xEF656C6369686556;
            if (v10 || (sub_23136A900() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6F666E496B6E6172 && a2 == 0xE800000000000000;
              if (v11 || (sub_23136A900() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
                if (v12 || (sub_23136A900() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_23136A900();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

uint64_t sub_2312DA208(char a1)
{
  result = 0x6E656B6F7073;
  switch(a1)
  {
    case 1:
      result = 0x79616C70736964;
      break;
    case 2:
      result = 0x7470697263736564;
      break;
    case 3:
      result = 0x737465737361;
      break;
    case 4:
      result = 0x6974736567677573;
      break;
    case 5:
      result = 0x79726576696C6564;
      break;
    case 6:
      result = 0x6F666E496B6E6172;
      break;
    case 7:
      result = 0x6E6F69746361;
      break;
    case 8:
      result = 0x656C61636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2312DA304(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44768, &qword_231375428);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v37[-v7];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2312DC4B0(v9, v10, v11);
  sub_23136AA40();
  v41[3] = 0;
  OUTLINED_FUNCTION_43_12();
  sub_23136A840();
  if (!v1)
  {
    v41[2] = 1;
    OUTLINED_FUNCTION_43_12();
    sub_23136A840();
    v41[1] = 2;
    OUTLINED_FUNCTION_43_12();
    sub_23136A830();
    type metadata accessor for ViewDetails(0);
    v41[0] = 3;
    sub_231369090();
    OUTLINED_FUNCTION_53_9();
    sub_2312DC504(v12, v13, MEMORY[0x277D612A0]);
    v14 = OUTLINED_FUNCTION_133();
    OUTLINED_FUNCTION_60_6(v14, v41, v15, v16, v17);
    v40[1] = 4;
    OUTLINED_FUNCTION_43_12();
    sub_23136A840();
    v40[0] = 5;
    sub_231367D80();
    OUTLINED_FUNCTION_52_9();
    sub_2312DC504(v18, v19, MEMORY[0x277D60BB0]);
    v20 = OUTLINED_FUNCTION_133();
    OUTLINED_FUNCTION_60_6(v20, v40, v21, v22, v23);
    v39 = 6;
    sub_231367300();
    OUTLINED_FUNCTION_51_9();
    sub_2312DC504(v24, v25, MEMORY[0x277D60758]);
    v26 = OUTLINED_FUNCTION_133();
    OUTLINED_FUNCTION_60_6(v26, &v39, v27, v28, v29);
    v38 = 7;
    sub_231369050();
    OUTLINED_FUNCTION_50_7();
    sub_2312DC504(v30, v31, MEMORY[0x277D61270]);
    v32 = OUTLINED_FUNCTION_133();
    OUTLINED_FUNCTION_60_6(v32, &v38, v33, v34, v35);
    v37[7] = 8;
    OUTLINED_FUNCTION_43_12();
    sub_23136A840();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_2312DA608@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = sub_231369050();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_4();
  v58 = v5 - v4;
  v61 = sub_231367300();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  v59 = v8 - v7;
  v62 = sub_231367D80();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_4();
  v12 = v11 - v10;
  sub_231369090();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44738, &qword_231375420);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v14);
  v64 = type metadata accessor for ViewDetails(0);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_4();
  v18 = (v17 - v16);
  v19 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2312DC4B0(v19, v20, v21);
  sub_23136AA20();
  if (v63)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v66[5] = 0;
  *v18 = sub_23136A7D0();
  v18[1] = v22;
  v66[4] = 1;
  v18[2] = sub_23136A7D0();
  v18[3] = v23;
  v66[3] = 2;
  v18[4] = sub_23136A7C0();
  v18[5] = v24;
  v66[2] = 3;
  OUTLINED_FUNCTION_53_9();
  sub_2312DC504(v25, v26, MEMORY[0x277D612A8]);
  sub_23136A820();
  v27 = OUTLINED_FUNCTION_125(v64[7]);
  v28(v27);
  v66[1] = 4;
  v29 = sub_23136A7D0();
  v30 = (v18 + v64[8]);
  *v30 = v29;
  v30[1] = v31;
  v66[0] = 5;
  OUTLINED_FUNCTION_52_9();
  v34 = sub_2312DC504(v32, v33, MEMORY[0x277D60BD0]);
  OUTLINED_FUNCTION_141(v34, v66, v35, v36, v34);
  v37 = OUTLINED_FUNCTION_125(v64[9]);
  v38(v37, v12, v62);
  v65 = 6;
  OUTLINED_FUNCTION_51_9();
  v41 = sub_2312DC504(v39, v40, MEMORY[0x277D60760]);
  OUTLINED_FUNCTION_141(v41, &v65, v42, v43, v41);
  v44 = OUTLINED_FUNCTION_125(v64[10]);
  v45(v44, v59, v61);
  OUTLINED_FUNCTION_50_7();
  sub_2312DC504(v46, v47, MEMORY[0x277D61288]);
  sub_23136A820();
  v48 = OUTLINED_FUNCTION_125(v64[11]);
  v49(v48, v58, v60);
  v50 = sub_23136A7D0();
  v52 = v51;
  v53 = OUTLINED_FUNCTION_21_19();
  v54(v53);
  v55 = (v18 + v64[12]);
  *v55 = v50;
  v55[1] = v52;
  sub_2312DC54C(v18, a2, type metadata accessor for ViewDetails);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_2312DC5C4(v18, type metadata accessor for ViewDetails);
}

uint64_t sub_2312DAE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2312D9F38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2312DAE64@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2312DA200();
  *a1 = result;
  return result;
}

uint64_t sub_2312DAE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2312DC4B0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2312DAEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2312DC4B0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

unint64_t sub_2312DAF34(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_23136A070();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_23136A0F0();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2312DB008(uint64_t a1, char a2, uint64_t *a3)
{
  v47 = a3;
  v34 = *(a1 + 16);
  if (!v34)
  {
  }

  v33 = v3;
  v6 = 0;
  v7 = a1 + 32;
  while (v6 < *(a1 + 16))
  {
    sub_2312DC674(v7, &v41, &qword_27DD43FE8, &qword_231370E98);
    v9 = v41;
    v8 = v42;
    sub_2312250F8(&v43, &v38);
    v10 = *v47;
    v18 = sub_231215F6C(v9, v8);
    v19 = *(v10 + 16);
    v20 = (v11 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_20;
    }

    v22 = v11;
    if (*(v10 + 24) >= v21)
    {
      if (a2)
      {
        if (v11)
        {
          goto LABEL_11;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CF0, &unk_23136FD40);
        sub_23136A710();
        if (v22)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      sub_2312B4F48(v21, a2 & 1, v12, v13, v14, v15, v16, v17, v33, v34, v35, SBYTE8(v35), v36, v37, v38, *(&v38 + 1), v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, vars0, vars8);
      v23 = sub_231215F6C(v9, v8);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_22;
      }

      v18 = v23;
      if (v22)
      {
LABEL_11:
        v25 = *v47;
        sub_2311D1D6C(*(*v47 + 56) + 32 * v18, &v35);
        __swift_destroy_boxed_opaque_existential_1Tm(&v38);

        v26 = (*(v25 + 56) + 32 * v18);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        sub_2312250F8(&v35, v26);
        goto LABEL_15;
      }
    }

    v27 = *v47;
    v27[(v18 >> 6) + 8] |= 1 << v18;
    v28 = (v27[6] + 16 * v18);
    *v28 = v9;
    v28[1] = v8;
    sub_2312250F8(&v38, (v27[7] + 32 * v18));
    v29 = v27[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_21;
    }

    v27[2] = v31;
LABEL_15:
    ++v6;
    v7 += 48;
    a2 = 1;
    if (v34 == v6)
    {
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_23136A970();
  __break(1u);
  return result;
}

uint64_t sub_2312DB234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a2;
  v7[19] = a3;
  v13 = sub_2313698C0();
  v7[20] = v13;
  v7[21] = *(v13 - 8);
  v7[22] = swift_task_alloc();
  v14 = sub_231368890();
  v15 = MEMORY[0x277D61038];
  v7[5] = v14;
  v7[6] = v15;
  v7[2] = a1;

  v16 = swift_task_alloc();
  v7[23] = v16;
  *v16 = v7;
  v16[1] = sub_2312DB39C;

  return MEMORY[0x2821C6A90](a6, a4, a5, a7, v14, v15);
}

uint64_t sub_2312DB39C()
{
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_12();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  v7[24] = v0;

  if (!v0)
  {
    v7[25] = v3;
    v7[26] = v5;
  }

  OUTLINED_FUNCTION_107_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2312DB4B0()
{
  OUTLINED_FUNCTION_26();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_130();
  v1 = OUTLINED_FUNCTION_64();

  return v2(v1);
}

uint64_t sub_2312DB524(uint64_t a1)
{
  v28 = v1;
  v2 = v1[24];
  sub_231369120();
  sub_2311CF388((v1 + 2), (v1 + 7));
  sub_231369EE0();
  v3 = v2;
  v4 = sub_2313698A0();
  v5 = sub_23136A390();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[24];
    v24 = v1[21];
    v7 = v1[19];
    v25 = v1[20];
    v26 = v1[22];
    v8 = v1[18];
    v9 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v9 = 136315650;
    v10 = sub_2311CFD58(v8, v7, &v27);
    v1[17] = v6;
    *(v9 + 4) = v10;
    *(v9 + 12) = 2080;
    v11 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
    v12 = sub_23136A010();
    v14 = sub_2311CFD58(v12, v13, &v27);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2080;
    sub_2311CF388((v1 + 7), (v1 + 12));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44780, &qword_231375450);
    v15 = sub_23136A010();
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 7);
    v18 = sub_2311CFD58(v15, v17, &v27);

    *(v9 + 24) = v18;
    _os_log_impl(&dword_2311CB000, v4, v5, "[warning] Unable to generate dialog for suggestion: %s due to error: %s using dialogCallback: %s", v9, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_29();

    (*(v24 + 8))(v26, v25);
  }

  else
  {
    v19 = v1[24];

    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 7);
    v20 = OUTLINED_FUNCTION_26_1();
    v21(v20);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 2);

  OUTLINED_FUNCTION_130();

  return v22(0, 0);
}

uint64_t sub_2312DB7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a2;
  v7[19] = a3;
  v13 = sub_2313698C0();
  v7[20] = v13;
  v7[21] = *(v13 - 8);
  v7[22] = swift_task_alloc();
  v7[5] = v18;
  v7[6] = v19;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v7 + 2);
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_1Tm, a1);
  v15 = swift_task_alloc();
  v7[23] = v15;
  *v15 = v7;
  v15[1] = sub_2312DB94C;

  return (MEMORY[0x2821C6A90])(a6, a4, a5, a7);
}

uint64_t sub_2312DB94C()
{
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_12();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  v7[24] = v0;

  if (!v0)
  {
    v7[25] = v3;
    v7[26] = v5;
  }

  OUTLINED_FUNCTION_107_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2312DBA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a7;
  v25 = a8;
  v13 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  (*(v17 + 16))(v20, a1, a5);
  (*(v13 + 16))(v15, a2, a6);
  v22 = sub_2312DBC40(v20, v15, a3, v21, a5, a6, v24, v25);
  (*(v13 + 8))(a2, a6);
  (*(v17 + 8))(a1, a5);
  return v22;
}

uint64_t sub_2312DBC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a3;
  v15 = sub_231366690();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[3] = a5;
  v28[4] = a7;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v28);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a5);
  v27[3] = a6;
  v27[4] = a8;
  v20 = __swift_allocate_boxed_opaque_existential_1Tm(v27);
  (*(*(a6 - 8) + 32))(v20, a2, a6);
  sub_2311CF388(v28, a4 + 16);
  sub_2311CF388(v27, a4 + 56);
  v21 = v26;
  (*(v16 + 16))(v18, v26, v15);
  type metadata accessor for ExampleUtteranceDecorator(0);
  v22 = swift_allocObject();
  sub_2312D9CE4(0xD00000000000001CLL, 0x80000002313802B0, 0x676F6C616964, 0xE600000000000000, v18);
  *(a4 + 104) = v22;
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  v23 = swift_allocObject();
  sub_2312D9CE4(0xD000000000000022, 0x80000002313802D0, 0xD00000000000001ALL, 0x8000000231380300, v21);
  *(a4 + 96) = v23;
  return a4;
}

uint64_t sub_2312DBEC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44710, &qword_231375250);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of PresentationService.getView(rankedCandidate:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(a5 + 8) + **(a5 + 8));
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v5 + 16) = v11;
  *v11 = v12;
  v11[1] = sub_2311D05C8;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t sub_2312DC128(uint64_t a1)
{
  result = sub_231366690();
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

void sub_2312DC1EC(uint64_t a1)
{
  type metadata accessor for ViewDetails(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for RankedCandidateSuggestion(319);
    if (v2 <= 0x3F)
    {
      sub_2312D32E0(319, &qword_280F7C9E0, MEMORY[0x277D60D20]);
      if (v3 <= 0x3F)
      {
        sub_2312D32E0(319, &qword_280F7C958, MEMORY[0x277D61250]);
        if (v4 <= 0x3F)
        {
          sub_2312DC2F0(319);
          if (v5 <= 0x3F)
          {
            sub_2312DC354(319);
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

void sub_2312DC2F0(uint64_t a1)
{
  if (!qword_280F7C9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD44730, &qword_2313753B8);
    v1 = sub_23136A4D0();
    if (!v2)
    {
      atomic_store(v1, &qword_280F7C9D8);
    }
  }
}

void sub_2312DC354(uint64_t a1)
{
  if (!qword_280F7C890)
  {
    sub_2313699E0();
    v1 = sub_23136A4D0();
    if (!v2)
    {
      atomic_store(v1, &qword_280F7C890);
    }
  }
}

void sub_2312DC3D4(uint64_t a1)
{
  sub_2312AFEC4();
  if (v1 <= 0x3F)
  {
    sub_231369090();
    if (v2 <= 0x3F)
    {
      sub_231367D80();
      if (v3 <= 0x3F)
      {
        sub_231367300();
        if (v4 <= 0x3F)
        {
          sub_231369050();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_2312DC4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD44740;
  if (!qword_27DD44740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44740);
  }

  return result;
}

uint64_t sub_2312DC504(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2312DC54C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_64();
  v5(v4);
  return a2;
}

uint64_t sub_2312DC5C4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_11();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2312DC61C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_64();
  v5(v4);
  return a2;
}

uint64_t sub_2312DC674(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_64();
  v6(v5);
  return a2;
}

uint64_t sub_2312DC6CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD443C0, &unk_23136E000);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2312DC73C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F7C878;
  if (!qword_280F7C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7C878);
  }

  return result;
}

uint64_t sub_2312DC7B8(uint64_t a1)
{
  result = sub_231366690();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ViewDetails.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ViewDetails.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2312DC9A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD44790;
  if (!qword_27DD44790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44790);
  }

  return result;
}

unint64_t sub_2312DCAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD44798;
  if (!qword_27DD44798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44798);
  }

  return result;
}

unint64_t sub_2312DCB30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD447A0;
  if (!qword_27DD447A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD447A0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *v30 = a20;
  v30[1] = a19;
  v30[2] = a18;
  v30[3] = a17;
  v30[4] = a26;
  v30[5] = a27;
  v34 = (v30 + *(v32 + 32));
  *v34 = a25;
  v34[1] = v31;
  v35 = (v30 + *(v32 + 48));
  *v35 = v28;
  v35[1] = v27;

  return sub_2311CF388(v29 + 56, v29 + 456);
}

uint64_t OUTLINED_FUNCTION_17_14(uint64_t a1)
{
  *(v1 + 1928) = a1;
  __swift_project_boxed_opaque_existential_1(*(v2 - 136), *(*(v2 - 136) + 24));

  return sub_2313682B0();
}

uint64_t OUTLINED_FUNCTION_55_8()
{

  return sub_231369050();
}

void OUTLINED_FUNCTION_59_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_63_7()
{

  return sub_2312DC5C4(v0, type metadata accessor for DefaultDialogIdProvider);
}

uint64_t OUTLINED_FUNCTION_68_5(uint64_t a1, int a2)
{
  *(v3 + 1952) = a2;
  *(v3 + 1464) = *(v4 + 104);
  *(v3 + 1472) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  return v2;
}

void OUTLINED_FUNCTION_71_5()
{
}

uint64_t OUTLINED_FUNCTION_77_3(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x79726576696C6564;
  a1[2].n128_u64[1] = 0xEF656C6369686556;

  return sub_231367D40();
}

uint64_t OUTLINED_FUNCTION_78_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_79_3()
{
  *(v1 + 1480) = *(v2 + 8);
  *(v1 + 1488) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v0;
}

void OUTLINED_FUNCTION_81_3()
{
  v2 = *(v0 + 1488);
  *(v1 - 136) = *(v0 + 1480);
  *(v1 - 128) = v2;
}

uint64_t OUTLINED_FUNCTION_84_1()
{

  return sub_2311D1F18(v2 + 616, v1, v0);
}

uint64_t OUTLINED_FUNCTION_85_1()
{

  return sub_2311D1F18(v2 + 536, v1, v0);
}

void OUTLINED_FUNCTION_88_0()
{

  JUMPOUT(0x23192B930);
}

uint64_t OUTLINED_FUNCTION_91_0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
}

uint64_t OUTLINED_FUNCTION_92_0@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 1448) = *(a1 + 104);
  *(v2 + 1456) = (a1 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  return v1;
}

uint64_t OUTLINED_FUNCTION_93_0()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_94_0(float a1)
{
  *v3 = a1;

  return sub_2311CFD58(v2, v1, (v4 - 120));
}

uint64_t OUTLINED_FUNCTION_97_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_98_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_100(uint64_t a1)
{
  *(v1 + 1880) = a1;

  return sub_23136A260();
}

uint64_t OUTLINED_FUNCTION_106_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

void OUTLINED_FUNCTION_110()
{
}

void OUTLINED_FUNCTION_116()
{
}

uint64_t OUTLINED_FUNCTION_117(uint64_t a1)
{

  return sub_2313690F0();
}

uint64_t OUTLINED_FUNCTION_118()
{
}

uint64_t OUTLINED_FUNCTION_119()
{

  return sub_231367300();
}

uint64_t OUTLINED_FUNCTION_121(uint64_t a1)
{

  return sub_2313676F0();
}

uint64_t OUTLINED_FUNCTION_122(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2312DC674(v4 + 536, v4 + 616, a3, a4);
}

uint64_t OUTLINED_FUNCTION_123(uint64_t a1)
{

  return sub_231368140();
}

void OUTLINED_FUNCTION_138(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

unint64_t OUTLINED_FUNCTION_139(float a1)
{
  *v3 = a1;

  return sub_2311CFD58(v2, v1, (v4 - 80));
}

void OUTLINED_FUNCTION_140(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_141(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_23136A820();
}

uint64_t OUTLINED_FUNCTION_142(uint64_t a1)
{

  return sub_2313690F0();
}

uint64_t OUTLINED_FUNCTION_143(uint64_t a1, uint64_t a2)
{
  *(v2 + 1864) = a1;
  *(v2 + 1872) = a2;

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_144(uint64_t a1, uint64_t a2)
{
  *(v2 + 1840) = a1;
  *(v2 + 1848) = a2;

  return swift_getObjectType();
}

BOOL OUTLINED_FUNCTION_146()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_147()
{
}

uint64_t OUTLINED_FUNCTION_148()
{

  return sub_231369EE0();
}

uint64_t ConfigLoader.__allocating_init(dataFileLocation:serializer:)()
{
  OUTLINED_FUNCTION_38_1();
  v1 = sub_231366690();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1, v3);
  v6 = type metadata accessor for FileBasedConfigBackingStore(0);
  v7 = swift_allocObject();
  (*(v2 + 32))(v7 + OBJC_IVAR____TtC15SiriSuggestions27FileBasedConfigBackingStore_dataFileLocation, v5, v1);
  v9[4] = v6;
  v9[5] = sub_2312DE084(&qword_280F85B48, 255, type metadata accessor for FileBasedConfigBackingStore, &protocol conformance descriptor for FileBasedConfigBackingStore);
  v9[1] = v7;
  (*(v2 + 8))(v0, v1);
  return ConfigLoader.__allocating_init(backingStore:serializer:)();
}

uint64_t ConfigLoader.loadConfig()()
{
  v2 = *v0;
  sub_2311CF324((v0 + 7), v12);
  v3 = v13;
  v4 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v7 = (*(v6 + 16))(v5, v6);
  if (!v1)
  {
    v9 = v7;
    v10 = v8;
    (*(v4 + 8))(*(v2 + 80), v7, v8, *(v2 + 80), *(v2 + 88), v3, v4);
    sub_231225224(v9, v10);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

uint64_t FileBasedConfigBackingStore.__allocating_init(dataFileLocation:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC15SiriSuggestions27FileBasedConfigBackingStore_dataFileLocation;
  sub_231366690();
  OUTLINED_FUNCTION_11();
  (*(v4 + 32))(v2 + v3, a1);
  return v2;
}

uint64_t type metadata accessor for FileBasedConfigBackingStore(uint64_t a1)
{
  result = qword_280F85B38;
  if (!qword_280F85B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConfigLoader.__allocating_init(backingStore:serializer:)()
{
  OUTLINED_FUNCTION_38_1();
  v2 = swift_allocObject();
  ConfigLoader.init(backingStore:serializer:)(v1, v0);
  return v2;
}

uint64_t ConfigLoader.init(backingStore:serializer:)(__int128 *a1, __int128 *a2)
{
  sub_2311D38A8(a1, v2 + 16);
  sub_2311D38A8(a2, v2 + 56);
  return v2;
}

uint64_t ConfigLoader.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return v0;
}

uint64_t ConfigLoader.__deallocating_deinit()
{
  ConfigLoader.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2312DD960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), void (*a7)(void), void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  a6(0);
  swift_allocObject();
  a7();
  a8(a1, a2, a3, a4, a5);
}

uint64_t sub_2312DDA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  a4(0);
  swift_allocObject();
  a5();
  v11 = a6(a1, a2, a3);

  return v11;
}

uint64_t FileBasedConfigBackingStore.dataFileLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15SiriSuggestions27FileBasedConfigBackingStore_dataFileLocation;
  sub_231366690();
  OUTLINED_FUNCTION_11();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t FileBasedConfigBackingStore.init(dataFileLocation:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15SiriSuggestions27FileBasedConfigBackingStore_dataFileLocation;
  sub_231366690();
  OUTLINED_FUNCTION_11();
  (*(v4 + 32))(v1 + v3, a1);
  return v1;
}

uint64_t FileBasedConfigBackingStore.deinit()
{
  v1 = OBJC_IVAR____TtC15SiriSuggestions27FileBasedConfigBackingStore_dataFileLocation;
  sub_231366690();
  OUTLINED_FUNCTION_11();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t FileBasedConfigBackingStore.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15SiriSuggestions27FileBasedConfigBackingStore_dataFileLocation;
  sub_231366690();
  OUTLINED_FUNCTION_11();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t InMemoryConfigBackingStore.__allocating_init(data:)()
{
  OUTLINED_FUNCTION_38_1();
  v0 = swift_allocObject();
  InMemoryConfigBackingStore.init(data:)();
  return v0;
}

void *InMemoryConfigBackingStore.init(data:)()
{
  OUTLINED_FUNCTION_38_1();
  v3 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v1[3] = v0;
  v1[4] = v3;
  v1[2] = v2;
  return v1;
}

uint64_t InMemoryConfigBackingStore.loadRawData()()
{
  v1 = v0[4];
  [v1 lock];
  v2 = v0[2];
  sub_23122527C(v2, v0[3]);
  [v1 unlock];
  return v2;
}

id InMemoryConfigBackingStore.saveRawData(data:)(uint64_t a1, unint64_t a2)
{
  v5 = v2[4];
  [v5 lock];
  v6 = v2[2];
  v7 = v2[3];
  v2[2] = a1;
  v2[3] = a2;
  sub_23122527C(a1, a2);
  sub_231225224(v6, v7);
  return [v5 unlock];
}

uint64_t InMemoryConfigBackingStore.deinit()
{
  sub_231225224(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t InMemoryConfigBackingStore.__deallocating_deinit()
{
  InMemoryConfigBackingStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2312DDFAC(uint64_t a1)
{
  result = sub_2312DE084(qword_280F85B50, 255, type metadata accessor for FileBasedConfigBackingStore, &protocol conformance descriptor for FileBasedConfigBackingStore);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2312DE02C(uint64_t a1, uint64_t a2)
{
  result = sub_2312DE084(qword_280F7FD00, a2, type metadata accessor for InMemoryConfigBackingStore, &protocol conformance descriptor for InMemoryConfigBackingStore);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2312DE084(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CustomContinuersBridgeFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_231367AB0();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312DE3DC, 0, 0);
}

uint64_t sub_2312DE3DC()
{
  v1 = v0[7];
  v2 = sub_231367780();
  swift_allocObject();
  v3 = sub_231367790();
  v0[5] = v2;
  v0[6] = sub_2312DF468(&qword_280F7CAA8, 255, MEMORY[0x277D60A20], MEMORY[0x277D60A18]);
  v0[2] = v3;
  v6 = (v1 + *v1);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_2312DE55C;

  return v6(v0 + 2);
}

uint64_t sub_2312DE55C(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 112) = a1;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));

  return MEMORY[0x2822009F8](sub_2312DE664, 0, 0);
}

uint64_t sub_2312DE664()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = type metadata accessor for IntentDetailsDialogProvider();
  v6 = swift_allocObject();
  v1[3] = v5;
  v1[4] = sub_2312DF468(qword_280F7F570, 255, type metadata accessor for IntentDetailsDialogProvider, &unk_2313779B0);
  *v1 = v6;
  (*(v2 + 104))(v1, *MEMORY[0x277D60A88], v3);
  *(swift_task_alloc() + 16) = v4;
  sub_231368EC0();

  (*(v2 + 8))(v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43598, &qword_23136CAD8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_23136B670;
  sub_231368ED0();

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_2312DE820(uint64_t a1)
{
  v29 = sub_2313673A0();
  v2 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(a1 + 40);
  v28 = *(a1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43260, &qword_23136C990);
  v6 = sub_231367D80();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23136B670;
  (*(v7 + 104))(v9 + v8, *MEMORY[0x277D60B78], v6);
  v41 = v28;
  v42 = v5;
  __swift_allocate_boxed_opaque_existential_1(v40);
  sub_231368B30();

  v10 = v42;
  v28 = v41;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v11 = type metadata accessor for IntentDetailsActionKeyMapper();
  inited = swift_initStaticObject();
  *&v35 = v11;
  *(&v35 + 1) = sub_2312DF468(&unk_280F7EF30, 255, type metadata accessor for IntentDetailsActionKeyMapper, &unk_23136D4E0);
  v34[0] = inited;
  v38 = v28;
  v39 = v10;
  __swift_allocate_boxed_opaque_existential_1(v37);
  sub_231368B20();
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  v13 = v39;
  v28 = v38;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v14 = type metadata accessor for CustomContinuersBridgeAssetProvider();
  v15 = swift_allocObject();
  *&v32 = v14;
  *(&v32 + 1) = sub_2312DF468(qword_280F7D468, v16, type metadata accessor for CustomContinuersBridgeAssetProvider, &unk_231375924);
  v31[0] = v15;
  v35 = v28;
  v36 = v13;
  __swift_allocate_boxed_opaque_existential_1(v34);
  sub_231368AF0();
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  v17 = v36;
  v28 = v35;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  v18 = type metadata accessor for ContextValuesIntentDetailsResolver();
  v19 = swift_allocObject();
  *(v19 + 16) = 0xD000000000000015;
  *(v19 + 24) = 0x8000000231380510;
  v30[3] = v18;
  v30[4] = sub_2312DF468(&qword_280F7D730, 255, type metadata accessor for ContextValuesIntentDetailsResolver, &unk_231376500);
  v30[0] = v19;
  sub_231368540();
  sub_231368510();
  v32 = v28;
  v33 = v17;
  __swift_allocate_boxed_opaque_existential_1(v31);
  sub_231368B60();

  sub_231228E9C(v30, &qword_27DD43878, &unk_23136E490);
  v20 = v32;
  v21 = __swift_project_boxed_opaque_existential_1(v31, v32);
  v22 = *(v20 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v4 = 0xD000000000000015;
  v4[1] = 0x8000000231380530;
  v26 = v29;
  (*(v2 + 104))(v4, *MEMORY[0x277D60880], v29, v23);
  sub_231368AC0();
  (*(v2 + 8))(v4, v26);
  (*(v22 + 8))(v25, v20);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  __swift_destroy_boxed_opaque_existential_1Tm(v37);
  return __swift_destroy_boxed_opaque_existential_1Tm(v40);
}

uint64_t sub_2312DEDFC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23120B320;

  return static CustomContinuersBridgeFactory.createOwnerDefinitions(builderFactory:)(a1, a2);
}

uint64_t sub_2312DEEDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_231368290();
  OUTLINED_FUNCTION_0_0();
  v56 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  v55 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436D0, &qword_23136D3E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v50 - v12);
  MEMORY[0x28223BE20](v14);
  v59 = &v50 - v15;
  v16 = sub_231368F50();
  OUTLINED_FUNCTION_0_0();
  v60 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_4();
  v54 = v20 - v19;
  sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v57 = v22;
  v58 = v21;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_4();
  v25 = v24 - v23;
  v26 = *a1;
  sub_2313678D0();
  sub_2313690F0();
  sub_231369EE0();
  v27 = sub_2313698A0();
  v28 = sub_23136A3A0();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v53 = v10;
    v30 = v29;
    v51 = swift_slowAlloc();
    v62[0] = v51;
    *v30 = 136315138;
    v31 = v3;
    v32 = v16;
    v33 = v13;
    v34 = sub_231369E90();
    v52 = v26;
    v36 = v35;

    v37 = v34;
    v13 = v33;
    v16 = v32;
    v3 = v31;
    v38 = sub_2311CFD58(v37, v36, v62);

    *(v30 + 4) = v38;
    _os_log_impl(&dword_2311CB000, v27, v28, "CustomContinuersBridgeAssetProvider: view context - %s", v30, 0xCu);
    v39 = v51;
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    MEMORY[0x23192B930](v39, -1, -1);
    MEMORY[0x23192B930](v30, -1, -1);
  }

  else
  {
  }

  (*(v57 + 8))(v25, v58);
  sub_2313678D0();
  sub_231210C60();

  if (v62[3])
  {
    v40 = v59;
    v41 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v40, v41 ^ 1u, 1, v16);
    if (__swift_getEnumTagSinglePayload(v40, 1, v16) != 1)
    {
      v42 = v60;
      v43 = v54;
      (*(v60 + 32))(v54, v40, v16);
      (*(v42 + 16))(v13, v43, v16);
      OUTLINED_FUNCTION_1_31();
      return (*(v42 + 8))(v43, v16);
    }
  }

  else
  {
    sub_231228E9C(v62, &qword_27DD443C0, &unk_23136E000);
    v40 = v59;
    __swift_storeEnumTagSinglePayload(v59, 1, 1, v16);
  }

  sub_231228E9C(v40, &qword_27DD436D0, &qword_23136D3E0);
  v46 = v55;
  v45 = v56;
  (*(v56 + 104))(v55, *MEMORY[0x277D60E90], v3);
  v47 = sub_231368280();
  v49 = v48;
  (*(v45 + 8))(v46, v3);
  *v13 = v47;
  v13[1] = v49;
  (*(v60 + 104))(v13, *MEMORY[0x277D61238], v16);
  return OUTLINED_FUNCTION_1_31();
}

uint64_t sub_2312DF468(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t DenyLists.init(suggestionIds:loggingIds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = sub_231255354(a1);
  result = sub_231255354(a2);
  a3[1] = result;
  return result;
}

uint64_t DenyLists.description.getter()
{
  sub_231369EE0();
  sub_231369EE0();
  sub_23136A650();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD447A8, &qword_231375950);
  v0 = sub_2312DFC4C();
  sub_231207C1C(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_29();
  v5 = v4;

  MEMORY[0x23192A730](v3, v5);

  MEMORY[0x23192A730](10, 0xE100000000000000);
  strcpy(v10, "LoggingIds:\n");
  BYTE5(v10[1]) = 0;
  HIWORD(v10[1]) = -5120;
  v6 = OUTLINED_FUNCTION_3_29();
  v8 = v7;

  MEMORY[0x23192A730](v6, v8);

  sub_231369EE0();
  MEMORY[0x23192A730](v10[0], v10[1]);

  return 0x6974736567677553;
}

uint64_t sub_2312DF6B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974736567677573 && a2 == 0xED00007364496E6FLL;
  if (v4 || (sub_23136A900() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49676E6967676F6CLL && a2 == 0xEA00000000007364)
  {

    return 1;
  }

  else
  {
    v7 = sub_23136A900();

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

uint64_t sub_2312DF788(char a1)
{
  if (a1)
  {
    return 0x49676E6967676F6CLL;
  }

  else
  {
    return 0x6974736567677573;
  }
}

uint64_t sub_2312DF7D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2312DF6B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2312DF800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2312DFCB0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2312DF83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2312DFCB0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t DenyLists.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD447B8, &qword_231375958);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = *v1;
  v15 = v1[1];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_2312DFCB0(v10, v11, v12);
  sub_231369EE0();
  sub_23136AA40();
  v17 = v9;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD447A8, &qword_231375950);
  sub_2312DFD04(&qword_27DD447C0, MEMORY[0x277D837D8], MEMORY[0x277D83B50]);
  OUTLINED_FUNCTION_2_22();

  if (!v13)
  {
    v17 = v15;
    v16 = 1;
    OUTLINED_FUNCTION_2_22();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t DenyLists.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD447C8, &unk_231375960);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2312DFCB0(v11, v12, v13);
  sub_23136AA20();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v18 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD447A8, &qword_231375950);
  v19 = 0;
  sub_2312DFD04(&qword_280F85D08, MEMORY[0x277D83808], MEMORY[0x277D83B70]);
  OUTLINED_FUNCTION_1_32();
  v14 = v20;
  v19 = 1;
  OUTLINED_FUNCTION_1_32();
  (*(v7 + 8))(v10, v5);
  v15 = v20;
  v16 = v18;
  *v18 = v14;
  v16[1] = v15;
  sub_231369EE0();
  sub_231369EE0();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_2312DFC4C()
{
  result = qword_27DD447B0;
  if (!qword_27DD447B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD447A8, &qword_231375950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD447B0);
  }

  return result;
}

unint64_t sub_2312DFCB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85D18[0];
  if (!qword_280F85D18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F85D18);
  }

  return result;
}

uint64_t sub_2312DFD04(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD447A8, &qword_231375950);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double DefaultDenyListsProvider.getDenyLists()@<D0>(_OWORD *a1@<X8>)
{
  v48 = a1;
  v53 = sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v51 = v1;
  MEMORY[0x28223BE20](v2);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_231366690();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v54 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v46 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v46 - v20;
  sub_231367340();
  sub_231366620();
  v22 = *(v7 + 8);
  v52 = v18;
  v57 = v7 + 8;
  v56 = v22;
  v22(v18, v5);
  v58 = v21;
  sub_231366620();
  sub_231369100();
  v55 = v7;
  v23 = *(v7 + 16);
  v59 = v15;
  v49 = v23;
  v23(v12, v15, v5);
  v50 = v4;
  v24 = sub_2313698A0();
  v25 = sub_23136A3A0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *&v63 = v47;
    *v26 = 136315138;
    v27 = sub_2313665A0();
    v29 = v28;
    v30 = OUTLINED_FUNCTION_19();
    v31 = v56;
    (v56)(v30);
    v32 = sub_2311CFD58(v27, v29, &v63);

    *(v26 + 4) = v32;
    _os_log_impl(&dword_2311CB000, v24, v25, "Loading default deny lists from path: %s", v26, 0xCu);
    v33 = v47;
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x23192B930](v33, -1, -1);
    MEMORY[0x23192B930](v26, -1, -1);
  }

  else
  {

    v34 = OUTLINED_FUNCTION_19();
    v31 = v56;
    (v56)(v34);
  }

  (*(v51 + 8))(v50, v53);
  v35 = v54;
  v36 = v49;
  v49(v54, v59, v5);
  v37 = type metadata accessor for JsonSerializer();
  v38 = swift_allocObject();
  v64 = v37;
  v65 = &protocol witness table for JsonSerializer;
  *&v63 = v38;
  v39 = v52;
  v36(v52, v35, v5);
  v40 = type metadata accessor for FileBasedConfigBackingStore(0);
  v41 = swift_allocObject();
  (*(v55 + 32))(v41 + OBJC_IVAR____TtC15SiriSuggestions27FileBasedConfigBackingStore_dataFileLocation, v39, v5);
  v61 = v40;
  v62 = sub_2312E0314();
  *&v60 = v41;
  v31(v35, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD433B8, &qword_23136C390);
  inited = swift_initStackObject();
  sub_2311D38A8(&v60, inited + 16);
  sub_2311D38A8(&v63, inited + 56);
  v43 = v67;
  sub_23127E69C();
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm((inited + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((inited + 56));
  v44 = OUTLINED_FUNCTION_19();
  (v31)(v44);
  v31(v58, v5);
  if (!v43)
  {
    result = *&v66;
    *v48 = v66;
  }

  return result;
}

unint64_t sub_2312E0314()
{
  result = qword_280F85B48;
  if (!qword_280F85B48)
  {
    type metadata accessor for FileBasedConfigBackingStore(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85B48);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DenyLists.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2312E0504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD447D0;
  if (!qword_27DD447D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD447D0);
  }

  return result;
}

unint64_t sub_2312E055C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85E90;
  if (!qword_280F85E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85E90);
  }

  return result;
}

unint64_t sub_2312E05B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85D10;
  if (!qword_280F85D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85D10);
  }

  return result;
}

uint64_t type metadata accessor for IntentDetails(uint64_t a1)
{
  result = qword_280F84BE0;
  if (!qword_280F84BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2312E067C(uint64_t a1)
{
  result = sub_231367550();
  if (v2 <= 0x3F)
  {
    result = sub_231367490();
    if (v3 <= 0x3F)
    {
      result = sub_231369050();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2312E0720(uint64_t a1, uint64_t a2)
{
  if ((sub_231367540() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for IntentDetails(0);
  if ((sub_231367460() & 1) == 0 || (sub_231369000() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 28);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  if (v6 == *v8 && v7 == v8[1])
  {
    return 1;
  }

  return sub_23136A900();
}

uint64_t sub_2312E07DC(char a1)
{
  result = 0x457070416B6F6F42;
  switch(a1)
  {
    case 1:
    case 8:
    case 21:
      return 0xD000000000000012;
    case 2:
      v4 = 0x6C6946434F44;
      return v4 & 0xFFFFFFFFFFFFLL | 0x4565000000000000;
    case 3:
      return 0xD000000000000011;
    case 4:
      return 0xD000000000000011;
    case 5:
      return 0x6472616F424C5243;
    case 6:
      return 0xD000000000000011;
    case 7:
      v5 = 0x456563616C50;
      return v5 & 0xFFFFFFFFFFFFLL | 0x746E000000000000;
    case 9:
      v4 = 0x67617373654DLL;
      return v4 & 0xFFFFFFFFFFFFLL | 0x4565000000000000;
    case 10:
      return 0xD000000000000016;
    case 11:
      return 0x69726953676E6F53;
    case 12:
      v4 = 0x6C6369747241;
      return v4 & 0xFFFFFFFFFFFFLL | 0x4565000000000000;
    case 13:
      v6 = 1702129486;
      goto LABEL_29;
    case 14:
      v3 = 0x7265646C6F46;
      goto LABEL_9;
    case 15:
      return 0xD000000000000010;
    case 16:
      return 0x7469746E45676154;
    case 17:
      v5 = 0x457465737341;
      return v5 & 0xFFFFFFFFFFFFLL | 0x746E000000000000;
    case 18:
      v5 = 0x456D75626C41;
      return v5 & 0xFFFFFFFFFFFFLL | 0x746E000000000000;
    case 19:
      v6 = 2003789907;
      goto LABEL_29;
    case 20:
      v6 = 1953720652;
LABEL_29:
      result = v6 | 0x69746E4500000000;
      break;
    case 22:
      result = 0x7469746E45626154;
      break;
    case 23:
      result = 0x6B72616D6B6F6F42;
      break;
    case 24:
      result = 0xD000000000000015;
      break;
    case 25:
      v3 = 0x6C6F626D7953;
LABEL_9:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E45000000000000;
      break;
    case 26:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2312E0A7C(char a1)
{
  result = 0xD000000000000018;
  switch(a1)
  {
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2312E0B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_231367550();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_231369050();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312E0C50, 0, 0);
}

uint64_t sub_2312E0C50()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  (*(v2 + 16))(v1, v0[3], v3);
  if ((*(v2 + 88))(v1, v3) == *MEMORY[0x277D60928])
  {
    v5 = v0[10];
    v4 = v0[11];
    v7 = v0[8];
    v6 = v0[9];
    v9 = v0[4];
    v8 = v0[5];
    v10 = v0[2];
    (*(v0[7] + 96))(v7, v0[6]);
    (*(v5 + 32))(v4, v7, v6);
    v11 = sub_231369010();
    v12 = sub_231210CBC(v9, v8, v11);
    v14 = v13;

    v10[3] = MEMORY[0x277D837D0];
    if (v14)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0;
    }

    v16 = 0xE000000000000000;
    if (v14)
    {
      v16 = v14;
    }

    *v10 = v15;
    v10[1] = v16;
    (*(v5 + 8))(v4, v6);
    v17 = *MEMORY[0x277D60C38];
    sub_231367DC0();
    OUTLINED_FUNCTION_11();
    (*(v18 + 104))(v10, v17);
  }

  else
  {
    v19 = v0[2];
    (*(v0[7] + 8))(v0[8], v0[6]);
    v20 = *MEMORY[0x277D60C40];
    sub_231367DC0();
    OUTLINED_FUNCTION_11();
    (*(v21 + 104))(v19, v20);
  }

  v22 = v0[1];

  return v22();
}

void sub_2312E0EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_11_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = sub_231367EA0();
  OUTLINED_FUNCTION_0_0();
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v32 = &a9 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_2313685A0();
  OUTLINED_FUNCTION_0_0();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_4();
  v39 = v38 - v37;
  sub_231367E70();
  (*(v28 + 16))(v32, v23, v26);
  v40 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v41 = swift_allocObject();
  (*(v28 + 32))(v41 + v40, v32, v26);
  sub_2313692F0();
  sub_231369200();
  (*(v28 + 8))(v23, v26);
  (*(v35 + 8))(v39, v33);
  v42 = (v25 + *(type metadata accessor for BaseModelSignals.SignalWithFilter(0) + 20));
  *v42 = sub_2312E182C;
  v42[1] = v41;
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_2312E1088@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_231367E10();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2312E10F0()
{
  sub_2313692F0();
  result = sub_231369210();
  qword_280F8E710 = result;
  return result;
}

uint64_t sub_2312E1124()
{
  sub_2313692F0();
  result = sub_231369260();
  qword_280F8E708 = result;
  return result;
}

void sub_2312E116C()
{
  OUTLINED_FUNCTION_11_0();
  sub_231368290();
  OUTLINED_FUNCTION_4_9();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_33();
  sub_2313685A0();
  OUTLINED_FUNCTION_1_33();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_7_20();
  __swift_allocate_value_buffer(v2, qword_27DD4B7C0);
  OUTLINED_FUNCTION_10_24();
  v3 = OUTLINED_FUNCTION_6_20();
  v4(v3);
  sub_231368280();
  v5 = OUTLINED_FUNCTION_4_22();
  v6(v5);
  OUTLINED_FUNCTION_23_14();
  OUTLINED_FUNCTION_14_25();
  sub_231368590();
  sub_2313692F0();
  OUTLINED_FUNCTION_15_22();
  v7 = OUTLINED_FUNCTION_13_19();
  v8(v7);
  OUTLINED_FUNCTION_17_15();
  *v9 = sub_23122DA98;
  v9[1] = 0;
  OUTLINED_FUNCTION_9_0();
}

uint64_t type metadata accessor for BaseModelSignals.SignalWithFilter(uint64_t a1)
{
  result = qword_280F84368;
  if (!qword_280F84368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2312E132C()
{
  OUTLINED_FUNCTION_11_0();
  sub_231368290();
  OUTLINED_FUNCTION_4_9();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_33();
  sub_2313685A0();
  OUTLINED_FUNCTION_1_33();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_7_20();
  __swift_allocate_value_buffer(v2, qword_27DD4B7D8);
  OUTLINED_FUNCTION_10_24();
  v3 = OUTLINED_FUNCTION_6_20();
  v4(v3);
  sub_231368280();
  v5 = OUTLINED_FUNCTION_4_22();
  v6(v5);
  OUTLINED_FUNCTION_11_22();
  sub_231368590();
  sub_2313692F0();
  OUTLINED_FUNCTION_15_22();
  v7 = OUTLINED_FUNCTION_13_19();
  v8(v7);
  OUTLINED_FUNCTION_17_15();
  *v9 = sub_23122DA98;
  v9[1] = 0;
  OUTLINED_FUNCTION_9_0();
}

void sub_2312E14EC()
{
  OUTLINED_FUNCTION_11_0();
  sub_231368290();
  OUTLINED_FUNCTION_4_9();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_33();
  sub_2313685A0();
  OUTLINED_FUNCTION_1_33();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_7_20();
  __swift_allocate_value_buffer(v2, qword_27DD4B808);
  OUTLINED_FUNCTION_10_24();
  v3 = OUTLINED_FUNCTION_6_20();
  v4(v3);
  sub_231368280();
  v5 = OUTLINED_FUNCTION_4_22();
  v6(v5);
  OUTLINED_FUNCTION_11_22();
  sub_231368590();
  sub_2313692F0();
  OUTLINED_FUNCTION_15_22();
  v7 = OUTLINED_FUNCTION_13_19();
  v8(v7);
  OUTLINED_FUNCTION_17_15();
  *v9 = sub_23122DA98;
  v9[1] = 0;
  OUTLINED_FUNCTION_9_0();
}

void sub_2312E165C()
{
  OUTLINED_FUNCTION_11_0();
  sub_231368290();
  OUTLINED_FUNCTION_4_9();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_33();
  sub_2313685A0();
  OUTLINED_FUNCTION_1_33();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_7_20();
  __swift_allocate_value_buffer(v2, qword_27DD4B820);
  OUTLINED_FUNCTION_10_24();
  v3 = OUTLINED_FUNCTION_6_20();
  v4(v3);
  sub_231368280();
  v5 = OUTLINED_FUNCTION_4_22();
  v6(v5);
  OUTLINED_FUNCTION_11_22();
  sub_231368590();
  sub_2313692F0();
  OUTLINED_FUNCTION_15_22();
  v7 = OUTLINED_FUNCTION_13_19();
  v8(v7);
  OUTLINED_FUNCTION_17_15();
  *v9 = sub_23122DA98;
  v9[1] = 0;
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_2312E182C(uint64_t a1)
{
  v3 = sub_231367EA0();
  OUTLINED_FUNCTION_40_0(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return MEMORY[0x2821C6BF0](a1, v5);
}

void sub_2312E1898()
{
  OUTLINED_FUNCTION_11_0();
  sub_231368290();
  OUTLINED_FUNCTION_4_9();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_33();
  sub_2313685A0();
  OUTLINED_FUNCTION_1_33();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_7_20();
  __swift_allocate_value_buffer(v2, qword_27DD4B860);
  OUTLINED_FUNCTION_10_24();
  v3 = OUTLINED_FUNCTION_6_20();
  v4(v3);
  sub_231368280();
  v5 = OUTLINED_FUNCTION_4_22();
  v6(v5);
  OUTLINED_FUNCTION_14_25();
  sub_231368590();
  sub_2313692F0();
  OUTLINED_FUNCTION_15_22();
  v7 = OUTLINED_FUNCTION_13_19();
  v8(v7);
  OUTLINED_FUNCTION_17_15();
  *v9 = sub_23122DA98;
  v9[1] = 0;
  OUTLINED_FUNCTION_9_0();
}

void sub_2312E1C08()
{
  OUTLINED_FUNCTION_11_0();
  sub_231368290();
  OUTLINED_FUNCTION_4_9();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_33();
  sub_2313685A0();
  OUTLINED_FUNCTION_1_33();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_7_20();
  __swift_allocate_value_buffer(v2, qword_27DD4B890);
  OUTLINED_FUNCTION_10_24();
  v3 = OUTLINED_FUNCTION_6_20();
  v4(v3);
  sub_231368280();
  v5 = OUTLINED_FUNCTION_4_22();
  v6(v5);
  OUTLINED_FUNCTION_11_22();
  sub_231368590();
  sub_2313692F0();
  OUTLINED_FUNCTION_15_22();
  v7 = OUTLINED_FUNCTION_13_19();
  v8(v7);
  OUTLINED_FUNCTION_17_15();
  *v9 = sub_23122DA98;
  v9[1] = 0;
  OUTLINED_FUNCTION_9_0();
}

void sub_2312E1FDC()
{
  OUTLINED_FUNCTION_11_0();
  sub_231368290();
  OUTLINED_FUNCTION_4_9();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_33();
  sub_2313685A0();
  OUTLINED_FUNCTION_1_33();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_7_20();
  __swift_allocate_value_buffer(v2, qword_27DD4B920);
  OUTLINED_FUNCTION_10_24();
  v3 = OUTLINED_FUNCTION_6_20();
  v4(v3);
  sub_231368280();
  v5 = OUTLINED_FUNCTION_4_22();
  v6(v5);
  OUTLINED_FUNCTION_14_25();
  sub_231368590();
  sub_2313692F0();
  OUTLINED_FUNCTION_15_22();
  v7 = OUTLINED_FUNCTION_13_19();
  v8(v7);
  OUTLINED_FUNCTION_17_15();
  *v9 = sub_23122DA98;
  v9[1] = 0;
  OUTLINED_FUNCTION_9_0();
}

void sub_2312E2544()
{
  OUTLINED_FUNCTION_11_0();
  sub_231368290();
  OUTLINED_FUNCTION_4_9();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_33();
  sub_2313685A0();
  OUTLINED_FUNCTION_1_33();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_7_20();
  __swift_allocate_value_buffer(v2, qword_280F8E6C0);
  OUTLINED_FUNCTION_10_24();
  v3 = OUTLINED_FUNCTION_6_20();
  v4(v3);
  sub_231368280();
  v5 = OUTLINED_FUNCTION_4_22();
  v6(v5);
  OUTLINED_FUNCTION_14_25();
  sub_231368590();
  sub_2313692F0();
  OUTLINED_FUNCTION_15_22();
  v7 = OUTLINED_FUNCTION_13_19();
  v8(v7);
  OUTLINED_FUNCTION_17_15();
  *v9 = sub_23122DA98;
  v9[1] = 0;
  OUTLINED_FUNCTION_9_0();
}

void sub_2312E26BC()
{
  OUTLINED_FUNCTION_11_0();
  sub_231368290();
  OUTLINED_FUNCTION_4_9();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_33();
  sub_2313685A0();
  OUTLINED_FUNCTION_1_33();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_7_20();
  __swift_allocate_value_buffer(v2, qword_280F8E6A8);
  OUTLINED_FUNCTION_10_24();
  v3 = OUTLINED_FUNCTION_6_20();
  v4(v3);
  sub_231368280();
  v5 = OUTLINED_FUNCTION_4_22();
  v6(v5);
  OUTLINED_FUNCTION_11_22();
  sub_231368590();
  sub_2313692F0();
  OUTLINED_FUNCTION_15_22();
  v7 = OUTLINED_FUNCTION_13_19();
  v8(v7);
  OUTLINED_FUNCTION_17_15();
  *v9 = sub_23122DA98;
  v9[1] = 0;
  OUTLINED_FUNCTION_9_0();
}

void sub_2312E2840()
{
  OUTLINED_FUNCTION_11_0();
  sub_231368290();
  OUTLINED_FUNCTION_4_9();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_33();
  sub_2313685A0();
  OUTLINED_FUNCTION_1_33();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_7_20();
  __swift_allocate_value_buffer(v2, qword_27DD4B980);
  OUTLINED_FUNCTION_10_24();
  v3 = OUTLINED_FUNCTION_6_20();
  v4(v3);
  sub_231368280();
  v5 = OUTLINED_FUNCTION_4_22();
  v6(v5);
  OUTLINED_FUNCTION_14_25();
  sub_231368590();
  sub_2313692F0();
  OUTLINED_FUNCTION_15_22();
  v7 = OUTLINED_FUNCTION_13_19();
  v8(v7);
  OUTLINED_FUNCTION_17_15();
  *v9 = sub_23122DA98;
  v9[1] = 0;
  OUTLINED_FUNCTION_9_0();
}

void sub_2312E29B8()
{
  OUTLINED_FUNCTION_11_0();
  sub_231368290();
  OUTLINED_FUNCTION_4_9();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_33();
  sub_2313685A0();
  OUTLINED_FUNCTION_1_33();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_7_20();
  __swift_allocate_value_buffer(v2, qword_27DD4B998);
  OUTLINED_FUNCTION_10_24();
  v3 = OUTLINED_FUNCTION_6_20();
  v4(v3);
  sub_231368280();
  v5 = OUTLINED_FUNCTION_4_22();
  v6(v5);
  OUTLINED_FUNCTION_14_25();
  sub_231368590();
  sub_2313692F0();
  OUTLINED_FUNCTION_15_22();
  v7 = OUTLINED_FUNCTION_13_19();
  v8(v7);
  OUTLINED_FUNCTION_17_15();
  *v9 = sub_23122DA98;
  v9[1] = 0;
  OUTLINED_FUNCTION_9_0();
}

void sub_2312E2B38()
{
  OUTLINED_FUNCTION_11_0();
  sub_231368290();
  OUTLINED_FUNCTION_4_9();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_33();
  sub_2313685A0();
  OUTLINED_FUNCTION_1_33();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_7_20();
  __swift_allocate_value_buffer(v2, qword_27DD4B9B0);
  OUTLINED_FUNCTION_10_24();
  v3 = OUTLINED_FUNCTION_6_20();
  v4(v3);
  sub_231368280();
  v5 = OUTLINED_FUNCTION_4_22();
  v6(v5);
  OUTLINED_FUNCTION_11_22();
  sub_231368590();
  sub_2313692F0();
  OUTLINED_FUNCTION_15_22();
  v7 = OUTLINED_FUNCTION_13_19();
  v8(v7);
  OUTLINED_FUNCTION_17_15();
  *v9 = sub_23122DA98;
  v9[1] = 0;
  OUTLINED_FUNCTION_9_0();
}

void sub_2312E2CD0()
{
  OUTLINED_FUNCTION_11_0();
  sub_231368290();
  OUTLINED_FUNCTION_4_9();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_33();
  sub_2313685A0();
  OUTLINED_FUNCTION_1_33();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_7_20();
  __swift_allocate_value_buffer(v2, qword_27DD4B9D0);
  OUTLINED_FUNCTION_10_24();
  v3 = OUTLINED_FUNCTION_6_20();
  v4(v3);
  sub_231368280();
  v5 = OUTLINED_FUNCTION_4_22();
  v6(v5);
  OUTLINED_FUNCTION_23_14();
  OUTLINED_FUNCTION_14_25();
  sub_231368590();
  sub_2313692F0();
  OUTLINED_FUNCTION_15_22();
  v7 = OUTLINED_FUNCTION_13_19();
  v8(v7);
  OUTLINED_FUNCTION_17_15();
  *v9 = sub_23122DA98;
  v9[1] = 0;
  OUTLINED_FUNCTION_9_0();
}

void sub_2312E2E44()
{
  OUTLINED_FUNCTION_11_0();
  sub_231368290();
  OUTLINED_FUNCTION_4_9();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_33();
  sub_2313685A0();
  OUTLINED_FUNCTION_1_33();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_7_20();
  __swift_allocate_value_buffer(v2, qword_27DD4B9E8);
  OUTLINED_FUNCTION_10_24();
  v3 = OUTLINED_FUNCTION_6_20();
  v4(v3);
  sub_231368280();
  v5 = OUTLINED_FUNCTION_4_22();
  v6(v5);
  OUTLINED_FUNCTION_14_25();
  sub_231368590();
  sub_2313692F0();
  OUTLINED_FUNCTION_15_22();
  v7 = OUTLINED_FUNCTION_13_19();
  v8(v7);
  OUTLINED_FUNCTION_17_15();
  *v9 = sub_23122DA98;
  v9[1] = 0;
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_2312E2FE8(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  sub_231368290();
  OUTLINED_FUNCTION_4_9();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8_23();
  sub_2313692F0();
  v10 = sub_231367D20();
  v13[3] = v10;
  v13[4] = sub_2312C4F18();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v10 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D60B50], v10);
  (*(v8 + 104))(v4, *a2, v3);
  sub_231368280();
  (*(v8 + 8))(v4, v3);
  result = sub_231369230();
  *a3 = result;
  return result;
}

uint64_t sub_2312E332C(uint64_t a1)
{
  result = sub_231367E10();
  if (v2 <= 0x3F)
  {
    result = sub_2312E33B0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2312E33B0()
{
  result = qword_280F7C780;
  if (!qword_280F7C780)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280F7C780);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_20()
{

  return type metadata accessor for BaseModelSignals.SignalWithFilter(0);
}

void OUTLINED_FUNCTION_28_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_2312E0EA4(v20, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_2312E34B0(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v21 = a1;
  result = sub_23125D7A0();
  v6 = 0;
  v24 = a3 & 0xC000000000000001;
  v25 = result;
  v22 = a3 & 0xFFFFFFFFFFFFFF8;
  v23 = a3;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v25 == v6)
    {
      return v7;
    }

    if (v24)
    {
      result = MEMORY[0x23192AD10](v6, v23);
      v8 = result;
    }

    else
    {
      if (v6 >= *(v22 + 16))
      {
        goto LABEL_20;
      }

      v8 = *(v23 + 8 * v6 + 32);
    }

    if (__OFADD__(v6, 1))
    {
      break;
    }

    v30 = v8;
    v21(&v26, &v30);
    if (v3)
    {

      return v7;
    }

    if (v27)
    {
      sub_2311E6A28(&v26, v29);
      sub_2311E6A28(v29, &v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23126DF64(0);
        v7 = v19;
        v31 = v19;
      }

      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_23126DF64(v10 > 1);
        v7 = v20;
        v31 = v20;
      }

      v13 = v27;
      v12 = v28;
      v14 = __swift_mutable_project_boxed_opaque_existential_1(&v26, v27);
      v15 = MEMORY[0x28223BE20](v14);
      v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v17, v15);
      sub_2312E6494(v11, v17, &v31, v13, v12);
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v26);
    }

    else
    {
      result = sub_2311D1F18(&v26, &qword_27DD42F50, &qword_23136D440);
    }

    ++v6;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2312E3730(void (*a1)(uint64_t, __n128), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD447E0, &qword_231375D60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - v7;
  v9 = type metadata accessor for SignalGenerator.NewSuggestionRequest(0);
  OUTLINED_FUNCTION_0_0();
  v42 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_22();
  v43 = v12 - v13;
  v15 = MEMORY[0x28223BE20](v14);
  v41 = &v38 - v16;
  v17 = 0;
  v18 = *(a3 + 16);
  v19 = a3 + 32;
  v44 = MEMORY[0x277D84F90];
  for (i = a3 + 32; ; v19 = i)
  {
    v20 = ~v17;
    v21 = v19 + 40 * v17;
    v22 = v18 - v17;
    if (!v22)
    {
      break;
    }

    while (1)
    {
      a1(v21, v15);
      if (v3)
      {
        v36 = v44;

        return v36;
      }

      if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
      {
        break;
      }

      sub_2311D1F18(v8, &qword_27DD447E0, &qword_231375D60);
      --v20;
      v21 += 40;
      if (!--v22)
      {
        return v44;
      }
    }

    v23 = v41;
    sub_2312E6588(v8, v41);
    sub_2312E6588(v23, v43);
    v24 = v44;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = OUTLINED_FUNCTION_23();
      sub_23126E29C(v31, v32, v33, v24);
      v24 = v34;
    }

    v26 = *(v24 + 16);
    v25 = *(v24 + 24);
    v27 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      v39 = v26 + 1;
      sub_23126E29C(v25 > 1, v26 + 1, 1, v24);
      v27 = v39;
      v44 = v35;
    }

    else
    {
      v44 = v24;
    }

    v17 = -v20;
    *(v44 + 16) = v27;
    OUTLINED_FUNCTION_1_34();
    sub_2312E6588(v30, v28 + v29 * v26);
  }

  return v44;
}

uint64_t sub_2312E39AC(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD446F0, &unk_231375D70);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_5_23();
  v8 = sub_231368090();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_22();
  v38 = (v10 - v11);
  MEMORY[0x28223BE20](v12);
  v36 = v14;
  v37 = v33 - v13;
  v15 = 0;
  v16 = *(a3 + 16);
  v39 = (v14 + 32);
  v40 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v16 == v15)
    {
      return v40;
    }

    v17 = *(sub_231366B10() - 8);
    a1(a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v15);
    if (v3)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v4, 1, v8) == 1)
    {
      sub_2311D1F18(v4, &qword_27DD446F0, &unk_231375D70);
      ++v15;
    }

    else
    {
      v18 = *v39;
      (*v39)(v37, v4, v8);
      v35 = v18;
      v18(v38, v37, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = OUTLINED_FUNCTION_23();
        sub_23126E388(v25, v26, v27, v28);
        v40 = v29;
      }

      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v33[1] = *(v40 + 16);
        v34 = v20 + 1;
        sub_23126E388(v19 > 1, v20 + 1, 1, v40);
        v21 = v34;
        v40 = v30;
      }

      ++v15;
      *(v40 + 16) = v21;
      OUTLINED_FUNCTION_1_34();
      v35((v22 + v23 * v24), v38, v8);
    }
  }

  v31 = v40;

  return v31;
}

uint64_t sub_2312E3C94(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v45 = a1;
  v46 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD447E8, &qword_231375D68);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_5_23();
  v47 = sub_231369D90();
  MEMORY[0x28223BE20](v47 - 8);
  OUTLINED_FUNCTION_22();
  v44 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  v39 = &v38 - v12;
  v40 = v11;
  v13 = a3 + 56;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a3 + 56);
  v17 = (v14 + 63) >> 6;
  v43 = (v11 + 32);
  result = sub_231369EE0();
  v19 = 0;
  v49 = MEMORY[0x277D84F90];
  v41 = a3;
  if (v16)
  {
LABEL_8:
    while (1)
    {
      v21 = (*(a3 + 48) + ((v19 << 10) | (16 * __clz(__rbit64(v16)))));
      v22 = v21[1];
      v48[0] = *v21;
      v48[1] = v22;
      sub_231369EE0();
      v45(v48);
      if (v5)
      {
        break;
      }

      v23 = v47;
      if (__swift_getEnumTagSinglePayload(v4, 1, v47) == 1)
      {
        result = sub_2311D1F18(v4, &qword_27DD447E8, &qword_231375D68);
      }

      else
      {
        v42 = 0;
        v24 = v4;
        v25 = *v43;
        v26 = v39;
        v27 = v24;
        (*v43)(v39);
        (v25)(v44, v26, v23);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = OUTLINED_FUNCTION_23();
          sub_23126F00C(v32, v33, v34, v35);
          v49 = v36;
        }

        v29 = *(v49 + 16);
        v28 = *(v49 + 24);
        v5 = v42;
        if (v29 >= v28 >> 1)
        {
          sub_23126F00C(v28 > 1, v29 + 1, 1, v49);
          v49 = v37;
        }

        *(v49 + 16) = v29 + 1;
        OUTLINED_FUNCTION_1_34();
        result = (v25)(v30 + v31 * v29, v44, v47);
        a3 = v41;
        v4 = v27;
      }

      v16 &= v16 - 1;
      if (!v16)
      {
        goto LABEL_4;
      }
    }

    return v49;
  }

  else
  {
LABEL_4:
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v17)
      {

        return v49;
      }

      v16 = *(v13 + 8 * v20);
      ++v19;
      if (v16)
      {
        v19 = v20;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_2312E3FC8(void *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v13 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v7 == v6)
    {
      return v13;
    }

    if (v6 >= v7)
    {
      break;
    }

    v8 = sub_231368180();
    v10 = *(v8 - 8);
    result = (v8 - 8);
    v9 = v10;
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_14;
    }

    result = (v5)(&v14, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v6);
    if (v3)
    {
      v12 = v13;

      return v12;
    }

    ++v6;
    if (v14)
    {
      MEMORY[0x23192A830](result);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23136A1C0();
      }

      result = sub_23136A240();
      v13 = v15;
      v6 = v11;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_2312E4134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v38 = a3;
  v39 = a5;
  v37 = a4;
  v9 = sub_231367E50();
  OUTLINED_FUNCTION_0_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  SuggestionPool.getSuggestions(identifier:)();
  if (v21)
  {
    v22 = v21;
    MEMORY[0x28223BE20](v21);
    v24 = v37;
    v23 = v38;
    *(&v36 - 6) = v6;
    *(&v36 - 5) = v24;
    *(&v36 - 4) = a2;
    *(&v36 - 3) = v23;
    *(&v36 - 2) = v39;
    v25 = sub_2312E34B0(sub_2312E6074, (&v36 - 8), v22);
  }

  else
  {
    v38 = v17;
    v39 = v15;
    sub_231369110();
    v26 = v11;
    (*(v11 + 16))(v14, a1, v9);
    v27 = sub_2313698A0();
    v28 = sub_23136A3B0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v40 = v30;
      *v29 = 136315138;
      sub_2312E601C();
      v31 = sub_23136A8B0();
      v33 = v32;
      (*(v26 + 8))(v14, v9);
      v34 = sub_2311CFD58(v31, v33, &v40);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_2311CB000, v27, v28, "Did not find suggestion of id: '%s' in the suggestion pool. Don't create candidate suggestion.", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x23192B930](v30, -1, -1);
      MEMORY[0x23192B930](v29, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v14, v9);
    }

    (*(v38 + 8))(v20, v39);
    return 0;
  }

  return v25;
}

void sub_2312E4454(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v166 = a6;
  v165 = a5;
  v167 = a4;
  v181 = a3;
  v187 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432D8, &unk_23136BED0);
  MEMORY[0x28223BE20](v9 - 8);
  v177 = &v157 - v10;
  v164 = sub_2313694E0();
  v163 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v176 = &v157 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810);
  MEMORY[0x28223BE20](v12 - 8);
  v175 = &v157 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v180 = &v157 - v15;
  v191 = sub_231367D80();
  v202 = *(v191 - 8);
  MEMORY[0x28223BE20](v191);
  v194 = &v157 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v197 = &v157 - v18;
  v186 = sub_2313698C0();
  v185 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v182 = &v157 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v188 = &v157 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42ED8, &qword_23136EBD0);
  MEMORY[0x28223BE20](v22 - 8);
  v159 = &v157 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v184 = &v157 - v25;
  v172 = sub_231368BC0();
  v171 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v158 = &v157 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v168 = &v157 - v28;
  MEMORY[0x28223BE20](v29);
  v161 = &v157 - v30;
  MEMORY[0x28223BE20](v31);
  v160 = &v157 - v32;
  MEMORY[0x28223BE20](v33);
  v189 = &v157 - v34;
  v35 = sub_2313689A0();
  v205 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v190 = &v157 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v209 = &v157 - v38;
  v201 = sub_231367890();
  v170 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v200 = &v157 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD447D8, &qword_231375D58);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = (&v157 - v41);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42ED0, &unk_23136B7C0);
  MEMORY[0x28223BE20](v43 - 8);
  v162 = &v157 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v183 = &v157 - v46;
  MEMORY[0x28223BE20](v47);
  v49 = &v157 - v48;
  v50 = sub_231368180();
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v53 = &v157 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = *a1;
  sub_2313676F0();
  v206 = sub_231368130();
  v207 = v54;
  v55 = *(v51 + 8);
  v173 = v53;
  v174 = v50;
  v179 = v51 + 8;
  v178 = v55;
  v55(v53, v50);
  v203 = a2;
  v195 = OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_environment;
  sub_2311CF324(a2 + OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_environment, v208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42EF0, &unk_2313762A0);
  v56 = type metadata accessor for Environment(0);
  v57 = swift_dynamicCast();
  v204 = v35;
  v198 = v49;
  if (v57)
  {
    __swift_storeEnumTagSinglePayload(v42, 0, 1, v56);

    v58 = sub_2312E652C(v42);
    v59 = MEMORY[0x231928390](v58);

    v60 = *(v59 + 64);
    v169 = v59 + 64;
    v61 = 1 << *(v59 + 32);
    v62 = -1;
    if (v61 < 64)
    {
      v62 = ~(-1 << v61);
    }

    v63 = v62 & v60;
    v64 = (v61 + 63) >> 6;
    v65 = v170;
    v192 = (v170 + 1);
    v193 = (v170 + 2);
    v199 = v59;
    sub_231369EE0();
    v49 = 0;
    v66 = MEMORY[0x277D84F90];
    v67 = v205;
    while (v63)
    {
LABEL_10:
      v69 = v200;
      v70 = v201;
      v65[2](v200, *(v199 + 56) + v65[9] * (__clz(__rbit64(v63)) | (v49 << 6)), v201);
      v71 = sub_231367860();
      v42 = v65;
      (v65[1])(v69, v70);
      v56 = *(v71 + 16);
      v72 = *(v66 + 16);
      v73 = v72 + v56;
      if (__OFADD__(v72, v56))
      {
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        return;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v73 > *(v66 + 24) >> 1)
      {
        if (v72 <= v73)
        {
          v75 = v72 + v56;
        }

        else
        {
          v75 = v72;
        }

        sub_23126DA08(isUniquelyReferenced_nonNull_native, v75, 1, v66);
        v66 = v76;
      }

      v67 = v205;
      v65 = v42;
      v63 &= v63 - 1;
      if (*(v71 + 16))
      {
        if ((*(v66 + 24) >> 1) - *(v66 + 16) < v56)
        {
          goto LABEL_68;
        }

        v77 = v204;
        swift_arrayInitWithCopy();
        v35 = v77;
        v67 = v205;

        if (v56)
        {
          v78 = *(v66 + 16);
          v79 = __OFADD__(v78, v56);
          v80 = v78 + v56;
          if (v79)
          {
            goto LABEL_69;
          }

          *(v66 + 16) = v80;
        }
      }

      else
      {

        v35 = v204;
        if (v56)
        {
          __break(1u);
          goto LABEL_24;
        }
      }
    }

    while (1)
    {
      v68 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      if (v68 >= v64)
      {
        break;
      }

      v63 = *(v169 + 8 * v68);
      ++v49;
      if (v63)
      {
        v49 = v68;
        goto LABEL_10;
      }
    }

    v81 = 0;
    v82 = *(v66 + 16);
    while (1)
    {
      if (v82 == v81)
      {

        v49 = v198;
        v86 = v198;
        v87 = 1;
        goto LABEL_37;
      }

      if (v81 >= *(v66 + 16))
      {
        goto LABEL_66;
      }

      (*(v67 + 16))(v209, v66 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v81, v35);
      if (sub_231368980() == v206 && v83 == v207)
      {
        break;
      }

      v85 = sub_23136A900();

      if (v85)
      {
        goto LABEL_36;
      }

      (*(v67 + 8))(v209, v35);
      ++v81;
    }

LABEL_36:

    v49 = v198;
    (*(v67 + 32))(v198, v209, v35);
    v86 = v49;
    v87 = 0;
LABEL_37:
    __swift_storeEnumTagSinglePayload(v86, v87, 1, v35);
  }

  else
  {
LABEL_24:
    __swift_storeEnumTagSinglePayload(v42, 1, 1, v56);
    sub_2311D1F18(v42, &qword_27DD447D8, &qword_231375D58);
    __swift_storeEnumTagSinglePayload(v49, 1, 1, v35);
    v67 = v205;
  }

  v88 = v188;
  v89 = v190;
  v90 = v189;
  v91 = v184;
  v92 = v183;
  sub_2311E66F0(v49, v183, &qword_27DD42ED0, &unk_23136B7C0);
  if (__swift_getEnumTagSinglePayload(v92, 1, v35) == 1)
  {
    v93 = &qword_27DD42ED0;
    v94 = &unk_23136B7C0;
    v95 = v92;
LABEL_42:
    sub_2311D1F18(v95, v93, v94);
    goto LABEL_43;
  }

  (*(v67 + 32))(v89, v92, v35);
  sub_231368990();
  v96 = v67;
  v97 = sub_231368600();
  if (__swift_getEnumTagSinglePayload(v91, 1, v97) == 1)
  {
    (*(v96 + 8))(v89, v35);
    v93 = &qword_27DD42ED8;
    v94 = &qword_23136EBD0;
    v95 = v91;
    goto LABEL_42;
  }

  v132 = v160;
  sub_2313685E0();
  (*(*(v97 - 8) + 8))(v91, v97);
  v133 = v171;
  v134 = v172;
  (*(v171 + 32))(v90, v132, v172);
  v135 = v161;
  (*(v133 + 104))(v161, *MEMORY[0x277D61120], v134);
  v136 = sub_231312274(v90, v135);
  v137 = *(v133 + 8);
  v137(v135, v134);
  if ((v136 & 1) == 0)
  {
    v137(v90, v134);
    (*(v205 + 8))(v190, v35);
LABEL_43:
    v98 = v203;
    v99 = *(v203 + OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_platformDeliveryVehicleProvider + 24);
    v100 = *(v203 + OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_platformDeliveryVehicleProvider + 32);
    __swift_project_boxed_opaque_existential_1((v203 + OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_platformDeliveryVehicleProvider), v99);
    __swift_project_boxed_opaque_existential_1((v98 + OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_sourceOwner), *(v98 + OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_sourceOwner + 24));
    sub_231367AD0();
    v101 = v197;
    (*(v100 + 8))(v208, v98 + v195, v98 + OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_platformInvocationType, 0, 0, v99, v100);
    __swift_destroy_boxed_opaque_existential_1Tm(v208);
    v102 = v180;
    sub_2311E66F0(v181, v180, &qword_27DD42F18, &unk_23136B810);
    v103 = v191;
    if (__swift_getEnumTagSinglePayload(v102, 1, v191) == 1)
    {
      (*(v202 + 16))(v194, v101, v103);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v102, 1, v103);
      v105 = v174;
      v106 = v173;
      if (EnumTagSinglePayload != 1)
      {
        sub_2311D1F18(v102, &qword_27DD42F18, &unk_23136B810);
      }
    }

    else
    {
      (*(v202 + 32))(v194, v102, v103);
      v105 = v174;
      v106 = v173;
    }

    sub_2313676F0();
    sub_231368120();
    v178(v106, v105);
    __swift_project_boxed_opaque_existential_1(v208, v208[3]);
    LODWORD(v107) = sub_231367A50();
    v109 = v108;
    v111 = v110;
    __swift_destroy_boxed_opaque_existential_1Tm(v208);
    v112 = v182;
    sub_231369110();
    v113 = v207;
    sub_231369EE0();
    sub_231369EE0();
    v114 = sub_2313698A0();
    v115 = sub_23136A3A0();

    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      LODWORD(v209) = v107;
      v107 = v117;
      v208[0] = v117;
      *v116 = 136315394;
      v118 = sub_2311CFD58(v206, v113, v208);

      *(v116 + 4) = v118;
      v35 = v204;
      *(v116 + 12) = 2080;
      v119 = sub_2311CFD58(v109, v111, v208);
      v120 = v112;
      v121 = v119;

      *(v116 + 14) = v121;
      _os_log_impl(&dword_2311CB000, v114, v115, "SuggestionId '%s' %s", v116, 0x16u);
      swift_arrayDestroy();
      v122 = v107;
      LOBYTE(v107) = v209;
      MEMORY[0x23192B930](v122, -1, -1);
      v123 = v116;
      v103 = v191;
      MEMORY[0x23192B930](v123, -1, -1);

      (*(v185 + 8))(v120, v186);
    }

    else
    {

      (*(v185 + 8))(v112, v186);
    }

    v124 = v197;
    v125 = v194;
    if ((v107 & 1) == 0)
    {
      v130 = *(v202 + 8);
      v130(v194, v103);
      v130(v124, v103);
      sub_2311D1F18(v198, &qword_27DD42ED0, &unk_23136B7C0);
      v131 = v187;
      *v187 = 0u;
      *(v131 + 1) = 0u;
      v131[4] = 0;
      return;
    }

    v126 = v175;
    (*(v202 + 16))(v175, v194, v103);
    __swift_storeEnumTagSinglePayload(v126, 0, 1, v103);
    (*(v163 + 16))(v176, v165, v164);
    sub_2311E66F0(v166, v177, &qword_27DD432D8, &unk_23136BED0);
    v127 = v162;
    sub_2311E66F0(v198, v162, &qword_27DD42ED0, &unk_23136B7C0);
    v128 = __swift_getEnumTagSinglePayload(v127, 1, v35);

    if (v128 == 1)
    {
      sub_2311D1F18(v127, &qword_27DD42ED0, &unk_23136B7C0);
      v129 = v172;
    }

    else
    {
      v145 = v159;
      sub_231368990();
      v146 = v127;
      v147 = v145;
      (*(v205 + 8))(v146, v35);
      v148 = sub_231368600();
      v149 = __swift_getEnumTagSinglePayload(v147, 1, v148);
      v129 = v172;
      if (v149 != 1)
      {
        v150 = v158;
        sub_2313685E0();
        (*(*(v148 - 8) + 8))(v147, v148);
        (*(v171 + 32))(v168, v150, v129);
        goto LABEL_62;
      }

      sub_2311D1F18(v147, &qword_27DD42ED8, &qword_23136EBD0);
    }

    (*(v171 + 104))(v168, *MEMORY[0x277D61118], v129);
LABEL_62:
    v151 = sub_231368C60();
    swift_unknownObjectRetain();
    sub_231369EE0();
    v152 = sub_231368C40();
    v153 = MEMORY[0x277D61158];
    v154 = v187;
    v187[3] = v151;
    v154[4] = v153;
    *v154 = v152;
    v155 = *(v202 + 8);
    v155(v125, v103);
    v155(v124, v103);
    sub_2311D1F18(v198, &qword_27DD42ED0, &unk_23136B7C0);
    return;
  }

  sub_231369110();
  v138 = v207;
  sub_231369EE0();
  v139 = sub_2313698A0();
  v140 = sub_23136A390();

  if (os_log_type_enabled(v139, v140))
  {
    v141 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    v208[0] = v142;
    *v141 = 136315138;
    v143 = sub_2311CFD58(v206, v138, v208);

    *(v141 + 4) = v143;
    _os_log_impl(&dword_2311CB000, v139, v140, "suggestion - %s was disabled through config", v141, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v142);
    MEMORY[0x23192B930](v142, -1, -1);
    MEMORY[0x23192B930](v141, -1, -1);

    (*(v185 + 8))(v188, v186);
    v137(v189, v172);
    (*(v205 + 8))(v190, v35);
    v144 = v198;
  }

  else
  {

    (*(v185 + 8))(v88, v186);
    v137(v189, v172);
    (*(v205 + 8))(v190, v35);
    v144 = v49;
  }

  sub_2311D1F18(v144, &qword_27DD42ED0, &unk_23136B7C0);
  v156 = v187;
  v187[4] = 0;
  *v156 = 0u;
  *(v156 + 1) = 0u;
}

uint64_t sub_2312E5AD4()
{
  v1 = OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_generationId;
  sub_2313667A0();
  OUTLINED_FUNCTION_11();
  (*(v2 + 8))(v0 + v1);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_sourceOwner));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_environment));
  v3 = OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_platformInvocationType;
  sub_231367C70();
  OUTLINED_FUNCTION_11();
  (*(v4 + 8))(v0 + v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_platformDeliveryVehicleProvider));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_2312E5BB4()
{
  sub_2312E5AD4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PooledCandidateSuggestionFactory(uint64_t a1)
{
  result = qword_280F7DAB0;
  if (!qword_280F7DAB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2312E5C60(uint64_t a1)
{
  result = sub_2313667A0();
  if (v2 <= 0x3F)
  {
    result = sub_231367C70();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_2312E5D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2312E65EC;
  v16.n128_f64[0] = a7;

  return MEMORY[0x2821C73B8](a1, a2, a3, a4, a5, a6, v16);
}

uint64_t sub_2312E5E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_23120B320;
  v16.n128_f64[0] = a7;

  return MEMORY[0x2821C73A8](a1, a2, a3, a4, a5, a6, v16);
}

uint64_t sub_2312E5F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2312E65EC;
  v16.n128_f64[0] = a7;

  return MEMORY[0x2821C73C0](a1, a2, a3, a4, a5, a6, v16);
}

unint64_t sub_2312E601C()
{
  result = qword_280F7CA08;
  if (!qword_280F7CA08)
  {
    sub_231367E50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7CA08);
  }

  return result;
}

uint64_t sub_2312E6098(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = a6;
  v14 = *(a8 - 8);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_22();
  v17 = v15 - v16;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v27 - v20;
  (*(v14 + 32))(&v27 - v20, v22, v23, v19);
  v24 = swift_allocObject();
  (*(v14 + 16))(v17, v21, a8);
  v25 = sub_2312E6220(a1, a2, v17, a4, a5, v28, v24, a8, a9);
  (*(v14 + 8))(v21, a8);
  return v25;
}

uint64_t sub_2312E6220(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v30[3] = a8;
  v30[4] = a9;
  __swift_allocate_boxed_opaque_existential_1(v30);
  (*(*(a8 - 8) + 32))();
  v15 = OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_generationId;
  v28 = sub_2313667A0();
  v16 = *(v28 - 8);
  (*(v16 + 16))(a7 + v15, a1, v28);
  *(a7 + OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_pool) = a2;
  sub_2311CF324(v30, a7 + OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_sourceOwner);
  sub_2311CF324(a4, a7 + OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_environment);
  v17 = OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_platformInvocationType;
  v18 = sub_231367C70();
  v19 = *(v18 - 8);
  (*(v19 + 16))(a7 + v17, a5, v18);
  sub_2311CF324(a6, a7 + OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_platformDeliveryVehicleProvider);
  sub_231367ED0();

  sub_231367AD0();
  v20 = sub_231367EC0();
  v22 = v21;

  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  (*(v19 + 8))(a5, v18);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  (*(v16 + 8))(a1, v28);
  sub_2311D1F18(v29, &qword_27DD43D30, qword_231375200);
  v23 = (a7 + OBJC_IVAR____TtC15SiriSuggestions32PooledCandidateSuggestionFactory_generationContext);
  *v23 = v20;
  v23[1] = v22;
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  return a7;
}

uint64_t sub_2312E6494(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_2311E6A28(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_2312E652C(uint64_t a1)
{
  v2 = type metadata accessor for Environment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2312E6588(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignalGenerator.NewSuggestionRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2312E6604(uint64_t a1, void *a2)
{
  v3 = sub_231368290();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436D0, &qword_23136D3E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v23 - v11);
  v13 = sub_231367900();
  v15 = sub_2312663F4(v13, v14);
  if (v15 == 163)
  {
    (*(v4 + 104))(v6, *MEMORY[0x277D60E90], v3);
    v16 = sub_231368280();
    v18 = v17;
    (*(v4 + 8))(v6, v3);
    *v12 = v16;
    v12[1] = v18;
    v19 = *MEMORY[0x277D61238];
    v20 = sub_231368F50();
    (*(*(v20 - 8) + 104))(v12, v19, v20);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v20);
  }

  else
  {
    v21 = v15;
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2313682F0();
    sub_231264AEC(v21, v12);

    v20 = sub_231368F50();
  }

  __swift_storeEnumTagSinglePayload(v9, 1, 1, v20);
  return sub_231369060();
}

uint64_t sub_2312E688C()
{
  sub_2313686F0();
  sub_2313686E0();
  v0 = sub_2313686C0();

  byte_280F8E728 = v0 & 1;
  return result;
}

uint64_t static BaseSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  v3 = sub_2313698C0();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312E69BC, 0, 0);
}

uint64_t sub_2312E69BC()
{
  if (qword_280F855E0 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = qword_280F8E720;
  v0[5] = sub_231367980();
  v0[6] = sub_2312E86C0(&qword_280F7CA98, 255, MEMORY[0x277D60A60], MEMORY[0x277D60A58]);
  v0[2] = v2;

  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[30] = v3;
  *v3 = v0;
  v3[1] = sub_2312E6B40;

  return v5(v0 + 2);
}

uint64_t sub_2312E6B40(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 248) = a1;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));

  return MEMORY[0x2822009F8](sub_2312E6C48, 0, 0);
}

uint64_t sub_2312E6C48()
{
  v52 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43810, &qword_23136E028);
  v2 = sub_231368EF0();
  if (v2)
  {
    sub_23121CD80(v2, v1 + 96);

    if (*(v1 + 120))
    {
      v3 = *(v1 + 200);
      sub_2311D38A8((v1 + 96), v1 + 56);
      v4 = (v3 + 8);
      v5 = 0x20u;
      v49 = (v3 + 8);
      while (1)
      {
        v6 = byte_2845F2408[v5];
        switch(byte_2845F2408[v5])
        {
          case 2u:
          case 3u:
          case 4u:
          case 5u:
          case 6u:
          case 7u:
          case 0xCu:
          case 0xEu:
          case 0xFu:
          case 0x10u:
          case 0x11u:
          case 0x12u:
          case 0x13u:
          case 0x14u:
          case 0x15u:
          case 0x17u:
          case 0x18u:
          case 0x19u:
          case 0x1Au:
          case 0x1Bu:
          case 0x1Cu:
          case 0x1Du:
          case 0x1Eu:
          case 0x1Fu:
          case 0x20u:
          case 0x21u:
          case 0x22u:
          case 0x23u:
          case 0x24u:
          case 0x25u:
          case 0x26u:
          case 0x27u:
          case 0x28u:
          case 0x29u:
          case 0x2Au:
          case 0x2Bu:
          case 0x2Cu:
          case 0x2Du:
          case 0x2Eu:
          case 0x2Fu:
          case 0x32u:
          case 0x33u:
          case 0x35u:
          case 0x36u:
          case 0x37u:
          case 0x3Bu:
          case 0x3Cu:
          case 0x40u:
          case 0x44u:
          case 0x45u:
          case 0x46u:
          case 0x47u:
          case 0x48u:
          case 0x49u:
          case 0x4Au:
          case 0x4Bu:
          case 0x4Cu:
          case 0x4Du:
          case 0x4Eu:
          case 0x4Fu:
          case 0x50u:
          case 0x51u:
          case 0x52u:
          case 0x53u:
          case 0x54u:
          case 0x55u:
          case 0x57u:
          case 0x58u:
          case 0x59u:
          case 0x5Au:
          case 0x5Bu:
          case 0x5Cu:
          case 0x5Du:
          case 0x5Eu:
          case 0x5Fu:
          case 0x60u:
          case 0x61u:
          case 0x62u:
          case 0x63u:
          case 0x64u:
          case 0x65u:
          case 0x6Au:
          case 0x6Bu:
          case 0x6Cu:
          case 0x6Du:
          case 0x6Eu:
          case 0x6Fu:
          case 0x70u:
          case 0x72u:
          case 0x73u:
          case 0x74u:
          case 0x75u:
          case 0x76u:
          case 0x7Au:
          case 0x7Bu:
          case 0x7Cu:
          case 0x7Du:
          case 0x7Eu:
          case 0x7Fu:
          case 0x80u:
          case 0x81u:
          case 0x94u:
          case 0xA0u:
            if (qword_280F85690 != -1)
            {
              swift_once();
            }

            if (byte_280F8E728)
            {
              goto LABEL_8;
            }

            sub_231369100();
            v8 = sub_2313698A0();
            v9 = sub_23136A390();
            v10 = OUTLINED_FUNCTION_1_35(v9);
            v11 = *(v1 + 232);
            v12 = *(v1 + 192);
            if (v10)
            {
              v13 = swift_slowAlloc();
              v14 = swift_slowAlloc();
              v50 = v14;
              *v13 = 136315138;
              v15 = sub_23125DB88(v6);
              v17 = sub_2311CFD58(v15, v16, &v50);

              *(v13 + 4) = v17;
              _os_log_impl(&dword_2311CB000, v8, v0, "BaseSuggestionsOwnerDefinitionFactory:: AppIntent suggestion '%s' not added due to feature flag 'handCraftedAppIntentSuggestions' is off", v13, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v14);
              v4 = v49;
              OUTLINED_FUNCTION_29();
              OUTLINED_FUNCTION_29();
            }

            goto LABEL_34;
          default:
LABEL_8:
            v0 = *(v1 + 80);
            __swift_project_boxed_opaque_existential_1((v1 + 56), v0);
            sub_23126036C(v6);
            v7 = sub_2313694C0();

            if (v7)
            {
              switch(v6)
              {
                case 0x4Du:
                case 0x4Fu:
                case 0x56u:
                case 0x64u:
                case 0x66u:
                case 0x67u:
                case 0x68u:
                case 0x69u:
                case 0x77u:
                case 0x78u:
                case 0x79u:
                case 0x80u:
                case 0x82u:
                case 0x83u:
                case 0x87u:
                case 0x88u:
                case 0x89u:
                case 0x8Au:
                case 0x8Bu:
                case 0x8Eu:
                case 0x8Fu:
                case 0x90u:
                case 0x91u:
                case 0x92u:
                case 0x93u:
                case 0x96u:
                case 0x97u:
                case 0x98u:
                case 0x99u:
                case 0x9Au:
                case 0x9Bu:
                case 0x9Du:
                case 0x9Eu:
                case 0x9Fu:
                case 0xA2u:
                  goto LABEL_17;
                case 0x4Eu:
                case 0x50u:
                case 0x51u:
                case 0x52u:
                case 0x53u:
                case 0x54u:
                case 0x55u:
                case 0x57u:
                case 0x58u:
                case 0x59u:
                case 0x5Au:
                case 0x5Bu:
                case 0x5Cu:
                case 0x5Du:
                case 0x5Eu:
                case 0x5Fu:
                case 0x60u:
                case 0x61u:
                case 0x62u:
                case 0x63u:
                case 0x65u:
                case 0x6Au:
                case 0x6Bu:
                case 0x6Cu:
                case 0x6Du:
                case 0x6Eu:
                case 0x6Fu:
                case 0x70u:
                case 0x71u:
                case 0x72u:
                case 0x73u:
                case 0x74u:
                case 0x75u:
                case 0x76u:
                case 0x7Au:
                case 0x7Bu:
                case 0x7Cu:
                case 0x7Du:
                case 0x7Eu:
                case 0x7Fu:
                case 0x81u:
                case 0x84u:
                case 0x85u:
                case 0x86u:
                case 0x8Cu:
                case 0x8Du:
                case 0x94u:
                case 0x95u:
                case 0x9Cu:
                case 0xA0u:
                case 0xA1u:
                  goto LABEL_32;
                default:
                  if (v6 <= 0x3F && ((1 << v6) & 0xC612000000000305) != 0 || v6 == 65 || v6 == 69)
                  {
LABEL_17:
                    sub_23125DB88(v6);
                    if (!(!v28 & v27))
                    {
                      v0 = 0x8000000231380770;
                      switch(v6)
                      {
                        case 'H':
                        case 'M':
                          goto LABEL_26;
                        case 'I':
                        case 'J':
                        case 'K':
                          goto LABEL_28;
                        case 'L':
                          goto LABEL_29;
                        case 'N':
                          goto LABEL_27;
                        default:
                          JUMPOUT(0);
                      }
                    }

                    if (v6 - 119 >= 2)
                    {
                      if (v6 == 63 || v6 == 128)
                      {
LABEL_26:
                        OUTLINED_FUNCTION_2_23();
                        v0 = 0x80000002313807A0;
                      }

                      else if (v6 == 129)
                      {
LABEL_27:
                        OUTLINED_FUNCTION_2_23();
                        v0 = 0x8000000231380740;
                      }

                      else
                      {
LABEL_28:
                        v50 = 0;
                        v51 = 0xE000000000000000;
                        sub_23136A650();

                        OUTLINED_FUNCTION_2_23();
                        v50 = v29;
                        v51 = 0x80000002313806F0;
                        v30 = sub_23125DB88(v6);
                        MEMORY[0x23192A730](v30);

                        LOBYTE(v0) = v51;
                      }
                    }

                    else
                    {
                      OUTLINED_FUNCTION_2_23();
                      v0 = 0x8000000231380710;
                    }

LABEL_29:
                    *(swift_task_alloc() + 16) = v6;
                    sub_231368EB0();

                    goto LABEL_35;
                  }

LABEL_32:
                  sub_231369100();
                  v8 = sub_2313698A0();
                  v31 = sub_23136A390();
                  v32 = OUTLINED_FUNCTION_1_35(v31);
                  v11 = *(v1 + 216);
                  v12 = *(v1 + 192);
                  if (!v32)
                  {
                    goto LABEL_34;
                  }

                  v48 = *(v1 + 216);
                  v33 = swift_slowAlloc();
                  v34 = swift_slowAlloc();
                  v50 = v34;
                  *v33 = 136315138;
                  v35 = sub_23125DB88(v6);
                  v37 = sub_2311CFD58(v35, v36, &v50);

                  *(v33 + 4) = v37;
                  v4 = v49;
                  _os_log_impl(&dword_2311CB000, v8, v0, "BaseSuggestionsOwnerDefinitionFactory:: '%s' not added due to 'addToSuggestionPool' is false", v33, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v34);
                  OUTLINED_FUNCTION_29();
                  break;
              }

              goto LABEL_14;
            }

            sub_231369100();
            v8 = sub_2313698A0();
            v18 = sub_23136A390();
            v19 = OUTLINED_FUNCTION_1_35(v18);
            v11 = *(v1 + 224);
            v12 = *(v1 + 192);
            if (v19)
            {
              v20 = swift_slowAlloc();
              v50 = swift_slowAlloc();
              *v20 = 136315394;
              v21 = sub_23125DB88(v6);
              v48 = v11;
              v23 = sub_2311CFD58(v21, v22, &v50);

              *(v20 + 4) = v23;
              *(v20 + 12) = 2080;
              v24 = sub_23126036C(v6);
              v26 = sub_2311CFD58(v24, v25, &v50);

              *(v20 + 14) = v26;
              _os_log_impl(&dword_2311CB000, v8, v0, "BaseSuggestionsOwnerDefinitionFactory:: '%s' not added due to related app '%s' is not installed", v20, 0x16u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_29();
              v4 = v49;
LABEL_14:
              OUTLINED_FUNCTION_29();

              (*v4)(v48, v12);
              goto LABEL_35;
            }

LABEL_34:

            (*v4)(v11, v12);
LABEL_35:
            if (++v5 == 195)
            {
              sub_231368ED0();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43598, &qword_23136CAD8);
              v38 = swift_allocObject();
              *(v38 + 16) = xmmword_23136B670;
              sub_2311D38A8((v1 + 136), v38 + 32);

              __swift_destroy_boxed_opaque_existential_1Tm((v1 + 56));
              goto LABEL_41;
            }

            break;
        }
      }
    }
  }

  else
  {
    *(v1 + 128) = 0;
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
  }

  sub_231228E9C(v1 + 96, &qword_27DD43818, &unk_23136E030);
  sub_2313690F0();
  v39 = sub_2313698A0();
  v40 = sub_23136A3B0();
  v41 = os_log_type_enabled(v39, v40);
  v43 = *(v1 + 200);
  v42 = *(v1 + 208);
  v44 = *(v1 + 192);
  if (v41)
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_2311CB000, v39, v40, "BaseSuggestionsOwnerDefinitionFactory: No appUtils instance in the lifecycle container.\nSo we cannot check if an app is installed before showing BaseSuggestions. Not building any BaseSuggestions", v45, 2u);
    OUTLINED_FUNCTION_29();
  }

  (*(v43 + 8))(v42, v44);

  v38 = MEMORY[0x277D84F90];
LABEL_41:

  v46 = *(v1 + 8);

  return v46(v38);
}

uint64_t sub_2312E73EC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD447F0, &qword_231375E68);
  MEMORY[0x28223BE20](v4 - 8);
  v80 = (v76 - v5);
  v95 = sub_231368950();
  v6 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v79 = (v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD447F8, &unk_231375E70);
  MEMORY[0x28223BE20](v8 - 8);
  v97 = v76 - v9;
  v96 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
  MEMORY[0x28223BE20](v96);
  v94 = v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[5];
  v99 = *(a1 + 3);
  __swift_project_boxed_opaque_existential_1(a1, v99);
  sub_231265670(a2);
  v105 = v99;
  v106 = v11;
  __swift_allocate_boxed_opaque_existential_1(&v104);
  sub_231368B10();

  v12 = v105;
  v13 = __swift_project_boxed_opaque_existential_1(&v104, v105);
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231265158(a2);
  sub_231368B00();

  (*(v14 + 8))(v16, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(&v104);
  sub_231260464(a2, &v101);
  if (v102)
  {
    sub_2311D38A8(&v101, &v104);
    v17 = a1[3];
    v18 = __swift_project_boxed_opaque_existential_1(a1, v17);
    v19 = *(v17 - 8);
    MEMORY[0x28223BE20](v18);
    v21 = v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_231368AD0();
    (*(v19 + 8))(v21, v17);
    __swift_destroy_boxed_opaque_existential_1Tm(&v104);
  }

  else
  {
    sub_231228E9C(&v101, &qword_27DD43E50, &unk_2313708D8);
  }

  v22 = sub_23125E754(a2);
  v23 = *(v22 + 16);
  if (v23)
  {
    v77 = a2;
    v76[1] = v22;
    v24 = v22 + 32;
    v92 = (v6 + 104);
    v78 = (v6 + 8);
    v91 = *MEMORY[0x277D60B78];
    v90 = *MEMORY[0x277D60B98];
    v89 = *MEMORY[0x277D61060];
    v88 = xmmword_23136B670;
    v87 = xmmword_23136C1C0;
    v93 = a1;
    v25 = v97;
    v26 = v96;
    do
    {
      *&v99 = v23;
      sub_2311CF324(v24, &v104);
      sub_2311CF324(&v104, &v101);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44800, &qword_231375E80);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
        v27 = v94;
        sub_2312E85F8(v25, v94);
        v28 = a1[3];
        v83 = v28;
        v85 = a1[4];
        v84 = __swift_project_boxed_opaque_existential_1(a1, v28);
        v98 = v76;
        v86 = *(v28 - 8);
        MEMORY[0x28223BE20](v84);
        v82 = v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D40, &qword_231370668);
        v30 = sub_231367E10();
        v31 = *(v30 - 8);
        v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
        v33 = swift_allocObject();
        *(v33 + 16) = v88;
        v34 = v27;
        (*(v31 + 16))(v33 + v32, v27, v30);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43260, &qword_23136C990);
        v35 = sub_231367D80();
        v36 = *(v35 - 8);
        v37 = *(v36 + 72);
        v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
        v39 = swift_allocObject();
        *(v39 + 16) = v87;
        v40 = *(v36 + 104);
        v40(v39 + v38, v91, v35);
        v40(v39 + v38 + v37, v90, v35);
        v41 = v80;
        *v80 = v39;
        v42 = v95;
        (*v92)(v41, v89, v95);
        __swift_storeEnumTagSinglePayload(v41, 0, 1, v42);
        v81 = *(v34 + *(v26 + 20));
        *&v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44810, &unk_231375E90);
        *(&v102 + 1) = sub_2312E865C();
        __swift_allocate_boxed_opaque_existential_1(&v101);
        sub_231367EA0();
        v43 = MEMORY[0x277D60CF0];
        sub_2312E86C0(&qword_280F7C9E8, 255, MEMORY[0x277D60CF0], MEMORY[0x277D60D10]);
        sub_2312E86C0(&qword_280F7C9F0, 255, v43, MEMORY[0x277D60D08]);
        sub_2312E86C0(&qword_280F7CA00, 255, v43, MEMORY[0x277D60CF8]);
        sub_2312E86C0(&qword_280F7C9F8, 255, v43, MEMORY[0x277D60D00]);

        sub_2313679E0();
        v44 = v82;
        v45 = v83;
        sub_231366FC0();

        sub_231228E9C(v41, &qword_27DD447F0, &qword_231375E68);
        (*(v86 + 8))(v44, v45);
        sub_2312E8708(v94);
        __swift_destroy_boxed_opaque_existential_1Tm(&v101);
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v25, 1, 1, v26);
        sub_231228E9C(v25, &qword_27DD447F8, &unk_231375E70);
        v46 = a1[3];
        v85 = a1[4];
        v84 = __swift_project_boxed_opaque_existential_1(a1, v46);
        v98 = v76;
        v86 = *(v46 - 8);
        MEMORY[0x28223BE20](v84);
        v48 = v76 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D40, &qword_231370668);
        sub_231367E10();
        *(swift_allocObject() + 16) = v88;
        v49 = v105;
        __swift_project_boxed_opaque_existential_1(&v104, v105);
        (*(*(&v49 + 1) + 8))(v49, *(&v49 + 1));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43260, &qword_23136C990);
        v50 = sub_231367D80();
        v51 = *(v50 - 8);
        v52 = *(v51 + 72);
        v53 = (*(v51 + 80) + 32) & ~*(v51 + 80);
        v54 = swift_allocObject();
        *(v54 + 16) = v87;
        v55 = v54 + v53;
        v56 = *(v51 + 104);
        v56(v55, v91, v50);
        v56(v55 + v52, v90, v50);
        v57 = v79;
        *v79 = v54;
        v58 = v95;
        (*v92)(v57, v89, v95);
        sub_231366FD0();

        (*v78)(v57, v58);
        (*(v86 + 8))(v48, v46);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v104);
      v24 += 40;
      v23 = v99 - 1;
      a1 = v93;
      v25 = v97;
      v26 = v96;
    }

    while (v99 != 1);

    a2 = v77;
  }

  else
  {
  }

  v59 = a1[5];
  v99 = *(a1 + 3);
  __swift_project_boxed_opaque_existential_1(a1, v99);
  v105 = v99;
  v106 = v59;
  __swift_allocate_boxed_opaque_existential_1(&v104);
  sub_231368AE0();
  v60 = v106;
  v99 = v105;
  __swift_project_boxed_opaque_existential_1(&v104, v105);
  sub_2312653A8(a2);
  v102 = v99;
  v103 = v60;
  __swift_allocate_boxed_opaque_existential_1(&v101);
  sub_231368B30();

  v61 = v102;
  v62 = __swift_project_boxed_opaque_existential_1(&v101, v102);
  v63 = *(v61 - 8);
  MEMORY[0x28223BE20](v62);
  v65 = v76 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for BaseSuggestionsAssetProvider();
  v67 = swift_allocObject();
  v100[3] = v66;
  v100[4] = sub_2312E86C0(qword_280F85730, v68, type metadata accessor for BaseSuggestionsAssetProvider, &unk_231375E38);
  v100[0] = v67;
  sub_231368AF0();
  (*(v63 + 8))(v65, v61);
  __swift_destroy_boxed_opaque_existential_1Tm(v100);
  __swift_destroy_boxed_opaque_existential_1Tm(&v101);
  __swift_destroy_boxed_opaque_existential_1Tm(&v104);
  sub_231262A24(a2);
  sub_2312E83AC(v69, a1);

  sub_2312646B4(a2, &v101);
  if (!v102)
  {
    return sub_231228E9C(&v101, &qword_27DD44808, &qword_231375E88);
  }

  sub_2311D38A8(&v101, &v104);
  v70 = a1[3];
  v71 = __swift_project_boxed_opaque_existential_1(a1, v70);
  v72 = *(v70 - 8);
  MEMORY[0x28223BE20](v71);
  v74 = v76 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231368B40();
  (*(v72 + 8))(v74, v70);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v104);
}

uint64_t sub_2312E83AC(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  for (i = result + 48; v3; --v3)
  {
    sub_231215FE4(a2, v10);
    v5 = v11;
    v6 = __swift_project_boxed_opaque_existential_1(v10, v11);
    v7 = *(v5 - 8);
    MEMORY[0x28223BE20](v6);
    v9 = v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_231368B60();
    (*(v7 + 8))(v9, v5);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v10);
    i += 64;
  }

  return result;
}

uint64_t sub_2312E84F4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23120B320;

  return static BaseSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(a1, a2);
}

uint64_t sub_2312E85F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2312E865C()
{
  result = qword_280F7CA90;
  if (!qword_280F7CA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD44810, &unk_231375E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7CA90);
  }

  return result;
}

uint64_t sub_2312E86C0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2312E8708(uint64_t a1)
{
  v2 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2312E8768()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    sub_2311F5E50(0, v2, 0);
    v3 = v9;
    v4 = v1 + 40;
    do
    {
      sub_231368A90();
      v9 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2311F5E50(v5 > 1, v6 + 1, 1);
        v3 = v9;
      }

      *(v3 + 16) = v6 + 1;
      sub_2311D38A8(&v8, v3 + 40 * v6 + 32);
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_2312E886C()
{
  v1 = sub_2312E8768();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2312E88CC(uint64_t a1)
{
  v1[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F00, &unk_231375F50);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312E8974, 0, 0);
}

uint64_t sub_2312E8974()
{
  sub_23128DC20(v0[7], (v0 + 2));
  if (v0[5])
  {
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v0[10] = sub_231368300();
    v0[11] = v1;
    v0[12] = swift_getObjectType();
    v3 = sub_23136A260();

    return MEMORY[0x2822009F8](sub_2312E8A88, v3, v2);
  }

  else
  {
    sub_23128DC90((v0 + 2));

    v4 = v0[1];

    return v4(0xF000000000000007);
  }
}

uint64_t sub_2312E8A88()
{
  sub_23126C1F0(*(v0 + 72));
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_2312E8AFC, 0, 0);
}

uint64_t sub_2312E8AFC()
{
  v1 = v0[8];
  sub_2312E8CC0(v0[9], v1);
  v2 = sub_231369330();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = 0xF000000000000007;
  }

  else
  {
    v4 = v0[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44818, &qword_231375F60);
    v5 = swift_allocBox();
    (*(*(v2 - 8) + 32))(v6, v4, v2);
    v3 = v5 | 0x6000000000000000;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v7 = v0[1];

  return v7(v3);
}

uint64_t sub_2312E8C2C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23120B320;

  return sub_2312E88CC(a1);
}

uint64_t sub_2312E8CC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F00, &unk_231375F50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2312E8D30(__int128 *a1, uint64_t a2, char a3)
{
  v4 = a2 * 60.0 * 60.0;
  v5 = a3 & 1;
  if (a3)
  {
    v4 = 0.0;
  }

  *(v3 + 16) = v4;
  *(v3 + 24) = v5;
  *(v3 + 32) = a2;
  *(v3 + 40) = v5;
  sub_2311D38A8(a1, v3 + 48);
  return v3;
}

uint64_t sub_2312E8D80@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v50 = sub_231368260();
  v8 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v37 - v11;
  v12 = sub_231368090();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2[3];
  v16 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v17);
  v18 = type metadata accessor for RankedCandidateSuggestion(0);
  result = sub_231254598(a1 + *(v18 + 28), v17, v16);
  v47 = *(result + 16);
  if (v47)
  {
    v37 = a3;
    v38 = v4;
    v20 = 0;
    v21 = *(v4 + 16);
    v44 = *(v4 + 24);
    v43 = result + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v42 = v13 + 16;
    v41 = *MEMORY[0x277D60E38];
    v22 = (v8 + 8);
    v45 = v13;
    v46 = v12;
    v39 = (v13 + 8);
    v40 = (v8 + 104);
    while (v20 < *(result + 16))
    {
      v23 = result;
      (*(v45 + 16))(v15, v43 + *(v45 + 72) * v20, v12);
      if (v44)
      {
        v24 = 0;
      }

      else
      {
        __swift_project_boxed_opaque_existential_1((v38 + 48), *(v38 + 72));
        sub_231368F20();
        v26 = v25;
        sub_231368050();
        v24 = v26 - v27 >= v21;
      }

      v28 = v48;
      sub_231368060();
      v30 = v49;
      v29 = v50;
      (*v40)(v49, v41, v50);
      v31 = sub_231368240();
      v32 = *v22;
      (*v22)(v30, v29);
      v32(v28, v29);
      v12 = v46;
      (*v39)(v15, v46);
      if ((v31 & 1) == 0 || v24)
      {
        ++v20;
        result = v23;
        if (v47 != v20)
        {
          continue;
        }
      }

      v4 = v38;
      goto LABEL_13;
    }

    __break(1u);
  }

  else
  {

LABEL_13:
    v33 = 0xE000000000000000;
    v54[0] = 0;
    v54[1] = 0xE000000000000000;
    sub_23136A650();

    strcpy(v54, "alreadyEngaged");
    HIBYTE(v54[1]) = -18;
    if (*(v4 + 40))
    {
      v34 = 0;
    }

    else
    {
      v35 = *(v4 + 32);
      v52 = 35;
      v53 = 0xE100000000000000;
      v51 = v35;
      v36 = sub_23136A8B0();
      MEMORY[0x23192A730](v36);

      MEMORY[0x23192A730](0x7372756F68, 0xE500000000000000);
      v34 = v52;
      v33 = v53;
    }

    MEMORY[0x23192A730](v34, v33);

    return sub_231366E50();
  }

  return result;
}

uint64_t sub_2312E91C0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_2312E9240(uint64_t a1, char a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 25) = 0;
  return OUTLINED_FUNCTION_0_3();
}

uint64_t sub_2312E9250(char a1)
{
  *(v1 + 16) = 2;
  *(v1 + 24) = 0;
  *(v1 + 25) = a1;
  return OUTLINED_FUNCTION_0_3();
}

BOOL sub_2312E9264()
{
  v0 = sub_231368260();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231368060();
  v4 = (*(v1 + 88))(v3, v0);
  v5 = *MEMORY[0x277D60E30];
  if (v4 == *MEMORY[0x277D60E30])
  {
    (*(v1 + 96))(v3, v0);
    v6 = sub_231367D80();
    (*(*(v6 - 8) + 8))(v3, v6);
  }

  else
  {
    (*(v1 + 8))(v3, v0);
  }

  return v4 == v5;
}

uint64_t sub_2312E93C0@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v75 = sub_231368260();
  v7 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v74 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v73 = &v58 - v10;
  v11 = sub_231368090();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v63 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v72 = &v58 - v16;
  MEMORY[0x28223BE20](v17);
  v20 = &v58 - v19;
  v76 = v3;
  if (*(v3 + 25))
  {

    return sub_231366E50();
  }

  else
  {
    v68 = v7;
    v69 = a2;
    v65 = v18;
    v61 = a3;
    v21 = a2[3];
    v22 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v21);
    v23 = *(type metadata accessor for RankedCandidateSuggestion(0) + 28);
    v70 = a1;
    v62 = v23;
    result = sub_231254598(a1 + v23, v21, v22);
    v25 = result;
    v26 = 0;
    v27 = *(result + 16);
    v77 = (v12 + 8);
    v64 = (v12 + 32);
    v71 = MEMORY[0x277D84F90];
    while (v27 != v26)
    {
      if (v26 >= *(v25 + 16))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v28 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v29 = *(v12 + 72);
      (*(v12 + 16))(v20, v25 + v28 + v29 * v26, v11);
      if (sub_2312E9264())
      {
        v60 = *v64;
        v60(v72, v20, v11);
        v30 = v71;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v78 = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2311F5BD4();
          v30 = v78;
        }

        v32 = *(v30 + 16);
        v33 = v32 + 1;
        if (v32 >= *(v30 + 24) >> 1)
        {
          v71 = v32 + 1;
          v59 = v32;
          sub_2311F5BD4();
          v33 = v71;
          v32 = v59;
          v30 = v78;
        }

        ++v26;
        *(v30 + 16) = v33;
        v71 = v30;
        result = (v60)(v30 + v28 + v32 * v29, v72, v11);
      }

      else
      {
        result = (*v77)(v20, v11);
        ++v26;
      }
    }

    v60 = *(v71 + 16);

    v34 = v69[3];
    v35 = v69[4];
    __swift_project_boxed_opaque_existential_1(v69, v34);
    result = sub_231254598(v70 + v62, v34, v35);
    v36 = 0;
    v72 = *(result + 16);
    LODWORD(v70) = *MEMORY[0x277D60E38];
    v37 = v68++;
    v69 = v37 + 13;
    v62 = MEMORY[0x277D84F90];
    v38 = v65;
    v71 = result;
    v66 = v12 + 16;
    v67 = v12;
    while (v72 != v36)
    {
      if (v36 >= *(result + 16))
      {
        goto LABEL_29;
      }

      v65 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v39 = *(v12 + 72);
      (*(v12 + 16))(v38, result + v65 + v39 * v36, v11);
      v40 = v73;
      sub_231368060();
      v41 = v38;
      v43 = v74;
      v42 = v75;
      (*v69)(v74, v70, v75);
      v44 = sub_231368240();
      v45 = v11;
      v46 = *v68;
      (*v68)(v43, v42);
      v46(v40, v42);
      if (v44)
      {
        v47 = v39;
        v48 = v65;
        v49 = *v64;
        (*v64)(v63, v41, v45);
        v50 = v62;
        v51 = swift_isUniquelyReferenced_nonNull_native();
        v78 = v50;
        v11 = v45;
        v38 = v41;
        if ((v51 & 1) == 0)
        {
          sub_2311F5BD4();
          v50 = v78;
        }

        v12 = v67;
        v52 = *(v50 + 16);
        v53 = v52 + 1;
        if (v52 >= *(v50 + 24) >> 1)
        {
          v65 = v52 + 1;
          sub_2311F5BD4();
          v53 = v65;
          v50 = v78;
        }

        ++v36;
        *(v50 + 16) = v53;
        v62 = v50;
        v49((v50 + v48 + v52 * v47), v63, v11);
        result = v71;
      }

      else
      {
        (*v77)(v41, v45);
        ++v36;
        v11 = v45;
        v12 = v67;
        v38 = v41;
        result = v71;
      }
    }

    v54 = *(v62 + 16);

    v55 = *(v76 + 16);
    v56 = __OFSUB__(v55, v60);
    v57 = v55 - v60;
    if (v56)
    {
      goto LABEL_30;
    }

    if (!__OFADD__(v57, v54))
    {
      return sub_231366E50();
    }

LABEL_31:
    __break(1u);
  }

  return result;
}

uint64_t sub_2312E9AE8@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v59 = a3;
  v5 = sub_231368260();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_231369050();
  v57 = *(v9 - 8);
  v58 = v9;
  MEMORY[0x28223BE20](v9);
  v56 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_231368090();
  v11 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v53 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v51 - v14;
  v16 = a2[3];
  v17 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v16);
  v54 = *(type metadata accessor for RankedCandidateSuggestion(0) + 28);
  v55 = a1;
  v18 = sub_231254598(a1 + v54, v16, v17);
  v19 = 0;
  v20 = *(v18 + 16);
  v68 = v11 + 16;
  v69 = v20;
  v67 = (v6 + 88);
  v66 = *MEMORY[0x277D60E30];
  v65 = (v11 + 8);
  v62 = (v6 + 96);
  v63 = (v6 + 8);
  v61 = *MEMORY[0x277D60BA0];
  v52 = (v11 + 32);
  v60 = MEMORY[0x277D84F90];
LABEL_2:
  v21 = v64;
  while (v69 != v19)
  {
    if (v19 >= *(v18 + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    v22 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v23 = *(v11 + 72);
    (*(v11 + 16))(v15, v18 + v22 + v23 * v19, v21);
    sub_231368060();
    v24 = (*v67)(v8, v5);
    if (v24 == v66)
    {
      v25 = v5;
      (*v62)(v8, v5);
      v26 = sub_231367D80();
      v27 = *(v26 - 8);
      v28 = (*(v27 + 88))(v8, v26);
      if (v28 == v61)
      {
        (*(v27 + 96))(v8, v26);
        v30 = sub_231367020();
        (*(*(v30 - 8) + 8))(v8, v30);
        v31 = *v52;
        (*v52)(v53, v15, v64);
        v32 = v60;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v70 = v32;
        v51 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2311F5BD4();
          v32 = v70;
        }

        v34 = *(v32 + 16);
        v35 = v34 + 1;
        if (v34 >= *(v32 + 24) >> 1)
        {
          v60 = v34 + 1;
          sub_2311F5BD4();
          v35 = v60;
          v32 = v70;
        }

        ++v19;
        *(v32 + 16) = v35;
        v60 = v32;
        v51((v32 + v22 + v34 * v23), v53, v64);
        v5 = v25;
        goto LABEL_2;
      }

      v29 = v64;
      (*v65)(v15, v64);
      (*(v27 + 8))(v8, v26);
      v5 = v25;
      v21 = v29;
    }

    else
    {
      (*v65)(v15, v21);
      (*v63)(v8, v5);
    }

    ++v19;
  }

  if (qword_280F7C920 == -1)
  {
    goto LABEL_16;
  }

LABEL_21:
  swift_once();
LABEL_16:
  v36 = sub_2313698C0();
  __swift_project_value_buffer(v36, qword_280F7C928);
  v38 = v56;
  v37 = v57;
  v39 = v58;
  (*(v57 + 16))(v56, v55 + v54, v58);
  swift_retain_n();
  v40 = sub_2313698A0();
  v41 = sub_23136A3A0();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v70 = v43;
    *v42 = 136315394;
    sub_2312EEB0C(&qword_27DD42EE8, MEMORY[0x277D61268], MEMORY[0x277D61290]);
    v44 = sub_23136A8B0();
    v46 = v45;
    (*(v37 + 8))(v38, v39);
    v47 = sub_2311CFD58(v44, v46, &v70);
    v48 = v60;

    *(v42 + 4) = v47;
    *(v42 + 12) = 2048;
    v49 = *(v48 + 16);

    *(v42 + 14) = v49;

    _os_log_impl(&dword_2311CB000, v40, v41, "Suggestion %s found %ld previous hints", v42, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x23192B930](v43, -1, -1);
    MEMORY[0x23192B930](v42, -1, -1);
  }

  else
  {

    (*(v37 + 8))(v38, v39);
  }

  return sub_231366E50();
}

uint64_t sub_2312EA284(__int128 *a1, uint64_t a2, double a3)
{
  sub_2311D38A8(a1, v3 + 32);
  *(v3 + 16) = a3;
  *(v3 + 24) = a2;
  return v3;
}

uint64_t sub_2312EA2C4@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v70 = a3;
  v5 = COERCE_DOUBLE(type metadata accessor for RankedCandidateSuggestion(0));
  MEMORY[0x28223BE20](*&v5);
  v69 = (&v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_231368260();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v67 - v12;
  v84 = sub_231368090();
  v14 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v71 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v73 = &v67 - v17;
  MEMORY[0x28223BE20](v18);
  v86 = &v67 - v19;
  v20 = a2[3];
  v21 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v20);
  v67 = v5;
  v22 = *(*&v5 + 28);
  v68 = a1;
  v23 = sub_231254598(a1 + v22, v20, v21);
  v24 = 0;
  v77 = *(v23 + 16);
  v82 = v14 + 16;
  v85 = *MEMORY[0x277D60E30];
  v25 = (v8 + 104);
  v26 = (v8 + 8);
  v72 = (v14 + 32);
  v75 = v14;
  v79 = (v14 + 8);
  v78 = MEMORY[0x277D84F90];
  v74 = v23;
  while (1)
  {
    v27 = v24;
LABEL_3:
    if (v27 == v77)
    {
      break;
    }

    if (v27 >= *(v23 + 16))
    {
      __break(1u);
LABEL_30:
      swift_once();
      goto LABEL_25;
    }

    v28 = (*(v75 + 80) + 32) & ~*(v75 + 80);
    v29 = *(v75 + 72);
    v83 = v27 + 1;
    v80 = v29;
    v81 = v28;
    (*(v75 + 16))(v86, v23 + v28 + v29 * v27, v84);
    v30 = 0.0;
    v31 = v76[3];
    v32 = *(v31 + 16);
    do
    {
      if (v32 == *&v30)
      {
        (*v79)(v86, v84);
        v27 = v83;
        v23 = v74;
        goto LABEL_3;
      }

      v33 = sub_231367D80();
      *&v5 = *&v30 + 1;
      (*(*(v33 - 8) + 16))(v13, v31 + ((*(*(v33 - 8) + 80) + 32) & ~*(*(v33 - 8) + 80)) + *(*(v33 - 8) + 72) * *&v30, v33);
      (*v25)(v13, v85, v7);
      sub_231368060();
      v34 = sub_231368240();
      v35 = *v26;
      (*v26)(v10, v7);
      v35(v13, v7);
      v30 = v5;
    }

    while ((v34 & 1) == 0);
    v36 = *v72;
    (*v72)(v73, v86, v84);
    v37 = v78;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v87 = v37;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2311F5BD4();
      v37 = v87;
    }

    v39 = *(*&v37 + 16);
    if (v39 >= *(*&v37 + 24) >> 1)
    {
      sub_2311F5BD4();
      v37 = v87;
    }

    *(*&v37 + 16) = v39 + 1;
    v78 = v37;
    v36((*&v37 + v81 + v39 * v80), v73, v84);
    v23 = v74;
    v24 = v83;
  }

  v40 = *(*&v78 + 16);
  if (v40)
  {
    v87 = MEMORY[0x277D84F90];
    v41 = v78;
    sub_2311F5B90(0, v40, 0);
    *&v42 = v87;
    v43 = *&v41 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
    v44 = *(v75 + 72);
    v45 = *(v75 + 16);
    v26 = v69;
    do
    {
      v46 = v71;
      v47 = v84;
      v45(v71, v43, v84);
      sub_231368050();
      v49 = v48;
      (*v79)(v46, v47);
      v87 = *&v42;
      v51 = *(v42 + 16);
      v50 = *(v42 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_2311F5B90(v50 > 1, v51 + 1, 1);
        *&v42 = v87;
      }

      *(v42 + 16) = v51 + 1;
      *(v42 + 8 * v51 + 32) = v49;
      v43 += v44;
      --v40;
    }

    while (v40);
  }

  else
  {

    *&v42 = MEMORY[0x277D84F90];
    v26 = v69;
  }

  v5 = COERCE_DOUBLE(sub_2312EAB04(v42));
  LOBYTE(v10) = v52;

  if ((v10 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(v76 + 4, v76[7]);
    sub_231368F20();
    v5 = v53 - v5;
  }

  if (qword_280F7C920 != -1)
  {
    goto LABEL_30;
  }

LABEL_25:
  v54 = sub_2313698C0();
  __swift_project_value_buffer(v54, qword_280F7C928);
  sub_2311E1984(v68, v26);
  v55 = sub_2313698A0();
  v56 = sub_23136A3A0();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v89[0] = v58;
    *v57 = 136315394;
    __swift_project_boxed_opaque_existential_1((v26 + *(*&v67 + 20)), *(v26 + *(*&v67 + 20) + 24));
    v59 = sub_231368320();
    v61 = v60;
    sub_2311E1928(v26);
    v62 = sub_2311CFD58(v59, v61, v89);

    *(v57 + 4) = v62;
    *(v57 + 12) = 2080;
    v87 = v5;
    v88 = v10 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44820, &qword_231376298);
    v63 = sub_23136A010();
    v65 = sub_2311CFD58(v63, v64, v89);

    *(v57 + 14) = v65;
    _os_log_impl(&dword_2311CB000, v55, v56, "Suggestion %s found a previous hint %s", v57, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23192B930](v58, -1, -1);
    MEMORY[0x23192B930](v57, -1, -1);
  }

  else
  {

    sub_2311E1928(v26);
  }

  return sub_231366E50();
}

uint64_t sub_2312EAB04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_2312EAB90@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v55 = a3;
  v71 = sub_231368260();
  v5 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v68 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v70 = &v50 - v8;
  v9 = type metadata accessor for RankedCandidateSuggestion(0);
  MEMORY[0x28223BE20](v9);
  v54 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_231368090();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v57 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  v17 = a2[3];
  v18 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v17);
  v51 = v9;
  v19 = *(v9 + 28);
  v53 = a1;
  v20 = sub_231254598(a1 + v19, v17, v18);
  v21 = 0;
  v72 = *(v20 + 16);
  v67 = v12 + 16;
  v66 = *MEMORY[0x277D607E0];
  v65 = *MEMORY[0x277D60BA0];
  v64 = *MEMORY[0x277D60E30];
  v62 = (v5 + 8);
  v63 = (v5 + 104);
  v59 = (v12 + 8);
  v69 = v12;
  v56 = (v12 + 32);
  v58 = MEMORY[0x277D84F90];
  v61 = v20;
  v22 = v71;
  while (v72 != v21)
  {
    if (v21 >= *(v20 + 16))
    {
      __break(1u);
      goto LABEL_17;
    }

    v60 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v23 = *(v69 + 72);
    (*(v69 + 16))(v16, v20 + v60 + v23 * v21, v11);
    v24 = v11;
    v25 = v70;
    sub_231368060();
    v26 = sub_231367020();
    v27 = v21;
    v28 = v68;
    (*(*(v26 - 8) + 104))(v68, v66, v26);
    v29 = sub_231367D80();
    (*(*(v29 - 8) + 104))(v28, v65, v29);
    (*v63)(v28, v64, v22);
    v30 = sub_231368240();
    v31 = *v62;
    (*v62)(v28, v22);
    v31(v25, v22);
    if (v30)
    {
      v32 = v23;
      v33 = v60;
      v52 = *v56;
      v52(v57, v16, v24);
      v34 = v58;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73 = v34;
      v11 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2311F5BD4();
        v34 = v73;
      }

      v20 = v61;
      v36 = *(v34 + 16);
      if (v36 >= *(v34 + 24) >> 1)
      {
        sub_2311F5BD4();
        v34 = v73;
      }

      v21 = v27 + 1;
      *(v34 + 16) = v36 + 1;
      v58 = v34;
      v52((v34 + v33 + v36 * v32), v57, v11);
    }

    else
    {
      (*v59)(v16, v24);
      v21 = v27 + 1;
      v11 = v24;
      v20 = v61;
    }
  }

  if (qword_280F7C920 == -1)
  {
    goto LABEL_12;
  }

LABEL_17:
  swift_once();
LABEL_12:
  v37 = sub_2313698C0();
  __swift_project_value_buffer(v37, qword_280F7C928);
  v38 = v54;
  sub_2311E1984(v53, v54);
  v39 = v58;
  swift_retain_n();
  v40 = sub_2313698A0();
  v41 = sub_23136A3A0();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v73 = v43;
    *v42 = 136315394;
    __swift_project_boxed_opaque_existential_1((v38 + *(v51 + 20)), *(v38 + *(v51 + 20) + 24));
    v44 = sub_231368320();
    v46 = v45;
    sub_2311E1928(v38);
    v47 = sub_2311CFD58(v44, v46, &v73);

    *(v42 + 4) = v47;
    *(v42 + 12) = 2048;
    v48 = *(v39 + 16);

    *(v42 + 14) = v48;

    _os_log_impl(&dword_2311CB000, v40, v41, "Suggestion %s was spoken %ld time(s) before", v42, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x23192B930](v43, -1, -1);
    MEMORY[0x23192B930](v42, -1, -1);
  }

  else
  {

    sub_2311E1928(v38);
  }

  return sub_231366E50();
}

uint64_t sub_2312EB298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a3;
  sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v75 = v6;
  v76 = v5;
  MEMORY[0x28223BE20](v5);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v72 = &v65 - v10;
  sub_231368BC0();
  OUTLINED_FUNCTION_0_0();
  v70 = v12;
  v71 = v11;
  MEMORY[0x28223BE20](v11);
  v69 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v68 = &v65 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42ED8, &qword_23136EBD0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v65 - v17;
  v73 = sub_231368600();
  OUTLINED_FUNCTION_0_0();
  v67 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_23();
  v66 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42ED0, &unk_23136B7C0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v65 - v23;
  v25 = sub_2313689A0();
  OUTLINED_FUNCTION_0_0();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3_23();
  v30 = v29;
  v31 = type metadata accessor for RankedCandidateSuggestion(0);
  __swift_project_boxed_opaque_existential_1((a1 + *(v31 + 20)), *(a1 + *(v31 + 20) + 24));
  v32 = sub_231368320();
  sub_2311CF324(a2, v78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42EF0, &unk_2313762A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42EF8, &unk_23136B7F0);
  v33 = swift_dynamicCast();
  v74 = v32;
  if (v33)
  {
    v65 = v27;
    __swift_project_boxed_opaque_existential_1(&v79, *(&v80 + 1));
    sub_231368E80();
    __swift_destroy_boxed_opaque_existential_1Tm(&v79);
    if (__swift_getEnumTagSinglePayload(v24, 1, v25) != 1)
    {
      v34 = v65;
      v35 = v30;
      (*(v65 + 32))(v30, v24, v25);
      sub_231368990();
      v36 = v73;
      if (__swift_getEnumTagSinglePayload(v18, 1, v73) == 1)
      {
        v37 = v25;
        sub_231228E9C(v18, &qword_27DD42ED8, &qword_23136EBD0);
        v38 = v72;
        sub_2313690F0();
        sub_231369EE0();
        v39 = sub_2313698A0();
        v40 = sub_23136A3A0();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          *&v79 = v42;
          v43 = OUTLINED_FUNCTION_4_23(4.8149e-34);

          *(v41 + 4) = v43;
          OUTLINED_FUNCTION_5_24(&dword_2311CB000, v44, v45, "config for suggestion - %s is not having enable/disable info - suggestion is to be considered enabled");
          __swift_destroy_boxed_opaque_existential_1Tm(v42);
          OUTLINED_FUNCTION_29();
          OUTLINED_FUNCTION_29();
        }

        else
        {
        }

        (*(v75 + 8))(v38, v76);
        OUTLINED_FUNCTION_1_36(1, v64, 0x800000023137BE90, MEMORY[0x277D84F90]);
        return (*(v65 + 8))(v35, v37);
      }

      else
      {
        v76 = v25;

        v75 = v30;
        v55 = v67;
        v56 = v66;
        (*(v67 + 32))(v66, v18, v36);
        v57 = v68;
        sub_2313685E0();
        v59 = v69;
        v58 = v70;
        v60 = v71;
        (*(v70 + 104))(v69, *MEMORY[0x277D61118], v71);
        v61 = sub_231312274(v57, v59);
        v62 = *(v58 + 8);
        v62(v59, v60);
        v62(v57, v60);
        OUTLINED_FUNCTION_1_36(v61 & 1, v63, 0x800000023137BE90, MEMORY[0x277D84F90]);
        (*(v55 + 8))(v56, v36);
        return (*(v34 + 8))(v75, v76);
      }
    }
  }

  else
  {
    v81 = 0;
    v79 = 0u;
    v80 = 0u;
    sub_231228E9C(&v79, &qword_27DD42F00, &qword_2313762B0);
    __swift_storeEnumTagSinglePayload(v24, 1, 1, v25);
  }

  sub_231228E9C(v24, &qword_27DD42ED0, &unk_23136B7C0);
  sub_2313690F0();
  sub_231369EE0();
  v46 = sub_2313698A0();
  v47 = sub_23136A3A0();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *&v79 = v49;
    v50 = OUTLINED_FUNCTION_4_23(4.8149e-34);

    *(v48 + 4) = v50;
    OUTLINED_FUNCTION_5_24(&dword_2311CB000, v51, v52, "did not find config details for suggestion - %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();
  }

  else
  {
  }

  (*(v75 + 8))(v8, v76);
  return OUTLINED_FUNCTION_1_36(1, v53, 0x800000023137BE90, MEMORY[0x277D84F90]);
}

uint64_t sub_2312EBA6C@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v114 = a2;
  v92 = a3;
  v111 = sub_231368260();
  v113 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v110 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v109 = &v87 - v6;
  v94 = sub_231368090();
  v112 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v93 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v90 = &v87 - v9;
  MEMORY[0x28223BE20](v10);
  v95 = &v87 - v11;
  v12 = sub_231367D80();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v101 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437F0, &unk_23136DFE0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v87 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v87 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v87 - v26;
  v28 = type metadata accessor for RankedCandidateSuggestion(0);
  __swift_project_boxed_opaque_existential_1((a1 + *(v28 + 20)), *(a1 + *(v28 + 20) + 24));
  v29 = v18;
  sub_2313682C0();
  v30 = *MEMORY[0x277D607E0];
  v31 = sub_231367020();
  v32 = *(v31 - 8);
  v33 = *(v32 + 104);
  v108 = v30;
  v106 = v33;
  v107 = v31;
  v105 = v32 + 104;
  (v33)(v24, v30);
  v34 = *(v13 + 104);
  v104 = *MEMORY[0x277D60BA0];
  v102 = v34;
  v103 = v13 + 104;
  v34(v24);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v12);
  v35 = *(v16 + 56);
  sub_2312EEA0C(v27, v29);
  sub_2312EEA0C(v24, v29 + v35);
  if (__swift_getEnumTagSinglePayload(v29, 1, v12) != 1)
  {
    sub_2312EEA0C(v29, v21);
    if (__swift_getEnumTagSinglePayload(v29 + v35, 1, v12) != 1)
    {
      v36 = v101;
      (*(v13 + 32))(v101, v29 + v35, v12);
      sub_2312EEB0C(&qword_280F7CA50, MEMORY[0x277D60BA8], MEMORY[0x277D60BC0]);
      v100 = sub_231369F60();
      v37 = *(v13 + 8);
      v37(v36, v12);
      sub_231228E9C(v24, &qword_27DD42F18, &unk_23136B810);
      sub_231228E9C(v27, &qword_27DD42F18, &unk_23136B810);
      v37(v21, v12);
      sub_231228E9C(v29, &qword_27DD42F18, &unk_23136B810);
      if (v100)
      {
        goto LABEL_9;
      }

LABEL_31:
      sub_231369EE0();
      return sub_231366E50();
    }

    sub_231228E9C(v24, &qword_27DD42F18, &unk_23136B810);
    sub_231228E9C(v27, &qword_27DD42F18, &unk_23136B810);
    (*(v13 + 8))(v21, v12);
LABEL_6:
    sub_231228E9C(v29, &qword_27DD437F0, &unk_23136DFE0);
    goto LABEL_31;
  }

  sub_231228E9C(v24, &qword_27DD42F18, &unk_23136B810);
  sub_231228E9C(v27, &qword_27DD42F18, &unk_23136B810);
  if (__swift_getEnumTagSinglePayload(v29 + v35, 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_231228E9C(v29, &qword_27DD42F18, &unk_23136B810);
LABEL_9:
  v38 = v114[3];
  v39 = v114[4];
  __swift_project_boxed_opaque_existential_1(v114, v38);
  v40 = sub_2312546AC(v38, v39);
  v41 = 0;
  v101 = *(v40 + 16);
  v114 = (v112 + 16);
  v100 = *MEMORY[0x277D60E30];
  v98 = v113 + 1;
  v99 = (v113 + 13);
  v113 = (v112 + 8);
  v88 = (v112 + 32);
  v89 = MEMORY[0x277D84F90];
  v42 = v94;
  v43 = v95;
  v97 = v40;
  v96 = v12;
  while (v101 != v41)
  {
    if (v41 >= *(v40 + 16))
    {
      __break(1u);
      goto LABEL_37;
    }

    v95 = ((*(v112 + 80) + 32) & ~*(v112 + 80));
    v44 = *(v112 + 72);
    (*(v112 + 16))(v43, &v95[v40 + v44 * v41], v42);
    v45 = v109;
    v46 = v41;
    sub_231368060();
    v47 = v43;
    v48 = v110;
    v106(v110, v108, v107);
    v102(v48, v104, v12);
    v49 = v111;
    (*v99)(v48, v100, v111);
    v50 = sub_231368240();
    v51 = v42;
    v52 = *v98;
    (*v98)(v48, v49);
    v52(v45, v49);
    if (v50)
    {
      v53 = v44;
      v54 = v95;
      v87 = v46;
      v55 = *v88;
      (*v88)(v90, v47, v51);
      v56 = v89;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v115 = v56;
      v42 = v51;
      v43 = v47;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2311F5BD4();
        v56 = v115;
      }

      v12 = v96;
      v40 = v97;
      v58 = v87;
      v59 = *(v56 + 16);
      v60 = v59 + 1;
      if (v59 >= *(v56 + 24) >> 1)
      {
        sub_2311F5BD4();
        v60 = v59 + 1;
        v58 = v87;
        v56 = v115;
      }

      v41 = v58 + 1;
      *(v56 + 16) = v60;
      v89 = v56;
      v55(&v54[v56 + v59 * v53], v90, v42);
    }

    else
    {
      (*v113)(v47, v51);
      v41 = v46 + 1;
      v42 = v51;
      v12 = v96;
      v43 = v47;
      v40 = v97;
    }
  }

  if (qword_280F7C920 == -1)
  {
    goto LABEL_20;
  }

LABEL_37:
  swift_once();
LABEL_20:
  v61 = sub_2313698C0();
  __swift_project_value_buffer(v61, qword_280F7C928);
  v62 = v89;

  v63 = sub_2313698A0();
  v64 = sub_23136A3A0();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 134217984;
    *(v65 + 4) = *(v62 + 16);

    _os_log_impl(&dword_2311CB000, v63, v64, "Found %ld previous spoken suggestions", v65, 0xCu);
    MEMORY[0x23192B930](v65, -1, -1);
  }

  else
  {
  }

  v66 = *(v62 + 16);
  if (v66)
  {
    v115 = MEMORY[0x277D84F90];
    sub_2311F5B90(0, v66, 0);
    v67 = v115;
    v68 = v62 + ((*(v112 + 80) + 32) & ~*(v112 + 80));
    v69 = *(v112 + 72);
    v70 = *(v112 + 16);
    do
    {
      v71 = v93;
      v72 = v94;
      v70(v93, v68, v94);
      sub_231368050();
      v74 = v73;
      (*v113)(v71, v72);
      v115 = v67;
      v76 = *(v67 + 16);
      v75 = *(v67 + 24);
      if (v76 >= v75 >> 1)
      {
        sub_2311F5B90(v75 > 1, v76 + 1, 1);
        v67 = v115;
      }

      *(v67 + 16) = v76 + 1;
      *(v67 + 8 * v76 + 32) = v74;
      v68 += v69;
      --v66;
    }

    while (v66);
  }

  else
  {

    v67 = MEMORY[0x277D84F90];
  }

  sub_2312EAB04(v67);
  v78 = v77;

  if (v78)
  {
    goto LABEL_31;
  }

  __swift_project_boxed_opaque_existential_1((v91 + 32), *(v91 + 56));
  sub_231368F20();
  v79 = sub_2313698A0();
  v80 = sub_23136A3A0();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v115 = v82;
    *v81 = 136315138;
    v83 = sub_23136A2F0();
    v85 = sub_2311CFD58(v83, v84, &v115);

    *(v81 + 4) = v85;
    _os_log_impl(&dword_2311CB000, v79, v80, "Seconds since previous spokenHint %s", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v82);
    MEMORY[0x23192B930](v82, -1, -1);
    MEMORY[0x23192B930](v81, -1, -1);
  }

  sub_231369EE0();
  return sub_231366E50();
}

uint64_t sub_2312EC74C(uint64_t a1)
{

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_2312EC7E0(__int128 *a1, double a2)
{
  strcpy((v2 + 16), "usedRecently");
  *(v2 + 29) = 0;
  *(v2 + 30) = -5120;
  sub_2311D38A8(a1, v2 + 32);
  *(v2 + 72) = a2;
  return v2;
}

uint64_t sub_2312EC830(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((v3 + 32), *(v3 + 56));
  sub_231368F20();
  v7 = v6;
  v8 = *(v3 + 72);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v9 = type metadata accessor for RankedCandidateSuggestion(0);
  __swift_project_boxed_opaque_existential_1((a1 + *(v9 + 20)), *(a1 + *(v9 + 20) + 24));
  v10 = sub_231368320();
  *&v12 = COERCE_DOUBLE(sub_231254074(v10, v11));
  LOBYTE(a3) = v13;

  if (a3)
  {
    if (qword_280F7C920 != -1)
    {
      swift_once();
    }

    v14 = sub_2313698C0();
    __swift_project_value_buffer(v14, qword_280F7C928);
    v15 = sub_2313698A0();
    v16 = sub_23136A3A0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2311CB000, v15, v16, "[RecentUsagePolicy] suggestion does not have appId, skipping", v17, 2u);
LABEL_10:
      MEMORY[0x23192B930](v17, -1, -1);
    }
  }

  else
  {
    v18 = v7 - v8;
    v19 = *&v12;
    if (qword_280F7C920 != -1)
    {
      swift_once();
    }

    v20 = sub_2313698C0();
    __swift_project_value_buffer(v20, qword_280F7C928);

    v15 = sub_2313698A0();
    v21 = sub_23136A3A0();

    if (os_log_type_enabled(v15, v21))
    {
      v17 = swift_slowAlloc();
      *v17 = 134218240;
      *(v17 + 4) = v8;
      *(v17 + 12) = 1024;
      *(v17 + 14) = v18 <= v19;
      _os_log_impl(&dword_2311CB000, v15, v21, "[RecentUsagePolicy] suggestion seen in %f: isMeetingPolicy: %{BOOL}d", v17, 0x12u);
      goto LABEL_10;
    }
  }

  sub_231369EE0();

  return sub_231366E50();
}

uint64_t sub_2312ECB48(__int128 *a1, __int128 *a2)
{
  v5 = *a2;
  v3 = *(a2 + 2);
  *(v2 + 16) = 0xD00000000000002FLL;
  *(v2 + 24) = 0x8000000231380E40;
  sub_2311D38A8(a1, v2 + 32);
  *(v2 + 72) = v5;
  *(v2 + 88) = v3;
  return v2;
}

uint64_t sub_2312ECBAC@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  v3 = v2;
  v111 = a1;
  v100 = a2;
  v126 = sub_231368090();
  v4 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v6 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_231367D80();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v99 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v110 = &v98 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v98 - v13;
  MEMORY[0x28223BE20](v15);
  v105 = &v98 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44828, &qword_2313762B8);
  MEMORY[0x28223BE20](v17 - 8);
  v116 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v112 = &v98 - v20;
  v21 = v3[11];
  v22 = *(v21 + 64);
  v113 = v21 + 64;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v101 = (v23 + 63) >> 6;
  v118 = (v8 + 32);
  v119 = (v8 + 16);
  v106 = v8;
  v123 = (v8 + 8);
  v125 = v4 + 16;
  v103 = v4;
  v124 = (v4 + 8);
  v107 = v21;
  result = sub_231369EE0();
  v27 = 0;
  v122 = 0;
  *&v28 = 136315650;
  v102 = v28;
  v104 = v7;
  v114 = v14;
  v117 = v3;
  while (v25)
  {
    v29 = v14;
    v30 = v27;
LABEL_11:
    v121 = (v25 - 1) & v25;
    v32 = __clz(__rbit64(v25)) | (v30 << 6);
    v33 = v107;
    v34 = v106;
    v35 = v105;
    (*(v106 + 16))(v105, *(v107 + 48) + *(v106 + 72) * v32, v7);
    v36 = *(*(v33 + 56) + 8 * v32);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44830, &qword_2313762C0);
    v38 = *(v37 + 48);
    v39 = *(v34 + 32);
    v40 = v116;
    v39(v116, v35, v7);
    *(v40 + v38) = v36;
    v31 = v40;
    __swift_storeEnumTagSinglePayload(v40, 0, 1, v37);
LABEL_12:
    v41 = v31;
    v42 = v112;
    sub_2312EEA7C(v41, v112);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44830, &qword_2313762C0);
    if (__swift_getEnumTagSinglePayload(v42, 1, v43) == 1)
    {

      sub_231369EE0();
      return sub_231366E50();
    }

    v44 = *(v42 + *(v43 + 48));
    v14 = v29;
    (*v118)(v29, v42, v7);
    v45 = v111[3];
    v46 = v111[4];
    __swift_project_boxed_opaque_existential_1(v111, v45);
    v47 = sub_2312546AC(v45, v46);
    MEMORY[0x28223BE20](v47);
    *(&v98 - 2) = v29;
    v48 = v122;
    sub_231254C78(sub_2312EEAEC, (&v98 - 4), v49);
    v51 = v50;
    v122 = v48;
    if (qword_280F7C920 != -1)
    {
      swift_once();
    }

    v52 = sub_2313698C0();
    v53 = __swift_project_value_buffer(v52, qword_280F7C928);
    v54 = v110;
    v108 = *v119;
    v108(v110, v29, v7);
    v55 = v117;

    sub_231369EE0();
    v109 = v53;
    v56 = sub_2313698A0();
    v57 = sub_23136A3A0();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = v51;
      v59 = v7;
      v60 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v127[0] = v115;
      *v60 = v102;
      *(v60 + 4) = sub_2311CFD58(v55[2], v55[3], v127);
      *(v60 + 12) = 2048;
      *(v60 + 14) = *(v58 + 16);

      *(v60 + 22) = 2080;
      sub_2312EEB0C(&qword_280F7CA40, MEMORY[0x277D60BA8], MEMORY[0x277D60BD8]);
      v61 = sub_23136A8B0();
      v62 = v54;
      v64 = v63;
      v120 = *v123;
      v120(v62, v59);
      v65 = sub_2311CFD58(v61, v64, v127);

      *(v60 + 24) = v65;
      _os_log_impl(&dword_2311CB000, v56, v57, "[%s] Found %ld previous %s suggestions", v60, 0x20u);
      v66 = v115;
      swift_arrayDestroy();
      MEMORY[0x23192B930](v66, -1, -1);
      v67 = v60;
      v7 = v59;
      v51 = v58;
      v14 = v114;
      MEMORY[0x23192B930](v67, -1, -1);
    }

    else
    {

      v120 = *v123;
      v120(v54, v7);
    }

    v68 = *(v51 + 16);
    if (v68)
    {
      v127[0] = MEMORY[0x277D84F90];
      sub_2311F5B90(0, v68, 0);
      v69 = v127[0];
      v70 = *(v103 + 80);
      v115 = v51;
      v71 = v51 + ((v70 + 32) & ~v70);
      v72 = *(v103 + 72);
      v73 = *(v103 + 16);
      do
      {
        v74 = v126;
        v73(v6, v71, v126);
        sub_231368050();
        v76 = v75;
        (*v124)(v6, v74);
        v127[0] = v69;
        v78 = *(v69 + 16);
        v77 = *(v69 + 24);
        if (v78 >= v77 >> 1)
        {
          sub_2311F5B90(v77 > 1, v78 + 1, 1);
          v69 = v127[0];
        }

        *(v69 + 16) = v78 + 1;
        *(v69 + 8 * v78 + 32) = v76;
        v71 += v72;
        --v68;
      }

      while (v68);

      v55 = v117;
      v7 = v104;
      v14 = v114;
    }

    else
    {

      v69 = MEMORY[0x277D84F90];
    }

    v79 = COERCE_DOUBLE(sub_2312EAB04(v69));
    v81 = v80;

    v25 = v121;
    if ((v81 & 1) == 0)
    {
      v82 = v44 * 3600.0;
      __swift_project_boxed_opaque_existential_1(v55 + 4, v55[7]);
      sub_231368F20();
      if (v82 >= v83 - v79)
      {
        v85 = v99;
        v108(v99, v14, v7);

        v86 = sub_2313698A0();
        v87 = sub_23136A3A0();

        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v127[0] = v89;
          *v88 = 134218498;
          *(v88 + 4) = v82;
          v90 = v85;
          *(v88 + 12) = 2080;
          sub_2312EEB0C(&qword_280F7CA40, MEMORY[0x277D60BA8], MEMORY[0x277D60BD8]);
          v91 = v87;
          v92 = sub_23136A8B0();
          v94 = v93;
          v95 = v120;
          v120(v90, v104);
          v96 = sub_2311CFD58(v92, v94, v127);
          v7 = v104;

          *(v88 + 14) = v96;
          *(v88 + 22) = 2080;
          *(v88 + 24) = sub_2311CFD58(v55[2], v55[3], v127);
          _os_log_impl(&dword_2311CB000, v86, v91, "Has not passed suppressionWindowPeriod %f since last %s suggestion. Returning false for policy %s", v88, 0x20u);
          swift_arrayDestroy();
          v97 = v89;
          v14 = v114;
          MEMORY[0x23192B930](v97, -1, -1);
          MEMORY[0x23192B930](v88, -1, -1);
        }

        else
        {

          v95 = v120;
          v120(v85, v7);
        }

        sub_231369EE0();
        sub_231366E50();

        return v95(v14, v7);
      }
    }

    result = (v120)(v14, v7);
  }

  v31 = v116;
  while (1)
  {
    v30 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v30 >= v101)
    {
      v29 = v14;
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44830, &qword_2313762C0);
      __swift_storeEnumTagSinglePayload(v31, 1, 1, v84);
      v121 = 0;
      goto LABEL_12;
    }

    v25 = *(v113 + 8 * v30);
    ++v27;
    if (v25)
    {
      v29 = v14;
      v27 = v30;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2312ED734(uint64_t a1, uint64_t a2)
{
  v3 = sub_231368260();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v14 - v8;
  sub_231368060();
  v10 = sub_231367D80();
  (*(*(v10 - 8) + 16))(v6, a2, v10);
  (*(v4 + 104))(v6, *MEMORY[0x277D60E30], v3);
  v11 = sub_231368240();
  v12 = *(v4 + 8);
  v12(v6, v3);
  v12(v9, v3);
  return v11 & 1;
}

uint64_t sub_2312ED8C0()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return v0;
}

uint64_t sub_2312ED8F0()
{
  sub_2312ED8C0();

  return swift_deallocClassInstance();
}

uint64_t sub_2312ED968(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 16) = 0xD00000000000002ALL;
  *(v1 + 24) = 0x8000000231380E10;
  *(v1 + 32) = *a1;
  *(v1 + 48) = v2;
  return OUTLINED_FUNCTION_0_3();
}

uint64_t sub_2312ED998@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  v94 = a1;
  v81 = a2;
  v2 = sub_231367D80();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v86 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v80 = &v79 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v79 - v8;
  MEMORY[0x28223BE20](v10);
  v87 = &v79 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44828, &qword_2313762B8);
  MEMORY[0x28223BE20](v12 - 8);
  v95 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v99 = (&v79 - v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44838, &qword_2313762C8);
  v16 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44840, &unk_2313762D0) - 8);
  v17 = (*(*v16 + 80) + 32) & ~*(*v16 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_23136B670;
  v19 = v18 + v17;
  v20 = v16[14];
  v21 = *MEMORY[0x277D607E0];
  v22 = sub_231367020();
  (*(*(v22 - 8) + 104))(v19, v21, v22);
  (*(v3 + 104))(v19, *MEMORY[0x277D60BA0], v2);
  *(v19 + v20) = 2;
  sub_2312EEB0C(&qword_280F7CA58, MEMORY[0x277D60BA8], MEMORY[0x277D60BB8]);
  v23 = sub_231369EC0();
  v25 = 0;
  v27 = v23 + 64;
  v26 = *(v23 + 64);
  v88 = v3;
  v89 = v23;
  v28 = 1 << *(v23 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v26;
  v31 = (v28 + 63) >> 6;
  v97 = (v3 + 16);
  v98 = (v3 + 32);
  v92 = (v3 + 8);
  v93 = 0x800000023137DF00;
  *&v24 = 136315138;
  v83 = v24;
  v90 = v31;
  v91 = v23 + 64;
  v96 = v9;
  if ((v29 & v26) == 0)
  {
LABEL_5:
    v33 = v95;
    v34 = &qword_27DD44830;
    while (1)
    {
      v32 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v32 >= v31)
      {
        v45 = v2;
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44830, &qword_2313762C0);
        __swift_storeEnumTagSinglePayload(v33, 1, 1, v65);
        v30 = 0;
        goto LABEL_11;
      }

      v30 = *(v27 + 8 * v32);
      ++v25;
      if (v30)
      {
        v25 = v32;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  while (1)
  {
    v32 = v25;
LABEL_10:
    v35 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v36 = v35 | (v32 << 6);
    v38 = v88;
    v37 = v89;
    v39 = v87;
    (*(v88 + 16))(v87, *(v89 + 48) + *(v88 + 72) * v36, v2);
    v40 = *(*(v37 + 56) + 8 * v36);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44830, &qword_2313762C0);
    v42 = *(v41 + 48);
    v43 = *(v38 + 32);
    v33 = v95;
    v44 = v39;
    v45 = v2;
    v43(v95, v44, v2);
    *(v33 + v42) = v40;
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v41);
LABEL_11:
    v46 = v99;
    sub_2312EEA7C(v33, v99);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44830, &qword_2313762C0);
    if (__swift_getEnumTagSinglePayload(v46, 1, v47) == 1)
    {

      sub_231369EE0();
      return sub_231366E50();
    }

    v34 = *(v99 + *(v47 + 48));
    v2 = v45;
    (*v98)(v9);
    v101 = 0;
    v102 = 0xE000000000000000;
    sub_23136A650();

    v101 = 0xD000000000000020;
    v102 = v93;
    v48 = sub_231367D40();
    MEMORY[0x23192A730](v48);

    v49 = v101;
    v50 = v102;
    v51 = v94[3];
    v52 = v94[4];
    __swift_project_boxed_opaque_existential_1(v94, v51);
    (*(v52 + 8))(&v101, v49, v50, v51, v52);

    if (!v103)
    {
      sub_231228E9C(&v101, &qword_27DD443C0, &unk_23136E000);
LABEL_18:
      v9 = v96;
      v53 = v86;
      if (qword_280F7C920 != -1)
      {
        swift_once();
      }

      v54 = sub_2313698C0();
      __swift_project_value_buffer(v54, qword_280F7C928);
      (*v97)(v53, v9, v2);
      v55 = sub_2313698A0();
      v56 = sub_23136A3A0();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v101 = v85;
        *v57 = v83;
        sub_2312EEB0C(&qword_280F7CA40, MEMORY[0x277D60BA8], MEMORY[0x277D60BD8]);
        v58 = sub_23136A8B0();
        v59 = v53;
        v61 = v60;
        v84 = *v92;
        v84(v59, v2);
        v62 = sub_2311CFD58(v58, v61, &v101);

        *(v57 + 4) = v62;
        _os_log_impl(&dword_2311CB000, v55, v56, "Not able to get the siriInitiatedActionCount, likely because Siri has not delivered with vehicle %s before. Continuing", v57, 0xCu);
        v63 = v85;
        __swift_destroy_boxed_opaque_existential_1Tm(v85);
        v9 = v96;
        MEMORY[0x23192B930](v63, -1, -1);
        MEMORY[0x23192B930](v57, -1, -1);

        v84(v9, v2);
      }

      else
      {

        v64 = *v92;
        (*v92)(v53, v2);
        v64(v9, v2);
      }

      goto LABEL_23;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_18;
    }

    v9 = (v100 - 1);
    if (__OFSUB__(v100, 1))
    {
      goto LABEL_33;
    }

    if (v9 < v34)
    {
      break;
    }

    v9 = v96;
    (*v92)(v96, v2);
LABEL_23:
    v31 = v90;
    v27 = v91;
    if (!v30)
    {
      goto LABEL_5;
    }
  }

  if (qword_280F7C920 != -1)
  {
LABEL_34:
    swift_once();
  }

  v67 = sub_2313698C0();
  __swift_project_value_buffer(v67, qword_280F7C928);
  v68 = v80;
  (*v97)(v80, v96, v2);

  v69 = sub_2313698A0();
  v70 = sub_23136A3A0();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v101 = v99;
    *v71 = 136315906;
    sub_2312EEB0C(&qword_280F7CA40, MEMORY[0x277D60BA8], MEMORY[0x277D60BD8]);
    v72 = sub_23136A8B0();
    v73 = v68;
    v75 = v74;
    v76 = *v92;
    (*v92)(v73, v2);
    v77 = sub_2311CFD58(v72, v75, &v101);

    *(v71 + 4) = v77;
    *(v71 + 12) = 2048;
    *(v71 + 14) = v9;
    *(v71 + 22) = 2048;
    *(v71 + 24) = v34;
    *(v71 + 32) = 2080;
    *(v71 + 34) = sub_2311CFD58(*(v82 + 16), *(v82 + 24), &v101);
    _os_log_impl(&dword_2311CB000, v69, v70, "Siri initiated actions count since last %s (not including current instance) is %ld, which is less than %ld.\nReturning false for policy %s", v71, 0x2Au);
    v78 = v99;
    swift_arrayDestroy();
    MEMORY[0x23192B930](v78, -1, -1);
    MEMORY[0x23192B930](v71, -1, -1);
  }

  else
  {

    v76 = *v92;
    (*v92)(v68, v2);
  }

  sub_231369EE0();
  sub_231366E50();

  return (v76)(v96, v2);
}

uint64_t sub_2312EE4A0()
{

  return v0;
}

uint64_t sub_2312EE4C8()
{
  sub_2312EE4A0();

  return swift_deallocClassInstance();
}

uint64_t sub_2312EE540(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v6 = sub_2313697F0();
  v8 = v7;
  type metadata accessor for RankedCandidateSuggestion(0);
  v9 = a3[3];
  v10 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v9);
  sub_231330C6C(v9, v10);
  v11 = COERCE_DOUBLE(sub_231369810());
  LOBYTE(v9) = v12;

  if (v9)
  {
    if (qword_280F7C920 != -1)
    {
      swift_once();
    }

    v13 = sub_2313698C0();
    __swift_project_value_buffer(v13, qword_280F7C928);

    sub_231369EE0();
    v14 = sub_2313698A0();
    v15 = sub_23136A3A0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26[0] = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_2311CFD58(*(v4 + 16), *(v4 + 24), v26);
      *(v16 + 12) = 2080;
      v18 = sub_2311CFD58(v6, v8, v26);

      *(v16 + 14) = v18;
      _os_log_impl(&dword_2311CB000, v14, v15, "%s failed to get score from engagement estimator with model %s, returning true", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23192B930](v17, -1, -1);
      MEMORY[0x23192B930](v16, -1, -1);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v20 = *(v4 + 40);
  if (qword_280F7C920 != -1)
  {
    swift_once();
  }

  v21 = sub_2313698C0();
  __swift_project_value_buffer(v21, qword_280F7C928);

  sub_231369EE0();
  v14 = sub_2313698A0();
  v22 = sub_23136A3A0();

  if (!os_log_type_enabled(v14, v22))
  {
LABEL_6:

    goto LABEL_7;
  }

  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v26[0] = v24;
  *v23 = 136316162;
  *(v23 + 4) = sub_2311CFD58(*(v4 + 16), *(v4 + 24), v26);
  *(v23 + 12) = 2080;
  v25 = sub_2311CFD58(v6, v8, v26);

  *(v23 + 14) = v25;
  *(v23 + 22) = 2048;
  *(v23 + 24) = v11;
  *(v23 + 32) = 2048;
  *(v23 + 34) = v20;
  *(v23 + 42) = 1024;
  *(v23 + 44) = v20 < v11;
  _os_log_impl(&dword_2311CB000, v14, v22, "%s using model %s score: %f > threshold: %f? %{BOOL}d", v23, 0x30u);
  swift_arrayDestroy();
  MEMORY[0x23192B930](v24, -1, -1);
  MEMORY[0x23192B930](v23, -1, -1);
LABEL_7:

  sub_231369EE0();

  return sub_231366E50();
}

uint64_t sub_2312EE96C()
{

  return v0;
}

uint64_t sub_2312EE994()
{
  sub_2312EE96C();

  return swift_deallocClassInstance();
}

uint64_t sub_2312EEA0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2312EEA7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44828, &qword_2313762B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2312EEB0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_5_24(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_2312EEB78(uint64_t *a1)
{
  v2 = *(sub_231367B30() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2311E65EC(v3, v4, v5, v6);
    v3 = v7;
  }

  v8 = *(v3 + 16);
  v9[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v9[1] = v8;
  sub_2312EF800(v9);
  *a1 = v3;
}

uint64_t sub_2312EEC38(uint64_t result, uint64_t a2, void (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 16);
    result = sub_2312F0B88(0, result, v5);
    if (v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = result;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      sub_2312F0AD8(0, v7, a2, a3);
      OUTLINED_FUNCTION_1_37();
      return OUTLINED_FUNCTION_2_24();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2312EECB4(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_23136A070();
    sub_23136A0F0();
    OUTLINED_FUNCTION_1_37();
    return OUTLINED_FUNCTION_2_24();
  }

  return result;
}

uint64_t sub_2312EED54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437A0, &qword_23136DB10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23136B670;
  v1 = sub_231367D20();
  *(v0 + 56) = v1;
  OUTLINED_FUNCTION_0_34();
  *(v0 + 64) = sub_2312EF7B8(v2, 255, v3, MEMORY[0x277D60B60]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 32));
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D60B50], v1);
  return v0;
}

uint64_t sub_2312EEE20(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C08, &unk_2313708B0);
  v3[17] = swift_task_alloc();
  v4 = sub_2313698C0();
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312EEF18, 0, 0);
}

uint64_t sub_2312EEF18()
{
  v32 = v0;
  __swift_project_boxed_opaque_existential_1(*(v0 + 120), *(*(v0 + 120) + 24));
  v1 = sub_2313683D0();
  sub_231369150();
  sub_231369EE0();
  v2 = sub_2313698A0();
  v3 = sub_23136A3A0();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v7 = *(v0 + 144);
  if (v4)
  {
    v30 = *(v0 + 160);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31[0] = v9;
    *v8 = 136315138;
    v10 = sub_231367B30();
    v11 = MEMORY[0x23192A860](v1, v10);
    v13 = sub_2311CFD58(v11, v12, v31);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_2311CB000, v2, v3, "Apps on-screen: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x23192B930](v9, -1, -1);
    MEMORY[0x23192B930](v8, -1, -1);

    (*(v5 + 8))(v30, v7);
  }

  else
  {

    (*(v5 + 8))(v6, v7);
  }

  v31[0] = v1;
  sub_231369EE0();
  sub_2312EEB78(v31);

  v14 = sub_2312EEC38(1, v31[0], MEMORY[0x277D60AA0]);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  if (v19)
  {
    sub_23136A930();
    swift_unknownObjectRetain_n();
    v21 = swift_dynamicCastClass();
    if (!v21)
    {
      swift_unknownObjectRelease();
      v21 = MEMORY[0x277D84F90];
    }

    v22 = *(v21 + 16);

    if (__OFSUB__(v20 >> 1, v18))
    {
      __break(1u);
    }

    else if (v22 == (v20 >> 1) - v18)
    {
      v23 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v23)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    swift_unknownObjectRelease();
  }

  sub_2312593AC(v14, v16, v18, v20);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v24 = *(v0 + 128);
  *(v0 + 168) = sub_23136A1F0();

  sub_2311CF324(v24 + 16, v0 + 16);
  type metadata accessor for FallbackSignalHelper();
  *(v0 + 176) = swift_initStackObject();
  sub_231369EE0();
  v25 = swift_task_alloc();
  *(v0 + 184) = v25;
  *v25 = v0;
  v25[1] = sub_2312EF28C;
  OUTLINED_FUNCTION_7();

  return sub_2312C4274(v26, v27);
}