uint64_t sub_23DE9FBEC()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  v5 = *v2;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  *(v8 + 1152) = v7;
  *(v8 + 1160) = v0;

  OUTLINED_FUNCTION_24();
  v10 = *(v9 + 1120);
  v11 = *(v1 + 1112);
  if (v0)
  {
    v12 = sub_23DEA12EC;
  }

  else
  {
    v12 = sub_23DE9FD18;
  }

  return MEMORY[0x2822009F8](v12, v11, v10);
}

uint64_t sub_23DE9FD18()
{
  OUTLINED_FUNCTION_4();
  if (sub_23DEABCF0())
  {
    v1 = v0 + 2;
    v2 = v0 + 34;
    v3 = v0[112];
    v0[2] = v0;
    v0[7] = v0 + 107;
    v0[3] = sub_23DEA0C34;
    OUTLINED_FUNCTION_159_0();
    v4 = swift_continuation_init();
    v0[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CCF0, &qword_23E226628);
    v0[34] = MEMORY[0x277D85DD0];
    v0[35] = 1107296256;
    v0[36] = sub_23DEA26AC;
    v0[37] = &block_descriptor_14;
    v0[38] = v4;
LABEL_5:
    [v3 requestInterfacePresentationWithCompletionHandler_];

    return MEMORY[0x282200938](v1);
  }

  sub_23E1FC07C();
  if (sub_23E1FBACC())
  {
    v2 = v0 + 26;
    v1 = v0 + 10;
    v3 = v0[112];
    v0[10] = v0;
    v0[15] = v0 + 106;
    v0[11] = sub_23DE9FF50;
    OUTLINED_FUNCTION_159_0();
    v5 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CCF0, &qword_23E226628);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_23DEA26AC;
    v0[29] = &block_descriptor_6;
    v0[30] = v5;
    goto LABEL_5;
  }

  v0[150] = v0[144];
  v6 = swift_task_alloc();
  v0[151] = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_25_1(v6);

  return sub_23DEAB368();
}

uint64_t sub_23DE9FF50()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1168) = *(v3 + 112);
  OUTLINED_FUNCTION_164();
  v5 = *(v4 + 1120);
  v7 = *(v6 + 1112);
  if (v8)
  {
    v9 = sub_23DEA16A8;
  }

  else
  {
    v9 = sub_23DEA006C;
  }

  return MEMORY[0x2822009F8](v9, v7, v5);
}

uint64_t sub_23DEA006C()
{
  OUTLINED_FUNCTION_126();
  v0[147] = v0[106];
  v0[108] = &unk_285109BE8;
  OUTLINED_FUNCTION_159_0();
  v1 = swift_dynamicCastObjCProtocolConditional();
  if (v1)
  {
    v2 = v1;
    v3 = v0[141];
    OUTLINED_FUNCTION_69_2(v0 + 90);
    sub_23E1FBC0C();
    v4 = OUTLINED_FUNCTION_66();
    v3(v4);
    OUTLINED_FUNCTION_158_0();
    v5 = sub_23E1FDBDC();
    v0[148] = v5;

    v0[18] = v0;
    v0[23] = v0 + 104;
    v0[19] = sub_23DEA0274;
    v6 = swift_continuation_init();
    v0[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CCF8, &qword_23E226630);
    v0[42] = MEMORY[0x277D85DD0];
    v0[43] = 1107296256;
    v0[44] = sub_23DEA2740;
    v0[45] = &block_descriptor_11_0;
    v0[46] = v6;
    [v2 showWithResponse:0 modelName:v5 completionHandler:?];
    OUTLINED_FUNCTION_72_0();

    return MEMORY[0x282200938](v7);
  }

  else
  {
    swift_unknownObjectRelease();
    v0[150] = v0[144];
    v9 = swift_task_alloc();
    v0[151] = v9;
    *v9 = v0;
    OUTLINED_FUNCTION_25_1(v9);
    OUTLINED_FUNCTION_72_0();

    return sub_23DEAB368();
  }
}

uint64_t sub_23DEA0274()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1192) = *(v3 + 176);
  OUTLINED_FUNCTION_164();
  v5 = *(v4 + 1120);
  v7 = *(v6 + 1112);
  if (v8)
  {
    v9 = sub_23DEA195C;
  }

  else
  {
    v9 = sub_23DEA0390;
  }

  return MEMORY[0x2822009F8](v9, v7, v5);
}

uint64_t sub_23DEA0390()
{
  OUTLINED_FUNCTION_142_0();
  v1 = *(v0 + 1152);
  v2 = *(v0 + 832);
  v3 = *(v0 + 840);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CD00, &qword_23E226638);
  v4 = sub_23E1FBA9C();
  OUTLINED_FUNCTION_6_0();
  v6 = v5;
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_23E222340;
  v9 = (v8 + v7);
  *v9 = v2;
  v9[1] = v3;
  v10 = *MEMORY[0x277D42DD0];
  sub_23E1FDA8C();
  OUTLINED_FUNCTION_12();
  (*(v11 + 104))(v9, v10);
  (*(v6 + 104))(v9, *MEMORY[0x277CFC050], v4);
  objc_allocWithZone(sub_23E1FBADC());
  v12 = sub_23E1FBAAC();
  swift_unknownObjectRelease();

  *(v0 + 1200) = v12;
  v13 = swift_task_alloc();
  *(v0 + 1208) = v13;
  *v13 = v0;
  OUTLINED_FUNCTION_25_1(v13);

  return sub_23DEAB368();
}

uint64_t sub_23DEA0560()
{
  OUTLINED_FUNCTION_33_0();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_58();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v5[152] = v3;
  v5[153] = v0;

  if (v0)
  {
    v9 = v5[140];
    v10 = v5[139];

    return MEMORY[0x2822009F8](sub_23DEA1C28, v10, v9);
  }

  else
  {
    v11 = swift_task_alloc();
    v5[154] = v11;
    *v11 = v7;
    v11[1] = sub_23DEA06E4;

    return sub_23DEAA608();
  }
}

uint64_t sub_23DEA06E4()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 1240) = v0;

  OUTLINED_FUNCTION_24();
  v6 = *(v5 + 1120);
  v7 = *(v1 + 1112);
  if (v0)
  {
    v8 = sub_23DEA1ED0;
  }

  else
  {
    v8 = sub_23DEA080C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_23DEA080C()
{
  OUTLINED_FUNCTION_142_0();
  v1 = v0[113];
  v2 = v0[112];
  sub_23E1FC07C();
  sub_23E1FC00C();
  v4 = v3;
  v5 = OBJC_IVAR___WFAskLLMAction_runLatencies;
  OUTLINED_FUNCTION_195_0(v2 + OBJC_IVAR___WFAskLLMAction_runLatencies, (v0 + 101));
  sub_23DEADF24();
  v6 = *(*(v2 + v5) + 16);
  sub_23DEADF70(v6);
  v7 = *(v2 + v5);
  *(v7 + 16) = v6 + 1;
  *(v7 + 8 * v6 + 32) = v4;
  *(v2 + v5) = v7;
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v1);
  OUTLINED_FUNCTION_42_2();
  OUTLINED_FUNCTION_45();
  sub_23E1FBA4C();
  v11 = swift_task_alloc();
  v0[156] = v11;
  *v11 = v0;
  v11[1] = sub_23DEA0958;
  v12 = OUTLINED_FUNCTION_65_0(v0[124]);

  return sub_23DEEE204(v12, v13, v14);
}

uint64_t sub_23DEA0958()
{
  OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_143_0();
  v2 = v0[141];
  v3 = v0[124];
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_50();
  v2(v6);
  sub_23DE481FC(v3, &unk_27E32CC70, &qword_23E2265F8);
  OUTLINED_FUNCTION_136();
  v8 = *(v7 + 1120);
  v9 = v0[139];

  return MEMORY[0x2822009F8](sub_23DEA0B0C, v9, v8);
}

uint64_t sub_23DEA0C34()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1256) = *(v3 + 48);
  OUTLINED_FUNCTION_164();
  v5 = *(v4 + 1120);
  v7 = *(v6 + 1112);
  if (v8)
  {
    v9 = sub_23DEA2184;
  }

  else
  {
    v9 = sub_23DEA0D50;
  }

  return MEMORY[0x2822009F8](v9, v7, v5);
}

uint64_t sub_23DEA0D50()
{
  OUTLINED_FUNCTION_23();
  v0[158] = v0[107];
  v1 = swift_task_alloc();
  v0[159] = v1;
  *v1 = v0;
  v1[1] = sub_23DEA0DF4;

  return sub_23DEA58A8();
}

uint64_t sub_23DEA0DF4()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 1280) = v0;

  OUTLINED_FUNCTION_24();
  v6 = *(v5 + 1120);
  v7 = *(v1 + 1112);
  if (v0)
  {
    v8 = sub_23DEA2418;
  }

  else
  {
    v8 = sub_23DEA0F1C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_23DEA1010()
{
  OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_143_0();
  v2 = *(v0 + 1128);
  v3 = *v1;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_30_0();
  v2(v5);
  OUTLINED_FUNCTION_136();
  v7 = *(v6 + 1120);
  v8 = *(v0 + 1112);

  return MEMORY[0x2822009F8](sub_23DEA11D0, v8, v7);
}

uint64_t sub_23DEA11D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_161();
  v26 = *(v16 + 984);
  v27 = *(v16 + 960);
  v28 = *(v16 + 952);
  v29 = *(v16 + 928);
  v30 = *(v16 + 920);

  OUTLINED_FUNCTION_88_1();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_56_1();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, v26, v27, v28, v29, v30, a14, a15, a16);
}

uint64_t sub_23DEA12EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_161();

  OUTLINED_FUNCTION_88_1();
  OUTLINED_FUNCTION_1_12();
  v29 = v18;
  v30 = v17;
  v31 = *(v16 + 920);
  v32 = v19;

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_56_1();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, v29, v30, v31, v32, a14, a15, a16);
}

uint64_t sub_23DEA13CC()
{
  OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_143_0();
  v2 = v0[141];
  v3 = v0[124];
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_50();
  v2(v6);
  sub_23DE481FC(v3, &unk_27E32CC70, &qword_23E2265F8);
  OUTLINED_FUNCTION_136();
  v8 = *(v7 + 1120);
  v9 = v0[139];

  return MEMORY[0x2822009F8](sub_23DEA1580, v9, v8);
}

uint64_t sub_23DEA1580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_161();
  v17 = v16[168];
  v18 = v16[120];
  v19 = v16[117];

  v20 = OUTLINED_FUNCTION_45();
  v21(v20);
  v22 = OUTLINED_FUNCTION_54();
  v24 = v23(v22);
  OUTLINED_FUNCTION_80_0(v24);

  OUTLINED_FUNCTION_88_1();
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_79_0();

  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_56_1();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16);
}

void *sub_23DEA26AC(uint64_t a1, uint64_t a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_23DEEC878();
  }

  else if (a2)
  {
    swift_unknownObjectRetain();

    return sub_23DEEC87C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23DEA2740(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_23DEEC878();
  }

  else
  {
    v8 = sub_23E1FDC1C();

    return sub_23DEE4C04(v4, v8, v7);
  }
}

uint64_t sub_23DEA2860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_23E1FDECC();
  v3[5] = sub_23E1FDEBC();
  v5 = sub_23E1FDE6C();

  return MEMORY[0x2822009F8](sub_23DEA28FC, v5, v4);
}

uint64_t sub_23DEA28FC()
{
  OUTLINED_FUNCTION_4();
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_23DEA29B8;
  OUTLINED_FUNCTION_65_0(v0[2]);

  return sub_23DE9EE2C();
}

uint64_t sub_23DEA29B8()
{
  OUTLINED_FUNCTION_196_0();
  OUTLINED_FUNCTION_33_0();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  v6 = v3[4];
  v7 = v3[2];
  *v5 = *v1;

  if (v2)
  {
    v8 = sub_23E1FBEBC();

    v9 = OUTLINED_FUNCTION_155();
    v10(v9);
  }

  else
  {
    (*(v3[6] + 16))(v3[6], 0);
  }

  _Block_release(v4[6]);
  OUTLINED_FUNCTION_196();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_23DEA2BB0(uint64_t a1)
{
  v3 = OBJC_IVAR___WFAskLLMAction_runLatencies;
  OUTLINED_FUNCTION_195_0(v1 + OBJC_IVAR___WFAskLLMAction_runLatencies, v5);
  *(v1 + v3) = a1;
}

uint64_t sub_23DEA2C50(int a1, int a2)
{
  LODWORD(v406) = a2;
  v405 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CDC0, &qword_23E2266E8);
  OUTLINED_FUNCTION_25(v4);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_16_5(v6);
  v7 = sub_23E1FCAEC();
  v8 = OUTLINED_FUNCTION_3_6(v7, &v419);
  v394 = v9;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_16_5(v11);
  v12 = sub_23E1FCB1C();
  v13 = OUTLINED_FUNCTION_3_6(v12, &v427);
  v418 = v14;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_94_0();
  v417 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CDC8, &qword_23E2266F0);
  OUTLINED_FUNCTION_25(v17);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_16_5(v19);
  v20 = sub_23E1FCAAC();
  v21 = OUTLINED_FUNCTION_3_6(v20, &v425);
  v401 = v22;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_16_5(v24);
  v25 = sub_23E1FCADC();
  v26 = OUTLINED_FUNCTION_3_6(v25, &v426);
  v413 = v27;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_94_0();
  v420 = v29;
  sub_23E1FCB2C();
  OUTLINED_FUNCTION_6_0();
  v411 = v31;
  v412 = v30;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_9_3();
  v416 = v32;
  sub_23E1FCB6C();
  OUTLINED_FUNCTION_6_0();
  v409 = v34;
  v410 = v33;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_16_5(v35);
  v36 = sub_23E1FCB4C();
  v37 = OUTLINED_FUNCTION_3_6(v36, &v428);
  v407 = v38;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_16_5(v39);
  sub_23E1FCB8C();
  OUTLINED_FUNCTION_6_0();
  v414 = v40;
  v415 = v41;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_9_3();
  v421 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CDD0, &qword_23E2266F8);
  OUTLINED_FUNCTION_25(v43);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_16_5(v45);
  v46 = sub_23E1FCA7C();
  v47 = OUTLINED_FUNCTION_3_6(v46, &v422);
  v389 = v48;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_16_5(v50);
  v51 = sub_23E1FBC1C();
  OUTLINED_FUNCTION_6_0();
  v419 = v52;
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_44_2(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CDD8, &qword_23E226700);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v56);
  v58 = v386 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CC38, &qword_23E2265D8);
  v60 = OUTLINED_FUNCTION_25(v59);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_120_0();
  MEMORY[0x28223BE20](v62);
  v64 = v386 - v63;
  v422 = sub_23E1FD03C();
  OUTLINED_FUNCTION_6_0();
  v426 = v65;
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_59();
  v69 = v67 - v68;
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_90_1();
  if (VCIsInternalBuild())
  {
    v75 = sub_23E1FDBDC();
    v76 = MGGetBoolAnswer();

    if (v76)
    {
      sub_23E1FCB9C();
      v77 = sub_23E1FD02C();
      sub_23E1FE1AC();
      v78 = OUTLINED_FUNCTION_100_0();
      if (os_log_type_enabled(v78, v79))
      {
        OUTLINED_FUNCTION_74_2();
        v80 = swift_slowAlloc();
        OUTLINED_FUNCTION_168_0(v80);
        OUTLINED_FUNCTION_152_0();
        _os_log_impl(v81, v82, v83, v84, v85, v86);
        OUTLINED_FUNCTION_52_2();
        MEMORY[0x23EF074C0]();
      }

      OUTLINED_FUNCTION_98_0();
      v88 = v2;
      v89 = v422;
      return v87(v88, v89);
    }
  }

  sub_23DE9D78C();
  if (!v424)
  {
    sub_23DE481FC(&v423, &unk_27E32CC40, &qword_23E2265E0);
    sub_23E1FCB9C();
    v98 = sub_23E1FD02C();
    sub_23E1FE1BC();
    v99 = OUTLINED_FUNCTION_100_0();
    if (os_log_type_enabled(v99, v100))
    {
      OUTLINED_FUNCTION_74_2();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_183(&dword_23DE30000, v101, v102, "Could not determine use case identifier for the model");
      OUTLINED_FUNCTION_52_2();
      MEMORY[0x23EF074C0]();
    }

    OUTLINED_FUNCTION_98_0();
    v103(v69, v422);
    sub_23E1FB9FC();
    OUTLINED_FUNCTION_0_14();
    v106 = sub_23DEAEFA8(v104, 255, v105);
    v107 = OUTLINED_FUNCTION_40_1(v106);
    OUTLINED_FUNCTION_47_1(v107, v108);
    OUTLINED_FUNCTION_1_7();
    (*(v109 + 104))();
    return swift_willThrow();
  }

  __swift_project_boxed_opaque_existential_0(&v423, v424);
  v91 = sub_23E1FBA5C();
  v93 = v92;
  __swift_destroy_boxed_opaque_existential_0(&v423);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CDE0, &unk_23E224050);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_23E222340;
  *(v94 + 32) = v91;
  *(v94 + 40) = v93;
  sub_23DE9D78C();
  if (v424)
  {
    __swift_project_boxed_opaque_existential_0(&v423, v424);
    OUTLINED_FUNCTION_138_0();
    sub_23E1FBA4C();
    OUTLINED_FUNCTION_64();
    __swift_storeEnumTagSinglePayload(v95, v96, v97, v51);
    __swift_destroy_boxed_opaque_existential_0(&v423);
  }

  else
  {
    sub_23DE481FC(&v423, &unk_27E32CC40, &qword_23E2265E0);
    v110 = OUTLINED_FUNCTION_40_2();
    __swift_storeEnumTagSinglePayload(v110, v111, v112, v51);
  }

  (*(v419 + 104))(v3, *MEMORY[0x277CFC140], v51);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v113, v114, v115, v51);
  v116 = *(v55 + 48);
  sub_23DEAEF4C(v64, v58, &qword_27E32CC38, &qword_23E2265D8);
  sub_23DEAEF4C(v3, v58 + v116, &qword_27E32CC38, &qword_23E2265D8);
  OUTLINED_FUNCTION_194_0(v58);
  if (v125)
  {
    v117 = OUTLINED_FUNCTION_156_0();
    sub_23DE481FC(v117, v118, &qword_23E2265D8);
    v119 = OUTLINED_FUNCTION_49();
    sub_23DE481FC(v119, v120, &qword_23E2265D8);
    OUTLINED_FUNCTION_194_0(v58 + v116);
    v121 = v417;
    if (v125)
    {
      sub_23DE481FC(v58, &qword_27E32CC38, &qword_23E2265D8);
      v122 = v418;
      v123 = v420;
      v124 = v416;
      goto LABEL_24;
    }

LABEL_22:
    sub_23DE481FC(v58, &qword_27E32CDD8, &qword_23E226700);
    v122 = v418;
    v123 = v420;
    v124 = v416;
    goto LABEL_34;
  }

  v55 = v399;
  sub_23DEAEF4C(v58, v399, &qword_27E32CC38, &qword_23E2265D8);
  OUTLINED_FUNCTION_194_0(v58 + v116);
  if (v125)
  {
    v126 = OUTLINED_FUNCTION_156_0();
    sub_23DE481FC(v126, v127, &qword_23E2265D8);
    v128 = OUTLINED_FUNCTION_49();
    sub_23DE481FC(v128, v129, &qword_23E2265D8);
    (*(v419 + 8))(v55, v51);
    v121 = v417;
    goto LABEL_22;
  }

  v406 = v94;
  v130 = v419;
  OUTLINED_FUNCTION_130_0();
  v131 = OUTLINED_FUNCTION_151_0();
  v132(v131);
  sub_23DEAEFA8(&qword_27E32CE08, 255, MEMORY[0x277CFC148]);
  v405 = sub_23E1FDB2C();
  v133 = v55;
  v55 = *(v130 + 8);
  v134 = OUTLINED_FUNCTION_128_0();
  (v55)(v134);
  sub_23DE481FC(v3, &qword_27E32CC38, &qword_23E2265D8);
  sub_23DE481FC(v64, &qword_27E32CC38, &qword_23E2265D8);
  (v55)(v133, v51);
  v94 = v406;
  sub_23DE481FC(v58, &qword_27E32CC38, &qword_23E2265D8);
  v121 = v417;
  v122 = v418;
  v123 = v420;
  v124 = v416;
  if ((v405 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_24:
  sub_23E1FCD2C();
  sub_23E1FCD1C();
  sub_23E1FCD0C();

  if (!v424)
  {
    sub_23DE481FC(&v423, &qword_27E32CE00, &unk_23E226710);
    v58 = v396;
    OUTLINED_FUNCTION_18_0();
    __swift_storeEnumTagSinglePayload(v156, v157, v158, v397);
    goto LABEL_29;
  }

  __swift_project_boxed_opaque_existential_0(&v423, v424);
  OUTLINED_FUNCTION_179_0();
  OUTLINED_FUNCTION_37();
  v123 = v420;
  sub_23E1FCD3C();
  OUTLINED_FUNCTION_64();
  v55 = v397;
  __swift_storeEnumTagSinglePayload(v135, v136, v137, v397);
  __swift_destroy_boxed_opaque_existential_0(&v423);
  if (__swift_getEnumTagSinglePayload(v58, 1, v55) == 1)
  {
LABEL_29:
    sub_23DE481FC(v58, &qword_27E32CDD0, &qword_23E2266F8);
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_124_0();
  v138 = OUTLINED_FUNCTION_102_0();
  v139(v138, v58, v55);
  OUTLINED_FUNCTION_145_0();
  sub_23E1FCB9C();
  v140 = v386[1];
  v141 = OUTLINED_FUNCTION_107_0();
  v142(v141);
  v143 = sub_23E1FD02C();
  sub_23E1FE1AC();
  v144 = OUTLINED_FUNCTION_100_0();
  if (os_log_type_enabled(v144, v145))
  {
    OUTLINED_FUNCTION_101_0();
    swift_slowAlloc();
    OUTLINED_FUNCTION_85_0();
    v146 = swift_slowAlloc();
    v423 = v146;
    *v140 = 136315138;
    v419 = sub_23E1FCA6C();
    v148 = v147;
    v149 = *(v121 + 8);
    v149(v140, v55);
    sub_23DE56B40(v419, v148, &v423);
    OUTLINED_FUNCTION_138_0();
    v122 = v418;

    *(v140 + 4) = v140;
    OUTLINED_FUNCTION_92_1();
    _os_log_impl(v150, v151, v152, v153, v154, v155);
    __swift_destroy_boxed_opaque_existential_0(v146);
    v124 = v416;
    OUTLINED_FUNCTION_52_2();
    MEMORY[0x23EF074C0]();
    OUTLINED_FUNCTION_52_2();
    MEMORY[0x23EF074C0]();
  }

  else
  {

    v149 = *(v121 + 8);
    v149(v140, v55);
  }

  v426[1](v388, v422);
  v159 = sub_23E1FCA6C();
  v161 = v160;
  v58 = *(v94 + 16);
  v162 = *(v94 + 24);
  if (v58 >= v162 >> 1)
  {
    OUTLINED_FUNCTION_9(v162);
    sub_23DE4CB98();
    v94 = v350;
  }

  v149(v395, v55);
  *(v94 + 16) = v58 + 1;
  v163 = v94 + 16 * v58;
  *(v163 + 32) = v159;
  *(v163 + 40) = v161;
  v121 = v417;
  v123 = v420;
LABEL_34:
  v164 = OUTLINED_FUNCTION_102_0();
  v165(v164);
  OUTLINED_FUNCTION_179_0();
  sub_23E1FCB3C();
  sub_23E1FCB7C();
  OUTLINED_FUNCTION_54_1();
  v166(v58, v408);
  sub_23E1FCB5C();
  v167 = v411;
  v168 = OUTLINED_FUNCTION_164_0();
  v170 = v169(v168);
  if (v170 != *MEMORY[0x277D0DFA8])
  {
    if (v170 != *MEMORY[0x277D0DFB0])
    {
      if (v170 == *MEMORY[0x277D0E278])
      {
        OUTLINED_FUNCTION_179_0();
        sub_23E1FCB9C();
        v229 = sub_23E1FD02C();
        sub_23E1FE1AC();
        v230 = OUTLINED_FUNCTION_100_0();
        if (os_log_type_enabled(v230, v231))
        {
          OUTLINED_FUNCTION_74_2();
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_183(&dword_23DE30000, v232, v233, "GenerativeModelsAvailability is .available");
          OUTLINED_FUNCTION_52_2();
          MEMORY[0x23EF074C0]();
        }

        OUTLINED_FUNCTION_98_0();
        v234(v58, v422);
        v88 = OUTLINED_FUNCTION_37_1();
        return v87(v88, v89);
      }

      v249 = OUTLINED_FUNCTION_37_1();
      v250(v249);
      v251 = OUTLINED_FUNCTION_164_0();
      return v252(v251);
    }

    v196 = v167 + 96;
    v197 = OUTLINED_FUNCTION_164_0();
    v198(v197);
    v199 = v403;
    (*(v122 + 32))(v121, v124, v403);
    OUTLINED_FUNCTION_145_0();
    sub_23E1FCB9C();
    v200 = v390;
    (*(v122 + 16))(v390, v121, v199);
    v201 = sub_23E1FD02C();
    sub_23E1FE1BC();
    v202 = OUTLINED_FUNCTION_100_0();
    if (os_log_type_enabled(v202, v203))
    {
      OUTLINED_FUNCTION_101_0();
      swift_slowAlloc();
      OUTLINED_FUNCTION_85_0();
      v204 = swift_slowAlloc();
      v423 = v204;
      *v123 = 136315138;
      sub_23DEAEFA8(&qword_27E32CDF0, 255, MEMORY[0x277D0E238]);
      v205 = sub_23E1FE71C();
      v207 = v206;
      v121 = v417;
      v208 = v199;
      v209 = *(v418 + 8);
      v209(v200, v208);
      sub_23DE56B40(v205, v207, &v423);
      OUTLINED_FUNCTION_138_0();

      *(v123 + 4) = v205;
      OUTLINED_FUNCTION_92_1();
      _os_log_impl(v210, v211, v212, v213, v214, v215);
      __swift_destroy_boxed_opaque_existential_0(v204);
      OUTLINED_FUNCTION_52_2();
      MEMORY[0x23EF074C0]();
      OUTLINED_FUNCTION_52_2();
      MEMORY[0x23EF074C0]();

      OUTLINED_FUNCTION_98_0();
      v217 = v398;
    }

    else
    {

      v240 = v199;
      v209 = *(v122 + 8);
      v209(v200, v240);
      OUTLINED_FUNCTION_98_0();
      v217 = v196;
    }

    v216(v217, v422);
    v241 = v394;
    v242 = v392;
    v221 = v121;
    sub_23E1FCB0C();
    OUTLINED_FUNCTION_145_0();
    sub_23DF1956C(v243, v244);

    v245 = v393;
    if (__swift_getEnumTagSinglePayload(v121, 1, v393) == 1)
    {
      v246 = OUTLINED_FUNCTION_55_2();
      (v209)(v246);
      v247 = OUTLINED_FUNCTION_37_1();
      v248(v247);
      v227 = &qword_27E32CDC0;
      v228 = &qword_23E2266E8;
      return sub_23DE481FC(v221, v227, v228);
    }

    v426 = v209;
    (*(v241 + 32))(v242, v121, v245);
    v253 = v387;
    (*(v241 + 16))(v387, v242, v245);
    v254 = OUTLINED_FUNCTION_177_0();
    v256 = v255(v254);
    if (v256 == *MEMORY[0x277D0E078] || v256 == *MEMORY[0x277D0E080])
    {
      sub_23E1FB9FC();
      OUTLINED_FUNCTION_0_14();
      v259 = sub_23DEAEFA8(v257, 255, v258);
      v260 = OUTLINED_FUNCTION_40_1(v259);
      OUTLINED_FUNCTION_47_1(v260, v261);
      OUTLINED_FUNCTION_1_7();
      (*(v262 + 104))();
      swift_willThrow();
      v263 = *(v241 + 8);
      v264 = OUTLINED_FUNCTION_82_1();
      v263(v264);
      v265 = OUTLINED_FUNCTION_55_2();
      (v426)(v265);
      v266 = OUTLINED_FUNCTION_37_1();
      v267(v266);
      v268 = v253;
      return (v263)(v268, v245);
    }

    if (v256 == *MEMORY[0x277D0E090])
    {
      v279 = OUTLINED_FUNCTION_177_0();
      v280(v279);
      v281 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CDE8, &qword_23E226708) + 48);
      sub_23E1FB9FC();
      OUTLINED_FUNCTION_0_14();
      v284 = sub_23DEAEFA8(v282, 255, v283);
      v285 = OUTLINED_FUNCTION_40_1(v284);
      OUTLINED_FUNCTION_47_1(v285, v286);
      OUTLINED_FUNCTION_1_7();
      (*(v287 + 104))();
      swift_willThrow();
      v288 = OUTLINED_FUNCTION_82_1();
      v289(v288);
      v290 = OUTLINED_FUNCTION_55_2();
      (v426)(v290);
      v291 = OUTLINED_FUNCTION_37_1();
      v292(v291);
      v293 = sub_23E1FC1BC();
      OUTLINED_FUNCTION_12();
      v295 = *(v294 + 8);
      v295(v253 + v281, v293);
      return (v295)(v253, v293);
    }

    if (v256 != *MEMORY[0x277D0E100] && v256 != *MEMORY[0x277D0E110] && v256 != *MEMORY[0x277D0E1B8] && v256 != *MEMORY[0x277D0E1D0] && v256 != *MEMORY[0x277D0E088] && v256 != *MEMORY[0x277D0E130] && v256 != *MEMORY[0x277D0E120])
    {
      v187 = v426;
      if (v256 == *MEMORY[0x277D0E1A0])
      {
LABEL_105:
        sub_23E1FB9FC();
        OUTLINED_FUNCTION_0_14();
        v320 = sub_23DEAEFA8(v318, 255, v319);
        OUTLINED_FUNCTION_40_1(v320);
        OUTLINED_FUNCTION_148_0();
LABEL_126:
        swift_willThrow();
        v330 = OUTLINED_FUNCTION_82_1();
        v331(v330);
        v275 = OUTLINED_FUNCTION_55_2();
        goto LABEL_74;
      }

      if (v256 == *MEMORY[0x277D0E140] || v256 == *MEMORY[0x277D0E0B0] || v256 == *MEMORY[0x277D0E188] || v256 == *MEMORY[0x277D0E1C8] || v256 == *MEMORY[0x277D0E138])
      {
LABEL_125:
        sub_23E1FB9FC();
        OUTLINED_FUNCTION_0_14();
        v326 = sub_23DEAEFA8(v324, 255, v325);
        v327 = OUTLINED_FUNCTION_40_1(v326);
        OUTLINED_FUNCTION_47_1(v327, v328);
        OUTLINED_FUNCTION_1_7();
        (*(v329 + 104))();
        goto LABEL_126;
      }

      if (v256 == *MEMORY[0x277D0E0D8] || v256 == *MEMORY[0x277D0E170])
      {
        goto LABEL_132;
      }

      v352 = v256 == *MEMORY[0x277D0E0B8] || v256 == *MEMORY[0x277D0E160] || v256 == *MEMORY[0x277D0E178];
      v121 = v417;
      v187 = v426;
      if (v352)
      {
        goto LABEL_125;
      }

      if (v256 == *MEMORY[0x277D0E0C0])
      {
        goto LABEL_105;
      }

      if (v256 != *MEMORY[0x277D0E180])
      {
        v187 = v426;
        if (v256 == *MEMORY[0x277D0E198])
        {
          goto LABEL_105;
        }

        if (v256 == *MEMORY[0x277D0E1D8])
        {
          goto LABEL_132;
        }

        v121 = v417;
        if (v256 != *MEMORY[0x277D0E158])
        {
          if (v256 == *MEMORY[0x277D0E098])
          {
            goto LABEL_132;
          }

          v121 = v417;
          v353 = v392;
          if (v256 != *MEMORY[0x277D0E0F8])
          {
            if (v256 == *MEMORY[0x277D0E068])
            {
              goto LABEL_132;
            }

            if (v256 == *MEMORY[0x277D0E0A8])
            {
              sub_23E1FB9FC();
              OUTLINED_FUNCTION_0_14();
              v356 = sub_23DEAEFA8(v354, 255, v355);
              v357 = OUTLINED_FUNCTION_40_1(v356);
              OUTLINED_FUNCTION_47_1(v357, v358);
              *v359 = 0;
              v359[1] = 0;
              goto LABEL_133;
            }

            v360 = v256 == *MEMORY[0x277D0E0E8] || v256 == *MEMORY[0x277D0E150];
            v361 = v360 || v256 == *MEMORY[0x277D0E168];
            if (v361 || v256 == *MEMORY[0x277D0E0D0])
            {
LABEL_132:
              sub_23E1FB9FC();
              OUTLINED_FUNCTION_0_14();
              v344 = sub_23DEAEFA8(v342, 255, v343);
              v345 = OUTLINED_FUNCTION_40_1(v344);
              OUTLINED_FUNCTION_47_1(v345, v346);
LABEL_133:
              OUTLINED_FUNCTION_1_7();
              (*(v347 + 104))();
LABEL_134:
              swift_willThrow();
              OUTLINED_FUNCTION_28_2();
              v348 = OUTLINED_FUNCTION_167_0();
              v349(v348);
              v317 = v417;
              goto LABEL_101;
            }

            if (v256 == *MEMORY[0x277D0E0E0])
            {
LABEL_163:
              sub_23E1FB9FC();
              OUTLINED_FUNCTION_0_14();
              v364 = sub_23DEAEFA8(v362, 255, v363);
              OUTLINED_FUNCTION_40_1(v364);
              v365 = OUTLINED_FUNCTION_188_0();
              OUTLINED_FUNCTION_165_0(v365, v366);
              OUTLINED_FUNCTION_1_7();
              v367 = OUTLINED_FUNCTION_108_0();
              v368(v367);
              swift_willThrow();
              OUTLINED_FUNCTION_28_2();
              v369 = OUTLINED_FUNCTION_167_0();
              v370(v369);
              v317 = v353;
              goto LABEL_101;
            }

            if (v256 == *MEMORY[0x277D0E0F0])
            {
              goto LABEL_132;
            }

            v121 = v417;
            if (v256 != *MEMORY[0x277D0E1F8])
            {
              v187 = v426;
              if (v256 == *MEMORY[0x277D0E1E0])
              {
                goto LABEL_105;
              }

              if (v256 == *MEMORY[0x277D0E200])
              {
                sub_23E1FB9FC();
                OUTLINED_FUNCTION_0_14();
                v373 = sub_23DEAEFA8(v371, 255, v372);
                OUTLINED_FUNCTION_40_1(v373);
                OUTLINED_FUNCTION_148_0();
                goto LABEL_134;
              }

              v374 = v256 == *MEMORY[0x277D0E1F0] || v256 == *MEMORY[0x277D0E148];
              v121 = v417;
              if (!v374)
              {
                if (v256 == *MEMORY[0x277D0E0C8])
                {
                  goto LABEL_132;
                }

                v375 = v256 == *MEMORY[0x277D0E1C0] || v256 == *MEMORY[0x277D0E070];
                v121 = v417;
                v353 = v392;
                if (!v375)
                {
                  if (v256 == *MEMORY[0x277D0E190])
                  {
                    goto LABEL_132;
                  }

                  if (v256 != *MEMORY[0x277D0E210] && v256 != *MEMORY[0x277D0E208])
                  {
                    sub_23E1FB9FC();
                    OUTLINED_FUNCTION_0_14();
                    v379 = sub_23DEAEFA8(v377, 255, v378);
                    OUTLINED_FUNCTION_40_1(v379);
                    v380 = OUTLINED_FUNCTION_188_0();
                    OUTLINED_FUNCTION_165_0(v380, v381);
                    OUTLINED_FUNCTION_1_7();
                    v382 = OUTLINED_FUNCTION_108_0();
                    v383(v382);
                    swift_willThrow();
                    v263 = *(v394 + 8);
                    v245 = v393;
                    (v263)(v392, v393);
                    (v426)(v353, v403);
                    v384 = OUTLINED_FUNCTION_37_1();
                    v385(v384);
                    v268 = v387;
                    return (v263)(v268, v245);
                  }

                  goto LABEL_163;
                }
              }
            }
          }
        }
      }
    }

    sub_23E1FB9FC();
    OUTLINED_FUNCTION_0_14();
    v311 = sub_23DEAEFA8(v309, 255, v310);
    v312 = OUTLINED_FUNCTION_40_1(v311);
    OUTLINED_FUNCTION_47_1(v312, v313);
    OUTLINED_FUNCTION_1_7();
    (*(v314 + 104))();
    swift_willThrow();
    v315 = OUTLINED_FUNCTION_82_1();
    v316(v315);
    v317 = v121;
LABEL_101:
    (v426)(v317, v403);
    goto LABEL_75;
  }

  v171 = v167 + 96;
  v172 = OUTLINED_FUNCTION_164_0();
  v173(v172);
  v174 = v413;
  OUTLINED_FUNCTION_130_0();
  v175 = v402;
  v176(v123, v124, v402);
  OUTLINED_FUNCTION_145_0();
  sub_23E1FCB9C();
  v177 = OUTLINED_FUNCTION_151_0();
  v178(v177, v123, v175);
  v179 = sub_23E1FD02C();
  sub_23E1FE1BC();
  v180 = OUTLINED_FUNCTION_100_0();
  if (os_log_type_enabled(v180, v181))
  {
    OUTLINED_FUNCTION_101_0();
    swift_slowAlloc();
    OUTLINED_FUNCTION_85_0();
    v55 = v171;
    v182 = swift_slowAlloc();
    v423 = v182;
    *v123 = 136315138;
    sub_23DEAEFA8(&qword_27E32CDF8, 255, MEMORY[0x277D0E058]);
    v183 = v122;
    sub_23E1FE71C();
    v184 = OUTLINED_FUNCTION_138_0();
    v186 = v185;
    v187 = *(v174 + 8);
    (v187)(v184, v175);
    sub_23DE56B40(v183, v186, &v423);
    OUTLINED_FUNCTION_138_0();

    *(v123 + 4) = v183;
    OUTLINED_FUNCTION_92_1();
    _os_log_impl(v188, v189, v190, v191, v192, v193);
    __swift_destroy_boxed_opaque_existential_0(v182);
    OUTLINED_FUNCTION_52_2();
    MEMORY[0x23EF074C0]();
    v123 = v420;
    OUTLINED_FUNCTION_52_2();
    MEMORY[0x23EF074C0]();

    OUTLINED_FUNCTION_98_0();
    v195 = v55;
  }

  else
  {

    v187 = *(v174 + 8);
    (v187)(v122, v175);
    OUTLINED_FUNCTION_98_0();
    v195 = v171;
  }

  v194(v195, v422);
  v218 = v401;
  v219 = v400;
  v220 = v404;
  v221 = v123;
  v222 = sub_23E1FCACC();
  OUTLINED_FUNCTION_145_0();
  sub_23DF19540(v223, v224);

  if (__swift_getEnumTagSinglePayload(v123, 1, v219) == 1)
  {
    OUTLINED_FUNCTION_174_0();
    (v187)(v123, v175);
    v225 = OUTLINED_FUNCTION_37_1();
    v226(v225);
    v227 = &qword_27E32CDC8;
    v228 = &qword_23E2266F0;
    return sub_23DE481FC(v221, v227, v228);
  }

  (*(v218 + 32))(v220, v123, v219);
  v235 = OUTLINED_FUNCTION_102_0();
  v236(v235, v220, v219);
  v237 = (*(v218 + 88))(v222, v219);
  v239 = v237 == *MEMORY[0x277D0DFD8] || v237 == *MEMORY[0x277D0E000] || v237 == *MEMORY[0x277D0E008];
  if (v239 || v237 == *MEMORY[0x277D0DFC8] || v237 == *MEMORY[0x277D0E020] || v237 == *MEMORY[0x277D0DFE0])
  {
    goto LABEL_71;
  }

  if (v237 == *MEMORY[0x277D0DFF8])
  {
    goto LABEL_79;
  }

  if (v237 == *MEMORY[0x277D0DFC0] || v237 == *MEMORY[0x277D0E018] || v237 == *MEMORY[0x277D0DFE8] || v237 == *MEMORY[0x277D0DFD0] || v237 == *MEMORY[0x277D0E010])
  {
LABEL_71:
    sub_23E1FB9FC();
    OUTLINED_FUNCTION_0_14();
    v271 = sub_23DEAEFA8(v269, 255, v270);
    v272 = OUTLINED_FUNCTION_40_1(v271);
    OUTLINED_FUNCTION_47_1(v272, v273);
    OUTLINED_FUNCTION_1_7();
    (*(v274 + 104))();
LABEL_72:
    swift_willThrow();
    (*(v218 + 8))(v220, v219);
    OUTLINED_FUNCTION_174_0();
    v275 = v123;
LABEL_73:
    v276 = v175;
LABEL_74:
    (v187)(v275, v276);
LABEL_75:
    v277 = OUTLINED_FUNCTION_37_1();
    return v278(v277);
  }

  if (v237 == *MEMORY[0x277D0E028])
  {
    sub_23E1FB9FC();
    OUTLINED_FUNCTION_0_14();
    v323 = sub_23DEAEFA8(v321, 255, v322);
    OUTLINED_FUNCTION_40_1(v323);
    OUTLINED_FUNCTION_148_0();
    goto LABEL_72;
  }

  if (v237 == *MEMORY[0x277D0E030])
  {
LABEL_79:
    sub_23E1FB9FC();
    OUTLINED_FUNCTION_0_14();
    v298 = sub_23DEAEFA8(v296, 255, v297);
    OUTLINED_FUNCTION_40_1(v298);
    v299 = OUTLINED_FUNCTION_187_0();
    OUTLINED_FUNCTION_165_0(v299, v300);
    OUTLINED_FUNCTION_1_7();
    v301 = OUTLINED_FUNCTION_108_0();
    v302(v301);
    swift_willThrow();
    (*(v218 + 8))(v404, v219);
    OUTLINED_FUNCTION_174_0();
    v275 = v55;
    goto LABEL_73;
  }

  sub_23E1FB9FC();
  OUTLINED_FUNCTION_0_14();
  v334 = sub_23DEAEFA8(v332, 255, v333);
  OUTLINED_FUNCTION_40_1(v334);
  v335 = OUTLINED_FUNCTION_187_0();
  OUTLINED_FUNCTION_165_0(v335, v336);
  OUTLINED_FUNCTION_1_7();
  v337 = OUTLINED_FUNCTION_108_0();
  v338(v337);
  swift_willThrow();
  v339 = *(v218 + 8);
  v339(v404, v219);
  OUTLINED_FUNCTION_174_0();
  (v187)(v55, v175);
  v340 = OUTLINED_FUNCTION_37_1();
  v341(v340);
  return (v339)(v391, v219);
}

void sub_23DEA55FC()
{
  OUTLINED_FUNCTION_90();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CC38, &qword_23E2265D8);
  OUTLINED_FUNCTION_25(v3);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_169_0();
  v5 = sub_23E1FBC1C();
  OUTLINED_FUNCTION_6_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_59();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v33[-1] - v13;
  sub_23DE9D78C();
  if (!v33[3])
  {
    sub_23DE481FC(v33, &unk_27E32CC40, &qword_23E2265E0);
    OUTLINED_FUNCTION_18_0();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v5);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_69_2(v33);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v5);
  __swift_destroy_boxed_opaque_existential_0(v33);
  if (__swift_getEnumTagSinglePayload(v0, 1, v5) == 1)
  {
LABEL_7:
    sub_23DE481FC(v0, &qword_27E32CC38, &qword_23E2265D8);
    *v2 = 0;
    v2[1] = 0;
LABEL_11:
    sub_23E1FB9FC();
    OUTLINED_FUNCTION_12();
    v30 = OUTLINED_FUNCTION_49();
    v31(v30);
    OUTLINED_FUNCTION_76();
    return;
  }

  OUTLINED_FUNCTION_170_0();
  v18 = OUTLINED_FUNCTION_30_0();
  v19(v18);
  (*(v7 + 16))(v11, v14, v5);
  v20 = (*(v7 + 88))(v11, v5);
  if (v20 == *MEMORY[0x277CFC138])
  {
    goto LABEL_9;
  }

  if (v20 == *MEMORY[0x277CFC140])
  {
    v21 = sub_23E1FBC4C();
LABEL_10:
    v26 = v21;
    v27 = v22;
    v28 = OUTLINED_FUNCTION_58_0();
    v29(v28);
    *v2 = v26;
    v2[1] = v27;
    goto LABEL_11;
  }

  if (v20 == *MEMORY[0x277CFC130])
  {
LABEL_9:
    v21 = sub_23E1FBBEC();
    goto LABEL_10;
  }

  sub_23E1FE74C();
  __break(1u);
}

uint64_t sub_23DEA58A8()
{
  OUTLINED_FUNCTION_23();
  v1[27] = v2;
  v1[28] = v0;
  v1[25] = v3;
  v1[26] = v4;
  v1[24] = v5;
  v6 = sub_23E1FD03C();
  v1[29] = v6;
  OUTLINED_FUNCTION_8(v6);
  v1[30] = v7;
  v1[31] = OUTLINED_FUNCTION_42();
  v8 = sub_23E1FBC1C();
  v1[32] = v8;
  OUTLINED_FUNCTION_8(v8);
  v1[33] = v9;
  v1[34] = OUTLINED_FUNCTION_42();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CC70, &qword_23E2265F8);
  OUTLINED_FUNCTION_25(v10);
  v1[35] = OUTLINED_FUNCTION_42();
  v11 = sub_23E1FBBDC();
  v1[36] = v11;
  OUTLINED_FUNCTION_8(v11);
  v1[37] = v12;
  v1[38] = OUTLINED_FUNCTION_42();
  v13 = sub_23E1FC08C();
  v1[39] = v13;
  OUTLINED_FUNCTION_8(v13);
  v1[40] = v14;
  v1[41] = OUTLINED_FUNCTION_91();
  v1[42] = swift_task_alloc();
  sub_23E1FDECC();
  OUTLINED_FUNCTION_116_0();
  v1[43] = sub_23E1FDEBC();
  OUTLINED_FUNCTION_37();
  sub_23E1FDE6C();
  OUTLINED_FUNCTION_173_0();
  v1[44] = v17;
  v1[45] = v18;

  return MEMORY[0x2822009F8](sub_23DEA5AA0, v16, v15);
}

uint64_t sub_23DEA5AA0()
{
  OUTLINED_FUNCTION_196_0();
  OUTLINED_FUNCTION_33_0();
  v0[23] = &unk_285109BE8;
  v1 = swift_dynamicCastObjCProtocolConditional();
  v0[46] = v1;
  if (v1)
  {
    swift_unknownObjectRetain();
    v2 = swift_task_alloc();
    v0[47] = v2;
    *v2 = v0;
    v2[1] = sub_23DEA5C54;
    OUTLINED_FUNCTION_65_0(v0[25]);
    OUTLINED_FUNCTION_196();

    return sub_23DEAB368();
  }

  else
  {

    sub_23E1FCB9C();
    v5 = sub_23E1FD02C();
    v6 = sub_23E1FE1BC();
    if (OUTLINED_FUNCTION_51(v6))
    {
      OUTLINED_FUNCTION_74_2();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_186_0(&dword_23DE30000, v7, v8, "Cannot present continuous chat UI, exiting...");
      OUTLINED_FUNCTION_52_2();
      MEMORY[0x23EF074C0]();
    }

    v9 = OUTLINED_FUNCTION_50();
    v10(v9);
    OUTLINED_FUNCTION_184_0();

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_196();

    return v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_23DEA5C54()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  v5 = *v2;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  *(v8 + 384) = v7;
  *(v8 + 392) = v0;

  OUTLINED_FUNCTION_24();
  v10 = *(v9 + 360);
  v11 = *(v1 + 352);
  if (v0)
  {
    v12 = sub_23DEA6DC4;
  }

  else
  {
    v12 = sub_23DEA5D7C;
  }

  return MEMORY[0x2822009F8](v12, v11, v10);
}

uint64_t sub_23DEA5D7C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_126();
  v23 = *(v22 + 224);
  v24 = *(v22 + 200);
  v25 = OBJC_IVAR___WFAskLLMAction_runLatencies;
  *(v22 + 400) = OBJC_IVAR___WFAskLLMAction_runLatencies;
  v26 = v24;
  OUTLINED_FUNCTION_195_0(v23 + v25, v22 + 144);
  v27 = MEMORY[0x277CFC050];
  *(v22 + 504) = *MEMORY[0x277D42DD0];
  *(v22 + 508) = *v27;
  *(v22 + 408) = *(v22 + 200);
  sub_23E1FC07C();
  if (sub_23E1FBACC())
  {
    *(v22 + 456) = 0;
    v44 = *(v22 + 368);
    OUTLINED_FUNCTION_69_2(*(v22 + 208));
    sub_23E1FBC0C();
    v28 = OUTLINED_FUNCTION_66();
    v29(v28);
    OUTLINED_FUNCTION_158_0();
    v30 = sub_23E1FDBDC();
    *(v22 + 464) = v30;

    *(v22 + 16) = v22;
    *(v22 + 56) = v22 + 168;
    *(v22 + 24) = sub_23DEA6634;
    swift_continuation_init();
    *(v22 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CCF8, &qword_23E226630);
    OUTLINED_FUNCTION_78_1();
    *(v22 + 88) = 1107296256;
    OUTLINED_FUNCTION_73_1(block_descriptor_42);
    [v44 showWithResponse:0 modelName:v30 completionHandler:?];
    OUTLINED_FUNCTION_72_0();

    return MEMORY[0x282200938](v31);
  }

  else
  {
    sub_23DE9D68C();
    OUTLINED_FUNCTION_119_0(MEMORY[0x277CFC168]);
    v45 = v33;
    v34 = swift_task_alloc();
    *(v22 + 416) = v34;
    *v34 = v22;
    OUTLINED_FUNCTION_68_2(v34);
    OUTLINED_FUNCTION_72_0();

    return v39(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, v45, a12, a13, a14);
  }
}

uint64_t sub_23DEA5FAC()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  v5 = *v2;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  *(v8 + 424) = v7;
  *(v8 + 432) = v0;

  OUTLINED_FUNCTION_24();
  (*(v1[37] + 8))(*(v9 + 304), v1[36]);
  OUTLINED_FUNCTION_24();
  v11 = *(v10 + 360);
  v12 = v1[44];
  if (v0)
  {
    v13 = sub_23DEA6E60;
  }

  else
  {
    v13 = sub_23DEA611C;
  }

  return MEMORY[0x2822009F8](v13, v12, v11);
}

void sub_23DEA611C()
{
  OUTLINED_FUNCTION_33_0();
  v1 = v0[53];
  if (v1 >> 62)
  {
    if (sub_23E1FE6AC() != 1 || !sub_23E1FE6AC())
    {
      goto LABEL_10;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_10;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x23EF04DD0](0, v0[53]);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v2 = *(v0[53] + 32);
  }

  v3 = v2;
  objc_opt_self();
  OUTLINED_FUNCTION_38();
  v4 = swift_dynamicCastObjCClass();
  if (v4 && (v5 = sub_23DEAE918([v4 response])) != 0)
  {
    sub_23DE4BFE4(v5);
  }

  else
  {
  }

LABEL_10:
  sub_23DE38DA8(0, &qword_27E32C360, 0x277CFC2E0);
  v6 = OUTLINED_FUNCTION_20();
  v7 = sub_23DE56610(v6);
  v0[55] = v7;
  sub_23E1FBB0C();
  v8 = OUTLINED_FUNCTION_40_2();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = OUTLINED_FUNCTION_127_0();
  __swift_project_boxed_opaque_existential_0(v12, v13);
  v14 = v7;
  sub_23E1FBA4C();
  v15 = swift_task_alloc();
  v0[56] = v15;
  *v15 = v0;
  v15[1] = sub_23DEA631C;
  v16 = OUTLINED_FUNCTION_65_0(v0[35]);

  sub_23DEEE204(v16, v17, v18);
}

uint64_t sub_23DEA631C()
{
  OUTLINED_FUNCTION_196_0();
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_143_0();
  v2 = *(v0 + 280);
  v3 = *v1;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_45();
  v6(v5);
  sub_23DE481FC(v2, &unk_27E32CC70, &qword_23E2265F8);
  OUTLINED_FUNCTION_136();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23DEA64AC()
{
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_161();
  v10 = *(v0 + 440);
  *(v0 + 456) = v10;
  v9 = *(v0 + 368);
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 256);
  OUTLINED_FUNCTION_103_0(*(v0 + 208));
  sub_23E1FBC0C();
  (*(v1 + 8))(v2, v3);
  v4 = sub_23E1FDBDC();
  *(v0 + 464) = v4;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 168;
  *(v0 + 24) = sub_23DEA6634;
  v5 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CCF8, &qword_23E226630);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_23DEA2740;
  *(v0 + 104) = block_descriptor_42;
  *(v0 + 112) = v5;
  [v9 showWithResponse:v10 modelName:v4 completionHandler:?];
  OUTLINED_FUNCTION_56_1();

  return MEMORY[0x282200938](v6);
}

uint64_t sub_23DEA6634()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 472) = *(v3 + 48);
  OUTLINED_FUNCTION_164();
  v5 = *(v4 + 360);
  v7 = *(v6 + 352);
  if (v8)
  {
    v9 = sub_23DEA6F24;
  }

  else
  {
    v9 = sub_23DEA6750;
  }

  return MEMORY[0x2822009F8](v9, v7, v5);
}

uint64_t sub_23DEA6750()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 456);
  v46 = *(v0 + 508);
  v3 = *(v0 + 504);
  v47 = *(v0 + 408);
  v48 = *(v0 + 224);
  v49 = *(v0 + 400);
  v4 = *(v0 + 176);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CD00, &qword_23E226638);
  v5 = sub_23E1FBA9C();
  OUTLINED_FUNCTION_6_0();
  v7 = v6;
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23E222340;
  v10 = (v9 + v8);
  *v10 = v1;
  v10[1] = v4;
  sub_23E1FDA8C();
  OUTLINED_FUNCTION_12();
  (*(v11 + 104))(v10, v3);
  (*(v7 + 104))(v10, v46, v5);
  v12 = objc_allocWithZone(sub_23E1FBADC());
  v13 = sub_23E1FBAAC();
  *(v0 + 480) = v13;

  v14 = v13;
  sub_23E1FC07C();
  sub_23E1FC00C();
  v16 = v15;
  v17 = *&v49[v48];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v49[v48] = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v41 = *(v0 + 400);
    v42 = *(v0 + 224);
    sub_23DE4CE40(0, *(v17 + 16) + 1, 1, v17);
    v17 = v43;
    *(v42 + v41) = v43;
  }

  v20 = *(v17 + 16);
  v19 = *(v17 + 24);
  if (v20 >= v19 >> 1)
  {
    v44 = OUTLINED_FUNCTION_9(v19);
    sub_23DE4CE40(v44, v20 + 1, 1, v17);
    v17 = v45;
  }

  v21 = *(v0 + 456);
  v22 = *(v0 + 400);
  v23 = *(v0 + 336);
  v24 = *(v0 + 312);
  v25 = *(v0 + 320);
  v26 = *(v0 + 224);
  *(v17 + 16) = v20 + 1;
  *(v17 + 8 * v20 + 32) = v16;
  *(v26 + v22) = v17;

  v27 = *(v25 + 8);
  v28 = OUTLINED_FUNCTION_66();
  v27(v28);
  (v27)(v23, v24);
  v29 = sub_23E1FBACC();

  if (v29)
  {
    v30 = swift_task_alloc();
    *(v0 + 488) = v30;
    *v30 = v0;
    v30[1] = sub_23DEA6BF8;
    OUTLINED_FUNCTION_65_0(*(v0 + 384));
    OUTLINED_FUNCTION_146_0();

    return sub_23DEAA608();
  }

  else
  {
    *(v0 + 408) = v14;
    sub_23E1FC07C();
    if ((sub_23E1FBACC() & 1) == 0)
    {
      sub_23DE9D68C();
      OUTLINED_FUNCTION_119_0(MEMORY[0x277CFC168]);
      v38 = swift_task_alloc();
      *(v0 + 416) = v38;
      *v38 = v0;
      OUTLINED_FUNCTION_68_2(v38);
      OUTLINED_FUNCTION_146_0();

      __asm { BR              X4 }
    }

    *(v0 + 456) = 0;
    v50 = *(v0 + 368);
    OUTLINED_FUNCTION_69_2(*(v0 + 208));
    sub_23E1FBC0C();
    v33 = OUTLINED_FUNCTION_66();
    v34(v33);
    OUTLINED_FUNCTION_158_0();
    v35 = sub_23E1FDBDC();
    *(v0 + 464) = v35;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 168;
    *(v0 + 24) = sub_23DEA6634;
    swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CCF8, &qword_23E226630);
    OUTLINED_FUNCTION_78_1();
    *(v0 + 88) = 1107296256;
    OUTLINED_FUNCTION_73_1(block_descriptor_42);
    [v50 showWithResponse:0 modelName:v35 completionHandler:?];
    OUTLINED_FUNCTION_146_0();

    return MEMORY[0x282200938](v36);
  }
}

uint64_t sub_23DEA6BF8()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 496) = v0;

  OUTLINED_FUNCTION_24();
  v6 = *(v5 + 360);
  v7 = *(v1 + 352);
  if (v0)
  {
    v8 = sub_23DEA7000;
  }

  else
  {
    v8 = sub_23DEA6D20;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_23DEA6D20()
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_189_0();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_184_0();

  OUTLINED_FUNCTION_19();

  return v2();
}

uint64_t sub_23DEA6DC4()
{
  OUTLINED_FUNCTION_196_0();
  OUTLINED_FUNCTION_33_0();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_84_0();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_196();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_23DEA6E60()
{
  OUTLINED_FUNCTION_196_0();
  OUTLINED_FUNCTION_33_0();
  v1 = *(v0 + 408);
  v2 = *(v0 + 384);

  swift_unknownObjectRelease();
  v3 = OUTLINED_FUNCTION_54();
  v4(v3);
  OUTLINED_FUNCTION_84_0();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_196();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_23DEA6F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_140();
  v13 = v12[58];
  v14 = v12[57];
  v15 = v12[51];
  v16 = v12[48];

  swift_willThrow();

  swift_unknownObjectRelease();
  v17 = OUTLINED_FUNCTION_54();
  v18(v17);

  OUTLINED_FUNCTION_84_0();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_182();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_23DEA7000()
{
  OUTLINED_FUNCTION_196_0();
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_189_0();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_84_0();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_196();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

void sub_23DEA709C()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for WFAskLLMAction();
  objc_msgSendSuper2(&v7, sel_initializeParameters);
  v1 = OUTLINED_FUNCTION_104_0();
  v2 = OUTLINED_FUNCTION_109_0();
  v4 = [v2 v3];

  if (v4)
  {
    type metadata accessor for WFGenerativeResultTypePickerParameter();
    OUTLINED_FUNCTION_38();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      OUTLINED_FUNCTION_195_0(v5 + OBJC_IVAR___WFGenerativeResultTypePickerParameter_action, v6);
      swift_unknownObjectWeakAssign();
    }
  }
}

void sub_23DEA7204()
{
  OUTLINED_FUNCTION_90();
  v1 = sub_23E1FBBDC();
  OUTLINED_FUNCTION_6_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_59();
  v7 = (v5 - v6);
  MEMORY[0x28223BE20](v8);
  v10 = &v52 - v9;
  v11 = OUTLINED_FUNCTION_104_0();
  v12 = [v0 parameterStateForKey_];

  if (!v12)
  {
    goto LABEL_16;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_172_0();
  v13 = swift_dynamicCastObjCClass();
  if (!v13 || (v14 = [v13 value]) == 0 || (v15 = v14, v59 = 0, v60 = 0, sub_23E1FDC0C(), v15, !v60))
  {
    swift_unknownObjectRelease();
LABEL_16:
    v40 = type metadata accessor for WFAskLLMAction();
    v61.receiver = v0;
    v61.super_class = v40;
    v41 = objc_msgSendSuper2(&v61, sel_outputTypes);
    sub_23E1FDDEC();

LABEL_17:
    OUTLINED_FUNCTION_76();
    return;
  }

  sub_23E1FB7BC();
  OUTLINED_FUNCTION_128_0();
  sub_23E1FBBBC();
  v16 = OUTLINED_FUNCTION_58_0();
  v17(v16);
  v18 = (*(v3 + 88))(v7, v1);
  if (v18 == *MEMORY[0x277CFC0D8])
  {

    v21 = *(v3 + 8);
    v19 = v3 + 8;
    v20 = v21;
    v21(v7, v1);
    sub_23DEABED8();
    v23 = v22;
    if (sub_23DE4D8B0())
    {
      sub_23DE59014();
      if ((v23 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x23EF04DD0](0, v23);
      }

      else
      {
        v24 = *(v23 + 32);
      }

      v25 = v24;

      v26 = v25;
      v27 = sub_23E1FDFBC();

      v28 = *(v27 + 16);
      if (v28)
      {
        v52 = v26;
        v53 = v20;
        v54 = v1;
        v55 = v19;
        v59 = MEMORY[0x277D84F90];
        sub_23DE63E2C(0, v28, 0);
        v29 = 32;
        v30 = v59;
        do
        {
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v32 = NSStringFromClass(ObjCClassFromMetadata);
          v33 = sub_23E1FDC1C();
          v35 = v34;

          v59 = v30;
          v37 = *(v30 + 16);
          v36 = *(v30 + 24);
          if (v37 >= v36 >> 1)
          {
            v39 = OUTLINED_FUNCTION_9(v36);
            sub_23DE63E2C(v39, v37 + 1, 1);
            v30 = v59;
          }

          *(v30 + 16) = v37 + 1;
          v38 = v30 + 16 * v37;
          *(v38 + 32) = v33;
          *(v38 + 40) = v35;
          v29 += 8;
          --v28;
        }

        while (v28);
        v53(v10, v54);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();

        v20(v10, v1);
      }
    }

    else
    {

      v48 = type metadata accessor for WFAskLLMAction();
      v57.receiver = v0;
      v57.super_class = v48;
      v49 = objc_msgSendSuper2(&v57, sel_outputTypes);
      sub_23E1FDDEC();
      swift_unknownObjectRelease();

      v20(v10, v1);
    }

    goto LABEL_17;
  }

  if (v18 == *MEMORY[0x277CFC110])
  {
    goto LABEL_19;
  }

  if (v18 == *MEMORY[0x277CFC0F8])
  {

    v44 = type metadata accessor for WFAskLLMAction();
    v56.receiver = v0;
    v56.super_class = v44;
    v43 = objc_msgSendSuper2(&v56, sel_outputTypes);
    goto LABEL_22;
  }

  if (v18 == *MEMORY[0x277CFC100] || v18 == *MEMORY[0x277CFC108] || v18 == *MEMORY[0x277CFC0F0] || v18 == *MEMORY[0x277CFC0D0])
  {
    goto LABEL_33;
  }

  if (v18 == *MEMORY[0x277CFC0E0])
  {
LABEL_19:

    v42 = type metadata accessor for WFAskLLMAction();
    v58.receiver = v0;
    v58.super_class = v42;
    v43 = objc_msgSendSuper2(&v58, sel_outputTypes);
LABEL_22:
    v45 = v43;
    sub_23E1FDDEC();
    swift_unknownObjectRelease();

    v46 = OUTLINED_FUNCTION_49_2();
    v47(v46);
    goto LABEL_17;
  }

  if (v18 == *MEMORY[0x277CFC0E8])
  {
LABEL_33:
    swift_unknownObjectRelease();

    v50 = OUTLINED_FUNCTION_49_2();
    v51(v50);
    goto LABEL_17;
  }

  sub_23E1FE74C();
  __break(1u);
}

void sub_23DEA77EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_90();
  a19 = v20;
  a20 = v21;
  v599 = v22;
  v586[2] = v23;
  v25 = v24;
  v26 = sub_23E1FCEBC();
  v27 = OUTLINED_FUNCTION_3_6(v26, v577);
  v558[3] = v28;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_16_5(v29);
  v30 = sub_23E1FCECC();
  v31 = OUTLINED_FUNCTION_3_6(v30, v582);
  v560 = v32;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_16_5(v33);
  v34 = sub_23E1FCEEC();
  v35 = OUTLINED_FUNCTION_3_6(v34, &v583);
  v563 = v36;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_16_5(v37);
  v38 = sub_23E1FCEAC();
  v39 = OUTLINED_FUNCTION_3_6(v38, &v579);
  v558[6] = v40;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_16_5(v41);
  v42 = sub_23E1FCFBC();
  v43 = OUTLINED_FUNCTION_3_6(v42, v586);
  v564 = v44;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_16_5(v45);
  v46 = sub_23E1FCE3C();
  v47 = OUTLINED_FUNCTION_3_6(v46, v588);
  v567 = v48;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_16_5(v49);
  v50 = sub_23E1FCF0C();
  v51 = OUTLINED_FUNCTION_3_6(v50, v587);
  v566 = v52;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_16_5(v53);
  v54 = sub_23E1FCE4C();
  v55 = OUTLINED_FUNCTION_3_6(v54, &v590);
  v569 = v56;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_16_5(v57);
  v58 = sub_23E1FCFCC();
  v59 = OUTLINED_FUNCTION_3_6(v58, &v599);
  v577[0] = v60;
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_16_5(v61);
  v62 = sub_23E1FCFEC();
  v63 = OUTLINED_FUNCTION_3_6(v62, v598);
  v575 = v64;
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_44_2(v65);
  v571 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C180, &unk_23E224340);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_16_5(v67);
  v68 = sub_23E1FCE6C();
  v69 = OUTLINED_FUNCTION_3_6(v68, v602);
  v573 = v70;
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_16_5(v72);
  v73 = sub_23E1FCE7C();
  v74 = OUTLINED_FUNCTION_3_6(v73, v605);
  v583 = v75;
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_16_5(v76);
  v77 = sub_23E1FCE9C();
  v78 = OUTLINED_FUNCTION_3_6(v77, &v607);
  v586[0] = v79;
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_16_5(v80);
  v81 = sub_23E1FCF7C();
  v82 = OUTLINED_FUNCTION_3_6(v81, &v592);
  v570 = v83;
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_16_5(v84);
  v85 = sub_23E1FCF5C();
  v86 = OUTLINED_FUNCTION_3_6(v85, &v610);
  v582[2] = v87;
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_16_5(v89);
  v90 = sub_23E1FCF3C();
  v91 = OUTLINED_FUNCTION_3_6(v90, &v609);
  v587[0] = v92;
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_16_5(v93);
  v94 = sub_23E1FCF8C();
  v95 = OUTLINED_FUNCTION_3_6(v94, &v614);
  v589 = v96;
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_16_5(v97);
  v98 = sub_23E1FCFAC();
  v99 = OUTLINED_FUNCTION_3_6(v98, &v615);
  v590 = v100;
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_16_5(v101);
  v102 = sub_23E1FCFFC();
  v103 = OUTLINED_FUNCTION_3_6(v102, v617);
  v597 = v104;
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_44_2(v105);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CD68, &qword_23E2266D8);
  OUTLINED_FUNCTION_25(v106);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_16_5(v108);
  v109 = sub_23E1FD01C();
  v110 = OUTLINED_FUNCTION_3_6(v109, &v620);
  v598[1] = v111;
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_16_5(v112);
  v113 = sub_23E1FB9FC();
  v114 = OUTLINED_FUNCTION_3_6(v113, &a15);
  v608[1] = v115;
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_16_5(v116);
  v117 = sub_23E1FCBCC();
  v118 = OUTLINED_FUNCTION_3_6(v117, &v616);
  v594 = v119;
  MEMORY[0x28223BE20](v118);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_16_5(v120);
  v121 = sub_23E1FCBDC();
  v122 = OUTLINED_FUNCTION_3_6(v121, &v621);
  v605[1] = v123;
  MEMORY[0x28223BE20](v122);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v124);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v125);
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_44_2(v126);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CD70, &qword_23E2266E0);
  OUTLINED_FUNCTION_25(v127);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v128);
  v130 = v558 - v129;
  v131 = sub_23E1FCBAC();
  OUTLINED_FUNCTION_6_0();
  v133 = v132;
  MEMORY[0x28223BE20](v134);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v135);
  v137 = (v558 - v136);
  v138 = sub_23E1FD03C();
  v139 = OUTLINED_FUNCTION_3_6(v138, &a16);
  v141 = v140;
  MEMORY[0x28223BE20](v139);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v142);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v143);
  OUTLINED_FUNCTION_90_1();
  v602[1] = *MEMORY[0x277D7A440];
  sub_23E1FCB9C();
  v144 = v25;
  v145 = sub_23E1FD02C();
  v146 = sub_23E1FE1BC();

  if (os_log_type_enabled(v145, v146))
  {
    OUTLINED_FUNCTION_101_0();
    v147 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    v605[0] = v141;
    v149 = v137;
    v150 = v131;
    v151 = v133;
    v152 = v148;
    *v147 = 138412290;
    v153 = v25;
    v154 = _swift_stdlib_bridgeErrorToNSError();
    *(v147 + 4) = v154;
    *v152 = v154;
    _os_log_impl(&dword_23DE30000, v145, v146, "Encountering error: %@ when executing Use Model action", v147, 0xCu);
    sub_23DE481FC(v152, &unk_27E32C190, &qword_23E224B70);
    v133 = v151;
    v131 = v150;
    v137 = v149;
    v141 = v605[0];
    OUTLINED_FUNCTION_52_2();
    MEMORY[0x23EF074C0]();
    OUTLINED_FUNCTION_52_2();
    MEMORY[0x23EF074C0]();
  }

  v157 = *(v141 + 8);
  v155 = v141 + 8;
  v156 = v157;
  OUTLINED_FUNCTION_176_0();
  v157();
  v612 = v25;
  v158 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C380, &qword_23E224180);
  v159 = v25;
  if ((swift_dynamicCast() & 1) == 0)
  {
    OUTLINED_FUNCTION_18_0();
    __swift_storeEnumTagSinglePayload(v186, v187, v188, v131);
    sub_23DE481FC(v130, &qword_27E32CD70, &qword_23E2266E0);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v160, v161, v162, v131);
  (*(v133 + 32))(v137, v130, v131);
  v163 = OUTLINED_FUNCTION_151_0();
  v164(v163, v137, v131);
  v165 = OUTLINED_FUNCTION_129_0();
  if (v166(v165) != *MEMORY[0x277D29D28])
  {
    v189 = *(v133 + 8);
    v189(v137, v131);
    v189(v130, v131);
LABEL_9:
    v612 = v25;
    v190 = v25;
    v191 = v606;
    v192 = v608[2];
    v193 = swift_dynamicCast();
    v194 = v608[0];
    if (v193)
    {
      OUTLINED_FUNCTION_54_1();
      v195(v191, v192);
LABEL_12:
      v198 = v25;
      goto LABEL_41;
    }

    v196 = sub_23E1FBEBC();
    v197 = [v196 wf_isUserCancelledError];

    if (v197)
    {
      goto LABEL_12;
    }

    v612 = v25;
    v199 = v25;
    OUTLINED_FUNCTION_175_0(&v618);
    v200 = v603;
    if (!swift_dynamicCast())
    {
      OUTLINED_FUNCTION_18_0();
      __swift_storeEnumTagSinglePayload(v276, v277, v278, v200);
      sub_23DE481FC(v197, &qword_27E32CD68, &qword_23E2266D8);
      OUTLINED_FUNCTION_0_14();
      v281 = sub_23DEAEFA8(v279, 255, v280);
      OUTLINED_FUNCTION_30_2(v281);
      v283 = v282;
      swift_getErrorValue();
      *v283 = sub_23E1FE7EC();
      v283[1] = v284;
      OUTLINED_FUNCTION_17_6();
      v285(v283);
      goto LABEL_41;
    }

    OUTLINED_FUNCTION_64();
    __swift_storeEnumTagSinglePayload(v201, v202, v203, v200);
    v204 = OUTLINED_FUNCTION_24_2();
    v205(v204);
    v206 = v593;
    sub_23E1FD00C();
    v207 = v206;
    v208 = (*(v597 + 88))(v206, v596);
    if (v208 == *MEMORY[0x277D0DB78])
    {
      v209 = OUTLINED_FUNCTION_33();
      v210(v209);
      OUTLINED_FUNCTION_121_0();
      v211 = OUTLINED_FUNCTION_151_0();
      v212 = v592;
      v213(v211, v206, v592);
      v214 = v588[1];
      sub_23E1FCF9C();
      v215 = v589;
      v216 = v591;
      v217 = (*(v589 + 88))(v214, v591);
      if (v217 == *MEMORY[0x277D0DA90])
      {
        v218 = OUTLINED_FUNCTION_122();
        v219(v218);
        v220 = v587[0];
        OUTLINED_FUNCTION_170_0();
        v221 = v586[3];
        v222 = OUTLINED_FUNCTION_24_2();
        v223 = v587[1];
        v224(v222);
        OUTLINED_FUNCTION_0_14();
        v227 = sub_23DEAEFA8(v225, 255, v226);
        OUTLINED_FUNCTION_30_2(v227);
        OUTLINED_FUNCTION_83_1();
        v228 = sub_23E1FCF1C();
        v229 = sub_23E1FCF2C();
        *v215 = v228;
        v215[1] = v229;
        v230 = OUTLINED_FUNCTION_14_3();
        v231(v230);
        (*(v220 + 8))(v221, v223);
      }

      else
      {
        if (v217 == *MEMORY[0x277D0DA98])
        {
          v306 = OUTLINED_FUNCTION_122();
          v307(v306);
          OUTLINED_FUNCTION_124_0();
          v308 = OUTLINED_FUNCTION_139_0();
          v309(v308);
          OUTLINED_FUNCTION_0_14();
          v312 = sub_23DEAEFA8(v310, 255, v311);
          v558[0] = OUTLINED_FUNCTION_30_2(v312);
          v314 = v313;
          v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C810, &qword_23E224CA8);
          OUTLINED_FUNCTION_38_3(v315);
          *v314 = sub_23E1FCF4C();
          v314[1] = v316;
          sub_23E1FBB0C();
          OUTLINED_FUNCTION_12();
          v317 = OUTLINED_FUNCTION_49();
          v318(v317);
          OUTLINED_FUNCTION_96_0(v619);
          OUTLINED_FUNCTION_51_0();
          sub_23E1FBA4C();
          sub_23E1FBC1C();
          OUTLINED_FUNCTION_64();
          __swift_storeEnumTagSinglePayload(v319, v320, v321, v322);
          OUTLINED_FUNCTION_96_0(v608);
          OUTLINED_FUNCTION_51_0();
          *&v25[v314] = sub_23E1FBD6C();
          OUTLINED_FUNCTION_160_0();
          v323();
          sub_23E1FBAEC();
          v324 = OUTLINED_FUNCTION_14_3();
          v325(v324);
          v326 = OUTLINED_FUNCTION_139_0();
          v327(v326);
          v232 = OUTLINED_FUNCTION_178_0();
          goto LABEL_37;
        }

        if (v217 == *MEMORY[0x277D0DAA0] || v217 == *MEMORY[0x277D0DAB0] || v217 == *MEMORY[0x277D0DAA8])
        {
          OUTLINED_FUNCTION_0_14();
          v389 = sub_23DEAEFA8(v387, 255, v388);
          v390 = OUTLINED_FUNCTION_30_2(v389);
          OUTLINED_FUNCTION_48_2(v390);
          v391 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C810, &qword_23E224CA8);
          OUTLINED_FUNCTION_38_3(v391);
          sub_23E1FBB0C();
          OUTLINED_FUNCTION_12();
          v392 = OUTLINED_FUNCTION_49();
          v393(v392);
          OUTLINED_FUNCTION_96_0(v619);
          OUTLINED_FUNCTION_51_0();
          sub_23E1FBA4C();
          sub_23E1FBC1C();
          OUTLINED_FUNCTION_64();
          __swift_storeEnumTagSinglePayload(v394, v395, v396, v397);
          OUTLINED_FUNCTION_96_0(v608);
          OUTLINED_FUNCTION_51_0();
          *&v25[v215] = sub_23E1FBD6C();
          sub_23E1FBAFC();
          OUTLINED_FUNCTION_18_0();
          __swift_storeEnumTagSinglePayload(v398, v399, v400, v401);
          v402 = OUTLINED_FUNCTION_14_3();
          v403(v402);
          v404 = OUTLINED_FUNCTION_178_0();
          v405(v404);
          v406 = OUTLINED_FUNCTION_4_8();
          v407(v406);
          (*(v212 + 8))(v137, v591);
          goto LABEL_41;
        }

        if (v217 != *MEMORY[0x277D0DA88])
        {
          v465 = OUTLINED_FUNCTION_128_0();
          v466(v465);
          v467 = OUTLINED_FUNCTION_4_8();
          v468(v467);
          v469 = v25;
          (v215[1])(v214, v216);
          goto LABEL_41;
        }

        v434 = OUTLINED_FUNCTION_122();
        v435(v434);
        OUTLINED_FUNCTION_124_0();
        OUTLINED_FUNCTION_24_2();
        OUTLINED_FUNCTION_160_0();
        v436();
        OUTLINED_FUNCTION_0_14();
        v439 = sub_23DEAEFA8(v437, 255, v438);
        OUTLINED_FUNCTION_30_2(v439);
        OUTLINED_FUNCTION_83_1();
        *v215 = sub_23E1FCF6C();
        v215[1] = v440;
        v441 = OUTLINED_FUNCTION_14_3();
        v442(v441);
        v443 = OUTLINED_FUNCTION_24_2();
        v444(v443);
      }

      v232 = OUTLINED_FUNCTION_128_0();
LABEL_37:
      v233(v232);
LABEL_38:
      OUTLINED_FUNCTION_28_2();
      v274 = v598[0];
      v300 = &v620;
      goto LABEL_39;
    }

    v291 = v208;
    if (v208 == *MEMORY[0x277D0DB40])
    {
      OUTLINED_FUNCTION_0_14();
      v294 = sub_23DEAEFA8(v292, 255, v293);
      v295 = OUTLINED_FUNCTION_30_2(v294);
      OUTLINED_FUNCTION_89_1(v295, v296);
      OUTLINED_FUNCTION_17_6();
      v297();
      v298 = OUTLINED_FUNCTION_4_8();
      v299(v298);
LABEL_32:
      OUTLINED_FUNCTION_54_1();
      v274 = v207;
      v300 = v617;
LABEL_39:
      v275 = *(v300 - 32);
LABEL_40:
      v273(v274, v275);
      goto LABEL_41;
    }

    if (v208 == *MEMORY[0x277D0DB50])
    {
      (*(v597 + 96))(v207, v596);
      v328 = v585;
      v329 = OUTLINED_FUNCTION_156_0();
      v330(v329);
      sub_23E1FCE8C();
      OUTLINED_FUNCTION_179_0();
      v332 = v584;
      v333 = (*(v331 + 88))(v194, v584);
      if (v333 == *MEMORY[0x277D0D9E0] || v333 != *MEMORY[0x277D0D9D8])
      {
        OUTLINED_FUNCTION_0_14();
        v363 = sub_23DEAEFA8(v361, 255, v362);
        v364 = OUTLINED_FUNCTION_30_2(v363);
        OUTLINED_FUNCTION_89_1(v364, v365);
        OUTLINED_FUNCTION_17_6();
        v366();
        v367 = OUTLINED_FUNCTION_107_0();
        v368(v367);
        v369 = OUTLINED_FUNCTION_4_8();
        v370(v369);
        (*(v159 + 1))(v194, v332);
        goto LABEL_41;
      }

      (*(v159 + 12))(v194, v332);
      v334 = v573;
      OUTLINED_FUNCTION_130_0();
      OUTLINED_FUNCTION_102_0();
      OUTLINED_FUNCTION_144_0();
      v335();
      OUTLINED_FUNCTION_137_0();
      sub_23E1FCB9C();
      v336 = v572;
      v337 = OUTLINED_FUNCTION_127_0();
      v338(v337);
      v339 = sub_23E1FD02C();
      sub_23E1FE1BC();
      v340 = OUTLINED_FUNCTION_100_0();
      if (os_log_type_enabled(v340, v341))
      {
        OUTLINED_FUNCTION_101_0();
        swift_slowAlloc();
        OUTLINED_FUNCTION_85_0();
        v342 = v336;
        v608[0] = swift_slowAlloc();
        v612 = v608[0];
        *v328 = 136315138;
        OUTLINED_FUNCTION_137_0();
        sub_23E1FCE5C();
        v343 = sub_23E1FDC7C();
        v345 = v344;
        v346 = *(v334 + 8);
        v347 = v342;
        v348 = v580;
        v346(v347, v580);
        v349 = v343;
        v350 = v348;
        v351 = sub_23DE56B40(v349, v345, &v612);

        *(v328 + 4) = v351;
        OUTLINED_FUNCTION_92_1();
        _os_log_impl(v352, v353, v354, v355, v356, v357);
        __swift_destroy_boxed_opaque_existential_0(v608[0]);
        OUTLINED_FUNCTION_52_2();
        MEMORY[0x23EF074C0]();
        OUTLINED_FUNCTION_52_2();
        MEMORY[0x23EF074C0]();

        OUTLINED_FUNCTION_176_0();
        v156();
      }

      else
      {

        v346 = *(v334 + 8);
        v346(v336, v328);
        OUTLINED_FUNCTION_176_0();
        v156();
        v350 = v328;
      }

      OUTLINED_FUNCTION_0_14();
      sub_23DEAEFA8(v417, 255, v418);
      OUTLINED_FUNCTION_135_0();
      OUTLINED_FUNCTION_29();
      swift_allocError();
      OUTLINED_FUNCTION_96_0(v619);
      OUTLINED_FUNCTION_51_0();
      sub_23E1FBA4C();
      v419 = OUTLINED_FUNCTION_14_3();
      v420(v419);
      v346(v581, v350);
      OUTLINED_FUNCTION_54_1();
      v422 = v585;
      v423 = &v607;
LABEL_63:
      v421(v422, *(v423 - 32));
      goto LABEL_38;
    }

    if (v208 == *MEMORY[0x277D0DBA0])
    {
      v358 = OUTLINED_FUNCTION_4_8();
      v359(v358);
      v360 = v25;
      goto LABEL_32;
    }

    v371 = v597;
    v372 = v596;
    if (v208 == *MEMORY[0x277D0DB90])
    {
      v373 = OUTLINED_FUNCTION_86_1();
      v374(v373);
      OUTLINED_FUNCTION_137_0();
      v376 = v207;
      v377 = v578;
      v378 = v576;
      (*(v375 + 32))(v578, v376, v576);
      v379 = v574;
      sub_23E1FCFDC();
      v380 = (*(v577[0] + 88))(v379, v577[1]);
      if (v380 == *MEMORY[0x277D0DAF0])
      {
        OUTLINED_FUNCTION_0_14();
        v383 = sub_23DEAEFA8(v381, 255, v382);
        v384 = OUTLINED_FUNCTION_30_2(v383);
        OUTLINED_FUNCTION_89_1(v384, v385);
        *v386 = 0;
        v386[1] = 0;
      }

      else
      {
        if (v380 != *MEMORY[0x277D0DAF8])
        {
          if (v380 == *MEMORY[0x277D0DAE8] || v380 == *MEMORY[0x277D0DAD0])
          {
            goto LABEL_78;
          }

          if (v380 == *MEMORY[0x277D0DAE0])
          {
            OUTLINED_FUNCTION_0_14();
            v483 = sub_23DEAEFA8(v481, 255, v482);
            v484 = OUTLINED_FUNCTION_30_2(v483);
            OUTLINED_FUNCTION_89_1(v484, v485);
            OUTLINED_FUNCTION_17_6();
            v486();
            (*(v372 + 8))(v578, v378);
            goto LABEL_68;
          }

          if (v380 == *MEMORY[0x277D0DAD8])
          {
LABEL_78:
            v454 = OUTLINED_FUNCTION_139_0();
            v455(v454);
            OUTLINED_FUNCTION_0_14();
            v458 = sub_23DEAEFA8(v456, 255, v457);
            OUTLINED_FUNCTION_30_2(v458);
            OUTLINED_FUNCTION_83_1();
            OUTLINED_FUNCTION_76_1();
            sub_23DEAEFA8(v459, 255, v460);
            OUTLINED_FUNCTION_91_1();
            v461 = v578;
            *v291 = sub_23E1FDACC();
            v291[1] = v462;
            v463 = OUTLINED_FUNCTION_14_3();
            v464(v463);
            (*(v372 + 8))(v461, v378);
            goto LABEL_38;
          }

          OUTLINED_FUNCTION_0_14();
          v489 = sub_23DEAEFA8(v487, 255, v488);
          OUTLINED_FUNCTION_30_2(v489);
          OUTLINED_FUNCTION_83_1();
          OUTLINED_FUNCTION_76_1();
          sub_23DEAEFA8(v490, 255, v491);
          OUTLINED_FUNCTION_91_1();
          v377 = v578;
          *v291 = sub_23E1FDACC();
          v291[1] = v492;
          OUTLINED_FUNCTION_14_3();
LABEL_67:
          v429();
          (*(v372 + 8))(v377, v378);
LABEL_68:
          v430 = OUTLINED_FUNCTION_4_8();
          v431(v430);
          v432 = OUTLINED_FUNCTION_139_0();
          v433(v432);
          goto LABEL_41;
        }

        OUTLINED_FUNCTION_0_14();
        v426 = sub_23DEAEFA8(v424, 255, v425);
        v427 = OUTLINED_FUNCTION_30_2(v426);
        OUTLINED_FUNCTION_89_1(v427, v428);
      }

      OUTLINED_FUNCTION_17_6();
      goto LABEL_67;
    }

    if (v208 == *MEMORY[0x277D0DB70])
    {
      OUTLINED_FUNCTION_0_14();
      v410 = sub_23DEAEFA8(v408, 255, v409);
      OUTLINED_FUNCTION_30_2(v410);
      v412 = v411;
      swift_getErrorValue();
      *v412 = sub_23E1FE7EC();
      v412[1] = v413;
      OUTLINED_FUNCTION_17_6();
      v414(v412);
      v415 = OUTLINED_FUNCTION_4_8();
      v416(v415);
      (*(v371 + 8))(v207, v372);
      goto LABEL_41;
    }

    if (v208 == *MEMORY[0x277D0DBA8])
    {
LABEL_72:
      OUTLINED_FUNCTION_0_14();
      v447 = sub_23DEAEFA8(v445, 255, v446);
      v448 = OUTLINED_FUNCTION_30_2(v447);
      OUTLINED_FUNCTION_89_1(v448, v449);
      OUTLINED_FUNCTION_17_6();
      v450();
      v451 = OUTLINED_FUNCTION_4_8();
      v452(v451);
      (*(v371 + 8))(v207, v372);
      goto LABEL_41;
    }

    if (v208 == *MEMORY[0x277D0DB48])
    {
      v470 = OUTLINED_FUNCTION_86_1();
      v471(v470);
      OUTLINED_FUNCTION_121_0();
      OUTLINED_FUNCTION_160_0();
      v472();
      OUTLINED_FUNCTION_0_14();
      v475 = sub_23DEAEFA8(v473, 255, v474);
      OUTLINED_FUNCTION_30_2(v475);
      OUTLINED_FUNCTION_83_1();
      v476 = &unk_27E32CD98;
      v477 = MEMORY[0x277D0D9C0];
    }

    else
    {
      if (v208 == *MEMORY[0x277D0DB58])
      {
        goto LABEL_72;
      }

      if (v208 == *MEMORY[0x277D0DB98])
      {
        v493 = OUTLINED_FUNCTION_86_1();
        v494(v493);
        OUTLINED_FUNCTION_123();
        v495 = v565;
        OUTLINED_FUNCTION_144_0();
        v496();
        OUTLINED_FUNCTION_0_14();
        v499 = sub_23DEAEFA8(v497, 255, v498);
        OUTLINED_FUNCTION_30_2(v499);
        OUTLINED_FUNCTION_83_1();
        OUTLINED_FUNCTION_137_0();
        sub_23E1FCEFC();
        v500 = sub_23E1FCE2C();
        v502 = v501;
        OUTLINED_FUNCTION_54_1();
        v503(v372, v568);
        *v291 = v500;
        v291[1] = v502;
        v504 = OUTLINED_FUNCTION_14_3();
        v505(v504);
        (*(v371 + 8))(v495);
        goto LABEL_38;
      }

      if (v208 != *MEMORY[0x277D0DB80])
      {
        if (v208 == *MEMORY[0x277D0DB60])
        {
          v512 = OUTLINED_FUNCTION_93_1();
          v513(v512);
          OUTLINED_FUNCTION_123();
          v514 = v558[5];
          OUTLINED_FUNCTION_54();
          OUTLINED_FUNCTION_144_0();
          v515();
          OUTLINED_FUNCTION_0_14();
          sub_23DEAEFA8(v516, 255, v517);
          OUTLINED_FUNCTION_135_0();
          OUTLINED_FUNCTION_175_0(v518);
          OUTLINED_FUNCTION_29();
          swift_allocError();
          OUTLINED_FUNCTION_83_1();
          sub_23DEAEFA8(&qword_27E32CD88, 255, MEMORY[0x277D0DA08]);
          OUTLINED_FUNCTION_172_0();
          *v291 = sub_23E1FDACC();
          v291[1] = v519;
          v520 = OUTLINED_FUNCTION_14_3();
          v521(v520);
          (*(v371 + 8))(v514);
          goto LABEL_38;
        }

        if (v208 != *MEMORY[0x277D0DB68])
        {
          v538 = *MEMORY[0x277D0DB88];
          OUTLINED_FUNCTION_0_14();
          sub_23DEAEFA8(v539, 255, v540);
          OUTLINED_FUNCTION_135_0();
          OUTLINED_FUNCTION_29();
          swift_allocError();
          v542 = v541;
          if (v291 != v538)
          {
            swift_getErrorValue();
            *v542 = sub_23E1FE7EC();
            v542[1] = v553;
          }

          OUTLINED_FUNCTION_17_6();
          v554(v542);
          v555 = OUTLINED_FUNCTION_4_8();
          v556(v555);
          OUTLINED_FUNCTION_54_1();
          v557(v593, v596);
          goto LABEL_41;
        }

        v522 = OUTLINED_FUNCTION_93_1();
        v523(v522);
        v524 = OUTLINED_FUNCTION_54();
        v525(v524);
        v526 = v559;
        sub_23E1FCEDC();
        if ((*(v560 + 88))(v526, v561) != *MEMORY[0x277D0DA28])
        {
          OUTLINED_FUNCTION_0_14();
          sub_23DEAEFA8(v543, 255, v544);
          OUTLINED_FUNCTION_135_0();
          OUTLINED_FUNCTION_175_0(v545);
          OUTLINED_FUNCTION_29();
          swift_allocError();
          OUTLINED_FUNCTION_83_1();
          sub_23DEAEFA8(&qword_27E32CD78, 255, MEMORY[0x277D0DA30]);
          *v526 = sub_23E1FDACC();
          v526[1] = v546;
          v547 = OUTLINED_FUNCTION_14_3();
          v548(v547);
          OUTLINED_FUNCTION_54_1();
          v549 = OUTLINED_FUNCTION_33();
          v550(v549);
          v551 = OUTLINED_FUNCTION_4_8();
          v552(v551);
          OUTLINED_FUNCTION_54_1();
          v274 = v559;
          v300 = v582;
          goto LABEL_39;
        }

        v527 = OUTLINED_FUNCTION_102_0();
        v528(v527, v561);
        OUTLINED_FUNCTION_123();
        OUTLINED_FUNCTION_54();
        OUTLINED_FUNCTION_144_0();
        v529();
        OUTLINED_FUNCTION_0_14();
        sub_23DEAEFA8(v530, 255, v531);
        OUTLINED_FUNCTION_135_0();
        OUTLINED_FUNCTION_175_0(v532);
        OUTLINED_FUNCTION_29();
        swift_allocError();
        OUTLINED_FUNCTION_83_1();
        sub_23DEAEFA8(&qword_27E32CD80, 255, MEMORY[0x277D0DA18]);
        OUTLINED_FUNCTION_172_0();
        *v526 = sub_23E1FDACC();
        v526[1] = v533;
        v534 = OUTLINED_FUNCTION_14_3();
        v535(v534);
        v536 = OUTLINED_FUNCTION_33();
        v537(v536);
        OUTLINED_FUNCTION_54_1();
        v422 = v562;
        v423 = &v583;
        goto LABEL_63;
      }

      v506 = OUTLINED_FUNCTION_86_1();
      v507(v506);
      OUTLINED_FUNCTION_121_0();
      OUTLINED_FUNCTION_160_0();
      v508();
      OUTLINED_FUNCTION_0_14();
      v511 = sub_23DEAEFA8(v509, 255, v510);
      OUTLINED_FUNCTION_30_2(v511);
      OUTLINED_FUNCTION_83_1();
      v476 = &unk_27E32CD90;
      v477 = MEMORY[0x277D0DAC0];
    }

    sub_23DEAEFA8(v476, 255, v477);
    *v291 = sub_23E1FDACC();
    v291[1] = v478;
    v479 = OUTLINED_FUNCTION_14_3();
    v480(v479);
    v232 = OUTLINED_FUNCTION_163();
    goto LABEL_37;
  }

  v603 = v156;
  v605[0] = v155;
  v608[0] = v137;
  v167 = OUTLINED_FUNCTION_129_0();
  v168(v167);
  OUTLINED_FUNCTION_137_0();
  v169 = v607;
  OUTLINED_FUNCTION_144_0();
  v170();
  sub_23E1FCB9C();
  v171 = *(v130 + 2);
  v172 = v600;
  v171(v600, v169, v25);
  v173 = sub_23E1FD02C();
  v174 = sub_23E1FE1BC();
  v175 = OUTLINED_FUNCTION_51(v174);
  v558[0] = v25;
  v558[1] = v133;
  if (v175)
  {
    OUTLINED_FUNCTION_101_0();
    v176 = swift_slowAlloc();
    v177 = swift_slowAlloc();
    *v176 = 138412290;
    sub_23DEAEFA8(&unk_27E32CDB0, 255, MEMORY[0x277D29DE0]);
    OUTLINED_FUNCTION_172_0();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    v171(v178, v172, v25);
    v179 = _swift_stdlib_bridgeErrorToNSError();
    v180 = OUTLINED_FUNCTION_140_0();
    v606 = v181;
    v181(v180);
    *(v176 + 4) = v179;
    *v177 = v179;
    _os_log_impl(&dword_23DE30000, v173, v174, "Encountering inference error: %@", v176, 0xCu);
    sub_23DE481FC(v177, &unk_27E32C190, &qword_23E224B70);
    OUTLINED_FUNCTION_52_2();
    MEMORY[0x23EF074C0](v182, v183);
    OUTLINED_FUNCTION_52_2();
    MEMORY[0x23EF074C0](v184, v185);
  }

  else
  {

    v234 = OUTLINED_FUNCTION_140_0();
    v606 = v235;
    v235(v234);
  }

  OUTLINED_FUNCTION_176_0();
  (v603)(v236, v237);
  v171(v601, v607, v25);
  v238 = OUTLINED_FUNCTION_140_0();
  v240 = v239(v238);
  v241 = v602[0];
  if (v240 == *MEMORY[0x277D29DA8])
  {
    v242 = OUTLINED_FUNCTION_140_0();
    v243(v242);
    v244 = v594;
    OUTLINED_FUNCTION_170_0();
    v245 = v595;
    v246(v241);
    sub_23DEADFB0(v599, &v612);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CD08, &qword_23E226648);
    sub_23E1FBC7C();
    if (swift_dynamicCast() & 1) != 0 && (, v247 = sub_23E1FCBBC(), v25 = v248, v612 = v247, v613 = v248, v610 = 0xD000000000000019, v611 = 0x800000023E253430, v249 = sub_23DE655BC(), OUTLINED_FUNCTION_147_0(v249, MEMORY[0x277D837D0]), OUTLINED_FUNCTION_191_0(), (v241))
    {
      v250 = sub_23E1FCBBC();
      v25 = v251;
      v612 = v250;
      v613 = v251;
      v610 = 0xD000000000000044;
      v611 = 0x800000023E253450;
      OUTLINED_FUNCTION_147_0(v250, MEMORY[0x277D837D0]);
      OUTLINED_FUNCTION_191_0();
      OUTLINED_FUNCTION_0_14();
      sub_23DEAEFA8(v252, 255, v253);
      OUTLINED_FUNCTION_91_1();
      OUTLINED_FUNCTION_29();
      v254 = swift_allocError();
      OUTLINED_FUNCTION_89_1(v254, v255);
      OUTLINED_FUNCTION_17_6();
    }

    else
    {
      OUTLINED_FUNCTION_0_14();
      sub_23DEAEFA8(v268, 255, v269);
      OUTLINED_FUNCTION_91_1();
      OUTLINED_FUNCTION_29();
      swift_allocError();
      v271 = v270;
      *v270 = sub_23E1FCBBC();
      v271[1] = v272;
      OUTLINED_FUNCTION_17_6();
      v256 = v271;
    }

    v257(v256);
    (*(v244 + 8))(v241, v245);
    (v606)(v607, v25);
    OUTLINED_FUNCTION_54_1();
    v274 = v608[0];
    v275 = v131;
    goto LABEL_40;
  }

  v258 = v240;
  v259 = v608[0];
  if (v240 == *MEMORY[0x277D29D80])
  {
    OUTLINED_FUNCTION_0_14();
    sub_23DEAEFA8(v260, 255, v261);
    OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    v263 = v262;
    __swift_project_boxed_opaque_existential_0(v599, v599[3]);
    OUTLINED_FUNCTION_155();
    sub_23E1FBA4C();
    OUTLINED_FUNCTION_17_6();
    v264(v263);
    v265 = v606;
    (v606)(v607, v604);
    OUTLINED_FUNCTION_54_1();
    v266(v259, v131);
    v267 = OUTLINED_FUNCTION_139_0();
    v265(v267);
  }

  else
  {
    v286 = *MEMORY[0x277D29D68];
    OUTLINED_FUNCTION_0_14();
    sub_23DEAEFA8(v287, 255, v288);
    OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    v290 = v289;
    if (v258 != v286)
    {
      swift_getErrorValue();
      *v290 = sub_23E1FE7EC();
      v290[1] = v301;
    }

    OUTLINED_FUNCTION_17_6();
    v302(v290);
    v303 = v606;
    (v606)(v607, v604);
    OUTLINED_FUNCTION_54_1();
    v304(v259, v131);
    v305 = OUTLINED_FUNCTION_140_0();
    v303(v305);
  }

LABEL_41:
  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DEAA608()
{
  OUTLINED_FUNCTION_4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_23E1FBBDC();
  v1[5] = v4;
  OUTLINED_FUNCTION_8(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_42();
  v6 = sub_23E1FD03C();
  v1[8] = v6;
  OUTLINED_FUNCTION_8(v6);
  v1[9] = v7;
  v1[10] = OUTLINED_FUNCTION_42();
  v1[11] = sub_23E1FDECC();
  v1[12] = sub_23E1FDEBC();
  v8 = swift_task_alloc();
  v1[13] = v8;
  *v8 = v1;
  v8[1] = sub_23DEAA764;
  OUTLINED_FUNCTION_58_0();

  return sub_23DEAAEB8();
}

uint64_t sub_23DEAA764()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[14] = v7;
  v3[15] = v0;

  sub_23E1FDE6C();
  OUTLINED_FUNCTION_173_0();
  v3[16] = v10;
  v3[17] = v11;
  if (v0)
  {
    v12 = sub_23DEAADC0;
  }

  else
  {
    v12 = sub_23DEAA8AC;
  }

  return MEMORY[0x2822009F8](v12, v9, v8);
}

id sub_23DEAA8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_126();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  if (*(v22 + 112))
  {
    sub_23E1FCB9C();
    sub_23E1FB7BC();
    v25 = sub_23E1FD02C();
    v26 = sub_23E1FE1AC();

    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v22 + 72);
    v29 = *(v22 + 80);
    v30 = *(v22 + 64);
    if (v27)
    {
      OUTLINED_FUNCTION_101_0();
      a10 = v29;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      a11 = v32;
      *v31 = 136315138;
      sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
      v33 = OUTLINED_FUNCTION_38();
      v34 = MEMORY[0x23EF045E0](v33);
      v36 = sub_23DE56B40(v34, v35, &a11);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_23DE30000, v25, v26, "Returning empty prompt output: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      OUTLINED_FUNCTION_52_2();
      MEMORY[0x23EF074C0]();
      OUTLINED_FUNCTION_52_2();
      MEMORY[0x23EF074C0]();

      (*(v28 + 8))(a10, v30);
    }

    else
    {

      (*(v28 + 8))(v29, v30);
    }

    result = [*(v22 + 32) output];
    if (result)
    {
      v49 = result;

      sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
      OUTLINED_FUNCTION_38();
      v50 = sub_23E1FDDCC();

      v51 = OUTLINED_FUNCTION_109_0();
      [v51 v52];

      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_72_0();

      return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_23DEAB608();
    *(v22 + 144) = v37;
    sub_23DE9D68C();
    OUTLINED_FUNCTION_119_0(MEMORY[0x277CFC168]);
    v61 = v38;
    v39 = swift_task_alloc();
    *(v22 + 152) = v39;
    *v39 = v22;
    v39[1] = sub_23DEAAB68;
    OUTLINED_FUNCTION_65_0(*(v22 + 24));
    OUTLINED_FUNCTION_72_0();

    return v44(v40, v41, v42, v43, v44, v45, v46, v47, a9, v61, a11, a12, a13, a14);
  }

  return result;
}

uint64_t sub_23DEAAB68(uint64_t a1)
{
  OUTLINED_FUNCTION_196_0();
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_28();
  v4 = v3;
  OUTLINED_FUNCTION_58();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v4 + 160) = v8;
  *(v4 + 168) = v1;

  v9 = OUTLINED_FUNCTION_30_0();
  v10(v9);
  if (v1)
  {
  }

  OUTLINED_FUNCTION_196();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

id sub_23DEAACCC()
{
  OUTLINED_FUNCTION_4();
  result = [*(v0 + 32) output];
  if (result)
  {
    v2 = result;

    sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
    OUTLINED_FUNCTION_38();
    v3 = sub_23E1FDDCC();

    v4 = OUTLINED_FUNCTION_109_0();
    [v4 v5];

    OUTLINED_FUNCTION_19();

    return v6();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23DEAADC0()
{
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_19();

  return v0();
}

uint64_t sub_23DEAAE3C()
{
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_19();

  return v0();
}

uint64_t sub_23DEAAEB8()
{
  OUTLINED_FUNCTION_23();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_23E1FBBDC();
  v1[5] = v4;
  OUTLINED_FUNCTION_8(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_42();
  sub_23E1FDECC();
  OUTLINED_FUNCTION_116_0();
  v1[8] = sub_23E1FDEBC();
  OUTLINED_FUNCTION_37();
  v7 = sub_23E1FDE6C();

  return MEMORY[0x2822009F8](sub_23DEAAF94, v7, v6);
}

uint64_t sub_23DEAAF94()
{
  OUTLINED_FUNCTION_140();
  v24 = v1;
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = v2;
    v0 = sub_23E1FBACC();

    if ((v0 & 1) == 0)
    {

      goto LABEL_10;
    }
  }

  sub_23E1FBC8C();
  OUTLINED_FUNCTION_116_0();
  if ((sub_23E1FBB4C() & 1) == 0)
  {

LABEL_8:

    goto LABEL_10;
  }

  sub_23DE9D68C();
  v4 = OUTLINED_FUNCTION_45();
  v6 = v5(v4);
  if (v6 == *MEMORY[0x277CFC0D8])
  {

    v7 = OUTLINED_FUNCTION_24_2();
    v8(v7);
LABEL_6:

LABEL_10:

    v9 = OUTLINED_FUNCTION_171_0();

    return v10(v9);
  }

  if (v6 == *MEMORY[0x277CFC110] || v6 == *MEMORY[0x277CFC0F8])
  {

    sub_23DE38DA8(0, &unk_280DAE700, 0x277CFC530);
    v23 = MEMORY[0x277D837D0];
    v22[0] = 0;
    v22[1] = 0xE000000000000000;
    goto LABEL_16;
  }

  if (v6 == *MEMORY[0x277CFC100] || v6 == *MEMORY[0x277CFC108])
  {
    goto LABEL_20;
  }

  if (v6 == *MEMORY[0x277CFC0F0])
  {
    goto LABEL_24;
  }

  if (v6 == *MEMORY[0x277CFC0D0])
  {

    sub_23DE38DA8(0, &qword_27E32CD40, 0x277CFC388);
    v21 = sub_23E1FDABC();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7B8, &unk_23E224B90);
    v22[0] = v21;
LABEL_16:
    v12 = sub_23DE448B0(v22);
    if (v12)
    {
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
      OUTLINED_FUNCTION_161_0();
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_23E2235B0;
      *(v14 + 32) = v13;

      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v6 == *MEMORY[0x277CFC0E0])
  {
LABEL_24:

    goto LABEL_6;
  }

  if (v6 == *MEMORY[0x277CFC0E8])
  {
LABEL_20:

    sub_23E1FB9FC();
    OUTLINED_FUNCTION_0_14();
    sub_23DEAEFA8(v15, 255, v16);
    OUTLINED_FUNCTION_29();
    v17 = swift_allocError();
    OUTLINED_FUNCTION_89_1(v17, v18);
    OUTLINED_FUNCTION_21();
    (*(v19 + 104))();
    swift_willThrow();

    OUTLINED_FUNCTION_19();

    return v20();
  }

  else
  {

    return sub_23E1FE74C();
  }
}

uint64_t sub_23DEAB368()
{
  OUTLINED_FUNCTION_23();
  v1[18] = v2;
  v1[19] = v0;
  v1[17] = v3;
  sub_23E1FDECC();
  OUTLINED_FUNCTION_116_0();
  v1[20] = sub_23E1FDEBC();
  OUTLINED_FUNCTION_37();
  v5 = sub_23E1FDE6C();

  return MEMORY[0x2822009F8](sub_23DEAB3F8, v5, v4);
}

uint64_t sub_23DEAB3F8()
{
  OUTLINED_FUNCTION_33_0();

  sub_23DE9D78C();
  if (*(v0 + 80))
  {
    v1 = *(v0 + 152);
    sub_23DE36C8C((v0 + 56), v0 + 16);
    sub_23DEADFB0(v0 + 16, v0 + 56);
    v2 = [v1 input];
    v3 = v2;
    if (!v2)
    {
      sub_23DE38DA8(0, &qword_27E32C360, 0x277CFC2E0);
      v2 = sub_23DE56610(MEMORY[0x277D84F90]);
      v3 = v2;
    }

    v4 = *(v0 + 144);
    v5 = *(v0 + 136);
    sub_23DEAB90C(v2);

    sub_23DEADFB0(v4, v0 + 96);
    v6 = objc_allocWithZone(sub_23E1FBCAC());
    v7 = v5;
    sub_23E1FBC9C();
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v8 = OUTLINED_FUNCTION_171_0();

    return v9(v8);
  }

  else
  {
    sub_23DE481FC(v0 + 56, &unk_27E32CC40, &qword_23E2265E0);
    sub_23E1FB9FC();
    OUTLINED_FUNCTION_0_14();
    sub_23DEAEFA8(v11, 255, v12);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    OUTLINED_FUNCTION_21();
    (*(v14 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_19();

    return v15();
  }
}

void sub_23DEAB608()
{
  OUTLINED_FUNCTION_90();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C448, &qword_23E224238);
  OUTLINED_FUNCTION_25(v2);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v3);
  v5 = &v37 - v4;
  v6 = sub_23E1FBBDC();
  OUTLINED_FUNCTION_6_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_2();
  v39 = v10;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  MEMORY[0x28223BE20](v12);
  sub_23DE9D68C();
  v15 = OUTLINED_FUNCTION_129_0();
  v17 = v16(v15);
  v18 = *MEMORY[0x277CFC110];
  v19 = *(v8 + 8);
  v20 = OUTLINED_FUNCTION_129_0();
  v19(v20);
  if (v17 == v18)
  {
    v38 = v5;
    sub_23DEABED8();
    v22 = v21;
    v23 = [v1 workflow];
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    sub_23E1FB7BC();

    v41[1] = v22;
    WFGenerativeOutputTraversal.traverseWorkflow(for:)();
    v40 = v24;
    v25 = *MEMORY[0x277CFC0E0];
    v26 = *(v8 + 104);
    v26(v14, v25, v6);
    sub_23E1FB7BC();
    v27 = OUTLINED_FUNCTION_30_0();
    v29 = sub_23DF115A0(v27, v28);

    v30 = OUTLINED_FUNCTION_127_0();
    v19(v30);
    if (v29)
    {
      v31 = sub_23DE4D8B0();

      if (!v31)
      {
        v26(v14, v25, v6);
        v32 = v38;
        sub_23DEAE03C(v14, v38);
        v33 = OUTLINED_FUNCTION_127_0();
        v19(v33);
        sub_23DE481FC(v32, &qword_27E32C448, &qword_23E224238);
        v26(v39, *MEMORY[0x277CFC0F8], v6);
        v34 = OUTLINED_FUNCTION_30_0();
        sub_23DF0342C(v34, v35);
        v36 = OUTLINED_FUNCTION_127_0();
        v19(v36);
      }
    }

    else
    {
    }

    sub_23DF19804(v40);
    sub_23DEAEC50(v41);
  }

  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DEAB90C(uint64_t a1)
{
  v2 = v1;
  sub_23DEABED8();
  v4 = v3;
  result = sub_23DE4D8B0();
  v6 = result;
  v7 = 0;
  v41 = v4 & 0xFFFFFFFFFFFFFF8;
  v42 = v4 & 0xC000000000000001;
  v8 = MEMORY[0x277D84F90];
  v36 = v4;
  v37 = result;
  v40 = v4 + 32;
  v38 = v1;
  while (1)
  {
    if (v7 == v6)
    {

      return v8;
    }

    if (v42)
    {
      result = MEMORY[0x23EF04DD0](v7, v36);
    }

    else
    {
      if (v7 >= *(v41 + 16))
      {
        goto LABEL_48;
      }

      result = *(v40 + 8 * v7);
    }

    v9 = result;
    v10 = __OFADD__(v7++, 1);
    if (v10)
    {
      break;
    }

    v11 = WFPreferredVariableNameForVariable();
    if (!v11)
    {
      goto LABEL_11;
    }

    v12 = v11;
    v13 = [v2 variableSource];
    if (v13)
    {
      v14 = [v13 contentForVariableWithName_];

      swift_unknownObjectRelease();
      if (!v14)
      {
LABEL_11:
        v15 = MEMORY[0x277D84F90];
        goto LABEL_14;
      }

      v12 = [v14 items];

      sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
      v15 = sub_23E1FDDEC();
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
    }

    v9 = v12;
LABEL_14:

    if (v15 >> 62)
    {
      v16 = sub_23E1FE6AC();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = v8 >> 62;
    if (v8 >> 62)
    {
      result = sub_23E1FE6AC();
    }

    else
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = result + v16;
    if (__OFADD__(result, v16))
    {
      goto LABEL_49;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v17)
      {
LABEL_25:
        sub_23E1FE6AC();
      }

LABEL_26:
      result = sub_23E1FE5FC();
      v43 = result;
      v19 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_27;
    }

    if (v17)
    {
      goto LABEL_25;
    }

    v19 = v8 & 0xFFFFFFFFFFFFFF8;
    if (v18 > *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_26;
    }

    v43 = v8;
LABEL_27:
    v20 = *(v19 + 16);
    v21 = (*(v19 + 24) >> 1) - v20;
    v22 = v19 + 8 * v20;
    if (v15 >> 62)
    {
      v25 = sub_23E1FE6AC();
      if (v25)
      {
        v26 = v25;
        result = sub_23E1FE6AC();
        if (v21 < result)
        {
          goto LABEL_53;
        }

        if (v26 < 1)
        {
          goto LABEL_54;
        }

        v39 = result;
        v27 = v22 + 32;
        sub_23DEAEBEC();
        for (i = 0; i != v26; ++i)
        {
          v29 = OUTLINED_FUNCTION_107_0();
          __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
          v31 = sub_23DE58880(v44, i, v15);
          v33 = *v32;
          (v31)(v44, 0);
          *(v27 + 8 * i) = v33;
        }

        v6 = v37;
        v2 = v38;
        v24 = v39;
        goto LABEL_37;
      }

LABEL_41:

      v8 = v43;
      if (v16 > 0)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v23 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v23)
      {
        goto LABEL_41;
      }

      if (v21 < v23)
      {
        goto LABEL_52;
      }

      v24 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
      swift_arrayInitWithCopy();
LABEL_37:

      v8 = v43;
      if (v24 < v16)
      {
        goto LABEL_50;
      }

      if (v24 > 0)
      {
        v34 = *(v19 + 16);
        v10 = __OFADD__(v34, v24);
        v35 = v34 + v24;
        if (v10)
        {
          goto LABEL_51;
        }

        *(v19 + 16) = v35;
      }
    }
  }

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
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

id sub_23DEABCF0()
{
  sub_23E1FD03C();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_15();
  v2 = sub_23E1FDBDC();
  v3 = [v0 parameterStateForKey_];

  if (v3)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 numberSubstitutableState];
      v6 = [v5 number];

      if (v6)
      {
        v7 = [v6 BOOLValue];

        swift_unknownObjectRelease();
        return v7;
      }
    }

    swift_unknownObjectRelease();
  }

  sub_23E1FCB9C();
  v8 = sub_23E1FD02C();
  v9 = sub_23E1FE1BC();
  if (os_log_type_enabled(v8, v9))
  {
    OUTLINED_FUNCTION_74_2();
    v10 = swift_slowAlloc();
    OUTLINED_FUNCTION_168_0(v10);
    OUTLINED_FUNCTION_152_0();
    _os_log_impl(v11, v12, v13, v14, v15, v16);
    OUTLINED_FUNCTION_52_2();
    MEMORY[0x23EF074C0]();
  }

  v17 = OUTLINED_FUNCTION_54();
  v18(v17);
  return 0;
}

void sub_23DEABED8()
{
  OUTLINED_FUNCTION_90();
  v2 = v0;
  sub_23E1FBBDC();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_169_0();
  v4 = sub_23E1FDBDC();
  v5 = [v0 parameterStateForKey_];

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
LABEL_38:
    OUTLINED_FUNCTION_76();
    return;
  }

  v7 = [v5 containedVariables];
  sub_23DE38DA8(0, &qword_27E32CC50, 0x277D7C9F8);
  OUTLINED_FUNCTION_38();
  v8 = sub_23E1FDDEC();

  v9 = sub_23DE4D8B0();
  v10 = 0;
  v45 = v6;
  while (v9 != v10)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v14 = OUTLINED_FUNCTION_158_0();
      v11 = MEMORY[0x23EF04DD0](v14);
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    objc_opt_self();
    OUTLINED_FUNCTION_38();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x23EF045A0]();
      v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v13 >> 1)
      {
        OUTLINED_FUNCTION_9(v13);
        sub_23E1FDE0C();
      }

      sub_23E1FDE3C();
      v45 = v6;
      ++v10;
    }

    else
    {

      ++v10;
    }
  }

  v15 = v45;
  v46 = v45;
  sub_23DE9D68C();
  v16 = OUTLINED_FUNCTION_163();
  if (v17(v16) == *MEMORY[0x277CFC0D8])
  {
    v18 = OUTLINED_FUNCTION_163();
    v19(v18);
    v21 = *v1;
    v20 = v1[1];
    v22 = sub_23DE4D8B0();
    for (i = 0; ; ++i)
    {
      if (v22 == i)
      {

        swift_unknownObjectRelease();

        goto LABEL_38;
      }

      if ((v45 & 0xC000000000000001) != 0)
      {
        v32 = OUTLINED_FUNCTION_129_0();
        v24 = MEMORY[0x23EF04DD0](v32);
      }

      else
      {
        if (i >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v24 = *(v15 + 8 * i + 32);
      }

      v25 = v24;
      if (__OFADD__(i, 1))
      {
        goto LABEL_41;
      }

      v26 = [v24 name];
      v27 = sub_23E1FDC1C();
      v29 = v28;

      if (v27 == v21 && v29 == v20)
      {
      }

      else
      {
        OUTLINED_FUNCTION_54();
        v31 = sub_23E1FE75C();

        if ((v31 & 1) == 0)
        {

          goto LABEL_29;
        }
      }

      sub_23E1FE61C();
      sub_23E1FE64C();
      sub_23E1FE65C();
      sub_23E1FE62C();
LABEL_29:
      v15 = v45;
    }
  }

  v33 = OUTLINED_FUNCTION_163();
  v34(v33);
  sub_23DEAE5B0(&v46, v2);
  v36 = v35;
  v37 = v46;
  v38 = sub_23DE4D8B0();
  v39 = v38 - v36;
  if (v38 < v36)
  {
    goto LABEL_43;
  }

  if (v36 < 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v40 = v38;
  if (sub_23DE4BFE4(v37) < v38)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v41 = __OFSUB__(0, v39);
  v42 = -v39;
  if (!v41)
  {
    v43 = sub_23DE4BFE4(v37);
    v41 = __OFADD__(v43, v42);
    v44 = v43 + v42;
    if (!v41)
    {
      sub_23DE57440(v44, 1);
      sub_23DEAEE00(v36, v40, 0);
      swift_unknownObjectRelease();
      goto LABEL_38;
    }

    goto LABEL_47;
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

void sub_23DEAC324(void *a1, void *a2)
{
  v3 = WFPreferredVariableNameForVariable();
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = [a2 variableSource];
  if (!v5)
  {

    return;
  }

  v6 = [v5 contentForVariableWithName_];

  swift_unknownObjectRelease();
  if (!v6)
  {
    return;
  }

  v7 = [v6 items];

  sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
  v8 = sub_23E1FDDEC();

  v9 = sub_23DE4D8B0();
  v10 = 0;
  v11 = v8 & 0xFFFFFFFFFFFFFF8;
  v12 = v8 + 32;
LABEL_5:
  if (v10 == v9)
  {

    return;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x23EF04DD0](v10, v8);
  }

  else
  {
    if (v10 >= *(v11 + 16))
    {
LABEL_22:
      __break(1u);
      return;
    }

    v13 = *(v12 + 8 * v10);
  }

  v14 = v13;
  if (__OFADD__(v10++, 1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v16 = v9;
  if (qword_27E32B9B0 != -1)
  {
    swift_once();
  }

  v17 = *(off_27E32DB30 + 2);
  v18 = (off_27E32DB30 + 32);
  while (v17)
  {
    v19 = *v18++;
    --v17;
    if (swift_getObjectType() == v19)
    {

      v9 = v16;
      v11 = v8 & 0xFFFFFFFFFFFFFF8;
      v12 = v8 + 32;
      goto LABEL_5;
    }
  }
}

uint64_t sub_23DEAC534()
{
  OUTLINED_FUNCTION_23();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = sub_23E1FD03C();
  v1[25] = v4;
  OUTLINED_FUNCTION_8(v4);
  v1[26] = v5;
  v1[27] = OUTLINED_FUNCTION_42();
  sub_23E1FDECC();
  OUTLINED_FUNCTION_116_0();
  v1[28] = sub_23E1FDEBC();
  OUTLINED_FUNCTION_37();
  sub_23E1FDE6C();
  OUTLINED_FUNCTION_173_0();
  v1[29] = v8;
  v1[30] = v9;

  return MEMORY[0x2822009F8](sub_23DEAC60C, v7, v6);
}

uint64_t sub_23DEAC60C()
{
  OUTLINED_FUNCTION_33_0();
  sub_23DE9D78C();
  if (*(v0 + 160))
  {
    v1 = *(v0 + 184);
    sub_23DE36C8C((v0 + 136), v0 + 96);
    sub_23DEADFB0(v0 + 96, v0 + 16);
    sub_23DEADFB0(v1, v0 + 56);
    v2 = swift_task_alloc();
    *(v0 + 248) = v2;
    *v2 = v0;
    v2[1] = sub_23DEAC848;
    OUTLINED_FUNCTION_65_0(*(v0 + 176));

    return WFGenerativePromptProvider.getUserPrompt(input:)();
  }

  else
  {

    sub_23DE481FC(v0 + 136, &unk_27E32CC40, &qword_23E2265E0);
    sub_23E1FCB9C();
    v4 = sub_23E1FD02C();
    v5 = sub_23E1FE1BC();
    if (OUTLINED_FUNCTION_118(v5))
    {
      OUTLINED_FUNCTION_74_2();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_105_0(&dword_23DE30000, v6, v7, "Could not get the model name because self.modelName was nil.");
      OUTLINED_FUNCTION_52_2();
      MEMORY[0x23EF074C0]();
    }

    v8 = OUTLINED_FUNCTION_50();
    v9(v8);
    sub_23E1FB9FC();
    OUTLINED_FUNCTION_0_14();
    sub_23DEAEFA8(v10, 255, v11);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    OUTLINED_FUNCTION_21();
    (*(v12 + 104))();
    swift_willThrow();

    OUTLINED_FUNCTION_19();

    return v13();
  }
}

uint64_t sub_23DEAC848()
{
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_58();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v5[32] = v0;

  if (v0)
  {
    v9 = v5[29];
    v10 = v5[30];
    v11 = sub_23DEAC9D4;
  }

  else
  {
    v5[33] = v3;
    v9 = v5[29];
    v10 = v5[30];
    v11 = sub_23DEAC958;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_23DEAC958()
{
  OUTLINED_FUNCTION_23();

  sub_23DEAEEF8((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  v1 = v0[1];
  v2 = v0[33];

  return v1(v2);
}

uint64_t sub_23DEAC9D4()
{
  OUTLINED_FUNCTION_23();

  sub_23DEAEEF8(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));

  OUTLINED_FUNCTION_19();

  return v1();
}

id WFAskLLMAction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WFAskLLMAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFAskLLMAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall WFAskLLMAction.montaraEnablementDidChange(wasEnabled:isEnabled:)(Swift::Bool wasEnabled, Swift::Bool isEnabled)
{
  v3 = v2;
  v6 = sub_23E1FBC1C();
  OUTLINED_FUNCTION_6_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  sub_23DEACE3C();
  if (wasEnabled)
  {
    goto LABEL_7;
  }

  if (!isEnabled)
  {
    goto LABEL_7;
  }

  v13 = [v2 parametersByKey];
  sub_23DE38DA8(0, &unk_27E32CD10, 0x277D7C6D8);
  v14 = sub_23E1FDAAC();

  v21 = sub_23DE46890(0x646F4D4D4C4C4657, 0xEA00000000006C65, v14);

  if (!v21)
  {
    goto LABEL_7;
  }

  sub_23E1FC7CC();
  if (swift_dynamicCastClass() && (sub_23E1FC7AC() & 1) != 0)
  {
    sub_23E1FC7BC();
    (*(v8 + 104))(v12, *MEMORY[0x277CFC140], v6);
    sub_23E1FBC0C();
    (*(v8 + 8))(v12, v6);
    v15 = sub_23E1FDBDC();

    v16 = [objc_allocWithZone(MEMORY[0x277D7C928]) initWithValue_];

    sub_23DE38DA8(0, &unk_280DAE660, 0x277D7C928);
    sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
    OUTLINED_FUNCTION_33();
    v17 = sub_23E1FC98C();
    v18 = sub_23E1FDBDC();
    [v3 setParameterState:v17 forKey:v18];

LABEL_7:
    OUTLINED_FUNCTION_197();
    return;
  }

  OUTLINED_FUNCTION_197();
}

void sub_23DEACE3C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CD50, &qword_23E22A9F0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20 - v2;
  v20 = v0;
  v4 = [v0 parameters];
  sub_23DE38DA8(0, &unk_27E32CD10, 0x277D7C6D8);
  v5 = sub_23E1FDDEC();

  v6 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v7 = sub_23DE4D8B0();
  v8 = 0;
  while (v7 != v8)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x23EF04DD0](v8, v5);
    }

    else
    {
      if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v9 = *(v5 + 8 * v8 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }

    sub_23E1FC7CC();
    if (swift_dynamicCastClass())
    {
      MEMORY[0x23EF045A0]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23E1FDE0C();
      }

      sub_23E1FDE3C();
      v6 = v21;
      ++v8;
    }

    else
    {

      ++v8;
    }
  }

  v11 = sub_23DE4D8B0();
  for (i = 0; v11 != i; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x23EF04DD0](i, v6);
    }

    else
    {
      if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v13 = *(v6 + 8 * i + 32);
    }

    v14 = v13;
    if (__OFADD__(i, 1))
    {
      goto LABEL_24;
    }

    [v13 reloadPossibleStates];
  }

  v15 = sub_23E1FDEFC();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v15);
  sub_23E1FDECC();
  v16 = v20;
  v17 = sub_23E1FDEBC();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v16;
  sub_23DEAD4AC(0, 0, v3, &unk_23E2266C8, v18);
}

uint64_t sub_23DEAD110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a1;
  v4[20] = a4;
  sub_23E1FDECC();
  v4[21] = sub_23E1FDEBC();
  v6 = sub_23E1FDE6C();
  v4[22] = v6;
  v4[23] = v5;

  return MEMORY[0x2822009F8](sub_23DEAD1A8, v6, v5);
}

uint64_t sub_23DEAD1A8()
{
  OUTLINED_FUNCTION_4();
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23DEAD2BC;
  OUTLINED_FUNCTION_159_0();
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CD58, &qword_23E2266D0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23DE54D3C;
  v0[13] = &block_descriptor_34;
  v0[14] = v2;
  [v1 updateParameterSummaryIfNeeded_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23DEAD2BC()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 192) = *(v3 + 48);
  OUTLINED_FUNCTION_164();
  v5 = *(v4 + 184);
  v7 = *(v6 + 176);
  if (v8)
  {
    v9 = sub_23DEAD440;
  }

  else
  {
    v9 = sub_23DEAD3D8;
  }

  return MEMORY[0x2822009F8](v9, v7, v5);
}

uint64_t sub_23DEAD3D8()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 152);

  *v1 = *(v0 + 144);
  OUTLINED_FUNCTION_19();

  return v2();
}

uint64_t sub_23DEAD440()
{
  OUTLINED_FUNCTION_4();

  swift_willThrow();
  OUTLINED_FUNCTION_19();

  return v0();
}

uint64_t sub_23DEAD4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CD50, &qword_23E22A9F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  sub_23DEAEF4C(a3, v21 - v9, &qword_27E32CD50, &qword_23E22A9F0);
  v11 = sub_23E1FDEFC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  sub_23E1FB7CC();
  if (EnumTagSinglePayload == 1)
  {
    sub_23DE481FC(v10, &qword_27E32CD50, &qword_23E22A9F0);
  }

  else
  {
    sub_23E1FDEEC();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_23E1FDE6C();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21[0] = a3;
      v17 = sub_23E1FDC9C() + 32;
      sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
      sub_23E1FB7CC();
      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_23DE481FC(v21[0], &qword_27E32CD50, &qword_23E22A9F0);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23DE481FC(a3, &qword_27E32CD50, &qword_23E22A9F0);
  sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

void WFAskLLMAction.iconName.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CC38, &qword_23E2265D8);
  OUTLINED_FUNCTION_25(v1);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_190_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_120_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_18_7();
  v5 = sub_23E1FDBDC();
  v6 = [v0 parameterStateForKey_];

  if (v6)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_91_1();
    v7 = swift_dynamicCastObjCClass();
    v8 = v7;
    if (v7)
    {
      v9 = [v7 value];
      if (v9)
      {
        v10 = v9;
        sub_23E1FDC0C();
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v8 = 0;
  }

  OUTLINED_FUNCTION_197();
}

id sub_23DEADA48(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  OUTLINED_FUNCTION_50();
  v5 = sub_23E1FDBDC();

  return v5;
}

void WFAskLLMAction.iconSymbolName.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CC38, &qword_23E2265D8);
  OUTLINED_FUNCTION_25(v1);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_190_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_120_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_18_7();
  v5 = sub_23E1FDBDC();
  v6 = [v0 parameterStateForKey_];

  if (v6)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_91_1();
    v7 = swift_dynamicCastObjCClass();
    v8 = v7;
    if (v7)
    {
      v9 = [v7 value];
      if (v9)
      {
        v10 = v9;
        sub_23E1FDC0C();
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v8 = 0;
  }

  OUTLINED_FUNCTION_197();
}

id WFAskLLMAction.setParameterState(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_23E1FDBDC();
  v13.receiver = v3;
  v13.super_class = type metadata accessor for WFAskLLMAction();
  v8 = objc_msgSendSuper2(&v13, sel_setParameterState_forKey_, a1, v7);

  v9 = a2 == 0x646F4D4D4C4C4657 && a3 == 0xEA00000000006C65;
  if (v9 || (OUTLINED_FUNCTION_86(), (sub_23E1FE75C() & 1) != 0))
  {
    v10 = &selRef_iconUpdated;
LABEL_7:
    [v3 *v10];
    return v8;
  }

  v12 = a2 == 0xD000000000000016 && 0x800000023E2531B0 == a3;
  if (v12 || (OUTLINED_FUNCTION_86(), (sub_23E1FE75C() & 1) != 0))
  {
    v10 = &selRef_outputDetailsUpdated;
    goto LABEL_7;
  }

  return v8;
}

unint64_t sub_23DEADED0()
{
  result = qword_27E32CC30;
  if (!qword_27E32CC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32CC30);
  }

  return result;
}

void sub_23DEADF24()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_23DE4CE40(isUniquelyReferenced_nonNull_native, *(v1 + 16) + 1, 1, v1);
    *v0 = v3;
  }
}

void sub_23DEADF70(uint64_t result)
{
  v2 = *(*v1 + 24);
  if (result + 1 > (v2 >> 1))
  {
    sub_23DE4CE40(v2 > 1, result + 1, 1, *v1);
    *v1 = v3;
  }
}

uint64_t sub_23DEADFB0(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_21();
  (*v3)(a2);
  return a2;
}

uint64_t sub_23DEAE03C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_23E1FBBDC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = *v2;
  sub_23DEAEFA8(&qword_27E32CD30, 255, MEMORY[0x277CFC118]);
  v25 = a1;
  v9 = sub_23E1FDADC();
  v24 = v8;
  v10 = ~(-1 << *(v8 + 32));
  while (1)
  {
    v11 = v9 & v10;
    if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
    {
      v14 = 1;
      v15 = v23;
      return __swift_storeEnumTagSinglePayload(v15, v14, 1, v4);
    }

    v12 = *(v5 + 72) * v11;
    (*(v5 + 16))(v7, *(v24 + 48) + v12, v4);
    sub_23DEAEFA8(&qword_27E32D8D0, 255, MEMORY[0x277CFC118]);
    v13 = sub_23E1FDB2C();
    (*(v5 + 8))(v7, v4);
    if (v13)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16 = v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v16;
  v26 = *v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_23DF04E9C();
    v18 = v26;
  }

  v19 = *(v18 + 48) + v12;
  v15 = v23;
  (*(v5 + 32))(v23, v19, v4);
  sub_23DEAE2B8(v11);
  v14 = 0;
  *v16 = v26;
  return __swift_storeEnumTagSinglePayload(v15, v14, 1, v4);
}

uint64_t sub_23DEAE2B8(int64_t a1)
{
  v3 = sub_23E1FBBDC();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;
    sub_23E1FB7CC();
    v13 = sub_23E1FE50C();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v37 = (v13 + 1) & v12;
      v15 = *(v4 + 16);
      v14 = v4 + 16;
      v36 = v15;
      v16 = *(v14 + 56);
      v38 = v14;
      v39 = v16;
      v17 = v12;
      v18 = (v14 - 8);
      do
      {
        v19 = v9;
        v20 = v39 * v11;
        v36(v7, *(v8 + 48) + v39 * v11, v3);
        v21 = v8;
        v22 = v17;
        v23 = v21;
        sub_23DEAEFA8(&qword_27E32CD30, 255, MEMORY[0x277CFC118]);
        v24 = sub_23E1FDADC();
        (*v18)(v7, v3);
        v25 = v24 & v22;
        v17 = v22;
        if (a1 >= v37)
        {
          if (v25 < v37 || a1 < v25)
          {
LABEL_20:
            v8 = v23;
            goto LABEL_24;
          }
        }

        else if (v25 < v37 && a1 < v25)
        {
          goto LABEL_20;
        }

        v8 = v23;
        v27 = *(v23 + 48);
        v28 = v39 * a1;
        v29 = v27 + v39 * a1;
        v30 = v27 + v20 + v39;
        if (v39 * a1 < v20 || v29 >= v30)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          a1 = v11;
          goto LABEL_24;
        }

        a1 = v11;
        if (v28 != v20)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v11 = (v11 + 1) & v17;
        v9 = v19;
      }

      while (((*(v19 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v8 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v35;
    ++*(v8 + 36);
  }

  return result;
}

void sub_23DEAE5B0(unint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a2;
  sub_23DEAE814(v4, v5);
  if (v2)
  {

    return;
  }

  if (v7)
  {
    sub_23DE4D8B0();
LABEL_5:

    return;
  }

  v8 = v6;
  v26 = a1;
  v9 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    while (1)
    {
      v10 = v4 >> 62 ? sub_23E1FE6AC() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 == v10)
      {
        goto LABEL_5;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x23EF04DD0](v9, v4);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_41:
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
          break;
        }

        if (v9 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v11 = *(v4 + 8 * v9 + 32);
      }

      v12 = v11;
      v27 = v11;
      sub_23DEAC324(&v27, v5);
      v14 = v13;

      if ((v14 & 1) == 0)
      {
        if (v8 != v9)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x23EF04DD0](v8, v4);
            v16 = MEMORY[0x23EF04DD0](v9, v4);
          }

          else
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_45;
            }

            v17 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v8 >= v17)
            {
              goto LABEL_46;
            }

            if (v9 >= v17)
            {
              goto LABEL_47;
            }

            v18 = *(v4 + 32 + 8 * v9);
            v15 = *(v4 + 32 + 8 * v8);
            v16 = v18;
          }

          v19 = v16;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
          {
            v4 = sub_23DF31CF4();
            v20 = (v4 >> 62) & 1;
          }

          else
          {
            LODWORD(v20) = 0;
          }

          v21 = v4 & 0xFFFFFFFFFFFFFF8;
          v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
          *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v19;

          if ((v4 & 0x8000000000000000) != 0 || v20)
          {
            v4 = sub_23DF31CF4();
            v21 = v4 & 0xFFFFFFFFFFFFFF8;
            if ((v9 & 0x8000000000000000) != 0)
            {
LABEL_39:
              __break(1u);

              return;
            }
          }

          else if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_39;
          }

          if (v9 >= *(v21 + 16))
          {
            goto LABEL_44;
          }

          v23 = v21 + 8 * v9;
          v24 = *(v23 + 32);
          *(v23 + 32) = v15;

          *v26 = v4;
        }

        v25 = __OFADD__(v8++, 1);
        if (v25)
        {
          goto LABEL_43;
        }
      }

      v25 = __OFADD__(v9++, 1);
      if (v25)
      {
        goto LABEL_42;
      }
    }
  }

  __break(1u);
}

void sub_23DEAE814(uint64_t a1, void *a2)
{
  v5 = sub_23DE4D8B0();
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
LABEL_14:

      return;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    v7 = MEMORY[0x23EF04DD0](v6, a1);
LABEL_6:
    v8 = v7;
    v12 = v7;
    sub_23DEAC324(&v12, a2);
    if (v2)
    {

      return;
    }

    v10 = v9;

    if (v10)
    {
      goto LABEL_14;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }

  if (v6 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(a1 + 8 * v6 + 32);
    goto LABEL_6;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_23DEAE918(void *a1)
{
  v2 = [a1 list];

  if (!v2)
  {
    return 0;
  }

  sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
  v3 = sub_23E1FDDEC();

  return v3;
}

uint64_t sub_23DEAE990(void *a1)
{
  v2 = [a1 automationType];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_23E1FDC1C();

  return v3;
}

unint64_t sub_23DEAEBEC()
{
  result = qword_27E32CD20;
  if (!qword_27E32CD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E32C358, &qword_23E224150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32CD20);
  }

  return result;
}

uint64_t sub_23DEAECA4()
{
  OUTLINED_FUNCTION_4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23DE47040;
  v2 = OUTLINED_FUNCTION_50();

  return v3(v2);
}

uint64_t sub_23DEAED50()
{
  OUTLINED_FUNCTION_4();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_23DE47040;

  return sub_23DEAD110(v3, v4, v5, v6);
}

uint64_t sub_23DEAEE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_23DE38DA8(0, &qword_27E32CD60, 0x277D7C0B8);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_16:
  result = sub_23E1FE6AC();
LABEL_6:
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_23DF31CF0(&v7[v6], result - v6, (v5 + 8 * v3));
  if (v8)
  {
    result = sub_23E1FE6AC();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_18;
  }

  v4[2] = result + v9;
LABEL_12:
  if (v3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_23DEAEF4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_49();
  v6(v5);
  return a2;
}

uint64_t sub_23DEAEFA8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    OUTLINED_FUNCTION_20();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_5()
{
  v1 = v0[120];
  __swift_storeEnumTagSinglePayload(v0[116], 0, 1, v0[117]);
  return v1;
}

uint64_t OUTLINED_FUNCTION_11_3()
{
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v2);
  __swift_project_boxed_opaque_existential_0((v1 + 720), *(v1 + 744));

  return sub_23E1FBA4C();
}

uint64_t OUTLINED_FUNCTION_21_4()
{
  __swift_project_boxed_opaque_existential_0((v0 + 440), *(v0 + 464));

  return sub_23E1FBD6C();
}

uint64_t OUTLINED_FUNCTION_30_2(uint64_t a1)
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_31_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v20 + 1328) = v21;
  *(v20 + 1320) = a1;

  sub_23DEA77EC(a1, v20 + 440, v20 + 720, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t OUTLINED_FUNCTION_39_1(uint64_t a1)
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_42_2()
{
  v2 = *(v0 + 744);

  return __swift_project_boxed_opaque_existential_0((v0 + 720), v2);
}

void OUTLINED_FUNCTION_56_2(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 64));
}

uint64_t OUTLINED_FUNCTION_69_2(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, v1);

  return sub_23E1FBA4C();
}

void OUTLINED_FUNCTION_73_1(uint64_t a1@<X8>)
{
  v1[12] = sub_23DEA2740;
  v1[13] = a1;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_79_0()
{
}

uint64_t OUTLINED_FUNCTION_80_0(uint64_t a1)
{

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_84_0()
{
}

uint64_t OUTLINED_FUNCTION_88_1()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 440));

  return __swift_destroy_boxed_opaque_existential_0((v0 + 720));
}

void *OUTLINED_FUNCTION_96_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  v3 = v2[3];

  return __swift_project_boxed_opaque_existential_0(v2, v3);
}

uint64_t OUTLINED_FUNCTION_103_0(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, v1);

  return sub_23E1FBA4C();
}

uint64_t OUTLINED_FUNCTION_104_0()
{

  return sub_23E1FDBDC();
}

void OUTLINED_FUNCTION_105_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

BOOL OUTLINED_FUNCTION_118(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_125()
{
}

uint64_t OUTLINED_FUNCTION_147_0(uint64_t a1, uint64_t a2)
{

  return sub_23E1FE48C();
}

void OUTLINED_FUNCTION_148_0()
{

  sub_23DEA55FC();
}

id OUTLINED_FUNCTION_149_0(id a1)
{
  *(v1 + 1336) = a1;
  *(v1 + 872) = a1;

  return a1;
}

uint64_t OUTLINED_FUNCTION_165_0(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

void OUTLINED_FUNCTION_183(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_184_0()
{
}

id OUTLINED_FUNCTION_185_0(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void OUTLINED_FUNCTION_186_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_187_0()
{

  return MEMORY[0x2821665E8]();
}

uint64_t OUTLINED_FUNCTION_188_0()
{

  return MEMORY[0x282166638]();
}

uint64_t OUTLINED_FUNCTION_189_0()
{
}

uint64_t OUTLINED_FUNCTION_190_0()
{

  return sub_23E1FBC1C();
}

uint64_t OUTLINED_FUNCTION_191_0()
{
}

uint64_t OUTLINED_FUNCTION_192()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_195_0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

id sub_23DEAFCF8()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v78 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E226720;
  v7 = *MEMORY[0x277D7CB18];
  v8 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x800000023E2534E0;
  v9 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = v7;
  v11 = v9;
  v12 = sub_23E1FDCBC("remove|trash|picture", 20);
  v14 = v13;
  sub_23E1FDCBC("remove|trash|picture", 20);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v84 = qword_280DAE278;
  v15 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v16 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v12, v14);
  v18 = v17;
  v19 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v83 = v19;
  *(inited + 80) = v18;
  v20 = *MEMORY[0x277D7CB10];
  *(inited + 104) = v19;
  *(inited + 112) = v20;
  v21 = v20;
  v22 = sub_23E1FDABC();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(inited + 144) = v80;
  *(inited + 120) = v22;
  *(inited + 152) = sub_23E1FDBDC();
  v23 = MEMORY[0x277D839B0];
  *(inited + 160) = 1;
  v24 = *MEMORY[0x277D7CB20];
  *(inited + 184) = v23;
  *(inited + 192) = v24;
  *(inited + 200) = 1;
  v25 = *MEMORY[0x277D7CC18];
  *(inited + 224) = v23;
  *(inited + 232) = v25;
  v79 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v26 = swift_initStackObject();
  v82 = xmmword_23E222340;
  *(v26 + 16) = xmmword_23E222340;
  v27 = *MEMORY[0x277D7CC30];
  *(v26 + 32) = *MEMORY[0x277D7CC30];
  v28 = v24;
  v29 = v25;
  v30 = v27;
  v31 = sub_23E1FDCBC("Deletes the photos passed as input from the device's photo library. This action asks for confirmation before performing the deletion.", 133);
  v33 = v32;
  sub_23E1FDCBC("Deletes the photos passed as input from the device's photo library. This action asks for confirmation before performing the deletion.", 133);
  sub_23E1FC14C();
  v34 = v2;
  v35 = [v84 bundleURL];
  v78[1] = v5;
  v78[2] = v34;
  sub_23E1FBF9C();

  v36 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v31, v33);
  *(v26 + 64) = v83;
  *(v26 + 40) = v37;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v38 = sub_23E1FDABC();
  v39 = v79;
  *(inited + 240) = sub_23DF3BE54(v38);
  v40 = *MEMORY[0x277D7CB28];
  *(inited + 264) = v39;
  *(inited + 272) = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(inited + 280) = &unk_285024108;
  v42 = *MEMORY[0x277D7CB50];
  *(inited + 304) = v41;
  *(inited + 312) = v42;
  v43 = v41;
  v79 = v41;
  *(inited + 320) = 0x736F746F6850;
  *(inited + 328) = 0xE600000000000000;
  v44 = *MEMORY[0x277D7CCC0];
  v45 = MEMORY[0x277D837D0];
  *(inited + 344) = MEMORY[0x277D837D0];
  *(inited + 352) = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v46 = swift_initStackObject();
  *(v46 + 16) = xmmword_23E222350;
  *(v46 + 32) = 0x656C7069746C754DLL;
  *(v46 + 40) = 0xE800000000000000;
  *(v46 + 48) = 1;
  v47 = MEMORY[0x277D839B0];
  *(v46 + 72) = MEMORY[0x277D839B0];
  strcpy((v46 + 80), "ParameterKey");
  *(v46 + 93) = 0;
  *(v46 + 94) = -5120;
  *(v46 + 96) = 0x736F746F6870;
  *(v46 + 104) = 0xE600000000000000;
  *(v46 + 120) = v45;
  *(v46 + 128) = 0x6465726975716552;
  *(v46 + 136) = 0xE800000000000000;
  *(v46 + 144) = 1;
  *(v46 + 168) = v47;
  *(v46 + 176) = 0x7365707954;
  v48 = v47;
  *(v46 + 216) = v43;
  *(v46 + 184) = 0xE500000000000000;
  *(v46 + 192) = &unk_285024138;
  v49 = v40;
  v50 = v42;
  v51 = v44;
  v52 = sub_23E1FDABC();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  *(inited + 360) = v52;
  v54 = *MEMORY[0x277D7CCC8];
  *(inited + 384) = v53;
  *(inited + 392) = v54;
  *(inited + 424) = v48;
  *(inited + 400) = 0;
  v55 = v54;
  *(inited + 432) = sub_23E1FDBDC();
  *(inited + 440) = 0xD000000000000054;
  *(inited + 448) = 0x800000023E2535B0;
  v56 = *MEMORY[0x277D7CB90];
  *(inited + 464) = v45;
  *(inited + 472) = v56;
  v57 = v56;
  v58 = sub_23E1FDCBC("Delete Photos (Action Name)", 27);
  v60 = v59;
  sub_23E1FDCBC("Delete Photos", 13);
  sub_23E1FC14C();
  v61 = [v84 bundleURL];
  sub_23E1FBF9C();

  v62 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v58, v60);
  *(inited + 480) = v63;
  v64 = *MEMORY[0x277D7CDD0];
  *(inited + 504) = v83;
  *(inited + 512) = v64;
  v65 = v64;
  v66 = MEMORY[0x277D837D0];
  v67 = sub_23E1FDABC();
  *(inited + 544) = v80;
  *(inited + 520) = v67;
  *(inited + 552) = sub_23E1FDBDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA70, &qword_23E222780);
  v68 = swift_initStackObject();
  *(v68 + 16) = v82;
  *(v68 + 32) = 0x736F746F6870;
  *(v68 + 40) = 0xE600000000000000;
  sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v69 = swift_allocObject();
  *(v69 + 16) = v82;
  v70 = *MEMORY[0x277D7CDF8];
  *(v69 + 64) = v66;
  *(v69 + 32) = v70;
  *(v69 + 40) = 0xD000000000000019;
  *(v69 + 48) = 0x800000023E24F180;
  _s3__C3KeyVMa_0(0);
  sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v71 = v70;
  v72 = sub_23E1FDABC();
  *(v68 + 48) = sub_23DF3BE9C(v72);
  v73 = sub_23E1FDABC();
  *(inited + 584) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA98, &qword_23E222798);
  *(inited + 560) = v73;
  v74 = *MEMORY[0x277D7CF20];
  *(inited + 592) = *MEMORY[0x277D7CF20];
  *(inited + 624) = v79;
  *(inited + 600) = &unk_2850241A8;
  v75 = v74;
  *(inited + 632) = sub_23E1FDBDC();
  *(inited + 664) = v66;
  *(inited + 640) = 0xD000000000000017;
  *(inited + 648) = 0x800000023E24DC80;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v76 = sub_23E1FDABC();
  return sub_23DF3BF9C(v76);
}

id sub_23DEB070C()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v1 - 8);
  sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  v3 = MEMORY[0x277D7CB18];
  *(inited + 16) = xmmword_23E224420;
  v4 = *v3;
  v5 = MEMORY[0x277D837D0];
  *(inited + 32) = v4;
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x800000023E2536A0;
  v6 = *MEMORY[0x277D7CB80];
  v7 = v5;
  *(inited + 64) = v5;
  *(inited + 72) = v6;
  v8 = v4;
  v9 = v6;
  v10 = sub_23E1FDCBC("finding|matching|searching|regular|expression|regexp", 52);
  v12 = v11;
  sub_23E1FDCBC("finding|matching|searching|regular|expression|regexp", 52);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v13 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v14 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v10, v12);
  v16 = v15;
  v17 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  *(inited + 80) = v16;
  v18 = *MEMORY[0x277D7CB50];
  *(inited + 104) = v17;
  *(inited + 112) = v18;
  v19 = v7;
  *(inited + 144) = v7;
  *(inited + 120) = 1954047316;
  *(inited + 128) = 0xE400000000000000;
  v20 = v18;
  *(inited + 152) = sub_23E1FDBDC();
  *(inited + 184) = MEMORY[0x277D839B0];
  *(inited + 160) = 1;
  *(inited + 192) = sub_23E1FDBDC();
  *(inited + 200) = 0xD000000000000057;
  *(inited + 208) = 0x800000023E253700;
  v21 = *MEMORY[0x277D7CDD0];
  *(inited + 224) = v7;
  *(inited + 232) = v21;
  v22 = v21;
  v23 = sub_23E1FDABC();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(inited + 264) = v40;
  *(inited + 240) = v23;
  *(inited + 272) = sub_23E1FDBDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA70, &qword_23E222780);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_23E222370;
  *(v24 + 32) = 0x646E4970756F7267;
  *(v24 + 40) = 0xEA00000000007865;
  sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_23E222340;
  v26 = *MEMORY[0x277D7CE70];
  *(v25 + 64) = v19;
  *(v25 + 32) = v26;
  strcpy((v25 + 40), "WFGroupIndex");
  *(v25 + 53) = 0;
  *(v25 + 54) = -5120;
  _s3__C3KeyVMa_0(0);
  sub_23DE71CF8(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v27 = v26;
  v28 = sub_23E1FDABC();
  *(v24 + 48) = sub_23DF3BE9C(v28);
  *(v24 + 56) = 1701869940;
  *(v24 + 64) = 0xE400000000000000;
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_23E222370;
  v30 = *MEMORY[0x277D7CE58];
  *(v29 + 32) = *MEMORY[0x277D7CE58];
  v31 = v30;
  *(v29 + 40) = sub_23E1FDABC();
  *(v29 + 64) = v40;
  *(v29 + 72) = v27;
  *(v29 + 104) = v19;
  strcpy((v29 + 80), "WFGetGroupType");
  *(v29 + 95) = -18;
  v32 = sub_23E1FDABC();
  *(v24 + 72) = sub_23DF3BE9C(v32);
  v33 = sub_23E1FDABC();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA98, &qword_23E222798);
  v35 = MEMORY[0x277D7CB78];
  *(inited + 280) = v33;
  v36 = *v35;
  *(inited + 304) = v34;
  *(inited + 312) = v36;
  *(inited + 344) = MEMORY[0x277D839B0];
  *(inited + 320) = 1;
  type metadata accessor for Key(0);
  sub_23DE71CF8(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v37 = v36;
  v38 = sub_23E1FDABC();
  return sub_23DF3BF9C(v38);
}

id sub_23DEB0D88()
{
  v141 = sub_23E1FD89C();
  v138 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v140 = &v130 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v130 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v130 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E2235A0;
  v8 = *MEMORY[0x277D7CB18];
  v9 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x800000023E253790;
  v10 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  v11 = v8;
  v12 = v10;
  v13 = sub_23E1FDCBC("current|photo|lock|home|screen", 30);
  v15 = v14;
  sub_23E1FDCBC("current|photo|lock|home|screen", 30);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v144 = qword_280DAE278;
  v16 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v17 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v13, v15);
  v19 = v18;
  v20 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v143 = v20;
  *(inited + 80) = v19;
  v21 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v20;
  *(inited + 112) = v21;
  v137 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_23E222340;
  v23 = *MEMORY[0x277D7CC30];
  *(v22 + 32) = *MEMORY[0x277D7CC30];
  v24 = v21;
  v25 = v23;
  v26 = sub_23E1FDCBC("Gets all of your Lock Screen wallpapers, and returns them as output so you can use them with other actions.", 107);
  v28 = v27;
  sub_23E1FDCBC("Gets all of your Lock Screen wallpapers, and returns them as output so you can use them with other actions.", 107);
  sub_23E1FC14C();
  v29 = v6;
  v30 = [v144 bundleURL];
  sub_23E1FBF9C();

  v31 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v32 = v29;
  sub_23DE477A0(v26, v28);
  *(v22 + 64) = v143;
  *(v22 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v34 = sub_23E1FDABC();
  v35 = v137;
  *(inited + 120) = sub_23DF3BE54(v34);
  v36 = *MEMORY[0x277D7CB50];
  *(inited + 144) = v35;
  *(inited + 152) = v36;
  *(inited + 160) = 0x657061706C6C6157;
  *(inited + 168) = 0xE900000000000072;
  v37 = *MEMORY[0x277D7CB90];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v37;
  v38 = v36;
  v39 = v37;
  v40 = sub_23E1FDCBC("Get All Wallpapers (Action Name)", 32);
  v42 = v41;
  sub_23E1FDCBC("Get All Wallpapers", 18);
  sub_23E1FC14C();
  v43 = v144;
  v44 = [v144 bundleURL];
  v132 = v3;
  sub_23E1FBF9C();

  v45 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v40, v42);
  *(inited + 200) = v46;
  v47 = *MEMORY[0x277D7CDD0];
  *(inited + 224) = v143;
  *(inited + 232) = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v48 = swift_initStackObject();
  *(v48 + 16) = xmmword_23E222380;
  *(v48 + 32) = 0x75736F6C63736944;
  *(v48 + 40) = 0xEF6C6576654C6572;
  *(v48 + 48) = 0x63696C627550;
  *(v48 + 56) = 0xE600000000000000;
  *(v48 + 72) = MEMORY[0x277D837D0];
  *(v48 + 80) = 0x614E74757074754FLL;
  *(v48 + 88) = 0xEA0000000000656DLL;
  v49 = v47;
  v50 = sub_23E1FDCBC("Wallpapers (Default Output Name)", 32);
  v52 = v51;
  sub_23E1FDCBC("Wallpapers", 10);
  v133 = v32;
  sub_23E1FC14C();
  v53 = [v43 bundleURL];
  sub_23E1FBF9C();

  v54 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v50, v52);
  *(v48 + 96) = v55;
  *(v48 + 120) = v143;
  *(v48 + 128) = 0x7365707954;
  *(v48 + 136) = 0xE500000000000000;
  *(v48 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v48 + 144) = &unk_285024278;
  v56 = MEMORY[0x277D837D0];
  v57 = sub_23E1FDABC();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  *(inited + 240) = v57;
  v59 = *MEMORY[0x277D7CBA0];
  *(inited + 264) = v58;
  *(inited + 272) = v59;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v137 = swift_allocObject();
  *(v137 + 16) = xmmword_23E2235B0;
  v136 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v60 = swift_initStackObject();
  v61 = MEMORY[0x277D7CDF8];
  *(v60 + 16) = xmmword_23E224710;
  v62 = *v61;
  *(v60 + 32) = *v61;
  *(v60 + 40) = 0xD000000000000016;
  *(v60 + 48) = 0x800000023E24FDA0;
  v63 = *MEMORY[0x277D7CE00];
  v64 = v56;
  *(v60 + 64) = v56;
  *(v60 + 72) = v63;
  *(v60 + 80) = 7105601;
  *(v60 + 88) = 0xE300000000000000;
  v65 = *MEMORY[0x277D7CE38];
  *(v60 + 104) = v64;
  *(v60 + 112) = v65;
  v131 = swift_allocObject();
  v134 = xmmword_23E2246F0;
  *(v131 + 16) = xmmword_23E2246F0;
  v66 = v59;
  v67 = v62;
  v68 = v63;
  v69 = v65;
  v70 = sub_23E1FDCBC("All (WFPosterType)", 18);
  v72 = v71;
  sub_23E1FDCBC("All", 3);
  sub_23E1FC14C();
  v142 = inited;
  v73 = v144;
  v74 = [v144 bundleURL];
  sub_23E1FBF9C();

  v75 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v70, v72);
  v76 = v131;
  *(v131 + 32) = v77;
  v78 = sub_23E1FDCBC("Current (WFPosterType)", 22);
  v130 = v79;
  sub_23E1FDCBC("Current", 7);
  sub_23E1FC14C();
  v80 = [v73 bundleURL];
  sub_23E1FBF9C();

  v81 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v78, v130);
  *(v76 + 40) = v82;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D1A0, &qword_23E224C20);
  *(v60 + 120) = v76;
  v84 = *MEMORY[0x277D7CE70];
  *(v60 + 144) = v83;
  *(v60 + 152) = v84;
  strcpy((v60 + 160), "WFPosterType");
  *(v60 + 173) = 0;
  *(v60 + 174) = -5120;
  v85 = *MEMORY[0x277D7CE80];
  *(v60 + 184) = MEMORY[0x277D837D0];
  *(v60 + 192) = v85;
  v86 = v84;
  v87 = v85;
  v88 = sub_23E1FDCBC("Type (WFPosterType)", 19);
  v90 = v89;
  sub_23E1FDCBC("Type", 4);
  sub_23E1FC14C();
  v91 = v144;
  v92 = [v144 bundleURL];
  sub_23E1FBF9C();

  v93 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v88, v90);
  *(v60 + 224) = v143;
  *(v60 + 200) = v94;
  _s3__C3KeyVMa_0(0);
  sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v95 = sub_23E1FDABC();
  v96 = sub_23DF3BE9C(v95);
  v97 = v137;
  *(v137 + 32) = v96;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v99 = v142;
  v142[35] = v97;
  v100 = *MEMORY[0x277D7CB98];
  v99[38] = v98;
  v99[39] = v100;
  v143 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v101 = swift_allocObject();
  *(v101 + 16) = v134;
  v102 = v100;
  v103 = sub_23E1FDCBC("Get ${WFPosterType} wallpapers", 30);
  v105 = v104;
  sub_23E1FDCBC("Get ${WFPosterType} wallpapers", 30);
  sub_23E1FC14C();
  v106 = [v91 bundleURL];
  sub_23E1FBF9C();

  v107 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v103, v105);
  v109 = v108;
  v110 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  *(v101 + 32) = sub_23DF34C40(0xD000000000000011, 0x800000023E253930, v109);
  v111 = sub_23E1FDCBC("Get ${WFPosterType} wallpaper", 29);
  v113 = v112;
  sub_23E1FDCBC("Get ${WFPosterType} wallpaper", 29);
  sub_23E1FC14C();
  v114 = [v144 bundleURL];
  sub_23E1FBF9C();

  v115 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v111, v113);
  v117 = v116;
  v118 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  *(v101 + 40) = sub_23DF34C40(0xD000000000000015, 0x800000023E253970, v117);
  v119 = v143;
  v120 = sub_23DF333E0(v101);
  v121 = v142;
  v142[40] = v120;
  v122 = *MEMORY[0x277D7CF20];
  v121[43] = v119;
  v121[44] = v122;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C2E0, &qword_23E224068);
  v123 = swift_allocObject();
  *(v123 + 16) = xmmword_23E222370;
  *(v123 + 56) = MEMORY[0x277D837D0];
  *(v123 + 32) = 0xD000000000000025;
  *(v123 + 40) = 0x800000023E252930;
  (*(v138 + 104))(v140, *MEMORY[0x277D732F8], v141);
  v124 = sub_23E1FC85C();
  v125 = objc_allocWithZone(v124);
  v126 = v122;
  v127 = sub_23E1FC84C();
  *(v123 + 88) = v124;
  *(v123 + 64) = v127;
  v121[48] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7B0, &qword_23E224B88);
  v121[45] = v123;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v128 = sub_23E1FDABC();
  return sub_23DF3BF9C(v128);
}

uint64_t sub_23DEB1C74()
{
  v0 = sub_23E1FB8FC();
  __swift_allocate_value_buffer(v0, qword_27E32CE10);
  __swift_project_value_buffer(v0, qword_27E32CE10);
  return sub_23E1FB8DC();
}

uint64_t static MusicItem.typeDisplayRepresentation.modify()
{
  if (qword_27E32B910 != -1)
  {
    swift_once();
  }

  v0 = sub_23E1FB8FC();
  v1 = __swift_project_value_buffer(v0, qword_27E32CE10);
  OUTLINED_FUNCTION_17_0(v1);
  return OUTLINED_FUNCTION_28_0();
}

uint64_t sub_23DEB1DC8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23DE49EC0(&qword_27E32B910, MEMORY[0x277CBA3A0], qword_27E32CE10, sub_23DEB1C74);
  swift_beginAccess();
  v3 = sub_23E1FB8FC();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_23DEB1E78(uint64_t a1)
{
  v2 = sub_23DE49EC0(&qword_27E32B910, MEMORY[0x277CBA3A0], qword_27E32CE10, sub_23DEB1C74);
  swift_beginAccess();
  v3 = sub_23E1FB8FC();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t MusicItem.encodedParameters.getter()
{
  type metadata accessor for MusicItem(0);
  v0 = OUTLINED_FUNCTION_49();
  sub_23DE48FA8(v0, v1);
  return OUTLINED_FUNCTION_49();
}

uint64_t type metadata accessor for MusicItem(uint64_t a1)
{
  result = qword_280DAF418;
  if (!qword_280DAF418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicItem.displayRepresentation.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  OUTLINED_FUNCTION_25(v2);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v6);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v7);
  v8 = sub_23E1FBF0C();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15();
  v10 = sub_23E1FDBAC();
  v11 = OUTLINED_FUNCTION_25(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15();
  sub_23E1FDB9C();
  sub_23E1FDB8C();
  sub_23E1FDB7C();
  sub_23E1FDB8C();
  sub_23E1FBEFC();
  v12 = OUTLINED_FUNCTION_9_4();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v8);
  v15 = *(type metadata accessor for MusicItem(0) + 24);
  v16 = sub_23E1FB75C();
  OUTLINED_FUNCTION_12();
  (*(v17 + 16))(v5, v1 + v15, v16);
  OUTLINED_FUNCTION_12_6();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  return sub_23E1FB76C();
}

uint64_t sub_23DEB21D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for MusicItem(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15();
  v8 = (v7 - v6);
  v9 = a1;
  v10 = sub_23DEB4C08(v9);
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    v14 = [v9 icon];
    v43 = a2;
    if (v14 && (sub_23DEE1304(v14), v15 >> 60 != 15))
    {
      sub_23E1FB73C();
    }

    else
    {
      sub_23E1FB74C();
    }

    v20 = [v9 uniqueIdentifier];
    v21 = sub_23E1FDC1C();
    v23 = v22;

    *v8 = v21;
    v8[1] = v23;
    v8[2] = v12;
    v8[3] = v13;
    v24 = [v9 intent];
    v25 = [objc_allocWithZone(MEMORY[0x277D7C638]) initWithIntent_];

    v44 = v25;
    v26 = [objc_allocWithZone(MEMORY[0x277D7C640]) initWithValue_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C2F8, &qword_23E226D70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23E222340;
    strcpy((inited + 32), "WFMediaItems");
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    *(inited + 48) = [v26 serializedRepresentation];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C300, &unk_23E224090);
    OUTLINED_FUNCTION_16_6();
    sub_23E1FDABC();
    v28 = objc_opt_self();
    OUTLINED_FUNCTION_16_6();
    v29 = sub_23E1FDA9C();

    v45 = 0;
    v30 = [v28 archivedDataWithRootObject:v29 requiringSecureCoding:1 error:&v45];

    v31 = v45;
    if (v30)
    {
      v32 = sub_23E1FBFDC();
      v34 = v33;

      v35 = (v8 + *(v4 + 28));
      *v35 = v32;
      v35[1] = v34;
      sub_23DEB3574(v8, v43);
      OUTLINED_FUNCTION_12_6();
      __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
      return sub_23DEB35D8(v8);
    }

    else
    {
      v40 = v31;
      sub_23E1FBECC();

      swift_willThrow();

      v41 = *(v4 + 24);
      sub_23E1FB75C();
      OUTLINED_FUNCTION_12();
      return (*(v42 + 8))(v8 + v41);
    }
  }

  else
  {

    v16 = OUTLINED_FUNCTION_9_4();
    return __swift_storeEnumTagSinglePayload(v16, v17, v18, v4);
  }
}

uint64_t sub_23DEB2598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_23DE4D8A8;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_23DEB2660@<X0>(uint64_t *a1@<X8>)
{
  result = MusicItem.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23DEB2688(uint64_t a1)
{
  v2 = sub_23DEB4C78(&qword_280DAEE48, type metadata accessor for MusicItem, &protocol conformance descriptor for MusicItem);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_23DEB2704(uint64_t a1)
{
  v2 = sub_23DEB4C78(&qword_280DAE430, type metadata accessor for MusicItem, &protocol conformance descriptor for MusicItem);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_23DEB27A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23DE4D8D0;

  return EmptyMusicQuery.entities(for:)();
}

uint64_t sub_23DEB282C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_23DEB4490();
  *v5 = v2;
  v5[1] = sub_23DE4D8A8;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t sub_23DEB28E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23DE47040;

  return MEMORY[0x28210C148](a1, a2, a3);
}

uint64_t sub_23DEB2994()
{
  v0 = sub_23E1FBEEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_23E1FDBCC();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_23E1FBF0C();
  __swift_allocate_value_buffer(v6, qword_27E32CE28);
  __swift_project_value_buffer(v6, qword_27E32CE28);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_23E1FBF1C();
}

uint64_t static PlayMusicTopHitAction.title.modify()
{
  if (qword_27E32B918 != -1)
  {
    swift_once();
  }

  v0 = sub_23E1FBF0C();
  v1 = __swift_project_value_buffer(v0, qword_27E32CE28);
  OUTLINED_FUNCTION_17_0(v1);
  return OUTLINED_FUNCTION_28_0();
}

uint64_t sub_23DEB2C74@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23DE49EC0(&qword_27E32B918, MEMORY[0x277CC9130], qword_27E32CE28, sub_23DEB2994);
  swift_beginAccess();
  v3 = sub_23E1FBF0C();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_23DEB2D24(uint64_t a1)
{
  v2 = sub_23DE49EC0(&qword_27E32B918, MEMORY[0x277CC9130], qword_27E32CE28, sub_23DEB2994);
  swift_beginAccess();
  v3 = sub_23E1FBF0C();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t static PlayMusicTopHitAction.attributionBundleIdentifier.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_29_0(a1);
  v1 = qword_27E32CE40;
  sub_23E1FB7BC();
  return v1;
}

uint64_t static PlayMusicTopHitAction.attributionBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  qword_27E32CE40 = a1;
  qword_27E32CE48 = a2;
}

uint64_t sub_23DEB2EC4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_27E32CE48;
  *a1 = qword_27E32CE40;
  a1[1] = v2;
  return sub_23E1FB7BC();
}

uint64_t sub_23DEB2F14(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_27E32CE40 = v2;
  qword_27E32CE48 = v1;
  sub_23E1FB7BC();
}

uint64_t sub_23DEB2F78()
{
  v0 = sub_23E1FC7FC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C310, &unk_23E225DA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_23E1FC81C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222340;
  v9 = *MEMORY[0x277D7CB68];
  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 32) = v9;
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x800000023E2539D0;
  type metadata accessor for Key(0);
  sub_23DEB4C78(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v10 = v9;
  sub_23E1FDABC();
  (*(v1 + 104))(v3, *MEMORY[0x277D7BF40], v0);
  v11 = objc_allocWithZone(sub_23E1FC83C());
  result = sub_23E1FC80C();
  qword_280DAF2F0 = result;
  return result;
}

uint64_t *sub_23DEB31B8()
{
  if (qword_280DAF2E0 != -1)
  {
    OUTLINED_FUNCTION_0_15(&qword_280DAF2E0);
  }

  return &qword_280DAF2F0;
}

id static PlayMusicTopHitAction.shortcutsMetadata.getter(uint64_t a1)
{
  if (qword_280DAF2E0 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_15(&qword_280DAF2E0);
  }

  OUTLINED_FUNCTION_29_0(a1);
  v1 = qword_280DAF2F0;

  return v1;
}

void static PlayMusicTopHitAction.shortcutsMetadata.setter(uint64_t a1)
{
  if (qword_280DAF2E0 != -1)
  {
    OUTLINED_FUNCTION_0_15(&qword_280DAF2E0);
  }

  swift_beginAccess();
  v2 = qword_280DAF2F0;
  qword_280DAF2F0 = a1;
}

uint64_t static PlayMusicTopHitAction.shortcutsMetadata.modify()
{
  if (qword_280DAF2E0 != -1)
  {
    OUTLINED_FUNCTION_0_15(&qword_280DAF2E0);
  }

  OUTLINED_FUNCTION_17_0(&qword_280DAF2F0);
  return OUTLINED_FUNCTION_28_0();
}

id sub_23DEB3334@<X0>(void *a1@<X8>)
{
  sub_23DEB31B8();
  swift_beginAccess();
  v2 = qword_280DAF2F0;
  *a1 = qword_280DAF2F0;

  return v2;
}

void sub_23DEB3394(id *a1)
{
  v1 = *a1;
  sub_23DEB31B8();
  swift_beginAccess();
  v2 = qword_280DAF2F0;
  qword_280DAF2F0 = v1;
}

uint64_t sub_23DEB3448(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for MusicItem(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DEB3574(a1, v6);
  v8[1] = *a2;
  sub_23E1FB7CC();
  PlayMusicTopHitAction.music.setter(v6);
}

uint64_t PlayMusicTopHitAction.music.setter(uint64_t a1)
{
  v2 = type metadata accessor for MusicItem(0);
  v3 = OUTLINED_FUNCTION_25(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  sub_23DEB3574(a1, v5 - v4);
  sub_23E1FB5EC();
  return sub_23DEB35D8(a1);
}

uint64_t sub_23DEB3574(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DEB35D8(uint64_t a1)
{
  v2 = type metadata accessor for MusicItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*PlayMusicTopHitAction.music.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_23E1FB5CC();
  return sub_23DE4ABC8;
}

uint64_t PlayMusicTopHitAction.init()@<X0>(uint64_t *a1@<X8>)
{
  v30 = a1;
  v1 = sub_23E1FB84C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_15();
  v5 = v4 - v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C218, &unk_23E2262E0);
  v7 = OUTLINED_FUNCTION_25(v6);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CE50, &qword_23E226740);
  OUTLINED_FUNCTION_25(v11);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v15);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - v17;
  v19 = sub_23E1FBF0C();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CE58, &qword_23E226748);
  sub_23E1FBEDC();
  sub_23E1FBEDC();
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v19);
  v21 = type metadata accessor for MusicItem(0);
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v21);
  v22 = sub_23E1FB51C();
  v23 = OUTLINED_FUNCTION_9_4();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v22);
  (*(v2 + 104))(v5, *MEMORY[0x277CBA308], v1);
  OUTLINED_FUNCTION_1_13();
  sub_23DEB4C78(v26, v27, &protocol conformance descriptor for MusicItem);
  result = sub_23E1FB61C();
  *v30 = result;
  return result;
}

uint64_t sub_23DEB39F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23DE47040;

  return PlayMusicTopHitAction.perform()(a1);
}

uint64_t sub_23DEB3A94(uint64_t a1)
{
  v2 = sub_23DEB47C0();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t SuggestedMusicOptionsProvider.fetchResults()()
{
  OUTLINED_FUNCTION_23();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CE50, &qword_23E226740);
  OUTLINED_FUNCTION_25(v1);
  v0[19] = swift_task_alloc();
  v2 = type metadata accessor for MusicItem(0);
  v0[20] = v2;
  v0[21] = *(v2 - 8);
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DEB3BD0, 0, 0);
}

uint64_t sub_23DEB3BD0()
{
  sub_23DEB40B8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = *MEMORY[0x277D7A548];
  v0[24] = *MEMORY[0x277D7A548];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23DEB3D1C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C230, &qword_23E2239F0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23DE4B7DC;
  v0[13] = &block_descriptor_7;
  v0[14] = v3;
  [ObjCClassFromMetadata disambiguationEntriesForCollection:v2 limit:10 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23DEB3D1C()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v1 = v0;
  v2 = *(v0 + 48);
  *(v1 + 200) = v2;
  if (v2)
  {
    v3 = sub_23DE4B754;
  }

  else
  {
    v3 = sub_23DEB3E24;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

char *sub_23DEB3E24()
{
  v1 = *(v0 + 144);

  sub_23E1FDF0C();
  v2 = sub_23DE4B898(v1);

  if (v2)
  {
    v3 = *(v0 + 168);
    result = sub_23DE4D8B0();
    v5 = result;
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v5 == v6)
      {

        goto LABEL_18;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x23EF04DD0](v6, v2);
      }

      else
      {
        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        result = *(v2 + 8 * v6 + 32);
      }

      v8 = (v6 + 1);
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_23DEB21D0(result, *(v0 + 152));
      v9 = *(v0 + 152);
      if (__swift_getEnumTagSinglePayload(v9, 1, *(v0 + 160)) == 1)
      {
        result = sub_23DEB4248(v9);
        ++v6;
      }

      else
      {
        v25 = v3;
        v11 = *(v0 + 176);
        v10 = *(v0 + 184);
        sub_23DEB42B0(v9, v10);
        sub_23DEB42B0(v10, v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_12_6();
          sub_23DE4CB18(v14, v15, v16, v17);
          v7 = v18;
        }

        v3 = v25;
        v12 = *(v7 + 16);
        if (v12 >= *(v7 + 24) >> 1)
        {
          OUTLINED_FUNCTION_12_6();
          sub_23DE4CB18(v19, v20, v21, v22);
          v7 = v23;
        }

        v13 = *(v0 + 176);
        *(v7 + 16) = v12 + 1;
        result = sub_23DEB42B0(v13, v7 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v12);
        v6 = v8;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
LABEL_18:

    v24 = *(v0 + 8);

    return v24(v7);
  }

  return result;
}

unint64_t sub_23DEB40B8()
{
  result = qword_280DAE2F8;
  if (!qword_280DAE2F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DAE2F8);
  }

  return result;
}

uint64_t sub_23DEB4118()
{
  OUTLINED_FUNCTION_23();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_23DE4D8B4;

  return SuggestedMusicOptionsProvider.fetchResults()();
}

uint64_t sub_23DEB41A4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23DE4BE7C;

  return sub_23DEC05E8();
}

uint64_t sub_23DEB4248(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CE50, &qword_23E226740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DEB42B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DEB4314(uint64_t a1)
{
  result = sub_23DEB4C78(&qword_280DAE430, type metadata accessor for MusicItem, &protocol conformance descriptor for MusicItem);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23DEB4490()
{
  result = qword_280DAE4C0;
  if (!qword_280DAE4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE4C0);
  }

  return result;
}

unint64_t sub_23DEB45BC()
{
  result = qword_280DAF040;
  if (!qword_280DAF040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF040);
  }

  return result;
}

unint64_t sub_23DEB4614()
{
  result = qword_280DAF038;
  if (!qword_280DAF038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF038);
  }

  return result;
}

unint64_t sub_23DEB46B4()
{
  result = qword_280DAF050[0];
  if (!qword_280DAF050[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DAF050);
  }

  return result;
}

unint64_t sub_23DEB4708()
{
  result = qword_280DAE3E8;
  if (!qword_280DAE3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E32CE70, qword_23E226A10);
    sub_23DEB4C78(&unk_280DAEE78, type metadata accessor for MusicItem, &protocol conformance descriptor for MusicItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE3E8);
  }

  return result;
}

unint64_t sub_23DEB47C0()
{
  result = qword_280DAF2C8;
  if (!qword_280DAF2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF2C8);
  }

  return result;
}

unint64_t sub_23DEB4818()
{
  result = qword_280DAF2C0;
  if (!qword_280DAF2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF2C0);
  }

  return result;
}

unint64_t sub_23DEB4870()
{
  result = qword_280DAF2D8;
  if (!qword_280DAF2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF2D8);
  }

  return result;
}

unint64_t sub_23DEB49BC(uint64_t a1)
{
  result = sub_23DEB49E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23DEB49E4()
{
  result = qword_27E32CE90;
  if (!qword_27E32CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32CE90);
  }

  return result;
}

unint64_t sub_23DEB4A3C()
{
  result = qword_280DAE458;
  if (!qword_280DAE458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE458);
  }

  return result;
}

uint64_t sub_23DEB4AB8(uint64_t a1)
{
  result = sub_23E1FB75C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *sub_23DEB4B5C(_BYTE *result, int a2, int a3)
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

uint64_t sub_23DEB4C08(void *a1)
{
  v2 = [a1 subtitle];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_23E1FDC1C();

  return v3;
}

uint64_t sub_23DEB4C78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_0_15(uint64_t a1)
{

  return swift_once();
}

id sub_23DEB4D90()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v82 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E224420;
  v5 = *MEMORY[0x277D7CB18];
  v6 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x800000023E253A30;
  v7 = *MEMORY[0x277D7CB10];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = v5;
  v9 = v7;
  v10 = sub_23E1FDABC();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(inited + 80) = v10;
  v12 = *MEMORY[0x277D7CB80];
  *(inited + 104) = v11;
  *(inited + 112) = v12;
  v13 = v12;
  v14 = sub_23E1FDCBC("keychain", 8);
  v16 = v15;
  sub_23E1FDCBC("keychain", 8);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v86 = qword_280DAE278;
  v17 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v18 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v14, v16);
  v20 = v19;
  v21 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v85 = v21;
  *(inited + 120) = v20;
  v22 = *MEMORY[0x277D7CC18];
  *(inited + 144) = v21;
  *(inited + 152) = v22;
  v83 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_23E222340;
  v24 = v3;
  v25 = *MEMORY[0x277D7CC30];
  *(v23 + 32) = *MEMORY[0x277D7CC30];
  v26 = v22;
  v27 = v25;
  v28 = sub_23E1FDCBC("Opens Passwords and searches for the given text.", 48);
  v30 = v29;
  sub_23E1FDCBC("Opens Passwords and searches for the given text.", 48);
  sub_23E1FC14C();
  v31 = [v86 bundleURL];
  sub_23E1FBF9C();

  v32 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v33 = v28;
  v34 = v24;
  sub_23DE477A0(v33, v30);
  v35 = v85;
  *(v23 + 64) = v85;
  *(v23 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v37 = sub_23E1FDABC();
  v38 = v83;
  *(inited + 160) = sub_23DF3BE54(v37);
  v39 = *MEMORY[0x277D7CB28];
  *(inited + 184) = v38;
  *(inited + 192) = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(inited + 200) = &unk_2850242E8;
  v41 = *MEMORY[0x277D7CB90];
  *(inited + 224) = v40;
  *(inited + 232) = v41;
  v42 = v39;
  v43 = v41;
  v44 = sub_23E1FDCBC("Search in Passwords (Action Name)", 33);
  v46 = v45;
  sub_23E1FDCBC("Search in Passwords", 19);
  v82[1] = v34;
  sub_23E1FC14C();
  v47 = [v86 bundleURL];
  sub_23E1FBF9C();

  v48 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v44, v46);
  *(inited + 240) = v49;
  v50 = *MEMORY[0x277D7CBA0];
  *(inited + 264) = v35;
  *(inited + 272) = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_23E2235B0;
  v82[2] = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_23E222380;
  v52 = *MEMORY[0x277D7CDF8];
  *(v51 + 32) = *MEMORY[0x277D7CDF8];
  *(v51 + 40) = 0xD000000000000014;
  *(v51 + 48) = 0x800000023E24EAF0;
  v53 = *MEMORY[0x277D7CE70];
  v54 = MEMORY[0x277D837D0];
  *(v51 + 64) = MEMORY[0x277D837D0];
  *(v51 + 72) = v53;
  *(v51 + 80) = 0xD000000000000019;
  *(v51 + 88) = 0x800000023E253AE0;
  v55 = *MEMORY[0x277D7CE80];
  *(v51 + 104) = v54;
  *(v51 + 112) = v55;
  v56 = v50;
  v57 = v52;
  v58 = v53;
  v59 = v55;
  v60 = sub_23E1FDCBC("Text (Parameter Label)", 22);
  v62 = v61;
  sub_23E1FDCBC("Text", 4);
  sub_23E1FC14C();
  v63 = [v86 bundleURL];
  sub_23E1FBF9C();

  v64 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v60, v62);
  *(v51 + 144) = v85;
  *(v51 + 120) = v65;
  _s3__C3KeyVMa_0(0);
  sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v66 = sub_23E1FDABC();
  v67 = sub_23DF3BE9C(v66);
  v68 = v83;
  *(v83 + 32) = v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  *(inited + 280) = v68;
  v70 = *MEMORY[0x277D7CB98];
  *(inited + 304) = v69;
  *(inited + 312) = v70;
  v71 = v70;
  v72 = sub_23E1FDCBC("Search ${WFShowPasswordsSearchTerm} in Passwords", 48);
  v74 = v73;
  sub_23E1FDCBC("Search ${WFShowPasswordsSearchTerm} in Passwords", 48);
  sub_23E1FC14C();
  v75 = [v86 bundleURL];
  sub_23E1FBF9C();

  v76 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v72, v74);
  v78 = v77;
  v79 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  *(inited + 344) = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 320) = v79;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v80 = sub_23E1FDABC();
  return sub_23DF3BF9C(v80);
}

uint64_t sub_23DEB5660(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_23E1FBE6C();
  v2[7] = v3;
  OUTLINED_FUNCTION_25(v3);
  v2[8] = OUTLINED_FUNCTION_42();
  v4 = sub_23E1FBE7C();
  v2[9] = v4;
  OUTLINED_FUNCTION_8(v4);
  v2[10] = v5;
  v2[11] = OUTLINED_FUNCTION_42();
  v6 = sub_23E1FD11C();
  v2[12] = v6;
  OUTLINED_FUNCTION_8(v6);
  v2[13] = v7;
  v2[14] = OUTLINED_FUNCTION_42();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CEA8, &qword_23E226D90);
  OUTLINED_FUNCTION_25(v8);
  v2[15] = OUTLINED_FUNCTION_42();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CEB0, &qword_23E226D98);
  v2[16] = v9;
  OUTLINED_FUNCTION_25(v9);
  v2[17] = OUTLINED_FUNCTION_42();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CEB8, &qword_23E226DA0);
  v2[18] = v10;
  OUTLINED_FUNCTION_8(v10);
  v2[19] = v11;
  v2[20] = OUTLINED_FUNCTION_42();
  v12 = sub_23E1FD03C();
  v2[21] = v12;
  OUTLINED_FUNCTION_8(v12);
  v2[22] = v13;
  v2[23] = OUTLINED_FUNCTION_42();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CEC0, &qword_23E226DA8);
  OUTLINED_FUNCTION_25(v14);
  v2[24] = OUTLINED_FUNCTION_42();
  v15 = sub_23E1FD17C();
  v2[25] = v15;
  OUTLINED_FUNCTION_8(v15);
  v2[26] = v16;
  v2[27] = OUTLINED_FUNCTION_42();
  v17 = sub_23E1FDEFC();
  OUTLINED_FUNCTION_25(v17);
  v2[28] = OUTLINED_FUNCTION_42();
  v18 = sub_23E1FD19C();
  v2[29] = v18;
  OUTLINED_FUNCTION_8(v18);
  v2[30] = v19;
  v2[31] = OUTLINED_FUNCTION_42();
  v20 = sub_23E1FBFBC();
  v2[32] = v20;
  OUTLINED_FUNCTION_8(v20);
  v2[33] = v21;
  v2[34] = OUTLINED_FUNCTION_42();
  v22 = sub_23E1FC1DC();
  OUTLINED_FUNCTION_25(v22);
  v2[35] = OUTLINED_FUNCTION_42();

  return MEMORY[0x2822009F8](sub_23DEB59D0, 0, 0);
}

uint64_t sub_23DEB59D0()
{
  v1 = v0[34];
  v2 = v0[33];
  v25 = v0[32];
  v3 = v0[5];
  sub_23E1FD14C();
  sub_23E1FC19C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CEC8, &qword_23E226DB0);
  v4 = sub_23E1FD0EC();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_23E222340;
  (*(v5 + 104))(v7 + v6, *MEMORY[0x277CDC998], v4);
  sub_23DF20F38();
  v8 = sub_23E1FD12C();
  v0[36] = v8;
  (*(v2 + 16))(v1, v3, v25);
  v9 = objc_allocWithZone(MEMORY[0x277CB8398]);
  v10 = sub_23DEB6838(v1);
  v0[37] = v10;
  v11 = v10;
  v13 = v0[30];
  v12 = v0[31];
  v26 = v0[29];
  v15 = v0[26];
  v14 = v0[27];
  v16 = v0[24];
  v17 = v0[25];
  sub_23E1FDEDC();
  (*(v15 + 104))(v14, *MEMORY[0x277CDCA58], v17);
  sub_23E1FD18C();
  sub_23E1FD1AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CED0, &qword_23E226DB8);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_23E222340;
  v19 = sub_23DEB6984(&qword_27E32CED8, MEMORY[0x277CDC9F0], MEMORY[0x277CDC9E8]);
  *(v18 + 32) = v8;
  *(v18 + 40) = v19;
  (*(v13 + 16))(v16, v12, v26);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v26);
  sub_23E1FD1CC();
  swift_allocObject();
  v20 = v11;
  sub_23E1FB7CC();
  v21 = sub_23E1FD1BC();
  v22 = swift_task_alloc();
  v0[38] = v22;
  *v22 = v0;
  v22[1] = sub_23DEB5DF8;
  v23 = v0[24];

  return MEMORY[0x28212BBA0](v20, v18, v23, v21, 1, 0, 0);
}

uint64_t sub_23DEB5DF8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 312) = a1;
  *(v3 + 320) = v1;

  if (v1)
  {
    v4 = sub_23DEB65EC;
  }

  else
  {
    v4 = sub_23DEB5F0C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23DEB5F0C()
{
  v1 = *(v0 + 296);
  v2 = [v1 processingFormat];
  [v2 sampleRate];
  v4 = v3;

  v5 = [v1 length];
  v6 = v5 / v4;
  if (COERCE__INT64(fabs(v6)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    return MEMORY[0x282200310](v5);
  }

  v7 = v5;
  [*(v0 + 48) setTotalUnitCount_];
  sub_23E1FCB9C();
  v8 = sub_23E1FD02C();
  v9 = sub_23E1FE1AC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134218496;
    *(v10 + 4) = v4;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v7;
    *(v10 + 22) = 2048;
    *(v10 + 24) = v6;
    _os_log_impl(&dword_23DE30000, v8, v9, "Transcribing audio file with sample rate: %f, number of samples: %lld, duration (secs): %f", v10, 0x20u);
    MEMORY[0x23EF074C0](v10, -1, -1);
  }

  v12 = *(v0 + 176);
  v11 = *(v0 + 184);
  v13 = *(v0 + 168);

  (*(v12 + 8))(v11, v13);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  sub_23E1FD13C();
  *(v0 + 328) = swift_getOpaqueTypeConformance2();
  sub_23E1FDF3C();
  swift_getAssociatedConformanceWitness();
  v14 = swift_task_alloc();
  *(v0 + 336) = v14;
  *v14 = v0;
  v5 = OUTLINED_FUNCTION_1_14(v14);

  return MEMORY[0x282200310](v5);
}

uint64_t sub_23DEB617C()
{

  if (v0)
  {

    v1 = sub_23DEB66FC;
  }

  else
  {
    v1 = sub_23DEB6294;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_23DEB6294()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) != 1)
  {
    (*(*(v0 + 104) + 32))(*(v0 + 112), v1, v2);
    if ((sub_23E1FD15C() & 1) == 0)
    {
      goto LABEL_10;
    }

    MEMORY[0x23EF038E0]();
    v14 = sub_23E1FE35C();
    if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v15 > -9.22337204e18)
    {
      if (v15 < 9.22337204e18)
      {
        v17 = *(v0 + 80);
        v16 = *(v0 + 88);
        v18 = *(v0 + 72);
        [*(v0 + 48) setCompletedUnitCount_];
        sub_23E1FD10C();
        sub_23E1FBE5C();
        (*(v17 + 8))(v16, v18);
        sub_23DEB6984(&qword_27E32CEE0, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
        v19 = sub_23E1FDD6C();
        MEMORY[0x23EF044F0](v19);

LABEL_10:
        (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
        swift_getAssociatedConformanceWitness();
        v20 = swift_task_alloc();
        *(v0 + 336) = v20;
        *v20 = v0;
        v14 = OUTLINED_FUNCTION_1_14(v20);

        return MEMORY[0x282200310](v14);
      }

LABEL_15:
      __break(1u);
      return MEMORY[0x282200310](v14);
    }

    __break(1u);
    goto LABEL_15;
  }

  v3 = *(v0 + 296);
  v4 = *(v0 + 240);
  v5 = *(v0 + 248);
  v6 = *(v0 + 232);
  v7 = *(v0 + 152);
  v8 = *(v0 + 160);
  v9 = *(v0 + 144);

  (*(v7 + 8))(v8, v9);
  (*(v4 + 8))(v5, v6);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);

  v12 = *(v0 + 8);

  return v12(v10, v11);
}

uint64_t sub_23DEB65EC()
{
  v1 = v0[37];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];

  (*(v3 + 8))(v2, v4);
  OUTLINED_FUNCTION_2_12();

  v5 = v0[1];

  return v5();
}

uint64_t sub_23DEB66FC()
{
  v1 = v0[37];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[18];

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  OUTLINED_FUNCTION_2_12();

  v8 = v0[1];

  return v8();
}

id sub_23DEB6838(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_23E1FBF6C();
  v13[0] = 0;
  v5 = [v2 initForReading:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_23E1FBFBC();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_23E1FBECC();

    swift_willThrow();
    v11 = sub_23E1FBFBC();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t sub_23DEB6984(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_2_12()
{
}

id sub_23DEB6A7C()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v1 - 8);
  sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222360;
  v3 = *MEMORY[0x277D7CB18];
  v4 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x800000023E253BA0;
  v5 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v4;
  *(inited + 72) = v5;
  v6 = v3;
  v7 = v5;
  v8 = sub_23E1FDCBC("text|clipboard|copy|paste|contents|of", 37);
  v10 = v9;
  sub_23E1FDCBC("text|clipboard|copy|paste|contents|of", 37);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v79 = qword_280DAE278;
  v11 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v12 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v8, v10);
  v14 = v13;
  v78 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  *(inited + 80) = v14;
  v15 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v78;
  *(inited + 112) = v15;
  v76 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_23E222340;
  v17 = *MEMORY[0x277D7CC30];
  *(v16 + 32) = *MEMORY[0x277D7CC30];
  v18 = v15;
  v19 = v17;
  v20 = sub_23E1FDCBC("Passes the contents of the clipboard to the next action.", 56);
  v22 = v21;
  sub_23E1FDCBC("Passes the contents of the clipboard to the next action.", 56);
  sub_23E1FC14C();
  v23 = [v79 bundleURL];
  sub_23E1FBF9C();

  v24 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v20, v22);
  *(v16 + 64) = v78;
  *(v16 + 40) = v25;
  type metadata accessor for DescriptionKey(0);
  sub_23DE39F84(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v26 = sub_23E1FDABC();
  *(inited + 120) = sub_23DF3BE54(v26);
  v27 = *MEMORY[0x277D7CB28];
  *(inited + 144) = v76;
  *(inited + 152) = v27;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  v28 = MEMORY[0x277D7CB48];
  *(inited + 160) = &unk_285024318;
  v29 = *v28;
  *(inited + 184) = v77;
  *(inited + 192) = v29;
  *(inited + 200) = 1953392980;
  *(inited + 208) = 0xE400000000000000;
  v30 = *MEMORY[0x277D7CB60];
  v31 = MEMORY[0x277D837D0];
  *(inited + 224) = MEMORY[0x277D837D0];
  *(inited + 232) = v30;
  v32 = MEMORY[0x277D7CB58];
  strcpy((inited + 240), "clipboard.fill");
  *(inited + 255) = -18;
  v33 = *v32;
  *(inited + 264) = v31;
  *(inited + 272) = v33;
  *(inited + 280) = 1702194242;
  *(inited + 288) = 0xE400000000000000;
  v34 = *MEMORY[0x277D7CB90];
  *(inited + 304) = v31;
  *(inited + 312) = v34;
  v35 = v27;
  v36 = v29;
  v37 = v30;
  v38 = v33;
  v39 = v34;
  v40 = sub_23E1FDCBC("Get Clipboard (Action Name)", 27);
  v42 = v41;
  sub_23E1FDCBC("Get Clipboard", 13);
  sub_23E1FC14C();
  v43 = [v79 bundleURL];
  sub_23E1FBF9C();

  v44 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v40, v42);
  *(inited + 320) = v45;
  v46 = *MEMORY[0x277D7CDD0];
  *(inited + 344) = v78;
  *(inited + 352) = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v47 = swift_initStackObject();
  *(v47 + 16) = xmmword_23E222380;
  *(v47 + 32) = 0x656C7069746C754DLL;
  *(v47 + 40) = 0xE800000000000000;
  v48 = MEMORY[0x277D839B0];
  *(v47 + 48) = 1;
  *(v47 + 72) = v48;
  *(v47 + 80) = 0x614E74757074754FLL;
  *(v47 + 88) = 0xEA0000000000656DLL;
  v49 = v46;
  v50 = sub_23E1FDCBC("Clipboard (Default Output Name)", 31);
  v52 = v51;
  sub_23E1FDCBC("Clipboard", 9);
  sub_23E1FC14C();
  v53 = [v79 bundleURL];
  sub_23E1FBF9C();

  v54 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v50, v52);
  *(v47 + 96) = v55;
  *(v47 + 120) = v78;
  *(v47 + 128) = 0x7365707954;
  *(v47 + 168) = v77;
  *(v47 + 136) = 0xE500000000000000;
  *(v47 + 144) = &unk_285024348;
  v56 = sub_23E1FDABC();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  *(inited + 360) = v56;
  v58 = *MEMORY[0x277D7CB98];
  *(inited + 384) = v57;
  *(inited + 392) = v58;
  v59 = v58;
  v60 = sub_23E1FDCBC("Get clipboard (Parameter Summary)", 33);
  v62 = v61;
  sub_23E1FDCBC("Get clipboard", 13);
  sub_23E1FC14C();
  v63 = [v79 bundleURL];
  sub_23E1FBF9C();

  v64 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v60, v62);
  v66 = v65;
  v67 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v68 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 400) = v67;
  v69 = *MEMORY[0x277D7CF20];
  *(inited + 424) = v68;
  *(inited + 432) = v69;
  v70 = MEMORY[0x277D7CBB8];
  *(inited + 440) = &unk_285024378;
  v71 = *v70;
  *(inited + 464) = v77;
  *(inited + 472) = v71;
  *(inited + 504) = MEMORY[0x277D839B0];
  *(inited + 480) = 1;
  type metadata accessor for Key(0);
  sub_23DE39F84(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v72 = v69;
  v73 = v71;
  v74 = sub_23E1FDABC();
  return sub_23DF3BF9C(v74);
}

id sub_23DEB736C()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v100 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222330;
  v7 = *MEMORY[0x277D7CB18];
  v8 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x800000023E253D00;
  v9 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = v7;
  v11 = v9;
  v12 = sub_23E1FDCBC("date|event|show|reveal", 22);
  v14 = v13;
  sub_23E1FDCBC("date|event|show|reveal", 22);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v108 = qword_280DAE278;
  v15 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v16 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v12, v14);
  v18 = v17;
  v19 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v107 = v19;
  *(inited + 80) = v18;
  v20 = *MEMORY[0x277D7CB10];
  *(inited + 104) = v19;
  *(inited + 112) = v20;
  v21 = v20;
  v22 = sub_23E1FDABC();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(inited + 120) = v22;
  v24 = *MEMORY[0x277D7CC18];
  *(inited + 144) = v23;
  *(inited + 152) = v24;
  v104 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_23E222340;
  v26 = v5;
  v27 = *MEMORY[0x277D7CC30];
  *(v25 + 32) = *MEMORY[0x277D7CC30];
  v28 = v24;
  v29 = v27;
  v30 = sub_23E1FDCBC("Shows the date or calendar event passed as input in the Calendar app.", 69);
  v32 = v31;
  sub_23E1FDCBC("Shows the date or calendar event passed as input in the Calendar app.", 69);
  v100[1] = v26;
  sub_23E1FC14C();
  v33 = [v108 bundleURL];
  sub_23E1FBF9C();

  v34 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v30, v32);
  v35 = v107;
  *(v25 + 64) = v107;
  *(v25 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v37 = sub_23E1FDABC();
  v38 = v104;
  *(inited + 160) = sub_23DF3BE54(v37);
  v39 = *MEMORY[0x277D7CCC0];
  *(inited + 184) = v38;
  *(inited + 192) = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v40 = swift_initStackObject();
  v101 = xmmword_23E222350;
  *(v40 + 16) = xmmword_23E222350;
  *(v40 + 32) = 0x656C7069746C754DLL;
  *(v40 + 40) = 0xE800000000000000;
  v41 = MEMORY[0x277D839B0];
  *(v40 + 48) = 0;
  *(v40 + 72) = v41;
  strcpy((v40 + 80), "ParameterKey");
  *(v40 + 93) = 0;
  *(v40 + 94) = -5120;
  *(v40 + 96) = 0x746E6576454657;
  *(v40 + 104) = 0xE700000000000000;
  *(v40 + 120) = MEMORY[0x277D837D0];
  *(v40 + 128) = 0x6465726975716552;
  *(v40 + 136) = 0xE800000000000000;
  *(v40 + 144) = 1;
  *(v40 + 168) = v41;
  *(v40 + 176) = 0x7365707954;
  *(v40 + 184) = 0xE500000000000000;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v40 + 216) = v104;
  *(v40 + 192) = &unk_2850243E8;
  v42 = v39;
  v43 = sub_23E1FDABC();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  *(inited + 200) = v43;
  v45 = *MEMORY[0x277D7CCC8];
  *(inited + 224) = v44;
  *(inited + 232) = v45;
  *(inited + 240) = 1;
  v46 = *MEMORY[0x277D7CB88];
  *(inited + 264) = v41;
  *(inited + 272) = v46;
  *(inited + 280) = 1;
  v47 = *MEMORY[0x277D7CB90];
  *(inited + 304) = v41;
  *(inited + 312) = v47;
  v48 = v45;
  v49 = v46;
  v50 = v47;
  v51 = sub_23E1FDCBC("Open in Calendar (Action Name)", 30);
  v53 = v52;
  sub_23E1FDCBC("Open in Calendar", 16);
  sub_23E1FC14C();
  v54 = [v108 bundleURL];
  v106 = v2;
  sub_23E1FBF9C();

  v55 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v51, v53);
  *(inited + 320) = v56;
  v57 = *MEMORY[0x277D7CBA0];
  *(inited + 344) = v35;
  *(inited + 352) = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v103 = swift_allocObject();
  *(v103 + 16) = xmmword_23E2235B0;
  v102 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v58 = swift_initStackObject();
  *(v58 + 16) = v101;
  v59 = *MEMORY[0x277D7CDF8];
  *(v58 + 32) = *MEMORY[0x277D7CDF8];
  *(v58 + 40) = 0xD000000000000019;
  *(v58 + 48) = 0x800000023E24F180;
  v60 = *MEMORY[0x277D7CE70];
  v61 = MEMORY[0x277D837D0];
  *(v58 + 64) = MEMORY[0x277D837D0];
  *(v58 + 72) = v60;
  *(v58 + 80) = 0x746E6576454657;
  *(v58 + 88) = 0xE700000000000000;
  v62 = *MEMORY[0x277D7CE80];
  *(v58 + 104) = v61;
  *(v58 + 112) = v62;
  v63 = v57;
  v64 = v59;
  v65 = v60;
  v66 = v62;
  *&v101 = sub_23E1FDCBC("Event (WFEvent)", 15);
  v68 = v67;
  sub_23E1FDCBC("Event", 5);
  sub_23E1FC14C();
  v69 = v108;
  v70 = [v108 bundleURL];
  sub_23E1FBF9C();

  v71 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v101, v68);
  *(v58 + 120) = v72;
  v73 = *MEMORY[0x277D7CEA8];
  v74 = v107;
  *(v58 + 144) = v107;
  *(v58 + 152) = v73;
  v75 = v73;
  *&v101 = sub_23E1FDCBC("Event (WFEvent)", 15);
  v77 = v76;
  sub_23E1FDCBC("Event", 5);
  sub_23E1FC14C();
  v78 = [v69 bundleURL];
  sub_23E1FBF9C();

  v79 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v101, v77);
  *(v58 + 184) = v74;
  *(v58 + 160) = v80;
  _s3__C3KeyVMa_0(0);
  sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v81 = sub_23E1FDABC();
  v82 = sub_23DF3BE9C(v81);
  v83 = v103;
  *(v103 + 32) = v82;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  *(inited + 360) = v83;
  v85 = *MEMORY[0x277D7CB98];
  *(inited + 384) = v84;
  *(inited + 392) = v85;
  v86 = v85;
  v87 = sub_23E1FDCBC("Open ${WFEvent} in Calendar (Parameter Summary)", 47);
  v89 = v88;
  sub_23E1FDCBC("Open ${WFEvent} in Calendar", 27);
  sub_23E1FC14C();
  v90 = [v108 bundleURL];
  sub_23E1FBF9C();

  v91 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v87, v89);
  v93 = v92;
  v94 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v95 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 400) = v94;
  v96 = *MEMORY[0x277D7CF20];
  *(inited + 424) = v95;
  *(inited + 432) = v96;
  *(inited + 464) = v104;
  *(inited + 440) = &unk_285024438;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v97 = v96;
  v98 = sub_23E1FDABC();
  return sub_23DF3BF9C(v98);
}

void static ControlCenterOperation.typeDisplayRepresentation.getter()
{
  OUTLINED_FUNCTION_90();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v1);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_7();
  v3 = sub_23E1FBEEC();
  OUTLINED_FUNCTION_6_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7_4();
  v7 = sub_23E1FC1DC();
  v8 = OUTLINED_FUNCTION_25(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  v9 = OUTLINED_FUNCTION_11_4();
  v10 = OUTLINED_FUNCTION_25(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_9_5();
  v11 = sub_23E1FBF0C();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v5 + 104))(v0, *MEMORY[0x277CC9110], v3);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v11);
  sub_23E1FB8EC();
  OUTLINED_FUNCTION_76();
}

void static ControlCenterOperation.caseDisplayRepresentations.getter()
{
  OUTLINED_FUNCTION_90();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_15_7(v2, v47[0]);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v3);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v4);
  v53 = v47 - v5;
  v6 = sub_23E1FBEEC();
  v56 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  v10 = v9 - v8;
  v11 = sub_23E1FC1DC();
  v12 = OUTLINED_FUNCTION_25(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  v13 = OUTLINED_FUNCTION_11_4();
  v14 = OUTLINED_FUNCTION_25(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15();
  v17 = v16 - v15;
  v55 = sub_23E1FBF0C();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CEE8, &qword_23E226DC0);
  v19 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CEF0, &qword_23E226DC8) - 8);
  v20 = *v19;
  v57 = *(*v19 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v54 = v22;
  *(v22 + 16) = xmmword_23E222380;
  v23 = (v22 + v21);
  v52 = v19[14];
  *v23 = 0;
  v47[1] = v17;
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v24 = *MEMORY[0x277CC9110];
  v58 = *(v7 + 104);
  v59 = v7 + 104;
  v48 = v10;
  v51 = v24;
  v58(v10, v24, v6);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  v25 = v55;
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v55);
  v49 = sub_23E1FB75C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  v50 = v23;
  OUTLINED_FUNCTION_12_7();
  v52 = v19[14];
  v23[v57] = 1;
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v33 = v48;
  v58(v48, v24, v56);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v25);
  OUTLINED_FUNCTION_18_0();
  v37 = v49;
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v49);
  OUTLINED_FUNCTION_12_7();
  v50[2 * v57] = 2;
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v58(v33, v51, v56);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v55);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v37);
  OUTLINED_FUNCTION_12_7();
  sub_23E1FB77C();
  sub_23DEB8554();
  sub_23E1FDABC();
  OUTLINED_FUNCTION_76();
}

unint64_t sub_23DEB8554()
{
  result = qword_280DAE908;
  if (!qword_280DAE908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE908);
  }

  return result;
}

ActionKit::ControlCenterOperation_optional __swiftcall ControlCenterOperation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23E1FE6EC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ControlCenterOperation.rawValue.getter()
{
  v1 = 1701079400;
  if (*v0 != 1)
  {
    v1 = 0x656C67676F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 2003789939;
  }
}

unint64_t sub_23DEB8668()
{
  result = qword_280DAE900;
  if (!qword_280DAE900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE900);
  }

  return result;
}

uint64_t sub_23DEB86E0@<X0>(uint64_t *a1@<X8>)
{
  result = ControlCenterOperation.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_23DEB8760()
{
  result = qword_280DAE940;
  if (!qword_280DAE940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE940);
  }

  return result;
}

unint64_t sub_23DEB87B8()
{
  result = qword_280DAE918;
  if (!qword_280DAE918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE918);
  }

  return result;
}

unint64_t sub_23DEB8810()
{
  result = qword_280DAE8F8;
  if (!qword_280DAE8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE8F8);
  }

  return result;
}

unint64_t sub_23DEB8868()
{
  result = qword_280DAE928;
  if (!qword_280DAE928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE928);
  }

  return result;
}

unint64_t sub_23DEB88BC()
{
  result = qword_280DAE920;
  if (!qword_280DAE920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE920);
  }

  return result;
}

unint64_t sub_23DEB8910()
{
  result = qword_280DAE938;
  if (!qword_280DAE938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE938);
  }

  return result;
}

unint64_t sub_23DEB8968()
{
  result = qword_280DAE930;
  if (!qword_280DAE930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE930);
  }

  return result;
}

unint64_t sub_23DEB8A10()
{
  result = qword_27E32CF08;
  if (!qword_27E32CF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32CF08);
  }

  return result;
}

uint64_t sub_23DEB8A64(uint64_t a1)
{
  v2 = sub_23DEB8A10();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_23DEB8AB4()
{
  result = qword_280DAE910;
  if (!qword_280DAE910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE910);
  }

  return result;
}

unint64_t sub_23DEB8B0C()
{
  result = qword_280DAE8F0;
  if (!qword_280DAE8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE8F0);
  }

  return result;
}

uint64_t sub_23DEB8B68(uint64_t a1)
{
  v2 = sub_23DEB8968();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_23DEB8BB8()
{
  result = qword_280DAEA70;
  if (!qword_280DAEA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA70);
  }

  return result;
}

unint64_t sub_23DEB8C10()
{
  result = qword_280DAEA80;
  if (!qword_280DAEA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA80);
  }

  return result;
}

uint64_t sub_23DEB8C9C()
{
  v0 = sub_23E1FBEEC();
  OUTLINED_FUNCTION_6_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  v7 = sub_23E1FC1DC();
  v8 = OUTLINED_FUNCTION_25(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7_4();
  v9 = sub_23E1FDBCC();
  v10 = OUTLINED_FUNCTION_25(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v2 + 104))(v6, *MEMORY[0x277CC9110], v0);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  return sub_23E1FBF1C();
}

void sub_23DEB8E14()
{
  OUTLINED_FUNCTION_90();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v3);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_7();
  v5 = sub_23E1FBEEC();
  OUTLINED_FUNCTION_6_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7_4();
  v9 = sub_23E1FC1DC();
  v10 = OUTLINED_FUNCTION_25(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  v11 = OUTLINED_FUNCTION_11_4();
  v12 = OUTLINED_FUNCTION_25(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_9_5();
  v13 = sub_23E1FBF0C();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v7 + 104))(v0, *MEMORY[0x277CC9110], v5);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v13);
  sub_23E1FB69C();
  v18 = sub_23E1FB67C();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v18);
  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DEB9034()
{
  v1 = sub_23E1FC7FC();
  OUTLINED_FUNCTION_6_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C310, &unk_23E225DA0);
  OUTLINED_FUNCTION_25(v8);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_7();
  sub_23E1FC82C();
  v10 = sub_23E1FC81C();
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v10);
  (*(v3 + 104))(v7, *MEMORY[0x277D7BF40], v1);
  type metadata accessor for Key(0);
  sub_23DEBA1DC(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  sub_23E1FDABC();
  v11 = objc_allocWithZone(sub_23E1FC83C());
  return sub_23E1FC80C();
}

uint64_t sub_23DEB91FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF30, &qword_23E227218);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF38, &qword_23E227220);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_7();
  sub_23DEBA170();
  sub_23E1FB81C();
  sub_23E1FB80C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF40, &qword_23E227250);
  sub_23E1FB7FC();

  sub_23E1FB80C();
  sub_23E1FB83C();
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  return sub_23E1FB7DC();
}

uint64_t sub_23DEB9388()
{
  OUTLINED_FUNCTION_23();
  v0[19] = v1;
  v0[20] = v2;
  v3 = sub_23E1FD03C();
  v0[21] = v3;
  v0[22] = *(v3 - 8);
  v0[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DEB9444, 0, 0);
}

uint64_t sub_23DEB9444(uint64_t a1)
{
  sub_23E1FB5DC();
  v2 = *(v1 + 208);
  v3 = [objc_opt_self() sharedInstance];
  *(v1 + 192) = v3;
  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 209;
  *(v1 + 24) = sub_23DEB959C;
  v4 = swift_continuation_init();
  *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1C0, &unk_23E227208);
  *(v1 + 80) = MEMORY[0x277D85DD0];
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_23DECD2D0;
  *(v1 + 104) = &block_descriptor_8;
  *(v1 + 112) = v4;
  [v3 handleControlCenterOperationType:v2 + 1 completionHandler:v1 + 80];

  return MEMORY[0x282200938](v1 + 16);
}

uint64_t sub_23DEB959C()
{
  OUTLINED_FUNCTION_23();
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_23DEB971C;
  }

  else
  {
    v2 = sub_23DEB96A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23DEB96A8()
{
  OUTLINED_FUNCTION_23();

  sub_23E1FB54C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23DEB971C(uint64_t a1)
{
  v27 = v1;
  v2 = *(v1 + 192);
  v3 = *(v1 + 200);
  swift_willThrow();

  sub_23E1FCB9C();
  sub_23E1FB7CC();
  v4 = v3;
  v5 = sub_23E1FD02C();
  v6 = sub_23E1FE1BC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v1 + 200);
    v8 = *(v1 + 176);
    v25 = *(v1 + 184);
    v9 = *(v1 + 168);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26[0] = v11;
    *v10 = 136315394;
    sub_23E1FB5DC();
    *(v1 + 211) = *(v1 + 210);
    v12 = sub_23E1FDC7C();
    v14 = sub_23DE56B40(v12, v13, v26);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v1 + 144) = v7;
    v15 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C380, &qword_23E224180);
    v16 = sub_23E1FDC7C();
    v18 = sub_23DE56B40(v16, v17, v26);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_23DE30000, v5, v6, "Error running Control Center operation %s %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EF074C0](v11, -1, -1);
    MEMORY[0x23EF074C0](v10, -1, -1);

    (*(v8 + 8))(v25, v9);
  }

  else
  {
    v20 = *(v1 + 176);
    v19 = *(v1 + 184);
    v21 = *(v1 + 168);

    (*(v20 + 8))(v19, v21);
  }

  v22 = *(v1 + 200);
  sub_23E1FB3FC();
  sub_23DEBA1DC(&qword_27E32CF28, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
  swift_allocError();
  sub_23E1FB3EC();
  swift_willThrow();

  v23 = *(v1 + 8);

  return v23();
}

void sub_23DEB99F4()
{
  OUTLINED_FUNCTION_90();
  sub_23E1FB84C();
  OUTLINED_FUNCTION_6_0();
  v35 = v2;
  v36 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_15();
  v34 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C218, &unk_23E2262E0);
  v6 = OUTLINED_FUNCTION_25(v5);
  v7 = MEMORY[0x28223BE20](v6);
  v33[3] = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v33[2] = v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v10);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15_7(v12, v33[0]);
  v13 = sub_23E1FBEEC();
  OUTLINED_FUNCTION_6_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_9_5();
  v17 = sub_23E1FC1DC();
  v18 = OUTLINED_FUNCTION_25(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15();
  v19 = sub_23E1FDBCC();
  v20 = OUTLINED_FUNCTION_25(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_15();
  v21 = sub_23E1FBF0C();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_15();
  v33[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF20, &qword_23E2271F8);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v23 = *MEMORY[0x277CC9110];
  v24 = *(v15 + 104);
  v24(v0, v23, v13);
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_5();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v24(v0, v23, v13);
  v25 = v33[1];
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v21);
  v37 = 0;
  v26 = sub_23E1FB51C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v26);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v26);
  (*(v35 + 104))(v34, *MEMORY[0x277CBA308], v36);
  sub_23DEB8A10();
  sub_23E1FB60C();
  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DEB9E04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23DEB9EA4;

  return sub_23DEB9388();
}

uint64_t sub_23DEB9EA4()
{
  OUTLINED_FUNCTION_23();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23DEB9FC0(uint64_t a1)
{
  v2 = sub_23DEBA170();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t getEnumTagSinglePayload for ControlCenterOperation(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ControlCenterOperation(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23DEBA170()
{
  result = qword_280DAEA78;
  if (!qword_280DAEA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA78);
  }

  return result;
}

uint64_t sub_23DEBA1DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_11_4()
{

  return sub_23E1FDBCC();
}

uint64_t OUTLINED_FUNCTION_12_7()
{

  return sub_23E1FB76C();
}

id sub_23DEBA2CC()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v155 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v3 - 8);
  v170 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222330;
  v5 = *MEMORY[0x277D7CB18];
  v6 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x800000023E24EED0;
  v7 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = inited;
  v9 = v5;
  v10 = v7;
  v11 = sub_23E1FDCBC("current|temperature|visibility|humidity|pressure|wind|sunrise|sunset", 68);
  v13 = v12;
  sub_23E1FDCBC("current|temperature|visibility|humidity|pressure|wind|sunrise|sunset", 68);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v177 = qword_280DAE278;
  v14 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v15 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v11, v13);
  v17 = v16;
  v18 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v175 = v18;
  v8[10] = v17;
  v19 = *MEMORY[0x277D7CB10];
  v8[13] = v18;
  v8[14] = v19;
  v20 = v19;
  v21 = sub_23E1FDABC();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  v176 = v8;
  v8[15] = v21;
  v23 = *MEMORY[0x277D7CC18];
  v8[18] = v22;
  v8[19] = v23;
  v173 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v24 = swift_initStackObject();
  v174 = xmmword_23E222370;
  *(v24 + 16) = xmmword_23E222370;
  v25 = *MEMORY[0x277D7CC10];
  *(v24 + 32) = *MEMORY[0x277D7CC10];
  v26 = v23;
  v27 = v25;
  v28 = sub_23E1FDCBC("Get Current Weather - Attribution", 33);
  v172 = v29;
  sub_23E1FDCBC("Weather information provided by [Weather data sources](https://weather-data.apple.com/legal-attribution.html).", 110);
  sub_23E1FC14C();
  v30 = v177;
  v31 = [v177 bundleURL];
  sub_23E1FBF9C();

  v32 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v28, v172);
  *(v24 + 40) = v33;
  v34 = *MEMORY[0x277D7CC30];
  v35 = v175;
  *(v24 + 64) = v175;
  *(v24 + 72) = v34;
  v36 = v34;
  v37 = sub_23E1FDCBC("Gets an hourly or daily weather forecast at the specified location.", 67);
  v172 = v38;
  sub_23E1FDCBC("Gets an hourly or daily weather forecast at the specified location.", 67);
  sub_23E1FC14C();
  v39 = [v30 bundleURL];
  sub_23E1FBF9C();

  v40 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v37, v172);
  *(v24 + 104) = v35;
  *(v24 + 80) = v41;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v42 = sub_23E1FDABC();
  v43 = v173;
  v44 = sub_23DF3BE54(v42);
  v45 = MEMORY[0x277D7CCC8];
  v46 = v176;
  v176[20] = v44;
  v47 = *v45;
  v46[23] = v43;
  v46[24] = v47;
  v48 = MEMORY[0x277D839B0];
  *(v46 + 200) = 0;
  v49 = *MEMORY[0x277D7CB90];
  v46[28] = v48;
  v46[29] = v49;
  v50 = v47;
  v51 = v49;
  v52 = sub_23E1FDCBC("Get Weather Forecast (Action Name)", 34);
  v54 = v53;
  sub_23E1FDCBC("Get Weather Forecast", 20);
  sub_23E1FC14C();
  v55 = v177;
  v56 = [v177 bundleURL];
  v171 = v2;
  sub_23E1FBF9C();

  v57 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v52, v54);
  v59 = v175;
  v58 = v176;
  v176[30] = v60;
  v61 = *MEMORY[0x277D7CDD0];
  v58[33] = v59;
  v58[34] = v61;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v62 = swift_initStackObject();
  v169 = xmmword_23E222380;
  *(v62 + 16) = xmmword_23E222380;
  *(v62 + 32) = 0x656C7069746C754DLL;
  *(v62 + 40) = 0xE800000000000000;
  *(v62 + 48) = 1;
  *(v62 + 72) = MEMORY[0x277D839B0];
  *(v62 + 80) = 0x614E74757074754FLL;
  *(v62 + 88) = 0xEA0000000000656DLL;
  v63 = v61;
  v64 = sub_23E1FDCBC("Weather Conditions (Default Output Name)", 40);
  v66 = v65;
  sub_23E1FDCBC("Weather Conditions", 18);
  sub_23E1FC14C();
  v67 = [v55 bundleURL];
  sub_23E1FBF9C();

  v68 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v64, v66);
  *(v62 + 96) = v69;
  *(v62 + 120) = v59;
  *(v62 + 128) = 0x7365707954;
  v70 = MEMORY[0x277D837D0];
  *(v62 + 136) = 0xE500000000000000;
  *(v62 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v62 + 144) = &unk_285024538;
  v71 = sub_23E1FDABC();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v168 = v72;
  v73 = v176;
  v176[35] = v71;
  v74 = *MEMORY[0x277D7CBA0];
  v73[38] = v72;
  v73[39] = v74;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v173 = swift_allocObject();
  v159 = xmmword_23E2246F0;
  *(v173 + 16) = xmmword_23E2246F0;
  v172 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v75 = swift_initStackObject();
  v157 = xmmword_23E224710;
  *(v75 + 16) = xmmword_23E224710;
  v76 = *MEMORY[0x277D7CDF8];
  *(v75 + 64) = v70;
  *(v75 + 32) = v76;
  *(v75 + 40) = 0xD000000000000013;
  *(v75 + 48) = 0x800000023E254230;
  v156 = v76;
  v77 = v74;
  v78 = sub_23E1FDBDC();
  *(v75 + 104) = v70;
  *(v75 + 72) = v78;
  strcpy((v75 + 80), "HundredMeters");
  *(v75 + 94) = -4864;
  v166 = 0xD000000000000018;
  *(v75 + 112) = sub_23E1FDBDC();
  *(v75 + 120) = 1;
  v79 = *MEMORY[0x277D7CE70];
  *(v75 + 144) = MEMORY[0x277D839B0];
  *(v75 + 152) = v79;
  v165 = 0x800000023E254290;
  *(v75 + 160) = 0xD000000000000017;
  *(v75 + 168) = 0x800000023E254290;
  v80 = *MEMORY[0x277D7CE80];
  *(v75 + 184) = v70;
  *(v75 + 192) = v80;
  v81 = v79;
  v82 = v80;
  v163 = v81;
  v164 = v82;
  v83 = sub_23E1FDCBC("Location (WFWeatherCustomLocation)", 34);
  v85 = v84;
  sub_23E1FDCBC("Location", 8);
  sub_23E1FC14C();
  v86 = [v177 bundleURL];
  sub_23E1FBF9C();

  v87 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v83, v85);
  *(v75 + 224) = v175;
  *(v75 + 200) = v88;
  _s3__C3KeyVMa_0(0);
  v162 = v89;
  v161 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v90 = sub_23E1FDABC();
  v91 = sub_23DF3BE9C(v90);
  *(v173 + 32) = v91;
  v92 = swift_allocObject();
  *(v92 + 16) = v157;
  *(v92 + 32) = v156;
  *(v92 + 40) = 0xD000000000000016;
  v93 = MEMORY[0x277D7CE00];
  *(v92 + 48) = 0x800000023E24FDA0;
  v94 = *v93;
  *(v92 + 64) = v70;
  *(v92 + 72) = v94;
  *(v92 + 80) = 0x796C696144;
  *(v92 + 88) = 0xE500000000000000;
  v95 = *MEMORY[0x277D7CE38];
  *(v92 + 104) = v70;
  *(v92 + 112) = v95;
  v160 = swift_allocObject();
  *(v160 + 16) = v159;
  v96 = v94;
  v97 = v95;
  v98 = sub_23E1FDCBC("Hourly (WFWeatherForecastType)", 30);
  v100 = v99;
  sub_23E1FDCBC("Hourly", 6);
  sub_23E1FC14C();
  v101 = v177;
  v102 = [v177 bundleURL];
  sub_23E1FBF9C();

  v103 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v98, v100);
  v104 = v160;
  *(v160 + 32) = v105;
  *&v159 = sub_23E1FDCBC("Daily (WFWeatherForecastType)", 29);
  v107 = v106;
  sub_23E1FDCBC("Daily", 5);
  sub_23E1FC14C();
  v108 = [v101 bundleURL];
  sub_23E1FBF9C();

  v109 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v159, v107);
  *(v104 + 40) = v110;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D1A0, &qword_23E224C20);
  *(v92 + 120) = v104;
  v112 = v163;
  *(v92 + 144) = v111;
  *(v92 + 152) = v112;
  *(v92 + 160) = 0xD000000000000015;
  *(v92 + 168) = 0x800000023E24EEB0;
  v113 = v164;
  *(v92 + 184) = MEMORY[0x277D837D0];
  *(v92 + 192) = v113;
  v114 = sub_23E1FDCBC("Type (WFWeatherForecastType)", 28);
  v116 = v115;
  sub_23E1FDCBC("Type", 4);
  sub_23E1FC14C();
  v117 = [v101 bundleURL];
  sub_23E1FBF9C();

  v118 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v114, v116);
  *(v92 + 224) = v175;
  *(v92 + 200) = v119;
  v120 = sub_23E1FDABC();
  v121 = sub_23DF3BE9C(v120);
  v122 = v173;
  *(v173 + 40) = v121;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v124 = v176;
  v176[40] = v122;
  v125 = *MEMORY[0x277D7CB98];
  v124[43] = v123;
  v124[44] = v125;
  v126 = v125;
  v127 = sub_23E1FDCBC("Get ${WFWeatherForecastType} forecast at ${WFWeatherCustomLocation} (Parameter Summary)", 87);
  v129 = v128;
  sub_23E1FDCBC("Get ${WFWeatherForecastType} forecast at ${WFWeatherCustomLocation}", 67);
  sub_23E1FC14C();
  v130 = [v177 bundleURL];
  sub_23E1FBF9C();

  v131 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v127, v129);
  v133 = v132;
  v134 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v135 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v124[45] = v134;
  v136 = *MEMORY[0x277D7CF20];
  v124[48] = v135;
  v124[49] = v136;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C2E0, &qword_23E224068);
  v137 = swift_allocObject();
  *(v137 + 16) = v174;
  v138 = swift_allocObject();
  *(v138 + 16) = v174;
  *(v138 + 32) = 0xD000000000000011;
  *(v138 + 40) = 0x800000023E254400;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8D8, &qword_23E225540);
  v139 = swift_allocObject();
  *(v139 + 16) = xmmword_23E222340;
  v140 = swift_allocObject();
  *(v140 + 16) = v169;
  strcpy((v140 + 32), "WFParameterKey");
  *(v140 + 47) = -18;
  v141 = v165;
  *(v140 + 48) = 0xD000000000000017;
  *(v140 + 56) = v141;
  v142 = MEMORY[0x277D837D0];
  *(v140 + 72) = MEMORY[0x277D837D0];
  *(v140 + 80) = 0xD000000000000010;
  *(v140 + 88) = 0x800000023E24D710;
  v143 = v136;
  v144 = sub_23E1FDABC();
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF48, &qword_23E227258);
  *(v140 + 96) = v144;
  *(v140 + 120) = v145;
  *(v140 + 128) = 0x72756F7365524657;
  *(v140 + 168) = v142;
  *(v140 + 136) = 0xEF7373616C436563;
  *(v140 + 144) = 0xD00000000000001BLL;
  *(v140 + 152) = 0x800000023E24D730;
  *(v139 + 32) = sub_23E1FDABC();
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8E0, qword_23E225548);
  *(v138 + 48) = v139;
  *(v138 + 72) = v146;
  *(v138 + 80) = 0x72756F7365524657;
  *(v138 + 120) = v142;
  v147 = v166;
  *(v138 + 88) = 0xEF7373616C436563;
  *(v138 + 96) = v147;
  *(v138 + 104) = 0x800000023E254420;
  *(v137 + 32) = sub_23E1FDABC();
  *(v137 + 88) = v142;
  *(v137 + 56) = v168;
  *(v137 + 64) = 0xD00000000000001CLL;
  *(v137 + 72) = 0x800000023E24D7B0;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7B0, &qword_23E224B88);
  v149 = MEMORY[0x277D7CB78];
  v150 = v176;
  v176[50] = v137;
  v151 = *v149;
  v150[53] = v148;
  v150[54] = v151;
  v150[58] = MEMORY[0x277D839B0];
  *(v150 + 440) = 1;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v152 = v151;
  v153 = sub_23E1FDABC();
  return sub_23DF3BF9C(v153);
}

void *sub_23DEBB498()
{
  v1 = OBJC_IVAR____TtC9ActionKit13WeatherAction_mapItemForTesting;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_23DEBB4E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9ActionKit13WeatherAction_mapItemForTesting;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_23DEBB59C()
{
  v0 = sub_23E1FDC1C();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222340;
  *(inited + 32) = sub_23E1FDC1C();
  *(inited + 40) = v4;
  sub_23E1FDCBC("Unable to determine location.", 29);
  if (qword_280DAE1D8 != -1)
  {
    OUTLINED_FUNCTION_0_13(&qword_280DAE1D8);
  }

  v5 = qword_280DAE278;
  v6 = sub_23E1FDBDC();
  v7 = sub_23E1FDBDC();

  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  v9 = sub_23E1FDC1C();
  v11 = v10;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v9;
  *(inited + 56) = v11;
  v12 = sub_23E1FDABC();
  v13 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  return sub_23DE56A08(v0, v2, 22, v12);
}

uint64_t sub_23DEBB734()
{
  OUTLINED_FUNCTION_23();
  v1[6] = v2;
  v1[7] = v0;
  v1[8] = sub_23E1FDECC();
  v1[9] = sub_23E1FDEBC();
  v4 = sub_23E1FDE6C();
  v1[10] = v4;
  v1[11] = v3;

  return MEMORY[0x2822009F8](sub_23DEBB7CC, v4, v3);
}

uint64_t sub_23DEBB7CC()
{
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC9ActionKit13WeatherAction_mapItemForTesting;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v3;

    v5 = v0[1];

    return v5(v4);
  }

  else
  {
    v7 = v0[7];
    v8 = v0[6];
    sub_23DE38DA8(0, &qword_27E32C360, 0x277CFC2E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_23E2235B0;
    *(v9 + 32) = v8;
    v10 = v8;
    v11 = sub_23DE56610(v9);
    v0[12] = v11;
    v0[13] = sub_23E1FDEBC();
    v12 = swift_task_alloc();
    v0[14] = v12;
    *(v12 + 16) = v11;
    *(v12 + 24) = v7;
    v13 = swift_task_alloc();
    v0[15] = v13;
    sub_23DE38DA8(0, &qword_27E32CF90, 0x277CD4E80);
    *v13 = v0;
    v13[1] = sub_23DEBB9D8;

    return MEMORY[0x2822008A0](v0 + 5);
  }
}

uint64_t sub_23DEBB9D8()
{
  OUTLINED_FUNCTION_23();
  v2 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v5 = v4;
  v2[16] = v0;

  if (v0)
  {
    v6 = v2[10];
    v7 = v2[11];
    v8 = sub_23DEBBB60;
  }

  else
  {

    v6 = v2[10];
    v7 = v2[11];
    v8 = sub_23DEBBAF0;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_23DEBBAF0()
{
  OUTLINED_FUNCTION_23();

  v1 = *(v0 + 40);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23DEBBB60()
{
  OUTLINED_FUNCTION_4();
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_19();

  return v2();
}