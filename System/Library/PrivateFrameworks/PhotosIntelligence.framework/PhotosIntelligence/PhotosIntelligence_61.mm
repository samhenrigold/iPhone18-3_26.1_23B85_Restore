uint64_t sub_1C73ED760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[50] = a5;
  v6[51] = v5;
  v6[48] = a3;
  v6[49] = a4;
  v6[46] = a1;
  v6[47] = a2;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C73ED77C()
{
  OUTLINED_FUNCTION_75_1();
  v17 = v0;
  v1 = *(v0 + 384);
  v2 = *(v1 + *(type metadata accessor for StoryGenerationSession(0) + 24));
  v3 = OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_logger;
  *(v0 + 416) = v2;
  *(v0 + 424) = v3;
  v4 = sub_1C754FEEC();
  sub_1C75511BC();
  v5 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_13_3();
    v7 = swift_slowAlloc();
    v8 = OUTLINED_FUNCTION_20_1();
    v16[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1C6F765A4(0x6F7365527473616CLL, 0xEA00000000007472, v16);
    OUTLINED_FUNCTION_21_2(&dword_1C6F5C000, v9, v10, "Not enough storytelling assets, falling back to %s, curating non-agressively");
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  if (v2)
  {
    OUTLINED_FUNCTION_56_0();
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](0xD000000000000018, 0x80000001C75AF740);
    MEMORY[0x1CCA5CD70](0x6F7365527473616CLL, 0xEA00000000007472);
    MEMORY[0x1CCA5CD70](0xD000000000000021, 0x80000001C75AF760);
    sub_1C7161CDC(v16[0], v16[1]);

    v12 = *(v2 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics);
    OUTLINED_FUNCTION_0_53();
    v11 = swift_beginAccess();
    *(*(v12 + 40) + 18) = 0;
  }

  OUTLINED_FUNCTION_266_3(v11, *(v0 + 376));
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 432) = v13;
  *v13 = v14;
  v13[1] = sub_1C73ED9B0;

  return sub_1C73F2FD0();
}

uint64_t sub_1C73ED9B0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 440) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C73EDAA8()
{
  OUTLINED_FUNCTION_75_1();
  v1 = v0[52];
  if (v1)
  {
    v2 = v0[55];
    v3 = v0[46];
    type metadata accessor for FreeformStoryDiagnosticsGenerator();
    *(swift_initStackObject() + 16) = v1;
    swift_retain_n();
    FreeformStoryDiagnosticsGenerator.save(_:)(v3);
    if (v2)
    {
      v4 = v2;
      v5 = sub_1C754FEEC();
      sub_1C755119C();

      if (OUTLINED_FUNCTION_78_9())
      {
        OUTLINED_FUNCTION_13_3();
        v6 = swift_slowAlloc();
        OUTLINED_FUNCTION_20_23();
        v7 = swift_slowAlloc();
        *v6 = 138412290;
        v8 = v2;
        v9 = _swift_stdlib_bridgeErrorToNSError();
        *(v6 + 4) = v9;
        *v7 = v9;
        OUTLINED_FUNCTION_102_11();
        _os_log_impl(v10, v11, v12, v13, v6, 0xCu);
        sub_1C6FB5FC8(v7, &qword_1EC215190, &qword_1C755C730);
        v14 = OUTLINED_FUNCTION_18_60();
        MEMORY[0x1CCA5F8E0](v14);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }
    }

    else
    {
    }

    swift_setDeallocating();
  }

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_88_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C73EDC64()
{
  OUTLINED_FUNCTION_42();
  v1[103] = v0;
  v1[102] = v2;
  v1[101] = v3;
  v1[100] = v4;
  v1[99] = v5;
  v1[98] = v6;
  v1[97] = v7;
  v8 = type metadata accessor for FreeformStory(0);
  OUTLINED_FUNCTION_76(v8);
  v1[104] = OUTLINED_FUNCTION_77();
  v9 = sub_1C754F2FC();
  v1[105] = v9;
  OUTLINED_FUNCTION_18(v9);
  v1[106] = v10;
  v1[107] = swift_task_alloc();
  v1[108] = swift_task_alloc();
  v1[109] = swift_task_alloc();
  v1[110] = swift_task_alloc();
  v11 = sub_1C754F38C();
  v1[111] = v11;
  OUTLINED_FUNCTION_18(v11);
  v1[112] = v12;
  v1[113] = OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_224_2();
  v13 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C73EDDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v15 = v14[101];
  v16 = OUTLINED_FUNCTION_131_3();
  __swift_project_boxed_opaque_existential_1(v16, v17);
  OUTLINED_FUNCTION_134_10("FreeformStoryGenerator.generateStoryLegacy", 42);
  sub_1C754F2CC();
  v18 = v14[110];
  v19 = v14[106];
  v27 = v14[105];
  v28 = v14[108];
  v20 = v14[99];
  v21 = v14[98];
  OUTLINED_FUNCTION_70(v14[101], *(v15 + 24));
  sub_1C754F15C();
  sub_1C754F2BC();
  sub_1C754F2BC();
  memcpy(v14 + 78, (v21 + 32), 0x41uLL);
  v14[114] = *(v20 + *(type metadata accessor for StoryGenerationSession(0) + 24));
  v22 = *(v19 + 32);
  v14[115] = v22;
  v14[116] = (v19 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v22(v28, v18, v27);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v14[117] = v23;
  *v23 = v24;
  v23[1] = sub_1C73EE034;
  OUTLINED_FUNCTION_17_1();

  return sub_1C73EE834();
}

uint64_t sub_1C73EE034()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 944) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73EE12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_126_0();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = *(v24 + 912);
  if (v27)
  {
    HIBYTE(a12) = 10;

    StoryGenerationDiagnosticContext.generationStage.setter(&a12 + 7);
    if (sub_1C71656D8(v28))
    {
      v29 = (v27 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
      os_unfair_lock_lock((v27 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock));
      sub_1C73EEEF8(&v29[2]);
      os_unfair_lock_unlock(v29);
    }
  }

  v30 = *(v24 + 944);
  sub_1C754F2DC();
  if (v30)
  {
    v31 = *(v24 + 904);
    v32 = *(v24 + 896);
    v53 = *(v24 + 888);
    v54 = v30;
    v33 = *(v24 + 872);
    v34 = *(v24 + 848);
    v35 = *(v24 + 840);
    v52 = *(v24 + 816);
    v36 = *(v24 + 808);
    OUTLINED_FUNCTION_238_3();
    v37 = *(v34 + 8);
    v37(v33, v35);
    OUTLINED_FUNCTION_70(v36, v36[3]);
    OUTLINED_FUNCTION_275_0();
    sub_1C754F1AC();
    (*(v32 + 8))(v31, v53);
    v37(v52, v35);
    OUTLINED_FUNCTION_98_16();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_129();

    return v39(v38, v39, v40, v41, v42, v43, v44, v45, v52, v53, v54, a12, a13, a14, a15, a16);
  }

  else
  {
    v47 = *(v24 + 920);
    sub_1C73EF02C(v24 + 16, *(v24 + 808), *(v24 + 912), (v24 + 689));
    OUTLINED_FUNCTION_148_8();
    v48 = OUTLINED_FUNCTION_0_11();
    v47(v48);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v24 + 952) = v49;
    *v49 = v50;
    v49[1] = sub_1C73EE370;
    OUTLINED_FUNCTION_129();

    return FreeformStoryGenerator.generateStory(from:storyElements:initialStoryType:storySession:storyDiagnosticsGenerator:eventRecorder:progressReporter:)();
  }
}

uint64_t sub_1C73EE370()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 960) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73EE468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v15 = v14[120];
  sub_1C754F2EC();
  if (v15)
  {
    v16 = v14[101];
    OUTLINED_FUNCTION_1_129();
    sub_1C73FED84(v17, v18);
    OUTLINED_FUNCTION_238_3();
    OUTLINED_FUNCTION_70(v16, v16[3]);
    sub_1C754F1AC();
    v19 = OUTLINED_FUNCTION_457();
    v20(v19);
    OUTLINED_FUNCTION_98_16();

    OUTLINED_FUNCTION_6_0();
  }

  else
  {
    a9 = v14[108];
    a10 = v14[107];
    v21 = v14[104];
    v22 = v14[97];
    OUTLINED_FUNCTION_238_3();
    sub_1C73A9410(v21, v22);
    v23 = OUTLINED_FUNCTION_179_4();
    OUTLINED_FUNCTION_70(v23, v24);
    sub_1C754F1AC();
    v25 = OUTLINED_FUNCTION_457();
    v26(v25);

    OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_17_1();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C73EE5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v15 = v14[113];
  v16 = v14[112];
  v17 = v14[109];
  v18 = v14[106];
  v19 = v14[105];
  v31 = v14[102];
  v32 = v14[111];
  v20 = v14[101];
  __swift_destroy_boxed_opaque_existential_1(v14 + 87);
  v21 = *(v18 + 8);
  v21(v17, v19);
  OUTLINED_FUNCTION_70(v20, v20[3]);
  sub_1C754F1AC();
  (*(v16 + 8))(v15, v32);
  v21(v31, v19);
  OUTLINED_FUNCTION_198_3();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, v31, v32, a12, a13, a14);
}

uint64_t sub_1C73EE700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v13 = *(v12 + 808);
  OUTLINED_FUNCTION_238_3();
  OUTLINED_FUNCTION_70(v13, v13[3]);
  sub_1C754F1AC();
  v14 = OUTLINED_FUNCTION_57_0();
  v15(v14);
  v16 = OUTLINED_FUNCTION_117_0();
  v17(v16);
  OUTLINED_FUNCTION_198_3();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1C73EE7F0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  sub_1C75504FC();

  *(a1 + 208) = v4;
  *(a1 + 216) = v3;
  return result;
}

uint64_t sub_1C73EE834()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v1[44] = v4;
  v1[45] = v0;
  v1[42] = v5;
  v1[43] = v6;
  v1[41] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214BF0, &qword_1C7574200);
  OUTLINED_FUNCTION_76(v8);
  v1[46] = OUTLINED_FUNCTION_77();
  v9 = sub_1C754F38C();
  v1[47] = v9;
  OUTLINED_FUNCTION_18(v9);
  v1[48] = v10;
  v1[49] = OUTLINED_FUNCTION_77();
  v11 = sub_1C754F61C();
  v1[50] = v11;
  OUTLINED_FUNCTION_18(v11);
  v1[51] = v12;
  v1[52] = OUTLINED_FUNCTION_77();
  memcpy(v1 + 18, v3, 0x41uLL);
  v13 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C73EE96C()
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  if (qword_1EDD0A988 != -1)
  {
    OUTLINED_FUNCTION_30_0(&qword_1EDD0A988);
  }

  sub_1C754F60C();
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v3 = *(v0 + 400);
  v4 = *(v0 + 368);
  __swift_project_boxed_opaque_existential_1(*(v0 + 344), *(*(v0 + 344) + 24));
  (*(v2 + 16))(v4, v1, v3);
  OUTLINED_FUNCTION_25_8();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v3);
  sub_1C754F16C();
  sub_1C6FB5FC8(v4, &qword_1EC214BF0, &qword_1C7574200);
  type metadata accessor for FreeformStoryCompletionGenerator.Diagnostics();
  *(v0 + 424) = swift_initStackObject();
  sub_1C6FB03C4();
  *(v0 + 432) = v8;
  memcpy((v0 + 216), (v0 + 144), 0x41uLL);
  *(v0 + 312) = type metadata accessor for FreeformStoryCompletionAsync(0);
  *(v0 + 320) = sub_1C73FEE48(&qword_1EDD08AF8, type metadata accessor for FreeformStoryCompletionAsync);
  __swift_allocate_boxed_opaque_existential_0((v0 + 288));
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 440) = v9;
  *v9 = v10;
  v9[1] = sub_1C73EEB98;
  OUTLINED_FUNCTION_44();

  return sub_1C6FAE48C();
}

uint64_t sub_1C73EEB98()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 448) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73EEC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v13 = sub_1C754FEEC();
  sub_1C75511BC();
  v14 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v16);
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v17, v18, v19, v20, v21, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v22 = *(v12 + 328);
  v23 = *(v12 + 336);

  sub_1C6F699F8((v12 + 288), v22);
  if (v23)
  {

    sub_1C6FAFAAC(v24);
  }

  v38 = *(v12 + 368);
  OUTLINED_FUNCTION_70(*(v12 + 344), *(*(v12 + 344) + 24));
  sub_1C754F1AC();
  v25 = OUTLINED_FUNCTION_15_1();
  v26(v25);
  v27 = OUTLINED_FUNCTION_57_0();
  v28(v27);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_44();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, v38, a10, a11, a12);
}

uint64_t sub_1C73EEDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v13 = *(v12 + 336);
  __swift_deallocate_boxed_opaque_existential_1(v12 + 288);
  if (v13)
  {

    sub_1C6FAFAAC(v14);
  }

  v28 = *(v12 + 368);
  OUTLINED_FUNCTION_70(*(v12 + 344), *(*(v12 + 344) + 24));
  sub_1C754F1AC();
  v15 = OUTLINED_FUNCTION_15_1();
  v16(v15);
  v17 = OUTLINED_FUNCTION_57_0();
  v18(v17);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, v28, a10, a11, a12);
}

void sub_1C73EEEF8(uint64_t a1)
{
  swift_isUniquelyReferenced_nonNull_native();
  v2 = *(a1 + 56);
  v3 = sub_1C6F78124(0x6C657479726F7453, 0xEB0000000072656CLL);
  if (__OFADD__(*(v2 + 16), (v4 & 1) == 0))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = v3;
  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A8, &qword_1C755C750);
  if ((sub_1C7551A2C() & 1) == 0)
  {
LABEL_5:
    *(a1 + 56) = v2;
    if ((v6 & 1) == 0)
    {
      sub_1C6FC6D3C(v5, 0x6C657479726F7453, 0xEB0000000072656CLL, 0, v2);
    }

    v9 = *(v2 + 56);
    v10 = *(v9 + 8 * v5);
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (!v11)
    {
      *(v9 + 8 * v5) = v12;
      return;
    }

    goto LABEL_10;
  }

  v7 = sub_1C6F78124(0x6C657479726F7453, 0xEB0000000072656CLL);
  if ((v6 & 1) == (v8 & 1))
  {
    v5 = v7;
    goto LABEL_5;
  }

LABEL_11:
  sub_1C7551E4C();
  __break(1u);
}

void sub_1C73EF02C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7 = *(v4 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration + 73);
  if (v7 <= 0xFD)
  {
    v9 = sub_1C754FEEC();
    sub_1C755119C();
    v10 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v10, v11))
    {
      OUTLINED_FUNCTION_13_3();
      v12 = swift_slowAlloc();
      v13 = OUTLINED_FUNCTION_20_1();
      v25[0] = v13;
      *v12 = 136315138;
      v14 = 0xE600000000000000;
      v15 = 0x79636167656CLL;
      switch(v7 >> 5)
      {
        case 1u:
          if (v7)
          {
            v15 = OUTLINED_FUNCTION_178_3();
            v14 = 0x80000001C759A5F0;
          }

          else
          {
            OUTLINED_FUNCTION_132_9();
            v15 = v17 - 1;
          }

          break;
        case 2u:
          if (v7 == 64)
          {
            v14 = 0x80000001C759C3C0;
            v15 = 0xD000000000000012;
          }

          else
          {
            v14 = 0x80000001C759C3A0;
            v15 = 0xD00000000000001FLL;
          }

          break;
        case 3u:
          if (v7 == 96)
          {
            v14 = 0xEA00000000007472;
            v15 = OUTLINED_FUNCTION_241_2();
          }

          else
          {
            OUTLINED_FUNCTION_132_9();
            v15 = v16 - 8;
          }

          break;
        case 4u:
          break;
        default:
          OUTLINED_FUNCTION_132_9();
          v15 = v18 - 10;
          break;
      }

      v19 = sub_1C6F765A4(v15, v14, v25);

      *(v12 + 4) = v19;
      OUTLINED_FUNCTION_102_11();
      _os_log_impl(v20, v21, v22, v23, v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    if (a3)
    {
      OUTLINED_FUNCTION_56_0();
      sub_1C755180C();
      OUTLINED_FUNCTION_10_2();
      v24 = OUTLINED_FUNCTION_178_3();
      MEMORY[0x1CCA5CD70](v24);
      sub_1C73E69B8(v7);
      MEMORY[0x1CCA5CD70](0x646563726F662820, 0xE900000000000029);
      goto LABEL_19;
    }
  }

  else
  {
    sub_1C73FAC84(a1, *(v4 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext + 16), a2, v25);
    LOBYTE(v7) = v25[0];
    if (a3)
    {
      OUTLINED_FUNCTION_56_0();
      sub_1C755180C();
      OUTLINED_FUNCTION_10_2();
      v8 = OUTLINED_FUNCTION_178_3();
      MEMORY[0x1CCA5CD70](v8);
      sub_1C73E69B8(v7);
LABEL_19:
      sub_1C7161CDC(v25[0], v25[1]);
    }
  }

  *a4 = v7;
}

uint64_t FreeformStoryGenerator.generateStory(from:storyElements:initialStoryType:storySession:storyDiagnosticsGenerator:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_49_0();
  v2 = v0;
  v4 = v3;
  *(v1 + 2296) = v2;
  *(v1 + 2288) = v5;
  *(v1 + 2280) = v6;
  *(v1 + 2272) = v7;
  *(v1 + 2264) = v8;
  *(v1 + 2256) = v9;
  *(v1 + 2304) = *v2;
  v10 = type metadata accessor for FreeformStory(0);
  OUTLINED_FUNCTION_76(v10);
  *(v1 + 2312) = OUTLINED_FUNCTION_77();
  v11 = type metadata accessor for CuratedStory(0);
  *(v1 + 2320) = v11;
  OUTLINED_FUNCTION_76(v11);
  *(v1 + 2328) = OUTLINED_FUNCTION_77();
  v12 = type metadata accessor for StoryMusicCuration(0);
  OUTLINED_FUNCTION_76(v12);
  *(v1 + 2336) = OUTLINED_FUNCTION_77();
  v13 = sub_1C754F2FC();
  *(v1 + 2344) = v13;
  OUTLINED_FUNCTION_18(v13);
  *(v1 + 2352) = v14;
  *(v1 + 2360) = swift_task_alloc();
  *(v1 + 2368) = swift_task_alloc();
  *(v1 + 2376) = swift_task_alloc();
  *(v1 + 2384) = swift_task_alloc();
  *(v1 + 2392) = swift_task_alloc();
  *(v1 + 2400) = swift_task_alloc();
  *(v1 + 2408) = swift_task_alloc();
  *(v1 + 2416) = swift_task_alloc();
  *(v1 + 2424) = swift_task_alloc();
  *(v1 + 2432) = swift_task_alloc();
  *(v1 + 2440) = swift_task_alloc();
  *(v1 + 2448) = swift_task_alloc();
  *(v1 + 2456) = swift_task_alloc();
  v15 = sub_1C754F38C();
  *(v1 + 2464) = v15;
  OUTLINED_FUNCTION_18(v15);
  *(v1 + 2472) = v16;
  *(v1 + 2480) = OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_224_2();
  *(v1 + 2138) = *v4;
  v17 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1C73EF548()
{
  OUTLINED_FUNCTION_31();
  v15 = v0;
  __swift_project_boxed_opaque_existential_1(*(v0 + 2280), *(*(v0 + 2280) + 24));
  OUTLINED_FUNCTION_134_10("FreeformStoryGenerator.generateStoryFromCompletion", 50);
  sub_1C754F2CC();
  v9 = *(v0 + 2138);
  v1 = *(v0 + 2456);
  v2 = *(v0 + 2352);
  v10 = *(v0 + 2408);
  v11 = *(v0 + 2344);
  v12 = *(v0 + 2272);
  v8 = *(v0 + 2264);
  OUTLINED_FUNCTION_58_16(*(v0 + 2280));
  sub_1C754F15C();
  sub_1C754F2BC();
  sub_1C754F2BC();
  sub_1C754F2BC();
  sub_1C754F2BC();
  sub_1C754F2BC();
  sub_1C754F2BC();
  *(v0 + 2137) = v9;
  OUTLINED_FUNCTION_139_1(v14);
  sub_1C6FB5E28(v8, v0 + 2064);
  v3 = *(v2 + 32);
  *(v0 + 2488) = v3;
  *(v0 + 2496) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v3(v10, v1, v11);
  FreeformStoryGenerator.musicCurationTask(from:storyCompletion:storySession:eventRecorder:progressReporter:)();
  sub_1C6FB5FC8(v0 + 2064, &qword_1EC215748, &unk_1C755EED0);
  *(v0 + 2504) = v13;
  v4 = *(v12 + *(type metadata accessor for StoryGenerationSession(0) + 24));
  *(v0 + 2520) = v4;
  if (v4)
  {
    v14[0] = 12;
    StoryGenerationDiagnosticContext.generationStage.setter(v14);
  }

  OUTLINED_FUNCTION_148_8();
  v5 = OUTLINED_FUNCTION_67_18();
  (v3)(v5);
  v6 = swift_task_alloc();
  *(v0 + 2528) = v6;
  *v6 = v0;
  v6[1] = sub_1C73EF9A4;
  OUTLINED_FUNCTION_61_3(*(v0 + 2264));

  return sub_1C704B440();
}

uint64_t sub_1C73EF9A4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 2536) = v4;
  *(v2 + 2544) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C73EFAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v64 = *(v12 + 2536);
  v67 = *(v12 + 2544);
  v13 = *(v12 + 2488);
  v14 = *(v12 + 2392);
  v15 = *(v12 + 2296);
  v16 = *(v12 + 2272);
  *(v12 + 1968) = 5;
  *(v12 + 1976) = 0x3F9EB851EB851EB8;
  *(v12 + 1984) = 0x3F847AE147AE147BLL;
  *(v12 + 1992) = 0x3F9EB851EB851EB8;
  *(v12 + 2000) = xmmword_1C755EB70;
  *(v12 + 2016) = 0x3F847AE147AE147BLL;
  v17 = v15 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext;
  v18 = *v17;
  v19 = *(v17 + 8);
  v20 = *(v17 + 16);
  *(v12 + 2144) = *v17;
  *(v12 + 2152) = v19;
  *(v12 + 2160) = v20;
  type metadata accessor for FreeformStoryKeyAssetElector(0);
  swift_allocObject();
  v21 = v18;

  *(v12 + 2552) = FreeformStoryKeyAssetElector.init(configuration:storyPhotoLibraryContext:)((v12 + 1968), (v12 + 2144));
  OUTLINED_FUNCTION_139_1(v72);
  v22 = OUTLINED_FUNCTION_455();
  v13(v22);
  sub_1C7246CB8(v64, v72, v16, (v12 + 2024), v14, v68);
  if (v67)
  {
    OUTLINED_FUNCTION_192_2();
    v65 = v23;
    OUTLINED_FUNCTION_242_2();
    v24 = *(v12 + 2416);
    v25 = *(v12 + 2352);
    v26 = *(v12 + 2344);
    v62 = *(v12 + 2288);
    __swift_destroy_boxed_opaque_existential_1((v12 + 2024));

    v27 = *(v25 + 8);
    v27(v24, v26);
    v27(v59, v26);
    v27(v60, v26);
    v28 = OUTLINED_FUNCTION_457();
    OUTLINED_FUNCTION_70(v28, v29);
    OUTLINED_FUNCTION_457();
    sub_1C754F1AC();
    v30 = OUTLINED_FUNCTION_144_8();
    v31(v30, v65);
    v27(v62, v26);
LABEL_3:
    OUTLINED_FUNCTION_36_33(*(v12 + 2480));

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_44();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
  }

  v41 = v68[0];
  v42 = v68[1];
  *(v12 + 2560) = v68[0];
  *(v12 + 2568) = v42;
  v43 = v69;
  v44 = v70;
  *(v12 + 2576) = v69;
  *(v12 + 2584) = v44;
  v45 = v71;
  *(v12 + 2139) = v71;
  if (!v41)
  {
    v51 = *(v12 + 2472);
    OUTLINED_FUNCTION_242_2();
    v52 = *(v12 + 2416);
    v53 = *(v12 + 2352);
    v54 = *(v12 + 2344);
    v63 = *(v12 + 2288);
    v66 = v55;
    v56 = *(v12 + 2280);

    sub_1C6FE0D14();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    OUTLINED_FUNCTION_62_1(v57, 2);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1((v12 + 2024));
    v58 = *(v53 + 8);
    v58(v52, v54);
    v58(v59, v54);
    v58(v60, v54);
    OUTLINED_FUNCTION_58_16(v56);
    sub_1C754F1AC();
    (*(v51 + 8))(v61, v66);
    v58(v63, v54);
    goto LABEL_3;
  }

  *(v12 + 2104) = v41;
  *(v12 + 2112) = v42;
  *(v12 + 2120) = v43;
  *(v12 + 2128) = v44;
  *(v12 + 2136) = v45;
  v46 = v41;
  sub_1C75504FC();
  v47 = OUTLINED_FUNCTION_457();
  sub_1C70CE970(v47, v48, v45);
  v49 = swift_task_alloc();
  *(v12 + 2592) = v49;
  *v49 = v12;
  v49[1] = sub_1C73EFF78;
  OUTLINED_FUNCTION_61_3(*(v12 + 2536));
  OUTLINED_FUNCTION_44();

  return static FreeformStoryGenerator.addCurationHints(to:storyType:from:diagnosticContext:)();
}

uint64_t sub_1C73EFF78()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 2600) = v5;
  *(v3 + 2608) = v0;

  if (v0)
  {
    sub_1C6FE0E14(*(v3 + 2560), *(v3 + 2568), *(v3 + 2576), *(v3 + 2584), *(v3 + 2139));
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C73F00A0()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_10_3(*(v0 + 2264));
  OUTLINED_FUNCTION_15_3();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 2616) = v2;
  *v2 = v0;
  v2[1] = sub_1C73F01B0;
  v3 = OUTLINED_FUNCTION_57_0();

  return v5(v3);
}

uint64_t sub_1C73F01B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_75_1();
  v12 = v11;
  v14 = v13;
  OUTLINED_FUNCTION_47();
  v16 = v15;
  OUTLINED_FUNCTION_6_4();
  *v17 = v16;
  v18 = *v10;
  OUTLINED_FUNCTION_14();
  *v19 = v18;
  v16[328] = v20;
  v16[329] = v9;

  if (v9)
  {

    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v21, v22, v23);
  }

  else
  {
    v24 = v16[311];
    v25 = v16[304];
    v26 = v16[298];
    v27 = v16[293];
    memcpy(v16 + 116, v16 + 2, 0x130uLL);
    v24(v26, v25, v27);
    v28 = swift_task_alloc();
    v16[330] = v28;
    *v28 = v18;
    v28[1] = sub_1C73F03A8;
    v29 = OUTLINED_FUNCTION_61_3(v16[325]);

    return sub_1C7047DD0(v29, v30, v31, v32, v14, v12, v33, v34, a9);
  }
}

uint64_t sub_1C73F03A8()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 2648) = v7;
  *(v5 + 2656) = v0;

  if (v0)
  {
  }

  else
  {
    *(v5 + 2140) = v3;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C73F0A20()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 2680) = v5;
  *(v3 + 2688) = v6;
  *(v3 + 2696) = v0;

  if (v0)
  {
    v7 = *(v3 + 2648);

    sub_1C6F9ED74(v7, 0);
    v8 = OUTLINED_FUNCTION_24_1();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  else
  {
    v14 = *(v3 + 2504);

    *(v3 + 2240) = v14;
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v3 + 2704) = v11;
    *v11 = v12;
    v11[1] = sub_1C73F0BC8;

    return sub_1C73E72EC();
  }
}

uint64_t sub_1C73F0BC8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C73F0CAC()
{
  v36 = v0;
  v1 = *(v0 + 2696);
  v2 = *(v0 + 2648);
  v3 = *(v0 + 2139);
  v4 = *(v0 + 2576);
  v34[0] = *(v0 + 2560);
  v34[1] = v4;
  v35 = v3;
  sub_1C73E6CD4(v34, v2);
  *(v0 + 2712) = v5;
  *(v0 + 2720) = v6;
  if (v1)
  {
    v7 = *(v0 + 2648);
    OUTLINED_FUNCTION_151_6();
    v28 = v8;
    v29 = v9;
    v10 = *(v0 + 2472);
    v32 = *(v0 + 2464);
    v26 = *(v0 + 2568);
    v27 = *(v0 + 2416);
    v11 = *(v0 + 2352);
    v24 = *(v0 + 2560);
    v25 = *(v0 + 2344);
    v12 = *(v0 + 2336);
    v30 = *(v0 + 2480);
    v31 = *(v0 + 2288);
    v13 = *(v0 + 2280);
    v14 = *(v0 + 2139);

    sub_1C6F9ED74(v7, 0);
    OUTLINED_FUNCTION_0_172();
    sub_1C73FED84(v12, v15);
    __swift_destroy_boxed_opaque_existential_1((v0 + 2024));
    sub_1C6FE0E14(v24, v26, v28, v29, v14);
    v16 = *(v11 + 8);
    v16(v27, v25);
    OUTLINED_FUNCTION_58_16(v13);
    OUTLINED_FUNCTION_131_3();
    sub_1C754F1AC();
    (*(v10 + 8))(v30, v32);
    v16(v31, v25);
    OUTLINED_FUNCTION_6_101();
    OUTLINED_FUNCTION_12_73(v17);

    OUTLINED_FUNCTION_43();

    return v18();
  }

  else
  {
    v20 = *(v0 + 2264);
    sub_1C6F9ED74(*(v0 + 2648), 0);
    OUTLINED_FUNCTION_10_3(v20);
    OUTLINED_FUNCTION_15_3();
    v33 = (v21 + *v21);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 2728) = v22;
    *v22 = v23;
    v22[1] = sub_1C73F1004;
    OUTLINED_FUNCTION_16_6();

    return v33();
  }
}

uint64_t sub_1C73F1004()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 2736) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73F1110()
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 2720);
  v2 = *(v0 + 2712);
  v3 = *(v0 + 2688);
  v4 = *(v0 + 2680);
  v18 = *(v0 + 2488);
  v5 = *(v0 + 2328);
  *(v0 + 1904) = *(v0 + 1840);
  *(v0 + 1920) = *(v0 + 1856);
  *(v0 + 1936) = *(v0 + 1872);
  *(v0 + 1952) = *(v0 + 1888);
  v6 = *(v0 + 2137);
  OUTLINED_FUNCTION_5_90();
  sub_1C73FE764(v8, v5 + v7, v9);
  *v5 = v6;
  OUTLINED_FUNCTION_139_1((v5 + 8));
  *(v5 + 312) = v1;
  *(v5 + 320) = v4;
  *(v5 + 328) = v3;
  v10 = *(v0 + 1920);
  v11 = *(v0 + 1952);
  v12 = *(v0 + 1904);
  *(v5 + 368) = *(v0 + 1936);
  *(v5 + 384) = v11;
  *(v5 + 336) = v12;
  *(v5 + 352) = v10;
  *(v5 + 400) = v2;
  v13 = OUTLINED_FUNCTION_67_18();
  v18(v13);
  sub_1C6FDE884(v0 + 16, v0 + 1536);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 2744) = v14;
  *v14 = v15;
  v14[1] = sub_1C73F1268;
  OUTLINED_FUNCTION_17_1();

  return sub_1C73EB534();
}

uint64_t sub_1C73F1268()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 2752) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73F1688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  v21 = v20[309];
  v38 = v20[305];
  v39 = v20[310];
  v22 = v20[303];
  v23 = v20[302];
  v24 = v20[294];
  v25 = v20[293];
  OUTLINED_FUNCTION_203_4();
  v26 = v20[285];

  __swift_destroy_boxed_opaque_existential_1(v20 + 253);
  v27 = *(v24 + 8);
  v27(v23, v25);
  v27(v22, v25);
  v28 = OUTLINED_FUNCTION_94_3();
  (v27)(v28);
  v27(v38, v25);
  OUTLINED_FUNCTION_70(v26, v26[3]);
  sub_1C754F1AC();
  (*(v21 + 8))(v39, a17);
  v27(a16, v25);
  OUTLINED_FUNCTION_3_110();

  OUTLINED_FUNCTION_73_11();
  OUTLINED_FUNCTION_20_4();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, v38, v39, a16, a17, a18, a19, a20);
}

uint64_t sub_1C73F1854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_145_6();
  v40 = *(v20 + 2432);
  v41 = *(v20 + 2480);
  v39 = *(v20 + 2424);
  v22 = *(v20 + 2352);
  v23 = *(v20 + 2344);
  OUTLINED_FUNCTION_203_4();
  v24 = *(v20 + 2280);
  v25 = *(v20 + 2139);

  __swift_destroy_boxed_opaque_existential_1((v20 + 2024));
  sub_1C6FE0E14(v21, a10, a11, a12, v25);
  v26 = *(v22 + 8);
  v27 = OUTLINED_FUNCTION_117_0();
  v26(v27);
  (v26)(v39, v23);
  (v26)(v40, v23);
  OUTLINED_FUNCTION_58_16(v24);
  OUTLINED_FUNCTION_57_0();
  sub_1C754F1AC();
  v28 = OUTLINED_FUNCTION_144_8();
  v29(v28, a17);
  (v26)(a16, v23);
  OUTLINED_FUNCTION_3_110();

  OUTLINED_FUNCTION_73_11();
  OUTLINED_FUNCTION_20_4();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, v39, v40, v41, a16, a17, a18, a19, a20);
}

uint64_t sub_1C73F1A20()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 2776) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73F1B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_111_0();
  v19 = *(v18 + 2760);
  OUTLINED_FUNCTION_151_6();
  v41 = v20;
  v42 = v21;
  v47 = *(v18 + 2464);
  v43 = *(v18 + 2552);
  v44 = *(v18 + 2424);
  v22 = *(v18 + 2352);
  v23 = *(v18 + 2344);
  v45 = *(v18 + 2480);
  v46 = *(v18 + 2288);
  v24 = *(v18 + 2280);
  v25 = *(v18 + 2139);

  v26 = OUTLINED_FUNCTION_2_56();
  sub_1C6FE0E14(v26, v27, v41, v42, v25);

  __swift_destroy_boxed_opaque_existential_1((v18 + 2024));
  v28 = *(v22 + 8);
  v28(v44, v23);
  OUTLINED_FUNCTION_58_16(v24);
  OUTLINED_FUNCTION_57_0();
  sub_1C754F1AC();
  v29 = OUTLINED_FUNCTION_144_8();
  v30(v29, v47);
  v28(v46, v23);
  OUTLINED_FUNCTION_6_101();
  OUTLINED_FUNCTION_36_33(v31);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_94_1();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, v41, v42, v43, v44, v45, v46, v47, a16, a17, a18);
}

uint64_t sub_1C73F24AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  v21 = *(v20 + 2760);
  OUTLINED_FUNCTION_151_6();
  v41 = v22;
  v42 = v23;
  v40 = *(v20 + 2568);
  v24 = *(v20 + 2560);
  v25 = *(v20 + 2472);
  v43 = *(v20 + 2424);
  v44 = *(v20 + 2480);
  v26 = *(v20 + 2352);
  v27 = *(v20 + 2344);
  OUTLINED_FUNCTION_203_4();
  v28 = *(v20 + 2280);
  v29 = *(v20 + 2139);

  sub_1C6FE0E14(v24, v40, v41, v42, v29);
  __swift_destroy_boxed_opaque_existential_1((v20 + 2024));
  v30 = *(v26 + 8);
  v30(v43, v27);
  OUTLINED_FUNCTION_70(v28, v28[3]);
  sub_1C754F1AC();
  (*(v25 + 8))(v44, a17);
  v30(a16, v27);
  OUTLINED_FUNCTION_3_110();

  OUTLINED_FUNCTION_73_11();
  OUTLINED_FUNCTION_20_4();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, v40, v41, v42, v43, v44, a16, a17, a18, a19, a20);
}

uint64_t sub_1C73F2678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_151_6();
  v40 = v21;
  v41 = v22;
  v23 = *(v20 + 2472);
  v42 = *(v20 + 2416);
  v43 = *(v20 + 2480);
  v24 = *(v20 + 2352);
  v25 = *(v20 + 2344);
  OUTLINED_FUNCTION_203_4();
  v26 = *(v20 + 2280);
  v27 = *(v20 + 2139);

  v28 = OUTLINED_FUNCTION_117_0();
  sub_1C6FE0E14(v28, v29, v40, v41, v27);
  __swift_destroy_boxed_opaque_existential_1((v20 + 2024));
  v30 = *(v24 + 8);
  v30(v42, v25);
  OUTLINED_FUNCTION_58_16(v26);
  OUTLINED_FUNCTION_75();
  sub_1C754F1AC();
  (*(v23 + 8))(v43, a17);
  v30(a16, v25);
  OUTLINED_FUNCTION_3_110();

  OUTLINED_FUNCTION_73_11();
  OUTLINED_FUNCTION_20_4();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, v40, v41, v42, v43, a16, a17, a18, a19, a20);
}

uint64_t sub_1C73F282C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  v22 = *(v20 + 2712);
  OUTLINED_FUNCTION_145_6();
  v41 = *(v20 + 2416);
  v42 = *(v20 + 2480);
  v23 = *(v20 + 2352);
  v40 = *(v20 + 2344);
  v24 = *(v20 + 2336);
  OUTLINED_FUNCTION_203_4();
  v25 = *(v20 + 2280);
  v26 = *(v20 + 2139);

  sub_1C6FE0E14(v21, a10, a11, a12, v26);
  OUTLINED_FUNCTION_0_172();
  sub_1C73FED84(v24, v27);
  __swift_destroy_boxed_opaque_existential_1((v20 + 2024));
  v28 = *(v23 + 8);
  v28(v41, v40);
  OUTLINED_FUNCTION_58_16(v25);
  OUTLINED_FUNCTION_57_0();
  sub_1C754F1AC();
  v29 = OUTLINED_FUNCTION_144_8();
  v30(v29, a17);
  v28(a16, v40);
  OUTLINED_FUNCTION_3_110();

  OUTLINED_FUNCTION_73_11();
  OUTLINED_FUNCTION_20_4();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, v40, v41, v42, a16, a17, a18, a19, a20);
}

uint64_t sub_1C73F29E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_151_6();
  v43 = v22;
  v44 = v23;
  v24 = *(v20 + 2568);
  v25 = *(v20 + 2560);
  OUTLINED_FUNCTION_192_2();
  v46 = v27;
  v47 = v26;
  v28 = *(v20 + 2352);
  v45 = *(v20 + 2336);
  v29 = *(v20 + 2328);
  v48 = *(v20 + 2288);
  v49 = *(v20 + 2344);
  v30 = *(v20 + 2280);
  v31 = *(v20 + 2139);

  sub_1C6FE0E14(v25, v24, v43, v44, v31);
  OUTLINED_FUNCTION_23_48();
  sub_1C73FED84(v29, v32);
  OUTLINED_FUNCTION_0_172();
  sub_1C73FED84(v45, v33);
  __swift_destroy_boxed_opaque_existential_1((v20 + 2024));
  OUTLINED_FUNCTION_10_3(v30);
  OUTLINED_FUNCTION_0_11();
  sub_1C754F1AC();
  (*(v21 + 8))(v46, v47);
  (*(v28 + 8))(v48, v49);
  OUTLINED_FUNCTION_3_110();

  OUTLINED_FUNCTION_73_11();
  OUTLINED_FUNCTION_20_4();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, v43, v44, v45, v46, v47, v48, v49, a18, a19, a20);
}

void sub_1C73F2B9C(void *a1, uint64_t a2)
{
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  if (!swift_dynamicCast())
  {
    goto LABEL_17;
  }

  switch(v74)
  {
    case 5:
      v46 = sub_1C754FEEC();
      v47 = sub_1C75511BC();
      v48 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v48, v49))
      {
        OUTLINED_FUNCTION_11_3();
        v50 = swift_slowAlloc();
        *v50 = 134218240;
        *(v50 + 4) = v72;
        *(v50 + 12) = 2048;
        *(v50 + 14) = v73;
        _os_log_impl(&dword_1C6F5C000, v46, v47, "Not enough curated assets in story (%ld < %ld), falling back to LastResort", v50, 0x16u);
        v51 = OUTLINED_FUNCTION_18_60();
        MEMORY[0x1CCA5F8E0](v51);
      }

      if (!a2)
      {
        goto LABEL_22;
      }

      sub_1C755180C();
      OUTLINED_FUNCTION_191_3();
      MEMORY[0x1CCA5CD70](v52 + 7, v53 | 0x8000000000000000);
      v54 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v54);

      OUTLINED_FUNCTION_10_2();
      MEMORY[0x1CCA5CD70](0xD00000000000001DLL);
      sub_1C7161CDC(0, 0xE000000000000000);

      v55 = *(a2 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics);
      OUTLINED_FUNCTION_0_53();
      swift_beginAccess();
      v44 = *(v55 + 40);
      v45 = 1;
      break;
    case 11:
      v22 = v72;
      v23 = sub_1C754FEEC();
      v24 = sub_1C755119C();
      v25 = OUTLINED_FUNCTION_35_27();
      sub_1C70551BC(v25, v26, v27, 11);
      if (os_log_type_enabled(v23, v24))
      {
        OUTLINED_FUNCTION_13_3();
        v28 = swift_slowAlloc();
        OUTLINED_FUNCTION_20_23();
        v29 = swift_slowAlloc();
        *v28 = 138412290;
        v30 = v72;
        v31 = _swift_stdlib_bridgeErrorToNSError();
        *(v28 + 4) = v31;
        *v29 = v31;
        OUTLINED_FUNCTION_130_7();
        _os_log_impl(v32, v33, v34, v35, v36, v37);
        sub_1C6FB5FC8(v29, &qword_1EC215190, &qword_1C755C730);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      if (!a2)
      {
        v69 = OUTLINED_FUNCTION_35_27();
        sub_1C70551BC(v69, v70, v71, 11);
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_191_3();
      sub_1C7161CDC(v38 + 43, v39 | 0x8000000000000000);
      v40 = OUTLINED_FUNCTION_35_27();
      sub_1C70551BC(v40, v41, v42, 11);
      v43 = *(a2 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics);
      OUTLINED_FUNCTION_0_53();
      swift_beginAccess();
      v44 = *(v43 + 40);
      v45 = 2;
      break;
    case 10:
      sub_1C75504FC();
      v5 = sub_1C754FEEC();
      sub_1C755119C();
      v6 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v6, v7))
      {
        OUTLINED_FUNCTION_13_3();
        v8 = swift_slowAlloc();
        *v8 = 134217984;
        v9 = v72[2];
        v10 = OUTLINED_FUNCTION_35_27();
        sub_1C70551BC(v10, v11, v12, 10);
        *(v8 + 4) = v9;
        v13 = OUTLINED_FUNCTION_35_27();
        sub_1C70551BC(v13, v14, v15, 10);
        OUTLINED_FUNCTION_130_7();
        _os_log_impl(v16, v17, v18, v19, v20, v21);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {
        v61 = OUTLINED_FUNCTION_35_27();
        sub_1C70551BC(v61, v62, v63, 10);
        v64 = OUTLINED_FUNCTION_35_27();
        sub_1C70551BC(v64, v65, v66, 10);
      }

      if (a2)
      {
        OUTLINED_FUNCTION_191_3();
        sub_1C7161CDC(v67 + 33, v68 | 0x8000000000000000);
      }

      goto LABEL_22;
    default:
      v56 = OUTLINED_FUNCTION_35_27();
      sub_1C70551BC(v56, v57, v58, v59);
LABEL_17:

      swift_willThrow();
      v60 = a1;
      return;
  }

  *(v44 + 18) = v45;
LABEL_22:
}

uint64_t sub_1C73F2FD0()
{
  OUTLINED_FUNCTION_49_0();
  v2 = v0;
  v4 = v3;
  *(v1 + 1696) = v2;
  *(v1 + 1688) = v5;
  *(v1 + 1680) = v6;
  *(v1 + 1672) = v7;
  *(v1 + 831) = v8;
  *(v1 + 1664) = v3;
  *(v1 + 1656) = v9;
  *(v1 + 1704) = *v2;
  v10 = type metadata accessor for FreeformStory(0);
  *(v1 + 1712) = v10;
  OUTLINED_FUNCTION_76(v10);
  *(v1 + 1720) = OUTLINED_FUNCTION_77();
  v11 = type metadata accessor for StoryMusicCuration(0);
  OUTLINED_FUNCTION_76(v11);
  *(v1 + 1728) = swift_task_alloc();
  *(v1 + 1736) = swift_task_alloc();
  v12 = sub_1C754DFFC();
  *(v1 + 1744) = v12;
  OUTLINED_FUNCTION_18(v12);
  *(v1 + 1752) = v13;
  *(v1 + 1760) = OUTLINED_FUNCTION_77();
  v14 = sub_1C754F2FC();
  *(v1 + 1768) = v14;
  OUTLINED_FUNCTION_18(v14);
  *(v1 + 1776) = v15;
  *(v1 + 1784) = swift_task_alloc();
  *(v1 + 1792) = swift_task_alloc();
  *(v1 + 1800) = swift_task_alloc();
  *(v1 + 1808) = swift_task_alloc();
  v16 = sub_1C754F38C();
  *(v1 + 1816) = v16;
  OUTLINED_FUNCTION_18(v16);
  *(v1 + 1824) = v17;
  *(v1 + 1832) = OUTLINED_FUNCTION_77();
  v18 = *v4;
  *(v1 + 2089) = *v4;
  *(v1 + 2088) = v18;
  memcpy((v1 + 624), v4 + 1, 0xCFuLL);
  *(v1 + 1840) = *(v4 + 26);
  memcpy((v1 + 1424), v4 + 216, 0x58uLL);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1C73F3240()
{
  v20 = v0;
  v19 = *MEMORY[0x1E69E9840];
  v1 = OUTLINED_FUNCTION_457();
  __swift_project_boxed_opaque_existential_1(v1, v2);
  sub_1C754F1CC();
  sub_1C754F2CC();
  v3 = *(v0 + 1672);
  sub_1C754F2BC();
  sub_1C754F2BC();
  v4 = *(v3 + *(type metadata accessor for StoryGenerationSession(0) + 24));
  *(v0 + 1848) = v4;
  if (v4)
  {
    v15 = 16;
    StoryGenerationDiagnosticContext.generationStage.setter(&v15);
  }

  v5 = *(v0 + 1840);
  v7 = *(v0 + 1776);
  v8 = *(v0 + 1664);
  v15 = *(v0 + 2089);
  v6 = v15;
  memcpy(v16, (v8 + 1), sizeof(v16));
  v17 = v5;
  memcpy(v18, (v8 + 216), sizeof(v18));
  *(v0 + 1568) = 0u;
  *(v0 + 1584) = 0u;
  *(v0 + 1600) = 0;
  *(v0 + 1856) = *(v7 + 32);
  *(v0 + 1864) = (v7 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9 = OUTLINED_FUNCTION_457();
  v10(v9);
  FreeformStoryGenerator.musicCurationTask(from:storyCompletion:storySession:eventRecorder:progressReporter:)();
  sub_1C6FB5FC8(v0 + 1568, &qword_1EC215748, &unk_1C755EED0);
  *(v0 + 1872) = v14;
  *(v0 + 16) = v6;
  OUTLINED_FUNCTION_262_3((v0 + 17));
  *(v0 + 224) = v5;
  OUTLINED_FUNCTION_260_3((v0 + 232));
  v11 = swift_task_alloc();
  *(v0 + 1888) = v11;
  *v11 = v0;
  v11[1] = sub_1C73F35EC;
  v12 = *(v0 + 831);

  return sub_1C73FA584(v0 + 16, v12);
}

uint64_t sub_1C73F35EC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  *v3 = *v1;
  v2[237] = v4;
  v2[238] = v5;
  v2[239] = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C73F3724()
{
  v94 = v0;
  v93[11] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 1848);
  if (v1)
  {
    v2 = (v0 + 2088);
    v3 = *(v0 + 1904);
    sub_1C716409C(28, 0xC75AF620, v1, v3, v4, v5, v6, v7, v58, v59, v61, v63, v65, v67, v70, v73, v75, v76[0], v76[1], v76[2], v76[3], v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);
  }

  else
  {
    v2 = (v0 + 2089);
  }

  v8 = *v2;
  v9 = *(v0 + 1896);
  v10 = *(v0 + 1840);
  v11 = *(v0 + 1696);
  v12 = *(v0 + 1672);
  *(v0 + 1512) = 5;
  *(v0 + 1520) = xmmword_1C7589600;
  *(v0 + 1536) = xmmword_1C7589600;
  *(v0 + 1552) = xmmword_1C7589600;
  v13 = v11 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext;
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v13 + 16);
  *(v0 + 1608) = *v13;
  *(v0 + 1616) = v15;
  *(v0 + 1624) = v16;
  type metadata accessor for FreeformStoryKeyAssetElector(0);
  swift_allocObject();
  v17 = v14;

  *(v0 + 1920) = FreeformStoryKeyAssetElector.init(configuration:storyPhotoLibraryContext:)((v0 + 1512), (v0 + 1608));
  LOBYTE(v76[0]) = v8;
  OUTLINED_FUNCTION_262_3(v76 + 1);
  v92 = v10;
  OUTLINED_FUNCTION_260_3(v93);
  v18 = FreeformStoryKeyAssetElector.keyAssetForLastResort(from:storyElements:storySession:)(v9, v76, v12);
  *(v0 + 1928) = v18;

  v19 = *(v0 + 1904);
  if (!v18)
  {
    v49 = *(v0 + 1832);
    v50 = *(v0 + 1824);
    v69 = *(v0 + 1800);
    v51 = *(v0 + 1776);
    v52 = *(v0 + 1768);
    v72 = *(v0 + 1688);
    v74 = *(v0 + 1816);
    v53 = *(v0 + 1680);
    sub_1C6FE0D14();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    OUTLINED_FUNCTION_62_1(v54, 2);
    swift_willThrow();

    v55 = *(v51 + 8);
    v55(v69, v52);
    OUTLINED_FUNCTION_58_16(v53);
    OUTLINED_FUNCTION_131_3();
    sub_1C754F1AC();
    (*(v50 + 8))(v49, v74);
    v55(v72, v52);
    OUTLINED_FUNCTION_45_35();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_91_14();

    __asm { BRAA            X1, X16 }
  }

  v20 = [*(v0 + 1904) fetchedObjects];
  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v22 = v20;
    sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
    OUTLINED_FUNCTION_63();
    v21 = sub_1C7550B5C();
  }

  v23 = *(v0 + 1840);
  LOBYTE(v76[0]) = *(v0 + 2088);
  OUTLINED_FUNCTION_262_3(v76 + 1);
  v92 = v23;
  OUTLINED_FUNCTION_260_3(v93);
  static FreeformStoryGenerator.generateLastResortTitle(from:storyElements:photoLibrary:)(v21, v76, v17);
  v25 = v24;
  v27 = v26;

  if (!v27)
  {
    if (qword_1EC213FB8 != -1)
    {
      OUTLINED_FUNCTION_139_6(&qword_1EC213FB8);
    }

    v25 = qword_1EC21A150;
    v27 = *algn_1EC21A158;
    sub_1C75504FC();
  }

  *(v0 + 1944) = v27;
  *(v0 + 1936) = v25;
  v28 = *(v0 + 1904);
  v71 = *(v0 + 1856);
  v62 = v25;
  v64 = *(v0 + 1784);
  v66 = *(v0 + 1768);
  v68 = *(v0 + 1800);
  v29 = *(v0 + 1760);
  v30 = *(v0 + 1752);
  v60 = *(v0 + 1744);
  v31 = MEMORY[0x1E69E7CC0];
  v32 = OUTLINED_FUNCTION_254_0();
  *(v0 + 1952) = v32;
  v33 = OUTLINED_FUNCTION_254_0();
  *(v0 + 1960) = v33;
  v34 = v28;
  sub_1C75504FC();
  OUTLINED_FUNCTION_150_8();
  sub_1C75504FC();
  v35 = v34;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C754DFEC();
  v36 = sub_1C754DF8C();
  v38 = v37;
  v39 = *(v30 + 8);
  *(v0 + 1968) = v39;
  *(v0 + 1976) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v39(v29, v60);
  *(v0 + 1216) = v36;
  *(v0 + 1224) = v38;
  *(v0 + 1232) = v62;
  *(v0 + 1240) = v27;
  *(v0 + 1248) = 3;
  *(v0 + 1256) = v31;
  OUTLINED_FUNCTION_240_4();
  *(v0 + 1264) = v40;
  *(v0 + 1272) = 0xEA00000000007472;
  *(v0 + 1280) = v35;
  *(v0 + 1288) = v32;
  *(v0 + 1296) = v33;
  *(v0 + 1304) = 0u;
  memcpy((v0 + 832), (v0 + 1216), 0x68uLL);
  LOBYTE(v76[0]) = 0;
  *(v0 + 936) = v35;
  *(v0 + 944) = 0;
  *(v0 + 952) = MEMORY[0x1E69E7CC8];
  *(v0 + 1984) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2150B8, &qword_1C755C2C0);
  v41 = swift_allocObject();
  *(v0 + 1992) = v41;
  OUTLINED_FUNCTION_251_3(v41, xmmword_1C755BAB0);
  v71(v64, v68, v66);
  v42 = v35;
  sub_1C6FC061C(v0 + 1216, v0 + 1320);
  sub_1C6FB7BB8(v0 + 832, v0 + 960);
  v43 = swift_task_alloc();
  *(v0 + 2000) = v43;
  *v43 = v0;
  v43[1] = sub_1C73F3D00;
  OUTLINED_FUNCTION_91_14();

  return static FreeformStoryGenerator.updateChapterCuratedAssetsHighlights(storyChapters:queryTokens:storyGenerationCache:progressReporter:)(v44, v45, v46, v47);
}

uint64_t sub_1C73F3D00()
{
  OUTLINED_FUNCTION_75_1();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6_4();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  *(v4 + 2008) = v0;

  if (v0)
  {
    swift_setDeallocating();
    sub_1C6FDCAA8();

    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  else
  {
    *(v4 + 2016) = v3;
    v13 = *(v4 + 1872);
    swift_setDeallocating();
    sub_1C6FDCAA8();
    *(v4 + 1632) = v13;
    v11 = swift_task_alloc();
    *(v4 + 2024) = v11;
    *v11 = v6;
    v11[1] = sub_1C73F3F08;

    return sub_1C73E72EC();
  }
}

uint64_t sub_1C73F3F08()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C73F4020()
{
  OUTLINED_FUNCTION_197_2();
  v1 = *(v0 + 2008);
  v2 = *(v0 + 1728);
  OUTLINED_FUNCTION_5_90();
  sub_1C73FE764(v3, v2, v4);
  v5 = objc_allocWithZone(type metadata accessor for GenerativeMemoryPhotosGraphData(0));
  v6 = OUTLINED_FUNCTION_66_2();
  v9 = GenerativeMemoryPhotosGraphData.init(storyChapters:musicCuration:promptInformation:)(v6, v7, v8);
  sub_1C734E8EC(v10);
  if (v1)
  {
    v11 = *(v0 + 1928);
    v12 = *(v0 + 1904);
    v13 = *(v0 + 1832);
    v14 = *(v0 + 1824);
    v15 = *(v0 + 1776);
    v51 = *(v0 + 1768);
    v47 = *(v0 + 1816);
    v49 = *(v0 + 1688);
    v16 = *(v0 + 1680);
    OUTLINED_FUNCTION_0_172();
    sub_1C73FED84(v17, v18);

    OUTLINED_FUNCTION_150_8();

    sub_1C70552E0(v0 + 1216);
    sub_1C6FBC664(v0 + 832);

    OUTLINED_FUNCTION_10_3(v16);
    OUTLINED_FUNCTION_16_6();
    sub_1C754F1AC();
    (*(v14 + 8))(v13, v47);
    (*(v15 + 8))(v49, v51);
LABEL_3:
    OUTLINED_FUNCTION_45_35();

    OUTLINED_FUNCTION_43();

    return v19();
  }

  v21 = objc_opt_self();
  v22 = sub_1C755048C();

  *(v0 + 1648) = 0;
  v23 = [v21 archivedDataWithRootObject:v22 requiringSecureCoding:1 error:v0 + 1648];

  v24 = *(v0 + 1648);
  if (!v23)
  {
    v38 = v24;
    v39 = *(v0 + 1928);
    v40 = *(v0 + 1904);
    v46 = *(v0 + 1832);
    v41 = *(v0 + 1824);
    v42 = *(v0 + 1776);
    v52 = *(v0 + 1768);
    v45 = *(v0 + 1736);
    v48 = *(v0 + 1816);
    v50 = *(v0 + 1688);
    v43 = *(v0 + 1680);

    sub_1C754DBEC();

    swift_willThrow();

    sub_1C6FBC664(v0 + 832);

    OUTLINED_FUNCTION_150_8();

    sub_1C70552E0(v0 + 1216);
    OUTLINED_FUNCTION_0_172();
    sub_1C73FED84(v45, v44);
    OUTLINED_FUNCTION_10_3(v43);
    OUTLINED_FUNCTION_84_13();
    sub_1C754F1AC();
    (*(v41 + 8))(v46, v48);
    (*(v42 + 8))(v50, v52);
    goto LABEL_3;
  }

  v25 = sub_1C754DDEC();
  v27 = v26;

  *(v0 + 2032) = v25;
  *(v0 + 2040) = v27;
  v28 = swift_task_alloc();
  *(v0 + 2048) = v28;
  *v28 = v0;
  v28[1] = sub_1C73F44B4;
  OUTLINED_FUNCTION_329();

  return FreeformStoryGenerator.persistStoryAsMemory(subcategory:title:subtitle:keyAsset:curatedAssets:photosGraphData:)(v29, v30, v31, v32, v33, v34, v35, v36);
}

uint64_t sub_1C73F44B4()
{
  OUTLINED_FUNCTION_123();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_6_4();
  *v7 = v6;
  v8 = *v1;
  OUTLINED_FUNCTION_14();
  *v9 = v8;
  v6[257] = v0;

  if (v0)
  {
  }

  else
  {
    v6[258] = v3;
    v6[259] = v5;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C73F4604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  v64 = *(v40 + 2064);
  v65 = *(v40 + 2072);
  v42 = *(v40 + 1968);
  v63 = *(v40 + 1944);
  v62 = *(v40 + 1936);
  v43 = *(v40 + 1904);
  v66 = *(v40 + 1840);
  v44 = *(v40 + 1760);
  v45 = *(v40 + 1744);
  v46 = *(v40 + 1736);
  v47 = *(v40 + 1720);
  v48 = *(v40 + 1712);
  v49 = swift_allocObject();
  OUTLINED_FUNCTION_251_3(v49, xmmword_1C755BAB0);
  OUTLINED_FUNCTION_5_90();
  sub_1C73FE764(v46, v47 + v50, v51);
  v52 = v43;
  sub_1C6FB7BB8(v40 + 832, v40 + 1088);
  sub_1C754DFEC();
  sub_1C754DF8C();
  OUTLINED_FUNCTION_59();
  v42(v44, v45);
  *v47 = v62;
  *(v47 + 8) = v63;
  *(v47 + 16) = v49;
  *(v47 + 24) = 0u;
  *(v47 + 40) = 0u;
  *(v47 + 56) = 0u;
  *(v47 + 72) = 0u;
  *(v47 + 88) = v65;
  *(v47 + 96) = v64;
  *(v47 + 104) = v52;
  *(v47 + 112) = v43;
  *(v47 + 120) = v41;
  *(v47 + *(v48 + 44)) = 96;
  *(v40 + 320) = *(v40 + 2088);
  OUTLINED_FUNCTION_262_3((v40 + 321));
  *(v40 + 528) = v66;
  OUTLINED_FUNCTION_260_3((v40 + 536));
  v53 = swift_task_alloc();
  *(v40 + 2080) = v53;
  *v53 = v40;
  v53[1] = sub_1C73F47EC;
  OUTLINED_FUNCTION_61_3(*(v40 + 1720));
  OUTLINED_FUNCTION_20_4();

  return sub_1C73F5A88(v54, v55, v56, v57, v58, v59);
}

uint64_t sub_1C73F47EC()
{
  OUTLINED_FUNCTION_42();
  v1 = *(*v0 + 1904);
  v2 = *v0;
  OUTLINED_FUNCTION_14();
  *v3 = v2;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C73F491C(uint64_t a1)
{
  v2 = v1[257];
  sub_1C754F2EC();
  v3 = v1[241];
  v4 = v1[238];
  v26 = v1[227];
  if (v2)
  {
    v5 = v1[217];
    v25 = v1[215];
    v6 = v1[210];
    v7 = OUTLINED_FUNCTION_455();
    sub_1C6FC1640(v7, v8);

    sub_1C6FBC664((v1 + 104));
    OUTLINED_FUNCTION_150_8();

    sub_1C70552E0((v1 + 152));
    OUTLINED_FUNCTION_1_129();
    sub_1C73FED84(v25, v9);
    OUTLINED_FUNCTION_0_172();
    sub_1C73FED84(v5, v10);
    OUTLINED_FUNCTION_58_16(v6);
    OUTLINED_FUNCTION_57_0();
    sub_1C754F1AC();
    v11 = OUTLINED_FUNCTION_144_8();
    v12(v11, v26);
    OUTLINED_FUNCTION_45_35();
  }

  else
  {
    v14 = v1[215];
    v24 = v1[207];
    OUTLINED_FUNCTION_0_172();
    sub_1C73FED84(v15, v16);
    OUTLINED_FUNCTION_150_8();

    sub_1C70552E0((v1 + 152));
    sub_1C6FBC664((v1 + 104));
    v17 = OUTLINED_FUNCTION_455();
    sub_1C6FC1640(v17, v18);

    sub_1C73A9410(v14, v24);
    v19 = OUTLINED_FUNCTION_457();
    OUTLINED_FUNCTION_70(v19, v20);
    OUTLINED_FUNCTION_457();
    sub_1C754F1AC();
    v21 = OUTLINED_FUNCTION_144_8();
    v22(v21, v26);
  }

  OUTLINED_FUNCTION_43();

  return v13();
}

uint64_t sub_1C73F4C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v34 = *MEMORY[0x1E69E9840];
  v15 = v14[229];
  v16 = v14[228];
  v17 = v14[222];
  v18 = v14[221];
  v32 = v14[211];
  v33 = v14[227];

  v19 = *(v17 + 8);
  v20 = OUTLINED_FUNCTION_15_1();
  v19(v20);
  v21 = OUTLINED_FUNCTION_94_3();
  OUTLINED_FUNCTION_70(v21, v22);
  OUTLINED_FUNCTION_457();
  sub_1C754F1AC();
  (*(v16 + 8))(v15, v33);
  (v19)(v32, v18);
  OUTLINED_FUNCTION_46_33();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, v32, v33, v34, a12, a13, a14);
}

uint64_t sub_1C73F4D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_111_0();
  v39 = *MEMORY[0x1E69E9840];
  v19 = v18[241];
  v20 = v18[238];
  v34 = v18[234];
  v35 = v18[235];
  v21 = v18[229];
  v22 = v18[228];
  v23 = v18[222];
  v38 = v18[221];
  v36 = v18[227];
  v37 = v18[211];
  v24 = v18[210];

  OUTLINED_FUNCTION_150_8();

  sub_1C70552E0((v18 + 152));
  sub_1C6FBC664((v18 + 104));

  OUTLINED_FUNCTION_70(v24, v24[3]);
  OUTLINED_FUNCTION_455();
  sub_1C754F1AC();
  (*(v22 + 8))(v21, v36);
  (*(v23 + 8))(v37, v38);
  OUTLINED_FUNCTION_46_33();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_94_1();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34, v35, v36, v37, v38, v39, a16, a17, a18);
}

uint64_t sub_1C73F4F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_111_0();
  v41 = *MEMORY[0x1E69E9840];
  v19 = v18[241];
  v20 = v18[238];
  v21 = v18[229];
  v22 = v18[228];
  v37 = v18[245];
  v38 = v18[227];
  v23 = v18[222];
  v35 = v18[244];
  v36 = v18[217];
  v39 = v18[211];
  v40 = v18[221];
  v24 = v18[210];
  sub_1C6FC1640(v18[254], v18[255]);

  sub_1C6FBC664((v18 + 104));

  OUTLINED_FUNCTION_150_8();

  sub_1C70552E0((v18 + 152));
  OUTLINED_FUNCTION_0_172();
  sub_1C73FED84(v36, v25);
  OUTLINED_FUNCTION_10_3(v24);
  OUTLINED_FUNCTION_84_13();
  sub_1C754F1AC();
  (*(v22 + 8))(v21, v38);
  (*(v23 + 8))(v39, v40);
  OUTLINED_FUNCTION_46_33();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_94_1();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37, v38, v39, v40, v41, a16, a17, a18);
}

uint64_t sub_1C73F50F0(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  *(v5 + 56) = *a2;
  v6 = swift_task_alloc();
  *(v5 + 24) = v6;
  *v6 = v5;
  v6[1] = sub_1C73F51B0;

  return FreeformStoryGenerator.persistStoryAsMemory(_:curatedAssets:promptInformation:)();
}

uint64_t sub_1C73F51B0()
{
  OUTLINED_FUNCTION_123();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_47();
  v7 = v6;
  OUTLINED_FUNCTION_6_4();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_14();
  *v10 = v9;
  v7[4] = v0;

  if (!v0)
  {
    v7[5] = v3;
    v7[6] = v5;
  }

  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_244_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C73F52C4()
{
  v1 = v0[5];
  v2 = v0[2];
  *v2 = v0[6];
  v2[1] = v1;
  OUTLINED_FUNCTION_25();
  return v3();
}

uint64_t FreeformStoryGenerator.persistStoryAsMemory(_:curatedAssets:promptInformation:)()
{
  OUTLINED_FUNCTION_42();
  v2 = v0;
  v4 = v3;
  *(v1 + 32) = v5;
  *(v1 + 40) = v2;
  *(v1 + 24) = v6;
  *(v1 + 48) = *v2;
  v7 = type metadata accessor for StoryMusicCuration(0);
  OUTLINED_FUNCTION_76(v7);
  *(v1 + 56) = OUTLINED_FUNCTION_77();
  *(v1 + 120) = *v4;
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C73F53F4()
{
  OUTLINED_FUNCTION_31();
  v45 = v0;
  v44 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 120);
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  type metadata accessor for CuratedStory(0);
  OUTLINED_FUNCTION_5_90();
  sub_1C73FE764(v3 + v4, v2, v5);
  v43 = v1;
  v6 = objc_allocWithZone(type metadata accessor for GenerativeMemoryPhotosGraphData(0));
  v7 = sub_1C75504FC();
  v8 = GenerativeMemoryPhotosGraphData.init(storyChapters:musicCuration:promptInformation:)(v7, v2, &v43);
  sub_1C734E8EC(v9);

  v12 = objc_opt_self();
  v13 = sub_1C755048C();

  *(v0 + 16) = 0;
  v14 = [v12 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:v0 + 16];

  v15 = *(v0 + 16);
  if (v14)
  {
    v16 = *(v0 + 24);
    v17 = sub_1C754DDEC();
    v19 = v18;

    *(v0 + 64) = v17;
    *(v0 + 72) = v19;
    v20 = v16[42];
    v21 = v16[43];
    v22 = *(v16[36] + 16);
    if (qword_1EDD0A988 != -1)
    {
      OUTLINED_FUNCTION_30_0(&qword_1EDD0A988);
    }

    v43 = byte_1EC218F88;
    if (static FreeformStoryGenerator.usingFallbackTitle(for:)(&v43))
    {
      goto LABEL_9;
    }

    if ([objc_opt_self() generateOnDeviceTitle])
    {
      goto LABEL_15;
    }

    v25 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v25 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
LABEL_15:
      v26 = [*(v0 + 32) fetchedObjects];
      v27 = v26;
      if (v22 == 1)
      {
        if (v26)
        {
          sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
          OUTLINED_FUNCTION_63();
          v28 = sub_1C7550B5C();
        }

        else
        {
          v28 = MEMORY[0x1E69E7CC0];
        }

        v29 = v28;
        v30 = 1;
        v31 = 0;
      }

      else
      {
        if (v26)
        {
          sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
          OUTLINED_FUNCTION_63();
          sub_1C7550B5C();
        }

        OUTLINED_FUNCTION_25_8();
      }

      sub_1C74140CC(v29, v30, v31);
      v23 = v32;
    }

    else
    {
LABEL_9:
      v23 = 0;
    }

    *(v0 + 80) = v23;
    v43 = **(v0 + 24);
    sub_1C73F6DC4(&v43);
    v33 = swift_task_alloc();
    *(v0 + 88) = v33;
    *v33 = v0;
    v33[1] = sub_1C73F5800;
    v47 = v19;
    OUTLINED_FUNCTION_66_4();
    OUTLINED_FUNCTION_17_1();

    return FreeformStoryGenerator.persistStoryAsMemory(subcategory:title:subtitle:keyAsset:curatedAssets:photosGraphData:)(v34, v35, v36, v37, v38, v39, v40, v41);
  }

  else
  {
    v24 = v15;
    sub_1C754DBEC();

    swift_willThrow();

    OUTLINED_FUNCTION_43();

    return v10();
  }
}

uint64_t sub_1C73F5800()
{
  OUTLINED_FUNCTION_123();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_6_4();
  *v7 = v6;
  v8 = *v1;
  OUTLINED_FUNCTION_14();
  *v9 = v8;
  v6[12] = v0;

  if (!v0)
  {
    v6[13] = v3;
    v6[14] = v5;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C73F594C()
{
  OUTLINED_FUNCTION_42();
  sub_1C6FC1640(v0[8], v0[9]);

  OUTLINED_FUNCTION_82_0();
  v3 = v0[13];
  v2 = v0[14];

  return v1(v2, v3);
}

uint64_t sub_1C73F59E4()
{
  OUTLINED_FUNCTION_49_0();

  v0 = OUTLINED_FUNCTION_90();
  sub_1C6FC1640(v0, v1);

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_1C73F5A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[93] = v6;
  v7[92] = a6;
  v7[91] = a5;
  v7[90] = a4;
  v7[89] = a3;
  v7[88] = a2;
  v7[87] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C73F5AC0, 0, 0);
}

uint64_t sub_1C73F5AC0()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 728);
  v2 = *(v1 + *(type metadata accessor for StoryGenerationSession(0) + 24));
  *(v0 + 752) = v2;
  if (v2)
  {
    v3 = *(v0 + 696);
    v4 = *(v2 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics);
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();
    v5 = *(v4 + 40);
    LOBYTE(v3) = *(v3 + *(type metadata accessor for FreeformStory(0) + 44));
    swift_beginAccess();
    *(v5 + 17) = v3;
  }

  v6 = [objc_opt_self() isUserFCS];
  if (v6)
  {
    v7 = *(v0 + 752);
    if (v7)
    {

      if (!PFOSVariantHasInternalDiagnostics() || *(v7 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_shouldForceDiagnosticAsSeedOrFCS) == 1)
      {
        OUTLINED_FUNCTION_253_3();
        OUTLINED_FUNCTION_152_6(OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext);
        v9 = v8;

        v10 = swift_task_alloc();
        *(v0 + 768) = v10;
        *v10 = v0;
        v11 = OUTLINED_FUNCTION_67_22(v10);

        return sub_1C7429844(v11, v12, v13, v14, v15, v16);
      }
    }

    OUTLINED_FUNCTION_43();

    return v23();
  }

  else
  {
    OUTLINED_FUNCTION_266_3(v6, *(v0 + 720));
    v18 = swift_task_alloc();
    *(v0 + 760) = v18;
    *v18 = v0;
    v18[1] = sub_1C73F5CD0;
    v19 = OUTLINED_FUNCTION_0_11();

    return sub_1C73F602C(v19, v20, v21, v22);
  }
}

uint64_t sub_1C73F5CD0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C73F5DB4()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 752);
  if (v1)
  {

    if (!PFOSVariantHasInternalDiagnostics() || *(v1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_shouldForceDiagnosticAsSeedOrFCS) == 1)
    {
      OUTLINED_FUNCTION_253_3();
      OUTLINED_FUNCTION_152_6(OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext);
      v3 = v2;

      v4 = swift_task_alloc();
      *(v0 + 768) = v4;
      *v4 = v0;
      v5 = OUTLINED_FUNCTION_67_22(v4);

      return sub_1C7429844(v5, v6, v7, v8, v9, v10);
    }
  }

  OUTLINED_FUNCTION_43();

  return v12();
}

uint64_t sub_1C73F5EB0()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_14();
  *v3 = v2;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C73F5FD4()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C73F602C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a1;
  v5[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A30, &unk_1C75687E0);
  v5[7] = swift_task_alloc();
  v7 = sub_1C754DFFC();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v8 = sub_1C754DF6C();
  v5[11] = v8;
  v5[12] = *(v8 - 8);
  v9 = swift_task_alloc();
  v10 = *(a3 + 16);
  v11 = *(a3 + 24);
  v5[13] = v9;
  v5[14] = v10;
  v5[15] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1C73F6190, 0, 0);
}

uint64_t sub_1C73F6190()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[4];
  if (!v1)
  {
    v27 = sub_1C754FEEC();
    sub_1C75511BC();
    v28 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v30);
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v31, v32, v33, v34, v35, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    goto LABEL_22;
  }

  v2 = v0[3];
  v3 = v0[6] + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext;
  v4 = *v3;
  v0[16] = *v3;
  v5 = *(v3 + 8);
  v6 = v4;

  v7 = [v6 librarySpecificFetchOptions];
  v0[17] = v7;
  [v7 setSharingFilter_];

  [v7 setIncludeStoryMemories_];
  [v7 setIncludePendingMemories_];
  sub_1C6F65BE8(0, &qword_1EDD0CCF8, 0x1E69788F0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v10 = OUTLINED_FUNCTION_13_1(v9);
  *(v10 + 16) = xmmword_1C755BAB0;
  *(v10 + 32) = v2;
  *(v10 + 40) = v1;
  sub_1C75504FC();
  v11 = sub_1C7550B3C();

  v12 = [ObjCClassFromMetadata fetchAssetCollectionsWithLocalIdentifiers:v11 options:v7];
  v0[18] = v12;

  v13 = [v12 firstObject];
  v0[19] = v13;
  if (!v13)
  {
    v27 = sub_1C754FEEC();
    sub_1C75511BC();
    v36 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_92_0(v38);
      OUTLINED_FUNCTION_39();
      _os_log_impl(v39, v40, v41, v42, v43, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    goto LABEL_21;
  }

  v14 = v13;
  v0[20] = type metadata accessor for GenerativeMemoryPhotosGraphData(0);
  if (sub_1C71B2634(v14))
  {

    OUTLINED_FUNCTION_10_2();
    v15 = sub_1C755065C();
    v16 = NSClassFromString(v15);

    if (v16)
    {
      ObjCClassMetadata = swift_getObjCClassMetadata();
      if (dynamic_cast_existential_1_conditional(ObjCClassMetadata, ObjCClassMetadata, &protocol descriptor for PhotosFeedbackGenerativeStoryFactoryProtocol))
      {
        OUTLINED_FUNCTION_59();
        sub_1C754DF5C();
        sub_1C754DEAC();
        v19 = v18;
        v20 = v18;
        v21 = OUTLINED_FUNCTION_66_2();
        result = v22(v21);
        if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v19 > -9.22337204e18)
        {
          if (v19 < 9.22337204e18)
          {
            v24 = v0[5];
            v25 = *(v24 + *(type metadata accessor for StoryGenerationSession(0) + 24));
            if (v25)
            {
              v26 = *(v25 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics);
            }

            else
            {
              v26 = 0;
            }

            v0[21] = v26;
            OUTLINED_FUNCTION_15_3();
            v57 = v54 + *v54;
            swift_task_alloc();
            OUTLINED_FUNCTION_48();
            v0[22] = v55;
            *v55 = v56;
            v55[1] = sub_1C73F672C;

            __asm { BRAA            X8, X16 }
          }

          goto LABEL_31;
        }

        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }
    }

    v27 = sub_1C754FEEC();
    sub_1C755119C();
    v44 = OUTLINED_FUNCTION_72();
    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v27 = sub_1C754FEEC();
  sub_1C75511BC();
  v46 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v46, v47))
  {
LABEL_19:
    v48 = OUTLINED_FUNCTION_127();
    *v48 = 0;
    OUTLINED_FUNCTION_57_5();
    _os_log_impl(v49, v50, v51, v52, v48, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

LABEL_20:

LABEL_21:
LABEL_22:

  OUTLINED_FUNCTION_174_4();

  OUTLINED_FUNCTION_43();

  return v53();
}

uint64_t sub_1C73F672C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C73F682C()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v4 = *(v0 + 144);
    v3 = *(v0 + 152);

    sub_1C6FB5FC8(v2, &unk_1EC217A30, &unk_1C75687E0);
    OUTLINED_FUNCTION_174_4();

    OUTLINED_FUNCTION_43();

    return v5();
  }

  else
  {
    (*(*(v0 + 72) + 32))(*(v0 + 80), v2, v1);
    v7 = swift_task_alloc();
    *(v0 + 184) = v7;
    *v7 = v0;
    v7[1] = sub_1C73F6970;
    v8 = OUTLINED_FUNCTION_61_3(*(v0 + 80));

    return sub_1C71B3524(v8, v9, v10);
  }
}

uint64_t sub_1C73F6970()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C73F6A68()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 144);
  v2 = *(v0 + 136);

  v3 = OUTLINED_FUNCTION_66_2();
  v4(v3);
  OUTLINED_FUNCTION_174_4();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_244_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C73F6B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_126_0();
  a23 = v26;
  a24 = v27;
  a22 = v24;
  v28 = *(v24 + 192);
  sub_1C75504FC();
  v29 = v28;
  v30 = sub_1C754FEEC();
  sub_1C755119C();
  OUTLINED_FUNCTION_173_5();

  if (OUTLINED_FUNCTION_78_9())
  {
    v31 = *(v24 + 192);
    v32 = *(v24 + 152);
    a9 = *(v24 + 144);
    a10 = *(v24 + 136);
    v33 = *(v24 + 72);
    a11 = *(v24 + 64);
    a12 = *(v24 + 80);
    OUTLINED_FUNCTION_11_3();
    swift_slowAlloc();
    a13 = OUTLINED_FUNCTION_177_3();
    *v25 = 136315394;
    v34 = OUTLINED_FUNCTION_2_56();
    v37 = sub_1C6F765A4(v34, v35, v36);
    OUTLINED_FUNCTION_193_3(v37);
    *(v24 + 16) = v31;
    v38 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
    v39 = sub_1C75506EC();
    v41 = sub_1C6F765A4(v39, v40, &a13);

    *(v25 + 14) = v41;
    OUTLINED_FUNCTION_102_11();
    _os_log_impl(v42, v43, v44, v45, v25, 0x16u);
    OUTLINED_FUNCTION_21_25();
    v46 = OUTLINED_FUNCTION_18_60();
    MEMORY[0x1CCA5F8E0](v46);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();

    (*(v33 + 8))(a12, a11);
  }

  else
  {
    v47 = *(v24 + 192);
    v49 = *(v24 + 144);
    v48 = *(v24 + 152);

    v50 = OUTLINED_FUNCTION_49_3();
    v51(v50);
  }

  OUTLINED_FUNCTION_174_4();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_129();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16);
}

char *sub_1C73F6D18@<X0>(char *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  v3 = 32;
  switch(v2 >> 5)
  {
    case 1u:
      v3 = *result;
      goto LABEL_3;
    case 2u:
    case 4u:
      goto LABEL_6;
    case 3u:
      if (v2 == 96)
      {
        v4 = 8;
        v2 = 96;
      }

      else
      {
LABEL_6:
        v4 = 9;
      }

      sub_1C6FE0D14();
      OUTLINED_FUNCTION_9_10();
      swift_allocError();
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      *v5 = v2;
      *(v5 + 24) = v4;
      result = swift_willThrow();
      break;
    default:
LABEL_3:
      *a2 = v3;
      break;
  }

  return result;
}

uint64_t sub_1C73F6DC4(unsigned __int8 *a1)
{
  v1 = *a1;
  result = 1000;
  switch(v1 >> 5)
  {
    case 1u:
      result = 1001;
      break;
    case 2u:
    case 4u:
      goto LABEL_5;
    case 3u:
      if (v1 == 96)
      {
        result = 1100;
      }

      else
      {
LABEL_5:
        sub_1C6FE0D14();
        OUTLINED_FUNCTION_9_10();
        swift_allocError();
        *(v3 + 8) = 0;
        *(v3 + 16) = 0;
        *v3 = v1;
        *(v3 + 24) = 9;
        result = swift_willThrow();
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t FreeformStoryGenerator.persistStoryAsMemory(subcategory:title:subtitle:keyAsset:curatedAssets:photosGraphData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[26] = v14;
  v9[27] = v8;
  v9[24] = a7;
  v9[25] = a8;
  v9[22] = a5;
  v9[23] = a6;
  v9[20] = a3;
  v9[21] = a4;
  v9[18] = a1;
  v9[19] = a2;
  v10 = OUTLINED_FUNCTION_24_1();
  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C73F6EA0()
{
  OUTLINED_FUNCTION_27_2();
  v1 = v0;
  aBlock = v0 + 10;
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[24];
  v5 = v0[25];
  v20 = v3;
  v6 = v0[22];
  v7 = v0[20];
  v18 = v0[21];
  v19 = v0[23];
  v21 = v0 + 2;
  v8 = v0[19];
  v9 = v1[18];
  OUTLINED_FUNCTION_30();
  v10 = swift_allocObject();
  v1[28] = v10;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  v22 = *(v2 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext);
  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = v7;
  v11[4] = v18;
  v11[5] = v6;
  v11[6] = v9;
  v11[7] = v4;
  v11[8] = v19;
  v11[9] = v2;
  v11[10] = v5;
  v11[11] = v3;
  v11[12] = v10;
  v1[14] = sub_1C73FE7C0;
  v1[15] = v11;
  v12 = MEMORY[0x1E69E9820];
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1C6FD8F68;
  v1[13] = &block_descriptor_39;
  v13 = _Block_copy(aBlock);
  v1[29] = v13;
  sub_1C75504FC();
  v14 = v4;
  v15 = v19;

  sub_1C75504FC();
  sub_1C6FEB1B0(v5, v20);

  v1[2] = v1;
  v1[3] = sub_1C73F70D8;
  v16 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BE0, &qword_1C7560100);
  v1[10] = v12;
  v1[11] = 1107296256;
  v1[12] = sub_1C73E8D6C;
  v1[13] = &block_descriptor_31_1;
  v1[14] = v16;
  [v22 performChanges:v13 completionHandler:aBlock];

  return MEMORY[0x1EEE6DEC8](v21);
}

uint64_t sub_1C73F70D8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 240) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C73F71D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24_4();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_31();
  a20 = v22;
  v26 = *(v22 + 224);
  _Block_release(*(v22 + 232));
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v27 = *(v26 + 24);
  if (v27)
  {
    v28 = *(v26 + 16);
    v29 = *(v22 + 192);
    OUTLINED_FUNCTION_29_20();
    swift_bridgeObjectRetain_n();
    sub_1C75504FC();
    v30 = v29;
    v31 = sub_1C754FEEC();
    sub_1C755117C();

    v32 = OUTLINED_FUNCTION_78_9();
    v33 = *(v22 + 192);
    if (v32)
    {
      v34 = v28;
      a9 = *(v22 + 224);
      v35 = *(v22 + 152);
      v36 = *(v22 + 160);
      OUTLINED_FUNCTION_20_1();
      a10 = OUTLINED_FUNCTION_177_3();
      *v23 = 136643331;
      v37 = sub_1C6F765A4(v35, v36, &a10);
      OUTLINED_FUNCTION_193_3(v37);
      *(v23 + 14) = sub_1C6F765A4(v34, v27, &a10);
      *(v23 + 22) = 2048;
      *(v23 + 24) = [v33 count];

      OUTLINED_FUNCTION_102_11();
      _os_log_impl(v38, v39, v40, v41, v23, 0x20u);
      OUTLINED_FUNCTION_21_25();
      v42 = OUTLINED_FUNCTION_18_60();
      MEMORY[0x1CCA5F8E0](v42);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    OUTLINED_FUNCTION_82_0();
    OUTLINED_FUNCTION_17_1();

    return v56(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    sub_1C6FE0D14();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    *(v43 + 8) = 0;
    *(v43 + 16) = 0;
    *v43 = 0;
    *(v43 + 24) = 12;
    swift_willThrow();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_17_1();

    return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1C73F73F4()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 232);
  swift_willThrow();
  _Block_release(v1);

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_1C73F7468(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v31 = a9;
  v32 = a10;
  v16 = sub_1C754DF6C();
  v33 = *(v16 - 8);
  v34 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C754DF5C();
  v19 = sub_1C755065C();
  if (a4)
  {
    a4 = sub_1C755065C();
  }

  v20 = objc_opt_self();
  v21 = sub_1C754DECC();
  v22 = [v20 creationRequestForMemoryWithTitle:v19 subtitle:a4 creationDate:v21 category:0 subcategory:a5 representativeAssets:a6 curatedAssets:a6 extendedCuratedAssets:a6 keyAsset:a7];

  [v22 setCustomUserAssets_];
  v23 = sub_1C754DECC();
  [v22 setLastEnrichmentDate_];

  [v22 setCreationType_];
  [v22 setPendingState_];
  sub_1C73FE318(v31, v32, v22);
  [v22 setPhotosGraphVersion_];
  v24 = [v22 placeholderForCreatedMemory];
  v25 = v24;
  if (v24)
  {
    v26 = [v24 localIdentifier];

    v25 = sub_1C755068C();
    v28 = v27;

    (*(v33 + 8))(v18, v34);
  }

  else
  {
    (*(v33 + 8))(v18, v34);

    v28 = 0;
  }

  swift_beginAccess();
  *(a11 + 16) = v25;
  *(a11 + 24) = v28;
}

uint64_t static FreeformStoryGenerator.findAssetsMissingHighlightInformation(curatedAssets:highlightInformationByAssetUUID:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_30();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = v4;
  v9[4] = sub_1C73FE82C;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1C7067B48;
  v9[3] = &block_descriptor_41;
  v6 = _Block_copy(v9);
  sub_1C75504FC();

  [a1 enumerateObjectsUsingBlock_];
  _Block_release(v6);
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v7 = *(v4 + 16);
  sub_1C75504FC();

  return v7;
}

id sub_1C73F7860(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = [a1 isVideo];
  if (result)
  {
    result = sub_1C70CAC04(a1);
    if (!v8)
    {
      __break(1u);
      return result;
    }

    if (*(a4 + 16))
    {
      sub_1C6F78124(result, v8);
      v10 = v9;

      if (v10)
      {
        return result;
      }
    }

    else
    {
    }

    swift_beginAccess();
    v11 = a1;
    MEMORY[0x1CCA5D040]();
    sub_1C6FB6328();
    sub_1C7550BEC();
    return swift_endAccess();
  }

  return result;
}

void *static FreeformStoryGenerator.combineHighlightInformationByAssetUUID(fallbackHighlightInformationByAssetUUID:shotsHighlightInformationByAssetUUID:)(uint64_t a1)
{
  v3 = a1 + 64;
  OUTLINED_FUNCTION_181_2();
  v5 = v4 >> 6;
  v55 = v6;
  sub_1C75504FC();
  v54 = a1;
  sub_1C75504FC();
  v7 = 0;
  v53 = v5;
LABEL_2:
  v8 = v7;
  if (!v1)
  {
    goto LABEL_4;
  }

  do
  {
    v7 = v8;
LABEL_7:
    v9 = __clz(__rbit64(v1));
    v1 &= v1 - 1;
    v10 = v9 | (v7 << 6);
    v11 = (*(v54 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(v54 + 56) + 40 * v10;
    v16 = *v14;
    v15 = *(v14 + 4);
    v18 = *(v14 + 8);
    v17 = *(v14 + 16);
    v19 = *(v14 + 24);
    v20 = *(v14 + 32);
    v21 = v55[2];
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    if (!v21 || (sub_1C6F78124(v12, v13), (v22 & 1) == 0))
    {
      sub_1C75504FC();
      sub_1C75504FC();
      swift_isUniquelyReferenced_nonNull_native();
      v56 = v55;
      v52 = v12;
      sub_1C6F78124(v12, v13);
      OUTLINED_FUNCTION_31_1();
      if (__OFADD__(v31, v32))
      {
        goto LABEL_32;
      }

      v33 = v29;
      v34 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215250, &qword_1C75896A0);
      if (sub_1C7551A2C())
      {
        v35 = sub_1C6F78124(v52, v13);
        if ((v34 & 1) != (v36 & 1))
        {
          goto LABEL_34;
        }

        v33 = v35;
      }

      v55 = v56;
      if (v34)
      {
        OUTLINED_FUNCTION_185_3(v56[7] + 40 * v33);
        v37[1] = v18;
        v37[2] = v17;
        v37[3] = v19;
        v37[4] = v20;
      }

      else
      {
        OUTLINED_FUNCTION_1_3(&v56[v33 >> 6]);
        v38 = (v55[6] + 16 * v33);
        *v38 = v39;
        v38[1] = v13;
        v40 = v55[7] + 40 * v33;
        *v40 = v16;
        *(v40 + 4) = v15;
        *(v40 + 8) = v18;
        *(v40 + 16) = v17;
        *(v40 + 24) = v19;
        *(v40 + 32) = v20;
        v41 = v55[2];
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          goto LABEL_33;
        }

        v55[2] = v43;
        sub_1C75504FC();
      }

      if (qword_1EDD09CF0 != -1)
      {
        OUTLINED_FUNCTION_0_23();
        swift_once();
      }

      v44 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v44, qword_1EDD28B68);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v45 = sub_1C754FEEC();
      v46 = sub_1C755117C();

      if (os_log_type_enabled(v45, v46))
      {
        v51 = v46;
        v47 = OUTLINED_FUNCTION_20_1();
        v48 = OUTLINED_FUNCTION_20_1();
        v56 = v48;
        *v47 = 136315650;
        v49 = sub_1C6F765A4(v52, v13, &v56);

        *(v47 + 4) = v49;
        OUTLINED_FUNCTION_202_3();

        *(v47 + 24) = v15;
        _os_log_impl(&dword_1C6F5C000, v45, v51, "Asset '%s' has highlight range: start at %f, end at %f, for fallback shot.", v47, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v48);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {
      }

      v5 = v53;
      goto LABEL_2;
    }

    if (qword_1EDD09CF0 != -1)
    {
      OUTLINED_FUNCTION_0_23();
      swift_once();
    }

    v23 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v23, qword_1EDD28B68);
    sub_1C75504FC();
    v24 = sub_1C754FEEC();
    v25 = sub_1C755118C();

    if (OUTLINED_FUNCTION_140_0())
    {
      OUTLINED_FUNCTION_13_3();
      v26 = swift_slowAlloc();
      v27 = OUTLINED_FUNCTION_20_1();
      v56 = v27;
      *v26 = 136315138;
      v28 = sub_1C6F765A4(v12, v13, &v56);

      *(v26 + 4) = v28;
      _os_log_impl(&dword_1C6F5C000, v24, v25, "Asset %s already in highlight dictionary. No need to use fallback shot.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    v8 = v7;
    v5 = v53;
  }

  while (v1);
LABEL_4:
  while (1)
  {
    v7 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      return v55;
    }

    v1 = *(v3 + 8 * v7);
    ++v8;
    if (v1)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t static FreeformStoryGenerator.findBestHighlightsForChapter(chapter:curatedAssets:characterUUIDs:storyGenerationCache:progressReporter:)()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  *(v1 + 208) = v4;
  *(v1 + 216) = v0;
  *(v1 + 192) = v5;
  *(v1 + 200) = v6;
  *(v1 + 184) = v7;
  v8 = sub_1C754F2FC();
  *(v1 + 224) = v8;
  OUTLINED_FUNCTION_18(v8);
  *(v1 + 232) = v9;
  *(v1 + 240) = swift_task_alloc();
  *(v1 + 248) = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = *(v3 + 8);
  *(v1 + 256) = v10;
  *(v1 + 264) = v11;
  v12 = *(v3 + 40);
  v13 = *(v3 + 48);
  *(v1 + 272) = *(v3 + 24);
  *(v1 + 280) = v12;
  *(v1 + 288) = v13;
  v14 = *(v3 + 72);
  *(v1 + 296) = *(v3 + 56);
  *(v1 + 312) = v14;
  *(v1 + 328) = *(v3 + 88);
  v15 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1C73F84F0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 448) = v5;
  *(v3 + 456) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1C73F85F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 q0_0, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v256 = v19;
  v20 = 0;
  v21 = v19[56];
  v24 = *(v21 + 64);
  v23 = v21 + 64;
  v22 = v24;
  v25 = -1;
  v252 = v19[56];
  v26 = -1 << *(v252 + 32);
  if (-v26 < 64)
  {
    v25 = ~(-1 << -v26);
  }

  v27 = v25 & v22;
  v28 = (63 - v26) >> 6;
  v29 = v19[47];
  v244 = v19[46];
  q0_0.n128_u64[0] = 136315907;
  v242 = q0_0;
  q0_0.n128_u64[0] = 136315650;
  v241 = q0_0;
  v249 = v28;
  v250 = v23;
LABEL_4:
  v30 = v20;
  if (!v27)
  {
    goto LABEL_6;
  }

  do
  {
    v20 = v30;
LABEL_9:
    v31 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v32 = v31 | (v20 << 6);
    v33 = (*(v252 + 48) + 16 * v32);
    v35 = *v33;
    v34 = v33[1];
    v36 = *(v252 + 56) + 40 * v32;
    v38 = *v36;
    v37 = *(v36 + 4);
    v39 = *(v36 + 16);
    v245 = *(v36 + 8);
    v40 = *(v36 + 24);
    v41 = v29[2];
    v42 = *(v36 + 32);
    sub_1C75504FC();
    sub_1C75504FC();
    v43 = v39;
    sub_1C75504FC();
    v246 = v35;
    if (!v41 || (v44 = OUTLINED_FUNCTION_2_56(), v46 = sub_1C6F78124(v44, v45), (v47 & 1) == 0))
    {
      sub_1C75504FC();
      sub_1C75504FC();
      swift_isUniquelyReferenced_nonNull_native();
      v19[21] = v244;
      v50 = OUTLINED_FUNCTION_2_56();
      sub_1C6F78124(v50, v51);
      OUTLINED_FUNCTION_31_1();
      if (__OFADD__(v54, v55))
      {
        __break(1u);
      }

      else
      {
        v56 = v52;
        v57 = v53;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215250, &qword_1C75896A0);
        if (sub_1C7551A2C())
        {
          v58 = v246;
          v59 = OUTLINED_FUNCTION_275_0();
          v61 = sub_1C6F78124(v59, v60);
          if ((v57 & 1) != (v62 & 1))
          {
            goto LABEL_62;
          }

          v56 = v61;
        }

        else
        {
          v58 = v246;
        }

        v63 = v19[21];
        v244 = v63;
        if (v57)
        {
          OUTLINED_FUNCTION_185_3(*(v63 + 56) + 40 * v56);
          OUTLINED_FUNCTION_186_4(v64);

LABEL_23:
          v235 = v19[51];
          log = v19[52];
          v231 = v19[49];
          v233 = v19[50];
          v73 = v19[48];
          sub_1C73FE894(v73, v231, v233, v235);
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          v74 = sub_1C754FEEC();
          v75 = sub_1C755117C();

          v245 = v43;

          v240 = v42;

          v76 = v74;
          sub_1C73FE834(v73, v231, v233, v235);
          if (!os_log_type_enabled(v74, v75))
          {

LABEL_40:
            v29 = v244;
LABEL_41:
            v28 = v249;
            v23 = v250;
            goto LABEL_4;
          }

          v77 = v19[50];
          v236 = v19[49];
          v78 = v75;
          v79 = swift_slowAlloc();
          v80 = OUTLINED_FUNCTION_49_1();
          OUTLINED_FUNCTION_232_3(v80, v81, v82, v83, v84, v85, v86, v87, v88, v225, v227, v229, v231, v233, v236, v80, v42, v241.n128_i64[0], v241.n128_i64[1], v89);
          v91 = sub_1C6F765A4(v246, v34, v90);

          *(v79 + 4) = v91;
          OUTLINED_FUNCTION_202_3();

          *(v79 + 24) = v37;
          *(v79 + 32) = 2085;
          sub_1C75504FC();
          v92 = sub_1C6F765A4(v235, v77, v255);

          *(v79 + 34) = v92;
          _os_log_impl(&dword_1C6F5C000, v76, v78, "Asset '%s' has highlight range: start at %f, end at %f, for shot: %{sensitive}s.", v79, 0x2Au);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
LABEL_39:
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();

          goto LABEL_40;
        }

        OUTLINED_FUNCTION_1_3(v63 + 8 * (v56 >> 6));
        v66 = (*(v65 + 48) + 16 * v56);
        *v66 = v58;
        v66[1] = v34;
        v68 = *(v65 + 56) + v56 * v67;
        *v68 = v38;
        *(v68 + 4) = v37;
        OUTLINED_FUNCTION_186_4(v68);
        v70 = *(v69 + 16);
        v71 = __OFADD__(v70, 1);
        v72 = v70 + 1;
        if (!v71)
        {
          *(v69 + 16) = v72;
          sub_1C75504FC();
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_67;
    }

    v48 = v29[7] + 40 * v46;
    v49 = *(v48 + 24);
    if (v49 < v40)
    {
      log = v19[52];
      v240 = v19[53];
      v233 = v19[50];
      v235 = v19[51];
      v229 = v19[48];
      v231 = v19[49];
      v225 = *(v48 + 16);
      v227 = *(v48 + 32);
      sub_1C73FE894(v229, v231, v233, v235);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v93 = sub_1C754FEEC();
      v94 = sub_1C755117C();

      sub_1C73FE834(v229, v231, v233, v235);
      LODWORD(v240) = v94;
      if (OUTLINED_FUNCTION_226_3())
      {
        v96 = v19[49];
        v95 = v19[50];
        loga = v93;
        v97 = swift_slowAlloc();
        v98 = OUTLINED_FUNCTION_49_1();
        OUTLINED_FUNCTION_232_3(v98, v99, v100, v101, v102, v103, v104, v105, v106, v225, v227, v229, v231, v233, v98, loga, v240, v241.n128_i64[0], v241.n128_i64[1], v107);
        v108 = OUTLINED_FUNCTION_2_56();
        *(v97 + 4) = sub_1C6F765A4(v108, v109, v110);
        *(v97 + 12) = 2048;
        *(v97 + 14) = v49;
        *(v97 + 22) = 2048;
        *(v97 + 24) = v40;
        *(v97 + 32) = 2085;
        sub_1C75504FC();
        v111 = sub_1C6F765A4(v96, v95, v255);

        *(v97 + 34) = v111;
        _os_log_impl(&dword_1C6F5C000, log, v240, "For asset '%s': current highlight score is %f, new highlight score is %f. Updating highlight to new highlight, for shot: %{sensitive}s.", v97, 0x2Au);
        OUTLINED_FUNCTION_233_4(v112, v113, MEMORY[0x1E69E7CA0] + 8, v114, v115, v116, v117, v118, v226, v228, v230, v232, v234, v237);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {
      }

      sub_1C75504FC();
      sub_1C75504FC();
      swift_isUniquelyReferenced_nonNull_native();
      v19[22] = v244;
      v119 = OUTLINED_FUNCTION_275_0();
      sub_1C6F78124(v119, v120);
      OUTLINED_FUNCTION_31_1();
      if (!__OFADD__(v123, v124))
      {
        v125 = v121;
        v126 = v122;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215250, &qword_1C75896A0);
        if ((sub_1C7551A2C() & 1) == 0)
        {
LABEL_33:
          v29 = v19[22];
          if (v126)
          {
            OUTLINED_FUNCTION_185_3(v29[7] + 40 * v125);
            *(v129 + 8) = v245;
            *(v129 + 16) = v43;
            *(v129 + 24) = v40;
            *(v129 + 32) = v42;

LABEL_37:
            sub_1C75504FC();
            sub_1C75504FC();
            sub_1C75504FC();
            v76 = sub_1C754FEEC();
            v135 = sub_1C755117C();

            v244 = v29;
            if (!os_log_type_enabled(v76, v135))
            {

              goto LABEL_41;
            }

            v136 = OUTLINED_FUNCTION_20_1();
            v137 = OUTLINED_FUNCTION_20_1();
            v255[0] = v137;
            *v136 = v241.n128_u32[0];
            v138 = sub_1C6F765A4(v246, v34, v255);
            v247 = v135;
            v139 = v138;

            *(v136 + 4) = v139;
            *(v136 + 12) = 2048;
            *(v136 + 14) = v38;
            *(v136 + 22) = 2048;

            *(v136 + 24) = v37;
            _os_log_impl(&dword_1C6F5C000, v76, v247, "Updated asset highlight '%s' with new range: start at %f, end at %f.", v136, 0x20u);
            __swift_destroy_boxed_opaque_existential_1(v137);
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
            goto LABEL_39;
          }

          OUTLINED_FUNCTION_1_3(&v29[v125 >> 6]);
          v130 = (v29[6] + 16 * v125);
          *v130 = v246;
          v130[1] = v34;
          v132 = v29[7] + v125 * v131;
          *v132 = v38;
          *(v132 + 4) = v37;
          OUTLINED_FUNCTION_186_4(v132);
          v133 = v29[2];
          v71 = __OFADD__(v133, 1);
          v134 = v133 + 1;
          if (!v71)
          {
            v29[2] = v134;
            sub_1C75504FC();
            goto LABEL_37;
          }

LABEL_68:
          __break(1u);
          return;
        }

        v127 = sub_1C6F78124(v246, v34);
        if ((v126 & 1) == (v128 & 1))
        {
          v125 = v127;
          goto LABEL_33;
        }

LABEL_62:
        OUTLINED_FUNCTION_267_2();

        sub_1C7551E4C();
        return;
      }

LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v30 = v20;
    v28 = v249;
    v23 = v250;
  }

  while (v27);
  while (1)
  {
LABEL_6:
    v20 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      goto LABEL_62;
    }

    if (v20 >= v28)
    {
      break;
    }

    v27 = *(v23 + 8 * v20);
    ++v30;
    if (v27)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_2_56();
  OUTLINED_FUNCTION_245_3();
  sub_1C73FE894(v140, v141, v142, v143);
  v144 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_2_56();
  OUTLINED_FUNCTION_245_3();
  sub_1C73FE834(v145, v146, v147, v148);
  v149 = OUTLINED_FUNCTION_78_9();
  v150 = v19[50];
  v253 = v19[51];
  v151 = v19[49];
  if (v149)
  {
    OUTLINED_FUNCTION_13_3();
    v152 = swift_slowAlloc();
    v153 = OUTLINED_FUNCTION_20_1();
    v255[0] = v153;
    *v152 = 136642819;
    sub_1C75504FC();
    v154 = sub_1C6F765A4(v151, v150, v255);

    *(v152 + 4) = v154;
    OUTLINED_FUNCTION_127_0();
    _os_log_impl(v155, v156, v157, v158, v159, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v153);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    v160 = OUTLINED_FUNCTION_2_56();
    sub_1C73FE834(v160, v161, v150, v253);
  }

  else
  {

    v162 = OUTLINED_FUNCTION_2_56();
    sub_1C73FE834(v162, v163, v150, v253);
  }

  v19[46] = v244;
  v19[47] = v29;
  sub_1C73E8080((v19 + 2));
  v164 = v19[3];
  v19[48] = v19[2];
  v19[49] = v164;
  v165 = v19[4];
  v166 = v19[5];
  v19[50] = v165;
  v19[51] = v166;
  v167 = v19[6];
  v168 = v19[7];
  v19[52] = v167;
  v19[53] = v168;
  if (v165)
  {
    if (qword_1EDD09CF0 != -1)
    {
      OUTLINED_FUNCTION_0_23();
      swift_once();
    }

    v169 = sub_1C754FF1C();
    v19[54] = OUTLINED_FUNCTION_23_2(v169, qword_1EDD28B68);
    sub_1C75504FC();
    v251 = v166;
    sub_1C75504FC();
    sub_1C75504FC();
    v170 = sub_1C754FEEC();
    sub_1C75511BC();
    OUTLINED_FUNCTION_75();
    sub_1C73FE834(v171, v172, v173, v166);
    if (OUTLINED_FUNCTION_226_3())
    {
      OUTLINED_FUNCTION_13_3();
      v174 = swift_slowAlloc();
      v175 = OUTLINED_FUNCTION_20_1();
      v255[0] = v175;
      *v174 = 136642819;
      sub_1C75504FC();
      v176 = OUTLINED_FUNCTION_49_3();
      v179 = sub_1C6F765A4(v176, v177, v178);

      *(v174 + 4) = v179;
      OUTLINED_FUNCTION_130_7();
      _os_log_impl(v180, v181, v182, v183, v184, v185);
      __swift_destroy_boxed_opaque_existential_1(v175);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v187 = v19[31];
    v186 = v19[32];
    v188 = v19[28];
    v189 = v19[29];
    sub_1C754F2AC();
    v19[13] = v164;
    v19[14] = v165;
    v19[15] = v251;
    v19[16] = v167;
    v19[17] = v168;
    (*(v189 + 32))(v187, v186, v188);
    v190 = swift_task_alloc();
    v19[55] = v190;
    *v190 = v19;
    OUTLINED_FUNCTION_76_20(v190);
  }

  else
  {

    v191 = OUTLINED_FUNCTION_66_2();
    v254 = static FreeformStoryGenerator.findAssetsMissingHighlightInformation(curatedAssets:highlightInformationByAssetUUID:)(v191, v192);
    sub_1C75504DC();

    if (qword_1EDD09CF0 != -1)
    {
      OUTLINED_FUNCTION_0_23();
      swift_once();
    }

    v193 = v19[39];
    v194 = v19[38];
    v248 = v19[35];
    v195 = sub_1C754FF1C();
    v19[58] = OUTLINED_FUNCTION_23_2(v195, qword_1EDD28B68);
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v196 = v194;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v197 = sub_1C754FEEC();
    sub_1C75511BC();

    if (OUTLINED_FUNCTION_226_3())
    {
      v198 = v19[36];
      OUTLINED_FUNCTION_11_3();
      v199 = swift_slowAlloc();
      v200 = OUTLINED_FUNCTION_20_1();
      v255[0] = v200;
      *v199 = 134218243;
      v201 = v254;
      *(v199 + 4) = sub_1C6FB6304();

      *(v199 + 12) = 2085;
      sub_1C75504FC();
      v202 = OUTLINED_FUNCTION_154();
      sub_1C6F765A4(v202, v203, v204);
      OUTLINED_FUNCTION_259_1();
      *(v199 + 14) = v198;
      OUTLINED_FUNCTION_252_2(&dword_1C6F5C000, v205, v206, "Start updating highlight information for %ld videos, with fallback shot: %{sensitive}s");
      __swift_destroy_boxed_opaque_existential_1(v200);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
      v201 = v254;
    }

    OUTLINED_FUNCTION_129_8();
    v207 = v193;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C71BA830(v201, v215, v216, v208, v209, v210, v211, v212, v213, v214, v225, v227, v229, v231, v233, v235, log, v240, v241.n128_i64[0], v241.n128_i64[1], v242.n128_i64[0], v242.n128_i64[1], v243, v244, v245, v248);
    v218 = v217;

    v219 = sub_1C6FBB0C8(v218);
    OUTLINED_FUNCTION_197_5(v219);
    v220 = swift_task_alloc();
    v221 = OUTLINED_FUNCTION_248_4(v220);
    *v221 = v222;
    OUTLINED_FUNCTION_75_17(v221);
  }

  OUTLINED_FUNCTION_267_2();

  static FreeformStoryGenerator.getHighlightInformation(for:curatedAssetsSet:characterUUIDs:progressReporter:)();
}

uint64_t sub_1C73F93CC()
{
  OUTLINED_FUNCTION_123();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  v5[61] = v0;

  v9 = v5[59];
  if (!v0)
  {
    v5[62] = v3;
  }

  v10 = v5[10];

  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_244_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C73F9528(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, Swift::OpaquePointer highlightInformation, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_126_0();
  v25 = *(v24 + 488);
  v26 = static FreeformStoryGenerator.combineHighlightInformationByAssetUUID(fallbackHighlightInformationByAssetUUID:shotsHighlightInformationByAssetUUID:)(*(v24 + 496));

  sub_1C754F2EC();
  if (v25)
  {

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_129();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, highlightInformation._rawValue, a12, a13, a14, a15, a16);
  }

  else
  {
    v36 = *(v24 + 304);
    v53 = *(v24 + 328);
    v54 = *(v24 + 264);
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v37 = v36;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v38 = sub_1C754FEEC();
    v39 = sub_1C75511BC();

    if (os_log_type_enabled(v38, v39))
    {
      OUTLINED_FUNCTION_13_3();
      v40 = swift_slowAlloc();
      a12 = OUTLINED_FUNCTION_20_1();
      *v40 = 136642819;
      v41 = OUTLINED_FUNCTION_0_11();
      *(v40 + 4) = sub_1C6F765A4(v41, v42, v43);
      _os_log_impl(&dword_1C6F5C000, v38, v39, "Finished updating highlight information for fallback shot: %{sensitive}s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(a12);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v44 = *(v24 + 352);
    StoryGenerationCache.cacheHighlightInformation(highlightInformation:)(v26);

    OUTLINED_FUNCTION_129();

    return v47(v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v26, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_1C73F97AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v14 = *(v12 + 400);
  v13 = *(v12 + 408);
  v16 = *(v12 + 384);
  v15 = *(v12 + 392);
  v17 = *(v12 + 232);
  v28 = *(v12 + 224);
  v18 = *(v12 + 208);

  sub_1C73FE834(v16, v15, v14, v13);

  (*(v17 + 8))(v18, v28);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, v28, a10, a11, a12);
}

uint64_t sub_1C73F9884()
{
  OUTLINED_FUNCTION_49_0();

  v1 = OUTLINED_FUNCTION_0_11();
  v2(v1);

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t static FreeformStoryGenerator.getHighlightInformation(for:curatedAssetsSet:characterUUIDs:progressReporter:)()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  *(v0 + 64) = v3;
  *(v0 + 72) = v4;
  *(v0 + 56) = v5;
  v6 = sub_1C7550CBC();
  *(v0 + 80) = v6;
  OUTLINED_FUNCTION_18(v6);
  *(v0 + 88) = v7;
  *(v0 + 96) = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *v2;
  *(v0 + 104) = v8;
  *(v0 + 112) = v9;
  *(v0 + 120) = *(v2 + 1);
  *(v0 + 136) = *(v2 + 3);
  v10 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C73F9A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_95_3();
  a25 = v27;
  a26 = v28;
  OUTLINED_FUNCTION_111_0();
  a24 = v26;
  v29 = [*(v26 + 128) fetchedObjects];
  v30 = MEMORY[0x1E69E7CC0];
  if (v29)
  {
    v31 = v29;
    sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
    OUTLINED_FUNCTION_63();
    v32 = sub_1C7550B5C();
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  a11 = v30;
  v33 = sub_1C6FB6304();
  v34 = 0;
  v35 = &selRef_clsSceneClassifications;
  while (v33 != v34)
  {
    if ((v32 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x1CCA5DDD0](v34, v32);
    }

    else
    {
      if (v34 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v36 = *(v32 + 8 * v34 + 32);
    }

    v37 = v36;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      OUTLINED_FUNCTION_0_23();
      swift_once();
LABEL_18:
      v38 = v26;
      v39 = *(v26 + 128);
      v40 = sub_1C754FF1C();
      v38[20] = OUTLINED_FUNCTION_23_2(v40, qword_1EDD28B68);
      OUTLINED_FUNCTION_29_20();
      swift_retain_n();
      sub_1C75504FC();
      v41 = v39;
      sub_1C75504FC();
      sub_1C75504FC();
      v42 = sub_1C754FEEC();
      v43 = sub_1C755117C();

      if (os_log_type_enabled(v42, v43))
      {
        v79 = v43;
        v45 = v38[17];
        v44 = v38[18];
        v47 = v38[15];
        v46 = v38[16];
        v48 = v38[14];
        OUTLINED_FUNCTION_11_3();
        v49 = swift_slowAlloc();
        v50 = OUTLINED_FUNCTION_20_1();
        a10 = v50;
        a11 = v48;
        *v49 = 136643075;
        a12 = v47;
        a13 = v46;
        a14 = v45;
        a15 = v44;
        sub_1C75504FC();
        v51 = v46;
        sub_1C75504FC();
        sub_1C75504FC();
        v52 = FreeformStoryShot.description.getter();
        v54 = v53;
        v55 = a13;

        v56 = sub_1C6F765A4(v52, v54, &a10);

        *(v49 + 4) = v56;
        *(v49 + 12) = 2048;
        v57 = sub_1C6FB6304();

        *(v49 + 14) = v57;

        _os_log_impl(&dword_1C6F5C000, v42, v79, "getHighlightInformation called with shot %{sensitive}s with %ld video assets", v49, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v50);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {
        OUTLINED_FUNCTION_29_20();
      }

      v70 = v38[14];
      v69 = v38[15];
      type metadata accessor for AssetMediaAnalyzer();
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
      v72 = OUTLINED_FUNCTION_13_1(v71);
      v38[21] = v72;
      *(v72 + 16) = xmmword_1C755BAB0;
      *(v72 + 32) = v70;
      *(v72 + 40) = v69;
      sub_1C75504FC();
      v73 = swift_task_alloc();
      v38[22] = v73;
      *v73 = v38;
      v73[1] = sub_1C73F9EB8;
      OUTLINED_FUNCTION_457();
      OUTLINED_FUNCTION_94_1();

      return static AssetMediaAnalyzer.requestHighlightInformation(for:queries:characterUUIDs:progressReporter:)(v74, v75, v76, v77);
    }

    if ([v36 isVideo] && (objc_msgSend(*(v26 + 56), v35[26], v37) & 1) != 0)
    {
      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
      v35 = &selRef_clsSceneClassifications;
    }

    else
    {
    }

    ++v34;
  }

  *(v26 + 152) = a11;
  if (sub_1C6FB6304() > 0)
  {
    if (qword_1EDD09CF0 != -1)
    {
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  v58 = *(v26 + 72);

  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v59 + 8))(v58);

  OUTLINED_FUNCTION_94_1();

  return v62(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C73F9EB8()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6_4();
  *v5 = v4;
  *(v2 + 184) = v6;
  *(v2 + 192) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73F9FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_20_20();
  a27 = v29;
  a28 = v30;
  OUTLINED_FUNCTION_27_2();
  a26 = v28;
  v31 = v28[16];

  sub_1C75504FC();
  v32 = v31;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v33 = sub_1C754FEEC();
  v34 = sub_1C755117C();

  if (os_log_type_enabled(v33, v34))
  {
    a10 = v28[23];
    v35 = v28[18];
    v36 = v28[16];
    v37 = v28[17];
    v38 = v28[14];
    v39 = v28[15];
    v40 = OUTLINED_FUNCTION_20_1();
    a11 = OUTLINED_FUNCTION_49_1();
    a12 = a11;
    *v40 = 136643331;
    a13 = v38;
    a14 = v39;
    a15 = v36;
    a16 = v37;
    a17 = v35;
    sub_1C75504FC();
    v41 = v36;
    sub_1C75504FC();
    sub_1C75504FC();
    v42 = FreeformStoryShot.description.getter();
    v44 = v43;
    v45 = a15;

    v46 = sub_1C6F765A4(v42, v44, &a12);

    *(v40 + 4) = v46;
    *(v40 + 12) = 2048;
    v47 = sub_1C6FB6304();

    *(v40 + 14) = v47;

    *(v40 + 22) = 2085;
    v48 = sub_1C75504BC();
    v50 = sub_1C6F765A4(v48, v49, &a12);

    *(v40 + 24) = v50;
    _os_log_impl(&dword_1C6F5C000, v33, v34, "getHighlightInformation received captions for shot %{sensitive}s with %ld video assets: %{sensitive}s", v40, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_0_89();
  OUTLINED_FUNCTION_20_4();

  return v53(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1C73FA25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24_4();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_31();
  a20 = v22;
  v25 = *(v22 + 192);
  *(v22 + 40) = v25;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  v27 = swift_dynamicCast();
  v28 = *(v22 + 192);
  if (v27)
  {
    v29 = *(v22 + 96);
    v30 = *(v22 + 80);
    v31 = *(v22 + 88);

    v32 = OUTLINED_FUNCTION_66_2();
    v33(v32);
    sub_1C73FEE48(&qword_1EC217180, MEMORY[0x1E69E8550]);
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    (*(v31 + 16))(v34, v29, v30);
    swift_willThrow();
    (*(v31 + 8))(v29, v30);

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_17_1();

    return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v44 = *(v22 + 144);
    v45 = *(v22 + 128);

    sub_1C75504FC();
    v46 = v45;
    sub_1C75504FC();
    sub_1C75504FC();
    v47 = v28;
    v48 = sub_1C754FEEC();
    v49 = sub_1C755119C();

    v50 = os_log_type_enabled(v48, v49);
    v51 = *(v22 + 192);
    if (v50)
    {
      OUTLINED_FUNCTION_11_3();
      swift_slowAlloc();
      a10 = OUTLINED_FUNCTION_177_3();
      *v44 = 136643075;
      v52 = OUTLINED_FUNCTION_2_56();
      v55 = sub_1C6F765A4(v52, v53, v54);
      OUTLINED_FUNCTION_193_3(v55);
      swift_getErrorValue();
      v56 = sub_1C7551EAC();
      v58 = sub_1C6F765A4(v56, v57, &a10);

      *(v44 + 14) = v58;
      OUTLINED_FUNCTION_123_11();
      _os_log_impl(v59, v60, v61, v62, v63, 0x16u);
      OUTLINED_FUNCTION_21_25();
      v64 = OUTLINED_FUNCTION_18_60();
      MEMORY[0x1CCA5F8E0](v64);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    sub_1C75504DC();

    OUTLINED_FUNCTION_0_89();
    OUTLINED_FUNCTION_17_1();

    return v67(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1C73FA584(uint64_t a1, char a2)
{
  *(v3 + 72) = a2;
  v4 = *(a1 + 168);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v3 + 32) = *(a1 + 192);
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C73FA5A8()
{
  OUTLINED_FUNCTION_123();
  v1 = sub_1C73FCBC4(*(v0 + 24), *(v0 + 72));
  if (*(v1 + 16))
  {
    sub_1C75504FC();
    v2 = sub_1C754FEEC();
    sub_1C75511BC();
    v3 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v3, v4))
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  v5 = *(v0 + 32);
  v6 = *(v0 + 72);

  v1 = sub_1C73FCBC4(v5, v6);
  if (*(v1 + 16))
  {
    sub_1C75504FC();
    v2 = sub_1C754FEEC();
    sub_1C75511BC();
    v7 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v7, v8))
    {
LABEL_6:
      OUTLINED_FUNCTION_13_3();
      v9 = swift_slowAlloc();
      OUTLINED_FUNCTION_82_18(v9, 3.852e-34);

      OUTLINED_FUNCTION_39();
      _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
LABEL_8:

      goto LABEL_9;
    }

LABEL_7:

    goto LABEL_8;
  }

  v18 = *(v0 + 72);

  if (v18 != 1)
  {
    sub_1C6FE0D14();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    OUTLINED_FUNCTION_62_1(v27, 3);
    swift_willThrow();
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_244_0();

    __asm { BRAA            X1, X16 }
  }

  if (*(*(v0 + 24) + 16))
  {
    OUTLINED_FUNCTION_29_20();
    swift_bridgeObjectRetain_n();
    v19 = sub_1C754FEEC();
    sub_1C75511BC();
    v20 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v20, v21))
    {
      OUTLINED_FUNCTION_13_3();
      v22 = swift_slowAlloc();
      OUTLINED_FUNCTION_82_18(v22, 3.852e-34);

      OUTLINED_FUNCTION_57_5();
      _os_log_impl(v23, v24, v25, v26, v22, 0xCu);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    v1 = *(v0 + 24);
  }

  else
  {
    swift_bridgeObjectRetain_n();
    v30 = sub_1C754FEEC();
    v31 = sub_1C75511BC();
    v32 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v32, v33))
    {
      OUTLINED_FUNCTION_13_3();
      v34 = swift_slowAlloc();
      OUTLINED_FUNCTION_29_34(v34, 3.852e-34);
      _os_log_impl(&dword_1C6F5C000, v30, v31, "Found %ld safe storytelling assets ignoring utilityForMemory", v34, 0xCu);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    v1 = *(v0 + 32);
  }

LABEL_9:
  *(v0 + 40) = sub_1C71CD85C(v1);
  v15 = swift_task_alloc();
  *(v0 + 48) = v15;
  *v15 = v0;
  v15[1] = sub_1C73FA934;
  OUTLINED_FUNCTION_244_0();

  return sub_1C73FCC74();
}

uint64_t sub_1C73FA934()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 56) = v5;
  *(v3 + 64) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C73FAA3C()
{
  OUTLINED_FUNCTION_75_1();
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext + 8);
  v3 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext);

  v4 = [v3 librarySpecificFetchOptions];
  [v4 setSharingFilter_];

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v6 = OUTLINED_FUNCTION_13_1(v5);
  *(v6 + 16) = xmmword_1C7564A90;
  v7 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v6 + 32) = sub_1C6F6AF98(0x6E6F697461657263, 0xEC00000065746144, 1);
  v8 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v6 + 40) = sub_1C6F6AF98(1684632949, 0xE400000000000000, 1);
  v9 = OUTLINED_FUNCTION_154();
  sub_1C71F8834(v9, v10);
  v11 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration + 64);
  v12 = objc_opt_self();
  v13 = v4;
  v14 = OUTLINED_FUNCTION_57_0();
  v16 = sub_1C6FCA158(v14, v15, v12);

  if (!v16)
  {
LABEL_4:
    v17 = *(*(v0 + 56) + 16);

    sub_1C6FE0D14();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    *v18 = v17;
    *(v18 + 8) = v11;
    *(v18 + 16) = 0;
    *(v18 + 24) = 5;
    swift_willThrow();

    OUTLINED_FUNCTION_43();

    return v19();
  }

  if ([v16 count] < v11)
  {

    goto LABEL_4;
  }

  OUTLINED_FUNCTION_82_0();
  v22 = *(v0 + 56);

  return v21(v22, v16);
}

uint64_t sub_1C73FAC84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v86 = a2;
  v91 = a4;
  v87 = sub_1C754D8BC();
  OUTLINED_FUNCTION_29();
  v84 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_2();
  v82 = v8;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_140_1();
  v83 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216FF8, &unk_1C7568E70);
  v12 = OUTLINED_FUNCTION_76(v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_140_1();
  v88 = v16;
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14_0();
  v21 = v20 - v19;
  sub_1C754F38C();
  OUTLINED_FUNCTION_29();
  v89 = v23;
  v90 = v22;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_14_0();
  v26 = v25 - v24;
  v85 = *(a1 + 192);
  v27 = *(a1 + 208);
  v28 = OUTLINED_FUNCTION_90();
  __swift_project_boxed_opaque_existential_1(v28, v29);
  sub_1C754F1CC();
  swift_storeEnumTagMultiPayload();
  v93 = v21;
  sub_1C75504FC();
  v30 = sub_1C706CC1C(sub_1C7055510, v92, v27);
  OUTLINED_FUNCTION_120_10();
  v31 = *(v30 + 2);

  if (v31 < 2)
  {
    v41 = swift_storeEnumTagMultiPayload();
    MEMORY[0x1EEE9AC00](v41);
    *(&v82 - 2) = v21;
    v42 = sub_1C707351C();
    OUTLINED_FUNCTION_120_10();
    if (v42)
    {
      v43 = sub_1C754FEEC();
      sub_1C75511BC();
      v44 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v44, v45))
      {
        goto LABEL_12;
      }

      goto LABEL_13;
    }

    if (qword_1EDD0E058 != -1)
    {
      swift_once();
    }

    v46 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E060);
    MEMORY[0x1EEE9AC00](v46);
    *(&v82 - 2) = v47;
    if (sub_1C707351C())
    {
      v43 = sub_1C754FEEC();
      sub_1C75511BC();
      v48 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v48, v49))
      {
LABEL_12:
        v50 = OUTLINED_FUNCTION_127();
        *v50 = 0;
        OUTLINED_FUNCTION_57_5();
        _os_log_impl(v51, v52, v53, v54, v50, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

LABEL_13:

LABEL_14:
      v40 = 32;
      goto LABEL_15;
    }

    StoryGenerationCache.momentUUIDByAssetUUID(for:)();
    sub_1C706D87C();
    v56 = v88;
    sub_1C73FB3F4(v88);
    v57 = OUTLINED_FUNCTION_94_3();
    sub_1C712A774(v57, v58, v59, v60);
    v61 = v87;
    if (__swift_getEnumTagSinglePayload(v14, 1, v87) == 1)
    {
      sub_1C6FB5FC8(v14, &qword_1EC216FF8, &unk_1C7568E70);
    }

    else
    {
      v63 = v83;
      v62 = v84;
      (*(v84 + 32))(v83, v14, v61);
      sub_1C754D8AC();
      if (v64 < 86400.0)
      {

        v65 = v82;
        (*(v62 + 16))(v82, v63, v61);
        v66 = sub_1C754FEEC();
        v67 = sub_1C75511BC();
        if (os_log_type_enabled(v66, v67))
        {
          OUTLINED_FUNCTION_13_3();
          v68 = swift_slowAlloc();
          *v68 = 134217984;
          LODWORD(v86) = v67;
          sub_1C754D8AC();
          v70 = v69;
          v71 = *(v62 + 8);
          v71(v65, v61);
          *(v68 + 4) = v70;
          _os_log_impl(&dword_1C6F5C000, v66, v86, "Moments fits within a day (%f seconds, forcing Chronological", v68, 0xCu);
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();

          v71(v63, v61);
        }

        else
        {

          v81 = *(v62 + 8);
          v81(v65, v61);
          v81(v63, v61);
        }

LABEL_28:
        sub_1C6FB5FC8(v56, &qword_1EC216FF8, &unk_1C7568E70);
        goto LABEL_14;
      }

      (*(v62 + 8))(v63, v61);
    }

    v72 = sub_1C73FBAA0();

    if ((v72 & 1) == 0)
    {
      sub_1C6FB5FC8(v56, &qword_1EC216FF8, &unk_1C7568E70);
      v40 = 0;
      goto LABEL_15;
    }

    v73 = sub_1C754FEEC();
    sub_1C75511BC();
    v74 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = OUTLINED_FUNCTION_127();
      *v76 = 0;
      OUTLINED_FUNCTION_57_5();
      _os_log_impl(v77, v78, v79, v80, v76, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    goto LABEL_28;
  }

  v32 = sub_1C754FEEC();
  sub_1C75511BC();
  v33 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v33, v34))
  {
    OUTLINED_FUNCTION_13_3();
    v35 = swift_slowAlloc();
    *v35 = 134217984;
    *(v35 + 4) = v31;
    OUTLINED_FUNCTION_57_5();
    _os_log_impl(v36, v37, v38, v39, v35, 0xCu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v40 = 1;
LABEL_15:
  *v91 = v40;
  OUTLINED_FUNCTION_58_16(a3);
  OUTLINED_FUNCTION_131_3();
  sub_1C754F1AC();
  return (*(v89 + 8))(v26, v90);
}

uint64_t sub_1C73FB3F4@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v73 = a2;
  v84 = sub_1C754DF6C();
  OUTLINED_FUNCTION_29();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_2();
  v83 = v7;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_130();
  v82 = v9;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_130();
  v81 = v11;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_130();
  v80 = v13;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_130();
  v79 = v15;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_140_1();
  v92 = v17;
  v18 = sub_1C754D8BC();
  OUTLINED_FUNCTION_29();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_14_2();
  v95 = v22;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_140_1();
  v96 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216FF8, &unk_1C7568E70);
  v26 = OUTLINED_FUNCTION_76(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14_2();
  v94 = v27;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_130();
  v90 = v29;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v71 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v71 - v34;
  v36 = *(v3 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext);
  v37 = *(v3 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext + 8);
  v38 = *(v3 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext + 16);
  v97 = v36;
  v98 = v37;
  v99 = v38;
  v39 = v36;

  static StoryGenerationUtilities.momentUniversalDateIntervalByMomentUUID(for:storyPhotoLibraryContext:)();
  v40 = v97;

  sub_1C706EA68();
  v42 = v41;
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v18);
  v72 = v35;
  sub_1C712A774(v35, v32, &qword_1EC216FF8, &unk_1C7568E70);
  v43 = v42 + 56;
  OUTLINED_FUNCTION_181_2();
  v45 = v44 >> 6;
  v88 = (v20 + 32);
  v89 = v20 + 16;
  v77 = (v5 + 8);
  v76 = (v5 + 32);
  v46 = v32;
  v91 = v20;
  v75 = (v20 + 8);
  v93 = v42;
  result = sub_1C75504FC();
  v48 = 0;
  v78 = v18;
  v74 = v46;
  while (1)
  {
    v49 = v46;
    if (!v35)
    {
      break;
    }

    v50 = v94;
LABEL_9:
    (*(v91 + 16))(v96, *(v93 + 48) + *(v91 + 72) * (__clz(__rbit64(v35)) | (v48 << 6)), v18);
    sub_1C712A774(v49, v50, &qword_1EC216FF8, &unk_1C7568E70);
    if (__swift_getEnumTagSinglePayload(v50, 1, v18) == 1)
    {
      sub_1C6FB5FC8(v49, &qword_1EC216FF8, &unk_1C7568E70);
      sub_1C6FB5FC8(v50, &qword_1EC216FF8, &unk_1C7568E70);
      v52 = v90;
      (*v88)(v90, v96, v18);
      v46 = v49;
    }

    else
    {
      (*v88)(v95, v50, v18);
      v53 = v79;
      sub_1C754D89C();
      v54 = v80;
      sub_1C754D89C();
      v87 = sub_1C73FEE48(&qword_1EDD0F9E0, MEMORY[0x1E6969530]);
      v55 = v84;
      v56 = sub_1C755060C();
      v57 = *v77;
      v86 = *v77;
      v58 = (v56 & 1) == 0;
      if (v56)
      {
        v59 = v53;
      }

      else
      {
        v59 = v54;
      }

      if (v58)
      {
        v60 = v53;
      }

      else
      {
        v60 = v54;
      }

      v57(v59, v55);
      v85 = *v76;
      v85(v92, v60, v55);
      v61 = v82;
      sub_1C754D86C();
      v62 = v83;
      sub_1C754D86C();
      v63 = sub_1C755061C();
      v64 = (v63 & 1) == 0;
      if (v63)
      {
        v65 = v61;
      }

      else
      {
        v65 = v62;
      }

      if (v64)
      {
        v66 = v61;
      }

      else
      {
        v66 = v62;
      }

      v86(v65, v55);
      v85(v81, v66, v55);
      v52 = v90;
      v18 = v78;
      sub_1C754D87C();
      v67 = *v75;
      (*v75)(v95, v18);
      v67(v96, v18);
      v46 = v74;
      sub_1C6FB5FC8(v74, &qword_1EC216FF8, &unk_1C7568E70);
    }

    v35 &= v35 - 1;
    OUTLINED_FUNCTION_25_8();
    __swift_storeEnumTagSinglePayload(v68, v69, v70, v18);
    result = sub_1C73FEDD8(v52, v46);
  }

  v50 = v94;
  while (1)
  {
    v51 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v51 >= v45)
    {
      sub_1C6FB5FC8(v72, &qword_1EC216FF8, &unk_1C7568E70);

      sub_1C73FEDD8(v49, v73);
    }

    v35 = *(v43 + 8 * v51);
    ++v48;
    if (v35)
    {
      v48 = v51;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C73FBAA0()
{
  v0 = objc_autoreleasePoolPush();
  v1 = OUTLINED_FUNCTION_66_2();
  sub_1C73FBAF4(v1, v2, v3);
  objc_autoreleasePoolPop(v0);
  return v5;
}

void sub_1C73FBAF4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = *(a1 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext + 8);
  v37 = a1 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext;
  v5 = *(a1 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext);

  v6 = [v5 librarySpecificFetchOptions];
  [v6 setSharingFilter_];

  sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C755D200;
  v8 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1C6F6D524();
  *(v7 + 64) = v9;
  *(v7 + 32) = 1684632949;
  *(v7 + 40) = 0xE400000000000000;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);
  *(v7 + 96) = v35;
  v10 = sub_1C705575C(&qword_1EDD0CEE0, &unk_1EC215BF0, &qword_1C755C2F0);
  *(v7 + 72) = a2;
  *(v7 + 136) = v8;
  *(v7 + 144) = v9;
  *(v7 + 104) = v10;
  *(v7 + 112) = 0x6867696C68676968;
  *(v7 + 120) = 0xE900000000000074;
  *(v7 + 176) = v8;
  *(v7 + 184) = v9;
  *(v7 + 152) = 0xD00000000000001DLL;
  *(v7 + 160) = 0x80000001C75AF7F0;
  *(v7 + 216) = v8;
  *(v7 + 224) = v9;
  *(v7 + 192) = 1701869940;
  *(v7 + 200) = 0xE400000000000000;
  v11 = MEMORY[0x1E69E7660];
  *(v7 + 256) = MEMORY[0x1E69E75F8];
  *(v7 + 264) = v11;
  *(v7 + 232) = 2;
  sub_1C75504FC();
  v12 = sub_1C755112C();
  [v6 setInternalPredicate_];

  sub_1C6F65BE8(0, &qword_1EDD0CCF0, 0x1E6978928);
  v38 = v6;
  v13 = [swift_getObjCClassFromMetadata() fetchMomentsWithOptions_];
  if ([v13 count] != *(a2 + 16))
  {
    goto LABEL_7;
  }

  v34 = v13;
  v14 = *(v37 + 8);
  v15 = *v37;

  v16 = [v15 librarySpecificFetchOptions];
  [v16 setSharingFilter_];

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C755BAA0;
  v18 = MEMORY[0x1E69E6158];
  *(v17 + 56) = MEMORY[0x1E69E6158];
  *(v17 + 64) = v9;
  *(v17 + 32) = 0x73746E656D6F6DLL;
  *(v17 + 40) = 0xE700000000000000;
  *(v17 + 96) = v18;
  *(v17 + 104) = v9;
  *(v17 + 72) = 1684632949;
  *(v17 + 80) = 0xE400000000000000;
  *(v17 + 136) = v35;
  *(v17 + 144) = v10;
  *(v17 + 112) = a2;
  sub_1C75504FC();
  v19 = sub_1C755112C();
  [v16 setInternalPredicate_];

  v20 = objc_opt_self();
  v36 = v16;
  v13 = [v20 fetchHighlightsWithOptions_];
  if ([v13 count] < 1 || (v21 = objc_msgSend(v13, sel_fetchedObjectIDs)) == 0)
  {

LABEL_7:
    goto LABEL_8;
  }

  v22 = v21;
  sub_1C6F65BE8(0, &qword_1EDD0FAB0, 0x1E695D630);
  v33 = sub_1C7550B5C();

  v23 = *(v37 + 8);
  v24 = *v37;

  v25 = [v24 librarySpecificFetchOptions];
  [v25 setSharingFilter_];

  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C755F060;
  v27 = MEMORY[0x1E69E6158];
  *(v26 + 56) = MEMORY[0x1E69E6158];
  *(v26 + 64) = v9;
  *(v26 + 32) = 1701869940;
  *(v26 + 40) = 0xE400000000000000;
  *(v26 + 96) = MEMORY[0x1E69E75F8];
  v28 = MEMORY[0x1E69E7660];
  *(v26 + 72) = 2;
  *(v26 + 136) = v27;
  *(v26 + 144) = v9;
  *(v26 + 104) = v28;
  *(v26 + 112) = 0xD00000000000001DLL;
  *(v26 + 120) = 0x80000001C75AC190;
  *(v26 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215608, &qword_1C7585C00);
  *(v26 + 184) = sub_1C705575C(&qword_1EC21AE68, &qword_1EC215608, &qword_1C7585C00);
  *(v26 + 152) = v33;
  v29 = sub_1C755112C();
  [v25 setInternalPredicate_];

  v30 = [v20 &selRef_resultLimit + 6];
  v31 = [v30 count];

  if (v31 != 1)
  {
LABEL_8:
    v32 = 0;
    goto LABEL_9;
  }

  v32 = 1;
LABEL_9:
  *a3 = v32;
}

uint64_t sub_1C73FC114()
{
  OUTLINED_FUNCTION_42();
  v1[125] = v0;
  v1[124] = v2;
  v1[123] = v3;
  v1[122] = v4;
  v1[121] = v5;
  v1[120] = v6;
  v1[119] = v7;
  v1[118] = v8;
  OUTLINED_FUNCTION_266_3(v8, v9);
  v10 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C73FC18C()
{
  OUTLINED_FUNCTION_123();
  type metadata accessor for TitlingAdapterPromptGenerator(0);
  v1 = swift_allocObject();
  v0[126] = v1;
  v2 = OBJC_IVAR____TtC18PhotosIntelligence29TitlingAdapterPromptGenerator_logger;
  if (qword_1EC214190 != -1)
  {
    swift_once();
  }

  v3 = v0[118];
  v4 = sub_1C754FF1C();
  v0[127] = v4;
  v5 = __swift_project_value_buffer(v4, qword_1EC21C228);
  v6 = *(v4 - 8);
  v0[128] = v6;
  (*(v6 + 16))(v1 + v2, v5, v4);
  OUTLINED_FUNCTION_58_16(v3);
  OUTLINED_FUNCTION_15_3();
  v11 = (v7 + *v7);
  v8 = swift_task_alloc();
  v0[129] = v8;
  *v8 = v0;
  v8[1] = sub_1C73FC360;
  v9 = OUTLINED_FUNCTION_49_3();

  return v11(v9);
}

uint64_t sub_1C73FC360()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1040) = v4;
  *(v2 + 1048) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C73FC464()
{
  OUTLINED_FUNCTION_115_0();
  v28 = v0;
  v2 = v0[131];
  v3 = v0[130];
  v4 = v0[121];
  v5 = v0[120];
  v6 = v0[119];
  OUTLINED_FUNCTION_148_8();
  memcpy(v0 + 78, v0 + 29, 0x50uLL);
  sub_1C7027A20((v0 + 29), (v0 + 88));
  v0[132] = sub_1C74720EC((v0 + 40), v0 + 78, v6, v5, v4, v3);
  if (v2)
  {
    v7 = v0[128];
    v8 = v0[127];
    v9 = v0[126];
    v10 = v0[124];
    memcpy(v0 + 98, v0 + 78, 0x50uLL);
    sub_1C7027A58((v0 + 98));
    swift_setDeallocating();
    (*(v7 + 8))(v9 + OBJC_IVAR____TtC18PhotosIntelligence29TitlingAdapterPromptGenerator_logger, v8);
    swift_deallocClassInstance();

    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v11 + 8))(v10);
    OUTLINED_FUNCTION_6_0();

    return v12();
  }

  else
  {
    v14 = v0[122];
    memcpy(v0 + 108, v0 + 78, 0x50uLL);
    sub_1C7027A58((v0 + 108));

    if (v14)
    {
      v27[0] = 11;
      StoryGenerationDiagnosticContext.generationStage.setter(v27);
      OUTLINED_FUNCTION_10_2();
      sub_1C7161CDC(0xD000000000000019, v15);
    }

    v0[133] = OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_logger;
    sub_1C75504FC();
    v16 = sub_1C754FEEC();
    sub_1C75511BC();

    if (OUTLINED_FUNCTION_140_0())
    {
      OUTLINED_FUNCTION_13_3();
      v17 = swift_slowAlloc();
      v18 = OUTLINED_FUNCTION_20_1();
      *v27 = v18;
      *v17 = 136315138;
      v19 = sub_1C75504BC();
      sub_1C6F765A4(v19, v20, v27);
      OUTLINED_FUNCTION_86_14();
      *(v17 + 4) = v1;
      OUTLINED_FUNCTION_39();
      _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    type metadata accessor for TitleCompletionGeneration();
    v26 = swift_task_alloc();
    v0[134] = v26;
    *v26 = v0;
    v26[1] = sub_1C73FC7AC;

    return static TitleCompletionGeneration.generateTitleCompletionsGMS(with:diagnosticContext:eventRecorder:progressReporter:aiEventReporting:)();
  }
}

uint64_t sub_1C73FC7AC()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_20();
  *v5 = v4;
  v7[135] = v6;
  v7[136] = v8;
  v7[137] = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C73FC8D8()
{
  OUTLINED_FUNCTION_75_1();
  sub_1C75504FC();
  v0 = sub_1C754FEEC();
  sub_1C75511BC();

  if (OUTLINED_FUNCTION_140_0())
  {
    OUTLINED_FUNCTION_13_3();
    v1 = swift_slowAlloc();
    v13 = OUTLINED_FUNCTION_20_1();
    *v1 = 136315138;
    v2 = OUTLINED_FUNCTION_117_0();
    *(v1 + 4) = sub_1C6F765A4(v2, v3, v4);
    OUTLINED_FUNCTION_57_5();
    _os_log_impl(v5, v6, v7, v8, v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    v9 = OUTLINED_FUNCTION_18_60();
    MEMORY[0x1CCA5F8E0](v9);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0](v10);
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_88_0();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_1C73FCA0C()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[126];
  v4 = v0[124];
  swift_setDeallocating();
  (*(v1 + 8))(v3 + OBJC_IVAR____TtC18PhotosIntelligence29TitlingAdapterPromptGenerator_logger, v2);
  swift_deallocClassInstance();
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v5 + 8))(v4);
  OUTLINED_FUNCTION_43();

  return v6();
}

uint64_t sub_1C73FCB00()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[126];
  swift_setDeallocating();
  (*(v1 + 8))(v3 + OBJC_IVAR____TtC18PhotosIntelligence29TitlingAdapterPromptGenerator_logger, v2);
  swift_deallocClassInstance();
  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C73FCBC4(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = v2 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext;
    v5 = *(v2 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext);
    v6 = *(v2 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext + 16);
    v7 = *(v4 + 8);
    v8 = v5;

    v9 = objc_autoreleasePoolPush();
    sub_1C71C70B8(v8, v7, v6, a1, &v11);
    objc_autoreleasePoolPop(v9);

    return v11;
  }

  else
  {
    sub_1C75504FC();
  }

  return a1;
}

uint64_t sub_1C73FCC74()
{
  OUTLINED_FUNCTION_42();
  *(v1 + 504) = v2;
  *(v1 + 304) = v3;
  *(v1 + 312) = v0;
  v4 = type metadata accessor for PhotoAnalysisPhotoLibraryService(0);
  OUTLINED_FUNCTION_76(v4);
  *(v1 + 320) = OUTLINED_FUNCTION_77();
  v5 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C73FCCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v15 = [*(*(v14 + 312) + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext) photoAnalysisClient];
  *(v14 + 328) = v15;
  if (v15)
  {
    v16 = v15;
    v17 = objc_allocWithZone(MEMORY[0x1E69BE630]);
    v18 = v16;
    v78 = [v17 initWithServiceProvider_];
    if (qword_1EC213F98 != -1)
    {
      swift_once();
    }

    v20 = *(v14 + 312);
    v19 = *(v14 + 320);
    v21 = *(v14 + 304);
    v22 = sub_1C754FF1C();
    v23 = __swift_project_value_buffer(v22, qword_1EC219F58);
    (*(*(v22 - 8) + 16))(v19, v23, v22);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215180, &qword_1C7575C00);
    v25 = (v19 + *(v24 + 28));
    v26 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
    v27 = [v26 processName];

    v28 = sub_1C755068C();
    v30 = v29;

    *v25 = v28;
    v25[1] = v30;
    *(v19 + *(v24 + 32)) = v78;
    v31 = *(v21 + 16);
    v32 = OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration;
    *(v14 + 336) = v31;
    *(v14 + 344) = v32;
    v33 = *(v20 + v32 + 48);
    *(v14 + 352) = v33;
    if (v31 >= v33)
    {
      v69 = *(v14 + 504);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215168, &qword_1C755C700);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C75604F0;
      *(inited + 32) = sub_1C755068C();
      *(inited + 40) = v71;
      v72 = sub_1C755068C();
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 48) = v72;
      *(inited + 56) = v73;
      *(inited + 80) = sub_1C755068C();
      *(inited + 88) = v74;
      *(inited + 120) = MEMORY[0x1E69E6370];
      *(inited + 96) = v69;
      *(v14 + 360) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0, &unk_1C755C710);
      OUTLINED_FUNCTION_66_2();
      *(v14 + 368) = sub_1C75504DC();
      v57 = swift_task_alloc();
      *(v14 + 376) = v57;
      *v57 = v14;
      v58 = sub_1C73FD1BC;
    }

    else
    {
      v34 = sub_1C754FEEC();
      sub_1C75511BC();
      v35 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = OUTLINED_FUNCTION_127();
        OUTLINED_FUNCTION_37_0(v37);
        OUTLINED_FUNCTION_8_1();
        _os_log_impl(v38, v39, v40, v41, v42, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      *(v14 + 400) = OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_logger;
      v43 = sub_1C754FEEC();
      sub_1C75511BC();
      v44 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = OUTLINED_FUNCTION_127();
        OUTLINED_FUNCTION_37_0(v46);
        OUTLINED_FUNCTION_8_1();
        _os_log_impl(v47, v48, v49, v50, v51, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215168, &qword_1C755C700);
      v52 = swift_initStackObject();
      *(v52 + 16) = xmmword_1C755BAB0;
      *(v52 + 32) = sub_1C755068C();
      *(v52 + 40) = v53;
      v54 = sub_1C755068C();
      *(v52 + 72) = MEMORY[0x1E69E6158];
      *(v52 + 48) = v54;
      *(v52 + 56) = v55;
      *(v14 + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0, &unk_1C755C710);
      OUTLINED_FUNCTION_66_2();
      *(v14 + 416) = sub_1C75504DC();
      v56 = swift_task_alloc();
      *(v14 + 424) = v56;
      *v56 = v14;
      OUTLINED_FUNCTION_107_11();
    }

    v57[1] = v58;
    OUTLINED_FUNCTION_61_3(*(v14 + 304));
    OUTLINED_FUNCTION_17_1();

    return PhotoAnalysisPhotoLibraryService.extendedCuratedAssets(from:options:)(v75, v76);
  }

  else
  {
    sub_1C6FE0D14();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    OUTLINED_FUNCTION_62_1(v59, 1);
    swift_willThrow();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_17_1();

    return v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1C73FD1BC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 384) = v5;
  *(v3 + 392) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C73FD2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_94_0();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_115_0();
  a18 = v20;
  v24 = &unk_1EC25B000;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v25 = sub_1C754FEEC();
  v26 = sub_1C75511BC();

  v27 = os_log_type_enabled(v25, v26);
  v28 = v20[48];
  if (v27)
  {
    v29 = v20[45];
    v30 = v20[42];
    v31 = OUTLINED_FUNCTION_20_1();
    v21 = OUTLINED_FUNCTION_20_1();
    a9 = v21;
    *v31 = 134218498;
    *(v31 + 4) = v30;

    OUTLINED_FUNCTION_220_3();
    *(v31 + 22) = 2080;
    sub_1C75504BC();
    OUTLINED_FUNCTION_59();

    v32 = sub_1C6F765A4(v28, v29, &a9);
    v24 = &unk_1EC25B000;

    *(v31 + 24) = v32;
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v33, v34, v35, v36, v37, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v38 = v20[48];
  if (*(v38 + 16) >= v20[44])
  {
    OUTLINED_FUNCTION_155_3();
    if (v59 != v60)
    {
      v20[57] = v24[266];
      sub_1C75504FC();
      v61 = sub_1C754FEEC();
      sub_1C75511BC();
      v62 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v62, v63))
      {
        OUTLINED_FUNCTION_11_3();
        v64 = swift_slowAlloc();
        OUTLINED_FUNCTION_82_18(v64, 3.8521e-34);

        *(v64 + 12) = 2048;
        *(v64 + 14) = v21;
        OUTLINED_FUNCTION_39();
        _os_log_impl(v65, v66, v67, v68, v69, 0x16u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215168, &qword_1C755C700);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C755BAB0;
      *(inited + 32) = sub_1C755068C();
      *(inited + 40) = v82;
      *(inited + 72) = MEMORY[0x1E69E6530];
      *(inited + 48) = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0, &unk_1C755C710);
      v83 = sub_1C75504DC();
      v20[58] = v83;
      v84 = swift_task_alloc();
      v20[59] = v84;
      *(v84 + 16) = v38;
      *(v84 + 24) = v83;
      v85 = swift_task_alloc();
      v86 = OUTLINED_FUNCTION_248_4(v85);
      *v86 = v87;
      OUTLINED_FUNCTION_59_26(v86);
      OUTLINED_FUNCTION_61_3(0x4164657461727563);
      OUTLINED_FUNCTION_44();

      return sub_1C729961C(v88, v89, v90, v91, v92, v93);
    }

    else
    {
      v70 = v20[41];
      OUTLINED_FUNCTION_4_97();
      sub_1C73FED84(v71, v72);

      OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_44();

      return v75(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, a12);
    }
  }

  else
  {

    v20[50] = v24[266];
    v39 = sub_1C754FEEC();
    sub_1C75511BC();
    v40 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v42);
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v43, v44, v45, v46, v47, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215168, &qword_1C755C700);
    v48 = swift_initStackObject();
    *(v48 + 16) = xmmword_1C755BAB0;
    *(v48 + 32) = sub_1C755068C();
    *(v48 + 40) = v49;
    v50 = sub_1C755068C();
    *(v48 + 72) = MEMORY[0x1E69E6158];
    *(v48 + 48) = v50;
    *(v48 + 56) = v51;
    v20[51] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0, &unk_1C755C710);
    OUTLINED_FUNCTION_66_2();
    v20[52] = sub_1C75504DC();
    v52 = swift_task_alloc();
    v20[53] = v52;
    *v52 = v20;
    OUTLINED_FUNCTION_107_11();
    *(v53 + 8) = v54;
    OUTLINED_FUNCTION_61_3(v20[38]);
    OUTLINED_FUNCTION_44();

    return PhotoAnalysisPhotoLibraryService.extendedCuratedAssets(from:options:)(v55, v56);
  }
}

uint64_t sub_1C73FD7B8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 432) = v5;
  *(v3 + 440) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C73FD8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_94_0();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_115_0();
  a18 = v20;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v24 = sub_1C754FEEC();
  v25 = sub_1C75511BC();

  v26 = os_log_type_enabled(v24, v25);
  v27 = v20[54];
  if (v26)
  {
    v28 = v20[51];
    v29 = v20[42];
    v30 = OUTLINED_FUNCTION_20_1();
    v21 = OUTLINED_FUNCTION_20_1();
    a9 = v21;
    *v30 = 134218498;
    *(v30 + 4) = v29;

    OUTLINED_FUNCTION_220_3();
    *(v30 + 22) = 2080;
    sub_1C75504BC();
    OUTLINED_FUNCTION_59();

    v31 = sub_1C6F765A4(v27, v28, &a9);

    *(v30 + 24) = v31;
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v32, v33, v34, v35, v36, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v37 = v20[54];
  OUTLINED_FUNCTION_155_3();
  if (v38 != v39)
  {
    v20[57] = OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_logger;
    sub_1C75504FC();
    v40 = sub_1C754FEEC();
    sub_1C75511BC();
    v41 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v41, v42))
    {
      OUTLINED_FUNCTION_11_3();
      v43 = swift_slowAlloc();
      OUTLINED_FUNCTION_82_18(v43, 3.8521e-34);

      *(v43 + 12) = 2048;
      *(v43 + 14) = v21;
      OUTLINED_FUNCTION_39();
      _os_log_impl(v44, v45, v46, v47, v48, 0x16u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215168, &qword_1C755C700);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C755BAB0;
    *(inited + 32) = sub_1C755068C();
    *(inited + 40) = v62;
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 48) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0, &unk_1C755C710);
    v63 = sub_1C75504DC();
    v20[58] = v63;
    v64 = swift_task_alloc();
    v20[59] = v64;
    *(v64 + 16) = v37;
    *(v64 + 24) = v63;
    v65 = swift_task_alloc();
    v66 = OUTLINED_FUNCTION_248_4(v65);
    *v66 = v67;
    OUTLINED_FUNCTION_59_26(v66);
    OUTLINED_FUNCTION_61_3(0x4164657461727563);
    OUTLINED_FUNCTION_44();

    return sub_1C729961C(v68, v69, v70, v71, v72, v73);
  }

  else
  {
    v49 = v20[41];
    OUTLINED_FUNCTION_4_97();
    sub_1C73FED84(v50, v51);

    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_44();

    return v54(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12);
  }
}

uint64_t sub_1C73FDC40()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 488) = v5;
  *(v3 + 496) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C73FDD48()
{
  OUTLINED_FUNCTION_75_1();

  swift_bridgeObjectRetain_n();
  sub_1C75504FC();
  v1 = sub_1C754FEEC();
  sub_1C75511BC();
  v2 = OUTLINED_FUNCTION_72();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[61];
  v6 = v0[56];
  v7 = v0[40];
  v8 = v0[41];
  if (v4)
  {
    OUTLINED_FUNCTION_11_3();
    v9 = swift_slowAlloc();
    *v9 = 134218240;
    v10 = *(v6 + 16);

    *(v9 + 4) = v10;

    *(v9 + 12) = 2048;
    v11 = *(v5 + 16);

    *(v9 + 14) = v11;

    OUTLINED_FUNCTION_57_5();
    _os_log_impl(v12, v13, v14, v15, v9, 0x16u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    v16 = v1;
  }

  else
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v16 = v8;
    v8 = v1;
  }

  OUTLINED_FUNCTION_4_97();
  sub_1C73FED84(v7, v17);

  v18 = OUTLINED_FUNCTION_0_89();

  return v19(v18);
}

uint64_t sub_1C73FDEC8()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  OUTLINED_FUNCTION_4_97();
  sub_1C73FED84(v1, v3);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C73FDF5C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 320);

  OUTLINED_FUNCTION_4_97();
  sub_1C73FED84(v1, v2);

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C73FDFCC()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 320);

  OUTLINED_FUNCTION_4_97();
  sub_1C73FED84(v1, v2);

  OUTLINED_FUNCTION_43();

  return v3();
}

id sub_1C73FE03C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a2;
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B958, &qword_1C7589970);
  v3[4] = sub_1C73FEBC8();
  result = [a1 fetchedObjects];
  if (!result)
  {
    v10 = 0;
LABEL_17:
    *v3 = v10;
    return result;
  }

  v5 = result;
  sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
  OUTLINED_FUNCTION_63();
  v6 = sub_1C7550B5C();

  v7 = sub_1C6FB6304();
  if (!v7)
  {

    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v8 = v7;
  v23 = MEMORY[0x1E69E7CC0];
  result = sub_1C716C9F0(0, v7 & ~(v7 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v22 = v3;
    v9 = 0;
    v10 = v23;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = OUTLINED_FUNCTION_154();
        v12 = MEMORY[0x1CCA5DDD0](v11);
      }

      else
      {
        v12 = *(v6 + 8 * v9 + 32);
      }

      v13 = v12;
      v14 = [v13 uuid];
      if (v14)
      {
        v15 = v14;
        v16 = sub_1C755068C();
        v18 = v17;
      }

      else
      {

        v16 = 0;
        v18 = 0;
      }

      v20 = *(v23 + 16);
      v19 = *(v23 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1C716C9F0(v19 > 1, v20 + 1, 1);
      }

      ++v9;
      *(v23 + 16) = v20 + 1;
      v21 = v23 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
    }

    while (v8 != v9);

    v3 = v22;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t FreeformStoryGenerator.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_safetyController));
  v3 = *(v0 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyAssetsFetcher));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_aiEventReporting));
  return v0;
}

uint64_t FreeformStoryGenerator.__deallocating_deinit()
{
  FreeformStoryGenerator.deinit();

  return swift_deallocClassInstance();
}

void sub_1C73FE318(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C754DDCC();
  [a3 setPhotosGraphData_];
}

uint64_t sub_1C73FE370(const void *a1, uint64_t *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v27 = a2;
  v28 = a3;
  v26 = a1;
  v14 = *(a7 - 8);
  v25 = a9;
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  (*(v18 + 16))(v21, a4, a8);
  (*(v14 + 16))(v16, a5, a7);
  v23 = sub_1C73FE574(v26, v27, v28, v21, v16, v22, a7, a8, v25, a10);
  (*(v14 + 8))(a5, a7);
  (*(v18 + 8))(a4, a8);
  return v23;
}

uint64_t sub_1C73FE574(const void *a1, uint64_t *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v32 = a8;
  v33 = a10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v31);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_0, a4, a8);
  v29 = a7;
  v30 = a9;
  v19 = __swift_allocate_boxed_opaque_existential_0(&v28);
  (*(*(a7 - 8) + 32))(v19, a5, a7);
  memcpy(__dst, a1, sizeof(__dst));
  v20 = *a2;
  v21 = *(a2 + 4);
  v22 = a2[2];
  v23 = OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_logger;
  if (qword_1EDD09CF0 != -1)
  {
    swift_once();
  }

  v24 = sub_1C754FF1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDD28B68);
  (*(*(v24 - 8) + 16))(a6 + v23, v25, v24);
  memcpy((a6 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration), __dst, 0x4CuLL);
  v26 = a6 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext;
  *v26 = v20;
  *(v26 + 8) = v21;
  *(v26 + 16) = v22;
  sub_1C6F699F8(&v31, a6 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_safetyController);
  sub_1C6F699F8(a3, a6 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyAssetsFetcher);
  sub_1C6F699F8(&v28, a6 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_aiEventReporting);
  return a6;
}

uint64_t sub_1C73FE764(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  v4 = OUTLINED_FUNCTION_90();
  v5(v4);
  return a2;
}

uint64_t sub_1C73FE834(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1C73FE894(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_1C75504FC();
    v5 = a4;
    sub_1C75504FC();

    return sub_1C75504FC();
  }

  return result;
}

uint64_t type metadata accessor for FreeformStoryGenerator(uint64_t a1)
{
  result = qword_1EC21B948;
  if (!qword_1EC21B948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C73FE948(uint64_t a1)
{
  result = sub_1C754FF1C();
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

uint64_t get_enum_tag_for_layout_string_18PhotosIntelligence22FreeformStoryGeneratorC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 24) & 0xFu) <= 0xB)
  {
    return *(a1 + 24) & 0xF;
  }

  else
  {
    return (*a1 + 12);
  }
}

uint64_t sub_1C73FEA40(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF4 && *(a1 + 25))
    {
      v2 = *a1 + 243;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 0xC)
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

uint64_t sub_1C73FEA80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 244;
    if (a3 >= 0xF4)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C73FEAC8(uint64_t result, unsigned int a2)
{
  v2 = a2 - 12;
  if (a2 >= 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 12;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_1C73FEAF4()
{
  OUTLINED_FUNCTION_123();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_244_0();

  return sub_1C73F50F0(v3, v4, v5, v6, v7);
}

uint64_t sub_1C73FEBA4(uint64_t result)
{
  v1 = *(result + 128) & 1;
  *(result + 72) &= 0x30101uLL;
  *(result + 128) = v1;
  return result;
}

unint64_t sub_1C73FEBC8()
{
  result = qword_1EDD06A80;
  if (!qword_1EDD06A80)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21B958, &qword_1C7589970);
    v4[0] = sub_1C73FEC4C();
    result = swift_getWitnessTable(MEMORY[0x1E69E7C70], v3, v4);
    atomic_store(result, &qword_1EDD06A80);
  }

  return result;
}

unint64_t sub_1C73FEC4C()
{
  result = qword_1EDD06A88;
  if (!qword_1EDD06A88)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC215170, &qword_1C755C708);
    v4[0] = sub_1C70950A8();
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EDD06A88);
  }

  return result;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C73FED14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C60, &qword_1C757ED30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C73FED84(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C73FEDD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216FF8, &unk_1C7568E70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C73FEE48(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    v4 = OUTLINED_FUNCTION_63();
    result = swift_getWitnessTable(v4);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_24_40()
{
  v2 = *(v0 + 2584);
  v3 = *(v0 + 2552);

  return sub_1C73FE764(v2, v3, type metadata accessor for FreeformStory);
}

uint64_t OUTLINED_FUNCTION_32_37()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_53_34()
{
  v3 = v0[1];
  *(v1 + 2376) = *v0;
  *(v1 + 2392) = v3;
  v4 = v0[3];
  *(v1 + 2408) = v0[2];
  *(v1 + 2424) = v4;

  return sub_1C6FDE928(v1 + 2376, v1 + 2440);
}

unint64_t OUTLINED_FUNCTION_56_28@<X0>(char a1@<W8>)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t OUTLINED_FUNCTION_87_20@<X0>(char a1@<W8>)
{
  v3 = v1 + 9;
  if (a1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t OUTLINED_FUNCTION_120_10()
{

  return sub_1C73FED84(v0, type metadata accessor for QueryTokenCategoryType);
}

void OUTLINED_FUNCTION_128_9()
{
  *(v0 + 2760) = v1;
  v3 = *(v0 + 2520);

  sub_1C73F2B9C(v1, v3);
}

uint64_t OUTLINED_FUNCTION_129_8()
{
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[37];
  v5 = v0[38];
  v0[8] = v0[36];
  v0[9] = v4;
  v0[10] = v5;
  v0[11] = v3;
  v0[12] = v2;

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_139_6(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_140_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  sub_1C6F7ED9C(v8 > 1, v7, 1, a4, a5, a6, a7);
}

void *OUTLINED_FUNCTION_148_8()
{

  return memcpy((v0 + 320), (v0 + 16), 0x130uLL);
}

void OUTLINED_FUNCTION_152_6(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  *(v2 + 624) = *v3;
  *(v2 + 632) = v4;
  *(v2 + 640) = v5;
}

uint64_t OUTLINED_FUNCTION_162_7(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);

  return FreeformStoryDiagnosticsGenerator.save(_:uniqueIdentifier:)(va, v25, 0);
}

uint64_t OUTLINED_FUNCTION_163_4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);

  return FreeformStoryDiagnosticsGenerator.save(_:associatedDiagnosticFileName:)(va, v25, v26);
}

void OUTLINED_FUNCTION_164_5()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_167_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  sub_1C6F7ED9C(0, v7, 0, a4, a5, a6, a7);
}

uint64_t OUTLINED_FUNCTION_168_7()
{

  return sub_1C755180C();
}

uint64_t OUTLINED_FUNCTION_169_6()
{
  v2 = *(v0 + 2584);
  v3 = *(v0 + 2504);

  return sub_1C73A9410(v2, v3);
}

void *OUTLINED_FUNCTION_171_3(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return memcpy(va, (v11 + 48), 0x41uLL);
}

void *OUTLINED_FUNCTION_172_4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va1, a25);
  va_start(__srca, a25);
  __src = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);
  v31 = va_arg(va1, void);
  v32 = va_arg(va1, void);
  v33 = va_arg(va1, void);
  v34 = va_arg(va1, void);
  v35 = va_arg(va1, void);
  v36 = va_arg(va1, void);

  return memcpy(a1, __srca, 0x41uLL);
}

uint64_t OUTLINED_FUNCTION_174_4()
{
}

uint64_t OUTLINED_FUNCTION_177_3()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_180_4@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *v1 = *a1;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = *(a1 + 24);
  return result;
}

void *OUTLINED_FUNCTION_182_3(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(__srca, a11);
  __src = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);

  return memcpy((v11 + 1680), __srca, 0x41uLL);
}

void *OUTLINED_FUNCTION_183_3(void *a1)
{

  return memcpy(a1, (v1 + 48), 0x41uLL);
}

uint64_t OUTLINED_FUNCTION_185_3@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 + 16);
  *a1 = v2;
  *(a1 + 4) = v1;
  return result;
}

void OUTLINED_FUNCTION_186_4(void *a1@<X8>)
{
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v4;
  a1[4] = v3;
}

uint64_t OUTLINED_FUNCTION_193_3(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t OUTLINED_FUNCTION_197_5(uint64_t a1)
{
  *(v1 + 472) = a1;

  return sub_1C754F2AC();
}

uint64_t OUTLINED_FUNCTION_198_3()
{
}

double OUTLINED_FUNCTION_202_3()
{
  *(v0 + 12) = 2048;
  result = v1;
  *(v0 + 14) = v1;
  *(v0 + 22) = 2048;
  return result;
}

void OUTLINED_FUNCTION_210_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_1C7161CDC(a19, a20);
}

BOOL OUTLINED_FUNCTION_211_5(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_214_2()
{
}

uint64_t OUTLINED_FUNCTION_215_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{

  return sub_1C6F765A4(v26, v27, &a26);
}

BOOL OUTLINED_FUNCTION_216_4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_217_2()
{

  return swift_arrayDestroy();
}

void *OUTLINED_FUNCTION_219_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12)
{

  return sub_1C6FE0E14(v14, v12, v13, v15, a12);
}

uint64_t OUTLINED_FUNCTION_220_3()
{
  *(v0 + 12) = 2048;
  *(v0 + 14) = *(v1 + 16);
}

uint64_t OUTLINED_FUNCTION_221_3()
{
}

uint64_t OUTLINED_FUNCTION_222_1()
{
}

void OUTLINED_FUNCTION_223_3(uint64_t a1, uint64_t a2, PhotosIntelligence::FreeformStoryCompletionSync *storyCompletion, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t storyCompletiona)
{

  FreeformStoryDiagnosticsGenerator.save(storyCompletion:)(&storyCompletiona);
}

void *OUTLINED_FUNCTION_224_2()
{

  return memcpy((v1 + 16), v0, 0x130uLL);
}

BOOL OUTLINED_FUNCTION_226_3()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_227_3(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

__n128 OUTLINED_FUNCTION_232_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a19, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a20)
{
  *(v21 - 120) = a1;
  result = a20;
  *v20 = a20.n128_u32[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_238_3()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 736));

  return __swift_destroy_boxed_opaque_existential_1((v0 + 696));
}

void *OUTLINED_FUNCTION_251_3(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = a1 + 2;

  return memcpy(v4, (v2 + 832), 0x80uLL);
}

void OUTLINED_FUNCTION_252_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

void *OUTLINED_FUNCTION_253_3()
{
  v2 = *(v0 + 720);

  return memcpy((v0 + 320), v2, 0x130uLL);
}

uint64_t OUTLINED_FUNCTION_254_0()
{

  return sub_1C75504DC();
}

id OUTLINED_FUNCTION_256_3(float a1)
{
  *v1 = a1;

  return v2;
}

id OUTLINED_FUNCTION_257_3(float a1)
{
  *v1 = a1;

  return v2;
}

uint64_t OUTLINED_FUNCTION_258_2()
{

  return sub_1C6FB52D4(v0 + 48, v0 + 1536);
}

uint64_t OUTLINED_FUNCTION_259_1()
{
}

void *OUTLINED_FUNCTION_260_3(void *a1)
{

  return memcpy(a1, (v1 + 1424), 0x58uLL);
}

void *OUTLINED_FUNCTION_262_3(void *a1)
{

  return memcpy(a1, (v1 + 624), 0xCFuLL);
}

void OUTLINED_FUNCTION_263_1()
{
}

uint64_t OUTLINED_FUNCTION_264_2(void *__src, uint64_t a2, uint64_t a3)
{

  return FreeformStoryDiagnosticsGenerator.save(_:uniqueIdentifier:)(__src, a2, a3);
}

void *OUTLINED_FUNCTION_266_3(uint64_t a1, const void *a2)
{

  return memcpy((v2 + 16), a2, 0x130uLL);
}

char *sub_1C73FF980(void *a1, uint64_t a2)
{
  v5 = *(v2 + qword_1EC21B180);
  type metadata accessor for PerformanceMeasure(0);
  swift_allocObject();
  v6 = v5;
  PerformanceMeasure.init(name:log:)();
  v7 = a1;
  v8 = sub_1C754FEEC();
  v9 = sub_1C755117C();

  v10 = &selRef_clsSceneClassifications;
  if (os_log_type_enabled(v8, v9))
  {
    v11 = swift_slowAlloc();
    v54[0] = swift_slowAlloc();
    *v11 = 136380931;
    v12 = a2;
    v13 = [v7 title];
    v14 = sub_1C755068C();
    v16 = v15;

    v17 = sub_1C6F765A4(v14, v16, v54);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2080;
    v18 = [v7 localIdentifier];
    v19 = sub_1C755068C();
    v21 = v20;

    v22 = v19;
    a2 = v12;
    v23 = sub_1C6F765A4(v22, v21, v54);

    *(v11 + 14) = v23;
    v10 = &selRef_clsSceneClassifications;
    _os_log_impl(&dword_1C6F5C000, v8, v9, "Start electing assets for Highlight (%{private}s) %s", v11, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_0_65();
    MEMORY[0x1CCA5F8E0](v11, -1, -1);
  }

  v24 = sub_1C70A65EC();
  result = [objc_opt_self() fetchExtendedCuratedAssetsInAssetCollection:v7 options:v24];
  if (result)
  {
    v26 = result;
    if ([result count])
    {
      sub_1C70A521C(v26, a2);
      v28 = v27;
      v29 = objc_allocWithZone(type metadata accessor for AssetElectionResult());
      v30 = AssetElectionResult.init(fetchResult:)(v28);

      sub_1C6F85170();

      return v30;
    }

    else
    {
      v31 = v7;
      v32 = sub_1C754FEEC();
      v33 = sub_1C755117C();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v54[0] = swift_slowAlloc();
        v35 = v54[0];
        *v34 = 136315138;
        v36 = [v31 v10[481]];
        v37 = v31;
        v38 = sub_1C755068C();
        v40 = v39;

        v41 = v38;
        v31 = v37;
        v42 = sub_1C6F765A4(v41, v40, v54);

        *(v34 + 4) = v42;
        v10 = &selRef_clsSceneClassifications;
        _os_log_impl(&dword_1C6F5C000, v32, v33, "Found 0 asset in event %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        OUTLINED_FUNCTION_0_65();
        MEMORY[0x1CCA5F8E0](v34, -1, -1);
      }

      v43 = objc_allocWithZone(type metadata accessor for AssetElectionResult());
      v44 = v26;
      v45 = AssetElectionResult.init(fetchResult:)(v44);
      v46 = [v31 v10[481]];
      v47 = sub_1C755068C();
      v49 = v48;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B960, &unk_1C75899A0);
      sub_1C73FFE08();
      v50 = swift_allocError();
      *v51 = 5;
      *(v51 + 8) = v47;
      *(v51 + 16) = v49;
      *(v51 + 24) = 1;

      v52 = OBJC_IVAR____TtC18PhotosIntelligence19AssetElectionResult_error;
      swift_beginAccess();
      v53 = *&v45[v52];
      *&v45[v52] = v50;

      sub_1C6F85170();

      return v45;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1C73FFE08()
{
  result = qword_1EC21B968;
  if (!qword_1EC21B968)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21B960, &unk_1C75899A0);
    result = swift_getWitnessTable(byte_1C75866C0, v3, v0, v1);
    atomic_store(result, &qword_1EC21B968);
  }

  return result;
}

id HighlightAssetElector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HighlightAssetElector(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for HighlightAssetElector(uint64_t a1)
{
  result = qword_1EC21B970;
  if (!qword_1EC21B970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C73FFF78(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  v7 = (v6 + 16);
  v12[4] = a2;
  v12[5] = v6;
  OUTLINED_FUNCTION_4_78();
  OUTLINED_FUNCTION_0_173();
  v12[2] = v8;
  v12[3] = a3;
  v9 = _Block_copy(v12);

  [a1 enumerateObjectsUsingBlock_];
  _Block_release(v9);
  swift_beginAccess();
  v10 = *v7;
  sub_1C75504FC();

  return v10;
}

uint64_t static MemoryCollectionFetcher.describe(collections:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  v12[4] = sub_1C7400948;
  v12[5] = v7;
  OUTLINED_FUNCTION_4_78();
  OUTLINED_FUNCTION_0_173();
  v12[2] = v8;
  v12[3] = &block_descriptor_40;
  v9 = _Block_copy(v12);

  [a1 enumerateObjectsUsingBlock_];
  _Block_release(v9);
  swift_beginAccess();
  v10 = *(v6 + 16);
  sub_1C75504FC();

  return v10;
}

uint64_t static MemoryCollectionFetcher.predicateForFavorites(_:)(char a1)
{
  sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C75604F0;
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1C6F6D524();
  v3 = MEMORY[0x1E69E6370];
  *(v2 + 32) = 0x657469726F766166;
  *(v2 + 40) = 0xE800000000000000;
  v4 = MEMORY[0x1E69E63A8];
  *(v2 + 96) = v3;
  *(v2 + 104) = v4;
  *(v2 + 72) = a1;
  return sub_1C755112C();
}

uint64_t static MemoryCollectionFetcher.defaultSortDescriptors(ascending:)(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C75650C0;
  v3 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v2 + 32) = sub_1C6F6AF98(0x7461447472617473, 0xE900000000000065, a1);
  v4 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v2 + 40) = sub_1C6F6AF98(0x65746144646E65, 0xE700000000000000, a1);
  v5 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v2 + 48) = sub_1C6F6AF98(0x44497463656A626FLL, 0xE800000000000000, 1);
  return v2;
}

uint64_t sub_1C74003A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = 0xE000000000000000;
  sub_1C755180C();
  sub_1C6F65BE8(0, &qword_1EDD0CCF8, 0x1E69788F0);
  v11 = sub_1C755204C();
  v13 = v12;

  MEMORY[0x1CCA5CD70](46, 0xE100000000000000);
  MEMORY[0x1CCA5CD70](a5, a6);
  MEMORY[0x1CCA5CD70](32, 0xE100000000000000);
  v14 = [a1 uuid];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1C755068C();
    v10 = v17;
  }

  else
  {
    v16 = 0;
  }

  MEMORY[0x1CCA5CD70](v16, v10);

  MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
  v18 = [a1 title];
  v19 = sub_1C755068C();
  v21 = v20;

  MEMORY[0x1CCA5CD70](v19, v21);

  MEMORY[0x1CCA5CD70](8236, 0xE200000000000000);
  v22 = [a1 subtitle];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1C755068C();
    v26 = v25;
  }

  else
  {
    v26 = 0xEB00000000656C74;
    v24 = 0x6974627573206F4ELL;
  }

  MEMORY[0x1CCA5CD70](v24, v26);

  MEMORY[0x1CCA5CD70](10272, 0xE200000000000000);
  v27 = [objc_opt_self() stringForCategory_];
  v28 = sub_1C755068C();
  v30 = v29;

  MEMORY[0x1CCA5CD70](v28, v30);

  MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
  swift_beginAccess();
  sub_1C6FB0600();
  v31 = *(*(a4 + 16) + 16);
  sub_1C6FB0EFC();
  v32 = *(a4 + 16);
  *(v32 + 16) = v31 + 1;
  v33 = v32 + 16 * v31;
  *(v33 + 32) = v11;
  *(v33 + 40) = v13;
  *(a4 + 16) = v32;
  return swift_endAccess();
}

uint64_t sub_1C7400660(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = 0xE000000000000000;
  sub_1C755180C();
  sub_1C6F65BE8(0, &qword_1EDD0CCF8, 0x1E69788F0);
  v11 = sub_1C755204C();
  v13 = v12;

  MEMORY[0x1CCA5CD70](46, 0xE100000000000000);
  v14 = (*(*(*(a6 + 8) + 8) + 16))(a5);
  MEMORY[0x1CCA5CD70](v14);

  MEMORY[0x1CCA5CD70](32, 0xE100000000000000);
  v15 = [a1 uuid];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1C755068C();
    v10 = v18;
  }

  else
  {
    v17 = 0;
  }

  MEMORY[0x1CCA5CD70](v17, v10);

  MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
  v19 = [a1 title];
  v20 = sub_1C755068C();
  v22 = v21;

  MEMORY[0x1CCA5CD70](v20, v22);

  MEMORY[0x1CCA5CD70](8236, 0xE200000000000000);
  v23 = [a1 subtitle];
  if (v23)
  {
    v24 = v23;
    v25 = sub_1C755068C();
    v27 = v26;
  }

  else
  {
    v27 = 0xEB00000000656C74;
    v25 = 0x6974627573206F4ELL;
  }

  MEMORY[0x1CCA5CD70](v25, v27);

  MEMORY[0x1CCA5CD70](10272, 0xE200000000000000);
  v28 = [objc_opt_self() stringForCategory_];
  v29 = sub_1C755068C();
  v31 = v30;

  MEMORY[0x1CCA5CD70](v29, v31);

  MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
  swift_beginAccess();
  sub_1C6FB0600();
  v32 = *(*(a4 + 16) + 16);
  sub_1C6FB0EFC();
  v33 = *(a4 + 16);
  *(v33 + 16) = v32 + 1;
  v34 = v33 + 16 * v32;
  *(v34 + 32) = v11;
  *(v34 + 40) = v13;
  *(a4 + 16) = v33;
  return swift_endAccess();
}

uint64_t Calendar.nearestMidnight(for:)@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1C754DF6C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  sub_1C754E18C();
  sub_1C754E18C();
  sub_1C754DEBC();
  v13 = *(v4 + 8);
  v13(v6, v3);
  sub_1C754DEAC();
  v15 = fabs(v14);
  sub_1C754DEAC();
  v17 = fabs(v16);
  if (v15 >= v17)
  {
    v18 = v12;
  }

  else
  {
    v18 = v9;
  }

  if (v15 >= v17)
  {
    v19 = v9;
  }

  else
  {
    v19 = v12;
  }

  v13(v18, v3);
  return (*(v4 + 32))(a2, v19, v3);
}

uint64_t sub_1C7400BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BA30, &qword_1C7589DE0);
  v4[6] = swift_task_alloc();
  v4[7] = type metadata accessor for CuratedStory(0);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B998, &qword_1C7589A28);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BA38, &qword_1C7589DE8);
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v4[2] = a1;

  return MEMORY[0x1EEE6DFA0](sub_1C7400D4C, 0, 0);
}

uint64_t sub_1C7400D4C()
{
  OUTLINED_FUNCTION_49_0();
  (*(v0[10] + 16))(v0[11], v0[5], v0[9]);
  sub_1C7099594(&qword_1EC21BA40, &qword_1EC21B998, &qword_1C7589A28, MEMORY[0x1E69E87D0]);
  sub_1C7550E8C();
  OUTLINED_FUNCTION_33_1(&qword_1EC21BA48, &qword_1EC21BA38, &qword_1C7589DE8);
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_4_98(v1);

  return MEMORY[0x1EEE6D8C8](v2, v3, v4);
}

uint64_t sub_1C7400E54()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  v3[16] = v0;

  if (v0)
  {
    (*(v3[13] + 8))(v3[14], v3[12]);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7400F70()
{
  v1 = v0[6];
  if (__swift_getEnumTagSinglePayload(v1, 1, v0[7]) == 1)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);
    sub_1C6FD7FC8(v1, &qword_1EC21BA30, &qword_1C7589DE0);
    v2 = v0[2];

    v3 = v0[1];

    return v3(v2);
  }

  else
  {
    v5 = v0[3];
    sub_1C7404954(v1, v0[8], type metadata accessor for CuratedStory);
    v8 = (v5 + *v5);
    v6 = swift_task_alloc();
    v0[17] = v6;
    *v6 = v0;
    v6[1] = sub_1C74011C4;
    v7 = v0[8];

    return (v8)(v0 + 2, v7);
  }
}

uint64_t sub_1C740114C()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_23_49();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C74011C4()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  v3[18] = v0;

  if (v0)
  {
    v8 = v3[13];
    v7 = v3[14];
    v9 = v3[12];
    OUTLINED_FUNCTION_8_84();
    (*(v8 + 8))(v7, v9);
  }

  else
  {
    OUTLINED_FUNCTION_8_84();
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C74012F4()
{
  OUTLINED_FUNCTION_33_1(&qword_1EC21BA48, &qword_1EC21BA38, &qword_1C7589DE8);
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_4_98(v1);

  return MEMORY[0x1EEE6D8C8](v2, v3, v4);
}

uint64_t sub_1C740138C()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_23_49();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t FreeformStoryGenerator.generateMultiStory(from:pipelineType:storySession:diagnosticsGenerator:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_49_0();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  *(v1 + 568) = v2;
  *(v1 + 560) = v7;
  *(v1 + 552) = v8;
  *(v1 + 544) = v9;
  *(v1 + 536) = v10;
  *(v1 + 576) = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B980, &qword_1C7589A08);
  *(v1 + 584) = OUTLINED_FUNCTION_77();
  *(v1 + 592) = type metadata accessor for FreeformStory(0);
  *(v1 + 600) = OUTLINED_FUNCTION_77();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B988, &qword_1C7589A10);
  *(v1 + 608) = v11;
  OUTLINED_FUNCTION_18(v11);
  *(v1 + 616) = v12;
  *(v1 + 624) = OUTLINED_FUNCTION_77();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B990, &unk_1C7589A18);
  *(v1 + 632) = v13;
  OUTLINED_FUNCTION_18(v13);
  *(v1 + 640) = v14;
  *(v1 + 648) = OUTLINED_FUNCTION_77();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B0F8, &qword_1C75862B0);
  *(v1 + 656) = v15;
  OUTLINED_FUNCTION_18(v15);
  *(v1 + 664) = v16;
  *(v1 + 672) = OUTLINED_FUNCTION_77();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B998, &qword_1C7589A28);
  *(v1 + 680) = v17;
  OUTLINED_FUNCTION_18(v17);
  *(v1 + 688) = v18;
  *(v1 + 696) = OUTLINED_FUNCTION_77();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B9A0, &qword_1C7589A30);
  *(v1 + 704) = v19;
  OUTLINED_FUNCTION_18(v19);
  *(v1 + 712) = v20;
  *(v1 + 720) = OUTLINED_FUNCTION_77();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B140, &qword_1C7586320);
  *(v1 + 728) = v21;
  OUTLINED_FUNCTION_18(v21);
  *(v1 + 736) = v22;
  *(v1 + 744) = OUTLINED_FUNCTION_77();
  *(v1 + 752) = _s9GeneratorVMa_1(0);
  *(v1 + 760) = OUTLINED_FUNCTION_77();
  v23 = sub_1C754F2FC();
  *(v1 + 768) = v23;
  OUTLINED_FUNCTION_18(v23);
  *(v1 + 776) = v24;
  *(v1 + 784) = swift_task_alloc();
  *(v1 + 792) = swift_task_alloc();
  *(v1 + 800) = swift_task_alloc();
  *(v1 + 808) = swift_task_alloc();
  *(v1 + 816) = swift_task_alloc();
  v25 = sub_1C754F38C();
  *(v1 + 824) = v25;
  OUTLINED_FUNCTION_18(v25);
  *(v1 + 832) = v26;
  *(v1 + 840) = swift_task_alloc();
  *(v1 + 848) = swift_task_alloc();
  *(v1 + 856) = swift_task_alloc();
  memcpy((v1 + 16), v6, 0x130uLL);
  *(v1 + 928) = *v4;
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v27, v28, v29);
}

uint64_t sub_1C7401840()
{
  v82 = v0;
  v1 = *(v0 + 568);
  v2 = *(v0 + 552);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C754F1CC();
  v3 = *(*(v0 + 208) + 16);
  v4 = (v1 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration);
  v5 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration + 64);
  if (v3 >= v5)
  {
    sub_1C754F2CC();
    __src = (v0 + 16);
    v21 = *(v0 + 928);
    OUTLINED_FUNCTION_70(*(v0 + 552), v2[3]);
    sub_1C754F15C();
    sub_1C754F2BC();
    sub_1C754F2BC();
    sub_1C754F2BC();
    memcpy(__dst, (v0 + 48), 0x41uLL);
    if (v21)
    {
      v22 = &unk_1F46A8548;
    }

    else
    {
      memcpy(v81, __src, 0x130uLL);
      v22 = static FreeformStoryGenerator.storyTypesForMaxiMC(from:eventRecorder:)(v81);
    }

    v23 = *(v0 + 544);
    v24 = *(v23 + *(type metadata accessor for StoryGenerationSession(0) + 24));
    if (v24)
    {
      v81[0] = 0;
      v81[1] = 0xE000000000000000;
      sub_1C755180C();

      OUTLINED_FUNCTION_22_62();
      v81[0] = v26 + 18;
      v81[1] = v25;
      v27 = MEMORY[0x1CCA5D090](v22, &type metadata for FreeformStoryType);
      MEMORY[0x1CCA5CD70](v27);

      sub_1C7161CDC(v81[0], v81[1]);
    }

    v55 = sub_1C7403C98(__dst, v22);
    v68 = v24;
    v30 = *(v0 + 760);
    v31 = *(v0 + 752);
    v32 = *(v0 + 568);

    v71 = v4[5];
    v72 = *v4;
    sub_1C6FB5E28(v32 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_aiEventReporting, v30 + *(v31 + 28));
    if (qword_1EC213E48 != -1)
    {
      swift_once();
    }

    v69 = *(v0 + 848);
    v74 = *(v0 + 824);
    v50 = *(v0 + 816);
    v33 = *(v0 + 792);
    v66 = *(v0 + 784);
    v67 = *(v0 + 800);
    v34 = *(v0 + 776);
    v77 = *(v0 + 832);
    v35 = *(v0 + 768);
    v36 = *(v0 + 760);
    v37 = *(v0 + 752);
    v53 = *(v0 + 744);
    v54 = *(v0 + 808);
    v38 = *(v0 + 712);
    v51 = *(v0 + 720);
    v52 = *(v0 + 704);
    v64 = *(v0 + 664);
    v65 = *(v0 + 656);
    v57 = *(v0 + 640);
    v58 = *(v0 + 648);
    v59 = *(v0 + 632);
    v60 = *(v0 + 672);
    v61 = *(v0 + 616);
    v62 = *(v0 + 624);
    v63 = *(v0 + 608);
    v39 = *(v0 + 568);
    v70 = *(v0 + 544);
    v40 = sub_1C754FF1C();
    v41 = __swift_project_value_buffer(v40, qword_1EC25B6A0);
    (*(*(v40 - 8) + 16))(v36, v41, v40);
    v42 = v36 + *(v37 + 20);
    *v42 = v72;
    *(v42 + 8) = v71;
    *(v42 + 16) = 16842753;
    *(v36 + *(v37 + 24)) = v39;
    v73 = *(v34 + 32);
    v73(v33, v50, v35);
    __swift_project_boxed_opaque_existential_1((v0 + 320), *(v0 + 344));

    sub_1C754F1CC();
    OUTLINED_FUNCTION_70((v0 + 320), *(v0 + 344));
    sub_1C754F17C();
    v43 = swift_task_alloc();
    v43[2] = v36;
    v43[3] = v33;
    v43[4] = v55;
    v43[5] = v0 + 360;
    v43[6] = __src;
    v43[7] = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2170A8, &qword_1C7569000);
    v44 = *MEMORY[0x1E69E8790];
    (*(v38 + 104))(v51, v44, v52);
    sub_1C7550F0C();

    __swift_destroy_boxed_opaque_existential_1((v0 + 360));
    OUTLINED_FUNCTION_7_92();
    sub_1C754F1AC();
    __srca = *(v77 + 8);
    *(v0 + 864) = __srca;
    *(v0 + 872) = (v77 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    __srca(v69, v74);
    v56 = *(v34 + 8);
    *(v0 + 880) = v56;
    *(v0 + 888) = (v34 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v56(v33, v35);
    v73(v33, v54, v35);
    __swift_project_boxed_opaque_existential_1((v0 + 320), *(v0 + 344));
    OUTLINED_FUNCTION_24_41("FreeformStoryGeneration.Generator.curatedStoriesFromUncuratedStories", 68);
    OUTLINED_FUNCTION_7_92();
    sub_1C754F17C();
    v45 = swift_task_alloc();
    v45[2] = v36;
    v45[3] = v33;
    v45[4] = v53;
    v45[5] = v0 + 400;
    v45[6] = v70;
    (*(v57 + 104))(v58, v44, v59);
    sub_1C7550F0C();

    OUTLINED_FUNCTION_7_92();
    sub_1C754F17C();
    v46 = swift_task_alloc();
    v46[2] = v36;
    v46[3] = v33;
    v46[4] = v60;
    v46[5] = v0 + 440;
    v46[6] = v68;
    v46[7] = v70;
    type metadata accessor for CuratedStory(0);
    (*(v61 + 104))(v62, v44, v63);
    sub_1C7550F0C();

    __swift_destroy_boxed_opaque_existential_1((v0 + 440));
    (*(v64 + 8))(v60, v65);
    __swift_destroy_boxed_opaque_existential_1((v0 + 400));
    OUTLINED_FUNCTION_7_92();
    sub_1C754F1AC();
    __srca(v69, v74);
    v56(v33, v35);
    v73(v66, v67, v35);
    __swift_project_boxed_opaque_existential_1((v0 + 320), *(v0 + 344));
    OUTLINED_FUNCTION_24_41("FreeformStoryGeneration.Generator.persistMemories", 49);
    OUTLINED_FUNCTION_7_92();
    sub_1C754F15C();
    v47 = swift_task_alloc();
    *(v0 + 896) = v47;
    v47[2] = v70;
    v47[3] = v66;
    v47[4] = v36;
    v47[5] = v0 + 480;
    v48 = swift_task_alloc();
    *(v0 + 904) = v48;
    *v48 = v0;
    v48[1] = sub_1C7402604;
    v49 = MEMORY[0x1E69E7CC0];

    return sub_1C7400BA4(v49, &unk_1C7589A38, v47);
  }

  else
  {
    v6 = sub_1C754FEEC();
    v7 = sub_1C755119C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134218240;
      *(v8 + 4) = v5;
      *(v8 + 12) = 2048;
      *(v8 + 14) = v3;
      _os_log_impl(&dword_1C6F5C000, v6, v7, "Too few storytelling assets for story generation! Require %ld but only have %ld. Skipping any curation steps and throwing error to propagate to UI.", v8, 0x16u);
      OUTLINED_FUNCTION_109();
    }

    v76 = v2;
    v9 = *(v0 + 544);

    if (*(v9 + *(type metadata accessor for StoryGenerationSession(0) + 24)))
    {
      sub_1C755180C();

      OUTLINED_FUNCTION_22_62();
      v81[0] = v11 + 24;
      v81[1] = v10;
      *(v0 + 520) = v3;
      v12 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v12);

      MEMORY[0x1CCA5CD70](2112544, 0xE300000000000000);
      *(v0 + 528) = v5;
      v13 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v13);

      sub_1C7161CDC(v81[0], v81[1]);
    }

    v14 = *(v0 + 856);
    v15 = *(v0 + 832);
    v16 = *(v0 + 824);
    v17 = *(v0 + 776);
    v75 = *(v0 + 768);
    v18 = *(v0 + 560);
    v19 = *(v0 + 552);
    sub_1C6FE0D14();
    swift_allocError();
    *v20 = v3;
    *(v20 + 8) = v5;
    *(v20 + 16) = 0;
    *(v20 + 24) = 5;
    swift_willThrow();
    OUTLINED_FUNCTION_70(v19, v76[3]);
    sub_1C754F1AC();
    (*(v15 + 8))(v14, v16);
    (*(v17 + 8))(v18, v75);

    OUTLINED_FUNCTION_43();

    return v28();
  }
}

uint64_t sub_1C7402604()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 912) = v0;

  if (!v0)
  {
    *(v5 + 920) = v3;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C7402718()
{
  v1 = v0[115];
  OUTLINED_FUNCTION_18_61();
  v46 = v0[108];
  v2 = v0[105];
  v3 = v0[103];
  v4 = v0[98];
  v5 = v0[96];
  v52 = v0[74];
  v6 = v0[73];
  __swift_destroy_boxed_opaque_existential_1(v0 + 60);
  OUTLINED_FUNCTION_70(v0 + 40, v0[43]);
  sub_1C754F1AC();
  v46(v2, v3);
  v49(v4, v5);
  sub_1C710D9E8(v1);

  if (__swift_getEnumTagSinglePayload(v6, 1, v52) == 1)
  {
    OUTLINED_FUNCTION_18_61();
    v7 = v0[107];
    v44 = v0[103];
    v45 = v0[108];
    v47 = v0[96];
    v8 = v0[93];
    v9 = v0[92];
    v10 = v0[91];
    v11 = v0[87];
    v12 = v0[86];
    v13 = v0[85];
    v42 = v0[95];
    v43 = v0[70];
    v14 = v0[69];
    sub_1C6FD7FC8(v0[73], &qword_1EC21B980, &qword_1C7589A08);
    sub_1C6FE0D14();
    swift_allocError();
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    *v15 = 5;
    *(v15 + 24) = 12;
    swift_willThrow();
    (*(v12 + 8))(v11, v13);
    (*(v9 + 8))(v8, v10);
    OUTLINED_FUNCTION_0_174();
    sub_1C74049B4(v42, v16);
    __swift_destroy_boxed_opaque_existential_1(v0 + 40);
    OUTLINED_FUNCTION_70(v14, v14[3]);
    sub_1C754F1AC();
    v45(v7, v44);
    v49(v43, v47);
LABEL_5:
    OUTLINED_FUNCTION_5_91();

    OUTLINED_FUNCTION_43();
    goto LABEL_6;
  }

  v17 = v0[114];
  OUTLINED_FUNCTION_6_102();
  sub_1C7404954(v18, v19, v20);
  sub_1C754F2EC();
  v51 = v0[108];
  v50 = v0[107];
  if (v17)
  {
    v48 = v0[103];
    v21 = v0[95];
    v22 = v0[93];
    v23 = v0[92];
    v24 = v0[91];
    v25 = v0[87];
    v26 = v0[86];
    v27 = v0[85];
    v28 = v0[69];
    sub_1C74049B4(v0[75], type metadata accessor for FreeformStory);
    (*(v26 + 8))(v25, v27);
    (*(v23 + 8))(v22, v24);
    OUTLINED_FUNCTION_0_174();
    sub_1C74049B4(v21, v29);
    __swift_destroy_boxed_opaque_existential_1(v0 + 40);
    OUTLINED_FUNCTION_70(v28, v28[3]);
    sub_1C754F1AC();
    v51(v50, v48);
    goto LABEL_5;
  }

  v41 = v0[103];
  v32 = v0[95];
  v33 = v0[93];
  v34 = v0[92];
  v35 = v0[91];
  v36 = v0[75];
  v37 = v0[69];
  v38 = v0[67];
  (*(v0[86] + 8))(v0[87], v0[85]);
  (*(v34 + 8))(v33, v35);
  OUTLINED_FUNCTION_0_174();
  sub_1C74049B4(v32, v39);
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  OUTLINED_FUNCTION_6_102();
  sub_1C7404954(v36, v38, v40);
  OUTLINED_FUNCTION_70(v37, v37[3]);
  sub_1C754F1AC();
  v51(v50, v41);

  OUTLINED_FUNCTION_43();
LABEL_6:

  return v30();
}

uint64_t sub_1C7402C90()
{
  v13 = v0[110];
  v19 = v0[108];
  v1 = v0[105];
  v2 = v0[103];
  v3 = v0[96];
  v16 = v0[95];
  v17 = v0[107];
  v15 = v0[93];
  v4 = v0[92];
  v14 = v0[91];
  v11 = v0[98];
  v12 = v0[87];
  v5 = v0[86];
  v10 = v0[85];
  v18 = v0[70];
  v6 = v0[69];

  __swift_destroy_boxed_opaque_existential_1(v0 + 60);
  OUTLINED_FUNCTION_70(v0 + 40, v0[43]);
  sub_1C754F1AC();
  v19(v1, v2);
  v13(v11, v3);
  (*(v5 + 8))(v12, v10);
  (*(v4 + 8))(v15, v14);
  OUTLINED_FUNCTION_0_174();
  sub_1C74049B4(v16, v7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  OUTLINED_FUNCTION_70(v6, v6[3]);
  sub_1C754F1AC();
  v19(v17, v2);
  v13(v18, v3);
  OUTLINED_FUNCTION_5_91();

  OUTLINED_FUNCTION_43();

  return v8();
}

uint64_t sub_1C7402F18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x434D6978616DLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x434D696E696DLL && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

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

uint64_t sub_1C7402FE0(char a1)
{
  if (a1)
  {
    return 0x434D696E696DLL;
  }

  else
  {
    return 0x434D6978616DLL;
  }
}

uint64_t sub_1C7403010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7402F18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7403038(uint64_t a1)
{
  v2 = sub_1C740448C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7403074(uint64_t a1)
{
  v2 = sub_1C740448C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C74030B0(uint64_t a1)
{
  v2 = sub_1C7404534();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C74030EC(uint64_t a1)
{
  v2 = sub_1C7404534();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7403128(uint64_t a1)
{
  v2 = sub_1C74044E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7403164(uint64_t a1)
{
  v2 = sub_1C74044E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FreeformStoryGenerator.PipelineType.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B9A8, &qword_1C7589A48);
  OUTLINED_FUNCTION_3_0();
  v25 = v4;
  v26 = v3;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  v24 = &v22 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B9B0, &qword_1C7589A50);
  OUTLINED_FUNCTION_3_0();
  v22 = v8;
  v23 = v7;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B9B8, &qword_1C7589A58);
  OUTLINED_FUNCTION_3_0();
  v14 = v13;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  v18 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C740448C();
  sub_1C755200C();
  v19 = (v14 + 8);
  if (v18)
  {
    v28 = 1;
    sub_1C74044E0();
    v20 = v24;
    sub_1C7551C6C();
    (*(v25 + 8))(v20, v26);
  }

  else
  {
    v27 = 0;
    sub_1C7404534();
    sub_1C7551C6C();
    (*(v22 + 8))(v11, v23);
  }

  return (*v19)(v17, v12);
}

uint64_t FreeformStoryGenerator.PipelineType.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t FreeformStoryGenerator.PipelineType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v41 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B9D8, &qword_1C7589A60);
  OUTLINED_FUNCTION_3_0();
  v40 = v3;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B9E0, &qword_1C7589A68);
  OUTLINED_FUNCTION_3_0();
  v39 = v8;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B9E8, &unk_1C7589A70);
  OUTLINED_FUNCTION_3_0();
  v42 = v13;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v36 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C740448C();
  v17 = v44;
  sub_1C7551FFC();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v7;
  v38 = v11;
  v44 = a1;
  v18 = v43;
  sub_1C7551C5C();
  result = sub_1C6FD80E0();
  if (v21 == v22 >> 1)
  {
    v43 = result;
LABEL_9:
    v32 = sub_1C75518EC();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490, &qword_1C7560600);
    *v34 = &type metadata for FreeformStoryGenerator.PipelineType;
    sub_1C7551B5C();
    sub_1C75518DC();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v42 + 8))(v16, v12);
    a1 = v44;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36[1] = 0;
  if (v21 >= (v22 >> 1))
  {
    __break(1u);
  }

  else
  {
    v23 = *(v20 + v21);
    v24 = sub_1C6FD80C8();
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    if (v26 != v28 >> 1)
    {
      v43 = v24;
      goto LABEL_9;
    }

    v45 = v23;
    if (v23)
    {
      v47 = 1;
      sub_1C74044E0();
      v29 = v6;
      OUTLINED_FUNCTION_5_3(&_s12PipelineTypeO16MiniMCCodingKeysON, &v47);
      v30 = v41;
      v31 = v42;
      swift_unknownObjectRelease();
      (*(v40 + 8))(v29, v18);
    }

    else
    {
      v46 = 0;
      sub_1C7404534();
      v35 = v38;
      OUTLINED_FUNCTION_5_3(&_s12PipelineTypeO16MaxiMCCodingKeysON, &v46);
      v30 = v41;
      v31 = v42;
      swift_unknownObjectRelease();
      (*(v39 + 8))(v35, v37);
    }

    (*(v31 + 8))(v16, v26);
    *v30 = v45;
    return __swift_destroy_boxed_opaque_existential_1(v44);
  }

  return result;
}

void *static FreeformStoryGenerator.storyTypesForMaxiMC(from:eventRecorder:)(uint64_t a1)
{
  type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v29[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(a1 + 208);
  swift_storeEnumTagMultiPayload();
  v30 = v4;
  sub_1C75504FC();
  v6 = sub_1C706CC1C(sub_1C7055510, v29, v5);
  sub_1C74049B4(v4, type metadata accessor for QueryTokenCategoryType);
  v7 = *(v6 + 2);

  if ([objc_opt_self() forceMCMontagePath])
  {
    if (qword_1EDD09CF0 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_1EDD09CF0);
    }

    v8 = sub_1C754FF1C();
    __swift_project_value_buffer(v8, qword_1EDD28B68);
    v9 = sub_1C754FEEC();
    v10 = sub_1C75511BC();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_12;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "User has forceMontage user default set, requesting a Montage";
    v13 = v10;
    v14 = v9;
    v15 = v11;
    v16 = 2;
LABEL_11:
    _os_log_impl(&dword_1C6F5C000, v14, v13, v12, v15, v16);
    OUTLINED_FUNCTION_109();
LABEL_12:

    return &unk_1F46A84F8;
  }

  if (v7 >= 2)
  {
    if (qword_1EDD09CF0 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_1EDD09CF0);
    }

    v17 = sub_1C754FF1C();
    __swift_project_value_buffer(v17, qword_1EDD28B68);
    v9 = sub_1C754FEEC();
    v18 = sub_1C75511BC();
    if (!os_log_type_enabled(v9, v18))
    {
      goto LABEL_12;
    }

    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = v7;
    v12 = "Prompt has %ld WHATs, requesting a Montage";
    v13 = v18;
    v14 = v9;
    v15 = v19;
    v16 = 12;
    goto LABEL_11;
  }

  if (qword_1EDD09CF0 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_1EDD09CF0);
  }

  v21 = sub_1C754FF1C();
  __swift_project_value_buffer(v21, qword_1EDD28B68);
  v22 = sub_1C754FEEC();
  v23 = sub_1C75511BC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v31 = v25;
    *v24 = 136315138;
    if (v7)
    {
      v26 = 0x656E6F20796C6E6FLL;
    }

    else
    {
      v26 = 28526;
    }

    if (v7)
    {
      v27 = 0xE800000000000000;
    }

    else
    {
      v27 = 0xE200000000000000;
    }

    v28 = sub_1C6F765A4(v26, v27, &v31);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_1C6F5C000, v22, v23, "Prompt has %s WHATs, forfeiting Montage", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  return &unk_1F46A8520;
}

uint64_t sub_1C7403C98(void *__src, uint64_t a2)
{
  v3 = v2;
  memcpy(__dst, __src, 0x41uLL);
  v19 = 1;
  v17 = 1;
  v5 = *(a2 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1C716E728(0, v5, 0);
    v6 = v16;
    v7 = (a2 + 32);
    while (1)
    {
      v8 = *v7++;
      v14 = v8;
      sub_1C7403EDC(&v14, &v19, __dst, &v17, &v13, __srca);
      if (v3)
      {
        break;
      }

      v3 = 0;
      memcpy(v12, __srca, sizeof(v12));
      v16 = v6;
      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1C716E728((v9 > 1), v10 + 1, 1);
        v6 = v16;
      }

      *(v6 + 16) = v10 + 1;
      memcpy((v6 + 88 * v10 + 32), v12, 0x58uLL);
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_1C7403E18(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1C731B444;

  return sub_1C73A8D2C(a1, a2, v6, v7, v9, v8);
}

void sub_1C7403EDC(char *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X4>, uint64_t *a5@<X5>, void *a6@<X8>)
{
  v6 = a5;
  v9 = *a1;
  if (v9 >> 5 != 1)
  {
    if (!(v9 >> 5))
    {
      v10 = *a2;
      if (!__OFADD__(*a2, 1))
      {
        ++*a2;
        strcpy(v45, "Montage ");
        BYTE1(v45[1]) = 0;
        WORD1(v45[1]) = 0;
        HIDWORD(v45[1]) = -402653184;
        v49 = v10;
        sub_1C6FB52D4(a3, &v46);
        v11 = sub_1C7551D8C();
        MEMORY[0x1CCA5CD70](v11);

        v12 = v45[0];
        v13 = v45[1];
        memcpy(a6, a3, 0x41uLL);
        *(a6 + 65) = v9;
        a6[9] = v12;
        a6[10] = v13;
        return;
      }

      __break(1u);
      goto LABEL_19;
    }

    sub_1C6FE0D14();
    v25 = swift_allocError();
    *(v26 + 8) = 0;
    *(v26 + 16) = 0;
    *v26 = v9;
    *(v26 + 24) = 8;
    swift_willThrow();
LABEL_10:
    *v6 = v25;
    return;
  }

  v43 = *a1;
  v14 = *a3;
  sub_1C6FB52D4(a3, &v46);
  swift_isUniquelyReferenced_nonNull_native();
  *&v46 = v14;
  sub_1C6FC80A4();
  v15 = v46;
  *&v46 = 1;
  sub_1C7551D8C();
  swift_isUniquelyReferenced_nonNull_native();
  *&v46 = v15;
  sub_1C6FC80A4();
  v16 = v46;
  *&v46 = 20;
  sub_1C7551D8C();
  swift_isUniquelyReferenced_nonNull_native();
  *&v46 = v16;
  sub_1C6FC80A4();
  v17 = v46;
  v18 = sub_1C6FE0F8C(0xD000000000000013, 0x80000001C75958B0, v46);
  if (!v19)
  {
    sub_1C6FE0D14();
    v25 = swift_allocError();
    *(v27 + 8) = 0;
    *(v27 + 16) = 0;
    *v27 = 8;
    *(v27 + 24) = 12;
    swift_willThrow();

    v6 = a5;
    goto LABEL_10;
  }

  v20 = v18;
  v21 = v19;
  v22 = [objc_opt_self() numberOfChronologicalStorySelectedTraits];
  if (v22)
  {
    v23 = v22;

    v24 = [v23 unsignedIntegerValue];
  }

  else
  {
    *&v46 = v20;
    *(&v46 + 1) = v21;
    v45[0] = 44;
    v45[1] = 0xE100000000000000;
    sub_1C6FB5E8C();
    v28 = sub_1C755152C();

    v29 = *(v28 + 16);

    v30 = sub_1C735BAE4();
    if (v29 <= 5)
    {
      v24 = v29;
    }

    else
    {
      v24 = (v30 + 5);
    }
  }

  *&v46 = v24;
  sub_1C7551D8C();
  swift_isUniquelyReferenced_nonNull_native();
  *&v46 = v17;
  sub_1C6FC80A4();
  v31 = v46;
  v32 = sub_1C754FEEC();
  v33 = sub_1C75511BC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v46 = v35;
    *v34 = 136315394;
    *(v34 + 4) = sub_1C6F765A4(0xD000000000000017, 0x80000001C75A8AE0, &v46);
    *(v34 + 12) = 2048;
    *(v34 + 14) = v24;
    _os_log_impl(&dword_1C6F5C000, v32, v33, "Making a %s story and recomputing the selected number of traits for the storyteller to be %lu, based on distribution", v34, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1CCA5F8E0](v35, -1, -1);
    MEMORY[0x1CCA5F8E0](v34, -1, -1);
  }

  v36 = *(a3 + 3);
  v46 = *(a3 + 1);
  v47 = v36;
  v48[0] = *(a3 + 5);
  *(v48 + 9) = *(a3 + 49);
  v37 = *a4;
  if (!__OFADD__(*a4, 1))
  {
    ++*a4;

    sub_1C755180C();

    strcpy(v45, "Chronological ");
    HIBYTE(v45[1]) = -18;
    v49 = v37;
    v38 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v38);

    v39 = v45[0];
    v40 = v45[1];
    *a6 = v31;
    v41 = v47;
    *(a6 + 1) = v46;
    *(a6 + 3) = v41;
    *(a6 + 5) = v48[0];
    *(a6 + 49) = *(v48 + 9);
    *(a6 + 65) = v43;
    a6[9] = v39;
    a6[10] = v40;
    return;
  }

LABEL_19:
  __break(1u);
}

unint64_t sub_1C740448C()
{
  result = qword_1EC21B9C0;
  if (!qword_1EC21B9C0)
  {
    result = swift_getWitnessTable(asc_1C7589D8C, &_s12PipelineTypeO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B9C0);
  }

  return result;
}

unint64_t sub_1C74044E0()
{
  result = qword_1EC21B9C8;
  if (!qword_1EC21B9C8)
  {
    result = swift_getWitnessTable(asc_1C7589D3C, &_s12PipelineTypeO16MiniMCCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B9C8);
  }

  return result;
}

unint64_t sub_1C7404534()
{
  result = qword_1EC21B9D0;
  if (!qword_1EC21B9D0)
  {
    result = swift_getWitnessTable(byte_1C7589CEC, &_s12PipelineTypeO16MaxiMCCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B9D0);
  }

  return result;
}

unint64_t sub_1C740458C()
{
  result = qword_1EC21B9F0;
  if (!qword_1EC21B9F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryGenerator.PipelineType, &type metadata for FreeformStoryGenerator.PipelineType, v0, v1);
    atomic_store(result, &qword_1EC21B9F0);
  }

  return result;
}

_BYTE *sub_1C74045F0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C74046F0()
{
  result = qword_1EC21B9F8;
  if (!qword_1EC21B9F8)
  {
    result = swift_getWitnessTable(byte_1C7589CC4, &_s12PipelineTypeO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B9F8);
  }

  return result;
}

unint64_t sub_1C7404748()
{
  result = qword_1EC21BA00;
  if (!qword_1EC21BA00)
  {
    result = swift_getWitnessTable(asc_1C7589BE4, &_s12PipelineTypeO16MaxiMCCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21BA00);
  }

  return result;
}

unint64_t sub_1C74047A0()
{
  result = qword_1EC21BA08;
  if (!qword_1EC21BA08)
  {
    result = swift_getWitnessTable(asc_1C7589C0C, &_s12PipelineTypeO16MaxiMCCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21BA08);
  }

  return result;
}

unint64_t sub_1C74047F8()
{
  result = qword_1EC21BA10;
  if (!qword_1EC21BA10)
  {
    result = swift_getWitnessTable(asc_1C7589B94, &_s12PipelineTypeO16MiniMCCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21BA10);
  }

  return result;
}

unint64_t sub_1C7404850()
{
  result = qword_1EC21BA18;
  if (!qword_1EC21BA18)
  {
    result = swift_getWitnessTable(aU_13, &_s12PipelineTypeO16MiniMCCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21BA18);
  }

  return result;
}

unint64_t sub_1C74048A8()
{
  result = qword_1EC21BA20;
  if (!qword_1EC21BA20)
  {
    result = swift_getWitnessTable(byte_1C7589C34, &_s12PipelineTypeO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21BA20);
  }

  return result;
}

unint64_t sub_1C7404900()
{
  result = qword_1EC21BA28;
  if (!qword_1EC21BA28)
  {
    result = swift_getWitnessTable(byte_1C7589C5C, &_s12PipelineTypeO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21BA28);
  }

  return result;
}

uint64_t sub_1C7404954(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C74049B4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_24_41(uint64_t a1, uint64_t a2)
{

  return sub_1C754F1CC();
}

uint64_t AgglomerativeKMeans.__allocating_init(maxNumberOfClusters:distanceBlock:minDistance:random:randomSampler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_0_175();
  swift_allocObject();
  return AgglomerativeKMeans.init(maxNumberOfClusters:distanceBlock:minDistance:random:randomSampler:)();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AgglomerativeKMeans.fit(_:)(Swift::OpaquePointer a1)
{
  sub_1C718FD04(a1._rawValue, v1, v2, v3, v4, v5, v6, v7);
  if (!v9)
  {
    swift_beginAccess();
    v11 = v8[9];
    if (v11)
    {
      sub_1C75504FC();
      v12 = sub_1C755118C();
      v13 = v8[11];
      if (os_log_type_enabled(v13, v12))
      {
        v14 = swift_slowAlloc();
        *v14 = 134217984;
        *(v14 + 4) = *(v11 + 16);
        _os_log_impl(&dword_1C6F5C000, v13, v12, "Initial Number of centroids after K-Means, %ld", v14, 0xCu);
        MEMORY[0x1CCA5F8E0](v14, -1, -1);
      }

      v15 = sub_1C75504FC();
      v16 = sub_1C7404EA8(v15);
      swift_bridgeObjectRelease_n();
      v17 = sub_1C755118C();
      if (os_log_type_enabled(v13, v17))
      {
        sub_1C75504FC();
        v18 = swift_slowAlloc();
        *v18 = 134217984;
        *(v18 + 4) = *(v16 + 16);

        _os_log_impl(&dword_1C6F5C000, v13, v17, "Number of centroids after refinements, %ld", v18, 0xCu);
        MEMORY[0x1CCA5F8E0](v18, -1, -1);
      }

      v8[9] = v16;
      sub_1C75504FC();

      v19 = sub_1C7190394(a1._rawValue);
      swift_beginAccess();
      v8[8] = v19;
    }

    else
    {
      sub_1C7404D74();
      swift_allocError();
      swift_willThrow();
    }
  }
}

uint64_t AgglomerativeKMeans.init(maxNumberOfClusters:distanceBlock:minDistance:random:randomSampler:)()
{
  OUTLINED_FUNCTION_0_175();
  v7 = *v6;
  sub_1C7047818();
  *(v0 + 88) = sub_1C755146C();
  *(v0 + 80) = v5;
  v9 = v7;
  return KMeans.init(numberOfClusters:distanceBlock:earlyStoppingDistance:random:randomSampler:)(v4, v3, v2, v1, &v9, 0.000001);
}

unint64_t sub_1C7404D74()
{
  result = qword_1EC21BA50;
  if (!qword_1EC21BA50)
  {
    result = swift_getWitnessTable(asc_1C7589EA8, &type metadata for AgglomerativeKMeans.Error, v0, v1);
    atomic_store(result, &qword_1EC21BA50);
  }

  return result;
}

uint64_t AgglomerativeKMeans.__allocating_init(centroids:distanceBlock:)(uint64_t a1)
{
  type metadata accessor for Random();
  swift_allocObject();

  Random.init(randomSeed:)(42);
  swift_allocObject();
  v2 = AgglomerativeKMeans.init(maxNumberOfClusters:distanceBlock:minDistance:random:randomSampler:)();

  swift_beginAccess();
  *(v2 + 72) = a1;

  return v2;
}

uint64_t sub_1C7404EA8(uint64_t a1)
{
  v2 = v1;
  v3 = 0;
  v36 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69E7CD0];
  v35 = MEMORY[0x1E69E7CD0];
  v5 = *(a1 + 16);
  v31 = a1 + 32;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  while (1)
  {
    v7 = v3;
    if (v3 == v5)
    {
      break;
    }

    if (v3 >= v5)
    {
      goto LABEL_39;
    }

    ++v3;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_40;
    }

    v8 = *(v31 + 8 * v7);
    if (*(v4 + 16))
    {
      v9 = sub_1C7551F2C();
      v10 = ~(-1 << *(v4 + 32));
      while (1)
      {
        v11 = v9 & v10;
        if (((*(v4 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          break;
        }

        v9 = v11 + 1;
        if (*(*(v4 + 48) + 8 * v11) == v7)
        {
          goto LABEL_2;
        }
      }
    }

    if (v5 < v3)
    {
      goto LABEL_41;
    }

    sub_1C75504FC();
    v12 = 1.0;
    if (v3 == v5)
    {
      v13 = v8;
      goto LABEL_27;
    }

    v30 = v6;
    sub_1C75504FC();
    v14 = 1;
    v15 = v7 + 1;
    v13 = v8;
    do
    {
      if (v15 >= v5)
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
      }

      v16 = v35;
      if (*(v35 + 16))
      {
        v17 = sub_1C7551F2C();
        v18 = ~(-1 << *(v16 + 32));
        while (1)
        {
          v19 = v17 & v18;
          if (((*(v16 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
          {
            break;
          }

          v17 = v19 + 1;
          if (*(*(v16 + 48) + 8 * v19) == v15)
          {
            goto LABEL_25;
          }
        }
      }

      if (v15 < 0)
      {
        goto LABEL_37;
      }

      v20 = *(v31 + 8 * v15);
      v21 = *(v2 + 24);
      v33 = v20;
      __B = v8;
      sub_1C75504FC();
      if (v21(&__B, &v33) >= *(v2 + 80))
      {
      }

      else
      {
        v32 = v20;
        v33 = v13;
        static FloatVector.+ infix(_:_:)(&v33, &v32, &__B);

        if (__OFADD__(v14++, 1))
        {
          goto LABEL_38;
        }

        v13 = __B;
        sub_1C70F428C(&__B, v15);
        sub_1C70F428C(&__B, v7);
      }

LABEL_25:
      ++v15;
    }

    while (v15 != v5);

    v12 = v14;
    v6 = v30;
    v3 = v7 + 1;
LABEL_27:
    *&__B = v12;
    v23 = *(v13 + 16);
    if (v23)
    {
      v24 = sub_1C7550BBC();
      *(v24 + 16) = v23;
      bzero((v24 + 32), 4 * v23);
      v25 = *(v13 + 16);
    }

    else
    {
      v25 = 0;
      v24 = MEMORY[0x1E69E7CC0];
    }

    vDSP_vsdiv((v13 + 32), 1, &__B, (v24 + 32), 1, v25);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB2DBC();
      v6 = v27;
    }

    v26 = *(v6 + 16);
    if (v26 >= *(v6 + 24) >> 1)
    {
      sub_1C6FB2DBC();
      v6 = v28;
    }

    *(v6 + 16) = v26 + 1;
    *(v6 + 8 * v26 + 32) = v24;
    v4 = v35;
  }

  return v6;
}

uint64_t AgglomerativeKMeans.deinit()
{
  v0 = KMeans.deinit();

  return v0;
}

uint64_t AgglomerativeKMeans.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

_BYTE *storeEnumTagSinglePayload for AgglomerativeKMeans.Error(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C74053B8()
{
  result = qword_1EC21BA58;
  if (!qword_1EC21BA58)
  {
    result = swift_getWitnessTable(byte_1C7589E80, &type metadata for AgglomerativeKMeans.Error, v0, v1);
    atomic_store(result, &qword_1EC21BA58);
  }

  return result;
}

uint64_t TextSanitizer.init(safetyBundle:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for SafetyBundle(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TextSanitizer(0);
  sub_1C740565C(a1, &a2[*(v7 + 20)]);
  *a2 = sub_1C74057E4() & 1;
  if (qword_1EDD0F478 != -1)
  {
    swift_once();
  }

  v8 = sub_1C754FF1C();
  __swift_project_value_buffer(v8, qword_1EDD28DD0);
  sub_1C740565C(a1, v6);
  v9 = sub_1C754FEEC();
  v10 = sub_1C75511BC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    v13 = SafetyBundle.debugDescription.getter();
    v15 = v14;
    sub_1C7406124(v6);
    v16 = sub_1C6F765A4(v13, v15, &v20);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1C6F5C000, v9, v10, "TextSanitizer was initialized with configuration:\n\n%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1CCA5F8E0](v12, -1, -1);
    MEMORY[0x1CCA5F8E0](v11, -1, -1);

    v17 = a1;
  }

  else
  {

    sub_1C7406124(a1);
    v17 = v6;
  }

  return sub_1C7406124(v17);
}

uint64_t type metadata accessor for TextSanitizer(uint64_t a1)
{
  result = qword_1EDD0F468;
  if (!qword_1EDD0F468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C740565C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SafetyBundle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C74056C0()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD28DD0);
  __swift_project_value_buffer(v0, qword_1EDD28DD0);
  return sub_1C754FEFC();
}

uint64_t TextSanitizer.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t sub_1C74057E4()
{
  v0 = sub_1C754E99C();
  v61 = *(v0 - 8);
  v62 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v60 = &v60 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v63 = &v60 - v3;
  v69 = sub_1C754E9DC();
  v4 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v66 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v60 - v7;
  v9 = sub_1C754E9CC();
  v64 = *(v9 - 8);
  v65 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v60 - v12;
  v13 = sub_1C754EA2C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C754E9FC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1C754EA7C();
  v70 = *(v21 - 8);
  v71 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LLMWrapper.availabilityMonitorUseCasesIdentifiers()();
  (*(v14 + 104))(v16, *MEMORY[0x1E69A12A0], v13);
  sub_1C754E9EC();
  sub_1C754EA5C();
  v24 = v20;
  v25 = v69;
  (*(v18 + 8))(v24, v17);
  v72 = v23;
  sub_1C754EA0C();
  v26 = *(v4 + 88);
  if (v26(v8, v25) == *MEMORY[0x1E69A0F00])
  {
    (*(v4 + 96))(v8, v25);
    v27 = v64;
    v28 = v65;
    v29 = v68;
    (*(v64 + 32))(v68, v8, v65);
    if (qword_1EDD0F478 != -1)
    {
      swift_once();
    }

    v30 = sub_1C754FF1C();
    __swift_project_value_buffer(v30, qword_1EDD28DD0);
    v31 = v67;
    (*(v27 + 16))(v67, v29, v28);
    v32 = sub_1C754FEEC();
    v33 = sub_1C755119C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v73 = v35;
      *v34 = 136642819;
      sub_1C754E9BC();
      sub_1C754E9AC();
      sub_1C7406DFC(&qword_1EDD100A0, MEMORY[0x1E69A1168], MEMORY[0x1E69A1170]);
      v36 = sub_1C7550F9C();
      v38 = v37;

      v39 = *(v27 + 8);
      v39(v31, v28);
      v40 = sub_1C6F765A4(v36, v38, &v73);

      *(v34 + 4) = v40;
      _os_log_impl(&dword_1C6F5C000, v32, v33, "Text safety is likely not active as MC is unavailable with reasons: %{sensitive}s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x1CCA5F8E0](v35, -1, -1);
      MEMORY[0x1CCA5F8E0](v34, -1, -1);

      v39(v68, v28);
    }

    else
    {

      v57 = *(v27 + 8);
      v57(v31, v28);
      v57(v29, v28);
    }
  }

  else
  {
    v41 = *(v4 + 8);
    v41(v8, v25);
    v42 = v66;
    sub_1C754EA0C();
    if (v26(v42, v25) != *MEMORY[0x1E69A0EF8])
    {
      (*(v70 + 8))(v72, v71);
      v41(v42, v25);
      return 1;
    }

    (*(v4 + 96))(v42, v25);
    v43 = v61;
    v44 = v62;
    v45 = v63;
    (*(v61 + 32))(v63, v42, v62);
    if (qword_1EDD0F478 != -1)
    {
      swift_once();
    }

    v46 = sub_1C754FF1C();
    __swift_project_value_buffer(v46, qword_1EDD28DD0);
    v47 = v60;
    (*(v43 + 16))(v60, v45, v44);
    v48 = sub_1C754FEEC();
    v49 = sub_1C755119C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v73 = v51;
      *v50 = 136642819;
      sub_1C754E98C();
      sub_1C754E97C();
      sub_1C7406DFC(&qword_1EDD0CB30, MEMORY[0x1E69A0F90], MEMORY[0x1E69A0FA8]);
      v52 = sub_1C7550F9C();
      v54 = v53;

      v55 = *(v43 + 8);
      v55(v47, v44);
      v56 = sub_1C6F765A4(v52, v54, &v73);

      *(v50 + 4) = v56;
      _os_log_impl(&dword_1C6F5C000, v48, v49, "Text safety is likely not active as MC is restricted with reasons: %{sensitive}s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      MEMORY[0x1CCA5F8E0](v51, -1, -1);
      MEMORY[0x1CCA5F8E0](v50, -1, -1);

      v55(v63, v44);
    }

    else
    {

      v59 = *(v43 + 8);
      v59(v47, v44);
      v59(v45, v44);
    }
  }

  (*(v70 + 8))(v72, v71);
  return 0;
}

uint64_t sub_1C7406124(uint64_t a1)
{
  v2 = type metadata accessor for SafetyBundle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C7406184()
{
  result = qword_1EC21BA60;
  if (!qword_1EC21BA60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextSanitizer.Error, &type metadata for TextSanitizer.Error, v0, v1);
    atomic_store(result, &qword_1EC21BA60);
  }

  return result;
}

uint64_t dispatch thunk of TextSanitizerProtocol.isSafe(_:useCaseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_69(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_24();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_41_1(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_87(v6);

  return v9(v8);
}

uint64_t sub_1C74062DC(uint64_t a1)
{
  OUTLINED_FUNCTION_47();
  v3 = *v1;
  OUTLINED_FUNCTION_14();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(a1);
}

uint64_t dispatch thunk of TextSanitizerProtocol.scrub(_:useCaseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_69(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_24();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_41_1(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_87(v6);

  return v9(v8);
}

uint64_t dispatch thunk of static TextSanitizerProtocol.validateLanguage(_:useCaseIdentifier:languageCodes:topK:tokenThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_7_93();
  v15 = (*(a10 + 24) + **(a10 + 24));
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_41_1(v10);
  *v11 = v12;
  v11[1] = sub_1C740661C;
  v13 = OUTLINED_FUNCTION_5_92();

  return v15(v13);
}

uint64_t sub_1C740661C()
{
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t dispatch thunk of static TextSanitizerProtocol.validateLanguage(_:useCaseIdentifier:topK:tokenThreshold:)()
{
  OUTLINED_FUNCTION_7_93();
  OUTLINED_FUNCTION_24();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_41_1(v1);
  *v2 = v3;
  v2[1] = sub_1C7406E48;
  v4 = OUTLINED_FUNCTION_5_92();

  return v6(v4);
}

uint64_t dispatch thunk of static TextSanitizerProtocol.validateCharacterCategories(_:unsupportedCategories:storyGenerationCache:useCaseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_24();
  v19 = (v14 + *v14);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_41_1(v15);
  *v16 = v17;
  v16[1] = sub_1C7406994;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1C7406994(uint64_t a1)
{
  OUTLINED_FUNCTION_47();
  v3 = *v1;
  OUTLINED_FUNCTION_14();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(a1);
}