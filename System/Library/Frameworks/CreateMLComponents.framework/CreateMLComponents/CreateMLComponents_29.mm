uint64_t sub_237ED81A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *(a1 + 8 * v1 + 24);
  }

  else
  {
    return 0;
  }
}

double sub_237ED81C8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_237CBA478(a1 + 32 * v2, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

char *sub_237ED8200(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_237C85538();
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v3 + 32);
      }
    }

    v4 = OUTLINED_FUNCTION_31_0();
    return MEMORY[0x2383E1490](v4);
  }

  result = sub_237EF9710();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_237ED82C0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = a2(0);
    OUTLINED_FUNCTION_4();
    (*(v8 + 16))(a3, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6, v7);
    v9 = a3;
    v10 = 0;
    v11 = v7;
  }

  else
  {
    v11 = a2(0);
    v9 = a3;
    v10 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, 1, v11);
}

uint64_t sub_237ED8388(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (v3)
  {
    return *(v1 + 16 * v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237ED83C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s5StateOMa(0, a2, a3, a4);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_31_0();

  return v5(v4);
}

uint64_t sub_237ED8420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  v7 = *(a4 + 16);
  v5[6] = v7;
  v5[7] = *(v7 - 8);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = *(a4 + 24);
  v8 = sub_237EF7E90();
  v5[11] = v8;
  OUTLINED_FUNCTION_6_1(v8);
  v5[12] = v9;
  v5[13] = swift_task_alloc();
  v10 = swift_task_alloc();
  v5[14] = v10;
  *v10 = v5;
  v10[1] = sub_237ED85DC;

  return MultivariateLinearRegressor.Model.applied(to:eventHandler:)();
}

uint64_t sub_237ED85DC()
{
  OUTLINED_FUNCTION_2_0();
  v2 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  *(v4 + 120) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_237ED870C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v60 = *MEMORY[0x277D85DE8];
  v13 = sub_237EF7E20();
  v14 = 1;
  isStackAllocationSafe = sub_237C6C5F4(1, v13);
  v19 = isStackAllocationSafe;
  v20 = (v18 >> 1) - v17;
  if (v18 >> 1 != v17)
  {
    if ((v18 >> 1) > v17)
    {
      v21 = (v16 + 8 * v17);
      v22 = 1;
      while (1)
      {
        v23 = *v21++;
        v14 = v22 * v23;
        if ((v22 * v23) >> 64 != (v22 * v23) >> 63)
        {
          break;
        }

        v22 = v14;
        if (!--v20)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_6:
  if (v14 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v24 = v12[7];
  v25 = *(v24 + 72);
  if ((v14 * v25) >> 64 != (v14 * v25) >> 63)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v26 = *(v24 + 80);
  if (((v26 + 1) & v26) != 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (!isStackAllocationSafe)
    {
      v58 = v19;
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  if (v26 > 0xF)
  {
    v58 = isStackAllocationSafe;
LABEL_11:
    v59 = v12[15];
    v27 = v12[13];
    v28 = v12[10];
    v30 = v12[5];
    v29 = v12[6];
    v32 = v12[3];
    v31 = v12[4];
    v33 = swift_slowAlloc();
    sub_237EDB0C0(v33, v14, v27, v32, v14, v30, v29, v28, *(v31 + 32));
    if (v59)
    {

      OUTLINED_FUNCTION_45();

      JUMPOUT(0x2383E2DF0);
    }

    MEMORY[0x2383E2DF0](v33, -1, -1);
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  if (v14 * v25 > 1024)
  {
    goto LABEL_30;
  }

LABEL_16:
  v35 = v12[15];
  MEMORY[0x28223BE20](isStackAllocationSafe);
  sub_237EDB0C0(&v57 - v36, v14, v38, v39, v14, v40, v41, v42, *(v37 + 32));
  if (!v35)
  {
    v45 = v12[9];
    v46 = v12[6];
    v47 = v12[2];
    v48 = *(v12[7] + 32);
    v48(v45, v12[8], v46);
    swift_unknownObjectRelease();
    v48(v47, v45, v46);
LABEL_22:
    (*(v12[12] + 8))(v12[13], v12[11]);

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_45();

    v50(v49, v50, v51, v52, v53, v54, v55, v56, v60, a10, a11, a12);
    return;
  }

  swift_willThrow();
  OUTLINED_FUNCTION_45();
}

uint64_t sub_237ED8A68()
{

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237ED8B40(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v2 = _s5StateOMa(0, a1[2], a1[3], a1[4]);

  return a2(v2);
}

uint64_t MultivariateLinearRegressor.Model.init(weight:bias:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_237EF7E90();
  v13 = sub_237EF90F0();
  v14 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  (*(*(v13 - 8) + 32))(a6 + v14, a2, v13);
  _s5StateOMa(0, a3, a4, a5);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_237ED8CF8(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v2 = _s5StateOMa(0, a1[2], a1[3], a1[4]);

  return a2(v2);
}

uint64_t MultivariateLinearRegressor.Model.applied(to:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v7 = v2[2];
  v1[9] = v7;
  v8 = _s5StateOMa(0, v7, v2[3], v2[4]);
  v1[10] = v8;
  OUTLINED_FUNCTION_6_1(v8);
  v1[11] = v9;
  v1[12] = swift_task_alloc();
  v10 = sub_237EF7E90();
  v1[13] = v10;
  v11 = sub_237EF90F0();
  v1[14] = v11;
  OUTLINED_FUNCTION_6_1(v11);
  v1[15] = v12;
  v1[16] = swift_task_alloc();
  v1[17] = *(v10 - 8);
  v1[18] = OUTLINED_FUNCTION_40_11();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  v1[21] = v13;
  OUTLINED_FUNCTION_6_1(v13);
  v1[22] = v14;
  v1[23] = OUTLINED_FUNCTION_40_11();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_237ED8F64()
{
  v1 = sub_237EF7E20();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 8 * v2 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = v0[7];

  v5 = MultivariateLinearRegressor.Model.inputSize.getter(v4);
  if (v2)
  {
    v6 = v3 == v5;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v7 = v0[7];
    v8 = sub_237EF7E20();
    sub_237EF9330();

    v0[2] = MultivariateLinearRegressor.Model.inputSize.getter(v7);
    v9 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v9);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    sub_237C84150();
    swift_allocError();
    *v10 = v8;
    *(v10 + 8) = 0xD000000000000025;
    *(v10 + 16) = 0x8000000237F01DF0;
    *(v10 + 24) = 0;
    *(v10 + 32) = 6;
    swift_willThrow();
    OUTLINED_FUNCTION_0_105();

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_49_0();

    __asm { BRAA            X1, X16 }
  }

  if (swift_dynamicCastMetatype())
  {
    (*(v0[17] + 16))(v0[20], v0[4], v0[13]);
    swift_dynamicCast();
    v13 = swift_task_alloc();
    v0[28] = v13;
    *v13 = v0;
    v13[1] = sub_237ED93F8;
LABEL_18:
    OUTLINED_FUNCTION_49_0();

    return sub_237ED9CE8();
  }

  (*(v0[11] + 16))(v0[12], v0[8], v0[10]);
  OUTLINED_FUNCTION_31_0();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v26 = v0[17];
    v25 = v0[18];
    v27 = v0[13];
    v28 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v26 + 16))(v25, v28, v27);
    v0[32] = sub_237C651A0();
    v0[33] = swift_getWitnessTable();
    sub_237EF7F30();
    v29 = swift_task_alloc();
    v0[34] = v29;
    *v29 = v0;
    v29[1] = sub_237ED979C;
    goto LABEL_18;
  }

  v14 = v0[19];
  v15 = v0[16];
  v16 = v0[17];
  v17 = v0[14];
  v18 = v0[15];
  v20 = v0[12];
  v19 = v0[13];
  v21 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v16 + 32))(v14, v20, v19);
  (*(v18 + 32))(v15, v20 + v21, v17);
  v22 = swift_task_alloc();
  v0[30] = v22;
  *v22 = v0;
  v22[1] = sub_237ED95D0;
  OUTLINED_FUNCTION_49_0();

  return sub_237ED9FC0();
}

uint64_t sub_237ED93F8()
{
  OUTLINED_FUNCTION_2_0();
  v2 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v2[29] = v0;

  if (!v0)
  {
    (*(v2[22] + 8))(v2[26], v2[21]);
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_237ED9514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  swift_dynamicCast();
  OUTLINED_FUNCTION_2_123();

  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_45();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_237ED95D0()
{
  OUTLINED_FUNCTION_2_0();
  v2 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  *(v4 + 248) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_237ED96D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v12 = OUTLINED_FUNCTION_14_69();
  v13(v12);
  v14 = OUTLINED_FUNCTION_31_0();
  v15(v14);
  OUTLINED_FUNCTION_2_123();

  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_45();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_237ED979C()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v4 = v3;
  *v4 = *v1;
  v3[35] = v0;

  v5 = v2[24];
  v6 = v2[22];
  v7 = v2[21];
  v10 = *(v6 + 8);
  v8 = v6 + 8;
  v9 = v10;
  if (!v0)
  {
    v3[36] = v9;
    v3[37] = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  v9(v5, v7);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237ED9910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v13 = v12[36];
  v14 = v12[25];
  v15 = v12[21];
  (*(v12[22] + 16))(v12[23], v14, v15);
  sub_237EF7F30();
  v13(v14, v15);
  OUTLINED_FUNCTION_2_123();

  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_45();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_237ED9A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  (*(v12[22] + 8))(v12[26], v12[21]);
  v22 = v12[29];
  OUTLINED_FUNCTION_0_105();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, v22, a10, a11, a12);
}

uint64_t sub_237ED9AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v13 = OUTLINED_FUNCTION_14_69();
  v14(v13);
  v15 = OUTLINED_FUNCTION_31_0();
  v16(v15);
  v26 = *(v12 + 248);
  OUTLINED_FUNCTION_0_105();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, v26, a10, a11, a12);
}

uint64_t sub_237ED9BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v22 = *(v12 + 280);
  OUTLINED_FUNCTION_0_105();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, v22, a10, a11, a12);
}

uint64_t sub_237ED9C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = OUTLINED_FUNCTION_16_59();
  v13 = _s5StateOMa(v9, v10, v11, v12);
  return a5(a1, a2, v13, a4);
}

uint64_t sub_237ED9CE8()
{
  OUTLINED_FUNCTION_2_0();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  v1[11] = v5;
  OUTLINED_FUNCTION_6_1(v5);
  v1[12] = v6;
  v1[13] = OUTLINED_FUNCTION_40_11();
  v1[14] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_237ED9DAC()
{
  v1 = sub_237EF7E20();
  v2 = sub_237C6C5F4(1, v1);
  if (v5 >> 1 == v4)
  {
LABEL_6:
    v9 = v0[13];
    v8 = v0[14];
    v10 = v0[11];
    v12 = v0[9];
    v11 = v0[10];
    v25 = v0[12];
    v23 = v2;
    v24 = v3;
    v21 = v4;
    v22 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_237F04760;
    *(v13 + 32) = 1;
    v14 = OUTLINED_FUNCTION_19_52();
    v15 = MultivariateLinearRegressor.Model.inputSize.getter(v14);
    OUTLINED_FUNCTION_15_54(v15);

    v16 = swift_task_alloc();
    *(v16 + 16) = *(v12 + 16);
    *(v16 + 32) = *(v12 + 32);
    *(v16 + 40) = 1;
    *(v16 + 48) = v11;
    OUTLINED_FUNCTION_11_67();

    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237F03530;
    v18 = OUTLINED_FUNCTION_19_52();
    *(inited + 32) = MultivariateLinearRegressor.Model.outputSize.getter(v18);
    sub_237EDA614(v23, v24, v21, v22, inited);
    swift_setDeallocating();
    sub_237EF7E60();

    swift_unknownObjectRelease();
    v19 = *(v25 + 8);
    v19(v9, v10);
    v19(v8, v10);

    OUTLINED_FUNCTION_10_3();

    v20();
  }

  else
  {
    if ((v5 >> 1) > v4)
    {
      while (1)
      {
        OUTLINED_FUNCTION_17_60();
        if (!v7)
        {
          break;
        }

        if (v6 == 1)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_237ED9FC0()
{
  OUTLINED_FUNCTION_2_0();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[7] = v5;
  v1[8] = v6;
  v1[13] = *(v2 + 16);
  v1[14] = *(v2 + 24);
  v7 = sub_237EF7E90();
  v1[15] = v7;
  OUTLINED_FUNCTION_6_1(v7);
  v1[16] = v8;
  v1[17] = OUTLINED_FUNCTION_40_11();
  v1[18] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_237EDA08C()
{
  v1 = sub_237EF7E20();
  v2 = sub_237C6C5F4(1, v1);
  if (v5 >> 1 == v4)
  {
LABEL_6:
    v9 = *(v0 + 136);
    v8 = *(v0 + 144);
    v10 = *(v0 + 120);
    v12 = *(v0 + 88);
    v11 = *(v0 + 96);
    v27 = *(v0 + 128);
    v25 = v2;
    v26 = v3;
    v23 = v4;
    v24 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_237F04760;
    *(v13 + 32) = 1;
    v21 = *(v0 + 104);
    v22 = *(v0 + 72);
    v14 = OUTLINED_FUNCTION_19_52();
    v15 = MultivariateLinearRegressor.Model.inputSize.getter(v14);
    OUTLINED_FUNCTION_15_54(v15);

    v16 = swift_task_alloc();
    *(v16 + 16) = v21;
    *(v16 + 32) = *(v12 + 32);
    *(v16 + 40) = 1;
    *(v16 + 48) = v11;
    *(v16 + 56) = v22;
    OUTLINED_FUNCTION_11_67();

    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237F03530;
    v18 = OUTLINED_FUNCTION_19_52();
    *(inited + 32) = MultivariateLinearRegressor.Model.outputSize.getter(v18);
    sub_237EDA614(v25, v26, v23, v24, inited);
    swift_setDeallocating();
    sub_237EF7E60();

    swift_unknownObjectRelease();
    v19 = *(v27 + 8);
    v19(v9, v10);
    v19(v8, v10);

    OUTLINED_FUNCTION_10_3();

    v20();
  }

  else
  {
    if ((v5 >> 1) > v4)
    {
      while (1)
      {
        OUTLINED_FUNCTION_17_60();
        if (!v7)
        {
          break;
        }

        if (v6 == 1)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_237EDA2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_237F04760;
  *(v12 + 32) = a5;
  v13 = type metadata accessor for MultivariateLinearRegressor.Model(0, a7, a8, a9);
  *(v12 + 40) = MultivariateLinearRegressor.Model.outputSize.getter(v13);
  return sub_237EF7DE0();
}

uint64_t sub_237EDA3B4(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v42 = a8;
  v45 = a2;
  v14 = a1[1];
  v46 = *a1;
  v47 = a4;
  result = sub_237ED4304(v46, v14, 0);
  v43 = a3;
  if (a3 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
    v16 = 0;
    v40 = a9;
    v41 = a10;
    v39 = a6;
    while (v43 != v16)
    {
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (!v47)
      {
        goto LABEL_23;
      }

      v17 = a6[2];
      if (!v17)
      {
        goto LABEL_16;
      }

      if ((v16 * a6[4]) >> 64 != (v16 * a6[4]) >> 63)
      {
        goto LABEL_17;
      }

      v18 = type metadata accessor for MultivariateLinearRegressor.Model(0, v42, v40, v41);
      result = MultivariateLinearRegressor.Model.inputSize.getter(v18);
      if (v17 == 1)
      {
        goto LABEL_18;
      }

      if (!v46)
      {
        goto LABEL_24;
      }

      v19 = v45[2];
      if (!v19)
      {
        goto LABEL_19;
      }

      v20 = v16;
      v21 = v11;
      v22 = v45[4];
      v23 = v20 * v22;
      v44 = v20;
      if ((v20 * v22) >> 64 != (v20 * v22) >> 63)
      {
        goto LABEL_20;
      }

      v24 = result;
      v25 = a6[5];
      result = MultivariateLinearRegressor.Model.outputSize.getter(v18);
      if (v19 == 1)
      {
        goto LABEL_21;
      }

      v26 = result;
      v27 = v45[5];
      v28 = v46 + 4 * v23;
      MEMORY[0x28223BE20](result);
      v34[0] = v28;
      v34[1] = v29;
      v35 = v27;
      v36 = v30;
      v37 = v24;
      v38 = v25;
      v31 = MEMORY[0x277D84F78];
      v32 = sub_237ED9C7C(sub_237EDB804, &v33, v18, MEMORY[0x277D84F78] + 8, sub_237DB11B4);
      MEMORY[0x28223BE20](v32);
      v35 = v28;
      v36 = v26;
      v37 = v27;
      result = sub_237ED9C7C(sub_237EDB840, v34, v18, v31 + 8, sub_237DB183C);
      v11 = v21;
      v16 = v44 + 1;
      a6 = v39;
    }
  }

  return result;
}

void sub_237EDA614(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else
  {
    v6 = *(a5 + 16);
    v7 = __OFADD__(v6, v5);
    v8 = v6 + v5;
    if (!v7)
    {
      sub_237D0B340(0, v8 & ~(v8 >> 63), 0, MEMORY[0x277D84F90]);
      v12 = swift_unknownObjectRetain();
      sub_237E48298(v12, a2, a3, a4);
      v13 = sub_237EF8260();
      sub_237E481CC(v13);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_237EDA6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_237F04760;
  *(v12 + 32) = a5;
  v13 = type metadata accessor for MultivariateLinearRegressor.Model(0, a9, a10, a11);
  *(v12 + 40) = MultivariateLinearRegressor.Model.outputSize.getter(v13);
  return sub_237EF7DE0();
}

uint64_t sub_237EDA7CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v56 = a8;
  v68 = a2;
  v69 = a7;
  v62 = a6;
  v59 = a4;
  v60 = a5;
  v64 = a3;
  v72 = a11;
  v61 = sub_237EF7E90();
  v55 = sub_237EF90F0();
  v74 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = v51 - v13;
  v63 = *(a10 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = *a1;
  v18 = a1[1];
  swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  sub_237EF9CE0();
  v57 = v18;
  v58 = v19;
  sub_237EF9120();
  v20 = *(v63 + 8);
  v71 = a10;
  result = v20(v16, a10);
  if (v64 < 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v53 = a9;
    v52 = (v74 + 16);
    v51[1] = v61 - 8;
    v51[0] = v74 + 8;
    v24 = v71;
    v23 = v72;
    v25 = v73;
    v26 = v62;
    while (v64 != v22)
    {
      if (__OFADD__(v22, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
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

      result = sub_237EF8530();
      if (!result)
      {
        goto LABEL_26;
      }

      v27 = v26[2];
      if (!v27)
      {
        goto LABEL_19;
      }

      if ((v22 * v26[4]) >> 64 != (v22 * v26[4]) >> 63)
      {
        goto LABEL_20;
      }

      v74 = v22;
      v67 = type metadata accessor for MultivariateLinearRegressor.Model(0, v24, v23, v70);
      result = MultivariateLinearRegressor.Model.inputSize.getter(v67);
      if (v27 == 1)
      {
        goto LABEL_21;
      }

      v73 = v25;
      UnsafeVectorPointer.init(start:count:stride:)();
      v29 = v28;
      v31 = v30;
      v33 = v32;
      result = sub_237EF9140();
      if (!result)
      {
        goto LABEL_27;
      }

      v34 = *(v68 + 16);
      if (!v34)
      {
        goto LABEL_22;
      }

      if ((v74 * *(v68 + 32)) >> 64 != (v74 * *(v68 + 32)) >> 63)
      {
        goto LABEL_23;
      }

      result = MultivariateLinearRegressor.Model.outputSize.getter(v67);
      if (v34 == 1)
      {
        goto LABEL_24;
      }

      v35 = v71;
      UnsafeMutableVectorPointer.init(start:count:stride:)();
      MEMORY[0x28223BE20](v36);
      v37 = v72;
      v51[-10] = v35;
      v51[-9] = v37;
      v38 = v70;
      v51[-8] = v70;
      v51[-7] = v39;
      v66 = v40;
      v67 = v39;
      v65 = v41;
      v51[-6] = v41;
      v51[-5] = v40;
      v51[-4] = v29;
      v51[-3] = v31;
      v51[-2] = v33;
      v42 = v61;
      WitnessTable = swift_getWitnessTable();
      v44 = MEMORY[0x277D84F78];
      v45 = v73;
      sub_237D16240(sub_237EDB738, &v51[-12], v42, MEMORY[0x277D84F78] + 8, WitnessTable);
      v47 = v54;
      v46 = v55;
      (*v52)(v54, v53, v55);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v47, 1, v42);
      if (EnumTagSinglePayload == 1)
      {
        result = (*v51[0])(v47, v46);
        v26 = v62;
        v25 = v45;
      }

      else
      {
        v73 = v51;
        MEMORY[0x28223BE20](EnumTagSinglePayload);
        v51[-6] = v35;
        v51[-5] = v37;
        v49 = v67;
        v51[-4] = v38;
        v51[-3] = v49;
        v50 = v66;
        v51[-2] = v65;
        v51[-1] = v50;
        sub_237D1651C(sub_237EDB770, &v51[-8], v42, v44 + 8, WitnessTable);
        v25 = v45;
        result = (*(*(v42 - 8) + 8))(v47, v42);
        v26 = v62;
      }

      v22 = v74 + 1;
      v24 = v71;
      v23 = v72;
    }
  }

  return result;
}

uint64_t sub_237EDAD80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v21 = a7;
  v22 = a3;
  v16 = *(a8 - 8);
  MEMORY[0x28223BE20](a1);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237EDAFDC(v19, a10);
  UnsafeMutableVectorPointer<A>.addProduct(_:_:transposed:scaledBy:)(a1, a5, a6, v21, 0, v18, a2, v22, a4, a8);
  return (*(v16 + 8))(v18, a8);
}

uint64_t sub_237EDAEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22 = a6;
  v15 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237EDAFDC(v18, a9);
  UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(a1, a2, a3, v17, a4, a5, v22, a7, a9, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
  return (*(v15 + 8))(v17, a7);
}

uint64_t sub_237EDAFDC(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  return sub_237EF9CE0();
}

void sub_237EDB0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_237EF7E90();
  sub_237EF7DF0();
  sub_237EF9180();
  swift_getWitnessTable();
  Collection<>.mean()();
}

void sub_237EDB23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v40 = a6;
  v41 = a7;
  v37 = a1;
  v38 = a2;
  v14 = *(a11 - 8);
  MEMORY[0x28223BE20](a1);
  v36 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v16;
  if (v16 < 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
    v17 = 0;
    v48 = a13;
    v39 = a12;
    v32 = (v14 + 40);
    v33 = a4 + 24;
    v31 = a9;
    v34 = v14;
    v35 = a4;
    while (v42 != v17)
    {
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (!sub_237EF8530())
      {
        goto LABEL_17;
      }

      v18 = type metadata accessor for MultivariateLinearRegressor.Model(0, a11, v39, v48);
      v19 = MultivariateLinearRegressor.Model.outputSize.getter(v18);
      if ((v17 * v19) >> 64 != (v17 * v19) >> 63)
      {
        goto LABEL_13;
      }

      v20 = *(v14 + 72);
      MultivariateLinearRegressor.Model.outputSize.getter(v18);
      v21 = sub_237EF8540();
      v23 = v22;
      if (!sub_237EF8530())
      {
        goto LABEL_18;
      }

      if (!*(a4 + 16))
      {
        goto LABEL_14;
      }

      if ((v17 * *(a4 + 32)) >> 64 != (v17 * *(a4 + 32)) >> 63)
      {
        goto LABEL_15;
      }

      MultivariateLinearRegressor.Model.outputSize.getter(v18);
      UnsafeVectorPointer.init(start:count:stride:)();
      v46 = v21;
      v47 = v23;
      v43 = v24;
      v44 = v25;
      v45 = v26;
      sub_237EF8550();
      type metadata accessor for UnsafeVectorPointer(0, a11, v27, v28);
      swift_getWitnessTable();
      swift_getWitnessTable();
      v29 = v36;
      a4 = v35;
      meanSquaredError<A, B, C>(_:_:)();
      (*v32)(v31 + v20 * v17++, v29, a11);
      v14 = v34;
    }
  }
}

uint64_t sub_237EDB4EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237CEF6D4;

  return MultivariateLinearRegressor.Model.applied(to:eventHandler:)();
}

uint64_t sub_237EDB5B4(uint64_t *a1)
{
  result = _s5StateOMa(319, a1[2], a1[3], a1[4]);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_123()
{
}

uint64_t OUTLINED_FUNCTION_11_67()
{

  return sub_237EF7DF0();
}

uint64_t OUTLINED_FUNCTION_15_54(uint64_t a1)
{
  *(v1 + 40) = a1;

  return sub_237EF7E60();
}

uint64_t sub_237EDB96C@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>)
{
  result = sub_237EDBA5C(a2, a3, a4, a5, a6, a7);
  if (!v7)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
    }

    else
    {
      v18 = result;
      MEMORY[0x28223BE20](result);
      v21[2] = a3;
      v21[3] = a4;
      v21[4] = a5;
      v21[5] = a6;
      v21[6] = a7;
      v21[7] = a2;
      v21[8] = v19;
      v21[9] = v20;
      result = v19 * v17;
      if ((v18 * v17) >> 64 == result >> 63)
      {
        result = sub_237EDC378(result, sub_237EDC0BC, v21, v18, v17);
        *a1 = v18;
        *(a1 + 8) = v17;
        *(a1 + 16) = 0;
        *(a1 + 24) = result;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_237EDBA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a6;
  v8 = sub_237EF7E90();
  v9 = sub_237EF90F0();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  OUTLINED_FUNCTION_0_106();
  if (sub_237EF8DD0())
  {
    sub_237C84150();
    swift_allocError();
    *v12 = xmmword_237F1F090;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = 2;
    swift_willThrow();
    return a4;
  }

  v17 = v6;
  sub_237EF8E80();
  result = __swift_getEnumTagSinglePayload(v11, 1, v8);
  if (result != 1)
  {
    sub_237EF7E20();
    v14 = (*(*(v8 - 8) + 8))(v11, v8);
    MEMORY[0x28223BE20](v14);
    v15 = v17;
    sub_237EF8810();
    if (!v15)
    {
      OUTLINED_FUNCTION_0_106();
      a4 = sub_237EF8DA0();
    }

    return a4;
  }

  __break(1u);
  return result;
}

uint64_t sub_237EDBC7C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v54 = a4;
  v55 = a2;
  v42 = a9;
  v43 = a3;
  v45 = a6;
  v47 = a8;
  v12 = sub_237EF7E90();
  v41 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v52 = sub_237EF90F0();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - v17;
  v46 = a7;
  v19 = *(a7 + 8);
  v20 = sub_237EF97D0();
  MEMORY[0x28223BE20](v20);
  v56 = sub_237EF97C0();
  v40 = *(v56 - 8);
  v21 = MEMORY[0x28223BE20](v56);
  v23 = &v39 - v22;
  v44 = a5;
  MEMORY[0x2383E0850](a5, v19, v21);
  v55 = v23;
  sub_237EF97A0();
  v24 = (v50 + 4);
  v50 = (v41 + 32);
  v48 = v54 + 1;
  v25 = __OFADD__(v54, 1);
  v49 = v25;
  v26 = (v41 + 8);
  while (1)
  {
    v27 = v51;
    sub_237EF97B0();
    (*v24)(v18, v27, v52);
    v28 = TupleTypeMetadata2;
    if (__swift_getEnumTagSinglePayload(v18, 1, TupleTypeMetadata2) == 1)
    {
      return (*(v40 + 8))(v55, v56);
    }

    v29 = *v18;
    result = (*v50)(v14, &v18[*(v28 + 48)], v12);
    if (v49)
    {
      break;
    }

    v31 = v29 * v48;
    if ((v29 * v48) >> 64 != (v29 * v48) >> 63)
    {
      goto LABEL_12;
    }

    MEMORY[0x28223BE20](result);
    v32 = v45;
    *(&v39 - 10) = v44;
    *(&v39 - 9) = v32;
    v33 = v47;
    *(&v39 - 8) = v46;
    *(&v39 - 7) = v33;
    v34 = v43;
    *(&v39 - 6) = v42;
    *(&v39 - 5) = v34;
    v35 = v54;
    *(&v39 - 4) = v54;
    *(&v39 - 3) = a1;
    *(&v39 - 2) = v31;
    v37 = v36;
    v38 = v57;
    result = sub_237EF7DF0();
    if (__OFADD__(v31, v35))
    {
      goto LABEL_13;
    }

    v57 = v38;
    *(*a1 + 8 * (v31 + v35)) = 0x3FF0000000000000;
    (*v26)(v37, v12);
    v14 = v37;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_237EDC0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v25 = a7;
  v26 = a8;
  v24 = a1;
  v14 = *(a10 - 8);
  v15.n128_f64[0] = MEMORY[0x28223BE20](a1);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v18 < 0)
  {
LABEL_8:
    __break(1u);
    return;
  }

  if (a6)
  {
    v19 = 0;
    v23[2] = a13;
    while (1)
    {
      v20 = v26 + v19;
      if (__OFADD__(v26, v19))
      {
        break;
      }

      v21 = *v25;
      v22 = v19 + 1;
      (*(v14 + 16))(v17, v24 + *(v14 + 72) * v19, a10, v15);
      sub_237C65348();
      sub_237EF8190();
      v15.n128_u64[0] = v27;
      *(v21 + 8 * v20) = v27;
      v19 = v22;
      if (a6 == v22)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_8;
  }
}

uint64_t sub_237EDC24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = 0xD000000000000025;
  sub_237EF7E90();
  v8 = *(sub_237EF7E20() + 16);

  v9 = sub_237EF7E20();
  v10 = v9;
  if (v8 > 1)
  {
    v11 = "d be ";
LABEL_7:
    v15 = v11 | 0x8000000000000000;
    sub_237C84150();
    swift_allocError();
    *v16 = v10;
    *(v16 + 8) = v7;
    *(v16 + 16) = v15;
    *(v16 + 24) = 0;
    *(v16 + 32) = 6;
    return swift_willThrow();
  }

  v12 = sub_237C60C7C(v9, a2);

  if ((v12 & 1) == 0)
  {
    v14 = *(sub_237EF7E20() + 16);

    if (v14 || (result = sub_237C60C7C(a2, &unk_284ACECF8), (result & 1) == 0))
    {
      v10 = sub_237EF7E20();
      v11 = "n imputing but got ";
      v7 = 0xD000000000000028;
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t sub_237EDC378(uint64_t result, uint64_t (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = result;
  if (result)
  {
    v10 = sub_237EF89B0();
    *(v10 + 16) = v9;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v11 = v10 + 32;
  v13[0] = v10 + 32;
  v13[1] = v9;
  result = a2(v13);
  if (v5)
  {
    if (!v13[0])
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v11 == v13[0])
    {
      *(v10 + 16) = 0;

      return v10;
    }

    goto LABEL_16;
  }

  v12 = a4 * a5;
  if ((a4 * a5) >> 64 != (a4 * a5) >> 63)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v12 > v9)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v13[0])
  {
    if (v11 == v13[0])
    {
      *(v10 + 16) = v12;
      return v10;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t ContiguousArray.withUnsafeVectorPointer<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[5] = a2;
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
  return sub_237CC8430(sub_237EDC630, v10, a3, a4, a5, v8, MEMORY[0x277D84950], &v11);
}

uint64_t sub_237EDC5A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  result = sub_237EF8530();
  if (result)
  {
    UnsafeVectorPointer.init(start:count:stride:)();
    result = a3();
    if (v7)
    {
      *a7 = v7;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *ContiguousArray.withUnsafeMutableVectorPointer<A>(_:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_237EF94D0();
  v9 = *(*v4 + 16);
  v10 = *(a3 + 16);
  v11 = *v4 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80));
  v14[0] = v11;
  v14[1] = v9;
  sub_237EDC768(v14, a1, a2, v10, a4, &v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
  return sub_237CC94F0(v14, v11, v9, v4, v10);
}

uint64_t sub_237EDC768(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  result = sub_237EF9140();
  if (result)
  {
    UnsafeMutableVectorPointer.init(start:count:stride:)();
    result = a2();
    if (v6)
    {
      *a6 = v6;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t dot<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a4;
  v5[4] = a2;
  return ContiguousArray.withUnsafeVectorPointer<A>(_:)(sub_237EDCE28, v5, a1, a3, a3);
}

{
  v5[3] = a4;
  v5[4] = a2;
  return DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237EEB740, v5, a1, a3, a3, a4);
}

uint64_t sub_237EDC854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[2] = a5;
  v7[3] = a6;
  v7[4] = a1;
  v7[5] = a2;
  v7[6] = a3;
  return ContiguousArray.withUnsafeVectorPointer<A>(_:)(sub_237EDCE48, v7, a4, a5, a5);
}

uint64_t sub_237EDC8A0@<X0>(uint64_t a1@<X0>, void (**a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v50 = a6;
  v43 = a5;
  v41 = a4;
  v63 = a3;
  v44 = a2;
  v42 = a1;
  v12 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v48 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v47 = &v40 - v15;
  MEMORY[0x28223BE20](v16);
  v46 = &v40 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = sub_237EF90F0();
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v40 - v20;
  v45 = *(*(a8 + 16) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_237EF9FB0();
  v49 = a9;
  sub_237EF9D20();
  v59 = v41;
  v60 = v43;
  v61 = v50;
  v51 = v42;
  *&v52 = v44;
  *(&v52 + 1) = v63;
  v25 = type metadata accessor for UnsafeVectorPointer(0, a7, v23, v24);
  WitnessTable = swift_getWitnessTable();
  sub_237EFA000();
  v50 = WitnessTable;
  v51 = v55;
  v52 = v56;
  v53 = v57;
  v54 = v58;
  v59 = v25;
  v60 = v25;
  v63 = v25;
  v61 = WitnessTable;
  v62 = WitnessTable;
  sub_237EF9380();
  sub_237EF9350();
  v44 = (v12 + 32);
  v27 = (v12 + 8);
  while (1)
  {
    v55 = v63;
    *&v56 = v63;
    *(&v56 + 1) = v50;
    v57 = v50;
    sub_237EF9370();
    sub_237EF9360();
    result = __swift_getEnumTagSinglePayload(v21, 1, TupleTypeMetadata2);
    if (result == 1)
    {
      break;
    }

    v29 = *(TupleTypeMetadata2 + 48);
    v30 = TupleTypeMetadata2;
    v31 = *v44;
    v32 = v46;
    (*v44)(v46, v21, a7);
    v33 = &v21[v29];
    v34 = v21;
    v35 = v47;
    v31(v47, v33, a7);
    v36 = v48;
    sub_237EF8D30();
    sub_237EF9770();
    v37 = *v27;
    v38 = v36;
    TupleTypeMetadata2 = v30;
    (*v27)(v38, a7);
    v39 = v35;
    v21 = v34;
    v37(v39, a7);
    v37(v32, a7);
  }

  return result;
}

float dot(_:_:)(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  __C = 0.0;
  v1 = OUTLINED_FUNCTION_1_122(a1);
  vDSP_dotpr(v1, 1, v2, 1, &__C, v3);
  return __C;
}

{
  return sub_237EE93DC(a1, sub_237EEB75C);
}

double dot(_:_:)(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0.0;
  v1 = OUTLINED_FUNCTION_1_122(a1);
  vDSP_dotprD(v1, 1, v2, 1, v5, v3);
  return v5[0];
}

{
  return sub_237EE9424(a1, sub_237EEB778);
}

uint64_t LowerStrictlyTriangularMatrix.base.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return result;
}

void (*LowerStrictlyTriangularMatrix.subscript.read(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9))(void *a1)
{
  OUTLINED_FUNCTION_1_1();
  *v10 = v11;
  v10[1] = v12;
  *(a1 + 16) = __swift_coroFrameAllocStub(*(v13 + 64));
  UpperStrictlyTriangularMatrix.subscript.getter();
  return sub_237C84DD4;
}

void (*LowerStrictlyTriangularMatrix.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(Swift::Int **a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v9;
  v9[1] = a3;
  v9[2] = v4;
  *v9 = a2;
  v9[3] = *(a4 + 16);
  OUTLINED_FUNCTION_1_1();
  *(v10 + 32) = v11;
  v13 = *(v12 + 64);
  v9[5] = __swift_coroFrameAllocStub(v13);
  v9[6] = __swift_coroFrameAllocStub(v13);
  v9[7] = *(a4 + 24);
  UpperStrictlyTriangularMatrix.subscript.getter();
  return sub_237EDD110;
}

void sub_237EDD110(Swift::Int **a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = (*a1)[6];
  v6 = (*a1)[7];
  v7 = (*a1)[5];
  if (a2)
  {
    v8 = v4[3];
    v9 = v4[4];
    v10 = v4[1];
    v11 = *v4;
    (*(v9 + 16))((*a1)[5], v5, v8);
    v13 = type metadata accessor for UpperStrictlyTriangularMatrix(0, v8, v6, v12);
    UpperStrictlyTriangularMatrix.subscript.setter(v7, v10, v11, v13);
    (*(v9 + 8))(v5, v8);
  }

  else
  {
    v15 = *v4;
    v14 = v4[1];
    v16 = type metadata accessor for UpperStrictlyTriangularMatrix(0, v4[3], v6, a4);
    UpperStrictlyTriangularMatrix.subscript.setter(v5, v14, v15, v16);
  }

  free(v5);
  free(v7);

  free(v4);
}

uint64_t LowerStrictlyTriangularMatrix.subscript.setter(uint64_t a1, Swift::Int a2, Swift::Int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 24);
  UpperStrictlyTriangularMatrix.subscript.getter();
  v15 = *(v9 + 8);
  v15(v12, v7);
  (*(v9 + 16))(v12, a1, v7);
  v17 = type metadata accessor for UpperStrictlyTriangularMatrix(0, v7, v14, v16);
  UpperStrictlyTriangularMatrix.subscript.setter(v12, a3, a2, v17);
  return (v15)(a1, v7);
}

uint64_t _s13LinearAlgebra29UpperStrictlyTriangularMatrixV15IndexedSequenceV4baseACyxGvg_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_237EF8260();
  return a1;
}

void sub_237EDD410(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  LowerStrictlyTriangularMatrix.init(rowCount:columnCount:)(a1, a2);
  *a3 = v4;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;
}

uint64_t sub_237EDD444@<X0>(uint64_t *a1@<X8>)
{
  result = LowerStrictlyTriangularMatrix.transposed()();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_237EDD498(uint64_t a1, Swift::Int a2, Swift::Int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 24);
  UpperStrictlyTriangularMatrix.subscript.getter();
  v13 = *(v8 + 8);
  v13(v10, v7);
  (*(v8 + 16))(v10, a1, v7);
  v15 = type metadata accessor for UpperStrictlyTriangularMatrix(0, v7, v12, v14);
  UpperStrictlyTriangularMatrix.subscript.setter(v10, a3, a2, v15);
  return (v13)(a1, v7);
}

void (*sub_237EDD5E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  v8 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v8;
  v8[4] = LowerStrictlyTriangularMatrix.subscript.modify(v8, a2, a3, a4);
  return sub_237C803C0;
}

uint64_t sub_237EDD6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t UnsafeMatrixPointer.count.getter()
{
  if (*(v0 + 32))
  {
    v2 = *(v0 + 16);
    v1 = *(v0 + 24);
    result = v1 * v2;
    if ((v1 * v2) >> 64 == (v1 * v2) >> 63)
    {
      return result;
    }

    __break(1u);
  }

  v4 = *(v0 + 8);
  v5 = *(v0 + 24);
  result = v4 * v5;
  if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t UnsafeMatrixPointer.init(start:rowCount:columnCount:leadingDimension:layout:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

__n128 UnsafeMatrixPointer.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  *a2 = *a1;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 24) = v2;
  *(a2 + 32) = v3;
  return result;
}

uint64_t UnsafeMatrixPointer.withUnsafeBufferPointer<A>(_:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  UnsafeMatrixPointer.count.getter();
  v4 = sub_237EF8540();
  return a1(v4);
}

uint64_t UnsafeMatrixPointer.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *v4;
  v6 = v4[3];
  if (v4[4])
  {
    v7 = a2 * v6;
    if ((a2 * v6) >> 64 != (a2 * v6) >> 63)
    {
      __break(1u);
      goto LABEL_10;
    }

    v6 = v7 + result;
    if (!__OFADD__(v7, result))
    {
      return (*(*(*(a3 + 16) - 8) + 16))(a4, v5 + *(*(*(a3 + 16) - 8) + 72) * v6);
    }

    __break(1u);
  }

  v8 = result * v6;
  if ((result * v6) >> 64 != (result * v6) >> 63)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v8 + a2;
  if (!__OFADD__(v8, a2))
  {
    return (*(*(*(a3 + 16) - 8) + 16))(a4, v5 + *(*(*(a3 + 16) - 8) + 72) * v6);
  }

LABEL_11:
  __break(1u);
  return result;
}

void UnsafeMatrixPointer.subscript.getter(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + 32) & 1) == 0)
  {
    OUTLINED_FUNCTION_1_123();
    if (!v3)
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_0_107();
  }

  UnsafeVectorPointer.init(start:count:stride:)();
}

{
  if (*(v2 + 32))
  {
    OUTLINED_FUNCTION_1_123();
    if (!v3)
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_0_107();
  }

  UnsafeVectorPointer.init(start:count:stride:)();
}

uint64_t UnsafeMatrixPointer.debugDescription.getter(uint64_t a1)
{
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD00000000000001BLL, 0x8000000237F01E60);
  sub_237EF8510();
  sub_237EF9CF0();
  MEMORY[0x2383E0710](0x203A73776F72202CLL, 0xE800000000000000);
  v1 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v1);

  MEMORY[0x2383E0710](0x6E6D756C6F63202CLL, 0xEB00000000203A73);
  v2 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v2);

  MEMORY[0x2383E0710](0x74756F79616C202CLL, 0xEA0000000000203ALL);
  sub_237EF9670();
  MEMORY[0x2383E0710](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_237EDDC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237EDDC70(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
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

uint64_t sub_237EDDCAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t MatrixLayout.blasValue.getter(char a1)
{
  if (a1)
  {
    return 102;
  }

  else
  {
    return 101;
  }
}

uint64_t UnsafeMutableMatrixPointer<A>.addProduct(_:transposed:_:transposed:scaledBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_26();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6D78, &qword_237F1F250);
  v8 = OUTLINED_FUNCTION_26_34(v7);
  if (v8)
  {
    OUTLINED_FUNCTION_12_61(v8, v9, v10, v11);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6D90, &qword_237F1F268);
    OUTLINED_FUNCTION_21_54(v12);
    OUTLINED_FUNCTION_4_97();
    v13 = OUTLINED_FUNCTION_7_84();
    v15 = v14(v13);
    OUTLINED_FUNCTION_41_18(v15, v16, v17, MEMORY[0x277D83A90]);
    v18 = OUTLINED_FUNCTION_17_61();
    return UnsafeMutableMatrixPointer<A>.addProductFloat(_:transposed:_:transposed:scaledBy:)(v18, v19, v20, v21);
  }

  else
  {
    OUTLINED_FUNCTION_35_26();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6D80, &qword_237F1F258);
    v24 = OUTLINED_FUNCTION_26_34(v23);
    if (v24)
    {
      OUTLINED_FUNCTION_12_61(v24, v25, v26, v27);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6D88, &qword_237F1F260);
      OUTLINED_FUNCTION_21_54(v28);
      OUTLINED_FUNCTION_4_97();
      v29 = OUTLINED_FUNCTION_7_84();
      v31 = v30(v29);
      OUTLINED_FUNCTION_41_18(v31, v32, v33, MEMORY[0x277D839F8]);
      v34 = OUTLINED_FUNCTION_17_61();
      return UnsafeMutableMatrixPointer<A>.addProductDouble(_:transposed:_:transposed:scaledBy:)(v34, v35, v36, v37);
    }

    else
    {
      sub_237EF9330();

      OUTLINED_FUNCTION_2_124();
      v45 = v38;
      v46 = v39;
      v40 = sub_237EFA220();
      MEMORY[0x2383E0710](v40);

      OUTLINED_FUNCTION_15_55();
      result = OUTLINED_FUNCTION_14_70("Fatal error", v41, v42, v45, v46, "LinearAlgebra/UnsafeMatrixOperations.swift", v43, v44, 52);
      __break(1u);
    }
  }

  return result;
}

uint64_t UnsafeMutableMatrixPointer<A>.addProductFloat(_:transposed:_:transposed:scaledBy:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = *(a1 + 32);
  if (*(v4 + 32) != v5 || v5 != *(a3 + 32))
  {
    goto LABEL_48;
  }

  v6 = 16;
  if (a2)
  {
    v7 = 8;
  }

  else
  {
    v7 = 16;
  }

  if (a2)
  {
    v8 = 16;
  }

  else
  {
    v8 = 8;
  }

  v9 = *(a1 + v7);
  if (a4)
  {
    v10 = 8;
  }

  else
  {
    v10 = 16;
  }

  if ((a4 & 1) == 0)
  {
    v6 = 8;
  }

  if (v9 != *(a3 + v6))
  {
    OUTLINED_FUNCTION_0_108();
    v35 = 159;
LABEL_52:
    OUTLINED_FUNCTION_19_51();
    goto LABEL_53;
  }

  if (*(v4 + 8) != *(a1 + v8))
  {
    OUTLINED_FUNCTION_0_108();
    v35 = 162;
    goto LABEL_52;
  }

  if (*(v4 + 16) != *(a3 + v10))
  {
    OUTLINED_FUNCTION_0_108();
    v35 = 165;
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_28_35();
  if (!(v14 ^ v15 | v13))
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v11 > 0x7FFFFFFF)
  {
    goto LABEL_42;
  }

  if (v12 > 0x7FFFFFFF)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_29_35();
  if (!(v14 ^ v15 | v13))
  {
    goto LABEL_44;
  }

  v21 = *(v16 + 24);
  if (v21 > 0x7FFFFFFF)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v22 = *(v4 + 24);
  if (v19 >= 0xFFFFFFFF80000000 && v17 >= 0xFFFFFFFF80000000 && v18 >= 0xFFFFFFFF80000000 && v20 >= 0xFFFFFFFF80000000 && v21 >= 0xFFFFFFFF80000000 && v22 >= 0xFFFFFFFF80000000)
  {
    if (v22 <= 0x7FFFFFFF)
    {
      OUTLINED_FUNCTION_24_41();
      OUTLINED_FUNCTION_36_25();
      return cblas_sgemm_NEWLAPACK();
    }

    goto LABEL_47;
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  OUTLINED_FUNCTION_16_60();
  v35 = 151;
  OUTLINED_FUNCTION_19_51();
  v34 = 0xD000000000000026;
LABEL_53:
  result = sub_237EF9740(v29, v30, v31, v34, v32, v33, 42, 2, v35);
  __break(1u);
  return result;
}

uint64_t UnsafeMutableMatrixPointer<A>.addProductDouble(_:transposed:_:transposed:scaledBy:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = *(a1 + 32);
  if (*(v4 + 32) != v5 || v5 != *(a3 + 32))
  {
    goto LABEL_48;
  }

  v6 = 16;
  if (a2)
  {
    v7 = 8;
  }

  else
  {
    v7 = 16;
  }

  if (a2)
  {
    v8 = 16;
  }

  else
  {
    v8 = 8;
  }

  v9 = *(a1 + v7);
  if (a4)
  {
    v10 = 8;
  }

  else
  {
    v10 = 16;
  }

  if ((a4 & 1) == 0)
  {
    v6 = 8;
  }

  if (v9 != *(a3 + v6))
  {
    OUTLINED_FUNCTION_0_108();
    v35 = 293;
LABEL_52:
    OUTLINED_FUNCTION_19_51();
    goto LABEL_53;
  }

  if (*(v4 + 8) != *(a1 + v8))
  {
    OUTLINED_FUNCTION_0_108();
    v35 = 296;
    goto LABEL_52;
  }

  if (*(v4 + 16) != *(a3 + v10))
  {
    OUTLINED_FUNCTION_0_108();
    v35 = 299;
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_28_35();
  if (!(v14 ^ v15 | v13))
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v11 > 0x7FFFFFFF)
  {
    goto LABEL_42;
  }

  if (v12 > 0x7FFFFFFF)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_29_35();
  if (!(v14 ^ v15 | v13))
  {
    goto LABEL_44;
  }

  v21 = *(v16 + 24);
  if (v21 > 0x7FFFFFFF)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v22 = *(v4 + 24);
  if (v19 >= 0xFFFFFFFF80000000 && v17 >= 0xFFFFFFFF80000000 && v18 >= 0xFFFFFFFF80000000 && v20 >= 0xFFFFFFFF80000000 && v21 >= 0xFFFFFFFF80000000 && v22 >= 0xFFFFFFFF80000000)
  {
    if (v22 <= 0x7FFFFFFF)
    {
      OUTLINED_FUNCTION_24_41();
      OUTLINED_FUNCTION_36_25();
      return cblas_dgemm_NEWLAPACK();
    }

    goto LABEL_47;
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  OUTLINED_FUNCTION_16_60();
  v35 = 285;
  OUTLINED_FUNCTION_19_51();
  v34 = 0xD000000000000026;
LABEL_53:
  result = sub_237EF9740(v29, v30, v31, v34, v32, v33, 42, 2, v35);
  __break(1u);
  return result;
}

uint64_t UnsafeMutableVectorPointer<A>.addProduct(_:_:transposed:scaledBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_30_45(a1, a2, a3, a4, a5, a6);
  v71 = v12;
  v14 = v13;
  v16 = v15;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v79 = v21;
  v80 = v22;
  v81 = a9;
  v23 = OUTLINED_FUNCTION_43_3();
  type metadata accessor for UnsafeMutableVectorPointer(v23, v24, v25, v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6D98, &qword_237F1F270);
  if (OUTLINED_FUNCTION_3_107(v27))
  {
    v28 = v16[1];
    v76 = *v16;
    v77 = v28;
    v78 = *(v16 + 32);
    v29 = OUTLINED_FUNCTION_43_3();
    type metadata accessor for UnsafeMatrixPointer(v29, v30, v31, v32);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6D90, &qword_237F1F268);
    OUTLINED_FUNCTION_22_46(v75, &v76, v34, v33);
    OUTLINED_FUNCTION_9_70();
    *(v35 - 256) = v14;
    v74 = v71;
    v36 = OUTLINED_FUNCTION_43_3();
    type metadata accessor for UnsafeVectorPointer(v36, v37, v38, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB6DB0, &qword_237F1F288);
    v40 = OUTLINED_FUNCTION_32_35();
    OUTLINED_FUNCTION_22_46(v40, v73, v41, v42);
    OUTLINED_FUNCTION_13_57();
    OUTLINED_FUNCTION_18_51();
    v43();
    OUTLINED_FUNCTION_42_22(v72, v20, v44, MEMORY[0x277D83A90]);
    OUTLINED_FUNCTION_8_90();
    return UnsafeMutableVectorPointer<A>.addProductFloat(_:_:transposed:scaledBy:)();
  }

  else
  {
    v79 = a7;
    v80 = a8;
    v81 = a9;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6DA0, &qword_237F1F278);
    if (OUTLINED_FUNCTION_3_107(v46))
    {
      v47 = v16[1];
      v76 = *v16;
      v77 = v47;
      v78 = *(v16 + 32);
      v48 = OUTLINED_FUNCTION_43_3();
      type metadata accessor for UnsafeMatrixPointer(v48, v49, v50, v51);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6D88, &qword_237F1F260);
      OUTLINED_FUNCTION_22_46(v75, &v76, v53, v52);
      OUTLINED_FUNCTION_9_70();
      *(v54 - 256) = v14;
      v74 = v71;
      v55 = OUTLINED_FUNCTION_43_3();
      type metadata accessor for UnsafeVectorPointer(v55, v56, v57, v58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6DA8, &qword_237F1F280);
      v59 = OUTLINED_FUNCTION_32_35();
      OUTLINED_FUNCTION_22_46(v59, v73, v60, v61);
      OUTLINED_FUNCTION_13_57();
      OUTLINED_FUNCTION_18_51();
      v62();
      OUTLINED_FUNCTION_42_22(v72, v20, v63, MEMORY[0x277D839F8]);
      OUTLINED_FUNCTION_8_90();
      return UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
    }

    else
    {
      OUTLINED_FUNCTION_40_20();

      OUTLINED_FUNCTION_2_124();
      v82 = v64;
      v83 = v65;
      v66 = sub_237EFA220();
      MEMORY[0x2383E0710](v66);

      OUTLINED_FUNCTION_15_55();
      result = OUTLINED_FUNCTION_14_70("Fatal error", v67, v68, v82, v83, "LinearAlgebra/UnsafeMatrixOperations.swift", v69, v70, 90);
      __break(1u);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_30_45(a1, a2, a3, a4, a5, a6);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  v82 = v24;
  v83 = v25;
  v84 = a9;
  v26 = OUTLINED_FUNCTION_43_3();
  type metadata accessor for UnsafeMutableVectorPointer(v26, v27, v28, v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6D98, &qword_237F1F270);
  if (OUTLINED_FUNCTION_3_107(v30))
  {
    v79 = v19;
    v80 = v17;
    v81 = v15;
    v31 = OUTLINED_FUNCTION_43_3();
    type metadata accessor for UnsafeVectorPointer(v31, v32, v33, v34);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB6DB0, &qword_237F1F288);
    OUTLINED_FUNCTION_22_46(&v78, &v79, v36, v35);
    v37 = v13[1];
    v75 = *v13;
    v76 = v37;
    v77 = *(v13 + 32);
    v38 = OUTLINED_FUNCTION_43_3();
    type metadata accessor for UnsafeMatrixPointer(v38, v39, v40, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6D90, &qword_237F1F268);
    v42 = OUTLINED_FUNCTION_32_35();
    OUTLINED_FUNCTION_22_46(v42, &v75, v43, v44);
    v45 = OUTLINED_FUNCTION_11_68();
    (*(*(v46 - 256) + 16))(v23, v73, a10, v45);
    OUTLINED_FUNCTION_42_22(v74, v23, v47, MEMORY[0x277D83A90]);
    OUTLINED_FUNCTION_38_21();
    OUTLINED_FUNCTION_37_28();
    return UnsafeMutableVectorPointer<A>.addProductFloat(_:_:transposed:scaledBy:)();
  }

  else
  {
    v82 = a7;
    v83 = a8;
    v84 = a9;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6DA0, &qword_237F1F278);
    if (OUTLINED_FUNCTION_3_107(v49))
    {
      v79 = v19;
      v80 = v17;
      v81 = v15;
      v50 = OUTLINED_FUNCTION_43_3();
      type metadata accessor for UnsafeVectorPointer(v50, v51, v52, v53);
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6DA8, &qword_237F1F280);
      OUTLINED_FUNCTION_22_46(&v78, &v79, v55, v54);
      v56 = v13[1];
      v75 = *v13;
      v76 = v56;
      v77 = *(v13 + 32);
      v57 = OUTLINED_FUNCTION_43_3();
      type metadata accessor for UnsafeMatrixPointer(v57, v58, v59, v60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6D88, &qword_237F1F260);
      v61 = OUTLINED_FUNCTION_32_35();
      OUTLINED_FUNCTION_22_46(v61, &v75, v62, v63);
      OUTLINED_FUNCTION_11_68();
      OUTLINED_FUNCTION_18_51();
      v64();
      OUTLINED_FUNCTION_42_22(v74, v23, v65, MEMORY[0x277D839F8]);
      OUTLINED_FUNCTION_38_21();
      OUTLINED_FUNCTION_37_28();
      return UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
    }

    else
    {
      OUTLINED_FUNCTION_40_20();

      OUTLINED_FUNCTION_2_124();
      v85 = v66;
      v86 = v67;
      v68 = sub_237EFA220();
      MEMORY[0x2383E0710](v68);

      OUTLINED_FUNCTION_15_55();
      result = OUTLINED_FUNCTION_14_70("Fatal error", v69, v70, v85, v86, "LinearAlgebra/UnsafeMatrixOperations.swift", v71, v72, 126);
      __break(1u);
    }
  }

  return result;
}

uint64_t UnsafeMutableVectorPointer<A>.addProductFloat(_:_:transposed:scaledBy:)()
{
  OUTLINED_FUNCTION_27_34();
  if (!(v1 ^ v2 | v0))
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_39_22();
  if (v1 != v2 || v3 < v4)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_28_35();
  if (!(v1 ^ v2 | v0))
  {
    goto LABEL_26;
  }

  if (v9)
  {
    v13 = v7;
  }

  else
  {
    v13 = v8;
  }

  if (v13 != v12)
  {
    goto LABEL_31;
  }

  v14 = *(v6 + 24);
  if (v14 > 0x7FFFFFFF)
  {
    goto LABEL_27;
  }

  if (v11 > 0x7FFFFFFF)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v10 >= 0xFFFFFFFF80000000 && v11 >= 0xFFFFFFFF80000000 && v14 >= 0xFFFFFFFF80000000)
  {
    OUTLINED_FUNCTION_29_35();
    if (v1 ^ v2 | v0)
    {
      OUTLINED_FUNCTION_23_41();
      OUTLINED_FUNCTION_34_22();
      OUTLINED_FUNCTION_10_70();
      return cblas_sgemv_NEWLAPACK();
    }

    goto LABEL_30;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  OUTLINED_FUNCTION_16_60();
  OUTLINED_FUNCTION_19_51();
  result = OUTLINED_FUNCTION_5_97(v18, v19, v20, v21, v22, v23, v24, v25, 207);
  __break(1u);
  return result;
}

{
  OUTLINED_FUNCTION_33_28();
  if (!(v1 ^ v2 | v0))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_31_30();
  if (v1 != v2 || v5 < v9)
  {
    goto LABEL_23;
  }

  if (v5 > 0x7FFFFFFF)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v6)
  {
    v12 = v5;
  }

  else
  {
    v12 = v4;
  }

  if (v12 != v3)
  {
    goto LABEL_29;
  }

  v13 = *(v10 + 24);
  if (v13 > 0x7FFFFFFF)
  {
    goto LABEL_25;
  }

  if (v8 > 0x7FFFFFFF)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v7 >= 0xFFFFFFFF80000000 && v8 >= 0xFFFFFFFF80000000 && v13 >= 0xFFFFFFFF80000000)
  {
    if (v7 <= 0x7FFFFFFF)
    {
      OUTLINED_FUNCTION_25_42();
      OUTLINED_FUNCTION_34_22();
      OUTLINED_FUNCTION_10_70();
      return cblas_sgemv_NEWLAPACK();
    }

    goto LABEL_28;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  OUTLINED_FUNCTION_16_60();
  OUTLINED_FUNCTION_19_51();
  result = OUTLINED_FUNCTION_5_97(v17, v18, v19, v20, v21, v22, v23, v24, 245);
  __break(1u);
  return result;
}

uint64_t UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)()
{
  OUTLINED_FUNCTION_27_34();
  if (!(v1 ^ v2 | v0))
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_39_22();
  if (v1 != v2 || v3 < v4)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_28_35();
  if (!(v1 ^ v2 | v0))
  {
    goto LABEL_26;
  }

  if (v9)
  {
    v13 = v7;
  }

  else
  {
    v13 = v8;
  }

  if (v13 != v12)
  {
    goto LABEL_31;
  }

  v14 = *(v6 + 24);
  if (v14 > 0x7FFFFFFF)
  {
    goto LABEL_27;
  }

  if (v11 > 0x7FFFFFFF)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v10 >= 0xFFFFFFFF80000000 && v11 >= 0xFFFFFFFF80000000 && v14 >= 0xFFFFFFFF80000000)
  {
    OUTLINED_FUNCTION_29_35();
    if (v1 ^ v2 | v0)
    {
      OUTLINED_FUNCTION_23_41();
      OUTLINED_FUNCTION_34_22();
      OUTLINED_FUNCTION_10_70();
      return cblas_dgemv_NEWLAPACK();
    }

    goto LABEL_30;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  OUTLINED_FUNCTION_16_60();
  OUTLINED_FUNCTION_19_51();
  result = OUTLINED_FUNCTION_5_97(v18, v19, v20, v21, v22, v23, v24, v25, 341);
  __break(1u);
  return result;
}

{
  OUTLINED_FUNCTION_33_28();
  if (!(v1 ^ v2 | v0))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_31_30();
  if (v1 != v2 || v5 < v9)
  {
    goto LABEL_23;
  }

  if (v5 > 0x7FFFFFFF)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v6)
  {
    v12 = v5;
  }

  else
  {
    v12 = v4;
  }

  if (v12 != v3)
  {
    goto LABEL_29;
  }

  v13 = *(v10 + 24);
  if (v13 > 0x7FFFFFFF)
  {
    goto LABEL_25;
  }

  if (v8 > 0x7FFFFFFF)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v7 >= 0xFFFFFFFF80000000 && v8 >= 0xFFFFFFFF80000000 && v13 >= 0xFFFFFFFF80000000)
  {
    if (v7 <= 0x7FFFFFFF)
    {
      OUTLINED_FUNCTION_25_42();
      OUTLINED_FUNCTION_34_22();
      OUTLINED_FUNCTION_10_70();
      return cblas_dgemv_NEWLAPACK();
    }

    goto LABEL_28;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  OUTLINED_FUNCTION_16_60();
  OUTLINED_FUNCTION_19_51();
  result = OUTLINED_FUNCTION_5_97(v17, v18, v19, v20, v21, v22, v23, v24, 379);
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_107(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_4_97()
{
  v4 = *(v0 + 120);
  *(v2 - 240) = *(v0 + 104);
  *(v2 - 224) = v4;
  *(v2 - 208) = *(v0 + 136);
  v5 = *(v1 + 16);
  *(v0 + 64) = *v1;
  *(v0 + 80) = v5;
  *(v0 + 96) = *(v1 + 32);

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_5_97(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_237EF9740(a1, a2, a3, 0xD000000000000044, a5, a6, 42, 2, a9);
}

uint64_t OUTLINED_FUNCTION_7_84()
{
  v3 = *(v0 + 40);
  *(v2 - 192) = *(v0 + 24);
  *(v2 - 176) = v3;
  *(v2 - 160) = *(v0 + 56);
  return v1;
}

__n128 OUTLINED_FUNCTION_9_70()
{
  result = *(v1 - 264);
  v3 = *(v1 - 248);
  *(v1 - 128) = result;
  *(v1 - 112) = v3;
  *(v1 - 96) = *(v1 - 232);
  *(v1 - 288) = v0;
  return result;
}

__n128 OUTLINED_FUNCTION_11_68()
{
  result = *(v0 - 312);
  v2 = *(v0 - 296);
  *(v0 - 128) = result;
  *(v0 - 112) = v2;
  *(v0 - 96) = *(v0 - 280);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_61(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v5[1];
  *(v8 - 144) = *v5;
  *(v8 - 128) = v10;
  *(v8 - 112) = *(v4 + 216);
  v11 = *(v7 + 16);
  *(v4 + 144) = *v7;
  *(v4 + 160) = v11;
  *(v4 + 176) = *(v7 + 32);

  return type metadata accessor for UnsafeMatrixPointer(0, v6, a3, a4);
}

uint64_t OUTLINED_FUNCTION_14_70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_237EF9740(a1, 11, 2, a4, a5, a6, 42, 2, a9);
}

void OUTLINED_FUNCTION_15_55()
{

  JUMPOUT(0x2383E0710);
}

uint64_t OUTLINED_FUNCTION_21_54(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_22_46(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_26_34(uint64_t a1)
{

  return swift_dynamicCast();
}

__n128 OUTLINED_FUNCTION_35_26()
{
  result = *v1;
  v3 = *(v1 + 16);
  *(v0 + 224) = *v1;
  *(v0 + 240) = v3;
  *(v0 + 256) = *(v1 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_40_20()
{
  *(v0 - 128) = 0;
  *(v0 - 120) = 0xE000000000000000;

  return sub_237EF9330();
}

uint64_t OUTLINED_FUNCTION_41_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_42_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

double DenseMatrix.IndexedSequence.makeIterator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 24) = a4;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;

  return result;
}

uint64_t DenseMatrix.IndexedSequence.Iterator.init(base:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 24) = a4;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  return result;
}

double sub_237EDF268@<D0>(uint64_t a1@<X8>)
{
  DenseMatrix.IndexedSequence.makeIterator()(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), v5);

  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

uint64_t DenseMatrix.IndexedSequence.Iterator.base.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DenseMatrix.IndexedSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = *(a1 + 16);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  MEMORY[0x28223BE20](TupleTypeMetadata3);
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v6);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v2 + 5;
  v13 = v2[5];
  v14 = v2[1];
  if (v13 < v14)
  {
    v15 = v2 + 4;
    v16 = v2[4];
    if (v16 < *v2)
    {
      v31 = *v2;
      v32 = v2;
      v35 = v2[6];
      v36 = v8;
      v17 = v7;
      v18 = v9;
      _s13LinearAlgebra11DenseVectorV10_uncheckedxSi_tcig_0();
      v33 = v17;
      v34 = v16;
      v19 = *(v17 + 64);
      *v18 = v16;
      v18[1] = v13;
      v20 = v18;
      v21 = v32;
      result = (*(v5 + 32))(v18 + v19, v11, v3);
      if (v21[2])
      {
        v23 = v34 + 1;
        *v15 = v34 + 1;
        v24 = v12;
        v12 = v15;
        if (v23 != v31)
        {
          goto LABEL_12;
        }
      }

      else
      {
        *v12 = v13 + 1;
        v24 = v15;
        v26 = v13 + 1 == v14;
        v13 = v34;
        if (!v26)
        {
LABEL_12:
          v27 = v36;
          v28 = v33;
          if (__OFADD__(v35, 1))
          {
            __break(1u);
          }

          else
          {
            v21[6] = v35 + 1;
            v29 = v37;
            (*(v27 + 32))(v37, v20, v28);
            return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
          }

          return result;
        }
      }

      *v24 = v13 + 1;
      *v12 = 0;
      goto LABEL_12;
    }
  }

  v25 = v37;

  return __swift_storeEnumTagSinglePayload(v25, 1, 1, v7);
}

uint64_t sub_237EDF664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237EDF6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237EDF73C@<X0>(uint64_t (*a1)(void, void, void, void)@<X2>, uint64_t a2@<X8>)
{
  result = a1(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t UpperStrictlyTriangularMatrix.IndexedSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = xmmword_237F07A60;
  *(a5 + 48) = 0;

  return sub_237EF8260();
}

double UpperStrictlyTriangularMatrix.IndexedSequence.Iterator.init(base:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  result = 0.0;
  *(a5 + 32) = xmmword_237F07A60;
  *(a5 + 48) = 0;
  return result;
}

double sub_237EDF804@<D0>(uint64_t a1@<X8>)
{
  UpperStrictlyTriangularMatrix.IndexedSequence.makeIterator()(*v1, v1[1], v1[2], v1[3], v5);

  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

uint64_t UpperStrictlyTriangularMatrix.IndexedSequence.Iterator.base.getter()
{
  v1 = *v0;

  sub_237EF8260();
  return v1;
}

uint64_t UpperStrictlyTriangularMatrix.IndexedSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  MEMORY[0x28223BE20](TupleTypeMetadata3);
  v7 = &v19 - v6;
  v8 = *(v4 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v2[5];
  v14 = v2[1];
  if (v13 < v14)
  {
    v15 = v2[4];
    if (v15 < *v2)
    {
      v19 = v2[6];
      v20 = v10;
      _s13LinearAlgebra11DenseVectorV10_uncheckedxSi_tcig_0();
      v16 = *(TupleTypeMetadata3 + 64);
      *v7 = v15;
      *(v7 + 1) = v13;
      result = (*(v8 + 32))(&v7[v16], v12, v4);
      v2[5] = v13 + 1;
      if (v13 + 1 == v14)
      {
        v2[4] = v15 + 1;
        if (__OFADD__(v15, 2))
        {
LABEL_12:
          __break(1u);
          return result;
        }

        v2[5] = v15 + 2;
      }

      v18 = v20;
      if (!__OFADD__(v19, 1))
      {
        v2[6] = v19 + 1;
        (*(v18 + 32))(a2, v7, TupleTypeMetadata3);
        return __swift_storeEnumTagSinglePayload(a2, 0, 1, TupleTypeMetadata3);
      }

      __break(1u);
      goto LABEL_12;
    }
  }

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, TupleTypeMetadata3);
}

uint64_t sub_237EDFBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237EDFC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237EDFC54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_237EDFC94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_237EDFCF8@<X0>(uint64_t *a1@<X8>)
{
  result = UpperStrictlyTriangularMatrix.IndexedSequence.base.getter(*v1, v1[1], v1[2]);
  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_237EDFD30()
{
  v0 = sub_237EF7DB0();
  __swift_allocate_value_buffer(v0, static Logger.linearAlgebra);
  __swift_project_value_buffer(v0, static Logger.linearAlgebra);
  return sub_237EF7DA0();
}

uint64_t Logger.linearAlgebra.unsafeMutableAddressor()
{
  if (qword_27DEB6C70 != -1)
  {
    OUTLINED_FUNCTION_0_109(&qword_27DEB6C70);
  }

  v0 = sub_237EF7DB0();

  return __swift_project_value_buffer(v0, static Logger.linearAlgebra);
}

uint64_t static Logger.linearAlgebra.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DEB6C70 != -1)
  {
    OUTLINED_FUNCTION_0_109(&qword_27DEB6C70);
  }

  v2 = sub_237EF7DB0();
  v3 = __swift_project_value_buffer(v2, static Logger.linearAlgebra);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t OUTLINED_FUNCTION_0_109(uint64_t a1)
{

  return swift_once();
}

uint64_t UnsafeVectorPointer.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_237EF9140();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t UnsafeVectorPointer.Iterator.next()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (!*v2)
  {
    goto LABEL_4;
  }

  v5 = v2[1];
  if (!v5)
  {
    __break(1u);
    return result;
  }

  if (v4 != v5)
  {
    v9 = *(result + 16);
    v10 = *(v9 - 8);
    v11 = *(v10 + 16);
    *v2 = v4 + *(v10 + 72) * v2[2];
    v11(a2);
    v7 = a2;
    v8 = 0;
    v6 = v9;
  }

  else
  {
LABEL_4:
    v6 = *(result + 16);
    v7 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v6);
}

void UnsafeVectorPointer.makeIterator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 * a3) >> 64 != (a2 * a3) >> 63)
  {
    __break(1u);
  }
}

uint64_t UnsafeVectorPointer._copyContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a1;
  v11 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_237EF90F0();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v36 - v15;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v17 = OUTLINED_FUNCTION_43_3();
  type metadata accessor for UnsafeVectorPointer(v17, v18, v19, v20);
  OUTLINED_FUNCTION_0_110();
  swift_getWitnessTable();
  if (sub_237EF8EC0())
  {
    UnsafeVectorPointer.makeIterator()(a3, a4, a5);
    v22 = v21;
    sub_237EF9130();
    return v22;
  }

  v37 = a3;
  v23 = sub_237EF9140();
  if (v23)
  {
    if (a2 < a4)
    {
      __break(1u);
    }

    else
    {
      v24 = v23;
      if (a5 == 1)
      {
        v25 = v37;
        sub_237EF9080();
      }

      else
      {
        v36 = a2;
        UnsafeVectorPointer.makeIterator()(v37, a4, a5);
        v39 = v26;
        v40 = v27;
        v41 = v28;
        v29 = OUTLINED_FUNCTION_43_3();
        v33 = type metadata accessor for UnsafeVectorPointer.Iterator(v29, v30, v31, v32);
        while (1)
        {
          UnsafeVectorPointer.Iterator.next()(v33, v16);
          if (__swift_getEnumTagSinglePayload(v16, 1, a6) == 1)
          {
            break;
          }

          v34 = *(v11 + 32);
          v34(v13, v16, a6);
          v34(v24, v13, a6);
          v24 += *(v11 + 72);
        }

        v25 = v37;
      }

      if ((a4 * a5) >> 64 == (a4 * a5) >> 63)
      {
        v22 = v25 + *(v11 + 72) * a4 * a5;
        sub_237EF9130();
        sub_237EF9150();
        return v22;
      }
    }

    __break(1u);
  }

  result = sub_237EF9740("Fatal error", 11, 2, 0xD000000000000030, 0x8000000237F02090, "LinearAlgebra/UnsafeVectorPointer.swift", 39, 2, 129);
  __break(1u);
  return result;
}

void sub_237EE0430(void *a1@<X8>)
{
  UnsafeVectorPointer.makeIterator()(*v1, v1[1], v1[2]);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
}

uint64_t sub_237EE046C(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_237EF8E20();
}

uint64_t sub_237EE0524(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = UnsafeVectorPointer._copyContents(initializing:)(a2, a3, *v4, v4[1], v4[2], *(a4 + 16));
  a1[1] = v6;
  a1[2] = v7;
  return v8;
}

Swift::Int_optional __swiftcall UnsafeVectorPointer.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  v4 = limitedBy - _;
  if (offsetBy < 1)
  {
    if (v4 <= 0 && v4 > offsetBy)
    {
      goto LABEL_4;
    }

LABEL_10:
    v6 = 0;
    v5 = offsetBy + _;
    goto LABEL_11;
  }

  if (v4 < 0 || v4 >= offsetBy)
  {
    goto LABEL_10;
  }

LABEL_4:
  v5 = 0;
  v6 = 1;
LABEL_11:
  result.value = v5;
  result.is_nil = v6;
  return result;
}

uint64_t _s13LinearAlgebra26UnsafeMutableVectorPointerV10_uncheckedxSi_tcig_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if ((result * a3) >> 64 == (result * a3) >> 63)
  {
    return (*(*(a4 - 8) + 16))(a5, a2 + *(*(a4 - 8) + 72) * result * a3, a4);
  }

  __break(1u);
  return result;
}

double UnsafeVectorPointer.subscript.getter@<D0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  type metadata accessor for UnsafeVectorPointer(0, a6, a3, a4);
  OUTLINED_FUNCTION_0_110();
  swift_getWitnessTable();
  sub_237EFA0B0();
  result = *&v9;
  *a7 = v9;
  *(a7 + 16) = v10;
  *(a7 + 24) = v11;
  return result;
}

void (*sub_237EE06E8(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v7 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v7;
  v7[4] = sub_237EE0764(v7, *a2, *v3, v3[1], v3[2], *(a3 + 16));
  return sub_237C84CD0;
}

void (*sub_237EE0764(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(void *a1)
{
  v6 = *(a6 - 8);
  *a1 = a6;
  a1[1] = v6;
  a1[2] = __swift_coroFrameAllocStub(*(v6 + 64));
  UnsafeVectorPointer.subscript.getter();
  return sub_237C84DD4;
}

double sub_237EE082C@<D0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  UnsafeVectorPointer.subscript.getter(*v3, v3[1], *(a2 + 16), v7);
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v6;
  *(a3 + 32) = v8;
  return result;
}

uint64_t sub_237EE0888@<X0>(void *a1@<X8>)
{
  result = UnsafeVectorPointer.indices.getter();
  *a1 = 0;
  a1[1] = v3;
  return result;
}

Swift::Int sub_237EE08BC@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = UnsafeVectorPointer.index(after:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_237EE08EC@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = UnsafeVectorPointer.index(before:)(*a1);
  *a2 = result;
  return result;
}

void *UnsafeVectorPointer.withContiguousStorageIfAvailable<A>(_:)@<X0>(void *(*a1)(void *__return_ptr, uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, void *a6@<X8>)
{
  if (a4 == 1)
  {
    result = a1(a6, a2, a3, 1);
    if (v6)
    {
      return result;
    }

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a6, v10, 1, a5);
}

void *UnsafeVectorPointer.init(rebasing:)(__int128 *a1, uint64_t a2)
{
  return sub_237EE09F8(a1, a2, type metadata accessor for UnsafeVectorPointer, &protocol conformance descriptor for UnsafeVectorPointer<A>);
}

{
  return sub_237EE09F8(a1, a2, type metadata accessor for UnsafeMutableVectorPointer, &protocol conformance descriptor for UnsafeMutableVectorPointer<A>);
}

void *sub_237EE09F8(__int128 *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v6 = a1[1];
  v22 = *a1;
  v23 = v6;
  v24 = *(a1 + 4);
  a3(255);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_43_3();
  v7 = sub_237EFA0E0();
  MEMORY[0x2383E21A0](v21);
  v8 = v21[0];
  OUTLINED_FUNCTION_3_108();
  sub_237EFA0A0();
  v9 = v19;
  v10 = a1[1];
  v16 = *a1;
  v17 = v10;
  v18 = *(a1 + 4);
  result = MEMORY[0x2383E21A0](&v14, v7);
  if ((v9 * v15) >> 64 == (v9 * v15) >> 63)
  {
    v12 = v8 + *(*(a2 - 8) + 72) * v9 * v15;
    OUTLINED_FUNCTION_2_125();
    sub_237EFA0D0();
    OUTLINED_FUNCTION_3_108();
    sub_237EFA0A0();
    v13 = OUTLINED_FUNCTION_2_125();
    MEMORY[0x2383E21A0](&v20, v7, v13);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t UnsafeVectorPointer.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD00000000000001BLL, 0x8000000237F020D0);
  OUTLINED_FUNCTION_43_3();
  sub_237EF8510();
  sub_237EF9CF0();
  MEMORY[0x2383E0710](0x3A746E756F63202CLL, 0xE900000000000020);
  v3 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v3);

  MEMORY[0x2383E0710](0x656469727473202CLL, 0xEA0000000000203ALL);
  v4 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v4);

  MEMORY[0x2383E0710](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_237EE0E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237EE0EBC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1 || !*(a1 + 24))
    {
      if (*a1)
      {
        v2 = -1;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = *a1 + 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237EE0EF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_237EE0F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 OUTLINED_FUNCTION_2_125()
{
  result = *v0;
  v4 = *(v0 + 16);
  *v1 = *v0;
  v1[1] = v4;
  *(v2 - 80) = *(v0 + 32);
  return result;
}

void static DenseMatrix.+= infix(_:_:)()
{
  OUTLINED_FUNCTION_5_98();
  sub_237EE14C8();
}

{
  OUTLINED_FUNCTION_5_98();
  sub_237EE1100();
}

{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  if (*v4 != v5 || *(v4 + 8) != v7)
  {
    goto LABEL_35;
  }

  v13 = *(v4 + 16);
  v55 = v12;
  v56 = v8;
  if (v13 == (v6 & 1))
  {
    v28 = v5 * v7;
    if ((v5 * v7) >> 64 != (v5 * v7) >> 63)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (v28 < 0)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v28)
    {
      v29 = v9;
      for (i = 0; i != v28; ++i)
      {
        _s13LinearAlgebra11DenseVectorV10_uncheckedxSi_tcig_0();
        OUTLINED_FUNCTION_43_3();
        sub_237EF9580();
        sub_237EF94D0();
        OUTLINED_FUNCTION_62_2();
        sub_237E6A31C(v31, v32);
        OUTLINED_FUNCTION_12_65();
        OUTLINED_FUNCTION_23_43();
        sub_237EF9770();
        (*(v29 + 8))(v55, v2);
        nullsub_1();
      }
    }

    goto LABEL_28;
  }

  v59 = v7;
  v62 = v5;
  if (v13)
  {
    if (v7 < 0)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v7)
    {
      v14 = v4;
      v15 = 0;
      v16 = (v9 + 8);
      v60 = v4;
      v57 = (v9 + 16);
      while (1)
      {
        v17 = *v14;
        if (*v14 < 0)
        {
          break;
        }

        if (v17)
        {
          v18 = 0;
          do
          {
            OUTLINED_FUNCTION_44_23();
            DenseMatrix.subscript.read();
            v20 = v19;
            (*v57)(v55);
            v21 = OUTLINED_FUNCTION_12_62();
            v20(v21);
            v22 = OUTLINED_FUNCTION_43_3();
            v25 = type metadata accessor for DenseMatrix(v22, v23, v56, v24);
            v26 = DenseMatrix.subscript.modify(v63, v18, v15, v25);
            OUTLINED_FUNCTION_12_65();
            OUTLINED_FUNCTION_23_43();
            sub_237EF9770();
            (*v16)(v55, v2);
            v27 = OUTLINED_FUNCTION_12_62();
            v26(v27);
            v7 = v59;
            v18 = v0;
          }

          while (v17 != v0);
        }

        ++v15;
        v14 = v60;
        if (v15 == v7)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v5)
    {
      v33 = v4;
      v34 = 0;
      v61 = v4;
      v58 = (v9 + 16);
      do
      {
        v35 = *(v33 + 8);
        if (v35 < 0)
        {
          goto LABEL_30;
        }

        if (v35)
        {
          v36 = 0;
          do
          {
            OUTLINED_FUNCTION_44_23();
            DenseMatrix.subscript.read();
            v38 = v37;
            (*v58)(v55);
            v39 = OUTLINED_FUNCTION_12_62();
            v38(v39);
            v40 = OUTLINED_FUNCTION_43_3();
            v43 = type metadata accessor for DenseMatrix(v40, v41, v56, v42);
            v44 = DenseMatrix.subscript.modify(v63, v34, v36, v43);
            OUTLINED_FUNCTION_12_65();
            OUTLINED_FUNCTION_23_43();
            sub_237EF9770();
            v45 = OUTLINED_FUNCTION_33_27();
            v46(v45);
            v47 = OUTLINED_FUNCTION_12_62();
            v44(v47);
            v5 = v62;
            v36 = v0;
          }

          while (v35 != v0);
        }

        ++v34;
        v33 = v61;
      }

      while (v34 != v5);
    }

LABEL_28:
    OUTLINED_FUNCTION_38_0();
    return;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  OUTLINED_FUNCTION_8_94();
  OUTLINED_FUNCTION_19_51();
  OUTLINED_FUNCTION_18_53(v48, v49, v50, 34, v51, v52, v53, v54, 318);
  __break(1u);
}

uint64_t static DenseMatrix.+ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  OUTLINED_FUNCTION_13_58(v8, v9, v10, v11, v12, v13, v14, v15, a5);
  static DenseMatrix.+= infix(_:_:)();
  return v18;
}

void static DenseMatrix.-= infix(_:_:)()
{
  OUTLINED_FUNCTION_4_98();
  sub_237EE1100();
}

{
  OUTLINED_FUNCTION_4_98();
  sub_237EE14C8();
}

{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  if (*(v12 + 16) != v13 || *v3 != v7 || v3[1] != v8)
  {
    goto LABEL_12;
  }

  v14 = v7 * v8;
  if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v14 < 0)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    OUTLINED_FUNCTION_8_94();
    OUTLINED_FUNCTION_19_51();
    OUTLINED_FUNCTION_18_53(v18, v19, v20, 45, v21, v22, v23, v24, 352);
    __break(1u);
    return;
  }

  if (v14)
  {
    OUTLINED_FUNCTION_43_3();
    sub_237EF9580();
    sub_237EF94D0();
    OUTLINED_FUNCTION_20_52();
    nullsub_1();
    OUTLINED_FUNCTION_20_52();
    sub_237EF94D0();
    OUTLINED_FUNCTION_20_52();
    nullsub_1();
    OUTLINED_FUNCTION_20_52();
    sub_237EF94D0();
    OUTLINED_FUNCTION_20_52();
    nullsub_1();
    for (i = 0; i != v14; ++i)
    {
      _s13LinearAlgebra11DenseVectorV10_uncheckedxSi_tcig_0();
      OUTLINED_FUNCTION_20_52();
      sub_237EF94D0();
      OUTLINED_FUNCTION_62_2();
      sub_237E6A31C(v16, v17);
      OUTLINED_FUNCTION_12_65();
      OUTLINED_FUNCTION_23_43();
      sub_237EF9780();
      (*(v5 + 8))(v11, v1);
      OUTLINED_FUNCTION_20_52();
      nullsub_1();
    }
  }

  OUTLINED_FUNCTION_38_0();
}

void sub_237EE1100()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v59 = *v12;
  if (v59 != DenseMatrix.Transpose.rowCount.getter(v11, v7))
  {
    goto LABEL_28;
  }

  v13 = *(v9 + 8);
  DenseMatrix.Transpose.columnCount.getter();
  if (v13 != v14)
  {
    goto LABEL_28;
  }

  v60 = v1;
  v61 = v9;
  if (*(v9 + 16))
  {
    if (v13 < 0)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (v13)
    {
      v15 = 0;
      v58 = v13;
      while ((*v9 & 0x8000000000000000) == 0)
      {
        if (*v9)
        {
          v16 = 0;
          do
          {
            OUTLINED_FUNCTION_25_43();
            DenseMatrix.subscript.read();
            v18 = v17;
            v19 = OUTLINED_FUNCTION_34_23();
            v20(v19);
            v21 = OUTLINED_FUNCTION_12_62();
            v18(v21);
            v22 = OUTLINED_FUNCTION_12_7();
            type metadata accessor for DenseMatrix(v22, v23, v3, v24);
            v25 = OUTLINED_FUNCTION_32_36();
            v27 = DenseMatrix.subscript.modify(v25, v16, v15, v26);
            OUTLINED_FUNCTION_2_126();
            v1();
            v28 = OUTLINED_FUNCTION_35_27();
            v16 = v62;
            v29(v28, v5);
            v30 = OUTLINED_FUNCTION_12_62();
            v27(v30);
            OUTLINED_FUNCTION_29_36();
          }

          while (!v31);
        }

        ++v15;
        v9 = v61;
        if (v15 == v58)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if ((v59 & 0x8000000000000000) == 0)
  {
    if (v59)
    {
      for (i = 0; i != v59; ++i)
      {
        v33 = *(v9 + 8);
        if (v33 < 0)
        {
          goto LABEL_25;
        }

        if (v33)
        {
          v34 = 0;
          do
          {
            OUTLINED_FUNCTION_25_43();
            DenseMatrix.subscript.read();
            v36 = v35;
            v37 = OUTLINED_FUNCTION_34_23();
            v38(v37);
            v39 = OUTLINED_FUNCTION_12_62();
            v36(v39);
            v40 = OUTLINED_FUNCTION_12_7();
            type metadata accessor for DenseMatrix(v40, v41, v3, v42);
            v43 = OUTLINED_FUNCTION_32_36();
            v45 = DenseMatrix.subscript.modify(v43, i, v34, v44);
            OUTLINED_FUNCTION_2_126();
            v60();
            v46 = OUTLINED_FUNCTION_35_27();
            v34 = v62;
            v47(v46, v5);
            v48 = OUTLINED_FUNCTION_12_62();
            v45(v48);
            OUTLINED_FUNCTION_29_36();
          }

          while (!v31);
        }

        v9 = v61;
      }
    }

LABEL_23:
    OUTLINED_FUNCTION_38_0();
    return;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  OUTLINED_FUNCTION_17_15();
  v57 = v49;
  OUTLINED_FUNCTION_38_22();
  OUTLINED_FUNCTION_16_61(v50, v51, v52, 34, v53, v54, v55, v56, v57);
  __break(1u);
}

void sub_237EE14C8()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_1_1();
  v69 = v9;
  v70 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v15 = v14;
  v16 = OUTLINED_FUNCTION_7_85();
  if (DenseMatrix.Transpose.rowCount.getter(v16, v17) != v7)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_7_85();
  DenseMatrix.Transpose.columnCount.getter();
  if (v18 != v5)
  {
    goto LABEL_28;
  }

  v19 = OUTLINED_FUNCTION_7_85();
  v68 = v1;
  if (DenseMatrix.Transpose.layout.getter(v19, v20, v21))
  {
    v22 = v5;
    if ((v5 & 0x8000000000000000) != 0)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (v5)
    {
      v23 = 0;
      v71 = v15;
      while (1)
      {
        v24 = OUTLINED_FUNCTION_28_36();
        v26 = DenseMatrix.Transpose.rowCount.getter(v24, v25);
        if (v26 < 0)
        {
          break;
        }

        v27 = v23;
        if (v26)
        {
          v28 = 0;
          do
          {
            v29 = v27;
            DenseMatrix.subscript.read();
            v31 = v30;
            v32 = OUTLINED_FUNCTION_35_27();
            v33(v32);
            v34 = OUTLINED_FUNCTION_11_69();
            v31(v34);
            v35 = OUTLINED_FUNCTION_12_7();
            type metadata accessor for DenseMatrix(v35, v36, v1, v37);
            v38 = OUTLINED_FUNCTION_32_36();
            v39 = v28;
            v28 = v71;
            v22 = DenseMatrix.subscript.modify(v38, v29, v39, v40);
            OUTLINED_FUNCTION_2_126();
            v70();
            v41 = OUTLINED_FUNCTION_35_27();
            v42(v41, v3);
            v43 = OUTLINED_FUNCTION_11_69();
            v22(v43);
            OUTLINED_FUNCTION_37_29();
          }

          while (!v44);
        }

        v23 = v27 + 1;
        if ((v27 + 1) == v22)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    if (v7)
    {
      v45 = 0;
      do
      {
        OUTLINED_FUNCTION_28_36();
        DenseMatrix.Transpose.columnCount.getter();
        if (v46 < 0)
        {
          goto LABEL_25;
        }

        if (v46)
        {
          v47 = 0;
          do
          {
            DenseMatrix.subscript.read();
            v49 = v48;
            (*(v69 + 16))(v13);
            v50 = OUTLINED_FUNCTION_11_69();
            v49(v50);
            v51 = OUTLINED_FUNCTION_12_7();
            type metadata accessor for DenseMatrix(v51, v52, v68, v53);
            v54 = OUTLINED_FUNCTION_32_36();
            v56 = DenseMatrix.subscript.modify(v54, v47, v45, v55);
            v47 = v3;
            (v70)(v57, v13, v3, *(*(*(*(v68 + 16) + 16) + 8) + 8));
            (*(v69 + 8))(v13, v3);
            v58 = OUTLINED_FUNCTION_11_69();
            v56(v58);
            OUTLINED_FUNCTION_37_29();
          }

          while (!v44);
        }
      }

      while (++v45 != v7);
    }

LABEL_23:
    OUTLINED_FUNCTION_38_0();
    return;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  OUTLINED_FUNCTION_17_15();
  v67 = v59;
  OUTLINED_FUNCTION_38_22();
  OUTLINED_FUNCTION_16_61(v60, v61, v62, 34, v63, v64, v65, v66, v67);
  __break(1u);
}

void sub_237EE18E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t))
{

  v19 = OUTLINED_FUNCTION_13_58(v11, v12, v13, v14, v15, v16, v17, v18, a1);
  a11(v19);
}

void static DenseMatrix.- infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_37_0();
  v35 = v22;
  v36 = v23;
  v25 = v24;
  v27 = v26;
  OUTLINED_FUNCTION_1_1();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_5();
  v33 = v32 - v31;
  OUTLINED_FUNCTION_12_7();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v34);
  swift_getAssociatedConformanceWitness();
  sub_237EF9FB0();
  sub_237EF9D20();
  static DenseMatrix.* infix(_:_:)(v27, v35, v25 & 1, v36);
  (*(v29 + 8))(v33, a21);
  static DenseMatrix.+= infix(_:_:)();
  OUTLINED_FUNCTION_38_0();
}

void static DenseMatrix.* infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_37_0();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v111 = v30;
  v120 = v31;
  v33 = v32;
  v117 = v34;
  v35 = a22;
  OUTLINED_FUNCTION_1_1();
  v124 = v36;
  MEMORY[0x28223BE20](v37);
  v39 = &v100 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v100 - v41;
  MEMORY[0x28223BE20](v43);
  v121 = &v100 - v44;
  MEMORY[0x28223BE20](v45);
  v116 = &v100 - v46;
  v47 = *(*(*(a22 + 16) + 16) + 8);
  v107 = *(v47 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v48);
  v105 = &v100 - v49;
  v114 = v25;
  v113 = v27;
  v115 = v23;
  if (DenseMatrix.Transpose.rowCount.getter(v29, v27) != v33)
  {
    goto LABEL_23;
  }

  v50 = v33;
  v110 = v47;
  if (qword_27DEB6C70 != -1)
  {
    goto LABEL_20;
  }

LABEL_3:
  v51 = sub_237EF7DB0();
  __swift_project_value_buffer(v51, static Logger.linearAlgebra);
  v52 = sub_237EF7D90();
  v53 = sub_237EF8F80();
  v54 = os_log_type_enabled(v52, v53);
  v104 = v39;
  v103 = v42;
  v112 = v29;
  if (v54)
  {
    v55 = swift_slowAlloc();
    v126[0] = swift_slowAlloc();
    v56 = v126[0];
    *v55 = 136315138;
    v57 = sub_237EFA220();
    v59 = v35;
    v60 = sub_237DAFA64(v57, v58, v126);

    *(v55 + 4) = v60;
    v35 = v59;
    _os_log_impl(&dword_237C51000, v52, v53, "Using a slow implementation of matrix multiplication for %s. Prefer using Float or Double.", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v56);
    OUTLINED_FUNCTION_105_2();
    OUTLINED_FUNCTION_105_2();
  }

  v39 = v121;
  v61 = v116;
  DenseMatrix.Transpose.columnCount.getter();
  v63 = v62;
  v29 = v107;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_237EF9FB0();
  OUTLINED_FUNCTION_31_31();
  sub_237EF9D20();
  v64 = v117;
  v108 = v63;
  v126[0] = DenseMatrix.init(rowCount:columnCount:layout:repeating:)(v117, v63, 0, v61, a21);
  v126[1] = v65;
  v127 = v66;
  v128 = v67;
  if ((v64 & 0x8000000000000000) == 0)
  {
    if (!v64)
    {
LABEL_18:
      OUTLINED_FUNCTION_38_0();
      return;
    }

    if (v108 < 0)
    {
      goto LABEL_22;
    }

    v42 = 0;
    v119 = (v124 + 16);
    v101 = (v124 + 24);
    v68 = v117;
    v118 = (v124 + 8);
    v109 = v50;
    while (1)
    {
      if (v108)
      {
        if (v50 < 0)
        {
          __break(1u);
LABEL_20:
          OUTLINED_FUNCTION_0_109(&qword_27DEB6C70);
          goto LABEL_3;
        }

        v69 = 0;
        v122 = v42;
        do
        {
          v123 = v69;
          sub_237EF9FB0();
          OUTLINED_FUNCTION_31_31();
          sub_237EF9D20();
          v29 = v35;
          v71 = v104;
          v72 = v103;
          v73 = v119;
          if (v50)
          {
            v74 = 0;
            do
            {
              v124 = v74 + 1;
              DenseMatrix.subscript.read();
              v76 = v75;
              v77 = *v73;
              (*v73)(v72);
              v78 = OUTLINED_FUNCTION_17_62();
              v76(v78);
              DenseMatrix.subscript.read();
              v80 = v79;
              v77(v71);
              v81 = OUTLINED_FUNCTION_17_62();
              v80(v81);
              v82 = v116;
              sub_237EF8D30();
              v83 = *v118;
              (*v118)(v71, a21);
              v83(v72, a21);
              sub_237EF9770();
              v84 = v82;
              v73 = v119;
              v83(v84, a21);
              v74 = v124;
              v50 = v109;
              v68 = v117;
            }

            while (v109 != v124);
          }

          v85 = v123;
          v86 = v123 + 1;
          v87 = type metadata accessor for DenseMatrix(0, a21, v29, v70);
          v42 = v122;
          v88 = DenseMatrix.subscript.modify(v125, v122, v85, v87);
          v89 = v121;
          (*v101)(v90, v121, a21);
          v91 = OUTLINED_FUNCTION_17_62();
          v88(v91);
          (*v118)(v89, a21);
          v69 = v85 + 1;
          v92 = v86 == v108;
          v35 = v29;
          v39 = v89;
        }

        while (!v92);
      }

      if (++v42 == v68)
      {
        goto LABEL_18;
      }
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  OUTLINED_FUNCTION_17_15();
  v100 = 129;
  OUTLINED_FUNCTION_38_22();
  OUTLINED_FUNCTION_16_61(v93, v94, v95, 64, v96, v97, v98, v99, v100);
  __break(1u);
}

{
  OUTLINED_FUNCTION_37_0();
  v107 = v22;
  v106 = v23;
  v117 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  OUTLINED_FUNCTION_1_1();
  v119 = v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v99 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v102 = &v99 - v40;
  MEMORY[0x28223BE20](v41);
  v120 = &v99 - v42;
  MEMORY[0x28223BE20](v43);
  v112 = &v99 - v44;
  v45 = *(*(*(a22 + 16) + 16) + 8);
  v105 = *(v45 + 2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v46);
  v103 = &v99 - v47;
  v116 = v30;
  v48 = v34;
  v111 = v32;
  v113 = v28;
  v121 = a22;
  DenseMatrix.Transpose.columnCount.getter();
  if (v49 != v26)
  {
    goto LABEL_23;
  }

  v50 = v26;
  if (qword_27DEB6C70 != -1)
  {
    goto LABEL_20;
  }

LABEL_3:
  v51 = sub_237EF7DB0();
  __swift_project_value_buffer(v51, static Logger.linearAlgebra);
  v52 = sub_237EF7D90();
  v53 = sub_237EF8F80();
  v54 = os_log_type_enabled(v52, v53);
  v109 = v38;
  v110 = v48;
  v108 = v45;
  if (v54)
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v123[0] = v56;
    *v55 = 136315138;
    v57 = sub_237EFA220();
    v59 = sub_237DAFA64(v57, v58, v123);

    *(v55 + 4) = v59;
    v48 = v110;
    _os_log_impl(&dword_237C51000, v52, v53, "Using a slow implementation of matrix multiplication for %s. Prefer using Float or Double.", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v56);
    OUTLINED_FUNCTION_105_2();
    OUTLINED_FUNCTION_105_2();
  }

  v60 = v120;
  v38 = DenseMatrix.Transpose.rowCount.getter(v48, v111);
  v45 = v105;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v48 = v103;
  v101 = AssociatedConformanceWitness;
  sub_237EF9FB0();
  v62 = v112;
  OUTLINED_FUNCTION_31_31();
  sub_237EF9D20();
  v123[0] = DenseMatrix.init(rowCount:columnCount:layout:repeating:)(v38, v117, 0, v62, a21);
  v123[1] = v63;
  v124 = v64;
  v125 = v65;
  if ((v38 & 0x8000000000000000) == 0)
  {
    if (!v38)
    {
LABEL_18:
      OUTLINED_FUNCTION_38_0();
      return;
    }

    if (v117 < 0)
    {
      goto LABEL_22;
    }

    v66 = 0;
    v115 = (v119 + 16);
    v100 = (v119 + 24);
    v67 = v121;
    v99 = v38;
    v114 = (v119 + 8);
    while (1)
    {
      v118 = v66;
      if (v117)
      {
        if ((v50 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_20:
          OUTLINED_FUNCTION_0_109(&qword_27DEB6C70);
          goto LABEL_3;
        }

        v68 = 0;
        do
        {
          v119 = v68;
          sub_237EF9FB0();
          OUTLINED_FUNCTION_31_31();
          sub_237EF9D20();
          v45 = v102;
          v70 = v118;
          v71 = v115;
          if (v50)
          {
            v72 = 0;
            do
            {
              v120 = v72 + 1;
              DenseMatrix.subscript.read();
              v73 = v50;
              v75 = v74;
              v76 = *v71;
              (*v71)(v45);
              v77 = OUTLINED_FUNCTION_17_62();
              v78 = v60;
              v75(v77);
              DenseMatrix.subscript.read();
              v80 = v79;
              v81 = v109;
              v76(v109);
              v82 = OUTLINED_FUNCTION_17_62();
              v80(v82);
              v83 = v112;
              sub_237EF8D30();
              v84 = *v114;
              (*v114)(v81, a21);
              v84(v45, a21);
              v60 = v78;
              sub_237EF9770();
              v85 = v83;
              v71 = v115;
              v84(v85, a21);
              v70 = v118;
              v72 = v120;
              v50 = v73;
              v86 = v73 == v120;
              v67 = v121;
            }

            while (!v86);
          }

          v87 = v119;
          v48 = v119 + 1;
          v88 = type metadata accessor for DenseMatrix(0, a21, v67, v69);
          v89 = DenseMatrix.subscript.modify(v122, v70, v87, v88);
          (*v100)(v90, v60, a21);
          v91 = OUTLINED_FUNCTION_17_62();
          v89(v91);
          (*v114)(v60, a21);
          v68 = v87 + 1;
        }

        while (v48 != v117);
      }

      v66 = v118 + 1;
      v38 = v99;
      if (v118 + 1 == v99)
      {
        goto LABEL_18;
      }
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  OUTLINED_FUNCTION_17_15();
  v99 = 151;
  OUTLINED_FUNCTION_38_22();
  OUTLINED_FUNCTION_16_61(v92, v93, v94, 64, v95, v96, v97, v98, v99);
  __break(1u);
}

void sub_237EE2BD0(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
      v11 = swift_allocObject();
      _swift_stdlib_malloc_size(v11);
      OUTLINED_FUNCTION_3();
      *(v11 + 16) = v9;
      *(v11 + 24) = v12;
      if (a1)
      {
LABEL_12:
        sub_237EEDDF4((a4 + 32), v9, (v11 + 32));
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy((v11 + 32), (a4 + 32), 8 * v9);
    goto LABEL_15;
  }

  if (v6 + 0x4000000000000000 >= 0)
  {
    OUTLINED_FUNCTION_6();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_237EE2CAC(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_7();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD360, &qword_237F030C8);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 4);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[4 * v9] <= v13)
    {
      memmove(v13, v14, 4 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v9);
  }
}

void sub_237EE2D9C(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_7();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3C0, &unk_237F07370);
    v11 = swift_allocObject();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_3();
    *(v11 + 2) = v9;
    *(v11 + 3) = v12;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[8 * v9] <= v13)
    {
      memmove(v13, v14, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v9);
  }
}

double OUTLINED_FUNCTION_8_91()
{

  return result;
}

double OUTLINED_FUNCTION_9_71()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_16_61(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a4 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_237EF9740(a1, a2, a3, v10, a5, a6, 50, 2, a9);
}

uint64_t OUTLINED_FUNCTION_42_23()
{
}

uint64_t DenseVector.Iterator.vector.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t DenseVector.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = *(a1 + 16);
  if (v4 >= DenseVector.count.getter(*v2))
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v6);
  }

  else
  {
    DenseVector.subscript.getter(v4, v5, v6);
    result = __swift_storeEnumTagSinglePayload(a2, 0, 1, v6);
    v8 = v2[1];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      __break(1u);
    }

    else
    {
      v2[1] = v10;
    }
  }

  return result;
}

uint64_t DenseVector._copyContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v17 = a3;
  type metadata accessor for DenseVector(0, a4, a5, a4);
  OUTLINED_FUNCTION_0_112();
  swift_getWitnessTable();
  if (sub_237EF8EC0())
  {

    return v7;
  }

  v10 = sub_237EF9140();
  if (v10)
  {
    v11 = v10;
    v12 = DenseVector.count.getter(v7);
    if (v12 <= a2)
    {
      MEMORY[0x28223BE20](v12);
      v16[2] = a4;
      v16[3] = a5;
      v16[4] = v11;
      v16[5] = v7;
      v16[6] = a1;
      v16[7] = a2;
      type metadata accessor for DenseVector.Iterator(255, a4, a5, v13);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237EE3570, v16, v7, a4, TupleTypeMetadata2, a5);
      return v17;
    }

    __break(1u);
  }

  result = sub_237EF9740("Fatal error", 11, 2, 0xD000000000000031, 0x8000000237F02190, "LinearAlgebra/DenseVector+Collection.swift", 42, 2, 57);
  __break(1u);
  return result;
}

uint64_t sub_237EE3490@<X0>(uint64_t a3@<X4>, void *a7@<X8>, uint64_t a8)
{
  DenseVector.count.getter(a3);
  sub_237EF9080();

  v11 = DenseVector.count.getter(v10);
  *a7 = a3;
  a7[1] = v11;
  sub_237EF9130();
  DenseVector.count.getter(a3);
  result = sub_237EF9150();
  a7[2] = result;
  return result;
}

uint64_t sub_237EE35BC@<X0>(void *a1@<X8>)
{
  DenseVector.makeIterator()(*v1);
  v4 = v3;
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
  return result;
}

uint64_t sub_237EE3604(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_237EF8E20();
}

uint64_t sub_237EE3658(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_237EF8E60();
}

uint64_t sub_237EE36AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = DenseVector._copyContents(initializing:)(a2, a3, *v4, *(a4 + 16), *(a4 + 24));
  v8 = v7;
  v10 = v9;

  *a1 = v6;
  a1[1] = v8;
  return v10;
}

Swift::Int_optional __swiftcall DenseVector.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  v4 = limitedBy - _;
  if (offsetBy < 1)
  {
    if (v4 <= 0 && v4 > offsetBy)
    {
      goto LABEL_4;
    }

LABEL_10:
    v6 = 0;
    v5 = offsetBy + _;
    goto LABEL_11;
  }

  if (v4 < 0 || v4 >= offsetBy)
  {
    goto LABEL_10;
  }

LABEL_4:
  v5 = 0;
  v6 = 1;
LABEL_11:
  result.value = v5;
  result.is_nil = v6;
  return result;
}

void (*DenseVector.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  sub_237EF9580();
  v4[4] = sub_237EF95B0();
  return sub_237D8212C;
}

void DenseVector.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  sub_237EF9580();
  sub_237EF94D0();
  v7 = *v3;
  sub_237E6A31C(a2, *v3);
  (*(*(v6 - 8) + 40))(v7 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * a2, a1, v6);

  nullsub_1();
}

{
  v6 = *(a3 + 16);
  sub_237EF9580();
  sub_237EF94D0();
  v7 = *v3;
  sub_237E6A31C(a2, *v3);
  (*(*(v6 - 8) + 40))(v7 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * a2, a1, v6);

  nullsub_1();
}

uint64_t DenseVector.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for DenseVector(0, a4, a5, a4);

  OUTLINED_FUNCTION_0_112();
  swift_getWitnessTable();
  sub_237EFA0B0();
  return v6;
}

uint64_t DenseVector.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_237EF9580();
  OUTLINED_FUNCTION_0_112();
  swift_getWitnessTable();
  sub_237EFA0E0();
  swift_getWitnessTable();
  return sub_237EF94A0();
}

void (*DenseVector.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void **a1, char a2)
{
  v9 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v9;
  v9[5] = a4;
  v9[6] = v4;
  v9[3] = a2;
  v9[4] = a3;
  *v9 = DenseVector.subscript.getter(a2, a3, *v4, *(a4 + 16), *(a4 + 24));
  v9[1] = v10;
  v9[2] = v11;
  return sub_237EE3AF4;
}

void sub_237EE3AF4(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {

    OUTLINED_FUNCTION_2_127();
  }

  else
  {
    OUTLINED_FUNCTION_2_127();
  }

  free(v2);
}

void (*sub_237EE3BE0(void *a1, uint64_t *a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v7;
  *v7 = v3;
  v7[1] = a3;
  v8 = *(a3 + 16);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  v7[4] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = *a2;
  v7[5] = v11;
  v7[6] = v12;
  DenseVector.subscript.getter(v12, *v3, v8);
  return sub_237EE3CDC;
}

void sub_237EE3CDC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[4];
  if (a2)
  {
    v6 = v2[2];
    v7 = v2[3];
    v8 = v2[1];
    (*(v7 + 16))((*a1)[4], v3, v6);
    DenseVector.subscript.setter(v5, v4, v8);
    (*(v7 + 8))(v3, v6);
  }

  else
  {
    DenseVector.subscript.setter((*a1)[5], v4, v2[1]);
  }

  free(v3);
  free(v5);

  free(v2);
}

void (*sub_237EE3DC4(void *a1, uint64_t *a2, uint64_t a3))(void **a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v7;
  v7[3] = v3;
  v7[4] = a3;
  v8 = *a2;
  v9 = a2[1];
  v7[5] = *a2;
  v7[6] = v9;
  *v7 = DenseVector.subscript.getter(v8, v9, *v3, *(a3 + 16), *(a3 + 24));
  v7[1] = v10;
  v7[2] = v11;
  return sub_237EE3E4C;
}

void sub_237EE3E4C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {

    OUTLINED_FUNCTION_1_126();
  }

  else
  {
    OUTLINED_FUNCTION_1_126();
  }

  free(v2);
}

uint64_t sub_237EE3F94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = DenseVector.endIndex.getter(*v2, *(a1 + 16), *(a1 + 24));
  *a2 = result;
  return result;
}

void (*sub_237EE3FC8(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v7 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v7;
  v7[4] = sub_237EE97D4(v7, *a2, *v3, *(a3 + 16));
  return sub_237C84CD0;
}

uint64_t sub_237EE4040@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = DenseVector.subscript.getter(*a1, a1[1], *v3, *(a2 + 16), *(a2 + 24));
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  return result;
}

uint64_t sub_237EE4080@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = DenseVector.indices.getter(*v2, *(a1 + 16), *(a1 + 24));
  *a2 = 0;
  a2[1] = v5;
  return result;
}

Swift::Int sub_237EE40CC@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = DenseVector.index(after:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_237EE40FC@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = DenseVector.index(before:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_237EE42AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OUTLINED_FUNCTION_1_126()
{

  return DenseVector.subscript.setter(v0, v1, v5, v4, v3, v2);
}

uint64_t OUTLINED_FUNCTION_2_127()
{

  return DenseVector.subscript.setter(v1, v2, v4, v5, v3, v0);
}

uint64_t UnsafeMutableMatrixPointer.count.getter()
{
  if (*(v0 + 32))
  {
    v2 = *(v0 + 16);
    v1 = *(v0 + 24);
    result = v1 * v2;
    if ((v1 * v2) >> 64 == (v1 * v2) >> 63)
    {
      return result;
    }

    __break(1u);
  }

  v4 = *(v0 + 8);
  v5 = *(v0 + 24);
  result = v4 * v5;
  if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t UnsafeMutableMatrixPointer.init(start:rowCount:columnCount:leadingDimension:layout:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

__n128 UnsafeMutableMatrixPointer.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

__n128 UnsafeMutableMatrixPointer.init(mutating:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  *a2 = *a1;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 24) = v2;
  *(a2 + 32) = v3;
  return result;
}

uint64_t UnsafeMutableMatrixPointer.withUnsafeBufferPointer<A>(_:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  UnsafeMutableMatrixPointer.count.getter();
  v4 = sub_237EF8540();
  return a1(v4);
}

uint64_t UnsafeMutableMatrixPointer.withUnsafeMutableBufferPointer<A>(_:)(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  UnsafeMutableMatrixPointer.count.getter();
  v10[0] = sub_237EF9160();
  v10[1] = v7;
  result = a1(v10);
  if (!v4)
  {
    result = sub_237EF9140();
    if (result)
    {
      v9 = v6 == result;
    }

    else
    {
      v9 = 0;
    }

    if (!v9)
    {
      result = sub_237EF9740("Fatal error", 11, 2, 0xD00000000000004BLL, 0x8000000237F02200, "LinearAlgebra/UnsafeMutableMatrixPointer.swift", 46, 2, 110);
      __break(1u);
    }
  }

  return result;
}

uint64_t static UnsafeMutableMatrixPointer.allocate(rowCount:columnCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = a1 * a2;
  if ((a1 * a2) >> 64 == result >> 63)
  {
    result = sub_237EF90C0();
    *a3 = result;
    *(a3 + 8) = a1;
    *(a3 + 16) = a2;
    *(a3 + 24) = a2;
    *(a3 + 32) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_237EE46E4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (*(v3 + 32))
  {
    v5 = *(v3 + 16);
    if (v5 < 0)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    if (v5)
    {
      v6 = *(v3 + 24);
      while (is_mul_ok(0, v6))
      {
        OUTLINED_FUNCTION_1_127();
        sub_237EF9160();
        v7 = OUTLINED_FUNCTION_0_113();
        a3(v7);
      }

      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }
  }

  else
  {
    v8 = *(v3 + 8);
    if (v8 < 0)
    {
LABEL_16:
      __break(1u);
      return;
    }

    if (v8)
    {
      v9 = *(v3 + 24);
      while (is_mul_ok(0, v9))
      {
        OUTLINED_FUNCTION_1_127();
        sub_237EF9160();
        v10 = OUTLINED_FUNCTION_0_113();
        a3(v10);
      }

      goto LABEL_14;
    }
  }
}

uint64_t UnsafeMutableMatrixPointer.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *v4;
  v6 = v4[3];
  if (v4[4])
  {
    v7 = a2 * v6;
    if ((a2 * v6) >> 64 != (a2 * v6) >> 63)
    {
      __break(1u);
      goto LABEL_10;
    }

    v6 = v7 + result;
    if (!__OFADD__(v7, result))
    {
      return (*(*(*(a3 + 16) - 8) + 16))(a4, v5 + *(*(*(a3 + 16) - 8) + 72) * v6);
    }

    __break(1u);
  }

  v8 = result * v6;
  if ((result * v6) >> 64 != (result * v6) >> 63)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v8 + a2;
  if (!__OFADD__(v8, a2))
  {
    return (*(*(*(a3 + 16) - 8) + 16))(a4, v5 + *(*(*(a3 + 16) - 8) + 72) * v6);
  }

LABEL_11:
  __break(1u);
  return result;
}

void (*UnsafeMutableMatrixPointer.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v4 = *(v3 + 24);
  if (*(v3 + 32))
  {
    v5 = a3 * v4;
    if ((a3 * v4) >> 64 != (a3 * v4) >> 63)
    {
      __break(1u);
      goto LABEL_10;
    }

    v4 = v5 + a2;
    if (!__OFADD__(v5, a2))
    {
      return nullsub_1;
    }

    __break(1u);
  }

  if ((a2 * v4) >> 64 != (a2 * v4) >> 63)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!__OFADD__(a2 * v4, a3))
  {
    return nullsub_1;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t UnsafeMutableMatrixPointer.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = UnsafeMutableMatrixPointer.subscript.modify(v11, a2, a3);
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  (*(v8 + 24))(v9, a1, v7);
  (v6)(v11, 0);
  return (*(v8 + 8))(a1, v7);
}

void UnsafeMutableMatrixPointer.subscript.getter(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + 32) & 1) == 0)
  {
    OUTLINED_FUNCTION_1_123();
    if (!v3)
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_0_107();
  }

  UnsafeMutableVectorPointer.init(start:count:stride:)();
}

{
  if (*(v2 + 32))
  {
    OUTLINED_FUNCTION_1_123();
    if (!v3)
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_0_107();
  }

  UnsafeMutableVectorPointer.init(start:count:stride:)();
}

uint64_t UnsafeMutableMatrixPointer.debugDescription.getter(uint64_t a1)
{
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000022, 0x8000000237F02250);
  sub_237EF90D0();
  sub_237EF9CF0();
  MEMORY[0x2383E0710](0x203A73776F72202CLL, 0xE800000000000000);
  v1 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v1);

  MEMORY[0x2383E0710](0x6E6D756C6F63202CLL, 0xEB00000000203A73);
  v2 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v2);

  MEMORY[0x2383E0710](0x74756F79616C202CLL, 0xEA0000000000203ALL);
  sub_237EF9670();
  MEMORY[0x2383E0710](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_237EE4CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void (*DenseMatrix.Transpose.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  v8 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v8;
  v10 = type metadata accessor for DenseMatrix(0, *(a4 + 16), *(a4 + 24), v9);
  v8[4] = DenseMatrix.subscript.modify(v8, a3, a2, v10);
  return sub_237EE4E0C;
}

void sub_237EE4E0C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_9_72(a1);
  v3(v2, 0);

  free(v1);
}

void (*DenseMatrix.Transpose.subscript.read(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  DenseMatrix.subscript.read();
  v6[4] = v7;
  return sub_237EE4F0C;
}

void sub_237EE4F0C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_9_72(a1);
  v3(v2, 0);

  free(v1);
}

uint64_t DenseMatrix.Transpose.base.setter(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{

  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  *(v4 + 24) = a4;
  return result;
}

uint64_t DenseMatrix.Transpose.subscript.getter@<X0>(uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  DenseMatrix.subscript.read();
  v9 = v8;
  (*(*(a5 - 8) + 16))(a6);
  return v9(v11, 0);
}

uint64_t DenseMatrix.Transpose.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = type metadata accessor for DenseMatrix(0, v7, *(a4 + 24), a4);
  v9 = DenseMatrix.subscript.modify(v13, a3, a2, v8);
  v10 = *(v7 - 8);
  (*(v10 + 24))(v11, a1, v7);
  (v9)(v13, 0);
  return (*(v10 + 8))(a1, v7);
}

uint64_t sub_237EE51E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = DenseMatrix.Transpose.init(rowCount:columnCount:)(a1, a2, *(a3 + 16), *(a3 + 24));
  *a4 = result;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7 & 1;
  *(a4 + 24) = v8;
  return result;
}

uint64_t sub_237EE5220@<X0>(uint64_t a1@<X8>)
{
  result = DenseMatrix.Transpose.transposed()(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_237EE5260@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 16);
  DenseMatrix.subscript.read();
  v7 = v6;
  (*(*(v5 - 8) + 16))(a4);
  return v7(v9, 0);
}

uint64_t sub_237EE5304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = type metadata accessor for DenseMatrix(0, v7, *(a4 + 24), a4);
  v9 = DenseMatrix.subscript.modify(v13, a3, a2, v8);
  v10 = *(v7 - 8);
  (*(v10 + 24))(v11, a1, v7);
  (v9)(v13, 0);
  return (*(v10 + 8))(a1, v7);
}

void (*sub_237EE53E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  v8 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v8;
  v8[4] = DenseMatrix.Transpose.subscript.modify(v8, a2, a3, a4);
  return sub_237EE5460;
}

void sub_237EE5460(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_9_72(a1);
  v3(v2);

  free(v1);
}

uint64_t static DenseMatrix.Transpose.* infix(_:_:)(void (**a1)(char *, uint64_t), char *a2, int a3, void (**a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v65 = a3;
  v70 = a2;
  OUTLINED_FUNCTION_14_72();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8_92();
  MEMORY[0x28223BE20](v16);
  v18 = &v54 - v17;
  MEMORY[0x28223BE20](v19);
  v69 = &v54 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v54 - v22;
  v64 = *(*(*(v24 + 16) + 16) + 8);
  v61 = *(v64 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v59 = &v54 - v25;
  v26 = a7;
  if (DenseVector.count.getter(a5) == a1)
  {
    v56 = v7;
    if (qword_27DEB6C70 != -1)
    {
      goto LABEL_19;
    }

    while (1)
    {
      v73 = v14;
      v27 = sub_237EF7DB0();
      __swift_project_value_buffer(v27, static Logger.linearAlgebra);
      v28 = sub_237EF7D90();
      v29 = sub_237EF8F80();
      v30 = os_log_type_enabled(v28, v29);
      v55 = v18;
      v62 = v23;
      v66 = a4;
      if (v30)
      {
        v31 = swift_slowAlloc();
        v74[0] = swift_slowAlloc();
        v32 = a1;
        v33 = v74[0];
        *v31 = 136315138;
        v34 = sub_237EFA220();
        v36 = sub_237DAFA64(v34, v35, v74);

        *(v31 + 4) = v36;
        v23 = v62;
        _os_log_impl(&dword_237C51000, v28, v29, "Using a slow implementation of matrix multiplication for %s. Prefer using Float or Double.", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v33);
        a1 = v32;
        OUTLINED_FUNCTION_105_2();
        OUTLINED_FUNCTION_105_2();
      }

      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      sub_237EF9FB0();
      sub_237EF9D20();
      v37 = v70;
      result = DenseVector.init(repeating:count:)(v23, v70, a6);
      v75 = result;
      if ((v37 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (!v37)
      {
        return result;
      }

      v63 = a1;
      v39 = 0;
      a4 = (v73 + 16);
      a1 = (v73 + 8);
      v57 = (v73 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v14 = v69;
      v71 = a5;
      v72 = (v73 + 16);
      v68 = v26;
      while (1)
      {
        v73 = v39;
        v18 = v59;
        sub_237EF9FB0();
        sub_237EF9D20();
        v40 = DenseVector.count.getter(a5);
        if (v40 < 0)
        {
          break;
        }

        if (v40)
        {
          v41 = 0;
          v42 = v56;
          v43 = v55;
          v44 = v62;
          v67 = v40;
          do
          {
            DenseMatrix.subscript.read();
            v46 = v45;
            v47 = *v72;
            (*v72)(v43);
            v46(v74, 0);
            DenseVector.subscript.getter(v41, v71, a6);
            OUTLINED_FUNCTION_42_2();
            sub_237EF8D30();
            v48 = *a1;
            (*a1)(v42, a6);
            v48(v43, a6);
            sub_237EF9770();
            v48(v44, a6);
            ++v41;
          }

          while (v67 != v41);
          v26 = v68;
          v14 = v69;
          v37 = v70;
        }

        else
        {
          v47 = *a4;
        }

        v49 = v73;
        v50 = v73 + 1;
        v23 = v62;
        (v47)(v62, v14, a6);
        v52 = type metadata accessor for DenseVector(0, a6, v26, v51);
        DenseVector.subscript.setter(v23, v49, v52);
        (*a1)(v14, a6);
        v39 = v49 + 1;
        v53 = v50 == v37;
        a5 = v71;
        a4 = v72;
        if (v53)
        {
          return v75;
        }
      }

      __break(1u);
LABEL_19:
      OUTLINED_FUNCTION_0_109(&qword_27DEB6C70);
    }

    __break(1u);
  }

  result = sub_237EF9740("Fatal error", 11, 2, 0xD000000000000052, 0x8000000237F022B0, "LinearAlgebra/DenseMatrix+Transpose.swift", 41, 2, 123);
  __break(1u);
  return result;
}

uint64_t static DenseMatrix.Transpose.* infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_14_72();
  v75 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8_92();
  MEMORY[0x28223BE20](v17);
  v19 = v56 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = v56 - v21;
  MEMORY[0x28223BE20](v23);
  v73 = v56 - v24;
  v65 = *(*(*(v25 + 16) + 16) + 8);
  v59 = *(v65 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v58 = v56 - v26;
  v27 = OUTLINED_FUNCTION_42_2();
  if (DenseVector.count.getter(v27) == a3)
  {
    v67 = v7;
    if (qword_27DEB6C70 != -1)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v28 = sub_237EF7DB0();
      __swift_project_value_buffer(v28, static Logger.linearAlgebra);
      v29 = sub_237EF7D90();
      LODWORD(v74) = sub_237EF8F80();
      v30 = os_log_type_enabled(v29, v74);
      v66 = v19;
      v72 = v22;
      v68 = a1;
      if (v30)
      {
        v31 = swift_slowAlloc();
        v71 = v31;
        v70 = swift_slowAlloc();
        v76[0] = v70;
        *v31 = 136315138;
        v32 = sub_237EFA220();
        v34 = sub_237DAFA64(v32, v33, v76);
        a1 = v68;

        v35 = v71;
        *(v71 + 4) = v34;
        v22 = v72;
        _os_log_impl(&dword_237C51000, v29, v74, "Using a slow implementation of matrix multiplication for %s. Prefer using Float or Double.", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v70);
        OUTLINED_FUNCTION_105_2();
        OUTLINED_FUNCTION_105_2();
      }

      v56[2] = swift_getAssociatedConformanceWitness();
      sub_237EF9FB0();
      v36 = v73;
      OUTLINED_FUNCTION_18_52(v58);
      result = DenseVector.init(repeating:count:)(v36, a2, a6);
      v77 = result;
      if (a2 < 0)
      {
        break;
      }

      if (!a2)
      {
        return result;
      }

      v38 = 0;
      v69 = (v75 + 2);
      v56[1] = (v75 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v60 = a6;
      v61 = a5;
      v71 = v75 + 1;
      v63 = a3;
      v64 = a2;
      v62 = a4;
      while (1)
      {
        v74 = v38;
        v19 = v58;
        sub_237EF9FB0();
        OUTLINED_FUNCTION_18_52(v19);
        v39 = OUTLINED_FUNCTION_42_2();
        v40 = DenseVector.count.getter(v39);
        if (v40 < 0)
        {
          break;
        }

        if (v40)
        {
          v41 = 0;
          v42 = v60;
          v70 = v40;
          do
          {
            v75 = (v41 + 1);
            v43 = v66;
            DenseVector.subscript.getter(v41, a1, v42);
            DenseMatrix.subscript.read();
            v45 = v44;
            v46 = *v69;
            v47 = v67;
            (*v69)(v67);
            v45(v76, 0);
            sub_237EF8D30();
            v48 = a7;
            v49 = *v71;
            (*v71)(v47, v42);
            v49(v43, v42);
            sub_237EF9770();
            v50 = OUTLINED_FUNCTION_42_2();
            (v49)(v50);
            a7 = v48;
            a5 = v61;
            a4 = v62;
            a3 = v63;
            a2 = v64;
            a1 = v68;
            v41 = v75;
          }

          while (v70 != v75);
        }

        else
        {
          v46 = *v69;
        }

        v51 = v73;
        v75 = (v74 + 1);
        v52 = v72;
        v53 = v60;
        (v46)(v73, v72, v60);
        v22 = v52;
        v55 = type metadata accessor for DenseVector(0, v53, a7, v54);
        DenseVector.subscript.setter(v51, v74, v55);
        (*v71)(v52, v53);
        v38 = v75;
        a6 = v53;
        if (v75 == a2)
        {
          return v77;
        }
      }

      __break(1u);
LABEL_18:
      OUTLINED_FUNCTION_0_109(&qword_27DEB6C70);
    }

    __break(1u);
  }

  result = sub_237EF9740("Fatal error", 11, 2, 0xD00000000000004FLL, 0x8000000237F02310, "LinearAlgebra/DenseMatrix+Transpose.swift", 41, 2, 143);
  __break(1u);
  return result;
}

uint64_t static DenseMatrix.Transpose<>.* infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_16_62(a1, a2, a3, a4, a5);
  if (v8)
  {
    OUTLINED_FUNCTION_6_83();
    v10 = sub_237E61300(v9, 0.0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_237E643B4(v10, v11, v12, v13);
    }

    OUTLINED_FUNCTION_5_99();
    v17 = v5;
    v18 = v14;
    v19 = v6;
    OUTLINED_FUNCTION_1_128();

    UnsafeMutableMatrixPointer<A>.addProductFloat(_:transposed:_:transposed:scaledBy:)(v15, 0, v16, 0);

    return OUTLINED_FUNCTION_7_86();
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_16_62(a1, a2, a3, a4, a5);
  if (v8)
  {
    OUTLINED_FUNCTION_6_83();
    v10 = sub_237E613EC(v9, 0.0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_237E643FC(v10, v11, v12, v13);
    }

    OUTLINED_FUNCTION_5_99();
    v17 = v5;
    v18 = v14;
    v19 = v6;
    OUTLINED_FUNCTION_1_128();

    UnsafeMutableMatrixPointer<A>.addProductDouble(_:transposed:_:transposed:scaledBy:)(v15, 0, v16, 0);

    return OUTLINED_FUNCTION_7_86();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void static DenseMatrix.Transpose<>.* infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_19_53();
    OUTLINED_FUNCTION_13_59();
    if (v26)
    {
      v27 = sub_237EF89B0();
      OUTLINED_FUNCTION_17_63(v27);
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
    }

    for (i = 0; v24 != i; ++i)
    {
      v29 = v25 + 4 * i;
      *(v29 + 32) = 0;
    }

    OUTLINED_FUNCTION_4_99();
    OUTLINED_FUNCTION_11_70();
    OUTLINED_FUNCTION_3_109();
    UnsafeMutableVectorPointer<A>.addProductFloat(_:_:transposed:scaledBy:)();

    OUTLINED_FUNCTION_2_128();
    OUTLINED_FUNCTION_20_51();
  }
}

{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_19_53();
    OUTLINED_FUNCTION_12_63();
    if (v26)
    {
      v27 = sub_237EF89B0();
      OUTLINED_FUNCTION_17_63(v27);
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
    }

    for (i = 0; v24 != i; ++i)
    {
      v29 = v25 + 4 * i;
      *(v29 + 32) = 0;
    }

    OUTLINED_FUNCTION_4_99();
    OUTLINED_FUNCTION_10_71();
    OUTLINED_FUNCTION_3_109();
    UnsafeMutableVectorPointer<A>.addProductFloat(_:_:transposed:scaledBy:)();

    OUTLINED_FUNCTION_2_128();
    OUTLINED_FUNCTION_20_51();
  }
}

{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_19_53();
    OUTLINED_FUNCTION_13_59();
    if (v26)
    {
      v27 = sub_237EF89B0();
      OUTLINED_FUNCTION_17_63(v27);
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
    }

    for (i = 0; v24 != i; ++i)
    {
      v29 = v25 + 8 * i;
      *(v29 + 32) = 0;
    }

    OUTLINED_FUNCTION_4_99();
    OUTLINED_FUNCTION_11_70();
    OUTLINED_FUNCTION_3_109();
    UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();

    OUTLINED_FUNCTION_2_128();
    OUTLINED_FUNCTION_20_51();
  }
}

{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_19_53();
    OUTLINED_FUNCTION_12_63();
    if (v26)
    {
      v27 = sub_237EF89B0();
      OUTLINED_FUNCTION_17_63(v27);
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
    }

    for (i = 0; v24 != i; ++i)
    {
      v29 = v25 + 8 * i;
      *(v29 + 32) = 0;
    }

    OUTLINED_FUNCTION_4_99();
    OUTLINED_FUNCTION_10_71();
    OUTLINED_FUNCTION_3_109();
    UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();

    OUTLINED_FUNCTION_2_128();
    OUTLINED_FUNCTION_20_51();
  }
}

uint64_t sub_237EE670C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double OUTLINED_FUNCTION_1_128()
{

  return result;
}

double OUTLINED_FUNCTION_10_71()
{

  return result;
}

double OUTLINED_FUNCTION_11_70()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_18_52(uint64_t a1)
{

  return sub_237EF9D20();
}

void UnsafeMutableVectorPointer.initialize(repeating:)()
{
  OUTLINED_FUNCTION_4_100();
  OUTLINED_FUNCTION_1_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  if (v11)
  {
    for (i = 0; ; i = v14)
    {
      v13 = i <= v2;
      if (v1 > 0)
      {
        v13 = i >= v2;
      }

      if (v13)
      {
        break;
      }

      if (__OFADD__(i, v1))
      {
        v14 = ((i + v1) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v14 = i + v1;
      }

      v15 = v3 + *(v6 + 72) * i;
      (*(v6 + 16))(v10, v4, v0);
      sub_237EE03FC(v10, v15, v0);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_237EE6B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(a1, a2, a3);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void UnsafeMutableVectorPointer.makeIterator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 * a3) >> 64 == (a2 * a3) >> 63)
  {
    UnsafeVectorPointer.Iterator.init(baseAddress:end:stride:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t UnsafeMutableVectorPointer._copyContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a2;
  OUTLINED_FUNCTION_1_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = sub_237EF90F0();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v34 - v18;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  type metadata accessor for UnsafeMutableVectorPointer(0, a6, v20, v21);
  OUTLINED_FUNCTION_0_114();
  swift_getWitnessTable();
  if (sub_237EF8EC0())
  {
    UnsafeMutableVectorPointer.makeIterator()(a3, a4, a5);
    v23 = v22;
    sub_237EF9130();
    return v23;
  }

  v34 = a1;
  v35 = a3;
  v24 = v36;
  v25 = sub_237EF9140();
  if (v25)
  {
    if (v24 < a4)
    {
      __break(1u);
    }

    else
    {
      v26 = v25;
      if (a5 == 1)
      {
        sub_237EF9080();
      }

      else
      {
        UnsafeMutableVectorPointer.makeIterator()(v35, a4, a5);
        v37 = v27;
        v38 = v28;
        v39 = v29;
        v31 = type metadata accessor for UnsafeVectorPointer.Iterator(0, a6, v29, v30);
        while (1)
        {
          UnsafeVectorPointer.Iterator.next()(v31, v19);
          if (__swift_getEnumTagSinglePayload(v19, 1, a6) == 1)
          {
            break;
          }

          (*(v12 + 32))(v16, v19, a6);
          sub_237EE03FC(v16, v26, a6);
          v26 += *(v12 + 72);
        }
      }

      if ((a4 * a5) >> 64 == (a4 * a5) >> 63)
      {
        UnsafeVectorPointer.Iterator.init(baseAddress:end:stride:)();
        v23 = v32;
        sub_237EF9130();
        sub_237EF9150();
        return v23;
      }
    }

    __break(1u);
  }

  result = sub_237EF9740("Fatal error", 11, 2, 0xD000000000000030, 0x8000000237F02090, "LinearAlgebra/UnsafeMutableVectorPointer.swift", 46, 2, 112);
  __break(1u);
  return result;
}

void sub_237EE6ED4(void *a1@<X8>)
{
  UnsafeMutableVectorPointer.makeIterator()(*v1, v1[1], v1[2]);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
}

uint64_t sub_237EE6F10(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_237EF8E20();
}

uint64_t sub_237EE6FC8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = UnsafeMutableVectorPointer._copyContents(initializing:)(a2, a3, *v4, v4[1], v4[2], *(a4 + 16));
  a1[1] = v6;
  a1[2] = v7;
  return v8;
}

uint64_t UnsafeMutableVectorPointer.withContiguousStorageIfAvailable<A>(_:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a4@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  if (a4 == 1)
  {
    v11 = sub_237EF8540();
    result = a1(v11);
    if (v7)
    {
      return result;
    }

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a7, v13, 1, a6);
}

Swift::Int_optional __swiftcall UnsafeMutableVectorPointer.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  v4 = limitedBy - _;
  if (offsetBy < 1)
  {
    if (v4 <= 0 && v4 > offsetBy)
    {
      goto LABEL_4;
    }

LABEL_10:
    v6 = 0;
    v5 = offsetBy + _;
    goto LABEL_11;
  }

  if (v4 < 0 || v4 >= offsetBy)
  {
    goto LABEL_10;
  }

LABEL_4:
  v5 = 0;
  v6 = 1;
LABEL_11:
  result.value = v5;
  result.is_nil = v6;
  return result;
}

void (*UnsafeMutableVectorPointer.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  if ((a2 * a5) >> 64 == (a2 * a5) >> 63)
  {
    return nullsub_1;
  }

  __break(1u);
  return result;
}

{
  if ((a2 * a5) >> 64 == (a2 * a5) >> 63)
  {
    return nullsub_1;
  }

  __break(1u);
  return result;
}

uint64_t sub_237EE7208(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 * a5) >> 64 == (a2 * a5) >> 63)
  {
    return (*(*(a6 - 8) + 40))(a3 + *(*(a6 - 8) + 72) * a2 * a5, result, a6);
  }

  __break(1u);
  return result;
}

double UnsafeMutableVectorPointer.subscript.getter@<D0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  type metadata accessor for UnsafeMutableVectorPointer(0, a6, a3, a4);
  OUTLINED_FUNCTION_0_114();
  swift_getWitnessTable();
  sub_237EFA0B0();
  result = *&v9;
  *a7 = v9;
  *(a7 + 16) = v10;
  *(a7 + 24) = v11;
  return result;
}

void *UnsafeMutableVectorPointer.subscript.setter(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v20 = v14;
  type metadata accessor for UnsafeMutableVectorPointer(255, v14, v15, v16);
  OUTLINED_FUNCTION_0_114();
  swift_getWitnessTable();
  sub_237EFA0E0();
  sub_237EFA0A0();
  v22 = *a1;
  v23 = a1[1];
  result = sub_237EFA0D0();
  if (v21 < v24)
  {
LABEL_8:
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADDA0, &qword_237F0A6B0);
    sub_237C85338(&qword_280C8E200, MEMORY[0x277D83D28]);
    sub_237EFA000();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB7138, &qword_237F1FD78);
    sub_237EF9350();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB7140, &qword_237F1FD80);
      result = sub_237EF9360();
      if (v23)
      {
        break;
      }

      v18 = v22;
      v22 = *a1;
      v23 = a1[1];
      swift_getWitnessTable();
      result = sub_237EFA0F0();
      if ((v18 * a6) >> 64 != (v18 * a6) >> 63)
      {
        __break(1u);
        goto LABEL_8;
      }

      (*(v9 + 40))(a4 + *(v9 + 72) * v18 * a6, v13, v20);
    }
  }

  return result;
}

void (*UnsafeMutableVectorPointer.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = __swift_coroFrameAllocStub(0xA8uLL);
  *a1 = v14;
  v14[19] = a6;
  v14[20] = a7;
  v14[17] = a4;
  v14[18] = a5;
  v14[15] = a2;
  v14[16] = a3;
  UnsafeMutableVectorPointer.subscript.getter(a4, a5, a7, (v14 + 10));
  return sub_237EE7604;
}

void sub_237EE7604(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_3_110(a1, a2, a3, a4, a5);

  free(v5);
}

Swift::Void __swiftcall UnsafeMutableVectorPointer.swapAt(_:_:)(Swift::Int a1, Swift::Int a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v15 = &v17 - v14;
  if (v10 != v11)
  {
    if ((v10 * v13) >> 64 == (v10 * v13) >> 63)
    {
      if ((v11 * v13) >> 64 == (v11 * v13) >> 63)
      {
        v16 = v12 + *(v5 + 72) * v11 * v13;
        sub_237EF90A0();
        sub_237EF9090();
        (*(v5 + 16))(v8, v15, v3);
        sub_237EE03FC(v8, v16, v3);
        (*(v5 + 8))(v15, v3);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_237EE7798(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v4 = v3[2];
  v5 = *a2 * v4;
  if ((*a2 * v4) >> 64 == v5 >> 63)
  {
    return (*(*(*(a3 + 16) - 8) + 40))(*v3 + *(*(*(a3 + 16) - 8) + 72) * v5, result);
  }

  __break(1u);
  return result;
}

void (*sub_237EE77F4(void *a1, uint64_t *a2))(void *a1)
{
  v5 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v5;
  v5[4] = UnsafeMutableVectorPointer.subscript.modify(v5, *a2, *v2, v6, v2[2]);
  return sub_237C803C0;
}

void (*sub_237EE788C(void *a1, uint64_t *a2, uint64_t a3))(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_coroFrameAllocStub(0xA8uLL);
  *a1 = v7;
  v8 = a2[1];
  v7[15] = *a2;
  v7[16] = v8;
  v9 = *v3;
  v7[17] = *v3;
  v10 = v3[1];
  v7[18] = v10;
  v7[19] = v3[2];
  v11 = *(a3 + 16);
  v7[20] = v11;
  UnsafeMutableVectorPointer.subscript.getter(v9, v10, v11, (v7 + 10));
  return sub_237EE7604;
}

uint64_t UnsafeMutableVectorPointer.withContiguousMutableStorageIfAvailable<A>(_:)(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  if (*(v4 + 16) == 1)
  {
    v18 = v10;
    v19 = v9;
    v20[0] = sub_237EF9160();
    v20[1] = v14;
    v15 = sub_237EF9140();
    result = a1(v20);
    if (v5)
    {
      return result;
    }

    v20[3] = v15;
    sub_237EF9140();
    sub_237EF90D0();
    sub_237EF90F0();
    swift_getWitnessTable();
    swift_getWitnessTable();
    result = sub_237EF9DF0();
    if ((result & 1) == 0)
    {
      __break(1u);
      return result;
    }

    (*(v18 + 32))(v19, v13, a4);
    v9 = v19;
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v9, v17, 1, a4);
}

void (*sub_237EE7BDC(uint64_t **a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v7 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v7;
  v7[4] = sub_237EE7C58(v7, *a2, *v3, v3[1], v3[2], *(a3 + 16));
  return sub_237C84CD0;
}

void (*sub_237EE7C58(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(void *a1)
{
  v11 = *(a6 - 8);
  *a1 = a6;
  a1[1] = v11;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  a1[2] = v12;
  UnsafeMutableVectorPointer.subscript.getter(a2, a3, a5, a6, v12);
  return sub_237C84DD4;
}

double sub_237EE7D20@<D0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  UnsafeMutableVectorPointer.subscript.getter(*v3, v3[1], *(a2 + 16), v7);
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v6;
  *(a3 + 32) = v8;
  return result;
}

uint64_t sub_237EE7D7C@<X0>(void *a1@<X8>)
{
  result = UnsafeMutableVectorPointer.indices.getter();
  *a1 = 0;
  a1[1] = v3;
  return result;
}

Swift::Int sub_237EE7DA8@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = UnsafeMutableVectorPointer.index(after:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_237EE7DD8@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = UnsafeMutableVectorPointer.index(before:)(*a1);
  *a2 = result;
  return result;
}

void *UnsafeMutableVectorPointer.init(rebasing:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v22 = *a1;
  v23 = v6;
  v24 = *(a1 + 4);
  type metadata accessor for UnsafeMutableVectorPointer(255, a2, a3, a4);
  OUTLINED_FUNCTION_0_114();
  swift_getWitnessTable();
  v7 = sub_237EFA0E0();
  MEMORY[0x2383E21A0](v21);
  v8 = v21[0];
  OUTLINED_FUNCTION_3_108();
  sub_237EFA0A0();
  v9 = v19;
  v10 = a1[1];
  v16 = *a1;
  v17 = v10;
  v18 = *(a1 + 4);
  result = MEMORY[0x2383E21A0](&v14, v7);
  if ((v9 * v15) >> 64 == (v9 * v15) >> 63)
  {
    v12 = v8 + *(*(a2 - 8) + 72) * v9 * v15;
    OUTLINED_FUNCTION_2_125();
    sub_237EFA0D0();
    OUTLINED_FUNCTION_3_108();
    sub_237EFA0A0();
    v13 = OUTLINED_FUNCTION_2_125();
    MEMORY[0x2383E21A0](&v20, v7, v13);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void UnsafeMutableVectorPointer.update(repeating:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    OUTLINED_FUNCTION_4_100();
    for (i = 0; ; i = v11)
    {
      v10 = i <= v6;
      if (v5 > 0)
      {
        v10 = i >= v6;
      }

      if (v10)
      {
        break;
      }

      if (__OFADD__(i, v5))
      {
        v11 = ((i + v5) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v11 = i + v5;
      }

      (*(*(v4 - 8) + 24))(v7 + *(*(v4 - 8) + 72) * i, v8, v4);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t UnsafeMutableVectorPointer.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000022, 0x8000000237F02390);
  sub_237EF90D0();
  sub_237EF9CF0();
  MEMORY[0x2383E0710](0x3A746E756F63202CLL, 0xE900000000000020);
  v4 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v4);

  MEMORY[0x2383E0710](0x656469727473202CLL, 0xEA0000000000203ALL);
  v5 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v5);

  MEMORY[0x2383E0710](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_237EE845C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *OUTLINED_FUNCTION_3_110(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  v7 = *(*a1 + 152);
  v8 = *(*a1 + 128);
  v9 = *(*a1 + 136);
  if (a2)
  {
    v10 = *a1;
  }

  else
  {
    v10 = *a1 + 40;
  }

  v11 = *(v6 + 96);
  *v10 = *(v6 + 80);
  *(v10 + 16) = v11;
  v12 = *(v6 + 120);
  *(v10 + 32) = *(v6 + 112);

  return UnsafeMutableVectorPointer.subscript.setter(v10, v12, v8, v9, a5, v7);
}

uint64_t sub_237EE8574(uint64_t a1)
{
  v2 = sub_237EE8968();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237EE85B0(uint64_t a1)
{
  v2 = sub_237EE8968();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237EE85EC(uint64_t a1)
{
  v2 = sub_237EE89BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237EE8628(uint64_t a1)
{
  v2 = sub_237EE89BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237EE8664(uint64_t a1)
{
  v2 = sub_237EE8A10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237EE86A0(uint64_t a1)
{
  v2 = sub_237EE8A10();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_237EE8968()
{
  result = qword_27DEB71E0;
  if (!qword_27DEB71E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB71E0);
  }

  return result;
}

unint64_t sub_237EE89BC()
{
  result = qword_27DEB71E8;
  if (!qword_27DEB71E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB71E8);
  }

  return result;
}

unint64_t sub_237EE8A10()
{
  result = qword_27DEB71F0;
  if (!qword_27DEB71F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB71F0);
  }

  return result;
}

uint64_t MatrixLayout.init(from:)(unint64_t a1)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB71F8, &qword_237F20108);
  OUTLINED_FUNCTION_1();
  v39 = v2;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB7200, &qword_237F20110);
  OUTLINED_FUNCTION_1();
  v38 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB7208, &unk_237F20118);
  OUTLINED_FUNCTION_1();
  v40 = v12;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_237EE8968();
  v16 = v42;
  sub_237EFA190();
  if (v16)
  {
    goto LABEL_8;
  }

  v36 = v6;
  v37 = v10;
  v42 = a1;
  v17 = v41;
  v18 = sub_237EF9980();
  result = sub_237EE8FC0(v18, 0);
  if (v21 == v22 >> 1)
  {
LABEL_7:
    v27 = sub_237EF93E0();
    swift_allocError();
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20, &unk_237F07360);
    *v29 = &type metadata for MatrixLayout;
    sub_237EF98C0();
    sub_237EF93D0();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v40 + 8))(v15, v11);
    a1 = v42;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return a1;
  }

  v35 = 0;
  if (v21 < (v22 >> 1))
  {
    a1 = *(v20 + v21);
    sub_237CADB14(v21 + 1, v22 >> 1, result, v20, v21, v22);
    v24 = v23;
    v26 = v25;
    swift_unknownObjectRelease();
    if (v24 == v26 >> 1)
    {
      if (a1)
      {
        LODWORD(v38) = a1;
        v44 = 1;
        sub_237EE89BC();
        OUTLINED_FUNCTION_5_19(&type metadata for MatrixLayout.ColumnMajorCodingKeys, &v44);
        swift_unknownObjectRelease();
        (*(v39 + 8))(v5, v17);
        v31 = OUTLINED_FUNCTION_2_23();
        v32(v31);
        a1 = v38;
      }

      else
      {
        v43 = 0;
        sub_237EE8A10();
        v30 = v37;
        OUTLINED_FUNCTION_5_19(&type metadata for MatrixLayout.RowMajorCodingKeys, &v43);
        swift_unknownObjectRelease();
        (*(v38 + 8))(v30, v36);
        v33 = OUTLINED_FUNCTION_2_23();
        v34(v33);
      }

      __swift_destroy_boxed_opaque_existential_1(v42);
      return a1;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_237EE8F28(uint64_t a1)
{
  v2 = *v1;
  sub_237EFA120();
  MatrixLayout.hash(into:)(v4, v2);
  return sub_237EFA170();
}

uint64_t sub_237EE8F6C@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = MatrixLayout.init(from:)(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_237EE8FC0(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

unint64_t sub_237EE900C()
{
  result = qword_27DEB7210;
  if (!qword_27DEB7210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB7210);
  }

  return result;
}

_BYTE *sub_237EE9070(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237EE9170()
{
  result = qword_27DEB7218;
  if (!qword_27DEB7218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB7218);
  }

  return result;
}

unint64_t sub_237EE91C8()
{
  result = qword_27DEB7220;
  if (!qword_27DEB7220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB7220);
  }

  return result;
}

unint64_t sub_237EE9220()
{
  result = qword_27DEB7228;
  if (!qword_27DEB7228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB7228);
  }

  return result;
}

unint64_t sub_237EE9278()
{
  result = qword_27DEB7230;
  if (!qword_27DEB7230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB7230);
  }

  return result;
}

unint64_t sub_237EE92D0()
{
  result = qword_27DEB7238;
  if (!qword_27DEB7238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB7238);
  }

  return result;
}

unint64_t sub_237EE9328()
{
  result = qword_27DEB7240;
  if (!qword_27DEB7240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB7240);
  }

  return result;
}

unint64_t sub_237EE9380()
{
  result = qword_27DEB7248[0];
  if (!qword_27DEB7248[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB7248);
  }

  return result;
}

float sub_237EE93DC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t, void, uint64_t))
{
  a2(&var4, a1 + 32, *(a1 + 16), 1);
  if (!v2)
  {
    return *&var4;
  }

  return result;
}

double sub_237EE9424(uint64_t a1, void (*a2)(double *__return_ptr, uint64_t, void, uint64_t))
{
  a2(&v4, a1 + 32, *(a1 + 16), 1);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t DenseVector.count.getter(uint64_t a1)
{

  v1 = sub_237EF9510();

  return v1;
}

uint64_t DenseVector.withUnsafeVectorPointer<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a6;
  v11[5] = a1;
  v11[6] = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
  return sub_237CC8430(sub_237EE9CDC, v11, a3, a4, a5, v9, MEMORY[0x277D84950], &v12);
}

void (*DenseVector.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(unint64_t **a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  v7[3] = *(a3 + 16);
  OUTLINED_FUNCTION_1_1();
  *(v8 + 32) = v9;
  v11 = *(v10 + 64);
  v7[5] = __swift_coroFrameAllocStub(v11);
  v7[6] = __swift_coroFrameAllocStub(v11);
  _s13LinearAlgebra11DenseVectorV10_uncheckedxSi_tcig_0();
  return sub_237EE9708;
}

void sub_237EE9708(unint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  if (a2)
  {
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[1];
    v8 = *v2;
    (*(v6 + 16))((*a1)[5], v4, v5);
    DenseVector.subscript.setter(v3, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    DenseVector.subscript.setter((*a1)[6], *v2, v2[1]);
  }

  free(v4);
  free(v3);

  free(v2);
}

void (*sub_237EE97D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  OUTLINED_FUNCTION_2_129();
  OUTLINED_FUNCTION_1_1();
  *v5 = v6;
  v5[1] = v7;
  *(v4 + 16) = __swift_coroFrameAllocStub(*(v8 + 64));
  _s13LinearAlgebra11DenseVectorV10_uncheckedxSi_tcig_0();
  return sub_237C84DD4;
}

uint64_t DenseVector.init(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_1();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  (*(v6 + 16))(&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v10 = sub_237EF9560();
  (*(v6 + 8))(a1, a3);
  return v10;
}

uint64_t DenseVector.init(unsafeUninitializedCapacity:initializingWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[2] = a4;
  v6[3] = a5;
  v6[4] = a1;
  v6[5] = a2;
  v6[6] = a3;
  return sub_237CC78A4(a1, sub_237EEB610, v6, a4);
}

uint64_t DenseVector.storage.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t DenseVector.init<A>(scalars:)()
{
  OUTLINED_FUNCTION_2_129();
  OUTLINED_FUNCTION_1_1();
  v3 = v2;
  v5 = MEMORY[0x28223BE20](v4);
  (*(v3 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v5);
  OUTLINED_FUNCTION_3_111();
  v7 = sub_237EF8A90();
  (*(v3 + 8))(v1, v0);
  return v7;
}

uint64_t sub_237EE9AE8(uint64_t *a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t *), uint64_t a5, uint64_t a6)
{
  *a2 = a3;
  v13[0] = UnsafeMutableVectorPointer.init(_:)(*a1, a1[1], a6);
  v13[1] = v9;
  v13[2] = v10;
  result = a4(v13);
  if (!v6)
  {
    result = sub_237EF9160();
    *a1 = result;
    a1[1] = v12;
  }

  return result;
}

uint64_t DenseVector.init(arrayLiteral:)(uint64_t a1, uint64_t a2)
{
  sub_237EF8A60();
  swift_getWitnessTable();
  return sub_237EF8A90();
}

uint64_t sub_237EE9C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = DenseVector.init(arrayLiteral:)(a1, *(a2 + 16));
  *a3 = result;
  return result;
}

uint64_t sub_237EE9C50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  result = sub_237EF8530();
  if (result)
  {
    UnsafeVectorPointer.init(start:count:stride:)();
    result = a3();
    if (v8)
    {
      *a8 = v8;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *DenseVector.withUnsafeMutableVectorPointer<A>(_:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 + 16);
  sub_237EF9580();
  sub_237EF94D0();
  v10 = *(*v4 + 16);
  v11 = *v4 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80));
  v14[0] = v11;
  v14[1] = v10;
  sub_237EE9E24(v14, a1, a2, v9, a4, *(a3 + 24), &v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
  return sub_237CC94F0(v14, v11, v10, v4, v9);
}

uint64_t sub_237EE9E24(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  result = sub_237EF9140();
  if (result)
  {
    UnsafeMutableVectorPointer.init(start:count:stride:)();
    result = a2();
    if (v7)
    {
      *a7 = v7;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237EE9EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_2_129();
  v15 = v9;
  v16 = v10;
  v13 = v5;
  KeyPath = swift_getKeyPath();
  DenseVector.withUnsafeVectorPointer<A>(_:)(a5, &v12, v7, v6, v6, v5);
}

Swift::Void __swiftcall DenseVector.negate()()
{
  v2 = v1;
  v3 = *(v0 + 16);
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v15 - v10;
  v12 = DenseVector.count.getter(*v1);
  if (v12 < 0)
  {
    __break(1u);
  }

  else if (v12)
  {
    v13 = 0;
    v15[1] = v5 + 40;
    v15[2] = v5 + 8;
    v16 = v12;
    do
    {
      _s13LinearAlgebra11DenseVectorV10_uncheckedxSi_tcig_0();
      sub_237EF9410();
      (*(v5 + 8))(v8, v3);
      sub_237EF9580();
      sub_237EF94D0();
      v14 = *v2;
      sub_237E6A31C(v13, *v2);
      (*(v5 + 40))(v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v11, v3);
      nullsub_1();
      ++v13;
    }

    while (v16 != v13);
  }
}

uint64_t static DenseVector.- prefix(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = DenseVector.count.getter(a1);
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a1;
  return DenseVector.init(unsafeUninitializedCapacity:initializingWith:)(v6, sub_237EEB68C, v8, a2, a3);
}

void sub_237EEA1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a4;
  v18 = a2;
  v5 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = v9[1];
  if (v12 < 0)
  {
LABEL_8:
    __break(1u);
    return;
  }

  if (v12)
  {
    v13 = 0;
    v17 = *v9;
    v14 = v9[2];
    while (1)
    {
      _s13LinearAlgebra11DenseVectorV10_uncheckedxSi_tcig_0();
      sub_237EF9410();
      (*(v5 + 8))(v7, a3);
      v15 = v13 * v14;
      if ((v13 * v14) >> 64 != (v13 * v14) >> 63)
      {
        break;
      }

      ++v13;
      (*(v5 + 40))(v17 + *(v5 + 72) * v15, v11, a3);
      if (v12 == v13)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_8;
  }
}

uint64_t sub_237EEA390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a6;
  v15 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237EEA4BC(v18, v19);
  UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(a1, a2, a3, v17, a4, a5, v23, a7, a8, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
  return (*(v15 + 8))(v17, a7);
}

uint64_t sub_237EEA4BC(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  return sub_237EF9CE0();
}

uint64_t sub_237EEA610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[2] = a5;
  v8[3] = a6;
  v8[4] = a1;
  v8[5] = a2;
  v8[6] = a3;
  return DenseVector.withUnsafeVectorPointer<A>(_:)(a7, v8, a4, a5, MEMORY[0x277D84F78] + 8, a6);
}

uint64_t sub_237EEA65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a5;
  v22 = a6;
  v19 = a3;
  v20 = a4;
  v18 = a2;
  v11 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  sub_237EF9CE0();
  UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(a1, v18, v19, v13, v20, v21, v22, a7, a8, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
  return (*(v11 + 8))(v13, a7);
}

uint64_t sub_237EEA904(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 < 0)
  {
LABEL_8:
    __break(1u);
    return v9;
  }

  if (a2)
  {
    v8 = 0;
    while ((v8 * a3) >> 64 == (v8 * a3) >> 63)
    {
      ++v8;
      v9 = sub_237EF8D40();
      if (a2 == v8)
      {
        return v9;
      }
    }

    __break(1u);
    goto LABEL_8;
  }

  return v9;
}

void static DenseVector.* infix(_:_:)(uint64_t a1)
{

  OUTLINED_FUNCTION_3_111();
  static DenseVector.*= infix(_:_:)(v1, v2, v3, v4);
}

uint64_t static DenseVector.* infix(_:_:)(uint64_t a1, uint64_t a2)
{

  OUTLINED_FUNCTION_3_111();
  static DenseVector.*= infix(_:_:)(v2, v3, v4, v5);
  return a2;
}

uint64_t static DenseVector./ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - v14;
  v19 = a1;
  swift_getAssociatedConformanceWitness();

  sub_237EF9FA0();
  sub_237EF9CE0();
  sub_237EF8330();
  v16 = *(v9 + 8);
  v16(v12, a3);
  static DenseVector.*= infix(_:_:)(&v19, v15, a3, a4);
  v16(v15, a3);
  return v19;
}

uint64_t static DenseVector<>.*= infix(_:_:)(uint64_t *a1, float a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E643B4(v4, v5, v6, v7);
    v4 = v8;
  }

  result = UnsafeMutableVectorPointer<A>.multiply(by:)(v4 + 32, *(v4 + 16), 1, a2);
  *a1 = v4;
  return result;
}

uint64_t static DenseVector<>.* infix(_:_:)(uint64_t a1, float a2)
{

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E643B4(a1, v4, v5, v6);
    a1 = v7;
  }

  v8 = OUTLINED_FUNCTION_5_100();
  UnsafeMutableVectorPointer<A>.multiply(by:)(v8, v9, 1, a2);
  return a1;
}

{

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E643B4(a1, v4, v5, v6);
    a1 = v7;
  }

  v8 = OUTLINED_FUNCTION_5_100();
  UnsafeMutableVectorPointer<A>.multiply(by:)(v8, v9, 1, a2);
  return a1;
}

uint64_t static DenseVector<>./ infix(_:_:)(uint64_t a1, float a2)
{

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E643B4(a1, v4, v5, v6);
    a1 = v7;
  }

  UnsafeMutableVectorPointer<A>.multiply(by:)(a1 + 32, *(a1 + 16), 1, 1.0 / a2);
  return a1;
}

uint64_t static DenseVector<>.*= infix(_:_:)(uint64_t *a1, double a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E643FC(v4, v5, v6, v7);
    v4 = v8;
  }

  result = UnsafeMutableVectorPointer<A>.multiply(by:)(v4 + 32, *(v4 + 16), 1, a2);
  *a1 = v4;
  return result;
}

uint64_t static DenseVector<>.* infix(_:_:)(uint64_t a1, double a2)
{

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E643FC(a1, v4, v5, v6);
    a1 = v7;
  }

  v8 = OUTLINED_FUNCTION_5_100();
  UnsafeMutableVectorPointer<A>.multiply(by:)(v8, v9, 1, a2);
  return a1;
}

{

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E643FC(a1, v4, v5, v6);
    a1 = v7;
  }

  v8 = OUTLINED_FUNCTION_5_100();
  UnsafeMutableVectorPointer<A>.multiply(by:)(v8, v9, 1, a2);
  return a1;
}

uint64_t static DenseVector<>./ infix(_:_:)(uint64_t a1, double a2)
{

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E643FC(a1, v4, v5, v6);
    a1 = v7;
  }

  UnsafeMutableVectorPointer<A>.multiply(by:)(a1 + 32, *(a1 + 16), 1, 1.0 / a2);
  return a1;
}

uint64_t sub_237EEAF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[2] = a5;
  v7[3] = a6;
  v7[4] = a1;
  v7[5] = a2;
  v7[6] = a3;
  return DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237EEB7D0, v7, a4, a5, a5, a6);
}

uint64_t sub_237EEAFE4@<X0>(uint64_t a1@<X0>, void (**a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v50 = a6;
  v43 = a5;
  v41 = a4;
  v63 = a3;
  v44 = a2;
  v42 = a1;
  v12 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v48 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v47 = &v40 - v15;
  MEMORY[0x28223BE20](v16);
  v46 = &v40 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = sub_237EF90F0();
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v40 - v20;
  v45 = *(*(*(a8 + 16) + 16) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_237EF9FB0();
  v49 = a9;
  sub_237EF9D20();
  v59 = v41;
  v60 = v43;
  v61 = v50;
  v51 = v42;
  *&v52 = v44;
  *(&v52 + 1) = v63;
  v25 = type metadata accessor for UnsafeVectorPointer(0, a7, v23, v24);
  WitnessTable = swift_getWitnessTable();
  sub_237EFA000();
  v50 = WitnessTable;
  v51 = v55;
  v52 = v56;
  v53 = v57;
  v54 = v58;
  v59 = v25;
  v60 = v25;
  v63 = v25;
  v61 = WitnessTable;
  v62 = WitnessTable;
  sub_237EF9380();
  sub_237EF9350();
  v44 = (v12 + 32);
  v27 = (v12 + 8);
  while (1)
  {
    v55 = v63;
    *&v56 = v63;
    *(&v56 + 1) = v50;
    v57 = v50;
    sub_237EF9370();
    sub_237EF9360();
    result = __swift_getEnumTagSinglePayload(v21, 1, TupleTypeMetadata2);
    if (result == 1)
    {
      break;
    }

    v29 = *(TupleTypeMetadata2 + 48);
    v30 = TupleTypeMetadata2;
    v31 = *v44;
    v32 = v46;
    (*v44)(v46, v21, a7);
    v33 = &v21[v29];
    v34 = v21;
    v35 = v47;
    v31(v47, v33, a7);
    v36 = v48;
    sub_237EF8D30();
    sub_237EF9770();
    v37 = *v27;
    v38 = v36;
    TupleTypeMetadata2 = v30;
    (*v27)(v38, a7);
    v39 = v35;
    v21 = v34;
    v37(v39, a7);
    v37(v32, a7);
  }

  return result;
}

float sub_237EEB4A4@<S0>(vDSP_Stride __IA@<X2>, const float *a2@<X0>, vDSP_Length a3@<X1>, uint64_t a4@<X3>, float *a5@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = *(a4 + 16);
  __C = 0.0;
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  if (v6 >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = v6;
  }

  vDSP_dotpr(a2, __IA, (a4 + 32), 1, &__C, v7);
  result = __C;
  *a5 = __C;
  return result;
}

double sub_237EEB57C@<D0>(vDSP_Stride __IA@<X2>, const double *a2@<X0>, vDSP_Length a3@<X1>, uint64_t a4@<X3>, double *a5@<X8>)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v6 = *(a4 + 16);
  v9[0] = 0.0;
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  if (v6 >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = v6;
  }

  vDSP_dotprD(a2, __IA, (a4 + 32), 1, v9, v7);
  result = v9[0];
  *a5 = v9[0];
  return result;
}

uint64_t sub_237EEB794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t SparseMatrix.indexed()@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[3];
  v14 = v2[4];
  v5 = v14;
  v15 = v4;
  v13 = v2[5];
  v6 = v13;
  v7 = *v2;
  v8 = v2[1];
  v9 = v2[2] & 1;
  sub_237C6FDA0(&v15, v12, &qword_27DEAD350, &unk_237F07040);
  sub_237C6FDA0(&v14, v12, &qword_27DEAED98, &unk_237F07390);
  sub_237EF9580();
  OUTLINED_FUNCTION_4();
  result = (*(v10 + 16))(v12, &v13);
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 17) = v12[0];
  *(a2 + 20) = *(v12 + 3);
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  return result;
}

__n128 SparseMatrix.IndexedSequence.init(base:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 16) = v2 & 1;
  result = *(a1 + 24);
  *(a2 + 24) = result;
  *(a2 + 40) = v3;
  return result;
}

double SparseMatrix.Transpose.indexed()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SparseMatrix(0, *(a1 + 16), *(a1 + 24), a4);
  v4 = SparseMatrix.indexed()(v15);
  *&result = OUTLINED_FUNCTION_0_115(v4, v5, v6, v7, v8, v9, v10, v11, v12, v15[0], v15[1], v13).n128_u64[0];
  return result;
}

double SparseMatrix.IndexedSequence.base.getter@<D0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_130(a1);
  sub_237EF8260();

  return result;
}

double SparseMatrix.IndexedSequence.makeIterator()@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>, uint64_t a3@<X3>)
{
  v5 = *v3;
  v6 = v3[2];
  v16 = v3[1];
  v17 = v6;
  v19 = v6;
  v20 = *(&v16 + 1);
  v15 = v5;
  v18 = *(&v6 + 1);
  SparseMatrix.IndexedSequence.Iterator.init(base:)(&v15, *(a1 + 16), *(a1 + 24), v12, a3);
  sub_237C6FDA0(&v20, v11, &qword_27DEAD350, &unk_237F07040);
  sub_237C6FDA0(&v19, v11, &qword_27DEAED98, &unk_237F07390);
  sub_237EF9580();
  OUTLINED_FUNCTION_4();
  (*(v7 + 16))(v11, &v18);
  v8 = v12[1];
  *a2 = v12[0];
  a2[1] = v8;
  result = *&v13;
  v10 = v14;
  a2[2] = v13;
  a2[3] = v10;
  return result;
}

void SparseMatrix.IndexedSequence.Iterator.init(base:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v6 = *(a1 + 24);
  v22 = *a1;
  v23 = *(a1 + 16);
  type metadata accessor for SparseMatrix(0, a2, a3, a5);
  v7 = SparseMatrix.majorCount.getter();
  v17 = (v6 + 40);
  v18 = -1;
  v19 = v7 & ~(v7 >> 63);
  while (1)
  {
    if (!v19)
    {
LABEL_5:
      OUTLINED_FUNCTION_0_115(v7, v8, v9, v10, v11, v12, v13, v14, v15, v22, v23, v16);
      *(a4 + 48) = v21;
      *(a4 + 56) = 0;
      return;
    }

    if ((v18 + 2) >= *(v6 + 16))
    {
      break;
    }

    v20 = *v17++;
    --v19;
    ++v18;
    if (v20 >= 1)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

double sub_237EEBC18@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>, uint64_t a3@<X3>)
{
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  SparseMatrix.IndexedSequence.makeIterator()(a1, v12, a3);
  v17 = v5;
  sub_237C65484(&v17, &qword_27DEAD350, &unk_237F07040);
  v16 = v6;
  sub_237C65484(&v16, &qword_27DEAED98, &unk_237F07390);
  v15 = v7;
  v8 = sub_237EF9580();
  (*(*(v8 - 8) + 8))(&v15, v8);
  v9 = v12[1];
  *a2 = v12[0];
  a2[1] = v9;
  result = *&v13;
  v11 = v14;
  a2[2] = v13;
  a2[3] = v11;
  return result;
}

double SparseMatrix.IndexedSequence.Iterator.base.getter@<D0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_130(a1);
  sub_237EF8260();

  return result;
}

void SparseMatrix.IndexedSequence.Iterator.next()(uint64_t a2@<X8>)
{
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  MEMORY[0x28223BE20](TupleTypeMetadata3);
  v6 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = (&v37 - v10);
  v12 = v2[6];
  if (v2[2])
  {
    v13 = v2[1];
    if (v12 < v13)
    {
      v14 = v2[7];
      if ((v14 & 0x8000000000000000) == 0)
      {
        v39 = v9;
        v15 = v2[4];
        if (v14 >= *(v15 + 16))
        {
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v38 = a2;
        *v6 = *(v15 + 4 * v14 + 32);
        v6[1] = v12;
        v40 = v8;
        v16 = _s13LinearAlgebra11DenseVectorV10_uncheckedxSi_tcig_0();
        v17 = v14 + 1;
        v2[7] = v17;
        v18 = v2[3];
        v41 = *v2;
        v42 = v13;
        v43 = 1;
        OUTLINED_FUNCTION_3_112(v16, v19, v20, v21);
        v22 = SparseMatrix.majorCount.getter();
        for (i = v12; ; ++i)
        {
          if (i >= v22)
          {
LABEL_23:
            v36 = v38;
            (*(v39 + 32))(v38, v6, v15);
            goto LABEL_25;
          }

          if (v12 < -1)
          {
            break;
          }

          if ((i + 1) >= *(v18 + 16))
          {
            goto LABEL_28;
          }

          if (v17 < *(v18 + 40 + 8 * i))
          {
            goto LABEL_23;
          }

          v2[6] = i + 1;
        }

        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
      }

      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    goto LABEL_20;
  }

  v24 = *v2;
  if (v12 >= *v2)
  {
LABEL_20:

    __swift_storeEnumTagSinglePayload(a2, 1, 1, v8);
    return;
  }

  v25 = v2[7];
  if ((v25 & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

  v39 = v9;
  v15 = v2[4];
  if (v25 >= *(v15 + 16))
  {
LABEL_33:
    __break(1u);
    return;
  }

  v38 = a2;
  v26 = *(v15 + 4 * v25 + 32);
  *v11 = v12;
  v11[1] = v26;
  v40 = v8;
  v27 = _s13LinearAlgebra11DenseVectorV10_uncheckedxSi_tcig_0();
  v28 = v25 + 1;
  v2[7] = v28;
  v29 = v2[1];
  v30 = v2[3];
  v41 = v24;
  v42 = v29;
  v43 = 0;
  OUTLINED_FUNCTION_3_112(v27, v31, v32, v33);
  v34 = SparseMatrix.majorCount.getter();
  for (j = v12; j < v34; ++j)
  {
    if (v12 < -1)
    {
      goto LABEL_27;
    }

    if ((j + 1) >= *(v30 + 16))
    {
      goto LABEL_29;
    }

    if (v28 < *(v30 + 40 + 8 * j))
    {
      break;
    }

    v2[6] = j + 1;
  }

  v36 = v38;
  (*(v39 + 32))(v38, v11, v15);
LABEL_25:
  __swift_storeEnumTagSinglePayload(v36, 0, 1, v15);
}

uint64_t sub_237EEC0EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237EEC140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double sub_237EEC194(uint64_t a1)
{
  v1 = SparseMatrix.indexed()(v12);
  *&result = OUTLINED_FUNCTION_0_115(v1, v2, v3, v4, v5, v6, v7, v8, v9, v12[0], v12[1], v10).n128_u64[0];
  return result;
}

double sub_237EEC1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4.n128_f64[0] = SparseMatrix.Transpose.indexed()(a1, a2, a3, a4);
  *&result = OUTLINED_FUNCTION_0_115(v5, v6, v7, v8, v9, v10, v11, v12, v4, v15, v16, v13).n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_0_115(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, __int128 a9, __int128 a10, __n128 a12)
{
  *v12 = a9;
  v12[1] = a10;
  result = a12;
  v12[2] = a12;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_130@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

  return sub_237EF8260();
}

uint64_t OUTLINED_FUNCTION_3_112(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v9 - 104) = v4;
  *(v9 - 96) = v6;
  *(v9 - 88) = v8;
  v11 = *(v7 + 24);

  return type metadata accessor for SparseMatrix(0, v5, v11, a4);
}

uint64_t SparseMatrix.majorCount.getter()
{
  v1 = 8;
  if (!*(v0 + 16))
  {
    v1 = 0;
  }

  return *(v0 + v1);
}

uint64_t SparseMatrix.minorCount.getter()
{
  v1 = 8;
  if (*(v0 + 16))
  {
    v1 = 0;
  }

  return *(v0 + v1);
}

uint64_t SparseMatrix.majorStarts.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t SparseMatrix.minorIndices.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t SparseMatrix.storage.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t SparseMatrix.nonZeroValues.getter(uint64_t a1)
{
  sub_237EF9580();

  swift_getWitnessTable();
  return sub_237EF8A90();
}

uint64_t SparseMatrix.count.getter()
{
  v1 = v0[1];
  result = *v0 * v1;
  if ((*v0 * v1) >> 64 != result >> 63)
  {
    __break(1u);
  }

  return result;
}

double SparseMatrix.init(rowCount:columnCount:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  SparseMatrix.init(rowCount:columnCount:layout:)(a1, a2, 0, a3);
  *a4 = v6;
  a4[1] = v7;
  result = *&v8;
  a4[2] = v8;
  return result;
}

void SparseMatrix.init(rowCount:columnCount:layout:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  OUTLINED_FUNCTION_8_93();
  v9 = v8;
  if (v10)
  {
    v11 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v11 = v5 + 1;
  if (!__OFADD__(v5, 1))
  {
LABEL_6:
    v12 = sub_237EEDE20(0, v11);
    v13 = sub_237EF89A0();
    v14 = MEMORY[0x2383E1570](v13, a4);
    *v9 = v5;
    *(v9 + 8) = v4;
    *(v9 + 16) = a3 & 1;
    v15 = MEMORY[0x277D84F90];
    *(v9 + 24) = v12;
    *(v9 + 32) = v15;
    *(v9 + 40) = v14;
    return;
  }

  __break(1u);
}

uint64_t SparseMatrix.init(rowCount:columnCount:columnStarts:rowIndices:values:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X0>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>)
{
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else if (*(a2 + 16) == a1 + 1)
  {
    OUTLINED_FUNCTION_3_113(a4, a1, a2, a5, a6, a7);
    v12 = OUTLINED_FUNCTION_9_36();
    result = OUTLINED_FUNCTION_10_72(v12, v13, v14, v15);
    *a3 = v9;
    *(a3 + 8) = v8;
    *(a3 + 16) = 1;
    *(a3 + 24) = a2;
    *(a3 + 32) = v7;
    *(a3 + 40) = result;
    return result;
  }

  result = sub_237EF9740("Fatal error", 11, 2, 0xD000000000000043, 0x8000000237F023F0, "LinearAlgebra/SparseMatrix.swift", 32, 2, 102);
  __break(1u);
  return result;
}

uint64_t SparseMatrix.init(rowCount:columnCount:rowStarts:columnIndices:values:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X1>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>)
{
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else if (*(a2 + 16) == a1 + 1)
  {
    OUTLINED_FUNCTION_3_113(a1, a4, a2, a5, a6, a7);
    v12 = OUTLINED_FUNCTION_9_36();
    result = OUTLINED_FUNCTION_10_72(v12, v13, v14, v15);
    *a3 = v9;
    *(a3 + 8) = v8;
    *(a3 + 16) = 0;
    *(a3 + 24) = a2;
    *(a3 + 32) = v7;
    *(a3 + 40) = result;
    return result;
  }

  result = sub_237EF9740("Fatal error", 11, 2, 0xD00000000000003DLL, 0x8000000237F02440, "LinearAlgebra/SparseMatrix.swift", 32, 2, 123);
  __break(1u);
  return result;
}

Swift::Void __swiftcall SparseMatrix.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  sub_237EEC744(keepingCapacity);
  v5 = (v1 + 8);
  if ((*(v1 + 16) & 1) == 0)
  {
    v5 = v1;
  }

  v6 = *v5;
  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else if ((v7 & 0x8000000000000000) == 0)
  {
    sub_237EEC904(v7, 0, v3, v4);
    sub_237EEC824(keepingCapacity);
    sub_237EF9580();
    sub_237EF9550();
    return;
  }

  __break(1u);
}

unint64_t sub_237EEC744(char a1)
{
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = *v1;
    if (isUniquelyReferenced_nonNull_native)
    {
      v4 = *(v3 + 16);

      return sub_237EEDBD4(0, v4);
    }

    else
    {
      if (*(v3 + 24) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
        v6 = swift_allocObject();
        v7 = _swift_stdlib_malloc_size(v6);
        v6[2] = 0;
        v6[3] = 2 * ((v7 - 32) / 8);
      }

      else
      {
        v6 = MEMORY[0x277D84F90];
      }

      *v1 = v6;
    }
  }

  else
  {

    *v1 = MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_237EEC824(char a1)
{
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = *v1;
    if (isUniquelyReferenced_nonNull_native)
    {
      v4 = *(v3 + 16);

      return sub_237EEDB04(0, v4);
    }

    else
    {
      if (*(v3 + 24) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD398, &unk_237F0B050);
        v6 = swift_allocObject();
        v7 = _swift_stdlib_malloc_size(v6);
        v6[2] = 0;
        v6[3] = 2 * ((v7 - 32) / 4);
      }

      else
      {
        v6 = MEMORY[0x277D84F90];
      }

      *v1 = v6;
    }
  }

  else
  {

    *v1 = MEMORY[0x277D84F90];
  }

  return result;
}

void *sub_237EEC904(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(*v5 + 16);
  v8 = __OFADD__(v7, a1);
  result = (v7 + a1);
  if (v8)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v4 = a2;
  result = sub_237EEDD68(result, 1, sub_237EEF2D8);
  a4 = *v5;
  v10 = *(*v5 + 16);
  v7 = (*(*v5 + 24) >> 1) - v10;
  if (v7)
  {
    v11 = 0;
    v12 = &a4[v10];
    v13 = (*(*v5 + 24) >> 1) - v10;
    v14 = v12 + 4;
    do
    {
      if ((v7 & ~(v7 >> 63)) == v11)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (a1 == v11)
      {
        v13 = a1;
        goto LABEL_13;
      }

      if ((a1 & ~(a1 >> 63)) == v11)
      {
        goto LABEL_19;
      }

      v14[v11++] = v4;
    }

    while (v7 != v11);
    if (v7 < a1)
    {
      goto LABEL_21;
    }

LABEL_13:
    if (v13 <= 0)
    {
      goto LABEL_16;
    }

    v15 = a4[2];
    v8 = __OFADD__(v15, v13);
    v16 = v15 + v13;
    if (!v8)
    {
      a4[2] = v16;
      goto LABEL_16;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (a1 > 0)
  {
    goto LABEL_21;
  }

  v13 = 0;
LABEL_16:
  if (v13 != v7)
  {
    goto LABEL_17;
  }

LABEL_22:
  if (v7 == a1)
  {
LABEL_17:
    *v5 = a4;
    return result;
  }

  if (v7 < a1)
  {
    v17 = a4[2];
    v18 = v7 + 1;
LABEL_25:
    v19 = a4[3];
    v20 = v19 >> 1;
    if ((v19 >> 1) < v17 + 1)
    {
      v22 = v18;
      v23 = v17;
      result = sub_237EEF2D8((v19 > 1), v17 + 1, 1, a4);
      v18 = v22;
      v17 = v23;
      a4 = result;
      v20 = result[3] >> 1;
    }

    for (i = v18; ; ++i)
    {
      if (v17 >= v20)
      {
        a4[2] = v17;
        v18 = i;
        goto LABEL_25;
      }

      a4[v17 + 4] = v4;
      if (a1 == i)
      {
        break;
      }

      if (v18 < 0 || i >= a1)
      {
        goto LABEL_36;
      }

      ++v17;
    }

    a4[2] = v17 + 1;
    goto LABEL_17;
  }

LABEL_37:
  __break(1u);
  return result;
}

void SparseMatrix.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_37_0();
  v22 = v21;
  v24 = v23;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  if (*(v20 + 16))
  {
    v26 = v24;
  }

  else
  {
    v26 = v22;
  }

  if (*(v20 + 16))
  {
    v27 = v22;
  }

  else
  {
    v27 = v24;
  }

  if ((v27 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v28 = *(v20 + 24);
  v29 = *(v28 + 16);
  if (v27 >= v29)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v27 + 1 >= v29)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v30 = v28 + 32;
  v31 = *(v30 + 8 * v27);
  v32 = *(v30 + 8 * (v27 + 1));
  if (v31 == v32)
  {
LABEL_15:
    swift_getAssociatedConformanceWitness();
    sub_237EF9FB0();
    sub_237EF9D20();
    OUTLINED_FUNCTION_38_0();
    return;
  }

  if (v32 < v31)
  {
    goto LABEL_22;
  }

  v33 = sub_237D69B04(v31, v32, *(v20 + 32));
  if (v26 < 0xFFFFFFFF80000000)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v26 > 0x7FFFFFFF)
  {
LABEL_24:
    __break(1u);
    return;
  }

  sub_237EECCA4(v26, v33, v34, v35, v36);
  v38 = v37;
  swift_unknownObjectRelease();
  if (v38)
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38_0();

  _s13LinearAlgebra11DenseVectorV10_uncheckedxSi_tcig_0();
}

uint64_t sub_237EECCA4(uint64_t result, uint64_t a2, uint64_t a3, int64_t a4, unint64_t a5)
{
  v5 = a5 >> 1;
  while (1)
  {
    if (v5 == a4)
    {
      return 0;
    }

    if (a4 >= v5)
    {
      break;
    }

    if (*(a3 + 4 * a4) == result)
    {
      return a4;
    }

    ++a4;
  }

  __break(1u);
  return result;
}

void SparseMatrix.subscript.setter()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v4 = v3;
  v6 = *(v5 + 16);
  OUTLINED_FUNCTION_1_1();
  v45 = v8;
  v46 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  if (*(v0 + 16))
  {
    v13 = v4;
  }

  else
  {
    v13 = v2;
  }

  v44 = v13;
  if (*(v0 + 16))
  {
    v14 = v2;
  }

  else
  {
    v14 = v4;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v15 = *(v0 + 24);
  v16 = *(v15 + 16);
  if (v14 >= v16)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v14 + 1 >= v16)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v47 = v0;
  v17 = *(v15 + 32 + 8 * v14);
  v18 = *(v15 + 32 + 8 * (v14 + 1));
  if (v17 != v18)
  {
    if (v18 < v17)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v24 = *(v47 + 32);
    v28 = sub_237D69B04(*(v15 + 32 + 8 * v14), v18, v24);
    if (v44 < 0xFFFFFFFF80000000)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v44 > 0x7FFFFFFF)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v41 = v18;
    v42 = sub_237EECCA4(v44, v28, v25, v26, v27);
    v43 = v29;
    swift_unknownObjectRelease();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_13_60(&unk_237F07D78, v31, v32, AssociatedConformanceWitness);
    OUTLINED_FUNCTION_6_85();
    v33 = sub_237EF8520();
    v34 = *(v45 + 8);
    v34(v11, v6);
    if (v43)
    {
      if ((v33 & 1) == 0)
      {
        sub_237D69B04(v17, v41, v24);
        v38 = v37 >> 1;
        while (1)
        {
          if (v38 == v36)
          {
            v40 = v41;
LABEL_30:
            swift_unknownObjectRelease();
            SparseMatrix.insert(index:major:minor:value:)(v40, v14, v44, v46);
            goto LABEL_31;
          }

          if (v36 >= v38)
          {
            break;
          }

          if (*(v35 + 4 * v36) > v44)
          {
            v40 = v36;
            goto LABEL_30;
          }

          ++v36;
        }

        __break(1u);
        goto LABEL_34;
      }
    }

    else
    {
      if ((v33 & 1) == 0)
      {
        sub_237EF9580();
        sub_237EF94D0();
        v39 = *(v47 + 40);
        sub_237E6A31C(v42, v39);
        (*(v45 + 40))(v39 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v42, v46, v6);
        nullsub_1();
        goto LABEL_32;
      }

      SparseMatrix.remove(index:major:)(v42, v14);
    }

LABEL_31:
    v34(v46, v6);
    goto LABEL_32;
  }

  v19 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_13_60(&unk_237F07D78, v20, v21, v19);
  OUTLINED_FUNCTION_6_85();
  v22 = sub_237EF8520();
  v23 = *(v45 + 8);
  v23(v11, v6);
  if (v22)
  {
LABEL_14:
    v23(v46, v6);
LABEL_32:
    OUTLINED_FUNCTION_38_0();
    return;
  }

  if (v14 < *(v15 + 16))
  {
    SparseMatrix.insert(index:major:minor:value:)(*(v15 + 32 + 8 * v14), v14, v44, v46);
    goto LABEL_14;
  }

LABEL_40:
  __break(1u);
}

void SparseMatrix.insert(index:major:minor:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  OUTLINED_FUNCTION_8_93();
  v10 = *(v9 + 16);
  OUTLINED_FUNCTION_1_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  if (v15 < 0xFFFFFFFF80000000)
  {
    goto LABEL_21;
  }

  if (v15 > 0x7FFFFFFF)
  {
    goto LABEL_22;
  }

  v4 += 32;
  if (*(*(v7 + 32) + 16) < v6)
  {
    goto LABEL_23;
  }

  if (v6 < 0)
  {
    goto LABEL_24;
  }

  sub_237EEDCB8(v6, v6, v15);
  (*(v12 + 16))(v19, a4, v10);
  sub_237EF9580();
  v4 = v7 + 40;
  sub_237EF9530();
  v10 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    goto LABEL_25;
  }

  v4 = *(v7 + 24);
  v6 = *(v4 + 16);
  if (v6 < v10)
  {
    goto LABEL_26;
  }

  if (v10 != v6)
  {
    if (v10 >= v6)
    {
      goto LABEL_27;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_28;
    }

    if (v10 < 0)
    {
LABEL_29:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v20 = *(v4 + 16);
        if (v10 >= v20 || v6 - 1 >= v20)
        {
          break;
        }

        OUTLINED_FUNCTION_9_73();
        while (1)
        {
          v24 = *(v4 + v23);
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            break;
          }

          *(v4 + v23) = v26;
          v23 += 8;
          if (!--v22)
          {
            *(v7 + 24) = v4;
            return;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        sub_237E641B8(v4, v14, v15, v16);
        v4 = v27;
        if (v10 < 0)
        {
          goto LABEL_29;
        }
      }
    }

    __break(1u);
  }
}

Swift::Void __swiftcall SparseMatrix.remove(index:major:)(Swift::Int index, Swift::Int major)
{
  v5 = v2;
  OUTLINED_FUNCTION_8_93();
  v7 = *(v6 + 16);
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  sub_237EED5F0(v14);
  sub_237EF9580();
  v15 = v2 + 40;
  sub_237EF9540();
  (*(v9 + 8))(v13, v7);
  v19 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    goto LABEL_17;
  }

  v15 = *(v5 + 24);
  v4 = *(v15 + 16);
  if (v4 < v19)
  {
    goto LABEL_18;
  }

  if (v19 != v4)
  {
    if (v19 >= v4)
    {
      goto LABEL_19;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_20;
    }

    if (v19 < 0)
    {
LABEL_21:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v20 = *(v15 + 16);
        if (v19 >= v20 || v4 - 1 >= v20)
        {
          break;
        }

        OUTLINED_FUNCTION_9_73();
        while (1)
        {
          v24 = *(v15 + v23);
          v25 = __OFSUB__(v24, 1);
          v26 = v24 - 1;
          if (v25)
          {
            break;
          }

          *(v15 + v23) = v26;
          v23 += 8;
          if (!--v22)
          {
            *(v5 + 24) = v15;
            return;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        sub_237E641B8(v15, v16, v17, v18);
        v15 = v27;
        if (v19 < 0)
        {
          goto LABEL_21;
        }
      }
    }

    __break(1u);
  }
}

void sub_237EED54C()
{
  OUTLINED_FUNCTION_37_0();
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 104);
  if (v4)
  {
    v5 = *(v1 + 80);
    v6 = *(v1 + 88);
    v7 = OUTLINED_FUNCTION_4_102();
    v8(v7);
    OUTLINED_FUNCTION_12_64();
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    SparseMatrix.subscript.setter();
  }

  free(v3);
  free(v2);
  OUTLINED_FUNCTION_38_0();

  free(v9);
}

void sub_237EED5F0(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237EEDDE0();
    v3 = v6;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    sub_237C5EE9C((v3 + 4 * a1 + 36), v4 - 1 - a1, (v3 + 4 * a1 + 32));
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

double SparseMatrix.transposed()@<D0>(_OWORD *a2@<X8>)
{
  v4 = v2[3];
  v12 = v2[4];
  v13 = v4;
  v11 = v2[5];
  SparseMatrix.Transpose.init(base:)(v2, v9);
  sub_237C6FDA0(&v13, &v8, &qword_27DEAD350, &unk_237F07040);
  sub_237C6FDA0(&v12, &v8, &qword_27DEAED98, &unk_237F07390);
  sub_237EF9580();
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(&v8, &v11);
  v6 = v9[1];
  *a2 = v9[0];
  a2[1] = v6;
  result = *&v10;
  a2[2] = v10;
  return result;
}

uint64_t static SparseMatrix.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_8_93();
  if (*(v4 + 8) != *(v5 + 8) || *(v3 + 16) != *(v2 + 16) || (sub_237C60C7C(*(v3 + 24), *(v2 + 24)) & 1) == 0 || (sub_237EEEB9C(*(v3 + 32), *(v2 + 32)) & 1) == 0)
  {
    return 0;
  }

  return sub_237EF9590();
}

double sub_237EED7FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  SparseMatrix.init(rowCount:columnCount:)(a1, a2, *(a3 + 16), v7);
  v5 = v7[1];
  *a4 = v7[0];
  a4[1] = v5;
  result = *&v8;
  a4[2] = v8;
  return result;
}

double sub_237EED844@<D0>(_OWORD *a2@<X8>)
{
  v4 = v2[1];
  v9 = *v2;
  v10 = v4;
  v11 = v2[2];
  SparseMatrix.transposed()(v7);
  v5 = v7[1];
  *a2 = v7[0];
  a2[1] = v5;
  result = *&v8;
  a2[2] = v8;
  return result;
}

void sub_237EED9B0()
{
  OUTLINED_FUNCTION_37_0();
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 104);
  if (v4)
  {
    v5 = *(v1 + 80);
    v6 = *(v1 + 88);
    v7 = OUTLINED_FUNCTION_4_102();
    v8(v7);
    OUTLINED_FUNCTION_12_64();
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    SparseMatrix.subscript.setter();
  }

  free(v3);
  free(v2);
  OUTLINED_FUNCTION_38_0();

  free(v9);
}

char *sub_237EEDA60(char *result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = *v4;
  v10 = *v4 + 32;
  v11 = (v10 + 4 * result);
  if (v7)
  {
    v12 = *(v9 + 16);
    v13 = __OFSUB__(v12, a2);
    v14 = v12 - a2;
    if (!v13)
    {
      result = sub_237C5EE9C((v10 + 4 * a2), v14, &v11[a3]);
      v15 = *(v9 + 16);
      v13 = __OFADD__(v15, v7);
      v16 = v15 + v7;
      if (!v13)
      {
        *(v9 + 16) = v16;
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_7:
  if (a3 >= 1)
  {
    *v11 = a4;
    if (a3 != 1)
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t sub_237EEDB04(uint64_t result, uint64_t a2)
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

  result = sub_237EEDD68(result, 1, sub_237EEF2F0);
  v8 = *v2;
  if (!v7)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v9 = *(v8 + 16);
  if (__OFSUB__(v9, a2))
  {
    goto LABEL_16;
  }

  result = sub_237EE2E80(v8 + 32 + 4 * a2, v9 - a2, (v8 + 32 + 4 * v5));
  v10 = *(v8 + 16);
  v11 = __OFADD__(v10, v7);
  v12 = v10 + v7;
  if (!v11)
  {
    *(v8 + 16) = v12;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_237EEDBD4(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = sub_237EEDD68(result, 1, sub_237EEF2D8);
  v8 = *v2;
  if (!v7)
  {
LABEL_15:
    *v2 = v8;
    return result;
  }

  v9 = *(v8 + 16);
  v10 = v9 - a2;
  if (__OFSUB__(v9, a2))
  {
    goto LABEL_21;
  }

  v11 = (v8 + 32 + 8 * a2);
  result = v8 + 32 + 8 * v5;
  if (v5 != a2 || v11 + 8 * v10 <= result)
  {
    result = memmove(result, v11, 8 * v10);
    v9 = *(v8 + 16);
  }

  v13 = __OFADD__(v9, v7);
  v14 = v9 + v7;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_237EEDCB8(uint64_t result, uint64_t a2, int a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(*v3 + 16);
  if (v5 < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = __OFSUB__(1, v7);
  v9 = 1 - v7;
  if (v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v5 + v9;
  if (__OFADD__(v5, v9))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_237EEDD68(result, 1, sub_237D0BFC0);

  return sub_237EEDA60(v6, a2, 1, a3);
}

uint64_t sub_237EEDD68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

char *sub_237EEDDF4(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[8 * a2] <= __dst)
  {
    return memmove(__dst, __src, 8 * a2);
  }

  return __src;
}

uint64_t sub_237EEDE20(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = result;
    result = sub_237EF89B0();
    v4 = 0;
    *(result + 16) = a2;
    v5 = vdupq_n_s64(a2 - 1);
    do
    {
      v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_237F07A60)));
      v7 = result + 8 * v4;
      if (v6.i8[0])
      {
        *(v7 + 32) = v3;
      }

      if (v6.i8[4])
      {
        *(v7 + 40) = v3;
      }

      v4 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_237EEDEFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OUTLINED_FUNCTION_3_113(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_237EF8A60();
}

uint64_t OUTLINED_FUNCTION_6_85()
{

  return sub_237EF9D20();
}

uint64_t OUTLINED_FUNCTION_10_72(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return sub_237EF8A90();
}

void OUTLINED_FUNCTION_12_64()
{

  SparseMatrix.subscript.setter();
}

uint64_t OUTLINED_FUNCTION_13_60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_237EF9FB0();
}

uint64_t sub_237EEE03C@<X0>(uint64_t *a1@<X8>)
{
  result = LowerStrictlyTriangularMatrix.IndexedSequence.base.getter(*v1, v1[1], v1[2]);
  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t LowerStrictlyTriangularMatrix.IndexedSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  a5[5] = 0;
  a5[6] = 0;
  a5[4] = 1;

  return sub_237EF8260();
}

uint64_t LowerStrictlyTriangularMatrix.IndexedSequence.Iterator.init(base:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  a5[5] = 0;
  a5[6] = 0;
  a5[4] = 1;
  return result;
}

double sub_237EEE0E0@<D0>(uint64_t a1@<X8>)
{
  LowerStrictlyTriangularMatrix.IndexedSequence.makeIterator()(*v1, v1[1], v1[2], v1[3], v5);

  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

uint64_t LowerStrictlyTriangularMatrix.IndexedSequence.Iterator.base.getter()
{
  v1 = *v0;

  sub_237EF8260();
  return v1;
}

uint64_t LowerStrictlyTriangularMatrix.IndexedSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  MEMORY[0x28223BE20](TupleTypeMetadata3);
  v7 = &v19 - v6;
  v8 = *(v4 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v2[5];
  if (v13 < v2[1])
  {
    v14 = v2[4];
    v15 = *v2;
    if (v14 < *v2)
    {
      v19 = v2[6];
      v20 = v10;
      _s13LinearAlgebra11DenseVectorV10_uncheckedxSi_tcig_0();
      v16 = *(TupleTypeMetadata3 + 64);
      *v7 = v14;
      *(v7 + 1) = v13;
      result = (*(v8 + 32))(&v7[v16], v12, v4);
      v2[4] = v14 + 1;
      if (v14 + 1 == v15)
      {
        v2[5] = v13 + 1;
        if (__OFADD__(v13, 2))
        {
LABEL_12:
          __break(1u);
          return result;
        }

        v2[4] = v13 + 2;
      }

      v18 = v20;
      if (!__OFADD__(v19, 1))
      {
        v2[6] = v19 + 1;
        (*(v18 + 32))(a2, v7, TupleTypeMetadata3);
        return __swift_storeEnumTagSinglePayload(a2, 0, 1, TupleTypeMetadata3);
      }

      __break(1u);
      goto LABEL_12;
    }
  }

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, TupleTypeMetadata3);
}

uint64_t sub_237EEE4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237EEE4F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t UpperStrictlyTriangularMatrix.unordered.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_237EF9580();

  swift_getWitnessTable();
  return sub_237EF8A90();
}

void UpperStrictlyTriangularMatrix.init(rowCount:columnCount:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v9);
  swift_getAssociatedConformanceWitness();
  sub_237EF9FB0();
  v10 = v1;
  sub_237EF9D20();
  static UpperStrictlyTriangularMatrix.dataSize(_:_:)(v5, v3);
  v11 = sub_237EF9560();
  if (v5 < 0)
  {
    __break(1u);
LABEL_12:
    v10 = sub_237EEF308(0, v10[2] + 1, 1, v10, sub_237EEDDF4);
    goto LABEL_8;
  }

  v10 = MEMORY[0x277D84F90];
  if (v5)
  {
    v18[1] = v11;
    v21 = MEMORY[0x277D84F90];
    sub_237EEF518(0, v5, 0);
    v12 = 0;
    v10 = v21;
    do
    {
      v19 = v12;
      sub_237EEED04(&v19, v3, &v20);
      v13 = v20;
      v21 = v10;
      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        sub_237EEF518(v14 > 1, v15 + 1, 1);
        v10 = v21;
      }

      ++v12;
      v10[2] = v15 + 1;
      v10[v15 + 4] = v13;
    }

    while (v5 != v12);
  }

  v8 = sub_237EF9510();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v17 = v10[2];
  v16 = v10[3];
  if (v17 >= v16 >> 1)
  {
    v10 = sub_237EEF308((v16 > 1), v17 + 1, 1, v10, sub_237EEDDF4);
  }

  v10[2] = v17 + 1;
  v10[v17 + 4] = v8;
  OUTLINED_FUNCTION_38_0();
}

void UpperStrictlyTriangularMatrix.subscript.getter()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v4);
  UpperStrictlyTriangularMatrix.checkBounds(row:column:)(v3, v1);
  if (v3 >= v1)
  {
    swift_getAssociatedConformanceWitness();
    sub_237EF9FB0();
    sub_237EF9D20();
    OUTLINED_FUNCTION_38_0();
  }

  else
  {
    UpperStrictlyTriangularMatrix.dataIndex(_:_:)(v3, v1);
    OUTLINED_FUNCTION_38_0();

    _s13LinearAlgebra11DenseVectorV10_uncheckedxSi_tcig_0();
  }
}

uint64_t UpperStrictlyTriangularMatrix.subscript.setter(uint64_t a1, Swift::Int row, Swift::Int column, uint64_t a4)
{
  v5 = v4;
  v9 = *(a4 + 16);
  UpperStrictlyTriangularMatrix.checkBounds(row:column:)(row, column);
  if (row >= column)
  {
    OUTLINED_FUNCTION_19_51();
    result = sub_237EF9740(v16, v17, v18, 0xD00000000000003BLL, v19, v20, 49, 2, 52);
    __break(1u);
  }

  else
  {
    v10 = UpperStrictlyTriangularMatrix.dataIndex(_:_:)(row, column);
    sub_237EF9580();
    sub_237EF94D0();
    v11 = *(v5 + 16);
    sub_237E6A31C(v10, v11);
    OUTLINED_FUNCTION_22_3();
    v13 = *(v12 + 40);
    v14 = v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v10;

    return v13(v14, a1, v9);
  }

  return result;
}

uint64_t static UpperStrictlyTriangularMatrix.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a1 == a5 && a2 == a6;
  if (!v10 || (sub_237EF9590() & 1) == 0)
  {
    return 0;
  }

  return sub_237C60C7C(a4, a8);
}

uint64_t sub_237EEEB9C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t UpperStrictlyTriangularMatrix.storage.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t UpperStrictlyTriangularMatrix.rowStartIndices.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t static UpperStrictlyTriangularMatrix.dataSize(_:_:)(uint64_t result, uint64_t a2)
{
  v2 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2 * result;
  if ((v2 * result) >> 64 != (v2 * result) >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((result * v4) >> 64 != (result * v4) >> 63)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result * v4 / 2;
  result = v3 - v5;
  if (__OFSUB__(v3, v5))
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t sub_237EEED04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  result = static UpperStrictlyTriangularMatrix.dataSize(_:_:)(*a1, a2);
  if (__OFSUB__(result, v4))
  {
    __break(1u);
  }

  else
  {
    *a3 = result - v4;
  }

  return result;
}

Swift::Void __swiftcall UpperStrictlyTriangularMatrix.checkBounds(row:column:)(Swift::Int row, Swift::Int column)
{
  if (row < 0 || row >= v2)
  {
    v10 = 61;
    OUTLINED_FUNCTION_19_51();
    v9 = 0xD000000000000012;
LABEL_8:
    sub_237EF9740(v4, v5, v6, v9, v7, v8, 49, 2, v10);
    __break(1u);
    return;
  }

  if (column < 0 || column >= v3)
  {
    v10 = 64;
    OUTLINED_FUNCTION_19_51();
    goto LABEL_8;
  }
}

Swift::Int __swiftcall UpperStrictlyTriangularMatrix.dataIndex(_:_:)(Swift::Int result, Swift::Int a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(v2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v3 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = *(v2 + 8 * result + 32);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

void (*UpperStrictlyTriangularMatrix.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v9 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v9;
  v9[2] = a4;
  v9[3] = v4;
  *v9 = a2;
  v9[1] = a3;
  v10 = *(a4 + 16);
  v9[4] = v10;
  v11 = *(v10 - 8);
  v9[5] = v11;
  v12 = *(v11 + 64);
  v9[6] = __swift_coroFrameAllocStub(v12);
  v9[7] = __swift_coroFrameAllocStub(v12);
  UpperStrictlyTriangularMatrix.subscript.getter();
  return sub_237EEEF4C;
}

void sub_237EEEF4C()
{
  OUTLINED_FUNCTION_37_0();
  v1 = *v0;
  v2 = (*v0)[6];
  v3 = (*v0)[7];
  if (v4)
  {
    v5 = v1[4];
    v6 = v1[5];
    v7 = OUTLINED_FUNCTION_0_116();
    v8(v7);
    OUTLINED_FUNCTION_4_103();
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    UpperStrictlyTriangularMatrix.subscript.setter((*v0)[7], *v1, v1[1], v1[2]);
  }

  free(v3);
  free(v2);
  OUTLINED_FUNCTION_38_0();

  free(v9);
}

uint64_t UpperStrictlyTriangularMatrix.transposed()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LowerStrictlyTriangularMatrix.init(base:)();
  v4 = v3;

  sub_237EF8260();
  return v4;
}

void sub_237EEF058(void *a1@<X8>)
{
  UpperStrictlyTriangularMatrix.init(rowCount:columnCount:)();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_237EEF08C@<X0>(uint64_t *a1@<X8>)
{
  result = UpperStrictlyTriangularMatrix.transposed()(*v1, v1[1], v1[2]);
  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

void (*sub_237EEF0E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v9 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v9;
  v9[2] = v4;
  v9[3] = a4;
  *v9 = a2;
  v9[1] = a3;
  v10 = *(a4 + 16);
  v9[4] = v10;
  v11 = *(v10 - 8);
  v9[5] = v11;
  v12 = *(v11 + 64);
  v9[6] = __swift_coroFrameAllocStub(v12);
  v9[7] = __swift_coroFrameAllocStub(v12);
  UpperStrictlyTriangularMatrix.subscript.getter();
  return sub_237EEF1EC;
}

void sub_237EEF1EC()
{
  OUTLINED_FUNCTION_37_0();
  v1 = *v0;
  v2 = (*v0)[6];
  v3 = (*v0)[7];
  if (v4)
  {
    v5 = v1[4];
    v6 = v1[5];
    v7 = OUTLINED_FUNCTION_0_116();
    v8(v7);
    OUTLINED_FUNCTION_4_103();
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    UpperStrictlyTriangularMatrix.subscript.setter((*v0)[7], *v1, v1[1], v1[3]);
  }

  free(v3);
  free(v2);
  OUTLINED_FUNCTION_38_0();

  free(v9);
}

void *sub_237EEF308(void *result, int64_t a2, char a3, void *a4, void (*a5)(void *, int64_t, void *))
{
  v7 = result;
  if ((a3 & 1) == 0)
  {
    v9 = a2;
    goto LABEL_8;
  }

  v8 = a4[3];
  v9 = v8 >> 1;
  if ((v8 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v9 + 0x4000000000000000 >= 0)
  {
    v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
    if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v9 = a2;
    }

LABEL_8:
    v10 = a4[2];
    if (v9 <= v10)
    {
      v11 = a4[2];
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
      v12 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v12);
      v12[2] = v10;
      v12[3] = 2 * ((v13 - 32) / 8);
      if (v7)
      {
LABEL_13:
        a5(a4 + 4, v10, v12 + 4);
        a4[2] = 0;
LABEL_16:

        return v12;
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy(v12 + 4, a4 + 4, 8 * v10);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_237EEF410(void *result, int64_t a2, char a3, void *a4, void (*a5)(void *, int64_t, void *))
{
  v7 = result;
  if ((a3 & 1) == 0)
  {
    v9 = a2;
    goto LABEL_8;
  }

  v8 = a4[3];
  v9 = v8 >> 1;
  if ((v8 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v9 + 0x4000000000000000 >= 0)
  {
    v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
    if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v9 = a2;
    }

LABEL_8:
    v10 = a4[2];
    if (v9 <= v10)
    {
      v11 = a4[2];
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD398, &unk_237F0B050);
      v12 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v12);
      v12[2] = v10;
      v12[3] = 2 * ((v13 - 32) / 4);
      if (v7)
      {
LABEL_13:
        a5(a4 + 4, v10, v12 + 4);
        a4[2] = 0;
LABEL_16:

        return v12;
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy(v12 + 4, a4 + 4, 4 * v10);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_237EEF570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OUTLINED_FUNCTION_4_103()
{

  return UpperStrictlyTriangularMatrix.subscript.setter(v0, v3, v2, v1);
}

__n128 SparseMatrix.Transpose.init(base:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 16) = v2 & 1;
  result = *(a1 + 24);
  *(a2 + 24) = result;
  *(a2 + 40) = v3;
  return result;
}

__n128 SparseMatrix.Transpose.base.setter(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = a1[5];

  *v1 = v3;
  *(v1 + 8) = v4;
  *(v1 + 16) = v5 & 1;
  result = *(a1 + 3);
  *(v1 + 24) = result;
  *(v1 + 40) = v6;
  return result;
}

uint64_t SparseMatrix.Transpose.count.getter()
{
  OUTLINED_FUNCTION_1_129();
  type metadata accessor for SparseMatrix(0, *(v0 + 16), *(v0 + 24), v1);
  return SparseMatrix.count.getter();
}

double SparseMatrix.Transpose.init(rowCount:columnCount:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  SparseMatrix.init(rowCount:columnCount:)(a2, a1, a3, &v9);
  v5 = v10;
  v6 = v12;
  result = *&v9;
  v8 = v11;
  *a4 = v9;
  *(a4 + 16) = v5;
  *(a4 + 24) = v8;
  *(a4 + 40) = v6;
  return result;
}

void sub_237EEF85C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*(*a1 + 56) + 8))(v2, *(*a1 + 48));
  free(v2);

  free(v1);
}

void sub_237EEF9D4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 88);
  if (a2)
  {
    v5 = v2[9];
    v6 = v2[10];
    (*(v6 + 16))(*(*a1 + 88), v3, v5);
    SparseMatrix.subscript.setter();
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    SparseMatrix.subscript.setter();
  }

  free(v3);
  free(v4);

  free(v2);
}

void SparseMatrix.Transpose.subscript.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_129();
  v6 = type metadata accessor for SparseMatrix(0, *(v4 + 16), *(v4 + 24), v5);
  SparseMatrix.subscript.getter(a2, a1, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, vars0, vars8);
}

uint64_t SparseMatrix.Transpose.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a1;
  v7 = *(a4 + 16);
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v4[1];
  v26 = *v4;
  v27 = v13;
  v28 = v4[2];
  v15 = type metadata accessor for SparseMatrix(0, v7, *(v14 + 24), v14);
  SparseMatrix.subscript.getter(a3, a2, v15, v16, v17, v18, v19, v20, v24, v25, v26, *(&v26 + 1), v27, *(&v27 + 1), v28, *(&v28 + 1), v29, v30, v31, v32);
  v21 = *(v9 + 8);
  v21(v12, v7);
  v22 = v25;
  (*(v9 + 16))(v12, v25, v7);
  SparseMatrix.subscript.setter();
  return (v21)(v22, v7);
}

double sub_237EEFC78@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  sub_237EF8260();
  sub_237EF8260();

  return result;
}

uint64_t static SparseMatrix.Transpose.__derived_struct_equals(_:_:)(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v6[2] = a1[2];
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v5[2] = a2[2];
  return static SparseMatrix.__derived_struct_equals(_:_:)(v6, v5) & 1;
}

double sub_237EEFD4C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  SparseMatrix.Transpose.init(rowCount:columnCount:)(a1, a2, *(a3 + 16), v7);
  v5 = v7[1];
  *a4 = v7[0];
  a4[1] = v5;
  result = *&v8;
  a4[2] = v8;
  return result;
}

double sub_237EEFD94@<D0>(_OWORD *a1@<X8>)
{
  SparseMatrix.Transpose.transposed()();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  return result;
}

void sub_237EEFDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *v4;
  v14 = v4[1];
  v15 = v4[2];
  v7 = type metadata accessor for SparseMatrix(0, *(a3 + 16), *(a3 + 24), a4);
  SparseMatrix.subscript.getter(a2, a1, v7, v8, v9, v10, v11, v12, v13, *(&v13 + 1), v14, *(&v14 + 1), v15, *(&v15 + 1), v16, v17, v18, v19, vars0, vars8);
}

uint64_t sub_237EEFE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = a1;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v4[1];
  v24 = *v4;
  v25 = v11;
  v26 = v4[2];
  v13 = type metadata accessor for SparseMatrix(0, v7, *(v12 + 24), v12);
  SparseMatrix.subscript.getter(a3, a2, v13, v14, v15, v16, v17, v18, v22, v23, v24, *(&v24 + 1), v25, *(&v25 + 1), v26, *(&v26 + 1), v27, v28, v29, v30);
  v19 = *(v8 + 8);
  v19(v10, v7);
  v20 = v23;
  (*(v8 + 16))(v10, v23, v7);
  SparseMatrix.subscript.setter();
  return (v19)(v20, v7);
}

void (*sub_237EEFFA8(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = SparseMatrix.Transpose.subscript.modify();
  return sub_237C803C0;
}

uint64_t sub_237EF0030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void DenseMatrix.subscript.read()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_1_1();
  *v12 = v13;
  v12[1] = v14;
  v16 = *(v15 + 64);
  *(v11 + 16) = __swift_coroFrameAllocStub(v16);
  *(v11 + 24) = __swift_coroFrameAllocStub(v16);
  if (v1)
  {
    if ((v7 * v5) >> 64 == (v7 * v5) >> 63)
    {
      if (!__OFADD__(v7 * v5, v9))
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((v9 * v3) >> 64 != (v9 * v3) >> 63)
  {
    goto LABEL_9;
  }

  if (!__OFADD__(v9 * v3, v7))
  {
LABEL_7:
    _s13LinearAlgebra11DenseVectorV10_uncheckedxSi_tcig_0();
    OUTLINED_FUNCTION_38_0();
    return;
  }

LABEL_11:
  __break(1u);
}

void (*DenseMatrix.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  result = __swift_coroFrameAllocStub(0x30uLL);
  v9 = result;
  *a1 = result;
  if (v4[2])
  {
    v10 = a3 * *v4;
    if ((a3 * *v4) >> 64 == v10 >> 63)
    {
      if (!__OFADD__(v10, a2))
      {
        v11 = sub_237EF9580();
        *(v9 + 5) = OUTLINED_FUNCTION_54_11(v11);
        return sub_237E9CD34;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = v4[1];
  if ((a2 * v13) >> 64 != (a2 * v13) >> 63)
  {
    goto LABEL_10;
  }

  if (!__OFADD__(a2 * v13, a3))
  {
    v14 = sub_237EF9580();
    *(v9 + 4) = OUTLINED_FUNCTION_54_11(v14);
    return sub_237D8212C;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t static DenseMatrix.* infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  OUTLINED_FUNCTION_56_19();
  return OUTLINED_FUNCTION_14_73(v4, v5, v6, v7, v8, v9, v10, v11, a1);
}

uint64_t DenseMatrix.init(rowCount:columnCount:layout:repeating:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_1_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  result = (*(v10 + 16))(v13 - v12, v14, v15);
  if ((a1 * a2) >> 64 == (a1 * a2) >> 63)
  {
    sub_237EF9560();
    (*(v10 + 8))(a4, a5);
    return OUTLINED_FUNCTION_11_19();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DenseMatrix.withUnsafeMatrixPointer<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14[2] = a7;
  v14[3] = a8;
  v14[4] = a9;
  v14[5] = a3;
  v14[6] = a4;
  v15 = a5 & 1;
  v16 = a6;
  v17 = a1;
  v18 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
  return sub_237CC8430(sub_237EF29C8, v14, a6, a7, a8, v12, MEMORY[0x277D84950], &v19);
}

void *DenseMatrix.withUnsafeMutableMatrixPointer<A>(_:)(uint64_t (*a1)(_BYTE *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = (v4 + 8);
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  if (*(v4 + 16))
  {
    v8 = v4;
  }

  v11 = *v8;
  sub_237EF9580();
  sub_237EF94D0();
  v12 = *(v4 + 24);
  v13 = *(v12 + 16);
  v14 = v12 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80));
  v17[0] = v14;
  v17[1] = v13;
  sub_237EF2A0C(v17, v5, v11, a1, a2, v10, a4, v9, &v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
  return sub_237CC94F0(v17, v14, v13, v5 + 24, v10);
}

uint64_t DenseMatrix.count.getter(uint64_t a1, uint64_t a2)
{
  result = a1 * a2;
  if ((a1 * a2) >> 64 != result >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t DenseMatrix.init(rowCount:columnCount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_31_32();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  swift_getAssociatedConformanceWitness();
  sub_237EF9FB0();
  result = sub_237EF9D20();
  if ((a1 * a2) >> 64 == (a1 * a2) >> 63)
  {
    sub_237EF9560();
    return OUTLINED_FUNCTION_11_19();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static DenseMatrix.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v9 = a1 == a5 && a2 == a6;
  if (!v9 || ((a3 ^ a7) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_31_32();
  return sub_237EF9590();
}

uint64_t static DenseMatrix.+ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_19_54(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13_58(v4, v5, v6, v7, v8, v9, v10, v11, v21);
  static DenseMatrix.+= infix(_:_:)();
  return OUTLINED_FUNCTION_14_73(v12, v13, v14, v15, v16, v17, v18, v19, v22);
}

uint64_t static DenseMatrix.- infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_19_54(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13_58(v4, v5, v6, v7, v8, v9, v10, v11, v21);
  static DenseMatrix.-= infix(_:_:)();
  return OUTLINED_FUNCTION_14_73(v12, v13, v14, v15, v16, v17, v18, v19, v22);
}

void static DenseMatrix.*= infix(_:_:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0[1];
  v2 = *v0 * v1;
  if ((*v0 * v1) >> 64 != v2 >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v2 < 0)
  {
LABEL_8:
    __break(1u);
    return;
  }

  if (v2)
  {
    sub_237EF9580();
    sub_237EF94D0();
    OUTLINED_FUNCTION_34_24();
    nullsub_1();
    OUTLINED_FUNCTION_34_24();
    sub_237EF94D0();
    OUTLINED_FUNCTION_34_24();
    nullsub_1();
    for (i = 0; i != v2; ++i)
    {
      OUTLINED_FUNCTION_34_24();
      sub_237EF94D0();
      OUTLINED_FUNCTION_62_2();
      sub_237E6A31C(v4, v5);
      OUTLINED_FUNCTION_23_43();
      sub_237EF8D40();
      OUTLINED_FUNCTION_34_24();
      nullsub_1();
    }
  }

  OUTLINED_FUNCTION_38_0();
}

uint64_t static DenseMatrix.* infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  OUTLINED_FUNCTION_56_19();
  return OUTLINED_FUNCTION_14_73(v5, v6, v7, v8, v9, v10, v11, v12, a2);
}

void static DenseMatrix./ infix(_:_:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v18[1] = v3;
  v18[2] = v2;
  v18[3] = v4;
  v19 = v5;
  v20 = v6;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_26();
  v13 = (v11 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = v18 - v15;
  swift_getAssociatedConformanceWitness();

  sub_237EF9FA0();
  sub_237EF9CE0();
  sub_237EF8330();
  v17 = *(v9 + 8);
  v17(v13, v1);
  static DenseMatrix.*= infix(_:_:)();
  v17(v16, v1);
  OUTLINED_FUNCTION_38_0();
}

void static DenseMatrix.* infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_37_0();
  v22 = v21;
  LODWORD(v24) = v23;
  v26 = v25;
  v28 = v27;
  v107 = v29;
  v114 = v30;
  v32 = v31;
  v34 = v33;
  OUTLINED_FUNCTION_1_1();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_26();
  v40 = v38 - v39;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_8_16();
  v100 = v42;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_8_16();
  v115 = v44;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v45);
  v104 = &v95 - v46;
  v105 = v47;
  OUTLINED_FUNCTION_31_32();
  v99 = v48;
  v103 = *(v48 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v49);
  v101 = &v95 - v50;
  if (v32 != v28)
  {
    goto LABEL_22;
  }

  v51 = v32;
  if (qword_27DEB6C70 != -1)
  {
    goto LABEL_19;
  }

LABEL_3:
  v52 = sub_237EF7DB0();
  __swift_project_value_buffer(v52, static Logger.linearAlgebra);
  v53 = sub_237EF7D90();
  v54 = sub_237EF8F80();
  v55 = os_log_type_enabled(v53, v54);
  v111 = v34;
  v108 = v40;
  v109 = v22;
  v117 = v36;
  if (v55)
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v119[0] = v57;
    *v56 = 136315138;
    v58 = sub_237EFA220();
    v60 = sub_237DAFA64(v58, v59, v119);
    v34 = v111;

    *(v56 + 4) = v60;
    _os_log_impl(&dword_237C51000, v53, v54, "Using a slow implementation of matrix multiplication for %s. Prefer using Float or Double.", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v57);
    OUTLINED_FUNCTION_105_2();
    OUTLINED_FUNCTION_105_2();
  }

  v40 = v104;
  v22 = v103;
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_49_18();
  v98 = v61;
  sub_237EF9FB0();
  sub_237EF9D20();
  v62 = OUTLINED_FUNCTION_33();
  v119[0] = DenseMatrix.init(rowCount:columnCount:layout:repeating:)(v34, v26, v62 & 1, v40, a21);
  v119[1] = v63;
  v120 = v64;
  v121 = v65;
  if ((v34 & 0x8000000000000000) == 0)
  {
    if (!v34)
    {
LABEL_17:
      OUTLINED_FUNCTION_38_0();
      return;
    }

    if (v26 < 0)
    {
      goto LABEL_21;
    }

    v106 = v24;
    v36 = 0;
    v97 = v117 + 16;
    v96 = (v117 + 24);
    LODWORD(v24) = v115;
    v112 = v26;
    v113 = (v117 + 8);
    while (1)
    {
      if (v26)
      {
        if (v51 < 0)
        {
          __break(1u);
LABEL_19:
          OUTLINED_FUNCTION_0_109(&qword_27DEB6C70);
          goto LABEL_3;
        }

        v66 = 0;
        v110 = v36;
        do
        {
          v116 = v66;
          sub_237EF9FB0();
          sub_237EF9D20();
          v68 = v36;
          v40 = v100;
          v69 = v104;
          v34 = v97;
          if (v51)
          {
            v70 = 0;
            do
            {
              v117 = v70 + 1;
              DenseMatrix.subscript.read();
              v72 = v71;
              v73 = v51;
              v74 = *v34;
              (*v34)(v40);
              v72(v118, 0);
              DenseMatrix.subscript.read();
              v76 = v75;
              v77 = v34;
              v78 = v69;
              v79 = v40;
              v80 = v108;
              v74(v108);
              v81 = v73;
              v76(v118, 0);
              sub_237EF8D30();
              v82 = *v113;
              v83 = v80;
              v40 = v79;
              v69 = v78;
              v34 = v77;
              (*v113)(v83, a21);
              v82(v40, a21);
              sub_237EF9770();
              v82(v69, a21);
              v68 = v110;
              v70 = v117;
              v51 = v81;
            }

            while (v81 != v117);
          }

          v84 = v116;
          v22 = v116 + 1;
          v85 = type metadata accessor for DenseMatrix(0, a21, v105, v67);
          v86 = DenseMatrix.subscript.modify(v118, v68, v84, v85);
          v24 = v115;
          (*v96)(v87, v115, a21);
          (v86)(v118, 0);
          (*v113)(v24, a21);
          v66 = v22;
          v36 = v68;
          v26 = v112;
        }

        while (v22 != v112);
      }

      if (++v36 == v111)
      {
        goto LABEL_17;
      }
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  OUTLINED_FUNCTION_8_94();
  v95 = 560;
  OUTLINED_FUNCTION_19_51();
  OUTLINED_FUNCTION_18_53(v88, v89, v90, 64, v91, v92, v93, v94, v95);
  __break(1u);
}

uint64_t DenseMatrix.transposed()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DenseMatrix.Transpose.init(base:)();
  v5 = v4;

  return v5;
}

uint64_t static DenseMatrix<>.* infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = OUTLINED_FUNCTION_46_22(a1, a2, a3, a4, a5, a6);
  if (v7)
  {
    OUTLINED_FUNCTION_24_42();
    v9 = sub_237E61300(v8, 0.0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_237E643B4(v9, v10, v11, v12);
    }

    OUTLINED_FUNCTION_0_111();
    OUTLINED_FUNCTION_15_57();

    OUTLINED_FUNCTION_52_16();
    UnsafeMutableMatrixPointer<A>.addProductFloat(_:transposed:_:transposed:scaledBy:)(v13, v14, v15, v16);

    return OUTLINED_FUNCTION_11_19();
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_46_22(a1, a2, a3, a4, a5, a6);
  if (v7)
  {
    OUTLINED_FUNCTION_24_42();
    v9 = sub_237E613EC(v8, 0.0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_237E643FC(v9, v10, v11, v12);
    }

    OUTLINED_FUNCTION_0_111();
    OUTLINED_FUNCTION_15_57();

    OUTLINED_FUNCTION_52_16();
    UnsafeMutableMatrixPointer<A>.addProductDouble(_:transposed:_:transposed:scaledBy:)(v13, v14, v15, v16);

    return OUTLINED_FUNCTION_11_19();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DenseMatrix.leadingDimension.getter(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return a2;
  }

  return result;
}

void DenseMatrix.init<A>(rowCount:columnCount:layout:scalars:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  (*(v9 + 16))(v12 - v11, v13, v14);
  sub_237EF8A90();

  v15 = sub_237EF9510();
  if ((v7 * v5) >> 64 == (v7 * v5) >> 63)
  {
    if (v15 == v7 * v5)
    {
      (*(v9 + 8))(v3, v1);

      OUTLINED_FUNCTION_38_0();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000026, 0x8000000237F025A0);

  v16 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v16);

  MEMORY[0x2383E0710](0x746F672074756220, 0xE900000000000020);
  OUTLINED_FUNCTION_11_19();
  sub_237EF9510();

  v17 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v17);

  MEMORY[0x2383E0710](46, 0xE100000000000000);
  sub_237EF9740("Fatal error", 11, 2, 0, 0xE000000000000000, "LinearAlgebra/DenseMatrix.swift", 31, 2, 70);
  __break(1u);
}

uint64_t DenseMatrix.init(rowCount:columnCount:layout:initializingWith:)(uint64_t a1, uint64_t a2)
{
  result = a1 * a2;
  if ((a1 * a2) >> 64 == result >> 63)
  {
    MEMORY[0x28223BE20](result);
    v12[2] = v5;
    v12[3] = v6;
    v12[4] = v7;
    v12[5] = v8;
    v12[6] = a1;
    v12[7] = v9;
    sub_237CC78A4(v10, sub_237CC7D74, v12, v5);
    if (!v2)
    {
      return a1;
    }

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DenseMatrix.subscript.getter@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  DenseMatrix.subscript.read();
  v5 = v4;
  (*(*(a1 - 8) + 16))(a2);
  return v5(v7, 0);
}

Swift::Void __swiftcall DenseMatrix.transpose()()
{
  v1 = *v0;
  if (*v0 == v0[1])
  {
    if (v1 < 0)
    {
LABEL_25:
      __break(1u);
      return;
    }

    if (v1)
    {
      v2 = 0;
LABEL_5:
      v3 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (v1 < v3)
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if (v3 != v1)
      {
        if ((v2 * v1) >> 64 != (v2 * v1) >> 63)
        {
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        if (v3 >= v1)
        {
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v4 = v2 + 1;
        while (!__OFADD__(v2 * v1, v4))
        {
          if ((v4 * v1) >> 64 != (v4 * v1) >> 63)
          {
            goto LABEL_19;
          }

          if (__OFADD__(v4 * v1, v2))
          {
            goto LABEL_20;
          }

          ++v4;
          sub_237EF9580();
          swift_getWitnessTable();
          sub_237EF8480();
          if (v1 == v4)
          {
            ++v2;
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }
  }

  else
  {
    DenseMatrix._transposed()();
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    *v0 = v6;
    v0[1] = v8;
    *(v0 + 16) = v10 & 1;
    v0[3] = v12;
  }
}

void DenseMatrix._transposed()()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_1_1();
  v30 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_31_32();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_33_27();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_49_18();
  sub_237EF9FB0();
  OUTLINED_FUNCTION_38_23();
  sub_237EF9D20();
  v33[4] = DenseMatrix.init(rowCount:columnCount:layout:repeating:)(v7, v9, v5 & 1, v14, v3);
  v33[5] = v16;
  v34 = v17;
  v35 = v18;
  if (v9 < 0)
  {
    __break(1u);
  }

  else
  {
    v19 = v9;
    if (!v9)
    {
LABEL_9:
      OUTLINED_FUNCTION_38_0();
      return;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      v32 = v14;
      v20 = 0;
      v28 = (v30 + 16);
      v31 = (v30 + 40);
      v29 = v7;
      do
      {
        if (v7)
        {
          v21 = 0;
          do
          {
            DenseMatrix.subscript.read();
            v23 = v22;
            (*v28)(v32);
            v23(v33, 0);
            v25 = type metadata accessor for DenseMatrix(0, v3, v1, v24);
            v26 = DenseMatrix.subscript.modify(v33, v21, v20, v25);
            (*v31)(v27, v32, v3);
            (v26)(v33, 0);
            v7 = v29;
            v19 = v9;
            ++v21;
          }

          while (v29 != v21);
        }

        ++v20;
      }

      while (v20 != v19);
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_237EF2434(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  v21 = a1;
  v22 = v7;
  MEMORY[0x28223BE20](a1);
  v20 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v9 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  if (a2 < 0)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    if (a3 < 0)
    {
LABEL_13:
      __break(1u);
      return;
    }

    v11 = 0;
    v12 = 0;
    v19 = v22 + 40;
    v16 = a2;
    v17 = a3;
    while (1)
    {
      v18 = v12;
      if (a3)
      {
        break;
      }

LABEL_9:
      a3 = v17;
      v12 = v18 + 1;
      if (v18 + 1 == v16)
      {
        return;
      }
    }

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    while (1)
    {
      v13 = *v21;
      sub_237EF9FA0();
      v14 = v20;
      sub_237EF9CE0();
      (*(v22 + 40))(v13 + *(v22 + 72) * v11, v14, a4);
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      ++v11;
      --v12;
      if (!--a3)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }
}

uint64_t sub_237EF2668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = DenseMatrix.init(rowCount:columnCount:)(a1, a2, *(a3 + 16));
  *a4 = result;
  *(a4 + 8) = v6;
  *(a4 + 16) = 0;
  *(a4 + 24) = v7;
  return result;
}

uint64_t sub_237EF26A0@<X0>(uint64_t a1@<X8>)
{
  result = DenseMatrix.transposed()(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_237EF26E8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  DenseMatrix.subscript.read();
  v5 = v4;
  (*(*(v3 - 8) + 16))(a2);
  return v5(v7, 0);
}

uint64_t sub_237EF278C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = DenseMatrix.subscript.modify(v11, a2, a3, a4);
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  (*(v8 + 24))(v9, a1, v7);
  (v6)(v11, 0);
  return (*(v8 + 8))(a1, v7);
}

void (*sub_237EF2850(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  v8 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v8;
  v8[4] = DenseMatrix.subscript.modify(v8, a2, a3, a4);
  return sub_237C803C0;
}

uint64_t sub_237EF291C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t (*a7)(_BYTE *), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  result = sub_237EF8530();
  if (result)
  {
    if (a5)
    {
      v18 = a3;
    }

    else
    {
      v18 = a4;
    }

    UnsafeMatrixPointer.init(start:rowCount:columnCount:leadingDimension:layout:)(result, a3, a4, v18, a5 & 1, v19);
    result = a7(v19);
    if (v12)
    {
      *a12 = v12;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237EF2A0C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  result = sub_237EF9140();
  if (result)
  {
    UnsafeMutableMatrixPointer.init(start:rowCount:columnCount:leadingDimension:layout:)(result, *a2, *(a2 + 8), a3, *(a2 + 16), v14);
    result = a4(v14);
    if (v9)
    {
      *a9 = v9;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237EF2AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  result = sub_237EF8530();
  if (a5)
  {
    if (result)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if ((a7 * a4) >> 64 != (a7 * a4) >> 63)
  {
    __break(1u);
    goto LABEL_10;
  }

LABEL_6:
  UnsafeVectorPointer.init(start:count:stride:)();
  result = a8();
  if (v13)
  {
    *a13 = v13;
  }

  return result;
}

uint64_t sub_237EF2C04(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v13 = *(a2 + 16);
  result = sub_237EF9140();
  if ((v13 & 1) == 0)
  {
    if (!result)
    {
LABEL_11:
      __break(1u);
      return result;
    }

    if ((a3 * *(a2 + 8)) >> 64 == (a3 * *(a2 + 8)) >> 63)
    {
      goto LABEL_6;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!result)
  {
    goto LABEL_10;
  }

LABEL_6:
  UnsafeMutableVectorPointer.init(start:count:stride:)();
  result = a4();
  if (v9)
  {
    *a9 = v9;
  }

  return result;
}

uint64_t sub_237EF2D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15[2] = a8;
  v15[3] = a9;
  v15[4] = a10;
  v15[5] = a4;
  v15[6] = a5;
  v16 = a6 & 1;
  v17 = a7;
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
  return sub_237CC8430(a11, v15, a7, a8, a9, v13, MEMORY[0x277D84950], &v21);
}

void *sub_237EF2E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t *))
{
  v7 = v6;
  v12 = *(a4 + 16);
  sub_237EF9580();
  sub_237EF94D0();
  v13 = *(v6 + 24);
  v14 = *(v13 + 16);
  v15 = v13 + ((*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80));
  v19[0] = v15;
  v19[1] = v14;
  a6(v19, v7, a1, a2, a3, v12, a5, *(a4 + 24), &v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
  return sub_237CC94F0(v19, v15, v14, v7 + 24, v12);
}

void static DenseMatrix<>.*= infix(_:_:)(uint64_t a1)
{
  v2 = *(a1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_237EE2E84();
    *(a1 + 24) = v2;
  }

  OUTLINED_FUNCTION_50_19();
  if (!v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_17_64();
  if (v5 != v6)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_16_63();
  if (v5 ^ v6 | v4)
  {
    OUTLINED_FUNCTION_41_20(v7);
    *(a1 + 24) = v2;
    return;
  }

LABEL_10:
  __break(1u);
}

{
  v2 = *(a1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_237E9D898(v2);
    *(a1 + 24) = v2;
  }

  OUTLINED_FUNCTION_50_19();
  if (!v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_17_64();
  if (v5 != v6)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_16_63();
  if (v5 ^ v6 | v4)
  {
    OUTLINED_FUNCTION_40_21(v7);
    *(a1 + 24) = v2;
    return;
  }

LABEL_10:
  __break(1u);
}

void static DenseMatrix<>.* infix(_:_:)()
{
  OUTLINED_FUNCTION_1_130();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237EE2E84();
  }

  OUTLINED_FUNCTION_4_104();
  if (!v0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_17_64();
  if (v1 != v2)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_16_63();
  if (v1 ^ v2 | v0)
  {
    OUTLINED_FUNCTION_41_20(v3);
    OUTLINED_FUNCTION_0_117();
    return;
  }

LABEL_10:
  __break(1u);
}

{
  OUTLINED_FUNCTION_1_130();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237EE2E84();
  }

  OUTLINED_FUNCTION_4_104();
  if (!v0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_17_64();
  if (v1 != v2)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_16_63();
  if (v1 ^ v2 | v0)
  {
    OUTLINED_FUNCTION_41_20(v3);
    OUTLINED_FUNCTION_0_117();
    return;
  }

LABEL_10:
  __break(1u);
}

{
  OUTLINED_FUNCTION_1_130();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E9D898(v0);
  }

  OUTLINED_FUNCTION_4_104();
  if (!v1)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_17_64();
  if (v2 != v3)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_16_63();
  if (v2 ^ v3 | v1)
  {
    OUTLINED_FUNCTION_40_21(v4);
    OUTLINED_FUNCTION_0_117();
    return;
  }

LABEL_10:
  __break(1u);
}

{
  OUTLINED_FUNCTION_1_130();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E9D898(v0);
  }

  OUTLINED_FUNCTION_4_104();
  if (!v1)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_17_64();
  if (v2 != v3)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_16_63();
  if (v2 ^ v3 | v1)
  {
    OUTLINED_FUNCTION_40_21(v4);
    OUTLINED_FUNCTION_0_117();
    return;
  }

LABEL_10:
  __break(1u);
}

void static DenseMatrix<>./ infix(_:_:)(float a1)
{
  OUTLINED_FUNCTION_1_130();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237EE2E84();
  }

  OUTLINED_FUNCTION_4_104();
  if (!v1)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_17_64();
  if (v2 != v3)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_16_63();
  if (v2 ^ v3 | v1)
  {
    cblas_sscal_NEWLAPACK();
    OUTLINED_FUNCTION_0_117();
    return;
  }

LABEL_10:
  __break(1u);
}

void static DenseMatrix<>.* infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_19_53();
    OUTLINED_FUNCTION_37_30();
    if (v26)
    {
      v27 = sub_237EF89B0();
      OUTLINED_FUNCTION_17_63(v27);
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
    }

    for (i = 0; v24 != i; ++i)
    {
      v29 = v25 + 4 * i;
      *(v29 + 32) = 0;
    }

    OUTLINED_FUNCTION_4_99();
    OUTLINED_FUNCTION_10_71();
    OUTLINED_FUNCTION_9_74();
    UnsafeMutableVectorPointer<A>.addProductFloat(_:_:transposed:scaledBy:)();

    OUTLINED_FUNCTION_2_128();
    OUTLINED_FUNCTION_20_51();
  }
}

{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_19_53();
    OUTLINED_FUNCTION_35_28();
    if (v26)
    {
      v27 = sub_237EF89B0();
      OUTLINED_FUNCTION_17_63(v27);
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
    }

    for (i = 0; v24 != i; ++i)
    {
      v29 = v25 + 4 * i;
      *(v29 + 32) = 0;
    }

    OUTLINED_FUNCTION_4_99();
    OUTLINED_FUNCTION_11_70();
    OUTLINED_FUNCTION_9_74();
    UnsafeMutableVectorPointer<A>.addProductFloat(_:_:transposed:scaledBy:)();

    OUTLINED_FUNCTION_2_128();
    OUTLINED_FUNCTION_20_51();
  }
}

{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_19_53();
    OUTLINED_FUNCTION_37_30();
    if (v26)
    {
      v27 = sub_237EF89B0();
      OUTLINED_FUNCTION_17_63(v27);
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
    }

    for (i = 0; v24 != i; ++i)
    {
      v29 = v25 + 8 * i;
      *(v29 + 32) = 0;
    }

    OUTLINED_FUNCTION_4_99();
    OUTLINED_FUNCTION_10_71();
    OUTLINED_FUNCTION_9_74();
    UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();

    OUTLINED_FUNCTION_2_128();
    OUTLINED_FUNCTION_20_51();
  }
}

{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_19_53();
    OUTLINED_FUNCTION_35_28();
    if (v26)
    {
      v27 = sub_237EF89B0();
      OUTLINED_FUNCTION_17_63(v27);
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
    }

    for (i = 0; v24 != i; ++i)
    {
      v29 = v25 + 8 * i;
      *(v29 + 32) = 0;
    }

    OUTLINED_FUNCTION_4_99();
    OUTLINED_FUNCTION_11_70();
    OUTLINED_FUNCTION_9_74();
    UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();

    OUTLINED_FUNCTION_2_128();
    OUTLINED_FUNCTION_20_51();
  }
}

void static DenseMatrix<>./ infix(_:_:)(double a1)
{
  OUTLINED_FUNCTION_1_130();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E9D898(v1);
  }

  OUTLINED_FUNCTION_4_104();
  if (!v2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_17_64();
  if (v3 != v4)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_16_63();
  if (v3 ^ v4 | v2)
  {
    cblas_dscal_NEWLAPACK();
    OUTLINED_FUNCTION_0_117();
    return;
  }

LABEL_10:
  __break(1u);
}

void static DenseMatrix.* infix(_:_:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v80 = v8;
  v10 = v9;
  v86 = v11;
  OUTLINED_FUNCTION_1_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_26();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = (v72 - v19);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8_16();
  v85 = v22;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v23);
  v25 = v72 - v24;
  OUTLINED_FUNCTION_31_32();
  v79 = v26;
  v75 = *(v26 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v27);
  v73 = v72 - v28;
  v29 = OUTLINED_FUNCTION_33_27();
  v30 = v1;
  if (DenseVector.count.getter(v29) == v10)
  {
    v72[1] = v17;
    if (qword_27DEB6C70 != -1)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v88 = v13;
      v31 = sub_237EF7DB0();
      __swift_project_value_buffer(v31, static Logger.linearAlgebra);
      v32 = sub_237EF7D90();
      v33 = sub_237EF8F80();
      v34 = os_log_type_enabled(v32, v33);
      v72[0] = v20;
      v77 = v25;
      v81 = v7;
      if (v34)
      {
        v35 = swift_slowAlloc();
        v89[0] = swift_slowAlloc();
        v36 = v10;
        v37 = v89[0];
        *v35 = 136315138;
        v38 = sub_237EFA220();
        v40 = sub_237DAFA64(v38, v39, v89);

        *(v35 + 4) = v40;
        _os_log_impl(&dword_237C51000, v32, v33, "Using a slow implementation of matrix multiplication for %s. Prefer using Float or Double.", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v37);
        v10 = v36;
        OUTLINED_FUNCTION_105_2();
        OUTLINED_FUNCTION_105_2();
      }

      swift_getAssociatedConformanceWitness();
      OUTLINED_FUNCTION_49_18();
      v72[3] = v41;
      sub_237EF9FB0();
      OUTLINED_FUNCTION_38_23();
      sub_237EF9D20();
      v42 = v86;
      OUTLINED_FUNCTION_62_2();
      v89[4] = DenseVector.init(repeating:count:)(v43, v44, v45);
      if ((v42 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (!v42)
      {
LABEL_15:
        OUTLINED_FUNCTION_38_0();
        return;
      }

      v78 = v10;
      v25 = 0;
      v20 = (v88 + 16);
      v72[2] = (v88 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v13 = v85;
      v7 = v86;
      v87 = (v88 + 16);
      v10 = v30;
      v83 = v30;
      v84 = v5;
      v76 = (v88 + 8);
      while (1)
      {
        v30 = v73;
        sub_237EF9FB0();
        OUTLINED_FUNCTION_38_23();
        sub_237EF9D20();
        v46 = OUTLINED_FUNCTION_33_27();
        v47 = DenseVector.count.getter(v46);
        if (v47 < 0)
        {
          break;
        }

        if (v47)
        {
          v48 = 0;
          v49 = v72[0];
          v88 = v25;
          v51 = v76;
          v50 = v77;
          v82 = v47;
          do
          {
            DenseMatrix.subscript.read();
            v53 = v52;
            v54 = *v87;
            (*v87)(v49);
            v53(v89, 0);
            DenseVector.subscript.getter(v48, v84, v3);
            OUTLINED_FUNCTION_23_43();
            sub_237EF8D30();
            v55 = *v51;
            v56 = OUTLINED_FUNCTION_33_27();
            v55(v56);
            (v55)(v49, v3);
            sub_237EF9770();
            (v55)(v50, v3);
            ++v48;
          }

          while (v82 != v48);
          v10 = v83;
          v57 = v84;
          v13 = v85;
          v7 = v86;
          v25 = v88;
        }

        else
        {
          v57 = v5;
          v54 = *v20;
        }

        v58 = v25 + 1;
        v59 = v25;
        v60 = v77;
        (v54)(v77, v13, v3);
        v61 = OUTLINED_FUNCTION_43_3();
        v64 = type metadata accessor for DenseVector(v61, v62, v10, v63);
        DenseVector.subscript.setter(v60, v59, v64);
        (*v76)(v13, v3);
        v25 = v58;
        v20 = v87;
        v5 = v57;
        if (v58 == v7)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      OUTLINED_FUNCTION_0_109(&qword_27DEB6C70);
    }

    __break(1u);
  }

  OUTLINED_FUNCTION_8_94();
  v72[0] = 582;
  OUTLINED_FUNCTION_19_51();
  OUTLINED_FUNCTION_18_53(v65, v66, v67, 82, v68, v69, v70, v71, v72[0]);
  __break(1u);
}

{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  OUTLINED_FUNCTION_1_1();
  v83 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_26();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v68 - v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_8_16();
  v77 = v23;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v24);
  v81 = v68 - v25;
  OUTLINED_FUNCTION_31_32();
  v72 = v26;
  v68[4] = *(v26 + 16);
  v68[3] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v27);
  v68[2] = v68 - v28;
  v29 = v3;
  v30 = DenseVector.count.getter(v13);
  v75 = v11;
  if (v30 == v11)
  {
    v74 = v18;
    if (qword_27DEB6C70 != -1)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v31 = sub_237EF7DB0();
      __swift_project_value_buffer(v31, static Logger.linearAlgebra);
      v32 = sub_237EF7D90();
      v33 = sub_237EF8F80();
      v34 = os_log_type_enabled(v32, v33);
      v73 = v21;
      if (v34)
      {
        v35 = swift_slowAlloc();
        LODWORD(v82) = v33;
        v36 = v35;
        v80 = swift_slowAlloc();
        v84[0] = v80;
        *v36 = 136315138;
        v21 = v29;
        v37 = sub_237EFA220();
        v39 = sub_237DAFA64(v37, v38, v84);

        *(v36 + 4) = v39;
        _os_log_impl(&dword_237C51000, v32, v82, "Using a slow implementation of matrix multiplication for %s. Prefer using Float or Double.", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v80);
        OUTLINED_FUNCTION_105_2();
        OUTLINED_FUNCTION_105_2();
      }

      else
      {

        v21 = v29;
      }

      swift_getAssociatedConformanceWitness();
      OUTLINED_FUNCTION_49_18();
      v68[1] = v40;
      sub_237EF9FB0();
      v41 = v81;
      OUTLINED_FUNCTION_38_23();
      sub_237EF9D20();
      v84[4] = DenseVector.init(repeating:count:)(v41, v9, v21);
      if (v9 < 0)
      {
        break;
      }

      if (!v9)
      {
LABEL_16:
        OUTLINED_FUNCTION_38_0();
        return;
      }

      v42 = 0;
      v29 = (v83 + 16);
      v68[0] = (v83 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v43 = v77;
      v79 = (v83 + 8);
      v80 = (v83 + 16);
      v78 = v13;
      v71 = v9;
      v70 = v7;
      v69 = v5;
      while (1)
      {
        v82 = v42;
        sub_237EF9FB0();
        OUTLINED_FUNCTION_38_23();
        sub_237EF9D20();
        v44 = DenseVector.count.getter(v13);
        if (v44 < 0)
        {
          break;
        }

        if (v44)
        {
          v45 = 0;
          v76 = v44;
          do
          {
            v83 = v45 + 1;
            v46 = v73;
            DenseVector.subscript.getter(v45, v78, v21);
            DenseMatrix.subscript.read();
            v48 = v47;
            v49 = *v80;
            v50 = v74;
            (*v80)(v74);
            v48(v84, 0);
            v51 = v81;
            OUTLINED_FUNCTION_23_43();
            sub_237EF8D30();
            v52 = v1;
            v53 = *v79;
            (*v79)(v50, v21);
            v53(v46, v21);
            sub_237EF9770();
            v53(v51, v21);
            v1 = v52;
            v5 = v69;
            v7 = v70;
            v9 = v71;
            v45 = v83;
          }

          while (v76 != v83);
          v43 = v77;
        }

        else
        {
          v49 = *v29;
        }

        v54 = v81;
        v55 = v82;
        v56 = v82 + 1;
        v49(v81, v43, v21);
        v57 = OUTLINED_FUNCTION_43_3();
        v60 = type metadata accessor for DenseVector(v57, v58, v1, v59);
        DenseVector.subscript.setter(v54, v55, v60);
        (*v79)(v43, v21);
        v42 = v55 + 1;
        v29 = v80;
        v13 = v78;
        if (v56 == v9)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_18:
      OUTLINED_FUNCTION_0_109(&qword_27DEB6C70);
    }

    __break(1u);
  }

  OUTLINED_FUNCTION_8_94();
  v68[0] = 602;
  OUTLINED_FUNCTION_19_51();
  OUTLINED_FUNCTION_18_53(v61, v62, v63, 79, v64, v65, v66, v67, v68[0]);
  __break(1u);
}

uint64_t sub_237EF4280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double OUTLINED_FUNCTION_15_57()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_18_53(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a4 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_237EF9740(a1, a2, a3, v10, a5, a6, 31, 2, a9);
}

double OUTLINED_FUNCTION_19_54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return result;
}

uint64_t OUTLINED_FUNCTION_40_21(uint64_t a1)
{

  return cblas_dscal_NEWLAPACK();
}

uint64_t OUTLINED_FUNCTION_41_20(uint64_t a1)
{

  return cblas_sscal_NEWLAPACK();
}

uint64_t OUTLINED_FUNCTION_54_11(uint64_t a1)
{

  return sub_237EF95B0();
}

void OUTLINED_FUNCTION_56_19()
{

  static DenseMatrix.*= infix(_:_:)();
}

uint64_t UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5 != a2)
  {
    goto LABEL_19;
  }

  if (a5 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a3 < 0xFFFFFFFF80000000 || a5 < 0xFFFFFFFF80000000 || a6 < 0xFFFFFFFF80000000)
  {
    goto LABEL_17;
  }

  if (a6 > 0x7FFFFFFF)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    OUTLINED_FUNCTION_5_101();
    sub_237EF9330();
    OUTLINED_FUNCTION_12_66();
    OUTLINED_FUNCTION_7_87();
    MEMORY[0x2383E0710](0xD000000000000041);
    OUTLINED_FUNCTION_13_6();
    sub_237EF9AB0();
    OUTLINED_FUNCTION_17_65();

    OUTLINED_FUNCTION_0_118();
    OUTLINED_FUNCTION_15_58();
    OUTLINED_FUNCTION_13_6();
    sub_237EF9AB0();
    OUTLINED_FUNCTION_16_64();

    OUTLINED_FUNCTION_8_95();
    OUTLINED_FUNCTION_10_73();
    v10 = OUTLINED_FUNCTION_14_70("Fatal error", v12, v13, v14, v15, "LinearAlgebra/UnsafeVectorOperations.swift", v16, v17, 122);
    __break(1u);
    return MEMORY[0x282108B60](v10, v11);
  }

  v10 = a5;
  v11 = a1;

  return MEMORY[0x282108B60](v10, v11);
}

{
  if (a5 != a2)
  {
    goto LABEL_19;
  }

  if (a5 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a3 < 0xFFFFFFFF80000000 || a5 < 0xFFFFFFFF80000000 || a6 < 0xFFFFFFFF80000000)
  {
    goto LABEL_17;
  }

  if (a6 > 0x7FFFFFFF)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    OUTLINED_FUNCTION_5_101();
    sub_237EF9330();
    OUTLINED_FUNCTION_12_66();
    OUTLINED_FUNCTION_7_87();
    MEMORY[0x2383E0710](0xD000000000000041);
    OUTLINED_FUNCTION_13_6();
    sub_237EF9AB0();
    OUTLINED_FUNCTION_17_65();

    OUTLINED_FUNCTION_0_118();
    OUTLINED_FUNCTION_15_58();
    OUTLINED_FUNCTION_13_6();
    sub_237EF9AB0();
    OUTLINED_FUNCTION_16_64();

    OUTLINED_FUNCTION_8_95();
    OUTLINED_FUNCTION_10_73();
    v10 = OUTLINED_FUNCTION_14_70("Fatal error", v12, v13, v14, v15, "LinearAlgebra/UnsafeVectorOperations.swift", v16, v17, 179);
    __break(1u);
    return MEMORY[0x282108850](v10, v11);
  }

  v10 = a5;
  v11 = a1;

  return MEMORY[0x282108850](v10, v11);
}

uint64_t UnsafeMutableVectorPointer<A>.multiply(by:)(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  if (a2 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a2 >= 0xFFFFFFFF80000000)
  {
    v5 = __OFSUB__(a3, 0xFFFFFFFF80000000);
    v4 = a3 + 0x80000000 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 1;
  }

  if (v4 != v5)
  {
    goto LABEL_9;
  }

  if (a3 <= 0x7FFFFFFF)
  {
    return cblas_sscal_NEWLAPACK();
  }

LABEL_10:
  __break(1u);
  return v6;
}

uint64_t UnsafeMutableVectorPointer<A>.multiply(by:)(uint64_t result, uint64_t a2, uint64_t a3, double a4)
{
  if (a2 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a2 >= 0xFFFFFFFF80000000)
  {
    v5 = __OFSUB__(a3, 0xFFFFFFFF80000000);
    v4 = a3 + 0x80000000 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 1;
  }

  if (v4 != v5)
  {
    goto LABEL_9;
  }

  if (a3 <= 0x7FFFFFFF)
  {
    return cblas_dscal_NEWLAPACK();
  }

LABEL_10:
  __break(1u);
  return v6;
}

void UnsafeVectorPointer<A>.squaredMagnitude.getter()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v35 = v6;
  v8 = v7;
  OUTLINED_FUNCTION_1_1();
  v37 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_26();
  v33 = (v11 - v12);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v13);
  v32 = v30 - v14;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v15);
  v31 = v30 - v16;
  v30[1] = *(*(v17 + 16) + 8);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4_105();
  MEMORY[0x28223BE20](v18);
  swift_getAssociatedConformanceWitness();
  sub_237EF9FB0();
  v34 = v8;
  sub_237EF9D20();
  v36 = v5 * v3;
  if ((v5 * v3) >> 64 != (v5 * v3) >> 63)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (!v3)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v19 = 0;
  v30[0] = v37 + 2;
  v20 = v37;
  v21 = v33;
  while (1)
  {
    v22 = v36 >= v19;
    if (v3 > 0)
    {
      v22 = v19 >= v36;
    }

    if (v22)
    {
      break;
    }

    v23 = v19 + v3;
    if (__OFADD__(v19, v3))
    {
      v23 = ((v19 + v3) >> 63) ^ 0x8000000000000000;
    }

    v38 = v23;
    v24 = v35 + v20[9] * v19;
    v25 = v3;
    v26 = v20[2];
    v27 = v32;
    v26(v32, v24, v1);
    v26(v21, v24, v1);
    v28 = v31;
    sub_237EF8D30();
    v29 = v20[1];
    v29(v21, v1);
    v29(v27, v1);
    sub_237EF9770();
    v29(v28, v1);
    v3 = v25;
    v19 = v38;
  }

  OUTLINED_FUNCTION_38_0();
}

uint64_t UnsafeVectorPointer<A>.magnitude.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnsafeVectorPointer<A>.squaredMagnitude.getter();
  sub_237EF8320();
  return (*(v7 + 8))(v10, a4);
}

void UnsafeVectorPointer<A>.maximumAbsoluteValue.getter()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v31 = v8;
  v35 = *(*(v0 + 16) + 8);
  v36 = v9;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4_105();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_1();
  v38 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_26();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v31 - v20;
  if (v7 < 1)
  {
    OUTLINED_FUNCTION_13_6();
    sub_237EF8350();
LABEL_17:
    OUTLINED_FUNCTION_38_0();
    return;
  }

  v34 = v1;
  swift_getAssociatedConformanceWitness();
  sub_237EF9FB0();
  sub_237EF9D20();
  v22 = v7 * v5;
  if ((v7 * v5) >> 64 == (v7 * v5) >> 63)
  {
    v23 = v5;
    if (v5)
    {
      v37 = v21;
      v24 = 0;
      v32 = (v38 + 32);
      v33 = v38 + 16;
      v25 = v21;
      while (1)
      {
        v26 = v22 >= v24;
        if (v23 > 0)
        {
          v26 = v24 >= v22;
        }

        if (v26)
        {
          break;
        }

        v27 = v23;
        if (__OFADD__(v24, v23))
        {
          v28 = ((v24 + v23) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v28 = v24 + v23;
        }

        v29 = v38;
        (*(v38 + 16))(v15, v36 + *(v38 + 72) * v24, v3);
        sub_237EF8D50();
        v30 = *(v29 + 8);
        v30(v15, v3);
        if (sub_237EF8400())
        {
          v30(v25, v3);
          (*v32)(v25, v18, v3);
        }

        else
        {
          v30(v18, v3);
        }

        v24 = v28;
        v23 = v27;
      }

      (*v32)(v31, v37, v3);
      goto LABEL_17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_37_0();
  v22 = v21;
  v24 = v23;
  v66 = v25;
  v67 = v26;
  v28 = v27;
  v65 = v29;
  OUTLINED_FUNCTION_1_1();
  v69 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_26();
  v64 = v32 - v33;
  OUTLINED_FUNCTION_11_1();
  v37.n128_f64[0] = MEMORY[0x28223BE20](v34);
  v63 = &v58 - v38;
  if (v36 != v35)
  {
    goto LABEL_24;
  }

  v70 = v36 * v24;
  if ((v36 * v24) >> 64 != (v36 * v24) >> 63)
  {
    __break(1u);
    goto LABEL_22;
  }

  v68 = v36 * v28;
  if ((v36 * v28) >> 64 != (v36 * v28) >> 63)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v74 = 0;
    v75 = 0xE000000000000000;
    v49 = v35;
    v50 = v36;
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000041, 0x8000000237F018D0);
    v73 = v50;
    OUTLINED_FUNCTION_13_6();
    v51 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v51);

    v52 = OUTLINED_FUNCTION_0_118();
    MEMORY[0x2383E0710](v52, 0xE500000000000000);
    v73 = v49;
    OUTLINED_FUNCTION_13_6();
    v53 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v53);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    OUTLINED_FUNCTION_14_70("Fatal error", v54, v55, v74, v75, "LinearAlgebra/UnsafeVectorOperations.swift", v56, v57, 53);
    __break(1u);
    return;
  }

  if (!v28 || !v24)
  {
    goto LABEL_23;
  }

  v39 = 0;
  v40 = 0;
  v41 = v70;
  v61 = v69 + 16;
  v62 = a21;
  v59 = (v24 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
  v60 = v69 + 8;
  while (1)
  {
    v42 = v41 >= v40;
    if (v24 > 0)
    {
      v42 = v40 >= v70;
      v41 = v70;
    }

    if (v42)
    {
      break;
    }

    v43 = v40 + v24;
    if (__OFADD__(v40, v24))
    {
      v43 = v59;
    }

    if (v28 <= 0)
    {
      if (v68 >= v39)
      {
        break;
      }
    }

    else if (v39 >= v68)
    {
      break;
    }

    v72 = v43;
    v44 = v39 + v28;
    if (__OFADD__(v39, v28))
    {
      v44 = ((v39 + v28) >> 63) ^ 0x8000000000000000;
    }

    v71 = v44;
    v45 = v69;
    v46 = v64;
    (*(v69 + 16))(v64, v65 + *(v69 + 72) * v39, v22, v37);
    v47 = v63;
    sub_237EF8D30();
    v48 = *(v45 + 8);
    v48(v46, v22);
    sub_237EF9770();
    v48(v47, v22);
    v39 = v71;
    v40 = v72;
  }

  OUTLINED_FUNCTION_38_0();
}

uint64_t UnsafeMutableVectorPointer<A>.multiply(by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a3 * a4;
  if ((a3 * a4) >> 64 != (a3 * a4) >> 63)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (!a4)
  {
LABEL_13:
    __break(1u);
    return v11;
  }

  for (i = 0; ; i = v10)
  {
    v9 = v6 >= i;
    if (a4 > 0)
    {
      v9 = i >= v6;
    }

    if (v9)
    {
      break;
    }

    if (__OFADD__(i, a4))
    {
      v10 = ((i + a4) >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v10 = i + a4;
    }

    v11 = sub_237EF8D40();
  }

  return v11;
}

void dot<A>(_:_:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v50 = v6;
  v51 = v7;
  v9 = v8;
  v11 = v10;
  v54 = v12;
  OUTLINED_FUNCTION_1_1();
  v53 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_26();
  v49 = (v15 - v16);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v17);
  v48 = v43 - v18;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  v47 = v43 - v20;
  v46 = *(*(v21 + 16) + 8);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4_105();
  MEMORY[0x28223BE20](v22);
  if (v11 != v5)
  {
    goto LABEL_25;
  }

  v55 = v11 * v9;
  if ((v11 * v9) >> 64 != (v11 * v9) >> 63)
  {
    __break(1u);
    goto LABEL_23;
  }

  v52 = v11 * v3;
  if ((v11 * v3) >> 64 != (v11 * v3) >> 63)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v58 = 0;
    v59 = 0xE000000000000000;
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000050, 0x8000000237EFEBF0);
    v57 = v11;
    OUTLINED_FUNCTION_13_6();
    v36 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v36);

    v37 = OUTLINED_FUNCTION_0_118();
    MEMORY[0x2383E0710](v37, 0xE500000000000000);
    v57 = v5;
    OUTLINED_FUNCTION_13_6();
    v38 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v38);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    OUTLINED_FUNCTION_14_70("Fatal error", v39, v40, v58, v59, "LinearAlgebra/UnsafeVectorOperations.swift", v41, v42, 78);
    __break(1u);
    return;
  }

  if (!v9 || !v3)
  {
    goto LABEL_24;
  }

  swift_getAssociatedConformanceWitness();
  sub_237EF9FB0();
  sub_237EF9D20();
  v23 = 0;
  v24 = 0;
  v43[1] = v53 + 8;
  v43[2] = v53 + 16;
  v43[0] = (v9 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
  v25 = v55;
  v44 = v3;
  v45 = v9;
  while (1)
  {
    v26 = v25 >= v24;
    if (v9 > 0)
    {
      v26 = v24 >= v55;
      v25 = v55;
    }

    if (v26)
    {
      break;
    }

    v27 = v24 + v9;
    if (__OFADD__(v24, v9))
    {
      v27 = v43[0];
    }

    if (v3 <= 0)
    {
      if (v52 >= v23)
      {
        break;
      }
    }

    else if (v23 >= v52)
    {
      break;
    }

    v56 = v27;
    if (__OFADD__(v23, v3))
    {
      v28 = ((v23 + v3) >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v28 = v23 + v3;
    }

    v29 = v53;
    v30 = *(v53 + 72);
    v31 = *(v53 + 16);
    v32 = v48;
    v31(v48, v50 + v30 * v24, v1);
    v33 = v49;
    v31(v49, v51 + v30 * v23, v1);
    v34 = v47;
    sub_237EF8D30();
    v35 = *(v29 + 8);
    v35(v33, v1);
    v35(v32, v1);
    sub_237EF9770();
    v35(v34, v1);
    v23 = v28;
    v3 = v44;
    v9 = v45;
    v24 = v56;
  }

  OUTLINED_FUNCTION_38_0();
}

uint64_t UnsafeVectorPointer<A>.magnitude.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a2 < 0xFFFFFFFF80000000 || a3 < 0xFFFFFFFF80000000)
  {
    goto LABEL_9;
  }

  if (a3 <= 0x7FFFFFFF)
  {
    return MEMORY[0x282108C30](a2, a1);
  }

LABEL_10:
  __break(1u);
  return MEMORY[0x282108C30](a1, a2);
}

{
  if (a2 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a2 < 0xFFFFFFFF80000000 || a3 < 0xFFFFFFFF80000000)
  {
    goto LABEL_9;
  }

  if (a3 <= 0x7FFFFFFF)
  {
    return MEMORY[0x2821088F0](a2, a1);
  }

LABEL_10:
  __break(1u);
  return MEMORY[0x2821088F0](a1, a2);
}

void UnsafeVectorPointer<A>.maximumAbsoluteValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 >= 1)
  {
    if (a2 >> 31)
    {
      __break(1u);
    }

    else if (a3 >= 0xFFFFFFFF80000000)
    {
      if (a3 <= 0x7FFFFFFF)
      {
        OUTLINED_FUNCTION_11_71(a1, a2);
        fabsf(*(v3 + 4 * cblas_isamax_NEWLAPACK() * a3));
        return;
      }

      goto LABEL_9;
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }
}

{
  if (a2 >= 1)
  {
    if (a2 >> 31)
    {
      __break(1u);
    }

    else if (a3 >= 0xFFFFFFFF80000000)
    {
      if (a3 <= 0x7FFFFFFF)
      {
        OUTLINED_FUNCTION_11_71(a1, a2);
        fabs(*(v3 + 8 * cblas_idamax_NEWLAPACK() * a3));
        return;
      }

      goto LABEL_9;
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }
}

uint64_t dot(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != a5)
  {
    goto LABEL_19;
  }

  if (a2 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a2 < 0xFFFFFFFF80000000 || a3 < 0xFFFFFFFF80000000 || a6 < 0xFFFFFFFF80000000)
  {
    goto LABEL_17;
  }

  if (a6 > 0x7FFFFFFF)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    OUTLINED_FUNCTION_5_101();
    sub_237EF9330();
    OUTLINED_FUNCTION_12_66();
    OUTLINED_FUNCTION_7_87();
    MEMORY[0x2383E0710](0xD000000000000050);
    OUTLINED_FUNCTION_13_6();
    sub_237EF9AB0();
    OUTLINED_FUNCTION_17_65();

    OUTLINED_FUNCTION_0_118();
    OUTLINED_FUNCTION_15_58();
    OUTLINED_FUNCTION_13_6();
    sub_237EF9AB0();
    OUTLINED_FUNCTION_16_64();

    OUTLINED_FUNCTION_8_95();
    OUTLINED_FUNCTION_10_73();
    v10 = OUTLINED_FUNCTION_14_70("Fatal error", v12, v13, v14, v15, "LinearAlgebra/UnsafeVectorOperations.swift", v16, v17, 141);
    __break(1u);
    return MEMORY[0x282108BC0](v10, v11);
  }

  v10 = a2;
  v11 = a1;

  return MEMORY[0x282108BC0](v10, v11);
}

void dot(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != a5)
  {
    goto LABEL_19;
  }

  if (a2 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a2 < 0xFFFFFFFF80000000 || a3 < 0xFFFFFFFF80000000 || a6 < 0xFFFFFFFF80000000)
  {
    goto LABEL_17;
  }

  if (a6 > 0x7FFFFFFF)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    OUTLINED_FUNCTION_5_101();
    sub_237EF9330();
    OUTLINED_FUNCTION_12_66();
    OUTLINED_FUNCTION_7_87();
    MEMORY[0x2383E0710](0xD000000000000050);
    OUTLINED_FUNCTION_13_6();
    sub_237EF9AB0();
    OUTLINED_FUNCTION_17_65();

    OUTLINED_FUNCTION_0_118();
    OUTLINED_FUNCTION_15_58();
    OUTLINED_FUNCTION_13_6();
    sub_237EF9AB0();
    OUTLINED_FUNCTION_16_64();

    OUTLINED_FUNCTION_8_95();
    OUTLINED_FUNCTION_10_73();
    OUTLINED_FUNCTION_14_70("Fatal error", v9, v10, v11, v12, "LinearAlgebra/UnsafeVectorOperations.swift", v13, v14, 198);
    __break(1u);
    return;
  }

  cblas_ddot_NEWLAPACK();
}

void OUTLINED_FUNCTION_8_95()
{

  JUMPOUT(0x2383E0710);
}

void OUTLINED_FUNCTION_15_58()
{

  JUMPOUT(0x2383E0710);
}

void OUTLINED_FUNCTION_16_64()
{

  JUMPOUT(0x2383E0710);
}

void OUTLINED_FUNCTION_17_65()
{

  JUMPOUT(0x2383E0710);
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}