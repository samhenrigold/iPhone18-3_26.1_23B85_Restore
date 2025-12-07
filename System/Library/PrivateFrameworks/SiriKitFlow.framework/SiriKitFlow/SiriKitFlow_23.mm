void *sub_1DCD5C854(void *a1, void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1DCB4F3E0(a1, type metadata accessor for FlowToActingFlowAdapter.Event);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    a1[1] = a2[1];
    *(a1 + 16) = *(a2 + 16);
    a1[3] = a2[3];
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 48) = *(a2 + 48);
    v6 = type metadata accessor for ExecuteResponse(0);
    v7 = *(v6 + 36);
    v8 = (a1 + v7);
    v9 = (a2 + v7);
    v10 = type metadata accessor for PluginAction(0);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4AD0, &qword_1DD0EDF38);
      memcpy(v8, v9, *(*(v11 - 8) + 64));
    }

    else
    {
      v96 = v6;
      *v8 = *v9;
      v14 = v10[5];
      v15 = v8 + v14;
      v16 = v9 + v14;
      v95 = sub_1DD0DB04C();
      v92 = *(*(v95 - 8) + 32);
      v92(v15, v16);
      v17 = type metadata accessor for Input(0);
      v18 = v17[5];
      v97 = &v15[v18];
      v19 = &v16[v18];
      v93 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v20 = sub_1DD0DC76C();
          (*(*(v20 - 8) + 32))(v97, v19, v20);
          goto LABEL_30;
        case 1u:
          v29 = sub_1DD0DC76C();
          (*(*(v29 - 8) + 32))(v97, v19, v29);
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v97[*(v30 + 48)] = *&v19[*(v30 + 48)];
          goto LABEL_30;
        case 4u:
          v32 = sub_1DD0DB1EC();
          (*(*(v32 - 8) + 32))(v97, v19, v32);
          goto LABEL_30;
        case 6u:
          v87 = v17;
          v33 = sub_1DD0DB4BC();
          (*(*(v33 - 8) + 32))(v97, v19, v33);
          v90 = type metadata accessor for USOParse(0);
          v34 = v90[5];
          v35 = sub_1DD0DB3EC();
          v85 = v34;
          v36 = &v19[v34];
          v37 = v35;
          if (__swift_getEnumTagSinglePayload(v36, 1, v35))
          {
            v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v97[v85], &v19[v85], *(*(v38 - 8) + 64));
          }

          else
          {
            (*(*(v37 - 8) + 32))(&v97[v85], &v19[v85], v37);
            __swift_storeEnumTagSinglePayload(&v97[v85], 0, 1, v37);
          }

          *&v97[v90[6]] = *&v19[v90[6]];
          v50 = v90[7];
          v51 = &v97[v50];
          v52 = &v19[v50];
          v51[4] = v52[4];
          *v51 = *v52;
          goto LABEL_26;
        case 7u:
          v87 = v17;
          v39 = sub_1DD0DB4BC();
          (*(*(v39 - 8) + 32))(v97, v19, v39);
          v91 = type metadata accessor for USOParse(0);
          v40 = v91[5];
          v41 = sub_1DD0DB3EC();
          v86 = v40;
          v42 = &v19[v40];
          v43 = v41;
          if (__swift_getEnumTagSinglePayload(v42, 1, v41))
          {
            v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            v45 = v97;
            memcpy(&v97[v86], &v19[v86], *(*(v44 - 8) + 64));
          }

          else
          {
            (*(*(v43 - 8) + 32))(&v97[v86], &v19[v86], v43);
            __swift_storeEnumTagSinglePayload(&v97[v86], 0, 1, v43);
            v45 = v97;
          }

          *&v45[v91[6]] = *&v19[v91[6]];
          v53 = v91[7];
          v54 = &v45[v53];
          v55 = &v19[v53];
          v54[4] = v55[4];
          *v54 = *v55;
          v56 = type metadata accessor for LinkParse(0);
          *&v45[v56[5]] = *&v19[v56[5]];
          *&v45[v56[6]] = *&v19[v56[6]];
          *&v45[v56[7]] = *&v19[v56[7]];
LABEL_26:
          swift_storeEnumTagMultiPayload();
          v17 = v87;
          break;
        case 8u:
          v89 = v15;
          v21 = sub_1DD0DD12C();
          (*(*(v21 - 8) + 32))(v97, v19, v21);
          v22 = type metadata accessor for NLRouterParse(0);
          *&v97[*(v22 + 20)] = *&v19[*(v22 + 20)];
          v82 = v22;
          v23 = *(v22 + 24);
          v84 = &v97[v23];
          v24 = &v19[v23];
          v25 = type metadata accessor for USOParse(0);
          v83 = v24;
          v26 = v24;
          v27 = v25;
          if (__swift_getEnumTagSinglePayload(v26, 1, v25))
          {
            v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v84, v83, *(*(v28 - 8) + 64));
            v15 = v89;
          }

          else
          {
            v88 = v17;
            v46 = sub_1DD0DB4BC();
            (*(*(v46 - 8) + 32))(v84, v83, v46);
            v81 = v27;
            v47 = *(v27 + 20);
            v48 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v83[v47], 1, v48))
            {
              v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v84[v47], &v83[v47], *(*(v49 - 8) + 64));
            }

            else
            {
              (*(*(v48 - 8) + 32))(&v84[v47], &v83[v47], v48);
              __swift_storeEnumTagSinglePayload(&v84[v47], 0, 1, v48);
            }

            v15 = v89;
            *&v84[*(v81 + 24)] = *&v83[*(v81 + 24)];
            v57 = *(v81 + 28);
            v58 = &v84[v57];
            v59 = &v83[v57];
            v58[4] = v59[4];
            *v58 = *v59;
            __swift_storeEnumTagSinglePayload(v84, 0, 1, v81);
            v17 = v88;
          }

          *&v97[*(v82 + 28)] = *&v19[*(v82 + 28)];
          goto LABEL_30;
        case 9u:
          v31 = sub_1DD0DD08C();
          (*(*(v31 - 8) + 32))(v97, v19, v31);
LABEL_30:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v97, v19, *(*(v93 - 8) + 64));
          break;
      }

      *&v15[v17[6]] = *&v16[v17[6]];
      v60 = v17[7];
      v61 = &v15[v60];
      v62 = &v16[v60];
      v63 = *(v62 + 1);
      *v61 = *v62;
      *(v61 + 1) = v63;
      *(v61 + 4) = *(v62 + 4);
      v15[v17[8]] = v16[v17[8]];
      *(v8 + v10[6]) = *(v9 + v10[6]);
      *(v8 + v10[7]) = *(v9 + v10[7]);
      *(v8 + v10[8]) = *(v9 + v10[8]);
      v64 = v10[9];
      v65 = (v8 + v64);
      v66 = (v9 + v64);
      v67 = type metadata accessor for ActionParaphrase(0);
      if (__swift_getEnumTagSinglePayload(v66, 1, v67))
      {
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
        memcpy(v65, v66, *(*(v68 - 8) + 64));
      }

      else
      {
        *v65 = *v66;
        v69 = *(v67 + 20);
        v98 = (v65 + v69);
        v70 = (v66 + v69);
        v71 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
        if (__swift_getEnumTagSinglePayload(v70, 1, v71))
        {
          v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
          memcpy(v98, v70, *(*(v72 - 8) + 64));
        }

        else
        {
          v73 = v70[1];
          *v98 = *v70;
          v98[1] = v73;
          v94 = *(v71 + 24);
          v74 = sub_1DD0DB66C();
          (*(*(v74 - 8) + 32))(v98 + v94, v70 + v94, v74);
          __swift_storeEnumTagSinglePayload(v98, 0, 1, v71);
        }

        __swift_storeEnumTagSinglePayload(v65, 0, 1, v67);
      }

      v75 = v10[10];
      v6 = v96;
      if (__swift_getEnumTagSinglePayload(v9 + v75, 1, v95))
      {
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
        memcpy(v8 + v75, v9 + v75, *(*(v76 - 8) + 64));
      }

      else
      {
        (v92)(v8 + v75, v9 + v75, v95);
        __swift_storeEnumTagSinglePayload(v8 + v75, 0, 1, v95);
      }

      *(v8 + v10[11]) = *(v9 + v10[11]);
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
    }

    v77 = *(v6 + 40);
    v78 = (a1 + v77);
    v79 = (a2 + v77);
    v80 = v79[1];
    *v78 = *v79;
    v78[1] = v80;
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

uint64_t sub_1DCD5D39C(uint64_t a1)
{
  result = type metadata accessor for ExecuteResponse(319);
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_1DCD5D500@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_15_36();
  swift_beginAccess();
  type metadata accessor for FlowToFlowFrameAdapter.State(0, *(v2 + 80), v4, v5);
  OUTLINED_FUNCTION_2();
  return (*(v6 + 16))(a1, v1);
}

uint64_t sub_1DCD5D588(uint64_t a1)
{
  OUTLINED_FUNCTION_15_36();
  swift_beginAccess();
  type metadata accessor for FlowToFlowFrameAdapter.State(0, *(v2 + 80), v4, v5);
  OUTLINED_FUNCTION_2();
  (*(v6 + 40))(v1, a1);
  return swift_endAccess();
}

void FlowToFlowFrameAdapter.init<A>(_:)()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v4 = v3;
  v5 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v3, v1);
  OUTLINED_FUNCTION_10_2();
  v8 = (v6 - v7);
  MEMORY[0x1EEE9AC00](v9, v10);
  v0[2] = 6841202;
  v0[3] = 0xE300000000000000;
  v11 = *(v5 + 16);
  v11(&DynamicType - v12, v4, v2);
  type metadata accessor for AnyFlow();
  if (swift_dynamicCast())
  {
    v0[6] = v16;
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_1DD0DCF8C();
  }

  v11(v8, v4, v2);
  v0[6] = sub_1DCB4BF14();
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_1DD0DEC1C();

  v16 = 0xD000000000000017;
  v17 = 0x80000001DD11A870;
  DynamicType = swift_getDynamicType();
  swift_getMetatypeMetadata();
  v13 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v13);

  MEMORY[0x1E12A6780](93, 0xE100000000000000);
  v14 = v17;
  v0[4] = v16;
  v0[5] = v14;
  sub_1DD0DCF8C();
}

void sub_1DCD5D8CC()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v47 = v3;
  v48 = v4;
  v5 = *v0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v7 = OUTLINED_FUNCTION_20_0(v6);
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_10_2();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v46 - v14;
  v16 = type metadata accessor for SiriKitFlowFrameInput(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v21 = OUTLINED_FUNCTION_20_0(v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v46 - v23;
  sub_1DCD5D500(v49);
  v25 = v49[3];
  v26 = *(v5 + 80);
  type metadata accessor for FlowToFlowFrameAdapter.State(0, v26, v27, v28);
  OUTLINED_FUNCTION_13_1();
  (*(v29 + 8))(v49);
  if (v25)
  {
    v30 = sub_1DD0DE4BC();
    __swift_storeEnumTagSinglePayload(v24, 1, 1, v30);
    sub_1DCD5FC20(v47, &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SiriKitFlowFrameInput);
    v31 = (*(v17 + 80) + 40) & ~*(v17 + 80);
    v32 = (v18 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v26;
    sub_1DCD5FB48(&v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v31, type metadata accessor for SiriKitFlowFrameInput);
    *(v33 + v32) = v0;
    v34 = (v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v34 = v48;
    v34[1] = v2;
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v35 = sub_1DD0DD8FC();
  v36 = __swift_project_value_buffer(v35, qword_1EDE57E00);
  v37 = *(v35 - 8);
  (*(v37 + 16))(v15, v36, v35);
  OUTLINED_FUNCTION_40_1();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v35);
  sub_1DCBCF6C8(v15, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v35) == 1)
  {
    sub_1DCB16DB0(v11, &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {
    v41 = sub_1DD0DD8EC();
    v42 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_75(v42))
    {
      OUTLINED_FUNCTION_83();
      v49[0] = OUTLINED_FUNCTION_54();
      MEMORY[0] = 136315650;
      v43 = OUTLINED_FUNCTION_23_17("/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitFlow/FlowAdapters/FlowToFlowFrameAdapter.swift");
      sub_1DCB10E9C(v43, v44, v49);
      OUTLINED_FUNCTION_96_1();

      MEMORY[4] = v24;
      MEMORY[0xC] = 2048;
      OUTLINED_FUNCTION_5_48(50);
      MEMORY[0x18] = sub_1DCB10E9C(0xD00000000000003FLL, 0x80000001DD11AE10, v49);
      OUTLINED_FUNCTION_12_34(&dword_1DCAFC000, v45, v42, "FatalError at %s:%lu - %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    (*(v37 + 8))(v11, v35);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000003FLL, 0x80000001DD11AE10);
}

uint64_t sub_1DCD5DD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[17] = a4;
  v7[18] = a5;
  v7[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA9BE0, &qword_1DD0E9590);
  v7[22] = swift_task_alloc();
  v8 = sub_1DD0DB34C();
  v7[23] = v8;
  v7[24] = *(v8 - 8);
  v7[25] = swift_task_alloc();
  type metadata accessor for Parse(0);
  v7[26] = swift_task_alloc();
  v7[27] = type metadata accessor for Input(0);
  v7[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCD5DECC, 0, 0);
}

uint64_t sub_1DCD5DECC()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = v0[17];
  v5 = v0[18];
  sub_1DCD5FC20(v4, v3, type metadata accessor for Parse);
  v6 = v1 + v2[7];
  *(v6 + 32) = 0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  sub_1DCD5FC20(v3, v1 + v2[5], type metadata accessor for Parse);
  *(v1 + v2[6]) = MEMORY[0x1E69E7CC0];
  sub_1DD0DB03C();
  sub_1DCB2858C(v3, type metadata accessor for Parse);
  *(v1 + v2[8]) = 0;
  sub_1DCB16DB0(v6, &qword_1ECCA4988, &qword_1DD100F00);
  v7 = type metadata accessor for SiriKitFlowFrameInput(0);
  sub_1DCB17D04(v4 + *(v7 + 28), v6);
  v0[29] = *(v5 + 48);
  v8 = swift_task_alloc();
  v0[30] = v8;
  *v8 = v0;
  v8[1] = sub_1DCD5E044;
  v9 = v0[28];

  return sub_1DCB71FBC(v9);
}

uint64_t sub_1DCD5E044(char a1)
{
  *(*v1 + 248) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DCD5E144, 0, 0);
}

uint64_t sub_1DCD5E144()
{
  v12 = v0;
  if (*(v0 + 248))
  {
    v1 = MEMORY[0x1E699F740];
  }

  else
  {
    v1 = MEMORY[0x1E699F738];
  }

  (*(*(v0 + 192) + 104))(*(v0 + 200), *v1, *(v0 + 184));
  sub_1DCB4E598(v0 + 56);
  if (*(v0 + 80))
  {
    sub_1DCB18FF0((v0 + 56), v0 + 16);
    sub_1DCB17D04(v0 + 16, v0 + 96);
    sub_1DCD5D588(v0 + 96);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  else
  {
    sub_1DCB16DB0(v0 + 56, &qword_1ECCA4DF0, &qword_1DD0F0CB0);
    memset(v10, 0, sizeof(v10));
    v11 = xmmword_1DD0E5100;
    sub_1DCD5D588(v10);
  }

  v2 = *(v0 + 224);
  v3 = *(v0 + 200);
  v4 = *(v0 + 184);
  v5 = *(v0 + 192);
  v6 = *(v0 + 176);
  v7 = *(v0 + 152);
  (*(v5 + 16))(v6, v3, v4);
  swift_storeEnumTagMultiPayload();
  v7(v6);
  sub_1DCB16DB0(v6, &unk_1ECCA9BE0, &qword_1DD0E9590);
  (*(v5 + 8))(v3, v4);
  sub_1DCB2858C(v2, type metadata accessor for Input);

  v8 = *(v0 + 8);

  return v8();
}

void sub_1DCD5E32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_50();
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v17 = OUTLINED_FUNCTION_20_0(v16);
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_10_2();
  v21 = v19 - v20;
  v24 = MEMORY[0x1EEE9AC00](v22, v23);
  v26 = v61 - v25;
  v28 = MEMORY[0x1EEE9AC00](v24, v27);
  v30 = v61 - v29;
  MEMORY[0x1EEE9AC00](v28, v31);
  v33 = v61 - v32;
  sub_1DCD5D500(&v62);
  if (v63 == 1)
  {
    OUTLINED_FUNCTION_49();

    sub_1DCD5EDE0(v34, v35);
  }

  if (v63)
  {
    if (v63 != 2)
    {
      sub_1DCB18FF0(&v62, v61);
      sub_1DCD5E910(v61, v15, v13);
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v43 = sub_1DD0DD8FC();
    v44 = __swift_project_value_buffer(v43, qword_1EDE57E00);
    v45 = *(v43 - 8);
    (*(v45 + 16))(v26, v44, v43);
    OUTLINED_FUNCTION_40_1();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v43);
    sub_1DCBCF6C8(v26, v21);
    if (__swift_getEnumTagSinglePayload(v21, 1, v43) == 1)
    {
      sub_1DCB16DB0(v21, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v55 = sub_1DD0DD8EC();
      v56 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_75(v56))
      {
        OUTLINED_FUNCTION_83();
        v61[0] = OUTLINED_FUNCTION_54();
        *v26 = 136315650;
        v57 = OUTLINED_FUNCTION_23_17("/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitFlow/FlowAdapters/FlowToFlowFrameAdapter.swift");
        v59 = sub_1DCB10E9C(v57, v58, v61);

        *(v26 + 4) = v59;
        *(v26 + 6) = 2048;
        OUTLINED_FUNCTION_5_48(88);
        *(v26 + 3) = sub_1DCB10E9C(0xD00000000000003ALL, 0x80000001DD11AEC0, v61);
        OUTLINED_FUNCTION_12_34(&dword_1DCAFC000, v60, v56, "FatalError at %s:%lu - %s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      (*(v45 + 8))(v21, v43);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000003ALL, 0x80000001DD11AEC0);
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v37 = sub_1DD0DD8FC();
  v38 = __swift_project_value_buffer(v37, qword_1EDE57E00);
  v39 = *(v37 - 8);
  (*(v39 + 16))(v33, v38, v37);
  OUTLINED_FUNCTION_40_1();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v37);
  sub_1DCBCF6C8(v33, v30);
  if (__swift_getEnumTagSinglePayload(v30, 1, v37) == 1)
  {
    sub_1DCB16DB0(v30, &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {
    v49 = sub_1DD0DD8EC();
    v50 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_75(v50))
    {
      OUTLINED_FUNCTION_83();
      v61[0] = OUTLINED_FUNCTION_54();
      *v26 = 136315650;
      v51 = OUTLINED_FUNCTION_23_17("/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitFlow/FlowAdapters/FlowToFlowFrameAdapter.swift");
      v53 = sub_1DCB10E9C(v51, v52, v61);

      *(v26 + 4) = v53;
      *(v26 + 6) = 2048;
      OUTLINED_FUNCTION_5_48(86);
      *(v26 + 3) = sub_1DCB10E9C(0xD000000000000040, 0x80000001DD11AF00, v61);
      OUTLINED_FUNCTION_12_34(&dword_1DCAFC000, v54, v50, "FatalError at %s:%lu - %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    (*(v39 + 8))(v30, v37);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000040, 0x80000001DD11AF00);
}

void sub_1DCD5E910(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_1DCD5D588(v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCB17D04(a1, v8);
  v7 = swift_allocObject();
  v7[2] = v3;
  sub_1DCB18FF0(v8, (v7 + 3));
  v7[8] = a2;
  v7[9] = a3;
  sub_1DD0DCF8C();
}

void sub_1DCD5EA08(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v21[1] = a5;
  v21[2] = a4;
  v21[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  MEMORY[0x1EEE9AC00](v21[0], v7);
  v8 = sub_1DD0DB2DC();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = v21 - v15;
  v17 = *(a1 + 8);
  v18 = *(a1 + 24);
  if (*a1)
  {
    (*(v9 + 104))(v21 - v15, *MEMORY[0x1E699F728], v8);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v19 = xmmword_1DD0F0D60;
  }

  else
  {
    v20 = *(a1 + 16);
    (*(v9 + 104))(v21 - v15, *MEMORY[0x1E699F720], v8);
    if (v20 != 1)
    {
      sub_1DCB17D04(a3, &v22);
LABEL_7:
      sub_1DCD5D588(&v22);
      if (v17)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DD8, &qword_1DD0EFED0);
        swift_allocObject();
        swift_retain_n();
        sub_1DCD3F130();
      }

      (*(v9 + 16))(v13, v16, v8);
      if (v18)
      {
        sub_1DD0DB35C();
        swift_allocObject();
        sub_1DD0DCF8C();
      }

      type metadata accessor for SiriKitFlowFrameInput(0);
      sub_1DD0DCF8C();
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    v19 = xmmword_1DD0E5100;
  }

  v25 = v19;
  goto LABEL_7;
}

uint64_t sub_1DCD5ED84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DCB0DF6C(a2, v5);
  (*(a3 + 16))(v5);
  return sub_1DCB16DB0(v5, &dword_1ECCA3CE0, &unk_1DD0E4F80);
}

void sub_1DCD5EDE0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD5EE64(char *a1, void (*a2)(char *), uint64_t a3)
{
  v25 = a3;
  v26 = a2;
  v4 = type metadata accessor for ExecuteResponse(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  v8 = sub_1DD0DB2DC();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v21 = &v25 - v20;
  if (*(a1 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DD8, &qword_1DD0EFED0);
    swift_allocObject();
    swift_retain_n();
    sub_1DCD3F130();
  }

  HIBYTE(v28) = *a1;
  sub_1DCD5F17C(v12, v13, v14, v15, v16, v17, v18, v19, v25, v26, v27, v28);
  sub_1DCD5FC20(a1, &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExecuteResponse);
  v22 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v23 = swift_allocObject();
  sub_1DCD5FB48(&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for ExecuteResponse);
  sub_1DD0DB35C();
  swift_allocObject();
  sub_1DD0DB36C();
  type metadata accessor for SiriKitFlowFrameInput(0);
  sub_1DD0DB2EC();
  swift_storeEnumTagMultiPayload();
  v26(v21);

  return sub_1DCB16DB0(v21, &qword_1ECCA9BF0, &qword_1DD0EA250);
}

uint64_t sub_1DCD5F17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_50();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v15 = OUTLINED_FUNCTION_20_0(v14);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v43 - v20;
  switch(*v12)
  {
    case 3:
      v43 = v19;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v31 = sub_1DD0DD8FC();
      v32 = __swift_project_value_buffer(v31, qword_1EDE57E00);
      v33 = *(v31 - 8);
      (*(v33 + 16))(v21, v32, v31);
      OUTLINED_FUNCTION_40_1();
      __swift_storeEnumTagSinglePayload(v34, v35, v36, v31);
      v37 = v43;
      sub_1DCBCF6C8(v21, v43);
      if (__swift_getEnumTagSinglePayload(v37, 1, v31) == 1)
      {
        sub_1DCB16DB0(v43, &unk_1ECCA7470, &qword_1DD0E16E0);
      }

      else
      {
        v38 = sub_1DD0DD8EC();
        v39 = sub_1DD0DE6EC();
        if (OUTLINED_FUNCTION_75(v39))
        {
          v40 = OUTLINED_FUNCTION_83();
          v44 = swift_slowAlloc();
          *v40 = 136315650;
          v41 = OUTLINED_FUNCTION_23_17("/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitFlow/FlowAdapters/FlowToFlowFrameAdapter.swift");
          sub_1DCB10E9C(v41, v42, &v44);
          OUTLINED_FUNCTION_96_1();

          *(v40 + 4) = v13;
          *(v40 + 12) = 2048;
          *(v40 + 14) = 174;
          *(v40 + 22) = 2080;
          *(v40 + 24) = sub_1DCB10E9C(0xD000000000000057, 0x80000001DD11AF50, &v44);
          _os_log_impl(&dword_1DCAFC000, v38, v39, "FatalError at %s:%lu - %s", v40, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_80();
          OUTLINED_FUNCTION_80();
        }

        (*(v33 + 8))(v43, v31);
      }

      static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000057, 0x80000001DD11AF50);
    default:
      sub_1DD0DB2DC();
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_49();

      return v25(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
  }
}

uint64_t sub_1DCD5F4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  if (v3)
  {
    sub_1DCB0DF6C(a2, v5);
    (*(v3 + 16))(v5);
    return sub_1DCB16DB0(v5, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  }

  return result;
}

uint64_t *FlowToFlowFrameAdapter.deinit()
{
  v1 = *v0;

  type metadata accessor for FlowToFlowFrameAdapter.State(0, *(v1 + 80), v2, v3);
  OUTLINED_FUNCTION_13_1();
  (*(v4 + 8))(v0 + 7);
  return v0;
}

uint64_t FlowToFlowFrameAdapter.__deallocating_deinit()
{
  FlowToFlowFrameAdapter.deinit();

  return swift_deallocClassInstance();
}

void sub_1DCD5F654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD5F73C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SiriKitFlowFrameInput(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1DCB193FC;

  return sub_1DCD5DD70(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t sub_1DCD5F880(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *sub_1DCD5F9EC(void *a1)
{
  if (a1[3] >= 0xFFFFFFFFuLL)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return a1;
}

uint64_t sub_1DCD5FA04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 40))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCD5FA60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1DCD5FADC()
{
  result = qword_1ECCA4DE0;
  if (!qword_1ECCA4DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA4DD8, &qword_1DD0EFED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4DE0);
  }

  return result;
}

uint64_t sub_1DCD5FB48(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_33_1();
  v5(v4);
  return a2;
}

uint64_t sub_1DCD5FBA4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ExecuteResponse(0);
  OUTLINED_FUNCTION_20_0(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_1DCD5F4D8(a1, a2, v7);
}

uint64_t sub_1DCD5FC20(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_33_1();
  v5(v4);
  return a2;
}

uint64_t static FlowTrace.trace(event:)(uint64_t a1)
{
  if (qword_1EDE4AD90 != -1)
  {
    OUTLINED_FUNCTION_6_41(&qword_1EDE4AD90);
  }

  result = swift_beginAccess();
  v3 = qword_1EDE57D88;
  v4 = *(qword_1EDE57D88 + 16);
  if (v4)
  {

    v5 = (v3 + 40);
    do
    {
      v6 = *v5;
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 16);
      swift_unknownObjectRetain();
      v8(a1, ObjectType, v6);
      swift_unknownObjectRelease();
      v5 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

Swift::Void __swiftcall FlowTracing.activate()()
{
  v3 = v1;
  v4 = v0;
  if (qword_1EDE4AD90 != -1)
  {
    OUTLINED_FUNCTION_6_41(&qword_1EDE4AD90);
  }

  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_1DCD4B804();
  v5 = *(qword_1EDE57D88 + 16);
  sub_1DCBBF714(v5);
  v6 = qword_1EDE57D88;
  *(qword_1EDE57D88 + 16) = v5 + 1;
  v7 = v6 + 16 * v5;
  *(v7 + 32) = v2;
  *(v7 + 40) = v3;
  swift_endAccess();
  (*(v3 + 8))(v4, v3);
}

Swift::Void __swiftcall FlowTracing.deactivate()()
{
  v3 = v1;
  v4 = v0;
  if (qword_1EDE4AD90 != -1)
  {
    v0 = OUTLINED_FUNCTION_6_41(&qword_1EDE4AD90);
  }

  MEMORY[0x1EEE9AC00](v0, v1);
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v2;
  swift_beginAccess();
  v5 = sub_1DCD5FF88(sub_1DCD60404, v7);
  v6 = *(qword_1EDE57D88 + 16);
  if (v6 < v5)
  {
    __break(1u);
    swift_endAccess();
    __break(1u);
  }

  else
  {
    sub_1DCD601F4(v5, v6);
    swift_endAccess();
    (*(v3 + 24))(v4, v3);
  }
}

uint64_t sub_1DCD5FF88(uint64_t (*a1)(__int128 *), uint64_t a2)
{
  v6 = *v2;
  result = sub_1DCC3EE8C(a1, a2, *v2);
  if (v3)
  {
    return v4;
  }

  if (v8)
  {
    return *(v6 + 16);
  }

  v4 = result;
  v18 = v2;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    for (i = 16 * result + 48; ; i += 16)
    {
      v11 = *(v6 + 16);
      if (v9 == v11)
      {
        break;
      }

      if (v9 >= v11)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v17 = *(v6 + i);
      swift_unknownObjectRetain();
      v12 = a1(&v17);
      result = swift_unknownObjectRelease();
      if ((v12 & 1) == 0)
      {
        if (v9 != v4)
        {
          if ((v4 & 0x8000000000000000) != 0)
          {
            goto LABEL_21;
          }

          v13 = *(v6 + 16);
          if (v4 >= v13)
          {
            goto LABEL_22;
          }

          if (v9 >= v13)
          {
            goto LABEL_23;
          }

          v15 = *(v6 + 32 + 16 * v4);
          v16 = *(v6 + i);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1DCF34438();
            v6 = v14;
          }

          *(v6 + 16 * v4 + 32) = v16;
          result = swift_unknownObjectRelease();
          if (v9 >= *(v6 + 16))
          {
            goto LABEL_24;
          }

          *(v6 + i) = v15;
          result = swift_unknownObjectRelease();
          *v18 = v6;
        }

        ++v4;
      }

      ++v9;
    }

    return v4;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_1DCD60124(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_1_57();
  if (v5 != v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v3;
  v8 = v1 - v3;
  if (__OFSUB__(v1, v3))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v3 - v1;
  if (__OFSUB__(0, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v9))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1DCD3F71C(v4 - v8, 1);
  v10 = *v2;
  v11 = *v2 + 32;
  v12 = (v11 + 16 * v7);
  swift_arrayDestroy();
  if (!v8)
  {
LABEL_10:
    *v2 = v10;
    return;
  }

  v13 = *(v10 + 16);
  if (__OFSUB__(v13, v1))
  {
    goto LABEL_16;
  }

  sub_1DCB341E4((v11 + 16 * v1), v13 - v1, v12);
  v14 = *(v10 + 16);
  v6 = __OFADD__(v14, v9);
  v15 = v14 - v8;
  if (!v6)
  {
    *(v10 + 16) = v15;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1DCD601F4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1DCD3F82C(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 16 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5168, &qword_1DD0F0FD0);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_1DCB341E4((v9 + 16 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1DCD602E0(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_1_57();
  if (v5 != v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v3;
  v8 = v1 - v3;
  if (__OFSUB__(v1, v3))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v3 - v1;
  if (__OFSUB__(0, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v9))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1DCD3F844(v4 - v8, 1);
  v10 = *v2;
  v11 = *(type metadata accessor for SnippetManager.SnippetRecord(0) - 8);
  v12 = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v13 = *(v11 + 72);
  v14 = v12 + v13 * v7;
  swift_arrayDestroy();
  if (!v8)
  {
LABEL_10:
    *v2 = v10;
    return;
  }

  v15 = *(v10 + 16);
  if (__OFSUB__(v15, v1))
  {
    goto LABEL_16;
  }

  sub_1DCD3F618(v12 + v13 * v1, v15 - v1, v14);
  v16 = *(v10 + 16);
  v6 = __OFADD__(v16, v9);
  v17 = v16 - v8;
  if (!v6)
  {
    *(v10 + 16) = v17;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

char *initializeBufferWithCopyOfBuffer for FlowTraceEvent(char *a1, char **a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 2u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 3u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 4u:
      *a1 = *a2;
      a1[8] = *(a2 + 8);
      *(a1 + 2) = a2[2];
      a1[24] = *(a2 + 24);
      *(a1 + 4) = a2[4];
      sub_1DD0DCF8C();
    case 5u:
      *a1 = *a2;
      *(a1 + 4) = a2[4];
      sub_1DD0DCF8C();
    case 6u:
    case 7u:
    case 0xBu:
    case 0xCu:
      v19 = *(a2 + 3);
      *(a1 + 24) = v19;
      (**(v19 - 8))(a1, a2);
      break;
    case 8u:
      v22 = *(a2 + 3);
      *(a1 + 24) = v22;
      (**(v22 - 8))(a1, a2);
      v23 = a2[8];
      *(a1 + 8) = v23;
      (**(v23 - 1))(a1 + 40, a2 + 5);
      break;
    case 9u:
      v5 = *(a2 + 3);
      *(a1 + 24) = v5;
      (**(v5 - 8))(a1, a2);
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5160, &qword_1DD0F0EE8);
      v7 = *(v6 + 48);
      v8 = &a1[v7];
      v9 = a2 + v7;
      v10 = sub_1DD0DB04C();
      (*(*(v10 - 8) + 16))(v8, v9, v10);
      v11 = type metadata accessor for Input(0);
      v12 = v11[5];
      v13 = &v8[v12];
      v14 = &v9[v12];
      v15 = type metadata accessor for Parse(0);
      v112 = v6;
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v16 = sub_1DD0DC76C();
          (*(*(v16 - 8) + 16))(v13, v14, v16);
          goto LABEL_38;
        case 1u:
          v31 = sub_1DD0DC76C();
          (*(*(v31 - 8) + 16))(v13, v14, v31);
          v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v13[*(v32 + 48)] = *&v14[*(v32 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v26 = *(v14 + 1);
          *v13 = *v14;
          *(v13 + 1) = v26;
          *(v13 + 2) = *(v14 + 2);

          goto LABEL_38;
        case 3u:
          *v13 = *v14;
          swift_unknownObjectRetain();
          goto LABEL_38;
        case 4u:
          v24 = sub_1DD0DB1EC();
          (*(*(v24 - 8) + 16))(v13, v14, v24);
          goto LABEL_38;
        case 5u:
          v33 = *v14;
          *v13 = *v14;
          v34 = v33;
          goto LABEL_38;
        case 6u:
          v35 = sub_1DD0DB4BC();
          (*(*(v35 - 8) + 16))(v13, v14, v35);
          v110 = type metadata accessor for USOParse(0);
          v36 = v110[5];
          v37 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v14[v36], 1, v37))
          {
            v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v13[v36], &v14[v36], *(*(v38 - 8) + 64));
          }

          else
          {
            (*(*(v37 - 8) + 16))(&v13[v36], &v14[v36], v37);
            __swift_storeEnumTagSinglePayload(&v13[v36], 0, 1, v37);
          }

          v69 = v110[6];
          v70 = &v13[v69];
          v71 = &v14[v69];
          v72 = *(v71 + 1);
          *v70 = *v71;
          *(v70 + 1) = v72;
          v73 = v110[7];
          v74 = &v13[v73];
          v75 = &v14[v73];
          v74[4] = v75[4];
          *v74 = *v75;

          goto LABEL_38;
        case 7u:
          v27 = sub_1DD0DB4BC();
          (*(*(v27 - 8) + 16))(v13, v14, v27);
          v109 = type metadata accessor for USOParse(0);
          v28 = v109[5];
          v29 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v14[v28], 1, v29))
          {
            v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v13[v28], &v14[v28], *(*(v30 - 8) + 64));
          }

          else
          {
            (*(*(v29 - 8) + 16))(&v13[v28], &v14[v28], v29);
            __swift_storeEnumTagSinglePayload(&v13[v28], 0, 1, v29);
          }

          v50 = v109[6];
          v51 = &v13[v50];
          v52 = &v14[v50];
          v108 = *(v52 + 1);
          *v51 = *v52;
          *(v51 + 1) = v108;
          v53 = v109[7];
          v54 = &v13[v53];
          v55 = &v14[v53];
          v54[4] = v55[4];
          *v54 = *v55;
          v56 = type metadata accessor for LinkParse(0);
          v57 = v56[5];
          v58 = &v13[v57];
          v59 = &v14[v57];
          v60 = *(v59 + 1);
          *v58 = *v59;
          *(v58 + 1) = v60;
          v61 = v56[6];
          v62 = &v13[v61];
          v63 = &v14[v61];
          v64 = *(v63 + 1);
          *v62 = *v63;
          *(v62 + 1) = v64;
          v65 = v56[7];
          v66 = &v13[v65];
          v67 = &v14[v65];
          v68 = *(v67 + 1);
          *v66 = *v67;
          *(v66 + 1) = v68;

          goto LABEL_38;
        case 8u:
          v105 = v11;
          v39 = sub_1DD0DD12C();
          (*(*(v39 - 8) + 16))(v13, v14, v39);
          v40 = type metadata accessor for NLRouterParse(0);
          v41 = *(v40 + 20);
          v42 = &v13[v41];
          v43 = &v14[v41];
          v44 = *(v43 + 1);
          *v42 = *v43;
          *(v42 + 1) = v44;
          v106 = v40;
          v45 = *(v40 + 24);
          v111 = &v13[v45];
          v46 = &v14[v45];
          v47 = type metadata accessor for USOParse(0);

          v107 = v46;
          if (__swift_getEnumTagSinglePayload(v46, 1, v47))
          {
            v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v111, v46, *(*(v48 - 8) + 64));
            v11 = v105;
            v49 = v106;
          }

          else
          {
            v76 = sub_1DD0DB4BC();
            (*(*(v76 - 8) + 16))(v111, v46, v76);
            v104 = v47;
            v77 = *(v47 + 20);
            v78 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v46[v77], 1, v78))
            {
              v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v111[v77], &v46[v77], *(*(v79 - 8) + 64));
            }

            else
            {
              (*(*(v78 - 8) + 16))(&v111[v77], &v46[v77], v78);
              __swift_storeEnumTagSinglePayload(&v111[v77], 0, 1, v78);
            }

            v11 = v105;
            v49 = v106;
            v80 = *(v104 + 24);
            v81 = &v111[v80];
            v82 = &v107[v80];
            v83 = *(v82 + 1);
            *v81 = *v82;
            *(v81 + 1) = v83;
            v84 = *(v104 + 28);
            v85 = &v111[v84];
            v86 = &v107[v84];
            v85[4] = v86[4];
            *v85 = *v86;

            __swift_storeEnumTagSinglePayload(v111, 0, 1, v104);
          }

          v87 = *(v49 + 28);
          v88 = *&v14[v87];
          *&v13[v87] = v88;
          v89 = v88;
          goto LABEL_38;
        case 9u:
          v25 = sub_1DD0DD08C();
          (*(*(v25 - 8) + 16))(v13, v14, v25);
LABEL_38:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v13, v14, *(*(v15 - 8) + 64));
          break;
      }

      *&v8[v11[6]] = *&v9[v11[6]];
      v90 = v11[7];
      v91 = &v8[v90];
      v92 = &v9[v90];
      v93 = *&v9[v90 + 24];

      if (v93)
      {
        v94 = *(v92 + 4);
        *(v91 + 3) = v93;
        *(v91 + 4) = v94;
        (**(v93 - 8))(v91, v92, v93);
      }

      else
      {
        v95 = *(v92 + 1);
        *v91 = *v92;
        *(v91 + 1) = v95;
        *(v91 + 4) = *(v92 + 4);
      }

      v8[v11[8]] = v9[v11[8]];
      v96 = *(v112 + 64);
      v97 = &a1[v96];
      v98 = (a2 + v96);
      v99 = *(a2 + v96 + 40);
      if (v99 == 1)
      {
        v101 = *(v98 + 24);
        *(v97 + 24) = v101;
        (**(v101 - 8))(v97);
        v97[40] = 1;
      }

      else if (v99)
      {
        v102 = v98[1];
        *v97 = *v98;
        *(v97 + 1) = v102;
        *(v97 + 25) = *(v98 + 25);
      }

      else
      {
        v100 = *(v98 + 24);
        *(v97 + 24) = v100;
        (**(v100 - 8))(v97);
        v97[40] = 0;
      }

      break;
    case 0xAu:
      v20 = *(a2 + 3);
      *(a1 + 24) = v20;
      (**(v20 - 8))(a1, a2);
      v21 = *(a2 + 4);
      *(a1 + 4) = v21;
      (**(v21 - 8))(a1 + 40, a2 + 5);
      break;
    case 0xDu:
      v17 = *a2;
      *a1 = *a2;
      v18 = v17;
      break;
    default:
      *a1 = *a2;
      sub_1DD0DCF8C();
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t initializeWithCopy for FlowTraceEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 2u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 3u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 4u:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      sub_1DD0DCF8C();
    case 5u:
      *a1 = *a2;
      *(a1 + 32) = *(a2 + 32);
      sub_1DD0DCF8C();
    case 6u:
    case 7u:
    case 0xBu:
    case 0xCu:
      v19 = *(a2 + 24);
      *(a1 + 24) = v19;
      (**(v19 - 8))(a1, a2);
      break;
    case 8u:
      v22 = *(a2 + 24);
      *(a1 + 24) = v22;
      (**(v22 - 8))(a1, a2);
      v23 = *(a2 + 64);
      *(a1 + 64) = v23;
      (**(v23 - 8))(a1 + 40, a2 + 40);
      break;
    case 9u:
      v5 = *(a2 + 24);
      *(a1 + 24) = v5;
      (**(v5 - 8))(a1, a2);
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5160, &qword_1DD0F0EE8);
      v7 = *(v6 + 48);
      v8 = a1 + v7;
      v9 = a2 + v7;
      v10 = sub_1DD0DB04C();
      (*(*(v10 - 8) + 16))(v8, v9, v10);
      v11 = type metadata accessor for Input(0);
      v12 = v11[5];
      v13 = (v8 + v12);
      v14 = (v9 + v12);
      v15 = type metadata accessor for Parse(0);
      v111 = v6;
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v16 = sub_1DD0DC76C();
          (*(*(v16 - 8) + 16))(v13, v14, v16);
          goto LABEL_36;
        case 1u:
          v31 = sub_1DD0DC76C();
          (*(*(v31 - 8) + 16))(v13, v14, v31);
          v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v13[*(v32 + 48)] = *&v14[*(v32 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v26 = *(v14 + 1);
          *v13 = *v14;
          *(v13 + 1) = v26;
          *(v13 + 2) = *(v14 + 2);

          goto LABEL_36;
        case 3u:
          *v13 = *v14;
          swift_unknownObjectRetain();
          goto LABEL_36;
        case 4u:
          v24 = sub_1DD0DB1EC();
          (*(*(v24 - 8) + 16))(v13, v14, v24);
          goto LABEL_36;
        case 5u:
          v33 = *v14;
          *v13 = *v14;
          v34 = v33;
          goto LABEL_36;
        case 6u:
          v35 = sub_1DD0DB4BC();
          (*(*(v35 - 8) + 16))(v13, v14, v35);
          v109 = type metadata accessor for USOParse(0);
          v36 = v109[5];
          v37 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v14[v36], 1, v37))
          {
            v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v13[v36], &v14[v36], *(*(v38 - 8) + 64));
          }

          else
          {
            (*(*(v37 - 8) + 16))(&v13[v36], &v14[v36], v37);
            __swift_storeEnumTagSinglePayload(&v13[v36], 0, 1, v37);
          }

          v68 = v109[6];
          v69 = &v13[v68];
          v70 = &v14[v68];
          v71 = *(v70 + 1);
          *v69 = *v70;
          *(v69 + 1) = v71;
          v72 = v109[7];
          v73 = &v13[v72];
          v74 = &v14[v72];
          v73[4] = v74[4];
          *v73 = *v74;

          goto LABEL_36;
        case 7u:
          v27 = sub_1DD0DB4BC();
          (*(*(v27 - 8) + 16))(v13, v14, v27);
          v108 = type metadata accessor for USOParse(0);
          v28 = v108[5];
          v29 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v14[v28], 1, v29))
          {
            v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v13[v28], &v14[v28], *(*(v30 - 8) + 64));
          }

          else
          {
            (*(*(v29 - 8) + 16))(&v13[v28], &v14[v28], v29);
            __swift_storeEnumTagSinglePayload(&v13[v28], 0, 1, v29);
          }

          v49 = v108[6];
          v50 = &v13[v49];
          v51 = &v14[v49];
          v107 = *(v51 + 1);
          *v50 = *v51;
          *(v50 + 1) = v107;
          v52 = v108[7];
          v53 = &v13[v52];
          v54 = &v14[v52];
          v53[4] = v54[4];
          *v53 = *v54;
          v55 = type metadata accessor for LinkParse(0);
          v56 = v55[5];
          v57 = &v13[v56];
          v58 = &v14[v56];
          v59 = *(v58 + 1);
          *v57 = *v58;
          *(v57 + 1) = v59;
          v60 = v55[6];
          v61 = &v13[v60];
          v62 = &v14[v60];
          v63 = *(v62 + 1);
          *v61 = *v62;
          *(v61 + 1) = v63;
          v64 = v55[7];
          v65 = &v13[v64];
          v66 = &v14[v64];
          v67 = *(v66 + 1);
          *v65 = *v66;
          *(v65 + 1) = v67;

          goto LABEL_36;
        case 8u:
          v104 = v11;
          v39 = sub_1DD0DD12C();
          (*(*(v39 - 8) + 16))(v13, v14, v39);
          v40 = type metadata accessor for NLRouterParse(0);
          v41 = *(v40 + 20);
          v42 = &v13[v41];
          v43 = &v14[v41];
          v44 = *(v43 + 1);
          *v42 = *v43;
          *(v42 + 1) = v44;
          v105 = v40;
          v45 = *(v40 + 24);
          v110 = &v13[v45];
          v46 = &v14[v45];
          v47 = type metadata accessor for USOParse(0);

          v106 = v46;
          if (__swift_getEnumTagSinglePayload(v46, 1, v47))
          {
            v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v110, v46, *(*(v48 - 8) + 64));
            v11 = v104;
          }

          else
          {
            v75 = sub_1DD0DB4BC();
            (*(*(v75 - 8) + 16))(v110, v46, v75);
            v103 = v47;
            v76 = *(v47 + 20);
            v77 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v46[v76], 1, v77))
            {
              v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v110[v76], &v46[v76], *(*(v78 - 8) + 64));
            }

            else
            {
              (*(*(v77 - 8) + 16))(&v110[v76], &v46[v76], v77);
              __swift_storeEnumTagSinglePayload(&v110[v76], 0, 1, v77);
            }

            v11 = v104;
            v79 = *(v103 + 24);
            v80 = &v110[v79];
            v81 = &v106[v79];
            v82 = *(v81 + 1);
            *v80 = *v81;
            *(v80 + 1) = v82;
            v83 = *(v103 + 28);
            v84 = &v110[v83];
            v85 = &v106[v83];
            v84[4] = v85[4];
            *v84 = *v85;

            __swift_storeEnumTagSinglePayload(v110, 0, 1, v103);
          }

          v86 = *(v105 + 28);
          v87 = *&v14[v86];
          *&v13[v86] = v87;
          v88 = v87;
          goto LABEL_36;
        case 9u:
          v25 = sub_1DD0DD08C();
          (*(*(v25 - 8) + 16))(v13, v14, v25);
LABEL_36:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v13, v14, *(*(v15 - 8) + 64));
          break;
      }

      *(v8 + v11[6]) = *(v9 + v11[6]);
      v89 = v11[7];
      v90 = v8 + v89;
      v91 = v9 + v89;
      v92 = *(v9 + v89 + 24);

      if (v92)
      {
        v93 = *(v91 + 32);
        *(v90 + 24) = v92;
        *(v90 + 32) = v93;
        (**(v92 - 8))(v90, v91, v92);
      }

      else
      {
        v94 = *(v91 + 16);
        *v90 = *v91;
        *(v90 + 16) = v94;
        *(v90 + 32) = *(v91 + 32);
      }

      *(v8 + v11[8]) = *(v9 + v11[8]);
      v95 = *(v111 + 64);
      v96 = a1 + v95;
      v97 = (a2 + v95);
      v98 = *(a2 + v95 + 40);
      if (v98 == 1)
      {
        v100 = *(v97 + 24);
        *(v96 + 24) = v100;
        (**(v100 - 8))(v96);
        *(v96 + 40) = 1;
      }

      else if (v98)
      {
        v101 = v97[1];
        *v96 = *v97;
        *(v96 + 16) = v101;
        *(v96 + 25) = *(v97 + 25);
      }

      else
      {
        v99 = *(v97 + 24);
        *(v96 + 24) = v99;
        (**(v99 - 8))(v96);
        *(v96 + 40) = 0;
      }

      break;
    case 0xAu:
      v20 = *(a2 + 24);
      *(a1 + 24) = v20;
      (**(v20 - 8))(a1, a2);
      v21 = *(a2 + 64);
      *(a1 + 64) = v21;
      (**(v21 - 8))(a1 + 40, a2 + 40);
      break;
    case 0xDu:
      v17 = *a2;
      *a1 = *a2;
      v18 = v17;
      break;
    default:
      *a1 = *a2;
      sub_1DD0DCF8C();
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for FlowTraceEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1DCD66A14(a1);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        *a1 = *a2;
        sub_1DD0DCF8C();
      case 2u:
        *a1 = *a2;
        sub_1DD0DCF8C();
      case 3u:
        *a1 = *a2;
        sub_1DD0DCF8C();
      case 4u:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        sub_1DD0DCF8C();
      case 5u:
        *a1 = *a2;
        *(a1 + 32) = *(a2 + 32);
        sub_1DD0DCF8C();
      case 6u:
      case 7u:
      case 0xBu:
      case 0xCu:
        v19 = *(a2 + 24);
        *(a1 + 24) = v19;
        *(a1 + 32) = *(a2 + 32);
        (**(v19 - 8))(a1, a2);
        break;
      case 8u:
        v22 = *(a2 + 24);
        *(a1 + 24) = v22;
        *(a1 + 32) = *(a2 + 32);
        (**(v22 - 8))(a1, a2);
        v23 = *(a2 + 64);
        *(a1 + 64) = v23;
        (**(v23 - 8))(a1 + 40, a2 + 40);
        break;
      case 9u:
        v5 = *(a2 + 24);
        *(a1 + 24) = v5;
        *(a1 + 32) = *(a2 + 32);
        (**(v5 - 8))(a1, a2);
        v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5160, &qword_1DD0F0EE8);
        v7 = *(v6 + 48);
        v8 = a1 + v7;
        v9 = a2 + v7;
        v10 = sub_1DD0DB04C();
        (*(*(v10 - 8) + 16))(v8, v9, v10);
        v11 = type metadata accessor for Input(0);
        v12 = v11[5];
        v13 = (v8 + v12);
        v14 = (v9 + v12);
        v15 = type metadata accessor for Parse(0);
        v108 = v6;
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v16 = sub_1DD0DC76C();
            (*(*(v16 - 8) + 16))(v13, v14, v16);
            goto LABEL_37;
          case 1u:
            v30 = sub_1DD0DC76C();
            (*(*(v30 - 8) + 16))(v13, v14, v30);
            v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v13[*(v31 + 48)] = *&v14[*(v31 + 48)];
            sub_1DD0DCF8C();
          case 2u:
            *v13 = *v14;
            *(v13 + 1) = *(v14 + 1);
            *(v13 + 2) = *(v14 + 2);

            goto LABEL_37;
          case 3u:
            *v13 = *v14;
            swift_unknownObjectRetain();
            goto LABEL_37;
          case 4u:
            v24 = sub_1DD0DB1EC();
            (*(*(v24 - 8) + 16))(v13, v14, v24);
            goto LABEL_37;
          case 5u:
            v32 = *v14;
            *v13 = *v14;
            v33 = v32;
            goto LABEL_37;
          case 6u:
            v34 = sub_1DD0DB4BC();
            (*(*(v34 - 8) + 16))(v13, v14, v34);
            v106 = type metadata accessor for USOParse(0);
            v35 = v106[5];
            v36 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v14[v35], 1, v36))
            {
              v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v13[v35], &v14[v35], *(*(v37 - 8) + 64));
            }

            else
            {
              (*(*(v36 - 8) + 16))(&v13[v35], &v14[v35], v36);
              __swift_storeEnumTagSinglePayload(&v13[v35], 0, 1, v36);
            }

            v65 = v106[6];
            v66 = &v13[v65];
            v67 = &v14[v65];
            *v66 = *v67;
            *(v66 + 1) = *(v67 + 1);
            v68 = v106[7];
            v69 = &v13[v68];
            v70 = &v14[v68];
            v71 = *v70;
            v69[4] = v70[4];
            *v69 = v71;

            goto LABEL_37;
          case 7u:
            v26 = sub_1DD0DB4BC();
            (*(*(v26 - 8) + 16))(v13, v14, v26);
            v105 = type metadata accessor for USOParse(0);
            v27 = v105[5];
            v28 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v14[v27], 1, v28))
            {
              v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v13[v27], &v14[v27], *(*(v29 - 8) + 64));
            }

            else
            {
              (*(*(v28 - 8) + 16))(&v13[v27], &v14[v27], v28);
              __swift_storeEnumTagSinglePayload(&v13[v27], 0, 1, v28);
            }

            v48 = v105[6];
            v49 = &v13[v48];
            v50 = &v14[v48];
            *v49 = *v50;
            *(v49 + 1) = *(v50 + 1);
            v51 = v105[7];
            v52 = &v13[v51];
            v53 = &v14[v51];
            v54 = *v53;
            v52[4] = v53[4];
            *v52 = v54;
            v55 = type metadata accessor for LinkParse(0);
            v56 = v55[5];
            v57 = &v13[v56];
            v58 = &v14[v56];
            *v57 = *v58;
            *(v57 + 1) = *(v58 + 1);
            v59 = v55[6];
            v60 = &v13[v59];
            v61 = &v14[v59];
            *v60 = *v61;
            *(v60 + 1) = *(v61 + 1);
            v62 = v55[7];
            v63 = &v13[v62];
            v64 = &v14[v62];
            *v63 = *v64;
            *(v63 + 1) = *(v64 + 1);

            goto LABEL_37;
          case 8u:
            v102 = v11;
            v38 = sub_1DD0DD12C();
            (*(*(v38 - 8) + 16))(v13, v14, v38);
            v39 = type metadata accessor for NLRouterParse(0);
            v40 = *(v39 + 20);
            v41 = &v13[v40];
            v42 = &v14[v40];
            *v41 = *v42;
            *(v41 + 1) = *(v42 + 1);
            v103 = v39;
            v43 = *(v39 + 24);
            v107 = &v13[v43];
            v44 = &v14[v43];
            v45 = type metadata accessor for USOParse(0);

            v104 = v44;
            if (__swift_getEnumTagSinglePayload(v44, 1, v45))
            {
              v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(v107, v44, *(*(v46 - 8) + 64));
              v11 = v102;
              v47 = v103;
            }

            else
            {
              v72 = sub_1DD0DB4BC();
              (*(*(v72 - 8) + 16))(v107, v44, v72);
              v101 = v45;
              v73 = *(v45 + 20);
              v74 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v44[v73], 1, v74))
              {
                v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v107[v73], &v44[v73], *(*(v75 - 8) + 64));
              }

              else
              {
                (*(*(v74 - 8) + 16))(&v107[v73], &v44[v73], v74);
                __swift_storeEnumTagSinglePayload(&v107[v73], 0, 1, v74);
              }

              v11 = v102;
              v47 = v103;
              v76 = *(v101 + 24);
              v77 = &v107[v76];
              v78 = &v104[v76];
              *v77 = *v78;
              *(v77 + 1) = *(v78 + 1);
              v79 = *(v101 + 28);
              v80 = &v107[v79];
              v81 = &v104[v79];
              v82 = *v81;
              v80[4] = v81[4];
              *v80 = v82;

              __swift_storeEnumTagSinglePayload(v107, 0, 1, v101);
            }

            v83 = *(v47 + 28);
            v84 = *&v14[v83];
            *&v13[v83] = v84;
            v85 = v84;
            goto LABEL_37;
          case 9u:
            v25 = sub_1DD0DD08C();
            (*(*(v25 - 8) + 16))(v13, v14, v25);
LABEL_37:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v13, v14, *(*(v15 - 8) + 64));
            break;
        }

        *(v8 + v11[6]) = *(v9 + v11[6]);
        v86 = v11[7];
        v87 = v8 + v86;
        v88 = (v9 + v86);
        v89 = *(v9 + v86 + 24);

        if (v89)
        {
          *(v87 + 24) = v89;
          *(v87 + 32) = *(v88 + 4);
          (**(v89 - 8))(v87, v88, v89);
        }

        else
        {
          v90 = *v88;
          v91 = v88[1];
          *(v87 + 32) = *(v88 + 4);
          *v87 = v90;
          *(v87 + 16) = v91;
        }

        *(v8 + v11[8]) = *(v9 + v11[8]);
        v92 = *(v108 + 64);
        v93 = a1 + v92;
        v94 = (a2 + v92);
        v95 = *(a2 + v92 + 40);
        if (v95 == 1)
        {
          v97 = *(v94 + 3);
          *(v93 + 24) = v97;
          *(v93 + 32) = *(v94 + 4);
          (**(v97 - 8))(v93);
          *(v93 + 40) = 1;
        }

        else if (v95)
        {
          v98 = *v94;
          v99 = v94[1];
          *(v93 + 25) = *(v94 + 25);
          *v93 = v98;
          *(v93 + 16) = v99;
        }

        else
        {
          v96 = *(v94 + 3);
          *(v93 + 24) = v96;
          *(v93 + 32) = *(v94 + 4);
          (**(v96 - 8))(v93);
          *(v93 + 40) = 0;
        }

        break;
      case 0xAu:
        v20 = *(a2 + 24);
        *(a1 + 24) = v20;
        *(a1 + 32) = *(a2 + 32);
        (**(v20 - 8))(a1, a2);
        v21 = *(a2 + 64);
        *(a1 + 64) = v21;
        *(a1 + 72) = *(a2 + 72);
        (**(v21 - 8))(a1 + 40, a2 + 40);
        break;
      case 0xDu:
        v17 = *a2;
        *a1 = *a2;
        v18 = v17;
        break;
      default:
        *a1 = *a2;
        sub_1DD0DCF8C();
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_1DCD66A14(uint64_t a1)
{
  v2 = type metadata accessor for FlowTraceEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for FlowTraceEvent(uint64_t a1)
{
  result = qword_1EDE4B200;
  if (!qword_1EDE4B200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_OWORD *initializeWithTake for FlowTraceEvent(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 9:
      v27 = a2[1];
      *a1 = *a2;
      a1[1] = v27;
      *(a1 + 4) = *(a2 + 4);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5160, &qword_1DD0F0EE8);
      v29 = *(v28 + 48);
      v30 = a1 + v29;
      v31 = a2 + v29;
      v32 = sub_1DD0DB04C();
      (*(*(v32 - 8) + 32))(v30, v31, v32);
      v33 = type metadata accessor for Input(0);
      v34 = v33[5];
      v35 = &v30[v34];
      v36 = &v31[v34];
      v37 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v38 = sub_1DD0DC76C();
          (*(*(v38 - 8) + 32))(v35, v36, v38);
          goto LABEL_64;
        case 1u:
          v64 = sub_1DD0DC76C();
          (*(*(v64 - 8) + 32))(v35, v36, v64);
          v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v35[*(v65 + 48)] = *&v36[*(v65 + 48)];
          goto LABEL_64;
        case 4u:
          v70 = sub_1DD0DB1EC();
          (*(*(v70 - 8) + 32))(v35, v36, v70);
          goto LABEL_64;
        case 6u:
          v219 = v28;
          v72 = sub_1DD0DB4BC();
          (*(*(v72 - 8) + 32))(v35, v36, v72);
          v214 = type metadata accessor for USOParse(0);
          v73 = v214[5];
          v74 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v36[v73], 1, v74))
          {
            v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v35[v73], &v36[v73], *(*(v75 - 8) + 64));
          }

          else
          {
            (*(*(v74 - 8) + 32))(&v35[v73], &v36[v73], v74);
            __swift_storeEnumTagSinglePayload(&v35[v73], 0, 1, v74);
          }

          *&v35[v214[6]] = *&v36[v214[6]];
          v121 = v214[7];
          v122 = &v35[v121];
          v123 = &v36[v121];
          v122[4] = v123[4];
          *v122 = *v123;
          goto LABEL_53;
        case 7u:
          v219 = v28;
          v76 = sub_1DD0DB4BC();
          (*(*(v76 - 8) + 32))(v35, v36, v76);
          v215 = type metadata accessor for USOParse(0);
          v77 = v215[5];
          v78 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v36[v77], 1, v78))
          {
            v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v35[v77], &v36[v77], *(*(v79 - 8) + 64));
          }

          else
          {
            (*(*(v78 - 8) + 32))(&v35[v77], &v36[v77], v78);
            __swift_storeEnumTagSinglePayload(&v35[v77], 0, 1, v78);
          }

          *&v35[v215[6]] = *&v36[v215[6]];
          v124 = v215[7];
          v125 = &v35[v124];
          v126 = &v36[v124];
          v125[4] = v126[4];
          *v125 = *v126;
          v127 = type metadata accessor for LinkParse(0);
          *&v35[v127[5]] = *&v36[v127[5]];
          *&v35[v127[6]] = *&v36[v127[6]];
          *&v35[v127[7]] = *&v36[v127[7]];
LABEL_53:
          swift_storeEnumTagMultiPayload();
          v28 = v219;
          break;
        case 8u:
          v48 = sub_1DD0DD12C();
          (*(*(v48 - 8) + 32))(v35, v36, v48);
          v49 = type metadata accessor for NLRouterParse(0);
          *&v35[*(v49 + 20)] = *&v36[*(v49 + 20)];
          v204 = v49;
          v50 = *(v49 + 24);
          v212 = &v35[v50];
          v51 = &v36[v50];
          v52 = type metadata accessor for USOParse(0);
          __dsta = v51;
          v53 = v51;
          v54 = v52;
          if (__swift_getEnumTagSinglePayload(v53, 1, v52))
          {
            v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v212, __dsta, *(*(v55 - 8) + 64));
          }

          else
          {
            v97 = sub_1DD0DB4BC();
            (*(*(v97 - 8) + 32))(v212, __dsta, v97);
            v201 = v54;
            v98 = *(v54 + 20);
            v99 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&__dsta[v98], 1, v99))
            {
              v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v212[v98], &__dsta[v98], *(*(v100 - 8) + 64));
            }

            else
            {
              (*(*(v99 - 8) + 32))(&v212[v98], &__dsta[v98], v99);
              __swift_storeEnumTagSinglePayload(&v212[v98], 0, 1, v99);
            }

            *&v212[*(v201 + 24)] = *&__dsta[*(v201 + 24)];
            v138 = *(v201 + 28);
            v139 = &v212[v138];
            v140 = &__dsta[v138];
            v139[4] = v140[4];
            *v139 = *v140;
            __swift_storeEnumTagSinglePayload(v212, 0, 1, v201);
          }

          *&v35[*(v204 + 28)] = *&v36[*(v204 + 28)];
          goto LABEL_64;
        case 9u:
          v68 = sub_1DD0DD08C();
          (*(*(v68 - 8) + 32))(v35, v36, v68);
LABEL_64:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v35, v36, *(*(v37 - 8) + 64));
          break;
      }

      *&v30[v33[6]] = *&v31[v33[6]];
      v141 = v33[7];
      v142 = &v30[v141];
      v143 = &v31[v141];
      v144 = *(v143 + 1);
      *v142 = *v143;
      *(v142 + 1) = v144;
      *(v142 + 4) = *(v143 + 4);
      v30[v33[8]] = v31[v33[8]];
      v145 = *(v28 + 64);
      v146 = (a1 + v145);
      v147 = (a2 + v145);
      v148 = v147[1];
      *v146 = *v147;
      v146[1] = v148;
      *(v146 + 25) = *(v147 + 25);
      goto LABEL_90;
    case 3:
      *a1 = *a2;
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5030, &qword_1DD0F0CE0) + 48);
      v19 = a1 + v18;
      v20 = a2 + v18;
      *v19 = *(a2 + v18);
      *(v19 + 1) = *(a2 + v18 + 8);
      v19[16] = *(a2 + v18 + 16);
      *(v19 + 3) = *(a2 + v18 + 24);
      v19[48] = *(a2 + v18 + 48);
      *(v19 + 2) = *(a2 + v18 + 32);
      v21 = type metadata accessor for ExecuteResponse(0);
      v22 = *(v21 + 36);
      v23 = &v19[v22];
      v24 = &v20[v22];
      v25 = type metadata accessor for PluginAction(0);
      if (__swift_getEnumTagSinglePayload(v24, 1, v25))
      {
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4AD0, &qword_1DD0EDF38);
        memcpy(v23, v24, *(*(v26 - 8) + 64));
      }

      else
      {
        v218 = v21;
        *v23 = *v24;
        v221 = v25;
        v41 = *(v25 + 20);
        v42 = &v23[v41];
        v43 = &v24[v41];
        v211 = sub_1DD0DB04C();
        v200 = *(*(v211 - 8) + 32);
        v200(v42, v43);
        __dst = type metadata accessor for Input(0);
        v44 = __dst[5];
        v45 = &v42[v44];
        v46 = &v43[v44];
        v203 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v47 = sub_1DD0DC76C();
            (*(*(v47 - 8) + 32))(v45, v46, v47);
            goto LABEL_78;
          case 1u:
            v101 = sub_1DD0DC76C();
            (*(*(v101 - 8) + 32))(v45, v46, v101);
            v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v45[*(v102 + 48)] = *&v46[*(v102 + 48)];
            goto LABEL_78;
          case 4u:
            v108 = sub_1DD0DB1EC();
            (*(*(v108 - 8) + 32))(v45, v46, v108);
            goto LABEL_78;
          case 6u:
            v192 = v43;
            v109 = sub_1DD0DB4BC();
            (*(*(v109 - 8) + 32))(v45, v46, v109);
            v198 = type metadata accessor for USOParse(0);
            v110 = v198[5];
            v111 = sub_1DD0DB3EC();
            v195 = v110;
            v112 = &v46[v110];
            v113 = v111;
            if (__swift_getEnumTagSinglePayload(v112, 1, v111))
            {
              v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v45[v195], &v46[v195], *(*(v114 - 8) + 64));
            }

            else
            {
              (*(*(v113 - 8) + 32))(&v45[v195], &v46[v195], v113);
              __swift_storeEnumTagSinglePayload(&v45[v195], 0, 1, v113);
            }

            *&v45[v198[6]] = *&v46[v198[6]];
            v156 = v198[7];
            v157 = &v45[v156];
            v158 = &v46[v156];
            v157[4] = v158[4];
            *v157 = *v158;
            swift_storeEnumTagMultiPayload();
            v43 = v192;
            break;
          case 7u:
            v193 = v42;
            v115 = sub_1DD0DB4BC();
            (*(*(v115 - 8) + 32))(v45, v46, v115);
            v199 = type metadata accessor for USOParse(0);
            v116 = v199[5];
            v117 = sub_1DD0DB3EC();
            v196 = v116;
            v118 = &v46[v116];
            v119 = v117;
            if (__swift_getEnumTagSinglePayload(v118, 1, v117))
            {
              v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v45[v196], &v46[v196], *(*(v120 - 8) + 64));
            }

            else
            {
              (*(*(v119 - 8) + 32))(&v45[v196], &v46[v196], v119);
              __swift_storeEnumTagSinglePayload(&v45[v196], 0, 1, v119);
            }

            *&v45[v199[6]] = *&v46[v199[6]];
            v159 = v199[7];
            v160 = &v45[v159];
            v161 = &v46[v159];
            v160[4] = v161[4];
            *v160 = *v161;
            v162 = type metadata accessor for LinkParse(0);
            *&v45[v162[5]] = *&v46[v162[5]];
            *&v45[v162[6]] = *&v46[v162[6]];
            *&v45[v162[7]] = *&v46[v162[7]];
            swift_storeEnumTagMultiPayload();
            v42 = v193;
            break;
          case 8u:
            v88 = sub_1DD0DD12C();
            (*(*(v88 - 8) + 32))(v45, v46, v88);
            v89 = type metadata accessor for NLRouterParse(0);
            *&v45[*(v89 + 20)] = *&v46[*(v89 + 20)];
            v190 = v45;
            v191 = v89;
            v90 = *(v89 + 24);
            v194 = &v45[v90];
            v91 = &v46[v90];
            v92 = type metadata accessor for USOParse(0);
            v197 = v91;
            v93 = v91;
            v94 = v92;
            if (__swift_getEnumTagSinglePayload(v93, 1, v92))
            {
              v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(v194, v197, *(*(v95 - 8) + 64));
              v96 = v190;
            }

            else
            {
              v135 = sub_1DD0DB4BC();
              (*(*(v135 - 8) + 32))(v194, v197, v135);
              v189 = v94;
              v136 = *(v94 + 20);
              v188 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v197[v136], 1, v188))
              {
                v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v194[v136], &v197[v136], *(*(v137 - 8) + 64));
              }

              else
              {
                (*(*(v188 - 8) + 32))(&v194[v136], &v197[v136]);
                __swift_storeEnumTagSinglePayload(&v194[v136], 0, 1, v188);
              }

              v96 = v190;
              *&v194[*(v189 + 24)] = *&v197[*(v189 + 24)];
              v163 = *(v189 + 28);
              v164 = &v194[v163];
              v165 = &v197[v163];
              v164[4] = v165[4];
              *v164 = *v165;
              __swift_storeEnumTagSinglePayload(v194, 0, 1, v189);
            }

            *&v96[*(v191 + 28)] = *&v46[*(v191 + 28)];
            goto LABEL_78;
          case 9u:
            v107 = sub_1DD0DD08C();
            (*(*(v107 - 8) + 32))(v45, v46, v107);
LABEL_78:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v45, v46, *(*(v203 - 8) + 64));
            break;
        }

        *&v42[__dst[6]] = *&v43[__dst[6]];
        v166 = __dst[7];
        v167 = &v42[v166];
        v168 = &v43[v166];
        v169 = *(v168 + 1);
        *v167 = *v168;
        *(v167 + 1) = v169;
        *(v167 + 4) = *(v168 + 4);
        v42[__dst[8]] = v43[__dst[8]];
        v170 = v221;
        *&v23[v221[6]] = *&v24[v221[6]];
        *&v23[v221[7]] = *&v24[v221[7]];
        *&v23[v221[8]] = *&v24[v221[8]];
        v171 = v221[9];
        v172 = &v23[v171];
        v173 = &v24[v171];
        v174 = type metadata accessor for ActionParaphrase(0);
        if (__swift_getEnumTagSinglePayload(v173, 1, v174))
        {
          v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
          memcpy(v172, v173, *(*(v175 - 8) + 64));
        }

        else
        {
          *v172 = *v173;
          v176 = *(v174 + 20);
          __dstc = &v172[v176];
          v177 = &v173[v176];
          v178 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
          if (__swift_getEnumTagSinglePayload(v177, 1, v178))
          {
            v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
            memcpy(__dstc, v177, *(*(v179 - 8) + 64));
          }

          else
          {
            v180 = *(v177 + 1);
            *__dstc = *v177;
            *(__dstc + 1) = v180;
            v206 = *(v178 + 24);
            v181 = sub_1DD0DB66C();
            (*(*(v181 - 8) + 32))(&__dstc[v206], &v177[v206], v181);
            __swift_storeEnumTagSinglePayload(__dstc, 0, 1, v178);
          }

          __swift_storeEnumTagSinglePayload(v172, 0, 1, v174);
          v170 = v221;
        }

        v182 = *(v170 + 40);
        if (__swift_getEnumTagSinglePayload(&v24[v182], 1, v211))
        {
          v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
          memcpy(&v23[v182], &v24[v182], *(*(v183 - 8) + 64));
        }

        else
        {
          (v200)(&v23[v182], &v24[v182], v211);
          __swift_storeEnumTagSinglePayload(&v23[v182], 0, 1, v211);
        }

        v23[*(v170 + 44)] = v24[*(v170 + 44)];
        __swift_storeEnumTagSinglePayload(v23, 0, 1, v170);
        v21 = v218;
      }

      v184 = *(v21 + 40);
      v185 = &v19[v184];
      v186 = &v20[v184];
      v187 = *(v186 + 1);
      *v185 = *v186;
      *(v185 + 1) = v187;
      goto LABEL_90;
    case 2:
      *a1 = *a2;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5040, &qword_1DD0F0CF8);
      v8 = *(v7 + 48);
      v9 = a1 + v8;
      v10 = a2 + v8;
      v11 = sub_1DD0DB04C();
      (*(*(v11 - 8) + 32))(v9, v10, v11);
      v12 = type metadata accessor for Input(0);
      v13 = v12[5];
      v14 = &v9[v13];
      v15 = &v10[v13];
      v16 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v17 = sub_1DD0DC76C();
          (*(*(v17 - 8) + 32))(v14, v15, v17);
          goto LABEL_69;
        case 1u:
          v66 = sub_1DD0DC76C();
          (*(*(v66 - 8) + 32))(v14, v15, v66);
          v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v14[*(v67 + 48)] = *&v15[*(v67 + 48)];
          goto LABEL_69;
        case 4u:
          v71 = sub_1DD0DB1EC();
          (*(*(v71 - 8) + 32))(v14, v15, v71);
          goto LABEL_69;
        case 6u:
          v220 = v7;
          v80 = sub_1DD0DB4BC();
          (*(*(v80 - 8) + 32))(v14, v15, v80);
          v216 = type metadata accessor for USOParse(0);
          v81 = v216[5];
          v82 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v15[v81], 1, v82))
          {
            v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v14[v81], &v15[v81], *(*(v83 - 8) + 64));
          }

          else
          {
            (*(*(v82 - 8) + 32))(&v14[v81], &v15[v81], v82);
            __swift_storeEnumTagSinglePayload(&v14[v81], 0, 1, v82);
          }

          *&v14[v216[6]] = *&v15[v216[6]];
          v128 = v216[7];
          v129 = &v14[v128];
          v130 = &v15[v128];
          v129[4] = v130[4];
          *v129 = *v130;
          goto LABEL_58;
        case 7u:
          v220 = v7;
          v84 = sub_1DD0DB4BC();
          (*(*(v84 - 8) + 32))(v14, v15, v84);
          v217 = type metadata accessor for USOParse(0);
          v85 = v217[5];
          v86 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v15[v85], 1, v86))
          {
            v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v14[v85], &v15[v85], *(*(v87 - 8) + 64));
          }

          else
          {
            (*(*(v86 - 8) + 32))(&v14[v85], &v15[v85], v86);
            __swift_storeEnumTagSinglePayload(&v14[v85], 0, 1, v86);
          }

          *&v14[v217[6]] = *&v15[v217[6]];
          v131 = v217[7];
          v132 = &v14[v131];
          v133 = &v15[v131];
          v132[4] = v133[4];
          *v132 = *v133;
          v134 = type metadata accessor for LinkParse(0);
          *&v14[v134[5]] = *&v15[v134[5]];
          *&v14[v134[6]] = *&v15[v134[6]];
          *&v14[v134[7]] = *&v15[v134[7]];
LABEL_58:
          swift_storeEnumTagMultiPayload();
          v7 = v220;
          break;
        case 8u:
          v56 = sub_1DD0DD12C();
          (*(*(v56 - 8) + 32))(v14, v15, v56);
          v57 = type metadata accessor for NLRouterParse(0);
          *&v14[*(v57 + 20)] = *&v15[*(v57 + 20)];
          v205 = v57;
          v58 = *(v57 + 24);
          v213 = &v14[v58];
          v59 = &v15[v58];
          v60 = type metadata accessor for USOParse(0);
          __dstb = v59;
          v61 = v59;
          v62 = v60;
          if (__swift_getEnumTagSinglePayload(v61, 1, v60))
          {
            v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v213, __dstb, *(*(v63 - 8) + 64));
          }

          else
          {
            v103 = sub_1DD0DB4BC();
            (*(*(v103 - 8) + 32))(v213, __dstb, v103);
            v202 = v62;
            v104 = *(v62 + 20);
            v105 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&__dstb[v104], 1, v105))
            {
              v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v213[v104], &__dstb[v104], *(*(v106 - 8) + 64));
            }

            else
            {
              (*(*(v105 - 8) + 32))(&v213[v104], &__dstb[v104], v105);
              __swift_storeEnumTagSinglePayload(&v213[v104], 0, 1, v105);
            }

            *&v213[*(v202 + 24)] = *&__dstb[*(v202 + 24)];
            v149 = *(v202 + 28);
            v150 = &v213[v149];
            v151 = &__dstb[v149];
            v150[4] = v151[4];
            *v150 = *v151;
            __swift_storeEnumTagSinglePayload(v213, 0, 1, v202);
          }

          *&v14[*(v205 + 28)] = *&v15[*(v205 + 28)];
          goto LABEL_69;
        case 9u:
          v69 = sub_1DD0DD08C();
          (*(*(v69 - 8) + 32))(v14, v15, v69);
LABEL_69:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v14, v15, *(*(v16 - 8) + 64));
          break;
      }

      *&v9[v12[6]] = *&v10[v12[6]];
      v152 = v12[7];
      v153 = &v9[v152];
      v154 = &v10[v152];
      v155 = *(v154 + 1);
      *v153 = *v154;
      *(v153 + 1) = v155;
      *(v153 + 4) = *(v154 + 4);
      v9[v12[8]] = v10[v12[8]];
      *(a1 + *(v7 + 64)) = *(a2 + *(v7 + 64));
LABEL_90:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v39 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v39);
}

_OWORD *assignWithTake for FlowTraceEvent(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1DCD66A14(a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 9:
      v27 = a2[1];
      *a1 = *a2;
      a1[1] = v27;
      *(a1 + 4) = *(a2 + 4);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5160, &qword_1DD0F0EE8);
      v29 = *(v28 + 48);
      v30 = a1 + v29;
      v31 = a2 + v29;
      v32 = sub_1DD0DB04C();
      (*(*(v32 - 8) + 32))(v30, v31, v32);
      v33 = type metadata accessor for Input(0);
      v34 = v33[5];
      v35 = &v30[v34];
      v36 = &v31[v34];
      v37 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v38 = sub_1DD0DC76C();
          (*(*(v38 - 8) + 32))(v35, v36, v38);
          goto LABEL_65;
        case 1u:
          v64 = sub_1DD0DC76C();
          (*(*(v64 - 8) + 32))(v35, v36, v64);
          v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v35[*(v65 + 48)] = *&v36[*(v65 + 48)];
          goto LABEL_65;
        case 4u:
          v70 = sub_1DD0DB1EC();
          (*(*(v70 - 8) + 32))(v35, v36, v70);
          goto LABEL_65;
        case 6u:
          v219 = v28;
          v72 = sub_1DD0DB4BC();
          (*(*(v72 - 8) + 32))(v35, v36, v72);
          v214 = type metadata accessor for USOParse(0);
          v73 = v214[5];
          v74 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v36[v73], 1, v74))
          {
            v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v35[v73], &v36[v73], *(*(v75 - 8) + 64));
          }

          else
          {
            (*(*(v74 - 8) + 32))(&v35[v73], &v36[v73], v74);
            __swift_storeEnumTagSinglePayload(&v35[v73], 0, 1, v74);
          }

          *&v35[v214[6]] = *&v36[v214[6]];
          v121 = v214[7];
          v122 = &v35[v121];
          v123 = &v36[v121];
          v122[4] = v123[4];
          *v122 = *v123;
          goto LABEL_54;
        case 7u:
          v219 = v28;
          v76 = sub_1DD0DB4BC();
          (*(*(v76 - 8) + 32))(v35, v36, v76);
          v215 = type metadata accessor for USOParse(0);
          v77 = v215[5];
          v78 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v36[v77], 1, v78))
          {
            v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v35[v77], &v36[v77], *(*(v79 - 8) + 64));
          }

          else
          {
            (*(*(v78 - 8) + 32))(&v35[v77], &v36[v77], v78);
            __swift_storeEnumTagSinglePayload(&v35[v77], 0, 1, v78);
          }

          *&v35[v215[6]] = *&v36[v215[6]];
          v124 = v215[7];
          v125 = &v35[v124];
          v126 = &v36[v124];
          v125[4] = v126[4];
          *v125 = *v126;
          v127 = type metadata accessor for LinkParse(0);
          *&v35[v127[5]] = *&v36[v127[5]];
          *&v35[v127[6]] = *&v36[v127[6]];
          *&v35[v127[7]] = *&v36[v127[7]];
LABEL_54:
          swift_storeEnumTagMultiPayload();
          v28 = v219;
          break;
        case 8u:
          v48 = sub_1DD0DD12C();
          (*(*(v48 - 8) + 32))(v35, v36, v48);
          v49 = type metadata accessor for NLRouterParse(0);
          *&v35[*(v49 + 20)] = *&v36[*(v49 + 20)];
          v204 = v49;
          v50 = *(v49 + 24);
          v212 = &v35[v50];
          v51 = &v36[v50];
          v52 = type metadata accessor for USOParse(0);
          __dsta = v51;
          v53 = v51;
          v54 = v52;
          if (__swift_getEnumTagSinglePayload(v53, 1, v52))
          {
            v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v212, __dsta, *(*(v55 - 8) + 64));
          }

          else
          {
            v97 = sub_1DD0DB4BC();
            (*(*(v97 - 8) + 32))(v212, __dsta, v97);
            v201 = v54;
            v98 = *(v54 + 20);
            v99 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&__dsta[v98], 1, v99))
            {
              v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v212[v98], &__dsta[v98], *(*(v100 - 8) + 64));
            }

            else
            {
              (*(*(v99 - 8) + 32))(&v212[v98], &__dsta[v98], v99);
              __swift_storeEnumTagSinglePayload(&v212[v98], 0, 1, v99);
            }

            *&v212[*(v201 + 24)] = *&__dsta[*(v201 + 24)];
            v138 = *(v201 + 28);
            v139 = &v212[v138];
            v140 = &__dsta[v138];
            v139[4] = v140[4];
            *v139 = *v140;
            __swift_storeEnumTagSinglePayload(v212, 0, 1, v201);
          }

          *&v35[*(v204 + 28)] = *&v36[*(v204 + 28)];
          goto LABEL_65;
        case 9u:
          v68 = sub_1DD0DD08C();
          (*(*(v68 - 8) + 32))(v35, v36, v68);
LABEL_65:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v35, v36, *(*(v37 - 8) + 64));
          break;
      }

      *&v30[v33[6]] = *&v31[v33[6]];
      v141 = v33[7];
      v142 = &v30[v141];
      v143 = &v31[v141];
      v144 = *(v143 + 1);
      *v142 = *v143;
      *(v142 + 1) = v144;
      *(v142 + 4) = *(v143 + 4);
      v30[v33[8]] = v31[v33[8]];
      v145 = *(v28 + 64);
      v146 = (a1 + v145);
      v147 = (a2 + v145);
      v148 = v147[1];
      *v146 = *v147;
      v146[1] = v148;
      *(v146 + 25) = *(v147 + 25);
      goto LABEL_91;
    case 3:
      *a1 = *a2;
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5030, &qword_1DD0F0CE0) + 48);
      v19 = a1 + v18;
      v20 = a2 + v18;
      *v19 = *(a2 + v18);
      *(v19 + 1) = *(a2 + v18 + 8);
      v19[16] = *(a2 + v18 + 16);
      *(v19 + 3) = *(a2 + v18 + 24);
      v19[48] = *(a2 + v18 + 48);
      *(v19 + 2) = *(a2 + v18 + 32);
      v21 = type metadata accessor for ExecuteResponse(0);
      v22 = *(v21 + 36);
      v23 = &v19[v22];
      v24 = &v20[v22];
      v25 = type metadata accessor for PluginAction(0);
      if (__swift_getEnumTagSinglePayload(v24, 1, v25))
      {
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4AD0, &qword_1DD0EDF38);
        memcpy(v23, v24, *(*(v26 - 8) + 64));
      }

      else
      {
        v218 = v21;
        *v23 = *v24;
        v221 = v25;
        v41 = *(v25 + 20);
        v42 = &v23[v41];
        v43 = &v24[v41];
        v211 = sub_1DD0DB04C();
        v200 = *(*(v211 - 8) + 32);
        v200(v42, v43);
        __dst = type metadata accessor for Input(0);
        v44 = __dst[5];
        v45 = &v42[v44];
        v46 = &v43[v44];
        v203 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v47 = sub_1DD0DC76C();
            (*(*(v47 - 8) + 32))(v45, v46, v47);
            goto LABEL_79;
          case 1u:
            v101 = sub_1DD0DC76C();
            (*(*(v101 - 8) + 32))(v45, v46, v101);
            v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v45[*(v102 + 48)] = *&v46[*(v102 + 48)];
            goto LABEL_79;
          case 4u:
            v108 = sub_1DD0DB1EC();
            (*(*(v108 - 8) + 32))(v45, v46, v108);
            goto LABEL_79;
          case 6u:
            v192 = v43;
            v109 = sub_1DD0DB4BC();
            (*(*(v109 - 8) + 32))(v45, v46, v109);
            v198 = type metadata accessor for USOParse(0);
            v110 = v198[5];
            v111 = sub_1DD0DB3EC();
            v195 = v110;
            v112 = &v46[v110];
            v113 = v111;
            if (__swift_getEnumTagSinglePayload(v112, 1, v111))
            {
              v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v45[v195], &v46[v195], *(*(v114 - 8) + 64));
            }

            else
            {
              (*(*(v113 - 8) + 32))(&v45[v195], &v46[v195], v113);
              __swift_storeEnumTagSinglePayload(&v45[v195], 0, 1, v113);
            }

            *&v45[v198[6]] = *&v46[v198[6]];
            v156 = v198[7];
            v157 = &v45[v156];
            v158 = &v46[v156];
            v157[4] = v158[4];
            *v157 = *v158;
            swift_storeEnumTagMultiPayload();
            v43 = v192;
            break;
          case 7u:
            v193 = v42;
            v115 = sub_1DD0DB4BC();
            (*(*(v115 - 8) + 32))(v45, v46, v115);
            v199 = type metadata accessor for USOParse(0);
            v116 = v199[5];
            v117 = sub_1DD0DB3EC();
            v196 = v116;
            v118 = &v46[v116];
            v119 = v117;
            if (__swift_getEnumTagSinglePayload(v118, 1, v117))
            {
              v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v45[v196], &v46[v196], *(*(v120 - 8) + 64));
            }

            else
            {
              (*(*(v119 - 8) + 32))(&v45[v196], &v46[v196], v119);
              __swift_storeEnumTagSinglePayload(&v45[v196], 0, 1, v119);
            }

            *&v45[v199[6]] = *&v46[v199[6]];
            v159 = v199[7];
            v160 = &v45[v159];
            v161 = &v46[v159];
            v160[4] = v161[4];
            *v160 = *v161;
            v162 = type metadata accessor for LinkParse(0);
            *&v45[v162[5]] = *&v46[v162[5]];
            *&v45[v162[6]] = *&v46[v162[6]];
            *&v45[v162[7]] = *&v46[v162[7]];
            swift_storeEnumTagMultiPayload();
            v42 = v193;
            break;
          case 8u:
            v88 = sub_1DD0DD12C();
            (*(*(v88 - 8) + 32))(v45, v46, v88);
            v89 = type metadata accessor for NLRouterParse(0);
            *&v45[*(v89 + 20)] = *&v46[*(v89 + 20)];
            v190 = v45;
            v191 = v89;
            v90 = *(v89 + 24);
            v194 = &v45[v90];
            v91 = &v46[v90];
            v92 = type metadata accessor for USOParse(0);
            v197 = v91;
            v93 = v91;
            v94 = v92;
            if (__swift_getEnumTagSinglePayload(v93, 1, v92))
            {
              v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(v194, v197, *(*(v95 - 8) + 64));
              v96 = v190;
            }

            else
            {
              v135 = sub_1DD0DB4BC();
              (*(*(v135 - 8) + 32))(v194, v197, v135);
              v189 = v94;
              v136 = *(v94 + 20);
              v188 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v197[v136], 1, v188))
              {
                v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v194[v136], &v197[v136], *(*(v137 - 8) + 64));
              }

              else
              {
                (*(*(v188 - 8) + 32))(&v194[v136], &v197[v136]);
                __swift_storeEnumTagSinglePayload(&v194[v136], 0, 1, v188);
              }

              v96 = v190;
              *&v194[*(v189 + 24)] = *&v197[*(v189 + 24)];
              v163 = *(v189 + 28);
              v164 = &v194[v163];
              v165 = &v197[v163];
              v164[4] = v165[4];
              *v164 = *v165;
              __swift_storeEnumTagSinglePayload(v194, 0, 1, v189);
            }

            *&v96[*(v191 + 28)] = *&v46[*(v191 + 28)];
            goto LABEL_79;
          case 9u:
            v107 = sub_1DD0DD08C();
            (*(*(v107 - 8) + 32))(v45, v46, v107);
LABEL_79:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v45, v46, *(*(v203 - 8) + 64));
            break;
        }

        *&v42[__dst[6]] = *&v43[__dst[6]];
        v166 = __dst[7];
        v167 = &v42[v166];
        v168 = &v43[v166];
        v169 = *(v168 + 1);
        *v167 = *v168;
        *(v167 + 1) = v169;
        *(v167 + 4) = *(v168 + 4);
        v42[__dst[8]] = v43[__dst[8]];
        v170 = v221;
        *&v23[v221[6]] = *&v24[v221[6]];
        *&v23[v221[7]] = *&v24[v221[7]];
        *&v23[v221[8]] = *&v24[v221[8]];
        v171 = v221[9];
        v172 = &v23[v171];
        v173 = &v24[v171];
        v174 = type metadata accessor for ActionParaphrase(0);
        if (__swift_getEnumTagSinglePayload(v173, 1, v174))
        {
          v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
          memcpy(v172, v173, *(*(v175 - 8) + 64));
        }

        else
        {
          *v172 = *v173;
          v176 = *(v174 + 20);
          __dstc = &v172[v176];
          v177 = &v173[v176];
          v178 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
          if (__swift_getEnumTagSinglePayload(v177, 1, v178))
          {
            v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
            memcpy(__dstc, v177, *(*(v179 - 8) + 64));
          }

          else
          {
            v180 = *(v177 + 1);
            *__dstc = *v177;
            *(__dstc + 1) = v180;
            v206 = *(v178 + 24);
            v181 = sub_1DD0DB66C();
            (*(*(v181 - 8) + 32))(&__dstc[v206], &v177[v206], v181);
            __swift_storeEnumTagSinglePayload(__dstc, 0, 1, v178);
          }

          __swift_storeEnumTagSinglePayload(v172, 0, 1, v174);
          v170 = v221;
        }

        v182 = *(v170 + 40);
        if (__swift_getEnumTagSinglePayload(&v24[v182], 1, v211))
        {
          v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
          memcpy(&v23[v182], &v24[v182], *(*(v183 - 8) + 64));
        }

        else
        {
          (v200)(&v23[v182], &v24[v182], v211);
          __swift_storeEnumTagSinglePayload(&v23[v182], 0, 1, v211);
        }

        v23[*(v170 + 44)] = v24[*(v170 + 44)];
        __swift_storeEnumTagSinglePayload(v23, 0, 1, v170);
        v21 = v218;
      }

      v184 = *(v21 + 40);
      v185 = &v19[v184];
      v186 = &v20[v184];
      v187 = *(v186 + 1);
      *v185 = *v186;
      *(v185 + 1) = v187;
      goto LABEL_91;
    case 2:
      *a1 = *a2;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5040, &qword_1DD0F0CF8);
      v8 = *(v7 + 48);
      v9 = a1 + v8;
      v10 = a2 + v8;
      v11 = sub_1DD0DB04C();
      (*(*(v11 - 8) + 32))(v9, v10, v11);
      v12 = type metadata accessor for Input(0);
      v13 = v12[5];
      v14 = &v9[v13];
      v15 = &v10[v13];
      v16 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v17 = sub_1DD0DC76C();
          (*(*(v17 - 8) + 32))(v14, v15, v17);
          goto LABEL_70;
        case 1u:
          v66 = sub_1DD0DC76C();
          (*(*(v66 - 8) + 32))(v14, v15, v66);
          v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v14[*(v67 + 48)] = *&v15[*(v67 + 48)];
          goto LABEL_70;
        case 4u:
          v71 = sub_1DD0DB1EC();
          (*(*(v71 - 8) + 32))(v14, v15, v71);
          goto LABEL_70;
        case 6u:
          v220 = v7;
          v80 = sub_1DD0DB4BC();
          (*(*(v80 - 8) + 32))(v14, v15, v80);
          v216 = type metadata accessor for USOParse(0);
          v81 = v216[5];
          v82 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v15[v81], 1, v82))
          {
            v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v14[v81], &v15[v81], *(*(v83 - 8) + 64));
          }

          else
          {
            (*(*(v82 - 8) + 32))(&v14[v81], &v15[v81], v82);
            __swift_storeEnumTagSinglePayload(&v14[v81], 0, 1, v82);
          }

          *&v14[v216[6]] = *&v15[v216[6]];
          v128 = v216[7];
          v129 = &v14[v128];
          v130 = &v15[v128];
          v129[4] = v130[4];
          *v129 = *v130;
          goto LABEL_59;
        case 7u:
          v220 = v7;
          v84 = sub_1DD0DB4BC();
          (*(*(v84 - 8) + 32))(v14, v15, v84);
          v217 = type metadata accessor for USOParse(0);
          v85 = v217[5];
          v86 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v15[v85], 1, v86))
          {
            v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v14[v85], &v15[v85], *(*(v87 - 8) + 64));
          }

          else
          {
            (*(*(v86 - 8) + 32))(&v14[v85], &v15[v85], v86);
            __swift_storeEnumTagSinglePayload(&v14[v85], 0, 1, v86);
          }

          *&v14[v217[6]] = *&v15[v217[6]];
          v131 = v217[7];
          v132 = &v14[v131];
          v133 = &v15[v131];
          v132[4] = v133[4];
          *v132 = *v133;
          v134 = type metadata accessor for LinkParse(0);
          *&v14[v134[5]] = *&v15[v134[5]];
          *&v14[v134[6]] = *&v15[v134[6]];
          *&v14[v134[7]] = *&v15[v134[7]];
LABEL_59:
          swift_storeEnumTagMultiPayload();
          v7 = v220;
          break;
        case 8u:
          v56 = sub_1DD0DD12C();
          (*(*(v56 - 8) + 32))(v14, v15, v56);
          v57 = type metadata accessor for NLRouterParse(0);
          *&v14[*(v57 + 20)] = *&v15[*(v57 + 20)];
          v205 = v57;
          v58 = *(v57 + 24);
          v213 = &v14[v58];
          v59 = &v15[v58];
          v60 = type metadata accessor for USOParse(0);
          __dstb = v59;
          v61 = v59;
          v62 = v60;
          if (__swift_getEnumTagSinglePayload(v61, 1, v60))
          {
            v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v213, __dstb, *(*(v63 - 8) + 64));
          }

          else
          {
            v103 = sub_1DD0DB4BC();
            (*(*(v103 - 8) + 32))(v213, __dstb, v103);
            v202 = v62;
            v104 = *(v62 + 20);
            v105 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&__dstb[v104], 1, v105))
            {
              v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v213[v104], &__dstb[v104], *(*(v106 - 8) + 64));
            }

            else
            {
              (*(*(v105 - 8) + 32))(&v213[v104], &__dstb[v104], v105);
              __swift_storeEnumTagSinglePayload(&v213[v104], 0, 1, v105);
            }

            *&v213[*(v202 + 24)] = *&__dstb[*(v202 + 24)];
            v149 = *(v202 + 28);
            v150 = &v213[v149];
            v151 = &__dstb[v149];
            v150[4] = v151[4];
            *v150 = *v151;
            __swift_storeEnumTagSinglePayload(v213, 0, 1, v202);
          }

          *&v14[*(v205 + 28)] = *&v15[*(v205 + 28)];
          goto LABEL_70;
        case 9u:
          v69 = sub_1DD0DD08C();
          (*(*(v69 - 8) + 32))(v14, v15, v69);
LABEL_70:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v14, v15, *(*(v16 - 8) + 64));
          break;
      }

      *&v9[v12[6]] = *&v10[v12[6]];
      v152 = v12[7];
      v153 = &v9[v152];
      v154 = &v10[v152];
      v155 = *(v154 + 1);
      *v153 = *v154;
      *(v153 + 1) = v155;
      *(v153 + 4) = *(v154 + 4);
      v9[v12[8]] = v10[v12[8]];
      *(a1 + *(v7 + 64)) = *(a2 + *(v7 + 64));
LABEL_91:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v39 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v39);
}

uint64_t sub_1DCD69E14(uint64_t a1)
{
  v7 = MEMORY[0x1E69E5D20] + 64;
  v8 = MEMORY[0x1E69E5D20] + 64;
  result = type metadata accessor for Input(319);
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout3();
    v9 = &v6;
    result = type metadata accessor for ExecuteResponse(319);
    if (v3 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v10 = &v5;
      v11 = &unk_1DD0F0F20;
      v12 = &unk_1DD0F0F20;
      v13 = &unk_1DD0F0F20;
      v14 = &unk_1DD0F0F20;
      v15 = &unk_1DD0F0F38;
      swift_getTupleTypeLayout3();
      v16 = &v4;
      v17 = &unk_1DD0F0F68;
      v18 = &unk_1DD0F0F20;
      v19 = &unk_1DD0F0F20;
      v20 = MEMORY[0x1E69E5CE0] + 64;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FlowTrace(_BYTE *result, int a2, int a3)
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

void sub_1DCD6A060()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5278, &qword_1DD0F10C0);
  swift_allocObject();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD6A138@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  v5 = *(v3 + 96);
  v8[0] = *(v3 + 80);
  v8[1] = v5;
  type metadata accessor for ForEach.State(0, v8);
  OUTLINED_FUNCTION_2();
  return (*(v6 + 16))(a1, v1 + v4);
}

uint64_t sub_1DCD6A1FC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  v5 = *(v3 + 96);
  v8[0] = *(v3 + 80);
  v8[1] = v5;
  type metadata accessor for ForEach.State(0, v8);
  OUTLINED_FUNCTION_2();
  (*(v6 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

void ForEach.__allocating_init(_:body:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 80);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_16();
  v12 = OUTLINED_FUNCTION_11_37(v11);
  v13(v12, a1, v8);
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_14_36(v14);
  v15[5] = v16;
  v15[6] = a2;
  v15[7] = a3;
  ForEach.__allocating_init(_:body:stride:)(v4, sub_1DCD6DED0, v17, OUTLINED_FUNCTION_2_15, 0);
}

{
  v8 = *(v3 + 80);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_16();
  v12 = OUTLINED_FUNCTION_11_37(v11);
  v13(v12, a1, v8);
  ForEach.__allocating_init(_:body:stride:)(v4, a2, a3, OUTLINED_FUNCTION_2_15, 0);
}

void ForEach.__allocating_init(_:body:stride:)()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *(v0 + 80);
  OUTLINED_FUNCTION_0_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_16();
  v18 = v17 - v16;
  (*(v13 + 16))(v17 - v16, v10, v11);
  v19 = swift_allocObject();
  OUTLINED_FUNCTION_14_36(v19);
  v20[5] = v21;
  v20[6] = v8;
  v20[7] = v6;
  ForEach.__allocating_init(_:body:stride:)(v18, sub_1DCD6A748, v22, v4, v2);
}

uint64_t sub_1DCD6A55C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = a3(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA5288, &qword_1DD0F10C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  *(inited + 32) = v3;
  v5 = static FlowsBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1DCC65794();
  return v5;
}

void ForEach.init(_:body:stride:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *v1;
  v9 = *v1;
  v11 = *(*v1 + 104);
  v16 = *(*v1 + 80);
  v10 = v16;
  v17 = *(v9 + 88);
  v18 = v11;
  type metadata accessor for ForEach.State(0, &v16);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  (*(*(v10 - 8) + 16))(v1 + *(v8 + 112), v7, v10);
  OUTLINED_FUNCTION_55_1();
  v15 = (v1 + *(v14 + 120));
  *v15 = v5;
  v15[1] = v3;
  sub_1DD0DCF8C();
}

void sub_1DCD6AA08()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v46 = v2;
  v3 = *v0;
  v47 = *(v3 + 80);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v41 = v5;
  v42 = v4;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v38 - v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v11 = v10;
  v13 = *(v12 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v43 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v38 - v18;
  v20 = *(v3 + 96);
  v49 = v47;
  v50 = v20;
  v44 = v20;
  type metadata accessor for ForEach.State(0, &v49);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v38 - v23;
  sub_1DCD6A138(&v38 - v23);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v39 = v11;
    v40 = *(v11 + 32);
    v40(v19, v24, AssociatedTypeWitness);
    v38 = *(v1 + *(*v1 + 120));
    OUTLINED_FUNCTION_21_20();
    v28 = sub_1DD0DE66C();
    v29 = v41;
    v30 = v42;
    (*(v41 + 16))(v9);
    v28(&v49, 0);
    v31 = v38(v19, v9);
    (*(v29 + 8))(v9, v30);
    type metadata accessor for LoopBodyFlow();
    swift_allocObject();
    sub_1DCDCC65C(v31);
    v32 = v39;
    v33 = v43;
    v34 = AssociatedTypeWitness;
    (*(v39 + 16))(v43, v19, AssociatedTypeWitness);
    v35 = (*(v32 + 80) + 56) & ~*(v32 + 80);
    v36 = swift_allocObject();
    v37 = v44;
    *(v36 + 16) = v47;
    *(v36 + 32) = v37;
    *(v36 + 48) = v1;
    v40((v36 + v35), v33, v34);
    sub_1DD0DCF8C();
  }

  v48 = *v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA5170, &qword_1DD0F0FD8);
  v26 = v46;
  v46[3] = v25;
  v26[4] = &protocol witness table for Conclude<A>;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v26);
  v49 = v47;
  v50 = v44;
  type metadata accessor for ForEach(0, &v49);
  ActingFlow.conclude(with:)(&v48, boxed_opaque_existential_1Tm);
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCD6AED8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v18[1] = a3;
  v4 = *a2;
  v5 = *(*a2 + 88);
  v6 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18[2] = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v20[0] = v6;
  v20[1] = v5;
  v21 = *(v4 + 96);
  v11 = type metadata accessor for ForEach.State(0, v20);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v18 - v15;
  sub_1DCB0DF6C(a1, v20);
  if (!swift_dynamicCast() || v19 != 1)
  {
    v18[0] = v11;
    sub_1DCD6A2C8();
  }

  *v16 = 1;
  swift_storeEnumTagMultiPayload();
  return sub_1DCD6A1FC(v16);
}

void sub_1DCD6B22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_50();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &a9 - v27;
  v30 = (v29 + 8);
  OUTLINED_FUNCTION_86();
  if ((v23 & 0x8000000000000000) == 0)
  {
    sub_1DD0DE61C();
    OUTLINED_FUNCTION_128();
    v31 = sub_1DD0DE60C();
    (*v30)(v28, AssociatedTypeWitness);
    if (v31 <= v23)
    {
      OUTLINED_FUNCTION_86();
      sub_1DD0DE61C();
    }

    else
    {
      OUTLINED_FUNCTION_128();
      sub_1DD0DE5EC();
    }

LABEL_8:
    OUTLINED_FUNCTION_49();
    return;
  }

  sub_1DD0DE5CC();
  OUTLINED_FUNCTION_128();
  v32 = sub_1DD0DE60C();
  v33 = *v30;
  (*v30)(v28, AssociatedTypeWitness);
  v34 = __OFADD__(v32, v23);
  v35 = v32 + v23;
  if (!v34)
  {
    OUTLINED_FUNCTION_86();
    sub_1DD0DE5CC();
    if (v35 > 0)
    {
      OUTLINED_FUNCTION_128();
      sub_1DD0DE5EC();
      v33(v28, AssociatedTypeWitness);
    }

    goto LABEL_8;
  }

  __break(1u);
}

unint64_t sub_1DCD6B3DC(uint64_t a1)
{
  v2 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v24 - v9;
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_16();
  v15 = (v14 - v13);
  (*(v16 + 16))(v14 - v13, v2, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v15;
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_1DD0DEC1C();

    v24 = 0xD000000000000017;
    v25 = 0x80000001DD11AFD0;
    if (v17)
    {
      v18 = 1702195828;
    }

    else
    {
      v18 = 0x65736C6166;
    }

    if (v17)
    {
      v19 = 0xE400000000000000;
    }

    else
    {
      v19 = 0xE500000000000000;
    }

    MEMORY[0x1E12A6780](v18, v19);

    MEMORY[0x1E12A6780](41, 0xE100000000000000);
    return v24;
  }

  else
  {
    (*(v6 + 32))(v10, v15, AssociatedTypeWitness);
    v24 = 0;
    v25 = 0xE000000000000000;
    MEMORY[0x1E12A6780](0x65646E69286E7572, 0xEB00000000203A78);
    OUTLINED_FUNCTION_86();
    sub_1DD0DF07C();
    MEMORY[0x1E12A6780](41, 0xE100000000000000);
    v20 = v24;
    v21 = OUTLINED_FUNCTION_86();
    v22(v21);
  }

  return v20;
}

uint64_t sub_1DCD6B624(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7239026 && a2 == 0xE300000000000000;
  if (v3 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701736292 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD0DF0AC();

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

uint64_t sub_1DCD6B6EC(char a1)
{
  if (a1)
  {
    return 1701736292;
  }

  else
  {
    return 7239026;
  }
}

uint64_t sub_1DCD6B714(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001DD11AFF0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD0DF0AC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DCD6B7B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD0DF0AC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DCD6B838(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = OUTLINED_FUNCTION_20_18();
  done = type metadata accessor for ForEach.State.DoneCodingKeys(v8, v9);
  OUTLINED_FUNCTION_5_49();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22_3();
  v62 = done;
  v60 = v11;
  sub_1DD0DF00C();
  OUTLINED_FUNCTION_9();
  v63 = v13;
  v64 = v12;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_34_0();
  v61 = v16;
  v17 = OUTLINED_FUNCTION_20_18();
  v19 = type metadata accessor for ForEach.State.RunCodingKeys(v17, v18);
  OUTLINED_FUNCTION_4_56();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22_3();
  v57 = v19;
  v53[1] = v20;
  sub_1DD0DF00C();
  OUTLINED_FUNCTION_9();
  v58 = v22;
  v59 = v21;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v23, v24);
  OUTLINED_FUNCTION_34_0();
  v55 = v25;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v54 = v26;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v27, v28);
  OUTLINED_FUNCTION_34_0();
  v53[0] = v29;
  OUTLINED_FUNCTION_0_1();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  OUTLINED_FUNCTION_16();
  v36 = v35 - v34;
  v69[0] = v4;
  v69[1] = v5;
  v69[2] = v6;
  v69[3] = v7;
  v65 = v7;
  v37 = type metadata accessor for ForEach.State.CodingKeys(255, v69);
  OUTLINED_FUNCTION_6_42(v37);
  OUTLINED_FUNCTION_21_20();
  sub_1DD0DF00C();
  OUTLINED_FUNCTION_9();
  v66 = v38;
  v67 = v39;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = v53 - v42;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_21_20();
  sub_1DD0DF24C();
  (*(v31 + 16))(v36, v68, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    LOBYTE(v69[0]) = 1;
    v44 = v61;
    v45 = v66;
    OUTLINED_FUNCTION_16_26();
    sub_1DD0DEF7C();
    v46 = v64;
    sub_1DD0DEFCC();
    (*(v63 + 8))(v44, v46);
  }

  else
  {
    v47 = v54;
    v48 = v53[0];
    v49 = AssociatedTypeWitness;
    (*(v54 + 32))(v53[0], v36, AssociatedTypeWitness);
    LOBYTE(v69[0]) = 0;
    v50 = v55;
    v45 = v66;
    OUTLINED_FUNCTION_16_26();
    sub_1DD0DEF7C();
    v51 = v59;
    sub_1DD0DEFFC();
    (*(v58 + 8))(v50, v51);
    (*(v47 + 8))(v48, v49);
  }

  return (*(v67 + 8))(v43, v45);
}

uint64_t sub_1DCD6BC88@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v101 = a1;
  v91 = a6;
  *&v99 = a2;
  *(&v99 + 1) = a3;
  *&v100 = a4;
  *(&v100 + 1) = a5;
  done = type metadata accessor for ForEach.State.DoneCodingKeys(255, &v99);
  OUTLINED_FUNCTION_5_49();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22_3();
  v87 = v11;
  v88 = done;
  v82 = sub_1DD0DEF6C();
  OUTLINED_FUNCTION_9();
  v81 = v12;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_34_0();
  v89 = v15;
  v16 = OUTLINED_FUNCTION_13_35();
  v18 = type metadata accessor for ForEach.State.RunCodingKeys(v16, v17);
  OUTLINED_FUNCTION_4_56();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22_3();
  v85 = v18;
  v84 = v19;
  v80 = sub_1DD0DEF6C();
  OUTLINED_FUNCTION_9();
  v79 = v20;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_34_0();
  v86 = v23;
  v24 = OUTLINED_FUNCTION_13_35();
  v26 = type metadata accessor for ForEach.State.CodingKeys(v24, v25);
  OUTLINED_FUNCTION_6_42(v26);
  v92 = sub_1DD0DEF6C();
  OUTLINED_FUNCTION_9();
  v95 = v27;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v74 - v30;
  v83 = a2;
  *&v99 = a2;
  *(&v99 + 1) = a3;
  v93 = a4;
  v94 = a3;
  *&v100 = a4;
  *(&v100 + 1) = a5;
  v32 = type metadata accessor for ForEach.State(0, &v99);
  OUTLINED_FUNCTION_9();
  v90 = v33;
  v36 = MEMORY[0x1EEE9AC00](v34, v35);
  v38 = &v74 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v36, v39);
  v42 = &v74 - v41;
  MEMORY[0x1EEE9AC00](v40, v43);
  v45 = &v74 - v44;
  __swift_project_boxed_opaque_existential_1(v101, v101[3]);
  v46 = v96;
  sub_1DD0DF23C();
  if (!v46)
  {
    v75 = v38;
    v77 = v42;
    v76 = v45;
    v96 = v32;
    v78 = 0;
    v47 = v92;
    *&v97 = sub_1DD0DEF5C();
    sub_1DD0DE40C();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_21_20();
    *&v99 = sub_1DD0DEA9C();
    *(&v99 + 1) = v48;
    *&v100 = v49;
    *(&v100 + 1) = v50;
    sub_1DD0DEA8C();
    swift_getWitnessTable();
    sub_1DD0DE63C();
    v51 = v97;
    if (v97 == 2 || (v74 = v99, v97 = v99, v98 = v100, (sub_1DD0DE65C() & 1) == 0))
    {
      v55 = sub_1DD0DECAC();
      swift_allocError();
      v57 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA43D8, &qword_1DD0F0640);
      *v57 = v96;
      sub_1DD0DEECC();
      sub_1DD0DEC8C();
      (*(*(v55 - 8) + 104))(v57, *MEMORY[0x1E69E6AF8], v55);
      swift_willThrow();
      (*(v95 + 8))(v31, v47);
    }

    else
    {
      if (v51)
      {
        LOBYTE(v97) = 1;
        OUTLINED_FUNCTION_16_26();
        v52 = v78;
        sub_1DD0DEEBC();
        v53 = v91;
        v54 = v95;
        if (!v52)
        {
          v61 = sub_1DD0DEF1C();
          v62 = OUTLINED_FUNCTION_10_37();
          v63(v62);
          (*(v54 + 8))(v31, v47);
          OUTLINED_FUNCTION_9_36();
          swift_unknownObjectRelease();
          v64 = v61 & 1;
          v65 = v75;
          *v75 = v64;
          v66 = v96;
          swift_storeEnumTagMultiPayload();
          v67 = v65;
          v68 = v90;
LABEL_14:
          v72 = v76;
          v73 = *(v68 + 32);
          v73(v76, v67, v66);
          v73(v53, v72, v66);
          return __swift_destroy_boxed_opaque_existential_1Tm(v101);
        }
      }

      else
      {
        LOBYTE(v97) = 0;
        OUTLINED_FUNCTION_16_26();
        v58 = v78;
        sub_1DD0DEEBC();
        v59 = v95;
        v68 = v90;
        if (!v58)
        {
          swift_getAssociatedTypeWitness();
          sub_1DD0DEF4C();
          v69 = OUTLINED_FUNCTION_15_37();
          v70(v69);
          (*(v59 + 8))(v31, v47);
          OUTLINED_FUNCTION_9_36();
          swift_unknownObjectRelease();
          v71 = v77;
          v66 = v96;
          swift_storeEnumTagMultiPayload();
          v53 = v91;
          v67 = v71;
          goto LABEL_14;
        }
      }

      (*(v95 + 8))(v31, v47);
      OUTLINED_FUNCTION_9_36();
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v101);
}

uint64_t sub_1DCD6C3EC(uint64_t a1)
{
  sub_1DD0DF1DC();
  sub_1DCBB11C4(v3, *v1);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCD6C44C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCD6B624(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCD6C4AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCCBE404();
  *a1 = result;
  return result;
}

uint64_t sub_1DCD6C4E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DCD6C534(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1DCD6C608(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DCD6C65C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1DCD6C6B0(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(_BYTE *, void, void, void, void))
{
  sub_1DD0DF1DC();
  a4(v7, a2[2], a2[3], a2[4], a2[5]);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCD6C728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result & 1;
  return result;
}

uint64_t sub_1DCD6C798@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t (*a3)(uint64_t, void, void, void, void)@<X3>, _BYTE *a4@<X8>)
{
  result = a3(a1, a2[2], a2[3], a2[4], a2[5]);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1DCD6C7D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DCD6C82C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t ForEach.deinit()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  (*(*(v1[10] - 8) + 8))(v0 + v1[14], v1[10]);
  OUTLINED_FUNCTION_66();

  OUTLINED_FUNCTION_66();
  v5 = *(v4 + 128);
  v6 = v1[13];
  v9 = v3;
  v10 = *(v2 + 11);
  v11 = v6;
  type metadata accessor for ForEach.State(0, &v9);
  OUTLINED_FUNCTION_2();
  (*(v7 + 8))(v0 + v5);
  OUTLINED_FUNCTION_66();

  return v0;
}

uint64_t ForEach.__deallocating_deinit()
{
  ForEach.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCD6CA98(uint64_t a1)
{
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = *(v1 + 48);
  v5 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_1DCD6AED8(a1, v4, v5);
}

uint64_t sub_1DCD6CB20(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = MEMORY[0x1E69E7CB8] + 64;
    v10 = *(result - 8) + 64;
    v11 = MEMORY[0x1E69E7CB8] + 64;
    v5 = *(a1 + 104);
    v7 = result;
    v8 = *(a1 + 88);
    v9 = v5;
    result = type metadata accessor for ForEach.State(319, &v7);
    if (v6 <= 0x3F)
    {
      v12 = *(result - 8) + 64;
      v13 = v4;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1DCD6CC64(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *sub_1DCD6CD08(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  if (*(v6 + 64) <= 1uLL)
  {
    v7 = 1;
  }

  else
  {
    v7 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  if (*(v6 + 80) > 7u || (*(v6 + 80) & 0x100000) != 0 || (v7 + 1) > 0x18)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v10 = a2[v7];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v7 <= 3)
    {
      v12 = v7;
    }

    else
    {
      v12 = 4;
    }

    switch(v12)
    {
      case 1:
        v13 = *a2;
        goto LABEL_22;
      case 2:
        v13 = *a2;
        goto LABEL_22;
      case 3:
        v13 = *a2 | (a2[2] << 16);
        goto LABEL_22;
      case 4:
        v13 = *a2;
LABEL_22:
        v14 = (v13 | (v11 << (8 * v7))) + 2;
        v10 = v13 + 2;
        if (v7 < 4)
        {
          v10 = v14;
        }

        break;
      default:
        break;
    }
  }

  if (v10 == 1)
  {
    *a1 = *a2;
    *(a1 + v7) = 1;
  }

  else
  {
    (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
    *(a1 + v7) = 0;
  }

  return a1;
}

uint64_t sub_1DCD6CE90(unsigned __int8 *a1, uint64_t a2)
{
  result = swift_getAssociatedTypeWitness();
  v4 = *(*(result - 8) + 64);
  if (v4 <= 1)
  {
    v4 = 1;
  }

  v5 = a1[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    switch(v7)
    {
      case 1:
        v8 = *a1;
        goto LABEL_12;
      case 2:
        v8 = *a1;
        goto LABEL_12;
      case 3:
        v8 = *a1 | (a1[2] << 16);
        goto LABEL_12;
      case 4:
        v8 = *a1;
LABEL_12:
        v9 = (v8 | (v6 << (8 * v4))) + 2;
        v5 = v8 + 2;
        if (v4 < 4)
        {
          v5 = v9;
        }

        break;
      default:
        break;
    }
  }

  if (v5 != 1)
  {
    v10 = *(*(result - 8) + 8);

    return v10(a1, result);
  }

  return result;
}

unsigned __int8 *sub_1DCD6CFCC(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (*(*(AssociatedTypeWitness - 8) + 64) <= 1uLL)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  v7 = a2[v6];
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    if (v6 <= 3)
    {
      v9 = v6;
    }

    else
    {
      v9 = 4;
    }

    switch(v9)
    {
      case 1:
        v10 = *a2;
        goto LABEL_13;
      case 2:
        v10 = *a2;
        goto LABEL_13;
      case 3:
        v10 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v10 = *a2;
LABEL_13:
        v11 = (v10 | (v8 << (8 * v6))) + 2;
        v7 = v10 + 2;
        if (v6 < 4)
        {
          v7 = v11;
        }

        break;
      default:
        break;
    }
  }

  if (v7 == 1)
  {
    *a1 = *a2;
    v12 = 1;
  }

  else
  {
    (*(*(AssociatedTypeWitness - 8) + 16))(a1, a2, AssociatedTypeWitness);
    v12 = 0;
  }

  a1[v6] = v12;
  return a1;
}

unsigned __int8 *sub_1DCD6D118(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v6 = *(AssociatedTypeWitness - 8);
    if (*(v6 + 64) <= 1uLL)
    {
      v7 = 1;
    }

    else
    {
      v7 = *(*(AssociatedTypeWitness - 8) + 64);
    }

    v8 = a1[v7];
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      switch(v10)
      {
        case 1:
          v11 = *a1;
          goto LABEL_14;
        case 2:
          v11 = *a1;
          goto LABEL_14;
        case 3:
          v11 = *a1 | (a1[2] << 16);
          goto LABEL_14;
        case 4:
          v11 = *a1;
LABEL_14:
          v12 = (v11 | (v9 << (8 * v7))) + 2;
          v8 = v11 + 2;
          if (v7 < 4)
          {
            v8 = v12;
          }

          break;
        default:
          break;
      }
    }

    if (v8 != 1)
    {
      (*(v6 + 8))(a1, AssociatedTypeWitness);
    }

    v13 = a2[v7];
    v14 = v13 - 2;
    if (v13 >= 2)
    {
      if (v7 <= 3)
      {
        v15 = v7;
      }

      else
      {
        v15 = 4;
      }

      switch(v15)
      {
        case 1:
          v16 = *a2;
          goto LABEL_27;
        case 2:
          v16 = *a2;
          goto LABEL_27;
        case 3:
          v16 = *a2 | (a2[2] << 16);
          goto LABEL_27;
        case 4:
          v16 = *a2;
LABEL_27:
          v17 = (v16 | (v14 << (8 * v7))) + 2;
          v13 = v16 + 2;
          if (v7 < 4)
          {
            v13 = v17;
          }

          break;
        default:
          break;
      }
    }

    if (v13 == 1)
    {
      *a1 = *a2;
      v18 = 1;
    }

    else
    {
      (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
      v18 = 0;
    }

    a1[v7] = v18;
  }

  return a1;
}

unsigned __int8 *sub_1DCD6D314(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (*(*(AssociatedTypeWitness - 8) + 64) <= 1uLL)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  v7 = a2[v6];
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    if (v6 <= 3)
    {
      v9 = v6;
    }

    else
    {
      v9 = 4;
    }

    switch(v9)
    {
      case 1:
        v10 = *a2;
        goto LABEL_13;
      case 2:
        v10 = *a2;
        goto LABEL_13;
      case 3:
        v10 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v10 = *a2;
LABEL_13:
        v11 = (v10 | (v8 << (8 * v6))) + 2;
        v7 = v10 + 2;
        if (v6 < 4)
        {
          v7 = v11;
        }

        break;
      default:
        break;
    }
  }

  if (v7 == 1)
  {
    *a1 = *a2;
    v12 = 1;
  }

  else
  {
    (*(*(AssociatedTypeWitness - 8) + 32))(a1, a2, AssociatedTypeWitness);
    v12 = 0;
  }

  a1[v6] = v12;
  return a1;
}

unsigned __int8 *sub_1DCD6D460(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v6 = *(AssociatedTypeWitness - 8);
    if (*(v6 + 64) <= 1uLL)
    {
      v7 = 1;
    }

    else
    {
      v7 = *(*(AssociatedTypeWitness - 8) + 64);
    }

    v8 = a1[v7];
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      switch(v10)
      {
        case 1:
          v11 = *a1;
          goto LABEL_14;
        case 2:
          v11 = *a1;
          goto LABEL_14;
        case 3:
          v11 = *a1 | (a1[2] << 16);
          goto LABEL_14;
        case 4:
          v11 = *a1;
LABEL_14:
          v12 = (v11 | (v9 << (8 * v7))) + 2;
          v8 = v11 + 2;
          if (v7 < 4)
          {
            v8 = v12;
          }

          break;
        default:
          break;
      }
    }

    if (v8 != 1)
    {
      (*(v6 + 8))(a1, AssociatedTypeWitness);
    }

    v13 = a2[v7];
    v14 = v13 - 2;
    if (v13 >= 2)
    {
      if (v7 <= 3)
      {
        v15 = v7;
      }

      else
      {
        v15 = 4;
      }

      switch(v15)
      {
        case 1:
          v16 = *a2;
          goto LABEL_27;
        case 2:
          v16 = *a2;
          goto LABEL_27;
        case 3:
          v16 = *a2 | (a2[2] << 16);
          goto LABEL_27;
        case 4:
          v16 = *a2;
LABEL_27:
          v17 = (v16 | (v14 << (8 * v7))) + 2;
          v13 = v16 + 2;
          if (v7 < 4)
          {
            v13 = v17;
          }

          break;
        default:
          break;
      }
    }

    if (v13 == 1)
    {
      *a1 = *a2;
      v18 = 1;
    }

    else
    {
      (*(v6 + 32))(a1, a2, AssociatedTypeWitness);
      v18 = 0;
    }

    a1[v7] = v18;
  }

  return a1;
}

uint64_t sub_1DCD6D65C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v5 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 254) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v11 < 2)
    {
LABEL_23:
      v13 = *(a1 + v6);
      if (v13 >= 2)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_23;
  }

LABEL_15:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    switch(v7)
    {
      case 2:
        LODWORD(v7) = *a1;
        break;
      case 3:
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v7) = *a1;
        break;
      default:
        LODWORD(v7) = *a1;
        break;
    }
  }

  return (v7 | v12) + 255;
}

void sub_1DCD6D7B4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v7 <= 1)
  {
    v7 = 1;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if (a3 < 0xFF)
  {
    v10 = 0;
  }

  else if (v8 <= 3)
  {
    v13 = ((a3 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFE)
  {
    v11 = a2 - 255;
    if (v8 < 4)
    {
      v12 = (v11 >> v9) + 1;
      if (v7 != -1)
      {
        v15 = v11 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v15;
          a1[2] = BYTE2(v15);
        }

        else if (v8 == 2)
        {
          *a1 = v15;
        }

        else
        {
          *a1 = v11;
        }
      }
    }

    else
    {
      bzero(a1, v7 + 1);
      *a1 = v11;
      v12 = 1;
    }

    switch(v10)
    {
      case 1:
        a1[v8] = v12;
        break;
      case 2:
        *&a1[v8] = v12;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = v12;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v10)
    {
      case 1:
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v8] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v7] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1DCD6D994(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v3 <= 1)
  {
    v3 = 1;
  }

  result = a1[v3];
  if (result >= 2)
  {
    if (v3 <= 3)
    {
      v5 = v3;
    }

    else
    {
      v5 = 4;
    }

    switch(v5)
    {
      case 1:
        v6 = *a1;
        goto LABEL_12;
      case 2:
        v6 = *a1;
        goto LABEL_12;
      case 3:
        v6 = *a1 | (a1[2] << 16);
        goto LABEL_12;
      case 4:
        v6 = *a1;
LABEL_12:
        v7 = (v6 | ((result - 2) << (8 * v3))) + 2;
        v8 = v6 + 2;
        if (v3 >= 4)
        {
          result = v8;
        }

        else
        {
          result = v7;
        }

        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_1DCD6DA68(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v5 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  if (a2 > 1)
  {
    v7 = a2 - 2;
    if (v6 < 4)
    {
      a1[v6] = (v7 >> (8 * v6)) + 2;
      if (v6)
      {
        v8 = v7 & ~(-1 << (8 * v6));
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v8;
          a1[2] = BYTE2(v8);
        }

        else if (v6 == 2)
        {
          *a1 = v8;
        }

        else
        {
          *a1 = v7;
        }
      }
    }

    else
    {
      a1[v6] = 2;
      bzero(a1, v6);
      *a1 = v7;
    }
  }

  else
  {
    a1[v6] = a2;
  }
}

uint64_t sub_1DCD6DBA4(char *a1, void (*a2)(void *))
{
  v2 = *a1;
  v4[3] = &type metadata for FlowLoopControl;
  LOBYTE(v4[0]) = v2;
  a2(v4);
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

unint64_t sub_1DCD6DBFC()
{
  result = qword_1ECCA5280;
  if (!qword_1ECCA5280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA5278, &qword_1DD0F10C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5280);
  }

  return result;
}

_BYTE *sub_1DCD6DC60(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1DCD6DD2C(_BYTE *result, int a2, int a3)
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

void *sub_1DCD6DED8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  *(v3 + 1) = xmmword_1DD0E2F10;
  v3[5] = 0;
  swift_unknownObjectWeakInit();
  v3[6] = 0;
  v7 = v3[2];
  v8 = v3[3];
  v3[2] = v5;
  v3[3] = v6;
  sub_1DCB07180(v7, v8);
  v3[5] = a3;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1DCD6DF5C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCD6E004, 0, 0);
}

uint64_t sub_1DCD6E004()
{
  v92 = v0;
  v2 = v0[5];
  if (v2[6])
  {
LABEL_8:
    static ExecuteResponse.complete()();
    goto LABEL_9;
  }

  v3 = v2[3];
  if ((~v3 & 0xF000000000000007) == 0)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v4 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v4, qword_1EDE57E00);
    v5 = sub_1DD0DD8EC();
    v6 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DCAFC000, v5, v6, "No more action groups to run. Action handling frame is complete", v7, 2u);
      OUTLINED_FUNCTION_80();
    }

    goto LABEL_8;
  }

  v10 = v2[2];
  if (v3 >> 62)
  {
    if (v3 >> 62 == 1 || (v10 & 0x8000000000000000) == 0)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v12 = v0[6];
      v11 = v0[7];
      v13 = sub_1DD0DD8FC();
      v14 = __swift_project_value_buffer(v13, qword_1EDE57E00);
      v15 = *(v13 - 8);
      (*(v15 + 16))(v11, v14, v13);
      __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
      sub_1DCBCF6C8(v11, v12);
      if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
      {
        sub_1DCBCF738(v0[6]);
      }

      else
      {
        v20 = sub_1DD0DD8EC();
        v21 = sub_1DD0DE6EC();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v91[0] = swift_slowAlloc();
          *v22 = 136315650;
          v23 = sub_1DD0DEC3C();
          v25 = sub_1DCB10E9C(v23, v24, v91);

          *(v22 + 4) = v25;
          *(v22 + 12) = 2048;
          *(v22 + 14) = 115;
          *(v22 + 22) = 2080;
          *(v22 + 24) = sub_1DCB10E9C(0xD000000000000054, 0x80000001DD11B040, v91);
          _os_log_impl(&dword_1DCAFC000, v20, v21, "FatalError at %s:%lu - %s", v22, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_80();
          OUTLINED_FUNCTION_80();
        }

        (*(v15 + 8))(v0[6], v13);
      }

      static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000054, 0x80000001DD11B040);
    }

    v65 = v10 & 0x7FFFFFFFFFFFFFFFLL;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v66 = *(v0[5] + 40);
      ObjectType = swift_getObjectType();
      v1 = *(v66 + 24);
      v68 = OUTLINED_FUNCTION_1_58();
      sub_1DCBFAABC(v68, v69);
      (v1)(v10 & 0x7FFFFFFFFFFFFFFFLL, ObjectType, v66);
      swift_unknownObjectRelease();
    }

    else
    {
      v70 = OUTLINED_FUNCTION_1_58();
      sub_1DCBFAABC(v70, v71);
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v72 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v72, qword_1EDE57E00);
    v73 = OUTLINED_FUNCTION_1_58();
    sub_1DCBFAABC(v73, v74);
    v75 = sub_1DD0DD8EC();
    v76 = sub_1DD0DE6DC();
    v77 = OUTLINED_FUNCTION_1_58();
    sub_1DCB07180(v77, v78);
    if (os_log_type_enabled(v75, v76))
    {
      swift_slowAlloc();
      v79 = OUTLINED_FUNCTION_3_60();
      v91[0] = v79;
      *v1 = 136315138;
      v80 = sub_1DCBFBFC0();
      v82 = sub_1DCB10E9C(v80, v81, v91);

      *(v1 + 4) = v82;
      OUTLINED_FUNCTION_4_57(&dword_1DCAFC000, v83, v84, "Starting deferred frame type transition: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v79);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    v85 = v0[5];
    v86 = swift_allocObject();
    *(v86 + 16) = v65;
    *(v86 + 24) = v85;
    v87 = OUTLINED_FUNCTION_1_58();
    sub_1DCBFAAA8(v87, v88);
    sub_1DD0DCF8C();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = v2[5];
    swift_getObjectType();
    v1 = *(v16 + 8);
    v17 = OUTLINED_FUNCTION_1_58();
    sub_1DCBFAABC(v17, v18);
    v19 = OUTLINED_FUNCTION_1_58();
    (v1)(v19);
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = OUTLINED_FUNCTION_1_58();
    sub_1DCBFAABC(v26, v27);
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v28 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v28, qword_1EDE57E00);
  v29 = OUTLINED_FUNCTION_1_58();
  sub_1DCBFAABC(v29, v30);
  v31 = sub_1DD0DD8EC();
  v32 = sub_1DD0DE6DC();
  v33 = OUTLINED_FUNCTION_1_58();
  sub_1DCB07180(v33, v34);
  if (os_log_type_enabled(v31, v32))
  {
    swift_slowAlloc();
    v89 = OUTLINED_FUNCTION_3_60();
    v91[0] = v89;
    *v1 = 136315138;
    swift_getObjectType();
    v0[3] = v10;
    v35 = sub_1DD0DF0BC();
    v37 = v10;
    v38 = sub_1DCB10E9C(v35, v36, v91);

    *(v1 + 4) = v38;
    v10 = v37;
    _os_log_impl(&dword_1DCAFC000, v31, v32, "Transitioning to action group: %s", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v89);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v39 = swift_getObjectType();
  if ((*(v3 + 16))(v39, v3))
  {
    v41 = v40;
    v42 = v0[5];
    Strong = swift_unknownObjectWeakLoadStrong();
    v44 = v2[5];
    type metadata accessor for ActionHandlingFlow();
    swift_allocObject();
    v45 = swift_unknownObjectRetain();
    sub_1DCBFCDA4(v45, v41, Strong, v44);
    v46 = swift_allocObject();
    v46[2] = v42;
    v46[3] = v10;
    v46[4] = v3;
    sub_1DCBFAAA8(v10, v3);
    sub_1DD0DCF8C();
  }

  v47 = OUTLINED_FUNCTION_1_58();
  sub_1DCBFAABC(v47, v48);
  v49 = sub_1DD0DD8EC();
  v50 = sub_1DD0DE6DC();
  v51 = OUTLINED_FUNCTION_1_58();
  sub_1DCB07180(v51, v52);
  if (os_log_type_enabled(v49, v50))
  {
    swift_slowAlloc();
    v90 = OUTLINED_FUNCTION_3_60();
    v91[0] = v90;
    *v1 = 136315138;
    v0[2] = v10;
    v53 = sub_1DD0DF0BC();
    v55 = sub_1DCB10E9C(v53, v54, v91);

    *(v1 + 4) = v55;
    OUTLINED_FUNCTION_4_57(&dword_1DCAFC000, v56, v57, "Action group had no flows. Moving on (%s)");
    __swift_destroy_boxed_opaque_existential_1Tm(v90);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v58 = OUTLINED_FUNCTION_1_58();
    v59(v58);
    swift_unknownObjectRelease();
  }

  v60 = v0[4];
  (*(v3 + 24))(v91, v39, v3);
  v61 = OUTLINED_FUNCTION_1_58();
  sub_1DCB07180(v61, v62);
  v63 = v2[2];
  v64 = v2[3];
  *(v2 + 1) = *v91;
  sub_1DCB07180(v63, v64);
  static ExecuteResponse.ongoing(requireInput:)(0, v60);
LABEL_9:

  v8 = v0[1];

  return v8();
}

void sub_1DCD6E938(void **a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (v5)
  {
    v6 = a2[6];
    a2[6] = v5;
    v7 = v5;
  }

  else
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = a2[5];
      ObjectType = swift_getObjectType();
      (*(v10 + 16))(a3, a4, ObjectType, v10);
      swift_unknownObjectRelease();
    }

    v12 = swift_getObjectType();
    (*(a4 + 24))(&v15, v12, a4);
    v13 = a2[2];
    v14 = a2[3];
    *(a2 + 1) = v15;

    sub_1DCB07180(v13, v14);
  }
}

void sub_1DCD6EA40(uint64_t *a1, uint64_t a2, void *a3)
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v3 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v3, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD6ECD8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB193FC;

  return sub_1DCD6DF5C(a1);
}

unint64_t sub_1DCD6ED74(uint64_t a1)
{
  result = sub_1DCD6ED9C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DCD6ED9C()
{
  result = qword_1ECCA5410;
  if (!qword_1ECCA5410)
  {
    type metadata accessor for GroupHandlingFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5410);
  }

  return result;
}

uint64_t sub_1DCD6EE04(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

void *sub_1DCD6EE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = 0xD000000000000029;
  v4[3] = 0x80000001DD113770;
  *(v4 + 2) = xmmword_1DD0E2F10;
  v4[7] = 0;
  swift_unknownObjectWeakInit();
  v8 = v4[4];
  v9 = v4[5];
  v4[4] = a1;
  v4[5] = a2;
  sub_1DCB07180(v8, v9);
  v4[7] = a4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1DCD6EEE0(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA9BE0, &qword_1DD0E9590);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v11 - v6;
  v8 = *MEMORY[0x1E699F738];
  sub_1DD0DB34C();
  OUTLINED_FUNCTION_2();
  (*(v9 + 104))(v7, v8);
  swift_storeEnumTagMultiPayload();
  a3(v7);
  return sub_1DCB0E9D8(v7, &unk_1ECCA9BE0, &qword_1DD0E9590);
}

uint64_t sub_1DCD6EFDC(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v11 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v70 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v70 - v17;
  v19 = v4[5];
  if ((~v19 & 0xF000000000000007) != 0)
  {
    v23 = v4[4];
    if (v19 >> 62)
    {
      if (v19 >> 62 == 1 || (v23 & 0x8000000000000000) == 0)
      {
        v24 = OUTLINED_FUNCTION_49_3();
        sub_1DCBFAABC(v24, v25);
        sub_1DCD6F8CC(v23, a2, a3);
      }

      v58 = OUTLINED_FUNCTION_49_3();
      sub_1DCBFAABC(v58, v59);
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v60 = sub_1DD0DD8FC();
      v61 = __swift_project_value_buffer(v60, qword_1EDE57E00);
      v62 = *(v60 - 8);
      (*(v62 + 16))(v14, v61, v60);
      __swift_storeEnumTagSinglePayload(v14, 0, 1, v60);
      sub_1DCBCF6C8(v14, v11);
      if (__swift_getEnumTagSinglePayload(v11, 1, v60) == 1)
      {
        sub_1DCB0E9D8(v11, &unk_1ECCA7470, &qword_1DD0E16E0);
      }

      else
      {
        v63 = sub_1DD0DD8EC();
        v64 = sub_1DD0DE6EC();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          *&v77 = v66;
          *v65 = 136315650;
          v67 = sub_1DD0DEC3C();
          v69 = sub_1DCB10E9C(v67, v68, &v77);

          *(v65 + 4) = v69;
          *(v65 + 12) = 2048;
          *(v65 + 14) = 102;
          *(v65 + 22) = 2080;
          *(v65 + 24) = sub_1DCB10E9C(0xD000000000000054, 0x80000001DD11B1B0, &v77);
          _os_log_impl(&dword_1DCAFC000, v63, v64, "FatalError at %s:%lu - %s", v65, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1E12A8390](v66, -1, -1);
          MEMORY[0x1E12A8390](v65, -1, -1);
        }

        (*(v62 + 8))(v11, v60);
      }

      static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000054, 0x80000001DD11B1B0);
    }

    v75 = a3;
    v76 = a2;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v26 = v4[7];
      swift_getObjectType();
      v27 = *(v26 + 8);
      v28 = OUTLINED_FUNCTION_49_3();
      sub_1DCBFAABC(v28, v29);
      v30 = OUTLINED_FUNCTION_49_3();
      v27(v30);
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = OUTLINED_FUNCTION_49_3();
      sub_1DCBFAABC(v31, v32);
    }

    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
    }

    v33 = qword_1EDE57E18;
    LODWORD(v74) = sub_1DD0DE6DC();
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v34 = swift_allocObject();
    v71 = xmmword_1DD0E07C0;
    *(v34 + 16) = xmmword_1DD0E07C0;
    ObjectType = swift_getObjectType();
    *&v77 = v23;
    v70[1] = *(v19 + 8);
    v36 = sub_1DD0DF0BC();
    v38 = v37;
    *(v34 + 56) = MEMORY[0x1E69E6158];
    v70[0] = sub_1DCB34060();
    *(v34 + 64) = v70[0];
    *(v34 + 32) = v36;
    *(v34 + 40) = v38;
    v73 = v33;
    sub_1DD0DD7EC("Transitioning to action group: %@", 33, 2, &dword_1DCAFC000, v33, v74, v34);

    if ((*(v19 + 16))(ObjectType, v19))
    {
      v40 = v39;
      Strong = swift_unknownObjectWeakLoadStrong();
      v42 = v4[7];
      v74 = type metadata accessor for ActionHandlingFlowFrame();
      swift_allocObject();
      v43 = swift_unknownObjectRetain();
      *&v77 = sub_1DCBFD654(v43, v40, Strong, v42);
      v44 = swift_allocObject();
      v44[2] = v4;
      v44[3] = v23;
      v44[4] = v19;
      v45 = OUTLINED_FUNCTION_49_3();
      sub_1DCBFAAA8(v45, v46);
      type metadata accessor for SiriKitFlowFrameInput(0);
      sub_1DD0DCF8C();
    }

    v47 = sub_1DD0DE6DC();
    v48 = swift_allocObject();
    *(v48 + 16) = v71;
    *&v77 = v23;
    v49 = sub_1DD0DF0BC();
    v50 = v70[0];
    *(v48 + 56) = MEMORY[0x1E69E6158];
    *(v48 + 64) = v50;
    *(v48 + 32) = v49;
    *(v48 + 40) = v51;
    sub_1DD0DD7EC("Action group had no frames. Moving on. (%@)", 43, 2, &dword_1DCAFC000, v73, v47, v48);

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      v52 = OUTLINED_FUNCTION_49_3();
      v53(v52);
      swift_unknownObjectRelease();
    }

    (*(v19 + 24))(&v77, ObjectType, v19);
    v54 = v4[4];
    v55 = v4[5];
    *(v4 + 2) = v77;
    sub_1DCB07180(v54, v55);
    type metadata accessor for SiriKitFlowFrameInput(0);
    sub_1DD0DB30C();
    OUTLINED_FUNCTION_3_61();
    v76(v18);
    v56 = OUTLINED_FUNCTION_49_3();
    sub_1DCB07180(v56, v57);
  }

  else
  {
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
    }

    v20 = qword_1EDE57E18;
    v21 = sub_1DD0DE6DC();
    sub_1DD0DD7EC("No more action groups to run. Action handling frame is complete", 63, 2, &dword_1DCAFC000, v20, v21, MEMORY[0x1E69E7CC0]);
    type metadata accessor for SiriKitFlowFrameInput(0);
    sub_1DD0DB32C();
    OUTLINED_FUNCTION_3_61();
    a2(v18);
  }

  return sub_1DCB0E9D8(v18, &qword_1ECCA9BF0, &qword_1DD0EA250);
}

uint64_t sub_1DCD6F804(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = a3[7];
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(a4, a5, ObjectType, v8);
    swift_unknownObjectRelease();
  }

  v10 = swift_getObjectType();
  (*(a5 + 24))(&v14, v10, a5);
  v11 = a3[4];
  v12 = a3[5];
  *(a3 + 2) = v14;

  return sub_1DCB07180(v11, v12);
}

void sub_1DCD6F8CC(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5418, &qword_1DD0F15B0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v3 + 56);
    ObjectType = swift_getObjectType();
    (*(v10 + 24))(a1, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
  }

  v12 = qword_1EDE57E18;
  v13 = sub_1DD0DE6DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DD0E07C0;
  v15 = sub_1DCBFBB5C();
  v17 = v16;
  *(v14 + 56) = MEMORY[0x1E69E6158];
  *(v14 + 64) = sub_1DCB34060();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  sub_1DD0DD7EC("Starting deferred frame type transition: %@", 43, 2, &dword_1DCAFC000, v12, v13, v14, v19, v20, a3, a2);

  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  *(v18 + 24) = a1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD6FBA8(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDE57E18;
  v8 = sub_1DD0DE6DC();
  sub_1DD0DD7EC("Deferred frame transition completed!", 36, 2, &dword_1DCAFC000, v7, v8, MEMORY[0x1E69E7CC0]);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = a2[7];
    ObjectType = swift_getObjectType();
    (*(v9 + 32))(a3, ObjectType, v9);
    swift_unknownObjectRelease();
  }

  v11 = a2[4];
  v12 = a2[5];
  a2[4] = v5;
  a2[5] = v6;
  sub_1DCBFAAA8(v5, v6);

  return sub_1DCB07180(v11, v12);
}

uint64_t sub_1DCD6FCB8()
{

  sub_1DCB07180(*(v0 + 32), *(v0 + 40));
  sub_1DCB0720C(v0 + 48);
  return v0;
}

uint64_t sub_1DCD6FCE8()
{
  sub_1DCD6FCB8();

  return swift_deallocClassInstance();
}

unint64_t sub_1DCD6FD98()
{
  result = qword_1ECCA5428;
  if (!qword_1ECCA5428)
  {
    type metadata accessor for ActionHandlingFlowFrame();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5428);
  }

  return result;
}

uint64_t GuardFlowResult.description.getter(char a1)
{
  if (a1)
  {
    return 1818845542;
  }

  else
  {
    return 1936941424;
  }
}

uint64_t GuardFlowResult.hashValue.getter(char a1)
{
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](a1 & 1);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCD6FEAC(uint64_t a1)
{
  v2 = *v1;
  sub_1DD0DF1DC();
  GuardFlowResult.hash(into:)(v4, v2);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCD6FF1C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1 & 1;
  return result;
}

uint64_t GuardFlow.__allocating_init(preconditionFlows:)(unint64_t a1)
{
  v2 = swift_allocObject();
  GuardFlow.init(preconditionFlows:)(a1);
  return v2;
}

unint64_t sub_1DCD70064()
{
  result = qword_1ECCA5430;
  if (!qword_1ECCA5430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5430);
  }

  return result;
}

unint64_t sub_1DCD700B8(uint64_t a1)
{
  result = sub_1DCD700E0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DCD700E0()
{
  result = qword_1ECCA5438;
  if (!qword_1ECCA5438)
  {
    type metadata accessor for GuardFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5438);
  }

  return result;
}

uint64_t dispatch thunk of GuardFlow.execute()(uint64_t a1)
{
  v6 = (*(*v1 + 168) + **(*v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DCB193FC;

  return v6(a1);
}

uint64_t sub_1DCD70448()
{
  OUTLINED_FUNCTION_60();
  swift_beginAccess();
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
}

uint64_t sub_1DCD70508()
{
  OUTLINED_FUNCTION_60();
  swift_beginAccess();
  *(v1 + 80) = v0;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1DCD70564(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 80);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1DCD705E4;
}

void sub_1DCD705E4(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 80) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t GuidedConversationFlowFrame.__allocating_init(source:)()
{
  OUTLINED_FUNCTION_60();
  v0 = swift_allocObject();
  GuidedConversationFlowFrame.init(source:)();
  return v0;
}

uint64_t GuidedConversationFlowFrame.init(source:)()
{
  OUTLINED_FUNCTION_60();
  *(v1 + 16) = 0xD000000000000029;
  *(v1 + 24) = 0x80000001DD113770;
  *(v1 + 80) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 48) = 0;
  return v1;
}

uint64_t sub_1DCD70718(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA9BE0, &qword_1DD0E9590);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v21[-v9 - 8];
  if (*(v4 + 48) != 1)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_156(v4 + 72, v21);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v4 + 80);
    ObjectType = swift_getObjectType();
    v13 = (*(v11 + 56))(a2, ObjectType, v11);
    v15 = v14;
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  *(v4 + 56) = v13;
  *(v4 + 64) = v15;
  swift_unknownObjectRelease();
  if (!*(v4 + 56))
  {
    v16 = MEMORY[0x1E699F738];
  }

  else
  {
LABEL_6:
    v16 = MEMORY[0x1E699F740];
  }

  v17 = *v16;
  sub_1DD0DB34C();
  OUTLINED_FUNCTION_2();
  (*(v18 + 104))(v10, v17);
  swift_storeEnumTagMultiPayload();
  a3(v10);
  return sub_1DCB0E9D8(v10, &unk_1ECCA9BE0, &qword_1DD0E9590);
}

uint64_t sub_1DCD708B8(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  if (*(a2 + 48))
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  *(a2 + 48) = v5;
  v6 = *(a2 + 56);
  if (v6)
  {
    v7 = *(a2 + 64);
    v8 = v6;
  }

  else
  {
    v9 = *(a2 + 40);
    ObjectType = swift_getObjectType();
    v8 = (*(v9 + 8))(ObjectType, v9);
  }

  v12[0] = v8;
  v12[1] = v7;
  v13 = 0;
  swift_unknownObjectRetain();
  a3(v12);

  return swift_unknownObjectRelease();
}

uint64_t sub_1DCD70978(uint64_t a1, void (*a2)(uint64_t, uint64_t, void))
{
  if (*(v2 + 48))
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  *(v2 + 48) = v4;
  v5 = *(v2 + 56);
  if (v5)
  {
    v6 = *(v2 + 64);
    v7 = v5;
  }

  else
  {
    v8 = *(v2 + 40);
    ObjectType = swift_getObjectType();
    v7 = (*(v8 + 8))(ObjectType, v8);
    v6 = v10;
  }

  swift_unknownObjectRetain();
  a2(v7, v6, 0);

  return swift_unknownObjectRelease();
}

uint64_t sub_1DCD70A38(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), const char *a5)
{
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v23 - v13;
  if (*(v6 + 48) != 2)
  {
    v23[0] = a5;
    v23[1] = a4;
    if (qword_1EDE4F908 != -1)
    {
      swift_once();
    }

    sub_1DD0DE6DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1DD0E07C0;
    swift_getObjectType();
    v24[0] = a2;
    v16 = sub_1DD0DF0BC();
    v18 = v17;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = sub_1DCB34060();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    sub_1DD0DD7EC("ConversationalFlowFrame is beginning execution with initial group: %s", v23[0]);

    OUTLINED_FUNCTION_156(v6 + 72, v24);
    Strong = swift_unknownObjectWeakLoadStrong();
    v20 = *(v6 + 80);
    type metadata accessor for GroupHandlingFlowFrame();
    swift_allocObject();
    v21 = swift_unknownObjectRetain();
    v23[2] = sub_1DCD6EE44(v21, a3, Strong, v20);
    type metadata accessor for SiriKitFlowFrameInput(0);
    sub_1DD0DCF8C();
  }

  type metadata accessor for SiriKitFlowFrameInput(0);
  sub_1DD0DB32C();
  swift_storeEnumTagMultiPayload();
  a4(v14);
  return sub_1DCB0E9D8(v14, &qword_1ECCA9BF0, &qword_1DD0EA250);
}

uint64_t GuidedConversationFlowFrame.deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1DCB0720C(v0 + 72);
  return v0;
}

uint64_t GuidedConversationFlowFrame.__deallocating_deinit()
{
  GuidedConversationFlowFrame.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1DCD70E28()
{
  result = qword_1ECCA5440;
  if (!qword_1ECCA5440)
  {
    type metadata accessor for GroupHandlingFlowFrame();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5440);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GuidedConversationFlowConstants(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for State(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCD711C4()
{
  result = qword_1ECCA5448;
  if (!qword_1ECCA5448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5448);
  }

  return result;
}

uint64_t HandcraftedPluginManifestEntry.bundlePath.getter()
{
  OUTLINED_FUNCTION_1_59();
  v0 = *(sub_1DCB50C00() + 16);

  return v0;
}

uint64_t sub_1DCD712AC()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000016;
  *(result + 24) = 0x80000001DD11BC10;
  *(result + 32) = 0xD00000000000001ELL;
  *(result + 40) = 0x80000001DD1100A0;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E450 = result;
  return result;
}

uint64_t sub_1DCD71324()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000016;
  *(result + 24) = 0x80000001DD11BBF0;
  *(result + 32) = 0xD00000000000001ELL;
  *(result + 40) = 0x80000001DD1100C0;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E2E8 = result;
  return result;
}

uint64_t sub_1DCD7139C()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD00000000000001ELL;
  *(result + 24) = 0x80000001DD11BBD0;
  *(result + 32) = 0xD00000000000002CLL;
  *(result + 40) = 0x80000001DD1100E0;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E440 = result;
  return result;
}

uint64_t sub_1DCD71414()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000018;
  *(result + 24) = 0x80000001DD11BBB0;
  *(result + 32) = 0xD000000000000020;
  *(result + 40) = 0x80000001DD110140;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E498 = result;
  return result;
}

uint64_t sub_1DCD7148C()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000021;
  *(result + 24) = 0x80000001DD11BB80;
  *(result + 32) = 0xD000000000000029;
  *(result + 40) = 0x80000001DD110110;
  *(result + 48) = 1;
  *(result + 56) = 1;
  qword_1EDE4E3A0 = result;
  return result;
}

uint64_t sub_1DCD71504()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000024;
  *(result + 24) = 0x80000001DD11BB50;
  *(result + 32) = 0xD00000000000002CLL;
  *(result + 40) = 0x80000001DD110170;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E598 = result;
  return result;
}

uint64_t sub_1DCD7157C()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000016;
  *(result + 24) = 0x80000001DD11BB30;
  *(result + 32) = 0xD00000000000001ELL;
  *(result + 40) = 0x80000001DD1101A0;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E430 = result;
  return result;
}

uint64_t sub_1DCD715F4()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000021;
  *(result + 24) = 0x80000001DD11BB00;
  *(result + 32) = 0xD000000000000029;
  *(result + 40) = 0x80000001DD1101C0;
  *(result + 48) = 1;
  *(result + 56) = 1;
  qword_1EDE4E388 = result;
  return result;
}

uint64_t sub_1DCD7166C()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD00000000000001ELL;
  *(result + 24) = 0x80000001DD11BAB0;
  *(result + 32) = 0xD000000000000026;
  *(result + 40) = 0x80000001DD110220;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E520 = result;
  return result;
}

uint64_t sub_1DCD716E4()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD00000000000001CLL;
  *(result + 24) = 0x80000001DD11BA90;
  *(result + 32) = 0xD000000000000024;
  *(result + 40) = 0x80000001DD110250;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E588 = result;
  return result;
}

uint64_t sub_1DCD7175C()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD00000000000001ALL;
  *(result + 24) = 0x80000001DD11BA70;
  *(result + 32) = 0xD000000000000022;
  *(result + 40) = 0x80000001DD110280;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E2D0 = result;
  return result;
}

uint64_t sub_1DCD717D4()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000017;
  *(result + 24) = 0x80000001DD11BA50;
  *(result + 32) = 0xD000000000000026;
  *(result + 40) = 0x80000001DD1102B0;
  *(result + 48) = 1;
  *(result + 56) = 1;
  qword_1EDE4E3F8 = result;
  return result;
}

uint64_t sub_1DCD7184C()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD00000000000001CLL;
  *(result + 24) = 0x80000001DD11BA30;
  *(result + 32) = 0xD000000000000024;
  *(result + 40) = 0x80000001DD1102E0;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E480 = result;
  return result;
}

uint64_t sub_1DCD718C4()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD00000000000001FLL;
  *(result + 24) = 0x80000001DD11BA10;
  *(result + 32) = 0xD000000000000027;
  *(result + 40) = 0x80000001DD110310;
  *(result + 48) = 1;
  *(result + 56) = 1;
  qword_1EDE4E3E8 = result;
  return result;
}

uint64_t sub_1DCD7193C()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000027;
  *(result + 24) = 0x80000001DD11B9E0;
  *(result + 32) = 0xD00000000000002FLL;
  *(result + 40) = 0x80000001DD110340;
  *(result + 48) = 1;
  *(result + 56) = 1;
  qword_1EDE4E500 = result;
  return result;
}

uint64_t sub_1DCD719B4()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD00000000000002ALL;
  *(result + 24) = 0x80000001DD11B9B0;
  *(result + 32) = 0xD000000000000032;
  *(result + 40) = 0x80000001DD110370;
  *(result + 48) = 1;
  *(result + 56) = 1;
  qword_1EDE4E4B8 = result;
  return result;
}

uint64_t sub_1DCD71A2C()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000019;
  *(result + 24) = 0x80000001DD11B990;
  *(result + 32) = 0xD000000000000021;
  *(result + 40) = 0x80000001DD1103B0;
  *(result + 48) = 1;
  *(result + 56) = 1;
  qword_1EDE4E370 = result;
  return result;
}

uint64_t sub_1DCD71AA4()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000013;
  *(result + 24) = 0x80000001DD11B970;
  *(result + 32) = 0xD000000000000016;
  *(result + 40) = 0x80000001DD1103E0;
  *(result + 48) = 1;
  *(result + 56) = 1;
  qword_1EDE4E3D8 = result;
  return result;
}

uint64_t sub_1DCD71B1C()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD00000000000001CLL;
  *(result + 24) = 0x80000001DD11B950;
  *(result + 32) = 0xD000000000000024;
  *(result + 40) = 0x80000001DD110400;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E570 = result;
  return result;
}

uint64_t sub_1DCD71B94()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD00000000000001DLL;
  *(result + 24) = 0x80000001DD11B930;
  *(result + 32) = 0xD000000000000025;
  *(result + 40) = 0x80000001DD110430;
  *(result + 48) = 1;
  *(result + 56) = 1;
  qword_1EDE4E468 = result;
  return result;
}

uint64_t sub_1DCD71C0C()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000021;
  *(result + 24) = 0x80000001DD11B900;
  *(result + 32) = 0xD000000000000031;
  *(result + 40) = 0x80000001DD110460;
  *(result + 48) = 1;
  *(result + 56) = 2;
  qword_1EDE4E360 = result;
  return result;
}

uint64_t sub_1DCD71C88()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000019;
  *(result + 24) = 0x80000001DD11B8E0;
  *(result + 32) = 0xD000000000000021;
  *(result + 40) = 0x80000001DD1104A0;
  *(result + 48) = 1;
  *(result + 56) = 1;
  qword_1EDE4E348 = result;
  return result;
}

uint64_t sub_1DCD71D00()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000026;
  *(result + 24) = 0x80000001DD11B8B0;
  *(result + 32) = 0xD00000000000002ELL;
  *(result + 40) = 0x80000001DD1104D0;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E510 = result;
  return result;
}

uint64_t sub_1DCD71D78()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000021;
  *(result + 24) = 0x80000001DD11B880;
  *(result + 32) = 0xD000000000000029;
  *(result + 40) = 0x80000001DD110500;
  *(result + 48) = 1;
  *(result + 56) = 1;
  qword_1EDE4E338 = result;
  return result;
}

uint64_t sub_1DCD71DF0()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000022;
  *(result + 24) = 0x80000001DD11B850;
  *(result + 32) = 0xD00000000000002ALL;
  *(result + 40) = 0x80000001DD110530;
  *(result + 48) = 1;
  *(result + 56) = 1;
  qword_1EDE4E2C0 = result;
  return result;
}

uint64_t sub_1DCD71E68()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD00000000000001FLL;
  *(result + 24) = 0x80000001DD11B830;
  *(result + 32) = 0xD000000000000027;
  *(result + 40) = 0x80000001DD110560;
  *(result + 48) = 1;
  *(result + 56) = 1;
  qword_1EDE4E3C8 = result;
  return result;
}

uint64_t sub_1DCD71EE0()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000021;
  *(result + 24) = 0x80000001DD11BAD0;
  *(result + 32) = 0xD00000000000002FLL;
  *(result + 40) = 0x80000001DD1101F0;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E4D0 = result;
  return result;
}

uint64_t sub_1DCD71F58()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000017;
  *(result + 24) = 0x80000001DD11B810;
  *(result + 32) = 0xD00000000000001FLL;
  *(result + 40) = 0x80000001DD110590;
  *(result + 48) = 1;
  *(result + 56) = 1;
  qword_1EDE4E3B8 = result;
  return result;
}

uint64_t sub_1DCD71FD0()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000021;
  *(result + 24) = 0x80000001DD11B7E0;
  *(result + 32) = 0xD000000000000029;
  *(result + 40) = 0x80000001DD1105B0;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E320 = result;
  return result;
}

uint64_t sub_1DCD72048()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000019;
  *(result + 24) = 0x80000001DD11B7C0;
  *(result + 32) = 0xD000000000000021;
  *(result + 40) = 0x80000001DD1105E0;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E308 = result;
  return result;
}

uint64_t sub_1DCD720C0()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD00000000000001BLL;
  *(result + 24) = 0x80000001DD11B7A0;
  *(result + 32) = 0xD000000000000027;
  *(result + 40) = 0x80000001DD110610;
  *(result + 48) = 1;
  *(result + 56) = 1;
  qword_1EDE4E5B0 = result;
  return result;
}

uint64_t sub_1DCD72138()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD00000000000002BLL;
  *(result + 24) = 0x80000001DD11B740;
  *(result + 32) = 0xD000000000000033;
  *(result + 40) = 0x80000001DD110640;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E4A8 = result;
  return result;
}

uint64_t sub_1DCD721B0()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000020;
  *(result + 24) = 0x80000001DD11B770;
  *(result + 32) = 0xD000000000000023;
  *(result + 40) = 0x80000001DD110680;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E560 = result;
  return result;
}

uint64_t sub_1DCD72228()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000027;
  *(result + 24) = 0x80000001DD11B710;
  *(result + 32) = 0xD00000000000002FLL;
  *(result + 40) = 0x80000001DD1106B0;
  *(result + 48) = 1;
  *(result + 56) = 1;
  qword_1EDE4E4E8 = result;
  return result;
}

uint64_t sub_1DCD722A0()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD00000000000001ELL;
  *(result + 24) = 0x80000001DD11B6F0;
  *(result + 32) = 0xD000000000000026;
  *(result + 40) = 0x80000001DD1106E0;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E420 = result;
  return result;
}

uint64_t sub_1DCD72318()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000024;
  *(result + 24) = 0x80000001DD11B6C0;
  *(result + 32) = 0xD00000000000002CLL;
  *(result + 40) = 0x80000001DD110710;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E548 = result;
  return result;
}

uint64_t sub_1DCD72390()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD00000000000001ELL;
  *(result + 24) = 0x80000001DD11B6A0;
  *(result + 32) = 0xD000000000000026;
  *(result + 40) = 0x80000001DD110740;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E410 = result;
  return result;
}

uint64_t sub_1DCD72408()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000019;
  *(result + 24) = 0x80000001DD11B680;
  *(result + 32) = 0xD000000000000021;
  *(result + 40) = 0x80000001DD110770;
  *(result + 48) = 1;
  *(result + 56) = 1;
  qword_1EDE4E2F8 = result;
  return result;
}

void sub_1DCD72480()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DD0F1920;
  if (qword_1EDE4E448 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_1EDE4E450;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD72E60()
{

  return v0;
}

uint64_t sub_1DCD72E88()
{
  sub_1DCD72E60();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCD72EB8()
{
  if (qword_1EDE4E528 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDE4E530;
  v1 = sub_1DCB08B14(qword_1EDE4E530);
  v2 = v0 & 0xC000000000000001;

  v3 = MEMORY[0x1E69E7CC8];
  if (v1)
  {
    sub_1DCB35460(0, v2 == 0, v0);
    if (!v2)
    {
      sub_1DD0DCF8C();
    }

    v6 = MEMORY[0x1E12A72C0](0, v0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5458, &qword_1DD0F1AD8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DD0E07C0;
    v5 = *(v6 + 24);
    *(inited + 32) = *(v6 + 16);
    *(inited + 40) = v5;
    *(inited + 48) = v6;
    type metadata accessor for InternalPluginData();

    sub_1DD0DCF8C();
  }

  qword_1EDE46968 = v3;
  return result;
}

uint64_t sub_1DCD73098()
{
  if (qword_1EDE4E528 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDE4E530;
  v1 = sub_1DCB08B14(qword_1EDE4E530);
  v2 = v0 & 0xC000000000000001;

  v3 = MEMORY[0x1E69E7CC8];
  if (v1)
  {
    sub_1DCB35460(0, v2 == 0, v0);
    if (!v2)
    {
      sub_1DD0DCF8C();
    }

    v6 = MEMORY[0x1E12A72C0](0, v0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5458, &qword_1DD0F1AD8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DD0E07C0;
    v5 = *(v6 + 40);
    *(inited + 32) = *(v6 + 32);
    *(inited + 40) = v5;
    *(inited + 48) = v6;
    type metadata accessor for InternalPluginData();

    sub_1DD0DCF8C();
  }

  qword_1EDE4D9C0 = v3;
  return result;
}

SiriKitFlow::HandcraftedPluginManifestEntry_optional static HandcraftedPluginManifestEntry.fromPluginBundleId(_:)(uint64_t a1, uint64_t a2)
{

  v4 = a1;
  v5 = a2;

  return HandcraftedPluginManifestEntry.init(rawValue:)(*&v4);
}

SiriKitFlow::HandcraftedPluginManifestEntry static HandcraftedPluginManifestEntry.fromPluginBundlePath(_:)@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v10 = OUTLINED_FUNCTION_3_62(a1, a2, a3, a4, a5, a6, a7, a8);
  v16 = OUTLINED_FUNCTION_2_55(v10, MEMORY[0x1E69E6158], v11, v10, v12, v13, v14, v15, v25);
  v17 = sub_1DCB1D5C0(v16);
  v19 = v18;

  if (!v19)
  {
    goto LABEL_6;
  }

  if (qword_1EDE46960 != -1)
  {
    OUTLINED_FUNCTION_0_55(&qword_1EDE46960);
  }

  v21 = sub_1DCB508E0(v17, v19, qword_1EDE46968);

  if (v21)
  {
    v22 = *(v21 + 32);
    v23 = *(v21 + 40);

    v24._countAndFlagsBits = v22;
    v24._object = v23;
    return HandcraftedPluginManifestEntry.init(rawValue:)(v24).value;
  }

  else
  {
LABEL_6:
    *a9 = 38;
  }

  return result;
}

unint64_t HandcraftedPluginManifestEntry.associatedAppBundleId.getter()
{
  result = 0;
  switch(*v0)
  {
    case 1:
    case 3:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x17:
    case 0x1A:
    case 0x1B:
    case 0x1E:
    case 0x1F:
    case 0x20:
    case 0x21:
      return result;
    case 2:
    case 0xD:
    case 0xF:
    case 0x10:
    case 0x24:
      result = 0x6C7070612E6D6F63;
      break;
    case 4:
    case 0x15:
    case 0x1D:
    case 0x23:
      OUTLINED_FUNCTION_4_58();
      result = v5 - 2;
      break;
    case 5:
    case 0x14:
      OUTLINED_FUNCTION_4_58();
      result = v2 - 1;
      break;
    case 7:
      OUTLINED_FUNCTION_4_58();
      result = v3 + 6;
      break;
    case 0xC:
    case 0x25:
      OUTLINED_FUNCTION_4_58();
      result = v4 - 5;
      break;
    case 0xE:
      OUTLINED_FUNCTION_4_58();
      result = v7 - 4;
      break;
    case 0x16:
      result = 0xD000000000000015;
      break;
    case 0x18:
      OUTLINED_FUNCTION_4_58();
      result = v6 - 3;
      break;
    case 0x19:
      result = 0xD000000000000015;
      break;
    case 0x1C:
      result = 0xD000000000000015;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

unint64_t sub_1DCD73598()
{
  result = qword_1ECCA5450;
  if (!qword_1ECCA5450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5450);
  }

  return result;
}

unint64_t sub_1DCD73610@<X0>(unint64_t *a1@<X8>)
{
  result = HandcraftedPluginManifestEntry.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1DCD7366C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v5[9] = a5;
  sub_1DCC72794(v5);

  sub_1DD0DCF8C();
}

void HandleIntentFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:_:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v14);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v24 - v17;
  v19 = swift_allocObject();
  v19[2] = a6;
  v19[3] = a7;
  v19[4] = a1;
  v19[5] = a2;
  v19[6] = a3;
  v20 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v18, v21, v22, v20);
  OUTLINED_FUNCTION_41_4();
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_1DD0F1B18;
  v23[5] = v19;
  v23[6] = a4;
  v23[7] = a5;
  sub_1DD0DCF8C();
}

void HandleIntentFlowStrategy.makeInProgressResponse(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v8);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v17 - v11;
  v13 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v12, v14, v15, v13);
  OUTLINED_FUNCTION_41_4();
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1DD0F1B30;
  v16[5] = a1;
  v16[6] = a4;
  v16[7] = a5;
  sub_1DD0DCF8C();
}

void sub_1DCD73DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v11);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v20 - v14;
  v16 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v15, v17, v18, v16);
  OUTLINED_FUNCTION_41_4();
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a9;
  v19[5] = 0;
  v19[6] = a4;
  v19[7] = a5;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD73EA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCCDB478();
}

void sub_1DCD73F40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v4);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v13 - v7;
  v9 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v8, v10, v11, v9);
  OUTLINED_FUNCTION_41_4();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1DD0F2598;
  v12[5] = 0;
  v12[6] = a1;
  v12[7] = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD74044(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return sub_1DCEABBD8();
}

uint64_t sub_1DCD740DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCEAAE74();
}

uint64_t sub_1DCD74194(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCEABCC0();
}

uint64_t sub_1DCD74234(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return sub_1DCEAC3B0();
}

void HandleIntentFlowStrategyAsync.authenticationPolicy.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 32) = &type metadata for FeatureFlagDefinitions.Core;
  *(a1 + 40) = &off_1F585CB38;
  *(a1 + 8) = 0;
}

uint64_t sub_1DCD742EC(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)();
}

uint64_t HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDB478();
}

uint64_t sub_1DCD74408(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1);
}

uint64_t sub_1DCD744B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)(a1);
}

uint64_t sub_1DCD74560()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 56);
  v2 = type metadata accessor for AceOutput(0);
  v1[3] = v2;
  v1[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v1);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v4 = v2[7];
  v5 = type metadata accessor for NLContextUpdate(0);
  OUTLINED_FUNCTION_7_5(boxed_opaque_existential_1Tm + v4, v6, v7, v5);
  v8 = v2[9];
  v9 = sub_1DD0DD10C();
  OUTLINED_FUNCTION_7_5(boxed_opaque_existential_1Tm + v8, v10, v11, v9);
  v12 = v2[8];
  v13 = *MEMORY[0x1E69D0678];
  sub_1DD0DD15C();
  OUTLINED_FUNCTION_112();
  (*(v14 + 104))(boxed_opaque_existential_1Tm + v12, v13);
  boxed_opaque_existential_1Tm[15] = 0;
  *(boxed_opaque_existential_1Tm + 13) = 0u;
  *(boxed_opaque_existential_1Tm + 11) = 0u;
  sub_1DCB6C5E8(v0 + 16, (boxed_opaque_existential_1Tm + 11));
  *(boxed_opaque_existential_1Tm + v2[10]) = 0;
  *boxed_opaque_existential_1Tm = MEMORY[0x1E69E7CC0];
  *(boxed_opaque_existential_1Tm + 1) = 0u;
  *(boxed_opaque_existential_1Tm + 3) = 0u;
  *(boxed_opaque_existential_1Tm + 5) = 0u;
  *(boxed_opaque_existential_1Tm + 7) = 0u;
  boxed_opaque_existential_1Tm[9] = 0;
  *(boxed_opaque_existential_1Tm + 80) = 3;
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_152();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_1DCD746BC(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:)();
}

uint64_t HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCEABBD8();
}

uint64_t sub_1DCD747D8(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1DCB4AE1C;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)();
}

uint64_t HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)()
{
  OUTLINED_FUNCTION_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCEAAE74();
}

uint64_t sub_1DCD74918(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1DCB4AE1C;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)();
}

uint64_t HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCEABCC0();
}

uint64_t sub_1DCD74A44(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AD3C;

  return HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)();
}

uint64_t HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCEAC3B0();
}

uint64_t sub_1DCD74B60(uint64_t a1)
{
  v1 = swift_allocObject();
  sub_1DCD74BA0();
  return v1;
}

uint64_t sub_1DCD74BA0()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_112();
  (*(v1 + 32))(v0 + v2);
  return v0;
}

uint64_t sub_1DCD74CA0()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_12_24(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_46_0(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCD74D6C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a4;
  v17 = a5;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  (*(*(v7 + 88) + 32))(a3, v16, v17, sub_1DCD7B27C, v14, *(v7 + 80));
}

uint64_t sub_1DCD74F24(uint64_t a1, uint64_t a2)
{
  *(v3 + 184) = a1;
  *(v3 + 192) = v2;
  *(v3 + 200) = *a2;
  *(v3 + 216) = *(a2 + 16);
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCD74F48()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_56_6();
  *(v0 + 224) = v1;
  v2 = *(v0 + 208);
  *(v1 + 16) = *(v0 + 192);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 232) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5500, &qword_1DD0F20A0);
  OUTLINED_FUNCTION_17();
  *v3 = v4;
  v3[1] = sub_1DCD7502C;
  OUTLINED_FUNCTION_11_11();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCD7502C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 240) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCD7512C()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 184);
  sub_1DCB17C3C(v0 + 16, v0 + 72, &qword_1ECCA5500, &qword_1DD0F20A0);

  v2 = *(v0 + 48);
  *(v0 + 144) = *(v0 + 32);
  *(v0 + 160) = v2;
  *(v0 + 128) = *(v0 + 16);
  v3 = *(v0 + 64);
  *(v0 + 176) = v3;
  v4 = *(v0 + 168);
  v1[8] = 0;
  v1[9] = 0;
  sub_1DCAFF9E8((v0 + 72), v1);
  v1[5] = v4;
  v1[6] = v3;
  v1[7] = 0;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1DCD751E8()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCD75244(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a4;
  v17 = a5;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA5508, &unk_1DD0F76F0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  (*(*(v7 + 88) + 40))(a3, v16, v17, sub_1DCD7ACA8, v14, *(v7 + 80));
}

uint64_t sub_1DCD753FC(uint64_t a1)
{
  sub_1DCB17C3C(a1, &v2, &qword_1ECCA2288, &unk_1DD0E4840);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA5508, &unk_1DD0F76F0);
    return sub_1DD0DE45C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA5508, &unk_1DD0F76F0);
    return sub_1DD0DE46C();
  }
}

uint64_t sub_1DCD754CC()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_12_24(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_46_0(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCD75598(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a4;
  v17 = a5;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  (*(*(v7 + 88) + 48))(a3, v16, v17, sub_1DCD7B27C, v14, *(v7 + 80));
}

uint64_t sub_1DCD75750(uint64_t a1)
{
  sub_1DCB17C3C(a1, v3, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  if (v4)
  {
    v2[0] = *&v3[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
    return sub_1DD0DE45C();
  }

  else
  {
    sub_1DCAFF9E8(v3, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
    return sub_1DD0DE46C();
  }
}

uint64_t sub_1DCD75814()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_12_24(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_46_0(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCD758E0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a4;
  v17 = a5;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  (*(*(v7 + 88) + 56))(a3, v16, v17, sub_1DCD7B27C, v14, *(v7 + 80));
}

uint64_t sub_1DCD75ABC()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_12_24(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_46_0(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCD75B88(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a4;
  v17 = a5;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  (*(*(v7 + 88) + 64))(a3, v16, v17, sub_1DCD7B27C, v14, *(v7 + 80));
}

uint64_t sub_1DCD75D64()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_12_24(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_46_0(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCD75E30(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a4;
  v17 = a5;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  (*(*(v7 + 88) + 72))(a3, v16, v17, sub_1DCD7B27C, v14, *(v7 + 80));
}

uint64_t sub_1DCD7600C()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_12_24(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_46_0(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCD760D8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a4;
  v17 = a5;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  (*(*(v7 + 88) + 80))(a3, v16, v17, sub_1DCD7AC68, v14, *(v7 + 80));
}

uint64_t sub_1DCD76290(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCD762A8()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 40);
  v2 = OUTLINED_FUNCTION_56_6();
  *(v0 + 48) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  type metadata accessor for SiriKitIntentExecutionBehavior();
  OUTLINED_FUNCTION_17();
  *v4 = v5;
  v4[1] = sub_1DCD76388;
  OUTLINED_FUNCTION_11_11();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DDE0](v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1DCD76388()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCD7648C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA54F8, &qword_1DD0F2098);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  (*(*(*(v6 + 88) + 8) + 40))(a3, v16, sub_1DCD7ABF0, v13, *(v6 + 80));
}

uint64_t sub_1DCD76698()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_112();
  (*(v1 + 8))(v0 + v2);
  return v0;
}

uint64_t sub_1DCD76738(unint64_t a1, __n128 *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCD74C7C(a1, a2);
}

uint64_t sub_1DCD767E4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCD74F24(a1, a2);
}

uint64_t sub_1DCD76890(unint64_t a1, __n128 *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCD754A8(a1, a2);
}

uint64_t sub_1DCD7693C(unint64_t a1, __n128 *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCD757F0(a1, a2);
}

uint64_t sub_1DCD769E8(unint64_t a1, __n128 *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCD75A98(a1, a2);
}

uint64_t sub_1DCD76A94(unint64_t a1, __n128 *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCD75D40(a1, a2);
}

uint64_t sub_1DCD76B40(unint64_t a1, __n128 *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCD75FE8(a1, a2);
}

uint64_t sub_1DCD76BEC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCBCF434;

  return sub_1DCD76290(a1, a2);
}

uint64_t NoOutputHandleIntentFlowStrategy.makeIntentHandledResponse(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v6[3] = type metadata accessor for EmptyOutput();
  v6[4] = &protocol witness table for EmptyOutput;
  v6[0] = swift_allocObject();
  v7 = 0;
  a4(v6);
  return sub_1DCB185D0(v6, &qword_1ECCA1F70, &qword_1DD0E2BD0);
}

uint64_t sub_1DCD76D2C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 16);
  v2 = type metadata accessor for EmptyOutput();
  v3 = swift_allocObject();
  v1[3] = v2;
  v1[4] = &protocol witness table for EmptyOutput;
  *v1 = v3;
  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1DCD76DA8()
{
  OUTLINED_FUNCTION_52_14();
  v0 = swift_allocObject();
  sub_1DCD76E1C();
  return v0;
}

uint64_t sub_1DCD76E1C()
{
  OUTLINED_FUNCTION_52_14();
  v8 = *(v7 + 16);
  OUTLINED_FUNCTION_112();
  (*(v9 + 32))(v1 + v10);
  OUTLINED_FUNCTION_66();
  *(v1 + *(v11 + 104)) = v6;
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v5, v1 + *(v12 + 112));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v4, v1 + *(v13 + 120));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v3, v1 + *(v14 + 128));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v2, v1 + *(v15 + 136));
  OUTLINED_FUNCTION_66();
  v17 = v1 + *(v16 + 144);
  *v17 = *v0;
  *(v17 + 16) = v8;
  *(v17 + 24) = 0;
  return v1;
}

void sub_1DCD76F5C()
{
  OUTLINED_FUNCTION_66();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_86();
  Flow.deferToExecuteAsync(_:)();
}

uint64_t sub_1DCD76FE8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCD770D0()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB799DC(v0[12], v0[13], v0[14], 0);
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCD77130(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = sub_1DD0DD85C();
  *(v3 + 32) = v5;
  *(v3 + 40) = *(v5 - 8);
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = *a2;
  *(v3 + 72) = *(a2 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DCD77204, 0, 0);
}

uint64_t sub_1DCD77204()
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v5, v6, "HandleIntentFlow presenting optional PreHandle views...");
    OUTLINED_FUNCTION_62();
  }

  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_14_5(&qword_1EDE4EC80);
  }

  v7 = *(v0 + 72);
  v8 = *(v0 + 24);
  v9 = sub_1DD0DD88C();
  v23 = *(v0 + 56);
  OUTLINED_FUNCTION_92(v9, qword_1EDE57DD0);
  v10 = swift_task_alloc();
  *(v0 + 80) = v10;
  *(v10 + 16) = v8;
  *(v10 + 24) = v23;
  *(v10 + 40) = v7;
  sub_1DD0DD84C();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 88) = v11;
  *v11 = v12;
  v11[1] = sub_1DCD773A4;
  OUTLINED_FUNCTION_68_10();
  OUTLINED_FUNCTION_47();

  return v20(v13, v14, v15, v16, v17, v18, v19, v20, sub_1DCB62EFC, *(&v23 + 1));
}

void sub_1DCD773A4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {
    (*(v3[5] + 8))(v3[6], v3[4]);

    v7 = *(v5 + 8);

    v7();
  }
}

void sub_1DCD774E8()
{
  v19 = v0;
  v1 = *(v0 + 248);
  v2 = v1;
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_151();
    v5 = OUTLINED_FUNCTION_52_0();
    v17[0] = v5;
    *v1 = 136315138;
    swift_getErrorValue();
    v6 = sub_1DD0DF18C();
    v8 = sub_1DCB10E9C(v6, v7, v17);

    *(v1 + 1) = v8;
    OUTLINED_FUNCTION_72_6(&dword_1DCAFC000, v3, v4, "HandleIntentProcessing resulted in a failure: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_92_0();
  }

  OUTLINED_FUNCTION_30_21(v9, v10, v11, v12, v13, v14, v15, v16, v17[0], v17[1], v17[2], v18);
  sub_1DCB79974(v17);
}

uint64_t sub_1DCD77648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCD77670, 0, 0);
}

uint64_t sub_1DCD77670()
{
  OUTLINED_FUNCTION_41();
  v11 = *(v0 + 64);
  v10 = *(v0 + 80);
  v1 = OUTLINED_FUNCTION_51_12((v11 + *(*v11 + 136)));
  *(v0 + 96) = v1;
  *(v1 + 16) = v11;
  *(v1 + 32) = v10;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 104) = v2;
  *v2 = v3;
  v2[1] = sub_1DCD77764;
  OUTLINED_FUNCTION_12_10();

  return sub_1DCB63BBC(v4, v5, v6, v7, v8);
}

uint64_t sub_1DCD77764()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCD77870()
{
  v12 = v1;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v5);
    _os_log_impl(&dword_1DCAFC000, v3, v4, "HandleIntentFlow finished with PreHandle processing.", v0, 2u);
    OUTLINED_FUNCTION_62();
  }

  v6 = *(v1 + 72);
  v7 = *(v1 + 80);

  v8 = v6;
  v9 = v7;
  v10 = 0;
  v11 = 2;
  sub_1DD0DCF8C();
}

void sub_1DCD77994()
{
  OUTLINED_FUNCTION_41();
  v5 = v0;
  v1 = *(v0 + 112);

  v3[1] = 0;
  v3[2] = 0;
  v3[0] = v1;
  v4 = 4;
  v2 = v1;
  sub_1DCB79974(v3);
}

uint64_t sub_1DCD77A2C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a2;
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = a5;
  v8 = *(v7 + 88);
  v9 = *(v7 + 80);
  v12 = (*(v8 + 48) + **(v8 + 48));
  v10 = swift_task_alloc();
  v5[5] = v10;
  *v10 = v5;
  v10[1] = sub_1DCB63F5C;

  return v12(a1, v5 + 2, v9, v8);
}

uint64_t sub_1DCD77BB0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = v4[16];
  v6 = v4[15];
  v7 = v4[14];
  v8 = *v1;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v10 + 160) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCD77D04()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCD77D70()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 160);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v2 = v1;
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6EC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 160);
  if (v5)
  {
    v7 = OUTLINED_FUNCTION_151();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    OUTLINED_FUNCTION_72_6(&dword_1DCAFC000, v3, v4, "Error when submitting engagement for suggestions: %@");
    sub_1DCB185D0(v8, qword_1ECCA8AD0, &qword_1DD0E4F90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_92_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_152();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

void sub_1DCD77F1C(void *a1, char a2)
{
  v3 = *v2;
  v4 = v2 + *(*v2 + 144);
  if (*(v4 + 24) != 5 || *(v4 + 8) | *(v4 + 16) | *v4)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v5 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v5, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  if (a2)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v7 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v7, qword_1EDE57E00);
    v8 = a1;
    v9 = sub_1DD0DD8EC();
    v10 = sub_1DD0DE6EC();
    sub_1DCB79378(a1, 1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v24 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_1DD0DF18C();
      v15 = sub_1DCB10E9C(v13, v14, &v24);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1DCAFC000, v9, v10, "Handoff flow did not exit successfully: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E12A8390](v12, -1, -1);
      MEMORY[0x1E12A8390](v11, -1, -1);
    }

    v25 = 0uLL;
    v24 = a1;
    v26 = 4;
    v16 = a1;
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v17 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v17, qword_1EDE57E00);
    v18 = sub_1DD0DD8EC();
    v19 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1DCAFC000, v18, v19, "Handoff flow completed successfully. Moving to handled error state.", v20, 2u);
      MEMORY[0x1E12A8390](v20, -1, -1);
    }

    type metadata accessor for SiriKitHandleIntentFlow.HandleIntentFlowError(0, *(v3 + 80), *(v3 + 88), v21);
    swift_getWitnessTable();
    v22 = swift_allocError();
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    *v23 = 0;
    *(v23 + 24) = -64;
    v24 = v22;
    v25 = vdupq_n_s64(1uLL);
    v26 = 3;
  }

  sub_1DCB79974(&v24);
}

void sub_1DCD7844C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a3;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v26 - v12;
  v14 = v11[1];
  v30 = *v11;
  v31 = v14;
  v32 = v11[2];
  v15 = *(v7 + 16);
  v27 = v3;
  v28 = v15;
  v15(&v26 - v12, v3, a2);
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = v16 + v8;
  v18 = swift_allocObject();
  v33 = v18;
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v19 = *(v7 + 32);
  v19(v18 + v16, v13, a2);
  v20 = v29;
  v28(v29, v4, a2);
  v21 = swift_allocObject();
  v22 = v26;
  *(v21 + 16) = a2;
  *(v21 + 24) = v22;
  v19(v21 + v16, v20, a2);
  v23 = (v21 + ((v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  v24 = v31;
  *v23 = v30;
  v23[1] = v24;
  v23[2] = v32;
  DynamicType = swift_getDynamicType();
  type metadata accessor for AnyUnlockDeviceFlowStrategy();
  swift_allocObject();
  sub_1DD01C898(sub_1DCD7A938, v33, sub_1DCD799A4, 0, &unk_1DD0F2020, v21, DynamicType);
  sub_1DD0DCF8C();
}

void sub_1DCD7871C(void *a1, char a2)
{
  v3 = v2 + *(*v2 + 144);
  if (*(v3 + 24) == 1)
  {
    v4 = *v3;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (a2)
    {
      v10 = 0;
      v11 = 0;
      v9 = a1;
      v12 = 4;
      sub_1DCB61AE4(v4, v5, v6, 1);
      sub_1DCB8D4CC(a1, 1);
      sub_1DCB79974(&v9);
    }

    v9 = *v3;
    v10 = v5;
    v11 = 0;
    v12 = 2;
    sub_1DCB61AE4(v4, v5, v6, 1);
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v8 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v8, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD78A4C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 272) = v3;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DCD78BD4()
{
  OUTLINED_FUNCTION_39();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 296) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DCD78D0C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  *(v0 + 346) = 7;
  v3 = v1;
  v4 = [v2 _code];
  *(v0 + 347) = 76;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 304) = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_59_11(v5);

  return sub_1DCB64FD8(v0 + 56, (v0 + 346), v7, v8, v4, (v0 + 347));
}

uint64_t sub_1DCD78DD0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCD78F3C()
{
  OUTLINED_FUNCTION_39();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 328) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DCD79074()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  *(v0 + 344) = 6;
  v3 = v1;
  v4 = [v2 _code];
  *(v0 + 345) = 15;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 336) = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_59_11(v5);

  return sub_1DCB64FD8(v0 + 16, (v0 + 344), v7, v8, v4, (v0 + 345));
}

uint64_t sub_1DCD79138()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1DCD792A4()
{
  OUTLINED_FUNCTION_33();
  v11 = v0;
  OUTLINED_FUNCTION_30_21(v1, v2, v3, v4, v5, v6, v7, v8, v9[0], v9[1], v9[2], v10);
  sub_1DCB79974(v9);
}

void sub_1DCD79340()
{
  OUTLINED_FUNCTION_33();
  v11 = v0;
  OUTLINED_FUNCTION_30_21(v1, v2, v3, v4, v5, v6, v7, v8, v9[0], v9[1], v9[2], v10);
  sub_1DCB79974(v9);
}

void sub_1DCD793DC()
{
  OUTLINED_FUNCTION_33();
  v11 = v0;
  OUTLINED_FUNCTION_30_21(v1, v2, v3, v4, v5, v6, v7, v8, v9[0], v9[1], v9[2], v10);
  sub_1DCB79974(v9);
}

uint64_t sub_1DCD79478(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a2;
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = a5;
  v8 = *(v7 + 88);
  v9 = *(v7 + 80);
  v12 = (*(v8 + 72) + **(v8 + 72));
  v10 = swift_task_alloc();
  v5[5] = v10;
  *v10 = v5;
  v10[1] = sub_1DCB63F5C;

  return v12(a1, v5 + 2, v9, v8);
}

uint64_t sub_1DCD795FC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a2;
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = a5;
  v8 = *(v7 + 88);
  v9 = *(v7 + 80);
  v12 = (*(v8 + 80) + **(v8 + 80));
  v10 = swift_task_alloc();
  v5[5] = v10;
  *v10 = v5;
  v10[1] = sub_1DCB63F5C;

  return v12(a1, v5 + 2, v9, v8);
}

unint64_t sub_1DCD79780(uint64_t a1)
{
  switch(*(v1 + 24) >> 6)
  {
    case 1:
      sub_1DD0DEC1C();
      MEMORY[0x1E12A6780](0xD000000000000023, 0x80000001DD11BF60);
      sub_1DD0DEDBC();
      goto LABEL_6;
    case 2:
      sub_1DD0DEC1C();
      MEMORY[0x1E12A6780](0xD000000000000020, 0x80000001DD11BF30);
      type metadata accessor for INIntentResponseCode(0);
      sub_1DD0DEDBC();
      result = 0;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      sub_1DD0DEC1C();
      MEMORY[0x1E12A6780](0xD000000000000012, 0x80000001DD11BF90);
      type metadata accessor for SiriKitHandleIntentFlow.State(0, *(a1 + 16), *(a1 + 24), v3);
      swift_getWitnessTable();
      sub_1DD0DF08C();
LABEL_6:
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_1DCD799B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a5;
  v13 = (*(a7 + 32) + **(a7 + 32));
  v11 = swift_task_alloc();
  v7[5] = v11;
  *v11 = v7;
  v11[1] = sub_1DCCA96C8;

  return v13(a1, v7 + 2, a6, a7);
}

uint64_t sub_1DCD79B2C()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_13_17(v5);

  return sub_1DCD740DC(v7, v1, v2, v3);
}

uint64_t sub_1DCD79BE0()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_121();

  return sub_1DCC100AC();
}

uint64_t sub_1DCD79C70()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_13_17(v2);

  return sub_1DCD74194(v4, v0);
}

uint64_t sub_1DCD79CF8(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1DCB79C24(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  sub_1DCB74F28(v6, v7, v8);
  return a1;
}

uint64_t sub_1DCD79D50(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  sub_1DCB74F28(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for ParseCodingErrors(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
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

uint64_t dispatch thunk of HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_1DCD7A558(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_1DCD7A6B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 25))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 5)
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

uint64_t sub_1DCD7A6F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_1DCD7A73C(uint64_t a1)
{
  if (*(a1 + 24) <= 4u)
  {
    return *(a1 + 24);
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1DCD7A754(uint64_t result, unsigned int a2)
{
  v2 = a2 - 5;
  if (a2 >= 5)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 5;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_1DCD7A770(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCD7A7AC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCD7A800()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCD77648(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCD7A890()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCD77A2C(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCD7A9A0()
{
  OUTLINED_FUNCTION_41();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v6 = (v0 + ((*(*(v3 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_11_0(v10);
  *v11 = v12;
  v11[1] = sub_1DCB4AE1C;

  return sub_1DCD799B0(v2, v0 + v5, v7, v8, v9, v3, v4);
}

uint64_t sub_1DCD7AAC4()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCD795FC(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCD7AB54()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCD79478(v3, v4, v5, v6, v7);
}

void sub_1DCD7ABF0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA54F8, &qword_1DD0F2098);
  OUTLINED_FUNCTION_20_0(v0);
  v1 = OUTLINED_FUNCTION_79_1();

  sub_1DCD76648(v1);
}

uint64_t sub_1DCD7ACA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA5508, &unk_1DD0F76F0);
  OUTLINED_FUNCTION_20_0(v0);
  v1 = OUTLINED_FUNCTION_79_1();

  return sub_1DCD753FC(v1);
}

uint64_t objectdestroy_132Tm(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_112();
  (*(v3 + 8))(v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCD7ADA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  OUTLINED_FUNCTION_20_0(v0);
  v1 = OUTLINED_FUNCTION_79_1();
  return sub_1DCD75750(v1);
}

uint64_t sub_1DCD7AE00()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_121();

  return sub_1DCC1044C();
}

id sub_1DCD7AE90(id result, void *a2, void *a3, unsigned __int8 a4)
{
  if (a4 >> 6 == 1)
  {
    sub_1DD0DCF8C();
  }

  if (!(a4 >> 6))
  {

    return sub_1DCB61AE4(result, a2, a3, a4);
  }

  return result;
}

void sub_1DCD7AF34(void *a1, void *a2, void *a3, unsigned __int8 a4)
{
  if (a4 >> 6 == 1)
  {
  }

  else if (!(a4 >> 6))
  {

    sub_1DCB799DC(a1, a2, a3, a4);
  }
}

uint64_t sub_1DCD7AFCC(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = *(a2 + 24);
  a4(*a2, v6, v7, v8);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  return a1;
}

uint64_t *sub_1DCD7B060(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = *(a2 + 24);
  a4(*a2, v8, v9, v10);
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  *a1 = v7;
  a1[1] = v8;
  a1[2] = v9;
  v14 = *(a1 + 24);
  *(a1 + 24) = v10;
  a5(v11, v12, v13, v14);
  return a1;
}

uint64_t *sub_1DCD7B0F8(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *a1;
  v10 = a1[1];
  v9 = a1[2];
  *a1 = *a2;
  a1[2] = v6;
  v11 = *(a1 + 24);
  *(a1 + 24) = v7;
  a4(v8, v10, v9, v11);
  return a1;
}

uint64_t sub_1DCD7B150(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x1D && *(a1 + 25))
    {
      v2 = *a1 + 28;
    }

    else
    {
      v2 = ((*(a1 + 24) >> 1) & 0x1C | (*(a1 + 24) >> 6)) ^ 0x1F;
      if (v2 >= 0x1C)
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

uint64_t sub_1DCD7B19C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1C)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 29;
    if (a3 >= 0x1D)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1D)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_1DCD7B1F8(uint64_t a1)
{
  v1 = *(a1 + 24) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DCD7B224(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 24) & 7 | (a2 << 6);
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 3;
    v2 = -64;
  }

  *(result + 24) = v2;
  return result;
}