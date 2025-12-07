uint64_t sub_231D79230()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_4();
  *v3 = v1;
  *v3 = *v2;

  OUTLINED_FUNCTION_90_1();
  if (v0)
  {
  }

  else
  {

    v5 = OUTLINED_FUNCTION_4_18();

    return MEMORY[0x2822009F8](v5, v6, v7);
  }
}

uint64_t sub_231D79378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();

  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_85_4();

  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_37();

  return v18(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_231D79454()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_87_5();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;

  OUTLINED_FUNCTION_223();
  if (v0)
  {
  }

  else
  {

    v5 = OUTLINED_FUNCTION_143_2();

    return MEMORY[0x2822009F8](v5, v6, v7);
  }
}

uint64_t sub_231D79B8C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_12_0();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

void sub_231D79CAC()
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  v1 = *(v0 + 528);
  *(v0 + 16) = v1;
  v2 = v0[259];
  v3 = v0[258];
  v4 = v0[248];
  v5 = v0[243];
  v6 = v0[229];
  memcpy(v0 + 17, v0 + 529, 0x7FuLL);
  v7 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isUrgent;
  OUTLINED_FUNCTION_4_12(v6 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isUrgent, (v0 + 212));
  *(v6 + v7) = v1;
  v2(v4, v3, v5);
  OUTLINED_FUNCTION_70();
  swift_storeEnumTagMultiPayload();
  memcpy(v0 + 18, v0 + 2, 0x80uLL);
  sub_231D8C62C();
  OUTLINED_FUNCTION_4_19();
  sub_231DA1DDC();

  if (sub_231E11A20())
  {
    v8 = v0[262];
    v9 = v0[261];
    v10 = v0[258];
    v11 = v0[231];
    v12 = v0[229];
    v13 = swift_task_alloc();
    v0[283] = v13;
    v13[2] = v11;
    v13[3] = v0 + 2;
    v13[4] = v12;
    v13[5] = v10;
    v13[6] = v9;
    v13[7] = v8;
    v14 = swift_task_alloc();
    v0[284] = v14;
    *v14 = v0;
    OUTLINED_FUNCTION_171_1(v14);
    OUTLINED_FUNCTION_13_0();
LABEL_28:
    OUTLINED_FUNCTION_35();

    sub_231DDB61C();
    return;
  }

  v15 = *(v0[274] + 16);
  if (!v15)
  {
    v17 = MEMORY[0x277D84F90];
LABEL_18:
    v35 = v17[2];
    if (v35)
    {
      OUTLINED_FUNCTION_79();
      v37 = v17 + v36;
      v59 = *(v38 + 56);
      v60 = v39;
      v40 = MEMORY[0x277D84F90];
      do
      {
        v41 = OUTLINED_FUNCTION_294_0();
        v60(v41);
        v42 = sub_231E107A0();
        v44 = v43;
        v45 = OUTLINED_FUNCTION_203_0();
        v46(v45);
        if (v44)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = OUTLINED_FUNCTION_0_1();
            v40 = sub_231CE0B9C(v49, v50, v51, v40);
          }

          v47 = *(v40 + 2);
          if (v47 >= *(v40 + 3) >> 1)
          {
            OUTLINED_FUNCTION_389();
            v40 = sub_231CE0B9C(v52, v53, v54, v40);
          }

          *(v40 + 2) = v47 + 1;
          v48 = &v40[16 * v47];
          *(v48 + 4) = v42;
          *(v48 + 5) = v44;
        }

        v37 += v59;
        --v35;
      }

      while (v35);
    }

    v55 = OUTLINED_FUNCTION_492();
    OUTLINED_FUNCTION_303(v55);
    swift_task_alloc();
    OUTLINED_FUNCTION_58_0();
    v0[287] = v56;
    *v56 = v57;
    OUTLINED_FUNCTION_171_1(v56);
    OUTLINED_FUNCTION_187();
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_296_0();
  v61 = v16;
  v17 = MEMORY[0x277D84F90];
  while (1)
  {
    v18 = OUTLINED_FUNCTION_140_0();
    v19(v18);
    v20 = sub_231E10920();
    v21 = OUTLINED_FUNCTION_301_0();
    v22(v21);
    v23 = *(v20 + 16);
    v24 = v17[2];
    if (__OFADD__(v24, v23))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v24 + v23 > v17[3] >> 1)
    {
      OUTLINED_FUNCTION_248_0();
      v17 = sub_231D9F7F4(v25, v26, v27, v28, &qword_27DD74BC0, &qword_231E1C578, v29, v30);
    }

    if (*(v20 + 16))
    {
      OUTLINED_FUNCTION_460();
      if (v31 != v32)
      {
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_279_0();

      if (v23)
      {
        v33 = v17[2];
        v32 = __OFADD__(v33, v23);
        v34 = v33 + v23;
        if (v32)
        {
          goto LABEL_34;
        }

        v17[2] = v34;
      }
    }

    else
    {

      if (v23)
      {
        goto LABEL_32;
      }
    }

    v2 = (v2 + v61);
    if (!--v15)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_231D7A0F0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v8 = OUTLINED_FUNCTION_4_18();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_231D7A220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_178((v16 + 656));
  sub_231CD2C1C(v16 + 656);

  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_85_4();

  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_37();

  return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_231D7A31C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_4();
  *v3 = v1;
  *v3 = *v2;

  OUTLINED_FUNCTION_90_1();
  if (v0)
  {
  }

  else
  {

    v5 = OUTLINED_FUNCTION_4_18();

    return MEMORY[0x2822009F8](v5, v6, v7);
  }
}

uint64_t sub_231D7AA00()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v8 = OUTLINED_FUNCTION_4_18();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_231D7AB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();
  sub_231CBA16C(*(v16 + 2304), *(v16 + 2312), *(v16 + 1786));
  OUTLINED_FUNCTION_178((v16 + 1040));
  sub_231CD2C1C(v16 + 1040);

  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_85_4();

  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_37();

  return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_231D7AC3C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231D7AD48()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_0_31();
  sub_231DA29CC(v6, v7);
  v8 = v0[294];
  v9 = v0[262];
  v10 = OUTLINED_FUNCTION_364();
  v0[300] = v10;
  v10[2] = v4;
  v10[3] = v3;
  v10[4] = v0 + 2;
  v10[5] = v5;
  v10[6] = v8;
  v10[7] = v2;
  v10[8] = v1;
  v10[9] = v9;
  v11 = swift_task_alloc();
  v0[301] = v11;
  *v11 = v0;
  OUTLINED_FUNCTION_171_1(v11);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_44();

  return sub_231DDB61C();
}

uint64_t sub_231D7AE30()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 2392) = v0;

  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231D7AF5C()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57_0();
  v5 = v0[293];
  v6 = v0[239];
  v7 = v0[236];
  v8 = v0[229];
  OUTLINED_FUNCTION_0_31();
  sub_231DA29CC(v9, v6);
  v10 = v8 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_depth;
  OUTLINED_FUNCTION_4_12(v10, (v0 + 194));
  *v10 = v5;
  *(v10 + 8) = 0;
  OUTLINED_FUNCTION_503();
  v11 = sub_231E0F5F0();
  if (OUTLINED_FUNCTION_161_1(v11) == 1)
  {
    sub_231CC154C(v0[235], &qword_27DD74470, &qword_231E17120);
  }

  else
  {
    v1 = v0[233];
    v7 = v0[232];
    sub_231E0F5C0();
    OUTLINED_FUNCTION_56_6();
    v12 = OUTLINED_FUNCTION_140_0();
    v13(v12);
    sub_231E0F5D0();
    v14 = OUTLINED_FUNCTION_40_7();
    v15(v14);
  }

  OUTLINED_FUNCTION_4_12(v0[229] + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_summaryTopLineLength, (v0 + 197));
  OUTLINED_FUNCTION_449();
  v16 = v0[294];
  v17 = v0[262];
  v18 = OUTLINED_FUNCTION_364();
  v0[300] = v18;
  v18[2] = v3;
  v18[3] = v2;
  v18[4] = v0 + 2;
  v18[5] = v4;
  v18[6] = v16;
  v18[7] = v1;
  v18[8] = v7;
  v18[9] = v17;
  v19 = swift_task_alloc();
  v0[301] = v19;
  *v19 = v0;
  OUTLINED_FUNCTION_171_1(v19);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_44();

  return sub_231DDB61C();
}

uint64_t sub_231D7B14C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_4();
  *v3 = v1;
  *v3 = *v2;

  OUTLINED_FUNCTION_90_1();
  if (v0)
  {
  }

  else
  {

    OUTLINED_FUNCTION_137_0();

    return MEMORY[0x2822009F8](v5, v6, v7);
  }
}

uint64_t sub_231D7B478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_47_0();
  v11 = v10[259];
  v12 = OUTLINED_FUNCTION_178(v10 + 34);
  OUTLINED_FUNCTION_125_1(v12, (v10 + 191));
  sub_231E10920();
  swift_endAccess();
  sub_231D147C8();
  v10[302] = v13;

  v14 = OUTLINED_FUNCTION_59_0();
  v11(v14);
  OUTLINED_FUNCTION_25();
  swift_storeEnumTagMultiPayload();
  v15 = swift_task_alloc();
  v10[303] = v15;
  *v15 = v10;
  v15[1] = sub_231D7B598;
  OUTLINED_FUNCTION_27_1(v10[299]);
  OUTLINED_FUNCTION_227_0();

  return sub_231D8FA3C(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_231D7B598()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  *(v6 + 1787) = v5;

  OUTLINED_FUNCTION_4_19();
  sub_231DA1DDC();
  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231D7B6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_108_1();
  OUTLINED_FUNCTION_207_0();

  OUTLINED_FUNCTION_178((v18 + 912));
  sub_231CD2C1C(v18 + 912);

  OUTLINED_FUNCTION_331();
  HIDWORD(a15) = *(v18 + 1787);

  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_107_1();

  return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_231D7B818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12[0] = a6;
  v12[1] = a7;

  MEMORY[0x23837CC20](46, 0xE100000000000000);
  v8 = OUTLINED_FUNCTION_250_0();
  MEMORY[0x23837CC20](v8);
  v9 = *(v7 + 32);
  os_unfair_lock_lock(v9 + 8);
  sub_231DA3B48(v12, &v9[4]);
  os_unfair_lock_unlock(v9 + 8);
  v10 = v12[0];

  return v10;
}

void sub_231D7B8FC()
{
  OUTLINED_FUNCTION_118();
  v44 = v2;
  v45 = v0;
  v43 = v3;
  OUTLINED_FUNCTION_95_5();
  v41 = sub_231E10BE0();
  OUTLINED_FUNCTION_24();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  v40 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  OUTLINED_FUNCTION_47(v9);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = sub_231E119F0();
  OUTLINED_FUNCTION_24();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_63_6();
  v37 = sub_231D7603C();
  v38 = v17;
  v39 = v0;
  v46 = sub_231E10B50();
  v18 = OUTLINED_FUNCTION_59_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  OUTLINED_FUNCTION_219_0();
  OUTLINED_FUNCTION_94_5();
  sub_231DA21B0(v20, v21, v22, v23);
  v35 = sub_231E11580();
  v36 = v24;

  sub_231CC8990(v12);
  OUTLINED_FUNCTION_28_2(v12);
  v42 = v15;
  v34 = v13;
  if (v25)
  {
    sub_231D1221C();
    OUTLINED_FUNCTION_28_2(v12);
    if (!v25)
    {
      sub_231CC154C(v12, &qword_27DD75180, &qword_231E13690);
    }
  }

  else
  {
    OUTLINED_FUNCTION_115_5();
    v26();
  }

  OUTLINED_FUNCTION_246_0();
  v27 = v40;
  v28 = v41;
  v29(v40, v39, v41);
  v30 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v31 = swift_allocObject();
  v32 = v45;
  *(v31 + 16) = v44;
  *(v31 + 24) = v32;
  (*(v5 + 32))(v31 + v30, v27, v28);
  *(v31 + ((v7 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = v43;

  sub_231D7B818(v37, v38, v35, v36, v1, 0xD000000000000012, 0x8000000231E36540);

  (*(v42 + 8))(v1, v34);
  OUTLINED_FUNCTION_113();
}

uint64_t sub_231D7BC34()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_103_3(v1, v2, v3, v4);
  v5 = sub_231E10BE0();
  v0[6] = v5;
  OUTLINED_FUNCTION_6(v5);
  v0[7] = v6;
  v0[8] = *(v7 + 64);
  v0[9] = OUTLINED_FUNCTION_55();
  v8 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231D7BCDC()
{
  OUTLINED_FUNCTION_274_0();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_89_5();
  sub_231D11F64();
  v3 = OUTLINED_FUNCTION_50_6();
  v4(v3);
  OUTLINED_FUNCTION_49_9();
  v5 = OUTLINED_FUNCTION_435();
  v6 = OUTLINED_FUNCTION_38_9(v5);
  v7(v6);
  *(v0 + v2) = v1;
  OUTLINED_FUNCTION_220_0();
  swift_retain_n();

  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_290_0(v8);
  *v9 = v10;
  v9[1] = sub_231DA48C8;
  OUTLINED_FUNCTION_64_5(v9, &unk_231E1E4D8);
  OUTLINED_FUNCTION_273_0();

  return sub_231D6DB48(v11, v12, v13, v14, v15);
}

uint64_t sub_231D7BDEC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_102_4(v1, v2, v3, v4);
  v5 = sub_231E0F950();
  v0[9] = v5;
  OUTLINED_FUNCTION_6(v5);
  v0[10] = v6;
  v7 = OUTLINED_FUNCTION_55();
  v8 = OUTLINED_FUNCTION_434(v7);
  v0[12] = v8;
  OUTLINED_FUNCTION_6(v8);
  v0[13] = v9;
  v0[14] = OUTLINED_FUNCTION_55();
  v10 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231D7BED0()
{
  OUTLINED_FUNCTION_29();
  v1 = OUTLINED_FUNCTION_277_0();
  OUTLINED_FUNCTION_65_6(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 128) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_325(v2);
  OUTLINED_FUNCTION_62_4();

  return sub_231DDB61C();
}

uint64_t sub_231D7BF84()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_61_6(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_381(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_48_8(v2);

  return sub_231D7C010();
}

uint64_t sub_231D7C010()
{
  OUTLINED_FUNCTION_18();
  v1[94] = v0;
  v1[93] = v2;
  v1[92] = v3;
  v1[91] = v4;
  v5 = type metadata accessor for EntityKind(0);
  v1[95] = v5;
  OUTLINED_FUNCTION_47(v5);
  v1[96] = OUTLINED_FUNCTION_55();
  v6 = sub_231E0F5E0();
  v1[97] = v6;
  OUTLINED_FUNCTION_6(v6);
  v1[98] = v7;
  v1[99] = OUTLINED_FUNCTION_55();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74470, &qword_231E17120);
  OUTLINED_FUNCTION_47(v8);
  v1[100] = OUTLINED_FUNCTION_69();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v1[104] = swift_task_alloc();
  v1[105] = swift_task_alloc();
  v1[106] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BE0, &qword_231E1CC20);
  OUTLINED_FUNCTION_47(v9);
  v1[107] = OUTLINED_FUNCTION_55();
  v10 = type metadata accessor for SummarizerResult(0);
  v1[108] = v10;
  OUTLINED_FUNCTION_47(v10);
  v1[109] = OUTLINED_FUNCTION_69();
  v1[110] = swift_task_alloc();
  v1[111] = swift_task_alloc();
  v1[112] = swift_task_alloc();
  v11 = sub_231E107F0();
  v1[113] = v11;
  OUTLINED_FUNCTION_6(v11);
  v1[114] = v12;
  v1[115] = OUTLINED_FUNCTION_55();
  v13 = sub_231E10A30();
  v1[116] = v13;
  OUTLINED_FUNCTION_6(v13);
  v1[117] = v14;
  v1[118] = OUTLINED_FUNCTION_69();
  v1[119] = swift_task_alloc();
  v1[120] = swift_task_alloc();
  v1[121] = swift_task_alloc();
  v1[122] = swift_task_alloc();
  v1[123] = swift_task_alloc();
  v1[124] = swift_task_alloc();
  v15 = sub_231E10E30();
  v1[125] = v15;
  OUTLINED_FUNCTION_6(v15);
  v1[126] = v16;
  v1[127] = OUTLINED_FUNCTION_69();
  v1[128] = swift_task_alloc();
  v1[129] = swift_task_alloc();
  v1[130] = swift_task_alloc();
  v1[131] = swift_task_alloc();
  v17 = sub_231E11E70();
  v1[132] = v17;
  OUTLINED_FUNCTION_6(v17);
  v1[133] = v18;
  v1[134] = OUTLINED_FUNCTION_55();
  v19 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_231D7C374()
{
  OUTLINED_FUNCTION_29();
  v0[135] = sub_231E10BC0();
  v0[136] = v1;
  sub_231E12190();
  v2 = OUTLINED_FUNCTION_488();
  v0[137] = v2;
  *v2 = v0;
  v2[1] = sub_231D7C43C;
  OUTLINED_FUNCTION_27_1(1000000000000000000);
  OUTLINED_FUNCTION_81();

  return v4();
}

uint64_t sub_231D7C43C()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_94_1();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;

  OUTLINED_FUNCTION_90_1();
  if (v0)
  {
  }

  v4 = OUTLINED_FUNCTION_25();
  v5(v4);
  OUTLINED_FUNCTION_137_0();
  OUTLINED_FUNCTION_97_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231D7C5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_34_9();
  OUTLINED_FUNCTION_319();
  if (sub_231E11A20())
  {

    OUTLINED_FUNCTION_17_8();

    OUTLINED_FUNCTION_18_6();
    OUTLINED_FUNCTION_13_12();

    return v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
  }

  else
  {
    v42 = v30[126];
    v30[138] = sub_231CB4EEC();
    v30[139] = *(v42 + 16);
    OUTLINED_FUNCTION_322();
    v30[140] = v43;
    v44 = OUTLINED_FUNCTION_82();
    v45(v44);

    v46 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_116_0();
    v47 = OUTLINED_FUNCTION_91_0();
    v48 = v30[126];
    if (v47)
    {
      OUTLINED_FUNCTION_9_1();
      v49 = OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_292_0(v49);
      *v31 = 136446210;
      v50 = sub_231DDB1E8();
      OUTLINED_FUNCTION_344(v50, v51);
      OUTLINED_FUNCTION_87_0();
      *(v31 + 4) = v32;
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v52, v53, v54, v55, v56, 0xCu);
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_11();
    }

    v57 = *(v48 + 8);
    v58 = OUTLINED_FUNCTION_33();
    v57(v58);
    v30[141] = v57;
    v59 = v30[136];
    v60 = v30[135];
    v61 = v30[94];
    v62 = v30[91];
    v63 = swift_task_alloc();
    v30[142] = v63;
    v63[2] = v61;
    v63[3] = v60;
    v63[4] = v59;
    v63[5] = v62;
    swift_task_alloc();
    OUTLINED_FUNCTION_58_0();
    v30[143] = v64;
    *v64 = v65;
    v64[1] = sub_231D7C8B0;
    OUTLINED_FUNCTION_13_12();

    return sub_231DDB61C();
  }
}

void sub_231D7C8B0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_231D7C9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_34_9();
  OUTLINED_FUNCTION_319();
  if (*(v30 + 713))
  {

    OUTLINED_FUNCTION_22_8();
    OUTLINED_FUNCTION_158_1();

    OUTLINED_FUNCTION_18_6();
    OUTLINED_FUNCTION_13_12();

    return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
  }

  else
  {
    v40 = *(v30 + 752);
    v41 = *(v30 + 728);
    v42 = swift_task_alloc();
    *(v30 + 1152) = v42;
    *(v42 + 16) = v40;
    *(v42 + 24) = v41;
    v43 = swift_task_alloc();
    *(v30 + 1160) = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75100, &qword_231E1E520);
    OUTLINED_FUNCTION_136_1();
    *v43 = v44;
    v43[1] = sub_231D7CBD4;
    OUTLINED_FUNCTION_13_12();

    return sub_231DDB61C();
  }
}

void sub_231D7CBD4()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v7, v8, v9);
  }
}

void sub_231D7CCEC()
{
  v2 = v1[90];
  v1[146] = v2;
  v3 = *(v2 + 16);
  v173 = v2;
  v175 = v3;
  if (v3)
  {
    OUTLINED_FUNCTION_79();
    v5 = v2 + v4;
    v182 = *(v6 + 56);
    v183 = v7;
    v8 = MEMORY[0x277D84F90];
    v9 = v5;
    do
    {
      v10 = v1[124];
      v11 = OUTLINED_FUNCTION_37_0();
      v183(v11);
      sub_231E109C0();
      OUTLINED_FUNCTION_14_9();
      v12 = OUTLINED_FUNCTION_70();
      v177 = v13;
      v13(v12);
      if (v0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = OUTLINED_FUNCTION_0_1();
          v8 = sub_231CE0B9C(v18, v19, v20, v8);
        }

        v15 = *(v8 + 2);
        v14 = *(v8 + 3);
        v16 = v8;
        if (v15 >= v14 >> 1)
        {
          v21 = OUTLINED_FUNCTION_2_12(v14);
          v16 = sub_231CE0B9C(v21, v15 + 1, 1, v22);
        }

        v8 = v16;
        *(v16 + 2) = v15 + 1;
        v17 = &v16[16 * v15];
        *(v17 + 4) = v10;
        *(v17 + 5) = v0;
      }

      v9 += v182;
      --v3;
    }

    while (v3);
    v23 = MEMORY[0x277D84F90];
    v24 = v5;
    v25 = v175;
    do
    {
      v26 = v1[123];
      v27 = OUTLINED_FUNCTION_37_0();
      v183(v27);
      sub_231E109F0();
      OUTLINED_FUNCTION_14_9();
      v28 = OUTLINED_FUNCTION_70();
      v177(v28);
      if (v0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = OUTLINED_FUNCTION_0_1();
          v23 = sub_231CE0B9C(v33, v34, v35, v23);
        }

        v30 = *(v23 + 2);
        v29 = *(v23 + 3);
        v31 = v23;
        if (v30 >= v29 >> 1)
        {
          v36 = OUTLINED_FUNCTION_2_12(v29);
          v31 = sub_231CE0B9C(v36, v30 + 1, 1, v37);
        }

        v23 = v31;
        *(v31 + 2) = v30 + 1;
        v32 = &v31[16 * v30];
        *(v32 + 4) = v26;
        *(v32 + 5) = v0;
      }

      v24 += v182;
      --v25;
    }

    while (v25);
    v38 = MEMORY[0x277D84F90];
    v39 = v175;
    do
    {
      v40 = v1[122];
      (v183)(v40, v5, v1[116]);
      sub_231E109B0();
      OUTLINED_FUNCTION_14_9();
      v41 = OUTLINED_FUNCTION_33();
      v177(v41);
      if (v0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = OUTLINED_FUNCTION_0_1();
          v38 = sub_231CE0B9C(v45, v46, v47, v38);
        }

        v43 = *(v38 + 2);
        v42 = *(v38 + 3);
        if (v43 >= v42 >> 1)
        {
          v48 = OUTLINED_FUNCTION_2_12(v42);
          v38 = sub_231CE0B9C(v48, v43 + 1, 1, v38);
        }

        *(v38 + 2) = v43 + 1;
        v44 = &v38[16 * v43];
        *(v44 + 4) = v40;
        *(v44 + 5) = v0;
      }

      v5 += v182;
      --v39;
    }

    while (v39);
    v2 = v173;
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
    v8 = MEMORY[0x277D84F90];
    v38 = MEMORY[0x277D84F90];
  }

  v49 = 0;
  v1[149] = v38;
  v170 = v23;
  v171 = v8;
  v1[148] = v8;
  v1[147] = v23;
  v50 = v1[117];
  v184 = (v50 + 8);
  v51 = MEMORY[0x277D84F90];
  while (1)
  {
    v1[150] = v51;
    if (v175 == v49)
    {
      break;
    }

    if (v49 >= *(v2 + 16))
    {
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
      return;
    }

    v52 = v1[121];
    v53 = v1[116];
    OUTLINED_FUNCTION_79();
    (*(v50 + 16))(v52, v2 + v54 + *(v50 + 72) * v49, v53);
    v55 = sub_231E10920();
    v56 = OUTLINED_FUNCTION_25();
    v57(v56);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v60 = OUTLINED_FUNCTION_0_1();
      v51 = sub_231D9FA00(v60, v61, v62, v51);
    }

    v59 = v51[2];
    v58 = v51[3];
    v0 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      v63 = OUTLINED_FUNCTION_2_12(v58);
      v51 = sub_231D9FA00(v63, v59 + 1, 1, v51);
    }

    v51[2] = v0;
    v51[v59 + 4] = v55;
    ++v49;
  }

  v64 = 0;
  v65 = v1[114];
  v66 = v51[2];
  v67 = MEMORY[0x277D84F90];
  v174 = v51 + 4;
  v176 = v51;
  v172 = v38;
  while (v66 != v64)
  {
    if (v64 >= v51[2])
    {
      goto LABEL_100;
    }

    v0 = v174[v64];
    v68 = *(v0 + 16);
    v69 = v67[2];
    v70 = v69 + v68;
    if (__OFADD__(v69, v68))
    {
      goto LABEL_101;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v70 > v67[3] >> 1)
    {
      if (v69 <= v70)
      {
        v72 = v69 + v68;
      }

      else
      {
        v72 = v69;
      }

      v67 = sub_231D9F7F4(isUniquelyReferenced_nonNull_native, v72, 1, v67, &qword_27DD74BC0, &qword_231E1C578, MEMORY[0x277D423C8], MEMORY[0x277D423C8]);
    }

    if (*(v0 + 16))
    {
      if ((v67[3] >> 1) - v67[2] < v68)
      {
        goto LABEL_103;
      }

      swift_arrayInitWithCopy();

      if (v68)
      {
        v73 = v67[2];
        v74 = __OFADD__(v73, v68);
        v75 = v73 + v68;
        if (v74)
        {
          goto LABEL_104;
        }

        v67[2] = v75;
      }
    }

    else
    {

      if (v68)
      {
        goto LABEL_102;
      }
    }

    ++v64;
  }

  v76 = v67[2];
  if (v76)
  {
    OUTLINED_FUNCTION_79();
    v78 = v67 + v77;
    v178 = *(v79 + 16);
    v180 = *(v65 + 72);
    v80 = MEMORY[0x277D84F90];
    do
    {
      v81 = v1[115];
      v65 = v1[113];
      v178(v81, v78, v65);
      sub_231E107A0();
      OUTLINED_FUNCTION_14_9();
      v82 = OUTLINED_FUNCTION_33();
      v83(v82);
      if (v0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v87 = OUTLINED_FUNCTION_0_1();
          v80 = sub_231CE0B9C(v87, v88, v89, v80);
        }

        v65 = *(v80 + 2);
        v84 = *(v80 + 3);
        v85 = v80;
        if (v65 >= v84 >> 1)
        {
          v90 = OUTLINED_FUNCTION_2_12(v84);
          v85 = sub_231CE0B9C(v90, v65 + 1, 1, v91);
        }

        v80 = v85;
        *(v85 + 2) = v65 + 1;
        v86 = &v85[16 * v65];
        *(v86 + 4) = v81;
        *(v86 + 5) = v0;
      }

      v78 += v180;
      --v76;
    }

    while (v76);
  }

  else
  {

    v80 = MEMORY[0x277D84F90];
  }

  v169 = v80;
  v1[151] = v80;
  v93 = v1[92];
  v94 = v173;
  v95 = *(v173 + 16);
  v1[152] = v95;
  v96 = v93 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_depth;
  OUTLINED_FUNCTION_51(v92, (v1 + 54));
  *v96 = v95;
  *(v96 + 8) = 0;
  if (v95)
  {
    v187 = MEMORY[0x277D84F90];
    v97 = OUTLINED_FUNCTION_298_0();
    sub_231D1C82C(v97, v95, 0);
    v98 = v187;
    OUTLINED_FUNCTION_79();
    v100 = v173 + v99;
    v181 = *(v101 + 16);
    v102 = v173 + v99;
    v103 = v95;
    do
    {
      v104 = OUTLINED_FUNCTION_258();
      v181(v104);
      sub_231E109C0();
      if (v105)
      {
        sub_231E116F0();
        OUTLINED_FUNCTION_335();
      }

      v179 = *v184;
      (*v184)(v1[120], v1[116]);
      OUTLINED_FUNCTION_468();
      if (v107)
      {
        OUTLINED_FUNCTION_107_6(v106);
        OUTLINED_FUNCTION_393();
        sub_231D1C82C(v109, v110, v111);
        v98 = v187;
      }

      OUTLINED_FUNCTION_467();
      v102 += v108;
      --v103;
    }

    while (v103);
    v65 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_titleLengths;
    OUTLINED_FUNCTION_4_12(v1[92] + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_titleLengths, (v1 + 57));
    sub_231D90C48(v98);
    v188 = MEMORY[0x277D84F90];
    v112 = OUTLINED_FUNCTION_298_0();
    sub_231D1C82C(v112, v95, 0);
    v113 = v188;
    v114 = v172;
    v94 = v173;
    do
    {
      v115 = OUTLINED_FUNCTION_48();
      v181(v115);
      sub_231E109F0();
      if (v116)
      {
        sub_231E116F0();
        OUTLINED_FUNCTION_335();
      }

      else
      {
        v65 = 0;
      }

      v179(v1[119], v1[116]);
      OUTLINED_FUNCTION_468();
      if (v107)
      {
        OUTLINED_FUNCTION_107_6(v117);
        OUTLINED_FUNCTION_393();
        sub_231D1C82C(v119, v120, v121);
        v113 = v188;
      }

      OUTLINED_FUNCTION_467();
      v100 += v118;
      --v95;
    }

    while (v95);
  }

  else
  {
    OUTLINED_FUNCTION_4_12(v1[92] + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_titleLengths, (v1 + 57));
    v113 = MEMORY[0x277D84F90];
    sub_231D90C48(MEMORY[0x277D84F90]);
    v114 = v172;
  }

  OUTLINED_FUNCTION_4_12(v1[92] + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_subtitleLengths, (v1 + 60));
  sub_231D90C48(v113);
  v122 = *(v114 + 2);
  v123 = MEMORY[0x277D84F90];
  if (v122)
  {
    v189 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_298_0();
    OUTLINED_FUNCTION_473();
    sub_231D1C82C(v124, v125, v126);
    v123 = v189;
    v127 = v114 + 40;
    do
    {

      OUTLINED_FUNCTION_181();
      v65 = sub_231E116F0();

      v129 = *(v189 + 16);
      v128 = *(v189 + 24);
      if (v129 >= v128 >> 1)
      {
        v130 = OUTLINED_FUNCTION_107_6(v128);
        sub_231D1C82C(v130, v129 + 1, 1);
      }

      *(v189 + 16) = v129 + 1;
      *(v189 + 8 * v129 + 32) = v65;
      v127 += 16;
      --v122;
    }

    while (v122);
  }

  OUTLINED_FUNCTION_4_12(OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_bodyLengths + v1[92], (v1 + 63));
  sub_231D90C48(v123);
  v131 = v174;
  v132 = v176[2];
  v133 = MEMORY[0x277D84F90];
  if (v132)
  {
    v190 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_298_0();
    OUTLINED_FUNCTION_473();
    sub_231D1C82C(v134, v135, v136);
    v133 = v190;
    do
    {

      sub_231D14A1C();
      OUTLINED_FUNCTION_335();
      v138 = *(v190 + 16);
      v137 = *(v190 + 24);
      if (v138 >= v137 >> 1)
      {
        OUTLINED_FUNCTION_107_6(v137);
        OUTLINED_FUNCTION_291();
        sub_231D1C82C(v139, v140, v141);
      }

      *(v190 + 16) = v138 + 1;
      *(v190 + 8 * v138 + 32) = v65;
      ++v131;
      --v132;
    }

    while (v132);
  }

  OUTLINED_FUNCTION_4_12(v1[92] + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_captionLengths, (v1 + 66));
  sub_231D90C48(v133);
  sub_231E10BD0();
  if (v142)
  {
    sub_231DD2524();
    v144 = v143;
  }

  else
  {
    v144 = 12;
  }

  v145 = v1[139];
  v146 = v1[125];
  v147 = v1[92];
  v148 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_sectionId;
  OUTLINED_FUNCTION_4_12(v147 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_sectionId, (v1 + 69));
  *(v147 + v148) = v144;
  v149 = COERCE_DOUBLE(sub_231D90DE8());
  v150 = v147 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_proportionCommunicationNotifications;
  OUTLINED_FUNCTION_4_12(v147 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_proportionCommunicationNotifications, (v1 + 72));
  *v150 = v149;
  *(v150 + 8) = 0;
  v151 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isCommunicationNotification;
  OUTLINED_FUNCTION_4_12(v147 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isCommunicationNotification, (v1 + 75));
  *(v147 + v151) = v149 > 0.0;
  v152 = OUTLINED_FUNCTION_18_0();
  v145(v152);
  OUTLINED_FUNCTION_464();
  swift_bridgeObjectRetain_n();

  v153 = sub_231E10E10();
  v154 = sub_231E11AF0();

  v155 = os_log_type_enabled(v153, v154);
  v156 = v1[141];
  v157 = v1[130];
  v158 = v1[125];
  if (v155)
  {
    v186 = v1[141];
    v185 = v1[130];
    v159 = OUTLINED_FUNCTION_98_0();
    v191 = OUTLINED_FUNCTION_67();
    *v159 = 136446466;
    v160 = sub_231DDB1E8();
    OUTLINED_FUNCTION_344(v160, v161);
    OUTLINED_FUNCTION_264_0();

    *(v159 + 4) = v146;
    *(v159 + 12) = 2048;
    v162 = *(v94 + 16);

    *(v159 + 14) = v162;

    _os_log_impl(&dword_231CAE000, v153, v154, "%{public}s Fetched %ld notifications for stack", v159, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v191);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    v186(v185, v158);
  }

  else
  {
    OUTLINED_FUNCTION_464();
    swift_bridgeObjectRelease_n();

    v156(v157, v158);
  }

  v163 = v1[94];
  v164 = v1[93];
  v165 = v1[91];
  v166 = swift_task_alloc();
  v1[153] = v166;
  v166[2] = v165;
  v166[3] = v94;
  v166[4] = v171;
  v166[5] = v170;
  v166[6] = v172;
  v166[7] = v169;
  v166[8] = v163;
  v166[9] = v164;
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  v1[154] = v167;
  *v167 = v168;
  v167[1] = sub_231D7D9B0;

  sub_231DDB61C();
}

void sub_231D7D9B0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_231D7DAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_34_9();
  OUTLINED_FUNCTION_319();
  v33 = *(v30 + 696);
  *(v30 + 1240) = v33;
  v34 = *(v30 + 704);
  *(v30 + 1248) = v34;
  v35 = *(v30 + 712);
  *(v30 + 714) = v35;
  if (v35 != 255)
  {
    v122 = v33;
    v120 = *(v30 + 1112);
    v119 = *(v30 + 1104);
    v36 = *(v30 + 1032);
    v118 = *(v30 + 1000);

    v37 = v122;

    v120(v36, v119, v118);

    sub_231D26064(v122, v34, v35);
    v38 = sub_231E10E10();
    sub_231E11AF0();

    v121 = v34;
    v39 = v34;
    v40 = v35;
    v41 = OUTLINED_FUNCTION_392(v122, v39, v35);
    v42 = *(v30 + 1128);
    v43 = *(v30 + 1032);
    v44 = *(v30 + 1000);
    if (v41)
    {
      OUTLINED_FUNCTION_98_0();
      OUTLINED_FUNCTION_278_0();
      *v122 = 136446466;
      v45 = sub_231DDB1E8();
      OUTLINED_FUNCTION_344(v45, v46);
      OUTLINED_FUNCTION_399();

      *(v122 + 4) = v43;
      OUTLINED_FUNCTION_385();
      sub_231CFFD6C(v122, v121, v40);
      OUTLINED_FUNCTION_344(v47, v48);
      OUTLINED_FUNCTION_399();

      *(v122 + 14) = v43;
      OUTLINED_FUNCTION_174_1(&dword_231CAE000, v49, v50, "%{public}s Ineligible for summarization (%{public}s)");
      OUTLINED_FUNCTION_281_0();
      OUTLINED_FUNCTION_11();
      v37 = v122;
      OUTLINED_FUNCTION_30();
    }

    v51 = v42(v43, v44);
    v61 = *(v30 + 752);
    v62 = *(v30 + 736);
    v123 = *(v30 + 728);
    v63 = v62 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_ineligibleForSummarizationReason;
    OUTLINED_FUNCTION_51(v51, v30 + 624);
    *v63 = v37;
    *(v63 + 8) = v121;
    v64 = *(v63 + 16);
    *(v63 + 16) = v40;
    sub_231CC3500(v37, v121, v40);
    v65 = OUTLINED_FUNCTION_25();
    sub_231CBA16C(v65, v66, v64);
    v67 = swift_task_alloc();
    *(v30 + 1256) = v67;
    *(v67 + 16) = v61;
    *(v67 + 24) = v37;
    *(v67 + 32) = v121;
    *(v67 + 40) = v40;
    *(v67 + 48) = v62;
    *(v67 + 56) = v123;
    v68 = swift_task_alloc();
    *(v30 + 1264) = v68;
    *v68 = v30;
    v68[1] = sub_231D7E2BC;
    OUTLINED_FUNCTION_13_0();
    goto LABEL_9;
  }

  if (sub_231E11A20())
  {

    OUTLINED_FUNCTION_17_8();

    OUTLINED_FUNCTION_18_6();
    OUTLINED_FUNCTION_13_12();

    return v54(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
  }

  (*(v30 + 1112))(*(v30 + 1024), *(v30 + 1104), *(v30 + 1000));

  v70 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_116_0();
  v71 = OUTLINED_FUNCTION_91_0();
  v72 = *(v30 + 1128);
  v73 = *(v30 + 1000);
  if (v71)
  {
    OUTLINED_FUNCTION_9_1();
    v74 = OUTLINED_FUNCTION_17_1();
    OUTLINED_FUNCTION_292_0(v74);
    *v31 = 136446210;
    v75 = sub_231DDB1E8();
    OUTLINED_FUNCTION_344(v75, v76);
    OUTLINED_FUNCTION_87_0();
    *(v31 + 4) = v32;
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v77, v78, v79, v80, v81, 0xCu);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_11();
  }

  v82 = OUTLINED_FUNCTION_9_4();
  v72(v82);
  v83 = MEMORY[0x277D84F90];
  if (*(v30 + 1216))
  {
    v84 = *(v30 + 1168);
    v85 = *(v30 + 936);
    v125 = MEMORY[0x277D84F90];
    v86 = OUTLINED_FUNCTION_298_0();
    sub_231CC686C(v86, v87, 0);
    v88 = 0;
    v83 = v125;
    OUTLINED_FUNCTION_79();
    v90 = v84 + v89;
    v124 = *(v85 + 72);
    v91 = *(v85 + 16);
    do
    {
      v92 = OUTLINED_FUNCTION_48();
      v91(v92);
      sub_231E10A20();
      OUTLINED_FUNCTION_64_1();
      v93 = OUTLINED_FUNCTION_181();
      v94(v93);
      v96 = *(v125 + 16);
      v95 = *(v125 + 24);
      if (v96 >= v95 >> 1)
      {
        OUTLINED_FUNCTION_107_6(v95);
        OUTLINED_FUNCTION_393();
        sub_231CC686C(v99, v100, v101);
      }

      v97 = *(v30 + 1216);
      ++v88;
      *(v125 + 16) = v96 + 1;
      v98 = v125 + 16 * v96;
      *(v98 + 32) = v85;
      *(v98 + 40) = v73;
      v90 += v124;
    }

    while (v88 != v97);
  }

  *(v30 + 1272) = v83;
  v102 = sub_231CC8454();
  v103 = *(v30 + 1168);
  if ((v102 & 1) == 0)
  {
    v108 = *(v30 + 752);
    v109 = swift_task_alloc();
    *(v30 + 1296) = v109;
    v110 = *(v30 + 728);
    *(v109 + 16) = v103;
    *(v109 + 24) = v108;
    *(v109 + 32) = v110;
    swift_task_alloc();
    OUTLINED_FUNCTION_58_0();
    *(v30 + 1304) = v111;
    *v111 = v112;
    v111[1] = sub_231D7E6D0;
    OUTLINED_FUNCTION_133_2();
LABEL_9:
    OUTLINED_FUNCTION_13_12();

    return sub_231DDB61C();
  }

  v104 = *(v30 + 928);
  sub_231D914FC(*(v30 + 1168), MEMORY[0x277D42428], *(v30 + 856));
  v105 = OUTLINED_FUNCTION_191_0();
  OUTLINED_FUNCTION_8_17(v105, v106, v104);
  if (v107)
  {
    sub_231CC154C(*(v30 + 856), &qword_27DD74BE0, &qword_231E1CC20);
  }

  else
  {
    sub_231E109B0();
    OUTLINED_FUNCTION_14_9();
    v113 = OUTLINED_FUNCTION_37_0();
    v114(v113);
    if (v104)
    {
      goto LABEL_26;
    }
  }

  v104 = 0xE000000000000000;
LABEL_26:
  *(v30 + 1280) = v104;
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v30 + 1288) = v115;
  *v115 = v116;
  v115[1] = sub_231D7E520;
  OUTLINED_FUNCTION_132_1();
  OUTLINED_FUNCTION_13_12();

  return sub_231D8D948();
}

void sub_231D7E2BC()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_231D7E3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_34_9();
  OUTLINED_FUNCTION_319();
  sub_231CBA16C(*(v30 + 1240), *(v30 + 1248), *(v30 + 714));
  OUTLINED_FUNCTION_22_8();
  OUTLINED_FUNCTION_158_1();

  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_13_12();

  return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_231D7E520()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231D7E620()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_0_31();
  sub_231DA29CC(v1, v2);
  v3 = OUTLINED_FUNCTION_365();
  OUTLINED_FUNCTION_400(v3);
  v4 = swift_task_alloc();
  *(v0 + 1328) = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_198(v4);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_106();

  return sub_231DDB61C();
}

uint64_t sub_231D7E6D0()
{
  OUTLINED_FUNCTION_288_0();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 1312) = v0;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_102_0();
    sub_231CBA16C(v7, v8, 0xFFu);
  }

  else
  {
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_232_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231D7E83C()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57_0();
  v1 = v0[112];
  OUTLINED_FUNCTION_0_31();
  sub_231DA29CC(v2, v1);
  sub_231DA3AF0();
  sub_231E0F5F0();
  v3 = OUTLINED_FUNCTION_399();
  v4 = OUTLINED_FUNCTION_314(v3);
  v5 = v4;
  if (v4 == 1)
  {
    sub_231CC154C(v0[106], &qword_27DD74470, &qword_231E17120);
    v6 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_491(v4);
    OUTLINED_FUNCTION_16();
    v7 = OUTLINED_FUNCTION_48();
    v8(v7);
    v6 = sub_231E0F5D0();
    v9 = OUTLINED_FUNCTION_80();
    v10(v9);
  }

  v11 = v0[105];
  v12 = v0[92] + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_summaryTopLineLength;
  OUTLINED_FUNCTION_4_12(v12, (v0 + 81));
  *v12 = v6;
  *(v12 + 8) = v5 == 1;
  OUTLINED_FUNCTION_70();
  sub_231DA3AF0();
  v13 = OUTLINED_FUNCTION_314(v11);
  v14 = v13;
  if (v13 == 1)
  {
    sub_231CC154C(v0[105], &qword_27DD74470, &qword_231E17120);
    v15 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_491(v13);
    OUTLINED_FUNCTION_16();
    v16 = OUTLINED_FUNCTION_48();
    v17(v16);
    v15 = sub_231E0F5D0();
    v18 = OUTLINED_FUNCTION_80();
    v19(v18);
  }

  v20 = v0[104];
  v21 = v0[92] + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_summaryTopicLength;
  OUTLINED_FUNCTION_4_12(v21, (v0 + 84));
  *v21 = v15;
  *(v21 + 8) = v14 == 1;
  OUTLINED_FUNCTION_70();
  sub_231DA3AF0();
  if (OUTLINED_FUNCTION_314(v20) == 1)
  {
    sub_231CC154C(v0[104], &qword_27DD74470, &qword_231E17120);
    goto LABEL_14;
  }

  v22 = v0[98];
  sub_231E0F5C0();
  OUTLINED_FUNCTION_16();
  v24 = *(v23 + 8);
  v25 = OUTLINED_FUNCTION_48();
  v24(v25);
  v26 = sub_231E0F5D0();
  v27 = *(v22 + 8);
  v28 = OUTLINED_FUNCTION_70();
  v27(v28);
  if (v26 > 0)
  {
    v29 = v0[103];
    sub_231DA3AF0();
    if (OUTLINED_FUNCTION_314(v29) == 1)
    {
      sub_231CC154C(v0[103], &qword_27DD74470, &qword_231E17120);
    }

    else
    {
      sub_231E0F5C0();
      v30 = OUTLINED_FUNCTION_48();
      v24(v30);
      v31 = sub_231E0F5D0();
      v32 = OUTLINED_FUNCTION_33();
      v27(v32);
      if (v31)
      {
        goto LABEL_14;
      }
    }

    v33 = v0[112];
    v34 = v0[108];
    v35 = v0[100];
    OUTLINED_FUNCTION_248_0();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
    OUTLINED_FUNCTION_181();
    sub_231DA3AF0();
    sub_231DA3AF0();
    v40 = *(v33 + v34[7]);
    memcpy(v0 + 30, (v33 + v34[8]), 0x60uLL);
    v41 = *(v33 + v34[9]);
    sub_231DA3AF0();

    v42 = OUTLINED_FUNCTION_70();
    sub_231D48A80(v42, v43, v35, v40, v44, v41, v45);
    v46 = OUTLINED_FUNCTION_102_0();
    sub_231DA3A34(v46, v47);
  }

LABEL_14:
  v48 = OUTLINED_FUNCTION_365();
  OUTLINED_FUNCTION_400(v48);
  v49 = swift_task_alloc();
  v0[166] = v49;
  *v49 = v0;
  OUTLINED_FUNCTION_198(v49);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_44();

  return sub_231DDB61C();
}

void sub_231D7ECB4()
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_35();
  }

  else
  {

    v9 = OUTLINED_FUNCTION_83();
    sub_231CBA16C(v9, v10, 0xFFu);

    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_35();

    MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_231D7EE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_34_9();
  OUTLINED_FUNCTION_319();
  (*(v30 + 1112))(*(v30 + 1016), *(v30 + 1104), *(v30 + 1000));

  v33 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_116_0();
  v34 = OUTLINED_FUNCTION_91_0();
  v35 = *(v30 + 1128);
  if (v34)
  {
    a26 = *(v30 + 1128);
    OUTLINED_FUNCTION_9_1();
    v36 = OUTLINED_FUNCTION_17_1();
    OUTLINED_FUNCTION_292_0(v36);
    *v31 = 136446210;
    v37 = sub_231DDB1E8();
    OUTLINED_FUNCTION_344(v37, v38);
    OUTLINED_FUNCTION_87_0();
    *(v31 + 4) = v32;
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v39, v40, v41, v42, v43, 0xCu);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_11();
  }

  v44 = OUTLINED_FUNCTION_9_4();
  v35(v44);
  sub_231D48194();
  OUTLINED_FUNCTION_3_24();
  sub_231DA1DDC();
  OUTLINED_FUNCTION_17_8();

  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_13_12();

  return v47(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_231D7F090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_244(xmmword_231E13680);
  sub_231E10BE0();
  OUTLINED_FUNCTION_12();
  v11 = OUTLINED_FUNCTION_140_0();
  v12(v11);
  OUTLINED_FUNCTION_48();
  swift_storeEnumTagMultiPayload();
  v13 = swift_task_alloc();
  *(v10 + 1336) = v13;
  *v13 = v10;
  v13[1] = sub_231D7F19C;
  v14 = OUTLINED_FUNCTION_105_6(*(v10 + 1312));

  return sub_231D8FA3C(v14, v15, 0, v16, v17, v18, 0, 0, a9, a10);
}

uint64_t sub_231D7F19C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  *(v2 + 715) = v6;

  sub_231CD2C1C(v2 + 16);
  OUTLINED_FUNCTION_4_19();
  sub_231DA1DDC();
  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231D7F2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_34_9();
  OUTLINED_FUNCTION_319();

  OUTLINED_FUNCTION_17_8();
  HIDWORD(a27) = *(v30 + 715);

  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_13_12();

  return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

void sub_231D7F44C()
{
  OUTLINED_FUNCTION_118();
  v2 = v1;
  v3 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_1();
  v9 = v8 - v7;
  v10 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_cancellationReason;
  OUTLINED_FUNCTION_4_12(v2 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_cancellationReason, &v20);
  *(v2 + v10) = 0;
  sub_231CB4EEC();
  OUTLINED_FUNCTION_246_0();
  v11(v9);

  v12 = sub_231E10E10();
  v13 = sub_231E11AF0();

  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_9_1();
    v19 = OUTLINED_FUNCTION_17_1();
    *v0 = 136446210;
    v14 = sub_231DDB1E8();
    v16 = sub_231CB5000(v14, v15, &v19);

    *(v0 + 4) = v16;
    OUTLINED_FUNCTION_498(&dword_231CAE000, v17, v18, "%{public}s SummarizationManager task timed out");
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_11();
  }

  (*(v5 + 8))(v9, v3);
  OUTLINED_FUNCTION_113();
}

void sub_231D7F5D0()
{
  OUTLINED_FUNCTION_118();
  v26 = v1;
  OUTLINED_FUNCTION_95_5();
  sub_231E10340();
  OUTLINED_FUNCTION_24();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_241_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  OUTLINED_FUNCTION_47(v3);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_253_0();
  sub_231E119F0();
  OUTLINED_FUNCTION_24();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_63_6();
  sub_231E10100();
  if (!v6)
  {
    sub_231E10000();
  }

  sub_231E10000();
  sub_231CC8990(v0);
  OUTLINED_FUNCTION_28_2(v0);
  if (v7)
  {
    sub_231D1221C();
    OUTLINED_FUNCTION_28_2(v0);
    if (!v7)
    {
      sub_231CC154C(v0, &qword_27DD75180, &qword_231E13690);
    }
  }

  else
  {
    OUTLINED_FUNCTION_150_1();
    v11(v8, v9, v10);
  }

  OUTLINED_FUNCTION_471();
  v12 = OUTLINED_FUNCTION_102_0();
  v13(v12);
  OUTLINED_FUNCTION_142_2();
  v15 = v14 & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v17 = OUTLINED_FUNCTION_259_0(v16);
  v18(v17);
  *(v0 + v15) = v26;

  v19 = OUTLINED_FUNCTION_384();
  sub_231D7B818(v19, v20, v21, v22, v23, 1818845549, 0xE400000000000000);
  OUTLINED_FUNCTION_507();

  v24 = OUTLINED_FUNCTION_294_0();
  v25(v24);
  OUTLINED_FUNCTION_113();
}

uint64_t sub_231D7F860()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_103_3(v1, v2, v3, v4);
  v5 = sub_231E10340();
  v0[6] = v5;
  OUTLINED_FUNCTION_6(v5);
  v0[7] = v6;
  v0[8] = *(v7 + 64);
  v0[9] = OUTLINED_FUNCTION_55();
  v8 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231D7F908()
{
  OUTLINED_FUNCTION_274_0();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_89_5();
  sub_231D11F64();
  v3 = OUTLINED_FUNCTION_50_6();
  v4(v3);
  OUTLINED_FUNCTION_49_9();
  v5 = OUTLINED_FUNCTION_435();
  v6 = OUTLINED_FUNCTION_38_9(v5);
  v7(v6);
  *(v0 + v2) = v1;
  OUTLINED_FUNCTION_220_0();
  swift_retain_n();

  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_290_0(v8);
  *v9 = v10;
  v9[1] = sub_231D7FA18;
  OUTLINED_FUNCTION_64_5(v9, &unk_231E1E3C0);
  OUTLINED_FUNCTION_273_0();

  return sub_231D6DB48(v11, v12, v13, v14, v15);
}

uint64_t sub_231D7FA18()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t sub_231D7FB54()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_102_4(v1, v2, v3, v4);
  v5 = sub_231E0F950();
  v0[9] = v5;
  OUTLINED_FUNCTION_6(v5);
  v0[10] = v6;
  v7 = OUTLINED_FUNCTION_55();
  v8 = OUTLINED_FUNCTION_434(v7);
  v0[12] = v8;
  OUTLINED_FUNCTION_6(v8);
  v0[13] = v9;
  v0[14] = OUTLINED_FUNCTION_55();
  v10 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231D7FC38()
{
  OUTLINED_FUNCTION_29();
  v1 = OUTLINED_FUNCTION_277_0();
  OUTLINED_FUNCTION_65_6(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 128) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_325(v2);
  OUTLINED_FUNCTION_62_4();

  return sub_231DDB61C();
}

void sub_231D7FCEC()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_231D7FE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_56_0();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_59_1();
  a20 = v22;
  v25 = *(v22 + 40);
  v26 = *(v22 + 136);
  v27 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_exitReason;
  OUTLINED_FUNCTION_4_12(v25 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_exitReason, v22 + 16);
  *(v25 + v27) = v26;
  sub_231CB4EEC();
  OUTLINED_FUNCTION_397();
  v28 = OUTLINED_FUNCTION_82();
  v29(v28);

  v30 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_116_0();
  v31 = OUTLINED_FUNCTION_91_0();
  v33 = *(v22 + 104);
  v32 = *(v22 + 112);
  v34 = *(v22 + 96);
  if (v31)
  {
    a10 = *(v22 + 112);
    OUTLINED_FUNCTION_98_0();
    a11 = OUTLINED_FUNCTION_222_0();
    *v27 = 136446466;
    v35 = sub_231DDB1E8();
    v37 = v36;
    v38 = sub_231CB5000(v35, v36, &a11);

    *(v27 + 4) = v38;
    *(v27 + 12) = 2080;
    v39 = sub_231DD62D8();
    sub_231CB5000(v39, v40, &a11);
    OUTLINED_FUNCTION_87_0();
    *(v27 + 14) = v37;
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v41, v42, v43, v44, v45, 0x16u);
    OUTLINED_FUNCTION_91_2();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_11();

    v46 = (*(v33 + 8))(a10, v34);
  }

  else
  {

    v46 = (*(v33 + 8))(v32, v34);
  }

  v47 = *(v22 + 88);
  sub_231DB0818(v46);
  sub_231DDC58C(13, v47);
  v48 = OUTLINED_FUNCTION_33();
  v49(v48);
  sub_231DDCC34(1);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_35();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_231D7FFD8()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_61_6(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_381(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_48_8(v2);

  return sub_231D80154();
}

uint64_t sub_231D80064()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_433(v3);
  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231D80154()
{
  OUTLINED_FUNCTION_18();
  v1[258] = v0;
  v1[257] = v2;
  v1[256] = v3;
  v1[255] = v4;
  v5 = sub_231E0F5E0();
  v1[259] = v5;
  OUTLINED_FUNCTION_6(v5);
  v1[260] = v6;
  v1[261] = OUTLINED_FUNCTION_55();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74470, &qword_231E17120);
  OUTLINED_FUNCTION_47(v7);
  v1[262] = OUTLINED_FUNCTION_55();
  v8 = type metadata accessor for SummarizerResult(0);
  v1[263] = v8;
  OUTLINED_FUNCTION_47(v8);
  v1[264] = OUTLINED_FUNCTION_69();
  v1[265] = swift_task_alloc();
  v1[266] = swift_task_alloc();
  v9 = type metadata accessor for EntityKind(0);
  v1[267] = v9;
  OUTLINED_FUNCTION_47(v9);
  v1[268] = OUTLINED_FUNCTION_55();
  v10 = sub_231E10070();
  v1[269] = v10;
  OUTLINED_FUNCTION_6(v10);
  v1[270] = v11;
  v1[271] = OUTLINED_FUNCTION_55();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74A78, &unk_231E1E3E0);
  OUTLINED_FUNCTION_47(v12);
  v1[272] = OUTLINED_FUNCTION_55();
  v13 = sub_231E10400();
  v1[273] = v13;
  OUTLINED_FUNCTION_6(v13);
  v1[274] = v14;
  v1[275] = OUTLINED_FUNCTION_55();
  v15 = sub_231E10340();
  v1[276] = v15;
  OUTLINED_FUNCTION_6(v15);
  v1[277] = v16;
  v1[278] = OUTLINED_FUNCTION_55();
  v17 = sub_231E10470();
  v1[279] = v17;
  OUTLINED_FUNCTION_6(v17);
  v1[280] = v18;
  v1[281] = OUTLINED_FUNCTION_55();
  v19 = sub_231E10210();
  v1[282] = v19;
  OUTLINED_FUNCTION_6(v19);
  v1[283] = v20;
  v1[284] = OUTLINED_FUNCTION_69();
  v1[285] = swift_task_alloc();
  v1[286] = swift_task_alloc();
  v1[287] = swift_task_alloc();
  v1[288] = swift_task_alloc();
  v1[289] = swift_task_alloc();
  v21 = sub_231E10010();
  v1[290] = v21;
  OUTLINED_FUNCTION_6(v21);
  v1[291] = v22;
  v1[292] = OUTLINED_FUNCTION_69();
  v1[293] = swift_task_alloc();
  v23 = sub_231E10290();
  v1[294] = v23;
  OUTLINED_FUNCTION_6(v23);
  v1[295] = v24;
  v1[296] = OUTLINED_FUNCTION_69();
  v1[297] = swift_task_alloc();
  v1[298] = swift_task_alloc();
  v1[299] = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F98, &unk_231E170E0);
  OUTLINED_FUNCTION_47(v25);
  v1[300] = OUTLINED_FUNCTION_69();
  v1[301] = swift_task_alloc();
  v1[302] = swift_task_alloc();
  v1[303] = swift_task_alloc();
  v1[304] = swift_task_alloc();
  v1[305] = swift_task_alloc();
  v26 = sub_231E10E30();
  v1[306] = v26;
  OUTLINED_FUNCTION_6(v26);
  v1[307] = v27;
  v1[308] = OUTLINED_FUNCTION_69();
  v1[309] = swift_task_alloc();
  v1[310] = swift_task_alloc();
  v1[311] = swift_task_alloc();
  v1[312] = swift_task_alloc();
  v1[313] = swift_task_alloc();
  v1[314] = swift_task_alloc();
  v1[315] = swift_task_alloc();
  v1[316] = swift_task_alloc();
  v28 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_231D80650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void (*a32)(void), uint64_t a33, void (*a34)(uint64_t), uint64_t a35, void (*a36)(uint64_t), void *a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_226_0();
  OUTLINED_FUNCTION_239_0();
  v45 = v42[307];
  v42[317] = sub_231CB4EEC();
  v42[318] = *(v45 + 16);
  OUTLINED_FUNCTION_322();
  v42[319] = v46;
  v47 = OUTLINED_FUNCTION_82();
  v48(v47);

  v49 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_116_0();
  v50 = OUTLINED_FUNCTION_91_0();
  v51 = v42[307];
  if (v50)
  {
    OUTLINED_FUNCTION_221_0();
    v44 = OUTLINED_FUNCTION_17_1();
    a38 = v44;
    *v43 = 136446210;
    v52 = sub_231DDB1E8();
    OUTLINED_FUNCTION_343(v52, v53);
    OUTLINED_FUNCTION_87_0();
    *(v43 + 4) = &off_231E13000;
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v54, v55, v56, v57, v58, 0xCu);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_11();
  }

  v59 = *(v51 + 8);
  v60 = OUTLINED_FUNCTION_33();
  v59(v60);
  v42[320] = v59;
  v61 = v42[277];
  v62 = v42[276];
  v63 = v42[258];
  v64 = v42[256];
  v65 = v42[255];
  v66 = swift_allocBox();
  v68 = v67;
  v42[321] = v66;
  v42[322] = v67;
  v69 = *(v61 + 16);
  v42[323] = v69;
  v42[324] = (v61 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v69(v67, v65, v62);
  v42[325] = sub_231E10000();
  v42[326] = v70;
  sub_231E102D0();
  sub_231E116F0();
  OUTLINED_FUNCTION_404();
  v71 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_titleLengths;
  OUTLINED_FUNCTION_4_12(v64 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_titleLengths, (v42 + 237));
  sub_231D9F768();
  v72 = *(*(v64 + v71) + 16);
  sub_231D9F7B4(v72);
  v73 = *(v64 + v71);
  *(v73 + 16) = v72 + 1;
  *(v73 + 8 * v72 + 32) = v65;
  *(v64 + v71) = v73;
  if (!*(v63 + 320))
  {
    v79 = v42[258];
    v80 = v42[256];
    v81 = swift_task_alloc();
    v42[327] = v81;
    v81[2] = v68;
    v81[3] = v79;
    v81[4] = v80;
    v82 = swift_task_alloc();
    v42[328] = v82;
    *v82 = v42;
    OUTLINED_FUNCTION_164_1(v82);
LABEL_43:
    OUTLINED_FUNCTION_206();

    return sub_231DDB61C();
  }

  if (*(v63 + 320) != 1)
  {
    v83 = (v42 + 225);
    v84 = v42[283];
    sub_231E10220();
    v85 = sub_231E10200();
    v87 = v86;
    v88 = *(v84 + 8);
    v89 = OUTLINED_FUNCTION_70();
    v88(v89);
    if (v87)
    {
      OUTLINED_FUNCTION_59_0();
      sub_231E116F0();
      OUTLINED_FUNCTION_399();
    }

    else
    {
      v85 = 0;
    }

    v118 = v42[256];
    v119 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_bodyLengths;
    v120 = 1;
    OUTLINED_FUNCTION_4_12(OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_bodyLengths + v118, (v42 + 234));
    sub_231D9F768();
    v121 = *(*(v119 + v118) + 16);
    sub_231D9F7B4(v121);
    v122 = *(v119 + v118);
    *(v122 + 16) = v121 + 1;
    *(v122 + 8 * v121 + 32) = v85;
    *(v119 + v118) = v122;
    goto LABEL_32;
  }

  v74 = v42[283];
  sub_231E10220();
  sub_231E10200();
  v76 = v75;
  v77 = *(v74 + 8);
  v78 = OUTLINED_FUNCTION_70();
  v77(v78);
  if (v76)
  {
    OUTLINED_FUNCTION_102_0();
    sub_231E116F0();
    OUTLINED_FUNCTION_334();
  }

  else
  {
    v44 = 0;
  }

  v90 = v42[294];
  sub_231E10080();
  v91 = OUTLINED_FUNCTION_191_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v91, v92, v90);
  v94 = v42[303];
  if (EnumTagSinglePayload)
  {
    result = sub_231CC154C(v42[303], &qword_27DD73F98, &unk_231E170E0);
  }

  else
  {
    v97 = v42[297];
    v98 = v42[295];
    v99 = v42[294];
    OUTLINED_FUNCTION_463();
    v100 = OUTLINED_FUNCTION_102_0();
    v101(v100);
    sub_231CC154C(v94, &qword_27DD73F98, &unk_231E170E0);
    v102 = sub_231E10280();
    result = (*(v98 + 8))(v97, v99);
    if (v102)
    {
      v103 = *(v102 + 16);
      if (v103)
      {
        a32 = v44;
        a33 = v68;
        a34 = v77;
        v104 = v42[280];
        v238 = MEMORY[0x277D84F90];
        sub_231CC686C(0, v103, 0);
        v105 = v238;
        OUTLINED_FUNCTION_79();
        a31 = v102;
        v107 = v102 + v106;
        a35 = *(v104 + 72);
        a36 = v108;
        do
        {
          v109 = OUTLINED_FUNCTION_301_0();
          a36(v109);
          v110 = sub_231E10450();
          v112 = v111;
          v113 = OUTLINED_FUNCTION_140_0();
          v114(v113);
          a38 = v105;
          v116 = *(v105 + 16);
          v115 = *(v105 + 24);
          if (v116 >= v115 >> 1)
          {
            sub_231CC686C((v115 > 1), v116 + 1, 1);
          }

          *(v105 + 16) = v116 + 1;
          v117 = v105 + 16 * v116;
          *(v117 + 32) = v110;
          *(v117 + 40) = v112;
          v107 += a35;
          --v103;
        }

        while (v103);

        v77 = a34;
        v44 = a32;
      }

      else
      {

        v105 = MEMORY[0x277D84F90];
      }

      v96 = sub_231DC3C70(v105);

      goto LABEL_25;
    }
  }

  v96 = 0;
LABEL_25:
  v123 = __OFADD__(v44, v96);
  v119 = (v44 + v96);
  if (v123)
  {
    __break(1u);
    return result;
  }

  a37 = v42 + 210;
  v121 = v42[302];
  v124 = v42[294];
  v125 = v42[256];
  v126 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_bodyLengths;
  OUTLINED_FUNCTION_4_12(OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_bodyLengths + v125, (v42 + 177));
  sub_231D9F768();
  v127 = *(*&v126[v125] + 16);
  sub_231D9F7B4(v127);
  v128 = *&v126[v125];
  *(v128 + 16) = v127 + 1;
  *(v128 + 8 * v127 + 32) = v119;
  *&v126[v125] = v128;
  sub_231E10080();
  v129 = __swift_getEnumTagSinglePayload(v121, 1, v124);
  v130 = v42[302];
  if (v129)
  {
    sub_231CC154C(v42[302], &qword_27DD73F98, &unk_231E170E0);
    v120 = 1;
    v88 = v77;
  }

  else
  {
    v131 = v42[296];
    v132 = v42[295];
    v121 = v42[294];
    OUTLINED_FUNCTION_471();
    v133 = OUTLINED_FUNCTION_59_0();
    v134(v133);
    sub_231CC154C(v130, &qword_27DD73F98, &unk_231E170E0);
    v135 = sub_231E10280();
    (*(v132 + 8))(v131, v121);
    v88 = v77;
    if (v135)
    {
      OUTLINED_FUNCTION_505();
      v120 = v131 + 1;
    }

    else
    {
      v120 = 1;
    }
  }

  v83 = (v42 + 210);
  v118 = v42[256];
LABEL_32:
  v136 = (v118 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_depth);
  v137 = OUTLINED_FUNCTION_4_12(v118 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_depth, v83);
  *v136 = v120;
  OUTLINED_FUNCTION_324(v137);
  v138 = (v120 + 88);
  v139 = OUTLINED_FUNCTION_33();
  v141 = v140(v139);
  if (v141 != *MEMORY[0x277D42268])
  {
    v154 = v141;
    if (v141 == *MEMORY[0x277D42280])
    {
      OUTLINED_FUNCTION_489();
      v155 = OUTLINED_FUNCTION_48();
LABEL_39:
      v88(v155);
LABEL_48:
      OUTLINED_FUNCTION_101_6();
      v161 = OUTLINED_FUNCTION_235_0();
      v162(v161);

      v163 = sub_231E10E10();
      sub_231E11AE0();
      OUTLINED_FUNCTION_148_0();

      if (OUTLINED_FUNCTION_177())
      {
        OUTLINED_FUNCTION_140_2();
        a34 = v88;
        a35 = v42[314];
        a32 = v42[307];
        a33 = v42[306];
        v164 = v42[285];
        a31 = v42[282];
        v165 = OUTLINED_FUNCTION_233_0();
        v166 = OUTLINED_FUNCTION_68();
        OUTLINED_FUNCTION_386(v166);
        *v165 = 136446466;
        v167 = sub_231DDB1E8();
        OUTLINED_FUNCTION_343(v167, v168);
        OUTLINED_FUNCTION_264_0();

        OUTLINED_FUNCTION_234_0();
        v169 = OUTLINED_FUNCTION_270_0(v121, (v42 + 216));
        OUTLINED_FUNCTION_504(v169);
        swift_endAccess();
        sub_231E101F0();
        OUTLINED_FUNCTION_260_0();
        v170 = OUTLINED_FUNCTION_462();
        v171(v170);
        v172 = OUTLINED_FUNCTION_18_0();
        sub_231CB5000(v172, v173, v174);
        OUTLINED_FUNCTION_129();

        *(v165 + 14) = v164;
        OUTLINED_FUNCTION_26_3(&dword_231CAE000, v175, v176, "%{public}s Cannot handle mail, body kind: %s cannot be processed");
        OUTLINED_FUNCTION_282_0();
        OUTLINED_FUNCTION_31_1();
        OUTLINED_FUNCTION_14();

        v177 = OUTLINED_FUNCTION_466();
        v178(v177);
      }

      else
      {
        OUTLINED_FUNCTION_408();
        v179 = OUTLINED_FUNCTION_33();
        v138(v179);
      }

      v180 = 20;
      goto LABEL_68;
    }

    if (v141 == *MEMORY[0x277D42278])
    {

      goto LABEL_48;
    }

    if (v141 == *MEMORY[0x277D42270])
    {
    }

    else
    {
      v196 = *MEMORY[0x277D42260];

      if (v154 != v196)
      {
        v155 = OUTLINED_FUNCTION_439();
        goto LABEL_39;
      }
    }

    OUTLINED_FUNCTION_101_6();
    v197 = OUTLINED_FUNCTION_235_0();
    v198(v197);

    v199 = sub_231E10E10();
    sub_231E11AD0();
    OUTLINED_FUNCTION_148_0();

    if (OUTLINED_FUNCTION_177())
    {
      OUTLINED_FUNCTION_140_2();
      a34 = v88;
      a35 = v42[315];
      a32 = v42[307];
      a33 = v42[306];
      v200 = v42[285];
      a31 = v42[282];
      v201 = OUTLINED_FUNCTION_233_0();
      v202 = OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_386(v202);
      *v201 = 136446466;
      v203 = sub_231DDB1E8();
      OUTLINED_FUNCTION_343(v203, v204);
      OUTLINED_FUNCTION_264_0();

      OUTLINED_FUNCTION_234_0();
      v205 = OUTLINED_FUNCTION_270_0(v121, (v42 + 198));
      OUTLINED_FUNCTION_504(v205);
      swift_endAccess();
      sub_231E101F0();
      OUTLINED_FUNCTION_260_0();
      v206 = OUTLINED_FUNCTION_462();
      v207(v206);
      v208 = OUTLINED_FUNCTION_18_0();
      sub_231CB5000(v208, v209, v210);
      OUTLINED_FUNCTION_129();

      *(v201 + 14) = v200;
      OUTLINED_FUNCTION_26_3(&dword_231CAE000, v211, v212, "%{public}s Cannot handle mail, failed fetching body: %s");
      OUTLINED_FUNCTION_282_0();
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_14();

      v213 = OUTLINED_FUNCTION_466();
      v214(v213);
    }

    else
    {
      OUTLINED_FUNCTION_409();
      v229 = OUTLINED_FUNCTION_33();
      v138(v229);
    }

    v180 = 21;
    goto LABEL_68;
  }

  v142 = OUTLINED_FUNCTION_195_0();
  v88(v142);
  v143 = OUTLINED_FUNCTION_11_5();
  v138(v143);
  v144 = sub_231CE2244();
  v146 = *(v118 + 8);
  v145 = v118 + 8;
  v42[331] = v146;
  v42[332] = v145 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v147 = OUTLINED_FUNCTION_25();
  v148(v147);
  if ((v144 & 1) == 0)
  {
    OUTLINED_FUNCTION_438();
    goto LABEL_41;
  }

  sub_231E10140();
  if (!v149)
  {
LABEL_62:
    OUTLINED_FUNCTION_323();
    v215 = OUTLINED_FUNCTION_11_5();
    (v145)(v215);

    v216 = sub_231E10E10();
    sub_231E11AE0();
    OUTLINED_FUNCTION_148_0();
    os_log_type_enabled(v216, v145);
    OUTLINED_FUNCTION_377();
    if (v217)
    {
      HIDWORD(a37) = HIDWORD(v136);
      a36 = v119;
      v218 = OUTLINED_FUNCTION_221_0();
      v219 = OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_386(v219);
      *v218 = 136446210;
      v220 = sub_231DDB1E8();
      OUTLINED_FUNCTION_343(v220, v221);
      OUTLINED_FUNCTION_117_0();
      *(v218 + 4) = v83;
      OUTLINED_FUNCTION_67_1();
      _os_log_impl(v222, v223, v224, v225, v226, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v88);
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_14();

      v227 = OUTLINED_FUNCTION_70();
      a36(v227);
    }

    else
    {

      v228 = OUTLINED_FUNCTION_70();
      v119(v228);
    }

    v180 = 13;
    goto LABEL_68;
  }

  OUTLINED_FUNCTION_81_0();
  if (!sub_231E10190())
  {

    goto LABEL_62;
  }

  OUTLINED_FUNCTION_401();

  OUTLINED_FUNCTION_128_2();
  OUTLINED_FUNCTION_423(v150, v151, v152);
  OUTLINED_FUNCTION_451();
LABEL_41:
  OUTLINED_FUNCTION_412(v153);
  if (v156)
  {
    OUTLINED_FUNCTION_411();
    v157 = swift_task_alloc();
    OUTLINED_FUNCTION_329(v157);
    swift_task_alloc();
    OUTLINED_FUNCTION_58_0();
    v42[338] = v158;
    *v158 = v159;
    OUTLINED_FUNCTION_164_1(v158);
    OUTLINED_FUNCTION_168_1();
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_311();
  v181 = OUTLINED_FUNCTION_356();
  v136(v181);

  v182 = sub_231E10E10();
  sub_231E11AE0();

  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_317();
  if (v183)
  {
    a35 = v145;
    a34 = v88;
    v184 = OUTLINED_FUNCTION_221_0();
    a33 = v83;
    a38 = OUTLINED_FUNCTION_67();
    *v184 = 136446210;
    v185 = sub_231DDB1E8();
    OUTLINED_FUNCTION_343(v185, v186);
    a32 = v119;
    OUTLINED_FUNCTION_334();
    *(v184 + 4) = v119;
    OUTLINED_FUNCTION_494(&dword_231CAE000, v187, v188, "%{public}s Cannot handle mail with missing domain id");
    __swift_destroy_boxed_opaque_existential_0(a38);
    OUTLINED_FUNCTION_30_4();
    OUTLINED_FUNCTION_31_1();
    v189 = OUTLINED_FUNCTION_52_8();
    sub_231DA1BC8(v189, v190, v191, a37);

    OUTLINED_FUNCTION_437();
    (v119)(a34, v83);
  }

  else
  {
    v192 = OUTLINED_FUNCTION_52_8();
    sub_231DA1BC8(v192, v193, v194, a37);

    OUTLINED_FUNCTION_437();
    v195 = OUTLINED_FUNCTION_116_3();
    v119(v195);
  }

  v180 = 2;
LABEL_68:
  LODWORD(a37) = v180;
  OUTLINED_FUNCTION_41_9();

  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_206();

  return v232(v230, v231, v232, v233, v234, v235, v236, v237, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_231D814E4()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v8 = OUTLINED_FUNCTION_4_18();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_231D81604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void (*a32)(void), char *a33, uint64_t (*a34)(uint64_t), uint64_t a35, uint64_t a36, uint64_t (*a37)(uint64_t), void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_226_0();
  OUTLINED_FUNCTION_239_0();
  v44 = v42[294];
  sub_231E10080();
  v45 = OUTLINED_FUNCTION_91_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v45, v46, v44);
  v48 = v42[305];
  if (EnumTagSinglePayload)
  {
    sub_231CC154C(v42[305], &qword_27DD73F98, &unk_231E170E0);
LABEL_3:
    v49 = 0;
    goto LABEL_4;
  }

  v57 = v42[299];
  v58 = v42[295];
  v59 = v42[294];
  v60 = OUTLINED_FUNCTION_59_0();
  v61(v60);
  sub_231CC154C(v48, &qword_27DD73F98, &unk_231E170E0);
  v49 = sub_231E10270();
  (*(v58 + 8))(v57, v59);
  if (v49)
  {
    v62 = *(v49 + 16);
    if (v62)
    {
      v63 = v42[291];
      v198 = MEMORY[0x277D84F90];
      v64 = OUTLINED_FUNCTION_252_0();
      sub_231D1C82C(v64, v65, v66);
      v67 = v198;
      v68 = v63 + 16;
      OUTLINED_FUNCTION_79();
      a35 = v49;
      v70 = v49 + v69;
      a36 = *(v68 + 56);
      a37 = v71;
      v72 = (v68 - 8);
      do
      {
        v73 = OUTLINED_FUNCTION_181();
        a37(v73);
        sub_231E0FFB0();
        if (v74)
        {
          sub_231E116F0();
          OUTLINED_FUNCTION_202_0();
        }

        else
        {
          v68 = 0;
        }

        (*v72)(v42[293], v42[290]);
        a38 = v67;
        v75 = v67[2];
        OUTLINED_FUNCTION_456();
        if (v77)
        {
          OUTLINED_FUNCTION_2_12(v76);
          OUTLINED_FUNCTION_291();
          sub_231D1C82C(v78, v79, v80);
        }

        v67[2] = v43;
        v67[v75 + 4] = v68;
        v70 += a36;
        --v62;
      }

      while (v62);
    }

    else
    {

      v67 = MEMORY[0x277D84F90];
    }

    v151 = v67[2];
    if (v151)
    {
      v49 = 0;
      v152 = 4;
      while (1)
      {
        v153 = v67[v152];
        v154 = __OFADD__(v49, v153);
        v49 += v153;
        if (v154)
        {
          break;
        }

        ++v152;
        if (!--v151)
        {

          goto LABEL_4;
        }
      }

      __break(1u);
      goto LABEL_70;
    }

    goto LABEL_3;
  }

LABEL_4:
  v50 = v42[283];
  sub_231E10220();
  v51 = sub_231E10200();
  v53 = v52;
  v54 = *(v50 + 8);
  v55 = OUTLINED_FUNCTION_33();
  result = v54(v55);
  if (v53)
  {
    OUTLINED_FUNCTION_59_0();
    sub_231E116F0();
    OUTLINED_FUNCTION_399();
  }

  else
  {
    v51 = 0;
  }

  v81 = v51 + v49;
  if (__OFADD__(v51, v49))
  {
LABEL_70:
    __break(1u);
    return result;
  }

  v82 = v42[294];
  v83 = v42[256];
  v84 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_bodyLengths;
  OUTLINED_FUNCTION_4_12(OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_bodyLengths + v83, (v42 + 207));
  sub_231D9F768();
  v85 = *(*&v84[v83] + 16);
  sub_231D9F7B4(v85);
  v86 = *&v84[v83];
  *(v86 + 16) = v85 + 1;
  *(v86 + 8 * v85 + 32) = v81;
  *&v84[v83] = v86;
  sub_231E10080();
  v87 = OUTLINED_FUNCTION_191_0();
  v89 = __swift_getEnumTagSinglePayload(v87, v88, v82);
  v90 = v42[304];
  if (v89)
  {
    sub_231CC154C(v42[304], &qword_27DD73F98, &unk_231E170E0);
LABEL_20:
    v91 = 1;
    goto LABEL_23;
  }

  v92 = v42[298];
  v82 = v42[295];
  OUTLINED_FUNCTION_458();
  v93 = OUTLINED_FUNCTION_11_5();
  v94(v93);
  sub_231CC154C(v90, &qword_27DD73F98, &unk_231E170E0);
  v95 = sub_231E10270();
  v96 = OUTLINED_FUNCTION_43_4();
  v97(v96);
  if (!v95)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_505();
  v91 = v92 + 1;
LABEL_23:
  v98 = (v42[256] + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_depth);
  v99 = OUTLINED_FUNCTION_4_12(v98, (v42 + 204));
  *v98 = v91;
  OUTLINED_FUNCTION_324(v99);
  v100 = (v85 + 88);
  v101 = OUTLINED_FUNCTION_33();
  v103 = v102(v101);
  if (v103 != *MEMORY[0x277D42268])
  {
    v116 = v103;
    if (v103 == *MEMORY[0x277D42280])
    {
      OUTLINED_FUNCTION_489();
      v117 = OUTLINED_FUNCTION_48();
LABEL_30:
      v54(v117);
LABEL_38:
      OUTLINED_FUNCTION_101_6();
      v123 = OUTLINED_FUNCTION_235_0();
      v124(v123);

      v125 = sub_231E10E10();
      sub_231E11AE0();
      OUTLINED_FUNCTION_148_0();

      if (OUTLINED_FUNCTION_177())
      {
        OUTLINED_FUNCTION_140_2();
        a34 = v42[306];
        a35 = v42[314];
        v126 = v42[285];
        a31 = v42[283];
        a32 = v42[282];
        a33 = v42[307];
        v127 = OUTLINED_FUNCTION_233_0();
        a38 = OUTLINED_FUNCTION_68();
        *v127 = 136446466;
        v128 = sub_231DDB1E8();
        OUTLINED_FUNCTION_343(v128, v129);
        OUTLINED_FUNCTION_264_0();

        OUTLINED_FUNCTION_234_0();
        v130 = OUTLINED_FUNCTION_270_0(v82, (v42 + 216));
        OUTLINED_FUNCTION_504(v130);
        swift_endAccess();
        sub_231E101F0();
        OUTLINED_FUNCTION_260_0();
        (v54)(v126, a32);
        v131 = OUTLINED_FUNCTION_18_0();
        sub_231CB5000(v131, v132, v133);
        OUTLINED_FUNCTION_129();

        *(v127 + 14) = v126;
        OUTLINED_FUNCTION_26_3(&dword_231CAE000, v134, v135, "%{public}s Cannot handle mail, body kind: %s cannot be processed");
        OUTLINED_FUNCTION_421();
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_14();

        v136 = OUTLINED_FUNCTION_466();
        v137(v136);
      }

      else
      {
        OUTLINED_FUNCTION_408();
        v138 = OUTLINED_FUNCTION_33();
        v100(v138);
      }

      v139 = 20;
      goto LABEL_65;
    }

    if (v103 == *MEMORY[0x277D42278])
    {

      goto LABEL_38;
    }

    if (v103 == *MEMORY[0x277D42270])
    {
    }

    else
    {
      v159 = *MEMORY[0x277D42260];

      if (v116 != v159)
      {
        v117 = OUTLINED_FUNCTION_439();
        goto LABEL_30;
      }
    }

    OUTLINED_FUNCTION_101_6();
    v160 = OUTLINED_FUNCTION_235_0();
    v161(v160);

    v162 = sub_231E10E10();
    sub_231E11AD0();
    OUTLINED_FUNCTION_148_0();

    if (OUTLINED_FUNCTION_177())
    {
      OUTLINED_FUNCTION_140_2();
      a34 = v42[306];
      a35 = v42[315];
      v163 = v42[285];
      a31 = v42[283];
      a32 = v42[282];
      a33 = v42[307];
      v164 = OUTLINED_FUNCTION_233_0();
      a38 = OUTLINED_FUNCTION_68();
      *v164 = 136446466;
      v165 = sub_231DDB1E8();
      OUTLINED_FUNCTION_343(v165, v166);
      OUTLINED_FUNCTION_264_0();

      OUTLINED_FUNCTION_234_0();
      v167 = OUTLINED_FUNCTION_270_0(v82, (v42 + 198));
      OUTLINED_FUNCTION_504(v167);
      swift_endAccess();
      sub_231E101F0();
      OUTLINED_FUNCTION_260_0();
      (v54)(v163, a32);
      v168 = OUTLINED_FUNCTION_18_0();
      sub_231CB5000(v168, v169, v170);
      OUTLINED_FUNCTION_129();

      *(v164 + 14) = v163;
      OUTLINED_FUNCTION_26_3(&dword_231CAE000, v171, v172, "%{public}s Cannot handle mail, failed fetching body: %s");
      OUTLINED_FUNCTION_421();
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_14();

      v173 = OUTLINED_FUNCTION_466();
      v174(v173);
    }

    else
    {
      OUTLINED_FUNCTION_409();
      v189 = OUTLINED_FUNCTION_33();
      v100(v189);
    }

    v139 = 21;
    goto LABEL_65;
  }

  v104 = OUTLINED_FUNCTION_195_0();
  v54(v104);
  v105 = OUTLINED_FUNCTION_11_5();
  v100(v105);
  v106 = sub_231CE2244();
  v108 = *(v81 + 8);
  v107 = v81 + 8;
  v42[331] = v108;
  v42[332] = v107 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v109 = OUTLINED_FUNCTION_25();
  v110(v109);
  if ((v106 & 1) == 0)
  {
    OUTLINED_FUNCTION_438();
    goto LABEL_32;
  }

  sub_231E10140();
  if (!v111)
  {
LABEL_59:
    OUTLINED_FUNCTION_323();
    v175 = OUTLINED_FUNCTION_11_5();
    (v107)(v175);

    v176 = sub_231E10E10();
    sub_231E11AE0();
    OUTLINED_FUNCTION_148_0();
    os_log_type_enabled(v176, v107);
    OUTLINED_FUNCTION_377();
    if (v177)
    {
      HIDWORD(a37) = HIDWORD(v98);
      a36 = v83;
      v178 = OUTLINED_FUNCTION_221_0();
      v179 = OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_386(v179);
      *v178 = 136446210;
      v180 = sub_231DDB1E8();
      OUTLINED_FUNCTION_343(v180, v181);
      OUTLINED_FUNCTION_117_0();
      *(v178 + 4) = v84;
      OUTLINED_FUNCTION_67_1();
      _os_log_impl(v182, v183, v184, v185, v186, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_14();

      v187 = OUTLINED_FUNCTION_70();
      (a36)(v187);
    }

    else
    {

      v188 = OUTLINED_FUNCTION_70();
      (v83)(v188);
    }

    v139 = 13;
    goto LABEL_65;
  }

  OUTLINED_FUNCTION_81_0();
  if (!sub_231E10190())
  {

    goto LABEL_59;
  }

  OUTLINED_FUNCTION_401();

  OUTLINED_FUNCTION_128_2();
  OUTLINED_FUNCTION_423(v112, v113, v114);
  OUTLINED_FUNCTION_451();
LABEL_32:
  OUTLINED_FUNCTION_412(v115);
  if (v118)
  {
    OUTLINED_FUNCTION_411();
    v119 = swift_task_alloc();
    OUTLINED_FUNCTION_329(v119);
    swift_task_alloc();
    OUTLINED_FUNCTION_58_0();
    v42[338] = v120;
    *v120 = v121;
    OUTLINED_FUNCTION_164_1(v120);
    OUTLINED_FUNCTION_168_1();
    OUTLINED_FUNCTION_206();

    return sub_231DDB61C();
  }

  OUTLINED_FUNCTION_311();
  v140 = OUTLINED_FUNCTION_356();
  v98(v140);

  v141 = sub_231E10E10();
  sub_231E11AE0();

  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_317();
  if (v142)
  {
    a35 = v107;
    a34 = v54;
    v143 = OUTLINED_FUNCTION_221_0();
    a33 = v84;
    a38 = OUTLINED_FUNCTION_67();
    *v143 = 136446210;
    v144 = sub_231DDB1E8();
    OUTLINED_FUNCTION_343(v144, v145);
    a32 = v83;
    OUTLINED_FUNCTION_334();
    *(v143 + 4) = v83;
    OUTLINED_FUNCTION_494(&dword_231CAE000, v146, v147, "%{public}s Cannot handle mail with missing domain id");
    __swift_destroy_boxed_opaque_existential_0(a38);
    OUTLINED_FUNCTION_30_4();
    OUTLINED_FUNCTION_31_1();
    v148 = OUTLINED_FUNCTION_52_8();
    sub_231DA1BC8(v148, v149, v150, a37);

    OUTLINED_FUNCTION_437();
    (v83)(a34, v84);
  }

  else
  {
    v155 = OUTLINED_FUNCTION_52_8();
    sub_231DA1BC8(v155, v156, v157, a37);

    OUTLINED_FUNCTION_437();
    v158 = OUTLINED_FUNCTION_116_3();
    (v83)(v158);
  }

  v139 = 2;
LABEL_65:
  LODWORD(a37) = v139;
  OUTLINED_FUNCTION_41_9();

  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_206();

  return v192(v190, v191, v192, v193, v194, v195, v196, v197, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_231D821C0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 2712) = v0;

  if (v0)
  {
  }

  else
  {

    v8 = OUTLINED_FUNCTION_4_18();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_231D822F0()
{
  OUTLINED_FUNCTION_239_0();
  if (*(v0 + 2009))
  {
    v1 = OUTLINED_FUNCTION_144_2();
    sub_231DA1BC8(v1, v2, v3, v4);

    OUTLINED_FUNCTION_11_15();

    OUTLINED_FUNCTION_18_6();
    OUTLINED_FUNCTION_402();

    __asm { BRAA            X2, X16 }
  }

  v7 = *(v0 + 2648);
  OUTLINED_FUNCTION_254_0();
  v8 = OUTLINED_FUNCTION_82();
  v9(v8);
  v10 = sub_231CE2244();
  v11 = OUTLINED_FUNCTION_48();
  v7(v11);
  if ((v10 & 1) == 0)
  {
    v12 = *(sub_231E100A0() + 16);

    if (v12)
    {
      v13 = *(v0 + 2568);
      v14 = *(v0 + 2064);
      v15 = *(v0 + 2048);
      sub_231D12170();
      OUTLINED_FUNCTION_299_0();
      v16 = swift_allocObject();
      *(v0 + 2720) = v16;
      v16[2] = v13;
      v16[3] = v15;
      v16[4] = v14;
      OUTLINED_FUNCTION_220_0();
      swift_retain_n();

      v17 = swift_task_alloc();
      *(v0 + 2728) = v17;
      *v17 = v0;
      v17[1] = sub_231D82900;
      OUTLINED_FUNCTION_84_4(v17, &unk_231E1E408);
      OUTLINED_FUNCTION_402();

      return sub_231D6DB48(v18, v19, v20, v21, v22);
    }

    v25 = *(v0 + 2048);
    v26 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_captioningResult;
    OUTLINED_FUNCTION_4_12(v25 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_captioningResult, v0 + 1944);
    *(v25 + v26) = 3;
  }

  if ((sub_231E11A20() & 1) == 0)
  {
    v29 = *(v0 + 2648);
    v30 = *(v0 + 2584);
    v31 = *(v0 + 2224);
    OUTLINED_FUNCTION_81();
    swift_beginAccess();
    v32 = OUTLINED_FUNCTION_11_5();
    v30(v32);
    v33 = sub_231CE2244();
    v34 = OUTLINED_FUNCTION_25();
    v35 = v29(v34);
    if (v33)
    {
LABEL_20:
      OUTLINED_FUNCTION_378();
      v41 = swift_task_alloc();
      OUTLINED_FUNCTION_478(v41);
      swift_task_alloc();
      OUTLINED_FUNCTION_58_0();
      *(v0 + 2760) = v42;
      *v42 = v43;
      OUTLINED_FUNCTION_164_1(v42);
      OUTLINED_FUNCTION_189_0();
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_125_1(v35, v0 + 1392);
    sub_231E100E0();
    sub_231E103F0();
    OUTLINED_FUNCTION_14_9();
    v36 = OUTLINED_FUNCTION_54_7();
    v37(v36);
    swift_endAccess();
    swift_getKeyPath();
    swift_retain_n();
    v38 = OUTLINED_FUNCTION_225_0();
    OUTLINED_FUNCTION_390();

    if (v38)
    {
      if (v31)
      {

        v39 = OUTLINED_FUNCTION_48();
        sub_231D24924(v39, v40, v38);

        swift_bridgeObjectRelease_n();
LABEL_19:
        OUTLINED_FUNCTION_4_12(*(v0 + 2048) + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isFromVIP, v0 + 1968);
        OUTLINED_FUNCTION_426();
        sub_231E10260();
        swift_endAccess();
        goto LABEL_20;
      }
    }

    else
    {
      sub_231D93634();
    }

    goto LABEL_19;
  }

  v27 = OUTLINED_FUNCTION_315();
  OUTLINED_FUNCTION_302_0(v27);
  v28 = swift_task_alloc();
  *(v0 + 2744) = v28;
  *v28 = v0;
  OUTLINED_FUNCTION_164_1(v28);
  OUTLINED_FUNCTION_13_0();
LABEL_21:
  OUTLINED_FUNCTION_402();

  return sub_231DDB61C();
}

uint64_t sub_231D82900()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231D82A1C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  if (sub_231E11A20())
  {
    v1 = OUTLINED_FUNCTION_315();
    OUTLINED_FUNCTION_302_0(v1);
    v2 = swift_task_alloc();
    v0[343] = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_164_1(v2);
    OUTLINED_FUNCTION_13_0();
    goto LABEL_11;
  }

  v3 = v0[331];
  v4 = v0[323];
  v5 = v0[278];
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v6 = OUTLINED_FUNCTION_11_5();
  v4(v6);
  v7 = sub_231CE2244();
  v8 = OUTLINED_FUNCTION_25();
  v9 = v3(v8);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_125_1(v9, (v0 + 174));
    sub_231E100E0();
    sub_231E103F0();
    OUTLINED_FUNCTION_14_9();
    v10 = OUTLINED_FUNCTION_54_7();
    v11(v10);
    swift_endAccess();
    swift_getKeyPath();
    swift_retain_n();
    v12 = OUTLINED_FUNCTION_225_0();
    OUTLINED_FUNCTION_390();

    if (v12)
    {
      if (v5)
      {

        v13 = OUTLINED_FUNCTION_48();
        sub_231D24924(v13, v14, v12);

        swift_bridgeObjectRelease_n();
LABEL_9:
        OUTLINED_FUNCTION_4_12(v0[256] + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isFromVIP, (v0 + 246));
        OUTLINED_FUNCTION_426();
        sub_231E10260();
        swift_endAccess();
        goto LABEL_10;
      }
    }

    else
    {
      sub_231D93634();
    }

    goto LABEL_9;
  }

LABEL_10:
  OUTLINED_FUNCTION_378();
  v15 = swift_task_alloc();
  OUTLINED_FUNCTION_478(v15);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  v0[345] = v16;
  *v16 = v17;
  OUTLINED_FUNCTION_164_1(v16);
  OUTLINED_FUNCTION_189_0();
LABEL_11:
  OUTLINED_FUNCTION_66_0();

  return sub_231DDB61C();
}

uint64_t sub_231D82CA0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v8 = OUTLINED_FUNCTION_4_18();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_231D82DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_226_0();
  OUTLINED_FUNCTION_239_0();
  v42 = OUTLINED_FUNCTION_144_2();
  sub_231DA1BC8(v42, v43, v44, v45);

  v46 = OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_20_12(v46);

  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_206();

  return v49(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_231D82F60()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v8 = OUTLINED_FUNCTION_4_18();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_231D83604()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_12_0();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_231D83720()
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  v1 = *(v0 + 528);
  *(v0 + 16) = v1;
  v2 = v0 + 16;
  v38 = *(v0 + 2648);
  v3 = *(v0 + 2584);
  v4 = *(v0 + 2048);
  memcpy((v0 + 17), (v0 + 529), 0x7FuLL);
  v5 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isUrgent;
  OUTLINED_FUNCTION_4_12(v4 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isUrgent, v0 + 1920);
  *(v4 + v5) = v1;
  v6 = OUTLINED_FUNCTION_102_0();
  v3(v6);
  v7 = sub_231CE2244();
  v8 = OUTLINED_FUNCTION_33();
  v38(v8);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_254_0();
    v9(*(v0 + 2144));
    OUTLINED_FUNCTION_70();
    swift_storeEnumTagMultiPayload();
    memcpy((v0 + 144), (v0 + 16), 0x80uLL);
    v1 = *(v0 + 144);
    sub_231D8C62C();
    OUTLINED_FUNCTION_4_19();
    sub_231DA1DDC();
  }

  v10 = *(v0 + 2648);
  OUTLINED_FUNCTION_254_0();
  v11 = OUTLINED_FUNCTION_46_0();
  v12(v11);
  v13 = sub_231CE2244();
  v14 = OUTLINED_FUNCTION_140_0();
  v10(v14);
  if (v13 & 1) != 0 || v1 != 2 && (v1 & 1) != 0 || (__swift_project_boxed_opaque_existential_0((*(v0 + 2064) + 336), *(*(v0 + 2064) + 360)), OUTLINED_FUNCTION_458(), v15 = OUTLINED_FUNCTION_33(), (v16(v15)))
  {
    v17 = sub_231E11A20();
    v18 = *(v0 + 2576);
    v19 = *(v0 + 2064);
    if ((v17 & 1) == 0)
    {
      v25 = *(v0 + 2056);
      v26 = swift_task_alloc();
      *(v0 + 2816) = v26;
      v26[2] = v18;
      v26[3] = v19;
      v26[4] = v25;
      swift_task_alloc();
      OUTLINED_FUNCTION_58_0();
      *(v0 + 2824) = v27;
      *v27 = v28;
      OUTLINED_FUNCTION_164_1(v27);
      OUTLINED_FUNCTION_188_0();
      goto LABEL_12;
    }

    v20 = *(v0 + 2048);
    v21 = swift_task_alloc();
    *(v0 + 2800) = v21;
    v23 = *(v0 + 2664);
    v22 = *(v0 + 2680);
    *(v21 + 16) = v19;
    *(v21 + 24) = v2;
    *(v21 + 32) = v20;
    *(v21 + 40) = v18;
    *(v21 + 48) = v23;
    *(v21 + 64) = v22;
    v24 = swift_task_alloc();
    *(v0 + 2808) = v24;
    *v24 = v0;
    OUTLINED_FUNCTION_164_1(v24);
  }

  else
  {
    v29 = *(v0 + 2576);
    v30 = *(v0 + 2064);
    v31 = *(v0 + 2048);
    v32 = swift_task_alloc();
    *(v0 + 2784) = v32;
    v34 = *(v0 + 2664);
    v33 = *(v0 + 2680);
    *(v32 + 16) = v30;
    *(v32 + 24) = v2;
    *(v32 + 32) = v31;
    *(v32 + 40) = v29;
    *(v32 + 48) = v34;
    *(v32 + 64) = v33;
    v35 = swift_task_alloc();
    *(v0 + 2792) = v35;
    *v35 = v0;
    OUTLINED_FUNCTION_164_1(v35);
  }

  OUTLINED_FUNCTION_42_9();
LABEL_12:
  OUTLINED_FUNCTION_35();

  return sub_231DDB61C();
}

uint64_t sub_231D83A70()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_12_0();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_231D83B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_226_0();
  OUTLINED_FUNCTION_239_0();
  v43 = OUTLINED_FUNCTION_144_2();
  sub_231DA1BC8(v43, v44, v45, v46);
  OUTLINED_FUNCTION_178((v42 + 1168));
  sub_231CD2C1C(v42 + 1168);

  v47 = OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_20_12(v47);

  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_206();

  return v50(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_231D83D48()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_12_0();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_231D83E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_226_0();
  OUTLINED_FUNCTION_239_0();
  v43 = OUTLINED_FUNCTION_144_2();
  sub_231DA1BC8(v43, v44, v45, v46);
  OUTLINED_FUNCTION_178((v42 + 656));
  sub_231CD2C1C(v42 + 656);

  v47 = OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_20_12(v47);

  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_206();

  return v50(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_231D84020()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v8 = OUTLINED_FUNCTION_4_18();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_231D84140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t (*a15)(uint64_t), uint64_t (*a16)(uint64_t), uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_166();
  a27 = v30;
  a28 = v31;
  a26 = v28;
  *(v28 + 2832) = *(v28 + 1992);
  *(v28 + 2840) = *(v28 + 2000);
  v32 = *(v28 + 2008);
  *(v28 + 2010) = v32;
  OUTLINED_FUNCTION_101_6();
  v34 = *(v28 + 2048);
  if (v32 != 255)
  {
    v33(*(v28 + 2488));

    v35 = OUTLINED_FUNCTION_46_7();
    sub_231D26064(v35, v36, v37);
    v38 = sub_231E10E10();
    sub_231E11AF0();

    v39 = OUTLINED_FUNCTION_46_7();
    v42 = OUTLINED_FUNCTION_392(v39, v40, v41);
    v43 = *(v28 + 2560);
    v44 = *(v28 + 2488);
    v45 = *(v28 + 2456);
    v46 = *(v28 + 2448);
    if (v42)
    {
      v129 = *(v28 + 2560);
      OUTLINED_FUNCTION_233_0();
      a17 = OUTLINED_FUNCTION_278_0();
      *v45 = 136446466;
      v47 = sub_231DDB1E8();
      sub_231CB5000(v47, v48, &a17);
      OUTLINED_FUNCTION_334();
      *(v45 + 4) = v46;
      OUTLINED_FUNCTION_385();
      v49 = OUTLINED_FUNCTION_46_7();
      sub_231CFFD6C(v49, v50, v51);
      sub_231CB5000(v52, v53, &a17);
      OUTLINED_FUNCTION_334();
      *(v45 + 14) = v46;
      OUTLINED_FUNCTION_174_1(&dword_231CAE000, v54, v55, "%{public}s Ineligible for summarization (%{public}s)");
      OUTLINED_FUNCTION_281_0();
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_30_4();

      v56 = v129(v44, v46);
    }

    else
    {

      v69 = OUTLINED_FUNCTION_203_0();
      v56 = v43(v69);
    }

    v127 = *(v28 + 2576);
    v70 = *(v28 + 2048);
    v124 = *(v28 + 2664);
    v125 = *(v28 + 2680);
    OUTLINED_FUNCTION_51(v56, v28 + 1560);
    v71 = OUTLINED_FUNCTION_37_9();
    sub_231CC3500(v71, v72, v73);
    v74 = OUTLINED_FUNCTION_80();
    sub_231CBA16C(v74, v75, v46);
    v76 = swift_task_alloc();
    *(v28 + 2848) = v76;
    v77 = OUTLINED_FUNCTION_351(v76);
    *(v77 + 48) = v28 + 16;
    *(v77 + 56) = v70;
    *(v77 + 64) = v127;
    *(v77 + 72) = v124;
    *(v77 + 88) = v125;
    v78 = swift_task_alloc();
    *(v28 + 2856) = v78;
    *v78 = v28;
    OUTLINED_FUNCTION_164_1(v78);
    OUTLINED_FUNCTION_13_0();
    goto LABEL_26;
  }

  v33(*(v28 + 2480));

  v57 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_70_0();
  v58 = OUTLINED_FUNCTION_91_0();
  v59 = *(v28 + 2560);
  if (v58)
  {
    v130 = *(v28 + 2560);
    OUTLINED_FUNCTION_221_0();
    a17 = OUTLINED_FUNCTION_17_1();
    *v34 = 136446210;
    v60 = sub_231DDB1E8();
    sub_231CB5000(v60, v61, &a17);
    OUTLINED_FUNCTION_87_0();
    *(v34 + 4) = v29;
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v62, v63, v64, v65, v66, 0xCu);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_11();

    v67 = OUTLINED_FUNCTION_9_4();
    v68 = v130(v67);
  }

  else
  {

    v79 = OUTLINED_FUNCTION_9_4();
    v68 = v59(v79);
  }

  v80 = *(v28 + 2352);
  OUTLINED_FUNCTION_125_1(v68, v28 + 1608);
  sub_231E10080();
  swift_endAccess();
  v81 = OUTLINED_FUNCTION_91_1();
  OUTLINED_FUNCTION_8_17(v81, v82, v80);
  if (v83)
  {
    goto LABEL_18;
  }

  sub_231DA3AF0();
  v84 = OUTLINED_FUNCTION_48();
  if (v85(v84) != *MEMORY[0x277D42288])
  {
    (*(*(v28 + 2360) + 8))(*(v28 + 2400), *(v28 + 2352));
LABEL_18:
    sub_231CC154C(*(v28 + 2408), &qword_27DD73F98, &unk_231E170E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_231E138E0;
    OUTLINED_FUNCTION_125_1(v108, v28 + 1704);
    *(v108 + 32) = sub_231E10000();
    *(v108 + 40) = v109;
    swift_endAccess();
    goto LABEL_21;
  }

  v86 = *(v28 + 2400);
  (*(*(v28 + 2360) + 96))(v86, *(v28 + 2352));
  v87 = *v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_231E138E0;
  OUTLINED_FUNCTION_125_1(v88, v28 + 1848);
  *(v88 + 32) = sub_231E10000();
  *(v88 + 40) = v89;
  swift_endAccess();
  v90 = *(v87 + 16);
  if (v90)
  {
    v123 = v88;
    v91 = *(v28 + 2328);
    a17 = MEMORY[0x277D84F90];
    v92 = OUTLINED_FUNCTION_252_0();
    sub_231CC686C(v92, v93, v94);
    v95 = a17;
    v128 = *(v91 + 16);
    OUTLINED_FUNCTION_79();
    v97 = v87 + v96;
    v126 = *(v91 + 72);
    do
    {
      v98 = OUTLINED_FUNCTION_207();
      v128(v98);
      v99 = sub_231E10000();
      v101 = v100;
      v102 = OUTLINED_FUNCTION_258();
      v103(v102);
      a17 = v95;
      v105 = *(v95 + 16);
      v104 = *(v95 + 24);
      if (v105 >= v104 >> 1)
      {
        v107 = OUTLINED_FUNCTION_2_12(v104);
        sub_231CC686C(v107, v105 + 1, 1);
        v95 = a17;
      }

      *(v95 + 16) = v105 + 1;
      v106 = v95 + 16 * v105;
      *(v106 + 32) = v99;
      *(v106 + 40) = v101;
      v97 += v126;
      --v90;
    }

    while (v90);

    v88 = v123;
  }

  else
  {

    v95 = MEMORY[0x277D84F90];
  }

  v110 = *(v28 + 2408);
  a17 = v88;
  sub_231D90D14(v95);
  v108 = a17;
  sub_231CC154C(v110, &qword_27DD73F98, &unk_231E170E0);
LABEL_21:
  *(v28 + 2864) = v108;
  v111 = sub_231CC8454();
  if ((v111 & 1) == 0)
  {
    OUTLINED_FUNCTION_378();
    v119 = swift_task_alloc();
    *(v28 + 2888) = v119;
    OUTLINED_FUNCTION_107_5(v119);
    swift_task_alloc();
    OUTLINED_FUNCTION_58_0();
    *(v28 + 2896) = v120;
    *v120 = v121;
    v120[1] = sub_231D84D58;
    OUTLINED_FUNCTION_133_2();
LABEL_26:
    OUTLINED_FUNCTION_95_1();

    return sub_231DDB61C();
  }

  v112 = *(v28 + 2632);
  OUTLINED_FUNCTION_125_1(v111, v28 + 1824);
  sub_231E10220();
  swift_endAccess();
  sub_231E10200();
  OUTLINED_FUNCTION_260_0();
  *(v28 + 2872) = v113;
  v114 = OUTLINED_FUNCTION_25();
  v112(v114);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v28 + 2880) = v115;
  *v115 = v116;
  v115[1] = sub_231D84B60;
  OUTLINED_FUNCTION_132_1();
  OUTLINED_FUNCTION_95_1();

  return sub_231D8D948();
}

uint64_t sub_231D84878()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_12_0();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_231D84994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_226_0();
  OUTLINED_FUNCTION_239_0();
  OUTLINED_FUNCTION_387();
  sub_231CBA16C(v43, v44, *(v42 + 2010));
  v45 = OUTLINED_FUNCTION_34_11();
  sub_231DA1BC8(v45, v46, v47, v48);
  OUTLINED_FUNCTION_178((v42 + 1040));
  sub_231CD2C1C(v42 + 1040);

  v49 = OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_20_12(v49);

  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_206();

  return v52(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_231D84B60()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231D84C6C()
{
  OUTLINED_FUNCTION_288_0();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_0_31();
  sub_231DA29CC(v5, v6);
  v7 = *(v0 + 2864);
  v8 = OUTLINED_FUNCTION_418();
  *(v0 + 2912) = v8;
  v10 = *(v0 + 2664);
  v9 = *(v0 + 2680);
  *(v8 + 16) = v3;
  *(v8 + 24) = v2;
  *(v8 + 32) = v0 + 16;
  *(v8 + 40) = v4;
  *(v8 + 48) = v7;
  *(v8 + 56) = v1;
  *(v8 + 64) = v10;
  *(v8 + 80) = v9;
  v11 = swift_task_alloc();
  *(v0 + 2920) = v11;
  *v11 = v0;
  OUTLINED_FUNCTION_164_1(v11);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_232_0();

  return sub_231DDB61C();
}

uint64_t sub_231D84D58()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 2904) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231D84E58()
{
  OUTLINED_FUNCTION_288_0();
  OUTLINED_FUNCTION_47_0();
  v5 = *(v0 + 2128);
  OUTLINED_FUNCTION_0_31();
  sub_231DA29CC(v6, v5);
  OUTLINED_FUNCTION_503();
  v7 = sub_231E0F5F0();
  if (OUTLINED_FUNCTION_161_1(v7) == 1)
  {
    sub_231CC154C(*(v0 + 2096), &qword_27DD74470, &qword_231E17120);
  }

  else
  {
    v2 = *(v0 + 2080);
    v1 = *(v0 + 2072);
    sub_231E0F5C0();
    OUTLINED_FUNCTION_56_6();
    v8 = OUTLINED_FUNCTION_140_0();
    v9(v8);
    sub_231E0F5D0();
    v10 = OUTLINED_FUNCTION_40_7();
    v11(v10);
  }

  OUTLINED_FUNCTION_4_12(*(v0 + 2048) + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_summaryTopLineLength, v0 + 1776);
  OUTLINED_FUNCTION_449();
  v12 = *(v0 + 2864);
  v13 = OUTLINED_FUNCTION_418();
  *(v0 + 2912) = v13;
  v15 = *(v0 + 2664);
  v14 = *(v0 + 2680);
  *(v13 + 16) = v3;
  *(v13 + 24) = v2;
  *(v13 + 32) = v0 + 16;
  *(v13 + 40) = v4;
  *(v13 + 48) = v12;
  *(v13 + 56) = v1;
  *(v13 + 64) = v15;
  *(v13 + 80) = v14;
  v16 = swift_task_alloc();
  *(v0 + 2920) = v16;
  *v16 = v0;
  OUTLINED_FUNCTION_164_1(v16);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_232_0();

  return sub_231DDB61C();
}

uint64_t sub_231D85020()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v8 = OUTLINED_FUNCTION_4_18();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_231D85158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_226_0();
  OUTLINED_FUNCTION_239_0();
  OUTLINED_FUNCTION_101_6();
  v45(v42[309]);

  v46 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_116_0();
  v47 = OUTLINED_FUNCTION_91_0();
  v48 = v42[320];
  if (v47)
  {
    OUTLINED_FUNCTION_221_0();
    a38 = OUTLINED_FUNCTION_17_1();
    *v43 = 136446210;
    v49 = sub_231DDB1E8();
    OUTLINED_FUNCTION_343(v49, v50);
    OUTLINED_FUNCTION_87_0();
    *(v43 + 4) = v44;
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v51, v52, v53, v54, v55, 0xCu);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_11();
  }

  v56 = OUTLINED_FUNCTION_9_4();
  v48(v56);
  v76 = v42[335];
  v77 = v42[336];
  v74 = v42[333];
  v75 = v42[334];
  v78 = v42[331];
  v79 = v42[332];
  v73 = v42[324];
  v57 = v42[323];
  v58 = v42[322];
  v80 = v42[321];
  v59 = v42[278];
  v60 = v42[276];
  v61 = v42[258];
  sub_231D48194();
  __swift_project_boxed_opaque_existential_0((v61 + 232), *(v61 + 256));
  v57(v59, v58, v60);
  OUTLINED_FUNCTION_115_5();
  v62();
  sub_231DA1BC8(v74, v75, v76, v77);
  v63 = OUTLINED_FUNCTION_116_3();
  v78(v63);
  OUTLINED_FUNCTION_3_24();
  sub_231DA1DDC();
  OUTLINED_FUNCTION_178(v42 + 98);
  sub_231CD2C1C((v42 + 98));

  OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_122_2();

  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_206();

  return v66(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, v73, v74, v75, v76, v77, v78, v79, v80, a38, a39, a40, a41, a42);
}

uint64_t sub_231D85488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_57_0();
  v11 = v10[323];
  v12 = v10[322];
  OUTLINED_FUNCTION_178(v10 + 34);
  OUTLINED_FUNCTION_270_0(v12, (v10 + 219));
  sub_231E100A0();
  swift_endAccess();
  sub_231D147C8();
  v10[366] = v13;

  OUTLINED_FUNCTION_128_2();
  v11();
  OUTLINED_FUNCTION_70();
  swift_storeEnumTagMultiPayload();
  v14 = swift_task_alloc();
  v10[367] = v14;
  *v14 = v10;
  v14[1] = sub_231D855BC;
  OUTLINED_FUNCTION_27_1(v10[363]);
  OUTLINED_FUNCTION_44();

  return sub_231D8FA3C(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_231D855BC()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  *(v6 + 2011) = v5;

  OUTLINED_FUNCTION_4_19();
  sub_231DA1DDC();
  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231D85700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_226_0();
  OUTLINED_FUNCTION_239_0();
  OUTLINED_FUNCTION_387();

  v44 = OUTLINED_FUNCTION_34_11();
  sub_231DA1BC8(v44, v45, v46, v47);
  OUTLINED_FUNCTION_178((v42 + 912));
  sub_231CD2C1C(v42 + 912);

  OUTLINED_FUNCTION_122_2();
  HIDWORD(a38) = *(v42 + 2011);

  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_206();

  return v50(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

void sub_231D858FC()
{
  OUTLINED_FUNCTION_118();
  v27 = v1;
  OUTLINED_FUNCTION_95_5();
  sub_231E106A0();
  OUTLINED_FUNCTION_24();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_241_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  OUTLINED_FUNCTION_47(v3);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_253_0();
  sub_231E119F0();
  OUTLINED_FUNCTION_24();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_63_6();
  sub_231E10520();
  if (!v6)
  {
    sub_231E10690();
  }

  sub_231E10690();
  sub_231CC8990(v0);
  OUTLINED_FUNCTION_28_2(v0);
  if (v7)
  {
    sub_231D1221C();
    OUTLINED_FUNCTION_28_2(v0);
    if (!v7)
    {
      sub_231CC154C(v0, &qword_27DD75180, &qword_231E13690);
    }
  }

  else
  {
    OUTLINED_FUNCTION_150_1();
    v11(v8, v9, v10);
  }

  OUTLINED_FUNCTION_471();
  v12 = OUTLINED_FUNCTION_102_0();
  v13(v12);
  OUTLINED_FUNCTION_142_2();
  v15 = v14 & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v17 = OUTLINED_FUNCTION_259_0(v16);
  v18(v17);
  *(v0 + v15) = v27;

  v19 = OUTLINED_FUNCTION_384();
  sub_231D7B818(v19, v20, v21, v22, v23, v24, 0xE800000000000000);
  OUTLINED_FUNCTION_507();

  v25 = OUTLINED_FUNCTION_294_0();
  v26(v25);
  OUTLINED_FUNCTION_113();
}

uint64_t sub_231D85B94()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_103_3(v1, v2, v3, v4);
  v5 = sub_231E106A0();
  v0[6] = v5;
  OUTLINED_FUNCTION_6(v5);
  v0[7] = v6;
  v0[8] = *(v7 + 64);
  v0[9] = OUTLINED_FUNCTION_55();
  v8 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231D85C3C()
{
  OUTLINED_FUNCTION_274_0();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_89_5();
  sub_231D11F64();
  v3 = OUTLINED_FUNCTION_50_6();
  v4(v3);
  OUTLINED_FUNCTION_49_9();
  v5 = OUTLINED_FUNCTION_435();
  v6 = OUTLINED_FUNCTION_38_9(v5);
  v7(v6);
  *(v0 + v2) = v1;
  OUTLINED_FUNCTION_220_0();
  swift_retain_n();

  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_290_0(v8);
  *v9 = v10;
  v9[1] = sub_231DA48C8;
  OUTLINED_FUNCTION_64_5(v9, &unk_231E1E2B0);
  OUTLINED_FUNCTION_273_0();

  return sub_231D6DB48(v11, v12, v13, v14, v15);
}

uint64_t sub_231D85D4C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_102_4(v1, v2, v3, v4);
  v5 = sub_231E0F950();
  v0[9] = v5;
  OUTLINED_FUNCTION_6(v5);
  v0[10] = v6;
  v7 = OUTLINED_FUNCTION_55();
  v8 = OUTLINED_FUNCTION_434(v7);
  v0[12] = v8;
  OUTLINED_FUNCTION_6(v8);
  v0[13] = v9;
  v0[14] = OUTLINED_FUNCTION_55();
  v10 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231D85E30()
{
  OUTLINED_FUNCTION_29();
  v1 = OUTLINED_FUNCTION_277_0();
  OUTLINED_FUNCTION_65_6(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 128) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_325(v2);
  OUTLINED_FUNCTION_62_4();

  return sub_231DDB61C();
}

uint64_t sub_231D85EE4()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_61_6(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_381(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_48_8(v2);

  return sub_231D85F70();
}

uint64_t sub_231D85F70()
{
  OUTLINED_FUNCTION_18();
  v1[223] = v0;
  v1[222] = v2;
  v1[221] = v3;
  v1[220] = v4;
  v5 = sub_231E0F5E0();
  v1[224] = v5;
  OUTLINED_FUNCTION_6(v5);
  v1[225] = v6;
  v1[226] = OUTLINED_FUNCTION_55();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74470, &qword_231E17120);
  OUTLINED_FUNCTION_47(v7);
  v1[227] = OUTLINED_FUNCTION_55();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74510, &qword_231E1E2D0);
  OUTLINED_FUNCTION_47(v8);
  v1[228] = OUTLINED_FUNCTION_55();
  v9 = type metadata accessor for SummarizerResult(0);
  v1[229] = v9;
  OUTLINED_FUNCTION_47(v9);
  v1[230] = OUTLINED_FUNCTION_69();
  v1[231] = swift_task_alloc();
  v1[232] = swift_task_alloc();
  v10 = type metadata accessor for EntityKind(0);
  v1[233] = v10;
  OUTLINED_FUNCTION_47(v10);
  v1[234] = OUTLINED_FUNCTION_55();
  v11 = sub_231E10E30();
  v1[235] = v11;
  OUTLINED_FUNCTION_6(v11);
  v1[236] = v12;
  v1[237] = OUTLINED_FUNCTION_69();
  v1[238] = swift_task_alloc();
  v1[239] = swift_task_alloc();
  v1[240] = swift_task_alloc();
  v1[241] = swift_task_alloc();
  v1[242] = swift_task_alloc();
  v1[243] = swift_task_alloc();
  v13 = sub_231E106A0();
  v1[244] = v13;
  OUTLINED_FUNCTION_6(v13);
  v1[245] = v14;
  v1[246] = OUTLINED_FUNCTION_55();
  v15 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_231D861B8()
{
  v87 = v0;
  v1 = *(v0 + 1960);
  v2 = *(v0 + 1952);
  v3 = *(v0 + 1760);
  v4 = swift_allocBox();
  *(v0 + 1976) = v4;
  *(v0 + 1984) = v5;
  v6 = *(v1 + 16);
  *(v0 + 1992) = v6;
  *(v0 + 2000) = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v5, v3, v2);
  *(v0 + 1392) = 0u;
  *(v0 + 1408) = 0u;
  v7 = OUTLINED_FUNCTION_109_5();
  v8 = (v6)(v7);
  LOBYTE(v3) = sub_231D6DA98(v8);
  v11 = *(v1 + 8);
  v10 = v1 + 8;
  v9 = v11;
  *(v0 + 2008) = v11;
  *(v0 + 2016) = v10 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12 = OUTLINED_FUNCTION_48();
  v11(v12);
  if (v3)
  {
    sub_231E10580();
    if (v13)
    {
      if (sub_231E105F0())
      {
        v81 = v10;
        v82 = v6;
        v83 = v9;
        v84 = v4;

        OUTLINED_FUNCTION_150_1();
        v17 = OUTLINED_FUNCTION_423(v14, v15, v16);
        v19 = v18;
        v21 = v20;
        v23 = v22;
        *(v0 + 1392) = v17;
        *(v0 + 1400) = v18;
        *(v0 + 1408) = v20;
        *(v0 + 1416) = v22;
        goto LABEL_6;
      }
    }

    sub_231CB4EEC();
    v66 = OUTLINED_FUNCTION_82();
    v67(v66);
    v68 = sub_231E10E10();
    v69 = sub_231E11AE0();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = OUTLINED_FUNCTION_16_1();
      *v70 = 0;
      _os_log_impl(&dword_231CAE000, v68, v69, "Cannot open 3rd party Spotlight index", v70, 2u);
      OUTLINED_FUNCTION_223_0();
    }

    v71 = OUTLINED_FUNCTION_33();
    v72(v71);
LABEL_22:

    OUTLINED_FUNCTION_12_14();

    OUTLINED_FUNCTION_18_6();
    OUTLINED_FUNCTION_403();

    __asm { BRAA            X2, X16 }
  }

  v81 = v10;
  v82 = v6;
  v83 = v9;
  v84 = v4;
  v17 = 0;
  v19 = 0;
  v21 = 0;
  v23 = 0;
LABEL_6:
  *(v0 + 2048) = v23;
  *(v0 + 2040) = v21;
  *(v0 + 2032) = v19;
  *(v0 + 2024) = v17;
  *(v0 + 2056) = sub_231E10690();
  *(v0 + 2064) = v24;
  sub_231E10660();
  v25 = *(v0 + 1888);
  if (!v26)
  {
    v41 = *(v0 + 1896);

    sub_231CB4EEC();
    OUTLINED_FUNCTION_397();
    v42(v41);
    v43 = sub_231E10E10();
    v44 = sub_231E11AE0();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = OUTLINED_FUNCTION_16_1();
      *v45 = 0;
      _os_log_impl(&dword_231CAE000, v43, v44, "Cannot handle message with missing domain id", v45, 2u);
      OUTLINED_FUNCTION_30();
    }

    v46 = OUTLINED_FUNCTION_135_1();
    v47(v46);
    sub_231DA1BC8(v17, v19, v21, v23);
    goto LABEL_22;
  }

  v27 = *(v0 + 1936);

  *(v0 + 2072) = sub_231CB4EEC();
  *(v0 + 2080) = *(v25 + 16);
  OUTLINED_FUNCTION_322();
  *(v0 + 2088) = v28;
  v29(v27);

  v30 = sub_231E10E10();
  v31 = sub_231E11AF0();

  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v0 + 1936);
  v34 = *(v0 + 1888);
  v35 = *(v0 + 1880);
  if (v32)
  {
    v80 = *(v0 + 1880);
    v36 = OUTLINED_FUNCTION_9_1();
    v79 = v33;
    v37 = OUTLINED_FUNCTION_67();
    v86 = v37;
    *v36 = 136446210;
    v38 = sub_231DDB1E8();
    sub_231CB5000(v38, v39, &v86);
    OUTLINED_FUNCTION_117_0();
    *(v36 + 4) = v81;
    _os_log_impl(&dword_231CAE000, v30, v31, "%{public}s Processing", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    OUTLINED_FUNCTION_49_2();
    OUTLINED_FUNCTION_223_0();

    v40 = *(v34 + 8);
    v40(v79, v80);
  }

  else
  {

    v40 = *(v34 + 8);
    v40(v33, v35);
  }

  *(v0 + 2096) = v40;
  v48 = *(v0 + 1968);
  v49 = *(v0 + 1952);
  v50 = OUTLINED_FUNCTION_109_5();
  v51 = v82(v50);
  v52 = sub_231D6DA98(v51);
  v53 = OUTLINED_FUNCTION_48();
  v83(v53);
  if ((v52 & 1) == 0)
  {
    v54 = *(sub_231E104C0() + 16);

    if (v54)
    {
      v55 = *(v0 + 1784);
      v56 = *(v0 + 1768);
      sub_231D12170();
      OUTLINED_FUNCTION_299_0();
      v57 = swift_allocObject();
      *(v0 + 2104) = v57;
      v57[2] = v84;
      v57[3] = v56;
      v57[4] = v55;
      OUTLINED_FUNCTION_220_0();
      swift_retain_n();

      v58 = swift_task_alloc();
      *(v0 + 2112) = v58;
      *v58 = v0;
      v58[1] = sub_231D868F4;
      OUTLINED_FUNCTION_84_4(v58, &unk_231E1E2E0);
      OUTLINED_FUNCTION_403();

      return sub_231D6DB48(v59, v60, v61, v62, v63);
    }

    v48 = *(v0 + 1768);
    v49 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_captioningResult;
    OUTLINED_FUNCTION_4_12(v48 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_captioningResult, v0 + 1456);
    *(v48 + v49) = 3;
  }

  v85 = *(v0 + 2056);
  OUTLINED_FUNCTION_238_0();
  v75 = swift_task_alloc();
  *(v0 + 2120) = v75;
  *(v75 + 16) = v48;
  *(v75 + 24) = v85;
  *(v75 + 40) = v49;
  *(v75 + 48) = v52;
  v76 = swift_task_alloc();
  *(v0 + 2128) = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74FB0, &qword_231E1D3F0);
  OUTLINED_FUNCTION_136_1();
  *v76 = v77;
  OUTLINED_FUNCTION_131_2();
  OUTLINED_FUNCTION_403();

  return sub_231DDB61C();
}

uint64_t sub_231D868F4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231D86A10()
{
  OUTLINED_FUNCTION_50_0();
  v8 = *(v2 + 2056);
  OUTLINED_FUNCTION_238_0();
  v4 = swift_task_alloc();
  *(v2 + 2120) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v8;
  *(v4 + 40) = v0;
  *(v4 + 48) = v3;
  v5 = swift_task_alloc();
  *(v2 + 2128) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74FB0, &qword_231E1D3F0);
  OUTLINED_FUNCTION_136_1();
  *v5 = v6;
  OUTLINED_FUNCTION_131_2();

  return sub_231DDB61C();
}

uint64_t sub_231D86AD4()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v8 = OUTLINED_FUNCTION_4_18();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_231D86C00()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();
  *(v0 + 2136) = *(v0 + 1752);
  if (sub_231E11A20())
  {
    v1 = *(v0 + 1984);
    v2 = *(v0 + 1784);
    v3 = *(v0 + 1768);

    v4 = swift_task_alloc();
    *(v0 + 2144) = v4;
    v4[2] = v2;
    v4[3] = v3;
    v4[4] = v1;
    v4[5] = v0 + 1392;
    v5 = swift_task_alloc();
    *(v0 + 2152) = v5;
    *v5 = v0;
    OUTLINED_FUNCTION_208_0(v5);
    OUTLINED_FUNCTION_13_0();
  }

  else
  {
    v6 = *(v0 + 2016);
    v7 = *(v0 + 2008);
    v8 = *(v0 + 1992);
    OUTLINED_FUNCTION_81();
    swift_beginAccess();
    v9 = OUTLINED_FUNCTION_102_0();
    v10 = v8(v9);
    v11 = sub_231D6DA98(v10);
    v12 = OUTLINED_FUNCTION_33();
    v7(v12);
    if (v11)
    {
      v13 = *(v0 + 1992);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E30, &qword_231E1CB80);
      OUTLINED_FUNCTION_172_1();
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_231E138E0;
      OUTLINED_FUNCTION_134_1();
      v15 = v13();
    }

    else
    {
      OUTLINED_FUNCTION_183_0();
      v16 = OUTLINED_FUNCTION_46_0();
      v17(v16);
      v18 = OUTLINED_FUNCTION_59_0();
      v14 = sub_231DF4938(v18, v19);
      v20 = OUTLINED_FUNCTION_140_0();
      v15 = v6(v20);
    }

    *(v0 + 2160) = v14;
    v21 = *(v14 + 16);
    v22 = *(v0 + 1768) + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_depth;
    OUTLINED_FUNCTION_51(v15, v0 + 1624);
    *v22 = v21;
    *(v22 + 8) = 0;
    v23 = MEMORY[0x277D84F90];
    v63 = v14;
    if (v21)
    {
      v24 = *(v0 + 1960);
      v67 = MEMORY[0x277D84F90];

      OUTLINED_FUNCTION_422();
      v25 = v67;
      OUTLINED_FUNCTION_79();
      v27 = v14 + v26;
      v64 = *(v24 + 72);
      v28 = v21;
      do
      {
        v29 = *(v0 + 2008);
        OUTLINED_FUNCTION_348();
        v30 = *(v0 + 1952);
        v31 = OUTLINED_FUNCTION_181();
        v32(v31);
        sub_231E10640();
        v33 = sub_231E116F0();

        v34 = OUTLINED_FUNCTION_301_0();
        v29(v34);
        v35 = *(v67 + 16);
        OUTLINED_FUNCTION_456();
        if (v37)
        {
          OUTLINED_FUNCTION_2_12(v36);
          OUTLINED_FUNCTION_291();
          sub_231D1C82C(v38, v39, v40);
        }

        *(v67 + 16) = v30;
        *(v67 + 8 * v35 + 32) = v33;
        v27 += v64;
        --v28;
      }

      while (v28);
      v14 = v63;
      v23 = MEMORY[0x277D84F90];
    }

    else
    {

      v25 = MEMORY[0x277D84F90];
    }

    OUTLINED_FUNCTION_4_12(OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_bodyLengths + *(v0 + 1768), v0 + 1600);
    sub_231D90C48(v25);
    if (v21)
    {
      v41 = *(v0 + 1960);
      OUTLINED_FUNCTION_422();
      v42 = v23;
      OUTLINED_FUNCTION_79();
      v44 = v14 + v43;
      v65 = *(v41 + 72);
      do
      {
        v45 = *(v0 + 2008);
        OUTLINED_FUNCTION_348();
        v46 = OUTLINED_FUNCTION_181();
        v47(v46);
        sub_231E104C0();
        sub_231D14A1C();
        v49 = v48;

        v50 = OUTLINED_FUNCTION_301_0();
        v45(v50);
        v52 = *(v42 + 16);
        v51 = *(v42 + 24);
        if (v52 >= v51 >> 1)
        {
          OUTLINED_FUNCTION_2_12(v51);
          OUTLINED_FUNCTION_291();
          sub_231D1C82C(v53, v54, v55);
        }

        *(v42 + 16) = v52 + 1;
        *(v42 + 8 * v52 + 32) = v49;
        v44 += v65;
        --v21;
      }

      while (v21);
    }

    else
    {

      v42 = MEMORY[0x277D84F90];
    }

    v56 = *(v0 + 1984);
    v57 = *(v0 + 1768);
    v66 = *(v0 + 1776);
    OUTLINED_FUNCTION_4_12(v57 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_captionLengths, v0 + 1576);
    sub_231D90C48(v42);
    v58 = swift_task_alloc();
    *(v0 + 2168) = v58;
    v58[1].i64[0] = v56;
    v58[1].i64[1] = v57;
    v58[2] = vextq_s8(v66, v66, 8uLL);
    swift_task_alloc();
    OUTLINED_FUNCTION_58_0();
    *(v0 + 2176) = v59;
    *v59 = v60;
    OUTLINED_FUNCTION_208_0(v59);
  }

  OUTLINED_FUNCTION_37();

  return sub_231DDB61C();
}

uint64_t sub_231D870A0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v8 = OUTLINED_FUNCTION_4_18();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_231D871C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_170_1();

  OUTLINED_FUNCTION_12_14();
  OUTLINED_FUNCTION_117_5();

  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_37();

  return v18(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_231D872A4()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v8 = OUTLINED_FUNCTION_4_18();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_231D873C4()
{
  v1 = *(v0 + 1712);
  if (v1 == 255)
  {
    OUTLINED_FUNCTION_350();
    v38 = swift_task_alloc();
    *(v0 + 2184) = v38;
    OUTLINED_FUNCTION_107_5(v38);
    swift_task_alloc();
    OUTLINED_FUNCTION_58_0();
    *(v0 + 2192) = v39;
    *v39 = v40;
    OUTLINED_FUNCTION_208_0(v39);
    goto LABEL_20;
  }

  __dst = (v0 + 1040);
  v2 = v0 + 1392;
  v3 = *(v0 + 1696);
  v4 = *(v0 + 1704);
  OUTLINED_FUNCTION_352();
  v5(*(v0 + 1928));

  v6 = OUTLINED_FUNCTION_67_6();
  sub_231D26064(v6, v7, v8);
  v9 = sub_231E10E10();
  v10 = sub_231E11AF0();

  v11 = OUTLINED_FUNCTION_67_6();
  sub_231CBA16C(v11, v12, v13);
  v14 = os_log_type_enabled(v9, v10);
  v15 = *(v0 + 2096);
  v16 = *(v0 + 1928);
  v91 = *(v0 + 1888);
  v93 = *(v0 + 1880);
  if (v14)
  {
    v17 = OUTLINED_FUNCTION_98_0();
    OUTLINED_FUNCTION_68();
    OUTLINED_FUNCTION_459();
    *v17 = 136446466;
    v18 = sub_231DDB1E8();
    OUTLINED_FUNCTION_316(v18, v19, v20, v21, v22, v23, v24, v25, v16, v15, v89, v91, v93, __dst);
    OUTLINED_FUNCTION_87_0();
    *(v17 + 4) = v2;
    *(v17 + 12) = 2080;
    v26 = OUTLINED_FUNCTION_67_6();
    sub_231CFFD6C(v26, v27, v28);
    OUTLINED_FUNCTION_316(v29, v30, v31, v32, v33, v34, v35, v36, v85, v87, v0 + 1392, v92, v94, __dsta);
    OUTLINED_FUNCTION_87_0();
    *(v17 + 14) = v2;
    v2 = v90;
    _os_log_impl(&dword_231CAE000, v9, v10, "%{public}s Ineligible for urgency (%s)", v17, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_49_2();

    v37 = v88(v86, v95);
  }

  else
  {

    v37 = v15(v16, v93);
  }

  v41 = *(v0 + 1768) + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_ineligibleForUrgencyReason;
  OUTLINED_FUNCTION_51(v37, v0 + 1504);
  v42 = *v41;
  v43 = *(v41 + 8);
  *v41 = v3;
  *(v41 + 8) = v4;
  v44 = *(v41 + 16);
  *(v41 + 16) = v1;
  v45 = OUTLINED_FUNCTION_67_6();
  sub_231D26064(v45, v46, v47);
  v48 = OUTLINED_FUNCTION_67_6();
  sub_231CC3500(v48, v49, v50);
  sub_231CBA16C(v42, v43, v44);
  OUTLINED_FUNCTION_297_0(xmmword_231E13680);
  OUTLINED_FUNCTION_249_0();
  sub_231CE25FC(v55, v51, v52, v53, v54, v56);
  v57 = OUTLINED_FUNCTION_67_6();
  sub_231CBA16C(v57, v58, v59);
  memcpy(__dst, (v0 + 272), 0x80uLL);
  if (sub_231E11A20())
  {
    OUTLINED_FUNCTION_350();

    v60 = swift_task_alloc();
    *(v0 + 2200) = v60;
    v60[2] = v1;
    v60[3] = __dst;
    v60[4] = v3;
    v60[5] = v41;
    v60[6] = v2;
    v61 = swift_task_alloc();
    v62 = OUTLINED_FUNCTION_445(v61);
    *v62 = v63;
    OUTLINED_FUNCTION_197(v62);
LABEL_8:
    OUTLINED_FUNCTION_42_9();
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_183_0();
  v64 = OUTLINED_FUNCTION_82();
  v66 = v65(v64);
  v67 = sub_231D6DA98(v66);
  v68 = OUTLINED_FUNCTION_48();
  v4(v68);
  if ((v67 & 1) == 0)
  {
    sub_231DE8A04(0);
    OUTLINED_FUNCTION_14_9();
    v69 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v70 = OUTLINED_FUNCTION_48();
    v72 = sub_231CC8DEC(v70, v71);
    *(v0 + 2216) = v72;
    if (v72)
    {
      v73 = v72;
      v74 = OUTLINED_FUNCTION_499();
      v75 = [v73 objectForKey_];

      if (v75)
      {
        sub_231E11C80();
        swift_unknownObjectRelease();
      }

      else
      {
        v98 = 0u;
        v99 = 0u;
      }

      *(v0 + 1424) = v98;
      *(v0 + 1440) = v99;
      if (*(v0 + 1448))
      {
        v76 = (v0 + 1744);
        sub_231CC1784(0, &qword_2814CBD70, 0x277CCABB0);
        if (swift_dynamicCast())
        {
          v77 = *v76;
          v78 = [*v76 BOOLValue];

          if (!v78)
          {
            OUTLINED_FUNCTION_350();

            v83 = swift_task_alloc();
            *(v0 + 2224) = v83;
            v83[2] = v78;
            v83[3] = __dst;
            v83[4] = v74;
            v83[5] = v73;
            v83[6] = v2;
            v84 = swift_task_alloc();
            *(v0 + 2232) = v84;
            *v84 = v0;
            OUTLINED_FUNCTION_201(v84);
            goto LABEL_8;
          }
        }
      }

      else
      {

        sub_231CC154C(v0 + 1424, &dword_27DD741E0, &qword_231E15D70);
      }
    }
  }

  v79 = swift_task_alloc();
  OUTLINED_FUNCTION_341(v79);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 2248) = v80;
  *v80 = v81;
  OUTLINED_FUNCTION_196(v80);
  OUTLINED_FUNCTION_186_0();
LABEL_20:

  return sub_231DDB61C();
}

uint64_t sub_231D87934()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_12_0();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_231D87A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14)
{
  OUTLINED_FUNCTION_166();
  v52 = v14 + 1392;
  v15 = *(v14 + 1992);
  v16 = *(v14 + 1984);
  v17 = *(v14 + 1952);
  v18 = *(v14 + 1872);
  v51 = *(v14 + 1784);
  v19 = *(v14 + 1768);
  v20 = *(v14 + 400);
  *(v14 + 1040) = v20;
  memcpy((v14 + 1041), (v14 + 401), 0x7FuLL);
  v21 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isUrgent;
  OUTLINED_FUNCTION_4_12(v19 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isUrgent, v14 + 1672);
  *(v19 + v21) = v20;
  v22 = v16;
  v23 = v14 + 1040;
  v15(v18, v22, v17);
  OUTLINED_FUNCTION_389();
  swift_storeEnumTagMultiPayload();
  memcpy((v14 + 16), (v14 + 1040), 0x80uLL);
  sub_231D8C62C();
  OUTLINED_FUNCTION_4_19();
  sub_231DA1DDC();

  if (sub_231E11A20())
  {
    OUTLINED_FUNCTION_238_0();

    v24 = swift_task_alloc();
    *(v14 + 2200) = v24;
    v24[2] = v15;
    v24[3] = v23;
    v24[4] = v18;
    v24[5] = v51;
    v24[6] = v52;
    v25 = swift_task_alloc();
    v26 = OUTLINED_FUNCTION_445(v25);
    *v26 = v27;
    OUTLINED_FUNCTION_197(v26);
LABEL_3:
    OUTLINED_FUNCTION_42_9();
    goto LABEL_15;
  }

  v28 = *(v14 + 2016);
  OUTLINED_FUNCTION_183_0();
  v29 = OUTLINED_FUNCTION_46_0();
  v31 = v30(v29);
  v32 = sub_231D6DA98(v31);
  v33 = OUTLINED_FUNCTION_140_0();
  v17(v33);
  if ((v32 & 1) == 0)
  {
    sub_231DE8A04(0);
    OUTLINED_FUNCTION_3_12();
    v34 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v35 = OUTLINED_FUNCTION_140_0();
    v37 = sub_231CC8DEC(v35, v36);
    *(v14 + 2216) = v37;
    if (v37)
    {
      v38 = v37;
      v39 = OUTLINED_FUNCTION_499();
      v40 = [v38 objectForKey_];

      if (v40)
      {
        sub_231E11C80();
        swift_unknownObjectRelease();
      }

      else
      {
        a13 = 0u;
        a14 = 0u;
      }

      *(v14 + 1424) = a13;
      *(v14 + 1440) = a14;
      if (*(v14 + 1448))
      {
        v41 = (v14 + 1744);
        sub_231CC1784(0, &qword_2814CBD70, 0x277CCABB0);
        OUTLINED_FUNCTION_37_0();
        if (swift_dynamicCast())
        {
          v42 = *v41;
          v43 = [*v41 BOOLValue];

          if (!v43)
          {
            OUTLINED_FUNCTION_238_0();

            v49 = swift_task_alloc();
            *(v14 + 2224) = v49;
            v49[2] = v28;
            v49[3] = v23;
            v49[4] = v43;
            v49[5] = v38;
            v49[6] = v52;
            v50 = swift_task_alloc();
            *(v14 + 2232) = v50;
            *v50 = v14;
            OUTLINED_FUNCTION_201(v50);
            goto LABEL_3;
          }
        }
      }

      else
      {

        sub_231CC154C(v14 + 1424, &dword_27DD741E0, &qword_231E15D70);
      }
    }
  }

  v44 = swift_task_alloc();
  OUTLINED_FUNCTION_341(v44);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v14 + 2248) = v45;
  *v45 = v46;
  OUTLINED_FUNCTION_196(v45);
  OUTLINED_FUNCTION_186_0();
LABEL_15:
  OUTLINED_FUNCTION_95_1();

  return sub_231DDB61C();
}

uint64_t sub_231D87DF4()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v8 = OUTLINED_FUNCTION_4_18();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_231D87F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_410((v16 + 528));
  sub_231CD2C1C(v16 + 528);
  OUTLINED_FUNCTION_170_1();

  OUTLINED_FUNCTION_12_14();
  OUTLINED_FUNCTION_117_5();

  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_37();

  return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_231D88014()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v8 = OUTLINED_FUNCTION_4_18();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_231D88134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();

  OUTLINED_FUNCTION_410((v16 + 656));
  sub_231CD2C1C(v16 + 656);
  OUTLINED_FUNCTION_170_1();

  OUTLINED_FUNCTION_12_14();
  OUTLINED_FUNCTION_117_5();

  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_37();

  return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_231D8823C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v8 = OUTLINED_FUNCTION_4_18();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_231D888A8()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v8 = OUTLINED_FUNCTION_4_18();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_231D889C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();
  sub_231CBA16C(*(v16 + 2256), *(v16 + 2264), *(v16 + 1713));
  OUTLINED_FUNCTION_410((v16 + 1168));
  sub_231CD2C1C(v16 + 1168);
  OUTLINED_FUNCTION_170_1();

  OUTLINED_FUNCTION_12_14();
  OUTLINED_FUNCTION_117_5();

  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_37();

  return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_231D88AD8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231D88BD8()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_0_31();
  sub_231DA29CC(v5, v6);
  v7 = v0[286];
  v8 = v0[270];
  v9 = OUTLINED_FUNCTION_429();
  v0[292] = v9;
  v9[2] = v3;
  v9[3] = v2;
  v9[4] = v0 + 130;
  v9[5] = v4;
  v9[6] = v7;
  v9[7] = v1;
  v9[8] = v0 + 174;
  v9[9] = v8;
  v10 = swift_task_alloc();
  v0[293] = v10;
  *v10 = v0;
  OUTLINED_FUNCTION_200_0(v10);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_44();

  return sub_231DDB61C();
}

uint64_t sub_231D88CAC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 2328) = v0;

  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231D88DB4()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57_0();
  v5 = v0[232];
  OUTLINED_FUNCTION_0_31();
  sub_231DA29CC(v6, v5);
  OUTLINED_FUNCTION_503();
  v7 = sub_231E0F5F0();
  if (OUTLINED_FUNCTION_161_1(v7) == 1)
  {
    sub_231CC154C(v0[227], &qword_27DD74470, &qword_231E17120);
  }

  else
  {
    v1 = v0[225];
    sub_231E0F5C0();
    OUTLINED_FUNCTION_56_6();
    v8 = OUTLINED_FUNCTION_140_0();
    v9(v8);
    sub_231E0F5D0();
    v10 = OUTLINED_FUNCTION_40_7();
    v11(v10);
  }

  OUTLINED_FUNCTION_4_12(v0[221] + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_summaryTopLineLength, (v0 + 194));
  OUTLINED_FUNCTION_449();
  v12 = v0[286];
  v13 = v0[270];
  v14 = OUTLINED_FUNCTION_429();
  v0[292] = v14;
  v14[2] = v3;
  v14[3] = v2;
  v14[4] = v0 + 130;
  v14[5] = v4;
  v14[6] = v12;
  v14[7] = v1;
  v14[8] = v0 + 174;
  v14[9] = v13;
  v15 = swift_task_alloc();
  v0[293] = v15;
  *v15 = v0;
  OUTLINED_FUNCTION_200_0(v15);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_44();

  return sub_231DDB61C();
}

uint64_t sub_231D88F64()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v8 = OUTLINED_FUNCTION_4_18();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_231D892FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_47_0();
  v11 = v10[249];
  v12 = OUTLINED_FUNCTION_410(v10 + 18);
  OUTLINED_FUNCTION_125_1(v12, (v10 + 191));
  sub_231E104C0();
  swift_endAccess();
  sub_231D147C8();
  v10[294] = v13;

  v14 = OUTLINED_FUNCTION_102_0();
  v11(v14);
  OUTLINED_FUNCTION_33();
  swift_storeEnumTagMultiPayload();
  v15 = swift_task_alloc();
  v10[295] = v15;
  *v15 = v10;
  v15[1] = sub_231D89424;
  OUTLINED_FUNCTION_27_1(v10[291]);
  OUTLINED_FUNCTION_227_0();

  return sub_231D8FA3C(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_231D89424()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  *(v6 + 1714) = v5;

  OUTLINED_FUNCTION_4_19();
  sub_231DA1DDC();
  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231D89568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_108_1();
  OUTLINED_FUNCTION_207_0();

  OUTLINED_FUNCTION_410((v18 + 912));
  sub_231CD2C1C(v18 + 912);
  v19 = OUTLINED_FUNCTION_34_11();
  sub_231DA1BC8(v19, v20, v21, v22);

  OUTLINED_FUNCTION_330();
  HIDWORD(a15) = *(v18 + 1714);

  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_107_1();

  return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

void sub_231D896BC()
{
  OUTLINED_FUNCTION_118();
  v34 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_95_5();
  v6 = sub_231E10AE0();
  OUTLINED_FUNCTION_24();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_241_0();
  v12 = v10 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  OUTLINED_FUNCTION_47(v13);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_450();
  sub_231E119F0();
  OUTLINED_FUNCTION_24();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_63_6();
  sub_231E10AD0();
  sub_231CC8990(v1);
  OUTLINED_FUNCTION_28_2(v1);
  if (v16)
  {
    sub_231D1221C();
    OUTLINED_FUNCTION_28_2(v1);
    if (!v16)
    {
      sub_231CC154C(v1, &qword_27DD75180, &qword_231E13690);
    }
  }

  else
  {
    v17 = OUTLINED_FUNCTION_382();
    v18(v17);
  }

  v19 = sub_231E10AB0();
  v21 = 0x6172546F69647561;
  if (v20)
  {
    v21 = v19;
  }

  v33 = v21;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0xEF7470697263736ELL;
  }

  (*(v8 + 16))(v12, v0, v6);
  OUTLINED_FUNCTION_142_2();
  v23 = v12;
  v25 = v24 & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = v5;
  *(v26 + 24) = v0;
  (*(v8 + 32))(v26 + v0, v23, v6);
  *(v26 + v25) = v34;

  OUTLINED_FUNCTION_81();
  sub_231D7B818(v27, v28, v29, v30, v2, v33, v22);

  OUTLINED_FUNCTION_457();
  v31 = OUTLINED_FUNCTION_294_0();
  v32(v31);
  OUTLINED_FUNCTION_113();
}

uint64_t sub_231D89990()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_103_3(v1, v2, v3, v4);
  v5 = sub_231E10AE0();
  v0[6] = v5;
  OUTLINED_FUNCTION_6(v5);
  v0[7] = v6;
  v0[8] = *(v7 + 64);
  v0[9] = OUTLINED_FUNCTION_55();
  v8 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231D89A38()
{
  OUTLINED_FUNCTION_274_0();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_89_5();
  sub_231D11F64();
  v3 = OUTLINED_FUNCTION_50_6();
  v4(v3);
  OUTLINED_FUNCTION_49_9();
  v5 = OUTLINED_FUNCTION_435();
  v6 = OUTLINED_FUNCTION_38_9(v5);
  v7(v6);
  *(v0 + v2) = v1;
  OUTLINED_FUNCTION_220_0();
  swift_retain_n();

  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_290_0(v8);
  *v9 = v10;
  v9[1] = sub_231DA48C8;
  OUTLINED_FUNCTION_64_5(v9, &unk_231E1E1F0);
  OUTLINED_FUNCTION_273_0();

  return sub_231D6DB48(v11, v12, v13, v14, v15);
}

uint64_t sub_231D89B48()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_102_4(v1, v2, v3, v4);
  v5 = sub_231E0F950();
  v0[9] = v5;
  OUTLINED_FUNCTION_6(v5);
  v0[10] = v6;
  v7 = OUTLINED_FUNCTION_55();
  v8 = OUTLINED_FUNCTION_434(v7);
  v0[12] = v8;
  OUTLINED_FUNCTION_6(v8);
  v0[13] = v9;
  v0[14] = OUTLINED_FUNCTION_55();
  v10 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231D89C2C()
{
  OUTLINED_FUNCTION_29();
  v1 = OUTLINED_FUNCTION_277_0();
  OUTLINED_FUNCTION_65_6(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 128) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_325(v2);
  OUTLINED_FUNCTION_62_4();

  return sub_231DDB61C();
}

uint64_t sub_231D89CE0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_61_6(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_381(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_48_8(v2);

  return sub_231D89D6C();
}

uint64_t sub_231D89D6C()
{
  OUTLINED_FUNCTION_18();
  v1[48] = v2;
  v1[49] = v0;
  v1[46] = v3;
  v1[47] = v4;
  v5 = type metadata accessor for EntityKind(0);
  v1[50] = v5;
  OUTLINED_FUNCTION_47(v5);
  v1[51] = OUTLINED_FUNCTION_55();
  v6 = sub_231E0F5E0();
  v1[52] = v6;
  OUTLINED_FUNCTION_6(v6);
  v1[53] = v7;
  v1[54] = OUTLINED_FUNCTION_55();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74470, &qword_231E17120);
  OUTLINED_FUNCTION_47(v8);
  v1[55] = OUTLINED_FUNCTION_55();
  v9 = type metadata accessor for SummarizerResult(0);
  v1[56] = v9;
  OUTLINED_FUNCTION_47(v9);
  v1[57] = OUTLINED_FUNCTION_69();
  v1[58] = swift_task_alloc();
  v10 = sub_231E10E30();
  v1[59] = v10;
  OUTLINED_FUNCTION_6(v10);
  v1[60] = v11;
  v1[61] = OUTLINED_FUNCTION_69();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

void sub_231D8A55C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_231D8A674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  sub_231CD2C1C(v14 + 16);
  OUTLINED_FUNCTION_56_9();
  v30 = v16;
  v31 = v15;
  v17 = OUTLINED_FUNCTION_394();
  sub_231DA1BC8(v17, v18, v19, v20);

  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_35();

  return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, v31, a12, a13, a14);
}

void sub_231D8A740()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v7, v8, v9);
  }
}

void sub_231D8ACD0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_231D8ADE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  v15 = *(v14 + 361);
  sub_231CD2C1C(v14 + 16);
  v16 = OUTLINED_FUNCTION_59_0();
  sub_231CBA16C(v16, v17, v15);
  OUTLINED_FUNCTION_56_9();
  v33 = v19;
  v34 = v18;
  v20 = OUTLINED_FUNCTION_394();
  sub_231DA1BC8(v20, v21, v22, v23);

  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_35();

  return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, v33, v34, a12, a13, a14);
}

uint64_t sub_231D8AECC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231D8AFCC()
{
  OUTLINED_FUNCTION_288_0();
  OUTLINED_FUNCTION_47_0();
  v1 = v0[85];
  v2 = v0[58];
  v3 = v0[49];
  v5 = v0[46];
  v4 = v0[47];
  v6 = swift_task_alloc();
  v0[91] = v6;
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v0 + 2;
  v6[5] = v4;
  v6[6] = v1;
  v6[7] = v5;
  v6[8] = v0 + 30;
  v7 = swift_task_alloc();
  v0[92] = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_199_0(v7);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_232_0();

  return sub_231DDB61C();
}

uint64_t sub_231D8B09C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_87_5();
  OUTLINED_FUNCTION_4();
  *v3 = v0;
  *v3 = *v2;
  *(v0 + 720) = v1;

  OUTLINED_FUNCTION_223();
  if (v1)
  {
  }

  OUTLINED_FUNCTION_137_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231D8B1C8()
{
  OUTLINED_FUNCTION_288_0();
  OUTLINED_FUNCTION_47_0();
  v1 = v0[58];
  OUTLINED_FUNCTION_0_31();
  sub_231DA29CC(v2, v1);
  OUTLINED_FUNCTION_503();
  v3 = sub_231E0F5F0();
  if (OUTLINED_FUNCTION_161_1(v3) == 1)
  {
    sub_231CC154C(v0[55], &qword_27DD74470, &qword_231E17120);
  }

  else
  {
    sub_231E0F5C0();
    OUTLINED_FUNCTION_56_6();
    v4 = OUTLINED_FUNCTION_140_0();
    v5(v4);
    sub_231E0F5D0();
    v6 = OUTLINED_FUNCTION_40_7();
    v7(v6);
  }

  OUTLINED_FUNCTION_4_12(v0[47] + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_summaryTopLineLength, (v0 + 40));
  OUTLINED_FUNCTION_449();
  v8 = v0[85];
  v9 = v0[58];
  v10 = v0[49];
  v12 = v0[46];
  v11 = v0[47];
  v13 = swift_task_alloc();
  v0[91] = v13;
  v13[2] = v10;
  v13[3] = v9;
  v13[4] = v0 + 2;
  v13[5] = v11;
  v13[6] = v8;
  v13[7] = v12;
  v13[8] = v0 + 30;
  v14 = swift_task_alloc();
  v0[92] = v14;
  *v14 = v0;
  OUTLINED_FUNCTION_199_0(v14);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_232_0();

  return sub_231DDB61C();
}

void sub_231D8B378()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_231D8B4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_56_0();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_59_1();
  a20 = v22;
  (*(v22 + 592))(*(v22 + 496), *(v22 + 584), *(v22 + 472));

  v27 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_116_0();
  v28 = OUTLINED_FUNCTION_91_0();
  v29 = *(v22 + 608);
  if (v28)
  {
    v55 = *(v22 + 608);
    OUTLINED_FUNCTION_9_1();
    a11 = OUTLINED_FUNCTION_17_1();
    *v23 = 136446210;
    v30 = sub_231DDB1E8();
    sub_231CB5000(v30, v31, &a11);
    OUTLINED_FUNCTION_87_0();
    *(v23 + 4) = v24;
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_11();

    v37 = OUTLINED_FUNCTION_9_4();
    v55(v37);
  }

  else
  {

    v38 = OUTLINED_FUNCTION_9_4();
    v29(v38);
  }

  sub_231D48194();
  sub_231CD2C1C(v22 + 16);
  OUTLINED_FUNCTION_3_24();
  sub_231DA1DDC();
  OUTLINED_FUNCTION_56_9();
  v54 = v40;
  v56 = v39;
  v41 = OUTLINED_FUNCTION_394();
  sub_231DA1BC8(v41, v42, v43, v44);

  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_35();

  return v47(v45, v46, v47, v48, v49, v50, v51, v52, v54, v56, a11, a12, a13, a14);
}

uint64_t sub_231D8B664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_29();
  sub_231E10AE0();
  OUTLINED_FUNCTION_12();
  v11 = OUTLINED_FUNCTION_140_0();
  v12(v11);
  OUTLINED_FUNCTION_48();
  swift_storeEnumTagMultiPayload();
  v13 = swift_task_alloc();
  *(v10 + 744) = v13;
  *v13 = v10;
  v13[1] = sub_231D8B768;
  v14 = OUTLINED_FUNCTION_105_6(*(v10 + 720));

  return sub_231D8FA3C(v14, v15, 0, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_231D8B768()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  *(v6 + 362) = v5;

  OUTLINED_FUNCTION_4_19();
  sub_231DA1DDC();
  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231D8B888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();

  sub_231CD2C1C(v14 + 16);
  OUTLINED_FUNCTION_56_9();
  v30 = v16;
  v31 = v15;
  v17 = OUTLINED_FUNCTION_394();
  HIDWORD(a11) = *(v14 + 362);
  sub_231DA1BC8(v17, v18, v19, v20);

  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_35();

  return v23(v21, v22, v23, v24, v25, v26, v27, v28, v30, v31, a11, a12, a13, a14);
}

uint64_t sub_231D8B964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D8B980()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_125_1(v1, v0 + 16);
  v2 = sub_231E10990();
  swift_endAccess();
  if (v2)
  {
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    *v3 = v0;
    v3[1] = sub_231D8BA6C;
    v4 = OUTLINED_FUNCTION_27_1(*(v0 + 64));

    return sub_231DF75A8(v4, v5);
  }

  else
  {
    **(v0 + 40) = 0;
    OUTLINED_FUNCTION_14_0();

    return v7();
  }
}

uint64_t sub_231D8BA6C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 88) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231D8BB64()
{
  OUTLINED_FUNCTION_18();
  v0[8] = v1;
  v0[9] = v2;
  v0[6] = v3;
  v0[7] = v4;
  OUTLINED_FUNCTION_103_3(v5, v6, v7, v8);
  v9 = sub_231E0F950();
  v0[10] = v9;
  OUTLINED_FUNCTION_6(v9);
  v0[11] = v10;
  v0[12] = OUTLINED_FUNCTION_55();
  v11 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_231D8BC0C()
{
  OUTLINED_FUNCTION_29();
  sub_231D11A38();
  sub_231E0F8F0();
  sub_231D119A4();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_446(v1);
  *v2 = v3;
  v2[1] = sub_231D8BCE8;
  OUTLINED_FUNCTION_27_1(*(v0 + 96));

  return sub_231DEE75C();
}

uint64_t sub_231D8BCE8()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  *(v6 + 112) = v5;

  v7 = OUTLINED_FUNCTION_30_3();
  v8(v7);
  v9 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231D8BE20()
{
  OUTLINED_FUNCTION_18();
  **(v0 + 16) = *(v0 + 112);

  OUTLINED_FUNCTION_14_0();

  return v1();
}

uint64_t sub_231D8BE84()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_362(v1, v2, v3);
  *(v0 + 56) = sub_231E10A30();
  *(v0 + 64) = swift_projectBox();
  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231D8BEF0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_247_0();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  sub_231CB4810(&qword_27DD75120, MEMORY[0x277D42428], MEMORY[0x277D42418]);
  OUTLINED_FUNCTION_180_0();
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_179_1();

  return sub_231D2D724(v3, v4, v5, v6);
}

uint64_t sub_231D8BFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[86] = a6;
  v6[85] = a5;
  v6[84] = a4;
  v6[83] = a3;
  v6[82] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D8BFDC()
{
  OUTLINED_FUNCTION_50_0();
  v1 = *(v0 + 672);
  sub_231CFEB04();
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_22_7();
  swift_allocError();
  *v2 = 0;
  *(v0 + 536) = 0;
  *(v0 + 544) = 1;
  OUTLINED_FUNCTION_55_6((v0 + 552));
  OUTLINED_FUNCTION_134_2();
  sub_231CD2A28(v3, v4, v5, v6, v7, v8, v9, v10, v11);
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_22_7();
  swift_allocError();
  *v12 = 0;
  OUTLINED_FUNCTION_134_2();
  sub_231CD2A90(v13, v14, v15, v16, 2, v17, v18, v19, v20);
  v21 = sub_231DDBF28();
  OUTLINED_FUNCTION_270_0(v1, v0 + 632);
  sub_231E10920();
  swift_endAccess();
  sub_231D147C8();
  OUTLINED_FUNCTION_404();
  v22 = OUTLINED_FUNCTION_243_0();
  sub_231CD2C70(v22, v23, v1, 0, v24, v21);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 696) = v25;
  *v25 = v26;
  v25[1] = sub_231D8C138;
  OUTLINED_FUNCTION_79_4();

  return sub_231CD45F4();
}

uint64_t sub_231D8C138()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  sub_231CC4F5C(v2 + 16);
  OUTLINED_FUNCTION_14_0();

  return v6();
}

uint64_t sub_231D8C218()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_102_4(v1, v2, v3, v4);
  v5 = sub_231E10A30();
  v0[9] = v5;
  OUTLINED_FUNCTION_6(v5);
  v0[10] = v6;
  v0[11] = OUTLINED_FUNCTION_55();
  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231D8C2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  v11 = v10[8];
  v12 = v10[7];
  v13 = v10[5];
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v14 = OUTLINED_FUNCTION_181();
  v15(v14);
  v16 = OUTLINED_FUNCTION_37_0();
  sub_231DF2ACC(v16, v17);
  OUTLINED_FUNCTION_64_1();
  v19 = v18;
  v20 = OUTLINED_FUNCTION_48();
  v21(v20);
  *v13 = v11;
  *(v13 + 8) = v12;
  *(v13 + 16) = v19;

  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_66_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_231D8C380()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_354(v1, v2, v3, v4);
  v5 = sub_231E10A30();
  v0[25] = v5;
  OUTLINED_FUNCTION_6(v5);
  v0[26] = v6;
  v0[27] = OUTLINED_FUNCTION_55();
  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231D8C420()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v1 = OUTLINED_FUNCTION_37_0();
  v2(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 224) = v3;
  *v3 = v4;
  v3[1] = sub_231D8C4F4;
  OUTLINED_FUNCTION_101_2();
  OUTLINED_FUNCTION_97_3();

  return sub_231CEAE1C();
}

uint64_t sub_231D8C4F4()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_30_3();
  v4(v3);
  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_231D8C62C()
{
  OUTLINED_FUNCTION_118();
  v2 = v1;
  v4 = v3;
  v118 = v5;
  v119[5] = *MEMORY[0x277D85DE8];
  sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v116 = v7;
  v117 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v115 = v8 - v9;
  v11 = MEMORY[0x28223BE20](v10);
  v114 = &v110 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v110 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v110 - v16;
  v18 = type metadata accessor for EntityKind(0);
  v19 = OUTLINED_FUNCTION_6(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  OUTLINED_FUNCTION_47(v24);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_253_0();
  v119[3] = &unk_2846F07A0;
  v119[4] = sub_231CC7270();
  LOBYTE(v119[0]) = 5;
  v26 = sub_231E0FA80();
  __swift_destroy_boxed_opaque_existential_0(v119);
  if (v26 & 1) != 0 && (*(v4 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isRetry) & 1) == 0 && (sub_231CE267C())
  {
    sub_231E119F0();
    v27 = OUTLINED_FUNCTION_91_1();
    __swift_storeEnumTagSinglePayload(v27, v28, 1, v29);
    sub_231DA3A98(v118, &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    v30 = (*(v21 + 80) + 40) & ~*(v21 + 80);
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v31[4] = v2;
    sub_231DA29CC(&v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30);
    *(v31 + ((v23 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = v4;

    v32 = OUTLINED_FUNCTION_71_5();
    sub_231CC3BE0(v32, v33, v0, v34, v31);

    v35 = objc_opt_self();
    v36 = [v35 sharedScheduler];
    v37 = sub_231E115F0();
    v38 = [v36 taskRequestForIdentifier_];

    if (v38)
    {
      v39 = sub_231DC4B64();
      v41 = v116;
      v40 = v117;
      v112 = *(v116 + 16);
      v113 = v39;
      v115 = v116 + 16;
      v112(v17);

      v42 = sub_231E10E10();
      v43 = sub_231E11AF0();

      v44 = os_log_type_enabled(v42, v43);
      v111 = v35;
      if (v44)
      {
        v45 = OUTLINED_FUNCTION_9_1();
        v46 = OUTLINED_FUNCTION_67();
        v119[0] = v46;
        *v45 = 136446210;
        v47 = sub_231DDB1E8();
        OUTLINED_FUNCTION_500(v47, v48);
        OUTLINED_FUNCTION_264_0();

        *(v45 + 4) = v4;
        v49 = v116;
        OUTLINED_FUNCTION_496(&dword_231CAE000, v50, v51, "%{public}s Not scheduling a retry background task because one already exists");
        __swift_destroy_boxed_opaque_existential_0(v46);
        OUTLINED_FUNCTION_30();
        v40 = v117;
        OUTLINED_FUNCTION_30();

        v52 = v49;
        v53 = v49;
      }

      else
      {

        v52 = v41;
        v53 = v41;
      }

      v60 = *(v53 + 8);
      v60(v17, v40);
      v61 = sub_231DBEDB0();
      if (sub_231D9D700(v61, 0) && [v38 requiresProtectionClass] != 1)
      {
        (v112)(v15, v113, v40);

        v77 = sub_231E10E10();
        v78 = sub_231E11AF0();

        if (os_log_type_enabled(v77, v78))
        {
          v79 = OUTLINED_FUNCTION_9_1();
          v80 = OUTLINED_FUNCTION_67();
          v119[0] = v80;
          *v79 = 136446210;
          v81 = sub_231DDB1E8();
          OUTLINED_FUNCTION_500(v81, v82);
          OUTLINED_FUNCTION_334();
          *(v79 + 4) = v60;
          OUTLINED_FUNCTION_496(&dword_231CAE000, v83, v84, "%{public}s Changing protection class of retry background task to class A since mail needs to be processed");
          __swift_destroy_boxed_opaque_existential_0(v80);
          v85 = v116;
          OUTLINED_FUNCTION_30();
          v40 = v117;
          OUTLINED_FUNCTION_30();

          v52 = v85;
        }

        else
        {
        }

        v86 = OUTLINED_FUNCTION_33();
        (v60)(v86);
        v90 = v111;
        [v38 setRequiresProtectionClass_];
        v91 = [v90 sharedScheduler];
        v119[0] = 0;
        v92 = [v91 updateTaskRequest:v38 error:v119];

        if (v92)
        {
          v93 = v119[0];
        }

        else
        {
          v118 = v60;
          v94 = v119[0];
          OUTLINED_FUNCTION_401();
          v95 = sub_231E0F6F0();

          swift_willThrow();
          (v112)(v114, v113, v40);

          v96 = v95;
          v97 = sub_231E10E10();
          v98 = sub_231E11AD0();

          if (os_log_type_enabled(v97, v98))
          {
            v99 = OUTLINED_FUNCTION_98_0();
            v100 = OUTLINED_FUNCTION_53();
            v101 = OUTLINED_FUNCTION_67();
            v119[0] = v101;
            *v99 = 136446466;
            v102 = sub_231DDB1E8();
            OUTLINED_FUNCTION_500(v102, v103);
            OUTLINED_FUNCTION_87_0();
            *(v99 + 4) = v52;
            *(v99 + 12) = 2112;
            v104 = v95;
            v105 = _swift_stdlib_bridgeErrorToNSError();
            *(v99 + 14) = v105;
            *v100 = v105;
            OUTLINED_FUNCTION_497(&dword_231CAE000, v106, v107, "%{public}s Could not update background retry task with class A protection: %@");
            sub_231CC154C(v100, &qword_27DD74D30, &unk_231E13480);
            OUTLINED_FUNCTION_223_0();
            __swift_destroy_boxed_opaque_existential_0(v101);
            OUTLINED_FUNCTION_30();
            OUTLINED_FUNCTION_49_2();

            v108 = v117;
            v109 = v114;
          }

          else
          {

            v109 = OUTLINED_FUNCTION_18_0();
          }

          v118(v109, v108);
        }
      }

      else
      {
      }
    }

    else
    {
      sub_231CC1784(0, &qword_27DD750E8, 0x277CF07C8);
      v54 = sub_231D9D778(0xD000000000000017, 0x8000000231E36770);
      [v54 setPriority_];
      [v54 setRequiresExternalPower_];
      [v54 setResourceIntensive_];
      [v54 setResources_];
      v55 = sub_231DBEDB0();
      if (sub_231D9D700(v55, 0))
      {
        v56 = 1;
      }

      else
      {
        v56 = 4;
      }

      [v54 setRequiresProtectionClass_];
      [v54 setScheduleAfter_];
      [v54 setTrySchedulingBefore_];
      v57 = [v35 &selRef_appendCharacters_length_];
      v119[0] = 0;
      v58 = [v57 submitTaskRequest:v54 error:v119];

      if (v58)
      {
        v59 = v119[0];
      }

      else
      {
        v62 = v119[0];
        OUTLINED_FUNCTION_401();
        v63 = sub_231E0F6F0();

        swift_willThrow();
        v64 = sub_231DC4B64();
        v65 = v116;
        (*(v116 + 16))(v115, v64, v117);

        v66 = v63;
        v67 = sub_231E10E10();
        v68 = sub_231E11AD0();

        if (os_log_type_enabled(v67, v68))
        {
          v69 = OUTLINED_FUNCTION_98_0();
          v70 = OUTLINED_FUNCTION_53();
          v118 = OUTLINED_FUNCTION_67();
          v119[0] = v118;
          *v69 = 136446466;
          v71 = sub_231DDB1E8();
          OUTLINED_FUNCTION_500(v71, v72);
          OUTLINED_FUNCTION_117_0();
          *(v69 + 4) = v17;
          *(v69 + 12) = 2112;
          v73 = v63;
          v74 = _swift_stdlib_bridgeErrorToNSError();
          *(v69 + 14) = v74;
          *v70 = v74;
          OUTLINED_FUNCTION_497(&dword_231CAE000, v75, v76, "%{public}s Could not schedule background retry task with DAS: %@");
          sub_231CC154C(v70, &qword_27DD74D30, &unk_231E13480);
          OUTLINED_FUNCTION_31_1();
          __swift_destroy_boxed_opaque_existential_0(v118);
          OUTLINED_FUNCTION_30();
          OUTLINED_FUNCTION_49_2();

          (*(v65 + 8))(v115, v117);
        }

        else
        {

          v87 = OUTLINED_FUNCTION_48();
          v89(v87, v88);
        }
      }
    }
  }

  OUTLINED_FUNCTION_113();
}

uint64_t sub_231D8D05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[119] = a7;
  v7[118] = a6;
  v7[117] = a5;
  v7[116] = a4;
  v7[115] = a3;
  v7[114] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D8D084()
{
  OUTLINED_FUNCTION_50_0();
  v1 = v0[117];
  v2 = v0[115];
  sub_231CFEB04();
  OUTLINED_FUNCTION_22_7();
  swift_allocError();
  *v3 = 0;
  v4.n128_f64[0] = OUTLINED_FUNCTION_30_9();
  OUTLINED_FUNCTION_106_6(v5, v4);
  OUTLINED_FUNCTION_383();
  OUTLINED_FUNCTION_216_0();
  sub_231CD2A28(v6, v7, v8, v9, v10, v11, v12, v13, v14);
  memcpy(v0 + 36, v2, 0x80uLL);
  OUTLINED_FUNCTION_372();
  OUTLINED_FUNCTION_371();
  sub_231DDBF28();
  OUTLINED_FUNCTION_270_0(v1, (v0 + 111));
  sub_231E10920();
  OUTLINED_FUNCTION_376();
  sub_231D147C8();
  OUTLINED_FUNCTION_404();
  v15 = OUTLINED_FUNCTION_51_5();
  sub_231CD2C70(v16, v17, v1, 0, v18, v15);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  v0[120] = v19;
  *v19 = v20;
  v19[1] = sub_231D8D1C0;
  OUTLINED_FUNCTION_79_4();

  return sub_231CD45F4();
}

uint64_t sub_231D8D1C0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  sub_231CC4F5C(v2 + 16);
  OUTLINED_FUNCTION_14_0();

  return v6();
}

uint64_t sub_231D8D2A0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_452(v1, v2, v3, v4, v5, v6);
  v7 = sub_231E10A30();
  v0[23] = v7;
  OUTLINED_FUNCTION_6(v7);
  v0[24] = v8;
  v0[25] = OUTLINED_FUNCTION_69();
  v0[26] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231D8D34C()
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  v1 = v0[19];
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v2 = OUTLINED_FUNCTION_109_5();
  v33 = v3;
  v3(v2);
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = v0[24];
    v6 = v0[19] + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    v8 = MEMORY[0x277D84F90];
    do
    {
      v9 = v0[25];
      v33(v9, v6, v0[23]);
      sub_231E109B0();
      OUTLINED_FUNCTION_260_0();
      v10 = OUTLINED_FUNCTION_80();
      v11(v10);
      if (v1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = OUTLINED_FUNCTION_0_1();
          v8 = sub_231CE0B9C(v14, v15, v16, v8);
        }

        v12 = *(v8 + 2);
        if (v12 >= *(v8 + 3) >> 1)
        {
          OUTLINED_FUNCTION_248_0();
          v8 = sub_231CE0B9C(v17, v18, v19, v20);
        }

        *(v8 + 2) = v12 + 1;
        v13 = &v8[16 * v12];
        *(v13 + 4) = v9;
        *(v13 + 5) = v1;
      }

      v6 += v7;
      --v4;
    }

    while (v4);
  }

  sub_231DA0900(v0[21] + 176, (v0 + 9));

  v21 = OUTLINED_FUNCTION_59_0();
  sub_231D2C8B0(v21, v22, v23, v24);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  v0[27] = v25;
  *v25 = v26;
  v25[1] = sub_231D8D540;
  OUTLINED_FUNCTION_35();

  return sub_231D2C8C0(v27, v28, v29, v30);
}

uint64_t sub_231D8D540()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  *(v2 + 224) = v6;
  *(v2 + 232) = v7;
  *(v2 + 240) = v8;

  sub_231DA45E4(v2 + 16);
  v9 = OUTLINED_FUNCTION_43_4();
  v10(v9);
  v11 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_231D8D684()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_502(v0[15].n128_u8[0], v0[14]);

  OUTLINED_FUNCTION_14_0();

  return v1();
}

uint64_t sub_231D8D6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 968) = a10;
  *(v10 + 960) = a9;
  *(v10 + 952) = a8;
  *(v10 + 944) = a7;
  *(v10 + 936) = a6;
  *(v10 + 665) = a5;
  *(v10 + 928) = a4;
  *(v10 + 920) = a3;
  *(v10 + 912) = a2;
  return OUTLINED_FUNCTION_26_8();
}

uint64_t sub_231D8D728()
{
  OUTLINED_FUNCTION_47_0();
  v1 = *(v0 + 952);
  v2 = *(v0 + 936);
  v3 = *(v0 + 665);
  v4.n128_f64[0] = OUTLINED_FUNCTION_30_9();
  OUTLINED_FUNCTION_78_3(v5, v4);
  v6 = OUTLINED_FUNCTION_295_0();
  sub_231CC3500(v6, v7, v3);
  v8 = OUTLINED_FUNCTION_295_0();
  sub_231CD2A28(v8, v9, v10, v11, v12, v13, v14, v15, v16);
  memcpy((v0 + 288), v2, 0x80uLL);
  OUTLINED_FUNCTION_372();
  OUTLINED_FUNCTION_371();
  sub_231DDBF28();
  OUTLINED_FUNCTION_270_0(v1, v0 + 888);
  sub_231E10920();
  OUTLINED_FUNCTION_376();
  sub_231D147C8();
  OUTLINED_FUNCTION_404();
  v17 = OUTLINED_FUNCTION_51_5();
  sub_231CD2C70(v18, v19, v1, 0, v20, v17);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 976) = v21;
  *v21 = v22;
  v21[1] = sub_231D8D868;
  OUTLINED_FUNCTION_79_4();
  OUTLINED_FUNCTION_495();

  return sub_231CD45F4();
}

uint64_t sub_231D8D868()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  sub_231CC4F5C(v2 + 16);
  OUTLINED_FUNCTION_14_0();

  return v6();
}

uint64_t sub_231D8D948()
{
  OUTLINED_FUNCTION_18();
  v0[20] = v1;
  v0[21] = v2;
  v0[18] = v3;
  v0[19] = v4;
  v5 = sub_231E0F630();
  OUTLINED_FUNCTION_47(v5);
  v0[22] = OUTLINED_FUNCTION_55();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74470, &qword_231E17120);
  OUTLINED_FUNCTION_47(v6);
  v0[23] = OUTLINED_FUNCTION_69();
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v7 = sub_231E11E70();
  v0[26] = v7;
  OUTLINED_FUNCTION_6(v7);
  v0[27] = v8;
  v0[28] = OUTLINED_FUNCTION_55();
  v9 = sub_231E10E30();
  v0[29] = v9;
  OUTLINED_FUNCTION_6(v9);
  v0[30] = v10;
  v0[31] = OUTLINED_FUNCTION_55();
  v11 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_231D8DAA0()
{
  OUTLINED_FUNCTION_51_0();
  v45 = v0;
  v3 = *(v0 + 248);
  v4 = sub_231CC8510();
  sub_231CB4EEC();
  OUTLINED_FUNCTION_397();
  v5 = OUTLINED_FUNCTION_82();
  v6(v5);

  v7 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_116_0();
  if (OUTLINED_FUNCTION_91_0())
  {
    OUTLINED_FUNCTION_98_0();
    v44[0] = OUTLINED_FUNCTION_17_1();
    *v1 = 136446466;
    v8 = sub_231DDB1E8();
    v3 = v9;
    sub_231CB5000(v8, v9, v44);
    OUTLINED_FUNCTION_87_0();
    *(v1 + 4) = v2;
    *(v1 + 12) = 2048;
    *(v1 + 14) = v4;
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v10, v11, v12, v13, v14, 0x16u);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_11();
  }

  v15 = OUTLINED_FUNCTION_33();
  v16(v15);
  if (v4 <= 0.0)
  {
    OUTLINED_FUNCTION_414();
    OUTLINED_FUNCTION_333();
    OUTLINED_FUNCTION_293_0();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);

    sub_231CEF250(50, v1, v3);
    OUTLINED_FUNCTION_448();
    v44[0] = v23;
    v44[1] = v24;
    OUTLINED_FUNCTION_490(v25, v26, v27, v28);
    sub_231E11710();

    sub_231E0F620();
    OUTLINED_FUNCTION_207();
    sub_231E0F600();
    OUTLINED_FUNCTION_293_0();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
    OUTLINED_FUNCTION_191_0();
    OUTLINED_FUNCTION_293_0();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
    *(v0 + 16) = xmmword_231E13680;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    v37 = OUTLINED_FUNCTION_52_8();
    sub_231D48A80(v37, v38, v39, 2, v40, 0, v41);

    OUTLINED_FUNCTION_19();

    return v42();
  }

  else
  {
    sub_231E12280();
    sub_231E12190();
    v17 = OUTLINED_FUNCTION_488();
    *(v0 + 256) = v17;
    *v17 = v0;
    v17[1] = sub_231D8DD98;
    OUTLINED_FUNCTION_58_8();
    OUTLINED_FUNCTION_81();

    return v43();
  }
}

uint64_t sub_231D8DD98()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_94_1();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;

  OUTLINED_FUNCTION_90_1();
  if (v0)
  {
  }

  v4 = OUTLINED_FUNCTION_25();
  v5(v4);
  OUTLINED_FUNCTION_137_0();
  OUTLINED_FUNCTION_97_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231D8DF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();
  v51 = *(v17 + 248);
  v52 = *(v17 + 224);
  OUTLINED_FUNCTION_414();
  OUTLINED_FUNCTION_333();
  OUTLINED_FUNCTION_293_0();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);

  sub_231CEF250(50, v18, v16);
  OUTLINED_FUNCTION_448();
  v53 = v23;
  v54 = v24;
  OUTLINED_FUNCTION_490(v25, v26, v27, v28);
  sub_231E11710();

  sub_231E0F620();
  OUTLINED_FUNCTION_207();
  sub_231E0F600();
  OUTLINED_FUNCTION_293_0();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  OUTLINED_FUNCTION_191_0();
  OUTLINED_FUNCTION_293_0();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  *(v17 + 16) = xmmword_231E13680;
  *(v17 + 32) = 0u;
  *(v17 + 48) = 0u;
  *(v17 + 64) = 0u;
  *(v17 + 80) = 0u;
  *(v17 + 96) = 0u;
  v37 = OUTLINED_FUNCTION_52_8();
  sub_231D48A80(v37, v38, v39, 2, v40, 0, v41);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_37();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, v51, v52, v53, v54, a14, a15, a16);
}

uint64_t sub_231D8E05C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_452(v1, v2, v3, v4, v5, v6);
  v7 = sub_231E106E0();
  v0[23] = v7;
  OUTLINED_FUNCTION_6(v7);
  v0[24] = v8;
  v0[25] = OUTLINED_FUNCTION_69();
  v0[26] = swift_task_alloc();
  v0[27] = swift_task_alloc();
  v0[28] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74510, &qword_231E1E2D0);
  OUTLINED_FUNCTION_47(v9);
  v0[29] = OUTLINED_FUNCTION_69();
  v0[30] = swift_task_alloc();
  v10 = sub_231E10A30();
  v0[31] = v10;
  OUTLINED_FUNCTION_6(v10);
  v0[32] = v11;
  v0[33] = OUTLINED_FUNCTION_69();
  v0[34] = swift_task_alloc();
  v0[35] = swift_task_alloc();
  v12 = sub_231E106A0();
  v0[36] = v12;
  OUTLINED_FUNCTION_6(v12);
  v0[37] = v13;
  v0[38] = OUTLINED_FUNCTION_69();
  v0[39] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_231D8E214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_108_1();
  OUTLINED_FUNCTION_207_0();
  if (*(v18[18] + 16))
  {
    v19 = v18[22];
    v20 = *(v19 + 16);
    v127 = v20;
    if (v20)
    {
      v21 = v18[32];
      v22 = *(v21 + 16);
      v21 += 16;
      v132 = v22;
      v23 = v19 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
      v24 = MEMORY[0x277D84F90];
      v130 = *(v21 + 56);
      v25 = (v18[37] + 32);
      do
      {
        v26 = v18[36];
        v27 = v18[29];
        v28 = OUTLINED_FUNCTION_140_0();
        v132(v28);
        sub_231E108F0();
        v29 = OUTLINED_FUNCTION_258();
        v30(v29);
        OUTLINED_FUNCTION_8_17(v27, 1, v26);
        if (v31)
        {
          sub_231CC154C(v18[29], &qword_27DD74510, &qword_231E1E2D0);
        }

        else
        {
          v32 = *v25;
          (*v25)(v18[38], v18[29], v18[36]);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_210();
            v38 = OUTLINED_FUNCTION_0_1();
            v24 = sub_231D9F7F4(v38, v39, v40, v24, &qword_27DD74E30, &qword_231E1CB80, v41, v42);
          }

          v35 = *(v24 + 2);
          v34 = *(v24 + 3);
          if (v35 >= v34 >> 1)
          {
            OUTLINED_FUNCTION_2_12(v34);
            OUTLINED_FUNCTION_248_0();
            v24 = sub_231D9F7F4(v43, v44, v45, v46, &qword_27DD74E30, &qword_231E1CB80, v47, v48);
          }

          *(v24 + 2) = v35 + 1;
          OUTLINED_FUNCTION_79();
          v32(&v24[v36 + *(v37 + 72) * v35]);
        }

        v23 += v130;
        --v20;
      }

      while (v20);
    }

    else
    {
      v24 = MEMORY[0x277D84F90];
    }

    v18[48] = v24;
    v84 = v18[20];
    if (*(v24 + 2) == v127)
    {
      v134 = v84[8];
      v129 = v84[9];
      v133 = __swift_project_boxed_opaque_existential_0(v84 + 5, v134);
      v131 = sub_231DDAFC4();
      v18[49] = v85;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD750D8, &qword_231E1E298);
      OUTLINED_FUNCTION_172_1();
      v86 = swift_allocObject();
      OUTLINED_FUNCTION_506(v86, xmmword_231E138E0);
      v18[14] = v86;
      OUTLINED_FUNCTION_2_25();
      sub_231CB4810(v87, v88, MEMORY[0x277D42388]);
      v89 = OUTLINED_FUNCTION_18_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v89, v90);
      OUTLINED_FUNCTION_1_24();
      sub_231DA21B0(v91, &qword_27DD750E0, &qword_231E1E2A0, v92);
      OUTLINED_FUNCTION_54_0();
      sub_231E11CD0();
      a10 = v129 + 40;
      OUTLINED_FUNCTION_34_2();
      v128 = v93 + *v93;
      swift_task_alloc();
      OUTLINED_FUNCTION_58_0();
      v18[50] = v94;
      *v94 = v95;
      v94[1] = sub_231D8F140;
      OUTLINED_FUNCTION_107_1();
    }

    else
    {

      v134 = v84[8];
      v129 = v84[9];
      v133 = __swift_project_boxed_opaque_existential_0(v84 + 5, v134);
      v131 = sub_231DDAFC4();
      v18[52] = v97;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD750D8, &qword_231E1E298);
      OUTLINED_FUNCTION_172_1();
      v98 = swift_allocObject();
      *(v98 + 16) = xmmword_231E138E0;
      sub_231E106C0();
      v18[13] = v98;
      OUTLINED_FUNCTION_2_25();
      sub_231CB4810(v99, v100, MEMORY[0x277D42388]);
      v101 = OUTLINED_FUNCTION_207();
      __swift_instantiateConcreteTypeFromMangledNameV2(v101, v102);
      OUTLINED_FUNCTION_1_24();
      OUTLINED_FUNCTION_147_1();
      sub_231DA21B0(v103, v104, v105, v106);
      sub_231E11CD0();
      a10 = v129 + 24;
      OUTLINED_FUNCTION_34_2();
      v128 = v107 + *v107;
      swift_task_alloc();
      OUTLINED_FUNCTION_58_0();
      v18[53] = v108;
      *v108 = v109;
      v108[1] = sub_231D8F33C;
      OUTLINED_FUNCTION_236_0();
      OUTLINED_FUNCTION_107_1();
    }
  }

  else
  {
    v49 = v18[32];
    v50 = v18[30];
    OUTLINED_FUNCTION_81();
    swift_beginAccess();
    v51 = *(v49 + 16);
    v52 = OUTLINED_FUNCTION_181();
    v51(v52);
    sub_231E108F0();
    v18[40] = *(v49 + 8);
    v18[41] = (v49 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v53 = OUTLINED_FUNCTION_140_0();
    v54(v53);
    v55 = OUTLINED_FUNCTION_314(v50);
    v56 = v18[30];
    v57 = v18[20];
    if (v55 == 1)
    {
      v58 = v18[34];
      v59 = v18[31];
      v60 = v18[19];
      sub_231CC154C(v56, &qword_27DD74510, &qword_231E1E2D0);
      sub_231DA0900((v57 + 5), (v18 + 2));
      v134 = v18[5];
      v128 = v18[6];
      v133 = __swift_project_boxed_opaque_existential_0(v18 + 2, v134);
      OUTLINED_FUNCTION_81();
      swift_beginAccess();
      (v51)(v58, v60, v59);
      v131 = sub_231DDAFC4();
      v18[42] = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD750D8, &qword_231E1E298);
      OUTLINED_FUNCTION_172_1();
      v62 = swift_allocObject();
      OUTLINED_FUNCTION_506(v62, xmmword_231E138E0);
      v18[15] = v62;
      OUTLINED_FUNCTION_2_25();
      sub_231CB4810(v63, v64, MEMORY[0x277D42388]);
      v65 = OUTLINED_FUNCTION_207();
      __swift_instantiateConcreteTypeFromMangledNameV2(v65, v66);
      OUTLINED_FUNCTION_1_24();
      OUTLINED_FUNCTION_147_1();
      sub_231DA21B0(v67, v68, v69, v70);
      OUTLINED_FUNCTION_250_0();
      sub_231E11CD0();
      a10 = v128 + 16;
      OUTLINED_FUNCTION_34_2();
      v129 = v71 + *v71;
      swift_task_alloc();
      OUTLINED_FUNCTION_58_0();
      v18[43] = v72;
      *v72 = v73;
      v72[1] = sub_231D8EC98;
      OUTLINED_FUNCTION_236_0();
      OUTLINED_FUNCTION_107_1();
    }

    else
    {
      (*(v18[37] + 32))(v18[39], v56, v18[36]);
      v111 = v57[9];
      v134 = v57[8];
      v133 = __swift_project_boxed_opaque_existential_0(v57 + 5, v134);
      v131 = sub_231DDAFC4();
      v18[45] = v112;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD750D8, &qword_231E1E298);
      OUTLINED_FUNCTION_172_1();
      v113 = swift_allocObject();
      *(v113 + 16) = xmmword_231E138E0;
      sub_231E106C0();
      v18[16] = v113;
      OUTLINED_FUNCTION_2_25();
      sub_231CB4810(v114, v115, MEMORY[0x277D42388]);
      v116 = OUTLINED_FUNCTION_207();
      __swift_instantiateConcreteTypeFromMangledNameV2(v116, v117);
      OUTLINED_FUNCTION_1_24();
      OUTLINED_FUNCTION_147_1();
      sub_231DA21B0(v118, v119, v120, v121);
      OUTLINED_FUNCTION_250_0();
      sub_231E11CD0();
      v128 = (v111 + 32);
      OUTLINED_FUNCTION_34_2();
      v129 = v122 + *v122;
      swift_task_alloc();
      OUTLINED_FUNCTION_58_0();
      v18[46] = v123;
      *v123 = v124;
      v123[1] = sub_231D8EE5C;
      OUTLINED_FUNCTION_236_0();
      OUTLINED_FUNCTION_107_1();
    }
  }

  return v82(v74, v75, v76, v77, v78, v79, v80, v81, a9, a10, v128, v129, v131, v133, v134, a16, a17, a18);
}

uint64_t sub_231D8EC98()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v3 = v2;
  v5 = *(v4 + 320);
  v6 = *v1;
  OUTLINED_FUNCTION_4();
  *v7 = v6;
  *(v8 + 352) = v0;

  v9 = OUTLINED_FUNCTION_80();
  v10(v9);
  v11 = OUTLINED_FUNCTION_33();
  v5(v11);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_44();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_231D8EE5C()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  *(v6 + 376) = v0;

  v7 = OUTLINED_FUNCTION_33();
  v8(v7);

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_97_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231D8EFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57_0();
  (*(v12[37] + 8))(v12[39], v12[36]);
  OUTLINED_FUNCTION_320();

  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_44();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_231D8F08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57_0();
  __swift_destroy_boxed_opaque_existential_0((v12 + 16));
  OUTLINED_FUNCTION_320();

  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_44();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_231D8F140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_21();
  v15 = v14;
  OUTLINED_FUNCTION_7_0();
  *v16 = v15;
  v17 = *v13;
  OUTLINED_FUNCTION_4();
  *v18 = v17;
  *(v15 + 408) = v12;

  v19 = OUTLINED_FUNCTION_80();
  v20(v19);

  if (v12)
  {
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_44();

    return MEMORY[0x2822009F8](v21, v22, v23);
  }

  else
  {
    OUTLINED_FUNCTION_318();

    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_44();

    return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
  }
}

uint64_t sub_231D8F33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_21();
  v15 = v14;
  OUTLINED_FUNCTION_7_0();
  *v16 = v15;
  v17 = *v13;
  OUTLINED_FUNCTION_4();
  *v18 = v17;
  *(v15 + 432) = v12;

  v19 = OUTLINED_FUNCTION_54_7();
  v20(v19);

  if (v12)
  {
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_44();

    return MEMORY[0x2822009F8](v21, v22, v23);
  }

  else
  {
    OUTLINED_FUNCTION_318();

    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_44();

    return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
  }
}

uint64_t sub_231D8F518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  (*(v14[37] + 8))(v14[39], v14[36]);
  OUTLINED_FUNCTION_87_6();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_35();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_231D8F5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  __swift_destroy_boxed_opaque_existential_0((v14 + 16));
  OUTLINED_FUNCTION_87_6();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_35();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_231D8F6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_87_6();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_35();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_231D8F754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_87_6();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_35();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_231D8F808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[43] = a8;
  v9[44] = a9;
  v9[41] = a6;
  v9[42] = a7;
  v9[39] = a4;
  v9[40] = a5;
  v9[37] = a2;
  v9[38] = a3;
  return OUTLINED_FUNCTION_26_8();
}

uint64_t sub_231D8F82C()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 336);
  memcpy((v0 + 16), *(v0 + 312), 0x80uLL);
  sub_231DA1F60(v0 + 16, v0 + 144);
  sub_231DDBF28();
  OUTLINED_FUNCTION_270_0(v1, v0 + 272);
  sub_231E10920();
  swift_endAccess();
  sub_231D147C8();
  *(v0 + 360) = v2;

  v3 = swift_task_alloc();
  *(v0 + 368) = v3;
  *v3 = v0;
  v3[1] = sub_231D8F940;
  OUTLINED_FUNCTION_105_6(*(v0 + 304));

  return sub_231CD7044();
}

uint64_t sub_231D8F940()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  sub_231CD2C1C(v2 + 16);
  OUTLINED_FUNCTION_14_0();

  return v6();
}

uint64_t sub_231D8FA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_18();
  v11[21] = a10;
  v11[22] = v10;
  v11[19] = v12;
  v11[20] = a9;
  v11[17] = v13;
  v11[18] = v14;
  v11[15] = v15;
  v11[16] = v16;
  v11[13] = v17;
  v11[14] = v18;
  v11[12] = v19;
  v20 = sub_231E10E30();
  v11[23] = v20;
  OUTLINED_FUNCTION_6(v20);
  v11[24] = v21;
  v11[25] = OUTLINED_FUNCTION_69();
  v11[26] = swift_task_alloc();
  v11[27] = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_33_1(v22, v23, v24);
}

void sub_231D90180()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_231D90298()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_18_6();

  return v1(14);
}

void sub_231D90310()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_231D90428()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_18_6();

  return v1(15);
}

void sub_231D904A0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_231D905B8()
{
  OUTLINED_FUNCTION_18();
  sub_231DDB4C0(*(v0 + 96));

  OUTLINED_FUNCTION_18_6();

  return v1(13);
}

uint64_t sub_231D90634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D90650()
{
  OUTLINED_FUNCTION_18();
  v1 = sub_231E10B50();
  v0[7] = v1;
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_231D90700;
  v3 = OUTLINED_FUNCTION_27_1(v0[4]);

  return sub_231DF84E8(v3, v4, v1);
}

uint64_t sub_231D90700()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  *(v6 + 72) = v5;

  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231D90810()
{
  OUTLINED_FUNCTION_18();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = sub_231E0F950();
  v0[5] = v4;
  OUTLINED_FUNCTION_6(v4);
  v0[6] = v5;
  v0[7] = OUTLINED_FUNCTION_55();
  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231D908B8()
{
  OUTLINED_FUNCTION_29();
  *(v0 + 64) = sub_231E10B50();
  sub_231D11AE8();
  sub_231E0F8F0();
  sub_231D1187C();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_231D90990;

  return sub_231DFDE98();
}

uint64_t sub_231D90990()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  *(v6 + 80) = v5;

  v7 = OUTLINED_FUNCTION_43_4();
  v8(v7);
  v9 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231D90AE4()
{
  OUTLINED_FUNCTION_18();
  **(v0 + 16) = *(v0 + 80);

  OUTLINED_FUNCTION_14_0();

  return v1();
}

uint64_t sub_231D90B48(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_231D9FCEC(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_231E10A30();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_231D90C48(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_231D9FD8C(result, 1, sub_231D9F900);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 8 * v7 + 32), (a1 + 32), 8 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_231D90D14(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_231D9FD8C(result, 1, sub_231CE0B9C);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_231D90DE8()
{
  OUTLINED_FUNCTION_95_5();
  v1 = sub_231E10A30();
  OUTLINED_FUNCTION_24();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v34 = (v5 - v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = *(v0 + 16);
  if (v10)
  {
    v11 = 0;
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    OUTLINED_FUNCTION_79();
    v15 = *(v12 + 56);
    v32 = v16;
    v33 = (v12 + 16);
    v17 = v0 + v16;
    v35 = MEMORY[0x277D84F90];
    v31 = v17;
LABEL_3:
    v18 = v17 + v15 * v11;
    while (v10 != v11)
    {
      v13(v9, v18, v1);
      v19 = sub_231E108E0();
      if (v19 != 2 && (v19 & 1) != 0)
      {
        v30 = *v33;
        v30(v34, v9, v1);
        v20 = v35;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_231D9FE04(0, *(v20 + 16) + 1, 1);
          v20 = v36;
        }

        v23 = *(v20 + 16);
        v22 = *(v20 + 24);
        v24 = v23 + 1;
        if (v23 >= v22 >> 1)
        {
          v25 = OUTLINED_FUNCTION_2_12(v22);
          v35 = v26;
          sub_231D9FE04(v25, v26, 1);
          v24 = v35;
          v20 = v36;
        }

        ++v11;
        *(v20 + 16) = v24;
        v35 = v20;
        v30(v20 + v32 + v23 * v15, v34, v1);
        v17 = v31;
        goto LABEL_3;
      }

      (*(v12 - 8))(v9, v1);
      v18 += v15;
      ++v11;
    }

    v27 = *(v35 + 16);

    *&result = v27 / v10;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t sub_231D91034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[18] = a8;
  v9[19] = a9;
  v9[16] = a6;
  v9[17] = a7;
  v9[14] = a4;
  v9[15] = a5;
  v9[12] = a2;
  v9[13] = a3;
  v9[11] = a1;
  return OUTLINED_FUNCTION_26_8();
}

uint64_t sub_231D9105C()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  v1 = *(v0 + 136);

  v2 = OUTLINED_FUNCTION_34_11();
  sub_231DC7D98(v2, v3, v4, v5, v1, v6);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 160) = v7;
  *v7 = v8;
  v7[1] = sub_231D91148;
  OUTLINED_FUNCTION_106();

  return sub_231DC7DA8(v9, v10, v11, v12);
}

uint64_t sub_231D91148()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_87_5();
  OUTLINED_FUNCTION_4();
  *v2 = v0;
  v3 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  *(v0 + 168) = v5;
  *(v0 + 176) = v6;
  *(v0 + 184) = v7;

  OUTLINED_FUNCTION_223();
  *(v0 + 56) = *(v8 + 24);
  OUTLINED_FUNCTION_249_0();
  sub_231CC154C(v9, v10, v11);
  OUTLINED_FUNCTION_223();
  *(v0 + 64) = *(v12 + 32);
  OUTLINED_FUNCTION_249_0();
  sub_231CC154C(v13, v14, v15);
  OUTLINED_FUNCTION_223();
  *(v0 + 72) = *(v16 + 40);
  OUTLINED_FUNCTION_249_0();
  sub_231CC154C(v17, v18, v19);
  OUTLINED_FUNCTION_223();
  *(v0 + 80) = *(v20 + 48);
  v21 = OUTLINED_FUNCTION_18_0();
  sub_231CC154C(v21, v22, &qword_231E1C990);
  OUTLINED_FUNCTION_143_2();
  OUTLINED_FUNCTION_97_3();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_231D912C8()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 88);
  *v2 = *(v0 + 168);
  *(v2 + 16) = v1;
  return OUTLINED_FUNCTION_9_7();
}

uint64_t sub_231D912E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 664) = a7;
  *(v7 + 656) = a6;
  *(v7 + 409) = a5;
  *(v7 + 648) = a4;
  *(v7 + 640) = a3;
  *(v7 + 632) = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D91308()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v1 = *(v0 + 409);
  *(v0 + 536) = 0;
  *(v0 + 544) = 1;
  OUTLINED_FUNCTION_78_3((v0 + 552), 0);
  v2 = OUTLINED_FUNCTION_83();
  sub_231CC3500(v2, v3, v1);
  v4 = OUTLINED_FUNCTION_83();
  sub_231CD2A28(v4, v5, v6, v7, v8, v9, v10, v11, v12);
  sub_231CD2A90(36, 0, 0x10Du, (v0 + 536), 2, v13, v14, v15, v0 + 288);
  sub_231DDBF28();
  OUTLINED_FUNCTION_243_0();
  OUTLINED_FUNCTION_81();
  sub_231CD2C70(v16, v17, v18, v19, v20, v21);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 672) = v22;
  *v22 = v23;
  v22[1] = sub_231D9141C;
  OUTLINED_FUNCTION_79_4();
  OUTLINED_FUNCTION_97_3();

  return sub_231CD42A8(v24, v25);
}

uint64_t sub_231D9141C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  sub_231CC4F5C(v2 + 16);
  OUTLINED_FUNCTION_14_0();

  return v6();
}

uint64_t sub_231D914FC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  if (v5)
  {
    OUTLINED_FUNCTION_56_6();
    (*(v7 + 16))(a3, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v6);
}

uint64_t sub_231D915A4()
{
  OUTLINED_FUNCTION_18();
  v0[5] = v1;
  v0[6] = v2;
  v0[3] = v3;
  v0[4] = v4;
  v0[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74510, &qword_231E1E2D0);
  OUTLINED_FUNCTION_47(v6);
  v0[7] = OUTLINED_FUNCTION_55();
  v7 = sub_231E106A0();
  v0[8] = v7;
  OUTLINED_FUNCTION_6(v7);
  v0[9] = v8;
  v0[10] = OUTLINED_FUNCTION_55();
  v9 = sub_231E106E0();
  v0[11] = v9;
  OUTLINED_FUNCTION_6(v9);
  v0[12] = v10;
  v0[13] = OUTLINED_FUNCTION_55();
  v11 = sub_231E10A30();
  v0[14] = v11;
  OUTLINED_FUNCTION_6(v11);
  v0[15] = v12;
  v0[16] = OUTLINED_FUNCTION_55();
  v13 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_231D91714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();
  v17 = v16[3];
  v18 = *(v17 + 16);
  v73 = v18;
  if (v18)
  {
    v19 = v16[15];
    v20 = *(v19 + 16);
    v19 += 16;
    v74 = v20;
    v21 = v17 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v22 = MEMORY[0x277D84F90];
    v23 = (v19 - 8);
    a10 = v16[9];
    a11 = *(v19 + 56);
    v24 = (a10 + 32);
    do
    {
      v25 = v16[16];
      v26 = v16[14];
      v27 = v16[7];
      v28 = v16[8];
      v29 = OUTLINED_FUNCTION_140_0();
      v74(v29);
      sub_231E108F0();
      (*v23)(v25, v26);
      OUTLINED_FUNCTION_8_17(v27, 1, v28);
      if (v30)
      {
        sub_231CC154C(v16[7], &qword_27DD74510, &qword_231E1E2D0);
      }

      else
      {
        v31 = *v24;
        (*v24)(v16[10], v16[7], v16[8]);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_210();
          v37 = OUTLINED_FUNCTION_0_1();
          v22 = sub_231D9F7F4(v37, v38, v39, v22, &qword_27DD74E30, &qword_231E1CB80, v40, v41);
        }

        v34 = *(v22 + 2);
        v33 = *(v22 + 3);
        if (v34 >= v33 >> 1)
        {
          OUTLINED_FUNCTION_2_12(v33);
          OUTLINED_FUNCTION_248_0();
          v22 = sub_231D9F7F4(v42, v43, v44, v45, &qword_27DD74E30, &qword_231E1CB80, v46, v47);
        }

        *(v22 + 2) = v34 + 1;
        OUTLINED_FUNCTION_79();
        v31(&v22[v35 + *(v36 + 72) * v34]);
      }

      v21 += a11;
      --v18;
    }

    while (v18);
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  v16[17] = v22;
  sub_231E10B40();
  sub_231D91FB8();

  v48 = v16[4];
  if (*(v22 + 2) == v73)
  {
    v49 = v48[9];
    __swift_project_boxed_opaque_existential_0(v48 + 5, v48[8]);
    sub_231DDAFC4();
    OUTLINED_FUNCTION_7_15();
    v16[18] = v50;
    v75 = v49 + 40;
    OUTLINED_FUNCTION_34_2();
    v76 = v51 + *v51;
    swift_task_alloc();
    OUTLINED_FUNCTION_58_0();
    v16[19] = v52;
    *v52 = v53;
    OUTLINED_FUNCTION_379(v52);
    OUTLINED_FUNCTION_94_5();
    OUTLINED_FUNCTION_37();
  }

  else
  {
    v64 = v16[3];

    v65 = v48[9];
    __swift_project_boxed_opaque_existential_0(v48 + 5, v48[8]);

    v66 = sub_231D11910();
    v16[21] = sub_231D922EC(v66, v64);
    sub_231DDAFC4();
    OUTLINED_FUNCTION_7_15();
    v16[22] = v67;
    v75 = v65 + 24;
    OUTLINED_FUNCTION_34_2();
    v76 = v68 + *v68;
    swift_task_alloc();
    OUTLINED_FUNCTION_58_0();
    v16[23] = v69;
    *v69 = v70;
    OUTLINED_FUNCTION_379(v69);
    OUTLINED_FUNCTION_37();
  }

  return v62(v54, v55, v56, v57, v58, v59, v60, v61, v73, a10, a11, v75, v76, a14, a15, a16);
}

uint64_t sub_231D91B84()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_87_5();
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 160) = v0;

  OUTLINED_FUNCTION_223();

  OUTLINED_FUNCTION_137_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231D91CCC()
{
  OUTLINED_FUNCTION_29();
  (*(v0[12] + 8))(v0[13], v0[11]);

  OUTLINED_FUNCTION_14_0();

  return v1();
}

uint64_t sub_231D91D68()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231D91EA0()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v0 = OUTLINED_FUNCTION_336();
  v1(v0);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_97_3();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_231D91F2C()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v0 = OUTLINED_FUNCTION_336();
  v1(v0);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_97_3();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

void sub_231D91FB8()
{
  OUTLINED_FUNCTION_118();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_450();
  if (v4 && ((v11 = OUTLINED_FUNCTION_54_0(), sub_231DAA834(v11, v12), v14 = v13, type metadata accessor for AssetManager(), sub_231D46970(), v16 = v15, v17 = sub_231D936FC(v14, v15), , v17) || (sub_231D46C6C(), v19 = v18, v20 = OUTLINED_FUNCTION_54_0(), v22 = sub_231D24924(v20, v21, v19), , v22)))
  {
    sub_231CB4EEC();
    v23 = OUTLINED_FUNCTION_396();
    v24(v23);

    v25 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_148_0();
    if (os_log_type_enabled(v25, v6))
    {
      v26 = OUTLINED_FUNCTION_9_1();
      v27 = OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_386(v27);
      *v26 = 136315138;
      v28 = sub_231DDB1E8();
      OUTLINED_FUNCTION_343(v28, v29);
      OUTLINED_FUNCTION_335();
      *(v26 + 4) = v2;
      _os_log_impl(&dword_231CAE000, v25, v6, "%s Using topic summary style", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_14();
    }

    (*(v9 + 8))(v0, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD750D8, &qword_231E1E298);
    OUTLINED_FUNCTION_65_4();
    sub_231E106E0();
    OUTLINED_FUNCTION_7_4();
    *(OUTLINED_FUNCTION_366() + 16) = xmmword_231E138E0;
    sub_231E106B0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD750D8, &qword_231E1E298);
    OUTLINED_FUNCTION_65_4();
    sub_231E106E0();
    OUTLINED_FUNCTION_7_4();
    *(OUTLINED_FUNCTION_366() + 16) = xmmword_231E138E0;
    sub_231E106C0();
  }

  OUTLINED_FUNCTION_2_25();
  sub_231CB4810(v30, v31, MEMORY[0x277D42388]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD750E0, &qword_231E1E2A0);
  OUTLINED_FUNCTION_1_24();
  sub_231DA21B0(v32, &qword_27DD750E0, &qword_231E1E2A0, v33);
  sub_231E11CD0();
  OUTLINED_FUNCTION_113();
}

void *sub_231D922EC(unint64_t a1, uint64_t a2)
{
  v4 = sub_231E10A30();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!a1)
  {

    return MEMORY[0x277D84F90];
  }

  v9 = *(a2 + 16);
  v32 = a1;
  if (v9 >= a1)
  {
    v10 = a1;
  }

  else
  {
    v10 = v9;
  }

  v40 = MEMORY[0x277D84F90];
  sub_231D9FE04(0, v10, 0);
  v11 = v40;
  v12 = *(a2 + 16);
  if (!v12)
  {

    return v11;
  }

  v13 = 0;
  v15 = *(v5 + 16);
  v14 = v5 + 16;
  v16 = (*(v14 + 64) + 32) & ~*(v14 + 64);
  v31 = a2;
  v37 = v15;
  v38 = v16;
  v17 = a2 + v16;
  v18 = *(v14 + 56);
  v33 = (v14 + 24);
  v34 = (v14 + 16);
  v19 = v32;
  v35 = v14;
  do
  {
    v20 = v8;
    result = v37(v8, v17, v4);
    v21 = *(v11 + 16);
    if (v21 >= v19)
    {
      if (v13 >= v21)
      {
        __break(1u);
        goto LABEL_30;
      }

      v8 = v20;
      (*v33)(v11 + v38 + v18 * v13, v20, v4);
      if ((v13 + 1) < v19)
      {
        ++v13;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v36 = v13;
      v22 = v4;
      v23 = v38;
      v40 = v11;
      v24 = *(v11 + 24);
      if (v21 >= v24 >> 1)
      {
        sub_231D9FE04((v24 > 1), v21 + 1, 1);
        v19 = v32;
        v11 = v40;
      }

      *(v11 + 16) = v21 + 1;
      v25 = v11 + v23 + v21 * v18;
      v8 = v20;
      v4 = v22;
      (*v34)(v25, v20, v22);
      v13 = v36;
    }

    v17 += v18;
    --v12;
  }

  while (v12);

  if (!v13)
  {
    return v11;
  }

  v26 = *(v11 + 16);
  v39 = MEMORY[0x277D84F90];
  result = sub_231D9FE04(0, v26, 0);
  if (v26 >= v13)
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      goto LABEL_32;
    }

    v27 = *(v11 + 16);
    if (v27 >= v13 && v27 >= v26)
    {

      v30 = v38;
      sub_231D9FFEC(v29, v11 + v38, v13, (2 * v26) | 1);
      sub_231D9FFEC(v11, v11 + v30, 0, (2 * v13) | 1);
      return v39;
    }

    goto LABEL_33;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_231D925E0()
{
  OUTLINED_FUNCTION_18();
  v0[33] = v1;
  v0[34] = v2;
  v0[31] = v3;
  v0[32] = v4;
  v0[30] = v5;
  v6 = type metadata accessor for SummarizerResult(0);
  OUTLINED_FUNCTION_47(v6);
  v0[35] = OUTLINED_FUNCTION_55();
  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231D92660()
{
  OUTLINED_FUNCTION_29();
  sub_231DA3A98(v0[31], v0[35]);
  OUTLINED_FUNCTION_244(xmmword_231E13680);
  sub_231DDBF28();
  v1 = swift_task_alloc();
  v0[36] = v1;
  *v1 = v0;
  v1[1] = sub_231D92744;
  OUTLINED_FUNCTION_105_6(v0[35]);

  return sub_231CD7848();
}

uint64_t sub_231D92744()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  sub_231CD2C1C(v2 + 16);
  OUTLINED_FUNCTION_3_24();
  sub_231DA1DDC();

  OUTLINED_FUNCTION_14_0();

  return v6();
}

uint64_t sub_231D9284C()
{
  OUTLINED_FUNCTION_18();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = sub_231E10340();
  v0[5] = v4;
  OUTLINED_FUNCTION_6(v4);
  v0[6] = v5;
  v0[7] = OUTLINED_FUNCTION_55();
  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231D928F4()
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_458();
  v1 = OUTLINED_FUNCTION_82();
  v2(v1);
  v3 = sub_231CE2244();
  v4 = OUTLINED_FUNCTION_48();
  v5(v4);
  v6 = v0[3];
  v7 = v0[4];
  if (v3)
  {
    v8 = *(v6 + 24);
    v14 = (*(**(v6 + 328) + 80) + **(**(v6 + 328) + 80));
    v9 = swift_task_alloc();
    v0[8] = v9;
    *v9 = v0;
    v9[1] = sub_231D92B60;
    v10 = OUTLINED_FUNCTION_27_1(v0[2]);

    return v14(v10, v8, v7);
  }

  else
  {
    __swift_project_boxed_opaque_existential_0((v6 + 280), *(v6 + 304));
    OUTLINED_FUNCTION_129();
    OUTLINED_FUNCTION_34_2();
    v15 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[9] = v13;
    *v13 = v0;
    v13[1] = sub_231D92C5C;
    OUTLINED_FUNCTION_27_1(v0[2]);
    OUTLINED_FUNCTION_128_2();

    return v15();
  }
}

uint64_t sub_231D92B60()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  OUTLINED_FUNCTION_14_0();

  return v3();
}

uint64_t sub_231D92C5C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  OUTLINED_FUNCTION_14_0();

  return v3();
}

uint64_t sub_231D92D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[9] = a8;
  v9[10] = a9;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  return OUTLINED_FUNCTION_26_8();
}

uint64_t sub_231D92D80()
{
  OUTLINED_FUNCTION_18();
  if (sub_231E10180())
  {
    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_290_0(v1);
    *v2 = v3;
    v2[1] = sub_231D92E5C;
    v4 = OUTLINED_FUNCTION_27_1(*(v0 + 40));

    return sub_231DF7BE8(v4, v5, v6, v7, v8, v9);
  }

  else
  {
    **(v0 + 16) = 0;
    OUTLINED_FUNCTION_14_0();

    return v11();
  }
}

uint64_t sub_231D92E5C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 96) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231D92F54()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_362(v1, v2, v3);
  *(v0 + 56) = sub_231E10340();
  *(v0 + 64) = swift_projectBox();
  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231D92FC0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_247_0();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  sub_231CB4810(&qword_2814CB028, MEMORY[0x277D422B0], MEMORY[0x277D42298]);
  OUTLINED_FUNCTION_180_0();
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_179_1();

  return sub_231D2D724(v3, v4, v5, v6);
}

uint64_t sub_231D93088()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  swift_endAccess();
  OUTLINED_FUNCTION_19();

  return v6();
}

void sub_231D93168()
{
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_477();
  v4 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_450();
  sub_231CB4EEC();
  v8 = OUTLINED_FUNCTION_396();
  v9(v8);

  v10 = sub_231E10E10();
  v11 = sub_231E11AF0();

  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_9_1();
    v17[0] = OUTLINED_FUNCTION_17_1();
    *v2 = 136446210;
    v12 = sub_231DDB1E8();
    sub_231CB5000(v12, v13, v17);
    OUTLINED_FUNCTION_87_0();
    *(v2 + 4) = v3;
    OUTLINED_FUNCTION_498(&dword_231CAE000, v14, v15, "%{public}s Captioning timed out");
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_11();
  }

  (*(v6 + 8))(v1, v4);
  v16 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_captioningResult;
  OUTLINED_FUNCTION_4_12(v0 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_captioningResult, v17);
  *(v0 + v16) = 2;
  OUTLINED_FUNCTION_113();
}

uint64_t sub_231D932D4()
{
  OUTLINED_FUNCTION_18();
  v0[91] = v1;
  v0[90] = v2;
  v0[89] = v3;
  OUTLINED_FUNCTION_391(v4, v5, v6, v7, v8);
  v9 = sub_231E10340();
  v0[92] = v9;
  OUTLINED_FUNCTION_6(v9);
  v0[93] = v10;
  v0[94] = OUTLINED_FUNCTION_55();
  v11 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_231D93380()
{
  OUTLINED_FUNCTION_486();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_295_0();
  OUTLINED_FUNCTION_22_7();
  swift_allocError();
  *v1 = 0;
  *(v0 + 536) = 0;
  *(v0 + 544) = 1;
  OUTLINED_FUNCTION_55_6((v0 + 552));
  OUTLINED_FUNCTION_134_2();
  sub_231CD2A28(v2, v3, v4, v5, v6, v7, v8, v9, v10);
  OUTLINED_FUNCTION_295_0();
  OUTLINED_FUNCTION_22_7();
  swift_allocError();
  *v11 = 0;
  OUTLINED_FUNCTION_134_2();
  sub_231CD2A90(v12, v13, v14, v15, 2, v16, v17, v18, v19);
  v20 = sub_231DDBF28();
  OUTLINED_FUNCTION_176_1(v21, v0 + 632);
  sub_231E100A0();
  swift_endAccess();
  sub_231D147C8();
  OUTLINED_FUNCTION_202_0();

  v22 = OUTLINED_FUNCTION_243_0();
  OUTLINED_FUNCTION_374(v22, v23, v24, v20);
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v25 = OUTLINED_FUNCTION_10_5();
  v26(v25);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 760) = v27;
  *v27 = v28;
  v27[1] = sub_231D934F8;
  OUTLINED_FUNCTION_79_4();
  OUTLINED_FUNCTION_368();

  return sub_231CD3B44(v29, v30, v31, v32, v33, v34);
}

uint64_t sub_231D934F8()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  sub_231CC4F5C(v2 + 16);
  v6 = OUTLINED_FUNCTION_43_4();
  v7(v6);

  OUTLINED_FUNCTION_14_0();

  return v8();
}

uint64_t sub_231D93634()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  OUTLINED_FUNCTION_47(v2);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_253_0();
  sub_231E119F0();
  v4 = OUTLINED_FUNCTION_91_1();
  __swift_storeEnumTagSinglePayload(v4, v5, 1, v6);
  OUTLINED_FUNCTION_299_0();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;

  v8 = OUTLINED_FUNCTION_71_5();
  sub_231CC3BE0(v8, v9, v0, v10, v7);
}

BOOL sub_231D936FC(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_231D2D2D4();
  v3 = sub_231E11550();
  v4 = ~(-1 << *(a2 + 32));
  do
  {
    v5 = v3 & v4;
    v6 = (1 << (v3 & v4)) & *(a2 + 56 + (((v3 & v4) >> 3) & 0xFFFFFFFFFFFFFF8));
    v7 = v6 != 0;
    if (!v6)
    {
      break;
    }

    sub_231D2D328();
    v8 = sub_231E115D0();
    v3 = v5 + 1;
  }

  while ((v8 & 1) == 0);
  return v7;
}

uint64_t sub_231D937E4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_461(v1, v2, v3, v4, v5);
  v6 = sub_231E10340();
  v0[10] = v6;
  OUTLINED_FUNCTION_6(v6);
  v0[11] = v7;
  v0[12] = OUTLINED_FUNCTION_55();
  v8 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231D93884()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v1 = OUTLINED_FUNCTION_109_5();
  v2(v1);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_446(v3);
  *v4 = v5;
  v4[1] = sub_231D93964;
  OUTLINED_FUNCTION_27_1(*(v0 + 56));
  OUTLINED_FUNCTION_97_3();

  return sub_231DC5A08(v6, v7, v8, v9, v10);
}

uint64_t sub_231D93964()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  *(v7 + 112) = v5;
  *(v7 + 120) = v6;
  *(v7 + 128) = v8;

  v9 = OUTLINED_FUNCTION_30_3();
  v10(v9);
  v11 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_231D93AA0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_502(v0[8].n128_u8[0], v0[7]);
  OUTLINED_FUNCTION_14_0();

  return v1();
}

uint64_t sub_231D93B04()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_354(v1, v2, v3, v4);
  v5 = sub_231E10340();
  v0[25] = v5;
  OUTLINED_FUNCTION_6(v5);
  v0[26] = v6;
  v0[27] = OUTLINED_FUNCTION_55();
  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231D93BA4()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v1 = OUTLINED_FUNCTION_37_0();
  v2(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 224) = v3;
  *v3 = v4;
  v3[1] = sub_231D93C78;
  OUTLINED_FUNCTION_101_2();
  OUTLINED_FUNCTION_97_3();

  return sub_231CE8498();
}