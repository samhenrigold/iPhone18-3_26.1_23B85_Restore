uint64_t Message.merge<A>(serializedBytes:extensions:partial:options:)(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a4;
  v9 = *(a4 + 8);
  v11[2] = a5;
  v11[3] = a6;
  v11[4] = a7;
  v11[5] = a8;
  v11[7] = a2;
  v12 = a3;
  v13 = v8;
  v14 = v9;
  return (*(a8 + 32))(sub_1AC4504E8, v11, MEMORY[0x1E69E7CA8] + 8, a6, a8);
}

{
  return sub_1AC469990(a1, a2, a3, a4, a5, a6, a7, a8, sub_1AC469A14);
}

uint64_t Message.init<A>(serializedBytes:extensions:partial:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = *a4;
  v16 = *(a4 + 8);
  (*(a7 + 16))(a5, a7);
  v21 = v15;
  v22 = v16;
  v17 = v23;
  Message.merge<A>(serializedBytes:extensions:partial:options:)(a1, a2, a3, &v21, a5, a6, a7, a8);
  sub_1AC455360(a2);
  result = (*(*(a6 - 8) + 8))(a1, a6);
  if (v17)
  {
    return (*(*(a5 - 8) + 8))(a9, a5);
  }

  return result;
}

uint64_t sub_1AC450324(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557F98, &qword_1AC520460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Message._merge(rawBuffer:extensions:partial:options:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v9 = v7;
  v12 = a4;
  if (!result || (v13 = result, v14 = a2 - result, a2 - result < 1) || (v15 = *a5, v16 = *(a5 + 8), sub_1AC450324(a3, v18), v20 = 1, memset(v21, 0, sizeof(v21)), v22 = 0, v23 = 1, v27 = xmmword_1AC5205D0, v28 = xmmword_1AC5205D0, v19[0] = v13, v19[1] = v14, v19[2] = v13, v19[3] = 0, sub_1AC450538(v18, v21 + 8), v24 = v15, v25 = v16, v26 = v15, sub_1AC4505A8(v9, a6, a7), result = sub_1AC45466C(v19), !v8))
  {
    if ((v12 & 1) == 0)
    {
      result = (*(a7 + 32))(a6, a7, a3, a4, a5);
      if ((result & 1) == 0)
      {
        sub_1AC48D31C();
        swift_allocError();
        *v17 = 4;
        return swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_1AC4504E8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(v2 + 56);
  v6 = *(v2 + 64);
  v7 = *(v2 + 80);
  v9 = *(v2 + 72);
  v10 = v7;
  return Message._merge(rawBuffer:extensions:partial:options:)(a1, a2, v5, v6, &v9, v3, v4);
}

uint64_t sub_1AC450538(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557F98, &qword_1AC520460);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1AC4505A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AC4506F4(a1);
  if (!v4)
  {
    (*(a3 + 64))(v3, &type metadata for BinaryDecoder, &off_1F211C348, a2, a3);
    sub_1AC451450();
    if (*(v3 + 8))
    {
      v7 = sub_1AC48D31C();
      OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v7);
      *v8 = 0;
      swift_willThrow();
    }

    else if (*(v3 + 136) >> 60 != 15)
    {
      v9 = *(a3 + 56);
      v10 = OUTLINED_FUNCTION_93_0();
      sub_1AC4578F4(v10, v11);
      v12 = v9(v15, a2, a3);
      OUTLINED_FUNCTION_93_0();
      sub_1AC51EC98();
      v12(v15, 0);
      v13 = OUTLINED_FUNCTION_93_0();
      sub_1AC45AC74(v13, v14);
    }
  }
}

void sub_1AC4506F4(uint64_t result)
{
  v2 = *(v1 + 120);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 120) = v4;
    if (v4 < 0)
    {
      sub_1AC48D31C();
      swift_allocError();
      *v5 = 6;
      swift_willThrow();
    }
  }
}

void sub_1AC450760()
{
  OUTLINED_FUNCTION_28_0();
  if (*(v0 + 40) >= 1)
  {
    v3 = v2[19];
    if (v3 >> 60 == 15)
    {
      if ((v2[4] & 1) == 0)
      {
        if (*(v2 + 112) == 1)
        {
          v4 = v2[3];
          if (v4)
          {
            *v2 = v4;
          }

          else
          {
            v31 = v2[1];
            v30 = v2[2];
            v32 = (*v2 - v30);
            v33 = __OFADD__(v31, v32);
            v34 = &v32[v31];
            if (v33)
            {
              goto LABEL_49;
            }

            *v2 = v30;
            v2[1] = v34;
            OUTLINED_FUNCTION_17_0();
            v36 = sub_1AC467C1C(v35);
            if (v1)
            {
              return;
            }

            if ((v36 & 0x100000000) != 0)
            {
              v44 = sub_1AC48D31C();
              OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v44);
              OUTLINED_FUNCTION_22_3();
              goto LABEL_23;
            }

            OUTLINED_FUNCTION_17_0();
            sub_1AC467A40(v37);
            v2[3] = *v2;
          }
        }

        else
        {
          OUTLINED_FUNCTION_17_0();
          sub_1AC467CD8(v23);
          if (v1)
          {
            return;
          }

          v26 = v24;
          v27 = v25;
          v28 = v2[17];
          if (v28 >> 60 == 15)
          {
            sub_1AC45AC74(v2[16], v28);
            v2[16] = v26;
            v2[17] = v27;
          }

          else
          {
            OUTLINED_FUNCTION_12();
            sub_1AC51EC98();
            v42 = OUTLINED_FUNCTION_12();
            sub_1AC4513F8(v42, v43);
          }
        }
      }
    }

    else
    {
      v5 = v2[17];
      v6 = v2[18];
      if (v5 >> 60 == 15)
      {
        v7 = v2[16];
        v8 = OUTLINED_FUNCTION_12();
        sub_1AC4578F4(v8, v9);
        sub_1AC45AC74(v7, v5);
        v2[16] = v6;
        v2[17] = v3;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_12();
        sub_1AC4578F4(v10, v11);
        OUTLINED_FUNCTION_12();
        sub_1AC51EC98();
        v12 = OUTLINED_FUNCTION_12();
        sub_1AC45AC74(v12, v13);
      }

      sub_1AC45AC74(v2[18], v2[19]);
      *(v2 + 9) = xmmword_1AC5205D0;
    }
  }

  v14 = v2[1];
  if (!v14)
  {
    return;
  }

  v15 = *v2;
  v2[2] = *v2;
  v2[3] = 0;
  v16 = *v15;
  v17 = sub_1AC450A70(v16 & 7);
  if (v17 == 6)
  {
    goto LABEL_22;
  }

  *(v2 + 33) = v17;
  if ((v16 & 0x80) == 0)
  {
    *v2 = v15 + 1;
    if (!__OFSUB__(v14, 1))
    {
      v2[1] = (v14 - 1);
      v18 = (v16 >> 3);
      goto LABEL_16;
    }

    __break(1u);
LABEL_49:
    __break(1u);
    return;
  }

  v19 = ((v16 >> 3) & 0xF);
  v2[5] = v19;
  if (v14 <= 1)
  {
    goto LABEL_22;
  }

  v29 = v15[1];
  if (v29 < 0)
  {
    v38 = (v16 >> 3) & 0xFLL | (16 * (v29 & 0x7F));
    v2[5] = v38;
    if (v14 != 2)
    {
      v39 = v15[2];
      v18 = (v38 | ((v39 & 0x7F) << 11));
      v2[5] = v18;
      if (v39 < 0)
      {
        if (v14 <= 3)
        {
          goto LABEL_22;
        }

        v45 = v15[3];
        v18 = (v18 | ((v45 & 0x7F) << 18));
        v2[5] = v18;
        if (v45 < 0)
        {
          if (v14 == 4)
          {
            goto LABEL_22;
          }

          v46 = v15[4];
          if (v46 >= 0x10)
          {
            goto LABEL_22;
          }

          v18 = (v18 | (v46 << 25));
          v2[5] = v18;
          v40 = v15 + 5;
          v41 = v14 - 5;
        }

        else
        {
          v40 = v15 + 4;
          v41 = v14 - 4;
        }
      }

      else
      {
        v40 = v15 + 3;
        v41 = v14 - 3;
      }

      *v2 = v40;
      v2[1] = v41;
      if (v18)
      {
        goto LABEL_17;
      }
    }

LABEL_22:
    v20 = sub_1AC48D31C();
    OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v20);
    OUTLINED_FUNCTION_23_2();
LABEL_23:
    OUTLINED_FUNCTION_107_0(v21, v22);
    return;
  }

  *v2 = v15 + 2;
  v2[1] = (v14 - 2);
  v18 = (v19 | (16 * v29));
LABEL_16:
  v2[5] = v18;
  if (!v18)
  {
    goto LABEL_22;
  }

LABEL_17:
  *(v2 + 32) = 0;
  if (v17 == 4 && ((v2[12] & 1) != 0 || v2[11] != v18))
  {
    goto LABEL_22;
  }
}

uint64_t sub_1AC450A70(uint64_t result)
{
  if (result >= 6u)
  {
    return 6;
  }

  else
  {
    return result;
  }
}

uint64_t OUTLINED_FUNCTION_28_2()
{

  return UnknownStorage.traverse<A>(visitor:)(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_28_5(uint64_t a1, uint64_t a2)
{

  return sub_1AC51F338();
}

uint64_t OUTLINED_FUNCTION_28_9(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

void sub_1AC450BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_60();
  v7 = v3;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_1AC51F228();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_75_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_49_0();
  if (*(v7 + 33) != 2)
  {
    goto LABEL_9;
  }

  v39 = v18;
  v48 = v9;
  sub_1AC453530(v17);
  if (v4)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v21 && v20)
  {
    v27 = sub_1AC48D31C();
    OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v27);
    OUTLINED_FUNCTION_36_1();
    goto LABEL_8;
  }

  v22 = *(v7 + 8);
  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v20 = v22 >= v19;
    v23 = v22 - v19;
    if (!v20)
    {
      v24 = sub_1AC48D31C();
      OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v24);
      OUTLINED_FUNCTION_53_1();
LABEL_8:
      OUTLINED_FUNCTION_59(v25, v26);
LABEL_9:
      OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_61();
      return;
    }

    v36 = *v7;
    v37 = v19;
    *v7 += v19;
    *(v7 + 8) = v23;
    v38 = v13;
    (*(v39 + 16))(v6, v13, v14);
    v28 = OUTLINED_FUNCTION_92_0();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, v29, v11);
    (*(v39 + 8))(v6, v14);
    if (EnumTagSinglePayload == 1)
    {
      (*(v9 + 16))(v11);
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v11);
      (*(v39 + 40))(v38, v5, v14);
    }

    sub_1AC4530E8(v7, &v41);
    v31 = v42[7];
    v32 = v43;
    sub_1AC452928(v42, v40, &qword_1EB557F98, &qword_1AC520460);
    OUTLINED_FUNCTION_39_0();
    *(v33 + 128) = xmmword_1AC5205D0;
    *(v33 + 144) = xmmword_1AC5205D0;
    v45[0] = v36;
    v45[1] = v37;
    v45[2] = v36;
    v45[3] = 0;
    sub_1AC454060(v40, v34 + 48, &qword_1EB557F98, &qword_1AC520460);
    v45[13] = v31;
    v46 = v32;
    v35 = v44;
    sub_1AC45466C(&v41);
    v47 = v35;
    OUTLINED_FUNCTION_42_0(v38, 1, v11);
    if (!v21)
    {
      sub_1AC4505A8(v38, v11, v48);
      sub_1AC45466C(v45);
      *(v7 + 32) = 1;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1AC450E7C(_DWORD *result)
{
  if (!*(v1 + 33))
  {
    v4 = sub_1AC453530(result);
    if (!v2)
    {
      *result = v4;
      OUTLINED_FUNCTION_26_1();
    }
  }
}

uint64_t OUTLINED_FUNCTION_11(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_11_9()
{

  return sub_1AC51F388();
}

uint64_t OUTLINED_FUNCTION_36(__n128 a1, uint64_t a2, __n128 *a3)
{
  *a3 = a1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_11_10()
{
  v2 = *(*v0 + 16);

  return sub_1AC45A85C(v2);
}

uint64_t OUTLINED_FUNCTION_16()
{
  v2 = *(*v0 + 16);

  return sub_1AC45A85C(v2);
}

void OUTLINED_FUNCTION_11_13()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  sub_1AC4854E8(v2, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_11_18@<X0>(unint64_t a1@<X8>)
{

  return sub_1AC4D0918(a1 > 1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_11_19(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 8);

  return sub_1AC4578F4(v3, v2);
}

uint64_t OUTLINED_FUNCTION_70@<X0>(void *a1@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *v1 = *a1;
  v1[1] = v3;
  v1[2] = v4;
  v1[3] = v5;
}

uint64_t OUTLINED_FUNCTION_12_3()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_12_4()
{

  return sub_1AC51F108();
}

uint64_t OUTLINED_FUNCTION_12_11()
{
  v2 = *(*v0 + 16);

  return sub_1AC45A85C(v2);
}

void OUTLINED_FUNCTION_12_12()
{
  v2 = *v0;
  *(v2 + 16) = v1 + 1;
  *(v2 + v1 + 32) = 91;
  *v0 = v2;
  *(v0 + 4) = 256;
}

void *OUTLINED_FUNCTION_108(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char __src, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);

  return memcpy(va, &__src, 0x48uLL);
}

void OUTLINED_FUNCTION_26_6(uint64_t a1, uint64_t a2)
{

  sub_1AC45A78C();
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

void sub_1AC4513F8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_1AC451450()
{
  v1 = *(v0 + 120);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
    goto LABEL_5;
  }

  *(v0 + 120) = v3;
  if (*(v0 + 104) < v3)
  {
LABEL_5:
    result = sub_1AC51F388();
    __break(1u);
  }

  return result;
}

double UnknownStorage.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AC51F990;
  return result;
}

uint64_t Message.serializedBytes<A>(partial:options:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 & 1) == 0 && ((*(a5 + 32))(a3, a5) & 1) == 0)
  {
    goto LABEL_6;
  }

  result = sub_1AC451818(a3, a5);
  if (v6)
  {
    return result;
  }

  if (result <= 2147483646)
  {
    v12 = (*(a6 + 8))(0, result, a4, a6);
    v14[1] = v14;
    MEMORY[0x1EEE9AC00](v12);
    return (*(a6 + 40))(sub_1AC451A44);
  }

  else
  {
LABEL_6:
    sub_1AC476EEC();
    swift_allocError();
    *v13 = 1;
    return swift_willThrow();
  }
}

uint64_t static Message.with(_:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  (*(a3 + 16))(a2, a3);
  result = a1(a4);
  if (v4)
  {
    return (*(*(a2 - 8) + 8))(a4, a2);
  }

  return result;
}

uint64_t Message.serializedData(partial:)(char a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  result = Message.serializedBytes<A>(partial:options:)(a1, &v5, a2, MEMORY[0x1E6969080], a3, &protocol witness table for Data);
  if (!v3)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1AC451818(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  result = (*(a2 + 72))(&v4, &type metadata for BinaryEncodingSizeVisitor, &off_1F211A7E8, a1, a2);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1AC451874@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AC51ECA8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1AC45189C(uint64_t a1, unint64_t a2, int a3)
{
  v6 = sub_1AC451978((8 * a3) | 2u);
  if ((a2 & 0x1000000000000000) != 0)
  {
    v7 = sub_1AC51EF48();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v8 = sub_1AC4519B4(v7);
  v9 = v6 + v8;
  if (__OFADD__(v6, v8))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFADD__(v9, v7);
  v11 = v9 + v7;
  if (v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = __OFADD__(*v3, v11);
  v12 = *v3 + v11;
  if (!v10)
  {
    OUTLINED_FUNCTION_11_4(v12);
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1AC451978(unsigned int a1)
{
  v1 = 2;
  v2 = 3;
  v3 = 4;
  if (a1 >> 28)
  {
    v3 = 5;
  }

  if (a1 >= 0x200000)
  {
    v2 = v3;
  }

  if (a1 >> 14)
  {
    v1 = v2;
  }

  if (a1 >= 0x80)
  {
    return v1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1AC4519B4(unint64_t a1)
{
  if (a1 < 0x80)
  {
    return 1;
  }

  v2 = a1;
  if ((a1 & 0x8000000000000000) != 0)
  {
    return 10;
  }

  if (!(a1 >> 35))
  {
    if (!(a1 >> 21))
    {
      result = 2;
      if (v2 < 0x4000)
      {
        return result;
      }

      return ++result;
    }

    result = 4;
LABEL_14:
    if (!(v2 >> 28))
    {
      return result;
    }

    return ++result;
  }

  if (a1 >> 49)
  {
    v2 = a1 >> 28;
    result = 8;
    goto LABEL_14;
  }

  result = 6;
  if (v2 >> 42)
  {
    return ++result;
  }

  return result;
}

uint64_t sub_1AC451A6C(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
    v10 = a2;
    v7[0] = a3 & 1;
    v8 = result;
    v9 = result;
    return (*(a7 + 72))(v7, &type metadata for BinaryEncodingVisitor, &off_1F211B110, a5, a7, a6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1AC451CCC(a3, 2u);
}

void *OUTLINED_FUNCTION_109(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char __dst, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va1, a19);
  va_start(__srca, a19);
  __src = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);

  return memcpy(&__dst, __srca, 0x48uLL);
}

void OUTLINED_FUNCTION_13_13()
{

  sub_1AC4854E8(v0, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_13_14()
{
  v2 = *(*v0 + 16);

  return sub_1AC45A85C(v2);
}

uint64_t OUTLINED_FUNCTION_13_16(char a1)
{

  return sub_1AC51F048();
}

unint64_t sub_1AC451C88()
{
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_13_3(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_12();
  return sub_1AC451D28(v3, v4);
}

uint64_t sub_1AC451CCC(uint64_t result, unsigned __int8 a2)
{
  v3 = (8 * (result & 0x1FFFFFFF)) | a2;
  v4 = *v2;
  if (v3 < 0x80)
  {
    LOBYTE(v5) = (8 * result) | a2;
  }

  else
  {
    do
    {
      *v4++ = v3 | 0x80;
      v5 = v3 >> 7;
      v6 = v3 >> 14;
      v3 >>= 7;
    }

    while (v6);
  }

  *v4 = v5;
  *v2 = v4 + 1;
  return result;
}

unint64_t sub_1AC451D28(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    v10 = sub_1AC51EF48();
    result = sub_1AC451EC4(v10);
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v11 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v12 = 4 << ((a1 & 0x800000000000000) != 0);
    v13 = 15;
    while (4 * v11 != v13 >> 14)
    {
      result = v13;
      if ((v13 & 0xC) == v12)
      {
        v16 = OUTLINED_FUNCTION_0_6();
        result = sub_1AC488FF0(v16, v17, v18);
      }

      if (v11 <= result >> 16)
      {
        __break(1u);
LABEL_29:
        __break(1u);
        return result;
      }

      result = sub_1AC51EF88();
      v14 = result;
      if ((v13 & 0xC) == v12)
      {
        v19 = OUTLINED_FUNCTION_0_6();
        result = sub_1AC488FF0(v19, v20, v21);
        v13 = result;
      }

      if (v11 <= v13 >> 16)
      {
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_0_6();
      result = sub_1AC51EF58();
      v13 = result;
      v15 = *v2;
      *v15 = v14;
      *v2 = v15 + 1;
    }
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(a2) & 0xF;
      v23[0] = a1;
      v23[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      result = sub_1AC451EC4(v8);
      if (v8)
      {
        result = memcpy(*v2, v23, HIBYTE(a2) & 0xF);
      }

      v9 = *v2 + v8;
    }

    else
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v6 = a1 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v5 = sub_1AC51F308();
        v6 = v22;
      }

      result = sub_1AC451EC4(v6);
      if (v5)
      {
        if (v6 >= 1)
        {
          result = memmove(*v2, v5, v6);
        }
      }

      else
      {
        v6 = 0;
      }

      v9 = *v2 + v6;
    }

    *v2 = v9;
  }

  return result;
}

unint64_t sub_1AC451EC4(unint64_t result)
{
  v2 = *v1;
  if (result < 0x80)
  {
    LOBYTE(v3) = result;
  }

  else
  {
    do
    {
      *v2++ = result | 0x80;
      v3 = result >> 7;
      v4 = result >> 14;
      result >>= 7;
    }

    while (v4);
  }

  *v2 = v3;
  *v1 = v2 + 1;
  return result;
}

void sub_1AC451EFC(uint64_t a1, int a2)
{
  v4 = sub_1AC451978((8 * a2) | 2u);
  v5 = 0;
  v6 = *(a1 + 16);
  v7 = (a1 + 40);
  v8 = v6 + 1;
  while (2)
  {
    if (!--v8)
    {
      goto LABEL_29;
    }

    v9 = v7 + 2;
    v10 = *(v7 - 1);
    v11 = *v7;
    v12 = *v7 >> 62;
    v13 = 1;
    v14 = 0;
    switch(v12)
    {
      case 1uLL:
        LODWORD(v14) = HIDWORD(v10) - v10;
        if (__OFSUB__(HIDWORD(v10), v10))
        {
          goto LABEL_34;
        }

        v14 = v14;
LABEL_8:
        if (v14 < 0x80)
        {
          v13 = 1;
          goto LABEL_25;
        }

        if ((v14 & 0x8000000000000000) != 0)
        {
          v13 = 10;
          goto LABEL_25;
        }

        if (v14 >> 35)
        {
          if (!(v14 >> 49))
          {
            if (!(v14 >> 42))
            {
              v13 = 6;
              goto LABEL_25;
            }

            v13 = 6;
            goto LABEL_24;
          }

          v18 = v14 >> 28;
          v13 = 8;
        }

        else
        {
          if (v14 < 0x200000)
          {
            v13 = 2;
            if (v14 < 0x4000)
            {
              goto LABEL_25;
            }

            goto LABEL_24;
          }

          v13 = 4;
          v18 = v14;
        }

        if (!(v18 >> 28))
        {
          goto LABEL_25;
        }

LABEL_24:
        ++v13;
LABEL_25:
        v17 = __OFADD__(v5, v13);
        v19 = v5 + v13;
        if (v17)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v7 = v9;
        v17 = __OFADD__(v19, v14);
        v5 = v19 + v14;
        if (!v17)
        {
          continue;
        }

        __break(1u);
LABEL_29:
        v20 = v4 * v6;
        if ((v4 * v6) >> 64 != (v4 * v6) >> 63)
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v21 = v20 + v5;
        if (__OFADD__(v20, v5))
        {
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v17 = __OFADD__(*v2, v21);
        v22 = *v2 + v21;
        if (v17)
        {
LABEL_38:
          __break(1u);
          JUMPOUT(0x1AC452074);
        }

        OUTLINED_FUNCTION_11_4(v22);
        return;
      case 2uLL:
        v16 = *(v10 + 16);
        v15 = *(v10 + 24);
        v17 = __OFSUB__(v15, v16);
        v14 = v15 - v16;
        if (!v17)
        {
          goto LABEL_8;
        }

        goto LABEL_35;
      case 3uLL:
        goto LABEL_25;
      default:
        v14 = BYTE6(v11);
        goto LABEL_8;
    }
  }
}

void sub_1AC4520DC(uint64_t a1, int a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = 8 * (a2 & 0x1FFFFFFF);
    v6 = v5 | 2;
    v7 = a1 + 32;
    v8 = *(v2 + 8);
    v32 = v5;
    v33 = *(a1 + 16);
    v31 = a1 + 32;
    while (2)
    {
      v9 = (v7 + 16 * v4);
      v11 = *v9;
      v10 = v9[1];
      if (v5 < 0x80)
      {
        LOBYTE(v13) = v6;
      }

      else
      {
        v12 = v6;
        do
        {
          *v8++ = v12 | 0x80;
          v13 = v12 >> 7;
          v14 = v12 >> 14;
          v12 >>= 7;
        }

        while (v14);
      }

      ++v4;
      *v8 = v13;
      v15 = v8 + 1;
      switch(v10 >> 62)
      {
        case 1uLL:
          LODWORD(v16) = HIDWORD(v11) - v11;
          if (__OFSUB__(HIDWORD(v11), v11))
          {
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
          }

          v16 = v16;
LABEL_16:
          if (v16 < 0x80)
          {
            LOBYTE(v20) = v16;
          }

          else
          {
            do
            {
              *v15++ = v16 | 0x80;
              v20 = v16 >> 7;
              v21 = v16 >> 14;
              v16 >>= 7;
            }

            while (v21);
          }

          *v15 = v20;
          v8 = v15 + 1;
          switch(v10 >> 62)
          {
            case 1uLL:
              if (v11 >> 32 < v11)
              {
                goto LABEL_46;
              }

              sub_1AC4578F4(v11, v10);
              v22 = sub_1AC51EB78();
              if (!v22)
              {
                goto LABEL_27;
              }

              v23 = sub_1AC51EBA8();
              if (__OFSUB__(v11, v23))
              {
                goto LABEL_49;
              }

              v22 += v11 - v23;
LABEL_27:
              v24 = (v11 >> 32) - v11;
LABEL_32:
              v28 = sub_1AC51EB98();
              if (v28 >= v24)
              {
                v29 = v24;
              }

              else
              {
                v29 = v28;
              }

              if (v22)
              {
                v7 = v31;
                if (v29 < 1)
                {
                  sub_1AC4513F8(v11, v10);
                }

                else
                {
                  memmove(v8, v22, v29);
                  sub_1AC4513F8(v11, v10);
                  v8 += v29;
                }

                v5 = v32;
                v3 = v33;
              }

              else
              {
                sub_1AC4513F8(v11, v10);
                v5 = v32;
                v3 = v33;
                v7 = v31;
              }

              break;
            case 2uLL:
              v25 = *(v11 + 16);
              v26 = *(v11 + 24);
              sub_1AC4578F4(v11, v10);
              v22 = sub_1AC51EB78();
              if (!v22)
              {
                goto LABEL_31;
              }

              v27 = sub_1AC51EBA8();
              if (__OFSUB__(v25, v27))
              {
                goto LABEL_48;
              }

              v22 += v25 - v27;
LABEL_31:
              v19 = __OFSUB__(v26, v25);
              v24 = v26 - v25;
              if (!v19)
              {
                goto LABEL_32;
              }

              goto LABEL_47;
            case 3uLL:
              break;
            default:
              __src = v11;
              v35 = v10;
              v36 = BYTE2(v10);
              v37 = BYTE3(v10);
              v38 = BYTE4(v10);
              v39 = BYTE5(v10);
              if (BYTE6(v10))
              {
                memmove(v8, &__src, BYTE6(v10));
                v8 += BYTE6(v10);
              }

              break;
          }

LABEL_41:
          if (v4 != v3)
          {
            continue;
          }

          *(v30 + 8) = v8;
          break;
        case 2uLL:
          v18 = *(v11 + 16);
          v17 = *(v11 + 24);
          v19 = __OFSUB__(v17, v18);
          v16 = v17 - v18;
          if (!v19)
          {
            goto LABEL_16;
          }

          goto LABEL_45;
        case 3uLL:
          v8[1] = 0;
          v8 += 2;
          goto LABEL_41;
        default:
          v16 = BYTE6(v10);
          goto LABEL_16;
      }

      break;
    }
  }
}

void Message.init(serializedData:extensions:partial:options:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = *a5;
  v15 = *(a5 + 8);
  (*(a7 + 16))(a6, a7);
  v18 = v14;
  v20[0] = a1;
  v20[1] = a2;
  v21 = a2;
  v19 = v15;
  Message.merge<A>(serializedBytes:extensions:partial:options:)(v20, a3, a4, &v18, a6, MEMORY[0x1E6969080], a7, &protocol witness table for Data);
  sub_1AC455360(a3);
  if (v17)
  {
    (*(*(a6 - 8) + 8))(a8, a6);
  }

  sub_1AC4513F8(a1, v21);
}

void OUTLINED_FUNCTION_87_1()
{

  JUMPOUT(0x1AC5B48A0);
}

void sub_1AC452588(uint64_t *a1)
{
  if (!*(v1 + 33))
  {
    v4 = sub_1AC453530(a1);
    if (!v2)
    {
      *a1 = v4;
      OUTLINED_FUNCTION_26_1();
    }
  }
}

void sub_1AC4525C0()
{
  OUTLINED_FUNCTION_8_3();
  if (v4)
  {
    OUTLINED_FUNCTION_2_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_5();
    }
  }

  OUTLINED_FUNCTION_4_4();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558298, &qword_1AC520A50);
    v7 = OUTLINED_FUNCTION_12_3();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_3_5();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_10_5();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1AC452690()
{
  OUTLINED_FUNCTION_8_3();
  if (v4)
  {
    OUTLINED_FUNCTION_2_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_5();
    }
  }

  OUTLINED_FUNCTION_5_3();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    v9 = OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_9_3(v9);
    OUTLINED_FUNCTION_6_3(v10);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_11_3();
  if (v1)
  {
    if (v2 != v0 || &v12[4 * v3] <= v11)
    {
      memmove(v11, v12, 4 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v11, v12, 4 * v3);
  }
}

void sub_1AC452764()
{
  OUTLINED_FUNCTION_25_1();
  if (v3)
  {
    v4 = v2;
    sub_1AC453530(v2);
    if (!v1)
    {
      OUTLINED_FUNCTION_27_1();
      if (!v3 && v6)
      {
        v12 = sub_1AC48D31C();
        OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v12);
        OUTLINED_FUNCTION_23_2();
      }

      else
      {
        v7 = v0[1];
        if ((v7 & 0x8000000000000000) != 0)
        {
          __break(1u);
          return;
        }

        v6 = v7 >= v5;
        v8 = v7 - v5;
        if (v6)
        {
          v13 = *v0;
          *v0 += v5;
          v0[1] = v8;
          v14 = sub_1AC456544(v13, v5);
          if (v15)
          {
            v16 = v14;
            v17 = v15;

            *v4 = v16;
            v4[1] = v17;
            OUTLINED_FUNCTION_26_1();
            return;
          }

          v18 = sub_1AC48D31C();
          OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v18);
          v11 = 2;
        }

        else
        {
          v9 = sub_1AC48D31C();
          OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v9);
          OUTLINED_FUNCTION_22_3();
        }
      }

      OUTLINED_FUNCTION_107_0(v10, v11);
    }
  }
}

void sub_1AC45286C()
{
  OUTLINED_FUNCTION_8_3();
  if (v4)
  {
    OUTLINED_FUNCTION_2_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_5();
    }
  }

  OUTLINED_FUNCTION_5_3();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    v9 = OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_9_3(v9);
    OUTLINED_FUNCTION_6_3(v10);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_11_3();
  if (v1)
  {
    if (v2 != v0 || &v12[8 * v3] <= v11)
    {
      memmove(v11, v12, 8 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v11, v12, 8 * v3);
  }
}

uint64_t sub_1AC452928(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_105_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7_1();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_5_0(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_5_6(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, __int128 a19)
{
  a1[1] = a17;
  a1[2] = a18;
  a1[3] = a19;
}

uint64_t OUTLINED_FUNCTION_5_7()
{
  v1 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1((v0 + 8), v1);
  return v1;
}

void OUTLINED_FUNCTION_5_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, char a22, uint64_t a23, unint64_t a24)
{
  sub_1AC4854E8(a19, a20, a21, a22);

  sub_1AC4513F8(a23, a24);
}

uint64_t OUTLINED_FUNCTION_5_10(uint64_t a1)
{

  return sub_1AC4673EC(a1, 1000000000);
}

void OUTLINED_FUNCTION_5_11()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  sub_1AC4854E8(v2, v3, v4, v5);
}

void OUTLINED_FUNCTION_5_15(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 1;
  *(v1 + 16) = 2;
}

void OUTLINED_FUNCTION_5_18(uint64_t a1@<X8>)
{
  *(a1 + 32) = v1;
  *(v3 - 152) = v2;
  *(v3 - 144) = 44;
}

uint64_t OUTLINED_FUNCTION_5_20(uint64_t a1)
{

  return sub_1AC4F18B4(v3, v2, v4, v1, a1);
}

uint64_t OUTLINED_FUNCTION_5_21(uint64_t a1)
{

  return sub_1AC51ED88();
}

uint64_t OUTLINED_FUNCTION_5_23(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_5_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 - 88) = a6;
  *(v6 - 112) = a2;
  *(v6 - 104) = a3;
}

uint64_t OUTLINED_FUNCTION_27_0(uint64_t a1)
{

  return sub_1AC51EE08();
}

void OUTLINED_FUNCTION_27_3(_BYTE *a1@<X8>)
{
  if (v1 == 3)
  {
    LOBYTE(v1) = 0;
  }

  *a1 = v1;
}

char *OUTLINED_FUNCTION_27_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v12 - 112) = v11;
  *(v12 - 104) = v10;
  return &a9 - v9;
}

uint64_t OUTLINED_FUNCTION_27_5(uint64_t a1, uint64_t a2, unint64_t a3, void (**a4)(uint64_t, char *, uint64_t), void (*a5)(__int128 *, char *, char *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return sub_1AC4663B4(v11, v10, a3, a4, a5, va, v12, v9);
}

void OUTLINED_FUNCTION_27_10(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xC000000000000000;
}

void OUTLINED_FUNCTION_46_0(unint64_t a1@<X0>, char a2@<W8>)
{
  *(v2 - 215) = a2;
  *(v2 - 208) = a1 >> 3;

  sub_1AC467A40(a1);
}

void OUTLINED_FUNCTION_46_3()
{
  *v1 = v0;

  sub_1AC458F28();
}

void OUTLINED_FUNCTION_46_4()
{
  *(v3 + 16) = v4;
  *(v3 + v2 + 32) = v1;
  *v0 = v3;
}

uint64_t OUTLINED_FUNCTION_46_5(uint64_t a1, uint64_t a2)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_46_6(char a1)
{

  return sub_1AC51F048();
}

void OUTLINED_FUNCTION_46_7(void *a1@<X8>, uint64_t x0_0@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>)
{
  *a1 = v7;
  a1[1] = v6;
  a1[2] = v8;
  a1[3] = v5;
  sub_1AC480274(x0_0, a2, a3, a4);
}

void sub_1AC453120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_60();
  v6 = v3;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_25_1();
  if (!v18)
  {
    goto LABEL_10;
  }

  v46 = v17;
  v19 = sub_1AC453530(v16);
  if (v4)
  {
    goto LABEL_10;
  }

  v20 = v19;
  OUTLINED_FUNCTION_27_1();
  if (!v18 && v21)
  {
    v27 = sub_1AC48D31C();
    OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v27);
    OUTLINED_FUNCTION_36_1();
    goto LABEL_9;
  }

  v22 = v3[1];
  if ((v22 & 0x8000000000000000) == 0)
  {
    v21 = v22 >= v20;
    v23 = v22 - v20;
    if (v21)
    {
      v37 = *v3;
      *v3 += v20;
      v3[1] = v23;
      (*(v8 + 16))(v10, v8);
      sub_1AC4530E8(v3, &v39);
      v28 = v40[7];
      v36 = v41;
      sub_1AC452928(v40, v38, &qword_1EB557F98, &qword_1AC520460);
      OUTLINED_FUNCTION_39_0();
      *(v29 + 128) = xmmword_1AC5205D0;
      *(v29 + 144) = xmmword_1AC5205D0;
      v43[0] = v37;
      v43[1] = v20;
      v43[2] = v37;
      v43[3] = 0;
      sub_1AC454060(v38, v30 + 48, &qword_1EB557F98, &qword_1AC520460);
      v43[13] = v28;
      v44 = v36;
      v31 = v42;
      sub_1AC45466C(&v39);
      v45 = v31;
      v32 = OUTLINED_FUNCTION_67_0();
      sub_1AC4505A8(v32, v33, v8);
      (*(v46 + 16))(v14, v5, v10);
      OUTLINED_FUNCTION_88_0();
      sub_1AC51F108();
      sub_1AC51F0D8();
      v34 = OUTLINED_FUNCTION_67_0();
      v35(v34);
      sub_1AC45466C(v43);
      *(v6 + 32) = 1;
      goto LABEL_10;
    }

    v24 = sub_1AC48D31C();
    OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v24);
    OUTLINED_FUNCTION_53_1();
LABEL_9:
    OUTLINED_FUNCTION_59(v25, v26);
LABEL_10:
    OUTLINED_FUNCTION_68();
    OUTLINED_FUNCTION_61();
    return;
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_69_0()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_69_1(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a12, uint64_t a10, uint64_t a11, __n128 a13)
{
  *(v13 - 80) = a1;
  a13 = a1;

  return sub_1AC4848F4(v13 - 80, &a10);
}

uint64_t sub_1AC453530(uint64_t result)
{
  v2 = v1[1];
  v3 = v2 < 1;
  v4 = v2 - 1;
  if (v3)
  {
    v8 = 1;
  }

  else
  {
    v6 = *v1 + 1;
    v5 = **v1;
    if ((v5 & 0x8000000000000000) == 0)
    {
LABEL_7:
      *v1 = v6;
      v1[1] = v4;
      return v5;
    }

    v5 &= 0x7Fu;
    v7 = 7;
    v8 = 3;
    while (1)
    {
      v3 = v4-- < 1;
      if (v3 || v7 > 0x3F)
      {
        break;
      }

      v9 = *v6++;
      v5 |= (v9 & 0x7F) << v7;
      v7 += 7;
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  v10 = sub_1AC48D31C();
  OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v10);
  *v11 = v8;
  return swift_willThrow();
}

uint64_t get_enum_tag_for_layout_string_21InternalSwiftProtobuf12ExtensionMap_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_2_8(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_2_9(uint64_t a1@<X8>)
{
  v8 = v7 + 48 * a1;
  v9 = *(v8 + 32);
  v10 = *(v8 + 40);
  v11 = *(v8 + 48);
  v12 = *(v8 + 64);
  v13 = *(v8 + 72);
  *(v8 + 32) = v6;
  *(v8 + 40) = v5;
  *(v8 + 48) = v4;
  v14 = *(v8 + 56);
  *(v8 + 56) = v3;
  *(v8 + 64) = v2;
  *(v8 + 72) = v1;
  sub_1AC4854E8(v9, v10, v11, v14);

  sub_1AC4513F8(v12, v13);
}

void OUTLINED_FUNCTION_2_16(uint64_t a1@<X8>)
{
  *(a1 + 32) = 91;
  *v2 = v1;
  *(v2 + 8) = 256;
}

uint64_t OUTLINED_FUNCTION_2_17(uint64_t a1, uint64_t a2)
{

  return sub_1AC51F3D8();
}

uint64_t OUTLINED_FUNCTION_2_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1AC4F1450(v10, &a9, v9, a1);
}

uint64_t OUTLINED_FUNCTION_2_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1AC4F300C(&a9, v10, v9);
}

uint64_t OUTLINED_FUNCTION_2_22@<X0>(uint64_t a1@<X8>)
{

  return sub_1AC4D0AF0(0, a1 + 1, 1);
}

uint64_t OUTLINED_FUNCTION_2_24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  a1[3] = a2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  a1[4] = v8;
  a1[5] = v6;
  a1[6] = v5;
  a1[7] = v4;
  a1[8] = v3;
  a1[9] = v2;
  *v7 = a1;
}

uint64_t OUTLINED_FUNCTION_2_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
}

uint64_t OUTLINED_FUNCTION_9_0(uint64_t a1, uint64_t a2, size_t a3)
{
  *(v8 - 125) = v7;
  *(v8 - 124) = v6;
  *(v8 - 123) = v5;
  *(v8 - 122) = v4;
  *(v8 - 121) = v3;

  return memcmp((v8 - 120), (v8 - 134), a3);
}

uint64_t OUTLINED_FUNCTION_9_10(uint64_t a1)
{

  return sub_1AC51EE08();
}

uint64_t OUTLINED_FUNCTION_9_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 - 136) = v4;

  return sub_1AC51F038();
}

void *OUTLINED_FUNCTION_86_2(int a1, const void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__dst)
{

  return memcpy(__dst, a2, 0x48uLL);
}

__n128 OUTLINED_FUNCTION_32_2()
{
  *(v0 + 78) = *(v0 + 14);
  v0[4] = *v0;
  return *(v0 + 4);
}

uint64_t OUTLINED_FUNCTION_232()
{

  return sub_1AC51F468();
}

uint64_t OUTLINED_FUNCTION_32_5(uint64_t a1, uint64_t a2)
{

  return sub_1AC459C7C(a2);
}

uint64_t OUTLINED_FUNCTION_32_6(uint64_t a1, uint64_t a2)
{

  return sub_1AC51F338();
}

void OUTLINED_FUNCTION_32_7()
{
  *v3 = v2;
  *(v3 + 8) = v0;
  *(v3 + 16) = v1;
  *(v3 + 24) = 1;
}

void OUTLINED_FUNCTION_32_8()
{

  sub_1AC50AB78(0x3Au);
}

void OUTLINED_FUNCTION_32_9()
{
  *(v1 + 16) = v3;
  *(v1 + v0 + 32) = v4;
  *v2 = v1;
}

uint64_t sub_1AC453DFC(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    result = a2();
    v5 = result;
  }

  *v2 = v5;
  return result;
}

char *sub_1AC453E68(char *result, uint64_t a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  else
  {
    v2 = 0;
    while (1)
    {
      v3 = *result++;
      if ((v3 & 0x80000000) == 0 && __OFADD__(v2++, 1))
      {
        break;
      }

      if (!--a2)
      {
        return v2;
      }
    }

    __break(1u);
  }

  return result;
}

void OUTLINED_FUNCTION_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, char a21)
{
  sub_1AC4854E8(v22, a14, a15, a21);

  sub_1AC4513F8(v21, v23);
}

uint64_t OUTLINED_FUNCTION_38_0(uint64_t a1)
{

  return sub_1AC453DFC(a1, sub_1AC456C38);
}

uint64_t OUTLINED_FUNCTION_38_1(uint64_t result)
{
  *v1 = result;
  *(result + 56) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_38_5()
{
  *(v1 + 88) = 0;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;

  return sub_1AC4779A8(v0 + 400, v0 + 240);
}

char *OUTLINED_FUNCTION_38_6()
{

  return sub_1AC45FD18(v0);
}

uint64_t OUTLINED_FUNCTION_36_2(uint64_t a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t *OUTLINED_FUNCTION_36_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 - 48) = a3;
  *(v4 - 40) = a4;

  return __swift_allocate_boxed_opaque_existential_1((v4 - 72));
}

uint64_t OUTLINED_FUNCTION_36_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_36_6()
{

  return sub_1AC502214(v0);
}

uint64_t sub_1AC454060(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_105_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7_1();
  (*(v6 + 40))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_7_0(unint64_t *a1)
{
  v2 = MEMORY[0x1E69E6328];

  return sub_1AC477788(a1, v2);
}

double OUTLINED_FUNCTION_7_2()
{
  *(v0 - 216) = 1;
  result = 0.0;
  v2 = v0 - 248;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v0 - 160) = 0;
  *(v0 - 152) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_4()
{

  return sub_1AC51F018();
}

void OUTLINED_FUNCTION_7_5()
{
  *(v0 + 24) = 4;
  *(v0 + 25) = 50529027;
  *(v0 + 29) = 3;
}

uint64_t OUTLINED_FUNCTION_7_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v30 = *(v27 + 8);
  a23 = v26;
  a24 = v28;
  a25 = a1;
  a26 = v30;

  return type metadata accessor for MessageExtension(0, &a23);
}

uint64_t OUTLINED_FUNCTION_7_8(uint64_t a1)
{

  return sub_1AC51F338();
}

void OUTLINED_FUNCTION_7_9()
{

  JUMPOUT(0x1AC5B4340);
}

uint64_t OUTLINED_FUNCTION_7_10()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_7_12(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_7_13()
{
  *(v1 + 16) = v2;
  *(v1 + v4 + 32) = v3;
  *v0 = v1;
}

uint64_t OUTLINED_FUNCTION_48_0()
{

  return swift_getAssociatedConformanceWitness();
}

void OUTLINED_FUNCTION_7_14(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 1;
  *(v1 + 16) = 2;
}

void OUTLINED_FUNCTION_7_15()
{

  JUMPOUT(0x1AC5B4070);
}

void OUTLINED_FUNCTION_7_19()
{

  sub_1AC45A78C();
}

uint64_t OUTLINED_FUNCTION_16_0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  return sub_1AC4578F4(a1, a2);
}

uint64_t OUTLINED_FUNCTION_15(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_1_12()
{

  return sub_1AC474690(v0);
}

uint64_t OUTLINED_FUNCTION_1_18(uint64_t a1)
{

  return sub_1AC51F3D8();
}

void OUTLINED_FUNCTION_1_21()
{
  v2 = *v0;
  *(v2 + 16) = v1 + 1;
  *(v2 + v1 + 32) = 91;
  *v0 = v2;
  *(v0 + 4) = 256;
}

void OUTLINED_FUNCTION_1_31()
{
  v2 = *v0;
  *(v2 + 16) = v1 + 1;
  *(v2 + v1 + 32) = 91;
  *v0 = v2;
}

uint64_t OUTLINED_FUNCTION_16_3(uint64_t a1, _BYTE *a2)
{
  *a2 = 3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_16_4(uint64_t a1, int a2)
{

  return sub_1AC451978((8 * a2) | 2u);
}

uint64_t OUTLINED_FUNCTION_16_8()
{

  return sub_1AC45BD44(v0, v1 - 176);
}

void OUTLINED_FUNCTION_16_10(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  a1[2].n128_u16[0] = v3;
  *a1 = a2;
  a1[1] = a3;
}

void OUTLINED_FUNCTION_16_13(uint64_t a1, unint64_t a2)
{

  sub_1AC5035B4(a1, a2, sub_1AC5010CC);
}

uint64_t OUTLINED_FUNCTION_8@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 34;
  *(v2 - 288) = a1;

  return sub_1AC45FA3C(0x6570797440, 0xE500000000000000);
}

uint64_t OUTLINED_FUNCTION_8_4(uint64_t a1, int a2)
{

  return sub_1AC451978((8 * a2) | 2u);
}

void OUTLINED_FUNCTION_8_11()
{

  JUMPOUT(0x1AC5B48A0);
}

void OUTLINED_FUNCTION_8_13()
{

  sub_1AC45A78C();
}

void OUTLINED_FUNCTION_8_21()
{

  JUMPOUT(0x1AC5B48A0);
}

void sub_1AC4549A0(uint64_t a1)
{
  OUTLINED_FUNCTION_25_1();
  if (v6)
  {
    v7 = v5;
    v8 = v4;
    sub_1AC453530(v4);
    if (!v2)
    {
      OUTLINED_FUNCTION_9_2();
      if (!v6 & v9)
      {
        v11 = 3;
      }

      else
      {
        v10 = *(v1 + 8);
        if ((v10 & 0x8000000000000000) != 0)
        {
          __break(1u);
          return;
        }

        v11 = 1;
        v12 = v10 - v3;
        if (v10 >= v3)
        {
          v7(*v8, v8[1]);
          *v1 += v3;
          *(v1 + 8) = v12;
          *v8 = MEMORY[0x1AC5B4090]();
          v8[1] = v13;
          *(v1 + 32) = 1;
          return;
        }
      }

      v14 = sub_1AC48D31C();
      OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v14);
      *v15 = v11;
      swift_willThrow();
    }
  }
}

uint64_t dispatch thunk of Decoder.decodeSingularBytesField(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 360))(a1, a2);
}

{
  return (*(a3 + 368))(a1, a2);
}

uint64_t OUTLINED_FUNCTION_94_0(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_94_1(uint64_t a1, ...)
{

  sub_1AC4BBFB4();
}

void OUTLINED_FUNCTION_58_0()
{
  *(v0 + 16) = v2;
  *(v0 + 8 * v4 + 32) = v3;
  *v1 = v0;
}

uint64_t OUTLINED_FUNCTION_58_2()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

__n128 OUTLINED_FUNCTION_25_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  result = a10;
  *(v11 - 24) = a10;
  *(v11 - 8) = v10;
  *(v11 + 4) = v13;
  *v11 = v12;
  return result;
}

void OUTLINED_FUNCTION_0_0()
{

  JUMPOUT(0x1AC5B48A0);
}

uint64_t OUTLINED_FUNCTION_25_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, char a41)
{
  *(v41 + 73) = a41;

  return sub_1AC4F0580(&a29);
}

uint64_t OUTLINED_FUNCTION_4()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_4_1(uint64_t result, char a2, uint64_t a3, char a4, char a5, char a6, char a7)
{
  *(v8 - 133) = a7;
  *(v8 - 132) = a6;
  *(v8 - 131) = a5;
  *(v8 - 130) = v7;
  *(v8 - 129) = a4;
  *(v8 - 128) = a2;
  *(v8 - 127) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_7(uint64_t a1, uint64_t a2)
{

  return sub_1AC51F0B8();
}

void OUTLINED_FUNCTION_4_9()
{
  *(v1 + 16) = v0;
  v5 = v1 + 16 * v4;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_4_10(uint64_t result)
{
  *v1 = v2;
  *(v1 + 8) = result;
  return result;
}

void OUTLINED_FUNCTION_4_15()
{
  *(v4 - 160) = v0;
  *(v4 - 159) = v3;
  *(v4 - 158) = v2;
  *(v4 - 157) = v1;
}

uint64_t OUTLINED_FUNCTION_4_19()
{

  return swift_getAssociatedConformanceWitness();
}

void OUTLINED_FUNCTION_4_21()
{

  JUMPOUT(0x1AC5B4340);
}

void *OUTLINED_FUNCTION_4_23(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  *(v19 - 72) = v18;

  return memcpy(va, v17, 0x41uLL);
}

__n128 OUTLINED_FUNCTION_67_1()
{
  *(v1 + 136) = *(v0 + 40);
  *(v1 + 152) = *(v0 + 56);
  result = *(v0 + 72);
  *(v1 + 168) = result;
  *(v1 + 182) = *(v0 + 86);
  return result;
}

uint64_t OUTLINED_FUNCTION_72_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_1AC4530E8(v10, va);
}

void sub_1AC454FD0(uint64_t a1)
{
  if (!*(v1 + 33))
  {
    v4 = sub_1AC453530(a1);
    if (!v2)
    {
      *a1 = v4;
      *(a1 + 8) = 0;
      OUTLINED_FUNCTION_26_1();
    }
  }
}

uint64_t OUTLINED_FUNCTION_21_0()
{
  v2 = *(*v0 + 16);

  return sub_1AC45A85C(v2);
}

uint64_t OUTLINED_FUNCTION_21_6(uint64_t a1, _BYTE *a2)
{
  *a2 = 4;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_21_10(uint64_t a1)
{

  sub_1AC4FBB8C(a1, sub_1AC4513F8);
}

void OUTLINED_FUNCTION_21_11()
{
  *(v1 + 16) = v3;
  *(v1 + v0 + 32) = 45;
  *v2 = v1;
}

uint64_t sub_1AC455360(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557F98, &qword_1AC520460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AC4553E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1AC45542C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 16))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
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

uint64_t OUTLINED_FUNCTION_3_6(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_3_11(uint64_t a1, uint64_t a2)
{

  return sub_1AC51F3D8();
}

void OUTLINED_FUNCTION_3_19()
{
  v2 = *v0;
  *(v2 + 16) = v1 + 1;
  *(v2 + v1 + 32) = 34;
  *v0 = v2;
}

void OUTLINED_FUNCTION_3_23()
{

  sub_1AC45A78C();
}

void OUTLINED_FUNCTION_3_27()
{

  JUMPOUT(0x1AC5B4340);
}

void OUTLINED_FUNCTION_3_30()
{

  sub_1AC45A78C();
}

uint64_t OUTLINED_FUNCTION_3_33()
{

  return UnknownStorage.traverse<A>(visitor:)(v2, v1, v0);
}

void OUTLINED_FUNCTION_0_2()
{
  v2 = *v0;
  *(v2 + 16) = v1 + 1;
  *(v2 + v1 + 32) = 10;
  *v0 = v2;
}

double OUTLINED_FUNCTION_0_4()
{
  result = 0.0;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_8(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_0_11(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_12(uint64_t a1)
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_0_13(unint64_t result, unsigned __int32 a2, __n128 a3)
{
  v3[1] = a3;
  v3->n128_u64[0] = result;
  v3->n128_u32[2] = a2;
  return result;
}

void OUTLINED_FUNCTION_0_18()
{

  sub_1AC4854E8(0, 0, 0x3000000000000000uLL, 255);
}

void OUTLINED_FUNCTION_0_22()
{
  v3 = *v1;
  *(v3 + 16) = v0 + 1;
  *(v3 + v0 + 32) = v2;
  *v1 = v3;
}

void OUTLINED_FUNCTION_0_23()
{
  v2 = *v0;
  *(v2 + 16) = v1 + 1;
  *(v2 + v1 + 32) = 93;
  *v0 = v2;
  *(v0 + 4) = 44;
}

void OUTLINED_FUNCTION_0_27()
{

  sub_1AC45A78C();
}

void OUTLINED_FUNCTION_0_36()
{
  v2 = *v0;
  *(v2 + 16) = v1 + 1;
  *(v2 + v1 + 32) = 10;
  *v0 = v2;
}

uint64_t dispatch thunk of Decoder.decodeSingularStringField(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 336))(a1, a2);
}

{
  return (*(a3 + 344))(a1, a2);
}

__n128 OUTLINED_FUNCTION_45_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a11, int a12, __int16 a13)
{
  *v12 = a9;
  result = *(&a9 + 14);
  *(v12 + 14) = *(&a9 + 14);
  return result;
}

uint64_t OUTLINED_FUNCTION_45_4(uint64_t a1)
{

  return sub_1AC51F0D8();
}

uint64_t sub_1AC455C34(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void *OUTLINED_FUNCTION_6_1(void *__src, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return memcpy(va, __src, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_6_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
}

uint64_t OUTLINED_FUNCTION_6_12()
{
  *(v0 - 56) = *(v0 - 48);
}

void OUTLINED_FUNCTION_6_13()
{

  JUMPOUT(0x1AC5B48A0);
}

void OUTLINED_FUNCTION_6_15(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 1;
  *(v1 + 16) = 2;
}

uint64_t OUTLINED_FUNCTION_6_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_getAssociatedTypeWitness();
}

void OUTLINED_FUNCTION_6_23()
{

  sub_1AC45A78C();
}

void OUTLINED_FUNCTION_10_10()
{

  sub_1AC45A78C();
}

void *OUTLINED_FUNCTION_10_14(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);

  return memcpy(va, &a9, 0x41uLL);
}

uint64_t sub_1AC45604C(uint64_t (*a1)(void))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    OUTLINED_FUNCTION_11_8();
    result = a1();
    *v1 = result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_34_3()
{

  return sub_1AC457638();
}

uint64_t OUTLINED_FUNCTION_34_4()
{
  v2 = *(*v0 + 16);

  return sub_1AC45A85C(v2);
}

uint64_t OUTLINED_FUNCTION_34_5()
{

  return sub_1AC51ED58();
}

void OUTLINED_FUNCTION_34_7()
{

  sub_1AC45A78C();
}

void OUTLINED_FUNCTION_104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t a23)
{

  sub_1AC4854E8(a17, v23, a23, a14);
}

uint64_t OUTLINED_FUNCTION_104_0(uint64_t a1)
{

  return sub_1AC51EDA8();
}

void *OUTLINED_FUNCTION_104_2(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char __src)
{

  return memcpy(a1, &__src, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_91(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21)
{

  return sub_1AC4578F4(v21, a21);
}

__n128 OUTLINED_FUNCTION_91_2@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_3(uint64_t a1)
{

  return sub_1AC51F3D8();
}

uint64_t OUTLINED_FUNCTION_35_4()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void *OUTLINED_FUNCTION_35_6(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t __src, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);

  return memcpy(va, &__src, 0x41uLL);
}

void OUTLINED_FUNCTION_35_7()
{

  JUMPOUT(0x1AC5B4070);
}

uint64_t OUTLINED_FUNCTION_37_0(uint64_t a1)
{

  return sub_1AC453DFC(a1, sub_1AC48F190);
}

uint64_t OUTLINED_FUNCTION_37_3()
{

  return sub_1AC459020(0x5Du);
}

uint64_t OUTLINED_FUNCTION_37_4()
{
  v2 = *(*v0 + 16);

  return sub_1AC45A85C(v2);
}

uint64_t OUTLINED_FUNCTION_37_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);

  return sub_1AC4EF50C(&a18, va);
}

uint64_t dispatch thunk of Decoder.decodeSingularUInt64Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 144))(a1, a2);
}

{
  return (*(a3 + 152))(a1, a2);
}

void sub_1AC45641C(uint64_t a1)
{
  if (!*(v1 + 33))
  {
    v4 = sub_1AC453530(a1);
    if (!v2)
    {
      OUTLINED_FUNCTION_98_1(v4);
      *(a1 + 8) = 0;
      OUTLINED_FUNCTION_26_1();
    }
  }
}

uint64_t sub_1AC456544(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = (a1 + a2);
  v23 = 0;
  v24 = 0;
  OUTLINED_FUNCTION_0_33();
  v8 = v7 | 0x80800000;
  v10 = v9;
  while (1)
  {
    while (1)
    {
      while (!v3)
      {
        if (!v10 || v2 == v10)
        {
          return sub_1AC51EE98();
        }

        v3 = 0;
        v12 = *v10++;
        v11 = v12;
        if (v12 < 0)
        {
          v13 = v23 & 0xFFFFFF00 | v11;
          v14 = 8;
          goto LABEL_8;
        }
      }

      if ((v23 & 0x80) != 0)
      {
        break;
      }

      sub_1AC463F1C();
      v21 = sub_1AC463E74();
      sub_1AC463E94(0);
      (v21)(v22, 0);
      OUTLINED_FUNCTION_0_33();
      v8 = v18 | 0x80800000;
    }

    OUTLINED_FUNCTION_0_33();
    v8 = v19 | 0x80800000;
    if (!v10)
    {
      goto LABEL_13;
    }

LABEL_8:
    v15 = v10;
    while (v15 != v2)
    {
      v16 = *v15++;
      ++v10;
      v13 = (v16 << v14) | ((-255 << v14) - 1) & v13;
      v14 += 8;
      if (v14 >= 0x20u)
      {
        goto LABEL_13;
      }
    }

    if (!v14)
    {
      return sub_1AC51EE98();
    }

LABEL_13:
    if ((v13 & 0xC0E0) == 0x80C0)
    {
      if ((v13 & 0x1E) == 0)
      {
        goto LABEL_30;
      }

      v17 = 16;
    }

    else if ((v13 & 0xC0C0F0) == 0x8080E0)
    {
      if ((v13 & v4) == 0 || (v13 & v4) == v5)
      {
        goto LABEL_30;
      }

      v17 = 24;
    }

    else
    {
      if ((v13 & v6) != v8 || (v13 & 0x3007) == 0 || __rev16(v13 & 0x3007) > 0x400)
      {
LABEL_30:
        sub_1AC51F4D8();
        return 0;
      }

      v17 = 32;
    }

    v23 = v13 >> v17;
    v3 = v14 - v17;
    v24 = v3;
  }
}

void OUTLINED_FUNCTION_89_0(__n128 a1)
{
  *(v1 + 40) = a1;
  *(v1 + 56) = a1;
  *(v1 + 72) = a1;
}

uint64_t dispatch thunk of Decoder.decodeSingularInt64Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 96))(a1, a2);
}

{
  return (*(a3 + 104))(a1, a2);
}

uint64_t dispatch thunk of Decoder.decodeSingularSInt64Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 200))(a1, a2);
}

{
  return (*(a3 + 192))(a1, a2);
}

void sub_1AC456860(uint64_t a1, uint64_t (*a2)(void))
{
  if (*(v2 + 33) == 1)
  {
    v5 = a2();
    if (!v3)
    {
      *a1 = v5;
      *(a1 + 8) = 0;
      OUTLINED_FUNCTION_26_1();
    }
  }
}

uint64_t OUTLINED_FUNCTION_48_2()
{

  return UnknownStorage.traverse<A>(visitor:)(v2, v1, v0);
}

char *OUTLINED_FUNCTION_48_6()
{

  return sub_1AC45FD18(v0);
}

uint64_t dispatch thunk of Decoder.decodeSingularDoubleField(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 56))(a1, a2);
}

{
  return (*(a3 + 48))(a1, a2);
}

uint64_t sub_1AC456984(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = v2 < 8;
  v4 = v2 - 8;
  if (v3)
  {
    sub_1AC48D31C();
    v5 = swift_allocError();
    return OUTLINED_FUNCTION_15(v5, v6);
  }

  else
  {
    result = **v1;
    *v1 += 8;
    *(v1 + 8) = v4;
  }

  return result;
}

uint64_t dispatch thunk of Decoder.decodeSingularUInt32Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 120))(a1, a2);
}

{
  return (*(a3 + 128))(a1, a2);
}

void sub_1AC456B04()
{
  OUTLINED_FUNCTION_25_1();
  if (v4)
  {
    v5 = v3;
    sub_1AC453530(v3);
    if (!v1)
    {
      OUTLINED_FUNCTION_27_1();
      if (!v4 && v7)
      {
        v13 = sub_1AC48D31C();
        OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v13);
        OUTLINED_FUNCTION_23_2();
      }

      else
      {
        v8 = v0[1];
        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
          return;
        }

        v7 = v8 >= v6;
        v9 = v8 - v6;
        if (v7)
        {
          v14 = *v0;
          *v0 += v6;
          v0[1] = v9;
          v15 = sub_1AC456544(v14, v6);
          if (v16)
          {
            v17 = v15;
            v18 = v16;
            sub_1AC456458();
            v19 = OUTLINED_FUNCTION_48_1();
            sub_1AC456470(v19);
            OUTLINED_FUNCTION_32_0(v2 + 1);
            v21 = v20 + 16 * v2;
            *(v21 + 32) = v17;
            *(v21 + 40) = v18;
            *v5 = v20;
            OUTLINED_FUNCTION_33_0();
            return;
          }

          v22 = sub_1AC48D31C();
          OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v22);
          v12 = 2;
        }

        else
        {
          v10 = sub_1AC48D31C();
          OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v10);
          OUTLINED_FUNCTION_22_3();
        }
      }

      OUTLINED_FUNCTION_107_0(v11, v12);
    }
  }
}

void sub_1AC456CE0(int a1)
{
  v2 = 8 * a1;
  v3 = 10;
  v4 = 11;
  v5 = 12;
  if ((8 * a1) >> 28)
  {
    v5 = 13;
  }

  if (v2 >= 0x200000)
  {
    v4 = v5;
  }

  if ((8 * a1) >> 14)
  {
    v3 = v4;
  }

  if (v2 >= 0x80)
  {
    v6 = v3;
  }

  else
  {
    v6 = 9;
  }

  v7 = __OFADD__(*v1, v6);
  v8 = *v1 + v6;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_4(v8);
  }
}

uint64_t dispatch thunk of Decoder.decodeSingularInt32Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 72))(a1, a2);
}

{
  return (*(a3 + 80))(a1, a2);
}

unint64_t sub_1AC456D58(uint64_t a1, int a2)
{
  v4 = OUTLINED_FUNCTION_16_4(a1, a2);
  v5 = OUTLINED_FUNCTION_28_1();
  result = sub_1AC451818(v5, v6);
  if (!v3)
  {
    v8 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      result = sub_1AC4519B4(result);
      v9 = v4 + result;
      if (!__OFADD__(v4, result))
      {
        v10 = __OFADD__(v9, v8);
        v11 = v9 + v8;
        if (!v10)
        {
          v10 = __OFADD__(*v2, v11);
          v12 = *v2 + v11;
          if (!v10)
          {
            *v2 = v12;
            return result;
          }

LABEL_11:
          __break(1u);
          return result;
        }

LABEL_10:
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

void sub_1AC456E64()
{
  OUTLINED_FUNCTION_1_6();
  if (!v8)
  {
    ++v7;
  }

  if (v2 >= 0x200000)
  {
    v6 = v7;
  }

  if (v5)
  {
    v4 = v6;
  }

  if (v2 >= 0x80)
  {
    v9 = v4;
  }

  else
  {
    v9 = v3;
  }

  v10 = sub_1AC4519B4(v1);
  v11 = v9 + v10;
  if (__OFADD__(v9, v10))
  {
    __break(1u);
  }

  else
  {
    v12 = __OFADD__(*v0, v11);
    v13 = *v0 + v11;
    if (!v12)
    {
      OUTLINED_FUNCTION_11_4(v13);
      return;
    }
  }

  __break(1u);
}

unint64_t sub_1AC456F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_3_7(a1, a2);
  sub_1AC451CCC(v8, 2u);
  result = sub_1AC451818(a3, a4);
  if (!v5)
  {
    sub_1AC45702C(result);
    return (*(a4 + 72))(v4, &type metadata for BinaryEncodingVisitor, &off_1F211B110, a3, a4);
  }

  return result;
}

unint64_t sub_1AC457064()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = OUTLINED_FUNCTION_3_7(v0, v2);
  sub_1AC451CCC(v3, 0);
  return sub_1AC457060(v1 & 1);
}

void Message.init<A>(jsonUTF8Bytes:extensions:options:)()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v24 = v10;
  v25 = v9;
  v23 = v11;
  OUTLINED_FUNCTION_5();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_12_8();
  v17 = v16 - v15;
  v19 = *v18;
  v20 = *(v18 + 8);
  (*(v21 + 16))(v22, v21);
  v26[2] = v8;
  v26[3] = v6;
  v26[4] = v4;
  v26[5] = v2;
  v26[6] = v19;
  v27 = v20;
  v28 = v24;
  v29 = v17;
  (*(v2 + 32))(sub_1AC458DB8, v26, MEMORY[0x1E69E7CA8] + 8, v6, v2);
  (*(*(v6 - 8) + 8))(v25, v6);
  if (!v0)
  {
    (*(v13 + 16))(v23, v17, v8);
  }

  sub_1AC4575D8(v24, &qword_1EB557F98, &qword_1AC520460);
  (*(v13 + 8))(v17, v8);
  OUTLINED_FUNCTION_61();
}

void sub_1AC4572A8(uint64_t a1, int a2)
{
  v3 = 8 * a2;
  v4 = 3;
  v5 = 4;
  v6 = 5;
  if ((8 * a2) >> 28)
  {
    v6 = 6;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if ((8 * a2) >> 14)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 2;
  }

  v8 = __OFADD__(*v2, v7);
  v9 = *v2 + v7;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_4(v9);
  }
}

void sub_1AC45731C()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_5();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12_8();
  v13 = v12 - v11;
  if (dynamic_cast_existential_1_conditional(v14, v14, &protocol descriptor for _ProtoNameProviding))
  {
    (*(v15 + 8))(v27);
    sub_1AC458E14(v0[16], v0[17], v0[18], v0[19]);
    v16 = v27[1];
    *(v0 + 8) = v27[0];
    *(v0 + 9) = v16;
    (*(v9 + 16))(v13, v7, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FC0, &unk_1AC51FCE0);
    if (swift_dynamicCast())
    {
      sub_1AC458DF0(&v24, v27);
      sub_1AC47782C(v27, &v24);
      v17 = *(&v25 + 1);
      v18 = v26;
      __swift_mutable_project_boxed_opaque_existential_1(&v24, *(&v25 + 1));
      (*(v18 + 16))(v0, v17, v18);
      __swift_destroy_boxed_opaque_existential_1(v27);
      if (!v1)
      {
        (*(v9 + 8))(v7, v5);
        sub_1AC47782C(&v24, &v23);
        swift_dynamicCast();
      }

      __swift_destroy_boxed_opaque_existential_1(&v24);
    }

    else
    {
      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      sub_1AC4575D8(&v24, &qword_1EB557FC8, &unk_1AC528980);
      v22 = sub_1AC458E74(0x7Bu);
      if (!v1)
      {
        sub_1AC458FC0(v22);
        if (sub_1AC459020(0x7Du))
        {
          sub_1AC45A9B0();
        }

        else
        {
          (*(v3 + 64))(v0, &type metadata for JSONDecoder, &off_1F211C6C8, v5, v3);
        }
      }
    }
  }

  else
  {
    v19 = sub_1AC477660();
    v20 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v19);
    OUTLINED_FUNCTION_36(xmmword_1AC528950, v20, v21);
  }

  OUTLINED_FUNCTION_61();
}

uint64_t sub_1AC4575D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AC457638()
{
  sub_1AC458F28();
  v1 = v0[2];
  v2 = *v0;
  if (*v0)
  {
    OUTLINED_FUNCTION_15_9();
  }

  else
  {
    v3 = 0;
  }

  if (v1 == v3 || *(v2 + v1) != 110)
  {
    return 0;
  }

  return sub_1AC459FB0(&unk_1F2126E98);
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

void sub_1AC457700()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  sub_1AC451CCC(v3, 1u);
  v4 = *(v0 + 8);
  *v4 = v2;
  OUTLINED_FUNCTION_16_5((v4 + 1));
}

unint64_t sub_1AC457764(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_0_7(a1, a2);
  sub_1AC451CCC(v2, 0);
  v3 = OUTLINED_FUNCTION_10_7();
  return sub_1AC457060(v3);
}

void sub_1AC4577A0()
{
  OUTLINED_FUNCTION_25_1();
  if (v4)
  {
    v5 = v3;
    sub_1AC453530(v3);
    if (!v1)
    {
      OUTLINED_FUNCTION_27_1();
      if (!v4 && v7)
      {
        v9 = 3;
      }

      else
      {
        v8 = *(v0 + 8);
        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
          return;
        }

        v9 = 1;
        v7 = v8 >= v6;
        v10 = v8 - v6;
        if (v7)
        {
          *v0 += v6;
          *(v0 + 8) = v10;
          v11 = MEMORY[0x1AC5B4090]();
          v13 = v12;
          sub_1AC45846C();
          v14 = OUTLINED_FUNCTION_48_1();
          sub_1AC458484(v14);
          OUTLINED_FUNCTION_32_0(v2 + 1);
          v16 = v15 + 16 * v2;
          *(v16 + 32) = v11;
          *(v16 + 40) = v13;
          *v5 = v15;
          *(v0 + 32) = 1;
          return;
        }
      }

      v17 = sub_1AC48D31C();
      OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v17);
      *v18 = v9;
      swift_willThrow();
    }
  }
}

unint64_t sub_1AC45788C(int a1, uint64_t a2)
{
  v2 = a1;
  sub_1AC451CCC(a2, 0);
  return sub_1AC457060(v2);
}

uint64_t sub_1AC4578F4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

void sub_1AC45794C()
{
  OUTLINED_FUNCTION_8_3();
  if (v4)
  {
    OUTLINED_FUNCTION_2_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_5();
    }
  }

  OUTLINED_FUNCTION_4_4();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558238, &qword_1AC5209F8);
    v7 = OUTLINED_FUNCTION_12_3();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_3_5();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_10_5();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_1AC457A34()
{
  result = OUTLINED_FUNCTION_34_3();
  if (result)
  {
    *v1 = 0;
  }

  else
  {
    result = sub_1AC457AA8();
    if (!v0)
    {
      if (result == result)
      {
        *v1 = result;
      }

      else
      {
        v3 = sub_1AC477660();
        v4 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v3);
        return OUTLINED_FUNCTION_36(xmmword_1AC5284F0, v4, v5);
      }
    }
  }

  return result;
}

uint64_t *sub_1AC457AEC(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t *, char *, uint64_t *, uint64_t), uint64_t (*a3)(uint64_t))
{
  v39 = a3;
  v7 = OUTLINED_FUNCTION_19_8();
  OUTLINED_FUNCTION_3_0();
  v36 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12_8();
  v12 = v11 - v10;
  sub_1AC458F28();
  v13 = *v4;
  if (*v4)
  {
    v14 = *(v5 + 8) - v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v5 + 16);
  if (v15 == v14)
  {
LABEL_5:
    v16 = sub_1AC477660();
    v17 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v16);
    v19 = xmmword_1AC51FB60;
LABEL_6:
    OUTLINED_FUNCTION_36(v19, v17, v18);
    return v4;
  }

  if (*(v13 + v15) != 34)
  {
    OUTLINED_FUNCTION_16_8();
    v30 = OUTLINED_FUNCTION_20_8();
    a1(v30);
    if (!v3)
    {
      OUTLINED_FUNCTION_20();
      sub_1AC457DC4(v38);
      if ((v5 & 1) == 0)
      {
        return v4;
      }

      goto LABEL_16;
    }

LABEL_13:
    sub_1AC457DC4(v38);
    return v4;
  }

  v34 = a1;
  v20 = *(v5 + 8);
  *(v5 + 16) = sub_1AC458F9C(v15, v13, v20);
  OUTLINED_FUNCTION_16_8();
  v21 = OUTLINED_FUNCTION_20_8();
  v22 = (v34)(v21, v20, v5 + 16);
  if (v3)
  {
    goto LABEL_13;
  }

  v4 = v22;
  v35 = v20;
  v24 = v23;
  sub_1AC457DC4(v38);
  if ((v24 & 1) == 0)
  {
    v32 = *(v5 + 16);
    v33 = *v5;
    if (*v5)
    {
      v33 = *(v5 + 8) - v33;
    }

    if (v32 == v33)
    {
      goto LABEL_5;
    }

    if (*(v13 + v32) == 34)
    {
      *(v5 + 16) = sub_1AC458F9C(v32, v13, v35);
      return v4;
    }

LABEL_16:
    v31 = sub_1AC477660();
    v17 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v31);
    v19 = xmmword_1AC528340;
    goto LABEL_6;
  }

  *(v5 + 16) = v15;
  OUTLINED_FUNCTION_17_0();
  sub_1AC45993C();
  v4 = v25;
  sub_1AC51EE18();
  v26 = sub_1AC51EDF8();
  v28 = v27;
  result = (*(v36 + 8))(v12, v7);
  if (v28 >> 60 != 15)
  {

    sub_1AC4E58D8(v26, v28, v5, a2, v39);
    OUTLINED_FUNCTION_20();
    sub_1AC45AC74(v26, v28);
    if ((v5 & 1) == 0)
    {
      return v4;
    }

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1AC457E18(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a3;
  if (*a3 == a4)
  {
    goto LABEL_2;
  }

  v8 = *(result + v4);
  if (v8 != 92 && v8 != 78)
  {
    v12 = *a3;
    if (v8 != 45)
    {
      goto LABEL_11;
    }

    v13 = sub_1AC458F9C(*a3, result, a2);
    *a3 = v13;
    if (v13 == a4)
    {
      *a3 = v4;
LABEL_2:
      v5 = 13;
LABEL_3:
      sub_1AC477660();
      swift_allocError();
      *v6 = 0;
      v6[1] = v5;
      swift_willThrow();
      return;
    }

    v12 = v13;
    v8 = *(result + v13);
    if (v8 != 92)
    {
LABEL_11:
      if (v8 != 73)
      {
        if (v8 == 48)
        {
          v14 = sub_1AC458F9C(v12, result, a2);
          *a3 = v14;
          if (v14 == a4)
          {
            return;
          }

          v15 = v14;
          v8 = *(result + v14);
          if (v8 == 92)
          {
            return;
          }

          if ((v8 - 58) >= 0xFFFFFFF6)
          {
            v5 = 12;
            goto LABEL_3;
          }
        }

        else
        {
          if ((v8 - 58) < 0xFFFFFFF7)
          {
            goto LABEL_16;
          }

          v16 = a2 - result;
          if (!result)
          {
            v16 = 0;
          }

          v17 = v12 + 1;
          while (1)
          {
            v15 = v17 - 1;
            if ((v8 - 58) < 0xFFFFFFF6)
            {
              break;
            }

            if (v12 < 0 || v15 >= v16)
            {
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
              return;
            }

            *a3 = v17;
            if (a4 == v17)
            {
LABEL_61:
              v27 = result;
              v28 = a2;
              v29 = v4;
              v15 = a4;
              goto LABEL_63;
            }

            v8 = *(result + v17++);
            if (v8 == 92)
            {
              return;
            }
          }
        }

        if (v8 == 46)
        {
          v18 = sub_1AC458F9C(v15, result, a2);
          *a3 = v18;
          if (v18 == a4)
          {
            goto LABEL_2;
          }

          v8 = *(result + v18);
          if ((v8 - 58) < 0xFFFFFFF6)
          {
            v5 = 1;
            if (v8 != 92)
            {
              goto LABEL_3;
            }

            return;
          }

          v19 = a2 - result;
          if (!result)
          {
            v19 = 0;
          }

          v20 = v18 + 1;
          while (1)
          {
            v15 = v20 - 1;
            if ((v8 - 58) < 0xFFFFFFF6)
            {
              break;
            }

            if (v18 < 0 || v15 >= v19)
            {
              goto LABEL_66;
            }

            *a3 = v20;
            if (a4 == v20)
            {
              goto LABEL_61;
            }

            v8 = *(result + v20++);
            if (v8 == 92)
            {
              return;
            }
          }
        }

        if ((v8 | 0x20) != 0x65)
        {
LABEL_62:
          v27 = result;
          v28 = a2;
          v29 = v4;
LABEL_63:
          sub_1AC458188(v27, v28, v29, v15);
          if (v30)
          {
            v5 = 6;
            goto LABEL_3;
          }

          return;
        }

        v21 = sub_1AC458F9C(v15, result, a2);
        *a3 = v21;
        if (v21 == a4)
        {
          goto LABEL_2;
        }

        v22 = v21;
        v23 = *(result + v21);
        if (v23 != 43)
        {
          if (v23 == 92)
          {
            return;
          }

          if (v23 != 45)
          {
            goto LABEL_51;
          }
        }

        v24 = sub_1AC458F9C(v21, result, a2);
        *a3 = v24;
        if (v24 == a4)
        {
          goto LABEL_2;
        }

        v22 = v24;
        v23 = *(result + v24);
        if (v23 != 92)
        {
LABEL_51:
          if ((v23 - 58) >= 0xFFFFFFF6)
          {
            v25 = a2 - result;
            if (!result)
            {
              v25 = 0;
            }

            v26 = v22 + 1;
            while (1)
            {
              v15 = v26 - 1;
              if ((v23 - 58) < 0xFFFFFFF6)
              {
                goto LABEL_62;
              }

              if (v22 < 0 || v15 >= v25)
              {
                goto LABEL_67;
              }

              *a3 = v26;
              if (a4 == v26)
              {
                goto LABEL_61;
              }

              v23 = *(result + v26++);
              if (v23 == 92)
              {
                return;
              }
            }
          }

LABEL_16:
          v5 = 1;
          goto LABEL_3;
        }
      }
    }
  }
}

void sub_1AC458188(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < a3)
  {
    __break(1u);
  }

  else
  {
    if (result)
    {
      v4 = result + a4;
    }

    else
    {
      v4 = 0;
    }

    if (result)
    {
      v5 = result + a3;
    }

    else
    {
      v5 = 0;
    }

    sub_1AC45D17C(v5, v4);
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Message.jsonString(options:)(InternalSwiftProtobuf::JSONEncodingOptions options)
{
  OUTLINED_FUNCTION_60();
  v4 = v3;
  v5 = sub_1AC51EE28();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12_8();
  (*(v9 + 16))(v8 - v7, v1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FC0, &unk_1AC51FCE0);
  if (swift_dynamicCast())
  {
    sub_1AC458DF0(v15, v17);
    v10 = v18;
    v11 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    OUTLINED_FUNCTION_4_15();
    (*(v11 + 8))(v15, v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_1AC4575D8(v15, &qword_1EB557FC8, &unk_1AC528980);
    OUTLINED_FUNCTION_4_15();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0);
    Message.jsonUTF8Bytes<A>(options:)();
    if (!v2)
    {
      sub_1AC51EE18();
      sub_1AC45A8C0();
      v12 = sub_1AC51EE08();
      if (!v13)
      {
        __break(1u);
        goto LABEL_8;
      }
    }
  }

  OUTLINED_FUNCTION_61();
LABEL_8:
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

void sub_1AC4584B4(uint64_t a1)
{
  if (!*(v1 + 33))
  {
    v4 = sub_1AC453530(a1);
    if (!v2)
    {
      *a1 = v4;
      *(a1 + 4) = 0;
      OUTLINED_FUNCTION_26_1();
    }
  }
}

uint64_t sub_1AC4584F0()
{
  sub_1AC45AB1C();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void Message.init(jsonString:extensions:options:)()
{
  OUTLINED_FUNCTION_60();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1AC51EE28();
  OUTLINED_FUNCTION_5();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12_8();
  v12 = v11 - v10;
  v13 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v13 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    sub_1AC51EE18();
    v14 = sub_1AC51EDF8();
    v16 = v15;

    (*(v8 + 8))(v12, v6);
    if (v16 >> 60 != 15)
    {
      v19[5] = v14;
      v19[6] = v16;
      sub_1AC450324(v1, v19);
      sub_1AC4578F4(v14, v16);
      Message.init<A>(jsonUTF8Bytes:extensions:options:)();
      sub_1AC4575D8(v1, &qword_1EB557F98, &qword_1AC520460);
      sub_1AC45AC74(v14, v16);
      goto LABEL_9;
    }

    sub_1AC477660();
    swift_allocError();
    *v17 = xmmword_1AC51FB60;
    swift_willThrow();
  }

  else
  {

    sub_1AC477660();
    swift_allocError();
    *v18 = xmmword_1AC51FB60;
    swift_willThrow();
  }

  sub_1AC4575D8(v1, &qword_1EB557F98, &qword_1AC520460);
LABEL_9:
  OUTLINED_FUNCTION_61();
}

void sub_1AC4587B0(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a1 || (v10 = a2, v11 = a1, a2 - a1 < 1))
  {
    sub_1AC477660();
    swift_allocError();
    *v17 = xmmword_1AC51FB60;
    swift_willThrow();
    return;
  }

  v42 = a6;
  v43 = v9;
  v57 = a7;
  v14 = a9;
  sub_1AC450324(a5, &v50);
  sub_1AC450324(&v50, &v48);
  type metadata accessor for DoubleParser();
  v15 = swift_allocObject();
  *(v15 + 16) = swift_slowAlloc();
  *(v15 + 24) = 128;
  *&v47[0] = v11;
  *(&v47[0] + 1) = v10;
  *&v47[1] = 0;
  *(&v47[1] + 1) = v15;
  *(&v47[5] + 1) = a3;
  *&v47[2] = a3;
  BYTE8(v47[2]) = a4 & 1;
  if (v49)
  {
    sub_1AC4575D8(&v50, &qword_1EB557F98, &qword_1AC520460);
    sub_1AC458DF0(&v48, &v44);
    v16 = v57;
  }

  else
  {
    v46 = &protocol witness table for SimpleExtensionMap;
    v45 = &type metadata for SimpleExtensionMap;
    *&v44 = MEMORY[0x1E69E7CC8];
    sub_1AC4575D8(&v50, &qword_1EB557F98, &qword_1AC520460);
    v16 = v57;
    if (v49)
    {
      sub_1AC4575D8(&v48, &qword_1EB557F98, &qword_1AC520460);
    }
  }

  sub_1AC458DF0(&v44, &v47[3]);
  memcpy(v53, v47, 0x60uLL);
  v53[13] = a9;
  v53[14] = 0;
  v54 = 0;
  v55 = 0u;
  v56 = 0u;
  v53[12] = v16;
  v18 = v53[1] - v53[0];
  v19 = v53[2];
  if (v53[0])
  {
    v20 = v53[1] - v53[0];
  }

  else
  {
    v20 = 0;
  }

  v21 = v53[2];
  if (!v53[0])
  {
    goto LABEL_14;
  }

LABEL_12:
  if (v18 == v21)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v22 = *(v53[0] + v21);
    if (v22 > 0x20 || ((1 << v22) & 0x100002600) == 0)
    {
      break;
    }

    if (v19 < 0 || v21 >= v20)
    {
      __break(1u);
      goto LABEL_46;
    }

    v53[2] = ++v21;
    if (v53[0])
    {
      goto LABEL_12;
    }

LABEL_14:
    if (!v21)
    {
      goto LABEL_43;
    }
  }

  if (!v53[0] || v18 == v21 || v22 != 110)
  {
LABEL_43:
    sub_1AC45731C();
    if (v43)
    {
LABEL_44:
      sub_1AC45AA7C(v53);
      return;
    }

    goto LABEL_50;
  }

  if ((v21 & 0x8000000000000000) == 0 && v21 < v18)
  {
    v53[2] = v21 + 1;
    if (v18 - 1 == v21 || *(v53[0] + v21 + 1) != 117)
    {
      goto LABEL_42;
    }

    if (v21 + 1 >= v18)
    {
LABEL_72:
      __break(1u);
    }

    else
    {
      v53[2] = v21 + 2;
      if (v18 - 2 == v21 || *(v53[0] + v21 + 2) != 108)
      {
        goto LABEL_42;
      }

      if (v21 + 2 < v18)
      {
        v53[2] = v21 + 3;
        if (v18 - 3 == v21 || *(v53[0] + v21 + 3) != 108)
        {
          goto LABEL_42;
        }

        if (v21 + 3 < v18)
        {
          v53[2] = v21 + 4;
          if (v18 - 4 == v21 || (*(v53[0] + v21 + 4) & 0xDFu) - 91 < 0xFFFFFFE6)
          {
            v24 = dynamic_cast_existential_1_conditional(v16, v16, &protocol descriptor for _CustomJSONCodable);
            if (!v24)
            {
LABEL_48:
              sub_1AC477660();
              swift_allocError();
              v30 = xmmword_1AC528940;
LABEL_70:
              *v29 = v30;
              swift_willThrow();
              goto LABEL_44;
            }

            v14 = v24;
            a3 = v25;
            v26 = *(v25 + 24);
            v10 = sub_1AC51F228();
            v41 = *(v10 - 8);
            MEMORY[0x1EEE9AC00](v10);
            v11 = &v40 - v27;
            v28 = v43;
            v26(v14, a3);
            if (v28)
            {
              goto LABEL_44;
            }

LABEL_46:
            if (__swift_getEnumTagSinglePayload(v11, 1, v14) == 1)
            {
              (*(v41 + 8))(v11, v10);
              goto LABEL_48;
            }

            v51 = v14;
            v52 = a3;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v50);
            (*(*(v14 - 8) + 32))(boxed_opaque_existential_1, v11, v14);
            sub_1AC458DF0(&v50, v47);
            sub_1AC458DF0(v47, &v50);
            (*(*(v57 - 8) + 8))(v42, v57);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FC0, &unk_1AC51FCE0);
            swift_dynamicCast();
LABEL_50:
            v32 = v53[1] - v53[0];
            v33 = v53[2];
            if (v53[0])
            {
              v34 = v53[1] - v53[0];
            }

            else
            {
              v34 = 0;
            }

            v35 = v53[2];
            if (!v53[0])
            {
              goto LABEL_56;
            }

LABEL_54:
            if (v32 == v35)
            {
              goto LABEL_44;
            }

            while (1)
            {
              v36 = *(v53[0] + v35);
              v37 = v36 > 0x20;
              v38 = (1 << v36) & 0x100002600;
              if (v37 || v38 == 0)
              {
                break;
              }

              if (v33 < 0 || v35 >= v34)
              {
                __break(1u);
                goto LABEL_72;
              }

              v53[2] = ++v35;
              if (v53[0])
              {
                goto LABEL_54;
              }

LABEL_56:
              if (!v35)
              {
                goto LABEL_44;
              }
            }

            if (v53[0])
            {
              if (v32 == v35)
              {
                goto LABEL_44;
              }
            }

            else if (!v35)
            {
              goto LABEL_44;
            }

            sub_1AC477660();
            swift_allocError();
            v30 = xmmword_1AC529040;
            goto LABEL_70;
          }

LABEL_42:
          v53[2] = v21;
          goto LABEL_43;
        }

        goto LABEL_74;
      }
    }

    __break(1u);
LABEL_74:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1AC458DF0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1AC458E14(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AC458E74(unsigned __int8 a1)
{
  sub_1AC458F28();
  v3 = v1[2];
  v4 = *v1;
  if (*v1)
  {
    v5 = v1[1] - v4;
  }

  else
  {
    v5 = 0;
  }

  if (v3 == v5)
  {
    v6 = sub_1AC477660();
    OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v6);
    *v7 = xmmword_1AC51FB60;
  }

  else
  {
    if (*(v4 + v3) == a1)
    {
      result = sub_1AC458F9C(v3, v4, v1[1]);
      v1[2] = result;
      return result;
    }

    v9 = sub_1AC477660();
    v10 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v9);
    OUTLINED_FUNCTION_16_6(v10, v11);
  }

  return swift_willThrow();
}

void sub_1AC458F28()
{
  v1 = *v0;
  v2 = v0[1] - *v0;
  v3 = v0[2];
  if (*v0)
  {
    v4 = v0[1] - *v0;
  }

  else
  {
    v4 = 0;
  }

  v5 = v0[2];
  if (!v1)
  {
    goto LABEL_7;
  }

LABEL_5:
  if (v2 != v5)
  {
    do
    {
      v6 = *(v1 + v5);
      v7 = v6 > 0x20;
      v8 = (1 << v6) & 0x100002600;
      if (v7 || v8 == 0)
      {
        break;
      }

      if (v3 < 0 || v5 >= v4)
      {
        __break(1u);
        return;
      }

      v0[2] = ++v5;
      if (v1)
      {
        goto LABEL_5;
      }

LABEL_7:
      ;
    }

    while (v5);
  }
}

uint64_t sub_1AC458F9C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - a2;
  if (!a2)
  {
    v3 = 0;
  }

  if (result < 0 || v3 <= result)
  {
    __break(1u);
  }

  else
  {
    ++result;
  }

  return result;
}

void sub_1AC458FC0(uint64_t result)
{
  v2 = *(v1 + 88);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 88) = v4;
    if (v4 < 0)
    {
      v5 = sub_1AC477660();
      v6 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v5);
      OUTLINED_FUNCTION_36(xmmword_1AC528EA0, v6, v7);
    }
  }
}

uint64_t sub_1AC459020(unsigned __int8 a1)
{
  sub_1AC458F28();
  v3 = v1[2];
  v4 = *v1;
  if (*v1)
  {
    v5 = v1[1] - v4;
  }

  else
  {
    v5 = 0;
  }

  if (v3 == v5 || *(v4 + v3) != a1)
  {
    return 0;
  }

  v1[2] = sub_1AC458F9C(v3, v4, v1[1]);
  return 1;
}

uint64_t sub_1AC45908C()
{
  v3 = v1;
  if (sub_1AC459020(0x7Du))
  {
    sub_1AC45A9B0();
    return 0;
  }

  v4 = v0[14];
  if (v4 >= 1)
  {
    sub_1AC458E74(0x2Cu);
    if (v1)
    {
      return v2;
    }
  }

  result = v0[16];
  if (result)
  {
    v7 = v0[18];
    v6 = v0[19];
    v8 = v0[17];
    v14 = v0[16];
    v15 = v8;
    v16 = v7;
    v17 = v6;
    v9 = v0[12];
    v10 = v0[13];

    v11 = sub_1AC4591F8(&v14, v9, v10);
    if (v3)
    {
      v2 = v15;

      return v2;
    }

    v2 = v11;
    v13 = v12;

    if (v13)
    {
      return v2;
    }

    if (!__OFADD__(v4, 1))
    {
      v0[14] = v4 + 1;
      return v2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC4591D4()
{
  result = sub_1AC45908C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1AC4591F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v66 = a3;
  v6 = *(a1 + 24);
  while (1)
  {
    OUTLINED_FUNCTION_17_0();
    v7 = sub_1AC4595E0();
    if (v4)
    {
      return v3;
    }

    if (v9)
    {
      OUTLINED_FUNCTION_17_0();
      v10 = sub_1AC45993C();
      v12 = v11;
      v60 = v10;
      v61 = v11;
      v3 = v5;
      sub_1AC458F28();
      v13 = *v5;
      if (*v5)
      {
        v14 = *(v5 + 8) - v13;
      }

      else
      {
        v14 = 0;
      }

      v24 = *(v5 + 16);
      if (v24 == v14)
      {
        v53 = sub_1AC477660();
        OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v53);
        *v54 = xmmword_1AC51FB60;
LABEL_36:
        swift_willThrow();
        goto LABEL_37;
      }

      if (*(v13 + v24) != 58)
      {
        v55 = sub_1AC477660();
        v56 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v55);
        OUTLINED_FUNCTION_16_6(v56, v57);
        goto LABEL_36;
      }

      *(v5 + 16) = sub_1AC458F9C(v24, v13, *(v5 + 8));
      v25 = OUTLINED_FUNCTION_30();
      v27 = sub_1AC4F2B28(v25, v26);
      v28 = v27 + v27[2] + 32;
      v64[0] = (v27 + 4);
      v64[1] = v28;
      v64[2] = "";
      v64[3] = 0;
      v65 = 258;
      v3 = sub_1AC4CFB1C(v64, v6);
      v30 = v29;

      if ((v30 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v15 = v7;
      v16 = v8;
      v3 = v5;
      sub_1AC458F28();
      v17 = *v5;
      if (*v5)
      {
        v18 = *(v5 + 8) - v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = *(v5 + 16);
      if (v19 == v18)
      {
        v47 = sub_1AC477660();
        OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v47);
        v49 = xmmword_1AC51FB60;
        goto LABEL_39;
      }

      if (*(v17 + v19) != 58)
      {
        v50 = sub_1AC477660();
        v51 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v50);
        OUTLINED_FUNCTION_16_6(v51, v52);
LABEL_40:
        swift_willThrow();
        return v3;
      }

      result = sub_1AC458F9C(v19, v17, *(v5 + 8));
      *(v5 + 16) = result;
      v62[0] = v15;
      v62[1] = v16;
      v62[2] = "";
      v62[3] = 0;
      v63 = 258;
      if (*(v6 + 16))
      {
        v3 = v6;
        result = sub_1AC4599C0(v62);
        if (v21)
        {
          return *(*(v6 + 56) + 8 * result);
        }
      }

      if (!v15)
      {
        goto LABEL_46;
      }

      v22 = sub_1AC456544(v15, v16 - v15);
      if (!v23)
      {
        v58 = sub_1AC477660();
        OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v58);
        v49 = xmmword_1AC51FB70;
LABEL_39:
        *v48 = v49;
        goto LABEL_40;
      }

      v10 = v22;
      v12 = v23;
      v60 = v22;
      v61 = v23;
    }

    v31 = OUTLINED_FUNCTION_30();
    if ((sub_1AC4E6114(v31, v32) & 0x1FF) == 0x5B)
    {
      v33 = OUTLINED_FUNCTION_30();
      result = sub_1AC4D41A8(v33, v34);
      if ((result & 0x1FF) == 0x5D)
      {
        break;
      }
    }

LABEL_27:
    if ((*(v5 + 40) & 1) == 0)
    {
      v45 = sub_1AC477660();
      OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v45);
      *v46 = v10;
      v46[1] = v12;
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_17_0();
    sub_1AC4E61EC();
    v3 = v5;
    if (sub_1AC459020(0x7Du))
    {
      sub_1AC45A9B0();

      return 0;
    }

    OUTLINED_FUNCTION_17_0();
    sub_1AC458E74(v44);
  }

  v35 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v35 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {
    v36 = OUTLINED_FUNCTION_30();
    result = sub_1AC4E61A4(v36, v37);
    if (!v38)
    {
      goto LABEL_47;
    }

    v39 = sub_1AC4E6ACC(1);
    sub_1AC4E597C(v39);

    v40 = *(v5 + 72);
    v41 = *(v5 + 80);
    v3 = __swift_project_boxed_opaque_existential_1((v5 + 48), v40);
    v10 = v60;
    v12 = v61;
    v42 = (*(v41 + 16))(a2, v66, v60, v61, v40, v41);
    if ((v43 & 1) == 0)
    {
      v3 = v42;
LABEL_37:

      return v3;
    }

    goto LABEL_27;
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1AC4595E0()
{
  sub_1AC458F28();
  v2 = v0[2];
  v3 = *v0;
  if (*v0)
  {
    v4 = v0[1] - v3;
  }

  else
  {
    v4 = 0;
  }

  if (v2 == v4)
  {
    goto LABEL_5;
  }

  if (*(v3 + v2) != 34)
  {
    return 0;
  }

  v6 = v0[1];
  result = sub_1AC458F9C(v0[2], *v0, v6);
  v0[2] = result;
  if (v3)
  {
    v8 = v6 - v3;
  }

  else
  {
    v8 = 0;
  }

  v9 = result;
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (v6 - v3 == v9)
  {
    v9 = v6 - v3;
  }

  else
  {
    do
    {
      v10 = *(v3 + v9);
      if (v10 == 34)
      {
        break;
      }

      if (v10 == 92)
      {
        v1 = 0;
        goto LABEL_28;
      }

      if (result < 0 || v9 >= v8)
      {
        __break(1u);
        goto LABEL_31;
      }

      ++v9;
      if (v3)
      {
        goto LABEL_11;
      }

LABEL_13:
      ;
    }

    while (v9);
  }

  v0[2] = v9;
  v11 = *v0;
  if (*v0)
  {
    v11 = v0[1] - v11;
  }

  if (v9 == v11)
  {
LABEL_5:
    sub_1AC477660();
    swift_allocError();
    *v5 = xmmword_1AC51FB60;
    swift_willThrow();
    return v1;
  }

  if (v3)
  {
    if (!__OFSUB__(v9, result))
    {
      v1 = v3 + result;
      v2 = sub_1AC458F9C(v9, v3, v6);
LABEL_28:
      v0[2] = v2;
      return v1;
    }

LABEL_31:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC45976C()
{
  if (OUTLINED_FUNCTION_34_3())
  {
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  else
  {
    result = sub_1AC45993C();
    if (v0)
    {
      return result;
    }

    v2 = result;
    v3 = v5;
  }

  *v1 = v2;
  v1[1] = v3;
  return result;
}

void *OUTLINED_FUNCTION_15_2(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(__srca, a9);
  __src = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);

  return memcpy(v9, __srca, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_15_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = sub_1AC465B44(v10, (v11 + 1));
  *v11 = a10;
  return result;
}

void OUTLINED_FUNCTION_15_14(uint64_t a1, unint64_t a2)
{

  sub_1AC5035B4(a1, a2, sub_1AC500DF8);
}

uint64_t OUTLINED_FUNCTION_15_16(uint64_t result)
{
  *(v2 - 72) = result;
  *(v2 - 96) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_17()
{

  return sub_1AC4578F4(v0, v1);
}

uint64_t sub_1AC45993C()
{
  OUTLINED_FUNCTION_8_15();
  if (v1)
  {
    OUTLINED_FUNCTION_15_9();
  }

  else
  {
    v2 = 0;
  }

  if (v0 == v2 || *(v1 + v0) != 34 || (result = sub_1AC459B18(), !v4))
  {
    v5 = sub_1AC477660();
    v6 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v5);
    return OUTLINED_FUNCTION_17_10(v6, v7, v8, v9);
  }

  return result;
}

unint64_t sub_1AC4599C0(unsigned __int8 **a1)
{
  sub_1AC51F468();
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    while (v2 != v3)
    {
      ++v2;
      sub_1AC51F488();
    }
  }

  v4 = sub_1AC51F4C8();

  return sub_1AC459A4C(a1, v4);
}

unint64_t sub_1AC459A4C(unsigned __int8 **a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v8 = *a1;
    v7 = a1[1];
    do
    {
      v9 = (*(v2 + 48) + 40 * result);
      v10 = *v9;
      v11 = v9[1];
      v12 = (v11 - v10);
      if (!v10)
      {
        v12 = 0;
      }

      if (v8)
      {
        if (v12 != (v7 - v8))
        {
          goto LABEL_22;
        }
      }

      else if (v12)
      {
        goto LABEL_22;
      }

      v13 = v8;
      while (1)
      {
        v14 = !v13 || v13 == v7;
        v15 = v14;
        if (!v10 || v10 == v11)
        {
          break;
        }

        if (!v15)
        {
          v17 = *v10++;
          v16 = v17;
          v18 = *v13++;
          if (v16 == v18)
          {
            continue;
          }
        }

        goto LABEL_22;
      }

      if (v15)
      {
        return result;
      }

LABEL_22:
      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1AC459B18()
{
  v1 = *v0;
  v2 = v0[1];
  result = sub_1AC458F9C(v0[2], *v0, v2);
  v4 = 0;
  v0[2] = result;
  v5 = v2 - v1;
  if (v1)
  {
    v6 = v2 - v1;
  }

  else
  {
    v6 = 0;
  }

  v7 = result;
  while (1)
  {
    if (v1)
    {
      if (v7 == v5)
      {
        goto LABEL_27;
      }
    }

    else if (!v7)
    {
      v5 = 0;
LABEL_27:
      v11 = 0;
      v0[2] = v5;
      return v11;
    }

    v8 = *(v1 + v7);
    if (v8 == 92)
    {
      break;
    }

    if (v8 == 34)
    {
      goto LABEL_22;
    }

    if (!v1)
    {
      v9 = 0;
      goto LABEL_19;
    }

LABEL_18:
    v9 = v2 - v1;
LABEL_19:
    if ((v7 & 0x8000000000000000) == 0 && v7++ < v9)
    {
      continue;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    v0[2] = v7;
    if (!v1)
    {
      goto LABEL_31;
    }

    if (__OFSUB__(v7, result))
    {
      goto LABEL_30;
    }

    v11 = sub_1AC456544(v1 + result, v7 - result);
    v13 = v12;
    v0[2] = sub_1AC458F9C(v7, v1, v2);
    if (((v13 != 0) & v4) == 1)
    {
      v11 = sub_1AC462044(v11, v13);
    }

    return v11;
  }

  if ((v7 & 0x8000000000000000) == 0 && v7 < v6)
  {
    if (!v1)
    {
      goto LABEL_21;
    }

    if (++v7 == v5)
    {
      goto LABEL_27;
    }

    v4 = 1;
    goto LABEL_18;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1AC459C7C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 58);
  v5 = *(v1 + 24);
  v6 = *(v5 + 16);
  if (v4 == 1)
  {
    if (v6)
    {
      v7 = sub_1AC45AA38(a1);
      if (v8)
      {
        v9 = *(v5 + 56) + 80 * v7;
        v10 = *(v9 + 40);
        v11 = *(v9 + 48);
        v13 = *(v9 + 56);
        v12 = *(v9 + 64);
        LOBYTE(v14) = *(v9 + 72);
        LOBYTE(v15) = *(v9 + 73);
LABEL_17:
        v38 = OUTLINED_FUNCTION_44_4();
        sub_1AC45AC88(v38, v39, v40, v41);
        v50[0] = v10;
        v50[1] = v11;
        v50[2] = v13;
        v50[3] = v12;
        v51 = v14;
        v52 = v15;
        sub_1AC45AC08(v50);
        v42 = OUTLINED_FUNCTION_44_4();
        return sub_1AC45AE94(v42, v43, v44, v45);
      }
    }
  }

  else if (v6)
  {
    v16 = sub_1AC45AA38(a1);
    if (v17)
    {
      v18 = *(v5 + 56) + 80 * v16;
      v14 = *(v18 + 32);
      if (v14 >> 8 <= 0xFE)
      {
        v13 = *(v18 + 16);
        v12 = *(v18 + 24);
        v15 = (v14 >> 8) & 1;
        v10 = *v18;
        v11 = *(v18 + 8);
        goto LABEL_17;
      }
    }
  }

  v19 = *(v2 + 48);
  if (v19)
  {
    if (*(v19 + 16) && (v20 = sub_1AC45AA38(a1), (v21 & 1) != 0))
    {
      sub_1AC45A5F0(*(v19 + 56) + 40 * v20, &v47);
      if (*(&v48 + 1))
      {
        v22 = *(&v48 + 1);
        v23 = __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
        v24 = *(v22 - 8);
        MEMORY[0x1EEE9AC00](v23);
        OUTLINED_FUNCTION_12_8();
        v27 = v26 - v25;
        (*(v24 + 16))(v26 - v25);
        sub_1AC45A718(&v47, &qword_1EB558200, &unk_1AC520780);
        v28 = OUTLINED_FUNCTION_19();
        v29(v28);
        (*(v24 + 8))(v27, v22);
        __swift_project_boxed_opaque_existential_1(v46, v46[3]);
        v30 = OUTLINED_FUNCTION_19();
        v32 = v31(v30);
        v34 = v33;
        __swift_destroy_boxed_opaque_existential_1(v46);
        sub_1AC4E3028(v32, v34);
      }
    }

    else
    {
      v49 = 0;
      v47 = 0u;
      v48 = 0u;
    }

    sub_1AC45A718(&v47, &qword_1EB558200, &unk_1AC520780);
  }

  sub_1AC4777D8();
  v36 = swift_allocError();
  return OUTLINED_FUNCTION_21_6(v36, v37);
}

uint64_t sub_1AC459F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  result = sub_1AC459C7C(a3);
  if (!v4)
  {
    return a4(a1, a2);
  }

  return result;
}

uint64_t sub_1AC459FB0(uint64_t result)
{
  v2 = v1[2];
  v3 = *(result + 16);
  v4 = *v1;
  v5 = v2;
  if (v3)
  {
    v6 = v1[1];
    v7 = v6 - v4;
    if (!v4)
    {
      v7 = 0;
    }

    v8 = -v3;
    v9 = v2 + v4 - v6;
    v10 = 32;
    while (1)
    {
      v11 = v2 + v10 == 32;
      if (v4)
      {
        v11 = v9 + v10 == 32;
      }

      if (v11 || *(v2 + v4 + v10 - 32) != *(result + v10))
      {
        goto LABEL_19;
      }

      if (v2 < 0 || v2 + v10 - 32 >= v7)
      {
        __break(1u);
        return result;
      }

      v1[2] = v2 + v10++ - 31;
      if (v8 + v10 == 32)
      {
        v5 = v2 + v10 - 32;
        break;
      }
    }
  }

  if (v4)
  {
    if (v5 == v1[1] - v4)
    {
      return 1;
    }
  }

  else if (!v5)
  {
    return 1;
  }

  if ((*(v4 + v5) & 0xDFu) - 91 < 0xFFFFFFE6)
  {
    return 1;
  }

LABEL_19:
  result = 0;
  v1[2] = v2;
  return result;
}

void Message.jsonUTF8Bytes<A>(options:)()
{
  OUTLINED_FUNCTION_60();
  v31 = v2;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12_8();
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  (*(v15 + 16))(v9 - v8, v0, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FC0, &unk_1AC51FCE0);
  if (swift_dynamicCast())
  {
    sub_1AC458DF0(&v33, &v36);
    v16 = *(&v37 + 1);
    v17 = *v38;
    __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
    LOBYTE(v33) = v11;
    BYTE1(v33) = v12;
    BYTE2(v33) = v13;
    BYTE3(v33) = v14;
    v18 = (*(v17 + 8))(&v33, v16, v17);
    if (!v1)
    {
      *&v33 = v18;
      *(&v33 + 1) = v19;
      v20 = *(v31 + 16);
      v21 = sub_1AC4EEA20();
      v20(&v33, MEMORY[0x1E69E6108], v21);
    }

    __swift_destroy_boxed_opaque_existential_1(&v36);
  }

  else
  {
    *v35 = 0;
    v33 = 0u;
    v34 = 0u;
    sub_1AC4575D8(&v33, &qword_1EB557FC8, &unk_1AC528980);
    if (dynamic_cast_existential_1_conditional(v6, v6, &protocol descriptor for _ProtoNameProviding))
    {
      (*(v22 + 8))(&v33);
      *&v36 = MEMORY[0x1E69E7CC0];
      WORD4(v36) = 256;
      v37 = v33;
      *v38 = v34;
      *&v38[16] = 0;
      v38[24] = v11;
      v38[25] = v12;
      v38[26] = v13;
      v38[27] = v14;
      sub_1AC45A44C(v0, &v36, v6, v4);
      (*(v4 + 72))(&v36, &type metadata for JSONEncodingVisitor, &off_1F211B6D0, v6, v4);
      if (!v1)
      {
        v23 = v36;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1AC45A78C();
          v23 = v29;
        }

        v24 = *(v23 + 16);
        if (v24 >= *(v23 + 24) >> 1)
        {
          sub_1AC45A78C();
          v23 = v30;
        }

        *(v23 + 16) = v24 + 1;
        *(v23 + v24 + 32) = 125;
        *&v36 = v23;
        WORD4(v36) = 44;
        v32 = v23;
        v25 = *(v31 + 16);

        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0);
        v27 = sub_1AC45A8C0();
        v25(&v32, v26, v27);
      }

      v33 = v36;
      v34 = v37;
      *v35 = *v38;
      *&v35[12] = *&v38[12];
      sub_1AC45A95C(&v33);
    }

    else
    {
      sub_1AC4777D8();
      swift_allocError();
      *v28 = 4;
      swift_willThrow();
    }
  }

  OUTLINED_FUNCTION_61();
}

uint64_t sub_1AC45A44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_36_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7_1();
  (*(v5 + 16))();
  sub_1AC45A5F0(v19, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559798, &qword_1AC528E10);
  if (OUTLINED_FUNCTION_33_4(v6, v7))
  {
    __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
    v8 = OUTLINED_FUNCTION_24_6();
    v9(v8);
    v10 = v14;
    __swift_destroy_boxed_opaque_existential_1(&v16);
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    sub_1AC45A718(&v16, &qword_1EB5597A0, &qword_1AC528E18);
    v10 = 0;
  }

  v4[6] = v10;
  sub_1AC45A774();
  v11 = *(*v4 + 16);
  sub_1AC45A85C(v11);
  v12 = *v4;
  *(v12 + 16) = v11 + 1;
  *(v12 + v11 + 32) = 123;
  *v4 = v12;
  *(v4 + 4) = 256;
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1AC45A5F0(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_7_1();
  (*v3)(a2);
  return a2;
}

void OUTLINED_FUNCTION_33_1(_BYTE *a1@<X8>)
{
  if (v1)
  {
    v2 = 0;
  }

  *a1 = v2;
}

uint64_t OUTLINED_FUNCTION_33_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_33_4(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_33_5()
{

  return sub_1AC51ED58();
}

void OUTLINED_FUNCTION_33_6()
{
  v4 = *v3;
  *(v4 + 16) = v2 + 1;
  v5 = v4 + 16 * v2;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *v3 = v4;
}

uint64_t sub_1AC45A718(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_7_1();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1AC45A78C()
{
  OUTLINED_FUNCTION_8_3();
  if (v4)
  {
    OUTLINED_FUNCTION_2_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_5();
    }
  }

  OUTLINED_FUNCTION_4_4();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5582A0, &qword_1AC520A58);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * v8 - 64;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_10_5();
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_1AC45A8C0()
{
  result = qword_1ED6E4338;
  if (!qword_1ED6E4338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB557FA8, &unk_1AC51FCD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6E4338);
  }

  return result;
}

uint64_t sub_1AC45A924@<X0>(uint64_t *a4@<X8>)
{
  result = sub_1AC51F138();
  *a4 = result;
  return result;
}

uint64_t sub_1AC45A9B0()
{
  v1 = *(v0 + 88);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
    goto LABEL_5;
  }

  *(v0 + 88) = v3;
  if (*(v0 + 32) < v3)
  {
LABEL_5:
    result = sub_1AC51F388();
    __break(1u);
  }

  return result;
}

unint64_t sub_1AC45AA38(uint64_t a1)
{
  v2 = sub_1AC51F458();

  return sub_1AC45AB48(a1, v2);
}

void OUTLINED_FUNCTION_44_5()
{

  sub_1AC50AB78(0x3Au);
}

uint64_t sub_1AC45AB1C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    MEMORY[0x1AC5B4D30](v1, -1, -1);
  }

  return v0;
}

unint64_t sub_1AC45AB48(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

void sub_1AC45ABA8(unsigned __int8 **a1)
{
  sub_1AC45A774();
  OUTLINED_FUNCTION_12_11();
  OUTLINED_FUNCTION_3_19();
  sub_1AC45AC98(*a1, a1[1]);
  sub_1AC45A774();
  OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_0_22();
}

uint64_t get_enum_tag_for_layout_string_21InternalSwiftProtobuf8_NameMapVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1AC45AC08(unsigned __int8 **a1)
{
  if ((*(v1 + 9) & 1) == 0)
  {
    v3 = *(v1 + 8);
    sub_1AC45A774();
    OUTLINED_FUNCTION_12_11();
    OUTLINED_FUNCTION_4_12();
    *(v4 + 32) = v3;
    *v1 = v5;
  }

  sub_1AC45ABA8(a1);
  sub_1AC45A774();
  OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_13_8(v6);
  *(v1 + 8) = 44;
}

void sub_1AC45AC74(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_1AC4513F8(a1, a2);
  }
}

uint64_t sub_1AC45AC88(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

void sub_1AC45AC98(unsigned __int8 *a1, uint64_t a2)
{
  v5 = a1;
  v6 = a2 - a1;
  if (a1)
  {
    v7 = a2 - a1;
  }

  else
  {
    v7 = 0;
  }

  OUTLINED_FUNCTION_11_1();
  if (__OFADD__(v9, v7))
  {
    __break(1u);
    goto LABEL_31;
  }

  v3 = v8;
  sub_1AC45AE04(v9 + v7, 1);
  v4 = *v2;
  v10 = *(*v2 + 16);
  v11 = *(*v2 + 24) >> 1;
  v12 = v11 - v10;
  if (!v5 || !v3 || (v3 > v5 ? (v13 = v11 == v10) : (v13 = 1), v13))
  {
    v6 = 0;
    goto LABEL_13;
  }

  if (v6 >= v12)
  {
    v6 = v11 - v10;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    memmove((v4 + v10 + 32), v5, v6);
    v5 += v6;
LABEL_13:
    if (v6 >= v7)
    {
      if (!v6)
      {
        goto LABEL_17;
      }

      v14 = *(v4 + 16);
      v15 = __OFADD__(v14, v6);
      v16 = v14 + v6;
      if (!v15)
      {
        *(v4 + 16) = v16;
LABEL_17:
        if (v6 != v12 || v5 == 0 || v5 == v3)
        {
LABEL_25:
          *v2 = v4;
          return;
        }

LABEL_33:
        v19 = *(v4 + 16);
        v22 = *v5;
        v21 = v5 + 1;
        v20 = v22;
LABEL_34:
        v23 = *(v4 + 24) >> 1;
        if (v23 < v19 + 1)
        {
          v25 = v20;
          sub_1AC45A78C();
          v20 = v25;
          v4 = v26;
          v23 = *(v26 + 24) >> 1;
        }

        while (1)
        {
          if (v19 >= v23)
          {
            *(v4 + 16) = v19;
            goto LABEL_34;
          }

          *(v4 + v19 + 32) = v20;
          if (v21 == v3)
          {
            break;
          }

          v24 = *v21++;
          v20 = v24;
          ++v19;
        }

        *(v4 + 16) = v19 + 1;
        goto LABEL_25;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  __break(1u);
}

uint64_t sub_1AC45AE1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

uint64_t sub_1AC45AE94(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

void sub_1AC45AEA4(uint64_t a1, unint64_t a2)
{
  sub_1AC45A774();
  v6 = OUTLINED_FUNCTION_5_14();
  sub_1AC45A85C(v6);
  OUTLINED_FUNCTION_1();
  *(v7 + 32) = 34;
  *v2 = v8;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {

    v10 = 0;
    v48 = a1;
    v49 = v2;
    v50 = v9;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v12 = sub_1AC51F2C8();
        v16 = v15;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v52[0] = a1;
          v52[1] = a2 & 0xFFFFFFFFFFFFFFLL;
          v12 = *(v52 + v10);
          if (*(v52 + v10) < 0)
          {
            OUTLINED_FUNCTION_19_6();
            switch(v25)
            {
              case 1:
LABEL_44:
                v12 = v13[1] & 0x3F | ((v12 & 0x1F) << 6);
                v16 = 2;
                break;
              case 2:
LABEL_56:
                v12 = ((v12 & 0xF) << 12) | ((v13[1] & 0x3F) << 6) | v13[2] & 0x3F;
                v16 = 3;
                break;
              case 3:
LABEL_57:
                v12 = ((v12 & 0xF) << 18) | ((v13[1] & 0x3F) << 12) | ((v13[2] & 0x3F) << 6) | v13[3] & 0x3F;
                v16 = 4;
                break;
              default:
                goto LABEL_14;
            }

            goto LABEL_15;
          }
        }

        else
        {
          v11 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v11 = sub_1AC51F308();
          }

          v12 = *(v11 + v10);
          if (*(v11 + v10) < 0)
          {
            OUTLINED_FUNCTION_19_6();
            switch(v14)
            {
              case 1:
                goto LABEL_44;
              case 2:
                goto LABEL_56;
              case 3:
                goto LABEL_57;
              default:
                break;
            }
          }
        }

LABEL_14:
        v16 = 1;
      }

LABEL_15:
      switch(v12)
      {
        case 8u:
          v17 = "\\b";
          goto LABEL_40;
        case 9u:
          v17 = "\\t";
          goto LABEL_40;
        case 0xAu:
          v17 = "\\n";
          goto LABEL_40;
        case 0xBu:
          goto LABEL_20;
        case 0xCu:
          v17 = "\\f";
          goto LABEL_40;
        case 0xDu:
          v17 = "\\r";
          goto LABEL_40;
        default:
          if (v12 == 34)
          {
            v17 = "\";
            goto LABEL_40;
          }

          if (v12 == 92)
          {
            v17 = "\\\"";
LABEL_40:
            sub_1AC45FD18(v17);
            goto LABEL_41;
          }

LABEL_20:
          if (v12 < 0x20 || v12 - 160 >= 0xFFFFFFDF)
          {
            sub_1AC45FD18("\\u00");
            if (qword_1EB557C18 != -1)
            {
              swift_once();
            }

            v26 = off_1EB557C20;
            if (*(off_1EB557C20 + 2) <= v12 >> 4)
            {
              __break(1u);
LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
              JUMPOUT(0x1AC45B4C8);
            }

            v51 = *(off_1EB557C20 + (v12 >> 4) + 32);
            if ((OUTLINED_FUNCTION_22_8() & 1) == 0)
            {
              OUTLINED_FUNCTION_6_0();
              sub_1AC45A78C();
              v3 = v37;
            }

            v27 = *(v3 + 16);
            v28 = v27 + 1;
            if (v27 >= *(v3 + 24) >> 1)
            {
              OUTLINED_FUNCTION_8_13();
              v3 = v38;
            }

            *(v3 + 16) = v28;
            *(v3 + v27 + 32) = v51;
            if (v26[2] <= (v12 & 0xF))
            {
              goto LABEL_84;
            }

            v18 = *(v26 + (v12 & 0xF) + 32);
            v29 = v27 + 2;
            if ((v27 + 2) > *(v3 + 24) >> 1)
            {
              OUTLINED_FUNCTION_10_10();
              v3 = v39;
            }

            a1 = v48;
            v2 = v49;
            v9 = v50;
            *(v3 + 16) = v29;
            v30 = v3 + v28;
            goto LABEL_80;
          }

          if (v12 <= 0x7E)
          {
            if ((OUTLINED_FUNCTION_22_8() & 1) == 0)
            {
              OUTLINED_FUNCTION_6_0();
              sub_1AC45A78C();
              v3 = v40;
            }

            v31 = *(v3 + 16);
            if (v31 >= *(v3 + 24) >> 1)
            {
              OUTLINED_FUNCTION_8_13();
              v3 = v41;
            }

            *(v3 + 16) = v31 + 1;
            *(v3 + v31 + 32) = v12;
          }

          else
          {
            v18 = v12 & 0x3F | 0x80;
            if (v12 > 0x7FF)
            {
              v47 = (v12 >> 6) & 0x3F | 0xFFFFFF80;
              if (v12 - 0x10000 >= 0xFFFF0800)
              {
                if ((OUTLINED_FUNCTION_22_8() & 1) == 0)
                {
                  OUTLINED_FUNCTION_6_0();
                  sub_1AC45A78C();
                  v3 = v45;
                }

                v35 = *(v3 + 16);
                v20 = *(v3 + 24) >> 1;
                v36 = v35 + 1;
                if (v20 <= v35)
                {
                  OUTLINED_FUNCTION_8_13();
                  OUTLINED_FUNCTION_9_12();
                }

                *(v3 + 16) = v36;
                *(v3 + v35 + 32) = (v12 >> 12) | 0xE0;
                v23 = v35 + 2;
                if (v20 < (v35 + 2))
                {
                  OUTLINED_FUNCTION_10_10();
                  OUTLINED_FUNCTION_9_12();
                }

                *(v3 + 16) = v23;
                *(v3 + v36 + 32) = v47;
                v24 = v35 + 3;
              }

              else
              {
                if ((((v12 >> 18) + 240) & 0x100) != 0)
                {
                  goto LABEL_85;
                }

                if ((OUTLINED_FUNCTION_22_8() & 1) == 0)
                {
                  OUTLINED_FUNCTION_6_0();
                  sub_1AC45A78C();
                  v3 = v46;
                }

                v19 = *(v3 + 16);
                v20 = *(v3 + 24) >> 1;
                v21 = v19 + 1;
                if (v20 <= v19)
                {
                  sub_1AC45A78C();
                  OUTLINED_FUNCTION_9_12();
                }

                *(v3 + 16) = v21;
                *(v3 + v19 + 32) = (v12 >> 18) - 16;
                v22 = v19 + 2;
                if (v20 < (v19 + 2))
                {
                  sub_1AC45A78C();
                  OUTLINED_FUNCTION_9_12();
                }

                *(v3 + 16) = v22;
                *(v3 + v21 + 32) = (v12 >> 12) & 0x3F | 0x80;
                v23 = v19 + 3;
                if (v20 < (v19 + 3))
                {
                  OUTLINED_FUNCTION_10_10();
                  OUTLINED_FUNCTION_9_12();
                }

                *(v3 + 16) = v23;
                *(v3 + v22 + 32) = v47;
                v24 = v19 + 4;
              }

              if (v20 < v24)
              {
                OUTLINED_FUNCTION_8_13();
                v3 = v44;
              }

              v9 = v50;
              *(v3 + 16) = v24;
              v30 = v3 + v23;
LABEL_80:
              *(v30 + 32) = v18;
              goto LABEL_81;
            }

            if ((OUTLINED_FUNCTION_22_8() & 1) == 0)
            {
              OUTLINED_FUNCTION_6_0();
              sub_1AC45A78C();
              v3 = v42;
            }

            v32 = *(v3 + 16);
            v33 = *(v3 + 24) >> 1;
            v34 = v32 + 1;
            if (v33 <= v32)
            {
              OUTLINED_FUNCTION_8_13();
              OUTLINED_FUNCTION_9_12();
            }

            *(v3 + 16) = v34;
            *(v3 + v32 + 32) = (v12 >> 6) | 0xC0;
            if (v33 < (v32 + 2))
            {
              OUTLINED_FUNCTION_10_10();
              v3 = v43;
            }

            *(v3 + 16) = v32 + 2;
            *(v3 + v34 + 32) = v12 & 0x3F | 0x80;
          }

LABEL_81:
          *v2 = v3;
LABEL_41:
          v10 += v16;
          if (v10 >= v9)
          {

            goto LABEL_82;
          }

          break;
      }
    }
  }

LABEL_82:
  sub_1AC45A774();
  OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_0_22();
}

uint64_t OUTLINED_FUNCTION_22_4()
{
  v2 = *(v0 - 144);

  return sub_1AC460BE4(v2);
}

uint64_t OUTLINED_FUNCTION_22_8()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void *OUTLINED_FUNCTION_22_9(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);

  return memcpy(va, v23, 0x78uLL);
}

void OUTLINED_FUNCTION_22_11()
{
  sub_1AC4854E8(v1, v2, v3, v4);
  *v5 = v6;
  *(v5 + 8) = v0;
  *(v5 + 16) = 0x2000000000000000;
  *(v5 + 24) = 0;
}

void *OUTLINED_FUNCTION_22_12(void *a1)
{

  return memcpy(a1, v1, 0x41uLL);
}

uint64_t OUTLINED_FUNCTION_22_15(uint64_t a1, uint64_t a2, ...)
{

  return sub_1AC51EE48();
}

void sub_1AC45B658(uint64_t *a1)
{
  if (*(v1 + 33) == 1)
  {
    v4 = sub_1AC456830(a1);
    if (!v2)
    {
      *a1 = v4;
      OUTLINED_FUNCTION_26_1();
    }
  }
}

void sub_1AC45B6D4(BOOL *a1)
{
  if (!*(v1 + 33))
  {
    v4 = sub_1AC453530(a1);
    if (!v2)
    {
      *a1 = v4 != 0;
      OUTLINED_FUNCTION_26_1();
    }
  }
}

void sub_1AC45B744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60();
  v23 = v20;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = sub_1AC51F228();
  OUTLINED_FUNCTION_3_0();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_39_2();
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = v58 - v36;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_26_2();
  v60 = v38;
  if (sub_1AC457638())
  {
    v59 = v29;
    if (dynamic_cast_existential_1_conditional(v27, v27, &protocol descriptor for _CustomJSONCodable))
    {
      v39 = dynamic_cast_existential_1_unconditional(v27, v27, &protocol descriptor for _CustomJSONCodable);
      v41 = v40;
      v42 = OUTLINED_FUNCTION_54_2();
      v58[1] = v58;
      OUTLINED_FUNCTION_3_0();
      v58[0] = v43;
      OUTLINED_FUNCTION_65();
      MEMORY[0x1EEE9AC00](v44);
      OUTLINED_FUNCTION_48_4();
      (v25)(v39, v41);
      if (v21)
      {
        OUTLINED_FUNCTION_40_3();
      }

      else
      {
        v55 = v58[0];
        OUTLINED_FUNCTION_19_5(v22);
        if (v51)
        {
          (*(v55 + 8))(v22, v42);
          OUTLINED_FUNCTION_40_3();
          v63 = 0;
          v61 = 0u;
          v62 = 0u;
        }

        else
        {
          *(&v62 + 1) = v39;
          v63 = v41;
          __swift_allocate_boxed_opaque_existential_1(&v61);
          OUTLINED_FUNCTION_13_7();
          (*(v56 + 32))();
          OUTLINED_FUNCTION_40_3();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FC8, &unk_1AC528980);
        OUTLINED_FUNCTION_45_2();
        v57 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v39, v57 ^ 1u, 1, v27);
        (*(v32 + 40))(v59, v39, v30);
      }
    }

    else
    {
      (*(v32 + 8))(v59, v30);
      v52 = OUTLINED_FUNCTION_7_11();
      __swift_storeEnumTagSinglePayload(v52, v53, v54, v27);
    }

LABEL_16:
    OUTLINED_FUNCTION_61();
    return;
  }

  v45 = OUTLINED_FUNCTION_51();
  v46(v45);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, 1, v27);
  (*(v32 + 8))(v37, v30);
  if (EnumTagSinglePayload == 1)
  {
    (*(v25 + 16))(v27, v25);
    OUTLINED_FUNCTION_43_4();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v27);
    (*(v32 + 40))(v29, v22, v30);
  }

  sub_1AC45BD44(v23, &v61);
  v65 = v25;
  v66 = 0;
  v67 = 0;
  v68 = 0u;
  v69 = 0u;
  v64 = v27;
  OUTLINED_FUNCTION_42_0(v29, 1, v27);
  if (!v51)
  {
    sub_1AC45731C();
    if (!v21)
    {
      sub_1AC45C408(&v61, v23);
    }

    sub_1AC45AA7C(&v61);
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t dispatch thunk of Decoder.decodeSingularBoolField(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 312))(a1, a2);
}

{
  return (*(a3 + 320))(a1, a2);
}

uint64_t OUTLINED_FUNCTION_39(char a1, char a2, size_t a3, char a4, char a5, char a6, char a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char __s2, char a26, char a27, char a28, char a29, char a30, char a31, char a32, char a33, char a34, char a35, char a36, char a37, char a38)
{
  __s2 = a23;
  a26 = a7;
  a27 = a6;
  a28 = a5;
  a29 = v38;
  a30 = a4;
  a31 = a2;
  a32 = a1;
  a33 = v44;
  a34 = v43;
  a35 = v42;
  a36 = v41;
  a37 = v40;
  a38 = v39;

  return memcmp((v45 - 128), &__s2, a3);
}

double OUTLINED_FUNCTION_39_0()
{
  *(v0 + 264) = 1;
  result = 0.0;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0;
  *(v0 + 328) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_59@<X0>(_BYTE *a1@<X1>, char a2@<W8>)
{
  *a1 = a2;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_39_5()
{
  *(v0 + 16) = v3;
  *(v0 + v4 + 32) = v2;
  *v1 = v0;
}

void OUTLINED_FUNCTION_51_2(uint64_t a1)
{

  sub_1AC456860(a1, sub_1AC456830);
}

uint64_t OUTLINED_FUNCTION_51_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t OUTLINED_FUNCTION_19_8()
{

  return sub_1AC51EE28();
}

void sub_1AC45BEC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  if (*a3 == a4)
  {
    goto LABEL_2;
  }

  if (*(a1 + v6) == 45)
  {
    v12 = sub_1AC458F9C(v6, a1, a2);
    *a3 = v12;
    if (v12 == a4)
    {
LABEL_2:
      sub_1AC477660();
      swift_allocError();
      v8 = xmmword_1AC51FB60;
LABEL_3:
      *v7 = v8;
      swift_willThrow();
      return;
    }

    if (*(a1 + v12) - 58 <= 0xFFFFFFF5)
    {
      sub_1AC477660();
      swift_allocError();
      v8 = xmmword_1AC528340;
      goto LABEL_3;
    }

    sub_1AC45C184(a1, a2, a3, a4);
    if (!v4 && (v16 & 1) == 0 && v15 < 0 && v15 != 0x8000000000000000)
    {
LABEL_19:
      sub_1AC477660();
      swift_allocError();
      v8 = xmmword_1AC5284F0;
      goto LABEL_3;
    }
  }

  else
  {
    sub_1AC45C184(a1, a2, a3, a4);
    if (!v4 && (v14 & 1) == 0 && v13 < 0)
    {
      goto LABEL_19;
    }
  }
}

double OUTLINED_FUNCTION_20_6()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

void OUTLINED_FUNCTION_20_13(uint64_t a1, unint64_t a2)
{

  sub_1AC502478(a2);
}

void sub_1AC45C184(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  if (*a3 == a4)
  {
    sub_1AC477660();
    swift_allocError();
    v7 = xmmword_1AC51FB60;
LABEL_3:
    *v6 = v7;
    swift_willThrow();
    return;
  }

  v12 = *(result + v5);
  if (v12 != 48)
  {
    if ((v12 - 58) >= 0xFFFFFFF7)
    {
      v15 = 0;
      v16 = a2 - result;
      if (!result)
      {
        v16 = 0;
      }

      v17 = *a3;
      while (a4 != v17)
      {
        v18 = *(result + v17);
        if ((v18 - 58) < 0xF6u)
        {
          if (v18 != 46 && v18 != 101 && v18 != 69)
          {
            return;
          }

          goto LABEL_33;
        }

        if (v15 > 0x1999999999999999 || (v19 = (v18 - 48), __CFADD__(v19, 10 * v15)))
        {
          sub_1AC477660();
          swift_allocError();
          v7 = xmmword_1AC5284F0;
          goto LABEL_3;
        }

        if (v5 < 0 || v17 >= v16)
        {
          __break(1u);
          return;
        }

        v20 = 10 * v15;
        *a3 = ++v17;
        v15 = 10 * v15 + v19;
        if (__CFADD__(v20, v19))
        {
          __break(1u);
          goto LABEL_28;
        }
      }

      return;
    }

    if (v12 == 92)
    {
      return;
    }

LABEL_42:
    sub_1AC477660();
    swift_allocError();
    v7 = xmmword_1AC528340;
    goto LABEL_3;
  }

  v13 = sub_1AC458F9C(*a3, result, a2);
  *a3 = v13;
  if (v13 != a4)
  {
    v14 = *(result + v13);
    if ((v14 - 58) >= 0xFFFFFFF6)
    {
LABEL_28:
      sub_1AC477660();
      swift_allocError();
      v7 = xmmword_1AC528EB0;
      goto LABEL_3;
    }

    if (v14 == 46 || v14 == 101 || v14 == 69)
    {
LABEL_33:
      *a3 = v5;
      sub_1AC457E18(result, a2, a3, a4);
      if (v4)
      {
        return;
      }

      if ((v22 & 1) == 0)
      {
        v23 = trunc(v21);
        v24 = v21 > -1.0 && v21 < 1.84467441e19;
        if (v24 && v23 == v21)
        {
          return;
        }
      }

      goto LABEL_42;
    }
  }
}

void sub_1AC45C464()
{
  v2 = OUTLINED_FUNCTION_34_3();
  v3 = 0;
  if ((v2 & 1) != 0 || (sub_1AC45CC3C(), !v0))
  {
    *v1 = v3;
  }
}

void sub_1AC45C4C8()
{
  OUTLINED_FUNCTION_60();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v113 = v7;
  v122 = *(v8 + 8);
  v120 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_0();
  v111 = v11;
  OUTLINED_FUNCTION_65();
  MEMORY[0x1EEE9AC00](v12);
  v116 = v6;
  v117 = &v108 - v13;
  v121 = *(v4 + 8);
  v14 = swift_getAssociatedTypeWitness();
  v138 = sub_1AC51F228();
  OUTLINED_FUNCTION_3_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_81_0();
  v19 = MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_86_0(v19, v20, v21, v22, v23, v24, v25, v26, v108);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v108 - v28;
  OUTLINED_FUNCTION_88_0();
  sub_1AC51F228();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_6();
  v33 = v31 - v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_80_0();
  if (*(v2 + 33) != 2)
  {
    goto LABEL_10;
  }

  v114 = v16;
  v115 = v35;
  v123 = v37;
  v119 = v36;
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, AssociatedTypeWitness);
  v118 = v29;
  OUTLINED_FUNCTION_12_1();
  v44 = __swift_storeEnumTagSinglePayload(v41, v42, v43, v14);
  v45 = sub_1AC453530(v44);
  if (v1)
  {
LABEL_9:
    v53 = OUTLINED_FUNCTION_41_1();
    v54(v53, v138);
    v55 = OUTLINED_FUNCTION_54_0();
    v56(v55);
LABEL_10:
    OUTLINED_FUNCTION_68();
    OUTLINED_FUNCTION_61();
    return;
  }

  v46 = v45;
  if (v45 >= 0x7FFFFFFF)
  {
    v52 = sub_1AC48D31C();
    OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v52);
    OUTLINED_FUNCTION_36_1();
LABEL_8:
    OUTLINED_FUNCTION_59(v50, v51);
    goto LABEL_9;
  }

  v47 = *(v2 + 8);
  if ((v47 & 0x8000000000000000) == 0)
  {
    v79 = v47 >= v45;
    v48 = v47 - v45;
    if (v79)
    {
      v57 = *v2;
      *v2 += v45;
      *(v2 + 8) = v48;
      sub_1AC4530E8(v2, v125);
      v110 = v126[7];
      v109 = v127;
      sub_1AC452928(v126, v124, &qword_1EB557F98, &qword_1AC520460);
      OUTLINED_FUNCTION_7_2();
      *(v58 + 128) = xmmword_1AC5205D0;
      *(v58 + 144) = xmmword_1AC5205D0;
      v129 = v57;
      v130 = v46;
      v131 = v57;
      v132 = 0;
      sub_1AC454060(v124, v59 + 48, &qword_1EB557F98, &qword_1AC520460);
      v135 = v110;
      v136 = v109;
      v110 = v128;
      v60 = sub_1AC45466C(v125);
      v137 = v110;
      v131 = v57;
      v132 = 0;
      if (v46)
      {
        v61 = v57;
        v110 = v122 + 32;
        do
        {
          v62 = v61 + 1;
          v63 = *v61;
          v64 = v46 - 1;
          if ((v63 & 0x8000000000000000) != 0)
          {
            v66 = 7;
            v65 = v123;
            while (v64 >= 1 && v66 <= 0x3F)
            {
              OUTLINED_FUNCTION_31_0();
              if ((v68 & 0x80) == 0)
              {
                OUTLINED_FUNCTION_79_0(v67);
                if (v79)
                {
                  break;
                }

                goto LABEL_20;
              }
            }

LABEL_50:
            v102 = sub_1AC48D31C();
            OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v102);
            OUTLINED_FUNCTION_36_1();
LABEL_51:
            OUTLINED_FUNCTION_59(v103, v104);
            v105 = OUTLINED_FUNCTION_41_1();
            v106(v105, v138);
            (*(v65 + 8))(v119, v115);
            goto LABEL_52;
          }

          v129 = v61 + 1;
          v130 = v46 - 1;
          v65 = v123;
LABEL_20:
          v69 = v63 & 7;
          if (v63 < 8 || v69 > 5)
          {
            goto LABEL_50;
          }

          v71 = v63 >> 3;
          if (v69 == 4)
          {
            OUTLINED_FUNCTION_71();
            goto LABEL_50;
          }

          v133 = v69;
          v134 = v71;
          if (v71 == 2 || v71 == 1)
          {
            OUTLINED_FUNCTION_101_0();
            OUTLINED_FUNCTION_97_0();
            v60 = v72();
          }

          else
          {
            v73 = v62 - v61;
            v74 = __OFADD__(v64, v73);
            v75 = v64 + v73;
            if (v74)
            {
              goto LABEL_55;
            }

            v129 = v61;
            v130 = v75;
            if (v75 < 1)
            {
              v107 = sub_1AC48D31C();
              OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v107);
              OUTLINED_FUNCTION_53_1();
              goto LABEL_51;
            }

            sub_1AC453530(v60);
            OUTLINED_FUNCTION_99_0();
            v65 = v123;
            if (!v77 && v79)
            {
              goto LABEL_50;
            }

            v78 = v76 & 7;
            v79 = v76 < 8 || v78 >= 6;
            if (v79)
            {
              goto LABEL_50;
            }

            OUTLINED_FUNCTION_46_0(v76, v78);
          }

          v61 = v129;
          v46 = v130;
          v131 = v129;
          v132 = 0;
        }

        while (v130 > 0);
        if (!v130)
        {
          goto LABEL_40;
        }

        v80 = sub_1AC48D31C();
        v81 = OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v80);
        OUTLINED_FUNCTION_94_0(v81, v82);
        v83 = OUTLINED_FUNCTION_41_1();
        v84(v83, v138);
        v85 = OUTLINED_FUNCTION_54_0();
        v86(v85);
LABEL_52:
        sub_1AC45466C(&v129);
      }

      else
      {
LABEL_40:
        (*(v123 + 16))(v33, v119, v115);
        v87 = OUTLINED_FUNCTION_92_0();
        OUTLINED_FUNCTION_42_0(v87, v88, AssociatedTypeWitness);
        if (v77)
        {
          OUTLINED_FUNCTION_91_0();
          v89();
          v90 = v123;
          v91 = OUTLINED_FUNCTION_92_0();
          OUTLINED_FUNCTION_42_0(v91, v92, AssociatedTypeWitness);
          if (!v77)
          {
            (*(v90 + 8))(v33, v115);
          }
        }

        else
        {
          (*(v111 + 32))(v117, v33, AssociatedTypeWitness);
        }

        (*(v114 + 16))(&protocol requirements base descriptor for FieldType, v118, v138);
        OUTLINED_FUNCTION_24_2(&protocol requirements base descriptor for FieldType);
        if (v77)
        {
          OUTLINED_FUNCTION_91_0();
          v93();
          OUTLINED_FUNCTION_24_2(&protocol requirements base descriptor for FieldType);
          if (!v77)
          {
            v94 = OUTLINED_FUNCTION_93_0();
            v95(v94);
          }
        }

        else
        {
          OUTLINED_FUNCTION_7_1();
          (*(v96 + 32))(v112, &protocol requirements base descriptor for FieldType, v14);
        }

        OUTLINED_FUNCTION_64_0();
        swift_getAssociatedConformanceWitness();
        OUTLINED_FUNCTION_88_0();
        v97 = sub_1AC51ED88();
        OUTLINED_FUNCTION_104_0(v97);
        v98 = OUTLINED_FUNCTION_41_1();
        v99(v98, v138);
        v100 = OUTLINED_FUNCTION_54_0();
        v101(v100);
        sub_1AC45466C(&v129);
        *(v2 + 32) = 1;
      }

      goto LABEL_10;
    }

    v49 = sub_1AC48D31C();
    OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v49);
    OUTLINED_FUNCTION_53_1();
    goto LABEL_8;
  }

  __break(1u);
LABEL_55:
  __break(1u);
}

void sub_1AC45CC3C()
{
  OUTLINED_FUNCTION_19_8();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12_8();
  sub_1AC458F28();
  v6 = *v0;
  if (*v0)
  {
    v7 = *(v2 + 8) - v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v2 + 16);
  if (v8 == v7)
  {
LABEL_5:
    v9 = sub_1AC477660();
    v10 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v9);
    v12 = xmmword_1AC51FB60;
LABEL_6:
    OUTLINED_FUNCTION_36(v12, v10, v11);
    return;
  }

  if (*(v6 + v8) != 34)
  {
    OUTLINED_FUNCTION_16_8();
    v20 = OUTLINED_FUNCTION_0_25();
    OUTLINED_FUNCTION_24_7(v20, v21, v22, v23);
    if (!v1)
    {
      OUTLINED_FUNCTION_20();
      sub_1AC457DC4(v42);
      if ((v2 & 1) == 0)
      {
        return;
      }

      goto LABEL_19;
    }

LABEL_17:
    sub_1AC457DC4(v42);
    return;
  }

  *(v2 + 16) = OUTLINED_FUNCTION_18_8();
  OUTLINED_FUNCTION_16_8();
  v13 = OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_24_7(v13, v4, v14, v15);
  if (v1)
  {
    goto LABEL_17;
  }

  v17 = v16;
  sub_1AC457DC4(v42);
  if ((v17 & 1) == 0)
  {
    v25 = *(v2 + 16);
    v26 = *v2;
    if (*v2)
    {
      v26 = *(v2 + 8) - v26;
    }

    if (v25 == v26)
    {
      goto LABEL_5;
    }

    if (*(v6 + v25) == 34)
    {
      *(v2 + 16) = sub_1AC458F9C(v25, v6, v4);
      return;
    }

    goto LABEL_19;
  }

  *(v2 + 16) = v8;
  OUTLINED_FUNCTION_17_0();
  sub_1AC45993C();
  OUTLINED_FUNCTION_12_13();
  v19 = v19 && v18 == 0xE300000000000000;
  if (v19 || (OUTLINED_FUNCTION_2_17(5136718, 0xE300000000000000) & 1) != 0 || (v6 == 6712905 ? (v27 = v17 == 0xE300000000000000) : (v27 = 0), v27 || (OUTLINED_FUNCTION_2_17(6712905, 0xE300000000000000) & 1) != 0 || (v6 == 1718503725 ? (v28 = v17 == 0xE400000000000000) : (v28 = 0), v28 || (OUTLINED_FUNCTION_2_17(1718503725, 0xE400000000000000) & 1) != 0 || ((v29 = OUTLINED_FUNCTION_13_10(), v19) ? (v30 = v17 == 0xE800000000000000) : (v30 = 0), v30 || (OUTLINED_FUNCTION_2_17(v29, 0xE800000000000000) & 1) != 0 || ((v31 = OUTLINED_FUNCTION_5_16(), v19) ? (v33 = v17 == v32) : (v33 = 0), v33 || (OUTLINED_FUNCTION_2_17(v31, 0xE900000000000079) & 1) != 0)))))
  {

    return;
  }

  sub_1AC51EE18();
  OUTLINED_FUNCTION_23_8();
  v34 = OUTLINED_FUNCTION_9_14();
  v35(v34);
  if (v6 >> 60 == 15)
  {
    __break(1u);
    return;
  }

  v36 = OUTLINED_FUNCTION_12_0();
  sub_1AC4E58D8(v36, v37, v2, v38, v39);
  OUTLINED_FUNCTION_20();
  v40 = OUTLINED_FUNCTION_12_0();
  sub_1AC45AC74(v40, v41);
  if (v2)
  {
LABEL_19:
    v24 = sub_1AC477660();
    v10 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v24);
    v12 = xmmword_1AC528340;
    goto LABEL_6;
  }
}

uint64_t dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return (*(a7 + 440))(a1, a2, a3, a4, a5, a6);
}

{
  return (*(a7 + 448))(a1, a2, a3, a4, a5, a6);
}

uint64_t OUTLINED_FUNCTION_24_1()
{

  return sub_1AC51F228();
}

void OUTLINED_FUNCTION_24_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_1AC457E18(a1, a2, v4, a4);
}

uint64_t OUTLINED_FUNCTION_24_9(uint64_t a1)
{

  return sub_1AC51F338();
}

uint64_t OUTLINED_FUNCTION_24_10()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

unint64_t OUTLINED_FUNCTION_24_11()
{
  v3 = *(v1 + 8 * v0 + 32);

  return sub_1AC45AA38(v3);
}

void sub_1AC45D17C(uint64_t a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a2 - a1;
    if (a2 - a1 >= 1 && v3 < *(v2 + 24))
    {
      sub_1AC51F258();
      v5 = *(v2 + 16);
      v5[v3] = 0;
      v6[0] = v5;
      if (v5)
      {
        strtod(v5, v6);
        if (*(v2 + 16))
        {
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
}

uint64_t OUTLINED_FUNCTION_81(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);

  return sub_1AC485CDC(va, &a18);
}

uint64_t sub_1AC45D2B4(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_34_3();
  if (result)
  {
    *v4 = a2;
  }

  else
  {
    if (*(v3 + 120) == 1)
    {
      result = sub_1AC4E5D54();
    }

    else
    {
      result = sub_1AC45D3B4();
    }

    if (!v2)
    {
      *v4 = result & 1;
    }
  }

  return result;
}

void *OUTLINED_FUNCTION_88_2(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va1, a36);
  va_start(__srca, a36);
  __src = va_arg(va1, void);
  v40 = va_arg(va1, void);
  v41 = va_arg(va1, void);
  v42 = va_arg(va1, void);
  v43 = va_arg(va1, void);
  v44 = va_arg(va1, void);
  v45 = va_arg(va1, void);
  v46 = va_arg(va1, void);
  v47 = va_arg(va1, void);

  return memcpy(a1, __srca, 0x48uLL);
}

uint64_t sub_1AC45D3B4()
{
  OUTLINED_FUNCTION_8_15();
  if (v1)
  {
    OUTLINED_FUNCTION_15_9();
  }

  else
  {
    v2 = 0;
  }

  if (v0 == v2)
  {
    goto LABEL_11;
  }

  v3 = *(v1 + v0);
  if (v3 == 116)
  {
    if (sub_1AC459FB0(&unk_1F2127708))
    {
      v4 = 1;
      return v4 & 1;
    }

LABEL_11:
    v5 = sub_1AC477660();
    v6 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v5);
    OUTLINED_FUNCTION_17_10(v6, v7, v8, v9);
    return v4 & 1;
  }

  if (v3 != 102 || (sub_1AC459FB0(&unk_1F21276E0) & 1) == 0)
  {
    goto LABEL_11;
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t OUTLINED_FUNCTION_78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  return sub_1AC485CDC(v17 - 168, va);
}

void *OUTLINED_FUNCTION_78_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(__srca, a17);
  __src = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);

  return memcpy(&a9, __srca, 0x48uLL);
}

__n128 OUTLINED_FUNCTION_71_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  result = a10;
  *(v10 - 24) = a10;
  *(v10 - 8) = v11;
  *(v10 + 4) = v13;
  *v10 = v12;
  return result;
}

void *OUTLINED_FUNCTION_63(void *a1)
{

  return memcpy(a1, v1, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_103_0()
{

  return sub_1AC51F228();
}

uint64_t OUTLINED_FUNCTION_103_2()
{
}

void sub_1AC45D598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60();
  v22 = v20;
  v24 = v23;
  v26 = v25;
  v150 = v27;
  v154 = *(v28 + 8);
  v152 = v29;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_0();
  v146 = v31;
  OUTLINED_FUNCTION_65();
  MEMORY[0x1EEE9AC00](v32);
  v149 = v138 - v33;
  v158 = *(v24 + 8);
  v156 = v26;
  v34 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_0();
  v36 = v35;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_6();
  v148 = v38 - v39;
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_26_2();
  v153 = v41;
  OUTLINED_FUNCTION_38_3();
  v155 = sub_1AC51F228();
  OUTLINED_FUNCTION_3_0();
  v43 = v42;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_6();
  v147 = v45 - v46;
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v47);
  v151 = v138 - v48;
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_26_2();
  v159 = v50;
  OUTLINED_FUNCTION_38_3();
  v157 = sub_1AC51F228();
  OUTLINED_FUNCTION_3_0();
  v52 = v51;
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_6();
  v56 = v54 - v55;
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_26_2();
  v160 = v58;
  if ((sub_1AC457638() & 1) != 0 || (OUTLINED_FUNCTION_32_4(), sub_1AC458E74(v59), v21))
  {
LABEL_32:
    OUTLINED_FUNCTION_33_3();
    OUTLINED_FUNCTION_61();
    return;
  }

  OUTLINED_FUNCTION_32_4();
  sub_1AC458FC0(v60);
  if (sub_1AC459020(0x7Du))
  {
    sub_1AC45A9B0();
    goto LABEL_32;
  }

  v144 = v154 + 32;
  v145 = v158 + 32;
  v142 = v36 + 32;
  v143 = (v52 + 16);
  v141 = (v43 + 16);
  v138[3] = v146 + 4;
  v138[2] = v36 + 16;
  v138[1] = v146 + 2;
  v138[0] = v146 + 1;
  v146 = (v43 + 8);
  v61 = (v52 + 8);
  v139 = v61;
  v140 = v36 + 8;
  while (1)
  {
    OUTLINED_FUNCTION_32_4();
    v62 = sub_1AC45DF14();
    v64 = v153;
    v65 = v62 == 34 && v63 == 0xE100000000000000;
    if (v65)
    {
    }

    else
    {
      v66 = OUTLINED_FUNCTION_35_3(v62);

      if ((v66 & 1) == 0)
      {
        v130 = sub_1AC477660();
        v131 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v130);
        OUTLINED_FUNCTION_36(xmmword_1AC528960, v131, v132);
        goto LABEL_32;
      }
    }

    *(v22 + 120) = 1;
    v67 = OUTLINED_FUNCTION_7_11();
    __swift_storeEnumTagSinglePayload(v67, v68, v69, v34);
    OUTLINED_FUNCTION_42_2();
    OUTLINED_FUNCTION_49_2();
    v74(v70, v71, v72, v73);
    *(v22 + 120) = 0;
    sub_1AC458F28();
    v75 = sub_1AC45E184();
    v76 = v157;
    if (!v75)
    {
      v112 = sub_1AC477660();
      OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v112);
      *v113 = xmmword_1AC51FB60;
LABEL_24:
      swift_willThrow();
LABEL_31:
      (*v61)(v160, v76);
      goto LABEL_32;
    }

    v77 = OUTLINED_FUNCTION_8_12();
    if (v79 != 58)
    {
      v114 = sub_1AC477660();
      v115 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v114);
      OUTLINED_FUNCTION_16_6(v115, v116);
      goto LABEL_24;
    }

    *(v22 + 16) = sub_1AC458F9C(v77, v78, *(v22 + 8));
    v80 = OUTLINED_FUNCTION_7_11();
    __swift_storeEnumTagSinglePayload(v80, v81, v82, AssociatedTypeWitness);
    OUTLINED_FUNCTION_42_2();
    OUTLINED_FUNCTION_49_2();
    v87(v83, v84, v85, v86);
    (*v143)(v56, v160, v76);
    OUTLINED_FUNCTION_42_0(v56, 1, v34);
    v88 = v155;
    if (v65)
    {
      (*v61)(v56, v76);
      v117 = v146;
LABEL_27:
      v120 = sub_1AC477660();
      v121 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v120);
      OUTLINED_FUNCTION_36(xmmword_1AC528970, v121, v122);
      (*v117)(v159, v88);
      goto LABEL_31;
    }

    v89 = OUTLINED_FUNCTION_26_5();
    v90(v89, v56, v34);
    v91 = v151;
    (*v141)(v151, v159, v88);
    OUTLINED_FUNCTION_42_0(v91, 1, AssociatedTypeWitness);
    if (v65)
    {
      v118 = OUTLINED_FUNCTION_26_5();
      v119(v118, v34);
      v117 = v146;
      (*v146)(v91, v88);
      v76 = v157;
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_14_8();
    v92 = v149;
    v93(v149, v91, AssociatedTypeWitness);
    OUTLINED_FUNCTION_14_8();
    v94(v148, v64, v34);
    OUTLINED_FUNCTION_14_8();
    v95(v147, v92, AssociatedTypeWitness);
    OUTLINED_FUNCTION_43_4();
    __swift_storeEnumTagSinglePayload(v96, v97, v98, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    sub_1AC51ED88();
    sub_1AC51EDA8();
    OUTLINED_FUNCTION_14_8();
    v99(v92, AssociatedTypeWitness);
    v100 = OUTLINED_FUNCTION_26_5();
    v101(v100, v34);
    sub_1AC458F28();
    if (sub_1AC45E184())
    {
      v102 = OUTLINED_FUNCTION_8_12();
      if (v104 == 125)
      {
        break;
      }
    }

    sub_1AC458F28();
    v105 = sub_1AC45E184();
    v61 = v139;
    v76 = v157;
    if (!v105)
    {
      v123 = sub_1AC477660();
      OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v123);
      *v124 = xmmword_1AC51FB60;
LABEL_30:
      swift_willThrow();
      v128 = OUTLINED_FUNCTION_22_7();
      v129(v128);
      goto LABEL_31;
    }

    v106 = OUTLINED_FUNCTION_8_12();
    if (v108 != 44)
    {
      v125 = sub_1AC477660();
      v126 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v125);
      OUTLINED_FUNCTION_16_6(v126, v127);
      goto LABEL_30;
    }

    v109 = sub_1AC458F9C(v106, v107, *(v22 + 8));
    v110 = OUTLINED_FUNCTION_22_7();
    v111(v110);
    (*v61)(v160, v76);
    *(v22 + 16) = v109;
  }

  *(v22 + 16) = sub_1AC458F9C(v102, v103, *(v22 + 8));
  v133 = *(v22 + 88);
  v134 = __OFADD__(v133, 1);
  v135 = v133 + 1;
  v136 = v139;
  v137 = v157;
  if (v134)
  {
    __break(1u);
  }

  else
  {
    *(v22 + 88) = v135;
    if (*(v22 + 32) >= v135)
    {
      (*v146)(v159, v155);
      (*v136)(v160, v137);
      goto LABEL_32;
    }
  }

  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_11_9();
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_49_3(char a1)
{

  return sub_1AC51F048();
}

uint64_t sub_1AC45DF14()
{
  OUTLINED_FUNCTION_8_15();
  if (v1)
  {
    OUTLINED_FUNCTION_15_9();
  }

  else
  {
    v2 = 0;
  }

  if (v0 != v2)
  {
    return sub_1AC51EEA8();
  }

  v3 = sub_1AC477660();
  v4 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v3);
  return OUTLINED_FUNCTION_36(xmmword_1AC51FB60, v4, v5);
}

uint64_t OUTLINED_FUNCTION_42(char a1, char a2, size_t a3, char a4, char a5, char a6, char a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int16 a15, char __s2, char a17, char a18, char a19, char a20, char a21, char a22, char a23, char a24, char a25, char a26, char a27, char a28, char a29, char __s1)
{
  __s2 = v37;
  a17 = a7;
  a18 = a6;
  a19 = a5;
  a20 = v30;
  a21 = a4;
  a22 = a2;
  a23 = a1;
  a24 = v36;
  a25 = v35;
  a26 = v34;
  a27 = v33;
  a28 = v32;
  a29 = v31;

  return memcmp(&__s1, &__s2, a3);
}

void OUTLINED_FUNCTION_42_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v23 = *(v21 - 88);

  sub_1AC480274(a1, a2, a21, v23);
}

uint64_t sub_1AC45E0FC(uint64_t *a1)
{
  if (sub_1AC457638())
  {

    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    result = sub_1AC45993C();
    if (!v1)
    {
      v5 = result;
      v6 = v4;

      *a1 = v5;
      a1[1] = v6;
    }
  }

  return result;
}

BOOL sub_1AC45E184()
{
  v1 = *v0;
  if (*v0)
  {
    v1 = v0[1] - v1;
  }

  return v0[2] != v1;
}

uint64_t OUTLINED_FUNCTION_14_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  a47 = v49;
  a48 = v48;

  return sub_1AC45466C(&a14);
}

uint64_t OUTLINED_FUNCTION_14_3(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

unint64_t OUTLINED_FUNCTION_14_5()
{

  return sub_1AC45702C(0);
}

uint64_t OUTLINED_FUNCTION_14_6@<X0>(void *a1@<X8>, uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>)
{
  *a1 = v4;
  a1[1] = v6;
  a1[2] = v5;
  return sub_1AC485860(result, a2, a3);
}

uint64_t OUTLINED_FUNCTION_14_7@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1 + 24);
  __swift_project_boxed_opaque_existential_1((v1 + a1), v2);
  return v2;
}

void OUTLINED_FUNCTION_14_9()
{

  sub_1AC45A78C();
}

void OUTLINED_FUNCTION_14_10(uint64_t a1@<X8>)
{
  *(a1 + 32) = v2;
  *v3 = v1;
  *(v3 + 8) = 44;
}

void sub_1AC45E30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60();
  v23 = v20;
  v25 = v24;
  v27 = v26;
  v28 = sub_1AC51F228();
  OUTLINED_FUNCTION_3_0();
  v84 = v29;
  OUTLINED_FUNCTION_65();
  MEMORY[0x1EEE9AC00](v30);
  v87 = &v74 - v31;
  OUTLINED_FUNCTION_5();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_39_2();
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = &v74 - v37;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_26_2();
  v86 = v39;
  if (sub_1AC457638())
  {
    goto LABEL_19;
  }

  sub_1AC458E74(0x5Bu);
  if (v21 || (sub_1AC459020(0x5Du) & 1) != 0)
  {
    goto LABEL_19;
  }

  v83 = v25 + 16;
  v85 = v33 + 16;
  v77 = v33 + 32;
  v40 = (v33 + 8);
  v79 = v28;
  v78 = v40;
  while (1)
  {
    sub_1AC458F28();
    if (!sub_1AC45E184() || *(*v23 + v23[2]) != 110 || (sub_1AC459FB0(&unk_1F2127878) & 1) == 0)
    {
      v54 = OUTLINED_FUNCTION_51();
      v55(v54);
      sub_1AC45BD44(v23, &v88);
      v92 = v25;
      v93 = 0;
      v94 = 0;
      v95 = 0u;
      v96 = 0u;
      v91 = v27;
      sub_1AC45731C();
      OUTLINED_FUNCTION_14_8();
      v56(v38, v22, v27);
      sub_1AC51F108();
      sub_1AC51F0D8();
      (*v40)(v22, v27);
      sub_1AC45C408(&v88, v23);
      sub_1AC45AA7C(&v88);
      goto LABEL_13;
    }

    v41 = OUTLINED_FUNCTION_50_3();
    if (!dynamic_cast_existential_1_conditional(v41, v42, &protocol descriptor for _CustomJSONCodable))
    {
      goto LABEL_18;
    }

    v43 = OUTLINED_FUNCTION_50_3();
    v45 = dynamic_cast_existential_1_unconditional(v43, v44, &protocol descriptor for _CustomJSONCodable);
    v47 = v46;
    v48 = *(v46 + 24);
    v80 = v46 + 24;
    v81 = v48;
    v49 = sub_1AC51F228();
    v82 = &v74;
    v76 = v49;
    OUTLINED_FUNCTION_3_0();
    v75 = v50;
    OUTLINED_FUNCTION_65();
    MEMORY[0x1EEE9AC00](v51);
    v52 = OUTLINED_FUNCTION_39_3();
    v81(v52, v47);
    OUTLINED_FUNCTION_19_5(v28);
    if (v53)
    {
      (*(v75 + 8))(v28, v76);
      OUTLINED_FUNCTION_40_3();
      v90 = 0;
      v88 = 0u;
      v89 = 0u;
    }

    else
    {
      *(&v89 + 1) = v45;
      v90 = v47;
      __swift_allocate_boxed_opaque_existential_1(&v88);
      OUTLINED_FUNCTION_13_7();
      (*(v57 + 32))();
      OUTLINED_FUNCTION_40_3();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FC8, &unk_1AC528980);
    OUTLINED_FUNCTION_45_2();
    v58 = swift_dynamicCast();
    v28 = v79;
    if ((v58 & 1) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_43_4();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v27);
    OUTLINED_FUNCTION_14_8();
    v62 = v86;
    v63(v86, v45, v27);
    OUTLINED_FUNCTION_14_8();
    v64(v38, v62, v27);
    sub_1AC51F108();
    sub_1AC51F0D8();
    OUTLINED_FUNCTION_14_8();
    v65 = v62;
    v40 = v66;
    v67(v65, v27);
LABEL_13:
    if (sub_1AC459020(0x5Du))
    {
      goto LABEL_19;
    }

    sub_1AC458E74(0x2Cu);
  }

  v68 = OUTLINED_FUNCTION_7_11();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v27);
  (*(v84 + 8))(v45, v28);
LABEL_18:
  v71 = sub_1AC477660();
  v72 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v71);
  OUTLINED_FUNCTION_36(xmmword_1AC528940, v72, v73);
LABEL_19:
  OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_61();
}

unint64_t sub_1AC45E8C0()
{
  result = OUTLINED_FUNCTION_34_3();
  if (result)
  {
    *v1 = 0;
  }

  else
  {
    result = sub_1AC45E964();
    if (!v0)
    {
      if (HIDWORD(result))
      {
        v3 = sub_1AC477660();
        v4 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v3);
        return OUTLINED_FUNCTION_36(xmmword_1AC5284F0, v4, v5);
      }

      else
      {
        *v1 = result;
      }
    }
  }

  return result;
}

void OUTLINED_FUNCTION_18_0(uint64_t a1@<X8>)
{
  *(v1 - 72) = a1;

  sub_1AC45A78C();
}

uint64_t OUTLINED_FUNCTION_18_4()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_18_5(uint64_t result)
{
  *v1 = result;
  *(result + 72) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_6()
{

  return sub_1AC457638();
}

uint64_t OUTLINED_FUNCTION_18_8()
{
  *(v4 - 184) = v2;
  v6 = *(v0 + 8);

  return sub_1AC458F9C(v3, v1, v6);
}

uint64_t OUTLINED_FUNCTION_18_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v9 = *(v7 + 56) + 40 * a1;

  return sub_1AC47782C(v9, va);
}

uint64_t sub_1AC45EB24()
{
  result = OUTLINED_FUNCTION_18_6();
  if ((result & 1) == 0)
  {
    OUTLINED_FUNCTION_17_0();
    result = sub_1AC458E74(v4);
    if (!v0)
    {
      result = OUTLINED_FUNCTION_37_3();
      if ((result & 1) == 0)
      {
        while (1)
        {
          sub_1AC458F28();
          if (!sub_1AC45E184())
          {
            break;
          }

          if (*(*v1 + v1[2]) != 34 || (v5 = sub_1AC459B18(), !v6))
          {
            v13 = sub_1AC477660();
            OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v13);
            v15 = xmmword_1AC51FB50;
            goto LABEL_11;
          }

          v7 = v5;
          v8 = v6;
          sub_1AC456458();
          v9 = *(*v2 + 16);
          sub_1AC456470(v9);
          OUTLINED_FUNCTION_32_0(v9 + 1);
          v11 = v10 + 16 * v9;
          *(v11 + 32) = v7;
          *(v11 + 40) = v8;
          *v2 = v10;
          result = OUTLINED_FUNCTION_37_3();
          if (result)
          {
            return result;
          }

          OUTLINED_FUNCTION_17_0();
          sub_1AC458E74(v12);
        }

        v16 = sub_1AC477660();
        OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v16);
        v15 = xmmword_1AC51FB60;
LABEL_11:
        *v14 = v15;
        return swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_1AC45EC6C()
{
  result = OUTLINED_FUNCTION_34_3();
  if (result)
  {
    *v1 = 0;
    *(v1 + 4) = 1;
  }

  else
  {
    result = sub_1AC457AA8();
    if (!v0)
    {
      if (result == result)
      {
        *v1 = result;
        *(v1 + 4) = 0;
      }

      else
      {
        v3 = sub_1AC477660();
        v4 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v3);
        return OUTLINED_FUNCTION_36(xmmword_1AC5284F0, v4, v5);
      }
    }
  }

  return result;
}

unint64_t sub_1AC45ED1C()
{
  result = OUTLINED_FUNCTION_34_3();
  if (result)
  {
    *v1 = 0;
    *(v1 + 4) = 1;
  }

  else
  {
    result = sub_1AC45E964();
    if (!v0)
    {
      if (HIDWORD(result))
      {
        v3 = sub_1AC477660();
        v4 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v3);
        return OUTLINED_FUNCTION_36(xmmword_1AC5284F0, v4, v5);
      }

      else
      {
        *v1 = result;
        *(v1 + 4) = 0;
      }
    }
  }

  return result;
}

void sub_1AC45EDF4(uint64_t a1, int a2)
{
  OUTLINED_FUNCTION_8_4(a1, a2);
  OUTLINED_FUNCTION_20_3();
  if (v5)
  {
    OUTLINED_FUNCTION_21_3();
    while (1)
    {
      v9 = *v7++;
      v8 = v9;
      if (v9 >= 0x80)
      {
        v11 = v8 >> 14;
        v12 = v8 >> 28 ? 5 : 4;
        v10 = v8 >= 0x200000 ? v12 : 3;
        if (!v11)
        {
          v10 = 2;
        }
      }

      else
      {
        v10 = 1;
      }

      v13 = __OFADD__(v4, v10);
      v4 += v10;
      if (v13)
      {
        break;
      }

      if (!--v6)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v4 = 0;
LABEL_17:
  v14 = sub_1AC4519B4(v4);
  v15 = v3 + v14;
  if (__OFADD__(v3, v14))
  {
    goto LABEL_22;
  }

  v13 = __OFADD__(v15, v4);
  v16 = v15 + v4;
  if (v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v13 = __OFADD__(*v2, v16);
  v17 = *v2 + v16;
  if (!v13)
  {
    OUTLINED_FUNCTION_11_4(v17);
    return;
  }

LABEL_24:
  __break(1u);
}

void sub_1AC45EEB8(uint64_t a1, int a2)
{
  v4 = sub_1AC451978((8 * a2) | 2u);
  v5 = 0;
  v6 = *(a1 + 16);
  v7 = (a1 + 40);
  v8 = v6 + 1;
  while (--v8)
  {
    v9 = *v7;
    if ((*v7 & 0x1000000000000000) != 0)
    {
      v10 = sub_1AC51EF48();
    }

    else
    {
      if ((v9 & 0x2000000000000000) != 0)
      {
        v10 = HIBYTE(v9) & 0xF;
LABEL_13:
        v11 = 1;
        goto LABEL_14;
      }

      v10 = *(v7 - 1) & 0xFFFFFFFFFFFFLL;
    }

    if (v10 < 0x80)
    {
      goto LABEL_13;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = 10;
      goto LABEL_14;
    }

    if (v10 >> 35)
    {
      if (v10 >> 49)
      {
        v14 = v10 >> 28;
        v11 = 8;
LABEL_24:
        if (!(v14 >> 28))
        {
          goto LABEL_14;
        }

        goto LABEL_27;
      }

      if (!(v10 >> 42))
      {
        v11 = 6;
        goto LABEL_14;
      }

      v11 = 6;
    }

    else
    {
      if (v10 >= 0x200000)
      {
        v11 = 4;
        v14 = v10;
        goto LABEL_24;
      }

      v11 = 2;
      if (v10 < 0x4000)
      {
        goto LABEL_14;
      }
    }

LABEL_27:
    ++v11;
LABEL_14:
    v12 = __OFADD__(v5, v11);
    v13 = v5 + v11;
    if (v12)
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v7 += 2;
    v5 = v13 + v10;
    if (__OFADD__(v13, v10))
    {
      goto LABEL_34;
    }
  }

  v15 = v4 * v6;
  if ((v4 * v6) >> 64 != (v4 * v6) >> 63)
  {
    goto LABEL_35;
  }

  v12 = __OFADD__(v15, v5);
  v16 = v15 + v5;
  if (v12)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = __OFADD__(*v2, v16);
  v17 = *v2 + v16;
  if (!v12)
  {
    OUTLINED_FUNCTION_11_4(v17);
    return;
  }

LABEL_37:
  __break(1u);
}

uint64_t sub_1AC45F000()
{
  result = OUTLINED_FUNCTION_18_6();
  if ((result & 1) == 0)
  {
    OUTLINED_FUNCTION_17_0();
    result = sub_1AC458E74(v4);
    if (!v0)
    {
      result = OUTLINED_FUNCTION_37_3();
      if ((result & 1) == 0)
      {
        while (1)
        {
          OUTLINED_FUNCTION_17_0();
          v5 = sub_1AC45E964();
          v6 = v5;
          if (v5 >> 32)
          {
            v15 = sub_1AC477660();
            OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v15);
            v17 = xmmword_1AC5284F0;
            goto LABEL_12;
          }

          sub_1AC45F1A8();
          v7 = OUTLINED_FUNCTION_19_2();
          sub_1AC45F378(v7);
          OUTLINED_FUNCTION_32_0(v2 + 1);
          *(v8 + 4 * v2 + 32) = v6;
          OUTLINED_FUNCTION_46_3();
          if (sub_1AC45E184())
          {
            v9 = OUTLINED_FUNCTION_1_16();
            if (v11 == 93)
            {
              result = sub_1AC458F9C(v9, v10, *(v1 + 8));
              *(v1 + 16) = result;
              return result;
            }
          }

          sub_1AC458F28();
          if (!sub_1AC45E184())
          {
            break;
          }

          v12 = OUTLINED_FUNCTION_1_16();
          if (v14 != 44)
          {
            v19 = sub_1AC477660();
            v20 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v19);
            OUTLINED_FUNCTION_16_6(v20, v21);
            return swift_willThrow();
          }

          *(v1 + 16) = sub_1AC458F9C(v12, v13, *(v1 + 8));
        }

        v18 = sub_1AC477660();
        OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v18);
        v17 = xmmword_1AC51FB60;
LABEL_12:
        *v16 = v17;
        return swift_willThrow();
      }
    }
  }

  return result;
}

void sub_1AC45F1D8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_0_7(a1, a2);
  sub_1AC451CCC(v4, 2u);
  if (*(v3 + 16))
  {
    v5 = OUTLINED_FUNCTION_5_5();
    v7 = 3;
    v8 = 4;
    do
    {
      v9 = *(v3 + 4 * v6);
      if (v9 >= 0x80)
      {
        if (v9 >> 14)
        {
          if (v9 >> 28)
          {
            v11 = v8 + 1;
          }

          else
          {
            v11 = v8;
          }

          if (v9 >= 0x200000)
          {
            v10 = v11;
          }

          else
          {
            v10 = v7;
          }
        }

        else
        {
          v10 = 2;
        }
      }

      else
      {
        v10 = 1;
      }

      if (__OFADD__(v5, v10))
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_5();
    }

    while (!v12);
    sub_1AC45702C(v5);
    OUTLINED_FUNCTION_11_5();
    do
    {
      if (*(v3 + 4 * v14) >= 0x80u)
      {
        do
        {
          OUTLINED_FUNCTION_1_7(v13);
        }

        while (v15);
      }

      OUTLINED_FUNCTION_4_5(v13);
    }

    while (!v12);
    *(v2 + 8) = v13;
  }

  else
  {
    OUTLINED_FUNCTION_14_5();
  }
}

unint64_t sub_1AC45F2B0(unint64_t result, int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = 8 * (a2 & 0x1FFFFFFF);
    v6 = result + 32;
    do
    {
      v7 = (v6 + 16 * v4);
      v8 = *v7;
      v9 = v7[1];
      v10 = *(v2 + 8);
      if (v5 < 0x80)
      {
        LOBYTE(v12) = v5 | 2;
      }

      else
      {
        v11 = v5 | 2;
        do
        {
          *v10++ = v11 | 0x80;
          v12 = v11 >> 7;
          v13 = v11 >> 14;
          v11 >>= 7;
        }

        while (v13);
      }

      ++v4;
      *v10 = v12;
      *(v2 + 8) = v10 + 1;
      result = sub_1AC451D28(v8, v9);
    }

    while (v4 != v3);
  }

  return result;
}

void sub_1AC45F390()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if ((sub_1AC457638() & 1) == 0)
  {
    OUTLINED_FUNCTION_17_0();
    sub_1AC458E74(v10);
    if (!v1 && (OUTLINED_FUNCTION_37_3() & 1) == 0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_17_0();
        v11 = v7();
        v5();
        v12 = *(*v9 + 16);
        v3(v12);
        v13 = *v9;
        *(v13 + 16) = v12 + 1;
        *(v13 + 8 * v12 + 32) = v11;
        *v9 = v13;
        sub_1AC458F28();
        if (sub_1AC45E184())
        {
          v14 = OUTLINED_FUNCTION_1_16();
          if (v16 == 93)
          {
            break;
          }
        }

        sub_1AC458F28();
        if (!sub_1AC45E184())
        {
          v20 = sub_1AC477660();
          OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v20);
          *v21 = xmmword_1AC51FB60;
LABEL_12:
          swift_willThrow();
          goto LABEL_14;
        }

        v17 = OUTLINED_FUNCTION_1_16();
        if (v19 != 44)
        {
          v22 = sub_1AC477660();
          v23 = OUTLINED_FUNCTION_11(&type metadata for JSONDecodingError, v22);
          OUTLINED_FUNCTION_16_6(v23, v24);
          goto LABEL_12;
        }

        *(v0 + 16) = sub_1AC458F9C(v17, v18, *(v0 + 8));
      }

      *(v0 + 16) = sub_1AC458F9C(v14, v15, *(v0 + 8));
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_61();
}

uint64_t sub_1AC45F570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_9_13();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12_8();
  result = sub_1AC459C7C(v10);
  if (!v5)
  {
    v12 = OUTLINED_FUNCTION_40_4();
    v13(v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FC0, &unk_1AC51FCE0);
    if (swift_dynamicCast())
    {
      sub_1AC465B44(v34, v36);
      v14 = v37;
      v15 = v38;
      __swift_project_boxed_opaque_existential_1(v36, v37);
      OUTLINED_FUNCTION_31_3();
      LOBYTE(v34[0]) = v16;
      BYTE1(v34[0]) = v17;
      BYTE2(v34[0]) = v18;
      BYTE3(v34[0]) = v19;
      v20 = (*(v15 + 8))(v34, v14, v15);
      sub_1AC45FA3C(v20, v21);
      return __swift_destroy_boxed_opaque_existential_1(v36);
    }

    else
    {
      v35 = 0;
      memset(v34, 0, sizeof(v34));
      sub_1AC45A718(v34, &qword_1EB557FC8, &unk_1AC528980);
      if (dynamic_cast_existential_1_conditional(a3, a3, &protocol descriptor for _ProtoNameProviding))
      {
        OUTLINED_FUNCTION_42_3();
        v22();
        v23 = v36[1];
        v24 = v36[2];
        v25 = v37;
        v32 = v4[3];
        v33 = v4[2];
        v30 = v4[5];
        v31 = v4[4];
        v26 = v4[6];
        v4[2] = v36[0];
        v4[3] = v23;
        v4[4] = v24;
        v4[5] = v25;
        v39 = v26;

        sub_1AC45A44C(v6, v4, a3, a4);
        (*(a4 + 72))(v4, &type metadata for JSONEncodingVisitor, &off_1F211B6D0, a3, a4);
        sub_1AC45A774();
        OUTLINED_FUNCTION_34_4();

        OUTLINED_FUNCTION_15_8();
        OUTLINED_FUNCTION_14_10(v29);

        v4[2] = v33;
        v4[3] = v32;
        v4[4] = v31;
        v4[5] = v30;

        v4[6] = v39;
      }

      else
      {
        sub_1AC4777D8();
        v27 = swift_allocError();
        return OUTLINED_FUNCTION_21_6(v27, v28);
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_40_5()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

char *sub_1AC45F958(uint64_t a1, double a2)
{
  result = sub_1AC459C7C(a1);
  if (!v2)
  {
    return sub_1AC45F9B0(a2);
  }

  return result;
}

char *sub_1AC45F9B0(double a1)
{
  if ((~*&a1 & 0x7FF0000000000000) != 0)
  {
    v2 = sub_1AC51F188();

    return sub_1AC45FA3C(v2, v3);
  }

  else
  {
    if ((*&a1 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v1 = "NaN";
    }

    else if (a1 >= 0.0)
    {
      v1 = "Infinity";
    }

    else
    {
      v1 = "-Infinity";
    }

    return sub_1AC45FD18(v1);
  }
}

uint64_t sub_1AC45FA3C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    v3 = sub_1AC51EF48();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  OUTLINED_FUNCTION_11_1();
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_1AC45AE04(result, 1);
  v6 = *v2;
  result = sub_1AC51F2D8();
  if ((v7 & 1) == 0)
  {
    v8 = result;

    if (v8 >= v3)
    {
      if (v8 < 1)
      {
LABEL_11:
        *v2 = v6;
        return result;
      }

      v9 = *(v6 + 16);
      v10 = __OFADD__(v9, v8);
      v11 = v9 + v8;
      if (!v10)
      {
        *(v6 + 16) = v11;
        goto LABEL_11;
      }

      goto LABEL_15;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC45FB44(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  result = sub_1AC459C7C(a2);
  if (!v5)
  {
    if (*(v4 + 56) == 1)
    {
      return a3(a1);
    }

    else
    {
      return a4(a1);
    }
  }

  return result;
}

void sub_1AC45FBAC(unint64_t a1)
{
  sub_1AC45A774();
  OUTLINED_FUNCTION_12_11();
  OUTLINED_FUNCTION_3_19();
  sub_1AC45FC4C(a1);
  sub_1AC45A774();
  OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_0_22();
}

void sub_1AC45FBF4(unint64_t a1)
{
  if (a1 >= 0xA)
  {
    sub_1AC45FBF4(a1 / 0xA);
  }

  sub_1AC45A774();
  OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_0_22();
}

void sub_1AC45FC4C(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0x8000000000000000) != 0)
  {
    sub_1AC45A774();
    OUTLINED_FUNCTION_12_11();
    OUTLINED_FUNCTION_4_12();
    OUTLINED_FUNCTION_13_8(v2);
    v1 = -v1;
  }

  sub_1AC45FBF4(v1);
}

char *sub_1AC45FCA4(char a1, uint64_t a2)
{
  result = sub_1AC459C7C(a2);
  if (!v2)
  {
    if (a1)
    {
      v5 = "true";
      v6 = 4;
    }

    else
    {
      v5 = "false";
      v6 = 5;
    }

    return sub_1AC45FE50(v5, v6, 2);
  }

  return result;
}

char *sub_1AC45FD18(char *a1)
{
  OUTLINED_FUNCTION_11_1();
  result = &v5[v6];
  if (__OFADD__(v6, v5))
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = v5;
  sub_1AC45AE04(result, 1);
  OUTLINED_FUNCTION_17_2();
  result = sub_1AC4600B0((v9 + 32), v3, a1, v8);
  if (v10 < v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v10 < 1)
  {
    goto LABEL_6;
  }

  v11 = *(v1 + 16);
  v12 = __OFADD__(v11, v10);
  v13 = v11 + v10;
  if (!v12)
  {
    *(v1 + 16) = v13;
LABEL_6:
    if (v10 != v3 || result == 0 || result == v5)
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  v16 = *(v1 + 16);
  v18 = *result++;
  v17 = v18;
LABEL_19:
  v19 = *(v1 + 24) >> 1;
  if (v19 < v16 + 1)
  {
    v23 = result;
    v21 = v5;
    sub_1AC45A78C();
    v5 = v21;
    v1 = v22;
    result = v23;
    v19 = *(v1 + 24) >> 1;
  }

  while (1)
  {
    if (v16 >= v19)
    {
      *(v1 + 16) = v16;
      goto LABEL_19;
    }

    *(v1 + v16 + 32) = v17;
    if (result == v5)
    {
      break;
    }

    v20 = *result++;
    v17 = v20;
    ++v16;
  }

  *(v1 + 16) = v16 + 1;
LABEL_14:
  *v2 = v1;
  return result;
}

char *sub_1AC45FE50(char *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    __break(1u);
  }

  else if (a1)
  {
    return sub_1AC45FD18(a1);
  }

  __break(1u);
  return a1;
}

uint64_t sub_1AC45FE64()
{
  OUTLINED_FUNCTION_10_6();
  v4 = OUTLINED_FUNCTION_16_4(v2, v3);
  OUTLINED_FUNCTION_28_1();
  result = sub_1AC51F0B8();
  v6 = result * v4;
  if ((result * v4) >> 64 != (result * v4) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = *v0 + v6;
  if (__OFADD__(*v0, v6))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *v0 = v7;
  MEMORY[0x1EEE9AC00](result);
  v8 = OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_3_6(v8);
  result = OUTLINED_FUNCTION_7_4();
  if (v1)
  {
    return result;
  }

  if (__OFADD__(v7, v9))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  *v0 = v7 + v9;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_10(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a2 = 0;
  a2[1] = v4;

  return swift_willThrow();
}

void *OUTLINED_FUNCTION_17_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(&a9, v9, 0x41uLL);
}

uint64_t OUTLINED_FUNCTION_17_18()
{
  v2 = *(v0 + 16) + 1;

  return sub_1AC4D0918(0, v2, 1);
}

char *sub_1AC4600B0(void *a1, int64_t a2, char *__src, int64_t a4)
{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, v5);
    v4 += v5;
  }

  return v4;
}

unint64_t sub_1AC460144@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v6 = *a1;
  result = sub_1AC451818(a2, a3);
  if (!v4)
  {
    v8 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      result = sub_1AC4519B4(result);
      v9 = v6 + result;
      if (!__OFADD__(v6, result))
      {
        v10 = __OFADD__(v9, v8);
        v11 = v9 + v8;
        if (!v10)
        {
          *a4 = v11;
          return result;
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

void sub_1AC460234()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  v87 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v99 = *(v11 + 8);
  v86 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_0();
  v81 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  v103 = v15 - v16;
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_29_2(v18);
  v100 = *(v4 + 8);
  v95 = v6;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_0();
  v80 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_29_2(v25);
  v101 = v26;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v94 = sub_1AC51F228();
  OUTLINED_FUNCTION_3_0();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_6();
  v97 = v30 - v31;
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v32);
  v34 = v76 - v33;
  v76[1] = sub_1AC451978((8 * v8) | 2u);
  if ((v10 & 0xC000000000000001) != 0)
  {
    v35 = sub_1AC51F368();
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v102 = v35 | 0x8000000000000000;
  }

  else
  {
    OUTLINED_FUNCTION_17_3();
    v36 = v10 + 64;
    OUTLINED_FUNCTION_14_4();
    v38 = v39 & v40;
    v102 = v10;
  }

  v105 = (v80 + 32);
  v104 = v81 + 32;
  v76[3] = v37;
  v77 = (v37 + 64) >> 6;
  v79 = v80 + 16;
  v78 = v81 + 16;
  v92 = (v28 + 32);
  v88 = v100 + 48;
  v85 = v99 + 48;
  v89 = v81 + 8;
  v90 = (v80 + 8);
  v76[2] = v10;

  v41 = 0;
  v42 = v101;
  v84 = v23;
  v93 = v34;
  v96 = v36;
  v43 = v102;
  while (1)
  {
    v91 = v41;
    if ((v43 & 0x8000000000000000) == 0)
    {
      if (!v38)
      {
        v51 = v41;
        v52 = v103;
        while (1)
        {
          v45 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
            break;
          }

          if (v45 >= v77)
          {
            v106 = 0;
            v60 = 1;
            goto LABEL_18;
          }

          v44 = *(v36 + 8 * v45);
          ++v51;
          if (v44)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v44 = v38;
      v45 = v41;
LABEL_14:
      OUTLINED_FUNCTION_9_4(v44);
      OUTLINED_FUNCTION_27_2();
      v46 = v82;
      v53(v82);
      OUTLINED_FUNCTION_27_2();
      v47 = v83;
      v49 = v42;
      v50 = AssociatedTypeWitness;
      v54(v83);
      goto LABEL_15;
    }

    if (sub_1AC51F378())
    {
      v46 = v82;
      sub_1AC51F3C8();
      swift_unknownObjectRelease();
      v47 = v83;
      v48 = v41;
      v49 = v42;
      v50 = AssociatedTypeWitness;
      sub_1AC51F3C8();
      swift_unknownObjectRelease();
      v45 = v48;
      v106 = v38;
LABEL_15:
      v55 = v97;
      v56 = *(TupleTypeMetadata2 + 48);
      v57 = v46;
      v58 = TupleTypeMetadata2;
      (*v105)(v97, v57, v49);
      OUTLINED_FUNCTION_25_2();
      v59(v55 + v56, v47, v50);
      v60 = 0;
      v51 = v45;
      v52 = v103;
      v23 = v84;
      goto LABEL_19;
    }

    v60 = 1;
    v51 = v41;
    v106 = v38;
    v52 = v103;
LABEL_18:
    v55 = v97;
    v58 = TupleTypeMetadata2;
LABEL_19:
    __swift_storeEnumTagSinglePayload(v55, v60, 1, v58);
    v61 = v93;
    (*v92)();
    if (__swift_getEnumTagSinglePayload(v61, 1, v58) == 1)
    {
      break;
    }

    v62 = *(v58 + 48);
    v42 = v101;
    (*v105)(v23, v61, v101);
    OUTLINED_FUNCTION_25_2();
    v63(v52, v61 + v62, AssociatedTypeWitness);
    OUTLINED_FUNCTION_32_1();
    v64(v23, 1);
    if (v2)
    {
      v70 = OUTLINED_FUNCTION_18_3();
      sub_1AC460BE4(v70);
      OUTLINED_FUNCTION_30_1();
      v71(v52, AssociatedTypeWitness);
      (*v90)(v23, v42);
LABEL_28:
      OUTLINED_FUNCTION_61();
      return;
    }

    OUTLINED_FUNCTION_32_1();
    v65(v52, 2);
    OUTLINED_FUNCTION_30_1();
    v66(v52, AssociatedTypeWitness);
    (*v90)(v23, v42);
    v43 = v102;
    v36 = v96;
    OUTLINED_FUNCTION_15_4();
    if (v69)
    {
      goto LABEL_30;
    }

    *v68 = v67;
    v41 = v51;
    v38 = v106;
  }

  v72 = OUTLINED_FUNCTION_18_3();
  sub_1AC460BE4(v72);
  swift_getAssociatedConformanceWitness();
  sub_1AC51ED68();
  OUTLINED_FUNCTION_13_2();
  if (!v73)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_15_4();
  if (!v69)
  {
    *v75 = v74;
    goto LABEL_28;
  }

LABEL_32:
  __break(1u);
}