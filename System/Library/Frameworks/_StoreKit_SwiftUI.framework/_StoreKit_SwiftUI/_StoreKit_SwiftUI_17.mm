uint64_t sub_23BB0A034()
{
  OUTLINED_FUNCTION_3_13();
  v1 = v0[119];
  v2 = sub_23BBDCB38();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {

    sub_23B979910(v1, &qword_27E19A710, &qword_23BBEA740);

    return MEMORY[0x282200920](v0 + 2);
  }

  else
  {
    sub_23B979910(v1, &qword_27E19A710, &qword_23BBEA740);
    v3 = swift_task_alloc();
    v0[164] = v3;
    *v3 = v0;
    v3[1] = sub_23BB0A164;
    v4 = v0[146];
    v5 = v0[145];

    return MEMORY[0x28212C730](v5, v4);
  }
}

uint64_t sub_23BB0A164()
{
  OUTLINED_FUNCTION_4_11();
  v3 = v2;
  OUTLINED_FUNCTION_21_4();
  v5 = v4;
  OUTLINED_FUNCTION_7_17();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_18();
  *v8 = v7;
  v5[165] = v0;

  if (v0)
  {
    v9 = v5[138];
    v10 = v5[137];
    v11 = sub_23BB0AB58;
  }

  else
  {
    v5[166] = v3;
    v9 = v5[138];
    v10 = v5[137];
    v11 = sub_23BB0A280;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_23BB0A280()
{
  OUTLINED_FUNCTION_4_11();
  v1 = *(v0 + 1328);
  v2 = OUTLINED_FUNCTION_49_0();
  v4 = sub_23BB0B228(v2, v3);

  if (v4)
  {
    *(v0 + 872) = v1;
    *(v0 + 880) = 1;

    OUTLINED_FUNCTION_0_46();
    swift_task_alloc();
    OUTLINED_FUNCTION_20_4();
    *(v0 + 1336) = v5;
    *v5 = v6;
    OUTLINED_FUNCTION_19_19(v5);
  }

  else
  {
    OUTLINED_FUNCTION_24_13();
    OUTLINED_FUNCTION_0_46();
    swift_task_alloc();
    OUTLINED_FUNCTION_20_4();
    *(v0 + 1344) = v7;
    *v7 = v8;
    OUTLINED_FUNCTION_10_18(v7);
  }

  OUTLINED_FUNCTION_15_21();

  return v9();
}

uint64_t sub_23BB0A3CC()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_1_18();
  *v2 = v0;
  *v2 = *v1;

  OUTLINED_FUNCTION_43_0();
  sub_23B9CEC50(*(v3 + 872), *(v0 + 880));
  OUTLINED_FUNCTION_43_0();
  v5 = *(v4 + 1104);
  v6 = *(v0 + 1096);

  return MEMORY[0x2822009F8](sub_23BB0A4F4, v6, v5);
}

uint64_t sub_23BB0A4F4()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_24_13();
  OUTLINED_FUNCTION_0_46();
  swift_task_alloc();
  OUTLINED_FUNCTION_20_4();
  *(v0 + 1344) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_10_18(v1);
  OUTLINED_FUNCTION_15_21();

  return v3();
}

uint64_t sub_23BB0A590()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_1_18();
  *v2 = v0;
  *v2 = *v1;

  OUTLINED_FUNCTION_43_0();
  sub_23B9CEC50(*(v3 + 856), *(v0 + 864));
  OUTLINED_FUNCTION_43_0();
  v5 = *(v4 + 1104);
  v6 = *(v0 + 1096);

  return MEMORY[0x2822009F8](sub_23BB0A6B8, v6, v5);
}

uint64_t sub_23BB0A6B8()
{
  OUTLINED_FUNCTION_3_13();

  v0 = OUTLINED_FUNCTION_17_0();

  return MEMORY[0x2822009F8](v0, v1, 0);
}

uint64_t sub_23BB0A720()
{
  OUTLINED_FUNCTION_25_8();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_20_14(isUniquelyReferenced_nonNull_native);
  *(v1 + 120) = v9;
  swift_endAccess();
  v0[162] = v0[166];
  OUTLINED_FUNCTION_13_25(&qword_23BBEA738);
  v8 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_4();
  v0[163] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_1_49(v4);

  return v8(v6);
}

uint64_t sub_23BB0A804()
{
  v1 = v0[132];
  v2 = v0[131];
  v3 = v0[130];

  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_21_16();

  v4 = v0[1];

  return v4();
}

uint64_t sub_23BB0A8D8()
{
  OUTLINED_FUNCTION_3_13();
  v1 = *(v0 + 1248);
  *(v0 + 824) = v1;
  *(v0 + 832) = 0;
  v2 = v1;
  OUTLINED_FUNCTION_0_46();
  swift_task_alloc();
  OUTLINED_FUNCTION_20_4();
  *(v0 + 1352) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_19_19(v3);
  OUTLINED_FUNCTION_15_21();

  return v5();
}

uint64_t sub_23BB0A9A0()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_1_18();
  *v2 = v0;
  *v2 = *v1;

  OUTLINED_FUNCTION_43_0();
  sub_23B9CEC50(*(v3 + 824), *(v0 + 832));
  OUTLINED_FUNCTION_43_0();
  v5 = *(v4 + 1104);
  v6 = *(v0 + 1096);

  return MEMORY[0x2822009F8](sub_23BB0AAC8, v6, v5);
}

uint64_t sub_23BB0AAC8()
{
  OUTLINED_FUNCTION_3_13();

  v1 = *(v0 + 1176);
  *(v0 + 1288) = *(v0 + 1232);
  *(v0 + 1296) = v1;
  OUTLINED_FUNCTION_13_25(&qword_23BBEA738);
  v7 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_4();
  *(v0 + 1304) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_1_49(v3);

  return v7(v5);
}

uint64_t sub_23BB0AB58()
{
  OUTLINED_FUNCTION_3_13();
  v1 = *(v0 + 1320);
  *(v0 + 840) = v1;
  *(v0 + 848) = 0;
  v2 = v1;
  OUTLINED_FUNCTION_0_46();
  swift_task_alloc();
  OUTLINED_FUNCTION_20_4();
  *(v0 + 1360) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_19_19(v3);
  OUTLINED_FUNCTION_15_21();

  return v5();
}

uint64_t sub_23BB0AC20()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_1_18();
  *v2 = v0;
  *v2 = *v1;

  OUTLINED_FUNCTION_43_0();
  sub_23B9CEC50(*(v3 + 840), *(v0 + 848));
  OUTLINED_FUNCTION_43_0();
  v5 = *(v4 + 1104);
  v6 = *(v0 + 1096);

  return MEMORY[0x2822009F8](sub_23BB0AD48, v6, v5);
}

uint64_t sub_23BB0AD48()
{
  OUTLINED_FUNCTION_3_13();

  OUTLINED_FUNCTION_13_25(&qword_23BBEA738);
  v6 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_4();
  *(v0 + 1304) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_49(v2);

  return v6(v4);
}

uint64_t sub_23BB0ADC8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_23BBDC758();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A5D8, &qword_23BBFC110);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23BB0AEC4, 0, 0);
}

uint64_t sub_23BB0AEC4()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  sub_23BBDCAE8();
  sub_23BBDC798();
  sub_23B979910(v1, &qword_27E19A5D8, &qword_23BBFC110);
  v6 = sub_23BBDC738();
  v8 = v7;
  (*(v3 + 8))(v2, v4);
  v9 = _s16TaskViewModifierVMa_0(0);
  if (v8)
  {
    v10 = (v5 + *(v9 + 20));
    if (v6 == *v10 && v8 == v10[1])
    {
      v12 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_17_0();
      v12 = sub_23BBDDA88();
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v0[1];

  return v13(v12 & 1);
}

uint64_t sub_23BB0B000(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_23BB0B020, 0, 0);
}

uint64_t sub_23BB0B020()
{
  OUTLINED_FUNCTION_3_13();
  v1 = *(v0 + 24);
  v2 = (v1 + *(_s16TaskViewModifierVMa_0(0) + 20));
  v4 = *v2;
  v3 = v2[1];
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_23BB0B0CC;

  return MEMORY[0x28212C730](v4, v3);
}

uint64_t sub_23BB0B0CC()
{
  OUTLINED_FUNCTION_4_11();
  v3 = v2;
  OUTLINED_FUNCTION_21_4();
  v5 = v4;
  OUTLINED_FUNCTION_7_17();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_18();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 40) = v3;

    return MEMORY[0x2822009F8](sub_23BB0B204, 0, 0);
  }
}

uint64_t sub_23BB0B228(uint64_t a1, char *a2)
{
  v130 = a2;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A09A0, &qword_23BBFC0F8);
  MEMORY[0x28223BE20](v136);
  v4 = &v120 - v3;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A09A8, &unk_23BBFC100);
  MEMORY[0x28223BE20](v139);
  v6 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v122 = &v120 - v8;
  MEMORY[0x28223BE20](v9);
  v138 = &v120 - v10;
  MEMORY[0x28223BE20](v11);
  v137 = &v120 - v12;
  v13 = sub_23BBDCA18();
  v135 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v120 - v17;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A6F8, &qword_23BBEA720);
  MEMORY[0x28223BE20](v144);
  v146 = &v120 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A5D8, &qword_23BBFC110);
  MEMORY[0x28223BE20](v20);
  v22 = &v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v123 = &v120 - v24;
  MEMORY[0x28223BE20](v25);
  v143 = &v120 - v26;
  MEMORY[0x28223BE20](v27);
  v142 = &v120 - v28;
  v145 = sub_23BBDC758();
  v132 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v140 = &v120 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v120 - v31;
  v149 = sub_23BBDCA48();
  v133 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v148 = &v120 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v147 = &v120 - v35;
  v151 = sub_23BBDCB38();
  v36 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v153 = &v120 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v152 = &v120 - v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A09B0, &qword_23BBFC118);
  MEMORY[0x28223BE20](a1);
  v150 = &v120 - v41;
  if (!a1 || *(v40 + 16) != *(v130 + 2))
  {
    return 1;
  }

  v121 = v22;
  v125 = v18;
  v126 = v15;
  v120 = v6;
  v128 = v13;
  v141 = v4;
  v154 = v40;
  v155 = 0;
  v134 = (v36 + 32);
  ++v133;
  v131 = (v132 + 4);
  ++v132;
  v156 = v130;
  v157 = 0;
  v124 = (v135 + 4);
  v129 = (v135 + 1);
  v135 = (v36 + 8);
  v158 = 0;

  v127 = v20;
  v130 = v32;
  v42 = v152;
  while (1)
  {
    v43 = v150;
    sub_23BB07E90(v150);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A09B8, &qword_23BBFC120);
    if (__swift_getEnumTagSinglePayload(v43, 1, v44) == 1)
    {

      return 0;
    }

    v45 = *(v44 + 48);
    v46 = *v134;
    v47 = v151;
    (*v134)(v42, v43, v151);
    v48 = v153;
    v46(v153, v43 + v45, v47);
    v49 = v147;
    sub_23BBDCAF8();
    v50 = v148;
    sub_23BBDCAF8();
    sub_23BB0C724(&qword_27E1A09C0, MEMORY[0x277CDD1F8], MEMORY[0x277CDD200]);
    v51 = v149;
    LOBYTE(v45) = sub_23BBDCF38();
    v52 = *v133;
    (*v133)(v50, v51);
    v52(v49, v51);
    if ((v45 & 1) == 0)
    {
      v102 = *v135;
      v103 = v151;
      (*v135)(v48, v151);
      (v102)(v42, v103);
LABEL_22:

      return 1;
    }

    v53 = v142;
    sub_23BBDCAE8();
    v54 = v143;
    sub_23BBDCAE8();
    v55 = v146;
    v56 = v146 + *(v144 + 48);
    sub_23B9A71D0(v53, v146, &qword_27E19A5D8, &qword_23BBFC110);
    sub_23B9A71D0(v54, v56, &qword_27E19A5D8, &qword_23BBFC110);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v57 = v123;
      sub_23B9A721C(v55, v123, &qword_27E19A5D8, &qword_23BBFC110);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v59 = v145;
      if (EnumCaseMultiPayload == 1)
      {
        v60 = *v131;
        (*v131)(v32, v57, v145);
        v61 = v140;
        v60(v140, v56, v59);
        goto LABEL_11;
      }

      v109 = *v135;
      v110 = v151;
      (*v135)(v153, v151);
      (v109)(v42, v110);

LABEL_25:
      (*v132)(v57, v59);
      v111 = &qword_27E19A6F8;
      v112 = &qword_23BBEA720;
      v113 = v55;
      goto LABEL_29;
    }

    v57 = v121;
    sub_23B9A721C(v55, v121, &qword_27E19A5D8, &qword_23BBFC110);
    v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A700, &qword_23BBEA728) + 48);
    v63 = swift_getEnumCaseMultiPayload();
    v59 = v145;
    if (v63 == 1)
    {
      v106 = *v135;
      v107 = v151;
      (*v135)(v153, v151);
      (v106)(v42, v107);

      v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A708, &qword_23BBEA730);
      (*(*(v108 - 8) + 8))(v57 + v62, v108);
      goto LABEL_25;
    }

    v64 = *v131;
    (*v131)(v32, v57, v145);
    v61 = v140;
    v64(v140, v56, v59);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A708, &qword_23BBEA730);
    v66 = *(*(v65 - 8) + 8);
    v66(v56 + v62, v65);
    v32 = v130;
    v66(v57 + v62, v65);
LABEL_11:
    sub_23B979910(v55, &qword_27E19A5D8, &qword_23BBFC110);
    v67 = sub_23BBDC718();
    v69 = v68;
    v70 = *v132;
    (*v132)(v32, v59);
    v71 = sub_23BBDC718();
    v73 = v72;
    v70(v61, v59);
    LOBYTE(v70) = MEMORY[0x23EEB1FC0](v67, v69, v71, v73);
    sub_23B9A940C(v71, v73);
    v74 = sub_23B9A940C(v67, v69);
    if ((v70 & 1) == 0)
    {
      v104 = *v135;
      v105 = v151;
      (*v135)(v153, v151, v74);
      (v104)(v152, v105);
      goto LABEL_22;
    }

    v75 = v137;
    sub_23BBDCAD8();
    v76 = v138;
    v77 = v153;
    sub_23BBDCAD8();
    v78 = v141;
    v79 = &v141[*(v136 + 48)];
    sub_23B9A71D0(v75, v141, &qword_27E1A09A8, &unk_23BBFC100);
    sub_23B9A71D0(v76, v79, &qword_27E1A09A8, &unk_23BBFC100);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    v80 = v122;
    sub_23B9A721C(v78, v122, &qword_27E1A09A8, &unk_23BBFC100);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v114 = *v135;
      v115 = v77;
      v116 = v151;
      (*v135)(v115, v151);
      (v114)(v152, v116);
      v85 = v122;

      goto LABEL_28;
    }

    v81 = *v124;
    v82 = v125;
    v83 = v128;
    (*v124)(v125, v80, v128);
    v84 = v126;
    v81(v126, v79, v83);
LABEL_17:
    sub_23B979910(v78, &qword_27E1A09A8, &unk_23BBFC100);
    v91 = sub_23BBDC9E8();
    v93 = v92;
    v94 = *v129;
    (*v129)(v82, v83);
    v95 = sub_23BBDC9E8();
    v97 = v96;
    v94(v84, v83);
    LOBYTE(v94) = MEMORY[0x23EEB1FC0](v91, v93, v95, v97);
    sub_23B9A940C(v95, v97);
    v98 = sub_23B9A940C(v91, v93);
    v99 = *v135;
    v100 = v151;
    (*v135)(v153, v151, v98);
    v42 = v152;
    (v99)(v152, v100);
    if ((v94 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v85 = v120;
  sub_23B9A721C(v78, v120, &qword_27E1A09A8, &unk_23BBFC100);
  v86 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A09C8, &qword_23BBFC128) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v87 = *v124;
    v82 = v125;
    v83 = v128;
    (*v124)(v125, v85, v128);
    v84 = v126;
    v87(v126, v79, v83);
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A09D0, &unk_23BBFC130);
    v89 = *(*(v88 - 8) + 8);
    v89(v79 + v86, v88);
    v90 = v85 + v86;
    v32 = v130;
    v89(v90, v88);
    v78 = v141;
    goto LABEL_17;
  }

  v117 = *v135;
  v118 = v151;
  (*v135)(v153, v151);
  (v117)(v152, v118);

  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A09D0, &unk_23BBFC130);
  (*(*(v119 - 8) + 8))(v85 + v86, v119);
LABEL_28:
  (*v129)(v85, v128);
  v111 = &qword_27E1A09A0;
  v112 = &qword_23BBFC0F8;
  v113 = v78;
LABEL_29:
  sub_23B979910(v113, v111, v112);
  return 1;
}

uint64_t sub_23BB0C200(uint64_t a1, uint64_t a2)
{
  v4 = _s16TaskViewModifierVMa_0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BB0C268(uint64_t a1, uint64_t a2)
{
  v4 = _s16TaskViewModifierVMa_0(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BB0C2CC()
{
  OUTLINED_FUNCTION_3_13();
  v2 = *(_s16TaskViewModifierVMa_0(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_4();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_23BB0C390;

  return sub_23BB087F4(v0 + v3);
}

uint64_t sub_23BB0C390()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v1 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t objectdestroyTm_10()
{
  v1 = (_s16TaskViewModifierVMa_0(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_23BBDD368();
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(v2);

  v4 = v1[9];
  sub_23BBDC5F8();
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 8))(v2 + v4);
  sub_23B97B450(*(v2 + v1[10]), *(v2 + v1[10] + 8));

  return swift_deallocObject();
}

uint64_t sub_23BB0C5B8()
{
  OUTLINED_FUNCTION_4_11();
  v3 = v2;
  v4 = *(_s16TaskViewModifierVMa_0(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23B9F36B4;

  return sub_23BB0ADC8(v3, v0 + v5);
}

uint64_t sub_23BB0C68C()
{
  OUTLINED_FUNCTION_3_13();
  v3 = v2;
  v4 = *(v0 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_4();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_23BB0C390;

  return sub_23BB0B000(v3, v4);
}

uint64_t sub_23BB0C724(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23BB0C770()
{
  result = qword_27E1A09D8;
  if (!qword_27E1A09D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0980, &unk_23BBFC0A0);
    sub_23B97B518(qword_27E1A09E0, &qword_27E1A0988, &unk_23BBFC0B0, MEMORY[0x277CE04B0]);
    sub_23B97B518(qword_27E19A738, &qword_27E19A690, &qword_23BBEA6A8, MEMORY[0x277CDDEB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A09D8);
  }

  return result;
}

double OUTLINED_FUNCTION_12_23(uint64_t a1)
{

  return result;
}

void OUTLINED_FUNCTION_20_14(uint64_t a1)
{

  sub_23BBCC0AC(v1, v3, v2);
}

uint64_t OUTLINED_FUNCTION_21_16()
{
}

uint64_t OUTLINED_FUNCTION_22_15()
{
  *(v1 + 4) = v2;
  *(v1 + 12) = 2082;
  return v0;
}

double OUTLINED_FUNCTION_24_13()
{
  *(v0 + 856) = *(v0 + 1328);
  *(v0 + 864) = 1;

  return result;
}

void sub_23BB0CA08(uint64_t a1)
{
  sub_23BB0CCEC(319, &qword_27E1A0A68, MEMORY[0x277CDD330], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23B975E04();
    if (v2 <= 0x3F)
    {
      sub_23BB0CC9C();
      if (v3 <= 0x3F)
      {
        sub_23BB0CCEC(319, &qword_27E199C90, MEMORY[0x277CC9788], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_23BB0CD50(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_23BB0CB50(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E4F8, qword_23BBFC140);
    v9 = a1 + *(a3 + 48);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_23BB0CBF8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E4F8, qword_23BBFC140);
    v8 = v5 + *(a4 + 48);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_23BB0CC9C()
{
  if (!qword_27E1991A0)
  {
    v0 = sub_23BBD9C18();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1991A0);
    }
  }
}

void sub_23BB0CCEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_23BB0CD50(uint64_t a1)
{
  if (!qword_27E1A0A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0A78, qword_23BBFD1A0);
    v1 = sub_23BBD9C18();
    if (!v2)
    {
      atomic_store(v1, &qword_27E1A0A70);
    }
  }
}

uint64_t sub_23BB0CDF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = swift_getKeyPath();
  v11 = type metadata accessor for StoreStaticView(0, a5, a6, v10);
  *(a7 + 40) = 0u;
  *(a7 + 56) = 0u;
  *(a7 + 72) = 0;
  v12 = *(v11 + 48);
  *(a7 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996A8, &unk_23BBE8170);
  swift_storeEnumTagMultiPayload();
  v13 = a7 + *(v11 + 52);
  result = swift_getKeyPath();
  *v13 = result;
  *(v13 + 8) = 0;
  return result;
}

uint64_t sub_23BB0CEBC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0, &unk_23BBE5E10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199D08, &qword_23BBE8F80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  sub_23BAC74B0(*v1, v5);
  v9 = sub_23BBDCDB8();
  if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
  {
    sub_23B979910(v5, &qword_27E1987F0, &unk_23BBE5E10);
    v10 = sub_23BBD9848();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v10);
    sub_23B9B75B4();
    result = __swift_getEnumTagSinglePayload(v8, 1, v10);
    if (result != 1)
    {
      return sub_23B979910(v8, qword_27E199D08, &qword_23BBE8F80);
    }
  }

  else
  {
    MEMORY[0x23EEB50B0]();
    (*(*(v9 - 8) + 8))(v5, v9);
    v12 = sub_23BBD9848();
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v12);
    return (*(*(v12 - 8) + 32))(a1, v8, v12);
  }

  return result;
}

uint64_t sub_23BB0D0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v95 = a1;
  v2 = a1 - 8;
  v94 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v92 = v3;
  OUTLINED_FUNCTION_13_3(&v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = sub_23BBD9848();
  OUTLINED_FUNCTION_7();
  v90 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13_3(&v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + 24);
  v7 = *(v2 + 32);
  KeyPath = v8;
  v129 = MEMORY[0x277CE1428];
  v130 = v7;
  v131 = MEMORY[0x277CE1410];
  type metadata accessor for ProductView(255, &KeyPath);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0A80, &qword_23BBFC1E0);
  OUTLINED_FUNCTION_4();
  sub_23BBDACE8();
  sub_23BBDBE28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0A88, &unk_23BBFC1E8);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  sub_23BBDA358();
  v102 = v8;
  v101 = v7;
  type metadata accessor for StoreStaticListView(255, v8, v7, v9);
  sub_23BBDACE8();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_23B97B518(&qword_27E1A0A90, &qword_27E1A0A80, &qword_23BBFC1E0, &protocol conformance descriptor for ProductView<A, B>);
  v126 = WitnessTable;
  v127 = v11;
  v125 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_4();
  v12 = swift_getWitnessTable();
  OUTLINED_FUNCTION_9_23();
  v15 = sub_23B97B518(v13, &qword_27E1A0A88, &unk_23BBFC1E8, v14);
  v123 = v12;
  v124 = v15;
  v121 = swift_getWitnessTable();
  v122 = MEMORY[0x277CDFC60];
  v16 = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_27();
  v17 = swift_getWitnessTable();
  v119 = v16;
  v120 = v17;
  swift_getWitnessTable();
  v18 = sub_23BBDC098();
  OUTLINED_FUNCTION_7();
  v20 = v19;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v21);
  v23 = &v83 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199CE8, &unk_23BBE8F40);
  v104 = v18;
  sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v87 = v24;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_13_3(&v83 - v26);
  v103 = v27;
  v28 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_13_3(&v83 - v35);
  v36 = sub_23BBDACE8();
  OUTLINED_FUNCTION_7();
  v98 = v37;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_13_3(&v83 - v39);
  v41 = v96;
  if (*(*v96 + 16))
  {
    v85 = v30;
    v42 = MEMORY[0x28223BE20](v40);
    v86 = v36;
    v43 = v101;
    *(&v83 - 4) = v102;
    *(&v83 - 3) = v43;
    *(&v83 - 2) = v41;
    sub_23B9C2924(v42);
    sub_23BBDC088();
    swift_getKeyPath();
    v44 = v89;
    v45 = v95;
    sub_23BB0CEBC(v89);
    OUTLINED_FUNCTION_11_7();
    v46 = v104;
    v84 = swift_getWitnessTable();
    sub_23BBDB748();

    OUTLINED_FUNCTION_13_16();
    v47(v44, v91);
    (*(v20 + 8))(v23, v46);
    v48 = v94;
    v49 = v93;
    (*(v94 + 16))(v93, v41, v45);
    v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v51 = swift_allocObject();
    v52 = v101;
    *(v51 + 16) = v102;
    *(v51 + 24) = v52;
    v53 = v49;
    v54 = v103;
    (*(v48 + 32))(v51 + v50, v53, v45);
    OUTLINED_FUNCTION_1_15();
    v59 = sub_23B97B518(v55, v56, v57, v58);
    v117 = v84;
    v118 = v59;
    OUTLINED_FUNCTION_10_5();
    v60 = swift_getWitnessTable();
    v61 = v100;
    sub_23BBDBBF8();
    v36 = v86;

    OUTLINED_FUNCTION_13_16();
    v62(v61, v54);
    v115 = v60;
    v63 = MEMORY[0x277CE0790];
    v116 = MEMORY[0x277CE0790];
    swift_getWitnessTable();
    v64 = v88;
    sub_23B9D2D88();
    v65 = *(v85 + 8);
    v65(v33, v28);
    sub_23B9D2D88();
    sub_23BA8BE58();
    v66 = v97;
    sub_23BA82E14();
    v65(v33, v28);
    v65(v64, v28);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    LOBYTE(v129) = 0;
    sub_23BA8BE58();
    OUTLINED_FUNCTION_11_7();
    v67 = swift_getWitnessTable();
    OUTLINED_FUNCTION_1_15();
    v72 = sub_23B97B518(v68, v69, v70, v71);
    v107 = v67;
    v108 = v72;
    OUTLINED_FUNCTION_10_5();
    v105 = swift_getWitnessTable();
    v63 = MEMORY[0x277CE0790];
    v106 = MEMORY[0x277CE0790];
    swift_getWitnessTable();
    v66 = v97;
    sub_23BA82D64();
  }

  v73 = sub_23BA8BE58();
  OUTLINED_FUNCTION_11_7();
  v74 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_15();
  v79 = sub_23B97B518(v75, v76, v77, v78);
  v113 = v74;
  v114 = v79;
  v111 = swift_getWitnessTable();
  v112 = v63;
  v80 = swift_getWitnessTable();
  v109 = v73;
  v110 = v80;
  OUTLINED_FUNCTION_2_7();
  swift_getWitnessTable();
  sub_23B9D2D88();
  OUTLINED_FUNCTION_13_16();
  return v81(v66, v36);
}

uint64_t sub_23BB0DAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X8>)
{
  v95 = a4;
  *&v135 = a2;
  *(&v135 + 1) = MEMORY[0x277CE1428];
  v136 = a3;
  v137 = MEMORY[0x277CE1410];
  v7 = type metadata accessor for ProductView(255, &v135);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0A80, &qword_23BBFC1E0);
  v98 = v7;
  v8 = sub_23BBDACE8();
  v9 = sub_23BBDBE28();
  v81 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v80 = &v75 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0A88, &unk_23BBFC1E8);
  v94 = v9;
  v11 = sub_23BBDA358();
  v83 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v82 = &v75 - v12;
  v93 = v13;
  v14 = sub_23BBDA358();
  v85 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v84 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  *&v89 = &v75 - v17;
  v88 = sub_23BBDA928();
  *&v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0, &unk_23BBE5E10);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v75 - v20;
  v22 = sub_23BBDCDB8();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = a2;
  v79 = a3;
  v27 = type metadata accessor for StoreStaticListView(255, a2, a3, v26);
  v96 = v14;
  v97 = v27;
  v28 = sub_23BBDACE8();
  v91 = *(v28 - 8);
  v92 = v28;
  MEMORY[0x28223BE20](v28);
  v90 = &v75 - v29;
  v30 = *a1;
  sub_23BAC74B0(*a1, v21);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v22);
  v99 = v8;
  if (EnumTagSinglePayload == 1)
  {
    sub_23B979910(v21, &qword_27E1987F0, &unk_23BBE5E10);
  }

  else
  {
    (*(v23 + 32))(v25, v21, v22);
    if (*(v30 + 16) == 1)
    {
      v76 = v22;
      v77 = v25;
      v75 = v23;
      v32 = *(a1 + 32);
      v33 = *(a1 + 40);
      v35 = *(a1 + 48);
      v34 = *(a1 + 56);
      v36 = *(a1 + 64);
      if (*(a1 + 72) == 1)
      {
        *&v135 = *(a1 + 32);
        *(&v135 + 1) = v33;
        v136 = v35;
        v137 = v34;
        v138 = v36;
      }

      else
      {

        sub_23BBDD5A8();
        v55 = sub_23BBDB338();
        sub_23BBD9978();

        v56 = v86;
        sub_23BBDA918();
        swift_getAtKeyPath();
        v57 = sub_23B9AD3D4(v32, v33, v35, v34, v36, 0);
        (*(v87 + 8))(v56, v88, v57);
      }

      v58 = v93;
      v59 = v96;

      v60 = v136;

      if (v60 == &type metadata for AutomaticProductViewStyle)
      {
        MEMORY[0x28223BE20](v61);
        WitnessTable = swift_getWitnessTable();
        v63 = sub_23B97B518(&qword_27E1A0A90, &qword_27E1A0A80, &qword_23BBFC1E0, &protocol conformance descriptor for ProductView<A, B>);
        v105 = WitnessTable;
        v106 = v63;
        v64 = swift_getWitnessTable();
        v65 = v80;
        sub_23BBDBE18();
        v104 = v64;
        v66 = v94;
        v67 = swift_getWitnessTable();
        v68 = sub_23BB10684();
        v69 = v82;
        View.productViewStyle<A>(_:)(v68, v66, &type metadata for LargeProductViewStyle, v67, v68);
        (*(v81 + 8))(v65, v66);
        v70 = sub_23B97B518(&qword_27E1A0A98, &qword_27E1A0A88, &unk_23BBFC1E8, &unk_23BC05E30);
        v102 = v67;
        v103 = v70;
        v74 = swift_getWitnessTable();
        sub_23B9C2924(v71);
        v72 = v84;
        sub_23BBDBB18();
        (*(v83 + 8))(v69, v58);
        v100 = v74;
        v45 = MEMORY[0x277CDFC60];
        v101 = MEMORY[0x277CDFC60];
        swift_getWitnessTable();
        sub_23B9D2D88();
        v96 = *(v85 + 8);
        v96(v72, v59);
        sub_23B9D2D88();
        swift_getWitnessTable();
        v46 = v90;
        sub_23BA82D64();
        v73 = v96;
        v96(v72, v59);
        v73(v89, v59);
        (*(v75 + 8))(v77, v76);
        goto LABEL_8;
      }

      (*(v75 + 8))(v77, v76);
    }

    else
    {
      (*(v23 + 8))(v25, v22);
    }
  }

  v38 = *(a1 + 8);
  v37 = *(a1 + 16);
  v39 = *(a1 + 24);

  v143 = sub_23B9BE5CC(0) & 1;
  *v144 = *v140;
  *&v144[3] = *&v140[3];
  v145 = v40;
  v142 = v30;
  *&v128 = v30;
  *(&v128 + 1) = v38;
  v129 = v37;
  v130 = v39;
  *v131 = *v141;
  *&v131[3] = *&v141[3];
  v132 = v143;
  *&v133[3] = *&v140[3];
  *v133 = *v140;
  v134 = v40;
  swift_getWitnessTable();
  sub_23B9D2D88();
  sub_23B979910(&v142, &qword_27E197AF8, &unk_23BBFC260);

  sub_23B979910(&v143, &qword_27E199078, &unk_23BBEF500);
  v88 = v136;
  v93 = v139;
  v89 = v135;
  v123 = v135;
  v124 = v136;
  v125 = v137;
  v126 = v138;
  v127 = v139;
  sub_23B9D2D88();
  v87 = v128;
  v123 = v128;
  v124 = v129;
  v125 = v130;
  v126 = v132;
  v127 = v134;
  v41 = swift_getWitnessTable();
  v42 = sub_23B97B518(&qword_27E1A0A90, &qword_27E1A0A80, &qword_23BBFC1E0, &protocol conformance descriptor for ProductView<A, B>);
  v121 = v41;
  v122 = v42;
  v120 = swift_getWitnessTable();
  v43 = swift_getWitnessTable();
  v44 = sub_23B97B518(&qword_27E1A0A98, &qword_27E1A0A88, &unk_23BBFC1E8, &unk_23BC05E30);
  v118 = v43;
  v119 = v44;
  v116 = swift_getWitnessTable();
  v45 = MEMORY[0x277CDFC60];
  v117 = MEMORY[0x277CDFC60];
  swift_getWitnessTable();
  v46 = v90;
  sub_23BA82E14();

LABEL_8:
  v47 = swift_getWitnessTable();
  v48 = sub_23B97B518(&qword_27E1A0A90, &qword_27E1A0A80, &qword_23BBFC1E0, &protocol conformance descriptor for ProductView<A, B>);
  v114 = v47;
  v115 = v48;
  v113 = swift_getWitnessTable();
  v49 = swift_getWitnessTable();
  v50 = sub_23B97B518(&qword_27E1A0A98, &qword_27E1A0A88, &unk_23BBFC1E8, &unk_23BC05E30);
  v111 = v49;
  v112 = v50;
  v109 = swift_getWitnessTable();
  v110 = v45;
  v51 = swift_getWitnessTable();
  v52 = swift_getWitnessTable();
  v107 = v51;
  v108 = v52;
  v53 = v92;
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (*(v91 + 8))(v46, v53);
}

uint64_t sub_23BB0E838@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0A80, &qword_23BBFC1E0);
  MEMORY[0x28223BE20](v9);
  v35 = &v35 - v10;
  v11 = sub_23BBDCDB8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a3;
  v45[0] = a3;
  v45[1] = MEMORY[0x277CE1428];
  v38 = a4;
  v45[2] = a4;
  v45[3] = MEMORY[0x277CE1410];
  v15 = type metadata accessor for ProductView(0, v45);
  v36 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v35 - v19;
  v41 = v9;
  v21 = sub_23BBDACE8();
  v22 = *(v21 - 8);
  v39 = v21;
  v40 = v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v35 - v24;
  v26 = a1;
  LODWORD(a1) = *(a1 + 24);
  v27 = (*(v12 + 16))(v14, a2, v11, v23);
  if (a1 == 1)
  {
    MEMORY[0x28223BE20](v27);
    v28 = v38;
    *(&v35 - 4) = v37;
    *(&v35 - 3) = v28;
    *(&v35 - 2) = v26;
    *(&v35 - 1) = a2;
    ProductView.init<>(_:prefersPromotionalIcon:icon:)();
    swift_getWitnessTable();
    sub_23B9D2D88();
    v29 = *(v36 + 8);
    v29(v17, v15);
    sub_23B9D2D88();
    sub_23B97B518(&qword_27E1A0A90, &qword_27E1A0A80, &qword_23BBFC1E0, &protocol conformance descriptor for ProductView<A, B>);
    sub_23BA82D64();
    v29(v17, v15);
    v29(v20, v15);
  }

  else
  {
    v30 = v35;
    ProductView.init<>(_:prefersPromotionalIcon:)();
    swift_getWitnessTable();
    sub_23B97B518(&qword_27E1A0A90, &qword_27E1A0A80, &qword_23BBFC1E0, &protocol conformance descriptor for ProductView<A, B>);
    sub_23BA82E14();
    sub_23B979910(v30, &qword_27E1A0A80, &qword_23BBFC1E0);
  }

  WitnessTable = swift_getWitnessTable();
  v32 = sub_23B97B518(&qword_27E1A0A90, &qword_27E1A0A80, &qword_23BBFC1E0, &protocol conformance descriptor for ProductView<A, B>);
  v43 = WitnessTable;
  v44 = v32;
  v33 = v39;
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (*(v40 + 8))(v25, v33);
}

uint64_t sub_23BB0ED14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v15 - v9;
  (*(v11 + 8))(v12, v8);
  sub_23B9D2D88();
  v13 = *(v4 + 8);
  v13(v6, a3);
  sub_23B9D2D88();
  return (v13)(v10, a3);
}

uint64_t sub_23BB0EE4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  result = sub_23B9BE5CC(0);
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = result & 1;
  *(a5 + 40) = v11;
  return result;
}

double sub_23BB0EEAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BBDA928();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + *(type metadata accessor for StoreStaticView(0, a2, a3, v10) + 52);
  v12 = *v11;
  v13 = *(v11 + 8);

  if ((v13 & 1) == 0)
  {
    sub_23BBDD5A8();
    v15 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(v12);
    (*(v7 + 8))(v9, v6);
    v14 = v20;
  }

  if (v14)
  {
    v16 = v14 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_productsLoaded;
    *v16 = *(*a1 + 16);
    *(v16 + 8) = 0;
  }

  if ((v13 & 1) == 0)
  {
    sub_23BBDD5A8();
    v18 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(v12);
    (*(v7 + 8))(v9, v6);
    v12 = v20;
  }

  if (v12)
  {
    sub_23B99BD60();
  }

  return result;
}

uint64_t sub_23BB0F114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for StoreStaticView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = v4 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));

  sub_23B9AD3D4(*(v6 + 32), *(v6 + 40), *(v6 + 48), *(v6 + 56), *(v6 + 64), *(v6 + 72));
  v7 = *(v5 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996A8, &unk_23BBE8170);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23BBD9848();
    OUTLINED_FUNCTION_4_1();
    (*(v8 + 8))(v6 + v7);
  }

  else
  {
  }

  j__swift_release(*(v6 + *(v5 + 52)));

  return swift_deallocObject();
}

double sub_23BB0F268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for StoreStaticView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_23BB0EEAC(v8, v5, v6);
}

uint64_t sub_23BB0F2EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0B28, &unk_23BBFC380);
  v5 = sub_23BBDCDB8();
  v6 = *(a1 + 24);
  v52 = *(a1 + 16);
  v51 = v6;
  *&v63 = v52;
  *(&v63 + 1) = MEMORY[0x277CE1428];
  v64 = v6;
  v65 = MEMORY[0x277CE1410];
  type metadata accessor for ProductView(255, &v63);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0A80, &qword_23BBFC1E0);
  OUTLINED_FUNCTION_4();
  v7 = sub_23BBDACE8();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_23B97B518(&qword_27E1A0A90, &qword_27E1A0A80, &qword_23BBFC1E0, &protocol conformance descriptor for ProductView<A, B>);
  v67 = WitnessTable;
  v68 = v9;
  OUTLINED_FUNCTION_2_7();
  swift_getWitnessTable();
  v10 = OUTLINED_FUNCTION_4();
  v13 = type metadata accessor for StoreListItemWrapperView(v10, v7, v11, v12);
  OUTLINED_FUNCTION_10_17();
  v16 = sub_23B97B518(v14, &qword_27E1A0B28, &unk_23BBFC380, v15);
  v17 = sub_23BB10A68();
  *&v63 = v4;
  *(&v63 + 1) = v5;
  v64 = v13;
  v65 = v16;
  v66 = v17;
  sub_23BBDC1A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0, &qword_23BBF2AB0);
  OUTLINED_FUNCTION_4();
  v18 = sub_23BBDA358();
  OUTLINED_FUNCTION_12_24();
  v62 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_18();
  v19 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_15();
  v60 = v19;
  v61 = sub_23B97B518(v20, &qword_27E19A1E0, &qword_23BBF2AB0, v21);
  v50 = MEMORY[0x277CDFAD8];
  v22 = swift_getWitnessTable();
  v24 = type metadata accessor for StoreListWrapperView(0, v18, v22, v23);
  OUTLINED_FUNCTION_7();
  v48 = v25;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v26);
  v28 = &v48 - v27;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0B38, &qword_23BBFC390);
  v29 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v49 = v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v48 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v48 - v35;
  v37 = v52;
  v38 = v51;
  v54 = v52;
  v55 = v51;
  v56 = v2;
  sub_23BACE83C(sub_23BB10AC0, v18, v22, v28);
  v69 = *v2;
  v63 = *(v2 + 2);
  v39 = swift_allocObject();
  *(v39 + 16) = v37;
  *(v39 + 24) = v38;
  v40 = *(v2 + 1);
  *(v39 + 32) = *v2;
  *(v39 + 48) = v40;
  *(v39 + 64) = *(v2 + 2);
  sub_23B99FCE0(&v69, v59, &qword_27E197AF8, &unk_23BBFC260);

  sub_23B99FCE0(&v63, v59, &qword_27E199078, &unk_23BBEF500);
  OUTLINED_FUNCTION_7_36();
  v41 = swift_getWitnessTable();
  sub_23BA76524(sub_23BB10AD0, v39, v24, v41);

  OUTLINED_FUNCTION_13_16();
  v42(v28, v24);
  OUTLINED_FUNCTION_7_11();
  v45 = sub_23B97B518(v43, &qword_27E1A0B38, &qword_23BBFC390, v44);
  v57 = v41;
  v58 = v45;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v46 = *(v49 + 8);
  v46(v33, v29);
  sub_23B9D2D88();
  return (v46)(v36, v29);
}

uint64_t sub_23BB0F7DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a3;
  v39 = a2;
  v41 = a4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0B28, &unk_23BBFC380);
  v7 = sub_23BBDCDB8();
  *&v47 = a2;
  *(&v47 + 1) = MEMORY[0x277CE1428];
  v48 = a3;
  v49 = MEMORY[0x277CE1410];
  type metadata accessor for ProductView(255, &v47);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0A80, &qword_23BBFC1E0);
  v8 = sub_23BBDACE8();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_23B97B518(&qword_27E1A0A90, &qword_27E1A0A80, &qword_23BBFC1E0, &protocol conformance descriptor for ProductView<A, B>);
  v51 = WitnessTable;
  v52 = v10;
  v11 = swift_getWitnessTable();
  v33 = type metadata accessor for StoreListItemWrapperView(255, v8, v11, v12);
  v35 = sub_23B97B518(&qword_27E1A0B30, &qword_27E1A0B28, &unk_23BBFC380, MEMORY[0x277D83980]);
  v34 = sub_23BB10A68();
  *&v47 = v36;
  *(&v47 + 1) = v7;
  v48 = v33;
  v49 = v35;
  v50 = v34;
  v13 = sub_23BBDC1A8();
  v37 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0, &qword_23BBF2AB0);
  v16 = sub_23BBDA358();
  v40 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v33 - v20;
  sub_23BB9A884(*a1);
  v46 = v22;
  swift_getKeyPath();
  v47 = *(a1 + 2);
  v23 = swift_allocObject();
  v24 = v38;
  *(v23 + 16) = v39;
  *(v23 + 24) = v24;
  v25 = *(a1 + 1);
  *(v23 + 32) = *a1;
  *(v23 + 48) = v25;
  *(v23 + 64) = *(a1 + 2);

  sub_23B99FCE0(&v47, &v45, &qword_27E199078, &unk_23BBEF500);
  v32 = swift_getWitnessTable();
  sub_23BBDC188();
  v45 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078, &unk_23BBEF500);
  sub_23BBDBF68();
  v26 = v46;
  v44 = v32;
  v27 = swift_getWitnessTable();
  v28 = sub_23BA75AAC(v26, v13, v27);
  (*(v37 + 8))(v15, v13, v28);
  v29 = sub_23B97B518(&qword_27E19A1D8, &qword_27E19A1E0, &qword_23BBF2AB0, MEMORY[0x277CE0868]);
  v42 = v27;
  v43 = v29;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v30 = *(v40 + 8);
  v30(v18, v16);
  sub_23B9D2D88();
  return (v30)(v21, v16);
}

uint64_t sub_23BB0FCD4@<X0>(void *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a4;
  v31 = a3;
  v29 = a2;
  v32 = a5;
  v40[0] = a3;
  v40[1] = MEMORY[0x277CE1428];
  v40[2] = a4;
  v40[3] = MEMORY[0x277CE1410];
  type metadata accessor for ProductView(255, v40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0A80, &qword_23BBFC1E0);
  v6 = sub_23BBDACE8();
  WitnessTable = swift_getWitnessTable();
  v39 = sub_23B97B518(&qword_27E1A0A90, &qword_27E1A0A80, &qword_23BBFC1E0, &protocol conformance descriptor for ProductView<A, B>);
  v28 = v6;
  v27 = swift_getWitnessTable();
  v8 = type metadata accessor for StoreListItemWrapperView(0, v6, v27, v7);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0B48, &qword_23BC03AC0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v27 - v17;
  v19 = sub_23BBDCDB8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B99FCE0(a1, v18, &qword_27E1A0B48, &qword_23BC03AC0);
  (*(v20 + 32))(v22, &v18[*(v16 + 56)], v19);
  v23 = *a1 != *(*v29 + 16) - 1;
  v24 = v29[24];
  v34 = v31;
  v35 = v30;
  v36 = v29;
  v37 = v22;
  sub_23BACF3B4(v23, v24, sub_23BB10B30, v28, v27, v11, v33);
  swift_getWitnessTable();
  sub_23B9D2D88();
  v25 = *(v9 + 8);
  v25(v11, v8);
  sub_23B9D2D88();
  v25(v14, v8);
  return (*(v20 + 8))(v22, v19);
}

uint64_t sub_23BB10074@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0A80, &qword_23BBFC1E0);
  MEMORY[0x28223BE20](v9);
  v35 = &v35 - v10;
  v11 = sub_23BBDCDB8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a3;
  v45[0] = a3;
  v45[1] = MEMORY[0x277CE1428];
  v38 = a4;
  v45[2] = a4;
  v45[3] = MEMORY[0x277CE1410];
  v15 = type metadata accessor for ProductView(0, v45);
  v36 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v35 - v19;
  v41 = v9;
  v21 = sub_23BBDACE8();
  v22 = *(v21 - 8);
  v39 = v21;
  v40 = v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v35 - v24;
  v26 = a1;
  LOBYTE(a1) = a1[24];
  v27 = (*(v12 + 16))(v14, a2, v11, v23);
  if (a1)
  {
    MEMORY[0x28223BE20](v27);
    v28 = v38;
    *(&v35 - 4) = v37;
    *(&v35 - 3) = v28;
    *(&v35 - 2) = v26;
    *(&v35 - 1) = a2;
    ProductView.init<>(_:prefersPromotionalIcon:icon:)();
    swift_getWitnessTable();
    sub_23B9D2D88();
    v29 = *(v36 + 8);
    v29(v17, v15);
    sub_23B9D2D88();
    sub_23B97B518(&qword_27E1A0A90, &qword_27E1A0A80, &qword_23BBFC1E0, &protocol conformance descriptor for ProductView<A, B>);
    sub_23BA82D64();
    v29(v17, v15);
    v29(v20, v15);
  }

  else
  {
    v30 = v35;
    ProductView.init<>(_:prefersPromotionalIcon:)();
    swift_getWitnessTable();
    sub_23B97B518(&qword_27E1A0A90, &qword_27E1A0A80, &qword_23BBFC1E0, &protocol conformance descriptor for ProductView<A, B>);
    sub_23BA82E14();
    sub_23B979910(v30, &qword_27E1A0A80, &qword_23BBFC1E0);
  }

  WitnessTable = swift_getWitnessTable();
  v32 = sub_23B97B518(&qword_27E1A0A90, &qword_27E1A0A80, &qword_23BBFC1E0, &protocol conformance descriptor for ProductView<A, B>);
  v43 = WitnessTable;
  v44 = v32;
  v33 = v39;
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (*(v40 + 8))(v25, v33);
}

uint64_t sub_23BB105F0@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x23EEB2E70]();
  *a1 = result;
  return result;
}

uint64_t sub_23BB1061C@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x23EEB2E70]();
  *a1 = result;
  return result;
}

unint64_t sub_23BB10684()
{
  result = qword_27E1A0AA0[0];
  if (!qword_27E1A0AA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E1A0AA0);
  }

  return result;
}

uint64_t sub_23BB106F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23BB10730(void *a1)
{
  v2 = a1[1];
  v9[0] = *a1;
  v1 = v9[0];
  v9[1] = MEMORY[0x277CE1428];
  v9[2] = v2;
  v9[3] = MEMORY[0x277CE1410];
  type metadata accessor for ProductView(255, v9);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0A80, &qword_23BBFC1E0);
  OUTLINED_FUNCTION_4();
  sub_23BBDACE8();
  sub_23BBDBE28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0A88, &unk_23BBFC1E8);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  sub_23BBDA358();
  type metadata accessor for StoreStaticListView(255, v1, v2, v3);
  sub_23BBDACE8();
  swift_getWitnessTable();
  sub_23B97B518(&qword_27E1A0A90, &qword_27E1A0A80, &qword_23BBFC1E0, &protocol conformance descriptor for ProductView<A, B>);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_23();
  sub_23B97B518(v4, &qword_27E1A0A88, &unk_23BBFC1E8, v5);
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_27();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDC098();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199CE8, &unk_23BBE8F40);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDACE8();
  sub_23BA8BE58();
  OUTLINED_FUNCTION_11_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_15();
  sub_23B97B518(v6, &qword_27E199CE8, &unk_23BBE8F40, v7);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_23BB10A68()
{
  result = qword_27E1A04E8;
  if (!qword_27E1A04E8)
  {
    sub_23BBDCDB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A04E8);
  }

  return result;
}

uint64_t objectdestroy_20Tm()
{

  return swift_deallocObject();
}

uint64_t sub_23BB10B3C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0B28, &unk_23BBFC380);
  v4 = sub_23BBDCDB8();
  v25 = v1;
  v26 = MEMORY[0x277CE1428];
  v27 = v2;
  v28 = MEMORY[0x277CE1410];
  type metadata accessor for ProductView(255, &v25);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0A80, &qword_23BBFC1E0);
  OUTLINED_FUNCTION_4();
  v5 = sub_23BBDACE8();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_23B97B518(&qword_27E1A0A90, &qword_27E1A0A80, &qword_23BBFC1E0, &protocol conformance descriptor for ProductView<A, B>);
  v30 = WitnessTable;
  v31 = v7;
  OUTLINED_FUNCTION_2_7();
  swift_getWitnessTable();
  v8 = OUTLINED_FUNCTION_4();
  v11 = type metadata accessor for StoreListItemWrapperView(v8, v5, v9, v10);
  OUTLINED_FUNCTION_10_17();
  v14 = sub_23B97B518(v12, &qword_27E1A0B28, &unk_23BBFC380, v13);
  v15 = sub_23BB10A68();
  v25 = v3;
  v26 = v4;
  v27 = v11;
  v28 = v14;
  v29 = v15;
  sub_23BBDC1A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0, &qword_23BBF2AB0);
  OUTLINED_FUNCTION_4();
  v16 = sub_23BBDA358();
  OUTLINED_FUNCTION_12_24();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_18();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_15();
  sub_23B97B518(v17, &qword_27E19A1E0, &qword_23BBF2AB0, v18);
  swift_getWitnessTable();
  v19 = OUTLINED_FUNCTION_4();
  type metadata accessor for StoreListWrapperView(v19, v16, v20, v21);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0B38, &qword_23BBFC390);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  OUTLINED_FUNCTION_7_36();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_11();
  sub_23B97B518(v22, &qword_27E1A0B38, &qword_23BBFC390, v23);
  return swift_getWitnessTable();
}

uint64_t sub_23BB10E20(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BBDC208();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_23BB10E7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BBDC208();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t type metadata accessor for SubscriptionOptionGroupAccessorySubview(uint64_t a1)
{
  result = qword_27E1A0B78;
  if (!qword_27E1A0B78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BB10F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  KeyPath = swift_getKeyPath();
  v13[3] = a3;
  v13[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_23BB1106C(KeyPath, v13, a2, a4);

  return sub_23B9B754C(v13);
}

double sub_23BB10FDC(char a1, char a2, uint64_t a3, uint64_t a4)
{
  KeyPath = swift_getKeyPath();
  if (a2)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  v11 = v9 & 0xFFFE | a1 & 1;
  sub_23BB1106C(KeyPath, &v11, a3, a4);

  return result;
}

uint64_t sub_23BB1106C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v7 = *(*a1 + *MEMORY[0x277D84308] + 8);
  OUTLINED_FUNCTION_3_2();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v13 = sub_23BBDB2A8();
  OUTLINED_FUNCTION_3_2();
  v15 = v14;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v21 - v18);
  (*(v9 + 16))(v12, a2, v7, v17);
  sub_23BB117C8(a1, v12, v19);

  MEMORY[0x23EEB43C0](v19, a3, v13, v21);
  return (*(v15 + 8))(v19, v13);
}

BOOL sub_23BB11230()
{
  v0 = sub_23BBDA288();
  OUTLINED_FUNCTION_3_2();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BBDC1D8();
  sub_23B9B7448();
  sub_23BBDA298();
  (*(v2 + 8))(v5, v0);
  return (v9 & 0x100) == 0 && v9 != 2;
}

uint64_t sub_23BB11368(char a1)
{
  sub_23BBDDBB8();
  MEMORY[0x23EEB63A0](a1 & 1);
  sub_23BBDDBD8();
  return sub_23BBDDBF8();
}

uint64_t sub_23BB113F4(uint64_t a1)
{
  v2 = *v1;
  sub_23BBDDBB8();
  MEMORY[0x23EEB63A0](v2);
  sub_23BBDDBD8();
  return sub_23BBDDBF8();
}

BOOL sub_23BB11450(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (a2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_23BB11320(v2 | *a1, v3 | *a2);
}

uint64_t sub_23BB11480()
{
  sub_23B9B7448();
  sub_23BBDA298();
  return v1;
}

void *sub_23BB114BC()
{
  sub_23B9B74F8();

  return sub_23BBDA298();
}

uint64_t sub_23BB11550(uint64_t a1)
{
  *(a1 + 8) = sub_23BB115D4(&qword_27E1A0B88, type metadata accessor for SubscriptionOptionGroupAccessorySubview, &unk_23BBFC458);
  result = sub_23BB115D4(&qword_27E19F0F8, type metadata accessor for SubscriptionOptionGroupAccessorySubview, &unk_23BBFC408);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23BB115D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_23BB11628(__int16 a1)
{
  sub_23B9B7448();
  sub_23BBDA2A8();
  return result;
}

double sub_23BB11664()
{
  qword_27E1A0B70 = 0;
  result = 0.0;
  xmmword_27E1A0B50 = 0u;
  unk_27E1A0B60 = 0u;
  return result;
}

uint64_t sub_23BB1167C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E1977F8 != -1)
  {
    swift_once();
  }

  return sub_23BB118A8(&xmmword_27E1A0B50, a1);
}

uint64_t sub_23BB116E8(uint64_t a1)
{
  sub_23BB118A8(a1, v3);
  sub_23B9B74F8();
  sub_23BBDA2A8();
  return sub_23B9B754C(a1);
}

uint64_t sub_23BB1173C@<X0>(_WORD *a1@<X8>)
{
  result = sub_23BB11480();
  *a1 = result;
  return result;
}

uint64_t sub_23BB117C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  v6 = *a1;
  *a3 = a1;
  v7 = *(v6 + *MEMORY[0x277D84308] + 8);
  v8 = sub_23BBDB2A8();
  v9 = *(*(v7 - 8) + 32);
  v10 = a3 + *(v8 + 28);

  return v9(v10, a2, v7);
}

uint64_t sub_23BB118A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199658, &unk_23BBE8120);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t storeEnumTagSinglePayload for SubscriptionOptionGroupAccessorySubview.Context(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x23BB11A04);
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

unint64_t sub_23BB11A40()
{
  result = qword_27E1A0B90;
  if (!qword_27E1A0B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0B90);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SubscriptionOptionGroupAccessorySubview.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23BB11B60);
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

unint64_t sub_23BB11B9C()
{
  result = qword_27E1A0B98;
  if (!qword_27E1A0B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0B98);
  }

  return result;
}

id sub_23BB11C5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InvalidRequestServerError();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_23BB11CB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InvalidRequestServerError();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_23BB11D30()
{
  v1 = type metadata accessor for SubscriptionStoreControlConfigurationSection(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B70, &qword_23BBFC930);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  v11 = *(v0 + 16);
  swift_getKeyPath();
  v12 = *(v11 + 16);

  v13 = 0;
  v14 = 0;
  while (v13 == v12)
  {
    v15 = 1;
    v13 = v12;
LABEL_7:
    __swift_storeEnumTagSinglePayload(v10, v15, 1, v1);
    sub_23BB18E50(v10, v7);
    if (__swift_getEnumTagSinglePayload(v7, 1, v1) == 1)
    {
      goto LABEL_11;
    }

    sub_23BB1A408(v7, v4, type metadata accessor for SubscriptionStoreControlConfigurationSection);
    swift_getAtKeyPath();
    sub_23BB1A0E4();
    v16 = __OFADD__(v14, v18);
    v14 += v18;
    if (v16)
    {
      __break(1u);
LABEL_11:

      return;
    }
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    if (v13 >= *(v11 + 16))
    {
      goto LABEL_13;
    }

    sub_23BB1A134(v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v13, v10, type metadata accessor for SubscriptionStoreControlConfigurationSection);
    v15 = 0;
    ++v13;
    goto LABEL_7;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t sub_23BB11F90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23BA8CE60(*a1);
  *a2 = result;
  return result;
}

void sub_23BB120B0()
{
  OUTLINED_FUNCTION_10_0();
  v64 = v3;
  v4 = OUTLINED_FUNCTION_0_7();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  v7 = OUTLINED_FUNCTION_13_0(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_1();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_72_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_1();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v64 - v19;
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_6_22(v2);
  if (v29)
  {
    sub_23B9846E8(v2, &qword_27E198900, &qword_23BBE6280);
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
    }

    v21 = type metadata accessor for SKLogger(0);
    OUTLINED_FUNCTION_16_3(v21, qword_27E1BFC88);
    v22 = sub_23BBD9988();
    if (OUTLINED_FUNCTION_13_4(v22))
    {
      OUTLINED_FUNCTION_44_4();
      v66 = OUTLINED_FUNCTION_5_5();
      v23 = OUTLINED_FUNCTION_98_0(4.8752e-34);
      OUTLINED_FUNCTION_22_16(v23);
      *(v20 + 14) = OUTLINED_FUNCTION_86_0();
      OUTLINED_FUNCTION_18_4(&dword_23B970000, v24, v25, "%{public}s%{public}s");
      OUTLINED_FUNCTION_85_0();
      OUTLINED_FUNCTION_24_14();
      OUTLINED_FUNCTION_15_3();
    }
  }

  else
  {
    v26 = OUTLINED_FUNCTION_73_2();
    v27 = (qword_23BBE6280)(v26);
    v28 = OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_purchaseTimestamp;
    OUTLINED_FUNCTION_101_0(v27);
    sub_23BAAE9D4(v0 + v28, v10, &qword_27E198900, &qword_23BBE6280);
    OUTLINED_FUNCTION_6_22(v10);
    if (v29)
    {
      sub_23B9846E8(v10, &qword_27E198900, &qword_23BBE6280);
      if (qword_27E1976D0 != -1)
      {
        OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
      }

      v30 = type metadata accessor for SKLogger(0);
      v31 = OUTLINED_FUNCTION_16_3(v30, qword_27E1BFC88);
      v32 = sub_23BBD9988();
      if (os_log_type_enabled(v32, v31))
      {
        v33 = OUTLINED_FUNCTION_44_4();
        v65 = OUTLINED_FUNCTION_131();
        *v33 = 136446466;
        v34 = OUTLINED_FUNCTION_64_2();
        *(v33 + 14) = OUTLINED_FUNCTION_58_2(v34);
        OUTLINED_FUNCTION_106_0(&dword_23B970000, v35, v36, "%{public}s%{public}s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_15_3();
        OUTLINED_FUNCTION_15_3();
      }

      v37 = OUTLINED_FUNCTION_46();
      v38(v37);
    }

    else
    {
      (qword_23BBE6280)(v17, v10, v1);
      if (*(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_purchaseResult) != 4)
      {
        v52 = OUTLINED_FUNCTION_88_0();
        (qword_23BBE6280)(v52);
        v53 = type metadata accessor for MintViewBasePurchaseEvent(0);
        v54 = OUTLINED_FUNCTION_70_2(v53);
        (qword_23BBE6280)(v54);
        v55 = v0[3];
        OUTLINED_FUNCTION_37_3();
        *v57 = v56;
        v57[1] = v55;
        *(v2 + *(v20 + 10)) = v58;
        *(v2 + *(v20 + 11)) = v59;
        *(v2 + *(v20 + 12)) = v60;
        v61 = OUTLINED_FUNCTION_13_26();
        __swift_storeEnumTagSinglePayload(v61, v62, v63, v20);

        goto LABEL_22;
      }

      if (qword_27E1976D0 != -1)
      {
        OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
      }

      v39 = type metadata accessor for SKLogger(0);
      v40 = OUTLINED_FUNCTION_16_3(v39, qword_27E1BFC88);
      v41 = sub_23BBD9988();
      if (os_log_type_enabled(v41, v40))
      {
        v42 = OUTLINED_FUNCTION_44_4();
        v65 = OUTLINED_FUNCTION_131();
        *v42 = 136446466;
        v43 = OUTLINED_FUNCTION_64_2();
        *(v42 + 14) = OUTLINED_FUNCTION_63_1(v43);
        OUTLINED_FUNCTION_104(&dword_23B970000, v44, v45, "%{public}s%{public}s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_15_3();
        OUTLINED_FUNCTION_15_3();
      }

      v46 = *(v13 + 8);
      v46(v17, v1);
      v47 = OUTLINED_FUNCTION_46();
      (v46)(v47);
    }
  }

  type metadata accessor for MintViewBasePurchaseEvent(0);
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
LABEL_22:
  OUTLINED_FUNCTION_9_1();
}

double sub_23BB125AC@<D0>(char *a1@<X8>)
{
  v50 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198900, &qword_23BBE6280);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v50 - v6;
  v8 = sub_23BBD9828();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - v13;
  v15 = OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_appearTimestamp;
  swift_beginAccess();
  sub_23BAAE9D4(v1 + v15, v7, &qword_27E198900, &qword_23BBE6280);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_23B9846E8(v7, &qword_27E198900, &qword_23BBE6280);
    if (qword_27E1976D0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for SKLogger(0);
    __swift_project_value_buffer(v16, qword_27E1BFC88);
    v17 = sub_23BBDD588();
    v18 = sub_23BBD9988();
    if (os_log_type_enabled(v18, v17))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v52[0] = v20;
      *v19 = 136446466;
      *(v19 + 4) = sub_23BA5AB90(0, 0xE000000000000000, v52);
      *(v19 + 12) = 2082;
      *(v19 + 14) = sub_23BA5AB90(0xD000000000000035, 0x800000023BBE2740, v52);
      _os_log_impl(&dword_23B970000, v18, v17, "%{public}s%{public}s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB6DC0](v20, -1, -1);
      MEMORY[0x23EEB6DC0](v19, -1, -1);
    }

LABEL_19:
    v35 = type metadata accessor for MintViewBasePurchaseEvent(0);
    __swift_storeEnumTagSinglePayload(v50, 1, 1, v35);
    return result;
  }

  v21 = *(v9 + 32);
  v21(v14, v7, v8);
  v22 = OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_purchaseTimestamp;
  swift_beginAccess();
  sub_23BAAE9D4(v1 + v22, v4, &qword_27E198900, &qword_23BBE6280);
  if (__swift_getEnumTagSinglePayload(v4, 1, v8) == 1)
  {
    sub_23B9846E8(v4, &qword_27E198900, &qword_23BBE6280);
    if (qword_27E1976D0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for SKLogger(0);
    __swift_project_value_buffer(v23, qword_27E1BFC88);
    v24 = sub_23BBDD588();
    v25 = sub_23BBD9988();
    if (os_log_type_enabled(v25, v24))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v51 = v27;
      *v26 = 136446466;
      *(v26 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v51);
      *(v26 + 12) = 2082;
      *(v26 + 14) = sub_23BA5AB90(0xD000000000000037, 0x800000023BBE2780, &v51);
      _os_log_impl(&dword_23B970000, v25, v24, "%{public}s%{public}s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB6DC0](v27, -1, -1);
      MEMORY[0x23EEB6DC0](v26, -1, -1);
    }

    (*(v9 + 8))(v14, v8);
    goto LABEL_19;
  }

  v21(v11, v4, v8);
  v28 = *(v1 + OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_purchaseResult);
  if (v28 == 4)
  {
    if (qword_27E1976D0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for SKLogger(0);
    __swift_project_value_buffer(v29, qword_27E1BFC88);
    v30 = sub_23BBDD588();
    v31 = sub_23BBD9988();
    if (os_log_type_enabled(v31, v30))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v51 = v33;
      *v32 = 136446466;
      *(v32 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v51);
      *(v32 + 12) = 2082;
      *(v32 + 14) = sub_23BA5AB90(0xD000000000000034, 0x800000023BBE27C0, &v51);
      _os_log_impl(&dword_23B970000, v31, v30, "%{public}s%{public}s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB6DC0](v33, -1, -1);
      MEMORY[0x23EEB6DC0](v32, -1, -1);
    }

    v34 = *(v9 + 8);
    v34(v11, v8);
    v34(v14, v8);
    goto LABEL_19;
  }

  v37 = v50;
  v21(v50, v14, v8);
  v38 = *(v1 + 16);
  v39 = type metadata accessor for MintViewBasePurchaseEvent(0);
  v21((v37 + v39[6]), v11, v8);
  v40 = *(v1 + OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_purchasedPlanIndex);
  v41 = *(v1 + OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_purchasedPlanIndex + 8);
  v42 = *(v1 + OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_usesInAppPurchaseCompletion);
  v43 = *(v1 + OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_usesInAppPurchaseOptions);
  v44 = (v1 + OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_purchasedProductID);
  v45 = *(v1 + OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_usesInAppPurchaseStart);
  *(v37 + v39[5]) = v38;
  *(v37 + v39[7]) = v28;
  v46 = *v44;
  v47 = v44[1];
  v48 = v37 + v39[8];
  *v48 = v40;
  *(v48 + 8) = v41;
  v49 = (v37 + v39[9]);
  *v49 = v46;
  v49[1] = v47;
  *(v37 + v39[10]) = v42;
  *(v37 + v39[11]) = v43;
  *(v37 + v39[12]) = v45;
  __swift_storeEnumTagSinglePayload(v37, 0, 1, v39);

  return result;
}

void sub_23BB12D18()
{
  OUTLINED_FUNCTION_10_0();
  v64 = v3;
  v4 = OUTLINED_FUNCTION_0_7();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  v7 = OUTLINED_FUNCTION_13_0(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_1();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_72_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_1();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v64 - v19;
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_6_22(v2);
  if (v29)
  {
    sub_23B9846E8(v2, &qword_27E198900, &qword_23BBE6280);
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
    }

    v21 = type metadata accessor for SKLogger(0);
    OUTLINED_FUNCTION_16_3(v21, qword_27E1BFC88);
    v22 = sub_23BBD9988();
    if (OUTLINED_FUNCTION_13_4(v22))
    {
      OUTLINED_FUNCTION_44_4();
      v66 = OUTLINED_FUNCTION_5_5();
      v23 = OUTLINED_FUNCTION_98_0(4.8752e-34);
      OUTLINED_FUNCTION_22_16(v23);
      *(v20 + 14) = OUTLINED_FUNCTION_86_0();
      OUTLINED_FUNCTION_18_4(&dword_23B970000, v24, v25, "%{public}s%{public}s");
      OUTLINED_FUNCTION_85_0();
      OUTLINED_FUNCTION_24_14();
      OUTLINED_FUNCTION_15_3();
    }
  }

  else
  {
    v26 = OUTLINED_FUNCTION_73_2();
    v27 = (qword_23BBE6280)(v26);
    v28 = OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_purchaseTimestamp;
    OUTLINED_FUNCTION_101_0(v27);
    sub_23BAAE9D4(&v0[v28], v10, &qword_27E198900, &qword_23BBE6280);
    OUTLINED_FUNCTION_6_22(v10);
    if (v29)
    {
      sub_23B9846E8(v10, &qword_27E198900, &qword_23BBE6280);
      if (qword_27E1976D0 != -1)
      {
        OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
      }

      v30 = type metadata accessor for SKLogger(0);
      v31 = OUTLINED_FUNCTION_16_3(v30, qword_27E1BFC88);
      v32 = sub_23BBD9988();
      if (os_log_type_enabled(v32, v31))
      {
        v33 = OUTLINED_FUNCTION_44_4();
        v65 = OUTLINED_FUNCTION_131();
        *v33 = 136446466;
        v34 = OUTLINED_FUNCTION_64_2();
        *(v33 + 14) = OUTLINED_FUNCTION_58_2(v34);
        OUTLINED_FUNCTION_106_0(&dword_23B970000, v35, v36, "%{public}s%{public}s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_15_3();
        OUTLINED_FUNCTION_15_3();
      }

      v37 = OUTLINED_FUNCTION_46();
      v38(v37);
    }

    else
    {
      (qword_23BBE6280)(v17, v10, v1);
      if (v0[OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_purchaseResult] != 4)
      {
        v52 = OUTLINED_FUNCTION_88_0();
        (qword_23BBE6280)(v52);
        v53 = type metadata accessor for MintViewBasePurchaseEvent(0);
        v54 = OUTLINED_FUNCTION_70_2(v53);
        (qword_23BBE6280)(v54);
        v55 = *&v0[OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_productID + 8];
        OUTLINED_FUNCTION_37_3();
        *v57 = v56;
        v57[1] = v55;
        *(v2 + *(v20 + 10)) = v58;
        *(v2 + *(v20 + 11)) = v59;
        *(v2 + *(v20 + 12)) = v60;
        v61 = OUTLINED_FUNCTION_13_26();
        __swift_storeEnumTagSinglePayload(v61, v62, v63, v20);

        goto LABEL_22;
      }

      if (qword_27E1976D0 != -1)
      {
        OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
      }

      v39 = type metadata accessor for SKLogger(0);
      v40 = OUTLINED_FUNCTION_16_3(v39, qword_27E1BFC88);
      v41 = sub_23BBD9988();
      if (os_log_type_enabled(v41, v40))
      {
        v42 = OUTLINED_FUNCTION_44_4();
        v65 = OUTLINED_FUNCTION_131();
        *v42 = 136446466;
        v43 = OUTLINED_FUNCTION_64_2();
        *(v42 + 14) = OUTLINED_FUNCTION_63_1(v43);
        OUTLINED_FUNCTION_104(&dword_23B970000, v44, v45, "%{public}s%{public}s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_15_3();
        OUTLINED_FUNCTION_15_3();
      }

      v46 = *(v13 + 8);
      v46(v17, v1);
      v47 = OUTLINED_FUNCTION_46();
      (v46)(v47);
    }
  }

  type metadata accessor for MintViewBasePurchaseEvent(0);
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
LABEL_22:
  OUTLINED_FUNCTION_9_1();
}

void sub_23BB13224(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_109();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_15_8();
  v6 = type metadata accessor for SKLogger(v5);
  v7 = OUTLINED_FUNCTION_25_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  OUTLINED_FUNCTION_13_0(v12);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  sub_23BBDD318();
  v16 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
  v17 = v2[1];
  v24 = *v2;
  v25 = v17;
  *v26 = v2[2];
  *&v26[11] = *(v2 + 43);
  OUTLINED_FUNCTION_2_40();
  sub_23BB1A134(v4, &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  v19 = (*(v9 + 80) + 91) & ~*(v9 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  v21 = v25;
  *(v20 + 32) = v24;
  *(v20 + 48) = v21;
  *(v20 + 64) = *v26;
  *(v20 + 75) = *&v26[11];
  OUTLINED_FUNCTION_1_50();
  sub_23BB1A408(&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v19, v23);
  sub_23BB19AEC(v2, &v24);
  sub_23BB142C0(0, 0, v15);

  sub_23B9846E8(v15, &qword_27E198320, &unk_23BBEEBC0);
  OUTLINED_FUNCTION_110();
}

void sub_23BB133F4()
{
  OUTLINED_FUNCTION_10_0();
  v1 = OUTLINED_FUNCTION_47_4();
  v2 = OUTLINED_FUNCTION_25_0(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_6_28();
  v4 = type metadata accessor for StoreViewDisappearEvent(v3);
  v5 = OUTLINED_FUNCTION_25_0(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10_19();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  OUTLINED_FUNCTION_13_0(v6);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_25();
  sub_23BBDD318();
  sub_23BBDD368();
  v8 = OUTLINED_FUNCTION_13_26();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = OUTLINED_FUNCTION_0_7();
  sub_23BB1A134(v12, v13, v14);
  OUTLINED_FUNCTION_2_40();
  v15 = OUTLINED_FUNCTION_52_5();
  sub_23BB1A134(v15, v16, v17);
  OUTLINED_FUNCTION_5_32();
  v18 = OUTLINED_FUNCTION_81_0();
  v19 = OUTLINED_FUNCTION_61_3(v18);
  OUTLINED_FUNCTION_48_6(v19);
  OUTLINED_FUNCTION_1_50();
  OUTLINED_FUNCTION_79_1(v20, v21, v22);
  OUTLINED_FUNCTION_16_16();

  sub_23B9846E8(v0, &qword_27E198320, &unk_23BBEEBC0);
  OUTLINED_FUNCTION_9_1();
}

void sub_23BB135A8()
{
  OUTLINED_FUNCTION_10_0();
  v1 = OUTLINED_FUNCTION_47_4();
  v2 = OUTLINED_FUNCTION_25_0(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_6_28();
  v4 = type metadata accessor for StoreViewPurchaseEvent(v3);
  v5 = OUTLINED_FUNCTION_25_0(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10_19();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  OUTLINED_FUNCTION_13_0(v6);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_25();
  sub_23BBDD318();
  sub_23BBDD368();
  v8 = OUTLINED_FUNCTION_13_26();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = OUTLINED_FUNCTION_0_7();
  sub_23BB1A134(v12, v13, v14);
  OUTLINED_FUNCTION_2_40();
  v15 = OUTLINED_FUNCTION_52_5();
  sub_23BB1A134(v15, v16, v17);
  OUTLINED_FUNCTION_5_32();
  v18 = OUTLINED_FUNCTION_81_0();
  v19 = OUTLINED_FUNCTION_61_3(v18);
  OUTLINED_FUNCTION_48_6(v19);
  OUTLINED_FUNCTION_1_50();
  OUTLINED_FUNCTION_79_1(v20, v21, v22);
  OUTLINED_FUNCTION_16_16();

  sub_23B9846E8(v0, &qword_27E198320, &unk_23BBEEBC0);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BB1375C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SKLogger(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = type metadata accessor for SubscriptionViewDisappearEvent(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  sub_23BBDD318();
  v13 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  sub_23BB1A134(a1, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SubscriptionViewDisappearEvent);
  sub_23BB1A134(a2, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SKLogger);
  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = (v9 + *(v5 + 80) + v14) & ~*(v5 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  sub_23BB1A408(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v14, type metadata accessor for SubscriptionViewDisappearEvent);
  sub_23BB1A408(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for SKLogger);
  sub_23BB142C0(0, 0, v12);

  return sub_23B9846E8(v12, &qword_27E198320, &unk_23BBEEBC0);
}

uint64_t sub_23BB139F4(const void *a1, uint64_t a2)
{
  v4 = type metadata accessor for SKLogger(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &__dst[-v8];
  sub_23BBDD318();
  v10 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  memcpy(__dst, a1, sizeof(__dst));
  sub_23BB1A134(a2, &__dst[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for SKLogger);
  v11 = (*(v5 + 80) + 112) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  memcpy(v12 + 4, __dst, 0x50uLL);
  sub_23BB1A408(&__dst[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11, type metadata accessor for SKLogger);
  sub_23BB18B80(a1, __dst);
  sub_23BB142C0(0, 0, v9);

  return sub_23B9846E8(v9, &qword_27E198320, &unk_23BBEEBC0);
}

void sub_23BB13BF0()
{
  OUTLINED_FUNCTION_10_0();
  v1 = OUTLINED_FUNCTION_47_4();
  v2 = OUTLINED_FUNCTION_25_0(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_6_28();
  v4 = type metadata accessor for SubscriptionViewPurchaseEvent(v3);
  v5 = OUTLINED_FUNCTION_25_0(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10_19();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  OUTLINED_FUNCTION_13_0(v6);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_25();
  sub_23BBDD318();
  sub_23BBDD368();
  v8 = OUTLINED_FUNCTION_13_26();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = OUTLINED_FUNCTION_0_7();
  sub_23BB1A134(v12, v13, v14);
  OUTLINED_FUNCTION_2_40();
  v15 = OUTLINED_FUNCTION_52_5();
  sub_23BB1A134(v15, v16, v17);
  OUTLINED_FUNCTION_5_32();
  v18 = OUTLINED_FUNCTION_81_0();
  v19 = OUTLINED_FUNCTION_61_3(v18);
  OUTLINED_FUNCTION_48_6(v19);
  OUTLINED_FUNCTION_1_50();
  OUTLINED_FUNCTION_79_1(v20, v21, v22);
  OUTLINED_FUNCTION_16_16();

  sub_23B9846E8(v0, &qword_27E198320, &unk_23BBEEBC0);
  OUTLINED_FUNCTION_9_1();
}

void sub_23BB13DA4()
{
  OUTLINED_FUNCTION_10_0();
  v1 = OUTLINED_FUNCTION_47_4();
  v2 = OUTLINED_FUNCTION_25_0(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_6_28();
  v4 = type metadata accessor for ProductViewDisappearEvent(v3);
  v5 = OUTLINED_FUNCTION_25_0(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10_19();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  OUTLINED_FUNCTION_13_0(v6);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_25();
  sub_23BBDD318();
  sub_23BBDD368();
  v8 = OUTLINED_FUNCTION_13_26();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = OUTLINED_FUNCTION_0_7();
  sub_23BB1A134(v12, v13, v14);
  OUTLINED_FUNCTION_2_40();
  v15 = OUTLINED_FUNCTION_52_5();
  sub_23BB1A134(v15, v16, v17);
  OUTLINED_FUNCTION_5_32();
  v18 = OUTLINED_FUNCTION_81_0();
  v19 = OUTLINED_FUNCTION_61_3(v18);
  OUTLINED_FUNCTION_48_6(v19);
  OUTLINED_FUNCTION_1_50();
  OUTLINED_FUNCTION_79_1(v20, v21, v22);
  OUTLINED_FUNCTION_16_16();

  sub_23B9846E8(v0, &qword_27E198320, &unk_23BBEEBC0);
  OUTLINED_FUNCTION_9_1();
}

void sub_23BB13F58()
{
  OUTLINED_FUNCTION_10_0();
  v1 = OUTLINED_FUNCTION_47_4();
  v2 = OUTLINED_FUNCTION_25_0(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_6_28();
  v4 = type metadata accessor for ProductViewAppearanceEvent(v3);
  v5 = OUTLINED_FUNCTION_25_0(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10_19();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  OUTLINED_FUNCTION_13_0(v6);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_25();
  sub_23BBDD318();
  sub_23BBDD368();
  v8 = OUTLINED_FUNCTION_13_26();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = OUTLINED_FUNCTION_0_7();
  sub_23BB1A134(v12, v13, v14);
  OUTLINED_FUNCTION_2_40();
  v15 = OUTLINED_FUNCTION_52_5();
  sub_23BB1A134(v15, v16, v17);
  OUTLINED_FUNCTION_5_32();
  v18 = OUTLINED_FUNCTION_81_0();
  v19 = OUTLINED_FUNCTION_61_3(v18);
  OUTLINED_FUNCTION_48_6(v19);
  OUTLINED_FUNCTION_1_50();
  OUTLINED_FUNCTION_79_1(v20, v21, v22);
  OUTLINED_FUNCTION_16_16();

  sub_23B9846E8(v0, &qword_27E198320, &unk_23BBEEBC0);
  OUTLINED_FUNCTION_9_1();
}

void sub_23BB1410C()
{
  OUTLINED_FUNCTION_10_0();
  v1 = OUTLINED_FUNCTION_47_4();
  v2 = OUTLINED_FUNCTION_25_0(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_6_28();
  v4 = type metadata accessor for ProductViewPurchaseEvent(v3);
  v5 = OUTLINED_FUNCTION_25_0(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10_19();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  OUTLINED_FUNCTION_13_0(v6);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_25();
  sub_23BBDD318();
  sub_23BBDD368();
  v8 = OUTLINED_FUNCTION_13_26();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = OUTLINED_FUNCTION_0_7();
  sub_23BB1A134(v12, v13, v14);
  OUTLINED_FUNCTION_2_40();
  v15 = OUTLINED_FUNCTION_52_5();
  sub_23BB1A134(v15, v16, v17);
  OUTLINED_FUNCTION_5_32();
  v18 = OUTLINED_FUNCTION_81_0();
  v19 = OUTLINED_FUNCTION_61_3(v18);
  OUTLINED_FUNCTION_48_6(v19);
  OUTLINED_FUNCTION_1_50();
  OUTLINED_FUNCTION_79_1(v20, v21, v22);
  OUTLINED_FUNCTION_16_16();

  sub_23B9846E8(v0, &qword_27E198320, &unk_23BBEEBC0);
  OUTLINED_FUNCTION_9_1();
}

void sub_23BB142C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_109();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  OUTLINED_FUNCTION_13_0(v11);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v12);
  v14 = v26 - v13;
  sub_23BAAE9D4(v8, v26 - v13, &qword_27E198320, &unk_23BBEEBC0);
  v15 = sub_23BBDD368();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v15);

  if (EnumTagSinglePayload == 1)
  {
    sub_23B9846E8(v14, &qword_27E198320, &unk_23BBEEBC0);
  }

  else
  {
    sub_23BBDD358();
    OUTLINED_FUNCTION_1_4();
    (*(v17 + 8))(v14, v15);
  }

  v18 = *(v4 + 16);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_23BBDD2D8();
    v21 = v20;
    swift_unknownObjectRelease();
    if (v10)
    {
LABEL_6:
      v22 = sub_23BBDD048() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = v6;
      *(v23 + 24) = v4;

      if (v21 | v19)
      {
        v27[0] = 0;
        v27[1] = 0;
        v24 = v27;
        v27[2] = v19;
        v27[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v26[1] = 7;
      v26[2] = v24;
      v26[3] = v22;
      swift_task_create();

      goto LABEL_14;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (v10)
    {
      goto LABEL_6;
    }
  }

  v25 = swift_allocObject();
  *(v25 + 16) = v6;
  *(v25 + 24) = v4;
  if (v21 | v19)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v19;
    v27[7] = v21;
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_110();
}

double sub_23BB14550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_23BBDB748();

  return result;
}

void sub_23BB145C4()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0BC0, &unk_23BBFDD50);
  OUTLINED_FUNCTION_13_0(v6);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  v9 = v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198900, &qword_23BBE6280);
  OUTLINED_FUNCTION_13_0(v10);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  v14 = *v5;
  v15 = v5[2];
  v16 = *(v5 + 24);
  sub_23BBD9818();
  v17 = sub_23BBD9828();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v17);
  v18 = OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_appearTimestamp;
  swift_beginAccess();
  sub_23B99D3F0(v13, v1 + v18);
  swift_endAccess();
  if (!v16)
  {
    v19 = 2;
LABEL_6:
    *(v1 + 26) = v19;
    *(v1 + 48) = *(v14 + 16);
    *(v1 + 56) = 0;
    goto LABEL_7;
  }

  if (v16 != 1)
  {
    v19 = 1;
    goto LABEL_6;
  }

  *(v1 + 26) = 0;
  v24[1] = v15;
  *(v1 + 64) = sub_23BB1619C();

LABEL_7:
  sub_23B99BCE8(v3);
  type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  sub_23BB163B8();
  sub_23B9846E8(v9, &qword_27E1A0BC0, &unk_23BBFDD50);
  OUTLINED_FUNCTION_9_1();
}

void sub_23BB14788(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_109();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_35_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_13_0(v8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198900, &qword_23BBE6280);
  OUTLINED_FUNCTION_13_0(v10);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_25();
  sub_23BBD9818();
  sub_23BBD9828();
  v12 = OUTLINED_FUNCTION_13_26();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_disappearTimestamp;
  swift_beginAccess();
  sub_23B99D3F0(v3, v2 + v16);
  swift_endAccess();
  sub_23B99BCE8(v5);
  type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  sub_23BB163B8();
  v21 = OUTLINED_FUNCTION_52_5();
  sub_23B9846E8(v21, v22, &unk_23BBFDD50);
  OUTLINED_FUNCTION_110();
}

uint64_t sub_23BB148CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A0BD0, &qword_23BBFC9F8);
  OUTLINED_FUNCTION_13_0(v1);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_90_0();
  v4 = type metadata accessor for SubscriptionViewDisappearEvent(v3);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  sub_23BB168C4(v0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v4) == 1)
  {
    return sub_23B9846E8(v0, qword_27E1A0BD0, &qword_23BBFC9F8);
  }

  sub_23BB1A408(v0, v8, type metadata accessor for SubscriptionViewDisappearEvent);
  if (qword_27E197798 != -1)
  {
    OUTLINED_FUNCTION_6_4(&qword_27E197798);
  }

  v10 = type metadata accessor for SKLogger(0);
  v11 = __swift_project_value_buffer(v10, qword_27E1BFD50);
  sub_23BB1375C(v8, v11);
  return sub_23BB1A0E4();
}

uint64_t sub_23BB14A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  return MEMORY[0x2822009F8](sub_23BB14A44, 0, 0);
}

uint64_t sub_23BB14A44()
{
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_41_0();
  if (sub_23BBA6130())
  {
    OUTLINED_FUNCTION_57_2();
    OUTLINED_FUNCTION_25_9();
    v3 = sub_23BBDCFE8();
    OUTLINED_FUNCTION_40_6();
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v2[6] = sub_23BB1A4C0;
    v2[7] = v4;
    v2[2] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_0_47(COERCE_DOUBLE(1107296256));
    v2[4] = v5;
    v2[5] = &block_descriptor_195;
    _Block_copy(v1);
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_6_9();
    AnalyticsSendEventLazy();
    _Block_release(v0);
  }

  else
  {
    v3 = v2[9];
    sub_23BBDD5B8();
    v6 = sub_23BBD9988();
    if (OUTLINED_FUNCTION_67_1(v6))
    {
      OUTLINED_FUNCTION_68_2();
      OUTLINED_FUNCTION_33_6();
      OUTLINED_FUNCTION_12_4();
      *v1 = 136380675;
      OUTLINED_FUNCTION_15_22();
      *(v1 + 1) = sub_23BA5AB90(0xD00000000000001FLL, v7, v8);
      OUTLINED_FUNCTION_16_5(&dword_23B970000, v9, v10, "Error sending CoreAnalytics event %{private}s, invalid event provided");
      OUTLINED_FUNCTION_14_21();
      OUTLINED_FUNCTION_105();
    }
  }

  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_108_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_23BB14BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  return MEMORY[0x2822009F8](sub_23BB14BCC, 0, 0);
}

uint64_t sub_23BB14BCC()
{
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_41_0();
  if (sub_23B9A8F18())
  {
    OUTLINED_FUNCTION_57_2();
    OUTLINED_FUNCTION_25_9();
    v3 = sub_23BBDCFE8();
    OUTLINED_FUNCTION_40_6();
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v2[6] = sub_23BB1A4C0;
    v2[7] = v4;
    v2[2] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_0_47(COERCE_DOUBLE(1107296256));
    v2[4] = v5;
    v2[5] = &block_descriptor_206;
    _Block_copy(v1);
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_6_9();
    AnalyticsSendEventLazy();
    _Block_release(v0);
  }

  else
  {
    v3 = v2[9];
    sub_23BBDD5B8();
    v6 = sub_23BBD9988();
    if (OUTLINED_FUNCTION_67_1(v6))
    {
      OUTLINED_FUNCTION_68_2();
      OUTLINED_FUNCTION_33_6();
      OUTLINED_FUNCTION_12_4();
      *v1 = 136380675;
      OUTLINED_FUNCTION_15_22();
      *(v1 + 1) = sub_23BA5AB90(0xD000000000000022, v7, v8);
      OUTLINED_FUNCTION_16_5(&dword_23B970000, v9, v10, "Error sending CoreAnalytics event %{private}s, invalid event provided");
      OUTLINED_FUNCTION_14_21();
      OUTLINED_FUNCTION_105();
    }
  }

  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_108_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_23BB14D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  return MEMORY[0x2822009F8](sub_23BB14D54, 0, 0);
}

uint64_t sub_23BB14D54()
{
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_41_0();
  if (sub_23B9F6AC8())
  {
    OUTLINED_FUNCTION_57_2();
    OUTLINED_FUNCTION_25_9();
    OUTLINED_FUNCTION_92_0();
    v3 = sub_23BBDCFE8();
    OUTLINED_FUNCTION_40_6();
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v2[6] = sub_23BB1A4C0;
    v2[7] = v4;
    v2[2] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_0_47(COERCE_DOUBLE(1107296256));
    v2[4] = v5;
    v2[5] = &block_descriptor_172;
    _Block_copy(v1);
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_6_9();
    AnalyticsSendEventLazy();
    _Block_release(v0);
  }

  else
  {
    v3 = v2[9];
    sub_23BBDD5B8();
    v6 = sub_23BBD9988();
    if (OUTLINED_FUNCTION_67_1(v6))
    {
      OUTLINED_FUNCTION_68_2();
      OUTLINED_FUNCTION_33_6();
      OUTLINED_FUNCTION_12_4();
      *v1 = 136380675;
      OUTLINED_FUNCTION_15_22();
      v7 = OUTLINED_FUNCTION_92_0();
      *(v1 + 1) = sub_23BA5AB90(v7, v8, v9);
      OUTLINED_FUNCTION_16_5(&dword_23B970000, v10, v11, "Error sending CoreAnalytics event %{private}s, invalid event provided");
      OUTLINED_FUNCTION_14_21();
      OUTLINED_FUNCTION_105();
    }
  }

  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_108_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_23BB14EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  return MEMORY[0x2822009F8](sub_23BB14ED4, 0, 0);
}

uint64_t sub_23BB14ED4()
{
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_41_0();
  if (sub_23BA07AF4())
  {
    OUTLINED_FUNCTION_57_2();
    OUTLINED_FUNCTION_25_9();
    v3 = sub_23BBDCFE8();
    OUTLINED_FUNCTION_40_6();
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v2[6] = sub_23BB1A4C0;
    v2[7] = v4;
    v2[2] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_0_47(COERCE_DOUBLE(1107296256));
    v2[4] = v5;
    v2[5] = &block_descriptor_228;
    _Block_copy(v1);
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_6_9();
    AnalyticsSendEventLazy();
    _Block_release(v0);
  }

  else
  {
    v3 = v2[9];
    sub_23BBDD5B8();
    v6 = sub_23BBD9988();
    if (OUTLINED_FUNCTION_67_1(v6))
    {
      OUTLINED_FUNCTION_68_2();
      OUTLINED_FUNCTION_33_6();
      OUTLINED_FUNCTION_12_4();
      *v1 = 136380675;
      OUTLINED_FUNCTION_15_22();
      *(v1 + 1) = sub_23BA5AB90(0xD000000000000029, v7, v8);
      OUTLINED_FUNCTION_16_5(&dword_23B970000, v9, v10, "Error sending CoreAnalytics event %{private}s, invalid event provided");
      OUTLINED_FUNCTION_14_21();
      OUTLINED_FUNCTION_105();
    }
  }

  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_108_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_23BB1503C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  return MEMORY[0x2822009F8](sub_23BB1505C, 0, 0);
}

uint64_t sub_23BB1505C()
{
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_41_0();
  if (sub_23BB03110())
  {
    OUTLINED_FUNCTION_57_2();
    OUTLINED_FUNCTION_25_9();
    v3 = sub_23BBDCFE8();
    OUTLINED_FUNCTION_40_6();
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v2[6] = sub_23BB18DA0;
    v2[7] = v4;
    v2[2] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_0_47(COERCE_DOUBLE(1107296256));
    v2[4] = v5;
    v2[5] = &block_descriptor;
    _Block_copy(v1);
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_6_9();
    AnalyticsSendEventLazy();
    _Block_release(v0);
  }

  else
  {
    v3 = v2[9];
    sub_23BBDD5B8();
    v6 = sub_23BBD9988();
    if (OUTLINED_FUNCTION_67_1(v6))
    {
      OUTLINED_FUNCTION_68_2();
      OUTLINED_FUNCTION_33_6();
      OUTLINED_FUNCTION_12_4();
      *v1 = 136380675;
      OUTLINED_FUNCTION_15_22();
      *(v1 + 1) = sub_23BA5AB90(0xD000000000000026, v7, v8);
      OUTLINED_FUNCTION_16_5(&dword_23B970000, v9, v10, "Error sending CoreAnalytics event %{private}s, invalid event provided");
      OUTLINED_FUNCTION_14_21();
      OUTLINED_FUNCTION_105();
    }
  }

  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_108_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_23BB151C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  return MEMORY[0x2822009F8](sub_23BB151E4, 0, 0);
}

uint64_t sub_23BB151E4()
{
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_41_0();
  if (sub_23BB7DDC4())
  {
    OUTLINED_FUNCTION_57_2();
    OUTLINED_FUNCTION_25_9();
    v3 = sub_23BBDCFE8();
    OUTLINED_FUNCTION_40_6();
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v2[6] = sub_23BB1A4C0;
    v2[7] = v4;
    v2[2] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_0_47(COERCE_DOUBLE(1107296256));
    v2[4] = v5;
    v2[5] = &block_descriptor_150;
    _Block_copy(v1);
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_6_9();
    AnalyticsSendEventLazy();
    _Block_release(v0);
  }

  else
  {
    v3 = v2[9];
    sub_23BBDD5B8();
    v6 = sub_23BBD9988();
    if (OUTLINED_FUNCTION_67_1(v6))
    {
      OUTLINED_FUNCTION_68_2();
      OUTLINED_FUNCTION_33_6();
      OUTLINED_FUNCTION_12_4();
      *v1 = 136380675;
      OUTLINED_FUNCTION_15_22();
      *(v1 + 1) = sub_23BA5AB90(0xD000000000000028, v7, v8);
      OUTLINED_FUNCTION_16_5(&dword_23B970000, v9, v10, "Error sending CoreAnalytics event %{private}s, invalid event provided");
      OUTLINED_FUNCTION_14_21();
      OUTLINED_FUNCTION_105();
    }
  }

  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_108_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_23BB1534C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_23BBDCE08();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  sub_23BBDCDF8();
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23BB15438, 0, 0);
}

uint64_t sub_23BB15438()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v4 = v0[12];
    v3 = v0[13];
    v5 = sub_23BBDD018();
    v45 = v0;
    v7 = v6;

    sub_23BB02B28(v5, v7);
    v8 = sub_23B9A935C();
    OUTLINED_FUNCTION_80_2(v8);
    v9 = OUTLINED_FUNCTION_0_7();
    sub_23B9A93B4(v9, v10);
    v11 = OUTLINED_FUNCTION_0_7();
    sub_23BB05734(v11, v12, v4);
    v13 = OUTLINED_FUNCTION_0_7();
    sub_23B9A940C(v13, v14);
    OUTLINED_FUNCTION_105_0();
    v15 = OUTLINED_FUNCTION_40_1();
    v16(v15);
    v17 = OUTLINED_FUNCTION_0_7();
    v19 = sub_23B9A940C(v17, v18);
    sub_23BB02FE4(v3, v19);
    v0 = v45;

    sub_23BBD97D8();
    v20 = OUTLINED_FUNCTION_40_1();
    sub_23B9A940C(v20, v21);
  }

  v22 = OUTLINED_FUNCTION_17_0();
  v24 = sub_23B9D4CA8(v22, v23);

  if (!v24)
  {
    OUTLINED_FUNCTION_78_2();
    if (v25)
    {
      type metadata accessor for ProductViewDisappearEvent(0);
      sub_23BBC9A58();
      if (v26)
      {
        v27 = sub_23BBC95BC();
        if (v27)
        {
          v28 = v27;
          v29 = OUTLINED_FUNCTION_52_5();
          v31 = sub_23BB024A0(v29, v30, 1);
          v32 = sub_23BB024A0(v28, v31, 1);
          OUTLINED_FUNCTION_25_9();
          v33 = sub_23BBDCFE8();
          OUTLINED_FUNCTION_40_6();
          v34 = swift_allocObject();
          *(v34 + 16) = v32;
          v0[6] = sub_23BB1A4C0;
          v0[7] = v34;
          v0[2] = MEMORY[0x277D85DD0];
          OUTLINED_FUNCTION_0_47(COERCE_DOUBLE(1107296256));
          v0[4] = v35;
          v0[5] = &block_descriptor_217;
          v36 = _Block_copy(v0 + 2);

          OUTLINED_FUNCTION_17_0();
          AnalyticsSendEventLazy();
          _Block_release(v36);

          goto LABEL_13;
        }
      }
    }
  }

  v37 = v0[9];
  sub_23BBDD5B8();
  v38 = sub_23BBD9988();
  if (OUTLINED_FUNCTION_67_1(v38))
  {
    OUTLINED_FUNCTION_68_2();
    OUTLINED_FUNCTION_33_6();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0] = 136380675;
    OUTLINED_FUNCTION_15_22();
    MEMORY[4] = sub_23BA5AB90(0xD000000000000024, v39, v40);
    OUTLINED_FUNCTION_16_5(&dword_23B970000, v41, v42, "Error sending CoreAnalytics event %{private}s, invalid event provided");
    OUTLINED_FUNCTION_14_21();
    OUTLINED_FUNCTION_105();
  }

LABEL_13:

  OUTLINED_FUNCTION_1_16();

  return v43();
}

uint64_t sub_23BB15774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_23BBDCE08();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  sub_23BBDCDF8();
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23BB15860, 0, 0);
}

uint64_t sub_23BB15860()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v4 = v0[12];
    v3 = v0[13];
    v5 = sub_23BBDD018();
    v7 = v6;

    sub_23BB02B28(v5, v7);
    v8 = sub_23B9A935C();
    OUTLINED_FUNCTION_80_2(v8);
    v9 = OUTLINED_FUNCTION_0_7();
    sub_23B9A93B4(v9, v10);
    v11 = OUTLINED_FUNCTION_0_7();
    sub_23BB05734(v11, v12, v4);
    v13 = OUTLINED_FUNCTION_0_7();
    sub_23B9A940C(v13, v14);
    OUTLINED_FUNCTION_105_0();
    v15 = OUTLINED_FUNCTION_40_1();
    v16(v15);
    v17 = OUTLINED_FUNCTION_0_7();
    v19 = sub_23B9A940C(v17, v18);
    sub_23BB02FE4(v3, v19);

    sub_23BBD97D8();
    v20 = OUTLINED_FUNCTION_40_1();
    sub_23B9A940C(v20, v21);
  }

  v22 = OUTLINED_FUNCTION_17_0();
  v24 = sub_23B9D4CA8(v22, v23);

  if (!v24)
  {
    OUTLINED_FUNCTION_78_2();
    if (v25)
    {
      v26 = v25;
      type metadata accessor for ProductViewAppearanceEvent(0);
      sub_23BBC9A58();
      if (v27)
      {
        v28 = sub_23BB024A0(v27, v26, 1);
        OUTLINED_FUNCTION_25_9();
        OUTLINED_FUNCTION_92_0();
        v29 = sub_23BBDCFE8();
        OUTLINED_FUNCTION_40_6();
        v30 = swift_allocObject();
        *(v30 + 16) = v28;
        v0[6] = sub_23BB1A4C0;
        v0[7] = v30;
        v0[2] = MEMORY[0x277D85DD0];
        OUTLINED_FUNCTION_0_47(COERCE_DOUBLE(1107296256));
        v0[4] = v31;
        v0[5] = &block_descriptor_161;
        v32 = _Block_copy(v0 + 2);

        OUTLINED_FUNCTION_17_0();
        AnalyticsSendEventLazy();
        _Block_release(v32);

        goto LABEL_11;
      }
    }
  }

  v33 = v0[9];
  sub_23BBDD5B8();
  v34 = sub_23BBD9988();
  if (OUTLINED_FUNCTION_67_1(v34))
  {
    OUTLINED_FUNCTION_68_2();
    OUTLINED_FUNCTION_33_6();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0] = 136380675;
    OUTLINED_FUNCTION_15_22();
    v35 = OUTLINED_FUNCTION_92_0();
    MEMORY[4] = sub_23BA5AB90(v35, v36, v37);
    OUTLINED_FUNCTION_16_5(&dword_23B970000, v38, v39, "Error sending CoreAnalytics event %{private}s, invalid event provided");
    OUTLINED_FUNCTION_14_21();
    OUTLINED_FUNCTION_105();
  }

LABEL_11:

  OUTLINED_FUNCTION_1_16();

  return v40();
}

uint64_t sub_23BB15B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  return MEMORY[0x2822009F8](sub_23BB15B74, 0, 0);
}

uint64_t sub_23BB15B74()
{
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_41_0();
  if (sub_23B9DDEC4())
  {
    OUTLINED_FUNCTION_57_2();
    OUTLINED_FUNCTION_25_9();
    v3 = sub_23BBDCFE8();
    OUTLINED_FUNCTION_40_6();
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v2[6] = sub_23BB1A4C0;
    v2[7] = v4;
    v2[2] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_0_47(COERCE_DOUBLE(1107296256));
    v2[4] = v5;
    v2[5] = &block_descriptor_183;
    _Block_copy(v1);
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_6_9();
    AnalyticsSendEventLazy();
    _Block_release(v0);
  }

  else
  {
    v3 = v2[9];
    sub_23BBDD5B8();
    v6 = sub_23BBD9988();
    if (OUTLINED_FUNCTION_67_1(v6))
    {
      OUTLINED_FUNCTION_68_2();
      OUTLINED_FUNCTION_33_6();
      OUTLINED_FUNCTION_12_4();
      *v1 = 136380675;
      OUTLINED_FUNCTION_15_22();
      *(v1 + 1) = sub_23BA5AB90(0xD000000000000023, v7, v8);
      OUTLINED_FUNCTION_16_5(&dword_23B970000, v9, v10, "Error sending CoreAnalytics event %{private}s, invalid event provided");
      OUTLINED_FUNCTION_14_21();
      OUTLINED_FUNCTION_105();
    }
  }

  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_108_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

id sub_23BB15CDC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_23B9A9318();
    v4 = sub_23BBDCE18();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_23BB15D68()
{

  OUTLINED_FUNCTION_84_0(OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_appearTimestamp);
  OUTLINED_FUNCTION_84_0(OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_disappearTimestamp);
  OUTLINED_FUNCTION_84_0(OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_purchaseTimestamp);

  return v0;
}

uint64_t sub_23BB15DE0()
{
  sub_23BB15D68();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SubscriptionStoreViewEventConfiguration(uint64_t a1)
{
  result = qword_27E1A0BA0;
  if (!qword_27E1A0BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BB15E8C(uint64_t a1)
{
  sub_23B99BB44(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_23BB15FA0()
{
  *(v0 + 16) = 50726403;
  *(v0 + 20) = 33686018;
  *(v0 + 24) = 512;
  *(v0 + 26) = 4;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  *(v0 + 57) = 771;
  *(v0 + 59) = 2;
  *(v0 + 64) = MEMORY[0x277D84FA0];
  v1 = sub_23BBD9828();
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v1);
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_purchaseResult) = 4;
  v11 = v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_purchasedPlanIndex;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = (v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_purchasedProductID);
  *v12 = 0;
  v12[1] = 0;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_usesInAppPurchaseCompletion) = 2;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_usesInAppPurchaseOptions) = 2;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_usesInAppPurchaseStart) = 2;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_didSendAppearEvent) = 0;
  return v0;
}

void sub_23BB160D8()
{
  v1 = OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_didSendAppearEvent;
  if ((*(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_didSendAppearEvent) & 1) == 0)
  {
    sub_23BB16808(&v4);
    if (v5 != 1)
    {
      v10[0] = v4;
      v10[1] = v5;
      v11 = v6;
      v12 = v7;
      v13 = v8;
      v14 = v9;
      *(v0 + v1) = 1;
      if (qword_27E197798 != -1)
      {
        OUTLINED_FUNCTION_6_4(&qword_27E197798);
      }

      v2 = type metadata accessor for SKLogger(0);
      v3 = __swift_project_value_buffer(v2, qword_27E1BFD50);
      sub_23BB139F4(v10, v3);
      sub_23B9846E8(&v4, &qword_27E1A0BB0, &unk_23BBFC8F0);
    }
  }
}

uint64_t sub_23BB1619C()
{
  if ((~*v0 & 0xFLL) != 0)
  {
    v2 = MEMORY[0x277D84F90];
    sub_23B9B8240();
    v4 = v3;
    v5 = *(v3 + 16);
    v6 = *(v3 + 24) >> 1;
    v7 = v5 + 1;
    if (v6 <= v5)
    {
      OUTLINED_FUNCTION_55_3();
      sub_23B9B8240();
      OUTLINED_FUNCTION_69_2();
    }

    *(v4 + 16) = v7;
    *(v4 + v5 + 32) = 0;
    v8 = v5 + 2;
    if (v6 < (v5 + 2))
    {
      OUTLINED_FUNCTION_55_3();
      sub_23B9B8240();
      OUTLINED_FUNCTION_69_2();
    }

    *(v4 + 16) = v8;
    *(v4 + v7 + 32) = 1;
    v9 = v5 + 3;
    if (v6 < (v5 + 3))
    {
      OUTLINED_FUNCTION_55_3();
      sub_23B9B8240();
      OUTLINED_FUNCTION_69_2();
    }

    *(v4 + 16) = v9;
    *(v4 + v8 + 32) = 2;
    v10 = v5 + 4;
    if (v6 < (v5 + 4))
    {
      OUTLINED_FUNCTION_55_3();
      sub_23B9B8240();
      v4 = v14;
    }

    *(v4 + 16) = v10;
    *(v4 + v9 + 32) = 3;
    sub_23BA92CA8();
    v11 = *(v2 + 16);
    v12 = 32;
    do
    {
      v13 = *(v4 + v12);
      if (v11 >= *(v2 + 24) >> 1)
      {
        sub_23BA92CA8();
      }

      *(v2 + 16) = v11 + 1;
      *(v2 + v11 + 32) = v13;
      ++v12;
      ++v11;
      --v10;
    }

    while (v10);

    return sub_23B9B49BC(v2);
  }

  else
  {

    return sub_23BA68424(&unk_284E56FA8);
  }
}

void sub_23BB163B8()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v19 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0BC0, &unk_23BBFDD50);
  OUTLINED_FUNCTION_13_0(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  v13 = v12 - v11;
  v14 = 1;
  v1[22] = sub_23BBD9BD8() & 1;
  v1[20] = sub_23BBD9BD8() & 1;
  if ((sub_23BBD9BD8() & 1) == 0)
  {
    if ((sub_23BBD9BD8() & 1) == 0)
    {
      goto LABEL_5;
    }

    v14 = 0;
  }

  v1[21] = v14;
LABEL_5:
  if (sub_23BBD9BD8())
  {
    v15 = 0;
  }

  else
  {
    v15 = 1;
    if ((sub_23BBD9BD8() & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v1[23] = v15;
LABEL_9:
  if (sub_23BBD9BD8())
  {
    sub_23BAAE9D4(v19, v8, &qword_27E1A0BC0, &unk_23BBFDD50);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_23B9846E8(v8, &qword_27E1A0BC0, &unk_23BBFDD50);
    }

    else
    {
      sub_23BB1A408(v8, v13, type metadata accessor for SubscriptionStorePolicyConfiguration);
      v17 = sub_23BBA9E34(v16);
      sub_23BB1A0E4();
      v1[21] = v17;
    }
  }

  if ((sub_23BBD9BD8() & 1) != 0 && v4 != 2)
  {
    v1[23] = v4;
  }

  OUTLINED_FUNCTION_9_1();
}

void sub_23BB165DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_109();
  a17 = v19;
  a18 = v20;
  v21 = v18;
  v23 = v22;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  OUTLINED_FUNCTION_13_0(v26);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v27);
  v29 = &a9 - v28;
  *(v21 + 24) = v25;
  type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  *(v21 + 57) = sub_23BB16714(v30);
  *(v21 + 58) = sub_23BB16714(v31);
  sub_23BB11D30();
  v33 = v32;
  *(v21 + 19) = (*(*v23 + 96))();
  *(v21 + 32) = v33;
  *(v21 + 40) = 0;
  sub_23BA8CE68();
  v34 = type metadata accessor for Subscription(0);
  v35 = __swift_getEnumTagSinglePayload(v29, 1, v34) != 1;
  sub_23B9846E8(v29, qword_27E197A68, qword_23BBE3D90);
  *(v21 + 25) = v35;
  OUTLINED_FUNCTION_110();
}

uint64_t sub_23BB16714(double a1)
{
  type metadata accessor for SubscriptionStorePolicyConfiguration.Destination(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  v2 = OUTLINED_FUNCTION_6_9();
  sub_23BB1A134(v2, v3, v4);
  OUTLINED_FUNCTION_35_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 0;
    }

    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  sub_23BB1A0E4();
  return v6;
}

char *sub_23BB167DC(char *result)
{
  v2 = *result;
  v3 = *(result + 2);
  if (v3 >= 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x5040300u >> (8 * v3);
  }

  *(v1 + 17) = v4;
  *(v1 + 18) = v2;
  return result;
}

uint64_t sub_23BB16808@<X0>(uint64_t a1@<X8>)
{
  sub_23BB16CE8(v13);
  v2 = v14;
  if (v14 == 1)
  {
    result = 0;
    v2 = 0;
    v4 = 0;
    v5 = 0uLL;
    v6 = 1;
    v7 = 0uLL;
    v8 = 0uLL;
  }

  else
  {
    v11 = v13[1];
    v12 = v13[2];
    v10 = v13[0];
    result = sub_23BB12050(&OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_purchasedProductID);
    v7 = v11;
    v8 = v12;
    v5 = v10;
    v4 = v9 & 0xFFFFFF;
  }

  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 40) = v7;
  *(a1 + 56) = v8;
  *(a1 + 72) = v2;
  return result;
}

uint64_t sub_23BB168C4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198910, &qword_23BBE6290);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for MintDisappearBaseEvent(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BB16CE8(v23);
  v8 = v24;
  if (v24 != 1)
  {
    v25 = v23[0];
    v26 = v23[1];
    v27 = v23[2];
    sub_23B99BF88(1, v4);
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
    {
      sub_23BB1A408(v4, v7, type metadata accessor for MintDisappearBaseEvent);
      v12 = sub_23BB12050(&OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_purchasedProductID);
      v14 = v13;
      v16 = v15;
      v17 = v15 >> 8;
      v18 = HIWORD(v15);
      v19 = type metadata accessor for SubscriptionViewDisappearEvent(0);
      sub_23BB1A408(v7, a1 + *(v19 + 24), type metadata accessor for MintDisappearBaseEvent);
      *a1 = v12;
      *(a1 + 8) = v14;
      *(a1 + 16) = v16;
      *(a1 + 17) = v17;
      *(a1 + 18) = v18;
      v20 = v26;
      *(a1 + 24) = v25;
      *(a1 + 40) = v20;
      *(a1 + 56) = v27;
      *(a1 + 72) = v8;
      v10 = a1;
      v11 = 0;
      v9 = v19;
      return __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
    }

    sub_23B9846E8(v23, &qword_27E1A0BB8, &qword_23BBFC988);
    sub_23B9846E8(v4, &qword_27E198910, &qword_23BBE6290);
  }

  v9 = type metadata accessor for SubscriptionViewDisappearEvent(0);
  v10 = a1;
  v11 = 1;
  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
}

void sub_23BB16AF4()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1988E8, &qword_23BBFC980);
  OUTLINED_FUNCTION_13_0(v3);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_90_0();
  v6 = type metadata accessor for MintViewBasePurchaseEvent(v5);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  sub_23BB16CE8(v25);
  v11 = v26;
  if (v26 != 1)
  {
    v27 = v25[0];
    v28 = v25[1];
    v29 = v25[2];
    sub_23BB125AC(v0);
    if (__swift_getEnumTagSinglePayload(v0, 1, v6) != 1)
    {
      sub_23BB1A408(v0, v10, type metadata accessor for MintViewBasePurchaseEvent);
      v16 = sub_23BB12050(&OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_purchasedProductID);
      v18 = v17;
      v20 = v19;
      v21 = v19 >> 8;
      v22 = HIWORD(v19);
      v23 = type metadata accessor for SubscriptionViewPurchaseEvent(0);
      sub_23BB1A408(v10, v2 + *(v23 + 24), type metadata accessor for MintViewBasePurchaseEvent);
      *v2 = v16;
      *(v2 + 8) = v18;
      *(v2 + 16) = v20;
      *(v2 + 17) = v21;
      *(v2 + 18) = v22;
      v24 = v28;
      *(v2 + 24) = v27;
      *(v2 + 40) = v24;
      *(v2 + 56) = v29;
      *(v2 + 72) = v11;
      v12 = v2;
      v13 = 0;
      v14 = 1;
      v15 = v23;
      goto LABEL_6;
    }

    sub_23B9846E8(v25, &qword_27E1A0BB8, &qword_23BBFC988);
    sub_23B9846E8(v0, &qword_27E1988E8, &qword_23BBFC980);
  }

  type metadata accessor for SubscriptionViewPurchaseEvent(0);
  OUTLINED_FUNCTION_8_1();
LABEL_6:
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_9_1();
}

void sub_23BB16CE8(unint64_t *a1@<X8>)
{
  v5 = *(v1 + 20);
  if (v5 == 2)
  {
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
    }

    v6 = type metadata accessor for SKLogger(0);
    OUTLINED_FUNCTION_16_3(v6, qword_27E1BFC88);
    v7 = sub_23BBD9988();
    if (!OUTLINED_FUNCTION_13_4(v7))
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_12_4();
    v10 = OUTLINED_FUNCTION_3_7(4.8752e-34, v8, v9);
    OUTLINED_FUNCTION_22_16(v10);
    v11 = 0xD00000000000003DLL;
    goto LABEL_11;
  }

  v12 = *(v1 + 22);
  if (v12 == 2)
  {
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
    }

    v13 = type metadata accessor for SKLogger(0);
    OUTLINED_FUNCTION_16_3(v13, qword_27E1BFC88);
    v14 = sub_23BBD9988();
    if (!OUTLINED_FUNCTION_13_4(v14))
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_12_4();
    v17 = OUTLINED_FUNCTION_3_7(4.8752e-34, v15, v16);
    OUTLINED_FUNCTION_22_16(v17);
    v11 = 0xD000000000000043;
    goto LABEL_11;
  }

  v28 = *(v1 + 26);
  if (v28 == 4)
  {
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
    }

    v29 = type metadata accessor for SKLogger(0);
    OUTLINED_FUNCTION_16_3(v29, qword_27E1BFC88);
    v30 = sub_23BBD9988();
    if (!OUTLINED_FUNCTION_13_4(v30))
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_12_4();
    v33 = OUTLINED_FUNCTION_3_7(4.8752e-34, v31, v32);
    OUTLINED_FUNCTION_22_16(v33);
    v18 = v3 | 0x8000000000000000;
    v11 = 0xD000000000000036;
    goto LABEL_12;
  }

  v34 = *(v1 + 59);
  if (v34 == 2)
  {
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
    }

    v35 = type metadata accessor for SKLogger(0);
    OUTLINED_FUNCTION_16_3(v35, qword_27E1BFC88);
    v36 = sub_23BBD9988();
    if (!OUTLINED_FUNCTION_13_4(v36))
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_12_4();
    v39 = OUTLINED_FUNCTION_3_7(4.8752e-34, v37, v38);
    OUTLINED_FUNCTION_22_16(v39);
    v11 = 0xD000000000000045;
LABEL_11:
    v18 = v3 | 0x8000000000000000;
LABEL_12:
    *(v2 + 14) = sub_23BA5AB90(v11, v18, &v51);
    OUTLINED_FUNCTION_18_4(&dword_23B970000, v19, v20, "%{public}s%{public}s");
    OUTLINED_FUNCTION_85_0();
    OUTLINED_FUNCTION_24_14();
    OUTLINED_FUNCTION_15_3();
LABEL_13:

    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 1;
    goto LABEL_14;
  }

  v40 = *(v1 + 19);
  v41 = *(v1 + 21);
  v42 = *(v1 + 23);
  v43 = *(v1 + 24);
  v44 = *(v1 + 25);
  v23 = *(v1 + 32);
  v25 = *(v1 + 48);
  v45 = *(v1 + 56);
  v46 = *(v1 + 57);
  v47 = *(v1 + 58);
  v48 = v12 & 1;
  LOBYTE(v51) = *(v1 + 40);
  v49 = (*(v1 + 17) | (v40 << 16)) & 0xFFFFFFFFFEFFFFFFLL | ((v5 & 1) << 24) | (v41 << 32);
  v50 = 0x100000000000000;
  if (!v43)
  {
    v50 = 0;
  }

  v21 = v50 | (v42 << 48) | v49 | (v48 << 40);
  v22 = v44 | (v28 << 8);
  v24 = v51;
  v26 = ((v46 << 8) | (v47 << 16)) & 0xFFFFFFFFFEFFFFFFLL | v45 | ((v34 & 1) << 24);

LABEL_14:
  *a1 = v21;
  a1[1] = v22;
  a1[2] = v23;
  a1[3] = v24;
  a1[4] = v25;
  a1[5] = v26;
  a1[6] = v27;
}

uint64_t sub_23BB1702C()
{
  sub_23BB1A090();
  sub_23BBDA958();
  return v1;
}

uint64_t sub_23BB170A4(uint64_t a1)
{
  v16 = sub_23BA98A8C(a1);
  sub_23BB17568(&v16);
  v1 = v16;
  v2 = *(v16 + 16);
  if (v2)
  {
    v16 = MEMORY[0x277D84F90];
    sub_23BA92BE8();
    v3 = 32;
    v4 = v16;
    OUTLINED_FUNCTION_91();
    OUTLINED_FUNCTION_89_0();
    do
    {
      v8 = 0xE700000000000000;
      v9 = 0x746E6572727563;
      switch(*(v1 + v3))
      {
        case 1:
          v8 = 0xE900000000000065;
          v9 = v5;
          break;
        case 2:
          v8 = 0xEA00000000006564;
          v9 = v6;
          break;
        case 3:
          v9 = v7;
          break;
        case 4:
          v8 = 0xE300000000000000;
          v9 = 7105633;
          break;
        default:
          break;
      }

      v16 = v4;
      v10 = *(v4 + 16);
      if (v10 >= *(v4 + 24) >> 1)
      {
        sub_23BA92BE8();
        OUTLINED_FUNCTION_89_0();
        OUTLINED_FUNCTION_91();
        v4 = v16;
      }

      *(v4 + 16) = v10 + 1;
      v11 = v4 + 16 * v10;
      *(v11 + 32) = v9;
      *(v11 + 40) = v8;
      ++v3;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  v16 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19B730, &qword_23BBF4A30);
  sub_23BB18DC0();
  v12 = sub_23BBDCEA8();
  v14 = v13;

  if (sub_23B9D4CA8(v12, v14))
  {

    return 0;
  }

  return v12;
}

uint64_t sub_23BB172D0(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = 0x746E6572727563;
  v3 = *a1;
  v4 = 0xE700000000000000;
  v5 = 0x746E6572727563;
  switch(v3)
  {
    case 1:
      v5 = 0x646172676E776F64;
      v4 = 0xE900000000000065;
      break;
    case 2:
      v5 = 0x61726773736F7263;
      v4 = 0xEA00000000006564;
      break;
    case 3:
      v5 = 0x65646172677075;
      break;
    case 4:
      v4 = 0xE300000000000000;
      v5 = 7105633;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(*a2)
  {
    case 1:
      v2 = 0x646172676E776F64;
      v6 = 0xE900000000000065;
      break;
    case 2:
      v2 = 0x61726773736F7263;
      v6 = 0xEA00000000006564;
      break;
    case 3:
      v2 = 0x65646172677075;
      break;
    case 4:
      v6 = 0xE300000000000000;
      v2 = 7105633;
      break;
    default:
      break;
  }

  if (v5 == v2 && v4 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_23BBDDA88();
  }

  return v8 & 1;
}

uint64_t sub_23BB17478(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_8_10(v3);
  *v4 = v5;
  v4[1] = sub_23BA02140;

  return v7(a1);
}

uint64_t sub_23BB17568(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_23B9BC800();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_23BB175D4(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_23BB175D4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23BBDDA18();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_23BBDD288();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_23BB17908(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_23BB176C8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23BB176C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + a3);
    v7 = result - a3;
    do
    {
      v8 = *(v5 + v4);
      v9 = v7;
      v18 = v6;
      while (1)
      {
        v10 = 0xE700000000000000;
        v11 = 0x746E6572727563;
        switch(v8)
        {
          case 1:
            v11 = 0x646172676E776F64;
            v10 = 0xE900000000000065;
            break;
          case 2:
            v11 = 0x61726773736F7263;
            v10 = 0xEA00000000006564;
            break;
          case 3:
            v11 = 0x65646172677075;
            break;
          case 4:
            v10 = 0xE300000000000000;
            v11 = 7105633;
            break;
          default:
            break;
        }

        v12 = 0xE700000000000000;
        v13 = 0x746E6572727563;
        switch(*(v6 - 1))
        {
          case 1:
            v13 = 0x646172676E776F64;
            v12 = 0xE900000000000065;
            break;
          case 2:
            v13 = 0x61726773736F7263;
            v12 = 0xEA00000000006564;
            break;
          case 3:
            v13 = 0x65646172677075;
            break;
          case 4:
            v12 = 0xE300000000000000;
            v13 = 7105633;
            break;
          default:
            break;
        }

        if (v11 == v13 && v10 == v12)
        {
          break;
        }

        v15 = sub_23BBDDA88();

        if (v15)
        {
          if (!v5)
          {
            __break(1u);
            JUMPOUT(0x23BB178E0);
          }

          v8 = *v6;
          *v6 = *(v6 - 1);
          *--v6 = v8;
          if (!__CFADD__(v9++, 1))
          {
            continue;
          }
        }

        goto LABEL_24;
      }

LABEL_24:
      ++v4;
      v6 = v18 + 1;
      --v7;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t sub_23BB17908(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v7 + 1) >= v6)
      {
        v6 = (v7 + 1);
      }

      else
      {
        v9 = *a3;
        v102 = v7[*a3 + 1];
        v101 = v7[v9];
        v10 = sub_23BB172D0(&v102, &v101);
        if (v5)
        {
        }

        v11 = v10;
        __dst = v7;
        while ((v7 + 2) < v6)
        {
          v12 = 0xE700000000000000;
          v13 = 0x746E6572727563;
          switch(v7[v9 + 2])
          {
            case 1:
              v13 = 0x646172676E776F64;
              v12 = 0xE900000000000065;
              break;
            case 2:
              v13 = 0x61726773736F7263;
              v12 = 0xEA00000000006564;
              break;
            case 3:
              v13 = 0x65646172677075;
              break;
            case 4:
              v12 = 0xE300000000000000;
              v13 = 7105633;
              break;
            default:
              break;
          }

          v14 = 0xE700000000000000;
          v15 = 0x746E6572727563;
          switch(v7[v9 + 1])
          {
            case 1:
              v15 = 0x646172676E776F64;
              v14 = 0xE900000000000065;
              break;
            case 2:
              v15 = 0x61726773736F7263;
              v14 = 0xEA00000000006564;
              break;
            case 3:
              v15 = 0x65646172677075;
              break;
            case 4:
              v14 = 0xE300000000000000;
              v15 = 7105633;
              break;
            default:
              break;
          }

          if (v13 == v15 && v12 == v14)
          {

            if (v11)
            {
              v20 = (v7 + 1);
              v6 = (v7 + 2);
              v7 = __dst;
              goto LABEL_30;
            }
          }

          else
          {
            v17 = v5;
            v18 = sub_23BBDDA88();

            v19 = v11 ^ v18;
            v5 = v17;
            if (v19)
            {
              v20 = (v7 + 1);
              v6 = (v7 + 2);
              goto LABEL_27;
            }
          }

          ++v7;
        }

        v20 = v6 - 1;
LABEL_27:
        v7 = __dst;
        if ((v11 & 1) == 0)
        {
          goto LABEL_37;
        }

LABEL_30:
        if (v6 < v7)
        {
          goto LABEL_153;
        }

        if (v7 <= v20)
        {
          v21 = v6 - 1;
          v22 = v7;
          do
          {
            if (v22 != v21)
            {
              v23 = *a3;
              if (!*a3)
              {
                goto LABEL_160;
              }

              v24 = v22[v23];
              v22[v23] = *(v23 + v21);
              *(v23 + v21) = v24;
            }

            v25 = ++v22 < v21--;
          }

          while (v25);
        }
      }

LABEL_37:
      v26 = a3[1];
      if (v6 < v26)
      {
        if (__OFSUB__(v6, v7))
        {
          goto LABEL_152;
        }

        if (v6 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_154;
          }

          if (&v7[a4] < v26)
          {
            v26 = &v7[a4];
          }

          if (v26 < v7)
          {
LABEL_155:
            __break(1u);
            goto LABEL_156;
          }

          if (v6 != v26)
          {
            v97 = v26;
            v93 = v8;
            v94 = v5;
            v27 = v7;
            v28 = *a3;
            v29 = (*a3 + v6);
            __dst = v27;
            v30 = &v27[-v6];
            do
            {
              v31 = *(v28 + v6);
              v32 = v30;
              v33 = v29;
              while (1)
              {
                v34 = 0xE700000000000000;
                v35 = 0x746E6572727563;
                switch(v31)
                {
                  case 1:
                    v35 = 0x646172676E776F64;
                    v34 = 0xE900000000000065;
                    break;
                  case 2:
                    v35 = 0x61726773736F7263;
                    v34 = 0xEA00000000006564;
                    break;
                  case 3:
                    v35 = 0x65646172677075;
                    break;
                  case 4:
                    v34 = 0xE300000000000000;
                    v35 = 7105633;
                    break;
                  default:
                    break;
                }

                v36 = 0xE700000000000000;
                v37 = 0x746E6572727563;
                switch(*(v33 - 1))
                {
                  case 1:
                    v37 = 0x646172676E776F64;
                    v36 = 0xE900000000000065;
                    break;
                  case 2:
                    v37 = 0x61726773736F7263;
                    v36 = 0xEA00000000006564;
                    break;
                  case 3:
                    v37 = 0x65646172677075;
                    break;
                  case 4:
                    v36 = 0xE300000000000000;
                    v37 = 7105633;
                    break;
                  default:
                    break;
                }

                if (v35 == v37 && v34 == v36)
                {
                  break;
                }

                v39 = sub_23BBDDA88();

                if ((v39 & 1) == 0)
                {
                  goto LABEL_67;
                }

                if (!v28)
                {
                  __break(1u);
LABEL_158:
                  __break(1u);
LABEL_159:
                  __break(1u);
LABEL_160:
                  __break(1u);
LABEL_161:
                  __break(1u);
LABEL_162:
                  __break(1u);
                  JUMPOUT(0x23BB18174);
                }

                v31 = *v33;
                *v33 = *(v33 - 1);
                *--v33 = v31;
                if (__CFADD__(v32++, 1))
                {
                  goto LABEL_67;
                }
              }

LABEL_67:
              ++v6;
              ++v29;
              --v30;
            }

            while (v6 != v97);
            v8 = v93;
            v5 = v94;
            v6 = v97;
            v7 = __dst;
          }
        }
      }

      if (v6 < v7)
      {
        goto LABEL_151;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23B9B7D34();
        v8 = v83;
      }

      v41 = *(v8 + 2);
      v42 = v41 + 1;
      if (v41 >= *(v8 + 3) >> 1)
      {
        sub_23B9B7D34();
        v8 = v84;
      }

      *(v8 + 2) = v42;
      v43 = v8 + 32;
      v44 = &v8[16 * v41 + 32];
      *v44 = v7;
      *(v44 + 1) = v6;
      __dst = *a1;
      if (!*a1)
      {
        goto LABEL_161;
      }

      v98 = v6;
      if (v41)
      {
        while (1)
        {
          v45 = v42 - 1;
          v46 = &v43[16 * v42 - 16];
          v47 = &v8[16 * v42];
          if (v42 >= 4)
          {
            break;
          }

          if (v42 == 3)
          {
            v48 = *(v8 + 4);
            v49 = *(v8 + 5);
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
LABEL_89:
            if (v51)
            {
              goto LABEL_138;
            }

            v63 = *v47;
            v62 = *(v47 + 1);
            v64 = __OFSUB__(v62, v63);
            v65 = v62 - v63;
            v66 = v64;
            if (v64)
            {
              goto LABEL_141;
            }

            v67 = *(v46 + 1);
            v68 = v67 - *v46;
            if (__OFSUB__(v67, *v46))
            {
              goto LABEL_144;
            }

            if (__OFADD__(v65, v68))
            {
              goto LABEL_146;
            }

            if (v65 + v68 >= v50)
            {
              if (v50 < v68)
              {
                v45 = v42 - 2;
              }

              goto LABEL_111;
            }

            goto LABEL_104;
          }

          if (v42 < 2)
          {
            goto LABEL_140;
          }

          v70 = *v47;
          v69 = *(v47 + 1);
          v58 = __OFSUB__(v69, v70);
          v65 = v69 - v70;
          v66 = v58;
LABEL_104:
          if (v66)
          {
            goto LABEL_143;
          }

          v72 = *v46;
          v71 = *(v46 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_145;
          }

          if (v73 < v65)
          {
            goto LABEL_118;
          }

LABEL_111:
          if (v45 - 1 >= v42)
          {
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
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
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
            goto LABEL_155;
          }

          if (!*a3)
          {
            goto LABEL_158;
          }

          v77 = v8;
          v78 = &v43[16 * v45 - 16];
          v79 = *v78;
          v80 = v45;
          v81 = &v43[16 * v45];
          v8 = *(v81 + 1);
          sub_23BB181C4((*a3 + *v78), (*a3 + *v81), &v8[*a3], __dst);
          if (v5)
          {
          }

          if (v8 < v79)
          {
            goto LABEL_133;
          }

          v5 = *(v77 + 2);
          if (v80 > v5)
          {
            goto LABEL_134;
          }

          *v78 = v79;
          v78[1] = v8;
          if (v80 >= v5)
          {
            goto LABEL_135;
          }

          v82 = v80;
          v42 = v5 - 1;
          sub_23B9BD698(v81 + 16, v5 - 1 - v82, v81);
          v8 = v77;
          *(v77 + 2) = v5 - 1;
          v25 = v5 > 2;
          v5 = 0;
          if (!v25)
          {
            goto LABEL_118;
          }
        }

        v52 = &v43[16 * v42];
        v53 = *(v52 - 8);
        v54 = *(v52 - 7);
        v58 = __OFSUB__(v54, v53);
        v55 = v54 - v53;
        if (v58)
        {
          goto LABEL_136;
        }

        v57 = *(v52 - 6);
        v56 = *(v52 - 5);
        v58 = __OFSUB__(v56, v57);
        v50 = v56 - v57;
        v51 = v58;
        if (v58)
        {
          goto LABEL_137;
        }

        v59 = *(v47 + 1);
        v60 = v59 - *v47;
        if (__OFSUB__(v59, *v47))
        {
          goto LABEL_139;
        }

        v58 = __OFADD__(v50, v60);
        v61 = v50 + v60;
        if (v58)
        {
          goto LABEL_142;
        }

        if (v61 >= v55)
        {
          v75 = *v46;
          v74 = *(v46 + 1);
          v58 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v58)
          {
            goto LABEL_150;
          }

          if (v50 < v76)
          {
            v45 = v42 - 2;
          }

          goto LABEL_111;
        }

        goto LABEL_89;
      }

LABEL_118:
      v6 = a3[1];
      v7 = v98;
      if (v98 >= v6)
      {
        goto LABEL_121;
      }
    }
  }

  v8 = MEMORY[0x277D84F90];
LABEL_121:
  __dst = *a1;
  if (!*a1)
  {
    goto LABEL_162;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_156:
    v8 = sub_23B9BD684(v8);
  }

  v85 = v8 + 16;
  v86 = *(v8 + 2);
  while (v86 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_159;
    }

    v87 = v8;
    v88 = &v8[16 * v86];
    v89 = *v88;
    v8 = &v85[2 * v86];
    v90 = *(v8 + 1);
    sub_23BB181C4((*a3 + *v88), (*a3 + *v8), (*a3 + v90), __dst);
    if (v5)
    {
      break;
    }

    if (v90 < v89)
    {
      goto LABEL_147;
    }

    if (v86 - 2 >= *v85)
    {
      goto LABEL_148;
    }

    *v88 = v89;
    *(v88 + 1) = v90;
    v91 = *v85 - v86;
    if (*v85 < v86)
    {
      goto LABEL_149;
    }

    v86 = *v85 - 1;
    sub_23B9BD698(v8 + 16, v91, v8);
    *v85 = v86;
    v8 = v87;
  }
}

uint64_t sub_23BB181C4(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a3 - a2;
  if (a2 - __src < a3 - a2)
  {
    sub_23B9B8820(__src, a2 - __src, __dst);
    v10 = &v4[v8];
    while (1)
    {
      v11 = v4 >= v10 || v6 >= v5;
      if (v11)
      {
        v6 = v7;
        goto LABEL_73;
      }

      v12 = 0xE700000000000000;
      v13 = 0x746E6572727563;
      switch(*v6)
      {
        case 1:
          v13 = 0x646172676E776F64;
          v12 = 0xE900000000000065;
          break;
        case 2:
          v13 = 0x61726773736F7263;
          v12 = 0xEA00000000006564;
          break;
        case 3:
          v13 = 0x65646172677075;
          break;
        case 4:
          v12 = 0xE300000000000000;
          v13 = 7105633;
          break;
        default:
          break;
      }

      v14 = 0xE700000000000000;
      v15 = 0x746E6572727563;
      switch(*v4)
      {
        case 1:
          v15 = 0x646172676E776F64;
          v14 = 0xE900000000000065;
          break;
        case 2:
          v15 = 0x61726773736F7263;
          v14 = 0xEA00000000006564;
          break;
        case 3:
          v15 = 0x65646172677075;
          break;
        case 4:
          v14 = 0xE300000000000000;
          v15 = 7105633;
          break;
        default:
          break;
      }

      if (v13 == v15 && v12 == v14)
      {
      }

      else
      {
        v17 = sub_23BBDDA88();

        if (v17)
        {
          v11 = v7 >= v6;
          v18 = v6++;
          if (!v11 || v7 >= v6)
          {
            goto LABEL_33;
          }

          goto LABEL_34;
        }
      }

      v11 = v7 >= v4;
      v18 = v4++;
      if (!v11 || v7 >= v4)
      {
LABEL_33:
        *v7 = *v18;
      }

LABEL_34:
      ++v7;
    }
  }

  sub_23B9B8820(a2, a3 - a2, __dst);
  v10 = &v4[v9];
  v33 = v7;
LABEL_36:
  v21 = v6 - 1;
  --v5;
  v34 = v6;
  while (v10 > v4 && v6 > v7)
  {
    v23 = 0xE700000000000000;
    v24 = 0x746E6572727563;
    switch(*(v10 - 1))
    {
      case 1:
        v24 = 0x646172676E776F64;
        v23 = 0xE900000000000065;
        break;
      case 2:
        v24 = 0x61726773736F7263;
        v23 = 0xEA00000000006564;
        break;
      case 3:
        v24 = 0x65646172677075;
        break;
      case 4:
        v23 = 0xE300000000000000;
        v24 = 7105633;
        break;
      default:
        break;
    }

    v25 = 0xE700000000000000;
    v26 = 0x746E6572727563;
    switch(*v21)
    {
      case 1:
        v26 = 0x646172676E776F64;
        v25 = 0xE900000000000065;
        break;
      case 2:
        v26 = 0x61726773736F7263;
        v25 = 0xEA00000000006564;
        break;
      case 3:
        v26 = 0x65646172677075;
        break;
      case 4:
        v25 = 0xE300000000000000;
        v26 = 7105633;
        break;
      default:
        break;
    }

    if (v24 == v26 && v23 == v25)
    {
    }

    else
    {
      v28 = sub_23BBDDA88();

      if (v28)
      {
        v30 = (v5 + 1) < v34 || v5 >= v34;
        v6 = v21;
        v7 = v33;
        if (v30)
        {
          *v5 = *v21;
          v6 = v21;
        }

        goto LABEL_36;
      }
    }

    if ((v5 + 1) < v10 || v5 >= v10)
    {
      *v5 = *(v10 - 1);
    }

    --v5;
    --v10;
    v6 = v34;
    v7 = v33;
  }

LABEL_73:
  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}

uint64_t sub_23BB18670(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  v10 = a4[1];
  *(v5 + 16) = *a4;
  *(v5 + 32) = v10;
  *(v5 + 48) = a4[2];
  *(v5 + 59) = *(a4 + 43);
  v11 = swift_task_alloc();
  *(v5 + 80) = v11;
  *v11 = v5;
  v11[1] = sub_23BB18744;

  return sub_23BB14A24(a1, a2, a3, v5 + 16, a5);
}

uint64_t sub_23BB18744()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v1 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v2 = v1;

  OUTLINED_FUNCTION_1_16();

  return v3();
}

uint64_t sub_23BB18824(uint64_t a1, uint64_t a2, uint64_t a3, void *__src, uint64_t a5)
{
  memcpy((v5 + 16), __src, 0x50uLL);
  v10 = swift_task_alloc();
  *(v5 + 96) = v10;
  *v10 = v5;
  v10[1] = sub_23BB188F0;

  return sub_23BB1503C(a1, a2, a3, v5 + 16, a5);
}

uint64_t sub_23BB188F0()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v1 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v2 = v1;

  OUTLINED_FUNCTION_1_16();

  return v3();
}

uint64_t sub_23BB189D0()
{
  v1 = type metadata accessor for SKLogger(0);
  OUTLINED_FUNCTION_25_0(v1);
  v3 = (*(v2 + 80) + 112) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  sub_23BBD99A8();
  OUTLINED_FUNCTION_12_1();
  (*(v4 + 8))(v0 + v3);

  return swift_deallocObject();
}

uint64_t sub_23BB18AA0(uint64_t a1)
{
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_41_0();
  v1 = OUTLINED_FUNCTION_15_8();
  v2 = type metadata accessor for SKLogger(v1);
  OUTLINED_FUNCTION_13_0(v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_8_10(v3);
  *v4 = v5;
  v4[1] = sub_23BA027BC;
  OUTLINED_FUNCTION_36_3();
  OUTLINED_FUNCTION_97_0();

  return v11(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_23BB18BDC()
{

  return swift_deallocObject();
}

uint64_t sub_23BB18C14(uint64_t a1)
{
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_8_10(v1);
  *v2 = v3;
  v2[1] = sub_23BA027BC;
  OUTLINED_FUNCTION_36_3();

  return v4();
}

uint64_t sub_23BB18CC0(uint64_t a1)
{
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_8_10(v1);
  *v2 = v3;
  v2[1] = sub_23B9F3414;
  OUTLINED_FUNCTION_36_3();

  return v4();
}

uint64_t sub_23BB18D6C()
{

  OUTLINED_FUNCTION_40_6();

  return swift_deallocObject();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23BB18DC0()
{
  result = qword_27E1A0890[0];
  if (!qword_27E1A0890[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E19B730, &qword_23BBF4A30);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E1A0890);
  }

  return result;
}

uint64_t sub_23BB18E24@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23BA8CE60(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_23BB18E50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B70, &qword_23BBFC930);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BB18EC0()
{
  OUTLINED_FUNCTION_10_0();
  type metadata accessor for SubscriptionViewPurchaseEvent(0);
  OUTLINED_FUNCTION_8_3();
  v2 = *(v1 + 80);
  v4 = *(v3 + 64);
  v5 = type metadata accessor for SKLogger(0);
  OUTLINED_FUNCTION_25_0(v5);
  v7 = (((v2 + 32) & ~v2) + v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_83_1();
  OUTLINED_FUNCTION_4_1();
  v9 = *(v8 + 8);
  v10 = OUTLINED_FUNCTION_35_0();
  v9(v10);
  v11 = type metadata accessor for MintViewBasePurchaseEvent(0);
  v12 = OUTLINED_FUNCTION_43_5(v11);
  v9(v12);
  OUTLINED_FUNCTION_82_1();
  sub_23BBD99A8();
  OUTLINED_FUNCTION_12_1();
  (*(v13 + 8))(v0 + v7);
  OUTLINED_FUNCTION_9_1();

  return swift_deallocObject();
}

uint64_t sub_23BB19038(uint64_t a1)
{
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_41_0();
  v1 = OUTLINED_FUNCTION_19_20();
  v2 = type metadata accessor for SubscriptionViewPurchaseEvent(v1);
  OUTLINED_FUNCTION_25_0(v2);
  v3 = type metadata accessor for SKLogger(0);
  OUTLINED_FUNCTION_13_0(v3);
  OUTLINED_FUNCTION_11_22();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_18_16(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_4_32(v5);
  OUTLINED_FUNCTION_97_0();

  return sub_23BB151C4(v7, v8, v9, v10, v11);
}

uint64_t sub_23BB1913C()
{
  OUTLINED_FUNCTION_10_0();
  type metadata accessor for ProductViewAppearanceEvent(0);
  OUTLINED_FUNCTION_8_3();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for SKLogger(0);
  OUTLINED_FUNCTION_25_0(v6);
  v8 = *(v7 + 80);
  swift_unknownObjectRelease();

  v9 = *(v0 + 28);
  v10 = v9 + *(type metadata accessor for ProductViewBaseEvent(0) + 24);
  v11 = sub_23BBDC8A8();
  if (!__swift_getEnumTagSinglePayload(v1 + v3 + v10, 1, v11))
  {
    OUTLINED_FUNCTION_1_4();
    (*(v12 + 8))(v1 + v3 + v10, v11);
  }

  sub_23BBD99A8();
  OUTLINED_FUNCTION_12_1();
  (*(v13 + 8))(v1 + ((v3 + v5 + v8) & ~v8));
  OUTLINED_FUNCTION_9_1();

  return swift_deallocObject();
}

uint64_t sub_23BB192C0(uint64_t a1)
{
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_41_0();
  v1 = OUTLINED_FUNCTION_19_20();
  v2 = type metadata accessor for ProductViewAppearanceEvent(v1);
  OUTLINED_FUNCTION_25_0(v2);
  v3 = type metadata accessor for SKLogger(0);
  OUTLINED_FUNCTION_13_0(v3);
  OUTLINED_FUNCTION_11_22();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_18_16(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_4_32(v5);
  OUTLINED_FUNCTION_97_0();

  return sub_23BB15774(v7, v8, v9, v10, v11);
}

uint64_t sub_23BB193C4()
{
  OUTLINED_FUNCTION_10_0();
  type metadata accessor for StoreViewPurchaseEvent(0);
  OUTLINED_FUNCTION_19_0();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = type metadata accessor for SKLogger(0);
  OUTLINED_FUNCTION_25_0(v4);
  swift_unknownObjectRelease();

  v5 = *(v0 + 24);
  v6 = v5 + *(type metadata accessor for ProductViewBaseEvent(0) + 24);
  v7 = sub_23BBDC8A8();
  if (!OUTLINED_FUNCTION_102(v7))
  {
    OUTLINED_FUNCTION_1_4();
    (*(v8 + 8))(v1 + v3 + v6, v5);
  }

  OUTLINED_FUNCTION_87_0();
  sub_23BBD9828();
  OUTLINED_FUNCTION_4_1();
  v10 = *(v9 + 8);
  v11 = OUTLINED_FUNCTION_35_0();
  v10(v11);
  v12 = type metadata accessor for MintViewBasePurchaseEvent(0);
  v13 = OUTLINED_FUNCTION_43_5(v12);
  v10(v13);
  OUTLINED_FUNCTION_82_1();
  sub_23BBD99A8();
  OUTLINED_FUNCTION_12_1();
  (*(v14 + 8))(v1 + v3);
  OUTLINED_FUNCTION_9_1();

  return swift_deallocObject();
}

uint64_t sub_23BB19580(uint64_t a1)
{
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_41_0();
  v1 = OUTLINED_FUNCTION_19_20();
  v2 = type metadata accessor for StoreViewPurchaseEvent(v1);
  OUTLINED_FUNCTION_25_0(v2);
  v3 = type metadata accessor for SKLogger(0);
  OUTLINED_FUNCTION_13_0(v3);
  OUTLINED_FUNCTION_11_22();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_18_16(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_4_32(v5);
  OUTLINED_FUNCTION_97_0();

  return sub_23BB14D34(v7, v8, v9, v10, v11);
}

uint64_t sub_23BB19684()
{
  OUTLINED_FUNCTION_10_0();
  type metadata accessor for ProductViewPurchaseEvent(0);
  OUTLINED_FUNCTION_19_0();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = type metadata accessor for SKLogger(0);
  OUTLINED_FUNCTION_25_0(v4);
  swift_unknownObjectRelease();

  v5 = *(v0 + 20);
  v6 = v5 + *(type metadata accessor for ProductViewBaseEvent(0) + 24);
  v7 = sub_23BBDC8A8();
  if (!OUTLINED_FUNCTION_102(v7))
  {
    OUTLINED_FUNCTION_1_4();
    (*(v8 + 8))(v1 + v3 + v6, v5);
  }

  OUTLINED_FUNCTION_87_0();
  sub_23BBD9828();
  OUTLINED_FUNCTION_4_1();
  v10 = *(v9 + 8);
  v11 = OUTLINED_FUNCTION_35_0();
  v10(v11);
  v12 = type metadata accessor for MintViewBasePurchaseEvent(0);
  v13 = OUTLINED_FUNCTION_43_5(v12);
  v10(v13);
  OUTLINED_FUNCTION_82_1();
  sub_23BBD99A8();
  OUTLINED_FUNCTION_12_1();
  (*(v14 + 8))(v1 + v3);
  OUTLINED_FUNCTION_9_1();

  return swift_deallocObject();
}

uint64_t sub_23BB19840(uint64_t a1)
{
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_41_0();
  v1 = OUTLINED_FUNCTION_19_20();
  v2 = type metadata accessor for ProductViewPurchaseEvent(v1);
  OUTLINED_FUNCTION_25_0(v2);
  v3 = type metadata accessor for SKLogger(0);
  OUTLINED_FUNCTION_13_0(v3);
  OUTLINED_FUNCTION_11_22();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_18_16(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_4_32(v5);
  OUTLINED_FUNCTION_97_0();

  return sub_23BB15B54(v7, v8, v9, v10, v11);
}

uint64_t sub_23BB19944()
{
  v1 = type metadata accessor for SKLogger(0);
  OUTLINED_FUNCTION_25_0(v1);
  v3 = (*(v2 + 80) + 91) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  sub_23BBD99A8();
  OUTLINED_FUNCTION_12_1();
  (*(v4 + 8))(v0 + v3);

  return swift_deallocObject();
}

uint64_t sub_23BB19A0C(uint64_t a1)
{
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_41_0();
  v1 = OUTLINED_FUNCTION_15_8();
  v2 = type metadata accessor for SKLogger(v1);
  OUTLINED_FUNCTION_13_0(v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_8_10(v3);
  *v4 = v5;
  v4[1] = sub_23BA027BC;
  OUTLINED_FUNCTION_36_3();
  OUTLINED_FUNCTION_97_0();

  return v11(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_23BB19B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_109();
  type metadata accessor for StoreViewDisappearEvent(0);
  OUTLINED_FUNCTION_8_3();
  v5 = *(v4 + 80);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for SKLogger(0);
  OUTLINED_FUNCTION_25_0(v8);
  v10 = (((v5 + 32) & ~v5) + v7 + *(v9 + 80)) & ~*(v9 + 80);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_83_1();
  OUTLINED_FUNCTION_4_1();
  v12 = *(v11 + 8);
  v13 = OUTLINED_FUNCTION_35_0();
  v12(v13);
  v14 = type metadata accessor for MintDisappearBaseEvent(0);
  v15 = OUTLINED_FUNCTION_66_1(v14);
  v12(v15);
  sub_23BBD99A8();
  OUTLINED_FUNCTION_12_1();
  (*(v16 + 8))(v3 + v10);
  OUTLINED_FUNCTION_110();

  return swift_deallocObject();
}

uint64_t sub_23BB19CB4(uint64_t a1)
{
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_41_0();
  v1 = OUTLINED_FUNCTION_19_20();
  v2 = type metadata accessor for StoreViewDisappearEvent(v1);
  OUTLINED_FUNCTION_25_0(v2);
  v3 = type metadata accessor for SKLogger(0);
  OUTLINED_FUNCTION_13_0(v3);
  OUTLINED_FUNCTION_11_22();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_18_16(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_4_32(v5);
  OUTLINED_FUNCTION_97_0();

  return sub_23BB14BAC(v7, v8, v9, v10, v11);
}

uint64_t sub_23BB19DB8()
{
  OUTLINED_FUNCTION_10_0();
  type metadata accessor for ProductViewDisappearEvent(0);
  OUTLINED_FUNCTION_19_0();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for SKLogger(0);
  OUTLINED_FUNCTION_25_0(v6);
  v8 = *(v7 + 80);
  swift_unknownObjectRelease();

  v9 = *(v0 + 20);
  v10 = v9 + *(type metadata accessor for ProductViewBaseEvent(0) + 24);
  v11 = sub_23BBDC8A8();
  if (!__swift_getEnumTagSinglePayload(v1 + v3 + v10, 1, v11))
  {
    OUTLINED_FUNCTION_1_4();
    (*(v12 + 8))(v1 + v3 + v10, v11);
  }

  v13 = (v3 + v5 + v8) & ~v8;
  sub_23BBD9828();
  OUTLINED_FUNCTION_4_1();
  v15 = *(v14 + 8);
  v16 = OUTLINED_FUNCTION_35_0();
  v15(v16);
  v17 = type metadata accessor for MintDisappearBaseEvent(0);
  v18 = OUTLINED_FUNCTION_66_1(v17);
  v15(v18);
  sub_23BBD99A8();
  OUTLINED_FUNCTION_12_1();
  (*(v19 + 8))(v1 + v13);
  OUTLINED_FUNCTION_9_1();

  return swift_deallocObject();
}

uint64_t sub_23BB19F8C(uint64_t a1)
{
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_41_0();
  v1 = OUTLINED_FUNCTION_19_20();
  v2 = type metadata accessor for ProductViewDisappearEvent(v1);
  OUTLINED_FUNCTION_25_0(v2);
  v3 = type metadata accessor for SKLogger(0);
  OUTLINED_FUNCTION_13_0(v3);
  OUTLINED_FUNCTION_11_22();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_18_16(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_4_32(v5);
  OUTLINED_FUNCTION_97_0();

  return sub_23BB1534C(v7, v8, v9, v10, v11);
}

unint64_t sub_23BB1A090()
{
  result = qword_27E1A0BC8;
  if (!qword_27E1A0BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0BC8);
  }

  return result;
}

uint64_t sub_23BB1A0E4()
{
  v1 = OUTLINED_FUNCTION_15_8();
  v2(v1);
  OUTLINED_FUNCTION_12_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_23BB1A134(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_17_0();
  v5(v4);
  return a2;
}

uint64_t sub_23BB1A190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_109();
  type metadata accessor for SubscriptionViewDisappearEvent(0);
  OUTLINED_FUNCTION_8_3();
  v5 = *(v4 + 80);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for SKLogger(0);
  OUTLINED_FUNCTION_25_0(v8);
  v10 = (((v5 + 32) & ~v5) + v7 + *(v9 + 80)) & ~*(v9 + 80);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_83_1();
  OUTLINED_FUNCTION_4_1();
  v12 = *(v11 + 8);
  v13 = OUTLINED_FUNCTION_35_0();
  v12(v13);
  v14 = type metadata accessor for MintDisappearBaseEvent(0);
  v15 = OUTLINED_FUNCTION_66_1(v14);
  v12(v15);
  sub_23BBD99A8();
  OUTLINED_FUNCTION_12_1();
  (*(v16 + 8))(v3 + v10);
  OUTLINED_FUNCTION_110();

  return swift_deallocObject();
}

uint64_t sub_23BB1A304(uint64_t a1)
{
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_41_0();
  v1 = OUTLINED_FUNCTION_19_20();
  v2 = type metadata accessor for SubscriptionViewDisappearEvent(v1);
  OUTLINED_FUNCTION_25_0(v2);
  v3 = type metadata accessor for SKLogger(0);
  OUTLINED_FUNCTION_13_0(v3);
  OUTLINED_FUNCTION_11_22();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_18_16(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_4_32(v5);
  OUTLINED_FUNCTION_97_0();

  return sub_23BB14EB4(v7, v8, v9, v10, v11);
}

uint64_t sub_23BB1A408(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_17_0();
  v5(v4);
  return a2;
}

void OUTLINED_FUNCTION_14_21()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x23EEB6DC0);
}

void OUTLINED_FUNCTION_16_16()
{

  sub_23BB142C0(0, 0, v0);
}

uint64_t OUTLINED_FUNCTION_22_16(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

void OUTLINED_FUNCTION_24_14()
{

  JUMPOUT(0x23EEB6DC0);
}

uint64_t OUTLINED_FUNCTION_33_6()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_37_3()
{
  *(v3 + v1[5]) = v0;
  *(v3 + v1[7]) = v2;
  v4 = v3 + v1[8];
  *v4 = 0;
  *(v4 + 8) = 1;
}

uint64_t OUTLINED_FUNCTION_44_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_47_4()
{

  return type metadata accessor for SKLogger(0);
}

uint64_t OUTLINED_FUNCTION_48_6(uint64_t a1)
{

  return sub_23BB1A408(v3, a1 + v2, v1);
}

unint64_t OUTLINED_FUNCTION_58_2(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2082;

  return sub_23BA5AB90(0xD000000000000037, v1 | 0x8000000000000000, (v3 - 136));
}

uint64_t OUTLINED_FUNCTION_61_3(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

unint64_t OUTLINED_FUNCTION_63_1(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2082;

  return sub_23BA5AB90(0xD000000000000034, v1 | 0x8000000000000000, (v3 - 136));
}

unint64_t OUTLINED_FUNCTION_64_2()
{

  return sub_23BA5AB90(0, 0xE000000000000000, (v0 - 136));
}

BOOL OUTLINED_FUNCTION_67_1(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

uint64_t OUTLINED_FUNCTION_68_2()
{

  return swift_slowAlloc();
}

double OUTLINED_FUNCTION_75_2()
{

  return result;
}

void OUTLINED_FUNCTION_78_2()
{

  sub_23BBC909C();
}

uint64_t OUTLINED_FUNCTION_79_1(uint64_t a1, uint64_t a2, void (*a3)(void))
{

  return sub_23BB1A408(v3, v4 + v5, a3);
}

uint64_t OUTLINED_FUNCTION_80_2(uint64_t a1)
{

  return sub_23BBDCDE8();
}

uint64_t OUTLINED_FUNCTION_81_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_82_1()
{
}

uint64_t OUTLINED_FUNCTION_83_1()
{

  return sub_23BBD9828();
}

uint64_t OUTLINED_FUNCTION_84_0@<X0>(uint64_t a1@<X8>)
{

  return sub_23B9846E8(v2 + a1, v1, v3);
}

uint64_t OUTLINED_FUNCTION_85_0()
{

  return swift_arrayDestroy();
}

unint64_t OUTLINED_FUNCTION_86_0()
{

  return sub_23BA5AB90(0xD000000000000035, v0 | 0x8000000000000000, (v1 - 128));
}

unint64_t OUTLINED_FUNCTION_98_0(float a1)
{
  *v1 = a1;

  return sub_23BA5AB90(0, 0xE000000000000000, (v2 - 128));
}

uint64_t OUTLINED_FUNCTION_99_0()
{

  return sub_23BAAE9D4(v1 + v0, v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_100_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_101_0(double a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_102(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v2 + v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_103()
{

  return sub_23BBD9828();
}

void OUTLINED_FUNCTION_104(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_105_0()
{

  return sub_23BBDCDD8();
}

void OUTLINED_FUNCTION_106_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_23BB1ABD4(uint64_t a1)
{
  result = sub_23BBDB018();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SubscriptionStoreControlStyleConfiguration(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BB1AC70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BBDB018();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for SubscriptionStoreControlStyleConfiguration(0);
    v8 = a1 + *(a3 + 36);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_23BB1AD24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23BBDB018();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for SubscriptionStoreControlStyleConfiguration(0);
    v10 = a1 + *(a4 + 36);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_23BB1ADE4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 33))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_23BB1AE38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_23BB1AEA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_23BB1B10C(a1, a3);
  OUTLINED_FUNCTION_3_39();
  v10 = a4 + *(type metadata accessor for SubscriptionStoreControl(v6, v7, v8, v9) + 36);

  return sub_23BA2F6CC(a2, v10);
}

double sub_23BB1AF04@<D0>(uint64_t a1@<X8>)
{
  sub_23BB1BCAC();
  sub_23BBDA958();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_23BB1AFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SubscriptionStoreControlStyleConfiguration(0);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_3_2();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_3_39();
  v18();
  sub_23BA9B0D4(a2, v11, &qword_27E197BB0, &qword_23BBE4020);
  sub_23BB1AEA0(v17, v11, a3, a4);
  sub_23B9EA92C(a2, &qword_27E197BB0, &qword_23BBE4020);
  return (*(v13 + 8))(a1, a3);
}

uint64_t sub_23BB1B10C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_3_39();
  v7();
  sub_23BBDAFF8();
  return (*(v5 + 8))(a1, a2);
}

uint64_t sub_23BB1B1E8(uint64_t a1)
{
  sub_23BBDB018();

  return sub_23BBDB008();
}

uint64_t sub_23BB1B228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = type metadata accessor for SubscriptionStoreControlStyleConfiguration(0);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_3_1();
  v37 = v6 - v5;
  v7 = *(a1 + 16);
  OUTLINED_FUNCTION_3_2();
  v35 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v12 = v11 - v10;
  v13 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_2();
  v38 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0C60, &qword_23BBFCC00);
  v19 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v39 = v20;
  MEMORY[0x28223BE20](v21);
  v34 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v36 = &v34 - v24;
  sub_23BB1B1E8(a1);
  v25 = *(a1 + 36);
  v26 = v2;
  (*(v13 + 40))(v2 + v25, v7, v13);
  (*(v35 + 8))(v12, v7);
  swift_getKeyPath();
  v27 = v37;
  sub_23B9C990C(v26 + v25, v37);
  sub_23BB1B5DC(v27, &v47);
  v43 = v47;
  v44 = v48;
  v45 = v49;
  v46 = v50;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = v34;
  sub_23BBDB748();

  sub_23BB1BBBC(&v47);
  (*(v38 + 8))(v18, AssociatedTypeWitness);
  v30 = sub_23BB1BBEC();
  v41 = AssociatedConformanceWitness;
  v42 = v30;
  OUTLINED_FUNCTION_0();
  swift_getWitnessTable();
  v31 = v36;
  sub_23B9D2D88();
  v32 = *(v39 + 8);
  v32(v29, v19);
  sub_23B9D2D88();
  return (v32)(v31, v19);
}

uint64_t sub_23BB1B5DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90, &qword_23BBE3F90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0, &unk_23BBE5E10);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  SubscriptionStoreControlStyleConfiguration.options.getter();
  v29 = *(v16 + 16);

  SubscriptionStoreControlStyleConfiguration.autoRenewPreference.getter(v15);
  sub_23BA9B0D4(v15, v12, &qword_27E1987F0, &unk_23BBE5E10);
  v17 = sub_23BBDCDB8();
  if (__swift_getEnumTagSinglePayload(v12, 1, v17) == 1)
  {
    sub_23B9EA92C(v12, &qword_27E1987F0, &unk_23BBE5E10);
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v18 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
    v19 = v20;
    (*(*(v17 - 8) + 8))(v12, v17);
  }

  sub_23BA9B0D4(v15, v9, &qword_27E1987F0, &unk_23BBE5E10);
  if (__swift_getEnumTagSinglePayload(v9, 1, v17) == 1)
  {
    sub_23BB1BC50(a1);
    sub_23B9EA92C(v15, &qword_27E1987F0, &unk_23BBE5E10);
    v21 = v9;
    v22 = &qword_27E1987F0;
    v23 = &unk_23BBE5E10;
  }

  else
  {
    sub_23BBDC8F8();
    (*(*(v17 - 8) + 8))(v9, v17);
    v24 = sub_23BBDCB58();
    if (__swift_getEnumTagSinglePayload(v6, 1, v24) != 1)
    {
      v26 = sub_23BBDCA28();
      sub_23BB1BC50(a1);
      sub_23B9EA92C(v15, &qword_27E1987F0, &unk_23BBE5E10);
      result = (*(*(v24 - 8) + 8))(v6, v24);
      v27 = 0;
      goto LABEL_10;
    }

    sub_23BB1BC50(a1);
    sub_23B9EA92C(v15, &qword_27E1987F0, &unk_23BBE5E10);
    v22 = &qword_27E197B90;
    v23 = &qword_23BBE3F90;
    v21 = v6;
  }

  result = sub_23B9EA92C(v21, v22, v23);
  v26 = 0;
  v27 = 1;
LABEL_10:
  *a2 = v29 == 1;
  *(a2 + 8) = v18;
  *(a2 + 16) = v19;
  *(a2 + 24) = v26;
  *(a2 + 32) = v27;
  return result;
}

uint64_t sub_23BB1B954(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2))
  {
    return 0;
  }

  v5 = *(a1 + 2);
  v6 = *(a2 + 2);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(a1 + 1) == *(a2 + 1) && v5 == v6;
    if (!v7 && (sub_23BBDDA88() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a2[32];
  if (a1[32])
  {
    if ((a2[32] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 3) != *(a2 + 3))
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_23BB1B9FC(uint64_t a1)
{
  sub_23BBDDBD8();
  if (*(v1 + 16))
  {
    sub_23BBDDBD8();
    sub_23BBDD078();
  }

  else
  {
    sub_23BBDDBD8();
  }

  if (*(v1 + 32) == 1)
  {
    return sub_23BBDDBD8();
  }

  v3 = *(v1 + 24);
  sub_23BBDDBD8();
  return MEMORY[0x23EEB63A0](v3);
}

uint64_t sub_23BB1BA90()
{
  sub_23BBDDBB8();
  sub_23BB1B9FC(v1);
  return sub_23BBDDBF8();
}

uint64_t sub_23BB1BAD8(uint64_t a1)
{
  sub_23BBDDBB8();
  sub_23BB1B9FC(v2);
  return sub_23BBDDBF8();
}

unint64_t sub_23BB1BB1C()
{
  result = qword_27E1A0C58;
  if (!qword_27E1A0C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0C58);
  }

  return result;
}

unint64_t sub_23BB1BBEC()
{
  result = qword_27E1A0C68;
  if (!qword_27E1A0C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0C60, &qword_23BBFCC00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0C68);
  }

  return result;
}

uint64_t sub_23BB1BC50(uint64_t a1)
{
  v2 = type metadata accessor for SubscriptionStoreControlStyleConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23BB1BCAC()
{
  result = qword_27E1A0C70;
  if (!qword_27E1A0C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0C70);
  }

  return result;
}

uint64_t sub_23BB1BD10(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_39();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0C60, &qword_23BBFCC00);
  sub_23BBDA358();
  swift_getAssociatedConformanceWitness();
  sub_23BB1BBEC();
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

double sub_23BB1BDCC@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *&result = 1;
  *(a1 + 16) = xmmword_23BBE4070;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_23BB1BDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23BB1BE48();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_23BB1BE48()
{
  result = qword_27E1A0C78;
  if (!qword_27E1A0C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1988B0, &qword_23BBE6660);
    sub_23BB1BB1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0C78);
  }

  return result;
}

double sub_23BB1BED8@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if ((a1 & 1) == 0)
  {
    goto LABEL_8;
  }

  if (qword_27E1977E8 != -1)
  {
    swift_once();
  }

  if (byte_27E1A04D1 == 1 || byte_27E1A04D1 == 3 && (storekit_dyld_fall_2024_os_versions(), dyld_program_minos_at_least()))
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *&result = 1;
    *(a2 + 24) = xmmword_23BBE4070;
  }

  else
  {
LABEL_8:
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double ButtonsSubscriptionStoreControlStyle.Placement.init(rawValue:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23B9AF0F0(a1, v10);
  memset(v9, 0, sizeof(v9));
  v4 = _s17_StoreKit_SwiftUI012SubscriptionA19ControlPlacementKeyV2eeoiySbAC_ACtFZ_0(v9, v10);
  sub_23B97B104(v9);
  if (v4)
  {
    sub_23B97B104(v10);
  }

  else
  {
    memset(v9, 0, 24);
    *&v9[24] = xmmword_23BBE4070;
    v5 = _s17_StoreKit_SwiftUI012SubscriptionA19ControlPlacementKeyV2eeoiySbAC_ACtFZ_0(v9, v10);
    sub_23B97B104(v9);
    sub_23B97B104(v10);
    if ((v5 & 1) == 0)
    {
      sub_23B97B104(a1);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *&v6 = 6;
      *(a2 + 24) = xmmword_23BBE8BF0;
      return *&v6;
    }
  }

  v6 = *a1;
  v7 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v7;
  *(a2 + 32) = *(a1 + 4);
  return *&v6;
}

unint64_t static ButtonsSubscriptionStoreControlStyle.Placement.automatic.getter@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &unk_284E63000;
  result = sub_23BB1C090();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_23BB1C090()
{
  result = qword_27E1A0C80;
  if (!qword_27E1A0C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0C80);
  }

  return result;
}

void static ButtonsSubscriptionStoreControlStyle.Placement.bottom.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBF4750);
}

void static ButtonsSubscriptionStoreControlStyle.Placement.leading.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBEDA30);
}

void static ButtonsSubscriptionStoreControlStyle.Placement.trailing.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBF4740);
}

double static ButtonsSubscriptionStoreControlStyle.Placement.scrollView.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void static ButtonsSubscriptionStoreControlStyle.Placement.bottomBar.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBE4070);
}

uint64_t ButtonsSubscriptionStoreControlStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23B9C990C(a1, a2);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0C88, &qword_23BBFCCB8);
  v5 = a2 + *(result + 36);
  *v5 = KeyPath;
  *(v5 + 8) = 0;
  return result;
}

unint64_t sub_23BB1C1BC(uint64_t a1)
{
  result = sub_23BB1C1E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23BB1C1E4()
{
  result = qword_27E1A0C90;
  if (!qword_27E1A0C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0C90);
  }

  return result;
}

unint64_t sub_23BB1C258()
{
  result = qword_27E1A0C98;
  if (!qword_27E1A0C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0C98);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ButtonsSubscriptionStoreControlStyle(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x23BB1C360);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_23BB1C3A4()
{
  result = qword_27E1A0CA0;
  if (!qword_27E1A0CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0C88, &qword_23BBFCCB8);
    sub_23BB1C430();
    sub_23BB1C488();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0CA0);
  }

  return result;
}

unint64_t sub_23BB1C430()
{
  result = qword_27E1A0CA8;
  if (!qword_27E1A0CA8)
  {
    type metadata accessor for SubscriptionStoreButtonsView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0CA8);
  }

  return result;
}

unint64_t sub_23BB1C488()
{
  result = qword_27E19BF80;
  if (!qword_27E19BF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BF88, &qword_23BBEE910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BF80);
  }

  return result;
}

unint64_t sub_23BB1C4FC()
{
  result = qword_27E1A0CB0;
  if (!qword_27E1A0CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0CB0);
  }

  return result;
}

unint64_t sub_23BB1C550(uint64_t a1)
{
  result = sub_23BB1C578();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23BB1C578()
{
  result = qword_27E1A0CB8;
  if (!qword_27E1A0CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0CB8);
  }

  return result;
}

uint64_t sub_23BB1C5CC()
{
  sub_23BB1C644();
  sub_23BBDA958();
  return v1;
}

unint64_t sub_23BB1C644()
{
  result = qword_27E1A0CC0;
  if (!qword_27E1A0CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0CC0);
  }

  return result;
}

double sub_23BB1C698(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_23BBDB748();

  return result;
}

uint64_t sub_23BB1C724()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23B99D1DC();
  *v0 = result;
  return result;
}

uint64_t sub_23BB1C778()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BABCBB4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_23BB1C7A0()
{
  v0 = OUTLINED_FUNCTION_35_0();
  sub_23BA1569C(v0, v1);
  v2 = OUTLINED_FUNCTION_35_0();
  return sub_23BABCBF0(v2, v3);
}

uint64_t sub_23BB1C7DC()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BB78AC8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_23BB1C804()
{
  v0 = OUTLINED_FUNCTION_35_0();
  sub_23BA1569C(v0, v1);
  v2 = OUTLINED_FUNCTION_35_0();
  return sub_23BB78B04(v2, v3);
}

uint64_t sub_23BB1C840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0E90, &qword_23BBFD478);
  v7 = v6[14];
  *(a3 + v7) = swift_getKeyPath();
  v8 = v6[15];
  *(a3 + v8) = swift_getKeyPath();
  v9 = a3 + v6[16];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = a3 + v6[13];
  *v10 = a2;
  *(v10 + 8) = 0;
  *(v10 + 16) = 3;

  return sub_23BB23498(a1, a3);
}

void ProductView.init<>(_:prefersPromotionalIcon:icon:)()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v60 = v0;
  v3 = v2;
  v64 = v4;
  v66 = v5;
  v65 = v6;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C300, &qword_23BBFCF30);
  OUTLINED_FUNCTION_13_0(v11);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_22_2();
  v59 = v13;
  OUTLINED_FUNCTION_3_2();
  v63 = v14;
  v62 = *(v15 + 64);
  MEMORY[0x28223BE20](v16);
  v61 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v58 - v19);
  v72 = v3;
  v73 = MEMORY[0x277CE1428];
  v74 = v1;
  v75 = MEMORY[0x277CE1410];
  v21 = type metadata accessor for ProductView(0, &v72);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_17_10(KeyPath);
  v23 = (v10 + v21[18]);
  v24 = type metadata accessor for ProductViewEventConfiguration(0);
  OUTLINED_FUNCTION_23_10(v24);
  v25 = sub_23BB664D4();
  *v23 = sub_23BB1D3A0(v25, v26);
  v23[1] = v27;
  v28 = v10 + v21[19];
  *v28 = swift_getKeyPath();
  *(v28 + 8) = 0;
  v29 = v10 + v21[20];
  v30 = swift_getKeyPath();
  LOBYTE(v72) = 0;
  v31 = swift_getKeyPath();
  v71 = 0;
  v32 = swift_getKeyPath();
  v70 = 0;
  v33 = swift_getKeyPath();
  v69 = 0;
  v34 = swift_getKeyPath();
  v68 = 0;
  v35 = v72;
  v36 = v71;
  v37 = v70;
  v38 = v69;
  *v29 = v30;
  *(v29 + 8) = v35;
  *(v29 + 16) = v31;
  *(v29 + 24) = v36;
  *(v29 + 32) = v32;
  *(v29 + 40) = v37;
  *(v29 + 48) = v33;
  *(v29 + 56) = 0;
  *(v29 + 64) = v38;
  *(v29 + 72) = v34;
  *(v29 + 80) = 0;
  *(v29 + 88) = 0;
  v39 = sub_23BBDCDB8();
  v40 = *(v39 - 8);
  v41 = *(v40 + 16);
  v67 = v8;
  v42 = v41(v10, v8, v39);
  v72 = v3;
  v43 = v60;
  v73 = MEMORY[0x277CE1428];
  v74 = v60;
  v75 = MEMORY[0x277CE1410];
  OUTLINED_FUNCTION_18_17(v42, &v72);
  v44 = swift_storeEnumTagMultiPayload();
  v66(v44);
  v45 = *(v63 + 16);
  v46 = v61;
  v66 = v20;
  v47 = v20;
  v48 = v63;
  v45(v61, v47, v3);
  v49 = (*(v48 + 80) + 33) & ~*(v48 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = v3;
  *(v50 + 24) = v43;
  v51 = v65;
  LODWORD(v64) = v65 & 1;
  *(v50 + 32) = v65;
  LOBYTE(v43) = v51;
  (*(v48 + 32))(v50 + v49, v46, v3);
  v52 = (v10 + v21[13]);
  *v52 = sub_23BB21CA4;
  v52[1] = v50;
  *(v10 + v21[16]) = 0;
  if ((v43 & 1) == 0 || (v53 = v59, sub_23BBDCD58(), v54 = sub_23BBDCD48(), v55 = 1, EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v54), sub_23B9846E8(v53, &qword_27E19C300, &qword_23BBFCF30), EnumTagSinglePayload == 1))
  {
    v55 = v3 != MEMORY[0x277CE1428];
  }

  *(v10 + v21[15]) = v55;
  *(sub_23BB1D3DC(v21) + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_usesCustomPlaceholder) = v55;

  v57 = sub_23BB1D3DC(v21);
  (*(v40 + 8))(v67, v39);
  (*(v48 + 8))(v66, v3);
  *(v57 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_prefersPromotionalIcon) = v64;

  OUTLINED_FUNCTION_9_1();
}

void ProductView.init<>(_:prefersPromotionalIcon:)()
{
  OUTLINED_FUNCTION_10_0();
  v31 = v1;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C300, &qword_23BBFCF30);
  OUTLINED_FUNCTION_13_0(v6);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_22_2();
  v30 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0A80, &qword_23BBFC1E0);
  OUTLINED_FUNCTION_26_10();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_4_33(KeyPath);
  v10 = (v5 + v0[18]);
  v11 = type metadata accessor for ProductViewEventConfiguration(0);
  OUTLINED_FUNCTION_23_10(v11);
  v32 = sub_23BB664D4();
  sub_23BBDBF58();
  *v10 = v33;
  v10[1] = v34;
  v12 = swift_getKeyPath();
  OUTLINED_FUNCTION_12_26(v12);
  v14 = v5 + v13;
  v15 = swift_getKeyPath();
  v16 = swift_getKeyPath();
  LOBYTE(v32) = 0;
  v17 = swift_getKeyPath();
  v38[0] = 0;
  v18 = swift_getKeyPath();
  v37[0] = 0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_21_17();
  *v14 = v15;
  *(v14 + 8) = v19;
  *(v14 + 9) = *v38;
  *(v14 + 12) = *&v38[3];
  *(v14 + 16) = v16;
  *(v14 + 24) = v20;
  *(v14 + 25) = *v37;
  *(v14 + 28) = *&v37[3];
  *(v14 + 32) = v17;
  *(v14 + 40) = v21;
  *(v14 + 41) = *v36;
  *(v14 + 44) = *&v36[3];
  *(v14 + 48) = v18;
  *(v14 + 56) = 0;
  *(v14 + 64) = v22;
  *(v14 + 68) = *&v35[3];
  *(v14 + 65) = *v35;
  *(v14 + 72) = v23;
  *(v14 + 80) = 0;
  *(v14 + 88) = 0;
  v24 = sub_23BBDCDB8();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v5, v3, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0CC8, &qword_23BBFD058);
  swift_storeEnumTagMultiPayload();
  v26 = swift_allocObject();
  v27 = 0;
  *(v26 + 16) = v31;
  v28 = (v5 + v0[13]);
  *v28 = sub_23BB2351C;
  v28[1] = v26;
  *(v5 + v0[16]) = 0;
  if (v31)
  {
    sub_23BBDCD58();
    v29 = sub_23BBDCD48();
    v27 = __swift_getEnumTagSinglePayload(v30, 1, v29) != 1;
    sub_23B9846E8(v30, &qword_27E19C300, &qword_23BBFCF30);
  }

  *(v5 + v0[15]) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0CD0, &qword_23BBFD060);
  sub_23BBDBF68();
  *(v32 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_usesCustomPlaceholder) = v27;

  sub_23BBDBF68();
  (*(v25 + 8))(v3, v24);
  *(v32 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_prefersPromotionalIcon) = v31 & 1;

  OUTLINED_FUNCTION_9_1();
}

double sub_23BB1D114()
{
  v0.n128_f64[0] = sub_23BBBFB04(&v12);
  *&result = OUTLINED_FUNCTION_18_10(v1, v2, v3, v4, v5, v6, v7, v8, v0, v11, v9, v12, v13).n128_u64[0];
  return result;
}

double sub_23BB1D14C()
{
  v0.n128_f64[0] = sub_23BBBFB04(&v12);
  *&result = OUTLINED_FUNCTION_18_10(v1, v2, v3, v4, v5, v6, v7, v8, v0, v11, v9, v12, v13).n128_u64[0];
  return result;
}

uint64_t sub_23BB1D184(uint64_t a1)
{
  v1 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v1;
  v9 = *(a1 + 32);
  v10 = v9;

  sub_23B9C7374(&v10, v7, &qword_27E19FA80, &qword_23BBFD310);
  return sub_23BBBFB58(v8, v2, v3, v4, v5);
}

uint64_t sub_23BB1D1F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23BBDA928();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 68);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 24);
  v13 = *(v9 + 32);
  LODWORD(v9) = *(v9 + 40);
  v18 = v11;
  if (v9 == 1)
  {

    v15 = v18;
  }

  else
  {

    sub_23BBDD5A8();
    v16 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    v17 = sub_23B9AD3D4(v10, v18, *(&v18 + 1), v12, v13, 0);
    result = (*(v6 + 8))(v8, v5, v17);
    v10 = v19;
    v15 = v20;
    v12 = v21;
    v13 = v22;
  }

  *a2 = v10;
  *(a2 + 8) = v15;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  return result;
}

uint64_t sub_23BB1D3A0(uint64_t a1, double a2)
{
  type metadata accessor for ProductViewEventConfiguration(0);
  sub_23BBDBF58();
  return v3;
}

uint64_t sub_23BB1D3DC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0CD0, &qword_23BBFD060);
  sub_23BBDBF68();
  return v2;
}

uint64_t sub_23BB1D434(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 76);
  v8 = *v7;
  v9 = *(v7 + 8);

  if ((v9 & 1) == 0)
  {
    sub_23BBDD5A8();
    v10 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(v8);
    (*(v4 + 8))(v6, v3);
    return v12[1];
  }

  return v8;
}

void *sub_23BB1D584@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  memcpy(__dst, (v2 + *(a1 + 80)), sizeof(__dst));
  sub_23BA5DACC(__src);
  return memcpy(a2, __src, 0x51uLL);
}

double ProductView.init(id:icon:placeholderIcon:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X6>, ValueMetadata *a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v40 = a6;
  v41 = a7;
  v42 = a9;
  v43 = a10;
  type metadata accessor for ProductView(0, &v40);
  OUTLINED_FUNCTION_26_10();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_17_10(KeyPath);
  v15 = (a8 + v10[18]);
  v16 = type metadata accessor for ProductViewEventConfiguration(0);
  OUTLINED_FUNCTION_23_10(v16);
  v17 = sub_23BB664D4();
  *v15 = sub_23BB1D3A0(v17, v18);
  v15[1] = v19;
  v20 = swift_getKeyPath();
  OUTLINED_FUNCTION_12_26(v20);
  v22 = a8 + v21;
  v23 = swift_getKeyPath();
  LOBYTE(v40) = 0;
  v24 = swift_getKeyPath();
  v25 = swift_getKeyPath();
  v26 = swift_getKeyPath();
  v27 = swift_getKeyPath();
  v28 = v40;
  *v22 = v23;
  v22[8] = v28;
  *(v22 + 2) = v24;
  v22[24] = 0;
  *(v22 + 4) = v25;
  v22[40] = 0;
  *(v22 + 6) = v26;
  *(v22 + 7) = 0;
  v22[64] = 0;
  *(v22 + 9) = v27;
  *(v22 + 10) = 0;
  v22[88] = 0;
  *a8 = a1;
  a8[1] = a2;
  v40 = a6;
  v41 = a7;
  v42 = a9;
  v43 = a10;
  OUTLINED_FUNCTION_18_17(v27, &v40);
  v29 = swift_storeEnumTagMultiPayload();
  a5(v29);
  v30 = swift_allocObject();
  *(v30 + 2) = a6;
  *(v30 + 3) = a7;
  *(v30 + 4) = a9;
  *(v30 + 5) = a10;
  *(v30 + 6) = a3;
  *(v30 + 7) = a4;
  v31 = (a8 + v10[13]);
  *v31 = sub_23BB21D2C;
  v31[1] = v30;
  *(a8 + v10[16]) = 0;
  v32 = a6 != MEMORY[0x277CE1428];
  *(a8 + v10[15]) = a6 != MEMORY[0x277CE1428];

  *(sub_23BB1D3DC(v10) + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_usesCustomPlaceholder) = a7 != &type metadata for AutomaticProductPlaceholderIcon && v32;

  v33 = sub_23BB1D3DC(v10);

  *(v33 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_prefersPromotionalIcon) = 0;

  return result;
}

void sub_23BB1D850(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t x8_0@<X8>)
{
  v23 = a6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C300, &qword_23BBFCF30);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v22 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308, &qword_23BBEEF90);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v22 - v18;
  sub_23BBDCD58();
  v20 = sub_23BBDCD48();
  if (__swift_getEnumTagSinglePayload(v16, 1, v20) == 1)
  {
    sub_23B9846E8(v16, &qword_27E19C300, &qword_23BBFCF30);
    v21 = sub_23BBD9728();
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v21);
  }

  else
  {
    sub_23BBDCD38();
    (*(*(v20 - 8) + 8))(v16, v20);
  }

  sub_23BBB10AC(v19, a2, a3, 0, 0, a4, a5, v23, x8_0, a7);
}

void ProductView.init(id:prefersPromotionalIcon:icon:placeholderIcon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ValueMetadata *a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_10_0();
  v102 = v23;
  v99 = v24;
  v100 = v25;
  v98 = v26;
  v104 = v27;
  v96 = v28;
  v95 = v29;
  v31 = v30;
  v93 = a21;
  OUTLINED_FUNCTION_3_2();
  v101 = v32;
  v103 = *(v33 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_28_7();
  v97 = v35;
  MEMORY[0x28223BE20](v36);
  v107 = v91 - v37;
  v39 = v38;
  OUTLINED_FUNCTION_3_2();
  v106 = v40;
  v94 = *(v41 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_28_7();
  v108 = v43;
  MEMORY[0x28223BE20](v44);
  v105 = v91 - v45;
  v113 = v47;
  v114 = v46;
  v115 = a22;
  v116 = a23;
  v91[1] = a22;
  v91[0] = a23;
  v48 = type metadata accessor for ProductView(0, &v113);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_4_33(KeyPath);
  v50 = (v31 + v48[18]);
  v51 = type metadata accessor for ProductViewEventConfiguration(0);
  OUTLINED_FUNCTION_23_10(v51);
  v52 = sub_23BB664D4();
  *v50 = sub_23BB1D3A0(v52, v53);
  v50[1] = v54;
  v92 = v48;
  v55 = v31 + v48[19];
  *v55 = swift_getKeyPath();
  v55[8] = 0;
  v56 = v31 + v48[20];
  v57 = swift_getKeyPath();
  LOBYTE(v113) = 0;
  v58 = swift_getKeyPath();
  v112 = 0;
  v59 = swift_getKeyPath();
  v111 = 0;
  v60 = swift_getKeyPath();
  v110 = 0;
  v61 = swift_getKeyPath();
  v109 = 0;
  v62 = v113;
  v63 = v112;
  v64 = v111;
  v65 = v110;
  *v56 = v57;
  v56[8] = v62;
  *(v56 + 2) = v58;
  v56[24] = v63;
  *(v56 + 4) = v59;
  v56[40] = v64;
  *(v56 + 6) = v60;
  *(v56 + 7) = 0;
  v56[64] = v65;
  *(v56 + 9) = v61;
  *(v56 + 10) = 0;
  v56[88] = 0;
  v66 = v96;
  *v31 = v95;
  v31[1] = v66;
  v67 = v39;
  v113 = v39;
  v68 = v93;
  v114 = v93;
  v115 = a22;
  v116 = a23;
  OUTLINED_FUNCTION_18_17(v61, &v113);
  v69 = swift_storeEnumTagMultiPayload();
  v70 = v105;
  v71 = v99(v69);
  v72 = v107;
  v100(v71);
  v73 = v106;
  v74 = v67;
  (*(v106 + 16))(v108, v70, v67);
  v75 = v101;
  v102 = *(v101 + 16);
  v76 = v97;
  v77 = v68;
  v102(v97, v72, v68);
  v78 = (*(v73 + 80) + 49) & ~*(v73 + 80);
  v79 = (v94 + v78 + *(v75 + 80)) & ~*(v75 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = v74;
  *(v80 + 24) = v77;
  OUTLINED_FUNCTION_3_40();
  *(v81 + 32) = v83;
  *(v81 + 40) = v82;
  LOBYTE(v74) = v104;
  *(v81 + 48) = v104;
  v84 = *(v73 + 32);
  v86 = v85;
  v84(v81 + v78, v108);
  (*(v75 + 32))(v80 + v79, v76, v77);
  v87 = v92;
  v88 = (v31 + v92[13]);
  *v88 = sub_23BB21E30;
  v88[1] = v80;
  v89 = v107;
  v102(v31 + v87[14], v107, v77);
  *(v31 + v87[16]) = 0;
  LOBYTE(v80) = v74 | (v86 != MEMORY[0x277CE1428]);
  *(v31 + v87[15]) = v80;
  *(sub_23BB1D3DC(v87) + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_usesCustomPlaceholder) = (v77 != &type metadata for AutomaticProductPlaceholderIcon) & v80;

  v90 = sub_23BB1D3DC(v87);
  (*(v75 + 8))(v89, v77);
  (*(v106 + 8))(v105, v86);
  *(v90 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_prefersPromotionalIcon) = v74;

  OUTLINED_FUNCTION_9_1();
}

void sub_23BB1DF14(int a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v28 = a7;
  v29 = a6;
  v27 = a1;
  v26 = a8;
  v12 = sub_23BBDD648();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - v13;
  v15 = sub_23BBDD648();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v26 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C300, &qword_23BBFCF30);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v26 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308, &qword_23BBEEF90);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v26 - v22;
  sub_23BBDCD58();
  v24 = sub_23BBDCD48();
  if (__swift_getEnumTagSinglePayload(v20, 1, v24) == 1)
  {
    sub_23B9846E8(v20, &qword_27E19C300, &qword_23BBFCF30);
    v25 = sub_23BBD9728();
    __swift_storeEnumTagSinglePayload(v23, 1, 1, v25);
  }

  else
  {
    sub_23BBDCD38();
    (*(*(v24 - 8) + 8))(v20, v24);
  }

  (*(*(a4 - 8) + 16))(v17, a2, a4);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, a4);
  (*(*(a5 - 8) + 16))(v14, a3, a5);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, a5);
  sub_23BBB1200(v27 & 1, v23, v17, v14, 0, 0, a4, a5, v26, v29, v28);
}

void ProductView.init<>(id:prefersPromotionalIcon:icon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LOBYTE(v17) = a3;
  v14 = sub_23B9AD84C();
  ProductView.init(id:prefersPromotionalIcon:icon:placeholderIcon:)(a1, a2, a3, a4, a5, sub_23BA35CB0, v16, a6, &type metadata for AutomaticProductPlaceholderIcon, a7, v14, v15, v16[0], v16[1], v17, v18, v19, v20, v21, v22, v23, v24, v25);
}

double ProductView.init<>(id:prefersPromotionalIcon:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0A80, &qword_23BBFC1E0);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_17_10(KeyPath);
  v8 = (a4 + v6[18]);
  v9 = type metadata accessor for ProductViewEventConfiguration(0);
  OUTLINED_FUNCTION_23_10(v9);
  v22 = sub_23BB664D4();
  sub_23BBDBF58();
  *v8 = v23;
  v8[1] = v24;
  v10 = a4 + v6[19];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v11 = a4 + v6[20];
  v12 = swift_getKeyPath();
  v13 = swift_getKeyPath();
  LOBYTE(v22) = 0;
  v14 = swift_getKeyPath();
  v28[0] = 0;
  v15 = swift_getKeyPath();
  v27[0] = 0;
  v16 = swift_getKeyPath();
  v26[0] = 0;
  *v11 = v12;
  v11[8] = 0;
  *(v11 + 9) = *v28;
  *(v11 + 3) = *&v28[3];
  *(v11 + 2) = v13;
  v11[24] = 0;
  *(v11 + 25) = *v27;
  *(v11 + 7) = *&v27[3];
  *(v11 + 4) = v14;
  v11[40] = 0;
  *(v11 + 41) = *v26;
  *(v11 + 11) = *&v26[3];
  *(v11 + 6) = v15;
  *(v11 + 7) = 0;
  v11[64] = 0;
  *(v11 + 17) = *&v25[3];
  *(v11 + 65) = *v25;
  *(v11 + 9) = v16;
  *(v11 + 10) = 0;
  v11[88] = 0;
  *a4 = a1;
  a4[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0CC8, &qword_23BBFD058);
  swift_storeEnumTagMultiPayload();
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  v18 = (a4 + v6[13]);
  *v18 = sub_23BB21EC8;
  v18[1] = v17;
  *(a4 + v6[15]) = a3;
  *(a4 + v6[16]) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0CD0, &qword_23BBFD060);
  sub_23BBDBF68();
  *(v22 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_usesCustomPlaceholder) = a3;

  sub_23BBDBF68();
  *(v22 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_prefersPromotionalIcon) = a3;

  return result;
}

double ProductView.init<>(_:icon:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a4;
  v37 = MEMORY[0x277CE1428];
  v38 = a5;
  v39 = MEMORY[0x277CE1410];
  type metadata accessor for ProductView(0, &v36);
  OUTLINED_FUNCTION_26_10();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_17_10(KeyPath);
  v12 = (a6 + v6[18]);
  v13 = type metadata accessor for ProductViewEventConfiguration(0);
  OUTLINED_FUNCTION_23_10(v13);
  v14 = sub_23BB664D4();
  *v12 = sub_23BB1D3A0(v14, v15);
  v12[1] = v16;
  v17 = swift_getKeyPath();
  OUTLINED_FUNCTION_12_26(v17);
  v19 = a6 + v18;
  v20 = swift_getKeyPath();
  LOBYTE(v36) = 0;
  v21 = swift_getKeyPath();
  v22 = swift_getKeyPath();
  v23 = swift_getKeyPath();
  v24 = swift_getKeyPath();
  v25 = v36;
  *v19 = v20;
  *(v19 + 8) = v25;
  *(v19 + 16) = v21;
  *(v19 + 24) = 0;
  *(v19 + 32) = v22;
  *(v19 + 40) = 0;
  *(v19 + 48) = v23;
  *(v19 + 56) = 0;
  *(v19 + 64) = 0;
  *(v19 + 72) = v24;
  *(v19 + 80) = 0;
  *(v19 + 88) = 0;
  v26 = sub_23BBDCDB8();
  v27 = *(v26 - 8);
  v28 = (*(v27 + 16))(a6, a1, v26);
  v36 = a4;
  v29 = MEMORY[0x277CE1428];
  v37 = MEMORY[0x277CE1428];
  v38 = a5;
  v39 = MEMORY[0x277CE1410];
  OUTLINED_FUNCTION_18_17(v28, &v36);
  swift_storeEnumTagMultiPayload();
  v30 = swift_allocObject();
  *(v30 + 2) = a4;
  *(v30 + 3) = a5;
  *(v30 + 4) = a2;
  *(v30 + 5) = a3;
  v31 = (a6 + v6[13]);
  *v31 = sub_23BB21F1C;
  v31[1] = v30;
  *(a6 + v6[16]) = 0;
  LOBYTE(v29) = a4 != v29;
  *(a6 + v6[15]) = v29;

  *(sub_23BB1D3DC(v6) + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_usesCustomPlaceholder) = v29;

  v32 = sub_23BB1D3DC(v6);

  (*(v27 + 8))(a1, v26);
  *(v32 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_prefersPromotionalIcon) = 0;

  return result;
}

void sub_23BB1E7FC(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C300, &qword_23BBFCF30);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308, &qword_23BBEEF90);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v19 - v15;
  sub_23BBDCD58();
  v17 = sub_23BBDCD48();
  if (__swift_getEnumTagSinglePayload(v13, 1, v17) == 1)
  {
    sub_23B9846E8(v13, &qword_27E19C300, &qword_23BBFCF30);
    v18 = sub_23BBD9728();
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v18);
  }

  else
  {
    sub_23BBDCD38();
    (*(*(v17 - 8) + 8))(v13, v17);
  }

  sub_23BBB10AC(v16, a2, a3, 0, 0, a4, MEMORY[0x277CE1428], a5, x8_0, MEMORY[0x277CE1410]);
}

void sub_23BB1E9D0(char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  v11 = sub_23BBDD648();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C300, &qword_23BBFCF30);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v22[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308, &qword_23BBEEF90);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v22[-v18];
  sub_23BBDCD58();
  v20 = sub_23BBDCD48();
  if (__swift_getEnumTagSinglePayload(v16, 1, v20) == 1)
  {
    sub_23B9846E8(v16, &qword_27E19C300, &qword_23BBFCF30);
    v21 = sub_23BBD9728();
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v21);
  }

  else
  {
    sub_23BBDCD38();
    (*(*(v20 - 8) + 8))(v16, v20);
  }

  (*(*(a4 - 8) + 16))(v13, a3, a4);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, a4);
  v23 = 1;
  sub_23BBB1200(a2 & 1, v19, v13, &v23, 0, 0, a4, MEMORY[0x277CE1428], x8_0, a5, MEMORY[0x277CE1410]);
}

uint64_t sub_23BB1EC34@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C300, &qword_23BBFCF30);
  OUTLINED_FUNCTION_13_0(v4);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308, &qword_23BBEEF90);
  OUTLINED_FUNCTION_13_0(v8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  sub_23BBDCD58();
  v12 = sub_23BBDCD48();
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    sub_23B9846E8(v7, &qword_27E19C300, &qword_23BBFCF30);
    v13 = sub_23BBD9728();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v13);
  }

  else
  {
    sub_23BBDCD38();
    OUTLINED_FUNCTION_1_4();
    (*(v14 + 8))(v7, v12);
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C320, &qword_23BBFF3B0);
  v16 = v15[14];
  *(a2 + v16) = swift_getKeyPath();
  v17 = v15[15];
  *(a2 + v17) = swift_getKeyPath();
  v18 = a2 + v15[16];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = a2 + v15[13];
  if (a1)
  {
    *v19 = 257;
    v20 = 1;
  }

  else
  {
    *v19 = 0;
    *(v19 + 8) = 0;
    v20 = -1;
  }

  *(v19 + 16) = v20;
  return sub_23BB23498(v11, a2);
}

void ProductView.init<>(_:)()
{
  OUTLINED_FUNCTION_10_0();
  v29 = v1;
  v3 = v2;
  v4 = type metadata accessor for ProductViewStyleConfiguration(0);
  v5 = v4 - 8;
  v30 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_27_7();
  v28 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0CD8, &qword_23BBFD068);
  OUTLINED_FUNCTION_26_10();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_4_33(KeyPath);
  v8 = (v3 + v0[18]);
  v9 = type metadata accessor for ProductViewEventConfiguration(0);
  OUTLINED_FUNCTION_23_10(v9);
  v31 = sub_23BB664D4();
  sub_23BBDBF58();
  *v8 = v32;
  v8[1] = v33;
  v10 = swift_getKeyPath();
  OUTLINED_FUNCTION_12_26(v10);
  v12 = v3 + v11;
  v13 = swift_getKeyPath();
  v14 = swift_getKeyPath();
  LOBYTE(v31) = 0;
  v15 = swift_getKeyPath();
  v37[0] = 0;
  v16 = swift_getKeyPath();
  v36[0] = 0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_21_17();
  *v12 = v13;
  *(v12 + 8) = v17;
  *(v12 + 9) = *v37;
  *(v12 + 12) = *&v37[3];
  *(v12 + 16) = v14;
  *(v12 + 24) = v18;
  *(v12 + 25) = *v36;
  *(v12 + 28) = *&v36[3];
  *(v12 + 32) = v15;
  *(v12 + 40) = v19;
  *(v12 + 41) = *v35;
  *(v12 + 44) = *&v35[3];
  *(v12 + 48) = v16;
  *(v12 + 56) = 0;
  *(v12 + 64) = v20;
  *(v12 + 68) = *&v34[3];
  *(v12 + 65) = *v34;
  *(v12 + 72) = v21;
  *(v12 + 80) = 0;
  *(v12 + 88) = 0;
  sub_23BA0EFA4(v29, v3, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0CE0, &qword_23BBFD070);
  swift_storeEnumTagMultiPayload();
  sub_23BA0EFA4(v29, v28, v23);
  v24 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v25 = swift_allocObject();
  sub_23BB22040(v28, v25 + v24, v26);
  v27 = (v3 + v0[13]);
  *v27 = sub_23BB220A4;
  v27[1] = v25;
  *(v3 + v0[14]) = *(v29 + *(v5 + 36));
  *(v3 + v0[16]) = 0;
  *(v3 + v0[15]) = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0CD0, &qword_23BBFD060);
  sub_23BBDBF68();
  *(v31 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_usesCustomPlaceholder) = 1;

  sub_23BBDBF68();
  sub_23BB23418(v29, type metadata accessor for ProductViewStyleConfiguration);
  *(v31 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_prefersPromotionalIcon) = 0;

  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BB1F15C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C300, &qword_23BBFCF30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308, &qword_23BBEEF90);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  sub_23BBDCD58();
  v10 = sub_23BBDCD48();
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    sub_23B9846E8(v6, &qword_27E19C300, &qword_23BBFCF30);
    v11 = sub_23BBD9728();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v11);
  }

  else
  {
    sub_23BBDCD38();
    (*(*(v10 - 8) + 8))(v6, v10);
  }

  v12 = type metadata accessor for ProductViewStyleConfiguration(0);
  sub_23BB1C840(v9, *(a1 + *(v12 + 28)), a2);
}

void ProductView.body.getter()
{
  OUTLINED_FUNCTION_10_0();
  v111 = v0;
  v2 = v1;
  v108 = v3;
  OUTLINED_FUNCTION_3_2();
  v107 = v4;
  v113 = *(v5 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_27_7();
  OUTLINED_FUNCTION_13_3(v7);
  v105 = sub_23BBDB148();
  OUTLINED_FUNCTION_3_2();
  v104 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_13_3(v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v106 = v2;
  v11 = v2[3];
  v114 = v2[2];
  v12 = v2[5];
  v116 = v2[4];
  v135 = v114;
  v136 = v11;
  v137 = v116;
  v138 = v12;
  v13 = v12;
  v115 = v12;
  v14 = type metadata accessor for PromotionalIconLoadingView(255, &v135);
  OUTLINED_FUNCTION_10_20(v14);
  v15 = OUTLINED_FUNCTION_31_6();
  type metadata accessor for StaticProductView(v15, v2, v0, v16);
  v135 = v2;
  v136 = v11;
  v109 = v11;
  v137 = v0;
  v138 = v13;
  type metadata accessor for DynamicProductView(255, &v135);
  sub_23BBDACE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0CE8, &qword_23BBFD078);
  OUTLINED_FUNCTION_4();
  v94[1] = sub_23BBDACE8();
  v17 = sub_23BBDBE28();
  OUTLINED_FUNCTION_3_2();
  v19 = v18;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v20);
  v22 = v94 - v21;
  OUTLINED_FUNCTION_6_29();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_5_33();
  v24 = swift_getWitnessTable();
  v133 = WitnessTable;
  v134 = v24;
  v25 = swift_getWitnessTable();
  v26 = sub_23BB22120();
  v131 = v25;
  v132 = v26;
  v130 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_4();
  v94[0] = swift_getWitnessTable();
  v135 = v17;
  v136 = v94[0];
  v94[2] = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_3_2();
  v94[3] = v28;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v29);
  v31 = v94 - v30;
  sub_23BBDB2B8();
  v32 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v94[5] = v33;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v34);
  v36 = v94 - v35;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0D38, &qword_23BBFD0B0);
  v95 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v98 = v37;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_13_3(v39);
  v97 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v101 = v40;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_13_3(v42);
  v100 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v102 = v43;
  MEMORY[0x28223BE20](v44);
  v96 = v94 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_13_3(v94 - v47);
  v117 = v114;
  v118 = v11;
  OUTLINED_FUNCTION_3_40();
  v119 = v49;
  v120 = v48;
  v50 = v111;
  v121 = v111;
  sub_23BBDBE18();
  v51 = v103;
  sub_23BBDB138();
  v52 = v94[0];
  sub_23BBDB968();
  OUTLINED_FUNCTION_13_16();
  v53(v51, v105);
  (*(v19 + 8))(v22, v17);
  KeyPath = swift_getKeyPath();
  v135 = v17;
  v136 = v52;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_23B9968C4(KeyPath, OpaqueTypeMetadata2, OpaqueTypeConformance2);

  OUTLINED_FUNCTION_13_16();
  v56(v31, OpaqueTypeMetadata2);
  v57 = v106;
  v58 = sub_23BB1D3DC(v106);
  OUTLINED_FUNCTION_8_36();
  v61 = sub_23BB223BC(v59, v60, MEMORY[0x277CDE458]);
  v128 = OpaqueTypeConformance2;
  v129 = v61;
  v104 = MEMORY[0x277CDFAD8];
  v62 = swift_getWitnessTable();
  sub_23BB65B78(v58, v32, v62);

  OUTLINED_FUNCTION_13_16();
  v63(v36, v32);
  v64 = v107;
  v105 = *(v107 + 16);
  v65 = v112;
  v105(v112, v50, v57);
  v66 = (*(v64 + 80) + 48) & ~*(v64 + 80);
  v67 = OUTLINED_FUNCTION_32_5(&unk_284E63170);
  v68 = v109;
  *(v67 + 16) = v114;
  *(v67 + 24) = v68;
  OUTLINED_FUNCTION_3_40();
  *(v69 + 32) = v71;
  *(v69 + 40) = v70;
  v107 = *(v64 + 32);
  (v107)(v69 + v66, v65, v57);
  OUTLINED_FUNCTION_1_15();
  v74 = sub_23B97B518(v72, &qword_27E1A0D38, &qword_23BBFD0B0, v73);
  v126 = v62;
  v127 = v74;
  v75 = v95;
  v76 = swift_getWitnessTable();
  v77 = v94[4];
  v78 = v110;
  sub_23BBDBBF8();

  OUTLINED_FUNCTION_13_16();
  v79(v78, v75);
  v80 = v112;
  v105(v112, v111, v57);
  v81 = OUTLINED_FUNCTION_32_5(&unk_284E63198);
  v82 = v109;
  *(v81 + 16) = v114;
  *(v81 + 24) = v82;
  OUTLINED_FUNCTION_3_40();
  *(v83 + 32) = v85;
  *(v83 + 40) = v84;
  (v107)(v83 + v66, v80, v57);
  v86 = MEMORY[0x277CE0790];
  v124 = v76;
  v125 = MEMORY[0x277CE0790];
  v87 = v97;
  v88 = swift_getWitnessTable();
  v89 = v96;
  sub_23BBDB778();

  OUTLINED_FUNCTION_13_16();
  v90(v77, v87);
  v122 = v88;
  v123 = v86;
  v91 = v100;
  swift_getWitnessTable();
  v92 = v99;
  sub_23B9D2D88();
  v93 = *(v102 + 8);
  v93(v89, v91);
  sub_23B9D2D88();
  v93(v92, v91);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BB1FD1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v169 = a4;
  v170 = a1;
  v180 = a6;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1990F8, &qword_23BBE7610);
  MEMORY[0x28223BE20](v149);
  v135 = (&v135 - v10);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EAA0, &unk_23BBFD0A0);
  MEMORY[0x28223BE20](v143);
  v136 = (&v135 - v11);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0E78, &qword_23BBFD318);
  MEMORY[0x28223BE20](v145);
  v148 = &v135 - v12;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0E80, &qword_23BBFD320);
  MEMORY[0x28223BE20](v141);
  v142 = &v135 - v13;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0D10, &qword_23BBFD088);
  MEMORY[0x28223BE20](v146);
  v144 = &v135 - v14;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0D20, &qword_23BBFD090);
  MEMORY[0x28223BE20](v140);
  v139 = (&v135 - v15);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0E88, &qword_23BBFD328);
  MEMORY[0x28223BE20](v158);
  v160 = (&v135 - v16);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0D00, &qword_23BBFD080);
  MEMORY[0x28223BE20](v159);
  v147 = &v135 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0CE8, &qword_23BBFD078);
  MEMORY[0x28223BE20](v18);
  v161 = &v135 - v19;
  v138 = type metadata accessor for ProductViewStyleConfiguration(0);
  MEMORY[0x28223BE20](v138);
  v137 = (&v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v162 = &v135 - v22;
  v153 = *(a3 - 8);
  MEMORY[0x28223BE20](v23);
  v154 = &v135 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = a2;
  v197 = a3;
  v198 = a4;
  v199 = a5;
  v25 = type metadata accessor for PromotionalIconLoadingView(255, &v196);
  WitnessTable = swift_getWitnessTable();
  v196 = v25;
  v197 = a3;
  v198 = WitnessTable;
  v199 = a5;
  v27 = type metadata accessor for DynamicProductView(0, &v196);
  v157 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v156 = &v135 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v155 = &v135 - v30;
  v166 = WitnessTable;
  v32 = type metadata accessor for StaticProductView(255, v25, WitnessTable, v31);
  v178 = v27;
  v33 = sub_23BBDACE8();
  v168 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v167 = &v135 - v34;
  MEMORY[0x28223BE20](v35);
  v150 = &v135 - v36;
  v176 = v32;
  v152 = *(v32 - 8);
  MEMORY[0x28223BE20](v37);
  v39 = &v135 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v151 = &v135 - v41;
  v165 = sub_23BBDCDB8();
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v43 = &v135 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v163 = &v135 - v45;
  v196 = a2;
  v197 = a3;
  v171 = a3;
  v46 = v169;
  v198 = v169;
  v199 = a5;
  v172 = a5;
  v47 = type metadata accessor for ProductView.Storage(0, &v196);
  v48 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v50 = (&v135 - v49);
  v177 = v33;
  v179 = v18;
  v175 = sub_23BBDACE8();
  v51 = *(v175 - 8);
  v52 = MEMORY[0x28223BE20](v175);
  v174 = &v135 - v53;
  v54 = v170;
  (*(v48 + 16))(v50, v52);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v173 = v51;
  if (!EnumCaseMultiPayload)
  {
    v71 = *v50;
    v165 = v50[1];
    v72 = v171;
    v196 = a2;
    v197 = v171;
    v73 = v172;
    v198 = v46;
    v199 = v172;
    v74 = type metadata accessor for ProductView(0, &v196);
    v75 = (v54 + v74[13]);
    v76 = *v75;
    v77 = v75[1];
    v78 = v154;
    (*(v153 + 16))(v154, v54 + v74[14], v72);
    v79 = v74[16];
    LOBYTE(v74) = *(v54 + v74[15]);
    v80 = *(v54 + v79);

    v134 = v72;
    v81 = v156;
    sub_23B9AD038(v71, v165, v76, v77, v78, v74, v80, v25, v156, v134, v166, v73);
    v82 = v178;
    v83 = swift_getWitnessTable();
    v84 = v155;
    sub_23B9D2D88();
    v85 = *(v157 + 8);
    v85(v81, v82);
    sub_23B9D2D88();
    v86 = swift_getWitnessTable();
    v87 = v167;
    sub_23BA82E14();
    v183 = v86;
    v184 = v83;
    v88 = v177;
    swift_getWitnessTable();
    sub_23BB22120();
    v70 = v174;
    sub_23BA82D64();
    (*(v168 + 8))(v87, v88);
    v85(v81, v82);
    v85(v84, v82);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v90 = v162;
    sub_23BB22040(v50, v162, v56);
    v196 = a2;
    v197 = v171;
    v198 = v46;
    v199 = v172;
    v91 = type metadata accessor for ProductView(0, &v196);
    sub_23BB1D1F0(v91, v193);
    sub_23BB6BC9C(v195);

    v202 = v194;
    sub_23B9846E8(&v202, &qword_27E19FA80, &qword_23BBFD310);
    if (v195[0])
    {
      v92 = v195[4];
      v93 = (v195[0])(v90);
      *v160 = v93;
      swift_storeEnumTagMultiPayload();
      sub_23BB221AC();
      swift_retain_n();
      v94 = v161;
      sub_23BBDACD8();

      v196 = v92;
      sub_23B9846E8(&v196, &qword_27E19FA80, &qword_23BBFD310);

      v89 = v175;
      v70 = v174;
LABEL_14:
      v115 = swift_getWitnessTable();
      v116 = swift_getWitnessTable();
      v191 = v115;
      v192 = v116;
      swift_getWitnessTable();
      sub_23BB22120();
      sub_23BA82E14();
      sub_23B9846E8(v94, &qword_27E1A0CE8, &qword_23BBFD078);
      sub_23BB23418(v90, type metadata accessor for ProductViewStyleConfiguration);
      goto LABEL_15;
    }

    sub_23BB1D1F0(v91, &v196);

    v201 = v200;
    sub_23B9846E8(&v201, &qword_27E19FA80, &qword_23BBFD310);
    v95 = swift_dynamicCastMetatype();
    v94 = v161;
    if (v95)
    {
      KeyPath = swift_getKeyPath();
      v186 = 0;
      v96 = v139;
      CompactProductViewStyle.makeBody(configuration:)(v90, v139);
      sub_23B97B5C0(KeyPath, v186);
      sub_23B9C7374(v96, v142, &qword_27E1A0D20, &qword_23BBFD090);
      swift_storeEnumTagMultiPayload();
      sub_23BB222C4();
      sub_23BAA9A74();
      v97 = v144;
      sub_23BBDACD8();
      sub_23B9C7374(v97, v148, &qword_27E1A0D10, &qword_23BBFD088);
      swift_storeEnumTagMultiPayload();
      sub_23BB22238();
      sub_23B9AAACC();
      v98 = v147;
      sub_23BBDACD8();
      sub_23B9846E8(v97, &qword_27E1A0D10, &qword_23BBFD088);
      v99 = v96;
      v100 = &qword_27E1A0D20;
      v101 = &qword_23BBFD090;
    }

    else
    {
      v102 = swift_dynamicCastMetatype();
      v103 = v137;
      sub_23BA0EFA4(v90, v137, v104);
      v105 = v147;
      if (v102)
      {
        v106 = v136;
        sub_23B998028(v103, 0, v136);
        v107 = *(v90 + *(v138 + 28));
        v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EA98, &qword_23BBF67D0);
        *(v106 + v108[9]) = v107;
        v109 = v108[10];
        *(v106 + v109) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA8, &qword_23BBE8190);
        swift_storeEnumTagMultiPayload();
        v110 = v106 + v108[11];
        *v110 = swift_getKeyPath();
        v110[8] = 0;
        v111 = v106 + *(v143 + 36);
        sub_23BA0EFA4(v90, v111, v112);
        v113 = *(type metadata accessor for ConfigureProductViewEnvironmentViewModifier(0) + 20);
        *(v111 + v113) = swift_getKeyPath();
        swift_storeEnumTagMultiPayload();
        sub_23B9C7374(v106, v142, &qword_27E19EAA0, &unk_23BBFD0A0);
        swift_storeEnumTagMultiPayload();
        sub_23BB222C4();
        sub_23BAA9A74();

        v114 = v144;
        sub_23BBDACD8();
        sub_23B9C7374(v114, v148, &qword_27E1A0D10, &qword_23BBFD088);
        swift_storeEnumTagMultiPayload();
        sub_23BB22238();
        sub_23B9AAACC();
        sub_23BBDACD8();
        sub_23B9846E8(v114, &qword_27E1A0D10, &qword_23BBFD088);
        sub_23B9846E8(v106, &qword_27E19EAA0, &unk_23BBFD0A0);
        v98 = v105;
        goto LABEL_13;
      }

      v122 = v135;
      sub_23B998028(v103, 0, v135);
      v172 = *(v90 + *(v138 + 28));
      v123 = v172;
      v124 = swift_getKeyPath();
      v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199108, &qword_23BBE7618);
      *(v122 + v125[9]) = v123;
      v126 = v125[10];
      *(v122 + v126) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA8, &qword_23BBE8190);
      swift_storeEnumTagMultiPayload();
      v127 = v125[11];
      *(v122 + v127) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0, &qword_23BBE6D50);
      swift_storeEnumTagMultiPayload();
      v128 = v122 + v125[12];
      *v128 = v124;
      v128[8] = 0;
      v129 = v122 + v125[13];
      *v129 = swift_getKeyPath();
      v129[8] = 0;
      v130 = v122 + v125[14];
      *v130 = swift_getKeyPath();
      v130[8] = 0;
      v131 = v122 + *(v149 + 36);
      sub_23BA0EFA4(v90, v131, v132);
      v133 = *(type metadata accessor for ConfigureProductViewEnvironmentViewModifier(0) + 20);
      *(v131 + v133) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v98 = v105;
      sub_23B9C7374(v122, v148, &qword_27E1990F8, &qword_23BBE7610);
      swift_storeEnumTagMultiPayload();
      sub_23BB22238();
      sub_23B9AAACC();

      sub_23BBDACD8();
      v99 = v122;
      v100 = &qword_27E1990F8;
      v101 = &qword_23BBE7610;
    }

    sub_23B9846E8(v99, v100, v101);
LABEL_13:
    v70 = v174;
    sub_23B9C7374(v98, v160, &qword_27E1A0D00, &qword_23BBFD080);
    swift_storeEnumTagMultiPayload();
    sub_23BB221AC();
    sub_23BBDACD8();
    sub_23B9846E8(v98, &qword_27E1A0D00, &qword_23BBFD080);
    v89 = v175;
    v90 = v162;
    goto LABEL_14;
  }

  v57 = v164;
  v58 = v163;
  v59 = v50;
  v60 = v165;
  (*(v164 + 32))(v163, v59, v165);
  (*(v57 + 16))(v43, v58, v60);
  v196 = a2;
  v197 = v171;
  v198 = v46;
  v199 = v172;
  v61 = type metadata accessor for ProductView(0, &v196);
  v62 = v150;
  (*(v54 + *(v61 + 52)))(v58);
  sub_23BBB73E0(v62, *(v54 + *(v61 + 60)), v25, v166, v39);
  v63 = v176;
  v64 = swift_getWitnessTable();
  v65 = v151;
  sub_23B9D2D88();
  v66 = *(v152 + 8);
  v66(v39, v63);
  sub_23B9D2D88();
  v67 = swift_getWitnessTable();
  v68 = v167;
  sub_23BA82D64();
  v181 = v64;
  v182 = v67;
  v69 = v177;
  swift_getWitnessTable();
  sub_23BB22120();
  v70 = v174;
  sub_23BA82D64();
  (*(v168 + 8))(v68, v69);
  v66(v39, v63);
  v66(v65, v63);
  (*(v164 + 8))(v163, v165);
LABEL_5:
  v89 = v175;
LABEL_15:
  v117 = swift_getWitnessTable();
  v118 = swift_getWitnessTable();
  v189 = v117;
  v190 = v118;
  v119 = swift_getWitnessTable();
  v120 = sub_23BB22120();
  v187 = v119;
  v188 = v120;
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (*(v173 + 8))(v70, v89);
}

uint64_t sub_23BB21494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v10 = type metadata accessor for ProductView(0, &v17);
  sub_23BB1D3DC(v10);
  sub_23BB1D1F0(v10, v15);
  sub_23BB1D584(v10, &v17);
  v11 = *(a1 + *(v10 + 60));
  v12 = sub_23BB1D434(v10);
  sub_23BB65BEC(a1, v15, &v17, v11, v12, a2, a3, a4, a5);

  sub_23B979500(v17, v18);
  sub_23B979500(v19, v20);
  sub_23B979500(v21, v22);
  sub_23B979500(v23, v24);
  v28 = v25;
  v29 = v26;
  sub_23B9846E8(&v28, &qword_27E19B400, &qword_23BBFF360);

  v27 = v16;
  sub_23B9846E8(&v27, &qword_27E19FA80, &qword_23BBFD310);

  if (qword_27E1976D0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for SKLogger(0);
  __swift_project_value_buffer(v13, qword_27E1BFC88);
  sub_23BBDD5B8();
  return sub_23B9D395C();
}

double sub_23BB21640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v5 = type metadata accessor for ProductView(0, &v9);
  sub_23BB1D3DC(v5);
  sub_23BB1D1F0(v5, v7);
  sub_23BB1D584(v5, &v9);
  sub_23BB65F94(v7, &v9);
  sub_23B979500(v9, v10);
  sub_23B979500(v11, v12);
  sub_23B979500(v13, v14);
  sub_23B979500(v15, v16);
  v20 = v17;
  v21 = v18;
  sub_23B9846E8(&v20, &qword_27E19B400, &qword_23BBFF360);

  v19 = v8;
  sub_23B9846E8(&v19, &qword_27E19FA80, &qword_23BBFD310);

  sub_23BB1D3DC(v5);
  sub_23BB66084();

  return result;
}

void *sub_23BB21760@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v8 = sub_23BBDAA88();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for InAppPurchaseIconFrameRoundedSquare(0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    *v16 = 0;
    v16[8] = 1;
    v17 = *(v13 + 20);
    (*(v9 + 104))(&v16[v17], *MEMORY[0x277CE0118], v8, v14);
    (*(v9 + 16))(v11, &v16[v17], v8);
    sub_23BBDB5A8();
    v22 = v24;
    v23 = v25;
    v18 = v26;
    result = sub_23BB23418(v16, type metadata accessor for InAppPurchaseIconFrameRoundedSquare);
    v21 = v22;
    v20 = v23;
  }

  else
  {
    (*(v9 + 104))(v11, *MEMORY[0x277CE0118], v8, v14);
    result = sub_23BBDB5A8();
    v20 = v25;
    v21 = v24;
    v18 = v26;
  }

  *a2 = v21;
  *(a2 + 16) = v20;
  *(a2 + 32) = v18;
  return result;
}

double sub_23BB21998@<D0>(uint64_t a1@<X8>)
{
  sub_23BB21760(*v5, v9);
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

void (*sub_23BB219E8(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_23BBD9AA8();
  return sub_23B97E318;
}

uint64_t sub_23BB21A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BB233C4();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_23BB21AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BB233C4();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_23BB21B24(uint64_t a1)
{
  v2 = sub_23BB233C4();

  return MEMORY[0x282133738](a1, v2);
}

uint64_t sub_23BB21B74()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23B99D1DC();
  *v0 = result;
  return result;
}

uint64_t sub_23BB21BB8()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BABCBB4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_23BB21BE4()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BB78AC8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_23BB21C28()
{
  OUTLINED_FUNCTION_1_4();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 33) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_23BB21CF4()
{

  return swift_deallocObject();
}

uint64_t sub_23BB21D3C()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_1_4();
  v3 = (*(v2 + 80) + 49) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  (*(v2 + 8))(v0 + v3);
  (*(v4 + 8))(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_23BB21EE4()
{

  return swift_deallocObject();
}

uint64_t sub_23BB21F28(double a1)
{
  type metadata accessor for ProductViewStyleConfiguration(0);
  OUTLINED_FUNCTION_19_0();
  v4 = (v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
  }

  v5 = *(v1 + 24);
  type metadata accessor for Product.TaskState(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_12_1();
    (*(v7 + 8))(&v4[v5]);
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_23BB22040(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for ProductViewStyleConfiguration(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23BB220A4@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for ProductViewStyleConfiguration(0);
  OUTLINED_FUNCTION_13_0(v4);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23BB1F15C(v6, a1);
}

unint64_t sub_23BB22120()
{
  result = qword_27E1A0CF0;
  if (!qword_27E1A0CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0CE8, &qword_23BBFD078);
    sub_23BB221AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0CF0);
  }

  return result;
}

unint64_t sub_23BB221AC()
{
  result = qword_27E1A0CF8;
  if (!qword_27E1A0CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0D00, &qword_23BBFD080);
    sub_23BB22238();
    sub_23B9AAACC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0CF8);
  }

  return result;
}

unint64_t sub_23BB22238()
{
  result = qword_27E1A0D08;
  if (!qword_27E1A0D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0D10, &qword_23BBFD088);
    sub_23BB222C4();
    sub_23BAA9A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0D08);
  }

  return result;
}

unint64_t sub_23BB222C4()
{
  result = qword_27E1A0D18;
  if (!qword_27E1A0D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0D20, &qword_23BBFD090);
    sub_23B97B518(&qword_27E1A0D28, &qword_27E1A0D30, &qword_23BBFD098, &unk_23BBE6B08);
    sub_23BB223BC(qword_27E199110, type metadata accessor for ConfigureProductViewEnvironmentViewModifier, &unk_23BC05A1C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0D18);
  }

  return result;
}

uint64_t sub_23BB223BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_46Tm()
{
  v3 = *(v1 + 3);
  v4 = *(v1 + 4);
  v5 = *(v1 + 5);
  v21 = *(v1 + 2);
  v2 = v21;
  v22 = v3;
  v23 = v4;
  v24 = v5;
  type metadata accessor for ProductView(0, &v21);
  OUTLINED_FUNCTION_19_0();
  v7 = *(v6 + 80);
  v21 = v2;
  v22 = v3;
  v8 = (v7 + 48) & ~v7;
  v9 = &v1[v8];
  v23 = v4;
  v24 = v5;
  OUTLINED_FUNCTION_18_17(v10, &v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      if (*v9)
      {
      }

      v13 = *(type metadata accessor for ProductViewStyleConfiguration(0) + 24);
      type metadata accessor for Product.TaskState(0);
      v14 = swift_getEnumCaseMultiPayload();
      if (v14 == 1)
      {
        sub_23BBDCDB8();
        OUTLINED_FUNCTION_12_1();
        (*(v15 + 8))(&v9[v13]);
      }

      else if (!v14)
      {
      }

      break;
    case 1:
      sub_23BBDCDB8();
      OUTLINED_FUNCTION_12_1();
      (*(v12 + 8))(&v1[v8]);
      break;
    case 0:

      break;
  }

  (*(*(v3 - 8) + 8))(&v9[v0[14]], v3);
  v16 = &v9[v0[17]];
  sub_23B9AD3D4(*v16, *(v16 + 1), *(v16 + 2), *(v16 + 3), *(v16 + 4), v16[40]);

  j__swift_release(*&v9[v0[19]]);
  v17 = &v9[v0[20]];
  j__swift_release(*v17);
  j__swift_release(*(v17 + 2));
  j__swift_release(*(v17 + 4));
  v19.n128_f64[0] = sub_23BA15630(*(v17 + 6), *(v17 + 7), v17[64], v18);
  sub_23BA15630(*(v17 + 9), *(v17 + 10), v17[88], v19);
  return swift_deallocObject();
}

uint64_t sub_23BB226AC(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v11[0] = v1[2];
  v2 = v11[0];
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v6 = type metadata accessor for ProductView(0, v11);
  OUTLINED_FUNCTION_13_0(v6);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return a1(v8, v2, v3, v4, v5);
}

void sub_23BB227B8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  v17 = v1;
  v2 = type metadata accessor for ProductView.Storage(319, &v15);
  if (v3 <= 0x3F)
  {
    v15 = v2;
    v4 = sub_23B975E04();
    if (v5 <= 0x3F)
    {
      *&v16 = v4;
      v6 = swift_checkMetadataState();
      if (v7 <= 0x3F)
      {
        *(&v16 + 1) = v6;
        v17 = MEMORY[0x277D839B0];
        v18 = MEMORY[0x277D839B0];
        sub_23BB0CC9C();
        if (v10 <= 0x3F)
        {
          v19 = v8;
          sub_23BB22E10(319, v9);
          if (v12 <= 0x3F)
          {
            v20 = v11;
            sub_23BB0CD50(319);
            if (v14 <= 0x3F)
            {
              v21 = v13;
              v22 = &type metadata for EnvironmentPurchaseActions;
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23BB228DC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_23BBDCDB8() - 8);
  v7 = *(v6 + 64);
  v8 = ~(*(v6 + 80) & 0xF8u) & ((*(v6 + 80) & 0xF8) + 24);
  if (v7 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v7;
  }

  v10 = *(a3 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = ((v9 + v8 + 8) & 0xFFFFFFFFFFFFFFF8) + 10;
  if (v7 <= v14)
  {
    v7 = v14;
  }

  v15 = 16;
  if (v7 > 0x10)
  {
    v15 = v7;
  }

  v16 = *(v11 + 80);
  v17 = *(v11 + 64);
  if (!a2)
  {
    return 0;
  }

  if (v13 < a2)
  {
    v18 = ((((v17 + ((v16 + (v15 & 0xFFFFFFFFFFFFFFF8) + 24) & ~v16) + 57) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 89;
    if (v18 <= 3)
    {
      v19 = ((a2 - v13 + 255) >> 8) + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    switch(v21)
    {
      case 1:
        v22 = a1[v18];
        if (!a1[v18])
        {
          break;
        }

        goto LABEL_29;
      case 2:
        v22 = *&a1[v18];
        if (*&a1[v18])
        {
          goto LABEL_29;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BB22B28);
      case 4:
        v22 = *&a1[v18];
        if (!v22)
        {
          break;
        }

LABEL_29:
        v24 = v18 > 3;
        if (v18 <= 3)
        {
          v25 = (v22 - 1) << (8 * v18);
        }

        else
        {
          v25 = 0;
        }

        if (v24)
        {
          v28 = *a1;
        }

        else
        {
          v28 = *a1;
        }

        return v13 + (v28 | v25) + 1;
      default:
        break;
    }
  }

  v26 = (&a1[v15 + 8] & 0xFFFFFFFFFFFFFFF8);
  if ((v12 & 0x80000000) != 0)
  {

    return __swift_getEnumTagSinglePayload((v26 + v16 + 16) & ~v16, v12, v10);
  }

  else
  {
    v27 = *v26;
    if (v27 >= 0xFFFFFFFF)
    {
      LODWORD(v27) = -1;
    }

    return (v27 + 1);
  }
}

void sub_23BB22B3C(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_23BBDCDB8() - 8);
  v9 = *(v8 + 64);
  v10 = ~(*(v8 + 80) & 0xF8u) & ((*(v8 + 80) & 0xF8) + 24);
  if (v9 <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = v9;
  }

  v12 = *(a4 + 24);
  v13 = *(v12 - 8);
  v14 = *(v13 + 84);
  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = *(v13 + 84);
  }

  v16 = ((v11 + v10 + 8) & 0xFFFFFFFFFFFFFFF8) + 10;
  if (v9 > v16)
  {
    v16 = v9;
  }

  v17 = 16;
  if (v16 > 0x10)
  {
    v17 = v16;
  }

  v18 = *(v13 + 80);
  v19 = ((((*(v13 + 64) + ((v18 + (v17 & 0xFFFFFFFFFFFFFFF8) + 24) & ~v18) + 57) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 89;
  if (v15 >= a3)
  {
    v22 = 0;
  }

  else
  {
    if (v19 <= 3)
    {
      v20 = ((a3 - v15 + 255) >> 8) + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }
  }

  if (v15 < a2)
  {
    v23 = ~v15 + a2;
    bzero(a1, v19);
    if (v19 <= 3)
    {
      v24 = (v23 >> 8) + 1;
    }

    else
    {
      v24 = 1;
    }

    if (v19 > 3)
    {
      *a1 = v23;
    }

    else
    {
      *a1 = v23;
    }

    switch(v22)
    {
      case 1:
        *(a1 + v19) = v24;
        return;
      case 2:
        *(a1 + v19) = v24;
        return;
      case 3:
        goto LABEL_51;
      case 4:
        *(a1 + v19) = v24;
        return;
      default:
        return;
    }
  }

  switch(v22)
  {
    case 1:
      *(a1 + v19) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    case 2:
      *(a1 + v19) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    case 3:
LABEL_51:
      __break(1u);
      JUMPOUT(0x23BB22DE8);
    case 4:
      *(a1 + v19) = 0;
      goto LABEL_37;
    default:
LABEL_37:
      if (a2)
      {
LABEL_38:
        v25 = ((a1 + v17 + 8) & 0xFFFFFFFFFFFFFFF8);
        if ((v14 & 0x80000000) != 0)
        {

          __swift_storeEnumTagSinglePayload((v25 + v18 + 16) & ~v18, a2, v14, v12);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v26 = a2 & 0x7FFFFFFF;
            v25[1] = 0;
          }

          else
          {
            v26 = (a2 - 1);
          }

          *v25 = v26;
        }
      }

      return;
  }
}