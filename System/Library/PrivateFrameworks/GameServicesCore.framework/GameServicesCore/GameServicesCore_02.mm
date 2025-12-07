uint64_t sub_227B3F7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    v13 = v12[15];
    OUTLINED_FUNCTION_36();
    v14 = OUTLINED_FUNCTION_9_1();
    v15(v14);
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_4_5(&qword_280E7B830);
    OUTLINED_FUNCTION_3_5(&qword_280E7B838);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    if (v13)
    {
      v16 = v12[14];
      (*(v12[11] + 8))(v12[12], v12[10]);
      (*(v16 + 8))(v12[15], v12[13]);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_33();

      return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v28 = swift_task_alloc();
      v12[16] = v28;
      type metadata accessor for GameActivityService(0);
      OUTLINED_FUNCTION_0_1();
      sub_227B0F660(v29, v30, &protocol conformance descriptor for GameActivityService);
      OUTLINED_FUNCTION_48_0();
      *v28 = v31;
      v28[1] = sub_227B3FA78;
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B10](v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
    }
  }

  else
  {
    v26 = swift_task_alloc();
    v12[18] = v26;
    *v26 = v12;
    v26[1] = sub_227B3FC38;
    OUTLINED_FUNCTION_53(v12[2]);
    OUTLINED_FUNCTION_33();

    return sub_227B40148();
  }
}

uint64_t sub_227B3FA78()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B3FB70()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = OUTLINED_FUNCTION_42();
  v2(v1);
  v3 = OUTLINED_FUNCTION_22_1();
  v4(v3);

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_117_0();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_227B3FC38()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_77_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_81_1();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_164();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_227B3FD88()
{
  OUTLINED_FUNCTION_20();
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = OUTLINED_FUNCTION_57_0();
  v2(v1);
  (*(v0[14] + 8))(v0[15], v0[13]);

  OUTLINED_FUNCTION_18();

  return v3();
}

uint64_t sub_227B3FE5C(uint64_t a1, uint64_t *a2)
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
  v5[1] = sub_227B3FFF4;

  return GameActivityService.refreshGameActivity(game:)();
}

uint64_t sub_227B3FFF4()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_80_0();
  v1 = v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_2();
  v4(v3);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_164();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_227B40148()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_227D4A058();
  v1[4] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_30();

  return MEMORY[0x2822009F8](sub_227B401F4, v0, 0);
}

uint64_t sub_227B401F4()
{
  OUTLINED_FUNCTION_6();
  (*(v0[5] + 104))(v0[6], *MEMORY[0x277D0D040], v0[4]);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_227B402B4;
  OUTLINED_FUNCTION_40_0();

  return sub_227B4EFC0();
}

uint64_t sub_227B402B4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v3 + 64) = v0;

  if (v0)
  {
    v6 = *(v3 + 24);

    return MEMORY[0x2822009F8](sub_227B403F4, v6, 0);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_102_0();
    v8(v7);

    OUTLINED_FUNCTION_15_0();

    return v9();
  }
}

uint64_t sub_227B403F4()
{
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_102_0();
  v1(v0);

  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t GameActivityService.listGameActivityDefinitions(game:filters:after:)()
{
  OUTLINED_FUNCTION_6();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[3] = v5;
  v6 = sub_227D49458();
  v1[8] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[9] = v7;
  v1[10] = OUTLINED_FUNCTION_30();
  v1[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  v1[12] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A20, &unk_227D4EC60);
  v1[13] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[14] = v9;
  v1[15] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A28, &qword_227D636E0);
  v1[16] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[17] = v11;
  v1[18] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[19] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[20] = v13;
  v1[21] = OUTLINED_FUNCTION_30();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A08, &qword_227D4EB50);
  v1[22] = v14;
  OUTLINED_FUNCTION_10_0(v14);
  v1[23] = v15;
  v1[24] = OUTLINED_FUNCTION_30();
  v16 = sub_227D49D58();
  v1[25] = v16;
  OUTLINED_FUNCTION_10_0(v16);
  v1[26] = v17;
  v1[27] = OUTLINED_FUNCTION_30();
  v18 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_227B406F4()
{
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[27];
    OUTLINED_FUNCTION_36();
    v2 = OUTLINED_FUNCTION_9_1();
    v3(v2);
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_4_5(&qword_280E7B830);
    OUTLINED_FUNCTION_3_5(&qword_280E7B838);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    if (v1)
    {
      (*(v0[23] + 8))(v0[24], v0[22]);
      v4 = OUTLINED_FUNCTION_57_0();
      v5(v4);
      OUTLINED_FUNCTION_115_0(v0[27]);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_72();

      return v14();
    }

    else
    {
      v0[2] = v0[5];
      sub_227D4CE58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A30, &unk_227D62390);
      OUTLINED_FUNCTION_94_0();
      OUTLINED_FUNCTION_88_1();
      sub_227D49478();
      sub_227B418A4();
      sub_227B419DC();
      OUTLINED_FUNCTION_10();
      sub_227D49D18();
      sub_227B41B14(v0[6], v0[12]);
      OUTLINED_FUNCTION_61_0();
      sub_227B15FB0();
      sub_227B16064();
      OUTLINED_FUNCTION_38_1();
      sub_227D49D18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      v16 = OUTLINED_FUNCTION_113();
      __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
      OUTLINED_FUNCTION_55_2(&qword_27D7E6A78);
      v18 = OUTLINED_FUNCTION_54_2(&qword_27D7E6A80);
      OUTLINED_FUNCTION_17(v18);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v19 = swift_task_alloc();
      v0[28] = v19;
      type metadata accessor for GameActivityService(0);
      OUTLINED_FUNCTION_0_1();
      sub_227B0F660(v20, v21, &protocol conformance descriptor for GameActivityService);
      OUTLINED_FUNCTION_48_0();
      *v19 = v22;
      v19[1] = sub_227B40C14;
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_135_0();

      return MEMORY[0x282164B00](v23);
    }
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v0[30] = v6;
    *v6 = v7;
    v6[1] = sub_227B40E2C;
    OUTLINED_FUNCTION_72();

    return sub_227B41704(v8, v9, v10, v11);
  }
}

uint64_t sub_227B40C14()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B40D0C()
{
  v5 = OUTLINED_FUNCTION_53_0();
  v6(v5);
  v7 = OUTLINED_FUNCTION_93_0();
  v8(v7);
  v9 = (*(v0 + 8))(v2, v3);
  v17 = OUTLINED_FUNCTION_106(v9, v10, v11, v12, v13, v14, v15, v16, v22);
  v18(v17, v1);
  (*(v4 + 8))();

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_98_0();

  return v19();
}

uint64_t sub_227B40E2C()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_77_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_81_1();

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_227B40FE0()
{
  v6 = OUTLINED_FUNCTION_53_0();
  v7(v6);
  v8 = OUTLINED_FUNCTION_93_0();
  v9(v8);
  v10 = (*(v0 + 8))(v3, v4);
  v18 = OUTLINED_FUNCTION_106(v10, v11, v12, v13, v14, v15, v16, v17, v23);
  v19(v18, v2);
  (*(v5 + 8))();
  OUTLINED_FUNCTION_115_0(*(v1 + 216));

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_98_0();

  return v20();
}

uint64_t sub_227B410F4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_227D49CF8();
  v6 = a2[1];
  v2[5] = v6;
  v2[6] = *(v6 - 8);
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_227D49CF8();
  v7 = a2[2];
  v2[8] = v7;
  v2[9] = *(v7 - 8);
  v2[10] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v8 = swift_task_alloc();
  v2[11] = v8;
  *v8 = v2;
  v8[1] = sub_227B414B4;

  return GameActivityService.listGameActivityDefinitions(game:filters:after:)();
}

uint64_t sub_227B414B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_14();
  v18 = *(v17 + 80);
  v42 = *(v17 + 72);
  OUTLINED_FUNCTION_69();
  v20 = *(v19 + 64);
  v22 = *(v21 + 56);
  v41 = *(v21 + 48);
  OUTLINED_FUNCTION_69();
  v24 = *(v23 + 40);
  v26 = v25[4];
  v27 = v25[3];
  v28 = v25[2];
  OUTLINED_FUNCTION_80_0();
  v30 = v29;
  OUTLINED_FUNCTION_5_4();
  *v31 = v30;

  (*(v27 + 8))(v26, v28);
  (*(v41 + 8))(v22, v24);
  (*(v42 + 8))(v18, v20);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, v41, v20 - 8, v42, v16, a14, a15, a16);
}

uint64_t sub_227B41704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227B41720()
{
  OUTLINED_FUNCTION_6();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 56) = v1;
  *v1 = v2;
  v1[1] = sub_227B417C4;

  return sub_227B53F5C();
}

uint64_t sub_227B417C4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_18();

  return v3();
}

unint64_t sub_227B418A4()
{
  result = qword_27D7E6A38;
  if (!qword_27D7E6A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6A30, &unk_227D62390);
    sub_227B41928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6A38);
  }

  return result;
}

unint64_t sub_227B41928()
{
  result = qword_27D7E6A40;
  if (!qword_27D7E6A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6A48, &unk_227D4EC80);
    sub_227B0F660(&qword_27D7E6A50, MEMORY[0x277D0CD78], MEMORY[0x277D0CD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6A40);
  }

  return result;
}

unint64_t sub_227B419DC()
{
  result = qword_27D7E6A58;
  if (!qword_27D7E6A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6A30, &unk_227D62390);
    sub_227B41A60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6A58);
  }

  return result;
}

unint64_t sub_227B41A60()
{
  result = qword_27D7E6A60;
  if (!qword_27D7E6A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6A48, &unk_227D4EC80);
    sub_227B0F660(&qword_27D7E6A68, MEMORY[0x277D0CD78], MEMORY[0x277D0CD80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6A60);
  }

  return result;
}

uint64_t sub_227B41B14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t GameActivityService.describeGameActivityDefinitions(gameActivityDefinitions:)()
{
  OUTLINED_FUNCTION_6();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_227D49458();
  v1[6] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[7] = v4;
  v1[8] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A88, &qword_227D62480);
  v1[9] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[10] = v6;
  v1[11] = OUTLINED_FUNCTION_30();
  v7 = sub_227D49D58();
  v1[12] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[13] = v8;
  v1[14] = OUTLINED_FUNCTION_30();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B41CCC()
{
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[14];
    v2 = v0[4];
    OUTLINED_FUNCTION_36();
    v0[2] = v2;
    sub_227D4CE58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A90, &unk_227D62490);
    sub_227D49478();
    sub_227B42330();
    sub_227B423E0();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    if (v1)
    {
      v4 = OUTLINED_FUNCTION_90_3();
      v5(v4);
      v6 = OUTLINED_FUNCTION_57_0();
      v7(v6);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_72();

      return v8();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AC0, &unk_227D624A0);
      sub_227B42490();
      v3 = sub_227B425C8();
      OUTLINED_FUNCTION_17(v3);
      sub_227D49D08();
      sub_227D49468();
      v14 = swift_task_alloc();
      v0[15] = v14;
      type metadata accessor for GameActivityService(0);
      OUTLINED_FUNCTION_0_1();
      sub_227B0F660(v15, v16, &protocol conformance descriptor for GameActivityService);
      OUTLINED_FUNCTION_47();
      *v14 = v17;
      v14[1] = sub_227B41FE0;
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_135_0();

      return MEMORY[0x282164B00](v18);
    }
  }

  else
  {
    v11 = swift_task_alloc();
    v0[17] = v11;
    *v11 = v0;
    v11[1] = sub_227B4AF8C;
    OUTLINED_FUNCTION_53(v0[4]);
    OUTLINED_FUNCTION_72();

    return sub_227B42278(v12);
  }
}

uint64_t sub_227B41FE0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B420D8(uint64_t a1, uint64_t *a2, uint64_t a3)
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
  v6[1] = sub_227B4AFB0;

  return GameActivityService.describeGameActivityDefinitions(gameActivityDefinitions:)();
}

uint64_t sub_227B42278(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227B42294, v1);
}

uint64_t sub_227B42294()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_227B4AFB8;
  OUTLINED_FUNCTION_40_0();

  return sub_227B55528();
}

unint64_t sub_227B42330()
{
  result = qword_27D7E6A98;
  if (!qword_27D7E6A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6A90, &unk_227D62490);
    sub_227B15A74(&qword_27D7E6AA0, &qword_27D7E6AA8, &unk_227D4ED70, MEMORY[0x277D0D520]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6A98);
  }

  return result;
}

unint64_t sub_227B423E0()
{
  result = qword_27D7E6AB0;
  if (!qword_27D7E6AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6A90, &unk_227D62490);
    sub_227B15A74(&qword_27D7E6AB8, &qword_27D7E6AA8, &unk_227D4ED70, MEMORY[0x277D0D500]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6AB0);
  }

  return result;
}

unint64_t sub_227B42490()
{
  result = qword_27D7E6AC8;
  if (!qword_27D7E6AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6AC0, &unk_227D624A0);
    sub_227B42514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6AC8);
  }

  return result;
}

unint64_t sub_227B42514()
{
  result = qword_27D7E6AD0;
  if (!qword_27D7E6AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6AD8, &unk_227D4ED80);
    sub_227B0F660(&qword_27D7E6AE0, MEMORY[0x277D0CB78], MEMORY[0x277D0CB88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6AD0);
  }

  return result;
}

unint64_t sub_227B425C8()
{
  result = qword_27D7E6AE8;
  if (!qword_27D7E6AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6AC0, &unk_227D624A0);
    sub_227B4264C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6AE8);
  }

  return result;
}

unint64_t sub_227B4264C()
{
  result = qword_27D7E6AF0;
  if (!qword_27D7E6AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6AD8, &unk_227D4ED80);
    sub_227B0F660(&qword_27D7E6AF8, MEMORY[0x277D0CB78], MEMORY[0x277D0CB80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6AF0);
  }

  return result;
}

uint64_t GameActivityService.listGameActivities(game:filters:excludedFilters:after:)()
{
  OUTLINED_FUNCTION_6();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[4] = v5;
  v1[5] = v6;
  v7 = sub_227D49458();
  v1[10] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_30();
  v1[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  v1[14] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A20, &unk_227D4EC60);
  v1[15] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[16] = v10;
  v1[17] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B00, &qword_227D4EE30);
  v1[18] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[19] = v12;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[22] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v1[23] = v14;
  v1[24] = OUTLINED_FUNCTION_30();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A08, &qword_227D4EB50);
  v1[25] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v1[26] = v16;
  v1[27] = OUTLINED_FUNCTION_30();
  v17 = sub_227D49D58();
  v1[28] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v1[29] = v18;
  v1[30] = OUTLINED_FUNCTION_30();
  v19 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_227B429A0()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[30];
    OUTLINED_FUNCTION_36();
    v2 = OUTLINED_FUNCTION_9_1();
    v3(v2);
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_4_5(&qword_280E7B830);
    OUTLINED_FUNCTION_3_5(&qword_280E7B838);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    if (v1)
    {
      (*(v0[26] + 8))(v0[27], v0[25]);
      v4 = OUTLINED_FUNCTION_57_0();
      v5(v4);
      OUTLINED_FUNCTION_114_0();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_98_0();

      return v15();
    }

    else
    {
      v0[2] = v0[6];
      sub_227D4CE58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B08, &qword_227D4EE40);
      OUTLINED_FUNCTION_94_0();
      OUTLINED_FUNCTION_88_1();
      sub_227D49478();
      sub_227B43CD4();
      sub_227B43D58();
      OUTLINED_FUNCTION_113_0();
      v0[3] = v0[7];
      sub_227D4CE58();
      sub_227D49478();
      OUTLINED_FUNCTION_113_0();
      sub_227B41B14(v0[8], v0[14]);
      OUTLINED_FUNCTION_61_0();
      sub_227B15FB0();
      sub_227B16064();
      OUTLINED_FUNCTION_38_1();
      sub_227D49D18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      v17 = OUTLINED_FUNCTION_113();
      __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
      OUTLINED_FUNCTION_55_2(&qword_280E7B820);
      v19 = OUTLINED_FUNCTION_54_2(&qword_280E7B828);
      OUTLINED_FUNCTION_17(v19);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v20 = swift_task_alloc();
      v0[31] = v20;
      type metadata accessor for GameActivityService(0);
      OUTLINED_FUNCTION_0_1();
      sub_227B0F660(v21, v22, &protocol conformance descriptor for GameActivityService);
      OUTLINED_FUNCTION_48_0();
      *v20 = v23;
      v20[1] = sub_227B42FEC;
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_98_0();

      return MEMORY[0x282164B00](v24);
    }
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v0[33] = v6;
    *v6 = v7;
    v6[1] = sub_227B1E11C;
    OUTLINED_FUNCTION_98_0();

    return sub_227B43B30(v8, v9, v10, v11, v12);
  }
}

uint64_t sub_227B42FEC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 256) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B430E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  v21 = OUTLINED_FUNCTION_47_0();
  v22(v21);
  v23 = OUTLINED_FUNCTION_113();
  v24(v23);
  v25 = *(v18 + 8);
  v26 = OUTLINED_FUNCTION_173();
  v25(v26);
  (v25)(v19, v20);
  (*(v16 + 8))(a11, a10);
  (*(v17 + 8))(a13, a12);

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_23();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_227B4320C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  v21 = OUTLINED_FUNCTION_47_0();
  v22(v21);
  v23 = OUTLINED_FUNCTION_113();
  v24(v23);
  v25 = *(v18 + 8);
  v26 = OUTLINED_FUNCTION_173();
  v25(v26);
  (v25)(v19, v20);
  (*(v16 + 8))(a11, a10);
  (*(v17 + 8))(a13, a12);
  OUTLINED_FUNCTION_114_0();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_227B43328(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_227D49CF8();
  v6 = a2[1];
  v2[5] = v6;
  v2[6] = *(v6 - 8);
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_14:
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
  v7 = a2[2];
  v2[8] = v7;
  v2[9] = *(v7 - 8);
  v2[10] = swift_task_alloc();
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
  v8 = a2[3];
  v2[11] = v8;
  v2[12] = *(v8 - 8);
  v2[13] = swift_task_alloc();
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
    return result;
  }

  sub_227D49CF8();
  v9 = swift_task_alloc();
  v2[14] = v9;
  *v9 = v2;
  v9[1] = sub_227B43840;

  return GameActivityService.listGameActivities(game:filters:excludedFilters:after:)();
}

uint64_t sub_227B43840()
{
  OUTLINED_FUNCTION_14();
  v26 = *(v0 + 104);
  OUTLINED_FUNCTION_69();
  v25 = *(v1 + 96);
  OUTLINED_FUNCTION_69();
  v3 = *(v2 + 88);
  v24 = *(v4 + 80);
  OUTLINED_FUNCTION_69();
  v23 = *(v5 + 72);
  OUTLINED_FUNCTION_69();
  v7 = *(v6 + 64);
  v22 = *(v8 + 56);
  OUTLINED_FUNCTION_69();
  v21 = *(v9 + 48);
  OUTLINED_FUNCTION_69();
  v11 = *(v10 + 40);
  v13 = v12[4];
  v14 = v12[3];
  v15 = v12[2];
  OUTLINED_FUNCTION_80_0();
  v17 = v16;
  OUTLINED_FUNCTION_5_4();
  *v18 = v17;

  (*(v14 + 8))(v13, v15);
  (*(v21 + 8))(v22, v11);
  (*(v23 + 8))(v24, v7);
  (*(v25 + 8))(v26, v3);

  v19 = *(v17 + 8);

  return v19();
}

uint64_t sub_227B43B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227B43B4C()
{
  OUTLINED_FUNCTION_6();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 64) = v1;
  *v1 = v2;
  v1[1] = sub_227B43BF4;

  return sub_227B56840();
}

uint64_t sub_227B43BF4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_18();

  return v3();
}

unint64_t sub_227B43CD4()
{
  result = qword_280E7B7E0;
  if (!qword_280E7B7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6B08, &qword_227D4EE40);
    sub_227B15CD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7B7E0);
  }

  return result;
}

unint64_t sub_227B43D58()
{
  result = qword_280E7B7E8;
  if (!qword_280E7B7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6B08, &qword_227D4EE40);
    sub_227B15D84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7B7E8);
  }

  return result;
}

uint64_t GameActivityService.describeGameActivities(activities:)()
{
  OUTLINED_FUNCTION_6();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_227D49458();
  v1[6] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[7] = v4;
  v1[8] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B20, &qword_227D65880);
  v1[9] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[10] = v6;
  v1[11] = OUTLINED_FUNCTION_30();
  v7 = sub_227D49D58();
  v1[12] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[13] = v8;
  v1[14] = OUTLINED_FUNCTION_30();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B43F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    v13 = v12[14];
    v14 = v12[4];
    OUTLINED_FUNCTION_36();
    v12[2] = v14;
    sub_227D4CE58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B28, &unk_227D65890);
    sub_227D49478();
    sub_227B44A84();
    sub_227B44B34();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    if (v13)
    {
      v16 = OUTLINED_FUNCTION_90_3();
      v17(v16);
      v18 = OUTLINED_FUNCTION_57_0();
      v19(v18);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B48, &unk_227D658A0);
      sub_227B44BE4();
      v15 = sub_227B44D1C();
      OUTLINED_FUNCTION_17(v15);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v32 = swift_task_alloc();
      v12[15] = v32;
      type metadata accessor for GameActivityService(0);
      OUTLINED_FUNCTION_0_1();
      sub_227B0F660(v33, v34, &protocol conformance descriptor for GameActivityService);
      OUTLINED_FUNCTION_47();
      *v32 = v35;
      v32[1] = sub_227B4421C;
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B00](v36);
    }
  }

  else
  {
    v29 = swift_task_alloc();
    v12[17] = v29;
    *v29 = v12;
    v29[1] = sub_227B443C8;
    OUTLINED_FUNCTION_53(v12[4]);
    OUTLINED_FUNCTION_46();

    return sub_227B448E0(v30);
  }
}

uint64_t sub_227B4421C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B44314()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v0 = OUTLINED_FUNCTION_83();
  v1(v0);
  v2 = OUTLINED_FUNCTION_42();
  v3(v2);
  v4 = OUTLINED_FUNCTION_22_1();
  v5(v4);

  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_117_0();

  return v8(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_227B443C8()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_164();

  return v5(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_227B44520()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v0 = OUTLINED_FUNCTION_83();
  v1(v0);
  v2 = OUTLINED_FUNCTION_42();
  v3(v2);
  v4 = OUTLINED_FUNCTION_22_1();
  v5(v4);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_117_0();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_227B445CC(uint64_t a1, uint64_t *a2, uint64_t a3)
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
  v6[1] = sub_227B4476C;

  return GameActivityService.describeGameActivities(activities:)();
}

uint64_t sub_227B4476C()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_80_0();
  *v0 = v1;
  *v3 = v2;

  v4 = OUTLINED_FUNCTION_9_2();
  v5(v4);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_164();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_227B448E0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227B448FC, v1);
}

uint64_t sub_227B448FC()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_227B44998;
  OUTLINED_FUNCTION_40_0();

  return sub_227B56ECC();
}

uint64_t sub_227B44998()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;

  OUTLINED_FUNCTION_115();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

unint64_t sub_227B44A84()
{
  result = qword_27D7E6B30;
  if (!qword_27D7E6B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6B28, &unk_227D65890);
    sub_227B15A74(&qword_280E7B690, &qword_27D7E6B38, &unk_227D4EF40, MEMORY[0x277D0D520]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6B30);
  }

  return result;
}

unint64_t sub_227B44B34()
{
  result = qword_27D7E6B40;
  if (!qword_27D7E6B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6B28, &unk_227D65890);
    sub_227B15A74(&qword_280E7B698, &qword_27D7E6B38, &unk_227D4EF40, MEMORY[0x277D0D500]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6B40);
  }

  return result;
}

unint64_t sub_227B44BE4()
{
  result = qword_27D7E6B50;
  if (!qword_27D7E6B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6B48, &unk_227D658A0);
    sub_227B44C68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6B50);
  }

  return result;
}

unint64_t sub_227B44C68()
{
  result = qword_27D7E6B58;
  if (!qword_27D7E6B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6B60, &unk_227D4EF50);
    sub_227B0F660(&qword_27D7E6B68, MEMORY[0x277D0CB18], MEMORY[0x277D0CB30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6B58);
  }

  return result;
}

unint64_t sub_227B44D1C()
{
  result = qword_27D7E6B70;
  if (!qword_27D7E6B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6B48, &unk_227D658A0);
    sub_227B44DA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6B70);
  }

  return result;
}

unint64_t sub_227B44DA0()
{
  result = qword_27D7E6B78;
  if (!qword_27D7E6B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6B60, &unk_227D4EF50);
    sub_227B0F660(&off_27D7E6B80, MEMORY[0x277D0CB18], MEMORY[0x277D0CB20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6B78);
  }

  return result;
}

uint64_t GameActivityService.createOrUpdateGameActivity(activity:context:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_79_0(v1, v2);
  v0[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[6] = v4;
  v0[7] = OUTLINED_FUNCTION_30();
  v5 = sub_227D49B08();
  v0[8] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[9] = v6;
  v0[10] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B88, &unk_227D65950);
  v0[11] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[12] = v8;
  v0[13] = OUTLINED_FUNCTION_30();
  v9 = sub_227D498E8();
  v0[14] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v0[15] = v10;
  v0[16] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B90, &qword_227D4F000);
  v0[17] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[18] = v12;
  v0[19] = OUTLINED_FUNCTION_30();
  v13 = sub_227D49D58();
  v0[20] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v0[21] = v14;
  v0[22] = OUTLINED_FUNCTION_30();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227B45084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_78_2();
    OUTLINED_FUNCTION_36();
    v16 = OUTLINED_FUNCTION_9_1();
    v17(v16);
    OUTLINED_FUNCTION_66_1();
    OUTLINED_FUNCTION_52_2();
    sub_227B0F660(v18, v12, MEMORY[0x277D0CB30]);
    OUTLINED_FUNCTION_59_3(&off_27D7E6B80);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    if (v13)
    {
      v19 = OUTLINED_FUNCTION_103_1();
      v20(v19);
      (*(v15 + 8))(v14[22], v14[20]);
      v29 = OUTLINED_FUNCTION_91_1();
      OUTLINED_FUNCTION_97(v29);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_33();

      return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
    }

    else
    {
      v26 = OUTLINED_FUNCTION_68_0();
      v27(v26);
      OUTLINED_FUNCTION_88_1();
      sub_227D49478();
      v28 = MEMORY[0x277D0CC68];
      sub_227B0F660(&qword_27D7E6B98, MEMORY[0x277D0CC68], MEMORY[0x277D0CC80]);
      sub_227B0F660(&qword_27D7E6BA0, v28, MEMORY[0x277D0CC70]);
      OUTLINED_FUNCTION_38_1();
      sub_227D49D18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v38 = swift_task_alloc();
      v14[23] = v38;
      type metadata accessor for GameActivityService(0);
      OUTLINED_FUNCTION_0_1();
      sub_227B0F660(v39, v40, &protocol conformance descriptor for GameActivityService);
      OUTLINED_FUNCTION_48_0();
      *v38 = v41;
      OUTLINED_FUNCTION_108_0();
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B10](v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
    }
  }

  else
  {
    v21 = swift_task_alloc();
    v14[25] = v21;
    *v21 = v14;
    OUTLINED_FUNCTION_100(v21);
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_33();

    return sub_227B45CBC(v22, v23);
  }
}

uint64_t sub_227B453F0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B454E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v12 = OUTLINED_FUNCTION_62();
  v13(v12);
  v14 = OUTLINED_FUNCTION_86();
  v15(v14);
  v16 = OUTLINED_FUNCTION_85();
  v17(v16);
  v18 = OUTLINED_FUNCTION_57_0();
  v19(v18);
  OUTLINED_FUNCTION_91_1();

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_135_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_227B455D4()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_77_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_81_1();

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_227B4576C()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v1 = OUTLINED_FUNCTION_62();
  v2(v1);
  v3 = OUTLINED_FUNCTION_42();
  v4(v3);
  v5 = OUTLINED_FUNCTION_22_1();
  v6(v5);
  (*(v0[21] + 8))(v0[22], v0[20]);
  OUTLINED_FUNCTION_97(v0[22]);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_117_0();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_227B45858(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v6 = a2[1];
  v2[5] = v6;
  v2[6] = *(v6 - 8);
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v7 = swift_task_alloc();
  v2[8] = v7;
  *v7 = v2;
  v7[1] = sub_227B45AF8;

  return GameActivityService.createOrUpdateGameActivity(activity:context:)();
}

uint64_t sub_227B45AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_80_0();
  v13 = v12;
  OUTLINED_FUNCTION_5_4();
  *v14 = v13;

  v15 = OUTLINED_FUNCTION_148();
  v16(v15);
  v17 = OUTLINED_FUNCTION_9_2();
  v18(v17);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_227B45CBC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227B45CD4()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_227B45D74;
  OUTLINED_FUNCTION_53(*(v0 + 16));

  return sub_227B57834();
}

uint64_t sub_227B45D74()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_18();

  return v3();
}

uint64_t GameActivityService.delete(gameActivity:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_79_0(v1, v2);
  v0[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[6] = v4;
  v0[7] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B38, &unk_227D4EF40);
  v0[8] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[9] = v6;
  v0[10] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BA8, &qword_227D4F098);
  v0[11] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[12] = v8;
  v0[13] = OUTLINED_FUNCTION_30();
  v9 = sub_227D49D58();
  v0[14] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v0[15] = v10;
  v0[16] = OUTLINED_FUNCTION_30();
  v11 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227B45FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_95_1();
    OUTLINED_FUNCTION_36();
    v15 = OUTLINED_FUNCTION_9_1();
    v16(v15);
    sub_227D49478();
    OUTLINED_FUNCTION_4_5(&qword_280E7B690);
    OUTLINED_FUNCTION_3_5(&qword_280E7B698);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    if (v12)
    {
      v19 = v13[15];
      v20 = OUTLINED_FUNCTION_64();
      v21(v20);
      (*(v19 + 8))(v13[16], v13[14]);
      OUTLINED_FUNCTION_89_0();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      sub_227D4A5B8();
      OUTLINED_FUNCTION_51_2();
      sub_227B0F660(v17, v14, MEMORY[0x277D0D4B8]);
      v18 = OUTLINED_FUNCTION_58_2(&qword_27D7E6BB8);
      OUTLINED_FUNCTION_17(v18);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v36 = swift_task_alloc();
      v13[17] = v36;
      type metadata accessor for GameActivityService(0);
      OUTLINED_FUNCTION_0_1();
      sub_227B0F660(v37, v38, &protocol conformance descriptor for GameActivityService);
      OUTLINED_FUNCTION_48_0();
      *v36 = v39;
      v36[1] = sub_227B46308;
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B00](v40);
    }
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v13[19] = v31;
    *v31 = v32;
    OUTLINED_FUNCTION_100(v31);
    OUTLINED_FUNCTION_46();

    return sub_227B465B0(v33, v34);
  }
}

uint64_t sub_227B46308()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B46400(uint64_t a1, uint64_t *a2)
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
  v5[1] = sub_227B4AF94;

  return GameActivityService.delete(gameActivity:)();
}

uint64_t sub_227B465B0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227B465C8()
{
  OUTLINED_FUNCTION_6();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 40) = v1;
  *v1 = v2;
  v1[1] = sub_227B4AF70;

  return sub_227B57ECC();
}

uint64_t GameActivityService.deleteAllActivities(for:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_79_0(v1, v2);
  v0[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[6] = v4;
  v0[7] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v0[8] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[9] = v6;
  v0[10] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A08, &qword_227D4EB50);
  v0[11] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[12] = v8;
  v0[13] = OUTLINED_FUNCTION_30();
  v9 = sub_227D49D58();
  v0[14] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v0[15] = v10;
  v0[16] = OUTLINED_FUNCTION_30();
  v11 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227B46800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_95_1();
    OUTLINED_FUNCTION_36();
    v15 = OUTLINED_FUNCTION_9_1();
    v16(v15);
    sub_227D49478();
    OUTLINED_FUNCTION_4_5(&qword_280E7B830);
    OUTLINED_FUNCTION_3_5(&qword_280E7B838);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    if (v12)
    {
      v19 = v13[15];
      v20 = OUTLINED_FUNCTION_64();
      v21(v20);
      (*(v19 + 8))(v13[16], v13[14]);
      OUTLINED_FUNCTION_89_0();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      sub_227D4A5B8();
      OUTLINED_FUNCTION_51_2();
      sub_227B0F660(v17, v14, MEMORY[0x277D0D4B8]);
      v18 = OUTLINED_FUNCTION_58_2(&qword_27D7E6BB8);
      OUTLINED_FUNCTION_17(v18);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v36 = swift_task_alloc();
      v13[17] = v36;
      type metadata accessor for GameActivityService(0);
      OUTLINED_FUNCTION_0_1();
      sub_227B0F660(v37, v38, &protocol conformance descriptor for GameActivityService);
      OUTLINED_FUNCTION_48_0();
      *v36 = v39;
      v36[1] = sub_227B46B10;
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B00](v40);
    }
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v13[19] = v31;
    *v31 = v32;
    OUTLINED_FUNCTION_100(v31);
    OUTLINED_FUNCTION_46();

    return sub_227B4708C(v33, v34);
  }
}

uint64_t sub_227B46B10()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B46C08()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v0 = OUTLINED_FUNCTION_62();
  v1(v0);
  v2 = OUTLINED_FUNCTION_42();
  v3(v2);
  v4 = OUTLINED_FUNCTION_22_1();
  v5(v4);
  OUTLINED_FUNCTION_89_0();

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_117_0();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_227B46CC0()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_77_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_81_1();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_164();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_227B46E10()
{
  OUTLINED_FUNCTION_20();
  v1 = OUTLINED_FUNCTION_62();
  v2(v1);
  v3 = OUTLINED_FUNCTION_57_0();
  v4(v3);
  (*(v0[15] + 8))(v0[16], v0[14]);

  OUTLINED_FUNCTION_18();

  return v5();
}

uint64_t sub_227B46EDC(uint64_t a1, uint64_t *a2)
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
  v5[1] = sub_227B4AF94;

  return GameActivityService.deleteAllActivities(for:)();
}

uint64_t sub_227B4708C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227B470A4()
{
  OUTLINED_FUNCTION_6();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 40) = v1;
  *v1 = v2;
  v1[1] = sub_227B4AF70;

  return sub_227B58224();
}

uint64_t GameActivityService.shareGameActivity(activity:receivingPlayers:)()
{
  OUTLINED_FUNCTION_6();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = sub_227D49458();
  v1[6] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[7] = v5;
  v1[8] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC0, &qword_227D4F1D0);
  v1[9] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[10] = v7;
  v1[11] = OUTLINED_FUNCTION_30();
  v8 = sub_227D498E8();
  v1[12] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[13] = v9;
  v1[14] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B90, &qword_227D4F000);
  v1[15] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[16] = v11;
  v1[17] = OUTLINED_FUNCTION_30();
  v12 = sub_227D49D58();
  v1[18] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[19] = v13;
  v1[20] = OUTLINED_FUNCTION_30();
  v14 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_227B47334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    v14 = v13[20];
    OUTLINED_FUNCTION_36();
    v15 = OUTLINED_FUNCTION_9_1();
    v16(v15);
    OUTLINED_FUNCTION_66_1();
    OUTLINED_FUNCTION_52_2();
    sub_227B0F660(v17, v12, MEMORY[0x277D0CB30]);
    OUTLINED_FUNCTION_59_3(&off_27D7E6B80);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    if (v14)
    {
      v18 = OUTLINED_FUNCTION_60();
      v19(v18);
      v20 = OUTLINED_FUNCTION_57_0();
      v21(v20);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_33();

      return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
    }

    else
    {
      v13[2] = v13[4];
      sub_227D4CE58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC8, &unk_227D4F1E0);
      sub_227D49478();
      sub_227B47E34();
      sub_227B47EE4();
      OUTLINED_FUNCTION_10();
      sub_227D49D18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      sub_227D49D08();
      sub_227D49468();
      v35 = swift_task_alloc();
      v13[21] = v35;
      type metadata accessor for GameActivityService(0);
      OUTLINED_FUNCTION_0_1();
      sub_227B0F660(v36, v37, &protocol conformance descriptor for GameActivityService);
      OUTLINED_FUNCTION_48_0();
      *v35 = v38;
      v35[1] = sub_227B476C8;
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B10](v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
    }
  }

  else
  {
    v22 = swift_task_alloc();
    v13[23] = v22;
    *v22 = v13;
    v22[1] = sub_227B47894;
    OUTLINED_FUNCTION_53(v13[3]);
    OUTLINED_FUNCTION_33();

    return sub_227B47D7C(v23, v24);
  }
}

uint64_t sub_227B476C8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B477C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v12 = OUTLINED_FUNCTION_73_0();
  v13(v12);
  v14 = OUTLINED_FUNCTION_86();
  v15(v14);
  v16 = OUTLINED_FUNCTION_85();
  v17(v16);
  v18 = OUTLINED_FUNCTION_57_0();
  v19(v18);

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_135_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_227B47894()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_77_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_81_1();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_117_0();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_227B47A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v12 = OUTLINED_FUNCTION_73_0();
  v13(v12);
  v14 = OUTLINED_FUNCTION_86();
  v15(v14);
  v16 = OUTLINED_FUNCTION_85();
  v17(v16);
  v18 = OUTLINED_FUNCTION_57_0();
  v19(v18);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_227B47AD8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v6 = a2[1];
  v2[5] = v6;
  v2[6] = *(v6 - 8);
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v7 = swift_task_alloc();
  v2[8] = v7;
  *v7 = v2;
  v7[1] = sub_227B45AF8;

  return GameActivityService.shareGameActivity(activity:receivingPlayers:)();
}

uint64_t sub_227B47D7C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227B47D94()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_227B4AF70;
  OUTLINED_FUNCTION_53(*(v0 + 16));

  return sub_227B58630();
}

unint64_t sub_227B47E34()
{
  result = qword_27D7E6BD0;
  if (!qword_27D7E6BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6BC8, &unk_227D4F1E0);
    sub_227B15A74(&qword_27D7E6BD8, &qword_27D7E67C0, &unk_227D4FB20, MEMORY[0x277D0D520]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6BD0);
  }

  return result;
}

unint64_t sub_227B47EE4()
{
  result = qword_27D7E6BE0;
  if (!qword_27D7E6BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6BC8, &unk_227D4F1E0);
    sub_227B15A74(&qword_27D7E6BE8, &qword_27D7E67C0, &unk_227D4FB20, MEMORY[0x277D0D500]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6BE0);
  }

  return result;
}

uint64_t GameActivityService.listAllStoredGameActivityDefinitions()()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v0;
  v2 = sub_227D49458();
  v1[4] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v1[5] = v3;
  v1[6] = OUTLINED_FUNCTION_30();
  v4 = sub_227D49D58();
  v1[7] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[8] = v5;
  v1[9] = OUTLINED_FUNCTION_30();
  v6 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227B48084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    v13 = v12[9];
    OUTLINED_FUNCTION_36();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D28();
    if (v13)
    {
      v15 = OUTLINED_FUNCTION_102_0();
      v16(v15);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BF0, &qword_227D4F288);
      sub_227B48978();
      v14 = sub_227B48A2C();
      OUTLINED_FUNCTION_17(v14);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v28 = swift_task_alloc();
      v12[10] = v28;
      type metadata accessor for GameActivityService(0);
      OUTLINED_FUNCTION_0_1();
      sub_227B0F660(v29, v30, &protocol conformance descriptor for GameActivityService);
      OUTLINED_FUNCTION_47();
      *v28 = v31;
      v28[1] = sub_227B482DC;
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B00](v32);
    }
  }

  else
  {
    v26 = swift_task_alloc();
    v12[12] = v26;
    *v26 = v12;
    v26[1] = sub_227B48470;
    OUTLINED_FUNCTION_46();

    return sub_227B487D8();
  }
}

uint64_t sub_227B482DC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B483D4()
{
  OUTLINED_FUNCTION_20();
  v1 = OUTLINED_FUNCTION_110();
  v2(v1);
  v3 = OUTLINED_FUNCTION_57_0();
  v4(v3);
  v5 = *(v0 + 16);

  OUTLINED_FUNCTION_115();

  return v6(v5);
}

uint64_t sub_227B48470()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_227B485AC()
{
  OUTLINED_FUNCTION_20();
  v0 = OUTLINED_FUNCTION_110();
  v1(v0);
  v2 = OUTLINED_FUNCTION_57_0();
  v3(v2);

  OUTLINED_FUNCTION_18();

  return v4();
}

uint64_t sub_227B48640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_227B486D8;

  return GameActivityService.listAllStoredGameActivityDefinitions()();
}

uint64_t sub_227B486D8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  **(v0 + 16) = v1;

  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227B487F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_6();
  v29 = swift_task_alloc();
  *(v28 + 24) = v29;
  *v29 = v28;
  v30 = OUTLINED_FUNCTION_35(v29);

  return sub_227B59B48(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_227B4888C()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;

  OUTLINED_FUNCTION_115();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

unint64_t sub_227B48978()
{
  result = qword_27D7E6BF8;
  if (!qword_27D7E6BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6BF0, &qword_227D4F288);
    sub_227B0F660(&qword_27D7E6AE0, MEMORY[0x277D0CB78], MEMORY[0x277D0CB88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6BF8);
  }

  return result;
}

unint64_t sub_227B48A2C()
{
  result = qword_27D7E6C00;
  if (!qword_27D7E6C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6BF0, &qword_227D4F288);
    sub_227B0F660(&qword_27D7E6AF8, MEMORY[0x277D0CB78], MEMORY[0x277D0CB80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6C00);
  }

  return result;
}

uint64_t GameActivityService.listAllStoredGameActivityInstances()()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v0;
  v2 = sub_227D49458();
  v1[4] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v1[5] = v3;
  v1[6] = OUTLINED_FUNCTION_30();
  v4 = sub_227D49D58();
  v1[7] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[8] = v5;
  v1[9] = OUTLINED_FUNCTION_30();
  v6 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227B48BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    v13 = v12[9];
    OUTLINED_FUNCTION_36();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D28();
    if (v13)
    {
      v15 = OUTLINED_FUNCTION_102_0();
      v16(v15);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6C08, &unk_227D4F310);
      sub_227B4906C();
      v14 = sub_227B49120();
      OUTLINED_FUNCTION_17(v14);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v28 = swift_task_alloc();
      v12[10] = v28;
      type metadata accessor for GameActivityService(0);
      OUTLINED_FUNCTION_0_1();
      sub_227B0F660(v29, v30, &protocol conformance descriptor for GameActivityService);
      OUTLINED_FUNCTION_47();
      *v28 = v31;
      v28[1] = sub_227B48E28;
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B00](v32);
    }
  }

  else
  {
    v26 = swift_task_alloc();
    v12[12] = v26;
    *v26 = v12;
    v26[1] = sub_227B4AF98;
    OUTLINED_FUNCTION_46();

    return sub_227B48FB8();
  }
}

uint64_t sub_227B48E28()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B48F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_227B4AF7C;

  return GameActivityService.listAllStoredGameActivityInstances()();
}

uint64_t sub_227B48FD4()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_35(v1);

  return sub_227B59F68();
}

unint64_t sub_227B4906C()
{
  result = qword_27D7E6C10;
  if (!qword_27D7E6C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6C08, &unk_227D4F310);
    sub_227B0F660(&qword_27D7E6B68, MEMORY[0x277D0CB18], MEMORY[0x277D0CB30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6C10);
  }

  return result;
}

unint64_t sub_227B49120()
{
  result = qword_27D7E6C18;
  if (!qword_27D7E6C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6C08, &unk_227D4F310);
    sub_227B0F660(&off_27D7E6B80, MEMORY[0x277D0CB18], MEMORY[0x277D0CB20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6C18);
  }

  return result;
}

uint64_t static GameActivityService.resolve(id:using:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GameActivityService(0);
  sub_227D49D78();
  OUTLINED_FUNCTION_7_5();
  sub_227B0F660(v5, v6, MEMORY[0x277D0CE30]);
  OUTLINED_FUNCTION_0_1();
  sub_227B0F660(v7, v8, &protocol conformance descriptor for GameActivityService);
  v9 = sub_227D493A8();
  v10 = v9;
  if (!v2 && !v9)
  {
    v10 = swift_distributedActor_remote_initialize();
    v11 = OBJC_IVAR____TtC16GameServicesCore19GameActivityService_id;
    sub_227D49EF8();
    OUTLINED_FUNCTION_62_0();
    (*(v12 + 16))(v10 + v11, a1);
    *(v10 + OBJC_IVAR____TtC16GameServicesCore19GameActivityService_actorSystem) = a2;
  }

  return v10;
}

uint64_t GameActivityService.deinit()
{
  v1 = OBJC_IVAR____TtC16GameServicesCore19GameActivityService_id;
  sub_227D49D78();
  OUTLINED_FUNCTION_7_5();
  sub_227B0F660(v2, v3, MEMORY[0x277D0CE30]);
  sub_227D493C8();
  sub_227D49EF8();
  OUTLINED_FUNCTION_62_0();
  (*(v4 + 8))(v0 + v1);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t GameActivityService.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = OBJC_IVAR____TtC16GameServicesCore19GameActivityService_id;
    sub_227D49EF8();
    OUTLINED_FUNCTION_62_0();
    (*(v2 + 8))(v0 + v1);

    swift_defaultActor_destroy();
  }

  else
  {
    GameActivityService.deinit();
  }

  return MEMORY[0x282200960](v0);
}

uint64_t sub_227B49480()
{
  sub_227D4DB58();
  type metadata accessor for GameActivityService(0);
  OUTLINED_FUNCTION_0_1();
  sub_227B0F660(v0, v1, &protocol conformance descriptor for GameActivityService);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t GameActivityService.unownedExecutor.getter()
{
  if ((sub_227D49448() & 1) == 0)
  {
    type metadata accessor for GameActivityService(0);
    OUTLINED_FUNCTION_0_1();
    sub_227B0F660(v1, v2, &protocol conformance descriptor for GameActivityService);
    OUTLINED_FUNCTION_57_0();
    return sub_227D49388();
  }

  return v0;
}

uint64_t sub_227B49574@<X0>(uint64_t *a1@<X8>)
{
  result = GameActivityService.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_227B49614()
{
  OUTLINED_FUNCTION_109_0();
  type metadata accessor for GameActivityService(0);
  OUTLINED_FUNCTION_0_1();
  sub_227B0F660(v0, v1, &protocol conformance descriptor for GameActivityService);
  OUTLINED_FUNCTION_9_2();
  return sub_227D49418();
}

uint64_t sub_227B49678(uint64_t a1)
{
  sub_227D4DB58();
  type metadata accessor for GameActivityService(0);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227B49880()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameActivityService.refreshGameActivity(game:scope:)();
}

uint64_t sub_227B4990C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameActivityService.refreshGameActivity(game:)();
}

uint64_t sub_227B49990()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_168();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_76(v1);
  OUTLINED_FUNCTION_164();

  return GameActivityService.listGameActivityDefinitions(game:filters:after:)();
}

uint64_t sub_227B49A20()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameActivityService.describeGameActivityDefinitions(gameActivityDefinitions:)();
}

uint64_t sub_227B49AA4()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_96_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_74_0(v1);
  OUTLINED_FUNCTION_117_0();

  return GameActivityService.listGameActivities(game:filters:excludedFilters:after:)();
}

uint64_t sub_227B49B34()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameActivityService.describeGameActivities(activities:)();
}

uint64_t sub_227B49BB8()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameActivityService.createOrUpdateGameActivity(activity:context:)();
}

uint64_t sub_227B49C44()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_28_0(v1);

  return GameActivityService.delete(gameActivity:)();
}

uint64_t sub_227B49CD0()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_28_0(v1);

  return GameActivityService.deleteAllActivities(for:)();
}

uint64_t sub_227B49D5C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameActivityService.shareGameActivity(activity:receivingPlayers:)();
}

uint64_t sub_227B49DE8()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return GameActivityService.listAllStoredGameActivityDefinitions()();
}

uint64_t sub_227B49E6C()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return GameActivityService.listAllStoredGameActivityInstances()();
}

uint64_t sub_227B49EF0()
{
  type metadata accessor for GameActivityService(0);
  OUTLINED_FUNCTION_0_1();
  sub_227B0F660(v0, v1, &protocol conformance descriptor for GameActivityService);
  v2 = OUTLINED_FUNCTION_9_2();

  return MEMORY[0x2821FF4E0](v2);
}

uint64_t sub_227B49F68(uint64_t a1)
{
  type metadata accessor for GameActivityService(0);
  OUTLINED_FUNCTION_0_1();
  sub_227B0F660(v1, v2, &protocol conformance descriptor for GameActivityService);
  OUTLINED_FUNCTION_15_1();
  sub_227B0F660(v3, v4, MEMORY[0x277D0CE98]);
  return sub_227D49428();
}

uint64_t sub_227B4A010@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GameActivityService(0);
  OUTLINED_FUNCTION_0_1();
  sub_227B0F660(v3, v4, &protocol conformance descriptor for GameActivityService);
  OUTLINED_FUNCTION_15_1();
  sub_227B0F660(v5, v6, MEMORY[0x277D0CEA8]);
  OUTLINED_FUNCTION_10();
  result = sub_227D49438();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_227B4A0C0(uint64_t a1)
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

uint64_t dispatch thunk of GameActivityService.refreshGameActivity(game:scope:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v6 = (*(v0 + 120) + **(v0 + 120));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

uint64_t dispatch thunk of GameActivityService.refreshGameActivity(game:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_45();
  v6 = (*(v0 + 128) + **(v0 + 128));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_26(v2);

  return v6(v4);
}

uint64_t dispatch thunk of GameActivityService.listGameActivityDefinitions(game:filters:after:)()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_45();
  v6 = (*(v0 + 136) + **(v0 + 136));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_76(v2);

  return v6(v4);
}

uint64_t dispatch thunk of GameActivityService.describeGameActivityDefinitions(gameActivityDefinitions:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_45();
  v6 = (*(v0 + 144) + **(v0 + 144));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_26(v2);

  return v6(v4);
}

uint64_t dispatch thunk of GameActivityService.listGameActivities(game:filters:excludedFilters:after:)()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_45();
  v6 = (*(v0 + 152) + **(v0 + 152));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_74_0(v2);

  return v6(v4);
}

uint64_t dispatch thunk of GameActivityService.describeGameActivities(activities:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_45();
  v6 = (*(v0 + 160) + **(v0 + 160));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_26(v2);

  return v6(v4);
}

uint64_t dispatch thunk of GameActivityService.createOrUpdateGameActivity(activity:context:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v6 = (*(v0 + 168) + **(v0 + 168));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

uint64_t dispatch thunk of GameActivityService.delete(gameActivity:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v6 = (*(v0 + 176) + **(v0 + 176));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_28_0(v2);

  return v6(v4);
}

uint64_t dispatch thunk of GameActivityService.deleteAllActivities(for:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v6 = (*(v0 + 184) + **(v0 + 184));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_28_0(v2);

  return v6(v4);
}

uint64_t dispatch thunk of GameActivityService.shareGameActivity(activity:receivingPlayers:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v6 = (*(v0 + 192) + **(v0 + 192));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

uint64_t dispatch thunk of GameActivityService.listAllStoredGameActivityDefinitions()()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_45();
  v5 = (*(v0 + 200) + **(v0 + 200));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_35(v2);

  return v5();
}

uint64_t sub_227B4AD00()
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

uint64_t dispatch thunk of GameActivityService.listAllStoredGameActivityInstances()()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_45();
  v5 = (*(v0 + 208) + **(v0 + 208));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_35(v2);

  return v5();
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

uint64_t OUTLINED_FUNCTION_4_5(unint64_t *a1)
{
  v4 = MEMORY[0x277D0D520];

  return sub_227B15A74(a1, v1, v2, v4);
}

uint64_t OUTLINED_FUNCTION_63_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_113_0()
{

  return sub_227D49D18();
}

uint64_t OUTLINED_FUNCTION_114_0()
{
}

id sub_227B4B12C()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = sub_227D4CFA8();
    v4 = sub_227B4BF60(v2, v3, v1);

    if (v4)
    {
      v5 = [v4 integerValue];

      return v5;
    }

    else
    {

      return sub_227BBBDB8();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_227B4B1D0()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6C58, qword_227D4F6F8);
  *v1 = v0;
  v1[1] = sub_227B4B2B8;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD00000000000001BLL, 0x8000000227D75390, sub_227B4B3CC, 0, v2);
}

uint64_t sub_227B4B2B8()
{

  return MEMORY[0x2822009F8](sub_227B4B3B4, 0, 0);
}

uint64_t sub_227B4B3CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6C60, &qword_227D4F738);
  OUTLINED_FUNCTION_9();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = sub_227D4CAB8();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = static GameRestrictions.accountStore.getter();
  v16 = [v15 ams_activeiTunesAccount];

  if (v16 && (v17 = [v16 ams_DSID], v16, v17))
  {
    v35 = [objc_opt_self() exceptionConnection];
    [v35 activate];
    v33 = a1;
    v34 = v17;
    v18 = v2;
    v19 = *(v4 + 16);
    v19(v7, a1, v18);
    v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v21 = swift_allocObject();
    v32 = *(v4 + 32);
    v32(v21 + v20, v7, v18);
    v40 = sub_227B4BFE8;
    v41 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v37 = 1107296256;
    v38 = sub_227B4B9F0;
    v39 = &block_descriptor;
    v22 = _Block_copy(&aBlock);

    v31 = [v35 asynchronousExceptionServiceWithErrorHandler_];
    _Block_release(v22);
    v19(v7, v33, v18);
    v23 = swift_allocObject();
    v32(v23 + v20, v7, v18);
    v40 = sub_227B4C110;
    v41 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v37 = 1107296256;
    v38 = sub_227B4BE80;
    v39 = &block_descriptor_8;
    v24 = _Block_copy(&aBlock);

    v25 = v34;
    [v31 fetchAllAppExceptionsForRequesterDSID:v34 completionHandler:v24];
    _Block_release(v24);

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_227D4AA58();
    v27 = sub_227D4CA98();
    v28 = sub_227D4D438();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_227B0D000, v27, v28, "Error fetching exceptions: No iCloud account", v29, 2u);
      OUTLINED_FUNCTION_5_2();
    }

    (*(v10 + 8))(v14, v8);
    aBlock = sub_227D4CE28();
    return sub_227D4D2A8();
  }
}

uint64_t sub_227B4B820(void *a1)
{
  v2 = sub_227D4CAB8();
  OUTLINED_FUNCTION_9();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  sub_227D4AA58();
  v9 = a1;
  v10 = sub_227D4CA98();
  v11 = sub_227D4D438();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = a1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_227B0D000, v10, v11, "Error connecting to exception service: %@", v12, 0xCu);
    sub_227B2A0F8(v13);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_5_2();
  }

  (*(v4 + 8))(v8, v2);
  sub_227D4CE28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6C60, &qword_227D4F738);
  return sub_227D4D2A8();
}

void sub_227B4B9F0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_227B4BA58(unint64_t a1, void *a2)
{
  v4 = sub_227D4CAB8();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  if (!a1 || a2)
  {
    sub_227D4AA58();
    v11 = a2;
    v12 = sub_227D4CA98();
    v13 = sub_227D4D438();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      if (a2)
      {
        v16 = a2;
        v17 = _swift_stdlib_bridgeErrorToNSError();
        v18 = v17;
      }

      else
      {
        v17 = 0;
        v18 = 0;
      }

      *(v14 + 4) = v17;
      *v15 = v18;
      _os_log_impl(&dword_227B0D000, v12, v13, "Error fetching exceptions: %@", v14, 0xCu);
      sub_227B2A0F8(v15);
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_5_2();
    }

    (*(v6 + 8))(v10, v4);
    sub_227D4CE28();
    goto LABEL_34;
  }

  v19 = sub_227D4CE28();
  v50 = sub_227B4BF3C(a1);
  if (!v50)
  {
LABEL_34:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6C60, &qword_227D4F738);
    return sub_227D4D2A8();
  }

  v20 = 0;
  v48 = a1;
  v49 = a1 & 0xC000000000000001;
  v47 = a1 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v49)
    {
      v21 = MEMORY[0x22AAA63D0](v20, a1);
    }

    else
    {
      if (v20 >= *(v47 + 16))
      {
        goto LABEL_39;
      }

      v21 = *(a1 + 8 * v20 + 32);
    }

    v22 = v21;
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    v24 = [v21 bundleIdentifier];
    v25 = sub_227D4CFA8();
    v27 = v26;

    if (v19[2] && (v28 = sub_227B2664C(v25, v27), (v29 & 1) != 0))
    {
      v30 = *(v19[7] + 8 * v28);
    }

    else
    {
      v30 = 0;
    }

    v31 = [v22 ratingValue];
    if (v31 < 0)
    {
      goto LABEL_36;
    }

    v51 = v20;
    if (v31 <= v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = v31;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v33 = v25;
    v34 = v25;
    v35 = v27;
    v36 = sub_227B2664C(v34, v27);
    if (__OFADD__(v19[2], (v37 & 1) == 0))
    {
      goto LABEL_37;
    }

    v38 = v36;
    v39 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6C70, &qword_227D4F748);
    if (sub_227D4D7C8())
    {
      v40 = sub_227B2664C(v33, v35);
      if ((v39 & 1) != (v41 & 1))
      {
        goto LABEL_40;
      }

      v38 = v40;
    }

    if (v39)
    {

      *(v19[7] + 8 * v38) = v32;
    }

    else
    {
      v19[(v38 >> 6) + 8] |= 1 << v38;
      v42 = (v19[6] + 16 * v38);
      *v42 = v33;
      v42[1] = v35;
      *(v19[7] + 8 * v38) = v32;

      v43 = v19[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_38;
      }

      v19[2] = v45;
    }

    v20 = v51 + 1;
    a1 = v48;
    if (v23 == v50)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_227D4DAE8();
  __break(1u);
  return result;
}

uint64_t sub_227B4BE80(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_227B4C19C();
    v4 = sub_227D4D1C8();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_227B4BF3C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_227D4D808();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

id sub_227B4BF60(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_227D4CF78();

  v5 = [a3 effectiveValueForSetting_];

  return v5;
}

uint64_t sub_227B4BFE8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6C60, &qword_227D4F738);

  return sub_227B4B820(a1);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6C60, &qword_227D4F738);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_227B4C110(unint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6C60, &qword_227D4F738);

  return sub_227B4BA58(a1, a2);
}

unint64_t sub_227B4C19C()
{
  result = qword_27D7E6C68;
  if (!qword_27D7E6C68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7E6C68);
  }

  return result;
}

uint64_t sub_227B4C1F4()
{
  v0 = sub_227D4ABE8();
  __swift_allocate_value_buffer(v0, qword_280E7BA60);
  v1 = __swift_project_value_buffer(v0, qword_280E7BA60);
  return sub_227B71BD8(v1);
}

uint64_t sub_227B4C258()
{
  v0 = sub_227D4ABE8();
  __swift_allocate_value_buffer(v0, qword_280E7BA78);
  v1 = __swift_project_value_buffer(v0, qword_280E7BA78);
  return sub_227B71BD8(v1);
}

uint64_t sub_227B4C2BC()
{
  OUTLINED_FUNCTION_6();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v1[13] = v5;
  v1[14] = v6;
  v1[12] = v7;
  v8 = type metadata accessor for GameServicesEnvironment(0);
  OUTLINED_FUNCTION_5(v8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v9 = sub_227D4ABE8();
  v1[21] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[22] = v10;
  v1[23] = OUTLINED_FUNCTION_30();
  v11 = sub_227D4AC38();
  OUTLINED_FUNCTION_5(v11);
  v1[24] = OUTLINED_FUNCTION_30();
  v12 = sub_227D4AB78();
  v1[25] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[26] = v13;
  v1[27] = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_227B4C410()
{
  (*(v0[26] + 16))(v0[27], v0[13], v0[25]);
  if (_MergedGlobals_1 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[18];
  v7 = __swift_project_value_buffer(v2, qword_280E7BA60);
  v26 = *(v3 + 16);
  v26(v1, v7, v2);
  v9 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v9);
  (*(v8 + 8))(v9, v8);
  sub_227B4EC38(v5);
  sub_227D4AC08();
  v10 = sub_227D4AB58();
  sub_227D4AB48();
  v11 = MEMORY[0x277D0F9A8];
  sub_227B128F0(&qword_27D7E6CB8, MEMORY[0x277D0F9A8], MEMORY[0x277D0F9C8]);
  sub_227D4D3C8();
  sub_227B128F0(&qword_27D7E6CC0, v11, MEMORY[0x277D0F9D0]);
  sub_227D4D408();
  v10(v0 + 2, 0);
  v12 = v6[3];
  v13 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v12);
  (*(v13 + 8))(v12, v13);
  v14 = *(v4 + 16);
  sub_227D4CE58();
  sub_227B4EC38(v4);
  if (v14)
  {
    if (qword_280E7BA58 != -1)
    {
      swift_once();
    }

    v15 = v0[23];
    v16 = v0[21];
    v17 = __swift_project_value_buffer(v16, qword_280E7BA78);
    v26(v15, v17, v16);
    sub_227D4AC08();
    v18 = sub_227D4AB58();
    sub_227D4D3C8();
    sub_227D4D408();
    v18(v0 + 6, 0);
  }

  v27 = (v0[16] + *v0[16]);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[28] = v19;
  *v19 = v20;
  v19[1] = sub_227B4C7EC;
  v21 = v0[27];
  v22 = v0[14];
  v23 = v0[15];
  v24 = v0[12];

  return v27(v24, v21, v22, v23);
}

uint64_t sub_227B4C7EC()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v5 + 232) = v0;

  if (!v0)
  {
    *(v5 + 240) = v3;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B4C8F8()
{
  OUTLINED_FUNCTION_51_0();
  v1 = OUTLINED_FUNCTION_11_3();
  v2(v1);

  v3 = *(v0 + 8);
  v4 = *(v0 + 240);

  return v3(v4);
}

uint64_t sub_227B4C99C()
{
  OUTLINED_FUNCTION_51_0();
  v0 = OUTLINED_FUNCTION_11_3();
  v1(v0);

  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227B4CA4C()
{
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_227B4CB24;

  return sub_227B4C2BC();
}

uint64_t sub_227B4CB24()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_227B4CC14()
{
  OUTLINED_FUNCTION_6();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v1[7] = *(v2 - 8);
  v1[8] = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227B4CCC0()
{
  OUTLINED_FUNCTION_20();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v3 + 40) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 80) = v5;
  *v5 = v6;
  v5[1] = sub_227B4CD98;

  return sub_227B71D5C();
}

uint64_t sub_227B4CD98()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B4CE98()
{
  OUTLINED_FUNCTION_51_0();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  sub_227B4D5E8(v1, v3, v0[2]);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_18();

  return v4();
}

uint64_t sub_227B4CF44()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227B4CFA8()
{
  OUTLINED_FUNCTION_6();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  v5 = sub_227D4ACB8();
  v0[6] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[7] = v6;
  v0[8] = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B4D054()
{
  OUTLINED_FUNCTION_20();
  sub_227B4D42C();
  v6 = (v0[3] + *v0[3]);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[9] = v1;
  *v1 = v2;
  v1[1] = sub_227B4D19C;
  v3 = v0[8];
  v4 = v0[2];

  return v6(v4, v3);
}

uint64_t sub_227B4D19C()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = v5[8];
  v7 = v5[7];
  v8 = v5[6];
  v9 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v10 = v9;
  *(v3 + 80) = v0;

  (*(v7 + 8))(v6, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {

    OUTLINED_FUNCTION_18();

    return v14();
  }
}

uint64_t sub_227B4D324()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227B4D380()
{
  OUTLINED_FUNCTION_20();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_227B355D0;

  return sub_227B4CFA8();
}

uint64_t sub_227B4D42C()
{
  v2 = sub_227D4C908();
  v3 = OUTLINED_FUNCTION_5(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v4 = sub_227D49188();
  v5 = OUTLINED_FUNCTION_5(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  result = sub_227D4C8C8();
  if (!v1)
  {
    v7 = v0[3];
    v8 = v0[4];
    __swift_project_boxed_opaque_existential_1(v0, v7);
    v12[3] = v7;
    v12[4] = *(v8 + 8);
    __swift_allocate_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_14_0();
    (*(v9 + 16))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6C90, &qword_227D4F818);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_227D4E520;
    *(v10 + 56) = &type metadata for GameCenterServerClientWrapper.EnvironmentMiddleware;
    *(v10 + 64) = sub_227B4EADC();
    v11 = swift_allocObject();
    *(v10 + 32) = v11;
    sub_227B11EE8((v0 + 5), v11 + 16);
    sub_227B4E7D0();
    return sub_227D4ACA8();
  }

  return result;
}

uint64_t sub_227B4D5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = sub_227D4DBC8();
  OUTLINED_FUNCTION_6_2();
  v19 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  *(&v30 + 1) = a2;
  __swift_allocate_boxed_opaque_existential_1(&v29);
  OUTLINED_FUNCTION_14_0();
  v11 = *(v10 + 16);
  v11();
  sub_227D4DBA8();
  sub_227D4DBB8();
  sub_227D4D7A8();
  while (1)
  {
    sub_227D4D848();
    if (!*(&v28 + 1))
    {

LABEL_23:
      (*(v19 + 8))(v9, v32);
      return (v11)(a3, a1, a2);
    }

    v23 = v26;
    v24 = v27;
    v25 = v28;
    if (*(&v26 + 1))
    {
      v12 = v23 == 0x737574617473 && *(&v26 + 1) == 0xE600000000000000;
      if (v12 || (sub_227D4DA78() & 1) != 0)
      {
        break;
      }
    }

    sub_227B4DB00(&v23, &qword_27D7E6C78, qword_227D506E0);
  }

  v29 = v23;
  v30 = v24;
  v31 = v25;
  sub_227B4DA90(&v29, &v26);

  if ((swift_dynamicCast() & 1) == 0 || (v13 = v23) == 0)
  {
    sub_227B4DB00(&v29, &qword_27D7E6C78, qword_227D506E0);
    goto LABEL_23;
  }

  sub_227D4DBB8();
  sub_227D4D7A8();
  while (1)
  {
    sub_227D4D848();
    if (!*(&v25 + 1))
    {
      break;
    }

    v20 = v23;
    v21 = v24;
    v22 = v25;
    if (*(&v23 + 1))
    {
      v14 = v20 == 0x6567617373656DLL && *(&v23 + 1) == 0xE700000000000000;
      if (v14 || (sub_227D4DA78() & 1) != 0)
      {

        v26 = v20;
        v27 = v21;
        v28 = v22;

        sub_227B4DB5C(&v27, &v23);
        swift_dynamicCast();
        goto LABEL_26;
      }
    }

    sub_227B4DB00(&v20, &qword_27D7E6C78, qword_227D506E0);
  }

LABEL_26:
  *(&v27 + 1) = MEMORY[0x277D849A8];
  LODWORD(v26) = v13;
  sub_227D49E08();
  OUTLINED_FUNCTION_0_2();
  sub_227B128F0(v16, v17, MEMORY[0x277D0CE88]);
  swift_allocError();
  sub_227D49DE8();

  sub_227B4DB00(&v26, &qword_27D7E6C80, &unk_227D4F780);
  swift_willThrow();
  sub_227B4DB00(&v29, &qword_27D7E6C78, qword_227D506E0);
  return (*(v19 + 8))(v9, v32);
}

uint64_t sub_227B4DA90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6C78, qword_227D506E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227B4DB00(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_14_0();
  (*(v4 + 8))(a1);
  return a1;
}

_OWORD *sub_227B4DB5C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_227B4DB6C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v5 = *(*a2 + *MEMORY[0x277D84DE8] + 8);
  OUTLINED_FUNCTION_6_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v25 - v9;
  v12 = *v11;
  OUTLINED_FUNCTION_6_2();
  v14 = v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v25 - v17;
  result = sub_227B4D5E8(v16, v12, v25 - v17);
  if (!v3)
  {
    swift_getAtKeyPath();
    (*(v14 + 8))(v18, v12);
    v20 = *(v5 + 16);
    if (__swift_getEnumTagSinglePayload(v10, 1, v20) == 1)
    {
      (*(v7 + 8))(v10, v5);
      v25[3] = v12;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
      (*(v14 + 16))(boxed_opaque_existential_1, a1, v12);
      sub_227D49E08();
      OUTLINED_FUNCTION_0_2();
      sub_227B128F0(v22, v23, MEMORY[0x277D0CE88]);
      OUTLINED_FUNCTION_18_2();
      swift_allocError();
      sub_227D49DD8();
      sub_227B4DB00(v25, &qword_27D7E6C80, &unk_227D4F780);
      return swift_willThrow();
    }

    else
    {
      OUTLINED_FUNCTION_14_0();
      return (*(v24 + 32))(v26, v10, v20);
    }
  }

  return result;
}

uint64_t sub_227B4DDF0(uint64_t a1, void *a2)
{
  v3 = *(*a2 + *MEMORY[0x277D84DE8]);
  OUTLINED_FUNCTION_6_2();
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  result = sub_227B4D5E8(v7, v3, &v11 - v8);
  if (!v2)
  {
    swift_getAtKeyPath();
    return (*(v5 + 8))(v9, v3);
  }

  return result;
}

uint64_t sub_227B4DEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  OUTLINED_FUNCTION_15();
  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B4DF34()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 56);
  v6 = *(v0 + 24);
  v7 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *(v2 + 16) = *(v0 + 64);
  *(v2 + 32) = v6;
  *(v2 + 48) = v7;
  *(v2 + 64) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 88) = v3;
  *v3 = v4;
  v3[1] = sub_227B4E01C;

  return sub_227B71D5C();
}

uint64_t sub_227B4E01C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_18();

    return v10();
  }
}

uint64_t sub_227B4E138()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227B4E194()
{
  OUTLINED_FUNCTION_6();
  v0[16] = v1;
  v0[17] = v2;
  v0[14] = v3;
  v0[15] = v4;
  v0[12] = v5;
  v0[13] = v6;
  v0[10] = v7;
  v0[11] = v8;
  v9 = sub_227D4D4F8();
  v0[18] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v0[19] = v10;
  v0[20] = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227B4E24C()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[11];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v9 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_227B4E378;
  v5 = v0[13];
  v6 = v0[14];
  v7 = v0[12];

  return v9(v7, v5, v6, v2, v3);
}

uint64_t sub_227B4E378()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 176) = v6;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_227B4E4B4()
{
  OUTLINED_FUNCTION_51_0();
  sub_227B4E76C(*(v0 + 120), *(v0 + 128), *(v0 + 176), (v0 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6C80, &unk_227D4F780);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 160);
    v2 = *(v0 + 136);
    v3 = *(v0 + 80);

    __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
    OUTLINED_FUNCTION_14_0();
    (*(v4 + 32))(v3, v1, v2);
  }

  else
  {
    v6 = *(v0 + 176);
    v8 = *(v0 + 152);
    v7 = *(v0 + 160);
    v9 = *(v0 + 144);
    __swift_storeEnumTagSinglePayload(v7, 1, 1, *(v0 + 136));
    (*(v8 + 8))(v7, v9);
    *(v0 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6C88, &qword_227D4F810);
    *(v0 + 48) = v6;
    sub_227D49E08();
    OUTLINED_FUNCTION_0_2();
    sub_227B128F0(v10, v11, MEMORY[0x277D0CE88]);
    OUTLINED_FUNCTION_18_2();
    swift_allocError();
    OUTLINED_FUNCTION_15();
    sub_227D49DF8();
    sub_227B4DB00(v0 + 48, &qword_27D7E6C80, &unk_227D4F780);
    swift_willThrow();
  }

  OUTLINED_FUNCTION_18();

  return v5();
}

uint64_t sub_227B4E694()
{
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_227B3E2E8;

  return sub_227B4E194();
}

double sub_227B4E76C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_227B2664C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_227B1B268(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_227B4E7D0()
{
  v0 = sub_227D4C958();
  MEMORY[0x28223BE20](v0 - 8);
  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  v3[3] = sub_227D4C968();
  v3[4] = MEMORY[0x277D379F8];
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_227D4C918();
  sub_227B4E988();
  v2[3] = sub_227D4C988();
  v2[4] = MEMORY[0x277D37A10];
  __swift_allocate_boxed_opaque_existential_1(v2);
  sub_227D4C978();
  return sub_227D4C8F8();
}

uint64_t sub_227B4E8B0(char a1)
{
  v1 = (a1 & 1) == 0;
  if (a1)
  {
    v2 = 0x61656C6572657270;
  }

  else
  {
    v2 = 1702259052;
  }

  if (v1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xEA00000000006573;
  }

  return MEMORY[0x282197EC8](v2, v3);
}

uint64_t sub_227B4E8EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_227B4E92C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

      return OUTLINED_FUNCTION_16_2(result, a2);
    }

    *(result + 80) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_16_2(result, a2);
    }
  }

  return result;
}

uint64_t sub_227B4E988()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6C98, &qword_227D4F820);
  sub_227D4C958();
  *(swift_allocObject() + 16) = xmmword_227D4F750;
  sub_227D4C938();
  sub_227D4C948();
  sub_227B128F0(&qword_27D7E6CA0, MEMORY[0x277D379D8], MEMORY[0x277D379E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CA8, &qword_227D4F828);
  sub_227B4EB30();
  return sub_227D4D5B8();
}

unint64_t sub_227B4EADC()
{
  result = qword_27D7EAFA0[0];
  if (!qword_27D7EAFA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7EAFA0);
  }

  return result;
}

unint64_t sub_227B4EB30()
{
  result = qword_27D7E6CB0;
  if (!qword_27D7E6CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6CA8, &qword_227D4F828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6CB0);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_227B4EBA8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_227B4EBE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

      return OUTLINED_FUNCTION_16_2(result, a2);
    }

    *(result + 40) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_16_2(result, a2);
    }
  }

  return result;
}

uint64_t sub_227B4EC38(uint64_t a1)
{
  v2 = type metadata accessor for GameServicesEnvironment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227B4EC94()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_227D4A058();
  v1[4] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_30();
  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227B4ED38()
{
  OUTLINED_FUNCTION_6();
  (*(v0[5] + 104))(v0[6], *MEMORY[0x277D0D040], v0[4]);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_227B4EDEC;
  OUTLINED_FUNCTION_53(v0[2]);

  return sub_227B4EFC0();
}

uint64_t sub_227B4EDEC()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 64) = v0;

  v7 = OUTLINED_FUNCTION_91_0();
  v8(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_164();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_164();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_227B4EF64()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227B4EFC0()
{
  OUTLINED_FUNCTION_6();
  v1[55] = v2;
  v1[56] = v0;
  v1[54] = v3;
  v4 = sub_227D49AB8();
  v1[57] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[58] = v5;
  v1[59] = OUTLINED_FUNCTION_121();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[64] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[65] = v7;
  v1[66] = OUTLINED_FUNCTION_30();
  v8 = sub_227D4A058();
  v1[67] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[68] = v9;
  v1[69] = OUTLINED_FUNCTION_121();
  v1[70] = swift_task_alloc();
  v10 = sub_227D4CAB8();
  v1[71] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[72] = v11;
  v1[73] = OUTLINED_FUNCTION_121();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

void sub_227B4F218(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, os_log_t log, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_83_1();
  a35 = v37;
  a36 = v38;
  OUTLINED_FUNCTION_98_1();
  a34 = v36;
  v39 = sub_227D4A6A8();
  *(v36 + 680) = v39;
  *(v36 + 688) = v40;
  v49 = v39;
  v50 = v40;
  v51 = *(v36 + 560);
  v52 = *(v36 + 544);
  v53 = *(v36 + 536);
  v54 = *(v36 + 440);
  sub_227D4AA58();
  v137 = *(v52 + 16);
  v137(v51, v54, v53);
  sub_227D4CE58();
  v55 = sub_227D4CA98();
  v56 = sub_227D4D428();

  LODWORD(a20) = v56;
  v57 = os_log_type_enabled(v55, v56);
  v58 = *(v36 + 672);
  v59 = *(v36 + 576);
  v134 = *(v36 + 568);
  v131 = v49;
  if (v57)
  {
    log = v55;
    v60 = OUTLINED_FUNCTION_12_1();
    a17 = swift_slowAlloc();
    a23 = a17;
    *v60 = 136315394;
    v61 = OUTLINED_FUNCTION_132_0();
    *(v60 + 4) = sub_227B1B1A4(v61, v62, v63);
    *(v60 + 12) = 2080;
    a18 = v58;
    v64 = sub_227D4A048();
    v66 = v65;
    v67 = OUTLINED_FUNCTION_147();
    v68(v67);
    v69 = sub_227B1B1A4(v64, v66, &a23);

    *(v60 + 14) = v69;
    _os_log_impl(&dword_227B0D000, log, a20, "Refreshing game activity for %s with preference: %s", v60, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_44_3();

    v72 = *(v59 + 8);
    v70 = (v59 + 8);
    v71 = v72;
    v72(a18, v134);
  }

  else
  {

    v73 = OUTLINED_FUNCTION_147();
    v74(v73);
    v75 = *(v59 + 8);
    v70 = (v59 + 8);
    v71 = v75;
    v75(v58, v134);
  }

  *(v36 + 696) = v71;
  v137(*(v36 + 552), *(v36 + 440), *(v36 + 536));
  v76 = OUTLINED_FUNCTION_57_0();
  v78 = v77(v76);
  if (v78 == *MEMORY[0x277D0D038])
  {
    sub_227D4AA58();
    sub_227D4CE58();
    v79 = sub_227D4CA98();
    v80 = sub_227D4D428();

    v81 = OUTLINED_FUNCTION_160_0();
    v82 = *(v36 + 664);
    v83 = *(v36 + 576);
    v84 = *(v36 + 568);
    if (v81)
    {
      v138 = *(v36 + 664);
      v82 = &loc_227D4E000;
      v85 = OUTLINED_FUNCTION_129();
      v70 = OUTLINED_FUNCTION_14_5();
      a23 = v70;
      *v85 = 136315138;
      *(v85 + 4) = sub_227B1B1A4(v131, v50, &a23);
      _os_log_impl(&dword_227B0D000, v79, v80, "Always refresh preference - bypassing cache for game activity: %s", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v70);
      OUTLINED_FUNCTION_48_1();
      OUTLINED_FUNCTION_4_3();

      v86 = v138;
    }

    else
    {

      v86 = v82;
    }

    v71(v86, v84);
    if (sub_227D1CC44())
    {
      sub_227D4AA58();
      sub_227D4CE58();
      v89 = sub_227D4CA98();
      sub_227D4D428();
      OUTLINED_FUNCTION_151_0();
      OUTLINED_FUNCTION_107();
      OUTLINED_FUNCTION_165_1();
      if (v90)
      {
        v91 = *(v36 + 680);
        v139 = *(v36 + 632);
        OUTLINED_FUNCTION_54_3();
        a23 = OUTLINED_FUNCTION_55_3();
        *v70 = 136315138;
        v92 = OUTLINED_FUNCTION_82();
        sub_227B1B1A4(v92, v93, v94);
        OUTLINED_FUNCTION_184_0();
        *(v70 + 4) = v91;
        OUTLINED_FUNCTION_36_2(&dword_227B0D000, v95, v96, "Skipping refreshing game activities for %s in debug mode");
        OUTLINED_FUNCTION_77();
        OUTLINED_FUNCTION_48_1();

        v97 = v139;
      }

      else
      {
        OUTLINED_FUNCTION_144_0();

        v97 = OUTLINED_FUNCTION_69_1();
      }

      v83(v97, v82);
      OUTLINED_FUNCTION_4_6();
      v125 = v109;
      v126 = v108;
      v127 = *(v36 + 560);
      loga = *(v36 + 552);
      v129 = *(v36 + 528);
      v130 = *(v36 + 504);
      v132 = *(v36 + 496);
      v133 = *(v36 + 488);
      v135 = *(v36 + 480);
      v141 = *(v36 + 472);

      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_52();

      v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, v125, v126, v127, loga, v129, v130, v132, v133, v135, v141, a23, a24, a25, a26, a27, a28);
    }

    else
    {
      sub_227D4AA58();
      sub_227D4CE58();
      v99 = sub_227D4CA98();
      sub_227D4D458();
      OUTLINED_FUNCTION_151_0();
      v100 = OUTLINED_FUNCTION_107();
      v101 = *(v36 + 696);
      if (v100)
      {
        v140 = *(v36 + 624);
        OUTLINED_FUNCTION_54_3();
        a23 = OUTLINED_FUNCTION_55_3();
        *v70 = 136315138;
        v102 = OUTLINED_FUNCTION_82();
        *(v70 + 4) = sub_227B1B1A4(v102, v103, v104);
        OUTLINED_FUNCTION_36_2(&dword_227B0D000, v105, v106, "Proceeding with game activity refresh for: %s");
        OUTLINED_FUNCTION_77();
        OUTLINED_FUNCTION_48_1();

        v107 = v140;
      }

      else
      {
        OUTLINED_FUNCTION_144_0();

        v107 = OUTLINED_FUNCTION_69_1();
      }

      v101(v107, v82);
      v111 = *(v36 + 528);
      __swift_project_boxed_opaque_existential_1((*(v36 + 448) + 608), *(*(v36 + 448) + 632));
      v112 = OUTLINED_FUNCTION_147();
      *(v36 + 1002) = v113(v112) & 1;

      sub_227CFC560(v111);
      v136 = OUTLINED_FUNCTION_84_0();
      OUTLINED_FUNCTION_36_0();
      v142 = v114 + *v114;
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v36 + 792) = v115;
      *v115 = v116;
      OUTLINED_FUNCTION_9_4(v115);
      OUTLINED_FUNCTION_52();

      v122(v117, v118, v119, v120, v121, v122, v123, v124, a9, a10, a11, a12, a13, a14, a15, log, a17, a18, v131, a20, v136, v142, a23, a24, a25, a26, a27, a28);
    }
  }

  else
  {
    if (v78 == *MEMORY[0x277D0D040])
    {
      v87 = swift_task_alloc();
      *(v36 + 704) = v87;
      *v87 = v36;
      v88 = sub_227B4FB70;
    }

    else
    {
      if (v78 != *MEMORY[0x277D0D048])
      {
        a23 = 0;
        a24 = 0xE000000000000000;
        sub_227D4D668();
        v110 = a24;
        *(v36 + 416) = a23;
        *(v36 + 424) = v110;
        MEMORY[0x22AAA5DA0](0xD000000000000014, 0x8000000227D752D0);
        sub_227D4D7B8();
        MEMORY[0x22AAA5DA0](0xD00000000000001ELL, 0x8000000227D754A0);
        sub_227D4D7F8();
        OUTLINED_FUNCTION_52();
        return;
      }

      v87 = swift_task_alloc();
      *(v36 + 752) = v87;
      *v87 = v36;
      v88 = sub_227B503B4;
    }

    v87[1] = v88;
    OUTLINED_FUNCTION_190_0();
    OUTLINED_FUNCTION_52();

    sub_227D22470();
  }
}

uint64_t sub_227B4FB70()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *v6 = *v1;
  v5[89] = v7;
  v5[90] = v0;

  if (v0)
  {
  }

  else
  {
    v5[91] = v3;
  }

  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227B4FC8C()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[56];
  swift_getObjectType();
  v2 = *(v1 + 88);
  OUTLINED_FUNCTION_36_0();
  v8 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[92] = v4;
  *v4 = v0;
  v4[1] = sub_227B4FDC8;
  v5 = OUTLINED_FUNCTION_53(v0[85]);
  v6.n128_u64[0] = v2;

  return v8(v5, v6);
}

uint64_t sub_227B4FDC8()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 744) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {
  }

  else
  {
    *(v4 + 1000) = v3 & 1;
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227B503B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_177_1();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_32_0();
  v13 = v12;
  OUTLINED_FUNCTION_0();
  *v14 = v13;
  v15 = *v10;
  OUTLINED_FUNCTION_5_4();
  *v16 = v15;
  v13[95] = v11;
  v13[96] = v9;

  if (v9)
  {

    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_128();

    return MEMORY[0x2822009F8](v17, v18, v19);
  }

  else
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_169_0();
    OUTLINED_FUNCTION_28_2();
    v32 = v21 + *v21;
    v22 = swift_task_alloc();
    v13[97] = v22;
    *v22 = v15;
    v22[1] = sub_227B50598;
    OUTLINED_FUNCTION_53(v13[85]);
    OUTLINED_FUNCTION_111_1();
    OUTLINED_FUNCTION_128();

    return v27(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32);
  }
}

uint64_t sub_227B50598()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 784) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {
  }

  else
  {
    *(v4 + 1001) = v3 & 1;
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227B50C38()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 800) = v4;
  *(v2 + 808) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_227B50D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, void (**a12)(char *, uint64_t, uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t (*a18)(uint64_t), uint64_t (*a19)(uint64_t), uint64_t a20, uint64_t (*a21)(uint64_t), uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_108();
  a31 = v33;
  a32 = v34;
  OUTLINED_FUNCTION_150_0();
  a30 = v32;
  v35 = v32[100];
  memcpy(v32 + 12, v32 + 2, 0x50uLL);
  v36 = *(v35 + 16);
  v184 = v32;
  if (v36)
  {
    OUTLINED_FUNCTION_19();
    v38 = v35 + v37;
    v178 = *(v39 + 56);
    v180 = v40;
    v41 = (v39 - 8);
    v42 = MEMORY[0x277D84F90];
    v43 = v36;
    while (1)
    {
      v44 = v32[63];
      v45 = v32[57];
      v46 = OUTLINED_FUNCTION_57_0();
      v180(v46);
      v47 = sub_227D499E8();
      (*v41)(v44, v45);
      v48 = *(v47 + 16);
      v49 = *(v42 + 2);
      v50 = v49 + v48;
      if (__OFADD__(v49, v48))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v50 > *(v42 + 3) >> 1)
      {
        if (v49 <= v50)
        {
          v52 = v49 + v48;
        }

        else
        {
          v52 = v49;
        }

        v42 = sub_227B25F88(isUniquelyReferenced_nonNull_native, v52, 1, v42);
      }

      v32 = v184;
      if (*(v47 + 16))
      {
        if ((*(v42 + 3) >> 1) - *(v42 + 2) < v48)
        {
          goto LABEL_100;
        }

        swift_arrayInitWithCopy();

        if (v48)
        {
          v53 = *(v42 + 2);
          v54 = __OFADD__(v53, v48);
          v55 = v53 + v48;
          if (v54)
          {
            goto LABEL_102;
          }

          *(v42 + 2) = v55;
        }
      }

      else
      {

        if (v48)
        {
          goto LABEL_97;
        }
      }

      v38 += v178;
      if (!--v43)
      {
        goto LABEL_19;
      }
    }

LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v42 = MEMORY[0x277D84F90];
LABEL_19:
  v179 = sub_227B30834(v42);
  if (v36)
  {
    v56 = v32[58] + 16;
    OUTLINED_FUNCTION_136_0();
    v59 = v57 + v58;
    v181 = *(v56 + 56);
    v182 = v60;
    v61 = MEMORY[0x277D84F90];
    while (1)
    {
      v62 = v32[62];
      v63 = v32[57];
      v64 = OUTLINED_FUNCTION_147();
      v182(v64);
      v65 = sub_227D49A28();
      (*(v56 - 8))(v62, v63);
      v66 = *(v65 + 16);
      v67 = *(v61 + 2);
      v68 = v67 + v66;
      if (__OFADD__(v67, v66))
      {
        break;
      }

      v69 = swift_isUniquelyReferenced_nonNull_native();
      if (!v69 || v68 > *(v61 + 3) >> 1)
      {
        if (v67 <= v68)
        {
          v70 = v67 + v66;
        }

        else
        {
          v70 = v67;
        }

        v61 = sub_227B25F88(v69, v70, 1, v61);
      }

      if (*(v65 + 16))
      {
        if ((*(v61 + 3) >> 1) - *(v61 + 2) < v66)
        {
          goto LABEL_101;
        }

        swift_arrayInitWithCopy();

        v32 = v184;
        if (v66)
        {
          v71 = *(v61 + 2);
          v54 = __OFADD__(v71, v66);
          v72 = v71 + v66;
          if (v54)
          {
            goto LABEL_103;
          }

          *(v61 + 2) = v72;
        }
      }

      else
      {

        v32 = v184;
        if (v66)
        {
          goto LABEL_99;
        }
      }

      v59 += v181;
      if (!--v36)
      {
        goto LABEL_37;
      }
    }

LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v61 = MEMORY[0x277D84F90];
LABEL_37:
  v32[102] = sub_227B30834(v61);
  v73 = *(v179 + 16);

  if (v73)
  {
    v74 = swift_task_alloc();
    v32[103] = v74;
    *v74 = v32;
    v74[1] = sub_227B51818;
    OUTLINED_FUNCTION_53(v32[66]);
    OUTLINED_FUNCTION_55_0();

    sub_227CFAAAC();
  }

  else
  {
    v32[106] = sub_227D4CE28();
    v76 = *(v32[102] + 16);

    if (v76)
    {
      v77 = swift_task_alloc();
      v32[107] = v77;
      *v77 = v32;
      v77[1] = sub_227B520A0;
      OUTLINED_FUNCTION_53(v32[66]);
      OUTLINED_FUNCTION_55_0();

      sub_227B7A548();
    }

    else
    {
      v79 = sub_227D4CE28();
      v80 = v79;
      v81 = v32[106];
      if (*(v81 + 16) || *(v79 + 16))
      {
        v82 = *(v32[100] + 16);
        if (v82)
        {
          OUTLINED_FUNCTION_106_0(MEMORY[0x277D84F90]);
          OUTLINED_FUNCTION_105_0();
          v83 = a21;
          v177 = v84;
          OUTLINED_FUNCTION_146_0();
          while (1)
          {
            OUTLINED_FUNCTION_156_1();
            if (v85)
            {
              break;
            }

            v183 = v83;
            v87 = v32[59];
            v86 = v32[60];
            v88 = v32[57];
            OUTLINED_FUNCTION_104_1();
            v90 = *(v89 + 16);
            v90(v86);
            (v90)(v87, v86, v88);
            v91 = sub_227D499E8();
            v92 = 0;
            v93 = *(v91 + 16);
            v94 = v91 + 40;
            v95 = MEMORY[0x277D84F90];
LABEL_51:
            v96 = (v94 + 16 * v92);
            while (v93 != v92)
            {
              if (v92 >= *(v91 + 16))
              {
                __break(1u);
LABEL_95:
                __break(1u);
                goto LABEL_96;
              }

              if (*(v81 + 16))
              {
                v97 = *(v96 - 1);
                v36 = *v96;
                sub_227D4CE58();
                v98 = sub_227B2664C(v97, v36);
                if (v99)
                {
                  v100 = (*(v81 + 56) + 16 * v98);
                  v102 = *v100;
                  v101 = v100[1];
                  sub_227D4CE58();

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v106 = OUTLINED_FUNCTION_21();
                    v95 = sub_227B25F88(v106, v107, v108, v95);
                  }

                  v104 = *(v95 + 2);
                  v103 = *(v95 + 3);
                  v36 = v104 + 1;
                  if (v104 >= v103 >> 1)
                  {
                    v109 = OUTLINED_FUNCTION_50_1(v103);
                    v95 = sub_227B25F88(v109, v110, v111, v95);
                  }

                  ++v92;
                  *(v95 + 2) = v36;
                  v105 = &v95[16 * v104];
                  *(v105 + 4) = v102;
                  *(v105 + 5) = v101;
                  v94 = v91 + 40;
                  goto LABEL_51;
                }
              }

              v96 += 2;
              ++v92;
            }

            v112 = v184[60];

            sub_227D499D8();
            v113 = v112;
            v114 = sub_227D49A28();
            OUTLINED_FUNCTION_194_1();
            v116 = v115 + 40;
            v117 = MEMORY[0x277D84F90];
LABEL_64:
            v118 = (v116 + 16 * v112);
            while (v93 != v112)
            {
              if (v112 >= *(v114 + 16))
              {
                goto LABEL_95;
              }

              if (*(v80 + 16))
              {
                v119 = *(v118 - 1);
                v36 = *v118;
                sub_227D4CE58();
                v120 = v119;
                v113 = v80;
                v121 = sub_227B2664C(v120, v36);
                if (v122)
                {
                  OUTLINED_FUNCTION_214(v121);

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v126 = OUTLINED_FUNCTION_21();
                    v117 = sub_227B25F88(v126, v127, v128, v117);
                  }

                  v124 = *(v117 + 2);
                  v123 = *(v117 + 3);
                  v36 = v124 + 1;
                  if (v124 >= v123 >> 1)
                  {
                    v129 = OUTLINED_FUNCTION_50_1(v123);
                    v117 = sub_227B25F88(v129, v130, v131, v117);
                  }

                  ++v112;
                  *(v117 + 2) = v36;
                  v125 = &v117[16 * v124];
                  *(v125 + 4) = v116;
                  *(v125 + 5) = v80;
                  goto LABEL_64;
                }
              }

              v118 += 2;
              ++v112;
            }

            v32 = v184;
            OUTLINED_FUNCTION_213();
            sub_227D49A18();
            OUTLINED_FUNCTION_191_0();
            v132(v36, v116);
            v133 = *a12;
            (*a12)(v112, v113, v116);
            v83 = v183;
            a21 = v183;
            v82 = *(v183 + 2);
            v134 = *(v183 + 3);
            if (v82 >= v134 >> 1)
            {
              v138 = OUTLINED_FUNCTION_12(v134);
              sub_227B63A14(v138, v82 + 1, 1);
              v83 = a21;
            }

            v135 = v184[61];
            v136 = v184[57];
            *(v83 + 2) = v82 + 1;
            v133(v83 + v177 + v82 * v179, v135, v136);
            OUTLINED_FUNCTION_188_0();
            if (v137)
            {

              goto LABEL_82;
            }
          }

LABEL_104:
          __break(1u);
          return;
        }

        v83 = MEMORY[0x277D84F90];
LABEL_82:
        v32[117] = v83;
        sub_227D4AA58();
        sub_227B63A5C((v32 + 12), (v32 + 22));
        sub_227D4CE58();
        v139 = sub_227D4CA98();
        sub_227D4D418();
        sub_227B639C0((v32 + 12));
        OUTLINED_FUNCTION_153_0();
        v140 = v32[87];
        OUTLINED_FUNCTION_164_0();
        if (v141)
        {
          OUTLINED_FUNCTION_12_1();
          v142 = OUTLINED_FUNCTION_91_2();
          OUTLINED_FUNCTION_193_1(v142);
          *v83 = 136315394;
          sub_227D4CE58();
          v143 = OUTLINED_FUNCTION_113();
          v146 = sub_227B1B1A4(v143, v144, v145);

          *(v83 + 4) = v146;
          *(v83 + 6) = 2048;
          *(v83 + 14) = *(v83 + 2);

          OUTLINED_FUNCTION_31();
          _os_log_impl(v147, v148, v149, v150, v151, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v140);
          OUTLINED_FUNCTION_48_1();
          v32 = v184;
          OUTLINED_FUNCTION_5_2();
        }

        else
        {
        }

        v152 = OUTLINED_FUNCTION_91_0();
        v140(v152);
        sub_227D4AA58();
        sub_227D4CE58();
        v153 = sub_227D4CA98();
        sub_227D4D428();

        OUTLINED_FUNCTION_153_0();
        OUTLINED_FUNCTION_102_1();
        if (v154)
        {
          v155 = v32[57];
          OUTLINED_FUNCTION_129();
          v156 = OUTLINED_FUNCTION_91_2();
          OUTLINED_FUNCTION_96_1(v156);
          *v83 = 136315138;
          v157 = MEMORY[0x22AAA5F20](v83, v155);
          sub_227B1B1A4(v157, v158, &a21);
          OUTLINED_FUNCTION_192_1();

          *(v83 + 4) = v155;
          OUTLINED_FUNCTION_31();
          _os_log_impl(v159, v160, v161, v162, v163, 0xCu);
          OUTLINED_FUNCTION_77();
          v32 = v184;
          OUTLINED_FUNCTION_5_2();
        }

        v164 = OUTLINED_FUNCTION_45_1();
        (v82)(v164);
        v165 = swift_task_alloc();
        v32[118] = v165;
        *v165 = v32;
        OUTLINED_FUNCTION_18_3();
      }

      else
      {

        sub_227D4AA58();
        v169 = sub_227D4CA98();
        v170 = sub_227D4D418();
        if (OUTLINED_FUNCTION_126(v170))
        {
          v171 = OUTLINED_FUNCTION_178();
          OUTLINED_FUNCTION_204(v171);
          OUTLINED_FUNCTION_95(&dword_227B0D000, v172, v173, "No leaderboards or achievements to fetch to enrich activity definitions.");
          OUTLINED_FUNCTION_5_2();
        }

        v174 = v32[87];
        OUTLINED_FUNCTION_144_0();

        v175 = OUTLINED_FUNCTION_9_2();
        v174(v175);
        v176 = swift_task_alloc();
        v32[110] = v176;
        *v176 = v32;
        OUTLINED_FUNCTION_19_2();
      }

      *(v166 + 8) = v167;
      OUTLINED_FUNCTION_190_0();
      OUTLINED_FUNCTION_55_0();

      sub_227D22470();
    }
  }
}

uint64_t sub_227B51818()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v5 + 832) = v0;

  if (v0)
  {

    sub_227B639C0(v5 + 96);
  }

  else
  {
    *(v5 + 840) = v3;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_227B5193C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (**a9)(unint64_t, uint64_t, uint64_t *), void (**a10)(uint64_t, uint64_t *), uint64_t a11, void (*a12)(void), uint64_t a13, char *a14, uint64_t a15, uint64_t *a16, uint64_t a17, void (*a18)(void), uint64_t (*a19)(uint64_t, uint64_t), void (*a20)(void), uint64_t (*a21)(uint64_t, uint64_t), uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_108();
  a31 = v34;
  a32 = v35;
  OUTLINED_FUNCTION_150_0();
  a30 = v32;
  v32[106] = v32[105];
  v36 = *(v32[102] + 16);

  if (v36)
  {
    v37 = swift_task_alloc();
    v32[107] = v37;
    *v37 = v32;
    v37[1] = sub_227B520A0;
    OUTLINED_FUNCTION_53(v32[66]);
    OUTLINED_FUNCTION_55_0();

    sub_227B7A548();
    return;
  }

  v39 = sub_227D4CE28();
  v40 = v39;
  v41 = v32[106];
  if (!*(v41 + 16) && !*(v39 + 16))
  {

    sub_227D4AA58();
    sub_227D4CA98();
    v132 = sub_227D4D418();
    if (OUTLINED_FUNCTION_126(v132))
    {
      v133 = OUTLINED_FUNCTION_178();
      OUTLINED_FUNCTION_204(v133);
      OUTLINED_FUNCTION_95(&dword_227B0D000, v134, v135, "No leaderboards or achievements to fetch to enrich activity definitions.");
      OUTLINED_FUNCTION_5_2();
    }

    OUTLINED_FUNCTION_209_0();
    v136 = OUTLINED_FUNCTION_9_2();
    (v41)(v136);
    v137 = swift_task_alloc();
    v32[110] = v137;
    *v137 = v32;
    OUTLINED_FUNCTION_19_2();
LABEL_47:
    *(v129 + 8) = v130;
    OUTLINED_FUNCTION_190_0();
    OUTLINED_FUNCTION_55_0();

    sub_227D22470();
    return;
  }

  v42 = v32[100];
  v43 = v42[2];
  if (!v43)
  {

    v45 = MEMORY[0x277D84F90];
LABEL_41:
    v32[117] = v45;
    sub_227D4AA58();
    sub_227B63A5C((v32 + 12), (v32 + 22));
    sub_227D4CE58();
    v101 = sub_227D4CA98();
    sub_227D4D418();
    sub_227B639C0((v32 + 12));
    OUTLINED_FUNCTION_153_0();
    v102 = v32[87];
    v103 = v32[75];
    OUTLINED_FUNCTION_164_0();
    if (v104)
    {
      OUTLINED_FUNCTION_12_1();
      v105 = OUTLINED_FUNCTION_91_2();
      OUTLINED_FUNCTION_193_1(v105);
      *v103 = 136315394;
      sub_227D4CE58();
      v106 = OUTLINED_FUNCTION_113();
      v109 = sub_227B1B1A4(v106, v107, v108);

      *(v103 + 4) = v109;
      OUTLINED_FUNCTION_179_0();
      OUTLINED_FUNCTION_31();
      _os_log_impl(v110, v111, v112, v113, v114, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v42);
      OUTLINED_FUNCTION_48_1();
      OUTLINED_FUNCTION_41_1();
    }

    else
    {
    }

    v102(v103, v41);
    sub_227D4AA58();
    sub_227D4CE58();
    v115 = sub_227D4CA98();
    sub_227D4D428();

    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_102_1();
    if (v116)
    {
      v117 = v32[57];
      OUTLINED_FUNCTION_129();
      v118 = OUTLINED_FUNCTION_91_2();
      OUTLINED_FUNCTION_96_1(v118);
      *v103 = 136315138;
      v120 = MEMORY[0x22AAA5F20](v119, v117);
      sub_227B1B1A4(v120, v121, &a21);
      OUTLINED_FUNCTION_192_1();

      *(v103 + 4) = v117;
      OUTLINED_FUNCTION_31();
      _os_log_impl(v122, v123, v124, v125, v126, 0xCu);
      OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_41_1();
    }

    v127 = OUTLINED_FUNCTION_45_1();
    v43(v127);
    v128 = swift_task_alloc();
    v32[118] = v128;
    *v128 = v32;
    OUTLINED_FUNCTION_18_3();
    goto LABEL_47;
  }

  v44 = v32[58];
  OUTLINED_FUNCTION_106_0(MEMORY[0x277D84F90]);
  OUTLINED_FUNCTION_105_0();
  v45 = a21;
  v140 = v46;
  v141 = v43;
  v138 = (v44 + 32);
  v139 = (v44 + 8);
  while (1)
  {
    OUTLINED_FUNCTION_156_1();
    if (v48)
    {
      break;
    }

    v143 = (v47 + 1);
    v144 = v45;
    v50 = v32[59];
    v49 = v32[60];
    v51 = v32[57];
    OUTLINED_FUNCTION_104_1();
    v53 = *(v52 + 16);
    v53(v49);
    (v53)(v50, v49, v51);
    v54 = sub_227D499E8();
    v55 = 0;
    v56 = *(v54 + 16);
    v57 = v54 + 40;
    v145 = MEMORY[0x277D84F90];
LABEL_11:
    v58 = (v57 + 16 * v55);
    while (v56 != v55)
    {
      if (v55 >= *(v54 + 16))
      {
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      if (*(v41 + 16))
      {
        v59 = *(v58 - 1);
        v33 = *v58;
        sub_227D4CE58();
        v60 = sub_227B2664C(v59, v33);
        if (v61)
        {
          v62 = (*(v41 + 56) + 16 * v60);
          v64 = *v62;
          v63 = v62[1];
          sub_227D4CE58();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v68 = OUTLINED_FUNCTION_21();
            v145 = sub_227B25F88(v68, v69, v70, v71);
          }

          v66 = *(v145 + 2);
          v65 = *(v145 + 3);
          v33 = v66 + 1;
          if (v66 >= v65 >> 1)
          {
            v72 = OUTLINED_FUNCTION_50_1(v65);
            v145 = sub_227B25F88(v72, v73, v74, v145);
          }

          ++v55;
          *(v145 + 2) = v33;
          v67 = &v145[16 * v66];
          *(v67 + 4) = v64;
          *(v67 + 5) = v63;
          v57 = v54 + 40;
          goto LABEL_11;
        }
      }

      v58 += 2;
      ++v55;
    }

    v75 = v32[60];

    sub_227D499D8();
    v76 = v75;
    v77 = sub_227D49A28();
    OUTLINED_FUNCTION_194_1();
    v79 = v78 + 40;
    v80 = MEMORY[0x277D84F90];
    v146 = v78 + 40;
LABEL_24:
    v81 = (v79 + 16 * v75);
    while (v56 != v75)
    {
      if (v75 >= *(v77 + 16))
      {
        goto LABEL_54;
      }

      if (*(v40 + 16))
      {
        v82 = *(v81 - 1);
        v33 = *v81;
        sub_227D4CE58();
        v83 = v82;
        v76 = v40;
        v84 = sub_227B2664C(v83, v33);
        if (v85)
        {
          OUTLINED_FUNCTION_214(v84);

          v142 = v81;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v89 = OUTLINED_FUNCTION_21();
            v80 = sub_227B25F88(v89, v90, v91, v80);
          }

          v87 = *(v80 + 2);
          v86 = *(v80 + 3);
          v33 = v87 + 1;
          if (v87 >= v86 >> 1)
          {
            v92 = OUTLINED_FUNCTION_50_1(v86);
            v80 = sub_227B25F88(v92, v93, v94, v80);
          }

          ++v75;
          *(v80 + 2) = v33;
          v88 = &v80[16 * v87];
          *(v88 + 4) = v142;
          *(v88 + 5) = v40;
          v79 = v146;
          goto LABEL_24;
        }
      }

      v81 += 2;
      ++v75;
    }

    OUTLINED_FUNCTION_213();
    sub_227D49A18();
    (*v139)(v33, v81);
    v95 = *v138;
    (*v138)(v75, v76, v81);
    v45 = v144;
    a21 = v144;
    v97 = *(v144 + 2);
    v96 = *(v144 + 3);
    v42 = (v97 + 1);
    if (v97 >= v96 >> 1)
    {
      v100 = OUTLINED_FUNCTION_12(v96);
      sub_227B63A14(v100, v97 + 1, 1);
      v45 = a21;
    }

    v98 = v32[61];
    v99 = v32[57];
    *(v45 + 2) = v42;
    v95(v45 + v140 + v97 * a17, v98, v99);
    v43 = v141;
    if (v143 == v141)
    {

      goto LABEL_41;
    }
  }

LABEL_55:
  __break(1u);
}

uint64_t sub_227B520A0()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v5 + 864) = v0;

  if (v0)
  {

    sub_227B639C0(v5 + 96);
  }

  else
  {
    *(v5 + 872) = v3;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_227B521C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t, uint64_t, uint64_t), void (**a12)(uint64_t), void (*a13)(void), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void (*a20)(uint64_t), void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_108();
  a31 = v33;
  a32 = v34;
  OUTLINED_FUNCTION_150_0();
  a30 = v32;
  v35 = v32[109];
  v36 = v32[106];
  if (!*(v36 + 16) && !*(v35 + 16))
  {

    sub_227D4AA58();
    sub_227D4CA98();
    v128 = sub_227D4D418();
    if (OUTLINED_FUNCTION_126(v128))
    {
      v129 = OUTLINED_FUNCTION_178();
      OUTLINED_FUNCTION_204(v129);
      OUTLINED_FUNCTION_95(&dword_227B0D000, v130, v131, "No leaderboards or achievements to fetch to enrich activity definitions.");
      OUTLINED_FUNCTION_5_2();
    }

    OUTLINED_FUNCTION_209_0();
    v132 = OUTLINED_FUNCTION_9_2();
    (v36)(v132);
    v133 = swift_task_alloc();
    v32[110] = v133;
    *v133 = v32;
    OUTLINED_FUNCTION_19_2();
LABEL_45:
    *(v125 + 8) = v126;
    OUTLINED_FUNCTION_190_0();
    OUTLINED_FUNCTION_55_0();

    sub_227D22470();
    return;
  }

  v37 = *(v32[100] + 16);
  if (!v37)
  {

    v38 = MEMORY[0x277D84F90];
LABEL_38:
    v32[117] = v38;
    sub_227D4AA58();
    sub_227B63A5C((v32 + 12), (v32 + 22));
    sub_227D4CE58();
    v96 = sub_227D4CA98();
    sub_227D4D418();
    sub_227B639C0((v32 + 12));
    OUTLINED_FUNCTION_153_0();
    v97 = v32[87];
    v98 = v32[75];
    OUTLINED_FUNCTION_164_0();
    if (v99)
    {
      OUTLINED_FUNCTION_12_1();
      v100 = OUTLINED_FUNCTION_91_2();
      OUTLINED_FUNCTION_193_1(v100);
      *v98 = 136315394;
      sub_227D4CE58();
      v101 = OUTLINED_FUNCTION_113();
      v104 = sub_227B1B1A4(v101, v102, v103);

      *(v98 + 4) = v104;
      OUTLINED_FUNCTION_179_0();
      OUTLINED_FUNCTION_31();
      _os_log_impl(v105, v106, v107, v108, v109, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v38);
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_41_1();
    }

    else
    {
    }

    v97(v98, v36);
    sub_227D4AA58();
    sub_227D4CE58();
    v110 = sub_227D4CA98();
    sub_227D4D428();

    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_102_1();
    if (v111)
    {
      v140 = v37;
      v112 = v38;
      v113 = v32[57];
      OUTLINED_FUNCTION_129();
      v114 = OUTLINED_FUNCTION_91_2();
      OUTLINED_FUNCTION_96_1(v114);
      *v98 = 136315138;
      v115 = MEMORY[0x22AAA5F20](v112, v113);
      sub_227B1B1A4(v115, v116, &a21);
      OUTLINED_FUNCTION_192_1();

      *(v98 + 4) = v113;
      OUTLINED_FUNCTION_31();
      _os_log_impl(v117, v118, v119, v120, v121, 0xCu);
      OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_41_1();

      v122 = OUTLINED_FUNCTION_45_1();
      v140(v122);
    }

    else
    {

      v123 = OUTLINED_FUNCTION_45_1();
      v37(v123);
    }

    v124 = swift_task_alloc();
    v32[118] = v124;
    *v124 = v32;
    OUTLINED_FUNCTION_18_3();
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_106_0(MEMORY[0x277D84F90]);
  OUTLINED_FUNCTION_105_0();
  v38 = a21;
  v134 = v39;
  OUTLINED_FUNCTION_146_0();
  while (1)
  {
    OUTLINED_FUNCTION_156_1();
    if (v40)
    {
      break;
    }

    v137 = v38;
    v42 = v32[59];
    v41 = v32[60];
    v43 = v32[57];
    OUTLINED_FUNCTION_104_1();
    v45 = *(v44 + 16);
    v46 = a13;
    v45(v41);
    (v45)(v42, v41, v43);
    v47 = sub_227D499E8();
    OUTLINED_FUNCTION_194_1();
    v49 = v48 + 40;
    v138 = MEMORY[0x277D84F90];
    v135 = v48 + 40;
LABEL_7:
    v50 = (v49 + 16 * v46);
    while (v45 != v46)
    {
      if (v46 >= *(v47 + 16))
      {
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      if (*(v36 + 16))
      {
        v52 = *(v50 - 1);
        v51 = *v50;
        sub_227D4CE58();
        v53 = sub_227B2664C(v52, v51);
        if (v54)
        {
          v55 = (*(v36 + 56) + 16 * v53);
          v57 = *v55;
          v56 = v55[1];
          sub_227D4CE58();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v61 = OUTLINED_FUNCTION_21();
            v138 = sub_227B25F88(v61, v62, v63, v64);
          }

          v59 = *(v138 + 2);
          v58 = *(v138 + 3);
          if (v59 >= v58 >> 1)
          {
            v65 = OUTLINED_FUNCTION_12(v58);
            v138 = sub_227B25F88(v65, v59 + 1, 1, v138);
          }

          ++v46;
          *(v138 + 2) = v59 + 1;
          v60 = &v138[16 * v59];
          *(v60 + 4) = v57;
          *(v60 + 5) = v56;
          v49 = v135;
          goto LABEL_7;
        }
      }

      v50 += 2;
      ++v46;
    }

    sub_227D499D8();
    v66 = sub_227D49A28();
    OUTLINED_FUNCTION_194_1();
    v68 = v67 + 40;
    v69 = MEMORY[0x277D84F90];
    v139 = v67 + 40;
LABEL_20:
    v70 = (v68 + 16 * v46);
    while (v45 != v46)
    {
      if (v46 >= *(v66 + 16))
      {
        goto LABEL_52;
      }

      if (*(v35 + 16))
      {
        v71 = *(v70 - 1);
        v72 = *v70;
        sub_227D4CE58();
        v73 = sub_227B2664C(v71, v72);
        if (v74)
        {
          v75 = (*(v35 + 56) + 16 * v73);
          v77 = *v75;
          v76 = v75[1];
          sub_227D4CE58();

          v136 = v77;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v81 = OUTLINED_FUNCTION_21();
            v69 = sub_227B25F88(v81, v82, v83, v69);
          }

          v79 = *(v69 + 2);
          v78 = *(v69 + 3);
          if (v79 >= v78 >> 1)
          {
            v84 = OUTLINED_FUNCTION_12(v78);
            v69 = sub_227B25F88(v84, v79 + 1, 1, v69);
          }

          ++v46;
          *(v69 + 2) = v79 + 1;
          v80 = &v69[16 * v79];
          *(v80 + 4) = v136;
          *(v80 + 5) = v76;
          v68 = v139;
          goto LABEL_20;
        }
      }

      v70 += 2;
      ++v46;
    }

    v86 = v32[60];
    v85 = v32[61];
    v87 = v32[59];
    v88 = v32[57];

    sub_227D49A18();
    OUTLINED_FUNCTION_191_0();
    v89(v86, v88);
    v37 = *a12;
    (*a12)(v85, v87, v88);
    v38 = v137;
    a21 = v137;
    v91 = v137[2];
    v90 = v137[3];
    if (v91 >= v90 >> 1)
    {
      v95 = OUTLINED_FUNCTION_12(v90);
      sub_227B63A14(v95, v91 + 1, 1);
      v38 = a21;
    }

    v92 = v32[61];
    v93 = v32[57];
    v38[2] = v91 + 1;
    (v37)(v38 + v134 + v91 * a17, v92, v93);
    OUTLINED_FUNCTION_188_0();
    if (v94)
    {

      goto LABEL_38;
    }
  }

LABEL_53:
  __break(1u);
}

uint64_t sub_227B52888()
{
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_32_0();
  v4 = v3;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  v4[111] = v2;
  v4[112] = v0;

  if (!v0)
  {
    swift_getObjectType();
    v12 = v4[15];
    v4[113] = v4[14];
    v4[114] = v12;
    OUTLINED_FUNCTION_36_0();
    v13 = swift_task_alloc();
    v4[115] = v13;
    *v13 = v6;
    v13[1] = sub_227B52A88;
    OUTLINED_FUNCTION_53(v4[100]);
    OUTLINED_FUNCTION_145_0();
    OUTLINED_FUNCTION_183_1();

    __asm { BRAA            X5, X16 }
  }

  sub_227B639C0((v4 + 12));
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_183_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227B52A88()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 928) = v0;

  if (v0)
  {
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_227B52BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void (*a17)(uint64_t, uint64_t), uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_68();
  a29 = v32;
  a30 = v33;
  OUTLINED_FUNCTION_74();
  a28 = v30;
  sub_227D4AA58();
  sub_227B63A5C((v30 + 12), (v30 + 42));
  v34 = sub_227D4CA98();
  sub_227D4D428();
  sub_227B639C0((v30 + 12));
  if (OUTLINED_FUNCTION_160_0())
  {
    v35 = v30[114];
    v36 = v30[113];
    v37 = v30[71];
    a17 = v30[87];
    a18 = v30[66];
    v38 = v30[65];
    a15 = v30[76];
    a16 = v30[64];
    OUTLINED_FUNCTION_129();
    v39 = OUTLINED_FUNCTION_55_3();
    a19 = v39;
    *v31 = 136315138;
    sub_227D4CE58();
    sub_227B639C0((v30 + 12));
    v40 = sub_227B1B1A4(v36, v35, &a19);

    *(v31 + 4) = v40;
    OUTLINED_FUNCTION_74_1();
    _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_48_1();

    a17(a15, v37);
    (*(v38 + 8))(a18, a16);
  }

  else
  {
    v46 = v30[87];
    OUTLINED_FUNCTION_171_0();

    sub_227B639C0((v30 + 12));
    v47 = OUTLINED_FUNCTION_9_2();
    v46(v47);
    v48 = OUTLINED_FUNCTION_148();
    v49(v48);
  }

  OUTLINED_FUNCTION_2_7(v30[84]);

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_65();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B52E50()
{
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_32_0();
  v4 = v3;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  v4[119] = v2;
  v4[120] = v0;

  if (!v0)
  {
    swift_getObjectType();
    v12 = v4[15];
    v4[121] = v4[14];
    v4[122] = v12;
    OUTLINED_FUNCTION_36_0();
    v13 = swift_task_alloc();
    v4[123] = v13;
    *v13 = v6;
    v13[1] = sub_227B53050;
    OUTLINED_FUNCTION_53(v4[117]);
    OUTLINED_FUNCTION_145_0();
    OUTLINED_FUNCTION_183_1();

    __asm { BRAA            X5, X16 }
  }

  sub_227B639C0((v4 + 12));
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_183_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227B53050()
{
  OUTLINED_FUNCTION_20();
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 992) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {
  }

  OUTLINED_FUNCTION_34_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_227B53180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void (*a17)(uint64_t, uint64_t), uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_68();
  a29 = v32;
  a30 = v33;
  OUTLINED_FUNCTION_74();
  a28 = v30;
  sub_227D4AA58();
  sub_227B63A5C((v30 + 12), (v30 + 32));
  sub_227D4CE58();
  v34 = sub_227D4CA98();
  sub_227D4D428();
  sub_227B639C0((v30 + 12));
  if (OUTLINED_FUNCTION_160_0())
  {
    v35 = v30[122];
    v36 = v30[121];
    v37 = v30[117];
    a13 = v30[72];
    a14 = v30[71];
    a15 = v30[73];
    a17 = v30[87];
    a18 = v30[66];
    v38 = v30[65];
    a16 = v30[64];
    OUTLINED_FUNCTION_12_1();
    a19 = OUTLINED_FUNCTION_55_3();
    *v31 = 134218242;
    v39 = *(v37 + 16);

    *(v31 + 4) = v39;

    *(v31 + 12) = 2080;
    sub_227D4CE58();
    sub_227B639C0((v30 + 12));
    v40 = sub_227B1B1A4(v36, v35, &a19);

    *(v31 + 14) = v40;
    OUTLINED_FUNCTION_74_1();
    _os_log_impl(v41, v42, v43, v44, v45, 0x16u);
    OUTLINED_FUNCTION_47_1();
    OUTLINED_FUNCTION_48_1();

    a17(a15, a14);
    (*(v38 + 8))(a18, a16);
  }

  else
  {
    v46 = v30[87];
    OUTLINED_FUNCTION_171_0();
    swift_bridgeObjectRelease_n();

    sub_227B639C0((v30 + 12));
    v47 = OUTLINED_FUNCTION_9_2();
    v46(v47);
    v48 = OUTLINED_FUNCTION_148();
    v49(v48);
  }

  OUTLINED_FUNCTION_2_7(v30[84]);

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_65();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B53434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_0_3();

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_65();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B5352C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_0_3();

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_65();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B53624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_0_3();

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_65();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B5371C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_0_3();

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_65();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B53814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  v22 = OUTLINED_FUNCTION_33_1();
  v23(v22);
  OUTLINED_FUNCTION_0_3();

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_65();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B5391C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  v22 = OUTLINED_FUNCTION_33_1();
  v23(v22);
  OUTLINED_FUNCTION_0_3();

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_65();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B53A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  v22 = OUTLINED_FUNCTION_33_1();
  v23(v22);
  OUTLINED_FUNCTION_0_3();

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_65();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B53B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  v22 = OUTLINED_FUNCTION_33_1();
  v23(v22);
  OUTLINED_FUNCTION_0_3();

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_65();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B53C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_219();
  v22 = OUTLINED_FUNCTION_57_0();
  v23(v22);
  OUTLINED_FUNCTION_0_3();

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_65();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B53D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  v22 = OUTLINED_FUNCTION_33_1();
  v23(v22);
  OUTLINED_FUNCTION_0_3();

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_65();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B53E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_219();
  v22 = OUTLINED_FUNCTION_57_0();
  v23(v22);
  OUTLINED_FUNCTION_0_3();

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_65();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B53F5C()
{
  OUTLINED_FUNCTION_6();
  v1[15] = v2;
  v1[16] = v0;
  v1[13] = v3;
  v1[14] = v4;
  v1[12] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[17] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[18] = v7;
  v1[19] = OUTLINED_FUNCTION_30();
  v8 = sub_227D4CAB8();
  v1[20] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[21] = v9;
  v1[22] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_5(v10);
  v1[23] = OUTLINED_FUNCTION_30();
  v11 = sub_227D49B58();
  v1[24] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[25] = v12;
  v1[26] = OUTLINED_FUNCTION_121();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_227B540FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_150_0();
  if (v28[14])
  {
    v29 = v28[14];
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
  }

  sub_227B11EE8(v28[16] + 608, (v28 + 2));
  v30 = v28[6];
  __swift_project_boxed_opaque_existential_1(v28 + 2, v28[5]);
  sub_227D4CE58();
  v31 = sub_227D4A6A8();
  v32 = v28[25];
  v78 = (*(v30 + 64))(v31);

  __swift_destroy_boxed_opaque_existential_0(v28 + 2);
  v33 = 0;
  v85 = *(v29 + 16);
  v83 = *MEMORY[0x277D0CD58];
  v81 = (v32 + 8);
  v84 = v32;
  v79 = (v32 + 32);
  v80 = MEMORY[0x277D84F90];
  v34 = v29;
  v82 = v29;
  while (v85 != v33)
  {
    if (v33 >= *(v34 + 16))
    {
      __break(1u);
LABEL_27:
      v74 = OUTLINED_FUNCTION_21();
      v34 = sub_227B63328(v74, v75, v76, v34);
      goto LABEL_16;
    }

    v35 = (*(v84 + 80) + 32) & ~*(v84 + 80);
    v36 = v34 + v35;
    v37 = *(v84 + 72);
    v38 = *(v84 + 16);
    (v38)(v28[29], v36 + v37 * v33, v28[24]);
    v39 = OUTLINED_FUNCTION_82();
    v38(v39);
    v40 = OUTLINED_FUNCTION_173();
    v42 = v41(v40);
    v43 = v28[28];
    if (v42 == v83)
    {
      OUTLINED_FUNCTION_191_0();
      v47 = OUTLINED_FUNCTION_173();
      v48(v47);
      sub_227D49F28();
      OUTLINED_FUNCTION_62_0();
      (*(v49 + 8))(v43);
      v50 = *v79;
      v51 = OUTLINED_FUNCTION_174();
      v50(v51);
      v52 = v80;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_227B63AB8(0, *(v80 + 16) + 1, 1);
        v52 = v80;
      }

      v54 = *(v52 + 16);
      v53 = *(v52 + 24);
      if (v54 >= v53 >> 1)
      {
        v57 = OUTLINED_FUNCTION_12(v53);
        sub_227B63AB8(v57, v54 + 1, 1);
        v52 = v80;
      }

      ++v33;
      v55 = v28[27];
      v56 = v28[24];
      *(v52 + 16) = v54 + 1;
      v80 = v52;
      (v50)(v52 + v35 + v54 * v37, v55, v56);
      v34 = v82;
    }

    else
    {
      v44 = *v81;
      v45 = OUTLINED_FUNCTION_149_0();
      v44(v45);
      v46 = OUTLINED_FUNCTION_173();
      v44(v46);
      ++v33;
      v34 = v82;
    }
  }

  v58 = *(v80 + 16);

  if ((v58 != 0) | v78 & 1)
  {
    goto LABEL_19;
  }

  v59 = v28[25];
  v60 = v28[26];
  v61 = v28[24];
  v62 = *MEMORY[0x277D0CEE8];
  sub_227D49F28();
  OUTLINED_FUNCTION_62_0();
  (*(v63 + 104))(v60, v62);
  (*(v59 + 104))(v60, v83, v61);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_16:
  v65 = *(v34 + 16);
  v64 = *(v34 + 24);
  if (v65 >= v64 >> 1)
  {
    v77 = OUTLINED_FUNCTION_12(v64);
    v34 = sub_227B63328(v77, v65 + 1, 1, v34);
  }

  *(v34 + 16) = v65 + 1;
  OUTLINED_FUNCTION_19();
  (*(v67 + 32))(v34 + v66 + *(v67 + 72) * v65);
LABEL_19:
  v28[30] = v34;
  if (sub_227D1CC44())
  {

    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v28[31] = v68;
    *v68 = v69;
    v68[1] = sub_227B54654;
    OUTLINED_FUNCTION_55_0();

    return sub_227BD8304();
  }

  else
  {
    v72 = swift_task_alloc();
    v28[32] = v72;
    *v72 = v28;
    v72[1] = sub_227B54810;
    OUTLINED_FUNCTION_55_0();

    return sub_227D22470();
  }
}

uint64_t sub_227B54654()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_77_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_81_1();

  v3 = *(v1 + 8);

  return v3();
}

void sub_227B54810()
{
  OUTLINED_FUNCTION_111();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  v6 = *v1;
  *v5 = *v1;
  v4[33] = v3;

  if (v0)
  {

    OUTLINED_FUNCTION_75_1();
    OUTLINED_FUNCTION_183_1();

    __asm { BRAA            X1, X16 }
  }

  swift_getObjectType();
  OUTLINED_FUNCTION_192_1();
  OUTLINED_FUNCTION_36_0();
  v9 = swift_task_alloc();
  v4[34] = v9;
  *v9 = v6;
  v9[1] = sub_227B54A64;
  OUTLINED_FUNCTION_53(v4[13]);
  OUTLINED_FUNCTION_183_1();

  __asm { BRAA            X4, X16 }
}

uint64_t sub_227B54A64()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 280) = v5;
  *(v3 + 288) = v0;

  if (!v0)
  {
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227B54B78()
{
  v38 = v0;
  if (*(v0[35] + 16))
  {
    OUTLINED_FUNCTION_13_0((v0[16] + 104));
    OUTLINED_FUNCTION_36_0();
    v36 = (v1 + *v1);
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v0[37] = v2;
    *v2 = v3;
    v2[1] = sub_227B54EF0;
    OUTLINED_FUNCTION_85_1();

    return v36();
  }

  else
  {

    sub_227D4AA58();
    v5 = OUTLINED_FUNCTION_132_0();
    v6(v5);
    v7 = sub_227D4CA98();
    v8 = sub_227D4D438();
    v9 = os_log_type_enabled(v7, v8);
    v11 = v0[21];
    v10 = v0[22];
    v12 = v0[19];
    v13 = v0[20];
    v15 = v0[17];
    v14 = v0[18];
    if (v9)
    {
      OUTLINED_FUNCTION_129();
      v37 = OUTLINED_FUNCTION_91_2();
      *v13 = 136315138;
      v16 = sub_227D4A5E8();
      v35 = v10;
      v18 = v17;
      (*(v14 + 8))(v12, v15);
      v19 = sub_227B1B1A4(v16, v18, &v37);

      *(v13 + 4) = v19;
      _os_log_impl(&dword_227B0D000, v7, v8, "In store definitions for %s are empty.", v13, 0xCu);
      OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_41_1();

      (*(v11 + 8))(v35, v13);
    }

    else
    {

      (*(v14 + 8))(v12, v15);
      (*(v11 + 8))(v10, v13);
    }

    sub_227D4A958();
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    v24 = OUTLINED_FUNCTION_91_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_149();
    sub_227B15A74(v26, v27, v28, v29);
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_149();
    sub_227B15A74(v30, v31, v32, v33);
    sub_227D4A948();
    OUTLINED_FUNCTION_217_1();

    OUTLINED_FUNCTION_15_0();

    return v34();
  }
}

uint64_t sub_227B54EF0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 304) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B54FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_92();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_111();
  a18 = v20;
  v23 = v20[38];
  v24 = v20[35];
  v25 = v20[13];
  v26 = swift_task_alloc();
  *(v26 + 16) = v25;
  *(v26 + 24) = v20 + 7;
  v27 = sub_227B55444(MEMORY[0x277D84F90], sub_227B63B00, v26, v24);

  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_0(v20 + 7);
    OUTLINED_FUNCTION_218();

    OUTLINED_FUNCTION_19_0();
  }

  else
  {
    a9 = v27;
    sub_227B63E8C(&a9);
    sub_227D4A958();
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
    v41 = OUTLINED_FUNCTION_141();
    __swift_instantiateConcreteTypeFromMangledNameV2(v41, v42);
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_220(v43, v44, v45, v46);
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_220(v47, v48, v49, v50);
    OUTLINED_FUNCTION_173_0();
    sub_227D4A948();
    __swift_destroy_boxed_opaque_existential_0(v20 + 7);
    OUTLINED_FUNCTION_217_1();

    OUTLINED_FUNCTION_15_0();
  }

  OUTLINED_FUNCTION_33();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

uint64_t sub_227B551BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_210();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_227B55260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_210();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_227B552F0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  sub_227D49848();
  sub_227D4A668();
  if (v1)
  {
  }

  sub_227B6315C();
  v10 = *(*a1 + 16);
  sub_227B631C8(v10);
  v11 = *a1;
  *(*a1 + 16) = v10 + 1;
  OUTLINED_FUNCTION_136_0();
  result = v13(v11 + v12 + *(v5 + 72) * v10, v8, v3);
  *a1 = v11;
  return result;
}

uint64_t sub_227B55444(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(sub_227D49AB8() - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

uint64_t sub_227B55528()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_227D4CAB8();
  v1[4] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_30();
  v5 = sub_227D49AB8();
  v1[7] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AD8, &unk_227D4ED80);
  OUTLINED_FUNCTION_10_0(v7);
  v1[10] = v8;
  v1[11] = OUTLINED_FUNCTION_121();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[14] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[15] = v10;
  v1[16] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v1[17] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[18] = v12;
  v1[19] = OUTLINED_FUNCTION_121();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_227B5574C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  if (sub_227D1CC44())
  {
    v29 = swift_task_alloc();
    v28[22] = v29;
    *v29 = v28;
    v29[1] = sub_227B55A38;
    OUTLINED_FUNCTION_53(v28[2]);
    OUTLINED_FUNCTION_135_0();

    return sub_227BD9804();
  }

  else
  {
    v32 = v28[18];
    v33 = v28[2];
    v34 = *(v33 + 16);
    v35 = MEMORY[0x277D84F90];
    v28[24] = 0;
    v28[25] = v35;
    v28[23] = v34;
    if (v34)
    {
      v36 = v28[21];
      v37 = v28[17];
      v39 = *(v32 + 16);
      v38 = v32 + 16;
      v40 = (*(v38 + 64) + 32) & ~*(v38 + 64);
      v28[26] = v39;
      v28[27] = v38 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v39(v36, v33 + v40, v37);
      sub_227D4A718();
      v28[28] = sub_227D4A6A8();
      v28[29] = v49;
      v50 = OUTLINED_FUNCTION_101_1();
      v51(v50);
      v52 = swift_task_alloc();
      v28[30] = v52;
      *v52 = v28;
      OUTLINED_FUNCTION_78_3(v52);
      OUTLINED_FUNCTION_135_0();

      return sub_227D22470();
    }

    else
    {

      OUTLINED_FUNCTION_115();
      OUTLINED_FUNCTION_135_0();

      return v43(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
    }
  }
}

uint64_t sub_227B55A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v28 = v16;
  v17 = *v15;
  OUTLINED_FUNCTION_5_4();
  *v18 = v17;

  OUTLINED_FUNCTION_16_0();

  return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, v28, v14, a12, a13, a14);
}

uint64_t sub_227B55C3C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  *v4 = *v1;
  v3[31] = v5;
  v3[32] = v6;
  v3[33] = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B55D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v15 = v14[33];
  sub_227D4A708();
  v14[34] = v16;
  if (v15)
  {
    v17 = OUTLINED_FUNCTION_70_1();
    v18(v17);
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_42_1();

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_16_0();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v41 = v14[32];
    swift_getObjectType();
    v42 = v41 + 16;
    OUTLINED_FUNCTION_36_0();
    v40 = v28 + *v28;
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v14[35] = v29;
    *v29 = v30;
    v29[1] = sub_227B55F48;
    OUTLINED_FUNCTION_16_0();

    return v38(v31, v32, v33, v34, v35, v36, v37, v38, v40, v42, a11, a12, a13, a14);
  }
}

uint64_t sub_227B55F48()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_5_4();
  *v3 = v1;
  *v3 = *v2;
  *(v1 + 288) = v0;

  OUTLINED_FUNCTION_81_1();
  if (v0)
  {
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_227B560CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  v28 = v27[12];
  v29 = v27[7];
  sub_227B3E0F8(v27[13], v28, &qword_27D7E6AD8, &unk_227D4ED80);
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    v30 = v27[26];
    v31 = v27[20];
    sub_227B1DE58(v27[12], &qword_27D7E6AD8, &unk_227D4ED80);
    sub_227D4AA58();
    v32 = OUTLINED_FUNCTION_58();
    v30(v32);
    v33 = sub_227D4CA98();
    v34 = sub_227D4D438();
    if (OUTLINED_FUNCTION_126(v34))
    {
      v35 = v27[26];
      a10 = v27[27];
      v36 = v27[20];
      HIDWORD(a11) = v31;
      v37 = v27[18];
      v38 = v27[19];
      v39 = v27[17];
      a16 = v27[13];
      a17 = v27[21];
      a13 = v27[5];
      a14 = v27[4];
      a15 = v27[6];
      v40 = OUTLINED_FUNCTION_129();
      a18 = OUTLINED_FUNCTION_14_5();
      *v40 = 136315138;
      v35(v38, v36, v39);
      a12 = v39;
      sub_227D4CFF8();
      v41 = *(v37 + 8);
      v41(v36, v39);
      v42 = OUTLINED_FUNCTION_148();
      v45 = sub_227B1B1A4(v42, v43, v44);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_227B0D000, v33, BYTE4(a11), "Failed to describe activity definition for %s", v40, 0xCu);
      OUTLINED_FUNCTION_47_1();
      OUTLINED_FUNCTION_44_3();

      (*(a13 + 8))(a15, a14);
      sub_227B1DE58(a16, &qword_27D7E6AD8, &unk_227D4ED80);
      v41(a17, v39);
    }

    else
    {
      v61 = v27[18];
      v62 = v27[13];

      v63 = *(v61 + 8);
      v64 = OUTLINED_FUNCTION_91_0();
      v63(v64);
      v65 = OUTLINED_FUNCTION_173();
      v66(v65);
      sub_227B1DE58(v62, &qword_27D7E6AD8, &unk_227D4ED80);
      v67 = OUTLINED_FUNCTION_132_0();
      v63(v67);
    }

    v53 = v27[25];
  }

  else
  {
    v46 = v27[7];
    (*(v27[8] + 32))(v27[9], v27[12], v46);
    v47 = OUTLINED_FUNCTION_9_2();
    v48(v47);
    OUTLINED_FUNCTION_99();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v46);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v27[25];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_117();
      sub_227B6344C();
      v53 = v100;
    }

    v54 = *(v53 + 16);
    a17 = v54 + 1;
    if (v54 >= *(v53 + 24) >> 1)
    {
      OUTLINED_FUNCTION_117();
      sub_227B6344C();
      v53 = v101;
    }

    v55 = v27[13];
    v57 = v27[10];
    v56 = v27[11];
    (*(v27[8] + 8))(v27[9], v27[7]);
    sub_227B1DE58(v55, &qword_27D7E6AD8, &unk_227D4ED80);
    v58 = OUTLINED_FUNCTION_91_0();
    v59(v58);
    *(v53 + 16) = a17;
    OUTLINED_FUNCTION_19();
    sub_227B3DFC8(v56, v53 + v60 + *(v57 + 72) * v54, &qword_27D7E6AD8, &unk_227D4ED80);
  }

  v68 = v27[36];
  v69 = v27[23];
  v70 = v27[24] + 1;
  v27[24] = v70;
  v27[25] = v53;
  v71 = v27[21];
  if (v70 == v69)
  {
    v102 = v27[6];

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_65();

    return v74(v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, a11, a12, a13, a14, a15, a16, v102, a18, a19, a20, a21, a22);
  }

  else
  {
    v81 = v27[17];
    v82 = v27[18];
    v83 = *(v82 + 16);
    v82 += 16;
    v84 = v27[2] + ((*(v82 + 64) + 32) & ~*(v82 + 64)) + *(v82 + 56) * v70;
    v27[26] = v83;
    v27[27] = v82 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v83(v71, v84, v81);
    sub_227D4A718();
    if (v68)
    {
      v85 = OUTLINED_FUNCTION_70_1();
      v86(v85);

      OUTLINED_FUNCTION_42_1();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_65();

      return v89(v88, v89, v90, v91, v92, v93, v94, v95, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
    }

    else
    {
      v27[28] = sub_227D4A6A8();
      v27[29] = v87;
      v96 = OUTLINED_FUNCTION_101_1();
      v97(v96);
      v98 = swift_task_alloc();
      v27[30] = v98;
      *v98 = v27;
      OUTLINED_FUNCTION_78_3(v98);
      OUTLINED_FUNCTION_65();

      return sub_227D22470();
    }
  }
}

uint64_t sub_227B566D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v12 = OUTLINED_FUNCTION_70_1();
  v13(v12);
  OUTLINED_FUNCTION_42_1();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_227B56788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v12 = OUTLINED_FUNCTION_70_1();
  v13(v12);
  OUTLINED_FUNCTION_42_1();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_227B56840()
{
  OUTLINED_FUNCTION_6();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_5(v5);
  v0[6] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CC8, &qword_227D5B810);
  OUTLINED_FUNCTION_5(v6);
  v0[7] = OUTLINED_FUNCTION_30();
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_35(v7);

  return sub_227D22708();
}

uint64_t sub_227B56928()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_14();
  v7 = v6;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v10 = v9;
  v7[9] = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_75_1();
    OUTLINED_FUNCTION_164();

    return v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    v7[10] = v5;
    v7[11] = v3;
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_164();

    return MEMORY[0x2822009F8](v20, v21, v22);
  }
}

uint64_t sub_227B56A68()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[11];
  v0[12] = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_62_0();
  v3 = OUTLINED_FUNCTION_9_2();
  v4(v3);
  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v2);
  v0[13] = *(v1 + 24);
  v0[14] = (v1 + 24) & 0xFFFFFFFFFFFFLL | 0x7A46000000000000;
  sub_227D4D278();
  OUTLINED_FUNCTION_185();
  v8 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227B56B58()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  *(v0 + 120) = (*(v0 + 104))(v2, *(v0 + 32), *(v0 + 40), *(v0 + 96), *(v0 + 88));
  *(v0 + 128) = v1;
  sub_227B1DE58(v2, &qword_27D7E6CC8, &qword_227D5B810);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227B56C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_111();
  v13 = v12[15];
  v14 = v12[16];
  v15 = v12[3];
  v16 = swift_task_alloc();
  *(v16 + 16) = v15;
  sub_227B1DEB0(sub_227B63F40, v16, v13);

  if (v14)
  {

    OUTLINED_FUNCTION_19_0();
  }

  else
  {
    sub_227D4A958();
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    v21 = OUTLINED_FUNCTION_141();
    __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_220(v23, v24, v25, v26);
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_220(v27, v28, v29, v30);
    OUTLINED_FUNCTION_57_0();
    sub_227D4A948();

    OUTLINED_FUNCTION_15_0();
  }

  OUTLINED_FUNCTION_33();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
}

uint64_t sub_227B56D54()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227B56DB8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  sub_227D49848();
  (*(v8 + 16))(v11, a2, v6);
  result = sub_227D4A6C8();
  if (v3)
  {
    *a3 = v3;
  }

  return result;
}

uint64_t sub_227B56ECC()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CC8, &qword_227D5B810);
  OUTLINED_FUNCTION_5(v3);
  v1[4] = OUTLINED_FUNCTION_30();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B38, &unk_227D4EF40);
  v1[5] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_30();
  v6 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227B56FA8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v2 = *(v0[2] + 16);
  if (v2)
  {
    v3 = v0[6] + 16;
    OUTLINED_FUNCTION_136_0();
    v6 = v4 + v5;
    v29 = *(v3 + 56);
    v30 = v7;
    v8 = MEMORY[0x277D84F90];
    do
    {
      v9 = OUTLINED_FUNCTION_116_0();
      v30(v9);
      v10 = sub_227D4A6D8();
      v1 = v11;
      (*(v3 - 8))(v0[7], v0[5]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = OUTLINED_FUNCTION_21();
        v8 = sub_227B25F88(v15, v16, v17, v8);
      }

      v13 = *(v8 + 2);
      v12 = *(v8 + 3);
      if (v13 >= v12 >> 1)
      {
        OUTLINED_FUNCTION_12(v12);
        OUTLINED_FUNCTION_117();
        v8 = sub_227B25F88(v18, v19, v20, v21);
      }

      *(v8 + 2) = v13 + 1;
      v14 = &v8[16 * v13];
      *(v14 + 4) = v10;
      *(v14 + 5) = v1;
      v6 += v29;
      --v2;
    }

    while (v2);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CD0, &qword_227D4F8E0);
  v22 = sub_227D49658();
  OUTLINED_FUNCTION_9();
  v24 = v23;
  OUTLINED_FUNCTION_170_0();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_227D4E520;
  *(v25 + v1) = v8;
  v0[8] = v25;
  (*(v24 + 104))(v25 + v1, *MEMORY[0x277D0CAA0], v22);
  v26 = swift_task_alloc();
  v0[9] = v26;
  *v26 = v0;
  v26[1] = sub_227B571FC;
  OUTLINED_FUNCTION_16_0();

  return sub_227D22708();
}

uint64_t sub_227B571FC()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_14();
  v7 = v6;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v10 = v9;
  v7[10] = v0;

  if (!v0)
  {
    v7[11] = v5;
    v7[12] = v3;
  }

  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227B57308()
{
  OUTLINED_FUNCTION_20();
  v1 = v0[12];
  v0[13] = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v0[14] = *(v1 + 24);
  v0[15] = (v1 + 24) & 0xFFFFFFFFFFFFLL | 0x7A46000000000000;
  sub_227D4D278();
  OUTLINED_FUNCTION_185();
  v6 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227B573C0()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[10];
  v2 = v0[4];
  v3 = OUTLINED_FUNCTION_173_0();
  v0[16] = v4(v3);
  v0[17] = v1;
  sub_227B1DE58(v2, &qword_27D7E6CC8, &qword_227D5B810);

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227B57488()
{
  OUTLINED_FUNCTION_20();
  v1 = sub_227B575F0(*(v0 + 128));

  OUTLINED_FUNCTION_115();

  return v2(v1);
}

uint64_t sub_227B57518()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227B57588()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227B575F0(uint64_t a1)
{
  v2 = sub_227D498E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B60, &unk_227D4EF50);
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v20 = MEMORY[0x277D84F90];
    sub_227B63B5C(0, v9, 0);
    v10 = v20;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v17 = *(v11 + 56);
    v18 = v12;
    do
    {
      v18(v5, v13, v2);
      swift_dynamicCast();
      v20 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_227B63B5C(v14 > 1, v15 + 1, 1);
        v10 = v20;
      }

      *(v10 + 16) = v15 + 1;
      sub_227B3DFC8(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, &qword_27D7E6B60, &unk_227D4EF50);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_227B57834()
{
  OUTLINED_FUNCTION_6();
  v0[2] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v0[3] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v0[4] = v3;
  v0[5] = OUTLINED_FUNCTION_30();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v0[6] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v0[7] = v5;
  v0[8] = OUTLINED_FUNCTION_30();
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_35(v6);

  return sub_227D22708();
}

uint64_t sub_227B57970()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  v3[10] = v6;
  v3[11] = v7;
  v3[12] = v0;

  if (v0)
  {

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {
    OUTLINED_FUNCTION_30_2();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }
}

uint64_t sub_227B57AB8()
{
  OUTLINED_FUNCTION_111();
  v1 = v0[12];
  sub_227D497C8();
  sub_227D4A718();
  v2 = OUTLINED_FUNCTION_132_0();
  v3(v2);
  if (v1)
  {
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_19_0();

    return v6();
  }

  else
  {
    v4 = sub_227D4A6A8();
    v0[13] = v5;
    v8 = v4;
    v9 = v5;
    ObjectType = swift_getObjectType();
    v11 = OUTLINED_FUNCTION_91_0();
    v12(v11);
    OUTLINED_FUNCTION_36_0();
    v16 = (v13 + *v13);
    v14 = swift_task_alloc();
    v0[14] = v14;
    *v14 = v0;
    v14[1] = sub_227B57CD4;
    v15 = OUTLINED_FUNCTION_53(v0[2]);

    return v16(v15, v8, v9, ObjectType);
  }
}

uint64_t sub_227B57CD4()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_5_4();
  *v3 = v1;
  *v3 = *v2;
  *(v1 + 120) = v0;

  OUTLINED_FUNCTION_81_1();
  if (v0)
  {

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_164();

    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  else
  {
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_164();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }
}

uint64_t sub_227B57E64()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227B57ECC()
{
  OUTLINED_FUNCTION_6();
  v0[2] = v1;
  v0[3] = v2;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_35(v3);

  return sub_227D22708();
}

uint64_t sub_227B57F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_177_1();
  OUTLINED_FUNCTION_119();
  v13 = v12;
  OUTLINED_FUNCTION_14();
  v15 = v14;
  OUTLINED_FUNCTION_0();
  *v16 = v15;
  v17 = *v11;
  OUTLINED_FUNCTION_5_4();
  *v18 = v17;
  *(v15 + 40) = v13;

  if (v10)
  {
    OUTLINED_FUNCTION_75_1();
    OUTLINED_FUNCTION_128();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
  }

  else
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_169_0();
    OUTLINED_FUNCTION_28_2();
    v38 = v28 + *v28;
    v29 = swift_task_alloc();
    *(v15 + 48) = v29;
    *v29 = v17;
    v29[1] = sub_227B5812C;
    OUTLINED_FUNCTION_111_1();
    OUTLINED_FUNCTION_128();

    return v34(v30, v31, v32, v33, v34, v35, v36, v37, a9, v38);
  }
}

uint64_t sub_227B5812C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B58224()
{
  OUTLINED_FUNCTION_6();
  v0[2] = v1;
  v0[3] = v2;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_35(v3);

  return sub_227D22708();
}

uint64_t sub_227B582B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_177_1();
  OUTLINED_FUNCTION_119();
  v13 = v12;
  OUTLINED_FUNCTION_14();
  v15 = v14;
  OUTLINED_FUNCTION_0();
  *v16 = v15;
  v17 = *v11;
  OUTLINED_FUNCTION_5_4();
  *v18 = v17;
  *(v15 + 40) = v13;

  if (v10)
  {
    OUTLINED_FUNCTION_75_1();
    OUTLINED_FUNCTION_128();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
  }

  else
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_169_0();
    OUTLINED_FUNCTION_28_2();
    v38 = v28 + *v28;
    v29 = swift_task_alloc();
    *(v15 + 48) = v29;
    *v29 = v17;
    v29[1] = sub_227B58484;
    OUTLINED_FUNCTION_111_1();
    OUTLINED_FUNCTION_128();

    return v34(v30, v31, v32, v33, v34, v35, v36, v37, a9, v38);
  }
}

uint64_t sub_227B58484()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B5857C()
{
  OUTLINED_FUNCTION_6();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_15_0();

  return v0();
}

uint64_t sub_227B585D4()
{
  OUTLINED_FUNCTION_6();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227B58630()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_155_1(v1, v2);
  v3 = sub_227D4CAB8();
  v0[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[6] = v4;
  v0[7] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AD8, &unk_227D4ED80);
  OUTLINED_FUNCTION_5(v5);
  v0[8] = OUTLINED_FUNCTION_30();
  v6 = sub_227D49AB8();
  v0[9] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v0[10] = v7;
  v0[11] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v0[12] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v0[13] = v9;
  v0[14] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v0[15] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v0[16] = v11;
  v0[17] = OUTLINED_FUNCTION_121();
  v0[18] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CD8, &qword_227D5C1C0);
  OUTLINED_FUNCTION_5(v12);
  v0[19] = OUTLINED_FUNCTION_30();
  v13 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_227B58830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_111();
  sub_227D498B8();
  sub_227D49188();
  if (OUTLINED_FUNCTION_180_0() == 1)
  {
    sub_227B1DE58(v12[19], &qword_27D7E6CD8, &qword_227D5C1C0);
    v13 = sub_227D49E08();
    sub_227B12938(&qword_27D7E67C8, MEMORY[0x277D0CE80], MEMORY[0x277D0CE88]);
    swift_allocError();
    *v14 = 0xD00000000000002CLL;
    v14[1] = 0x8000000227D754C0;
    (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277D0CE68], v13);
    swift_willThrow();
    OUTLINED_FUNCTION_212();

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_33();

    return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
  }

  else
  {
    v15 = v12[16];
    v12[20] = sub_227D490C8();
    v12[21] = v16;
    v17 = OUTLINED_FUNCTION_57_0();
    v18(v17);
    sub_227D497C8();
    sub_227D4A718();
    v12[22] = *(v15 + 8);
    v12[23] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v19 = OUTLINED_FUNCTION_141();
    v20(v19);
    v12[24] = sub_227D4A6A8();
    v12[25] = v21;
    v22 = OUTLINED_FUNCTION_174();
    v23(v22);
    sub_227D497C8();
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v12[26] = v33;
    *v33 = v34;
    v33[1] = sub_227B58B08;
    OUTLINED_FUNCTION_33();

    return sub_227B59314();
  }
}

uint64_t sub_227B58B08()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B58C24()
{
  v1 = *(v0 + 72);
  v2 = OUTLINED_FUNCTION_115_1();
  if (__swift_getEnumTagSinglePayload(v2, v3, v1) == 1)
  {
    (*(v0 + 176))(*(v0 + 136), *(v0 + 120));

    sub_227B1DE58(*(v0 + 64), &qword_27D7E6AD8, &unk_227D4ED80);
    OUTLINED_FUNCTION_103_2();

    OUTLINED_FUNCTION_15_0();

    return v4();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_57_0();
    v7(v6);
    sub_227D49848();
    *(v0 + 216) = v8;
    sub_227D49A58();
    *(v0 + 224) = v9;
    sub_227D4AA58();
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D4CE58();
    v10 = sub_227D4CA98();
    v11 = sub_227D4D428();

    if (os_log_type_enabled(v10, v11))
    {
      v26 = *(v0 + 192);
      v27 = *(v0 + 200);
      v13 = *(v0 + 160);
      v12 = *(v0 + 168);
      v14 = *(v0 + 48);
      v28 = *(v0 + 40);
      v29 = *(v0 + 56);
      v15 = *(v0 + 24);
      v16 = OUTLINED_FUNCTION_14_5();
      v31 = swift_slowAlloc();
      *v16 = 136315650;
      *(v16 + 4) = sub_227B1B1A4(v13, v12, &v31);
      *(v16 + 12) = 2080;
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
      v18 = MEMORY[0x22AAA5F20](v15, v17);
      v20 = sub_227B1B1A4(v18, v19, &v31);

      *(v16 + 14) = v20;
      *(v16 + 22) = 2080;
      *(v16 + 24) = sub_227B1B1A4(v26, v27, &v31);
      _os_log_impl(&dword_227B0D000, v10, v11, "Trying to share activity with URL: %s, to players: %s, for bundle ID: %s", v16, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_41_1();
      OUTLINED_FUNCTION_79_2();

      (*(v14 + 8))(v29, v28);
    }

    else
    {

      v21 = OUTLINED_FUNCTION_132_0();
      v23(v21, v22);
    }

    v24 = swift_task_alloc();
    *(v0 + 232) = v24;
    *v24 = v0;
    v24[1] = sub_227B58F7C;
    OUTLINED_FUNCTION_90();

    return sub_227C92D60();
  }
}

uint64_t sub_227B58F7C()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 240) = v0;

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B590EC()
{
  OUTLINED_FUNCTION_51_0();
  v1 = OUTLINED_FUNCTION_141_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_57_0();
  v0(v3);
  OUTLINED_FUNCTION_103_2();

  OUTLINED_FUNCTION_15_0();

  return v4();
}

uint64_t sub_227B59198()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 72);
  (*(v0 + 176))(*(v0 + 136), *(v0 + 120));
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  sub_227B1DE58(*(v0 + 64), &qword_27D7E6AD8, &unk_227D4ED80);
  OUTLINED_FUNCTION_103_2();

  OUTLINED_FUNCTION_15_0();

  return v5();
}

uint64_t sub_227B59268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  v11 = OUTLINED_FUNCTION_141_0();
  v12(v11);
  v13 = OUTLINED_FUNCTION_57_0();
  v10(v13);
  OUTLINED_FUNCTION_212();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_227B59314()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_155_1(v1, v2);
  v3 = sub_227D4CAB8();
  v0[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[6] = v4;
  v0[7] = OUTLINED_FUNCTION_121();
  v0[8] = swift_task_alloc();
  v5 = sub_227D49AB8();
  v0[9] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[10] = v6;
  v0[11] = OUTLINED_FUNCTION_121();
  v0[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AD8, &unk_227D4ED80);
  OUTLINED_FUNCTION_10_0(v7);
  v0[13] = v8;
  v0[14] = OUTLINED_FUNCTION_121();
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B59484()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CE0, &qword_227D4F910);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_170_0();
  v6 = swift_allocObject();
  v0[17] = v6;
  *(v6 + 16) = xmmword_227D4E520;
  (*(v5 + 16))(v6 + v1, v2, v3);
  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_227B595C4;
  OUTLINED_FUNCTION_164();

  return sub_227B55528();
}

uint64_t sub_227B595C4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 152) = v5;
  *(v3 + 160) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227B596CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v15 = *(v14[19] + 16);
  if (v15)
  {
    OUTLINED_FUNCTION_136_0();
    v18 = v16 + v17;
    a10 = v20;
    a11 = *(v19 + 72);
    v21 = (v20 + 32);
    v22 = MEMORY[0x277D84F90];
    do
    {
      v23 = v14[14];
      v24 = v14[9];
      v25 = OUTLINED_FUNCTION_174();
      sub_227B3E0F8(v25, v26, &qword_27D7E6AD8, &unk_227D4ED80);
      v27 = OUTLINED_FUNCTION_141();
      sub_227B3DFC8(v27, v28, &qword_27D7E6AD8, &unk_227D4ED80);
      if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
      {
        OUTLINED_FUNCTION_149();
        sub_227B1DE58(v29, v30, v31);
      }

      else
      {
        v32 = *v21;
        (*v21)(v14[11], v14[14], v14[9]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = OUTLINED_FUNCTION_21();
          v22 = sub_227B63540(v37, v38, v39, v22);
        }

        v34 = *(v22 + 16);
        v33 = *(v22 + 24);
        if (v34 >= v33 >> 1)
        {
          OUTLINED_FUNCTION_12(v33);
          OUTLINED_FUNCTION_117();
          v22 = sub_227B63540(v40, v41, v42, v43);
        }

        *(v22 + 16) = v34 + 1;
        OUTLINED_FUNCTION_19();
        v32(v22 + v35 + *(v36 + 72) * v34);
      }

      v18 += a11;
      --v15;
    }

    while (v15);
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  v44 = v14[15];
  v45 = v14[9];
  sub_227B60890(v22, v44);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v44, 1, v45);
  v47 = v14[15];
  if (EnumTagSinglePayload == 1)
  {

    sub_227B1DE58(v47, &qword_27D7E6AD8, &unk_227D4ED80);
    sub_227D4AA58();
    v48 = sub_227D4CA98();
    v49 = sub_227D4D438();
    if (OUTLINED_FUNCTION_126(v49))
    {
      v50 = OUTLINED_FUNCTION_178();
      OUTLINED_FUNCTION_204(v50);
      OUTLINED_FUNCTION_95(&dword_227B0D000, v51, v52, "Failed to retrieve the GameActivityDefinition for the provided activity definition.");
      OUTLINED_FUNCTION_5_2();
    }

    v53 = OUTLINED_FUNCTION_9_2();
    v54(v53);
    v55 = 1;
  }

  else
  {
    v56 = *(v14[10] + 32);
    v56(v14[12], v14[15], v14[9]);
    if (*(v22 + 16) < 2uLL)
    {
    }

    else
    {
      sub_227D4AA58();
      sub_227D4CE58();
      v57 = sub_227D4CA98();
      v58 = sub_227D4D428();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = OUTLINED_FUNCTION_129();
        *v59 = 134217984;
        v60 = *(v22 + 16);

        *(v59 + 4) = v60;

        _os_log_impl(&dword_227B0D000, v57, v58, "Using the first out of %ld matching GameActivityDefinition instances.", v59, 0xCu);
        OUTLINED_FUNCTION_5_2();
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      (*(v14[6] + 8))(v14[8], v14[5]);
    }

    v56(v14[2], v14[12], v14[9]);
    v55 = 0;
  }

  __swift_storeEnumTagSinglePayload(v14[2], v55, 1, v14[9]);

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_16_0();

  return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_227B59AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_227B59B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_6();
  v29 = swift_task_alloc();
  *(v28 + 16) = v29;
  *v29 = v28;
  OUTLINED_FUNCTION_35(v29);

  return sub_227D22470();
}

uint64_t sub_227B59BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_177_1();
  OUTLINED_FUNCTION_119();
  v13 = v12;
  OUTLINED_FUNCTION_14();
  v15 = v14;
  OUTLINED_FUNCTION_0();
  *v16 = v15;
  v17 = *v11;
  OUTLINED_FUNCTION_5_4();
  *v18 = v17;
  *(v15 + 24) = v13;

  if (v10)
  {
    OUTLINED_FUNCTION_75_1();
    OUTLINED_FUNCTION_128();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
  }

  else
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_169_0();
    OUTLINED_FUNCTION_28_2();
    v38 = v28 + *v28;
    v29 = swift_task_alloc();
    *(v15 + 32) = v29;
    *v29 = v17;
    OUTLINED_FUNCTION_35(v29);
    OUTLINED_FUNCTION_128();

    return v32(v30, v31, v32, v33, v34, v35, v36, v37, a9, v38);
  }
}

uint64_t sub_227B59DA4()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v5 + 40) = v0;

  if (!v0)
  {
    *(v5 + 48) = v3;
  }

  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B59EAC()
{
  OUTLINED_FUNCTION_6();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_115();
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_227B59F0C()
{
  OUTLINED_FUNCTION_6();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227B59F68()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_35(v1);

  return sub_227D22708();
}

uint64_t sub_227B59FF0()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_32_0();
  v5 = v4;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  v5[3] = v3;
  v5[4] = v1;

  if (v1)
  {
    OUTLINED_FUNCTION_164();

    return v10(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    v5[5] = v0;
    v5[6] = swift_getObjectType();
    v5[7] = *(v0 + 32);
    v5[8] = (v0 + 32) & 0xFFFFFFFFFFFFLL | 0x123B000000000000;
    sub_227D4D278();
    OUTLINED_FUNCTION_185();
    OUTLINED_FUNCTION_164();

    return MEMORY[0x2822009F8](v18, v19, v20);
  }
}

uint64_t sub_227B5A150()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 32);
  *(v0 + 72) = (*(v0 + 56))(*(v0 + 48), *(v0 + 40));
  *(v0 + 80) = v1;
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_227B5A1D8()
{
  OUTLINED_FUNCTION_6();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_115();
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t sub_227B5A238()
{
  OUTLINED_FUNCTION_6();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227B5A294()
{
  OUTLINED_FUNCTION_6();
  v1[7] = v2;
  v1[8] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CE8, &qword_227D4F930);
  OUTLINED_FUNCTION_5(v3);
  v1[9] = OUTLINED_FUNCTION_30();
  v4 = sub_227D49748();
  v1[10] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[11] = v5;
  v1[12] = OUTLINED_FUNCTION_30();
  v6 = sub_227D49188();
  v1[13] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[14] = v7;
  v1[15] = OUTLINED_FUNCTION_121();
  v1[16] = swift_task_alloc();
  v8 = type metadata accessor for GameCenterServerNotification.GameActivityPartyURLReceivedOrOpened(0);
  v1[17] = v8;
  OUTLINED_FUNCTION_5(v8);
  v1[18] = OUTLINED_FUNCTION_121();
  v1[19] = swift_task_alloc();
  v9 = sub_227D4CAB8();
  v1[20] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[21] = v10;
  v1[22] = OUTLINED_FUNCTION_121();
  v1[23] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227B5A444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  sub_227D4AA58();
  v15 = OUTLINED_FUNCTION_150();
  sub_227B63F60(v15, v16);
  v17 = sub_227D4CA98();
  v18 = sub_227D4D428();
  v19 = os_log_type_enabled(v17, v18);
  v20 = v14[23];
  v21 = v14[20];
  v22 = v14[21];
  v23 = v14[19];
  if (v19)
  {
    OUTLINED_FUNCTION_129();
    a11 = OUTLINED_FUNCTION_110_1();
    *v20 = 136315138;
    v24 = OUTLINED_FUNCTION_173();
    sub_227B63F60(v24, v25);
    OUTLINED_FUNCTION_93_0();
    sub_227D4CFF8();
    sub_227B63FC4(v23);
    v26 = OUTLINED_FUNCTION_93_0();
    v29 = sub_227B1B1A4(v26, v27, v28);

    *(v20 + 4) = v29;
    _os_log_impl(&dword_227B0D000, v17, v18, "Received a notification that a party URL was opened: %s", v20, 0xCu);
    OUTLINED_FUNCTION_47_1();
    OUTLINED_FUNCTION_56_0();
  }

  else
  {

    sub_227B63FC4(v23);
  }

  v30 = *(v22 + 8);
  v30(v20, v21);
  v14[24] = v30;
  v31 = v14[16];
  v32 = v14[13];
  v33 = v14[14];
  v34 = v14[7];
  v35 = v14[8];
  v36 = *(v14[17] + 20);
  v37 = *(v33 + 16);
  v14[25] = v37;
  v14[26] = (v33 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v37(v31, &v34[v36], v32);
  v14[27] = *v34;
  v14[28] = *(v34 + 1);
  OUTLINED_FUNCTION_13_0((v35 + 104));
  OUTLINED_FUNCTION_28_2();
  v50 = v38 + *v38;
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v14[29] = v39;
  *v39 = v40;
  v39[1] = sub_227B5A69C;
  OUTLINED_FUNCTION_85_1();
  OUTLINED_FUNCTION_16_0();

  return v44(v41, v42, v43, v44, v45, v46, v47, v48, a9, v50, a11, a12, a13, a14);
}

uint64_t sub_227B5A69C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 240) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B5A794()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 136);
  v2 = *(v0 + 56);
  sub_227D49778();
  v3 = *(v2 + *(v1 + 24));
  *(v0 + 288) = v3;
  v4 = *(v0 + 72);
  if (v3 == 1)
  {
    v5 = *MEMORY[0x277D0CD08];
    v6 = sub_227D49B48();
    OUTLINED_FUNCTION_62_0();
    (*(v7 + 104))(v4, v5, v6);
    OUTLINED_FUNCTION_99();
    v11 = v6;
  }

  else
  {
    sub_227D49B48();
    OUTLINED_FUNCTION_71_0();
  }

  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  sub_227D490C8();
  *(v0 + 248) = v12;
  v13 = swift_task_alloc();
  *(v0 + 256) = v13;
  *v13 = v0;
  v13[1] = sub_227B5A8E4;
  OUTLINED_FUNCTION_53(*(v0 + 96));

  return sub_227B5B2FC();
}

uint64_t sub_227B5A8E4()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 264) = v0;

  sub_227B1DE58(v5, &qword_27D7E6CE8, &qword_227D4F930);

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B5AA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  if (*(v14 + 288) == 1)
  {
    v39 = OUTLINED_FUNCTION_20_1(*(v14 + 64)) + 128;
    OUTLINED_FUNCTION_36_0();
    v40 = v16 + *v16;
    v17 = swift_task_alloc();
    *(v14 + 272) = v17;
    *v17 = v14;
    v17[1] = sub_227B5ABE8;
    OUTLINED_FUNCTION_35_1(*(v14 + 96));
    OUTLINED_FUNCTION_16_0();

    return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, v39, v40, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_48_2();
    v41 = v27;
    (*(v28 + 8))(v15);
    __swift_destroy_boxed_opaque_existential_0((v14 + 16));
    v29 = OUTLINED_FUNCTION_149_0();
    v30(v29);

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_16_0();

    return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, v41, a12, a13, a14);
  }
}

uint64_t sub_227B5ABE8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 280) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B5ACE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_48_2();
  v27 = v14;
  (*(v15 + 8))(v13);
  __swift_destroy_boxed_opaque_existential_0((v12 + 16));
  v16 = OUTLINED_FUNCTION_149_0();
  v17(v16);

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_135_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, v27, a10, a11, a12);
}

uint64_t sub_227B5ADB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v12 = OUTLINED_FUNCTION_119_0();
  v13(v12);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

void sub_227B5AE5C(uint64_t a1)
{
  v2 = *(v1 + 264);
  v3 = *(v1 + 200);
  v5 = *(v1 + 120);
  v4 = *(v1 + 128);
  v6 = *(v1 + 104);
  sub_227D4AA58();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_227D4CA98();
  v9 = sub_227D4D438();

  v10 = os_log_type_enabled(v8, v9);
  v37 = *(v1 + 264);
  v11 = *(v1 + 192);
  v12 = *(v1 + 176);
  v13 = *(v1 + 112);
  if (v10)
  {
    v36 = *(v1 + 160);
    v14 = OUTLINED_FUNCTION_12_1();
    v15 = swift_slowAlloc();
    v38 = OUTLINED_FUNCTION_14_5();
    *v14 = 136315394;
    sub_227B12938(&qword_27D7E68C0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    sub_227D4DA38();
    v16 = v13 + 8;
    v17 = OUTLINED_FUNCTION_57_0();
    v18(v17);
    v19 = OUTLINED_FUNCTION_179();
    v22 = sub_227B1B1A4(v19, v20, v21);

    *(v14 + 4) = v22;
    *(v14 + 12) = 2112;
    v23 = v37;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v24;
    *v15 = v24;
    _os_log_impl(&dword_227B0D000, v8, v9, "Failed to store an activity from url: %s, due to: %@. Proceeding.", v14, 0x16u);
    sub_227B1DE58(v15, &qword_27D7E68C8, &qword_227D4F740);
    OUTLINED_FUNCTION_79_2();
    __swift_destroy_boxed_opaque_existential_0(v38);
    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_48_1();

    v11(v12, v36);
  }

  else
  {

    v16 = v13 + 8;
    v25 = OUTLINED_FUNCTION_57_0();
    v26(v25);
    v27 = OUTLINED_FUNCTION_149_0();
    (v11)(v27);
  }

  if (*(v1 + 288) == 1)
  {
    OUTLINED_FUNCTION_20_1(*(v1 + 64));
    OUTLINED_FUNCTION_36_0();
    v28 = swift_task_alloc();
    *(v1 + 272) = v28;
    *v28 = v1;
    v28[1] = sub_227B5ABE8;
    OUTLINED_FUNCTION_35_1(*(v1 + 96));
    OUTLINED_FUNCTION_90();

    __asm { BRAA            X3, X16 }
  }

  OUTLINED_FUNCTION_48_2();
  (*(v31 + 8))(v16);
  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  v32 = OUTLINED_FUNCTION_149_0();
  v33(v32);

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_90();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_227B5B230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  (*(v12[11] + 8))(v12[12], v12[10]);
  __swift_destroy_boxed_opaque_existential_0(v12 + 2);
  v13 = OUTLINED_FUNCTION_119_0();
  v14(v13);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_227B5B2FC()
{
  OUTLINED_FUNCTION_6();
  v1[13] = v2;
  v1[14] = v0;
  v1[11] = v3;
  v1[12] = v4;
  v1[10] = v5;
  v6 = sub_227D4A5B8();
  v1[15] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[16] = v7;
  v1[17] = OUTLINED_FUNCTION_121();
  v1[18] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_5(v8);
  v1[19] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B38, &unk_227D4EF40);
  v1[20] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[21] = v10;
  v1[22] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CE8, &qword_227D4F930);
  OUTLINED_FUNCTION_5(v11);
  v1[23] = OUTLINED_FUNCTION_30();
  v12 = sub_227D49B48();
  v1[24] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[25] = v13;
  v1[26] = OUTLINED_FUNCTION_121();
  v1[27] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AD8, &unk_227D4ED80);
  OUTLINED_FUNCTION_5(v14);
  v1[28] = OUTLINED_FUNCTION_30();
  v15 = sub_227D49AB8();
  v1[29] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v1[30] = v16;
  v1[31] = OUTLINED_FUNCTION_30();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v1[32] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v1[33] = v18;
  v1[34] = OUTLINED_FUNCTION_30();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B60, &unk_227D4EF50);
  OUTLINED_FUNCTION_5(v19);
  v1[35] = OUTLINED_FUNCTION_121();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v20 = sub_227D498E8();
  v1[38] = v20;
  OUTLINED_FUNCTION_10_0(v20);
  v1[39] = v21;
  v1[40] = OUTLINED_FUNCTION_121();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v22 = sub_227D4CAB8();
  v1[44] = v22;
  OUTLINED_FUNCTION_10_0(v22);
  v1[45] = v23;
  v1[46] = OUTLINED_FUNCTION_121();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_227B5B6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_134();
  sub_227D4AA58();
  sub_227D4CE58();
  v28 = sub_227D4CA98();
  sub_227D4D428();
  OUTLINED_FUNCTION_151_0();
  v29 = OUTLINED_FUNCTION_107();
  v30 = v26[51];
  v31 = v26[44];
  v32 = v26[45];
  if (v29)
  {
    OUTLINED_FUNCTION_129();
    v33 = OUTLINED_FUNCTION_55_3();
    OUTLINED_FUNCTION_96_1(v33);
    OUTLINED_FUNCTION_129_0(4.8149e-34);
    v34 = OUTLINED_FUNCTION_82();
    *(v27 + 4) = sub_227B1B1A4(v34, v35, v36);
    OUTLINED_FUNCTION_36_2(&dword_227B0D000, v37, v38, "Storing activity instance from originalURL: %s");
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_48_1();
  }

  v39 = *(v32 + 8);
  v39(v30, v31);
  v26[52] = v39;
  sub_227D496D8();
  if (OUTLINED_FUNCTION_180_0() == 1)
  {
    sub_227B1DE58(v26[37], &qword_27D7E6B60, &unk_227D4EF50);
    sub_227D4AA58();
    sub_227D4CE58();
    v40 = sub_227D4CA98();
    sub_227D4D438();
    OUTLINED_FUNCTION_151_0();
    v41 = OUTLINED_FUNCTION_107();
    v42 = v26[46];
    v43 = v26[44];
    if (v41)
    {
      v83 = v26[46];
      v44 = v26[12];
      v45 = v26[13];
      OUTLINED_FUNCTION_129();
      v46 = OUTLINED_FUNCTION_55_3();
      OUTLINED_FUNCTION_96_1(v46);
      OUTLINED_FUNCTION_129_0(4.8149e-34);
      *(v27 + 4) = sub_227B1B1A4(v44, v45, v47);
      OUTLINED_FUNCTION_36_2(&dword_227B0D000, v48, v49, "Activity instance not created from URL: %s");
      OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_48_1();

      v50 = v83;
    }

    else
    {

      v50 = v42;
    }

    v39(v50, v43);
    goto LABEL_15;
  }

  v51 = v26[43];
  v52 = v26[38];
  v53 = v26[39];
  v54 = v26[37];
  v55 = *(v53 + 32);
  v26[53] = v55;
  v26[54] = (v53 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v55(v51, v54, v52);
  v26[8] = sub_227D49708();
  v26[9] = v56;
  v26[55] = v56;
  if (!v56)
  {
    sub_227D4AA58();
    sub_227D4CE58();
    v60 = sub_227D4CA98();
    v61 = sub_227D4D438();

    v62 = OUTLINED_FUNCTION_160_0();
    v63 = v26[44];
    v64 = v26[43];
    v65 = v26[39];
    if (v62)
    {
      v84 = v26[47];
      a21 = v26[44];
      a20 = v26[38];
      v66 = OUTLINED_FUNCTION_129();
      a19 = v64;
      a23 = OUTLINED_FUNCTION_14_5();
      *v66 = 136315138;
      v67 = OUTLINED_FUNCTION_114();
      *(v66 + 4) = sub_227B1B1A4(v67, v68, v69);
      _os_log_impl(&dword_227B0D000, v60, v61, "Failed to parse bundle ID from URL: %s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(a23);
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_5_2();

      v39(v84, v63);
      (*(v65 + 8))(v64, a20);
    }

    else
    {

      v70 = OUTLINED_FUNCTION_93_0();
      (v39)(v70);
      v71 = OUTLINED_FUNCTION_9_2();
      v73(v71, v72);
    }

LABEL_15:
    OUTLINED_FUNCTION_1_7();
    v85 = v74;

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_93_1();

    return v76(v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v85, a23, a24, a25, a26);
  }

  v57 = swift_task_alloc();
  v26[56] = v57;
  *v57 = v26;
  v57[1] = sub_227B5BB50;
  OUTLINED_FUNCTION_53(v26[10]);
  OUTLINED_FUNCTION_93_1();

  return sub_227B5DFF4();
}

uint64_t sub_227B5BB50()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 456) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B5BC50()
{
  OUTLINED_FUNCTION_20();
  v2 = sub_227D49708();
  v3 = *(v0 + 440);
  if (v1)
  {
    v4 = v1;

    v3 = v4;
  }

  else
  {
    v2 = *(v0 + 64);
  }

  *(v0 + 464) = v3;
  *(v0 + 472) = v2;
  sub_227D496D8();
  v5 = OUTLINED_FUNCTION_180_0();
  v6 = *(v0 + 304);
  if (v5 == 1)
  {
    (*(*(v0 + 312) + 16))(*(v0 + 336), *(v0 + 344), *(v0 + 304));
    v7 = OUTLINED_FUNCTION_115_1();
    if (__swift_getEnumTagSinglePayload(v7, v8, v6) != 1)
    {
      sub_227B1DE58(*(v0 + 288), &qword_27D7E6B60, &unk_227D4EF50);
    }
  }

  else
  {
    (*(v0 + 424))(*(v0 + 336), *(v0 + 288), *(v0 + 304));
  }

  sub_227D497C8();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 480) = v9;
  *v9 = v10;
  v9[1] = sub_227B5BDAC;

  return sub_227B59314();
}

uint64_t sub_227B5BDAC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 488) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B5BEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_83_1();
  OUTLINED_FUNCTION_98_1();
  v33 = v28[29];
  v34 = OUTLINED_FUNCTION_115_1();
  if (__swift_getEnumTagSinglePayload(v34, v35, v33) == 1)
  {

    v36 = v28[13];
    sub_227B1DE58(v28[28], &qword_27D7E6AD8, &unk_227D4ED80);
    sub_227D4AA58();
    sub_227D4CE58();
    v37 = sub_227D4CA98();
    v38 = sub_227D4D418();

    os_log_type_enabled(v37, v38);
    v39 = v28[52];
    OUTLINED_FUNCTION_195_0();
    v137 = v40;
    if (v41)
    {
      OUTLINED_FUNCTION_129();
      a24 = OUTLINED_FUNCTION_110_1();
      *v29 = 136315138;
      v42 = OUTLINED_FUNCTION_87_1();
      *(v29 + 4) = sub_227B1B1A4(v42, v43, v44);
      OUTLINED_FUNCTION_215(&dword_227B0D000, v45, v46, "No matching activity definition found for activity parsed from: %s");
      __swift_destroy_boxed_opaque_existential_0(a24);
      OUTLINED_FUNCTION_41_1();
      OUTLINED_FUNCTION_56_0();

      v47 = OUTLINED_FUNCTION_196_0();
      v39(v47);
      (*(v32 + 8))(v30, v137);
      v48 = *(v31 + 8);
      v48(v29, v36);
    }

    else
    {

      v99 = OUTLINED_FUNCTION_196_0();
      v39(v99);
      (*(v32 + 8))(v30, v137);
      v48 = *(v31 + 8);
      v100 = OUTLINED_FUNCTION_201_0();
      (v48)(v100);
    }

    v48(v33, v36);
    OUTLINED_FUNCTION_21_1();
    a11 = v102;
    a12 = v101;
    a13 = v28[35];
    a14 = v28[34];
    a15 = v28[31];
    a16 = v28[28];
    a17 = v28[27];
    a18 = v28[26];
    a19 = v28[23];
    v136 = v28[22];
    v139 = v28[19];
    v141 = v28[18];
    v146 = v28[17];

    OUTLINED_FUNCTION_15_0();
LABEL_30:
    OUTLINED_FUNCTION_52();

    return v126(v125, v126, v127, v128, v129, v130, v131, v132, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v136, v139, v141, v146, a24, a25, a26, a27, a28);
  }

  OUTLINED_FUNCTION_85_1();
  v49();
  v50 = sub_227D49758();
  v51 = sub_227D49998();
  v52 = v50;
  v53 = 0;
  v54 = v51 + 64;
  v144 = v51;
  v55 = -1;
  v56 = -1 << *(v51 + 32);
  if (-v56 < 64)
  {
    v55 = ~(-1 << -v56);
  }

  v57 = v55 & *(v51 + 64);
  v58 = (63 - v56) >> 6;
  while (2)
  {
    while (2)
    {
      v28[62] = v52;
      while (1)
      {
        v59 = v53;
        if (!v57)
        {
          while (1)
          {
            v53 = v59 + 1;
            if (__OFADD__(v59, 1))
            {
              __break(1u);
              goto LABEL_37;
            }

            if (v53 >= v58)
            {
              break;
            }

            v57 = *(v54 + 8 * v53);
            ++v59;
            if (v57)
            {
              goto LABEL_12;
            }
          }

          v87 = v52;
          v89 = v28[41];
          v88 = v28[42];
          v91 = v28[38];
          v90 = v28[39];
          v93 = v28[23];
          v92 = v28[24];

          v94 = *(v90 + 16);
          v28[63] = v94;
          v28[64] = (v90 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v145 = v94;
          (v94)(v89, v88, v91);
          sub_227D4CE58();
          v139 = v87;
          sub_227D49768();
          v95 = OUTLINED_FUNCTION_114();
          sub_227B3E0F8(v95, v96, v97, v98);
          if (__swift_getEnumTagSinglePayload(v93, 1, v92) == 1)
          {
            sub_227B1DE58(v28[23], &qword_27D7E6CE8, &qword_227D4F930);
          }

          else
          {
            v104 = v28[26];
            v103 = v28[27];
            v105 = v28[24];
            v106 = v28[25];
            (*(v106 + 32))(v103, v28[23], v105);
            (*(v106 + 16))(v104, v103, v105);
            sub_227D497F8();
            v107 = OUTLINED_FUNCTION_179();
            v108(v107);
          }

          v142 = v28[61];
          v109 = v28[38];
          v110 = OUTLINED_FUNCTION_200();
          v145(v110);
          OUTLINED_FUNCTION_99();
          __swift_storeEnumTagSinglePayload(v111, v112, v113, v109);
          sub_227D496E8();
          sub_227D49848();
          sub_227D4CE58();
          OUTLINED_FUNCTION_148();
          sub_227D4A698();
          v114 = v142;
          sub_227D4A6C8();
          if (v142)
          {
            v115 = v28[42];
            v136 = v28[43];
            v143 = v28[41];
            v117 = v28[38];
            v116 = v28[39];
            v146 = v114;
            v118 = v28[31];
            v120 = v28[29];
            v119 = v28[30];

            (*(v119 + 8))(v118, v120);
            v121 = OUTLINED_FUNCTION_93_0();
            v122(v121);
            v123 = *(v116 + 8);
            v123(v115, v117);
            v123(v136, v117);
            v123(v143, v117);

            OUTLINED_FUNCTION_142_1();
            OUTLINED_FUNCTION_1_7();
            v141 = v124;

            OUTLINED_FUNCTION_18();
            goto LABEL_30;
          }

          v133 = swift_task_alloc();
          v28[65] = v133;
          *v133 = v28;
          v133[1] = sub_227B5C77C;
          OUTLINED_FUNCTION_52();

          return sub_227D22708();
        }

LABEL_12:
        v60 = __clz(__rbit64(v57));
        v57 &= v57 - 1;
        v61 = (v53 << 10) | (16 * v60);
        v62 = (*(v144 + 48) + v61);
        v64 = *v62;
        v63 = v62[1];
        v65 = (*(v144 + 56) + v61);
        v66 = v65[1];
        v140 = *v65;
        v67 = v52[2];
        sub_227D4CE58();
        sub_227D4CE58();
        if (!v67)
        {
          break;
        }

        v68 = OUTLINED_FUNCTION_114();
        sub_227B2664C(v68, v69);
        if ((v70 & 1) == 0)
        {
          break;
        }
      }

      swift_isUniquelyReferenced_nonNull_native();
      a24 = v52;
      v71 = OUTLINED_FUNCTION_114();
      result = sub_227B2664C(v71, v72);
      v74 = v52[2];
      v138 = v75;
      v76 = (v75 & 1) == 0;
      a19 = v74 + v76;
      if (__OFADD__(v74, v76))
      {
        __break(1u);
        goto LABEL_41;
      }

      v77 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CF8, &qword_227D50800);
      result = sub_227D4D7C8();
      if ((result & 1) == 0)
      {
        if ((v138 & 1) == 0)
        {
          break;
        }

        goto LABEL_22;
      }

      v78 = OUTLINED_FUNCTION_114();
      result = sub_227B2664C(v78, v79);
      if ((v138 & 1) != (v80 & 1))
      {
LABEL_37:
        OUTLINED_FUNCTION_52();

        return sub_227D4DAE8();
      }

      v77 = result;
      if (v138)
      {
LABEL_22:

        v86 = (v52[7] + 16 * v77);
        *v86 = v140;
        v86[1] = v66;

        continue;
      }

      break;
    }

    v52[(v77 >> 6) + 8] |= 1 << v77;
    v81 = (v52[6] + 16 * v77);
    *v81 = v64;
    v81[1] = v63;
    v82 = (v52[7] + 16 * v77);
    *v82 = v140;
    v82[1] = v66;
    v83 = v52[2];
    v84 = __OFADD__(v83, 1);
    v85 = v83 + 1;
    if (!v84)
    {
      v52[2] = v85;
      continue;
    }

    break;
  }

LABEL_41:
  __break(1u);
  return result;
}