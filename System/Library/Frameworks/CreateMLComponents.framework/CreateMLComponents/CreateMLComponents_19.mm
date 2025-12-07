uint64_t sub_237DFE184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  (*(v12[27] + 8))(v12[28], v12[26]);
  v13 = OUTLINED_FUNCTION_31_0();
  v14(v13);
  OUTLINED_FUNCTION_120();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_237DFE258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_120();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

void UpdatableEstimatorToTemporalAdaptor.encode(_:to:)()
{
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_101_3(v2, v3);
  OUTLINED_FUNCTION_61_4();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_56();
  EstimatorToTemporalAdaptor.base.getter(v0, v1);
  OUTLINED_FUNCTION_129();
  swift_getAssociatedConformanceWitness();
  v6 = OUTLINED_FUNCTION_23_8();
  OUTLINED_FUNCTION_134(v6, v7, v8, v9);
  v10 = OUTLINED_FUNCTION_30_27();
  v11(v10);
  v12 = OUTLINED_FUNCTION_144();
  v13(v12);
  v14 = OUTLINED_FUNCTION_100_2();
  v15(v14);
  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_12_6();
}

void UpdatableEstimatorToTemporalAdaptor.decode(from:)()
{
  OUTLINED_FUNCTION_13_4();
  v3 = OUTLINED_FUNCTION_8_61(v1, v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_56();
  OUTLINED_FUNCTION_43_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_52_10();
  OUTLINED_FUNCTION_96_2();
  v5 = OUTLINED_FUNCTION_20_33();
  v6(v5);
  v7 = OUTLINED_FUNCTION_47_9();
  v8(v7);
  if (!v0)
  {
    v9 = OUTLINED_FUNCTION_48_10();
    v10(v9);
  }

  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_12_6();
}

void UpdatableEstimatorToTemporalAdaptor.encodeWithOptimizer(_:to:)()
{
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_101_3(v3, v4);
  OUTLINED_FUNCTION_61_4();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_56();
  EstimatorToTemporalAdaptor.base.getter(v1, v2);
  OUTLINED_FUNCTION_129();
  swift_getAssociatedConformanceWitness();
  v9 = OUTLINED_FUNCTION_23_8();
  OUTLINED_FUNCTION_134(v9, v10, v11, v12);
  v13 = OUTLINED_FUNCTION_30_27();
  v14(v13);
  v15 = OUTLINED_FUNCTION_144();
  v16(v15);
  (*(v7 + 8))(v2, v0);
  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_12_6();
}

void UpdatableEstimatorToTemporalAdaptor.decodeWithOptimizer(from:)()
{
  OUTLINED_FUNCTION_13_4();
  v3 = OUTLINED_FUNCTION_8_61(v1, v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_56();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_52_10();
  OUTLINED_FUNCTION_96_2();
  v5 = OUTLINED_FUNCTION_20_33();
  v6(v5);
  v7 = OUTLINED_FUNCTION_47_9();
  v8(v7);
  if (!v0)
  {
    v9 = OUTLINED_FUNCTION_48_10();
    v10(v9);
  }

  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237DFE868()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6B728;

  return UpdatableEstimatorToTemporalAdaptor.update<A>(_:with:eventHandler:)();
}

uint64_t sub_237DFE988()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6B728;

  return UpdatableEstimatorToTemporalAdaptor.fitted<A>(to:eventHandler:)();
}

uint64_t SupervisedEstimatorToTemporalAdaptor.fitted<A, B>(to:eventHandler:)(uint64_t a1)
{
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_125();
  v4 = v3;
  OUTLINED_FUNCTION_59_8(v5, v6, v7, v8, v3, v9, v10, v11);
  v1[13] = *(v12 + 16);
  OUTLINED_FUNCTION_1_1();
  v1[14] = v13;
  v1[15] = OUTLINED_FUNCTION_27_0();
  v1[16] = *(v4 + 24);
  OUTLINED_FUNCTION_28_24();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[17] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v1[18] = v15;
  v1[19] = v16;
  v1[20] = OUTLINED_FUNCTION_161();
  v1[21] = swift_task_alloc();
  OUTLINED_FUNCTION_28_24();
  v17 = swift_getAssociatedTypeWitness();
  v1[22] = v17;
  OUTLINED_FUNCTION_4();
  v1[23] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23_8();
  v1[24] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  v1[25] = OUTLINED_FUNCTION_27_0();
  v18 = OUTLINED_FUNCTION_28_24();
  v22 = type metadata accessor for AnnotatedFeature(v18, v19, v20, v21);
  v1[26] = v22;
  OUTLINED_FUNCTION_18(v22);
  v1[27] = OUTLINED_FUNCTION_27_0();
  v23 = OUTLINED_FUNCTION_34_0();
  v1[28] = type metadata accessor for TemporalFeature(v23, v24, v25, v26);
  OUTLINED_FUNCTION_1();
  v1[29] = v27;
  v1[30] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v28 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v28);
  v1[31] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_81_3();
  v29 = OUTLINED_FUNCTION_27_0();
  v1[32] = v29;
  v30 = *(v2 + 8);
  v1[33] = v30;
  v32 = OUTLINED_FUNCTION_138(v29, v30, v31, MEMORY[0x277D85850], MEMORY[0x277D85620]);
  v1[34] = v32;
  OUTLINED_FUNCTION_6_1(v32);
  v1[35] = v33;
  v1[36] = OUTLINED_FUNCTION_27_0();
  v34 = OUTLINED_FUNCTION_43_3();
  v1[37] = type metadata accessor for AnnotatedFeature(v34, v35, v17, v36);
  OUTLINED_FUNCTION_1();
  v1[38] = v37;
  v1[39] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v38 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v38);
  v1[40] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v1[41] = v39;
  v1[42] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_61_4();
  v40 = swift_getAssociatedTypeWitness();
  v1[43] = v40;
  OUTLINED_FUNCTION_6_1(v40);
  v1[44] = v41;
  v1[45] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_106_1();
  return OUTLINED_FUNCTION_23_2(v42, v43, v44);
}

uint64_t sub_237DFEE78()
{
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_19_18();
  v1 = OUTLINED_FUNCTION_132();
  v2 = OUTLINED_FUNCTION_59_4(v1);
  v3(v2);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_39_13();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_51_3(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_42_4();
  if (v5)
  {
    OUTLINED_FUNCTION_70_5();
    v32 = v6;
    OUTLINED_FUNCTION_63_6();
    v7();
    OUTLINED_FUNCTION_4_70();
    v0[48] = v8;
    OUTLINED_FUNCTION_34_12();
    v31 = v9 + *v9;
    v10 = swift_task_alloc();
    v0[49] = v10;
    OUTLINED_FUNCTION_43_0();
    sub_237EF8A60();
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_20_2();
    *v10 = v11;
    v10[1] = sub_237DFF438;
    OUTLINED_FUNCTION_62_4();
    OUTLINED_FUNCTION_15_36();
    OUTLINED_FUNCTION_102_1();

    return v20(v12, v13, v14, v15, v16, v17, v18, v19, v31, v32);
  }

  else
  {
    v23 = OUTLINED_FUNCTION_22_30();
    v24(v23);
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_41_11();
    OUTLINED_FUNCTION_148();
    swift_getAssociatedConformanceWitness();
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[46] = v25;
    *v25 = v26;
    OUTLINED_FUNCTION_36_16(v25);
    OUTLINED_FUNCTION_102_1();

    return MEMORY[0x282200308](v27, v28, v29);
  }
}

uint64_t sub_237DFF08C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 376) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DFF18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  if (OUTLINED_FUNCTION_82_2() != 1)
  {
    v55 = v14[24];
    v53 = v14[22];
    v38 = OUTLINED_FUNCTION_14_47();
    v39(v38);
    OUTLINED_FUNCTION_92_2();
    OUTLINED_FUNCTION_93_2();
    v40 = OUTLINED_FUNCTION_50_10();
    AnnotatedFeature.init(feature:annotation:)(v40, v41, v55, v53, v42);
    sub_237EF8A60();
    OUTLINED_FUNCTION_110_1();
    sub_237EF8A20();
    v43 = OUTLINED_FUNCTION_51_10();
    v44(v43);
    goto LABEL_8;
  }

  v15 = OUTLINED_FUNCTION_146();
  v16(v15);
  v17 = OUTLINED_FUNCTION_53_8();
  v18(v17);
  OUTLINED_FUNCTION_39_13();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_51_3(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_42_4();
  if (!v20)
  {
    v45 = OUTLINED_FUNCTION_22_30();
    v46(v45);
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_41_11();
LABEL_8:
    OUTLINED_FUNCTION_148();
    swift_getAssociatedConformanceWitness();
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v14[46] = v47;
    *v47 = v48;
    OUTLINED_FUNCTION_36_16(v47);
    OUTLINED_FUNCTION_18_3();

    return MEMORY[0x282200308](v49, v50, v51);
  }

  OUTLINED_FUNCTION_70_5();
  v56 = v21;
  OUTLINED_FUNCTION_63_6();
  v22();
  OUTLINED_FUNCTION_4_70();
  v14[48] = v23;
  v57 = v56 + 40;
  OUTLINED_FUNCTION_15_0();
  v54 = v24 + *v24;
  v25 = swift_task_alloc();
  v14[49] = v25;
  OUTLINED_FUNCTION_43_0();
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_2();
  *v25 = v26;
  v25[1] = sub_237DFF438;
  OUTLINED_FUNCTION_23_31();
  OUTLINED_FUNCTION_18_3();

  return v35(v27, v28, v29, v30, v31, v32, v33, v34, a9, v54, v57, a12, a13, a14);
}

uint64_t sub_237DFF438()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 400) = v0;

  v7 = OUTLINED_FUNCTION_7_3();
  v8(v7);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_59();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237DFF5A0()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[17];
  v4 = v0[4];
  (*(v0[19] + 32))(v1, v0[21], v3);
  (*(v2 + 32))(v4, v1, v3);

  OUTLINED_FUNCTION_10_3();

  return v5();
}

uint64_t sub_237DFF720()
{
  (*(v0[35] + 8))(v0[36], v0[34]);
  v1 = OUTLINED_FUNCTION_9_9();
  v2(v1);
  v3 = OUTLINED_FUNCTION_31_0();
  v4(v3);
  OUTLINED_FUNCTION_88_3();

  OUTLINED_FUNCTION_3_0();

  return v5();
}

uint64_t sub_237DFF854(uint64_t a1)
{
  OUTLINED_FUNCTION_88_3();

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t SupervisedEstimatorToTemporalAdaptor.fitted<A, B, C>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_19_18();
  v25 = v24;
  v23[13] = a20;
  v23[14] = v22;
  v23[11] = v26;
  v23[12] = a19;
  v23[9] = v27;
  v23[10] = v24;
  v23[7] = v28;
  v23[8] = v29;
  v23[6] = v30;
  v23[15] = *(v24 + 16);
  OUTLINED_FUNCTION_1_1();
  v23[16] = v31;
  v23[17] = OUTLINED_FUNCTION_27_0();
  v23[18] = *(v25 + 24);
  OUTLINED_FUNCTION_28_24();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23[19] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v23[20] = v33;
  v23[21] = v34;
  v23[22] = OUTLINED_FUNCTION_161();
  v23[23] = swift_task_alloc();
  OUTLINED_FUNCTION_28_24();
  v35 = swift_getAssociatedTypeWitness();
  v23[24] = v35;
  OUTLINED_FUNCTION_4();
  v23[25] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23_8();
  v23[26] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  v23[27] = OUTLINED_FUNCTION_27_0();
  v36 = OUTLINED_FUNCTION_28_24();
  v40 = type metadata accessor for AnnotatedFeature(v36, v37, v38, v39);
  v23[28] = v40;
  OUTLINED_FUNCTION_18(v40);
  v23[29] = OUTLINED_FUNCTION_27_0();
  v41 = OUTLINED_FUNCTION_34_0();
  v23[30] = type metadata accessor for TemporalFeature(v41, v42, v43, v44);
  OUTLINED_FUNCTION_1();
  v23[31] = v45;
  v23[32] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v46 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v46);
  v23[33] = OUTLINED_FUNCTION_40_11();
  v23[34] = swift_task_alloc();
  OUTLINED_FUNCTION_81_3();
  v47 = OUTLINED_FUNCTION_27_0();
  v23[35] = v47;
  v48 = *(a22 + 8);
  v23[36] = v48;
  v50 = OUTLINED_FUNCTION_138(v47, v48, v49, MEMORY[0x277D85850], MEMORY[0x277D85620]);
  v23[37] = v50;
  OUTLINED_FUNCTION_6_1(v50);
  v23[38] = v51;
  v23[39] = OUTLINED_FUNCTION_40_11();
  v23[40] = swift_task_alloc();
  v52 = OUTLINED_FUNCTION_43_3();
  v23[41] = type metadata accessor for AnnotatedFeature(v52, v53, v35, v54);
  OUTLINED_FUNCTION_1();
  v23[42] = v55;
  v23[43] = swift_task_alloc();
  v23[44] = swift_task_alloc();
  OUTLINED_FUNCTION_34_0();
  v56 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v56);
  v23[45] = OUTLINED_FUNCTION_40_11();
  v23[46] = swift_task_alloc();
  OUTLINED_FUNCTION_1_1();
  v23[47] = v57;
  v23[48] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_43_0();
  v58 = swift_getAssociatedTypeWitness();
  v23[49] = v58;
  OUTLINED_FUNCTION_6_1(v58);
  v23[50] = v59;
  v23[51] = OUTLINED_FUNCTION_40_11();
  v23[52] = swift_task_alloc();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_106_1();
  return OUTLINED_FUNCTION_48_0(v60, v61, v62);
}

uint64_t sub_237DFFD48()
{
  OUTLINED_FUNCTION_26_2();
  v2 = OUTLINED_FUNCTION_131();
  v3 = OUTLINED_FUNCTION_107_2(v2);
  v4(v3);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_37_16();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_97_2(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_42_4();
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_10_50();
    v8(v7);
    v9 = sub_237EF8110();
    v10 = OUTLINED_FUNCTION_67_3(v9);
    v1(v10);
    OUTLINED_FUNCTION_86_2();
    OUTLINED_FUNCTION_158();
    OUTLINED_FUNCTION_32_19();
    OUTLINED_FUNCTION_45_12();
    if (v6)
    {
      v11 = OUTLINED_FUNCTION_18_31();
      v12 = *(v0 + 80);
      v13(v11);
      OUTLINED_FUNCTION_9_49();
      OUTLINED_FUNCTION_34_12();
      v14 = swift_task_alloc();
      OUTLINED_FUNCTION_71_3(v14);
      OUTLINED_FUNCTION_1_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_64_6();
      *v12 = v15;
      OUTLINED_FUNCTION_1_87(v16, v17, v18, v19, v20, v21, v22, v23);
      OUTLINED_FUNCTION_156();

      __asm { BRAA            X8, X16 }
    }

    v30 = OUTLINED_FUNCTION_3_76();
    v31(v30);
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_41_11();
    OUTLINED_FUNCTION_98_2();
    swift_getAssociatedConformanceWitness();
    v32 = swift_task_alloc();
    v33 = OUTLINED_FUNCTION_60_7(v32);
    *v33 = v34;
    OUTLINED_FUNCTION_25_27(v33);
  }

  else
  {
    v26 = OUTLINED_FUNCTION_7_56();
    v27(v26);
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_41_11();
    OUTLINED_FUNCTION_98_2();
    swift_getAssociatedConformanceWitness();
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    *(v0 + 448) = v28;
    *v28 = v29;
    OUTLINED_FUNCTION_68_5(v28);
  }

  OUTLINED_FUNCTION_76_5();
  OUTLINED_FUNCTION_156();

  return MEMORY[0x282200308](v35, v36, v37);
}

uint64_t sub_237E00000()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 456) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E00100()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_33_3();
  if (OUTLINED_FUNCTION_82_2() != 1)
  {
    v29 = OUTLINED_FUNCTION_11_46();
    v30(v29);
    OUTLINED_FUNCTION_92_2();
    OUTLINED_FUNCTION_93_2();
    v31 = OUTLINED_FUNCTION_50_10();
    AnnotatedFeature.init(feature:annotation:)(v31, v32, v51, v50, v33);
    OUTLINED_FUNCTION_160();
    OUTLINED_FUNCTION_110_1();
    sub_237EF8A20();
    v34 = OUTLINED_FUNCTION_51_10();
    v35(v34);
    goto LABEL_10;
  }

  v3 = OUTLINED_FUNCTION_130();
  v4(v3);
  v5 = OUTLINED_FUNCTION_53_8();
  v6(v5);
  OUTLINED_FUNCTION_37_16();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_97_2(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_42_4();
  if (!v8)
  {
    v36 = OUTLINED_FUNCTION_7_56();
    v37(v36);
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_41_11();
LABEL_10:
    OUTLINED_FUNCTION_98_2();
    swift_getAssociatedConformanceWitness();
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    *(v0 + 448) = v38;
    *v38 = v39;
    OUTLINED_FUNCTION_68_5(v38);
    goto LABEL_11;
  }

  v9 = OUTLINED_FUNCTION_10_50();
  v10(v9);
  v11 = sub_237EF8110();
  v12 = OUTLINED_FUNCTION_67_3(v11);
  v2(v12);
  OUTLINED_FUNCTION_86_2();
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_32_19();
  OUTLINED_FUNCTION_45_12();
  if (v8)
  {
    v13 = OUTLINED_FUNCTION_18_31();
    OUTLINED_FUNCTION_103_0(v13, v14, v15);
    v16();
    OUTLINED_FUNCTION_9_49();
    OUTLINED_FUNCTION_44_13();
    v17 = swift_task_alloc();
    OUTLINED_FUNCTION_71_3(v17);
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_64_6();
    *v1 = v18;
    OUTLINED_FUNCTION_1_87(v19, v20, v21, v22, v23, v24, v25, v26);
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_18_3();

    __asm { BRAA            X8, X16 }
  }

  v44 = OUTLINED_FUNCTION_3_76();
  v45(v44);
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_41_11();
  OUTLINED_FUNCTION_98_2();
  swift_getAssociatedConformanceWitness();
  v46 = swift_task_alloc();
  v47 = OUTLINED_FUNCTION_60_7(v46);
  *v47 = v48;
  OUTLINED_FUNCTION_25_27(v47);
LABEL_11:
  OUTLINED_FUNCTION_76_5();
  OUTLINED_FUNCTION_105_1();

  return MEMORY[0x282200308](v40, v41, v42);
}

uint64_t sub_237E00404()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 488) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E0050C()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_33_3();
  if (OUTLINED_FUNCTION_82_2() == 1)
  {
    v1 = OUTLINED_FUNCTION_126();
    v2(v1);
    v3 = OUTLINED_FUNCTION_53_8();
    v4(v3);
    OUTLINED_FUNCTION_32_19();
    OUTLINED_FUNCTION_45_12();
    if (v5)
    {
      v6 = OUTLINED_FUNCTION_18_31();
      OUTLINED_FUNCTION_103_0(v6, v7, v8);
      v9();
      OUTLINED_FUNCTION_9_49();
      OUTLINED_FUNCTION_44_13();
      v10 = swift_task_alloc();
      OUTLINED_FUNCTION_71_3(v10);
      OUTLINED_FUNCTION_1_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_64_6();
      *v0 = v11;
      OUTLINED_FUNCTION_1_87(v12, v13, v14, v15, v16, v17, v18, v19);
      OUTLINED_FUNCTION_147();
      OUTLINED_FUNCTION_18_3();

      __asm { BRAA            X8, X16 }
    }

    v29 = OUTLINED_FUNCTION_3_76();
    v30(v29);
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_41_11();
  }

  else
  {
    v22 = OUTLINED_FUNCTION_11_46();
    v23(v22);
    OUTLINED_FUNCTION_92_2();
    OUTLINED_FUNCTION_93_2();
    v24 = OUTLINED_FUNCTION_50_10();
    AnnotatedFeature.init(feature:annotation:)(v24, v25, v40, v39, v26);
    OUTLINED_FUNCTION_160();
    sub_237EF8A20();
    v27 = OUTLINED_FUNCTION_51_10();
    v28(v27);
  }

  OUTLINED_FUNCTION_98_2();
  swift_getAssociatedConformanceWitness();
  v31 = swift_task_alloc();
  v32 = OUTLINED_FUNCTION_60_7(v31);
  *v32 = v33;
  OUTLINED_FUNCTION_25_27(v32);
  OUTLINED_FUNCTION_76_5();
  OUTLINED_FUNCTION_105_1();

  return MEMORY[0x282200308](v34, v35, v36);
}

uint64_t sub_237E00738()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v5 = v4[17];
  v6 = v4[16];
  v7 = v4[15];
  v8 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v9 = v8;
  *(v10 + 520) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237E008CC()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[19];
  v4 = v0[6];
  (*(v0[21] + 32))(v1);
  (*(v2 + 32))(v4, v1, v3);

  OUTLINED_FUNCTION_10_3();

  return v5();
}

uint64_t sub_237E00A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_155();
  v22 = OUTLINED_FUNCTION_130();
  v23(v22);
  v24 = OUTLINED_FUNCTION_9_9();
  v25(v24);
  v26 = OUTLINED_FUNCTION_31_0();
  v27(v26);
  OUTLINED_FUNCTION_29_23();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_30_24();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_237E00BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_155();
  v23 = *(v22 + 464);
  v24 = OUTLINED_FUNCTION_126();
  v25(v24);
  v26 = OUTLINED_FUNCTION_9_9();
  v27(v26);
  v28 = OUTLINED_FUNCTION_31_0();
  v23(v28);
  OUTLINED_FUNCTION_29_23();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_30_24();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_237E00CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_29_23();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_30_24();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

void SupervisedEstimatorToTemporalAdaptor.encode(_:to:)()
{
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_145(v2, v3);
  OUTLINED_FUNCTION_135();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_56();
  EstimatorToTemporalAdaptor.base.getter(v0, v1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_134(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v9 = OUTLINED_FUNCTION_30_27();
  v10(v9);
  v11 = OUTLINED_FUNCTION_152();
  v12(v11);
  v13 = OUTLINED_FUNCTION_100_2();
  v14(v13);
  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_12_6();
}

void SupervisedEstimatorToTemporalAdaptor.decode(from:)()
{
  OUTLINED_FUNCTION_13_4();
  v3 = OUTLINED_FUNCTION_8_61(v1, v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_56();
  OUTLINED_FUNCTION_43_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_52_10();
  OUTLINED_FUNCTION_96_2();
  v5 = OUTLINED_FUNCTION_20_33();
  v6(v5);
  v7 = OUTLINED_FUNCTION_47_9();
  v8(v7);
  if (!v0)
  {
    v9 = OUTLINED_FUNCTION_48_10();
    v10(v9);
  }

  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E010A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_237C6B728;

  return SupervisedEstimatorToTemporalAdaptor.fitted<A, B>(to:eventHandler:)(a1);
}

uint64_t sub_237E011A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v31 = swift_task_alloc();
  *(v22 + 16) = v31;
  *v31 = v22;
  v31[1] = sub_237C6B728;

  return SupervisedEstimatorToTemporalAdaptor.fitted<A, B, C>(to:validateOn:eventHandler:)(a1, a2, v29, a4, a5, a10, a6, v30, a8, v34, a11, a9, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t _s18CreateMLComponents11TransformerPAAE17adaptedAsTemporalAA0c2ToF7AdaptorVyxGyF_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  (*(v5 + 16))(v8 - v7);
  return (*(v5 + 32))(a2, v9, a1);
}

void sub_237E013EC()
{
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_1_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_237C6A904;
  OUTLINED_FUNCTION_45();

  __asm { BR              X9 }
}

uint64_t UpdatableSupervisedEstimatorToTemporalAdaptor.makeTransformer()(uint64_t a1)
{
  v3 = *(a1 + 16);
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_138(v7, v8, v9, &protocol requirements base descriptor for SupervisedEstimator, &associated type descriptor for SupervisedEstimator.Transformer);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_52_10();
  EstimatorToTemporalAdaptor.base.getter(a1, v1);
  v11 = OUTLINED_FUNCTION_122();
  v12(v11);
  (*(v5 + 8))(v1, v3);
  v13 = OUTLINED_FUNCTION_149();
  return v14(v13);
}

uint64_t UpdatableSupervisedEstimatorToTemporalAdaptor.fitted<A, B>(to:eventHandler:)(uint64_t a1)
{
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_125();
  v4 = v3;
  OUTLINED_FUNCTION_59_8(v5, v6, v7, v8, v3, v9, v10, v11);
  v1[13] = *(v12 + 16);
  OUTLINED_FUNCTION_1_1();
  v1[14] = v13;
  v1[15] = OUTLINED_FUNCTION_27_0();
  v1[16] = *(*(v4 + 24) + 8);
  OUTLINED_FUNCTION_28_24();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[17] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v1[18] = v15;
  v1[19] = v16;
  v1[20] = OUTLINED_FUNCTION_161();
  v1[21] = swift_task_alloc();
  OUTLINED_FUNCTION_28_24();
  v17 = swift_getAssociatedTypeWitness();
  v1[22] = v17;
  OUTLINED_FUNCTION_4();
  v1[23] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23_8();
  v1[24] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  v1[25] = OUTLINED_FUNCTION_27_0();
  v18 = OUTLINED_FUNCTION_28_24();
  v22 = type metadata accessor for AnnotatedFeature(v18, v19, v20, v21);
  v1[26] = v22;
  OUTLINED_FUNCTION_18(v22);
  v1[27] = OUTLINED_FUNCTION_27_0();
  v23 = OUTLINED_FUNCTION_34_0();
  v1[28] = type metadata accessor for TemporalFeature(v23, v24, v25, v26);
  OUTLINED_FUNCTION_1();
  v1[29] = v27;
  v1[30] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v28 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v28);
  v1[31] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_81_3();
  v29 = OUTLINED_FUNCTION_27_0();
  v1[32] = v29;
  v30 = *(v2 + 8);
  v1[33] = v30;
  v32 = OUTLINED_FUNCTION_138(v29, v30, v31, MEMORY[0x277D85850], MEMORY[0x277D85620]);
  v1[34] = v32;
  OUTLINED_FUNCTION_6_1(v32);
  v1[35] = v33;
  v1[36] = OUTLINED_FUNCTION_27_0();
  v34 = OUTLINED_FUNCTION_43_3();
  v1[37] = type metadata accessor for AnnotatedFeature(v34, v35, v17, v36);
  OUTLINED_FUNCTION_1();
  v1[38] = v37;
  v1[39] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v38 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v38);
  v1[40] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v1[41] = v39;
  v1[42] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_61_4();
  v40 = swift_getAssociatedTypeWitness();
  v1[43] = v40;
  OUTLINED_FUNCTION_6_1(v40);
  v1[44] = v41;
  v1[45] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_106_1();
  return OUTLINED_FUNCTION_23_2(v42, v43, v44);
}

uint64_t sub_237E01A44()
{
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_19_18();
  v1 = OUTLINED_FUNCTION_132();
  v2 = OUTLINED_FUNCTION_59_4(v1);
  v3(v2);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_39_13();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_51_3(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_42_4();
  if (v5)
  {
    OUTLINED_FUNCTION_70_5();
    v32 = v6;
    OUTLINED_FUNCTION_63_6();
    v7();
    OUTLINED_FUNCTION_4_70();
    v0[48] = v8;
    OUTLINED_FUNCTION_34_12();
    v31 = v9 + *v9;
    v10 = swift_task_alloc();
    v0[49] = v10;
    OUTLINED_FUNCTION_43_0();
    sub_237EF8A60();
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_20_2();
    *v10 = v11;
    v10[1] = sub_237E02004;
    OUTLINED_FUNCTION_62_4();
    OUTLINED_FUNCTION_15_36();
    OUTLINED_FUNCTION_102_1();

    return v20(v12, v13, v14, v15, v16, v17, v18, v19, v31, v32);
  }

  else
  {
    v23 = OUTLINED_FUNCTION_22_30();
    v24(v23);
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_41_11();
    OUTLINED_FUNCTION_148();
    swift_getAssociatedConformanceWitness();
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[46] = v25;
    *v25 = v26;
    OUTLINED_FUNCTION_36_16(v25);
    OUTLINED_FUNCTION_102_1();

    return MEMORY[0x282200308](v27, v28, v29);
  }
}

uint64_t sub_237E01C58()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 376) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E01D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  if (OUTLINED_FUNCTION_82_2() != 1)
  {
    v55 = v14[24];
    v53 = v14[22];
    v38 = OUTLINED_FUNCTION_14_47();
    v39(v38);
    OUTLINED_FUNCTION_92_2();
    OUTLINED_FUNCTION_93_2();
    v40 = OUTLINED_FUNCTION_50_10();
    AnnotatedFeature.init(feature:annotation:)(v40, v41, v55, v53, v42);
    sub_237EF8A60();
    OUTLINED_FUNCTION_110_1();
    sub_237EF8A20();
    v43 = OUTLINED_FUNCTION_51_10();
    v44(v43);
    goto LABEL_8;
  }

  v15 = OUTLINED_FUNCTION_146();
  v16(v15);
  v17 = OUTLINED_FUNCTION_53_8();
  v18(v17);
  OUTLINED_FUNCTION_39_13();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_51_3(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_42_4();
  if (!v20)
  {
    v45 = OUTLINED_FUNCTION_22_30();
    v46(v45);
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_41_11();
LABEL_8:
    OUTLINED_FUNCTION_148();
    swift_getAssociatedConformanceWitness();
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v14[46] = v47;
    *v47 = v48;
    OUTLINED_FUNCTION_36_16(v47);
    OUTLINED_FUNCTION_18_3();

    return MEMORY[0x282200308](v49, v50, v51);
  }

  OUTLINED_FUNCTION_70_5();
  v56 = v21;
  OUTLINED_FUNCTION_63_6();
  v22();
  OUTLINED_FUNCTION_4_70();
  v14[48] = v23;
  v57 = v56 + 40;
  OUTLINED_FUNCTION_15_0();
  v54 = v24 + *v24;
  v25 = swift_task_alloc();
  v14[49] = v25;
  OUTLINED_FUNCTION_43_0();
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_2();
  *v25 = v26;
  v25[1] = sub_237E02004;
  OUTLINED_FUNCTION_23_31();
  OUTLINED_FUNCTION_18_3();

  return v35(v27, v28, v29, v30, v31, v32, v33, v34, a9, v54, v57, a12, a13, a14);
}

uint64_t sub_237E02004()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 400) = v0;

  v7 = OUTLINED_FUNCTION_7_3();
  v8(v7);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_59();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t UpdatableSupervisedEstimatorToTemporalAdaptor.fitted<A, B, C>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_19_18();
  v25 = v24;
  v23[13] = a20;
  v23[14] = v22;
  v23[11] = v26;
  v23[12] = a19;
  v23[9] = v27;
  v23[10] = v24;
  v23[7] = v28;
  v23[8] = v29;
  v23[6] = v30;
  v23[15] = *(v24 + 16);
  OUTLINED_FUNCTION_1_1();
  v23[16] = v31;
  v23[17] = OUTLINED_FUNCTION_27_0();
  v23[18] = *(*(v25 + 24) + 8);
  OUTLINED_FUNCTION_28_24();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23[19] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v23[20] = v33;
  v23[21] = v34;
  v23[22] = OUTLINED_FUNCTION_161();
  v23[23] = swift_task_alloc();
  OUTLINED_FUNCTION_28_24();
  v35 = swift_getAssociatedTypeWitness();
  v23[24] = v35;
  OUTLINED_FUNCTION_4();
  v23[25] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23_8();
  v23[26] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  v23[27] = OUTLINED_FUNCTION_27_0();
  v36 = OUTLINED_FUNCTION_28_24();
  v40 = type metadata accessor for AnnotatedFeature(v36, v37, v38, v39);
  v23[28] = v40;
  OUTLINED_FUNCTION_18(v40);
  v23[29] = OUTLINED_FUNCTION_27_0();
  v41 = OUTLINED_FUNCTION_34_0();
  v23[30] = type metadata accessor for TemporalFeature(v41, v42, v43, v44);
  OUTLINED_FUNCTION_1();
  v23[31] = v45;
  v23[32] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v46 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v46);
  v23[33] = OUTLINED_FUNCTION_40_11();
  v23[34] = swift_task_alloc();
  OUTLINED_FUNCTION_81_3();
  v47 = OUTLINED_FUNCTION_27_0();
  v23[35] = v47;
  v48 = *(a22 + 8);
  v23[36] = v48;
  v50 = OUTLINED_FUNCTION_138(v47, v48, v49, MEMORY[0x277D85850], MEMORY[0x277D85620]);
  v23[37] = v50;
  OUTLINED_FUNCTION_6_1(v50);
  v23[38] = v51;
  v23[39] = OUTLINED_FUNCTION_40_11();
  v23[40] = swift_task_alloc();
  v52 = OUTLINED_FUNCTION_43_3();
  v23[41] = type metadata accessor for AnnotatedFeature(v52, v53, v35, v54);
  OUTLINED_FUNCTION_1();
  v23[42] = v55;
  v23[43] = swift_task_alloc();
  v23[44] = swift_task_alloc();
  OUTLINED_FUNCTION_34_0();
  v56 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v56);
  v23[45] = OUTLINED_FUNCTION_40_11();
  v23[46] = swift_task_alloc();
  OUTLINED_FUNCTION_1_1();
  v23[47] = v57;
  v23[48] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_43_0();
  v58 = swift_getAssociatedTypeWitness();
  v23[49] = v58;
  OUTLINED_FUNCTION_6_1(v58);
  v23[50] = v59;
  v23[51] = OUTLINED_FUNCTION_40_11();
  v23[52] = swift_task_alloc();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_106_1();
  return OUTLINED_FUNCTION_48_0(v60, v61, v62);
}

uint64_t sub_237E0257C()
{
  OUTLINED_FUNCTION_26_2();
  v2 = OUTLINED_FUNCTION_131();
  v3 = OUTLINED_FUNCTION_107_2(v2);
  v4(v3);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_37_16();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_97_2(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_42_4();
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_10_50();
    v8(v7);
    v9 = sub_237EF8110();
    v10 = OUTLINED_FUNCTION_67_3(v9);
    v1(v10);
    OUTLINED_FUNCTION_86_2();
    OUTLINED_FUNCTION_158();
    OUTLINED_FUNCTION_32_19();
    OUTLINED_FUNCTION_45_12();
    if (v6)
    {
      v11 = OUTLINED_FUNCTION_18_31();
      v12 = *(v0 + 80);
      v13(v11);
      OUTLINED_FUNCTION_9_49();
      OUTLINED_FUNCTION_34_12();
      v14 = swift_task_alloc();
      OUTLINED_FUNCTION_71_3(v14);
      OUTLINED_FUNCTION_1_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_64_6();
      *v12 = v15;
      OUTLINED_FUNCTION_1_87(v16, v17, v18, v19, v20, v21, v22, v23);
      OUTLINED_FUNCTION_156();

      __asm { BRAA            X8, X16 }
    }

    v30 = OUTLINED_FUNCTION_3_76();
    v31(v30);
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_41_11();
    OUTLINED_FUNCTION_98_2();
    swift_getAssociatedConformanceWitness();
    v32 = swift_task_alloc();
    v33 = OUTLINED_FUNCTION_60_7(v32);
    *v33 = v34;
    OUTLINED_FUNCTION_24_28(v33);
  }

  else
  {
    v26 = OUTLINED_FUNCTION_7_56();
    v27(v26);
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_41_11();
    OUTLINED_FUNCTION_98_2();
    swift_getAssociatedConformanceWitness();
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    *(v0 + 448) = v28;
    *v28 = v29;
    OUTLINED_FUNCTION_68_5(v28);
  }

  OUTLINED_FUNCTION_76_5();
  OUTLINED_FUNCTION_156();

  return MEMORY[0x282200308](v35, v36, v37);
}

uint64_t sub_237E02834()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 456) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E02934()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_33_3();
  if (OUTLINED_FUNCTION_82_2() != 1)
  {
    v29 = OUTLINED_FUNCTION_11_46();
    v30(v29);
    OUTLINED_FUNCTION_92_2();
    OUTLINED_FUNCTION_93_2();
    v31 = OUTLINED_FUNCTION_50_10();
    AnnotatedFeature.init(feature:annotation:)(v31, v32, v51, v50, v33);
    OUTLINED_FUNCTION_160();
    OUTLINED_FUNCTION_110_1();
    sub_237EF8A20();
    v34 = OUTLINED_FUNCTION_51_10();
    v35(v34);
    goto LABEL_10;
  }

  v3 = OUTLINED_FUNCTION_130();
  v4(v3);
  v5 = OUTLINED_FUNCTION_53_8();
  v6(v5);
  OUTLINED_FUNCTION_37_16();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_97_2(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_42_4();
  if (!v8)
  {
    v36 = OUTLINED_FUNCTION_7_56();
    v37(v36);
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_41_11();
LABEL_10:
    OUTLINED_FUNCTION_98_2();
    swift_getAssociatedConformanceWitness();
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    *(v0 + 448) = v38;
    *v38 = v39;
    OUTLINED_FUNCTION_68_5(v38);
    goto LABEL_11;
  }

  v9 = OUTLINED_FUNCTION_10_50();
  v10(v9);
  v11 = sub_237EF8110();
  v12 = OUTLINED_FUNCTION_67_3(v11);
  v2(v12);
  OUTLINED_FUNCTION_86_2();
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_32_19();
  OUTLINED_FUNCTION_45_12();
  if (v8)
  {
    v13 = OUTLINED_FUNCTION_18_31();
    OUTLINED_FUNCTION_103_0(v13, v14, v15);
    v16();
    OUTLINED_FUNCTION_9_49();
    OUTLINED_FUNCTION_44_13();
    v17 = swift_task_alloc();
    OUTLINED_FUNCTION_71_3(v17);
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_64_6();
    *v1 = v18;
    OUTLINED_FUNCTION_1_87(v19, v20, v21, v22, v23, v24, v25, v26);
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_18_3();

    __asm { BRAA            X8, X16 }
  }

  v44 = OUTLINED_FUNCTION_3_76();
  v45(v44);
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_41_11();
  OUTLINED_FUNCTION_98_2();
  swift_getAssociatedConformanceWitness();
  v46 = swift_task_alloc();
  v47 = OUTLINED_FUNCTION_60_7(v46);
  *v47 = v48;
  OUTLINED_FUNCTION_24_28(v47);
LABEL_11:
  OUTLINED_FUNCTION_76_5();
  OUTLINED_FUNCTION_105_1();

  return MEMORY[0x282200308](v40, v41, v42);
}

uint64_t sub_237E02C38()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 488) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E02D40()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_33_3();
  if (OUTLINED_FUNCTION_82_2() == 1)
  {
    v1 = OUTLINED_FUNCTION_126();
    v2(v1);
    v3 = OUTLINED_FUNCTION_53_8();
    v4(v3);
    OUTLINED_FUNCTION_32_19();
    OUTLINED_FUNCTION_45_12();
    if (v5)
    {
      v6 = OUTLINED_FUNCTION_18_31();
      OUTLINED_FUNCTION_103_0(v6, v7, v8);
      v9();
      OUTLINED_FUNCTION_9_49();
      OUTLINED_FUNCTION_44_13();
      v10 = swift_task_alloc();
      OUTLINED_FUNCTION_71_3(v10);
      OUTLINED_FUNCTION_1_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_64_6();
      *v0 = v11;
      OUTLINED_FUNCTION_1_87(v12, v13, v14, v15, v16, v17, v18, v19);
      OUTLINED_FUNCTION_147();
      OUTLINED_FUNCTION_18_3();

      __asm { BRAA            X8, X16 }
    }

    v29 = OUTLINED_FUNCTION_3_76();
    v30(v29);
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_41_11();
  }

  else
  {
    v22 = OUTLINED_FUNCTION_11_46();
    v23(v22);
    OUTLINED_FUNCTION_92_2();
    OUTLINED_FUNCTION_93_2();
    v24 = OUTLINED_FUNCTION_50_10();
    AnnotatedFeature.init(feature:annotation:)(v24, v25, v40, v39, v26);
    OUTLINED_FUNCTION_160();
    sub_237EF8A20();
    v27 = OUTLINED_FUNCTION_51_10();
    v28(v27);
  }

  OUTLINED_FUNCTION_98_2();
  swift_getAssociatedConformanceWitness();
  v31 = swift_task_alloc();
  v32 = OUTLINED_FUNCTION_60_7(v31);
  *v32 = v33;
  OUTLINED_FUNCTION_24_28(v32);
  OUTLINED_FUNCTION_76_5();
  OUTLINED_FUNCTION_105_1();

  return MEMORY[0x282200308](v34, v35, v36);
}

uint64_t sub_237E02F6C()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v5 = v4[17];
  v6 = v4[16];
  v7 = v4[15];
  v8 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v9 = v8;
  *(v10 + 520) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t UpdatableSupervisedEstimatorToTemporalAdaptor.update<A, B>(_:with:eventHandler:)()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_125();
  v3 = v2;
  OUTLINED_FUNCTION_59_8(v4, v5, v6, v7, v2, v8, v9, v10);
  v0[13] = *(v11 + 16);
  OUTLINED_FUNCTION_1_1();
  v0[14] = v12;
  v13 = OUTLINED_FUNCTION_27_0();
  v0[15] = v13;
  v14 = *(v3 + 24);
  v0[16] = v14;
  v16 = OUTLINED_FUNCTION_159(v13, *(v14 + 8), v15, &protocol requirements base descriptor for SupervisedEstimator, &associated type descriptor for SupervisedEstimator.Annotation);
  v0[17] = v16;
  OUTLINED_FUNCTION_4();
  v0[18] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23_8();
  v0[19] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  v0[20] = OUTLINED_FUNCTION_27_0();
  v17 = OUTLINED_FUNCTION_28_24();
  v21 = type metadata accessor for AnnotatedFeature(v17, v18, v19, v20);
  v0[21] = v21;
  OUTLINED_FUNCTION_18(v21);
  v0[22] = OUTLINED_FUNCTION_27_0();
  v22 = OUTLINED_FUNCTION_34_0();
  v0[23] = type metadata accessor for TemporalFeature(v22, v23, v24, v25);
  OUTLINED_FUNCTION_1();
  v0[24] = v26;
  v0[25] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v27 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v27);
  v0[26] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_81_3();
  v28 = OUTLINED_FUNCTION_27_0();
  v0[27] = v28;
  v29 = *(v1 + 8);
  v0[28] = v29;
  v31 = OUTLINED_FUNCTION_138(v28, v29, v30, MEMORY[0x277D85850], MEMORY[0x277D85620]);
  v0[29] = v31;
  OUTLINED_FUNCTION_6_1(v31);
  v0[30] = v32;
  v0[31] = OUTLINED_FUNCTION_27_0();
  v33 = OUTLINED_FUNCTION_43_3();
  v0[32] = type metadata accessor for AnnotatedFeature(v33, v34, v16, v35);
  OUTLINED_FUNCTION_1();
  v0[33] = v36;
  v0[34] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v37 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v37);
  v0[35] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v0[36] = v38;
  v0[37] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_61_4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[38] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v0[39] = v40;
  v0[40] = OUTLINED_FUNCTION_27_0();
  v41 = OUTLINED_FUNCTION_6_2();
  return OUTLINED_FUNCTION_23_2(v41, v42, v43);
}

uint64_t sub_237E03694()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 336) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E03794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  if (OUTLINED_FUNCTION_82_2() != 1)
  {
    v55 = v14[19];
    v53 = v14[17];
    v38 = OUTLINED_FUNCTION_14_47();
    v39(v38);
    OUTLINED_FUNCTION_92_2();
    OUTLINED_FUNCTION_93_2();
    v40 = OUTLINED_FUNCTION_50_10();
    AnnotatedFeature.init(feature:annotation:)(v40, v41, v55, v53, v42);
    sub_237EF8A60();
    OUTLINED_FUNCTION_110_1();
    sub_237EF8A20();
    v43 = OUTLINED_FUNCTION_51_10();
    v44(v43);
    goto LABEL_8;
  }

  v15 = OUTLINED_FUNCTION_104_1();
  v16(v15);
  v17 = OUTLINED_FUNCTION_53_8();
  v18(v17);
  OUTLINED_FUNCTION_124();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_51_3(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_42_4();
  if (!v20)
  {
    v45 = OUTLINED_FUNCTION_38_11();
    v46(v45);
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_41_11();
LABEL_8:
    swift_getAssociatedConformanceWitness();
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v14[41] = v47;
    *v47 = v48;
    v47[1] = sub_237E03694;
    OUTLINED_FUNCTION_76_5();
    OUTLINED_FUNCTION_18_3();

    return MEMORY[0x282200308](v49, v50, v51);
  }

  OUTLINED_FUNCTION_153();
  v56 = v21;
  OUTLINED_FUNCTION_63_6();
  v22();
  OUTLINED_FUNCTION_4_70();
  v14[43] = v23;
  v57 = v56 + 24;
  OUTLINED_FUNCTION_15_0();
  v54 = v24 + *v24;
  v25 = swift_task_alloc();
  v14[44] = v25;
  OUTLINED_FUNCTION_43_0();
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_2();
  *v25 = v26;
  v25[1] = sub_237E03A6C;
  OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_18_3();

  return v35(v27, v28, v29, v30, v31, v32, v33, v34, a9, v54, v57, a12, a13, a14);
}

uint64_t sub_237E03A6C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 360) = v0;

  v7 = OUTLINED_FUNCTION_7_3();
  v8(v7);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_59();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237E03BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  v24 = *(v14 + 144);
  v25 = *(v14 + 120);

  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_18_3();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, v24, v25, a12, a13, a14);
}

uint64_t sub_237E03CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  (*(v14[30] + 8))(v14[31], v14[29]);
  v15 = OUTLINED_FUNCTION_9_9();
  v16(v15);
  v17 = OUTLINED_FUNCTION_31_0();
  v18(v17);
  OUTLINED_FUNCTION_99_1();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_18_3();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_237E03DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_99_1();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_18_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

void UpdatableSupervisedEstimatorToTemporalAdaptor.encode(_:to:)()
{
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_101_3(v2, v3);
  OUTLINED_FUNCTION_61_4();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_56();
  EstimatorToTemporalAdaptor.base.getter(v0, v1);
  OUTLINED_FUNCTION_129();
  swift_getAssociatedConformanceWitness();
  v6 = OUTLINED_FUNCTION_23_8();
  OUTLINED_FUNCTION_134(v6, v7, v8, v9);
  v10 = OUTLINED_FUNCTION_30_27();
  v11(v10);
  v12 = OUTLINED_FUNCTION_144();
  v13(v12);
  v14 = OUTLINED_FUNCTION_100_2();
  v15(v14);
  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_12_6();
}

void UpdatableSupervisedEstimatorToTemporalAdaptor.decode(from:)()
{
  OUTLINED_FUNCTION_13_4();
  v3 = OUTLINED_FUNCTION_8_61(v1, v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_56();
  OUTLINED_FUNCTION_43_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_52_10();
  OUTLINED_FUNCTION_96_2();
  v5 = OUTLINED_FUNCTION_20_33();
  v6(v5);
  v7 = OUTLINED_FUNCTION_47_9();
  v8(v7);
  if (!v0)
  {
    v9 = OUTLINED_FUNCTION_48_10();
    v10(v9);
  }

  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_12_6();
}

void UpdatableSupervisedEstimatorToTemporalAdaptor.decodeWithOptimizer(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v29 = *(v27 + 16);
  v28 = *(v27 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v32 = v31;
  OUTLINED_FUNCTION_9();
  v34 = MEMORY[0x28223BE20](v33);
  v36 = &a9 - v35;
  (*(v28 + 40))(v24, v29, v28, v34);
  if (!v20)
  {
    (*(v32 + 32))(v26, v36, AssociatedTypeWitness);
  }

  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E0425C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237E042B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6B728;

  return UpdatableSupervisedEstimatorToTemporalAdaptor.update<A, B>(_:with:eventHandler:)();
}

uint64_t sub_237E043E4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237E04440(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_237C6B728;

  return UpdatableSupervisedEstimatorToTemporalAdaptor.fitted<A, B>(to:eventHandler:)(a1);
}

uint64_t sub_237E04540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v31 = swift_task_alloc();
  *(v22 + 16) = v31;
  *v31 = v22;
  v31[1] = sub_237C6B728;

  return UpdatableSupervisedEstimatorToTemporalAdaptor.fitted<A, B, C>(to:validateOn:eventHandler:)(a1, a2, v29, a4, a5, a10, a6, v30, a8, v34, a11, a9, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_237E046B4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_237E047F0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_1_87(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v10 + 8) = v8;
  result = v9[23];
  v13 = v9[18];
  v11[3] = v9[15];
  v11[4] = v13;
  v11[2] = a8;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_70()
{
  result = EstimatorToTemporalAdaptor.base.getter(v2, v0);
  *(v1 + 24) = *(v1 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_61@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 72) = v2;
  *(v3 - 96) = a2;
  *(v3 - 88) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_49()
{
  result = EstimatorToTemporalAdaptor.base.getter(v2, v0);
  v4 = v1[2];
  v5 = v1[3];
  v1[4] = v4;
  v1[5] = v5;
  v1[62] = v4;
  v1[63] = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_50()
{
  result = v0[52];
  v2 = v0[50];
  v0[58] = *(v2 + 8);
  v0[59] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_46()
{
  v2 = *(v0 + 256);
  *(v1 + 40) = *(v0 + 224);
  return v2;
}

uint64_t OUTLINED_FUNCTION_29_23()
{
}

uint64_t OUTLINED_FUNCTION_32_19()
{

  return sub_237EF91A0();
}

uint64_t OUTLINED_FUNCTION_41_11()
{

  return sub_237EF8BC0();
}

uint64_t OUTLINED_FUNCTION_44_13()
{
  result = *(v0 + 40) + 48;
  *(v0 + 40) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_59_8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[11] = a8;
  v9[12] = v8;
  v9[9] = a6;
  v9[10] = a7;
  v9[7] = a4;
  v9[8] = a5;
  v9[5] = a2;
  v9[6] = a3;
  v9[4] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_71_3(uint64_t a1)
{
  *(v1 + 512) = a1;

  return sub_237EF8A60();
}

uint64_t OUTLINED_FUNCTION_72_4()
{

  return sub_237EF8BC0();
}

uint64_t OUTLINED_FUNCTION_82_2()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_88_3()
{
}

uint64_t OUTLINED_FUNCTION_92_2()
{

  return TemporalFeature.feature.getter(v0, v1);
}

uint64_t OUTLINED_FUNCTION_93_2()
{

  return AnnotatedFeature.annotation.getter(v0, v1);
}

uint64_t OUTLINED_FUNCTION_97_2(uint64_t a1)
{
  *(v1 + 440) = a1;

  return sub_237EF91A0();
}

uint64_t OUTLINED_FUNCTION_99_1()
{
}

uint64_t OUTLINED_FUNCTION_101_3(uint64_t result, uint64_t a2)
{
  *(v3 - 72) = v2;
  *(v3 - 96) = result;
  *(v3 - 88) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_107_2(uint64_t a1)
{
  v2[2] = a1;
  v2[53] = *(v3 + 16);
  v2[54] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

uint64_t OUTLINED_FUNCTION_115()
{

  return AnnotatedFeature.feature.getter(v0, v1);
}

uint64_t OUTLINED_FUNCTION_116()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_120()
{
}

uint64_t OUTLINED_FUNCTION_131()
{

  return sub_237EF8110();
}

uint64_t OUTLINED_FUNCTION_132()
{

  return sub_237EF8110();
}

uint64_t OUTLINED_FUNCTION_134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for TransformerToTemporalAdaptor(a1, a2, a3, a4);

  return EstimatorToTemporalAdaptor.base.getter(v5, v4);
}

uint64_t OUTLINED_FUNCTION_137(uint64_t result)
{
  *(v1 + 128) = result;
  *(v1 + 136) = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_139()
{

  return sub_237EF8110();
}

uint64_t OUTLINED_FUNCTION_140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_141()
{

  return TemporalFeature.feature.getter(v0, v1);
}

uint64_t OUTLINED_FUNCTION_145(uint64_t result, uint64_t a2)
{
  *(v3 - 72) = v2;
  *(v3 - 96) = result;
  *(v3 - 88) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_158()
{

  return sub_237EF86F0();
}

uint64_t OUTLINED_FUNCTION_159(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_160()
{

  return sub_237EF8A60();
}

uint64_t OUTLINED_FUNCTION_161()
{

  return swift_task_alloc();
}

uint64_t AudioPreprocessingError.debugDescription.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000046, 0x8000000237F00050);
  v3 = [v2 description];
  v4 = sub_237EF8590();
  v6 = v5;

  MEMORY[0x2383E0710](v4, v6);

  MEMORY[0x2383E0710](0xD000000000000016, 0x8000000237F000A0);
  v7 = [v1 description];
  v8 = sub_237EF8590();
  v10 = v9;

  MEMORY[0x2383E0710](v8, v10);

  MEMORY[0x2383E0710](46, 0xE100000000000000);
  return 0;
}

uint64_t static AudioPreprocessingError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  sub_237D05624();
  v6 = v2;
  v7 = v3;
  v8 = v4;
  v9 = v5;
  LOBYTE(v5) = sub_237EF9050();

  if (v5)
  {
    v10 = sub_237EF9050();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

unint64_t sub_237E05850()
{
  result = qword_27DEB41D8[0];
  if (!qword_27DEB41D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB41D8);
  }

  return result;
}

uint64_t Classification.init(label:probability:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, float a5@<S0>)
{
  (*(*(a2 - 8) + 32))(a4, a1, a2);
  result = type metadata accessor for Classification(0, a2, a3, v9);
  *(a4 + *(result + 36)) = a5;
  return result;
}

BOOL static Classification.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_237EF8520() & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for Classification(0, a3, a4, v8);
  return *(a1 + *(v9 + 36)) == *(a2 + *(v9 + 36));
}

uint64_t sub_237E05A94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C696261626F7270 && a2 == 0xEB00000000797469)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

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

uint64_t sub_237E05B5C(char a1)
{
  if (a1)
  {
    return 0x6C696261626F7270;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_237E05BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E05A94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237E05BD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237E05C2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Classification.hashValue.getter(uint64_t a1)
{
  sub_237EFA120();
  Classification.hash(into:)(v3, a1);
  return sub_237EFA170();
}

uint64_t sub_237E05D28(uint64_t a1, uint64_t a2)
{
  sub_237EFA120();
  Classification.hash(into:)(v4, a2);
  return sub_237EFA170();
}

uint64_t Classification<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[2] = a4;
  v13[0] = a2;
  type metadata accessor for Classification.CodingKeys(255, *(a2 + 16), *(a2 + 24), a4);
  OUTLINED_FUNCTION_0_71();
  swift_getWitnessTable();
  v5 = sub_237EF9A80();
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA1B0();
  v15 = 0;
  v11 = v13[3];
  sub_237EF9A70();
  if (!v11)
  {
    v14 = 1;
    sub_237EF9A40();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t Classification<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v39 = a3;
  v35 = a5;
  OUTLINED_FUNCTION_1_1();
  v37 = v8;
  MEMORY[0x28223BE20](v9);
  v40 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Classification.CodingKeys(255, v11, v13, v12);
  OUTLINED_FUNCTION_0_71();
  swift_getWitnessTable();
  v38 = sub_237EF99A0();
  OUTLINED_FUNCTION_1_1();
  v36 = v14;
  MEMORY[0x28223BE20](v15);
  v17 = type metadata accessor for Classification(0, a2, a4, v16);
  OUTLINED_FUNCTION_1_1();
  v34 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v33 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v22 = v41;
  sub_237EFA190();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v41 = v17;
  v23 = v37;
  v43 = 0;
  sub_237EF9970();
  v24 = *(v23 + 32);
  v39 = v21;
  v24(v21, v40, a2);
  v42 = 1;
  sub_237EF9940();
  v26 = v25;
  v27 = OUTLINED_FUNCTION_2_81();
  v28(v27);
  v29 = v41;
  v30 = v39;
  *&v39[*(v41 + 36)] = v26;
  v31 = v34;
  (*(v34 + 16))(v35, v30, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v31 + 8))(v30, v29);
}

uint64_t sub_237E062C8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_DWORD *sub_237E06340(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 < a2)
  {
    v6 = ((*(*(v4 - 8) + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
    v7 = a2 - v5;
    v8 = v6 & 0xFFFFFFFC;
    if ((v6 & 0xFFFFFFFC) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = v7 + 1;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    switch(v11)
    {
      case 1:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v12 = *(result + v6);
        if (!v12)
        {
          goto LABEL_22;
        }

LABEL_18:
        v13 = v12 - 1;
        if (v8)
        {
          v13 = 0;
          LODWORD(v8) = *result;
        }

        return (v5 + (v8 | v13) + 1);
      default:
LABEL_22:
        if (v5)
        {
          return __swift_getEnumTagSinglePayload(result, v5, v4);
        }

        return 0;
    }
  }

  return __swift_getEnumTagSinglePayload(result, v5, v4);
}

void sub_237E06444(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = ((*(*(v6 - 8) + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v7 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v9 = a3 - v7;
    if (((*(*(v6 - 8) + 64) + 3) & 0xFFFFFFFC) == 0xFFFFFFFC)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 <= v7)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_34:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + 3) & 0xFFFFFFFC) == 0xFFFFFFFC)
    {
      v13 = a2 - v7;
    }

    else
    {
      v13 = 1;
    }

    if (((*(*(v6 - 8) + 64) + 3) & 0xFFFFFFFC) != 0xFFFFFFFC)
    {
      v14 = ~v7 + a2;
      bzero(a1, v8);
      *a1 = v14;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v13;
        break;
      case 2:
        *&a1[v8] = v13;
        break;
      case 3:
        goto LABEL_34;
      case 4:
        *&a1[v8] = v13;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_237E065DC(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_237E06724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_19_0();
  v12 = v11;
  OUTLINED_FUNCTION_22_3();
  v14 = (*(v13 + 32))(v12);
  v17 = v8;
  v18 = v7;
  v19 = v6;
  v20 = a6;
  OUTLINED_FUNCTION_51_11(v14, &v17);
  return (*(*(v7 - 8) + 32))(v12 + v15, v9, v7);
}

void sub_237E067D4()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = type metadata accessor for TransformerToEstimatorAdaptor(0, v4, v0, v4);
  OUTLINED_FUNCTION_1_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  OUTLINED_FUNCTION_22_3();
  (*(v18 + 32))(v11, v9, v7);
  Transformer.adaptedAsEstimator()(v5, v1);
  OUTLINED_FUNCTION_22_3();
  v19 = OUTLINED_FUNCTION_88_1();
  v20(v19);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_64();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = v12;
  v27 = AssociatedTypeWitness;
  v28 = WitnessTable;
  v29 = AssociatedConformanceWitness;
  v24 = type metadata accessor for EstimatorToSupervisedAdaptor(255, &v26);
  OUTLINED_FUNCTION_0_72();
  v25 = swift_getWitnessTable();
  v26 = v7;
  v27 = v24;
  v28 = v3;
  v29 = v25;
  OUTLINED_FUNCTION_51_11(v25, &v26);
  OUTLINED_FUNCTION_31_0();
  Estimator.adaptedAsSupervised<A>(annotationType:)();
  (*(v14 + 8))(v17, v12);
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237E069C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  EstimatorToSupervisedAdaptor.init(_:)(a1, a4, a6);
  v12 = OUTLINED_FUNCTION_20_3();
  v14 = type metadata accessor for EstimatorToSupervisedAdaptor(v12, v13);
  OUTLINED_FUNCTION_0_72();
  v17[0] = v14;
  v17[1] = a3;
  WitnessTable = swift_getWitnessTable();
  v19 = a5;
  OUTLINED_FUNCTION_51_11(WitnessTable, v17);
  return (*(*(a3 - 8) + 32))(a6 + v15, a2, a3);
}

uint64_t sub_237E06AE8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  OUTLINED_FUNCTION_22_3();
  (*(v10 + 32))(a5);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v11 = OUTLINED_FUNCTION_20_3();
  v13 = type metadata accessor for EstimatorToSupervisedAdaptor(v11, v12);
  OUTLINED_FUNCTION_0_72();
  v16[0] = a2;
  v16[1] = v13;
  v16[2] = a4;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_51_11(WitnessTable, v16);
  return EstimatorToSupervisedAdaptor.init(_:)(a1, a3, a5 + v14);
}

uint64_t sub_237E06C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8[13] = a7;
  v8[14] = v7;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  v8[15] = a5[4];
  v8[16] = a5[2];
  OUTLINED_FUNCTION_47_10(a1, a2, a3, a4, &associated type descriptor for SupervisedEstimator.Transformer);
  v8[17] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_237EF8A60();
  v8[18] = v11;
  v15 = OUTLINED_FUNCTION_47_10(v11, v12, v13, v14, &associated type descriptor for SupervisedEstimator.Annotation);
  v8[19] = v15;
  v16 = sub_237EF9640();
  v8[20] = v16;
  v17 = OUTLINED_FUNCTION_10_20();
  v8[21] = v17;
  OUTLINED_FUNCTION_1_5();
  WitnessTable = swift_getWitnessTable();
  v8[22] = WitnessTable;
  v8[2] = v11;
  v8[3] = v16;
  v8[4] = v17;
  v8[5] = WitnessTable;
  v8[23] = sub_237EF9380();
  v8[24] = swift_getWitnessTable();
  OUTLINED_FUNCTION_56_3();
  v19 = sub_237EF9340();
  v8[25] = v19;
  OUTLINED_FUNCTION_6_1(v19);
  v8[26] = v20;
  v8[27] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v8[28] = v21;
  v8[29] = OUTLINED_FUNCTION_27_0();
  v8[30] = type metadata accessor for AnnotatedFeature(255, AssociatedTypeWitness, v15, v22);
  OUTLINED_FUNCTION_56_3();
  v23 = sub_237EF9640();
  v8[31] = v23;
  OUTLINED_FUNCTION_6_1(v23);
  v8[32] = v24;
  v8[33] = OUTLINED_FUNCTION_27_0();
  v8[34] = a5[5];
  v8[35] = a5[3];
  v25 = swift_getAssociatedTypeWitness();
  v8[36] = v25;
  OUTLINED_FUNCTION_6_1(v25);
  v8[37] = v26;
  v8[38] = swift_task_alloc();
  v8[39] = swift_task_alloc();
  v8[40] = swift_checkMetadataState();
  OUTLINED_FUNCTION_1_1();
  v8[41] = v27;
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();
  v8[44] = *(v16 - 8);
  v8[45] = OUTLINED_FUNCTION_27_0();
  v28 = sub_237EF9340();
  v8[46] = v28;
  OUTLINED_FUNCTION_6_1(v28);
  v8[47] = v29;
  v8[48] = OUTLINED_FUNCTION_27_0();
  v8[49] = swift_getAssociatedTypeWitness();
  v30 = sub_237EF9640();
  v8[50] = v30;
  OUTLINED_FUNCTION_6_1(v30);
  v8[51] = v31;
  v8[52] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v32, v33, v34);
}

uint64_t sub_237E070B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_155();
  v58 = v22[52];
  v63 = v22[46];
  v64 = v22[47];
  v24 = v22[34];
  v23 = v22[35];
  v61 = v22[45];
  v62 = v22[19];
  v25 = v22[16];
  v66 = v22[15];
  v27 = v22[12];
  v26 = v22[13];
  v60 = v22[8];
  v28 = OUTLINED_FUNCTION_88_1();
  MEMORY[0x2383E08A0](v28);
  v29 = swift_task_alloc();
  *v29 = v25;
  v29[1] = v23;
  v56 = v23;
  v29[2] = v27;
  v29[3] = v66;
  v29[4] = v24;
  v30 = v24;
  v29[5] = v26;
  KeyPath = swift_getKeyPath();

  v32 = swift_allocObject();
  v32[2] = v25;
  v32[3] = v23;
  v32[4] = v27;
  v32[5] = v66;
  v32[6] = v30;
  v32[7] = v26;
  v32[8] = KeyPath;
  OUTLINED_FUNCTION_0_6();
  WitnessTable = swift_getWitnessTable();
  sub_237EF9860();

  v59 = *(v64 + 8);
  v33 = OUTLINED_FUNCTION_13_6();
  v34(v33);
  v35 = OUTLINED_FUNCTION_88_1();
  MEMORY[0x2383E08A0](v35);
  v36 = swift_task_alloc();
  v37 = v25;
  v38 = v23;
  *v36 = v25;
  v36[1] = v23;
  v36[2] = v27;
  v36[3] = v66;
  v36[4] = v30;
  v39 = v30;
  v36[5] = v26;
  v40 = swift_getKeyPath();

  v41 = swift_allocObject();
  v41[2] = v37;
  v41[3] = v38;
  v41[4] = v27;
  v41[5] = v66;
  v41[6] = v39;
  v41[7] = v26;
  v41[8] = v40;
  sub_237EF9860();

  v42 = OUTLINED_FUNCTION_13_6();
  v59(v42);
  v67 = v66 + 40;
  OUTLINED_FUNCTION_15_0();
  v65 = v43 + *v43;
  v44 = swift_task_alloc();
  v22[53] = v44;
  *v44 = v22;
  v44[1] = sub_237E073C0;
  OUTLINED_FUNCTION_30_24();

  return v53(v45, v46, v47, v48, v49, v50, v51, v52, a9, v56, WitnessTable, v58, v59, v60, v61, v62, v63, v65, v67, a20, a21, a22);
}

uint64_t sub_237E073C0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v5 = v4;
  *(v6 + 432) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E074C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_49_4();
  OUTLINED_FUNCTION_60();
  v18 = v16[54];
  sub_237EF8B90();
  if (v18)
  {
    v19 = OUTLINED_FUNCTION_30_28();
    v20(v19);
    OUTLINED_FUNCTION_25_28();
    v45 = v22;
    v46 = v21;
    v47 = v16[29];
    v48 = v16[27];
    (*(v23 + 8))(v17, v16[20]);
    v24 = OUTLINED_FUNCTION_31_0();
    v25(v24);

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_49_0();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, v45, v46, v47, v48, a13, a14, a15, a16);
  }

  else
  {
    v35 = swift_task_alloc();
    v16[55] = v35;
    OUTLINED_FUNCTION_1_5();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_46_2();
    *v35 = v36;
    v35[1] = sub_237E0765C;
    OUTLINED_FUNCTION_49_0();

    return Transformer.applied<A>(to:eventHandler:)(v37, v38, v39, v40, v41, v42, v43);
  }
}

uint64_t sub_237E0765C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 448) = v4;
  *(v2 + 456) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_237E07760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_155();
  v24 = v22[57];
  sub_237EF8B90();
  if (v24)
  {

    v25 = OUTLINED_FUNCTION_31_0();
    v26(v25);
    OUTLINED_FUNCTION_25_28();
    v70 = v28;
    v72 = v27;
    v74 = v22[29];
    v76 = v22[27];
    (*(v29 + 8))(v23, v22[20]);
    v30 = OUTLINED_FUNCTION_31_0();
    v31(v30);

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_30_24();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, v70, v72, v74, v76, a19, a20, a21, a22);
  }

  else
  {
    v77 = v22[34];
    v66 = v22[33];
    v67 = v22[30];
    v41 = v22[28];
    v42 = v22[29];
    v43 = v22[27];
    v68 = v22[26];
    v71 = v22[31];
    v44 = v22[24];
    v64 = v22[35];
    v65 = v22[25];
    v45 = v22[23];
    v47 = v22[15];
    v46 = v22[16];
    v63 = v22[13];
    v48 = v22[12];
    v73 = *(v22[11] + 52);
    v75 = v22[14];
    v22[6] = v22[56];
    sub_237EFA000();

    MEMORY[0x2383E08A0](v45, v44);
    (*(v41 + 8))(v42, v45);
    v49 = swift_allocObject();
    v49[2] = v46;
    v49[3] = v64;
    v49[4] = v48;
    v49[5] = v47;
    v49[6] = v77;
    v49[7] = v63;
    v50 = swift_allocObject();
    v50[2] = v46;
    v50[3] = v64;
    v50[4] = v48;
    v50[5] = v47;
    v50[6] = v77;
    v50[7] = v63;
    v50[8] = sub_237E0B8C8;
    v50[9] = v49;
    swift_getWitnessTable();
    sub_237EF9860();

    (*(v68 + 8))(v43, v65);
    v78 = v77 + 40;
    OUTLINED_FUNCTION_15_0();
    v69 = v51 + *v51;
    v52 = swift_task_alloc();
    v22[58] = v52;
    OUTLINED_FUNCTION_1_5();
    swift_getWitnessTable();
    *v52 = v22;
    v52[1] = sub_237E07AFC;
    OUTLINED_FUNCTION_30_24();

    return v61(v53, v54, v55, v56, v57, v58, v59, v60, v63, v64, v65, v66, v67, v69, v71, v73, v75, v78, a19, a20, a21, a22);
  }
}

uint64_t sub_237E07AFC()
{
  v2 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 472) = v0;

  (*(v2[32] + 8))(v2[33], v2[31]);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_237E07C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_155();
  v24 = v22[51];
  v23 = v22[52];
  v25 = v22[50];
  v48 = v22[45];
  v49 = v22[48];
  v26 = v22[41];
  v27 = v22[42];
  v28 = v22[40];
  v42 = v22[43];
  v43 = v22[39];
  v29 = v22[37];
  v30 = v22[38];
  v31 = v22[36];
  v44 = v22[34];
  v45 = v22[35];
  v50 = v22[33];
  v51 = v22[29];
  v52 = v22[27];
  v46 = v22[7];
  v47 = v22[17];
  (*(v22[44] + 8))();
  (*(v24 + 8))(v23, v25);
  (*(v26 + 32))(v27, v42, v28);
  (*(v29 + 32))(v30, v43, v31);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  ComposedTransformer.init(_:_:)(v27, v30, v28, v31, v47, AssociatedConformanceWitness, v46);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_30_24();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, a20, a21, a22);
}

uint64_t sub_237E07E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_49_4();
  OUTLINED_FUNCTION_60();
  v16 = OUTLINED_FUNCTION_6_57();
  v17(v16);
  v18 = OUTLINED_FUNCTION_13_6();
  v19(v18);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_49_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_237E07ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_49_4();
  OUTLINED_FUNCTION_60();
  v16 = OUTLINED_FUNCTION_30_28();
  v17(v16);
  v18 = OUTLINED_FUNCTION_6_57();
  v19(v18);
  v20 = OUTLINED_FUNCTION_13_6();
  v21(v20);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_49_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_237E07FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_49_4();
  OUTLINED_FUNCTION_60();
  v16 = OUTLINED_FUNCTION_30_28();
  v17(v16);
  v18 = OUTLINED_FUNCTION_6_57();
  v19(v18);
  v20 = OUTLINED_FUNCTION_13_6();
  v21(v20);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_49_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_237E0809C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v18 - v10;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedTypeWitness();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a1, v12, v13);
  (*(v9 + 16))(v11, a2, AssociatedTypeWitness);
  return AnnotatedFeature.init(feature:annotation:)(v15, v11, v12, AssociatedTypeWitness, a5);
}

uint64_t sub_237E08294(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_237E08394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9[21] = v50;
  v9[22] = v8;
  v9[19] = a8;
  v9[20] = v49;
  v9[17] = a6;
  v9[18] = a7;
  v9[15] = a4;
  v9[16] = a5;
  v9[13] = a2;
  v9[14] = a3;
  v9[12] = a1;
  v9[23] = a6[4];
  v9[24] = a6[2];
  OUTLINED_FUNCTION_48_11(a1, a2, a3, a4, &associated type descriptor for SupervisedEstimator.Transformer);
  v9[25] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_237EF8A60();
  v9[26] = v11;
  v15 = OUTLINED_FUNCTION_48_11(v11, v12, v13, v14, &associated type descriptor for SupervisedEstimator.Annotation);
  v9[27] = v15;
  v16 = sub_237EF9640();
  v9[28] = v16;
  v17 = OUTLINED_FUNCTION_10_20();
  v9[29] = v17;
  WitnessTable = swift_getWitnessTable();
  v9[30] = WitnessTable;
  v9[2] = v11;
  v9[3] = v16;
  v9[4] = v17;
  v9[5] = WitnessTable;
  v9[31] = sub_237EF9380();
  v9[32] = swift_getWitnessTable();
  v19 = sub_237EF9340();
  v9[33] = v19;
  OUTLINED_FUNCTION_6_1(v19);
  v9[34] = v20;
  v9[35] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v9[36] = v21;
  v9[37] = OUTLINED_FUNCTION_27_0();
  v9[38] = type metadata accessor for AnnotatedFeature(255, AssociatedTypeWitness, v15, v22);
  v23 = sub_237EF9640();
  v9[39] = v23;
  OUTLINED_FUNCTION_6_1(v23);
  v9[40] = v24;
  v9[41] = OUTLINED_FUNCTION_27_0();
  v25 = sub_237EF9640();
  v9[42] = v25;
  v26 = swift_getWitnessTable();
  v9[43] = v26;
  v9[6] = v11;
  v9[7] = v25;
  v9[8] = v17;
  v9[9] = v26;
  v9[44] = sub_237EF9380();
  v9[45] = swift_getWitnessTable();
  v27 = sub_237EF9340();
  v9[46] = v27;
  OUTLINED_FUNCTION_6_1(v27);
  v9[47] = v28;
  v9[48] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v9[49] = v29;
  v9[50] = OUTLINED_FUNCTION_27_0();
  v30 = sub_237EF9640();
  v9[51] = v30;
  OUTLINED_FUNCTION_6_1(v30);
  v9[52] = v31;
  v9[53] = OUTLINED_FUNCTION_27_0();
  v9[54] = a6[5];
  v9[55] = a6[3];
  v32 = swift_getAssociatedTypeWitness();
  v9[56] = v32;
  OUTLINED_FUNCTION_6_1(v32);
  v9[57] = v33;
  v9[58] = swift_task_alloc();
  v9[59] = swift_task_alloc();
  v9[60] = swift_task_alloc();
  v9[61] = swift_checkMetadataState();
  OUTLINED_FUNCTION_1_1();
  v9[62] = v34;
  v9[63] = swift_task_alloc();
  v9[64] = swift_task_alloc();
  v9[65] = *(v16 - 8);
  v9[66] = OUTLINED_FUNCTION_27_0();
  v35 = sub_237EF9340();
  v9[67] = v35;
  OUTLINED_FUNCTION_6_1(v35);
  v9[68] = v36;
  v9[69] = OUTLINED_FUNCTION_27_0();
  v9[70] = swift_getAssociatedTypeWitness();
  v37 = sub_237EF9640();
  v9[71] = v37;
  OUTLINED_FUNCTION_6_1(v37);
  v9[72] = v38;
  v9[73] = OUTLINED_FUNCTION_27_0();
  v9[74] = *(v25 - 8);
  v9[75] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_56_3();
  v39 = sub_237EF9340();
  v9[76] = v39;
  OUTLINED_FUNCTION_6_1(v39);
  v9[77] = v40;
  v9[78] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_56_3();
  v41 = sub_237EF9640();
  v9[79] = v41;
  OUTLINED_FUNCTION_6_1(v41);
  v9[80] = v42;
  v9[81] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v43, v44, v45);
}

void sub_237E08ADC()
{
  v29 = v0[78];
  v34 = v0[77];
  v30 = v0[76];
  v35 = v0[69];
  v36 = v0[68];
  v31 = v0[67];
  v1 = v0[54];
  v2 = v0[55];
  v3 = v0[24];
  v33 = v3;
  v39 = v0[23];
  v4 = v0[20];
  v5 = v0[21];
  v7 = v0[18];
  v6 = v0[19];
  v27 = v4;
  MEMORY[0x2383E08A0](v7, v4);
  v8 = swift_task_alloc();
  *v8 = v3;
  v8[1] = v2;
  v8[2] = v7;
  v8[3] = v6;
  v8[4] = v39;
  v8[5] = v1;
  v9 = v1;
  v28 = v1;
  v8[6] = v4;
  v8[7] = v5;
  KeyPath = swift_getKeyPath();

  OUTLINED_FUNCTION_79();
  v11 = swift_allocObject();
  v11[2] = v33;
  v11[3] = v2;
  v11[4] = v7;
  v11[5] = v6;
  v11[6] = v39;
  v11[7] = v9;
  v11[8] = v4;
  v11[9] = v5;
  v11[10] = KeyPath;
  OUTLINED_FUNCTION_0_6();
  swift_getWitnessTable();
  sub_237EF9860();

  v26 = *(v34 + 8);
  v26(v29, v30);
  v12 = v7;
  MEMORY[0x2383E08A0](v7, v4);
  v13 = swift_task_alloc();
  *v13 = v33;
  v13[1] = v2;
  v13[2] = v7;
  v13[3] = v6;
  v25 = v7;
  v13[4] = v39;
  v13[5] = v28;
  v13[6] = v4;
  v13[7] = v5;
  v14 = swift_getKeyPath();

  OUTLINED_FUNCTION_79();
  v15 = swift_allocObject();
  v15[2] = v33;
  v15[3] = v2;
  v15[4] = v12;
  v15[5] = v6;
  v15[6] = v39;
  v15[7] = v28;
  v15[8] = v4;
  v15[9] = v5;
  v15[10] = v14;
  sub_237EF9860();

  v26(v29, v30);
  MEMORY[0x2383E08A0](v6, v5);
  v16 = swift_task_alloc();
  *v16 = v33;
  v16[1] = v2;
  v16[2] = v25;
  v16[3] = v6;
  v16[4] = v39;
  v16[5] = v28;
  v16[6] = v4;
  v16[7] = v5;
  v17 = swift_getKeyPath();

  OUTLINED_FUNCTION_79();
  v18 = swift_allocObject();
  v18[2] = v33;
  v18[3] = v2;
  v18[4] = v25;
  v18[5] = v6;
  v18[6] = v39;
  v18[7] = v28;
  v18[8] = v27;
  v18[9] = v5;
  v18[10] = v17;
  swift_getWitnessTable();
  sub_237EF9860();

  v32 = *(v36 + 8);
  v32(v35, v31);
  MEMORY[0x2383E08A0](v6, v5);
  v19 = swift_task_alloc();
  *v19 = v33;
  v19[1] = v2;
  v19[2] = v25;
  v19[3] = v6;
  v19[4] = v39;
  v19[5] = v28;
  v19[6] = v27;
  v19[7] = v5;
  v20 = swift_getKeyPath();

  OUTLINED_FUNCTION_79();
  v21 = swift_allocObject();
  v21[2] = v33;
  v21[3] = v2;
  v21[4] = v25;
  v21[5] = v6;
  v21[6] = v39;
  v21[7] = v28;
  v21[8] = v27;
  v21[9] = v5;
  v21[10] = v20;
  sub_237EF9860();

  v22 = OUTLINED_FUNCTION_31_0();
  (v32)(v22);
  OUTLINED_FUNCTION_15_0();
  v37 = v23 + *v23;
  v24 = swift_task_alloc();
  v0[82] = v24;
  *v24 = v0;
  v24[1] = sub_237E09084;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237E09084()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v5 = v4;
  *(v6 + 664) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E09184(uint64_t a1)
{
  v6 = v2[83];
  sub_237EF8B90();
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_19_36();
    v8(v7);
    OUTLINED_FUNCTION_17_39();
    v29 = v9;
    v10 = v2[75];
    v11 = v2[74];
    v12 = v2[73];
    v13 = v2[72];
    v14 = OUTLINED_FUNCTION_8_62();
    v15(v14);
    (*(v13 + 8))(v12, v3);
    (*(v11 + 8))(v10, v4);
    (*(v1 + 8))(v5, v29);

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_50_3();

    __asm { BRAA            X1, X16 }
  }

  v18 = swift_task_alloc();
  v2[84] = v18;
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_46_2();
  *v18 = v19;
  v18[1] = sub_237E0938C;
  OUTLINED_FUNCTION_39_14();
  OUTLINED_FUNCTION_50_3();

  return Transformer.applied<A>(to:eventHandler:)(v20, v21, v22, v23, v24, v25, v26);
}

uint64_t sub_237E0938C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 680) = v4;
  *(v2 + 688) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_237E09494(uint64_t a1)
{
  v4 = v1[86];
  sub_237EF8B90();
  if (v4)
  {
    v5 = v1[64];
    v6 = v1[62];

    v7 = OUTLINED_FUNCTION_31_0();
    v8(v7);
    OUTLINED_FUNCTION_17_39();
    v29 = v9;
    v10 = v1[75];
    v11 = v1[74];
    v12 = v1[73];
    v13 = v1[72];
    v14 = OUTLINED_FUNCTION_8_62();
    v15(v14);
    (*(v13 + 8))(v12, v6 + 8);
    (*(v11 + 8))(v10, v2);
    (*(v5 + 8))(v3, v29);

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_50_3();

    __asm { BRAA            X1, X16 }
  }

  v18 = swift_task_alloc();
  v1[87] = v18;
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_46_2();
  *v18 = v19;
  v18[1] = sub_237E096B0;
  OUTLINED_FUNCTION_39_14();
  OUTLINED_FUNCTION_50_3();

  return Transformer.applied<A>(to:eventHandler:)(v20, v21, v22, v23, v24, v25, v26);
}

uint64_t sub_237E096B0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 704) = v5;
  *(v3 + 712) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_237E097C0(uint64_t a1)
{
  v3 = v1[89];
  sub_237EF8B90();
  if (!v3)
  {
    v39 = v1[88];
    v44 = v1[55];
    v47 = v1[54];
    v17 = v1[50];
    v18 = v1[49];
    v31 = v1[48];
    v34 = v1[47];
    v33 = v1[46];
    v19 = v1[44];
    v32 = v1[45];
    v35 = v1[37];
    v40 = v1[36];
    v45 = v1[35];
    v42 = v1[34];
    v41 = v1[33];
    v36 = v1[31];
    v37 = v1[32];
    v20 = v1[18];
    v1[10] = v1[85];
    v21 = v1[24];
    v30 = v1[23];
    v43 = v1[21];
    v23 = v1[19];
    v22 = v1[20];
    sub_237EFA000();

    MEMORY[0x2383E08A0](v19, v32);
    (*(v18 + 8))(v17, v19);
    v24 = swift_allocObject();
    v24[2] = v21;
    v24[3] = v44;
    v24[4] = v20;
    v24[5] = v23;
    v24[6] = v30;
    v24[7] = v47;
    v24[8] = v22;
    v24[9] = v43;
    v25 = swift_allocObject();
    v25[2] = v21;
    v25[3] = v44;
    v25[4] = v20;
    v25[5] = v23;
    v25[6] = v30;
    v25[7] = v47;
    v25[8] = v22;
    v25[9] = v43;
    v25[10] = sub_237E0B84C;
    v25[11] = v24;
    OUTLINED_FUNCTION_0_6();
    swift_getWitnessTable();
    sub_237EF9860();

    (*(v34 + 8))(v31, v33);
    v1[11] = v39;
    sub_237EFA000();

    MEMORY[0x2383E08A0](v36, v37);
    (*(v40 + 8))(v35, v36);
    v26 = swift_allocObject();
    v26[2] = v21;
    v26[3] = v44;
    v26[4] = v20;
    v26[5] = v23;
    v26[6] = v30;
    v26[7] = v47;
    v26[8] = v22;
    v26[9] = v43;
    v27 = swift_allocObject();
    v27[2] = v21;
    v27[3] = v44;
    v27[4] = v20;
    v27[5] = v23;
    v27[6] = v30;
    v27[7] = v47;
    v27[8] = v22;
    v27[9] = v43;
    v27[10] = sub_237E0B90C;
    v27[11] = v26;
    swift_getWitnessTable();
    sub_237EF9860();

    (*(v42 + 8))(v45, v41);
    OUTLINED_FUNCTION_15_0();
    v46 = v28 + *v28;
    v29 = swift_task_alloc();
    v1[90] = v29;
    swift_getWitnessTable();
    swift_getWitnessTable();
    *v29 = v1;
    v29[1] = sub_237E09E54;

    __asm { BRAA            X8, X16 }
  }

  v4 = v1[88];
  v5 = v1[64];
  v6 = v1[61];
  v7 = v1[62];

  (*(v7 + 8))(v5, v6);
  OUTLINED_FUNCTION_17_39();
  v38 = v8;
  v9 = v1[75];
  v10 = v1[74];
  v11 = v1[73];
  v12 = v1[72];
  v13 = v1[71];
  v14 = v1[42];
  (*(v1[65] + 8))(v1[66], v1[28]);
  (*(v12 + 8))(v11, v13);
  (*(v10 + 8))(v9, v14);
  (*(v4 + 8))(v2, v38);

  OUTLINED_FUNCTION_3_0();

  return v15();
}

uint64_t sub_237E09E54()
{
  v2 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 728) = v0;

  v5 = v2[53];
  v6 = v2[52];
  v7 = v2[51];
  (*(v2[40] + 8))(v2[41], v2[39]);
  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_237E0A010()
{
  v1 = v0[80];
  v16 = v0[79];
  v17 = v0[81];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[73];
  v5 = v0[72];
  v14 = v0[71];
  v23 = v0[64];
  v6 = v0[62];
  v18 = v0[61];
  v19 = v0[63];
  v15 = v0[60];
  v24 = v0[59];
  v7 = v0[57];
  v20 = v0[58];
  v8 = v0[56];
  v9 = v0[42];
  v22 = v0[25];
  v21 = v0[12];
  (*(v0[65] + 8))();
  (*(v5 + 8))(v4, v14);
  (*(v3 + 8))(v2, v9);
  (*(v1 + 8))(v17, v16);
  v10 = *(v7 + 32);
  v10(v15, v24, v8);
  (*(v6 + 32))(v19, v23, v18);
  v10(v20, v15, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  ComposedTransformer.init(_:_:)(v19, v20, v18, v8, v22, AssociatedConformanceWitness, v21);

  OUTLINED_FUNCTION_3_0();

  return v12();
}

uint64_t sub_237E0A2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_53_2();
  v27 = OUTLINED_FUNCTION_1_88(*(v26 + 664));
  v28(v27);
  v29 = OUTLINED_FUNCTION_24_6();
  v30(v29);
  v31 = OUTLINED_FUNCTION_11_16();
  v32(v31);
  v33 = OUTLINED_FUNCTION_27_8();
  v34(v33);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_65_1();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_237E0A3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_53_2();
  v27 = OUTLINED_FUNCTION_19_36();
  v28(v27);
  v29 = OUTLINED_FUNCTION_1_88(*(v26 + 688));
  v30(v29);
  v31 = OUTLINED_FUNCTION_24_6();
  v32(v31);
  v33 = OUTLINED_FUNCTION_11_16();
  v34(v33);
  v35 = OUTLINED_FUNCTION_27_8();
  v36(v35);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_65_1();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_237E0A50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_53_2();
  v27 = OUTLINED_FUNCTION_19_36();
  v28(v27);
  v29 = OUTLINED_FUNCTION_1_88(*(v26 + 712));
  v30(v29);
  v31 = OUTLINED_FUNCTION_24_6();
  v32(v31);
  v33 = OUTLINED_FUNCTION_11_16();
  v34(v33);
  v35 = OUTLINED_FUNCTION_27_8();
  v36(v35);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_65_1();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_237E0A644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_53_2();
  v27 = OUTLINED_FUNCTION_19_36();
  v28(v27);
  v29 = OUTLINED_FUNCTION_1_88(*(v26 + 728));
  v30(v29);
  v31 = OUTLINED_FUNCTION_24_6();
  v32(v31);
  v33 = OUTLINED_FUNCTION_11_16();
  v34(v33);
  v35 = OUTLINED_FUNCTION_27_8();
  v36(v35);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_65_1();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_237E0A77C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

void sub_237E0A87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_37_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v34 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &a9 - v37;
  (*(v39 + 16))(&a9 - v37, v25, v34, v36);
  (*(v30 + 16))(v33, v23, AssociatedTypeWitness);
  AnnotatedFeature.init(feature:annotation:)(v38, v33, v34, AssociatedTypeWitness, v27);
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237E0AA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*(a3 + 32) + 56))(a1, a2, *(a3 + 16), *(a3 + 32));
  if (!v3)
  {
    v12[5] = *(a3 + 52);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v9 = *(a3 + 40);
    v11 = *(a3 + 24);
    v12[0] = AssociatedTypeWitness;
    v12[1] = swift_getAssociatedTypeWitness();
    v12[2] = swift_getAssociatedConformanceWitness();
    v12[3] = swift_getAssociatedConformanceWitness();
    v10 = type metadata accessor for ComposedTransformer(0, v12);
    return (*(v9 + 56))(a1 + *(v10 + 52), a2, v11, v9);
  }

  return result;
}

uint64_t sub_237E0ABBC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v5 = a2[3];
  v38 = a2[5];
  v40 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v33 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v39 = &v31 - v11;
  v12 = a2[4];
  v13 = a2[2];
  v14 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v36 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v31 - v21;
  v23 = *(v12 + 64);
  v37 = a1;
  v24 = v41;
  result = v23(a1, v13, v12, v20);
  if (!v24)
  {
    v31 = v13;
    v32 = v18;
    v41 = v14;
    v26 = AssociatedTypeWitness;
    (*(v38 + 64))(v37, v40, v38);
    v27 = v32;
    v28 = v41;
    (*(v36 + 32))(v32, v22, v41);
    (*(v33 + 32))(v9, v39, v26);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v30 = swift_getAssociatedConformanceWitness();
    return ComposedTransformer.init(_:_:)(v27, v9, v28, v26, AssociatedConformanceWitness, v30, v34);
  }

  return result;
}

uint64_t sub_237E0AEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_237CEC074;

  return sub_237E06C04(a1, a2, a3, a4, a7, a5, a6);
}

uint64_t sub_237E0AF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_237C92CC8;

  return sub_237E08394(a1, a2, a3, a4, a5, v18, a6, a7);
}

void SupervisedEstimator.appending<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_237E0B268();
}

{
  sub_237E0B268();
}

{
  sub_237E0B268();
}

void sub_237E0B268()
{
  OUTLINED_FUNCTION_37_0();
  v5 = v4;
  OUTLINED_FUNCTION_19_0();
  v7 = v6;
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  (*(v18 + 16))(v16 - v15, v19, v3);
  (*(v9 + 16))(v13, v7, v2);
  v5(v17, v13, v3, v2, v1, v0);
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237E0B3D8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_237E0B5A0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_1_88@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 80) = a1;
  v3 = *(v1 + 528);
  *(v2 - 88) = *(v1 + 280);
  return v3;
}

uint64_t OUTLINED_FUNCTION_3_77()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_8_62()
{
  v2 = *(v0 + 528);
  *(v1 - 96) = *(v0 + 280);
  return v2;
}

uint64_t OUTLINED_FUNCTION_47_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_48_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

void sub_237E0BB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v527 = a3;
  v458[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB19D8, &unk_237F17500);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAA8, &unk_237F06900);
  v8 = OUTLINED_FUNCTION_3_2(v7, &v501);
  v458[7] = v9;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60, &unk_237F07350);
  OUTLINED_FUNCTION_3_2(v12, &v504);
  v462 = v13;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v15);
  v458[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB19B8, &qword_237F0F090);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA90, &unk_237F068F0);
  v19 = OUTLINED_FUNCTION_3_2(v18, v512);
  v460 = v20;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAA0, &unk_237F07330);
  v24 = OUTLINED_FUNCTION_18(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v27);
  v463 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1938, &qword_237F0F030);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAE8, &qword_237F06920);
  v31 = OUTLINED_FUNCTION_3_2(v30, &v520);
  v465 = v32;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  OUTLINED_FUNCTION_3_2(v35, &v523);
  v471 = v36;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v38);
  v466 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1990, &qword_237F0F070);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA80, &unk_237F068E0);
  v42 = OUTLINED_FUNCTION_3_2(v41, v532);
  v468 = v43;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600, &unk_237F049C0);
  v47 = OUTLINED_FUNCTION_18(v46);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v50);
  v472 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1918, &unk_237F17510);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAD8, &unk_237F0EF10);
  v54 = OUTLINED_FUNCTION_3_2(v53, &v509);
  v478 = v55;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA58, &qword_237F17520);
  OUTLINED_FUNCTION_3_2(v58, &v526);
  v489 = v59;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v61);
  v479 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB43B0, &qword_237F17528);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v63);
  v514 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB43B8, &unk_237F17530);
  OUTLINED_FUNCTION_1();
  v488 = v64;
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3970, qword_237F16078);
  v69 = OUTLINED_FUNCTION_18(v68);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_2_2();
  v513 = v70;
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v73);
  v491 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB43C0, &qword_237F17540);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB43C8, &qword_237F17548);
  v77 = OUTLINED_FUNCTION_3_2(v76, &v530);
  v498 = v78;
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v80);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA50, &unk_237F068C0);
  OUTLINED_FUNCTION_3_2(v81, &v535);
  v509 = v82;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v84);
  v500[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1960, &qword_237F0F050);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v86);
  v523 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA68, &qword_237F068D0);
  OUTLINED_FUNCTION_1();
  v508 = v87;
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v90);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA78, &qword_237F068D8);
  v92 = OUTLINED_FUNCTION_18(v91);
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_2_2();
  v522 = v93;
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_8_16();
  v521 = v95;
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v97);
  v511 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB18D8, &unk_237F17550);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v99);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAB8, &qword_237F0EF20);
  v101 = OUTLINED_FUNCTION_3_2(v100, &v536);
  v516 = v102;
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_26();
  v105 = v103 - v104;
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_22_1();
  v515 = v107;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB43D0, &qword_237F17560);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_19();
  v518 = v109;
  v517 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB43D8, &qword_237F17568);
  OUTLINED_FUNCTION_1();
  v520 = v110;
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_26();
  v114 = v112 - v113;
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_22_1();
  v519 = v116;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB18F8, &qword_237F0F000);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v117);
  v119 = v458 - v118;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAC8, &unk_237F06910);
  OUTLINED_FUNCTION_1();
  v524 = v121;
  MEMORY[0x28223BE20](v122);
  OUTLINED_FUNCTION_26();
  v125 = v123 - v124;
  MEMORY[0x28223BE20](v126);
  v128 = v458 - v127;
  v525 = sub_237EF6300();
  v526 = v129;
  v529 = a1;
  sub_237EF62F0();
  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350, &unk_237F07040);
  OUTLINED_FUNCTION_9_11();
  v458[1] = v131;
  if (swift_dynamicCastMetatype())
  {

    OUTLINED_FUNCTION_37_17();
    (v524)[2](v125, v128, v120);
    OUTLINED_FUNCTION_2_51();
    sub_237D5D274(v132, &qword_27DEAEAC8, &unk_237F06910);
    sub_237EF86F0();
    OUTLINED_FUNCTION_1_52();
    sub_237D5D274(v133, &qword_27DEAEAC8, &unk_237F06910);
    v134 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_237EF8DE0();
      OUTLINED_FUNCTION_30_17();
      if (v135)
      {
        break;
      }

      v136 = sub_237EF8F00();
      v138 = *v137;
      sub_237EF8260();
      v139 = OUTLINED_FUNCTION_29_15();
      v136(v139);
      sub_237EF8DF0();
      if (v138)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v143 = OUTLINED_FUNCTION_8_63();
          sub_237D0C484(v143, v144, v145, v146);
          v134 = v147;
        }

        v141 = v134[2];
        v140 = v134[3];
        v142 = v141 + 1;
        if (v141 >= v140 >> 1)
        {
          v148 = OUTLINED_FUNCTION_17_0(v140);
          v527 = v149;
          sub_237D0C484(v148, v149, 1, v134);
          v142 = v527;
          v134 = v150;
        }

        v134[2] = v142;
        v134[v141 + 4] = v138;
      }
    }

    sub_237C9A114(v119, &qword_27DEB18F8, &qword_237F0F000);
    (v524[1])(v128, v120);
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED98, &unk_237F07390);
  OUTLINED_FUNCTION_31_0();
  if (swift_dynamicCastMetatype())
  {

    v151 = v519;
    OUTLINED_FUNCTION_16_41();
    v152 = v517;
    (*(v520 + 16))(v114, v151, v517);
    OUTLINED_FUNCTION_2_51();
    OUTLINED_FUNCTION_33_12();
    sub_237D5D274(v153, v154, v155);
    v156 = v518;
    sub_237EF86F0();
    OUTLINED_FUNCTION_1_52();
    OUTLINED_FUNCTION_33_12();
    sub_237D5D274(v157, v158, v159);
    v134 = MEMORY[0x277D84F90];
    while (1)
    {
      OUTLINED_FUNCTION_55_7();
      OUTLINED_FUNCTION_30_17();
      if (v135)
      {
        break;
      }

      OUTLINED_FUNCTION_44_14();
      OUTLINED_FUNCTION_35_14();
      v160 = OUTLINED_FUNCTION_29_15();
      v3(v160);
      sub_237EF8DF0();
      if (v105)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v163 = OUTLINED_FUNCTION_8_63();
          sub_237D0C460(v163, v164, v165, v166);
          v134 = v167;
        }

        OUTLINED_FUNCTION_21_35();
        if (v162)
        {
          v168 = OUTLINED_FUNCTION_5_2(v161);
          sub_237D0C460(v168, v169, v170, v134);
          v134 = v171;
        }

        OUTLINED_FUNCTION_20_34();
      }
    }

    sub_237C9A114(v156, &qword_27DEB43D0, &qword_237F17560);
    (*(v520 + 8))(v519, v152);
LABEL_29:
    if (v134[2])
    {
LABEL_30:
      sub_237EF8260();

      sub_237EF6310();
      OUTLINED_FUNCTION_3_11();
      (*(v172 + 8))(v529);

      return;
    }

    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA0, &unk_237F0EF50);
  OUTLINED_FUNCTION_31_0();
  if (swift_dynamicCastMetatype())
  {

    v173 = v515;
    OUTLINED_FUNCTION_16_41();
    v174 = v512[0];
    (*(v516 + 16))(v105, v173, v512[0]);
    OUTLINED_FUNCTION_2_51();
    OUTLINED_FUNCTION_33_12();
    sub_237D5D274(v175, v176, v177);
    v178 = v512[1];
    sub_237EF86F0();
    OUTLINED_FUNCTION_50_11();
    OUTLINED_FUNCTION_1_52();
    OUTLINED_FUNCTION_33_12();
    sub_237D5D274(v179, v180, v181);
    v182 = MEMORY[0x277D84F90];
    while (1)
    {
      OUTLINED_FUNCTION_55_7();
      OUTLINED_FUNCTION_30_17();
      if (v135)
      {
        break;
      }

      OUTLINED_FUNCTION_44_14();
      OUTLINED_FUNCTION_35_14();
      v183 = OUTLINED_FUNCTION_29_15();
      v3(v183);
      sub_237EF8DF0();
      if (v105)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v185 = OUTLINED_FUNCTION_8_63();
          sub_237D0C43C(v185, v186, v187, v188);
          v182 = v189;
        }

        OUTLINED_FUNCTION_21_35();
        if (v162)
        {
          v190 = OUTLINED_FUNCTION_5_2(v184);
          sub_237D0C43C(v190, v191, v192, v182);
          v182 = v193;
        }

        OUTLINED_FUNCTION_20_34();
      }
    }

    sub_237C9A114(v178, &qword_27DEB18D8, &unk_237F17550);
    (*(v516 + 8))(v515, v174);
    if (v182[2])
    {
      OUTLINED_FUNCTION_33_17();
      sub_237C85534();
      goto LABEL_30;
    }

LABEL_7:
    sub_237EF6310();
    OUTLINED_FUNCTION_3_11();
    (*(v130 + 8))(v529);

    return;
  }

  v194 = v510;
  if (swift_dynamicCastMetatype())
  {

    OUTLINED_FUNCTION_29_18();
    sub_237EF62E0();
    OUTLINED_FUNCTION_63_3();
    v195 = OUTLINED_FUNCTION_31_0();
    v196(v195);
    OUTLINED_FUNCTION_2_51();
    OUTLINED_FUNCTION_33_12();
    sub_237D5D274(v197, v198, v199);
    v200 = v506;
    sub_237EF86F0();
    OUTLINED_FUNCTION_40_13();
    OUTLINED_FUNCTION_1_52();
    OUTLINED_FUNCTION_33_12();
    sub_237D5D274(v201, v202, v203);
    v527 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_32_20(&v534);
    while (1)
    {
      v204 = v523;
      sub_237EF8DE0();
      OUTLINED_FUNCTION_30_17();
      if (v135)
      {
        break;
      }

      v205 = sub_237EF8F00();
      sub_237C9E294(v206, v521, &qword_27DEAEA78, &qword_237F068D8);
      v207 = OUTLINED_FUNCTION_29_15();
      v205(v207);
      OUTLINED_FUNCTION_33_12();
      sub_237EF8DF0();
      v208 = v522;
      OUTLINED_FUNCTION_22_31();
      sub_237CF9FF0(v209, v210, v211, v212);
      OUTLINED_FUNCTION_38_12(v208);
      if (v135)
      {
        OUTLINED_FUNCTION_61_5(v208);
      }

      else
      {
        OUTLINED_FUNCTION_49_11();
        v200(v505, v208, v194);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v216 = OUTLINED_FUNCTION_8_1();
          sub_237D0C414(v216, v217, v218, v219);
          v527 = v220;
        }

        OUTLINED_FUNCTION_15_37();
        if (v162)
        {
          v221 = OUTLINED_FUNCTION_5_2(v214);
          sub_237D0C414(v221, v222, v223, v527);
          v527 = v224;
        }

        OUTLINED_FUNCTION_47_11();
        v215 = OUTLINED_FUNCTION_10_51(&v534);
        v194 = v510;
        v200(v215, v505, v510);
        v200 = v506;
      }
    }

    sub_237C9A114(v200, &qword_27DEB1960, &qword_237F0F050);
    OUTLINED_FUNCTION_18_25();
    v225(v507, v204);
    OUTLINED_FUNCTION_29_18();
    sub_237CA3640(v527);

    OUTLINED_FUNCTION_38_12(v204);
    if (v135)
    {
      sub_237C9A114(v204, &qword_27DEAEA78, &qword_237F068D8);
      v248 = MEMORY[0x277D84F90];
    }

    else
    {
      v248 = sub_237EF7E20();
      OUTLINED_FUNCTION_18_25();
      v249(v204, v194);
    }

    OUTLINED_FUNCTION_53_9();
    if (!v162)
    {
      if (!v250)
      {
        goto LABEL_7;
      }

      goto LABEL_165;
    }

    goto LABEL_69;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0458, &unk_237F0B030);
  OUTLINED_FUNCTION_31_0();
  if (!swift_dynamicCastMetatype())
  {
    if (swift_dynamicCastMetatype())
    {

      OUTLINED_FUNCTION_29_18();
      OUTLINED_FUNCTION_37_17();
      OUTLINED_FUNCTION_63_3();
      v256 = OUTLINED_FUNCTION_31_0();
      v257(v256);
      OUTLINED_FUNCTION_2_51();
      OUTLINED_FUNCTION_33_12();
      v261 = sub_237D5D274(v258, v259, v260);
      OUTLINED_FUNCTION_42_14(v261, v261);
      OUTLINED_FUNCTION_40_13();
      OUTLINED_FUNCTION_1_52();
      OUTLINED_FUNCTION_33_12();
      sub_237D5D274(v262, v263, v264);
      v527 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_32_20(&v516);
LABEL_78:
      v265 = v499;
      v266 = v492;
      v267 = v514;
      while (1)
      {
        sub_237EF8DE0();
        OUTLINED_FUNCTION_30_17();
        if (v135)
        {
          break;
        }

        v268 = sub_237EF8F00();
        OUTLINED_FUNCTION_22_31();
        sub_237C9E294(v269, v270, v271, v272);
        v273 = OUTLINED_FUNCTION_29_15();
        v268(v273);
        v267 = v514;
        OUTLINED_FUNCTION_45_13();
        v274 = v513;
        OUTLINED_FUNCTION_22_31();
        sub_237CF9FF0(v275, v276, v277, v278);
        OUTLINED_FUNCTION_38_12(v274);
        if (!v135)
        {
          OUTLINED_FUNCTION_49_11();
          v267(v485, v274, v265);
          v279 = swift_isUniquelyReferenced_nonNull_native();
          if ((v279 & 1) == 0)
          {
            v282 = OUTLINED_FUNCTION_8_1();
            sub_237D0C3C8(v282, v283, v284, v285);
            v527 = v286;
          }

          OUTLINED_FUNCTION_15_37();
          if (v162)
          {
            v287 = OUTLINED_FUNCTION_5_2(v280);
            sub_237D0C3C8(v287, v288, v289, v527);
            v527 = v290;
          }

          OUTLINED_FUNCTION_47_11();
          v281 = OUTLINED_FUNCTION_10_51(&v516);
          v267(v281, v485, v499);
          goto LABEL_78;
        }

        OUTLINED_FUNCTION_61_5(v274);
      }

      sub_237C9A114(v266, &qword_27DEB43B0, &qword_237F17528);
      OUTLINED_FUNCTION_18_25();
      v291(v486, v267);
      v292 = OUTLINED_FUNCTION_30_29();
      sub_237CA3654(v292);

      OUTLINED_FUNCTION_38_12(v266);
      if (v135)
      {
        sub_237C9A114(v487, &qword_27DEB3970, qword_237F16078);
        v315 = MEMORY[0x277D84F90];
      }

      else
      {
        v315 = sub_237EF7E20();
        OUTLINED_FUNCTION_18_25();
        v316 = OUTLINED_FUNCTION_31_0();
        v317(v316);
      }

      v318 = *(v315 + 16);
      if (v318 >= 2)
      {

        sub_237C84150();
        v251 = swift_allocError();
        *v252 = v315;
        goto LABEL_70;
      }

      if (!v318)
      {
        goto LABEL_7;
      }

LABEL_165:
      sub_237C85534();

      sub_237EF6310();
      OUTLINED_FUNCTION_3_11();
      (*(v434 + 8))(v529);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3D8, &qword_237F07050);
    OUTLINED_FUNCTION_31_0();
    if (swift_dynamicCastMetatype())
    {

      OUTLINED_FUNCTION_16_41();
      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_31_19();
      OUTLINED_FUNCTION_36_17();
      v293();
      OUTLINED_FUNCTION_2_51();
      OUTLINED_FUNCTION_33_12();
      v297 = sub_237D5D274(v294, v295, v296);
      OUTLINED_FUNCTION_42_14(v297, v297);
      OUTLINED_FUNCTION_50_11();
      OUTLINED_FUNCTION_1_52();
      OUTLINED_FUNCTION_33_12();
      sub_237D5D274(v298, v299, v300);
      v301 = MEMORY[0x277D84F90];
LABEL_95:
      v302 = v481;
      v303 = v480;
      while (1)
      {
        sub_237EF8DE0();
        OUTLINED_FUNCTION_30_17();
        if (v135)
        {
          break;
        }

        OUTLINED_FUNCTION_57_8();
        OUTLINED_FUNCTION_35_14();
        v304 = OUTLINED_FUNCTION_29_15();
        v3(v304);
        OUTLINED_FUNCTION_43_15();
        if (v105)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v306 = OUTLINED_FUNCTION_8_63();
            sub_237D0C3A4(v306, v307, v308, v309);
            v301 = v310;
          }

          OUTLINED_FUNCTION_21_35();
          if (v162)
          {
            v311 = OUTLINED_FUNCTION_5_2(v305);
            sub_237D0C3A4(v311, v312, v313, v301);
            v301 = v314;
          }

          OUTLINED_FUNCTION_20_34();
          goto LABEL_95;
        }
      }

      sub_237C9A114(v302, &qword_27DEB1918, &unk_237F17510);
      OUTLINED_FUNCTION_18_25();
      v319(v477, v303);
      if (!v301[2])
      {
        goto LABEL_7;
      }

LABEL_138:
      OUTLINED_FUNCTION_33_17();
      sub_237C85534();
      sub_237EF8260();

      goto LABEL_7;
    }

    if (swift_dynamicCastMetatype())
    {

      OUTLINED_FUNCTION_29_18();
      OUTLINED_FUNCTION_37_17();
      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_36_17();
      v320();
      OUTLINED_FUNCTION_2_51();
      OUTLINED_FUNCTION_33_12();
      v324 = sub_237D5D274(v321, v322, v323);
      OUTLINED_FUNCTION_42_14(v324, v324);
      OUTLINED_FUNCTION_40_13();
      OUTLINED_FUNCTION_1_52();
      OUTLINED_FUNCTION_33_12();
      sub_237D5D274(v325, v326, v327);
      v527 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_32_20(v500);
      while (1)
      {
        sub_237EF8DE0();
        OUTLINED_FUNCTION_30_17();
        if (v135)
        {
          break;
        }

        v328 = v503;
        v329 = sub_237EF8F00();
        v330 = v495;
        OUTLINED_FUNCTION_22_31();
        sub_237C9E294(v331, v332, v333, v334);
        v335 = OUTLINED_FUNCTION_29_15();
        v329(v335);
        OUTLINED_FUNCTION_45_13();
        OUTLINED_FUNCTION_54_7(v330, &v531);
        v336 = OUTLINED_FUNCTION_23_0();
        OUTLINED_FUNCTION_26_14(v336, v337, &v523);
        if (v135)
        {
          OUTLINED_FUNCTION_61_5(v502);
        }

        else
        {
          OUTLINED_FUNCTION_49_11();
          v328(v469, v502, v496);
          v338 = swift_isUniquelyReferenced_nonNull_native();
          if ((v338 & 1) == 0)
          {
            v341 = OUTLINED_FUNCTION_8_1();
            sub_237D0C37C(v341, v342, v343, v344);
            v527 = v345;
          }

          OUTLINED_FUNCTION_15_37();
          if (v162)
          {
            v346 = OUTLINED_FUNCTION_5_2(v339);
            sub_237D0C37C(v346, v347, v348, v527);
            v527 = v349;
          }

          OUTLINED_FUNCTION_47_11();
          v340 = OUTLINED_FUNCTION_10_51(v500);
          v328(v340, v469, v496);
        }
      }

      sub_237C9A114(v504, &qword_27DEB1990, &qword_237F0F070);
      OUTLINED_FUNCTION_18_25();
      v350(v467, v503);
      v351 = OUTLINED_FUNCTION_30_29();
      sub_237CA3668(v351);

      v352 = OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_26_14(v352, v353, &v523);
      if (v135)
      {
        sub_237C9A114(v470, &qword_27DEAD600, &unk_237F049C0);
        v248 = MEMORY[0x277D84F90];
      }

      else
      {
        v374 = v496;
        v375 = v470;
        v248 = sub_237EF7E20();
        OUTLINED_FUNCTION_18_25();
        v376(v375, v374);
      }

      OUTLINED_FUNCTION_53_9();
      if (!v162)
      {
        if (!v377)
        {
          goto LABEL_7;
        }

        goto LABEL_165;
      }

      goto LABEL_69;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA8, &qword_237F15D00);
    OUTLINED_FUNCTION_31_0();
    if (swift_dynamicCastMetatype())
    {

      OUTLINED_FUNCTION_16_41();
      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_31_19();
      OUTLINED_FUNCTION_36_17();
      v354();
      OUTLINED_FUNCTION_2_51();
      OUTLINED_FUNCTION_33_12();
      v358 = sub_237D5D274(v355, v356, v357);
      OUTLINED_FUNCTION_42_14(v358, v358);
      OUTLINED_FUNCTION_50_11();
      OUTLINED_FUNCTION_1_52();
      OUTLINED_FUNCTION_33_12();
      sub_237D5D274(v359, v360, v361);
      v362 = MEMORY[0x277D84F90];
      while (1)
      {
        sub_237EF8DE0();
        OUTLINED_FUNCTION_30_17();
        if (v135)
        {
          break;
        }

        sub_237EF8F00();
        OUTLINED_FUNCTION_35_14();
        v363 = OUTLINED_FUNCTION_29_15();
        v3(v363);
        OUTLINED_FUNCTION_43_15();
        if (v105)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v365 = OUTLINED_FUNCTION_8_63();
            sub_237D0BE9C(v365, v366, v367, v368);
            v362 = v369;
          }

          OUTLINED_FUNCTION_21_35();
          if (v162)
          {
            v370 = OUTLINED_FUNCTION_5_2(v364);
            sub_237D0BE9C(v370, v371, v372, v362);
            v362 = v373;
          }

          OUTLINED_FUNCTION_20_34();
        }
      }

      sub_237C9A114(v494, &qword_27DEB1938, &qword_237F0F030);
      OUTLINED_FUNCTION_18_25();
      v378(v464, v493);
      if (!v362[2])
      {
        goto LABEL_7;
      }

      goto LABEL_138;
    }

    if (swift_dynamicCastMetatype())
    {

      OUTLINED_FUNCTION_29_18();
      OUTLINED_FUNCTION_37_17();
      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_36_17();
      v379();
      OUTLINED_FUNCTION_2_51();
      OUTLINED_FUNCTION_33_12();
      v383 = sub_237D5D274(v380, v381, v382);
      OUTLINED_FUNCTION_42_14(v383, v383);
      OUTLINED_FUNCTION_40_13();
      OUTLINED_FUNCTION_1_52();
      OUTLINED_FUNCTION_33_12();
      sub_237D5D274(v384, v385, v386);
      v527 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_32_20(v490);
      while (1)
      {
        sub_237EF8DE0();
        OUTLINED_FUNCTION_30_17();
        if (v135)
        {
          break;
        }

        v387 = v483;
        v388 = sub_237EF8F00();
        v389 = v475;
        OUTLINED_FUNCTION_22_31();
        sub_237C9E294(v390, v391, v392, v393);
        v394 = OUTLINED_FUNCTION_29_15();
        v388(v394);
        OUTLINED_FUNCTION_45_13();
        OUTLINED_FUNCTION_54_7(v389, &v511);
        v395 = OUTLINED_FUNCTION_23_0();
        OUTLINED_FUNCTION_26_14(v395, v396, &v504);
        if (v135)
        {
          OUTLINED_FUNCTION_61_5(v482);
        }

        else
        {
          OUTLINED_FUNCTION_49_11();
          v387(v461, v482, v476);
          v397 = swift_isUniquelyReferenced_nonNull_native();
          if ((v397 & 1) == 0)
          {
            v400 = OUTLINED_FUNCTION_8_1();
            sub_237D0C25C(v400, v401, v402, v403);
            v527 = v404;
          }

          OUTLINED_FUNCTION_15_37();
          if (v162)
          {
            v405 = OUTLINED_FUNCTION_5_2(v398);
            sub_237D0C25C(v405, v406, v407, v527);
            v527 = v408;
          }

          OUTLINED_FUNCTION_47_11();
          v399 = OUTLINED_FUNCTION_10_51(v490);
          v387(v399, v461, v476);
        }
      }

      sub_237C9A114(v484, &qword_27DEB19B8, &qword_237F0F090);
      OUTLINED_FUNCTION_18_25();
      v409(v458[8], v483);
      v410 = OUTLINED_FUNCTION_30_29();
      sub_237CA367C(v410);

      v411 = OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_26_14(v411, v412, &v504);
      if (v135)
      {
        sub_237C9A114(v459, &qword_27DEAEAA0, &unk_237F07330);
        v248 = MEMORY[0x277D84F90];
      }

      else
      {
        v430 = v476;
        v431 = v459;
        v248 = sub_237EF7E20();
        OUTLINED_FUNCTION_18_25();
        v432(v431, v430);
      }

      OUTLINED_FUNCTION_53_9();
      if (!v162)
      {
        if (!v433)
        {
          goto LABEL_7;
        }

        goto LABEL_165;
      }

LABEL_69:

      sub_237C84150();
      v251 = swift_allocError();
      *v252 = v248;
LABEL_70:
      v252[1] = 0xD000000000000031;
      v252[2] = 0x8000000237F000C0;
      v252[3] = 0;
      OUTLINED_FUNCTION_59_9(v251, v252);
LABEL_71:
      sub_237EF6310();
      OUTLINED_FUNCTION_3_11();
      (*(v253 + 8))(v529);
      return;
    }

    sub_237C75918(0, &qword_27DEAF160, 0x277CBFF48);
    OUTLINED_FUNCTION_31_0();
    if (swift_dynamicCastMetatype())
    {
      v413 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_16_41();
      v533 = v413;
      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_31_19();
      OUTLINED_FUNCTION_36_17();
      v414();
      OUTLINED_FUNCTION_2_51();
      OUTLINED_FUNCTION_33_12();
      v418 = sub_237D5D274(v415, v416, v417);
      OUTLINED_FUNCTION_42_14(v418, v418);
      OUTLINED_FUNCTION_40_13();
      OUTLINED_FUNCTION_1_52();
      OUTLINED_FUNCTION_33_12();
      sub_237D5D274(v419, v420, v421);
      v422 = v413;
      while (1)
      {
        sub_237EF8DE0();
        OUTLINED_FUNCTION_30_17();
        if (v135)
        {
          break;
        }

        v423 = sub_237EF8F00();
        v425 = *v424;
        v426 = *v424;
        v427 = OUTLINED_FUNCTION_29_15();
        v423(v427);
        v428 = sub_237EF8DF0();
        if (v425)
        {
          MEMORY[0x2383E09D0](v428);
          v429 = *((v533 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v533 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v429 >> 1)
          {
            OUTLINED_FUNCTION_17_0(v429);
            sub_237EF8980();
          }

          sub_237EF89F0();
          v422 = v533;
        }
      }

      sub_237C9A114(v474, &qword_27DEB19D8, &unk_237F17500);
      OUTLINED_FUNCTION_18_25();
      v435(v458[6], v473);
      if (sub_237D6DA5C())
      {
        sub_237C85538();
        if ((v422 & 0xC000000000000001) != 0)
        {
          v436 = MEMORY[0x2383E1490](0, v422);
        }

        else
        {
          v436 = *(v422 + 32);
        }

        v524 = v436;

        v437 = [v524 shape];
        sub_237C75918(0, &qword_280C8CCF8, 0x277CCABB0);
        OUTLINED_FUNCTION_9_11();
        v438 = sub_237EF8910();

        v439 = sub_237D6DA5C();
        if (v439)
        {
          v440 = v439;
          v530 = MEMORY[0x277D84F90];
          sub_237C62DB0(0, v439 & ~(v439 >> 63), 0);
          if (v440 < 0)
          {
            __break(1u);
LABEL_193:
            __break(1u);
            return;
          }

          v441 = 0;
          v442 = v530;
          do
          {
            if ((v438 & 0xC000000000000001) != 0)
            {
              v443 = MEMORY[0x2383E1490](v441, v438);
            }

            else
            {
              v443 = *(v438 + 8 * v441 + 32);
            }

            v444 = v443;
            v445 = [v443 integerValue];

            v530 = v442;
            v447 = *(v442 + 16);
            v446 = *(v442 + 24);
            if (v447 >= v446 >> 1)
            {
              v448 = OUTLINED_FUNCTION_17_0(v446);
              sub_237C62DB0(v448, v447 + 1, 1);
              v442 = v530;
            }

            ++v441;
            *(v442 + 16) = v447 + 1;
            *(v442 + 8 * v447 + 32) = v445;
          }

          while (v440 != v441);
        }

        else
        {

          v442 = MEMORY[0x277D84F90];
        }

        OUTLINED_FUNCTION_53_9();
        if (v162)
        {

          sub_237C84150();
          v451 = swift_allocError();
          *v452 = v442;
          v452[1] = 0xD000000000000031;
          v452[2] = 0x8000000237F000C0;
          v452[3] = 0;
          OUTLINED_FUNCTION_59_9(v451, v452);

          goto LABEL_71;
        }

        v453 = v524;
        v454 = v528;
        sub_237E0E978(v453);
        v528 = v454;
        if (v454)
        {
          sub_237EF6310();
          OUTLINED_FUNCTION_3_11();
          (*(v456 + 8))(v529);

          return;
        }

        if (v455 != -1)
        {
          sub_237EF6310();
          OUTLINED_FUNCTION_3_11();
          (*(v457 + 8))(v529);

          return;
        }

        goto LABEL_193;
      }

      sub_237EF6310();
      OUTLINED_FUNCTION_3_11();
      (*(v450 + 8))(v529);
    }

    else
    {
      sub_237EF6310();
      OUTLINED_FUNCTION_3_11();
      (*(v449 + 8))(v529);
    }

    return;
  }

  OUTLINED_FUNCTION_16_41();
  OUTLINED_FUNCTION_63_3();
  OUTLINED_FUNCTION_31_19();
  OUTLINED_FUNCTION_36_17();
  v226();
  OUTLINED_FUNCTION_2_51();
  OUTLINED_FUNCTION_33_12();
  v230 = sub_237D5D274(v227, v228, v229);
  OUTLINED_FUNCTION_42_14(v230, v230);
  OUTLINED_FUNCTION_50_11();
  OUTLINED_FUNCTION_1_52();
  OUTLINED_FUNCTION_33_12();
  sub_237D5D274(v231, v232, v233);
  v234 = MEMORY[0x277D84F90];
LABEL_59:
  v235 = v501;
  v236 = v500[2];
  while (1)
  {
    sub_237EF8DE0();
    OUTLINED_FUNCTION_30_17();
    if (v135)
    {
      break;
    }

    OUTLINED_FUNCTION_57_8();
    OUTLINED_FUNCTION_35_14();
    v237 = OUTLINED_FUNCTION_29_15();
    v3(v237);
    OUTLINED_FUNCTION_43_15();
    if (v105)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v239 = OUTLINED_FUNCTION_8_63();
        sub_237D0C3F0(v239, v240, v241, v242);
        v234 = v243;
      }

      OUTLINED_FUNCTION_21_35();
      if (v162)
      {
        v244 = OUTLINED_FUNCTION_5_2(v238);
        sub_237D0C3F0(v244, v245, v246, v234);
        v234 = v247;
      }

      OUTLINED_FUNCTION_20_34();
      goto LABEL_59;
    }
  }

  sub_237C9A114(v235, &qword_27DEB43C0, &qword_237F17540);
  OUTLINED_FUNCTION_18_25();
  v254(v497, v236);
  if (!v234[2])
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_33_17();
  sub_237C85534();
  sub_237EF8260();

  sub_237EF6310();
  OUTLINED_FUNCTION_3_11();
  (*(v255 + 8))(v529);
}

uint64_t sub_237E0E92C(uint64_t a1, char a2)
{
  result = 4;
  switch(a2)
  {
    case 1:
      result = 5;
      break;
    case 2:
      result = 6;
      break;
    case 3:
      result = 7;
      break;
    case 4:
      result = a1;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237E0E978(void *a1)
{
  v2 = a1;
  v3 = [a1 shape];
  sub_237C75918(0, &qword_280C8CCF8, 0x277CCABB0);
  OUTLINED_FUNCTION_9_11();
  v4 = sub_237EF8910();

  v5 = sub_237D6DA5C();
  if (v5)
  {
    v6 = v5;
    v18 = MEMORY[0x277D84F90];
    sub_237C62DB0(0, v5 & ~(v5 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      goto LABEL_28;
    }

    v17 = v2;
    v7 = 0;
    v8 = v18;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2383E1490](v7, v4);
      }

      else
      {
        v9 = *(v4 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = [v9 integerValue];

      v13 = *(v18 + 16);
      v12 = *(v18 + 24);
      if (v13 >= v12 >> 1)
      {
        v14 = OUTLINED_FUNCTION_17_0(v12);
        sub_237C62DB0(v14, v13 + 1, 1);
      }

      ++v7;
      *(v18 + 16) = v13 + 1;
      *(v18 + 8 * v13 + 32) = v11;
    }

    while (v6 != v7);

    v2 = v17;
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  if (*(v8 + 16) > 1uLL)
  {

    return 0;
  }

  v1 = &_swift_FORCE_LOAD___swiftOSLog___LinearAlgebra;
  v15 = [v2 dataType];
  if (v15 == 65552)
  {
    if (!*(v8 + 16))
    {
      goto LABEL_25;
    }

LABEL_22:
    OUTLINED_FUNCTION_60_8();

    return v4;
  }

  if (v15 == 65568)
  {
    if (*(v8 + 16))
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  if (v15 == 131104)
  {
    if (*(v8 + 16))
    {
      goto LABEL_22;
    }

LABEL_25:

    return 1;
  }

  if (v15 == 65600)
  {
    if (!*(v8 + 16))
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

LABEL_28:
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000019, 0x8000000237F00130);
  [v2 v1[143]];
  type metadata accessor for MLMultiArrayDataType(0);
  sub_237EF9670();
  MEMORY[0x2383E0710](46, 0xE100000000000000);
  result = sub_237EF9740("Fatal error", 11, 2, 0, 0xE000000000000000, "CreateMLComponents/FeatureDescriptor.swift", 42, 2, 296);
  __break(1u);
  return result;
}

uint64_t sub_237E0ECD4@<X0>(uint64_t a1@<X2>, char a2@<W3>, uint64_t a3@<X8>)
{
  v22[1] = a3;
  v5 = sub_237EF6DC0();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  v15.n128_f64[0] = MEMORY[0x28223BE20](v14);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a2)
  {
    case 1:
      v18 = MEMORY[0x277D250F8];
      goto LABEL_8;
    case 2:
      v18 = MEMORY[0x277D25100];
      goto LABEL_8;
    case 3:
      v18 = MEMORY[0x277D250F0];
      goto LABEL_8;
    case 4:
      sub_237EF8260();
      if (a1)
      {
        sub_237EF6DA0();
        v19 = MEMORY[0x277D25128];
      }

      else
      {
        sub_237EF6D00();
        v19 = MEMORY[0x277D25118];
      }

      (*(v13 + 104))(v17, *v19, v11);
      goto LABEL_11;
    default:
      v18 = MEMORY[0x277D250E8];
LABEL_8:
      (*(v7 + 104))(v10, *v18, v5, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_237F03530;
      *(v20 + 32) = a1;
      sub_237EF8260();
      sub_237EF6CF0();

      (*(v7 + 8))(v10, v5);
LABEL_11:
      OUTLINED_FUNCTION_33_12();
      return sub_237EF7090();
  }
}

uint64_t sub_237E0EF50(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6373654465707974 && a2 == 0xEE00726F74706972)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

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

uint64_t sub_237E0F020(char a1)
{
  if (a1)
  {
    return 0x6373654465707974;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_237E0F05C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v18 = a5;
  v15 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB43A0, &unk_237F174F0);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237E0FDE0();
  sub_237EFA1B0();
  v20 = 0;
  sub_237EF9A10();
  if (!v5)
  {
    v16 = v15;
    v17 = v18;
    v19 = 1;
    sub_237E0FE88();
    sub_237EF9A70();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_237E0F1E8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4388, &qword_237F174E8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_237E0FDE0();
  OUTLINED_FUNCTION_46_14(&type metadata for FeatureDescriptor.CodingKeys, v6, v5);
  if (!v1)
  {
    OUTLINED_FUNCTION_19_37();
    v4 = sub_237EF9910();
    sub_237E0FE34();
    OUTLINED_FUNCTION_56_12();
    v8 = OUTLINED_FUNCTION_13_38();
    v9(v8);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_237E0F394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E0EF50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237E0F3BC(uint64_t a1)
{
  v2 = sub_237E0FDE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237E0F3F8(uint64_t a1)
{
  v2 = sub_237E0FDE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237E0F434@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_237E0F1E8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

unint64_t sub_237E0F48C(uint64_t a1, uint64_t a2)
{
  v2 = sub_237EF9890();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_237E0F4D8(char a1)
{
  result = 7630441;
  switch(a1)
  {
    case 1:
      result = 0x363174616F6C66;
      break;
    case 2:
      result = 0x74616F6C66;
      break;
    case 3:
      result = 0x656C62756F64;
      break;
    case 4:
      result = 0x6570616853746E69;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_237E0F5E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_237E0F48C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_237E0F614@<X0>(unint64_t *a1@<X8>)
{
  result = sub_237E0F4D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_237E0F6F0(uint64_t a1, uint64_t a2)
{
  v2 = sub_237EF9890();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237E0F744(char a1)
{
  if (a1)
  {
    return 1702521203;
  }

  else
  {
    return 0x54746E656D656C65;
  }
}

uint64_t sub_237E0F7A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_237E0F6F0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_237E0F7D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237E0F744(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_237E0F804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E0F6F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237E0F82C(uint64_t a1)
{
  v2 = sub_237E0FCE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237E0F868(uint64_t a1)
{
  v2 = sub_237E0FCE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237E0F8A4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4360, &qword_237F174D8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_237E0FCE4();
  OUTLINED_FUNCTION_46_14(&type metadata for FeatureDescriptor.FeatureTypeDescriptor.CodingKeys, v6, v5);
  if (!v1)
  {
    sub_237E0FD38();
    OUTLINED_FUNCTION_56_12();
    v4 = v12;
    switch(v12)
    {
      case 1u:
        v4 = 1;
        goto LABEL_8;
      case 2u:
        v4 = 2;
        goto LABEL_8;
      case 3u:
        v4 = 3;
        goto LABEL_8;
      case 4u:
      case 5u:
      case 6u:
      case 7u:
        OUTLINED_FUNCTION_19_37();
        v4 = sub_237EF9950();
        v10 = OUTLINED_FUNCTION_13_38();
        v11(v10);
        break;
      default:
LABEL_8:
        v8 = OUTLINED_FUNCTION_13_38();
        v9(v8);
        break;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_237E0FB0C(void *a1, uint64_t a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4378, &qword_237F174E0);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237E0FCE4();
  sub_237EFA1B0();
  v17 = sub_237E0E92C(a2, a3);
  v16 = 0;
  sub_237E0FD8C();
  sub_237EF9A70();
  if (!v3 && a3 < 4u)
  {
    v15 = 1;
    sub_237EF9A50();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_237E0FC94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_237E0F8A4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

unint64_t sub_237E0FCE4()
{
  result = qword_27DEB4368;
  if (!qword_27DEB4368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4368);
  }

  return result;
}

unint64_t sub_237E0FD38()
{
  result = qword_27DEB4370;
  if (!qword_27DEB4370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4370);
  }

  return result;
}

unint64_t sub_237E0FD8C()
{
  result = qword_27DEB4380;
  if (!qword_27DEB4380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4380);
  }

  return result;
}

unint64_t sub_237E0FDE0()
{
  result = qword_27DEB4390;
  if (!qword_27DEB4390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4390);
  }

  return result;
}

unint64_t sub_237E0FE34()
{
  result = qword_27DEB4398;
  if (!qword_27DEB4398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4398);
  }

  return result;
}

unint64_t sub_237E0FE88()
{
  result = qword_27DEB43A8;
  if (!qword_27DEB43A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB43A8);
  }

  return result;
}

void (*sub_237E0FEE8(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_237E0FEDC(a3);
  sub_237C85538();
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x2383E1490](a2, a3);
  }

  *a1 = v7;
  return sub_237E0FF74;
}

_BYTE *storeEnumTagSinglePayload for FeatureDescriptor.FeatureType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_237E10068(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for FeatureDescriptor.FeatureTypeDescriptor(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 9))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 4)
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

uint64_t storeEnumTagSinglePayload for FeatureDescriptor.FeatureTypeDescriptor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_237E101C8(uint64_t a1)
{
  if (*(a1 + 8) <= 3u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_237E101E0(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_237E1020C()
{
  result = qword_27DEB4410;
  if (!qword_27DEB4410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4410);
  }

  return result;
}

unint64_t sub_237E10264()
{
  result = qword_27DEB4418;
  if (!qword_27DEB4418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4418);
  }

  return result;
}

unint64_t sub_237E102BC()
{
  result = qword_27DEB4420;
  if (!qword_27DEB4420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4420);
  }

  return result;
}

unint64_t sub_237E10314()
{
  result = qword_27DEB4428;
  if (!qword_27DEB4428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4428);
  }

  return result;
}

unint64_t sub_237E1036C()
{
  result = qword_27DEB4430;
  if (!qword_27DEB4430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4430);
  }

  return result;
}

unint64_t sub_237E103C4()
{
  result = qword_27DEB4438;
  if (!qword_27DEB4438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4438);
  }

  return result;
}

unint64_t sub_237E1041C()
{
  result = qword_27DEB4440;
  if (!qword_27DEB4440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4440);
  }

  return result;
}

unint64_t sub_237E10470()
{
  result = qword_27DEB4448;
  if (!qword_27DEB4448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4448);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_41()
{

  return sub_237EF62E0();
}

uint64_t OUTLINED_FUNCTION_35_14()
{

  return sub_237EF8260();
}

uint64_t OUTLINED_FUNCTION_37_17()
{

  return sub_237EF62E0();
}

uint64_t OUTLINED_FUNCTION_42_14(uint64_t a1, uint64_t a2)
{

  return sub_237EF86F0();
}

uint64_t OUTLINED_FUNCTION_43_15()
{

  return sub_237EF8DF0();
}

uint64_t OUTLINED_FUNCTION_44_14()
{

  return sub_237EF8F00();
}

uint64_t OUTLINED_FUNCTION_45_13()
{

  return sub_237EF8DF0();
}

uint64_t OUTLINED_FUNCTION_46_14(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_237EFA190();
}

uint64_t OUTLINED_FUNCTION_54_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a2 - 256);

  return sub_237CF9FF0(a1, v5, v2, v3);
}

uint64_t OUTLINED_FUNCTION_55_7()
{

  return sub_237EF8DE0();
}

void *OUTLINED_FUNCTION_56_12()
{

  return sub_237EF9970();
}

uint64_t OUTLINED_FUNCTION_57_8()
{

  return sub_237EF8F00();
}

uint64_t OUTLINED_FUNCTION_59_9(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 6;
  *(v2 - 136) = a1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_60_8()
{
}

uint64_t OUTLINED_FUNCTION_61_5(uint64_t a1)
{

  return sub_237C9A114(a1, v1, v2);
}

uint64_t ColumnConcatenator.columnSelection.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_237D520D4(v2, v3);
}

uint64_t ColumnConcatenator.columnSelection.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = sub_237D52128(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t ColumnConcatenator.concatenatedColumnName.getter()
{
  v1 = *(v0 + 16);
  sub_237EF8260();
  return v1;
}

uint64_t ColumnConcatenator.concatenatedColumnName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ColumnConcatenator.init(columnSelection:concatenatedColumnName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(result + 8);
  *a4 = *result;
  *(a4 + 8) = v4;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  return result;
}

void ColumnConcatenator.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  a19 = v23;
  a20 = v24;
  v25 = v21;
  v27 = v26;
  v95 = v28;
  v109 = v29;
  v100 = *(v29 + 16);
  sub_237EF7E90();
  OUTLINED_FUNCTION_1();
  v90 = v30;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_19();
  v116 = v33;
  v117 = v32;
  v103 = sub_237EF6290();
  OUTLINED_FUNCTION_1();
  v94 = v34;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_19();
  v106 = v36;
  v118 = sub_237EF6310();
  OUTLINED_FUNCTION_1();
  v38 = v37;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_2_2();
  v114 = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_22_1();
  v113 = v42;
  v43 = sub_237EF61A0();
  OUTLINED_FUNCTION_1();
  v97 = v44;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_26_3();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_22_1();
  v107 = v47;
  v48 = *(v20 + 8);
  v104 = *(v20 + 24);
  v105 = *(v20 + 16);
  v119 = *v20;
  v120 = v48;
  v102 = v119;
  HIDWORD(v101) = v48;
  sub_237D520D4(v119, v48);
  v96 = sub_237CACD68(&v119);
  sub_237D52128(v119, v120);
  v98 = v27;
  v49 = sub_237EF6170();
  v50 = *(v49 + 16);
  v108 = v38;
  v99 = v43;
  if (v50)
  {
    v92 = v22;
    v93 = v21;
    v119 = MEMORY[0x277D84F90];
    sub_237C62D90(0, v50, 0);
    v51 = v119;
    v52 = v38 + 16;
    v112 = *(v38 + 16);
    v91 = v49;
    v53 = v49 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v110 = *(v52 + 56);
    v54 = (v52 - 8);
    do
    {
      v112(v113, v53, v118);
      v55 = sub_237EF6300();
      v57 = v56;
      (*v54)(v113, v118);
      v119 = v51;
      v59 = v51[2];
      v58 = v51[3];
      if (v59 >= v58 >> 1)
      {
        sub_237C62D90((v58 > 1), v59 + 1, 1);
        v51 = v119;
      }

      v51[2] = v59 + 1;
      v60 = &v51[2 * v59];
      v60[4] = v55;
      v60[5] = v57;
      v53 += v110;
      --v50;
    }

    while (v50);

    v25 = v21;
    v43 = v99;
  }

  else
  {
  }

  sub_237CADF98();
  v61 = OUTLINED_FUNCTION_89_4(&a13);
  v119 = sub_237E15C00(v61, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3860, &unk_237F15C10);
  sub_237C96710(qword_27DEB4450, &qword_27DEB3860, &unk_237F15C10, MEMORY[0x277D83B68]);
  sub_237EF6180();

  sub_237EF8A60();
  v124 = sub_237EF8110();
  v119 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0, qword_237F0EC30);
  sub_237C96710(&qword_27DEAEC30, &qword_27DEAEBD0, qword_237F0EC30, MEMORY[0x277D83970]);
  sub_237EF6180();

  v63 = sub_237EF6170();
  v111 = *(v97 + 8);
  (v111)(v22, v43);
  v64 = 0;
  v65 = *(v63 + 16);
  v66 = v108;
  v67 = (v108 + 8);
  while (v65 != v64)
  {
    if (v64 >= *(v63 + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    (*(v66 + 16))(v114, v63 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v64, v118);
    sub_237E1128C(v114, v109, v68, v69, v70, v71, v72, v73, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101);
    if (v25)
    {

      (*v67)(v114, v118);
      v76 = OUTLINED_FUNCTION_97_3();
      v77(v76);

      goto LABEL_32;
    }

    if (v74)
    {
      v119 = v74;
      sub_237EF8A60();
      sub_237EF8A20();
    }

    else
    {
      sub_237EF6120();
    }

    (*v67)(v114, v118);
    ++v64;
    v66 = v108;
  }

  v119 = v124;
  v75 = sub_237EF8A60();
  OUTLINED_FUNCTION_73_4();
  swift_getWitnessTable();
  if (sub_237EF8EC0())
  {
    OUTLINED_FUNCTION_51_12();
    v111();

    (*(v97 + 16))(v95, v98, v75);
LABEL_32:
    OUTLINED_FUNCTION_12_6();
    return;
  }

  sub_237EF8260();
  sub_237EF6100();
  sub_237EF6210();
  v78 = sub_237EF6100();
  if ((v78 & 0x8000000000000000) == 0)
  {
    if (v78)
    {
      v79 = 0;
      v115 = v78;
      while (1)
      {
        v123 = sub_237EF8110();
        sub_237EF8260();
        v80 = sub_237EF8920();
        v119 = v80;
        v81 = sub_237EF8A00();
        while (v80 != v81)
        {
          v82 = sub_237EF89D0();
          sub_237EF8960();
          if (v82)
          {
            sub_237EF8260();
          }

          else
          {
            sub_237EF93A0();
          }

          sub_237EF8A40();
          OUTLINED_FUNCTION_34_9();
          sub_237EF8AC0();

          sub_237EF8A20();
          v81 = sub_237EF8A00();
          v80 = v119;
        }

        v119 = v102;
        v120 = BYTE4(v101);
        v121 = v105;
        v122 = v104;
        v83 = v123;
        if ((sub_237E14CD0(v123, v109) & 1) == 0)
        {
          break;
        }

        ++v79;
        v119 = v83;
        OUTLINED_FUNCTION_1_2();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_39_15();
        swift_getWitnessTable();
        sub_237EF7DC0();
        sub_237EF6270();
        (*(v90 + 8))(v116, v117);
        if (v79 == v115)
        {
          goto LABEL_30;
        }
      }

      v85 = sub_237D4A59C();
      OUTLINED_FUNCTION_45_0(&type metadata for ConcatenationError, v85);
      *v86 = 0;
      v86[1] = 0;
      swift_willThrow();
      OUTLINED_FUNCTION_18_25();
      v87(v106, v103);
      v88 = OUTLINED_FUNCTION_97_3();
      v89(v88);
    }

    else
    {
LABEL_30:

      sub_237EF6200();
      sub_237EF6120();
      (*v67)(v113, v118);
      OUTLINED_FUNCTION_18_25();
      v84(v106, v103);
      (*(v97 + 32))(v95, v107, v99);
    }

    goto LABEL_32;
  }

LABEL_34:
  __break(1u);
}

void sub_237E1128C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  a19 = v22;
  a20 = v23;
  v750 = v20;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB44E8, &unk_237F17A00);
  OUTLINED_FUNCTION_3_2(v28, &v683);
  v671 = v29;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB19D8, &unk_237F17500);
  OUTLINED_FUNCTION_7_35(v32, &v686);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAA8, &unk_237F06900);
  v36 = OUTLINED_FUNCTION_3_2(v35, &v714);
  v674 = v37;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60, &unk_237F07350);
  OUTLINED_FUNCTION_3_2(v40, &v721);
  v677 = v41;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB44F0, &unk_237F17A10);
  OUTLINED_FUNCTION_3_2(v44, &v682);
  v670 = v45;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB19B8, &qword_237F0F090);
  OUTLINED_FUNCTION_7_35(v48, &v695);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17B0, &unk_237F0EEF0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAA0, &unk_237F07330);
  v54 = OUTLINED_FUNCTION_7_35(v53, &v693);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA90, &unk_237F068F0);
  v59 = OUTLINED_FUNCTION_3_2(v58, v716);
  v678 = v60;
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  OUTLINED_FUNCTION_3_2(v63, &v731);
  v680 = v64;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB44F8, &unk_237F17A20);
  OUTLINED_FUNCTION_3_2(v67, v689);
  v673 = v68;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1990, &qword_237F0F070);
  OUTLINED_FUNCTION_7_35(v71, &v700);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17B8, &unk_237F17A30);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v75);
  v744 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600, &unk_237F049C0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v79);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA80, &unk_237F068E0);
  v81 = OUTLINED_FUNCTION_3_2(v80, &v730);
  v681 = v82;
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v84);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA50, &unk_237F068C0);
  OUTLINED_FUNCTION_3_2(v85, &v740);
  v686 = v86;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v88);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4500, &unk_237F17A40);
  OUTLINED_FUNCTION_3_2(v89, &v692);
  v675 = v90;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v92);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1960, &qword_237F0F050);
  OUTLINED_FUNCTION_7_35(v93, &v709);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v95);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17C0, &unk_237F0EF00);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v97);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA78, &qword_237F068D8);
  v99 = OUTLINED_FUNCTION_7_35(v98, &v707);
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v102);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA68, &qword_237F068D0);
  v104 = OUTLINED_FUNCTION_3_2(v103, &v739);
  v698[1] = v105;
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v107);
  v108 = *(v25 + 16);
  v109 = *(v25 + 24);
  v749 = v25;
  v110 = v108;
  v751 = v109;
  v111 = sub_237EF7E90();
  OUTLINED_FUNCTION_1();
  v698[0] = v112;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v114);
  v115 = sub_237EF6290();
  WitnessTable = swift_getWitnessTable();
  v116 = sub_237EF61E0();
  v117 = OUTLINED_FUNCTION_3_2(v116, &v720);
  v693 = v118;
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v120);
  v748 = v111;
  sub_237EF90F0();
  v121 = sub_237EF90F0();
  OUTLINED_FUNCTION_3_2(v121, v717);
  v689[1] = v122;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v124);
  OUTLINED_FUNCTION_99_2(v732);
  v696 = v125;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v127);
  v714 = v115;
  v700 = *(v115 - 8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v129);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAE8, &qword_237F06920);
  OUTLINED_FUNCTION_3_2(v130, v733);
  v711 = v131;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v133);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAD8, &unk_237F0EF10);
  OUTLINED_FUNCTION_3_2(v134, &v743);
  v717[1] = v135;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v136);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v137);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAC8, &unk_237F06910);
  OUTLINED_FUNCTION_3_2(v138, &v748);
  v720 = v139;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v140);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v141);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAB8, &qword_237F0EF20);
  OUTLINED_FUNCTION_3_2(v142, &v752);
  v723[1] = v143;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v144);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v145);
  a10 = v110;
  v731 = sub_237EF8A60();
  sub_237EF6290();
  v725 = swift_getWitnessTable();
  v146 = sub_237EF61E0();
  OUTLINED_FUNCTION_3_2(v146, &a9);
  v726 = v147;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v148);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v149);
  OUTLINED_FUNCTION_99_2(&a16);
  v729 = v150;
  MEMORY[0x28223BE20](v151);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v152);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v153);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v154);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v155);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v156);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF450, &qword_237F08850);
  OUTLINED_FUNCTION_3_2(v157, &a14);
  v732[2] = v158;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v159);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v160);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17C8, &qword_237F0EF30);
  OUTLINED_FUNCTION_3_2(v161, &a18);
  v733[1] = v162;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v163);
  OUTLINED_FUNCTION_19();
  v743 = v164;
  v742 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17D0, &qword_237F0EF38);
  OUTLINED_FUNCTION_1();
  v736 = v165;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v166);
  OUTLINED_FUNCTION_19();
  v735 = v167;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17D8, &qword_237F0EF40);
  OUTLINED_FUNCTION_1();
  v737 = v169;
  v738 = v168;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v170);
  OUTLINED_FUNCTION_19();
  v741 = v171;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17E0, &qword_237F0EF48);
  OUTLINED_FUNCTION_1();
  v739 = v173;
  v740 = v172;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v174);
  v176 = v668 - v175;
  sub_237EF6290();
  OUTLINED_FUNCTION_1();
  v746 = v177;
  v747 = v178;
  MEMORY[0x28223BE20](v177);
  OUTLINED_FUNCTION_26_3();
  MEMORY[0x28223BE20](v179);
  v181 = v668 - v180;
  MEMORY[0x28223BE20](v182);
  v184 = v668 - v183;
  MEMORY[0x28223BE20](v185);
  v187 = v668 - v186;
  MEMORY[0x28223BE20](v188);
  v190 = v668 - v189;
  MEMORY[0x28223BE20](v191);
  v193 = v668 - v192;
  v194 = v27;
  v745 = sub_237EF62F0();
  v195 = a10;
  if (swift_dynamicCastMetatype())
  {
    v196 = sub_237EF62E0();
    MEMORY[0x28223BE20](v196);
    v197 = v751;
    v668[-4] = v195;
    v668[-3] = v197;
    OUTLINED_FUNCTION_50_12();
    *(v198 - 16) = v199;
    v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
    OUTLINED_FUNCTION_1_22();
    v201 = v746;
    v202 = swift_getWitnessTable();
    v203 = v750;
    sub_237C9339C(sub_237E17268, &v668[-6], v201, v748, v200, v202);
    if (v203)
    {
      (*(v747 + 8))(v193, v201);
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_17_40();
    v225 = v193;
    v226 = v201;
LABEL_155:
    v224(v225, v226);
    goto LABEL_17;
  }

  v668[4] = v190;
  v204 = v740;
  v668[3] = v184;
  v205 = v741;
  v668[2] = v181;
  v206 = v742;
  v668[1] = v21;
  v207 = v743;
  v208 = v744;
  v669 = v194;
  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_43_16(MEMORY[0x277D84B78]);
    OUTLINED_FUNCTION_37_18();
    MEMORY[0x28223BE20](v209);
    OUTLINED_FUNCTION_20_35();
    v210 = a10;
    v212 = v750;
    v211 = v751;
    *(v213 - 32) = a10;
    *(v213 - 24) = v211;
    v214 = *(v749 + 32);
    *(v213 - 16) = v214;
    OUTLINED_FUNCTION_44_10();
    sub_237EF6280();
    v215 = (*(v739 + 8))(v176, v204);
    MEMORY[0x28223BE20](v215);
    OUTLINED_FUNCTION_13_39();
    *(v216 - 32) = v210;
    *(v216 - 24) = v211;
    *(v216 - 16) = v214;
    v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
    OUTLINED_FUNCTION_1_22();
    v218 = v746;
    swift_getWitnessTable();
    v219 = OUTLINED_FUNCTION_36_18();
    sub_237C9339C(v219, v220, v218, v748, v217, v221);
    if (v212)
    {
      v222 = OUTLINED_FUNCTION_29_24();
      v223(v222, v218);
    }

    else
    {
      OUTLINED_FUNCTION_17_40();
      v244(v205, v218);
    }

    goto LABEL_17;
  }

  if (swift_dynamicCastMetatype())
  {
    v227 = v205;
    OUTLINED_FUNCTION_43_16(MEMORY[0x277D849A8]);
    OUTLINED_FUNCTION_85_3();
    MEMORY[0x28223BE20](v228);
    OUTLINED_FUNCTION_20_35();
    v229 = a10;
    v230 = v750;
    v231 = v751;
    *(v232 - 32) = a10;
    *(v232 - 24) = v231;
    v233 = *(v749 + 32);
    *(v232 - 16) = v233;
    v234 = v738;
    sub_237EF6280();
    (*(v737 + 8))(v227, v234);
    OUTLINED_FUNCTION_85_3();
    MEMORY[0x28223BE20](v235);
    OUTLINED_FUNCTION_13_39();
    *(v236 - 32) = v229;
    *(v236 - 24) = v231;
    *(v236 - 16) = v233;
    v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
    OUTLINED_FUNCTION_1_22();
    v238 = v746;
    swift_getWitnessTable();
    v239 = OUTLINED_FUNCTION_36_18();
    sub_237C9339C(v239, v240, v238, v748, v237, v241);
    if (!v230)
    {
      OUTLINED_FUNCTION_17_40();
    }

    v242 = OUTLINED_FUNCTION_34_9();
    goto LABEL_12;
  }

  v245 = swift_dynamicCastMetatype();
  v246 = v669;
  v247 = v751;
  if (!v245)
  {
    v264 = swift_dynamicCastMetatype();
    v265 = a10;
    if (v264)
    {
      sub_237EF62E0();
      OUTLINED_FUNCTION_37_18();
      MEMORY[0x28223BE20](v266);
      OUTLINED_FUNCTION_20_35();
      *(v267 - 32) = v265;
      *(v267 - 24) = v247;
      v268 = v750;
      v269 = v247;
      v270 = *(v749 + 32);
      *(v267 - 16) = v270;
      OUTLINED_FUNCTION_40_14();
      v271 = v734;
      sub_237EF6280();
      v272 = OUTLINED_FUNCTION_24_29();
      v273(v272, v271);
      OUTLINED_FUNCTION_85_3();
      MEMORY[0x28223BE20](v274);
      OUTLINED_FUNCTION_13_39();
      *(v275 - 32) = v265;
      *(v275 - 24) = v269;
      *(v275 - 16) = v270;
      v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
      OUTLINED_FUNCTION_1_22();
      v277 = v746;
      swift_getWitnessTable();
      v278 = OUTLINED_FUNCTION_36_18();
      sub_237C9339C(v278, v279, v277, v748, v276, v280);
      if (v268)
      {
        v243 = *(v747 + 8);
      }

      else
      {
        OUTLINED_FUNCTION_17_40();
      }

      v242 = v208;
      goto LABEL_12;
    }

    if (swift_dynamicCastMetatype())
    {
      v282 = sub_237EF62E0();
      MEMORY[0x28223BE20](v282);
      OUTLINED_FUNCTION_20_35();
      *(v283 - 32) = v265;
      *(v283 - 24) = v247;
      v284 = v750;
      v285 = v247;
      v286 = *(v749 + 32);
      *(v283 - 16) = v286;
      OUTLINED_FUNCTION_44_10();
      v287 = v732[1];
      sub_237EF6280();
      v288 = OUTLINED_FUNCTION_24_29();
      v289(v288, v287);
      v290 = v748;
      OUTLINED_FUNCTION_85_3();
      MEMORY[0x28223BE20](v291);
      OUTLINED_FUNCTION_13_39();
      *(v292 - 32) = v265;
      *(v292 - 24) = v285;
      *(v292 - 16) = v286;
      v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
      OUTLINED_FUNCTION_1_22();
      v294 = v746;
      swift_getWitnessTable();
      v295 = OUTLINED_FUNCTION_36_18();
      sub_237C9339C(v295, v296, v294, v290, v293, v297);
      if (v284)
      {
        v242 = OUTLINED_FUNCTION_29_24();
      }

      else
      {
        OUTLINED_FUNCTION_17_40();
        v242 = v205;
      }

LABEL_12:
      v243(v242);
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_51_12();
    if (swift_dynamicCastMetatype())
    {
      OUTLINED_FUNCTION_31_10();
      OUTLINED_FUNCTION_61_6();
      sub_237EF62E0();
      OUTLINED_FUNCTION_1_22();
      OUTLINED_FUNCTION_51_12();
      swift_getWitnessTable();
      v298 = sub_237EF8E80();
      v299 = v752;
      if (v752 >= 2)
      {
        v301 = a10;
        v300 = sub_237EF8A00();
        v298 = sub_237C583C0(v299);
      }

      else
      {
        v300 = 0;
        v301 = a10;
      }

      MEMORY[0x28223BE20](v298);
      OUTLINED_FUNCTION_13_39();
      *(v317 - 32) = v301;
      *(v317 - 24) = v247;
      v319 = *(v318 + 32);
      *(v317 - 16) = v319;
      *(v317 - 8) = v300;
      OUTLINED_FUNCTION_2_82();
      OUTLINED_FUNCTION_51_12();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_53_10();
      v320 = v730;
      if (sub_237EF8750())
      {
        v321 = sub_237EF89A0();
        OUTLINED_FUNCTION_23_32(v321);
        OUTLINED_FUNCTION_70_6();
        sub_237EF61F0();

        OUTLINED_FUNCTION_37_18();
        MEMORY[0x28223BE20](v322);
        OUTLINED_FUNCTION_13_39();
        *(v323 - 32) = v301;
        *(v323 - 24) = v247;
        *(v323 - 16) = v319;
        OUTLINED_FUNCTION_4_71();
        v324 = v728;
        swift_getWitnessTable();
        OUTLINED_FUNCTION_53_10();
        OUTLINED_FUNCTION_49_12();
        sub_237C9339C(v325, v326, v327, v328, v329, v330);
        OUTLINED_FUNCTION_12_43();
        v331(v320, v324);
        OUTLINED_FUNCTION_18_32();
        v225 = v246;
      }

      else
      {
        v332 = sub_237EF6300();
        v334 = v333;
        v335 = sub_237D4A59C();
        OUTLINED_FUNCTION_45_0(&type metadata for ConcatenationError, v335);
        *v336 = v332;
        v336[1] = v334;
        swift_willThrow();
        OUTLINED_FUNCTION_18_32();
        v225 = v320;
      }

      v226 = v300;
      goto LABEL_155;
    }

    v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA0, &unk_237F0EF50);
    v303 = OUTLINED_FUNCTION_60_9(v302);
    v304 = v750;
    if (v303)
    {
      v305 = v723[0];
      OUTLINED_FUNCTION_61_6();
      sub_237EF62E0();
      OUTLINED_FUNCTION_37_18();
      MEMORY[0x28223BE20](v306);
      OUTLINED_FUNCTION_20_35();
      v307 = a10;
      *(v308 - 32) = a10;
      *(v308 - 24) = v247;
      OUTLINED_FUNCTION_50_12();
      v310 = v309;
      *(v311 - 16) = v309;
      OUTLINED_FUNCTION_40_14();
      v312 = v724;
      OUTLINED_FUNCTION_100_3(v313, v314, v724);
      v750 = v20;
      OUTLINED_FUNCTION_18_25();
      v315(v305, v312);
      OUTLINED_FUNCTION_1_22();
      OUTLINED_FUNCTION_37_8();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_44_15();
      v316 = v208;
      sub_237EF8E80();
      if (v752 >= 2)
      {
        sub_237EF8A00();
        OUTLINED_FUNCTION_106_2();
      }

      else
      {
        v316 = 0;
      }

      v348 = v728;
      OUTLINED_FUNCTION_88_4();
      MEMORY[0x28223BE20](v349);
      OUTLINED_FUNCTION_42_15();
      v350 = v751;
      *(v351 - 32) = v307;
      *(v351 - 24) = v350;
      v352 = v310;
      *(v351 - 16) = v310;
      *(v351 - 8) = v316;
      OUTLINED_FUNCTION_2_82();
      v353 = v733[0];
      swift_getWitnessTable();
      OUTLINED_FUNCTION_72_5();
      v354 = v727;
      if (sub_237EF8750())
      {
        v355 = sub_237EF89A0();
        OUTLINED_FUNCTION_23_32(v355);
        OUTLINED_FUNCTION_70_6();
        sub_237EF61F0();

        OUTLINED_FUNCTION_37_18();
        MEMORY[0x28223BE20](v356);
        OUTLINED_FUNCTION_13_39();
        *(v357 - 32) = v307;
        *(v357 - 24) = v350;
        *(v357 - 16) = v246;
        OUTLINED_FUNCTION_4_71();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_53_10();
        OUTLINED_FUNCTION_49_12();
        sub_237C9339C(v358, v359, v360, v361, v362, v363);
        OUTLINED_FUNCTION_12_43();
        v364(v352, v348);
        OUTLINED_FUNCTION_18_32();
        v225 = v727;
      }

      else
      {
        sub_237EF6300();
        v365 = OUTLINED_FUNCTION_50_7();
        v366 = OUTLINED_FUNCTION_45_0(&type metadata for ConcatenationError, v365);
        OUTLINED_FUNCTION_38_13(v366, v367);
        OUTLINED_FUNCTION_18_32();
        v225 = v354;
      }

      v226 = v353;
      goto LABEL_155;
    }

    v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350, &unk_237F07040);
    if (OUTLINED_FUNCTION_60_9(v337))
    {
      OUTLINED_FUNCTION_61_6();
      sub_237EF62E0();
      OUTLINED_FUNCTION_37_18();
      MEMORY[0x28223BE20](v338);
      OUTLINED_FUNCTION_20_35();
      v339 = a10;
      *(v340 - 32) = a10;
      *(v340 - 24) = v247;
      OUTLINED_FUNCTION_50_12();
      v749 = v341;
      *(v342 - 16) = v341;
      OUTLINED_FUNCTION_40_14();
      OUTLINED_FUNCTION_100_3(v343, v344, v721);
      v750 = v20;
      OUTLINED_FUNCTION_18_25();
      v345 = OUTLINED_FUNCTION_34_9();
      v346(v345);
      OUTLINED_FUNCTION_1_22();
      OUTLINED_FUNCTION_37_8();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_44_15();
      v347 = v208;
      sub_237EF8E80();
      if (v752 >= 2)
      {
        sub_237EF8A00();
        OUTLINED_FUNCTION_106_2();
      }

      else
      {
        v347 = 0;
      }

      v376 = v728;
      OUTLINED_FUNCTION_88_4();
      MEMORY[0x28223BE20](v377);
      OUTLINED_FUNCTION_42_15();
      *(v378 - 32) = v339;
      *(v378 - 24) = v247;
      v379 = v749;
      *(v378 - 16) = v749;
      *(v378 - 8) = v347;
      OUTLINED_FUNCTION_2_82();
      v380 = v733[0];
      swift_getWitnessTable();
      OUTLINED_FUNCTION_72_5();
      v381 = v722;
      if ((sub_237EF8750() & 1) == 0)
      {
        sub_237EF6300();
        v392 = OUTLINED_FUNCTION_50_7();
        v393 = OUTLINED_FUNCTION_45_0(&type metadata for ConcatenationError, v392);
        OUTLINED_FUNCTION_38_13(v393, v394);
        OUTLINED_FUNCTION_18_32();
        v225 = v381;
        v226 = v380;
        goto LABEL_155;
      }

      v382 = sub_237EF89A0();
      OUTLINED_FUNCTION_23_32(v382);
      OUTLINED_FUNCTION_70_6();
      sub_237EF61F0();

      OUTLINED_FUNCTION_37_18();
      MEMORY[0x28223BE20](v383);
      OUTLINED_FUNCTION_13_39();
      *(v384 - 32) = v339;
      *(v384 - 24) = v247;
      *(v384 - 16) = v246;
      OUTLINED_FUNCTION_4_71();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_53_10();
      OUTLINED_FUNCTION_49_12();
      sub_237C9339C(v385, v386, v387, v388, v389, v390);
      OUTLINED_FUNCTION_12_43();
      v391(v379, v376);
      OUTLINED_FUNCTION_18_32();
      v225 = v722;
      goto LABEL_53;
    }

    v368 = v304;
    v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3D8, &qword_237F07050);
    if (OUTLINED_FUNCTION_60_9(v369))
    {
      OUTLINED_FUNCTION_61_6();
      sub_237EF62E0();
      OUTLINED_FUNCTION_37_18();
      MEMORY[0x28223BE20](v370);
      OUTLINED_FUNCTION_20_35();
      *(v371 - 32) = a10;
      *(v371 - 24) = v247;
      v372 = *(v749 + 32);
      *(v371 - 16) = v372;
      OUTLINED_FUNCTION_29_18();
      OUTLINED_FUNCTION_69_7();
      sub_237EF6280();
      v373 = OUTLINED_FUNCTION_24_29();
      v374(v373, v207);
      OUTLINED_FUNCTION_1_22();
      OUTLINED_FUNCTION_37_8();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_44_15();
      v375 = v265;
      sub_237EF8E80();
      if (v752 >= 2)
      {
        sub_237EF8A00();
        OUTLINED_FUNCTION_106_2();
      }

      else
      {
        v375 = 0;
      }

      OUTLINED_FUNCTION_88_4();
      MEMORY[0x28223BE20](v405);
      OUTLINED_FUNCTION_42_15();
      v406 = a10;
      v407 = v751;
      *(v408 - 32) = a10;
      *(v408 - 24) = v407;
      *(v408 - 16) = v372;
      *(v408 - 8) = v375;
      OUTLINED_FUNCTION_2_82();
      v409 = v733[0];
      swift_getWitnessTable();
      OUTLINED_FUNCTION_72_5();
      v410 = v719;
      v411 = sub_237EF8750();
      v750 = v368;
      if (v411)
      {
        v412 = sub_237EF89A0();
        OUTLINED_FUNCTION_81_4(v412);
        OUTLINED_FUNCTION_44_10();
        OUTLINED_FUNCTION_70_6();
        sub_237EF61F0();

        OUTLINED_FUNCTION_37_18();
        MEMORY[0x28223BE20](v413);
        OUTLINED_FUNCTION_13_39();
        *(v414 - 32) = v406;
        *(v414 - 24) = v407;
        *(v414 - 16) = v372;
        OUTLINED_FUNCTION_4_71();
        OUTLINED_FUNCTION_55_8();
        swift_getWitnessTable();
        v415 = OUTLINED_FUNCTION_53_10();
        sub_237C9339C(v415, v416, v372, v748, v417, v418);
        OUTLINED_FUNCTION_12_43();
        v419(v368, v372);
      }

      else
      {
        v420 = OUTLINED_FUNCTION_74_3(v411);
        v422 = v421;
        v423 = sub_237D4A59C();
        OUTLINED_FUNCTION_45_0(&type metadata for ConcatenationError, v423);
        *v424 = v420;
        v424[1] = v422;
        swift_willThrow();
      }

      OUTLINED_FUNCTION_18_32();
      v225 = v410;
      v226 = v409;
      goto LABEL_155;
    }

    v395 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA8, &qword_237F15D00);
    if (OUTLINED_FUNCTION_60_9(v395))
    {
      v396 = v709;
      OUTLINED_FUNCTION_61_6();
      v397 = sub_237EF62E0();
      MEMORY[0x28223BE20](v397);
      OUTLINED_FUNCTION_20_35();
      v398 = v751;
      *(v399 - 32) = a10;
      *(v399 - 24) = v398;
      v400 = *(v749 + 32);
      *(v399 - 16) = v400;
      v401 = v718;
      OUTLINED_FUNCTION_69_7();
      sub_237EF6280();
      v402 = OUTLINED_FUNCTION_24_29();
      v403(v402, v207);
      OUTLINED_FUNCTION_1_22();
      OUTLINED_FUNCTION_37_8();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_44_15();
      v404 = v401;
      sub_237EF8E80();
      if (v752 >= 2)
      {
        sub_237EF8A00();
        OUTLINED_FUNCTION_106_2();
      }

      else
      {
        v404 = 0;
      }

      OUTLINED_FUNCTION_88_4();
      MEMORY[0x28223BE20](v428);
      OUTLINED_FUNCTION_42_15();
      v429 = v751;
      *(v430 - 32) = a10;
      *(v430 - 24) = v429;
      *(v430 - 16) = v400;
      *(v430 - 8) = v404;
      OUTLINED_FUNCTION_2_82();
      OUTLINED_FUNCTION_37_8();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_72_5();
      v431 = sub_237EF8750();
      if (v431)
      {
        v432 = a10;
        v433 = sub_237EF89A0();
        OUTLINED_FUNCTION_81_4(v433);
        OUTLINED_FUNCTION_40_14();
        v380 = v733[0];
        OUTLINED_FUNCTION_70_6();
        OUTLINED_FUNCTION_78_2(v434, v435, v436);

        OUTLINED_FUNCTION_37_18();
        MEMORY[0x28223BE20](v437);
        OUTLINED_FUNCTION_13_39();
        v438 = v751;
        *(v439 - 32) = v432;
        *(v439 - 24) = v438;
        *(v439 - 16) = v400;
        OUTLINED_FUNCTION_4_71();
        OUTLINED_FUNCTION_55_8();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_53_10();
        OUTLINED_FUNCTION_49_12();
        sub_237C9339C(v440, v441, v442, v443, v444, v445);
        OUTLINED_FUNCTION_12_43();
        v446(v668, v400);
        OUTLINED_FUNCTION_18_32();
        v225 = v396;
LABEL_53:
        v226 = v380;
        goto LABEL_155;
      }

      OUTLINED_FUNCTION_74_3(v431);
      v447 = OUTLINED_FUNCTION_50_7();
      v448 = OUTLINED_FUNCTION_45_0(&type metadata for ConcatenationError, v447);
      OUTLINED_FUNCTION_38_13(v448, v449);
      OUTLINED_FUNCTION_18_32();
      v225 = v718;
      v450 = &a16;
LABEL_154:
      v226 = *(v450 - 32);
      goto LABEL_155;
    }

    if (swift_dynamicCastMetatype())
    {
      OUTLINED_FUNCTION_31_10();
      OUTLINED_FUNCTION_43_16(v748);
      OUTLINED_FUNCTION_1_22();
      OUTLINED_FUNCTION_51_12();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_32_12();
      sub_237EF8E80();
      OUTLINED_FUNCTION_26_14(v246, 1, v732);
      if (v490)
      {
        OUTLINED_FUNCTION_18_25();
        v426 = v708;
        v427 = v717;
      }

      else
      {
        (*(v696 + 32))(v699, v708, v707);
        v455 = OUTLINED_FUNCTION_95_0();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v455, v456, v748);
        if (EnumTagSinglePayload != 1)
        {
          v459 = sub_237EF7E20();
          v460 = OUTLINED_FUNCTION_30_30();
          v458 = v461(v460);
          goto LABEL_79;
        }

        OUTLINED_FUNCTION_18_25();
        v426 = v699;
        v427 = v732;
      }

      v458 = v425(v426, *(v427 - 32));
      v459 = MEMORY[0x277D84F90];
LABEL_79:
      MEMORY[0x28223BE20](v458);
      OUTLINED_FUNCTION_13_39();
      v462 = v751;
      *(v463 - 32) = a10;
      *(v463 - 24) = v462;
      OUTLINED_FUNCTION_50_12();
      *(v464 - 16) = v465;
      *(v464 - 8) = v459;
      OUTLINED_FUNCTION_2_82();
      OUTLINED_FUNCTION_55_8();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_53_10();
      v466 = sub_237EF8750();

      if (v466)
      {
        sub_237EF89A0();
        OUTLINED_FUNCTION_39_15();
        v468 = v748;
        swift_getWitnessTable();
        OUTLINED_FUNCTION_32_12();
        sub_237EF7F40();
        OUTLINED_FUNCTION_40_14();
        v469 = v714;
        OUTLINED_FUNCTION_78_2(v246, v714, WitnessTable);
        OUTLINED_FUNCTION_18_25();
        v470(v246, v468);
        v471 = v693;
        v472 = OUTLINED_FUNCTION_71_4();
        v473 = v694;
        v474(v472, v208, v694);
        swift_getWitnessTable();
        OUTLINED_FUNCTION_13_8();
        sub_237EF8A90();
        (*(v471 + 8))(v208, v473);
        v475 = OUTLINED_FUNCTION_24_29();
        v476(v475, v469);
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_74_3(v467);
      v477 = OUTLINED_FUNCTION_50_7();
      v478 = OUTLINED_FUNCTION_45_0(&type metadata for ConcatenationError, v477);
      OUTLINED_FUNCTION_38_13(v478, v479);
      OUTLINED_FUNCTION_18_25();
      v225 = v713[1];
      v450 = &v737;
      goto LABEL_154;
    }

    if (swift_dynamicCastMetatype())
    {
      OUTLINED_FUNCTION_29_18();
      OUTLINED_FUNCTION_43_16(v716[1]);
      OUTLINED_FUNCTION_32_12();
      sub_237CA3018(v451);
      OUTLINED_FUNCTION_26_14(v246, 1, &v707);
      if (v490)
      {
        v452 = &qword_27DEB17C0;
        v453 = &unk_237F0EF00;
        v454 = v723;
      }

      else
      {
        OUTLINED_FUNCTION_51_12();
        sub_237CF9FF0(v484, v485, v486, v487);
        v488 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_26_14(v488, v489, &v740);
        if (!v490)
        {
          v491 = sub_237EF7E20();
          v492 = OUTLINED_FUNCTION_30_30();
          v493(v492);
          goto LABEL_89;
        }

        v452 = &qword_27DEAEA78;
        v453 = &qword_237F068D8;
        v454 = &v706;
      }

      sub_237C65484(*(v454 - 32), v452, v453);
      v491 = MEMORY[0x277D84F90];
LABEL_89:
      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_71_4();
      OUTLINED_FUNCTION_91_1();
      v494();
      v495 = &qword_237F068D0;
      OUTLINED_FUNCTION_2_51();
      OUTLINED_FUNCTION_13_8();
      v500 = sub_237C96710(v496, v497, v498, v499);
      OUTLINED_FUNCTION_104_2(v500, v500);
      OUTLINED_FUNCTION_1_52();
      OUTLINED_FUNCTION_13_8();
      sub_237C96710(v501, v502, v503, v504);
      OUTLINED_FUNCTION_62_5(v713);
      while (1)
      {
        sub_237EF8DE0();
        OUTLINED_FUNCTION_65_6();
        if (v490)
        {
          break;
        }

        v505 = v715;
        v506 = OUTLINED_FUNCTION_77_3();
        OUTLINED_FUNCTION_55_8();
        sub_237C9E294(v507, v508, &qword_27DEAEA78, &qword_237F068D8);
        v509 = OUTLINED_FUNCTION_46_15();
        v506(v509);
        OUTLINED_FUNCTION_75_4();
        OUTLINED_FUNCTION_37_8();
        sub_237C9E294(v510, v511, &qword_27DEAEA78, &qword_237F068D8);
        OUTLINED_FUNCTION_26_14(v505, 1, &v740);
        if (v490)
        {
          OUTLINED_FUNCTION_45_14(&v735);
          OUTLINED_FUNCTION_45_14(&v734);
          goto LABEL_101;
        }

        OUTLINED_FUNCTION_89_4(&v740);
        v495 = v713[0];
        v512 = v713[0];
        sub_237EF7E20();
        v513 = OUTLINED_FUNCTION_34_13();
        v514(v513);
        OUTLINED_FUNCTION_64_7();
        if (!v490)
        {
          goto LABEL_100;
        }

        if (v515 && v512 != v491)
        {
          while (1)
          {
            OUTLINED_FUNCTION_63_7();
            if (!v490)
            {
              break;
            }

            if (v516 == 1)
            {
              goto LABEL_99;
            }
          }

LABEL_100:
          sub_237C65484(v712, &qword_27DEAEA78, &qword_237F068D8);

LABEL_101:

          v517 = sub_237C65484(v715, &qword_27DEB1960, &qword_237F0F050);
          OUTLINED_FUNCTION_74_3(v517);
          v518 = OUTLINED_FUNCTION_50_7();
          v519 = OUTLINED_FUNCTION_45_0(&type metadata for ConcatenationError, v518);
          OUTLINED_FUNCTION_38_13(v519, v520);
          OUTLINED_FUNCTION_18_25();
          v225 = v703;
          v450 = &v739;
          goto LABEL_154;
        }

LABEL_99:
        sub_237C65484(v712, &qword_27DEAEA78, &qword_237F068D8);
      }

      sub_237C65484(v715, &qword_27DEB1960, &qword_237F0F050);

      OUTLINED_FUNCTION_6_36(&qword_27DEB1968, &qword_27DEAEA50, &unk_237F068C0);
      OUTLINED_FUNCTION_31_10();
      OUTLINED_FUNCTION_76_6(v531);
      OUTLINED_FUNCTION_9_50(&qword_27DEB4538, &qword_27DEAEA68, &qword_237F068D0);
      OUTLINED_FUNCTION_40_14();
      OUTLINED_FUNCTION_98_3();
      OUTLINED_FUNCTION_78_2(v532, v533, v534);
      v535 = OUTLINED_FUNCTION_47_12();
      v536(v535);
      OUTLINED_FUNCTION_37_18();
      MEMORY[0x28223BE20](v537);
      OUTLINED_FUNCTION_8_64();
      OUTLINED_FUNCTION_10_52(&qword_27DEB4540, &qword_27DEB4500, &unk_237F17A40);
      v538 = OUTLINED_FUNCTION_73_4();
      OUTLINED_FUNCTION_32_21(v538, v539, v540, v541, &v692);
      OUTLINED_FUNCTION_35_15();
      v542 = OUTLINED_FUNCTION_21_36();
      v543(v542, v491);
LABEL_158:
      v225 = OUTLINED_FUNCTION_24_29();
      v226 = v495;
      goto LABEL_155;
    }

    if (swift_dynamicCastMetatype())
    {
      OUTLINED_FUNCTION_29_18();
      OUTLINED_FUNCTION_43_16(v706);
      OUTLINED_FUNCTION_31_10();
      sub_237CA3104(v480);
      if (__swift_getEnumTagSinglePayload(v187, 1, v208) == 1)
      {
        v481 = &qword_27DEB17B8;
        v482 = &unk_237F17A30;
        v483 = &v705;
      }

      else
      {
        OUTLINED_FUNCTION_51_12();
        sub_237CF9FF0(v525, v526, v527, v528);
        v529 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_26_14(v529, v530, &v731);
        if (!v490)
        {
          v544 = sub_237EF7E20();
          v545 = OUTLINED_FUNCTION_30_30();
          v546(v545);
          goto LABEL_112;
        }

        v481 = &qword_27DEAD600;
        v482 = &unk_237F049C0;
        v483 = &v701;
      }

      sub_237C65484(*(v483 - 32), v481, v482);
      v544 = MEMORY[0x277D84F90];
LABEL_112:
      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_71_4();
      OUTLINED_FUNCTION_91_1();
      v547();
      v495 = &unk_237F068E0;
      OUTLINED_FUNCTION_2_51();
      OUTLINED_FUNCTION_13_8();
      v552 = sub_237C96710(v548, v549, v550, v551);
      OUTLINED_FUNCTION_104_2(v552, v552);
      OUTLINED_FUNCTION_1_52();
      OUTLINED_FUNCTION_13_8();
      sub_237C96710(v553, v554, v555, v556);
      OUTLINED_FUNCTION_62_5(&v703);
      while (1)
      {
        sub_237EF8DE0();
        OUTLINED_FUNCTION_65_6();
        if (v490)
        {
          break;
        }

        v557 = v704;
        v558 = OUTLINED_FUNCTION_77_3();
        OUTLINED_FUNCTION_55_8();
        sub_237C9E294(v559, v560, &qword_27DEAD600, &unk_237F049C0);
        v561 = OUTLINED_FUNCTION_46_15();
        v558(v561);
        OUTLINED_FUNCTION_75_4();
        OUTLINED_FUNCTION_37_8();
        sub_237C9E294(v562, v563, &qword_27DEAD600, &unk_237F049C0);
        OUTLINED_FUNCTION_26_14(v557, 1, &v731);
        if (v490)
        {
          OUTLINED_FUNCTION_45_14(&v726);
          OUTLINED_FUNCTION_45_14(&v727);
          goto LABEL_124;
        }

        OUTLINED_FUNCTION_89_4(&v731);
        v495 = v701;
        v564 = v701;
        sub_237EF7E20();
        v565 = OUTLINED_FUNCTION_34_13();
        v566(v565);
        OUTLINED_FUNCTION_64_7();
        if (!v490)
        {
          goto LABEL_123;
        }

        if (v567 && v564 != v544)
        {
          while (1)
          {
            OUTLINED_FUNCTION_63_7();
            if (!v490)
            {
              break;
            }

            if (v568 == 1)
            {
              goto LABEL_122;
            }
          }

LABEL_123:
          sub_237C65484(v702, &qword_27DEAD600, &unk_237F049C0);

LABEL_124:

          v569 = sub_237C65484(v704, &qword_27DEB1990, &qword_237F0F070);
          OUTLINED_FUNCTION_74_3(v569);
          v570 = OUTLINED_FUNCTION_50_7();
          v571 = OUTLINED_FUNCTION_45_0(&type metadata for ConcatenationError, v570);
          OUTLINED_FUNCTION_38_13(v571, v572);
          OUTLINED_FUNCTION_18_25();
          v225 = v685;
          v450 = &v730;
          goto LABEL_154;
        }

LABEL_122:
        sub_237C65484(v702, &qword_27DEAD600, &unk_237F049C0);
      }

      sub_237C65484(v704, &qword_27DEB1990, &qword_237F0F070);

      OUTLINED_FUNCTION_6_36(&qword_27DEAD2F8, &qword_27DEAD6A0, &qword_237F036B0);
      OUTLINED_FUNCTION_31_10();
      OUTLINED_FUNCTION_76_6(v582);
      OUTLINED_FUNCTION_9_50(&qword_27DEB4528, &qword_27DEAEA80, &unk_237F068E0);
      OUTLINED_FUNCTION_40_14();
      OUTLINED_FUNCTION_98_3();
      OUTLINED_FUNCTION_78_2(v583, v584, v585);
      v586 = OUTLINED_FUNCTION_47_12();
      v587(v586);
      OUTLINED_FUNCTION_37_18();
      MEMORY[0x28223BE20](v588);
      OUTLINED_FUNCTION_8_64();
      OUTLINED_FUNCTION_10_52(&qword_27DEB4530, &qword_27DEB44F8, &unk_237F17A20);
      v589 = OUTLINED_FUNCTION_73_4();
      OUTLINED_FUNCTION_32_21(v589, v590, v591, v592, v689);
      OUTLINED_FUNCTION_35_15();
      v593 = OUTLINED_FUNCTION_21_36();
      v594(v593, v544);
      goto LABEL_158;
    }

    if (!swift_dynamicCastMetatype())
    {
      sub_237C75918(0, &qword_27DEAF160, 0x277CBFF48);
      if (!swift_dynamicCastMetatype())
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_32_12();
      OUTLINED_FUNCTION_61_6();
      sub_237EF62E0();
      v573 = sub_237CA32DC();
      if (v573 >= 2)
      {
        v624 = v573;
        v625 = [v573 shape];
        sub_237D5CEDC(v624);
        sub_237C75918(0, &qword_280C8CCF8, 0x277CCABB0);
        v574 = sub_237EF8910();
      }

      else
      {
        v574 = MEMORY[0x277D84F90];
      }

      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_71_4();
      OUTLINED_FUNCTION_91_1();
      v626();
      OUTLINED_FUNCTION_2_51();
      v629 = sub_237C96710(v627, &qword_27DEAEAA8, &unk_237F06900, v628);
      OUTLINED_FUNCTION_104_2(v629, v629);
      v630 = *(v672 + 36);
      OUTLINED_FUNCTION_1_52();
      v633 = sub_237C96710(v631, &qword_27DEAEAA8, &unk_237F06900, v632);
      while (1)
      {
        v634 = v687;
        sub_237EF8DE0();
        if (*(v634 + v630) == v752)
        {
          break;
        }

        v635 = sub_237EF8F00();
        v637 = *v636;
        v638 = *v636;
        v639 = OUTLINED_FUNCTION_46_15();
        v635(v639);
        sub_237EF8DF0();
        if (v637)
        {
          v640 = [v638 shape];
          sub_237C75918(0, &qword_280C8CCF8, 0x277CCABB0);
          v641 = sub_237EF8910();

          sub_237EF8260();
          LOBYTE(v640) = sub_237C60FA4(v641, v574);

          if (v640)
          {
            continue;
          }
        }

        v642 = sub_237C65484(v687, &qword_27DEB19D8, &unk_237F17500);
        OUTLINED_FUNCTION_74_3(v642);
        v643 = OUTLINED_FUNCTION_50_7();
        v644 = OUTLINED_FUNCTION_45_0(&type metadata for ConcatenationError, v643);
        OUTLINED_FUNCTION_38_13(v644, v645);
        OUTLINED_FUNCTION_18_25();
        v225 = v676;
        v450 = &v714;
        goto LABEL_154;
      }

      sub_237C65484(v687, &qword_27DEB19D8, &unk_237F17500);
      v646 = [objc_allocWithZone(MEMORY[0x277CBFF48]) init];
      v752 = v646;
      OUTLINED_FUNCTION_9_50(&qword_27DEB4508, &qword_27DEAEAA8, &unk_237F06900);
      OUTLINED_FUNCTION_40_14();
      OUTLINED_FUNCTION_98_3();
      v647 = v676;
      sub_237EF61F0();

      MEMORY[0x28223BE20](v648);
      OUTLINED_FUNCTION_8_64();
      OUTLINED_FUNCTION_10_52(&qword_27DEB4510, &qword_27DEB44E8, &unk_237F17A00);
      v649 = OUTLINED_FUNCTION_73_4();
      OUTLINED_FUNCTION_32_21(v649, v650, v651, v652, &v683);
      OUTLINED_FUNCTION_35_15();
      v653 = OUTLINED_FUNCTION_21_36();
      v654(v653, v646);
      OUTLINED_FUNCTION_18_25();
      v225 = v647;
      v226 = v633;
      goto LABEL_155;
    }

    OUTLINED_FUNCTION_29_18();
    OUTLINED_FUNCTION_43_16(v695);
    OUTLINED_FUNCTION_32_12();
    sub_237CA31F0(v521);
    OUTLINED_FUNCTION_26_14(v246, 1, &v693);
    if (v490)
    {
      v522 = &qword_27DEB17B0;
      v523 = &unk_237F0EEF0;
      v524 = v698;
    }

    else
    {
      OUTLINED_FUNCTION_51_12();
      sub_237CF9FF0(v575, v576, v577, v578);
      v579 = OUTLINED_FUNCTION_95_0();
      OUTLINED_FUNCTION_26_14(v579, v580, &v721);
      if (!v581)
      {
        v595 = sub_237EF7E20();
        v596 = OUTLINED_FUNCTION_30_30();
        v597(v596);
        goto LABEL_134;
      }

      v522 = &qword_27DEAEAA0;
      v523 = &unk_237F07330;
      v524 = &v690;
    }

    sub_237C65484(*(v524 - 32), v522, v523);
    v595 = MEMORY[0x277D84F90];
LABEL_134:
    OUTLINED_FUNCTION_63_3();
    OUTLINED_FUNCTION_71_4();
    OUTLINED_FUNCTION_91_1();
    v598();
    v495 = &unk_237F068F0;
    OUTLINED_FUNCTION_2_51();
    OUTLINED_FUNCTION_13_8();
    v603 = sub_237C96710(v599, v600, v601, v602);
    OUTLINED_FUNCTION_104_2(v603, v603);
    OUTLINED_FUNCTION_1_52();
    OUTLINED_FUNCTION_13_8();
    sub_237C96710(v604, v605, v606, v607);
    OUTLINED_FUNCTION_62_5(&v697);
    while (1)
    {
      sub_237EF8DE0();
      OUTLINED_FUNCTION_65_6();
      if (v490)
      {
        break;
      }

      v608 = v688;
      v609 = OUTLINED_FUNCTION_77_3();
      OUTLINED_FUNCTION_55_8();
      sub_237C9E294(v610, v611, &qword_27DEAEAA0, &unk_237F07330);
      v612 = OUTLINED_FUNCTION_46_15();
      v609(v612);
      OUTLINED_FUNCTION_75_4();
      OUTLINED_FUNCTION_37_8();
      sub_237C9E294(v613, v614, &qword_27DEAEAA0, &unk_237F07330);
      OUTLINED_FUNCTION_26_14(v608, 1, &v721);
      if (v490)
      {
        OUTLINED_FUNCTION_45_14(&v710);
        OUTLINED_FUNCTION_45_14(&v711);
        goto LABEL_146;
      }

      OUTLINED_FUNCTION_89_4(&v721);
      v495 = v683;
      v615 = v683;
      sub_237EF7E20();
      v616 = OUTLINED_FUNCTION_34_13();
      v617(v616);
      OUTLINED_FUNCTION_64_7();
      if (!v490)
      {
        goto LABEL_145;
      }

      if (v618 && v615 != v595)
      {
        while (1)
        {
          OUTLINED_FUNCTION_63_7();
          if (!v490)
          {
            break;
          }

          if (v619 == 1)
          {
            goto LABEL_144;
          }
        }

LABEL_145:
        sub_237C65484(v684, &qword_27DEAEAA0, &unk_237F07330);

LABEL_146:

        v620 = sub_237C65484(v688, &qword_27DEB19B8, &qword_237F0F090);
        OUTLINED_FUNCTION_74_3(v620);
        v621 = OUTLINED_FUNCTION_50_7();
        v622 = OUTLINED_FUNCTION_45_0(&type metadata for ConcatenationError, v621);
        OUTLINED_FUNCTION_38_13(v622, v623);
        OUTLINED_FUNCTION_18_25();
        v225 = v679;
        v450 = v716;
        goto LABEL_154;
      }

LABEL_144:
      sub_237C65484(v684, &qword_27DEAEAA0, &unk_237F07330);
    }

    sub_237C65484(v688, &qword_27DEB19B8, &qword_237F0F090);

    OUTLINED_FUNCTION_6_36(qword_280C8CD78, &qword_27DEAEA60, &unk_237F07350);
    OUTLINED_FUNCTION_31_10();
    OUTLINED_FUNCTION_76_6(v655);
    OUTLINED_FUNCTION_9_50(&qword_27DEB4518, &qword_27DEAEA90, &unk_237F068F0);
    OUTLINED_FUNCTION_40_14();
    OUTLINED_FUNCTION_98_3();
    OUTLINED_FUNCTION_78_2(v656, v657, v658);
    v659 = OUTLINED_FUNCTION_47_12();
    v660(v659);
    OUTLINED_FUNCTION_37_18();
    MEMORY[0x28223BE20](v661);
    OUTLINED_FUNCTION_8_64();
    OUTLINED_FUNCTION_10_52(&qword_27DEB4520, &qword_27DEB44F0, &unk_237F17A10);
    v662 = OUTLINED_FUNCTION_73_4();
    OUTLINED_FUNCTION_32_21(v662, v663, v664, v665, &v682);
    OUTLINED_FUNCTION_35_15();
    v666 = OUTLINED_FUNCTION_21_36();
    v667(v666, v595);
    goto LABEL_158;
  }

  v248 = v735;
  v249 = sub_237EF62E0();
  MEMORY[0x28223BE20](v249);
  OUTLINED_FUNCTION_20_35();
  v250 = v247;
  v251 = a10;
  *(v252 - 32) = a10;
  *(v252 - 24) = v250;
  v253 = v750;
  v254 = *(v749 + 32);
  *(v252 - 16) = v254;
  OUTLINED_FUNCTION_44_10();
  sub_237EF6280();
  v255 = (*(v736 + 8))(v248, v206);
  MEMORY[0x28223BE20](v255);
  OUTLINED_FUNCTION_13_39();
  *(v256 - 32) = v251;
  *(v256 - 24) = v250;
  *(v256 - 16) = v254;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
  OUTLINED_FUNCTION_1_22();
  v258 = v746;
  swift_getWitnessTable();
  v259 = OUTLINED_FUNCTION_36_18();
  sub_237C9339C(v259, v260, v258, v748, v257, v261);
  if (v253)
  {
    v262 = OUTLINED_FUNCTION_29_24();
    v263(v262, v258);
  }

  else
  {
    OUTLINED_FUNCTION_17_40();
    v281(v205, v258);
  }

LABEL_17:
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E14CD0(uint64_t a1, uint64_t a2)
{
  v3 = sub_237EF7E90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  v8 = sub_237EF90F0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  v29 = a1;
  sub_237EF8A60();
  swift_getWitnessTable();
  sub_237EF8E80();
  if (__swift_getEnumTagSinglePayload(v11, 1, v3) == 1)
  {
    (*(v9 + 8))(v11, v8);
    return 1;
  }

  v13 = sub_237EF7E20();
  v26 = *(v4 + 8);
  v27 = v4 + 8;
  result = v26(v11, v3);
  v14 = *(v13 + 16);
  if (!v14)
  {
    goto LABEL_25;
  }

  v24 = v5;
  v15 = v14 != 1;
  v16 = v14 - v15;
  v17 = (v14 - v15) / v14;
  v29 = sub_237EF8920();
  v25 = (v4 + 16);
  v18 = v17 * v14 - v16;
LABEL_6:
  v19 = sub_237EF8A00();
  v20 = v29;
  if (v29 == v19)
  {

    return 1;
  }

  v21 = sub_237EF89D0();
  sub_237EF8960();
  if (v21)
  {
    (*(v4 + 16))(v7, a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20, v3);
  }

  else
  {
    result = sub_237EF93A0();
    if (v24 != 8)
    {
LABEL_26:
      __break(1u);
      return result;
    }

    v28 = result;
    (*v25)(v7, &v28, v3);
    swift_unknownObjectRelease();
  }

  sub_237EF8A40();
  v22 = sub_237EF7E20();
  result = v26(v7, v3);
  if (*(v22 + 16) == v14)
  {
    for (i = 4; ; ++i)
    {
      if (i - v14 == 4)
      {

        goto LABEL_6;
      }

      if (__OFADD__(i - 4, 1))
      {
        break;
      }

      if (v18 + i != 4)
      {
        if ((i - 4) >= *(v13 + 16))
        {
          goto LABEL_24;
        }

        if (*(v22 + 8 * i) != *(v13 + 8 * i))
        {
          goto LABEL_20;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_20:

  return 0;
}

uint64_t sub_237E1508C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_237D5D1B8();
  sub_237EF83B0();
  return __swift_storeEnumTagSinglePayload(a3, 0, 1, a2);
}

uint64_t sub_237E1510C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_237D5D20C();
  sub_237EF83B0();
  return __swift_storeEnumTagSinglePayload(a3, 0, 1, a2);
}

void sub_237E15290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  v45[2] = v21;
  v45[3] = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v45[1] = v28;
  v29 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v31 = v30;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v32);
  v34 = v45 - v33;
  v35 = *(v25 - 8);
  v37 = MEMORY[0x28223BE20](v36);
  v39 = v45 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v34, v27, v29, v37);
  if (__swift_getEnumTagSinglePayload(v34, 1, v25) == 1)
  {
    (*(v31 + 8))(v34, v29);
    v40 = sub_237C84150();
    v41 = OUTLINED_FUNCTION_45_0(&type metadata for PipelineDataError, v40);
    *v42 = 0xD000000000000012;
    *(v42 + 8) = 0x8000000237F179A0;
    *(v42 + 16) = 0;
    *(v42 + 24) = 0;
    *(v42 + 32) = 0;
    swift_willThrow();
    *v23 = v41;
  }

  else
  {
    (*(v35 + 32))(v39, v34, v25);
    sub_237E2A0DC(v25, v25);
    swift_allocObject();
    v43 = sub_237EF8940();
    (*(v35 + 16))(v44, v39, v25);
    sub_237D3C4BC(v43, v25);
    sub_237EF8A60();
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    sub_237EF7E40();
    (*(v35 + 8))(v39, v25);
  }

  OUTLINED_FUNCTION_12_6();
}

void sub_237E1559C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, unint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v18[7] = *a1;
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = sub_237C96710(a7, a5, a6, MEMORY[0x277D83988]);
  sub_237C9339C(a8, v18, v15, a2, MEMORY[0x277D84A98], v16);
  *a9 = v17;
}

uint64_t sub_237E1566C(uint64_t *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_237F03530;
  sub_237EF8260();
  *(v2 + 32) = sub_237EF8A00();
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  return sub_237EF7E40();
}

uint64_t sub_237E1573C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_237EF7E90();
  v7 = sub_237EF90F0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v15 - v10;
  (*(v8 + 16))(v15 - v10, a1, v7, v9);
  if (__swift_getEnumTagSinglePayload(v11, 1, v6) == 1)
  {
    (*(v8 + 8))(v11, v7);
    v12 = 0;
  }

  else
  {
    v13 = sub_237EF7E20();
    (*(*(v6 - 8) + 8))(v11, v6);
    v12 = sub_237C60C7C(v13, a2);
  }

  return v12 & 1;
}

void sub_237E158C4()
{
  OUTLINED_FUNCTION_13_4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v16[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
  OUTLINED_FUNCTION_1();
  v11 = v10;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  v14 = v16 - v13;
  sub_237EF7E90();
  (*(v11 + 16))(v14, v7, v9);
  v15 = MEMORY[0x277CBFD28];
  swift_getWitnessTable();
  sub_237C96710(v1, v5, v3, v15);
  sub_237EF7F30();
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E15A0C(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  sub_237EF7E90();
  v4 = v3;
  swift_getWitnessTable();
  return sub_237EF7F20();
}

uint64_t ColumnConcatenator.debugDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000024, 0x8000000237F00150);
  sub_237EF9670();
  MEMORY[0x2383E0710](0xD00000000000001ALL, 0x8000000237F00180);
  MEMORY[0x2383E0710](v1, v2);
  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return 0;
}

unint64_t *sub_237E15C00(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v49[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v49[0] = a1;
    v3 = *(a1 + 16);
    v47 = a1 + 32;
    v4 = a2 + 56;
    v5 = 0;
    v48 = sub_237EF8260();
    v46 = v3;
LABEL_3:
    if (v5 != v3)
    {
      v6 = (v47 + 16 * v5);
      v8 = *v6;
      v7 = v6[1];
      ++v5;
      sub_237EFA120();
      sub_237EF8260();
      sub_237EF8610();
      v9 = sub_237EFA170();
      v10 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v11 = v9 & v10;
        v12 = (v9 & v10) >> 6;
        v13 = 1 << (v9 & v10);
        if ((v13 & *(v4 + 8 * v12)) == 0)
        {

          v3 = v46;
          goto LABEL_3;
        }

        v14 = (*(v2 + 48) + 16 * v11);
        v15 = *v14 == v8 && v14[1] == v7;
        if (v15 || (sub_237EF9D40() & 1) != 0)
        {
          break;
        }

        v9 = v11 + 1;
      }

      v16 = v5;
      v49[1] = v5;

      OUTLINED_FUNCTION_68_6();
      v19 = v18 >> 6;
      v20 = 8 * (v18 >> 6);
      if (v21 > 0xD)
      {
LABEL_38:

        if (!swift_stdlib_isStackAllocationSafe())
        {
LABEL_41:
          v40 = swift_slowAlloc();
          v41 = sub_237E167E0(v40, v19, (v2 + 56), v19, v2, v11, v49);

          OUTLINED_FUNCTION_105_2();

          return v41;
        }
      }

      v42[0] = v19;
      v42[1] = v42;
      MEMORY[0x28223BE20](v17);
      v30 = OUTLINED_FUNCTION_56_13(v22, v23, v24, v25, v26, v27, v28, v29, v42[0]);
      memcpy(v30, (v2 + 56), v20);
      v31 = *(v11 + 8 * v12) & ~v13;
      v44 = v11;
      *(v11 + 8 * v12) = v31;
      v32 = *(v2 + 16) - 1;
      v11 = v48;
      v46 = *(v48 + 16);
      v19 = v16;
      while (1)
      {
        v43 = v32;
        v45 = v16;
LABEL_16:
        while (2)
        {
          if (v19 == v46)
          {
            v2 = sub_237E168F0(v44, v42[0], v43, v2);
            goto LABEL_33;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v19 >= *(v11 + 16))
          {
            goto LABEL_37;
          }

          v33 = (v47 + 16 * v19);
          v13 = *v33;
          v12 = v33[1];
          ++v19;
          sub_237EFA120();
          sub_237EF8260();
          sub_237EF8610();
          v34 = sub_237EFA170();
          v20 = ~(-1 << *(v2 + 32));
          do
          {
            v35 = v34 & v20;
            if (((1 << (v34 & v20)) & *(v4 + 8 * ((v34 & v20) >> 6))) == 0)
            {

              v11 = v48;
              v16 = v45;
              goto LABEL_16;
            }

            v36 = (*(v2 + 48) + 16 * v35);
            if (*v36 == v13 && v36[1] == v12)
            {
              break;
            }

            v38 = sub_237EF9D40();
            v34 = v35 + 1;
          }

          while ((v38 & 1) == 0);

          OUTLINED_FUNCTION_94_3();
          v11 = v48;
          v16 = v45;
          if (v15)
          {
            continue;
          }

          break;
        }

        v32 = v43 - 1;
        if (__OFSUB__(v43, 1))
        {
          break;
        }

        v16 = v19;
        if (v43 == 1)
        {

          v2 = MEMORY[0x277D84FA0];
          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_33:
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_237E15FC8(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v68 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v59 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = sub_237EF8260();
    v15 = 0;
    v61 = v12;
    v62 = v7;
    v63 = v14;
    if (v11)
    {
LABEL_6:
      v16 = v15;
LABEL_11:
      OUTLINED_FUNCTION_83_5();
      v20 = (*(v18 + 48) + ((v16 << 10) | (16 * v19)));
      v22 = *v20;
      v21 = v20[1];
      sub_237EFA120();
      sub_237EF8260();
      sub_237EF8610();
      v23 = sub_237EFA170();
      v24 = ~(-1 << *(v5 + 32));
      while (1)
      {
        v7 = v23 & v24;
        v4 = (v23 & v24) >> 6;
        v8 = 1 << (v23 & v24);
        if ((v8 & *(v13 + 8 * v4)) == 0)
        {

          v15 = v16;
          goto LABEL_6;
        }

        v25 = (*(v5 + 48) + 16 * v7);
        v26 = *v25 == v22 && v25[1] == v21;
        if (v26 || (sub_237EF9D40() & 1) != 0)
        {
          break;
        }

        v23 = v7 + 1;
      }

      v65 = v59;
      v66 = v16;
      v67 = v11;
      v3 = v62;
      v12 = v63;
      v64[0] = v63;
      v64[1] = v62;

      OUTLINED_FUNCTION_68_6();
      v56 = v28 >> 6;
      v2 = 8 * (v28 >> 6);
      if (v29 > 0xD)
      {
        goto LABEL_47;
      }

      while (1)
      {
        v57 = &v55;
        MEMORY[0x28223BE20](v27);
        v38 = OUTLINED_FUNCTION_56_13(v30, v31, v32, v33, v34, v35, v36, v37, v55);
        memcpy(v38, (v5 + 56), v2);
        v39 = *(v7 + 8 * v4) & ~v8;
        v40 = *(v5 + 16);
        v60 = v7;
        *(v7 + 8 * v4) = v39;
        v41 = v40 - 1;
        v42 = v61;
        while (1)
        {
          v58 = v41;
LABEL_23:
          if (!v11)
          {
            break;
          }

LABEL_28:
          OUTLINED_FUNCTION_83_5();
          v45 = (*(v12 + 48) + ((v16 << 10) | (16 * v44)));
          v2 = *v45;
          v46 = v45[1];
          sub_237EFA120();
          sub_237EF8260();
          sub_237EF8610();
          v47 = sub_237EFA170();
          v48 = ~(-1 << *(v5 + 32));
          do
          {
            v4 = v47 & v48;
            v7 = (v47 & v48) >> 6;
            v8 = 1 << (v47 & v48);
            if ((v8 & *(v13 + 8 * v7)) == 0)
            {

              v3 = v62;
              v12 = v63;
              v42 = v61;
              goto LABEL_23;
            }

            v49 = (*(v5 + 48) + 16 * v4);
            if (*v49 == v2 && v49[1] == v46)
            {
              break;
            }

            v51 = sub_237EF9D40();
            v47 = v4 + 1;
          }

          while ((v51 & 1) == 0);

          OUTLINED_FUNCTION_94_3();
          v3 = v62;
          v12 = v63;
          v42 = v61;
          if (v26)
          {
            goto LABEL_23;
          }

          v41 = v58 - 1;
          if (__OFSUB__(v58, 1))
          {
            __break(1u);
          }

          if (v58 == 1)
          {

            v5 = MEMORY[0x277D84FA0];
            goto LABEL_43;
          }
        }

        while (1)
        {
          v43 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v43 >= v42)
          {
            v5 = sub_237E168F0(v60, v56, v58, v5);
            goto LABEL_43;
          }

          v11 = *(v3 + 8 * v43);
          ++v16;
          if (v11)
          {
            v16 = v43;
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:

        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }
      }

      v53 = swift_slowAlloc();
      v54 = sub_237E16868(v53, v56, (v5 + 56), v56, v5, v7, v64);

      OUTLINED_FUNCTION_105_2();
      v59 = v65;
      v5 = v54;
    }

    else
    {
      v17 = 0;
      while (1)
      {
        v16 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_46;
        }

        if (v16 >= v12)
        {
          break;
        }

        v11 = *(v7 + 8 * v16);
        ++v17;
        if (v11)
        {
          goto LABEL_11;
        }
      }
    }

LABEL_43:
    sub_237C9FE9C();
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v5;
}

unint64_t *sub_237E16448(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  v25 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v8 = a3 + 56;
  v26 = a5;
  while (1)
  {
    v24 = v7;
LABEL_3:
    v9 = a5[1];
    v10 = *(*a5 + 16);
    if (v9 == v10)
    {

      return sub_237E168F0(v25, a2, v24, a3);
    }

    if (v9 >= v10)
    {
      break;
    }

    v11 = *a5 + 16 * v9;
    v13 = *(v11 + 32);
    v12 = *(v11 + 40);
    a5[1] = v9 + 1;
    sub_237EFA120();
    sub_237EF8260();
    sub_237EF8610();
    v14 = sub_237EFA170();
    v15 = ~(-1 << *(a3 + 32));
    do
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = 1 << (v14 & v15);
      if ((v18 & *(v8 + 8 * v17)) == 0)
      {

        a5 = v26;
        goto LABEL_3;
      }

      v19 = (*(a3 + 48) + 16 * v16);
      if (*v19 == v13 && v19[1] == v12)
      {
        break;
      }

      v21 = sub_237EF9D40();
      v14 = v16 + 1;
    }

    while ((v21 & 1) == 0);

    v22 = v25[v17];
    v25[v17] = v22 & ~v18;
    a5 = v26;
    if ((v22 & v18) == 0)
    {
      goto LABEL_3;
    }

    v7 = v24 - 1;
    if (__OFSUB__(v24, 1))
    {
      goto LABEL_20;
    }

    if (v24 == 1)
    {
      return MEMORY[0x277D84FA0];
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t *sub_237E165F4(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    sub_237EFA120();
    sub_237EF8260();
    sub_237EF8610();
    v16 = sub_237EFA170();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        goto LABEL_3;
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 == v15 && v21[1] == v14)
      {
        break;
      }

      v23 = sub_237EF9D40();
      v16 = v18 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = v27[v19];
    v27[v19] = v24 & ~v20;
    if ((v24 & v20) == 0)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_23;
    }

    if (v26 == 1)
    {
      return MEMORY[0x277D84FA0];
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_237E168F0(v27, a2, v26, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}