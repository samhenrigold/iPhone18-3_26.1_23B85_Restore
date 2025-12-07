uint64_t sub_227D16104()
{
  v1 = v0[40];
  v20 = v0[39];
  v21 = v0[41];
  v2 = v0[37];
  v18 = v0[36];
  v19 = v0[38];
  v3 = v0[32];
  v16 = v0[31];
  v17 = v0[33];
  v4 = v0[27];
  v14 = v0[26];
  v15 = v0[28];
  v13 = v0[25];
  v5 = v0[23];
  v6 = v0[24];
  v7 = OUTLINED_FUNCTION_110_0();
  v8(v7);
  v9 = OUTLINED_FUNCTION_9_2();
  v10(v9);
  (*(v6 + 8))(v13, v5);
  (*(v4 + 8))(v15, v14);
  (*(v3 + 8))(v17, v16);
  (*(v2 + 8))(v19, v18);
  (*(v1 + 8))(v21, v20);
  OUTLINED_FUNCTION_88_6();

  OUTLINED_FUNCTION_18();

  return v11();
}

uint64_t sub_227D162C0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_81_1();

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_227D164FC()
{
  v1 = v0[40];
  v20 = v0[39];
  v21 = v0[41];
  v2 = v0[37];
  v18 = v0[36];
  v19 = v0[38];
  v3 = v0[32];
  v16 = v0[31];
  v17 = v0[33];
  v4 = v0[27];
  v14 = v0[26];
  v15 = v0[28];
  v13 = v0[25];
  v5 = v0[23];
  v6 = v0[24];
  v7 = OUTLINED_FUNCTION_110_0();
  v8(v7);
  v9 = OUTLINED_FUNCTION_9_2();
  v10(v9);
  (*(v6 + 8))(v13, v5);
  (*(v4 + 8))(v15, v14);
  (*(v3 + 8))(v17, v16);
  (*(v2 + 8))(v19, v18);
  (*(v1 + 8))(v21, v20);
  OUTLINED_FUNCTION_26_13();

  OUTLINED_FUNCTION_18();

  return v11();
}

uint64_t sub_227D166B0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_227D49CF8();
  v6 = a2[1];
  v2[5] = v6;
  v2[6] = *(v6 - 8);
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_227D49CF8();
  v7 = a2[2];
  v2[8] = v7;
  v2[9] = *(v7 - 8);
  v2[10] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_227D49CF8();
  v8 = a2[3];
  v2[11] = v8;
  v2[12] = *(v8 - 8);
  v2[13] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_227D49CF8();
  v9 = a2[4];
  v2[14] = v9;
  v2[15] = *(v9 - 8);
  v2[16] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v10 = swift_task_alloc();
  v2[17] = v10;
  *v10 = v2;
  v10[1] = sub_227D16D24;

  return GameLibraryService.listGameHistories(by:sortBy:upTo:after:belongingTo:)();
}

uint64_t sub_227D16D24()
{
  OUTLINED_FUNCTION_14();
  v32 = *(v1 + 128);
  OUTLINED_FUNCTION_69();
  v31 = *(v2 + 120);
  OUTLINED_FUNCTION_69();
  v28 = *(v3 + 112);
  OUTLINED_FUNCTION_69();
  v30 = *(v4 + 104);
  OUTLINED_FUNCTION_69();
  v29 = *(v5 + 96);
  OUTLINED_FUNCTION_69();
  v25 = *(v6 + 88);
  OUTLINED_FUNCTION_69();
  v27 = *(v7 + 80);
  OUTLINED_FUNCTION_69();
  v26 = *(v8 + 72);
  OUTLINED_FUNCTION_69();
  v10 = *(v9 + 64);
  v24 = *(v11 + 56);
  OUTLINED_FUNCTION_69();
  v23 = *(v12 + 48);
  OUTLINED_FUNCTION_69();
  v14 = *(v13 + 40);
  v16 = v15[4];
  v17 = v15[3];
  v18 = v15[2];
  v19 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v20 = v19;

  (*(v17 + 8))(v16, v18);
  (*(v23 + 8))(v24, v14);
  (*(v26 + 8))(v27, v10);
  (*(v29 + 8))(v30, v25);
  (*(v31 + 8))(v32, v28);

  v21 = *(v19 + 8);

  return v21();
}

uint64_t GameLibraryService.listGameHistories(by:sortBy:upTo:after:belongingTo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 216) = a7;
  *(v8 + 224) = v7;
  *(v8 + 200) = a4;
  *(v8 + 208) = a6;
  *(v8 + 248) = a5;
  *(v8 + 184) = a2;
  *(v8 + 192) = a3;
  *(v8 + 176) = a1;
  return OUTLINED_FUNCTION_2_0(sub_227D170B8, v7);
}

uint64_t sub_227D170B8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_40_10(*(v0 + 224));
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 232) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_78_11(v1);

  return GameLibraryAggregateService.listGameHistories(by:sortBy:upTo:after:belongingTo:)();
}

uint64_t sub_227D17154()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 240) = v0;

  sub_227D14460(v3 + 16);
  if (v0)
  {
    v7 = *(v3 + 224);

    return MEMORY[0x2822009F8](sub_227D17274, v7, 0);
  }

  else
  {
    OUTLINED_FUNCTION_18();

    return v8();
  }
}

unint64_t sub_227D17298(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9E38, &unk_227D621C0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t GameLibraryService.listGameHistories(with:)()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v1[5] = *v0;
  v4 = sub_227D49458();
  v1[6] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[7] = v5;
  v6 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_111_5(v6);
  v7 = sub_227D4A1F8();
  v1[9] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[10] = v8;
  v1[11] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA3F8, &qword_227D66258);
  v1[12] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[13] = v10;
  v11 = OUTLINED_FUNCTION_30();
  v12 = OUTLINED_FUNCTION_113_7(v11);
  v1[15] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[16] = v13;
  v1[17] = OUTLINED_FUNCTION_30();
  v14 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_227D174B4()
{
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_19_16();
    OUTLINED_FUNCTION_36();
    v2 = OUTLINED_FUNCTION_9_1();
    v3(v2);
    OUTLINED_FUNCTION_8_17();
    OUTLINED_FUNCTION_48_11();
    sub_227B0F918(v4);
    OUTLINED_FUNCTION_55_11(&unk_27D7EA408);
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    if (v0)
    {
      v8 = v1[16];
      v9 = OUTLINED_FUNCTION_110_0();
      v10(v9);
      (*(v8 + 8))(v1[17], v1[15]);
      OUTLINED_FUNCTION_38_13();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_112_1();

      __asm { BRAA            X1, X16 }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    OUTLINED_FUNCTION_70();
    sub_227D49D28();
    v5 = OUTLINED_FUNCTION_113();
    __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    OUTLINED_FUNCTION_53_1(&unk_27D7EA3E8);
    v7 = OUTLINED_FUNCTION_52_0(&unk_27D7EA3F0);
    OUTLINED_FUNCTION_17(v7);
    sub_227D49D08();
    OUTLINED_FUNCTION_107_5();
    OUTLINED_FUNCTION_57();
    sub_227D49468();
    v19 = swift_task_alloc();
    OUTLINED_FUNCTION_105_8(v19);
    OUTLINED_FUNCTION_0_58();
    sub_227B0F918(v20);
    OUTLINED_FUNCTION_61_12();
    MEMORY[0] = v21;
    OUTLINED_FUNCTION_31_8();
    OUTLINED_FUNCTION_1_35();

    return MEMORY[0x282164B00](v22);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v1[20] = v13;
    *v13 = v14;
    OUTLINED_FUNCTION_50_4(v13);
    OUTLINED_FUNCTION_112_1();

    return GameLibraryService.listGameHistories(with:)(v15, v16);
  }
}

uint64_t sub_227D17790()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227D17888()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v0 = OUTLINED_FUNCTION_23_11();
  v1(v0);
  v2 = OUTLINED_FUNCTION_42();
  v3(v2);
  v4 = OUTLINED_FUNCTION_57_0();
  v5(v4);
  OUTLINED_FUNCTION_38_13();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_117_0();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_227D1793C()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_81_1();

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_227D17A98()
{
  OUTLINED_FUNCTION_20();
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = OUTLINED_FUNCTION_57_0();
  v2(v1);
  (*(v0[16] + 8))(v0[17], v0[15]);
  OUTLINED_FUNCTION_82_8();

  OUTLINED_FUNCTION_18();

  return v3();
}

uint64_t sub_227D17B5C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_227D17D0C;

  return GameLibraryService.listGameHistories(with:)();
}

uint64_t sub_227D17D0C()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_89_6();
  v1 = v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_2();
  v4(v3);

  OUTLINED_FUNCTION_18();

  return v5();
}

uint64_t GameLibraryService.listGameHistories(with:)(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  return OUTLINED_FUNCTION_2_0(sub_227D17E84, v2);
}

uint64_t sub_227D17E84()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_40_10(*(v0 + 192));
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 200) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_101_8(v1);

  return GameLibraryAggregateService.listGameHistories(with:)();
}

uint64_t sub_227D17F1C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 208) = v0;

  sub_227D14460(v3 + 16);
  if (v0)
  {
    v7 = *(v3 + 192);

    return MEMORY[0x2822009F8](sub_227D1803C, v7, 0);
  }

  else
  {
    OUTLINED_FUNCTION_18();

    return v8();
  }
}

uint64_t GameLibraryService.listGames(by:sortBy:upTo:after:belongingTo:)()
{
  OUTLINED_FUNCTION_6();
  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 25) = v5;
  *(v1 + 40) = v6;
  *(v1 + 48) = v7;
  *(v1 + 32) = v8;
  *(v1 + 88) = *v0;
  v9 = sub_227D49458();
  *(v1 + 96) = v9;
  OUTLINED_FUNCTION_10_0(v9);
  *(v1 + 104) = v10;
  *(v1 + 112) = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  *(v1 + 120) = v11;
  OUTLINED_FUNCTION_10_0(v11);
  *(v1 + 128) = v12;
  *(v1 + 136) = OUTLINED_FUNCTION_30();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E18, &qword_227D51060);
  *(v1 + 144) = v13;
  OUTLINED_FUNCTION_10_0(v13);
  *(v1 + 152) = v14;
  *(v1 + 160) = OUTLINED_FUNCTION_30();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  *(v1 + 168) = v15;
  OUTLINED_FUNCTION_5(v15);
  *(v1 + 176) = OUTLINED_FUNCTION_30();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A20, &unk_227D4EC60);
  *(v1 + 184) = v16;
  OUTLINED_FUNCTION_10_0(v16);
  *(v1 + 192) = v17;
  *(v1 + 200) = OUTLINED_FUNCTION_30();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9DE0, &unk_227D62190);
  *(v1 + 208) = v18;
  OUTLINED_FUNCTION_10_0(v18);
  *(v1 + 216) = v19;
  *(v1 + 224) = OUTLINED_FUNCTION_30();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9840, &qword_227D5EB60);
  *(v1 + 232) = v20;
  OUTLINED_FUNCTION_5(v20);
  *(v1 + 240) = OUTLINED_FUNCTION_30();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9DE8, &unk_227D621A0);
  *(v1 + 248) = v21;
  OUTLINED_FUNCTION_10_0(v21);
  *(v1 + 256) = v22;
  *(v1 + 264) = OUTLINED_FUNCTION_30();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9848, &unk_227D5EB68);
  *(v1 + 272) = v23;
  OUTLINED_FUNCTION_5(v23);
  *(v1 + 280) = OUTLINED_FUNCTION_30();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9DF0, &qword_227D621B0);
  *(v1 + 288) = v24;
  OUTLINED_FUNCTION_10_0(v24);
  *(v1 + 296) = v25;
  *(v1 + 304) = OUTLINED_FUNCTION_30();
  v26 = sub_227D49D58();
  *(v1 + 312) = v26;
  OUTLINED_FUNCTION_10_0(v26);
  *(v1 + 320) = v27;
  *(v1 + 328) = OUTLINED_FUNCTION_30();
  v28 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_227D18428()
{
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_96_8();
    OUTLINED_FUNCTION_36();
    sub_227CA5D74(v3, v2, &qword_27D7E9848, &unk_227D5EB68);
    sub_227D49478();
    sub_227CA0BB4();
    sub_227CA0C68();
    OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    if (v0)
    {
      v4 = OUTLINED_FUNCTION_94_7();
      v5(v4);
      v18 = OUTLINED_FUNCTION_57_0();
      v19(v18);
      OUTLINED_FUNCTION_88_6();
      OUTLINED_FUNCTION_26_13();

      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_93_7();

      __asm { BRAA            X1, X16 }
    }

    sub_227CA5D74(v1[6], v1[30], &qword_27D7E9840, &qword_227D5EB60);
    OUTLINED_FUNCTION_46_9();
    sub_227CA0D1C();
    sub_227CA0DD0();
    OUTLINED_FUNCTION_61_1();
    sub_227D49D18();
    OUTLINED_FUNCTION_85_9();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9E38, &unk_227D621C0);
    OUTLINED_FUNCTION_65_8(v17);
    OUTLINED_FUNCTION_67_3(&unk_27D7E9E40);
    OUTLINED_FUNCTION_66_9(&unk_27D7E9E48, MEMORY[0x277D83E90]);
    OUTLINED_FUNCTION_9_0();
    sub_227D49D18();
    sub_227CA5D74(v1[8], v1[22], &qword_27D7E6908, &unk_227D4E690);
    OUTLINED_FUNCTION_61_0();
    sub_227B15FB0();
    sub_227B16064();
    OUTLINED_FUNCTION_61_1();
    sub_227D49D18();
    v22 = OUTLINED_FUNCTION_80_7();
    v23(v22);
    OUTLINED_FUNCTION_47_12();
    OUTLINED_FUNCTION_53_6(&qword_27D7E6BD8);
    OUTLINED_FUNCTION_52_10(&qword_27D7E6BE8);
    OUTLINED_FUNCTION_61_1();
    sub_227D49D18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    OUTLINED_FUNCTION_70();
    sub_227D49D28();
    v24 = OUTLINED_FUNCTION_113();
    __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    OUTLINED_FUNCTION_53_1(&unk_27D7E9E58);
    v26 = OUTLINED_FUNCTION_52_0(&unk_27D7E9E60);
    OUTLINED_FUNCTION_17(v26);
    sub_227D49D08();
    OUTLINED_FUNCTION_57();
    sub_227D49468();
    v27 = swift_task_alloc();
    v1[42] = v27;
    OUTLINED_FUNCTION_0_58();
    sub_227B0F918(v28);
    OUTLINED_FUNCTION_61_12();
    *v27 = v29;
    v27[1] = sub_227D18BA4;
    OUTLINED_FUNCTION_1_35();

    return MEMORY[0x282164B00](v30);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v1[44] = v6;
    *v6 = v7;
    OUTLINED_FUNCTION_77_8(v6);
    OUTLINED_FUNCTION_93_7();

    return GameLibraryService.listGames(by:sortBy:upTo:after:belongingTo:)(v8, v9, v10, v11, v12, v13, v14);
  }
}

uint64_t sub_227D18BA4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 344) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227D18C9C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_227D49CF8();
  v6 = a2[1];
  v2[5] = v6;
  v2[6] = *(v6 - 8);
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_227D49CF8();
  v7 = a2[2];
  v2[8] = v7;
  v2[9] = *(v7 - 8);
  v2[10] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_227D49CF8();
  v8 = a2[3];
  v2[11] = v8;
  v2[12] = *(v8 - 8);
  v2[13] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_227D49CF8();
  v9 = a2[4];
  v2[14] = v9;
  v2[15] = *(v9 - 8);
  v2[16] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v10 = swift_task_alloc();
  v2[17] = v10;
  *v10 = v2;
  v10[1] = sub_227D1C2B8;

  return GameLibraryService.listGames(by:sortBy:upTo:after:belongingTo:)();
}

uint64_t GameLibraryService.listGames(by:sortBy:upTo:after:belongingTo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 216) = a7;
  *(v8 + 224) = v7;
  *(v8 + 200) = a4;
  *(v8 + 208) = a6;
  *(v8 + 248) = a5;
  *(v8 + 184) = a2;
  *(v8 + 192) = a3;
  *(v8 + 176) = a1;
  return OUTLINED_FUNCTION_2_0(sub_227D1933C, v7);
}

uint64_t sub_227D1933C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_40_10(*(v0 + 224));
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 232) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_78_11(v1);

  return GameLibraryAggregateService.listGames(by:sortBy:upTo:after:belongingTo:)();
}

uint64_t sub_227D193D8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 240) = v0;

  sub_227D14460(v3 + 16);
  if (v0)
  {
    v7 = *(v3 + 224);

    return MEMORY[0x2822009F8](sub_227D1C2A8, v7, 0);
  }

  else
  {
    OUTLINED_FUNCTION_18();

    return v8();
  }
}

uint64_t GameLibraryService.listGames(with:)()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v1[5] = *v0;
  v4 = sub_227D49458();
  v1[6] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[7] = v5;
  v6 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_111_5(v6);
  v7 = sub_227D4A1F8();
  v1[9] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[10] = v8;
  v1[11] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA3F8, &qword_227D66258);
  v1[12] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[13] = v10;
  v11 = OUTLINED_FUNCTION_30();
  v12 = OUTLINED_FUNCTION_113_7(v11);
  v1[15] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[16] = v13;
  v1[17] = OUTLINED_FUNCTION_30();
  v14 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_227D196AC()
{
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_19_16();
    OUTLINED_FUNCTION_36();
    v2 = OUTLINED_FUNCTION_9_1();
    v3(v2);
    OUTLINED_FUNCTION_8_17();
    OUTLINED_FUNCTION_48_11();
    sub_227B0F918(v4);
    OUTLINED_FUNCTION_55_11(&unk_27D7EA408);
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    if (v0)
    {
      v8 = v1[16];
      v9 = OUTLINED_FUNCTION_110_0();
      v10(v9);
      (*(v8 + 8))(v1[17], v1[15]);
      OUTLINED_FUNCTION_38_13();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_112_1();

      __asm { BRAA            X1, X16 }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    OUTLINED_FUNCTION_70();
    sub_227D49D28();
    v5 = OUTLINED_FUNCTION_113();
    __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    OUTLINED_FUNCTION_53_1(&unk_27D7E9E58);
    v7 = OUTLINED_FUNCTION_52_0(&unk_27D7E9E60);
    OUTLINED_FUNCTION_17(v7);
    sub_227D49D08();
    OUTLINED_FUNCTION_107_5();
    OUTLINED_FUNCTION_57();
    sub_227D49468();
    v19 = swift_task_alloc();
    OUTLINED_FUNCTION_105_8(v19);
    OUTLINED_FUNCTION_0_58();
    sub_227B0F918(v20);
    OUTLINED_FUNCTION_61_12();
    MEMORY[0] = v21;
    OUTLINED_FUNCTION_31_8();
    OUTLINED_FUNCTION_1_35();

    return MEMORY[0x282164B00](v22);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v1[20] = v13;
    *v13 = v14;
    OUTLINED_FUNCTION_50_4(v13);
    OUTLINED_FUNCTION_112_1();

    return GameLibraryService.listGames(with:)(v15, v16);
  }
}

uint64_t sub_227D19988()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227D19A80(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_227D1C298;

  return GameLibraryService.listGames(with:)();
}

uint64_t GameLibraryService.listGames(with:)(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  return OUTLINED_FUNCTION_2_0(sub_227D19C50, v2);
}

uint64_t sub_227D19C50()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_40_10(*(v0 + 192));
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 200) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_101_8(v1);

  return GameLibraryAggregateService.listGames(with:)();
}

uint64_t sub_227D19CE8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 208) = v0;

  sub_227D14460(v3 + 16);
  if (v0)
  {
    v7 = *(v3 + 192);

    return MEMORY[0x2822009F8](sub_227D1C2AC, v7, 0);
  }

  else
  {
    OUTLINED_FUNCTION_18();

    return v8();
  }
}

uint64_t GameLibraryService.getAvailableGameGenres(with:)()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v1[5] = *v0;
  v3 = sub_227D49458();
  v1[6] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[7] = v4;
  v5 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_111_5(v5);
  v6 = sub_227D49508();
  v1[9] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[10] = v7;
  v1[11] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA410, &qword_227D66470);
  v1[12] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[13] = v9;
  v10 = OUTLINED_FUNCTION_30();
  v11 = OUTLINED_FUNCTION_113_7(v10);
  v1[15] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[16] = v12;
  v1[17] = OUTLINED_FUNCTION_30();
  v13 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_227D19FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_19_16();
    OUTLINED_FUNCTION_36();
    v14 = OUTLINED_FUNCTION_9_1();
    v15(v14);
    OUTLINED_FUNCTION_8_17();
    sub_227B0F918(&unk_27D7EA418);
    sub_227B0F918(&unk_27D7EA420);
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    if (v12)
    {
      v17 = OUTLINED_FUNCTION_110_0();
      v18(v17);
      v19 = OUTLINED_FUNCTION_57_0();
      v20(v19);
      OUTLINED_FUNCTION_38_13();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA428, &unk_227D66480);
      sub_227D1A9F4();
      v16 = sub_227D1AAA8();
      OUTLINED_FUNCTION_17(v16);
      sub_227D49D08();
      OUTLINED_FUNCTION_107_5();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v33 = swift_task_alloc();
      OUTLINED_FUNCTION_105_8(v33);
      OUTLINED_FUNCTION_0_58();
      sub_227B0F918(v34);
      OUTLINED_FUNCTION_47();
      MEMORY[0] = v35;
      OUTLINED_FUNCTION_31_8();
      OUTLINED_FUNCTION_1_35();
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v36);
    }
  }

  else
  {
    v30 = swift_task_alloc();
    *(v13 + 160) = v30;
    *v30 = v13;
    v30[1] = sub_227D1A438;
    OUTLINED_FUNCTION_53(*(v13 + 24));
    OUTLINED_FUNCTION_46();

    return GameLibraryService.getAvailableGameGenres(with:)(v31);
  }
}

uint64_t sub_227D1A294()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227D1A38C()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v0 = OUTLINED_FUNCTION_23_11();
  v1(v0);
  v2 = OUTLINED_FUNCTION_42();
  v3(v2);
  v4 = OUTLINED_FUNCTION_57_0();
  v5(v4);
  OUTLINED_FUNCTION_82_8();

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_117_0();

  return v8(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_227D1A438()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_117_0();

  return v5(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_227D1A5AC()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v0 = OUTLINED_FUNCTION_23_11();
  v1(v0);
  v2 = OUTLINED_FUNCTION_42();
  v3(v2);
  v4 = OUTLINED_FUNCTION_57_0();
  v5(v4);
  OUTLINED_FUNCTION_82_8();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_117_0();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_227D1A658(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_227D13E9C;

  return GameLibraryService.getAvailableGameGenres(with:)();
}

uint64_t GameLibraryService.getAvailableGameGenres(with:)(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227D1A810, v1);
}

uint64_t sub_227D1A810()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_40_10(*(v0 + 184));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_163_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_17_17(v2);

  return GameLibraryAggregateService.getAvailableGameGenres(with:)();
}

uint64_t sub_227D1A8A4()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 200) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_112_6();
    v7 = OUTLINED_FUNCTION_29_12();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    sub_227D14460(v3 + 16);
    v10 = OUTLINED_FUNCTION_28_13();

    return v11(v10);
  }
}

unint64_t sub_227D1A9F4()
{
  result = qword_27D7EA430;
  if (!qword_27D7EA430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7EA428, &unk_227D66480);
    sub_227B0F918(&unk_27D7EA438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA430);
  }

  return result;
}

unint64_t sub_227D1AAA8()
{
  result = qword_27D7EA440;
  if (!qword_27D7EA440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7EA428, &unk_227D66480);
    sub_227B0F918(&unk_27D7EA448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA440);
  }

  return result;
}

uint64_t static GameLibraryService.resolve(id:using:)(uint64_t a1, uint64_t a2)
{
  sub_227D49D78();
  OUTLINED_FUNCTION_3_27();
  sub_227B0F918(v5);
  OUTLINED_FUNCTION_0_58();
  sub_227B0F918(v6);
  v7 = sub_227D493A8();
  v8 = v7;
  if (!v2 && !v7)
  {
    v8 = swift_distributedActor_remote_initialize();
    v9 = OBJC_IVAR____TtC16GameServicesCore18GameLibraryService_id;
    sub_227D49EF8();
    OUTLINED_FUNCTION_62_0();
    (*(v10 + 16))(v8 + v9, a1);
    *(v8 + OBJC_IVAR____TtC16GameServicesCore18GameLibraryService_actorSystem) = a2;
  }

  return v8;
}

uint64_t GameLibraryService.deinit()
{
  v1 = OBJC_IVAR____TtC16GameServicesCore18GameLibraryService_id;
  sub_227D49D78();
  OUTLINED_FUNCTION_3_27();
  sub_227B0F918(v2);
  sub_227D493C8();
  sub_227D49EF8();
  OUTLINED_FUNCTION_62_0();
  (*(v3 + 8))(v0 + v1);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t GameLibraryService.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = OBJC_IVAR____TtC16GameServicesCore18GameLibraryService_id;
    sub_227D49EF8();
    OUTLINED_FUNCTION_62_0();
    (*(v2 + 8))(v0 + v1);

    swift_defaultActor_destroy();
  }

  else
  {
    GameLibraryService.deinit();
  }

  return MEMORY[0x282200960](v0);
}

uint64_t GameLibraryService.hashValue.getter()
{
  sub_227D4DB58();
  OUTLINED_FUNCTION_0_58();
  sub_227B0F918(v0);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t GameLibraryService.unownedExecutor.getter()
{
  if ((sub_227D49448() & 1) == 0)
  {
    OUTLINED_FUNCTION_0_58();
    sub_227B0F918(v1);
    OUTLINED_FUNCTION_57_0();
    return sub_227D49388();
  }

  return v0;
}

uint64_t sub_227D1AF2C@<X0>(uint64_t *a1@<X8>)
{
  result = GameLibraryService.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_227D1AFB0()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_0_58();
  sub_227B0F918(v0);
  return sub_227D49418();
}

uint64_t sub_227D1B030()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameLibraryService.describe(games:)();
}

uint64_t sub_227D1B0B4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameLibraryService.describe2(games:)();
}

uint64_t sub_227D1B138()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameLibraryService.describe(with:)();
}

uint64_t sub_227D1B1BC()
{
  OUTLINED_FUNCTION_72_7();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 16) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_36_1(v1);

  return GameLibraryService.listGameHistories(by:sortBy:upTo:after:belongingTo:)();
}

uint64_t sub_227D1B264()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 16) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_28_0(v1);

  return GameLibraryService.listGameHistories(with:)();
}

uint64_t sub_227D1B2F4()
{
  OUTLINED_FUNCTION_72_7();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 16) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_36_1(v1);

  return GameLibraryService.listGames(by:sortBy:upTo:after:belongingTo:)();
}

uint64_t sub_227D1B39C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 16) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_28_0(v1);

  return GameLibraryService.listGames(with:)();
}

uint64_t sub_227D1B42C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameLibraryService.getAvailableGameGenres(with:)();
}

uint64_t sub_227D1B4B0()
{
  OUTLINED_FUNCTION_0_58();
  sub_227B0F918(v0);
  v1 = OUTLINED_FUNCTION_9_2();

  return MEMORY[0x2821FF4E0](v1);
}

uint64_t sub_227D1B51C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_58();
  sub_227B0F918(v2);
  OUTLINED_FUNCTION_11_23();
  sub_227B0F918(v3);
  OUTLINED_FUNCTION_38_1();
  return sub_227D49428();
}

uint64_t sub_227D1B5B8@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_0_58();
  sub_227B0F918(v3);
  OUTLINED_FUNCTION_11_23();
  sub_227B0F918(v4);
  OUTLINED_FUNCTION_38_1();
  result = sub_227D49438();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t GameLibraryService.purchaseHistory()()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = *v0;
  v3 = sub_227D49458();
  v1[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[6] = v4;
  v1[7] = OUTLINED_FUNCTION_30();
  v5 = sub_227D49D58();
  v1[8] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[9] = v6;
  v1[10] = OUTLINED_FUNCTION_30();
  v7 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227D1B768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    v13 = v12[10];
    OUTLINED_FUNCTION_36();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D28();
    if (v13)
    {
      (*(v12[9] + 8))(v12[10], v12[8]);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
    }

    else
    {
      sub_227D1BF80();
      sub_227D1BFD4();
      sub_227D49D38();
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v27 = swift_task_alloc();
      v12[11] = v27;
      OUTLINED_FUNCTION_0_58();
      sub_227B0F918(v28);
      OUTLINED_FUNCTION_61_12();
      *v27 = v29;
      v27[1] = sub_227D1B9B4;
      OUTLINED_FUNCTION_1_35();
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v30);
    }
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v12[13] = v23;
    *v23 = v24;
    v23[1] = sub_227D1BB4C;
    OUTLINED_FUNCTION_46();

    return GameLibraryService.purchaseHistory()(v25);
  }
}

uint64_t sub_227D1B9B4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227D1BAAC()
{
  OUTLINED_FUNCTION_20();
  (*(v0[6] + 8))(v0[7], v0[5]);
  v1 = OUTLINED_FUNCTION_57_0();
  v2(v1);

  OUTLINED_FUNCTION_18();

  return v3();
}

uint64_t sub_227D1BB4C()
{
  OUTLINED_FUNCTION_20();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_81_1();

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_227D1BC68()
{
  OUTLINED_FUNCTION_6();
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v0[9] + 8))(v0[10], v0[8]);

  OUTLINED_FUNCTION_18();

  return v1();
}

uint64_t sub_227D1BD00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227B355D0;

  return GameLibraryService.purchaseHistory()();
}

uint64_t GameLibraryService.purchaseHistory()(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227D1BDBC, v1);
}

uint64_t sub_227D1BDBC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_40_10(v0[23]);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[24] = v1;
  *v1 = v2;
  v1[1] = sub_227D1BE60;
  v3 = v0[22];

  return GameLibraryAggregateService.purchaseHistory()(v3);
}

uint64_t sub_227D1BE60()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 200) = v0;

  sub_227D14460(v3 + 16);
  if (v0)
  {
    v7 = *(v3 + 184);

    return MEMORY[0x2822009F8](sub_227D1A9D0, v7, 0);
  }

  else
  {
    OUTLINED_FUNCTION_18();

    return v8();
  }
}

unint64_t sub_227D1BF80()
{
  result = qword_27D7EA458;
  if (!qword_27D7EA458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA458);
  }

  return result;
}

unint64_t sub_227D1BFD4()
{
  result = qword_27D7EA460;
  if (!qword_27D7EA460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA460);
  }

  return result;
}

uint64_t sub_227D1C1B8(uint64_t a1)
{
  result = sub_227D49EF8();
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

unint64_t OUTLINED_FUNCTION_52_10(uint64_t a1)
{

  return sub_227B15ABC(a1);
}

unint64_t OUTLINED_FUNCTION_55_11(uint64_t a1)
{

  return sub_227B0F918(a1);
}

unint64_t OUTLINED_FUNCTION_67_3(uint64_t a1)
{

  return sub_227D17298(a1);
}

void OUTLINED_FUNCTION_85_9()
{
  v1 = *(v0 + 25);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 24) = v1 & 1;
}

uint64_t OUTLINED_FUNCTION_112_6()
{

  return sub_227D14460(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_113_7(uint64_t a1)
{
  *(v1 + 112) = a1;

  return sub_227D49D58();
}

double sub_227D1C498()
{
  sub_227D4DC48();

  sub_227D4DC38();
  return result;
}

void *GameServicesDataProvider.__allocating_init(support:gameRestrictionsProvider:)(void *a1, void *a2)
{
  sub_227B11EE8(a1, v7);
  sub_227B0F2D8(v7, v10);
  v4 = *sub_227B0F3EC();
  sub_227B11EE8(a1, v9);
  sub_227B11EE8(a2, v8);
  sub_227D1C8A4(v10, v7);

  v5 = sub_227D229A0(&unk_227D66840, 0, &unk_227D66848, 0, v7, v4, v9, v8);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  sub_227D22BE8(v10);
  return v5;
}

uint64_t sub_227D1C6A8()
{
  OUTLINED_FUNCTION_6();
  v2 = sub_227C3F64C();
  OUTLINED_FUNCTION_63_5(v2);
  v3 = (*v0 + 136) & 0xFFFFFFFFFFFFLL | 0xD8D1000000000000;
  *(v1 + 72) = *(*v0 + 136);
  *(v1 + 80) = v3;

  v4 = OUTLINED_FUNCTION_57_0();

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_227D1C748()
{
  OUTLINED_FUNCTION_6();
  v2 = sub_227B17260();
  OUTLINED_FUNCTION_63_5(v2);
  v3 = (*v0 + 136) & 0xFFFFFFFFFFFFLL | 0x2389000000000000;
  *(v1 + 72) = *(*v0 + 136);
  *(v1 + 80) = v3;

  v4 = OUTLINED_FUNCTION_57_0();

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_227D1C7D4()
{
  OUTLINED_FUNCTION_20();
  v1 = (*(v0 + 72))(v0 + 16);
  v3 = v2;

  sub_227B1DE58(v0 + 16, &qword_27D7E92C0, &qword_227D5CC28);
  v4 = *(v0 + 8);

  return v4(v1, v3);
}

uint64_t sub_227D1C934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = a5[3];
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a5, v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  (*(v18 + 16))(v16 - v15);
  v19 = a6[3];
  v20 = __swift_mutable_project_boxed_opaque_existential_1(a6, v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  v23 = v22 - v21;
  (*(v24 + 16))(v22 - v21);
  v25 = a9(a1, a2, a3, a4, v17, v23, a7, a8);
  __swift_destroy_boxed_opaque_existential_0(a6);
  __swift_destroy_boxed_opaque_existential_0(a5);
  return v25;
}

uint64_t sub_227D1CB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D1CB28()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[5];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  OUTLINED_FUNCTION_280();
  OUTLINED_FUNCTION_32();
  v11 = (v4 + *v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[6] = v5;
  *v5 = v6;
  v5[1] = sub_227B7F4E4;
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return v11(v9, v7, v8, v2, v3);
}

uint64_t sub_227D1CC44()
{
  v1 = type metadata accessor for GameServicesEnvironment(0);
  v2 = OUTLINED_FUNCTION_5(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  v6 = v0[80];
  __swift_project_boxed_opaque_existential_1(v0 + 76, v0[79]);
  v7 = OUTLINED_FUNCTION_280();
  v8(v7, v6);
  v9 = *(v5 + 24);
  OUTLINED_FUNCTION_13_19();
  sub_227B17AA8(v5, v10);
  return v9;
}

uint64_t GameServicesDataProvider.clearStores(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D1CD04()
{
  OUTLINED_FUNCTION_51_0();
  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 144), *(*(v0 + 32) + 168));
  OUTLINED_FUNCTION_280();
  OUTLINED_FUNCTION_32();
  v7 = (v1 + *v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_164_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_42_9(v3);

  return v7(v5);
}

uint64_t GameServicesDataProvider.observeNotifications()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69B8, &qword_227D4EAB0);
  v3 = OUTLINED_FUNCTION_5(v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - v4;
  v6 = v0[79];
  v7 = v0[80];
  __swift_project_boxed_opaque_existential_1(v0 + 76, v6);
  v8 = (*(v7 + 16))(v6, v7);
  v9 = sub_227D4D2D8();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v9);
  OUTLINED_FUNCTION_378();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;
  v10[5] = v1;

  return sub_227BBD294(0, 0, v5, &unk_227D66868, v10);
}

uint64_t sub_227D1CF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D1CF50()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 48) = v2;
  *v2 = v3;
  v2[1] = sub_227D1D034;
  v4 = *(v0 + 16);
  v5 = MEMORY[0x277D84F78] + 8;
  v6 = MEMORY[0x277D84F78] + 8;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v4, v5, v6, 0, 0, &unk_227D669F0, v1, v7);
}

uint64_t sub_227D1D034()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_18();

  return v3();
}

uint64_t sub_227D1D130()
{
  OUTLINED_FUNCTION_6();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69B8, &qword_227D4EAB0);
  OUTLINED_FUNCTION_5(v4);
  v0[5] = OUTLINED_FUNCTION_30();
  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227D1D1B8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_227D4D2D8();
  OUTLINED_FUNCTION_36_9();
  OUTLINED_FUNCTION_378();
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v3;
  v4[5] = v2;
  v5 = v3;

  sub_227D1DA8C(0xD000000000000011, 0x8000000227D78FD0, v1, &unk_227D66A00, v4);
  sub_227B1DE58(v1, &qword_27D7E69B8, &qword_227D4EAB0);
  OUTLINED_FUNCTION_36_9();
  OUTLINED_FUNCTION_378();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  v6[5] = v2;
  v7 = v5;

  sub_227D1DA8C(0xD00000000000001BLL, 0x8000000227D78FF0, v1, &unk_227D66A10, v6);
  sub_227B1DE58(v1, &qword_27D7E69B8, &qword_227D4EAB0);
  OUTLINED_FUNCTION_36_9();
  OUTLINED_FUNCTION_378();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  v8[5] = v2;
  v9 = v7;

  sub_227D1DA8C(0xD000000000000019, 0x8000000227D79010, v1, &unk_227D66A20, v8);
  sub_227B1DE58(v1, &qword_27D7E69B8, &qword_227D4EAB0);
  OUTLINED_FUNCTION_36_9();
  OUTLINED_FUNCTION_378();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v9;
  v10[5] = v2;
  v11 = v9;

  sub_227D1DA8C(0xD000000000000025, 0x8000000227D79030, v1, &unk_227D66A30, v10);
  sub_227B1DE58(v1, &qword_27D7E69B8, &qword_227D4EAB0);

  OUTLINED_FUNCTION_18();

  return v12();
}

uint64_t sub_227D1D440()
{
  OUTLINED_FUNCTION_6();
  v0[3] = v1;
  v0[4] = v2;
  v3 = sub_227D48E58();
  v0[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[6] = v4;
  v0[7] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA480, &unk_227D66A38);
  OUTLINED_FUNCTION_5(v5);
  v0[8] = OUTLINED_FUNCTION_30();
  v6 = sub_227D4D498();
  v0[9] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v0[10] = v7;
  v0[11] = OUTLINED_FUNCTION_30();
  v8 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227D1D55C()
{
  OUTLINED_FUNCTION_20();
  v2 = *sub_227B122C8();
  OUTLINED_FUNCTION_65_9(v2);

  sub_227D4D488();
  OUTLINED_FUNCTION_2_38();
  sub_227B12AE0(v3, v4, MEMORY[0x277CC9D70]);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v1 + 96) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_28_14(v5);

  return MEMORY[0x282200308](v7);
}

uint64_t sub_227D1D624()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 104) = v0;

  if (v0)
  {
    v7 = sub_227D1D864;
  }

  else
  {
    v7 = sub_227D1D720;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_227D1D734()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_35_8();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_537();
    v3(v2);

    OUTLINED_FUNCTION_18();

    return v4();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_26_14();
    v7(v6);
    *(v0 + 112) = sub_227D48E48();
    v8 = swift_task_alloc();
    *(v0 + 120) = v8;
    *v8 = v0;
    v8[1] = sub_227D1D8DC;
    OUTLINED_FUNCTION_13_2();

    return sub_227B36230();
  }
}

uint64_t sub_227D1D864()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 16) = *(v0 + 104);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
  v2 = MEMORY[0x277D84A98];
  v3 = OUTLINED_FUNCTION_34_11(v1);
  v4 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v3, v2, v4);
}

uint64_t sub_227D1D8DC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227D1D9DC()
{
  OUTLINED_FUNCTION_6();
  (*(v0[6] + 8))(v0[7], v0[5]);
  OUTLINED_FUNCTION_2_38();
  sub_227B12AE0(v1, v2, MEMORY[0x277CC9D70]);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[12] = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_28_14(v3);

  return MEMORY[0x282200308](v5);
}

uint64_t sub_227D1DA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69B8, &qword_227D4EAB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v28 - v12;
  sub_227B15F50(a3, v28 - v12, &qword_27D7E69B8, &qword_227D4EAB0);
  v14 = sub_227D4D2D8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);

  if (EnumTagSinglePayload == 1)
  {
    sub_227B1DE58(v13, &qword_27D7E69B8, &qword_227D4EAB0);
  }

  else
  {
    sub_227D4D2C8();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_227D4D278();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_227D4D018() + 32;
      v21 = *v6;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v19 | v17)
      {
        v30[0] = 0;
        v30[1] = 0;
        v23 = v30;
        v30[2] = v17;
        v30[3] = v19;
      }

      else
      {
        v23 = 0;
      }

      v29[0] = 1;
      v29[1] = v23;
      v29[2] = v21;
      v28[1] = 7;
      v28[2] = v29;
      v28[3] = v20;
      swift_task_create();
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = *v6;
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  v26 = (v19 | v17);
  if (v19 | v17)
  {
    v31[0] = 0;
    v31[1] = 0;
    v26 = v31;
    v31[2] = v17;
    v31[3] = v19;
  }

  v30[4] = 1;
  v30[5] = v26;
  v30[6] = v24;
  swift_task_create();
}

uint64_t sub_227D1DD60()
{
  OUTLINED_FUNCTION_6();
  v0[3] = v1;
  v0[4] = v2;
  v3 = sub_227D4CAB8();
  v0[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[6] = v4;
  v0[7] = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for GameCenterServerNotification.GameActivityPartyURLReceivedOrOpened(0);
  OUTLINED_FUNCTION_5(v5);
  v0[8] = OUTLINED_FUNCTION_30();
  v6 = sub_227D48E58();
  v0[9] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v0[10] = v7;
  v0[11] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA480, &unk_227D66A38);
  OUTLINED_FUNCTION_5(v8);
  v0[12] = OUTLINED_FUNCTION_30();
  v9 = sub_227D4D498();
  v0[13] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v0[14] = v10;
  v0[15] = OUTLINED_FUNCTION_30();
  v11 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227D1DEE8()
{
  OUTLINED_FUNCTION_20();
  v2 = *sub_227B12D14();
  OUTLINED_FUNCTION_65_9(v2);

  sub_227D4D488();
  OUTLINED_FUNCTION_2_38();
  sub_227B12AE0(v3, v4, MEMORY[0x277CC9D70]);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v1 + 128) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_9_14(v5);

  return MEMORY[0x282200308](v7);
}

uint64_t sub_227D1DFB0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 136) = v0;

  if (v0)
  {
    v7 = sub_227D1E228;
  }

  else
  {
    v7 = sub_227D1E0AC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_227D1E0C0()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_35_8();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_537();
    v3(v2);

    OUTLINED_FUNCTION_18();

    return v4();
  }

  else
  {
    v6 = *(v0 + 64);
    v7 = OUTLINED_FUNCTION_26_14();
    v8(v7);
    v9 = sub_227D48E48();
    sub_227BBFE44(v9, v6);

    v10 = swift_task_alloc();
    *(v0 + 144) = v10;
    *v10 = v0;
    v10[1] = sub_227D1E2A0;

    return sub_227B5A294();
  }
}

uint64_t sub_227D1E228()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 16) = *(v0 + 136);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
  v2 = MEMORY[0x277D84A98];
  v3 = OUTLINED_FUNCTION_34_11(v1);
  v4 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v3, v2, v4);
}

uint64_t sub_227D1E2A0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 152) = v0;

  if (v0)
  {
    v7 = sub_227D1E454;
  }

  else
  {
    v7 = sub_227D1E39C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_227D1E39C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_33_10();
  v1 = OUTLINED_FUNCTION_57_0();
  v2(v1);
  OUTLINED_FUNCTION_2_38();
  sub_227B12AE0(v3, v4, MEMORY[0x277CC9D70]);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 128) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_9_14(v5);

  return MEMORY[0x282200308](v7);
}

uint64_t sub_227D1E454()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 152);
  sub_227D4AA58();
  v2 = v1;
  v3 = sub_227D4CA98();
  v4 = sub_227D4D438();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 152);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    OUTLINED_FUNCTION_435(&dword_227B0D000, v10, v11, "Failed to handle activity open URL: %@");
    sub_227B1DE58(v7, &qword_27D7E68C8, &qword_227D4F740);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_5_2();
  }

  v12 = *(v0 + 152);

  v13 = OUTLINED_FUNCTION_91_0();
  v14(v13);
  OUTLINED_FUNCTION_33_10();
  v15 = OUTLINED_FUNCTION_57_0();
  v16(v15);
  OUTLINED_FUNCTION_2_38();
  sub_227B12AE0(v17, v18, MEMORY[0x277CC9D70]);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 128) = v19;
  *v19 = v20;
  v21 = OUTLINED_FUNCTION_9_14(v19);

  return MEMORY[0x282200308](v21);
}

uint64_t sub_227D1E604()
{
  OUTLINED_FUNCTION_6();
  v0[21] = v1;
  v0[22] = v2;
  v3 = sub_227D4CAB8();
  v0[23] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[24] = v4;
  v0[25] = OUTLINED_FUNCTION_30();
  v5 = sub_227D48E58();
  v0[26] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[27] = v6;
  v0[28] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA480, &unk_227D66A38);
  OUTLINED_FUNCTION_5(v7);
  v0[29] = OUTLINED_FUNCTION_30();
  v8 = sub_227D4D498();
  v0[30] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v0[31] = v9;
  v0[32] = OUTLINED_FUNCTION_30();
  v10 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227D1E76C()
{
  OUTLINED_FUNCTION_20();
  v2 = *sub_227B13080();
  OUTLINED_FUNCTION_65_9(v2);

  sub_227D4D488();
  OUTLINED_FUNCTION_2_38();
  sub_227B12AE0(v3, v4, MEMORY[0x277CC9D70]);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v1 + 264) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_7_24(v5);

  return MEMORY[0x282200308](v7);
}

uint64_t sub_227D1E834()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 272) = v0;

  if (v0)
  {
    v7 = sub_227D1EABC;
  }

  else
  {
    v7 = sub_227D1E930;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_227D1E944()
{
  OUTLINED_FUNCTION_166();
  v12 = v0;
  OUTLINED_FUNCTION_35_8();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_537();
    v3(v2);

    OUTLINED_FUNCTION_18();

    return v4();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_26_14();
    v7(v6);
    v8 = sub_227D48E48();
    sub_227BC07F4(v8, __src);

    memcpy(v0 + 2, __src, 0x48uLL);
    memcpy(v0 + 11, v0 + 2, 0x48uLL);
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v0[35] = v9;
    *v9 = v10;
    v9[1] = sub_227D1EB34;

    return sub_227B60938();
  }
}

uint64_t sub_227D1EABC()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 160) = *(v0 + 272);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
  v2 = MEMORY[0x277D84A98];
  v3 = OUTLINED_FUNCTION_34_11(v1);
  v4 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v3, v2, v4);
}

uint64_t sub_227D1EB34()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 288) = v0;

  if (v0)
  {
    v7 = sub_227D1ECEC;
  }

  else
  {
    sub_227B6407C(v3 + 16);
    v7 = sub_227D1EC3C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_227D1EC3C()
{
  OUTLINED_FUNCTION_6();
  (*(v0[27] + 8))(v0[28], v0[26]);
  OUTLINED_FUNCTION_2_38();
  sub_227B12AE0(v1, v2, MEMORY[0x277CC9D70]);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[33] = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_7_24(v3);

  return MEMORY[0x282200308](v5);
}

uint64_t sub_227D1ECEC()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[36];
  sub_227B6407C((v0 + 2));
  sub_227D4AA58();
  v2 = v1;
  v3 = sub_227D4CA98();
  v4 = sub_227D4D438();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[36];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    OUTLINED_FUNCTION_435(&dword_227B0D000, v10, v11, "Failed to handle activity referral deep link open URL: %@");
    sub_227B1DE58(v7, &qword_27D7E68C8, &qword_227D4F740);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_5_2();
  }

  v12 = v0[36];

  v13 = OUTLINED_FUNCTION_91_0();
  v14(v13);
  (*(v0[27] + 8))(v0[28], v0[26]);
  OUTLINED_FUNCTION_2_38();
  sub_227B12AE0(v15, v16, MEMORY[0x277CC9D70]);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[33] = v17;
  *v17 = v18;
  v19 = OUTLINED_FUNCTION_7_24(v17);

  return MEMORY[0x282200308](v19);
}

uint64_t sub_227D1EEA4()
{
  OUTLINED_FUNCTION_6();
  v0[5] = v1;
  v0[6] = v2;
  v3 = sub_227D4CAB8();
  v0[7] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[8] = v4;
  v0[9] = OUTLINED_FUNCTION_30();
  v5 = sub_227D48E58();
  v0[10] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[11] = v6;
  v0[12] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA480, &unk_227D66A38);
  OUTLINED_FUNCTION_5(v7);
  v0[13] = OUTLINED_FUNCTION_30();
  v8 = sub_227D4D498();
  v0[14] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v0[15] = v9;
  v0[16] = OUTLINED_FUNCTION_30();
  v10 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227D1F00C()
{
  OUTLINED_FUNCTION_20();
  v2 = *sub_227B14000();
  OUTLINED_FUNCTION_65_9(v2);

  sub_227D4D488();
  OUTLINED_FUNCTION_2_38();
  sub_227B12AE0(v3, v4, MEMORY[0x277CC9D70]);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v1 + 136) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_8_18(v5);

  return MEMORY[0x282200308](v7);
}

uint64_t sub_227D1F0D4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 144) = v0;

  if (v0)
  {
    v7 = sub_227D1F33C;
  }

  else
  {
    v7 = sub_227D1F1D0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_227D1F1E4()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_35_8();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_537();
    v3(v2);

    OUTLINED_FUNCTION_18();

    return v4();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_26_14();
    v7(v6);
    v8 = sub_227D48E48();
    sub_227BC03A0(v8, v0 + 2);

    v9 = v0[3];
    v0[19] = v0[2];
    v0[20] = v9;
    v10 = swift_task_alloc();
    v0[21] = v10;
    *v10 = v0;
    v10[1] = sub_227D1F3B4;

    return sub_227B621B4();
  }
}

uint64_t sub_227D1F33C()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 32) = *(v0 + 144);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
  v2 = MEMORY[0x277D84A98];
  v3 = OUTLINED_FUNCTION_34_11(v1);
  v4 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v3, v2, v4);
}

uint64_t sub_227D1F3B4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (v0)
  {
    v7 = sub_227D1F56C;
  }

  else
  {

    v7 = sub_227D1F4BC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_227D1F4BC()
{
  OUTLINED_FUNCTION_6();
  (*(v0[11] + 8))(v0[12], v0[10]);
  OUTLINED_FUNCTION_2_38();
  sub_227B12AE0(v1, v2, MEMORY[0x277CC9D70]);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[17] = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_8_18(v3);

  return MEMORY[0x282200308](v5);
}

uint64_t sub_227D1F56C(uint64_t a1)
{
  v35 = v1;
  v2 = v1[22];
  sub_227D4AA58();
  v3 = v2;
  sub_227D4CE58();
  v4 = sub_227D4CA98();
  v5 = sub_227D4D438();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[22];
  v8 = v1[20];
  if (v6)
  {
    v9 = v1[19];
    v32 = v1[10];
    v33 = v1[12];
    v30 = v1[9];
    v31 = v1[11];
    v10 = v1[8];
    v29 = v1[7];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v34 = v13;
    *v11 = 138412546;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v15;
    *v12 = v15;
    *(v11 + 12) = 2080;
    v16 = sub_227B1B1A4(v9, v8, &v34);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_227B0D000, v4, v5, "Failed to handle most recent pending instance check: %@ for bundle ID: %s", v11, 0x16u);
    sub_227B1DE58(v12, &qword_27D7E68C8, &qword_227D4F740);
    OUTLINED_FUNCTION_5_2();
    __swift_destroy_boxed_opaque_existential_0(v13);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_5_2();

    (*(v10 + 8))(v30, v29);
    (*(v31 + 8))(v33, v32);
  }

  else
  {
    v17 = v1[9];
    v18 = v1[7];
    v19 = v1[8];

    (*(v19 + 8))(v17, v18);
    v20 = OUTLINED_FUNCTION_91_0();
    v21(v20);
  }

  OUTLINED_FUNCTION_2_38();
  sub_227B12AE0(v22, v23, MEMORY[0x277CC9D70]);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v1[17] = v24;
  *v24 = v25;
  OUTLINED_FUNCTION_8_18(v24);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x282200308](v26);
}

void *GameServicesDataProvider.deinit()
{
  sub_227D231D8((v0 + 2));

  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  sub_227D2322C((v0 + 23));
  sub_227D23280((v0 + 36));
  sub_227D14460((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0(v0 + 76);
  return v0;
}

uint64_t GameServicesDataProvider.__deallocating_deinit()
{
  GameServicesDataProvider.deinit();

  return MEMORY[0x2821FE8D8](v0, 648, 7);
}

uint64_t sub_227D1F88C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D1F8A0()
{
  OUTLINED_FUNCTION_20();
  if (sub_227D1CC44())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_165(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_4_29(v1);

    return sub_227CAE398();
  }

  else
  {
    sub_227D49E08();
    OUTLINED_FUNCTION_1_36();
    v6 = sub_227B12AE0(v4, v5, MEMORY[0x277D0CE88]);
    OUTLINED_FUNCTION_5_5(v6);
    OUTLINED_FUNCTION_32_11();
    sub_227D49DC8();
    swift_willThrow();
    OUTLINED_FUNCTION_18();

    return v7();
  }
}

uint64_t sub_227D1F9B0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D1F9C8()
{
  OUTLINED_FUNCTION_6();
  if (sub_227D1CC44())
  {
    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_164_1(v1);
    *v2 = v3;
    OUTLINED_FUNCTION_42_9(v2);
    OUTLINED_FUNCTION_10_20(v4);

    return sub_227CAF680();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 48) = v6;
    *v6 = v0;
    OUTLINED_FUNCTION_42_9(v6);
    OUTLINED_FUNCTION_16_12(v7);

    return sub_227B79914();
  }
}

uint64_t sub_227D1FAC8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D1FAE0()
{
  OUTLINED_FUNCTION_20();
  if (sub_227D1CC44())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_164_1(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_42_9(v1);
    OUTLINED_FUNCTION_10_20(v3);

    return sub_227CB0368();
  }

  else
  {
    sub_227D49E08();
    OUTLINED_FUNCTION_1_36();
    v7 = sub_227B12AE0(v5, v6, MEMORY[0x277D0CE88]);
    OUTLINED_FUNCTION_5_5(v7);
    OUTLINED_FUNCTION_32_11();
    sub_227D49DC8();
    swift_willThrow();
    OUTLINED_FUNCTION_18();

    return v8();
  }
}

uint64_t sub_227D1FBF4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D1FC0C()
{
  OUTLINED_FUNCTION_20();
  if (sub_227D1CC44())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_164_1(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_42_9(v1);
    OUTLINED_FUNCTION_10_20(v3);

    return sub_227CB1DE4();
  }

  else
  {
    sub_227D49E08();
    OUTLINED_FUNCTION_1_36();
    v7 = sub_227B12AE0(v5, v6, MEMORY[0x277D0CE88]);
    OUTLINED_FUNCTION_5_5(v7);
    OUTLINED_FUNCTION_32_11();
    sub_227D49DC8();
    swift_willThrow();
    OUTLINED_FUNCTION_18();

    return v8();
  }
}

uint64_t sub_227D1FD20(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D1FD34()
{
  OUTLINED_FUNCTION_20();
  if (sub_227D1CC44())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_165(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_4_29(v1);

    return sub_227CB364C();
  }

  else
  {
    sub_227D49E08();
    OUTLINED_FUNCTION_1_36();
    v6 = sub_227B12AE0(v4, v5, MEMORY[0x277D0CE88]);
    OUTLINED_FUNCTION_5_5(v6);
    OUTLINED_FUNCTION_32_11();
    sub_227D49DC8();
    swift_willThrow();
    OUTLINED_FUNCTION_18();

    return v7();
  }
}

uint64_t sub_227D1FE44(uint64_t a1, double a2, double a3)
{
  *(v4 + 40) = v3;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D1FE60()
{
  OUTLINED_FUNCTION_6();
  if (sub_227D1CC44())
  {
    v1 = swift_task_alloc();
    v0[6] = v1;
    *v1 = v0;
    v1[1] = sub_227C8EC54;
    OUTLINED_FUNCTION_5_28();

    return sub_227CB5FF4();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_227BCD2C4;
    v4 = OUTLINED_FUNCTION_16_12(v0[2]);

    return sub_227D47FC4(v4, v5, v6);
  }
}

uint64_t sub_227D1FF84()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 16);
  v2 = v1[80];
  __swift_project_boxed_opaque_existential_1(v1 + 76, v1[79]);
  OUTLINED_FUNCTION_280();
  OUTLINED_FUNCTION_32();
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_227D2009C;
  v5 = OUTLINED_FUNCTION_13_2();

  return v7(v5, v2);
}

uint64_t sub_227D2009C()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  OUTLINED_FUNCTION_14();
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  OUTLINED_FUNCTION_115();

  return v5(v2);
}

uint64_t sub_227D20184(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D20198()
{
  OUTLINED_FUNCTION_6();
  if (sub_227D1CC44())
  {
    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_165(v1);
    *v2 = v3;
    OUTLINED_FUNCTION_4_29(v2);

    return sub_227D24240();
  }

  else
  {
    v5 = swift_task_alloc();
    v6 = OUTLINED_FUNCTION_164_1(v5);
    *v6 = v7;
    v6[1] = sub_227D237C4;
    OUTLINED_FUNCTION_16_12(*(v0 + 16));

    return sub_227CFA960();
  }
}

uint64_t sub_227D20294(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D202AC()
{
  OUTLINED_FUNCTION_6();
  if (sub_227D1CC44())
  {
    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_164_1(v1);
    *v2 = v3;
    OUTLINED_FUNCTION_42_9(v2);
    OUTLINED_FUNCTION_10_20(v4);

    return sub_227D251D4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 48) = v6;
    *v6 = v0;
    OUTLINED_FUNCTION_42_9(v6);
    OUTLINED_FUNCTION_16_12(v7);

    return sub_227CF6FF0();
  }
}

uint64_t sub_227D203AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D203C8()
{
  OUTLINED_FUNCTION_6();
  if (sub_227D1CC44())
  {
    v1 = swift_task_alloc();
    v0[8] = v1;
    *v1 = v0;
    v1[1] = sub_227BCBA2C;
    OUTLINED_FUNCTION_5_28();

    return sub_227D25D4C();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_227CED91C;
    OUTLINED_FUNCTION_16_12(v0[2]);

    return sub_227CF8130();
  }
}

uint64_t sub_227D204E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D204FC()
{
  OUTLINED_FUNCTION_6();
  if (sub_227D1CC44())
  {
    v1 = swift_task_alloc();
    v0[7] = v1;
    *v1 = v0;
    v1[1] = sub_227D237CC;
    OUTLINED_FUNCTION_10_20(v0[2]);

    return sub_227D26B34();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_227D237D0;
    OUTLINED_FUNCTION_16_12(v0[2]);

    return sub_227CF9594();
  }
}

uint64_t sub_227D20610(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D20624()
{
  OUTLINED_FUNCTION_6();
  if (sub_227D1CC44())
  {
    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_165(v1);
    *v2 = v3;
    OUTLINED_FUNCTION_4_29(v2);

    return sub_227D27BD4();
  }

  else
  {
    v5 = swift_task_alloc();
    v6 = OUTLINED_FUNCTION_164_1(v5);
    *v6 = v7;
    v6[1] = sub_227B4AF70;
    OUTLINED_FUNCTION_16_12(*(v0 + 16));

    return sub_227CFA9F0();
  }
}

uint64_t sub_227D20720(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D20734()
{
  OUTLINED_FUNCTION_20();
  if (sub_227D1CC44())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_165(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_4_29(v1);

    return sub_227D29978();
  }

  else
  {
    sub_227D49E08();
    OUTLINED_FUNCTION_1_36();
    v6 = sub_227B12AE0(v4, v5, MEMORY[0x277D0CE88]);
    OUTLINED_FUNCTION_5_5(v6);
    OUTLINED_FUNCTION_32_11();
    sub_227D49DC8();
    swift_willThrow();
    OUTLINED_FUNCTION_18();

    return v7();
  }
}

uint64_t sub_227D20844(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D20858()
{
  OUTLINED_FUNCTION_20();
  if (sub_227D1CC44())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_165(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_4_29(v1);

    return sub_227D2A578();
  }

  else
  {
    sub_227D49E08();
    OUTLINED_FUNCTION_1_36();
    v6 = sub_227B12AE0(v4, v5, MEMORY[0x277D0CE88]);
    OUTLINED_FUNCTION_5_5(v6);
    OUTLINED_FUNCTION_32_11();
    sub_227D49DC8();
    swift_willThrow();
    OUTLINED_FUNCTION_18();

    return v7();
  }
}

uint64_t sub_227D20968(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D2097C()
{
  OUTLINED_FUNCTION_20();
  if (sub_227D1CC44())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_165(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_4_29(v1);

    return sub_227D2B3CC();
  }

  else
  {
    sub_227D49E08();
    OUTLINED_FUNCTION_1_36();
    v6 = sub_227B12AE0(v4, v5, MEMORY[0x277D0CE88]);
    OUTLINED_FUNCTION_5_5(v6);
    OUTLINED_FUNCTION_32_11();
    sub_227D49DC8();
    swift_willThrow();
    OUTLINED_FUNCTION_18();

    return v7();
  }
}

uint64_t sub_227D20A8C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D20AA0()
{
  OUTLINED_FUNCTION_20();
  if (sub_227D1CC44())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_165(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_4_29(v1);

    return sub_227D2BE94();
  }

  else
  {
    sub_227D49E08();
    OUTLINED_FUNCTION_1_36();
    v6 = sub_227B12AE0(v4, v5, MEMORY[0x277D0CE88]);
    OUTLINED_FUNCTION_5_5(v6);
    OUTLINED_FUNCTION_32_11();
    sub_227D49DC8();
    swift_willThrow();
    OUTLINED_FUNCTION_18();

    return v7();
  }
}

uint64_t sub_227D20BB0()
{
  OUTLINED_FUNCTION_20();
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67F0, &unk_227D5BBE0);
  OUTLINED_FUNCTION_5(v2);
  v1[3] = OUTLINED_FUNCTION_30();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6800, &qword_227D64440);
  OUTLINED_FUNCTION_5(v3);
  v1[4] = OUTLINED_FUNCTION_30();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6808, &qword_227D4E590);
  OUTLINED_FUNCTION_5(v4);
  v1[5] = OUTLINED_FUNCTION_30();
  v5 = sub_227D4AA88();
  OUTLINED_FUNCTION_5(v5);
  v1[6] = OUTLINED_FUNCTION_30();
  v6 = sub_227D4AB28();
  v1[7] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[8] = v7;
  v1[9] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v1[10] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[11] = v9;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67B0, &unk_227D62060);
  OUTLINED_FUNCTION_10_0(v10);
  v1[15] = v11;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v12 = swift_task_alloc();
  v1[21] = v12;
  *v12 = v1;
  v12[1] = sub_227D20E44;
  OUTLINED_FUNCTION_13_2();

  return sub_227B223DC();
}

uint64_t sub_227D20E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_14();
  v19 = v18;
  OUTLINED_FUNCTION_2();
  *v20 = v19;
  *v20 = *v17;
  v19[22] = v21;
  v19[23] = v16;

  if (v16)
  {
    v35 = v19[9];
    v36 = v19[6];
    v37 = v19[5];
    v38 = v19[4];

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_23();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, v35, v36, v37, v38, a14, a15, a16);
  }

  else
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v31, v32, v33);
  }
}

void sub_227D21000()
{
  v1 = v0[22];
  v33 = *(v1 + 16);
  if (v33)
  {
    v2 = 0;
    v32 = v0[15];
    v29 = (v0[8] + 8);
    v30 = (v0[11] + 8);
    v31 = v1 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v3 = v0[23];
    v4 = MEMORY[0x277D84F90];
    v28 = v0[22];
    while (v2 < *(v1 + 16))
    {
      v6 = v0[19];
      v5 = v0[20];
      v7 = v0[7];
      sub_227B15F50(v31 + *(v32 + 72) * v2, v5, &qword_27D7E67B0, &unk_227D62060);
      sub_227B15F50(v5, v6, &qword_27D7E67B0, &unk_227D62060);
      if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
      {
        v8 = v0[19];
        sub_227B1DE58(v0[20], &qword_27D7E67B0, &unk_227D62060);
        sub_227B1DE58(v8, &qword_27D7E67B0, &unk_227D62060);
      }

      else
      {
        v9 = v0[19];
        v10 = v0[7];
        sub_227D4AAE8();
        (*v29)(v9, v10);
        v11 = sub_227D4A898();
        if (v3)
        {
          v23 = v0[20];
          v24 = v0[14];
          v25 = v0[10];

          (*v30)(v24, v25);
          sub_227B1DE58(v23, &qword_27D7E67B0, &unk_227D62060);

          OUTLINED_FUNCTION_29_13();

          OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_90();

          __asm { BRAA            X1, X16 }
        }

        v13 = v11;
        v14 = v12;
        (*v30)(v0[14], v0[10]);
        v15 = OUTLINED_FUNCTION_91_0();
        sub_227B1DE58(v15, v16, &unk_227D62060);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_227B25F88(0, *(v4 + 2) + 1, 1, v4);
        }

        v18 = *(v4 + 2);
        v17 = *(v4 + 3);
        if (v18 >= v17 >> 1)
        {
          v4 = sub_227B25F88((v17 > 1), v18 + 1, 1, v4);
        }

        v3 = 0;
        *(v4 + 2) = v18 + 1;
        v19 = &v4[16 * v18];
        *(v19 + 4) = v13;
        *(v19 + 5) = v14;
        v1 = v28;
      }

      if (v33 == ++v2)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
LABEL_15:
    v0[24] = v4;
    v20 = swift_task_alloc();
    v0[25] = v20;
    *v20 = v0;
    v20[1] = sub_227D21394;
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_90();

    sub_227C20758(v21);
  }
}

uint64_t sub_227D21394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  v18 = *v17;
  OUTLINED_FUNCTION_5_4();
  *v19 = v18;
  v20 = *v17;
  OUTLINED_FUNCTION_2();
  *v21 = v20;
  v18[26] = v22;
  v18[27] = v16;

  if (v16)
  {

    v36 = v18[6];
    v37 = v18[5];
    v38 = v18[4];
    v39 = v18[22];

    OUTLINED_FUNCTION_23();

    return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, v36, v37, v38, v39, a14, a15, a16);
  }

  else
  {

    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v32, v33, v34);
  }
}

uint64_t sub_227D21594()
{
  if (!*(v0[26] + 16))
  {

    v8 = v0[22];
LABEL_19:
    OUTLINED_FUNCTION_29_13();

    OUTLINED_FUNCTION_115();

    return v29(v8);
  }

  v39 = v0[26];
  v1 = v0[22];
  v2 = *(v1 + 16);
  if (!v2)
  {

    v8 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  v3 = v0[15];
  v4 = v0[11];
  v5 = v0[8];
  v45 = MEMORY[0x277D84F90];
  result = sub_227B26EC4(0, v2, 0);
  v7 = 0;
  v8 = v45;
  v42 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v43 = v1 + v42;
  v44 = v3;
  v40 = (v5 + 32);
  v38 = (v4 + 8);
  v34 = (v5 + 8);
  v41 = v0[27];
  v37 = v2;
  while (1)
  {
    if (v7 >= *(v0[22] + 16))
    {
      __break(1u);
      return result;
    }

    v10 = v0[16];
    v9 = v0[17];
    v11 = v0[7];
    v12 = *(v44 + 72);
    sub_227B15F50(v43 + v12 * v7, v9, &qword_27D7E67B0, &unk_227D62060);
    sub_227B15F50(v9, v10, &qword_27D7E67B0, &unk_227D62060);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {
      sub_227B1DE58(v0[16], &qword_27D7E67B0, &unk_227D62060);
      v13 = 1;
      goto LABEL_13;
    }

    v14 = *v40;
    (*v40)(v0[9], v0[16], v0[7]);
    sub_227D4AAE8();
    v15 = sub_227D4A898();
    if (v41)
    {
      break;
    }

    v17 = v15;
    v18 = v16;
    (*v38)(v0[13], v0[10]);
    if (*(v39 + 16) && (v19 = sub_227B2664C(v17, v18), (v20 & 1) != 0))
    {
      v21 = v0[9];
      v36 = v0[7];
      v35 = *(*(v39 + 56) + 8 * v19);

      sub_227D4AAE8();
      sub_227D4AA98();
      sub_227D4AB08();
      sub_227D4AB18();
      sub_227C20D44();
      sub_227D4AAC8();
      sub_227D4AAF8();
      sub_227D4AAA8();
      sub_227D4AAB8();
      sub_227D4AAD8();

      (*v34)(v21, v36);
    }

    else
    {
      v22 = v0[18];
      v23 = v0[9];
      v24 = v0[7];

      v14(v22, v23, v24);
    }

    v41 = 0;
    v13 = 0;
    v2 = v37;
LABEL_13:
    v25 = v0[17];
    __swift_storeEnumTagSinglePayload(v0[18], v13, 1, v0[7]);
    sub_227B1DE58(v25, &qword_27D7E67B0, &unk_227D62060);
    v27 = *(v45 + 16);
    v26 = *(v45 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_227B26EC4((v26 > 1), v27 + 1, 1);
    }

    ++v7;
    v28 = v0[18];
    *(v45 + 16) = v27 + 1;
    result = sub_227B26EE4(v28, v45 + v42 + v27 * v12);
    if (v2 == v7)
    {

      goto LABEL_19;
    }
  }

  v30 = v0[17];
  v31 = v0[9];
  v32 = v0[7];
  (*v38)(v0[13], v0[10]);
  (*v34)(v31, v32);
  sub_227B1DE58(v30, &qword_27D7E67B0, &unk_227D62060);

  OUTLINED_FUNCTION_29_13();

  OUTLINED_FUNCTION_18();

  return v33();
}

uint64_t sub_227D21B64()
{
  OUTLINED_FUNCTION_20();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v1[1] = sub_227B71AF0;

  return sub_227B24448();
}

uint64_t GameServicesDataProvider.refreshOnboarding(for:)()
{
  OUTLINED_FUNCTION_6();
  v1[33] = v2;
  v1[34] = v0;
  v3 = type metadata accessor for GameServicesEnvironment(0);
  v1[35] = v3;
  OUTLINED_FUNCTION_5(v3);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_227D21C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  v17 = *(v16 + 296);
  v19 = *(v16 + 272);
  v18 = *(v16 + 280);
  v20 = v19[79];
  v21 = v19[80];
  __swift_project_boxed_opaque_existential_1(v19 + 76, v20);
  (*(v21 + 8))(v20, v21);
  v22 = *(v17 + *(v18 + 32) + 8);
  *(v16 + 304) = v22;
  sub_227D4CE58();
  OUTLINED_FUNCTION_13_19();
  sub_227B17AA8(v17, v23);
  if (v22)
  {
    v24 = *(v16 + 280);
    v25 = *(v16 + 288);
    sub_227CF1700(*(v16 + 272) + 288, v16 + 16);
    v26 = v19[79];
    v27 = v19[80];
    __swift_project_boxed_opaque_existential_1(v19 + 76, v26);
    (*(v27 + 152))(v26, v27);
    v28 = v19[79];
    v29 = v19[80];
    __swift_project_boxed_opaque_existential_1(v19 + 76, v28);
    (*(v29 + 8))(v28, v29);
    v30 = v25 + *(v24 + 36);
    v31 = *v30;
    LOBYTE(v24) = *(v30 + 8);
    v32 = *(v30 + 16);
    LOBYTE(v29) = *(v30 + 24);
    v33 = *(v30 + 32);
    v34 = *(v30 + 40);
    OUTLINED_FUNCTION_13_19();
    sub_227B17AA8(v25, v35);
    *(v16 + 176) = v31;
    *(v16 + 184) = v24;
    *(v16 + 192) = v32;
    *(v16 + 200) = v29;
    *(v16 + 208) = v33;
    *(v16 + 216) = v34;
    sub_227B11EE8((v19 + 76), v16 + 224);
    v36 = *(v16 + 256);
    __swift_project_boxed_opaque_existential_1((v16 + 224), *(v16 + 248));
    v37 = sub_227D4A898();
    (*(v36 + 144))(v37);

    v50 = *(v16 + 218);
    v51 = *(v16 + 219);
    v52 = *(v16 + 220);
    v53 = *(v16 + 221);
    v54 = *(v16 + 222);
    v55 = *(v16 + 223);
    *(v16 + 328) = *(v16 + 217);
    *(v16 + 329) = v50;
    *(v16 + 330) = v51;
    *(v16 + 331) = v52;
    *(v16 + 332) = v53;
    *(v16 + 333) = v54;
    *(v16 + 334) = v55;
    v56 = swift_task_alloc();
    *(v16 + 312) = v56;
    *v56 = v16;
    v56[1] = sub_227D21FD8;
    OUTLINED_FUNCTION_23();

    return sub_227C1EDF0(v57, v58, v59, v60, v61, v62);
  }

  else
  {
    sub_227D49E08();
    OUTLINED_FUNCTION_1_36();
    v40 = sub_227B12AE0(v38, v39, MEMORY[0x277D0CE88]);
    OUTLINED_FUNCTION_5_5(v40);
    OUTLINED_FUNCTION_32_11();
    sub_227D49D98();
    swift_willThrow();

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_23();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_227D21FD8()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 320) = v0;

  if (v0)
  {
    sub_227D23280(v3 + 16);

    v7 = OUTLINED_FUNCTION_16();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    sub_227D23280(v3 + 16);

    __swift_destroy_boxed_opaque_existential_0((v3 + 224));

    OUTLINED_FUNCTION_18();

    return v10();
  }
}

uint64_t sub_227D22140()
{
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0((v0 + 224));

  OUTLINED_FUNCTION_18();

  return v1();
}

uint64_t GameServicesDataProvider.serverSetProfileSettings(_:)()
{
  OUTLINED_FUNCTION_20();
  v2 = v1;
  v3 = sub_227D4B318();
  v0[2] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[3] = v4;
  v5 = OUTLINED_FUNCTION_30();
  v0[4] = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[5] = v6;
  *v6 = v7;
  v6[1] = sub_227D222A0;

  return sub_227BDF360(v5, v2);
}

uint64_t sub_227D222A0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  v3[6] = v0;

  if (v0)
  {
    v7 = sub_227D22414;
  }

  else
  {
    (*(v3[3] + 8))(v3[4], v3[2]);
    v7 = sub_227D223B8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_227D223B8()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227D22414()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227D22484()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_27_14();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 48) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_51_11(v1);

  return v4(v3);
}

uint64_t sub_227D2253C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  v5 = OUTLINED_FUNCTION_53_7(v3, v4);
  *v6 = *v0;
  *(v7 + 56) = v5;

  v8 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227D22620()
{
  OUTLINED_FUNCTION_20();
  if (*(v0 + 56))
  {
    OUTLINED_FUNCTION_52_11();

    return v1();
  }

  else
  {
    sub_227D49E08();
    OUTLINED_FUNCTION_1_36();
    v5 = sub_227B12AE0(v3, v4, MEMORY[0x277D0CE88]);
    OUTLINED_FUNCTION_5_5(v5);
    OUTLINED_FUNCTION_32_11();
    sub_227D49D98();
    swift_willThrow();
    OUTLINED_FUNCTION_18();

    return v6();
  }
}

uint64_t sub_227D2271C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_27_14();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 48) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_51_11(v1);

  return v4(v3);
}

uint64_t sub_227D227D4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  v5 = OUTLINED_FUNCTION_53_7(v3, v4);
  *v6 = *v0;
  *(v7 + 56) = v5;

  v8 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227D228B8()
{
  OUTLINED_FUNCTION_20();
  if (*(v0 + 56))
  {
    OUTLINED_FUNCTION_52_11();

    return v1();
  }

  else
  {
    sub_227D49E08();
    OUTLINED_FUNCTION_1_36();
    v5 = sub_227B12AE0(v3, v4, MEMORY[0x277D0CE88]);
    OUTLINED_FUNCTION_5_5(v5);
    OUTLINED_FUNCTION_32_11();
    sub_227D49D98();
    swift_willThrow();
    OUTLINED_FUNCTION_18();

    return v6();
  }
}

void *sub_227D229A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  type metadata accessor for GameServicesDataProvider();
  v16 = swift_allocObject();
  sub_227D1C8A4(a5, v28);
  v27[3] = &type metadata for DefaultAMSDataProvider;
  v27[4] = &off_283B3D1B0;
  v17 = swift_allocObject();
  v27[0] = v17;
  v18 = v28[1];
  v17[1] = v28[0];
  v17[2] = v18;
  v17[3] = v28[2];
  v26[3] = type metadata accessor for DefaultChallengeStoreRegistry();
  v26[4] = &off_283B3C428;
  v26[0] = a6;

  sub_227D4DC48();
  sub_227D4DC38();
  v16[11] = v19;
  sub_227D4DC48();
  sub_227D4DC38();
  v16[12] = v20;
  sub_227B11EE8(v27, (v16 + 13));
  sub_227B11EE8(v26, (v16 + 18));
  sub_227B11EE8(a7, (v16 + 76));
  sub_227B11EE8(a7, v25);
  sub_227B132E8(v25, (v16 + 2));
  sub_227B11EE8(a7, v25);
  v21 = swift_allocObject();
  sub_227B12164(v25, v21 + 16);
  sub_227B11EE8(a7, v25);
  sub_227B11EE8(v27, v24);
  sub_227CAC6F8(&unk_227D66A70, v21, v25, v24, v16 + 23);
  sub_227B11EE8(v26, v25);
  sub_227B11EE8(a7, v24);
  sub_227B13308(v25, v24, (v16 + 36));
  sub_227B11EE8(a7, v25);
  sub_227B11EE8(a8, v24);
  sub_227C58E34(v23);
  sub_227C58E78(v25, v23, v24, v16 + 56);

  __swift_destroy_boxed_opaque_existential_0(a8);
  __swift_destroy_boxed_opaque_existential_0(a7);
  sub_227D22BE8(a5);
  __swift_destroy_boxed_opaque_existential_0(v26);
  __swift_destroy_boxed_opaque_existential_0(v27);
  v16[7] = a1;
  v16[8] = a2;
  v16[9] = a3;
  v16[10] = a4;
  return v16;
}

uint64_t sub_227D22C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v37 = a7;
  v38 = a8;
  v35 = a3;
  v36 = a4;
  v33 = a1;
  v34 = a2;
  v31 = a13;
  v32 = a12;
  v14 = *(a11 - 8);
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v31 - v19;
  v21 = *(a10 - 8);
  v22 = MEMORY[0x28223BE20](v18);
  v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v31 - v25;
  (*(v21 + 32))(&v31 - v25, v27, a10);
  (*(v14 + 32))(v20, a6, a11);
  v28 = swift_allocObject();
  (*(v21 + 16))(v24, v26, a10);
  (*(v14 + 16))(v17, v20, a11);
  v29 = sub_227D22EB8(v33, v34, v35, v36, v24, v17, v37, v38, v28, a10, a11, v32, v31);
  (*(v14 + 8))(v20, a11);
  (*(v21 + 8))(v26, a10);
  return v29;
}

uint64_t sub_227D22EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v33[3] = a10;
  v33[4] = a12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_1, a5, a10);
  v32[3] = a11;
  v32[4] = a13;
  v20 = __swift_allocate_boxed_opaque_existential_1(v32);
  (*(*(a11 - 8) + 32))(v20, a6, a11);
  sub_227D4DC48();
  sub_227D4DC38();
  *(a9 + 88) = v21;
  sub_227D4DC48();
  sub_227D4DC38();
  *(a9 + 96) = v22;
  sub_227B11EE8(v33, a9 + 104);
  sub_227B11EE8(v32, a9 + 144);
  sub_227B11EE8(a7, a9 + 608);
  sub_227B11EE8(a7, v31);
  sub_227B132E8(v31, __src);
  v23 = __src[1];
  *(a9 + 16) = __src[0];
  *(a9 + 32) = v23;
  *(a9 + 48) = *&__src[2];
  sub_227B11EE8(a7, __src);
  v24 = swift_allocObject();
  sub_227B12164(__src, v24 + 16);
  sub_227B11EE8(a7, v31);
  sub_227B11EE8(v33, v30);
  sub_227CAC6F8(&unk_227D66A68, v24, v31, v30, __src);
  memcpy((a9 + 184), __src, 0x68uLL);
  sub_227B11EE8(v32, v31);
  sub_227B11EE8(a7, v30);
  sub_227B13308(v31, v30, __src);
  memcpy((a9 + 288), __src, 0xA0uLL);
  sub_227B11EE8(a7, v31);
  sub_227B11EE8(a8, v30);
  sub_227C58E34(v28);
  sub_227C58E78(v31, v28, v30, __src);
  __swift_destroy_boxed_opaque_existential_0(a8);
  __swift_destroy_boxed_opaque_existential_0(a7);
  __swift_destroy_boxed_opaque_existential_0(v32);
  __swift_destroy_boxed_opaque_existential_0(v33);
  memcpy((a9 + 448), __src, 0xA0uLL);
  *(a9 + 56) = a1;
  *(a9 + 64) = a2;
  *(a9 + 72) = a3;
  *(a9 + 80) = a4;
  return a9;
}

uint64_t sub_227D23138()
{
  OUTLINED_FUNCTION_20();
  v2 = v1;
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_20_0(v5);
  *v6 = v9;
  v6[1] = sub_227B355D0;

  return sub_227D1CF38(v2, v7, v8, v4, v3);
}

uint64_t sub_227D23310()
{
  OUTLINED_FUNCTION_20();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v1[1] = sub_227B3E2E8;

  return sub_227D1D130();
}

uint64_t sub_227D233B0()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_24_13(v1);

  return sub_227D1D440();
}

uint64_t sub_227D23434()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_24_13(v1);

  return sub_227D1DD60();
}

uint64_t sub_227D234B8()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_24_13(v1);

  return sub_227D1E604();
}

uint64_t objectdestroyTm_3()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_378();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_227D23580()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_24_13(v1);

  return sub_227D1EEA4();
}

uint64_t sub_227D23604()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_27_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_31(v1);

  return v4(v3);
}

uint64_t sub_227D23694()
{
  OUTLINED_FUNCTION_20();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_43_10(v1);

  return sub_227D1CB10(v3, v4, v5, v6);
}

uint64_t sub_227D23728()
{
  OUTLINED_FUNCTION_20();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_43_10(v1);

  return sub_227D1CB10(v3, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_33_10()
{
  v2 = *(v0 + 64);

  return sub_227B17AA8(v2, type metadata accessor for GameCenterServerNotification.GameActivityPartyURLReceivedOrOpened);
}

uint64_t OUTLINED_FUNCTION_34_11(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_63_5(void *a1)
{
  *(v2 + 64) = *a1;

  return sub_227B11EE8(v1, v2 + 16);
}

uint64_t GameServiceRoot.__allocating_init(actorSystem:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_37();
  v2 = swift_allocObject();
  GameServiceRoot.init(actorSystem:dataProvider:)(a1, 0);
  return v2;
}

uint64_t GameServiceRoot.__allocating_init(actorSystem:dataProvider:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_37();
  v4 = swift_allocObject();
  GameServiceRoot.init(actorSystem:dataProvider:)(a1, a2);
  return v4;
}

void *GameServiceRoot.init(actorSystem:dataProvider:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_227D49EF8();
  v68 = *(v6 - 8);
  v69 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v67 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v66 = &v63 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v65 = &v63 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v63 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v63 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v63 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v63 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v63 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v63 - v28;
  if (sub_227D49CD8())
  {
    v63 = v18;
    v64 = v15;
    type metadata accessor for AchievementService(0);
    sub_227D49E48();
    v30 = static AchievementService.resolve(id:using:)(v29, a1);
    v31 = v29;
    v32 = v69;
    v68 = *(v68 + 8);
    (v68)(v31, v69);
    v3[2] = v30;
    type metadata accessor for AssetService(0);
    sub_227D49EB8();
    v33 = static AssetService.resolve(id:using:)(v27, a1);
    (v68)(v27, v32);
    v3[3] = v33;
    type metadata accessor for AuthenticationService(0);
    sub_227D49E68();
    v34 = static AuthenticationService.resolve(id:using:)(v24, a1);
    v35 = v24;
    v36 = v68;
    (v68)(v35, v32);
    v3[4] = v34;
    type metadata accessor for ChallengeService(0);
    sub_227D49E18();
    v37 = static ChallengeService.resolve(id:using:)(v21, a1);
    v38 = v63;
    v39 = v37;
    v36(v21, v32);
    v3[5] = v39;
    type metadata accessor for GameActivityService(0);
    sub_227D49E78();
    v40 = static GameActivityService.resolve(id:using:)(v38, a1);
    v36(v38, v32);
    v3[6] = v40;
    v41 = type metadata accessor for GameLibraryService(0);
    v42 = v64;
    sub_227D49EA8();
    v43 = static GameLibraryService.resolve(id:using:)(v42, a1);
    v44 = v66;
    v45 = v43;
    v36(v42, v69);
    v71 = v41;
    v72 = sub_227D2410C();
    *&v70 = v45;
    sub_227B132F0(&v70, (v3 + 7));
    type metadata accessor for LeaderboardService(0);
    v46 = v65;
    sub_227D49E58();
    v47 = static LeaderboardService.resolve(id:using:)(v46, a1);
    v48 = v69;
    v36(v46, v69);
    v3[12] = v47;
    type metadata accessor for OnboardingService(0);
    sub_227D49E28();
    v49 = static OnboardingService.resolve(id:using:)(v44, a1);
    v50 = v67;
    v51 = v49;
    v36(v44, v48);
    v3[14] = v51;
    type metadata accessor for ProfileService(0);
    sub_227D49EE8();
    v52 = static ProfileService.resolve(id:using:)(v50, a1);
    v36(v50, v48);

    v53 = 13;
LABEL_5:
    v3[v53] = v52;
    return v3;
  }

  if (a2)
  {
    type metadata accessor for AchievementService(0);
    OUTLINED_FUNCTION_308();
    swift_retain_n();

    v2[2] = sub_227B66250(v54, a2);
    type metadata accessor for AssetService(0);
    OUTLINED_FUNCTION_308();

    v2[3] = sub_227C8D97C(v55, a2);
    type metadata accessor for AuthenticationService(0);
    OUTLINED_FUNCTION_308();

    v2[4] = sub_227CAAD7C(v56, a2);
    type metadata accessor for ChallengeService(0);
    OUTLINED_FUNCTION_308();

    v2[5] = sub_227B7E2C4(v57, a2);
    type metadata accessor for GameActivityService(0);
    OUTLINED_FUNCTION_308();

    v2[6] = sub_227B3E9C4(v58, a2);
    type metadata accessor for GameLibraryService(0);
    OUTLINED_FUNCTION_308();

    v60 = sub_227D131E8(v59, a2);
    v2[10] = a1;
    v2[11] = sub_227D2410C();
    v2[7] = v60;
    type metadata accessor for LeaderboardService(0);
    OUTLINED_FUNCTION_308();

    v2[12] = sub_227BC8508();
    type metadata accessor for ProfileService(0);
    OUTLINED_FUNCTION_308();

    v2[13] = sub_227D41694(v61, a2);
    v52 = type metadata accessor for OnboardingService(0);
    sub_227D3C4F0();
    OUTLINED_FUNCTION_308();

    v53 = 14;
    goto LABEL_5;
  }

  result = sub_227D4D7F8();
  __break(1u);
  return result;
}

unint64_t sub_227D2410C()
{
  result = qword_27D7EA470;
  if (!qword_27D7EA470)
  {
    type metadata accessor for GameLibraryService(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA470);
  }

  return result;
}

void *GameServiceRoot.deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return v0;
}

uint64_t GameServiceRoot.__deallocating_deinit()
{
  GameServiceRoot.deinit();
  v0 = OUTLINED_FUNCTION_1_37();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_227D24240()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8288, &unk_227D58A00);
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_121();
  v1[7] = swift_task_alloc();
  v5 = sub_227D4A4F8();
  v1[8] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[9] = v6;
  v1[10] = OUTLINED_FUNCTION_121();
  v7 = swift_task_alloc();
  OUTLINED_FUNCTION_64_0(v7);
  v8 = sub_227D49328();
  v1[12] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[13] = v9;
  v1[14] = OUTLINED_FUNCTION_30();
  v10 = type metadata accessor for GameServicesEnvironment(0);
  v1[15] = v10;
  OUTLINED_FUNCTION_5(v10);
  v1[16] = OUTLINED_FUNCTION_30();
  v11 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227D243BC()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0[3] + 16);
  v2 = MEMORY[0x277D84F90];
  v0[18] = 0;
  v0[19] = v2;
  v0[17] = v1;
  if (v1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
    OUTLINED_FUNCTION_5(v3);
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_67_4(v4);
    *v5 = v6;
    OUTLINED_FUNCTION_90_6(v5);
    OUTLINED_FUNCTION_164();

    return sub_227D24B98();
  }

  else
  {
    OUTLINED_FUNCTION_135_8();

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_164();

    return v11(v9, v10, v11, v12, v13, v14, v15, v16);
  }
}

uint64_t sub_227D24514()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 168) = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_105_9();

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_163();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_163();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227D24B98()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[4] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_30();
  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227D24C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_177_1();
  OUTLINED_FUNCTION_119();
  sub_227D4A7E8();
  sub_227D4A6A8();
  OUTLINED_FUNCTION_42_10();
  v10[7] = v11;
  v12 = OUTLINED_FUNCTION_174();
  v13(v12);
  v10[8] = sub_227D4A7D8();
  v10[9] = v14;
  v15 = swift_task_alloc();
  v10[10] = v15;
  *v15 = v10;
  v15[1] = sub_227D24D6C;
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_128();

  return sub_227D29484();
}

uint64_t sub_227D24D6C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_58_8();
  v4 = v3;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  v4[11] = v1;
  v4[12] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_54_11();
  }

  else
  {

    OUTLINED_FUNCTION_66_10();
    v10 += 736;
    v4[13] = *v10;
    v4[14] = v10 & 0xFFFFFFFFFFFFLL | 0xC669000000000000;
    OUTLINED_FUNCTION_98_8();
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_227D24EA0()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 96);
  (*(v0 + 104))(*(v0 + 64), *(v0 + 72));
  *(v0 + 120) = v1;
  if (v1)
  {
    v2 = sub_227D25104;
    v3 = 0;
  }

  else
  {
    v4 = *(v0 + 88);

    OUTLINED_FUNCTION_45();
    v5 += 464;
    *(v0 + 128) = *v5;
    *(v0 + 136) = v5 & 0xFFFFFFFFFFFFLL | 0x4E8B000000000000;
    v2 = sub_227D24F60;
    v3 = v4;
  }

  return MEMORY[0x2822009F8](v2, v3, 0);
}

uint64_t sub_227D24F60()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 144) = (*(v0 + 128))();
  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227D24FC4()
{
  OUTLINED_FUNCTION_6();
  v1 = sub_227D25174(*(v0 + 16), *(v0 + 144), &qword_27D7E6938, &qword_227D4E760, &qword_27D7E9FB8, &qword_27D7E9FC0);

  if (!v1)
  {
    sub_227D4A4F8();
    sub_227D4CE28();
  }

  v2 = OUTLINED_FUNCTION_8_0();

  return v3(v2);
}

uint64_t sub_227D25094()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227D25104()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227D25174(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_227D2CBAC(a1, a3, a4, a5, a6);
  if (v6)
  {
    return sub_227D4CE58();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227D251D4()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v1[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[6] = v4;
  v1[7] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_5(v5);
  v1[8] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82C8, &unk_227D64BF0);
  v1[9] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[10] = v7;
  v1[11] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[12] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[13] = v9;
  v1[14] = OUTLINED_FUNCTION_30();
  v10 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227D25360()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0[3] + 16);
  v2 = MEMORY[0x277D84F90];
  v0[16] = 0;
  v0[17] = v2;
  v0[15] = v1;
  if (v1)
  {
    v3 = OUTLINED_FUNCTION_106_5();
    v4(v3);
    v0[18] = sub_227D4A6A8();
    v0[19] = v5;
    OUTLINED_FUNCTION_42_10();
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_67_4(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_90_6(v16);
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_164();

    return sub_227CACB7C();
  }

  else
  {

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_164();

    return v8(v6, v7, v8, v9, v10, v11, v12, v13);
  }
}

uint64_t sub_227D2550C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 168) = v0;

  if (v0)
  {
    *(v3 + 240) = v0;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227D25614()
{
  v1 = *(v0[4] + 96);
  v0[22] = v1;
  v2 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v0[23] = *(*v1 + 96);
  v0[24] = v2;
  return OUTLINED_FUNCTION_2_0(sub_227D25650, v1);
}

uint64_t sub_227D25650()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 200) = (*(v0 + 184))();
  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227D256B4()
{
  OUTLINED_FUNCTION_119();
  if (*(v0[25] + 16) && (v1 = sub_227B2664C(v0[18], v0[19]), (v2 & 1) != 0))
  {
    OUTLINED_FUNCTION_102_6(v1);

    OUTLINED_FUNCTION_66_10();
    v3 += 52;
    v0[27] = *v3;
    v0[28] = v3 & 0xFFFFFFFFFFFFLL | 0xFFA7000000000000;
  }

  else
  {

    OUTLINED_FUNCTION_35_9();

    OUTLINED_FUNCTION_8_19();
    OUTLINED_FUNCTION_110_6();
    OUTLINED_FUNCTION_0_56();
    v6 = sub_227B12A9C(v4, v5);
    v7 = OUTLINED_FUNCTION_23_6(v6);
    OUTLINED_FUNCTION_57_0();
    sub_227D49D98();

    swift_willThrow();
    v0[30] = v7;
  }

  OUTLINED_FUNCTION_141_5();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227D257FC()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 232) = (*(v0 + 216))();
  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227D25C9C()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();

  (*(v0[13] + 8))(v0[14], v0[12]);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_164();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_227D25D4C()
{
  OUTLINED_FUNCTION_6();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_5(v7);
  v1[9] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8360, &unk_227D58BB0);
  v1[10] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[11] = v9;
  v1[12] = OUTLINED_FUNCTION_30();
  v10 = sub_227D4A0E8();
  v1[13] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[14] = v11;
  v1[15] = OUTLINED_FUNCTION_121();
  v1[16] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_227D25E88()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0[3] + 16);
  v2 = MEMORY[0x277D84F90];
  v0[18] = 0;
  v0[19] = v2;
  v0[17] = v1;
  if (v1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
    OUTLINED_FUNCTION_5(v3);
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_67_4(v4);
    *v5 = v6;
    v5[1] = sub_227D25FE4;

    return sub_227D2653C();
  }

  else
  {

    OUTLINED_FUNCTION_115();
    v9 = MEMORY[0x277D84F90];

    return v8(v9);
  }
}

uint64_t sub_227D25FE4()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 168) = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_164();

    return v7(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_164();

    return MEMORY[0x2822009F8](v15, v16, v17);
  }
}

uint64_t sub_227D26140()
{
  v2 = 0;
  v3 = v1[21];
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  while (v4 != v2)
  {
    if (v2 >= *(v3 + 16))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v6 = v1[14];
    v7 = *(v6 + 16);
    v6 += 16;
    v8 = (*(v6 + 64) + 32) & ~*(v6 + 64);
    v9 = *(v6 + 56);
    v7(v1[16], v1[21] + v8 + v9 * v2, v1[13]);
    v10 = sub_227D4A098();
    if (v10 < 0)
    {
      goto LABEL_26;
    }

    if (v10 >= v1[4] && v10 < v1[5])
    {
      v12 = *(v1[14] + 32);
      v12(v1[15], v1[16], v1[13]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v1[2] = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = OUTLINED_FUNCTION_46_10();
        sub_227CC565C(v14, v15, v16);
        v5 = v1[2];
      }

      v0 = *(v5 + 16);
      v17 = *(v5 + 24);
      v18 = v0 + 1;
      if (v0 >= v17 >> 1)
      {
        v21 = OUTLINED_FUNCTION_12(v17);
        v23 = v22;
        sub_227CC565C(v21, v22, 1);
        v18 = v23;
        v5 = v1[2];
      }

      v2 = (v2 + 1);
      v19 = v1[15];
      v20 = v1[13];
      *(v5 + 16) = v18;
      v12(v5 + v8 + v0 * v9, v19, v20);
    }

    else
    {
      (*(v1[14] + 8))(v1[16], v1[13]);
      v2 = (v2 + 1);
    }
  }

  v0 = v1[13];
  v24 = v1[9];

  v25 = sub_227D4A958();
  OUTLINED_FUNCTION_57_1(v24, v26, v27, v25);
  OUTLINED_FUNCTION_45_10();
  sub_227B12A9C(v28, v4);
  OUTLINED_FUNCTION_56_8(&qword_27D7E83D0);
  sub_227D4A948();
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v30 = v1[19];
  if (v29)
  {
    goto LABEL_16;
  }

LABEL_27:
  OUTLINED_FUNCTION_51_10();
  sub_227D2CC5C();
  v30 = v45;
LABEL_16:
  OUTLINED_FUNCTION_23_12();
  if (v31)
  {
    OUTLINED_FUNCTION_51_10();
    sub_227D2CC5C();
    v30 = v46;
  }

  *(v30 + 16) = v5;
  OUTLINED_FUNCTION_12_17();
  v34(v33 + *(v32 + 40) * v0);
  v35 = v1[17];
  v36 = v1[18] + 1;
  v1[18] = v36;
  v1[19] = v30;
  if (v36 == v35)
  {

    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_135_0();

    __asm { BRAA            X2, X16 }
  }

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  OUTLINED_FUNCTION_10_0(v39);
  v40 = swift_task_alloc();
  v41 = OUTLINED_FUNCTION_67_4(v40);
  *v41 = v42;
  v41[1] = sub_227D25FE4;
  OUTLINED_FUNCTION_135_0();

  return sub_227D2653C();
}

uint64_t sub_227D2653C()
{
  OUTLINED_FUNCTION_6();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[6] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_30();
  v7 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227D265F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_177_1();
  OUTLINED_FUNCTION_119();
  sub_227D4A7E8();
  sub_227D4A6A8();
  OUTLINED_FUNCTION_42_10();
  v10[9] = v11;
  v12 = OUTLINED_FUNCTION_174();
  v13(v12);
  v10[10] = sub_227D4A7D8();
  v10[11] = v14;
  v15 = swift_task_alloc();
  v10[12] = v15;
  *v15 = v10;
  v15[1] = sub_227D26714;
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_128();

  return sub_227D29484();
}

uint64_t sub_227D26714()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_58_8();
  v4 = v3;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  v4[13] = v1;
  v4[14] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_54_11();
  }

  else
  {

    OUTLINED_FUNCTION_66_10();
    v10 += 736;
    v4[15] = *v10;
    v4[16] = v10 & 0xFFFFFFFFFFFFLL | 0xC669000000000000;
    OUTLINED_FUNCTION_98_8();
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_227D26848()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 112);
  (*(v0 + 120))(*(v0 + 80), *(v0 + 88));
  *(v0 + 136) = v1;
  if (!v1)
  {
    v2 = *(v0 + 104);
    v3 = *(v0 + 32);
    v4 = *(v0 + 16);

    (*(*v2 + 696))(v4, v3);
    *(v0 + 144) = 0;
    OUTLINED_FUNCTION_45();
    *(v0 + 152) = (*(v5 + 704))();
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227D26984()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_115();
  v2 = *(v0 + 152);

  return v1(v2);
}

uint64_t sub_227D269F0()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227D26A60()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227D26AD0()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227D26B34()
{
  OUTLINED_FUNCTION_6();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[6] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA488, &qword_227D66B58);
  OUTLINED_FUNCTION_5(v6);
  v7 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v7);
  v8 = sub_227D4A0E8();
  v1[12] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[13] = v9;
  v1[14] = OUTLINED_FUNCTION_121();
  v1[15] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_5(v10);
  v1[16] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8360, &unk_227D58BB0);
  v1[17] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[18] = v12;
  v1[19] = OUTLINED_FUNCTION_30();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v1[20] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v1[21] = v14;
  v1[22] = OUTLINED_FUNCTION_121();
  v1[23] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[24] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v1[25] = v16;
  v1[26] = OUTLINED_FUNCTION_30();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v1[27] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v1[28] = v18;
  v1[29] = OUTLINED_FUNCTION_30();
  v19 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_227D26DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v15 = *(v14[6] + 16);
  v16 = MEMORY[0x277D84F90];
  v14[31] = 0;
  v14[32] = v16;
  v14[30] = v15;
  if (v15)
  {
    v17 = OUTLINED_FUNCTION_106_5();
    v18(v17);
    sub_227D4A7E8();
    sub_227D4A6A8();
    v14[33] = v19;
    OUTLINED_FUNCTION_42_10();
    v29 = OUTLINED_FUNCTION_61_13();
    v30(v29);
    v14[34] = sub_227D4A7D8();
    v14[35] = v31;
    v32 = swift_task_alloc();
    v33 = OUTLINED_FUNCTION_99_6(v32);
    *v33 = v34;
    v33[1] = sub_227D2701C;
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_16_0();

    return sub_227D29484();
  }

  else
  {

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_16_0();

    return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_227D2701C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_58_8();
  v4 = v3;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  v4[37] = v1;
  v4[38] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_54_11();
  }

  else
  {

    OUTLINED_FUNCTION_66_10();
    v10 += 736;
    v4[39] = *v10;
    v4[40] = v10 & 0xFFFFFFFFFFFFLL | 0xC669000000000000;
    OUTLINED_FUNCTION_98_8();
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_227D27150()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 304);
  (*(v0 + 312))(*(v0 + 272), *(v0 + 280));
  *(v0 + 328) = v1;
  if (!v1)
  {
    v2 = *(v0 + 296);
    v3 = *(v0 + 232);
    v4 = *(v0 + 72);

    (*(*v2 + 696))(v3, v4);
    *(v0 + 336) = 0;
    OUTLINED_FUNCTION_45();
    *(v0 + 344) = (*(v5 + 704))();
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227D2728C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();

  v14 = OUTLINED_FUNCTION_15_17();
  v15(v14);

  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_16_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_227D2735C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();

  v14 = OUTLINED_FUNCTION_15_17();
  v15(v14);

  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_16_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_227D2742C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void, unint64_t, void), uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_109_1();
  v20 = v18[27];
  v21 = v18[7];

  v22 = OUTLINED_FUNCTION_39_0();
  v23(v22);
  v96 = *(v21 + 16);
  if (v96)
  {
    v20 = 0;
    a12 = v18[43];
    v24 = v18[21];
    a11 = v18[7] + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v98 = MEMORY[0x277D84F90];
    a9 = *(v24 + 16);
    a10 = *(v24 + 72);
    do
    {
      a9(v18[23], a11 + v20 * a10, v18[20]);
      v27 = 0;
      v19 = *(a12 + 16);
      while (1)
      {
        if (v19 == v27)
        {
          v34 = v18[21];
          OUTLINED_FUNCTION_57_1(v18[11], v25, v26, v18[12]);
          v33 = *(v34 + 8);
          goto LABEL_14;
        }

        (*(v18[13] + 16))(v18[14], v18[43] + ((*(v18[13] + 80) + 32) & ~*(v18[13] + 80)) + *(v18[13] + 72) * v27, v18[12]);
        sub_227D4A0C8();
        sub_227B69F68(&qword_27D7E9C68, &qword_27D7E67C0, &unk_227D4FB20);
        sub_227D4D148();
        sub_227D4D148();
        v29 = v18[21];
        v28 = v18[22];
        v30 = v18[20];
        if (v18[2] == v18[4] && v18[3] == v18[5])
        {
          break;
        }

        v32 = sub_227D4DA78();

        v33 = *(v29 + 8);
        v33(v28, v30);
        if (v32)
        {
          goto LABEL_13;
        }

        (*(v18[13] + 8))(v18[14], v18[12]);
        v27 = (v27 + 1);
      }

      v33 = *(v29 + 8);
      v33(v28, v30);
LABEL_13:
      (*(v18[13] + 32))(v18[11], v18[14], v18[12]);
      OUTLINED_FUNCTION_51_10();
      __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
LABEL_14:
      v40 = v18[11];
      v39 = v18[12];
      v33(v18[23], v18[20]);
      if (__swift_getEnumTagSinglePayload(v40, 1, v39) == 1)
      {
        sub_227B1DE58(v18[11], &qword_27D7EA488, &qword_227D66B58);
      }

      else
      {
        v41 = *(v18[13] + 32);
        v41(v18[15], v18[11], v18[12]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = OUTLINED_FUNCTION_46_10();
          v98 = sub_227D2CD64(v47, v48, v49, v50);
        }

        v43 = *(v98 + 2);
        v42 = *(v98 + 3);
        if (v43 >= v42 >> 1)
        {
          v51 = OUTLINED_FUNCTION_12(v42);
          v98 = sub_227D2CD64(v51, v43 + 1, 1, v98);
        }

        v44 = v18[15];
        v45 = v18[12];
        v46 = v18[13];
        *(v98 + 2) = v43 + 1;
        v41(&v98[((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v43], v44, v45);
      }

      ++v20;
    }

    while (v20 != v96);
  }

  v52 = v18[19];

  v53 = sub_227D4A958();
  OUTLINED_FUNCTION_35_2(v53);
  OUTLINED_FUNCTION_45_10();
  sub_227B12A9C(v54, v19);
  OUTLINED_FUNCTION_56_8(&qword_27D7E83D0);
  sub_227D4A948();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = v18[32];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_51_10();
    sub_227D2CC5C();
    v56 = v94;
  }

  OUTLINED_FUNCTION_23_12();
  if (v58)
  {
    OUTLINED_FUNCTION_12(v57);
    OUTLINED_FUNCTION_51_10();
    sub_227D2CC5C();
    v56 = v95;
  }

  *(v56 + 16) = v20;
  OUTLINED_FUNCTION_12_17();
  v61(v60 + *(v59 + 40) * v52);
  v62 = v18[42];
  v63 = v18[30];
  v64 = v18[31] + 1;
  v18[31] = v64;
  v18[32] = v56;
  v65 = v18[29];
  if (v64 == v63)
  {
    v99 = v18[11];

    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_90();

    return v68(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, v96, v99, a15, a16, a17, a18);
  }

  else
  {
    OUTLINED_FUNCTION_1_38();
    v75(v65);
    sub_227D4A7E8();
    if (v62)
    {
      v80 = v18[29];
      OUTLINED_FUNCTION_20_11();
      v97 = v18[14];
      v100 = v18[11];
      (*(v81 + 8))(v80);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_90();

      return v83(v82, v83, v84, v85, v86, v87, v88, v89, a9, a10, a11, a12, v97, v100, a15, a16, a17, a18);
    }

    else
    {
      sub_227D4A6A8();
      v18[33] = v76;
      OUTLINED_FUNCTION_42_10();
      v77 = OUTLINED_FUNCTION_61_13();
      v78(v77);
      v18[34] = sub_227D4A7D8();
      v18[35] = v79;
      v90 = swift_task_alloc();
      v91 = OUTLINED_FUNCTION_99_6(v90);
      *v91 = v92;
      v91[1] = sub_227D2701C;
      OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_90();

      return sub_227D29484();
    }
  }
}

uint64_t sub_227D27B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();

  v14 = OUTLINED_FUNCTION_15_17();
  v15(v14);

  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_16_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_227D27BD4()
{
  OUTLINED_FUNCTION_6();
  v1[7] = v2;
  v1[8] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v1[9] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[10] = v4;
  v5 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v5);
  v6 = sub_227D4A4F8();
  v1[12] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[13] = v7;
  v1[14] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA490, &unk_227D66B70);
  OUTLINED_FUNCTION_5(v8);
  v1[15] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8288, &unk_227D58A00);
  v1[16] = v9;
  OUTLINED_FUNCTION_5(v9);
  v1[17] = OUTLINED_FUNCTION_121();
  v1[18] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[19] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[20] = v11;
  v1[21] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v1[22] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[23] = v13;
  v1[24] = OUTLINED_FUNCTION_121();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v14 = sub_227D4A0E8();
  v1[27] = v14;
  OUTLINED_FUNCTION_10_0(v14);
  v1[28] = v15;
  v1[29] = OUTLINED_FUNCTION_121();
  v1[30] = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_227D27E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_142();
  a27 = v30;
  a28 = v31;
  OUTLINED_FUNCTION_168_0();
  a26 = v28;
  v32 = v28[8];
  v33 = *(v28[7] + 16);
  v28[31] = v33;
  v28[32] = 0;
  if (v33)
  {
    v34 = OUTLINED_FUNCTION_106_5();
    v35(v34);
    sub_227D4A078();
    sub_227D4A7E8();
    v38 = OUTLINED_FUNCTION_57_8();
    v29(v38);
    v39 = sub_227D4A6A8();
    v41 = OUTLINED_FUNCTION_26_15(v39, v40);
    (*(v51 + 8))(v41);
    sub_227D4A078();
    v28[34] = sub_227D4A7D8();
    v28[35] = v52;
    (v29)(v28[25], v28[22]);
    v53 = swift_task_alloc();
    v54 = OUTLINED_FUNCTION_99_6(v53);
    *v54 = v55;
    OUTLINED_FUNCTION_7_25(v54);
    OUTLINED_FUNCTION_137();

    return sub_227D29484();
  }

  else
  {
    sub_227B11EE8(v32 + 16, (v28 + 2));
    v36 = v28[5];
    v37 = v28[6];
    __swift_project_boxed_opaque_existential_1(v28 + 2, v36);
    HIBYTE(a16) = 3;
    v57 = v28[21];
    v58 = v28[18];
    v59 = v28[17];
    v60 = v28[15];
    v61 = v28[14];
    v62 = v28[11];
    (*(v37 + 120))(&a16 + 7, MEMORY[0x277D84F90], v36, v37);

    __swift_destroy_boxed_opaque_existential_0(v28 + 2);

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_137();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, v57, v58, v59, v60, v61, v62, a16, a17, a18, a19, a20);
  }
}

uint64_t sub_227D28174()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_58_8();
  v4 = v3;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  v4[37] = v1;
  v4[38] = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_54_11();
  }

  else
  {
    OUTLINED_FUNCTION_66_10();
    v10 += 736;
    v4[39] = *v10;
    v4[40] = v10 & 0xFFFFFFFFFFFFLL | 0xC669000000000000;
    OUTLINED_FUNCTION_98_8();
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_227D282BC()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 304);
  (*(v0 + 312))(*(v0 + 272), *(v0 + 280));
  *(v0 + 328) = v1;
  if (v1)
  {
  }

  else
  {
    v2 = *(v0 + 240);

    OUTLINED_FUNCTION_45();
    (*(v3 + 688))(v2);
    *(v0 + 336) = 0;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_227D283A0()
{
  OUTLINED_FUNCTION_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA010, &qword_227D64430);
  v1 = swift_allocObject();
  *(v0 + 344) = v1;
  *(v1 + 16) = xmmword_227D4E520;
  sub_227D4A078();
  v2 = swift_task_alloc();
  *(v0 + 352) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_27_15(v2);

  return sub_227D24240();
}

uint64_t sub_227D28484()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 360) = v0;

  if (!v0)
  {
    *(v4 + 368) = v3;
  }

  swift_setDeallocating();
  sub_227D2D030();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227D285CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = v10[15];
  v14 = v10[16];
  sub_227D29804(v10[46], v15);

  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    v16 = v10[15];
    (*(v10[28] + 8))(v10[30], v10[27]);

    v17 = &qword_27D7EA490;
    v18 = &unk_227D66B70;
    v19 = v16;
  }

  else
  {
    v20 = v10[17];
    v21 = v10[12];
    sub_227D2D4C0(v10[15], v10[18], &qword_27D7E8288, &unk_227D58A00);
    v22 = OUTLINED_FUNCTION_57_0();
    sub_227D2D450(v22, v23);
    if (__swift_getEnumTagSinglePayload(v20, 1, v21) != 1)
    {
      v45 = v10[8];
      (*(v10[13] + 32))(v10[14], v10[17], v10[12]);
      __swift_project_boxed_opaque_existential_1((v45 + 16), *(v45 + 40));
      sub_227D4A0C8();
      v46 = swift_task_alloc();
      v10[47] = v46;
      *v46 = v10;
      v46[1] = sub_227D28B60;
      OUTLINED_FUNCTION_65();

      __asm { BRAA            X5, X16 }
    }

    OUTLINED_FUNCTION_86_9();
    v11 = v10[17];

    v12 = &qword_27D7E8288;
    OUTLINED_FUNCTION_20_6();
    sub_227B1DE58(v24, v25, v26);
    v27 = OUTLINED_FUNCTION_57_0();
    v28(v27);
    OUTLINED_FUNCTION_20_6();
  }

  sub_227B1DE58(v19, v17, v18);
  v29 = v10[45];
  OUTLINED_FUNCTION_121_7();
  if (v30)
  {
    OUTLINED_FUNCTION_108_8();
    __swift_project_boxed_opaque_existential_1(v10 + 2, v10[5]);
    OUTLINED_FUNCTION_87_9();
    OUTLINED_FUNCTION_134_5(v31, v32);
    OUTLINED_FUNCTION_59_8();
    while (1)
    {
      v33 = OUTLINED_FUNCTION_73_6();
      v34(v33);
      sub_227D4A078();
      sub_227D4A7D8();
      v35 = OUTLINED_FUNCTION_74_8();
      v36(v35);
      v11 += 8;
      v37 = OUTLINED_FUNCTION_174();
      v38(v37);
      if (v29)
      {
        break;
      }

      OUTLINED_FUNCTION_119_8();
      if (v40)
      {
        v41 = OUTLINED_FUNCTION_12(v39);
        sub_227B3CA88(v41, v12, 1);
      }

      OUTLINED_FUNCTION_60_14();
      if (v30)
      {
        OUTLINED_FUNCTION_36_10();
        v49();

        __swift_destroy_boxed_opaque_existential_0(v10 + 2);

        OUTLINED_FUNCTION_18();
        goto LABEL_22;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v10 + 2);
LABEL_21:
    OUTLINED_FUNCTION_21_8();

    OUTLINED_FUNCTION_19_0();
LABEL_22:
    OUTLINED_FUNCTION_65();

    __asm { BRAA            X1, X16 }
  }

  v42 = v10[30];
  OUTLINED_FUNCTION_1_38();
  v43(v42);
  sub_227D4A078();
  sub_227D4A7E8();
  if (v29)
  {
    v44 = OUTLINED_FUNCTION_115_6();
    (*(v54 + 8))(v44);
    v55 = OUTLINED_FUNCTION_57_0();
    v56(v55);
    goto LABEL_21;
  }

  v50 = OUTLINED_FUNCTION_57_8();
  v13(v50);
  v51 = sub_227D4A6A8();
  v53 = OUTLINED_FUNCTION_26_15(v51, v52);
  (*(v59 + 8))(v53);
  sub_227D4A078();
  v10[34] = sub_227D4A7D8();
  v10[35] = v60;
  (v13)(v10[25], v10[22]);
  v61 = swift_task_alloc();
  v62 = OUTLINED_FUNCTION_99_6(v61);
  *v62 = v63;
  OUTLINED_FUNCTION_7_25(v62);
  OUTLINED_FUNCTION_65();

  return sub_227D29484();
}

uint64_t sub_227D28B60()
{
  OUTLINED_FUNCTION_20();
  v2 = *v1;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 384) = v0;

  (*(v2[10] + 8))(v2[11], v2[9]);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227D28CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = OUTLINED_FUNCTION_86_9();
  OUTLINED_FUNCTION_131_6(v16);
  (*(v14 + 8))(v12, v13);
  sub_227B1DE58(v10, &qword_27D7E8288, &unk_227D58A00);
  v17 = OUTLINED_FUNCTION_57_0();
  v18(v17);
  v19 = v11[48];
  OUTLINED_FUNCTION_121_7();
  if (v20)
  {
    OUTLINED_FUNCTION_108_8();
    __swift_project_boxed_opaque_existential_1(v11 + 2, v11[5]);
    OUTLINED_FUNCTION_87_9();
    OUTLINED_FUNCTION_134_5(v21, v22);
    OUTLINED_FUNCTION_59_8();
    while (1)
    {
      v23 = OUTLINED_FUNCTION_73_6();
      v24(v23);
      sub_227D4A078();
      sub_227D4A7D8();
      v25 = OUTLINED_FUNCTION_74_8();
      v26(v25);
      v12 += 8;
      v27 = OUTLINED_FUNCTION_174();
      v28(v27);
      if (v19)
      {
        break;
      }

      OUTLINED_FUNCTION_119_8();
      if (v30)
      {
        v31 = OUTLINED_FUNCTION_12(v29);
        sub_227B3CA88(v31, v13, 1);
      }

      OUTLINED_FUNCTION_60_14();
      if (v20)
      {
        OUTLINED_FUNCTION_36_10();
        v35();

        __swift_destroy_boxed_opaque_existential_0(v11 + 2);

        OUTLINED_FUNCTION_18();
        goto LABEL_15;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v11 + 2);
LABEL_14:
    OUTLINED_FUNCTION_21_8();

    OUTLINED_FUNCTION_19_0();
LABEL_15:
    OUTLINED_FUNCTION_65();

    __asm { BRAA            X1, X16 }
  }

  v32 = v11[30];
  OUTLINED_FUNCTION_1_38();
  v33(v32);
  sub_227D4A078();
  sub_227D4A7E8();
  if (v19)
  {
    v34 = OUTLINED_FUNCTION_115_6();
    (*(v40 + 8))(v34);
    v41 = OUTLINED_FUNCTION_57_0();
    v42(v41);
    goto LABEL_14;
  }

  v36 = OUTLINED_FUNCTION_57_8();
  v15(v36);
  v37 = sub_227D4A6A8();
  v39 = OUTLINED_FUNCTION_26_15(v37, v38);
  (*(v45 + 8))(v39);
  sub_227D4A078();
  v11[34] = sub_227D4A7D8();
  v11[35] = v46;
  (v15)(v11[25], v11[22]);
  v47 = swift_task_alloc();
  v48 = OUTLINED_FUNCTION_99_6(v47);
  *v48 = v49;
  OUTLINED_FUNCTION_7_25(v48);
  OUTLINED_FUNCTION_65();

  return sub_227D29484();
}

uint64_t sub_227D2905C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  (*(v14[28] + 8))(v14[30], v14[27]);
  OUTLINED_FUNCTION_9_15();

  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_16_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_227D29124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_86_9();

  v14 = OUTLINED_FUNCTION_39_0();
  v15(v14);
  OUTLINED_FUNCTION_9_15();

  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_16_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_227D291F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_86_9();

  v14 = OUTLINED_FUNCTION_39_0();
  v15(v14);
  OUTLINED_FUNCTION_9_15();

  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_16_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_227D292BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_86_9();

  v14 = OUTLINED_FUNCTION_39_0();
  v15(v14);
  OUTLINED_FUNCTION_9_15();

  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_16_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_227D29388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v18 = OUTLINED_FUNCTION_86_9();
  OUTLINED_FUNCTION_131_6(v18);
  (*(v17 + 8))(v15, v16);
  sub_227B1DE58(v14, &qword_27D7E8288, &unk_227D58A00);
  v19 = OUTLINED_FUNCTION_57_0();
  v20(v19);
  OUTLINED_FUNCTION_9_15();

  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_16_0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_227D29484()
{
  OUTLINED_FUNCTION_20();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = swift_task_alloc();
  v1[5] = v4;
  *v4 = v1;
  v4[1] = sub_227D29530;

  return sub_227CACB7C();
}

uint64_t sub_227D29530()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_18();

    return v4();
  }

  else
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }
}

uint64_t sub_227D29648()
{
  v1 = *(v0[4] + 96);
  v0[6] = v1;
  v2 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v0[7] = *(*v1 + 96);
  v0[8] = v2;
  return OUTLINED_FUNCTION_2_0(sub_227D29684, v1);
}

uint64_t sub_227D29684()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 72) = (*(v0 + 56))();
  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

void sub_227D296E8()
{
  OUTLINED_FUNCTION_119();
  v1 = sub_227BD8C70(v0[2], v0[3], v0[9]);

  if (v1)
  {
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_141_5();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_35_9();

  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_110_6();
  OUTLINED_FUNCTION_0_56();
  v6 = sub_227B12A9C(v4, v5);
  OUTLINED_FUNCTION_23_6(v6);
  OUTLINED_FUNCTION_57_0();
  sub_227D49D98();

  swift_willThrow();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_141_5();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_227D29804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8288, &unk_227D58A00);
  v6 = v5;
  if (v4)
  {
    sub_227D2D450(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_227D298CC()
{
  OUTLINED_FUNCTION_20();
  sub_227D49E08();
  OUTLINED_FUNCTION_0_56();
  sub_227B12A9C(v0, v1);
  OUTLINED_FUNCTION_78_0();
  swift_allocError();
  sub_227D49DC8();
  swift_willThrow();
  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227D29978()
{
  OUTLINED_FUNCTION_6();
  v1[7] = v2;
  v1[8] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[9] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[10] = v4;
  v1[11] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v1[12] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[13] = v6;
  v1[14] = OUTLINED_FUNCTION_121();
  v1[15] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227D29A8C()
{
  v15 = v0;
  v1 = v0[8];
  v2 = *(v0[7] + 16);
  v0[16] = v2;
  v0[17] = 0;
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_106_5();
    v4(v3);
    v0[18] = sub_227D4A7D8();
    v0[19] = v5;
    sub_227D4A7E8();
    v0[20] = sub_227D4A6A8();
    v0[21] = v9;
    v11 = OUTLINED_FUNCTION_100_7();
    v12(v11);
    v13 = swift_task_alloc();
    v0[22] = v13;
    *v13 = v0;
    OUTLINED_FUNCTION_27_15(v13);
    OUTLINED_FUNCTION_236();

    return sub_227CACB7C();
  }

  else
  {
    sub_227B11EE8(v1 + 16, (v0 + 2));
    v6 = v0[5];
    v7 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
    v14[0] = 3;
    (*(v7 + 120))(v14, MEMORY[0x277D84F90], v6, v7);

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    OUTLINED_FUNCTION_18();

    return v8();
  }
}

uint64_t sub_227D29CF8()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 184) = v0;

  if (v0)
  {

    *(v3 + 256) = v0;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227D29E14()
{
  v1 = *(v0[8] + 96);
  v0[24] = v1;
  v2 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v0[25] = *(*v1 + 96);
  v0[26] = v2;
  return OUTLINED_FUNCTION_2_0(sub_227D29E50, v1);
}

uint64_t sub_227D29E50()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 216) = (*(v0 + 200))();
  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227D29EB4()
{
  OUTLINED_FUNCTION_119();
  if (*(v0[27] + 16) && (v1 = sub_227B2664C(v0[20], v0[21]), v2 = v0[27], (v3 & 1) != 0))
  {
    v4 = v1;

    v5 = *(*(v2 + 56) + 8 * v4);
    v0[28] = v5;

    v6 = *v5 + 736;
    v0[29] = *v6;
    v0[30] = v6 & 0xFFFFFFFFFFFFLL | 0xC669000000000000;
  }

  else
  {

    OUTLINED_FUNCTION_35_9();

    OUTLINED_FUNCTION_8_19();

    OUTLINED_FUNCTION_110_6();
    OUTLINED_FUNCTION_0_56();
    v9 = sub_227B12A9C(v7, v8);
    v10 = OUTLINED_FUNCTION_23_6(v9);
    OUTLINED_FUNCTION_57_0();
    sub_227D49D98();

    swift_willThrow();
    v0[32] = v10;
  }

  OUTLINED_FUNCTION_141_5();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227D2A024()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 184);
  (*(v0 + 232))(*(v0 + 144), *(v0 + 152));
  *(v0 + 248) = v1;
  if (v1)
  {
  }

  else
  {
    v2 = *(v0 + 120);

    OUTLINED_FUNCTION_45();
    (*(v3 + 720))(v2);
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_227D2A0F4()
{
  OUTLINED_FUNCTION_20();
  v0 = OUTLINED_FUNCTION_92_5();
  v1(v0);

  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227D2A17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t (*a14)(void, uint64_t, void), uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_142();
  a27 = v29;
  a28 = v30;
  OUTLINED_FUNCTION_168_0();
  a26 = v28;

  v31 = OUTLINED_FUNCTION_39_0();
  v32(v31);
  v33 = v28[31];
  v34 = v28[16];
  v35 = v28[17] + 1;
  v28[17] = v35;
  if (v35 == v34)
  {
    OUTLINED_FUNCTION_108_8();
    a11 = v28[6];
    a12 = v28[5];
    a10 = __swift_project_boxed_opaque_existential_1(v28 + 2, a12);
    HIBYTE(a15) = 3;
    v36 = v28[16];
    v37 = v28[13];
    v38 = v28[7];
    a16 = MEMORY[0x277D84F90];
    sub_227B3CA88(0, v36, 0);
    v39 = 0;
    v40 = a16;
    v41 = v38 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
    a13 = *(v37 + 72);
    a14 = *(v37 + 16);
    while (1)
    {
      a14(v28[14], v41, v28[12]);
      v42 = sub_227D4A7D8();
      v44 = v43;
      (*(v28[13] + 8))(v28[14], v28[12]);
      if (v33)
      {
        break;
      }

      a16 = v40;
      v46 = *(v40 + 16);
      v45 = *(v40 + 24);
      if (v46 >= v45 >> 1)
      {
        v49 = OUTLINED_FUNCTION_12(v45);
        sub_227B3CA88(v49, v46 + 1, 1);
        v40 = a16;
      }

      v33 = 0;
      ++v39;
      v47 = v28[16];
      *(v40 + 16) = v46 + 1;
      v48 = v40 + 16 * v46;
      *(v48 + 32) = v42;
      *(v48 + 40) = v44;
      v41 += a13;
      if (v39 == v47)
      {
        (*(a11 + 120))(&a15 + 7, v40, a12);

        __swift_destroy_boxed_opaque_existential_0(v28 + 2);

        OUTLINED_FUNCTION_18();
        goto LABEL_13;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v28 + 2);
  }

  else
  {
    v50 = v28[15];
    OUTLINED_FUNCTION_1_38();
    v51(v50);
    v28[18] = sub_227D4A7D8();
    v28[19] = v52;
    if (!v33)
    {
      sub_227D4A7E8();
      v28[20] = sub_227D4A6A8();
      v28[21] = v53;
      v63 = OUTLINED_FUNCTION_100_7();
      v64(v63);
      v65 = swift_task_alloc();
      v28[22] = v65;
      *v65 = v28;
      OUTLINED_FUNCTION_27_15(v65);
      OUTLINED_FUNCTION_236();
      OUTLINED_FUNCTION_137();

      return sub_227CACB7C();
    }

    (*(v28[13] + 8))(v28[15], v28[12]);
  }

  OUTLINED_FUNCTION_19_0();
LABEL_13:
  OUTLINED_FUNCTION_137();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_227D2A4E0()
{
  OUTLINED_FUNCTION_20();

  v0 = OUTLINED_FUNCTION_39_0();
  v1(v0);

  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227D2A578()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8428, &unk_227D61E60);
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_121();
  v1[7] = swift_task_alloc();
  v5 = sub_227D4A548();
  v1[8] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[9] = v6;
  v1[10] = OUTLINED_FUNCTION_121();
  v7 = swift_task_alloc();
  OUTLINED_FUNCTION_64_0(v7);
  v8 = sub_227D49328();
  v1[12] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[13] = v9;
  v1[14] = OUTLINED_FUNCTION_30();
  v10 = type metadata accessor for GameServicesEnvironment(0);
  v1[15] = v10;
  OUTLINED_FUNCTION_5(v10);
  v1[16] = OUTLINED_FUNCTION_30();
  v11 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227D2A6F4()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0[3] + 16);
  v2 = MEMORY[0x277D84F90];
  v0[18] = 0;
  v0[19] = v2;
  v0[17] = v1;
  if (v1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83F8, &unk_227D61E50);
    OUTLINED_FUNCTION_5(v3);
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_67_4(v4);
    *v5 = v6;
    OUTLINED_FUNCTION_90_6(v5);
    OUTLINED_FUNCTION_164();

    return sub_227D2AED0();
  }

  else
  {
    OUTLINED_FUNCTION_135_8();

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_164();

    return v11(v9, v10, v11, v12, v13, v14, v15, v16);
  }
}

uint64_t sub_227D2A84C()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 168) = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_105_9();

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_163();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_163();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227D2AED0()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[4] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_30();
  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227D2AF80()
{
  OUTLINED_FUNCTION_177_1();
  OUTLINED_FUNCTION_119();
  sub_227D4A808();
  sub_227D4A6A8();
  OUTLINED_FUNCTION_42_10();
  v0[7] = v1;
  v2 = OUTLINED_FUNCTION_174();
  v3(v2);
  v0[8] = sub_227D4A7F8();
  v0[9] = v4;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_227D2B0A4;
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_128();

  return sub_227D29484();
}

uint64_t sub_227D2B0A4()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_58_8();
  v4 = v3;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  v4[11] = v1;
  v4[12] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_54_11();
  }

  else
  {

    OUTLINED_FUNCTION_66_10();
    v10 += 744;
    v4[13] = *v10;
    v4[14] = v10 & 0xFFFFFFFFFFFFLL | 0x6619000000000000;
    OUTLINED_FUNCTION_98_8();
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_227D2B1D8()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 96);
  (*(v0 + 104))(*(v0 + 64), *(v0 + 72));
  *(v0 + 120) = v1;
  if (v1)
  {
    v2 = sub_227D2D528;
    v3 = 0;
  }

  else
  {
    v4 = *(v0 + 88);

    OUTLINED_FUNCTION_45();
    v5 += 560;
    *(v0 + 128) = *v5;
    *(v0 + 136) = v5 & 0xFFFFFFFFFFFFLL | 0x43D9000000000000;
    v2 = sub_227D2B298;
    v3 = v4;
  }

  return MEMORY[0x2822009F8](v2, v3, 0);
}

uint64_t sub_227D2B298()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 144) = (*(v0 + 128))();
  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227D2B2FC()
{
  OUTLINED_FUNCTION_6();
  v1 = sub_227D25174(*(v0 + 16), *(v0 + 144), &qword_27D7E83F8, &unk_227D61E50, &qword_27D7E9FF8, &qword_27D7EA020);

  if (!v1)
  {
    sub_227D4A548();
    sub_227D4CE28();
  }

  v2 = OUTLINED_FUNCTION_8_0();

  return v3(v2);
}

uint64_t sub_227D2B3CC()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83F8, &unk_227D61E50);
  v1[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[6] = v4;
  v1[7] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_5(v5);
  v1[8] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8468, &unk_227D59010);
  v1[9] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[10] = v7;
  v1[11] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[12] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[13] = v9;
  v1[14] = OUTLINED_FUNCTION_30();
  v10 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227D2B558()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0[3] + 16);
  v2 = MEMORY[0x277D84F90];
  v0[16] = 0;
  v0[17] = v2;
  v0[15] = v1;
  if (v1)
  {
    v3 = OUTLINED_FUNCTION_106_5();
    v4(v3);
    v0[18] = sub_227D4A6A8();
    v0[19] = v5;
    OUTLINED_FUNCTION_42_10();
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_67_4(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_90_6(v16);
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_164();

    return sub_227CACB7C();
  }

  else
  {

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_164();

    return v8(v6, v7, v8, v9, v10, v11, v12, v13);
  }
}

uint64_t sub_227D2B704()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 168) = v0;

  if (v0)
  {
    *(v3 + 240) = v0;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227D2B80C()
{
  v1 = *(v0[4] + 96);
  v0[22] = v1;
  v2 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v0[23] = *(*v1 + 96);
  v0[24] = v2;
  return OUTLINED_FUNCTION_2_0(sub_227D2B848, v1);
}

uint64_t sub_227D2B848()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 200) = (*(v0 + 184))();
  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227D2B8AC()
{
  OUTLINED_FUNCTION_119();
  if (*(v0[25] + 16) && (v1 = sub_227B2664C(v0[18], v0[19]), (v2 & 1) != 0))
  {
    OUTLINED_FUNCTION_102_6(v1);

    OUTLINED_FUNCTION_66_10();
    v3 += 67;
    v0[27] = *v3;
    v0[28] = v3 & 0xFFFFFFFFFFFFLL | 0x1E30000000000000;
  }

  else
  {

    OUTLINED_FUNCTION_35_9();

    OUTLINED_FUNCTION_8_19();
    OUTLINED_FUNCTION_110_6();
    OUTLINED_FUNCTION_0_56();
    v6 = sub_227B12A9C(v4, v5);
    v7 = OUTLINED_FUNCTION_23_6(v6);
    OUTLINED_FUNCTION_57_0();
    sub_227D49D98();

    swift_willThrow();
    v0[30] = v7;
  }

  OUTLINED_FUNCTION_141_5();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227D2B9F4()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 232) = (*(v0 + 216))();
  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227D2BE94()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_5(v3);
  v1[4] = OUTLINED_FUNCTION_30();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82C8, &unk_227D64BF0);
  v1[5] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[8] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[9] = v7;
  v1[10] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83F8, &unk_227D61E50);
  v1[11] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[12] = v9;
  v1[13] = OUTLINED_FUNCTION_30();
  v10 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227D2C020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_177_1();
  OUTLINED_FUNCTION_119();
  v11 = *(v10[2] + 16);
  v12 = MEMORY[0x277D84F90];
  v10[15] = 0;
  v10[16] = v12;
  v10[14] = v11;
  if (v11)
  {
    v13 = OUTLINED_FUNCTION_106_5();
    v14(v13);
    sub_227D4A808();
    v10[17] = sub_227D4A6A8();
    v10[18] = v15;
    OUTLINED_FUNCTION_42_10();
    v25 = OUTLINED_FUNCTION_91();
    v26(v25);
    v10[19] = sub_227D4A7F8();
    v10[20] = v27;
    v28 = swift_task_alloc();
    v10[21] = v28;
    *v28 = v10;
    v28[1] = sub_227D2C22C;
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_128();

    return sub_227CACB7C();
  }

  else
  {

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_128();

    return v18(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
  }
}

uint64_t sub_227D2C22C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (v0)
  {
    *(v3 + 248) = v0;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227D2C334()
{
  v1 = *(v0[3] + 96);
  v0[23] = v1;
  v2 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v0[24] = *(*v1 + 96);
  v0[25] = v2;
  return OUTLINED_FUNCTION_2_0(sub_227D2C370, v1);
}

uint64_t sub_227D2C370()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 208) = (*(v0 + 192))();
  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227D2C3D4()
{
  OUTLINED_FUNCTION_119();
  if (*(v0[26] + 16) && (v1 = sub_227B2664C(v0[17], v0[18]), (v2 & 1) != 0))
  {
    v0[27] = *(*(v0[26] + 56) + 8 * v1);

    OUTLINED_FUNCTION_66_10();
    v3 += 93;
    v0[28] = *v3;
    v0[29] = v3 & 0xFFFFFFFFFFFFLL | 0x6619000000000000;
  }

  else
  {

    OUTLINED_FUNCTION_35_9();

    OUTLINED_FUNCTION_8_19();
    OUTLINED_FUNCTION_110_6();
    OUTLINED_FUNCTION_0_56();
    v6 = sub_227B12A9C(v4, v5);
    v7 = OUTLINED_FUNCTION_23_6(v6);
    OUTLINED_FUNCTION_57_0();
    sub_227D49D98();

    swift_willThrow();
    v0[31] = v7;
  }

  OUTLINED_FUNCTION_141_5();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227D2C530()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 176);
  (*(v0 + 224))(*(v0 + 152), *(v0 + 160));
  *(v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_227D2CAF0;
    v3 = 0;
  }

  else
  {
    v4 = *(v0 + 216);

    OUTLINED_FUNCTION_45();
    v5 += 584;
    *(v0 + 256) = *v5;
    *(v0 + 264) = v5 & 0xFFFFFFFFFFFFLL | 0x736D000000000000;
    v2 = sub_227D2C6B0;
    v3 = v4;
  }

  return MEMORY[0x2822009F8](v2, v3, 0);
}

uint64_t sub_227D2C5F4()
{
  OUTLINED_FUNCTION_51_0();

  v1 = *(v0 + 104);
  OUTLINED_FUNCTION_28_15();
  v2(v1);

  OUTLINED_FUNCTION_18();

  return v3();
}

uint64_t sub_227D2C6B0()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 272) = (*(v0 + 256))();
  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227D2C714()
{
  if (*(v0[34] + 16))
  {
    sub_227D2CBAC(v0[13], &qword_27D7E83F8, &unk_227D61E50, &qword_27D7E9FF8, &qword_27D7EA020);
    if (v1)
    {
      sub_227D4CE58();
    }
  }

  v2 = v0[16];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v6 = v0[4];

  (*(v4 + 8))(v3, v5);
  v7 = sub_227D4A958();
  OUTLINED_FUNCTION_57_1(v6, v8, v9, v7);
  v10 = OUTLINED_FUNCTION_141();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_20_6();
  sub_227B69F68(v12, v13, v14);
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_20_6();
  sub_227B69F68(v15, v16, v17);
  sub_227D4A948();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v0[16];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_51_10();
    sub_227D2CC5C();
    v19 = v42;
  }

  OUTLINED_FUNCTION_23_12();
  if (v20)
  {
    OUTLINED_FUNCTION_51_10();
    sub_227D2CC5C();
    v19 = v43;
  }

  *(v19 + 16) = v2;
  OUTLINED_FUNCTION_12_17();
  v23(v22 + *(v21 + 40) * v6);
  v24 = v0[30];
  v25 = v0[14];
  v26 = v0[15] + 1;
  v0[15] = v26;
  v0[16] = v19;
  v27 = v0[13];
  if (v26 == v25)
  {

    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_135_0();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_1_38();
  v30(v27);
  sub_227D4A808();
  if (v24)
  {
    v35 = v0[13];
    OUTLINED_FUNCTION_28_15();
    v36(v35);

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_135_0();

    __asm { BRAA            X1, X16 }
  }

  v0[17] = sub_227D4A6A8();
  v0[18] = v31;
  OUTLINED_FUNCTION_42_10();
  v32 = OUTLINED_FUNCTION_91();
  v33(v32);
  v0[19] = sub_227D4A7F8();
  v0[20] = v34;
  v39 = swift_task_alloc();
  v0[21] = v39;
  *v39 = v0;
  v39[1] = sub_227D2C22C;
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_135_0();

  return sub_227CACB7C();
}

uint64_t sub_227D2CAF0()
{
  OUTLINED_FUNCTION_51_0();

  v1 = *(v0 + 104);
  OUTLINED_FUNCTION_28_15();
  v2(v1);

  OUTLINED_FUNCTION_18();

  return v3();
}

unint64_t sub_227D2CBAC(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_227B69F68(a4, a2, a3);
  sub_227D4CE98();
  v9 = OUTLINED_FUNCTION_78_0();
  return sub_227D2D0B4(v9, v10, a2, a3, a5);
}

void sub_227D2CC5C()
{
  OUTLINED_FUNCTION_189_0();
  if (v7)
  {
    v8 = *(v0 + 24);
    v9 = v8 >> 1;
    if ((v8 >> 1) < v4)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= v4)
      {
        v9 = v4;
      }
    }
  }

  else
  {
    v9 = v4;
  }

  v10 = *(v0 + 16);
  v11 = sub_227CFBA84(v10, v9, v5, v6);
  v12 = OUTLINED_FUNCTION_87_1();
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v12, v13) - 8);
  if (v3)
  {
    v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    sub_227D2CF4C(v0 + v15, v10, v11 + v15, v2, v1);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_227D2CD64(void *result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_227D2CE50(v8, v7);
  v10 = *(sub_227D4A0E8() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_227CFBC60(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_227D2CE50(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9FC8, &qword_227D633E0);
  v4 = *(sub_227D4A0E8() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_227D2CF4C(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 < a1 || (__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), OUTLINED_FUNCTION_62_0(), a1 + *(v10 + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_87_1();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_87_1();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_227D2D030()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_227D2D0B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v18 = a4;
  v19 = a5;
  v15 = a1;
  v17 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - v9;
  v20 = v5 + 64;
  v16 = v5;
  v11 = ~(-1 << *(v5 + 32));
  for (i = a2 & v11; ((1 << i) & *(v20 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v11)
  {
    (*(v8 + 16))(v10, *(v16 + 48) + *(v8 + 72) * i, v7);
    sub_227B69F68(v19, v17, v18);
    v13 = sub_227D4CF38();
    (*(v8 + 8))(v10, v7);
    if (v13)
    {
      break;
    }
  }

  return i;
}

void sub_227D2D2A0()
{
  OUTLINED_FUNCTION_189_0();
  if (v7)
  {
    v8 = *(v0 + 24);
    v9 = v8 >> 1;
    if ((v8 >> 1) < v4)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= v4)
      {
        v9 = v4;
      }
    }
  }

  else
  {
    v9 = v4;
  }

  v10 = *(v0 + 16);
  if (v9 <= v10)
  {
    v11 = *(v0 + 16);
  }

  else
  {
    v11 = v9;
  }

  if (!v11)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v12 = OUTLINED_FUNCTION_87_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_10_0(v14);
  v16 = *(v15 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v20 = _swift_stdlib_malloc_size(v19);
  if (!v16)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v20 - v18 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v10;
  v19[3] = 2 * ((v20 - v18) / v16);
LABEL_19:
  v22 = OUTLINED_FUNCTION_87_1();
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v22, v23) - 8);
  if (v3)
  {
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    sub_227D2CF4C(v0 + v25, v10, v19 + v25, v2, v1);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_227D2D450(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8288, &unk_227D58A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227D2D4C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_62_0();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_55_12()
{
  result = *v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_56_8(unint64_t *a1)
{

  return sub_227B12A9C(a1, v1);
}

void OUTLINED_FUNCTION_60_14()
{
  *(v2 + 16) = v1;
  v5 = v2 + 16 * v0;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
}

uint64_t OUTLINED_FUNCTION_102_6(uint64_t a1)
{
  *(v2 + 208) = *(*(v1 + 56) + 8 * a1);
}

uint64_t OUTLINED_FUNCTION_108_8()
{
  v2 = *(v0 + 64) + 16;

  return sub_227B11EE8(v2, v0 + 16);
}

uint64_t OUTLINED_FUNCTION_110_6()
{

  return sub_227D49E08();
}

uint64_t OUTLINED_FUNCTION_131_6(uint64_t a1)
{
}

char *OUTLINED_FUNCTION_132_7()
{

  return sub_227B3CA88(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_135_8()
{
}

uint64_t OUTLINED_FUNCTION_137_7(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, Swift::OpaquePointer from)
{

  return Locale.getClosestLocale(from:)(from).value._countAndFlagsBits;
}

uint64_t OUTLINED_FUNCTION_139_5()
{
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_227D2D958()
{
  v0 = OUTLINED_FUNCTION_58();
  sub_227B3D9FC(v0, v1);
  return OUTLINED_FUNCTION_58();
}

uint64_t sub_227D2D984()
{
  v1 = *(v0 + 304);
  sub_227D2D9CC(v1);
  return v1;
}

uint64_t sub_227D2D9CC(uint64_t result)
{
  if (result != 1)
  {
    sub_227D4CE58();
    sub_227D4CE58();

    return sub_227D4CE58();
  }

  return result;
}

uint64_t sub_227D2DA3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8E30, &qword_227D66BC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_227D2DB50()
{
  OUTLINED_FUNCTION_351();
  v2 = v1;
  v3 = v0;
  v78 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v79 = v11;
  v13 = v12;
  v76 = sub_227D49F28();
  OUTLINED_FUNCTION_9();
  v75 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v77 = v17 - v16;
  v73 = sub_227D49918();
  OUTLINED_FUNCTION_9();
  v72 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v74 = v21 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67F0, &unk_227D5BBE0);
  OUTLINED_FUNCTION_5(v22);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v23);
  v86 = v59 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CD8, &qword_227D5C1C0);
  OUTLINED_FUNCTION_5(v25);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v26);
  v80 = v59 - v27;
  v28 = *(v3 + 40);
  if (v28 == 1 && (*(v3 + 176) & 1) != 0)
  {
    v81 = 0;
    v82 = 0xE000000000000000;
    sub_227D4D668();
    v30 = *v3;
    v29 = *(v3 + 8);
    sub_227D4CE58();

    v81 = v30;
    v82 = v29;
    MEMORY[0x22AAA5DA0](0xD000000000000020, 0x8000000227D791C0);
    v31 = v81;
    v32 = v82;
    v81 = 0xD000000000000039;
    v82 = 0x8000000227D79180;
    MEMORY[0x22AAA5DA0](v31, v32);

    v33 = v81;
    v34 = v82;
    v35 = sub_227D49D88();
    sub_227D2E5D0();
    OUTLINED_FUNCTION_10_6();
    swift_allocError();
    *v36 = v33;
    v36[1] = v34;
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D0CE48], v35);
    swift_willThrow();
  }

  else
  {
    if (v6)
    {
      v70 = v6;
    }

    else
    {
      v8 = *v3;
      v70 = *(v3 + 8);
      sub_227D4CE58();
    }

    v37 = *(v3 + 16);
    v69 = v28;
    if (v37)
    {
      v38 = *(v3 + 8);
      v68 = *v3;
      v67 = v38;
      sub_227D4CE58();
    }

    else
    {
      v68 = 0;
      v67 = 0;
    }

    sub_227B11EE8(v10, &v81);
    v39 = *(v3 + 32);
    v66 = *(v3 + 24);
    v40 = *(v3 + 208);
    v64 = *(v3 + 200);
    v41 = *(v3 + 160);
    v63 = v40;
    sub_227D4CE58();
    sub_227D4CE58();
    v65 = v39;
    sub_227D4CE58();
    v42 = v41;
    if (!v41)
    {
      v42 = sub_227D4CE28();
    }

    v62 = v42;
    if (*(v3 + 224))
    {
      sub_227D4CE58();
      sub_227D4CE58();
      sub_227D49168();
    }

    else
    {
      v43 = sub_227D49188();
      __swift_storeEnumTagSinglePayload(v80, 1, 1, v43);
      sub_227D4CE58();
    }

    v44 = *(v3 + 56);
    if (v44)
    {
      v45 = *(v3 + 48);
      memcpy(v85, (v3 + 64), sizeof(v85));
      v83 = v45;
      v84 = v44;
      sub_227D2E2EC(v86);
    }

    else
    {
      v46 = sub_227D4AA38();
      __swift_storeEnumTagSinglePayload(v86, 1, 1, v46);
    }

    v52 = *(v3 + 192) == 1;
    v71 = v2;
    if (v52)
    {
      if (*(v3 + 176))
      {
        v61 = *(v3 + 168);
        v60 = 1;
      }

      else
      {
        v61 = sub_227D49988();
        v60 = 0;
      }
    }

    else
    {
      v60 = 0;
      v61 = *(v3 + 184);
    }

    v47 = *(v3 + 240);
    v48 = MEMORY[0x277D0CB40];
    v59[2] = v13;
    v59[1] = v8;
    if (v47)
    {
      v49 = sub_227D4D008();
      v51 = v50;
      v52 = v49 == 1668184435 && v50 == 0xE400000000000000;
      if (v52 || (v53 = v49, (OUTLINED_FUNCTION_104_9(1668184435, 0xE400000000000000) & 1) != 0) || (v53 == 0x6E6F7268636E7973 ? (v54 = v51 == 0xEB0000000073756FLL) : (v54 = 0), v54 || (OUTLINED_FUNCTION_104_9(0x6E6F7268636E7973, 0xEB0000000073756FLL) & 1) != 0))
      {

        v48 = MEMORY[0x277D0CB38];
      }

      else
      {
        v56 = v53 == 0x636E797361 && v51 == 0xE500000000000000;
        if (v56 || (OUTLINED_FUNCTION_104_9(0x636E797361, 0xE500000000000000) & 1) != 0 || (v53 == 0x6F7268636E797361 ? (v57 = v51 == 0xEC00000073756F6ELL) : (v57 = 0), v57))
        {

          v48 = MEMORY[0x277D0CB48];
        }

        else
        {
          v58 = OUTLINED_FUNCTION_104_9(0x6F7268636E797361, 0xEC00000073756F6ELL);

          v48 = MEMORY[0x277D0CB48];
          if ((v58 & 1) == 0)
          {
            v48 = MEMORY[0x277D0CB40];
          }
        }
      }
    }

    (*(v72 + 104))(v74, *v48, v73);
    if ((*(v3 + 17) == 2) | *(v3 + 17) & 1)
    {
      v55 = MEMORY[0x277D0CEE8];
    }

    else
    {
      v55 = MEMORY[0x277D0CEF0];
    }

    (*(v75 + 104))(v77, *v55, v76);
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D49928();
  }

  OUTLINED_FUNCTION_100_8();
  OUTLINED_FUNCTION_352();
}

uint64_t sub_227D2E2EC@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_227D4AA28();
  v5 = OUTLINED_FUNCTION_5(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6800, &qword_227D64440);
  OUTLINED_FUNCTION_5(v9);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  v12 = v25 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6830, &unk_227D5E270);
  OUTLINED_FUNCTION_0_59();
  v14 = v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v25 - v19;
  sub_227D4CE58();
  sub_227D4A768();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v2);
  (*(v14 + 32))(v20, v12, v2);
  (*(v14 + 16))(v18, v20, v2);
  sub_227D4A9F8();
  v21 = v1[4];
  v25[5] = v1[6];
  v25[6] = v21;
  v25[3] = v8;
  v25[4] = v1[8];
  v22 = v1[10];
  v25[1] = v1[12];
  v25[2] = v22;
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4A9C8();
  (*(v14 + 8))(v20, v2);
  v23 = sub_227D4AA38();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v23);
}

unint64_t sub_227D2E5D0()
{
  result = qword_27D7EA4B0;
  if (!qword_27D7EA4B0)
  {
    sub_227D49D88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA4B0);
  }

  return result;
}

uint64_t sub_227D2E628(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001BLL && 0x8000000227D791F0 == a2;
  if (v3 || (OUTLINED_FUNCTION_5_1(0xD00000000000001BLL, 0x8000000227D791F0) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_119_9();
    v8 = v3 && a2 == v7;
    if (v8 || (OUTLINED_FUNCTION_5_1(v6, 0xE900000000000064) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_120_6();
      v11 = v3 && a2 == v10;
      if (v11 || (OUTLINED_FUNCTION_27_16(v9, 25701) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v12 = OUTLINED_FUNCTION_139_6();
        v13 = v3 && a2 == 0xE500000000000000;
        if (v13 || (OUTLINED_FUNCTION_5_1(v12, 0xE500000000000000) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v14 = a1 == 0xD000000000000011 && 0x8000000227D75AA0 == a2;
          if (v14 || (OUTLINED_FUNCTION_5_1(0xD000000000000011, 0x8000000227D75AA0) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v15 = OUTLINED_FUNCTION_117_6();
            v16 = v3 && a2 == 0xE700000000000000;
            if (v16 || (OUTLINED_FUNCTION_5_1(v15, 0xE700000000000000) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v17 = a1 == 0xD000000000000011 && 0x8000000227D774C0 == a2;
              if (v17 || (OUTLINED_FUNCTION_5_1(0xD000000000000011, 0x8000000227D774C0) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v18 = a1 == 0x6579616C506E696DLL && a2 == 0xEA00000000007372;
                if (v18 || (OUTLINED_FUNCTION_5_1(0x6579616C506E696DLL, 0xEA00000000007372) & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v19 = a1 == 0x6579616C5078616DLL && a2 == 0xEA00000000007372;
                  if (v19 || (OUTLINED_FUNCTION_5_1(0x6579616C5078616DLL, 0xEA00000000007372) & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v20 = OUTLINED_FUNCTION_7_2();
                    v22 = a1 == v20 && a2 == v21;
                    if (v22 || (OUTLINED_FUNCTION_5_1(v20, v21) & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v23 = OUTLINED_FUNCTION_138_3();
                      v25 = a1 == v23 && a2 == v24;
                      if (v25 || (OUTLINED_FUNCTION_5_1(v23, v24) & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v26 = a1 == 0x6C79745379616C70 && a2 == 0xE900000000000065;
                        if (v26 || (OUTLINED_FUNCTION_5_1(0x6C79745379616C70, 0xE900000000000065) & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v27 = OUTLINED_FUNCTION_121_8();
                          if (v3 && a2 == 0xEA00000000006465)
                          {

                            return 12;
                          }

                          else
                          {
                            OUTLINED_FUNCTION_27_16(v27, 25701);
                            OUTLINED_FUNCTION_265_1();
                            if (a1)
                            {
                              return 12;
                            }

                            else
                            {
                              return 13;
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

uint64_t sub_227D2E920(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_151_3();
  switch(v3)
  {
    case 1:
      return result;
    case 2:
      result = 0x7361656C65527369;
      break;
    case 3:
      result = OUTLINED_FUNCTION_90_7();
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = OUTLINED_FUNCTION_76_9();
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      v4 = 1349413229;
      goto LABEL_16;
    case 8:
      v4 = 1350066541;
LABEL_16:
      result = v4 | 0x6579616C00000000;
      break;
    case 9:
      result = OUTLINED_FUNCTION_7_2();
      break;
    case 10:
      result = OUTLINED_FUNCTION_138_3();
      break;
    case 11:
      result = 0x6C79745379616C70;
      break;
    case 12:
      result = 0x7669686372417369;
      break;
    default:
      result = 0xD00000000000001BLL;
      break;
  }

  return result;
}

uint64_t sub_227D2EA68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227D2E628(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227D2EA98()
{
  sub_227D2EE34();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227D2EAD0()
{
  sub_227D2EE34();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void sub_227D2EB08()
{
  OUTLINED_FUNCTION_351();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA4B8, &unk_227D66BC8);
  OUTLINED_FUNCTION_0_59();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_23_13();
  sub_227D2EE34();
  OUTLINED_FUNCTION_39_11();
  OUTLINED_FUNCTION_69_10();
  sub_227D4DC08();
  v6[0] = 0;
  OUTLINED_FUNCTION_40_11();
  sub_227D4D9C8();
  if (!v1)
  {
    OUTLINED_FUNCTION_35_10(1);
    OUTLINED_FUNCTION_40_11();
    sub_227D4D9D8();
    OUTLINED_FUNCTION_35_10(2);
    OUTLINED_FUNCTION_40_11();
    sub_227D4D988();
    v6[0] = 3;
    OUTLINED_FUNCTION_40_11();
    sub_227D4D9C8();
    OUTLINED_FUNCTION_35_10(4);
    OUTLINED_FUNCTION_40_11();
    sub_227D4D9D8();
    memcpy(v7, (v0 + 48), 0x70uLL);
    memcpy(v6, (v0 + 48), sizeof(v6));
    sub_227D2DA3C(v7, v5);
    sub_227D2EE88();
    OUTLINED_FUNCTION_40_11();
    sub_227D4D9A8();
    memcpy(v5, v6, sizeof(v5));
    sub_227B2746C(v5, &qword_27D7E8E30, &qword_227D66BC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7940, &qword_227D54700);
    sub_227BA4C90(&qword_27D7E7958, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    OUTLINED_FUNCTION_40_11();
    sub_227D4D9A8();
    OUTLINED_FUNCTION_18_18(7);
    sub_227D4D998();
    OUTLINED_FUNCTION_18_18(8);
    sub_227D4D998();
    OUTLINED_FUNCTION_18_18(9);
    sub_227D4D978();
    OUTLINED_FUNCTION_18_18(10);
    sub_227D4D978();
    OUTLINED_FUNCTION_18_18(11);
    sub_227D4D978();
    OUTLINED_FUNCTION_40_11();
    sub_227D4D988();
  }

  v3 = OUTLINED_FUNCTION_30_14();
  v4(v3);
  OUTLINED_FUNCTION_100_8();
  OUTLINED_FUNCTION_352();
}

unint64_t sub_227D2EE34()
{
  result = qword_27D8029B0;
  if (!qword_27D8029B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8029B0);
  }

  return result;
}

unint64_t sub_227D2EE88()
{
  result = qword_27D7EA4C0;
  if (!qword_27D7EA4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA4C0);
  }

  return result;
}

void sub_227D2EEDC()
{
  OUTLINED_FUNCTION_351();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA4C8, &qword_227D66BD8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_68_3();
  v6 = OUTLINED_FUNCTION_236();
  OUTLINED_FUNCTION_256(v6, v7);
  v8 = sub_227D2EE34();
  OUTLINED_FUNCTION_131_7(&unk_283B40548, v9, v8);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    LOBYTE(v42[0]) = 0;
    OUTLINED_FUNCTION_48_12();
    v10 = sub_227D4D8F8();
    v40 = v11;
    OUTLINED_FUNCTION_9_16(1);
    v34 = sub_227D4D908();
    OUTLINED_FUNCTION_9_16(2);
    v33 = sub_227D4D8B8();
    OUTLINED_FUNCTION_9_16(3);
    v32 = sub_227D4D8F8();
    v39 = v12;
    OUTLINED_FUNCTION_9_16(4);
    v31 = sub_227D4D908();
    v64 = 5;
    sub_227D2F580();
    OUTLINED_FUNCTION_48_12();
    sub_227D4D8D8();
    memcpy(&v70[7], v65, 0x70uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7940, &qword_227D54700);
    LOBYTE(v41[0]) = 6;
    sub_227BA4C90(&qword_27D7E7948, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_48_12();
    sub_227D4D8D8();
    v38 = v42[0];
    OUTLINED_FUNCTION_9_16(7);
    v29 = sub_227D4D8C8();
    v30 = v4;
    v69 = v13 & 1;
    OUTLINED_FUNCTION_9_16(8);
    v14 = sub_227D4D8C8();
    v28 = v10;
    v67 = v15 & 1;
    OUTLINED_FUNCTION_9_16(9);
    v16 = sub_227D4D8A8();
    v37 = v17;
    v18 = v16;
    OUTLINED_FUNCTION_48_12();
    v19 = sub_227D4D8A8();
    v36 = v20;
    v21 = v19;
    LOBYTE(v42[0]) = 11;
    OUTLINED_FUNCTION_48_12();
    v27 = sub_227D4D8A8();
    v35 = v22;
    v63 = 12;
    OUTLINED_FUNCTION_48_12();
    v26 = sub_227D4D8B8();
    v23 = OUTLINED_FUNCTION_57_9();
    v24(v23);
    v41[0] = v28;
    v41[1] = v40;
    LOBYTE(v41[2]) = v34 & 1;
    BYTE1(v41[2]) = v33;
    v41[3] = v32;
    v41[4] = v39;
    LOBYTE(v41[5]) = v31 & 1;
    memcpy(&v41[5] + 1, v70, 0x77uLL);
    v41[20] = v38;
    v41[21] = v29;
    v25 = v69;
    LOBYTE(v41[22]) = v69;
    v41[23] = v14;
    v71 = v67;
    LOBYTE(v41[24]) = v67;
    v41[25] = v18;
    v41[26] = v37;
    v41[27] = v21;
    v41[28] = v36;
    v41[29] = v27;
    v41[30] = v35;
    LOBYTE(v41[31]) = v26;
    sub_227D2D920(v41, v42);
    __swift_destroy_boxed_opaque_existential_0(v2);
    v42[0] = v28;
    v42[1] = v40;
    v43 = v34 & 1;
    v44 = v33;
    v45 = v32;
    v46 = v39;
    v47 = v31 & 1;
    memcpy(v48, v70, sizeof(v48));
    v49 = v38;
    v50 = v29;
    v51 = v25;
    *v52 = *v68;
    *&v52[3] = *&v68[3];
    v53 = v14;
    v54 = v71;
    *v55 = *v66;
    *&v55[3] = *&v66[3];
    v56 = v18;
    v57 = v37;
    v58 = v21;
    v59 = v36;
    v60 = v27;
    v61 = v35;
    v62 = v26;
    sub_227D2F5D4(v42);
    memcpy(v30, v41, 0xF9uLL);
  }

  OUTLINED_FUNCTION_352();
}

unint64_t sub_227D2F580()
{
  result = qword_27D7EA4D0;
  if (!qword_27D7EA4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA4D0);
  }

  return result;
}

__n128 sub_227D2F604@<Q0>(void *__src@<X7>, uint64_t a2@<X0>, uint64_t a3@<X1>, char a4@<W2>, char a5@<W3>, uint64_t a6@<X4>, uint64_t a7@<X5>, char a8@<W6>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, __int128 a15, __int128 a16, uint64_t a17, uint64_t a18, char a19)
{
  memcpy(&__srca[7], __src, 0x70uLL);
  *a9 = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 17) = a5;
  *(a9 + 24) = a6;
  *(a9 + 32) = a7;
  *(a9 + 40) = a8;
  memcpy((a9 + 41), __srca, 0x77uLL);
  *(a9 + 160) = a10;
  *(a9 + 168) = a11;
  *(a9 + 176) = a12 & 1;
  *(a9 + 184) = a13;
  *(a9 + 192) = a14 & 1;
  result = a16;
  *(a9 + 200) = a15;
  *(a9 + 216) = a16;
  *(a9 + 232) = a17;
  *(a9 + 240) = a18;
  *(a9 + 248) = a19;
  return result;
}

void sub_227D2F72C(void *a1@<X8>)
{
  sub_227D2EEDC();
  if (!v1)
  {
    memcpy(a1, v3, 0xF9uLL);
  }
}

uint64_t sub_227D2F7A0(uint64_t a1)
{
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = MEMORY[0x277D84F90];
  if (*(a1 + 16))
  {
    OUTLINED_FUNCTION_133_6();
    v4 = v7;
    do
    {
      OUTLINED_FUNCTION_132_8();
      if (v2 >= v3 >> 1)
      {
        sub_227B3CA88((v3 > 1), v1, 1);
        v4 = v7;
      }

      OUTLINED_FUNCTION_122_4();
    }

    while (!v5);
  }

  return v4;
}

uint64_t sub_227D2F844(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = MEMORY[0x277D84F90];
  if (*(a2 + 16))
  {
    OUTLINED_FUNCTION_133_6();
    v5 = v8;
    do
    {
      OUTLINED_FUNCTION_132_8();
      if (v3 >= v4 >> 1)
      {
        sub_227B3CA88((v4 > 1), v2, 1);
        v5 = v8;
      }

      OUTLINED_FUNCTION_122_4();
    }

    while (!v6);
  }

  return v5;
}

uint64_t sub_227D2F8E8()
{
  OUTLINED_FUNCTION_43_11();
  v3 = v3 && v2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_14(v1) & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_107_7();
    v5 = v3 && v0 == 0xE400000000000000;
    if (v5 || (OUTLINED_FUNCTION_5_1(1701869940, 0xE400000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v6 = OUTLINED_FUNCTION_8_20();
      if (v3 && v0 == v7)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_27_16(v6, 29541);
        OUTLINED_FUNCTION_265_1();
        OUTLINED_FUNCTION_145_5();
        if (v3)
        {
          return v9 + 1;
        }

        else
        {
          return v9;
        }
      }
    }
  }
}

uint64_t sub_227D2F990(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_81_10();
  }

  if (a1 == 1)
  {
    return 1701869940;
  }

  return 0x7475626972747461;
}

uint64_t sub_227D2F9D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_227D2F8E8();
  *a1 = result;
  return result;
}

uint64_t sub_227D2FA00()
{
  sub_227D3716C();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227D2FA38()
{
  sub_227D3716C();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void sub_227D2FA70(uint64_t a1)
{
  OUTLINED_FUNCTION_116_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA4D8, &qword_227D66BE0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_192();
  sub_227D3716C();
  OUTLINED_FUNCTION_101_10();
  OUTLINED_FUNCTION_155();
  sub_227D4DC08();
  OUTLINED_FUNCTION_140_3();
  OUTLINED_FUNCTION_5_0();
  sub_227D4D9C8();
  if (!v1)
  {
    OUTLINED_FUNCTION_227_0();
    OUTLINED_FUNCTION_5_0();
    sub_227D4D9C8();
    OUTLINED_FUNCTION_125_4();
    sub_227D371C0();
    OUTLINED_FUNCTION_2_1();
    sub_227D4DA08();
  }

  v3 = OUTLINED_FUNCTION_193();
  v4(v3);
  OUTLINED_FUNCTION_115_7();
}

void sub_227D2FBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_351();
  v24 = v23;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA4E8, &qword_227D66BE8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_256(v24, v24[3]);
  sub_227D3716C();
  OUTLINED_FUNCTION_39_11();
  OUTLINED_FUNCTION_69_10();
  sub_227D4DBF8();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_0(v24);
  }

  else
  {
    OUTLINED_FUNCTION_79_10();
    v28 = sub_227D4D8F8();
    v30 = v29;
    v36 = v28;
    OUTLINED_FUNCTION_54_12();
    v34 = sub_227D4D8F8();
    v35 = v31;
    sub_227D37214();
    OUTLINED_FUNCTION_114_7();
    sub_227D4D938();
    v32 = OUTLINED_FUNCTION_0_22();
    v33(v32);
    __swift_destroy_boxed_opaque_existential_0(v24);
    *v26 = v36;
    v26[1] = v30;
    v26[2] = v34;
    v26[3] = v35;
    v26[4] = v37;
  }

  OUTLINED_FUNCTION_352();
}

uint64_t sub_227D2FDFC()
{
  sub_227D37268();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227D2FE34()
{
  sub_227D37268();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void sub_227D2FE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_21_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA4F8, &qword_227D66BF0);
  OUTLINED_FUNCTION_0_59();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_192();
  v17 = sub_227D37268();
  OUTLINED_FUNCTION_26_16(&unk_283B40428, v18, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA500, &qword_227D66BF8);
  sub_227D372BC();
  v19 = OUTLINED_FUNCTION_12_18();
  OUTLINED_FUNCTION_102_7(v19, v20, v21, v22, v23);
  v24 = OUTLINED_FUNCTION_5_29();
  v25(v24);
  OUTLINED_FUNCTION_64_9();
  OUTLINED_FUNCTION_115_7();
}

void sub_227D2FF58(uint64_t a1)
{
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_52_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA518, &qword_227D66C00);
  OUTLINED_FUNCTION_0_59();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_2_39();
  v4 = sub_227D37268();
  OUTLINED_FUNCTION_14_17(&unk_283B40428, v5, v4);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA500, &qword_227D66BF8);
    v6 = sub_227D37394();
    OUTLINED_FUNCTION_6_21(v6, v7);
    v8 = OUTLINED_FUNCTION_4_30();
    v9(v8);
    OUTLINED_FUNCTION_94_8();
  }

  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_115_7();
}

uint64_t sub_227D30058()
{
  OUTLINED_FUNCTION_37();
  v2 = OUTLINED_FUNCTION_137_8();
  v4 = v1 == v2 && v0 == v3;
  if (v4 || (OUTLINED_FUNCTION_5_1(v2, v3) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = v1 == 0x6D65766569686361 && v0 == 0xEC00000073746E65;
    if (v6 || (OUTLINED_FUNCTION_5_1(0x6D65766569686361, 0xEC00000073746E65) & 1) != 0)
    {

      return 1;
    }

    else if (v1 == 1936748641 && v0 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      OUTLINED_FUNCTION_5_1(1936748641, 0xE400000000000000);
      OUTLINED_FUNCTION_265_1();
      OUTLINED_FUNCTION_145_5();
      if (v4)
      {
        return v8 + 1;
      }

      else
      {
        return v8;
      }
    }
  }
}

uint64_t sub_227D30124(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_137_8();
  }

  if (a1 == 1)
  {
    return 0x6D65766569686361;
  }

  return 1936748641;
}

void sub_227D3017C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_227D2FF58(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t sub_227D301CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_227D30058();
  *a1 = result;
  return result;
}

uint64_t sub_227D301F4()
{
  sub_227D3746C();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227D3022C()
{
  sub_227D3746C();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void sub_227D30264()
{
  OUTLINED_FUNCTION_351();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA530, &qword_227D66C08);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_256(v2, v2[3]);
  sub_227D3746C();
  OUTLINED_FUNCTION_101_10();
  sub_227D4DC08();
  sub_227D374C0();
  OUTLINED_FUNCTION_5_0();
  sub_227D4D9A8();
  if (!v0)
  {
    OUTLINED_FUNCTION_118_5();
    OUTLINED_FUNCTION_5_0();
    sub_227D4D9A8();
    OUTLINED_FUNCTION_125_4();
    sub_227D37514();
    OUTLINED_FUNCTION_20_12();
    sub_227D4D9A8();
  }

  v4 = OUTLINED_FUNCTION_193();
  v5(v4);
  OUTLINED_FUNCTION_78_12();
  OUTLINED_FUNCTION_352();
}

void sub_227D303E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_351();
  OUTLINED_FUNCTION_52_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA548, &qword_227D66C10);
  OUTLINED_FUNCTION_0_59();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_2_39();
  v13 = sub_227D3746C();
  OUTLINED_FUNCTION_14_17(&unk_283B40398, v14, v13);
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    sub_227D37568();
    OUTLINED_FUNCTION_28_16();
    OUTLINED_FUNCTION_40_11();
    sub_227D4D8D8();
    OUTLINED_FUNCTION_118_5();
    OUTLINED_FUNCTION_28_16();
    OUTLINED_FUNCTION_40_11();
    sub_227D4D8D8();
    OUTLINED_FUNCTION_125_4();
    sub_227D375BC();
    OUTLINED_FUNCTION_28_16();
    sub_227D4D8D8();
    v15 = OUTLINED_FUNCTION_30_14();
    v16(v15);
    OUTLINED_FUNCTION_94_8();
  }

  OUTLINED_FUNCTION_100_8();
  OUTLINED_FUNCTION_352();
}

uint64_t sub_227D30590()
{
  OUTLINED_FUNCTION_43_11();
  v4 = v4 && v3 == 0xE200000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_14(v2) & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_107_7();
    v6 = v4 && v0 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_5_1(1701869940, 0xE400000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_8_20();
      v9 = v4 && v0 == v8;
      if (v9 || (OUTLINED_FUNCTION_27_16(v7, 29541) & 1) != 0)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_109_8();
        v10 = v4 && v0 == 0xE400000000000000;
        if (v10 || (OUTLINED_FUNCTION_5_1(1635018093, 0xE400000000000000) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v11 = OUTLINED_FUNCTION_13_20();
          if (v1 == v11 && v0 == v12)
          {

            return 4;
          }

          else
          {
            OUTLINED_FUNCTION_5_1(v11, v12);
            OUTLINED_FUNCTION_265_1();
            if (v1)
            {
              return 4;
            }

            else
            {
              return 5;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_227D30698(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = OUTLINED_FUNCTION_70_10();
      break;
    case 3:
      result = 1635018093;
      break;
    case 4:
      result = OUTLINED_FUNCTION_13_20();
      break;
    default:
      return result;
  }

  return result;
}

void sub_227D30704(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_227D303E8(a1, a2, a3, a4, a5, a6, a7, a8, v14, v15);
  if (!v9)
  {
    *a9 = v11;
    a9[1] = v12;
    a9[2] = v13;
  }
}

uint64_t sub_227D3075C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_227D30590();
  *a1 = result;
  return result;
}

uint64_t sub_227D30784()
{
  sub_227D37610();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227D307BC()
{
  sub_227D37610();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void sub_227D307F4()
{
  OUTLINED_FUNCTION_351();
  OUTLINED_FUNCTION_85_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA560, &qword_227D66C18);
  OUTLINED_FUNCTION_0_59();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_105_1();
  OUTLINED_FUNCTION_23_13();
  sub_227D37610();
  OUTLINED_FUNCTION_124_6();
  OUTLINED_FUNCTION_69_10();
  sub_227D4DC08();
  v6[0] = 0;
  OUTLINED_FUNCTION_34_12();
  sub_227D4D9C8();
  if (!v0)
  {
    v6[0] = 1;
    OUTLINED_FUNCTION_34_12();
    sub_227D4D9C8();
    memcpy(v7, (v1 + 32), 0xF9uLL);
    memcpy(v6, (v1 + 32), sizeof(v6));
    OUTLINED_FUNCTION_147_4();
    sub_227D2D920(v7, v5);
    sub_227D37664();
    OUTLINED_FUNCTION_16_13();
    sub_227D4DA08();
    memcpy(v5, v6, 0xF9uLL);
    sub_227D2F5D4(v5);
    sub_227D376B8();
    OUTLINED_FUNCTION_16_13();
    sub_227D4D9A8();
    sub_227D3770C();
    OUTLINED_FUNCTION_16_13();
    sub_227D4D9A8();
  }

  v3 = OUTLINED_FUNCTION_84_4();
  v4(v3);
  OUTLINED_FUNCTION_78_12();
  OUTLINED_FUNCTION_352();
}

void sub_227D309F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_351();
  v25 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA580, &qword_227D66C20);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_256(v25, v25[3]);
  sub_227D37610();
  OUTLINED_FUNCTION_155();
  sub_227D4DBF8();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  else
  {
    v43 = v27;
    v29 = sub_227D4D8F8();
    v42 = v30;
    LOBYTE(v45) = 1;
    v31 = sub_227D4D8F8();
    v41 = v32;
    v40 = v31;
    OUTLINED_FUNCTION_147_4();
    sub_227D37760();
    OUTLINED_FUNCTION_108_9();
    sub_227D4D938();
    memcpy(v59, v58, sizeof(v59));
    LOBYTE(v44[0]) = 3;
    sub_227D377B4();
    OUTLINED_FUNCTION_108_9();
    sub_227D4D8D8();
    v33 = v45;
    v39 = v46;
    sub_227D37808();
    OUTLINED_FUNCTION_108_9();
    sub_227D4D8D8();
    v34 = OUTLINED_FUNCTION_58_11();
    v35(v34);
    v36 = v55;
    v37 = v56;
    v38 = v57;
    v44[0] = v29;
    v44[1] = v42;
    v44[2] = v40;
    v44[3] = v41;
    memcpy(&v44[4], v59, 0xF9uLL);
    v44[36] = v33;
    v44[37] = v39;
    v44[38] = v55;
    v44[39] = v56;
    v44[40] = v57;
    sub_227C53A88(v44, &v45);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v45 = v29;
    v46 = v42;
    v47 = v40;
    v48 = v41;
    memcpy(v49, v59, sizeof(v49));
    v50 = v33;
    v51 = v39;
    v52 = v36;
    v53 = v37;
    v54 = v38;
    sub_227C53AE4(&v45);
    memcpy(v43, v44, 0x148uLL);
  }

  OUTLINED_FUNCTION_100_8();
  OUTLINED_FUNCTION_352();
}

void *sub_227D30DA4@<X0>(void *__src@<X4>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a2;
  a9[1] = a3;
  a9[2] = a4;
  a9[3] = a5;
  result = memcpy(a9 + 4, __src, 0xF9uLL);
  a9[36] = a6;
  a9[37] = a7;
  a9[38] = a8;
  a9[39] = a10;
  a9[40] = a11;
  return result;
}

void sub_227D30E08(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_227D309F4(a1, a2, a3, a4, a5, a6, a7, a8, v11, __src[0], SWORD2(__src[0]), SBYTE6(__src[0]), SHIBYTE(__src[0]), __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10]);
  if (!v9)
  {
    memcpy(a9, __src, 0x148uLL);
  }
}

uint64_t sub_227D30E74()
{
  sub_227D3785C();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227D30EAC()
{
  sub_227D3785C();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void sub_227D30EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_21_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA5A0, &qword_227D66C28);
  OUTLINED_FUNCTION_0_59();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_192();
  v17 = sub_227D3785C();
  OUTLINED_FUNCTION_26_16(&unk_283B40278, v18, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA5A8, &qword_227D66C30);
  sub_227D378B0();
  v19 = OUTLINED_FUNCTION_12_18();
  OUTLINED_FUNCTION_102_7(v19, v20, v21, v22, v23);
  v24 = OUTLINED_FUNCTION_5_29();
  v25(v24);
  OUTLINED_FUNCTION_64_9();
  OUTLINED_FUNCTION_115_7();
}

void sub_227D30FD0(uint64_t a1)
{
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_52_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA5C0, &qword_227D66C38);
  OUTLINED_FUNCTION_0_59();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_2_39();
  v4 = sub_227D3785C();
  OUTLINED_FUNCTION_14_17(&unk_283B40278, v5, v4);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA5A8, &qword_227D66C30);
    v6 = sub_227D37988();
    OUTLINED_FUNCTION_6_21(v6, v7);
    v8 = OUTLINED_FUNCTION_4_30();
    v9(v8);
    OUTLINED_FUNCTION_94_8();
  }

  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_115_7();
}

uint64_t sub_227D310D0()
{
  OUTLINED_FUNCTION_141_6();
  if (v2 == 0x6974697669746361 && v1 == 0xEA00000000007365)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_385_1(0x6974697669746361, 0xEA00000000007365, v2);
    OUTLINED_FUNCTION_265_1();
    v4 = v0 ^ 1;
  }

  return v4 & 1;
}

void sub_227D3113C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_227D30FD0(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t sub_227D311C4()
{
  sub_227D37A60();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227D311FC()
{
  sub_227D37A60();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void sub_227D31234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_21_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA5D8, &qword_227D66C40);
  OUTLINED_FUNCTION_0_59();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_192();
  v17 = sub_227D37A60();
  OUTLINED_FUNCTION_26_16(&unk_283B401E8, v18, v17);
  sub_227D37AB4();
  v19 = OUTLINED_FUNCTION_65_11();
  OUTLINED_FUNCTION_102_7(v19, v20, v21, v22, v23);
  v24 = OUTLINED_FUNCTION_5_29();
  v25(v24);
  OUTLINED_FUNCTION_64_9();
  OUTLINED_FUNCTION_115_7();
}

void sub_227D31314(uint64_t a1)
{
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_52_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA5E8, &qword_227D66C48);
  OUTLINED_FUNCTION_0_59();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_2_39();
  v4 = sub_227D37A60();
  OUTLINED_FUNCTION_14_17(&unk_283B401E8, v5, v4);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v1);
  }

  else
  {
    sub_227D37B08();
    OUTLINED_FUNCTION_82_10();
    OUTLINED_FUNCTION_40_11();
    sub_227D4D938();
    v6 = OUTLINED_FUNCTION_4_30();
    v7(v6);
    OUTLINED_FUNCTION_94_8();
  }

  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_115_7();
}

uint64_t sub_227D31414()
{
  OUTLINED_FUNCTION_141_6();
  v2 = OUTLINED_FUNCTION_13_20();
  if (v4 == v2 && v0 == v3)
  {

    v6 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_385_1(v2, v3, v4);
    OUTLINED_FUNCTION_265_1();
    v6 = v1 ^ 1;
  }

  return v6 & 1;
}

void sub_227D31464(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_227D31314(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t sub_227D314F8()
{
  sub_227D37B5C();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227D31530()
{
  sub_227D37B5C();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void sub_227D31568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_21_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA5F8, &qword_227D66C50);
  OUTLINED_FUNCTION_0_59();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_192();
  v17 = sub_227D37B5C();
  OUTLINED_FUNCTION_26_16(&unk_283B40158, v18, v17);
  sub_227D37BB0();
  v19 = OUTLINED_FUNCTION_65_11();
  OUTLINED_FUNCTION_102_7(v19, v20, v21, v22, v23);
  v24 = OUTLINED_FUNCTION_5_29();
  v25(v24);
  OUTLINED_FUNCTION_64_9();
  OUTLINED_FUNCTION_115_7();
}

void sub_227D31648(uint64_t a1)
{
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_52_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA608, &qword_227D66C58);
  OUTLINED_FUNCTION_0_59();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_2_39();
  v4 = sub_227D37B5C();
  OUTLINED_FUNCTION_14_17(&unk_283B40158, v5, v4);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v1);
  }

  else
  {
    sub_227D37C04();
    OUTLINED_FUNCTION_82_10();
    OUTLINED_FUNCTION_40_11();
    sub_227D4D938();
    v6 = OUTLINED_FUNCTION_4_30();
    v7(v6);
    OUTLINED_FUNCTION_94_8();
  }

  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_115_7();
}

void sub_227D31748(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_227D31648(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t sub_227D31790()
{
  sub_227D37C58();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227D317C8()
{
  sub_227D37C58();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void sub_227D31800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_21_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA618, &qword_227D66C60);
  OUTLINED_FUNCTION_0_59();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_192();
  v17 = sub_227D37C58();
  OUTLINED_FUNCTION_26_16(&unk_283B400C8, v18, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA620, &qword_227D66C68);
  sub_227D37CAC();
  v19 = OUTLINED_FUNCTION_12_18();
  OUTLINED_FUNCTION_102_7(v19, v20, v21, v22, v23);
  v24 = OUTLINED_FUNCTION_5_29();
  v25(v24);
  OUTLINED_FUNCTION_64_9();
  OUTLINED_FUNCTION_115_7();
}

void sub_227D318EC(uint64_t a1)
{
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_52_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA638, &qword_227D66C70);
  OUTLINED_FUNCTION_0_59();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_2_39();
  v4 = sub_227D37C58();
  OUTLINED_FUNCTION_14_17(&unk_283B400C8, v5, v4);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA620, &qword_227D66C68);
    v6 = sub_227D37D84();
    OUTLINED_FUNCTION_6_21(v6, v7);
    v8 = OUTLINED_FUNCTION_4_30();
    v9(v8);
    OUTLINED_FUNCTION_94_8();
  }

  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_115_7();
}

void sub_227D319EC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_227D318EC(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t sub_227D31A7C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_113_9();
  v5 = v5 && v4 == a2;
  if (v5 || (v6 = v3, (OUTLINED_FUNCTION_5_1(0xD00000000000001BLL, v4) & 1) != 0))
  {

    return 0;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_119_9();
    v9 = v5 && a2 == 0xE900000000000064;
    if (v9 || (OUTLINED_FUNCTION_5_1(v8, 0xE900000000000064) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v10 = OUTLINED_FUNCTION_121_8();
      v11 = v5 && a2 == 0xEA00000000006465;
      if (v11 || (OUTLINED_FUNCTION_27_16(v10, 25701) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v12 = OUTLINED_FUNCTION_120_6();
        v13 = v5 && a2 == 0xEA00000000006465;
        if (v13 || (OUTLINED_FUNCTION_27_16(v12, 25701) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v14 = OUTLINED_FUNCTION_136_6();
          v16 = v6 == v14 && a2 == v15;
          if (v16 || (OUTLINED_FUNCTION_5_1(v14, v15) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v17 = OUTLINED_FUNCTION_139_6();
            v18 = v5 && a2 == 0xE500000000000000;
            if (v18 || (OUTLINED_FUNCTION_5_1(v17, 0xE500000000000000) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v19 = v6 == 0x7374706D65747461 && a2 == 0xE800000000000000;
              if (v19 || (OUTLINED_FUNCTION_5_1(0x7374706D65747461, 0xE800000000000000) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v20 = v6 == 0x6E6F697461727564 && a2 == 0xE900000000000073;
                if (v20 || (OUTLINED_FUNCTION_5_1(0x6E6F697461727564, 0xE900000000000073) & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v21 = OUTLINED_FUNCTION_117_6();
                  v22 = v5 && a2 == 0xE700000000000000;
                  if (v22 || (OUTLINED_FUNCTION_5_1(v21, 0xE700000000000000) & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v23 = OUTLINED_FUNCTION_7_2();
                    if (v6 == v23 && a2 == v24)
                    {

                      return 9;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_5_1(v23, v24);
                      OUTLINED_FUNCTION_265_1();
                      if (v6)
                      {
                        return 9;
                      }

                      else
                      {
                        return 10;
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

void sub_227D31C98(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_151_3();
  switch(v2)
  {
    case 2:
    case 3:
      OUTLINED_FUNCTION_97_7();
      break;
    case 4:
      OUTLINED_FUNCTION_136_6();
      break;
    case 5:
      OUTLINED_FUNCTION_90_7();
      break;
    case 8:
      OUTLINED_FUNCTION_76_9();
      break;
    case 9:
      OUTLINED_FUNCTION_7_2();
      break;
    default:
      return;
  }
}

uint64_t sub_227D31D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227D31A7C(a1, a2);
  *a3 = result;
  return result;
}