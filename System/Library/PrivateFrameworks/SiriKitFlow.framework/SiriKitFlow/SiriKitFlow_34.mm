uint64_t sub_1DCE71AC4(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return PromptForDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:)();
}

uint64_t PromptForDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDBBA0();
}

uint64_t sub_1DCE71BE0(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AD3C;

  return PromptForDisambiguationFlowStrategyAsync.makeFlowCancelledResponse()();
}

uint64_t PromptForDisambiguationFlowStrategyAsync.makeFlowCancelledResponse()()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDCA70();
}

uint64_t sub_1DCE71CFC(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return PromptForDisambiguationFlowStrategyAsync.makeErrorResponse(_:)();
}

uint64_t PromptForDisambiguationFlowStrategyAsync.makeErrorResponse(_:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDC444();
}

uint64_t PromptForDisambiguationFlowStrategyAsync.actionForInputWrapper(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE71E34()
{
  OUTLINED_FUNCTION_42();
  (*(v0[5] + 32))(v0[3], v0[4]);
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t PromptForDisambiguationFlowAsync.exitValue.getter@<X0>(uint64_t a1@<X8>, uint64_t a2@<X3>)
{
  v5 = *v2;
  v6 = type metadata accessor for PromptForDisambiguationFlowAsync.State(0, *(*v2 + 80), *(*v2 + 88), a2);
  OUTLINED_FUNCTION_9();
  v8 = v7;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_4_1();
  v11 = *(v5 + 128);
  OUTLINED_FUNCTION_156(v2 + v11, v35);
  (*(v8 + 16))(v3, v2 + v11, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 7:
      v27 = OUTLINED_FUNCTION_80_8();
      type metadata accessor for PromptResult(v27, v28, v29, v30);
      return swift_storeEnumTagMultiPayload();
    case 6:
      v22 = *(v3 + 8);
      *a1 = *v3;
      *(a1 + 8) = v22;
      v23 = OUTLINED_FUNCTION_80_8();
      type metadata accessor for PromptResult(v23, v24, v25, v26);
      OUTLINED_FUNCTION_118_2();
      return swift_storeEnumTagMultiPayload();
    case 5:
      v16 = OUTLINED_FUNCTION_80_8();
      type metadata accessor for PromptResult(v16, v17, v18, v19);
      OUTLINED_FUNCTION_2();
      return (*(v20 + 32))(a1, v3);
    default:
      *a1 = sub_1DCE73EF4(EnumCaseMultiPayload, v13, v14, v15);
      *(a1 + 8) = 0;
      v31 = OUTLINED_FUNCTION_80_8();
      type metadata accessor for PromptResult(v31, v32, v33, v34);
      OUTLINED_FUNCTION_118_2();
      swift_storeEnumTagMultiPayload();
      return (*(v8 + 8))(v3, v6);
  }
}

uint64_t sub_1DCE720A8()
{
  OUTLINED_FUNCTION_58_1();
  v1 = swift_allocObject();
  v2 = OUTLINED_FUNCTION_19();
  sub_1DCE720F4(v2, v3, v0);
  return v1;
}

uint64_t sub_1DCE720F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_128_1();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_128_1();
  v8 = swift_getAssociatedTypeWitness();
  type metadata accessor for PromptForDisambiguationFlowAsync(0, AssociatedTypeWitness, v8, v9);
  v11 = type metadata accessor for AnyPromptForDisambiguationFlowStrategy(0, AssociatedTypeWitness, v8, v10);
  swift_unknownObjectRetain();
  v12 = sub_1DCE72250();
  sub_1DCB17D04(a3, v16);
  WitnessTable = swift_getWitnessTable();
  v14 = PromptForDisambiguationFlowAsync.__allocating_init<A>(items:strategy:outputPublisher:)(a1, v12, v16, v11, WitnessTable);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  *(v4 + 16) = v14;
  return v4;
}

uint64_t sub_1DCE72250()
{
  OUTLINED_FUNCTION_58_1();
  OUTLINED_FUNCTION_56();
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_19();
  sub_1DCE7B2CC(v1);
  return v0;
}

uint64_t PromptForDisambiguationFlow.__allocating_init(items:strategy:outputPublisher:)()
{
  OUTLINED_FUNCTION_58_1();
  sub_1DCB17D04(v1, &v5);
  v2 = type metadata accessor for OutputPublisherAsyncAdapter();
  OUTLINED_FUNCTION_1_1();
  v3 = swift_allocObject();
  sub_1DCAFF9E8(&v5, v3 + 16);
  v6 = v2;
  v7 = &protocol witness table for OutputPublisherAsyncAdapter;
  *&v5 = v3;
  OUTLINED_FUNCTION_19();
  sub_1DCE720A8();
  return OUTLINED_FUNCTION_122_1(v0);
}

void PromptForDisambiguationFlowAsync.on(input:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DC0, &qword_1DD0E21B0);
  OUTLINED_FUNCTION_20_0(v4);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  v94 = &v87 - v7;
  v8 = OUTLINED_FUNCTION_12();
  type metadata accessor for Parse(v8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v87 - v13;
  OUTLINED_FUNCTION_107_4();
  OUTLINED_FUNCTION_107_4();
  v16 = *(v15 + 88);
  v95 = v17;
  v19 = type metadata accessor for PromptForDisambiguationFlowAsync.State(0, v17, v16, v18);
  OUTLINED_FUNCTION_9();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_10_2();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v87 - v29;
  OUTLINED_FUNCTION_107_4();
  v32 = *(v31 + 128);
  OUTLINED_FUNCTION_156(v0 + v32, v98 + 1);
  (*(v21 + 16))(v30, v0 + v32, v19);
  OUTLINED_FUNCTION_21_3();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v47 = OUTLINED_FUNCTION_21_3();
    v48(v47);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v49 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v49, qword_1EDE57E00);
    v50 = sub_1DD0DD8EC();
    v51 = sub_1DD0DE6DC();
    if (!OUTLINED_FUNCTION_22(v51))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v33 = *(v30 + 1);
  v93 = *v30;
  v34 = *(v30 + 2);
  v88 = v33;
  v89 = v34;
  v90 = v30[24];
  v91 = *(v30 + 4);
  v92 = v30[40];
  type metadata accessor for Input(0);
  OUTLINED_FUNCTION_4_28();
  sub_1DCB24858();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_1_92();
  sub_1DCB286E8(v14, v36);
  if (EnumCaseMultiPayload == 10)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v37 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v37, qword_1EDE57E00);
    v38 = sub_1DD0DD8EC();
    v39 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v39))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_67_0();
      _os_log_impl(v40, v41, v42, v43, v44, 2u);
      OUTLINED_FUNCTION_80();
    }

    v46 = v88;
    v45 = v89;
    *v26 = v93;
    *(v26 + 8) = v46;
    *(v26 + 16) = v45;
    *(v26 + 24) = v90;
    *(v26 + 32) = v91;
    *(v26 + 40) = v92;
    OUTLINED_FUNCTION_19();
LABEL_38:
    swift_storeEnumTagMultiPayload();
    sub_1DCE743E0(v26);
    goto LABEL_39;
  }

  if ((sub_1DCE967E0(v3) & 1) == 0)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v65 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v65, qword_1EDE57E00);
    v66 = sub_1DD0DD8EC();
    v67 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v67))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_67_0();
      _os_log_impl(v68, v69, v70, v71, v72, 2u);
      OUTLINED_FUNCTION_80();
    }

    v75 = type metadata accessor for PaginatedItemContainer(255, v95, v73, v74);
    OUTLINED_FUNCTION_116_4(v75);
    OUTLINED_FUNCTION_56_18();
    OUTLINED_FUNCTION_57_12();
    goto LABEL_38;
  }

  (*(*(v1 + 16) + 32))(v98, v3);
  if (!LOBYTE(v98[0]))
  {

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v76 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v76, qword_1EDE57E00);
    v77 = sub_1DD0DD8EC();
    v78 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v78))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_67_0();
      _os_log_impl(v79, v80, v81, v82, v83, 2u);
      OUTLINED_FUNCTION_80();
    }

    OUTLINED_FUNCTION_19();
    goto LABEL_38;
  }

  if (LOBYTE(v98[0]) == 1)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v58 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v58, qword_1EDE57E00);
    v59 = sub_1DD0DD8EC();
    v60 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v60))
    {
      v61 = OUTLINED_FUNCTION_50_0();
      *v61 = 0;
      _os_log_impl(&dword_1DCAFC000, v59, v60, "PromptForDisambiguationFlow received handle action from strategy. Transitioning to responseReceived state.", v61, 2u);
      OUTLINED_FUNCTION_80();
    }

    sub_1DCB8878C();
    if (v97)
    {
      __swift_project_boxed_opaque_existential_1(v96, v97);
      OUTLINED_FUNCTION_4_28();
      sub_1DCB24858();
      v62 = v94;
      sub_1DCE74A00();
      sub_1DD0DC99C();
      sub_1DCB0E9D8(v62, &qword_1ECCA1DC0, &qword_1DD0E21B0);
      __swift_destroy_boxed_opaque_existential_1Tm(v96);
    }

    else
    {
      sub_1DCB0E9D8(v96, &qword_1ECCA1DA8, &unk_1DD0E2130);
    }

    v86 = type metadata accessor for PaginatedItemContainer(255, v95, v63, v64);
    OUTLINED_FUNCTION_116_4(v86);
    OUTLINED_FUNCTION_56_18();
    OUTLINED_FUNCTION_57_12();
    goto LABEL_38;
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v84 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v84, qword_1EDE57E00);
  v50 = sub_1DD0DD8EC();
  v85 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_22(v85))
  {
LABEL_11:
    v52 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v52);
    OUTLINED_FUNCTION_9_3();
    _os_log_impl(v53, v54, v55, v56, v57, 2u);
    OUTLINED_FUNCTION_62();
  }

LABEL_12:

LABEL_39:
  OUTLINED_FUNCTION_49();
}

uint64_t PromptForDisambiguationFlow.execute()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE72A30()
{
  OUTLINED_FUNCTION_42();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 32) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_31_1(v1);

  return PromptForDisambiguationFlowAsync.execute()();
}

uint64_t PromptForDisambiguationFlowAsync.execute()()
{
  OUTLINED_FUNCTION_42();
  v1[29] = v2;
  v1[30] = v0;
  v3 = *v0;
  v4 = type metadata accessor for Input(0);
  v1[31] = v4;
  OUTLINED_FUNCTION_20_0(v4);
  v1[32] = OUTLINED_FUNCTION_38();
  v5 = *(v3 + 80);
  v1[33] = v5;
  v1[34] = type metadata accessor for PromptForDisambiguationFlowAsync.State(0, v5, *(v3 + 88), v6);
  OUTLINED_FUNCTION_24_0();
  v1[35] = v7;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCE72BD0()
{
  v3 = *(v0 + 296);
  v4 = *(v0 + 272);
  v5 = *(v0 + 280);
  v6 = *(v0 + 240);
  v7 = *(*v6 + 128);
  OUTLINED_FUNCTION_156(v6 + v7, v0 + 208);
  v9 = *(v5 + 16);
  v8 = v5 + 16;
  v9(v3, v6 + v7, v4);
  OUTLINED_FUNCTION_194();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 5u:
    case 6u:
      (*(*(v0 + 280) + 8))(*(v0 + 296), *(v0 + 272));
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v12 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v12, qword_1EDE57E00);
      sub_1DD0DCF8C();
    case 2u:
      v13 = *(v0 + 296);
      type metadata accessor for PaginatedItemContainer(255, *(v0 + 264), v10, v11);
      OUTLINED_FUNCTION_80_8();
      v14 = (v13 + *(swift_getTupleTypeMetadata2() + 48));
      v15 = *v14;
      *(v0 + 344) = *v14;
      v16 = v14[1];
      v17 = v14[2];
      v18 = *(v14 + 24);
      v19 = v14[4];
      v20 = *(v14 + 40);
      OUTLINED_FUNCTION_59_15();
      OUTLINED_FUNCTION_194();
      sub_1DCE8A338();
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v21 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v21, qword_1EDE57E00);
      v22 = sub_1DD0DD8EC();
      v23 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v23))
      {
        v24 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v24);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v25, v26, v27, v28, v29, 2u);
        OUTLINED_FUNCTION_62();
      }

      *(v0 + 112) = v15;
      *(v0 + 120) = v16;
      *(v0 + 128) = v17;
      *(v0 + 136) = v18;
      *(v0 + 144) = v19;
      *(v0 + 152) = v20;
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 352) = v30;
      *v30 = v31;
      v30[1] = sub_1DCE73618;
      OUTLINED_FUNCTION_130_1();
      OUTLINED_FUNCTION_76();

      result = sub_1DCE76ADC();
      break;
    case 3u:
      v63 = *(v0 + 296);
      type metadata accessor for PaginatedItemContainer(255, *(v0 + 264), v10, v11);
      v64 = (v63 + *(swift_getTupleTypeMetadata2() + 48));
      v65 = *v64;
      *(v0 + 392) = *v64;
      OUTLINED_FUNCTION_39_21(v64);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v66 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v66, qword_1EDE57E00);
      v67 = sub_1DD0DD8EC();
      v68 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v68))
      {
        v69 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v69);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v70, v71, v72, v73, v74, 2u);
        OUTLINED_FUNCTION_62();
      }

      *(v0 + 16) = v65;
      *(v0 + 24) = v92;
      *(v0 + 40) = v1;
      *(v0 + 48) = v2;
      *(v0 + 56) = v8;
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 400) = v75;
      *v75 = v76;
      v75[1] = sub_1DCE73888;
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_76();

      result = sub_1DCE77B70();
      break;
    case 4u:
      v78 = *(v0 + 296);
      v79 = *v78;
      *(v0 + 368) = *v78;
      OUTLINED_FUNCTION_39_21(v78);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v80 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v80, qword_1EDE57E00);
      v81 = sub_1DD0DD8EC();
      v82 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v82))
      {
        v83 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v83);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v84, v85, v86, v87, v88, 2u);
        OUTLINED_FUNCTION_62();
      }

      *(v0 + 64) = v79;
      *(v0 + 72) = v92;
      *(v0 + 88) = v1;
      *(v0 + 96) = v2;
      *(v0 + 104) = v8;
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 376) = v89;
      *v89 = v90;
      v89[1] = sub_1DCE73788;
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_76();

      result = sub_1DCE777C8();
      break;
    case 7u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v51 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v51, qword_1EDE57E00);
      v52 = sub_1DD0DD8EC();
      v53 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v53))
      {
        v54 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v54);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v55, v56, v57, v58, v59, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 328) = v60;
      *v60 = v61;
      v60[1] = sub_1DCE73520;
      OUTLINED_FUNCTION_76();

      result = sub_1DCE767C4();
      break;
    default:
      v34 = *(v0 + 296);
      v35 = *v34;
      *(v0 + 304) = *v34;
      OUTLINED_FUNCTION_39_21(v34);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v36 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v36, qword_1EDE57E00);
      v37 = sub_1DD0DD8EC();
      v38 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v38))
      {
        v39 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v39);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v40, v41, v42, v43, v44, 2u);
        OUTLINED_FUNCTION_62();
      }

      *(v0 + 160) = v35;
      *(v0 + 168) = v92;
      *(v0 + 184) = v1;
      *(v0 + 192) = v2;
      *(v0 + 200) = v8;
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 312) = v45;
      *v45 = v46;
      v45[1] = sub_1DCE733BC;
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_76();

      result = sub_1DCE75CA0(v47, v48, v49, v50);
      break;
  }

  return result;
}

uint64_t sub_1DCE733BC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 320) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE734BC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_97_7();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCE73520()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 336) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE73618()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 360) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE73718()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_4_87();
  sub_1DCB286E8(v0, v1);
  OUTLINED_FUNCTION_97_7();

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCE73788()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 384) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE73888()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 408) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE73988()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_4_87();
  sub_1DCB286E8(v0, v1);
  OUTLINED_FUNCTION_97_7();

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCE739F8()
{
  OUTLINED_FUNCTION_39();

  v2 = *(v1 + 320);
  OUTLINED_FUNCTION_19_37();
  v3 = v2;
  sub_1DCE743E0(v0);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_97_7();

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCE73A94()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 336);
  OUTLINED_FUNCTION_19_37();
  v3 = v2;
  sub_1DCE743E0(v0);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_97_7();

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCE73B28()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_87();
  sub_1DCB286E8(v2, v3);

  v4 = *(v1 + 360);
  OUTLINED_FUNCTION_19_37();
  v5 = v4;
  sub_1DCE743E0(v0);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_97_7();

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCE73BD4()
{
  OUTLINED_FUNCTION_39();

  v2 = *(v1 + 384);
  OUTLINED_FUNCTION_19_37();
  v3 = v2;
  sub_1DCE743E0(v0);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_97_7();

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCE73C70()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 296);

  OUTLINED_FUNCTION_4_87();
  sub_1DCB286E8(v2, v3);
  v4 = *(v1 + 408);
  OUTLINED_FUNCTION_19_37();
  v5 = v4;
  sub_1DCE743E0(v0);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_97_7();

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t PromptForDisambiguationFlow.__deallocating_deinit()
{
  PromptForDisambiguationFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCE73E34(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return PromptForDisambiguationFlow.execute()(a1);
}

uint64_t sub_1DCE73EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = type metadata accessor for PromptForDisambiguationFlowAsync.State(0, *(*v4 + 80), *(*v4 + 88), a4);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v17 - v9;
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1DD0DEC1C();
  v20 = v18;
  v21 = v19;
  MEMORY[0x1E12A6780](0xD000000000000019, 0x80000001DD1131D0);
  v11 = *(*v4 + 128);
  swift_beginAccess();
  (*(v7 + 16))(v10, v5 + v11, v6);
  swift_getWitnessTable();
  sub_1DD0DF08C();
  (*(v7 + 8))(v10, v6);
  v12 = v20;
  v13 = v21;
  type metadata accessor for CommandFailure();
  swift_allocObject();
  v14 = CommandFailure.init(errorCode:reason:)(-1, v12, v13);
  sub_1DCE8A390(qword_1EDE49B80, type metadata accessor for CommandFailure, &protocol conformance descriptor for CommandFailure);
  result = swift_allocError();
  *v16 = v14;
  return result;
}

void sub_1DCE7411C()
{
  OUTLINED_FUNCTION_50();
  v2 = v0;
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_2();
  v6 = type metadata accessor for PromptForDisambiguationFlowAsync.State(0, v4, *(v3 + 88), v5);
  OUTLINED_FUNCTION_9();
  v8 = v7;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_4_1();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v11 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v11, qword_1EDE57E00);
  swift_retain_n();
  v31 = sub_1DD0DD8EC();
  v12 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v31, v12))
  {
    v13 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v13 = 136315394;
    v14 = *(v0 + 13);
    v15 = *(v2 + 14);
    v16 = *(v2 + 15);
    v17 = *(v2 + 16);

    v18 = MEMORY[0x1E12A66E0](v14, v15, v16, v17);
    v20 = v19;

    v21 = sub_1DCB10E9C(v18, v20, &v33);

    *(v13 + 4) = v21;
    *(v13 + 12) = 2080;
    v22 = *(*v2 + 128);
    OUTLINED_FUNCTION_156(&v2[v22], &v32);
    (*(v8 + 16))(v1, &v2[v22], v6);

    v23 = sub_1DCE79F18(v6);
    v25 = v24;

    v26 = OUTLINED_FUNCTION_19();
    v27(v26);
    v28 = sub_1DCB10E9C(v23, v25, &v33);

    *(v13 + 14) = v28;
    _os_log_impl(&dword_1DCAFC000, v31, v12, "PromptForDisambiguationFlow [%s] transitioned to state %s", v13, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_92_0();

    OUTLINED_FUNCTION_49();
  }

  else
  {

    OUTLINED_FUNCTION_49();
  }
}

uint64_t sub_1DCE743E0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  v6 = type metadata accessor for PromptForDisambiguationFlowAsync.State(0, *(v3 + 80), *(v3 + 88), v5);
  v7 = *(v6 - 8);
  (*(v7 + 24))(v1 + v4, a1, v6);
  swift_endAccess();
  sub_1DCE7411C();
  return (*(v7 + 8))(a1, v6);
}

void PromptForDisambiguationFlowAsync.init<A>(items:strategy:outputPublisher:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v34 = v6;
  v35 = v7;
  v8 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_16();
  v15 = v14 - v13;
  sub_1DD0DB03C();
  sub_1DD0DAFFC();
  (*(v10 + 8))(v15, v8);
  *(v1 + 104) = sub_1DCB598EC(8);
  *(v1 + 112) = v16;
  *(v1 + 120) = v17;
  *(v1 + 128) = v18;
  (*(v3 + 24))(&v38, v5, v3);
  v36 = v38;
  v37 = v39;
  OUTLINED_FUNCTION_107_4();
  PaginatedItemContainer.init(items:paginationStyle:)(v34, &v36, v40);
  v19 = v40[24];
  v20 = v41;
  v21 = v42;
  v22 = *&v40[8];
  v23 = v1 + *(*v1 + 128);
  *v23 = *v40;
  *(v23 + 8) = v22;
  *(v23 + 24) = v19;
  *(v23 + 32) = v20;
  *(v23 + 40) = v21;
  OUTLINED_FUNCTION_107_4();
  OUTLINED_FUNCTION_128_1();
  type metadata accessor for PromptForDisambiguationFlowAsync.State(v24, v25, v26, v27);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_128_1();
  type metadata accessor for AnyPromptForDisambiguationFlowStrategy(v28, v29, v30, v31);
  swift_unknownObjectRetain();
  *(v1 + 16) = sub_1DCE74788();
  sub_1DCB17D04(v35, v1 + 24);
  (*(v3 + 88))(v5, v3);
  sub_1DCE747CC(v32, v40);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  v33 = *&v40[16];
  *(v1 + 64) = *v40;
  *(v1 + 80) = v33;
  *(v1 + 96) = v41;
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCE74788()
{
  OUTLINED_FUNCTION_58_1();
  OUTLINED_FUNCTION_56();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_19();
  sub_1DCE7A4B4();
  return v0;
}

double sub_1DCE747CC@<D0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v11 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v11, qword_1EDE57E00);
    v12 = sub_1DD0DD8EC();
    v13 = sub_1DD0DE6EC();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_15;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "PromptForDisambiguationFlow PervasiveEntityResolution use case is undefined";
    goto LABEL_14;
  }

  v18 = &type metadata for FeatureFlagDefinitions.Core;
  v4 = sub_1DCBF3744();
  v19 = v4;
  LOBYTE(v17[0]) = 1;

  v5 = sub_1DD0DB2AC();
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  if ((v5 & 1) == 0)
  {
    v18 = &type metadata for FeatureFlagDefinitions.Core;
    v19 = v4;
    LOBYTE(v17[0]) = 2;
    v6 = sub_1DD0DB2AC();
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    if ((v6 & 1) == 0)
    {

      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v16 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v16, qword_1EDE57E00);
      v12 = sub_1DD0DD8EC();
      v13 = sub_1DD0DE6DC();
      if (!os_log_type_enabled(v12, v13))
      {
        goto LABEL_15;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "PromptForDisambiguationFlow PervasiveEntityResolution data collection is not enabled";
LABEL_14:
      _os_log_impl(&dword_1DCAFC000, v12, v13, v15, v14, 2u);
      MEMORY[0x1E12A8390](v14, -1, -1);
LABEL_15:

      goto LABEL_16;
    }
  }

  v7 = sub_1DD0DC97C();
  v8 = sub_1DD0DC96C();
  if (v8)
  {
    v10 = MEMORY[0x1E69CE618];
    *(a3 + 24) = v7;
    *(a3 + 32) = v10;
    *a3 = v8;
    return result;
  }

LABEL_16:
  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

void sub_1DCE74A00()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v222 = v2;
  sub_1DD0DC83C();
  OUTLINED_FUNCTION_9();
  v216 = v4;
  v217 = v3;
  MEMORY[0x1EEE9AC00](v3, v5);
  OUTLINED_FUNCTION_44_0();
  v214 = v6;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_71_0();
  v215 = v9;
  OUTLINED_FUNCTION_12();
  v206 = sub_1DD0DD68C();
  OUTLINED_FUNCTION_9();
  v203 = v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_16();
  v220 = v14 - v13;
  OUTLINED_FUNCTION_12();
  v210 = sub_1DD0DB41C();
  OUTLINED_FUNCTION_9();
  v219 = v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_16();
  v218 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA88F0, &unk_1DD0FDDE0);
  OUTLINED_FUNCTION_20_0(v20);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_6_36(v200 - v23);
  v209 = sub_1DD0DB66C();
  OUTLINED_FUNCTION_9();
  v208 = v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  OUTLINED_FUNCTION_16();
  v207 = v28 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA29B8, &qword_1DD0E96C0);
  OUTLINED_FUNCTION_20_0(v29);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v30, v31);
  v212 = v200 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2FD8, &qword_1DD0FDDF0);
  v34 = OUTLINED_FUNCTION_20_0(v33);
  MEMORY[0x1EEE9AC00](v34, v35);
  OUTLINED_FUNCTION_44_0();
  v213 = v36;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v37, v38);
  OUTLINED_FUNCTION_71_0();
  v221 = v39;
  v40 = OUTLINED_FUNCTION_12();
  v204 = type metadata accessor for USOParse(v40);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v41, v42);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v43, v44);
  v211 = v200 - v45;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = v200 - v48;
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v50, v51);
  OUTLINED_FUNCTION_16();
  v54 = v53 - v52;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA88F8, &unk_1DD0FDDF8);
  v56 = OUTLINED_FUNCTION_20_0(v55);
  MEMORY[0x1EEE9AC00](v56, v57);
  OUTLINED_FUNCTION_10_2();
  v60 = (v58 - v59);
  MEMORY[0x1EEE9AC00](v61, v62);
  v64 = v200 - v63;
  v65 = sub_1DD0DE01C();
  v66 = OUTLINED_FUNCTION_20_0(v65);
  MEMORY[0x1EEE9AC00](v66, v67);
  OUTLINED_FUNCTION_16();
  sub_1DD0DAAFC();
  swift_allocObject();
  sub_1DD0DAAEC();
  sub_1DCE8A390(&qword_1EDE46640, type metadata accessor for Parse, &protocol conformance descriptor for Parse);
  v223 = v1;
  sub_1DD0DAADC();
  v201 = v49;
  v68 = v221;
  v69 = v60;
  v202 = v64;

  sub_1DD0DE00C();
  OUTLINED_FUNCTION_90_0();
  v70 = sub_1DD0DDFDC();
  if (!v71)
  {
    if (qword_1EDE4F900 != -1)
    {
LABEL_68:
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v96 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v96, qword_1EDE57E00);
    v97 = sub_1DD0DD8EC();
    v98 = sub_1DD0DE6EC();
    v99 = OUTLINED_FUNCTION_22(v98);
    v81 = v222;
    if (v99)
    {
      v100 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v100);
      OUTLINED_FUNCTION_9_3();
      _os_log_impl(v101, v102, v103, v104, v105, 2u);
      OUTLINED_FUNCTION_62();
    }

    v106 = OUTLINED_FUNCTION_90_0();
    sub_1DCB21A14(v106, v107);

    OUTLINED_FUNCTION_1_92();
    sub_1DCB286E8(v223, v93);
    goto LABEL_8;
  }

  v72 = v70;
  v73 = v71;
  v74 = OUTLINED_FUNCTION_90_0();
  sub_1DCB21A14(v74, v75);
  OUTLINED_FUNCTION_91_6();
  v76 = v217;
  __swift_storeEnumTagSinglePayload(v60, 1, 1, v217);
  OUTLINED_FUNCTION_4_28();
  v77 = v223;
  v78 = v54;
  sub_1DCB24858();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v200[1] = v73;
  v200[0] = v72;
  switch(EnumCaseMultiPayload)
  {
    case 0:
    case 3:
      OUTLINED_FUNCTION_1_92();
      sub_1DCB286E8(v54, v80);
      v81 = v222;
      v82 = v60;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v83 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v83, qword_1EDE57E00);
      v84 = sub_1DD0DD8EC();
      v85 = sub_1DD0DE6DC();
      v86 = OUTLINED_FUNCTION_22(v85);
      v87 = v214;
      if (v86)
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_76_12();
        _os_log_impl(v88, v89, v90, v91, v92, 2u);
        OUTLINED_FUNCTION_80();
      }

      goto LABEL_25;
    case 2:
      v112 = v77;
      v60 = *v54;
      v113 = *(v54 + 8);
      v114 = *(v54 + 16);
      v82 = v69;
      if (v114)
      {
        sub_1DCB90D40();
        v81 = v222;
        if (*(&v226 + 1))
        {
          if (OUTLINED_FUNCTION_88_9(v115, v116, v117, MEMORY[0x1E69E6530]))
          {
            OUTLINED_FUNCTION_91_6();
            sub_1DCB0E9D8(v60, v118, v119);

            *v60 = v224[0];
LABEL_55:
            v183 = OUTLINED_FUNCTION_111_2();
            v184(v183);
            OUTLINED_FUNCTION_134_1();
            v87 = v214;
            v130 = v215;
            goto LABEL_63;
          }

          goto LABEL_36;
        }
      }

      else
      {
        v225 = 0u;
        v226 = 0u;
        v81 = v222;
      }

      sub_1DCB0E9D8(&v225, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      if (!v114)
      {
        v225 = 0u;
        v226 = 0u;
        goto LABEL_51;
      }

LABEL_36:
      sub_1DCB90D40();
      if (*(&v226 + 1))
      {
        if (OUTLINED_FUNCTION_88_9(v145, v146, v147, MEMORY[0x1E69E6158]))
        {
          goto LABEL_54;
        }

        goto LABEL_52;
      }

LABEL_51:
      sub_1DCB0E9D8(&v225, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      if (!v114)
      {
        v225 = 0u;
        v226 = 0u;
        goto LABEL_57;
      }

LABEL_52:
      sub_1DCB90D40();
      if (!*(&v226 + 1))
      {
LABEL_57:
        sub_1DCB0E9D8(&v225, &dword_1ECCA3CE0, &unk_1DD0E4F80);
        goto LABEL_58;
      }

      if (OUTLINED_FUNCTION_88_9(v177, v178, v179, MEMORY[0x1E69E6158]))
      {
LABEL_54:
        OUTLINED_FUNCTION_91_6();
        sub_1DCB0E9D8(v60, v180, v181);

        v182 = v224[1];
        *v60 = v224[0];
        v60[1] = v182;
        goto LABEL_55;
      }

LABEL_58:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v185 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v185, qword_1EDE57E00);

      v186 = sub_1DD0DD8EC();
      v187 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v186, v187))
      {
        v188 = OUTLINED_FUNCTION_151();
        v189 = OUTLINED_FUNCTION_83();
        v224[0] = v189;
        *v188 = 136315138;
        *&v225 = v60;
        *(&v225 + 1) = v113;
        *&v226 = v114;
        v190 = sub_1DD0DE02C();
        v192 = sub_1DCB10E9C(v190, v191, v224);

        *(v188 + 4) = v192;
        OUTLINED_FUNCTION_67_0();
        _os_log_impl(v193, v194, v195, v196, v197, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v189);
        v76 = v217;
        OUTLINED_FUNCTION_80();
        v77 = v223;
        OUTLINED_FUNCTION_80();

        v130 = v215;
        v113 = v216;
        v87 = v214;
        OUTLINED_FUNCTION_91_6();
        goto LABEL_64;
      }

      v130 = v215;
      v113 = v216;
      v87 = v214;
      OUTLINED_FUNCTION_91_6();
LABEL_63:
      v77 = v112;
LABEL_64:
      sub_1DCB8878C();
      if (__swift_getEnumTagSinglePayload(v82, 1, v76) != 1)
      {
        (*(v113 + 32))(v130, v82, v76);
        (*(v113 + 16))(v87, v130, v76);
        sub_1DD0DC84C();
        OUTLINED_FUNCTION_1_92();
        sub_1DCB286E8(v77, v199);
        (*(v113 + 8))(v130, v76);
        sub_1DCB0E9D8(v60, qword_1ECCA88F8, &unk_1DD0FDDF8);
        v94 = 0;
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_1_92();
      sub_1DCB286E8(v77, v198);
      sub_1DCB0E9D8(v60, qword_1ECCA88F8, &unk_1DD0FDDF8);
      sub_1DCB0E9D8(v82, qword_1ECCA88F8, &unk_1DD0FDDF8);
LABEL_8:
      v94 = 1;
LABEL_9:
      v95 = sub_1DD0DC85C();
      __swift_storeEnumTagSinglePayload(v81, v94, 1, v95);
      OUTLINED_FUNCTION_49();
      return;
    case 6:
      sub_1DCE8A338();
      v108 = sub_1DD0DB46C();
      v109 = v212;
      sub_1DCC621EC(v108);

      v110 = sub_1DD0DB5BC();
      v82 = v60;
      if (__swift_getEnumTagSinglePayload(v109, 1, v110) == 1)
      {
        sub_1DCB0E9D8(v109, &qword_1ECCA29B8, &qword_1DD0E96C0);
        v111 = 1;
      }

      else
      {
        v131 = v207;
        sub_1DD0DB56C();
        OUTLINED_FUNCTION_112();
        (*(v132 + 8))(v109, v110);
        sub_1DD0DB63C();
        (*(v208 + 8))(v131, v209);
        v111 = 0;
      }

      v81 = v222;
      v133 = sub_1DD0DB44C();
      __swift_storeEnumTagSinglePayload(v68, v111, 1, v133);
      v134 = v213;
      sub_1DCB8878C();
      if (__swift_getEnumTagSinglePayload(v134, 1, v133) == 1)
      {
        sub_1DCB0E9D8(v134, &qword_1ECCA2FD8, &qword_1DD0FDDF0);
        goto LABEL_43;
      }

      v135 = sub_1DD0DB43C();
      OUTLINED_FUNCTION_112();
      (*(v136 + 8))(v134, v133);
      v137 = 0;
      v138 = *(v135 + 16);
      v139 = v220;
      v140 = (v219 + 8);
      v141 = v210;
      while (1)
      {
        if (v138 == v137)
        {

          v148 = 1;
          v149 = v205;
          goto LABEL_41;
        }

        if (v137 >= *(v135 + 16))
        {
          break;
        }

        OUTLINED_FUNCTION_75_10();
        v144 = v218;
        (*(v143 + 16))(v218, v135 + v142 + *(v143 + 72) * v137, v141);
        if (sub_1DD0DB40C())
        {

          v149 = v205;
          OUTLINED_FUNCTION_92_7();
          v152(v150, v151);
          v148 = 0;
          v139 = v220;
LABEL_41:
          __swift_storeEnumTagSinglePayload(v149, v148, 1, v141);
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v149, 1, v141);
          v76 = v217;
          v60 = v202;
          v154 = v206;
          if (EnumTagSinglePayload == 1)
          {
            sub_1DCB0E9D8(v149, &qword_1ECCA88F0, &unk_1DD0FDDE0);
            v68 = v221;
LABEL_43:
            v155 = v201;
            v156 = v211;
            if (qword_1EDE4F900 != -1)
            {
              OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
            }

            v157 = sub_1DD0DD8FC();
            OUTLINED_FUNCTION_92(v157, qword_1EDE57E00);
            OUTLINED_FUNCTION_1_35();
            OUTLINED_FUNCTION_21_3();
            sub_1DCB24858();
            v158 = sub_1DD0DD8EC();
            v159 = sub_1DD0DE6EC();
            if (OUTLINED_FUNCTION_22(v159))
            {
              v160 = OUTLINED_FUNCTION_151();
              v161 = OUTLINED_FUNCTION_83();
              *&v225 = v161;
              *v160 = 136315138;
              OUTLINED_FUNCTION_1_35();
              sub_1DCB24858();
              v162 = sub_1DD0DE02C();
              v60 = v163;
              sub_1DCB286E8(v156, type metadata accessor for USOParse);
              v164 = sub_1DCB10E9C(v162, v60, &v225);
              OUTLINED_FUNCTION_91_6();

              *(v160 + 4) = v164;
              v76 = v217;
              OUTLINED_FUNCTION_76_12();
              _os_log_impl(v165, v166, v167, v168, v169, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v161);
              OUTLINED_FUNCTION_92_0();
              OUTLINED_FUNCTION_80();

              sub_1DCB0E9D8(v221, &qword_1ECCA2FD8, &qword_1DD0FDDF0);
              v77 = v223;
              sub_1DCB286E8(v201, type metadata accessor for USOParse);
              v130 = v215;
              v113 = v216;
              v87 = v214;
              goto LABEL_64;
            }

            sub_1DCB286E8(v156, type metadata accessor for USOParse);
            sub_1DCB0E9D8(v68, &qword_1ECCA2FD8, &qword_1DD0FDDF0);
            sub_1DCB286E8(v155, type metadata accessor for USOParse);
            v113 = v216;
          }

          else
          {
            v170 = v139;
            sub_1DD0DB3FC();
            v171 = OUTLINED_FUNCTION_17_1();
            v172(v171);
            v113 = sub_1DD0DD67C();
            v174 = v173;
            (*(v203 + 8))(v170, v154);
            sub_1DCB0E9D8(v221, &qword_1ECCA2FD8, &qword_1DD0FDDF0);
            sub_1DCB286E8(v201, type metadata accessor for USOParse);
            sub_1DCB0E9D8(v60, qword_1ECCA88F8, &unk_1DD0FDDF8);
            *v60 = v113;
            v60[1] = v174;
            v175 = OUTLINED_FUNCTION_111_2();
            v176(v175);
            OUTLINED_FUNCTION_134_1();
          }

          v87 = v214;
          v130 = v215;
          v77 = v223;
          goto LABEL_64;
        }

        ++v137;
        (*v140)(v144, v141);
        v139 = v220;
      }

      __break(1u);
      goto LABEL_68;
    default:
      v81 = v222;
      v82 = v60;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v120 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v120, qword_1EDE57E00);
      v121 = sub_1DD0DD8EC();
      v122 = sub_1DD0DE6EC();
      v123 = OUTLINED_FUNCTION_22(v122);
      v87 = v214;
      if (v123)
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_76_12();
        _os_log_impl(v124, v125, v126, v127, v128, 2u);
        OUTLINED_FUNCTION_80();
      }

      OUTLINED_FUNCTION_1_92();
      sub_1DCB286E8(v78, v129);
LABEL_25:
      v130 = v215;
      v113 = v216;
      goto LABEL_64;
  }
}

void sub_1DCE75C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  OUTLINED_FUNCTION_86();
  Flow.deferToExecuteAsync(_:)();
}

uint64_t sub_1DCE75CA0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 272) = a1;
  *(v5 + 280) = v4;
  *(v5 + 288) = type metadata accessor for PromptForDisambiguationFlowAsync.State(0, *(*v4 + 80), *(*v4 + 88), a4);
  *(v5 + 296) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D98, &unk_1DD0E2110);
  *(v5 + 304) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DA0, &qword_1DD0ED3F0);
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = type metadata accessor for Input(0);
  v7 = swift_task_alloc();
  v8 = *a2;
  *(v5 + 328) = v7;
  *(v5 + 336) = v8;
  *(v5 + 344) = *(a2 + 1);
  *(v5 + 57) = *(a2 + 24);
  *(v5 + 360) = a2[4];
  *(v5 + 58) = *(a2 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1DCE75E2C, 0, 0);
}

uint64_t sub_1DCE75E2C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_125_2();
  OUTLINED_FUNCTION_78_14(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 368) = v2;
  *v2 = v3;
  v2[1] = sub_1DCE75EC8;
  OUTLINED_FUNCTION_62_1();

  return sub_1DCE7CC9C(v4, v5);
}

uint64_t sub_1DCE75EC8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 376) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE75FC0()
{
  OUTLINED_FUNCTION_41();
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  sub_1DCE77DE8(v0 + 112, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 280);
    sub_1DCB0E9D8(*(v0 + 312), &qword_1ECCA1DA0, &qword_1DD0ED3F0);
    __swift_project_boxed_opaque_existential_1((v3 + 24), *(v3 + 48));
    v4 = swift_task_alloc();
    *(v0 + 400) = v4;
    *(v4 + 16) = v0 + 112;
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 408) = v5;
    *v5 = v6;
    v5[1] = sub_1DCE763A8;
    OUTLINED_FUNCTION_48();

    return sub_1DCB63BBC(v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_59_15();
    sub_1DCE8A338();
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v14 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v14, qword_1EDE57E00);
    v15 = sub_1DD0DD8EC();
    v16 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v16))
    {
      v17 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v17);
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v18, v19, v20, v21, v22, 2u);
      OUTLINED_FUNCTION_62();
    }

    v23 = *(v0 + 58);
    v24 = *(v0 + 360);
    v25 = *(v0 + 57);
    v26 = *(v0 + 336);
    v30 = *(v0 + 344);

    *(v0 + 64) = v26;
    *(v0 + 72) = v30;
    *(v0 + 88) = v25;
    *(v0 + 96) = v24;
    *(v0 + 104) = v23;
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 384) = v27;
    *v27 = v28;
    v27[1] = sub_1DCE76220;
    OUTLINED_FUNCTION_130_1();
    OUTLINED_FUNCTION_48();

    return sub_1DCE76ADC();
  }
}

uint64_t sub_1DCE76220()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 392) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE76318()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_87();
  sub_1DCB286E8(v1, v2);
  OUTLINED_FUNCTION_108_5();
  OUTLINED_FUNCTION_122_1((v0 + 112));

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1DCE763A8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 416) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_122_1((v3 + 152));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE764B0()
{
  OUTLINED_FUNCTION_39();
  sub_1DCB8878C();
  if (v0[27])
  {
    v1 = v0[38];
    __swift_project_boxed_opaque_existential_1(v0 + 24, v0[27]);
    sub_1DCB17D04((v0 + 14), (v0 + 29));
    sub_1DCE788F8();
    OUTLINED_FUNCTION_86();
    sub_1DD0DC98C();
    sub_1DCB0E9D8(v1, &qword_1ECCA1D98, &unk_1DD0E2110);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  }

  else
  {
    sub_1DCB0E9D8((v0 + 24), &qword_1ECCA1DA8, &unk_1DD0E2130);
  }

  OUTLINED_FUNCTION_125_2();
  v2 = v0[37];
  v3 = v0[34];
  v5 = *v4;
  *v2 = v0[42];
  *(v2 + 8) = v5;
  *(v2 + 24) = v6;
  *(v2 + 32) = v7;
  *(v2 + 40) = v8;
  OUTLINED_FUNCTION_118_2();
  swift_storeEnumTagMultiPayload();

  sub_1DCE743E0(v2);
  static ExecuteResponse.ongoing(requireInput:)(1, v3);
  OUTLINED_FUNCTION_108_5();
  OUTLINED_FUNCTION_122_1(v0 + 14);

  OUTLINED_FUNCTION_43();

  return v9();
}

uint64_t sub_1DCE76620()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_108_5();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCE766A0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_87();
  sub_1DCB286E8(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  OUTLINED_FUNCTION_108_5();

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCE76734()
{
  OUTLINED_FUNCTION_39();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  OUTLINED_FUNCTION_108_5();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCE767C4()
{
  OUTLINED_FUNCTION_42();
  v1[7] = v2;
  v1[8] = v0;
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_2();
  v4 = *(v3 + 88);
  v1[9] = v4;
  v7 = type metadata accessor for PromptForDisambiguationFlowAsync.State(0, v5, v4, v6);
  v1[10] = v7;
  OUTLINED_FUNCTION_20_0(v7);
  v1[11] = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCE76868()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 64);
  v3 = v1[6];
  v2 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 96) = v4;
  *v4 = v5;
  v4[1] = sub_1DCE76938;
  v6 = *(v0 + 64);

  return sub_1DCB63BBC(v0 + 16, &unk_1DD0FDDA8, v6, v3, v2);
}

uint64_t sub_1DCE76938()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE76A38()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 88);
  type metadata accessor for PromptResult(0, *(v0 + 72), v2, v3);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1DCE743E0(v1);
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1DCE76ADC()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  *(v1 + 144) = v4;
  *(v1 + 152) = v0;
  *(v1 + 136) = v5;
  OUTLINED_FUNCTION_13();
  *(v1 + 160) = *(v6 + 80);
  OUTLINED_FUNCTION_8_2();
  v8 = *(v7 + 88);
  *(v1 + 168) = v8;
  v11 = type metadata accessor for PromptForDisambiguationFlowAsync.State(0, v9, v8, v10);
  *(v1 + 176) = v11;
  OUTLINED_FUNCTION_20_0(v11);
  *(v1 + 184) = OUTLINED_FUNCTION_38();
  *(v1 + 192) = *(v8 - 8);
  *(v1 + 200) = swift_task_alloc();
  *(v1 + 208) = swift_task_alloc();
  *(v1 + 216) = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_99_5();
  *(v1 + 224) = type metadata accessor for DisambiguationResult.DisambiguationResultType(v12, v13, v14, v15);
  OUTLINED_FUNCTION_24_0();
  *(v1 + 232) = v16;
  *(v1 + 240) = OUTLINED_FUNCTION_38();
  *(v1 + 248) = type metadata accessor for DisambiguationResult(0, v8, v17, v18);
  OUTLINED_FUNCTION_24_0();
  *(v1 + 256) = v19;
  v20 = OUTLINED_FUNCTION_38();
  v21 = *v3;
  *(v1 + 264) = v20;
  *(v1 + 272) = v21;
  *(v1 + 280) = *(v3 + 1);
  *(v1 + 57) = *(v3 + 24);
  *(v1 + 296) = v3[4];
  *(v1 + 58) = *(v3 + 40);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

uint64_t sub_1DCE76CD0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_78_14(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 304) = v2;
  *v2 = v3;
  v2[1] = sub_1DCE76D70;
  OUTLINED_FUNCTION_130_1();

  return sub_1DCE7CA34(v4, v5, v6);
}

uint64_t sub_1DCE76D70()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 312) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE76E68()
{
  v67 = v0;
  (*(v0[29] + 16))(v0[30], v0[33], v0[28]);
  OUTLINED_FUNCTION_194();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[30];
  if (EnumCaseMultiPayload == 1)
  {
    v3 = *v2;
    v4 = *(v2 + 8);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v5 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v5, qword_1EDE57E00);
    v6 = sub_1DD0DD8EC();
    v7 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v7))
    {
      v8 = OUTLINED_FUNCTION_151();
      v9 = OUTLINED_FUNCTION_83();
      v60 = v9;
      *v8 = 136315138;
      v10 = sub_1DCE23DF0(v3, v4);
      v12 = sub_1DCB10E9C(v10, v11, &v60);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1DCAFC000, v6, v7, "PromptForDisambiguationFlow received a request to paginate from the user: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_92_0();
    }

    OUTLINED_FUNCTION_124_1();
    v13 = v0[33];
    v15 = v0[31];
    v14 = v0[32];
    v16 = v0[23];
    v17 = v0[20];
    v18 = v0[17];
    v60 = v0[34];
    v61 = *v19;
    v62 = v20;
    v63 = v21;
    v64 = v22;
    v65 = v3;
    v66 = v23;
    v26 = type metadata accessor for PaginatedItemContainer(0, v17, v24, v25);

    sub_1DCE2459C(&v65, v26);
    v27 = v62;
    v28 = v63;
    v29 = v64;
    *v16 = v60;
    *(v16 + 8) = v61;
    *(v16 + 24) = v27;
    *(v16 + 32) = v28;
    *(v16 + 40) = v29;
    swift_storeEnumTagMultiPayload();
    sub_1DCE743E0(v16);
    (*(v14 + 8))(v13, v15);
    static ExecuteResponse.ongoing(requireInput:)(0, v18);
  }

  else
  {
    (*(v0[24] + 32))(v0[27], v2, v0[21]);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v30 = v0[24];
    v31 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v31, qword_1EDE57E00);
    v32 = *(v30 + 16);
    OUTLINED_FUNCTION_92_7();
    v33();
    v34 = sub_1DD0DD8EC();
    v35 = sub_1DD0DE6DC();
    v36 = OUTLINED_FUNCTION_75(v35);
    v37 = v0[26];
    if (v36)
    {
      v39 = v0[24];
      v38 = v0[25];
      v40 = v0[21];
      v41 = OUTLINED_FUNCTION_151();
      v57 = OUTLINED_FUNCTION_83();
      v60 = v57;
      *v41 = 136315138;
      v32(v38, v37, v40);
      v42 = sub_1DD0DE02C();
      v44 = v43;
      v59 = *(v39 + 8);
      v59(v37, v40);
      v45 = sub_1DCB10E9C(v42, v44, &v60);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_1DCAFC000, v34, v35, "PromptForDisambiguationFlow received a chosen item from the user (%s). Returning with answer.", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      OUTLINED_FUNCTION_92_0();
      OUTLINED_FUNCTION_62();
    }

    else
    {

      v46 = OUTLINED_FUNCTION_21_3();
      v59 = v47;
      (v47)(v46);
    }

    v48 = v0[32];
    v58 = v0[33];
    v49 = v0[31];
    v50 = v0[27];
    v51 = v0[23];
    v52 = v0[21];
    v32(v51, v50, v52);
    type metadata accessor for PromptResult(0, v52, v53, v54);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1DCE743E0(v51);
    v59(v50, v52);
    (*(v48 + 8))(v58, v49);
    static ExecuteResponse.complete()();
  }

  OUTLINED_FUNCTION_117_3();

  OUTLINED_FUNCTION_43();

  return v55();
}

uint64_t sub_1DCE77334()
{
  OUTLINED_FUNCTION_41();
  v24 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = v0[39];
  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_151();
    v7 = OUTLINED_FUNCTION_83();
    v23 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1DD0DF18C();
    v10 = sub_1DCB10E9C(v8, v9, &v23);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "PromptForDisambiguationFlow encountered an error while trying to parse user input: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_92_0();
  }

  v11 = v0[39];
  v12 = v0[19];
  v13 = OUTLINED_FUNCTION_85_7();
  v0[40] = v13;
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[41] = v14;
  *v14 = v15;
  v14[1] = sub_1DCE774FC;
  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_48();

  return sub_1DCB63BBC(v16, v17, v18, v19, v20);
}

uint64_t sub_1DCE774FC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 336) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_122_1((v3 + 64));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE77604()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[39];
  v2 = v0[23];
  v3 = v0[21];
  *v2 = v1;
  *(v2 + 8) = 1;
  type metadata accessor for PromptResult(0, v3, v4, v5);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_21_3();
  swift_storeEnumTagMultiPayload();
  v6 = v1;
  sub_1DCE743E0(v2);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_117_3();

  OUTLINED_FUNCTION_43();

  return v7();
}

uint64_t sub_1DCE776F4()
{
  v1 = *(v0 + 312);

  swift_willThrow();

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCE777C8()
{
  OUTLINED_FUNCTION_42();
  v1[19] = v2;
  v1[20] = v0;
  OUTLINED_FUNCTION_13();
  v1[21] = *(v3 + 80);
  OUTLINED_FUNCTION_8_2();
  v7 = type metadata accessor for PromptForDisambiguationFlowAsync.State(0, v5, *(v4 + 88), v6);
  v1[22] = v7;
  OUTLINED_FUNCTION_20_0(v7);
  v8 = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_106_4(v8);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCE77870()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[20];
  v2 = OUTLINED_FUNCTION_85_7();
  v0[24] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 2;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[25] = v3;
  *v3 = v4;
  v3[1] = sub_1DCE77938;
  OUTLINED_FUNCTION_12_10();

  return sub_1DCB63BBC(v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE77938()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 208) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_122_1((v3 + 112));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE77A40()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 184);
  v2 = *(v0 + 152);
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  *(v1 + 25) = *(v0 + 41);
  *v1 = v3;
  v1[1] = v4;
  OUTLINED_FUNCTION_118_2();
  swift_storeEnumTagMultiPayload();
  v5 = OUTLINED_FUNCTION_80_8();
  type metadata accessor for PaginatedItemContainer(v5, v6, v7, v8);
  OUTLINED_FUNCTION_2();
  (*(v9 + 16))(v0 + 64, v0 + 16);
  sub_1DCE743E0(v1);
  static ExecuteResponse.ongoing(requireInput:)(1, v2);

  OUTLINED_FUNCTION_43();

  return v10();
}

uint64_t sub_1DCE77B0C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCE77B70()
{
  OUTLINED_FUNCTION_42();
  v1[19] = v2;
  v1[20] = v0;
  OUTLINED_FUNCTION_13();
  v1[21] = *(v3 + 80);
  OUTLINED_FUNCTION_8_2();
  v7 = type metadata accessor for PromptForDisambiguationFlowAsync.State(0, v5, *(v4 + 88), v6);
  v1[22] = v7;
  OUTLINED_FUNCTION_20_0(v7);
  v8 = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_106_4(v8);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCE77C18()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[20];
  v2 = OUTLINED_FUNCTION_85_7();
  v0[24] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 2;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[25] = v3;
  *v3 = v4;
  v3[1] = sub_1DCE77CE0;
  OUTLINED_FUNCTION_12_10();

  return sub_1DCB63BBC(v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE77CE0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 208) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_122_1((v3 + 112));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE77DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a1;
  v4 = type metadata accessor for Input(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v72 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DB0, &unk_1DD0FDD90);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v70 - v9;
  v11 = type metadata accessor for Parse(0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v71 = &v70 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DB8, &qword_1DD0E2140);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v70 - v20;
  v22 = sub_1DD0DC8EC();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v73 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D98, &unk_1DD0E2110);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v70 - v28;
  v30 = sub_1DD0DC8BC();
  v77 = *(v30 - 8);
  v78 = v30;
  MEMORY[0x1EEE9AC00](v30, v31);
  v76 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v2;
  sub_1DCB8878C();
  if (!v80)
  {
    sub_1DCB0E9D8(&v79, &qword_1ECCA1DA8, &unk_1DD0E2130);
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }

  v74 = a2;
  v33 = v4;
  sub_1DCAFF9E8(&v79, v82);
  v80 = &type metadata for FeatureFlagDefinitions.Core;
  v81 = sub_1DCBF3744();
  LOBYTE(v79) = 1;
  v34 = sub_1DD0DB2AC();
  __swift_destroy_boxed_opaque_existential_1Tm(&v79);
  if ((v34 & 1) == 0)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v43 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v43, qword_1EDE57E00);
    v44 = sub_1DD0DD8EC();
    v45 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1DCAFC000, v44, v45, "PromptForDisambiguationFlow PervasiveEntityResolution is not enabled", v46, 2u);
      MEMORY[0x1E12A8390](v46, -1, -1);
    }

    v47 = v74;
    goto LABEL_22;
  }

  sub_1DCB17D04(v75, &v79);
  sub_1DCE788F8();
  v35 = v78;
  if (__swift_getEnumTagSinglePayload(v29, 1, v78) != 1)
  {
    v75 = v23;
    (*(v77 + 32))(v76, v29, v35);
    __swift_project_boxed_opaque_existential_1(v82, v82[3]);
    sub_1DD0DC9AC();
    if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
    {
      sub_1DCB0E9D8(v21, &qword_1ECCA1DB8, &qword_1DD0E2140);
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v48 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v48, qword_1EDE57E00);
      v49 = sub_1DD0DD8EC();
      v50 = sub_1DD0DE6DC();
      v51 = os_log_type_enabled(v49, v50);
      v40 = v74;
      if (v51)
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_1DCAFC000, v49, v50, "PromptForDisambiguationFlow PervasiveEntityResolution: nothing learned", v52, 2u);
        MEMORY[0x1E12A8390](v52, -1, -1);
      }

      (*(v77 + 8))(v76, v78);
      goto LABEL_21;
    }

    v55 = v75;
    v56 = v73;
    (*(v75 + 32))(v73, v21, v22);
    sub_1DCE8A390(&qword_1EDE46638, type metadata accessor for Parse, &protocol conformance descriptor for Parse);
    sub_1DD0DC8DC();
    v57 = v33;
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {
      sub_1DCB0E9D8(v10, &qword_1ECCA1DB0, &unk_1DD0FDD90);
      v58 = v74;
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v59 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v59, qword_1EDE57E00);
      v60 = sub_1DD0DD8EC();
      v61 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_1DCAFC000, v60, v61, "PromptForDisambiguationFlow could not decode parse, starting fresh", v62, 2u);
        MEMORY[0x1E12A8390](v62, -1, -1);
      }
    }

    else
    {
      v63 = v71;
      sub_1DCE8A338();
      sub_1DCB24858();
      v64 = v72;
      v65 = &v72[v57[7]];
      *(v65 + 4) = 0;
      *v65 = 0u;
      *(v65 + 1) = 0u;
      sub_1DCB24858();
      *(v64 + v57[6]) = MEMORY[0x1E69E7CC0];
      sub_1DD0DB03C();
      sub_1DCB286E8(v15, type metadata accessor for Parse);
      *(v64 + v57[8]) = 0;
      (*(*(v70 + 16) + 32))(&v79, v64);
      v58 = v74;
      if (v79 == 1)
      {
        sub_1DCB286E8(v63, type metadata accessor for Parse);
        (*(v55 + 8))(v56, v22);
        (*(v77 + 8))(v76, v78);
        sub_1DCE8A338();
        v47 = v58;
        v53 = 0;
LABEL_38:
        v54 = v57;
        goto LABEL_23;
      }

      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v66 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v66, qword_1EDE57E00);
      v67 = sub_1DD0DD8EC();
      v68 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_1DCAFC000, v67, v68, "PromptForDisambiguationFlow learned selection rejected, starting fresh", v69, 2u);
        MEMORY[0x1E12A8390](v69, -1, -1);
      }

      sub_1DCB286E8(v64, type metadata accessor for Input);
      sub_1DCB286E8(v63, type metadata accessor for Parse);
    }

    (*(v55 + 8))(v56, v22);
    (*(v77 + 8))(v76, v78);
    v47 = v58;
    v53 = 1;
    goto LABEL_38;
  }

  sub_1DCB0E9D8(v29, &qword_1ECCA1D98, &unk_1DD0E2110);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v36 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v36, qword_1EDE57E00);
  v37 = sub_1DD0DD8EC();
  v38 = sub_1DD0DE6DC();
  v39 = os_log_type_enabled(v37, v38);
  v40 = v74;
  if (v39)
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_1DCAFC000, v37, v38, "PromptForDisambiguationFlow Could not extract choices for PervasiveEntityResolution", v41, 2u);
    MEMORY[0x1E12A8390](v41, -1, -1);
  }

LABEL_21:
  v47 = v40;
LABEL_22:
  v53 = 1;
  v54 = v33;
LABEL_23:
  __swift_storeEnumTagSinglePayload(v47, v53, 1, v54);
  return __swift_destroy_boxed_opaque_existential_1Tm(v82);
}

uint64_t sub_1DCE7888C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE788A0()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB17D04(*(v0 + 24), *(v0 + 16));
  OUTLINED_FUNCTION_43();

  return v1();
}

void sub_1DCE788F8()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v4 = v3;
  v5 = sub_1DD0DB78C();
  OUTLINED_FUNCTION_9();
  v242 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_6_36(v13);
  v251 = sub_1DD0DD68C();
  OUTLINED_FUNCTION_9();
  v214 = v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_71_0();
  v250 = v19;
  OUTLINED_FUNCTION_12();
  v249 = sub_1DD0DB41C();
  OUTLINED_FUNCTION_9();
  v226 = v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_16();
  v248 = v24 - v23;
  OUTLINED_FUNCTION_12();
  v239 = sub_1DD0DB44C();
  OUTLINED_FUNCTION_9();
  v213 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_6_36(v30);
  v238 = sub_1DD0DB66C();
  OUTLINED_FUNCTION_9();
  v212 = v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v34, v35);
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_6_36(v36);
  v237 = sub_1DD0DB5BC();
  OUTLINED_FUNCTION_9();
  v241 = v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v40, v41);
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_6_36(v42);
  v247 = sub_1DD0DB72C();
  OUTLINED_FUNCTION_9();
  v44 = v43;
  MEMORY[0x1EEE9AC00](v45, v46);
  OUTLINED_FUNCTION_16();
  v246 = v48 - v47;
  OUTLINED_FUNCTION_12();
  v217 = sub_1DD0DB6EC();
  OUTLINED_FUNCTION_9();
  v50 = v49;
  MEMORY[0x1EEE9AC00](v51, v52);
  OUTLINED_FUNCTION_10_2();
  v55 = v53 - v54;
  MEMORY[0x1EEE9AC00](v56, v57);
  OUTLINED_FUNCTION_71_0();
  v215 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD0, &qword_1DD0EB860);
  OUTLINED_FUNCTION_20_0(v59);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v60, v61);
  v63 = &v208 - v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v65, v66);
  OUTLINED_FUNCTION_4_1();
  sub_1DCB17D04(v2, v254);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  v67 = type metadata accessor for AceOutput(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_storeEnumTagSinglePayload(v63, 1, 1, v67);
    v69 = &qword_1ECCA1BD0;
    v70 = &qword_1DD0EB860;
    v71 = v63;
    goto LABEL_5;
  }

  __swift_storeEnumTagSinglePayload(v63, 0, 1, v67);
  sub_1DCB8878C();
  sub_1DCB286E8(v63, type metadata accessor for AceOutput);
  v68 = type metadata accessor for NLContextUpdate(0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v68) == 1)
  {
    v69 = &unk_1ECCA3270;
    v70 = &qword_1DD0E0F70;
    v71 = v0;
LABEL_5:
    sub_1DCB0E9D8(v71, v69, v70);
LABEL_6:
    if (qword_1EDE4F900 != -1)
    {
LABEL_111:
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v72 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v72, qword_1EDE57E00);
    sub_1DCB17D04(v2, v254);
    v73 = sub_1DD0DD8EC();
    v74 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_22(v74))
    {
      v75 = OUTLINED_FUNCTION_151();
      v76 = OUTLINED_FUNCTION_83();
      v253 = v76;
      *v75 = 136315138;
      sub_1DCB17D04(v254, &v252);
      v77 = sub_1DD0DE02C();
      v79 = v78;
      __swift_destroy_boxed_opaque_existential_1Tm(v254);
      v80 = sub_1DCB10E9C(v77, v79, &v253);

      *(v75 + 4) = v80;
      OUTLINED_FUNCTION_9_3();
      _os_log_impl(v81, v82, v83, v84, v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v76);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_62();

      v86 = v2;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v2);
      v86 = v254;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v86);
    v87 = 1;
    goto LABEL_11;
  }

  v89 = *(v0 + 216);

  sub_1DCB286E8(v0, type metadata accessor for NLContextUpdate);
  if (!v89)
  {
    goto LABEL_6;
  }

  v210 = v4;
  v90 = 0;
  v91 = *(v89 + 16);
  v4 = v50 + 16;
  v235 = v50 + 8;
  v92 = v217;
  while (v91 != v90)
  {
    if (v90 >= *(v89 + 16))
    {
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    (*(v50 + 16))(v55, v89 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v90, v92);
    if (sub_1DD0DB69C())
    {

      v103 = OUTLINED_FUNCTION_33_1();
      v104(v103);
      v105 = v246;
      sub_1DD0DB67C();
      v92 = sub_1DD0DB46C();
      (*(v44 + 8))(v105, v247);
      v106 = *(v92 + 16);
      v4 = MEMORY[0x1E69E7CC0];
      v209 = v2;
      v240 = v5;
      v211 = v92;
      v243 = v106;
      if (v106)
      {
        OUTLINED_FUNCTION_75_10();
        v222 = v92 + v108;
        v221 = v109 + 16;
        v220 = v212 + 8;
        v219 = v213 + 8;
        v246 = v226 + 16;
        v245 = (v214 + 8);
        v244 = (v226 + 8);
        v218 = v109 + 8;
        v2 = v4;
        v110 = v237;
        v111 = v225;
        while (v107 < *(v92 + 16))
        {
          v112 = *(v241 + 72);
          v236 = v107;
          (*(v241 + 16))(v111, v222 + v112 * v107, v110);
          v113 = v232;
          sub_1DD0DB56C();
          v114 = v233;
          sub_1DD0DB63C();
          OUTLINED_FUNCTION_95_0();
          v115(v113, v238);
          v116 = sub_1DD0DB43C();
          OUTLINED_FUNCTION_95_0();
          v117(v114, v239);
          v118 = *(v116 + 16);
          if (v118)
          {
            v224 = v2;
            v254[0] = v4;
            OUTLINED_FUNCTION_132_1();
            v89 = v254[0];
            OUTLINED_FUNCTION_75_10();
            v223 = v116;
            v120 = v116 + v119;
            v247 = *(v121 + 72);
            v122 = *(v121 + 16);
            do
            {
              v124 = v248;
              v123 = v249;
              v122(v248, v120, v249);
              v125 = v250;
              sub_1DD0DB3FC();
              v126 = sub_1DD0DD67C();
              v128 = v127;
              (*v245)(v125, v251);
              (*v244)(v124, v123);
              v254[0] = v89;
              v130 = *(v89 + 16);
              v129 = *(v89 + 24);
              if (v130 >= v129 >> 1)
              {
                OUTLINED_FUNCTION_72_12(v129);
                sub_1DCB38954();
                v89 = v254[0];
              }

              *(v89 + 16) = v130 + 1;
              v131 = v89 + 16 * v130;
              *(v131 + 32) = v126;
              *(v131 + 40) = v128;
              v120 += v247;
              --v118;
            }

            while (v118);
            OUTLINED_FUNCTION_95_0();
            v111 = v225;
            v110 = v237;
            v132(v225, v237);

            v5 = v240;
            v92 = v211;
            v2 = v224;
            v4 = MEMORY[0x1E69E7CC0];
          }

          else
          {

            OUTLINED_FUNCTION_95_0();
            v133(v111, v110);
            v89 = v4;
          }

          v134 = *(v89 + 16);
          v135 = *(v2 + 16);
          v136 = v135 + v134;
          if (__OFADD__(v135, v134))
          {
            goto LABEL_105;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v136 > *(v2 + 24) >> 1)
          {
            if (v135 <= v136)
            {
              v138 = v135 + v134;
            }

            else
            {
              v138 = v135;
            }

            sub_1DCB34108(isUniquelyReferenced_nonNull_native, v138, 1, v2);
            v2 = v139;
          }

          if (*(v89 + 16))
          {
            if ((*(v2 + 24) >> 1) - *(v2 + 16) < v134)
            {
              goto LABEL_109;
            }

            swift_arrayInitWithCopy();

            if (v134)
            {
              v140 = *(v2 + 16);
              v141 = __OFADD__(v140, v134);
              v142 = v140 + v134;
              if (v141)
              {
                __break(1u);
LABEL_113:
                __break(1u);
                goto LABEL_114;
              }

              *(v2 + 16) = v142;
            }
          }

          else
          {

            if (v134)
            {
              goto LABEL_106;
            }
          }

          v107 = v236 + 1;
          if (v236 + 1 == v243)
          {
            goto LABEL_49;
          }
        }

LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
      }

      else
      {
        v2 = MEMORY[0x1E69E7CC0];
LABEL_49:
        v143 = 0;
        v144 = *(v2 + 16);
        v145 = v2 + 40;
        v146 = MEMORY[0x1E69E7CC0];
LABEL_50:
        v147 = (v145 + 16 * v143);
        while (v144 != v143)
        {
          if (v143 >= *(v2 + 16))
          {
            goto LABEL_102;
          }

          ++v143;
          v4 = *(v147 - 1);
          v148 = *v147;
          v147 += 2;
          v149 = HIBYTE(v148) & 0xF;
          if ((v148 & 0x2000000000000000) == 0)
          {
            v149 = v4 & 0xFFFFFFFFFFFFLL;
          }

          if (v149)
          {

            v150 = swift_isUniquelyReferenced_nonNull_native();
            v254[0] = v146;
            v224 = v2;
            if ((v150 & 1) == 0)
            {
              OUTLINED_FUNCTION_109_2();
              sub_1DCB38954();
              v146 = v254[0];
            }

            v152 = *(v146 + 16);
            v151 = *(v146 + 24);
            if (v152 >= v151 >> 1)
            {
              OUTLINED_FUNCTION_72_12(v151);
              sub_1DCB38954();
              v146 = v254[0];
            }

            *(v146 + 16) = v152 + 1;
            v153 = v146 + 16 * v152;
            *(v153 + 32) = v4;
            *(v153 + 40) = v148;
            v2 = v224;
            goto LABEL_50;
          }
        }

        v246 = v146;

        if (!v243)
        {
          v155 = MEMORY[0x1E69E7CC0];
LABEL_76:

          v2 = 0;
          v249 = *(v155 + 16);
          v250 = (v242 + 16);
          v4 = v214 + 8;
          v247 = v242 + 32;
          v166 = (v242 + 8);
          v248 = MEMORY[0x1E69E7CC0];
LABEL_77:
          v167 = v234;
          while (v249 != v2)
          {
            if (v2 >= *(v155 + 16))
            {
              goto LABEL_103;
            }

            v168 = (*(v242 + 80) + 32) & ~*(v242 + 80);
            v169 = *(v242 + 72);
            v170 = v5;
            (*(v242 + 16))(v167, v155 + v168 + v169 * v2, v5);
            v171 = sub_1DD0DB76C();
            v173 = v172;

            v174 = HIBYTE(v173) & 0xF;
            if ((v173 & 0x2000000000000000) == 0)
            {
              v174 = v171 & 0xFFFFFFFFFFFFLL;
            }

            if (v174)
            {
              v175 = v227;
              sub_1DD0DB77C();
              v176 = sub_1DD0DD67C();
              v178 = v177;
              (*v4)(v175, v251);
              if (v176 == 0x64695F6D657469 && v178 == 0xE700000000000000)
              {

                v167 = v234;
LABEL_90:
                v181 = v170;
                v182 = *v247;
                (*v247)(v216, v167, v181);
                v183 = v248;
                v184 = swift_isUniquelyReferenced_nonNull_native();
                v254[0] = v183;
                if ((v184 & 1) == 0)
                {
                  v185 = OUTLINED_FUNCTION_109_2();
                  sub_1DCE06B88(v185, v186, v187);
                  v183 = v254[0];
                }

                v189 = *(v183 + 16);
                v188 = *(v183 + 24);
                if (v189 >= v188 >> 1)
                {
                  v191 = OUTLINED_FUNCTION_72_12(v188);
                  sub_1DCE06B88(v191, v189 + 1, 1);
                  v183 = v254[0];
                }

                ++v2;
                *(v183 + 16) = v189 + 1;
                v248 = v183;
                v190 = v183 + v168 + v189 * v169;
                v5 = v240;
                v182(v190, v216, v240);
                goto LABEL_77;
              }

              v180 = sub_1DD0DF0AC();

              v167 = v234;
              if (v180)
              {
                goto LABEL_90;
              }
            }

            v5 = v170;
            (*v166)(v167, v170);
            ++v2;
          }

          v192 = v248;
          v193 = *(v248 + 16);
          if (v193)
          {
            v254[0] = MEMORY[0x1E69E7CC0];
            OUTLINED_FUNCTION_132_1();
            v194 = v254[0];
            OUTLINED_FUNCTION_75_10();
            v196 = v192 + v195;
            v251 = *(v197 + 72);
            v198 = *(v197 + 16);
            do
            {
              v198(v231, v196, v240);
              v199 = sub_1DD0DB76C();
              v201 = v200;
              v202 = OUTLINED_FUNCTION_194();
              v203(v202);
              v254[0] = v194;
              v205 = *(v194 + 16);
              v204 = *(v194 + 24);
              if (v205 >= v204 >> 1)
              {
                OUTLINED_FUNCTION_72_12(v204);
                sub_1DCB38954();
                v194 = v254[0];
              }

              *(v194 + 16) = v205 + 1;
              v206 = v194 + 16 * v205;
              *(v206 + 32) = v199;
              *(v206 + 40) = v201;
              v196 += v251;
              --v193;
            }

            while (v193);
          }

          v4 = v210;
          sub_1DD0DC8AC();
          __swift_destroy_boxed_opaque_existential_1Tm(v209);
          OUTLINED_FUNCTION_95_0();
          v207(v215, v217);
          v87 = 0;
          goto LABEL_11;
        }

        v154 = *(v241 + 16);
        v89 = v92 + ((*(v241 + 80) + 32) & ~*(v241 + 80));
        v249 = *(v241 + 72);
        v250 = v154;
        v4 = v212 + 8;
        v2 = v213 + 8;
        v241 += 16;
        v92 = v241 - 8;
        v155 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v156 = v228;
          v157 = v237;
          v250(v228, v89, v237);
          v158 = v229;
          sub_1DD0DB56C();
          v159 = v230;
          sub_1DD0DB63C();
          (*v4)(v158, v238);
          v160 = sub_1DD0DB42C();
          (*v2)(v159, v239);
          (*v92)(v156, v157);
          v161 = *(v160 + 16);
          v162 = *(v155 + 16);
          if (__OFADD__(v162, v161))
          {
            break;
          }

          if (!swift_isUniquelyReferenced_nonNull_native() || v162 + v161 > *(v155 + 24) >> 1)
          {
            sub_1DCE18C68();
            v155 = v163;
          }

          v5 = v240;
          if (*(v160 + 16))
          {
            if ((*(v155 + 24) >> 1) - *(v155 + 16) < v161)
            {
              goto LABEL_110;
            }

            swift_arrayInitWithCopy();

            if (v161)
            {
              v164 = *(v155 + 16);
              v141 = __OFADD__(v164, v161);
              v165 = v164 + v161;
              if (v141)
              {
                goto LABEL_113;
              }

              *(v155 + 16) = v165;
            }
          }

          else
          {

            if (v161)
            {
              goto LABEL_108;
            }
          }

          v89 += v249;
          if (!--v243)
          {
            goto LABEL_76;
          }
        }
      }

      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    ++v90;
    OUTLINED_FUNCTION_95_0();
    v93(v55, v92);
  }

  if (qword_1EDE4F900 != -1)
  {
LABEL_114:
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v94 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v94, qword_1EDE57E00);

  v95 = sub_1DD0DD8EC();
  v96 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v95, v96))
  {
    v97 = OUTLINED_FUNCTION_151();
    v98 = OUTLINED_FUNCTION_83();
    v254[0] = v98;
    *v97 = 136315138;
    v99 = MEMORY[0x1E12A6960](v89, v92);
    v101 = v100;

    v102 = sub_1DCB10E9C(v99, v101, v254);

    *(v97 + 4) = v102;
    _os_log_impl(&dword_1DCAFC000, v95, v96, "PromptForDisambiguationFlow no choice found in SDA: %s", v97, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v98);
    OUTLINED_FUNCTION_92_0();
    OUTLINED_FUNCTION_80();
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  v87 = 1;
  v4 = v210;
LABEL_11:
  v88 = sub_1DD0DC8BC();
  __swift_storeEnumTagSinglePayload(v4, v87, 1, v88);
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCE79C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCE79C6C, 0, 0);
}

uint64_t sub_1DCE79C6C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_92_9();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 88) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_113_2(v1);

  return sub_1DCE7CE94(v3, v0 + 16);
}

uint64_t sub_1DCE79CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCE79D20, 0, 0);
}

uint64_t sub_1DCE79D20()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_92_9();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 88) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_113_2(v1);

  return sub_1DCE7D08C(v3, v0 + 16);
}

uint64_t sub_1DCE79DB0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE79DD0, 0, 0);
}

uint64_t sub_1DCE79DD0()
{
  OUTLINED_FUNCTION_42();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 32) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31_1(v1);

  return sub_1DCE7D170(v3);
}

uint64_t sub_1DCE79E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCE79E80, 0, 0);
}

uint64_t sub_1DCE79E80()
{
  OUTLINED_FUNCTION_42();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[5] = v1;
  *v1 = v2;
  v1[1] = sub_1DCBEA100;
  v3 = v0[4];
  v4 = v0[2];

  return sub_1DCE7D268(v4, v3);
}

unint64_t sub_1DCE79F18(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1, v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x6C6C65636E61632ELL;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      (*(v4 + 8))(v6, a1);
      result = 0x5374706D6F72702ELL;
      break;
    case 2:
      type metadata accessor for Input(255);
      type metadata accessor for PaginatedItemContainer(255, *(a1 + 16), v11, v12);
      swift_getTupleTypeMetadata2();

      sub_1DCB286E8(v6, type metadata accessor for Input);
      result = 0xD000000000000011;
      break;
    case 3:
      type metadata accessor for Input(255);
      type metadata accessor for PaginatedItemContainer(255, *(a1 + 16), v9, v10);
      swift_getTupleTypeMetadata2();

      sub_1DCB286E8(v6, type metadata accessor for Input);
      result = 0x65646E7573696D2ELL;
      break;
    case 4:
      (*(v4 + 8))(v6, a1);
      result = 0x61507974706D652ELL;
      break;
    case 5:
      (*(v4 + 8))(v6, a1);
      result = 0x74656C706D6F632ELL;
      break;
    case 6:
      (*(v4 + 8))(v6, a1);
      result = 0x726F7272652ELL;
      break;
    case 7:
      return result;
    default:
      (*(v4 + 8))(v6, a1);
      result = 0x646574726174732ELL;
      break;
  }

  return result;
}

char *PromptForDisambiguationFlowAsync.deinit()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  sub_1DCB0E9D8((v0 + 64), &qword_1ECCA1DA8, &unk_1DD0E2130);

  v2 = *(*v0 + 128);
  type metadata accessor for PromptForDisambiguationFlowAsync.State(0, *(v1 + 80), *(v1 + 88), v3);
  OUTLINED_FUNCTION_2();
  (*(v4 + 8))(&v0[v2]);
  return v0;
}

uint64_t PromptForDisambiguationFlowAsync.__deallocating_deinit()
{
  PromptForDisambiguationFlowAsync.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCE7A3F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return PromptForDisambiguationFlowAsync.execute()();
}

void *sub_1DCE7A4B4()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_11_8();
  v0[2] = sub_1DCE7A580(v1, v2, v3, v4, v5);
  v0[3] = v6;
  v7 = OUTLINED_FUNCTION_9_62();
  v0[4] = sub_1DCE7A608(v7, v8, v9, v10, v11);
  v0[5] = v12;
  v13 = OUTLINED_FUNCTION_9_62();
  v0[6] = sub_1DCE7A690(v13, v14, v15, v16, v17);
  v0[7] = v18;
  v19 = OUTLINED_FUNCTION_9_62();
  v0[8] = sub_1DCE7A99C(v19, v20, v21, v22, v23);
  v0[9] = v24;
  v25 = OUTLINED_FUNCTION_9_62();
  v0[10] = sub_1DCE7AB84(v25, v26, v27, v28, v29);
  v0[11] = v30;
  v31 = OUTLINED_FUNCTION_9_62();
  v0[12] = sub_1DCE7AD6C(v31, v32, v33, v34, v35);
  v0[13] = v36;
  v37 = OUTLINED_FUNCTION_9_62();
  v0[14] = sub_1DCE7AF54(v37, v38, v39, v40, v41);
  v0[15] = v42;
  v43 = OUTLINED_FUNCTION_9_62();
  v48 = sub_1DCE7B10C(v43, v44, v45, v46, v47);
  v50 = v49;
  swift_unknownObjectRelease();
  v0[16] = v48;
  v0[17] = v50;
  return v0;
}

uint64_t (*sub_1DCE7A580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  swift_unknownObjectRetain();
  return sub_1DCE8A0C8;
}

uint64_t (*sub_1DCE7A608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  swift_unknownObjectRetain();
  return sub_1DCE8A09C;
}

void *sub_1DCE7A690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  swift_unknownObjectRetain();
  return &unk_1DD0FDD80;
}

uint64_t sub_1DCE7A718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a3 + 24);
  v14 = *(a3 + 32);
  *(v8 + 16) = *a3;
  v15 = *(a3 + 40);
  *(v8 + 24) = *(a3 + 8);
  *(v8 + 40) = v13;
  *(v8 + 48) = v14;
  *(v8 + 56) = v15;
  v18 = (*(a8 + 40) + **(a8 + 40));
  v16 = swift_task_alloc();
  *(v8 + 64) = v16;
  *v16 = v8;
  v16[1] = sub_1DCE7A888;

  return v18(a1, a2, v8 + 16, a7, a8);
}

uint64_t sub_1DCE7A888()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

void *sub_1DCE7A99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  swift_unknownObjectRetain();
  return &unk_1DD0FDD70;
}

uint64_t sub_1DCE7AA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  *(v7 + 16) = *a2;
  v13 = *(a2 + 40);
  *(v7 + 24) = *(a2 + 8);
  *(v7 + 40) = v11;
  *(v7 + 48) = v12;
  *(v7 + 56) = v13;
  v16 = (*(a7 + 48) + **(a7 + 48));
  v14 = swift_task_alloc();
  *(v7 + 64) = v14;
  *v14 = v7;
  v14[1] = sub_1DCE7A888;

  return v16(a1, v7 + 16, a6, a7);
}

void *sub_1DCE7AB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  swift_unknownObjectRetain();
  return &unk_1DD0FDD60;
}

uint64_t sub_1DCE7AC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  *(v7 + 16) = *a2;
  v13 = *(a2 + 40);
  *(v7 + 24) = *(a2 + 8);
  *(v7 + 40) = v11;
  *(v7 + 48) = v12;
  *(v7 + 56) = v13;
  v16 = (*(a7 + 56) + **(a7 + 56));
  v14 = swift_task_alloc();
  *(v7 + 64) = v14;
  *v14 = v7;
  v14[1] = sub_1DCE7A888;

  return v16(a1, v7 + 16, a6, a7);
}

void *sub_1DCE7AD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  swift_unknownObjectRetain();
  return &unk_1DD0FDD50;
}

uint64_t sub_1DCE7ADF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  *(v7 + 16) = *a2;
  v13 = *(a2 + 40);
  *(v7 + 24) = *(a2 + 8);
  *(v7 + 40) = v11;
  *(v7 + 48) = v12;
  *(v7 + 56) = v13;
  v16 = (*(a7 + 64) + **(a7 + 64));
  v14 = swift_task_alloc();
  *(v7 + 64) = v14;
  *v14 = v7;
  v14[1] = sub_1DCE7A888;

  return v16(a1, v7 + 16, a6, a7);
}

void *sub_1DCE7AF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  swift_unknownObjectRetain();
  return &unk_1DD0FDD40;
}

uint64_t sub_1DCE7AFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = (*(a6 + 72) + **(a6 + 72));
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = sub_1DCB4AE1C;

  return v12(a1, a5, a6);
}

void *sub_1DCE7B10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  swift_unknownObjectRetain();
  return &unk_1DD0FDD30;
}

uint64_t sub_1DCE7B194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = (*(a7 + 80) + **(a7 + 80));
  v12 = swift_task_alloc();
  *(v7 + 16) = v12;
  *v12 = v7;
  v12[1] = sub_1DCB4AE1C;

  return v14(a1, a2, a6, a7);
}

void *sub_1DCE7B2CC(uint64_t a1)
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_11_8();
  v1[2] = sub_1DCE7B43C(v2, v3, v4, v5, v6);
  v1[3] = v7;
  v8 = OUTLINED_FUNCTION_9_62();
  v1[4] = sub_1DCE7B4C4(v8, v9, v10, v11, v12);
  v1[5] = v13;
  OUTLINED_FUNCTION_1_1();
  v14 = swift_allocObject();
  v15 = OUTLINED_FUNCTION_26_27(v14);
  v1[6] = &unk_1DD0FDCC8;
  v1[7] = v15;
  OUTLINED_FUNCTION_1_1();
  v16 = swift_allocObject();
  v17 = OUTLINED_FUNCTION_26_27(v16);
  v1[8] = &unk_1DD0FDCD8;
  v1[9] = v17;
  OUTLINED_FUNCTION_1_1();
  v18 = swift_allocObject();
  v19 = OUTLINED_FUNCTION_26_27(v18);
  v1[10] = &unk_1DD0FDCE8;
  v1[11] = v19;
  OUTLINED_FUNCTION_1_1();
  v20 = swift_allocObject();
  v21 = OUTLINED_FUNCTION_26_27(v20);
  v1[12] = &unk_1DD0FDCF8;
  v1[13] = v21;
  OUTLINED_FUNCTION_1_1();
  v22 = swift_allocObject();
  v23 = OUTLINED_FUNCTION_26_27(v22);
  v1[14] = &unk_1DD0FDD08;
  v1[15] = v23;
  OUTLINED_FUNCTION_1_1();
  v24 = swift_allocObject();
  v25 = OUTLINED_FUNCTION_26_27(v24);
  v1[16] = &unk_1DD0FDD18;
  v1[17] = v25;
  swift_unknownObjectRetain_n();
  return v1;
}

uint64_t (*sub_1DCE7B43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  swift_unknownObjectRetain();
  return sub_1DCE89CF0;
}

uint64_t (*sub_1DCE7B4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  swift_unknownObjectRetain();
  return sub_1DCE89CC4;
}

uint64_t sub_1DCE7B54C(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 72) = a2;
  *(v8 + 80) = a4;
  *(v8 + 64) = a1;
  v9 = a3[1];
  *(v8 + 16) = *a3;
  *(v8 + 32) = v9;
  *(v8 + 41) = *(a3 + 25);
  return MEMORY[0x1EEE6DFA0](sub_1DCE7B588, 0, 0);
}

uint64_t sub_1DCE7B588()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  v11 = *(v0 + 96);
  v4 = *(v0 + 72);
  *(v3 + 16) = v2;
  *(v3 + 24) = v11;
  *(v3 + 40) = v1;
  *(v3 + 48) = vextq_s8(v4, v4, 8uLL);
  *(v3 + 64) = v0 + 16;
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  type metadata accessor for DisambiguationResult(0, v11, v6, v7);
  OUTLINED_FUNCTION_17();
  *v5 = v8;
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v9);
}

uint64_t sub_1DCE7B684()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCE7B7A0()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCE7B7FC(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[0] = a3;
  v23[1] = a2;
  type metadata accessor for DisambiguationResult(255, a6, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v14 = sub_1DD0DE47C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v23 - v17;
  v19 = a4[1];
  v24 = *a4;
  v25[0] = v19;
  *(v25 + 9) = *(a4 + 25);
  (*(v15 + 16))(v23 - v17, a1, v14);
  v20 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = a5;
  *(v21 + 3) = a6;
  *(v21 + 4) = a7;
  *(v21 + 5) = a8;
  (*(v15 + 32))(&v21[v20], v18, v14);
  (*(a8 + 40))(v23[0], &v24, sub_1DCE89BF4, v21, a7, a8);
}

uint64_t sub_1DCE7B9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DisambiguationResult(255, a4, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v5 = sub_1DD0DE47C();
  return sub_1DD05EBE4(a1, v5);
}

uint64_t sub_1DCE7BA38(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 96) = a6;
  *(v7 + 104) = a7;
  *(v7 + 80) = a4;
  *(v7 + 88) = a5;
  *(v7 + 64) = a1;
  *(v7 + 72) = a3;
  v8 = a2[1];
  *(v7 + 16) = *a2;
  *(v7 + 32) = v8;
  *(v7 + 41) = *(a2 + 25);
  return MEMORY[0x1EEE6DFA0](sub_1DCE7BA70, 0, 0);
}

uint64_t sub_1DCE7BA70()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_115_4();
  OUTLINED_FUNCTION_52_22(v1);
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v2 = v3;
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCE7BB30()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCE7BC4C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCE7BCA8(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v21[-1] - v14;
  v16 = a3[1];
  v20 = *a3;
  v21[0] = v16;
  *(v21 + 9) = *(a3 + 25);
  (*(v12 + 16))(&v21[-1] - v14, a1, v11);
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v17, v15, v11);
  (*(a7 + 48))(&v20, sub_1DCE89B70, v18, a6, a7);
}

uint64_t sub_1DCE7BE34(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 96) = a6;
  *(v7 + 104) = a7;
  *(v7 + 80) = a4;
  *(v7 + 88) = a5;
  *(v7 + 64) = a1;
  *(v7 + 72) = a3;
  v8 = a2[1];
  *(v7 + 16) = *a2;
  *(v7 + 32) = v8;
  *(v7 + 41) = *(a2 + 25);
  return MEMORY[0x1EEE6DFA0](sub_1DCE7BE6C, 0, 0);
}

uint64_t sub_1DCE7BE6C()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_115_4();
  OUTLINED_FUNCTION_52_22(v1);
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v2 = v3;
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCE7BF2C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCE7C048(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v21[-1] - v14;
  v16 = a3[1];
  v20 = *a3;
  v21[0] = v16;
  *(v21 + 9) = *(a3 + 25);
  (*(v12 + 16))(&v21[-1] - v14, a1, v11);
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v17, v15, v11);
  (*(a7 + 56))(&v20, sub_1DCE8A3EC, v18, a6, a7);
}

uint64_t sub_1DCE7C1D4()
{
  sub_1DCB8878C();
  if (v3)
  {
    v1[0] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
    return sub_1DD0DE45C();
  }

  else
  {
    sub_1DCAFF9E8(&v2, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
    return sub_1DD0DE46C();
  }
}

uint64_t sub_1DCE7C274(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 96) = a6;
  *(v7 + 104) = a7;
  *(v7 + 80) = a4;
  *(v7 + 88) = a5;
  *(v7 + 64) = a1;
  *(v7 + 72) = a3;
  v8 = a2[1];
  *(v7 + 16) = *a2;
  *(v7 + 32) = v8;
  *(v7 + 41) = *(a2 + 25);
  return MEMORY[0x1EEE6DFA0](sub_1DCE7C2AC, 0, 0);
}

uint64_t sub_1DCE7C2AC()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_115_4();
  OUTLINED_FUNCTION_52_22(v1);
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v2 = v3;
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCE7C36C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v21[-1] - v14;
  v16 = a3[1];
  v20 = *a3;
  v21[0] = v16;
  *(v21 + 9) = *(a3 + 25);
  (*(v12 + 16))(&v21[-1] - v14, a1, v11);
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v17, v15, v11);
  (*(a7 + 64))(&v20, sub_1DCE8A3EC, v18, a6, a7);
}

uint64_t sub_1DCE7C4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE7C520, 0, 0);
}

uint64_t sub_1DCE7C520()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 48);
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v4 = v5;
  v4[1] = sub_1DCCA8008;
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DCE7C5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  (*(a6 + 72))(sub_1DCE8A3EC, v15, a5, a6);
}

uint64_t sub_1DCE7C764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCE7C790, 0, 0);
}

uint64_t sub_1DCE7C790()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  *(v1 + 16) = *(v0 + 40);
  *(v1 + 32) = v2;
  *(v1 + 48) = vextq_s8(v3, v3, 8uLL);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v4 = v5;
  v4[1] = sub_1DCB61FD4;
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DCE7C86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v19 - v14;
  (*(v12 + 16))(&v19 - v14, a1, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v15, v11);
  (*(a7 + 80))(a3, sub_1DCE8A3EC, v17, a6, a7);
}

uint64_t sub_1DCE7CA34(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;
  v5 = *a3;
  *(v4 + 80) = v3;
  *(v4 + 88) = v5;
  *(v4 + 96) = *(a3 + 1);
  *(v4 + 57) = *(a3 + 24);
  *(v4 + 112) = a3[4];
  *(v4 + 58) = *(a3 + 40);
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE7CA70()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 58);
  v2 = *(v0 + 112);
  v3 = *(v0 + 57);
  v4 = *(*(v0 + 80) + 48);
  *(v0 + 16) = *(v0 + 88);
  *(v0 + 24) = *(v0 + 96);
  *(v0 + 40) = v3;
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  v8 = (v4 + *v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 120) = v5;
  *v5 = v6;
  v5[1] = sub_1DCE7CB88;
  OUTLINED_FUNCTION_130_1();

  return v8();
}

uint64_t sub_1DCE7CB88()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCE7CCC0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_69_4();
  OUTLINED_FUNCTION_11_54();
  v5 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 112) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_113_2(v2);
  OUTLINED_FUNCTION_62_1();

  return v5();
}

uint64_t sub_1DCE7CD80()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCE7CEB8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_69_4();
  OUTLINED_FUNCTION_11_54();
  v5 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 112) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_113_2(v2);
  OUTLINED_FUNCTION_62_1();

  return v5();
}

uint64_t sub_1DCE7CF78()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCE7D0B0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_69_4();
  OUTLINED_FUNCTION_11_54();
  v5 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 112) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_113_2(v2);
  OUTLINED_FUNCTION_62_1();

  return v5();
}

uint64_t sub_1DCE7D170(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE7D184()
{
  OUTLINED_FUNCTION_42();
  v5 = (*(*(v0 + 24) + 112) + **(*(v0 + 24) + 112));
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 32) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31_1(v1);

  return v5(v3);
}

uint64_t sub_1DCE7D268(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE7D280()
{
  OUTLINED_FUNCTION_42();
  v6 = (*(v0[4] + 128) + **(v0[4] + 128));
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[5] = v1;
  *v1 = v2;
  v1[1] = sub_1DCBF9B9C;
  v3 = v0[2];
  v4 = v0[3];

  return v6(v3, v4);
}

uint64_t sub_1DCE7D374(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCE7CA34(a1, a2, a3);
}

uint64_t sub_1DCE7D424(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCE7CC9C(a1, a2);
}

uint64_t sub_1DCE7D4CC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCE7CE94(a1, a2);
}

uint64_t sub_1DCE7D574(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCE7D08C(a1, a2);
}

uint64_t sub_1DCE7D61C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCE7D170(a1);
}

uint64_t sub_1DCE7D6B4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCE7D268(a1, a2);
}

uint64_t sub_1DCE7D7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = swift_getWitnessTable();
  OUTLINED_FUNCTION_33_1();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DCE7D814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DisambiguationResult.DisambiguationResultType(319, *(a1 + 16), *(a1 + 16), a4);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_1DCE7D8A8(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 64) <= 9uLL)
  {
    v5 = 9;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  if ((*(v4 + 80) & 0x1000F8) != 0 || (v5 + 1) > 0x18)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v7 = a2[v5];
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    if (v5 <= 3)
    {
      v9 = v5;
    }

    else
    {
      v9 = 4;
    }

    switch(v9)
    {
      case 1:
        v10 = *a2;
        goto LABEL_19;
      case 2:
        v10 = *a2;
        goto LABEL_19;
      case 3:
        v10 = *a2 | (a2[2] << 16);
        goto LABEL_19;
      case 4:
        v10 = *a2;
LABEL_19:
        v11 = (v10 | (v8 << (8 * v5))) + 2;
        v7 = v10 + 2;
        if (v5 < 4)
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
    *(a1 + 8) = a2[8];
    *(a1 + v5) = 1;
  }

  else
  {
    (*(v4 + 16))(a1);
    *(a1 + v5) = 0;
  }

  return a1;
}

unsigned __int8 *sub_1DCE7DA14(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (v2 <= 9)
  {
    v2 = 9;
  }

  v3 = result[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    switch(v5)
    {
      case 1:
        v6 = *result;
        goto LABEL_12;
      case 2:
        v6 = *result;
        goto LABEL_12;
      case 3:
        v6 = *result | (result[2] << 16);
        goto LABEL_12;
      case 4:
        v6 = *result;
LABEL_12:
        v7 = (v6 | (v4 << (8 * v2))) + 2;
        v3 = v6 + 2;
        if (v2 < 4)
        {
          v3 = v7;
        }

        break;
      default:
        break;
    }
  }

  if (v3 != 1)
  {
    return (*(*(*(a2 + 16) - 8) + 8))();
  }

  return result;
}

uint64_t sub_1DCE7DAFC(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 9uLL)
  {
    v4 = 9;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = a2[v4];
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
        v8 = *a2;
        goto LABEL_13;
      case 2:
        v8 = *a2;
        goto LABEL_13;
      case 3:
        v8 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v8 = *a2;
LABEL_13:
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

  if (v5 == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = a2[8];
    v10 = 1;
  }

  else
  {
    (*(*(*(a3 + 16) - 8) + 16))(a1);
    v10 = 0;
  }

  *(a1 + v4) = v10;
  return a1;
}

unsigned __int8 *sub_1DCE7DC28(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(v5 - 8);
    if (*(v6 + 64) <= 9uLL)
    {
      v7 = 9;
    }

    else
    {
      v7 = *(v6 + 64);
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
      (*(v6 + 8))(a1, v5);
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
      v18 = *a2;
      a1[8] = a2[8];
      *a1 = v18;
      v19 = 1;
    }

    else
    {
      (*(v6 + 16))(a1, a2, v5);
      v19 = 0;
    }

    a1[v7] = v19;
  }

  return a1;
}

uint64_t sub_1DCE7DE14(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 9uLL)
  {
    v4 = 9;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = a2[v4];
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
        v8 = *a2;
        goto LABEL_13;
      case 2:
        v8 = *a2;
        goto LABEL_13;
      case 3:
        v8 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v8 = *a2;
LABEL_13:
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

  if (v5 == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = a2[8];
    v10 = 1;
  }

  else
  {
    (*(*(*(a3 + 16) - 8) + 32))(a1);
    v10 = 0;
  }

  *(a1 + v4) = v10;
  return a1;
}

unsigned __int8 *sub_1DCE7DF40(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(v5 - 8);
    if (*(v6 + 64) <= 9uLL)
    {
      v7 = 9;
    }

    else
    {
      v7 = *(v6 + 64);
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
      (*(v6 + 8))(a1, v5);
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
      a1[8] = a2[8];
      v18 = 1;
    }

    else
    {
      (*(v6 + 32))(a1, a2, v5);
      v18 = 0;
    }

    a1[v7] = v18;
  }

  return a1;
}

uint64_t sub_1DCE7E12C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 9;
  if (*(v3 + 64) > 9uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1DCE7E250(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 9)
  {
    v5 = 9;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
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
          a1[v5] = -a2;
        }

        break;
    }
  }
}

void dispatch thunk of PromptForDisambiguationFlowStrategyAsync.parseDisambiguationResponse(input:paginatedItems:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_24_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_48();

  __asm { BRAA            X5, X16 }
}

uint64_t dispatch thunk of PromptForDisambiguationFlowStrategyAsync.makePromptForDisambiguation(paginatedItems:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v0, v1, v2, v3);
  OUTLINED_FUNCTION_8();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_1(v5);

  return v8(v7);
}

uint64_t dispatch thunk of PromptForDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v0, v1, v2, v3);
  OUTLINED_FUNCTION_8();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_1(v5);

  return v8(v7);
}

uint64_t dispatch thunk of PromptForDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v0, v1, v2, v3);
  OUTLINED_FUNCTION_8();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_1(v5);

  return v8(v7);
}

uint64_t dispatch thunk of PromptForDisambiguationFlowStrategyAsync.makeFlowCancelledResponse()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_24_0();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_0_84(v2);

  return v6(v4);
}

uint64_t dispatch thunk of PromptForDisambiguationFlowStrategyAsync.makeErrorResponse(_:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v0, v1, v2, v3);
  OUTLINED_FUNCTION_8();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_1(v5);

  return v8(v7);
}

uint64_t sub_1DCE7EB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for PromptForDisambiguationFlowAsync.State(319, *(a1 + 80), *(a1 + 88), a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DCE7ECA8(uint64_t a1)
{
  v9 = ")";
  v10 = ")";
  result = type metadata accessor for Input(319);
  if (v3 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v11 = &v8;
    swift_getTupleTypeLayout2();
    v12 = &v7;
    v13 = ")";
    result = type metadata accessor for PromptResult(319, *(a1 + 24), v4, v5);
    if (v6 <= 0x3F)
    {
      v14 = *(result - 8) + 64;
      v15 = &unk_1DD0FDBC0;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

char *sub_1DCE7EDB8(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v241 = *(sub_1DD0DB04C() - 8);
  v249 = *(v241 + 64);
  v218 = sub_1DD0DC76C();
  v235 = *(v218 - 8);
  v217 = v235;
  v3 = *(v235 + 80);
  v216 = sub_1DD0DB1EC();
  v237 = *(v216 - 8);
  v215 = v237;
  v226 = *(v237 + 80) | v3;
  v220 = sub_1DD0DB4BC();
  v233 = *(v220 - 8);
  v248 = v233;
  v223 = *(v233 + 80);
  v219 = sub_1DD0DB3EC();
  v229 = *(v219 - 8);
  v4 = *(v229 + 80);
  v5 = v223 & 0xF8 | v4 | 7u;
  v214 = sub_1DD0DD12C();
  v231 = *(v214 - 8);
  v213 = v231;
  v6 = *(v231 + 80);
  v7 = sub_1DD0DD08C();
  v8 = v6 | *(*(v7 - 8) + 80);
  v9 = (v226 | v8) & 0xF8 | v5;
  v10 = *(v235 + 64);
  v11 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v212 = v10;
  if (v11 <= v10)
  {
    v11 = *(v235 + 64);
  }

  if (v11 <= *(v237 + 64))
  {
    v11 = *(v237 + 64);
  }

  v12 = *(v233 + 64) + v4;
  v13 = v12 & ~v4;
  v234 = v229;
  v14 = *(v229 + 84);
  v15 = *(v229 + 64);
  if (v14)
  {
    v16 = *(v229 + 64);
  }

  else
  {
    v16 = v15 + 1;
  }

  v17 = (v16 + 7 + v13) & 0xFFFFFFFFFFFFFFF8;
  v238 = (v17 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v11 <= v238)
  {
    v11 = (v17 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v18 = v17 + 31;
  if (v11 <= (((((v18 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v11 = (((((v18 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v236 = *(v231 + 64);
  v19 = v5 + 16;
  v20 = v223 & 0xF8 | v4 | 7u;
  v21 = (v5 + 16 + ((v236 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v5;
  v22 = *(v248 + 84);
  v23 = v14 - 1;
  if (!v14)
  {
    v23 = 0;
  }

  v232 = v23;
  if (v23 <= v22)
  {
    v23 = *(v248 + 84);
  }

  if (v23 <= 0x7FFFFFFE)
  {
    v24 = 2147483646;
  }

  else
  {
    v24 = v23;
  }

  v25 = ((v18 + v21) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v11 <= v25)
  {
    v11 = v25;
  }

  v26 = *(*(v7 - 8) + 64);
  if (v11 > v26)
  {
    v26 = v11;
  }

  if (v26 <= 0x18)
  {
    v27 = 24;
  }

  else
  {
    v27 = v26;
  }

  v28 = (v27 + ((v249 + v9) & ~v9) + 8) & 0xFFFFFFFFFFFFFFF8;
  v29 = ((v28 + 63) & 0xFFFFFFFFFFFFFFF8) + 41;
  v30 = *(*(a3 + 24) - 8);
  if (*(v30 + 64) <= 9uLL)
  {
    v31 = 9;
  }

  else
  {
    v31 = *(v30 + 64);
  }

  v32 = v31 + 1;
  if (v29 <= v31 + 1)
  {
    v29 = v31 + 1;
  }

  if (v29 <= 0x29)
  {
    v33 = 41;
  }

  else
  {
    v33 = v29;
  }

  v34 = *(v241 + 80);
  v35 = *(v30 + 80);
  if (((v35 | v34) & 0xF8 | v9) != 7 || ((v226 | v223 | v4 | v8 | v34 | v35) & 0x100000) != 0 || (v33 + 1) > 0x18)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v230 = v19;
  v36 = *(v7 - 8);
  v37 = a2[v33];
  if (v37 >= 7)
  {
    v37 = *a2 + 7;
  }

  v240 = v33;
  v38 = ~v4;
  switch(v37)
  {
    case 0u:
      v39 = a1;
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      a1[24] = a2[24];
      *(a1 + 4) = *(a2 + 4);
      a1[40] = a2[40];
      a1[v33] = 0;
      goto LABEL_135;
    case 1u:
      v39 = a1;
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      a1[24] = a2[24];
      *(a1 + 4) = *(a2 + 4);
      a1[40] = a2[40];
      v40 = 1;
      goto LABEL_134;
    case 2u:
      v200 = ~v20;
      v202 = v24;
      v41 = v7;
      v208 = v38;
      v210 = v12;
      v204 = v16 + 7;
      v206 = v13;
      v198 = v14;
      v196 = v15;
      v224 = v27 + 1;
      v227 = v28;
      v42 = *(v241 + 16);
      v39 = a1;
      v242 = v27;
      v42(a1);
      v221 = &a1[v249 + 7];
      v43 = (v221 & 0xFFFFFFFFFFFFFFF8);
      v245 = a2 + 7;
      v250 = &v245[v249];
      v44 = (v250 & 0xFFFFFFFFFFFFFFF8);
      v45 = *((v250 & 0xFFFFFFFFFFFFFFF8) + v242);
      v46 = v45 - 10;
      if (v45 >= 0xA)
      {
        if (v242 <= 3)
        {
          v47 = v242;
        }

        else
        {
          v47 = 4;
        }

        switch(v47)
        {
          case 1:
            v48 = *v44;
            goto LABEL_71;
          case 2:
            v48 = *v44;
            goto LABEL_71;
          case 3:
            v48 = *v44 | (v44[2] << 16);
            goto LABEL_71;
          case 4:
            v48 = *v44;
LABEL_71:
            if (v242 < 4)
            {
              v45 = (v48 | (v46 << (8 * v242))) + 10;
            }

            else
            {
              v45 = v48 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v45)
      {
        case 0u:
          (*(v217 + 16))(v43, v44, v218);
          *((v221 & 0xFFFFFFFFFFFFFFF8) + v242) = 0;
          goto LABEL_113;
        case 1u:
          (*(v217 + 16))(v43, v44, v218);
          *(((v221 | 7) + v212) & 0xFFFFFFFFFFFFFFF8) = *(((v250 | 7) + v212) & 0xFFFFFFFFFFFFFFF8);
          *((v221 & 0xFFFFFFFFFFFFFFF8) + v242) = 1;
          sub_1DD0DCF8C();
        case 2u:
          *v43 = *v44;
          v43[1] = *(v44 + 1);
          v43[2] = *(v44 + 2);
          *(v43 + v242) = 2;

          goto LABEL_113;
        case 3u:
          *v43 = *v44;
          *(v43 + v242) = 3;
          swift_unknownObjectRetain();
          goto LABEL_113;
        case 4u:
          v68 = v242;
          v69 = v221 & 0xFFFFFFFFFFFFFFF8;
          (*(v215 + 16))(v43, v44, v216);
          v70 = 4;
          goto LABEL_98;
        case 5u:
          v80 = *v44;
          *v43 = *v44;
          *(v43 + v242) = 5;
          v81 = v80;
          goto LABEL_113;
        case 6u:
          (*(v248 + 16))(v43, v44, v220);
          v99 = ((v210 + (v221 & 0xFFFFFFFFFFFFFFF8)) & v208);
          v100 = (&v44[v210] & v208);
          if (__swift_getEnumTagSinglePayload(v100, 1, v219))
          {
            memcpy(v99, v100, v16);
          }

          else
          {
            (*(v234 + 16))(v99, v100, v219);
            __swift_storeEnumTagSinglePayload(v99, 0, 1, v219);
          }

          v83 = a1 + 7;
          v84 = v245;
          v85 = v221;
          v86 = v250;
          v162 = ((v99 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
          v163 = ((v100 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v162 = *v163;
          v162[1] = v163[1];
          v164 = (v162 + 19) & 0xFFFFFFFFFFFFFFF8;
          v165 = (v163 + 19) & 0xFFFFFFFFFFFFFFF8;
          v166 = *v165;
          *(v164 + 4) = *(v165 + 4);
          *v164 = v166;
          *((v221 & 0xFFFFFFFFFFFFFFF8) + v242) = 6;
          goto LABEL_157;
        case 7u:
          (*(v248 + 16))(v43, v44, v220);
          v76 = ((v210 + (v221 & 0xFFFFFFFFFFFFFFF8)) & v208);
          v77 = (&v44[v210] & v208);
          if (__swift_getEnumTagSinglePayload(v77, 1, v219))
          {
            memcpy(v76, v77, v16);
          }

          else
          {
            (*(v234 + 16))(v76, v77, v219);
            __swift_storeEnumTagSinglePayload(v76, 0, 1, v219);
          }

          v83 = a1 + 7;
          v84 = v245;
          v85 = v221;
          v140 = ((v76 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
          v141 = ((v77 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v140 = *v141;
          v140[1] = v141[1];
          v142 = (v140 + 19) & 0xFFFFFFFFFFFFFFF8;
          v143 = (v141 + 19) & 0xFFFFFFFFFFFFFFF8;
          v144 = *v143;
          *(v142 + 4) = *(v143 + 4);
          *v142 = v144;
          v145 = (((v221 | 7) + v238) & 0xFFFFFFFFFFFFFFF8);
          v86 = v250;
          v146 = (((v250 | 7) + v238) & 0xFFFFFFFFFFFFFFF8);
          *v145 = *v146;
          v145[1] = v146[1];
          v147 = ((v145 + 23) & 0xFFFFFFFFFFFFFFF8);
          v148 = ((v146 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v147 = *v148;
          v147[1] = v148[1];
          v149 = ((v147 + 23) & 0xFFFFFFFFFFFFFFF8);
          v150 = ((v148 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v149 = *v150;
          v149[1] = v150[1];
          *((v221 & 0xFFFFFFFFFFFFFFF8) + v242) = 7;

LABEL_157:

          v82 = v224;
          goto LABEL_116;
        case 8u:
          (*(v213 + 16))(v43, v44, v214);
          v101 = (((v221 | 7) + v236) & 0xFFFFFFFFFFFFFFF8);
          v102 = (((v250 | 7) + v236) & 0xFFFFFFFFFFFFFFF8);
          *v101 = *v102;
          v101[1] = v102[1];
          v103 = ((v101 + v230) & v200);
          v104 = ((v102 + v230) & v200);

          if (v22 != v202)
          {
            v107 = ((v104 + v210) & v208);
            if (v232 == v202)
            {
              v108 = v219;
              v84 = v245;
              if (v198 < 2)
              {
LABEL_165:
                v109 = v248;
                v106 = v208;
                v105 = v210;
                goto LABEL_166;
              }

              if (__swift_getEnumTagSinglePayload((v104 + v210) & v208, v198, v219) >= 2)
              {
                goto LABEL_146;
              }
            }

            else
            {
              v172 = *(((v107 + v204) & 0xFFFFFFFFFFFFFFF8) + 8);
              if (v172 >= 0xFFFFFFFF)
              {
                LODWORD(v172) = -1;
              }

              v84 = v245;
              if ((v172 + 1) >= 2)
              {
                goto LABEL_146;
              }
            }

            v108 = v219;
            goto LABEL_165;
          }

          v84 = v245;
          if (__swift_getEnumTagSinglePayload(v104, v22, v220))
          {
LABEL_146:
            memcpy(v103, v104, v238);
            v83 = a1 + 7;
LABEL_177:
            v181 = v16;
            goto LABEL_178;
          }

          v106 = v208;
          v105 = v210;
          v107 = ((v104 + v210) & v208);
          v108 = v219;
          v109 = v248;
LABEL_166:
          (*(v109 + 16))(v103, v104, v220);
          v173 = ((v103 + v105) & v106);
          if (__swift_getEnumTagSinglePayload(v107, 1, v108))
          {
            memcpy(v173, v107, v16);
          }

          else
          {
            (*(v234 + 16))(v173, v107, v108);
            __swift_storeEnumTagSinglePayload(v173, 0, 1, v108);
          }

          v83 = a1 + 7;
          v176 = ((v173 + v204) & 0xFFFFFFFFFFFFFFF8);
          v177 = ((v107 + v204) & 0xFFFFFFFFFFFFFFF8);
          *v176 = *v177;
          v176[1] = v177[1];
          v178 = (v176 + 19) & 0xFFFFFFFFFFFFFFF8;
          v179 = (v177 + 19) & 0xFFFFFFFFFFFFFFF8;
          v180 = *v179;
          *(v178 + 4) = *(v179 + 4);
          *v178 = v180;

          v181 = v196;
          if (!v198)
          {
            goto LABEL_177;
          }

LABEL_178:
          v182 = (((v206 + v181 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
          v183 = ((v103 + v182 + 7) & 0xFFFFFFFFFFFFFFF8);
          v184 = *((v104 + v182 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v183 = v184;
          *((v221 & 0xFFFFFFFFFFFFFFF8) + v242) = 8;
          v185 = v184;
          v82 = v224;
LABEL_115:
          v85 = v221;
          v86 = v250;
LABEL_116:
          v87 = (((v86 | 7) + v82) & 0xFFFFFFFFFFFFFFF8);
          v88 = (((v85 | 7) + v82) & 0xFFFFFFFFFFFFFFF8);
          *v88 = *v87;
          v89 = (v88 + 15) & 0xFFFFFFFFFFFFFFF8;
          v90 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v91 = *(v90 + 24);

          if (v91 < 0xFFFFFFFF)
          {
            v92 = *v90;
            v93 = *(v90 + 16);
            *(v89 + 32) = *(v90 + 32);
            *v89 = v92;
            *(v89 + 16) = v93;
          }

          else
          {
            *(v89 + 24) = v91;
            *(v89 + 32) = *(v90 + 32);
            (**(v91 - 8))(v89, v90, v91);
          }

          *(v89 + 40) = *(v90 + 40);
          v94 = ((v227 + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
          v95 = &v83[v94] & 0xFFFFFFFFFFFFFFF8;
          v96 = &v84[v94] & 0xFFFFFFFFFFFFFFF8;
          *v95 = *v96;
          v97 = *(v96 + 8);
          *(v95 + 24) = *(v96 + 24);
          *(v95 + 8) = v97;
          v98 = *(v96 + 32);
          *(v95 + 40) = *(v96 + 40);
          *(v95 + 32) = v98;
          v40 = 2;
LABEL_134:
          v39[v240] = v40;
LABEL_135:

          return v39;
        case 9u:
          v71 = *(v36 + 16);
          v68 = v242;
          v69 = v221 & 0xFFFFFFFFFFFFFFF8;
          v71(v43, v44, v41);
          v70 = 9;
LABEL_98:
          *(v69 + v68) = v70;
LABEL_113:
          v82 = v224;
          goto LABEL_114;
        default:
          v82 = v224;
          memcpy(v43, v44, v224);
LABEL_114:
          v83 = a1 + 7;
          v84 = v245;
          goto LABEL_115;
      }

    case 3u:
      v201 = ~v20;
      v203 = v24;
      v49 = v7;
      v209 = v38;
      v211 = v12;
      v205 = v16 + 7;
      v207 = v13;
      v199 = v14;
      v197 = v15;
      v225 = v27 + 1;
      v228 = v28;
      v50 = *(v241 + 16);
      v39 = a1;
      v243 = v27;
      v50(a1);
      v222 = &a1[v249 + 7];
      v51 = (v222 & 0xFFFFFFFFFFFFFFF8);
      v246 = a2 + 7;
      v251 = &v246[v249];
      v52 = (v251 & 0xFFFFFFFFFFFFFFF8);
      v53 = *((v251 & 0xFFFFFFFFFFFFFFF8) + v243);
      v54 = v53 - 10;
      if (v53 < 0xA)
      {
        v56 = v49;
      }

      else
      {
        if (v243 <= 3)
        {
          v55 = v243;
        }

        else
        {
          v55 = 4;
        }

        v56 = v49;
        switch(v55)
        {
          case 1:
            v57 = *v52;
            goto LABEL_79;
          case 2:
            v57 = *v52;
            goto LABEL_79;
          case 3:
            v57 = *v52 | (v52[2] << 16);
            goto LABEL_79;
          case 4:
            v57 = *v52;
LABEL_79:
            if (v243 < 4)
            {
              v53 = (v57 | (v54 << (8 * v243))) + 10;
            }

            else
            {
              v53 = v57 + 10;
            }

            break;
          default:
            goto LABEL_82;
        }
      }

      break;
    case 4u:
      v39 = a1;
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      a1[24] = a2[24];
      *(a1 + 4) = *(a2 + 4);
      a1[40] = a2[40];
      v40 = 4;
      goto LABEL_134;
    case 5u:
      v59 = a2[v31];
      v60 = v59 - 2;
      if (v59 >= 2)
      {
        if (v31 <= 3)
        {
          v61 = v31;
        }

        else
        {
          v61 = 4;
        }

        switch(v61)
        {
          case 1:
            v62 = *a2;
            goto LABEL_86;
          case 2:
            v62 = *a2;
            goto LABEL_86;
          case 3:
            v62 = *a2 | (a2[2] << 16);
            goto LABEL_86;
          case 4:
            v62 = *a2;
LABEL_86:
            if (v31 < 4)
            {
              v59 = (v62 | (v60 << (8 * v31))) + 2;
            }

            else
            {
              v59 = v62 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v59 == 1)
      {
        v66 = *a2;
        v67 = *a2;
        *a1 = v66;
        a1[8] = a2[8];
        a1[v31] = 1;
        v39 = a1;
      }

      else if (v59)
      {
        v39 = a1;
        memcpy(a1, a2, v32);
      }

      else
      {
        (*(v30 + 16))(a1);
        a1[v31] = 0;
        v39 = a1;
      }

      v65 = 5;
      goto LABEL_95;
    case 6u:
      v63 = *a2;
      v64 = *a2;
      v39 = a1;
      *a1 = v63;
      a1[8] = a2[8];
      v65 = 6;
LABEL_95:
      v39[v240] = v65;
      return v39;
    default:

      return memcpy(a1, a2, v27 + 1);
  }

LABEL_82:
  switch(v53)
  {
    case 0u:
      (*(v217 + 16))(v51, v52, v218);
      *((v222 & 0xFFFFFFFFFFFFFFF8) + v243) = 0;
      goto LABEL_127;
    case 1u:
      (*(v217 + 16))(v51, v52, v218);
      *(((v222 | 7) + v212) & 0xFFFFFFFFFFFFFFF8) = *(((v251 | 7) + v212) & 0xFFFFFFFFFFFFFFF8);
      *((v222 & 0xFFFFFFFFFFFFFFF8) + v243) = 1;
      sub_1DD0DCF8C();
    case 2u:
      *v51 = *v52;
      v51[1] = *(v52 + 1);
      v51[2] = *(v52 + 2);
      *(v51 + v243) = 2;

      goto LABEL_127;
    case 3u:
      *v51 = *v52;
      *(v51 + v243) = 3;
      swift_unknownObjectRetain();
      goto LABEL_127;
    case 4u:
      v72 = v243;
      v73 = v222 & 0xFFFFFFFFFFFFFFF8;
      (*(v215 + 16))(v51, v52, v216);
      v74 = 4;
      goto LABEL_102;
    case 5u:
      v110 = *v52;
      *v51 = *v52;
      *(v51 + v243) = 5;
      v111 = v110;
      goto LABEL_127;
    case 6u:
      (*(v248 + 16))(v51, v52, v220);
      v129 = ((v211 + (v222 & 0xFFFFFFFFFFFFFFF8)) & v209);
      v130 = (&v52[v211] & v209);
      if (__swift_getEnumTagSinglePayload(v130, 1, v219))
      {
        memcpy(v129, v130, v16);
      }

      else
      {
        (*(v234 + 16))(v129, v130, v219);
        __swift_storeEnumTagSinglePayload(v129, 0, 1, v219);
      }

      v113 = a1 + 7;
      v114 = v246;
      v115 = v222;
      v116 = v251;
      v167 = ((v129 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
      v168 = ((v130 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v167 = *v168;
      v167[1] = v168[1];
      v169 = (v167 + 19) & 0xFFFFFFFFFFFFFFF8;
      v170 = (v168 + 19) & 0xFFFFFFFFFFFFFFF8;
      v171 = *v170;
      *(v169 + 4) = *(v170 + 4);
      *v169 = v171;
      *((v222 & 0xFFFFFFFFFFFFFFF8) + v243) = 6;
      goto LABEL_160;
    case 7u:
      (*(v248 + 16))(v51, v52, v220);
      v78 = ((v211 + (v222 & 0xFFFFFFFFFFFFFFF8)) & v209);
      v79 = (&v52[v211] & v209);
      if (__swift_getEnumTagSinglePayload(v79, 1, v219))
      {
        memcpy(v78, v79, v16);
      }

      else
      {
        (*(v234 + 16))(v78, v79, v219);
        __swift_storeEnumTagSinglePayload(v78, 0, 1, v219);
      }

      v113 = a1 + 7;
      v114 = v246;
      v115 = v222;
      v151 = ((v78 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
      v152 = ((v79 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v151 = *v152;
      v151[1] = v152[1];
      v153 = (v151 + 19) & 0xFFFFFFFFFFFFFFF8;
      v154 = (v152 + 19) & 0xFFFFFFFFFFFFFFF8;
      v155 = *v154;
      *(v153 + 4) = *(v154 + 4);
      *v153 = v155;
      v156 = (((v222 | 7) + v238) & 0xFFFFFFFFFFFFFFF8);
      v116 = v251;
      v157 = (((v251 | 7) + v238) & 0xFFFFFFFFFFFFFFF8);
      *v156 = *v157;
      v156[1] = v157[1];
      v158 = ((v156 + 23) & 0xFFFFFFFFFFFFFFF8);
      v159 = ((v157 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v158 = *v159;
      v158[1] = v159[1];
      v160 = ((v158 + 23) & 0xFFFFFFFFFFFFFFF8);
      v161 = ((v159 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v160 = *v161;
      v160[1] = v161[1];
      *((v222 & 0xFFFFFFFFFFFFFFF8) + v243) = 7;

LABEL_160:

      v112 = v225;
      goto LABEL_130;
    case 8u:
      (*(v213 + 16))(v51, v52, v214);
      v131 = (((v222 | 7) + v236) & 0xFFFFFFFFFFFFFFF8);
      v132 = (((v251 | 7) + v236) & 0xFFFFFFFFFFFFFFF8);
      *v131 = *v132;
      v131[1] = v132[1];
      v133 = ((v131 + v230) & v201);
      v134 = ((v132 + v230) & v201);

      if (v22 == v203)
      {
        v114 = v246;
        if (!__swift_getEnumTagSinglePayload(v134, v22, v220))
        {
          v136 = v209;
          v135 = v211;
          v137 = ((v134 + v211) & v209);
          v138 = v219;
          v139 = v248;
          goto LABEL_173;
        }

LABEL_150:
        memcpy(v133, v134, v238);
        v113 = a1 + 7;
        goto LABEL_181;
      }

      v137 = ((v134 + v211) & v209);
      if (v232 == v203)
      {
        v138 = v219;
        v114 = v246;
        if (v199 < 2)
        {
LABEL_172:
          v139 = v248;
          v136 = v209;
          v135 = v211;
LABEL_173:
          (*(v139 + 16))(v133, v134, v220);
          v175 = ((v133 + v135) & v136);
          if (__swift_getEnumTagSinglePayload(v137, 1, v138))
          {
            memcpy(v175, v137, v16);
          }

          else
          {
            (*(v234 + 16))(v175, v137, v138);
            __swift_storeEnumTagSinglePayload(v175, 0, 1, v138);
          }

          v113 = a1 + 7;
          v186 = ((v175 + v205) & 0xFFFFFFFFFFFFFFF8);
          v187 = ((v137 + v205) & 0xFFFFFFFFFFFFFFF8);
          *v186 = *v187;
          v186[1] = v187[1];
          v188 = (v186 + 19) & 0xFFFFFFFFFFFFFFF8;
          v189 = (v187 + 19) & 0xFFFFFFFFFFFFFFF8;
          v190 = *v189;
          *(v188 + 4) = *(v189 + 4);
          *v188 = v190;

          v191 = v197;
          if (v199)
          {
LABEL_182:
            v192 = (((v207 + v191 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
            v193 = ((v133 + v192 + 7) & 0xFFFFFFFFFFFFFFF8);
            v194 = *((v134 + v192 + 7) & 0xFFFFFFFFFFFFFFF8);
            *v193 = v194;
            *((v222 & 0xFFFFFFFFFFFFFFF8) + v243) = 8;
            v195 = v194;
            v112 = v225;
LABEL_129:
            v115 = v222;
            v116 = v251;
LABEL_130:
            v117 = (((v116 | 7) + v112) & 0xFFFFFFFFFFFFFFF8);
            v118 = (((v115 | 7) + v112) & 0xFFFFFFFFFFFFFFF8);
            *v118 = *v117;
            v119 = (v118 + 15) & 0xFFFFFFFFFFFFFFF8;
            v120 = (v117 + 15) & 0xFFFFFFFFFFFFFFF8;
            v121 = *(v120 + 24);

            if (v121 < 0xFFFFFFFF)
            {
              v122 = *v120;
              v123 = *(v120 + 16);
              *(v119 + 32) = *(v120 + 32);
              *v119 = v122;
              *(v119 + 16) = v123;
            }

            else
            {
              *(v119 + 24) = v121;
              *(v119 + 32) = *(v120 + 32);
              (**(v121 - 8))(v119, v120, v121);
            }

            *(v119 + 40) = *(v120 + 40);
            v124 = ((v228 + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
            v125 = &v113[v124] & 0xFFFFFFFFFFFFFFF8;
            v126 = &v114[v124] & 0xFFFFFFFFFFFFFFF8;
            *v125 = *v126;
            v127 = *(v126 + 8);
            *(v125 + 24) = *(v126 + 24);
            *(v125 + 8) = v127;
            v128 = *(v126 + 32);
            *(v125 + 40) = *(v126 + 40);
            *(v125 + 32) = v128;
            v40 = 3;
            goto LABEL_134;
          }

LABEL_181:
          v191 = v16;
          goto LABEL_182;
        }

        if (__swift_getEnumTagSinglePayload((v134 + v211) & v209, v199, v219) >= 2)
        {
          goto LABEL_150;
        }
      }

      else
      {
        v174 = *(((v137 + v205) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v174 >= 0xFFFFFFFF)
        {
          LODWORD(v174) = -1;
        }

        v114 = v246;
        if ((v174 + 1) >= 2)
        {
          goto LABEL_150;
        }
      }

      v138 = v219;
      goto LABEL_172;
    case 9u:
      v75 = *(v36 + 16);
      v72 = v243;
      v73 = v222 & 0xFFFFFFFFFFFFFFF8;
      v75(v51, v52, v56);
      v74 = 9;
LABEL_102:
      *(v73 + v72) = v74;
LABEL_127:
      v112 = v225;
      goto LABEL_128;
    default:
      v112 = v225;
      memcpy(v51, v52, v225);
LABEL_128:
      v113 = a1 + 7;
      v114 = v246;
      goto LABEL_129;
  }
}

void sub_1DCE80628(unsigned __int8 *a1, uint64_t a2)
{
  v2 = sub_1DD0DB04C();
  v79 = *(v2 - 8);
  v80 = v2;
  v92 = *(v79 + 64);
  v3 = sub_1DD0DC76C();
  v84 = *(v3 - 8);
  v75 = v84;
  v76 = v3;
  v4 = *(v84 + 80);
  v5 = sub_1DD0DB1EC();
  v83 = *(v5 - 8);
  v74 = v5;
  v90 = *(v83 + 80) | v4;
  v78 = sub_1DD0DB4BC();
  v81 = *(v78 - 8);
  v6 = v81;
  v7 = *(v81 + 80) & 0xF8;
  v77 = sub_1DD0DB3EC();
  v8 = *(v77 - 8);
  v9 = *(v8 + 80);
  v86 = v7 | v9 | 7;
  v10 = sub_1DD0DD12C();
  v11 = *(v10 - 8);
  v72 = v11;
  v73 = v10;
  v88 = *(v11 + 80);
  v12 = sub_1DD0DD08C();
  v71 = *(v12 - 8);
  v13 = *(v84 + 64);
  if (((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v13)
  {
    v13 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v13 <= *(v83 + 64))
  {
    v13 = *(v83 + 64);
  }

  v14 = *(v81 + 64);
  v15 = v14 + v9;
  v16 = v9;
  v82 = v8;
  v17 = *(v8 + 84);
  if (v17)
  {
    v18 = *(v8 + 64);
  }

  else
  {
    v18 = *(v8 + 64) + 1;
  }

  v19 = (v18 + 7 + ((v14 + v9) & ~v9)) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v13 <= v20)
  {
    v13 = (v19 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v21 = v19 + 31;
  if (v13 <= (((((v21 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v13 = (((((v21 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v22 = *(v11 + 64);
  v85 = v6;
  v23 = *(v6 + 84);
  if (v17)
  {
    v24 = v17 - 1;
  }

  else
  {
    v24 = 0;
  }

  if (v24 <= v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = v24;
  }

  if (v25 <= 0x7FFFFFFE)
  {
    v26 = 2147483646;
  }

  else
  {
    v26 = v25;
  }

  v27 = ((v21 + ((v86 + 16 + ((v22 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v86)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 <= v27)
  {
    v13 = v27;
  }

  v28 = *(*(v12 - 8) + 64);
  if (v13 > v28)
  {
    v28 = v13;
  }

  if (v28 <= 0x18)
  {
    v29 = 24;
  }

  else
  {
    v29 = v28;
  }

  v95 = *(*(a2 + 24) - 8);
  v30 = *(v95 + 64);
  v31 = (v90 | (v88 | *(v71 + 80))) & 0xF8 | v86;
  v32 = v92 + v31;
  v33 = ((((v29 + ((v92 + v31) & ~v31) + 8) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 41;
  if (v30 <= 9)
  {
    v30 = 9;
  }

  if (v33 <= v30 + 1)
  {
    v33 = v30 + 1;
  }

  v34 = 41;
  if (v33 > 0x29)
  {
    v34 = v33;
  }

  v35 = a1[v34];
  v36 = v35 - 7;
  if (v35 >= 7)
  {
    if (v34 <= 3)
    {
      v37 = v34;
    }

    else
    {
      v37 = 4;
    }

    switch(v37)
    {
      case 1:
        v38 = *a1;
        goto LABEL_43;
      case 2:
        v38 = *a1;
        goto LABEL_43;
      case 3:
        v38 = *a1 | (a1[2] << 16);
        goto LABEL_43;
      case 4:
        v38 = *a1;
LABEL_43:
        if (v34 < 4)
        {
          v38 |= v36 << (8 * v34);
        }

        v35 = v38 + 7;
        break;
      default:
        break;
    }
  }

  v39 = ~v31;
  switch(v35)
  {
    case 0u:
    case 1u:
    case 4u:
      goto LABEL_131;
    case 2u:
      v69 = ~v86;
      v89 = ~v16;
      v48 = v86 + 16;
      v70 = v26;
      v91 = v15;
      v93 = v29 + 1;
      v87 = v18 + 7;
      (*(v79 + 8))(a1, v80, v16);
      v41 = (&a1[v32] & v39);
      v49 = v41[v29];
      v50 = v49 - 10;
      if (v49 < 0xA)
      {
        v45 = v12;
      }

      else
      {
        if (v29 <= 3)
        {
          v51 = v29;
        }

        else
        {
          v51 = 4;
        }

        v45 = v12;
        switch(v51)
        {
          case 1:
            v52 = *v41;
            goto LABEL_79;
          case 2:
            v52 = *v41;
            goto LABEL_79;
          case 3:
            v52 = *v41 | (v41[2] << 16);
            goto LABEL_79;
          case 4:
            v52 = *v41;
LABEL_79:
            if (v29 < 4)
            {
              v49 = (v52 | (v50 << (8 * v29))) + 10;
            }

            else
            {
              v49 = v52 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v49)
      {
        case 0u:
          goto LABEL_83;
        case 1u:
          goto LABEL_92;
        case 2u:
          goto LABEL_85;
        case 3u:
          goto LABEL_86;
        case 4u:
          goto LABEL_84;
        case 5u:
          goto LABEL_93;
        case 6u:
          goto LABEL_94;
        case 7u:
          goto LABEL_87;
        case 8u:
          (*(v72 + 8))(v41, v73);

          v57 = v48 + (&v41[v22 + 7] & 0xFFFFFFFFFFFFFFF8);
          goto LABEL_112;
        case 9u:
          goto LABEL_90;
        default:
          goto LABEL_129;
      }

      goto LABEL_129;
    case 3u:
      v69 = ~v86;
      v89 = ~v16;
      v40 = v86 + 16;
      v70 = v26;
      v91 = v15;
      v93 = v29 + 1;
      v87 = v18 + 7;
      (*(v79 + 8))(a1, v80, v16);
      v41 = (&a1[v32] & v39);
      v42 = v41[v29];
      v43 = v42 - 10;
      if (v42 < 0xA)
      {
        v45 = v12;
        v46 = v40;
      }

      else
      {
        if (v29 <= 3)
        {
          v44 = v29;
        }

        else
        {
          v44 = 4;
        }

        v45 = v12;
        v46 = v40;
        switch(v44)
        {
          case 1:
            v47 = *v41;
            goto LABEL_70;
          case 2:
            v47 = *v41;
            goto LABEL_70;
          case 3:
            v47 = *v41 | (v41[2] << 16);
            goto LABEL_70;
          case 4:
            v47 = *v41;
LABEL_70:
            if (v29 < 4)
            {
              v42 = (v47 | (v43 << (8 * v29))) + 10;
            }

            else
            {
              v42 = v47 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v42)
      {
        case 0u:
LABEL_83:
          v58 = v75;
          v45 = v76;
          goto LABEL_91;
        case 1u:
LABEL_92:
          (*(v75 + 8))(v41, v76);

          break;
        case 2u:
LABEL_85:

          goto LABEL_96;
        case 3u:
LABEL_86:
          swift_unknownObjectRelease();
          break;
        case 4u:
LABEL_84:
          v58 = v83;
          v45 = v74;
          goto LABEL_91;
        case 5u:
LABEL_93:
          v59 = *v41;
          goto LABEL_128;
        case 6u:
LABEL_94:
          (*(v85 + 8))(v41, v78);
          if (!__swift_getEnumTagSinglePayload(&v41[v91] & v89, 1, v77))
          {
            (*(v82 + 8))(&v41[v91] & v89, v77);
          }

          goto LABEL_96;
        case 7u:
LABEL_87:
          (*(v85 + 8))(v41, v78);
          if (!__swift_getEnumTagSinglePayload(&v41[v91] & v89, 1, v77))
          {
            (*(v82 + 8))(&v41[v91] & v89, v77);
          }

LABEL_96:

          break;
        case 8u:
          (*(v72 + 8))(v41, v73);

          v57 = v46 + (&v41[v22 + 7] & 0xFFFFFFFFFFFFFFF8);
LABEL_112:
          v62 = v57 & v69;
          if (v23 == v70)
          {
            v63 = v78;
            if (__swift_getEnumTagSinglePayload(v57 & v69, v23, v78))
            {
              goto LABEL_127;
            }

            v64 = (v91 + v62) & v89;
          }

          else
          {
            v64 = (v91 + v62) & v89;
            if (v24 == v70)
            {
              v65 = v77;
              if (v17 < 2)
              {
                v63 = v78;
                goto LABEL_124;
              }

              v67 = __swift_getEnumTagSinglePayload((v91 + v62) & v89, v17, v77) >= 2;
            }

            else
            {
              v66 = *(((v87 + v64) & 0xFFFFFFFFFFFFFFF8) + 8);
              if (v66 >= 0xFFFFFFFF)
              {
                LODWORD(v66) = -1;
              }

              v67 = (v66 + 1) >= 2;
            }

            v63 = v78;
            if (v67)
            {
              goto LABEL_127;
            }
          }

          v65 = v77;
LABEL_124:
          (*(v85 + 8))(v62, v63);
          if (!__swift_getEnumTagSinglePayload(v64, 1, v65))
          {
            (*(v82 + 8))(v64, v65);
          }

LABEL_127:
          v59 = *((v20 + v62 + 7) & 0xFFFFFFFFFFFFFFF8);
LABEL_128:

          break;
        case 9u:
LABEL_90:
          v58 = v71;
LABEL_91:
          (*(v58 + 8))(v41, v45);
          break;
        default:
          break;
      }

LABEL_129:

      v68 = (((&v41[v93 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v68[3] >= 0xFFFFFFFFuLL)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v68);
      }

LABEL_131:

      return;
    case 5u:
      v53 = a1[v30];
      v54 = v53 - 2;
      if (v53 >= 2)
      {
        if (v30 <= 3)
        {
          v55 = v30;
        }

        else
        {
          v55 = 4;
        }

        switch(v55)
        {
          case 1:
            v56 = *a1;
            goto LABEL_99;
          case 2:
            v56 = *a1;
            goto LABEL_99;
          case 3:
            v56 = *a1 | (a1[2] << 16);
            goto LABEL_99;
          case 4:
            v56 = *a1;
LABEL_99:
            if (v30 < 4)
            {
              v53 = (v56 | (v54 << (8 * v30))) + 2;
            }

            else
            {
              v53 = v56 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v53 == 1)
      {
        goto LABEL_108;
      }

      if (!v53)
      {
        v60 = *(v95 + 8);

        v60();
      }

      break;
    case 6u:
LABEL_108:
      v61 = *a1;

      break;
    default:
      return;
  }
}

_BYTE *sub_1DCE811D4(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = sub_1DD0DB04C();
  v219 = *(v3 - 8);
  v220 = v3;
  v234 = *(v219 + 64);
  v216 = sub_1DD0DC76C();
  v230 = *(v216 - 8);
  v215 = v230;
  v4 = *(v230 + 80);
  v214 = sub_1DD0DB1EC();
  v232 = *(v214 - 8);
  v213 = v232;
  v223 = *(v232 + 80) | v4;
  v218 = sub_1DD0DB4BC();
  v228 = *(v218 - 8);
  v239 = v228;
  v5 = *(v228 + 80) & 0xF8;
  v217 = sub_1DD0DB3EC();
  v6 = *(v217 - 8);
  v7 = *(v6 + 80);
  v8 = v5 | v7 | 7;
  v212 = sub_1DD0DD12C();
  v226 = *(v212 - 8);
  v211 = v226;
  v9 = *(v226 + 80);
  v10 = sub_1DD0DD08C();
  v210 = v10;
  v11 = v230;
  v231 = *(v10 - 8);
  v12 = (v223 | (v9 | *(v231 + 80))) & 0xF8 | v8;
  v13 = v234 + v12;
  v14 = *(v11 + 64);
  v235 = v14 + 7;
  if (((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v14)
  {
    v14 = ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v14 <= *(v232 + 64))
  {
    v14 = *(v232 + 64);
  }

  v15 = *(v228 + 64);
  v16 = v15 + v7;
  v17 = (v15 + v7) & ~v7;
  v229 = v6;
  v18 = *(v6 + 84);
  v19 = *(v6 + 64);
  if (v18)
  {
    v20 = *(v6 + 64);
  }

  else
  {
    v20 = v19 + 1;
  }

  v21 = (v20 + 7 + v17) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v14 <= v22)
  {
    v14 = (v21 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v23 = v21 + 31;
  if (v14 <= (((((v23 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v14 = (((((v23 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v233 = *(v226 + 64);
  v24 = v8 + 16;
  v25 = v8;
  v26 = *(v239 + 84);
  if (v18)
  {
    v27 = v18 - 1;
  }

  else
  {
    v27 = 0;
  }

  if (v27 <= v26)
  {
    v28 = *(v239 + 84);
  }

  else
  {
    v28 = v27;
  }

  if (v28 <= 0x7FFFFFFE)
  {
    v29 = 2147483646;
  }

  else
  {
    v29 = v28;
  }

  v30 = ((v23 + ((v8 + 16 + ((v233 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 <= v30)
  {
    v14 = v30;
  }

  v31 = *(*(v10 - 8) + 64);
  if (v14 > v31)
  {
    v31 = v14;
  }

  if (v31 <= 0x18)
  {
    v32 = 24;
  }

  else
  {
    v32 = v31;
  }

  v33 = ((((v32 + (v13 & ~v12) + 8) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 41;
  v34 = *(*(a3 + 24) - 8);
  if (*(v34 + 64) <= 9uLL)
  {
    v35 = 9;
  }

  else
  {
    v35 = *(v34 + 64);
  }

  if (v33 <= v35 + 1)
  {
    v33 = v35 + 1;
  }

  if (v33 <= 0x29)
  {
    v36 = 41;
  }

  else
  {
    v36 = v33;
  }

  v37 = a2[v36];
  v38 = v37 - 7;
  if (v37 < 7)
  {
    v40 = a1;
  }

  else
  {
    if (v36 <= 3)
    {
      v39 = v36;
    }

    else
    {
      v39 = 4;
    }

    v40 = a1;
    switch(v39)
    {
      case 1:
        v41 = *a2;
        goto LABEL_46;
      case 2:
        v41 = *a2;
        goto LABEL_46;
      case 3:
        v41 = *a2 | (a2[2] << 16);
        goto LABEL_46;
      case 4:
        v41 = *a2;
LABEL_46:
        if (v36 < 4)
        {
          v41 |= v38 << (8 * v36);
        }

        v37 = v41 + 7;
        break;
      default:
        break;
    }
  }

  v227 = v24;
  v237 = v29;
  v42 = ~v12;
  v43 = ~v25;
  switch(v37)
  {
    case 0u:
      *v40 = *a2;
      *(v40 + 8) = *(a2 + 8);
      v40[24] = a2[24];
      *(v40 + 4) = *(a2 + 4);
      v40[40] = a2[40];
      v40[v36] = 0;
      goto LABEL_187;
    case 1u:
      *v40 = *a2;
      *(v40 + 8) = *(a2 + 8);
      v40[24] = a2[24];
      *(v40 + 4) = *(a2 + 4);
      v40[40] = a2[40];
      v44 = 1;
      goto LABEL_68;
    case 2u:
      v202 = ~v7;
      v194 = v18;
      v192 = v19;
      v196 = v17;
      __n = v20;
      v200 = v20 + 7;
      v206 = v36;
      v208 = v32 + 1;
      v204 = (v32 + (v13 & ~v12) + 8) & 0xFFFFFFFFFFFFFFF8;
      v224 = v32;
      (*(v219 + 16))(v40, a2, v220);
      v45 = (&v40[v13] & v42);
      v46 = (&a2[v13] & v42);
      v47 = v46[v224];
      v48 = v47 - 10;
      if (v47 >= 0xA)
      {
        if (v224 <= 3)
        {
          v49 = v224;
        }

        else
        {
          v49 = 4;
        }

        switch(v49)
        {
          case 1:
            v50 = *v46;
            goto LABEL_80;
          case 2:
            v50 = *v46;
            goto LABEL_80;
          case 3:
            v50 = *v46 | (v46[2] << 16);
            goto LABEL_80;
          case 4:
            v50 = *v46;
LABEL_80:
            if (v224 < 4)
            {
              v47 = (v50 | (v48 << (8 * v224))) + 10;
            }

            else
            {
              v47 = v50 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v47)
      {
        case 0u:
          v65 = v40;
          v66 = v45;
          (*(v215 + 16))(v45, v46, v216);
          *(v45 + v224) = 0;
          goto LABEL_174;
        case 1u:
          (*(v215 + 16))(v45, v46, v216);
          *((v45 + v235) & 0xFFFFFFFFFFFFFFF8) = *(&v46[v235] & 0xFFFFFFFFFFFFFFF8);
          *(v45 + v224) = 1;
          sub_1DD0DCF8C();
        case 2u:
          v65 = v40;
          v66 = v45;
          *v45 = *v46;
          v45[1] = *(v46 + 1);
          v45[2] = *(v46 + 2);
          *(v45 + v224) = 2;

          goto LABEL_146;
        case 3u:
          v65 = v40;
          v66 = v45;
          *v45 = *v46;
          *(v45 + v224) = 3;
          swift_unknownObjectRetain();
          goto LABEL_174;
        case 4u:
          v65 = v40;
          v66 = v45;
          v72 = v45;
          v73 = v224;
          (*(v213 + 16))(v72, v46, v214);
          v74 = 4;
          goto LABEL_106;
        case 5u:
          v65 = v40;
          v84 = *v46;
          v66 = v45;
          *v45 = *v46;
          *(v45 + v224) = 5;
          v85 = v84;
          goto LABEL_174;
        case 6u:
          v65 = v40;
          v66 = v45;
          (*(v239 + 16))(v45, v46, v218);
          v86 = ((v45 + v16) & v202);
          v87 = (&v46[v16] & v202);
          if (__swift_getEnumTagSinglePayload(v87, 1, v217))
          {
            memcpy(v86, v87, __n);
          }

          else
          {
            (*(v229 + 16))(v86, v87, v217);
            __swift_storeEnumTagSinglePayload(v86, 0, 1, v217);
          }

          v134 = ((v86 + v200) & 0xFFFFFFFFFFFFFFF8);
          v135 = ((v87 + v200) & 0xFFFFFFFFFFFFFFF8);
          *v134 = *v135;
          v134[1] = v135[1];
          v136 = (v134 + 19) & 0xFFFFFFFFFFFFFFF8;
          v137 = (v135 + 19) & 0xFFFFFFFFFFFFFFF8;
          v138 = *v137;
          *(v136 + 4) = *(v137 + 4);
          *v136 = v138;
          *(v45 + v224) = 6;
          goto LABEL_146;
        case 7u:
          v65 = v40;
          v66 = v45;
          (*(v239 + 16))(v45, v46, v218);
          v80 = ((v45 + v16) & v202);
          v81 = (&v46[v16] & v202);
          if (__swift_getEnumTagSinglePayload(v81, 1, v217))
          {
            memcpy(v80, v81, __n);
          }

          else
          {
            (*(v229 + 16))(v80, v81, v217);
            __swift_storeEnumTagSinglePayload(v80, 0, 1, v217);
          }

          v112 = ((v80 + v200) & 0xFFFFFFFFFFFFFFF8);
          v113 = ((v81 + v200) & 0xFFFFFFFFFFFFFFF8);
          *v112 = *v113;
          v112[1] = v113[1];
          v114 = (v112 + 19) & 0xFFFFFFFFFFFFFFF8;
          v115 = (v113 + 19) & 0xFFFFFFFFFFFFFFF8;
          v116 = *v115;
          *(v114 + 4) = *(v115 + 4);
          *v114 = v116;
          v117 = ((v45 + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
          v118 = (&v46[v22 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v117 = *v118;
          v117[1] = v118[1];
          v119 = ((v117 + 23) & 0xFFFFFFFFFFFFFFF8);
          v120 = ((v118 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v119 = *v120;
          v119[1] = v120[1];
          v121 = ((v119 + 23) & 0xFFFFFFFFFFFFFFF8);
          v122 = ((v120 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v121 = *v122;
          v121[1] = v122[1];
          *(v45 + v224) = 7;

LABEL_146:

          goto LABEL_174;
        case 8u:
          (*(v211 + 16))(v45, v46, v212);
          v88 = ((v45 + v233 + 7) & 0xFFFFFFFFFFFFFFF8);
          v89 = (&v46[v233 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v88 = *v89;
          v88[1] = v89[1];
          v90 = ((v88 + v227) & v43);
          v91 = ((v89 + v227) & v43);

          v221 = v46;
          if (v26 != v237)
          {
            v95 = ((v91 + v16) & v202);
            if (v27 == v237)
            {
              v96 = v217;
              v66 = v45;
              if (v194 < 2)
              {
                v92 = v218;
LABEL_154:
                v97 = v239;
                v94 = ~v7;
                goto LABEL_155;
              }

              v92 = v218;
              if (__swift_getEnumTagSinglePayload((v91 + v16) & v202, v194, v217) >= 2)
              {
                goto LABEL_171;
              }
            }

            else
            {
              v144 = *(((v95 + v200) & 0xFFFFFFFFFFFFFFF8) + 8);
              if (v144 >= 0xFFFFFFFF)
              {
                LODWORD(v144) = -1;
              }

              v92 = v218;
              v66 = v45;
              if ((v144 + 1) >= 2)
              {
                goto LABEL_171;
              }
            }

            v96 = v217;
            goto LABEL_154;
          }

          v92 = v218;
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v91, v26, v218);
          v66 = v45;
          if (EnumTagSinglePayload)
          {
LABEL_171:
            memcpy(v90, v91, v22);
LABEL_172:
            v151 = __n;
            goto LABEL_173;
          }

          v94 = ~v7;
          v95 = ((v91 + v16) & v202);
          v96 = v217;
          v97 = v239;
LABEL_155:
          (*(v97 + 16))(v90, v91, v92);
          if (__swift_getEnumTagSinglePayload(v95, 1, v96))
          {
            memcpy(((v90 + v16) & v94), v95, __n);
          }

          else
          {
            (*(v229 + 16))((v90 + v16) & v94, v95, v96);
            __swift_storeEnumTagSinglePayload((v90 + v16) & v94, 0, 1, v96);
          }

          v146 = ((v200 + ((v90 + v16) & v94)) & 0xFFFFFFFFFFFFFFF8);
          v147 = ((v95 + v200) & 0xFFFFFFFFFFFFFFF8);
          *v146 = *v147;
          v146[1] = v147[1];
          v148 = (v146 + 19) & 0xFFFFFFFFFFFFFFF8;
          v149 = (v147 + 19) & 0xFFFFFFFFFFFFFFF8;
          v150 = *v149;
          *(v148 + 4) = *(v149 + 4);
          *v148 = v150;

          v151 = v192;
          if (!v194)
          {
            goto LABEL_172;
          }

LABEL_173:
          v158 = (((v196 + v151 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
          v159 = ((v90 + v158 + 7) & 0xFFFFFFFFFFFFFFF8);
          v160 = *((v91 + v158 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v159 = v160;
          *(v66 + v224) = 8;
          v161 = v160;
          v65 = a1;
          v46 = v221;
LABEL_174:
          v162 = (&v46[v208 + 7] & 0xFFFFFFFFFFFFFFF8);
          v163 = ((v66 + v208 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v163 = *v162;
          v164 = (v163 + 15) & 0xFFFFFFFFFFFFFFF8;
          v165 = (v162 + 15) & 0xFFFFFFFFFFFFFFF8;
          v166 = *(v165 + 24);

          if (v166 < 0xFFFFFFFF)
          {
            v167 = *v165;
            v168 = *(v165 + 16);
            *(v164 + 32) = *(v165 + 32);
            *v164 = v167;
            *(v164 + 16) = v168;
          }

          else
          {
            *(v164 + 24) = v166;
            *(v164 + 32) = *(v165 + 32);
            (**(v166 - 8))(v164, v165, v166);
          }

          v169 = v206;
          *(v164 + 40) = *(v165 + 40);
          v170 = ((v204 + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
          v40 = v65;
          v171 = &v65[v170 + 7] & 0xFFFFFFFFFFFFFFF8;
          v172 = &a2[v170 + 7] & 0xFFFFFFFFFFFFFFF8;
          *v171 = *v172;
          v173 = *(v172 + 8);
          *(v171 + 24) = *(v172 + 24);
          *(v171 + 8) = v173;
          v174 = *(v172 + 32);
          *(v171 + 40) = *(v172 + 40);
          *(v171 + 32) = v174;
          v175 = 2;
LABEL_186:
          v65[v169] = v175;
LABEL_187:

          return v40;
        case 9u:
          v65 = v40;
          v66 = v45;
          v75 = v45;
          v73 = v224;
          (*(v231 + 16))(v75, v46, v210);
          v74 = 9;
LABEL_106:
          *(v66 + v73) = v74;
          goto LABEL_174;
        default:
          v65 = v40;
          v66 = v45;
          memcpy(v45, v46, v208);
          goto LABEL_174;
      }

    case 3u:
      v203 = ~v7;
      v195 = v18;
      v193 = v19;
      v197 = v17;
      __na = v20;
      v201 = v20 + 7;
      v207 = v36;
      v209 = v32 + 1;
      v205 = (v32 + (v13 & ~v12) + 8) & 0xFFFFFFFFFFFFFFF8;
      v225 = v32;
      (*(v219 + 16))(v40, a2, v220);
      v51 = (&v40[v13] & v42);
      v52 = (&a2[v13] & v42);
      v53 = v52[v225];
      v54 = v53 - 10;
      if (v53 >= 0xA)
      {
        if (v225 <= 3)
        {
          v55 = v225;
        }

        else
        {
          v55 = 4;
        }

        switch(v55)
        {
          case 1:
            v56 = *v52;
            goto LABEL_88;
          case 2:
            v56 = *v52;
            goto LABEL_88;
          case 3:
            v56 = *v52 | (v52[2] << 16);
            goto LABEL_88;
          case 4:
            v56 = *v52;
LABEL_88:
            if (v225 < 4)
            {
              v53 = (v56 | (v54 << (8 * v225))) + 10;
            }

            else
            {
              v53 = v56 + 10;
            }

            break;
          default:
            goto LABEL_91;
        }
      }

      break;
    case 4u:
      *v40 = *a2;
      *(v40 + 8) = *(a2 + 8);
      v40[24] = a2[24];
      *(v40 + 4) = *(a2 + 4);
      v40[40] = a2[40];
      v44 = 4;
LABEL_68:
      v40[v36] = v44;
      goto LABEL_187;
    case 5u:
      v58 = a2[v35];
      v59 = v58 - 2;
      if (v58 >= 2)
      {
        if (v35 <= 3)
        {
          v60 = v35;
        }

        else
        {
          v60 = 4;
        }

        switch(v60)
        {
          case 1:
            v61 = *a2;
            goto LABEL_95;
          case 2:
            v61 = *a2;
            goto LABEL_95;
          case 3:
            v61 = *a2 | (a2[2] << 16);
            goto LABEL_95;
          case 4:
            v61 = *a2;
LABEL_95:
            if (v35 < 4)
            {
              v58 = (v61 | (v59 << (8 * v35))) + 2;
            }

            else
            {
              v58 = v61 + 2;
            }

            break;
          default:
            break;
        }
      }

      v68 = v36;
      if (v58 == 1)
      {
        v69 = v40;
        v70 = *a2;
        v71 = *a2;
        *v69 = v70;
        v40 = v69;
        v69[8] = a2[8];
        v69[v35] = 1;
      }

      else if (v58)
      {
        memcpy(v40, a2, v35 + 1);
      }

      else
      {
        (*(v34 + 16))(v40);
        v40[v35] = 0;
      }

      v40[v68] = 5;
      return v40;
    case 6u:
      v62 = *a2;
      v63 = v36;
      v64 = *a2;
      *v40 = v62;
      v40[8] = a2[8];
      v40[v63] = 6;
      return v40;
    default:

      return memcpy(v40, a2, v36 + 1);
  }

LABEL_91:
  switch(v53)
  {
    case 0u:
      v65 = v40;
      v67 = v51;
      (*(v215 + 16))(v51, v52, v216);
      *(v51 + v225) = 0;
      goto LABEL_182;
    case 1u:
      (*(v215 + 16))(v51, v52, v216);
      *((v51 + v235) & 0xFFFFFFFFFFFFFFF8) = *(&v52[v235] & 0xFFFFFFFFFFFFFFF8);
      *(v51 + v225) = 1;
      sub_1DD0DCF8C();
    case 2u:
      v65 = v40;
      v67 = v51;
      *v51 = *v52;
      v51[1] = *(v52 + 1);
      v51[2] = *(v52 + 2);
      *(v51 + v225) = 2;

      goto LABEL_149;
    case 3u:
      v65 = v40;
      v67 = v51;
      *v51 = *v52;
      *(v51 + v225) = 3;
      swift_unknownObjectRetain();
      goto LABEL_182;
    case 4u:
      v65 = v40;
      v67 = v51;
      v76 = v51;
      v77 = v225;
      (*(v213 + 16))(v76, v52, v214);
      v78 = 4;
      goto LABEL_110;
    case 5u:
      v65 = v40;
      v98 = *v52;
      v67 = v51;
      *v51 = *v52;
      *(v51 + v225) = 5;
      v99 = v98;
      goto LABEL_182;
    case 6u:
      v65 = v40;
      v67 = v51;
      (*(v239 + 16))(v51, v52, v218);
      v100 = ((v51 + v16) & v203);
      v101 = (&v52[v16] & v203);
      if (__swift_getEnumTagSinglePayload(v101, 1, v217))
      {
        memcpy(v100, v101, __na);
      }

      else
      {
        (*(v229 + 16))(v100, v101, v217);
        __swift_storeEnumTagSinglePayload(v100, 0, 1, v217);
      }

      v139 = ((v100 + v201) & 0xFFFFFFFFFFFFFFF8);
      v140 = ((v101 + v201) & 0xFFFFFFFFFFFFFFF8);
      *v139 = *v140;
      v139[1] = v140[1];
      v141 = (v139 + 19) & 0xFFFFFFFFFFFFFFF8;
      v142 = (v140 + 19) & 0xFFFFFFFFFFFFFFF8;
      v143 = *v142;
      *(v141 + 4) = *(v142 + 4);
      *v141 = v143;
      *(v51 + v225) = 6;
      goto LABEL_149;
    case 7u:
      v65 = v40;
      v67 = v51;
      (*(v239 + 16))(v51, v52, v218);
      v82 = ((v51 + v16) & v203);
      v83 = (&v52[v16] & v203);
      if (__swift_getEnumTagSinglePayload(v83, 1, v217))
      {
        memcpy(v82, v83, __na);
      }

      else
      {
        (*(v229 + 16))(v82, v83, v217);
        __swift_storeEnumTagSinglePayload(v82, 0, 1, v217);
      }

      v123 = ((v82 + v201) & 0xFFFFFFFFFFFFFFF8);
      v124 = ((v83 + v201) & 0xFFFFFFFFFFFFFFF8);
      *v123 = *v124;
      v123[1] = v124[1];
      v125 = (v123 + 19) & 0xFFFFFFFFFFFFFFF8;
      v126 = (v124 + 19) & 0xFFFFFFFFFFFFFFF8;
      v127 = *v126;
      *(v125 + 4) = *(v126 + 4);
      *v125 = v127;
      v128 = ((v51 + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
      v129 = (&v52[v22 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v128 = *v129;
      v128[1] = v129[1];
      v130 = ((v128 + 23) & 0xFFFFFFFFFFFFFFF8);
      v131 = ((v129 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v130 = *v131;
      v130[1] = v131[1];
      v132 = ((v130 + 23) & 0xFFFFFFFFFFFFFFF8);
      v133 = ((v131 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v132 = *v133;
      v132[1] = v133[1];
      *(v51 + v225) = 7;

LABEL_149:

      goto LABEL_182;
    case 8u:
      (*(v211 + 16))(v51, v52, v212);
      v102 = ((v51 + v233 + 7) & 0xFFFFFFFFFFFFFFF8);
      v103 = (&v52[v233 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v102 = *v103;
      v102[1] = v103[1];
      v104 = ((v102 + v227) & v43);
      v105 = ((v103 + v227) & v43);

      v222 = v52;
      if (v26 == v237)
      {
        v106 = v218;
        v107 = __swift_getEnumTagSinglePayload(v105, v26, v218);
        v67 = v51;
        if (!v107)
        {
          v108 = ~v7;
          v109 = ((v105 + v16) & v203);
          v110 = v217;
          v111 = v239;
          goto LABEL_162;
        }

LABEL_179:
        memcpy(v104, v105, v22);
        goto LABEL_180;
      }

      v109 = ((v105 + v16) & v203);
      if (v27 == v237)
      {
        v110 = v217;
        v67 = v51;
        if (v195 < 2)
        {
          v106 = v218;
LABEL_161:
          v111 = v239;
          v108 = ~v7;
LABEL_162:
          (*(v111 + 16))(v104, v105, v106);
          if (__swift_getEnumTagSinglePayload(v109, 1, v110))
          {
            memcpy(((v104 + v16) & v108), v109, __na);
          }

          else
          {
            (*(v229 + 16))((v104 + v16) & v108, v109, v110);
            __swift_storeEnumTagSinglePayload((v104 + v16) & v108, 0, 1, v110);
          }

          v152 = ((v201 + ((v104 + v16) & v108)) & 0xFFFFFFFFFFFFFFF8);
          v153 = ((v109 + v201) & 0xFFFFFFFFFFFFFFF8);
          *v152 = *v153;
          v152[1] = v153[1];
          v154 = (v152 + 19) & 0xFFFFFFFFFFFFFFF8;
          v155 = (v153 + 19) & 0xFFFFFFFFFFFFFFF8;
          v156 = *v155;
          *(v154 + 4) = *(v155 + 4);
          *v154 = v156;

          v157 = v193;
          if (v195)
          {
LABEL_181:
            v176 = (((v197 + v157 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
            v177 = ((v104 + v176 + 7) & 0xFFFFFFFFFFFFFFF8);
            v178 = *((v105 + v176 + 7) & 0xFFFFFFFFFFFFFFF8);
            *v177 = v178;
            *(v67 + v225) = 8;
            v179 = v178;
            v65 = a1;
            v52 = v222;
LABEL_182:
            v180 = (&v52[v209 + 7] & 0xFFFFFFFFFFFFFFF8);
            v181 = ((v67 + v209 + 7) & 0xFFFFFFFFFFFFFFF8);
            *v181 = *v180;
            v182 = (v181 + 15) & 0xFFFFFFFFFFFFFFF8;
            v183 = (v180 + 15) & 0xFFFFFFFFFFFFFFF8;
            v184 = *(v183 + 24);

            if (v184 < 0xFFFFFFFF)
            {
              v185 = *v183;
              v186 = *(v183 + 16);
              *(v182 + 32) = *(v183 + 32);
              *v182 = v185;
              *(v182 + 16) = v186;
            }

            else
            {
              *(v182 + 24) = v184;
              *(v182 + 32) = *(v183 + 32);
              (**(v184 - 8))(v182, v183, v184);
            }

            v169 = v207;
            *(v182 + 40) = *(v183 + 40);
            v187 = ((v205 + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
            v40 = v65;
            v188 = &v65[v187 + 7] & 0xFFFFFFFFFFFFFFF8;
            v189 = &a2[v187 + 7] & 0xFFFFFFFFFFFFFFF8;
            *v188 = *v189;
            v190 = *(v189 + 8);
            *(v188 + 24) = *(v189 + 24);
            *(v188 + 8) = v190;
            v191 = *(v189 + 32);
            *(v188 + 40) = *(v189 + 40);
            *(v188 + 32) = v191;
            v175 = 3;
            goto LABEL_186;
          }

LABEL_180:
          v157 = __na;
          goto LABEL_181;
        }

        v106 = v218;
        if (__swift_getEnumTagSinglePayload((v105 + v16) & v203, v195, v217) >= 2)
        {
          goto LABEL_179;
        }
      }

      else
      {
        v145 = *(((v109 + v201) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v145 >= 0xFFFFFFFF)
        {
          LODWORD(v145) = -1;
        }

        v106 = v218;
        v67 = v51;
        if ((v145 + 1) >= 2)
        {
          goto LABEL_179;
        }
      }

      v110 = v217;
      goto LABEL_161;
    case 9u:
      v65 = v40;
      v67 = v51;
      v79 = v51;
      v77 = v225;
      (*(v231 + 16))(v79, v52, v210);
      v78 = 9;
LABEL_110:
      *(v67 + v77) = v78;
      goto LABEL_182;
    default:
      v65 = v40;
      v67 = v51;
      memcpy(v51, v52, v209);
      goto LABEL_182;
  }
}

unsigned __int8 *sub_1DCE82954(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v4 = sub_1DD0DB04C();
    v247 = *(v4 - 8);
    v248 = v4;
    v261 = *(v247 + 64);
    v244 = sub_1DD0DC76C();
    v257 = *(v244 - 8);
    v265 = v3;
    v243 = v257;
    v5 = *(v257 + 80);
    v238 = sub_1DD0DB1EC();
    v259 = *(v238 - 8);
    v237 = v259;
    v249 = *(v259 + 80) | v5;
    v245 = sub_1DD0DB4BC();
    v255 = *(v245 - 8);
    v266 = v255;
    v6 = *(v255 + 80) & 0xF8;
    v246 = sub_1DD0DB3EC();
    v7 = *(v246 - 8);
    v8 = *(v7 + 80);
    v9 = v6 | v8 | 7;
    v236 = sub_1DD0DD12C();
    v251 = *(v236 - 8);
    v235 = v251;
    v10 = *(v251 + 80);
    v11 = sub_1DD0DD08C();
    v12 = v9;
    v234 = v11;
    v13 = v11;
    v14 = v8;
    v15 = *(v13 - 8);
    v233 = v15;
    v16 = (v249 | (v10 | *(v15 + 80))) & 0xF8 | v9;
    v17 = v261 + v16;
    v18 = *(v257 + 64);
    v232 = v18 + 7;
    if (((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v18)
    {
      v18 = ((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    if (v18 <= *(v259 + 64))
    {
      v18 = *(v259 + 64);
    }

    v258 = *(v255 + 64) + v8;
    v227 = v7;
    v19 = *(v7 + 84);
    v20 = *(v7 + 64);
    v3 = v265;
    v226 = v20;
    if (!v19)
    {
      ++v20;
    }

    v242 = v20;
    v250 = v20 + 7;
    v240 = v258 & ~v8;
    v21 = (v20 + 7 + v240) & 0xFFFFFFFFFFFFFFF8;
    v22 = (v21 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
    if (v18 <= v22)
    {
      v18 = (v21 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
    }

    v23 = v21 + 31;
    if (v18 <= (((((v23 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
    {
      v18 = (((((v23 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    v229 = *(v251 + 64);
    v230 = v9 + 16;
    v24 = *(v255 + 84);
    v239 = *(v7 + 84);
    v25 = v19 != 0;
    v26 = v19 - 1;
    if (v25)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    if (v27 <= v24)
    {
      v28 = *(v255 + 84);
    }

    else
    {
      v28 = v27;
    }

    if (v28 <= 0x7FFFFFFE)
    {
      v28 = 2147483646;
    }

    v231 = v28;
    v29 = ((v23 + ((v9 + 16 + ((v229 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
    if (v18 <= v29)
    {
      v18 = v29;
    }

    v30 = *(v15 + 64);
    if (v18 > v30)
    {
      v30 = v18;
    }

    if (v30 <= 0x18)
    {
      v31 = 24;
    }

    else
    {
      v31 = v30;
    }

    v32 = (v31 + (v17 & ~v16) + 8) & 0xFFFFFFFFFFFFFFF8;
    v33 = *(a3 + 24);
    v252 = *(v33 - 8);
    if (*(v252 + 64) <= 9uLL)
    {
      v34 = 9;
    }

    else
    {
      v34 = *(v252 + 64);
    }

    if (((v32 + 63) & 0xFFFFFFFFFFFFFFF8) + 41 <= v34 + 1)
    {
      v35 = v34 + 1;
    }

    else
    {
      v35 = ((v32 + 63) & 0xFFFFFFFFFFFFFFF8) + 41;
    }

    if (v35 <= 0x29)
    {
      v36 = 41;
    }

    else
    {
      v36 = v35;
    }

    v37 = v265[v36];
    v38 = v37 - 7;
    if (v37 < 7)
    {
      v40 = a2;
    }

    else
    {
      if (v36 <= 3)
      {
        v39 = v36;
      }

      else
      {
        v39 = 4;
      }

      v40 = a2;
      switch(v39)
      {
        case 1:
          v41 = *v265;
          goto LABEL_46;
        case 2:
          v41 = *v265;
          goto LABEL_46;
        case 3:
          v41 = *v265 | (v265[2] << 16);
          goto LABEL_46;
        case 4:
          v41 = *v265;
LABEL_46:
          if (v36 < 4)
          {
            v41 |= v38 << (8 * v36);
          }

          v37 = v41 + 7;
          break;
        default:
          break;
      }
    }

    v260 = ~v16;
    v262 = v31 + 1;
    v256 = ~v14;
    v228 = ~v12;
    v241 = 8 * v34;
    v264 = v31;
    switch(v37)
    {
      case 0u:
      case 1u:
      case 4u:
        goto LABEL_126;
      case 2u:
        (*(v247 + 8))(v265, v248);
        v42 = (&v265[v17] & v260);
        v47 = *(v42 + v264);
        v48 = v47 - 10;
        if (v47 >= 0xA)
        {
          if (v264 <= 3)
          {
            v49 = v264;
          }

          else
          {
            v49 = 4;
          }

          switch(v49)
          {
            case 1:
              v50 = *v42;
              goto LABEL_79;
            case 2:
              v50 = *v42;
              goto LABEL_79;
            case 3:
              v50 = *v42 | (*((&v265[v17] & v260) + 2) << 16);
              goto LABEL_79;
            case 4:
              v50 = *v42;
LABEL_79:
              if (v264 < 4)
              {
                v47 = (v50 | (v48 << (8 * v264))) + 10;
              }

              else
              {
                v47 = v50 + 10;
              }

              break;
            default:
              break;
          }
        }

        v225 = v32;
        switch(v47)
        {
          case 0u:
            goto LABEL_83;
          case 1u:
            goto LABEL_92;
          case 2u:
            goto LABEL_87;
          case 3u:
            goto LABEL_88;
          case 4u:
            goto LABEL_84;
          case 5u:
            goto LABEL_93;
          case 6u:
            goto LABEL_95;
          case 7u:
            goto LABEL_89;
          case 8u:
            goto LABEL_98;
          case 9u:
            goto LABEL_85;
          default:
            goto LABEL_123;
        }

        goto LABEL_123;
      case 3u:
        (*(v247 + 8))(v265, v248);
        v42 = (&v265[v17] & v260);
        v43 = *(v42 + v264);
        v44 = v43 - 10;
        if (v43 >= 0xA)
        {
          if (v264 <= 3)
          {
            v45 = v264;
          }

          else
          {
            v45 = 4;
          }

          switch(v45)
          {
            case 1:
              v46 = *v42;
              goto LABEL_71;
            case 2:
              v46 = *v42;
              goto LABEL_71;
            case 3:
              v46 = *v42 | (*((&v265[v17] & v260) + 2) << 16);
              goto LABEL_71;
            case 4:
              v46 = *v42;
LABEL_71:
              if (v264 < 4)
              {
                v43 = (v46 | (v44 << (8 * v264))) + 10;
              }

              else
              {
                v43 = v46 + 10;
              }

              break;
            default:
              goto LABEL_74;
          }
        }

        break;
      case 5u:
        v51 = v265[v34];
        v52 = v51 - 2;
        if (v51 >= 2)
        {
          if (v34 <= 3)
          {
            v53 = v34;
          }

          else
          {
            v53 = 4;
          }

          switch(v53)
          {
            case 1:
              v54 = *v265;
              goto LABEL_103;
            case 2:
              v54 = *v265;
              goto LABEL_103;
            case 3:
              v54 = *v265 | (v265[2] << 16);
              goto LABEL_103;
            case 4:
              v54 = *v265;
LABEL_103:
              if (v34 < 4)
              {
                v51 = (v54 | (v52 << v241)) + 2;
              }

              else
              {
                v51 = v54 + 2;
              }

              break;
            default:
              break;
          }
        }

        if (v51 == 1)
        {
          goto LABEL_109;
        }

        if (!v51)
        {
          (*(v252 + 8))(v265, v33);
        }

        goto LABEL_127;
      case 6u:
LABEL_109:

        goto LABEL_127;
      default:
        goto LABEL_127;
    }

LABEL_74:
    v225 = v32;
    switch(v43)
    {
      case 0u:
LABEL_83:
        v56 = v243;
        v55 = v244;
        goto LABEL_86;
      case 1u:
LABEL_92:
        v57 = v42;
        (*(v243 + 8))(v42, v244);

        goto LABEL_94;
      case 2u:
LABEL_87:
        v57 = v42;

        goto LABEL_94;
      case 3u:
LABEL_88:
        v57 = v42;
        swift_unknownObjectRelease();
        goto LABEL_94;
      case 4u:
LABEL_84:
        v56 = v237;
        v55 = v238;
        goto LABEL_86;
      case 5u:
LABEL_93:
        v57 = v42;

        goto LABEL_94;
      case 6u:
LABEL_95:
        v59 = v42;
        (*(v266 + 8))(v42, v245);
        v224 = v59;
        v60 = (v59 + v258) & v256;
        if (!__swift_getEnumTagSinglePayload(v60, 1, v246))
        {
          (*(v227 + 8))(v60, v246);
        }

        goto LABEL_97;
      case 7u:
LABEL_89:
        v58 = v42;
        (*(v266 + 8))(v42, v245);
        if (!__swift_getEnumTagSinglePayload((v58 + v258) & v256, 1, v246))
        {
          (*(v227 + 8))((v58 + v258) & v256, v246);
        }

        v224 = v58;

LABEL_97:

        goto LABEL_122;
      case 8u:
LABEL_98:
        v61 = v42;
        (*(v235 + 8))(v42, v236);
        v224 = v61;

        v62 = (v230 + ((v61 + v229 + 7) & 0xFFFFFFFFFFFFFFF8)) & v228;
        if (v24 == v231)
        {
          if (__swift_getEnumTagSinglePayload(v62, v24, v245))
          {
            goto LABEL_121;
          }

          v223 = (v258 + v62) & v256;
          goto LABEL_118;
        }

        v63 = (v258 + v62) & v256;
        if (v27 == v231)
        {
          v223 = (v258 + v62) & v256;
          if (v239 >= 2 && __swift_getEnumTagSinglePayload(v63, v239, v246) >= 2)
          {
            goto LABEL_121;
          }

          goto LABEL_118;
        }

        v64 = *(((v250 + v63) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v64 >= 0xFFFFFFFF)
        {
          LODWORD(v64) = -1;
        }

        if ((v64 + 1) < 2)
        {
          v223 = (v258 + v62) & v256;
LABEL_118:
          (*(v266 + 8))(v62, v245);
          if (!__swift_getEnumTagSinglePayload(v223, 1, v246))
          {
            (*(v227 + 8))(v223, v246);
          }
        }

LABEL_121:

LABEL_122:
        v42 = v224;
LABEL_123:
        v65 = ((v42 + v262 + 7) & 0xFFFFFFFFFFFFFFF8) + 15;

        if (*((v65 & 0xFFFFFFFFFFFFFFF8) + 24) >= 0xFFFFFFFFuLL)
        {
          __swift_destroy_boxed_opaque_existential_1Tm((v65 & 0xFFFFFFFFFFFFFFF8));
        }

        v32 = v225;
LABEL_126:

LABEL_127:
        v66 = v40[v36];
        v67 = v66 - 7;
        if (v66 >= 7)
        {
          if (v36 <= 3)
          {
            v68 = v36;
          }

          else
          {
            v68 = 4;
          }

          switch(v68)
          {
            case 1:
              v69 = *v40;
              goto LABEL_136;
            case 2:
              v69 = *v40;
              goto LABEL_136;
            case 3:
              v69 = *v40 | (v40[2] << 16);
              goto LABEL_136;
            case 4:
              v69 = *v40;
LABEL_136:
              if (v36 < 4)
              {
                v66 = (v69 | (v67 << (8 * v36))) + 7;
              }

              else
              {
                v66 = v69 + 7;
              }

              break;
            default:
              goto LABEL_139;
          }
        }

        break;
      case 9u:
LABEL_85:
        v56 = v233;
        v55 = v234;
LABEL_86:
        v57 = v42;
        (*(v56 + 8))(v42, v55);
LABEL_94:
        v42 = v57;
        goto LABEL_123;
      default:
        goto LABEL_123;
    }

LABEL_139:
    switch(v66)
    {
      case 0u:
        *v265 = *v40;
        v70 = *(v40 + 8);
        v265[24] = v40[24];
        *(v265 + 8) = v70;
        v71 = *(v40 + 4);
        v265[40] = v40[40];
        *(v265 + 4) = v71;
        v265[v36] = 0;
        goto LABEL_279;
      case 1u:
        *v265 = *v40;
        v88 = *(v40 + 8);
        v265[24] = v40[24];
        *(v265 + 8) = v88;
        v89 = *(v40 + 4);
        v265[40] = v40[40];
        *(v265 + 4) = v89;
        v74 = 1;
        goto LABEL_278;
      case 2u:
        (*(v247 + 16))(v265, v40, v248);
        v75 = (&v265[v17] & v260);
        v76 = (&v40[v17] & v260);
        v77 = v76[v264];
        v78 = v77 - 10;
        if (v77 >= 0xA)
        {
          if (v264 <= 3)
          {
            v79 = v264;
          }

          else
          {
            v79 = 4;
          }

          switch(v79)
          {
            case 1:
              v80 = *v76;
              goto LABEL_169;
            case 2:
              v80 = *v76;
              goto LABEL_169;
            case 3:
              v80 = *v76 | (*((&v40[v17] & v260) + 2) << 16);
              goto LABEL_169;
            case 4:
              v80 = *v76;
LABEL_169:
              if (v264 < 4)
              {
                v77 = (v80 | (v78 << (8 * v264))) + 10;
              }

              else
              {
                v77 = v80 + 10;
              }

              break;
            default:
              break;
          }
        }

        switch(v77)
        {
          case 0u:
            (*(v243 + 16))(&v265[v17] & v260, &v40[v17] & v260, v244);
            *(v75 + v264) = 0;
            goto LABEL_259;
          case 1u:
            (*(v243 + 16))(&v265[v17] & v260, &v40[v17] & v260, v244);
            *((v75 + v232) & 0xFFFFFFFFFFFFFFF8) = *(&v76[v232] & 0xFFFFFFFFFFFFFFF8);
            *(v75 + v264) = 1;
            sub_1DD0DCF8C();
          case 2u:
            *v75 = *v76;
            *((&v265[v17] & v260) + 8) = *((&v40[v17] & v260) + 8);
            *((&v265[v17] & v260) + 0x10) = *((&v40[v17] & v260) + 0x10);
            *(v75 + v264) = 2;

            goto LABEL_236;
          case 3u:
            *v75 = *v76;
            *(v75 + v264) = 3;
            swift_unknownObjectRetain();
            goto LABEL_259;
          case 4u:
            v99 = &v265[v17] & v260;
            v100 = &v40[v17] & v260;
            v101 = v264;
            (*(v237 + 16))(v99, v100, v238);
            v102 = 4;
            goto LABEL_196;
          case 5u:
            v115 = *v76;
            *v75 = *v76;
            *(v75 + v264) = 5;
            goto LABEL_258;
          case 6u:
            (*(v266 + 16))(&v265[v17] & v260, &v40[v17] & v260, v245);
            v116 = ((v75 + v258) & v256);
            v117 = (&v76[v258] & v256);
            if (__swift_getEnumTagSinglePayload(v117, 1, v246))
            {
              memcpy(v116, v117, v242);
            }

            else
            {
              (*(v227 + 16))(v116, v117, v246);
              __swift_storeEnumTagSinglePayload(v116, 0, 1, v246);
            }

            v167 = ((v116 + v250) & 0xFFFFFFFFFFFFFFF8);
            v168 = ((v117 + v250) & 0xFFFFFFFFFFFFFFF8);
            *v167 = *v168;
            v167[1] = v168[1];
            v169 = (v167 + 19) & 0xFFFFFFFFFFFFFFF8;
            v170 = (v168 + 19) & 0xFFFFFFFFFFFFFFF8;
            v171 = *v170;
            *(v169 + 4) = *(v170 + 4);
            *v169 = v171;
            *(v75 + v264) = 6;
            goto LABEL_236;
          case 7u:
            (*(v266 + 16))(&v265[v17] & v260, &v40[v17] & v260, v245);
            v111 = ((v75 + v258) & v256);
            v112 = (&v76[v258] & v256);
            if (__swift_getEnumTagSinglePayload(v112, 1, v246))
            {
              memcpy(v111, v112, v242);
            }

            else
            {
              (*(v227 + 16))(v111, v112, v246);
              __swift_storeEnumTagSinglePayload(v111, 0, 1, v246);
            }

            v145 = ((v111 + v250) & 0xFFFFFFFFFFFFFFF8);
            v146 = ((v112 + v250) & 0xFFFFFFFFFFFFFFF8);
            *v145 = *v146;
            v145[1] = v146[1];
            v147 = (v145 + 19) & 0xFFFFFFFFFFFFFFF8;
            v148 = (v146 + 19) & 0xFFFFFFFFFFFFFFF8;
            v149 = *v148;
            *(v147 + 4) = *(v148 + 4);
            *v147 = v149;
            v150 = ((v75 + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
            v151 = (&v76[v22 + 7] & 0xFFFFFFFFFFFFFFF8);
            *v150 = *v151;
            v150[1] = v151[1];
            v152 = ((v150 + 23) & 0xFFFFFFFFFFFFFFF8);
            v153 = ((v151 + 23) & 0xFFFFFFFFFFFFFFF8);
            *v152 = *v153;
            v152[1] = v153[1];
            v154 = ((v152 + 23) & 0xFFFFFFFFFFFFFFF8);
            v155 = ((v153 + 23) & 0xFFFFFFFFFFFFFFF8);
            *v154 = *v155;
            v154[1] = v155[1];
            *(v75 + v264) = 7;

LABEL_236:

            goto LABEL_259;
          case 8u:
            (*(v235 + 16))(&v265[v17] & v260, &v40[v17] & v260, v236);
            v118 = ((v75 + v229 + 7) & 0xFFFFFFFFFFFFFFF8);
            v119 = (&v76[v229 + 7] & 0xFFFFFFFFFFFFFFF8);
            *v118 = *v119;
            v118[1] = v119[1];
            v120 = ((v118 + v230) & v228);
            v121 = (v119 + v230) & v228;

            if (v24 == v231)
            {
              EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v121, v24, v245);
              v123 = v121;
              if (!EnumTagSinglePayload)
              {
                v124 = v120;
                v253 = v75;
                v126 = v256;
                v125 = v258;
                v127 = ((v258 + v121) & v256);
                v128 = v246;
LABEL_251:
                (*(v266 + 16))(v124, v123, v245);
                v179 = ((v124 + v125) & v126);
                if (__swift_getEnumTagSinglePayload(v127, 1, v128))
                {
                  memcpy(v179, v127, v242);
                }

                else
                {
                  (*(v227 + 16))(v179, v127, v128);
                  __swift_storeEnumTagSinglePayload(v179, 0, 1, v128);
                }

                v75 = v253;
                v180 = ((v179 + v250) & 0xFFFFFFFFFFFFFFF8);
                v181 = ((v127 + v250) & 0xFFFFFFFFFFFFFFF8);
                *v180 = *v181;
                v180[1] = v181[1];
                v182 = (v180 + 19) & 0xFFFFFFFFFFFFFFF8;
                v183 = (v181 + 19) & 0xFFFFFFFFFFFFFFF8;
                v184 = *v183;
                *(v182 + 4) = *(v183 + 4);
                *v182 = v184;

                v185 = v226;
                v120 = v124;
                if (!v239)
                {
                  goto LABEL_256;
                }

LABEL_257:
                v186 = (((v240 + v185 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
                v187 = ((v120 + v186 + 7) & 0xFFFFFFFFFFFFFFF8);
                v115 = *((v123 + v186 + 7) & 0xFFFFFFFFFFFFFFF8);
                *v187 = v115;
                *(v75 + v264) = 8;
LABEL_258:
                v188 = v115;
LABEL_259:
                v189 = (&v76[v262 + 7] & 0xFFFFFFFFFFFFFFF8);
                v190 = ((v75 + v262 + 7) & 0xFFFFFFFFFFFFFFF8);
                *v190 = *v189;
                v191 = (v190 + 15) & 0xFFFFFFFFFFFFFFF8;
                v192 = (v189 + 15) & 0xFFFFFFFFFFFFFFF8;
                v193 = *(v192 + 24);

                if (v193 < 0xFFFFFFFF)
                {
                  v194 = *v192;
                  v195 = *(v192 + 16);
                  *(v191 + 32) = *(v192 + 32);
                  *v191 = v194;
                  *(v191 + 16) = v195;
                }

                else
                {
                  *(v191 + 24) = v193;
                  *(v191 + 32) = *(v192 + 32);
                  (**(v193 - 8))(v191, v192, v193);
                }

                *(v191 + 40) = *(v192 + 40);
                v196 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
                v197 = &v265[v196 + 7] & 0xFFFFFFFFFFFFFFF8;
                v198 = &a2[v196 + 7] & 0xFFFFFFFFFFFFFFF8;
                *v197 = *v198;
                v199 = *(v198 + 8);
                *(v197 + 24) = *(v198 + 24);
                *(v197 + 8) = v199;
                v200 = *(v198 + 32);
                *(v197 + 40) = *(v198 + 40);
                *(v197 + 32) = v200;
                v74 = 2;
                goto LABEL_278;
              }

LABEL_253:
              memcpy(v120, v123, v22);
LABEL_256:
              v185 = v242;
              goto LABEL_257;
            }

            v123 = v121;
            v143 = v258 + v121;
            v127 = ((v258 + v121) & v256);
            if (v27 == v231)
            {
              v124 = v120;
              v128 = v246;
              if (v239 < 2)
              {
                v253 = v75;
LABEL_250:
                v126 = v256;
                v125 = v258;
                goto LABEL_251;
              }

              v120 = v124;
              if (__swift_getEnumTagSinglePayload(v143 & v256, v239, v246) >= 2)
              {
                goto LABEL_253;
              }
            }

            else
            {
              v177 = *(((v127 + v250) & 0xFFFFFFFFFFFFFFF8) + 8);
              if (v177 >= 0xFFFFFFFF)
              {
                LODWORD(v177) = -1;
              }

              if ((v177 + 1) >= 2)
              {
                goto LABEL_253;
              }

              v124 = v120;
            }

            v253 = v75;
            v128 = v246;
            goto LABEL_250;
          case 9u:
            v103 = &v265[v17] & v260;
            v104 = &v40[v17] & v260;
            v101 = v264;
            (*(v233 + 16))(v103, v104, v234);
            v102 = 9;
LABEL_196:
            *(v75 + v101) = v102;
            goto LABEL_259;
          default:
            memcpy((&v265[v17] & v260), (&v40[v17] & v260), v262);
            goto LABEL_259;
        }

      case 3u:
        (*(v247 + 16))(v265, v40, v248);
        v81 = (&v265[v17] & v260);
        v82 = (&v40[v17] & v260);
        v83 = v82[v264];
        v84 = v83 - 10;
        if (v83 >= 0xA)
        {
          if (v264 <= 3)
          {
            v85 = v264;
          }

          else
          {
            v85 = 4;
          }

          switch(v85)
          {
            case 1:
              v86 = *v82;
              goto LABEL_177;
            case 2:
              v86 = *v82;
              goto LABEL_177;
            case 3:
              v86 = *v82 | (*((&v40[v17] & v260) + 2) << 16);
              goto LABEL_177;
            case 4:
              v86 = *v82;
LABEL_177:
              if (v264 < 4)
              {
                v83 = (v86 | (v84 << (8 * v264))) + 10;
              }

              else
              {
                v83 = v86 + 10;
              }

              break;
            default:
              goto LABEL_180;
          }
        }

        break;
      case 4u:
        *v265 = *v40;
        v72 = *(v40 + 8);
        v265[24] = v40[24];
        *(v265 + 8) = v72;
        v73 = *(v40 + 4);
        v265[40] = v40[40];
        *(v265 + 4) = v73;
        v74 = 4;
        goto LABEL_278;
      case 5u:
        v90 = v40[v34];
        v91 = v90 - 2;
        if (v90 >= 2)
        {
          if (v34 <= 3)
          {
            v92 = v34;
          }

          else
          {
            v92 = 4;
          }

          switch(v92)
          {
            case 1:
              v93 = *v40;
              goto LABEL_184;
            case 2:
              v93 = *v40;
              goto LABEL_184;
            case 3:
              v93 = *v40 | (v40[2] << 16);
              goto LABEL_184;
            case 4:
              v93 = *v40;
LABEL_184:
              if (v34 < 4)
              {
                v90 = (v93 | (v91 << v241)) + 2;
              }

              else
              {
                v90 = v93 + 2;
              }

              break;
            default:
              break;
          }
        }

        if (v90 == 1)
        {
          v97 = *v40;
          v98 = *v40;
          *v265 = v97;
          v265[8] = v40[8];
          v265[v34] = 1;
        }

        else if (v90)
        {
          memcpy(v265, v40, v34 + 1);
        }

        else
        {
          (*(v252 + 16))(v265, v40, v33);
          v265[v34] = 0;
        }

        v96 = 5;
        goto LABEL_193;
      case 6u:
        v94 = *v40;
        v95 = *v40;
        *v265 = v94;
        v265[8] = v40[8];
        v96 = 6;
LABEL_193:
        v265[v36] = v96;
        return v3;
      default:

        return memcpy(v265, v40, v36 + 1);
    }

LABEL_180:
    switch(v83)
    {
      case 0u:
        (*(v243 + 16))(&v265[v17] & v260, &v40[v17] & v260, v244);
        *(v81 + v264) = 0;
        goto LABEL_274;
      case 1u:
        (*(v243 + 16))(&v265[v17] & v260, &v40[v17] & v260, v244);
        *((v81 + v232) & 0xFFFFFFFFFFFFFFF8) = *(&v82[v232] & 0xFFFFFFFFFFFFFFF8);
        *(v81 + v264) = 1;
        sub_1DD0DCF8C();
      case 2u:
        *v81 = *v82;
        *((&v265[v17] & v260) + 8) = *((&v40[v17] & v260) + 8);
        *((&v265[v17] & v260) + 0x10) = *((&v40[v17] & v260) + 0x10);
        *(v81 + v264) = 2;

        goto LABEL_239;
      case 3u:
        *v81 = *v82;
        *(v81 + v264) = 3;
        swift_unknownObjectRetain();
        goto LABEL_274;
      case 4u:
        v105 = &v265[v17] & v260;
        v106 = &v40[v17] & v260;
        v107 = v264;
        (*(v237 + 16))(v105, v106, v238);
        v108 = 4;
        goto LABEL_200;
      case 5u:
        v129 = *v82;
        *v81 = *v82;
        *(v81 + v264) = 5;
        goto LABEL_273;
      case 6u:
        (*(v266 + 16))(&v265[v17] & v260, &v40[v17] & v260, v245);
        v130 = ((v81 + v258) & v256);
        v131 = (&v82[v258] & v256);
        if (__swift_getEnumTagSinglePayload(v131, 1, v246))
        {
          memcpy(v130, v131, v242);
        }

        else
        {
          (*(v227 + 16))(v130, v131, v246);
          __swift_storeEnumTagSinglePayload(v130, 0, 1, v246);
        }

        v172 = ((v130 + v250) & 0xFFFFFFFFFFFFFFF8);
        v173 = ((v131 + v250) & 0xFFFFFFFFFFFFFFF8);
        *v172 = *v173;
        v172[1] = v173[1];
        v174 = (v172 + 19) & 0xFFFFFFFFFFFFFFF8;
        v175 = (v173 + 19) & 0xFFFFFFFFFFFFFFF8;
        v176 = *v175;
        *(v174 + 4) = *(v175 + 4);
        *v174 = v176;
        *(v81 + v264) = 6;
        goto LABEL_239;
      case 7u:
        (*(v266 + 16))(&v265[v17] & v260, &v40[v17] & v260, v245);
        v113 = ((v81 + v258) & v256);
        v114 = (&v82[v258] & v256);
        if (__swift_getEnumTagSinglePayload(v114, 1, v246))
        {
          memcpy(v113, v114, v242);
        }

        else
        {
          (*(v227 + 16))(v113, v114, v246);
          __swift_storeEnumTagSinglePayload(v113, 0, 1, v246);
        }

        v156 = ((v113 + v250) & 0xFFFFFFFFFFFFFFF8);
        v157 = ((v114 + v250) & 0xFFFFFFFFFFFFFFF8);
        *v156 = *v157;
        v156[1] = v157[1];
        v158 = (v156 + 19) & 0xFFFFFFFFFFFFFFF8;
        v159 = (v157 + 19) & 0xFFFFFFFFFFFFFFF8;
        v160 = *v159;
        *(v158 + 4) = *(v159 + 4);
        *v158 = v160;
        v161 = ((v81 + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
        v162 = (&v82[v22 + 7] & 0xFFFFFFFFFFFFFFF8);
        *v161 = *v162;
        v161[1] = v162[1];
        v163 = ((v161 + 23) & 0xFFFFFFFFFFFFFFF8);
        v164 = ((v162 + 23) & 0xFFFFFFFFFFFFFFF8);
        *v163 = *v164;
        v163[1] = v164[1];
        v165 = ((v163 + 23) & 0xFFFFFFFFFFFFFFF8);
        v166 = ((v164 + 23) & 0xFFFFFFFFFFFFFFF8);
        *v165 = *v166;
        v165[1] = v166[1];
        *(v81 + v264) = 7;

LABEL_239:

        goto LABEL_274;
      case 8u:
        (*(v235 + 16))(&v265[v17] & v260, &v40[v17] & v260, v236);
        v132 = ((v81 + v229 + 7) & 0xFFFFFFFFFFFFFFF8);
        v133 = (&v82[v229 + 7] & 0xFFFFFFFFFFFFFFF8);
        *v132 = *v133;
        v132[1] = v133[1];
        v134 = ((v132 + v230) & v228);
        v135 = (v133 + v230) & v228;

        if (v24 == v231)
        {
          v136 = __swift_getEnumTagSinglePayload(v135, v24, v245);
          v137 = v135;
          if (!v136)
          {
            v138 = v134;
            v254 = v81;
            v140 = v256;
            v139 = v258;
            v141 = ((v258 + v135) & v256);
            v142 = v246;
            goto LABEL_266;
          }

LABEL_268:
          memcpy(v134, v137, v22);
          goto LABEL_271;
        }

        v137 = v135;
        v144 = v258 + v135;
        v141 = ((v258 + v135) & v256);
        if (v27 == v231)
        {
          v138 = v134;
          v142 = v246;
          if (v239 < 2)
          {
            v254 = v81;
LABEL_265:
            v140 = v256;
            v139 = v258;
LABEL_266:
            (*(v266 + 16))(v138, v137, v245);
            v201 = ((v138 + v139) & v140);
            if (__swift_getEnumTagSinglePayload(v141, 1, v142))
            {
              memcpy(v201, v141, v242);
            }

            else
            {
              (*(v227 + 16))(v201, v141, v142);
              __swift_storeEnumTagSinglePayload(v201, 0, 1, v142);
            }

            v81 = v254;
            v202 = ((v201 + v250) & 0xFFFFFFFFFFFFFFF8);
            v203 = ((v141 + v250) & 0xFFFFFFFFFFFFFFF8);
            *v202 = *v203;
            v202[1] = v203[1];
            v204 = (v202 + 19) & 0xFFFFFFFFFFFFFFF8;
            v205 = (v203 + 19) & 0xFFFFFFFFFFFFFFF8;
            v206 = *v205;
            *(v204 + 4) = *(v205 + 4);
            *v204 = v206;

            v207 = v226;
            v134 = v138;
            if (v239)
            {
LABEL_272:
              v208 = (((v240 + v207 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
              v209 = ((v134 + v208 + 7) & 0xFFFFFFFFFFFFFFF8);
              v129 = *((v137 + v208 + 7) & 0xFFFFFFFFFFFFFFF8);
              *v209 = v129;
              *(v81 + v264) = 8;
LABEL_273:
              v210 = v129;
LABEL_274:
              v211 = (&v82[v262 + 7] & 0xFFFFFFFFFFFFFFF8);
              v212 = ((v81 + v262 + 7) & 0xFFFFFFFFFFFFFFF8);
              *v212 = *v211;
              v213 = (v212 + 15) & 0xFFFFFFFFFFFFFFF8;
              v214 = (v211 + 15) & 0xFFFFFFFFFFFFFFF8;
              v215 = *(v214 + 24);

              if (v215 < 0xFFFFFFFF)
              {
                v216 = *v214;
                v217 = *(v214 + 16);
                *(v213 + 32) = *(v214 + 32);
                *v213 = v216;
                *(v213 + 16) = v217;
              }

              else
              {
                *(v213 + 24) = v215;
                *(v213 + 32) = *(v214 + 32);
                (**(v215 - 8))(v213, v214, v215);
              }

              *(v213 + 40) = *(v214 + 40);
              v218 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
              v219 = &v265[v218 + 7] & 0xFFFFFFFFFFFFFFF8;
              v220 = &a2[v218 + 7] & 0xFFFFFFFFFFFFFFF8;
              *v219 = *v220;
              v221 = *(v220 + 8);
              *(v219 + 24) = *(v220 + 24);
              *(v219 + 8) = v221;
              v222 = *(v220 + 32);
              *(v219 + 40) = *(v220 + 40);
              *(v219 + 32) = v222;
              v74 = 3;
LABEL_278:
              v265[v36] = v74;
LABEL_279:

              return v3;
            }

LABEL_271:
            v207 = v242;
            goto LABEL_272;
          }

          v134 = v138;
          if (__swift_getEnumTagSinglePayload(v144 & v256, v239, v246) >= 2)
          {
            goto LABEL_268;
          }
        }

        else
        {
          v178 = *(((v141 + v250) & 0xFFFFFFFFFFFFFFF8) + 8);
          if (v178 >= 0xFFFFFFFF)
          {
            LODWORD(v178) = -1;
          }

          if ((v178 + 1) >= 2)
          {
            goto LABEL_268;
          }

          v138 = v134;
        }

        v254 = v81;
        v142 = v246;
        goto LABEL_265;
      case 9u:
        v109 = &v265[v17] & v260;
        v110 = &v40[v17] & v260;
        v107 = v264;
        (*(v233 + 16))(v109, v110, v234);
        v108 = 9;
LABEL_200:
        *(v81 + v107) = v108;
        goto LABEL_274;
      default:
        memcpy((&v265[v17] & v260), (&v40[v17] & v260), v262);
        goto LABEL_274;
    }
  }

  return v3;
}

_OWORD *sub_1DCE846D0(_OWORD *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = sub_1DD0DB04C();
  v233 = *(v3 - 8);
  v234 = v3;
  v246 = *(v233 + 64);
  v230 = *(sub_1DD0DC76C() - 8);
  v4 = *(v230 + 80);
  v244 = *(sub_1DD0DB1EC() - 8);
  v229 = v244;
  v237 = *(v244 + 80) | v4;
  v232 = sub_1DD0DB4BC();
  v241 = *(v232 - 8);
  v254 = v241;
  v5 = *(v241 + 80) & 0xF8;
  v231 = sub_1DD0DB3EC();
  v6 = *(v231 - 8);
  v7 = *(v6 + 80);
  v8 = v5 | v7 | 7;
  v239 = *(sub_1DD0DD12C() - 8);
  v228 = v239;
  v9 = *(v239 + 80);
  v10 = *(sub_1DD0DD08C() - 8);
  v243 = v10;
  v11 = (v237 | (v9 | *(v10 + 80))) & 0xF8 | v8;
  v12 = v246 + v11;
  v13 = *(v230 + 64);
  v238 = v13 + 7;
  if (((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v13)
  {
    v13 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v13 <= *(v244 + 64))
  {
    v13 = *(v244 + 64);
  }

  if (v13 <= 0x18)
  {
    v14 = 24;
  }

  else
  {
    v14 = v13;
  }

  v247 = *(v241 + 64) + v7;
  v15 = v7;
  v16 = v247 & ~v7;
  v227 = v6;
  v17 = *(v6 + 84);
  v18 = *(v6 + 64);
  if (v17)
  {
    v19 = *(v6 + 64);
  }

  else
  {
    v19 = v18 + 1;
  }

  v20 = (v19 + 7 + v16) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v21 <= v14)
  {
    v22 = v14;
  }

  else
  {
    v22 = (v20 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v23 = v20 + 31;
  v24 = ((((v23 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = v24 + 16;
  if (v24 + 16 > v22)
  {
    v22 = v24 + 16;
  }

  v26 = *(v239 + 64);
  v242 = v8 + 16;
  v27 = v8;
  v28 = *(v254 + 84);
  v240 = *(v6 + 84);
  v185 = v17 != 0;
  v29 = v17 - 1;
  if (v185)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  if (v30 <= v28)
  {
    v31 = *(v254 + 84);
  }

  else
  {
    v31 = v30;
  }

  if (v31 <= 0x7FFFFFFE)
  {
    v31 = 2147483646;
  }

  v245 = v31;
  v32 = (v23 + ((v8 + 16 + ((v26 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v8)) & 0xFFFFFFFFFFFFFFF8;
  v33 = v32 + 8;
  if (v32 + 8 <= v22)
  {
    v34 = v22;
  }

  else
  {
    v34 = v32 + 8;
  }

  if (*(v10 + 64) <= v34)
  {
    v35 = v34;
  }

  else
  {
    v35 = *(v10 + 64);
  }

  v36 = ((((v35 + (v12 & ~v11) + 8) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 41;
  v249 = *(*(a3 + 24) - 8);
  if (*(v249 + 64) <= 9uLL)
  {
    v37 = 9;
  }

  else
  {
    v37 = *(v249 + 64);
  }

  if (v36 <= v37 + 1)
  {
    v36 = v37 + 1;
  }

  if (v36 <= 0x29)
  {
    v38 = 41;
  }

  else
  {
    v38 = v36;
  }

  v39 = a2[v38];
  v40 = v39 - 7;
  if (v39 < 7)
  {
    v42 = a1;
  }

  else
  {
    if (v38 <= 3)
    {
      v41 = v38;
    }

    else
    {
      v41 = 4;
    }

    v42 = a1;
    switch(v41)
    {
      case 1:
        v43 = *a2;
        goto LABEL_48;
      case 2:
        v43 = *a2;
        goto LABEL_48;
      case 3:
        v43 = *a2 | (a2[2] << 16);
        goto LABEL_48;
      case 4:
        v43 = *a2;
LABEL_48:
        if (v38 < 4)
        {
          v43 |= v40 << (8 * v38);
        }

        v39 = v43 + 7;
        break;
      default:
        break;
    }
  }

  v226 = v18;
  v253 = *(v10 + 64);
  v44 = ~v11;
  v45 = ~v27;
  switch(v39)
  {
    case 0u:
      v46 = *(a2 + 1);
      *v42 = *a2;
      v42[1] = v46;
      *(v42 + 25) = *(a2 + 25);
      *(v42 + v38) = 0;
      return v42;
    case 1u:
      v66 = *(a2 + 1);
      *v42 = *a2;
      v42[1] = v66;
      *(v42 + 25) = *(a2 + 25);
      v48 = 1;
      goto LABEL_106;
    case 2u:
      v218 = v19 + 7;
      v220 = ~v15;
      v210 = v33;
      v212 = v25;
      v214 = v14;
      __n = v19;
      v222 = v35 + 1;
      v224 = (v35 + (v12 & ~v11) + 8) & 0xFFFFFFFFFFFFFFF8;
      v250 = v38;
      v49 = v35;
      (*(v233 + 32))(v42, a2, v234);
      v50 = a2;
      v51 = ((v42 + v12) & v44);
      v52 = (&a2[v12] & v44);
      v53 = v52[v49];
      v54 = v53 - 10;
      if (v53 >= 0xA)
      {
        if (v49 <= 3)
        {
          v55 = v49;
        }

        else
        {
          v55 = 4;
        }

        switch(v55)
        {
          case 1:
            v56 = *v52;
            goto LABEL_81;
          case 2:
            v56 = *v52;
            goto LABEL_81;
          case 3:
            v56 = *v52 | (v52[2] << 16);
            goto LABEL_81;
          case 4:
            v56 = *v52;
LABEL_81:
            if (v49 < 4)
            {
              v53 = (v56 | (v54 << (8 * v49))) + 10;
            }

            else
            {
              v53 = v56 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v53)
      {
        case 0u:
          v71 = v42;
          v72 = v51;
          (*(v230 + 32))();
          v51 = v72;
          v50 = a2;
          *(v72 + v49) = 0;
          goto LABEL_152;
        case 1u:
          v71 = v42;
          v76 = v51;
          (*(v230 + 32))();
          v51 = v76;
          v50 = a2;
          *((v76 + v238) & 0xFFFFFFFFFFFFFFF8) = *(&v52[v238] & 0xFFFFFFFFFFFFFFF8);
          v77 = 1;
          goto LABEL_117;
        case 2u:
          v71 = v42;
          v80 = *v52;
          v51[2] = *(v52 + 2);
          *v51 = v80;
          v81 = 2;
          goto LABEL_124;
        case 3u:
          v71 = v42;
          *v51 = *v52;
          v81 = 3;
          goto LABEL_124;
        case 4u:
          v71 = v42;
          v76 = v51;
          (*(v229 + 32))();
          v51 = v76;
          v50 = a2;
          v77 = 4;
          goto LABEL_117;
        case 5u:
          v71 = v42;
          *v51 = *v52;
          v81 = 5;
LABEL_124:
          *(v51 + v49) = v81;
          goto LABEL_152;
        case 6u:
          v71 = v42;
          v92 = v51;
          (*(v254 + 32))();
          v85 = v92;
          v93 = ((v92 + v247) & v220);
          v94 = (&v52[v247] & v220);
          if (__swift_getEnumTagSinglePayload(v94, 1, v231))
          {
            memcpy(v93, v94, __n);
          }

          else
          {
            (*(v227 + 32))(v93, v94, v231);
            __swift_storeEnumTagSinglePayload(v93, 0, 1, v231);
          }

          v151 = ((v93 + v218) & 0xFFFFFFFFFFFFFFF8);
          v152 = ((v94 + v218) & 0xFFFFFFFFFFFFFFF8);
          *v151 = *v152;
          v153 = (v151 + 19) & 0xFFFFFFFFFFFFFFF8;
          v154 = (v152 + 19) & 0xFFFFFFFFFFFFFFF8;
          v155 = *v154;
          *(v153 + 4) = *(v154 + 4);
          *v153 = v155;
          v140 = 6;
          v51 = v92;
          goto LABEL_151;
        case 7u:
          v71 = v42;
          v84 = v51;
          (*(v254 + 32))();
          v85 = v84;
          v86 = ((v84 + v247) & v220);
          v87 = (&v52[v247] & v220);
          if (__swift_getEnumTagSinglePayload(v87, 1, v231))
          {
            memcpy(v86, v87, __n);
          }

          else
          {
            (*(v227 + 32))(v86, v87, v231);
            __swift_storeEnumTagSinglePayload(v86, 0, 1, v231);
          }

          v131 = ((v86 + v218) & 0xFFFFFFFFFFFFFFF8);
          v132 = ((v87 + v218) & 0xFFFFFFFFFFFFFFF8);
          *v131 = *v132;
          v133 = (v131 + 19) & 0xFFFFFFFFFFFFFFF8;
          v134 = (v132 + 19) & 0xFFFFFFFFFFFFFFF8;
          v135 = *v134;
          *(v133 + 4) = *(v134 + 4);
          *v133 = v135;
          v51 = v84;
          v136 = ((v84 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
          v137 = (&v52[v21 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v136 = *v137;
          v138 = ((v136 + 23) & 0xFFFFFFFFFFFFFFF8);
          v139 = ((v137 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v138 = *v139;
          *((v138 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v139 + 23) & 0xFFFFFFFFFFFFFFF8);
          v140 = 7;
LABEL_151:
          *(v85 + v49) = v140;
          v50 = a2;
          goto LABEL_152;
        case 8u:
          v99 = v51;
          (*(v228 + 32))();
          v100 = ((v99 + v26 + 7) & 0xFFFFFFFFFFFFFFF8);
          v101 = (&v52[v26 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v100 = *v101;
          v102 = ((v100 + v242) & v45);
          v103 = ((v101 + v242) & v45);
          v235 = v52;
          v71 = v42;
          if (v28 != v245)
          {
            v106 = v247;
            v108 = ((v103 + v247) & v220);
            if (v30 == v245)
            {
              v110 = v240;
              v109 = v231;
              if (v240 < 2)
              {
                v104 = v232;
                goto LABEL_170;
              }

              v185 = __swift_getEnumTagSinglePayload((v103 + v247) & v220, v240, v231) >= 2;
            }

            else
            {
              v184 = *(((v108 + v218) & 0xFFFFFFFFFFFFFFF8) + 8);
              if (v184 >= 0xFFFFFFFF)
              {
                LODWORD(v184) = -1;
              }

              v185 = (v184 + 1) >= 2;
            }

            v104 = v232;
            if (v185)
            {
              goto LABEL_173;
            }

            v109 = v231;
            v110 = v240;
LABEL_170:
            v111 = v254;
            v107 = v220;
            goto LABEL_171;
          }

          v104 = v232;
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v103, v28, v232);
          v106 = v247;
          if (EnumTagSinglePayload)
          {
LABEL_173:
            memcpy(v102, v103, v21);
            v50 = a2;
            v97 = v250;
            v96 = v222;
            v98 = v224;
            v189 = v214;
            v188 = __n;
            v191 = v210;
            v190 = v212;
            v51 = v99;
LABEL_176:
            v197 = v188;
            goto LABEL_177;
          }

          v107 = v220;
          v108 = ((v103 + v247) & v220);
          v109 = v231;
          v110 = v240;
          v111 = v254;
LABEL_171:
          (*(v111 + 32))(v102, v103, v104);
          if (__swift_getEnumTagSinglePayload(v108, 1, v109))
          {
            memcpy(((v102 + v106) & v107), v108, __n);
          }

          else
          {
            (*(v227 + 32))((v102 + v106) & v107, v108, v109);
            __swift_storeEnumTagSinglePayload((v102 + v106) & v107, 0, 1, v109);
          }

          v188 = __n;
          v192 = ((v218 + ((v102 + v106) & v107)) & 0xFFFFFFFFFFFFFFF8);
          v193 = ((v108 + v218) & 0xFFFFFFFFFFFFFFF8);
          *v192 = *v193;
          v194 = (v193 + 19) & 0xFFFFFFFFFFFFFFF8;
          v195 = *v194;
          v196 = (v192 + 19) & 0xFFFFFFFFFFFFFFF8;
          *(v196 + 4) = *(v194 + 4);
          *v196 = v195;
          v50 = a2;
          v97 = v250;
          v96 = v222;
          v98 = v224;
          v190 = v212;
          v189 = v214;
          v191 = v210;
          v197 = v226;
          v51 = v99;
          if (!v110)
          {
            goto LABEL_176;
          }

LABEL_177:
          *((v102 + ((((v16 + 7 + v197) & 0xFFFFFFFFFFFFFFF8) + 19) | 5) + 7) & 0xFFFFFFFFFFFFFFF8) = *((v103 + ((((v16 + 7 + v197) & 0xFFFFFFFFFFFFFFF8) + 19) | 5) + 7) & 0xFFFFFFFFFFFFFFF8);
          v198 = (((v16 + 7 + v188) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
          if (v198 <= v189)
          {
            v198 = v189;
          }

          if (v190 > v198)
          {
            v198 = v190;
          }

          if (v191 > v198)
          {
            v198 = v191;
          }

          if (v253 > v198)
          {
            v198 = v253;
          }

          *(v51 + v198) = 8;
          v52 = v235;
LABEL_153:
          v156 = ((v51 + v96 + 7) & 0xFFFFFFFFFFFFFFF8);
          v157 = (&v52[v96 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v156 = *v157;
          v158 = (v156 + 15) & 0xFFFFFFFFFFFFFFF8;
          v159 = (v157 + 15) & 0xFFFFFFFFFFFFFFF8;
          v160 = *v159;
          v161 = *(v159 + 16);
          *(v158 + 32) = *(v159 + 32);
          *v158 = v160;
          *(v158 + 16) = v161;
          *(v158 + 40) = *(v159 + 40);
          v162 = ((v98 + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
          v42 = v71;
          v163 = ((v71 + v162 + 7) & 0xFFFFFFFFFFFFFFF8);
          v164 = (&v50[v162 + 7] & 0xFFFFFFFFFFFFFFF8);
          v165 = *v164;
          v166 = v164[1];
          *(v163 + 25) = *(v164 + 25);
          *v163 = v165;
          v163[1] = v166;
          v167 = 2;
LABEL_159:
          *(v71 + v97) = v167;
          return v42;
        case 9u:
          v71 = v42;
          v76 = v51;
          (*(v243 + 32))();
          v51 = v76;
          v50 = a2;
          v77 = 9;
LABEL_117:
          *(v76 + v49) = v77;
LABEL_152:
          v97 = v250;
          v96 = v222;
          v98 = v224;
          goto LABEL_153;
        default:
          v71 = v42;
          v95 = v51;
          v96 = v222;
          memcpy(v51, v52, v222);
          v51 = v95;
          v50 = a2;
          v97 = v250;
          v98 = v224;
          goto LABEL_153;
      }

    case 3u:
      v219 = v19 + 7;
      v221 = ~v15;
      v211 = v33;
      v213 = v25;
      v215 = v14;
      __na = v19;
      v223 = v35 + 1;
      v225 = (v35 + (v12 & ~v11) + 8) & 0xFFFFFFFFFFFFFFF8;
      v251 = v38;
      v57 = v35;
      (*(v233 + 32))(v42, a2, v234);
      v58 = a2;
      v59 = ((v42 + v12) & v44);
      v60 = (&a2[v12] & v44);
      v61 = v60[v57];
      v62 = v61 - 10;
      if (v61 >= 0xA)
      {
        if (v57 <= 3)
        {
          v63 = v57;
        }

        else
        {
          v63 = 4;
        }

        switch(v63)
        {
          case 1:
            v64 = *v60;
            goto LABEL_89;
          case 2:
            v64 = *v60;
            goto LABEL_89;
          case 3:
            v64 = *v60 | (v60[2] << 16);
            goto LABEL_89;
          case 4:
            v64 = *v60;
LABEL_89:
            if (v57 < 4)
            {
              v61 = (v64 | (v62 << (8 * v57))) + 10;
            }

            else
            {
              v61 = v64 + 10;
            }

            break;
          default:
            goto LABEL_92;
        }
      }

      break;
    case 4u:
      v47 = *(a2 + 1);
      *v42 = *a2;
      v42[1] = v47;
      *(v42 + 25) = *(a2 + 25);
      v48 = 4;
      goto LABEL_106;
    case 5u:
      v67 = a2[v37];
      v68 = v67 - 2;
      if (v67 >= 2)
      {
        if (v37 <= 3)
        {
          v69 = v37;
        }

        else
        {
          v69 = 4;
        }

        switch(v69)
        {
          case 1:
            v70 = *a2;
            goto LABEL_96;
          case 2:
            v70 = *a2;
            goto LABEL_96;
          case 3:
            v70 = *a2 | (a2[2] << 16);
            goto LABEL_96;
          case 4:
            v70 = *a2;
LABEL_96:
            if (v37 < 4)
            {
              v67 = (v70 | (v68 << (8 * v37))) + 2;
            }

            else
            {
              v67 = v70 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v67 == 1)
      {
        *v42 = *a2;
        *(v42 + 8) = a2[8];
        *(v42 + v37) = 1;
      }

      else
      {
        v74 = v42;
        v75 = v38;
        if (v67)
        {
          memcpy(v74, a2, v37 + 1);
        }

        else
        {
          (*(v249 + 32))(v74);
          *(v74 + v37) = 0;
        }

        v38 = v75;
        v42 = v74;
      }

      v48 = 5;
      goto LABEL_106;
    case 6u:
      *v42 = *a2;
      *(v42 + 8) = a2[8];
      v48 = 6;
LABEL_106:
      *(v42 + v38) = v48;
      return v42;
    default:

      return memcpy(v42, a2, v38 + 1);
  }

LABEL_92:
  switch(v61)
  {
    case 0u:
      v71 = v42;
      v73 = v59;
      (*(v230 + 32))();
      v59 = v73;
      v58 = a2;
      *(v73 + v57) = 0;
      goto LABEL_157;
    case 1u:
      v71 = v42;
      v78 = v59;
      (*(v230 + 32))();
      v59 = v78;
      v58 = a2;
      *((v78 + v238) & 0xFFFFFFFFFFFFFFF8) = *(&v60[v238] & 0xFFFFFFFFFFFFFFF8);
      v79 = 1;
      goto LABEL_122;
    case 2u:
      v71 = v42;
      v82 = *v60;
      v59[2] = *(v60 + 2);
      *v59 = v82;
      v83 = 2;
      goto LABEL_132;
    case 3u:
      v71 = v42;
      *v59 = *v60;
      v83 = 3;
      goto LABEL_132;
    case 4u:
      v71 = v42;
      v78 = v59;
      (*(v229 + 32))();
      v59 = v78;
      v58 = a2;
      v79 = 4;
      goto LABEL_122;
    case 5u:
      v71 = v42;
      *v59 = *v60;
      v83 = 5;
LABEL_132:
      *(v59 + v57) = v83;
      goto LABEL_157;
    case 6u:
      v71 = v42;
      v112 = v59;
      (*(v254 + 32))();
      v89 = v112;
      v113 = ((v112 + v247) & v221);
      v114 = (&v60[v247] & v221);
      if (__swift_getEnumTagSinglePayload(v114, 1, v231))
      {
        memcpy(v113, v114, __na);
      }

      else
      {
        (*(v227 + 32))(v113, v114, v231);
        __swift_storeEnumTagSinglePayload(v113, 0, 1, v231);
      }

      v168 = ((v113 + v219) & 0xFFFFFFFFFFFFFFF8);
      v169 = ((v114 + v219) & 0xFFFFFFFFFFFFFFF8);
      *v168 = *v169;
      v170 = (v168 + 19) & 0xFFFFFFFFFFFFFFF8;
      v171 = (v169 + 19) & 0xFFFFFFFFFFFFFFF8;
      v172 = *v171;
      *(v170 + 4) = *(v171 + 4);
      *v170 = v172;
      v150 = 6;
      v59 = v112;
      goto LABEL_156;
    case 7u:
      v71 = v42;
      v88 = v59;
      (*(v254 + 32))();
      v89 = v88;
      v90 = ((v88 + v247) & v221);
      v91 = (&v60[v247] & v221);
      if (__swift_getEnumTagSinglePayload(v91, 1, v231))
      {
        memcpy(v90, v91, __na);
      }

      else
      {
        (*(v227 + 32))(v90, v91, v231);
        __swift_storeEnumTagSinglePayload(v90, 0, 1, v231);
      }

      v141 = ((v90 + v219) & 0xFFFFFFFFFFFFFFF8);
      v142 = ((v91 + v219) & 0xFFFFFFFFFFFFFFF8);
      *v141 = *v142;
      v143 = (v141 + 19) & 0xFFFFFFFFFFFFFFF8;
      v144 = (v142 + 19) & 0xFFFFFFFFFFFFFFF8;
      v145 = *v144;
      *(v143 + 4) = *(v144 + 4);
      *v143 = v145;
      v59 = v88;
      v146 = ((v88 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
      v147 = (&v60[v21 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v146 = *v147;
      v148 = ((v146 + 23) & 0xFFFFFFFFFFFFFFF8);
      v149 = ((v147 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v148 = *v149;
      *((v148 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v149 + 23) & 0xFFFFFFFFFFFFFFF8);
      v150 = 7;
LABEL_156:
      *(v89 + v57) = v150;
      v58 = a2;
      goto LABEL_157;
    case 8u:
      v118 = v59;
      (*(v228 + 32))();
      v119 = ((v118 + v26 + 7) & 0xFFFFFFFFFFFFFFF8);
      v120 = (&v60[v26 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v119 = *v120;
      v121 = ((v119 + v242) & v45);
      v122 = ((v120 + v242) & v45);
      v236 = v60;
      v71 = v42;
      if (v28 == v245)
      {
        v123 = v232;
        v124 = __swift_getEnumTagSinglePayload(v122, v28, v232);
        v125 = v247;
        if (!v124)
        {
          v126 = v221;
          v127 = ((v122 + v247) & v221);
          v128 = v231;
          v129 = v240;
          v130 = v254;
          goto LABEL_190;
        }

LABEL_192:
        memcpy(v121, v122, v21);
        v58 = a2;
        v97 = v251;
        v116 = v223;
        v117 = v225;
        v200 = v215;
        v199 = __na;
        v202 = v211;
        v201 = v213;
        v59 = v118;
        goto LABEL_195;
      }

      v125 = v247;
      v127 = ((v122 + v247) & v221);
      if (v30 == v245)
      {
        v129 = v240;
        v128 = v231;
        if (v240 < 2)
        {
          v123 = v232;
          goto LABEL_189;
        }

        v187 = __swift_getEnumTagSinglePayload((v122 + v247) & v221, v240, v231) >= 2;
      }

      else
      {
        v186 = *(((v127 + v219) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v186 >= 0xFFFFFFFF)
        {
          LODWORD(v186) = -1;
        }

        v187 = (v186 + 1) >= 2;
      }

      v123 = v232;
      if (v187)
      {
        goto LABEL_192;
      }

      v128 = v231;
      v129 = v240;
LABEL_189:
      v130 = v254;
      v126 = v221;
LABEL_190:
      (*(v130 + 32))(v121, v122, v123);
      if (__swift_getEnumTagSinglePayload(v127, 1, v128))
      {
        memcpy(((v121 + v125) & v126), v127, __na);
      }

      else
      {
        (*(v227 + 32))((v121 + v125) & v126, v127, v128);
        __swift_storeEnumTagSinglePayload((v121 + v125) & v126, 0, 1, v128);
      }

      v199 = __na;
      v203 = ((v219 + ((v121 + v125) & v126)) & 0xFFFFFFFFFFFFFFF8);
      v204 = ((v127 + v219) & 0xFFFFFFFFFFFFFFF8);
      *v203 = *v204;
      v205 = (v204 + 19) & 0xFFFFFFFFFFFFFFF8;
      v206 = *v205;
      v207 = (v203 + 19) & 0xFFFFFFFFFFFFFFF8;
      *(v207 + 4) = *(v205 + 4);
      *v207 = v206;
      v58 = a2;
      v97 = v251;
      v116 = v223;
      v117 = v225;
      v201 = v213;
      v200 = v215;
      v202 = v211;
      v208 = v226;
      v59 = v118;
      if (v129)
      {
LABEL_196:
        *((v121 + ((((v16 + 7 + v208) & 0xFFFFFFFFFFFFFFF8) + 19) | 5) + 7) & 0xFFFFFFFFFFFFFFF8) = *((v122 + ((((v16 + 7 + v208) & 0xFFFFFFFFFFFFFFF8) + 19) | 5) + 7) & 0xFFFFFFFFFFFFFFF8);
        v209 = (((v16 + 7 + v199) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
        if (v209 <= v200)
        {
          v209 = v200;
        }

        if (v201 > v209)
        {
          v209 = v201;
        }

        if (v202 > v209)
        {
          v209 = v202;
        }

        if (v253 > v209)
        {
          v209 = v253;
        }

        *(v59 + v209) = 8;
        v60 = v236;
LABEL_158:
        v173 = ((v59 + v116 + 7) & 0xFFFFFFFFFFFFFFF8);
        v174 = (&v60[v116 + 7] & 0xFFFFFFFFFFFFFFF8);
        *v173 = *v174;
        v175 = (v173 + 15) & 0xFFFFFFFFFFFFFFF8;
        v176 = (v174 + 15) & 0xFFFFFFFFFFFFFFF8;
        v177 = *v176;
        v178 = *(v176 + 16);
        *(v175 + 32) = *(v176 + 32);
        *v175 = v177;
        *(v175 + 16) = v178;
        *(v175 + 40) = *(v176 + 40);
        v179 = ((v117 + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
        v42 = v71;
        v180 = ((v71 + v179 + 7) & 0xFFFFFFFFFFFFFFF8);
        v181 = (&v58[v179 + 7] & 0xFFFFFFFFFFFFFFF8);
        v182 = *v181;
        v183 = v181[1];
        *(v180 + 25) = *(v181 + 25);
        *v180 = v182;
        v180[1] = v183;
        v167 = 3;
        goto LABEL_159;
      }

LABEL_195:
      v208 = v199;
      goto LABEL_196;
    case 9u:
      v71 = v42;
      v78 = v59;
      (*(v243 + 32))();
      v59 = v78;
      v58 = a2;
      v79 = 9;
LABEL_122:
      *(v78 + v57) = v79;
LABEL_157:
      v97 = v251;
      v116 = v223;
      v117 = v225;
      goto LABEL_158;
    default:
      v71 = v42;
      v115 = v59;
      v116 = v223;
      memcpy(v59, v60, v223);
      v59 = v115;
      v58 = a2;
      v97 = v251;
      v117 = v225;
      goto LABEL_158;
  }
}