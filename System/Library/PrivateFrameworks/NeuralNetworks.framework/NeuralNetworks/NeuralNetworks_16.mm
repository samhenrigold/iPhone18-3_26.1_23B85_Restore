uint64_t sub_25BBC5838(char a1)
{
  result = 0x676E696E7261656CLL;
  switch(a1)
  {
    case 1:
      result = 0x6E756F4374696E75;
      break;
    case 2:
      result = 0x6572696469427369;
      break;
    case 3:
      result = 0x6E65727275636572;
      break;
    case 4:
      result = 0x6965577475706E69;
      break;
    case 5:
      result = 1935763810;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BBC591C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BBC562C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BBC5944(uint64_t a1)
{
  v2 = sub_25BBC67DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BBC5980(uint64_t a1)
{
  v2 = sub_25BBC67DC();

  return MEMORY[0x2821FE720](a1, v2);
}

void LSTM.encode(to:)()
{
  OUTLINED_FUNCTION_17_1();
  v30 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5E70, &qword_25BCC7848);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = *v0;
  v11 = *(v0 + 1);
  v28 = *(v0 + 3);
  v29 = v11;
  v27 = v0[32];
  LODWORD(v11) = v0[33];
  v21 = *(v0 + 5);
  LODWORD(v8) = v0[49];
  v22 = v0[48];
  v23 = v8;
  v24 = v0[50];
  v25 = v11;
  v26 = *(v0 + 7);
  LODWORD(v8) = v0[65];
  v19 = v0[64];
  v20 = v8;
  v12 = v0[66];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_25BBC67DC();
  sub_25BCB7B6C();
  LOBYTE(v31) = v10;
  sub_25BBC6830();
  OUTLINED_FUNCTION_12_25();
  v13 = v30;
  sub_25BCB779C();
  if (!v13)
  {
    v14 = v27;
    v15 = v28;
    LODWORD(v30) = v12;
    v16 = v26;
    LOBYTE(v31) = 1;
    OUTLINED_FUNCTION_15_25();
    sub_25BCB778C();
    LOBYTE(v31) = 2;
    OUTLINED_FUNCTION_15_25();
    sub_25BCB776C();
    v31 = v15;
    v32 = v14;
    v33 = v25;
    v17 = sub_25BB39990();

    OUTLINED_FUNCTION_12_25();
    OUTLINED_FUNCTION_15_25();
    sub_25BCB779C();

    if (!v17)
    {
      v31 = v21;
      v32 = v22;
      v33 = v23;
      v34 = v24;
      sub_25BBC6884();

      OUTLINED_FUNCTION_12_25();
      OUTLINED_FUNCTION_15_25();
      sub_25BCB779C();

      v31 = v16;
      v32 = v19;
      v33 = v20;
      v34 = v30;

      OUTLINED_FUNCTION_12_25();
      OUTLINED_FUNCTION_15_25();
      sub_25BCB779C();
    }
  }

  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_16();
}

void LSTM.init(from:)()
{
  OUTLINED_FUNCTION_17_1();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5E90, &qword_25BCC7850);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_16_4();
  type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  v6 = OUTLINED_FUNCTION_9_19();
  sub_25BB1AB60(v6);
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  v7 = OUTLINED_FUNCTION_9_19();
  sub_25BB1AB60(v7);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_25BBC67DC();
  sub_25BCB7B2C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v23 = v4;
    sub_25BBC68D8();
    OUTLINED_FUNCTION_16_29();
    sub_25BCB76AC();
    OUTLINED_FUNCTION_16_29();
    v22 = sub_25BCB769C();
    v43 = v26;
    LOBYTE(v26) = 2;
    OUTLINED_FUNCTION_16_29();
    v8 = sub_25BCB767C();
    sub_25BB3993C();
    OUTLINED_FUNCTION_16_29();
    sub_25BCB76AC();
    v9 = v26;
    v21 = v27;
    v20 = BYTE1(v27);
    sub_25BBC692C();
    OUTLINED_FUNCTION_16_29();
    sub_25BCB76AC();
    v19 = v26;
    v18 = v27;
    v17 = BYTE1(v27);
    v16 = BYTE2(v27);

    OUTLINED_FUNCTION_16_29();
    sub_25BCB76AC();
    v24 = v8 & 1;
    v10 = OUTLINED_FUNCTION_11_27();
    v11(v10);
    v12 = v40;
    v13 = v41;
    v14 = HIBYTE(v41);
    v15 = v42;

    LOBYTE(v25[0]) = v43;
    v25[1] = v22;
    LOBYTE(v25[2]) = v24;
    v25[3] = v26;
    LOWORD(v25[4]) = v27;
    v25[5] = v26;
    LOWORD(v25[6]) = v27;
    BYTE2(v25[6]) = BYTE2(v27);
    v25[7] = v40;
    LOWORD(v25[8]) = v41;
    BYTE2(v25[8]) = v42;
    memcpy(v23, v25, 0x43uLL);
    sub_25BB924FC(v25, &v26);
    __swift_destroy_boxed_opaque_existential_1(v2);
    LOBYTE(v26) = v43;
    v27 = v22;
    v28 = v24;
    v29 = v9;
    v30 = v21;
    v31 = v20;
    v32 = v19;
    v33 = v18;
    v34 = v17;
    v35 = v16;
    v36 = v12;
    v37 = v13;
    v38 = v14;
    v39 = v15;
    sub_25BB92558(&v26);
  }

  OUTLINED_FUNCTION_16();
}

uint64_t LSTM.State.hidden.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t LSTM.State.cell.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_25BBC6254(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6564646968 && a2 == 0xE600000000000000;
  if (v4 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1819043171 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_25BCB789C();

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

uint64_t sub_25BBC6318(char a1)
{
  if (a1)
  {
    return 1819043171;
  }

  else
  {
    return 0x6E6564646968;
  }
}

uint64_t sub_25BBC634C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BBC6254(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BBC6374(uint64_t a1)
{
  v2 = sub_25BBC6980();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BBC63B0(uint64_t a1)
{
  v2 = sub_25BBC6980();

  return MEMORY[0x2821FE720](a1, v2);
}

void LSTM.State.encode(to:)()
{
  OUTLINED_FUNCTION_17_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5EA8, &qword_25BCC7858);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  v10 = *(v0 + 8);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v9 = sub_25BBC6980();

  sub_25BCB7B6C();
  v11 = 0;
  sub_25BB1B95C();
  OUTLINED_FUNCTION_15_25();
  sub_25BCB779C();

  if (!v9)
  {
    v11 = 1;

    OUTLINED_FUNCTION_15_25();
    sub_25BCB779C();
  }

  (*(v5 + 8))(v8, v3);
  OUTLINED_FUNCTION_16();
}

void LSTM.State.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_17_1();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FBB5EB8, &qword_25BCC7860);
  OUTLINED_FUNCTION_2();
  v17 = v16;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v18);
  v20 = &v21 - v19;
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_25BBC6980();
  sub_25BCB7B2C();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v22 = 0;
    sub_25BB1B9B0();
    OUTLINED_FUNCTION_17_27(&type metadata for Tensor);
    v22 = 1;
    OUTLINED_FUNCTION_17_27(&type metadata for Tensor);
    (*(v17 + 8))(v20, v15);
    *v14 = a10;
    v14[1] = a10;

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_16();
}

uint64_t LSTMLayerOperationBackwardContext.deinit()
{

  return v0;
}

uint64_t LSTMLayerOperationBackwardContext.__deallocating_deinit()
{
  LSTMLayerOperationBackwardContext.deinit();
  OUTLINED_FUNCTION_30_0();

  return swift_deallocClassInstance();
}

unint64_t sub_25BBC67DC()
{
  result = qword_27FBB5E78;
  if (!qword_27FBB5E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5E78);
  }

  return result;
}

unint64_t sub_25BBC6830()
{
  result = qword_27FBB5E80;
  if (!qword_27FBB5E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5E80);
  }

  return result;
}

unint64_t sub_25BBC6884()
{
  result = qword_27FBB5E88;
  if (!qword_27FBB5E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5E88);
  }

  return result;
}

unint64_t sub_25BBC68D8()
{
  result = qword_27FBB5E98;
  if (!qword_27FBB5E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5E98);
  }

  return result;
}

unint64_t sub_25BBC692C()
{
  result = qword_27FBB5EA0;
  if (!qword_27FBB5EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5EA0);
  }

  return result;
}

unint64_t sub_25BBC6980()
{
  result = qword_27FBB5EB0;
  if (!qword_27FBB5EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5EB0);
  }

  return result;
}

uint64_t sub_25BBC69D4(uint64_t a1)
{
  result = sub_25BCB6E8C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25BBC6A54(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v5 + 80);
  v10 = *(*(v4 - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = v10 + ((v9 + 8) & ~v9);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 < 2)
    {
LABEL_28:
      if ((v7 & 0x80000000) != 0)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload((a1 + v9 + 8) & ~v9, v6, v4);
        if (EnumTagSinglePayload >= 2)
        {
          return EnumTagSinglePayload - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v18) = -1;
        }

        return (v18 + 1);
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_28;
  }

LABEL_20:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    switch(v12)
    {
      case 2:
        LODWORD(v12) = *a1;
        break;
      case 3:
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v12) = *a1;
        break;
      default:
        LODWORD(v12) = *a1;
        break;
    }
  }

  return v8 + (v12 | v17) + 1;
}

void sub_25BBC6C08(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  v13 = (v12 + 8) & ~v12;
  v14 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v14;
  }

  v15 = v13 + v14;
  v16 = 8 * (v13 + v14);
  v17 = a3 >= v11;
  v18 = a3 - v11;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v19 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v19))
      {
        v6 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v6 = v20;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v11 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_62:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v10 & 0x80000000) != 0)
          {
            v25 = (&a1[v12 + 8] & ~v12);
            if (v10 >= a2)
            {
              v29 = a2 + 1;
              v30 = &a1[v12 + 8] & ~v12;

              __swift_storeEnumTagSinglePayload(v30, v29, v9, v7);
            }

            else
            {
              if (v14 <= 3)
              {
                v26 = ~(-1 << (8 * v14));
              }

              else
              {
                v26 = -1;
              }

              if (v14)
              {
                v27 = v26 & (~v10 + a2);
                if (v14 <= 3)
                {
                  v28 = v14;
                }

                else
                {
                  v28 = 4;
                }

                bzero(v25, v14);
                switch(v28)
                {
                  case 2:
                    *v25 = v27;
                    break;
                  case 3:
                    *v25 = v27;
                    v25[2] = BYTE2(v27);
                    break;
                  case 4:
                    *v25 = v27;
                    break;
                  default:
                    *v25 = v27;
                    break;
                }
              }
            }
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v24 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v24 = a2 - 1;
            }

            *a1 = v24;
          }
        }

        break;
    }
  }

  else
  {
    v21 = ~v11 + a2;
    if (v15 < 4)
    {
      v22 = (v21 >> v16) + 1;
      if (v15)
      {
        v23 = v21 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v15 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v21;
      v22 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v15] = v22;
        break;
      case 2:
        *&a1[v15] = v22;
        break;
      case 3:
        goto LABEL_62;
      case 4:
        *&a1[v15] = v22;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_25BBC6EF4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25BBC6F74(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 8) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 8) & ~v7, v6, v4);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_25BBC70F4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 8) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v22 = &a1[v10 + 8] & ~v10;

            __swift_storeEnumTagSinglePayload(v22, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *a1 = v21;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_25BBC7344(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 67))
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

uint64_t sub_25BBC7384(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 66) = 0;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 67) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 67) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LSTM.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_25BBC7500(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BBC7608()
{
  result = qword_27FBB60C0;
  if (!qword_27FBB60C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB60C0);
  }

  return result;
}

unint64_t sub_25BBC7660()
{
  result = qword_27FBB60C8;
  if (!qword_27FBB60C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB60C8);
  }

  return result;
}

unint64_t sub_25BBC76B8()
{
  result = qword_27FBB60D0;
  if (!qword_27FBB60D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB60D0);
  }

  return result;
}

unint64_t sub_25BBC7710()
{
  result = qword_27FBB60D8;
  if (!qword_27FBB60D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB60D8);
  }

  return result;
}

unint64_t sub_25BBC7768()
{
  result = qword_27FBB60E0;
  if (!qword_27FBB60E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB60E0);
  }

  return result;
}

unint64_t sub_25BBC77C0()
{
  result = qword_27FBB60E8;
  if (!qword_27FBB60E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB60E8);
  }

  return result;
}

double sub_25BBC789C(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_25BBC78FC(uint64_t a1)
{
  v4 = sub_25BAC4018();
  v5 = sub_25BB3EE04(v4, a1);
  if (!v5)
  {
    goto LABEL_8;
  }

  v7 = v5;
  v8 = v6;
  v9 = sub_25BAC4018();
  v10 = sub_25BB3EE04(v9, a1);
  if (!v10)
  {
    swift_unknownObjectRelease();
LABEL_8:
    v23 = sub_25BAD5A00();
    v25 = v24;
    sub_25BB0E2EC();
    swift_allocError();
    *v26 = v23;
    *(v26 + 8) = v25;
    *(v26 + 16) = 0x4000;
    swift_willThrow();
    return ObjectType;
  }

  v12 = v10;
  v43 = v11;
  ObjectType = swift_getObjectType();
  v13 = *(v8 + 8);
  v13((&v44 + 4), ObjectType, v8);
  v14 = sub_25BC8FACC();
  v15 = dynamic_cast_existential_2_conditional(v14, v14, MEMORY[0x277D82DD8], &protocol descriptor for TensorScalar);
  if (!v15)
  {
    v27 = sub_25BAD5A00();
    v29 = v28;
    sub_25BB0E2EC();
    swift_allocError();
    *v30 = v27;
    *(v30 + 8) = v29;
    *(v30 + 16) = 24576;
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_11:
    swift_unknownObjectRelease();
    return ObjectType;
  }

  v40 = v17;
  v41 = v16;
  v42 = v15;
  v13((&v44 + 3), ObjectType, v8);
  v18 = v12;
  v19 = BYTE3(v44);
  v20 = swift_getObjectType();
  v38 = *(v43 + 8);
  v39 = v20;
  v38((&v44 + 2));
  if (v19 != BYTE2(v44))
  {
    v31 = sub_25BAD5A00();
    v33 = v32;
    v13((&v44 + 1), ObjectType, v8);
    v34 = BYTE1(v44);
    (v38)(&v44, v39, v43);
    v35 = v34 | (v44 << 8) | 0xA000;
    sub_25BB0E2EC();
    swift_allocError();
    *v36 = v31;
    *(v36 + 8) = v33;
    *(v36 + 16) = v35;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
  ObjectType = swift_allocObject();
  *(ObjectType + 16) = xmmword_25BCBAE50;
  v21 = sub_25BBC7C18(v7, v8, v18, v43, v42, v42, v41, v40);
  if (v1)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *(ObjectType + 16) = 0;
  }

  else
  {
    *(ObjectType + 32) = v21;
    *(ObjectType + 40) = v22;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return ObjectType;
}

uint64_t sub_25BBC7C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = sub_25BCB564C();
  v15 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a6;
  v31 = a7;
  v36 = a6;
  v37 = a7;
  v18 = v33;
  v32 = a8;
  v38 = a8;
  v39 = a1;
  v19 = a3;
  v40 = a2;
  v41 = a3;
  v42 = a4;
  v43 = v33;
  sub_25BCB563C();
  v20 = v34;
  v21 = sub_25BCB562C();
  if (v20)
  {
    (*(v15 + 8))(v17, v35);
  }

  else
  {
    v22 = *(v15 + 8);
    v34 = v21;
    v22(v17, v35);
    v23 = *(v18 + 56);
    v24 = *(v18 + 64);
    type metadata accessor for NativeTensorStorage(0);
    v45 = v23;
    v44 = v24;
    sub_25BCB617C();
    sub_25BBC0130(&v45, &v44, 0, 0);
    a3 = v25;
    ObjectType = swift_getObjectType();
    v27 = MEMORY[0x28223BE20](ObjectType);
    v28 = v31;
    *(&v30 - 10) = v30;
    *(&v30 - 9) = v28;
    *(&v30 - 8) = v32;
    *(&v30 - 7) = v19;
    *(&v30 - 6) = a4;
    *(&v30 - 5) = a3;
    *(&v30 - 4) = a1;
    *(&v30 - 3) = a2;
    *(&v30 - 2) = v34;
    (*(a2 + 64))(sub_25BBC8B68, v27);
  }

  return a3;
}

uint64_t sub_25BBC7E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = a5;
  v39 = a6;
  v37 = sub_25BCB56AC();
  v44 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25BCB577C();
  v42 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v40 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v43 = &v36 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v36 - v19;
  ObjectType = swift_getObjectType();
  (*(a3 + 16))(&v45, ObjectType, a3);
  sub_25BB46100(v10);
  v41 = v20;
  sub_25BCB578C();

  v22 = *(v44 + 8);
  v44 += 8;
  v23 = v37;
  v22(v10, v37);
  v24 = swift_getObjectType();
  (*(v38 + 2))(&v45, v24);
  sub_25BB46100(v10);
  v38 = v17;
  sub_25BCB578C();

  v22(v10, v23);
  v25 = *(v39 + 152);
  swift_getWitnessTable();
  switch(v25)
  {
    case 1:
      v27 = v40;
      v26 = v41;
      v28 = v38;
      sub_25BCB569C();
      break;
    case 2:
      v27 = v40;
      v26 = v41;
      v28 = v38;
      sub_25BCB566C();
      break;
    case 3:
      v27 = v40;
      v26 = v41;
      v28 = v38;
      sub_25BCB565C();
      break;
    case 4:
      v27 = v40;
      v26 = v41;
      v28 = v38;
      sub_25BCB56DC();
      break;
    case 5:
      v27 = v40;
      v26 = v41;
      v28 = v38;
      sub_25BCB56BC();
      break;
    case 6:
      v27 = v40;
      v26 = v41;
      v28 = v38;
      sub_25BCB56CC();
      break;
    case 7:
      v27 = v40;
      v26 = v41;
      v28 = v38;
      sub_25BCB568C();
      break;
    default:
      v27 = v40;
      v26 = v41;
      v28 = v38;
      sub_25BCB567C();
      break;
  }

  v29 = v42;
  v30 = v43;
  v31 = *(v42 + 32);
  v31(v43, v27, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4920, &qword_25BCBFB38);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_25BCBAE50;
  *(v32 + 56) = v11;
  *(v32 + 64) = swift_getWitnessTable();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v32 + 32));
  v31(boxed_opaque_existential_0, v30, v11);
  v34 = *(v29 + 8);
  v34(v28, v11);
  v34(v26, v11);
  return v32;
}

uint64_t sub_25BBC8390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  ObjectType = swift_getObjectType();
  v21 = a9;
  v22 = a10;
  v23 = a5;
  v24 = a1;
  v25 = a2;
  v26 = a6;
  v27 = a7;
  v28 = a3;
  v29 = a4;
  v30 = a8;
  return (*(a4 + 64))(sub_25BBC8B94, v20, MEMORY[0x277D84F78] + 8, ObjectType, a4);
}

uint64_t sub_25BBC84BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v21 = a13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4910, &qword_25BCBFB28);
  result = swift_allocObject();
  v67 = result;
  *(result + 16) = xmmword_25BCBAE90;
  v61 = a5;
  v63 = a7;
  if (a1)
  {
    v23 = *(*(a13 - 8) + 72);
    if (!v23)
    {
      __break(1u);
      goto LABEL_50;
    }

    if (a2 - a1 == 0x8000000000000000 && v23 == -1)
    {
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v62 = (a2 - a1) / v23;
  }

  else
  {
    v62 = 0;
  }

  v70[0] = *(a3 + 16);
  sub_25BCB617C();
  v25 = sub_25BC6FC68();
  a3 = sub_25BBFCCC8(1, v25);
  a5 = v26;
  v15 = v27;
  a7 = v28;
  v65 = a13;
  if (v28)
  {
    sub_25BCB78DC();
    swift_unknownObjectRetain_n();
    v29 = swift_dynamicCastClass();
    if (!v29)
    {
      swift_unknownObjectRelease();
      v29 = MEMORY[0x277D84F90];
    }

    v30 = *(v29 + 16);

    if (__OFSUB__(a7 >> 1, v15))
    {
      goto LABEL_52;
    }

    if (v30 != (a7 >> 1) - v15)
    {
      goto LABEL_53;
    }

    v31 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v21 = a13;
    v15 = v62;
    if (v31)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  while (1)
  {
    sub_25BABA62C(a3, a5, v15, a7);
    v15 = v62;
LABEL_16:
    swift_unknownObjectRelease();
LABEL_17:
    a3 = a14;
    sub_25BCB6C0C();
    result = memcpy((v67 + 32), __src, 0xA0uLL);
    if (a4)
    {
      v32 = *(*(v21 - 8) + 72);
      if (!v32)
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      if (v61 - a4 == 0x8000000000000000 && v32 == -1)
      {
        goto LABEL_59;
      }

      v34 = a14;
      v62 = (v61 - a4) / v32;
    }

    else
    {
      v34 = a14;
      v62 = 0;
    }

    ObjectType = swift_getObjectType();
    a5 = v63;
    v36 = *(v63 + 16);
    v36(v70, ObjectType, v63);
    v36(v69, ObjectType, v63);
    v71 = v69[0];
    v37 = sub_25BC6FC68();

    a3 = sub_25BBFCCC8(1, v37);
    v39 = v38;
    a7 = v40;
    v42 = v41;
    if ((v41 & 1) == 0)
    {
      goto LABEL_26;
    }

    sub_25BCB78DC();
    swift_unknownObjectRetain_n();
    v44 = swift_dynamicCastClass();
    if (!v44)
    {
      swift_unknownObjectRelease();
      v44 = MEMORY[0x277D84F90];
    }

    v45 = *(v44 + 16);

    if (__OFSUB__(v42 >> 1, a7))
    {
      __break(1u);
LABEL_55:
      v34 = a5;
      swift_unknownObjectRelease();
      v21 = v65;
LABEL_26:
      v15 = sub_25BABA62C(a3, v39, a7, v42);
      v43 = a8;
      a5 = v34;
      goto LABEL_33;
    }

    a5 = v34;
    if (v45 != (v42 >> 1) - a7)
    {
      goto LABEL_55;
    }

    v15 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v43 = a8;
    v21 = v65;
    if (v15)
    {
      goto LABEL_34;
    }

    v15 = MEMORY[0x277D84F90];
LABEL_33:
    swift_unknownObjectRelease();
LABEL_34:
    sub_25BCB6C0C();
    result = memcpy((v67 + 192), v69, 0xA0uLL);
    if (!v43)
    {
      goto LABEL_40;
    }

    v46 = *(*(v21 - 8) + 72);
    if (v46)
    {
      break;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    swift_unknownObjectRelease();
    v21 = v65;
  }

  if (a9 - v43 != 0x8000000000000000 || v46 != -1)
  {
LABEL_40:
    v48 = swift_getObjectType();
    v49 = *(a11 + 16);
    v49(&v71, v48, a11);
    v49(v70, v48, a11);
    v50 = sub_25BC6FC68();

    v51 = sub_25BBFCCC8(1, v50);
    v53 = v52;
    v55 = v54;
    v57 = v56;
    if ((v56 & 1) == 0)
    {
      goto LABEL_41;
    }

    sub_25BCB78DC();
    swift_unknownObjectRetain_n();
    v58 = swift_dynamicCastClass();
    if (!v58)
    {
      swift_unknownObjectRelease();
      v58 = MEMORY[0x277D84F90];
    }

    v59 = *(v58 + 16);

    if (__OFSUB__(v57 >> 1, v55))
    {
      __break(1u);
    }

    else if (v59 == (v57 >> 1) - v55)
    {
      v60 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (!v60)
      {
        goto LABEL_47;
      }

      goto LABEL_48;
    }

    swift_unknownObjectRelease();
LABEL_41:
    sub_25BABA62C(v51, v53, v55, v57);
LABEL_47:
    swift_unknownObjectRelease();
LABEL_48:
    sub_25BCB6C0C();
    memcpy((v67 + 352), v70, 0xA0uLL);
    v71 = v67;
    sub_25BCB579C();
  }

LABEL_60:
  __break(1u);
  return result;
}

unint64_t sub_25BBC8AB4(uint64_t a1)
{
  result = sub_25BBC8ADC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25BBC8ADC()
{
  result = qword_28154D288[0];
  if (!qword_28154D288[0])
  {
    type metadata accessor for BinaryArithmeticOperation();
    result = swift_getWitnessTable();
    atomic_store(result, qword_28154D288);
  }

  return result;
}

uint64_t sub_25BBC8BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    MEMORY[0x28223BE20](a1);
    v8[0] = v3;
    v8[1] = a3;
    v9 = v5;
    v10 = v6;
    sub_25BBA7DBC(sub_25BBC9488);
  }

  else
  {
    MEMORY[0x28223BE20](0);
    v9 = v3;
    v10 = a3;
    sub_25BAD8524(sub_25BBC946C, v8);
  }

  swift_unknownObjectRelease();
  return sub_25BAD700C(a3);
}

void *sub_25BBC8CAC(uint64_t a1)
{
  v2 = v1;
  v2[2] = MEMORY[0x277D84F98];
  swift_weakInit();
  swift_weakInit();
  v2[6] = a1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v2[5] = sub_25BAA6F2C();
  return v2;
}

uint64_t sub_25BBC8D1C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (*(*(a1 + 16) + 16))
  {
    sub_25BAD885C(a2);
    if (v8)
    {
      return swift_endAccess();
    }
  }

  swift_endAccess();
  if (*(a1 + 48) <= *(*(a1 + 16) + 16))
  {
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      BYTE4(v17) = 9;
      sub_25BA97890("evictTailIfNeeded()", 19, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/TensorFunctionExecutorCache.swift", 118, 2, 178, v11, v14, 0xD000000000000036, 0x800000025BCE0110, v16[2], v16[3], v16[4], v16[5], v16[6], v16[7], v16[8], v16[9], v17, v18, v19, v20, v21);
    }

    v12 = Strong;
    if (swift_weakLoadStrong())
    {
      swift_weakLoadStrong();
      swift_weakAssign();
    }

    swift_weakLoadStrong();
    swift_weakAssign();

    if (swift_weakLoadStrong())
    {
      swift_weakAssign();
    }

    swift_beginAccess();
    sub_25BBC96AC((v12 + 16));
    swift_endAccess();
  }

  sub_25BAD6F54(a2, v16);
  swift_weakLoadStrong();
  type metadata accessor for LazyTensorFunctionExecutorCache.CacheValue();
  swift_allocObject();
  swift_unknownObjectRetain();
  v13 = sub_25BBC9348(v16, a3, a4);
  if (swift_weakLoadStrong())
  {
    swift_weakAssign();
  }

  swift_weakAssign();
  if (swift_weakLoadStrong())
  {
  }

  else
  {
    swift_weakAssign();
  }

  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a1 + 16);
  sub_25BC1A738(v13, a2);
  *(a1 + 16) = v15;
  swift_endAccess();
}

uint64_t sub_25BBC8FF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  if (!*(v6 + 16) || (v7 = sub_25BAD885C(a2), (v8 & 1) == 0))
  {
    result = swift_endAccess();
LABEL_6:
    *a3 = 0;
    a3[1] = 0;
    return result;
  }

  v9 = *(*(v6 + 56) + 8 * v7);
  swift_endAccess();
  if (swift_weakLoadStrong())
  {
    swift_weakLoadStrong();
    swift_weakAssign();
  }

  else
  {
  }

  if (swift_weakLoadStrong())
  {
    swift_weakLoadStrong();
    swift_weakAssign();
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;

    if (v12 == v9)
    {
      swift_weakLoadStrong();
      swift_weakAssign();

      if (swift_weakLoadStrong())
      {
        swift_weakAssign();
      }
    }
  }

  v13 = swift_weakLoadStrong();
  if (v13)
  {
    v14 = v13;

    if (v14 == v9)
    {
      swift_weakLoadStrong();
      swift_weakAssign();

      if (swift_weakLoadStrong())
      {
        swift_weakAssign();
      }
    }
  }

  swift_beginAccess();
  v15 = sub_25BBC96AC(a2);
  swift_endAccess();

  if (!v15)
  {
    goto LABEL_6;
  }

  v16 = *(v15 + 104);
  swift_unknownObjectRetain();

  *a3 = v16;
  return result;
}

uint64_t sub_25BBC9228(uint64_t a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB6100, &unk_25BCC80B0);
  sub_25BCB619C();
  swift_endAccess();
  swift_weakAssign();
  return swift_weakAssign();
}

uint64_t sub_25BBC92B8()
{

  swift_weakDestroy();
  swift_weakDestroy();

  return v0;
}

uint64_t sub_25BBC92F0()
{
  sub_25BBC92B8();

  return swift_deallocClassInstance();
}

void *sub_25BBC9348(const void *a1, uint64_t a2, uint64_t a3)
{
  swift_weakInit();
  swift_weakInit();
  memcpy(v3 + 2, a1, 0x58uLL);
  v3[13] = a2;
  v3[14] = a3;
  swift_weakAssign();

  swift_weakAssign();

  return v3;
}

uint64_t sub_25BBC93E0()
{
  sub_25BAD700C(v0 + 16);
  swift_unknownObjectRelease();
  swift_weakDestroy();
  swift_weakDestroy();
  return v0;
}

uint64_t sub_25BBC9418()
{
  sub_25BBC93E0();

  return swift_deallocClassInstance();
}

uint64_t sub_25BBC94A8(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v14 = sub_25BAFEE6C(a1);
    if (v15)
    {
      v16 = v14;
      swift_isUniquelyReferenced_nonNull_native();
      v17 = *v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5E18, &qword_25BCC7148);
      sub_25BCB745C();
      v8 = v17;

      v13 = *(*(v17 + 56) + 8 * v16);
      sub_25BB2BA50(0, &qword_27FBB3908, 0x277CD7888);
      sub_25BB2BA50(0, &qword_27FBB5E00, 0x277CD7880);
      sub_25BBB9B10();
      sub_25BCB747C();
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_25BCB74AC();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();
  sub_25BCB617C();
  v7 = sub_25BCB749C();
  v8 = sub_25BBB9804(v4, v7);

  v9 = sub_25BAFEE6C(v5);
  v11 = v10;

  if (v11)
  {

    v13 = *(*(v8 + 56) + 8 * v9);
    sub_25BB2BA50(0, &qword_27FBB3908, 0x277CD7888);
    sub_25BB2BA50(0, &qword_27FBB5E00, 0x277CD7880);
    sub_25BBB9B10();
    sub_25BCB747C();

LABEL_10:
    *v2 = v8;
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BBC96AC(uint64_t *a1)
{
  v2 = v1;
  v3 = sub_25BAD885C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB66B0, &unk_25BCC80A0);
  sub_25BCB745C();
  sub_25BAD700C(*(v8 + 48) + 88 * v5);
  v6 = *(*(v8 + 56) + 8 * v5);
  type metadata accessor for LazyTensorFunctionExecutorCache.CacheValue();
  sub_25BBC978C();
  sub_25BCB747C();
  *v2 = v8;
  return v6;
}

unint64_t sub_25BBC978C()
{
  result = qword_27FBB60F8;
  if (!qword_27FBB60F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB60F8);
  }

  return result;
}

uint64_t sub_25BBC97E0(uint64_t a1)
{
  v2 = v1;
  if (qword_27FBB33A8 != -1)
  {
    a1 = swift_once();
  }

  v3 = qword_27FBB6110;
  MEMORY[0x28223BE20](a1);

  os_unfair_lock_lock((v3 + 24));
  sub_25BBCA3E8((v3 + 16), &v5);
  os_unfair_lock_unlock((v3 + 24));
  if (!v1)
  {
    v2 = v5;
  }

  return v2;
}

id sub_25BBC98B8()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = [objc_opt_self() deviceWithMTLDevice_];
    v4 = *(v0 + 40);
    *(v0 + 40) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_25BBC9934()
{
  v1 = *(v0 + 32);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  if (v2 == -1)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 16) = v2 + 1;
    os_unfair_lock_unlock((v1 + 24));
  }
}

id sub_25BBC998C()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v1 = sub_25BBC9BE4(v0);
    *(v0 + 56) = v1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v1;
}

id sub_25BBC99EC()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v1 = sub_25BBC9CD8(v0);
    *(v0 + 64) = v1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v1;
}

uint64_t *sub_25BBC9A4C(NSUInteger a1, int a2)
{

  v4 = objc_autoreleasePoolPush();
  sub_25BBC9F28();
  sub_25BAA3234();
  sub_25BBC9B60();
  v5 = sub_25BB3AB10(a1, a2);

  sub_25BAA3258();

  objc_autoreleasePoolPop(v4);
  return v5;
}

uint64_t sub_25BBC9AEC(uint64_t a1)
{
  type metadata accessor for SharedMetalDevice();
  v1 = sub_25BCB614C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6138, &qword_25BCC8148);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v1;
  qword_27FBB6110 = result;
  return result;
}

uint64_t sub_25BBC9B60()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v2 = v0;
    type metadata accessor for MPSAllocator();
    swift_allocObject();
    v3 = swift_unknownObjectRetain();
    v1 = sub_25BB3AA1C(v3);
    *(v2 + 48) = v1;
  }

  return v1;
}

id sub_25BBC9BE4(uint64_t a1)
{
  result = [*(a1 + 16) newSharedEvent];
  if (!result)
  {
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD00000000000002BLL, 0x800000025BCE03C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB6120, &qword_25BCBF508);
    sub_25BCB73CC();
    BYTE4(v12) = 3;
    sub_25BCB617C();
    sub_25BA97890("sharedCompletionEvent", 21, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/MPSGraph/SharedMetalDevice.swift", 117, 2, 56, v2, v3, 0, 0xE000000000000000, 0, 0xE000000000000000, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  }

  return result;
}

id sub_25BBC9CD8(uint64_t a1)
{
  result = [*(a1 + 16) newEvent];
  if (!result)
  {
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD00000000000002ALL, 0x800000025BCE02F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB6120, &qword_25BCBF508);
    sub_25BCB73CC();
    BYTE4(v12) = 3;
    sub_25BCB617C();
    sub_25BA97890("localCompletionevent", 20, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/MPSGraph/SharedMetalDevice.swift", 117, 2, 66, v2, v3, 0, 0xE000000000000000, 0, 0xE000000000000000, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  }

  return result;
}

uint64_t sub_25BBC9DCC(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6130, &qword_25BCC8140);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = 0;
  *(v2 + 32) = v4;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0;
  *(v2 + 16) = a1;
  v5 = [swift_unknownObjectRetain() newCommandQueue];
  if (!v5)
  {
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD00000000000002ALL, 0x800000025BCE0410);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB6120, &qword_25BCBF508);
    sub_25BCB73CC();
    BYTE4(v18) = 3;
    sub_25BCB617C();
    sub_25BA97890("init(_:)", 8, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/MPSGraph/SharedMetalDevice.swift", 117, 2, 77, v8, v9, 0, 0xE000000000000000, 0, 0xE000000000000000, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
  }

  v6 = v5;
  swift_unknownObjectRelease();
  *(v2 + 24) = v6;
  return v2;
}

uint64_t sub_25BBC9F28()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v2 = v0;
    type metadata accessor for UnfairLock();
    swift_allocObject();
    v1 = sub_25BAA6F2C();
    *(v2 + 72) = v1;
  }

  return v1;
}

uint64_t sub_25BBC9F9C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_25BBC9FF4()
{
  sub_25BBC9F9C();

  return swift_deallocClassInstance();
}

id sub_25BBCA04C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{

  sub_25BA9D8C4(a4, a5);
  v16 = objc_autoreleasePoolPush();
  sub_25BBC9F28();
  sub_25BAA3234();
  v11 = *(v5 + 16);
  if (a4)
  {
    aBlock[4] = a4;
    aBlock[5] = a5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25BBCA1A8;
    aBlock[3] = &block_descriptor_1;
    v12 = _Block_copy(aBlock);
  }

  else
  {
    v12 = 0;
  }

  if ((a3 & 0xFE) != 0)
  {
    v13 = 48;
  }

  else
  {
    v13 = 0;
  }

  v14 = [v11 newBufferWithBytesNoCopy:a1 length:a2 options:v13 deallocator:v12];
  _Block_release(v12);
  sub_25BAA3258();

  sub_25BA9D148(a4, a5);

  objc_autoreleasePoolPop(v16);
  return v14;
}

uint64_t sub_25BBCA1A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

id sub_25BBCA208(uint64_t a1, char a2)
{

  v5 = objc_autoreleasePoolPush();
  v6 = sub_25BBC9F28();
  v7 = sub_25BBFA7F0(v6, v2, a1, a2);

  objc_autoreleasePoolPop(v5);
  return v7;
}

void sub_25BBCA288(id a1@<X1>, uint64_t *a2@<X0>, uint64_t *a3@<X8>)
{
  sub_25BB3F020([a1 registryID], *a2);
  if (v6)
  {
    *a3 = v6;
  }

  else if (MPSSupportsMTLDevice(a1))
  {
    type metadata accessor for SharedMetalDevice();
    swift_allocObject();
    v7 = swift_unknownObjectRetain();
    v8 = sub_25BBC9DCC(v7);
    v9 = [a1 registryID];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_25BC1A840(v8, v9, isUniquelyReferenced_nonNull_native, v11, v12, v13, v14, v15, v19, *a2);
    *a2 = v20[0];
    *a3 = v8;
  }

  else
  {
    v20[3] = &unk_286D4F738;
    v20[4] = &off_286D4F7B8;
    v20[5] = a1;
    v16 = swift_unknownObjectRetain_n();
    v21 = sub_25BC176D0(v16);
    sub_25BBA7EB8();
    swift_allocError();
    v18 = v17;
    sub_25BABEF40(v20, v17);
    *(v18 + 108) = 19;
    swift_willThrow();
    sub_25BABF0A8(v20);
  }
}

void static Tensor..< infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25BBCAF0C();
}

{
  sub_25BBCB0AC();
}

uint64_t static Tensor..<= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = a3;
  v10[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v10);
  v8 = (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  Tensor.scalarType.getter(v8);
  OUTLINED_FUNCTION_35_12();
  Tensor.init(coercing:scalarType:on:)();
  static Tensor..<= infix(_:_:)(&v11, a2);
}

void sub_25BBCAF0C()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  OUTLINED_FUNCTION_50_6();
  v4 = v3;
  OUTLINED_FUNCTION_17_28();
  MEMORY[0x28223BE20](v5);
  v9 = OUTLINED_FUNCTION_4_41(v6, v7, v8);
  v11 = v10(v9);
  Tensor.scalarType.getter(v11);
  OUTLINED_FUNCTION_21_21();
  v12();
  OUTLINED_FUNCTION_49_9();
  if (sub_25BAA80BC(v0, &unk_286D42270) && sub_25BAA80BC(v4, &unk_286D427E8) || ((OUTLINED_FUNCTION_48_7(), v13) ? (v13 = v0 == 12) : (v13 = 0), !v13 ? (v14 = v4 == 12) : (v14 = 0), v14))
  {
    v22 = OUTLINED_FUNCTION_20_19();
    v23(v22);
    OUTLINED_FUNCTION_8_31();
    OUTLINED_FUNCTION_54_6();
    OUTLINED_FUNCTION_18_24(v24);
  }

  else
  {
    OUTLINED_FUNCTION_55_3();
    OUTLINED_FUNCTION_27_18();
    v16 = v15();
    Tensor.scalarType.getter(v16);
    OUTLINED_FUNCTION_35_12();
    OUTLINED_FUNCTION_8_31();
    OUTLINED_FUNCTION_25_17(v17, v18, v19, v20, v21);
  }

  v2(&v25, v4);

  OUTLINED_FUNCTION_10_16();
}

void static Tensor..>= infix<A>(_:_:)()
{
  sub_25BBCAF0C();
}

{
  sub_25BBCB0AC();
}

void sub_25BBCB0AC()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  OUTLINED_FUNCTION_50_6();
  v4 = v3;
  OUTLINED_FUNCTION_17_28();
  MEMORY[0x28223BE20](v5);
  v9 = OUTLINED_FUNCTION_4_41(v6, v7, v8);
  v11 = v10(v9);
  Tensor.scalarType.getter(v11);
  OUTLINED_FUNCTION_21_21();
  v12();
  OUTLINED_FUNCTION_49_9();
  if (sub_25BAA80BC(v0, &unk_286D42270) && sub_25BAA80BC(v4, &unk_286D427E8) || ((OUTLINED_FUNCTION_48_7(), v13) ? (v13 = v0 == 12) : (v13 = 0), !v13 ? (v14 = v4 == 12) : (v14 = 0), v14))
  {
    v22 = OUTLINED_FUNCTION_20_19();
    v23(v22);
    OUTLINED_FUNCTION_8_31();
    OUTLINED_FUNCTION_54_6();
    OUTLINED_FUNCTION_18_24(v24);
  }

  else
  {
    OUTLINED_FUNCTION_55_3();
    OUTLINED_FUNCTION_27_18();
    v16 = v15();
    Tensor.scalarType.getter(v16);
    OUTLINED_FUNCTION_35_12();
    OUTLINED_FUNCTION_8_31();
    OUTLINED_FUNCTION_25_17(v17, v18, v19, v20, v21);
  }

  v2(v4, &v25);

  OUTLINED_FUNCTION_10_16();
}

void static Tensor..== infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_25BBCB4D0();
}

{
  sub_25BBCB658();
}

void static Tensor..!= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_25BBCB4D0();
}

{
  sub_25BBCB658();
}

void sub_25BBCB4D0()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  OUTLINED_FUNCTION_50_6();
  v4 = v3;
  OUTLINED_FUNCTION_17_28();
  MEMORY[0x28223BE20](v5);
  v9 = OUTLINED_FUNCTION_4_41(v6, v7, v8);
  v11 = v10(v9);
  Tensor.scalarType.getter(v11);
  OUTLINED_FUNCTION_21_21();
  v12();
  OUTLINED_FUNCTION_49_9();
  if (sub_25BAA80BC(v0, &unk_286D42270) && sub_25BAA80BC(v4, &unk_286D427E8) || ((OUTLINED_FUNCTION_48_7(), v13) ? (v13 = v0 == 12) : (v13 = 0), !v13 ? (v14 = v4 == 12) : (v14 = 0), v14))
  {
    v22 = OUTLINED_FUNCTION_20_19();
    v23(v22);
    OUTLINED_FUNCTION_8_31();
    OUTLINED_FUNCTION_54_6();
    OUTLINED_FUNCTION_18_24(v24);
  }

  else
  {
    OUTLINED_FUNCTION_55_3();
    OUTLINED_FUNCTION_27_18();
    v16 = v15();
    Tensor.scalarType.getter(v16);
    OUTLINED_FUNCTION_35_12();
    OUTLINED_FUNCTION_8_31();
    OUTLINED_FUNCTION_25_17(v17, v18, v19, v20, v21);
  }

  v2(&v25, v4);

  OUTLINED_FUNCTION_10_16();
}

void sub_25BBCB658()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  OUTLINED_FUNCTION_50_6();
  v4 = v3;
  OUTLINED_FUNCTION_17_28();
  MEMORY[0x28223BE20](v5);
  v9 = OUTLINED_FUNCTION_4_41(v6, v7, v8);
  v11 = v10(v9);
  Tensor.scalarType.getter(v11);
  OUTLINED_FUNCTION_21_21();
  v12();
  OUTLINED_FUNCTION_49_9();
  if (sub_25BAA80BC(v0, &unk_286D42270) && sub_25BAA80BC(v4, &unk_286D427E8) || ((OUTLINED_FUNCTION_48_7(), v13) ? (v13 = v0 == 12) : (v13 = 0), !v13 ? (v14 = v4 == 12) : (v14 = 0), v14))
  {
    v22 = OUTLINED_FUNCTION_20_19();
    v23(v22);
    OUTLINED_FUNCTION_8_31();
    OUTLINED_FUNCTION_54_6();
    OUTLINED_FUNCTION_18_24(v24);
  }

  else
  {
    OUTLINED_FUNCTION_55_3();
    OUTLINED_FUNCTION_27_18();
    v16 = v15();
    Tensor.scalarType.getter(v16);
    OUTLINED_FUNCTION_35_12();
    OUTLINED_FUNCTION_8_31();
    OUTLINED_FUNCTION_25_17(v17, v18, v19, v20, v21);
  }

  v2(v4, &v25);

  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BBCB800(uint64_t a1)
{
  v2 = sub_25BCB783C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = a1;
  Tensor.scalarType.getter(v6);
  (*(v7 + 32))(&v12);
  v8 = *(a1 + 16);
  if (v12 == 2)
  {

    sub_25BB3F8A8(sub_25BBE132C, a1);
  }

  else
  {
    swift_retain_n();
    v9 = sub_25BA928B4();
    [v9 lock];

    sub_25BA92920(v8, 0, 0, &v13);
    [*(v8 + 224) unlock];

    swift_unknownObjectRelease();
    v12 = a1;
    v11[15] = 2;
    (*(v3 + 104))(v5, *MEMORY[0x277D84660], v2);
    Tensor.cast(to:roundingRule:)();
    (*(v3 + 8))(v5, v2);
    sub_25BBCB800(v13);
  }

  OUTLINED_FUNCTION_46_9();

  return v2;
}

void sub_25BBCB9F8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) < a1)
  {
    __break(1u);
  }

  else if ((a1 & 0x8000000000000000) == 0)
  {
    sub_25BCB617C();
    return;
  }

  __break(1u);
}

void *sub_25BBCBA58(void *result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v3 = *(*(a3 + 16) + 152);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 32);
    v6 = 1;
    v7 = v5;
    v8 = v4;
    do
    {
      v9 = *v7++;
      v10 = v6 * v9;
      if ((v6 * v9) >> 64 != (v6 * v9) >> 63)
      {
        __break(1u);
        goto LABEL_14;
      }

      v6 = v10;
      --v8;
    }

    while (v8);
    if ((v10 - 0x2000000000000000) >> 62 != 3)
    {
      goto LABEL_15;
    }

    v11 = 1;
    while (1)
    {
      v12 = *v5++;
      v13 = v11 * v12;
      if ((v11 * v12) >> 64 != (v11 * v12) >> 63)
      {
        break;
      }

      v11 = v13;
      if (!--v4)
      {
        return sub_25BC54B84(result, v13);
      }
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = 1;
  return sub_25BC54B84(result, v13);
}

uint64_t sub_25BBCBB14(char a1)
{
  result = 6579297;
  switch(a1)
  {
    case 1:
      result = 6452595;
      break;
    case 2:
      result = 7107949;
      break;
    case 3:
      result = 0x7669645F6C616572;
      break;
    case 4:
      result = 7827312;
      break;
    case 5:
      v3 = 1769496941;
      goto LABEL_9;
    case 6:
      v3 = 1768843629;
LABEL_9:
      result = v3 | 0x6D756D00000000;
      break;
    case 7:
      result = 6582125;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_25BBCBBB4(char a1)
{
  result = 7235955;
  switch(a1)
  {
    case 1:
      return 1936679777;
    case 2:
      v3 = 1936679777;
      goto LABEL_21;
    case 3:
      return 1852404577;
    case 4:
      v3 = 1852404577;
      goto LABEL_21;
    case 5:
      return 1851880545;
    case 6:
      v3 = 1851880545;
LABEL_21:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
      break;
    case 7:
      result = 1818846563;
      break;
    case 8:
      result = 7565155;
      break;
    case 9:
      result = 1752395619;
      break;
    case 10:
      result = 7370853;
      break;
    case 11:
      result = 846231653;
      break;
    case 12:
      result = 0x726F6F6C66;
      break;
    case 13:
      result = 0x797469746E656469;
      break;
    case 14:
      result = 6778732;
      break;
    case 15:
      result = 0x636F727069636572;
      break;
    case 16:
      result = 0x646E756F72;
      break;
    case 17:
      result = 0x7472717372;
      break;
    case 18:
      result = 1852270963;
      break;
    case 19:
      return result;
    case 20:
      result = 1752066419;
      break;
    case 21:
      result = 1953657203;
      break;
    case 22:
      result = 0x657261757173;
      break;
    case 23:
      result = 7233908;
      break;
    case 24:
      result = 1752064372;
      break;
    default:
      result = 7561825;
      break;
  }

  return result;
}

void sub_25BBCBD8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v31 = MEMORY[0x277D84F90];
    sub_25BB00850(0, v2, 0);
    v3 = v31;
    v6 = sub_25BBE092C(a1);
    v7 = 0;
    v8 = a1 + 64;
    v25 = v4;
    v26 = v2;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v4)
      {
        goto LABEL_25;
      }

      v28 = v7;
      v29 = v4;
      v27 = v5;
      v10 = (*(a1 + 48) + 16 * v6);
      v11 = v10[1];
      v30 = *v10;
      v12 = *(*(a1 + 56) + 8 * v6);
      v14 = *(v31 + 16);
      v13 = *(v31 + 24);
      sub_25BCB617C();

      if (v14 >= v13 >> 1)
      {
        sub_25BB00850((v13 > 1), v14 + 1, 1);
      }

      *(v31 + 16) = v14 + 1;
      v15 = (v31 + 24 * v14);
      v15[4] = v30;
      v15[5] = v11;
      v15[6] = v12;
      v16 = 1 << *(a1 + 32);
      if (v6 >= v16)
      {
        goto LABEL_26;
      }

      v8 = a1 + 64;
      v17 = *(a1 + 64 + 8 * v9);
      if ((v17 & (1 << v6)) == 0)
      {
        goto LABEL_27;
      }

      if (*(a1 + 36) != v29)
      {
        goto LABEL_28;
      }

      v18 = v17 & (-2 << (v6 & 0x3F));
      if (v18)
      {
        v16 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v9 << 6;
        v20 = v9 + 1;
        v21 = (a1 + 72 + 8 * v9);
        while (v20 < (v16 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_25BB33E48(v6, v29, v27 & 1);
            v16 = __clz(__rbit64(v22)) + v19;
            goto LABEL_19;
          }
        }

        sub_25BB33E48(v6, v29, v27 & 1);
      }

LABEL_19:
      v5 = 0;
      v7 = v28 + 1;
      v6 = v16;
      v4 = v25;
      if (v28 + 1 == v26)
      {

        goto LABEL_22;
      }
    }

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
    __break(1u);
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
LABEL_22:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    sub_25BCB614C();
    sub_25BAD8178(v3);

    sub_25BAD8324(v24);
  }
}

void sub_25BBCC040(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v46 = MEMORY[0x277D84F90];
    sub_25BB00810(0, v2, 0);
    v3 = v46;
    v6 = sub_25BBE092C(a1);
    v7 = 0;
    v8 = a1 + 64;
    v37 = v4;
    v38 = v2;
    v36 = a1 + 72;
    v39 = a1 + 64;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v4)
      {
        goto LABEL_25;
      }

      v41 = v7;
      v42 = v4;
      HIDWORD(v40) = v5;
      v10 = (*(a1 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      v13 = (*(a1 + 56) + 16 * v6);
      v14 = v13[1];
      v43 = *v13;
      v44 = v11;
      v45 = v3;
      v16 = *(v3 + 16);
      v15 = *(v3 + 24);
      sub_25BCB617C();
      sub_25BCB617C();
      if (v16 >= v15 >> 1)
      {
        sub_25BB00810(v15 > 1, v16 + 1, 1);
      }

      *(v3 + 16) = v16 + 1;
      v17 = (v3 + 32 * v16);
      v17[4] = v44;
      v17[5] = v12;
      v17[6] = v43;
      v17[7] = v14;
      v18 = 1 << *(a1 + 32);
      if (v6 >= v18)
      {
        goto LABEL_26;
      }

      v8 = a1 + 64;
      v19 = *(v39 + 8 * v9);
      if ((v19 & (1 << v6)) == 0)
      {
        goto LABEL_27;
      }

      if (*(a1 + 36) != v42)
      {
        goto LABEL_28;
      }

      v20 = v19 & (-2 << (v6 & 0x3F));
      if (v20)
      {
        v18 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v9 << 6;
        v22 = v9 + 1;
        v23 = (v36 + 8 * v9);
        while (v22 < (v18 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_25BB33E48(v6, v42, BYTE4(v40) & 1);
            v18 = __clz(__rbit64(v24)) + v21;
            goto LABEL_19;
          }
        }

        sub_25BB33E48(v6, v42, BYTE4(v40) & 1);
      }

LABEL_19:
      v5 = 0;
      v7 = v41 + 1;
      v6 = v18;
      v4 = v37;
      if (v41 + 1 == v38)
      {

        goto LABEL_22;
      }
    }

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
    __break(1u);
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
LABEL_22:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    v26 = sub_25BCB614C();
    sub_25BAFA1D4(v3, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v26, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);

    sub_25BAFCBDC(v34);
  }
}

uint64_t sub_25BBCC2F8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 56);
  v5 = *(v2 + 64);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3938, &qword_25BCBE490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4860, &unk_25BCBF6D0);
  if (swift_dynamicCast())
  {
    sub_25BA97060(v18, &v14);
    v6 = __swift_project_boxed_opaque_existential_1(&v14, v17);
    sub_25BBE0F88(v2, a1);
    v8 = v7;
    OUTLINED_FUNCTION_108_3();
    sub_25BBA114C(v6, v9, v8, v18);

    return __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_25BB3ECB0(v18);
    v14 = v4;
    v15 = v5;
    v16 = 8;
    swift_unknownObjectRetain();
    sub_25BBE0F88(v2, a1);
    v12 = v11;
    OUTLINED_FUNCTION_108_3();
    sub_25BBA00B4(&v14, v13, v12, v18);

    return sub_25BB06134(v14, v15, v16);
  }
}

void sub_25BBCC484()
{
  OUTLINED_FUNCTION_17_1();
  v2 = v1;
  v3 = *(v0 + 16);
  ObjectType = swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v3, ObjectType, &protocol descriptor for MILOperationEncodable))
  {
    v6 = v5;
    v7 = swift_getObjectType();
    v8 = *(v6 + 16);
    swift_unknownObjectRetain();
    v8(v2, v7, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = sub_25BB30FF8();
    v11 = v10;
    v12 = sub_25BBA41B4();
    OUTLINED_FUNCTION_14_0(&type metadata for MILEncodingError, v12);
    *v13 = v9;
    *(v13 + 8) = v11;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BBCC580()
{
  v1 = 0x65725F796B61656CLL;
  if (*(v0 + 128) == 1)
  {
    v1 = 0x64696F6D676973;
  }

  if (*(v0 + 128))
  {
    return v1;
  }

  else
  {
    return 6713957;
  }
}

uint64_t sub_25BBCC5D8()
{
  if (*(v0 + 128) == 2)
  {
    if (*(v0 + 136))
    {
      sub_25BCB70FC();

      v26 = sub_25BBB2E50();
      MEMORY[0x25F876C90](v26);

      MEMORY[0x25F876C90](96, 0xE100000000000000);
      sub_25BCB617C();
      sub_25BA97890("attributes", 10, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/MIL/MILTensorOperation.swift", 113, 2, 55, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, 0xD000000000000013, 0x800000025BCE05E0, 0xD000000000000013, 0x800000025BCE05E0, v41, v42, v43);
    }

    v1 = *(v0 + 132);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25BCBAE50;
    *(inited + 32) = 0x6168706C61;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = v1;
    *(inited + 56) = 0;
    *(inited + 64) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    v3 = sub_25BCB614C();
    sub_25BAFA0CC(inited, v4, v5, v6, v7, v8, v9, v10, v11, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v3, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
    v13 = v12;
    swift_setDeallocating();
    sub_25BC0C4D8();
    v40 = v13;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    v14 = MEMORY[0x277D84F90];
    v15 = sub_25BCB614C();
    sub_25BAFA0CC(v14, v16, v17, v18, v19, v20, v21, v22, v23, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v15, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
    v40 = v24;
  }

  sub_25BAFCD30();
  return v40;
}

uint64_t sub_25BBCCCC4()
{
  KeyPath = swift_getKeyPath();
  v1 = sub_25BBDE260(KeyPath);

  type metadata accessor for TensorHandle();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;

  sub_25BAA6EB0();

  sub_25BC6E030(var48, &v16, v3, v4, v5, v6, v7, v8, v2, var48[0], var48[1], var48[2], var48[3], var48[4], var48[5], var48[6], var48[7], var48[8], var48[9], var48[10]);
  v10 = v9;

  v11 = swift_getKeyPath();
  v12 = sub_25BBDE260(v11);

  v13 = swift_allocObject();
  *(v13 + 16) = v12;

  sub_25BAA6EB0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_25BCBAE50;
  var48[0] = v13;
  v10(var48);

  return v14;
}

uint64_t sub_25BBCCE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61D8, &qword_25BCC8B30);
  inited = swift_initStackObject();
  type metadata accessor for TensorRepresentation();

  v9 = sub_25BCB614C();
  *(inited + 16) = a2;
  *(inited + 24) = v9;
  v10 = sub_25BBDB6D0(inited, a3, a4);
  if (v4)
  {
    swift_setDeallocating();
    sub_25BBDE814(MEMORY[0x277D85008]);
    return swift_deallocClassInstance();
  }

  else
  {
    isUniquelyReferenced_nonNull_native = v10;
    v13 = sub_25BCB614C();
    v36 = *(isUniquelyReferenced_nonNull_native + 16);
    sub_25BCB617C();
    v14 = 0;
    v34 = isUniquelyReferenced_nonNull_native;
    while (v36 != v14)
    {
      if (v14 >= *(isUniquelyReferenced_nonNull_native + 16))
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v15 = sub_25BAC44E4();
      v17 = v16;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35[0] = v13;
      v18 = sub_25BA9266C(v15, v17);
      if (__OFADD__(v13[2], (v19 & 1) == 0))
      {
        goto LABEL_27;
      }

      v20 = v18;
      v21 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61A0, &qword_25BCC88D8);
      if (sub_25BCB745C())
      {
        v22 = sub_25BA9266C(v15, v17);
        if ((v21 & 1) != (v23 & 1))
        {
          goto LABEL_31;
        }

        v20 = v22;
      }

      v13 = v35[0];
      if (v21)
      {
        *(*(v35[0] + 56) + 8 * v20) = v14;
      }

      else
      {
        *(v35[0] + 8 * (v20 >> 6) + 64) |= 1 << v20;
        v24 = (v13[6] + 16 * v20);
        *v24 = v15;
        v24[1] = v17;
        *(v13[7] + 8 * v20) = v14;
        v25 = v13[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_28;
        }

        v13[2] = v27;
      }

      ++v14;
      isUniquelyReferenced_nonNull_native = v34;
    }

    if (qword_28154F2C8 == -1)
    {
      goto LABEL_16;
    }

LABEL_29:
    swift_once();
LABEL_16:
    v28 = *(isUniquelyReferenced_nonNull_native + 16);
    if (v28)
    {
      v35[0] = MEMORY[0x277D84F90];
      sub_25BCB727C();
      v29 = 32;
      do
      {

        sub_25BCB723C();
        sub_25BCB728C();
        sub_25BCB729C();
        sub_25BCB725C();
        v29 += 8;
        --v28;
      }

      while (v28);

      v30 = v35[0];
    }

    else
    {

      v30 = MEMORY[0x277D84F90];
    }

    type metadata accessor for LazyTensorFunctionBuilder();
    LOBYTE(v35[0]) = 0;
    v35[1] = MEMORY[0x277D84FA0];
    sub_25BCB617C();
    sub_25BACF298(v30, v35);
    if (v31)
    {
      sub_25BAD6344();
      v33 = v32;
    }

    else
    {
      v33 = MEMORY[0x277D84F90];
    }

    if (*(v33 + 16))
    {
      sub_25BAD6FB0(v33 + 32, v35);

      sub_25BBDFAB4(&qword_27FBB48F8, type metadata accessor for SoftmaxCrossEntropyGradientOperation, aU_2);
      sub_25BBDE37C();
      sub_25BBDD638(v35);
      sub_25BA9AC78(v35);

      swift_setDeallocating();
      sub_25BBDE814(MEMORY[0x277D85008]);
      swift_deallocClassInstance();
    }

    __break(1u);
LABEL_31:
    result = sub_25BCB795C();
    __break(1u);
  }

  return result;
}

uint64_t sub_25BBCD2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61D0, &qword_25BCC8AD8);
  inited = swift_initStackObject();
  type metadata accessor for TensorRepresentation();

  v9 = sub_25BCB614C();
  *(inited + 16) = a2;
  *(inited + 24) = v9;
  v10 = sub_25BBDB530(inited, a3, v5);
  if (v4)
  {
    swift_setDeallocating();
    sub_25BBDE814(MEMORY[0x277D85008]);
    return swift_deallocClassInstance();
  }

  else
  {
    isUniquelyReferenced_nonNull_native = v10;
    v13 = sub_25BCB614C();
    v36 = *(isUniquelyReferenced_nonNull_native + 16);
    sub_25BCB617C();
    v14 = 0;
    v34 = isUniquelyReferenced_nonNull_native;
    while (v36 != v14)
    {
      if (v14 >= *(isUniquelyReferenced_nonNull_native + 16))
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v15 = sub_25BAC44E4();
      v17 = v16;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35[0] = v13;
      v18 = sub_25BA9266C(v15, v17);
      if (__OFADD__(v13[2], (v19 & 1) == 0))
      {
        goto LABEL_27;
      }

      v20 = v18;
      v21 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61A0, &qword_25BCC88D8);
      if (sub_25BCB745C())
      {
        v22 = sub_25BA9266C(v15, v17);
        if ((v21 & 1) != (v23 & 1))
        {
          goto LABEL_31;
        }

        v20 = v22;
      }

      v13 = v35[0];
      if (v21)
      {
        *(*(v35[0] + 56) + 8 * v20) = v14;
      }

      else
      {
        *(v35[0] + 8 * (v20 >> 6) + 64) |= 1 << v20;
        v24 = (v13[6] + 16 * v20);
        *v24 = v15;
        v24[1] = v17;
        *(v13[7] + 8 * v20) = v14;
        v25 = v13[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_28;
        }

        v13[2] = v27;
      }

      ++v14;
      isUniquelyReferenced_nonNull_native = v34;
    }

    if (qword_28154F2C8 == -1)
    {
      goto LABEL_16;
    }

LABEL_29:
    swift_once();
LABEL_16:
    v28 = *(isUniquelyReferenced_nonNull_native + 16);
    if (v28)
    {
      v35[0] = MEMORY[0x277D84F90];
      sub_25BCB727C();
      v29 = 32;
      do
      {

        sub_25BCB723C();
        sub_25BCB728C();
        sub_25BCB729C();
        sub_25BCB725C();
        v29 += 8;
        --v28;
      }

      while (v28);

      v30 = v35[0];
    }

    else
    {

      v30 = MEMORY[0x277D84F90];
    }

    type metadata accessor for LazyTensorFunctionBuilder();
    LOBYTE(v35[0]) = 0;
    v35[1] = MEMORY[0x277D84FA0];
    sub_25BCB617C();
    sub_25BACF298(v30, v35);
    if (v31)
    {
      sub_25BAD6344();
      v33 = v32;
    }

    else
    {
      v33 = MEMORY[0x277D84F90];
    }

    if (*(v33 + 16))
    {
      sub_25BAD6FB0(v33 + 32, v35);

      sub_25BBDFAB4(&qword_27FBB4900, type metadata accessor for SoftmaxCrossEntropyOperation, aU_2);
      sub_25BBDE37C();
      sub_25BBDD638(v35);
      sub_25BA9AC78(v35);

      swift_setDeallocating();
      sub_25BBDE814(MEMORY[0x277D85008]);
      swift_deallocClassInstance();
    }

    __break(1u);
LABEL_31:
    result = sub_25BCB795C();
    __break(1u);
  }

  return result;
}

uint64_t sub_25BBCD7A8(float a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61C0, &qword_25BCC8A30);
  inited = swift_initStackObject();
  type metadata accessor for TensorRepresentation();

  v7 = sub_25BCB614C();
  *(inited + 16) = a3;
  *(inited + 24) = v7;
  v8 = sub_25BBDAC0C(a1);
  if (v3)
  {
    swift_setDeallocating();
    sub_25BBDE814(MEMORY[0x277D85008]);
    return swift_deallocClassInstance();
  }

  else
  {
    isUniquelyReferenced_nonNull_native = v8;
    v11 = sub_25BCB614C();
    v33 = *(isUniquelyReferenced_nonNull_native + 16);
    sub_25BCB617C();
    v12 = 0;
    v32 = isUniquelyReferenced_nonNull_native;
    while (v33 != v12)
    {
      if (v12 >= *(isUniquelyReferenced_nonNull_native + 16))
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v13 = sub_25BAC44E4();
      v15 = v14;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34[0] = v11;
      v16 = sub_25BA9266C(v13, v15);
      if (__OFADD__(v11[2], (v17 & 1) == 0))
      {
        goto LABEL_27;
      }

      v18 = v16;
      v19 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61A0, &qword_25BCC88D8);
      if (sub_25BCB745C())
      {
        v20 = sub_25BA9266C(v13, v15);
        if ((v19 & 1) != (v21 & 1))
        {
          goto LABEL_31;
        }

        v18 = v20;
      }

      v11 = v34[0];
      if (v19)
      {
        *(*(v34[0] + 56) + 8 * v18) = v12;
      }

      else
      {
        *(v34[0] + 8 * (v18 >> 6) + 64) |= 1 << v18;
        v22 = (v11[6] + 16 * v18);
        *v22 = v13;
        v22[1] = v15;
        *(v11[7] + 8 * v18) = v12;
        v23 = v11[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_28;
        }

        v11[2] = v25;
      }

      ++v12;
      isUniquelyReferenced_nonNull_native = v32;
    }

    if (qword_28154F2C8 == -1)
    {
      goto LABEL_16;
    }

LABEL_29:
    swift_once();
LABEL_16:
    v26 = *(isUniquelyReferenced_nonNull_native + 16);
    if (v26)
    {
      v34[0] = MEMORY[0x277D84F90];
      sub_25BCB727C();
      v27 = 32;
      do
      {

        sub_25BCB723C();
        sub_25BCB728C();
        sub_25BCB729C();
        sub_25BCB725C();
        v27 += 8;
        --v26;
      }

      while (v26);

      v28 = v34[0];
    }

    else
    {

      v28 = MEMORY[0x277D84F90];
    }

    type metadata accessor for LazyTensorFunctionBuilder();
    LOBYTE(v34[0]) = 0;
    v34[1] = MEMORY[0x277D84FA0];
    sub_25BCB617C();
    sub_25BACF298(v28, v34);
    if (v29)
    {
      sub_25BAD6344();
      v31 = v30;
    }

    else
    {
      v31 = MEMORY[0x277D84F90];
    }

    if (*(v31 + 16))
    {
      sub_25BAD6FB0(v31 + 32, v34);

      sub_25BBDFAB4(&qword_27FBB6140, type metadata accessor for BatchNormGradientOperation, byte_25BCD1FC0);
      sub_25BBDE37C();
      sub_25BBDD638(v34);
      sub_25BA9AC78(v34);

      swift_setDeallocating();
      sub_25BBDE814(MEMORY[0x277D85008]);
      swift_deallocClassInstance();
    }

    __break(1u);
LABEL_31:
    result = sub_25BCB795C();
    __break(1u);
  }

  return result;
}

uint64_t sub_25BBCDC5C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6198, &qword_25BCC88D0);
  inited = swift_initStackObject();
  type metadata accessor for TensorRepresentation();

  v5 = sub_25BCB614C();
  *(inited + 16) = a2;
  *(inited + 24) = v5;
  v6 = sub_25BBCCCC4();
  if (v2)
  {
  }

  isUniquelyReferenced_nonNull_native = v6;
  v9 = sub_25BCB614C();
  v32 = *(isUniquelyReferenced_nonNull_native + 16);
  sub_25BCB617C();
  v10 = 0;
  v30 = isUniquelyReferenced_nonNull_native;
  while (v32 != v10)
  {
    if (v10 >= *(isUniquelyReferenced_nonNull_native + 16))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v11 = sub_25BAC44E4();
    v13 = v12;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31[0] = v9;
    v14 = sub_25BA9266C(v11, v13);
    if (__OFADD__(v9[2], (v15 & 1) == 0))
    {
      goto LABEL_27;
    }

    v16 = v14;
    v17 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61A0, &qword_25BCC88D8);
    if (sub_25BCB745C())
    {
      v18 = sub_25BA9266C(v11, v13);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_31;
      }

      v16 = v18;
    }

    v9 = v31[0];
    if (v17)
    {
      *(*(v31[0] + 56) + 8 * v16) = v10;
    }

    else
    {
      *(v31[0] + 8 * (v16 >> 6) + 64) |= 1 << v16;
      v20 = (v9[6] + 16 * v16);
      *v20 = v11;
      v20[1] = v13;
      *(v9[7] + 8 * v16) = v10;
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_28;
      }

      v9[2] = v23;
    }

    ++v10;
    isUniquelyReferenced_nonNull_native = v30;
  }

  if (qword_28154F2C8 == -1)
  {
    goto LABEL_16;
  }

LABEL_29:
  swift_once();
LABEL_16:
  v24 = *(isUniquelyReferenced_nonNull_native + 16);
  if (v24)
  {
    v31[0] = MEMORY[0x277D84F90];
    sub_25BCB727C();
    v25 = 32;
    do
    {

      sub_25BCB723C();
      sub_25BCB728C();
      sub_25BCB729C();
      sub_25BCB725C();
      v25 += 8;
      --v24;
    }

    while (v24);

    v26 = v31[0];
  }

  else
  {

    v26 = MEMORY[0x277D84F90];
  }

  type metadata accessor for LazyTensorFunctionBuilder();
  LOBYTE(v31[0]) = 0;
  v31[1] = MEMORY[0x277D84FA0];
  sub_25BCB617C();
  sub_25BACF298(v26, v31);
  if (v27)
  {
    sub_25BAD6344();
    v29 = v28;
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
  }

  if (*(v29 + 16))
  {
    sub_25BAD6FB0(v29 + 32, v31);

    sub_25BBDFAB4(qword_28154E000, type metadata accessor for ReLUGradientOperation, byte_25BCC63D0);
    sub_25BBDE37C();
    sub_25BBDD638(v31);
    sub_25BA9AC78(v31);
  }

  __break(1u);
LABEL_31:
  result = sub_25BCB795C();
  __break(1u);
  return result;
}

uint64_t sub_25BBCE0B4(float a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61B8, &qword_25BCC8960);
  inited = swift_initStackObject();
  type metadata accessor for TensorRepresentation();

  v11 = sub_25BCB614C();
  *(inited + 16) = a4;
  *(inited + 24) = v11;
  v12 = sub_25BBDA5F0(a1, a2, inited, v8);
  if (v5)
  {
    swift_setDeallocating();
    sub_25BBDE814(MEMORY[0x277D85008]);
    return swift_deallocClassInstance();
  }

  else
  {
    isUniquelyReferenced_nonNull_native = v12;
    v15 = sub_25BCB614C();
    v38 = *(isUniquelyReferenced_nonNull_native + 16);
    sub_25BCB617C();
    v16 = 0;
    v36 = isUniquelyReferenced_nonNull_native;
    while (v38 != v16)
    {
      if (v16 >= *(isUniquelyReferenced_nonNull_native + 16))
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v17 = sub_25BAC44E4();
      v19 = v18;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37[0] = v15;
      v20 = sub_25BA9266C(v17, v19);
      if (__OFADD__(v15[2], (v21 & 1) == 0))
      {
        goto LABEL_27;
      }

      v22 = v20;
      v23 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61A0, &qword_25BCC88D8);
      if (sub_25BCB745C())
      {
        v24 = sub_25BA9266C(v17, v19);
        if ((v23 & 1) != (v25 & 1))
        {
          goto LABEL_31;
        }

        v22 = v24;
      }

      v15 = v37[0];
      if (v23)
      {
        *(*(v37[0] + 56) + 8 * v22) = v16;
      }

      else
      {
        *(v37[0] + 8 * (v22 >> 6) + 64) |= 1 << v22;
        v26 = (v15[6] + 16 * v22);
        *v26 = v17;
        v26[1] = v19;
        *(v15[7] + 8 * v22) = v16;
        v27 = v15[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_28;
        }

        v15[2] = v29;
      }

      ++v16;
      isUniquelyReferenced_nonNull_native = v36;
    }

    if (qword_28154F2C8 == -1)
    {
      goto LABEL_16;
    }

LABEL_29:
    swift_once();
LABEL_16:
    v30 = *(isUniquelyReferenced_nonNull_native + 16);
    if (v30)
    {
      v37[0] = MEMORY[0x277D84F90];
      sub_25BCB727C();
      v31 = 32;
      do
      {

        sub_25BCB723C();
        sub_25BCB728C();
        sub_25BCB729C();
        sub_25BCB725C();
        v31 += 8;
        --v30;
      }

      while (v30);

      v32 = v37[0];
    }

    else
    {

      v32 = MEMORY[0x277D84F90];
    }

    type metadata accessor for LazyTensorFunctionBuilder();
    LOBYTE(v37[0]) = 0;
    v37[1] = MEMORY[0x277D84FA0];
    sub_25BCB617C();
    sub_25BACF298(v32, v37);
    if (v33)
    {
      sub_25BAD6344();
      v35 = v34;
    }

    else
    {
      v35 = MEMORY[0x277D84F90];
    }

    if (*(v35 + 16))
    {
      sub_25BAD6FB0(v35 + 32, v37);

      sub_25BBDFAB4(&qword_27FBB6148, type metadata accessor for BatchNormOperation, byte_25BCD1FC0);
      sub_25BBDE37C();
      sub_25BBDD638(v37);
      sub_25BA9AC78(v37);

      swift_setDeallocating();
      sub_25BBDE814(MEMORY[0x277D85008]);
      swift_deallocClassInstance();
    }

    __break(1u);
LABEL_31:
    result = sub_25BCB795C();
    __break(1u);
  }

  return result;
}

void sub_25BBCE858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_25BAB3058();
  if (!v5 || (Class = object_getClass(v5), swift_unknownObjectRelease(), Class != _TtC14NeuralNetworks17ConstantOperation))
  {
    v7 = sub_25BBA41B4();
    OUTLINED_FUNCTION_14_0(&type metadata for MILEncodingError, v7);
    *v8 = xmmword_25BCC8160;
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;
    *(v8 + 32) = 4;
    swift_willThrow();
    sub_25BCB617C();
  }
}

void sub_25BBCE90C()
{
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_197();
  if (!v4)
  {
    v33 = sub_25BBA41B4();
    OUTLINED_FUNCTION_14_0(&type metadata for MILEncodingError, v33);
    *v34 = xmmword_25BCC8160;
    *(v34 + 16) = 0xD000000000000034;
    *(v34 + 24) = 0x800000025BCE0750;
    v35 = 2;
LABEL_20:
    *(v34 + 32) = v35;
    swift_willThrow();
    goto LABEL_37;
  }

  v5 = v0;
  v6 = v3;
  v7 = sub_25BB49D04();
  sub_25BAB4D78(1uLL, (v7 & 0xC000000000000001) == 0, v7);
  if ((v7 & 0xC000000000000001) != 0)
  {
    MEMORY[0x25F8779B0](1, v7);
  }

  else
  {
  }

  OUTLINED_FUNCTION_196();
  sub_25BBCE858(v8, v9, v10);

  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D8, &qword_25BCC5BA0);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_17_19(inited, xmmword_25BCBAE70);
    sub_25BB49D04();
    OUTLINED_FUNCTION_91_3();
    sub_25BAB4D78(0, v12, v5);
    if (v2)
    {
      v13 = MEMORY[0x25F8779B0](0, v5);
    }

    else
    {
      v13 = *(v5 + 32);
    }

    inited[3].n128_u64[0] = v13;
    inited[3].n128_u64[1] = 0x685F746867696577;
    inited[4].n128_u64[0] = 0xE900000000000068;
    v14 = sub_25BB49D04();
    sub_25BAB4D78(1uLL, (v14 & 0xC000000000000001) == 0, v14);
    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x25F8779B0](1, v14);
    }

    else
    {
      v15 = *(v14 + 40);
    }

    inited[4].n128_u64[1] = v15;
    type metadata accessor for TensorRepresentation();
    sub_25BCB614C();
    sub_25BB4AD90();
    if ((v16 & 1) == 0)
    {
      sub_25BB49D04();
      OUTLINED_FUNCTION_91_3();
      OUTLINED_FUNCTION_214(v17, v18);
      if (v13)
      {
        OUTLINED_FUNCTION_213();
      }

      else
      {
      }

      v13 = 0x695F746867696577;

      OUTLINED_FUNCTION_196();
      sub_25BBCE858(v19, v20, v21);

      v22 = sub_25BB49D04();
      OUTLINED_FUNCTION_214(v22, (v22 & 0xC000000000000001) == 0);
      if ((v22 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_213();
      }

      else
      {
      }

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_140();
      OUTLINED_FUNCTION_196();
      sub_25BC1A420(v23, v24, v25, v26);
    }

    v27 = sub_25BB4ADA8();
    if ((v28 & 1) == 0)
    {
      v29 = v27;
      sub_25BB49D04();
      OUTLINED_FUNCTION_91_3();
      OUTLINED_FUNCTION_214(v30, v31);
      if (v13)
      {
        OUTLINED_FUNCTION_213();
        v32 = v154;
      }

      else
      {
        v32 = *(v5 + 8 * v29 + 32);
      }

      sub_25BBCE858(v32, 1935763810, 0xE400000000000000);

      sub_25BB49D04();
      OUTLINED_FUNCTION_91_3();
      OUTLINED_FUNCTION_214(v36, v37);
      if (v32)
      {
        OUTLINED_FUNCTION_213();
        v38 = v155;
      }

      else
      {
        v38 = *(v5 + 8 * v29 + 32);
      }

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_140();
      sub_25BC1A420(v38, 1935763810, 0xE400000000000000, v39);
    }

    v40 = sub_25BB4ADD4();
    if (v41)
    {

      v42 = sub_25BBA41B4();
      OUTLINED_FUNCTION_14_0(&type metadata for MILEncodingError, v42);
      *v34 = xmmword_25BCC8160;
      *(v34 + 16) = xmmword_25BCC8190;
      v35 = 3;
      goto LABEL_20;
    }

    v43 = v40;
    v44 = sub_25BB49D04();
    sub_25BAB4D78(v43, (v44 & 0xC000000000000001) == 0, v44);
    if ((v44 & 0xC000000000000001) != 0)
    {
      MEMORY[0x25F8779B0](v43, v44);
    }

    else
    {
    }

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_140();
    OUTLINED_FUNCTION_196();
    sub_25BC1A420(v45, v46, v47, v48);
    v49 = v5;
    v50 = sub_25BB49D04();
    v51 = __OFADD__(v43, 1);
    v52 = v43 + 1;
    if (v51)
    {
      __break(1u);
    }

    else
    {
      v49 = v50;
      v53 = v50 & 0xC000000000000001;
      sub_25BAB4D78(v52, (v50 & 0xC000000000000001) == 0, v50);
      if (!v53)
      {
        v54 = *(v49 + 8 * v52 + 32);

LABEL_31:

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_25BC1A420(v54, 0x5F6C616974696E69, 0xE900000000000063, isUniquelyReferenced_nonNull_native);
        v56 = v449;
        v57 = 0x64726177726F66;
        if (*(v5 + 96))
        {
          v57 = 0x7463657269646962;
        }

        v457 = v57;
        if (*(v5 + 96))
        {
          v58 = 0xED00006C616E6F69;
        }

        else
        {
          v58 = 0xE700000000000000;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
        v59 = swift_allocObject();
        *(v59 + 16) = xmmword_25BCBAE90;
        *(v59 + 32) = sub_25BB4AE88();
        *(v59 + 40) = sub_25BB4AF2C();
        *(v59 + 48) = sub_25BB4AF84();
        OUTLINED_FUNCTION_54();
        v233 = swift_allocObject();
        *(v233 + 16) = xmmword_25BCBAE70;
        *(v233 + 32) = sub_25BB4AF2C();
        *(v233 + 40) = sub_25BB4AF84();
        OUTLINED_FUNCTION_54();
        v197 = swift_allocObject();
        *(v197 + 16) = xmmword_25BCBAE70;
        *(v197 + 32) = sub_25BB4AF2C();
        *(v197 + 40) = sub_25BB4AF84();
        v251 = swift_allocObject();
        *(v251 + 16) = xmmword_25BCBAE90;
        *(v251 + 32) = 1;
        *(v251 + 40) = sub_25BB4AF2C();
        *(v251 + 48) = sub_25BB4AF84();
        v60 = OUTLINED_FUNCTION_5_17();
        v62 = v61;
        sub_25BBE0D70(v60, v63, v61, type metadata accessor for LSTMLayerOperation, v64, v65, v66, v67, v156, v165, v173, v181, v189, v197, v206, v215, v224, v233, v242, v251, v260, v269, v278, aX, 3, 6, 2, 4, v313, v319, v325, v331, v337, v341, v345, v349, v353, v357, v361, v365, v369, v373, v377, v381, v385, v389, v393, v397, v401, v405, v409, v413, v417, v421, v425, v429, v433, v437, v441, v445);
        v450 = v68;
        v451 = v69;
        MEMORY[0x25F876C90](0x74735F6C6C65635FLL, 0xEB00000000657461);
        sub_25BBCBD8C(v56);
        v207 = v71;
        v216 = v70;
        v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
        v72 = swift_initStackObject();
        *(v72 + 16) = xmmword_25BCC4630;
        *(v72 + 32) = 0x6F69746365726964;
        *(v72 + 40) = 0xE90000000000006ELL;
        *(v72 + 48) = v457;
        *(v72 + 56) = v58;
        *(v72 + 64) = 4;
        *(v72 + 72) = 0xD000000000000014;
        *(v72 + 80) = 0x800000025BCE0790;
        *(v72 + 88) = xmmword_25BCC8170;
        *(v72 + 104) = 4;
        *(v72 + 112) = 0x7463615F6C6C6563;
        *(v72 + 120) = 0xEF6E6F6974617669;
        *(v72 + 128) = xmmword_25BCC8180;
        *(v72 + 144) = 4;
        *(v72 + 152) = 0x6974617669746361;
        *(v72 + 160) = 0xEA00000000006E6FLL;
        *(v72 + 168) = xmmword_25BCC8180;
        *(v72 + 184) = 4;
        *(v72 + 192) = 0x735F74757074756FLL;
        *(v72 + 200) = 0xEF65636E65757165;
        *(v72 + 208) = xmmword_25BCC06A0;
        *(v72 + 224) = 0;
        sub_25BB060F0(v457, v58, 4);
        v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
        v73 = sub_25BCB614C();
        v74 = OUTLINED_FUNCTION_190(v73);
        sub_25BAFA0CC(v74, v75, v76, v77, v78, v79, v80, v81, v82, v157, v166, v174, v182, v190, v198, v207, v216, v225, v234, v243, v252, v58, v270, v451, v286, v294, v298, v450, v308, v314, v320, v326, v332);
        OUTLINED_FUNCTION_157();
        sub_25BC0C4D8();
        sub_25BAFCD30();
        v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
        v83 = swift_initStackObject();
        OUTLINED_FUNCTION_17_29(v83, v84, v85, v86, v87, v88, v89, v90, v91, v158, v451, v56, v183, v191, v199, v208, v217, v226, v235, v244, v253, v261, v271, v279, v287, v92);
        v93 = v288;
        sub_25BBE0998(v5, 0, v6, v62, type metadata accessor for LSTMLayerOperation, v288, sub_25BC60CB8, v94, v159, v167, v175, sub_25BC60CB8, type metadata accessor for LSTMLayerOperation, v200, v209, v218, v227, v236, v245, v254, v262, v272, v280, v288, v295, v299, v302, v309, v315, v321, v327, v333, v338, v342, v346, v350, v354, v358, v362, v366, v370, v374, v378, v382, v386, v390, v394, v398, v402, v406, v410, v414, v418, v422, v426, v430, v434, v438, v442, v446);
        sub_25BCB617C();
        v95 = OUTLINED_FUNCTION_141();
        sub_25BBE0998(v95, v96, v97, v62, type metadata accessor for LSTMLayerOperation, v93, sub_25BC60CB8, v98, v160, v168, v176, v184, v192, v201, v210, v219, v228, v237, v246, v255, v263, v273, v281, v289, v296, v300, v303, v310, v316, v322, v328, v334, v339, v343, v347, v351, v355, v359, v363, v367, v371, v375, v379, v383, v387, v391, v395, v399, v403, v407, v411, v415, v419, v423, v427, v431, v435, v439, v443, v447);
        *&v452 = v99;
        *(&v452 + 1) = v100;
        *&v453 = v238;
        BYTE8(v453) = 10;
        v101 = sub_25BCB614C();
        v102 = OUTLINED_FUNCTION_190(v101);
        sub_25BAF9B54(v102);
        OUTLINED_FUNCTION_57_2();
        swift_setDeallocating();
        sub_25BC0C4EC();
        sub_25BAFC990();
        v103 = *(v5 + 120);
        v455[0] = *(v5 + 104);
        v455[1] = v103;
        v456[0] = *(v5 + 136);
        *(v456 + 10) = *(v5 + 146);
        sub_25BBA18D8(1836348268, 0xE400000000000000, v220, v211, v177, v169, sub_25BC60CB8, v451, v455);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39B8, &unk_25BCC5B90);
        v104 = swift_initStackObject();
        v105 = OUTLINED_FUNCTION_17_19(v104, xmmword_25BCBAE50);
        v105[3].n128_u64[0] = v304;
        v105[3].n128_u64[1] = v282;
        v106 = MEMORY[0x277D837D0];
        v107 = sub_25BCB614C();
        sub_25BBCC040(v107);
        v305 = v108;
        v110 = v109;
        v111 = swift_initStackObject();
        OUTLINED_FUNCTION_17_29(v111, v112, v113, v114, v115, v116, v117, v118, v119, v161, v169, v177, v185, v193, v202, v211, v220, v229, v238, v247, v256, v264, v274, v282, v290, v120);
        OUTLINED_FUNCTION_23_21();
        *(v121 + 32) = v122;
        *(v121 + 40) = v123;
        *(v6 + 48) = v257;
        *(v6 + 56) = 0;
        *(v6 + 64) = 7;
        sub_25BCB617C();
        v124 = v275;
        OUTLINED_FUNCTION_64_4();
        v125 = sub_25BCB614C();
        v126 = OUTLINED_FUNCTION_190(v125);
        sub_25BAFA0CC(v126, v127, v128, v129, v130, v131, v132, v133, v134, v162, v170, v178, v186, v194, v203, v212, v221, v230, v239, v248, v257, v265, v275, v283, v291, 1, 2, v305, v311, v317, v323, v329, v335);
        OUTLINED_FUNCTION_157();
        sub_25BC0C4D8();
        sub_25BAFCD30();
        v135 = swift_initStackObject();
        OUTLINED_FUNCTION_17_29(v135, v136, v137, v138, v139, v140, v141, v142, v143, v163, v171, v179, v187, v195, v204, v213, v222, v231, v240, v249, v258, v266, v276, v284, v292, v144);
        v145 = OUTLINED_FUNCTION_89_3();
        sub_25BBE0998(v145, v146, v147, &qword_27FBB4938, v196, v293, v188, v148, v164, v172, v180, v188, v196, v205, v214, v223, v232, v241, v250, v259, v267, v277, v285, v293, v297, v301, v306, v312, v318, v324, v330, v336, v340, v344, v348, v352, v356, v360, v364, v368, v372, v376, v380, v384, v388, v392, v396, v400, v404, v408, v412, v416, v420, v424, v428, v432, v436, v440, v444, v448);
        v149 = sub_25BCB614C();
        v150 = OUTLINED_FUNCTION_190(v149);
        sub_25BAF9B54(v150);
        OUTLINED_FUNCTION_147();
        sub_25BC0C4EC();
        sub_25BAFC990();
        v151 = *(v5 + 120);
        v452 = *(v5 + 104);
        v453 = v151;
        v454[0] = *(v5 + 136);
        *(v454 + 10) = *(v5 + 146);
        v152 = OUTLINED_FUNCTION_6_5();
        sub_25BBA1A84(v152, v153, v307, v110, v106, v451, v124, v451, &v452);
        sub_25BB06134(v457, v268, 4);

        goto LABEL_37;
      }
    }

    v54 = MEMORY[0x25F8779B0](v52, v49);
    goto LABEL_31;
  }

LABEL_37:
  OUTLINED_FUNCTION_16();
}

void *sub_25BBCF4E8@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_25BC8FACC();

  return sub_25BB949D8(v3, v4, a2, 0x2EDBE6FFu);
}

uint64_t sub_25BBCF540()
{
  OUTLINED_FUNCTION_42_10();
  v2 = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D8, &qword_25BCC5BA0);
  inited = swift_initStackObject();
  inited[3].n128_u64[0] = OUTLINED_FUNCTION_1_45(inited, xmmword_25BCBAE50);

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v5 = sub_25BCB614C();
  v6 = OUTLINED_FUNCTION_40_12(v5);
  sub_25BAD8178(v6);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  sub_25BC0C4C4();
  OUTLINED_FUNCTION_48_8();
  sub_25BAD8324(v7);
  if (v2 == 17 || v2 == 14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
    v9 = swift_initStackObject();
    OUTLINED_FUNCTION_96_2(v9, v10, v11, v12, v13, v14, v15, v16, v17, v69, v73, v138, v137, v18);
    *(v19 + 32) = 0x6E6F6C69737065;
    *(v19 + 40) = 0xE700000000000000;
    sub_25BBCF4E8(v19 + 48);
    v20 = sub_25BCB614C();
    v21 = OUTLINED_FUNCTION_63_1(v20);
    sub_25BAFA0CC(v21, v22, v23, v24, v25, v26, v27, v28, v29, v70, v74, v78, v82, 1, 2, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123);
    OUTLINED_FUNCTION_216();
    sub_25BC0C4D8();
    OUTLINED_FUNCTION_62_3();
  }

  else
  {
    v30 = sub_25BCB614C();
    v31 = OUTLINED_FUNCTION_63_1(v30);
    sub_25BAFA0CC(v31, v32, v33, v34, v35, v36, v37, v38, v39, v69, v73, v138, v137, 1, 2, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123);
    v137 = v40;
  }

  sub_25BAFCD30();
  v42 = v137;
  v41 = v138;
  v75 = sub_25BBCBBB4(v2);
  v44 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  v45 = swift_initStackObject();
  OUTLINED_FUNCTION_96_2(v45, v46, v47, v48, v49, v50, v51, v52, v53, v71, v75, v79, v83, v54);
  v55 = OUTLINED_FUNCTION_47_10();
  sub_25BBE0B84(v55, v56, v1, v57, v58, v59, v60, v61, v72, v76, v80, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153);
  v45[2].n128_u64[0] = v62;
  v45[2].n128_u64[1] = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v64 = swift_initStackObject();
  OUTLINED_FUNCTION_67_3(v64, v87);
  sub_25BAB9E04(v65);
  v66 = v64[2].n128_u8[8];
  v45[3].n128_u64[0] = v64[2].n128_u64[0];
  v45[3].n128_u8[8] = v66;
  swift_setDeallocating();
  sub_25BCB617C();
  sub_25BAB9E1C();
  v139 = sub_25BCB614C();
  v67 = sub_25BAF9B54(v45);
  swift_setDeallocating();
  sub_25BC0C4EC();
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_118_2();
  sub_25BBA18D8(v77, v44, v85, v81, v42, v41, v67, v139, v4);
}

uint64_t sub_25BBCFD84()
{
  result = 0x6C61757165;
  switch(*(v0 + 130))
  {
    case 1:
      result = 0x72657461657267;
      break;
    case 2:
      result = 0x5F72657461657267;
      break;
    case 3:
      result = 1936942444;
      break;
    case 4:
      result = 0x7571655F7373656CLL;
      break;
    case 5:
      result = 0x617571655F746F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_25BBCFE3C()
{
  OUTLINED_FUNCTION_17_1();
  v4 = v0;
  v5 = *(v0 + 40);
  v657 = v3;
  if (*(v5 + 160) == 12)
  {
    v6 = v3;

    v8 = sub_25BBA0B64(v7);
    v10 = v9;

    v12 = sub_25BBA0B64(v11);
    v342 = v13;
    v359 = v12;

    sub_25BBE0D70(v0, v6, qword_28154D158, type metadata accessor for BinaryComparisonOperation, asc_25BCD4048, v14, v15, v16, v234, v250, v266, v281, v296, v311, v325, v342, v359, asc_25BCD4048, type metadata accessor for BinaryComparisonOperation, v407, v423, v438, v453, v469, v484, v1, v514, v524, v533, v543, v553, v560, v567, v570, v573, v576, v579, v582, v585, v588, v591, v594, v597, v600, v603, v606, v609, v612, v615, v618, v621, v624, v627, v630, v633, v636, v639, v642, v645, v648);
    *&v654 = v17;
    *(&v654 + 1) = v18;
    OUTLINED_FUNCTION_201_0();
    MEMORY[0x25F876C90]();
    sub_25BBE0D70(v0, v6, qword_28154D158, type metadata accessor for BinaryComparisonOperation, asc_25BCD4048, v19, v20, v21, v235, v251, v267, v282, v297, v312, v326, v343, v360, v376, v392, v408, *(&v654 + 1), v439, v454, v470, v654, v499, v515, v525, v534, v544, v554, v561, v568, v571, v574, v577, v580, v583, v586, v589, v592, v595, v598, v601, v604, v607, v610, v613, v616, v619, v622, v625, v628, v631, v634, v637, v640, v643, v646, v649);
    *&v654 = v22;
    *(&v654 + 1) = v23;
    OUTLINED_FUNCTION_201_0();
    MEMORY[0x25F876C90]();
    v24 = v654;
    v409 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39B8, &unk_25BCC5B90);
    inited = swift_initStackObject();
    v26 = OUTLINED_FUNCTION_182(inited, xmmword_25BCBAE50);
    v26[3].n128_u64[0] = v8;
    v26[3].n128_u64[1] = v10;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    v28 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_77_2();
    v29 = sub_25BCB614C();
    v30 = OUTLINED_FUNCTION_40_12(v29);
    sub_25BAFA1D4(v30, v31, v32, v33, v34, v35, v36, v37, v236, v252, v268, v283, v298, v313, v327, v344, v361, v377, v393, v409, v424, *(&v24 + 1), v455, v24, v485, v500, 1, 2, v535, v545);
    OUTLINED_FUNCTION_46_9();
    swift_setDeallocating();
    sub_25BC0C500();
    OUTLINED_FUNCTION_48_8();
    sub_25BAFCBDC(v38);
    v39 = *(&v654 + 1);
    v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
    v40 = swift_initStackObject();
    OUTLINED_FUNCTION_14_26(v40, v41, v42, v43, v44, v45, v46, v47, v48, v237, v253, v269, v654, v299, v314, v328, v345, v362, v378, v394, v410, v425, v440, v456, v471, v486, v501, v49);
    v51 = OUTLINED_FUNCTION_44_7(v50, 1887007844);
    *(v51 + 48) = xmmword_25BCC81A0;
    *(v51 + 64) = 4;
    OUTLINED_FUNCTION_77_2();
    v52 = sub_25BCB614C();
    v53 = OUTLINED_FUNCTION_40_12(v52);
    sub_25BAFA0CC(v53, v54, v55, v56, v57, v58, v59, v60, v61, v238, v254, v270, v284, 0x3233746E69, 0xE500000000000000, v329, v346, v363, v379, v395, v411, v426, v441, v457, v472, v487, v502, v516, v526, v536, v546, v555, v562);
    OUTLINED_FUNCTION_104_3();
    sub_25BC0C4D8();
    OUTLINED_FUNCTION_62_3();
    sub_25BAFCD30();
    v62 = v654;
    v458 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
    v63 = swift_initStackObject();
    OUTLINED_FUNCTION_14_26(v63, v64, v65, v66, v67, v68, v69, v70, v71, v239, v255, v271, v285, v300, v315, v330, v347, v364, v380, v396, v412, v427, v442, v458, v473, v488, v503, v72);
    *(v73 + 32) = v489;
    inited[2].n128_u64[1] = v428;
    OUTLINED_FUNCTION_211(*(v4 + 40));
    sub_25BCB617C();
    OUTLINED_FUNCTION_77_2();
    v74 = sub_25BCB614C();
    v75 = OUTLINED_FUNCTION_40_12(v74);
    sub_25BAF9B54(v75);
    OUTLINED_FUNCTION_147();
    sub_25BC0C4EC();
    *&v654 = v28;
    sub_25BAFC990();
    v76 = v654;
    v654 = 0u;
    v655 = 0u;
    memset(v656, 0, 25);
    BYTE9(v656[1]) = 1;
    OUTLINED_FUNCTION_90_1();
    OUTLINED_FUNCTION_176();
    sub_25BBA1A84(v77, v78, v79, v80, v62, *(&v62 + 1), v76, *(&v76 + 1), &v654);

    v81 = swift_initStackObject();
    OUTLINED_FUNCTION_14_26(v81, v82, v83, v84, v85, v86, v87, v88, v89, v240, v256, v272, v286, v301, v316, v331, v348, v365, v381, v397, v413, v428, v443, v459, v474, v489, v504, v90);
    v92 = OUTLINED_FUNCTION_136(v91);
    v92[5] = v93;
    v92[6] = v366;
    v92[7] = v349;
    v94 = sub_25BCB614C();
    v95 = OUTLINED_FUNCTION_73_3(v94);
    sub_25BAFA1D4(v95, v96, v97, v98, v99, v100, v101, v102, v241, v257, v273, v287, v302, v317, v332, v349, v366, v382, v398, v414, v429, v444, v460, v475, v490, v505, v517, v527, v537, v547);
    OUTLINED_FUNCTION_46_9();
    swift_setDeallocating();
    v103 = sub_25BC0C500();
    *&v651[0] = v39;
    sub_25BAFCBDC(v103);
    v104 = v651[0];
    v105 = swift_initStackObject();
    OUTLINED_FUNCTION_14_26(v105, v106, v107, v108, v109, v110, v111, v112, v113, v242, v258, v274, v288, v303, v318, v333, v350, v367, v383, v399, v415, v430, v445, v461, v476, v491, v506, v114);
    v116 = OUTLINED_FUNCTION_184(v115, 1887007844);
    *(v116 + 48) = v304;
    *(v116 + 64) = 4;
    v117 = sub_25BCB614C();
    v118 = OUTLINED_FUNCTION_73_3(v117);
    sub_25BAFA0CC(v118, v119, v120, v121, v122, v123, v124, v125, v126, v243, v259, v27, v289, v304, *(&v304 + 1), v334, v351, v368, v384, v400, v416, v431, v446, v462, v477, v492, v507, v518, v528, v538, v548, v556, v563);
    OUTLINED_FUNCTION_104_3();
    sub_25BC0C4D8();
    *&v651[0] = v27;
    sub_25BAFCD30();
    v127 = v651[0];
    v128 = swift_initStackObject();
    OUTLINED_FUNCTION_14_26(v128, v129, v130, v131, v132, v133, v134, v135, v136, v244, v260, v275, v290, v305, v319, v335, v352, v369, v385, v401, v417, v432, v447, v463, v478, v493, v508, v137);
    *(v138 + 32) = v479;
    v653 = v448;
    OUTLINED_FUNCTION_211(*(v4 + 48));
    sub_25BCB617C();
    OUTLINED_FUNCTION_111_3();
    v139 = sub_25BCB614C();
    v140 = OUTLINED_FUNCTION_73_3(v139);
    sub_25BAF9B54(v140);
    OUTLINED_FUNCTION_157();
    sub_25BC0C4EC();
    sub_25BAFC990();
    v141 = OUTLINED_FUNCTION_90_1();
    sub_25BBA1A84(v141, v142, v104, *(&v104 + 1), v127, *(&v127 + 1), v27, *(&v651[0] + 1), &v654);

    v143 = sub_25BBCFD84();
    v353 = v144;
    v370 = v143;
    v145 = swift_allocObject();
    v146 = OUTLINED_FUNCTION_17_19(v145, xmmword_25BCBAE70);
    v146[3].n128_u64[0] = v494;
    v146[3].n128_u64[1] = v433;
    v147 = OUTLINED_FUNCTION_120_2(v146);
    *(v147 + 80) = v479;
    *(v147 + 88) = v448;
    v148 = MEMORY[0x277D84F90];
    v149 = sub_25BCB614C();
    v150 = OUTLINED_FUNCTION_73_3(v149);
    sub_25BAFA1D4(v150, v151, v152, v153, v154, v155, v156, v157, v245, v261, v276, v291, v306, v320, v336, v353, v370, v386, v402, v418, v433, v448, v464, v479, v494, v509, v519, v529, v539, v549);
    OUTLINED_FUNCTION_46_9();
    swift_setDeallocating();
    v158 = sub_25BC0C500();
    sub_25BAFCBDC(v158);
    *(&v651[0] + 1) = sub_25BCB614C();
    sub_25BAFA0CC(v148, v159, v160, v161, v162, v163, v164, v165, v166, v246, v262, v277, v292, v307, v321, v337, v354, v371, v387, v403, v419, v434, v449, v465, v480, v104, v510, v520, v530, v540, v550, v557, v564);
    *&v651[0] = v167;
    sub_25BAFCD30();
    v168 = v651[0];
    v169 = OUTLINED_FUNCTION_112_2(v466);
    OUTLINED_FUNCTION_14_26(v169, v170, v171, v172, v173, v174, v175, v176, v177, v247, v263, v278, v293, v308, v322, v338, v355, v372, v388, v404, v420, v435, v450, v466, v481, v495, v511, v178);
    v179 = OUTLINED_FUNCTION_47_10();
    sub_25BBE0998(v179, v180, v657, qword_28154D158, v405, v389, v181, v182, v248, v264, v279, v294, v309, v323, v339, v356, v373, v389, v405, v421, v436, v451, v467, v482, v496, v512, v521, v531, v541, v551, v558, v565, v569, v572, v575, v578, v581, v584, v587, v590, v593, v596, v599, v602, v605, v608, v611, v614, v617, v620, v623, v626, v629, v632, v635, v638, v641, v644, v647, v650);
    v652 = v183;
    v653 = v184;
    OUTLINED_FUNCTION_105_2(*(v4 + 56), *(v4 + 64));
    v185 = sub_25BCB614C();
    v186 = OUTLINED_FUNCTION_73_3(v185);
    v187 = sub_25BAF9B54(v186);
    swift_setDeallocating();
    sub_25BC0C4EC();
    *&v651[0] = v187;
    sub_25BAFC990();
    v188 = v651[0];
    v189 = *(v4 + 88);
    v651[0] = *(v4 + 72);
    v651[1] = v189;
    OUTLINED_FUNCTION_187(v651);
    OUTLINED_FUNCTION_11_21();
    sub_25BBA1A84(v190, v191, v192, v193, v168, *(&v168 + 1), v188, *(&v188 + 1), v651);
  }

  else
  {
    v522 = sub_25BBCFD84();
    v497 = v194;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D8, &qword_25BCC5BA0);
    v195 = swift_initStackObject();
    v196 = OUTLINED_FUNCTION_17_19(v195, xmmword_25BCBAE70);
    v196[3].n128_u64[0] = v5;
    v196[3].n128_u64[1] = 121;
    v196[4].n128_u64[0] = v197;
    v196[4].n128_u64[1] = *(v0 + 48);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    v198 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_191();
    v199 = sub_25BCB614C();
    v200 = OUTLINED_FUNCTION_40_12(v199);
    sub_25BAD8178(v200);
    OUTLINED_FUNCTION_157();
    v201 = sub_25BC0C4C4();
    sub_25BAD8324(v201);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_191();
    v202 = sub_25BCB614C();
    v203 = OUTLINED_FUNCTION_179(v202);
    sub_25BAFA0CC(v203, v204, v205, v206, v207, v208, v209, v210, v211, v234, v250, v266, v281, v296, v311, v325, v341, v358, v375, v391, v407, v423, v438, v453, v2, v497, v1, v522, v524, v533, v543, v553, v560);
    *&v654 = v212;
    sub_25BAFCD30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
    v213 = swift_initStackObject();
    *(v213 + 16) = xmmword_25BCBAE50;
    v214 = OUTLINED_FUNCTION_47_10();
    sub_25BBE0998(v214, v215, v657, v216, v217, v218, v219, v220, v249, v265, v280, v295, v310, v324, v340, v357, v374, v390, v406, v422, v437, v452, v468, v483, v498, v513, v523, v532, v542, v552, v559, v566, v567, v570, v573, v576, v579, v582, v585, v588, v591, v594, v597, v600, v603, v606, v609, v612, v615, v618, v621, v624, v627, v630, v633, v636, v639, v642, v645, v648);
    *(v213 + 32) = v221;
    *(v213 + 40) = v222;
    OUTLINED_FUNCTION_105_2(*(v4 + 56), *(v4 + 64));
    OUTLINED_FUNCTION_26_0();
    v223 = sub_25BCB614C();
    v224 = OUTLINED_FUNCTION_40_12(v223);
    sub_25BAF9B54(v224);
    OUTLINED_FUNCTION_46_9();
    swift_setDeallocating();
    sub_25BC0C4EC();
    *&v654 = v198;
    sub_25BAFC990();
    v225 = *(v4 + 88);
    v654 = *(v4 + 72);
    v655 = v225;
    v656[0] = *(v4 + 104);
    *(v656 + 10) = *(v4 + 114);
    OUTLINED_FUNCTION_29_17();
    OUTLINED_FUNCTION_149_0();
    sub_25BBA18D8(v226, v227, v228, v229, v230, v231, v232, v233, &v654);
  }

  OUTLINED_FUNCTION_16();
}

void sub_25BBD0BEC()
{
  OUTLINED_FUNCTION_17_1();
  v131 = v1;
  v2 = v0;
  v4 = v3;
  v5 = *(v2 + 48);
  *v255 = *(*(v2 + 40) + 152);
  v6 = *(v5 + 16);
  sub_25BCB617C();
  static ShapeInference.broadcasting(_:toRank:)(v255, v6, &v258);

  v7 = v258;
  if (!v258)
  {
LABEL_5:
    *v255 = 0;
    *&v255[8] = 0xE000000000000000;
    sub_25BCB70FC();
    v259 = *v255;
    MEMORY[0x25F876C90](0xD000000000000017, 0x800000025BCE07B0);
    v107 = sub_25BCB617C();
    v108 = MEMORY[0x25F876F80](v107, MEMORY[0x277D83B88]);
    MEMORY[0x25F876C90](v108);

    MEMORY[0x25F876C90](0x6E6172206F742060, 0xEB0000000060206BLL);
    *v255 = *(v5 + 16);
    v109 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v109);

    MEMORY[0x25F876C90](0xD000000000000022, 0x800000025BCE07D0);
    *v255 = v259;
    v257 = 3;
    sub_25BCB617C();
    OUTLINED_FUNCTION_50_7();
    sub_25BA97890(v110, v111, v112, v113, v114, v115, 481, v116, v117, v124, v131, v138, v144, v151, v158, v165, v173, v181, v189, v193, v197, v201, v205, v209);
  }

  v174 = v4;
  v9 = sub_25BBA0B64(v8);
  v11 = v10;

  v12 = OUTLINED_FUNCTION_27_19();
  v262 = sub_25BB2BAEC(v12 & 0xFFFFFFFFFFFFLL | 0x6465000000000000, 0xE800000000000000);
  v182 = v13;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39B8, &unk_25BCC5B90);
  inited = swift_initStackObject();
  v15 = OUTLINED_FUNCTION_182(inited, xmmword_25BCBAE50);
  v15[3].n128_u64[0] = v9;
  v15[3].n128_u64[1] = v11;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_88_3();
  *&v255[8] = sub_25BCB614C();
  sub_25BAFA1D4(inited, v17, v18, v19, v20, v21, v22, v23, v117, v124, v131, v138, v144, v151, v158, v166, v174, v182, 1, 2, v197, v201, v205, v209, v213, v217, v221, v225, v229, v233);
  OUTLINED_FUNCTION_183();
  swift_setDeallocating();
  v24 = sub_25BC0C500();
  *v255 = v9;
  sub_25BAFCBDC(v24);
  v145 = *&v255[8];
  v152 = *v255;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  v25 = swift_initStackObject();
  OUTLINED_FUNCTION_142(v25, v26, v27, v28, v29, v30, v31, v32, v33, v118, v125, v132, v139, v145, v152, v159, v167, v175, v183, v34);
  OUTLINED_FUNCTION_23_21();
  *(v35 + 32) = v36;
  *(v35 + 40) = v37;
  *(v35 + 48) = v7;
  *(v35 + 56) = 0;
  *(v35 + 64) = 7;
  sub_25BCB617C();
  OUTLINED_FUNCTION_88_3();
  *&v255[8] = sub_25BCB614C();
  sub_25BAFA0CC(v255, v38, v39, v40, v41, v42, v43, v44, v45, v119, v126, v133, v16, v146, v153, v160, v168, v176, v184, v190, v194, v198, v202, v206, v210, v214, v218, v222, v226, v230, v234, v237, v239);
  OUTLINED_FUNCTION_183();
  swift_setDeallocating();
  sub_25BC0C4D8();
  *v255 = v9;
  sub_25BAFCD30();
  v46 = *v255;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  v47 = swift_initStackObject();
  OUTLINED_FUNCTION_142(v47, v48, v49, v50, v51, v52, v53, v54, v55, v120, v127, v134, v140, v147, v154, v161, v169, v177, v185, v56);
  *(v57 + 32) = v262;
  *&v255[40] = v186;
  v58 = *(*(v2 + 40) + 160);
  *&v255[48] = v7;
  v255[56] = v58;
  sub_25BCB617C();
  OUTLINED_FUNCTION_88_3();
  *&v255[8] = sub_25BCB614C();
  v59 = sub_25BAF9B54(v255);
  swift_setDeallocating();
  sub_25BC0C4EC();
  *v255 = v59;
  sub_25BAFC990();
  v60 = *v255;
  v254 = 1;
  memset(v255, 0, sizeof(v255));
  v256 = 1;
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_11_21();
  v5 = v178;
  sub_25BBA1A84(v61, v62, v63, v64, v46, *(&v46 + 1), v60, *(&v60 + 1), v255);

  v65 = sub_25BB2BAEC(0x746E6174736E6F63, 0xE800000000000000);
  v67 = v66;
  v68 = *(v2 + 40);
  *&v259 = *(v2 + 48);
  HIBYTE(v250) = *(v68 + 160);
  sub_25BCB617C();
  v69 = sub_25BBD1250(&v259, &v250 + 7);
  v71 = v70;

  *&v259 = v69;
  *(&v259 + 1) = v71;
  LOBYTE(v260) = 8;
  v155 = v69;
  swift_unknownObjectRetain();
  sub_25BBA10A8(&v259, v65, v67, v255);
  sub_25BB06134(v259, *(&v259 + 1), v260);
  v72 = swift_initStackObject();
  v73 = OUTLINED_FUNCTION_17_19(v72, xmmword_25BCBAE70);
  v73[3].n128_u64[0] = v262;
  v73[3].n128_u64[1] = v186;
  v74 = OUTLINED_FUNCTION_120_2(v73);
  *(v74 + 80) = v65;
  *(v74 + 88) = v67;
  v75 = MEMORY[0x277D84F90];
  v76 = sub_25BCB614C();
  v77 = OUTLINED_FUNCTION_40_12(v76);
  sub_25BAFA1D4(v77, v78, v79, v80, v81, v82, v83, v84, v121, v128, v135, v141, v148, v155, v162, v170, v178, v186, v191, v195, v199, v203, v207, v211, v215, v219, v223, v227, v231, v235);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  sub_25BC0C500();
  OUTLINED_FUNCTION_48_8();
  sub_25BAFCBDC(v85);
  v86 = v259;
  v87 = sub_25BCB614C();
  *&v259 = v75;
  *(&v259 + 1) = v87;
  sub_25BAFCD30();
  v88 = v259;
  v89 = swift_initStackObject();
  OUTLINED_FUNCTION_142(v89, v90, v91, v92, v93, v94, v95, v96, v97, v122, v129, v136, v142, v149, v156, v163, v171, v179, v187, v98);
  sub_25BBE0998(v2, 0, v5, &qword_28154ED78, type metadata accessor for BroadcastOperation, byte_25BCCE338, sub_25BAC683C, v99, v123, v130, v137, v143, v150, v157, v164, v172, v180, v188, v192, v196, v200, v204, v208, v212, v216, v220, v224, v228, v232, v236, v238, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, *v251, *&v251[8], *&v251[16], *&v251[24], *&v251[32], *&v251[40], *&v251[48], *&v251[56], *v252, *&v252[8], *&v252[16], *&v252[24], *&v252[32], *&v252[40], *&v252[48], *&v252[56], *&v252[64], v253);
  v72[2].n128_u64[0] = v100;
  v72[2].n128_u64[1] = v101;
  v102 = *(v2 + 56);
  if (!*(v102 + 16))
  {
    __break(1u);
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_105_2(*(v102 + 32), *(v102 + 40));
  v103 = sub_25BCB614C();
  v104 = OUTLINED_FUNCTION_40_12(v103);
  sub_25BAF9B54(v104);
  OUTLINED_FUNCTION_57_2();
  swift_setDeallocating();
  sub_25BC0C4EC();
  *&v259 = v5;
  OUTLINED_FUNCTION_133();
  v105 = v259;
  v106 = *(v2 + 80);
  v259 = *(v2 + 64);
  v260 = v106;
  v261[0] = *(v2 + 96);
  *(v261 + 10) = *(v2 + 106);
  sub_25BBA1A84(7107949, 0xE300000000000000, v86, *(&v86 + 1), v88, *(&v88 + 1), v105, *(&v105 + 1), v75);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BBD1250(uint64_t *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for NativeTensorStorage(0);
  v9 = v2;
  v8 = v3;
  if ((v3 - 1) > 0xA)
  {
    v5 = 1;
  }

  else
  {
    v5 = qword_25BCC8BA8[(v3 - 1)];
  }

  sub_25BCB617C();
  return sub_25BBC0AF4(&v9, &v8, v5, v4, v3, v6);
}

void sub_25BBD12E8(_BYTE *a1, _BYTE *a2, char a3)
{
  switch(a3)
  {
    case 1:
      if (a1)
      {
        OUTLINED_FUNCTION_185();
        if (v9 == v10)
        {
          goto LABEL_38;
        }

        __break(1u);
        goto LABEL_36;
      }

      return;
    case 2:
      if (a1)
      {
        v11 = a2 - a1;
        if (a2 - a1 >= -3)
        {
          goto LABEL_42;
        }

        __break(1u);
        goto LABEL_25;
      }

      return;
    case 3:
LABEL_25:
      if (a1)
      {
        v12 = a2 - a1;
        if (a2 - a1 >= -7)
        {
          goto LABEL_30;
        }

        __break(1u);
        goto LABEL_28;
      }

      return;
    case 4:
      if (a1)
      {
        v4 = a2 - a1;
        v3 = a2 == a1;
        if (a2 - a1 >= 0)
        {
          goto LABEL_14;
        }

        __break(1u);
        goto LABEL_12;
      }

      return;
    case 5:
LABEL_36:
      if (a1)
      {
        OUTLINED_FUNCTION_185();
        if (v9 != v10)
        {
          goto LABEL_58;
        }

LABEL_38:
        if ((v13 + 1) >= 3)
        {
          OUTLINED_FUNCTION_137();
          v7 = &unk_25BCC8210;
          goto LABEL_52;
        }
      }

      return;
    case 6:
      if (a1)
      {
        v11 = a2 - a1;
        if (a2 - a1 < -3)
        {
          goto LABEL_59;
        }

LABEL_42:
        if ((v11 + 3) >= 7)
        {
          v6 = 4 * (v11 / 4);
          v7 = &unk_25BCC8200;
          goto LABEL_52;
        }
      }

      return;
    case 7:
LABEL_28:
      if (a1)
      {
        v12 = a2 - a1;
        if (a2 - a1 < -7)
        {
          goto LABEL_57;
        }

LABEL_30:
        if ((v12 + 7) >= 0xF)
        {
          v6 = 8 * (v12 / 8);
          v7 = &unk_25BCC81F0;
          goto LABEL_52;
        }
      }

      return;
    case 8:
      if (a1)
      {
        OUTLINED_FUNCTION_185();
        if (v9 != v10)
        {
          goto LABEL_61;
        }

        if ((v15 + 1) >= 3)
        {
          OUTLINED_FUNCTION_137();
          v7 = &unk_25BCC8220;
          goto LABEL_52;
        }
      }

      return;
    case 9:
      if (a1)
      {
        OUTLINED_FUNCTION_185();
        if (v9 != v10)
        {
          goto LABEL_56;
        }

        if ((v8 + 1) >= 3)
        {
          OUTLINED_FUNCTION_137();
          v7 = &unk_25BCC8230;
          goto LABEL_52;
        }
      }

      return;
    case 10:
      if (a1)
      {
        v14 = a2 - a1;
        if (a2 - a1 < -3)
        {
          goto LABEL_60;
        }

        if ((v14 + 3) >= 7)
        {
          v6 = 4 * (v14 / 4);
          v7 = &unk_25BCC8240;
          goto LABEL_52;
        }
      }

      return;
    case 11:
      goto LABEL_5;
    case 12:
LABEL_12:
      if (!a1)
      {
        return;
      }

      v4 = a2 - a1;
      v3 = a2 == a1;
      if (a2 - a1 >= 0)
      {
        goto LABEL_14;
      }

      goto LABEL_55;
    default:
      if (!a1)
      {
        return;
      }

      v4 = a2 - a1;
      v3 = a2 == a1;
      if (a2 - a1 >= 0)
      {
LABEL_14:
        if (!v3)
        {

          memset(a1, 1, v4);
        }
      }

      else
      {
        __break(1u);
LABEL_5:
        if (a1)
        {
          v5 = a2 - a1;
          if (a2 - a1 < -7)
          {
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
          }

          else if ((v5 + 7) >= 0xF)
          {
            v6 = 8 * (v5 / 8);
            v7 = &unk_25BCC8250;
LABEL_52:
            memset_pattern16(a1, v7, v6);
          }
        }
      }

      return;
  }
}

uint64_t sub_25BBD1538(uint64_t a1)
{
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v55 = v1;
  v4 = *(v1 + 40);
  v5 = sub_25BAAF54C(v4);
  v6 = MEMORY[0x277D84F90];
  v53 = v2;
  if (v5)
  {
    v7 = v5;
    v8 = v5 & ~(v5 >> 63);
    sub_25BCB617C();
    result = sub_25BB00850(0, v8, 0);
    if (v7 < 0)
    {
      goto LABEL_14;
    }

    v10 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x25F8779B0](v10, v4);
      }

      else
      {
        v11 = *(v4 + 8 * v10 + 32);
      }

      v101 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_25BB00850((v12 > 1), v13 + 1, 1);
      }

      ++v10;
      *(v6 + 16) = v13 + 1;
      v14 = (v6 + 24 * v13);
      v14[4] = 0x7365756C6176;
      v14[5] = 0xE600000000000000;
      v14[6] = v11;
    }

    while (v7 != v10);
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_12_27();
  v16 = sub_25BCB614C();
  v17 = OUTLINED_FUNCTION_40_12(v16);
  sub_25BAD8178(v17);
  OUTLINED_FUNCTION_57_2();

  OUTLINED_FUNCTION_132(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  inited = swift_initStackObject();
  v20 = OUTLINED_FUNCTION_31_16(inited, xmmword_25BCBAE70);
  v21 = OUTLINED_FUNCTION_36_11(v20);
  *(v21 + 72) = 0x61656C7265746E69;
  *(v21 + 80) = 0xEA00000000006576;
  OUTLINED_FUNCTION_177(v21, *(v55 + 56));
  OUTLINED_FUNCTION_12_27();
  v22 = sub_25BCB614C();
  v23 = OUTLINED_FUNCTION_40_12(v22);
  sub_25BAFA0CC(v23, v24, v25, v26, v27, v28, v29, v30, v31, v46, v101, v102, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  sub_25BC0C4D8();
  OUTLINED_FUNCTION_48_8();
  sub_25BAFCD30();
  v32 = v101;
  v33 = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  *(swift_initStackObject() + 16) = xmmword_25BCBAE50;
  v34 = OUTLINED_FUNCTION_35_13();
  sub_25BBE0998(v34, v35, v36, v37, v38, v39, v40, v41, v47, v49, v51, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v95, v96, v97, v98, v99, v100, v101, v102, v104, v105, v106, v107, v108, v109, v110, v111, v112, a1, v113, v114, v115, v116, v117, v118, v119, v120, vars0, vars8);
  OUTLINED_FUNCTION_74_3(v42, v43);
  result = sub_25BAB52A4();
  if (*(result + 16))
  {
    OUTLINED_FUNCTION_38_12(result);

    v44 = sub_25BCB614C();
    v45 = OUTLINED_FUNCTION_63_1(v44);
    sub_25BAF9B54(v45);
    OUTLINED_FUNCTION_156();
    sub_25BC0C4EC();
    sub_25BAFC990();
    OUTLINED_FUNCTION_95_3();
    sub_25BBA18D8(0x7461636E6F63, 0xE600000000000000, v50, v52, v32, v33, v15, v103, v48);
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_25BBD1B54()
{
  v1 = 0x726568746167;
  if (*(v0 + 56) != 1)
  {
    v1 = 0x6E5F726568746167;
  }

  if (*(v0 + 56))
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_25BBD1BB4()
{
  v1 = *(v0 + 40);
  if (!*(v0 + 56))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
    inited = swift_initStackObject();
    v3 = inited;
    *(inited + 16) = xmmword_25BCBAE50;
    v5 = 1936291937;
    v6 = 0xE400000000000000;
LABEL_6:
    *(inited + 32) = v5;
    *(inited + 40) = v6;
    *(inited + 48) = v1;
    *(inited + 56) = 0;
    *(inited + 64) = 1;
    goto LABEL_7;
  }

  if (*(v0 + 56) != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
    inited = swift_initStackObject();
    v3 = inited;
    *(inited + 16) = xmmword_25BCBAE50;
    v5 = 0x69645F6863746162;
    v6 = 0xEA0000000000736DLL;
    goto LABEL_6;
  }

  v2 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_25BCBAE70;
  *(v3 + 32) = 1936291937;
  *(v3 + 40) = 0xE400000000000000;
  *(v3 + 48) = v1;
  *(v3 + 56) = 0;
  *(v3 + 64) = 1;
  *(v3 + 72) = 0x69645F6863746162;
  *(v3 + 80) = 0xEA0000000000736DLL;
  *(v3 + 88) = v2;
  *(v3 + 96) = 0;
  *(v3 + 104) = 1;
LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  sub_25BCB614C();
  sub_25BAFA0CC(v3, v7, v8, v9, v10, v11, v12, v13, v14, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  v16 = v15;
  swift_setDeallocating();
  sub_25BC0C4D8();
  sub_25BAFCD30();
  return v16;
}

uint64_t sub_25BBD1FD0()
{
  v1 = 0x72657474616373;
  if (*(v0 + 48) != 1)
  {
    v1 = 0x5F72657474616373;
  }

  if (*(v0 + 48))
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_25BBD2034()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  if (v2 > 1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25BCBAE50;
    *(inited + 32) = 1701080941;
    *(inited + 40) = 0xE400000000000000;
    v7 = *(v0 + 80);
    v8 = qword_25BCC8C00[v7];
    v9 = qword_25BCC8C38[v7];
    *(inited + 48) = v8;
    *(inited + 56) = v9;
    *(inited + 64) = 4;
  }

  else
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25BCBAE70;
    *(inited + 32) = 1936291937;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = v1;
    *(inited + 56) = 0;
    *(inited + 64) = 1;
    *(inited + 72) = 1701080941;
    *(inited + 80) = 0xE400000000000000;
    v4 = *(v0 + 80);
    v5 = qword_25BCC8C00[v4];
    v6 = qword_25BCC8C38[v4];
    *(inited + 88) = v5;
    *(inited + 96) = v6;
    *(inited + 104) = 4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  sub_25BCB614C();
  sub_25BAFA0CC(inited, v10, v11, v12, v13, v14, v15, v16, v17, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
  v19 = v18;
  swift_setDeallocating();
  sub_25BC0C4D8();
  sub_25BAFCD30();
  return v19;
}

uint64_t sub_25BBD2BE4()
{
  v1 = *(v0 + 48);
  if (*(v0 + 56) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25BCBAE70;
    *(inited + 32) = 0x69735F74696C7073;
    *(inited + 40) = 0xEB0000000073657ALL;
    *(inited + 48) = v1;
    *(inited + 56) = 0;
    *(inited + 64) = 5;
    *(inited + 72) = 1936291937;
    *(inited + 80) = 0xE400000000000000;
    *(inited + 88) = *(v0 + 64);
    *(inited + 96) = 0;
    *(inited + 104) = 1;
    sub_25BCB617C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25BCBAE70;
    *(inited + 32) = 0x696C70735F6D756ELL;
    *(inited + 40) = 0xEA00000000007374;
    *(inited + 48) = v1;
    *(inited + 56) = 0;
    *(inited + 64) = 1;
    *(inited + 72) = 1936291937;
    *(inited + 80) = 0xE400000000000000;
    *(inited + 88) = *(v0 + 64);
    *(inited + 96) = 0;
    *(inited + 104) = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v3 = sub_25BCB614C();
  sub_25BAFA0CC(inited, v4, v5, v6, v7, v8, v9, v10, v11, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v3, v30, v31, v32, v33, v34, v35, v36, v37);
  v13 = v12;
  swift_setDeallocating();
  sub_25BC0C4D8();
  sub_25BAFCD30();
  return v13;
}

uint64_t sub_25BBD2D68()
{
  OUTLINED_FUNCTION_43_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D8, &qword_25BCC5BA0);
  inited = swift_initStackObject();
  inited[3].n128_u64[0] = OUTLINED_FUNCTION_1_45(inited, xmmword_25BCBAE50);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  *(&v14[0] + 1) = sub_25BCB614C();
  sub_25BAD8178(inited);
  OUTLINED_FUNCTION_57_2();
  swift_setDeallocating();
  v3 = sub_25BC0C4C4();
  *&v14[0] = v1;
  sub_25BAD8324(v3);
  v4 = v14[0];
  v5 = sub_25BBD2BE4();
  v7 = v6;
  v8 = OUTLINED_FUNCTION_5_17();
  v10 = sub_25BBD2EE4(v8, v9);
  v11 = v0[7];
  v14[0] = v0[6];
  v14[1] = v11;
  v15[0] = v0[8];
  *(v15 + 10) = *(v0 + 138);
  sub_25BBA18D8(0x74696C7073, 0xE500000000000000, v4, *(&v4 + 1), v5, v7, v10, v12, v14);
}

uint64_t sub_25BBD3A2C()
{
  result = 0x6D5F656375646572;
  switch(*(v0 + 130))
  {
    case 3:
      result = 0x705F656375646572;
      break;
    case 4:
      result = OUTLINED_FUNCTION_215();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BBD3ABC(uint64_t a1)
{
  v3 = v1;
  v57 = sub_25BBD3A2C();
  v122 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D8, &qword_25BCC5BA0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_17_19(inited, xmmword_25BCBAE50);
  inited[3].n128_u64[0] = *(v3 + 40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v7 = OUTLINED_FUNCTION_208();
  v8 = OUTLINED_FUNCTION_40_12(v7);
  sub_25BAD8178(v8);
  OUTLINED_FUNCTION_147();
  v9 = sub_25BC0C4C4();
  sub_25BAD8324(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_25BCBAE70;
  OUTLINED_FUNCTION_65_1(v10, 1936029793);
  *(v10 + 48) = *(v3 + 136);
  *(v10 + 56) = 0;
  *(v10 + 64) = 5;
  OUTLINED_FUNCTION_51_9();
  *(v10 + 72) = v11;
  *(v10 + 80) = v12;
  *(v10 + 88) = *(v3 + 48);
  *(v10 + 96) = 0;
  *(v10 + 104) = 0;
  sub_25BCB617C();
  v13 = OUTLINED_FUNCTION_208();
  v14 = OUTLINED_FUNCTION_40_12(v13);
  sub_25BAFA0CC(v14, v15, v16, v17, v18, v19, v20, v21, v22, v48, v51, v111, v57, 1, 2, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  sub_25BC0C4D8();
  OUTLINED_FUNCTION_48_8();
  sub_25BAFCD30();
  v23 = v111;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  v24 = swift_initStackObject();
  OUTLINED_FUNCTION_96_2(v24, v25, v26, v27, v28, v29, v30, v31, v32, v49, v52, v54, v58, v33);
  v34 = OUTLINED_FUNCTION_151();
  sub_25BBE0B84(v34, v35, a1, v36, v37, v38, v39, v40, v50, v53, v55, v59, v61, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v2, v111, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v124, v125, v126, v127);
  v24[2].n128_u64[0] = v41;
  v24[2].n128_u64[1] = v42;
  result = sub_25BABCFCC();
  if (*(result + 16))
  {
    v44 = *(result + 40);
    v24[3].n128_u64[0] = *(result + 32);
    v24[3].n128_u8[8] = v44;
    sub_25BCB617C();

    v45 = sub_25BCB614C();
    v46 = OUTLINED_FUNCTION_179(v45);
    v47 = sub_25BAF9B54(v46);
    swift_setDeallocating();
    sub_25BC0C4EC();
    OUTLINED_FUNCTION_163();
    sub_25BBA18D8(v60, v123, v2, v56, v2, v23, v47, v112, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BBD46A8()
{
  OUTLINED_FUNCTION_53_7();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D8, &qword_25BCC5BA0);
  inited = swift_initStackObject();
  v4 = OUTLINED_FUNCTION_0_58(inited, xmmword_25BCBAE70);
  OUTLINED_FUNCTION_135(v4);
  inited[4].n128_u64[1] = *(v0 + 48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v5 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_11_29();
  v6 = sub_25BCB614C();
  v7 = OUTLINED_FUNCTION_40_12(v6);
  sub_25BAD8178(v7);
  OUTLINED_FUNCTION_104_3();
  sub_25BC0C4C4();
  OUTLINED_FUNCTION_62_3();
  sub_25BAD8324(v8);
  OUTLINED_FUNCTION_174();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  v9 = swift_initStackObject();
  OUTLINED_FUNCTION_21_22(v9, v10, v11, v12, v13, v14, v15, v16, v17, v50, v53, v18);
  *(v19 + 32) = 0x736F70736E617274;
  *(v19 + 40) = 0xEB00000000785F65;
  *(v19 + 48) = *(v0 + 56);
  *(v19 + 56) = 0;
  *(v19 + 64) = 0;
  *(v19 + 72) = 0x736F70736E617274;
  *(v19 + 80) = 0xEB00000000795F65;
  OUTLINED_FUNCTION_177(v19, *(v0 + 57));
  OUTLINED_FUNCTION_11_29();
  v20 = sub_25BCB614C();
  v21 = OUTLINED_FUNCTION_40_12(v20);
  sub_25BAFA0CC(v21, v22, v23, v24, v25, v26, v27, v28, v29, v51, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98);
  OUTLINED_FUNCTION_104_3();
  sub_25BC0C4D8();
  OUTLINED_FUNCTION_62_3();
  sub_25BAFCD30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  *(swift_initStackObject() + 16) = xmmword_25BCBAE50;
  v30 = OUTLINED_FUNCTION_47_10();
  sub_25BBE0B84(v30, v31, v2, v32, v33, v34, v35, v36, v52, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127);
  OUTLINED_FUNCTION_81_3(v37, v38);
  OUTLINED_FUNCTION_11_29();
  v39 = sub_25BCB614C();
  v40 = OUTLINED_FUNCTION_40_12(v39);
  sub_25BAF9B54(v40);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  sub_25BC0C4EC();
  OUTLINED_FUNCTION_103_3();
  v41 = OUTLINED_FUNCTION_85_3();
  OUTLINED_FUNCTION_32_14(v41, v42, v43, v44, v45, v46, v47, v48, v5);
}

uint64_t sub_25BBD4934()
{
  sub_25BB2B624(v0, v12);
  switch(v13)
  {
    case 0:
      return 0x7463656C666572;
    case 2:
      return 0x746163696C706572;
    case 1:
      BYTE4(v11) = 0;
      sub_25BA97890("milName", 7, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/MIL/MILTensorOperation.swift", 113, 2, 967, v1, 0, 0, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12[0], v12[1], v12[2], 1, v14);
  }

  sub_25BB2B680(v12);
  return 0x746E6174736E6F63;
}

uint64_t sub_25BBD4A04@<X0>(uint64_t a1@<X8>)
{
  sub_25BB2B624(v1, &v4);
  if (v5 >= 3)
  {
    return sub_25BA97060(&v4, a1);
  }

  *(a1 + 24) = MEMORY[0x277D83A90];
  *(a1 + 32) = &protocol witness table for Float;
  *a1 = 0;
  return sub_25BB2B680(&v4);
}

void sub_25BBD4A74()
{
  OUTLINED_FUNCTION_17_1();
  v2 = v1;
  sub_25BB2B624(v0 + 48, &v96);
  v3 = *(&v97 + 1);
  sub_25BB2B680(&v96);
  if (v3 == 1)
  {
    goto LABEL_20;
  }

  v89 = v0;
  v4 = *(v0 + 88);
  v5 = *(v4 + 16);
  v91 = v2;
  if (v5)
  {
    v6 = (v4 + 40);
    v7 = MEMORY[0x277D84F90];
    v93 = xmmword_25BCBAE70;
    while (1)
    {
      v8 = *(v6 - 1);
      v9 = *v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25BCBAE70;
      *(inited + 32) = v8;
      v11 = (inited + 32);
      *(inited + 40) = v9;
      v12 = *(v7 + 16);
      v13 = v12 + 2;
      if (__OFADD__(v12, 2))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v15 = *(v7 + 24) >> 1, v15 < v13))
      {
        if (v12 <= v13)
        {
          v16 = v12 + 2;
        }

        else
        {
          v16 = v12;
        }

        sub_25BA96630(isUniquelyReferenced_nonNull_native, v16, 1, v7);
        v7 = v17;
        v15 = *(v17 + 24) >> 1;
      }

      v18 = *(v7 + 16);
      if (v15 - v18 < 2)
      {
        goto LABEL_18;
      }

      *(v7 + 8 * v18 + 32) = *v11;

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, 2);
      v21 = v19 + 2;
      if (v20)
      {
        goto LABEL_19;
      }

      v6 += 2;
      *(v7 + 16) = v21;
      if (!--v5)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    OUTLINED_FUNCTION_86();
    *&v96 = 0xD000000000000011;
    *(&v96 + 1) = v67;
    v97 = 0u;
    memset(v98, 0, sizeof(v98));
    LODWORD(v99) = 0;
    BYTE4(v101) = 6;
    OUTLINED_FUNCTION_50_7();
    sub_25BA97890(v68, v69, v70, v71, v72, v73, 992, v74, v75, v78, v81, v83, v85, v87, v89, v91, v93, *(&v93 + 1), v96, *(&v96 + 1), v97, *(&v97 + 1), *&v98[0], *(&v98[0] + 1));
  }

  v7 = MEMORY[0x277D84F90];
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D8, &qword_25BCC5BA0);
  v22 = swift_initStackObject();
  OUTLINED_FUNCTION_17_19(v22, xmmword_25BCBAE50);
  v23 = v89;
  v22[3].n128_u64[0] = *(v89 + 40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v24 = MEMORY[0x277D84F90];
  *(&v96 + 1) = OUTLINED_FUNCTION_114_2();
  sub_25BAD8178(v22);
  OUTLINED_FUNCTION_157();
  v25 = sub_25BC0C4C4();
  *&v96 = 0;
  sub_25BAD8324(v25);
  v26 = v96;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_25BCBAE90;
  OUTLINED_FUNCTION_41_11();
  v28[4] = v29;
  v28[5] = v30;
  v28[6] = v7;
  v28[7] = 0;
  v31 = OUTLINED_FUNCTION_200(v28);
  *(v31 + 72) = 1701080941;
  *(v31 + 80) = 0xE400000000000000;
  *(v27 + 88) = sub_25BBD4934();
  *(v27 + 96) = v32;
  *(v27 + 104) = 4;
  OUTLINED_FUNCTION_181();
  *(v27 + 112) = v33;
  *(v27 + 120) = 0xEC0000006C61765FLL;
  sub_25BBD4A04(&v96);
  sub_25BB9483C(&v96, v27 + 128);
  v34 = OUTLINED_FUNCTION_114_2();
  sub_25BAFA0CC(v27, v35, v36, v37, v38, v39, v40, v41, v42, v75, v78, 1, 2, v85, *(&v26 + 1), v89, v91, v26, *(&v93 + 1), v96, v34, v97, *(&v97 + 1), *&v98[0], *(&v98[0] + 1), *&v98[1], *(&v98[1] + 1), v99, v100, v101, v102[0], v102[1], v102[2]);
  v44 = v43;
  swift_setDeallocating();
  sub_25BC0C4D8();
  *&v96 = v44;
  sub_25BAFCD30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  v45 = swift_initStackObject();
  OUTLINED_FUNCTION_21_22(v45, v46, v47, v48, v49, v50, v51, v52, v53, v76, v79, v54);
  sub_25BBE0998(v23, 0, v92, &qword_27FBB4518, type metadata accessor for PadOperation, &unk_25BCC1A44, sub_25BC60CB0, v55, v77, v80, v82, v84, v86, v88, v90, v92, v94, v95, v96, *(&v96 + 1), v97, *(&v97 + 1), *&v98[0], *(&v98[0] + 1), *&v98[1], *(&v98[1] + 1), v99, v100, v101, v102[0], v102[1], v102[2], v102[3], v102[4], v102[5], v102[6], v102[7], *v103, *&v103[8], *&v103[16], *&v103[24], *&v103[32], *&v103[40], *&v103[48], *&v103[56], *&v103[64], *&v103[72], *&v103[80], *&v103[88], *&v103[96], *&v103[104], *&v103[112], *&v103[120], *&v103[128], *&v103[136], *&v103[144], v104, v105, v106, v107);
  *&v98[0] = v56;
  *(&v98[0] + 1) = v57;
  OUTLINED_FUNCTION_105_2(*(v23 + 96), *(v23 + 104));
  *(&v96 + 1) = OUTLINED_FUNCTION_114_2();
  sub_25BAF9B54(&v96);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  sub_25BC0C4EC();
  *&v96 = v24;
  sub_25BAFC990();
  v58 = *(v23 + 128);
  v96 = *(v23 + 112);
  v97 = v58;
  v98[0] = *(v23 + 144);
  *(v98 + 10) = *(v23 + 154);
  OUTLINED_FUNCTION_149_0();
  sub_25BBA18D8(v59, v60, v61, v62, v63, v64, v65, v66, &v96);

  OUTLINED_FUNCTION_16();
}

void sub_25BBD4EE8()
{
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_53_7();
  v71 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D8, &qword_25BCC5BA0);
  inited = swift_initStackObject();
  inited[3].n128_u64[0] = OUTLINED_FUNCTION_1_45(inited, xmmword_25BCBAE50);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v3 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_64_4();
  v4 = sub_25BCB614C();
  v5 = OUTLINED_FUNCTION_40_12(v4);
  sub_25BAD8178(v5);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  sub_25BC0C4C4();
  OUTLINED_FUNCTION_48_8();
  sub_25BAD8324(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  v7 = swift_initStackObject();
  OUTLINED_FUNCTION_28_16(v7, xmmword_25BCC81C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  OUTLINED_FUNCTION_54();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_122_3(v8, *(v0 + 48), xmmword_25BCBAE70);
  v7[4].n128_u8[0] = 5;
  OUTLINED_FUNCTION_9_33();
  OUTLINED_FUNCTION_193(v9);
  OUTLINED_FUNCTION_54();
  v10 = swift_allocObject();
  v11 = OUTLINED_FUNCTION_39_12(v10, *(v0 + 64), xmmword_25BCBAE70);
  OUTLINED_FUNCTION_22_21(v11, xmmword_25BCBDF80);
  v7[9].n128_u8[0] = 5;
  OUTLINED_FUNCTION_8_32();
  v7[9].n128_u64[1] = v12;
  v7[10].n128_u64[0] = v13;
  OUTLINED_FUNCTION_139(xmmword_25BCC81D0);
  OUTLINED_FUNCTION_86();
  v7[12].n128_u64[0] = 0xD00000000000001CLL;
  v7[12].n128_u64[1] = v14;
  v7[13].n128_u64[0] = (*(v0 + 192) & 1) == 0;
  v7[13].n128_u64[1] = 0;
  v7[14].n128_u8[0] = 0;
  OUTLINED_FUNCTION_49_10();
  v7[14].n128_u64[1] = v15;
  v7[15].n128_u64[0] = v16;
  v7[15].n128_u64[1] = 0;
  v7[16].n128_u64[0] = 0;
  v7[16].n128_u8[8] = 0;
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_64_4();
  v17 = sub_25BCB614C();
  v18 = OUTLINED_FUNCTION_40_12(v17);
  sub_25BAFA0CC(v18, v19, v20, v21, v22, v23, v24, v25, v26, v57, v60, 2, 4, 1, 2, v69, v71, v132, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  sub_25BC0C4D8();
  OUTLINED_FUNCTION_48_8();
  sub_25BAFCD30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  v27 = swift_initStackObject();
  OUTLINED_FUNCTION_96_2(v27, v28, v29, v30, v31, v32, v33, v34, v35, v58, v61, v63, v65, v36);
  v37 = OUTLINED_FUNCTION_47_10();
  sub_25BBE0B84(v37, v38, v72, v39, v40, v41, v42, v43, v59, v62, v64, v66, v67, v68, v70, v72, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131);
  OUTLINED_FUNCTION_82_4(v44, v45);
  OUTLINED_FUNCTION_64_4();
  v46 = sub_25BCB614C();
  v47 = OUTLINED_FUNCTION_40_12(v46);
  sub_25BAF9B54(v47);
  OUTLINED_FUNCTION_147();
  sub_25BC0C4EC();
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_71_2(*(v0 + 112), *(v0 + 128));
  *(v48 + 32) = *(v0 + 144);
  *(v48 + 42) = *(v0 + 154);
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_34_12();
  OUTLINED_FUNCTION_125_0(v49, v50, v51, v52, v53, v54, v55, v56, v3);

  OUTLINED_FUNCTION_16();
}

void sub_25BBD51F4()
{
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_53_7();
  v51 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D8, &qword_25BCC5BA0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_79_3(inited, xmmword_25BCBAE70);
  OUTLINED_FUNCTION_58_4(v1[11].n128_i64[0]);
  inited[4].n128_u64[1] = v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_64_4();
  v4 = sub_25BCB614C();
  v5 = OUTLINED_FUNCTION_40_12(v4);
  sub_25BAD8178(v5);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  sub_25BC0C4C4();
  OUTLINED_FUNCTION_48_8();
  sub_25BAD8324(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  v7 = swift_initStackObject();
  OUTLINED_FUNCTION_28_16(v7, xmmword_25BCC81C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  OUTLINED_FUNCTION_54();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_122_3(v8, v1[3], xmmword_25BCBAE70);
  v7[4].n128_u8[0] = 5;
  OUTLINED_FUNCTION_9_33();
  OUTLINED_FUNCTION_193(v9);
  OUTLINED_FUNCTION_54();
  v10 = swift_allocObject();
  v11 = OUTLINED_FUNCTION_39_12(v10, v1[4], xmmword_25BCBAE70);
  OUTLINED_FUNCTION_22_21(v11, xmmword_25BCBDF80);
  v7[9].n128_u8[0] = 5;
  OUTLINED_FUNCTION_8_32();
  v7[9].n128_u64[1] = v12;
  v7[10].n128_u64[0] = v13;
  OUTLINED_FUNCTION_139(xmmword_25BCC81D0);
  OUTLINED_FUNCTION_86();
  v7[12].n128_u64[0] = 0xD00000000000001CLL;
  v7[12].n128_u64[1] = v14;
  v7[13].n128_u64[0] = (v1[11].n128_u8[8] & 1) == 0;
  v7[13].n128_u64[1] = 0;
  v7[14].n128_u8[0] = 0;
  OUTLINED_FUNCTION_49_10();
  v7[14].n128_u64[1] = v15;
  v7[15].n128_u64[0] = v16;
  v7[15].n128_u64[1] = 0;
  v7[16].n128_u64[0] = 0;
  v7[16].n128_u8[8] = 0;
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_64_4();
  v17 = sub_25BCB614C();
  v18 = OUTLINED_FUNCTION_40_12(v17);
  sub_25BAFA0CC(v18, v19, v20, v21, v22, v23, v24, v25, v26, v46, v49, v51, v120, 2, 4, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  sub_25BC0C4D8();
  OUTLINED_FUNCTION_48_8();
  sub_25BAFCD30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  *(swift_initStackObject() + 16) = xmmword_25BCBAE50;
  v27 = OUTLINED_FUNCTION_47_10();
  sub_25BBE0B84(v27, v28, v52, v29, v30, v31, v32, v33, v47, v50, v52, v53, v54, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119);
  OUTLINED_FUNCTION_82_4(v34, v35);
  OUTLINED_FUNCTION_64_4();
  v36 = sub_25BCB614C();
  v37 = OUTLINED_FUNCTION_40_12(v36);
  sub_25BAF9B54(v37);
  OUTLINED_FUNCTION_147();
  sub_25BC0C4EC();
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_99_3();
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_34_12();
  OUTLINED_FUNCTION_125_0(v38, v39, v40, v41, v42, v43, v44, v45, v48);

  OUTLINED_FUNCTION_16();
}

void sub_25BBD5500()
{
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_53_7();
  v67 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D8, &qword_25BCC5BA0);
  inited = swift_initStackObject();
  inited[3].n128_u64[0] = OUTLINED_FUNCTION_1_45(inited, xmmword_25BCBAE50);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_64_4();
  v3 = sub_25BCB614C();
  v4 = OUTLINED_FUNCTION_40_12(v3);
  sub_25BAD8178(v4);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  sub_25BC0C4C4();
  OUTLINED_FUNCTION_48_8();
  sub_25BAD8324(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  v6 = swift_initStackObject();
  OUTLINED_FUNCTION_28_16(v6, xmmword_25BCC4630);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  OUTLINED_FUNCTION_54();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_122_3(v7, v0[3], xmmword_25BCBAE70);
  v6[4].n128_u8[0] = 5;
  OUTLINED_FUNCTION_9_33();
  OUTLINED_FUNCTION_193(v8);
  OUTLINED_FUNCTION_54();
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_39_12(v9, v0[4], xmmword_25BCBAE70);
  OUTLINED_FUNCTION_22_21(v10, xmmword_25BCBDF80);
  v6[9].n128_u8[0] = 5;
  OUTLINED_FUNCTION_8_32();
  v6[9].n128_u64[1] = v11;
  v6[10].n128_u64[0] = v12;
  OUTLINED_FUNCTION_139(xmmword_25BCC81D0);
  OUTLINED_FUNCTION_49_10();
  v6[12].n128_u64[0] = v13;
  v6[12].n128_u64[1] = v14;
  v6[13].n128_u64[0] = 0;
  v6[13].n128_u64[1] = 0;
  v6[14].n128_u8[0] = 0;
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_64_4();
  v15 = sub_25BCB614C();
  v16 = OUTLINED_FUNCTION_40_12(v15);
  sub_25BAFA0CC(v16, v17, v18, v19, v20, v21, v22, v23, v24, v54, v58, 2, 4, 1, 2, v67, v130, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  sub_25BC0C4D8();
  OUTLINED_FUNCTION_48_8();
  sub_25BAFCD30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  v25 = swift_initStackObject();
  OUTLINED_FUNCTION_96_2(v25, v26, v27, v28, v29, v30, v31, v32, v33, v55, v59, v61, v63, v34);
  v35 = OUTLINED_FUNCTION_47_10();
  sub_25BBE0B84(v35, v36, v68, v37, v38, v39, v40, v41, v56, v60, v62, v64, v65, v66, v68, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129);
  OUTLINED_FUNCTION_82_4(v42, v43);
  OUTLINED_FUNCTION_64_4();
  v44 = sub_25BCB614C();
  v45 = OUTLINED_FUNCTION_40_12(v44);
  sub_25BAF9B54(v45);
  OUTLINED_FUNCTION_147();
  sub_25BC0C4EC();
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_99_3();
  OUTLINED_FUNCTION_34_12();
  OUTLINED_FUNCTION_125_0(v46, v47, v48, v49, v50, v51, v52, v53, v57);

  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BBD57D0()
{
  v1 = *(v0 + 64);
  if (v1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25BCBAE70;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x800000025BCE0910;
    *(inited + 48) = *(v0 + 48);
    *(inited + 56) = 0;
    *(inited + 64) = 1;
    *(inited + 72) = 0xD000000000000011;
    *(inited + 80) = 0x800000025BCE0930;
    *(inited + 88) = *(v0 + 56);
    *(inited + 96) = 0;
    *(inited + 104) = 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
    v3 = swift_initStackObject();
    inited = v3;
    *(v3 + 16) = xmmword_25BCBAE90;
    *(v3 + 32) = 0xD000000000000012;
    *(v3 + 40) = 0x800000025BCE0910;
    *(v3 + 48) = *(v0 + 48);
    *(v3 + 56) = 0;
    *(v3 + 64) = 1;
    *(v3 + 72) = 0xD000000000000011;
    *(v3 + 80) = 0x800000025BCE0930;
    *(v3 + 88) = *(v0 + 56);
    *(v3 + 96) = 0;
    *(v3 + 104) = 1;
    strcpy((v3 + 112), "sampling_mode");
    *(v3 + 126) = -4864;
    v4 = 0x5F4E47494C414E55;
    if (v1)
    {
      v4 = 0x4F435F4E47494C41;
    }

    v5 = 0xEF5352454E524F43;
    if (v1)
    {
      v5 = 0xED00005352454E52;
    }

    *(v3 + 128) = v4;
    *(v3 + 136) = v5;
    *(v3 + 144) = 4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v6 = sub_25BCB614C();
  sub_25BAFA0CC(inited, v7, v8, v9, v10, v11, v12, v13, v14, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v6, v34, v35, v36, v37, v38, v39, v40);
  v16 = v15;
  swift_setDeallocating();
  sub_25BC0C4D8();
  sub_25BAFCD30();
  return v16;
}

void sub_25BBD59D4()
{
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_53_7();
  v3 = v2;
  v4 = *(v0 + 40);
  if (*(*(v4 + 152) + 16) == 3)
  {
    OUTLINED_FUNCTION_70_3();
    v477 = v5;
    v6 = OUTLINED_FUNCTION_47_10();
    sub_25BBE0B84(v6, v7, v3, v8, v9, v10, v11, v12, v246, v261, v276, v291, v306, v321, v336, v351, v364, v378, v393, v406, v420, sub_25BC60CB4, &unk_25BCC6504, v463, v477, v492, v505, v512, v518, v525, v532, v537, v542, v545, v548, v551, v554, v557, v560, v563, v566, v569, v572, v575, v578, v581, v584, v587, v590, v593, v596, v599, v602, v605, v608, v611, v614, v617, v620, v623);
    v631 = v13;
    v632 = v14;
    MEMORY[0x25F876C90](0x65646E617078655FLL, 0xE900000000000064);
    v493 = v631;
    v379 = v632;
    v631 = &unk_286D421D0;
    v15 = sub_25BCB617C();
    sub_25BAC0F84(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D8, &qword_25BCC5BA0);
    inited = swift_initStackObject();
    inited[3].n128_u64[0] = OUTLINED_FUNCTION_1_45(inited, xmmword_25BCBAE50);

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    OUTLINED_FUNCTION_189_0();
    v18 = sub_25BCB614C();
    v19 = OUTLINED_FUNCTION_40_12(v18);
    sub_25BAD8178(v19);
    OUTLINED_FUNCTION_104_3();
    sub_25BC0C4C4();
    OUTLINED_FUNCTION_62_3();
    sub_25BAD8324(v20);
    v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
    v21 = swift_initStackObject();
    OUTLINED_FUNCTION_14_26(v21, v22, v23, v24, v25, v26, v27, v28, v29, v247, v262, v277, v292, v307, v322, v337, v632, v365, v379, v631, v407, v421, v436, v450, v464, v478, v493, v30);
    OUTLINED_FUNCTION_23_21();
    *(v31 + 32) = v32;
    *(v31 + 40) = v33;
    *(v31 + 48) = &unk_286D421D0;
    *(v31 + 56) = 0;
    *(v31 + 64) = 7;
    sub_25BCB617C();
    OUTLINED_FUNCTION_189_0();
    v34 = sub_25BCB614C();
    v35 = OUTLINED_FUNCTION_40_12(v34);
    sub_25BAFA0CC(v35, v36, v37, v38, v39, v40, v41, v42, v43, v248, v263, v278, v293, v308, v323, v338, v352, v17, v380, v394, v408, v422, v437, v451, v465, v479, v494, 1, 2, v519, v526, v533, v538);
    OUTLINED_FUNCTION_104_3();
    sub_25BC0C4D8();
    OUTLINED_FUNCTION_62_3();
    sub_25BAFCD30();
    v44 = v3;
    v46 = v631;
    v45 = v632;
    v423 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
    v47 = swift_initStackObject();
    OUTLINED_FUNCTION_14_26(v47, v48, v49, v50, v51, v52, v53, v54, v55, v249, v264, v279, v294, v309, v324, v339, v353, v366, v381, v395, v409, v423, v438, v452, v466, v480, v495, v56);
    *(v57 + 32) = v496;
    inited[2].n128_u64[1] = v382;
    v58 = *(*(v1 + 40) + 160);
    inited[3].n128_u64[0] = &unk_286D421D0;
    inited[3].n128_u8[8] = v58;
    sub_25BCB617C();
    OUTLINED_FUNCTION_64_4();
    v59 = sub_25BCB614C();
    v60 = OUTLINED_FUNCTION_40_12(v59);
    sub_25BAF9B54(v60);
    OUTLINED_FUNCTION_46_9();
    swift_setDeallocating();
    sub_25BC0C4EC();
    v631 = &unk_286D421D0;
    OUTLINED_FUNCTION_163();
    v61 = v632;
    v62 = OUTLINED_FUNCTION_83_3();
    v65 = OUTLINED_FUNCTION_199(v63, v62, v64);
    *(v66 + 170) = v65;
    v67 = OUTLINED_FUNCTION_6_5();
    sub_25BBA18D8(v67, v68, v396, v354, v46, v45, &unk_286D421D0, v61, v17);

    sub_25BCB70FC();
    v69 = OUTLINED_FUNCTION_47_10();
    sub_25BBE0B84(v69, v70, v44, &qword_27FBB4078, v481, v453, v439, v71, v250, v265, v280, v295, v310, v325, v340, v354, v367, v382, v396, v44, v424, v439, v453, v467, v481, v496, v506, v513, v520, v527, v534, v539, v543, v546, v549, v552, v555, v558, v561, v564, v567, v570, v573, v576, v579, v582, v585, v588, v591, v594, v597, v600, v603, v606, v609, v612, v615, v618, v621, v624);
    v73 = v72;
    v75 = v74;

    v630 = v75;
    MEMORY[0x25F876C90](0xD000000000000011, 0x800000025BCE08F0);
    v629 = &unk_286D421F8;
    v76 = sub_25BCB617C();
    sub_25BAC0F84(v76);
    OUTLINED_FUNCTION_86();
    v80 = v79 == 2;
    v81 = 0x625F657A69736572;
    if (v80)
    {
      v81 = 0xD000000000000017;
    }

    v311 = v81;
    if (!v80)
    {
      v77 = 0xEF7261656E696C69;
    }

    v281 = v78;
    v296 = v77;
    v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39B8, &unk_25BCC5B90);
    v82 = swift_initStackObject();
    OUTLINED_FUNCTION_14_26(v82, v83, v84, v85, v86, v87, v88, v89, v90, v251, v266, v281, v296, v311, v326, v341, v75, v368, v383, v73, v410, v425, v440, v454, v468, v482, v497, v91);
    v93 = OUTLINED_FUNCTION_136(v92);
    v93[5] = v94;
    v93[6] = v498;
    v95 = v369;
    v93[7] = v384;
    v96 = sub_25BCB614C();
    v97 = OUTLINED_FUNCTION_73_3(v96);
    sub_25BAFA1D4(v97, v98, v99, v100, v101, v102, v103, v104, v252, v267, v282, v297, v312, v327, v342, v355, v369, v384, v397, v411, v426, v441, v455, v469, v483, v498, v507, v514, v521, v528);
    OUTLINED_FUNCTION_104_3();
    v105 = sub_25BC0C500();
    v629 = v75;
    sub_25BAFCBDC(v105);
    v106 = sub_25BBD57D0();
    v108 = v107;
    v109 = swift_initStackObject();
    OUTLINED_FUNCTION_14_26(v109, v110, v111, v112, v113, v114, v115, v116, v117, v253, v268, v283, v298, v313, v328, v343, v356, v370, v385, v398, v412, v427, v442, v456, v470, v484, v499, v118);
    *(v119 + 32) = v399;
    *(v1 + 40) = v357;
    v120 = *(*(v1 + 40) + 160);
    *(v1 + 48) = v284;
    *(v1 + 56) = v120;
    sub_25BCB617C();
    OUTLINED_FUNCTION_88_3();
    v121 = sub_25BCB614C();
    v122 = OUTLINED_FUNCTION_73_3(v121);
    sub_25BAF9B54(v122);
    OUTLINED_FUNCTION_57_2();
    swift_setDeallocating();
    sub_25BC0C4EC();
    v629 = v95;
    sub_25BAFC990();
    v123 = v630;
    v124 = OUTLINED_FUNCTION_83_3();
    *(v125 + 64) = v124;
    *(v125 + 80) = v126;
    *(v125 + 96) = *(v1 + 120);
    *(v125 + 106) = *(v1 + 130);
    OUTLINED_FUNCTION_64_4();
    v127 = v413;
    sub_25BBA1A84(v128, v129, v130, v131, v106, v108, v95, v123, &v629);

    v132 = swift_initStackObject();
    OUTLINED_FUNCTION_14_26(v132, v133, v134, v135, v136, v137, v138, v139, v140, v254, v269, v284, v299, v314, v329, v344, v357, v371, v386, v399, v413, v428, v443, v457, v471, v485, v500, v141);
    v143 = OUTLINED_FUNCTION_136(v142);
    v143[5] = v144;
    v143[6] = v400;
    v145 = v372;
    v143[7] = v358;
    OUTLINED_FUNCTION_111_3();
    v627 = sub_25BCB614C();
    sub_25BAFA1D4(v127, v146, v147, v148, v149, v150, v151, v152, v255, v270, v285, v300, v315, v330, v345, v358, v372, v387, v400, v414, v429, v444, v458, v472, v486, v501, v508, v515, v522, v529);
    OUTLINED_FUNCTION_46_9();
    swift_setDeallocating();
    v153 = sub_25BC0C500();
    v626 = v123;
    sub_25BAFCBDC(v153);
    v154 = swift_allocObject();
    OUTLINED_FUNCTION_14_26(v154, v155, v156, v157, v158, v159, v160, v161, v162, v256, v271, v286, v301, v316, v331, v346, v359, v373, v388, v401, v415, v430, v445, v459, v473, v487, v123, v163);
    OUTLINED_FUNCTION_184(v164, 1885431923);
    *&v628[6] = *(v1 + 72);
    *&v628[14] = 0;
    LOBYTE(v629) = 7;
    sub_25BCB617C();
    OUTLINED_FUNCTION_111_3();
    v627 = sub_25BCB614C();
    sub_25BAFA0CC(&v626, v165, v166, v167, v168, v169, v170, v171, v172, v257, v272, v287, v302, v317, v332, v347, v360, v374, v389, v402, v416, v431, v446, v460, v474, v488, v502, v509, v516, v523, v530, v535, v540);
    OUTLINED_FUNCTION_46_9();
    swift_setDeallocating();
    sub_25BC0C4D8();
    v626 = v123;
    sub_25BAFCD30();
    v173 = swift_initStackObject();
    OUTLINED_FUNCTION_14_26(v173, v174, v175, v176, v177, v178, v179, v180, v181, v258, v273, v288, v303, v318, v333, v348, v361, v375, v390, v403, v417, v432, v447, v461, v475, v489, v503, v182);
    v183 = OUTLINED_FUNCTION_47_10();
    sub_25BBE0B84(v183, v184, v418, &qword_27FBB4078, v490, v462, v448, v185, v259, v274, v289, v304, v319, v334, v349, v362, v376, v391, v404, v418, v433, v448, v462, v476, v490, v504, v510, v517, v524, v531, v536, v541, v544, v547, v550, v553, v556, v559, v562, v565, v568, v571, v574, v577, v580, v583, v586, v589, v592, v595, v598, v601, v604, v607, v610, v613, v616, v619, v622, v625);
    OUTLINED_FUNCTION_55_4(v186, v187);
    v627 = sub_25BCB614C();
    sub_25BAF9B54(&v626);
    OUTLINED_FUNCTION_104_3();
    sub_25BC0C4EC();
    v626 = v145;
    sub_25BAFC990();
    v188 = OUTLINED_FUNCTION_83_3();
    *v189 = v188;
    *(v189 + 16) = v190;
    *(v189 + 32) = *(v1 + 120);
    *v628 = *(v1 + 130);
    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_126();
    sub_25BBA1A84(v191, v192, v193, v194, v195, v196, v197, v198, &v626);
  }

  else
  {
    OUTLINED_FUNCTION_86();
    v204 = v203 == 2;
    if (v203 == 2)
    {
      v205 = v201;
    }

    else
    {
      v205 = v202;
    }

    v511 = v205;
    if (!v204)
    {
      v199 = v200;
    }

    v491 = v199;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D8, &qword_25BCC5BA0);
    v206 = swift_initStackObject();
    OUTLINED_FUNCTION_17_19(v206, xmmword_25BCBAE50)[3].n128_u64[0] = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    v207 = MEMORY[0x277D84F90];
    v208 = MEMORY[0x277D837E0];
    v209 = OUTLINED_FUNCTION_160(MEMORY[0x277D84F90], MEMORY[0x277D837D0]);
    v210 = OUTLINED_FUNCTION_40_12(v209);
    sub_25BAD8178(v210);
    OUTLINED_FUNCTION_46_9();
    swift_setDeallocating();
    sub_25BC0C4C4();
    OUTLINED_FUNCTION_48_8();
    sub_25BAD8324(v211);
    sub_25BBD57D0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
    v212 = swift_initStackObject();
    OUTLINED_FUNCTION_59_3(v212, v213, v214, v215, v216, v217, v218, v219, v220, v246, v261, v276, v291, v306, v321, v336, v351, v364, v378, v393, v406, v420, v435, v221);
    OUTLINED_FUNCTION_70_3();
    v222 = OUTLINED_FUNCTION_47_10();
    sub_25BBE0B84(v222, v223, v3, v224, v225, v226, v227, v228, v260, v275, v290, v305, v320, v335, v350, v363, v377, v392, v405, v419, v434, v449, 1, 2, v491, v631, v511, v512, v518, v525, v532, v537, v542, v545, v548, v551, v554, v557, v560, v563, v566, v569, v572, v575, v578, v581, v584, v587, v590, v593, v596, v599, v602, v605, v608, v611, v614, v617, v620, v623);
    OUTLINED_FUNCTION_55_4(v229, v230);
    v231 = OUTLINED_FUNCTION_160(v207, MEMORY[0x277D837D0]);
    v232 = OUTLINED_FUNCTION_40_12(v231);
    sub_25BAF9B54(v232);
    OUTLINED_FUNCTION_104_3();
    sub_25BC0C4EC();
    v631 = v207;
    OUTLINED_FUNCTION_163();
    v233 = OUTLINED_FUNCTION_83_3();
    v236 = OUTLINED_FUNCTION_199(v234, v233, v235);
    *(v237 + 170) = v236;
    OUTLINED_FUNCTION_126();
    sub_25BBA18D8(v238, v239, v240, v241, v242, v243, v244, v245, v208);
  }

  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BBD62B0()
{
  OUTLINED_FUNCTION_197();
  if (v1)
  {
    return sub_25BBD62D8(v0);
  }

  else
  {
    return sub_25BBD64E8(v0);
  }
}

uint64_t sub_25BBD64E8(uint64_t a1)
{
  v2 = v1;

  v5 = sub_25BBA0B64(v4);
  v7 = v6;

  v193 = a1;
  v9 = sub_25BBA0B64(v8);
  v11 = v10;

  if (*(v2 + 56))
  {
    *&v191[0] = v5;
    sub_25BCB617C();
    MEMORY[0x25F876C90](95, 0xE100000000000000);
    MEMORY[0x25F876C90](v9, v11);
    MEMORY[0x25F876C90](95, 0xE100000000000000);
    v13 = sub_25BBA0DCC(0x6C756D74616DLL, 0xE600000000000000);
    MEMORY[0x25F876C90](v13);

    v14 = v7;
    v121 = v5;
  }

  else
  {
    sub_25BBE0B84(v2, 0, v193, &qword_28154F570, type metadata accessor for LinearOperation, &unk_25BCC60D4, sub_25BABB6E8, v12, v74, v78, v82, v85, v87, v91, v95, v100, v103, v106, v110, v114, v116, v120, v125, v129, v133, v137, v141, v145, v149, v153, v157, v159, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188);
    v121 = v15;
    v14 = v16;
  }

  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39B8, &unk_25BCC5B90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE70;
  *(inited + 32) = 120;
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = v5;
  *(inited + 56) = v7;
  *(inited + 64) = 121;
  *(inited + 72) = 0xE100000000000000;
  *(inited + 80) = v9;
  *(inited + 88) = v11;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  *(&v191[0] + 1) = sub_25BCB614C();
  sub_25BAFA1D4(inited, v19, v20, v21, v22, v23, v24, v25, v74, v78, v82, v85, v87, v91, v96, v100, v103, v106, 2, 4, v116, v121, v125, v129, v133, v137, v141, v145, v149, v153);
  v27 = v26;
  swift_setDeallocating();
  v28 = sub_25BC0C500();
  sub_25BAFCBDC(v28);
  v29 = *(&v191[0] + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  v30 = swift_initStackObject();
  *(v30 + 16) = v111;
  *(v30 + 32) = 0x736F70736E617274;
  *(v30 + 40) = 0xEB00000000785F65;
  *(v30 + 48) = 0;
  *(v30 + 56) = 0;
  *(v30 + 64) = 0;
  *(v30 + 72) = 0x736F70736E617274;
  *(v30 + 80) = 0xEB00000000795F65;
  *(v30 + 88) = xmmword_25BCC06A0;
  *(v30 + 104) = 0;
  *(&v191[0] + 1) = sub_25BCB614C();
  sub_25BAFA0CC(v30, v31, v32, v33, v34, v35, v36, v37, v38, v75, v79, v83, v86, v88, v92, v97, v101, v27, v107, v111, *(&v111 + 1), v117, v122, v126, v130, v134, v138, v142, v146, v150, v154, v157, v159);
  v40 = v39;
  swift_setDeallocating();
  sub_25BC0C4D8();
  *&v191[0] = v40;
  sub_25BAFCD30();
  v41 = v191[0];
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  v42 = swift_initStackObject();
  *(v42 + 16) = xmmword_25BCBAE50;
  *(v42 + 32) = v123;
  *(v42 + 40) = v14;
  v43 = *(v2 + 72);
  *(v42 + 48) = *(v2 + 64);
  *(v42 + 56) = v43;
  sub_25BCB617C();
  sub_25BCB617C();
  *(&v191[0] + 1) = sub_25BCB614C();
  v44 = sub_25BAF9B54(v42);
  swift_setDeallocating();
  sub_25BC0C4EC();
  *&v191[0] = v44;
  sub_25BAFC990();
  v45 = v191[0];
  v46 = *(v2 + 112);
  v191[0] = *(v2 + 96);
  v191[1] = v46;
  v192[0] = *(v2 + 128);
  *(v192 + 10) = *(v2 + 138);
  sub_25BBA1A84(0x6C756D74616DLL, 0xE600000000000000, v104, v29, v41, *(&v41 + 1), v45, *(&v45 + 1), v191);

  if (*(v2 + 56))
  {

    v48 = sub_25BBA0B64(v47);
    v50 = v49;
    v51 = swift_initStackObject();
    *(v51 + 16) = v112;
    *(v51 + 32) = 120;
    *(v51 + 40) = 0xE100000000000000;
    *(v51 + 48) = v123;
    *(v51 + 56) = v14;
    *(v51 + 64) = 121;
    *(v51 + 72) = 0xE100000000000000;
    *(v51 + 80) = v48;
    *(v51 + 88) = v50;
    v52 = MEMORY[0x277D84F90];
    *(&v189[0] + 1) = sub_25BCB614C();
    sub_25BAFA1D4(v51, v53, v54, v55, v56, v57, v58, v59, v76, v80, 1, 2, v89, v93, v98, v18, v104, v108, v112, *(&v112 + 1), v118, v123, v127, v131, v135, v139, v143, v147, v151, v155);
    v61 = v60;
    swift_setDeallocating();
    v62 = sub_25BC0C500();
    *&v189[0] = v61;
    sub_25BAFCBDC(v62);
    v63 = v189[0];
    *&v189[0] = v52;
    *(&v189[0] + 1) = sub_25BCB614C();
    sub_25BAFCD30();
    v64 = v189[0];
    v65 = swift_initStackObject();
    *(v65 + 16) = v84;
    sub_25BBE0B84(v2, 0, v193, &qword_28154F570, type metadata accessor for LinearOperation, &unk_25BCC60D4, sub_25BABB6E8, v66, v77, v81, v84, *(&v84 + 1), v90, v94, v99, v102, v105, v109, *(&v63 + 1), v115, v119, v63, v128, v132, v136, v140, v144, v148, v152, v156, v158, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188);
    *(v65 + 32) = v67;
    *(v65 + 40) = v68;
    v69 = *(v2 + 72);
    *(v65 + 48) = *(v2 + 64);
    *(v65 + 56) = v69;
    sub_25BCB617C();
    *(&v189[0] + 1) = sub_25BCB614C();
    v70 = sub_25BAF9B54(v65);
    swift_setDeallocating();
    sub_25BC0C4EC();
    *&v189[0] = v70;
    sub_25BAFC990();
    v71 = v189[0];
    v72 = *(v2 + 112);
    v189[0] = *(v2 + 96);
    v189[1] = v72;
    v190[0] = *(v2 + 128);
    *(v190 + 10) = *(v2 + 138);
    sub_25BBA1A84(6579297, 0xE300000000000000, v124, v113, v64, *(&v64 + 1), v71, *(&v71 + 1), v189);
  }
}

void sub_25BBD6B44()
{
  OUTLINED_FUNCTION_17_1();
  v2 = v0;
  v4 = v3;

  v6 = sub_25BBA0B64(v5);
  v8 = v7;

  v391 = sub_25BBA0B64(v9);
  v411 = v10;

  v12 = sub_25BBA0B64(v11);
  v14 = v13;

  v567 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39B8, &unk_25BCC5B90);
  inited = swift_initStackObject();
  v16 = OUTLINED_FUNCTION_17_19(inited, xmmword_25BCBAE70);
  v449 = v8;
  v16[3].n128_u64[0] = v6;
  v16[3].n128_u64[1] = v8;
  v17 = OUTLINED_FUNCTION_120_2(v16);
  *(v17 + 80) = v12;
  *(v17 + 88) = v14;
  sub_25BCB617C();
  sub_25BCB617C();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  *(&v784[0] + 1) = OUTLINED_FUNCTION_206();
  sub_25BAFA1D4(inited, v19, v20, v21, v22, v23, v24, v25, v313, v333, v1, v14, v391, v411, v6, v449, v467, v487, v507, v527, v547, v567, 2, 4, v618, v628, v636, v647, v658, v669);
  v27 = v26;
  swift_setDeallocating();
  v28 = sub_25BC0C500();
  *&v784[0] = v27;
  sub_25BAFCBDC(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  v30 = swift_initStackObject();
  OUTLINED_FUNCTION_59_3(v30, v31, v32, v33, v34, v35, v36, v37, v38, v314, v334, v353, v372, v392, v412, v430, v450, v468, *&v784[0], *(&v784[0] + 1), v528, v548, v568, v39);
  *(v40 + 32) = 0x736F70736E617274;
  *(v40 + 40) = 0xEB00000000785F65;
  *(v40 + 48) = 0;
  *(v40 + 56) = 0;
  *(v40 + 64) = 0;
  *(v40 + 72) = 0x736F70736E617274;
  *(v40 + 80) = 0xEB00000000795F65;
  *(v40 + 88) = 0;
  *(v40 + 96) = 0;
  *(v40 + 104) = 0;
  v41 = OUTLINED_FUNCTION_206();
  v42 = OUTLINED_FUNCTION_40_12(v41);
  sub_25BAFA0CC(v42, v43, v44, v45, v46, v47, v48, v49, v50, v315, v335, v354, v373, v393, v413, v431, v451, v469, v488, v508, v529, v549, v569, v587, v603, v619, v629, v637, v648, v659, v670, v680, v686);
  OUTLINED_FUNCTION_104_3();
  sub_25BC0C4D8();
  OUTLINED_FUNCTION_62_3();
  sub_25BAFCD30();
  v51 = v784[0];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  v53 = swift_initStackObject();
  *(v53 + 16) = xmmword_25BCBAE50;
  OUTLINED_FUNCTION_20_20();
  v786 = v4;
  v54 = v4;
  v55 = v2;
  sub_25BBE0998(v2, 0, v54, v56, v57, &unk_25BCC6048, sub_25BAC9864, v58, v316, v336, v355, v374, v394, v414, v432, v452, v470, v489, v509, v530, v550, v570, v588, v604, 1, 2, v638, v649, v660, v671, v681, v687, v692, v695, v698, v701, v704, v707, v710, v713, v716, v719, v722, v725, v728, v731, v734, v737, v740, v743, v746, v749, v752, v755, v758, v761, v764, v767, v770, v773);
  *(v53 + 32) = v59;
  *(v53 + 40) = v60;
  v61 = *(v2 + 72);
  if (!*(v61 + 16))
  {
    goto LABEL_26;
  }

  v531 = v52;
  v551 = v29;
  OUTLINED_FUNCTION_105_2(*(v61 + 32), *(v61 + 40));
  v471 = v18;
  v62 = sub_25BCB614C();
  v63 = OUTLINED_FUNCTION_40_12(v62);
  sub_25BAF9B54(v63);
  OUTLINED_FUNCTION_104_3();
  sub_25BC0C4EC();
  *&v784[0] = v51;
  sub_25BAFC990();
  v64 = v784[0];
  v65 = *(v2 + 96);
  v784[0] = *(v2 + 80);
  v784[1] = v65;
  v785[0] = *(v2 + 112);
  *(v785 + 10) = *(v2 + 122);
  v66 = OUTLINED_FUNCTION_85_3();
  sub_25BBA1A84(v66, v67, v490, v510, v51, *(&v51 + 1), v64, *(&v64 + 1), v784);

  if (*(*(*(v2 + 40) + 152) + 16) == 2)
  {
    v68 = v433.n128_u64[1];
    v491 = v433.n128_u64[0];
    v69 = v395;
  }

  else
  {
    v70 = v433.n128_i64[1];
    v782[0] = v433;
    sub_25BCB617C();
    MEMORY[0x25F876C90](95, 0xE100000000000000);
    v71 = OUTLINED_FUNCTION_27_19();
    v72 = sub_25BBA0DCC(v71 & 0xFFFFFFFFFFFFLL | 0x6465000000000000, 0xE800000000000000);
    MEMORY[0x25F876C90](v72);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    OUTLINED_FUNCTION_54();
    v73 = swift_allocObject();
    *(v73 + 16) = v589;
    v74 = *(*(v2 + 40) + 152);
    sub_25BCB617C();
    sub_25BBD78EC(1uLL, v74);
    if (v76 >> 1 != v75)
    {
      if ((v76 >> 1) <= v75)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      while (1)
      {
        OUTLINED_FUNCTION_194_0();
        if (!v78)
        {
          break;
        }

        if (v77 == 1)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_9:
    swift_unknownObjectRelease();
    *(v73 + 32) = 1;
    v79 = sub_25BB731F4(*(*(v2 + 40) + 152));
    if (v80)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    *(v73 + 40) = v79;
    v81 = swift_initStackObject();
    OUTLINED_FUNCTION_17_19(v81, v620)[3] = v433;
    v82 = MEMORY[0x277D837E0];
    OUTLINED_FUNCTION_189_0();
    v83 = sub_25BCB614C();
    v84 = OUTLINED_FUNCTION_73_3(v83);
    sub_25BAFA1D4(v84, v85, v86, v87, v88, v89, v90, v91, v317, v337, v356, v375, v395, v415, v433.n128_i64[0], v433.n128_i64[1], v18, v433.n128_i64[0], v433.n128_i64[1], v531, v551, v571, v589.n128_i64[0], v589.n128_i64[1], v620.n128_i64[0], v620.n128_i64[1], v639, v650, v661, v672);
    OUTLINED_FUNCTION_46_9();
    swift_setDeallocating();
    v92 = sub_25BC0C500();
    sub_25BAFCBDC(v92);
    v93 = *(&v782[0] + 1);
    v94 = swift_initStackObject();
    OUTLINED_FUNCTION_17_29(v94, v95, v96, v97, v98, v99, v100, v101, v102, v318, v338, v357, v376, v396, v416, v434, v70, v472, v492, v511, v532, v552, v572, v590, v605, v103);
    v105 = OUTLINED_FUNCTION_154(v104);
    *(v105 + 48) = v73;
    *(v105 + 56) = 0;
    OUTLINED_FUNCTION_200(v105);
    sub_25BCB617C();
    OUTLINED_FUNCTION_189_0();
    v106 = sub_25BCB614C();
    v107 = OUTLINED_FUNCTION_73_3(v106);
    sub_25BAFA0CC(v107, v108, v109, v110, v111, v112, v113, v114, v115, v319, v339, v358, v377, v397, v417, v435, v453, v473, v493, v512, v533, v553, v573, v591, v606, v621, v630, v640, v651, v662, v673, v682, v688);
    OUTLINED_FUNCTION_104_3();
    sub_25BC0C4D8();
    *&v782[0] = v82;
    sub_25BAFCD30();
    v116 = *(&v782[0] + 1);
    v117 = *&v782[0];
    v118 = OUTLINED_FUNCTION_112_2(v534);
    OUTLINED_FUNCTION_17_29(v118, v119, v120, v121, v122, v123, v124, v125, v126, v320, v340, v359, v378, v398, v418, v436, v454, v474, v494, v513, v534, v554, v574, v592, v607, v127);
    *(v128 + 32) = v491;
    *(v128 + 40) = v514;
    v129 = *(*(v55 + 40) + 160);
    *(v128 + 48) = v73;
    *(v128 + 56) = v129;
    sub_25BCB617C();
    v130 = sub_25BCB614C();
    v131 = OUTLINED_FUNCTION_73_3(v130);
    sub_25BAF9B54(v131);
    OUTLINED_FUNCTION_57_2();
    swift_setDeallocating();
    sub_25BC0C4EC();
    *&v782[0] = v18;
    sub_25BAFC990();
    v132 = v782[0];
    v133 = *(v55 + 96);
    v782[0] = *(v55 + 80);
    v782[1] = v133;
    v783[0] = *(v55 + 112);
    *(v783 + 10) = *(v55 + 122);
    v134 = OUTLINED_FUNCTION_6_5();
    sub_25BBA1A84(v134, v135, v433.n128_i64[1], v93, v117, v116, v132, *(&v132 + 1), v782);

    v68 = v514;

    v69 = v395;
  }

  v515 = v68;
  if (*(*(*(v55 + 48) + 152) + 16) == 2)
  {
    v136 = v69;
    v137 = v415;
    v138 = v571;
    goto LABEL_20;
  }

  *&v780[0] = v69;
  v139 = v415;
  *(&v780[0] + 1) = v415;
  sub_25BCB617C();
  MEMORY[0x25F876C90](95, 0xE100000000000000);
  v140 = OUTLINED_FUNCTION_27_19();
  v141 = sub_25BBA0DCC(v140 & 0xFFFFFFFFFFFFLL | 0x6465000000000000, 0xE800000000000000);
  MEMORY[0x25F876C90](v141);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  OUTLINED_FUNCTION_54();
  v142 = swift_allocObject();
  *(v142 + 16) = v589;
  v143 = *(*(v55 + 48) + 152);
  sub_25BCB617C();
  sub_25BBD78EC(1uLL, v143);
  v146 = v471;
  if (v145 >> 1 != v144)
  {
    if ((v145 >> 1) <= v144)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    while (1)
    {
      OUTLINED_FUNCTION_194_0();
      if (!v78)
      {
        break;
      }

      if (v147 == 1)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_18:
  swift_unknownObjectRelease();
  *(v142 + 32) = 1;
  v148 = sub_25BB731F4(*(*(v55 + 48) + 152));
  if ((v149 & 1) == 0)
  {
    v150 = v148;

    *(v142 + 40) = v150;
    v151 = OUTLINED_FUNCTION_112_2(v571);
    v152 = OUTLINED_FUNCTION_17_19(v151, v620);
    v152[3].n128_u64[0] = v69;
    v152[3].n128_u64[1] = v415;
    *(&v780[0] + 1) = OUTLINED_FUNCTION_210();
    sub_25BAFA1D4(v151, v153, v154, v155, v156, v157, v158, v159, v317, v337, v356, v375, v55, v415, v69, v415, v471, v491, v515, v531, v551, v571, v589.n128_i64[0], v589.n128_i64[1], v620.n128_i64[0], v620.n128_i64[1], v639, v650, v661, v672);
    OUTLINED_FUNCTION_104_3();
    v160 = sub_25BC0C500();
    *&v780[0] = v139;
    sub_25BAFCBDC(v160);
    v161 = v139;
    v162 = swift_allocObject();
    OUTLINED_FUNCTION_17_29(v162, v163, v164, v165, v166, v167, v168, v169, v170, v321, v341, v360, v379, v399, *(&v780[0] + 1), v437, v455, v475, v495, v516, v535, v555, v575, v593, v608, v171);
    v173 = OUTLINED_FUNCTION_154(v172);
    *(v173 + 48) = v142;
    *(v173 + 56) = 0;
    OUTLINED_FUNCTION_200(v173);
    sub_25BCB617C();
    *(&v780[0] + 1) = OUTLINED_FUNCTION_210();
    sub_25BAFA0CC(v780, v174, v175, v176, v177, v178, v179, v180, v181, v322, v342, v361, v380, v400, v419, v438, v456, v476, v496, v517, v536, v556, v576, v594, v609, v622, v631, v641, v652, v663, v674, v682, v688);
    OUTLINED_FUNCTION_104_3();
    sub_25BC0C4D8();
    *&v780[0] = v139;
    sub_25BAFCD30();
    v182 = *(&v780[0] + 1);
    v183 = *&v780[0];
    v184 = OUTLINED_FUNCTION_112_2(v537);
    OUTLINED_FUNCTION_17_29(v184, v185, v186, v187, v188, v189, v190, v191, v192, v323, v343, v362, v381, v401, v420, v439, v457, v477, v497, v518, v537, v557, v577, v595, v610, v193);
    *(v194 + 32) = v433.n128_u64[0];
    *(&v781[0] + 1) = v433.n128_u64[1];
    v195 = *(*(v395 + 48) + 160);
    *&v781[1] = v142;
    BYTE8(v781[1]) = v195;
    sub_25BCB617C();
    *(&v780[0] + 1) = sub_25BCB614C();
    sub_25BAF9B54(v780);
    OUTLINED_FUNCTION_57_2();
    swift_setDeallocating();
    sub_25BC0C4EC();
    *&v780[0] = v146;
    sub_25BAFC990();
    v197 = *(&v780[0] + 1);
    v196 = *&v780[0];
    v198 = *(v395 + 96);
    v780[0] = *(v395 + 80);
    v780[1] = v198;
    v781[0] = *(v395 + 112);
    *(v781 + 10) = *(v395 + 122);
    v199 = OUTLINED_FUNCTION_6_5();
    sub_25BBA1A84(v199, v200, v161, v415, v183, v182, v196, v197, v780);
    v138 = v571;

    v137 = v433.n128_i64[1];

    v136 = v433.n128_u64[0];
    v68 = v515;
    v55 = v395;
LABEL_20:

    v201 = swift_allocObject();
    v202 = OUTLINED_FUNCTION_17_19(v201, v589);
    v202[3].n128_u64[0] = v491;
    v202[3].n128_u64[1] = v68;
    v203 = OUTLINED_FUNCTION_120_2(v202);
    *(v203 + 80) = v136;
    *(v203 + 88) = v137;
    sub_25BCB617C();
    v204 = MEMORY[0x277D84F90];
    v205 = MEMORY[0x277D837D0];
    v206 = MEMORY[0x277D837E0];
    *(&v778[0] + 1) = OUTLINED_FUNCTION_165(MEMORY[0x277D84F90], MEMORY[0x277D837D0]);
    sub_25BAFA1D4(v201, v207, v208, v209, v210, v211, v212, v213, v317, v337, v356, v375, v395, v415, v433.n128_i64[0], v433.n128_i64[1], v471, v491, v515, v531, v551, v571, v589.n128_i64[0], v589.n128_i64[1], v620.n128_i64[0], v620.n128_i64[1], v639, v650, v661, v672);
    OUTLINED_FUNCTION_46_9();
    swift_setDeallocating();
    v214 = sub_25BC0C500();
    *&v778[0] = v138;
    sub_25BAFCBDC(v214);
    v458 = v138;
    v215 = *(&v778[0] + 1);
    v216 = swift_allocObject();
    OUTLINED_FUNCTION_59_3(v216, v217, v218, v219, v220, v221, v222, v223, v224, v324, v344, v363, v382, v402, v421, v440, v458, v478, v498, v519, v538, v558, v578, v225);
    *(v226 + 32) = 0x736F70736E617274;
    *(v226 + 40) = 0xEB00000000785F65;
    *(v226 + 48) = xmmword_25BCC06A0;
    *(v226 + 64) = 0;
    *(v226 + 72) = 0x736F70736E617274;
    *(v226 + 80) = 0xEB00000000795F65;
    *(v226 + 88) = 0;
    *(v226 + 96) = 0;
    *(v226 + 104) = 0;
    *(&v778[0] + 1) = OUTLINED_FUNCTION_165(v204, v205);
    sub_25BAFA0CC(v778, v227, v228, v229, v230, v231, v232, v233, v234, v325, v345, v364, v383, v403, v422, v441, v459, v479, v499, v520, v539, v559, v579, v596, v611, v623, v632, v642, v653, v664, v675, v682, v688);
    OUTLINED_FUNCTION_104_3();
    sub_25BC0C4D8();
    *&v778[0] = v206;
    sub_25BAFCD30();
    v235 = v778[0];
    v236 = OUTLINED_FUNCTION_112_2(v540);
    OUTLINED_FUNCTION_17_29(v236, v237, v238, v239, v240, v241, v242, v243, v244, v326, v346, v365, v384, v404, v423, v442, v460, v480, v500, v521, v540, v560, v580, v597, v612, v245);
    OUTLINED_FUNCTION_20_20();
    sub_25BBE0998(v55, 1, v786, v246, v247, &unk_25BCC6048, sub_25BAC9864, v248, v327, v347, v366, v385, v405, v424, v443, v461, v481, v501, v522, v541, v561, v581, v598, v613, v624, v633, v643, v654, v665, v676, v683, v689, v693, v696, v699, v702, v705, v708, v711, v714, v717, v720, v723, v726, v729, v732, v735, v738, v741, v744, v747, v750, v753, v756, v759, v762, v765, v768, v771, v774);
    *&v779[0] = v249;
    *(&v779[0] + 1) = v250;
    v251 = *(v55 + 72);
    if (*(v251 + 16) >= 2uLL)
    {
      OUTLINED_FUNCTION_105_2(*(v251 + 48), *(v251 + 56));
      *(&v778[0] + 1) = sub_25BCB614C();
      sub_25BAF9B54(v778);
      OUTLINED_FUNCTION_104_3();
      sub_25BC0C4EC();
      *&v778[0] = v206;
      sub_25BAFC990();
      v252 = v778[0];
      v253 = *(v55 + 96);
      v778[0] = *(v55 + 80);
      v778[1] = v253;
      v779[0] = *(v55 + 112);
      *(v779 + 10) = *(v55 + 122);
      v254 = OUTLINED_FUNCTION_85_3();
      sub_25BBA1A84(v254, v255, v462, v215, v235, *(&v235 + 1), v252, *(&v252 + 1), v778);

      if (!*(v55 + 64))
      {
LABEL_24:

        OUTLINED_FUNCTION_16();
        return;
      }

      v256 = OUTLINED_FUNCTION_112_2(v582);
      OUTLINED_FUNCTION_17_19(v256, v625)[3] = v502;
      v257 = MEMORY[0x277D837E0];
      OUTLINED_FUNCTION_152();
      sub_25BCB614C();
      sub_25BAFA1D4(v256, v258, v259, v260, v261, v262, v263, v264, v328, v348, v367, v386, v406, v425, v444, v462, v482, v502.n128_i64[0], v502.n128_i64[1], v542, v562, v582, v599, v614, v625.n128_i64[0], v625.n128_i64[1], v644, v655, v666, v677);
      OUTLINED_FUNCTION_46_9();
      swift_setDeallocating();
      v265 = sub_25BC0C500();
      *&v776[0] = v215;
      sub_25BAFCBDC(v265);
      v266 = swift_allocObject();
      OUTLINED_FUNCTION_59_3(v266, v267, v268, v269, v270, v271, v272, v273, v274, v329, v349, v368, v387, v407, v426, v445, v463, v483, v503, v523, v543, v563, v583, v275);
      v276[4] = 1936029793;
      v276[5] = 0xE400000000000000;
      v276[6] = &unk_286D42310;
      v276[7] = 0;
      OUTLINED_FUNCTION_200(v276);
      OUTLINED_FUNCTION_51_9();
      *(v277 + 72) = v278;
      *(v277 + 80) = v279;
      *(v277 + 88) = 0;
      *(v277 + 96) = 0;
      *(v277 + 104) = 0;
      OUTLINED_FUNCTION_152();
      *(&v776[0] + 1) = sub_25BCB614C();
      sub_25BAFA0CC(v776, v280, v281, v282, v283, v284, v285, v286, v287, v330, v350, v369, v388, v408, v427, v446, v464, v484, v504, v524, v544, v564, v584, v600, v615, v626, v634, v645, v656, v667, v678, v684, v690);
      OUTLINED_FUNCTION_104_3();
      sub_25BC0C4D8();
      *&v776[0] = v257;
      sub_25BAFCD30();
      v288 = OUTLINED_FUNCTION_112_2(v545);
      OUTLINED_FUNCTION_17_29(v288, v289, v290, v291, v292, v293, v294, v295, v296, v331, v351, v370, v389, v409, v428, v447, v465, v485, v505, v525, v545, v565, v585, v601, v616, v297);
      OUTLINED_FUNCTION_20_20();
      sub_25BBE0998(v55, 2, v786, v298, v299, &unk_25BCC6048, sub_25BAC9864, v300, v332, v352, v371, v390, v410, v429, v448, v466, v486, v506, v526, v546, v566, v586, v602, v617, v627, v635, v646, v657, v668, v679, v685, v691, v694, v697, v700, v703, v706, v709, v712, v715, v718, v721, v724, v727, v730, v733, v736, v739, v742, v745, v748, v751, v754, v757, v760, v763, v766, v769, v772, v775);
      *&v777[0] = v301;
      *(&v777[0] + 1) = v302;
      v303 = *(v55 + 72);
      if (*(v303 + 16) >= 3uLL)
      {
        OUTLINED_FUNCTION_105_2(*(v303 + 64), *(v303 + 72));
        *(&v776[0] + 1) = sub_25BCB614C();
        sub_25BAF9B54(v776);
        OUTLINED_FUNCTION_104_3();
        sub_25BC0C4EC();
        *&v776[0] = v257;
        sub_25BAFC990();
        v304 = *(v55 + 96);
        v776[0] = *(v55 + 80);
        v776[1] = v304;
        v777[0] = *(v55 + 112);
        *(v777 + 10) = *(v55 + 122);
        OUTLINED_FUNCTION_215();
        OUTLINED_FUNCTION_149_0();
        sub_25BBA1A84(v305, v306, v307, v308, v309, v310, v311, v312, v776);

        goto LABEL_24;
      }

      goto LABEL_28;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_32:
  __break(1u);
}

unint64_t sub_25BBD78EC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_25BBFD330(0);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = sub_25BABAF60(0, v5, a2);

      return v6;
    }
  }

  __break(1u);
  return result;
}

void sub_25BBD799C()
{
  OUTLINED_FUNCTION_17_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_25BBD825C();
  v51 = v5;
  v53 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCC4630;
  OUTLINED_FUNCTION_9_33();
  *(v7 + 32) = v8;
  *(v7 + 40) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  OUTLINED_FUNCTION_54();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_122_3(v10, *(v1 + 64), xmmword_25BCBAE70);
  *(inited + 64) = 5;
  OUTLINED_FUNCTION_41_11();
  v12 = OUTLINED_FUNCTION_193(v11);
  v13 = OUTLINED_FUNCTION_112_2(v12);
  v72.val[0] = *(v1 + 80);
  v14 = (v13 + 32);
  v72.val[1] = v72.val[0];
  vst2q_f64(v14, v72);
  *(v13 + 16) = xmmword_25BCBDF80;
  *(inited + 88) = v13;
  *(inited + 96) = 0;
  *(inited + 104) = 5;
  OUTLINED_FUNCTION_8_32();
  *(inited + 112) = v15;
  *(inited + 120) = v16;
  OUTLINED_FUNCTION_72_3(xmmword_25BCC81D0);
  OUTLINED_FUNCTION_54();
  v17 = swift_allocObject();
  v18 = *(v1 + 96);
  *(v17 + 16) = xmmword_25BCBAE70;
  *(v17 + 32) = v18;
  *(inited + 168) = v17;
  *(inited + 176) = 0;
  *(inited + 184) = 5;
  *(inited + 192) = 0x7370756F7267;
  *(inited + 200) = 0xE600000000000000;
  OUTLINED_FUNCTION_134(*(v1 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v19 = MEMORY[0x277D837E0];
  v20 = OUTLINED_FUNCTION_207();
  v21 = OUTLINED_FUNCTION_40_12(v20);
  sub_25BAFA0CC(v21, v22, v23, v24, v25, v26, v27, v28, v29, v43, v45, 2, 4, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71[0], v71[1], v71[2], v71[3], v71[4], v71[5], v71[6], v71[7], v71[8]);
  OUTLINED_FUNCTION_147();
  sub_25BC0C4D8();
  sub_25BAFCD30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_25BCBAE50;
  sub_25BBE0B84(v1, 0, v3, qword_28154DC68, type metadata accessor for Convolution2DOperation, aY, sub_25BAB95AC, v31, v44, v46, v47, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v71[0], v71[1], v71[2], v71[3], v71[4], v71[5], v71[6], v71[7], v71[8], v71[9], v71[10], v71[11], v71[12], v71[13], v71[14], v71[15], v71[16], v71[17], v71[18], v71[19], v71[20], v71[21], v71[22], v71[23], v71[24], v71[25], v71[26], v71[27], v71[28], v71[29], v71[30], v71[31], v71[32], v71[33], v71[34], v71[35], v71[36]);
  *(v30 + 32) = v32;
  *(v30 + 40) = v33;
  OUTLINED_FUNCTION_105_2(*(v1 + 192), *(v1 + 200));
  v34 = OUTLINED_FUNCTION_207();
  v35 = OUTLINED_FUNCTION_40_12(v34);
  sub_25BAF9B54(v35);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  sub_25BC0C4EC();
  v71[29] = v19;
  sub_25BAFC990();
  OUTLINED_FUNCTION_71_2(*(v1 + 128), *(v1 + 144));
  *(v36 + 32) = *(v1 + 160);
  *(v36 + 42) = *(v1 + 170);
  OUTLINED_FUNCTION_33_14(1986948963, 0xE400000000000000, v37, v38, v39, v40, v41, v42, &v71[29]);

  OUTLINED_FUNCTION_16();
}

void sub_25BBD7C60()
{
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_53_7();
  v41 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D8, &qword_25BCC5BA0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_79_3(inited, xmmword_25BCBAE90);
  OUTLINED_FUNCTION_58_4(*(v1 + 192));
  inited[4].n128_u64[1] = v0;
  inited[5].n128_u64[0] = 0x746867696577;
  inited[5].n128_u64[1] = 0xE600000000000000;
  inited[6].n128_u64[0] = *(v1 + 48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v5 = OUTLINED_FUNCTION_165(MEMORY[0x277D84F90], MEMORY[0x277D837D0]);
  v6 = OUTLINED_FUNCTION_40_12(v5);
  sub_25BAD8178(v6);
  OUTLINED_FUNCTION_57_2();
  swift_setDeallocating();
  v7 = sub_25BC0C4C4();
  OUTLINED_FUNCTION_132(v7);
  OUTLINED_FUNCTION_174();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_25BCC81E0;
  OUTLINED_FUNCTION_9_33();
  *(v9 + 32) = v10;
  *(v9 + 40) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  OUTLINED_FUNCTION_54();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_122_3(v13, *(v1 + 64), xmmword_25BCBAE70);
  *(v8 + 64) = 5;
  OUTLINED_FUNCTION_8_32();
  *(v8 + 72) = v14;
  *(v8 + 80) = v15;
  *(v8 + 88) = xmmword_25BCC81D0;
  *(v8 + 104) = 4;
  OUTLINED_FUNCTION_41_11();
  *(v8 + 112) = v16;
  *(v8 + 120) = v17;
  v18 = OUTLINED_FUNCTION_112_2(v12);
  OUTLINED_FUNCTION_22_21(v18, xmmword_25BCBDF80);
  *(v8 + 144) = 5;
  *(v8 + 152) = 0x6E6F6974616C6964;
  *(v8 + 160) = 0xE900000000000073;
  OUTLINED_FUNCTION_54();
  v19 = swift_allocObject();
  OUTLINED_FUNCTION_121_1(v19, *(v1 + 96), xmmword_25BCBAE70);
  *(v8 + 192) = v20;
  *(v8 + 200) = 0xE600000000000000;
  OUTLINED_FUNCTION_134(*(v1 + 112));
  strcpy((v8 + 232), "has_input_grad");
  *(v8 + 247) = -18;
  *(v8 + 248) = xmmword_25BCC06A0;
  *(v8 + 264) = 0;
  *(v8 + 272) = 0x676965775F736168;
  *(v8 + 280) = 0xEF646172675F7468;
  *(v8 + 288) = xmmword_25BCC06A0;
  *(v8 + 304) = 0;
  strcpy((v8 + 312), "has_bias_grad");
  *(v8 + 326) = -4864;
  *(v8 + 328) = *(v1 + 56) != 0;
  *(v8 + 336) = 0;
  *(v8 + 344) = 0;
  v21 = OUTLINED_FUNCTION_165(MEMORY[0x277D84F90], MEMORY[0x277D837D0]);
  v22 = OUTLINED_FUNCTION_40_12(v21);
  sub_25BAFA0CC(v22, v23, v24, v25, v26, v27, v28, v29, v30, v36, v37, 2, 4, v38, v39, v41, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  sub_25BC0C4D8();
  v60[0] = 5;
  sub_25BAFCD30();
  v31 = v60[1];
  v32 = sub_25BBD7FBC(v42);
  v34 = v33;
  OUTLINED_FUNCTION_71_2(*(v1 + 128), *(v1 + 144));
  *(v35 + 32) = *(v1 + 160);
  *(v35 + 42) = *(v1 + 170);
  sub_25BBA18D8(0x6172675F766E6F63, 0xE900000000000064, v40, v2, 5, v31, v32, v34, v60);

  OUTLINED_FUNCTION_16();
}

__n128 *sub_25BBD825C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38C0, &unk_25BCC8950);
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_17_19(v1, xmmword_25BCBAE70);
  v2 = v0[6];
  v1[3].n128_u64[0] = v0[5];
  v1[3].n128_u64[1] = 0x746867696577;
  v1[4].n128_u64[0] = 0xE600000000000000;
  v1[4].n128_u64[1] = v2;
  v3 = v0[7];

  if (v3)
  {

    sub_25BAFD648();
    v1 = v4;
    v4[1].n128_u64[0] = 3;
    v4[5].n128_u64[0] = 1935763810;
    v4[5].n128_u64[1] = 0xE400000000000000;
    v4[6].n128_u64[0] = v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v6 = sub_25BCB614C();
  sub_25BAD8324(v6);
  return v1;
}

void sub_25BBD8378()
{
  OUTLINED_FUNCTION_17_1();
  v213 = v1;
  v218 = v4;
  OUTLINED_FUNCTION_197();
  if (!v6)
  {
    OUTLINED_FUNCTION_86();
    OUTLINED_FUNCTION_155();
    OUTLINED_FUNCTION_50_7();
    v160 = 1394;
    goto LABEL_52;
  }

  v243 = v0;
  v7 = sub_25BAB4308(v5);
  v11 = sub_25BA9BEA0(v7);
  v12 = 0;
  v13 = _TtC14NeuralNetworks17ConstantOperation;
  while (v11 != v12)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x25F8779B0](v12, v7);
    }

    else
    {
      if (v12 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v2 = *(v7 + 8 * v12 + 32);
    }

    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v3 = sub_25BAC4018();
    v0 = *(v243 + 40);
    if (v3 == sub_25BAC4018())
    {
    }

    else
    {
      v0 = sub_25BAB3058();

      if (!v0)
      {
        goto LABEL_49;
      }

      if (object_getClass(v0) != _TtC14NeuralNetworks17ConstantOperation)
      {

        swift_unknownObjectRelease();
        goto LABEL_51;
      }

      swift_unknownObjectRelease();
    }

    ++v12;
  }

  v13 = v243;
  v0 = v243;
  v12 = sub_25BB2BAEC(0x6172745F766E6F63, 0xEF6465736F70736ELL);
  v11 = v8;
  v2 = &off_25BCBA000;
  v208 = v8;
  v189 = v12;
  if (*(v243 + 232) <= 0 && *(v243 + 224) < 1)
  {
    v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    v31 = OUTLINED_FUNCTION_112_2(v139);
    OUTLINED_FUNCTION_67_3(v31, xmmword_25BCBDF80);
    v255.val[0] = *(v243 + 80);
    v255.val[1] = v255.val[0];
    v226 = v255.val[0];
    v235 = v255.val[0];
    vst2q_f64(v140, v255);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25BCBAE50;
    OUTLINED_FUNCTION_69_3();
    v142 = OUTLINED_FUNCTION_47_10();
    sub_25BBE0998(v142, v143, v218, v144, v145, v146, v147, v148, v161, v166, v172, v177, v183, v12, v194, v200, v203, v208, v1, v218, *&v226.f64[0], *&v226.f64[1], *&v235.f64[0], *&v235.f64[1], v239, v243, v247, *(&v247 + 1), v248, *(&v248 + 1), v249[0], v249[1], v249[2], v249[3], v249[4], v249[5], v249[6], v249[7], v249[8], v249[9], *v250, *&v250[8], *&v250[16], *&v250[24], *&v250[32], *&v250[40], *&v250[48], *&v250[56], *&v250[64], *&v250[72], *&v250[80], *&v250[88], *&v250[96], *&v250[104], v251[0], v251[1], v251[2], v251[3], v251[4], v251[5]);
    *(inited + 32) = v149;
    *(inited + 40) = v150;
    OUTLINED_FUNCTION_105_2(v13[12].n128_i64[0], v13[12].n128_i8[8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    sub_25BCB614C();
    v151 = OUTLINED_FUNCTION_150();
    sub_25BAF9B54(v151);
    OUTLINED_FUNCTION_46_9();
    swift_setDeallocating();
    sub_25BC0C4EC();
    *&v247 = v7;
    sub_25BAFC990();
    v195 = *(&v247 + 1);
    v30 = v7;
    v184 = v227;
    v167 = v231;
    goto LABEL_29;
  }

  v3 = *(v243 + 80);
  v14 = 2 * v3;
  if (__OFADD__(v3, v3))
  {
    goto LABEL_39;
  }

  v15 = *(v243 + 224);
  v0 = (v14 - v15);
  if (__OFSUB__(v14, v15))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    sub_25BAA2110(v7, v8, v9, v10);
    v7 = v152;
    goto LABEL_22;
  }

  v7 = *(v243 + 192);
  if (*(v7 + 16) <= 2uLL)
  {
    *&v248 = 0;
    v247 = 2uLL;
    OUTLINED_FUNCTION_110_3();
    sub_25BCB617C();
    goto LABEL_55;
  }

  sub_25BCB617C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_22:
  v16 = *(v7 + 16);
  if (v16 < 3)
  {
    __break(1u);
    goto LABEL_43;
  }

  v17 = *(v7 + 48);
  v18 = __OFADD__(v17, v0);
  v19 = &v0[v17];
  if (v18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  *(v7 + 48) = v19;
  v20 = v13[5].n128_u64[1];
  v21 = 2 * v20;
  if (__OFADD__(v20, v20))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v22 = v13[14].n128_u64[1];
  v18 = __OFSUB__(v21, v22);
  v23 = v21 - v22;
  if (v18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v16 == 3)
  {
    *&v248 = 0;
    v247 = 3uLL;
    OUTLINED_FUNCTION_110_3();
LABEL_55:
    sub_25BADDD28("positiveAxis(fromAxis:from:rank:from:function:file:line:)", 57, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift", 102, 2, 133);
  }

  v24 = *(v7 + 56);
  v18 = __OFADD__(v24, v23);
  v25 = v24 + v23;
  if (v18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v167 = v13[5].n128_i64[1];
  v184 = v3;
  *(v7 + 56) = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  v27 = OUTLINED_FUNCTION_112_2(v26);
  *(v27 + 16) = *(v2 + 229);
  *(v27 + 32) = v12;
  *(v27 + 40) = v11;
  v28 = v13[12].n128_u8[8];
  *(v27 + 48) = v7;
  *(v27 + 56) = v28;
  sub_25BCB617C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  sub_25BCB614C();
  v29 = OUTLINED_FUNCTION_150();
  sub_25BAF9B54(v29);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  sub_25BC0C4EC();
  *&v247 = v7;
  sub_25BAFC990();
  v30 = v7;
  v195 = *(&v247 + 1);
  v31 = &unk_286D42400;
LABEL_29:
  v32 = sub_25BBD825C();
  v34 = v33;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_25BCC4630;
  OUTLINED_FUNCTION_9_33();
  *(v36 + 32) = v37;
  *(v36 + 40) = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  OUTLINED_FUNCTION_54();
  v40 = swift_allocObject();
  OUTLINED_FUNCTION_122_3(v40, v13[4], xmmword_25BCBAE70);
  *(v35 + 64) = 5;
  OUTLINED_FUNCTION_41_11();
  *(v35 + 72) = v41;
  *(v35 + 80) = v42;
  *(v35 + 88) = v31;
  *(v35 + 96) = 0;
  *(v35 + 104) = 5;
  OUTLINED_FUNCTION_8_32();
  *(v35 + 112) = v43;
  *(v35 + 120) = v44;
  OUTLINED_FUNCTION_72_3(xmmword_25BCC81D0);
  OUTLINED_FUNCTION_54();
  v45 = swift_allocObject();
  OUTLINED_FUNCTION_121_1(v45, v13[6], xmmword_25BCBAE70);
  *(v35 + 192) = v46;
  *(v35 + 200) = 0xE600000000000000;
  OUTLINED_FUNCTION_134(v13[7].n128_i64[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  sub_25BCB614C();
  v47 = OUTLINED_FUNCTION_150();
  sub_25BAFA0CC(v47, v48, v49, v50, v51, v52, v53, v54, v55, v161, v167, v39, v178, v184, v189, v195, v200, v203, v208, v213, v218, 2, 4, v232, v236, v239, v243, v247, *(&v247 + 1), v248, *(&v248 + 1), v249[0], v249[1]);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  sub_25BC0C4D8();
  *&v247 = 5;
  sub_25BAFCD30();
  v56 = v247;
  v57 = *(v244 + 144);
  v247 = *(v244 + 128);
  v248 = v57;
  *v249 = *(v244 + 160);
  *(&v249[1] + 2) = *(v244 + 170);
  v58 = v244;
  sub_25BBA18D8(0x6172745F766E6F63, 0xEE0065736F70736ELL, v32, v34, v56, *(&v56 + 1), v30, v196, &v247);

  if (*(v244 + 232) > 0 || *(v244 + 224) >= 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39B8, &unk_25BCC5B90);
    v59 = swift_initStackObject();
    v60 = OUTLINED_FUNCTION_17_19(v59, xmmword_25BCBAE50);
    v60[3].n128_u64[0] = v190;
    v60[3].n128_u64[1] = v209;
    v61 = sub_25BCB614C();
    v62 = OUTLINED_FUNCTION_40_12(v61);
    sub_25BAFA1D4(v62, v63, v64, v65, v66, v67, v68, v69, v162, v168, v173, v179, v185, v190, 1, 2, v204, v209, v214, v219, v224, v229, v233, v237, v240, v244, v247, *(&v247 + 1), v248, *(&v248 + 1));
    OUTLINED_FUNCTION_46_9();
    swift_setDeallocating();
    sub_25BC0C500();
    OUTLINED_FUNCTION_48_8();
    sub_25BAFCBDC(v70);
    v71 = v252;
    v72 = swift_initStackObject();
    OUTLINED_FUNCTION_60_3(v72, v73, v74, v75, v76, v77, v78, v79, v80, v163, v169, v174, v180, v186, v191, v197, v201, v205, v210, v215, v220, v81);
    *(v82 + 32) = 0x6965685F706F7263;
    *(v82 + 40) = 0xEB00000000746867;
    OUTLINED_FUNCTION_54();
    v83 = swift_allocObject();
    OUTLINED_FUNCTION_94_3(v83, v84, v85, v86, v87, v88, v89, v90, v91, v164, v170, v175, v181, v187, v192, v198, v202, v206, v211, v216, v221, v92);
    *(v93 + 32) = v183;
    v94 = *(v58 + 224);
    v18 = __OFSUB__(v183, v94);
    v95 = v183 - v94;
    if (!v18)
    {
      *(v93 + 40) = v95;
      v59[3].n128_u64[0] = v93;
      v59[3].n128_u64[1] = 0;
      v59[4].n128_u8[0] = 5;
      v59[4].n128_u64[1] = 0x6469775F706F7263;
      v59[5].n128_u64[0] = 0xEA00000000006874;
      OUTLINED_FUNCTION_54();
      v96 = swift_allocObject();
      OUTLINED_FUNCTION_94_3(v96, v97, v98, v99, v100, v101, v102, v103, v104, v161, v166, v172, v177, v183, v189, v194, v200, v203, v208, v213, v218, v105);
      *(v106 + 32) = v166;
      v107 = *(v58 + 232);
      v18 = __OFSUB__(v166, v107);
      v108 = v166 - v107;
      if (!v18)
      {
        *(v106 + 40) = v108;
        v59[5].n128_u64[1] = v106;
        v59[6].n128_u64[0] = 0;
        v59[6].n128_u8[8] = 5;
        v109 = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_188();
        v110 = sub_25BCB614C();
        v111 = OUTLINED_FUNCTION_40_12(v110);
        sub_25BAFA0CC(v111, v112, v113, v114, v115, v116, v117, v118, v119, v161, v166, v172, v177, v183, v189, v194, v200, v203, v208, v213, v218, v71, v228, v232, v236, v241, v245, v247, *(&v247 + 1), v248, *(&v248 + 1), v249[0], v249[1]);
        OUTLINED_FUNCTION_46_9();
        swift_setDeallocating();
        sub_25BC0C4D8();
        OUTLINED_FUNCTION_48_8();
        sub_25BAFCD30();
        v120 = v252;
        v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
        v122 = OUTLINED_FUNCTION_112_2(v121);
        *(v122 + 16) = v199;
        OUTLINED_FUNCTION_69_3();
        v123 = OUTLINED_FUNCTION_47_10();
        sub_25BBE0998(v123, v124, v222, v125, v126, v127, v128, v129, v165, v171, v176, v182, v188, v193, v199, *(&v199 + 1), v207, v212, v217, v222, v225, v230, v234, v238, v242, v246, v247, *(&v247 + 1), v248, *(&v248 + 1), v249[0], v249[1], v249[2], v249[3], v249[4], v249[5], v249[6], v249[7], v249[8], v249[9], *v250, *&v250[8], *&v250[16], *&v250[24], *&v250[32], *&v250[40], *&v250[48], *&v250[56], *&v250[64], *&v250[72], *&v250[80], *&v250[88], *&v250[96], *&v250[104], v251[0], v251[1], v251[2], v251[3], v251[4], v251[5]);
        *(v122 + 32) = v130;
        *(v122 + 40) = v131;
        OUTLINED_FUNCTION_105_2(*(v58 + 192), *(v58 + 200));
        OUTLINED_FUNCTION_188();
        v132 = sub_25BCB614C();
        v133 = OUTLINED_FUNCTION_40_12(v132);
        sub_25BAF9B54(v133);
        OUTLINED_FUNCTION_183();
        swift_setDeallocating();
        sub_25BC0C4EC();
        *&v252 = v58;
        OUTLINED_FUNCTION_163();
        v134 = v252;
        v252 = 0u;
        v253 = 0u;
        memset(v254, 0, 25);
        v254[25] = 1;
        OUTLINED_FUNCTION_64_4();
        sub_25BBA1A84(v135, v136, v137, v138, v120, *(&v120 + 1), v134, *(&v134 + 1), v109);

        goto LABEL_34;
      }

LABEL_48:
      __break(1u);
LABEL_49:

LABEL_51:
      OUTLINED_FUNCTION_86();
      OUTLINED_FUNCTION_155();
      OUTLINED_FUNCTION_50_7();
      v160 = 1405;
LABEL_52:
      sub_25BA97890(v153, v154, v155, v156, v157, v158, v160, v159, v161, v166, v172, v177, v183, v189, v194, v200, v203, v208, v213, v218, v223, v228, v232, v236);
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_34:

  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BBD8D24()
{
  sub_25BB2C64C(v0 + 48, __src);
  memcpy(__dst, __src, 0x79uLL);
  if (!LOBYTE(__dst[15]))
  {
    goto LABEL_4;
  }

  if (LOBYTE(__dst[15]) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(&__dst[10]);
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(&__dst[5]);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    return 0x6E5F6D6F646E6172;
  }

  __swift_destroy_boxed_opaque_existential_1(&__dst[5]);
  __swift_destroy_boxed_opaque_existential_1(__dst);
  return 0x755F6D6F646E6172;
}

BOOL sub_25BBD8DE8()
{
  sub_25BC31C8C(&v2);
  v0 = v3;

  return v0 == 8;
}

BOOL sub_25BBD8E28()
{
  sub_25BC31C8C(&v2);
  v0 = v3;

  return (v0 & 0xFFFFFFFD) != 8;
}

BOOL sub_25BBD8E6C()
{
  sub_25BB2C64C(v0 + 48, __src);
  memcpy(v3, __src, 0x79uLL);
  v1 = LOBYTE(v3[15]);
  if (LOBYTE(v3[15]) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(&v3[10]);
    __swift_destroy_boxed_opaque_existential_1(&v3[5]);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    sub_25BBE12D8(v3);
  }

  return v1 == 1;
}

uint64_t sub_25BBD8EF0()
{
  v1 = v0;
  sub_25BB2C64C(v0 + 48, __src);
  memcpy(__dst, __src, 0x79uLL);
  if (!BYTE8(__dst[7]))
  {
    OUTLINED_FUNCTION_170(__dst);
    goto LABEL_5;
  }

  if (BYTE8(__dst[7]) == 1)
  {
    OUTLINED_FUNCTION_170(__dst);
    __swift_destroy_boxed_opaque_existential_1(&__dst[5]);
LABEL_5:
    v2 = sub_25BBD8DE8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
    if (v2)
    {
      inited = swift_allocObject();
      *(inited + 16) = xmmword_25BCBAE90;
      OUTLINED_FUNCTION_65_1(inited, 1851876717);
      OUTLINED_FUNCTION_7_32(v62);
      *(inited + 48) = sub_25BC32028();
      *(inited + 56) = 0;
      *(inited + 64) = 2;
      *(inited + 72) = 0x766564647473;
      *(inited + 80) = 0xE600000000000000;
      OUTLINED_FUNCTION_7_32(v61);
      *(inited + 88) = sub_25BC32028();
      *(inited + 96) = 0;
      *(inited + 104) = 2;
      OUTLINED_FUNCTION_23_21();
      *(inited + 112) = v4;
      *(inited + 120) = v5;
      *(inited + 128) = *(v1 + 176);
      *(inited + 136) = 0;
      *(inited + 144) = 7;
    }

    else
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25BCBAE90;
      OUTLINED_FUNCTION_65_1(inited, 1851876717);
      OUTLINED_FUNCTION_7_32(v62);
      *(inited + 48) = COERCE_UNSIGNED_INT(sub_25BC31CA0());
      *(inited + 56) = 0;
      *(inited + 64) = 3;
      *(inited + 72) = 0x766564647473;
      *(inited + 80) = 0xE600000000000000;
      OUTLINED_FUNCTION_7_32(v61);
      *(inited + 88) = COERCE_UNSIGNED_INT(sub_25BC31CA0());
      *(inited + 96) = 0;
      *(inited + 104) = 3;
      OUTLINED_FUNCTION_23_21();
      *(inited + 112) = v6;
      *(inited + 120) = v7;
      OUTLINED_FUNCTION_195();
    }

    sub_25BCB617C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    __src[1] = sub_25BCB614C();
    sub_25BAFA0CC(inited, v8, v9, v10, v11, v12, v13, v14, v15, v34, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58);
    v17 = v16;
    swift_setDeallocating();
    sub_25BC0C4D8();
    __src[0] = v17;
    sub_25BAFCD30();
    v18 = __src[0];
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_170(__dst);
  v19 = sub_25BBD8DE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_25BCBAE90;
  *(v20 + 32) = 7827308;
  *(v20 + 40) = 0xE300000000000000;
  OUTLINED_FUNCTION_7_32(v62);
  if (v19)
  {
    *(v20 + 48) = sub_25BC32028();
    *(v20 + 56) = 0;
    v21 = 2;
    *(v20 + 64) = 2;
    *(v20 + 72) = 1751607656;
    *(v20 + 80) = 0xE400000000000000;
    OUTLINED_FUNCTION_7_32(v61);
    v22 = sub_25BC32028();
  }

  else
  {
    *(v20 + 48) = COERCE_UNSIGNED_INT(sub_25BC31CA0());
    *(v20 + 56) = 0;
    v21 = 3;
    *(v20 + 64) = 3;
    *(v20 + 72) = 1751607656;
    *(v20 + 80) = 0xE400000000000000;
    OUTLINED_FUNCTION_7_32(v61);
    v22 = COERCE_UNSIGNED_INT(sub_25BC31CA0());
  }

  *(v20 + 88) = v22;
  *(v20 + 96) = 0;
  *(v20 + 104) = v21;
  *(v20 + 112) = 0x6570616873;
  *(v20 + 120) = 0xE500000000000000;
  OUTLINED_FUNCTION_195();
  sub_25BCB617C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  sub_25BCB614C();
  sub_25BAFA0CC(v20, v23, v24, v25, v26, v27, v28, v29, v30, v34, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58);
  v32 = v31;
  swift_setDeallocating();
  sub_25BC0C4D8();
  sub_25BAFCD30();
  v18 = v32;
LABEL_13:
  v35 = v18;
  __swift_destroy_boxed_opaque_existential_1(v61);
  __swift_destroy_boxed_opaque_existential_1(v62);
  return v35;
}

uint64_t sub_25BBD92C4(uint64_t a1)
{
  v3 = v1;

  v6 = sub_25BBA0B64(v5);
  v8 = v7;

  *&__src[0] = v6;
  *(&__src[0] + 1) = v8;
  OUTLINED_FUNCTION_201_0();
  MEMORY[0x25F876C90]();
  v9 = v6;
  v267 = v8;
  v10 = *(v3 + 40);
  type metadata accessor for TensorHandle();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  swift_retain_n();
  sub_25BAA6EB0();

  v12 = sub_25BBCB800(v11);

  v14 = *(v12 + 16);
  if (v14 < 2)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v14 == 2)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v14 < 4)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v14 == 4)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v14 < 6)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v14 == 6)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v296 = *(v12 + 36);
  v15 = *(v12 + 52);

  sub_25BB6B190(v296, v15);
  __src[0] = v16;
  LOBYTE(__src[1]) = 1;
  v17 = *(v3 + 200);
  v315[0] = *(v3 + 184);
  v315[1] = v17;
  v316[0] = *(v3 + 216);
  *(v316 + 10) = *(v3 + 226);
  v18 = v9;
  sub_25BBA00B4(__src, v9, v267, v315);
  sub_25BB06134(*&__src[0], *(&__src[0] + 1), __src[1]);
  OUTLINED_FUNCTION_19_19();
  v19 = OUTLINED_FUNCTION_47_10();
  sub_25BBE0998(v19, v20, a1, v21, v22, v23, v24, v25, v177, v187, v197, v208, v219, v229, v239, v248, v257, v267, v277, v286, v296.i64[0], v296.i64[1], v302, *(&v302 + 1), v303, v304, v305, *(&v305 + 1), v306, v307, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), *&__src[6], *(&__src[6] + 1));
  v287 = v26;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_67_3(inited, xmmword_25BCBAE50);
  sub_25BC31C8C(v30);
  v31 = inited[2].n128_i64[0];
  v32 = inited[2].n128_u8[8];
  swift_setDeallocating();
  sub_25BCB617C();
  sub_25BAB9E1C();
  if (sub_25BBD8E6C() || sub_25BBD8E28())
  {
    *&__src[0] = v287;
    *(&__src[0] + 1) = v28;
    MEMORY[0x25F876C90](1735291487, 0xE400000000000000);
    v28 = *(&__src[0] + 1);
    v287 = *&__src[0];
  }

  if (sub_25BBD8E28())
  {

    sub_25BC31C8C(__src);
    v258 = *&__src[0];
    v33 = 10;
  }

  else
  {
    v258 = v31;
    v33 = v32;
  }

  v34 = sub_25BBD8D24();
  v198 = v35;
  v209 = v34;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39B8, &unk_25BCC5B90);
  v36 = OUTLINED_FUNCTION_112_2(v220);
  OUTLINED_FUNCTION_60_3(v36, v37, v38, v39, v40, v41, v42, v43, v44, v178, v188, v198, v209, v220, v230, v2, v28, v258, v268, a1, v287, v45);
  v47 = OUTLINED_FUNCTION_65_1(v46, 1684366707);
  *(v47 + 48) = v18;
  *(v47 + 56) = v269;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  *(&__src[0] + 1) = sub_25BCB614C();
  sub_25BAFA1D4(v3, v49, v50, v51, v52, v53, v54, v55, v179, v189, v199, v210, v221, v231, v240, v249, v259, v269, v278, v288, 1, 2, v302, *(&v302 + 1), v303, v304, v305, *(&v305 + 1), v306, v307);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  v56 = sub_25BC0C500();
  *&__src[0] = inited;
  sub_25BAFCBDC(v56);
  v57 = sub_25BBD8EF0();
  v59 = v58;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  v60 = OUTLINED_FUNCTION_112_2(v232);
  OUTLINED_FUNCTION_60_3(v60, v61, v62, v63, v64, v65, v66, v67, v68, v180, v190, v200, v211, v222, v232, v241, v250, v260, v270, v279, v289, v69);
  *(v70 + 32) = v290;
  *(v3 + 40) = v251;
  *(v3 + 48) = v261;
  HIDWORD(v191) = v33;
  *(v3 + 56) = v33;
  sub_25BCB617C();
  sub_25BCB617C();
  v271 = v48;
  *(&__src[0] + 1) = sub_25BCB614C();
  sub_25BAF9B54(v3);
  OUTLINED_FUNCTION_104_3();
  sub_25BC0C4EC();
  *&__src[0] = v33;
  sub_25BAFC990();
  v71 = __src[0];
  v72 = *(v3 + 200);
  v313[0] = *(v3 + 184);
  v313[1] = v72;
  v314[0] = *(v3 + 216);
  *(v314 + 10) = *(v3 + 226);
  OUTLINED_FUNCTION_191();
  sub_25BBA1A84(v73, v74, v75, v76, v57, v59, v71, *(&v71 + 1), v313);

  sub_25BB2C64C(v3 + 48, __src);
  memcpy(__dst, __src, 0x79uLL);
  if (__dst[120] == 1)
  {
    sub_25BA97060(&__dst[80], v310);
    __swift_destroy_boxed_opaque_existential_1(&__dst[40]);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    v77 = v290;
    *v311 = v290;
    v78 = v251;
    *&v311[8] = v251;
    sub_25BCB617C();
    MEMORY[0x25F876C90](95, 0xE100000000000000);
    v79 = sub_25BBA0DCC(0x657268745F6F7774, 0xED0000646C6F6873);
    MEMORY[0x25F876C90](v79);

    v80 = *v311;
    sub_25BAC27B0(v310, v311);
    sub_25BB9483C(v311, &v305);
    v302 = v305;
    LOBYTE(v303) = v306;
    HIBYTE(v307) = 1;
    memset(v311, 0, sizeof(v311));
    v312 = 1;
    sub_25BBA10A8(&v302, v80, *(&v80 + 1), v311);
    sub_25BB06134(v302, *(&v302 + 1), v303);
    if (sub_25BBD8E28())
    {
      *&v305 = v290;
      *(&v305 + 1) = v251;
      sub_25BCB617C();
      MEMORY[0x25F876C90](0x7461636E7572745FLL, 0xEA00000000006465);
      v202 = *(&v305 + 1);
      v213 = v305;
    }

    else
    {
      OUTLINED_FUNCTION_19_19();
      v83 = OUTLINED_FUNCTION_47_10();
      sub_25BBE0998(v83, v84, v280, v85, v86, v87, v88, v89, v181, v191, v201, v212, v223, v233, v242, v251, v261, v48, v280, v290, v297.n128_i64[0], v297.n128_i64[1], v302, *(&v302 + 1), v303, v304, v305, *(&v305 + 1), v306, v307, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), *&__src[6], *(&__src[6] + 1));
      v202 = v91;
      v213 = v90;
    }

    v92 = swift_allocObject();
    v93 = OUTLINED_FUNCTION_17_19(v92, xmmword_25BCBAE70);
    v93[3].n128_u64[0] = v77;
    v93[3].n128_u64[1] = v78;
    *(OUTLINED_FUNCTION_120_2(v93) + 80) = v80;
    v94 = MEMORY[0x277D84F90];
    sub_25BCB614C();
    v95 = OUTLINED_FUNCTION_150();
    sub_25BAFA1D4(v95, v96, v97, v98, v99, v100, v101, v102, v181, v191, v202, v213, v223, v233, v242, v251, v261, v271, v280, v290, v297.n128_i64[0], v297.n128_i64[1], v302, *(&v302 + 1), v303, v304, v305, *(&v305 + 1), v306, v307);
    OUTLINED_FUNCTION_46_9();
    swift_setDeallocating();
    v103 = sub_25BC0C500();
    *&v305 = *(&v80 + 1);
    sub_25BAFCBDC(v103);
    v104 = *(&v305 + 1);
    v291 = v305;
    OUTLINED_FUNCTION_111_3();
    v105 = sub_25BCB614C();
    *&v305 = v94;
    *(&v305 + 1) = v105;
    sub_25BAFCD30();
    v106 = v305;
    v107 = OUTLINED_FUNCTION_112_2(v234);
    OUTLINED_FUNCTION_60_3(v107, v108, v109, v110, v111, v112, v113, v114, v115, v182, v192, v203, v214, v224, v234, v243, v252, v262, v272, v281, v291, v116);
    v81 = v201;
    *(v117 + 32) = v212;
    *(v117 + 40) = v201;
    *(v117 + 48) = v261;
    *(v117 + 56) = BYTE4(v191);
    sub_25BCB617C();
    OUTLINED_FUNCTION_111_3();
    sub_25BCB614C();
    v118 = OUTLINED_FUNCTION_150();
    v119 = sub_25BAF9B54(v118);
    swift_setDeallocating();
    sub_25BC0C4EC();
    *&v305 = v119;
    sub_25BAFC990();
    sub_25BBA1A84(6582125, 0xE300000000000000, v290, v104, v106, *(&v106 + 1), v305, *(&v305 + 1), v311);

    __swift_destroy_boxed_opaque_existential_1(v310);
    v82 = v212;
  }

  else
  {

    sub_25BBE12D8(__dst);
    v81 = v251;
    v82 = v290;
  }

  if (sub_25BBD8E28())
  {
    v120 = OUTLINED_FUNCTION_112_2(v223);
    v121 = OUTLINED_FUNCTION_17_19(v120, v297);
    v121[3].n128_u64[0] = v82;
    v121[3].n128_u64[1] = v81;
    *(&__src[0] + 1) = sub_25BCB614C();
    sub_25BAFA1D4(v120, v122, v123, v124, v125, v126, v127, v128, v181, v191, v201, v212, v223, v233, v242, v251, v261, v271, v280, v290, v297.n128_i64[0], v297.n128_i64[1], v302, *(&v302 + 1), v303, v304, v305, *(&v305 + 1), v306, v307);
    OUTLINED_FUNCTION_46_9();
    swift_setDeallocating();
    v129 = sub_25BC0C500();
    *&__src[0] = v81;
    sub_25BAFCBDC(v129);
    v130 = __src[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
    v131 = swift_allocObject();
    OUTLINED_FUNCTION_94_3(v131, v132, v133, v134, v135, v136, v137, v138, v139, v183, v193, v204, v215, v225, v235, v244, v253, v263, v273, v282, v292, v140);
    OUTLINED_FUNCTION_44_7(v141, 1887007844);
    sub_25BC31C8C(__src);
    LOBYTE(v120) = BYTE8(__src[0]);

    __dst[0] = v120;
    v131[3].n128_u64[0] = sub_25BB9FC3C();
    v131[3].n128_u64[1] = v142;
    v131[4].n128_u8[0] = 4;
    *(&__src[0] + 1) = sub_25BCB614C();
    sub_25BAFA0CC(v131, v143, v144, v145, v146, v147, v148, v149, v150, v184, v194, v205, v216, v226, v236, v245, v254, v264, v274, v283, v293, v298, v300, v302, *(&v302 + 1), v303, v304, v305, *(&v305 + 1), v306, v307, *__dst, *&__dst[8]);
    v152 = v151;
    swift_setDeallocating();
    sub_25BC0C4D8();
    *&__src[0] = v152;
    sub_25BAFCD30();
    v153 = __src[0];
    v154 = OUTLINED_FUNCTION_112_2(v237);
    OUTLINED_FUNCTION_94_3(v154, v155, v156, v157, v158, v159, v160, v161, v162, v185, v195, v206, v217, v227, v237, v246, v255, v265, v275, v284, v294, v163);
    OUTLINED_FUNCTION_19_19();
    v164 = OUTLINED_FUNCTION_47_10();
    sub_25BBE0998(v164, v165, v285, v166, v167, v168, v169, v170, v186, v196, v207, v218, v228, v238, v247, v256, v266, v276, v285, v295, v299, v301, v302, *(&v302 + 1), v303, v304, v305, *(&v305 + 1), v306, v307, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), *&__src[6], *(&__src[6] + 1));
    v154[2].n128_u64[0] = v171;
    v154[2].n128_u64[1] = v172;
    sub_25BC31C8C(&v154[3]);
    *(&__src[0] + 1) = sub_25BCB614C();
    v173 = sub_25BAF9B54(v154);
    swift_setDeallocating();
    sub_25BC0C4EC();
    *&__src[0] = v173;
    sub_25BAFC990();
    v174 = __src[0];
    __dst[0] = 1;
    memset(__src, 0, 57);
    BYTE9(__src[3]) = 1;
    v175 = OUTLINED_FUNCTION_90_1();
    sub_25BBA1A84(v175, v176, v130, *(&v130 + 1), v153, *(&v153 + 1), v174, *(&v174 + 1), __src);
  }
}

uint64_t sub_25BBD9F54(uint64_t a1)
{
  OUTLINED_FUNCTION_197();
  if (!v3)
  {
    return sub_25BBDA5CC(a1);
  }

  result = sub_25BBD9F94(a1);
  if (!v1 && (result & 1) == 0)
  {
    return sub_25BBDA5CC(a1);
  }

  return result;
}

uint64_t sub_25BBD9F94(uint64_t a1)
{
  v2 = v1;
  v77[30] = *MEMORY[0x277D85DE8];
  if (*(v1 + 168))
  {
    if (*(v1 + 168) == 1)
    {
      return 0;
    }
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(&v64);

    if (v69)
    {
      v4 = *(v69 + 24);
      sub_25BAA4AF4(&v64);
      if (v4)
      {
        return 0;
      }
    }

    else
    {
      sub_25BAA4AF4(&v64);
    }
  }

  if ((*(*(*(v1 + 40) + 152) + 16) - 6) < 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  result = *(v1 + 152);
  if (result)
  {
    v6 = *(v1 + 160);
    if (!v6)
    {
      return 0;
    }

    v56 = a1;
    v60 = *(v1 + 152);

    v62 = v6;

    v7 = sub_25BC5E468();
    v8 = sub_25BA9BEA0(v7);
    v9 = 0;
    LODWORD(v10) = v7 & 0xFFFFFFF8;
    while (v8 != v9)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        a1 = MEMORY[0x25F8779B0](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        a1 = *(v7 + 8 * v9 + 32);
      }

      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        sub_25BAD80BC();
        inited = v45;
LABEL_34:
        inited[2] = a1;
        v17 = &inited[3 * v10];
        v17[4] = 0x616D6D6167;
        v17[5] = 0xE500000000000000;
        v17[6] = v7;
        goto LABEL_35;
      }

      v11 = sub_25BAC4018();
      if (v11 == sub_25BAC4018())
      {
      }

      else
      {
        v12 = sub_25BAB3058();

        if (!v12)
        {

LABEL_30:

          return 0;
        }

        if (object_getClass(v12) != _TtC14NeuralNetworks17ConstantOperation)
        {

          swift_unknownObjectRelease();
          goto LABEL_30;
        }

        swift_unknownObjectRelease();
      }

      ++v9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D8, &qword_25BCC5BA0);
    inited = swift_initStackObject();
    *(inited + 1) = xmmword_25BCBAE90;
    inited[4] = 120;
    inited[5] = 0xE100000000000000;
    inited[6] = *(v2 + 40);
    inited[7] = 1851876717;
    inited[8] = 0xE400000000000000;
    inited[9] = v60;
    inited[10] = 0x65636E6169726176;
    inited[11] = 0xE800000000000000;
    inited[12] = v6;
    v14 = *(v2 + 56);

    if (v14)
    {

      v10 = 4;
      sub_25BAD80BC();
      inited = v15;
      v15[2] = 4;
      v15[13] = 1635018082;
      v15[14] = 0xE400000000000000;
      v15[15] = v14;
    }

    else
    {
      v10 = 3;
    }

    v7 = *(v2 + 48);
    if (v7)
    {
      v16 = inited[3];
      a1 = v10 + 1;

      if (v10 >= v16 >> 1)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    }

LABEL_35:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    *(&v64 + 1) = sub_25BCB614C();
    v18 = sub_25BAD8178(inited);

    *&v64 = v18;
    sub_25BAD8324(v19);
    v20 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_25BCBAE50;
    *(v21 + 32) = 0x6E6F6C69737065;
    *(v21 + 40) = 0xE700000000000000;
    v22 = *(v2 + 76);
    LOBYTE(v64) = *(*(v2 + 40) + 160);
    v23 = sub_25BC8FACC();
    sub_25BB949D8(v23, v24, v21 + 48, v22);
    v25 = sub_25BCB614C();
    sub_25BAFA0CC(v21, v26, v27, v28, v29, v30, v31, v32, v33, v46, v48, 1, 2, v51, *(&v20 + 1), v56, v20, v60, v62, v64, v25, v65, *(&v65 + 1), *&v66[0], *(&v66[0] + 1), *&v66[1], *(&v66[1] + 1), v67, v68, v69, v70, v71, v72);
    v35 = v34;
    swift_setDeallocating();
    sub_25BC0C4D8();
    *&v64 = v35;
    sub_25BAFCD30();
    v36 = *(&v64 + 1);
    v52 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
    v37 = swift_initStackObject();
    *(v37 + 16) = v50;
    sub_25BBE0998(v2, 0, v57, &unk_27FBB6148, type metadata accessor for BatchNormOperation, &unk_25BCD1FC0, sub_25BC60CBC, v38, v47, v49, v50, *(&v50 + 1), v52, v54, v57, v58, v61, v63, v64, *(&v64 + 1), v65, *(&v65 + 1), *&v66[0], *(&v66[0] + 1), *&v66[1], *(&v66[1] + 1), v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77[0], v77[1], v77[2], v77[3], v77[4], v77[5], v77[6], v77[7], v77[8], v77[9], v77[10], v77[11], v77[12], v77[13], v77[14], v77[15], v77[16], v77[17], v77[18], v77[19], v77[20], v77[21], v77[22], v77[23]);
    *(v37 + 32) = v39;
    *(v37 + 40) = v40;

    sub_25BAC9400(v41, v37 + 48);
    *(&v64 + 1) = sub_25BCB614C();
    v42 = sub_25BAF9B54(v37);
    swift_setDeallocating();
    sub_25BC0C4EC();
    *&v64 = v42;
    sub_25BAFC990();
    v43 = v64;
    v44 = *(v2 + 96);
    v64 = *(v2 + 80);
    v65 = v44;
    v66[0] = *(v2 + 112);
    *(v66 + 10) = *(v2 + 122);
    sub_25BBA18D8(0x6F6E5F6863746162, 0xEA00000000006D72, v59, v55, v53, v36, v43, *(&v43 + 1), &v64);

    return 1;
  }

  return result;
}

uint64_t sub_25BBDA5F0(float a1, float a2, uint64_t a3, char a4)
{
  KeyPath = swift_getKeyPath();
  v8 = sub_25BBDE260(KeyPath);

  type metadata accessor for TensorHandle();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  sub_25BAA6EB0();

  v10 = swift_getKeyPath();
  v11 = sub_25BBDE2EC(v10);

  if (!v11)
  {
    v30 = 0xD00000000000002FLL;
    v31 = 0x800000025BCE09D0;
    BYTE4(v40) = 3;
    v29 = 1695;
    goto LABEL_24;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v11;

  sub_25BAA6EB0();

  v14 = swift_getKeyPath();
  v15 = sub_25BBDE2EC(v14);

  if (!v15)
  {
    v30 = 0xD000000000000030;
    v31 = 0x800000025BCE0A20;
    BYTE4(v40) = 3;
    v29 = 1700;
    goto LABEL_24;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v15;

  sub_25BAA6EB0();

  v17 = swift_getKeyPath();
  v18 = sub_25BBDE2EC(v17);

  if (!v18)
  {
    v30 = 0xD000000000000035;
    v31 = 0x800000025BCE0A60;
    BYTE4(v40) = 3;
    v29 = 1705;
    goto LABEL_24;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v18;

  sub_25BAA6EB0();

  v50 = v19;
  v20 = swift_getKeyPath();
  v21 = sub_25BBDE2EC(v20);

  if (!v21)
  {
    v30 = 0xD000000000000039;
    v31 = 0x800000025BCE0AA0;
    BYTE4(v40) = 3;
    v29 = 1710;
LABEL_24:
    sub_25BA97890("encodeWithPrimitives(to:)", 25, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/MIL/MILTensorOperation.swift", 113, 2, v29, v12, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
  }

  v22 = swift_allocObject();
  *(v22 + 16) = v21;

  sub_25BAA6EB0();

  v48 = v9;
  v49 = v22;
  v47 = v13;
  v46 = v16;
  if (a4)
  {

    v23 = a4 == 1;
  }

  else
  {
    type metadata accessor for ContextManager();

    sub_25BAA49B8();
    sub_25BAA4A5C(&v30);

    if (v40)
    {
      v23 = *(v40 + 24) & 1;
    }

    else
    {
      v23 = 0;
    }

    sub_25BAA4AF4(&v30);
  }

  basicBatchNorm(_:runningMean:runningVariance:scale:offset:isTraining:momentum:epsilon:)(&v48, &v50, &v49, &v47, &v46, v23, &v30, a1, a2);

  v24 = v30;
  if (!a4)
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(&v30);

    if (v40)
    {
      v25 = *(v40 + 24);
      sub_25BAA4AF4(&v30);
      if (v25)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_25BAA4AF4(&v30);
    }

LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_25BCBAE50;
    *(v26 + 32) = v24;

    goto LABEL_19;
  }

  if (a4 != 1)
  {
    goto LABEL_18;
  }

LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_25BCBAE90;
  v27 = v50;
  *(v26 + 32) = v24;
  *(v26 + 40) = v27;
  *(v26 + 48) = v49;

LABEL_19:

  return v26;
}

uint64_t sub_25BBDAB4C(void *a1, uint64_t a2)
{
  *(*a2 + 152) = *a1;
}

uint64_t sub_25BBDAB90(void *a1, uint64_t a2)
{
  *(*a2 + 160) = *a1;
}

uint64_t sub_25BBDAC0C(float a1)
{
  KeyPath = swift_getKeyPath();
  v3 = sub_25BBDE260(KeyPath);

  type metadata accessor for TensorHandle();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  sub_25BAA6EB0();

  v5 = swift_getKeyPath();
  v6 = sub_25BBDE2EC(v5);

  if (!v6)
  {
    v29 = 0xD00000000000002FLL;
    v30 = 0x800000025BCE09D0;
    BYTE4(v39) = 3;
    v22 = 1751;
    goto LABEL_6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v6;

  sub_25BAA6EB0();

  v9 = swift_getKeyPath();
  v10 = sub_25BBDE2EC(v9);

  if (!v10)
  {
    v29 = 0xD000000000000030;
    v30 = 0x800000025BCE0A20;
    BYTE4(v39) = 3;
    v22 = 1756;
LABEL_6:
    sub_25BA97890("encode(to:)", 11, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/MIL/MILTensorOperation.swift", 113, 2, v22, v7, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v10;

  sub_25BAA6EB0();

  MEMORY[0x28223BE20](v12);
  *&v23[4] = a1;
  v13 = sub_25BBDFAFC(&v29, v4, v8, v11, sub_25BBE1348, v23);

  v14 = swift_getKeyPath();
  v15 = sub_25BBDE260(v14);

  v16 = swift_allocObject();
  *(v16 + 16) = v15;

  sub_25BAA6EB0();

  v26 = v16;
  (v13)(&v29, &v28, &v27, &v26);
  v18 = v28;
  v17 = v29;
  v19 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_25BCBAE90;
  *(v20 + 32) = v17;
  *(v20 + 40) = v18;
  *(v20 + 48) = v19;

  return v20;
}

uint64_t sub_25BBDAF54(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_178(a1);
  *(v2 + 48) = v1;
}

uint64_t sub_25BBDAF94(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_178(a1);
  *(v2 + 56) = v1;
}

uint64_t sub_25BBDAFD4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>, float a5@<S0>)
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a3;
  v10 = *(*a2 + 16);
  v21 = *(v10 + 152);
  LOBYTE(v19) = *(v10 + 160);
  sub_25BAA51C8(v10 + 168, v20);
  type metadata accessor for TensorRepresentation();
  swift_allocObject();

  sub_25BCB617C();
  LOBYTE(v18) = 1;
  v11 = sub_25BC5F250(&v21, &v19, v20, 0x100000000);
  type metadata accessor for TensorHandle();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;

  sub_25BAA6EB0();

  v21 = v12;
  v13 = *(v8 + 16);
  v19 = *(v13 + 152);
  LOBYTE(v18) = *(v13 + 160);
  sub_25BAA51C8(v13 + 168, v20);
  swift_allocObject();

  sub_25BCB617C();
  v14 = sub_25BC5F250(&v19, &v18, v20, 0x100000000);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;

  sub_25BAA6EB0();

  v19 = v7;
  v20[0] = v15;
  v17 = v9;
  v18 = v8;

  basicBatchNorm(_:runningMean:runningVariance:scale:offset:isTraining:momentum:epsilon:)(&v19, &v21, v20, &v18, &v17, 1, a4, 0.9, a5);
}

uint64_t sub_25BBDB200()
{
  OUTLINED_FUNCTION_42_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D8, &qword_25BCC5BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  OUTLINED_FUNCTION_78_3();
  *(v3 + 32) = v4;
  *(v3 + 40) = 0xE700000000000000;
  *(inited + 48) = *(v0 + 40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_11_29();
  v5 = sub_25BCB614C();
  v6 = OUTLINED_FUNCTION_40_12(v5);
  sub_25BAD8178(v6);
  OUTLINED_FUNCTION_57_2();
  swift_setDeallocating();
  v7 = sub_25BC0C4C4();
  OUTLINED_FUNCTION_132(v7);
  OUTLINED_FUNCTION_153();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_25BCBAE90;
  OUTLINED_FUNCTION_86();
  *(v9 + 32) = 0xD000000000000013;
  *(v9 + 40) = v10;
  v11 = OUTLINED_FUNCTION_36_11(v9);
  *(v11 + 72) = 0x65756C61765F6E6FLL;
  *(v11 + 80) = 0xE800000000000000;
  sub_25BAC27B0(v0 + 56, &v115);
  sub_25BB9483C(&v115, v8 + 88);
  *(v8 + 112) = 0x756C61765F66666FLL;
  *(v8 + 120) = 0xE900000000000065;
  sub_25BAC27B0(v0 + 96, &v115);
  sub_25BB9483C(&v115, v8 + 128);
  OUTLINED_FUNCTION_11_29();
  v12 = sub_25BCB614C();
  v13 = OUTLINED_FUNCTION_40_12(v12);
  sub_25BAFA0CC(v13, v14, v15, v16, v17, v18, v19, v20, v21, v52, v55, 1, 2, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  sub_25BC0C4D8();
  OUTLINED_FUNCTION_48_8();
  sub_25BAFCD30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  v22 = swift_initStackObject();
  OUTLINED_FUNCTION_30_14(v22, v23, v24, v25, v26, v27, v28, v29, v30, v53, v56, v31);
  v32 = OUTLINED_FUNCTION_47_10();
  OUTLINED_FUNCTION_169(v32, v33, v34, v35, v36, v37, v38, v39, v54, v57, v59, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, *(&v115 + 1), v116, *(&v116 + 1), *&v117[0], *(&v117[0] + 1), *&v117[1], *(&v117[1] + 1), *&v117[2], *(&v117[2] + 1), v118, v119, v120, v121);
  OUTLINED_FUNCTION_74_3(v40, v41);
  result = sub_25BAA0648();
  if (*(result + 16))
  {
    OUTLINED_FUNCTION_37_10(result);

    v43 = sub_25BCB614C();
    v44 = OUTLINED_FUNCTION_63_1(v43);
    sub_25BAF9B54(v44);
    OUTLINED_FUNCTION_156();
    sub_25BC0C4EC();
    OUTLINED_FUNCTION_61_4();
    v45 = *(v0 + 168);
    v115 = *(v0 + 152);
    v116 = v45;
    v117[0] = *(v0 + 184);
    *(v117 + 10) = *(v0 + 194);
    OUTLINED_FUNCTION_13_27(0x746F685F656E6FLL, 0xE700000000000000, v46, v47, v48, v49, v50, v51, v1, v58);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BBDB530(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_25BBDE260(KeyPath);

  type metadata accessor for TensorHandle();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;

  sub_25BAA6EB0();

  v8 = swift_getKeyPath();
  v9 = sub_25BBDE260(v8);

  v10 = swift_allocObject();
  *(v10 + 16) = v9;

  sub_25BAA6EB0();

  v15 = v10;
  v16 = v7;
  v14 = a3;
  basicSoftmaxCrossEntropy(logits:labels:axis:reduction:)(&v16, &v15, a2, &v14, &v17);
  v11 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25BCBAE50;
  *(v12 + 32) = v11;

  return v12;
}

uint64_t sub_25BBDB6D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_25BBDE260(KeyPath);

  type metadata accessor for TensorHandle();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;

  sub_25BAA6EB0();

  v8 = swift_getKeyPath();
  v9 = sub_25BBDE260(v8);

  v10 = swift_allocObject();
  *(v10 + 16) = v9;

  sub_25BAA6EB0();

  sub_25BC6E46C(v24, v23, v10, a2, a3, v11, v12, v13, v22, v7, v23[1], v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8]);
  v15 = v14;

  v16 = swift_getKeyPath();
  v17 = sub_25BBDE260(v16);

  v18 = swift_allocObject();
  *(v18 + 16) = v17;

  sub_25BAA6EB0();

  v23[0] = v18;
  v15(v24, v23);
  v19 = v24[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_25BCBAE50;
  *(v20 + 32) = v19;

  return v20;
}

uint64_t sub_25BBDB8C8(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_178(a1);
  *(v2 + 40) = v1;
}

void sub_25BBDB920(uint64_t a1@<X8>)
{
  if (*(*(v1 + 40) + 160) == 8)
  {
    _S0 = *(v1 + 116);
    __asm { FCVT            H0, S0 }

    v7 = _S0;
    v8 = 2;
  }

  else
  {
    v7 = *(v1 + 116);
    v8 = 3;
  }

  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
}

uint64_t sub_25BBDB958(uint64_t a1)
{
  if (*(v1 + 120) == 1)
  {
    return sub_25BBDB984(a1);
  }

  else
  {
    return sub_25BBDC150(a1);
  }
}

uint64_t sub_25BBDC150(uint64_t a1)
{
  v2 = v1;

  v93 = sub_25BBA0B64(v4);
  v247 = v5;

  v7 = sub_25BBA0B64(v6);
  v88 = v8;

  v10 = sub_25BBA0B64(v9);
  v12 = v11;

  if (*(v1 + 136))
  {

    v14 = sub_25BBA0B64(v13);
    v16 = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39B8, &unk_25BCC5B90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25BCBDF80;
    *(inited + 32) = 29560;
    *(inited + 40) = 0xE200000000000000;
    v18 = v247;
    *(inited + 48) = v93;
    *(inited + 56) = v18;
    *(inited + 64) = 7567460;
    *(inited + 72) = 0xE300000000000000;
    *(inited + 80) = v7;
    *(inited + 88) = v88;
    strcpy((inited + 96), "learning_rate");
    *(inited + 110) = -4864;
    *(inited + 112) = v10;
    *(inited + 120) = v12;
    *(inited + 128) = 0x6D75746E656D6F6DLL;
    *(inited + 136) = 0xE800000000000000;
    *(inited + 144) = v14;
    *(inited + 152) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    *(&v245[0] + 1) = sub_25BCB614C();
    sub_25BAFA1D4(inited, v19, v20, v21, v22, v23, v24, v25, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178);
    v27 = v26;
    swift_setDeallocating();
    v28 = sub_25BC0C500();
    sub_25BAFCBDC(v28);
    v29 = *(&v245[0] + 1);
    v247 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_25BCBAE50;
    strcpy((v30 + 32), "momentum_val");
    *(v30 + 45) = 0;
    *(v30 + 46) = -5120;
    sub_25BBDB920(v30 + 48);
    *(&v245[0] + 1) = sub_25BCB614C();
    sub_25BAFA0CC(v30, v31, v32, v33, v34, v35, v36, v37, v38, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v179, v183, v186);
    v40 = v39;
    swift_setDeallocating();
    sub_25BC0C4D8();
    *&v245[0] = v40;
    sub_25BAFCD30();
    v41 = v40;
    v42 = *(&v245[0] + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
    v43 = swift_initStackObject();
    *(v43 + 16) = xmmword_25BCBAE70;
    sub_25BBE0B84(v2, 0, a1, &qword_27FBB5D58, type metadata accessor for StochasticGradientDescentOperation, &unk_25BCBB060, sub_25BC602DC, v44, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v180, v184, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243);
    *(v43 + 32) = v45;
    *(v43 + 40) = v46;
    result = sub_25BAF4B64();
    if (*(result + 16))
    {
      v48 = *(result + 40);
      *(v43 + 48) = *(result + 32);
      *(v43 + 56) = v48;
      sub_25BCB617C();

      sub_25BBE0B84(v2, 1, a1, &qword_27FBB5D58, type metadata accessor for StochasticGradientDescentOperation, &unk_25BCBB060, sub_25BC602DC, v49, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181, v185, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244);
      *(v43 + 64) = v50;
      *(v43 + 72) = v51;
      result = sub_25BAF4B64();
      if (*(result + 16) >= 2uLL)
      {
        v52 = *(result + 56);
        *(v43 + 80) = *(result + 48);
        *(v43 + 88) = v52;
LABEL_7:
        sub_25BCB617C();

        *(&v245[0] + 1) = sub_25BCB614C();
        v70 = sub_25BAF9B54(v43);
        swift_setDeallocating();
        sub_25BC0C4EC();
        *&v245[0] = v70;
        sub_25BAFC990();
        v71 = *(&v245[0] + 1);
        v72 = *(v2 + 72);
        v245[0] = *(v2 + 56);
        v245[1] = v72;
        v246[0] = *(v2 + 88);
        *(v246 + 10) = *(v2 + 98);
        sub_25BBA1A84(6580083, 0xE300000000000000, v247, v29, v41, v42, v70, v71, v245);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39B8, &unk_25BCC5B90);
    v53 = swift_initStackObject();
    *(v53 + 16) = xmmword_25BCBAE90;
    *(v53 + 32) = 29560;
    *(v53 + 40) = 0xE200000000000000;
    v54 = v247;
    *(v53 + 48) = v93;
    *(v53 + 56) = v54;
    *(v53 + 64) = 7567460;
    *(v53 + 72) = 0xE300000000000000;
    *(v53 + 80) = v7;
    *(v53 + 88) = v88;
    strcpy((v53 + 96), "learning_rate");
    *(v53 + 110) = -4864;
    *(v53 + 112) = v10;
    *(v53 + 120) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    v55 = MEMORY[0x277D84F90];
    *(&v245[0] + 1) = sub_25BCB614C();
    sub_25BAFA1D4(v53, v56, v57, v58, v59, v60, v61, v62, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178);
    v64 = v63;
    swift_setDeallocating();
    v65 = sub_25BC0C500();
    *&v245[0] = v64;
    sub_25BAFCBDC(v65);
    v29 = *(&v245[0] + 1);
    v247 = *&v245[0];
    *&v245[0] = v55;
    *(&v245[0] + 1) = sub_25BCB614C();
    sub_25BAFCD30();
    v41 = v55;
    v42 = *(&v245[0] + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
    v43 = swift_initStackObject();
    *(v43 + 16) = xmmword_25BCBAE50;
    sub_25BBE0B84(v2, 0, a1, &qword_27FBB5D58, type metadata accessor for StochasticGradientDescentOperation, &unk_25BCBB060, sub_25BC602DC, v66, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, v182, v183, v186, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243);
    *(v43 + 32) = v67;
    *(v43 + 40) = v68;
    result = sub_25BAF4B64();
    if (*(result + 16))
    {
      v69 = *(result + 40);
      *(v43 + 48) = *(result + 32);
      *(v43 + 56) = v69;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BBDC7F8(unint64_t a1)
{
  v2 = v1;
  v4 = *(*(v1 + 40) + 160);
  v5 = *(*(v1 + 160) + 152);
  sub_25BCB617C();
  v6 = sub_25BB2BAEC(6647407, 0xE300000000000000);
  v342 = v7;
  v350 = v6;
  LOBYTE(v431) = *(*(v1 + 40) + 160);
  HIBYTE(v437) = 1;
  v434 = 0u;
  v435 = 0u;
  memset(v436, 0, 25);
  v436[25] = 1;
  sub_25BBA1494(&v431, v6, v7, 1.0);
  v8 = OUTLINED_FUNCTION_117_3();
  v358 = sub_25BB2BAEC(v8 & 0xFFFF0000FFFFFFFFLL | 0x3100000000, 0xE500000000000000);
  v368 = v9;
  v10 = *(v1 + 116);
  OUTLINED_FUNCTION_16_31();
  sub_25BBA1494(v11, v13, v12, v10);
  v14 = OUTLINED_FUNCTION_117_3();
  v15 = sub_25BB2BAEC(v14 & 0xFFFF0000FFFFFFFFLL | 0x3200000000, 0xE500000000000000);
  v329 = v16;
  v336 = v15;
  v17 = *(v1 + 120);
  OUTLINED_FUNCTION_16_31();
  sub_25BBA1494(v18, v20, v19, v17);
  v21 = sub_25BB2BAEC(0x7361635F70657473, 0xE900000000000074);
  v23 = v22;
  v431 = v5;
  LOBYTE(v432) = v4;

  sub_25BBA2D88(v24, v21, v23, &v431, &v434);

  v25 = OUTLINED_FUNCTION_148(0xD000000000000012, "ampened_new_velocity");
  v303 = v26;
  v27 = v26;
  v28 = v2[20];
  v431 = v5;
  LOBYTE(v432) = v4;

  sub_25BBA2D88(v29, v25, v27, &v431, &v434);

  v30 = OUTLINED_FUNCTION_117_3();
  OUTLINED_FUNCTION_168(v30 & 0xFFFF0000FFFFFFFFLL | 0x5F3100000000);
  OUTLINED_FUNCTION_186_0();
  v431 = v5;
  LOBYTE(v432) = v4;
  OUTLINED_FUNCTION_18_25();
  OUTLINED_FUNCTION_167(4, v358, v368, v31, v32, v33, v34, v35, v247);
  v36 = OUTLINED_FUNCTION_56_4("one_minus_beta1_pow_t");
  v285 = v37;
  v294 = v36;
  v431 = v5;
  LOBYTE(v432) = v4;
  OUTLINED_FUNCTION_18_25();
  sub_25BBA291C(1, v350, v342, v5, v28, v38, v39, v40, v248);

  v41 = OUTLINED_FUNCTION_117_3();
  OUTLINED_FUNCTION_168(v41 & 0xFFFF0000FFFFFFFFLL | 0x5F3200000000);
  OUTLINED_FUNCTION_186_0();
  v431 = v5;
  LOBYTE(v432) = v4;
  OUTLINED_FUNCTION_18_25();
  OUTLINED_FUNCTION_167(4, v336, v329, v42, v43, v44, v45, v46, v249);

  v47 = OUTLINED_FUNCTION_56_4("one_minus_beta2_pow_t");
  v49 = v48;
  v431 = v5;
  LOBYTE(v432) = v4;
  OUTLINED_FUNCTION_18_25();
  OUTLINED_FUNCTION_11_21();
  sub_25BBA291C(v50, v51, v52, v53, v28, v47, v49, v54, v250);

  OUTLINED_FUNCTION_87_3();
  v57 = OUTLINED_FUNCTION_148(v55 + 5, v56);
  v59 = v58;
  v431 = v5;
  LOBYTE(v432) = v4;
  v60 = v47;
  v61 = a1;
  sub_25BBA2B64(21, v60, v49, v57, v59, &v431, &v434);

  OUTLINED_FUNCTION_87_3();
  OUTLINED_FUNCTION_148(v62 - 2, v63);
  OUTLINED_FUNCTION_124_1();
  v431 = v5;
  LOBYTE(v432) = v4;
  OUTLINED_FUNCTION_18_25();
  OUTLINED_FUNCTION_158(3, v57, v59, v294, v285, v64, v65, v66, v251);

  sub_25BB2BAEC(0x7A69735F70657473, 0xE900000000000065);
  v431 = v5;
  LOBYTE(v432) = v4;
  OUTLINED_FUNCTION_191();
  v312 = v67;
  v343 = v68;
  sub_25BBA291C(v69, v70, v71, v72, a1, v67, v68, v73, &v434);

  v74 = OUTLINED_FUNCTION_209("beta1_mul_momentum", v252, v268, v5, v285, v294, v303, v312, 0xD000000000000012);
  v76 = v75;

  v78 = sub_25BBA0B64(v77);
  v80 = v79;

  OUTLINED_FUNCTION_45_9();
  v81 = v358;
  v82 = v368;
  v359 = v76;
  sub_25BBA291C(2, v81, v368, v78, v80, v74, v76, &v431, &v434);

  v83 = OUTLINED_FUNCTION_117_3();
  v84 = sub_25BB2BAEC(v83 | 0x766E493100000000, 0xE800000000000000);
  v86 = v85;
  OUTLINED_FUNCTION_16_31();
  sub_25BBA1494(v87, v84, v86, v88);
  OUTLINED_FUNCTION_56_4("beta1Inv_mul_gradient");
  OUTLINED_FUNCTION_186_0();

  v90 = sub_25BBA0B64(v89);
  v92 = v91;

  OUTLINED_FUNCTION_45_9();
  OUTLINED_FUNCTION_18_25();
  sub_25BBA291C(2, v84, v86, v90, v92, v80, v368, v93, v253);

  OUTLINED_FUNCTION_2_47();
  v94 = OUTLINED_FUNCTION_89_3();
  sub_25BBE0B84(v94, v95, v96, v97, v98, v99, v100, v101, v254, v269, v277, v286, v295, v304, v313, v321, v329, v336, v343, v74, v359, v368, v375, v382, v389, v396, v403, v410, v417, v424, v431, v432, *v433, *&v433[8], *&v433[16], *&v433[24], *&v433[32], *&v433[40], *&v433[48], *&v433[56], *&v433[64], *&v433[72], *&v433[80], *&v433[88], v434, *(&v434 + 1), v435, *(&v435 + 1), *v436, *&v436[8], *&v436[16], *&v436[24], v437, v438, v439, v440, v441, v442, v443, v444);
  v103 = v102;
  v105 = v104;
  result = sub_25BACE690();
  if (*(result + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  v107 = *(result + 48);
  v108 = *(result + 56);
  sub_25BCB617C();

  v431 = v107;
  LOBYTE(v432) = v108;
  OUTLINED_FUNCTION_18_25();
  sub_25BBA291C(0, v351, v360, v80, v82, v103, v105, v109, v255);

  v361 = OUTLINED_FUNCTION_209("beta2_mul_velocity", v256, v270, v278, v287, v296, v305, v314, v322);
  v369 = v61;
  v111 = v110;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39B8, &unk_25BCC5B90);
  inited = swift_initStackObject();
  v113 = OUTLINED_FUNCTION_17_19(inited, xmmword_25BCBAE70);
  v113[3].n128_u64[0] = v337;
  v113[3].n128_u64[1] = v330;
  OUTLINED_FUNCTION_120_2(v113);

  v115 = sub_25BBA0B64(v114);
  v117 = v116;

  inited[5].n128_u64[0] = v115;
  inited[5].n128_u64[1] = v117;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v118 = MEMORY[0x277D84F90];
  v119 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_138();
  v432 = sub_25BCB614C();
  sub_25BAFA1D4(inited, v120, v121, v122, v123, v124, v125, v126, v257, v271, v279, v288, v297, v306, v315, v323, v330, v337, v344, v351, v361, v369, v376, v383, v390, v397, v404, v411, v418, v425);
  v128 = v127;
  swift_setDeallocating();
  v129 = sub_25BC0C500();
  v431 = v128;
  sub_25BAFCBDC(v129);
  v352 = v431;
  OUTLINED_FUNCTION_138();
  v130 = sub_25BCB614C();
  v431 = v118;
  v432 = v130;
  sub_25BAFCD30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  v131 = swift_initStackObject();
  *(v131 + 16) = xmmword_25BCBAE50;
  *(v131 + 32) = v362;
  *(v131 + 40) = v111;
  sub_25BCB617C();

  sub_25BAC9400(v132, v131 + 48);
  OUTLINED_FUNCTION_138();
  v432 = sub_25BCB614C();
  sub_25BAF9B54(v131);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  sub_25BC0C4EC();
  v431 = v119;
  sub_25BAFC990();
  v133 = v432;
  OUTLINED_FUNCTION_143();
  sub_25BBA1A84(v134, v135, v136, v137, v138, v139, v140, v133, &v434);

  v141 = OUTLINED_FUNCTION_117_3();
  sub_25BB2BAEC(v141 | 0x766E493200000000, 0xE800000000000000);
  OUTLINED_FUNCTION_16_31();
  OUTLINED_FUNCTION_111_3();
  sub_25BBA1494(v142, v143, v144, v145);
  OUTLINED_FUNCTION_87_3();
  v148 = OUTLINED_FUNCTION_148(v146 - 5, v147);
  v150 = v149;
  v151 = v2[6];

  sub_25BBA0B64(v152);
  v154 = v153;

  OUTLINED_FUNCTION_45_9();
  OUTLINED_FUNCTION_176();
  sub_25BBA2B64(v155, v156, v157, v158, v150, v159, v160);

  OUTLINED_FUNCTION_87_3();
  OUTLINED_FUNCTION_148(v161 + 8, v162);
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_45_9();
  OUTLINED_FUNCTION_18_25();
  OUTLINED_FUNCTION_111_3();
  OUTLINED_FUNCTION_158(v163, v164, v165, v148, v150, v166, v167, v168, v258);

  OUTLINED_FUNCTION_2_47();
  v169 = OUTLINED_FUNCTION_141();
  sub_25BBE0B84(v169, v170, v171, v172, v173, v174, v175, v176, v259, v272, v280, v289, v298, v307, v316, v324, v331, v111, v345, v352, v362, v370, v377, v384, v391, v398, v405, v412, v419, v426, v431, v432, *v433, *&v433[8], *&v433[16], *&v433[24], *&v433[32], *&v433[40], *&v433[48], *&v433[56], *&v433[64], *&v433[72], *&v433[80], *&v433[88], v434, *(&v434 + 1), v435, *(&v435 + 1), *v436, *&v436[8], *&v436[16], *&v436[24], v437, v438, v439, v440, v441, v442, v443, v444);
  OUTLINED_FUNCTION_192();
  result = sub_25BACE690();
  if (*(result + 16) < 3uLL)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v177 = *(result + 64);
  v178 = *(result + 72);
  sub_25BCB617C();

  v431 = v177;
  LOBYTE(v432) = v178;
  OUTLINED_FUNCTION_18_25();
  sub_25BBA291C(0, v363, v338, v154, v151, v150, v148, v179, v260);
  v180 = v371;

  OUTLINED_FUNCTION_2_47();
  v181 = OUTLINED_FUNCTION_141();
  sub_25BBE0B84(v181, v182, v183, v184, v185, v186, v187, v188, v261, v273, v281, v290, v299, v308, v317, v325, v332, v338, v346, v353, v363, v371, v378, v385, v392, v399, v406, v413, v420, v427, v431, v432, *v433, *&v433[8], *&v433[16], *&v433[24], *&v433[32], *&v433[40], *&v433[48], *&v433[56], *&v433[64], *&v433[72], *&v433[80], *&v433[88], v434, *(&v434 + 1), v435, *(&v435 + 1), *v436, *&v436[8], *&v436[16], *&v436[24], v437, v438, v439, v440, v441, v442, v443, v444);
  OUTLINED_FUNCTION_192();
  if (!v2[19])
  {
    goto LABEL_6;
  }

  sub_25BBA0B64(v189);
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_2_47();
  sub_25BBE0B84(v2, 3, v180, v190, v191, &unk_25BCBB060, sub_25BACE864, v192, v262, v274, v282, v291, v300, v309, v318, v326, v333, v339, v347, v354, v364, v372, v379, v386, v393, v400, v407, v414, v421, v428, v431, v432, *v433, *&v433[8], *&v433[16], *&v433[24], *&v433[32], *&v433[40], *&v433[48], *&v433[56], *&v433[64], *&v433[72], *&v433[80], *&v433[88], v434, *(&v434 + 1), v435, *(&v435 + 1), *v436, *&v436[8], *&v436[16], *&v436[24], v437, v438, v439, v440, v441, v442, v443, v444);
  v365 = v193;
  v195 = v194;
  result = sub_25BACE690();
  if (*(result + 16) >= 4uLL)
  {
    v196 = *(result + 80);
    v355 = v154;
    v197 = *(result + 88);
    sub_25BCB617C();

    v431 = v196;
    LOBYTE(v432) = v197;
    OUTLINED_FUNCTION_18_25();
    sub_25BBA291C(5, v150, v148, v355, v151, v365, v195, v198, v263);

    OUTLINED_FUNCTION_2_47();
    sub_25BBE0B84(v2, 3, v180, v199, v200, &unk_25BCBB060, sub_25BACE864, v201, v264, v275, v283, v292, v301, v310, v319, v327, v334, v340, v348, v355, v365, v373, v380, v387, v394, v401, v408, v415, v422, v429, v431, v432, *v433, *&v433[8], *&v433[16], *&v433[24], *&v433[32], *&v433[40], *&v433[48], *&v433[56], *&v433[64], *&v433[72], *&v433[80], *&v433[88], v434, *(&v434 + 1), v435, *(&v435 + 1), *v436, *&v436[8], *&v436[16], *&v436[24], v437, v438, v439, v440, v441, v442, v443, v444);
    OUTLINED_FUNCTION_192();

LABEL_6:
    v202 = OUTLINED_FUNCTION_148(0xD000000000000014, "beta2Inv_mul_squared_gradient");
    v204 = v203;
    OUTLINED_FUNCTION_45_9();
    sub_25BBA2B64(21, v150, v148, v202, v204, &v431, &v434);

    v205 = sub_25BB2BAEC(0x6E6F6C69737065, 0xE700000000000000);
    v207 = v206;
    OUTLINED_FUNCTION_16_31();
    sub_25BBA1494(v208, v205, v207, v209);
    v366 = OUTLINED_FUNCTION_148(0xD00000000000001DLL, "sqrt_update_velocity");
    v211 = v210;
    OUTLINED_FUNCTION_45_9();
    OUTLINED_FUNCTION_18_25();
    sub_25BBA291C(0, v202, v204, v205, v207, v366, v211, v212, v262);

    OUTLINED_FUNCTION_148(0xD000000000000016, "sqrt_update_velocity_plus_eps");
    OUTLINED_FUNCTION_124_1();
    OUTLINED_FUNCTION_2_47();
    v356 = v213;
    v214 = OUTLINED_FUNCTION_89_3();
    sub_25BBE0B84(v214, v215, v216, v217, v218, v219, v220, v221, v265, v274, v282, v291, v300, v309, v318, v326, sub_25BACE864, &unk_25BCBB060, v347, v356, v366, v372, v379, v386, v393, v400, v407, v414, v421, v428, v431, v432, *v433, *&v433[8], *&v433[16], *&v433[24], *&v433[32], *&v433[40], *&v433[48], *&v433[56], *&v433[64], *&v433[72], *&v433[80], *&v433[88], v434, *(&v434 + 1), v435, *(&v435 + 1), *v436, *&v436[8], *&v436[16], *&v436[24], v437, v438, v439, v440, v441, v442, v443, v444);
    v223 = v222;
    v225 = v224;
    OUTLINED_FUNCTION_45_9();
    OUTLINED_FUNCTION_158(2, v320, v349, v223, v225, v226, v227, &v431, &v434);

    v228 = OUTLINED_FUNCTION_56_4("parameter_update_step");
    v230 = v229;
    OUTLINED_FUNCTION_45_9();
    OUTLINED_FUNCTION_152();
    sub_25BBA291C(v231, v232, v233, v367, v211, v228, v230, v234, &v434);

    sub_25BBA0B64(v235);
    OUTLINED_FUNCTION_186_0();

    v236 = OUTLINED_FUNCTION_35_13();
    sub_25BBE0B84(v236, v237, v238, qword_28154FD70, v357, v341, v335, v239, v266, v276, v284, v293, v302, v311, v320, v328, v335, v341, v349, v357, v367, v374, v381, v388, v395, v402, v409, v416, v423, v430, v431, v432, *v433, *&v433[8], *&v433[16], *&v433[24], *&v433[32], *&v433[40], *&v433[48], *&v433[56], *&v433[64], *&v433[72], *&v433[80], *&v433[88], v434, *(&v434 + 1), v435, *(&v435 + 1), *v436, *&v436[8], *&v436[16], *&v436[24], v437, v438, v439, v440, v441, v442, v443, v444);
    v241 = v240;
    v243 = v242;
    result = sub_25BACE690();
    if (*(result + 16))
    {
      v244 = *(result + 32);
      v245 = *(result + 40);
      sub_25BCB617C();

      v431 = v244;
      LOBYTE(v432) = v245;
      OUTLINED_FUNCTION_18_25();
      sub_25BBA291C(1, v202, v211, v228, v230, v241, v243, v246, v267);
    }

    goto LABEL_10;
  }

LABEL_11:
  __break(1u);
  return result;
}