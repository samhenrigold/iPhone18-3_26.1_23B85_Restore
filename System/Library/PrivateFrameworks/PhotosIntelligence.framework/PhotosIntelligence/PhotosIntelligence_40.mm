uint64_t sub_1C7253954(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219BF8, &qword_1C757CA60);
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C72594A4();
  sub_1C7551FFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  HIBYTE(v12) = 0;
  v8 = OUTLINED_FUNCTION_8_9(&qword_1EDD0CF50, MEMORY[0x1E69E6190]);
  OUTLINED_FUNCTION_42_1(v8);
  v10 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C50, &qword_1C75633A0);
  HIBYTE(v12) = 1;
  v11 = sub_1C703195C(&qword_1EC216128, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  OUTLINED_FUNCTION_42_1(v11);
  (*(v4 + 8))(v7, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t sub_1C7253B48(uint64_t a1)
{
  v2 = sub_1C72594A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7253B84(uint64_t a1)
{
  v2 = sub_1C72594A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7253BC0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDD07CD8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C754FDEC();
  v3 = __swift_project_value_buffer(v2, qword_1EDD289F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C7253C68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C7253570(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1C7253C94@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C7253954(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1C7253CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[27] = a3;
  v6[28] = a4;
  v6[25] = a1;
  v6[26] = a2;
  v6[31] = *a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E00, &unk_1C755BFE0);
  v6[32] = v7;
  v6[33] = *(v7 - 8);
  v6[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E08, &unk_1C7574220);
  v6[35] = swift_task_alloc();
  v6[36] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E10, &unk_1C755BFF0);
  v6[37] = swift_task_alloc();
  v8 = sub_1C754EECC();
  v6[38] = v8;
  v6[39] = *(v8 - 8);
  v6[40] = swift_task_alloc();
  v9 = sub_1C754EEEC();
  v6[41] = v9;
  v6[42] = *(v9 - 8);
  v6[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E18, &unk_1C7574230);
  v6[44] = swift_task_alloc();
  v10 = sub_1C754FD9C();
  v6[45] = v10;
  v6[46] = *(v10 - 8);
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E20, &unk_1C755C000);
  v6[49] = v11;
  v6[50] = *(v11 - 8);
  v6[51] = swift_task_alloc();
  v12 = sub_1C755029C();
  v6[52] = v12;
  v6[53] = *(v12 - 8);
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v6[58] = swift_task_alloc();
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C72540B0, 0, 0);
}

uint64_t sub_1C72543C8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 576) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C72544C4()
{
  v2 = v0[35];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E28, &unk_1C7574240);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_1C6FB5FC8(v2, &qword_1EC214E08, &unk_1C7574220);
  }

  else
  {
    v105 = v0[69];
    v104 = v0[51];
    v92 = v0[47];
    v95 = v0[46];
    v98 = v0[45];
    v101 = v0[48];
    v88 = v0[40];
    v4 = v0[39];
    v103 = v0[29];
    v5 = OUTLINED_FUNCTION_71_0();
    v6 = v1(v5);
    v14 = OUTLINED_FUNCTION_85(v6, v7, v8, v9, v10, v11, v12, v13, v79);
    v3(v14);
    v15 = OUTLINED_FUNCTION_125_0();
    v16 = v1(v15);
    v24 = OUTLINED_FUNCTION_124_0(v16, v17, v18, v19, v20, v21, v22, v23, v80, v84, v88);
    v3(v24);
    v25 = sub_1C754EEBC();
    v33 = OUTLINED_FUNCTION_84_1(v25, v26, v27, v28, v29, v30, v31, v32, v81, v85, v89, v92, v95, v98, v101);
    v34(v33);
    v35 = OUTLINED_FUNCTION_57_0();
    v36(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E30, &unk_1C755C010);
    sub_1C75504DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E38, &qword_1C756D840);
    inited = swift_initStackObject();
    v38 = OUTLINED_FUNCTION_61_2(inited, "_OverrideConfigurationHelper.samplingParameters(.dynamic(completionParameters))", xmmword_1C755BAB0, v82, v86, v90, v93, v96, v99, 1, 2, v103, v104);
    v39(v38);
    v40 = OUTLINED_FUNCTION_103_2();
    v41(v40);
    inited[4].n128_u64[1] = v4;
    __swift_allocate_boxed_opaque_existential_0(&inited[3]);
    sub_1C754EBEC();
    v42 = OUTLINED_FUNCTION_57_0();
    v105(v42);
    OUTLINED_FUNCTION_82();
    sub_1C75504DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E40, &unk_1C755C020);
    v43 = swift_initStackObject();
    v51 = OUTLINED_FUNCTION_68_0(v43, v44, v45, v46, v47, v48, v49, v50, v83, v87, v91, v94, v97, v100, v102);
    inited[4].n128_u64[1] = v51;
    OUTLINED_FUNCTION_6_61();
    inited[5].n128_u64[0] = sub_1C725954C(v52, v53, MEMORY[0x1E69A14B8]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&inited[3]);
    (*(*(v51 - 8) + 16))(boxed_opaque_existential_0, v106, v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E48, &qword_1C7574250);
    OUTLINED_FUNCTION_82();
    v55 = sub_1C75504DC();
    OUTLINED_FUNCTION_72_0(v55);

    v56 = OUTLINED_FUNCTION_81_13();
    v57(v56);
    v58 = OUTLINED_FUNCTION_118_0();
    v59(v58);
    v60 = OUTLINED_FUNCTION_113_1();
    v61(v60);
    v62 = OUTLINED_FUNCTION_100_0();
    v63(v62);
  }

  v64 = v0[61];
  v65 = v0[59];
  v66 = v0[52];
  v67 = v0[30];
  sub_1C755039C();
  v0[24] = v67;
  OUTLINED_FUNCTION_106_0((v0 + 24));
  v64(v65, v66);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  v69 = swift_task_alloc();
  v0[73] = v69;
  OUTLINED_FUNCTION_19_44();
  v72 = sub_1C725954C(v70, v71, MEMORY[0x1E69DA460]);
  OUTLINED_FUNCTION_5_58();
  v76 = sub_1C6FF60E4(v73, v74, v75);
  *v69 = v0;
  v69[1] = sub_1C725495C;
  v77 = v0[32];

  return MEMORY[0x1EEE0A3A0](v0 + 23, v68, v68, v77, v68, v72, v76);
}

uint64_t sub_1C725495C()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *v1;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 592) = v0;

  (*(v2[33] + 8))(v2[34], v2[32]);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C7254AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_127_1();
  v23 = v22[61];
  v34 = v22[55];
  v35 = v22[54];
  v36 = v22[51];
  v37 = v22[47];
  v38 = v22[44];
  v39 = v22[43];
  v40 = v22[40];
  v41 = v22[37];
  v42 = v22[35];
  v43 = v22[34];
  (*(v22[46] + 8))(v22[48], v22[45]);
  v24 = OUTLINED_FUNCTION_156();
  v23(v24);

  OUTLINED_FUNCTION_128_0();

  return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, a20, a21, a22);
}

uint64_t static GlobalTraitCompletionGeneration.generateGlobalTraitCompletions_DeprecatedGMS(with:diagnosticContext:eventRecorder:progressReporter:aiEventReporting:)()
{
  OUTLINED_FUNCTION_42();
  v1[15] = v2;
  v1[16] = v0;
  v1[13] = v3;
  v1[14] = v4;
  v1[11] = v5;
  v1[12] = v6;
  v7 = sub_1C754FA7C();
  v1[17] = v7;
  OUTLINED_FUNCTION_18(v7);
  v1[18] = v8;
  v1[19] = OUTLINED_FUNCTION_77();
  v9 = sub_1C754E15C();
  v1[20] = v9;
  OUTLINED_FUNCTION_18(v9);
  v1[21] = v10;
  v1[22] = OUTLINED_FUNCTION_77();
  v11 = sub_1C754E72C();
  v1[23] = v11;
  OUTLINED_FUNCTION_18(v11);
  v1[24] = v12;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = type metadata accessor for LLMConfiguration(0);
  v1[29] = OUTLINED_FUNCTION_77();
  v13 = sub_1C754F38C();
  v1[30] = v13;
  OUTLINED_FUNCTION_18(v13);
  v1[31] = v14;
  v1[32] = OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1C7254DE0()
{
  v78 = v0;
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C754F1CC();
  sub_1C754F2CC();
  v3 = sub_1C7253320();
  *(v0 + 264) = v3;
  if (v3)
  {
    OUTLINED_FUNCTION_300();
    type metadata accessor for LLMWrapperUtils();
    if (qword_1EDD0A988 != -1)
    {
      OUTLINED_FUNCTION_30_0(&qword_1EDD0A988);
    }

    static LLMWrapperUtils.globalTraitsModelType(for:)(&v77);
    v4 = v77;
    type metadata accessor for LLMConfigurationProvider();
    LOBYTE(v75[0]) = v4;
    if (qword_1EDD07CA8 != -1)
    {
      OUTLINED_FUNCTION_29_27(&qword_1EDD07CA8);
    }

    v5 = *(v0 + 232);
    v6 = sub_1C754FF1C();
    v7 = __swift_project_value_buffer(v6, qword_1EDD07CB0);
    *(v0 + 272) = v7;
    static LLMConfigurationProvider.configuration(for:logger:)(v75, v5, v7);
    v72 = v7;
    v74 = v1;
    v17 = *(v0 + 224);
    v16 = *(v0 + 232);
    v18 = v4;
    v20 = *(v0 + 168);
    v19 = *(v0 + 176);
    v22 = *(v0 + 152);
    v21 = *(v0 + 160);
    v24 = *(v0 + 136);
    v23 = *(v0 + 144);
    v71 = *(v0 + 96);
    v75[0] = OUTLINED_FUNCTION_41_24();
    v75[1] = v25;
    *v76 = *(v26 + 32);
    *&v76[9] = *(v26 + 41);
    static LLMWrapper.gmsSamplingParameters(from:)();
    (*(v20 + 16))(v19, v16 + *(v17 + 44), v21);
    (*(v23 + 16))(v22, v16 + *(v17 + 24), v24);
    if (v71)
    {
      v27 = *(v0 + 96);
      sub_1C75504FC();
      if (sub_1C71656D8(v28))
      {
        v29 = *(v0 + 88);
        v30 = (v27 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
        os_unfair_lock_lock(v30);
        sub_1C72583D4(&v30[2], v18, v29, (v0 + 16));
        os_unfair_lock_unlock(v30);
      }
    }

    v31 = *(*(v0 + 192) + 16);
    v31(*(v0 + 208), *(v0 + 216), *(v0 + 184));
    sub_1C75504FC();
    v32 = sub_1C754FEEC();
    v33 = sub_1C75511BC();

    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 208);
    if (v34)
    {
      v70 = *(v0 + 192);
      v68 = *(v0 + 200);
      v69 = *(v0 + 184);
      v36 = swift_slowAlloc();
      *&v75[0] = swift_slowAlloc();
      *v36 = 136315651;
      LOBYTE(v77) = v18;
      LLMModelType.description.getter();
      v39 = sub_1C6F765A4(v37, v38, v75);

      *(v36 + 4) = v39;
      *(v36 + 12) = 2085;
      v40 = sub_1C75504BC();
      v42 = sub_1C6F765A4(v40, v41, v75);

      *(v36 + 14) = v42;
      *(v36 + 22) = 2080;
      v31(v68, v35, v69);
      sub_1C75506EC();
      v43 = *(v70 + 8);
      v43(v35, v69);
      v44 = OUTLINED_FUNCTION_82();
      v47 = sub_1C6F765A4(v44, v45, v46);

      *(v36 + 24) = v47;
      _os_log_impl(&dword_1C6F5C000, v32, v33, "Generating global traits v2 using GMS one-shot path using backend %s with prompt bindings %{sensitive}s and sampling parameters: %s", v36, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {
      v49 = *(v0 + 184);
      v48 = *(v0 + 192);

      v43 = *(v48 + 8);
      v43(v35, v49);
    }

    *(v0 + 280) = v43;
    sub_1C75504FC();
    v50 = sub_1C754FEEC();
    v51 = sub_1C75511BC();

    if (os_log_type_enabled(v50, v51))
    {
      OUTLINED_FUNCTION_41_0();
      v52 = OUTLINED_FUNCTION_31_0();
      *&v75[0] = v52;
      *v72 = 136642819;
      v53 = sub_1C75504BC();
      v55 = sub_1C6F765A4(v53, v54, v75);

      *(v72 + 4) = v55;
      OUTLINED_FUNCTION_12_4(&dword_1C6F5C000, v56, v57, "Generating global trait with prompt bindings: %{sensitive}s");
      __swift_destroy_boxed_opaque_existential_1(v52);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    v58 = *(v0 + 216);
    v59 = *(v0 + 176);
    v60 = *(v0 + 152);
    v61 = *(v0 + 120);
    v62 = *(v0 + 128);
    v63 = *(v0 + 88);
    v64 = v61[3];
    v73 = v61[4];
    __swift_project_boxed_opaque_existential_1(v61, v64);
    *(v0 + 73) = 2;
    v65 = swift_task_alloc();
    *(v0 + 288) = v65;
    v65[2] = v62;
    v65[3] = v60;
    v65[4] = v63;
    v65[5] = v74;
    v65[6] = v58;
    v65[7] = v59;
    v66 = swift_task_alloc();
    *(v0 + 296) = v66;
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    *v66 = v0;
    v66[1] = sub_1C7255558;

    return sub_1C70597B4(v0 + 80, (v0 + 73), &unk_1C757C2B8, v65, v64, v67, v73);
  }

  else
  {
    v9 = *(v0 + 248);
    v8 = *(v0 + 256);
    v10 = *(v0 + 240);
    v11 = *(v0 + 104);
    v12 = *(v0 + 112);
    sub_1C6FB5280();
    swift_allocError();
    swift_willThrow();
    __swift_project_boxed_opaque_existential_1(v11, v2[3]);
    OUTLINED_FUNCTION_57_0();
    sub_1C754F1AC();
    (*(v9 + 8))(v8, v10);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v13 + 8))(v12);
    OUTLINED_FUNCTION_57_19();

    OUTLINED_FUNCTION_43();

    return v14();
  }
}

uint64_t sub_1C7255558()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 304) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7255664()
{
  v39 = v0;
  v2 = v0[10];
  sub_1C75504FC();
  v3 = sub_1C754FEEC();
  v4 = sub_1C75511BC();

  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_41_0();
    v5 = OUTLINED_FUNCTION_31_0();
    v38 = v5;
    *v1 = 136642819;
    v6 = MEMORY[0x1CCA5D090](v2, MEMORY[0x1E69E6158]);
    v8 = sub_1C6F765A4(v6, v7, &v38);

    *(v1 + 4) = v8;
    OUTLINED_FUNCTION_12_4(&dword_1C6F5C000, v9, v10, "Generated global trait completions %{sensitive}s from GMS one-shot templated completion SPI");
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v37 = v2;
  v11 = v0[38];
  sub_1C754F2EC();
  v12 = v0[32];
  v13 = v0[31];
  v36 = v0[30];
  v34 = v0[35];
  v35 = v0[27];
  if (v11)
  {
    v33 = v0[23];
    v31 = v0[22];
    v15 = v0[20];
    v14 = v0[21];
    v16 = v0[32];
    v18 = v0[18];
    v17 = v0[19];
    v19 = v0[17];
    v20 = v0[13];
    OUTLINED_FUNCTION_0_114();
    sub_1C7258BDC();

    (*(v18 + 8))(v17, v19);
    (*(v14 + 8))(v31, v15);
    v34(v35, v33);
    OUTLINED_FUNCTION_10_3(v20);
    OUTLINED_FUNCTION_431();
    sub_1C754F1AC();
    (*(v13 + 8))(v16, v36);
    OUTLINED_FUNCTION_57_19();

    OUTLINED_FUNCTION_43();

    return v21();
  }

  else
  {
    v23 = v0[21];
    v30 = v0[22];
    v24 = v0[19];
    v25 = v0[20];
    v32 = v0[23];
    v27 = v0[17];
    v26 = v0[18];
    v28 = v0[13];
    OUTLINED_FUNCTION_0_114();
    sub_1C7258BDC();

    (*(v26 + 8))(v24, v27);
    (*(v23 + 8))(v30, v25);
    v34(v35, v32);
    __swift_project_boxed_opaque_existential_1(v28, v28[3]);
    OUTLINED_FUNCTION_229_0();
    sub_1C754F1AC();
    (*(v13 + 8))(v12, v36);

    v29 = v0[1];

    return v29(v37);
  }
}

uint64_t sub_1C72559EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_111_0();
  v38 = v18[35];
  v39 = v18[32];
  v19 = v18[31];
  v35 = v18[24];
  v36 = v18[23];
  v37 = v18[27];
  v20 = v18[13];
  v40 = v18[30];
  v41 = v18[14];

  OUTLINED_FUNCTION_0_114();
  sub_1C7258BDC();
  v21 = OUTLINED_FUNCTION_431();
  v22(v21);
  v23 = OUTLINED_FUNCTION_323();
  v24(v23);
  v38(v37, v36);
  OUTLINED_FUNCTION_10_3(v20);
  OUTLINED_FUNCTION_0_11();
  sub_1C754F1AC();
  (*(v19 + 8))(v39, v40);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v25 + 8))(v41);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_94_1();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37, v38, v39, v40, v41, a16, a17, a18);
}

uint64_t sub_1C7255B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a2;
  v8[4] = a4;
  v8[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DF8, &qword_1C755BFD0);
  v8[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7255C24, 0, 0);
}

uint64_t sub_1C7255C24()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 72);
  sub_1C754E15C();
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_66_2();
  v3(v2);
  OUTLINED_FUNCTION_72_14(v1);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_38_22(v4);

  return sub_1C7253CDC(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C7255CF0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *v6 = *v2;
  *(v5 + 88) = v1;

  v7 = *(v4 + 72);
  if (!v1)
  {
    *(v5 + 96) = a1;
  }

  sub_1C6FB5FC8(v7, &qword_1EC214DF8, &qword_1C755BFD0);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C7255E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6[30] = a5;
  v6[31] = a6;
  v6[28] = a3;
  v6[29] = a4;
  v6[26] = a1;
  v6[27] = a2;
  v6[32] = *a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E00, &unk_1C755BFE0);
  v6[33] = v7;
  v6[34] = *(v7 - 8);
  v6[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E08, &unk_1C7574220);
  v6[36] = swift_task_alloc();
  v6[37] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E10, &unk_1C755BFF0);
  v6[38] = swift_task_alloc();
  v8 = sub_1C754EECC();
  v6[39] = v8;
  v6[40] = *(v8 - 8);
  v6[41] = swift_task_alloc();
  v9 = sub_1C754EEEC();
  v6[42] = v9;
  v6[43] = *(v9 - 8);
  v6[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E18, &unk_1C7574230);
  v6[45] = swift_task_alloc();
  v10 = sub_1C754FD9C();
  v6[46] = v10;
  v6[47] = *(v10 - 8);
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E20, &unk_1C755C000);
  v6[50] = v11;
  v6[51] = *(v11 - 8);
  v6[52] = swift_task_alloc();
  v12 = sub_1C755029C();
  v6[53] = v12;
  v6[54] = *(v12 - 8);
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v6[58] = swift_task_alloc();
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v6[61] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7256220, 0, 0);
}

uint64_t sub_1C7256538()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 584) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7256634()
{
  v2 = v0[36];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E28, &unk_1C7574240);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_1C6FB5FC8(v2, &qword_1EC214E08, &unk_1C7574220);
  }

  else
  {
    v101 = v0[70];
    v100 = v0[52];
    v88 = v0[48];
    v91 = v0[47];
    v94 = v0[46];
    v97 = v0[49];
    v84 = v0[41];
    v4 = v0[40];
    v99 = v0[30];
    v5 = OUTLINED_FUNCTION_71_0();
    v6 = v1(v5);
    v14 = OUTLINED_FUNCTION_85(v6, v7, v8, v9, v10, v11, v12, v13, v75);
    v3(v14);
    v15 = OUTLINED_FUNCTION_125_0();
    v16 = v1(v15);
    v24 = OUTLINED_FUNCTION_124_0(v16, v17, v18, v19, v20, v21, v22, v23, v76, v80, v84);
    v3(v24);
    v25 = sub_1C754EEBC();
    v33 = OUTLINED_FUNCTION_84_1(v25, v26, v27, v28, v29, v30, v31, v32, v77, v81, v85, v88, v91, v94, v97);
    v34(v33);
    v35 = OUTLINED_FUNCTION_57_0();
    v36(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E30, &unk_1C755C010);
    sub_1C75504DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E38, &qword_1C756D840);
    inited = swift_initStackObject();
    v38 = OUTLINED_FUNCTION_61_2(inited, "_OverrideConfigurationHelper.samplingParameters(.dynamic(completionParameters))", xmmword_1C755BAB0, v78, v82, v86, v89, v92, v95, 1, 2, v99, v100);
    v39(v38);
    v40 = OUTLINED_FUNCTION_103_2();
    v41(v40);
    inited[4].n128_u64[1] = v4;
    __swift_allocate_boxed_opaque_existential_0(&inited[3]);
    sub_1C754EBEC();
    v42 = OUTLINED_FUNCTION_57_0();
    v101(v42);
    OUTLINED_FUNCTION_82();
    sub_1C75504DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E40, &unk_1C755C020);
    v43 = swift_initStackObject();
    v51 = OUTLINED_FUNCTION_68_0(v43, v44, v45, v46, v47, v48, v49, v50, v79, v83, v87, v90, v93, v96, v98);
    inited[4].n128_u64[1] = v51;
    OUTLINED_FUNCTION_6_61();
    inited[5].n128_u64[0] = sub_1C725954C(v52, v53, MEMORY[0x1E69A14B8]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&inited[3]);
    (*(*(v51 - 8) + 16))(boxed_opaque_existential_0, v102, v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E48, &qword_1C7574250);
    OUTLINED_FUNCTION_82();
    v55 = sub_1C75504DC();
    OUTLINED_FUNCTION_72_0(v55);

    v56 = OUTLINED_FUNCTION_81_13();
    v57(v56);
    v58 = OUTLINED_FUNCTION_118_0();
    v59(v58);
    v60 = OUTLINED_FUNCTION_113_1();
    v61(v60);
    v62 = OUTLINED_FUNCTION_100_0();
    v63(v62);
  }

  v64 = v0[62];
  v65 = v0[60];
  v66 = v0[53];
  v67 = v0[31];
  sub_1C755039C();
  v0[25] = v67;
  OUTLINED_FUNCTION_106_0((v0 + 25));
  v64(v65, v66);
  v68 = swift_task_alloc();
  v0[74] = v68;
  OUTLINED_FUNCTION_19_44();
  v71 = sub_1C725954C(v69, v70, MEMORY[0x1E69DA460]);
  v72 = sub_1C72594F8();
  *v68 = v0;
  v68[1] = sub_1C7256AA4;
  v73 = v0[33];

  return MEMORY[0x1EEE0A3A0](v0 + 23, &type metadata for GlobalTraitCompletionGeneration.GlobalTraitCompletionGenerable, &type metadata for GlobalTraitCompletionGeneration.GlobalTraitCompletionGenerable, v73, &type metadata for GlobalTraitCompletionGeneration.GlobalTraitCompletionGenerable, v71, v72);
}

uint64_t sub_1C7256AA4()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *v1;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 600) = v0;

  (*(v2[34] + 8))(v2[35], v2[33]);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C7256C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_127_1();
  v23 = v22[62];
  v24 = v22[61];
  v35 = v22[56];
  v36 = v22[55];
  v25 = v22[53];
  v37 = v22[52];
  v38 = v22[48];
  v39 = v22[45];
  v40 = v22[44];
  v41 = v22[41];
  v42 = v22[38];
  v43 = v22[36];
  v44 = v22[35];
  (*(v22[47] + 8))(v22[49], v22[46]);
  v23(v24, v25);

  OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_128_0();

  return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, a20, a21, a22);
}

uint64_t sub_1C7256D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_111_0();
  v19 = OUTLINED_FUNCTION_53_22();
  v20(v19);
  v21 = OUTLINED_FUNCTION_66_2();
  v18(v21);
  OUTLINED_FUNCTION_16_39();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_94_1();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C7256E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_111_0();
  v19 = OUTLINED_FUNCTION_53_22();
  v20(v19);
  v21 = OUTLINED_FUNCTION_66_2();
  v18(v21);
  OUTLINED_FUNCTION_16_39();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_94_1();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

void sub_1C7256F38()
{
  OUTLINED_FUNCTION_124();
  v0 = sub_1C755029C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_14_0();
  v4 = v3 - v2;
  sub_1C754FA7C();
  OUTLINED_FUNCTION_6_61();
  sub_1C725954C(v5, v6, MEMORY[0x1E69A14B8]);
  sub_1C75502CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E50, &qword_1C755C030);
  v7 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C755BAB0;
  (*(v1 + 16))(v8 + v7, v4, v0);
  MEMORY[0x1CCA5C7D0](v8);

  (*(v1 + 8))(v4, v0);
  OUTLINED_FUNCTION_125();
}

uint64_t static GlobalTraitCompletionGeneration.generateGlobalTraitCompletion(with:diagnosticContext:eventRecorder:progressReporter:aiEventReporting:)()
{
  OUTLINED_FUNCTION_42();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v1[13] = v5;
  v1[14] = v6;
  v1[12] = v7;
  v8 = sub_1C754FA7C();
  v1[19] = v8;
  OUTLINED_FUNCTION_18(v8);
  v1[20] = v9;
  v1[21] = OUTLINED_FUNCTION_77();
  v10 = sub_1C754E15C();
  v1[22] = v10;
  OUTLINED_FUNCTION_18(v10);
  v1[23] = v11;
  v1[24] = OUTLINED_FUNCTION_77();
  v12 = sub_1C754E72C();
  v1[25] = v12;
  OUTLINED_FUNCTION_18(v12);
  v1[26] = v13;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = type metadata accessor for LLMConfiguration(0);
  v1[31] = OUTLINED_FUNCTION_77();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214BF0, &qword_1C7574200);
  v1[32] = OUTLINED_FUNCTION_77();
  v14 = sub_1C754F38C();
  v1[33] = v14;
  OUTLINED_FUNCTION_18(v14);
  v1[34] = v15;
  v1[35] = OUTLINED_FUNCTION_77();
  v16 = sub_1C754F61C();
  v1[36] = v16;
  OUTLINED_FUNCTION_18(v16);
  v1[37] = v17;
  v1[38] = OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1C7257324(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, os_log_t log, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  OUTLINED_FUNCTION_75_0();
  a30 = v32;
  a31 = v33;
  a29 = v31;
  v34 = sub_1C7253320();
  *(v31 + 312) = v34;
  if (v34)
  {
    v114 = v34;
    type metadata accessor for LLMDefaults();
    static LLMDefaults.backendType.getter(&a15);
    switch(a15)
    {
      case 3:

        break;
      default:
        sub_1C7551DBC();

        break;
    }

    sub_1C754F60C();
    v37 = *(v31 + 296);
    v36 = *(v31 + 304);
    v38 = *(v31 + 288);
    v39 = *(v31 + 256);
    __swift_project_boxed_opaque_existential_1(*(v31 + 120), *(*(v31 + 120) + 24));
    (*(v37 + 16))(v39, v36, v38);
    OUTLINED_FUNCTION_72_14(v39);
    sub_1C754F16C();
    sub_1C6FB5FC8(v39, &qword_1EC214BF0, &qword_1C7574200);
    sub_1C754F2CC();
    type metadata accessor for LLMWrapperUtils();
    if (qword_1EDD0A988 != -1)
    {
      OUTLINED_FUNCTION_30_0(&qword_1EDD0A988);
    }

    LOBYTE(a15) = byte_1EC218F88;
    static LLMWrapperUtils.globalTraitsModelType(for:)(&a14 + 7);
    v40 = HIBYTE(a14);
    type metadata accessor for LLMConfigurationProvider();
    LOBYTE(a15) = v40;
    if (qword_1EDD07CA8 != -1)
    {
      OUTLINED_FUNCTION_29_27(&qword_1EDD07CA8);
    }

    v41 = *(v31 + 248);
    v42 = sub_1C754FF1C();
    v43 = __swift_project_value_buffer(v42, qword_1EDD07CB0);
    *(v31 + 320) = v43;
    static LLMConfigurationProvider.configuration(for:logger:)(&a15, v41, v43);
    v55 = *(v31 + 240);
    v54 = *(v31 + 248);
    v57 = *(v31 + 184);
    v56 = *(v31 + 192);
    v58 = *(v31 + 176);
    v60 = *(v31 + 152);
    v59 = *(v31 + 160);
    v111 = *(v31 + 168);
    v112 = *(v31 + 112);
    a15 = OUTLINED_FUNCTION_41_24();
    a16 = v61;
    a17 = *(v62 + 32);
    *(&a17 + 9) = *(v62 + 41);
    static LLMWrapper.gmsSamplingParameters(from:)();
    (*(v57 + 16))(v56, v54 + *(v55 + 44), v58);
    (*(v59 + 16))(v111, v54 + *(v55 + 24), v60);
    if (v112)
    {
      v63 = *(v31 + 112);
      sub_1C75504FC();
      if (sub_1C71656D8(v64))
      {
        v65 = *(v31 + 104);
        v66 = (v63 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
        os_unfair_lock_lock(v66);
        sub_1C72583D4(&v66[2], v40, v65, (v31 + 16));
        os_unfair_lock_unlock(v66);
      }
    }

    v67 = *(*(v31 + 208) + 16);
    (v67)(*(v31 + 224), *(v31 + 232), *(v31 + 200));
    sub_1C75504FC();
    v68 = sub_1C754FEEC();
    v69 = sub_1C75511BC();

    v113 = v69;
    v70 = os_log_type_enabled(v68, v69);
    v71 = *(v31 + 224);
    if (v70)
    {
      v72 = *(v31 + 208);
      v73 = swift_slowAlloc();
      *&a15 = swift_slowAlloc();
      *v73 = 136643075;
      v74 = sub_1C75504BC();
      loga = v68;
      v76 = sub_1C6F765A4(v74, v75, &a15);

      *(v73 + 4) = v76;
      *(v73 + 12) = 2080;
      v77 = OUTLINED_FUNCTION_102_1();
      v67(v77);
      v78 = sub_1C75506EC();
      v80 = v79;
      v81 = *(v72 + 8);
      v82 = OUTLINED_FUNCTION_323();
      v81(v82);
      v83 = sub_1C6F765A4(v78, v80, &a15);

      *(v73 + 14) = v83;
      _os_log_impl(&dword_1C6F5C000, loga, v113, "Generating global traits v3 using GMS one-shot path with prompt bindings %{sensitive}s and sampling parameters: %s", v73, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {
      v84 = *(v31 + 200);
      v85 = *(v31 + 208);

      v81 = *(v85 + 8);
      (v81)(v71, v84);
    }

    *(v31 + 328) = v81;
    sub_1C75504FC();
    v86 = sub_1C754FEEC();
    v87 = sub_1C75511BC();

    if (os_log_type_enabled(v86, v87))
    {
      OUTLINED_FUNCTION_41_0();
      v88 = OUTLINED_FUNCTION_31_0();
      *&a15 = v88;
      *v43 = 136642819;
      v89 = sub_1C75504BC();
      v91 = sub_1C6F765A4(v89, v90, &a15);

      *(v43 + 4) = v91;
      OUTLINED_FUNCTION_12_4(&dword_1C6F5C000, v92, v93, "Generating global trait with prompt bindings: %{sensitive}s");
      __swift_destroy_boxed_opaque_existential_1(v88);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    v94 = *(v31 + 232);
    v95 = *(v31 + 192);
    v96 = *(v31 + 168);
    v97 = *(v31 + 144);
    v98 = *(v31 + 104);
    __swift_project_boxed_opaque_existential_1(*(v31 + 136), *(*(v31 + 136) + 24));
    *(v31 + 73) = 2;
    v99 = swift_task_alloc();
    *(v31 + 336) = v99;
    v99[2] = v97;
    v99[3] = v96;
    v99[4] = v98;
    v99[5] = v114;
    v99[6] = v94;
    v99[7] = v95;
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v31 + 344) = v100;
    *v100 = v101;
    v100[1] = sub_1C7257B50;
    OUTLINED_FUNCTION_130_0();

    return sub_1C70597B4(v102, v103, v104, v105, v106, v107, v108);
  }

  else
  {
    v35 = *(v31 + 128);
    sub_1C6FB5280();
    swift_allocError();
    swift_willThrow();
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v44 + 8))(v35);
    OUTLINED_FUNCTION_73_14(*(v31 + 304));

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_130_0();

    return v46(v45, v46, v47, v48, v49, v50, v51, v52, log, a10, a11, a12, a13, a14, a15, *(&a15 + 1), a16, *(&a16 + 1), a17, *(&a17 + 1), a18, a19, a20, a21, a22, a23);
  }
}

uint64_t sub_1C7257B50()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 352) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7257C5C()
{
  v57 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = objc_opt_self();
  sub_1C75504FC();
  v4 = v1;
  if (([v3 useGlobalTraitsV3Captions] & 1) == 0)
  {
    v4 = v1;
    if (v1[2])
    {
      v5 = sub_1C754FEEC();
      v6 = sub_1C755119C();
      if (os_log_type_enabled(v5, v6))
      {
        OUTLINED_FUNCTION_41_0();
        v7 = OUTLINED_FUNCTION_31_0();
        v55 = v7;
        *v1 = 136642819;
        v8 = sub_1C75504FC();
        MEMORY[0x1CCA5D090](v8, MEMORY[0x1E69E6158]);

        v9 = OUTLINED_FUNCTION_323();
        v12 = sub_1C6F765A4(v9, v10, v11);

        *(v1 + 4) = v12;
        _os_log_impl(&dword_1C6F5C000, v5, v6, "Generated collection global traits when we were not supposed to: %{sensitive}s. Removing them from the pipeline.", v1, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v7);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      v4 = MEMORY[0x1E69E7CC0];
    }
  }

  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v13 = sub_1C754FEEC();
  v14 = sub_1C75511BC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_41_0();
    v16 = swift_slowAlloc();
    v54 = v16;
    v55 = v4;
    *v15 = 136642819;
    v56 = v2;
    sub_1C75504FC();
    sub_1C75504FC();
    v17 = GlobalTraitCompletion.description.getter();
    v18 = v2;
    v20 = v19;

    v21 = sub_1C6F765A4(v17, v20, &v54);
    v2 = v18;

    *(v15 + 4) = v21;
    _os_log_impl(&dword_1C6F5C000, v13, v14, "Generated global traits from GMS one-shot templated completion SPI: %{sensitive}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v22 = v0[14];
  if (v22)
  {
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C716358C(0xD00000000000001ALL, 0x80000001C75A6820, v22, v1, v2);
  }

  v23 = v0[44];
  v24 = v0[34];
  v25 = v0[23];
  v26 = v0[20];

  sub_1C754F2EC();
  v27 = (v26 + 8);
  v28 = (v25 + 8);
  v47 = v0[41];
  v49 = (v24 + 8);
  v53 = v0[38];
  v51 = v0[36];
  v52 = v0[37];
  v50 = v0[35];
  v48 = v0[33];
  v29 = v2;
  if (v23)
  {
    v30 = v0[24];
    v45 = v0[25];
    v46 = v0[29];
    v44 = v0[22];
    v31 = v0[15];
    OUTLINED_FUNCTION_0_114();
    sub_1C7258BDC();
    swift_bridgeObjectRelease_n();

    v32 = OUTLINED_FUNCTION_156();
    v33(v32);
    (*v28)(v30, v44);
    v47(v46, v45);
    OUTLINED_FUNCTION_10_3(v31);
    OUTLINED_FUNCTION_0_11();
    sub_1C754F1AC();

    (*v49)(v50, v48);
    (*(v52 + 8))(v53, v51);
    OUTLINED_FUNCTION_73_14(v0[38]);
  }

  else
  {
    v35 = v0[24];
    v42 = v0[25];
    v43 = v0[29];
    v36 = v0[21];
    v41 = v0[22];
    v37 = v0[19];
    v38 = v0[15];
    v39 = v0[12];
    OUTLINED_FUNCTION_0_114();
    sub_1C7258BDC();

    *v39 = v4;
    v39[1] = v29;
    (*v27)(v36, v37);
    (*v28)(v35, v41);
    v47(v43, v42);
    OUTLINED_FUNCTION_10_3(v38);
    OUTLINED_FUNCTION_0_11();
    sub_1C754F1AC();

    (*v49)(v50, v48);
    (*(v52 + 8))(v53, v51);
  }

  OUTLINED_FUNCTION_43();

  return v34();
}

uint64_t sub_1C725820C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_127_1();
  v23 = v22[37];
  v48 = v22[36];
  v49 = v22[38];
  v24 = v22[34];
  v44 = v22[41];
  v45 = v22[35];
  v46 = v22[39];
  v47 = v22[33];
  v41 = v22[26];
  v42 = v22[25];
  v43 = v22[29];
  v25 = v22[21];
  v27 = v22[19];
  v26 = v22[20];
  v28 = v22[15];
  v50 = v22[16];
  OUTLINED_FUNCTION_0_114();
  sub_1C7258BDC();
  (*(v26 + 8))(v25, v27);
  v29 = OUTLINED_FUNCTION_431();
  v30(v29);
  v44(v43, v42);
  OUTLINED_FUNCTION_10_3(v28);
  sub_1C754F1AC();

  (*(v24 + 8))(v45, v47);
  (*(v23 + 8))(v49, v48);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v31 + 8))(v50);
  OUTLINED_FUNCTION_73_14(v22[38]);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_128_0();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, a20, a21, a22);
}

void sub_1C72583D4(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_1C75504FC();
  swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a1 + 64);
  v8 = sub_1C6FC296C();
  if (__OFADD__(*(v7 + 16), (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_9;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C58, &qword_1C755BDD0);
  if (sub_1C7551A2C())
  {
    v12 = sub_1C6FC296C();
    if ((v11 & 1) == (v13 & 1))
    {
      v10 = v12;
      goto LABEL_5;
    }

LABEL_9:
    sub_1C7551E4C();
    __break(1u);
    return;
  }

LABEL_5:
  *(a1 + 64) = v7;
  if ((v11 & 1) == 0)
  {
    sub_1C6FCABDC();
  }

  v14 = *(v7 + 56) + 8 * v10;
  sub_1C6FB0734();
  v15 = *(*v14 + 16);
  sub_1C6FB0FE8(v15, v16, v17, v18, v19, v20, v21);
  v22 = *v14;
  *(v22 + 16) = v15 + 1;
  v23 = v22 + 72 * v15;
  *(v23 + 32) = a3;
  v24 = a4[1];
  *(v23 + 40) = *a4;
  *(v23 + 56) = v24;
  *(v23 + 72) = a4[2];
  *(v23 + 81) = *(a4 + 41);
}

uint64_t sub_1C7258538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a2;
  v8[4] = a4;
  v8[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DF8, &qword_1C755BFD0);
  v8[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C72585E0, 0, 0);
}

uint64_t sub_1C72585E0()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 72);
  sub_1C754E15C();
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_66_2();
  v3(v2);
  OUTLINED_FUNCTION_72_14(v1);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_38_22(v4);

  return sub_1C7255E4C(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C72586AC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *v8 = *v3;
  v7[11] = v2;

  v9 = v6[9];
  if (!v2)
  {
    v7[12] = a2;
    v7[13] = a1;
  }

  sub_1C6FB5FC8(v9, &qword_1EC214DF8, &qword_1C755BFD0);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C725880C()
{
  OUTLINED_FUNCTION_42();
  *v0[1].i64[0] = vextq_s8(v0[6], v0[6], 8uLL);

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t type metadata accessor for GlobalTrait(uint64_t a1)
{
  result = qword_1EDD0F830;
  if (!qword_1EDD0F830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C72588DC()
{
  result = qword_1EDD0BD20;
  if (!qword_1EDD0BD20)
  {
    result = swift_getWitnessTable(byte_1C757CA10, &type metadata for GlobalTraitType.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0BD20);
  }

  return result;
}

unint64_t sub_1C7258930()
{
  result = qword_1EDD0BCF8;
  if (!qword_1EDD0BCF8)
  {
    result = swift_getWitnessTable(byte_1C757C9C0, &type metadata for GlobalTraitType.SpeculativeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0BCF8);
  }

  return result;
}

unint64_t sub_1C7258984()
{
  result = qword_1EC219BA0;
  if (!qword_1EC219BA0)
  {
    result = swift_getWitnessTable(aI_14, &type metadata for GlobalTraitType.CollectionCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219BA0);
  }

  return result;
}

unint64_t sub_1C72589D8()
{
  result = qword_1EDD0C528;
  if (!qword_1EDD0C528)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GlobalTrait.CodingKeys, &type metadata for GlobalTrait.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0C528);
  }

  return result;
}

unint64_t sub_1C7258A2C()
{
  result = qword_1EDD0BCE0;
  if (!qword_1EDD0BCE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GlobalTraitType, &type metadata for GlobalTraitType, v0, v1);
    atomic_store(result, &qword_1EDD0BCE0);
  }

  return result;
}

unint64_t sub_1C7258A80()
{
  result = qword_1EC219BD0;
  if (!qword_1EC219BD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GlobalTraitType, &type metadata for GlobalTraitType, v0, v1);
    atomic_store(result, &qword_1EC219BD0);
  }

  return result;
}

uint64_t sub_1C7258AD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlobalTrait(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C7258B38()
{
  OUTLINED_FUNCTION_68_17();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23_32(v1);

  return sub_1C7255B7C(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C7258BDC()
{
  v1 = OUTLINED_FUNCTION_300();
  v2(v1);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C7258C2C()
{
  OUTLINED_FUNCTION_68_17();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23_32(v1);

  return sub_1C7258538(v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1C7258CD4()
{
  result = qword_1EC219BD8;
  if (!qword_1EC219BD8)
  {
    result = swift_getWitnessTable("iˑ'8c\a", &type metadata for GlobalTraitType, v0, v1);
    atomic_store(result, &qword_1EC219BD8);
  }

  return result;
}

unint64_t sub_1C7258D2C()
{
  result = qword_1EC219BE0;
  if (!qword_1EC219BE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GlobalTrait.CodingKeys, &type metadata for GlobalTrait.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219BE0);
  }

  return result;
}

unint64_t sub_1C7258D84()
{
  result = qword_1EDD0C518;
  if (!qword_1EDD0C518)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GlobalTrait.CodingKeys, &type metadata for GlobalTrait.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0C518);
  }

  return result;
}

unint64_t sub_1C7258DDC()
{
  result = qword_1EDD0C520;
  if (!qword_1EDD0C520)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GlobalTrait.CodingKeys, &type metadata for GlobalTrait.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0C520);
  }

  return result;
}

uint64_t sub_1C7258E78(void *a1)
{
  a1[1] = sub_1C725954C(&qword_1EDD0C508, type metadata accessor for GlobalTrait, protocol conformance descriptor for GlobalTrait);
  a1[2] = sub_1C725954C(&qword_1EDD0C510, type metadata accessor for GlobalTrait, protocol conformance descriptor for GlobalTrait);
  result = sub_1C725954C(&qword_1EDD0C500, type metadata accessor for GlobalTrait, protocol conformance descriptor for GlobalTrait);
  a1[3] = result;
  return result;
}

void sub_1C7258FA4(uint64_t a1)
{
  sub_1C754DFFC();
  if (v1 <= 0x3F)
  {
    sub_1C704303C();
    if (v2 <= 0x3F)
    {
      sub_1C7028C3C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for GlobalTrait.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C72591C4()
{
  result = qword_1EC219BF0;
  if (!qword_1EC219BF0)
  {
    result = swift_getWitnessTable(byte_1C757C8C8, &type metadata for GlobalTraitType.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219BF0);
  }

  return result;
}

unint64_t sub_1C725921C()
{
  result = qword_1EDD0BD00;
  if (!qword_1EDD0BD00)
  {
    result = swift_getWitnessTable("\tӑ'0_\a", &type metadata for GlobalTraitType.CollectionCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0BD00);
  }

  return result;
}

unint64_t sub_1C7259274()
{
  result = qword_1EDD0BD08;
  if (!qword_1EDD0BD08)
  {
    result = swift_getWitnessTable("!ϑ'\b_\a", &type metadata for GlobalTraitType.CollectionCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0BD08);
  }

  return result;
}

unint64_t sub_1C72592CC()
{
  result = qword_1EDD0BCE8;
  if (!qword_1EDD0BCE8)
  {
    result = swift_getWitnessTable(aYa, &type metadata for GlobalTraitType.SpeculativeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0BCE8);
  }

  return result;
}

unint64_t sub_1C7259324()
{
  result = qword_1EDD0BCF0;
  if (!qword_1EDD0BCF0)
  {
    result = swift_getWitnessTable("qϑ'|_\a", &type metadata for GlobalTraitType.SpeculativeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0BCF0);
  }

  return result;
}

unint64_t sub_1C725937C()
{
  result = qword_1EDD0BD10;
  if (!qword_1EDD0BD10)
  {
    result = swift_getWitnessTable(byte_1C757C838, &type metadata for GlobalTraitType.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0BD10);
  }

  return result;
}

unint64_t sub_1C72593D4()
{
  result = qword_1EDD0BD18;
  if (!qword_1EDD0BD18)
  {
    result = swift_getWitnessTable(byte_1C757C860, &type metadata for GlobalTraitType.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0BD18);
  }

  return result;
}

unint64_t sub_1C7259428()
{
  result = qword_1EDD06C78;
  if (!qword_1EDD06C78)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC214C50, &qword_1C75633A0);
    v4[0] = MEMORY[0x1E69A0EB0];
    result = swift_getWitnessTable(MEMORY[0x1E69A0E90], v3, v4);
    atomic_store(result, &qword_1EDD06C78);
  }

  return result;
}

unint64_t sub_1C72594A4()
{
  result = qword_1EC219C00;
  if (!qword_1EC219C00)
  {
    result = swift_getWitnessTable("y֑' \\\a", &type metadata for GlobalTraitCompletionGeneration.GlobalTraitCompletionGenerable.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219C00);
  }

  return result;
}

unint64_t sub_1C72594F8()
{
  result = qword_1EDD07CC8;
  if (!qword_1EDD07CC8)
  {
    result = swift_getWitnessTable(byte_1C757C940, &type metadata for GlobalTraitCompletionGeneration.GlobalTraitCompletionGenerable, v0, v1);
    atomic_store(result, &qword_1EDD07CC8);
  }

  return result;
}

uint64_t sub_1C725954C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_1C72595B0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C7259690()
{
  result = qword_1EC219C10;
  if (!qword_1EC219C10)
  {
    result = swift_getWitnessTable("1Ñ'H\\\a", &type metadata for GlobalTraitCompletionGeneration.GlobalTraitCompletionGenerable.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219C10);
  }

  return result;
}

unint64_t sub_1C72596E8()
{
  result = qword_1EC219C18;
  if (!qword_1EC219C18)
  {
    result = swift_getWitnessTable(aIb, &type metadata for GlobalTraitCompletionGeneration.GlobalTraitCompletionGenerable.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219C18);
  }

  return result;
}

unint64_t sub_1C7259740()
{
  result = qword_1EC219C20;
  if (!qword_1EC219C20)
  {
    result = swift_getWitnessTable(byte_1C757CAB0, &type metadata for GlobalTraitCompletionGeneration.GlobalTraitCompletionGenerable.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219C20);
  }

  return result;
}

uint64_t sub_1C7259848(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), unint64_t *a4, void *a5)
{
  sub_1C6F65BE8(0, &qword_1EDD069B8, 0x1E695DF70);
  v9 = a3(a2);
  v10 = sub_1C6FBB0C8(v9);
  PFMutableArrayShuffleWithRandomNumberGenerator();
  sub_1C6F65BE8(0, a4, a5);
  sub_1C7550B4C();

  sub_1C75504FC();
  return a2;
}

uint64_t sub_1C7259950(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1C6F65BE8(0, &qword_1EDD069B8, 0x1E695DF70);
  v6 = a3(a2);
  v7 = sub_1C6FBB0C8(v6);
  PFMutableArrayShuffleWithRandomNumberGenerator();
  sub_1C7550B4C();

  sub_1C75504FC();
  return a2;
}

id sub_1C7259A04()
{
  result = PLWallpaperGetLog();
  if (result)
  {
    qword_1EC25B748 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t WallpaperAlbumSuggestionGenerator.albumLocalIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_albumLocalIdentifier);
  sub_1C75504FC();
  return v1;
}

uint64_t WallpaperAlbumSuggestionGenerator.suggestionContext.getter()
{
  v1 = *(v0 + OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_suggestionContext);
  sub_1C75504FC();
  return v1;
}

id WallpaperAlbumSuggestionGenerator.init(assetCollection:photoLibrary:)(void *a1, void *a2)
{
  *&v2[OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_photoLibrary] = a2;
  *&v2[OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_assetCollection] = a1;
  v4 = a2;
  v5 = a1;
  v6 = [v5 assetCollectionSubtype];
  if (v6 == 2)
  {
    v7 = 681;
  }

  else
  {
    if (v6 != 203)
    {
      goto LABEL_8;
    }

    v7 = 682;
  }

  *&v2[OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_suggestionSubtype] = v7;
  v8 = v5;
  v9 = [v8 localIdentifier];
  v10 = sub_1C755068C();
  v12 = v11;

  v13 = &v2[OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_albumLocalIdentifier];
  *v13 = v10;
  v13[1] = v12;
  sub_1C6F65BE8(0, &qword_1EDD0FA88, 0x1E6978650);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [v8 localIdentifier];

  v16 = sub_1C755068C();
  v18 = v17;

  v19 = sub_1C725C798(v16, v18, ObjCClassFromMetadata);
  if (v20)
  {
    v21 = &v2[OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_suggestionContext];
    *v21 = v19;
    v21[1] = v20;
    v24.receiver = v2;
    v24.super_class = type metadata accessor for WallpaperAlbumSuggestionGenerator();
    v22 = objc_msgSendSuper2(&v24, sel_init);

    return v22;
  }

  __break(1u);
LABEL_8:
  result = sub_1C7551AAC();
  __break(1u);
  return result;
}

id sub_1C7259D24()
{
  v1 = sub_1C725BCB4();
  v2 = v1;
  if (!v1)
  {
    goto LABEL_6;
  }

  v3 = v1;
  if (![v3 count])
  {

LABEL_6:
    v11 = 0;
LABEL_7:
    v12 = OUTLINED_FUNCTION_117_0();
    v14 = sub_1C725A380(v12, v13);
    if (v11 && (v15 = sub_1C75504FC(), sub_1C706D3D8(v15, v16, v17, v18, v19, v20, v21, v22, v53), sub_1C7036F4C(v23, v11), v25 = v24, , (v25 & 1) != 0))
    {

      v26 = sub_1C755117C();
      if (qword_1EC213F20 != -1)
      {
        OUTLINED_FUNCTION_0_115(&qword_1EC213F20);
      }

      v27 = qword_1EC25B748;
      if (os_log_type_enabled(qword_1EC25B748, v26))
      {
        v28 = swift_slowAlloc();
        v29 = OUTLINED_FUNCTION_20_1();
        v56 = v29;
        *v28 = 136315138;
        v30 = OUTLINED_FUNCTION_16_40(OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_albumLocalIdentifier);
        *(v28 + 4) = sub_1C6F765A4(v30, v31, &v56);
        _os_log_impl(&dword_1C6F5C000, v27, v26, "[WallpaperAlbumSuggestionGenerator] albumLocalIdentifier %s suggestions with same assets already exist", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_109();
      }

      return v2;
    }

    else
    {
      LOBYTE(v33) = sub_1C755117C();
      if (qword_1EC213F20 != -1)
      {
LABEL_41:
        OUTLINED_FUNCTION_0_115(&qword_1EC213F20);
      }

      v34 = qword_1EC25B748;
      v35 = os_log_type_enabled(qword_1EC25B748, v33);
      if (v35)
      {
        sub_1C75504FC();
        v36 = OUTLINED_FUNCTION_23_1();
        v37 = OUTLINED_FUNCTION_20_1();
        v56 = v37;
        *v36 = 136315394;
        v38 = OUTLINED_FUNCTION_16_40(OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_albumLocalIdentifier);
        *(v36 + 4) = sub_1C6F765A4(v38, v39, &v56);
        *(v36 + 12) = 2048;
        *(v36 + 14) = sub_1C6FB6304();

        _os_log_impl(&dword_1C6F5C000, v34, v33, "[WallpaperAlbumSuggestionGenerator] albumLocalIdentifier %s eligibleAssets %ld", v36, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v37);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      sub_1C725B614(v35);
      sub_1C725ABF8(v14);

      v40 = sub_1C725BCB4();

      return v40;
    }
  }

  v4 = [*(v0 + OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_photoLibrary) librarySpecificFetchOptions];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v6 = OUTLINED_FUNCTION_13_1(v5);
  *(v6 + 16) = xmmword_1C755BAB0;
  *(v6 + 32) = sub_1C755068C();
  *(v6 + 40) = v7;
  sub_1C6FCA0EC(v6, v4);
  v8 = [objc_opt_self() fetchKeyAssetBySuggestionUUIDForSuggestions:v3 options:v4];
  if (v8)
  {
    v9 = v8;
    sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
    v10 = sub_1C75504AC();
  }

  else
  {
    v10 = 0;
  }

  v41 = [v3 count];
  v14 = sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
  v42 = sub_1C725C844();
  v11 = MEMORY[0x1CCA5D4D0](v41, v14, v42);
  v57 = v11;
  v43 = [v3 fetchedObjects];
  if (!v43)
  {

    goto LABEL_7;
  }

  v44 = v43;
  v55 = v4;
  sub_1C6F65BE8(0, &qword_1EDD0CEB0, 0x1E6978AE8);
  v45 = sub_1C7550B5C();

  if (!v10)
  {

    goto LABEL_7;
  }

  v53 = v3;
  v54 = v2;
  v46 = sub_1C6FB6304();
  v33 = 0;
  v2 = (v45 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if (v46 == v33)
    {

      v11 = v57;
      v2 = v54;
      goto LABEL_7;
    }

    if ((v45 & 0xC000000000000001) != 0)
    {
      v47 = MEMORY[0x1CCA5DDD0](v33, v45);
    }

    else
    {
      if (v33 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v47 = *(v45 + 8 * v33 + 32);
    }

    if (__OFADD__(v33, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v14 = v47;
    result = sub_1C6FCA214(v14);
    if (!v48)
    {
      break;
    }

    if (!*(v10 + 16))
    {

LABEL_33:

      goto LABEL_34;
    }

    v49 = sub_1C6F78124(result, v48);
    v51 = v50;

    if ((v51 & 1) == 0)
    {
      goto LABEL_33;
    }

    if (!v57)
    {
      goto LABEL_43;
    }

    v52 = *(*(v10 + 56) + 8 * v49);
    sub_1C70F1000(&v56);

LABEL_34:
    ++v33;
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

unint64_t sub_1C725A7DC(void *a1, uint64_t a2)
{
  v4 = v2;
  v33[1] = *MEMORY[0x1E69E9840];
  v6 = [a1 fetchedObjects];
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v8 = v6;
  sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
  v9 = sub_1C7550B5C();

  v10 = objc_opt_self();
  v29 = [v10 deviceConfigurationForOrientation_];
  v28 = [v10 deviceConfigurationForOrientation_];
  v32 = v7;
  [a1 count];
  sub_1C6FDE6EC();
  v11 = sub_1C6FB6304();
  if (!v11)
  {

    v13 = 0;
LABEL_32:
    LOBYTE(v3) = sub_1C755117C();
    if (qword_1EC213F20 != -1)
    {
      goto LABEL_40;
    }

    goto LABEL_33;
  }

  v12 = v11;
  v27 = v4;
  v4 = 0;
  v13 = 0;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1CCA5DDD0](v4, v9);
    }

    else
    {
      if (v4 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v14 = *(v9 + 8 * v4 + 32);
    }

    v15 = v14;
    v3 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v33[0] = 0;
    [v14 normalizedFaceAreaRect];
    if (v16 == 0.0 && v17 == 0.0)
    {
      goto LABEL_11;
    }

    if (fmax(v16, v17) > 0.15)
    {
      v20 = 1;
    }

    else
    {
      v20 = 5;
    }

    v21 = objc_opt_self();
    [v21 bestWallpaperCropForAsset:v15 classification:v20 outputCropScore:v33 outputLayoutAcceptable:0 layoutConfiguration:v29];
    if (*v33 < 0.4)
    {

      v22 = __OFADD__(v13++, 1);
      if (v22)
      {
        goto LABEL_39;
      }

      goto LABEL_27;
    }

    if (!v28 || (v31 = 0.0, [v21 bestWallpaperCropForAsset:v15 classification:v20 outputCropScore:&v31 outputLayoutAcceptable:0 layoutConfiguration:{v28, *v33}], v31 >= 0.4))
    {
LABEL_11:
      v18 = v15;
      MEMORY[0x1CCA5D040]();
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C7550B9C();
      }

      sub_1C7550BEC();
      v7 = v32;
      if (v32 >> 62)
      {
        v19 = sub_1C75516BC();
      }

      else
      {
        v19 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v19 >= a2)
      {
LABEL_30:

        v4 = v27;
        goto LABEL_32;
      }
    }

    else
    {

      v22 = __OFADD__(v13++, 1);
      if (v22)
      {
        __break(1u);
      }
    }

LABEL_27:
    ++v4;
    if (v3 == v12)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  OUTLINED_FUNCTION_0_115(&qword_1EC213F20);
LABEL_33:
  v23 = qword_1EC25B748;
  if (os_log_type_enabled(qword_1EC25B748, v3))
  {
    v24 = OUTLINED_FUNCTION_23_1();
    v25 = OUTLINED_FUNCTION_20_1();
    v33[0] = v25;
    *v24 = 136315394;
    *(v24 + 4) = sub_1C6F765A4(*(v4 + OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_albumLocalIdentifier), *(v4 + OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_albumLocalIdentifier + 8), v33);
    *(v24 + 12) = 2048;
    *(v24 + 14) = v13;
    _os_log_impl(&dword_1C6F5C000, v23, v3, "[WallpaperAlbumSuggestionGenerator] albumLocalIdentifier: %s %ld suggestions filtered with low crop score", v24, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_109();
  }

  return v7;
}

uint64_t sub_1C725ABF8(unint64_t a1)
{
  v1 = a1;
  aBlock[6] = *MEMORY[0x1E69E9840];
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    OUTLINED_FUNCTION_27_1();
    v37 = swift_allocObject();
    *(v37 + 16) = v3;
    v4 = sub_1C6FB6304();
    sub_1C744EA24(v4);
    v5 = sub_1C755117C();
    if (qword_1EC213F20 != -1)
    {
      OUTLINED_FUNCTION_0_115(&qword_1EC213F20);
    }

    v6 = qword_1EC25B748;
    if (os_log_type_enabled(qword_1EC25B748, v5))
    {
      sub_1C75504FC();
      v7 = OUTLINED_FUNCTION_23_1();
      v8 = OUTLINED_FUNCTION_20_1();
      aBlock[0] = v8;
      *v7 = 134218242;
      *(v7 + 4) = sub_1C6FB6304();

      *(v7 + 12) = 2080;
      *(v7 + 14) = sub_1C6F765A4(*(v38 + OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_albumLocalIdentifier), *(v38 + OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_albumLocalIdentifier + 8), aBlock);
      _os_log_impl(&dword_1C6F5C000, v6, v5, "[WallpaperAlbumSuggestionGenerator] creating %ld suggestions for albumLocalIdentifier %s", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v8);
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_109();
    }

    oslog = v6;
    OUTLINED_FUNCTION_27_1();
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    sub_1C754DF6C();
    v10 = swift_allocBox();
    sub_1C754DF3C();
    v11 = 0;
    v36 = v1 & 0xC000000000000001;
    v34 = OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_photoLibrary;
    v35 = v1 & 0xFFFFFFFFFFFFFF8;
    while (v2 != v11)
    {
      if (v36)
      {
        v12 = MEMORY[0x1CCA5DDD0](v11, v1);
      }

      else
      {
        if (v11 >= *(v35 + 16))
        {
          goto LABEL_24;
        }

        v12 = *(v1 + 8 * v11 + 32);
      }

      v13 = v12;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        v2 = sub_1C75516BC();
        goto LABEL_3;
      }

      v14 = v2;
      v15 = v1;
      v16 = *(v38 + v34);
      OUTLINED_FUNCTION_27_1();
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = swift_allocObject();
      v18[2] = v17;
      v18[3] = v9;
      v18[4] = v10;
      v18[5] = v13;
      v18[6] = v37;
      aBlock[4] = sub_1C725C960;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C6FD8F68;
      aBlock[3] = &block_descriptor_21;
      v19 = _Block_copy(aBlock);

      v20 = v13;

      aBlock[0] = 0;
      v21 = [v16 performChangesAndWait:v19 error:aBlock];
      _Block_release(v19);
      if (!v21)
      {
        v23 = aBlock[0];
        v24 = sub_1C754DBEC();

        swift_willThrow();

        aBlock[0] = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
        sub_1C6F65BE8(0, &qword_1EC216D18, 0x1E696ABC0);
        swift_dynamicCast();
        v25 = sub_1C755119C();
        if (os_log_type_enabled(oslog, v25))
        {
          v26 = OUTLINED_FUNCTION_23_1();
          v40 = OUTLINED_FUNCTION_49_1();
          *v26 = 136315394;
          *(v26 + 4) = sub_1C6F765A4(*(v38 + OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_albumLocalIdentifier), *(v38 + OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_albumLocalIdentifier + 8), &v40);
          *(v26 + 12) = 2080;
          v27 = [v39 localizedDescription];
          v28 = sub_1C755068C();
          v30 = v29;

          v31 = sub_1C6F765A4(v28, v30, &v40);

          *(v26 + 14) = v31;
          _os_log_impl(&dword_1C6F5C000, oslog, v25, "[WallpaperAlbumSuggestionGenerator] failed to create suggestions for %s error %s", v26, 0x16u);
          OUTLINED_FUNCTION_40_5();
          OUTLINED_FUNCTION_79();
          OUTLINED_FUNCTION_37();
        }

        goto LABEL_21;
      }

      v22 = aBlock[0];

      ++v11;
      v1 = v15;
      v2 = v14;
    }

LABEL_21:
    swift_beginAccess();
    v3 = *(v37 + 16);
    sub_1C75504FC();
  }

  return v3;
}

void sub_1C725B14C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = sub_1C754DF6C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_projectBox();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v34 = a5;
    swift_beginAccess();
    *(a2 + 16) = *(a2 + 16) + 1.0;
    swift_beginAccess();
    sub_1C754DE9C();
    swift_endAccess();
    v15 = objc_opt_self();
    v16 = *&v14[OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_suggestionSubtype];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1C7565670;
    *(v17 + 32) = a4;
    sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
    v18 = a4;
    v19 = sub_1C7550B3C();

    swift_beginAccess();
    (*(v9 + 16))(v11, v12, v8);
    v20 = sub_1C754DECC();
    (*(v9 + 8))(v11, v8);
    v21 = [v15 creationRequestForSuggestionWithType:6 subtype:v16 keyAssets:v19 representativeAssets:0 creationDate:v20 relevantUntilDate:0 version:1];

    [v21 setFeaturedState_];
    sub_1C75504FC();
    v22 = sub_1C755065C();

    [v21 setContext_];

    [v21 markActive];
    v23 = [v21 placeholderForCreatedSuggestion];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 localIdentifier];

      v26 = sub_1C755068C();
      v28 = v27;

      v29 = v34;
      swift_beginAccess();
      sub_1C6FB0600();
      v30 = *(*(v29 + 16) + 16);
      sub_1C6FB0EFC();
      v31 = *(v29 + 16);
      *(v31 + 16) = v30 + 1;
      v32 = v31 + 16 * v30;
      *(v32 + 32) = v26;
      *(v32 + 40) = v28;
      *(v29 + 16) = v31;
      swift_endAccess();
    }
  }
}

id sub_1C725B4E0()
{
  v1 = [*(v0 + OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_photoLibrary) librarySpecificFetchOptions];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v3 = OUTLINED_FUNCTION_13_1(v2);
  *(v3 + 16) = xmmword_1C7564A90;
  v4 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v5 = OUTLINED_FUNCTION_3_73();
  *(v3 + 32) = sub_1C6F6AF98(v5, v6, 0);
  v7 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v8 = OUTLINED_FUNCTION_17_48();
  *(v3 + 40) = sub_1C6F6AF98(v8, v9, 1);
  sub_1C71F8834(v3, v1);
  [v1 setIncludeGuestAssets_];
  [v1 setWantsIncrementalChangeDetails_];
  v10 = objc_opt_self();
  v11 = [v10 predicateForExcludeMask:objc_msgSend(v10 useIndex:{sel_maskForGuestAsset), 1}];
  [v1 setInternalPredicate_];

  return v1;
}

id sub_1C725B614(uint64_t a1)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v2 = sub_1C725BCB4();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if ([v2 count] < 1)
  {

    return 0;
  }

  v4 = *(v1 + OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_photoLibrary);
  OUTLINED_FUNCTION_27_1();
  v5 = swift_allocObject();
  v5[2] = v3;
  aBlock[4] = sub_1C725C970;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6FD8F68;
  aBlock[3] = &block_descriptor_17;
  v6 = _Block_copy(aBlock);
  v7 = v3;

  aBlock[0] = 0;
  v8 = [v4 performChangesAndWait:v6 error:aBlock];
  _Block_release(v6);
  if (!v8)
  {
    v18 = aBlock[0];
    v19 = sub_1C754DBEC();

    swift_willThrow();
    aBlock[0] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
    sub_1C6F65BE8(0, &qword_1EC216D18, 0x1E696ABC0);
    swift_dynamicCast();
    v20 = sub_1C755119C();
    if (qword_1EC213F20 != -1)
    {
      OUTLINED_FUNCTION_0_115(&qword_1EC213F20);
    }

    v21 = qword_1EC25B748;
    if (os_log_type_enabled(qword_1EC25B748, v20))
    {
      v22 = OUTLINED_FUNCTION_23_1();
      v32 = OUTLINED_FUNCTION_49_1();
      *v22 = 136315394;
      v23 = OUTLINED_FUNCTION_16_40(OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_albumLocalIdentifier);
      *(v22 + 4) = sub_1C6F765A4(v23, v24, &v32);
      *(v22 + 12) = 2080;
      v25 = [v31 localizedDescription];
      v26 = sub_1C755068C();
      v28 = v27;

      v29 = sub_1C6F765A4(v26, v28, &v32);

      *(v22 + 14) = v29;
      _os_log_impl(&dword_1C6F5C000, v21, v20, "[WallpaperAlbumSuggestionGenerator] failed to remove all suggestions for albumLocalIdentifier %s error %s", v22, 0x16u);
      OUTLINED_FUNCTION_40_5();
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_37();
    }

    return 0;
  }

  v9 = aBlock[0];
  v10 = sub_1C755117C();
  if (qword_1EC213F20 != -1)
  {
    OUTLINED_FUNCTION_0_115(&qword_1EC213F20);
  }

  v11 = qword_1EC25B748;
  if (os_log_type_enabled(qword_1EC25B748, v10))
  {
    v12 = v7;
    v13 = OUTLINED_FUNCTION_23_1();
    v14 = OUTLINED_FUNCTION_20_1();
    aBlock[0] = v14;
    *v13 = 136315394;
    v15 = OUTLINED_FUNCTION_16_40(OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_albumLocalIdentifier);
    *(v13 + 4) = sub_1C6F765A4(v15, v16, aBlock);
    *(v13 + 12) = 2048;
    *(v13 + 14) = [v12 count];

    _os_log_impl(&dword_1C6F5C000, v11, v10, "[WallpaperAlbumSuggestionGenerator] albumLocalIdentifier: %s, deleted all %ld suggestions", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_37();
  }

  v17 = [v7 count];

  return v17;
}

id sub_1C725B9EC(uint64_t a1)
{
  v2 = objc_opt_self();

  return [v2 deleteSuggestions_];
}

id sub_1C725BA34()
{
  sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C75604F0;
  v2 = MEMORY[0x1E69E6158];
  *(v1 + 56) = MEMORY[0x1E69E6158];
  v3 = sub_1C6F6D524();
  *(v1 + 64) = v3;
  *(v1 + 32) = 1701869940;
  *(v1 + 40) = 0xE400000000000000;
  v4 = MEMORY[0x1E69E75F8];
  v5 = MEMORY[0x1E69E7660];
  *(v1 + 96) = MEMORY[0x1E69E75F8];
  *(v1 + 104) = v5;
  *(v1 + 72) = 6;
  OUTLINED_FUNCTION_15_49();
  v60 = sub_1C755112C();
  v6 = OUTLINED_FUNCTION_8_53();
  OUTLINED_FUNCTION_2_78(v6, v7, v6, v8, v9, v10, v11, v12, v13, v55, v60, v14);
  *(v15 + 32) = 0x65707974627573;
  *(v15 + 40) = 0xE700000000000000;
  v16 = *(v0 + OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_suggestionSubtype);
  *(v15 + 96) = v4;
  *(v15 + 104) = v5;
  *(v15 + 72) = v16;
  OUTLINED_FUNCTION_15_49();
  v56 = sub_1C755112C();
  v17 = OUTLINED_FUNCTION_8_53();
  OUTLINED_FUNCTION_2_78(v17, v18, v17, v19, v20, v21, v22, v23, v24, v56, v61, v25);
  strcpy((v26 + 32), "featuredState");
  *(v26 + 46) = -4864;
  *(v26 + 96) = v4;
  *(v26 + 104) = v5;
  *(v26 + 72) = 1;
  OUTLINED_FUNCTION_15_49();
  v27 = sub_1C755112C();
  v28 = OUTLINED_FUNCTION_8_53();
  OUTLINED_FUNCTION_2_78(v28, v29, v28, v30, v31, v32, v33, v34, v35, v57, v62, v36);
  *(v37 + 32) = 0x6574617473;
  *(v37 + 40) = 0xE500000000000000;
  *(v37 + 96) = v4;
  *(v37 + 104) = v5;
  *(v37 + 72) = 1;
  OUTLINED_FUNCTION_15_49();
  v38 = sub_1C755112C();
  v39 = OUTLINED_FUNCTION_8_53();
  OUTLINED_FUNCTION_2_78(v39, v40, v41, v42, v43, v44, v45, v46, v47, v58, v63, v48);
  *(v49 + 32) = 0x747865746E6F63;
  *(v49 + 40) = 0xE700000000000000;
  v51 = *(v0 + OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_suggestionContext);
  v50 = *(v0 + OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_suggestionContext + 8);
  v39[6].n128_u64[0] = v2;
  v39[6].n128_u64[1] = v3;
  v39[4].n128_u64[1] = v51;
  v39[5].n128_u64[0] = v50;
  sub_1C75504FC();
  v52 = sub_1C755112C();
  sub_1C6F65BE8(0, &qword_1EDD0FA80, 0x1E696AB28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1C75732A0;
  *(v53 + 32) = v64;
  *(v53 + 40) = v59;
  *(v53 + 48) = v27;
  *(v53 + 56) = v38;
  *(v53 + 64) = v52;
  return sub_1C6F6E5C4(v53);
}

id sub_1C725BCB4()
{
  v1 = [*(v0 + OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_photoLibrary) librarySpecificFetchOptions];
  [v1 setWantsIncrementalChangeDetails_];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v3 = OUTLINED_FUNCTION_13_1(v2);
  *(v3 + 16) = xmmword_1C7564A90;
  v4 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v5 = OUTLINED_FUNCTION_3_73();
  *(v3 + 32) = sub_1C6F6AF98(v5, v6, 1);
  v7 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v8 = OUTLINED_FUNCTION_17_48();
  *(v3 + 40) = sub_1C6F6AF98(v8, v9, 0);
  sub_1C71F8834(v3, v1);
  v10 = sub_1C725BA34();
  [v1 setPredicate_];

  v11 = [objc_opt_self() fetchSuggestionsWithOptions_];
  return v11;
}

id WallpaperAlbumSuggestionGenerator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WallpaperAlbumSuggestionGenerator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WallpaperAlbumSuggestionGenerator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static WallpaperAlbumSuggestionGenerator.cloudIdentifierForShuffleUserAlbum(assetCollection:photoLibrary:)(void *a1, uint64_t a2)
{
  if ([a1 assetCollectionSubtype] == 203)
  {
    sub_1C755068C();
    OUTLINED_FUNCTION_5_5();
    return a2;
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v5 = OUTLINED_FUNCTION_13_1(v4);
  *(v5 + 16) = xmmword_1C755BAB0;
  v6 = [a1 localIdentifier];
  v7 = sub_1C755068C();
  v9 = v8;

  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  sub_1C75511CC();

  sub_1C710DCE0();
  v11 = v10;
  v13 = v12;
  a2 = v14;

  if (v11)
  {

    if (a2)
    {
      v16 = sub_1C75511AC();
      if (qword_1EC213F20 != -1)
      {
        OUTLINED_FUNCTION_0_115(&qword_1EC213F20);
      }

      v17 = qword_1EC25B748;
      if (os_log_type_enabled(qword_1EC25B748, v16))
      {
        sub_1C6FBC70C(v13);
        v18 = OUTLINED_FUNCTION_23_1();
        v27 = OUTLINED_FUNCTION_49_1();
        *v18 = 136315394;
        v19 = [a1 localIdentifier];
        v20 = sub_1C755068C();
        v22 = v21;

        v23 = sub_1C6F765A4(v20, v22, &v27);

        *(v18 + 4) = v23;
        *(v18 + 12) = 2080;
        swift_getErrorValue();
        sub_1C7551EAC();
        OUTLINED_FUNCTION_5_5();
        sub_1C6FBC718(v13);
        v24 = sub_1C6F765A4(v26, v20, &v27);

        *(v18 + 14) = v24;
        _os_log_impl(&dword_1C6F5C000, v17, v16, "failed to get cloud identifier for album %s with error: %s", v18, 0x16u);
        OUTLINED_FUNCTION_40_5();
        OUTLINED_FUNCTION_79();
        OUTLINED_FUNCTION_109();
      }

      sub_1C6FBC718(v13);
      return 0;
    }

    else
    {
      v25 = [v13 stringValue];
      sub_1C755068C();
      OUTLINED_FUNCTION_5_5();

      sub_1C6FBC718(v13);
      sub_1C6FBC718(v13);
    }

    return a2;
  }

  __break(1u);
  return result;
}

id static WallpaperAlbumSuggestionGenerator.shuffleUserAlbumForCloudIdentifier(_:photoLibrary:)(uint64_t a1, uint64_t a2, id a3)
{
  v5 = [a3 librarySpecificFetchOptions];
  [v5 setWantsIncrementalChangeDetails_];
  if (sub_1C755068C() == a1 && v6 == a2)
  {

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_117_0();
  v8 = sub_1C7551DBC();

  if (v8)
  {
LABEL_14:
    v36 = [objc_opt_self() fetchAssetCollectionsWithType:2 subtype:203 options:v5];
    v37 = [v36 firstObject];

    return v37;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C7565670;
  sub_1C6F65BE8(0, &qword_1EC219C50, 0x1E6978738);
  sub_1C75504FC();
  v10 = OUTLINED_FUNCTION_117_0();
  *(v9 + 32) = sub_1C725C6B0(v10, v11);
  sub_1C75511DC();

  sub_1C710DD48();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  if (v13)
  {

    if ((v19 & 1) == 0)
    {
      v46 = objc_opt_self();
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
      v48 = OUTLINED_FUNCTION_13_1(v47);
      *(v48 + 16) = xmmword_1C755BAB0;
      *(v48 + 32) = v15;
      *(v48 + 40) = v17;
      v49 = OUTLINED_FUNCTION_58();
      sub_1C725C8BC(v49, v50, 0);
      sub_1C75504FC();
      v51 = sub_1C7550B3C();

      v52 = [v46 fetchAssetCollectionsWithLocalIdentifiers:v51 options:v5];

      v37 = [v52 firstObject];
      v53 = OUTLINED_FUNCTION_58();
      sub_1C725C8AC(v53, v54, 0);
      v55 = OUTLINED_FUNCTION_58();
      sub_1C725C8AC(v55, v56, 0);

      return v37;
    }

    v20 = sub_1C755119C();
    if (qword_1EC213F20 != -1)
    {
      OUTLINED_FUNCTION_0_115(&qword_1EC213F20);
    }

    v21 = qword_1EC25B748;
    if (os_log_type_enabled(qword_1EC25B748, v20))
    {
      v22 = OUTLINED_FUNCTION_58();
      sub_1C725C8BC(v22, v23, 1);
      v24 = OUTLINED_FUNCTION_23_1();
      v57 = OUTLINED_FUNCTION_49_1();
      *v24 = 136315394;
      v25 = OUTLINED_FUNCTION_117_0();
      *(v24 + 4) = sub_1C6F765A4(v25, v26, v27);
      *(v24 + 12) = 2080;
      swift_getErrorValue();
      v28 = sub_1C7551EAC();
      v30 = v29;
      v31 = OUTLINED_FUNCTION_58();
      sub_1C725C8AC(v31, v32, 1);
      v33 = sub_1C6F765A4(v28, v30, &v57);

      *(v24 + 14) = v33;
      _os_log_impl(&dword_1C6F5C000, v21, v20, "could not get local identifier for cloud identifier %s with error %s", v24, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    v34 = OUTLINED_FUNCTION_58();
    sub_1C725C8AC(v34, v35, 1);
  }

  else
  {
    v39 = sub_1C755119C();
    if (qword_1EC213F20 != -1)
    {
      OUTLINED_FUNCTION_0_115(&qword_1EC213F20);
    }

    v40 = qword_1EC25B748;
    if (os_log_type_enabled(qword_1EC25B748, v39))
    {
      v41 = swift_slowAlloc();
      v42 = OUTLINED_FUNCTION_20_1();
      v57 = v42;
      *v41 = 136315138;
      v43 = OUTLINED_FUNCTION_117_0();
      *(v41 + 4) = sub_1C6F765A4(v43, v44, v45);
      _os_log_impl(&dword_1C6F5C000, v40, v39, "could not get local identifier for cloud identifier %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_109();
    }
  }

  return 0;
}

id sub_1C725C6B0(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1C755065C();

  v4 = [v2 initWithStringValue_];

  return v4;
}

uint64_t sub_1C725C798(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1C755065C();

  v6 = [a3 uuidFromLocalIdentifier_];

  if (!v6)
  {
    return 0;
  }

  sub_1C755068C();
  OUTLINED_FUNCTION_5_5();

  return a2;
}

unint64_t sub_1C725C844()
{
  result = qword_1EDD0CD08;
  if (!qword_1EDD0CD08)
  {
    v3 = sub_1C6F65BE8(255, &qword_1EDD0FA70, 0x1E6978630);
    result = swift_getWitnessTable(MEMORY[0x1E69E81B8], v3, v0, v1);
    atomic_store(result, &qword_1EDD0CD08);
  }

  return result;
}

void sub_1C725C8AC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

id sub_1C725C8BC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_1C75504FC();
  }
}

uint64_t static FloatVector.- infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = *(*a1 + 16);
  if (result == *(*a2 + 16))
  {
    sub_1C725CE9C(result, 0.0);
    v8 = v7;
    v9 = *(v4 + 16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_64();
      v8 = v10;
    }

    result = MEMORY[0x1CCA5FAD0](v5 + 32, 1, v4 + 32, 1, v8 + 32, 1, v9);
    *a3 = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Float __swiftcall FloatVector.norm()()
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = *(*v0 + 16);
  __C = NAN;
  vDSP_svesq((v1 + 32), 1, &__C, v2);
  return sqrtf(__C);
}

Swift::Float __swiftcall FloatVector.dot(_:)(PhotosIntelligence::FloatVector a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *a1.elements._rawValue;
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (v4 != *(*a1.elements._rawValue + 16))
  {
    __break(1u);
  }

  __C = 0.0;
  vDSP_dotpr((v3 + 32), 1, (v2 + 32), 1, &__C, v4);
  return __C;
}

unint64_t FloatVector.subscript.getter(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(*v1 + 16) <= result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

Swift::Int_optional __swiftcall FloatVector.argmin()()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2 >= 2)
  {
    v3 = 0;
    v4 = 0;
    v5 = v1 + 32;
    v6 = (v1 + 36);
    v7 = 1;
    while (v4 < v2)
    {
      v8 = *v6++;
      if (v8 < *(v5 + 4 * v4))
      {
        v3 = v7;
        v4 = v7;
      }

      if (v2 == ++v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
    v3 = 0;
LABEL_8:
    v9 = v2 == 0;
  }

  result.value = v3;
  result.is_nil = v9;
  return result;
}

uint64_t sub_1C725CBA4(uint64_t result)
{
  v1 = 1 << *(result + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(result + 64);
  if (v3)
  {
    v4 = 0;
    v5 = __clz(__rbit64(v3));
    v6 = (v3 - 1) & v3;
    v7 = (v1 + 63) >> 6;
LABEL_9:
    v11 = *(result + 56);
    v12 = *(v11 + 8 * v5);
    if (!v6)
    {
      goto LABEL_11;
    }

    do
    {
      v13 = v4;
LABEL_15:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = (v13 << 9) | (8 * v14);
      if (*(v11 + v15) < v12)
      {
        v12 = *(v11 + v15);
      }
    }

    while (v6);
LABEL_11:
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v7)
      {
        return *&v12;
      }

      v6 = *(result + 64 + 8 * v13);
      ++v4;
      if (v6)
      {
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = (v1 + 63) >> 6;
    while (1)
    {
      v4 = v9 + 1;
      if (v9 + 1 >= v7)
      {
        return 0;
      }

      v10 = *(result + 72 + 8 * v9);
      v8 += 64;
      ++v9;
      if (v10)
      {
        v6 = (v10 - 1) & v10;
        v5 = __clz(__rbit64(v10)) + v8;
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t sub_1C725CCB0(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  if (v5)
  {
    v6 = 0;
    v7 = __clz(__rbit64(v5));
    v8 = (v5 - 1) & v5;
    v9 = (v3 + 63) >> 6;
LABEL_9:
    v12 = (*(a1 + 48) + 16 * v7);
    v14 = *v12;
    v13 = v12[1];
    sub_1C75504FC();
    result = sub_1C75504FC();
    while (v8)
    {
LABEL_15:
      v17 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v18 = (*(a1 + 48) + ((v6 << 10) | (16 * v17)));
      v19 = *v18;
      v20 = v18[1];
      if (*v18 != v14 || v20 != v13)
      {
        result = sub_1C7551DBC();
        if (result)
        {
          sub_1C75504FC();

          v14 = v19;
          v13 = v20;
        }
      }
    }

    while (1)
    {
      v16 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v16 >= v9)
      {

        return v14;
      }

      v8 = *(v2 + 8 * v16);
      ++v6;
      if (v8)
      {
        v6 = v16;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v10 = 0;
    v9 = (v3 + 63) >> 6;
    while (1)
    {
      v6 = v5 + 1;
      if (v5 + 1 >= v9)
      {
        return 0;
      }

      v11 = *(a1 + 64 + 8 * v5);
      v10 += 64;
      ++v5;
      if (v11)
      {
        v8 = (v11 - 1) & v11;
        v7 = __clz(__rbit64(v11)) + v10;
        goto LABEL_9;
      }
    }
  }

  return result;
}

unint64_t sub_1C725CE44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v5 < v2)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

void sub_1C725CE9C(uint64_t a1, float a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else if (a1)
  {
    *(sub_1C7550BBC() + 16) = a1;
    do
    {
      OUTLINED_FUNCTION_1_87();
      if (v6)
      {
        *(v3 - 12) = a2;
      }

      if (vuzp1_s16(v5, v4).i8[2])
      {
        *(v3 - 8) = a2;
      }

      OUTLINED_FUNCTION_3_74();
      if (v12)
      {
        *(v8 - 1) = a2;
      }

      if (vuzp1_s16(v10, v11).i8[6])
      {
        *v8 = a2;
      }
    }

    while (v9 != v7 + 4);
  }
}

uint64_t sub_1C725CF64(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_1C7550BBC();
      *(v4 + 16) = a2;
      v5 = a2 - 1;
      for (i = 32; ; i += 8)
      {
        *(v4 + i) = v3;
        if (!v5)
        {
          break;
        }

        sub_1C75504FC();
        --v5;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v4;
  }

  return result;
}

uint64_t sub_1C725CFEC(uint64_t result, __n128 a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      v3 = a2.n128_u16[0];
      result = sub_1C7550BBC();
      v4 = 0;
      v5 = vdupq_n_s64(v2 - 1);
      v6 = (result + 46);
      *(result + 16) = v2;
      do
      {
        v7 = vdupq_n_s64(v4);
        v8 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_1C756A560)));
        if (vuzp1_s8(vuzp1_s16(v8, *v5.i8), *v5.i8).u8[0])
        {
          *(v6 - 7) = v3;
        }

        if (vuzp1_s8(vuzp1_s16(v8, *&v5), *&v5).i8[1])
        {
          *(v6 - 6) = v3;
        }

        if (vuzp1_s8(vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_1C756D570)))), *&v5).i8[2])
        {
          *(v6 - 5) = v3;
          *(v6 - 4) = v3;
        }

        v9 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_1C757CC10)));
        if (vuzp1_s8(*&v5, vuzp1_s16(v9, *&v5)).i32[1])
        {
          *(v6 - 3) = v3;
        }

        if (vuzp1_s8(*&v5, vuzp1_s16(v9, *&v5)).i8[5])
        {
          *(v6 - 2) = v3;
        }

        if (vuzp1_s8(*&v5, vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_1C757CC00))))).i8[6])
        {
          *(v6 - 1) = v3;
          *v6 = v3;
        }

        v4 += 8;
        v6 += 8;
      }

      while (((v2 + 7) & 0xFFFFFFFFFFFFFFF8) != v4);
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

Swift::Void __swiftcall FloatVector.append(_:)(Swift::Float a1)
{
  sub_1C6FB0B60();
  v3 = *(*v1 + 16);
  sub_1C6FB13A4(v3, v4, v5, v6, v7, v8, v9);
  v10 = *v1;
  *(v10 + 16) = v3 + 1;
  *(v10 + 4 * v3 + 32) = a1;
  *v1 = v10;
}

void static FloatVector.repeating(float:count:)(uint64_t a1@<X0>, void *a2@<X8>, float a3@<S0>)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a1)
    {
      *(sub_1C7550BBC() + 16) = a1;
      do
      {
        OUTLINED_FUNCTION_1_87();
        if (v8)
        {
          *(v5 - 12) = a3;
        }

        if (vuzp1_s16(v7, v6).i8[2])
        {
          *(v5 - 8) = a3;
        }

        OUTLINED_FUNCTION_3_74();
        if (v15)
        {
          *(v11 - 1) = a3;
        }

        if (vuzp1_s16(v13, v14).i8[6])
        {
          *v11 = a3;
        }
      }

      while (v12 != v10 + 4);
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    *a2 = v9;
  }
}

void FloatVector.subscript.setter(unint64_t a1, float a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1C70E3D94();
  v5 = v7;
  *v2 = v7;
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v5 + 16) > a1)
  {
    *(v5 + 4 * a1 + 32) = a2;
    *v2 = v5;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t static FloatVector./= infix(_:_:)(uint64_t a1)
{
  sub_1C725CE9C(*(*a1 + 16), 0.0);
  v3 = v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_0_116();
    v3 = v4;
  }

  OUTLINED_FUNCTION_2_79();
  vDSP_vsdiv(v5, v6, v7, v8, v9, v10);

  *a1 = v3;
  return result;
}

unint64_t sub_1C725D3E4@<X0>(unint64_t *a1@<X1>, _DWORD *a2@<X8>)
{
  result = FloatVector.subscript.getter(*a1);
  *a2 = v4;
  return result;
}

void (*FloatVector.subscript.modify(void (*result)(uint64_t *a1, char a2), unint64_t a2))(uint64_t *a1, char a2)
{
  *result = a2;
  *(result + 1) = v2;
  v3 = *v2;
  *(result + 2) = *v2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v3 + 16) > a2)
  {
    *(result + 6) = *(v3 + 4 * a2 + 32);
    return sub_1C725D4A4;
  }

  __break(1u);
  return result;
}

void sub_1C725D4A4(uint64_t *a1, char a2)
{
  v4 = *(a1 + 6);
  v6 = a1[1];
  v5 = a1[2];
  LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v5;
  if (a2)
  {
    if ((v7 & 1) == 0)
    {
      sub_1C70E3D94();
      v5 = v7;
      *v6 = v7;
    }

    v8 = *a1;
    if (*(v5 + 16) > *a1)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if ((v7 & 1) == 0)
  {
    sub_1C70E3D94();
    v5 = v9;
    *v6 = v9;
  }

  v8 = *a1;
  if (*(v5 + 16) > *a1)
  {
LABEL_9:
    *(v5 + 4 * v8 + 32) = v4;
    *v6 = v5;
    return;
  }

  __break(1u);
}

Swift::Void __swiftcall FloatVector.append(_:)(PhotosIntelligence::FloatVector a1)
{
  v1 = sub_1C75504FC();

  sub_1C6FD36F8(v1);
}

uint64_t FloatVector.hash(into:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x1CCA5E460](v2);
  if (v2)
  {
    v4 = v1 + 32;
    do
    {
      v4 += 4;
      result = sub_1C7551F7C();
      --v2;
    }

    while (v2);
  }

  return result;
}

void static FloatVector.zeros(count:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a1)
    {
      v4 = sub_1C7550BBC();
      *(v4 + 16) = a1;
      bzero((v4 + 32), 4 * a1);
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    *a2 = v4;
  }
}

void static FloatVector.zerosLike(_:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 16);
  if (v3)
  {
    v4 = sub_1C7550BBC();
    *(v4 + 16) = v3;
    bzero((v4 + 32), 4 * v3);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v4;
}

void static FloatVector.onesLike(_:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 16);
  if (v3)
  {
    v4 = sub_1C7550BBC();
    *(v4 + 16) = v3;
    memset_pattern16((v4 + 32), &unk_1C757CC20, 4 * v3);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v4;
}

void sub_1C725D76C(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a1)
    {
      v6 = sub_1C7550BBC();
      *(v6 + 16) = a1;
      memset_pattern16((v6 + 32), a2, 4 * a1);
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    *a3 = v6;
  }
}

Swift::Float __swiftcall FloatVector.squaredL2Norm()()
{
  v0 = MEMORY[0x1E6958DB0];

  return sub_1C725D920(v0);
}

Swift::Float __swiftcall FloatVector.sum()()
{
  v0 = MEMORY[0x1E6958D78];

  return sub_1C725D920(v0);
}

float sub_1C725D920(void (*a1)(uint64_t, uint64_t, float *, uint64_t))
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 16);
  v5 = NAN;
  a1(v2 + 32, 1, &v5, v3);
  return v5;
}

Swift::Int_optional __swiftcall FloatVector.argmax()()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2 >= 2)
  {
    v3 = 0;
    v4 = 0;
    v5 = v1 + 32;
    v6 = (v1 + 36);
    v7 = 1;
    while ((v4 & 0x8000000000000000) == 0)
    {
      if (v4 >= v2)
      {
        goto LABEL_11;
      }

      v8 = *v6++;
      if (*(v5 + 4 * v4) < v8)
      {
        v3 = v7;
        v4 = v7;
      }

      if (v2 == ++v7)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    v3 = 0;
LABEL_9:
    v9 = v2 == 0;
  }

  result.value = v3;
  result.is_nil = v9;
  return result;
}

BOOL static FloatVector.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  if (v2 != *(*a2 + 16))
  {
    return 0;
  }

  v3 = (*a1 + 32);
  v4 = (*a2 + 32);
  do
  {
    result = v2 == 0;
    if (!v2)
    {
      break;
    }

    v6 = *v3++;
    v7 = v6;
    v8 = *v4++;
    --v2;
  }

  while (v7 == v8);
  return result;
}

uint64_t static FloatVector.+ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = MEMORY[0x1E69590F0];

  return sub_1C725DC3C(a1, v2, a2);
}

uint64_t static FloatVector.- infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>, float a3@<S0>)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v10 = -a3;
  sub_1C725CE9C(*(v4 + 16), 0.0);
  v6 = v5;
  v7 = *(v4 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_4_64();
    v6 = v8;
  }

  result = MEMORY[0x1CCA5FAB0](v4 + 32, 1, &v10, v6 + 32, 1, v7);
  *a2 = v6;
  return result;
}

uint64_t static FloatVector.* infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = MEMORY[0x1E6959150];

  return sub_1C725DC3C(a1, v2, a2);
}

uint64_t static FloatVector./ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = MEMORY[0x1E6959130];

  return sub_1C725DC3C(a1, v2, a2);
}

uint64_t sub_1C725DC3C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  sub_1C725CE9C(*(*a1 + 16), 0.0);
  v6 = v5;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_0_116();
    v6 = v7;
  }

  OUTLINED_FUNCTION_2_79();
  result = a2();
  *a3 = v6;
  return result;
}

uint64_t sub_1C725DD14@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  result = *(*a1 + 16);
  if (result == *(*a2 + 16))
  {
    sub_1C725CE9C(result, 0.0);
    v10 = v9;
    v11 = *(v5 + 16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_116();
      v10 = v12;
    }

    result = a3(v5 + 32, 1, v6 + 32, 1, v10 + 32, 1, v11);
    *a4 = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C725DDC4(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t *, uint64_t *))
{
  v4 = *a1;
  v6 = *a2;
  v7 = v4;
  a3(&v8, &v7, &v6);

  *a1 = v8;
  return result;
}

uint64_t FloatVector.hashValue.getter()
{
  sub_1C7551F3C();
  sub_1C7041C84();
  return sub_1C7551FAC();
}

uint64_t sub_1C725DE70(uint64_t a1)
{
  sub_1C7551F3C();
  sub_1C7041C84();
  return sub_1C7551FAC();
}

uint64_t sub_1C725DEB4@<X0>(uint64_t *a1@<X8>)
{
  v2 = FloatVector.makeIterator()();

  *a1 = v2;
  a1[1] = 0;
  return result;
}

uint64_t sub_1C725DF00(uint64_t a1)
{
  sub_1C74BAC90(a1);
  v2 = v1;

  return v2;
}

uint64_t Array<A>.mean()@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (!*(result + 16))
  {
    __break(1u);
  }

  *a2 = 0;
  return result;
}

unint64_t sub_1C725DFC4()
{
  result = qword_1EC219C58;
  if (!qword_1EC219C58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FloatVector, &type metadata for FloatVector, v0, v1);
    atomic_store(result, &qword_1EC219C58);
  }

  return result;
}

unint64_t sub_1C725E01C()
{
  result = qword_1EC219C60;
  if (!qword_1EC219C60)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC219C68, &qword_1C757CCA8);
    result = swift_getWitnessTable(MEMORY[0x1E69E6CF8], v3, v0, v1);
    atomic_store(result, &qword_1EC219C60);
  }

  return result;
}

uint64_t TextSanitizer.scrub(_:useCaseIdentifier:)(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *a3;
  type metadata accessor for TextSanitizer(0);
  *(v3 + 32) = v4;
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  OUTLINED_FUNCTION_0_117(v5);

  return SafetyBundle.scrub(_:useCaseIdentifier:)();
}

uint64_t sub_1C725E150()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_47();
  v6 = *v1;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  *(v8 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C725E290, 0, 0);
  }

  else
  {
    v9 = *(v6 + 8);

    return v9(v5, v3);
  }
}

uint64_t TextSanitizer.isSafe(_:useCaseIdentifier:)(uint64_t a1, uint64_t a2, char *a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = *a3;
  type metadata accessor for TextSanitizer(0);
  *(v3 + 64) = v4;
  v5 = swift_task_alloc();
  *(v3 + 32) = v5;
  *v5 = v3;
  OUTLINED_FUNCTION_0_117(v5);

  return SafetyBundle.scrub(_:useCaseIdentifier:)();
}

uint64_t sub_1C725E368()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3[5] = v1;
  v3[6] = v2;
  v3[7] = v0;

  if (v0)
  {
    v4 = sub_1C725E504;
  }

  else
  {
    v4 = sub_1C725E478;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C725E478()
{
  OUTLINED_FUNCTION_42();
  if (v0[5] == v0[2] && v0[6] == v0[3])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1C7551DBC();
  }

  v3 = v0[1];

  return v3(v2 & 1);
}

uint64_t sub_1C725E504()
{
  OUTLINED_FUNCTION_42();

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1C725E564()
{
  OUTLINED_FUNCTION_49_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_11_0(v1);

  return TextSanitizer.isSafe(_:useCaseIdentifier:)(v2, v3, v4);
}

uint64_t sub_1C725E5FC()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_47();
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_1C725E6E8()
{
  OUTLINED_FUNCTION_49_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_11_0(v1);

  return TextSanitizer.scrub(_:useCaseIdentifier:)(v2, v3, v4);
}

uint64_t sub_1C725E780()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_47();
  v6 = *v1;
  OUTLINED_FUNCTION_14();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v0)
  {
    v8 = v5;
    v9 = v3;
  }

  return v10(v8, v9);
}

void *sub_1C725E880(void *result, uint64_t a2, uint64_t *a3)
{
  v4 = result;
  v5 = 0;
  v22 = *(a2 + 16);
  v19 = a2 + 32;
  while (1)
  {
    if (v5 == v22)
    {
      return v4;
    }

    if (v5 >= v22)
    {
      break;
    }

    result = memcpy(__dst, (v19 + 112 * v5), 0x6CuLL);
    if (__OFADD__(v5++, 1))
    {
      goto LABEL_24;
    }

    v7 = *a3;
    v9 = __dst[0];
    v8 = __dst[1];
    if (*(*a3 + 16))
    {
      sub_1C7551F3C();
      sub_1C7262AA8(__dst, v20);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75505AC();
      v10 = sub_1C7551FAC();
      v11 = ~(-1 << *(v7 + 32));
      while (1)
      {
        v12 = v10 & v11;
        if (((*(v7 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
        {
          break;
        }

        v13 = (*(v7 + 48) + 16 * v12);
        if (*v13 != v9 || v13[1] != v8)
        {
          v15 = sub_1C7551DBC();
          v10 = v12 + 1;
          if ((v15 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_20;
      }
    }

    else
    {
      sub_1C7262AA8(__dst, v20);
      sub_1C75504FC();
    }

    sub_1C7262AA8(__dst, v20);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB4194();
      v4 = v17;
    }

    v16 = v4[2];
    if (v16 >= v4[3] >> 1)
    {
      sub_1C6FB4194();
      v4 = v18;
    }

    v4[2] = v16 + 1;
    memcpy(&v4[14 * v16 + 4], __dst, 0x6CuLL);
    sub_1C70F082C(v20, v9, v8);
LABEL_20:

    result = sub_1C7262B04(__dst);
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1C725EAB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return OUTLINED_FUNCTION_21_41();
  }

  v32 = MEMORY[0x1E69E7CC0];
  sub_1C716E9EC(0, v2, 0);
  v3 = v32;
  result = sub_1C7117368();
  v5 = result;
  v6 = a1;
  v8 = v7;
  v10 = v9;
  v11 = 0;
  v28 = a1 + 64;
  v26 = v2;
  if ((result & 0x8000000000000000) == 0)
  {
    while (1)
    {
      if (v5 >= 1 << *(v6 + 32))
      {
        goto LABEL_27;
      }

      v12 = v5 >> 6;
      if ((*(v28 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_28;
      }

      if (*(v6 + 36) != v8)
      {
        goto LABEL_29;
      }

      sub_1C6F774EC(*(v6 + 56) + 32 * v5, v30);
      sub_1C6F774EC(v30, __dst);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACD0, &unk_1C756DB10);
      if (!swift_dynamicCast())
      {
        break;
      }

      sub_1C73C8044(__src);
      if (v1)
      {

        goto LABEL_25;
      }

      __swift_destroy_boxed_opaque_existential_1(v30);
      memcpy(__dst, __src, 0x6CuLL);
      v32 = v3;
      v14 = *(v3 + 16);
      v13 = *(v3 + 24);
      if (v14 >= v13 >> 1)
      {
        v23 = OUTLINED_FUNCTION_15(v13);
        sub_1C716E9EC(v23, v14 + 1, 1);
        v3 = v32;
      }

      *(v3 + 16) = v14 + 1;
      result = memcpy((v3 + 112 * v14 + 32), __dst, 0x6CuLL);
      v6 = a1;
      v15 = 1 << *(a1 + 32);
      if (v5 >= v15)
      {
        goto LABEL_30;
      }

      v16 = *(v28 + 8 * v12);
      if ((v16 & (1 << v5)) == 0)
      {
        goto LABEL_31;
      }

      if (*(a1 + 36) != v8)
      {
        goto LABEL_32;
      }

      v17 = v16 & (-2 << (v5 & 0x3F));
      if (v17)
      {
        v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v12 << 6;
        v19 = v12 + 1;
        v20 = (a1 + 72 + 8 * v12);
        while (v19 < (v15 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_1C6F9ED50(v5, v8, v10 & 1);
            v6 = a1;
            v15 = __clz(__rbit64(v21)) + v18;
            goto LABEL_20;
          }
        }

        result = sub_1C6F9ED50(v5, v8, v10 & 1);
        v6 = a1;
      }

LABEL_20:
      if (++v11 == v26)
      {
        return OUTLINED_FUNCTION_21_41();
      }

      v10 = 0;
      v8 = *(v6 + 36);
      v5 = v15;
      if (v15 < 0)
      {
        goto LABEL_27;
      }
    }

    sub_1C726152C();
    v24 = swift_allocError();
    OUTLINED_FUNCTION_13_51(v24, v25);
    swift_willThrow();
LABEL_25:
    __swift_destroy_boxed_opaque_existential_1(v30);

    return OUTLINED_FUNCTION_21_41();
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1C725EDC0()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC219C70);
  __swift_project_value_buffer(v0, qword_1EC219C70);
  return sub_1C754FEFC();
}

uint64_t sub_1C725EE58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42 = a2;
  v55 = *MEMORY[0x1E69E9840];
  v45 = sub_1C75506DC();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8, &unk_1C7564890);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v42 - v11;
  v13 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_14_0();
  v19 = v18 - v17;
  v50 = MEMORY[0x1E69E7CC0];
  v20 = [objc_opt_self() defaultManager];
  v21 = sub_1C755116C();

  v46 = (v15 + 32);
  v43 = (v5 + 8);
  v48 = (v15 + 8);
  v49 = v13;
  if (v21)
  {
    while (1)
    {
      if ([v21 nextObject])
      {
        sub_1C75515CC();
        swift_unknownObjectRelease();
      }

      else
      {
        v51 = 0u;
        v52 = 0u;
      }

      v53 = v51;
      v54 = v52;
      if (!*(&v52 + 1))
      {
        goto LABEL_13;
      }

      v22 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v12, v22 ^ 1u, 1, v13);
      if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
      {
        goto LABEL_14;
      }

      (*v46)(v19, v12, v13);
      sub_1C75506CC();
      sub_1C755064C();
      if (v3)
      {
        break;
      }

      v23 = v44;
      sub_1C75506CC();
      sub_1C755069C();
      v25 = v24;
      (*v43)(v23, v45);
      if (v25 >> 60 == 15)
      {
        sub_1C726152C();
        v34 = swift_allocError();
        OUTLINED_FUNCTION_13_51(v34, v35);
        swift_willThrow();
        goto LABEL_20;
      }

      v26 = objc_opt_self();
      OUTLINED_FUNCTION_323();
      v27 = sub_1C754DDCC();
      *&v53 = 0;
      v28 = [v26 JSONObjectWithData:v27 options:0 error:&v53];

      if (!v28)
      {
        v36 = v53;
        sub_1C754DBEC();

        goto LABEL_19;
      }

      v29 = v53;
      sub_1C75515CC();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACD0, &unk_1C756DB10);
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_1C726152C();
        v37 = swift_allocError();
        OUTLINED_FUNCTION_13_51(v37, v38);
LABEL_19:
        swift_willThrow();
        v39 = OUTLINED_FUNCTION_323();
        sub_1C70B5C10(v39, v40);
LABEL_20:

LABEL_21:
        (*v48)(v19, v49);

        return OUTLINED_FUNCTION_21_41();
      }

      v3 = 0;
      v30 = OUTLINED_FUNCTION_21_41();
      v31 = sub_1C725EAB0(v30);
      v32 = OUTLINED_FUNCTION_323();
      sub_1C70B5C10(v32, v33);

      sub_1C6FD37A4(v31);
      v13 = v49;
      (*v48)(v19, v49);
    }

    goto LABEL_21;
  }

  v53 = 0u;
  v54 = 0u;
LABEL_13:
  sub_1C7030CDC(&v53, &qword_1EC219770, &unk_1C755C740);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
LABEL_14:
  sub_1C7030CDC(v12, &qword_1EC215BD8, &unk_1C7564890);
  sub_1C725F4F8(v50, v42);

  return OUTLINED_FUNCTION_21_41();
}

uint64_t sub_1C725F40C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C75506DC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_14_0();
  sub_1C75506CC();
  v5 = sub_1C755064C();
  if (!v2)
  {
    v7 = static MomentsPromptDatabaseLoader.readTemplates(from:)(v5, v6);

    sub_1C725F4F8(v7, a2);
  }

  return OUTLINED_FUNCTION_21_41();
}

void sub_1C725F4F8(uint64_t a1, uint64_t a2)
{
  sub_1C75506DC();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  v9 = sub_1C725F83C(a1);
  v10 = v9[2];
  if (v10)
  {
    v35 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v10, 0, v5, v6, v7, v8);
    v11 = 0;
    v12 = v35;
    v31 = v10 - 1;
    v13 = 4;
    while (v11 < v9[2])
    {
      memcpy(__dst, &v9[v13], 0x6CuLL);
      memcpy(v33, &v9[v13], 0x6CuLL);
      sub_1C7262AA8(__dst, v32);
      v14 = static PromptLocalizableStringBuilder.buildLocalizableStringEntry(from:)(v33);
      if (v2)
      {
        goto LABEL_13;
      }

      v16 = v14;
      v17 = v15;
      memcpy(v32, v33, 0x6CuLL);
      sub_1C7262B04(v32);
      v35 = v12;
      v18 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (v18 >= v19 >> 1)
      {
        v21 = OUTLINED_FUNCTION_15(v19);
        sub_1C6F7ED9C(v21, v18 + 1, 1, v22, v23, v24, v25);
        v12 = v35;
      }

      *(v12 + 16) = v18 + 1;
      v20 = v12 + 16 * v18;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      if (v31 == v11)
      {

        goto LABEL_11;
      }

      v13 += 14;
      ++v11;
    }

    __break(1u);
LABEL_13:
    memcpy(v32, v33, 0x6CuLL);
    sub_1C7262B04(v32);

    __break(1u);
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
LABEL_11:
    __dst[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_0_118();
    sub_1C7099594(v26, &unk_1EC217A00, &qword_1C755BD70, v27);
    __dst[0] = sub_1C75505FC();
    __dst[1] = v28;
    sub_1C75506CC();
    sub_1C6FB5E8C();
    sub_1C755158C();
    v29 = OUTLINED_FUNCTION_216();
    v30(v29);
  }
}

void *sub_1C725F83C(uint64_t a1)
{
  v4 = a1;
  sub_1C75504FC();
  sub_1C72614A8(&v4, sub_1C7422E7C, sub_1C72617B8);
  v1 = v4;
  v4 = MEMORY[0x1E69E7CD0];
  v2 = sub_1C725E880(MEMORY[0x1E69E7CC0], v1, &v4);

  return v2;
}

uint64_t static PromptLocalizableStringBuilder.buildLocalizableStringEntry(from:)(uint64_t *a1)
{
  memcpy(v11, a1 + 2, sizeof(v11));
  v1 = OUTLINED_FUNCTION_57_0();
  static PromptLocalizableStringBuilder.getParameterTypes(from:)(v1, v2);
  v3 = OUTLINED_FUNCTION_57_0();
  v5 = static PromptLocalizableStringBuilder.getLocalizableString(from:templateParameterTypes:)(v3, v4);
  v7 = v6;
  static PromptLocalizableStringBuilder.getLocalizableStringComment(from:templateParameterTypes:)();
  v9 = v8;

  MEMORY[0x1CCA5CD70](10, 0xE100000000000000);
  MEMORY[0x1CCA5CD70](v5, v7);

  return v9;
}

uint64_t static PromptLocalizableStringBuilder.getParameterTypes(from:)(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DF8, &qword_1C755BFD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v41 - v5;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    v9 = byte_1F46A9168[v7++ + 32];
    v42[0] = a1;
    v42[1] = a2;
    v10 = 0xE600000000000000;
    v11 = 0x726F6C796154;
    switch(v9)
    {
      case 1:
        OUTLINED_FUNCTION_20_43();
        v10 = 0xED000065636E6572;
        break;
      case 2:
        v10 = 0xE800000000000000;
        OUTLINED_FUNCTION_18_34();
        break;
      case 3:
        v10 = 0xE900000000000065;
        OUTLINED_FUNCTION_7_52();
        break;
      default:
        break;
    }

    v41[2] = v11;
    v41[3] = v10;
    v12 = sub_1C754E15C();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
    sub_1C6FB5E8C();
    sub_1C755157C();
    v14 = v13;
    sub_1C7030CDC(v6, &qword_1EC214DF8, &qword_1C755BFD0);

    if ((v14 & 1) == 0)
    {
      v15 = sub_1C75508EC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB4248(0, *(v8 + 16) + 1, 1, v8);
        v8 = v19;
      }

      v17 = *(v8 + 16);
      v16 = *(v8 + 24);
      if (v17 >= v16 >> 1)
      {
        v20 = OUTLINED_FUNCTION_15(v16);
        sub_1C6FB4248(v20, v17 + 1, 1, v8);
        v8 = v21;
      }

      *(v8 + 16) = v17 + 1;
      v18 = v8 + 16 * v17;
      *(v18 + 32) = v15;
      *(v18 + 40) = v9;
    }
  }

  while (v7 != 4);
  v42[0] = v8;
  sub_1C75504FC();
  sub_1C72614A8(v42, sub_1C7422E94, sub_1C72618AC);
  v22 = v42[0];
  v23 = *(v42[0] + 16);
  if (v23)
  {
    v41[0] = a1;
    v42[0] = MEMORY[0x1E69E7CC0];
    v24 = OUTLINED_FUNCTION_23_33();
    sub_1C716EA0C(v24, v25, v26);
    v27 = v42[0];
    v28 = *(v42[0] + 16);
    v29 = 40;
    do
    {
      v30 = *(v22 + v29);
      v42[0] = v27;
      v31 = *(v27 + 24);
      if (v28 >= v31 >> 1)
      {
        v32 = OUTLINED_FUNCTION_15(v31);
        sub_1C716EA0C(v32, v28 + 1, 1);
        v27 = v42[0];
      }

      *(v27 + 16) = v28 + 1;
      *(v27 + v28 + 32) = v30;
      v29 += 16;
      ++v28;
      --v23;
    }

    while (v23);

    a1 = v41[0];
  }

  else
  {

    v27 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EC213F28 != -1)
  {
    OUTLINED_FUNCTION_4_65(&qword_1EC213F28);
  }

  v33 = sub_1C754FF1C();
  __swift_project_value_buffer(v33, qword_1EC219C70);
  sub_1C75504FC();
  sub_1C75504FC();
  v34 = sub_1C754FEEC();
  v35 = sub_1C755118C();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v42[0] = swift_slowAlloc();
    *v36 = 136315650;
    *(v36 + 4) = sub_1C6F765A4(a1, a2, v42);
    *(v36 + 12) = 2048;
    *(v36 + 14) = *(v27 + 16);

    *(v36 + 22) = 2080;
    v37 = MEMORY[0x1CCA5D090](v27, &type metadata for PromptLocalizableStringBuilder.TemplateParameterType);
    v39 = sub_1C6F765A4(v37, v38, v42);

    *(v36 + 24) = v39;
    _os_log_impl(&dword_1C6F5C000, v34, v35, "Template %s produces types %ld %s", v36, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  return v27;
}

uint64_t static PromptLocalizableStringBuilder.getLocalizableString(from:templateParameterTypes:)(uint64_t a1, unint64_t a2)
{
  v4 = static PromptLocalizableStringBuilder.getParameterTypes(from:)(a1, a2);
  static PromptLocalizableStringBuilder.getLocalizableStringKey(from:types:)(a1, a2, v4);
  static PromptLocalizableStringBuilder.getLocalizableString(from:types:)();
  v6 = v5;
  v8 = v7;

  v9 = OUTLINED_FUNCTION_216();
  MEMORY[0x1CCA5CD70](v9);

  MEMORY[0x1CCA5CD70](0x22203D2022, 0xE500000000000000);
  MEMORY[0x1CCA5CD70](v6, v8);

  MEMORY[0x1CCA5CD70](15138, 0xE200000000000000);
  return 34;
}

void static PromptLocalizableStringBuilder.getLocalizableStringComment(from:templateParameterTypes:)()
{
  OUTLINED_FUNCTION_223();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 80);
  v24 = *(v0 + 88);
  v22 = *(v0 + 72);
  v23 = *(v0 + 96);
  v25 = *(v0 + 104);
  v26 = *(v0 + 105);
  v27 = *(v0 + 106);
  v28 = *(v0 + 107);
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000034, 0x80000001C75A6A40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E6530];
  *(v9 + 16) = xmmword_1C755BAB0;
  v11 = MEMORY[0x1E69E65A8];
  *(v9 + 56) = v10;
  *(v9 + 64) = v11;
  *(v9 + 32) = v1;
  v12 = sub_1C75506BC();
  MEMORY[0x1CCA5CD70](v12);

  MEMORY[0x1CCA5CD70](0x6D6F72702041202ELL, 0xEA00000000007470);
  v13 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v13 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    MEMORY[0x1CCA5CD70](v2, v4);
    OUTLINED_FUNCTION_6_62();
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](0x2220726F6620, 0xE600000000000000);
  }

  v14 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v14 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    MEMORY[0x1CCA5CD70](v3, v5);
    OUTLINED_FUNCTION_6_62();
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](0x222074756F626120, 0xE800000000000000);
  }

  v15 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v15 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    MEMORY[0x1CCA5CD70](v6, v7);
    OUTLINED_FUNCTION_6_62();
    OUTLINED_FUNCTION_11_46();
    v16 = OUTLINED_FUNCTION_57_0();
    MEMORY[0x1CCA5CD70](v16);
  }

  v17 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v17 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    MEMORY[0x1CCA5CD70]();
    OUTLINED_FUNCTION_6_62();
    OUTLINED_FUNCTION_11_46();
    v18 = OUTLINED_FUNCTION_57_0();
    MEMORY[0x1CCA5CD70](v18);
  }

  v19 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v19 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    MEMORY[0x1CCA5CD70]();
    OUTLINED_FUNCTION_6_62();
    OUTLINED_FUNCTION_11_46();
    v20 = OUTLINED_FUNCTION_57_0();
    MEMORY[0x1CCA5CD70](v20);
  }

  if (v25)
  {
    OUTLINED_FUNCTION_10_55();
    OUTLINED_FUNCTION_19_45();
    MEMORY[0x1CCA5CD70]();
  }

  if (v26)
  {
    OUTLINED_FUNCTION_10_55();
    OUTLINED_FUNCTION_19_45();
    MEMORY[0x1CCA5CD70]();
  }

  if (v27)
  {
    OUTLINED_FUNCTION_10_55();
    OUTLINED_FUNCTION_19_45();
    MEMORY[0x1CCA5CD70](0xD000000000000010);
  }

  if (v28)
  {
    OUTLINED_FUNCTION_10_55();
    OUTLINED_FUNCTION_19_45();
    MEMORY[0x1CCA5CD70]();
  }

  static PromptLocalizableStringBuilder.getExampleLocalizedString(from:types:)();
  MEMORY[0x1CCA5CD70]();

  OUTLINED_FUNCTION_6_62();
  OUTLINED_FUNCTION_11_46();
  v21 = OUTLINED_FUNCTION_57_0();
  MEMORY[0x1CCA5CD70](v21);

  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](3090976, 0xE300000000000000);

  OUTLINED_FUNCTION_224_0();
}

uint64_t static PromptLocalizableStringBuilder.getLocalizableStringKey(from:types:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1C6FB5E8C();
  OUTLINED_FUNCTION_2_80();
  v52 = sub_1C755155C();
  v53 = v6;
  v58 = 44;
  v59 = 0xE100000000000000;
  v56 = 0;
  v57 = 0xE000000000000000;
  OUTLINED_FUNCTION_2_80();
  sub_1C755155C();

  v50 = sub_1C7260C4C();
  v51 = v7;

  v8 = *(a3 + 16);
  if (v8)
  {
    v49 = a1;
    v58 = MEMORY[0x1E69E7CC0];
    v9 = OUTLINED_FUNCTION_23_33();
    sub_1C6F7ED9C(v9, v10, v11, v12, v13, v14, v15);
    v16 = (a3 + 32);
    v17 = v58;
    do
    {
      v18 = *v16++;
      v19 = 0xEA00000000006E6FLL;
      v52 = 0;
      v53 = 0xE000000000000000;
      v20 = 0x7372655068746977;
      switch(v18)
      {
        case 1:
          v19 = 0xE600000000000000;
          v20 = 0x656D69547461;
          break;
        case 2:
          v20 = OUTLINED_FUNCTION_16_41();
          v19 = 0xEB00000000797469;
          break;
        case 3:
          v20 = OUTLINED_FUNCTION_17_49();
          v19 = 0xEC0000006563616CLL;
          break;
        default:
          break;
      }

      MEMORY[0x1CCA5CD70](v20, v19);

      MEMORY[0x1CCA5CD70](4203808, 0xE300000000000000);
      v21 = v52;
      v22 = v53;
      v58 = v17;
      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      if (v24 >= v23 >> 1)
      {
        v26 = OUTLINED_FUNCTION_15(v23);
        sub_1C6F7ED9C(v26, v24 + 1, 1, v27, v28, v29, v30);
        v17 = v58;
      }

      *(v17 + 16) = v24 + 1;
      v25 = v17 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      --v8;
    }

    while (v8);
    a1 = v49;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  OUTLINED_FUNCTION_0_118();
  sub_1C7099594(v31, &unk_1EC217A00, &qword_1C755BD70, v32);
  v33 = sub_1C75505FC();
  v35 = v34;

  sub_1C75504FC();
  sub_1C7033D84(1, v33, v35);
  v36 = sub_1C75514AC();
  v38 = v37;

  sub_1C70CE56C(1uLL, v33, v35);
  v58 = v36;
  v59 = v38;
  v54 = v39;
  v55 = v40;
  sub_1C70D3F24();
  sub_1C75504FC();
  sub_1C755083C();

  v52 = 0xD000000000000010;
  v53 = 0x80000001C75A6B00;
  MEMORY[0x1CCA5CD70](v50, v51);

  MEMORY[0x1CCA5CD70](v36, v38);

  if (qword_1EC213F28 != -1)
  {
    OUTLINED_FUNCTION_4_65(&qword_1EC213F28);
  }

  v41 = sub_1C754FF1C();
  __swift_project_value_buffer(v41, qword_1EC219C70);
  sub_1C75504FC();
  sub_1C75504FC();
  v42 = sub_1C754FEEC();
  v43 = sub_1C755118C();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v44 = 136315394;
    *(v44 + 4) = sub_1C6F765A4(a1, a2, &v52);
    *(v44 + 12) = 2080;
    v45 = OUTLINED_FUNCTION_216();
    *(v44 + 14) = sub_1C6F765A4(v45, v46, v47);
    _os_log_impl(&dword_1C6F5C000, v42, v43, "Template %s produces key %s", v44, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  return OUTLINED_FUNCTION_216();
}

void static PromptLocalizableStringBuilder.getLocalizableString(from:types:)()
{
  OUTLINED_FUNCTION_223();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v0 + 32;
    sub_1C75504FC();
    v3 = 1;
    do
    {
      ++v2;
      v4 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v4);

      MEMORY[0x1CCA5CD70](16420, 0xE200000000000000);
      sub_1C6FB5E8C();
      OUTLINED_FUNCTION_14_43();
      OUTLINED_FUNCTION_2_80();
      sub_1C755155C();

      ++v3;
      --v1;
    }

    while (v1);
  }

  else
  {
    sub_1C75504FC();
  }

  OUTLINED_FUNCTION_224_0();
}

void static PromptLocalizableStringBuilder.getExampleLocalizedString(from:types:)()
{
  OUTLINED_FUNCTION_223();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = (v0 + 32);
    sub_1C75504FC();
    do
    {
      v3 = *v2++;
      switch(v3)
      {
        case 1:
          OUTLINED_FUNCTION_20_43();
          break;
        case 2:
          OUTLINED_FUNCTION_18_34();
          break;
        case 3:
          OUTLINED_FUNCTION_7_52();
          break;
        default:
          break;
      }

      sub_1C6FB5E8C();
      OUTLINED_FUNCTION_14_43();
      OUTLINED_FUNCTION_2_80();
      sub_1C755155C();

      --v1;
    }

    while (v1);
  }

  else
  {
    sub_1C75504FC();
  }

  OUTLINED_FUNCTION_224_0();
}

uint64_t PromptLocalizableStringBuilder.TemplateParameterType.placeholder.getter()
{
  result = 0x726F6C796154;
  switch(*v0)
  {
    case 1:
      result = 0x65666552656D6974;
      break;
    case 2:
      result = 0x656D614E79746963;
      break;
    case 3:
      result = 0x6D614E6563616C70;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t PromptLocalizableStringBuilder.TemplateParameterType.exampleValue.getter()
{
  result = 0x726F6C796154;
  switch(*v0)
  {
    case 1:
      result = 0x796164697246;
      break;
    case 2:
      result = 0x7369726150;
      break;
    case 3:
      result = 0x657276756F4CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7260C4C()
{
  v0 = sub_1C754D84C();
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  v6 = v5 - v4;
  sub_1C754D7BC();
  sub_1C6FB5E8C();
  v7 = sub_1C755151C();
  (*(v2 + 8))(v6, v0);
  v12 = *(v7 + 16);
  if (v12)
  {
    v29 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v12, 0, v8, v9, v10, v11);
    v13 = v7 + 40;
    do
    {
      v14 = sub_1C755153C();
      v16 = v15;
      v18 = *(v29 + 16);
      v17 = *(v29 + 24);
      if (v18 >= v17 >> 1)
      {
        v20 = OUTLINED_FUNCTION_15(v17);
        sub_1C6F7ED9C(v20, v18 + 1, 1, v21, v22, v23, v24);
      }

      *(v29 + 16) = v18 + 1;
      v19 = v29 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v13 += 16;
      --v12;
    }

    while (v12);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  OUTLINED_FUNCTION_0_118();
  sub_1C7099594(v25, &unk_1EC217A00, &qword_1C755BD70, v26);
  v27 = sub_1C75505FC();

  return v27;
}

uint64_t PromptLocalizableStringBuilder.TemplateParameterType.keyWithTag.getter()
{
  v1 = 0xEA00000000006E6FLL;
  v2 = 0x7372655068746977;
  switch(*v0)
  {
    case 1:
      v1 = 0xE600000000000000;
      v2 = 0x656D69547461;
      break;
    case 2:
      v1 = 0xEB00000000797469;
      v2 = OUTLINED_FUNCTION_16_41();
      break;
    case 3:
      v1 = 0xEC0000006563616CLL;
      v2 = OUTLINED_FUNCTION_17_49();
      break;
    default:
      break;
  }

  MEMORY[0x1CCA5CD70](v2, v1);

  MEMORY[0x1CCA5CD70](4203808, 0xE300000000000000);
  return 0;
}

void static PromptLocalizableStringBuilder.TemplateParameterType.placeHolderValuesLowercased.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  *(swift_initStackObject() + 16) = xmmword_1C755F060;
  OUTLINED_FUNCTION_7_52();
  *(v0 + 32) = v1;
  *(v0 + 40) = 0xE900000000000065;
  *(v0 + 48) = 0x656D614E79746963;
  *(v0 + 56) = 0xE800000000000000;
  strcpy((v0 + 64), "timeReference");
  *(v0 + 78) = -4864;
  *(v0 + 80) = 0x614E6E6F73726570;
  *(v0 + 88) = 0xEA0000000000656DLL;
  v52 = MEMORY[0x1E69E7CC0];
  sub_1C6F7ED9C(0, 4, 0, v2, v3, v4, v5);
  v6 = v52;
  v7 = sub_1C75506FC();
  v9 = v8;
  v11 = *(v52 + 16);
  v10 = *(v52 + 24);
  if (v11 >= v10 >> 1)
  {
    v32 = OUTLINED_FUNCTION_15(v10);
    sub_1C6F7ED9C(v32, v11 + 1, 1, v33, v34, v35, v36);
    v6 = v52;
  }

  *(v6 + 16) = v11 + 1;
  v12 = v6 + 16 * v11;
  *(v12 + 32) = v7;
  *(v12 + 40) = v9;
  v13 = sub_1C75506FC();
  v15 = v14;
  v17 = *(v6 + 16);
  v16 = *(v6 + 24);
  if (v17 >= v16 >> 1)
  {
    v37 = OUTLINED_FUNCTION_15(v16);
    sub_1C6F7ED9C(v37, v17 + 1, 1, v38, v39, v40, v41);
    v6 = v52;
  }

  *(v6 + 16) = v17 + 1;
  v18 = v6 + 16 * v17;
  *(v18 + 32) = v13;
  *(v18 + 40) = v15;
  v19 = sub_1C75506FC();
  v21 = v20;
  v23 = *(v6 + 16);
  v22 = *(v6 + 24);
  if (v23 >= v22 >> 1)
  {
    v42 = OUTLINED_FUNCTION_15(v22);
    sub_1C6F7ED9C(v42, v23 + 1, 1, v43, v44, v45, v46);
  }

  v24 = v52;
  *(v52 + 16) = v23 + 1;
  v25 = v52 + 16 * v23;
  *(v25 + 32) = v19;
  *(v25 + 40) = v21;
  v26 = sub_1C75506FC();
  v28 = v27;
  v30 = *(v52 + 16);
  v29 = *(v52 + 24);
  if (v30 >= v29 >> 1)
  {
    v47 = OUTLINED_FUNCTION_15(v29);
    sub_1C6F7ED9C(v47, v30 + 1, 1, v48, v49, v50, v51);
    v24 = v52;
  }

  *(v24 + 16) = v30 + 1;
  v31 = v24 + 16 * v30;
  *(v31 + 32) = v26;
  *(v31 + 40) = v28;
  swift_setDeallocating();
  sub_1C6FDC9DC();
  sub_1C706D154();
}

uint64_t static PromptLocalizableStringBuilder.TemplateParameterType.allowedAmbiguousPeopleTokens.getter()
{
  if (qword_1EC213F30 != -1)
  {
    swift_once();
  }

  return sub_1C75504FC();
}

uint64_t PromptLocalizableStringBuilder.TemplateParameterType.key.getter()
{
  result = 0x7372655068746977;
  switch(*v0)
  {
    case 1:
      result = 0x656D69547461;
      break;
    case 2:
      result = OUTLINED_FUNCTION_16_41();
      break;
    case 3:
      result = OUTLINED_FUNCTION_17_49();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t PromptLocalizableStringBuilder.TemplateParameterType.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t sub_1C72614A8(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void *))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = a2(v6);
  }

  v7 = *(v6 + 16);
  v9[0] = v6 + 32;
  v9[1] = v7;
  result = a3(v9);
  *a1 = v6;
  return result;
}

unint64_t sub_1C726152C()
{
  result = qword_1EC219C90;
  if (!qword_1EC219C90)
  {
    result = swift_getWitnessTable(byte_1C7587A18, &unk_1F46C5988, v0, v1);
    atomic_store(result, &qword_1EC219C90);
  }

  return result;
}

unint64_t sub_1C7261584()
{
  result = qword_1EC219C98;
  if (!qword_1EC219C98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PromptLocalizableStringBuilder.TemplateParameterType, &type metadata for PromptLocalizableStringBuilder.TemplateParameterType, v0, v1);
    atomic_store(result, &qword_1EC219C98);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PromptLocalizableStringBuilder.TemplateParameterType(_BYTE *result, unsigned int a2, unsigned int a3)
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

char *sub_1C72617B8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C7551D7C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C7261B04(v7, v8, a1, v4);
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
    return sub_1C72619B0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C72618AC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C7551D7C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219CB0, &unk_1C757CEB8);
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C7262020(v7, v8, a1, v4);
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
    return sub_1C7261A90(0, v2, 1, a1);
  }

  return result;
}

char *sub_1C72619B0(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 112 * a3;
    v8 = &result[-a3];
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        if (v10[2] >= *(v10 - 12))
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(v12, v10, sizeof(v12));
        memcpy(v10, v10 - 14, 0x70uLL);
        result = memcpy(v10 - 14, v12, 0x6CuLL);
        v10 -= 14;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 112;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1C7261A90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v7 = v6;
      v8 = v5;
      do
      {
        v9 = *(v8 + 16);
        if (v9 >= *v8)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v8 + 24);
        *(v8 + 16) = *v8;
        *v8 = v9;
        *(v8 + 8) = v10;
        v8 -= 16;
      }

      while (!__CFADD__(v7++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C7261B04(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v79 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *(*a3 + 112 * v6 + 16);
        v10 = 112 * v8;
        v11 = *a3 + 112 * v8;
        v12 = *(v11 + 16);
        v13 = (v11 + 240);
        v14 = v8 + 2;
        while (1)
        {
          v15 = v14;
          if (++v6 >= v5)
          {
            break;
          }

          v16 = (v9 < v12) ^ (*v13 >= *(v13 - 14));
          v13 += 14;
          ++v14;
          if ((v16 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v6 = v5;
LABEL_9:
        if (v9 < v12)
        {
          if (v6 < v8)
          {
            goto LABEL_110;
          }

          if (v8 < v6)
          {
            if (v5 >= v15)
            {
              v5 = v15;
            }

            v17 = 112 * v5 - 112;
            v18 = v6;
            v19 = v8;
            do
            {
              if (v19 != --v18)
              {
                v20 = *a3;
                if (!*a3)
                {
                  goto LABEL_115;
                }

                memcpy(__dst, (v20 + v10), sizeof(__dst));
                memmove((v20 + v10), (v20 + v17), 0x70uLL);
                memcpy((v20 + v17), __dst, 0x6CuLL);
              }

              ++v19;
              v17 -= 112;
              v10 += 112;
            }

            while (v19 < v18);
            v5 = a3[1];
          }
        }
      }

      if (v6 < v5)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_109;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_111;
          }

          if (v8 + a4 >= v5)
          {
            v21 = v5;
          }

          else
          {
            v21 = v8 + a4;
          }

          if (v21 < v8)
          {
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
            return;
          }

          if (v6 != v21)
          {
            v75 = v7;
            v22 = *a3;
            v23 = *a3 + 112 * v6;
            v24 = v8 - v6;
            do
            {
              v25 = v24;
              v26 = v23;
              do
              {
                if (v26[2] >= *(v26 - 12))
                {
                  break;
                }

                if (!v22)
                {
                  goto LABEL_113;
                }

                memcpy(__dst, v26, sizeof(__dst));
                memcpy(v26, v26 - 14, 0x70uLL);
                memcpy(v26 - 14, __dst, 0x6CuLL);
                v26 -= 14;
              }

              while (!__CFADD__(v25++, 1));
              ++v6;
              v23 += 112;
              --v24;
            }

            while (v6 != v21);
            v6 = v21;
            v7 = v75;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_108;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC(0, v7[2] + 1, 1, v7);
        v7 = v71;
      }

      v29 = v7[2];
      v28 = v7[3];
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        sub_1C6FB17EC(v28 > 1, v29 + 1, 1, v7);
        v7 = v72;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v8;
      v32[1] = v6;
      v76 = *result;
      if (!*result)
      {
        goto LABEL_116;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_57:
            if (v39)
            {
              goto LABEL_98;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_101;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_104;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_106;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_79;
            }

            goto LABEL_72;
          }

          if (v30 < 2)
          {
            goto LABEL_100;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_72:
          if (v54)
          {
            goto LABEL_103;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v61 < v53)
          {
            goto LABEL_86;
          }

LABEL_79:
          if (v33 - 1 >= v30)
          {
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
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
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
            goto LABEL_112;
          }

          if (!*a3)
          {
            goto LABEL_114;
          }

          v65 = v7;
          v66 = &v31[2 * v33 - 2];
          v67 = *v66;
          v68 = &v31[2 * v33];
          v69 = v68[1];
          sub_1C726277C((*a3 + 112 * *v66), (*a3 + 112 * *v68), (*a3 + 112 * v69), v76);
          if (v4)
          {
            goto LABEL_91;
          }

          if (v69 < v67)
          {
            goto LABEL_93;
          }

          v70 = v65[2];
          if (v33 > v70)
          {
            goto LABEL_94;
          }

          *v66 = v67;
          v66[1] = v69;
          if (v33 >= v70)
          {
            goto LABEL_95;
          }

          v30 = v70 - 1;
          memmove(&v31[2 * v33], v68 + 2, 16 * (v70 - 1 - v33));
          v7 = v65;
          v65[2] = v70 - 1;
          if (v70 <= 2)
          {
            goto LABEL_86;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_96;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_97;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_99;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_102;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_107;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_79;
        }

        goto LABEL_57;
      }

LABEL_86:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v79 = v7;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_117;
  }

  sub_1C7262518(&v79, *result, a3);
LABEL_91:
}

void sub_1C7262020(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v86 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v81 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9);
        v11 = 16 * v7;
        v12 = (*a3 + 16 * v7);
        v15 = *v12;
        v14 = v12 + 4;
        v13 = v15;
        v16 = v7 + 2;
        while (1)
        {
          v17 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = (v10 < v13) ^ (*v14 >= *(v14 - 2));
          v14 += 2;
          ++v16;
          if ((v18 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_114;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v19 = 16 * v6 - 16;
            v20 = v9;
            v21 = v7;
            do
            {
              if (v21 != --v20)
              {
                v22 = *a3;
                if (!*a3)
                {
                  goto LABEL_119;
                }

                v23 = v22 + v11;
                v24 = v22 + v19;
                v25 = *v23;
                v26 = *(v23 + 8);
                v27 = v11 != v19 || v23 >= v24 + 16;
                if (v27)
                {
                  *v23 = *v24;
                }

                *v24 = v25;
                *(v24 + 8) = v26;
              }

              ++v21;
              v19 -= 16;
              v11 += 16;
            }

            while (v21 < v20);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_113;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_115;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v28 = *a3;
            v29 = *a3 + 16 * v9 - 16;
            v30 = v7 - v9;
            do
            {
              v31 = v30;
              v32 = v29;
              do
              {
                v33 = *(v32 + 16);
                if (v33 >= *v32)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_117;
                }

                v34 = *(v32 + 24);
                *(v32 + 16) = *v32;
                *v32 = v33;
                *(v32 + 8) = v34;
                v32 -= 16;
                v27 = __CFADD__(v31++, 1);
              }

              while (!v27);
              ++v9;
              v29 += 16;
              --v30;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_112;
      }

      v83 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC(0, v8[2] + 1, 1, v8);
        v8 = v79;
      }

      v36 = v8[2];
      v35 = v8[3];
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        sub_1C6FB17EC(v35 > 1, v36 + 1, 1, v8);
        v8 = v80;
      }

      v8[2] = v37;
      v38 = v8 + 4;
      v39 = &v8[2 * v36 + 4];
      *v39 = v7;
      v39[1] = v9;
      v84 = *result;
      if (!*result)
      {
        goto LABEL_120;
      }

      if (v36)
      {
        while (1)
        {
          v40 = v37 - 1;
          v41 = &v38[2 * v37 - 2];
          v42 = &v8[2 * v37];
          if (v37 >= 4)
          {
            break;
          }

          if (v37 == 3)
          {
            v43 = v8[4];
            v44 = v8[5];
            v53 = __OFSUB__(v44, v43);
            v45 = v44 - v43;
            v46 = v53;
LABEL_62:
            if (v46)
            {
              goto LABEL_102;
            }

            v58 = *v42;
            v57 = v42[1];
            v59 = __OFSUB__(v57, v58);
            v60 = v57 - v58;
            v61 = v59;
            if (v59)
            {
              goto LABEL_105;
            }

            v62 = v41[1];
            v63 = v62 - *v41;
            if (__OFSUB__(v62, *v41))
            {
              goto LABEL_108;
            }

            if (__OFADD__(v60, v63))
            {
              goto LABEL_110;
            }

            if (v60 + v63 >= v45)
            {
              if (v45 < v63)
              {
                v40 = v37 - 2;
              }

              goto LABEL_84;
            }

            goto LABEL_77;
          }

          if (v37 < 2)
          {
            goto LABEL_104;
          }

          v65 = *v42;
          v64 = v42[1];
          v53 = __OFSUB__(v64, v65);
          v60 = v64 - v65;
          v61 = v53;
LABEL_77:
          if (v61)
          {
            goto LABEL_107;
          }

          v67 = *v41;
          v66 = v41[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (v68 < v60)
          {
            goto LABEL_91;
          }

LABEL_84:
          if (v40 - 1 >= v37)
          {
            __break(1u);
LABEL_97:
            __break(1u);
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
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            goto LABEL_116;
          }

          if (!*a3)
          {
            goto LABEL_118;
          }

          v72 = &v38[2 * v40 - 2];
          v73 = *v72;
          v74 = &v38[2 * v40];
          v75 = v74[1];
          sub_1C7262924((*a3 + 16 * *v72), (*a3 + 16 * *v74), (*a3 + 16 * v75), v84);
          if (v5)
          {
            goto LABEL_95;
          }

          if (v75 < v73)
          {
            goto LABEL_97;
          }

          v76 = v8;
          v77 = v8[2];
          if (v40 > v77)
          {
            goto LABEL_98;
          }

          *v72 = v73;
          v72[1] = v75;
          if (v40 >= v77)
          {
            goto LABEL_99;
          }

          v37 = v77 - 1;
          memmove(&v38[2 * v40], v74 + 2, 16 * (v77 - 1 - v40));
          v76[2] = v77 - 1;
          v78 = v77 > 2;
          v8 = v76;
          v5 = 0;
          if (!v78)
          {
            goto LABEL_91;
          }
        }

        v47 = &v38[2 * v37];
        v48 = *(v47 - 8);
        v49 = *(v47 - 7);
        v53 = __OFSUB__(v49, v48);
        v50 = v49 - v48;
        if (v53)
        {
          goto LABEL_100;
        }

        v52 = *(v47 - 6);
        v51 = *(v47 - 5);
        v53 = __OFSUB__(v51, v52);
        v45 = v51 - v52;
        v46 = v53;
        if (v53)
        {
          goto LABEL_101;
        }

        v54 = v42[1];
        v55 = v54 - *v42;
        if (__OFSUB__(v54, *v42))
        {
          goto LABEL_103;
        }

        v53 = __OFADD__(v45, v55);
        v56 = v45 + v55;
        if (v53)
        {
          goto LABEL_106;
        }

        if (v56 >= v50)
        {
          v70 = *v41;
          v69 = v41[1];
          v53 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v53)
          {
            goto LABEL_111;
          }

          if (v45 < v71)
          {
            v40 = v37 - 2;
          }

          goto LABEL_84;
        }

        goto LABEL_62;
      }

LABEL_91:
      v6 = a3[1];
      v7 = v83;
      a4 = v81;
      if (v83 >= v6)
      {
        v86 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_121;
  }

  sub_1C7262650(&v86, *result, a3);
LABEL_95:
}

uint64_t sub_1C7262518(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C7420830();
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1C726277C((*a3 + 112 * *v4), (*a3 + 112 * *v9), (*a3 + 112 * v10), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1C7262650(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C7420830();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1C7262924((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1C726277C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 112;
  v9 = (a3 - a2) / 112;
  if (v8 < v9)
  {
    sub_1C741E7BC(a1, (a2 - a1) / 112, a4);
    v10 = &v4[112 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*(v6 + 2) >= *(v4 + 2))
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 112;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 112;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 112;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    memmove(v7, v12, 0x70uLL);
    goto LABEL_13;
  }

  sub_1C741E7BC(a2, (a3 - a2) / 112, a4);
  v10 = &v4[112 * v9];
LABEL_15:
  for (v5 -= 112; v10 > v4 && v6 > v7; v5 -= 112)
  {
    if (*(v10 - 12) < *(v6 - 12))
    {
      v15 = v6 - 112;
      v13 = v5 + 112 == v6;
      v6 -= 112;
      if (!v13)
      {
        memmove(v5, v15, 0x70uLL);
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 112)
    {
      memmove(v5, v10 - 112, 0x70uLL);
    }

    v10 -= 112;
  }

LABEL_28:
  v16 = 112 * ((v10 - v4) / 112);
  if (v6 != v4 || v6 >= &v4[v16])
  {
    memmove(v6, v4, v16);
  }

  return 1;
}

uint64_t sub_1C7262924(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1C7423CF4(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_1C7423CF4(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_15:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    if (*(v10 - 2) < *v14)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

void QueryGenerator.applySortOrderToAssetUUIDsLeveragingTrips(_:with:eventRecorder:)()
{
  OUTLINED_FUNCTION_33();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_10_56();
  v9 = sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_0();
  v15 = v14 - v13;
  v16 = *v6;
  v142 = v4;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  OUTLINED_FUNCTION_29_28("QueryGenerator.applySortOrderLeveragingTrips", 44);
  v17 = *(v8 + 16);
  if (!v16)
  {

    goto LABEL_11;
  }

  if (v16 == 1)
  {
    v18 = v1;
  }

  else
  {
    v18 = 1953718636;
  }

  v19 = OUTLINED_FUNCTION_16_42(v18);

  if ((v19 & 1) != 0 || v17 < 3)
  {
LABEL_11:
    v30 = sub_1C754FEEC();
    v31 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v31))
    {
      v139 = v11;
      v141 = v15;
      v32 = OUTLINED_FUNCTION_23_1();
      v33 = OUTLINED_FUNCTION_20_1();
      v144[0] = v33;
      OUTLINED_FUNCTION_25_28(4.8151e-34);
      v36 = 1953718636;
      if (v37)
      {
        v36 = v1;
      }

      else
      {
        v35 = 0xE400000000000000;
      }

      if (v16)
      {
        v38 = v36;
      }

      else
      {
        v38 = 1701736302;
      }

      if (v16)
      {
        v39 = v35;
      }

      else
      {
        v39 = v34;
      }

      v40 = sub_1C6F765A4(v38, v39, v144);

      *(v32 + 4) = v40;
      *(v32 + 12) = 2048;
      *(v32 + 14) = v17;
      _os_log_impl(&dword_1C6F5C000, v30, v31, "Should not apply the sort order %s on %ld consolidated assets, fallback to using the consolidated assets", v32, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v33);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();

      v11 = v139;
      v15 = v141;
    }

    else
    {
    }

    OUTLINED_FUNCTION_10_3(v142);
    sub_1C75504FC();
    OUTLINED_FUNCTION_18_35();
    v29 = v9;
    goto LABEL_96;
  }

  v140 = v15;
  v137 = v9;
  v20 = v2 + *(type metadata accessor for QueryGenerator(0) + 24);
  v21 = *v20;
  v22 = static StoryGenerationUtilities.assetUUIDsByTripUUID(for:in:)();
  LOBYTE(v144[0]) = v16;
  sub_1C72638C8(v144, v8, v22);
  if ((v23 & 1) == 0)
  {

    v41 = sub_1C754FEEC();
    v42 = sub_1C755119C();
    if (OUTLINED_FUNCTION_128(v42))
    {
      v43 = OUTLINED_FUNCTION_41_0();
      v44 = OUTLINED_FUNCTION_20_1();
      v144[0] = v44;
      *v43 = 136315138;
      if (v16 == 2)
      {
        v45 = 1953718636;
      }

      else
      {
        v45 = 0x7473726966;
      }

      v46 = v11;
      if (v16 == 2)
      {
        v47 = 0xE400000000000000;
      }

      else
      {
        v47 = 0xE500000000000000;
      }

      v48 = sub_1C6F765A4(v45, v47, v144);
      v11 = v46;

      *(v43 + 4) = v48;
      _os_log_impl(&dword_1C6F5C000, v41, v42, "Unable to apply sort order %s on trips, fallback to using the consolidated assets", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    goto LABEL_32;
  }

  v132 = v17;
  v138 = v11;
  sub_1C75504FC();
  v135 = v22;
  v24 = sub_1C7080ED4();
  v25 = *(v20 + 8);
  v26 = *v20;

  v27 = [v26 librarySpecificFetchOptions];
  [v27 setSharingFilter_];

  v136 = v16;
  if (v16 == 2)
  {
    OUTLINED_FUNCTION_10_56();
    v28 = sub_1C7551DBC();
    v29 = v9;
  }

  else
  {
    v28 = 1;
    v29 = v9;
    OUTLINED_FUNCTION_10_56();
  }

  v49 = sub_1C70667BC(v28 & 1);
  sub_1C71F8834(v49, v27);
  v143 = 0;
  type metadata accessor for CollectionFetcherOptions();
  swift_initStackObject();
  v50 = v21;
  v51 = v27;
  v134 = CollectionFetcherOptions.init(photoLibrary:fetchOptions:fetchContext:sortAscending:)(v50, v27, &v143, 0);
  v54 = sub_1C70822D4(v134, v24, v52, v53);
  v55 = [v54 fetchedObjects];

  v133 = v51;
  if (v55)
  {
    sub_1C7265F94();
    v56 = sub_1C7550B5C();

    if (sub_1C6FB6304() >= 1)
    {

      sub_1C75504FC();
      v57 = sub_1C754FEEC();
      v58 = sub_1C75511BC();

      v130 = v57;
      v59 = &selRef_mergedPersonIdentifiers;
      if (os_log_type_enabled(v57, v58))
      {
        v129 = v58;
        v60 = OUTLINED_FUNCTION_41_0();
        v127 = OUTLINED_FUNCTION_20_1();
        v144[0] = v127;
        v128 = v60;
        *v60 = 136315138;
        v61 = sub_1C6FB6304();
        v62 = 0;
        v63 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (v61 == v62)
          {
            v86 = MEMORY[0x1CCA5D090](v63, MEMORY[0x1E69E6158]);
            v88 = v87;

            v89 = sub_1C6F765A4(v86, v88, v144);

            *(v128 + 1) = v89;
            _os_log_impl(&dword_1C6F5C000, v130, v129, "Sorted trips = %s", v128, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v127);
            OUTLINED_FUNCTION_23_3();
            OUTLINED_FUNCTION_109();

            goto LABEL_62;
          }

          if ((v56 & 0xC000000000000001) != 0)
          {
            v64 = MEMORY[0x1CCA5DDD0](v62, v56);
          }

          else
          {
            if (v62 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_102;
            }

            v64 = *(v56 + 8 * v62 + 32);
          }

          v65 = v62 + 1;
          if (__OFADD__(v62, 1))
          {
            break;
          }

          v66 = v64;
          v67 = [v66 uuid];
          if (v67)
          {
            v68 = v67;
            v69 = sub_1C755068C();
            v126 = v70;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_24_0();
              sub_1C6FB1814();
              v63 = v74;
            }

            v72 = *(v63 + 16);
            v71 = *(v63 + 24);
            if (v72 >= v71 >> 1)
            {
              OUTLINED_FUNCTION_15(v71);
              sub_1C6FB1814();
              v63 = v75;
            }

            *(v63 + 16) = v72 + 1;
            v73 = v63 + 16 * v72;
            *(v73 + 32) = v69;
            *(v73 + 40) = v126;
            v62 = v65;
          }

          else
          {

            ++v62;
          }
        }

LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
      }

      else
      {

LABEL_62:
        if (!sub_1C6FB6304())
        {
          goto LABEL_66;
        }

        sub_1C6FB6330();
        if ((v56 & 0xC000000000000001) == 0)
        {
          v90 = *(v56 + 32);
LABEL_65:
          v91 = v90;

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
          v56 = swift_allocObject();
          *(v56 + 16) = xmmword_1C7565670;
          *(v56 + 32) = v91;
LABEL_66:
          v92 = sub_1C6FB6304();
          v93 = 0;
          v94 = MEMORY[0x1E69E7CC0];
          while (v92 != v93)
          {
            if ((v56 & 0xC000000000000001) != 0)
            {
              v95 = MEMORY[0x1CCA5DDD0](v93, v56);
            }

            else
            {
              if (v93 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_99;
              }

              v95 = *(v56 + 8 * v93 + 32);
            }

            v96 = v93 + 1;
            if (__OFADD__(v93, 1))
            {
              __break(1u);
LABEL_99:
              __break(1u);
LABEL_100:
              __break(1u);
              goto LABEL_101;
            }

            v97 = v95;
            v98 = [v97 v59[434]];
            if (v98)
            {
              v99 = v98;
              v100 = sub_1C755068C();
              v131 = v101;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_24_0();
                sub_1C6FB1814();
                v94 = v105;
              }

              v103 = *(v94 + 16);
              v102 = *(v94 + 24);
              if (v103 >= v102 >> 1)
              {
                OUTLINED_FUNCTION_15(v102);
                sub_1C6FB1814();
                v94 = v106;
              }

              *(v94 + 16) = v103 + 1;
              v104 = v94 + 16 * v103;
              *(v104 + 32) = v100;
              *(v104 + 40) = v131;
              v93 = v96;
            }

            else
            {

              ++v93;
            }
          }

          v107 = 0;
          v144[0] = MEMORY[0x1E69E7CD0];
          v108 = *(v94 + 16);
          v109 = v94 + 40;
          v56 = v135;
          v59 = MEMORY[0x1E69E7CC0];
          while (v108 != v107)
          {
            if (v107 >= *(v94 + 16))
            {
              goto LABEL_100;
            }

            ++v107;
            sub_1C75504FC();
            v110 = sub_1C6FE3768();
            if (!v110)
            {
              v110 = v59;
            }

            sub_1C73978C4(v110);

            v109 += 16;
          }

          v111 = *(v144[0] + 16);
          sub_1C75504FC();
          v112 = sub_1C754FEEC();
          v113 = sub_1C75511BC();

          if (os_log_type_enabled(v112, v113))
          {
            v114 = OUTLINED_FUNCTION_23_1();
            v115 = OUTLINED_FUNCTION_20_1();
            v144[0] = v115;
            *v114 = 134218242;
            *(v114 + 4) = v111;
            *(v114 + 12) = 2080;
            v116 = MEMORY[0x1CCA5D090](v94, MEMORY[0x1E69E6158]);
            v118 = v117;

            v119 = sub_1C6F765A4(v116, v118, v144);

            *(v114 + 14) = v119;
            _os_log_impl(&dword_1C6F5C000, v112, v113, "There are %ld selected assets from selected trips = %s", v114, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v115);
            OUTLINED_FUNCTION_109();
            OUTLINED_FUNCTION_109();
          }

          else
          {
          }

          v11 = v138;
          v15 = v140;
          if (v111 >= 3)
          {

            OUTLINED_FUNCTION_10_3(v142);
            sub_1C754F1AC();
            v29 = v137;
            goto LABEL_96;
          }

          v41 = sub_1C754FEEC();
          v120 = sub_1C755119C();
          if (OUTLINED_FUNCTION_128(v120))
          {
            v121 = OUTLINED_FUNCTION_20_1();
            v122 = OUTLINED_FUNCTION_20_1();
            v144[0] = v122;
            *v121 = 136315650;
            v123 = 0xE500000000000000;
            v124 = 1953718636;
            if (v136 == 1)
            {
              v124 = 0x7473726966;
            }

            else
            {
              v123 = 0xE400000000000000;
            }

            v29 = v137;
            v125 = sub_1C6F765A4(v124, v123, v144);

            *(v121 + 4) = v125;
            *(v121 + 12) = 2048;
            *(v121 + 14) = v111;
            *(v121 + 22) = 2048;
            *(v121 + 24) = v132;
            _os_log_impl(&dword_1C6F5C000, v41, v120, "No assets after the sort order %s (%ld) is applied on %ld consolidated assets, fallback to using the consolidated assets", v121, 0x20u);
            __swift_destroy_boxed_opaque_existential_1(v122);
            OUTLINED_FUNCTION_109();
            OUTLINED_FUNCTION_109();

            v11 = v138;
            goto LABEL_33;
          }

LABEL_32:
          v29 = v137;
LABEL_33:
          OUTLINED_FUNCTION_10_3(v142);
          sub_1C75504FC();
          v15 = v140;
          OUTLINED_FUNCTION_18_35();
          goto LABEL_96;
        }
      }

      v90 = MEMORY[0x1CCA5DDD0](0, v56);
      goto LABEL_65;
    }

    v51 = v133;
  }

  sub_1C75504FC();
  v76 = sub_1C754FEEC();
  v77 = sub_1C755119C();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = OUTLINED_FUNCTION_23_1();
    v144[0] = swift_slowAlloc();
    OUTLINED_FUNCTION_25_28(4.8151e-34);
    v80 = 1953718636;
    if (v37)
    {
      v80 = v20;
    }

    else
    {
      v79 = 0xE400000000000000;
    }

    v81 = sub_1C6F765A4(v80, v79, v144);

    *(v78 + 4) = v81;
    *(v78 + 12) = 2080;
    v82 = sub_1C7550F9C();
    v84 = v83;

    v85 = sub_1C6F765A4(v82, v84, v144);

    *(v78 + 14) = v85;
    _os_log_impl(&dword_1C6F5C000, v76, v77, "No trips to select for the sort order %s using trip uuids = %s, fallback to returning the consolidated assets", v78, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  OUTLINED_FUNCTION_10_3(v142);
  sub_1C75504FC();
  v15 = v140;
  OUTLINED_FUNCTION_18_35();
  v11 = v138;
LABEL_96:
  (*(v11 + 8))(v15, v29);
  OUTLINED_FUNCTION_25_0();
}

void sub_1C72638C8(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v5 = sub_1C7551DBC();

    if ((v5 & 1) == 0)
    {
      v6 = 1 << *(a3 + 32);
      v7 = -1;
      if (v6 < 64)
      {
        v7 = ~(-1 << v6);
      }

      v8 = v7 & *(a3 + 64);
      v9 = (v6 + 63) >> 6;
      sub_1C75504FC();
      v10 = 0;
      v11 = MEMORY[0x1E69E7CC0];
      while (v8)
      {
LABEL_11:
        v13 = *(*(a3 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v8)))));
        v14 = *(v13 + 16);
        v15 = *(v11 + 16);
        if (__OFADD__(v15, v14))
        {
          goto LABEL_26;
        }

        sub_1C75504FC();
        if (!swift_isUniquelyReferenced_nonNull_native() || v15 + v14 > *(v11 + 24) >> 1)
        {
          sub_1C6FB1814();
          v11 = v16;
        }

        v8 &= v8 - 1;
        if (*(v13 + 16))
        {
          if ((*(v11 + 24) >> 1) - *(v11 + 16) < v14)
          {
            goto LABEL_27;
          }

          swift_arrayInitWithCopy();

          if (v14)
          {
            v17 = *(v11 + 16);
            v18 = __OFADD__(v17, v14);
            v19 = v17 + v14;
            if (v18)
            {
              goto LABEL_28;
            }

            *(v11 + 16) = v19;
          }
        }

        else
        {

          if (v14)
          {
            __break(1u);
            goto LABEL_22;
          }
        }
      }

      while (1)
      {
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v12 >= v9)
        {

          sub_1C706D154();
          v21 = v20;
          sub_1C75504FC();
          sub_1C7238810(v21, a2);

          return;
        }

        v8 = *(a3 + 64 + 8 * v12);
        ++v10;
        if (v8)
        {
          v10 = v12;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
    }
  }

  else
  {
LABEL_22:
  }
}

void QueryGenerator.applySortOrderToAssetUUIDsLeveragingMoments(_:with:eventRecorder:)()
{
  OUTLINED_FUNCTION_33();
  v133 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_10_56();
  v126 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_0();
  v125 = v12 - v11;
  v13 = sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v132 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14_0();
  v18 = v17 - v16;
  v19 = *v5;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  OUTLINED_FUNCTION_29_28("QueryGenerator.applySortOrderLeveragingMoments", 46);
  v130 = *(v7 + 16);
  v131 = v19;
  if (!v19)
  {

    goto LABEL_10;
  }

  if (v19 == 1)
  {
    v20 = v1;
  }

  else
  {
    v20 = 1953718636;
  }

  v21 = OUTLINED_FUNCTION_16_42(v20);

  if ((v21 & 1) != 0 || v130 < 3)
  {
LABEL_10:
    v27 = sub_1C754FEEC();
    v28 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_7_0(v28))
    {
      v29 = v3;
      v30 = v18;
      v31 = v1;
      v32 = OUTLINED_FUNCTION_23_1();
      v33 = OUTLINED_FUNCTION_20_1();
      v134[0] = v33;
      *v32 = 136315394;
      v34 = 0xE500000000000000;
      v35 = 1953718636;
      if (v131 == 1)
      {
        v35 = v31;
      }

      else
      {
        v34 = 0xE400000000000000;
      }

      if (v131)
      {
        v36 = v35;
      }

      else
      {
        v36 = 1701736302;
      }

      if (v131)
      {
        v37 = v34;
      }

      else
      {
        v37 = 0xE400000000000000;
      }

      v38 = sub_1C6F765A4(v36, v37, v134);

      *(v32 + 4) = v38;
      *(v32 + 12) = 2048;
      *(v32 + 14) = v130;
      OUTLINED_FUNCTION_17();
      _os_log_impl(v39, v40, v41, v42, v43, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v33);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_23_3();

      v18 = v30;
      v3 = v29;
    }

    else
    {
    }

    OUTLINED_FUNCTION_10_3(v3);
    sub_1C75504FC();
    OUTLINED_FUNCTION_17_50();
    v44 = 0;
    goto LABEL_79;
  }

  v120 = v3;
  sub_1C7264758(v7);
  v123 = sub_1C75504FC();
  v121 = sub_1C7080ED4();
  v22 = v133 + *(type metadata accessor for QueryGenerator(0) + 24);
  v23 = *(v22 + 8);
  v24 = *v22;

  v25 = [v24 librarySpecificFetchOptions];
  [v25 setSharingFilter_];

  [v25 setFetchLimit_];
  if (v19 == 2)
  {
    v26 = sub_1C7551DBC();
  }

  else
  {
    v26 = 1;
  }

  v135 = 0;
  type metadata accessor for CollectionFetcherOptions();
  swift_initStackObject();
  v25;
  v45 = CollectionFetcherOptions.init(photoLibrary:fetchOptions:fetchContext:sortAscending:)(v24, v25, &v135, v26 & 1);
  v48 = sub_1C7082250(v45, v121, v46, v47);
  v49 = [v48 fetchedObjects];

  if (!v49)
  {

    sub_1C75504FC();
    v75 = sub_1C754FEEC();
    v76 = sub_1C755119C();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = OUTLINED_FUNCTION_41_0();
      v78 = OUTLINED_FUNCTION_20_1();
      v134[0] = v78;
      *v77 = 136315138;
      v79 = sub_1C7550F9C();
      v80 = v18;
      v82 = v81;

      v83 = sub_1C6F765A4(v79, v82, v134);
      v18 = v80;

      *(v77 + 4) = v83;
      OUTLINED_FUNCTION_17();
      _os_log_impl(v84, v85, v86, v87, v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v78);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_23_3();

      OUTLINED_FUNCTION_19_46();
    }

    else
    {

      OUTLINED_FUNCTION_19_46();
    }

    OUTLINED_FUNCTION_10_3(v120);
    OUTLINED_FUNCTION_17_50();
    v44 = 0;
    goto LABEL_79;
  }

  sub_1C7265F94();
  isUniquelyReferenced_nonNull_native = sub_1C7550B5C();

  v51 = sub_1C6FB6304();
  if (v51 < 0)
  {
    goto LABEL_82;
  }

  v52 = v51;
  v116 = v18;
  v119 = v7;
  if (!v51)
  {
    v124 = 0;
LABEL_51:

    v89 = sub_1C75504FC();
    v134[0] = sub_1C71CD90C(v89);
    sub_1C75504FC();
    sub_1C70401E8();

    v18 = v116;
    v90 = v120;
    if (v131)
    {
      OUTLINED_FUNCTION_22_41();
      if (v131 == 1)
      {
        static QueryGenerator.sortOrderFirstDatesSelectionContext(with:assetUUIDsByDateString:minimumNumberOfAssets:)();
      }

      else
      {
        static QueryGenerator.sortOrderLastDatesSelectionContext(with:assetUUIDsByDateString:minimumNumberOfAssets:)();
      }

      v91 = v134[1];
      if (v134[0])
      {
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C716A74C(v134[0]);
        v92 = *(v134[0] + 16);
        sub_1C75504FC();
        v93 = sub_1C754FEEC();
        v94 = sub_1C75511BC();

        if (os_log_type_enabled(v93, v94))
        {
          v95 = OUTLINED_FUNCTION_23_1();
          v96 = OUTLINED_FUNCTION_20_1();
          v134[0] = v96;
          *v95 = 134218242;
          *(v95 + 4) = v92;
          *(v95 + 12) = 2080;
          v97 = MEMORY[0x1CCA5D090](v91, MEMORY[0x1E69E6158]);
          v99 = v98;

          v100 = sub_1C6F765A4(v97, v99, v134);

          *(v95 + 14) = v100;
          _os_log_impl(&dword_1C6F5C000, v93, v94, "There are %ld selected assets from selected moment date strings = %s", v95, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v96);
          v18 = v116;
          OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_109();
        }

        else
        {
        }

        v90 = v120;
        if (v92 >= 3)
        {
          OUTLINED_FUNCTION_33_24();
          OUTLINED_FUNCTION_19_46();
          __swift_project_boxed_opaque_existential_1(v120, v120[3]);
          sub_1C754F1AC();
          goto LABEL_78;
        }

        v109 = sub_1C754FEEC();
        v110 = sub_1C755119C();
        if (os_log_type_enabled(v109, v110))
        {
          v111 = OUTLINED_FUNCTION_20_1();
          v112 = OUTLINED_FUNCTION_20_1();
          v134[0] = v112;
          *v111 = 136315650;
          if (v131 == 2)
          {
            v113 = 1953718636;
          }

          else
          {
            v113 = 0x7473726966;
          }

          if (v131 == 2)
          {
            v114 = 0xE400000000000000;
          }

          else
          {
            v114 = 0xE500000000000000;
          }

          v115 = sub_1C6F765A4(v113, v114, v134);

          *(v111 + 4) = v115;
          v18 = v116;
          *(v111 + 12) = 2048;
          *(v111 + 14) = v92;
          *(v111 + 22) = 2048;
          *(v111 + 24) = v130;
          _os_log_impl(&dword_1C6F5C000, v109, v110, "No assets after the sort order %s (%ld) is applied on %ld consolidated assets, fallback to using the consolidated assets", v111, 0x20u);
          __swift_destroy_boxed_opaque_existential_1(v112);
          v90 = v120;
          OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_109();
        }

        OUTLINED_FUNCTION_33_24();
        OUTLINED_FUNCTION_19_46();
LABEL_76:
        OUTLINED_FUNCTION_10_3(v90);
        sub_1C75504FC();
        OUTLINED_FUNCTION_17_50();
LABEL_78:
        v44 = v124;
LABEL_79:
        (*(v132 + 8))(v18, v13);
        sub_1C6F6E5B4(v44, 0);
        OUTLINED_FUNCTION_25_0();
        return;
      }
    }

    else
    {
    }

    sub_1C75504FC();
    v101 = sub_1C754FEEC();
    v102 = sub_1C755119C();
    if (OUTLINED_FUNCTION_7_0(v102))
    {
      v103 = OUTLINED_FUNCTION_41_0();
      *v103 = 134217984;
      *(v103 + 4) = *(v7 + 16);

      OUTLINED_FUNCTION_17();
      _os_log_impl(v104, v105, v106, v107, v108, 0xCu);
      OUTLINED_FUNCTION_23_3();
      OUTLINED_FUNCTION_33_24();
      OUTLINED_FUNCTION_19_46();
    }

    else
    {
      OUTLINED_FUNCTION_33_24();
      OUTLINED_FUNCTION_19_46();
    }

    goto LABEL_76;
  }

  v124 = 0;
  v53 = 0;
  v127 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v118 = (v9 + 8);
  v54 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v55 = MEMORY[0x1E69E7CC8];
  v56 = v123;
  v117 = v13;
  v128 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v129 = v51;
  while (1)
  {
    if (v54)
    {
      v57 = MEMORY[0x1CCA5DDD0](v53, isUniquelyReferenced_nonNull_native);
      goto LABEL_32;
    }

    if (v53 >= *(v127 + 16))
    {
      break;
    }

    v57 = *(isUniquelyReferenced_nonNull_native + 8 * v53 + 32);
LABEL_32:
    v58 = v57;
    v59 = sub_1C6FCA214(v58);
    if (v60)
    {
      if (*(v56 + 16))
      {
        v61 = isUniquelyReferenced_nonNull_native;
        v62 = sub_1C6F78124(v59, v60);
        v64 = v63;

        if ((v64 & 1) != 0 && *(*(*(v56 + 56) + 8 * v62) + 16))
        {
          v122 = *(*(v56 + 56) + 8 * v62);
          sub_1C75504FC();
          v65 = static StoryGenerationUtilities.dateFormatter.getter();
          v66 = [v58 localStartDate];
          sub_1C754DF2C();

          v67 = sub_1C754DECC();
          (*v118)(v125, v126);
          v68 = [v65 stringFromDate_];

          v69 = sub_1C755068C();
          v71 = v70;

          sub_1C6F6E5B4(v124, 0);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v134[0] = v55;
          sub_1C6F78124(v69, v71);
          if (__OFADD__(*(v55 + 16), (v72 & 1) == 0))
          {
            goto LABEL_81;
          }

          v73 = v72;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280, &qword_1C756C8F0);
          if (sub_1C7551A2C())
          {
            sub_1C6F78124(v69, v71);
            if ((v73 & 1) != (v74 & 1))
            {
              goto LABEL_83;
            }
          }

          isUniquelyReferenced_nonNull_native = v61;
          v52 = v129;
          if (v73)
          {
          }

          else
          {
            sub_1C6FCABE4();
          }

          v13 = v117;
          v55 = v134[0];
          sub_1C739796C(v122);
          v124 = sub_1C719D928;
          v7 = v119;
          v56 = v123;
        }

        else
        {
          isUniquelyReferenced_nonNull_native = v61;
          v52 = v129;
        }

        v54 = v128;
      }

      else
      {
      }
    }

    ++v53;

    if (v52 == v53)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  sub_1C7551E4C();
  __break(1u);

  __break(1u);
}

void *sub_1C7264758(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for QueryGenerator(0) + 24);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v47 = v4;
  v48 = v5;
  v49 = v6;
  v7 = static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(a1, &v47);
  v8 = static StoryGenerationUtilities.assetUUIDsByMomentUUID(for:)(v7);

  v9 = sub_1C7265B2C();
  if (*(v8 + 16))
  {
    v42 = 0;
    v10 = 0;
    v11 = v9 + 64;
    v12 = 1 << *(v9 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v9 + 64);
    v15 = (v12 + 63) >> 6;
    v43 = MEMORY[0x1E69E7CC8];
    v45 = v15;
    for (i = v9; ; v9 = i)
    {
      v16 = v10;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_7:
      v10 = v16;
LABEL_11:
      v17 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v18 = v17 | (v10 << 6);
      v19 = (*(v9 + 48) + 16 * v18);
      v20 = v19[1];
      v44 = *v19;
      v21 = *(*(v9 + 56) + 8 * v18);
      v47 = MEMORY[0x1E69E7CD0];
      v22 = 1 << *(v21 + 32);
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      else
      {
        v23 = -1;
      }

      v24 = v23 & *(v21 + 56);
      v25 = (v22 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      sub_1C75504FC();
      v26 = 0;
      if (v24)
      {
        goto LABEL_20;
      }

      while (1)
      {
        v27 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          __break(1u);
          goto LABEL_42;
        }

        if (v27 >= v25)
        {
          break;
        }

        v24 = *(v21 + 56 + 8 * v27);
        ++v26;
        if (v24)
        {
          v26 = v27;
          do
          {
LABEL_20:
            v24 &= v24 - 1;
            sub_1C75504FC();
            v28 = sub_1C6FE3768();
            if (!v28)
            {
              v28 = MEMORY[0x1E69E7CC0];
            }

            sub_1C73978C4(v28);
          }

          while (v24);
          continue;
        }
      }

      v29 = v47;
      if (!v47[2])
      {
        break;
      }

      sub_1C6F6E5B4(v42, 0);
      swift_isUniquelyReferenced_nonNull_native();
      v47 = v43;
      sub_1C6F78124(v44, v20);
      if (__OFADD__(v43[2], (v30 & 1) == 0))
      {
        goto LABEL_43;
      }

      v31 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280, &qword_1C756C8F0);
      v32 = sub_1C7551A2C();
      v33 = v47;
      if (v32)
      {
        v34 = v31;
        v35 = v47;
        sub_1C6F78124(v44, v20);
        if ((v34 & 1) != (v36 & 1))
        {
          goto LABEL_44;
        }

        v33 = v35;
        v31 = v34;
      }

      if (v31)
      {
        v37 = v33;
      }

      else
      {
        v37 = v33;
        sub_1C6FCABE4();
      }

      v43 = v37;
      sub_1C739796C(v29);
      v42 = sub_1C719D928;
      v15 = v45;
    }

    v16 = v10;
    v15 = v45;
    v9 = i;
    if (v14)
    {
      goto LABEL_7;
    }

LABEL_8:
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        sub_1C6F6E5B4(v42, 0);
        return v43;
      }

      v14 = *(v11 + 8 * v10);
      ++v16;
      if (v14)
      {
        goto LABEL_11;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    result = sub_1C7551E4C();
    __break(1u);
  }

  else
  {

    v39 = sub_1C754FEEC();
    v40 = sub_1C755119C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1C6F5C000, v39, v40, "No assets for the given moments", v41, 2u);
      MEMORY[0x1CCA5F8E0](v41, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);

    return sub_1C75504DC();
  }

  return result;
}

void static QueryGenerator.sortOrderFirstDatesSelectionContext(with:assetUUIDsByDateString:minimumNumberOfAssets:)()
{
  OUTLINED_FUNCTION_33();
  v97 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C70, &qword_1C75653A0);
  OUTLINED_FUNCTION_76(v9);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v10);
  v96 = OUTLINED_FUNCTION_30_28();
  OUTLINED_FUNCTION_3_0();
  v93 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_0();
  v92 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  OUTLINED_FUNCTION_76(v15);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v16);
  v94 = &v87 - v17;
  v18 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v95 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_12_3();
  MEMORY[0x1EEE9AC00](v21);
  v98 = &v87 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v99 = &v87 - v24;
  if (qword_1EDD0F3C0 != -1)
  {
    OUTLINED_FUNCTION_9_58(&qword_1EDD0F3C0);
  }

  v25 = sub_1C754FF1C();
  __swift_project_value_buffer(v25, qword_1EDD28DB0);
  v26 = sub_1C754FEEC();
  v27 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_128(v27))
  {
    v28 = OUTLINED_FUNCTION_127();
    *v28 = 0;
    _os_log_impl(&dword_1C6F5C000, v26, v27, "Created sort order for first moment selection context", v28, 2u);
    OUTLINED_FUNCTION_109();
  }

  v29 = v6[2];
  if (v29)
  {
    v91 = v6;
    v30 = v6[4];
    v31 = v6[5];
    sub_1C75504FC();
    v32 = sub_1C6FE3768();
    if (v32)
    {
      v33 = v32;
      if (*(v32 + 16) >= v97)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_1C755BAB0;
        *(v51 + 32) = v30;
        *(v51 + 40) = v31;
        *v8 = v33;
        v8[1] = v51;
        goto LABEL_40;
      }

      v97 = v32;
      v89 = v4;
      v34 = static StoryGenerationUtilities.dateFormatter.getter();
      v90 = v8;
      v35 = v34;
      v36 = sub_1C755065C();
      v37 = [v35 dateFromString_];

      v38 = v90;
      if (!v37)
      {
        goto LABEL_13;
      }

      v88 = v30;
      sub_1C754DF2C();

      if (qword_1EC214168 != -1)
      {
        OUTLINED_FUNCTION_17_0(&qword_1EC214168);
      }

      v39 = sub_1C754E24C();
      __swift_project_value_buffer(v39, qword_1EC21C0C8);
      v40 = v92;
      v41 = v93;
      (*(v93 + 104))(v92, *MEMORY[0x1E6969A48], v96);
      v42 = v94;
      sub_1C754E1FC();
      (*(v41 + 8))(v40, v96);
      if (__swift_getEnumTagSinglePayload(v42, 1, v18) == 1)
      {
        (*(v95 + 8))(v99, v18);
        sub_1C70D7CB8(v42);
        v30 = v88;
        v38 = v90;
LABEL_13:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_1C755BAB0;
        *(v43 + 32) = v30;
        *(v43 + 40) = v31;
        *v38 = v97;
        v38[1] = v43;
        goto LABEL_40;
      }

      v52 = v95;
      (*(v95 + 32))(v98, v42, v18);
      v53 = sub_1C754FEEC();
      v54 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_7_0(v54))
      {
        *OUTLINED_FUNCTION_127() = 0;
        OUTLINED_FUNCTION_17();
        _os_log_impl(v55, v56, v57, v58, v59, 2u);
        OUTLINED_FUNCTION_23_3();
      }

      v97 = (v52 + 8);
      v96 = MEMORY[0x1E69E7CC0];
      v60 = v91 + 5;
      v100 = MEMORY[0x1E69E7CD0];
      while (1)
      {
        v61 = *(v60 - 1);
        v62 = *v60;
        v63 = objc_allocWithZone(MEMORY[0x1E696AB78]);
        sub_1C75504FC();
        v64 = [v63 init];
        sub_1C754E31C();
        v65 = sub_1C754E35C();
        v66 = 0;
        if (__swift_getEnumTagSinglePayload(v0, 1, v65) != 1)
        {
          v66 = sub_1C754E32C();
          (*(*(v65 - 8) + 8))(v0, v65);
        }

        [v64 setTimeZone_];

        OUTLINED_FUNCTION_15_50();
        v67 = sub_1C755065C();
        v68 = [v64 dateFromString_];

        if (v68)
        {
          sub_1C754DF2C();

          sub_1C70BBF78();
          if ((OUTLINED_FUNCTION_13_52(v1, v99) & 1) != 0 || (OUTLINED_FUNCTION_13_52(v98, v1) & 1) != 0 || (v69 = v89, !*(v89 + 16)) || (v70 = sub_1C6F78124(v61, v62), (v71 & 1) == 0))
          {
            v79 = OUTLINED_FUNCTION_6_63();
            v80(v79);
          }

          else
          {
            if (*(*(*(v69 + 56) + 8 * v70) + 16))
            {
              v72 = sub_1C75504FC();
              sub_1C739796C(v72);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_24_0();
                sub_1C6FB1814();
                v96 = v82;
              }

              v74 = *(v96 + 16);
              v73 = *(v96 + 24);
              if (v74 >= v73 >> 1)
              {
                OUTLINED_FUNCTION_15(v73);
                sub_1C6FB1814();
                v96 = v83;
              }

              v75 = OUTLINED_FUNCTION_6_63();
              v76(v75);
              v77 = v96;
              *(v96 + 16) = v74 + 1;
              v78 = v77 + 16 * v74;
              *(v78 + 32) = v61;
              *(v78 + 40) = v62;
              goto LABEL_37;
            }

            v81 = *v97;
            sub_1C75504FC();
            v81(v1, v18);
          }
        }

LABEL_37:
        v60 += 2;
        if (!--v29)
        {
          v84 = *v97;
          (*v97)(v98, v18);
          v84(v99, v18);
          v85 = v90;
          v86 = v96;
          *v90 = v100;
          v85[1] = v86;
          goto LABEL_40;
        }
      }
    }
  }

  v44 = sub_1C754FEEC();
  v45 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_7_0(v45))
  {
    *OUTLINED_FUNCTION_127() = 0;
    OUTLINED_FUNCTION_17();
    _os_log_impl(v46, v47, v48, v49, v50, 2u);
    OUTLINED_FUNCTION_23_3();
  }

  *v8 = 0;
  v8[1] = 0;
LABEL_40:
  OUTLINED_FUNCTION_25_0();
}

void static QueryGenerator.sortOrderLastDatesSelectionContext(with:assetUUIDsByDateString:minimumNumberOfAssets:)()
{
  OUTLINED_FUNCTION_33();
  v87 = v2;
  v4 = v3;
  v6 = v5;
  v81 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C70, &qword_1C75653A0);
  OUTLINED_FUNCTION_76(v8);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  v86 = OUTLINED_FUNCTION_30_28();
  OUTLINED_FUNCTION_3_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_0();
  v80 = (v14 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  OUTLINED_FUNCTION_76(v15);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v77 - v17;
  v18 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v83 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_12_3();
  MEMORY[0x1EEE9AC00](v21);
  v85 = &v77 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v77 - v24;
  if (qword_1EDD0F3C0 != -1)
  {
LABEL_42:
    OUTLINED_FUNCTION_9_58(&qword_1EDD0F3C0);
  }

  v82 = v25;
  v26 = sub_1C754FF1C();
  v79 = __swift_project_value_buffer(v26, qword_1EDD28DB0);
  v27 = v79;
  v28 = sub_1C754FEEC();
  v29 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_7_0(v29))
  {
    v30 = OUTLINED_FUNCTION_127();
    *v30 = 0;
    _os_log_impl(&dword_1C6F5C000, v28, v27, "Created sort order for last moment selection context", v30, 2u);
    OUTLINED_FUNCTION_109();
  }

  v31 = sub_1C74ED4C4(v6);
  if (!v32)
  {
    goto LABEL_14;
  }

  v33 = v31;
  v34 = v32;
  v35 = sub_1C6FE3768();
  if (!v35)
  {

LABEL_14:
    v44 = v81;
    *v81 = 0;
    v44[1] = 0;
    goto LABEL_15;
  }

  v36 = v35;
  if (*(v35 + 16) >= v87)
  {
    goto LABEL_12;
  }

  v77 = v6;
  v78 = v4;
  v37 = static StoryGenerationUtilities.dateFormatter.getter();
  v38 = sub_1C755065C();
  v39 = [v37 dateFromString_];

  if (!v39)
  {
    goto LABEL_12;
  }

  sub_1C754DF2C();

  if (qword_1EC214168 != -1)
  {
    OUTLINED_FUNCTION_17_0(&qword_1EC214168);
  }

  v40 = sub_1C754E24C();
  __swift_project_value_buffer(v40, qword_1EC21C0C8);
  v6 = v80;
  (*(v11 + 104))(v80, *MEMORY[0x1E6969A48], v86);
  v4 = v84;
  sub_1C754E1FC();
  v41 = *(v11 + 8);
  v11 += 8;
  v41(v6, v86);
  if (__swift_getEnumTagSinglePayload(v4, 1, v18) != 1)
  {

    v45 = v83;
    (*(v83 + 32))(v85, v4, v18);
    v25 = sub_1C754FEEC();
    v46 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_7_0(v46))
    {
      v4 = OUTLINED_FUNCTION_127();
      *v4 = 0;
      OUTLINED_FUNCTION_17();
      _os_log_impl(v47, v48, v49, v50, v51, 2u);
      OUTLINED_FUNCTION_23_3();
    }

    LODWORD(v84) = 0;
    v87 = v77[2];
    v52 = v87 - 1;
    v86 = (v77 + 4);
    v80 = MEMORY[0x1E69E7CC0];
    v83 = v45 + 8;
    v88 = MEMORY[0x1E69E7CD0];
    while (1)
    {
      while (1)
      {
        v53 = v52;
        if (v52 <= 0)
        {
          if ((v52 != 0) | v84 & 1)
          {
            v74 = *v83;
            (*v83)(v85, v18);
            v74(v82, v18);
            v75 = v81;
            v76 = v80;
            *v81 = v88;
            v75[1] = v76;
            goto LABEL_15;
          }

          v52 = 0;
          LODWORD(v84) = 1;
        }

        else
        {
          --v52;
        }

        if (v53 >= v87)
        {
          __break(1u);
          goto LABEL_42;
        }

        v54 = v86 + 16 * v53;
        v4 = *v54;
        v25 = *(v54 + 8);
        v55 = objc_allocWithZone(MEMORY[0x1E696AB78]);
        sub_1C75504FC();
        v56 = [v55 init];
        sub_1C754E31C();
        v11 = sub_1C754E35C();
        v57 = 0;
        if (__swift_getEnumTagSinglePayload(v0, 1, v11) != 1)
        {
          v57 = sub_1C754E32C();
          (*(*(v11 - 8) + 8))(v0, v11);
        }

        [v56 setTimeZone_];

        OUTLINED_FUNCTION_15_50();
        v6 = sub_1C755065C();
        v58 = [v56 dateFromString_];

        if (v58)
        {
          break;
        }

LABEL_34:
      }

      sub_1C754DF2C();

      sub_1C70BBF78();
      if ((OUTLINED_FUNCTION_13_52(v1, v85) & 1) != 0 || (OUTLINED_FUNCTION_13_52(v82, v1) & 1) != 0 || (v59 = v78, !*(v78 + 2)) || (v60 = sub_1C6F78124(v4, v25), (v61 & 1) == 0))
      {
        v63 = OUTLINED_FUNCTION_6_63();
        v64(v63);
        goto LABEL_34;
      }

      if (!*(*(*(v59 + 7) + 8 * v60) + 16))
      {
        v4 = v83;
        v62 = *v83;
        sub_1C75504FC();
        v62(v1, v18);

        goto LABEL_34;
      }

      v65 = sub_1C75504FC();
      sub_1C739796C(v65);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB1814();
        v80 = v72;
      }

      v67 = v80[2];
      v66 = v80[3];
      if (v67 >= v66 >> 1)
      {
        OUTLINED_FUNCTION_15(v66);
        sub_1C6FB1814();
        v80 = v73;
      }

      v68 = OUTLINED_FUNCTION_6_63();
      v69(v68);
      v70 = v80;
      v80[2] = v67 + 1;
      v71 = &v70[2 * v67];
      v71[4] = v4;
      v71[5] = v25;
    }
  }

  (*(v83 + 8))(v82, v18);
  sub_1C70D7CB8(v4);
LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1C755BAB0;
  *(v42 + 32) = v33;
  *(v42 + 40) = v34;
  v43 = v81;
  *v81 = v36;
  v43[1] = v42;
LABEL_15:
  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C7265B2C()
{
  v1 = sub_1C75504FC();
  if (*(sub_1C71CD90C(v1) + 16))
  {
    v2 = v0 + *(type metadata accessor for QueryGenerator(0) + 24);
    v3 = *(v2 + 8);
    v4 = *v2;

    v5 = v4;
    v6 = [v5 librarySpecificFetchOptions];
    [v6 setSharingFilter_];

    type metadata accessor for DayEventsFetcher();
    LOBYTE(v38) = 0;
    type metadata accessor for CollectionFetcherOptions();
    swift_initStackObject();
    v7 = CollectionFetcherOptions.init(photoLibrary:fetchOptions:fetchContext:sortAscending:)(v5, 0, &v38, 0);
    v8 = static DayEventsFetcher.basePredicate(using:)(v7);

    [v6 setPredicate_];

    v9 = objc_opt_self();
    v10 = sub_1C7550B3C();

    v35 = v6;
    v11 = [v9 fetchPhotosHighlightUUIDByMomentUUIDForMomentUUIDs:v10 options:v6];

    v12 = sub_1C75504AC();
    v13 = v12 + 64;
    v14 = 1 << *(v12 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v12 + 64);
    v17 = (v14 + 63) >> 6;
    sub_1C75504FC();
    v18 = 0;
    v19 = MEMORY[0x1E69E7CC8];
    v36 = v17;
    if (v16)
    {
LABEL_9:
      while (1)
      {
        v21 = (v18 << 10) | (16 * __clz(__rbit64(v16)));
        v22 = (*(v12 + 48) + v21);
        v23 = v22[1];
        v37 = *v22;
        v24 = (*(v12 + 56) + v21);
        v25 = *v24;
        v26 = v24[1];
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_isUniquelyReferenced_nonNull_native();
        v38 = v19;
        sub_1C6F78124(v25, v26);
        if (__OFADD__(*(v19 + 16), (v27 & 1) == 0))
        {
          break;
        }

        v28 = v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280, &qword_1C756C8F0);
        v29 = sub_1C7551A2C();
        v19 = v38;
        if (v29)
        {
          sub_1C6F78124(v25, v26);
          if ((v28 & 1) != (v30 & 1))
          {
            goto LABEL_25;
          }
        }

        if (v28)
        {
        }

        else
        {
          sub_1C6FCABE4();
        }

        v17 = v36;
        v13 = v12 + 64;
        v16 &= v16 - 1;
        sub_1C70F082C(&v38, v37, v23);

        if (!v16)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
LABEL_5:
      while (1)
      {
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v20 >= v17)
        {

          return v19;
        }

        v16 = *(v13 + 8 * v20);
        ++v18;
        if (v16)
        {
          v18 = v20;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_25:
    result = sub_1C7551E4C();
    __break(1u);
  }

  else
  {

    v32 = sub_1C754FEEC();
    v33 = sub_1C755119C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1C6F5C000, v32, v33, "No moments that are used to fetch Day Highlights", v34, 2u);
      MEMORY[0x1CCA5F8E0](v34, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);

    return sub_1C75504DC();
  }

  return result;
}

unint64_t sub_1C7265F94()
{
  result = qword_1EC2155D8;
  if (!qword_1EC2155D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC2155D8);
  }

  return result;
}

unint64_t sub_1C7265FEC(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v4 = sub_1C755098C();

    return v4;
  }

  return result;
}

uint64_t sub_1C7266090()
{
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000043, 0x80000001C75A6E70);
  v0 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v0);

  qword_1EC219CB8 = 0;
  unk_1EC219CC0 = 0xE000000000000000;
  return result;
}

uint64_t sub_1C7266128()
{
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000043, 0x80000001C75A6E70);
  v0 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v0);

  result = MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C75A7570);
  qword_1EC219CC8 = 0;
  unk_1EC219CD0 = 0xE000000000000000;
  return result;
}

uint64_t sub_1C72661E4()
{
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD00000000000003DLL, 0x80000001C75A74A0);
  v0 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v0);

  qword_1EC219CD8 = 0;
  unk_1EC219CE0 = 0xE000000000000000;
  return result;
}

uint64_t sub_1C726627C()
{
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD00000000000003CLL, 0x80000001C75A7460);
  v0 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v0);

  qword_1EC219CE8 = 0;
  unk_1EC219CF0 = 0xE000000000000000;
  return result;
}

uint64_t sub_1C7266314()
{
  sub_1C755180C();

  v0 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v0);

  qword_1EC219CF8 = 0xD000000000000010;
  unk_1EC219D00 = 0x80000001C75A7410;
  return result;
}

uint64_t sub_1C72663A8()
{
  sub_1C755180C();

  v0 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v0);

  qword_1EC219D08 = 0xD000000000000012;
  unk_1EC219D10 = 0x80000001C75A73F0;
  return result;
}

uint64_t sub_1C726643C()
{
  sub_1C755180C();

  v0 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v0);

  qword_1EC219D18 = 0xD000000000000012;
  unk_1EC219D20 = 0x80000001C75A73D0;
  return result;
}

uint64_t sub_1C72664F8()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD0D7E8);
  __swift_project_value_buffer(v0, qword_1EDD0D7E8);
  return sub_1C754FEFC();
}

uint64_t StoryGenerationEventRecorder.__allocating_init(options:)(uint64_t a1)
{
  v2 = swift_allocObject();
  StoryGenerationEventRecorder.init(options:)(a1);
  return v2;
}

uint64_t StoryGenerationEventRecorder.init(options:)(uint64_t a1)
{
  v1 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10_14();
  v19 = v5;
  v6 = sub_1C754F61C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_10_14();
  v7 = sub_1C754F3FC();
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_10_14();
  v12 = v11;
  v13 = OBJC_IVAR____TtC18PhotosIntelligence28StoryGenerationEventRecorder_logger;
  if (qword_1EDD0D7E0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v1, qword_1EDD0D7E8);
  v15 = *(v3 + 16);
  v15(v20 + v13, v14, v1);
  v16 = v9;
  (*(v9 + 16))(v12, a1, v7);
  sub_1C754F60C();
  v15(v19, v14, v1);
  sub_1C754F41C();
  swift_allocObject();
  v17 = sub_1C754F40C();
  (*(v16 + 8))(a1, v7);
  *(v20 + OBJC_IVAR____TtC18PhotosIntelligence28StoryGenerationEventRecorder_rootEventRecorder) = v17;
  return v20;
}

uint64_t StoryGenerationEventRecorder.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence28StoryGenerationEventRecorder_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t StoryGenerationEventRecorder.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence28StoryGenerationEventRecorder_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

void sub_1C7266998(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = sub_1C754DF6C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C754F3AC();
  sub_1C754F54C();
  swift_allocObject();
  sub_1C754F50C();
  sub_1C754F53C();
  sub_1C754F52C();
  mediaBox.origin.x = v2;
  mediaBox.origin.y = v3;
  mediaBox.size.width = v4;
  mediaBox.size.height = v5;
  v6 = sub_1C754DC8C();
  v7 = CGPDFContextCreateWithURL(v6, &mediaBox, 0);

  if (v7)
  {
    CGPDFContextBeginPage(v7, 0);
    MinX = CGRectGetMinX(mediaBox);
    MaxY = CGRectGetMaxY(mediaBox);
    CGContextTranslateCTM(v7, MinX, MaxY);
    CGContextScaleCTM(v7, 1.0, -1.0);
    sub_1C754F4FC();
    CGPDFContextEndPage(v7);
    CGPDFContextClose(v7);
  }

  else
  {
    v7 = sub_1C754FEEC();
    v10 = sub_1C755119C();
    if (os_log_type_enabled(v7, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C6F5C000, v7, v10, "Unable to render performance diagram: nil CGContext", v11, 2u);
      MEMORY[0x1CCA5F8E0](v11, -1, -1);
    }
  }
}

uint64_t sub_1C7266BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C754F61C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  (*(v5 + 16))(&v25 - v10, a1, v4, v9);
  sub_1C754F60C();
  sub_1C726E15C(&qword_1EC219D70, MEMORY[0x1E69C19A8], MEMORY[0x1E69C19B0]);
  v12 = sub_1C755063C();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if (v12)
  {
    v13(v11, v4);
    v14 = MEMORY[0x1E69C18E0];
LABEL_7:
    v17 = *v14;
    v18 = sub_1C754F51C();
    v19 = *(*(v18 - 8) + 104);
    v20 = a2;
    v21 = v17;
    return v19(v20, v21, v18);
  }

  sub_1C754F60C();
  v15 = sub_1C755063C();
  v13(v7, v4);
  if (v15)
  {
    v13(v11, v4);
    v14 = MEMORY[0x1E69C1900];
    goto LABEL_7;
  }

  sub_1C754F60C();
  v16 = sub_1C755063C();
  v13(v7, v4);
  if (v16)
  {
    v13(v11, v4);
    v14 = MEMORY[0x1E69C18F0];
    goto LABEL_7;
  }

  sub_1C754F60C();
  v23 = sub_1C755063C();
  v13(v7, v4);
  v13(v11, v4);
  v18 = sub_1C754F51C();
  v19 = *(*(v18 - 8) + 104);
  if (v23)
  {
    v24 = MEMORY[0x1E69C18F8];
  }

  else
  {
    v24 = MEMORY[0x1E69C18E8];
  }

  v21 = *v24;
  v20 = a2;
  return v19(v20, v21, v18);
}

unint64_t sub_1C7266F60(uint64_t a1)
{
  v1 = 0xD000000000000024;
  v2 = a1 + 40;
  v3 = *(a1 + 16) + 1;
  while (--v3)
  {
    v4 = v2 + 16;
    sub_1C75504FC();
    v5 = sub_1C755092C();

    v2 = v4;
    if (v5)
    {
      return v1;
    }
  }

  return 0xD000000000000025;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> StoryGenerationEventRecorder.oneLiners(llmQULatency:)(Swift::Double_optional llmQULatency)
{
  v3 = v1;
  v4 = *&llmQULatency.is_nil;
  v5 = sub_1C7267160();
  if (!v2)
  {
    v7 = v5;
    v8 = sub_1C75504FC();
    v9 = sub_1C72671DC(v8);

    if ((v3 & 1) == 0)
    {
      if (qword_1EC213F40 != -1)
      {
        OUTLINED_FUNCTION_1_88();
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214F80, &qword_1C755C180);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1C755BAB0;
      *(v10 + 32) = v4;
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C6FC9178();
    }

    v11 = sub_1C72674EC(v9, v7);
    v13 = v12;

    v5 = v11;
    v6 = v13;
  }

  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t sub_1C7267160()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219D50, &qword_1C757CFB0);
  result = sub_1C754F39C();
  if (!v0)
  {
    return v2;
  }

  return result;
}

void *sub_1C72671DC(uint64_t a1)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v34 = sub_1C7267160();
    if (v1)
    {
      return v2;
    }

    v3 = v34;
  }

  v4 = v3 + 64;
  OUTLINED_FUNCTION_56_17();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  sub_1C75504FC();
  sub_1C75504FC();
  v10 = 0;
  v2 = MEMORY[0x1E69E7CC8];
  v36 = v3;
  v37 = v9;
  v38 = v3 + 64;
  if (v7)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_4:
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v11 >= v9)
    {

      return v2;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
  }

  while (!v7);
  v10 = v11;
  while (1)
  {
LABEL_8:
    v12 = __clz(__rbit64(v7)) | (v10 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = v13[1];
    v39 = *v13;
    v15 = *(*(v3 + 56) + 8 * v12);
    v16 = *(v15 + 16);
    if (v16)
    {
      v40 = MEMORY[0x1E69E7CC0];
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C716DA70(0, v16, 0);
      v17 = v40;
      v18 = *(v40 + 16);
      v19 = (v15 + 40);
      do
      {
        v20 = *(v19 - 1);
        v21 = *v19;
        v22 = *(v40 + 24);
        if (v18 >= v22 >> 1)
        {
          v23 = OUTLINED_FUNCTION_15(v22);
          sub_1C716DA70(v23, v18 + 1, 1);
        }

        *(v40 + 16) = v18 + 1;
        *(v40 + 8 * v18 + 32) = v21 - v20;
        v19 += 2;
        ++v18;
        --v16;
      }

      while (v16);
      v3 = v36;
    }

    else
    {
      sub_1C75504FC();
      sub_1C75504FC();
      v17 = MEMORY[0x1E69E7CC0];
    }

    swift_isUniquelyReferenced_nonNull_native();
    v24 = sub_1C6F78124(v39, v14);
    if (__OFADD__(v2[2], (v25 & 1) == 0))
    {
      break;
    }

    v26 = v24;
    v27 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152B8, &qword_1C755CBA0);
    if (sub_1C7551A2C())
    {
      v28 = sub_1C6F78124(v39, v14);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_32;
      }

      v26 = v28;
    }

    if (v27)
    {
      *(v2[7] + 8 * v26) = v17;
    }

    else
    {
      v2[(v26 >> 6) + 8] |= 1 << v26;
      v30 = (v2[6] + 16 * v26);
      *v30 = v39;
      v30[1] = v14;
      *(v2[7] + 8 * v26) = v17;

      v31 = v2[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_31;
      }

      v2[2] = v33;
    }

    v7 &= v7 - 1;
    v9 = v37;
    v4 = v38;
    if (!v7)
    {
      goto LABEL_4;
    }
  }

LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}