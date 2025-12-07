void sub_25BB57514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a7;
  v9 = a4;
  v36 = a1;
  v37 = a3;
  v40 = a2;
  v10 = sub_25BCB50DC();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_25BCB54EC();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v14 + 16);
  v33 = v19;
  v34 = a5;
  v32 = v18;
  (v18)(v17, a5, v15);
  v35 = v9;
  sub_25BCB6D8C();
  v39 = v12;
  sub_25BB565B8(v12);
  v20 = *(a6 + 88);
  v23 = *(v20 + 16);
  v22 = (v20 + 16);
  v21 = v23;
  if (v23)
  {
    v41 = MEMORY[0x277D84F90];
    sub_25BB00B14(0, v21, 0);
    v24 = *v22;
    v25 = v41;
    while (v24)
    {
      v26 = v24 - 1;
      if (v24 - 1 >= *v22)
      {
        goto LABEL_12;
      }

      v27 = *&v22[2 * v24];
      v41 = v25;
      v29 = *(v25 + 16);
      v28 = *(v25 + 24);
      if (v29 >= v28 >> 1)
      {
        v31 = v27;
        sub_25BB00B14(v28 > 1, v29 + 1, 1);
        v27 = v31;
        v25 = v41;
      }

      *(v25 + 16) = v29 + 1;
      *(v25 + 16 * v29 + 32) = v27;
      v24 = v26;
      if (!--v21)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_8:
    sub_25BCB514C();
    sub_25BCB6E0C();
    sub_25BCB6D6C();
    if (sub_25BCB513C())
    {
      v32(v17, v34, v33);
      sub_25BCB6D8C();
      sub_25BCB50BC();
    }

    else
    {
      sub_25BB0E2EC();
      swift_allocError();
      *v30 = xmmword_25BCC0510;
      *(v30 + 16) = 0x8000;
      swift_willThrow();
    }
  }
}

uint64_t sub_25BB57818(uint64_t a1)
{
  result = sub_25BB57B30(&qword_27FBB4510, type metadata accessor for PadGradientOperation, &unk_25BCC1A44);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB57870(uint64_t a1)
{
  result = sub_25BB57B30(&qword_27FBB4518, type metadata accessor for PadOperation, &unk_25BCC1A44);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB578C8(uint64_t a1)
{
  result = sub_25BB57B30(&qword_27FBB4520, type metadata accessor for MatrixMultiplicationOperation, &unk_25BCC6160);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB57920(uint64_t a1)
{
  result = sub_25BB57B30(&qword_27FBB44E0, type metadata accessor for ConvolutionTranspose2DGradientOperation, aY);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB57978(uint64_t a1)
{
  result = sub_25BB57B30(&qword_27FBB44E8, type metadata accessor for ConvolutionTranspose2DOperation, aY);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB579D0(uint64_t a1)
{
  result = sub_25BB57B30(qword_28154C7D0, type metadata accessor for Convolution2DGradientOperation, aY);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB57A28(uint64_t a1)
{
  result = sub_25BB57B30(qword_28154DC68, type metadata accessor for Convolution2DOperation, aY);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB57A80(uint64_t a1)
{
  result = sub_25BB57B30(&qword_28154D770, type metadata accessor for LinearGradientOperation, &unk_25BCC6048);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB57AD8(uint64_t a1)
{
  result = sub_25BB57B30(&qword_28154F570, type metadata accessor for LinearOperation, &unk_25BCC60D4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB57B30(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25BB57B78@<X0>(uint64_t a1@<X0>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t a9)
{
  swift_getObjectType();
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a1;
  return sub_25BC675C0(sub_25BB57DE4, v17, MEMORY[0x277D84F78] + 8, x8_0);
}

uint64_t sub_25BB57C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a5)(uint64_t, uint64_t, _BYTE *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t x8_0@<X8>)
{
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a1;
  if (a2)
  {
    ObjectType = swift_getObjectType();
    MEMORY[0x28223BE20](ObjectType);
    v14[2] = sub_25BB0ED60;
    v14[3] = v15;
    swift_unknownObjectRetain();
    sub_25BC675C0(sub_25BB45678, v14, MEMORY[0x277D84F78] + 8, x8_0);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_25BB45648(v16);
    memcpy(v17, v16, 0xB1uLL);
    return a5(a7, a1, v17);
  }
}

uint64_t OUTLINED_FUNCTION_51_5()
{
  result = *(v2 - 288);
  *(v2 - 368) = v0;
  *(v2 - 376) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_99_2(uint64_t result, uint64_t a2)
{
  *(v2 - 296) = result;
  *(v2 - 304) = a2;
  return result;
}

void sub_25BB581C4()
{
  OUTLINED_FUNCTION_31_7();
  if (v4 == 2)
  {
    if (v3)
    {
      v5 = (v2 - v3) / 4;
      goto LABEL_8;
    }
  }

  else
  {
    if (*(v1 + 16) >> 61)
    {
      __break(1u);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_42_5();
    sub_25BAC5FB4(v6, v7, v8, v9, v10, v11, 3);
    if (!v0)
    {
      return;
    }

    __break(1u);
  }

  v5 = 0;
LABEL_8:
  v12 = *(v1 + 16);
  if (!v12)
  {
    return;
  }

  if (v5 < v12)
  {
LABEL_15:
    __break(1u);
    return;
  }

  memcpy(v3, (v1 + 32), 4 * v12);
}

short float sub_25BB58280@<H0>(unsigned __int8 *a1@<X0>, short float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

float sub_25BB58290@<S0>(unsigned __int8 *a1@<X0>, _WORD *a2@<X8>)
{
  result = *a1;
  *a2 = HIWORD(result);
  return result;
}

float sub_25BB582A8@<S0>(unsigned __int8 *a1@<X0>, float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

double sub_25BB582B8@<D0>(unsigned __int8 *a1@<X0>, double *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

short float sub_25BB582C8@<H0>(char *a1@<X0>, short float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

float sub_25BB582D8@<S0>(char *a1@<X0>, _WORD *a2@<X8>)
{
  result = *a1;
  *a2 = HIWORD(result);
  return result;
}

float sub_25BB582F0@<S0>(char *a1@<X0>, float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

double sub_25BB58300@<D0>(char *a1@<X0>, double *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

short float sub_25BB58310@<H0>(__int16 *a1@<X0>, short float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

float sub_25BB58320@<S0>(__int16 *a1@<X0>, _WORD *a2@<X8>)
{
  result = *a1;
  *a2 = HIWORD(result);
  return result;
}

float sub_25BB58338@<S0>(__int16 *a1@<X0>, float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

double sub_25BB58348@<D0>(__int16 *a1@<X0>, double *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

short float sub_25BB58358@<H0>(int *a1@<X0>, short float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

float sub_25BB58368@<S0>(int *a1@<X0>, _WORD *a2@<X8>)
{
  result = *a1;
  *a2 = HIWORD(result);
  return result;
}

float sub_25BB58380@<S0>(int *a1@<X0>, float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

double sub_25BB58390@<D0>(int *a1@<X0>, double *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

short float sub_25BB583A0@<H0>(uint64_t *a1@<X0>, short float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

float sub_25BB583B0@<S0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  result = *a1;
  *a2 = HIWORD(result);
  return result;
}

double sub_25BB583C8@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

short float sub_25BB583D8@<H0>(unsigned __int8 *a1@<X0>, short float *a2@<X8>, __n128 a3@<Q0>)
{
  a3.n128_u8[0] = *a1;
  result = a3.n128_u16[0];
  *a2 = result;
  return result;
}

float sub_25BB583E8@<S0>(_BYTE *a1@<X0>, _WORD *a2@<X8>, unsigned int a3@<S0>)
{
  LOBYTE(a3) = *a1;
  result = a3;
  *a2 = HIWORD(result);
  return result;
}

float sub_25BB58400@<S0>(_BYTE *a1@<X0>, float *a2@<X8>, unsigned int a3@<S0>)
{
  LOBYTE(a3) = *a1;
  result = a3;
  *a2 = result;
  return result;
}

double sub_25BB58410@<D0>(_BYTE *a1@<X0>, double *a2@<X8>, unint64_t a3@<D0>)
{
  LOBYTE(a3) = *a1;
  result = a3;
  *a2 = result;
  return result;
}

short float sub_25BB58420@<H0>(unsigned __int16 *a1@<X0>, short float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

float sub_25BB58430@<S0>(_WORD *a1@<X0>, _WORD *a2@<X8>, unsigned int a3@<S0>)
{
  LOWORD(a3) = *a1;
  result = a3;
  *a2 = HIWORD(result);
  return result;
}

float sub_25BB58448@<S0>(_WORD *a1@<X0>, float *a2@<X8>, unsigned int a3@<S0>)
{
  LOWORD(a3) = *a1;
  result = a3;
  *a2 = result;
  return result;
}

double sub_25BB58458@<D0>(_WORD *a1@<X0>, double *a2@<X8>, unint64_t a3@<D0>)
{
  LOWORD(a3) = *a1;
  result = a3;
  *a2 = result;
  return result;
}

short float sub_25BB58468@<H0>(unsigned int *a1@<X0>, short float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

float sub_25BB58478@<S0>(unsigned int *a1@<X0>, _WORD *a2@<X8>)
{
  result = *a1;
  *a2 = HIWORD(result);
  return result;
}

float sub_25BB58490@<S0>(unsigned int *a1@<X0>, float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

double sub_25BB584A0@<D0>(_DWORD *a1@<X0>, double *a2@<X8>, unint64_t a3@<D0>)
{
  LODWORD(a3) = *a1;
  result = a3;
  *a2 = result;
  return result;
}

short float sub_25BB584B0@<H0>(unint64_t *a1@<X0>, short float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

float sub_25BB584C0@<S0>(unint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  result = *a1;
  *a2 = HIWORD(result);
  return result;
}

float sub_25BB584D8@<S0>(unint64_t *a1@<X0>, float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

double sub_25BB584E8@<D0>(unint64_t *a1@<X0>, double *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

uint64_t sub_25BB5850C@<X0>(short float *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v15 = *a1;
  (*(v7 + 16))(v10, a2, v6, v8);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = roundl(v11);
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D84670])
  {
    v13 = rintl(v11);
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D84680])
  {
    goto LABEL_6;
  }

  if (result == *MEMORY[0x277D84688])
  {
    goto LABEL_8;
  }

  if (result == *MEMORY[0x277D84660])
  {
    v13 = truncl(v11);
  }

  else
  {
    if (result == *MEMORY[0x277D84668])
    {
      result = sub_25BCB7BAC();
      if ((result & 1) == 0)
      {
LABEL_6:
        v13 = ceill(v11);
        goto LABEL_15;
      }

LABEL_8:
      v13 = floorl(v11);
      goto LABEL_15;
    }

    sub_25BCB7B7C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v15;
  }

LABEL_15:
  if ((LOWORD(v13) & 0x7FFFu) > 0x7BFF)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v13 <= COERCE_SHORT_FLOAT(-10232))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v13 < COERCE_SHORT_FLOAT(22528))
  {
    *a3 = v13;
    return result;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_25BB58730@<X0>(short float *a1@<X0>, uint64_t a2@<X1>, _WORD *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v15 = *a1;
  (*(v7 + 16))(v10, a2, v6, v8);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = roundl(v11);
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D84670])
  {
    v13 = rintl(v11);
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D84680])
  {
    goto LABEL_6;
  }

  if (result == *MEMORY[0x277D84688])
  {
    goto LABEL_8;
  }

  if (result == *MEMORY[0x277D84660])
  {
    v13 = truncl(v11);
  }

  else
  {
    if (result == *MEMORY[0x277D84668])
    {
      result = sub_25BCB7BAC();
      if ((result & 1) == 0)
      {
LABEL_6:
        v13 = ceill(v11);
        goto LABEL_15;
      }

LABEL_8:
      v13 = floorl(v11);
      goto LABEL_15;
    }

    sub_25BCB7B7C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v15;
  }

LABEL_15:
  if ((LOWORD(v13) & 0x7FFFu) > 0x7BFF)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v13 <= COERCE_SHORT_FLOAT(-2047))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v13 < COERCE_SHORT_FLOAT(30720))
  {
    *a3 = v13;
    return result;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_25BB58954@<X0>(short float *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v15 = *a1;
  (*(v7 + 16))(v10, a2, v6, v8);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = roundl(v11);
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D84670])
  {
    v13 = rintl(v11);
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D84680])
  {
    goto LABEL_6;
  }

  if (result == *MEMORY[0x277D84688])
  {
    goto LABEL_8;
  }

  if (result == *MEMORY[0x277D84660])
  {
    v13 = truncl(v11);
  }

  else
  {
    if (result == *MEMORY[0x277D84668])
    {
      result = sub_25BCB7BAC();
      if ((result & 1) == 0)
      {
LABEL_6:
        v13 = ceill(v11);
        goto LABEL_15;
      }

LABEL_8:
      v13 = floorl(v11);
      goto LABEL_15;
    }

    sub_25BCB7B7C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v15;
  }

LABEL_15:
  if ((LOWORD(v13) & 0x7FFFu) > 0x7BFF)
  {
    __break(1u);
  }

  else
  {
    *a3 = v13;
  }

  return result;
}

uint64_t sub_25BB58B50@<X0>(short float *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v15 = *a1;
  (*(v7 + 16))(v10, a2, v6, v8);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = roundl(v11);
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D84670])
  {
    v13 = rintl(v11);
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D84680])
  {
    goto LABEL_6;
  }

  if (result == *MEMORY[0x277D84688])
  {
    goto LABEL_8;
  }

  if (result == *MEMORY[0x277D84660])
  {
    v13 = truncl(v11);
  }

  else
  {
    if (result == *MEMORY[0x277D84668])
    {
      result = sub_25BCB7BAC();
      if ((result & 1) == 0)
      {
LABEL_6:
        v13 = ceill(v11);
        goto LABEL_15;
      }

LABEL_8:
      v13 = floorl(v11);
      goto LABEL_15;
    }

    sub_25BCB7B7C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v15;
  }

LABEL_15:
  if ((LOWORD(v13) & 0x7FFFu) > 0x7BFF)
  {
    __break(1u);
  }

  else
  {
    *a3 = v13;
  }

  return result;
}

uint64_t sub_25BB58D4C@<X0>(short float *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v15 = *a1;
  (*(v7 + 16))(v10, a2, v6, v8);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = roundl(v11);
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D84670])
  {
    v13 = rintl(v11);
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D84680])
  {
    goto LABEL_6;
  }

  if (result == *MEMORY[0x277D84688])
  {
    goto LABEL_8;
  }

  if (result == *MEMORY[0x277D84660])
  {
    v13 = truncl(v11);
  }

  else
  {
    if (result == *MEMORY[0x277D84668])
    {
      result = sub_25BCB7BAC();
      if ((result & 1) == 0)
      {
LABEL_6:
        v13 = ceill(v11);
        goto LABEL_15;
      }

LABEL_8:
      v13 = floorl(v11);
      goto LABEL_15;
    }

    sub_25BCB7B7C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v15;
  }

LABEL_15:
  if ((LOWORD(v13) & 0x7FFFu) > 0x7BFF)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v13 <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v13 < COERCE_SHORT_FLOAT(23552))
  {
    *a3 = v13;
    return result;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_25BB58F6C@<X0>(short float *a1@<X0>, uint64_t a2@<X1>, _WORD *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v15 = *a1;
  (*(v7 + 16))(v10, a2, v6, v8);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = roundl(v11);
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D84670])
  {
    v13 = rintl(v11);
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D84680])
  {
    goto LABEL_6;
  }

  if (result == *MEMORY[0x277D84688])
  {
    goto LABEL_8;
  }

  if (result == *MEMORY[0x277D84660])
  {
    v13 = truncl(v11);
  }

  else
  {
    if (result == *MEMORY[0x277D84668])
    {
      result = sub_25BCB7BAC();
      if ((result & 1) == 0)
      {
LABEL_6:
        v13 = ceill(v11);
        goto LABEL_15;
      }

LABEL_8:
      v13 = floorl(v11);
      goto LABEL_15;
    }

    sub_25BCB7B7C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v15;
  }

LABEL_15:
  if ((LOWORD(v13) & 0x7FFFu) > 0x7BFF)
  {
    __break(1u);
  }

  else if (v13 > COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)))
  {
    *a3 = v13;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB59178@<X0>(short float *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v15 = *a1;
  (*(v7 + 16))(v10, a2, v6, v8);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = roundl(v11);
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D84670])
  {
    v13 = rintl(v11);
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D84680])
  {
    goto LABEL_6;
  }

  if (result == *MEMORY[0x277D84688])
  {
    goto LABEL_8;
  }

  if (result == *MEMORY[0x277D84660])
  {
    v13 = truncl(v11);
  }

  else
  {
    if (result == *MEMORY[0x277D84668])
    {
      result = sub_25BCB7BAC();
      if ((result & 1) == 0)
      {
LABEL_6:
        v13 = ceill(v11);
        goto LABEL_15;
      }

LABEL_8:
      v13 = floorl(v11);
      goto LABEL_15;
    }

    sub_25BCB7B7C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v15;
  }

LABEL_15:
  if ((LOWORD(v13) & 0x7FFFu) > 0x7BFF)
  {
    __break(1u);
  }

  else if (v13 > COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)))
  {
    *a3 = v13;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB59384@<X0>(short float *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v15 = *a1;
  (*(v7 + 16))(v10, a2, v6, v8);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = roundl(v11);
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D84670])
  {
    v13 = rintl(v11);
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D84680])
  {
    goto LABEL_6;
  }

  if (result == *MEMORY[0x277D84688])
  {
    goto LABEL_8;
  }

  if (result == *MEMORY[0x277D84660])
  {
    v13 = truncl(v11);
  }

  else
  {
    if (result == *MEMORY[0x277D84668])
    {
      result = sub_25BCB7BAC();
      if ((result & 1) == 0)
      {
LABEL_6:
        v13 = ceill(v11);
        goto LABEL_15;
      }

LABEL_8:
      v13 = floorl(v11);
      goto LABEL_15;
    }

    sub_25BCB7B7C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v15;
  }

LABEL_15:
  if ((LOWORD(v13) & 0x7FFFu) > 0x7BFF)
  {
    __break(1u);
  }

  else if (v13 > COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)))
  {
    *a3 = v13;
    return result;
  }

  __break(1u);
  return result;
}

float sub_25BB59590@<S0>(__int16 *a1@<X0>, float *a2@<X8>)
{
  _H0 = *a1;
  __asm { FCVT            S0, H0 }

  *a2 = result;
  return result;
}

double sub_25BB595A0@<D0>(__int16 *a1@<X0>, double *a2@<X8>)
{
  _H0 = *a1;
  __asm { FCVT            D0, H0 }

  *a2 = result;
  return result;
}

uint64_t sub_25BB595C4@<X0>(float *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v16 = *a1;
  (*(v7 + 16))(v10, a2, v6, v8);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = roundf(v11);
  }

  else if (result == *MEMORY[0x277D84670])
  {
    v13 = rintf(v11);
  }

  else if (result == *MEMORY[0x277D84680])
  {
    v13 = ceilf(v11);
  }

  else if (result == *MEMORY[0x277D84688])
  {
    v13 = floorf(v11);
  }

  else if (result == *MEMORY[0x277D84660])
  {
    v13 = truncf(v11);
  }

  else if (result == *MEMORY[0x277D84668])
  {
    result = sub_25BCB69BC();
    v13 = floorf(v11);
    v14 = ceilf(v11);
    if ((result & 1) == 0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_25BCB698C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v16;
  }

  if ((LODWORD(v13) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 <= -129.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 < 128.0)
  {
    *a3 = v13;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_25BB597F0@<X0>(float *a1@<X0>, uint64_t a2@<X1>, _WORD *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v16 = *a1;
  (*(v7 + 16))(v10, a2, v6, v8);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = roundf(v11);
  }

  else if (result == *MEMORY[0x277D84670])
  {
    v13 = rintf(v11);
  }

  else if (result == *MEMORY[0x277D84680])
  {
    v13 = ceilf(v11);
  }

  else if (result == *MEMORY[0x277D84688])
  {
    v13 = floorf(v11);
  }

  else if (result == *MEMORY[0x277D84660])
  {
    v13 = truncf(v11);
  }

  else if (result == *MEMORY[0x277D84668])
  {
    result = sub_25BCB69BC();
    v13 = floorf(v11);
    v14 = ceilf(v11);
    if ((result & 1) == 0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_25BCB698C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v16;
  }

  if ((LODWORD(v13) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 <= -32769.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 < 32768.0)
  {
    *a3 = v13;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_25BB59A1C@<X0>(float *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v16 = *a1;
  (*(v7 + 16))(v10, a2, v6, v8);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = roundf(v11);
  }

  else if (result == *MEMORY[0x277D84670])
  {
    v13 = rintf(v11);
  }

  else if (result == *MEMORY[0x277D84680])
  {
    v13 = ceilf(v11);
  }

  else if (result == *MEMORY[0x277D84688])
  {
    v13 = floorf(v11);
  }

  else if (result == *MEMORY[0x277D84660])
  {
    v13 = truncf(v11);
  }

  else if (result == *MEMORY[0x277D84668])
  {
    result = sub_25BCB69BC();
    v13 = floorf(v11);
    v14 = ceilf(v11);
    if ((result & 1) == 0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_25BCB698C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v16;
  }

  if ((LODWORD(v13) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 <= -2147500000.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 < 2147500000.0)
  {
    *a3 = v13;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_25BB59C48@<X0>(float *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v16 = *a1;
  (*(v7 + 16))(v10, a2, v6, v8);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = roundf(v11);
  }

  else if (result == *MEMORY[0x277D84670])
  {
    v13 = rintf(v11);
  }

  else if (result == *MEMORY[0x277D84680])
  {
    v13 = ceilf(v11);
  }

  else if (result == *MEMORY[0x277D84688])
  {
    v13 = floorf(v11);
  }

  else if (result == *MEMORY[0x277D84660])
  {
    v13 = truncf(v11);
  }

  else if (result == *MEMORY[0x277D84668])
  {
    result = sub_25BCB69BC();
    v13 = floorf(v11);
    v14 = ceilf(v11);
    if ((result & 1) == 0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_25BCB698C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v16;
  }

  if ((LODWORD(v13) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 <= -1.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 < 256.0)
  {
    *a3 = v13;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_25BB59E74@<X0>(float *a1@<X0>, uint64_t a2@<X1>, _WORD *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v16 = *a1;
  (*(v7 + 16))(v10, a2, v6, v8);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = roundf(v11);
  }

  else if (result == *MEMORY[0x277D84670])
  {
    v13 = rintf(v11);
  }

  else if (result == *MEMORY[0x277D84680])
  {
    v13 = ceilf(v11);
  }

  else if (result == *MEMORY[0x277D84688])
  {
    v13 = floorf(v11);
  }

  else if (result == *MEMORY[0x277D84660])
  {
    v13 = truncf(v11);
  }

  else if (result == *MEMORY[0x277D84668])
  {
    result = sub_25BCB69BC();
    v13 = floorf(v11);
    v14 = ceilf(v11);
    if ((result & 1) == 0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_25BCB698C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v16;
  }

  if ((LODWORD(v13) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 <= -1.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 < 65536.0)
  {
    *a3 = v13;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_25BB5A0A0@<X0>(float *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v16 = *a1;
  (*(v7 + 16))(v10, a2, v6, v8);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = roundf(v11);
  }

  else if (result == *MEMORY[0x277D84670])
  {
    v13 = rintf(v11);
  }

  else if (result == *MEMORY[0x277D84680])
  {
    v13 = ceilf(v11);
  }

  else if (result == *MEMORY[0x277D84688])
  {
    v13 = floorf(v11);
  }

  else if (result == *MEMORY[0x277D84660])
  {
    v13 = truncf(v11);
  }

  else if (result == *MEMORY[0x277D84668])
  {
    result = sub_25BCB69BC();
    v13 = floorf(v11);
    v14 = ceilf(v11);
    if ((result & 1) == 0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_25BCB698C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v16;
  }

  if ((LODWORD(v13) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 <= -1.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 < 4295000000.0)
  {
    *a3 = v13;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_25BB5A2CC@<X0>(float *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v16 = *a1;
  (*(v7 + 16))(v10, a2, v6, v8);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = roundf(v11);
  }

  else if (result == *MEMORY[0x277D84670])
  {
    v13 = rintf(v11);
  }

  else if (result == *MEMORY[0x277D84680])
  {
    v13 = ceilf(v11);
  }

  else if (result == *MEMORY[0x277D84688])
  {
    v13 = floorf(v11);
  }

  else if (result == *MEMORY[0x277D84660])
  {
    v13 = truncf(v11);
  }

  else if (result == *MEMORY[0x277D84668])
  {
    result = sub_25BCB69BC();
    v13 = floorf(v11);
    v14 = ceilf(v11);
    if ((result & 1) == 0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_25BCB698C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v16;
  }

  if ((LODWORD(v13) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 <= -1.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 < 1.8447e19)
  {
    *a3 = v13;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

__int16 sub_25BB5A4F8@<H0>(int *a1@<X0>, _WORD *a2@<X8>)
{
  _S0 = *a1;
  __asm { FCVT            H0, S0 }

  *a2 = result;
  return result;
}

double sub_25BB5A514@<D0>(float *a1@<X0>, double *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

uint64_t sub_25BB5A538@<X0>(double *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v16 = *a1;
  (*(v7 + 16))(v10, a2, v6, v8);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = round(v11);
  }

  else if (result == *MEMORY[0x277D84670])
  {
    v13 = rint(v11);
  }

  else if (result == *MEMORY[0x277D84680])
  {
    v13 = ceil(v11);
  }

  else if (result == *MEMORY[0x277D84688])
  {
    v13 = floor(v11);
  }

  else if (result == *MEMORY[0x277D84660])
  {
    v13 = trunc(v11);
  }

  else if (result == *MEMORY[0x277D84668])
  {
    result = sub_25BCB694C();
    v13 = floor(v11);
    v14 = ceil(v11);
    if ((result & 1) == 0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_25BCB691C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v16;
  }

  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 <= -129.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 < 128.0)
  {
    *a3 = v13;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_25BB5A768@<X0>(double *a1@<X0>, uint64_t a2@<X1>, _WORD *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v16 = *a1;
  (*(v7 + 16))(v10, a2, v6, v8);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = round(v11);
  }

  else if (result == *MEMORY[0x277D84670])
  {
    v13 = rint(v11);
  }

  else if (result == *MEMORY[0x277D84680])
  {
    v13 = ceil(v11);
  }

  else if (result == *MEMORY[0x277D84688])
  {
    v13 = floor(v11);
  }

  else if (result == *MEMORY[0x277D84660])
  {
    v13 = trunc(v11);
  }

  else if (result == *MEMORY[0x277D84668])
  {
    result = sub_25BCB694C();
    v13 = floor(v11);
    v14 = ceil(v11);
    if ((result & 1) == 0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_25BCB691C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v16;
  }

  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 <= -32769.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 < 32768.0)
  {
    *a3 = v13;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_25BB5A998@<X0>(double *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v16 = *a1;
  (*(v7 + 16))(v10, a2, v6, v8);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = round(v11);
  }

  else if (result == *MEMORY[0x277D84670])
  {
    v13 = rint(v11);
  }

  else if (result == *MEMORY[0x277D84680])
  {
    v13 = ceil(v11);
  }

  else if (result == *MEMORY[0x277D84688])
  {
    v13 = floor(v11);
  }

  else if (result == *MEMORY[0x277D84660])
  {
    v13 = trunc(v11);
  }

  else if (result == *MEMORY[0x277D84668])
  {
    result = sub_25BCB694C();
    v13 = floor(v11);
    v14 = ceil(v11);
    if ((result & 1) == 0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_25BCB691C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v16;
  }

  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 <= -2147483650.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 < 2147483650.0)
  {
    *a3 = v13;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_25BB5ABC8@<X0>(double *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v16 = *a1;
  (*(v7 + 16))(v10, a2, v6, v8);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = round(v11);
  }

  else if (result == *MEMORY[0x277D84670])
  {
    v13 = rint(v11);
  }

  else if (result == *MEMORY[0x277D84680])
  {
    v13 = ceil(v11);
  }

  else if (result == *MEMORY[0x277D84688])
  {
    v13 = floor(v11);
  }

  else if (result == *MEMORY[0x277D84660])
  {
    v13 = trunc(v11);
  }

  else if (result == *MEMORY[0x277D84668])
  {
    result = sub_25BCB694C();
    v13 = floor(v11);
    v14 = ceil(v11);
    if ((result & 1) == 0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_25BCB691C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v16;
  }

  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 < 9.22337204e18)
  {
    *a3 = v13;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_25BB5ADF8@<X0>(double *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v16 = *a1;
  (*(v7 + 16))(v10, a2, v6, v8);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = round(v11);
  }

  else if (result == *MEMORY[0x277D84670])
  {
    v13 = rint(v11);
  }

  else if (result == *MEMORY[0x277D84680])
  {
    v13 = ceil(v11);
  }

  else if (result == *MEMORY[0x277D84688])
  {
    v13 = floor(v11);
  }

  else if (result == *MEMORY[0x277D84660])
  {
    v13 = trunc(v11);
  }

  else if (result == *MEMORY[0x277D84668])
  {
    result = sub_25BCB694C();
    v13 = floor(v11);
    v14 = ceil(v11);
    if ((result & 1) == 0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_25BCB691C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v16;
  }

  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 <= -1.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 < 256.0)
  {
    *a3 = v13;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_25BB5B024@<X0>(double *a1@<X0>, uint64_t a2@<X1>, _WORD *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v16 = *a1;
  (*(v7 + 16))(v10, a2, v6, v8);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = round(v11);
  }

  else if (result == *MEMORY[0x277D84670])
  {
    v13 = rint(v11);
  }

  else if (result == *MEMORY[0x277D84680])
  {
    v13 = ceil(v11);
  }

  else if (result == *MEMORY[0x277D84688])
  {
    v13 = floor(v11);
  }

  else if (result == *MEMORY[0x277D84660])
  {
    v13 = trunc(v11);
  }

  else if (result == *MEMORY[0x277D84668])
  {
    result = sub_25BCB694C();
    v13 = floor(v11);
    v14 = ceil(v11);
    if ((result & 1) == 0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_25BCB691C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v16;
  }

  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 <= -1.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 < 65536.0)
  {
    *a3 = v13;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_25BB5B250@<X0>(double *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v16 = *a1;
  (*(v7 + 16))(v10, a2, v6, v8);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = round(v11);
  }

  else if (result == *MEMORY[0x277D84670])
  {
    v13 = rint(v11);
  }

  else if (result == *MEMORY[0x277D84680])
  {
    v13 = ceil(v11);
  }

  else if (result == *MEMORY[0x277D84688])
  {
    v13 = floor(v11);
  }

  else if (result == *MEMORY[0x277D84660])
  {
    v13 = trunc(v11);
  }

  else if (result == *MEMORY[0x277D84668])
  {
    result = sub_25BCB694C();
    v13 = floor(v11);
    v14 = ceil(v11);
    if ((result & 1) == 0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_25BCB691C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v16;
  }

  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 <= -1.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 < 4294967300.0)
  {
    *a3 = v13;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_25BB5B47C@<X0>(double *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v16 = *a1;
  (*(v7 + 16))(v10, a2, v6, v8);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = round(v11);
  }

  else if (result == *MEMORY[0x277D84670])
  {
    v13 = rint(v11);
  }

  else if (result == *MEMORY[0x277D84680])
  {
    v13 = ceil(v11);
  }

  else if (result == *MEMORY[0x277D84688])
  {
    v13 = floor(v11);
  }

  else if (result == *MEMORY[0x277D84660])
  {
    v13 = trunc(v11);
  }

  else if (result == *MEMORY[0x277D84668])
  {
    result = sub_25BCB694C();
    v13 = floor(v11);
    v14 = ceil(v11);
    if ((result & 1) == 0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_25BCB691C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v16;
  }

  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 <= -1.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 < 1.84467441e19)
  {
    *a3 = v13;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

__int16 sub_25BB5B6A8@<H0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  _D0 = *a1;
  __asm { FCVT            H0, D0 }

  *a2 = result;
  return result;
}

float sub_25BB5B6B8@<S0>(double *a1@<X0>, _WORD *a2@<X8>)
{
  result = *a1;
  *a2 = HIWORD(result);
  return result;
}

float sub_25BB5B6D0@<S0>(double *a1@<X0>, float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

float sub_25BB5B6E0(uint64_t a1)
{
  OUTLINED_FUNCTION_7_17(a1);
  v9 = OUTLINED_FUNCTION_21_11(v1, v2, v3, v4, v5, v6, v7, v8, v20);
  v11 = v10(v9);
  return OUTLINED_FUNCTION_39_7(v11, v12, v13, v14, v15, v16, v17, v18, v21, *&v22, *(&v22 + 1));
}

void sub_25BB5B724(uint64_t a1)
{
  OUTLINED_FUNCTION_7_17(a1);
  v9 = OUTLINED_FUNCTION_14_16(v1, v2, v3, v4, v5, v6, v7, v8, v19);
  v11 = v10(v9);
  OUTLINED_FUNCTION_23_12(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21, SWORD2(v21), SHIWORD(v21));
}

double sub_25BB5B764(uint64_t a1)
{
  OUTLINED_FUNCTION_7_17(a1);
  v9 = OUTLINED_FUNCTION_14_16(v1, v2, v3, v4, v5, v6, v7, v8, v20);
  v11 = v10(v9);
  *&result = OUTLINED_FUNCTION_37_5(v11, v12, v13, v14, v15, v16, v17, v18, v21, v22, SWORD2(v22), SHIWORD(v22));
  return result;
}

void sub_25BB5B7D0(uint64_t a1)
{
  OUTLINED_FUNCTION_7_17(a1);
  v9 = OUTLINED_FUNCTION_21_11(v1, v2, v3, v4, v5, v6, v7, v8, v19);
  v11 = v10(v9);
  OUTLINED_FUNCTION_35_5(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21);
}

void sub_25BB5B820(uint64_t a1)
{
  OUTLINED_FUNCTION_7_17(a1);
  v9 = OUTLINED_FUNCTION_21_11(v1, v2, v3, v4, v5, v6, v7, v8, v19);
  v11 = v10(v9);
  OUTLINED_FUNCTION_34_7(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21, SHIDWORD(v21));
}

void sub_25BB5B87C(uint64_t a1)
{
  OUTLINED_FUNCTION_7_17(a1);
  v9 = OUTLINED_FUNCTION_21_11(v1, v2, v3, v4, v5, v6, v7, v8, v19);
  v11 = v10(v9);
  OUTLINED_FUNCTION_24_7(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21, SWORD2(v21), SBYTE6(v21), SHIBYTE(v21));
}

double sub_25BB5B8C0()
{
  OUTLINED_FUNCTION_8_19();
  v9 = OUTLINED_FUNCTION_29_9(v1, v2, v3, v4, v5, v6, v7, v8, v20, *(v0 + 4 * v1));
  v11 = v10(v9);
  return OUTLINED_FUNCTION_40_7(v11, v12, v13, v14, v15, v16, v17, v18, v21, v22);
}

void sub_25BB5B908()
{
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_41_6(v0, v1);
  v10 = OUTLINED_FUNCTION_15_13(v2, v3, v4, v5, v6, v7, v8, v9, v20, v22);
  v12 = v11(v10);
  OUTLINED_FUNCTION_23_12(v12, v13, v14, v15, v16, v17, v18, v19, v21, v23, v24, v25);
}

double sub_25BB5B94C()
{
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_41_6(v0, v1);
  v10 = OUTLINED_FUNCTION_15_13(v2, v3, v4, v5, v6, v7, v8, v9, v21, v23);
  v12 = v11(v10);
  *&result = OUTLINED_FUNCTION_37_5(v12, v13, v14, v15, v16, v17, v18, v19, v22, v24, v25, v26);
  return result;
}

void sub_25BB5B9BC()
{
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_41_6(v0, v1);
  v10 = OUTLINED_FUNCTION_25_10(v2, v3, v4, v5, v6, v7, v8, v9, v20, v22);
  v12 = v11(v10);
  OUTLINED_FUNCTION_34_7(v12, v13, v14, v15, v16, v17, v18, v19, v21, v23, v24);
}

void sub_25BB5BA1C()
{
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_41_6(v0, v1);
  v10 = OUTLINED_FUNCTION_25_10(v2, v3, v4, v5, v6, v7, v8, v9, v20, v22);
  v12 = v11(v10);
  OUTLINED_FUNCTION_24_7(v12, v13, v14, v15, v16, v17, v18, v19, v21, v23, v24, v25, v26);
}

double sub_25BB5BA64()
{
  OUTLINED_FUNCTION_8_19();
  v9 = OUTLINED_FUNCTION_28_8(v1, v2, v3, v4, v5, v6, v7, v8, *v20, *&v20[4], *(v0 + 2 * v1));
  v11 = v10(v9);
  return OUTLINED_FUNCTION_40_7(v11, v12, v13, v14, v15, v16, v17, v18, v21, v22);
}

float sub_25BB5BAAC()
{
  OUTLINED_FUNCTION_8_19();
  v9 = OUTLINED_FUNCTION_30_8(v1, v2, v3, v4, v5, v6, v7, v8, v20, v22, *(v0 + 2 * v1));
  v11 = v10(v9);
  return OUTLINED_FUNCTION_39_7(v11, v12, v13, v14, v15, v16, v17, v18, v21, v23, v24);
}

void sub_25BB5BB20()
{
  OUTLINED_FUNCTION_8_19();
  v9 = OUTLINED_FUNCTION_28_8(v1, v2, v3, v4, v5, v6, v7, v8, *v19, *&v19[4], *(v0 + 2 * v1));
  v11 = v10(v9);
  OUTLINED_FUNCTION_35_5(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21);
}

void sub_25BB5BB74()
{
  OUTLINED_FUNCTION_8_19();
  v9 = OUTLINED_FUNCTION_30_8(v1, v2, v3, v4, v5, v6, v7, v8, v19, v21, *(v0 + 2 * v1));
  v11 = v10(v9);
  OUTLINED_FUNCTION_34_7(v11, v12, v13, v14, v15, v16, v17, v18, v20, v22, v23);
}

void sub_25BB5BBC8()
{
  OUTLINED_FUNCTION_8_19();
  v13 = *(v1 + 2 * v0);
  v3 = v2(&v14, &v13);
  OUTLINED_FUNCTION_23_12(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
}

void sub_25BB5BC24()
{
  OUTLINED_FUNCTION_8_19();
  v9 = OUTLINED_FUNCTION_33_7(v1, v2, v3, v4, v5, v6, v7, v8, v19, v21, *(v0 + 2 * v1));
  v11 = v10(v9);
  OUTLINED_FUNCTION_24_7(v11, v12, v13, v14, v15, v16, v17, v18, v20, v22, v23, v24, v25);
}

double sub_25BB5BC70()
{
  OUTLINED_FUNCTION_3_17();
  v8 = OUTLINED_FUNCTION_21_11(v0, v1, v2, v3, v4, v5, v6, v7, v19);
  v10 = v9(v8);
  return OUTLINED_FUNCTION_40_7(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21);
}

void sub_25BB5BCB8()
{
  OUTLINED_FUNCTION_3_17();
  v8 = OUTLINED_FUNCTION_14_16(v0, v1, v2, v3, v4, v5, v6, v7, v18);
  v10 = v9(v8);
  OUTLINED_FUNCTION_23_12(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20, SWORD2(v20), SHIWORD(v20));
}

double sub_25BB5BCFC()
{
  OUTLINED_FUNCTION_3_17();
  v8 = OUTLINED_FUNCTION_14_16(v0, v1, v2, v3, v4, v5, v6, v7, v19);
  v10 = v9(v8);
  *&result = OUTLINED_FUNCTION_37_5(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21, SWORD2(v21), SHIWORD(v21));
  return result;
}

void sub_25BB5BD40()
{
  OUTLINED_FUNCTION_3_17();
  v8 = OUTLINED_FUNCTION_21_11(v0, v1, v2, v3, v4, v5, v6, v7, v18);
  v10 = v9(v8);
  OUTLINED_FUNCTION_35_5(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20);
}

void sub_25BB5BD88()
{
  OUTLINED_FUNCTION_3_17();
  v8 = OUTLINED_FUNCTION_21_11(v0, v1, v2, v3, v4, v5, v6, v7, v18);
  v10 = v9(v8);
  OUTLINED_FUNCTION_24_7(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20, SWORD2(v20), SBYTE6(v20), SHIBYTE(v20));
}

double sub_25BB5BDD0()
{
  OUTLINED_FUNCTION_8_19();
  v9 = OUTLINED_FUNCTION_29_9(v1, v2, v3, v4, v5, v6, v7, v8, v20, *(v0 + 4 * v1));
  v11 = v10(v9);
  return OUTLINED_FUNCTION_40_7(v11, v12, v13, v14, v15, v16, v17, v18, v21, v22);
}

float sub_25BB5BE1C()
{
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_38_6();
  v8 = OUTLINED_FUNCTION_25_10(v0, v1, v2, v3, v4, v5, v6, v7, v19, v21);
  v10 = v9(v8);
  return OUTLINED_FUNCTION_39_7(v10, v11, v12, v13, v14, v15, v16, v17, v20, v22, v23);
}

void sub_25BB5BE68()
{
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_38_6();
  v8 = OUTLINED_FUNCTION_15_13(v0, v1, v2, v3, v4, v5, v6, v7, v18, v20);
  v10 = v9(v8);
  OUTLINED_FUNCTION_23_12(v10, v11, v12, v13, v14, v15, v16, v17, v19, v21, v22, v23);
}

double sub_25BB5BEB0()
{
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_38_6();
  v8 = OUTLINED_FUNCTION_15_13(v0, v1, v2, v3, v4, v5, v6, v7, v19, v21);
  v10 = v9(v8);
  *&result = OUTLINED_FUNCTION_37_5(v10, v11, v12, v13, v14, v15, v16, v17, v20, v22, v23, v24);
  return result;
}

void sub_25BB5BEF8()
{
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_38_6();
  v8 = OUTLINED_FUNCTION_25_10(v0, v1, v2, v3, v4, v5, v6, v7, v18, v20);
  v10 = v9(v8);
  OUTLINED_FUNCTION_34_7(v10, v11, v12, v13, v14, v15, v16, v17, v19, v21, v22);
}

void sub_25BB5BF44()
{
  OUTLINED_FUNCTION_8_19();
  v9 = OUTLINED_FUNCTION_29_9(v1, v2, v3, v4, v5, v6, v7, v8, v19, *(v0 + 4 * v1));
  v11 = v10(v9);
  OUTLINED_FUNCTION_35_5(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21);
}

void sub_25BB5BF90()
{
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_38_6();
  v8 = OUTLINED_FUNCTION_25_10(v0, v1, v2, v3, v4, v5, v6, v7, v18, v20);
  v10 = v9(v8);
  OUTLINED_FUNCTION_24_7(v10, v11, v12, v13, v14, v15, v16, v17, v19, v21, v22, v23, v24);
}

double sub_25BB5BFDC()
{
  OUTLINED_FUNCTION_8_19();
  v9 = OUTLINED_FUNCTION_28_8(v1, v2, v3, v4, v5, v6, v7, v8, *v20, *&v20[4], *(v0 + 2 * v1));
  v11 = v10(v9);
  return OUTLINED_FUNCTION_40_7(v11, v12, v13, v14, v15, v16, v17, v18, v21, v22);
}

float sub_25BB5C028()
{
  OUTLINED_FUNCTION_8_19();
  v9 = OUTLINED_FUNCTION_30_8(v1, v2, v3, v4, v5, v6, v7, v8, v20, v22, *(v0 + 2 * v1));
  v11 = v10(v9);
  return OUTLINED_FUNCTION_39_7(v11, v12, v13, v14, v15, v16, v17, v18, v21, v23, v24);
}

void sub_25BB5C074()
{
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_22_10();
  v1 = v0();
  OUTLINED_FUNCTION_23_12(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, SWORD2(v10), SHIWORD(v10));
}

double sub_25BB5C0B8()
{
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_22_10();
  v1 = v0();
  *&result = OUTLINED_FUNCTION_37_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, SWORD2(v11), SHIWORD(v11));
  return result;
}

void sub_25BB5C0FC()
{
  OUTLINED_FUNCTION_8_19();
  v9 = OUTLINED_FUNCTION_28_8(v1, v2, v3, v4, v5, v6, v7, v8, *v19, *&v19[4], *(v0 + 2 * v1));
  v11 = v10(v9);
  OUTLINED_FUNCTION_35_5(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21);
}

void sub_25BB5C148()
{
  OUTLINED_FUNCTION_8_19();
  v9 = OUTLINED_FUNCTION_30_8(v1, v2, v3, v4, v5, v6, v7, v8, v19, v21, *(v0 + 2 * v1));
  v11 = v10(v9);
  OUTLINED_FUNCTION_34_7(v11, v12, v13, v14, v15, v16, v17, v18, v20, v22, v23);
}

void sub_25BB5C194()
{
  OUTLINED_FUNCTION_8_19();
  v9 = OUTLINED_FUNCTION_33_7(v1, v2, v3, v4, v5, v6, v7, v8, v19, v21, *(v0 + 2 * v1));
  v11 = v10(v9);
  OUTLINED_FUNCTION_24_7(v11, v12, v13, v14, v15, v16, v17, v18, v20, v22, v23, v24, v25);
}

double sub_25BB5C1E0()
{
  OUTLINED_FUNCTION_2_23();
  OUTLINED_FUNCTION_17_15();
  v1 = v0();
  return OUTLINED_FUNCTION_40_7(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
}

float sub_25BB5C224()
{
  OUTLINED_FUNCTION_2_23();
  OUTLINED_FUNCTION_16_17();
  v1 = v0();
  return OUTLINED_FUNCTION_39_7(v1, v2, v3, v4, v5, v6, v7, v8, v10, *&v11, *(&v11 + 1));
}

void sub_25BB5C268()
{
  OUTLINED_FUNCTION_1_21();
  v1 = v0();
  OUTLINED_FUNCTION_23_12(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, SWORD2(v10), SHIWORD(v10));
}

double sub_25BB5C2A8()
{
  OUTLINED_FUNCTION_1_21();
  v1 = v0();
  *&result = OUTLINED_FUNCTION_37_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, SWORD2(v11), SHIWORD(v11));
  return result;
}

void sub_25BB5C2E8()
{
  OUTLINED_FUNCTION_2_23();
  OUTLINED_FUNCTION_43_5();
  v1 = v0();
  OUTLINED_FUNCTION_24_7(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
}

void sub_25BB5C32C()
{
  OUTLINED_FUNCTION_2_23();
  OUTLINED_FUNCTION_17_15();
  v1 = v0();
  OUTLINED_FUNCTION_35_5(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_25BB5C370()
{
  OUTLINED_FUNCTION_2_23();
  OUTLINED_FUNCTION_16_17();
  v1 = v0();
  OUTLINED_FUNCTION_34_7(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, SHIDWORD(v10));
}

unint64_t sub_25BB5C3B0()
{
  result = qword_28154BE70[0];
  if (!qword_28154BE70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28154BE70);
  }

  return result;
}

NeuralNetworks::ZeroPad1D __swiftcall ZeroPad1D.init(size:)(Swift::tuple_left_Int_right_Int size)
{
  v1 = sub_25BB5DA80(size.left, size.right);
  result.size.right = v2;
  result.size.left = v1;
  return result;
}

NeuralNetworks::ZeroPad1D __swiftcall ZeroPad1D.init(size:)(Swift::Int size)
{
  v1 = sub_25BB5DB3C(size, 26);
  result.size.right = v2;
  result.size.left = v1;
  return result;
}

uint64_t ZeroPad1D.forward(_:)()
{
  OUTLINED_FUNCTION_11_20();
  v4 = sub_25BAA80BC(v3, &unk_286D42270);
  if (!v4)
  {
    OUTLINED_FUNCTION_51_6(v4);
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v18[0] = v0;
    v18[1] = v1;
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_4_22();
    sub_25BADDD28(v12, v13, v14, v15, v16, v17, 43);
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F88, &qword_25BCBBEB0);
  v6 = OUTLINED_FUNCTION_53_5(v5);
  v7 = OUTLINED_FUNCTION_17_16(v6, xmmword_25BCBAE90);
  v8 = MEMORY[0x277D83A90];
  *(v7 + 64) = v2;
  *(v7 + 72) = v1;
  v18[3] = v8;
  v18[4] = &protocol witness table for Float;
  LODWORD(v18[0]) = 0;
  OUTLINED_FUNCTION_25_11();
  Tensor.padded(forSizes:with:)(v9, v10);

  return __swift_destroy_boxed_opaque_existential_1(v18);
}

BOOL sub_25BB5C65C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_25BADF360();
  *a1 = result;
  return result;
}

uint64_t sub_25BB5C690@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_5_21();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_25BB5C6B8@<W0>(_BYTE *a1@<X8>)
{
  result = sub_25BADF360();
  *a1 = result;
  return result;
}

uint64_t sub_25BB5C700@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_53_0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25BB5C72C(uint64_t a1)
{
  v2 = sub_25BB5F818();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB5C768(uint64_t a1)
{
  v2 = sub_25BB5F818();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ZeroPad1D.init(from:)()
{
  OUTLINED_FUNCTION_32_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B30, &qword_25BCC06B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_10_14();
  v3 = sub_25BB5F818();
  OUTLINED_FUNCTION_12_15(&type metadata for ZeroPad1D.CodingKeys, v4, v3);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
    return OUTLINED_FUNCTION_28_9();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_0_27(&qword_28154BE48, MEMORY[0x277D83BB8]);
  OUTLINED_FUNCTION_49_6();
  OUTLINED_FUNCTION_13_14(v5, v6, v7, v8, v9);
  result = v15;
  v11 = *(v15 + 16);
  if (v11)
  {
    if (v11 != 1)
    {

      v12.left = OUTLINED_FUNCTION_31_8();
      ZeroPad1D.init(size:)(v12);
      OUTLINED_FUNCTION_47_0();
      v13 = OUTLINED_FUNCTION_7_18();
      v14(v13);
      __swift_destroy_boxed_opaque_existential_1(v0);
      return OUTLINED_FUNCTION_28_9();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

NeuralNetworks::ZeroPad2D __swiftcall ZeroPad2D.init(size:)(Swift::tuple_left_Int_right_Int_top_Int_bottom_Int size)
{
  v1 = sub_25BB5DFDC(size.left, size.right, size.top, size.bottom);
  result.size.bottom = v4;
  result.size.top = v3;
  result.size.right = v2;
  result.size.left = v1;
  return result;
}

NeuralNetworks::ZeroPad2D __swiftcall ZeroPad2D.init(size:)(Swift::tuple_height_Int_width_Int size)
{
  v1 = sub_25BB5E0AC(size.height, size.width);
  result.size.bottom = v4;
  result.size.top = v3;
  result.size.right = v2;
  result.size.left = v1;
  return result;
}

NeuralNetworks::ZeroPad2D __swiftcall ZeroPad2D.init(size:)(Swift::Int size)
{
  v1 = sub_25BB5E178(size);
  result.size.bottom = v4;
  result.size.top = v3;
  result.size.right = v2;
  result.size.left = v1;
  return result;
}

uint64_t ZeroPad2D.forward(_:)()
{
  OUTLINED_FUNCTION_15_14();
  if (!sub_25BAA80BC(v1, &unk_286D42270))
  {
    v14 = v1;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v15[0] = v0;
    v15[1] = &v14;
    OUTLINED_FUNCTION_9_16();
    OUTLINED_FUNCTION_4_22();
    sub_25BADDD28(v8, v9, v10, v11, v12, v13, 104);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39D0, &qword_25BCBB950);
  inited = swift_initStackObject();
  v3 = OUTLINED_FUNCTION_17_16(inited, xmmword_25BCBDF80);
  v5 = OUTLINED_FUNCTION_40_8(v3, v4);
  swift_setDeallocating();
  v15[3] = MEMORY[0x277D83A90];
  v15[4] = &protocol witness table for Float;
  LODWORD(v15[0]) = 0;
  OUTLINED_FUNCTION_29_10();
  Tensor.padded(forSizes:with:)(v5, v6);

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

BOOL sub_25BB5CAE0@<W0>(_BYTE *a1@<X8>)
{
  result = sub_25BADF398();
  *a1 = result;
  return result;
}

BOOL sub_25BB5CB14@<W0>(_BYTE *a1@<X8>)
{
  result = sub_25BADF398();
  *a1 = result;
  return result;
}

uint64_t sub_25BB5CB40(uint64_t a1)
{
  v2 = sub_25BB5F8D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB5CB7C(uint64_t a1)
{
  v2 = sub_25BB5F8D8();

  return MEMORY[0x2821FE720](a1, v2);
}

void ZeroPad2D.init(from:)()
{
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_32_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B50, &qword_25BCC06D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_10_14();
  v3 = sub_25BB5F8D8();
  OUTLINED_FUNCTION_12_15(&type metadata for ZeroPad2D.CodingKeys, v4, v3);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
LABEL_4:
    OUTLINED_FUNCTION_19_13();
    OUTLINED_FUNCTION_16();
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_0_27(&qword_28154BE48, MEMORY[0x277D83BB8]);
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_13_14(v5, v6, v7, v8, v9);
  v10 = v28[2];
  if (!v10)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v10 == 1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10 < 3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v10 == 3)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = v28[4];
  v12 = v28[5];
  v13 = v28[6];
  v14 = v28[7];

  if ((v11 & 0x8000000000000000) == 0 && (v12 & 0x8000000000000000) == 0 && (v13 & 0x8000000000000000) == 0 && (v14 & 0x8000000000000000) == 0)
  {
    v15 = OUTLINED_FUNCTION_7_18();
    v16(v15);
    __swift_destroy_boxed_opaque_existential_1(v0);
    goto LABEL_4;
  }

LABEL_18:
  OUTLINED_FUNCTION_20_12();
  OUTLINED_FUNCTION_2_24();
  OUTLINED_FUNCTION_22_11();
  MEMORY[0x25F876C90]();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B48, &qword_25BCC06C8);
  OUTLINED_FUNCTION_54_4(v17, v18, v17, MEMORY[0x277D84698], MEMORY[0x277D846A8]);
  v19 = OUTLINED_FUNCTION_16_18();
  MEMORY[0x25F876C90](v19);
  OUTLINED_FUNCTION_27_10();
  OUTLINED_FUNCTION_1_22();
  sub_25BCB74CC(v20, v21, v22, v23, v24, v25, v26, v27, 78);
  __break(1u);
}

NeuralNetworks::ReflectionPad1D __swiftcall ReflectionPad1D.init(size:)(Swift::tuple_left_Int_right_Int size)
{
  v1 = sub_25BB5DA80(size.left, size.right);
  result.size.right = v2;
  result.size.left = v1;
  return result;
}

NeuralNetworks::ReflectionPad1D __swiftcall ReflectionPad1D.init(size:)(Swift::Int size)
{
  v1 = sub_25BB5DB3C(size, 140);
  result.size.right = v2;
  result.size.left = v1;
  return result;
}

uint64_t ReflectionPad1D.forward(_:)()
{
  OUTLINED_FUNCTION_11_20();
  v4 = sub_25BAA80BC(v3, &unk_286D42270);
  if (!v4)
  {
    OUTLINED_FUNCTION_51_6(v4);
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    *&v16[0] = v0;
    *(&v16[0] + 1) = v1;
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_4_22();
    sub_25BADDD28(v10, v11, v12, v13, v14, v15, 156);
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F88, &qword_25BCBBEB0);
  v6 = OUTLINED_FUNCTION_53_5(v5);
  v7 = OUTLINED_FUNCTION_17_16(v6, xmmword_25BCBAE90);
  *(v7 + 64) = v2;
  *(v7 + 72) = v1;
  v17 = 0;
  v16[0] = v8;
  v16[1] = v8;
  OUTLINED_FUNCTION_25_11();
  Tensor.padded(forSizes:mode:)();

  return sub_25BB2B680(v16);
}

BOOL sub_25BB5CF68@<W0>(_BYTE *a1@<X8>)
{
  result = sub_25BADF3D0();
  *a1 = result;
  return result;
}

BOOL sub_25BB5CF9C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_25BADF3D0();
  *a1 = result;
  return result;
}

uint64_t sub_25BB5CFC8(uint64_t a1)
{
  v2 = sub_25BB5F92C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB5D004(uint64_t a1)
{
  v2 = sub_25BB5F92C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReflectionPad1D.init(from:)()
{
  OUTLINED_FUNCTION_32_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B68, &qword_25BCC06E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_10_14();
  v3 = sub_25BB5F92C();
  OUTLINED_FUNCTION_12_15(&type metadata for ReflectionPad1D.CodingKeys, v4, v3);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
    return OUTLINED_FUNCTION_28_9();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_0_27(&qword_28154BE48, MEMORY[0x277D83BB8]);
  OUTLINED_FUNCTION_49_6();
  OUTLINED_FUNCTION_13_14(v5, v6, v7, v8, v9);
  result = v15;
  v11 = *(v15 + 16);
  if (v11)
  {
    if (v11 != 1)
    {

      v12.left = OUTLINED_FUNCTION_31_8();
      ReflectionPad1D.init(size:)(v12);
      OUTLINED_FUNCTION_47_0();
      v13 = OUTLINED_FUNCTION_7_18();
      v14(v13);
      __swift_destroy_boxed_opaque_existential_1(v0);
      return OUTLINED_FUNCTION_28_9();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_25BB5D1F4()
{
  OUTLINED_FUNCTION_17_1();
  v2 = v1;
  v15 = v3;
  v5 = v4;
  v7 = v6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_2();
  v12 = v11;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_36();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v2();
  sub_25BCB7B6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_25BCBAE70;
  *(v14 + 32) = v5;
  *(v14 + 40) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_6_25(&qword_28154BE50, MEMORY[0x277D83B90]);
  OUTLINED_FUNCTION_38_7();
  sub_25BCB779C();

  (*(v12 + 8))(v0, v10);
  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BB5D3A8@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

NeuralNetworks::ReflectionPad2D __swiftcall ReflectionPad2D.init(size:)(Swift::tuple_left_Int_right_Int_top_Int_bottom_Int size)
{
  v1 = sub_25BB5DFDC(size.left, size.right, size.top, size.bottom);
  result.size.bottom = v4;
  result.size.top = v3;
  result.size.right = v2;
  result.size.left = v1;
  return result;
}

NeuralNetworks::ReflectionPad2D __swiftcall ReflectionPad2D.init(size:)(Swift::tuple_height_Int_width_Int size)
{
  v1 = sub_25BB5E0AC(size.height, size.width);
  result.size.bottom = v4;
  result.size.top = v3;
  result.size.right = v2;
  result.size.left = v1;
  return result;
}

NeuralNetworks::ReflectionPad2D __swiftcall ReflectionPad2D.init(size:)(Swift::Int size)
{
  v1 = sub_25BB5E178(size);
  result.size.bottom = v4;
  result.size.top = v3;
  result.size.right = v2;
  result.size.left = v1;
  return result;
}

uint64_t ReflectionPad2D.forward(_:)()
{
  OUTLINED_FUNCTION_15_14();
  if (!sub_25BAA80BC(v1, &unk_286D42270))
  {
    v12 = v1;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    *&v13[0] = v0;
    *(&v13[0] + 1) = &v12;
    OUTLINED_FUNCTION_9_16();
    OUTLINED_FUNCTION_4_22();
    sub_25BADDD28(v6, v7, v8, v9, v10, v11, 217);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39D0, &qword_25BCBB950);
  inited = swift_initStackObject();
  v3 = OUTLINED_FUNCTION_17_16(inited, xmmword_25BCBDF80);
  OUTLINED_FUNCTION_40_8(v3, v4);
  swift_setDeallocating();
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  OUTLINED_FUNCTION_29_10();
  Tensor.padded(forSizes:mode:)();

  return sub_25BB2B680(v13);
}

BOOL sub_25BB5D528@<W0>(_BYTE *a1@<X8>)
{
  result = sub_25BADF408();
  *a1 = result;
  return result;
}

BOOL sub_25BB5D55C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_25BADF408();
  *a1 = result;
  return result;
}

uint64_t sub_25BB5D588(uint64_t a1)
{
  v2 = sub_25BB5F980();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB5D5C4(uint64_t a1)
{
  v2 = sub_25BB5F980();

  return MEMORY[0x2821FE720](a1, v2);
}

void ReflectionPad2D.init(from:)()
{
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_32_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B80, &qword_25BCC06F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_10_14();
  v3 = sub_25BB5F980();
  OUTLINED_FUNCTION_12_15(&type metadata for ReflectionPad2D.CodingKeys, v4, v3);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
LABEL_4:
    OUTLINED_FUNCTION_19_13();
    OUTLINED_FUNCTION_16();
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_0_27(&qword_28154BE48, MEMORY[0x277D83BB8]);
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_13_14(v5, v6, v7, v8, v9);
  v10 = v28[2];
  if (!v10)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v10 == 1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10 < 3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v10 == 3)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = v28[4];
  v12 = v28[5];
  v13 = v28[6];
  v14 = v28[7];

  if ((v11 & 0x8000000000000000) == 0 && (v12 & 0x8000000000000000) == 0 && (v13 & 0x8000000000000000) == 0 && (v14 & 0x8000000000000000) == 0)
  {
    v15 = OUTLINED_FUNCTION_7_18();
    v16(v15);
    __swift_destroy_boxed_opaque_existential_1(v0);
    goto LABEL_4;
  }

LABEL_18:
  OUTLINED_FUNCTION_20_12();
  OUTLINED_FUNCTION_2_24();
  OUTLINED_FUNCTION_22_11();
  MEMORY[0x25F876C90]();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B48, &qword_25BCC06C8);
  OUTLINED_FUNCTION_54_4(v17, v18, v17, MEMORY[0x277D84698], MEMORY[0x277D846A8]);
  v19 = OUTLINED_FUNCTION_16_18();
  MEMORY[0x25F876C90](v19);
  OUTLINED_FUNCTION_27_10();
  OUTLINED_FUNCTION_1_22();
  sub_25BCB74CC(v20, v21, v22, v23, v24, v25, v26, v27, 191);
  __break(1u);
}

void sub_25BB5D860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_17_1();
  v23 = v22;
  v40 = v24;
  v38 = v25;
  v39 = v26;
  v28 = v27;
  v30 = v29;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
  OUTLINED_FUNCTION_2();
  v35 = v34;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_36();
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  v23();
  sub_25BCB7B6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_25BCBDF80;
  *(v37 + 32) = v28;
  *(v37 + 40) = v38;
  *(v37 + 48) = v39;
  *(v37 + 56) = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_6_25(&qword_28154BE50, MEMORY[0x277D83B90]);
  OUTLINED_FUNCTION_38_7();
  sub_25BCB779C();

  (*(v35 + 8))(v21, v33);
  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BB5DA20@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

NeuralNetworks::SymmetricPad1D __swiftcall SymmetricPad1D.init(size:)(Swift::tuple_left_Int_right_Int size)
{
  v1 = sub_25BB5DA80(size.left, size.right);
  result.size._1 = v2;
  result.size._0 = v1;
  return result;
}

uint64_t sub_25BB5DA80(uint64_t result, uint64_t a2)
{
  if (result < 0 || a2 < 0)
  {
    OUTLINED_FUNCTION_35_6();
    v3 = v2;
    sub_25BCB70FC();
    OUTLINED_FUNCTION_2_24();
    OUTLINED_FUNCTION_22_11();
    MEMORY[0x25F876C90]();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B28, &qword_25BCC06B0);
    OUTLINED_FUNCTION_52_4(v4, v5, v4, MEMORY[0x277D84698], MEMORY[0x277D846A8], v6, v7);
    OUTLINED_FUNCTION_21_12();
    OUTLINED_FUNCTION_48_4();
    OUTLINED_FUNCTION_1_22();
    result = sub_25BCB74CC(v8, v9, v10, v11, v12, v13, v14, v15, v3);
    __break(1u);
  }

  return result;
}

NeuralNetworks::SymmetricPad1D __swiftcall SymmetricPad1D.init(size:)(Swift::Int size)
{
  v1 = sub_25BB5DB3C(size, 253);
  result.size._1 = v2;
  result.size._0 = v1;
  return result;
}

uint64_t sub_25BB5DB3C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    sub_25BCB70FC();
    OUTLINED_FUNCTION_2_24();
    OUTLINED_FUNCTION_22_11();
    MEMORY[0x25F876C90]();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B28, &qword_25BCC06B0);
    OUTLINED_FUNCTION_52_4(v3, v4, v3, MEMORY[0x277D84698], MEMORY[0x277D846A8], v5, v6);
    OUTLINED_FUNCTION_21_12();
    OUTLINED_FUNCTION_48_4();
    OUTLINED_FUNCTION_1_22();
    result = sub_25BCB74CC(v7, v8, v9, v10, v11, v12, v13, v14, a2);
    __break(1u);
  }

  return result;
}

uint64_t SymmetricPad1D.forward(_:)()
{
  OUTLINED_FUNCTION_11_20();
  v4 = sub_25BAA80BC(v3, &unk_286D42270);
  if (!v4)
  {
    OUTLINED_FUNCTION_51_6(v4);
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v15 = v0;
    v16 = v1;
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_4_22();
    sub_25BADDD28(v9, v10, v11, v12, v13, v14, 269);
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F88, &qword_25BCBBEB0);
  v6 = OUTLINED_FUNCTION_53_5(v5);
  v7 = OUTLINED_FUNCTION_17_16(v6, xmmword_25BCBAE90);
  *(v7 + 64) = v2;
  *(v7 + 72) = v1;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = xmmword_25BCC06A0;
  OUTLINED_FUNCTION_25_11();
  Tensor.padded(forSizes:mode:)();

  return sub_25BB2B680(&v15);
}

BOOL sub_25BB5DCFC@<W0>(_BYTE *a1@<X8>)
{
  result = sub_25BADF440();
  *a1 = result;
  return result;
}

BOOL sub_25BB5DD30@<W0>(_BYTE *a1@<X8>)
{
  result = sub_25BADF440();
  *a1 = result;
  return result;
}

uint64_t sub_25BB5DD5C(uint64_t a1)
{
  v2 = sub_25BB5F9D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB5DD98(uint64_t a1)
{
  v2 = sub_25BB5F9D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SymmetricPad1D.init(from:)()
{
  OUTLINED_FUNCTION_32_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B98, &qword_25BCC0700);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_10_14();
  v3 = sub_25BB5F9D4();
  OUTLINED_FUNCTION_12_15(&type metadata for SymmetricPad1D.CodingKeys, v4, v3);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
    return OUTLINED_FUNCTION_28_9();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_0_27(&qword_28154BE48, MEMORY[0x277D83BB8]);
  OUTLINED_FUNCTION_49_6();
  OUTLINED_FUNCTION_13_14(v5, v6, v7, v8, v9);
  result = v15;
  v11 = *(v15 + 16);
  if (v11)
  {
    if (v11 != 1)
    {

      v12.left = OUTLINED_FUNCTION_31_8();
      SymmetricPad1D.init(size:)(v12);
      OUTLINED_FUNCTION_47_0();
      v13 = OUTLINED_FUNCTION_7_18();
      v14(v13);
      __swift_destroy_boxed_opaque_existential_1(v0);
      return OUTLINED_FUNCTION_28_9();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

NeuralNetworks::SymmetricPad2D __swiftcall SymmetricPad2D.init(size:)(Swift::tuple_left_Int_right_Int_top_Int_bottom_Int size)
{
  v1 = sub_25BB5DFDC(size.left, size.right, size.top, size.bottom);
  result.size.bottom = v4;
  result.size.top = v3;
  result.size.right = v2;
  result.size.left = v1;
  return result;
}

uint64_t sub_25BB5DFDC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || a2 < 0 || a3 < 0 || a4 < 0)
  {
    OUTLINED_FUNCTION_14_17();
    v5 = v4;
    sub_25BCB70FC();
    OUTLINED_FUNCTION_2_24();
    OUTLINED_FUNCTION_22_11();
    MEMORY[0x25F876C90]();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B48, &qword_25BCC06C8);
    OUTLINED_FUNCTION_45_7(v6, v7, v6, MEMORY[0x277D84698], MEMORY[0x277D846A8], v8, v9);
    OUTLINED_FUNCTION_18_17();
    OUTLINED_FUNCTION_1_22();
    result = sub_25BCB74CC(v10, v11, v12, v13, v14, v15, v16, v17, v5);
    __break(1u);
  }

  return result;
}

NeuralNetworks::SymmetricPad2D __swiftcall SymmetricPad2D.init(size:)(Swift::tuple_height_Int_width_Int size)
{
  v1 = sub_25BB5E0AC(size.height, size.width);
  result.size.bottom = v4;
  result.size.top = v3;
  result.size.right = v2;
  result.size.left = v1;
  return result;
}

uint64_t sub_25BB5E0AC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0 && (a1 & 0x8000000000000000) == 0)
  {
    return a2;
  }

  OUTLINED_FUNCTION_46_5();
  v4 = v3;
  sub_25BCB70FC();
  OUTLINED_FUNCTION_2_24();
  OUTLINED_FUNCTION_22_11();
  MEMORY[0x25F876C90]();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B48, &qword_25BCC06C8);
  OUTLINED_FUNCTION_45_7(v5, v6, v5, MEMORY[0x277D84698], MEMORY[0x277D846A8], v7, v8);
  OUTLINED_FUNCTION_18_17();
  OUTLINED_FUNCTION_1_22();
  result = sub_25BCB74CC(v9, v10, v11, v12, v13, v14, v15, v16, v4);
  __break(1u);
  return result;
}

NeuralNetworks::SymmetricPad2D __swiftcall SymmetricPad2D.init(size:)(Swift::Int size)
{
  v1 = sub_25BB5E178(size);
  result.size.bottom = v4;
  result.size.top = v3;
  result.size.right = v2;
  result.size.left = v1;
  return result;
}

uint64_t sub_25BB5E178(uint64_t result)
{
  if (result < 0)
  {
    OUTLINED_FUNCTION_46_5();
    v2 = v1;
    sub_25BCB70FC();
    OUTLINED_FUNCTION_2_24();
    OUTLINED_FUNCTION_22_11();
    MEMORY[0x25F876C90]();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B48, &qword_25BCC06C8);
    OUTLINED_FUNCTION_45_7(v3, v4, v3, MEMORY[0x277D84698], MEMORY[0x277D846A8], v5, v6);
    OUTLINED_FUNCTION_18_17();
    OUTLINED_FUNCTION_1_22();
    result = sub_25BCB74CC(v7, v8, v9, v10, v11, v12, v13, v14, v2);
    __break(1u);
  }

  return result;
}

uint64_t SymmetricPad2D.forward(_:)()
{
  OUTLINED_FUNCTION_15_14();
  if (!sub_25BAA80BC(v1, &unk_286D42270))
  {
    v12 = v1;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v13 = v0;
    v14 = &v12;
    OUTLINED_FUNCTION_9_16();
    OUTLINED_FUNCTION_4_22();
    sub_25BADDD28(v6, v7, v8, v9, v10, v11, 330);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39D0, &qword_25BCBB950);
  inited = swift_initStackObject();
  v3 = OUTLINED_FUNCTION_17_16(inited, xmmword_25BCBDF80);
  OUTLINED_FUNCTION_40_8(v3, v4);
  swift_setDeallocating();
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = xmmword_25BCC06A0;
  OUTLINED_FUNCTION_29_10();
  Tensor.padded(forSizes:mode:)();

  return sub_25BB2B680(&v13);
}

BOOL sub_25BB5E35C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_25BADF478();
  *a1 = result;
  return result;
}

BOOL sub_25BB5E390@<W0>(_BYTE *a1@<X8>)
{
  result = sub_25BADF478();
  *a1 = result;
  return result;
}

uint64_t sub_25BB5E3BC(uint64_t a1)
{
  v2 = sub_25BB5FA28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB5E3F8(uint64_t a1)
{
  v2 = sub_25BB5FA28();

  return MEMORY[0x2821FE720](a1, v2);
}

void SymmetricPad2D.init(from:)()
{
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_32_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4BB0, &qword_25BCC0710);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_10_14();
  v3 = sub_25BB5FA28();
  OUTLINED_FUNCTION_12_15(&type metadata for SymmetricPad2D.CodingKeys, v4, v3);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
LABEL_4:
    OUTLINED_FUNCTION_19_13();
    OUTLINED_FUNCTION_16();
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_0_27(&qword_28154BE48, MEMORY[0x277D83BB8]);
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_13_14(v5, v6, v7, v8, v9);
  v10 = v28[2];
  if (!v10)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v10 == 1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10 < 3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v10 == 3)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = v28[4];
  v12 = v28[5];
  v13 = v28[6];
  v14 = v28[7];

  if ((v11 & 0x8000000000000000) == 0 && (v12 & 0x8000000000000000) == 0 && (v13 & 0x8000000000000000) == 0 && (v14 & 0x8000000000000000) == 0)
  {
    v15 = OUTLINED_FUNCTION_7_18();
    v16(v15);
    __swift_destroy_boxed_opaque_existential_1(v0);
    goto LABEL_4;
  }

LABEL_18:
  OUTLINED_FUNCTION_20_12();
  OUTLINED_FUNCTION_2_24();
  OUTLINED_FUNCTION_22_11();
  MEMORY[0x25F876C90]();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B48, &qword_25BCC06C8);
  OUTLINED_FUNCTION_54_4(v17, v18, v17, MEMORY[0x277D84698], MEMORY[0x277D846A8]);
  v19 = OUTLINED_FUNCTION_16_18();
  MEMORY[0x25F876C90](v19);
  OUTLINED_FUNCTION_27_10();
  OUTLINED_FUNCTION_1_22();
  sub_25BCB74CC(v20, v21, v22, v23, v24, v25, v26, v27, 304);
  __break(1u);
}

NeuralNetworks::ConstantPad1D __swiftcall ConstantPad1D.init(size:value:)(Swift::tuple_left_Int_right_Int size, Swift::Float value)
{
  if (size.left < 0 || size.right < 0)
  {
    OUTLINED_FUNCTION_35_6();
    sub_25BCB70FC();
    OUTLINED_FUNCTION_2_24();
    OUTLINED_FUNCTION_22_11();
    MEMORY[0x25F876C90]();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B28, &qword_25BCC06B0);
    OUTLINED_FUNCTION_52_4(v2, v3, v2, MEMORY[0x277D84698], MEMORY[0x277D846A8], v4, v5);
    OUTLINED_FUNCTION_21_12();
    OUTLINED_FUNCTION_48_4();
    OUTLINED_FUNCTION_1_22();
    size.left = sub_25BCB74CC(v6, v7, v8, v9, v10, v11, v12, v13, 370);
    __break(1u);
  }

  result.size = size;
  result.value = value;
  return result;
}

NeuralNetworks::ConstantPad1D __swiftcall ConstantPad1D.init(size:value:)(Swift::Int size, Swift::Float value)
{
  v2 = size;
  if (size < 0)
  {
    OUTLINED_FUNCTION_35_6();
    sub_25BCB70FC();
    OUTLINED_FUNCTION_2_24();
    OUTLINED_FUNCTION_22_11();
    MEMORY[0x25F876C90]();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B28, &qword_25BCC06B0);
    OUTLINED_FUNCTION_52_4(v3, v4, v3, MEMORY[0x277D84698], MEMORY[0x277D846A8], v5, v6);
    OUTLINED_FUNCTION_21_12();
    OUTLINED_FUNCTION_48_4();
    OUTLINED_FUNCTION_1_22();
    size = sub_25BCB74CC(v7, v8, v9, v10, v11, v12, v13, v14, 370);
    __break(1u);
  }

  result.size.right = v2;
  result.size.left = size;
  result.value = value;
  return result;
}

uint64_t ConstantPad1D.forward(_:)(float a1)
{
  OUTLINED_FUNCTION_11_20();
  v6 = sub_25BAA80BC(v4, &unk_286D42270);
  if (!v6)
  {
    OUTLINED_FUNCTION_51_6(v6);
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v20[0] = v1;
    v20[1] = v2;
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_4_22();
    sub_25BADDD28(v14, v15, v16, v17, v18, v19, 389);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F88, &qword_25BCBBEB0);
  v8 = OUTLINED_FUNCTION_53_5(v7);
  v9 = OUTLINED_FUNCTION_17_16(v8, xmmword_25BCBAE90);
  v10 = MEMORY[0x277D83A90];
  *(v9 + 64) = v3;
  *(v9 + 72) = v2;
  v20[3] = v10;
  v20[4] = &protocol witness table for Float;
  *v20 = a1;
  OUTLINED_FUNCTION_25_11();
  Tensor.padded(forSizes:with:)(v11, v12);

  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_25BB5E984@<X0>(_BYTE *a2@<X8>)
{
  result = sub_25BB5F1FC();
  *a2 = result;
  return result;
}

uint64_t sub_25BB5E9BC@<X0>(_BYTE *a3@<X8>)
{
  result = sub_25BB5F1FC();
  *a3 = result;
  return result;
}

uint64_t sub_25BB5E9EC(uint64_t a1)
{
  v2 = sub_25BB5FA7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB5EA28(uint64_t a1)
{
  v2 = sub_25BB5FA7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConstantPad1D.init(from:)()
{
  OUTLINED_FUNCTION_32_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4BC8, &qword_25BCC0720);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_10_14();
  v3 = sub_25BB5FA7C();
  OUTLINED_FUNCTION_12_15(&type metadata for ConstantPad1D.CodingKeys, v4, v3);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
    return OUTLINED_FUNCTION_31_8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v19 = 0;
  OUTLINED_FUNCTION_0_27(&qword_28154BE48, MEMORY[0x277D83BB8]);
  OUTLINED_FUNCTION_49_6();
  OUTLINED_FUNCTION_13_14(v5, &v19, v6, v7, v8);
  v9 = v20;
  result = sub_25BCB768C();
  v12 = v9[2];
  if (v12)
  {
    if (v12 != 1)
    {
      v13 = v11;
      v14 = v9[4];
      v15 = v9[5];

      v16.left = v14;
      v16.right = v15;
      ConstantPad1D.init(size:value:)(v16, v13);
      OUTLINED_FUNCTION_47_0();
      v17 = OUTLINED_FUNCTION_7_18();
      v18(v17);
      __swift_destroy_boxed_opaque_existential_1(v0);
      return OUTLINED_FUNCTION_31_8();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ConstantPad1D.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4BD8, &qword_25BCC0728);
  OUTLINED_FUNCTION_2();
  v9 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v10);
  v12 = &v15[-v11];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BB5FA7C();
  sub_25BCB7B6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25BCBAE70;
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;
  v16 = v13;
  v15[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_6_25(&qword_28154BE50, MEMORY[0x277D83B90]);
  sub_25BCB779C();

  if (!v3)
  {
    v15[6] = 1;
    sub_25BCB777C();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_25BB5EE24@<X0>(uint64_t a1@<X8>)
{
  result = ConstantPad1D.init(from:)();
  if (!v1)
  {
    *a1 = result;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
  }

  return result;
}

void __swiftcall ConstantPad2D.init(size:value:)(NeuralNetworks::ConstantPad2D *__return_ptr retstr, Swift::tuple_left_Int_right_Int_top_Int_bottom_Int size, Swift::Float value)
{
  if (size.left < 0 || size.right < 0 || size.top < 0 || size.bottom < 0)
  {
    OUTLINED_FUNCTION_14_17();
    sub_25BCB70FC();
    OUTLINED_FUNCTION_2_24();
    OUTLINED_FUNCTION_22_11();
    MEMORY[0x25F876C90]();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B48, &qword_25BCC06C8);
    OUTLINED_FUNCTION_45_7(v3, v4, v3, MEMORY[0x277D84698], MEMORY[0x277D846A8], v5, v6);
    OUTLINED_FUNCTION_18_17();
    OUTLINED_FUNCTION_26_12();
    OUTLINED_FUNCTION_1_22();
    sub_25BCB74CC(v7, v8, v9, v10, v11, v12, v13, v14, v15);
    __break(1u);
  }

  else
  {
    retstr->size = size;
    retstr->value = value;
  }
}

void __swiftcall ConstantPad2D.init(size:value:)(NeuralNetworks::ConstantPad2D *__return_ptr retstr, Swift::tuple_height_Int_width_Int size, Swift::Float value)
{
  if (size.width < 0 || size.height < 0)
  {
    OUTLINED_FUNCTION_14_17();
    sub_25BCB70FC();
    OUTLINED_FUNCTION_2_24();
    OUTLINED_FUNCTION_22_11();
    MEMORY[0x25F876C90]();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B48, &qword_25BCC06C8);
    OUTLINED_FUNCTION_45_7(v3, v4, v3, MEMORY[0x277D84698], MEMORY[0x277D846A8], v5, v6);
    OUTLINED_FUNCTION_18_17();
    OUTLINED_FUNCTION_26_12();
    OUTLINED_FUNCTION_1_22();
    sub_25BCB74CC(v7, v8, v9, v10, v11, v12, v13, v14, v15);
    __break(1u);
  }

  else
  {
    retstr->size.left = size.width;
    retstr->size.right = size.width;
    retstr->size.top = size.height;
    retstr->size.bottom = size.height;
    retstr->value = value;
  }
}

void __swiftcall ConstantPad2D.init(size:value:)(NeuralNetworks::ConstantPad2D *__return_ptr retstr, Swift::Int size, Swift::Float value)
{
  if (size < 0)
  {
    OUTLINED_FUNCTION_14_17();
    sub_25BCB70FC();
    OUTLINED_FUNCTION_2_24();
    OUTLINED_FUNCTION_22_11();
    MEMORY[0x25F876C90]();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B48, &qword_25BCC06C8);
    sub_25BCB73CC();
    v3 = OUTLINED_FUNCTION_16_18();
    MEMORY[0x25F876C90](v3);
    OUTLINED_FUNCTION_26_12();
    OUTLINED_FUNCTION_1_22();
    sub_25BCB74CC(v4, v5, v6, v7, v8, v9, v10, v11, v12);
    __break(1u);
  }

  else
  {
    retstr->size.left = size;
    retstr->size.right = size;
    retstr->size.top = size;
    retstr->size.bottom = size;
    retstr->value = value;
  }
}

uint64_t ConstantPad2D.forward(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(*(*a1 + 16) + 160);
  if (!sub_25BAA80BC(v5, &unk_286D42270))
  {
    LOBYTE(v19) = v5;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v20[0] = a2;
    v20[1] = &v19;
    OUTLINED_FUNCTION_9_16();
    OUTLINED_FUNCTION_4_22();
    sub_25BADDD28(v13, v14, v15, v16, v17, v18, 467);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39D0, &qword_25BCBB950);
  inited = swift_initStackObject();
  inited[1] = xmmword_25BCBDF80;
  inited[2] = 0u;
  v8 = *v2;
  v7 = v2[1];
  inited[3] = 0u;
  inited[4] = v7;
  inited[5] = v8;
  v19 = v4;
  v9 = sub_25BAF9FC0(inited);
  swift_setDeallocating();
  v10 = *(v2 + 8);
  v20[3] = MEMORY[0x277D83A90];
  v20[4] = &protocol witness table for Float;
  LODWORD(v20[0]) = v10;
  OUTLINED_FUNCTION_29_10();
  Tensor.padded(forSizes:with:)(v9, v11);

  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_25BB5F1FC()
{
  OUTLINED_FUNCTION_33_8();
  sub_25BCB761C();
  OUTLINED_FUNCTION_39_1();
  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BB5F244@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB5F1FC();
  *a1 = result;
  return result;
}

uint64_t sub_25BB5F27C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB5F1FC();
  *a1 = result;
  return result;
}

uint64_t sub_25BB5F2AC(uint64_t a1)
{
  v2 = sub_25BB5FAD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB5F2E8(uint64_t a1)
{
  v2 = sub_25BB5FAD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConstantPad2D.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4BE0, &qword_25BCC0730);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BB5FAD0();
  sub_25BCB7B2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_0_27(&qword_28154BE48, MEMORY[0x277D83BB8]);
  OUTLINED_FUNCTION_50_3();
  sub_25BCB76AC();
  sub_25BCB768C();
  v8 = v28[2];
  if (!v8)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v8 == 1)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v8 < 3)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8 == 3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v6;
  v10 = v28[4];
  v27 = v28[5];
  v11 = v28[7];
  v12 = v28[6];

  if ((v10 & 0x8000000000000000) == 0 && (v27 & 0x8000000000000000) == 0 && (v12 & 0x8000000000000000) == 0 && (v11 & 0x8000000000000000) == 0)
  {
    v13 = OUTLINED_FUNCTION_7_1();
    v14(v13);
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    *a2 = v10;
    *(a2 + 8) = v27;
    *(a2 + 16) = v12;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    return result;
  }

LABEL_17:
  OUTLINED_FUNCTION_20_12();
  OUTLINED_FUNCTION_2_24();
  OUTLINED_FUNCTION_22_11();
  MEMORY[0x25F876C90]();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B48, &qword_25BCC06C8);
  OUTLINED_FUNCTION_54_4(v15, v16, v15, MEMORY[0x277D84698], MEMORY[0x277D846A8]);
  v17 = OUTLINED_FUNCTION_16_18();
  MEMORY[0x25F876C90](v17);
  OUTLINED_FUNCTION_26_12();
  OUTLINED_FUNCTION_1_22();
  result = sub_25BCB74CC(v18, v19, v20, v21, v22, v23, v24, v25, v26);
  __break(1u);
  return result;
}

uint64_t ConstantPad2D.encode(to:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4BF0, &qword_25BCC0738);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_36();
  v8 = OUTLINED_FUNCTION_31_8();
  __swift_project_boxed_opaque_existential_1(v8, v9);
  sub_25BB5FAD0();
  sub_25BCB7B6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v10 = swift_allocObject();
  v11 = *v1;
  v12 = v1[1];
  v10[1] = xmmword_25BCBDF80;
  v10[2] = v11;
  v10[3] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_6_25(&qword_28154BE50, MEMORY[0x277D83B90]);
  OUTLINED_FUNCTION_38_7();
  sub_25BCB779C();

  if (!v2)
  {
    sub_25BCB777C();
  }

  return (*(v6 + 8))(v3, v4);
}

double sub_25BB5F7B8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  ConstantPad2D.init(from:)(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_25BB5F818()
{
  result = qword_27FBB4B38;
  if (!qword_27FBB4B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4B38);
  }

  return result;
}

uint64_t sub_25BB5F86C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25BB5F8D8()
{
  result = qword_27FBB4B58;
  if (!qword_27FBB4B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4B58);
  }

  return result;
}

unint64_t sub_25BB5F92C()
{
  result = qword_27FBB4B70;
  if (!qword_27FBB4B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4B70);
  }

  return result;
}

unint64_t sub_25BB5F980()
{
  result = qword_27FBB4B88;
  if (!qword_27FBB4B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4B88);
  }

  return result;
}

unint64_t sub_25BB5F9D4()
{
  result = qword_27FBB4BA0;
  if (!qword_27FBB4BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4BA0);
  }

  return result;
}

unint64_t sub_25BB5FA28()
{
  result = qword_27FBB4BB8;
  if (!qword_27FBB4BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4BB8);
  }

  return result;
}

unint64_t sub_25BB5FA7C()
{
  result = qword_27FBB4BD0;
  if (!qword_27FBB4BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4BD0);
  }

  return result;
}

unint64_t sub_25BB5FAD0()
{
  result = qword_27FBB4BE8;
  if (!qword_27FBB4BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4BE8);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ConstantPad1D(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ConstantPad1D(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 20) = v3;
  return result;
}

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25BB5FBF8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 36))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BB5FC18(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 36) = v3;
  return result;
}

uint64_t sub_25BB5FC64(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_42_6(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return OUTLINED_FUNCTION_42_6((*a1 | (v4 << 8)) - 2);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_42_6((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_42_6((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_42_6(v8);
}

_BYTE *sub_25BB5FCE8(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25BB5FE18(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_6_8();
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *sub_25BB5FE64(_BYTE *result, int a2, int a3)
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

unint64_t sub_25BB5FF14()
{
  result = qword_27FBB4BF8;
  if (!qword_27FBB4BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4BF8);
  }

  return result;
}

unint64_t sub_25BB5FF6C()
{
  result = qword_27FBB4C00;
  if (!qword_27FBB4C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C00);
  }

  return result;
}

unint64_t sub_25BB5FFC4()
{
  result = qword_27FBB4C08;
  if (!qword_27FBB4C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C08);
  }

  return result;
}

unint64_t sub_25BB6001C()
{
  result = qword_27FBB4C10;
  if (!qword_27FBB4C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C10);
  }

  return result;
}

unint64_t sub_25BB60074()
{
  result = qword_27FBB4C18;
  if (!qword_27FBB4C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C18);
  }

  return result;
}

unint64_t sub_25BB600CC()
{
  result = qword_27FBB4C20;
  if (!qword_27FBB4C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C20);
  }

  return result;
}

unint64_t sub_25BB60124()
{
  result = qword_27FBB4C28;
  if (!qword_27FBB4C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C28);
  }

  return result;
}

unint64_t sub_25BB6017C()
{
  result = qword_27FBB4C30;
  if (!qword_27FBB4C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C30);
  }

  return result;
}

unint64_t sub_25BB601D4()
{
  result = qword_27FBB4C38;
  if (!qword_27FBB4C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C38);
  }

  return result;
}

unint64_t sub_25BB6022C()
{
  result = qword_27FBB4C40;
  if (!qword_27FBB4C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C40);
  }

  return result;
}

unint64_t sub_25BB60284()
{
  result = qword_27FBB4C48;
  if (!qword_27FBB4C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C48);
  }

  return result;
}

unint64_t sub_25BB602DC()
{
  result = qword_27FBB4C50;
  if (!qword_27FBB4C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C50);
  }

  return result;
}

unint64_t sub_25BB60334()
{
  result = qword_27FBB4C58;
  if (!qword_27FBB4C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C58);
  }

  return result;
}

unint64_t sub_25BB6038C()
{
  result = qword_27FBB4C60;
  if (!qword_27FBB4C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C60);
  }

  return result;
}

unint64_t sub_25BB603E4()
{
  result = qword_27FBB4C68;
  if (!qword_27FBB4C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C68);
  }

  return result;
}

unint64_t sub_25BB6043C()
{
  result = qword_27FBB4C70;
  if (!qword_27FBB4C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C70);
  }

  return result;
}

unint64_t sub_25BB60494()
{
  result = qword_27FBB4C78;
  if (!qword_27FBB4C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C78);
  }

  return result;
}

unint64_t sub_25BB604EC()
{
  result = qword_27FBB4C80;
  if (!qword_27FBB4C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C80);
  }

  return result;
}

unint64_t sub_25BB60544()
{
  result = qword_27FBB4C88;
  if (!qword_27FBB4C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C88);
  }

  return result;
}

unint64_t sub_25BB6059C()
{
  result = qword_27FBB4C90;
  if (!qword_27FBB4C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C90);
  }

  return result;
}

unint64_t sub_25BB605F4()
{
  result = qword_27FBB4C98;
  if (!qword_27FBB4C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C98);
  }

  return result;
}

unint64_t sub_25BB6064C()
{
  result = qword_27FBB4CA0;
  if (!qword_27FBB4CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4CA0);
  }

  return result;
}

unint64_t sub_25BB606A4()
{
  result = qword_27FBB4CA8;
  if (!qword_27FBB4CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4CA8);
  }

  return result;
}

unint64_t sub_25BB606FC()
{
  result = qword_27FBB4CB0;
  if (!qword_27FBB4CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4CB0);
  }

  return result;
}

ValueMetadata *OUTLINED_FUNCTION_51_6(uint64_t a1)
{

  return sub_25BC8FACC();
}

unint64_t sub_25BB607A0(uint64_t a1, uint64_t a2)
{
  v2 = sub_25BCB78FC();

  if (v2 >= 0x19)
  {
    return 25;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25BB60818@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25BB607A0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_25BB60848@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25BABE12C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for UnaryArithmeticOperation.Operator(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE8)
  {
    if (a2 + 24 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 24) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 25;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v5 = v6 - 25;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for UnaryArithmeticOperation.Operator(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE7)
  {
    v6 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
          *result = a2 + 24;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25BB609EC()
{
  result = qword_27FBB4CB8;
  if (!qword_27FBB4CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB4CC0, qword_25BCC1818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4CB8);
  }

  return result;
}

unint64_t sub_25BB60A54()
{
  result = qword_27FBB4CC8;
  if (!qword_27FBB4CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4CC8);
  }

  return result;
}

unint64_t sub_25BB60AA8(uint64_t a1)
{
  result = sub_25BB60AD0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25BB60AD0()
{
  result = qword_28154D4F0;
  if (!qword_28154D4F0)
  {
    type metadata accessor for UnaryArithmeticOperation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154D4F0);
  }

  return result;
}

void sub_25BB60B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 0;
  BYTE4(v8) = 10;
  sub_25BA97890("name", 4, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/PaddingOps.swift", 112, 2, 19, a8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v8, v9, v10, v11, vars0, vars8);
}

uint64_t sub_25BB60BAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE50;
  v2 = *(v0 + 104);
  *(v1 + 32) = *(v0 + 96);
  *(v1 + 40) = v2;
  sub_25BCB617C();
  return v1;
}

uint64_t sub_25BB60C10()
{

  sub_25BB2B680(v0 + 48);

  return v0;
}

uint64_t sub_25BB60C50()
{
  sub_25BB60C10();

  return swift_deallocClassInstance();
}

__n128 sub_25BB60CF4@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  *a1 = *(v1 + 112);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 144);
  result = *(v1 + 154);
  *(a1 + 42) = result;
  return result;
}

void sub_25BB60D80(uint64_t a1)
{
  (*(*v1 + 128))();
  sub_25BCB625C();

  sub_25BB2B624((v1 + 6), &v36);
  if (v37 > 2)
  {
    sub_25BA97060(&v36, v35);
    sub_25BAC27B0(v35, v34);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
    v8 = OUTLINED_FUNCTION_0_28(v2, v3, v4, MEMORY[0x277D83A90], v5, v6, v7);
    if (v8)
    {
      sub_25BCB7A0C();
    }

    else if (OUTLINED_FUNCTION_0_28(v8, v9, v10, MEMORY[0x277D839F8], v11, v12, v13))
    {
      v14 = v33;
      if (v33 == 0.0)
      {
        v14 = 0.0;
      }

      MEMORY[0x25F878240](*&v14);
    }

    else
    {
      sub_25BCB625C();
    }

    __swift_destroy_boxed_opaque_existential_1(v35);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    sub_25BCB625C();
  }

  v15 = v1[11];
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = (v15 + 40);
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      v19 = *(v17 - 1);
      v20 = *v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25BCBAE70;
      *(inited + 32) = v19;
      v22 = (inited + 32);
      *(inited + 40) = v20;
      v23 = *(v18 + 16);
      v24 = v23 + 2;
      if (__OFADD__(v23, 2))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v26 = *(v18 + 24) >> 1, v26 < v24))
      {
        if (v23 <= v24)
        {
          v27 = v23 + 2;
        }

        else
        {
          v27 = v23;
        }

        sub_25BA96630(isUniquelyReferenced_nonNull_native, v27, 1, v18);
        v18 = v28;
        v26 = *(v28 + 24) >> 1;
      }

      v29 = *(v18 + 16);
      if (v26 - v29 < 2)
      {
        goto LABEL_25;
      }

      *(v18 + 8 * v29 + 32) = *v22;

      v30 = *(v18 + 16);
      v31 = __OFADD__(v30, 2);
      v32 = v30 + 2;
      if (v31)
      {
        goto LABEL_26;
      }

      v17 += 2;
      *(v18 + 16) = v32;
      if (!--v16)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_23:
    sub_25BAD4C78();
  }
}

uint64_t sub_25BB61090()
{
  sub_25BB60C10();
  sub_25BA9D148(*(v0 + 176), *(v0 + 184));

  return swift_deallocClassInstance();
}

uint64_t sub_25BB610F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE40;
  v2 = *(v0 + 176);
  v3 = *(v0 + 40);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;

  return v1;
}

uint64_t sub_25BB61158(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, _OWORD *a9)
{
  v13 = *a8;
  v14 = *(a8 + 8);
  *(v9 + 176) = a4;
  if (!a3)
  {
    a1 = sub_25BAA5EA0(0x646172675F646170, 0xE800000000000000);
  }

  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = a5;
  v15 = *(a6 + 16);
  *(v9 + 48) = *a6;
  *(v9 + 64) = v15;
  *(v9 + 80) = *(a6 + 32);
  *(v9 + 88) = a7;
  *(v9 + 96) = v13;
  *(v9 + 104) = v14;
  *(v9 + 154) = *(a9 + 42);
  v16 = a9[2];
  *(v9 + 128) = a9[1];
  *(v9 + 144) = v16;
  *(v9 + 112) = *a9;
  return v9;
}

uint64_t sub_25BB61204(uint64_t a1, uint64_t a2)
{
  if (!sub_25BB07E0C(a1, a2))
  {
    v4 = sub_25BAC4018();
    if (v4 == sub_25BAC4018())
    {
      *(v2 + 176) = a2;
    }
  }

  return 1;
}

uint64_t sub_25BB6127C()
{
  sub_25BB60C10();

  return swift_deallocClassInstance();
}

uint64_t sub_25BB612DC(uint64_t a1)
{
  result = sub_25BB6138C(&qword_27FBB4510, type metadata accessor for PadGradientOperation, &unk_25BCC1A44);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB61334(uint64_t a1)
{
  result = sub_25BB6138C(&qword_27FBB4CD0, type metadata accessor for BasePadOperation, &unk_25BCC1A1C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB6138C(unint64_t *a1, void (*a2)(void), uint64_t a3)
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

uint64_t sub_25BB613F0@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_61_3();
  *a1 = result;
  return result;
}

uint64_t sub_25BB61424@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25BC68878(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_25BB61454@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25BB06270(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_25BB61484@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25BC16D20(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_25BB614BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_25BC16D30(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_25BB614F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_25BC16D94(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_25BB6153C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25BC16DF8(*a1, *v2);
  *a2 = result;
  return result;
}

void *sub_25BB615AC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_25BB615C8@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_25BC16A40(a2);
  *a1 = result;
  return result;
}

unint64_t sub_25BB615F4()
{
  result = qword_27FBB4CD8;
  if (!qword_27FBB4CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4CD8);
  }

  return result;
}

unint64_t sub_25BB6164C()
{
  result = qword_27FBB4CE0;
  if (!qword_27FBB4CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4CE0);
  }

  return result;
}

unint64_t sub_25BB616A4()
{
  result = qword_27FBB4CE8;
  if (!qword_27FBB4CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4CE8);
  }

  return result;
}

unint64_t sub_25BB616FC()
{
  result = qword_27FBB4CF0;
  if (!qword_27FBB4CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4CF0);
  }

  return result;
}

uint64_t sub_25BB61750()
{
  OUTLINED_FUNCTION_2_25();
  if (!v3)
  {
    v1 = sub_25BAA5EA0(0x74726F735F677261, 0xE800000000000000);
  }

  *(v0 + 64) = OUTLINED_FUNCTION_0_29(v1, v2, v3);
  OUTLINED_FUNCTION_1_23(2);
  return v0;
}

uint64_t sub_25BB61828()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE50;
  v2 = *(v0 + 72);
  *(v1 + 32) = *(v0 + 64);
  *(v1 + 40) = v2;
  sub_25BCB617C();
  return v1;
}

uint64_t sub_25BB6188C()
{
  OUTLINED_FUNCTION_2_25();
  if (!v4)
  {
    v2 = sub_25BAA5EA0(1953656691, 0xE400000000000000);
  }

  v5 = OUTLINED_FUNCTION_0_29(v2, v3, v4);
  v6 = *(v1 + 160);
  *(v0 + 64) = v5;
  OUTLINED_FUNCTION_1_23(v6);
  return v0;
}

uint64_t sub_25BB618E4()
{

  return v0;
}

uint64_t sub_25BB61914()
{
  sub_25BB618E4();

  return swift_deallocClassInstance();
}

uint64_t sub_25BB6197C(uint64_t a1)
{
  sub_25BCB625C();
  MEMORY[0x25F878200](*(v1 + 48));
  return sub_25BCB79EC();
}

uint64_t sub_25BB619E4(uint64_t a1)
{
  result = sub_25BB61B44(&qword_27FBB4CF8, type metadata accessor for SortOperation, &unk_25BCC1D2C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB61A3C(uint64_t a1)
{
  result = sub_25BB61B44(&qword_27FBB4D00, type metadata accessor for SortOperation, &unk_25BCC1CE8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB61A94(uint64_t a1)
{
  result = sub_25BB61B44(&qword_27FBB4D08, type metadata accessor for ArgumentSortOperation, &unk_25BCC1D9C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB61AEC(uint64_t a1)
{
  result = sub_25BB61B44(&qword_27FBB4D10, type metadata accessor for ArgumentSortOperation, &unk_25BCC1D58);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB61B44(unint64_t *a1, void (*a2)(void), uint64_t a3)
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

double sub_25BB61B9C(void *a1, uint64_t a2)
{
  v5 = *(v2 + 160);
  v6 = a2 & 0xC000000000000001;
  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  if (v6)
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
  v11 = *(v2 + 152);
  v12 = *(v2 + 160);
  v13 = 1;
  if ((v12 & 1) == 0)
  {
    v13 = 2;
  }

  if (v12 == 2)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  if (v5 == 2)
  {
    v15 = *(v2 + 24);
    v16 = *(v2 + 32);
    sub_25BCB617C();
    MEMORY[0x25F876C90](0x65657571736E755FLL, 0xEB0000000064657ALL);
    v18 = v15;
    v17 = v16;
  }

  else
  {
    v18 = *(v2 + 24);
    v17 = *(v2 + 32);
    sub_25BCB617C();
    v15 = v18;
    v16 = v17;
  }

  v19 = sub_25BB6203C(v8, v10, v11, v14, v18, v17, a1);

  if (v5 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_25BCBB6D0;
    *(v20 + 32) = sub_25BCB6A6C();
    sub_25BB50DF0();
    v21 = sub_25BCB672C();

    sub_25BCB617C();
    v22 = sub_25BB620D8(v19, v21, v15, v16, a1);

    v19 = v22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v23 = swift_allocObject();
  *&result = 1;
  *(v23 + 16) = xmmword_25BCBB6D0;
  *(v23 + 32) = v19;
  return result;
}

uint64_t sub_25BB61DCC(void *a1, uint64_t a2)
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
  sub_25BAB4D78(2uLL, v6 == 0, a2);
  if (v6)
  {
    v11 = MEMORY[0x25F8779B0](2, a2);
  }

  else
  {
    v11 = *(a2 + 48);
  }

  v12 = v11;
  v13 = *(v2 + 136);
  v14 = *(v2 + 144);
  v15 = 1;
  if ((v14 & 1) == 0)
  {
    v15 = 2;
  }

  if (v14 == 2)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  v18 = *(v2 + 24);
  v17 = *(v2 + 32);
  sub_25BCB617C();
  v19 = sub_25BB6215C(v8, v10, v12, v13, v16, v18, v17, a1);

  *(v5 + 32) = v19;
  return v5;
}

uint64_t sub_25BB61F60(uint64_t a1)
{
  result = sub_25BB61FE8(&qword_27FBB48F8, type metadata accessor for SoftmaxCrossEntropyGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB61FA4(uint64_t a1)
{
  result = sub_25BB61FE8(&qword_27FBB4900, type metadata accessor for SoftmaxCrossEntropyOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB61FE8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_25BB6203C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = sub_25BCB633C();

  v13 = [a7 softMaxCrossEntropyWithSourceTensor:a1 labelsTensor:a2 axis:a3 reductionType:a4 name:v12];

  return v13;
}

id sub_25BB620D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_25BCB633C();

  v9 = [a5 squeezeTensor:a1 axes:a2 name:v8];

  return v9;
}

id sub_25BB6215C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = sub_25BCB633C();

  v15 = [a8 softMaxCrossEntropyGradientWithIncomingGradientTensor:a1 sourceTensor:a2 labelsTensor:a3 axis:a4 reductionType:a5 name:v14];

  return v15;
}

uint64_t DataSample.init(features:labels:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_11_1();
  (*(v8 + 32))(a4);
  v10 = type metadata accessor for DataSample(0, a2, a3, v9);
  v11 = *(*(a3 - 8) + 32);
  v12 = a4 + *(v10 + 36);

  return v11(v12, a1, a3);
}

uint64_t static DataSample<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((sub_25BCB630C() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DataSample(0, a3, a4, v8);
  return sub_25BCB630C() & 1;
}

uint64_t DataSample<>.init<A>(collating:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v58 = a1;
  v59 = a6;
  v57 = a8;
  v13 = *(a7 + 8);
  v56 = sub_25BCB735C();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v14);
  v54 = v47 - v15;
  v16 = a3;
  v51 = a3;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5_4();
  v55 = v18;
  v19 = v13;
  v20 = sub_25BCB711C();
  v61 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = v47 - v21;
  v52 = v19;
  v53 = sub_25BCB735C();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v23);
  v25 = v47 - v24;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_5_4();
  v60 = v27;
  MEMORY[0x25F876E40](a4, v19);
  v68 = a2;
  v69 = v16;
  v70 = a4;
  v71 = a5;
  v28 = v59;
  v72 = v59;
  v73 = a7;
  KeyPath = swift_getKeyPath();
  v30 = swift_allocObject();
  v30[2] = a4;
  v30[3] = a5;
  v30[4] = v28;
  v30[5] = a7;
  v31 = a7;
  v30[6] = KeyPath;
  WitnessTable = swift_getWitnessTable();
  sub_25BCB75FC();

  v32 = *(v61 + 8);
  v61 += 8;
  v48 = v32;
  v32(v22, v20);
  v33 = *(a5 + 8);
  v75 = v31;
  v47[1] = MEMORY[0x277D84300];
  v34 = v53;
  v35 = swift_getWitnessTable();
  v50 = a2;
  v33(v25, v34, v35, a2, a5);
  MEMORY[0x25F876E40](a4, v52);
  v62 = a2;
  v36 = v51;
  v63 = v51;
  v64 = a4;
  v37 = v59;
  v65 = a5;
  v66 = v59;
  v67 = v31;
  v38 = swift_getKeyPath();
  v39 = swift_allocObject();
  v39[2] = a4;
  v39[3] = a5;
  v39[4] = v37;
  v39[5] = v31;
  v39[6] = v38;
  v40 = v54;
  sub_25BCB75FC();

  v48(v22, v20);
  v41 = *(v37 + 8);
  v74 = v31;
  v42 = v56;
  v43 = swift_getWitnessTable();
  v44 = v55;
  v41(v40, v42, v43, v36, v37);
  OUTLINED_FUNCTION_11_1();
  (*(v45 + 8))(v58, a4);
  return DataSample.init(features:labels:)(v44, v50, v36, v57);
}

uint64_t sub_25BB6299C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25BB62A28(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_25BB62BF0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_25BB62E80()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 8);
  swift_unknownObjectRetain();
  v3(ObjectType, v1);

  return swift_unknownObjectRelease();
}

uint64_t sub_25BB62F08()
{
  OUTLINED_FUNCTION_1_25();
  v1 = *(v0 + 56);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_0_31();
  v1(v2);
  return swift_unknownObjectRelease();
}

uint64_t sub_25BB62F84()
{
  OUTLINED_FUNCTION_1_25();
  v1 = *(v0 + 64);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_0_31();
  v1(v2);
  return swift_unknownObjectRelease();
}

uint64_t sub_25BB63000()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_25BB63028()
{
  sub_25BB63000();

  return swift_deallocClassInstance();
}

uint64_t sub_25BB630C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_20;
  }

  v6 = result;
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v22 = MEMORY[0x277D84F90];
    result = sub_25BB00B9C(0, v5 & ~(v5 >> 63), 0);
    if (a2 < v6 || v5 < 0)
    {
      goto LABEL_21;
    }

    result = v22;
    v8 = v6 + 4;
    v10 = a4;
    v9 = a5;
    v11 = a3;
    while ((v6 & 0x8000000000000000) == 0)
    {
      v12 = v8 - 4;
      if ((v8 - 4) >= *(*v11 + 16))
      {
        goto LABEL_16;
      }

      if (v12 >= *(*v10 + 16))
      {
        goto LABEL_17;
      }

      v13 = *(*v11 + 8 * v8);
      v14 = *(*v10 + 8 * v8);
      if (v14 < v13)
      {
        goto LABEL_18;
      }

      if (v12 >= *(*v9 + 16))
      {
        goto LABEL_19;
      }

      v15 = *(*v9 + 8 * v8);
      v23 = result;
      v17 = *(result + 16);
      v16 = *(result + 24);
      if (v17 >= v16 >> 1)
      {
        sub_25BB00B9C(v16 > 1, v17 + 1, 1);
        v11 = a3;
        v10 = a4;
        v9 = a5;
        result = v23;
      }

      *(result + 16) = v17 + 1;
      v18 = (result + 24 * v17);
      v18[4] = v13;
      v18[5] = v14;
      v18[6] = v15;
      ++v8;
      if (!--v5)
      {
        return result;
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
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  return result;
}

void sub_25BB63258(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v36 = MEMORY[0x277D84F90];
  sub_25BB00BBC(0, v6, 0);
  v7 = v6;
  v8 = v36;
  v35 = a1;
  if (v6)
  {
    v9 = (a1 + 32);
    v10 = (a2 + 32);
    v11 = v4;
    v12 = v5;
    while (v11)
    {
      if (!v12)
      {
        goto LABEL_27;
      }

      v13 = *v9;
      v14 = *v10;
      if (*v10 < *v9)
      {
        goto LABEL_28;
      }

      v37 = v8;
      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        sub_25BB00BBC(v15 > 1, v16 + 1, 1);
        v17 = v16 + 1;
        v8 = v37;
      }

      *(v8 + 16) = v17;
      v18 = v8 + 16 * v16;
      --v12;
      *(v18 + 32) = v13;
      *(v18 + 40) = v14;
      OUTLINED_FUNCTION_47_7();
      if (v21)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
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
  }

  else
  {
    v19 = v4;
    v20 = v5;
LABEL_15:
    v22 = a2 + 32;
    while (v19 != v7)
    {
      if (v7 >= v19)
      {
        goto LABEL_29;
      }

      if (__OFADD__(v7, 1))
      {
        goto LABEL_30;
      }

      if (v20 == v7)
      {
        return;
      }

      if (v7 >= v20)
      {
        goto LABEL_31;
      }

      v23 = *(v35 + 32 + 8 * v7);
      v24 = *(v22 + 8 * v7);
      if (v24 < v23)
      {
        goto LABEL_32;
      }

      v38 = v8;
      v25 = *(v8 + 16);
      if (v25 >= *(v8 + 24) >> 1)
      {
        v34 = v7;
        OUTLINED_FUNCTION_45_0();
        v28 = v27;
        v30 = v29;
        sub_25BB00BBC(v31, v32, v33);
        v7 = v34;
        v20 = v30;
        v19 = v28;
        v8 = v38;
      }

      *(v8 + 16) = v25 + 1;
      v26 = v8 + 16 * v25;
      *(v26 + 32) = v23;
      *(v26 + 40) = v24;
      ++v7;
    }
  }
}

void sub_25BB63448(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v29 = MEMORY[0x277D84F90];
  sub_25BAA21EC(0, v6, 0);
  v7 = v6;
  v8 = v29;
  v28 = a1;
  if (v6)
  {
    v9 = (a1 + 32);
    v10 = (a2 + 32);
    v11 = v5;
    while (v4)
    {
      if (!v11)
      {
        goto LABEL_27;
      }

      v12 = *v9 + *v10;
      if (__OFADD__(*v9, *v10))
      {
        goto LABEL_28;
      }

      v30 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_25BAA21EC(v13 > 1, v14 + 1, 1);
        v8 = v30;
      }

      --v11;
      *(v8 + 16) = v14 + 1;
      *(v8 + 8 * v14 + 32) = v12;
      OUTLINED_FUNCTION_47_7();
      if (v16)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
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
  }

  else
  {
    v15 = v5;
LABEL_15:
    v17 = a2 + 32;
    while (v4 != v7)
    {
      if (v7 >= v4)
      {
        goto LABEL_29;
      }

      if (__OFADD__(v7, 1))
      {
        goto LABEL_30;
      }

      if (v15 == v7)
      {
        return;
      }

      if (v7 >= v15)
      {
        goto LABEL_31;
      }

      v18 = *(v28 + 32 + 8 * v7);
      v19 = *(v17 + 8 * v7);
      v20 = v18 + v19;
      if (__OFADD__(v18, v19))
      {
        goto LABEL_32;
      }

      v31 = v8;
      v21 = *(v8 + 16);
      if (v21 >= *(v8 + 24) >> 1)
      {
        v22 = v7;
        OUTLINED_FUNCTION_45_0();
        v24 = v23;
        sub_25BAA21EC(v25, v26, v27);
        v7 = v22;
        v15 = v24;
        v8 = v31;
      }

      *(v8 + 16) = v21 + 1;
      *(v8 + 8 * v21 + 32) = v20;
      ++v7;
    }
  }
}

uint64_t sub_25BB63620(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v29 = MEMORY[0x277D84F90];
  sub_25BAA21EC(0, v6, 0);
  v7 = v6;
  result = v29;
  v27 = a2;
  v28 = v4;
  v26 = a1;
  if (!v6)
  {
    v13 = v5;
    goto LABEL_14;
  }

  v9 = (a1 + 32);
  v10 = (a2 + 32);
  v11 = v7;
  v12 = v5;
  v13 = v5;
  while (v4)
  {
    if (!v12)
    {
      goto LABEL_25;
    }

    v14 = *v9 - *v10;
    if (__OFSUB__(*v9, *v10))
    {
      goto LABEL_26;
    }

    v30 = result;
    v16 = *(result + 16);
    v15 = *(result + 24);
    if (v16 >= v15 >> 1)
    {
      v24 = v7;
      v25 = v13;
      sub_25BAA21EC(v15 > 1, v16 + 1, 1);
      v7 = v24;
      v13 = v25;
      result = v30;
    }

    --v12;
    *(result + 16) = v16 + 1;
    *(result + 8 * v16 + 32) = v14;
    --v4;
    ++v10;
    ++v9;
    if (!--v11)
    {
LABEL_14:
      while (v28 != v7)
      {
        if (v7 >= v28)
        {
          goto LABEL_27;
        }

        if (__OFADD__(v7, 1))
        {
          goto LABEL_28;
        }

        if (v13 == v7)
        {
          return result;
        }

        if (v7 >= v13)
        {
          goto LABEL_29;
        }

        v17 = *(v26 + 32 + 8 * v7);
        v18 = *(v27 + 32 + 8 * v7);
        v19 = v17 - v18;
        if (__OFSUB__(v17, v18))
        {
          goto LABEL_30;
        }

        v31 = result;
        v21 = *(result + 16);
        v20 = *(result + 24);
        if (v21 >= v20 >> 1)
        {
          v22 = v7;
          v23 = v13;
          sub_25BAA21EC(v20 > 1, v21 + 1, 1);
          v7 = v22;
          v13 = v23;
          result = v31;
        }

        *(result + 16) = v21 + 1;
        *(result + 8 * v21 + 32) = v19;
        ++v7;
      }

      return result;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t Tensor.slice(lowerBounds:upperBounds:)()
{
  OUTLINED_FUNCTION_50_4();
  if (v7 && (v8 = *v1, v6 == *(*(*(v8 + 16) + 152) + 16)))
  {
    sub_25BB63258(v2, v3);
    sub_25BB638B4(v9, v8, v0);
  }

  else
  {
    result = OUTLINED_FUNCTION_25_0("Fatal error", 11, 2, 0, 0xE000000000000000, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Operations/TensorIndexing.swift", v4, v5, 11, 0);
    __break(1u);
  }

  return result;
}

uint64_t sub_25BB638B4@<X0>(int64x2_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[1].i64[0];
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v22 = MEMORY[0x277D84F90];
    v8 = OUTLINED_FUNCTION_29_0();
    result = sub_25BB00B9C(v8, v9, v10);
    v6 = v22;
    v12 = a1 + 2;
    while (1)
    {
      v13 = *v12;
      if (vmovn_s64(vcgtq_s64(*v12, vdupq_laneq_s64(*v12, 1))).u32[0])
      {
        break;
      }

      v15 = v22[2];
      v14 = v22[3];
      if (v15 >= v14 >> 1)
      {
        OUTLINED_FUNCTION_81(v14);
        OUTLINED_FUNCTION_45_0();
        v21 = v17;
        result = sub_25BB00B9C(v18, v19, v20);
        v13 = v21;
      }

      v22[2] = v15 + 1;
      v16 = &v22[3 * v15];
      v16[2] = v13;
      v16[3].i64[0] = 1;
      ++v12;
      if (!--v5)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_25BB63B88(v6, a2, a3);
  }

  return result;
}

uint64_t Tensor.slice<A>(at:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *x8_0@<X8>)
{
  v8 = *v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4D18, &unk_25BCC1F70);
  v11 = sub_25BAB2B20(sub_25BB63B68, 0, a2, v9, MEMORY[0x277D84A98], a3, MEMORY[0x277D84AC0], v10);
  sub_25BB63B88(v11, v8, x8_0);
}

uint64_t Tensor.slice(lowerBounds:sizes:)()
{
  OUTLINED_FUNCTION_50_4();
  if (v7 && (v8 = *v1, v6 == *(*(*(*v1 + 16) + 152) + 16)))
  {
    sub_25BB63448(v2, v3);
    v10 = v9;
    v11 = sub_25BCB617C();
    sub_25BB63258(v11, v10);
    v13 = v12;

    sub_25BB638B4(v13, v8, v0);
  }

  else
  {
    result = OUTLINED_FUNCTION_25_0("Fatal error", 11, 2, 0, 0xE000000000000000, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Operations/TensorIndexing.swift", v4, v5, 24, 0);
    __break(1u);
  }

  return result;
}

void *sub_25BB63B68@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  if (v2 < *result)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
    a2[1] = v2;
    a2[2] = 1;
  }

  return result;
}

uint64_t sub_25BB63B88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a2 + 16);
  if (*(*(v4 + 152) + 16))
  {
    v5 = a2;
    v7 = a1[2];
    v8 = a1 + 4;
    v9 = a1 + 5;
    v10 = v7 + 1;
    while (--v10)
    {
      v12 = *(v9 - 1);
      v11 = *v9;
      v9 += 3;
      if (v12 == v11)
      {
        *&v67[0] = MEMORY[0x277D84F90];
        sub_25BAA21EC(0, v7, 0);
        v13 = *&v67[0];
        v14 = a1 + 5;
        while (1)
        {
          v15 = *(v14 - 1);
          v16 = *v14 - v15;
          if (__OFSUB__(*v14, v15))
          {
            break;
          }

          *&v67[0] = v13;
          v18 = *(v13 + 16);
          v17 = *(v13 + 24);
          if (v18 >= v17 >> 1)
          {
            sub_25BAA21EC(v17 > 1, v18 + 1, 1);
            v13 = *&v67[0];
          }

          v14 += 3;
          *(v13 + 16) = v18 + 1;
          *(v13 + 8 * v18 + 32) = v16;
          if (!--v7)
          {
            v75[0] = v13;
            v72[0] = *(v4 + 160);
            v68 = 0;
            memset(v67, 0, sizeof(v67));
            return sub_25BC03F70();
          }
        }

        __break(1u);
        goto LABEL_32;
      }
    }

    v65 = a3;
    v19 = MEMORY[0x277D84F90];
    v66 = *(a2 + 16);
    if (v7)
    {
      *&v67[0] = MEMORY[0x277D84F90];
      sub_25BAA21EC(0, v7, 0);
      v20 = *&v67[0];
      v21 = *(*&v67[0] + 16);
      v22 = v7;
      do
      {
        v24 = *v8;
        v8 += 3;
        v23 = v24;
        *&v67[0] = v20;
        v25 = *(v20 + 24);
        if (v21 >= v25 >> 1)
        {
          sub_25BAA21EC(v25 > 1, v21 + 1, 1);
          v20 = *&v67[0];
        }

        *(v20 + 16) = v21 + 1;
        *(v20 + 8 * v21++ + 32) = v23;
        --v22;
      }

      while (v22);
      *&v67[0] = v19;
      sub_25BAA21EC(0, v7, 0);
      v27 = v19;
      v28 = *(v19 + 16);
      v29 = a1 + 5;
      v30 = v7;
      do
      {
        v32 = *v29;
        v29 += 3;
        v31 = v32;
        *&v67[0] = v27;
        v33 = *(v27 + 24);
        if (v28 >= v33 >> 1)
        {
          sub_25BAA21EC(v33 > 1, v28 + 1, 1);
          v27 = *&v67[0];
        }

        *(v27 + 16) = v28 + 1;
        *(v27 + 8 * v28++ + 32) = v31;
        --v30;
      }

      while (v30);
      *&v67[0] = v19;
      sub_25BAA21EC(0, v7, 0);
      v34 = *(v19 + 16);
      v35 = a1 + 6;
      do
      {
        v37 = *v35;
        v35 += 3;
        v36 = v37;
        *&v67[0] = v19;
        v38 = *(v19 + 24);
        if (v34 >= v38 >> 1)
        {
          sub_25BAA21EC(v38 > 1, v34 + 1, 1);
          v19 = *&v67[0];
        }

        *(v19 + 16) = v34 + 1;
        *(v19 + 8 * v34++ + 32) = v36;
        --v7;
      }

      while (v7);
      v5 = a2;
    }

    else
    {
      v27 = MEMORY[0x277D84F90];
      v20 = MEMORY[0x277D84F90];
    }

    sub_25BCA3D28();
    v40 = *&v67[0];
    if (!*&v67[0])
    {
      result = sub_25BCB74CC("Fatal error", 11, 2, 0xD000000000000030, 0x800000025BCDC4F0, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Operations/TensorIndexing.swift", 107, 2, 67);
      goto LABEL_34;
    }

    *&v67[0] = v5;
    v41 = Tensor.scalarType.getter(v39);
    v43 = v42;
    v44 = v5;
    v45 = *(v42 + 32);

    v46 = v45(&v74, v41, v43);
    v73 = v40;
    *&v67[0] = v44;
    Tensor.scalarType.getter(v46);
    (*(v47 + 32))(v75);
    v48 = sub_25BAA80BC(v75[0], &unk_286D42270);
    if (v48)
    {
      v49 = *(v66 + 152);
      *&v67[0] = v44;
      v50 = Tensor.scalarType.getter(v48);
      v52 = v51;
      v53 = swift_allocObject();
      v53[2] = v20;
      v53[3] = v27;
      v53[4] = v19;
      v53[5] = v49;
      v53[6] = v50;
      v53[7] = v52;
      sub_25BCB617C();
      sub_25BCB617C();
      sub_25BCB617C();
      sub_25BCB617C();
      v54 = sub_25BAAF074(sub_25BB66DF8, v53);
      v56 = v55;
    }

    else
    {
      v54 = 0;
      v56 = 0;
    }

    v72[55] = 0;
    v75[0] = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/SliceOps.swift";
    v75[1] = 110;
    v76 = 2;
    v77 = xmmword_25BCC1F50;
    v78 = "init(id:operand:starts:ends:strides:resultDescriptor:creationSite:backward:)";
    v79 = 76;
    v80 = 2;
    type metadata accessor for SliceOperation();
    swift_allocObject();
    v57 = sub_25BCA2B84(0, 0, 0, v66, v20, v27, v19, &v73, v75, v54, v56);
    sub_25BAA486C(v66 + 168, v72, &qword_27FBB6730, &qword_25BCBC4B0);
    sub_25BAA486C(v72, v71, &qword_27FBB6730, &qword_25BCBC4B0);
    type metadata accessor for ContextManager();
    swift_retain_n();
    sub_25BAA49B8();
    sub_25BAA4A5C(v67);

    v58 = v70;

    sub_25BAA4AF4(v67);
    sub_25BAA49B8();
    sub_25BAA4A5C(v67);

    v59 = v69;

    sub_25BAA4AF4(v67);
    type metadata accessor for TensorRepresentation();
    v60 = swift_allocObject();
    LOBYTE(v67[0]) = 1;
    v61 = sub_25BC0D8D4(v57, 0, v71, 0x100000000, v58, v59, v60);
    type metadata accessor for TensorHandle();
    v62 = swift_allocObject();
    *(v62 + 16) = v61;

    sub_25BAA6EB0();

    result = sub_25BAA6F5C(v72, &qword_27FBB6730, &qword_25BCBC4B0);
    *v65 = v62;
  }

  else
  {
LABEL_32:
    result = sub_25BCB74CC("Fatal error", 11, 2, 0xD000000000000033, 0x800000025BCDC4B0, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Operations/TensorIndexing.swift", 107, 2, 52);
LABEL_34:
    __break(1u);
  }

  return result;
}

uint64_t Tensor.slice<A>(at:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *v3;
  if (!*(*(*(*v3 + 16) + 152) + 16))
  {
    v68 = 0;
    v67 = 52;
    OUTLINED_FUNCTION_7_0();
LABEL_12:
    result = OUTLINED_FUNCTION_25_0(v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
    __break(1u);
    return result;
  }

  v8 = sub_25BCB667C();
  if (v8)
  {
    v80[0] = sub_25BAB2B20(sub_25BB64720, 0, a1, MEMORY[0x277D83B88], MEMORY[0x277D84A98], a2, MEMORY[0x277D84AC0], v15);
    v77[0] = *(*(v5 + 16) + 160);
    v73 = 0;
    memset(v72, 0, sizeof(v72));
    return sub_25BC03F70();
  }

  v71 = a3;
  v17 = OUTLINED_FUNCTION_9_17(v8, v9, v10, v11, v12, v13, v14, v15);
  v25 = OUTLINED_FUNCTION_9_17(v17, v18, v19, v20, v21, v22, v23, v24);
  v33 = OUTLINED_FUNCTION_9_17(v25, v26, v27, v28, v29, v30, v31, v32);
  v69 = v17;
  sub_25BCA3D28();
  v35 = *&v72[0];
  if (!*&v72[0])
  {
    OUTLINED_FUNCTION_18();
    v67 = 67;
    OUTLINED_FUNCTION_7_0();
    v62 = 0xD000000000000030;
    goto LABEL_12;
  }

  v36 = *(v5 + 16);
  *&v72[0] = v5;
  v37 = Tensor.scalarType.getter(v34);
  v39 = v38;
  v40 = *(v38 + 32);
  v70 = v36;

  v41 = v40(&v79, v37, v39);
  v78 = v35;
  *&v72[0] = v5;
  Tensor.scalarType.getter(v41);
  (*(v42 + 32))(v80);
  v43 = sub_25BAA80BC(v80[0], &unk_286D42270);
  if (v43)
  {
    v44 = *(*(v5 + 16) + 152);
    *&v72[0] = v5;
    v45 = Tensor.scalarType.getter(v43);
    v47 = v46;
    v48 = swift_allocObject();
    v49 = v69;
    v48[2] = v69;
    v48[3] = v25;
    v48[4] = v33;
    v48[5] = v44;
    v48[6] = v45;
    v48[7] = v47;
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    v50 = sub_25BAAF074(sub_25BB66B8C, v48);
    v52 = v51;
  }

  else
  {
    v50 = 0;
    v52 = 0;
    v49 = v69;
  }

  v77[55] = 0;
  v80[0] = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/SliceOps.swift";
  v80[1] = 110;
  v81 = 2;
  v82 = xmmword_25BCC1F50;
  v83 = "init(id:operand:starts:ends:strides:resultDescriptor:creationSite:backward:)";
  v84 = 76;
  v85 = 2;
  type metadata accessor for SliceOperation();
  swift_allocObject();
  v53 = sub_25BCA2B84(0, 0, 0, v70, v49, v25, v33, &v78, v80, v50, v52);
  sub_25BAA486C(*(v5 + 16) + 168, v77, &qword_27FBB6730, &qword_25BCBC4B0);
  sub_25BAA486C(v77, v76, &qword_27FBB6730, &qword_25BCBC4B0);
  type metadata accessor for ContextManager();
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(v72);

  v54 = v75;

  sub_25BAA4AF4(v72);
  sub_25BAA49B8();
  sub_25BAA4A5C(v72);

  v55 = v74;

  sub_25BAA4AF4(v72);
  type metadata accessor for TensorRepresentation();
  v56 = swift_allocObject();
  LOBYTE(v72[0]) = 1;
  v57 = sub_25BC0D8D4(v53, 0, v76, 0x100000000, v54, v55, v56);
  type metadata accessor for TensorHandle();
  v58 = swift_allocObject();
  *(v58 + 16) = v57;

  sub_25BAA6EB0();

  result = sub_25BAA6F5C(v77, &qword_27FBB6730, &qword_25BCBC4B0);
  *v71 = v58;
  return result;
}

void *sub_25BB64720@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  if (__OFSUB__(v2, *result))
  {
    __break(1u);
  }

  else
  {
    *a2 = v2 - *result;
  }

  return result;
}

uint64_t sub_25BB64750(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 16))
  {
    if (*(result + 16))
    {
      v20 = *(*(result + 32) + 16);
      v21 = *(result + 32);
      v19 = *(a8 + 32);

      sub_25BCB617C();
      sub_25BCB617C();
      sub_25BCB617C();
      sub_25BCB617C();
      v19(v23, a7, a8);
      v22 = a6;
      v33 = 0;
      v26 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/SliceOps.swift";
      v27 = 110;
      v28 = 2;
      v29 = xmmword_25BCC1F60;
      v30 = "init(id:gradientOperand:operand:starts:ends:strides:resultDescriptor:creationSite:)";
      v31 = 83;
      v32 = 2;
      type metadata accessor for SliceGradientOperation();
      swift_allocObject();
      v11 = sub_25BCA2C4C(0, 0, 0, v20);
      sub_25BAA486C(*(v21 + 16) + 168, v25, &qword_27FBB6730, &qword_25BCBC4B0);
      sub_25BAA486C(v25, v24, &qword_27FBB6730, &qword_25BCBC4B0);
      type metadata accessor for ContextManager();
      swift_retain_n();
      sub_25BAA49B8();
      sub_25BAA4A5C(&v22);

      v12 = v23[9];

      sub_25BAA4AF4(&v22);
      sub_25BAA49B8();
      sub_25BAA4A5C(&v22);

      v13 = v23[8];

      sub_25BAA4AF4(&v22);
      type metadata accessor for TensorRepresentation();
      v14 = swift_allocObject();
      LOBYTE(v22) = 1;
      v15 = sub_25BC0DB70(v11, 0, v24, 0x100000000, v12, v13, v14);
      type metadata accessor for TensorHandle();
      v16 = swift_allocObject();
      *(v16 + 16) = v15;

      sub_25BAA6EB0();

      sub_25BAA6F5C(v25, &qword_27FBB6730, &qword_25BCBC4B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_25BCBAE50;
      *(v17 + 32) = v16;

      *(v17 + 40) = sub_25BAC42B0();
      *(v17 + 48) = v18;

      return v17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

__n128 TensorRange.tensorRange.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  v3 = v1[1].n128_u8[8];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

BOOL static TensorRange.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = *(a2 + 24);
  switch(*(a1 + 24))
  {
    case 1:
      if (v8 != 1)
      {
        return 0;
      }

      return v2 == v5 && v3 == v6 && v4 == v7;
    case 2:
      if (v8 != 2)
      {
        return 0;
      }

      return v2 == v5 && v3 == v6 && v4 == v7;
    case 3:
      if (v8 != 3)
      {
        return 0;
      }

      return v2 == v5 && v3 == v6;
    case 4:
      if (v8 != 4)
      {
        return 0;
      }

      return v2 == v5 && v3 == v6;
    case 5:
      if (v8 != 5)
      {
        return 0;
      }

      return v2 == v5 && v3 == v6;
    case 6:
      v12 = v4 | v3;
      if (!(v12 | v2))
      {
        v16 = v7 | v6 | v5;
        return v8 == 6 && v16 == 0;
      }

      if (v2 == 1 && v12 == 0)
      {
        v14 = v7 | v6;
        v15 = v8 == 6 && v5 == 1;
      }

      else
      {
        v14 = v7 | v6;
        v15 = v8 == 6 && v5 == 2;
      }

      return v15 && v14 == 0;
    default:
      if (*(a2 + 24))
      {
        return 0;
      }

      return v2 == v5;
  }
}

uint64_t Int.tensorRange.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = result;
  *(a2 + 24) = 0;
  return result;
}

uint64_t Range<>.tensorRange.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
  *(a3 + 24) = 1;
  return result;
}

void ClosedRange<>.tensorRange.getter(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = 1;
  OUTLINED_FUNCTION_22_12(a1);
}

void PartialRangeFrom<>.tensorRange.getter(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  *a1 = a2;
  *(a1 + 8) = xmmword_25BCC06A0;
  OUTLINED_FUNCTION_22_12(a1);
}

void PartialRangeUpTo<>.tensorRange.getter(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  *a1 = a2;
  *(a1 + 8) = xmmword_25BCC06A0;
  OUTLINED_FUNCTION_22_12(a1);
}

void PartialRangeThrough<>.tensorRange.getter(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  *a1 = a2;
  *(a1 + 8) = xmmword_25BCC06A0;
  OUTLINED_FUNCTION_22_12(a1);
}

uint64_t Tensor.IndexPath.init(begin:end:strides:beginMask:endMask:ellipsisMask:newAxisMask:squeezeAxisMask:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t Tensor.subscript.getter@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v46 = a2;
  v45 = *v3;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v56 = MEMORY[0x277D84F90];
    sub_25BB00C00(0, v6, 0);
    v7 = v56;
    v9 = a1 + 32;
    do
    {
      sub_25BAA486C(v9, v57, &qword_27FBB4D20, &unk_25BCC1F80);
      sub_25BAA486C(v57, v53, &qword_27FBB4D20, &unk_25BCC1F80);
      v10 = v54;
      if (v54)
      {
        v5 = v55;
        __swift_project_boxed_opaque_existential_1(v53, v54);
        OUTLINED_FUNCTION_43_6();
        v11(v10, v5);
        v12 = sub_25BAA6F5C(v57, &qword_27FBB4D20, &unk_25BCC1F80);
        OUTLINED_FUNCTION_41_7(v12, v13, v14, v15, v16, v17, v18, v19, v43, v44, v45, v46, v47.n128_i64[0], v47.n128_i64[1], v48, v49, v50, v51, v52);
      }

      else
      {
        sub_25BAA6F5C(v57, &qword_27FBB4D20, &unk_25BCC1F80);
        sub_25BAA6F5C(v53, &qword_27FBB4D20, &unk_25BCC1F80);
        OUTLINED_FUNCTION_49_7();
      }

      v56 = v7;
      v21 = *(v7 + 16);
      v20 = *(v7 + 24);
      v4 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v22 = OUTLINED_FUNCTION_81(v20);
        sub_25BB00C00(v22, v21 + 1, 1);
        v7 = v56;
      }

      *(v7 + 16) = v4;
      OUTLINED_FUNCTION_48_5((v7 + 32 * v21), v43, v44, v45, v46, v47);
      v9 += 40;
      --v6;
    }

    while (v6);
  }

  *v57 = &unk_286D44720;
  sub_25BC0358C(v7);
  v23 = *v57;
  if (*(*v57 + 16))
  {
    v24 = MEMORY[0x277D84F90];
    do
    {
      OUTLINED_FUNCTION_46_6();
      v25 = v25 && (v2 | v5 | v4) == 0;
      if (v25)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v57 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_23();
          v27 = OUTLINED_FUNCTION_8_0();
          sub_25BB00C00(v27, v28, v29);
          v24 = *v57;
        }

        OUTLINED_FUNCTION_27_11();
        if (v31)
        {
          v32 = OUTLINED_FUNCTION_81(v30);
          OUTLINED_FUNCTION_40_9(v32);
          v24 = *v57;
        }

        OUTLINED_FUNCTION_32_8();
      }

      OUTLINED_FUNCTION_34_9();
    }

    while (!v25);
  }

  OUTLINED_FUNCTION_39_8();
  if (v2 > 1)
  {
    OUTLINED_FUNCTION_18();
    result = OUTLINED_FUNCTION_1_26("Fatal error", "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Operations/TensorIndexing.swift", v42, 212, v44);
    __break(1u);
  }

  else
  {
    v33 = sub_25BB64F00(v23, v57);
    OUTLINED_FUNCTION_54_5(v33, v34, v35, v36, v37, v38, v39, v40, v43, v44, v45, v46, v47.n128_i64[0], v47.n128_i64[1], v48, v49, v50, v51, v52, v53[0], v53[1], v53[2], v54, v55, v56);
    return sub_25BB66B90(v57);
  }

  return result;
}

uint64_t sub_25BB64F00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_118;
  }

  v5 = (a1 + 56);
  v6 = MEMORY[0x277D84F90];
  v7 = *(a1 + 16);
  do
  {
    v8 = *(v5 - 3);
    v9 = *(v5 - 2);
    v10 = *(v5 - 1);
    if (*v5 == 6 && (v10 | v9 | v8) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_23();
        v12 = OUTLINED_FUNCTION_8_0();
        sub_25BB00C00(v12, v13, v14);
      }

      OUTLINED_FUNCTION_27_11();
      if (v16)
      {
        v18 = OUTLINED_FUNCTION_81(v15);
        OUTLINED_FUNCTION_40_9(v18);
      }

      *(v6 + 16) = v2;
      v17 = v6 + 32 * v3;
      *(v17 + 32) = v8;
      *(v17 + 40) = v9;
      *(v17 + 48) = v10;
      *(v17 + 56) = 6;
    }

    v5 += 32;
    --v7;
  }

  while (v7);
  OUTLINED_FUNCTION_39_8();
  if (v5 >= 2)
  {
    v114 = 0;
    v113 = 355;
    OUTLINED_FUNCTION_7_0();
    goto LABEL_120;
  }

  v19 = *(a1 + 16);
  v20 = sub_25BAC0E14(0, v19);
  v21 = sub_25BAC0E14(0, v19);
  v22 = sub_25BAC0E14(1, v19);
  v120 = 0;
  v121 = 0;
  v118 = 0;
  v119 = 0;
  v117 = 0;
  v23 = 0;
  v24 = (a1 + 56);
  while (2)
  {
    v25 = *(v24 - 3);
    v26 = *(v24 - 2);
    v27 = *(v24 - 1);
    switch(*v24)
    {
      case 0:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25BAA2110(v20, v28, v29, v30);
          v20 = v93;
        }

        OUTLINED_FUNCTION_33_9();
        if (v16)
        {
          goto LABEL_105;
        }

        OUTLINED_FUNCTION_52_5();
        if (__OFADD__(v25, 1))
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25BAA2110(v21, v31, v32, v33);
          v21 = v99;
        }

        OUTLINED_FUNCTION_38_8();
        if (v16)
        {
          goto LABEL_113;
        }

        OUTLINED_FUNCTION_51_7();
        OUTLINED_FUNCTION_18_18();
        v120 |= v34;
        goto LABEL_98;
      case 1:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25BAA2110(v20, v57, v58, v59);
          v20 = v94;
        }

        OUTLINED_FUNCTION_33_9();
        if (v16)
        {
          goto LABEL_106;
        }

        OUTLINED_FUNCTION_52_5();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25BAA2110(v21, v60, v61, v62);
          v21 = v97;
        }

        OUTLINED_FUNCTION_38_8();
        if (v16)
        {
          goto LABEL_109;
        }

        *(v21 + 8 * v23 + 32) = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25BAA2110(v22, v63, v64, v65);
          v22 = v100;
        }

        OUTLINED_FUNCTION_37_6();
        if (!v16)
        {
          goto LABEL_97;
        }

        goto LABEL_114;
      case 2:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25BAA2110(v20, v41, v42, v43);
          v20 = v90;
        }

        OUTLINED_FUNCTION_33_9();
        if (!v16)
        {
          OUTLINED_FUNCTION_52_5();
          if (v26 == -1)
          {
            OUTLINED_FUNCTION_18_18();
            v121 |= v85;
          }

          else
          {
            if (__OFADD__(v26, 1))
            {
              goto LABEL_116;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_25BAA2110(v21, v44, v45, v46);
              v21 = v103;
            }

            OUTLINED_FUNCTION_38_8();
            if (v16)
            {
              goto LABEL_117;
            }

            OUTLINED_FUNCTION_51_7();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_25BAA2110(v22, v86, v87, v88);
            v22 = v102;
          }

          OUTLINED_FUNCTION_37_6();
          if (v16)
          {
            goto LABEL_115;
          }

LABEL_97:
          *(v22 + 8 * v23 + 32) = v27;
LABEL_98:
          ++v23;
          v24 += 32;
          if (v4 == v23)
          {

            *a2 = v20;
            a2[1] = v21;
            a2[2] = v22;
            a2[3] = v119;
            a2[4] = v121;
            a2[5] = v117;
            a2[6] = v118;
            a2[7] = v120;
            return result;
          }

          continue;
        }

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
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        OUTLINED_FUNCTION_18();
        v113 = 354;
        OUTLINED_FUNCTION_7_0();
        v112 = 0xD00000000000002CLL;
LABEL_120:
        result = OUTLINED_FUNCTION_25_0(v105, v106, v107, v112, v108, v109, v110, v111, v113, v114);
        __break(1u);
        return result;
      case 3:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25BAA2110(v20, v47, v48, v49);
          v20 = v91;
        }

        OUTLINED_FUNCTION_33_9();
        if (v16)
        {
          goto LABEL_103;
        }

        OUTLINED_FUNCTION_52_5();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25BAA2110(v22, v50, v51, v52);
          v22 = v96;
        }

        OUTLINED_FUNCTION_37_6();
        if (v16)
        {
          goto LABEL_110;
        }

        *(v22 + 8 * v23 + 32) = v26;
LABEL_53:
        OUTLINED_FUNCTION_18_18();
        v121 |= v56;
        goto LABEL_98;
      case 4:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25BAA2110(v21, v35, v36, v37);
          v21 = v89;
        }

        OUTLINED_FUNCTION_38_8();
        if (v16)
        {
          goto LABEL_102;
        }

        OUTLINED_FUNCTION_51_7();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25BAA2110(v22, v38, v39, v40);
          v22 = v95;
        }

        OUTLINED_FUNCTION_37_6();
        if (!v16)
        {
          goto LABEL_72;
        }

        goto LABEL_107;
      case 5:
        if (__OFADD__(v25, 1))
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25BAA2110(v21, v66, v67, v68);
          v21 = v98;
        }

        OUTLINED_FUNCTION_38_8();
        if (v16)
        {
          goto LABEL_111;
        }

        OUTLINED_FUNCTION_51_7();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25BAA2110(v22, v69, v70, v71);
          v22 = v101;
        }

        OUTLINED_FUNCTION_37_6();
        if (v16)
        {
          goto LABEL_112;
        }

LABEL_72:
        *(v22 + 8 * v23 + 32) = v26;
        OUTLINED_FUNCTION_18_18();
        v119 |= v72;
        goto LABEL_98;
      case 6:
        v73 = v27 | v26 | v25;
        v74 = 1 << v23;
        if (v23 >= 0x40)
        {
          v74 = 0;
        }

        v76 = v117;
        v75 = v118;
        v77 = v74 | v117;
        v78 = 1 << v23;
        if (v23 >= 0x40)
        {
          v78 = 0;
        }

        v79 = v78 | v118;
        v80 = 1 << v23;
        if (v23 >= 0x40)
        {
          v80 = 0;
        }

        v81 = v120;
        v82 = v80 | v120;
        v83 = v25 == 1 && (v27 | v26) == 0;
        if (v83)
        {
          v84 = v120;
        }

        else
        {
          v84 = v82;
        }

        if (!v83)
        {
          v79 = v118;
        }

        if (v73)
        {
          v81 = v84;
        }

        v120 = v81;
        if (v73)
        {
          v75 = v79;
        }

        else
        {
          v76 = v77;
        }

        v117 = v76;
        v118 = v75;
        goto LABEL_98;
      default:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25BAA2110(v20, v53, v54, v55);
          v20 = v92;
        }

        OUTLINED_FUNCTION_33_9();
        if (v16)
        {
          goto LABEL_104;
        }

        *(v20 + 8 * v23 + 32) = 0;
        goto LABEL_53;
    }
  }
}

uint64_t sub_25BB654CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(*a1 + 16);
  if (v2 == *(a1[1] + 16) && v2 == *(a1[2] + 16))
  {
    return sub_25BB66154(a1, a2);
  }

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_7_0();
  result = OUTLINED_FUNCTION_25_0(v4, v5, v6, 0xD000000000000044, v7, v8, v9, v10, 275, v11);
  __break(1u);
  return result;
}

uint64_t Tensor.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_26_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F70, &qword_25BCBBE98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE70;
  sub_25BAA486C(a1, v85, &qword_27FBB4D20, &unk_25BCC1F80);
  v10 = v86;
  if (v86)
  {
    v11 = v87;
    __swift_project_boxed_opaque_existential_1(v85, v86);
    OUTLINED_FUNCTION_4_23();
    v13 = v12(v10, v11);
    v21 = OUTLINED_FUNCTION_6_26(v13, v14, v15, v16, v17, v18, v19, v20, v70, v71, v72, v73, v74, v75, v76.n128_i64[0], v76.n128_i64[1], v77, v78, v79, v80, v81);
    OUTLINED_FUNCTION_21_13(v22, v21);
  }

  else
  {
    sub_25BAA6F5C(v85, &qword_27FBB4D20, &unk_25BCC1F80);
    OUTLINED_FUNCTION_19_14();
  }

  *(inited + 64) = 0;
  *(inited + 72) = 0;
  *(inited + 80) = 0;
  *(inited + 88) = 6;
  v23 = *(a4 + 16);
  v24 = MEMORY[0x277D84F90];
  if (v23)
  {
    v73 = inited;
    v84 = MEMORY[0x277D84F90];
    v25 = OUTLINED_FUNCTION_29_0();
    sub_25BB00C00(v25, v26, v27);
    v24 = v84;
    v28 = a4 + 32;
    v4 = &unk_25BCC1F80;
    do
    {
      OUTLINED_FUNCTION_11_21();
      sub_25BAA486C(v29, v30, v31, v32);
      OUTLINED_FUNCTION_11_21();
      sub_25BAA486C(v33, v34, v35, v36);
      if (v82)
      {
        v6 = v83;
        __swift_project_boxed_opaque_existential_1(&v81, v82);
        v37 = OUTLINED_FUNCTION_5_22();
        v38(v37);
        v39 = OUTLINED_FUNCTION_14_18();
        OUTLINED_FUNCTION_17_17(v39, v40, v41, v42, v43, v44, v45, v46, v70, v71, v72, v73, v74, v75, v76.n128_i64[0], v76.n128_i64[1], v77, v78, v79, v80);
      }

      else
      {
        OUTLINED_FUNCTION_14_18();
        OUTLINED_FUNCTION_24_8(&v81);
        OUTLINED_FUNCTION_16_19();
      }

      v84 = v24;
      v48 = *(v24 + 16);
      v47 = *(v24 + 24);
      v5 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        v49 = OUTLINED_FUNCTION_81(v47);
        OUTLINED_FUNCTION_42_7(v49);
        v24 = v84;
      }

      *(v24 + 16) = v5;
      OUTLINED_FUNCTION_15_15((v24 + 32 * v48), v70, v71, v72, v73, v74, v75, v76);
      v28 += 40;
      --v23;
    }

    while (v23);
    inited = v73;
  }

  v85[0] = inited;
  sub_25BC0358C(v24);
  v50 = v85[0];
  if (*(v85[0] + 16))
  {
    v51 = MEMORY[0x277D84F90];
    do
    {
      OUTLINED_FUNCTION_12_16();
      v52 = v52 && (v6 | v5 | v4) == 0;
      if (v52)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v85[0] = v51;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_23();
          v54 = OUTLINED_FUNCTION_8_0();
          sub_25BB00C00(v54, v55, v56);
          v51 = v85[0];
        }

        OUTLINED_FUNCTION_28_10();
        if (v58)
        {
          v59 = OUTLINED_FUNCTION_81(v57);
          OUTLINED_FUNCTION_40_9(v59);
          v51 = v85[0];
        }

        OUTLINED_FUNCTION_10_15();
      }

      OUTLINED_FUNCTION_34_9();
    }

    while (!v52);
  }

  OUTLINED_FUNCTION_39_8();
  if (inited > 1)
  {
    OUTLINED_FUNCTION_18();
    result = OUTLINED_FUNCTION_1_26("Fatal error", "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Operations/TensorIndexing.swift", v69, 226, v71);
    __break(1u);
  }

  else
  {
    v60 = sub_25BB64F00(v50, v85);
    OUTLINED_FUNCTION_20_13(v60, v61, v62, v63, v64, v65, v66, v67, v70, v71, v72, v73, v74, v75);
    return sub_25BB66B90(v85);
  }

  return result;
}

uint64_t Tensor.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_26_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F70, &qword_25BCBBE98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE90;
  sub_25BAA486C(a1, v97, &qword_27FBB4D20, &unk_25BCC1F80);
  v13 = v98;
  if (v98)
  {
    v14 = v99;
    __swift_project_boxed_opaque_existential_1(v97, v98);
    OUTLINED_FUNCTION_4_23();
    v16 = v15(v13, v14);
    v24 = OUTLINED_FUNCTION_6_26(v16, v17, v18, v19, v20, v21, v22, v23, v82, v83, v84, v85, v86, v87, v88.n128_i64[0], v88.n128_i64[1], v89, v90, v91, v92, v93);
    OUTLINED_FUNCTION_21_13(v25, v24);
  }

  else
  {
    sub_25BAA6F5C(v97, &qword_27FBB4D20, &unk_25BCC1F80);
    OUTLINED_FUNCTION_19_14();
  }

  sub_25BAA486C(a2, v97, &qword_27FBB4D20, &unk_25BCC1F80);
  v26 = v98;
  if (v98)
  {
    v27 = v99;
    __swift_project_boxed_opaque_existential_1(v97, v98);
    OUTLINED_FUNCTION_4_23();
    v29 = v28(v26, v27);
    v37 = OUTLINED_FUNCTION_6_26(v29, v30, v31, v32, v33, v34, v35, v36, v82, v83, v84, v85, v86, v87, v88.n128_i64[0], v88.n128_i64[1], v89, v90, v91, v92, v93);
    OUTLINED_FUNCTION_55_2(v38, v37);
  }

  else
  {
    sub_25BAA6F5C(v97, &qword_27FBB4D20, &unk_25BCC1F80);
    OUTLINED_FUNCTION_53_6();
  }

  *(inited + 96) = 0;
  *(inited + 104) = 0;
  *(inited + 112) = 0;
  *(inited + 120) = 6;
  v39 = *(a5 + 16);
  v40 = MEMORY[0x277D84F90];
  if (v39)
  {
    OUTLINED_FUNCTION_30_9();
    v40 = v96;
    v41 = a5 + 32;
    v6 = &unk_25BCC1F80;
    do
    {
      OUTLINED_FUNCTION_11_21();
      sub_25BAA486C(v42, v43, v44, v45);
      OUTLINED_FUNCTION_11_21();
      sub_25BAA486C(v46, v47, v48, v49);
      v7 = v94;
      if (v94)
      {
        v8 = v95;
        __swift_project_boxed_opaque_existential_1(&v93, v94);
        v50 = OUTLINED_FUNCTION_5_22();
        v51(v50);
        v52 = OUTLINED_FUNCTION_14_18();
        OUTLINED_FUNCTION_17_17(v52, v53, v54, v55, v56, v57, v58, v59, v82, v83, v84, v85, v86, v87, v88.n128_i64[0], v88.n128_i64[1], v89, v90, v91, v92);
      }

      else
      {
        OUTLINED_FUNCTION_14_18();
        OUTLINED_FUNCTION_24_8(&v93);
        OUTLINED_FUNCTION_16_19();
      }

      OUTLINED_FUNCTION_44_5();
      if (v61)
      {
        v62 = OUTLINED_FUNCTION_81(v60);
        OUTLINED_FUNCTION_42_7(v62);
        v40 = v96;
      }

      *(v40 + 16) = v7;
      OUTLINED_FUNCTION_15_15((v40 + 32 * v5), v82, v83, v84, v85, v86, v87, v88);
      v41 += 40;
      --v39;
    }

    while (v39);
    inited = v85;
  }

  v97[0] = inited;
  sub_25BC0358C(v40);
  v63 = v97[0];
  if (*(v97[0] + 16))
  {
    v64 = MEMORY[0x277D84F90];
    do
    {
      OUTLINED_FUNCTION_12_16();
      v65 = v65 && (v8 | v7 | v6) == 0;
      if (v65)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v97[0] = v64;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_23();
          v67 = OUTLINED_FUNCTION_8_0();
          sub_25BB00C00(v67, v68, v69);
          v64 = v97[0];
        }

        OUTLINED_FUNCTION_28_10();
        if (v61)
        {
          v71 = OUTLINED_FUNCTION_81(v70);
          OUTLINED_FUNCTION_40_9(v71);
          v64 = v97[0];
        }

        OUTLINED_FUNCTION_10_15();
      }

      OUTLINED_FUNCTION_34_9();
    }

    while (!v65);
  }

  OUTLINED_FUNCTION_39_8();
  if (inited > 1)
  {
    OUTLINED_FUNCTION_18();
    result = OUTLINED_FUNCTION_1_26("Fatal error", "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Operations/TensorIndexing.swift", v81, 241, v83);
    __break(1u);
  }

  else
  {
    v72 = sub_25BB64F00(v63, v97);
    OUTLINED_FUNCTION_20_13(v72, v73, v74, v75, v76, v77, v78, v79, v82, v83, v84, v85, v86, v87);
    return sub_25BB66B90(v97);
  }

  return result;
}

uint64_t Tensor.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_26_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F70, &qword_25BCBBE98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBDF80;
  sub_25BAA486C(a1, v111, &qword_27FBB4D20, &unk_25BCC1F80);
  v15 = v112;
  if (v112)
  {
    v7 = v113;
    __swift_project_boxed_opaque_existential_1(v111, v112);
    OUTLINED_FUNCTION_4_23();
    v17 = v16(v15, v7);
    v25 = OUTLINED_FUNCTION_6_26(v17, v18, v19, v20, v21, v22, v23, v24, v96, v97, v98, v99, v100, v101, v102.n128_i64[0], v102.n128_i64[1], v103, v104, v105, v106, v107);
    OUTLINED_FUNCTION_21_13(v26, v25);
  }

  else
  {
    sub_25BAA6F5C(v111, &qword_27FBB4D20, &unk_25BCC1F80);
    OUTLINED_FUNCTION_19_14();
  }

  sub_25BAA486C(a2, v111, &qword_27FBB4D20, &unk_25BCC1F80);
  v27 = v112;
  if (v112)
  {
    v28 = v113;
    __swift_project_boxed_opaque_existential_1(v111, v112);
    OUTLINED_FUNCTION_4_23();
    v30 = v29(v27, v28);
    v38 = OUTLINED_FUNCTION_6_26(v30, v31, v32, v33, v34, v35, v36, v37, v96, v97, v98, v99, v100, v101, v102.n128_i64[0], v102.n128_i64[1], v103, v104, v105, v106, v107);
    OUTLINED_FUNCTION_55_2(v39, v38);
  }

  else
  {
    sub_25BAA6F5C(v111, &qword_27FBB4D20, &unk_25BCC1F80);
    OUTLINED_FUNCTION_53_6();
  }

  sub_25BAA486C(a3, v111, &qword_27FBB4D20, &unk_25BCC1F80);
  v40 = v112;
  if (v112)
  {
    v41 = v113;
    __swift_project_boxed_opaque_existential_1(v111, v112);
    OUTLINED_FUNCTION_4_23();
    v43 = v42(v40, v41);
    *(inited + 96) = OUTLINED_FUNCTION_6_26(v43, v44, v45, v46, v47, v48, v49, v50, v96, v97, v98, v99, v100, v101, v102.n128_i64[0], v102.n128_i64[1], v103, v104, v105, v106, v107);
    *(inited + 112) = v51;
    *(inited + 120) = v52;
    __swift_destroy_boxed_opaque_existential_1(v111);
  }

  else
  {
    sub_25BAA6F5C(v111, &qword_27FBB4D20, &unk_25BCC1F80);
    *(inited + 96) = 0;
    *(inited + 104) = 0;
    *(inited + 112) = 0;
    *(inited + 120) = -1;
  }

  *(inited + 128) = 0;
  *(inited + 136) = 0;
  *(inited + 144) = 0;
  *(inited + 152) = 6;
  v53 = *(a6 + 16);
  v54 = MEMORY[0x277D84F90];
  if (v53)
  {
    OUTLINED_FUNCTION_30_9();
    v54 = v110;
    v55 = a6 + 32;
    v7 = &unk_25BCC1F80;
    do
    {
      OUTLINED_FUNCTION_11_21();
      sub_25BAA486C(v56, v57, v58, v59);
      OUTLINED_FUNCTION_11_21();
      sub_25BAA486C(v60, v61, v62, v63);
      v8 = v108;
      if (v108)
      {
        v9 = v109;
        __swift_project_boxed_opaque_existential_1(&v107, v108);
        v64 = OUTLINED_FUNCTION_5_22();
        v65(v64);
        v66 = OUTLINED_FUNCTION_14_18();
        OUTLINED_FUNCTION_17_17(v66, v67, v68, v69, v70, v71, v72, v73, v96, v97, v98, v99, v100, v101, v102.n128_i64[0], v102.n128_i64[1], v103, v104, v105, v106);
      }

      else
      {
        OUTLINED_FUNCTION_14_18();
        OUTLINED_FUNCTION_24_8(&v107);
        OUTLINED_FUNCTION_16_19();
      }

      OUTLINED_FUNCTION_44_5();
      if (v75)
      {
        v76 = OUTLINED_FUNCTION_81(v74);
        OUTLINED_FUNCTION_42_7(v76);
        v54 = v110;
      }

      *(v54 + 16) = v8;
      OUTLINED_FUNCTION_15_15((v54 + 32 * v6), v96, v97, v98, v99, v100, v101, v102);
      v55 += 40;
      --v53;
    }

    while (v53);
    inited = v99;
  }

  v111[0] = inited;
  sub_25BC0358C(v54);
  v77 = v111[0];
  if (*(v111[0] + 16))
  {
    v78 = MEMORY[0x277D84F90];
    do
    {
      OUTLINED_FUNCTION_12_16();
      v79 = v79 && (v9 | v8 | v7) == 0;
      if (v79)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v111[0] = v78;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_23();
          v81 = OUTLINED_FUNCTION_8_0();
          sub_25BB00C00(v81, v82, v83);
          v78 = v111[0];
        }

        OUTLINED_FUNCTION_28_10();
        if (v75)
        {
          v85 = OUTLINED_FUNCTION_81(v84);
          OUTLINED_FUNCTION_40_9(v85);
          v78 = v111[0];
        }

        OUTLINED_FUNCTION_10_15();
      }

      OUTLINED_FUNCTION_34_9();
    }

    while (!v79);
  }

  OUTLINED_FUNCTION_39_8();
  if (inited > 1)
  {
    OUTLINED_FUNCTION_18();
    result = OUTLINED_FUNCTION_1_26("Fatal error", "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Operations/TensorIndexing.swift", v95, 258, v97);
    __break(1u);
  }

  else
  {
    v86 = sub_25BB64F00(v77, v111);
    OUTLINED_FUNCTION_20_13(v86, v87, v88, v89, v90, v91, v92, v93, v96, v97, v98, v99, v100, v101);
    return sub_25BB66B90(v111);
  }

  return result;
}

uint64_t Tensor.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a2;
  v57 = *v3;
  v6 = *(a1 + 16);
  if (v6)
  {
    v68 = MEMORY[0x277D84F90];
    v8 = OUTLINED_FUNCTION_29_0();
    sub_25BB00C00(v8, v9, v10);
    v11 = v68;
    v12 = a1 + 32;
    v4 = &unk_25BCC1F80;
    do
    {
      OUTLINED_FUNCTION_11_21();
      sub_25BAA486C(v13, v14, v15, v16);
      OUTLINED_FUNCTION_11_21();
      sub_25BAA486C(v17, v18, v19, v20);
      v21 = v66;
      if (v66)
      {
        v5 = v67;
        __swift_project_boxed_opaque_existential_1(v65, v66);
        OUTLINED_FUNCTION_43_6();
        v22(v21, v5);
        v23 = OUTLINED_FUNCTION_24_8(v69);
        OUTLINED_FUNCTION_41_7(v23, v24, v25, v26, v27, v28, v29, v30, v55, v56, v57, v58, v59.n128_i64[0], v59.n128_i64[1], v60, v61, v62, v63, v64);
      }

      else
      {
        OUTLINED_FUNCTION_24_8(v69);
        OUTLINED_FUNCTION_24_8(v65);
        OUTLINED_FUNCTION_49_7();
      }

      v68 = v11;
      v32 = *(v11 + 16);
      v31 = *(v11 + 24);
      if (v32 >= v31 >> 1)
      {
        OUTLINED_FUNCTION_81(v31);
        OUTLINED_FUNCTION_45_0();
        sub_25BB00C00(v33, v34, v35);
        v11 = v68;
      }

      *(v11 + 16) = v32 + 1;
      OUTLINED_FUNCTION_48_5((v11 + 32 * v32), v55, v56, v57, v58, v59);
      v12 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_24;
    }
  }

  v36 = MEMORY[0x277D84F90];
  do
  {
    OUTLINED_FUNCTION_46_6();
    v37 = v37 && (v2 | v5 | v4) == 0;
    if (v37)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69[0] = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_23();
        v39 = OUTLINED_FUNCTION_8_0();
        sub_25BB00C00(v39, v40, v41);
        v36 = v69[0];
      }

      OUTLINED_FUNCTION_27_11();
      if (v43)
      {
        v44 = OUTLINED_FUNCTION_81(v42);
        OUTLINED_FUNCTION_40_9(v44);
        v36 = v69[0];
      }

      OUTLINED_FUNCTION_32_8();
    }

    OUTLINED_FUNCTION_34_9();
  }

  while (!v37);
LABEL_24:
  OUTLINED_FUNCTION_39_8();
  if (v2 > 1)
  {
    OUTLINED_FUNCTION_18();
    result = OUTLINED_FUNCTION_1_26("Fatal error", "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Operations/TensorIndexing.swift", v54, 267, v56);
    __break(1u);
  }

  else
  {
    v45 = sub_25BB64F00(v11, v69);
    OUTLINED_FUNCTION_54_5(v45, v46, v47, v48, v49, v50, v51, v52, v55, v56, v57, v58, v59.n128_i64[0], v59.n128_i64[1], v60, v61, v62, v63, v64, v65[0], v65[1], v65[2], v66, v67, v68);
    return sub_25BB66B90(v69);
  }

  return result;
}

uint64_t sub_25BB66154@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  v5 = *v2;
  v200 = MEMORY[0x277D84F90];
  v201 = MEMORY[0x277D84F90];
  v199 = MEMORY[0x277D84F90];
  v6 = *(*a1 + 16);
  if (!v6)
  {
    v182 = MEMORY[0x277D84F90];
    v9 = MEMORY[0x277D84F90];
    v10 = MEMORY[0x277D84F90];
    v11 = MEMORY[0x277D84F90];
    goto LABEL_107;
  }

  v186 = 0;
  v7 = 0;
  v8 = 0;
  v184 = *(*a1 + 16);
  v185 = a1[5];
  v181 = *a1 + 32;
  v182 = MEMORY[0x277D84F90];
  v188 = -v6;
  v9 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  do
  {
    if (v8 <= 0x40)
    {
      v13 = 0x8000000000000000;
      if (v8 != 64)
      {
        v13 = 1 << v8;
      }

      if ((v185 & v13) == 0)
      {
        v52 = a1[6];
        if (v8 != 64)
        {
          if ((v52 & (1 << v8)) != 0)
          {
            goto LABEL_34;
          }

          v12 = v8;
          goto LABEL_40;
        }

        if (v52 < 0)
        {
LABEL_34:
          v53 = *(v9 + 16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v105 = OUTLINED_FUNCTION_45();
            sub_25BA96630(v105, v106, v107, v4);
            v4 = v108;
          }

          v54 = *(v4 + 16);
          OUTLINED_FUNCTION_35_7();
          if (v22)
          {
            v109 = OUTLINED_FUNCTION_0_32(v55);
            sub_25BA96630(v109, v110, v111, v4);
            v4 = v112;
          }

          *(v4 + 16) = v3;
          *(v4 + 8 * v54 + 32) = v53;
          goto LABEL_102;
        }

LABEL_6:
        v12 = 63;
LABEL_40:
        if ((a1[7] >> v12))
        {
          v56 = *(v9 + 16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v113 = OUTLINED_FUNCTION_45();
            sub_25BA96630(v113, v114, v115, v116);
            v182 = v117;
          }

          v57 = *(v182 + 16);
          OUTLINED_FUNCTION_35_7();
          if (v22)
          {
            v118 = OUTLINED_FUNCTION_0_32(v58);
            sub_25BA96630(v118, v119, v120, v182);
            v182 = v121;
          }

          *(v182 + 16) = v3;
          *(v182 + 8 * v57 + 32) = v56;
        }

        if (v8 > 0x40 || (v59 = v8, v8 == 64))
        {
          v59 = 63;
        }

        if ((a1[3] >> v59))
        {
          v60 = v4;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v122 = OUTLINED_FUNCTION_45();
            sub_25BA96630(v122, v123, v124, v9);
            v9 = v125;
          }

          v62 = *(v9 + 16);
          v61 = *(v9 + 24);
          v3 = v62 + 1;
          if (v62 >= v61 >> 1)
          {
            v126 = OUTLINED_FUNCTION_0_32(v61);
            sub_25BA96630(v126, v127, v128, v9);
            v9 = v129;
          }

          v63 = 0;
        }

        else
        {
          if (__OFADD__(v8, v7))
          {
            goto LABEL_141;
          }

          OUTLINED_FUNCTION_36_6();
          if (v67 != v27 || v64 >= v65)
          {
            goto LABEL_154;
          }

          v69 = (v65 & (v64 >> 63)) + v64;
          if (v69 < 0)
          {
            goto LABEL_142;
          }

          v70 = *(v66 + 8 * v69 + 32);
          v71 = -v70;
          if (__OFSUB__(0, v70))
          {
            goto LABEL_144;
          }

          if (v70 < v71)
          {
            goto LABEL_146;
          }

          v63 = *(v181 + 8 * v8);
          if (v63 >= v70 || v63 < v71)
          {
LABEL_151:
            v191 = 0;
            v192 = 0;
            v190 = v63;
            OUTLINED_FUNCTION_31_9();
            goto LABEL_152;
          }

          if (v63 < 0)
          {
            v27 = __OFADD__(v70, v63);
            v63 += v70;
            if (v27)
            {
              goto LABEL_147;
            }
          }

          v60 = v4;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v130 = OUTLINED_FUNCTION_45();
            sub_25BA96630(v130, v131, v132, v9);
            v9 = v133;
          }

          v62 = *(v9 + 16);
          v73 = *(v9 + 24);
          v3 = v62 + 1;
          if (v62 >= v73 >> 1)
          {
            v134 = OUTLINED_FUNCTION_0_32(v73);
            sub_25BA96630(v134, v135, v136, v9);
            v9 = v137;
          }

          v186 = v7;
        }

        *(v9 + 16) = v3;
        *(v9 + 8 * v62 + 32) = v63;
        v201 = v9;
        if (v8 > 0x40 || (v74 = v8, v8 == 64))
        {
          v74 = 63;
        }

        if ((a1[4] >> v74))
        {
          if (__OFADD__(v8, v186))
          {
            goto LABEL_139;
          }

          OUTLINED_FUNCTION_36_6();
          if (v67 != v27 || v64 >= v65)
          {
LABEL_154:
            v191 = 0;
            v192 = 0;
            v190 = v64;
            v193 = -1;
            v195 = 0;
            v196 = 0;
            v194 = v65;
            v197 = -1;
LABEL_152:
            v198 = 4;
LABEL_150:
            sub_25BADDD28("positiveAxis(fromAxis:from:rank:from:function:file:line:)", 57, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift", 102, 2, 133);
          }

          v77 = (v65 & (v64 >> 63)) + v64;
          if (v77 < 0)
          {
            goto LABEL_140;
          }

          v78 = *(v75 + 8 * v77 + 32);
        }

        else
        {
          v79 = a1[1];
          if (v8 >= *(v79 + 16))
          {
            goto LABEL_143;
          }

          v80 = *(v9 + 8 * v3 + 24);
          v27 = __OFADD__(v80, 1);
          v81 = v80 + 1;
          if (v27)
          {
            goto LABEL_145;
          }

          v82 = *(v79 + 8 * v8 + 32);
          if (v81 <= v82)
          {
            v78 = v82;
          }

          else
          {
            v78 = v81;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = OUTLINED_FUNCTION_45();
          sub_25BA96630(v89, v90, v91, v10);
          v10 = v92;
        }

        v84 = *(v10 + 16);
        v83 = *(v10 + 24);
        v3 = v84 + 1;
        if (v84 >= v83 >> 1)
        {
          v93 = OUTLINED_FUNCTION_0_32(v83);
          sub_25BA96630(v93, v94, v95, v10);
          v10 = v96;
        }

        *(v10 + 16) = v3;
        *(v10 + 8 * v84 + 32) = v78;
        v200 = v10;
        v85 = a1[2];
        if (v8 >= *(v85 + 16))
        {
          goto LABEL_138;
        }

        v86 = *(v85 + 8 * v8 + 32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = OUTLINED_FUNCTION_45();
          sub_25BA96630(v97, v98, v99, v11);
          v11 = v100;
        }

        v4 = v60;
        v87 = *(v11 + 16);
        OUTLINED_FUNCTION_35_7();
        if (v22)
        {
          v101 = OUTLINED_FUNCTION_0_32(v88);
          sub_25BA96630(v101, v102, v103, v11);
          v11 = v104;
        }

        *(v11 + 16) = v3;
        *(v11 + 8 * v87 + 32) = v86;
        v199 = v11;
        goto LABEL_102;
      }
    }

    else if ((v185 & 0x8000000000000000) == 0)
    {
      if ((a1[6] & 0x8000000000000000) != 0)
      {
        goto LABEL_34;
      }

      goto LABEL_6;
    }

    v14 = *(*(*(v5 + 16) + 152) + 16);
    v15 = *(v9 + 16);
    v16 = v6 - v8;
    v17 = v14 - v15 - v16;
    if (__OFSUB__(v14 - v15, v16))
    {
      goto LABEL_135;
    }

    v186 = v7 + v17;
    if (__OFADD__(v7, v17))
    {
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      v191 = 0;
      v192 = 0;
      v190 = v3;
      OUTLINED_FUNCTION_31_9();
      v198 = 4;
      goto LABEL_149;
    }

    if (v17 < 0)
    {
      goto LABEL_137;
    }

    v183 = v4;
    v18 = 0;
    v19 = v14 + v188 - v15;
    while (1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = OUTLINED_FUNCTION_45();
        sub_25BA96630(v28, v29, v30, v9);
        v9 = v31;
      }

      v20 = *(v9 + 16);
      OUTLINED_FUNCTION_35_7();
      if (v22)
      {
        v32 = OUTLINED_FUNCTION_0_32(v21);
        sub_25BA96630(v32, v33, v34, v9);
        v9 = v35;
      }

      *(v9 + 16) = v3;
      *(v9 + 8 * v20 + 32) = 0;
      v3 = *(v10 + 16);
      if (v3 >= *(*(*(v5 + 16) + 152) + 16))
      {
        goto LABEL_148;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = OUTLINED_FUNCTION_8_0();
        sub_25BA96630(v36, v37, v38, v10);
        v10 = v39;
      }

      v24 = *(v10 + 16);
      v23 = *(v10 + 24);
      v3 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v40 = OUTLINED_FUNCTION_0_32(v23);
        sub_25BA96630(v40, v41, v42, v10);
        v10 = v43;
      }

      *(v10 + 16) = v3;
      if ((OUTLINED_FUNCTION_56_2() & 1) == 0)
      {
        v44 = OUTLINED_FUNCTION_45();
        sub_25BA96630(v44, v45, v46, v11);
        v11 = v47;
      }

      v25 = *(v11 + 16);
      OUTLINED_FUNCTION_35_7();
      if (v22)
      {
        v48 = OUTLINED_FUNCTION_0_32(v26);
        sub_25BA96630(v48, v49, v50, v11);
        v11 = v51;
      }

      *(v11 + 16) = v3;
      *(v11 + 8 * v25 + 32) = 1;
      v199 = v11;
      if (v19 == v18)
      {
        break;
      }

      v27 = __OFADD__(v18++, 1);
      if (v27)
      {
        __break(1u);
LABEL_135:
        __break(1u);
        goto LABEL_136;
      }
    }

    v201 = v9;
    v7 = v186;
    v4 = v183;
LABEL_102:
    ++v8;
    ++v188;
    v6 = v184;
  }

  while (v8 != v184);
LABEL_107:
  while (*(v9 + 16) < *(*(*(v5 + 16) + 152) + 16))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v144 = OUTLINED_FUNCTION_8_0();
      sub_25BA96630(v144, v145, v146, v9);
      v9 = v147;
    }

    v139 = *(v9 + 16);
    v138 = *(v9 + 24);
    if (v139 >= v138 >> 1)
    {
      v148 = OUTLINED_FUNCTION_81(v138);
      sub_25BA96630(v148, v139 + 1, 1, v9);
      v9 = v149;
    }

    *(v9 + 16) = v139 + 1;
    *(v9 + 8 * v139 + 32) = 0;
    v201 = v9;
    v63 = *(v10 + 16);
    if (v63 >= *(*(*(v5 + 16) + 152) + 16))
    {
      goto LABEL_151;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v150 = OUTLINED_FUNCTION_8_0();
      sub_25BA96630(v150, v151, v152, v10);
      v10 = v153;
    }

    v141 = *(v10 + 16);
    v140 = *(v10 + 24);
    if (v141 >= v140 >> 1)
    {
      v154 = OUTLINED_FUNCTION_81(v140);
      sub_25BA96630(v154, v141 + 1, 1, v10);
      v10 = v155;
    }

    *(v10 + 16) = v141 + 1;
    if ((OUTLINED_FUNCTION_56_2() & 1) == 0)
    {
      v156 = OUTLINED_FUNCTION_45();
      sub_25BA96630(v156, v157, v158, v11);
      v11 = v159;
    }

    v143 = *(v11 + 16);
    v142 = *(v11 + 24);
    if (v143 >= v142 >> 1)
    {
      v160 = OUTLINED_FUNCTION_81(v142);
      sub_25BA96630(v160, v143 + 1, 1, v11);
      v11 = v161;
    }

    *(v11 + 16) = v143 + 1;
    *(v11 + 8 * v143 + 32) = 1;
    v199 = v11;
  }

  sub_25BCB617C();
  sub_25BCB617C();
  v162 = sub_25BB63620(v10, v9);

  v163 = 4;
  do
  {
    if (v163 - *(v162 + 16) == 4)
    {
      goto LABEL_127;
    }

    v164 = *(*(v5 + 16) + 152);
    v165 = *(v164 + 16);
    if (v163 - 4 >= v165)
    {
      v191 = 0;
      v192 = 0;
      v190 = v163 - 4;
      v193 = -1;
      v195 = 0;
      v196 = 0;
      v194 = v165;
      v197 = -1;
      v198 = 4;
      sub_25BCB617C();
LABEL_149:
      sub_25BCB617C();
      goto LABEL_150;
    }

    v166 = *(v162 + 8 * v163);
    v167 = *(v164 + 8 * v163++);
  }

  while (v167 >= v166);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_25_0(v168, v169, v170, 0xD00000000000002CLL, v171, v172, v173, v174, 336, v179);
  __break(1u);
LABEL_127:

  v175 = sub_25BB630C0(0, *(v9 + 16), &v201, &v200, &v199);
  sub_25BB63B88(v175, v5, &v190);

  if (*(v4 + 16))
  {

    Tensor.expandingShape(at:)();

    v190 = v189;
  }

  if (*(v182 + 16))
  {
    v176 = v190;
    v177 = *(*(*(v190 + 16) + 152) + 16);

    if (v177 <= 1)
    {
    }

    else
    {

      Tensor.squeezingShape(at:)();

      v176 = v189;
    }
  }

  else
  {

    v176 = v190;
  }

  *a2 = v176;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for TensorRange(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TensorRange(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 25))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 6)
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

uint64_t storeEnumTagSinglePayload for TensorRange(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t sub_25BB66C8C(uint64_t a1)
{
  if (*(a1 + 24) <= 5u)
  {
    return *(a1 + 24);
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_25BB66CA4(uint64_t result, unsigned int a2)
{
  v2 = a2 - 6;
  if (a2 >= 6)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 6;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25BB66CF8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_25BB66D38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25BB66E50()
{
  sub_25BCB79CC();
  sub_25BCB625C();
  return sub_25BCB7A3C();
}

unint64_t sub_25BB66EB4()
{
  result = qword_28154F208;
  if (!qword_28154F208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154F208);
  }

  return result;
}

uint64_t sub_25BB66F10(void *a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_25BCBB6D0;
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
  v9 = v3[6];
  v10 = sub_25BC6640C();
  v11 = v3[10];
  v12 = __swift_project_boxed_opaque_existential_1(v3 + 7, v11);
  v13 = sub_25BB6706C(v12, v11);
  v14 = v3[15];
  v15 = __swift_project_boxed_opaque_existential_1(v3 + 12, v14);
  v16 = sub_25BB6706C(v15, v14);
  v18 = v3[3];
  v17 = v3[4];
  sub_25BCB617C();
  v19 = sub_25BB6750C(v8, v9, v10, v18, v17, a1, v13, v16);

  *(v6 + 32) = v19;
  return v6;
}

double sub_25BB6706C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, a2, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4D28, &qword_25BCC2278);
  if (swift_dynamicCast())
  {
    sub_25BADF778(&v31, &v26);
    v8 = v28;
    v9 = __swift_project_boxed_opaque_existential_1(&v26, v28);
    v10 = *(v8 - 8);
    v11 = MEMORY[0x28223BE20](v9);
    v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    if (sub_25BCB6F9C() < 65)
    {
      v19 = sub_25BCB6FAC();
      v20 = sub_25BCB6F8C();
      (*(v10 + 8))(v13, v8);
      if (v19)
      {
        v14 = v20;
      }

      else
      {
        v14 = v20;
      }
    }

    else
    {
      sub_25BB675B0();
      sub_25BB67604();
      sub_25BCB60DC();
      (*(v10 + 8))(v13, v8);
      v14 = v25;
    }

    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4D30, &qword_25BCC2280);
  if (swift_dynamicCast())
  {
    sub_25BADF778(&v31, &v26);
    v15 = __swift_project_boxed_opaque_existential_1(&v26, v28);
    v16 = MEMORY[0x28223BE20](v15);
    (*(v18 + 16))(&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
    sub_25BB675B0();
    sub_25BCB60BC();
    v14 = v25;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(&v26);
    goto LABEL_12;
  }

  if (!swift_dynamicCast())
  {
    *&v31 = 0;
    *(&v31 + 1) = 0xE000000000000000;
    sub_25BCB70FC();

    *&v26 = 0xD000000000000020;
    *(&v26 + 1) = 0x800000025BCDC760;
    swift_getDynamicType();
    v22 = sub_25BCB7C1C();
    MEMORY[0x25F876C90](v22);

    v31 = v26;
    v38 = 9;
    sub_25BCB617C();
    sub_25BA97890("scalarToDouble(_:)", 18, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/MPSGraph/MPSTensorCreationOps.swift", 120, 2, 31, v23, v24, *&v25, v26, *(&v26 + 1), v27, v28, v29, v30, v31, *(&v31 + 1), v32, v33, v34, v35, v36, v37);
  }

  v14 = v31;
LABEL_12:
  (*(v4 + 8))(v7, a2);
  return v14;
}

id sub_25BB6750C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7, double a8)
{
  v14 = sub_25BCB633C();

  v15 = [a6 oneHotWithIndicesTensor:a1 depth:a2 dataType:a3 onValue:v14 offValue:a7 name:a8];

  return v15;
}

unint64_t sub_25BB675B0()
{
  result = qword_27FBB4D38;
  if (!qword_27FBB4D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4D38);
  }

  return result;
}

unint64_t sub_25BB67604()
{
  result = qword_27FBB4D40[0];
  if (!qword_27FBB4D40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FBB4D40);
  }

  return result;
}

void sub_25BB67658(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  if (v22 < 1)
  {
    sub_25BCB74CC("Fatal error", 11, 2, 0xD00000000000002ALL, 0x800000025BCDC9A0, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Data/LazyPrefetchingMapSequence.swift", 113, 2, 246);
LABEL_9:
    __break(1u);
    return;
  }

  if (a2 < 0)
  {
    sub_25BCB74CC("Fatal error", 11, 2, 0xD000000000000029, 0x800000025BCDC9D0, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Data/LazyPrefetchingMapSequence.swift", 113, 2, 247);
    goto LABEL_9;
  }

  (*(v18 + 16))(v21, v17, a5);
  if (a2)
  {
    v23 = a1;
  }

  else
  {
    v23 = 1;
  }

  sub_25BB67810(v21, v23, a2, a3, a4, a5, a6, *(a7 + 8), a8);
}

int *sub_25BB67810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  (*(*(a6 - 8) + 32))(a9, a1, a6);
  result = type metadata accessor for LazyPrefetchingMapSequence(0, a6, a7, a8);
  *(a9 + result[11]) = a2;
  *(a9 + result[12]) = a3;
  v18 = (a9 + result[13]);
  *v18 = a4;
  v18[1] = a5;
  return result;
}