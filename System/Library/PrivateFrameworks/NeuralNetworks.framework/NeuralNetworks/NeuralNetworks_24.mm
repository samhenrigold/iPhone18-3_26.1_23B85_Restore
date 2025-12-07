uint64_t sub_25BC61758(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_31_27();
      return Parameter.wrappedValue.setter(v4);
    }

    goto LABEL_8;
  }

  if (!v2)
  {
LABEL_8:
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_7_55();
    result = OUTLINED_FUNCTION_98(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_46_21();
  Parameter.wrappedValue.setter(v15);
}

uint64_t MultiheadAttention.$keyBias.getter()
{
  if (*(v0 + 58) == 1)
  {
    OUTLINED_FUNCTION_69_9();
  }

  else
  {
    v1 = OUTLINED_FUNCTION_68_10();
  }

  return OUTLINED_FUNCTION_67_8(v1);
}

uint64_t MultiheadAttention.valueWeight.getter()
{
  v0 = OUTLINED_FUNCTION_38();
  if (v2)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    result = OUTLINED_FUNCTION_67(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    __break(1u);
    return result;
  }

  if ((v0 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_8;
  }

  v3 = OUTLINED_FUNCTION_75_1(v0, v1);

  return sub_25BAB69FC(v3);
}

uint64_t sub_25BC618D4@<X0>(void *a1@<X8>)
{
  result = MultiheadAttention.valueWeight.getter();
  *a1 = v3;
  return result;
}

uint64_t MultiheadAttention.valueWeight.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_40_0(a1);
  v2 = OUTLINED_FUNCTION_29(*(v1 + 64));
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v2 < 0)
    {
      OUTLINED_FUNCTION_86_0(v2);
      return OUTLINED_FUNCTION_113();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  __break(1u);
  return result;
}

uint64_t sub_25BC619E0(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_88();
    Parameter.wrappedValue.setter(v4);
  }

  else
  {
    OUTLINED_FUNCTION_75_8();
    return Parameter.wrappedValue.setter(v3);
  }
}

void MultiheadAttention.valueBias.getter(void *a1@<X8>)
{
  if (*(v1 + 90) != 1)
  {
    *a1 = 0;
    return;
  }

  v2 = OUTLINED_FUNCTION_38();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_10:
    OUTLINED_FUNCTION_67(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);
    __break(1u);
    return;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_10;
  }

  v5 = OUTLINED_FUNCTION_75_1(v2, v3);

  sub_25BAB69FC(v5);
}

uint64_t *MultiheadAttention.valueBias.setter(uint64_t *result)
{
  v2 = *result;
  if (*(v1 + 90) == 1)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_71_7();
      return Parameter.wrappedValue.setter(v3);
    }

    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_7_55();
    goto LABEL_8;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_19_32();
    OUTLINED_FUNCTION_7_0();
LABEL_8:
    result = OUTLINED_FUNCTION_98(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
    __break(1u);
  }

  return result;
}

uint64_t (*MultiheadAttention.valueBias.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  OUTLINED_FUNCTION_40_0(a1);
  if (*(v2 + 90) != 1)
  {
    *v1 = 0;
    return sub_25BC659CC;
  }

  v3 = OUTLINED_FUNCTION_29(*(v2 + 80));
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v3 < 0)
    {
      OUTLINED_FUNCTION_86_0(v3);
      return sub_25BC61CA8;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
  __break(1u);
  return result;
}

uint64_t sub_25BC61CA8(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_31_27();
      return Parameter.wrappedValue.setter(v4);
    }

    goto LABEL_8;
  }

  if (!v2)
  {
LABEL_8:
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_7_55();
    result = OUTLINED_FUNCTION_98(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_46_21();
  Parameter.wrappedValue.setter(v15);
}

uint64_t MultiheadAttention.$valueBias.getter()
{
  if (*(v0 + 90) == 1)
  {
    OUTLINED_FUNCTION_69_9();
  }

  else
  {
    v1 = OUTLINED_FUNCTION_68_10();
  }

  return OUTLINED_FUNCTION_67_8(v1);
}

uint64_t MultiheadAttention.outputWeight.getter()
{
  v0 = OUTLINED_FUNCTION_38();
  if (v2)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    result = OUTLINED_FUNCTION_67(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    __break(1u);
    return result;
  }

  if ((v0 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_8;
  }

  v3 = OUTLINED_FUNCTION_75_1(v0, v1);

  return sub_25BAB69FC(v3);
}

uint64_t sub_25BC61E24@<X0>(void *a1@<X8>)
{
  result = MultiheadAttention.outputWeight.getter();
  *a1 = v3;
  return result;
}

uint64_t MultiheadAttention.outputWeight.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_40_0(a1);
  v2 = OUTLINED_FUNCTION_29(*(v1 + 96));
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v2 < 0)
    {
      OUTLINED_FUNCTION_86_0(v2);
      return OUTLINED_FUNCTION_113();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  __break(1u);
  return result;
}

uint64_t sub_25BC61F64(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_88();
    Parameter.wrappedValue.setter(v4);
  }

  else
  {
    OUTLINED_FUNCTION_75_8();
    return Parameter.wrappedValue.setter(v3);
  }
}

void MultiheadAttention.outputBias.getter(void *a1@<X8>)
{
  if (*(v1 + 122) != 1)
  {
    *a1 = 0;
    return;
  }

  v2 = OUTLINED_FUNCTION_38();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_10:
    OUTLINED_FUNCTION_67(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);
    __break(1u);
    return;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_10;
  }

  v5 = OUTLINED_FUNCTION_75_1(v2, v3);

  sub_25BAB69FC(v5);
}

uint64_t *MultiheadAttention.outputBias.setter(uint64_t *result)
{
  v2 = *result;
  if (*(v1 + 122) == 1)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_71_7();
      return Parameter.wrappedValue.setter(v3);
    }

    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_7_55();
    goto LABEL_8;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_19_32();
    OUTLINED_FUNCTION_7_0();
LABEL_8:
    result = OUTLINED_FUNCTION_98(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
    __break(1u);
  }

  return result;
}

uint64_t (*MultiheadAttention.outputBias.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  OUTLINED_FUNCTION_40_0(a1);
  if (*(v2 + 122) != 1)
  {
    *v1 = 0;
    return sub_25BC622FC;
  }

  v3 = OUTLINED_FUNCTION_29(*(v2 + 112));
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v3 < 0)
    {
      OUTLINED_FUNCTION_86_0(v3);
      return sub_25BC62260;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
  __break(1u);
  return result;
}

uint64_t sub_25BC62260(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_31_27();
      return Parameter.wrappedValue.setter(v4);
    }

    goto LABEL_8;
  }

  if (!v2)
  {
LABEL_8:
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_7_55();
    result = OUTLINED_FUNCTION_98(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_46_21();
  Parameter.wrappedValue.setter(v15);
}

void *sub_25BC62300(void *result)
{
  if (*result)
  {
    OUTLINED_FUNCTION_7_0();
    result = OUTLINED_FUNCTION_98(v1, v2, v3, 0xD000000000000037, v4, v5, v6, v7, 399, 0);
    __break(1u);
  }

  return result;
}

uint64_t MultiheadAttention.$outputBias.getter()
{
  if (*(v0 + 122) == 1)
  {
    OUTLINED_FUNCTION_69_9();
  }

  else
  {
    v1 = OUTLINED_FUNCTION_68_10();
  }

  return OUTLINED_FUNCTION_67_8(v1);
}

uint64_t MultiheadAttention.isEveryParameterInitialized.getter()
{
  memcpy(v4, v0, 0x9CuLL);
  if (*(v4[16] + 16))
  {
    v1 = 1;
  }

  else
  {
    v2 = sub_25BC6240C(v4);
    v1 = OUTLINED_FUNCTION_73_8(v2);
  }

  return v1 & 1;
}

BOOL sub_25BC6240C(uint64_t a1)
{
  result = 0;
  v3 = *(*a1 + 32);
  if (v3 < 0 && (v3 & 0xF000000000000007) != 0xF000000000000007)
  {
    result = 0;
    v4 = *(*(a1 + 64) + 32);
    if (v4 < 0 && (v4 & 0xF000000000000007) != 0xF000000000000007)
    {
      result = 0;
      v5 = *(*(a1 + 32) + 32);
      if (v5 < 0 && (v5 & 0xF000000000000007) != 0xF000000000000007)
      {
        result = 0;
        v6 = *(*(a1 + 96) + 32);
        if (v6 < 0 && (v6 & 0xF000000000000007) != 0xF000000000000007)
        {
          if ((*(a1 + 26) & 1) == 0 || (result = 0, v7 = *(*(a1 + 16) + 32), v7 < 0) && (v7 & 0xF000000000000007) != 0xF000000000000007)
          {
            if ((*(a1 + 90) & 1) == 0 || (result = 0, v8 = *(*(a1 + 80) + 32), v8 < 0) && (v8 & 0xF000000000000007) != 0xF000000000000007)
            {
              if ((*(a1 + 58) & 1) == 0 || (result = 0, v9 = *(*(a1 + 48) + 32), v9 < 0) && (v9 & 0xF000000000000007) != 0xF000000000000007)
              {
                if (*(a1 + 122))
                {
                  v10 = *(*(a1 + 112) + 32);
                  return (~v10 & 0xF000000000000007) != 0 && v10 < 0;
                }

                else
                {
                  return 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t MultiheadAttention.embeddingDimension.getter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_64_11(a1, a2, a3, a4, a5, a6, a7, a8, v28, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
  if ((*(v45[16] + 16) & 1) == 0)
  {
    v8 = sub_25BC6240C(v45);
    if ((OUTLINED_FUNCTION_73_8(v8) & 1) == 0)
    {
      v29 = 69;
      OUTLINED_FUNCTION_23_32();
      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_52_14();
  if (v10)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_9:
    v20 = 102;
LABEL_12:
    result = sub_25BCB74CC(v14, v15, v16, v17, v18, v19, v20, 2, v29);
    __break(1u);
    return result;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_9;
  }

  v11 = OUTLINED_FUNCTION_13_7(v9);
  if (!v12)
  {
    sub_25BCB617C();
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28(v21, v22, v23, v24, v25, v26, v27);
  }

  return *(v11 + 32);
}

uint64_t MultiheadAttention.keyDimension.getter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_64_11(a1, a2, a3, a4, a5, a6, a7, a8, v28, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
  if ((*(v46 + 16) & 1) == 0)
  {
    v8 = sub_25BC6240C(v45);
    if ((OUTLINED_FUNCTION_73_8(v8) & 1) == 0)
    {
      v29 = 74;
      OUTLINED_FUNCTION_23_32();
      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_52_14();
  if (v10)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_9:
    v20 = 102;
LABEL_12:
    result = sub_25BCB74CC(v14, v15, v16, v17, v18, v19, v20, 2, v29);
    __break(1u);
    return result;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_9;
  }

  v11 = OUTLINED_FUNCTION_13_7(v9);
  if (v12 <= 1)
  {
    OUTLINED_FUNCTION_59_1(v11);
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28(v21, v22, v23, v24, v25, v26, v27);
  }

  return *(v11 + 40);
}

uint64_t MultiheadAttention.valueDimension.getter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_64_11(a1, a2, a3, a4, a5, a6, a7, a8, v28, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
  if ((*(v46 + 16) & 1) == 0)
  {
    v8 = sub_25BC6240C(v45);
    if ((OUTLINED_FUNCTION_73_8(v8) & 1) == 0)
    {
      v29 = 79;
      OUTLINED_FUNCTION_23_32();
      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_52_14();
  if (v10)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_9:
    v20 = 102;
LABEL_12:
    result = sub_25BCB74CC(v14, v15, v16, v17, v18, v19, v20, 2, v29);
    __break(1u);
    return result;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_9;
  }

  v11 = OUTLINED_FUNCTION_13_7(v9);
  if (v12 <= 1)
  {
    OUTLINED_FUNCTION_59_1(v11);
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28(v21, v22, v23, v24, v25, v26, v27);
  }

  return *(v11 + 40);
}

uint64_t MultiheadAttention.headDimension.getter()
{
  v1 = memcpy(v13, v0, sizeof(v13));
  v3 = *(v0 + 152);
  v14 = *(v0 + 144);
  v2 = v14;
  v15 = v3;
  result = MultiheadAttention.embeddingDimension.getter(v1, v4, v5, v6, v7, v8, v9, v10);
  if (v2)
  {
    if (v2 != -1 || result != 0x8000000000000000)
    {
      result /= v2;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t MultiheadAttention.init(headCount:dropoutProbability:weightInitializer:biasInitializer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, float a4@<S0>)
{
  type metadata accessor for LayerVariableReference();
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_29_29();
  v34 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_29_29();
  v9 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_29_29();
  v10 = OUTLINED_FUNCTION_66();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7530, &unk_25BCD23A0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  OUTLINED_FUNCTION_29_29();
  v12 = OUTLINED_FUNCTION_56_13();
  v33 = sub_25BB1AB04(v12);
  OUTLINED_FUNCTION_29_29();
  v13 = OUTLINED_FUNCTION_56_13();
  v32 = sub_25BB1AB04(v13);
  OUTLINED_FUNCTION_29_29();
  v14 = OUTLINED_FUNCTION_56_13();
  v31 = sub_25BB1AB04(v14);
  OUTLINED_FUNCTION_29_29();
  v15 = OUTLINED_FUNCTION_56_13();
  v16 = sub_25BB1AB04(v15);
  if (a2)
  {
    OUTLINED_FUNCTION_29_29();
    v30 = v16;
    OUTLINED_FUNCTION_17_26();
    v17 = swift_retain_n();
    v29 = sub_25BB1AB04(v17);

    OUTLINED_FUNCTION_29_29();
    v18 = OUTLINED_FUNCTION_17_26();
    v19 = v11;
    v20 = a1;
    v21 = sub_25BB1AB04(v18);

    OUTLINED_FUNCTION_29_29();
    v22 = OUTLINED_FUNCTION_17_26();
    v23 = sub_25BB1AB04(v22);

    OUTLINED_FUNCTION_29_29();
    v24 = OUTLINED_FUNCTION_17_26();
    v25 = sub_25BB1AB04(v24);

    v27 = 1;
    v28 = v23;
    v9 = v21;
    a1 = v20;
    v11 = v19;
    v10 = v25;
    v8 = v29;
    v16 = v30;
  }

  else
  {

    v27 = 0;
    v28 = v34;
  }

  *a3 = v33;
  *(a3 + 8) = 256;
  *(a3 + 16) = v8;
  *(a3 + 24) = 256;
  *(a3 + 26) = v27;
  *(a3 + 32) = v31;
  *(a3 + 40) = 256;
  *(a3 + 48) = v28;
  *(a3 + 56) = 256;
  *(a3 + 58) = v27;
  *(a3 + 64) = v32;
  *(a3 + 72) = 256;
  *(a3 + 80) = v9;
  *(a3 + 88) = 256;
  *(a3 + 90) = v27;
  *(a3 + 96) = v16;
  *(a3 + 104) = 256;
  *(a3 + 112) = v10;
  *(a3 + 120) = 256;
  *(a3 + 122) = v27;
  *(a3 + 128) = v11;
  *(a3 + 136) = 0;
  *(a3 + 144) = a1;
  *(a3 + 152) = a4;
  return result;
}

uint64_t MultiheadAttention.init(headCount:embeddingDimension:keyDimension:valueDimension:dropoutProbability:weightInitializer:biasInitializer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X7>, uint64_t a8@<X8>, float a9@<S0>)
{
  type metadata accessor for LayerVariableReference();
  swift_allocObject();
  v52 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_18_37();
  v15 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_18_37();
  v51 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_18_37();
  v16 = OUTLINED_FUNCTION_66();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7530, &unk_25BCD23A0);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  if (a1 == -1)
  {
    goto LABEL_5;
  }

  v18 = a2;
  if (a1)
  {
    v18 = a2 % a1;
  }

  if (v18)
  {
    OUTLINED_FUNCTION_7_0();
    result = sub_25BCB74CC(v34, v35, v36, 0xD000000000000035, v37, v38, 98, 2, 142);
    __break(1u);
  }

  else
  {
LABEL_5:
    v46 = a4;
    v48 = v17;
    v49 = a1;
    OUTLINED_FUNCTION_18_37();
    v19 = OUTLINED_FUNCTION_56_13();
    v50 = sub_25BB1AB04(v19);
    OUTLINED_FUNCTION_18_37();
    v20 = OUTLINED_FUNCTION_56_13();
    v41 = sub_25BB1AB04(v20);
    OUTLINED_FUNCTION_18_37();
    v21 = OUTLINED_FUNCTION_56_13();
    v40 = sub_25BB1AB04(v21);
    OUTLINED_FUNCTION_18_37();
    v22 = OUTLINED_FUNCTION_56_13();
    v39 = sub_25BB1AB04(v22);
    if (a7)
    {
      OUTLINED_FUNCTION_18_37();
      OUTLINED_FUNCTION_17_26();
      v23 = swift_retain_n();
      v24 = sub_25BB1AB04(v23);

      OUTLINED_FUNCTION_18_37();
      v25 = OUTLINED_FUNCTION_17_26();
      v26 = sub_25BB1AB04(v25);

      OUTLINED_FUNCTION_18_37();
      v27 = OUTLINED_FUNCTION_17_26();
      v15 = sub_25BB1AB04(v27);

      OUTLINED_FUNCTION_18_37();
      v28 = OUTLINED_FUNCTION_17_26();
      v16 = sub_25BB1AB04(v28);

      v29 = 1;
      v30 = v24;
    }

    else
    {
      v29 = 0;
      v30 = v52;
      v26 = v51;
    }

    v53 = v30;
    __src[0] = v50;
    if (a6)
    {
      v31 = a2;
    }

    else
    {
      v31 = a5;
    }

    LOWORD(__src[1]) = 256;
    v32 = a3;
    if (v46)
    {
      v32 = a2;
    }

    v45 = v31;
    v47 = v32;
    __src[2] = v30;
    LOWORD(__src[3]) = 256;
    BYTE2(__src[3]) = v29;
    __src[4] = v40;
    LOWORD(__src[5]) = 256;
    __src[6] = v15;
    LOWORD(__src[7]) = 256;
    BYTE2(__src[7]) = v29;
    __src[8] = v41;
    LOWORD(__src[9]) = 256;
    __src[10] = v26;
    LOWORD(__src[11]) = 256;
    BYTE2(__src[11]) = v29;
    __src[12] = v39;
    LOWORD(__src[13]) = 256;
    __src[14] = v16;
    LOWORD(__src[15]) = 256;
    BYTE2(__src[15]) = v29;
    __src[16] = v48;
    LOBYTE(__src[17]) = 0;
    __src[18] = v49;
    *&__src[19] = a9;
    memcpy(__dst, __src, sizeof(__dst));
    sub_25BB923F0(__src, v56);
    sub_25BC62ECC(a2, v47, v45);

    memcpy(v56, __dst, 0x9CuLL);
    result = sub_25BB9244C(v56);
    *a8 = v50;
    *(a8 + 8) = 256;
    *(a8 + 16) = v53;
    *(a8 + 24) = 256;
    *(a8 + 26) = v29;
    *(a8 + 32) = v40;
    *(a8 + 40) = 256;
    *(a8 + 48) = v15;
    *(a8 + 56) = 256;
    *(a8 + 58) = v29;
    *(a8 + 64) = v41;
    *(a8 + 72) = 256;
    *(a8 + 80) = v26;
    *(a8 + 88) = 256;
    *(a8 + 90) = v29;
    *(a8 + 96) = v39;
    *(a8 + 104) = 256;
    *(a8 + 112) = v16;
    *(a8 + 120) = 256;
    *(a8 + 122) = v29;
    *(a8 + 128) = v48;
    *(a8 + 136) = 0;
    *(a8 + 144) = v49;
    *(a8 + 152) = a9;
  }

  return result;
}

uint64_t sub_25BC62ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3[26];
  v16 = v3[58];
  v17 = v3[90];
  v19 = v3[122];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25BCBAE70;
  *(v7 + 32) = a1;
  *(v7 + 40) = a1;

  sub_25BB1ABC8();

  if (v6 == 1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_25BCBAE50;
    *(v8 + 32) = a2;

    sub_25BB1ABC8();
  }

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE70;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  sub_25BB1ABC8();

  if (v16)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_25BCBAE50;
    *(v10 + 32) = a2;

    sub_25BB1ABC8();
  }

  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_25BCBAE70;
  *(v11 + 32) = a1;
  *(v11 + 40) = a3;

  sub_25BB1ABC8();

  if (v17)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_25BCBAE50;
    *(v12 + 32) = a3;

    sub_25BB1ABC8();
  }

  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25BCBAE70;
  *(v13 + 32) = a1;
  *(v13 + 40) = a1;

  sub_25BB1ABC8();

  if (v19)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_25BCBAE50;
    *(v15 + 32) = a1;

    sub_25BB1ABC8();
  }

  return result;
}

uint64_t MultiheadAttention.initializeParameters(for:)(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *(v1 + 144);
  v5 = *(v1 + 152);
  v6 = OUTLINED_FUNCTION_35_21(*(*a1 + 16));
  v7 = OUTLINED_FUNCTION_35_21(*(v2 + 16));
  v8 = OUTLINED_FUNCTION_35_21(*(v3 + 16));
  if (v4 == -1)
  {
    goto LABEL_5;
  }

  v9 = v6;
  if (v4)
  {
    v9 = v6 % v4;
  }

  if (v9)
  {
    v18 = 173;
    OUTLINED_FUNCTION_7_0();
    v15 = 0xD000000000000041;
  }

  else
  {
LABEL_5:
    if (v6 == v7 && v7 == v8)
    {
      memcpy(__dst, v1, sizeof(__dst));
      v20 = v4;
      v21 = v5;
      return sub_25BC62ECC(v6, v6, v6);
    }

    v18 = 176;
    OUTLINED_FUNCTION_7_0();
  }

  result = sub_25BCB74CC(v12, v13, v14, v15, v16, v17, 98, 2, v18);
  __break(1u);
  return result;
}

uint64_t MultiheadAttention.forward(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v368 = a1[3];
  HIDWORD(v347) = *(a1 + 32);
  v8 = *v3;
  v497 = *(v3 + 8);
  v9 = *(v3 + 32);
  v498 = *(v3 + 24);
  v495 = *(v3 + 40);
  v396 = v8;
  v408 = *(v3 + 64);
  v496 = *(v3 + 56);
  v10 = *(v3 + 72);
  v494 = *(v3 + 88);
  v11 = *(v3 + 137);
  v432 = *(v3 + 96);
  v444 = v9;
  v12 = *(v3 + 120);
  v491 = *(v3 + 104);
  v492 = v12;
  v493 = v10;
  HIDWORD(v420) = *(v3 + 136);
  v490[0] = v11;
  *(v490 + 3) = *(v3 + 140);
  v13 = *(v3 + 144);
  v14 = *(v3 + 152);
  v15 = *(v5 + 16);
  LOBYTE(p_Description) = *(v15 + 160);
  if (!sub_25BAA80BC(p_Description, &unk_286D42270))
  {
    goto LABEL_99;
  }

  v17 = *(*(v6 + 16) + 160);
  if (!sub_25BAA80BC(v17, &unk_286D42270))
  {
    LOBYTE(v489) = v17;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    Description = v13;
    *&v472 = &v489;
    OUTLINED_FUNCTION_27_30(v301, v302, v303, v304, v305, v306, v307, v308, v319, v322, v325, v328, v331, v334, v337, v340, v343, v347, v350, *(&v350 + 1), v357, *(&v357 + 1), v362, v365, v368);
    OUTLINED_FUNCTION_11_47();
    v300 = 317;
    goto LABEL_118;
  }

  v18 = *(*(v7 + 16) + 160);
  if (!sub_25BAA80BC(v18, &unk_286D42270))
  {
    LOBYTE(v489) = v18;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    Description = v13;
    *&v472 = &v489;
    OUTLINED_FUNCTION_27_30(v309, v310, v311, v312, v313, v314, v315, v316, v319, v322, v325, v328, v331, v334, v337, v340, v343, v347, v350, *(&v350 + 1), v357, *(&v357 + 1), v362, v365, v368);
    OUTLINED_FUNCTION_11_47();
    v300 = 318;
    goto LABEL_118;
  }

  v19 = *(*(v15 + 152) + 16);

  if (!OUTLINED_FUNCTION_44_17())
  {
    Description = v19;
    v472 = xmmword_25BCD2360;
    LOBYTE(v473) = 0;
    OUTLINED_FUNCTION_33_26();
    OUTLINED_FUNCTION_11_47();
    v300 = 319;
    goto LABEL_118;
  }

  v20 = *(*(*(v6 + 16) + 152) + 16);
  if (!OUTLINED_FUNCTION_44_17())
  {
    Description = v20;
    v472 = xmmword_25BCD2370;
    LOBYTE(v473) = 0;
    OUTLINED_FUNCTION_33_26();
    OUTLINED_FUNCTION_11_47();
    v300 = 320;
    goto LABEL_118;
  }

  v21 = *(*(*(v7 + 16) + 152) + 16);
  if (!OUTLINED_FUNCTION_44_17())
  {
    Description = v21;
    v472 = xmmword_25BCD2380;
    LOBYTE(v473) = 0;
    OUTLINED_FUNCTION_33_26();
    OUTLINED_FUNCTION_11_47();
    v300 = 321;
    goto LABEL_118;
  }

  v22 = *(*(v5 + 16) + 152);
  v23 = v22[2];
  if (!v23)
  {
    OUTLINED_FUNCTION_13_43();
LABEL_114:
    OUTLINED_FUNCTION_59_11();
    goto LABEL_117;
  }

  p_Description = v432;
  if (v23 == 1)
  {
    *(&v472 + 1) = 0;
    Description = 1;
LABEL_113:
    *&v472 = 0;
    OUTLINED_FUNCTION_61_10();
    goto LABEL_114;
  }

  if (v23 <= 2)
  {
    v317 = 2;
LABEL_112:
    *(&v472 + 1) = 0;
    Description = v317;
    goto LABEL_113;
  }

  v343 = a2;
  v24 = *(*(v6 + 16) + 152);
  v25 = *(v24 + 16);
  if (v25 <= 1)
  {
    v472 = 0uLL;
    Description = 1;
    LOBYTE(v473) = -1;
    v475 = 0uLL;
    v474 = v25;
    LOBYTE(v476) = -1;
    v481.n128_u8[4] = 4;
LABEL_117:
    sub_25BCB617C();
    OUTLINED_FUNCTION_17_4();
LABEL_118:
    sub_25BADDD28(v294, v295, v296, v297, v298, v299, v300);
  }

  v372 = v22[5];
  v384 = v22[4];
  v340 = v22[6];
  v26 = *(v24 + 40);

  Tensor.transposed(permutation:)(&unk_286D44850, &v489);

  Tensor.transposed(permutation:)(&unk_286D44888, &v488);

  Tensor.transposed(permutation:)(&unk_286D448C0, &v487.Description);

  Description = v489;
  v27 = *(v396 + 32);
  OUTLINED_FUNCTION_78_9();
  if (v117)
  {
LABEL_95:
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_97:
    v285 = 102;
LABEL_98:
    sub_25BCB74CC(v279, v280, v281, v282, v283, v284, v285, 2, v319);
    __break(1u);
LABEL_99:
    LOBYTE(v489) = p_Description;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    Description = v13;
    *&v472 = &v489;
    OUTLINED_FUNCTION_27_30(v286, v287, v288, v289, v290, v291, v292, v293, v319, v322, v325, v328, v331, v334, v337, v340, v343, v347, v350, *(&v350 + 1), v357, *(&v357 + 1), v362, v365, v368);
    OUTLINED_FUNCTION_11_47();
    v300 = 316;
    goto LABEL_118;
  }

  if ((v27 & 0x8000000000000000) == 0)
  {
    goto LABEL_96;
  }

  v487.Kind = v27 & 0x7FFFFFFFFFFFFFFFLL;

  v28 = sub_25BAB3020(v27);
  OUTLINED_FUNCTION_36_20(v28, v29, v30, v31, v32, v33, v34, v35, v319, v322, v325, v328, v331, v334, v337, v340, v343, v347, v350, *(&v350 + 1), v357, *(&v357 + 1), v362, v365, v368, v372, v384, v396, v408, v420, v432, v444, v456, v468, v469, v470, Description, v472, *(&v472 + 1), v473, v474, v475, *(&v475 + 1), v476, v477, v478, *(&v478 + 1), v479, v480, v481.n128_i64[0], v481.n128_i64[1], v482, *(&v482 + 1), v483, v484, v485, v486, v487);

  Kind = v486;
  Description = v397;
  v472 = *(v3 + 8);
  v473 = *(v3 + 24);
  v474 = v445;
  v475 = *(v3 + 40);
  OUTLINED_FUNCTION_62_8();
  v478 = *(v3 + 72);
  v479 = *(v3 + 88);
  v480 = p_Description;
  v37 = *(v3 + 104);
  v482 = *(v3 + 120);
  v481 = v37;
  LOBYTE(v483) = BYTE4(v421);
  HIDWORD(v483) = *(v3 + 140);
  *(&v483 + 1) = *(v3 + 137);
  v484 = v13;
  *&v485 = v14;
  MultiheadAttention.queryBias.getter(&v470);
  if (v470)
  {
    OUTLINED_FUNCTION_63_9(v38, v39, v40, v41, v42, v43, v44, v45, v319, v322, v325, v328, v331, v334, v337, v340, v343, v347, v350, *(&v350 + 1), v357, *(&v357 + 1), v362, v365, v368, v373, v385, v397, v409, v421, v433, v445, v457, v470, SHIDWORD(v470), Kind);

    Kind = v487.Kind;
  }

  else
  {
  }

  v489 = Kind;
  Description = v488;
  v46 = *(v445 + 32);
  OUTLINED_FUNCTION_78_9();
  v47 = v397;
  v48 = v409;
  if (v117)
  {
    goto LABEL_95;
  }

  if ((v46 & 0x8000000000000000) == 0)
  {
    goto LABEL_96;
  }

  v487.Kind = v46 & 0x7FFFFFFFFFFFFFFFLL;

  v49 = sub_25BAB3020(v46);
  OUTLINED_FUNCTION_36_20(v49, v50, v51, v52, v53, v54, v55, v56, v319, v322, v325, v328, v331, v334, v337, v340, v343, v347, v350, *(&v350 + 1), v357, *(&v357 + 1), v362, v365, v368, v373, v385, v397, v409, v421, v433, v445, v457, v468, v469, v470, Description, v472, *(&v472 + 1), v473, v474, v475, *(&v475 + 1), v476, v477, v478, *(&v478 + 1), v479, v480, v481.n128_i64[0], v481.n128_i64[1], v482, *(&v482 + 1), v483, v484, v485, v486, v487);

  v57 = v486;
  Description = v47;
  OUTLINED_FUNCTION_1_70();
  v476 = v496;
  v477 = v48;
  v58 = OUTLINED_FUNCTION_45_17();
  OUTLINED_FUNCTION_6_55(v58, v59);
  MultiheadAttention.keyBias.getter(&v470);
  if (v470)
  {
    OUTLINED_FUNCTION_63_9(v60, v61, v62, v63, v64, v65, v66, v67, v319, v322, v325, v328, v331, v334, v337, v340, v343, v347, v350, *(&v350 + 1), v357, *(&v357 + 1), v362, v365, v368, v374, v386, v398, v410, v422, v434, v446, v458, v470, SHIDWORD(v470), v57);

    v57 = v487.Kind;
  }

  v488 = v57;
  Description = v487.Description;
  v68 = *(v48 + 32);
  OUTLINED_FUNCTION_78_9();
  if (v117)
  {
    goto LABEL_95;
  }

  if ((v68 & 0x8000000000000000) == 0)
  {
LABEL_96:
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_97;
  }

  v487.Kind = v68 & 0x7FFFFFFFFFFFFFFFLL;

  v69 = sub_25BAB3020(v68);
  OUTLINED_FUNCTION_36_20(v69, v70, v71, v72, v73, v74, v75, v76, v319, v322, v325, v328, v331, v334, v337, v340, v343, v347, v350, *(&v350 + 1), v357, *(&v357 + 1), v362, v365, v368, v374, v386, v398, v410, v422, v434, v446, v458, v468, v469, v470, Description, v472, *(&v472 + 1), v473, v474, v475, *(&v475 + 1), v476, v477, v478, *(&v478 + 1), v479, v480, v481.n128_i64[0], v481.n128_i64[1], v482, *(&v482 + 1), v483, v484, v485, v486, v487);

  p_Description = v486;
  Description = v47;
  OUTLINED_FUNCTION_1_70();
  v476 = v496;
  v477 = v48;
  v77 = OUTLINED_FUNCTION_3_55();
  OUTLINED_FUNCTION_6_55(v77, v78);
  MultiheadAttention.valueBias.getter(&v470);
  if (v470)
  {
    OUTLINED_FUNCTION_63_9(v79, v80, v81, v82, v83, v84, v85, v86, v319, v322, v325, v328, v331, v334, v337, v340, v343, v347, v350, *(&v350 + 1), v357, *(&v357 + 1), v362, v365, v368, v375, v387, v399, v411, v423, v435, v447, v459, v470, SHIDWORD(v470), p_Description);

    p_Description = v487.Kind;
  }

  v487.Description = p_Description;
  v87 = v387;
  v88 = (v387 * v13) >> 64;
  if (v368)
  {
    v89 = *(v368[1].Kind + 152);
    v90 = *(v89 + 16);
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    if (v90 == 2)
    {
      v92 = OUTLINED_FUNCTION_31(v91);
      *(v92 + 16) = xmmword_25BCBAE70;
      *(v92 + 32) = v375;
      *(v92 + 40) = v26;
      v93 = sub_25BAB5C48(v89, v92);
      swift_setDeallocating();
      swift_deallocClassInstance();
      if (v93)
      {
        v487.Kind = v368;
        Tensor.expandingShape(at:)();

        v368 = Description;
        v87 = v387;
        goto LABEL_31;
      }

      LODWORD(v322) = 0;
      v318 = 342;
LABEL_122:
      v319 = v318;
      OUTLINED_FUNCTION_23_32();
      goto LABEL_98;
    }

    v94 = OUTLINED_FUNCTION_32_11(v91);
    *(v94 + 16) = xmmword_25BCBAE90;
    if (v88 != (v387 * v13) >> 63)
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    *(v94 + 32) = v387 * v13;
    *(v94 + 40) = v375;
    *(v94 + 48) = v26;
    v95 = sub_25BAB5C48(v89, v94);
    swift_setDeallocating();
    swift_deallocClassInstance();
    v87 = v387;
    if ((v95 & 1) == 0)
    {
      LODWORD(v322) = 0;
      v318 = 345;
      goto LABEL_122;
    }
  }

  else
  {
    v368 = 0;
  }

LABEL_31:
  v487.Kind = Kind;
  v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v96 = OUTLINED_FUNCTION_32_11(v365);
  v357 = xmmword_25BCBAE90;
  *(v96 + 16) = xmmword_25BCBAE90;
  *(v96 + 32) = v375;
  v97 = v87 * v13;
  if (v88 != (v87 * v13) >> 63)
  {
    __break(1u);
    goto LABEL_86;
  }

  *(v96 + 40) = v97;
  v98 = v399;
  Description = v399;
  OUTLINED_FUNCTION_1_70();
  OUTLINED_FUNCTION_62_8();
  v99 = OUTLINED_FUNCTION_3_55();
  OUTLINED_FUNCTION_6_55(v99, v100);

  MultiheadAttention.embeddingDimension.getter(v101, v102, v103, v104, v105, v106, v107, v108);
  if (!v13)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  OUTLINED_FUNCTION_50_16();
  v117 = v117 && v13 == -1;
  if (v117)
  {
    goto LABEL_88;
  }

  OUTLINED_FUNCTION_54_15(v109, v110, v111, v112, v113, v114, v115, v116, v319, v322, v325, v328, v331, v334, v337, v340, v343, v347, v350, *(&v350 + 1), 3, 6, v362, v365, v368, v375, v387, v399, v411, v423, v435, v447, v459, v468, v469, v470, Description, v472, *(&v472 + 1), v473, v474, v475, *(&v475 + 1), v476, v477, v478, *(&v478 + 1), v479, v480, v481.n128_i64[0], v481.n128_i64[1], v482, *(&v482 + 1), v483, v484, v485, v486);

  OUTLINED_FUNCTION_90_5(&unk_286D44920, v118, v119, v120, v121, v122, v123, v124, v320, v323, v326, v329, v332, v335, v338, v341, v344, v348, v351, v354, v358, v360, v363, v366, v369, v376, v388, v400, v412, v424, v436, v448, v460, v468, v469, v470, Description);
  v125 = v486;

  v126 = Description;
  v489 = Description;
  v487.Kind = v57;
  *(OUTLINED_FUNCTION_32_11(v365) + 16) = v357;
  OUTLINED_FUNCTION_82_8();
  if (!v128)
  {
    goto LABEL_109;
  }

  *(v127 + 32) = v125[2].Kind;
  *(v127 + 40) = v97;
  Description = v98;
  OUTLINED_FUNCTION_1_70();
  OUTLINED_FUNCTION_62_8();
  v129 = OUTLINED_FUNCTION_3_55();
  OUTLINED_FUNCTION_6_55(v129, v130);

  MultiheadAttention.embeddingDimension.getter(v131, v132, v133, v134, v135, v136, v137, v138);
  OUTLINED_FUNCTION_50_16();
  if (v117 && v13 == -1)
  {
    goto LABEL_89;
  }

  OUTLINED_FUNCTION_54_15(v139, v140, v141, v142, v143, v144, v145, v146, v319, v322, v325, v328, v331, v334, v337, v340, v343, v347, v350, *(&v350 + 1), v357, *(&v357 + 1), v362, v365, v368, v377, v389, v401, v413, v425, v437, v449, v461, v468, v469, v470, Description, v472, *(&v472 + 1), v473, v474, v475, *(&v475 + 1), v476, v477, v478, *(&v478 + 1), v479, v480, v481.n128_i64[0], v481.n128_i64[1], v482, *(&v482 + 1), v483, v484, v485, v486);

  OUTLINED_FUNCTION_90_5(&unk_286D44958, v148, v149, v150, v151, v152, v153, v154, v321, v324, v327, v330, v333, v336, v339, v342, v345, v349, v352, v355, v359, v361, v364, v367, v370, v378, v390, v402, v414, v426, v438, v450, v462, v468, v469, v470, Description);
  v155 = v486;

  v156 = Description;
  v488 = Description;
  v487.Kind = p_Description;
  *(OUTLINED_FUNCTION_32_11(v365) + 16) = v357;
  OUTLINED_FUNCTION_82_8();
  if (!v158)
  {
LABEL_109:
    OUTLINED_FUNCTION_13_43();
    OUTLINED_FUNCTION_59_11();
LABEL_116:

    goto LABEL_117;
  }

  v159 = v157;
  v157[2].Kind = v155[2].Kind;
  v157[2].Description = v97;
  Description = v98;
  OUTLINED_FUNCTION_1_70();
  OUTLINED_FUNCTION_62_8();
  v160 = OUTLINED_FUNCTION_3_55();
  OUTLINED_FUNCTION_6_55(v160, v161);

  MultiheadAttention.embeddingDimension.getter(v162, v163, v164, v165, v166, v167, v168, v169);
  OUTLINED_FUNCTION_50_16();
  if (v117 && v13 == -1)
  {
    goto LABEL_90;
  }

  v159[3].Kind = v170 / v13;
  Description = v159;
  Tensor.reshaped(to:)(&Description, &v486);

  OUTLINED_FUNCTION_90_5(&unk_286D44990, v172, v173, v174, v175, v176, v177, v178, v319, v322, v325, v328, v331, v334, v337, v340, v343, v347, v350, *(&v350 + 1), v357, *(&v357 + 1), v362, v365, v368, v379, v391, v403, v415, v427, v439, v451, v463, v468, v469, v470, Description);
  v179 = v486;

  v487.Description = Description;
  v337 = v156;
  v180 = *(v156[1].Kind + 152);
  if (*(v180 + 16) <= 1uLL)
  {
    v317 = 1;
    goto LABEL_112;
  }

  v181 = *(v180 + 40);
  v331 = Description;
  v334 = v181;
  if (v371)
  {
    OUTLINED_FUNCTION_82_8();
    if (!v182)
    {
      OUTLINED_FUNCTION_13_43();
      OUTLINED_FUNCTION_59_11();
      swift_retain_n();
      goto LABEL_117;
    }

    if (v182 == 3 && v179[2].Kind == 1)
    {
      v487.Kind = v371;
      Tensor.expandingShape(at:)();
    }

    else
    {
      v184 = OUTLINED_FUNCTION_43_18();
      *(v184 + 16) = xmmword_25BCBDF80;
      *(v184 + 32) = v87;
      *(v184 + 40) = v13;
      *(v184 + 48) = -1;
      *(v184 + 56) = v181;
      OUTLINED_FUNCTION_51_14(v184, v185, v186, v187, v188, v189, v190, v191, v319, v322, v325, v328, v331, v181, v156, v340, v343, v347, v353, v356, v357, *(&v357 + 1), v362, v365, v371, v380, v392, v404, v416, v428, v440, v452, v464, v468, v469, v470, Description, v472, *(&v472 + 1), v473, v474, v475, *(&v475 + 1), v476, v477, v478, *(&v478 + 1), v479, v480, v481.n128_i64[0], v481.n128_i64[1], v482, *(&v482 + 1), v483, v484, v485, v184);
    }

    v368 = Description;
  }

  else
  {
    v368 = 0;
  }

  v487.Kind = v126;
  v192 = swift_allocObject();
  v350 = xmmword_25BCBDF80;
  *(v192 + 16) = xmmword_25BCBDF80;
  *(v192 + 32) = v87;
  *(v192 + 40) = v13;
  *(v192 + 48) = v380;
  v193 = v404;
  Description = v404;
  OUTLINED_FUNCTION_1_70();
  v194 = v87;
  v195 = v416;
  v476 = v496;
  v477 = v416;
  v196 = OUTLINED_FUNCTION_45_17();
  p_Description = &Description;
  v482 = v197;
  v481 = v196;
  v198 = HIDWORD(v428);
  OUTLINED_FUNCTION_25_30();

  MultiheadAttention.embeddingDimension.getter(v199, v200, v201, v202, v203, v204, v205, v206);
  OUTLINED_FUNCTION_50_16();
  if (v117 && v13 == -1)
  {
    goto LABEL_91;
  }

  *(v192 + 56) = v207 / v13;
  OUTLINED_FUNCTION_51_14(v207, v208, v209, v210, v211, v212, v213, v214, v319, v322, v325, v328, v331, v334, v337, v340, v343, v347, 4, 8, v357, *(&v357 + 1), v362, v365, v368, v380, v392, v404, v416, v428, v440, v452, v464, v468, v469, v470, Description, v472, *(&v472 + 1), v473, v474, v475, *(&v475 + 1), v476, v477, v478, *(&v478 + 1), v479, v480, v481.n128_i64[0], v481.n128_i64[1], v482, *(&v482 + 1), v483, v484, v485, v192);

  v328 = Description;
  v489 = Description;
  v216 = OUTLINED_FUNCTION_43_18();
  *(v216 + 16) = v350;
  *(v216 + 32) = v194;
  *(v216 + 40) = v13;
  v217 = v334;
  *(v216 + 48) = v334;
  Description = v193;
  OUTLINED_FUNCTION_1_70();
  v476 = v496;
  v477 = v195;
  v218 = OUTLINED_FUNCTION_3_55();
  v482 = v219;
  v481 = v218;
  OUTLINED_FUNCTION_25_30();

  MultiheadAttention.embeddingDimension.getter(v220, v221, v222, v223, v224, v225, v226, v227);
  OUTLINED_FUNCTION_50_16();
  if (v117 && v13 == -1)
  {
    goto LABEL_92;
  }

  *(v216 + 56) = v228 / v13;
  OUTLINED_FUNCTION_51_14(v228, v229, v230, v231, v232, v233, v234, v235, v319, v322, v325, v328, v331, v334, v337, v340, v343, v347, v350, *(&v350 + 1), v357, *(&v357 + 1), v362, v365, v368, v381, v393, v405, v417, v429, v441, v453, v465, v468, v469, v470, Description, v472, *(&v472 + 1), v473, v474, v475, *(&v475 + 1), v476, v477, v478, *(&v478 + 1), v479, v480, v481.n128_i64[0], v481.n128_i64[1], v482, *(&v482 + 1), v483, v484, v485, v216);

  v237 = Description;
  v488 = Description;
  v238 = OUTLINED_FUNCTION_43_18();
  *(v238 + 16) = v350;
  *(v238 + 32) = v394;
  *(v238 + 40) = v13;
  *(v238 + 48) = v217;
  Description = v193;
  OUTLINED_FUNCTION_1_70();
  v476 = v496;
  v477 = v195;
  v239 = OUTLINED_FUNCTION_3_55();
  v482 = v240;
  v481 = v239;
  OUTLINED_FUNCTION_25_30();

  MultiheadAttention.embeddingDimension.getter(v241, v242, v243, v244, v245, v246, v247, v248);
  OUTLINED_FUNCTION_50_16();
  if (v117 && v13 == -1)
  {
    goto LABEL_93;
  }

  *(v238 + 56) = v249 / v13;
  OUTLINED_FUNCTION_51_14(v249, v250, v251, v252, v253, v254, v255, v256, v319, v322, v325, v328, v331, v334, v337, v340, v343, v347, v350, *(&v350 + 1), v357, *(&v357 + 1), v362, v365, v368, v382, v394, v406, v418, v430, v442, v454, v466, v468, v469, v470, Description, v472, *(&v472 + 1), v473, v474, v475, *(&v475 + 1), v476, v477, v478, *(&v478 + 1), v479, v480, v481.n128_i64[0], v481.n128_i64[1], v482, *(&v482 + 1), v483, v484, v485, v238);

  LOBYTE(p_Description) = Description;
  v487.Description = Description;
  v486 = v328;
  v469 = Description;
  v470 = v237;
  v468 = v368;
  if (v198)
  {
    if (v198 == 1)
    {

      v258 = BYTE4(v347);
      v259 = v365;
LABEL_75:
      v261 = v14;
      goto LABEL_78;
    }

    v261 = 0.0;
    v258 = BYTE4(v347);
    v259 = v365;
  }

  else
  {
    type metadata accessor for ContextManager();

    sub_25BAA49B8();
    sub_25BAA4A5C(&Description);

    v258 = BYTE4(v347);
    v259 = v365;
    if (*(&v478 + 1))
    {
      v260 = *(*(&v478 + 1) + 24);
      sub_25BAA4AF4(&Description);
      v261 = 0.0;
      if ((v260 & 1) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_75;
    }

    sub_25BAA4AF4(&Description);
    v261 = 0.0;
  }

LABEL_78:
  scaledDotProductAttention(query:key:value:attentionMask:dropoutProbability:dropoutSeed:isCausal:)(&v486, &v470, &v469, &v468, v258, &v487, v261);

  Description = v487.Kind;

  Tensor.transposed(permutation:)(&unk_286D449F0, &v486);

  v262 = OUTLINED_FUNCTION_31(v259);
  *(v262 + 16) = xmmword_25BCBAE70;
  if ((v395 * v383) >> 64 != (v395 * v383) >> 63)
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  *(v262 + 32) = v395 * v383;
  *(v262 + 40) = v340;
  v470 = v262;
  Tensor.reshaped(to:)(&v470, &Description);

  v487.Kind = Description;
  v263 = *(v443 + 32);
  OUTLINED_FUNCTION_78_9();
  if (v117)
  {
    goto LABEL_95;
  }

  if ((v263 & 0x8000000000000000) == 0)
  {
    goto LABEL_96;
  }

  v486 = (v263 & 0x7FFFFFFFFFFFFFFFLL);

  sub_25BAB3020(v263);
  matmul(_:transposed:_:transposed:)(&Description, 0, &v486, 1, &v470);

  v264 = v470;
  Description = v193;
  OUTLINED_FUNCTION_1_70();
  OUTLINED_FUNCTION_62_8();
  v265 = OUTLINED_FUNCTION_3_55();
  v482 = v266;
  v481 = v265;
  LOBYTE(v483) = BYTE4(v431);
  HIDWORD(v483) = *(v490 + 3);
  *(&v483 + 1) = v490[0];
  v484 = v13;
  *&v485 = v14;
  MultiheadAttention.outputBias.getter(&v469);
  v267 = v469;
  if (v469)
  {
    v467 = v469;
    v468 = v264;
    static Tensor.+ infix(_:_:)();

    v264 = v486;
  }

  v486 = v264;
  v268 = OUTLINED_FUNCTION_32_11(v259);
  *(v268 + 16) = v357;
  *(v268 + 32) = v383;
  *(v268 + 40) = v395;
  OUTLINED_FUNCTION_82_8();
  if (v270 <= 1)
  {
    v472 = 0uLL;
    Description = 1;
    OUTLINED_FUNCTION_61_10();
    OUTLINED_FUNCTION_59_11();
    goto LABEL_116;
  }

  *(v269 + 48) = v267[2].Description;
  v470 = v269;

  Tensor.reshaped(to:)(&v470, &Description);

  v486 = Description;
  v487.Kind = Description;

  OUTLINED_FUNCTION_90_5(&unk_286D44A30, v271, v272, v273, v274, v275, v276, v277, v319, v322, v325, v328, v331, v334, v337, v340, v343, v347, v350, *(&v350 + 1), v357, *(&v357 + 1), v362, v365, v368, v383, v395, v407, v419, v431, v443, v455, v467, v468, v469, v470, Description);

  *v346 = Description;
  return result;
}

BOOL sub_25BC6447C@<W0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  v10 = *a3;
  v11 = *a4;
  v12 = *(*a1 + 16);
  if (!sub_25BAA80BC(*(v12 + 160), &unk_286D42270))
  {
    sub_25BC8FACC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v16 = 241;
    goto LABEL_13;
  }

  if (!sub_25BAA80BC(*(*(v9 + 16) + 160), &unk_286D42270))
  {
    sub_25BC8FACC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v16 = 242;
    goto LABEL_13;
  }

  if (!sub_25BAA80BC(*(*(v10 + 16) + 160), &unk_286D42270))
  {
    sub_25BC8FACC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v16 = 243;
    goto LABEL_13;
  }

  if (!sub_25BAB74D0(*(*(v12 + 152) + 16), 3, 0, 0))
  {
    v16 = 244;
    goto LABEL_13;
  }

  if (!sub_25BAB74D0(*(*(*(v9 + 16) + 152) + 16), 3, 0, 0))
  {
    v16 = 245;
    goto LABEL_13;
  }

  result = sub_25BAB74D0(*(*(*(v10 + 16) + 152) + 16), 3, 0, 0);
  if (!result)
  {
    v16 = 246;
    goto LABEL_13;
  }

  if (v11)
  {
    v14 = 0;
    while (v14 != 3)
    {
      v15 = &unk_286D45C48 + v14++;
      if (v15[32] == *(*(v11 + 16) + 160))
      {
        goto LABEL_11;
      }
    }

    sub_25BC8FACC();

    v16 = 249;
LABEL_13:
    sub_25BADDD28("init(query:key:value:attentionMask:isCausal:)", 45, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Layers/Attention.swift", 98, 2, v16);
  }

LABEL_11:
  *a6 = v8;
  *(a6 + 8) = v9;
  *(a6 + 16) = v10;
  *(a6 + 24) = v11;
  *(a6 + 32) = a5 & 1;
  return result;
}

double MultiheadAttention.Input.init(query:key:value:attentionMask:)()
{
  OUTLINED_FUNCTION_70_7();
  v11 = OUTLINED_FUNCTION_20_33(v0, v1, v2, v3, v4, v5, v6, v7, *v3, v10, v9, v8);
  v16 = sub_25BC6447C(v11, v12, v13, v14, 0, v15);
  *&result = OUTLINED_FUNCTION_26_31(v16, v17, v18, v19, v20, v21, v22, v23, v24, v27, v28, v29, v30, v25, v31, v32, v33).n128_u64[0];
  return result;
}

double MultiheadAttention.Input.init(query:key:value:isCausal:)()
{
  OUTLINED_FUNCTION_70_7();
  v11 = OUTLINED_FUNCTION_20_33(v0, v1, v2, v3, v4, v5, v6, v7, 0, v10, v9, v8);
  v17 = sub_25BC6447C(v11, v12, v13, v14, v15, v16);
  *&result = OUTLINED_FUNCTION_26_31(v17, v18, v19, v20, v21, v22, v23, v24, v25, v28, v29, v30, v31, v26, v32, v33, v34).n128_u64[0];
  return result;
}

double MultiheadAttention.Input.init(sequence:attentionMask:)(uint64_t *a1, uint64_t *a2)
{
  v30 = *a1;
  v32 = *a1;
  v26 = *a2;
  v28 = *a1;
  v2 = swift_retain_n();
  v10 = OUTLINED_FUNCTION_20_33(v2, v3, v4, v5, v6, v7, v8, v9, v26, v28, v30, v32);
  v15 = sub_25BC6447C(v10, v11, v12, v13, 0, v14);
  *&result = OUTLINED_FUNCTION_26_31(v15, v16, v17, v18, v19, v20, v21, v22, v23, v27, v29, v31, v33, v24, v34, v35, v36).n128_u64[0];
  return result;
}

__n128 MultiheadAttention.Input.init(sequence:isCausal:)@<Q0>(uint64_t *a1@<X0>, char a2@<W1>, __n128 *a3@<X8>)
{
  v20 = *a1;
  v21 = *a1;
  v19 = *a1;
  v5 = swift_retain_n();
  v13 = OUTLINED_FUNCTION_20_33(v5, v6, v7, v8, v9, v10, v11, v12, 0, v19, v20, v21);
  sub_25BC6447C(v13, v14, v15, v16, a2, v17);
  result = v22;
  *a3 = v22;
  a3[1] = v23;
  a3[2].n128_u8[0] = v24;
  return result;
}

void MultiheadAttention.callAsFunction(sequence:attentionMask:)()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_81_8(v0);
  swift_retain_n();

  v1 = OUTLINED_FUNCTION_18_40();
  sub_25BC6447C(v1, v2, v3, v4, 0, v5);
  OUTLINED_FUNCTION_15_41();
  OUTLINED_FUNCTION_49_19();
  OUTLINED_FUNCTION_79_6();
  if ((v6 & 1) == 0 && !OUTLINED_FUNCTION_48_18())
  {
    OUTLINED_FUNCTION_89_8();
  }

  OUTLINED_FUNCTION_77_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_21_34();
  OUTLINED_FUNCTION_30_27();

  OUTLINED_FUNCTION_74_8();
  OUTLINED_FUNCTION_10_16();
}

void MultiheadAttention.callAsFunction(sequence:isCausal:)()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  OUTLINED_FUNCTION_81_8(v2);
  swift_retain_n();
  v3 = OUTLINED_FUNCTION_18_40();
  sub_25BC6447C(v3, v4, v5, v6, v1, v7);
  OUTLINED_FUNCTION_15_41();
  OUTLINED_FUNCTION_49_19();
  OUTLINED_FUNCTION_79_6();
  if ((v8 & 1) == 0 && !OUTLINED_FUNCTION_48_18())
  {
    OUTLINED_FUNCTION_89_8();
  }

  OUTLINED_FUNCTION_77_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_21_34();
  OUTLINED_FUNCTION_30_27();

  OUTLINED_FUNCTION_74_8();
  OUTLINED_FUNCTION_10_16();
}

void MultiheadAttention.callAsFunction(query:key:value:attentionMask:)()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_81_8(v0);

  v1 = OUTLINED_FUNCTION_18_40();
  sub_25BC6447C(v1, v2, v3, v4, 0, v5);
  OUTLINED_FUNCTION_15_41();
  OUTLINED_FUNCTION_49_19();
  OUTLINED_FUNCTION_79_6();
  if ((v6 & 1) == 0 && !OUTLINED_FUNCTION_48_18())
  {
    OUTLINED_FUNCTION_89_8();
  }

  OUTLINED_FUNCTION_77_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_21_34();
  OUTLINED_FUNCTION_30_27();

  OUTLINED_FUNCTION_74_8();
  OUTLINED_FUNCTION_10_16();
}

void MultiheadAttention.callAsFunction(query:key:value:isCausal:)()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  OUTLINED_FUNCTION_81_8(v2);

  v3 = OUTLINED_FUNCTION_18_40();
  sub_25BC6447C(v3, v4, v5, v6, v1, v7);
  OUTLINED_FUNCTION_15_41();
  OUTLINED_FUNCTION_49_19();
  OUTLINED_FUNCTION_79_6();
  if ((v8 & 1) == 0 && !OUTLINED_FUNCTION_48_18())
  {
    OUTLINED_FUNCTION_89_8();
  }

  OUTLINED_FUNCTION_77_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_21_34();
  OUTLINED_FUNCTION_30_27();

  OUTLINED_FUNCTION_74_8();
  OUTLINED_FUNCTION_10_16();
}

uint64_t scaledDotProductAttention(query:key:value:attentionMask:dropoutProbability:dropoutSeed:isCausal:)@<X0>(ValueMetadata **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, ValueMetadata **a4@<X3>, char a5@<W6>, ValueMetadata *a6@<X8>, float a7@<S0>)
{
  v10 = *a1;
  v11 = *a2;
  v12 = *a3;
  v13 = *a4;
  Kind = (*a1)[1].Kind;
  v15 = *(Kind + 160);
  v16 = sub_25BAA80BC(*(Kind + 160), &unk_286D42270);
  if (!v16)
  {
    OUTLINED_FUNCTION_65_7(v16);
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v324 = a6;
    v325 = v15;
    OUTLINED_FUNCTION_14_40();
    OUTLINED_FUNCTION_17_42();
    v210 = 420;
    goto LABEL_45;
  }

  v17 = *(v11 + 16);
  v18 = *(v17 + 160);
  v19 = sub_25BAA80BC(*(v17 + 160), &unk_286D42270);
  if (!v19)
  {
    OUTLINED_FUNCTION_65_7(v19);
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v324 = a6;
    v325 = v18;
    OUTLINED_FUNCTION_14_40();
    OUTLINED_FUNCTION_17_42();
    v210 = 421;
    goto LABEL_45;
  }

  v20 = *(v12 + 16);
  v21 = *(v20 + 160);
  v22 = sub_25BAA80BC(*(v20 + 160), &unk_286D42270);
  if (!v22)
  {
    OUTLINED_FUNCTION_65_7(v22);
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v324 = a6;
    v325 = v21;
    OUTLINED_FUNCTION_14_40();
    OUTLINED_FUNCTION_17_42();
    v210 = 422;
    goto LABEL_45;
  }

  v23 = Tensor.scalarType.getter(v22);
  v24 = dynamic_cast_existential_1_unconditional(v23, v23, &protocol descriptor for TensorFloatingPointScalar);
  v285 = v25;
  v294 = v24;
  OUTLINED_FUNCTION_9_51();
  v26 = MEMORY[0x277D84F90];
  LOBYTE(v313) = v27;
  v36 = OUTLINED_FUNCTION_58_11(v28, v29, v30, v31, v32, v33, v34, v35, v222, v231, v240, v248, v256, v266, v275, v285, v294, v11, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, MEMORY[0x277D84F90], v323.Description, v12);
  v38 = sub_25BAA51C8(v36, v37);
  v45 = OUTLINED_FUNCTION_83_8(v38, &unk_286D447D8, v39, v40, v41, v42, v43, v44, v223, v232, v241, v249, v257, v267, v276, v286, v295, v303, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323.Kind);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v45, v46, v47, v48, v49);
  sub_25BA9C2C8(&v324);
  v50 = v10[1].Kind;
  v51 = *(v50 + 152);
  v52 = *(v51 + 16);
  if (!v52)
  {
    OUTLINED_FUNCTION_60_10();
    v327 = 0;
    LOBYTE(v330) = v211;
    BYTE4(v335) = 4;
    goto LABEL_41;
  }

  Description = v323.Description;
  v54 = *(v51 + 8 * v52 + 24);
  v55 = *(v50 + 160);
  OUTLINED_FUNCTION_9_51();
  v323.Kind = v26;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_25BCBAE50;
  *(v57 + 32) = v54;
  LOBYTE(v313) = v55;
  v65 = OUTLINED_FUNCTION_58_11(v57, v58, v59, v60, v61, v62, v63, v64, v224, v233, v242, v250, v258, v268, v277, v287, v296, v304, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323.Kind, v323.Description, v324);
  v67 = sub_25BAA51C8(v65, v66);
  v75 = OUTLINED_FUNCTION_83_8(v67, v68, v69, v70, v71, v72, v73, v74, v225, v234, v243, v251, v259, v269, v278, v288, v297, v305, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323.Kind);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v75, v57, v76, v77, v78);
  sub_25BA9C2C8(&v324);
  v324 = v323.Description;
  v79 = sqrt(_:)(&v323.Description, &v324);
  OUTLINED_FUNCTION_80_8(v79, v80, v81, v82, v83, v84, v85, v86, v226, v235, v244, v252, v260, v270, v279, v289, v298, v306, v311, v312, v313, v314, v315, Description);
  static Tensor./ infix(_:_:)();

  v88 = v324;
  if (a5)
  {
    v262 = v324;
    v89 = v10[1].Kind;
    v90 = *(v307 + 16);
    v91 = *(v90 + 160);
    if (*(v89 + 160) != v91)
    {
      v212 = OUTLINED_FUNCTION_65_7(v87);
      v214 = v213;
      LOBYTE(v323.Description) = v91;
      v215 = sub_25BC8FACC();
      v324 = v212;
      v325 = v214;
      v326 = xmmword_25BCD2360;
      LOBYTE(v327) = 0;
      v328 = v215;
      v329 = v216;
      v330 = xmmword_25BCD2370;
      LOBYTE(v331) = 0;
      BYTE4(v335) = 0;

      OUTLINED_FUNCTION_17_42();
      v210 = 472;
      goto LABEL_45;
    }

    v92 = sub_25BAA80BC(*(v89 + 160), &unk_286D42270);
    if (!v92)
    {
      v217 = OUTLINED_FUNCTION_65_7(v92);
      v219 = v218;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
      v324 = v217;
      v325 = v219;
      OUTLINED_FUNCTION_14_40();

      OUTLINED_FUNCTION_17_42();
      v210 = 475;
      goto LABEL_45;
    }

    v324 = v10;
    v93 = Tensor.scalarType.getter(v92);
    v94 = dynamic_cast_existential_1_unconditional(v93, v93, &protocol descriptor for TensorFloatingPointScalar);
    v96 = *(v89 + 152);
    v99 = *(v96 + 16);
    v98 = v96 + 16;
    v97 = v99;
    if (v99 <= 1)
    {
      v325 = 0;
      *&v326 = 0;
      v324 = -2;
      BYTE8(v326) = -1;
      v328 = 0;
      v329 = 0;
      v327 = v97;
      LOBYTE(v330) = -1;
    }

    else
    {
      p_Kind = &a6->Kind;
      v100 = *(v90 + 152);
      v103 = *(v100 + 16);
      v102 = v100 + 16;
      v101 = v103;
      if (v103 > 1)
      {
        v104 = v94;
        v105 = v95;
        v106 = *(v98 + 8 * v97);
        v107 = *(v102 + 8 * v101);
        v108 = OUTLINED_FUNCTION_31(v56);
        *(v108 + 16) = xmmword_25BCBAE70;
        *(v108 + 32) = v106;
        *(v108 + 40) = v107;
        v316 = v108;
        v109 = *(v105 + 8);
        v110 = *(v109 + 32);

        v111 = OUTLINED_FUNCTION_34_20();
        v110(v111);
        v112 = OUTLINED_FUNCTION_9_51();
        OUTLINED_FUNCTION_87_5(v113, v114, v115, v116, v117, v118, v119, v120, v227, v13, 2, 4, v262, v12, p_Kind, v290, v299, v307, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323.Kind, v323.Description, v112);
        Tensor.bandPart(lowerBandCount:upperBandCount:)(0, -1, &v324);

        v121 = v324;
        v122 = OUTLINED_FUNCTION_31(v56);
        *(v122 + 16) = v246;
        *(v122 + 32) = v106;
        *(v122 + 40) = v107;
        v316 = v122;
        v123 = OUTLINED_FUNCTION_34_20();
        v110(v123);
        v124 = OUTLINED_FUNCTION_9_51();
        OUTLINED_FUNCTION_87_5(v125, v126, v127, v128, v129, v130, v131, v132, v228, v237, v246, *(&v246 + 1), v263, v272, v282, v291, v300, v308, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323.Kind, v323.Description, v124);
        Tensor.bandPart(lowerBandCount:upperBandCount:)(0, 0, &v324);

        v323.Description = v324;
        OUTLINED_FUNCTION_80_8(v133, v134, v135, v136, v137, v138, v139, v140, v229, v238, v121, v254, v264, v273, v283, v292, v301, v309, v311, v312, v313, v314, v315, v121);
        static Tensor.- infix(_:_:)();
        v323.Description = v324;
        v141 = OUTLINED_FUNCTION_34_20();
        v110(v141);
        switch(v313)
        {
          case 8:
            v319 = MEMORY[0x277D84DC8];
            OUTLINED_FUNCTION_72_9();
            goto LABEL_16;
          case 9:
            v319 = &type metadata for BFloat16;
            v320 = sub_25BB18AFC();
            LOWORD(v316) = -129;
            goto LABEL_16;
          case 10:
            v143 = OUTLINED_FUNCTION_34_20();
            v110(v143);
            OUTLINED_FUNCTION_9_51();
            v152 = OUTLINED_FUNCTION_58_11(v144, v145, v146, v147, v148, v149, v150, v151, v227, v236, v245, v253, v261, v271, v280, v290, v299, v307, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, MEMORY[0x277D84F90], v323.Description, v324);
            sub_25BAA51C8(v152, v153);
            Tensor.init(shape:coercingScalars:scalarType:on:)(&v323.Kind, &unk_286D44800, &v314 + 7, &v316, &v311);
            sub_25BA9C2C8(&v324);
            goto LABEL_17;
          case 11:
            v320 = &protocol witness table for Double;
            v319 = MEMORY[0x277D839F8];
            v316 = 0xFFEFFFFFFFFFFFFFLL;
LABEL_16:
            OUTLINED_FUNCTION_9_51();
            Tensor.init(coercing:scalarType:on:)();
LABEL_17:
            v12 = v271;
            v142 = v307;
            static Tensor.* infix(_:_:)();

            v13 = v324;
            v88 = v261;
            a6 = v280;
            goto LABEL_18;
          default:
            v324 = v104;
LABEL_44:
            v325 = v109;
            v326 = 0uLL;
            LOBYTE(v327) = -1;
            v328 = &unk_286D42270;
            LOBYTE(v329) = 1;
            BYTE4(v335) = 3;
            OUTLINED_FUNCTION_17_42();
            v210 = 510;
            goto LABEL_45;
        }
      }

      OUTLINED_FUNCTION_60_10();
      v327 = v220;
      LOBYTE(v330) = v221;
    }

    BYTE4(v335) = 4;

LABEL_41:
    sub_25BCB617C();
    OUTLINED_FUNCTION_17_4();
LABEL_45:
    sub_25BADDD28(v204, v205, v206, v207, v208, v209, v210);
  }

  v142 = v307;
LABEL_18:
  v323.Description = v88;
  v324 = v10;
  v316 = v142;
  static Tensor.* infix(_:_:)();
  matmul(_:transposed:_:transposed:)(&v324, 0, &v323, 1, &v323.Description);

  v155 = MEMORY[0x277D84F90];
  if (v13)
  {
    v324 = v13;
    if (Tensor.scalarType.getter(v154) == MEMORY[0x277D839B0])
    {
      v316 = *(v13[1].Kind + 152);
      v109 = *(v290 + 8);
      v165 = *(v109 + 32);

      sub_25BCB617C();
      v165(&v313, v299, v109);
      OUTLINED_FUNCTION_9_51();
      Tensor.init(zeros:scalarType:on:)();
      v165((&v314 + 7), v299, v109);
      switch(HIBYTE(v314))
      {
        case 8:
          v319 = MEMORY[0x277D84DC8];
          OUTLINED_FUNCTION_72_9();
          goto LABEL_27;
        case 9:
          v319 = &type metadata for BFloat16;
          v320 = sub_25BB18AFC();
          LOWORD(v316) = -129;
          goto LABEL_27;
        case 0xA:
          (v165)((&v312 + 7));
          OUTLINED_FUNCTION_9_51();
          v174 = OUTLINED_FUNCTION_58_11(v166, v167, v168, v169, v170, v171, v172, v173, v227, v236, v245, v253, v261, v271, v280, v290, v299, v307, v311, v312, v155, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323.Kind, v323.Description, v324);
          sub_25BAA51C8(v174, v175);
          Tensor.init(shape:coercingScalars:scalarType:on:)(&v313, &unk_286D44828, &v312 + 7, &v316, &v315);
          sub_25BA9C2C8(&v324);
          goto LABEL_28;
        case 0xB:
          v320 = &protocol witness table for Double;
          v319 = MEMORY[0x277D839F8];
          v316 = 0xFFEFFFFFFFFFFFFFLL;
LABEL_27:
          OUTLINED_FUNCTION_9_51();
          Tensor.init(coercing:scalarType:on:)();
LABEL_28:
          v324 = v13;
          v176 = Tensor.init(BOOLeanLiteral:)(&v316, 1);
          v184 = OUTLINED_FUNCTION_58_11(v176, v177, v178, v179, v180, v181, v182, v183, v227, v236, v245, v253, v261, v271, v280, v290, v299, v307, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323.Kind, v323.Description, v324);
          static Tensor..!= infix(_:_:)(v184, v185, v186, v187, v188, v189, v190, v191, v230, v239, v247, v255, v265, v274, v284, v293, v302, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323.Kind, v323.Description, v324, v325, v326, *(&v326 + 1), v327, v328, v329, v330, *(&v330 + 1), v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349);

          Tensor.replacing(with:where:)(&v315, &v313, &v324);

          v323.Kind = v323.Description;
          v313 = v324;
          static Tensor.+ infix(_:_:)();

          v164 = v316;
          goto LABEL_29;
        default:
          v324 = v299;
          goto LABEL_44;
      }
    }

    v316 = v323.Description;
    v323.Kind = v13;

    OUTLINED_FUNCTION_80_8(v156, v157, v158, v159, v160, v161, v162, v163, v227, v236, v245, v253, v261, v271, v280, v290, v299, v307, v311, v312, v313, v314, v315, v316);
    static Tensor.+ infix(_:_:)();

    v164 = v324;
  }

  else
  {
    v164 = v323.Description;
  }

LABEL_29:
  v316 = v164;

  v200 = OUTLINED_FUNCTION_80_8(v192, v193, v194, v195, v196, v197, v198, v199, v227, v236, v245, v253, v261, v271, v280, v290, v299, v307, v311, v312, v313, v314, v315, v316);
  softmax(_:alongAxis:)(v200, -1, v201);

  v202 = v324;
  if (a7 > 0.0)
  {
    v323.Kind = v324;

    Tensor.droppingOut(withProbability:seed:)(0, 1, &v316, a7);

    v202 = v316;
  }

  v316 = v202;
  v323.Kind = v12;

  matmul(_:transposed:_:transposed:)(&v316, 0, &v323, 0, &a6->Kind);
}

uint64_t sub_25BC65814@<X0>(void *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  memcpy(v7, __src, sizeof(v7));
  v5 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v5;
  v9 = *(a2 + 32);
  return sub_25BC60CC0(v8, a3);
}

uint64_t sub_25BC65880(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 156))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_25BC658C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 156) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 156) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25BC65938(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_25BC65978(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_36_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, ValueMetadata a58)
{

  return matmul(_:transposed:_:transposed:)(&a37, 0, &a58, 1, &a57);
}

void OUTLINED_FUNCTION_51_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{

  Tensor.reshaped(to:)(&a57, &a37);
}

uint64_t sub_25BC65A14(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25BCBB6D0;
  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  if ((a2 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v6 = *(a2 + 32);
  }

  v7 = v6;
  sub_25BAF99E8(v2[6]);
  sub_25BB50DF0();
  v8 = sub_25BCB672C();

  v10 = v2[3];
  v9 = v2[4];
  sub_25BCB617C();
  v11 = sub_25BC65D74(v7, v8, v10, v9, a1);

  *(v5 + 32) = v11;
  return v5;
}

uint64_t sub_25BC65B38(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25BCBB6D0;
  v6 = a2 & 0xC000000000000001;
  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  if ((a2 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v7 = *(a2 + 32);
  }

  v8 = v7;
  sub_25BAB4D78(1uLL, v6 == 0, a2);
  if (v6)
  {
    v9 = MEMORY[0x25F8779B0](1, a2);
  }

  else
  {
    v9 = *(a2 + 40);
  }

  v10 = v9;
  sub_25BAF99E8(v2[6]);
  sub_25BB50DF0();
  v11 = sub_25BCB672C();

  v13 = v2[3];
  v12 = v2[4];
  sub_25BCB617C();
  v14 = sub_25BC65DF8(v8, v10, v11, v13, v12, a1);

  *(v5 + 32) = v14;
  return v5;
}

uint64_t sub_25BC65C98(uint64_t a1)
{
  result = sub_25BC65D20(&qword_27FBB3FC0, type metadata accessor for TileGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC65CDC(uint64_t a1)
{
  result = sub_25BC65D20(&qword_27FBB3FC8, type metadata accessor for TileOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC65D20(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_25BC65D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_25BCB633C();

  v9 = [a5 tileTensor:a1 withMultiplier:a2 name:v8];

  return v9;
}

id sub_25BC65DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_25BCB633C();

  v11 = [a6 tileGradientWithIncomingGradientTensor:a1 sourceTensor:a2 withMultiplier:a3 name:v10];

  return v11;
}

uint64_t sub_25BC65E84()
{
  OUTLINED_FUNCTION_3_7();
  v3 = *(v0 + 130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  *(swift_allocObject() + 16) = xmmword_25BCBB6D0;
  v4 = v2 & 0xC000000000000001;
  OUTLINED_FUNCTION_1_6();
  switch(v3)
  {
    case 1:
      if (v4)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    case 2:
      if (v4)
      {
        OUTLINED_FUNCTION_4_4();
      }

      else
      {
        v11 = *(v2 + 32);
      }

      v12 = v11;
      sub_25BAF99E8(*(v0 + 136));
      sub_25BB50DF0();
      v2 = sub_25BCB672C();

      v14 = *(v0 + 24);
      v13 = *(v0 + 32);
      sub_25BCB617C();
      sub_25BB07CA4(v12, v2, v14, v13, v1, &selRef_meanOfTensor_axes_name_);

      goto LABEL_15;
    case 3:
      if (!v4)
      {
        goto LABEL_13;
      }

      goto LABEL_18;
    case 4:
      if (v4)
      {
        OUTLINED_FUNCTION_4_4();
      }

      else
      {
        v5 = *(v2 + 32);
      }

      OUTLINED_FUNCTION_6_56();
      OUTLINED_FUNCTION_1_71();
      v6 = OUTLINED_FUNCTION_0_85();
      sub_25BB2B6EC(v6, v7, v8, v9, v10);
      goto LABEL_15;
    default:
      if (v4)
      {
LABEL_18:
        OUTLINED_FUNCTION_4_4();
      }

      else
      {
LABEL_13:
        v15 = *(v2 + 32);
      }

      OUTLINED_FUNCTION_6_56();
      OUTLINED_FUNCTION_1_71();
      v16 = OUTLINED_FUNCTION_0_85();
      sub_25BC66358(v16, v17, v18, v19, v20, v21);
LABEL_15:

      return OUTLINED_FUNCTION_3_56();
  }
}

uint64_t sub_25BC66060()
{
  OUTLINED_FUNCTION_3_7();
  v2 = *(v0 + 130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  *(swift_allocObject() + 16) = xmmword_25BCBB6D0;
  v3 = v1 & 0xC000000000000001;
  OUTLINED_FUNCTION_1_6();
  if (v2)
  {
    if (!v3)
    {
      goto LABEL_5;
    }

LABEL_7:
    OUTLINED_FUNCTION_4_4();
    goto LABEL_6;
  }

  if (v3)
  {
    goto LABEL_7;
  }

LABEL_5:
  v4 = *(v1 + 32);
LABEL_6:
  OUTLINED_FUNCTION_7_56();
  v5 = OUTLINED_FUNCTION_0_85();
  sub_25BB07CA4(v5, v6, v7, v8, v9, v10);

  return OUTLINED_FUNCTION_3_56();
}

uint64_t sub_25BC66148()
{
  OUTLINED_FUNCTION_3_7();
  v2 = *(v0 + 130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  *(swift_allocObject() + 16) = xmmword_25BCBB6D0;
  v3 = v1 & 0xC000000000000001;
  OUTLINED_FUNCTION_1_6();
  if (v2)
  {
    if (!v3)
    {
      goto LABEL_5;
    }

LABEL_7:
    OUTLINED_FUNCTION_4_4();
    goto LABEL_6;
  }

  if (v3)
  {
    goto LABEL_7;
  }

LABEL_5:
  v4 = *(v1 + 32);
LABEL_6:
  OUTLINED_FUNCTION_6_56();
  OUTLINED_FUNCTION_1_71();
  v5 = OUTLINED_FUNCTION_0_85();
  sub_25BC66358(v5, v6, v7, v8, v9, v10);

  return OUTLINED_FUNCTION_3_56();
}

uint64_t sub_25BC66238(uint64_t a1)
{
  result = sub_25BC66304(&qword_27FBB49D8, type metadata accessor for LogicalReductionOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC6627C(uint64_t a1)
{
  result = sub_25BC66304(&qword_27FBB49E0, type metadata accessor for ArgumentReductionOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC662C0(uint64_t a1)
{
  result = sub_25BC66304(qword_28154E988, type metadata accessor for ReductionOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC66304(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_25BC66358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, SEL *a6)
{
  sub_25BB50DF0();
  v9 = sub_25BCB672C();

  v10 = sub_25BCB633C();

  v11 = [a5 *a6];

  return v11;
}

uint64_t sub_25BC6640C()
{
  result = 268435472;
  switch(*v0)
  {
    case 1:
      result = 536870928;
      break;
    case 2:
      result = 536870944;
      break;
    case 3:
      result = 536870976;
      break;
    case 4:
      result = 8;
      break;
    case 5:
      result = 16;
      break;
    case 6:
      result = 32;
      break;
    case 7:
      result = 64;
      break;
    case 8:
      return result;
    case 9:
      result = 2415919120;
      break;
    case 0xA:
      result = 268435488;
      break;
    case 0xB:
      result = sub_25BCB74CC("Fatal error", 11, 2, 0xD00000000000001ELL, 0x800000025BCDF900, "NeuralNetworks/MPSExtensions.swift", 34, 2, 60);
      __break(1u);
      break;
    case 0xC:
      result = 2147483656;
      break;
    default:
      result = 536870920;
      break;
  }

  return result;
}

uint64_t sub_25BC66518()
{
  if (*(v0 + 130))
  {
    return 0x6E696D677261;
  }

  else
  {
    return 0x78616D677261;
  }
}

uint64_t sub_25BC66544()
{
  if (*(v0 + 130))
  {
    return 29295;
  }

  else
  {
    return 6581857;
  }
}

void sub_25BC6656C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 0;
  BYTE4(v8) = 10;
  sub_25BA97890("name", 4, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/ReductionOps.swift", 114, 2, 20, a8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v8, v9, v10, v11, vars0, vars8);
}

uint64_t sub_25BC665CC()
{
  sub_25BA9D63C();

  return swift_deallocClassInstance();
}

unint64_t sub_25BC66624()
{
  v0 = sub_25BCB761C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25BC666E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BC66624();
  *a1 = result;
  return result;
}

uint64_t sub_25BC66710@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BABCCC4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25BC6674C()
{

  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return sub_25BA9D148(v1, v2);
}

uint64_t sub_25BC6677C(char a1)
{
  if (a1)
  {
    return 0x6E696D677261;
  }

  else
  {
    return 0x78616D677261;
  }
}

uint64_t sub_25BC667C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25BC66974(*a1, a1[1], &unk_286D45D30);
  *a2 = result;
  return result;
}

uint64_t sub_25BC66800@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BC6677C(*v1);
  *a1 = result;
  a1[1] = 0xE600000000000000;
  return result;
}

uint64_t sub_25BC66840(int a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 130) = a4 & 1;
  *(v6 + 136) = a6;
  if (!a3)
  {
    a1 = sub_25BC7C814(a4 & 1);
  }

  return OUTLINED_FUNCTION_0_86(a1, a2, a3);
}

uint64_t sub_25BC6689C()
{
  sub_25BA9D63C();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC668F4()
{
  OUTLINED_FUNCTION_5_58();
  sub_25BCB625C();

  sub_25BCB79EC();
  return MEMORY[0x25F878200](*(v0 + 136));
}

uint64_t sub_25BC66974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_25BCB761C();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BC669C4(char a1)
{
  if (a1)
  {
    return 29295;
  }

  else
  {
    return 6581857;
  }
}

uint64_t sub_25BC66A0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25BC66974(*a1, a1[1], &unk_286D45DA8);
  *a2 = result;
  return result;
}

uint64_t sub_25BC66A44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BC669C4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25BC66A88()
{
  sub_25BA9D63C();

  return swift_deallocClassInstance();
}

_BYTE *sub_25BC66AF4(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_25BC66BCC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25BC66CD8()
{
  result = qword_27FBB7550;
  if (!qword_27FBB7550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7550);
  }

  return result;
}

unint64_t sub_25BC66D60()
{
  result = qword_27FBB7568;
  if (!qword_27FBB7568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7568);
  }

  return result;
}

unint64_t sub_25BC66DE8()
{
  result = qword_27FBB7580;
  if (!qword_27FBB7580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7580);
  }

  return result;
}

void sub_25BC66E3C()
{
  OUTLINED_FUNCTION_5_58();
  sub_25BCB625C();

  sub_25BCB79EC();

  sub_25BAD4C78();
}

uint64_t sub_25BC66ED4(uint64_t a1)
{
  result = sub_25BC66FDC(&qword_27FBB49D8, type metadata accessor for LogicalReductionOperation, byte_25BCD29B0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC66F2C(uint64_t a1)
{
  result = sub_25BC66FDC(&qword_27FBB49E0, type metadata accessor for ArgumentReductionOperation, byte_25BCD29B0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC66F84(uint64_t a1)
{
  result = sub_25BC66FDC(qword_28154DD58, type metadata accessor for BaseReductionOperation, &unk_25BCD2988);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC66FDC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SourceLocation.file.setter(uint64_t result, uint64_t a2, char a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

uint64_t SourceLocation.function.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 40) = result;
  *(v3 + 48) = a2;
  *(v3 + 56) = a3;
  return result;
}

uint64_t sub_25BC670FC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25BC67130(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BC67150(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 57) = v3;
  return result;
}

id sub_25BC671A0()
{
  [v0 commit];

  return [v0 waitUntilCompleted];
}

id sub_25BC671E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  result = [v6 blitCommandEncoder];
  if (result)
  {
    v13 = result;
    [result copyFromBuffer:a1 sourceOffset:a2 toBuffer:a3 destinationOffset:a4 size:a5];
    [v13 endEncoding];

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BC6728C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  OUTLINED_FUNCTION_6_0(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  OUTLINED_FUNCTION_6_0(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = sub_25BCB54EC();
  OUTLINED_FUNCTION_2();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 24) > 0xCu || (OUTLINED_FUNCTION_16_0(), v18))
  {
    OUTLINED_FUNCTION_21();
    v31 = 56;
    OUTLINED_FUNCTION_7_0();
    result = sub_25BCB74CC(v26, v27, v28, 0xD000000000000017, v29, v30, 39, 2, v31);
    __break(1u);
  }

  else
  {
    sub_25BB0EC04(a1, v11);
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
    {
      if (*(*(v2 + 16) + 16))
      {
        sub_25BCB617C();
      }

      v19 = sub_25BCB50AC();
      __swift_storeEnumTagSinglePayload(v7, 1, 1, v19);
      sub_25BCB54FC();
      if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
      {
        sub_25BAA6F5C(v11, &qword_27FBB4080, &qword_25BCBC638);
      }
    }

    else
    {
      (*(v14 + 32))(v17, v11, v12);
    }

    v20 = sub_25BCB54CC();
    sub_25BCB54BC();
    sub_25BCB54DC();
    v21 = *(v2 + 40);
    v33 = *(v2 + 24);
    v22 = sub_25BBF4F40();
    v32 = *(v2 + 24);
    v23 = sub_25BBF4F40();
    v34[0] = 0;
    v34[1] = v20;
    v35 = v21;
    v36 = v22;
    v37 = 0;
    v38 = v23;
    v39 = 1065353216;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FBB7588, &qword_25BCD2A10);
    swift_allocObject();
    v24 = sub_25BC67FE0(v34, v2);

    (*(v14 + 8))(v17, v12);
    return v24;
  }

  return result;
}

uint64_t sub_25BC675C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_8_53(a1, a2, a3, a4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  OUTLINED_FUNCTION_6_0(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  OUTLINED_FUNCTION_6_0(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_43();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_1_73();
  v12(v11);
  if (v37 > 0xCu)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_16_0();
  if (v13)
  {
    goto LABEL_13;
  }

  sub_25BB0EC04(v4, v5);
  OUTLINED_FUNCTION_3_58();
  if (v13)
  {
    v14 = OUTLINED_FUNCTION_9_52();
    v15(v14);
    if (!*(v36 + 16))
    {
    }

    v16 = sub_25BCB50AC();
    OUTLINED_FUNCTION_12_43(v16);
    OUTLINED_FUNCTION_3_58();
    if (!v13)
    {
      sub_25BAA6F5C(v5, &qword_27FBB4080, &qword_25BCBC638);
    }
  }

  else
  {
    v17 = OUTLINED_FUNCTION_11_48();
    v18(v17);
  }

  v19 = sub_25BCB54AC();
  if (v19 < 0)
  {
    __break(1u);
LABEL_13:
    OUTLINED_FUNCTION_13_44();
    v35 = 13;
    OUTLINED_FUNCTION_7_0();
    v34 = 39;
    goto LABEL_15;
  }

  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_16_46();
  v22 = sub_25BB0E6E4(sub_25BB0EC74, v20, 0, v21);
  if ((v22 & 1) == 0)
  {
    MEMORY[0x28223BE20](v22);
    OUTLINED_FUNCTION_2_71();
    v23 = OUTLINED_FUNCTION_15_42();
    v24(v23);
    v25 = OUTLINED_FUNCTION_14_41();
    return v26(v25);
  }

  OUTLINED_FUNCTION_21();
  v35 = 16;
  OUTLINED_FUNCTION_7_0();
  v31 = 0xD00000000000001DLL;
  v34 = 114;
LABEL_15:
  result = sub_25BCB74CC(v28, v29, v30, v31, v32, v33, v34, 2, v35);
  __break(1u);
  return result;
}

uint64_t sub_25BC6789C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_8_53(a1, a2, a3, a4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  OUTLINED_FUNCTION_6_0(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  OUTLINED_FUNCTION_6_0(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_43();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_1_73();
  v12(v11);
  if (v37 > 0xCu)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_16_0();
  if (v13)
  {
    goto LABEL_13;
  }

  sub_25BB0EC04(v4, v5);
  OUTLINED_FUNCTION_3_58();
  if (v13)
  {
    v14 = OUTLINED_FUNCTION_9_52();
    v15(v14);
    if (!*(v36 + 16))
    {
    }

    v16 = sub_25BCB50AC();
    OUTLINED_FUNCTION_12_43(v16);
    OUTLINED_FUNCTION_3_58();
    if (!v13)
    {
      sub_25BAA6F5C(v5, &qword_27FBB4080, &qword_25BCBC638);
    }
  }

  else
  {
    v17 = OUTLINED_FUNCTION_11_48();
    v18(v17);
  }

  v19 = sub_25BCB54AC();
  if (v19 < 0)
  {
    __break(1u);
LABEL_13:
    OUTLINED_FUNCTION_13_44();
    v35 = 34;
    OUTLINED_FUNCTION_7_0();
    v34 = 39;
    goto LABEL_15;
  }

  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_16_46();
  v22 = sub_25BB0E6E4(sub_25BC68120, v20, 0, v21);
  if ((v22 & 1) == 0)
  {
    MEMORY[0x28223BE20](v22);
    OUTLINED_FUNCTION_2_71();
    v23 = OUTLINED_FUNCTION_15_42();
    v24(v23);
    v25 = OUTLINED_FUNCTION_14_41();
    return v26(v25);
  }

  OUTLINED_FUNCTION_21();
  v35 = 37;
  OUTLINED_FUNCTION_7_0();
  v31 = 0xD00000000000001DLL;
  v34 = 114;
LABEL_15:
  result = sub_25BCB74CC(v28, v29, v30, v31, v32, v33, v34, 2, v35);
  __break(1u);
  return result;
}

uint64_t sub_25BC67B78@<X0>(uint64_t a3@<X3>, uint64_t (*a4)(_DWORD *)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, uint64_t a8)
{
  v17 = a6;
  v18 = a3;
  v21 = a5;
  v22 = a4;
  v20 = a7;
  v8 = sub_25BCB54EC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25BCB6F2C();
  (*(a8 + 8))(&v25, v17, a8);
  v12 = v25;
  (*(v9 + 16))(v11, v18, v8);
  v13 = sub_25BCB54CC();
  sub_25BCB54BC();
  sub_25BCB54DC();
  v24 = v12;
  v14 = sub_25BBF4F40();
  v23 = v12;
  v15 = sub_25BBF4F40();
  (*(v9 + 8))(v11, v8);
  v27 = v40[0];
  v28 = v40[1];
  v29 = v40[2];
  v30 = v40[3];
  v31 = v40[4];
  v32 = v40[5];
  v33 = v40[6];
  v34 = v40[7];
  v26[0] = 0;
  v26[1] = v13;
  v35 = v19;
  v36 = v14;
  v37 = 0;
  v38 = v15;
  v39 = 1065353216;
  return v22(v26);
}

uint64_t sub_25BC67D8C@<X0>(uint64_t a3@<X3>, uint64_t (*a4)(uint64_t *)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, uint64_t a8)
{
  v17 = a6;
  v18 = a3;
  v21 = a5;
  v22 = a4;
  v20 = a7;
  v8 = sub_25BCB54EC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25BCB6F2C();
  (*(a8 + 8))(&v25, v17, a8);
  v12 = v25;
  (*(v9 + 16))(v11, v18, v8);
  v13 = sub_25BCB54CC();
  sub_25BCB54BC();
  sub_25BCB54DC();
  v24 = v12;
  v14 = sub_25BBF4F40();
  v23 = v12;
  v15 = sub_25BBF4F40();
  (*(v9 + 8))(v11, v8);
  v26 = v39[0];
  v27 = v39[1];
  v28 = v39[2];
  v29 = v39[3];
  v30 = v39[4];
  v31 = v39[5];
  v32 = v39[6];
  v33 = v39[7];
  LODWORD(v25) = 0;
  HIDWORD(v25) = v13;
  v34 = v19;
  v35 = v14;
  v36 = 0;
  v37 = v15;
  v38 = 1065353216;
  return v22(&v25);
}

uint64_t sub_25BC67F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9)
{
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a6;
  v10[5] = a8;
  v10[6] = a9;
  v10[7] = a2;
  v10[8] = a3;
  v10[9] = a1;
  return sub_25BC6789C(sub_25BC680EC, v10, a6, a7);
}

uint64_t sub_25BC67FE0(const void *a1, uint64_t a2)
{
  sub_25BB1A8BC(__src);
  memcpy((v2 + 16), __src, 0xB8uLL);
  memcpy(__dst, a1, 0xB0uLL);
  __dst[22] = a2;
  nullsub_1();
  memcpy(v8, (v2 + 16), sizeof(v8));
  memcpy((v2 + 16), __dst, 0xB8uLL);
  sub_25BAA6F5C(v8, &qword_27FBB40B8, &qword_25BCBCAA0);
  return v2;
}

uint64_t sub_25BC681AC()
{
  sub_25BC6813C();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC6821C(uint64_t a1)
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

uint64_t sub_25BC682B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v20[-v11];
  v14 = *(*v13 + 88);
  swift_beginAccess();
  v15 = *(v7 + 16);
  v15(v12, a1 + v14, v6);
  v16 = *(*a2 + 88);
  swift_beginAccess();
  v15(v9, a2 + v16, v6);
  v17 = sub_25BCB630C();
  v18 = *(v7 + 8);
  v18(v9, v6);
  v18(v12, v6);
  return v17 & 1;
}

uint64_t sub_25BC68470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_5;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
LABEL_5:
    v4 = 0;
    return v4 & 1;
  }

  v4 = sub_25BCB630C();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v4 & 1;
}

uint64_t sub_25BC68504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakLoadStrong();
  sub_25BCB6E8C();
  sub_25BCB6E9C();
  return swift_unknownObjectRelease();
}

uint64_t sub_25BC6857C(uint64_t a1, uint64_t a2)
{
  sub_25BCB79CC();
  sub_25BC68504(v5, a1, a2);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC685F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_25BCB79CC();
  sub_25BC68504(v6, a2, v4);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC68644()
{
  sub_25BC6813C();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC686B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25BC68750(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v13 = MEMORY[0x277D84F90];
  sub_25BAC5590();
  v5 = v13;
  for (i = (a1 + 32); ; ++i)
  {
    v11 = *i;

    sub_25BC68C30(&v11, &v12);
    if (v3)
    {
      break;
    }

    v3 = 0;

    v8 = v12;
    v13 = v5;
    v9 = *(v5 + 16);
    if (v9 >= *(v5 + 24) >> 1)
    {
      sub_25BAC5590();
      v5 = v13;
    }

    *(v5 + 16) = v9 + 1;
    *(v5 + 8 * v9 + 32) = v8;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC68948()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  OUTLINED_FUNCTION_1_2();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25BCBAE50;
  *(v2 + 32) = v1;

  return v2;
}

uint64_t sub_25BC689A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;

  v4 = sub_25BAB6A04();

  if (!v4)
  {

    v6 = sub_25BAB3058();
    v8 = v7;

    if (v6)
    {
      type metadata accessor for TrackedOperation();
      OUTLINED_FUNCTION_30_0();
      v9 = swift_allocObject();
      *(v9 + 16) = v6;
      *(v9 + 24) = v8;
      sub_25BAA51C8(*(v3 + 16) + 168, v23);

      swift_unknownObjectRetain();
      v10 = sub_25BAD259C();

      type metadata accessor for ContextManager();
      sub_25BAA49B8();
      sub_25BAA4A5C(v22);

      v11 = v22[10];

      sub_25BAA4AF4(v22);
      type metadata accessor for TensorRepresentation();
      v12 = swift_allocObject();
      LOBYTE(v22[0]) = 1;
      v13 = sub_25BC102F4(v9, 0, v23, 0x100000000, v11, v10, v12);

      v14 = sub_25BA9BEA8();
      v16 = v15;

      if (v14)
      {

        swift_unknownObjectRetain();
        v17 = sub_25BA928B4();
        [v17 lock];

        v18 = OUTLINED_FUNCTION_78_10();
        sub_25BC5F7F0(v18, v19, v16);
        [*(v13 + 224) unlock];
        swift_unknownObjectRelease_n();
      }

      v20 = type metadata accessor for TensorHandle();
      v21 = OUTLINED_FUNCTION_15_7(v20);
      *(v21 + 16) = v13;

      sub_25BAA6EB0();

      swift_unknownObjectRelease();

      v3 = v21;
    }

    else
    {
      v23[0] = v3;
      sub_25BC39C2C(v22);

      v3 = v22[0];
    }
  }

  *a2 = v3;
  return result;
}

uint64_t sub_25BC68BF4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 16))
  {
    return OUTLINED_FUNCTION_5_38(*(result + 32), a2);
  }

  __break(1u);
  return result;
}

void sub_25BC68C30(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = sub_25BAC4018();
  v7 = sub_25BAC40D8(v21, v6);

  if (v7)
  {
    v8 = sub_25BAB6A04();

    if (v8)
    {

LABEL_11:
      *a2 = v5;
      return;
    }
  }

  v9 = sub_25BAB3058();
  v11 = v10;

  if (!v9)
  {
    v22[0] = v5;
    sub_25BC39C2C(v21);
    v5 = v21[0];
    goto LABEL_11;
  }

  type metadata accessor for TrackedOperation();
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v11;
  sub_25BAA51C8(*(v5 + 16) + 168, v22);

  swift_unknownObjectRetain();
  v13 = sub_25BAD259C();

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(v21);

  v14 = v21[10];

  sub_25BAA4AF4(v21);
  type metadata accessor for TensorRepresentation();
  v15 = swift_allocObject();
  LOBYTE(v21[0]) = 1;
  v16 = sub_25BC102F4(v12, 0, v22, 0x100000000, v14, v13, v15);

  v17 = sub_25BA9BEA8();
  v19 = v18;

  if (!v17)
  {
LABEL_9:
    type metadata accessor for TensorHandle();
    v5 = swift_allocObject();
    *(v5 + 16) = v16;

    sub_25BAA6EB0();
    swift_unknownObjectRelease();

    goto LABEL_11;
  }

  swift_unknownObjectRetain();
  v20 = sub_25BA928B4();
  [v20 lock];

  sub_25BC5F7F0(v16, v17, v19);
  if (!v3)
  {
    [*(v16 + 224) unlock];
    swift_unknownObjectRelease_n();

    goto LABEL_9;
  }

  [*(v16 + 224) unlock];
  __break(1u);
}

double (*sub_25BC68ED4(uint64_t a1))()
{
  v1 = *(a1 + 16);
  *(OUTLINED_FUNCTION_15_7(&unk_286D54B80) + 16) = v1;
  return sub_25BC6F834;
}

double sub_25BC68F24@<D0>(void *a1@<X8>)
{
  *a1 = *v1;
  sub_25BCB617C();
  return result;
}

uint64_t (*sub_25BC68F38())@<X0>(uint64_t *a1@<X8>)
{
  sub_25BC68ED4(*v0);
  v2 = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_25BC6F834;
  *(v3 + 24) = v2;
  return sub_25BC6F7FC;
}

uint64_t *sub_25BC68FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  sub_25BCB68CC();
  OUTLINED_FUNCTION_49();
  sub_25BCB617C();
  OUTLINED_FUNCTION_7_2();
  swift_getWitnessTable();
  sub_25BCB65BC();
  OUTLINED_FUNCTION_15();

  return &v5;
}

void sub_25BC6903C()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19_0(&v63 - v7);
  OUTLINED_FUNCTION_9();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_0();
  v82 = v11 - v12;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19_0(&v63 - v14);
  v77 = swift_getTupleTypeMetadata2();
  v75 = sub_25BCB6E8C();
  OUTLINED_FUNCTION_2();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_0();
  v76 = v18 - v19;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_19_0(&v63 - v21);
  v87 = MEMORY[0x277D84FA0];
  v86 = sub_25BCB604C();
  sub_25BCB618C();
  v74 = sub_25BCB68CC();
  sub_25BCB679C();
  v85[7] = sub_25BCB604C();
  v63 = v1;
  sub_25BCB618C();
  v70 = sub_25BCB68CC();
  sub_25BCB679C();
  v22 = 0;
  v65 = 0;
  v67 = v5;
  v23 = v5 + 64;
  v24 = 1 << *(v5 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v5 + 64);
  v27 = (v24 + 63) >> 6;
  v83 = v9 + 16;
  v79 = (v9 + 32);
  v73 = (v16 + 32);
  v66 = v9;
  v68 = (v9 + 8);
  v64 = v3;
  v69 = v23;
  if (v26)
  {
    while (1)
    {
      v28 = v22;
      v29 = v77;
      v30 = v76;
LABEL_10:
      v32 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v33 = v32 | (v28 << 6);
      v34 = v67;
      v35 = v66;
      v36 = v80;
      (*(v66 + 16))(v80, *(v67 + 48) + *(v66 + 72) * v33, v3);
      v37 = *(*(v34 + 56) + 8 * v33);
      v38 = *(v29 + 48);
      (*(v35 + 32))(v30, v36, v3);
      *(v30 + v38) = v37;
      __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);

      v31 = v78;
LABEL_11:
      (*v73)(v31, v30, v75);
      if (__swift_getEnumTagSinglePayload(v31, 1, v29) == 1)
      {

        v84[0] = v86;
        OUTLINED_FUNCTION_7_2();
        swift_getWitnessTable();
        sub_25BCB615C();
        OUTLINED_FUNCTION_10_16();
        return;
      }

      v39 = *(v31 + *(v29 + 48));
      v40 = v82;
      (*v79)(v82, v31, v3);
      OUTLINED_FUNCTION_66_10();
      v42 = *v41;
      (*v41)(v80, v40, v3);
      sub_25BCB687C();
      v43 = sub_25BAC4018();
      LOBYTE(v40) = sub_25BAC40D8(v84, v43);

      v81 = v42;
      if ((v40 & 1) == 0)
      {
        goto LABEL_16;
      }

      v44 = sub_25BAB6A04();

      if (!v44)
      {
        break;
      }

      v45 = v39;
LABEL_21:
      v60 = *(TupleTypeMetadata2 + 48);
      v61 = v71;
      v62 = v82;
      OUTLINED_FUNCTION_66_10();
      v81();
      *(v61 + v60) = v45;
      sub_25BCB687C();

      (*v68)(v62, v3);
      v23 = v69;
      if (!v26)
      {
        goto LABEL_5;
      }
    }

LABEL_16:
    v46 = sub_25BAB3058();
    v48 = v47;

    if (v46)
    {
      type metadata accessor for TrackedOperation();
      OUTLINED_FUNCTION_30_0();
      v49 = swift_allocObject();
      *(v49 + 16) = v46;
      *(v49 + 24) = v48;
      sub_25BAA51C8(*(v39 + 16) + 168, v85);

      swift_unknownObjectRetain();
      v50 = sub_25BAD259C();

      type metadata accessor for ContextManager();
      sub_25BAA49B8();
      sub_25BAA4A5C(v84);

      v51 = v84[10];

      sub_25BAA4AF4(v84);
      type metadata accessor for TensorRepresentation();
      v52 = swift_allocObject();
      LOBYTE(v84[0]) = 1;
      v53 = sub_25BC102F4(v49, 0, v85, 0x100000000, v51, v50, v52);

      v54 = sub_25BA9BEA8();
      v56 = v55;

      if (v54)
      {

        swift_unknownObjectRetain();
        v57 = sub_25BA928B4();
        [v57 lock];

        v58 = v65;
        sub_25BC5F7F0(v53, v54, v56);
        v65 = v58;
        [*(v53 + 224) unlock];
        swift_unknownObjectRelease_n();
      }

      v59 = type metadata accessor for TensorHandle();
      v45 = OUTLINED_FUNCTION_15_7(v59);
      *(v45 + 16) = v53;

      sub_25BAA6EB0();
      swift_unknownObjectRelease();

      v3 = v64;
    }

    else
    {
      v85[0] = v39;
      sub_25BC39C2C(v84);
      v45 = v84[0];
    }

    goto LABEL_21;
  }

LABEL_5:
  v29 = v77;
  v30 = v76;
  v31 = v78;
  while (1)
  {
    v28 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v28 >= v27)
    {
      __swift_storeEnumTagSinglePayload(v76, 1, 1, v77);
      v26 = 0;
      goto LABEL_11;
    }

    v26 = *(v23 + 8 * v28);
    ++v22;
    if (v26)
    {
      v22 = v28;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_25BC6985C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_32_25();
  OUTLINED_FUNCTION_1_2();
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = a4;
  v7[4] = v5;
  OUTLINED_FUNCTION_57_10();
  sub_25BCB617C();
  return a4;
}

uint64_t sub_25BC698C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a4;
  v23 = a3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v8 = v22 - v7;
  v9 = sub_25BCB6E8C();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  v32 = sub_25BCB604C();
  v22[2] = sub_25BCB68CC();
  sub_25BCB679C();
  v28 = a2;
  *&v27 = a1;
  v12 = sub_25BCB68CC();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB49F0, &unk_25BCC0140);
  WitnessTable = swift_getWitnessTable();
  v15 = sub_25BC6F580();
  sub_25BCB793C();
  v27 = v24;
  v16 = v12;
  v28 = v12;
  v29 = v13;
  v17 = WitnessTable;
  v30 = WitnessTable;
  v31 = v15;
  v18 = v15;
  sub_25BCB715C();
  sub_25BCB712C();
  while (1)
  {
    *&v24 = v16;
    *(&v24 + 1) = v13;
    v25 = v17;
    v26 = v18;
    sub_25BCB714C();
    sub_25BCB713C();
    if (__swift_getEnumTagSinglePayload(v11, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v19 = *(TupleTypeMetadata2 + 48);
    v20 = *&v11[v19];
    (*(*(v23 - 8) + 32))(v8, v11);
    *&v8[v19] = v20;
    sub_25BCB687C();
  }

  v28 = v32;
  swift_getWitnessTable();
  return sub_25BCB615C();
}

uint64_t sub_25BC69B84()
{
  sub_25BAC2130();
  sub_25BCB736C();
  v0 = sub_25BCB681C();

  return v0;
}

uint64_t sub_25BC69C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(*v5 + 96);
  swift_beginAccess();
  return (*(*(*(a1 + 80) - 8) + 16))(a2, v5 + v6);
}

uint64_t (*sub_25BC69CD0(uint64_t a1))@<X0>(uint64_t *a1@<X8>)
{
  sub_25BAC2070();
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = *(a1 + 80);
  *(v4 + 32) = sub_25BACBC58;
  *(v4 + 40) = v3;
  return sub_25BC6F544;
}

uint64_t sub_25BC69D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, a2, v8);
  if (swift_dynamicCast())
  {
    *&v18 = v22;
    a4[3] = &unk_286D54CA0;
    a4[4] = &off_281E23E38;
    sub_25BC689A4(&v18, a4);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB49F0, &unk_25BCC0140);
    if (swift_dynamicCast())
    {
      *&v18 = MEMORY[0x277D84FA0];
      v11 = sub_25BC68750(v22, &v18);

      a4[3] = &unk_286D54C20;
      a4[4] = sub_25BC6F704();
      *a4 = v11;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5A98, &qword_25BCC3F70);
      if (!swift_dynamicCast())
      {
        *&v22 = 0;
        *(&v22 + 1) = 0xE000000000000000;
        sub_25BCB70FC();

        *&v18 = 0xD00000000000002DLL;
        *(&v18 + 1) = 0x800000025BCE59F0;
        swift_getDynamicType();
        v15 = sub_25BCB7C1C();
        MEMORY[0x25F876C90](v15);

        MEMORY[0x25F876C90](96, 0xE100000000000000);
        v22 = v18;
        v30 = 9;
        sub_25BCB617C();
        sub_25BA97890("differentiableView(for:)", 24, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Runtime/Backpropagation.swift", 105, 2, 280, v16, v17[0], v17[1], v18, *(&v18 + 1), v19, v20, v21, v22, *(&v22 + 1), v23, v24, v25, v26, v27, v28, v29);
      }

      sub_25BA97060(&v22, &v18);
      v12 = v20;
      v13 = __swift_project_boxed_opaque_existential_1(&v18, v20);
      sub_25BC6A020(v13, v12, a4);
      __swift_destroy_boxed_opaque_existential_1(&v18);
    }
  }

  return (*(v7 + 8))(v10, a2);
}

uint64_t sub_25BC6A020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LayerDifferentiableView(0, v9, v11, v10);
  (*(v6 + 16))(v8, a1, a2);
  v13 = sub_25BAB07DC();
  a3[3] = v12;
  result = swift_getWitnessTable();
  a3[4] = result;
  *a3 = v13;
  return result;
}

void valueWithPullback<A, B, C>(at:_:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9_18();
  v26 = v25;
  v28 = v27;
  v118 = v29;
  v117 = v30;
  v126 = v31;
  v125 = v32;
  v34 = v33;
  v124 = v35;
  v123 = sub_25BCB5EBC();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_19_0(v38 - v37);
  v121 = sub_25BCB5EEC();
  OUTLINED_FUNCTION_2();
  v120 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_19_0(v42 - v41);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_19_0(v45 - v44);
  v129 = v26;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_1();
  v49 = v48 - v47;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_19_20();
  sub_25BC69D44(v34, v28, v140);
  sub_25BC69D44(v125, v26, v137);
  sub_25BC69D44(v126, a21, v134);
  v51 = v142;
  __swift_project_boxed_opaque_existential_1(v140, v141);
  v52 = *(v51 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_48_19(AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v132);
  v54 = OUTLINED_FUNCTION_16_2();
  v52(v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61C8, &qword_25BCC8AD0);
  swift_dynamicCast();
  __swift_project_boxed_opaque_existential_1(v137, v138);
  v55 = OUTLINED_FUNCTION_37_24();
  OUTLINED_FUNCTION_48_19(v55);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v132);
  v56 = OUTLINED_FUNCTION_78_10();
  v52(v56);
  swift_dynamicCast();
  __swift_project_boxed_opaque_existential_1(v134, v135);
  v57 = OUTLINED_FUNCTION_37_24();
  OUTLINED_FUNCTION_48_19(v57);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v132);
  v58 = OUTLINED_FUNCTION_78_10();
  v52(v58);
  swift_dynamicCast();
  v59 = v141;
  v60 = v142;
  __swift_project_boxed_opaque_existential_1(v140, v141);
  v61 = OUTLINED_FUNCTION_52_15();
  v63 = v62(v61);
  v65 = v64;
  OUTLINED_FUNCTION_76_7();
  v66 = swift_allocObject();
  v67 = v28;
  v66[2] = v28;
  v66[3] = v26;
  v66[4] = a21;
  v66[5] = v59;
  v66[6] = a22;
  v66[7] = a23;
  v66[8] = a24;
  v66[9] = v60;
  v66[10] = v63;
  v66[11] = v65;
  v115 = v66;
  v68 = v138;
  v69 = v139;
  __swift_project_boxed_opaque_existential_1(v137, v138);
  v70 = OUTLINED_FUNCTION_52_15();
  v72 = v71(v70);
  v74 = v73;
  OUTLINED_FUNCTION_76_7();
  v75 = swift_allocObject();
  v75[2] = v28;
  v75[3] = v26;
  v75[4] = a21;
  v75[5] = v68;
  v75[6] = a22;
  v75[7] = a23;
  v75[8] = a24;
  v75[9] = v69;
  v75[10] = v72;
  v75[11] = v74;
  v114 = v75;
  v76 = v135;
  v77 = v136;
  __swift_project_boxed_opaque_existential_1(v134, v135);
  v78 = OUTLINED_FUNCTION_16_2();
  v80 = v79(v78);
  v82 = v81;
  OUTLINED_FUNCTION_76_7();
  v83 = swift_allocObject();
  v127 = v67;
  v83[2] = v67;
  v83[3] = v26;
  v83[4] = a21;
  v83[5] = v76;
  v83[6] = a22;
  v83[7] = a23;
  v83[8] = a24;
  v83[9] = v77;
  v83[10] = v80;
  v83[11] = v82;
  if (qword_28154BE88 != -1)
  {
    OUTLINED_FUNCTION_20_2(&qword_28154BE88);
  }

  OUTLINED_FUNCTION_56_14(v121, qword_28154BE90);
  (*(v120 + 16))();
  sub_25BCB5EAC();
  v84 = OUTLINED_FUNCTION_90();
  *v84 = 0;
  v85 = sub_25BCB5EDC();
  v86 = sub_25BCB6D5C();
  v87 = sub_25BCB5E9C();
  _os_signpost_emit_with_name_impl(&dword_25BA90000, v85, v86, v87, "Backpropagation (Forward Pass)", "", v84, 2u);
  OUTLINED_FUNCTION_66_10();
  v119 = sub_25BC6AF40(v132 + 8, v117, v118, v24, v49, v128, v67, v26, a21, a22, a23);
  v88 = sub_25BCB6D4C();
  v89 = sub_25BCB5E9C();
  _os_signpost_emit_with_name_impl(&dword_25BA90000, v85, v88, v89, "Backpropagation (Forward Pass)", "", v84, 2u);

  v90 = *(&v132[0] + 1);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_12_12();
  v91(v122, v123);
  (*(v120 + 8))(v116, v121);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  OUTLINED_FUNCTION_1_2();
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_25BCBAE50;
  *(v92 + 32) = v90;
  v93 = v141;
  v94 = v142;
  __swift_project_boxed_opaque_existential_1(v140, v141);
  v95 = *(v94 + 40);

  v96 = v95(v93, v94);
  v97 = v138;
  v98 = v139;
  __swift_project_boxed_opaque_existential_1(v137, v138);
  v99 = (*(v98 + 40))(v97, v98);
  v131 = v96;
  sub_25BC03860(v99);
  v100 = v136;
  __swift_project_boxed_opaque_existential_1(v134, v135);
  v101 = OUTLINED_FUNCTION_15();
  v103 = v102(v101, v100);
  sub_25BC03860(v103);
  v104 = sub_25BAC1988(v92, v96, v119);
  v106 = v105;

  *v124 = v90;
  sub_25BAC27B0(v140, v132);
  sub_25BAC27B0(v137, v130);
  v107 = swift_allocObject();
  v107[2] = v127;
  v107[3] = v129;
  v107[4] = a21;
  v107[5] = a22;
  OUTLINED_FUNCTION_66_10();
  v108[6] = v110;
  v108[7] = v109;
  v108[8] = v104;
  v108[9] = v106;
  v108[10] = sub_25BC6EF70;
  v108[11] = v115;
  sub_25BA97060(v132, (v107 + 12));
  v107[17] = sub_25BC6F838;
  v107[18] = v114;
  sub_25BA97060(v130, (v107 + 19));
  v107[24] = sub_25BC6F838;
  v107[25] = v83;
  OUTLINED_FUNCTION_12_12();
  v111(v128, a21);
  OUTLINED_FUNCTION_12_12();
  v112(v49, v129);
  OUTLINED_FUNCTION_12_12();
  v113(v24, v127);
  __swift_destroy_boxed_opaque_existential_1(v134);
  __swift_destroy_boxed_opaque_existential_1(v137);
  __swift_destroy_boxed_opaque_existential_1(v140);
  OUTLINED_FUNCTION_18_41();
  OUTLINED_FUNCTION_75_9();
  OUTLINED_FUNCTION_10_16();
}

void valueWithGradient<A, B, C>(at:_:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_9_18();
  v58 = v29;
  v59 = v28;
  v55 = v30;
  v56 = v31;
  v54 = v32;
  v61 = v33;
  v62 = v34;
  v60 = v35;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = swift_getAssociatedTypeWitness();
  v36 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_2();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v41);
  v43 = &v52 - v42;
  valueWithPullback<A, B, C>(at:_:_:of:)(v64, v54, v55, v56, v58, a21, a22, a23, a24, a25, a26, a27, v52, a23, a21, AssociatedTypeWitness, v54, v55, v56, v57, v58, v59, v60, v61);
  v44 = v64[0];
  v45 = *(TupleTypeMetadata3 + 48);
  v46 = *(TupleTypeMetadata3 + 64);

  Tensor.init(onesLike:)(v64);
  sub_25BC6F2EC(v43, &v43[v45], &v43[v46], &v63);

  *v59 = v44;
  (*(v39 + 32))(v27, v43, TupleTypeMetadata3);
  v47 = *(TupleTypeMetadata3 + 48);
  v48 = *(TupleTypeMetadata3 + 64);
  OUTLINED_FUNCTION_11_1();
  (*(v49 + 32))(v60, v27);
  OUTLINED_FUNCTION_11_1();
  (*(v50 + 32))(v61, v27 + v47);
  OUTLINED_FUNCTION_11_1();
  (*(v51 + 32))(v62, v27 + v48, v36);
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BC6AE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_32_25();
  v13 = v12;
  v15 = v14;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v15[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0(v15);
  return v11(v13);
}

uint64_t sub_25BC6AF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(v18);

  v11 = v19;
  if (v19)
  {
    v12 = *(v19 + 24);
    if (v12)
    {

      v16 = objc_autoreleasePoolPush();
      sub_25BAB6FD4();
      objc_autoreleasePoolPop(v16);
      v14 = v11;
      goto LABEL_7;
    }

    v13 = v12 | 1;
  }

  else
  {
    v13 = 1;
  }

  type metadata accessor for PersistentGraphScope();
  swift_allocObject();
  v14 = sub_25BAB6EC8(v13, MEMORY[0x277D84F90]);

  v19 = v14;
  v15 = objc_autoreleasePoolPush();
  sub_25BAB6FD4();
  objc_autoreleasePoolPop(v15);
LABEL_7:
  sub_25BAA4AF4(v18);
  return v14;
}

uint64_t sub_25BC6B0D4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6, void (*a7)(_OWORD *__return_ptr, uint64_t), uint64_t a8, void *a9, void (*a10)(_OWORD *__return_ptr, uint64_t), uint64_t a11, void *a12, void (*a13)(_OWORD *__return_ptr, uint64_t), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = a9;
  v22 = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25BCBAE50;
  *(v23 + 32) = v22;

  v24 = a5(v23);

  v25 = a9[3];
  v26 = a9[4];
  v27 = __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  v28 = v26[3];
  v29 = v27;
  v30 = v28(v25, v26);
  if (v30 < 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  v29 = sub_25BABAF60(0, v30, v24);
  v21 = v32;
  v22 = v33;
  v70 = v24;
  if (v33)
  {
    v67 = v31;
    sub_25BCB78DC();
    swift_unknownObjectRetain_n();
    v36 = swift_dynamicCastClass();
    if (!v36)
    {
      swift_unknownObjectRelease();
      v36 = MEMORY[0x277D84F90];
    }

    v37 = *(v36 + 16);

    if (__OFSUB__(v22 >> 1, v21))
    {
      goto LABEL_37;
    }

    if (v37 != (v22 >> 1) - v21)
    {
      goto LABEL_38;
    }

    v35 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v35)
    {
      goto LABEL_11;
    }

    v35 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  while (1)
  {
    sub_25BAFFB88(v29, v31, v21, v22);
    v35 = v34;
LABEL_10:
    swift_unknownObjectRelease();
LABEL_11:
    v21 = a12;
    a7(v76, v35);

    v38 = v28(v25, v26);
    v28 = a12[3];
    v39 = a12[4];
    v26 = __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    v25 = v39 + 24;
    v40 = *(v39 + 24);
    v29 = v26;
    v41 = (v40)(v28, v39);
    v42 = v38 + v41;
    if (__OFADD__(v38, v41))
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v42 < v38)
    {
      goto LABEL_35;
    }

    v44 = sub_25BABAF60(v38, v42, v70);
    v21 = v45;
    v22 = v46;
    if ((v46 & 1) == 0)
    {
      goto LABEL_14;
    }

    v68 = v43;
    a7 = v40;
    sub_25BCB78DC();
    swift_unknownObjectRetain_n();
    v49 = swift_dynamicCastClass();
    if (!v49)
    {
      swift_unknownObjectRelease();
      v49 = MEMORY[0x277D84F90];
    }

    v50 = *(v49 + 16);

    if (__OFSUB__(v22 >> 1, v21))
    {
      __break(1u);
LABEL_40:
      swift_unknownObjectRelease();
      v43 = v68;
LABEL_14:
      sub_25BAFFB88(v44, v43, v21, v22);
      v48 = v47;
      goto LABEL_21;
    }

    if (v50 != (v22 >> 1) - v21)
    {
      goto LABEL_40;
    }

    v48 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v48)
    {
      goto LABEL_22;
    }

    v48 = MEMORY[0x277D84F90];
LABEL_21:
    swift_unknownObjectRelease();
LABEL_22:
    a10(v75, v48);

    v29 = v26;
    v51 = (v40)(v28, v39);
    v52 = __OFADD__(v38, v51);
    v53 = v38 + v51;
    if (!v52)
    {
      break;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    swift_unknownObjectRelease();
    v31 = v67;
  }

  sub_25BBCB9F8(v53, v70);
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;

  if ((v61 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_25BCB78DC();
  swift_unknownObjectRetain_n();
  v64 = swift_dynamicCastClass();
  if (!v64)
  {
    swift_unknownObjectRelease();
    v64 = MEMORY[0x277D84F90];
  }

  v65 = *(v64 + 16);

  if (__OFSUB__(v61 >> 1, v59))
  {
    __break(1u);
  }

  else if (v65 == (v61 >> 1) - v59)
  {
    v63 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (!v63)
    {
      v63 = MEMORY[0x277D84F90];
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  swift_unknownObjectRelease_n();
LABEL_24:
  sub_25BAFFB88(v55, v57, v59, v61);
  v63 = v62;
LABEL_31:
  swift_unknownObjectRelease();
LABEL_32:
  a13(v74, v63);

  sub_25BB1D62C(v76, &v73);
  swift_getAssociatedTypeWitness();
  swift_dynamicCast();
  sub_25BB1D62C(v75, &v72);
  swift_getAssociatedTypeWitness();
  swift_dynamicCast();
  sub_25BB1D62C(v74, &v71);
  swift_getAssociatedTypeWitness();
  return swift_dynamicCast();
}

uint64_t gradient<A>(of:)()
{
  OUTLINED_FUNCTION_3_30();
  OUTLINED_FUNCTION_54();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_24_25(v0);
  OUTLINED_FUNCTION_57_10();

  return OUTLINED_FUNCTION_58();
}

{
  OUTLINED_FUNCTION_3_30();
  OUTLINED_FUNCTION_54();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_24_25(v0);
  OUTLINED_FUNCTION_57_10();

  return OUTLINED_FUNCTION_58();
}

{
  OUTLINED_FUNCTION_3_30();
  OUTLINED_FUNCTION_54();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_24_25(v0);
  OUTLINED_FUNCTION_57_10();

  return OUTLINED_FUNCTION_58();
}

{
  OUTLINED_FUNCTION_3_30();
  OUTLINED_FUNCTION_54();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_24_25(v0);
  OUTLINED_FUNCTION_57_10();

  return OUTLINED_FUNCTION_58();
}

uint64_t gradient<A>(at:_:of:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_10_46();
  valueWithPullback<A>(at:_:of:)();
  v10 = OUTLINED_FUNCTION_12_44(v2, v3, v4, v5, v6, v7, v8, v9, v14[0], v14[1]);
  OUTLINED_FUNCTION_41_23(v10, v11);
  v12 = sub_25BC6F34C(a1, v14);

  return v12;
}

void valueWithPullback<A>(at:_:of:)()
{
  OUTLINED_FUNCTION_9_18();
  v4 = v3;
  v6 = v5;
  v54 = v7;
  v55 = v8;
  OUTLINED_FUNCTION_32_25();
  v62 = v9;
  sub_25BCB5EBC();
  OUTLINED_FUNCTION_2();
  v59 = v11;
  v60.n128_u64[0] = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v58 = v13 - v12;
  sub_25BCB5EEC();
  OUTLINED_FUNCTION_2();
  v56 = v15;
  v57 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v53 = v17 - v16;
  OUTLINED_FUNCTION_9();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v21);
  v23 = &v52 - v22;
  v66 = *v1;

  sub_25BC689A4(&v66, v68);
  v24 = v68[0];
  v65 = v4;
  type metadata accessor for LayerDifferentiableView(0, v6, v4, v25);
  v61 = v19;
  v26 = *(v19 + 16);
  v26(v23, v0, v6);
  v27 = sub_25BAB07DC();
  v28 = *(*v27 + 96);
  OUTLINED_FUNCTION_62_9(v27 + v28);
  v63 = v6;
  v64 = v2;
  v26(v2, v27 + v28, v6);
  v29 = qword_28154BE88;
  v30 = v24;

  if (v29 != -1)
  {
    OUTLINED_FUNCTION_20_2(&qword_28154BE88);
  }

  v31 = v57;
  OUTLINED_FUNCTION_56_14(v57, qword_28154BE90);
  v32 = v56;
  v33 = v53;
  (*(v56 + 16))(v53);
  v34 = v58;
  sub_25BCB5EAC();
  v35 = OUTLINED_FUNCTION_90();
  *v35 = 0;
  v36 = sub_25BCB5EDC();
  v37 = sub_25BCB6D5C();
  v38 = sub_25BCB5E9C();
  _os_signpost_emit_with_name_impl(&dword_25BA90000, v36, v37, v38, "Backpropagation (Forward Pass)", "", v35, 2u);
  v55 = sub_25BC6C4D0(&v67, v54, v55, v30, v64, v63, v65);
  v39 = sub_25BCB6D4C();
  v40 = sub_25BCB5E9C();
  _os_signpost_emit_with_name_impl(&dword_25BA90000, v36, v39, v40, "Backpropagation (Forward Pass)", "", v35, 2u);

  v41 = v67;
  OUTLINED_FUNCTION_89();
  (*(v59 + 8))(v34, v60.n128_u64[0]);
  (*(v32 + 8))(v33, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  OUTLINED_FUNCTION_1_2();
  v42 = swift_allocObject();
  v60 = xmmword_25BCBAE50;
  *(v42 + 16) = xmmword_25BCBAE50;
  *(v42 + 32) = v41;
  OUTLINED_FUNCTION_1_2();
  v43 = swift_allocObject();
  OUTLINED_FUNCTION_67_9(v43, v60);

  v44 = sub_25BAC192C();
  v66 = v43;
  sub_25BC03860(v44);
  v45 = sub_25BAC1988(v42, v66, v55);
  v47 = v46;

  sub_25BAC2070();
  v49 = v48;

  *v62 = v41;
  v50 = swift_allocObject();
  v51 = v65;
  v50[2] = v63;
  v50[3] = v51;
  v50[4] = v45;
  v50[5] = v47;
  v50[6] = sub_25BC68BF4;
  v50[7] = 0;
  v50[8] = sub_25BACBC58;
  v50[9] = v49;
  (*(v61 + 8))(v64);
  OUTLINED_FUNCTION_22_33();
  OUTLINED_FUNCTION_75_9();
  OUTLINED_FUNCTION_10_16();
}

{
  OUTLINED_FUNCTION_9_18();
  v5 = v4;
  v7 = v6;
  v48 = v8;
  v49 = v9;
  OUTLINED_FUNCTION_32_25();
  v55 = v10;
  sub_25BCB5EBC();
  OUTLINED_FUNCTION_2();
  v52 = v12;
  v53 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19_20();
  sub_25BCB5EEC();
  OUTLINED_FUNCTION_2();
  v50 = v14;
  v51 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v47 = v16 - v15;
  OUTLINED_FUNCTION_9();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v20);
  v22 = &v47 - v21;
  v61 = MEMORY[0x277D84FA0];
  v23 = sub_25BC68750(v1, &v61);

  v57 = v5;
  type metadata accessor for LayerDifferentiableView(0, v7, v5, v24);
  v54 = v18;
  v25 = *(v18 + 16);
  v25(v22, v0, v7);
  v26 = sub_25BAB07DC();
  v27 = *(*v26 + 96);
  OUTLINED_FUNCTION_62_9(v26 + v27);
  v56 = v3;
  v58 = v7;
  v25(v3, v26 + v27, v7);
  if (qword_28154BE88 != -1)
  {
    OUTLINED_FUNCTION_20_2(&qword_28154BE88);
  }

  OUTLINED_FUNCTION_56_14(v51, qword_28154BE90);
  (*(v50 + 16))(v47);
  sub_25BCB5EAC();
  *OUTLINED_FUNCTION_90() = 0;
  v28 = sub_25BCB5EDC();
  v29 = sub_25BCB6D5C();
  v30 = sub_25BCB5E9C();
  OUTLINED_FUNCTION_83_9(&dword_25BA90000, v28, v29, v30, "Backpropagation (Forward Pass)", "");
  v49 = sub_25BC6C4D0(&v60, v48, v49, v23, v56, v58, v57);
  v31 = sub_25BCB6D4C();
  v32 = sub_25BCB5E9C();
  OUTLINED_FUNCTION_83_9(&dword_25BA90000, v28, v31, v32, "Backpropagation (Forward Pass)", "");

  v33 = v60;
  OUTLINED_FUNCTION_89();
  (*(v52 + 8))(v2, v53);
  v34 = OUTLINED_FUNCTION_58();
  v35(v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  OUTLINED_FUNCTION_1_2();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_25BCBAE50;
  *(v36 + 32) = v33;

  v37 = sub_25BAC192C();
  v59 = v23;
  sub_25BCB617C();
  sub_25BC03860(v37);
  v38 = sub_25BAC1988(v36, v59, v49);
  v40 = v39;

  v41 = *(v23 + 16);

  v42 = OUTLINED_FUNCTION_15_7(&unk_286D54788);
  *(v42 + 16) = v41;
  sub_25BAC2070();
  v44 = v43;

  *v55 = v33;
  v45 = swift_allocObject();
  v46 = v57;
  v45[2] = v58;
  v45[3] = v46;
  v45[4] = v38;
  v45[5] = v40;
  v45[6] = sub_25BC68C2C;
  v45[7] = v42;
  v45[8] = v41;
  v45[9] = sub_25BACBC58;
  v45[10] = v44;
  (*(v54 + 8))(v56);
  OUTLINED_FUNCTION_20_34();
  OUTLINED_FUNCTION_10_16();
}

uint64_t valueWithGradient<A>(at:_:of:)(void *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_10_46();
  valueWithPullback<A>(at:_:of:)();
  v13 = OUTLINED_FUNCTION_80_9(v5, v6, v7, v8, v9, v10, v11, v12, v18, v19);
  OUTLINED_FUNCTION_41_23(v13, v14);
  v15 = sub_25BC6F34C(&v19, &v18);

  v16 = v19;
  *a1 = v2;
  *a2 = v16;
  return v15;
}

uint64_t (*pullback<A>(at:_:of:)())(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_6_57();
  OUTLINED_FUNCTION_10_46();
  valueWithPullback<A>(at:_:of:)();
  OUTLINED_FUNCTION_58_12(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  return OUTLINED_FUNCTION_22_33();
}

uint64_t sub_25BC6BC90(uint64_t *a1, uint64_t *a2, unint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v13 = *a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_25BCBAE50;
  *(v15 + 32) = v13;

  v16 = (a3)(v15);

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_25BCBAE50;
  if (!*(v16 + 16))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v18 = v17;
  *(v17 + 32) = *(v16 + 32);

  a5(&v29, v18);

  v14 = v29;
  sub_25BBCB9F8(1, v16);
  a4 = v19;
  a5 = v20;
  a6 = v21;
  a3 = v22;

  if ((a3 & 1) == 0)
  {
LABEL_3:
    sub_25BAFFB88(a4, a5, a6, a3);
    v24 = v23;
LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  sub_25BCB78DC();
  swift_unknownObjectRetain_n();
  v25 = swift_dynamicCastClass();
  if (!v25)
  {
    swift_unknownObjectRelease();
    v25 = MEMORY[0x277D84F90];
  }

  v26 = *(v25 + 16);

  if (__OFSUB__(a3 >> 1, a6))
  {
    goto LABEL_13;
  }

  if (v26 != (a3 >> 1) - a6)
  {
LABEL_14:
    swift_unknownObjectRelease_n();
    goto LABEL_3;
  }

  v24 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v24)
  {
    v24 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

LABEL_11:
  v27 = a7(v24);

  *a1 = v14;
  return v27;
}

void (*gradient<A>(at:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(uint64_t)
{
  OUTLINED_FUNCTION_2_72(a1, a2, a3, a4, a5, a6, a6, a8, v20, v21);
  valueWithPullback<A>(at:_:of:)();
  v16 = OUTLINED_FUNCTION_23_33(v8, v9, v10, v11, v12, v13, v14, v15, v20, v21);
  OUTLINED_FUNCTION_41_23(v16, v17);
  v18 = sub_25BC6F38C(&v20);

  return v18;
}

uint64_t valueWithGradient<A>(at:_:of:)()
{
  OUTLINED_FUNCTION_73_9();
  valueWithPullback<A>(at:_:of:)();
  v8 = OUTLINED_FUNCTION_12_44(v0, v1, v2, v3, v4, v5, v6, v7, v11[0], v11[1]);
  OUTLINED_FUNCTION_41_23(v8, v9);
  sub_25BC6F38C(v11);

  return OUTLINED_FUNCTION_71_8();
}

void (*(*pullback<A>(at:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(uint64_t *a1))(uint64_t)
{
  OUTLINED_FUNCTION_2_72(a1, a2, a3, a4, a5, a6, a6, a8, v17, v19);
  valueWithPullback<A>(at:_:of:)();
  OUTLINED_FUNCTION_58_12(v8, v9, v10, v11, v12, v13, v14, v15, v18, v20);
  return OUTLINED_FUNCTION_20_34();
}

uint64_t sub_25BC6C4D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(v38);

  v8 = v39;
  if (!v39 || (*(v39 + 24) & 1) == 0)
  {
    type metadata accessor for PersistentGraphScope();
    OUTLINED_FUNCTION_30_0();
    v9 = swift_allocObject();
    v10 = OUTLINED_FUNCTION_59_12(v9, MEMORY[0x277D84F90]);

    v39 = v10;
    v11 = objc_autoreleasePoolPush();
    OUTLINED_FUNCTION_60_11(v11, v12, v13, v14, v15, v16, v17, v18, v28, v29, a6, a7, a2, a3, a4, a5, v36, v37, v38[0]);
    objc_autoreleasePoolPop(v11);
    if (a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    sub_25BAA4AF4(v38);
    return v10;
  }

  v19 = objc_autoreleasePoolPush();
  OUTLINED_FUNCTION_60_11(v19, v20, v21, v22, v23, v24, v25, v26, v28, v29, a6, a7, a2, a3, a4, a5, v36, v37, v38[0]);
  objc_autoreleasePoolPop(v19);
  v10 = v8;
  if (!a1)
  {
    goto LABEL_6;
  }

LABEL_7:

  result = sub_25BAA4AF4(v38);
  __break(1u);
  return result;
}

void (*sub_25BC6C600(uint64_t *a1, uint64_t (*a2)(unint64_t), unint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), uint64_t a6, void (*a7)(uint64_t), void (*a8)(uint64_t)))(uint64_t)
{
  v16 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_25BCBAE50;
  *(v17 + 32) = v16;

  v18 = a2(v17);

  if (a6 < 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  a5 = a4;
  a3 = sub_25BABAF60(0, a6, v18);
  v17 = v19;
  a4 = v20;
  v8 = v21;
  if (v21)
  {
    a8 = a7;
    sub_25BCB78DC();
    swift_unknownObjectRetain_n();
    v24 = swift_dynamicCastClass();
    if (!v24)
    {
      swift_unknownObjectRelease();
      v24 = MEMORY[0x277D84F90];
    }

    v25 = *(v24 + 16);

    if (!__OFSUB__(v8 >> 1, a4))
    {
      if (v25 != (v8 >> 1) - a4)
      {
        goto LABEL_24;
      }

      v23 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      a7 = a8;
      if (v23)
      {
        goto LABEL_11;
      }

      v23 = MEMORY[0x277D84F90];
      goto LABEL_10;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  while (1)
  {
    sub_25BAFFB88(a3, v17, a4, v8);
    v23 = v22;
LABEL_10:
    swift_unknownObjectRelease();
LABEL_11:
    a8 = a5(v23);

    sub_25BBCB9F8(a6, v18);
    a3 = v26;
    a6 = v27;
    a5 = v28;
    v17 = v29;

    if ((v17 & 1) == 0)
    {
      goto LABEL_12;
    }

    v18 = a7;
    sub_25BCB78DC();
    swift_unknownObjectRetain_n();
    v32 = swift_dynamicCastClass();
    if (!v32)
    {
      swift_unknownObjectRelease();
      v32 = MEMORY[0x277D84F90];
    }

    v33 = *(v32 + 16);

    if (!__OFSUB__(v17 >> 1, a5))
    {
      break;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    swift_unknownObjectRelease();
    a7 = a8;
  }

  if (v33 != (v17 >> 1) - a5)
  {
    swift_unknownObjectRelease_n();
    a7 = v18;
LABEL_12:
    sub_25BAFFB88(a3, a6, a5, v17);
    v31 = v30;
    goto LABEL_19;
  }

  v31 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  a7 = v18;
  if (v31)
  {
    goto LABEL_20;
  }

  v31 = MEMORY[0x277D84F90];
LABEL_19:
  swift_unknownObjectRelease();
LABEL_20:
  a7(v31);

  return a8;
}

uint64_t gradient(of:)()
{
  OUTLINED_FUNCTION_69_10();
  OUTLINED_FUNCTION_30_0();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return OUTLINED_FUNCTION_72_10();
}

{
  OUTLINED_FUNCTION_69_10();
  OUTLINED_FUNCTION_30_0();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return OUTLINED_FUNCTION_72_10();
}

{
  OUTLINED_FUNCTION_69_10();
  OUTLINED_FUNCTION_30_0();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return OUTLINED_FUNCTION_72_10();
}

void valueWithPullback(at:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_9_18();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v62 = v26;
  v63.n128_u64[0] = sub_25BCB5EBC();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1();
  v28 = OUTLINED_FUNCTION_40_22();
  OUTLINED_FUNCTION_2();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_19_20();
  v32 = *v25;

  OUTLINED_FUNCTION_82_9();
  v66 = v32;

  OUTLINED_FUNCTION_82_9();
  v33 = qword_28154BE88;

  if (v33 != -1)
  {
    OUTLINED_FUNCTION_20_2(&qword_28154BE88);
  }

  OUTLINED_FUNCTION_56_14(v28, qword_28154BE90);
  v61 = v28;
  (*(v30 + 16))(v21);
  sub_25BCB5EAC();
  v34 = OUTLINED_FUNCTION_90();
  v35 = OUTLINED_FUNCTION_84_6(v34);
  sub_25BCB6D5C();
  v36 = OUTLINED_FUNCTION_64_12();
  OUTLINED_FUNCTION_38_23(&dword_25BA90000, v37, v38, v36, "Backpropagation (Forward Pass)", "");
  type metadata accessor for ContextManager();
  swift_retain_n();
  OUTLINED_FUNCTION_15_8();
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(v64);

  v39 = v65;
  v60 = v21;
  if (v65 && (*(v65 + 24) & 1) != 0)
  {

    v42 = objc_autoreleasePoolPush();

    sub_25BAA49B8();
    sub_25BAB7060(v64);

    v45 = OUTLINED_FUNCTION_28_27();
    v46(v45);
    v41 = v39;
  }

  else
  {
    type metadata accessor for PersistentGraphScope();
    OUTLINED_FUNCTION_30_0();
    v40 = swift_allocObject();
    v41 = OUTLINED_FUNCTION_59_12(v40, MEMORY[0x277D84F90]);

    v65 = v41;
    v42 = objc_autoreleasePoolPush();

    sub_25BAA49B8();
    sub_25BAB7060(v64);

    v43 = OUTLINED_FUNCTION_28_27();
    v44(v43);
  }

  sub_25BAA49B8();
  sub_25BAB814C();

  objc_autoreleasePoolPop(v42);
  sub_25BAA4AF4(v64);

  sub_25BCB6D4C();
  v47 = OUTLINED_FUNCTION_64_12();
  OUTLINED_FUNCTION_38_23(&dword_25BA90000, v48, v49, v47, "Backpropagation (Forward Pass)", "");

  v50 = v67;
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_12_12();
  v51(v20, v63.n128_u64[0]);
  OUTLINED_FUNCTION_12_12();
  v52(v60, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  OUTLINED_FUNCTION_1_2();
  v53 = swift_allocObject();
  OUTLINED_FUNCTION_68_11(v53, &a11, xmmword_25BCBAE50)[2].n128_u64[0] = v50;
  OUTLINED_FUNCTION_1_2();
  v54 = swift_allocObject();
  OUTLINED_FUNCTION_67_9(v54, v63);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_25_31(inited, &a11);
  v64[0] = v54;

  sub_25BC03860(inited);
  v56 = sub_25BAC1988(v53, v64[0], v41);
  v58 = v57;

  *v62 = v50;
  OUTLINED_FUNCTION_50_17();
  v59 = swift_allocObject();
  v59[2] = v56;
  v59[3] = v58;
  v59[4] = sub_25BC68BF4;
  v59[5] = 0;
  v59[6] = sub_25BC68BF4;
  v59[7] = 0;
  OUTLINED_FUNCTION_10_16();
}

uint64_t valueWithGradient(at:_:of:)(uint64_t *a1, uint64_t *a2, void *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = OUTLINED_FUNCTION_29_30(a1, a2, a3, a4, a5, a6, a7, a8, v31, *a5, *a4, var38[0]);
  valueWithPullback(at:_:of:)(v11, v12, v13, v14, v15, v14, v15, v16, v32, v34, v36, var38[0], var38[1], var38[2], var38[3], var38[4], var38[5], var38[6], var38[7], var38[8]);
  v17 = var38[0];

  v18 = Tensor.init(onesLike:)(var38);
  v26 = OUTLINED_FUNCTION_29_30(v18, v19, v20, v21, v22, v23, v24, v25, v33, v35, v37, var38[0]);
  sub_25BC6F3CC(v26, v27, v28);

  v30 = var38[0];
  *a1 = v17;
  *a2 = v30;
  *a3 = v38;
  return result;
}

uint64_t sub_25BC6D06C(void *a1, void *a2, uint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5, void (*a6)(uint64_t *__return_ptr, uint64_t), uint64_t a7, void (*a8)(uint64_t *__return_ptr, uint64_t))
{
  v13 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_25BCBAE50;
  *(v14 + 32) = v13;

  v15 = a4(v14);

  result = swift_allocObject();
  *(result + 16) = xmmword_25BCBAE50;
  if (v15[2])
  {
    v17 = result;
    *(result + 32) = v15[4];

    a6(&v21, v17);

    v18 = v21;
    result = swift_allocObject();
    *(result + 16) = xmmword_25BCBAE50;
    if (v15[2] >= 2uLL)
    {
      v19 = result;
      *(result + 32) = v15[5];

      a8(&v21, v19);

      v20 = v21;
      *a1 = v18;
      *a2 = v20;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t gradient(at:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_7_57(a1, a2, a3, a4, a5, a6, a7, a8, v20, v21);
  valueWithPullback(at:of:)();
  v17 = OUTLINED_FUNCTION_23_33(v9, v10, v11, v12, v13, v14, v15, v16, v20, v21);
  OUTLINED_FUNCTION_41_23(v17, v18);
  sub_25BC6F404(&v20);
  OUTLINED_FUNCTION_49();

  return v8;
}

void valueWithPullback(at:of:)()
{
  OUTLINED_FUNCTION_9_18();
  v38 = v0;
  v2 = v1;
  v40 = v3;
  v39 = sub_25BCB5EBC();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  v8 = sub_25BCB5EEC();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v41[0] = MEMORY[0x277D84FA0];
  v15 = sub_25BC68750(v2, v41);

  if (qword_28154BE88 != -1)
  {
    OUTLINED_FUNCTION_20_2(&qword_28154BE88);
  }

  OUTLINED_FUNCTION_56_14(v8, qword_28154BE90);
  (*(v10 + 16))(v14);
  sub_25BCB5EAC();
  *OUTLINED_FUNCTION_90() = 0;
  v16 = sub_25BCB5EDC();
  v17 = sub_25BCB6D5C();
  v18 = sub_25BCB5E9C();
  OUTLINED_FUNCTION_39_23(&dword_25BA90000, v19, v17, v18, "Backpropagation (Forward Pass)", "");
  type metadata accessor for ContextManager();
  swift_bridgeObjectRetain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(v41);

  v20 = v42;
  if (v42 && (*(v42 + 24) & 1) != 0)
  {

    v22 = v20;
  }

  else
  {
    type metadata accessor for PersistentGraphScope();
    OUTLINED_FUNCTION_30_0();
    v21 = swift_allocObject();
    v22 = OUTLINED_FUNCTION_59_12(v21, MEMORY[0x277D84F90]);

    v42 = v22;
  }

  v23 = objc_autoreleasePoolPush();
  sub_25BCB617C();
  sub_25BAA49B8();
  sub_25BAB7060(v41);

  v38(&v43, v15);
  sub_25BAA49B8();
  sub_25BAB814C();

  objc_autoreleasePoolPop(v23);
  sub_25BAA4AF4(v41);

  LOBYTE(v23) = sub_25BCB6D4C();
  v24 = sub_25BCB5E9C();
  OUTLINED_FUNCTION_39_23(&dword_25BA90000, v25, v23, v24, "Backpropagation (Forward Pass)", "");

  v26 = v43;
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_12_12();
  v27(v7, v39);
  OUTLINED_FUNCTION_12_12();
  v28(v14, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  OUTLINED_FUNCTION_1_2();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_25BCBAE50;
  *(v29 + 32) = v26;

  v30 = OUTLINED_FUNCTION_72_10();
  v32 = sub_25BAC1988(v30, v31, v22);
  v34 = v33;

  v35 = *(v15 + 16);

  v36 = OUTLINED_FUNCTION_15_7(&unk_286D54850);
  *(v36 + 16) = v35;
  *v40 = v26;
  OUTLINED_FUNCTION_54();
  v37 = swift_allocObject();
  v37[2] = v32;
  v37[3] = v34;
  v37[4] = sub_25BC6F834;
  v37[5] = v36;
  OUTLINED_FUNCTION_10_16();
}

uint64_t valueWithGradient(at:of:)()
{
  OUTLINED_FUNCTION_73_9();
  valueWithPullback(at:of:)();
  v8 = OUTLINED_FUNCTION_12_44(v0, v1, v2, v3, v4, v5, v6, v7, v11[0], v11[1]);
  OUTLINED_FUNCTION_41_23(v8, v9);
  sub_25BC6F404(v11);

  return OUTLINED_FUNCTION_71_8();
}

uint64_t pullback(at:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_7_57(a1, a2, a3, a4, a5, a6, a7, a8, v17, v19);
  valueWithPullback(at:of:)();
  OUTLINED_FUNCTION_58_12(v8, v9, v10, v11, v12, v13, v14, v15, v18, v20);
  return OUTLINED_FUNCTION_113();
}

uint64_t sub_25BC6D7B0(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25BCBAE50;
  *(v7 + 32) = v6;

  v8 = a2(v7);

  v9 = a4(v8);

  return v9;
}

uint64_t gradient<A>(at:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_2_72(a1, a2, a3, a4, a5, a6, a7, a8, v20, v21);
  valueWithPullback<A>(at:of:)();
  v17 = OUTLINED_FUNCTION_23_33(v9, v10, v11, v12, v13, v14, v15, v16, v20, v21);
  OUTLINED_FUNCTION_41_23(v17, v18);
  sub_25BC6F41C(&v20);
  OUTLINED_FUNCTION_49();

  return v8;
}

{
  OUTLINED_FUNCTION_2_72(a1, a2, a3, a4, a5, a6, a7, a8, v20, v21);
  valueWithPullback<A>(at:of:)();
  v17 = OUTLINED_FUNCTION_23_33(v9, v10, v11, v12, v13, v14, v15, v16, v20, v21);
  OUTLINED_FUNCTION_41_23(v17, v18);
  sub_25BAC2A84(&v20);
  OUTLINED_FUNCTION_49();

  return v8;
}

uint64_t pullback<A>(at:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_2_72(a1, a2, a3, a4, a5, a6, a7, a8, v17, v19);
  valueWithPullback<A>(at:of:)();
  OUTLINED_FUNCTION_58_12(v8, v9, v10, v11, v12, v13, v14, v15, v18, v20);
  return OUTLINED_FUNCTION_113();
}

uint64_t sub_25BC6DD38()
{
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(v7);

  v0 = v8;
  if (v8)
  {
    v1 = *(v8 + 24);
    if (v1)
    {

      v5 = objc_autoreleasePoolPush();
      sub_25BAB6FD4();
      objc_autoreleasePoolPop(v5);
      v3 = v0;
      goto LABEL_7;
    }

    v2 = v1 | 1;
  }

  else
  {
    v2 = 1;
  }

  type metadata accessor for PersistentGraphScope();
  swift_allocObject();
  v3 = sub_25BAB6EC8(v2, MEMORY[0x277D84F90]);

  v8 = v3;
  v4 = objc_autoreleasePoolPush();
  sub_25BAB6FD4();
  objc_autoreleasePoolPop(v4);
LABEL_7:
  sub_25BAA4AF4(v7);
  return v3;
}

void sub_25BC6E030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_9_18();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  sub_25BCB5EBC();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1();
  v28 = OUTLINED_FUNCTION_40_22();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_19_20();
  v63 = *v24;

  OUTLINED_FUNCTION_82_9();
  v30 = v61[0];
  v31 = qword_28154BE88;

  if (v31 != -1)
  {
    OUTLINED_FUNCTION_20_2(&qword_28154BE88);
  }

  OUTLINED_FUNCTION_56_14(v28, qword_28154BE90);
  v32 = OUTLINED_FUNCTION_51_15();
  v33(v32);
  sub_25BCB5EAC();
  v34 = OUTLINED_FUNCTION_90();
  v35 = OUTLINED_FUNCTION_84_6(v34);
  v36 = sub_25BCB6D5C();
  v37 = sub_25BCB5E9C();
  OUTLINED_FUNCTION_39_23(&dword_25BA90000, v38, v36, v37, "Backpropagation (Forward Pass)", "");
  type metadata accessor for ContextManager();
  OUTLINED_FUNCTION_15_8();
  swift_retain_n();
  v39 = sub_25BAA49B8();
  sub_25BAA4A5C(v61);

  v40 = v62;
  if (v62)
  {
    v41 = *(v62 + 24);
    if (v41)
    {

      v47 = objc_autoreleasePoolPush();
      OUTLINED_FUNCTION_17_26();

      v48 = OUTLINED_FUNCTION_26_32();
      sub_25BC3349C(v48, v30);
      goto LABEL_9;
    }

    v42 = v26;
    v39 = v41 | 1;
  }

  else
  {
    v42 = v26;
    v39 = 1;
  }

  type metadata accessor for PersistentGraphScope();
  OUTLINED_FUNCTION_30_0();
  v43 = swift_allocObject();
  v44 = OUTLINED_FUNCTION_59_12(v43, MEMORY[0x277D84F90]);

  v62 = v44;
  v45 = objc_autoreleasePoolPush();
  OUTLINED_FUNCTION_17_26();

  v46 = OUTLINED_FUNCTION_26_32();
  sub_25BC3349C(v46, v30);
  v40 = v44;
  v26 = v42;
LABEL_9:
  objc_autoreleasePoolPop(v39);
  sub_25BAA4AF4(v61);
  OUTLINED_FUNCTION_15_8();

  v49 = sub_25BCB6D4C();
  v50 = sub_25BCB5E9C();
  OUTLINED_FUNCTION_39_23(&dword_25BA90000, v51, v49, v50, "Backpropagation (Forward Pass)", "");

  v52 = v64;
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_12_12();
  v53 = OUTLINED_FUNCTION_16_2();
  v54(v53);
  OUTLINED_FUNCTION_12_12();
  v55(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  OUTLINED_FUNCTION_1_2();
  v56 = swift_allocObject();
  OUTLINED_FUNCTION_68_11(v56, &a17, xmmword_25BCBAE50)[2].n128_u64[0] = v52;
  OUTLINED_FUNCTION_1_2();
  v57 = swift_allocObject();
  OUTLINED_FUNCTION_25_31(v57, &a17);

  sub_25BAC1988(v56, v57, v40);

  *v26 = v52;
  OUTLINED_FUNCTION_54();
  v58 = swift_allocObject();
  v59 = OUTLINED_FUNCTION_8_54(v58);
  *(v59 + 32) = v60;
  *(v59 + 40) = 0;
  OUTLINED_FUNCTION_10_16();
}

void sub_25BC6E46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_9_18();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v54 = v26;
  v53 = sub_25BCB5EBC();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1();
  v28 = OUTLINED_FUNCTION_40_22();
  OUTLINED_FUNCTION_2();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_19_20();
  v57[0] = *v25;
  swift_retain_n();

  sub_25BC689A4(v57, v55);
  v32 = qword_28154BE88;

  if (v32 != -1)
  {
    OUTLINED_FUNCTION_20_2(&qword_28154BE88);
  }

  OUTLINED_FUNCTION_56_14(v28, qword_28154BE90);
  v52 = v28;
  v30[2](v21);
  sub_25BCB5EAC();
  v33 = OUTLINED_FUNCTION_90();
  v34 = OUTLINED_FUNCTION_84_6(v33);
  sub_25BCB6D5C();
  v35 = OUTLINED_FUNCTION_64_12();
  _os_signpost_emit_with_name_impl(&dword_25BA90000, v34, v28, v35, "Backpropagation (Forward Pass)", "", v33, 2u);
  v36 = type metadata accessor for ContextManager();
  OUTLINED_FUNCTION_15_8();
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(v55);

  v37 = v56;
  v51 = v21;
  if (v56 && (*(v56 + 24) & 1) != 0)
  {

    v41 = objc_autoreleasePoolPush();
    OUTLINED_FUNCTION_81_9();

    sub_25BAA49B8();
    sub_25BAB7060(v55);

    OUTLINED_FUNCTION_16_47();

    v39 = v37;
  }

  else
  {
    type metadata accessor for PersistentGraphScope();
    OUTLINED_FUNCTION_30_0();
    v38 = swift_allocObject();
    v39 = OUTLINED_FUNCTION_59_12(v38, MEMORY[0x277D84F90]);

    v56 = v39;
    v40 = objc_autoreleasePoolPush();
    OUTLINED_FUNCTION_81_9();

    sub_25BAA49B8();
    sub_25BAB7060(v55);

    OUTLINED_FUNCTION_16_47();
  }

  sub_25BAA49B8();
  sub_25BAB814C();

  objc_autoreleasePoolPop(v30);
  sub_25BAA4AF4(v55);

  sub_25BCB6D4C();
  v42 = OUTLINED_FUNCTION_64_12();
  _os_signpost_emit_with_name_impl(&dword_25BA90000, v34, v36, v42, "Backpropagation (Forward Pass)", "", v33, 2u);

  v43 = v57[1];
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_12_12();
  v44(v20, v53);
  OUTLINED_FUNCTION_12_12();
  v45(v51, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  OUTLINED_FUNCTION_1_2();
  v46 = swift_allocObject();
  OUTLINED_FUNCTION_68_11(v46, &a13, xmmword_25BCBAE50)[2].n128_u64[0] = v43;
  OUTLINED_FUNCTION_1_2();
  v47 = swift_allocObject();
  OUTLINED_FUNCTION_25_31(v47, &a13);

  sub_25BAC1988(v46, v47, v39);

  *v54 = v43;
  OUTLINED_FUNCTION_54();
  v48 = swift_allocObject();
  v49 = OUTLINED_FUNCTION_8_54(v48);
  *(v49 + 32) = v50;
  *(v49 + 40) = 0;

  OUTLINED_FUNCTION_75_9();
  OUTLINED_FUNCTION_10_16();
}

void valueWithPullback(at:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_9_18();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_25BCB5EBC();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1();
  v30 = OUTLINED_FUNCTION_40_22();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_19_20();
  v63 = *v26;

  OUTLINED_FUNCTION_82_9();
  v32 = qword_28154BE88;

  if (v32 != -1)
  {
    OUTLINED_FUNCTION_20_2(&qword_28154BE88);
  }

  OUTLINED_FUNCTION_56_14(v30, qword_28154BE90);
  v33 = OUTLINED_FUNCTION_51_15();
  v34(v33);
  sub_25BCB5EAC();
  v35 = OUTLINED_FUNCTION_90();
  v36 = OUTLINED_FUNCTION_84_6(v35);
  sub_25BCB6D5C();
  v37 = OUTLINED_FUNCTION_64_12();
  OUTLINED_FUNCTION_38_23(&dword_25BA90000, v38, v39, v37, "Backpropagation (Forward Pass)", "");
  type metadata accessor for ContextManager();
  OUTLINED_FUNCTION_15_8();
  swift_retain_n();
  v40 = sub_25BAA49B8();
  sub_25BAA4A5C(v61);

  v41 = v62;
  if (v62)
  {
    v42 = *(v62 + 24);
    if (v42)
    {

      v48 = objc_autoreleasePoolPush();
      OUTLINED_FUNCTION_17_26();

      v49 = OUTLINED_FUNCTION_26_32();
      OUTLINED_FUNCTION_63_10(v49);
      if (!v24)
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    v43 = v28;
    v40 = v42 | 1;
  }

  else
  {
    v43 = v28;
    v40 = 1;
  }

  type metadata accessor for PersistentGraphScope();
  OUTLINED_FUNCTION_30_0();
  v44 = swift_allocObject();
  v45 = OUTLINED_FUNCTION_59_12(v44, MEMORY[0x277D84F90]);

  v62 = v45;
  v46 = objc_autoreleasePoolPush();
  OUTLINED_FUNCTION_17_26();

  v47 = OUTLINED_FUNCTION_26_32();
  OUTLINED_FUNCTION_63_10(v47);
  if (!v24)
  {
    v41 = v45;
    v28 = v43;
LABEL_10:
    objc_autoreleasePoolPop(v40);
    sub_25BAA4AF4(v61);

    v50 = sub_25BCB6D4C();
    v51 = sub_25BCB5E9C();
    _os_signpost_emit_with_name_impl(&dword_25BA90000, v36, v50, v51, "Backpropagation (Forward Pass)", "", v35, 2u);

    v52 = v64;
    OUTLINED_FUNCTION_89();
    OUTLINED_FUNCTION_12_12();
    v53 = OUTLINED_FUNCTION_16_2();
    v54(v53);
    OUTLINED_FUNCTION_12_12();
    v55(v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
    OUTLINED_FUNCTION_1_2();
    v56 = swift_allocObject();
    OUTLINED_FUNCTION_68_11(v56, &a17, xmmword_25BCBAE50)[2].n128_u64[0] = v52;
    OUTLINED_FUNCTION_1_2();
    v57 = swift_allocObject();
    OUTLINED_FUNCTION_25_31(v57, &a17);

    sub_25BAC1988(v56, v57, v41);

    *v28 = v52;
    OUTLINED_FUNCTION_54();
    v58 = swift_allocObject();
    v59 = OUTLINED_FUNCTION_8_54(v58);
    *(v59 + 32) = v60;
    *(v59 + 40) = 0;
    OUTLINED_FUNCTION_10_16();
    return;
  }

LABEL_11:
  OUTLINED_FUNCTION_15_8();

  objc_autoreleasePoolPop(v40);

  sub_25BAA4AF4(v61);
  __break(1u);
}

uint64_t sub_25BC6EDE8(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25BCBAE50;
  *(v7 + 32) = v6;

  v8 = a2(v7);

  a4(v8);
}

uint64_t (*pullback<A>(at:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_72(a1, a2, a3, a4, a5, a6, a7, a8, v17, v19);
  valueWithPullback<A>(at:of:)();
  OUTLINED_FUNCTION_58_12(v8, v9, v10, v11, v12, v13, v14, v15, v18, v20);
  return OUTLINED_FUNCTION_19_33();
}

uint64_t gradient(at:of:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;

  v6 = sub_25BACB06C();

  if (v6)
  {
    if (*(v6 + 24))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25BCBAE50;
      *(inited + 32) = v5;
      v8 = swift_initStackObject();
      *(v8 + 16) = xmmword_25BCBAE50;
      *(v8 + 32) = v4;

      v9 = OUTLINED_FUNCTION_78_10();
      v11 = sub_25BAC1988(v9, v10, v6);

      OUTLINED_FUNCTION_1_2();
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_25BCBAE50;
      v15 = v5;

      Tensor.init(onesLike:)(&v15);
      v13 = v11(v12);

      if (*(v13 + 16))
      {
        *a3 = *(v13 + 32);
      }

      __break(1u);
    }
  }

  result = OUTLINED_FUNCTION_43_19("Fatal error", "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Runtime/Backpropagation.swift", "ime/Backpropagation.swift", 1093);
  __break(1u);
  return result;
}

uint64_t gradient(at:of:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;

  v4 = sub_25BACB06C();

  if (v4)
  {
    if (*(v4 + 24))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
      inited = swift_initStackObject();
      OUTLINED_FUNCTION_67_9(inited, xmmword_25BCBAE50);

      v6 = sub_25BAC1988(inited, a1, v4);

      OUTLINED_FUNCTION_1_2();
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_25BCBAE50;
      v10 = v3;

      Tensor.init(onesLike:)(&v10);
      v8 = v6(v7);

      return v8;
    }
  }

  result = OUTLINED_FUNCTION_43_19("Fatal error", "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Runtime/Backpropagation.swift", "ime/Backpropagation.swift", 1120);
  __break(1u);
  return result;
}

uint64_t sub_25BC6F444(uint64_t a1)
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

uint64_t objectdestroy_38Tm()
{

  OUTLINED_FUNCTION_54();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_25BC6F544@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result;
  return result;
}

unint64_t sub_25BC6F580()
{
  result = qword_27FBB4A00;
  if (!qword_27FBB4A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB49F0, &unk_25BCC0140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4A00);
  }

  return result;
}

uint64_t sub_25BC6F684()
{
  OUTLINED_FUNCTION_79_7();
  v1 = *(v0 + 56);
  v4 = *(v0 + 48);
  return v2(&v4, v1);
}

unint64_t sub_25BC6F704()
{
  result = qword_27FBB7690;
  if (!qword_27FBB7690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7690);
  }

  return result;
}

unint64_t sub_25BC6F774()
{
  result = qword_27FBB7698;
  if (!qword_27FBB7698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB49F0, &unk_25BCC0140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7698);
  }

  return result;
}

uint64_t sub_25BC6F7FC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_51_15()
{
  result = v1;
  *(v2 - 280) = v0;
  return result;
}

uint64_t sub_25BC6F89C()
{
  v0 = sub_25BCB614C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB76A0, &qword_25BCD2EB0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_28154C3A8 = result;
  return result;
}

uint64_t sub_25BC6F934(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = (a3 + 48);
  v7 = MEMORY[0x277D84F90];
  if (v5)
  {
    while (1)
    {
      v8 = *(v6 - 1);
      v9 = *v6;
      v22[0] = *(v6 - 2);
      v22[1] = v8;
      v22[2] = v9;
      sub_25BCB617C();

      (v23)(&v19, v22);
      if (v4)
      {
        break;
      }

      v11 = v19;
      v10 = v20;
      v12 = v21;
      if (v20)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_45();
          sub_25BAFDDD8();
          v7 = v16;
        }

        v13 = *(v7 + 16);
        v14 = v7;
        if (v13 >= *(v7 + 24) >> 1)
        {
          sub_25BAFDDD8();
          v14 = v17;
        }

        *(v14 + 16) = v13 + 1;
        v7 = v14;
        v15 = (v14 + 24 * v13);
        v15[4] = v11;
        v15[5] = v10;
        v15[6] = v12;
      }

      else
      {
        sub_25BC72884(v19, 0);
      }

      v6 += 3;
      if (!--v5)
      {
        return v7;
      }
    }
  }

  return v7;
}

uint64_t sub_25BC6FAA0(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = a3 + 32;
  while (1)
  {
    if (v6 == v5)
    {
      return 0;
    }

    v9 = *(v7 + 8 * v5);
    result = a1(&v9, a2);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v5;
  }

  return v5;
}

uint64_t TensorShape.contiguousSize.getter()
{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    return 1;
  }

  v2 = (*v0 + 32);
  v3 = 1;
  while (1)
  {
    v4 = *v2++;
    result = v3 * v4;
    if ((v3 * v4) >> 64 != (v3 * v4) >> 63)
    {
      break;
    }

    v3 = result;
    if (!--v1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC6FB74(uint64_t a1)
{
  v3 = *v1;
  result = sub_25BC6FC68();
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v5 + 3;
    while (1)
    {
      v8 = *(v3 + 8 * v7);
      if (!v8)
      {
        break;
      }

      if (a1 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_19;
      }

      if (v5 > *(result + 16))
      {
        goto LABEL_16;
      }

      v10 = a1 / v8;
      v11 = a1 % v8;
      v12 = *(result + 8 * v7);
      v13 = a1 % v8 * v12;
      if ((v11 * v12) >> 64 != v13 >> 63)
      {
        goto LABEL_17;
      }

      v14 = __OFADD__(v6, v13);
      v6 += v13;
      if (v14)
      {
        goto LABEL_18;
      }

      --v7;
      a1 = v10;
      if (v7 == 3)
      {

        return v6;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_25BC6FC68()
{
  v1 = *v0;
  v2 = sub_25BAC0E14(1, *(v1 + 16));
  v3 = 0;
  for (i = *(v1 + 16) - 2; i > 0; i = v6)
  {
    v5 = i + 1;
    if (i + 1 < 0)
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      OUTLINED_FUNCTION_17_4();
      sub_25BADDD28(v15, v16, v17, v18, v19, v20, v21);
    }

    v6 = i - 1;
LABEL_7:
    if (v5 >= *(v2 + 16))
    {
      goto LABEL_16;
    }

    if (v5 >= *(v1 + 16))
    {
      goto LABEL_19;
    }

    v7 = *(v2 + 8 * v5 + 32);
    v8 = *(v1 + 32 + 8 * v5);
    v9 = v7 * v8;
    if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
    {
      goto LABEL_17;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BAA2110(v2, v10, v11, v12);
      v2 = v13;
    }

    if (i >= *(v2 + 16))
    {
      goto LABEL_18;
    }

    *(v2 + 8 * i + 32) = v9;
  }

  if (!((i != 0) | v3 & 1))
  {
    v6 = 0;
    v5 = 1;
    v3 = 1;
    goto LABEL_7;
  }

  return v2;
}

uint64_t sub_25BC6FDBC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < a2 || a3 < result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BC6FDD0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < a3 || a4 < a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BC6FDE4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {

    return MEMORY[0x277D84F90];
  }

  v3 = sub_25BB720F0();
  sub_25BCB617C();
  v4 = sub_25BAC111C(&v6, v3 + 32, v2, a1);

  if (v4 == v2)
  {

    return v3;
  }

  __break(1u);
  return result;
}

void sub_25BC6FE80(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2)
{
  v4 = sub_25BC71EFC(a1, a2);
  if (!v3)
  {
    v5 = *(*v2 + 16);
    if (v5 < v4)
    {
      __break(1u);
    }

    else
    {
      sub_25BC02820(v4, v5);
    }
  }
}

uint64_t sub_25BC6FEC4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_6_8();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_53_0();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

NeuralNetworks::TensorShape __swiftcall TensorShape.init(_:)(Swift::OpaquePointer a1)
{
  v3 = v1;
  if (!(a1._rawValue >> 62))
  {
    v4 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:

    v7 = MEMORY[0x277D84F90];
LABEL_14:
    *v3 = v7;
    return result;
  }

  v4 = sub_25BCB749C();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v14 = MEMORY[0x277D84F90];
  result.dimensions._rawValue = sub_25BC722B8(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v13 = v3;
    v6 = 0;
    v7 = v14;
    do
    {
      if ((a1._rawValue & 0xC000000000000001) != 0)
      {
        v8 = sub_25BC723D0(v6, a1._rawValue);
      }

      else
      {
        v8 = *(a1._rawValue + v6 + 4);
      }

      v9 = v8;
      v10 = [v8 integerValue];

      v12 = *(v14 + 16);
      v11 = *(v14 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_25BC722B8(v11 > 1, v12 + 1, 1);
      }

      ++v6;
      *(v14 + 16) = v12 + 1;
      *(v14 + 8 * v12 + 32) = v10;
    }

    while (v4 != v6);

    v3 = v13;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void (*TensorShape.subscript.modify(uint64_t ***a1, uint64_t a2))(void *a1)
{
  v5 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v5;
  v6 = *(*v2 + 16);
  if (-v6 > a2 || v6 <= a2)
  {
    OUTLINED_FUNCTION_1_74();
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28(v11, v12, v13, v14, v15, v16, v17);
  }

  v8 = v5;
  sub_25BC9E84C(v5, (v6 & (a2 >> 63)) + a2);
  v8[4] = v9;
  return sub_25BB3A600;
}

NeuralNetworks::TensorShape __swiftcall TensorShape.appending(_:)(Swift::Int a1)
{
  OUTLINED_FUNCTION_15_43(v1);
  sub_25BAFCFC8();
  v4 = *(*v3 + 16);
  sub_25BAFD118();
  v6 = *v3;
  *(v6 + 16) = v4 + 1;
  *(v6 + 8 * v4 + 32) = v2;
  return result;
}

NeuralNetworks::TensorShape __swiftcall TensorShape.expanding(toCount:)(Swift::Int toCount)
{
  OUTLINED_FUNCTION_15_43(v1);
  TensorShape.expand(toCount:)(v2);
  return result;
}

uint64_t TensorShape.description.getter()
{
  v0 = sub_25BCB617C();
  v1 = MEMORY[0x25F876F80](v0, MEMORY[0x277D83B88]);

  return v1;
}

NeuralNetworks::TensorShape __swiftcall TensorShape.removing(at:)(Swift::Int at)
{
  v3 = *v2;
  v4 = *(v3 + 16);
  if (v4 <= at)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28(v24, v25, v26, v27, v28, v29, v30);
  }

  v6 = v1;
  sub_25BCB617C();
  v7 = 0;
  v8 = 0;
  v9 = ~at;
  v10 = v3 + 24;
  v11 = MEMORY[0x277D84F90];
LABEL_3:
  v12 = 0;
  while (v8 - v4 + v12)
  {
    if (v8 < -v4 || v8 + v12 >= v4)
    {
      goto LABEL_22;
    }

    if (v8 < 0)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (!(v7 - 0x7FFFFFFFFFFFFFFFLL + v12))
    {
      goto LABEL_20;
    }

    ++v12;
    if (v9 + v7 + v12)
    {
      v31 = v9;
      v14 = v10;
      v15 = *(v10 + 8 * v8 + 8 * v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = OUTLINED_FUNCTION_45();
        sub_25BAAE04C(v18, v19, v20, v11);
        v11 = v21;
      }

      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_25BAAE04C(v16 > 1, v17 + 1, 1, v11);
        v11 = v22;
      }

      v7 += v12;
      v8 += v12;
      *(v11 + 16) = v17 + 1;
      *(v11 + 8 * v17 + 32) = v15;
      v4 = *(v3 + 16);
      v10 = v14;
      v9 = v31;
      goto LABEL_3;
    }
  }

  *v6 = v11;
  return result;
}

uint64_t TensorShape.dimensions.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t TensorShape.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  (*(v8 + 16))(v11 - v10, a1, a2);
  v12 = sub_25BCB68DC();
  result = (*(v8 + 8))(a1, a2);
  *a4 = v12;
  return result;
}

NeuralNetworks::TensorShape __swiftcall TensorShape.init(repeating:count:)(NeuralNetworks::TensorShape repeating, Swift::Int count)
{
  if (count < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = v2;
    if (count)
    {
      rawValue = repeating.dimensions._rawValue;
      repeating.dimensions._rawValue = sub_25BCB67DC();
      v6 = 0;
      *(repeating.dimensions._rawValue + 2) = count;
      v7 = vdupq_n_s64(count - 1);
      do
      {
        v8 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v6), xmmword_25BCCB570)));
        v9 = repeating.dimensions._rawValue + 8 * v6;
        if (v8.i8[0])
        {
          *(v9 + 4) = rawValue;
        }

        if (v8.i8[4])
        {
          *(v9 + 5) = rawValue;
        }

        v6 += 2;
      }

      while (((count + 1) & 0xFFFFFFFFFFFFFFFELL) != v6);
    }

    else
    {
      repeating.dimensions._rawValue = MEMORY[0x277D84F90];
    }

    v4->dimensions._rawValue = repeating.dimensions._rawValue;
  }

  return repeating;
}

uint64_t TensorShape.hash(into:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x25F878200](v2);
  if (v2)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      result = MEMORY[0x25F878200](v5);
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t TensorShape.hashValue.getter()
{
  sub_25BCB79CC();
  sub_25BAD4C78();
  return sub_25BCB7A3C();
}

uint64_t sub_25BC7066C(uint64_t a1)
{
  sub_25BCB79CC();
  sub_25BAD4C78();
  return sub_25BCB7A3C();
}

Swift::Int __swiftcall TensorShape.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BC706D8@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = a2[1];
  v8[1] = v4;
  result = TensorShape.subscript.getter(v5, v6, v8);
  *a3 = v8[0];
  return result;
}

uint64_t sub_25BC70720(uint64_t *a1, uint64_t a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v6 = *a1;
  sub_25BCB617C();
  return TensorShape.subscript.setter(&v6, v3, v4);
}

uint64_t TensorShape.subscript.setter(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_25BC7204C(*a1, 0);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_25BCB617C();
  sub_25BC70804(v5, v7, v9, v11, a2, a3);
}

void sub_25BC70804(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  if ((a5 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = *(*v6 + 16);
  if (v7 < a5 || v7 < a6)
  {
    goto LABEL_16;
  }

  if (a6 < 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  if (*v6 + 8 * a5 + 32 != a2 + 8 * a3)
  {
LABEL_13:
    sub_25BC02A14(a5, a6);
    return;
  }

  if ((a4 >> 1) < a3)
  {
    goto LABEL_18;
  }

  if (a5 != a3 || a4 >> 1 != a6)
  {
    goto LABEL_13;
  }

  swift_unknownObjectRelease();
}

uint64_t (*TensorShape.subscript.modify(uint64_t *a1, unint64_t a2, uint64_t a3))()
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  TensorShape.subscript.getter(a2, a3, a1);
  return sub_25BC708DC;
}

uint64_t sub_25BC708DC()
{
  OUTLINED_FUNCTION_9_18();
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);
  OUTLINED_FUNCTION_9_53();
  v3 = OUTLINED_FUNCTION_13_45();
  sub_25BC70804(v3, v4, v5, v6, v2, v1);
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BC70944@<X0>(uint64_t *a1@<X8>)
{
  result = TensorShape.rank.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25BC709C0@<X0>(void *a1@<X8>)
{
  result = TensorShape.indices.getter();
  *a1 = 0;
  a1[1] = v3;
  return result;
}

Swift::Int __swiftcall TensorShape.index(_:offsetBy:)(Swift::Int _, Swift::Int offsetBy)
{
  v2 = __OFADD__(_, offsetBy);
  result = _ + offsetBy;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall TensorShape.distance(from:to:)(Swift::Int from, Swift::Int to)
{
  v2 = __OFSUB__(to, from);
  result = to - from;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_25BC70A54(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_14_42(a1);
  result = TensorShape.index(after:)(v2);
  *v1 = result;
  return result;
}

void *sub_25BC70A7C(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t (*sub_25BC70AA0(uint64_t ****a1, uint64_t *a2))()
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[4] = TensorShape.subscript.modify(v4, *a2);
  return sub_25BC70B04;
}

void sub_25BC70B04(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_25BC70B58(uint64_t *a1, unint64_t *a2))()
{
  v4 = *a2;
  v5 = a2[1];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  TensorShape.subscript.getter(v4, v5, a1);
  return sub_25BC70BA8;
}

uint64_t sub_25BC70BA8()
{
  OUTLINED_FUNCTION_9_18();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_9_53();
  v3 = OUTLINED_FUNCTION_13_45();
  sub_25BC70804(v3, v4, v5, v6, v1, v2);
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BC70C08@<X0>(uint64_t *a1@<X8>, uint64_t (*a2)(uint64_t *)@<X0>)
{
  result = sub_25BC70C34(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_25BC70CBC(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_14_42(a1);
  result = sub_25BCA42DC(v3, *v2);
  *v1 = result;
  return result;
}

uint64_t *sub_25BC70CE8(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    result = sub_25BAE3AC4(*v1);
    if ((v2 & 0x8000000000000000) == 0 && v2 < result)
    {
      *v3 = v2;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC70D3C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_14_42(a1);
  result = sub_25BBFD334(v2, v4, *v3);
  *v1 = result;
  *(v1 + 8) = v6 & 1;
  return result;
}

Swift::Void __swiftcall TensorShape.append(_:)(Swift::Int a1)
{
  sub_25BAFCFC8();
  v3 = *(*v1 + 16);
  sub_25BAFD118();
  v4 = *v1;
  *(v4 + 16) = v3 + 1;
  *(v4 + 8 * v3 + 32) = a1;
  *v1 = v4;
}

Swift::Void __swiftcall TensorShape.append(contentsOf:)(NeuralNetworks::TensorShape contentsOf)
{
  v1 = sub_25BCB617C();

  sub_25BC038F4(v1);
}

uint64_t TensorShape.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  (*(v6 + 16))(v5 - v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  return sub_25BCB686C();
}

uint64_t TensorShape.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  (*(v8 + 16))(v7 - v6, v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  return sub_25BCB678C();
}

uint64_t sub_25BC70FB0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TensorShape.replaceSubrange<A>(_:with:)(*a1, a1[1], a2, a3, a4);
  v6 = *(*(a3 - 8) + 8);

  return v6(a2, a3);
}

uint64_t sub_25BC71058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  TensorShape.append<A>(contentsOf:)(a1, a2, a3);
  v5 = *(*(a2 - 8) + 8);

  return v5(a1, a2);
}

uint64_t sub_25BC710E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25BC71114(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_25BC71114(uint64_t result)
{
  if (!*(*v1 + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = result;
  result = TensorShape.subscript.getter(result);
  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v3 >= v2)
  {
    v4 = result;
    sub_25BC02820(v2, v3);
    return v4;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_25BC71188@<X0>(uint64_t a1@<X8>)
{
  result = sub_25BC711B8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_25BC711B8()
{
  result = sub_25BB731A8(*v1);
  if ((v7 & 1) == 0)
  {
    v8 = *(*v1 + 16);
    if (v8)
    {
      v0 = result;
      v2 = sub_25BABA598(0, v8 - 1, *v1);
      v3 = v9;
      v4 = v10;
      v5 = v11;
      if ((v11 & 1) == 0)
      {
LABEL_4:
        v12 = sub_25BABA62C(v2, v3, v4, v5);
        swift_unknownObjectRelease();

LABEL_12:
        *v1 = v12;
        return v0;
      }

      sub_25BCB78DC();
      swift_unknownObjectRetain_n();
      v13 = swift_dynamicCastClass();
      if (!v13)
      {
        swift_unknownObjectRelease();
        v13 = MEMORY[0x277D84F90];
      }

      v14 = *(v13 + 16);

      if (!__OFSUB__(v5 >> 1, v4))
      {
        if (v14 == (v5 >> 1) - v4)
        {
          v12 = swift_dynamicCastClass();

          swift_unknownObjectRelease();
          if (!v12)
          {
            swift_unknownObjectRelease();
            v12 = MEMORY[0x277D84F90];
          }

          swift_unknownObjectRelease();
          goto LABEL_12;
        }

        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_15:
    swift_unknownObjectRelease_n();
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC71314(uint64_t result)
{
  if (__OFSUB__(0, result))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_25BBFD334(*(*v1 + 16), -result, 0);
  if ((v2 & 1) == 0)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      TensorShape.subscript.getter(0, result, v1);

      return 1;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_25BC7139C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BC713C4();
  *a1 = result;
  return result;
}

uint64_t sub_25BC713C4()
{
  result = *v0;
  if (!*(*v0 + 16))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_25BB3BEDC(result);
  if ((v2 & 1) == 0)
  {
    v3 = *(*v0 + 16);
    if (v3)
    {
      v4 = result;
      TensorShape.subscript.getter(1uLL, v3, v0);

      return v4;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_25BC71448(uint64_t result)
{
  if (result)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      result = sub_25BBFD334(0, result, *(*v1 + 16));
      if (v2)
      {
LABEL_9:
        __break(1u);
        return result;
      }

      v3 = *(*v1 + 16);
      if (v3 >= result)
      {
        TensorShape.subscript.getter(result, v3, v1);
      }
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

void sub_25BC714D0(char a1)
{
  if (a1)
  {
    v2 = *(*v1 + 16);

    sub_25BC02820(0, v2);
  }

  else
  {

    *v1 = MEMORY[0x277D84F90];
  }
}

uint64_t TensorShape.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BCB7B4C();
  v3[6] = *v1;
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  sub_25BB5F86C(&qword_28154BE50, MEMORY[0x277D83B90], MEMORY[0x277D83948]);
  sub_25BCB78BC();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t TensorShape.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BCB7B0C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    sub_25BB5F86C(&qword_28154BE48, MEMORY[0x277D83BB8], MEMORY[0x277D83978]);
    sub_25BCB78AC();
    *a2 = v6[6];
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

NeuralNetworks::TensorShape __swiftcall TensorShape.replacing(at:with:)(Swift::Int at, Swift::Int with)
{
  OUTLINED_FUNCTION_4_63(v2);
  sub_25BCB617C();
  TensorShape.subscript.setter(v3, v4);
  return result;
}

void TensorShape.replacing<A>(at:with:)()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  v4 = v3;
  v36 = v6;
  v37 = v5;
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v15 = v14;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v36 - v18;
  v20 = *v0;
  (*(v8 + 16))(v12, v37, v2, v17);
  sub_25BCB617C();
  sub_25BCB655C();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    sub_25BCB6EDC();
    if (v39)
    {
      break;
    }

    v21 = v38;
    v22 = *(v20 + 16);
    if (v38 < -v22 || v38 >= v22)
    {
      goto LABEL_16;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BAA2110(v20, v24, v25, v26);
      v20 = v28;
    }

    v27 = (v22 & (v21 >> 63)) + v21;
    if ((v27 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v39 = 0;
      v40 = 0;
      v38 = v21;
      v41 = -1;
      v43 = 0;
      v44 = 0;
      v42 = v22;
      v45 = -1;
      v46 = 4;
      OUTLINED_FUNCTION_17_4();
      sub_25BADDD28(v29, v30, v31, v32, v33, v34, v35);
    }

    if (v27 >= *(v20 + 16))
    {
      goto LABEL_15;
    }

    *(v20 + 8 * v27 + 32) = v4;
  }

  (*(v15 + 8))(v19, AssociatedTypeWitness);
  *v36 = v20;
  OUTLINED_FUNCTION_10_16();
}

void TensorShape.replacing<A, B>(at:with:)()
{
  OUTLINED_FUNCTION_9_18();
  v37 = v0;
  v40 = v2;
  v41 = v1;
  v4 = v3;
  v5 = v1;
  v7 = v6;
  v35 = v8;
  v10 = *(v9 + 8);
  v11 = *(v2 + 8);
  v36 = sub_25BCB715C();
  MEMORY[0x28223BE20](v36);
  v41 = v5;
  v42 = v4;
  v38 = v11;
  v39 = v10;
  v43 = v10;
  v44 = v11;
  v12 = sub_25BCB714C();
  OUTLINED_FUNCTION_9();
  v34 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  v17 = sub_25BCB6ABC();
  v18 = v7;
  if (v17 != sub_25BCB6ABC())
  {
LABEL_17:
    __break(1u);
LABEL_18:
    v42 = 0;
    v43 = 0;
    v41 = v18;
    LOBYTE(v44) = -1;
    v46 = 0;
    v47 = 0;
    v45 = v17;
    v48 = -1;
    v49 = 4;
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28(v27, v28, v29, v30, v31, v32, v33);
  }

  v19 = *v37;
  sub_25BCB617C();
  sub_25BCB793C();
  sub_25BCB712C();
  while (1)
  {
    sub_25BCB713C();
    if (v43)
    {
      break;
    }

    v18 = v41;
    v17 = *(v19 + 16);
    if (v41 < -v17 || v41 >= v17)
    {
      goto LABEL_18;
    }

    v21 = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BAA2110(v19, v22, v23, v24);
      v19 = v26;
    }

    v25 = (v17 & (v18 >> 63)) + v18;
    if ((v25 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (v25 >= *(v19 + 16))
    {
      goto LABEL_16;
    }

    *(v19 + 8 * v25 + 32) = v21;
  }

  (*(v34 + 8))(v16, v12);
  *v35 = v19;
  OUTLINED_FUNCTION_10_16();
}

uint64_t TensorShape.removing<A>(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *v4;
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a1;
  result = sub_25BAC17E4(sub_25BC7259C, v8, v6);
  *a4 = result;
  return result;
}

uint64_t sub_25BC71CE4@<X0>(uint64_t *a1@<X0>, uint64_t a4@<X8>)
{
  v5 = a1[1];
  result = sub_25BCB66AC();
  if (result)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  *a4 = v7;
  *(a4 + 8) = result & 1;
  return result;
}

NeuralNetworks::TensorShape __swiftcall TensorShape.inserting(_:at:)(Swift::Int _, Swift::Int at)
{
  OUTLINED_FUNCTION_4_63(v2);
  sub_25BCB617C();
  sub_25BC028D4(v3, v3);
  return result;
}

uint64_t TensorShape.inserting<A>(contentsOf:at:)@<X0>(void *a4@<X8>)
{
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  *a4 = *v4;
  (*(v9 + 16))(v8 - v7);
  sub_25BC725BC();
  sub_25BCB617C();
  return sub_25BCB6BAC();
}

uint64_t TensorShape.appending<A>(contentsOf:)@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_4_63(a1);
  v4 = *(v3 + 8);
  sub_25BCB617C();
  return TensorShape.append<A>(contentsOf:)(v2, v1, v4);
}

Swift::Void __swiftcall TensorShape.expand(toCount:)(Swift::Int toCount)
{
  v2 = *(*v1 + 16);
  if (toCount < v2)
  {
    __break(1u);
  }

  else if (toCount - v2 >= 0)
  {
    sub_25BC02ADC(0, 0);
    return;
  }

  __break(1u);
}

uint64_t sub_25BC71EFC(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2)
{
  v5 = v2;
  v7 = *v2;
  v8 = sub_25BC6FAA0(a1, a2, v7);
  if (!v3)
  {
    if ((v9 & 1) == 0)
    {
      v4 = v8;
      v11 = v8 + 1;
      if (!__OFADD__(v8, 1))
      {
        while (1)
        {
          v12 = *(*v5 + 16);
          if (v11 == v12)
          {
            return v4;
          }

          if (v11 < -v12 || v11 >= v12)
          {
            goto LABEL_21;
          }

          v14 = (v12 & (v11 >> 63)) + v11;
          if (v14 < 0)
          {
            break;
          }

          v25[0] = *(*v5 + 8 * v14 + 32);
          if (((a1)(v25) & 1) == 0)
          {
            if (v11 != v4)
            {
              v15 = TensorShape.subscript.getter(v4);
              v16 = TensorShape.subscript.getter(v11);
              TensorShape.subscript.setter(v16, v4);
              TensorShape.subscript.setter(v15, v11);
            }

            if (__OFADD__(v4++, 1))
            {
              goto LABEL_19;
            }
          }

          ++v11;
        }

        __break(1u);
LABEL_19:
        __break(1u);
      }

      __break(1u);
LABEL_21:
      v25[1] = 0;
      v25[2] = 0;
      v25[0] = v11;
      OUTLINED_FUNCTION_1_74();
      OUTLINED_FUNCTION_17_4();
      sub_25BADDD28(v18, v19, v20, v21, v22, v23, v24);
    }

    return *(v7 + 16);
  }

  return v4;
}

uint64_t sub_25BC7204C(uint64_t result, uint64_t a2)
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

uint64_t sub_25BC72094(uint64_t result, uint64_t a2)
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

uint64_t sub_25BC720DC(uint64_t (*a1)(uint64_t *))
{
  v4 = 0;
  v5 = *(*v1 + 16);
  while (v4 < v5)
  {
    v6 = *v1;
    v7 = *(*v1 + 16);
    if (v4 < -v7 || v4 >= v7)
    {
      goto LABEL_23;
    }

    v7 = (v7 & (v4 >> 63)) + v4;
    if (v7 < 0)
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v17 = 0;
      v18 = 0;
      v16 = v4;
      v19 = -1;
      v21 = 0;
      v22 = 0;
      v20 = v7;
      v23 = -1;
LABEL_25:
      v24 = 4;
      sub_25BADDD28("positiveAxis(fromAxis:from:rank:from:function:file:line:)", 57, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift", 102, 2, 133);
    }

    v16 = *(v6 + 8 * v7 + 32);
    v9 = a1(&v16);
    if (v2)
    {
      return v4;
    }

    if ((v9 & 1) == 0)
    {
      goto LABEL_11;
    }

    v10 = *(v6 + 16);
    v25 = v6 + 24;
    v7 = v5;
    do
    {
      v5 = v7 - 1;
      if (v7 - 1 >= v10)
      {
        goto LABEL_22;
      }

      if (v4 >= v5)
      {
        return v4;
      }

      v11 = *(v6 + 16);
      if (v7 > v11)
      {
        v17 = 0;
        v18 = 0;
        v16 = v7 - 1;
        v19 = -1;
        v21 = 0;
        v22 = 0;
        v20 = v11;
        v23 = -1;
        goto LABEL_25;
      }

      v16 = *(v25 + 8 * v7);
      v12 = a1(&v16);
      v7 = v5;
    }

    while ((v12 & 1) != 0);
    if (v4 != v5)
    {
      v13 = TensorShape.subscript.getter(v4);
      v14 = TensorShape.subscript.getter(v5);
      TensorShape.subscript.setter(v14, v4);
      TensorShape.subscript.setter(v13, v5);
    }

LABEL_11:
    ++v4;
  }

  return v4;
}

uint64_t sub_25BC722B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25BC722D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_25BC722D8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size_0(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_25BAAFF14((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 8 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC723D0(unint64_t a1, unint64_t a2)
{
  sub_25BB50DF0();
  if (a2 >> 62)
  {
    v4 = sub_25BCB757C();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v4;
    }

LABEL_10:
    sub_25BCB70FC();
    v6 = 0xD000000000000046;
    v5 = 0x800000025BCE5B00;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v4;
  }

  sub_25BCB70FC();
  v5 = 0x800000025BCE5AB0;
  v6 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x25F876C90](v6, v5);
  v8 = sub_25BCB7C1C();
  MEMORY[0x25F876C90](v8);

  MEMORY[0x25F876C90](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v9 = sub_25BCB7C1C();
  MEMORY[0x25F876C90](v9);

  result = sub_25BCB74DC();
  __break(1u);
  return result;
}

unint64_t sub_25BC725BC()
{
  result = qword_27FBB76A8;
  if (!qword_27FBB76A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB76A8);
  }

  return result;
}

unint64_t sub_25BC72614()
{
  result = qword_27FBB76B0;
  if (!qword_27FBB76B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB76B0);
  }

  return result;
}

unint64_t sub_25BC7266C()
{
  result = qword_27FBB76B8;
  if (!qword_27FBB76B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB76B8);
  }

  return result;
}

unint64_t sub_25BC726C0()
{
  result = qword_27FBB76C0;
  if (!qword_27FBB76C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB76C0);
  }

  return result;
}

unint64_t sub_25BC72718()
{
  result = qword_27FBB76C8;
  if (!qword_27FBB76C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB76C8);
  }

  return result;
}

unint64_t sub_25BC72770()
{
  result = qword_27FBB76D0;
  if (!qword_27FBB76D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB76D8, &qword_25BCD3078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB76D0);
  }

  return result;
}

unint64_t sub_25BC727D4()
{
  result = qword_27FBB76E0;
  if (!qword_27FBB76E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB76E0);
  }

  return result;
}

unint64_t sub_25BC7282C()
{
  result = qword_27FBB76E8;
  if (!qword_27FBB76E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB76E8);
  }

  return result;
}

uint64_t sub_25BC72884(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_25BC728E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = OUTLINED_FUNCTION_41_24(a1, a2, a3, a4, a5);
  if (!*(&v45 + 1))
  {
    sub_25BA9C2C8(&v44);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_88(v7, v8, v9, v10, v11, v12, v13, v14, v43, v44, v45, v46, v47, v48[0], v48[1], v49, v50);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3848, &qword_25BCBB7D0);
  if ((OUTLINED_FUNCTION_15_44(v15, v16, v17, &unk_286D4F738, v18) & 1) == 0 || *(&v49 + 1) < 3uLL)
  {
    sub_25BABF0A8(v48);
LABEL_8:
    type metadata accessor for NativeTensorStorage(0);
    OUTLINED_FUNCTION_18_42();
    v20 = sub_25BCB617C();
    v28 = OUTLINED_FUNCTION_1_75(v20, v21, v22, v23, v24, v25, v26, v27, v43, v44, *(&v44 + 1), v45, *(&v45 + 1), v46, *(&v46 + 1), v47, v48[0]);
    sub_25BBC09FC(v28, v29, v30);
    return;
  }

  type metadata accessor for SharedMetalDevice();
  OUTLINED_FUNCTION_62_10();
  v19 = swift_unknownObjectRetain();
  sub_25BBC97E0(v19);
  if (v5)
  {

    sub_25BB7304C(*(&v49 + 1));
    sub_25BABF0A8(v48);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_61_11();
  if (v31)
  {
    OUTLINED_FUNCTION_58_13();
    do
    {
      OUTLINED_FUNCTION_29_31();
      if (!v33)
      {
        __break(1u);
        return;
      }
    }

    while (v32 != 1);
    sub_25BB7304C(*(&v49 + 1));
    sub_25BABF0A8(v48);
    if (v6 <= 0)
    {

      goto LABEL_8;
    }
  }

  else
  {
    sub_25BB7304C(*(&v49 + 1));
    sub_25BABF0A8(v48);
  }

  v34 = OUTLINED_FUNCTION_51_16();
  OUTLINED_FUNCTION_39_24(v34);
  OUTLINED_FUNCTION_34_21();
  v35 = sub_25BCB617C();
  OUTLINED_FUNCTION_1_75(v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, *(&v44 + 1), v45, *(&v45 + 1), v46, *(&v46 + 1), v47, v48[0]);
  sub_25BC2986C();
}

void sub_25BC72C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = OUTLINED_FUNCTION_41_24(a1, a2, a3, a4, a5);
  if (!*(&v42 + 1))
  {
    sub_25BA9C2C8(&v41);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_88(v7, v8, v9, v10, v11, v12, v13, v14, v40, v41, v42, v43, v44, v45[0], v45[1], v46, v47);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3848, &qword_25BCBB7D0);
  if ((OUTLINED_FUNCTION_15_44(v15, v16, v17, &unk_286D4F738, v18) & 1) == 0 || *(&v46 + 1) < 3uLL)
  {
    sub_25BABF0A8(v45);
LABEL_8:
    type metadata accessor for NativeTensorStorage(0);
    OUTLINED_FUNCTION_18_42();
    v20 = sub_25BCB617C();
    OUTLINED_FUNCTION_1_75(v20, v21, v22, v23, v24, v25, v26, v27, v40, v41, *(&v41 + 1), v42, *(&v42 + 1), v43, *(&v43 + 1), v44, v45[0]);
    sub_25BBC0BE0();
    return;
  }

  type metadata accessor for SharedMetalDevice();
  OUTLINED_FUNCTION_62_10();
  v19 = swift_unknownObjectRetain();
  sub_25BBC97E0(v19);
  if (v5)
  {

    sub_25BB7304C(*(&v46 + 1));
    sub_25BABF0A8(v45);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_61_11();
  if (v28)
  {
    OUTLINED_FUNCTION_58_13();
    do
    {
      OUTLINED_FUNCTION_29_31();
      if (!v30)
      {
        __break(1u);
        return;
      }
    }

    while (v29 != 1);
    sub_25BB7304C(*(&v46 + 1));
    sub_25BABF0A8(v45);
    if (v6 <= 0)
    {

      goto LABEL_8;
    }
  }

  else
  {
    sub_25BB7304C(*(&v46 + 1));
    sub_25BABF0A8(v45);
  }

  v31 = OUTLINED_FUNCTION_51_16();
  OUTLINED_FUNCTION_39_24(v31);
  OUTLINED_FUNCTION_34_21();
  v32 = sub_25BCB617C();
  OUTLINED_FUNCTION_1_75(v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, *(&v41 + 1), v42, *(&v42 + 1), v43, *(&v43 + 1), v44, v45[0]);
  sub_25BC29BC0();
}

void sub_25BC73464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = OUTLINED_FUNCTION_40_23(a1, a2, a3, a4, a5);
  if (!*(&v41 + 1))
  {
    sub_25BA9C2C8(&v40);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_88(v8, v9, v10, v11, v12, v13, v14, v15, v39, v40, v41, v42, v43, v44[0], v44[1], v45, v46);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3848, &qword_25BCBB7D0);
  if ((OUTLINED_FUNCTION_15_44(v16, v17, v18, &unk_286D4F738, v19) & 1) == 0 || *(&v45 + 1) < 3uLL)
  {
    sub_25BABF0A8(v44);
LABEL_8:
    type metadata accessor for NativeTensorStorage(0);
    OUTLINED_FUNCTION_19_34();
    v21 = sub_25BCB617C();
    OUTLINED_FUNCTION_9_54(v21, v22, v23, v24, v25, v26, v27, v28, v39, v40, *(&v40 + 1), v41, *(&v41 + 1), v42, *(&v42 + 1), v43, v44[0]);
    OUTLINED_FUNCTION_57_11();
    sub_25BBC10E4();
    return;
  }

  type metadata accessor for SharedMetalDevice();
  v20 = swift_unknownObjectRetain();
  sub_25BBC97E0(v20);
  if (v5)
  {

    sub_25BB7304C(*(&v45 + 1));
    sub_25BABF0A8(v44);
    goto LABEL_8;
  }

  if (*(v6 + 16))
  {
    do
    {
      OUTLINED_FUNCTION_12_45();
      if (!v29)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_56_15();
    }

    while (!v29);
    sub_25BB7304C(*(&v45 + 1));
    sub_25BABF0A8(v44);
    if (v7 <= 0)
    {

      goto LABEL_8;
    }
  }

  else
  {
    sub_25BB7304C(*(&v45 + 1));
    sub_25BABF0A8(v44);
  }

  v30 = OUTLINED_FUNCTION_49_20();
  OUTLINED_FUNCTION_39_24(v30);
  v31 = sub_25BCB617C();
  OUTLINED_FUNCTION_9_54(v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, *(&v40 + 1), v41, *(&v41 + 1), v42, *(&v42 + 1), v43, v44[0]);
  OUTLINED_FUNCTION_57_11();
  sub_25BC2A4C8();
}

void sub_25BC738DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  OUTLINED_FUNCTION_16_48(a1, a2, a3, a4, a5, a6);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_60();
  if (v27)
  {
    OUTLINED_FUNCTION_8_55();
    OUTLINED_FUNCTION_15_8();
    swift_bridgeObjectRetain_n();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3848, &qword_25BCBB7D0);
    if ((OUTLINED_FUNCTION_53_13(v10, v11, v12, &unk_286D4F738) & 1) != 0 && v29 >= 3)
    {
      type metadata accessor for SharedMetalDevice();
      v13 = swift_unknownObjectRetain();
      sub_25BBC97E0(v13);
      if (!v8)
      {
        OUTLINED_FUNCTION_32_26();
        if (v19)
        {
          OUTLINED_FUNCTION_22_34();
          while (1)
          {
            OUTLINED_FUNCTION_3_59();
            if (!v14)
            {
              goto LABEL_28;
            }

            OUTLINED_FUNCTION_44_18();
            if (v14)
            {
              OUTLINED_FUNCTION_33_27();
              if (v6 > 0)
              {
                goto LABEL_27;
              }

              goto LABEL_8;
            }
          }
        }

        OUTLINED_FUNCTION_33_27();
LABEL_27:
        v20 = OUTLINED_FUNCTION_50_18();
        OUTLINED_FUNCTION_39_24(v20);
        OUTLINED_FUNCTION_34_21();
        sub_25BCB617C();
        sub_25BCB617C();
        OUTLINED_FUNCTION_6_58();
        sub_25BC2A864(v21, v22, v23, v24, v25, v30);
LABEL_17:
        OUTLINED_FUNCTION_30_28();
        swift_bridgeObjectRelease_n();
        OUTLINED_FUNCTION_27_31();
        return;
      }

      OUTLINED_FUNCTION_33_27();
    }

    else
    {
      sub_25BABF0A8(v28);
    }
  }

  else
  {
    OUTLINED_FUNCTION_15_8();
    swift_bridgeObjectRetain_n();
    sub_25BA9C2C8(v26);
  }

LABEL_8:
  if (!*(v7 + 16))
  {
LABEL_14:
    type metadata accessor for NativeTensorStorage(0);
    OUTLINED_FUNCTION_47_19();
    if (!v14)
    {
      goto LABEL_29;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    OUTLINED_FUNCTION_15_29();
    sub_25BCB6F1C();
    OUTLINED_FUNCTION_21_35();
    v15 = OUTLINED_FUNCTION_7_58();
    v16(v15);
    OUTLINED_FUNCTION_20_35();
    sub_25BB581C4();
    v17 = OUTLINED_FUNCTION_46_22();
    v18(v17);
    OUTLINED_FUNCTION_10_48();
    OUTLINED_FUNCTION_17_26();

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_22_34();
  while (1)
  {
    OUTLINED_FUNCTION_3_59();
    if (!v14)
    {
      break;
    }

    OUTLINED_FUNCTION_44_18();
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_25BC73B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5, uint64_t a6)
{
  v9 = OUTLINED_FUNCTION_41_24(a1, a2, a3, a4, a6);
  if (!*(&v44 + 1))
  {
    sub_25BA9C2C8(&v43);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_88(v9, v10, v11, v12, v13, v14, v15, v16, v42, v43, v44, v45, v46, v47[0], v47[1], v48, v49);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3848, &qword_25BCBB7D0);
  if ((OUTLINED_FUNCTION_15_44(v17, v18, v19, &unk_286D4F738, v20) & 1) == 0 || *(&v48 + 1) < 3uLL)
  {
    sub_25BABF0A8(v47);
LABEL_8:
    type metadata accessor for NativeTensorStorage(0);
    OUTLINED_FUNCTION_18_42();
    v22 = sub_25BCB617C();
    OUTLINED_FUNCTION_1_75(v22, v23, v24, v25, v26, v27, v28, v29, v42, v43, *(&v43 + 1), v44, *(&v44 + 1), v45, *(&v45 + 1), v46, v47[0]);
    sub_25BBC11D0(a5);
    return;
  }

  type metadata accessor for SharedMetalDevice();
  OUTLINED_FUNCTION_62_10();
  v21 = swift_unknownObjectRetain();
  sub_25BBC97E0(v21);
  if (v6)
  {

    sub_25BB7304C(*(&v48 + 1));
    sub_25BABF0A8(v47);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_61_11();
  if (v30)
  {
    OUTLINED_FUNCTION_58_13();
    do
    {
      OUTLINED_FUNCTION_29_31();
      if (!v32)
      {
        __break(1u);
        return;
      }
    }

    while (v31 != 1);
    sub_25BB7304C(*(&v48 + 1));
    sub_25BABF0A8(v47);
    if (v7 <= 0)
    {

      goto LABEL_8;
    }
  }

  else
  {
    sub_25BB7304C(*(&v48 + 1));
    sub_25BABF0A8(v47);
  }

  v33 = OUTLINED_FUNCTION_51_16();
  OUTLINED_FUNCTION_39_24(v33);
  OUTLINED_FUNCTION_34_21();
  v34 = sub_25BCB617C();
  OUTLINED_FUNCTION_1_75(v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, *(&v43 + 1), v44, *(&v44 + 1), v45, *(&v45 + 1), v46, v47[0]);
  sub_25BC2AA5C(a5);
}

void sub_25BC73D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = OUTLINED_FUNCTION_40_23(a1, a2, a3, a4, a5);
  if (!*(&v41 + 1))
  {
    sub_25BA9C2C8(&v40);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_88(v8, v9, v10, v11, v12, v13, v14, v15, v39, v40, v41, v42, v43, v44[0], v44[1], v45, v46);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3848, &qword_25BCBB7D0);
  if ((OUTLINED_FUNCTION_15_44(v16, v17, v18, &unk_286D4F738, v19) & 1) == 0 || *(&v45 + 1) < 3uLL)
  {
    sub_25BABF0A8(v44);
LABEL_8:
    type metadata accessor for NativeTensorStorage(0);
    OUTLINED_FUNCTION_19_34();
    v21 = sub_25BCB617C();
    OUTLINED_FUNCTION_1_75(v21, v22, v23, v24, v25, v26, v27, v28, v39, v40, *(&v40 + 1), v41, *(&v41 + 1), v42, *(&v42 + 1), v43, v44[0]);
    OUTLINED_FUNCTION_59_13();
    sub_25BBC12F0();
    return;
  }

  type metadata accessor for SharedMetalDevice();
  v20 = swift_unknownObjectRetain();
  sub_25BBC97E0(v20);
  if (v5)
  {

    sub_25BB7304C(*(&v45 + 1));
    sub_25BABF0A8(v44);
    goto LABEL_8;
  }

  if (*(v6 + 16))
  {
    do
    {
      OUTLINED_FUNCTION_12_45();
      if (!v29)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_56_15();
    }

    while (!v29);
    sub_25BB7304C(*(&v45 + 1));
    sub_25BABF0A8(v44);
    if (v7 <= 0)
    {

      goto LABEL_8;
    }
  }

  else
  {
    sub_25BB7304C(*(&v45 + 1));
    sub_25BABF0A8(v44);
  }

  v30 = OUTLINED_FUNCTION_49_20();
  OUTLINED_FUNCTION_39_24(v30);
  v31 = sub_25BCB617C();
  OUTLINED_FUNCTION_1_75(v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, *(&v40 + 1), v41, *(&v41 + 1), v42, *(&v42 + 1), v43, v44[0]);
  OUTLINED_FUNCTION_59_13();
  sub_25BC2AC64();
}

void sub_25BC73ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = OUTLINED_FUNCTION_40_23(a1, a2, a3, a4, a5);
  if (*(&v50 + 1))
  {
    OUTLINED_FUNCTION_0_88(v8, v9, v10, v11, v12, v13, v14, v15, v47, v49, v50, v51, v52, v53, v54, v55, v56);
    OUTLINED_FUNCTION_35_22();
    swift_unknownObjectRetain_n();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3848, &qword_25BCBB7D0);
    if ((OUTLINED_FUNCTION_15_44(v16, v17, v18, &unk_286D4F738, v19) & 1) != 0 && *(&v55 + 1) >= 3uLL)
    {
      type metadata accessor for SharedMetalDevice();
      v20 = swift_unknownObjectRetain();
      sub_25BBC97E0(v20);
      if (!v5)
      {
        if (*(v6 + 16))
        {
          do
          {
            OUTLINED_FUNCTION_12_45();
            if (!v37)
            {
              __break(1u);
              return;
            }

            OUTLINED_FUNCTION_56_15();
          }

          while (!v37);
          sub_25BB7304C(*(&v55 + 1));
          sub_25BABF0A8(&v53);
          if (v7 <= 0)
          {

            goto LABEL_8;
          }
        }

        else
        {
          sub_25BB7304C(*(&v55 + 1));
          sub_25BABF0A8(&v53);
        }

        v38 = OUTLINED_FUNCTION_49_20();
        OUTLINED_FUNCTION_39_24(v38);
        OUTLINED_FUNCTION_49();
        swift_unknownObjectRetain();
        v39 = sub_25BCB617C();
        OUTLINED_FUNCTION_1_75(v39, v40, v41, v42, v43, v44, v45, v46, v47, v49, *(&v49 + 1), v50, *(&v50 + 1), v51, *(&v51 + 1), v52, v53);
        OUTLINED_FUNCTION_59_13();
        sub_25BC2AE30();
        goto LABEL_9;
      }

      sub_25BB7304C(*(&v55 + 1));
      sub_25BABF0A8(&v53);
    }

    else
    {
      sub_25BABF0A8(&v53);
    }
  }

  else
  {
    OUTLINED_FUNCTION_35_22();
    swift_unknownObjectRetain_n();
    sub_25BA9C2C8(&v49);
  }

LABEL_8:
  type metadata accessor for NativeTensorStorage(0);
  OUTLINED_FUNCTION_19_34();
  swift_unknownObjectRetain();
  v21 = sub_25BCB617C();
  OUTLINED_FUNCTION_1_75(v21, v22, v23, v24, v25, v26, v27, v28, v47, v49, *(&v49 + 1), v50, *(&v50 + 1), v51, *(&v51 + 1), v52, v53);
  OUTLINED_FUNCTION_59_13();
  sub_25BBC13DC(v29, v30, v31, v32, v33, v34, v35, v36, v48, v49, *(&v49 + 1), v50, *(&v50 + 1), v51, *(&v51 + 1), v52, v53, *(&v53 + 1), v54, *(&v54 + 1), v55, SDWORD2(v55), SWORD6(v55), SBYTE14(v55), SHIBYTE(v55), v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
LABEL_9:
  OUTLINED_FUNCTION_36_21();
  swift_unknownObjectRelease_n();
  OUTLINED_FUNCTION_45_18();
}

uint64_t sub_25BC743BC(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 < 3)
  {
    return 0;
  }

  type metadata accessor for SharedMetalDevice();
  OUTLINED_FUNCTION_17_26();
  v3 = swift_unknownObjectRetain();
  v2 = sub_25BBC97E0(v3);
  sub_25BB7304C(v1);
  return v2;
}

uint64_t sub_25BC74428(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = sub_25BCB617C();
  v5 = sub_25BAD15E4(v4);
  v7[0] = v2;
  v7[1] = v3;
  sub_25BACEFC8(v5, v7);
}

uint64_t sub_25BC74484()
{
  type metadata accessor for ExecutionContext();
  v0 = swift_allocObject();
  result = sub_25BC74540();
  qword_281557400 = v0;
  return result;
}

uint64_t sub_25BC744C0()
{

  return v0;
}

uint64_t sub_25BC744E8()
{
  sub_25BC744C0();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC74540()
{
  v1 = sub_25BCB6CDC();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1();
  v2 = sub_25BCB6CFC();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = sub_25BCB603C();
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB76F8, &qword_25BCD3390);
  *(v0 + 16) = sub_25BCB614C();
  sub_25BAADFB0();
  sub_25BCB601C();
  (*(v4 + 104))(v8, *MEMORY[0x277D85268], v2);
  sub_25BB72FC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4E50, &qword_25BCC2AB0);
  sub_25BBB8DF0();
  sub_25BCB702C();
  *(v0 + 24) = sub_25BCB6D2C();
  return v0;
}

void sub_25BC7475C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6)
{
  v11 = *a5;
  v12 = sub_25BA9266C(a2, a3);
  if (__OFADD__(v11[2], (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB76F0, &qword_25BCD3388);
  if ((sub_25BCB745C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_25BA9266C(a2, a3);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    sub_25BCB795C();
    __break(1u);
    return;
  }

  v14 = v16;
LABEL_5:
  v18 = *a5;
  if (v15)
  {
    v19 = (v18[7] + 16 * v14);
    *v19 = a1;
    v19[1] = a6;

    swift_unknownObjectRelease();
  }

  else
  {
    sub_25BC748B0(v14, a2, a3, a1, v18, a6);

    sub_25BCB617C();
  }
}

unint64_t sub_25BC748B0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v6 = (a5[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a5[7] + 16 * result);
  *v7 = a4;
  v7[1] = a6;
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_51_16()
{

  return type metadata accessor for MPSGraphTensorStorage();
}

void sub_25BC74980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t *, uint64_t, uint64_t *, __n128))
{
  OUTLINED_FUNCTION_17_1();
  a19 = v23;
  a20 = v24;
  v69 = v26;
  v70 = v25;
  v73 = v27;
  v74 = v22;
  v72 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v68 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4030, &qword_25BCBC5B8);
  MEMORY[0x28223BE20](v38 - 8);
  v40 = &v67 - v39;
  v41 = sub_25BCB598C();
  OUTLINED_FUNCTION_2();
  v43 = v42;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_1();
  v47 = v46 - v45;
  v71 = v30;
  sub_25BAD6FB0(v30 + 88, v76);
  type metadata accessor for LazyTensorFunctionBuilder();
  swift_initStackObject();
  sub_25BC47C64(v76);
  v49 = v48;
  a10 = v36;
  v75[0] = v34;
  sub_25BB0CD18(v32, v40);
  if (__swift_getEnumTagSinglePayload(v40, 1, v41) == 1)
  {
    v50 = v70;
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BB0CDB0(v40);
  }

  else
  {
    v51 = a21;
    (*(v43 + 32))(v47, v40, v41);
    sub_25BCB617C();
    sub_25BCB617C();
    v65 = v51;
    v50 = v70;
    v52 = v74;
    sub_25BC74CF0(v36, v34, v47, v71, v72, v70, v73, v69, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75[0], v75[1], v75[2]);
    v55 = (v43 + 8);
    v74 = v52;
    if (v52)
    {

      (*v55)(v47, v41);

      goto LABEL_10;
    }

    v56 = v54;
    v57 = *v55;
    v69 = v53;
    v57(v47, v41);

    a10 = v69;
    v75[0] = v56;
  }

  v58 = a22;
  v59 = v72;

  v60 = v50;

  v61 = v73;

  v62 = v71;

  (v58)(v49, v62, v59, v60, v61, &a10, v49, v75);
  sub_25BAD6344();
  if (*(v63 + 16) == 1)
  {
    sub_25BAD6FB0(v63 + 32, v68);
  }

  else
  {

    sub_25BB0A3A4();
    swift_allocError();
    *v64 = 0xD000000000000079;
    v64[1] = 0x800000025BCD95E0;
    swift_willThrow();
  }

LABEL_10:
  OUTLINED_FUNCTION_16();
}

void sub_25BC74F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  a10 = MEMORY[0x277D84F98];

  sub_25BCB617C();

  v37 = objc_autoreleasePoolPush();
  v24(v34, v32, v30, v28, v26, v36, &a10);
  objc_autoreleasePoolPop(v37);
  if (v20)
  {
  }

  OUTLINED_FUNCTION_16();
}

void sub_25BC7501C()
{
  OUTLINED_FUNCTION_17_1();
  v35 = v1;
  v39 = *MEMORY[0x277D85DE8];
  sub_25BCB598C();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  v5 = v4 - v3;
  v6 = objc_opt_self();
  v7 = [v6 defaultManager];
  v8 = [v7 currentDirectoryPath];

  v9 = v8;
  v10 = v8;
  v36 = v8;
  v11 = v8;
  if (!v8)
  {
    sub_25BCB636C();
    v11 = sub_25BCB633C();

    sub_25BCB636C();
    v36 = sub_25BCB633C();

    sub_25BCB636C();
    v10 = sub_25BCB633C();

    sub_25BCB636C();
    v9 = sub_25BCB633C();
  }

  v12 = v8;
  sub_25BCB58DC();
  v13 = [v6 defaultManager];
  v14 = sub_25BCB592C();
  v37 = 0;
  v15 = [v13 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:&v37];

  if (v15)
  {
    v16 = v37;

    v17 = [v6 &selRef_setMean_ + 3];
    sub_25BCB595C();
    v18 = sub_25BCB633C();

    v19 = [v17 changeCurrentDirectoryPath_];

    if (v19)
    {

      v35(v5);
      if (!v0)
      {
        v32 = OUTLINED_FUNCTION_6_59();
        v33(v32);

        v34 = [v6 defaultManager];
        [v34 changeCurrentDirectoryPath_];

        goto LABEL_10;
      }

      v20 = OUTLINED_FUNCTION_6_59();
      v21(v20);

      v10 = v9;
    }

    else
    {

      v37 = 0;
      v38 = 0xE000000000000000;
      sub_25BCB70FC();

      v37 = 0xD000000000000013;
      v38 = 0x800000025BCD96C0;
      v25 = sub_25BCB595C();
      MEMORY[0x25F876C90](v25);

      MEMORY[0x25F876C90](11815, 0xE200000000000000);
      v26 = v37;
      v27 = v38;
      sub_25BB0A3A4();
      swift_allocError();
      *v28 = v26;
      v28[1] = v27;
      swift_willThrow();
      v29 = OUTLINED_FUNCTION_6_59();
      v30(v29);
      v10 = v36;
    }
  }

  else
  {
    v22 = v37;

    sub_25BCB58CC();
    swift_willThrow();
    v23 = OUTLINED_FUNCTION_6_59();
    v24(v23);
  }

  v31 = [v6 defaultManager];
  [v31 &selRef:v10 invalidEspressoNetworkErrorForMethod:? description:? + 4];

LABEL_10:
  OUTLINED_FUNCTION_16();
}

uint64_t MLProgramWritingOptions.ParameterStorageMode.hashValue.getter()
{
  v1 = *v0;
  sub_25BCB79CC();
  MEMORY[0x25F878200](v1);
  return sub_25BCB7A3C();
}

void Layer<>.writeMLProgram(withInput:to:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  v22 = v21;
  v51 = v23;
  v24 = sub_25BCB598C();
  OUTLINED_FUNCTION_2();
  v50 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1();
  v29 = v28 - v27;
  v30 = *v22;
  v52 = 2;
  v53 = 64;
  v54 = 0xE100000000000000;
  v55 = OUTLINED_FUNCTION_0_89() & 1;
  v31 = Layer<>.compiled(forInput:options:)();
  v33 = v32;

  if (!v20)
  {
    v38 = v50;
    v39 = v56;
    v49 = v58;
    v47 = v57;
    v48 = v59;
    if (sub_25BC76008(v34, v35, v36, v37))
    {
      v40 = v51;
      v41 = sub_25BCB593C();
      v46 = &v46;
      MEMORY[0x28223BE20](v41);
      *(&v46 - 64) = v30;
      v42 = v47;
      *(&v46 - 7) = v39;
      *(&v46 - 6) = v42;
      v43 = v48;
      *(&v46 - 5) = v49;
      *(&v46 - 4) = v43;
      *(&v46 - 3) = v31;
      *(&v46 - 2) = v33;
      *(&v46 - 1) = v40;
      sub_25BC7501C();
      (*(v38 + 8))(v29, v24);
    }

    else
    {

      sub_25BCB70FC();
      MEMORY[0x25F876C90](0xD00000000000002BLL, 0x800000025BCE34B0);
      v44 = sub_25BCB594C();
      MEMORY[0x25F876C90](v44);

      MEMORY[0x25F876C90](0xD000000000000048, 0x800000025BCE5D10);
      sub_25BB0A3A4();
      swift_allocError();
      *v45 = 0;
      v45[1] = 0xE000000000000000;
      swift_willThrow();
    }
  }

  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BC757DC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v28 = a2;
  v29 = a3;
  v9 = sub_25BCB598C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a4;
  v14 = *v5;
  v15 = v5[1];
  v27 = *(v5 + 1);
  if (sub_25BC76008(v16, v17, v18, v19))
  {
    v20 = sub_25BCB593C();
    MEMORY[0x28223BE20](v20);
    *(&v27 - 5) = *(a5 + 16);
    *(&v27 - 64) = v13;
    *(&v27 - 7) = v14;
    *(&v27 - 6) = v15;
    *(&v27 - 40) = v27;
    v21 = v29;
    *(&v27 - 3) = v28;
    *(&v27 - 2) = v21;
    *(&v27 - 1) = a1;
    sub_25BC7501C();
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD00000000000002BLL, 0x800000025BCE34B0);
    v23 = sub_25BCB594C();
    MEMORY[0x25F876C90](v23);

    MEMORY[0x25F876C90](0xD000000000000048, 0x800000025BCE5D10);
    v24 = v30;
    v25 = v31;
    sub_25BB0A3A4();
    swift_allocError();
    *v26 = v24;
    v26[1] = v25;
    return swift_willThrow();
  }
}

void Layer<>.writeMLProgram(withInput:to:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_14_44();
  a29 = v31;
  a30 = v32;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  a20 = v39;
  v41 = v40;
  v43 = *v42;
  v44 = OUTLINED_FUNCTION_0_89();
  LOBYTE(a11) = 2;
  a12 = 64;
  a13 = 0xE100000000000000;
  a14 = v44 & 1;
  Layer<>.compiled(forInput:options:)(&a15, v41, &a11, v38, v36, v34);
  OUTLINED_FUNCTION_13_46();

  if (!v30)
  {
    LOBYTE(a11) = v43;
    OUTLINED_FUNCTION_2_74();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v47 = type metadata accessor for Function(0, AssociatedTypeWitness, &type metadata for Tensor, v46);
    sub_25BC757DC(a20, v34, 64, &a11, v47);
  }

  OUTLINED_FUNCTION_15_45();
}

uint64_t Layer<>.writeMLProgram(withInput:to:options:)()
{
  OUTLINED_FUNCTION_7_59();
  OUTLINED_FUNCTION_0_89();
  OUTLINED_FUNCTION_8_56();
  Layer<>.compiled(forInput:options:)();
  OUTLINED_FUNCTION_13_46();

  if (!v0)
  {
    OUTLINED_FUNCTION_10_49();
    OUTLINED_FUNCTION_2_74();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v4 = type metadata accessor for Function(0, &type metadata for Tensor, AssociatedTypeWitness, v3);
    OUTLINED_FUNCTION_12_46(v4, v5, v6, v7, v8, v9, v10, v11, v12);
  }

  return result;
}

{
  OUTLINED_FUNCTION_7_59();
  OUTLINED_FUNCTION_0_89();
  OUTLINED_FUNCTION_8_56();
  Layer<>.compiled(forInput:options:)();
  OUTLINED_FUNCTION_13_46();

  if (!v0)
  {
    OUTLINED_FUNCTION_10_49();
    OUTLINED_FUNCTION_2_74();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v4 = type metadata accessor for Function(0, &type metadata for Tensor, AssociatedTypeWitness, v3);
    OUTLINED_FUNCTION_12_46(v4, v5, v6, v7, v8, v9, v10, v11, v12);
  }

  return result;
}

uint64_t sub_25BC76008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25BCB590C();
  v4 = sub_25BCB63BC();
  v6 = v5;

  if (v4 == 7104877 && v6 == 0xE300000000000000)
  {
LABEL_11:

    return 1;
  }

  v8 = sub_25BCB789C();

  if ((v8 & 1) == 0)
  {
    sub_25BCB590C();
    v9 = sub_25BCB63BC();
    v11 = v10;

    if (v9 != 7633012 || v11 != 0xE300000000000000)
    {
      v13 = sub_25BCB789C();

      return v13 & 1;
    }

    goto LABEL_11;
  }

  return 1;
}