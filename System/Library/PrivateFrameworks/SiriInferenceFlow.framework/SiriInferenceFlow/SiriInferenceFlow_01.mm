uint64_t sub_222D9FAB0(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    while (1)
    {
      v3 = 0;
      while ((a1 & 0xC000000000000001) == 0)
      {
        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_17;
        }

        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v6 = v3 + 1;
        v8 = *(*(a1 + 32 + 8 * v3) + qword_27D047A18);
        if (v8 != 2 && (v8 & 1) != 0)
        {
          return 1;
        }

LABEL_13:
        v3 = v6;
        if (v6 == v2)
        {
          return 0;
        }
      }

      v4 = OUTLINED_FUNCTION_17_2();
      v5 = MEMORY[0x223DCE590](v4);
      v6 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        break;
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      v2 = OUTLINED_FUNCTION_45_1();
      if (!v2)
      {
        return 0;
      }
    }

    v7 = *(v5 + qword_27D047A18);
    swift_unknownObjectRelease();
    if (v7 != 2 && (v7 & 1) != 0)
    {
      return 1;
    }

    goto LABEL_13;
  }

  return 0;
}

uint64_t sub_222D9FBA4(uint64_t a1)
{
  OUTLINED_FUNCTION_56();
  sub_222DDA770();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_222DDA760();
  v3 = sub_222DDA4A0();
  v4 = OUTLINED_FUNCTION_49_1();
  result = v5(v4);
  if ((v3 & 1) == 0)
  {
    if (qword_27D0475B0 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_27D0475B0);
    }

    v7 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v7, qword_27D04C928);
    v8 = sub_222DDB3C0();
    v9 = sub_222DDB6C0();
    if (OUTLINED_FUNCTION_34_2(v9))
    {
      OUTLINED_FUNCTION_14_2();
      v10 = swift_slowAlloc();
      OUTLINED_FUNCTION_50_1(v10);
      OUTLINED_FUNCTION_18_2(&dword_222D8A000, v11, v12, "cannot create view if device is locked. Please unlock to continue.");
      OUTLINED_FUNCTION_16_2();
      MEMORY[0x223DCEF40]();
    }

    v13 = sub_222D95EDC();
    OUTLINED_FUNCTION_50_0(&type metadata for ContactResolutionPatternError, v13);
    *v14 = 6;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_222D9FD30(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_17;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return OUTLINED_FUNCTION_49_1();
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = OUTLINED_FUNCTION_52_1();
        v7 = MEMORY[0x223DCE590](v6);
      }

      else
      {
        v7 = *(v1 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = sub_222DA1104();

      if (v9 == 1)
      {
        v10 = __OFADD__(v3++, 1);
        if (v10)
        {
          goto LABEL_16;
        }
      }

      else if (v9 == 2)
      {
        v10 = __OFADD__(v4++, 1);
        if (v10)
        {
          __break(1u);
LABEL_16:
          __break(1u);
LABEL_17:
          result = OUTLINED_FUNCTION_45_1();
          v2 = result;
          if (!result)
          {
            return OUTLINED_FUNCTION_49_1();
          }

          goto LABEL_3;
        }
      }

      if (v2 == ++v5)
      {
        return OUTLINED_FUNCTION_49_1();
      }
    }
  }

  __break(1u);
  return result;
}

void sub_222D9FE18(uint64_t a1)
{
  OUTLINED_FUNCTION_32_2();
  v2 = v1;
  v3 = v1 >> 62;
  if (v1 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_222DDB920())
  {
    if (i < 2 || ((v5 = v2 & 0xC000000000000001, OUTLINED_FUNCTION_42_1(), sub_222D9E450(), (v2 & 0xC000000000000001) != 0) ? (v6 = MEMORY[0x223DCE590](0, v2)) : (v6 = *(v2 + 32)), v7 = v6, v8 = [v6 personHandle], v7, !v8))
    {
LABEL_25:
      OUTLINED_FUNCTION_36_1();
      return;
    }

    v9 = [v8 type];

    v10 = sub_222D9EB88(v2);
    if (v10 < 1)
    {
      break;
    }

    v11 = v10;
    sub_222DA80C4(1, v2);
    v12 = OUTLINED_FUNCTION_41_1();
    sub_222DA80C4(v12, v13);
    if (!v5 || v11 == 1)
    {

      if (!v3)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v5 = sub_222D9E3E4(0, &qword_27D047BB0, 0x277CD3E90);

      v14 = 1;
      do
      {
        v15 = v14 + 1;
        sub_222DDB840();
        v14 = v15;
      }

      while (v11 != v15);
      if (!v3)
      {
LABEL_13:
        v2 &= 0xFFFFFFFFFFFFFF8uLL;
        v5 = v2 + 32;
        v3 = 1;
        goto LABEL_17;
      }
    }

    sub_222DDB930();
    OUTLINED_FUNCTION_57_0();
    v3 = v16;
    v11 = v17 >> 1;
LABEL_17:
    swift_unknownObjectRetain();
    while (1)
    {
      if (v11 == v3)
      {
        goto LABEL_24;
      }

      if (v3 >= v11)
      {
        break;
      }

      v18 = *(v5 + 8 * v3);
      v19 = [v18 personHandle];
      if (!v19)
      {

LABEL_24:
        swift_unknownObjectRelease_n();
        goto LABEL_25;
      }

      v20 = v19;
      ++v3;
      v21 = [v19 type];

      if (v21 != v9)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_27:
    ;
  }

  __break(1u);
}

uint64_t ContactResolutionResponseHandler.directInvocationValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 24);
  *(a1 + 24) = v5;
  return sub_222DA7E84(v2, v3, v4, v5);
}

uint64_t ContactResolutionResponseHandler.init(userData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (result)
  {
    sub_222DA0284(0x6E6F74747562, result, v34, 0xE600000000000000);
    if (v35)
    {
      if (OUTLINED_FUNCTION_27_2(v4, v5, v6, MEMORY[0x277D837D0], v7, v8, v9, v10, v31, v33, v34[0]))
      {
        v11 = v31 == 0x7972616D697270 && v33 == 0xE700000000000000;
        if (v11 || (sub_222DDBAC0() & 1) != 0)
        {

          v12 = 0;
          v13 = 0;
        }

        else if (v31 == 0x7261646E6F636573 && v33 == 0xE900000000000079)
        {

          v12 = 0;
          v13 = 1;
        }

        else
        {
          v30 = sub_222DDBAC0();

          v12 = 0;
          if (v30)
          {
            v13 = 1;
          }

          else
          {
            v13 = 4;
          }
        }

        goto LABEL_21;
      }
    }

    else
    {
      sub_222DA8300(v34, &qword_27D047AE0, &qword_222DDDD30);
    }

    sub_222DA0284(0x49746361746E6F63, v2, v34, 0xE900000000000064);
    if (v35)
    {
      result = OUTLINED_FUNCTION_27_2(v15, v16, v17, MEMORY[0x277D837D0], v18, v19, v20, v21, v31, v33, v34[0]);
      if (result)
      {
        v14 = v31;
        v12 = v33;
        v13 = 3;
        goto LABEL_23;
      }
    }

    else
    {
      sub_222DA8300(v34, &qword_27D047AE0, &qword_222DDDD30);
    }

    sub_222DA0284(0x7865646E69, v2, v34, 0xE500000000000000);
    if (v35)
    {
      result = OUTLINED_FUNCTION_27_2(v22, v23, v24, MEMORY[0x277D83B88], v25, v26, v27, v28, v31, v33, v34[0]);
      if (result)
      {
        v14 = v32;
        v13 = 2;
        v12 = v2;
LABEL_22:
        v2 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      result = sub_222DA8300(v34, &qword_27D047AE0, &qword_222DDDD30);
    }

    v12 = 0;
    v13 = 4;
LABEL_21:
    v14 = v2;
    goto LABEL_22;
  }

  v14 = 0;
  v12 = 0;
  v13 = 4;
LABEL_23:
  *a2 = v14;
  *(a2 + 8) = v12;
  *(a2 + 16) = v2;
  *(a2 + 24) = v13;
  return result;
}

double sub_222DA0284@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>, uint64_t a4@<X1>)
{
  if (*(a2 + 16) && (v6 = sub_222DCC9E4(a1, a4), (v7 & 1) != 0))
  {
    v8 = *(a2 + 56) + 32 * v6;

    sub_222D8FDAC(v8, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_222DA02E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_222DCC9E4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

double sub_222DA0340@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_222DCCA5C(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_222D8FDAC(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

BOOL sub_222DA03A4()
{
  v1 = [v0 personHandle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 label];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_222DDB500();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  return v7 != 0;
}

BOOL sub_222DA0448()
{
  v1 = [v0 personHandle];
  if (!v1)
  {
    return 0;
  }

  v2 = sub_222DA7AAC(v1);
  if (!v3)
  {
    return 0;
  }

  v4 = v2;
  v5 = v3;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  return v6 != 0;
}

uint64_t sub_222DA04B8()
{
  sub_222DDA0B0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4();
  result = [v0 nameComponents];
  if (result)
  {
    v3 = result;
    sub_222DDA070();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C00, &qword_222DDD698);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222DDC9C0;
    *(inited + 32) = sub_222DD9FD0();
    *(inited + 40) = v5;
    *(inited + 48) = sub_222DDA010();
    *(inited + 56) = v6;
    *(inited + 64) = sub_222DD9FF0();
    *(inited + 72) = v7;
    v8 = sub_222DDA080();
    v9 = 0;
    *(inited + 80) = v8;
    *(inited + 88) = v10;
    while (1)
    {
      if (v9 == 64)
      {
        swift_setDeallocating();
        sub_222D9DF70();
        v13 = OUTLINED_FUNCTION_17_2();
        v14(v13);
        return 0;
      }

      v11 = *(inited + v9 + 40);
      if (v11)
      {
        if ((v11 & 0x2000000000000000) != 0 ? HIBYTE(v11) & 0xF : *(inited + v9 + 32) & 0xFFFFFFFFFFFFLL)
        {
          break;
        }
      }

      v9 += 16;
    }

    v15 = OUTLINED_FUNCTION_17_2();
    v16(v15);
    swift_setDeallocating();
    sub_222D9DF70();
    return 1;
  }

  return result;
}

void sub_222DA0658()
{
  OUTLINED_FUNCTION_32_2();
  v3 = sub_222DD9F60();
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_3();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_39_1();
  v12 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_54_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v56 - v14;
  v16 = [v0 personHandle];
  if (!v16)
  {
    goto LABEL_6;
  }

  v17 = v16;
  v18 = sub_222DA7B8C(v16, &selRef_value);
  if (!v19)
  {

    goto LABEL_6;
  }

  v20 = v19;
  v60 = v18;
  if (sub_222DA04B8())
  {

    goto LABEL_6;
  }

  v59 = v5;
  v21 = sub_222DA7B8C(v0, &selRef__displayName);
  if (!v22)
  {
LABEL_17:

    goto LABEL_6;
  }

  v23 = v21;
  v24 = v22;
  OUTLINED_FUNCTION_58_0();
  if (!v25)
  {

    goto LABEL_17;
  }

  if ([v17 type] == 2)
  {
    sub_222DD9EF0();
    sub_222DD9F00();
    v58 = v23;
    sub_222DD9F40();
    v57 = v24;
    v26 = v9;
    v27 = *(v59 + 8);
    v27(v26, v3);
    v27(v2, v3);
    sub_222DD9F20();
    sub_222DD9F40();
    v28 = v2;
    v29 = v27;
    v27(v28, v3);
    v30 = OUTLINED_FUNCTION_17_2();
    (v27)(v30);
    sub_222DD9F30();
    sub_222DD9F40();
    v31 = OUTLINED_FUNCTION_17_2();
    (v27)(v31);
    v32 = v57;
    v33 = (v27)(v1, v3);
    MEMORY[0x28223BE20](v33);
    *(&v56 - 2) = v15;

    v34 = sub_222DA0B60(sub_222DA81EC, (&v56 - 4), v58, v32);

    if (v34)
    {
      sub_222DA0D58(v58, v32, v35, v36, v37, v38, v39, v40);
      v42 = v41;
      v44 = v43;
      sub_222DA0D58(v60, v20, v45, v46, v47, v48, v49, v50);
      if (v42 != v52 || v44 != v51)
      {
        sub_222DDBAC0();
      }
    }

    v55 = OUTLINED_FUNCTION_48_1();
    v29(v55);
  }

  else
  {
    if (v23 != v60 || v24 != v20)
    {
      sub_222DDBAC0();
    }
  }

LABEL_6:
  OUTLINED_FUNCTION_36_1();
}

void sub_222DA0A6C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = sub_222D9EB88(a3);
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223DCE590](v6, a3);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if (v10)
      {
        continue;
      }
    }

    return;
  }
}

uint64_t sub_222DA0B60(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
LABEL_26:
    v18 = 1;
    return v18 & 1;
  }

  v9 = 0;
  v21 = a4 & 0xFFFFFFFFFFFFFFLL;
  v10 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (1)
  {
    if ((a4 & 0x1000000000000000) != 0)
    {
      v14 = sub_222DDB830();
      v16 = v15;
      goto LABEL_15;
    }

    if ((a4 & 0x2000000000000000) == 0)
    {
      v11 = v10;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v11 = sub_222DDB880();
      }

      v12 = (v11 + v9);
      v13 = *(v11 + v9);
      v14 = *(v11 + v9);
      if (v13 < 0)
      {
        switch(__clz(v14 ^ 0xFF))
        {
          case 0x1Au:
            goto LABEL_20;
          case 0x1Bu:
            goto LABEL_21;
          case 0x1Cu:
            goto LABEL_22;
          default:
            break;
        }
      }

LABEL_14:
      v16 = 1;
      goto LABEL_15;
    }

    v20[0] = a3;
    v20[1] = v21;
    v12 = v20 + v9;
    v14 = *(v20 + v9);
    if ((*(v20 + v9) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    switch(__clz(v14 ^ 0xFF))
    {
      case 0x1Au:
LABEL_20:
        v14 = v12[1] & 0x3F | ((v14 & 0x1F) << 6);
        v16 = 2;
        break;
      case 0x1Bu:
LABEL_21:
        v14 = ((v14 & 0xF) << 12) | ((v12[1] & 0x3F) << 6) | v12[2] & 0x3F;
        v16 = 3;
        break;
      case 0x1Cu:
LABEL_22:
        v14 = ((v14 & 0xF) << 18) | ((v12[1] & 0x3F) << 12) | ((v12[2] & 0x3F) << 6) | v12[3] & 0x3F;
        v16 = 4;
        break;
      default:
        goto LABEL_14;
    }

LABEL_15:
    LODWORD(v20[0]) = v14;
    v17 = a1(v20);
    if (v4)
    {
      return v18 & 1;
    }

    if ((v17 & 1) == 0)
    {
      break;
    }

    v9 += v16;
    if (v9 >= v5)
    {
      goto LABEL_26;
    }
  }

  v18 = 0;
  return v18 & 1;
}

void sub_222DA0D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_38_2();
  v11 = v10;
  OUTLINED_FUNCTION_56();
  v29 = sub_222DD9F60();
  MEMORY[0x28223BE20](v29);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[2] = 0;
  v28[3] = 0xE000000000000000;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v15 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v16 = v8;
    v25[1] = v9;
    v17 = 0;
    v26 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v27 = v11 & 0xFFFFFFFFFFFFFFLL;
    v18 = (v12 + 8);
    do
    {
      if ((v11 & 0x1000000000000000) != 0)
      {
        sub_222DDB830();
        v22 = v21;
      }

      else
      {
        if ((v11 & 0x2000000000000000) != 0)
        {
          v28[0] = v16;
          v28[1] = v27;
          if (*(v28 + v17) < 0)
          {
            OUTLINED_FUNCTION_43_1();
            switch(v24)
            {
              case 1:
LABEL_20:
                v22 = 2;
                break;
              case 2:
LABEL_21:
                v22 = 3;
                break;
              case 3:
LABEL_22:
                v22 = 4;
                break;
              default:
                goto LABEL_14;
            }

            goto LABEL_15;
          }
        }

        else
        {
          v19 = v26;
          if ((v16 & 0x1000000000000000) == 0)
          {
            v19 = sub_222DDB880();
          }

          if (*(v19 + v17) < 0)
          {
            OUTLINED_FUNCTION_43_1();
            switch(v20)
            {
              case 1:
                goto LABEL_20;
              case 2:
                goto LABEL_21;
              case 3:
                goto LABEL_22;
              default:
                break;
            }
          }
        }

LABEL_14:
        v22 = 1;
      }

LABEL_15:
      sub_222DD9F00();
      v23 = sub_222DD9F50();
      (*v18)(v14, v29);
      if (v23)
      {
        sub_222DDB550();
      }

      v17 += v22;
    }

    while (v17 < v15);
  }

  OUTLINED_FUNCTION_37_2();
}

void sub_222DA0FD4()
{
  v1 = [v0 personHandle];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 type];

    if (!v3)
    {

      sub_222DA0658();
    }
  }
}

uint64_t sub_222DA1054()
{
  v1 = sub_222DA7B8C(v0, &selRef_contactIdentifier);
  if (v2)
  {
    return v1;
  }

  v1 = sub_222DA7B8C(v0, &selRef_customIdentifier);
  if (v3)
  {
    return v1;
  }

  v6 = [v0 personHandle];
  if (v6)
  {
    v1 = sub_222DA7AAC(v6);
    if (v7)
    {
      return v1;
    }
  }

  v8 = [v0 displayName];
  v4 = sub_222DDB500();

  return v4;
}

id sub_222DA1104()
{
  result = [v0 personHandle];
  if (result)
  {
    v2 = result;
    v3 = [result type];

    return v3;
  }

  return result;
}

void sub_222DA1158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_38_2();
  v11 = v8;
  v100 = v12;
  v102 = v13;
  v101 = sub_222DDA1D0();
  OUTLINED_FUNCTION_2();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479C0, &qword_222DDE100);
  v21 = OUTLINED_FUNCTION_8(v20);
  MEMORY[0x28223BE20](v21);
  v98 = &v94 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B28, "|M");
  v24 = OUTLINED_FUNCTION_8(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_5_3();
  v27 = v25 - v26;
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v94 - v30;
  MEMORY[0x28223BE20](v29);
  v99 = &v94 - v32;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_54_0();
  MEMORY[0x28223BE20](v34);
  v36 = &v94 - v35;
  v37 = [v11 nameComponents];
  if (v37)
  {
    v38 = v37;
    sub_222DDA070();
  }

  v39 = sub_222DDA0B0();
  OUTLINED_FUNCTION_29_2();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  sub_222DA835C(v10, v36, &qword_27D047B28, "|M");
  sub_222DDA0B0();
  OUTLINED_FUNCTION_24_2();
  if (__swift_getEnumTagSinglePayload(v44, v45, v46))
  {
    v47 = v36;
LABEL_5:
    sub_222DA8300(v47, &qword_27D047B28, "|M");
    goto LABEL_6;
  }

  v97 = sub_222DD9FD0();
  v52 = v51;
  sub_222DA8300(v36, &qword_27D047B28, "|M");
  if (!v52)
  {
    goto LABEL_6;
  }

  v53 = [v11 personHandle];
  if (!v53 || (v54 = sub_222DA7AAC(v53), !v55))
  {
LABEL_28:

    goto LABEL_6;
  }

  v95 = v54;
  v96 = v9;
  v56 = [v11 personHandle];
  if (!v56 || (v57 = v56, v94 = [v56 type], v57, v94 != 2))
  {

    goto LABEL_28;
  }

  v94 = sub_222DA1864();
  v97 = v58;

  v59 = sub_222DA1864();
  v61 = v60;

  v62 = v94 == v59 && v97 == v61;
  if (v62)
  {
  }

  else
  {
    LODWORD(v95) = sub_222DDBAC0();

    if ((v95 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v71 = [v11 nameComponents];
  if (v71)
  {
    v72 = v71;
    sub_222DDA070();
  }

  v73 = v99;
  OUTLINED_FUNCTION_29_2();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
  sub_222DA835C(v31, v73, &qword_27D047B28, "|M");
  OUTLINED_FUNCTION_24_2();
  if (__swift_getEnumTagSinglePayload(v78, v79, v80))
  {
    sub_222DA8414(v73, v27);
    OUTLINED_FUNCTION_24_2();
    if (__swift_getEnumTagSinglePayload(v81, v82, v83) == 1)
    {
      v84 = 0;
    }

    else
    {
      v84 = sub_222DDA050();
      OUTLINED_FUNCTION_28_2();
      (*(v87 + 8))(v27, v39);
    }

    [v11 setNameComponents_];

    v47 = v73;
    goto LABEL_5;
  }

  sub_222DDAE90();
  v85 = [v11 personHandle];
  if (sub_222DDAE80())
  {
    v86 = v98;
    sub_222DDAE70();

    sub_222DDB240();
    OUTLINED_FUNCTION_61_0(v86);
    if (v62)
    {
      sub_222DA8300(v86, &qword_27D0479C0, &qword_222DDE100);
    }

    else
    {
      sub_222DDB220();
      OUTLINED_FUNCTION_35_1();
      OUTLINED_FUNCTION_28_2();
      (*(v88 + 8))();
    }
  }

  OUTLINED_FUNCTION_53_0();
  sub_222DD9FE0();
  OUTLINED_FUNCTION_24_2();
  if (__swift_getEnumTagSinglePayload(v89, v90, v91) == 1)
  {
    v92 = 0;
  }

  else
  {
    v92 = sub_222DDA050();
    OUTLINED_FUNCTION_28_2();
    (*(v93 + 8))(v73, v39);
  }

  [v11 setNameComponents_];

LABEL_6:
  sub_222DDB0D0();
  (*(v15 + 16))(v19, v102, v101);
  v48 = v11;
  if (sub_222DDAF40())
  {
    v49 = v100;
    sub_222DDAED0();
    if (sub_222DDAEE0())
    {
      v50 = v49;
      sub_222DDAE50();
    }
  }

  else
  {
    if (qword_27D0475B0 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_27D0475B0);
    }

    v63 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v63, qword_27D04C928);
    v64 = sub_222DDB3C0();
    v65 = sub_222DDB6C0();
    if (OUTLINED_FUNCTION_34_2(v65))
    {
      OUTLINED_FUNCTION_14_2();
      v66 = swift_slowAlloc();
      OUTLINED_FUNCTION_50_1(v66);
      OUTLINED_FUNCTION_18_2(&dword_222D8A000, v67, v68, "INPerson::toDialogPerson - Unable to convert INPerson to DialogPerson");
      OUTLINED_FUNCTION_16_2();
      MEMORY[0x223DCEF40]();
    }

    v69 = sub_222D95EDC();
    OUTLINED_FUNCTION_50_0(&type metadata for ContactResolutionPatternError, v69);
    *v70 = 1;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_37_2();
}

uint64_t sub_222DA1864()
{
  OUTLINED_FUNCTION_58_0();

  while (1)
  {
    sub_222DDB5B0();
    if (!v0)
    {
      break;
    }

    OUTLINED_FUNCTION_55_0();
    if ((sub_222DDB490() & 1) == 0)
    {
      v1 = OUTLINED_FUNCTION_17_2();
      MEMORY[0x223DCE2D0](v1);
    }
  }

  OUTLINED_FUNCTION_20_2();
  while (1)
  {
    sub_222DDB5B0();
    if (!v2)
    {
      break;
    }

    OUTLINED_FUNCTION_55_0();
    if ((sub_222DDB4A0() & 1) == 0)
    {
      v3 = OUTLINED_FUNCTION_17_2();
      MEMORY[0x223DCE2D0](v3);
    }
  }

  OUTLINED_FUNCTION_20_2();
  while (1)
  {
    sub_222DDB5B0();
    if (!v4)
    {
      break;
    }

    OUTLINED_FUNCTION_55_0();
    if ((sub_222DDB480() & 1) == 0)
    {
      v5 = OUTLINED_FUNCTION_17_2();
      MEMORY[0x223DCE2D0](v5);
    }
  }

  return 0;
}

void sub_222DA1960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_38_2();
  a19 = v24;
  a20 = v25;
  v26 = v22;
  v27 = v21;
  v154 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v158 = v37;
  v39 = v38;
  v157 = v40;
  v162 = sub_222DDB240();
  OUTLINED_FUNCTION_2();
  v159 = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_5_3();
  v152 = v43 - v44;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x28223BE20](v45);
  v153 = &v143 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479C0, &qword_222DDE100);
  v48 = OUTLINED_FUNCTION_8(v47);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_39_1();
  MEMORY[0x28223BE20](v49);
  v155 = &v143 - v50;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x28223BE20](v51);
  v156 = &v143 - v52;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x28223BE20](v53);
  v55 = &v143 - v54;
  if (v30)
  {
    v147 = v36;
    v148 = v34;
    v160 = v39;
    v149 = v23;
    v150 = &v143 - v54;
    v56 = sub_222DA7B8C(v27, &selRef_contactIdentifier);
    if (v57)
    {
      v58 = v56;
    }

    else
    {
      v58 = 0;
    }

    if (v57)
    {
      v59 = v57;
    }

    else
    {
      v59 = 0xE000000000000000;
    }

    sub_222DA264C(v27);
    v161 = v27;
    v61 = v60;
    v63 = v62;
    sub_222DD9EE0();
    swift_allocObject();

    sub_222DD9ED0();
    v164 = v58;
    v165 = v59;
    v166 = v61;
    v167 = v63;
    v168 = v32;
    v169 = v30;
    sub_222DA83C0();
    v64 = sub_222DD9EC0();
    v163 = v22;
    if (v22)
    {

      goto LABEL_55;
    }

    v66 = v64;
    v67 = v65;
    v145 = v58;
    v144 = v32;

    v146 = sub_222DDA120();
    v151 = v68;
    sub_222D9322C(v66, v67);
    if (qword_27D0475B0 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_27D0475B0);
    }

    v69 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v69, qword_27D04C928);

    v70 = sub_222DDB3C0();
    v71 = sub_222DDB6B0();

    v72 = os_log_type_enabled(v70, v71);
    v73 = v145;
    if (v72)
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v143 = v70;
      v76 = v75;
      a10 = v75;
      *v74 = 136315138;
      v164 = v73;
      v165 = v59;
      v166 = v61;
      v167 = v63;
      v168 = v144;
      v169 = v30;
      v77 = sub_222DDB540();
      v79 = sub_222D8F7F0(v77, v78, &a10);

      *(v74 + 4) = v79;
      v80 = v143;
      _os_log_impl(&dword_222D8A000, v143, v71, "Creating toContactDialogPerson with viewData=%s", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v76);
      OUTLINED_FUNCTION_16_2();
      MEMORY[0x223DCEF40]();
      OUTLINED_FUNCTION_16_2();
      MEMORY[0x223DCEF40]();
    }

    else
    {
    }

    v26 = v163;
    v23 = v149;
    v55 = v150;
    v39 = v160;
    v27 = v161;
    v30 = v151;
  }

  else
  {
    v146 = 0;
  }

  v81 = OUTLINED_FUNCTION_47_1();
  sub_222DA1158(v81, v82, v83, v84, v85, v86, v87, v88);
  if (v26)
  {

    goto LABEL_55;
  }

  v160 = v39;
  v151 = v30;
  v149 = [v27 searchProvider];
  if (v149 == 3)
  {
    LODWORD(v150) = 1;
  }

  else
  {
    LODWORD(v150) = sub_222DDBAC0();
  }

  v89 = v159;
  v90 = v156;

  v91 = v162;
  __swift_storeEnumTagSinglePayload(v55, 1, 1, v162);
  sub_222DDB0A0();
  OUTLINED_FUNCTION_61_0(v90);
  v163 = 0;
  v161 = v27;
  if (v92)
  {
    sub_222DA8300(v90, &qword_27D0479C0, &qword_222DDE100);
  }

  else
  {
    v93 = v55;
    v94 = *(v89 + 32);
    v95 = v90;
    v96 = v153;
    v94(v153, v95, v91);
    sub_222DDB220();
    OUTLINED_FUNCTION_31_2();
    OUTLINED_FUNCTION_11_2();
    if (v97)
    {
      sub_222DDB230();
      OUTLINED_FUNCTION_31_2();
      OUTLINED_FUNCTION_11_2();
      if (v98)
      {
        sub_222DA8300(v93, &qword_27D0479C0, &qword_222DDE100);
        v99 = v162;
        v94(v93, v96, v162);
        __swift_storeEnumTagSinglePayload(v93, 0, 1, v99);
        goto LABEL_40;
      }
    }

    v89 = v159;
    v91 = v162;
    (*(v159 + 8))(v96, v162);
    v55 = v93;
    v27 = v161;
  }

  v100 = v155;
  sub_222DDB0A0();
  v101 = v100;
  OUTLINED_FUNCTION_61_0(v100);
  if (v92)
  {
    sub_222DA8300(v100, &qword_27D0479C0, &qword_222DDE100);
  }

  else
  {
    v102 = v152;
    (*(v89 + 32))(v152, v101, v91);
    sub_222DDB220();
    OUTLINED_FUNCTION_31_2();
    OUTLINED_FUNCTION_11_2();
    if (v103 || (sub_222DDB230(), OUTLINED_FUNCTION_31_2(), OUTLINED_FUNCTION_11_2(), v104))
    {
      (*(v89 + 8))(v102, v162);
    }

    else
    {
      v132 = [v27 personHandle];
      if (v132)
      {
        v133 = v132;
        v134 = [v132 type];
        v135 = v159;
        v136 = v152;
        if (!v134)
        {
          sub_222DA7B8C(v133, &selRef_value);
          if (v137)
          {
            v93 = v55;
            if (qword_27D0475B0 != -1)
            {
              OUTLINED_FUNCTION_0_4(&qword_27D0475B0);
            }

            v138 = sub_222DDB3E0();
            OUTLINED_FUNCTION_63_0(v138, qword_27D04C928);
            v139 = sub_222DDB3C0();
            v140 = sub_222DDB6D0();
            if (os_log_type_enabled(v139, v140))
            {
              OUTLINED_FUNCTION_14_2();
              v141 = swift_slowAlloc();
              *v141 = 0;
              _os_log_impl(&dword_222D8A000, v139, v140, "Created fullName using handle value", v141, 2u);
              OUTLINED_FUNCTION_16_2();
              MEMORY[0x223DCEF40]();
            }

            sub_222DDB210();
            v142 = v162;
            (*(v159 + 8))(v152, v162);
            sub_222DA8300(v93, &qword_27D0479C0, &qword_222DDE100);
            __swift_storeEnumTagSinglePayload(v23, 0, 1, v142);
            sub_222DA835C(v23, v93, &qword_27D0479C0, &qword_222DDE100);
            goto LABEL_40;
          }

          v135 = v159;
        }

        (*(v135 + 8))(v136, v162);
      }

      else
      {
        (*(v159 + 8))(v152, v162);
      }
    }
  }

  if (qword_27D0475B0 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_27D0475B0);
  }

  v105 = sub_222DDB3E0();
  OUTLINED_FUNCTION_63_0(v105, qword_27D04C928);
  v106 = sub_222DDB3C0();
  v107 = sub_222DDB6D0();
  if (OUTLINED_FUNCTION_34_2(v107))
  {
    OUTLINED_FUNCTION_14_2();
    v108 = swift_slowAlloc();
    OUTLINED_FUNCTION_50_1(v108);
    OUTLINED_FUNCTION_18_2(&dword_222D8A000, v109, v110, "Unable to determine INPerson fullName");
    OUTLINED_FUNCTION_16_2();
    MEMORY[0x223DCEF40]();
  }

  OUTLINED_FUNCTION_26_2();
  sub_222DDB0A0();
  v111 = OUTLINED_FUNCTION_52_1();
  sub_222DA8300(v111, v112, &qword_222DDE100);
  sub_222DA835C(v23, v55, &qword_27D0479C0, &qword_222DDE100);
  v93 = v55;
LABEL_40:
  v162 = a21;
  type metadata accessor for ContactDialogPerson.Builder(0);
  swift_allocObject();
  sub_222D8FE40();
  sub_222D8FEC8(v146, v151);

  sub_222D8FED4(v157, v160);

  if (v149 == 3)
  {
    v113 = 0x707041726568746FLL;
  }

  else
  {
    v113 = 1701736302;
  }

  if (v149 == 3)
  {
    v114 = 0xE900000000000073;
  }

  else
  {
    v114 = 0xE400000000000000;
  }

  v115 = sub_222D8FEE0(v113, v114);

  *(v115 + qword_27D047A78) = v150 & 1;
  v116 = sub_222D967A4(v158);
  sub_222D8FEEC(v116, v117);

  OUTLINED_FUNCTION_26_2();
  sub_222DDB0C0();
  sub_222DDAFB0();
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_26_2();
  sub_222DDAEC0();
  sub_222DDAFD0();

  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_26_2();
  sub_222DDAEB0();
  sub_222DDAFC0();
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_26_2();
  sub_222DDB0B0();
  sub_222DDAFA0();

  OUTLINED_FUNCTION_22_2();
  v118 = v93;
  sub_222DDAF90();

  sub_222DDB080();
  sub_222DDAF70();

  OUTLINED_FUNCTION_26_2();
  sub_222DDB070();
  sub_222DDAF60();

  OUTLINED_FUNCTION_22_2();
  sub_222DDAF10();
  sub_222DDB000();
  OUTLINED_FUNCTION_60_0();
  sub_222DDB090();
  sub_222DDAF80();

  sub_222DDAEE0();
  sub_222DDAF50();

  sub_222DDAF20();
  sub_222DDB010();

  OUTLINED_FUNCTION_26_2();
  sub_222DDAEF0();
  sub_222DDAFE0();
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_22_2();
  sub_222DDAF00();
  v119 = sub_222DDAFF0();

  v120 = v161;
  v121 = sub_222DA7B8C(v161, &selRef_contactIdentifier);
  if (v122 || (v121 = sub_222DA7B8C(v120, &selRef_customIdentifier), v122))
  {
    v123 = v118;
    v124 = sub_222D8FEF8(v121, v122);

    v119 = v124;
  }

  else
  {
    v123 = v118;
  }

  if (v162)
  {
    v125 = sub_222D8FF60(v154, v162);

    v119 = v125;
  }

  v126 = [v120 image];
  if (v126)
  {
    v127 = sub_222DA7B1C(v126);
    if (v128 >> 60 != 15)
    {
      v129 = v127;
      v130 = v128;
      v131 = sub_222D8FF04(v127, v128);
      sub_222D93218(v129, v130);

      v119 = v131;
    }
  }

  type metadata accessor for ContactDialogPerson(0);
  swift_allocObject();
  sub_222D9089C(v119);

  sub_222DA8300(v123, &qword_27D0479C0, &qword_222DDE100);
LABEL_55:
  OUTLINED_FUNCTION_37_2();
}

void sub_222DA264C(uint64_t a1)
{
  OUTLINED_FUNCTION_32_2();
  v2 = v1;
  v3 = sub_222DDA0B0();
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_3();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v13 = [objc_allocWithZone(MEMORY[0x277CCAC08]) init];
  [v13 setStyle_];
  [v13 set:1 ignoresFallbacks:?];
  v14 = [v2 nameComponents];
  if (v14)
  {
    v15 = v14;
    sub_222DDA070();

    v16 = sub_222DDA050();
    v17 = [v13 stringFromPersonNameComponents_];

    sub_222DDB500();
    (*(v5 + 8))(v12, v3);
    goto LABEL_20;
  }

  v18 = [v2 displayName];
  v19 = sub_222DDB500();
  v21 = v20;

  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v22 && (sub_222DA7B8C(v2, &selRef_contactIdentifier), v23))
  {

    v24 = [v2 displayName];
    if (!v24)
    {
      sub_222DDB500();
      v24 = sub_222DDB4C0();
    }

    v25 = [v13 personNameComponentsFromString_];

    if (v25)
    {
      sub_222DDA070();

      v26 = sub_222DDA050();
      v27 = [v13 stringFromPersonNameComponents_];

      sub_222DDB500();
      (*(v5 + 8))(v9, v3);
LABEL_20:
      OUTLINED_FUNCTION_36_1();
      return;
    }

    v34 = [v2 displayName];
    sub_222DDB500();
    OUTLINED_FUNCTION_57_0();
  }

  else
  {
    v9 = 0;
    v2 = 0xE000000000000000;
  }

  v35 = v9;
  v36 = v2;
  v28 = sub_222D8F710();
  v29 = MEMORY[0x223DCE4D0](32, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v28);

  v30 = 0;
  v35 = 0;
  v36 = 0xE000000000000000;
  v31 = v29 + 56;
  v32 = *(v29 + 16);
  while (1)
  {
    if (v32 == v30)
    {

      goto LABEL_20;
    }

    if (v30 >= *(v29 + 16))
    {
      break;
    }

    if ((*(v31 - 16) ^ *(v31 - 24)) >= 0x4000)
    {

      v33 = sub_222DDB740();
      MEMORY[0x223DCE2D0](v33);
    }

    v31 += 32;
    ++v30;
  }

  __break(1u);
}

void *static ContactResolutionHelper.sortINPersonBySearchProvider(inpersons:)(uint64_t a1)
{

  v3 = sub_222DA7BEC(v1);
  sub_222DA5BE8(&v3, 0);
  return v3;
}

id sub_222DA2A5C(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_222DDB4C0();

  v4 = [v2 initWithIdentifier_];

  return v4;
}

void sub_222DA2AD0(uint64_t a1)
{
  OUTLINED_FUNCTION_32_2();
  v4 = v3;
  sub_222DA36F0(v3);
  v6 = v5;
  sub_222DA38E0(v4);
  sub_222DA39F4(v4);
  v8 = v7;
  v9 = sub_222D9EB88(v4);
  v10 = v9;
  if ((v8 & 1) == 0)
  {
    if (v9)
    {
      if (v9 >= 1)
      {
        v19 = 0;
        v20 = MEMORY[0x277D84F90];
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v21 = OUTLINED_FUNCTION_52_1();
            v22 = MEMORY[0x223DCE590](v21);
          }

          else
          {
            v22 = *(v4 + 8 * v19 + 32);
          }

          v23 = v22;
          if (v6)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_4_4();
              v20 = v26;
            }

            OUTLINED_FUNCTION_19_2();
            if (v17)
            {
              OUTLINED_FUNCTION_13_2();
              v20 = v27;
            }

            v24 = 6;
          }

          else
          {
            v1 = sub_222DA1104();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (v1 == 1)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                OUTLINED_FUNCTION_4_4();
                v20 = v30;
              }

              OUTLINED_FUNCTION_19_2();
              if (v17)
              {
                OUTLINED_FUNCTION_13_2();
                v20 = v31;
              }

              v24 = 4;
            }

            else if (v1 == 2)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                OUTLINED_FUNCTION_4_4();
                v20 = v28;
              }

              OUTLINED_FUNCTION_19_2();
              if (v17)
              {
                OUTLINED_FUNCTION_13_2();
                v20 = v29;
              }

              v24 = 3;
            }

            else
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                OUTLINED_FUNCTION_4_4();
                v20 = v32;
              }

              OUTLINED_FUNCTION_19_2();
              if (v17)
              {
                OUTLINED_FUNCTION_13_2();
                v20 = v33;
              }

              v24 = 5;
            }
          }

          ++v19;

          *(v20 + 16) = v1;
          *(v20 + v2 + 32) = v24;
        }

        while (v10 != v19);
        goto LABEL_57;
      }

      goto LABEL_59;
    }

LABEL_57:
    OUTLINED_FUNCTION_36_1();
    return;
  }

  if (!v9)
  {
    goto LABEL_57;
  }

  if (v9 >= 1)
  {
    v11 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v12 = OUTLINED_FUNCTION_48_1();
        v13 = MEMORY[0x223DCE590](v12);
      }

      else
      {
        v13 = *(v4 + 8 * v11 + 32);
      }

      v14 = v13;
      v15 = sub_222DA1104();
      v16 = swift_isUniquelyReferenced_nonNull_native();
      if (v15 == 1)
      {
        if ((v16 & 1) == 0)
        {
          OUTLINED_FUNCTION_4_4();
        }

        OUTLINED_FUNCTION_10_2();
        if (v17)
        {
          OUTLINED_FUNCTION_9_2();
        }
      }

      else if (v15 == 2)
      {
        if ((v16 & 1) == 0)
        {
          OUTLINED_FUNCTION_4_4();
        }

        OUTLINED_FUNCTION_10_2();
        if (v17)
        {
          OUTLINED_FUNCTION_9_2();
        }
      }

      else
      {
        if ((v16 & 1) == 0)
        {
          OUTLINED_FUNCTION_4_4();
        }

        OUTLINED_FUNCTION_10_2();
        if (v17)
        {
          OUTLINED_FUNCTION_9_2();
        }
      }

      ++v11;

      OUTLINED_FUNCTION_46_1();
    }

    while (!v18);
    goto LABEL_57;
  }

  __break(1u);
LABEL_59:
  __break(1u);
}

void static ContactResolutionHelper.localizeContactLabel(contact:locale:)(void *a1)
{
  v2 = [a1 personHandle];
  if (v2)
  {
    v12 = v2;
    v3 = [v2 label];
    if (v3)
    {
      v4 = v3;
      sub_222DDA1A0();
      v11 = sub_222D8F710();
      v10 = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_15_2();
      v5 = sub_222DDB770();

      OUTLINED_FUNCTION_41_1();
      sub_222DDA6A0();
      OUTLINED_FUNCTION_57_0();

      OUTLINED_FUNCTION_53_0();
      v6 = sub_222DDB4C0();
      OUTLINED_FUNCTION_35_1();

      OUTLINED_FUNCTION_21_2();
      v7 = sub_222DDB4C0();
      [v12 setValue:v5 forKey:{v7, v10, v11, v11, v11}];

      v8 = v12;
      OUTLINED_FUNCTION_6_3();
      v9 = sub_222DDB4C0();
      [a1 setValue:v8 forKey:v9];
    }

    else
    {
    }
  }
}

void static ContactResolutionHelper.makeContactDialogPersons(inpersons:directInvocationID:directInvocationKey:deviceState:globals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_38_2();
  v88 = v8;
  v77 = v9;
  v86 = v10;
  v12 = v11;
  v68 = v13;
  v80 = v14;
  v70 = v15;
  OUTLINED_FUNCTION_56();
  v16 = sub_222DDA1D0();
  OUTLINED_FUNCTION_2();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5_3();
  v76 = v20 - v21;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x28223BE20](v22);
  v24 = &v67 - v23;
  sub_222DA2AD0(v7);
  v26 = v25;
  v79 = v7;
  v27 = sub_222D9EB88(v7);
  if (v27)
  {
    v28 = v27;
    v78 = v26;
    sub_222DDB8B0();
    if ((v28 & 0x8000000000000000) == 0)
    {
      v29 = v79;
      v75 = sub_222D9EB88(v79);
      v30 = 0;
      v74 = v29 & 0xC000000000000001;
      v67 = v29 & 0xFFFFFFFFFFFFFF8;
      v84 = (v18 + 8);
      v69 = xmmword_222DDC9B0;
      v72 = v24;
      v71 = v28;
      v73 = v12;
      while (v30 < v75)
      {
        v83 = v30;
        if (v74)
        {
          v31 = MEMORY[0x223DCE590](v30, v79);
        }

        else
        {
          if (v30 >= *(v67 + 16))
          {
            goto LABEL_31;
          }

          v31 = *(v79 + 8 * v30 + 32);
        }

        v32 = v31;
        __swift_project_boxed_opaque_existential_1(v86, v86[3]);
        OUTLINED_FUNCTION_35_1();
        sub_222DDA460();
        v85 = v32;
        v33 = [v32 personHandle];
        if (v33)
        {
          v34 = v33;
          v35 = [v33 label];
          if (v35)
          {
            v36 = v35;
            v93 = sub_222DDA1A0();
            v94 = v37;
            v91 = 45;
            v92 = 0xE100000000000000;
            v89 = 95;
            v90 = 0xE100000000000000;
            v66 = sub_222D8F710();
            OUTLINED_FUNCTION_15_2();
            v38 = sub_222DDB770();

            OUTLINED_FUNCTION_47_1();
            sub_222DDA6A0();
            OUTLINED_FUNCTION_57_0();

            OUTLINED_FUNCTION_53_0();
            v39 = sub_222DDB4C0();
            OUTLINED_FUNCTION_35_1();

            OUTLINED_FUNCTION_21_2();
            v40 = sub_222DDB4C0();
            [v34 setValue:v38 forKey:v40];

            v41 = v34;
            OUTLINED_FUNCTION_6_3();
            v34 = sub_222DDB4C0();
            [v85 setValue:v41 forKey:v34];
          }
        }

        v42 = *v84;
        (*v84)(v24, v16);
        if (v80)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B40, &unk_222DDD450);
          v43 = v83;
          if (v12)
          {
            inited = swift_initStackObject();
            *(inited + 16) = v69;
            *(inited + 32) = v68;
            *(inited + 40) = v12;
            *(inited + 72) = MEMORY[0x277D83B88];
            *(inited + 48) = v43;
          }

          else
          {
            v47 = swift_initStackObject();
            OUTLINED_FUNCTION_23_2(v47, v95);
            *(v48 + 72) = MEMORY[0x277D83B88];
            *(v48 + 48) = v43;
          }

          v49 = sub_222DDB460();
          v50 = v88;
          v51 = sub_222D9F1C0(v70, v80, v49, v86);
          v88 = v50;
          if (v50)
          {

            goto LABEL_27;
          }

          v45 = v51;
          v46 = v52;
        }

        else
        {
          v45 = 0;
          v46 = 0;
          v43 = v83;
        }

        v93 = v43;
        v53 = sub_222DDBAB0();
        v87 = v54;
        if (v43 >= *(v78 + 16))
        {
          goto LABEL_30;
        }

        v55 = v53;
        v82 = v42;
        v56 = v86[3];
        v81 = *(v78 + v43 + 32);
        __swift_project_boxed_opaque_existential_1(v86, v56);
        v57 = v76;
        OUTLINED_FUNCTION_35_1();
        sub_222DDA460();
        v58 = v85;
        v59 = sub_222DA7B8C(v85, &selRef_sourceAppBundleIdentifier);
        v60 = v88;
        sub_222DA1960(v45, v46, v81, v57, v77, v59, v61, v55, v87, v66, v67, v68, v69, *(&v69 + 1), v70, v71, v72, v73, v74, v75, v76);
        v88 = v60;
        if (v60)
        {
          v64 = OUTLINED_FUNCTION_30_2();
          v65(v64);

LABEL_27:

          goto LABEL_28;
        }

        v30 = v43 + 1;
        v62 = OUTLINED_FUNCTION_30_2();
        v63(v62);

        sub_222DDB890();
        sub_222DDB8C0();
        sub_222DDB8D0();
        sub_222DDB8A0();
        v12 = v73;
        v24 = v72;
        if (v71 == v30)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

LABEL_28:
    OUTLINED_FUNCTION_37_2();
  }
}

void sub_222DA36F0(uint64_t a1)
{
  OUTLINED_FUNCTION_32_2();
  v2 = v1;
  v22 = sub_222DD9F60();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  v9 = sub_222D9EB88(v2);
  v10 = 0;
  v24 = v2;
  v25 = v2 & 0xC000000000000001;
  v23 = v2 & 0xFFFFFFFFFFFFFF8;
  v11 = (v4 + 8);
  while (1)
  {
    if (v9 == v10)
    {
      goto LABEL_17;
    }

    if (v25)
    {
      v12 = MEMORY[0x223DCE590](v10, v24);
    }

    else
    {
      if (v10 >= *(v23 + 16))
      {
        goto LABEL_19;
      }

      v12 = *(v24 + 8 * v10 + 32);
    }

    v13 = v12;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    v14 = [v12 personHandle];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 label];
      if (!v16)
      {

LABEL_17:
        OUTLINED_FUNCTION_36_1();
        return;
      }

      v17 = v16;
      sub_222DDB500();
      sub_222DD9F30();
      sub_222D8F710();
      v18 = sub_222DDB760();
      v20 = v19;

      (*v11)(v8, v22);

      v21 = HIBYTE(v20) & 0xF;
      if ((v20 & 0x2000000000000000) == 0)
      {
        v21 = v18 & 0xFFFFFFFFFFFFLL;
      }

      if (!v21)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    ++v10;
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

uint64_t sub_222DA38E0(unint64_t a1)
{
  v2 = MEMORY[0x277D84FA0];
  v12 = MEMORY[0x277D84FA0];
  result = sub_222D9EB88(a1);
  if (!result)
  {
LABEL_9:
    v10 = *(v2 + 16);

    return v10 == sub_222D9EB88(a1);
  }

  v4 = result;
  if (result >= 1)
  {
    v5 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x223DCE590](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = [v6 personHandle];
      v9 = [v8 label];

      sub_222DA68F0(&v11, v9);
    }

    while (v4 != v5);
    v2 = v12;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void sub_222DA39F4(unint64_t a1)
{
  v2 = sub_222D9EB88(a1);
  v3 = 0;
  do
  {
    v4 = v3;
    if (v2 == v3)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x223DCE590](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v8 = v5;
    v7 = sub_222DA3AC4(&v8, a1);

    v3 = v4 + 1;
  }

  while ((v7 & 1) != 0);
}

uint64_t sub_222DA3AC4(id *a1, uint64_t a2)
{
  v3 = [*a1 personHandle];
  v4 = [v3 label];

  sub_222D9E450();
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x223DCE590](0, a2);
  }

  else
  {
    v5 = *(a2 + 32);
  }

  v6 = v5;
  v7 = [v5 personHandle];

  v8 = [v7 label];
  if (v4)
  {
    if (v8)
    {
      v9 = sub_222DDB500();
      v11 = v10;
      v12 = sub_222DDB500();
      v14 = v13;

      if (v9 == v12 && v11 == v14)
      {
        v16 = 1;
      }

      else
      {
        v16 = sub_222DDBAC0();
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    if (!v8)
    {
      v16 = 1;
      return v16 & 1;
    }

    v16 = 0;
    v4 = v8;
  }

  return v16 & 1;
}

void sub_222DA3C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_38_2();
  v9 = v8;
  v10 = sub_222D9EB88(v8);
  if (v10 == 1)
  {
    OUTLINED_FUNCTION_42_1();
    sub_222D9E450();
    if ((v9 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x223DCE590](0, v9);
    }

    else
    {
      v19 = *(v9 + 32);
    }

    v20 = v19;
    sub_222DA1104();

    goto LABEL_31;
  }

  if (v10)
  {
    OUTLINED_FUNCTION_42_1();
    sub_222D9E450();
    if ((v9 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x223DCE590](0, v9);
    }

    else
    {
      v21 = *(v9 + 32);
    }

    v22 = v21;
    v23 = [v21 personHandle];

    if (!v23)
    {
      goto LABEL_31;
    }

    v24 = [v23 type];

    v25 = sub_222D9EB88(v9);
    if (v25 < 1)
    {
      __break(1u);
    }

    else
    {
      v26 = v25;
      sub_222DA80C4(1, v9);
      v27 = OUTLINED_FUNCTION_49_1();
      sub_222DA80C4(v27, v28);
      if ((v9 & 0xC000000000000001) == 0 || v26 == 1)
      {
      }

      else
      {
        sub_222D9E3E4(0, &qword_27D047BB0, 0x277CD3E90);

        v29 = 1;
        do
        {
          v30 = v29 + 1;
          sub_222DDB840();
          v29 = v30;
        }

        while (v26 != v30);
      }

      if (!(v9 >> 62))
      {
        v31 = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
        v32 = 1;
        goto LABEL_22;
      }
    }

    sub_222DDB930();
    v31 = v37;
    v32 = v38;
    v26 = v39 >> 1;
LABEL_22:
    swift_unknownObjectRetain();
    while (1)
    {
      if (v26 == v32)
      {
        goto LABEL_30;
      }

      if (v32 >= v26)
      {
        break;
      }

      v33 = *(v31 + 8 * v32);
      v34 = [v33 personHandle];
      if (!v34)
      {

LABEL_30:
        swift_unknownObjectRelease_n();
        goto LABEL_31;
      }

      v35 = v34;
      ++v32;
      v36 = [v34 type];

      if (v36 != v24)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

  if (qword_27D0475B0 != -1)
  {
LABEL_33:
    OUTLINED_FUNCTION_0_4(&qword_27D0475B0);
  }

  v11 = sub_222DDB3E0();
  OUTLINED_FUNCTION_63_0(v11, qword_27D04C928);
  v12 = sub_222DDB3C0();
  v13 = sub_222DDB6C0();
  if (OUTLINED_FUNCTION_34_2(v13))
  {
    OUTLINED_FUNCTION_14_2();
    v14 = swift_slowAlloc();
    OUTLINED_FUNCTION_50_1(v14);
    OUTLINED_FUNCTION_18_2(&dword_222D8A000, v15, v16, "ContactResolutionHelper::getSameHandleTypes - Input array empty");
    OUTLINED_FUNCTION_16_2();
    MEMORY[0x223DCEF40]();
  }

  v17 = sub_222D95EDC();
  OUTLINED_FUNCTION_50_0(&type metadata for ContactResolutionPatternError, v17);
  *v18 = 0;
  swift_willThrow();
LABEL_31:
  OUTLINED_FUNCTION_37_2();
}

void sub_222DA3F38(uint64_t a1)
{
  OUTLINED_FUNCTION_32_2();
  v2 = v1;
  v4 = v3;
  v5 = sub_222DDA1D0();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  sub_222DDAAA0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  if (v4 >> 62)
  {
    if (!OUTLINED_FUNCTION_45_1())
    {
      goto LABEL_8;
    }
  }

  else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_42_1();
  sub_222D9E450();
  if ((v4 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x223DCE590](0, v4);
  }

  else
  {
    v16 = *(v4 + 32);
  }

  v17 = v16;
  if (sub_222D9EB88(v4) < 2)
  {
  }

  else
  {
    (*(v7 + 16))(v11, v2, v5);
    sub_222DDAA80();
    v18 = [v17 displayName];
    sub_222DDB500();

    v19 = sub_222DDAA90();

    MEMORY[0x28223BE20](v20);
    *&v23[-16] = v19;
    *&v23[-8] = v15;
    sub_222DA0A6C(sub_222DA8220, &v23[-32], v4);

    v21 = OUTLINED_FUNCTION_53_0();
    v22(v21);
  }

LABEL_8:
  OUTLINED_FUNCTION_36_1();
}

uint64_t sub_222DA4190(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (!sub_222DA03A4() && !sub_222DA0448())
  {
    return 0;
  }

  v4 = [v3 displayName];
  sub_222DDB500();

  v5 = sub_222DDAA90();

  v6 = sub_222DA4254(v5, a2);

  return v6 & 1;
}

uint64_t sub_222DA4254(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  v4 = *(result + 16);
  v5 = a2 + 32;
  for (i = (result + 40); ; i += 2)
  {
    if (v2 == v3)
    {
      if (!v4)
      {
        return 1;
      }

      v7 = 0;
      v8 = 0;
      v2 = v3;
      goto LABEL_9;
    }

    if (v2 >= v3)
    {
      break;
    }

    if (__OFADD__(v2, 1))
    {
      goto LABEL_27;
    }

    v9 = (v5 + 16 * v2);
    v8 = *v9;
    v7 = v9[1];

    if (!v4)
    {
      if (v7)
      {
        goto LABEL_23;
      }

      return 1;
    }

    ++v2;
LABEL_9:
    v11 = *(i - 1);
    v10 = *i;

    if (!v7)
    {
      if (v10)
      {
LABEL_23:

        return 0;
      }

      return 1;
    }

    if (!v10)
    {
      goto LABEL_23;
    }

    if (v8 == v11 && v7 == v10)
    {
    }

    else
    {
      v13 = sub_222DDBAC0();

      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }

    --v4;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t static ContactResolutionHelper.nullHandleLabelHelper(contacts:)()
{
  sub_222DDA1D0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_4();
  sub_222DDA910();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_222DDA460();
  v1 = OUTLINED_FUNCTION_17_2();
  v3 = static ContactResolutionHelper.nullHandleLabelHelper(contacts:locale:)(v1, v2);
  v4 = OUTLINED_FUNCTION_49_1();
  v5(v4);
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v3 & 1;
}

uint64_t static ContactResolutionHelper.nullHandleLabelHelper(contacts:locale:)(char *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_64;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_65:
    v31 = 0;
    v30 = 8;
    goto LABEL_66;
  }

LABEL_3:
  sub_222DA3F38(a2);
  v6 = v5;
  v85 = MEMORY[0x277D84F90];
  sub_222DA54C8(0, v4 & ~(v4 >> 63), 0);
  if (v4 < 0)
  {
    __break(1u);
LABEL_68:
    OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
LABEL_13:
    v19 = sub_222DDB3E0();
    __swift_project_value_buffer(v19, qword_27D04C910);
    v20 = sub_222DDB3C0();
    v21 = sub_222DDB6D0();
    a1 = v84;
    if (os_log_type_enabled(v20, v21))
    {
      OUTLINED_FUNCTION_14_2();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_59_0(&dword_222D8A000, v22, v23, "ContactResolutionHelper::nullHandleLabelHelper - single candidate -> confirmation");
      OUTLINED_FUNCTION_16_2();
      MEMORY[0x223DCEF40]();
    }

    v24 = sub_222DDB3C0();
    sub_222DDB6D0();
    v25 = OUTLINED_FUNCTION_7_3();
    if (!os_log_type_enabled(v25, v26))
    {
      v30 = 0;
      v31 = 0;
      goto LABEL_49;
    }

    OUTLINED_FUNCTION_14_2();
    v27 = swift_slowAlloc();
    OUTLINED_FUNCTION_19_1(v27);
    OUTLINED_FUNCTION_12_2(&dword_222D8A000, v28, v29, "ContactResolutionHelper::nullHandleLabelHelper - Yes/No Clarification: Contact Name");
    v30 = 0;
LABEL_17:
    v31 = 0;
    goto LABEL_47;
  }

  v83 = v6;
  v84 = a1;
  v7 = 0;
  a1 = v85;
  v8 = a2 & 0xC000000000000001;
  do
  {
    if (v8)
    {
      v9 = MEMORY[0x223DCE590](v7, a2);
    }

    else
    {
      v9 = *(a2 + 8 * v7 + 32);
    }

    v10 = v9;
    v11 = sub_222DA1054();
    v13 = v12;

    v15 = *(v85 + 16);
    v14 = *(v85 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_222DA54C8((v14 > 1), v15 + 1, 1);
    }

    ++v7;
    *(v85 + 16) = v15 + 1;
    v16 = v85 + 16 * v15;
    *(v16 + 32) = v11;
    *(v16 + 40) = v13;
  }

  while (v4 != v7);

  v18 = sub_222DA4AF8(v17);
  if (v4 == 1)
  {

    if (qword_27D0475A8 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_68;
  }

  v32 = sub_222D9EB88(a2);
  v33 = 0;
  do
  {
    if (v32 == v33)
    {

      if (qword_27D0475A8 != -1)
      {
        OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
      }

      v52 = sub_222DDB3E0();
      __swift_project_value_buffer(v52, qword_27D04C910);
      v24 = sub_222DDB3C0();
      sub_222DDB6B0();
      v53 = OUTLINED_FUNCTION_7_3();
      a1 = v84;
      if (os_log_type_enabled(v53, v54))
      {
        OUTLINED_FUNCTION_14_2();
        v55 = swift_slowAlloc();
        OUTLINED_FUNCTION_19_1(v55);
        v58 = "ContactResolutionHelper::nullHandleLabelHelper - Unnamed unknown handle!";
LABEL_46:
        OUTLINED_FUNCTION_12_2(&dword_222D8A000, v56, v57, v58);
        v31 = 0;
        v30 = 1;
        goto LABEL_47;
      }

LABEL_48:
      v31 = 0;
      v30 = 1;
      goto LABEL_49;
    }

    if (v8)
    {
      v34 = MEMORY[0x223DCE590](v33, a2);
    }

    else
    {
      if (v33 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_63;
      }

      v34 = *(a2 + 8 * v33 + 32);
    }

    v35 = v34;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      v4 = sub_222DDB920();
      if (!v4)
      {
        goto LABEL_65;
      }

      goto LABEL_3;
    }

    sub_222DA0FD4();
    v37 = v36;

    ++v33;
  }

  while ((v37 & 1) != 0);
  v38 = *(v18 + 16);

  v39 = *(v85 + 16);

  if (!((v38 != v39) | v83 & 1))
  {
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
    }

    v59 = sub_222DDB3E0();
    __swift_project_value_buffer(v59, qword_27D04C910);
    v60 = sub_222DDB3C0();
    v61 = sub_222DDB6D0();
    a1 = v84;
    if (os_log_type_enabled(v60, v61))
    {
      OUTLINED_FUNCTION_14_2();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_59_0(&dword_222D8A000, v62, v63, "ContactResolutionHelper::nullHandleLabelHelper - multiple candidates with different contact ids && different names -> contact name disambiguation");
      OUTLINED_FUNCTION_16_2();
      MEMORY[0x223DCEF40]();
    }

    v24 = sub_222DDB3C0();
    sub_222DDB6D0();
    v64 = OUTLINED_FUNCTION_7_3();
    if (os_log_type_enabled(v64, v65))
    {
      OUTLINED_FUNCTION_14_2();
      v66 = swift_slowAlloc();
      OUTLINED_FUNCTION_19_1(v66);
      v58 = "ContactResolutionHelper::nullHandleLabelHelper - Detailed Disambiguation: Contact Names";
      goto LABEL_46;
    }

    goto LABEL_48;
  }

  if (qword_27D0475A8 != -1)
  {
    OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
  }

  v40 = sub_222DDB3E0();
  __swift_project_value_buffer(v40, qword_27D04C910);
  v41 = sub_222DDB3C0();
  v42 = sub_222DDB6D0();
  if (os_log_type_enabled(v41, v42))
  {
    OUTLINED_FUNCTION_14_2();
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_222D8A000, v41, v42, "ContactResolutionHelper::nullHandleLabelHelper - multiple candidates with same contactId -> handle disambiguation", v43, 2u);
    OUTLINED_FUNCTION_16_2();
    MEMORY[0x223DCEF40]();
  }

  sub_222DA36F0(a2);
  v45 = v44;
  v46 = sub_222DA38E0(a2);
  if ((v45 & 1) != 0 || (v46 & 1) == 0)
  {
    sub_222DA39F4(a2);
    a1 = v84;
    if (v67)
    {
      v24 = sub_222DDB3C0();
      sub_222DDB6D0();
      v68 = OUTLINED_FUNCTION_7_3();
      if (!os_log_type_enabled(v68, v69))
      {
        v31 = 1;
        v30 = 10;
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_14_2();
      v70 = swift_slowAlloc();
      OUTLINED_FUNCTION_19_1(v70);
      OUTLINED_FUNCTION_12_2(&dword_222D8A000, v71, v72, "ContactResolutionHelper::nullHandleLabelHelper - Detailed Disambiguation: Multiple handles same label");
      v31 = 1;
      v30 = 10;
    }

    else
    {
      v24 = sub_222DDB3C0();
      sub_222DDB6D0();
      v73 = OUTLINED_FUNCTION_7_3();
      v75 = os_log_type_enabled(v73, v74);
      if (v4 < 4)
      {
        if (!v75)
        {
          v31 = 1;
          v30 = 4;
          goto LABEL_49;
        }

        OUTLINED_FUNCTION_14_2();
        v79 = swift_slowAlloc();
        OUTLINED_FUNCTION_19_1(v79);
        OUTLINED_FUNCTION_12_2(&dword_222D8A000, v80, v81, "ContactResolutionHelper::nullHandleLabelHelper - Simple Disambiguation: Mixed Labels");
        v31 = 1;
        v30 = 4;
      }

      else
      {
        if (!v75)
        {
          v31 = 1;
          v30 = 9;
          goto LABEL_49;
        }

        OUTLINED_FUNCTION_14_2();
        v76 = swift_slowAlloc();
        OUTLINED_FUNCTION_19_1(v76);
        OUTLINED_FUNCTION_12_2(&dword_222D8A000, v77, v78, "ContactResolutionHelper::nullHandleLabelHelper - Detailed Disambiguation: Mixed Labels");
        v31 = 1;
        v30 = 9;
      }
    }

LABEL_47:
    OUTLINED_FUNCTION_16_2();
    MEMORY[0x223DCEF40]();
    goto LABEL_49;
  }

  v24 = sub_222DDB3C0();
  sub_222DDB6D0();
  v47 = OUTLINED_FUNCTION_7_3();
  a1 = v84;
  if (os_log_type_enabled(v47, v48))
  {
    v30 = 2;
    OUTLINED_FUNCTION_14_2();
    v49 = swift_slowAlloc();
    OUTLINED_FUNCTION_19_1(v49);
    OUTLINED_FUNCTION_12_2(&dword_222D8A000, v50, v51, "ContactResolutionHelper::nullHandleLabelHelper - Simple Disambiguation: Unique Labels");
    goto LABEL_17;
  }

  v31 = 0;
  v30 = 2;
LABEL_49:

LABEL_66:
  *a1 = v30;
  return v31;
}

uint64_t sub_222DA4AF8(uint64_t a1)
{
  result = MEMORY[0x223DCE3C0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_222DA6AC0(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_222DA4BB8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000222DE0D00 == a2;
  if (v3 || (sub_222DDBAC0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x49746361746E6F63 && a2 == 0xEF736C616974696ELL;
    if (v6 || (sub_222DDBAC0() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_222DDBAC0();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_222DA4CE0(unsigned __int8 a1)
{
  sub_222DDBB60();
  MEMORY[0x223DCE8B0](a1);
  return sub_222DDBB90();
}

uint64_t sub_222DA4D28(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0x49746361746E6F63;
  }

  return 0x6449656C646E7562;
}

uint64_t sub_222DA4D90(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C48, &qword_222DDD788);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222DA8534();
  sub_222DDBBC0();
  v11 = *v3;
  v12 = v3[1];
  v21 = 0;
  OUTLINED_FUNCTION_44_1(v11, v12, &v21);
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v20 = 1;
    OUTLINED_FUNCTION_44_1(v13, v14, &v20);
    v15 = v3[4];
    v16 = v3[5];
    v19 = 2;
    OUTLINED_FUNCTION_44_1(v15, v16, &v19);
  }

  return (*(v7 + 8))(v10, v5);
}

void sub_222DA4EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38_2();
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C58, &qword_222DDD790);
  OUTLINED_FUNCTION_2();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v44 - v33;
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_222DA8534();
  sub_222DDBBB0();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  else
  {
    v35 = sub_222DDB9C0();
    v47 = v36;
    v45 = sub_222DDB9C0();
    v46 = v37;
    v38 = sub_222DDB9C0();
    v39 = v34;
    v41 = v40;
    (*(v31 + 8))(v39, v29);
    __swift_destroy_boxed_opaque_existential_0(v26);
    v42 = v47;
    *v28 = v35;
    v28[1] = v42;
    v43 = v46;
    v28[2] = v45;
    v28[3] = v43;
    v28[4] = v38;
    v28[5] = v41;
  }

  OUTLINED_FUNCTION_37_2();
}

uint64_t sub_222DA5114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222DA4BB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222DA515C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222DA4CD8();
  *a1 = result;
  return result;
}

uint64_t sub_222DA5184(uint64_t a1)
{
  v2 = sub_222DA8534();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222DA51C0(uint64_t a1)
{
  v2 = sub_222DA8534();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222DA5258(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_222D9E3E4(0, &qword_27D047BB0, 0x277CD3E90);
      result = sub_222DDB650();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

char *sub_222DA52C4(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

char *sub_222DA52EC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_4(a3, result);
  }

  return result;
}

char *sub_222DA5324(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_4(a3, result);
  }

  return result;
}

void sub_222DA5364(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_28_2(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_41_1();

    MEMORY[0x2821FE828](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_41_1();

    MEMORY[0x2821FE820](v9);
  }
}

uint64_t sub_222DA5438(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_222DDD440;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_222DA54A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222DA55D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_222DA54C8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222DA5708(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_222DA54E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222DA5810(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_222DA5508(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222DA5928(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_222DA55D8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C30, &unk_222DDD6C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B38, &unk_222DDCAE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_222DA5708(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C10, &qword_222DDD6A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_222DA5810(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047BE8, &qword_222DDD680);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_222DA5928(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047BE0, &qword_222DDD678);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 64);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[64 * v8] <= v12)
    {
      memmove(v12, v13, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_222DA5A30(uint64_t a1)
{
  OUTLINED_FUNCTION_32_2();
  v6 = v5;
  v8 = v7;
  v9 = v2;
  v11 = v10;
  if (v12)
  {
    v13 = *(v2 + 24);
    v14 = v13 >> 1;
    if ((v13 >> 1) < v1)
    {
      if (v14 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if ((v13 & 0xFFFFFFFFFFFFFFFELL) <= v1)
      {
        v14 = v1;
      }
    }
  }

  else
  {
    v14 = v1;
  }

  v15 = *(v2 + 16);
  if (v14 <= v15)
  {
    v16 = *(v2 + 16);
  }

  else
  {
    v16 = v14;
  }

  if (!v16)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  v17 = *(v8(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_24;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_19:
  v23 = *(v8(0) - 8);
  if (v11)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    sub_222DA5364(v9 + v24, v15, v20 + v24, v6);
    *(v9 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_36_1();
}

uint64_t sub_222DA5BE8(uint64_t *a1, void *a2)
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_222DA82EC(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_222DA5C6C(v8, a2);
  return sub_222DDB8A0();
}

void sub_222DA5C6C(uint64_t *a1, void *a2)
{
  v5 = a1[1];
  v6 = sub_222DDBAA0();
  if (v6 < v5)
  {
    v7 = v6;
    v8 = sub_222DA5258(v5 / 2);
    v10[0] = v9;
    v10[1] = (v5 / 2);
    sub_222DA5E68(v10, v11, a1, v7, a2);
    if (v2)
    {
      if (v5 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v5 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v5)
  {
    sub_222DA5D60(0, v5, 1, a1, a2);
  }
}

void sub_222DA5D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, id a5)
{
  if (a3 != a2)
  {
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = a1 - a3;
    while (2)
    {
      v21 = a3;
      v9 = *(v6 + 8 * a3);
      v19 = v8;
      v20 = v7;
      do
      {
        v10 = *v7;
        v11 = v9;
        v12 = v10;
        v13 = [v11 searchProvider];
        v14 = [v12 searchProvider];

        if (v13 != a5)
        {
          if (v14 == a5)
          {
            break;
          }

          if (v13 == 1 && v14 == 3)
          {
            break;
          }
        }

        if (!v6)
        {
          __break(1u);
          return;
        }

        v16 = *v7;
        v9 = *(v7 + 8);
        *v7 = v9;
        *(v7 + 8) = v16;
        v7 -= 8;
      }

      while (!__CFADD__(v8++, 1));
      a3 = v21 + 1;
      v7 = v20 + 8;
      v8 = v19 - 1;
      if (v21 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_222DA5E68(void ***a1, uint64_t a2, uint64_t *a3, int64_t a4, id a5)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    i = MEMORY[0x277D84F90];
LABEL_114:
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_155;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_116:
      v112 = i;
      v92 = (i + 16);
      for (i = *(i + 16); i >= 2; *v92 = i)
      {
        if (!*a3)
        {
          goto LABEL_152;
        }

        v93 = (v112 + 16 * i);
        v94 = *v93;
        v95 = &v92[2 * i];
        v96 = v95[1];
        sub_222DA6538((*a3 + 8 * *v93), (*a3 + 8 * *v95), (*a3 + 8 * v96), v8, a5);
        if (v113)
        {
          break;
        }

        if (v96 < v94)
        {
          goto LABEL_140;
        }

        if (i - 2 >= *v92)
        {
          goto LABEL_141;
        }

        *v93 = v94;
        v93[1] = v96;
        v97 = *v92 - i;
        if (*v92 < i)
        {
          goto LABEL_142;
        }

        v113 = 0;
        i = *v92 - 1;
        memmove(v95, v95 + 2, 16 * v97);
      }

LABEL_124:

      return;
    }

LABEL_149:
    i = sub_222DA67DC(i);
    goto LABEL_116;
  }

  v6 = 0;
  i = MEMORY[0x277D84F90];
  while (2)
  {
    v8 = v6;
    v9 = v6 + 1;
    if (v6 + 1 >= v5)
    {
      goto LABEL_40;
    }

    v109 = i;
    v10 = *a3;
    v11 = *(*a3 + 8 * v6);
    v105 = v5;
    v12 = *(*a3 + 8 * v9);
    v13 = v11;
    i = &off_2784BF000;
    v14 = [v12 searchProvider];
    v15 = [v13 searchProvider];

    v17 = v14 != 1 || v15 != 3;
    if (v15 == a5)
    {
      v17 = 0;
    }

    if (v14 == a5)
    {
      v17 = 1;
    }

    v103 = v17;
    v18 = v105;
    v100 = v8;
    v19 = 8 * v8;
    v20 = (v10 + 8 * v8 + 16);
    v98 = v19;
    for (j = v19 + 8; ; j += 8)
    {
      v22 = v9++;
      if (v9 >= v18)
      {
        break;
      }

      v23 = *(v20 - 1);
      v24 = *v20;
      v25 = v23;
      i = &off_2784BF000;
      v26 = [v24 searchProvider];
      v27 = [v25 searchProvider];

      if (v26 == a5)
      {
        if (v27 != a5)
        {
          v18 = v105;
          goto LABEL_25;
        }
      }

      else if (v27 == a5)
      {
        v18 = v105;
LABEL_27:
        if (v103)
        {
          goto LABEL_30;
        }

        goto LABEL_28;
      }

      v28 = v26 == 1 && v27 == 3;
      v18 = v105;
      if (v28)
      {
        goto LABEL_27;
      }

LABEL_25:
      if (!v103)
      {
        v9 = v22 + 1;
LABEL_39:
        i = v109;
        v8 = v100;
        goto LABEL_40;
      }

LABEL_28:
      ++v20;
    }

    if (!v103)
    {
      goto LABEL_39;
    }

LABEL_30:
    v9 = v22 + 1;
    v8 = v100;
    if (v22 + 1 < v100)
    {
      goto LABEL_146;
    }

    if (v100 >= v9)
    {
      i = v109;
    }

    else
    {
      v29 = v100;
      i = v109;
      v30 = v98;
      do
      {
        if (v29 != v22)
        {
          v31 = *a3;
          if (!*a3)
          {
            goto LABEL_153;
          }

          v32 = *(v31 + v30);
          *(v31 + v30) = *(v31 + j);
          *(v31 + j) = v32;
        }

        v29 = (v29 + 1);
        j -= 8;
        v30 += 8;
      }

      while (v29 < v22--);
    }

LABEL_40:
    v34 = a3[1];
    if (v9 >= v34)
    {
      goto LABEL_61;
    }

    if (__OFSUB__(v9, v8))
    {
      goto LABEL_145;
    }

    if (v9 - v8 >= a4)
    {
LABEL_61:
      if (v9 < v8)
      {
        goto LABEL_144;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_222DD7500();
        i = v90;
      }

      v50 = *(i + 16);
      v51 = v50 + 1;
      if (v50 >= *(i + 24) >> 1)
      {
        sub_222DD7500();
        i = v91;
      }

      *(i + 16) = v51;
      v52 = i + 32;
      v53 = (i + 32 + 16 * v50);
      *v53 = v8;
      v53[1] = v9;
      v107 = v9;
      v54 = *a1;
      if (!*a1)
      {
        goto LABEL_154;
      }

      if (!v50)
      {
LABEL_111:
        v6 = v107;
        v5 = a3[1];
        if (v107 >= v5)
        {
          goto LABEL_114;
        }

        continue;
      }

      v111 = i;
      while (1)
      {
        v55 = v51 - 1;
        v56 = (v52 + 16 * (v51 - 1));
        v57 = (i + 16 * v51);
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v58 = *(i + 32);
          v59 = *(i + 40);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_82:
          if (v61)
          {
            goto LABEL_131;
          }

          v73 = *v57;
          v72 = v57[1];
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_134;
          }

          v77 = v56[1];
          v78 = v77 - *v56;
          if (__OFSUB__(v77, *v56))
          {
            goto LABEL_137;
          }

          if (__OFADD__(v75, v78))
          {
            goto LABEL_139;
          }

          if (v75 + v78 >= v60)
          {
            if (v60 < v78)
            {
              v55 = v51 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v51 < 2)
        {
          goto LABEL_133;
        }

        v80 = *v57;
        v79 = v57[1];
        v68 = __OFSUB__(v79, v80);
        v75 = v79 - v80;
        v76 = v68;
LABEL_97:
        if (v76)
        {
          goto LABEL_136;
        }

        v82 = *v56;
        v81 = v56[1];
        v68 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v68)
        {
          goto LABEL_138;
        }

        if (v83 < v75)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v55 - 1 >= v51)
        {
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
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
          goto LABEL_148;
        }

        if (!*a3)
        {
          goto LABEL_151;
        }

        v87 = (v52 + 16 * (v55 - 1));
        i = *v87;
        v88 = (v52 + 16 * v55);
        v89 = v88[1];
        sub_222DA6538((*a3 + 8 * *v87), (*a3 + 8 * *v88), (*a3 + 8 * v89), v54, a5);
        if (v113)
        {
          goto LABEL_124;
        }

        if (v89 < i)
        {
          goto LABEL_126;
        }

        v8 = *(v111 + 16);
        if (v55 > v8)
        {
          goto LABEL_127;
        }

        *v87 = i;
        v87[1] = v89;
        if (v55 >= v8)
        {
          goto LABEL_128;
        }

        v113 = 0;
        v51 = v8 - 1;
        memmove((v52 + 16 * v55), v88 + 2, 16 * (v8 - 1 - v55));
        i = v111;
        *(v111 + 16) = v8 - 1;
        if (v8 <= 2)
        {
          goto LABEL_111;
        }
      }

      v62 = v52 + 16 * v51;
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_129;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_130;
      }

      v69 = v57[1];
      v70 = v69 - *v57;
      if (__OFSUB__(v69, *v57))
      {
        goto LABEL_132;
      }

      v68 = __OFADD__(v60, v70);
      v71 = v60 + v70;
      if (v68)
      {
        goto LABEL_135;
      }

      if (v71 >= v65)
      {
        v85 = *v56;
        v84 = v56[1];
        v68 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v68)
        {
          goto LABEL_143;
        }

        if (v60 < v86)
        {
          v55 = v51 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

    break;
  }

  v35 = v8 + a4;
  if (__OFADD__(v8, a4))
  {
    goto LABEL_147;
  }

  if (v35 >= v34)
  {
    v35 = a3[1];
  }

  if (v35 < v8)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v9 == v35)
  {
    goto LABEL_61;
  }

  v110 = i;
  v36 = *a3;
  v37 = *a3 + 8 * v9 - 8;
  v101 = v8;
  v38 = (v8 - v9);
  v104 = v35;
LABEL_49:
  v106 = v9;
  v39 = *(v36 + 8 * v9);
  v40 = v38;
  v41 = v37;
  while (1)
  {
    v42 = *v41;
    v43 = v39;
    v44 = v42;
    v45 = [v43 searchProvider];
    v46 = [v44 searchProvider];

    if (v45 != a5)
    {
      if (v46 == a5 || (v45 == 1 ? (v47 = v46 == 3) : (v47 = 0), v47))
      {
LABEL_59:
        v9 = v106 + 1;
        v37 += 8;
        --v38;
        if (v106 + 1 == v104)
        {
          v9 = v104;
          i = v110;
          v8 = v101;
          goto LABEL_61;
        }

        goto LABEL_49;
      }
    }

    if (!v36)
    {
      break;
    }

    v48 = *v41;
    v39 = *(v41 + 8);
    *v41 = v39;
    *(v41 + 8) = v48;
    v41 -= 8;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
}

uint64_t sub_222DA6538(void **__src, id *__dst, void **a3, void **a4, id a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __dst;
  v8 = __src;
  v9 = __dst - __src;
  v10 = a3 - __dst;
  if (v9 < v10)
  {
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    for (i = &v5[v9]; ; i = v14)
    {
      if (v5 >= i || v7 >= v6)
      {
        v24 = v8;
        goto LABEL_50;
      }

      v14 = i;
      v15 = v6;
      v16 = *v5;
      v17 = *v7;
      v18 = v16;
      v19 = [v17 searchProvider];
      v20 = [v18 searchProvider];

      if (v19 == a5)
      {
        break;
      }

      if (v20 != a5)
      {
        v22 = v19 == 1 && v20 == 3;
        if (!v22)
        {
          break;
        }
      }

      v21 = v5;
      v22 = v8 == v5++;
      if (!v22)
      {
        goto LABEL_14;
      }

LABEL_15:
      ++v8;
      v6 = v15;
    }

    v21 = v7;
    v22 = v8 == v7++;
    if (v22)
    {
      goto LABEL_15;
    }

LABEL_14:
    *v8 = *v21;
    goto LABEL_15;
  }

  if (a4 != __dst || &__dst[v10] <= a4)
  {
    memmove(a4, __dst, 8 * v10);
  }

  i = &v5[v10];
  v40 = v8;
LABEL_31:
  v24 = v7;
  v41 = v7 - 1;
  v25 = v6 - 1;
  while (i > v5 && v24 > v8)
  {
    v27 = v25;
    v28 = v5;
    v29 = i;
    v30 = i - 1;
    v31 = *v41;
    v32 = *(i - 1);
    v33 = v31;
    v34 = [v32 searchProvider];
    v35 = [v33 searchProvider];

    if (v34 == a5 || v35 != a5 && (v34 == 1 ? (v36 = v35 == 3) : (v36 = 0), !v36))
    {
      v6 = v27;
      v22 = v27 + 1 == v24;
      v5 = v28;
      i = v29;
      v8 = v40;
      v7 = v41;
      if (!v22)
      {
        *v6 = *v41;
      }

      goto LABEL_31;
    }

    if (v29 != v27 + 1)
    {
      *v27 = *v30;
    }

    v25 = v27 - 1;
    i = v30;
    v5 = v28;
    v8 = v40;
  }

LABEL_50:
  v37 = i - v5;
  if (v24 != v5 || v24 >= &v5[v37])
  {
    memmove(v24, v5, 8 * v37);
  }

  return 1;
}

char *sub_222DA67F0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C28, &qword_222DDD6B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_222DA68F0(void *a1, void *a2)
{
  v5 = *v2;
  sub_222DDBB60();
  sub_222DDBB80();
  if (a2)
  {
    sub_222DDB500();
    sub_222DDB560();
  }

  v6 = sub_222DDBB90();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    v17 = a2;
    sub_222DA70A8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v21;
    *a1 = a2;
    return 1;
  }

  v9 = ~v7;
  while (1)
  {
    if (!*(*(v5 + 48) + 8 * v8))
    {
      if (!a2)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    if (!a2)
    {
      goto LABEL_14;
    }

    v10 = sub_222DDB500();
    v12 = v11;
    if (v10 == sub_222DDB500() && v12 == v13)
    {
      break;
    }

    v15 = sub_222DDBAC0();

    if (v15)
    {

      goto LABEL_17;
    }

LABEL_14:
    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

LABEL_17:
  v19 = *(*(v5 + 48) + 8 * v8);
  *a1 = v19;
  v20 = v19;
  return 0;
}

BOOL sub_222DA6AC0(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_222DDBB60();
  sub_222DDB560();
  v8 = sub_222DDBB90();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_222DDBAC0() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_222DA72B8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_222DA6C0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047BF8, &qword_222DDD690);
  result = sub_222DDB800();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; result = sub_222DA6FCC(*(*(v3 + 48) + 8 * (v12 | (v6 << 6))), v5))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_11:
      ;
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v6 >= i)
      {
        break;
      }

      v14 = v7[v6];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_11;
      }
    }

    v15 = 1 << *(v3 + 32);
    if (v15 >= 64)
    {
      sub_222DA5438(0, (v15 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v15;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_222DA6D70(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C08, &qword_222DDD6A0);
  result = sub_222DDB800();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_222DA5438(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_222DDBB60();
    sub_222DDB560();
    result = sub_222DDBB90();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_222DA6FCC(uint64_t a1, uint64_t a2)
{
  sub_222DDBB60();
  sub_222DDBB80();
  if (a1)
  {
    sub_222DDB500();
    sub_222DDB560();
  }

  sub_222DDBB90();
  result = sub_222DDB7B0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_222DA70A8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_222DA6C0C(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_222DA7420();
        goto LABEL_22;
      }

      sub_222DA76C8(v6 + 1);
    }

    v8 = *v3;
    sub_222DDBB60();
    sub_222DDBB80();
    if (v5)
    {
      sub_222DDB500();
      sub_222DDB560();
    }

    result = sub_222DDBB90();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v10 = ~v9;
      do
      {
        result = *(*(v8 + 48) + 8 * a2);
        if (result)
        {
          if (v5)
          {
            v11 = sub_222DDB500();
            v13 = v12;
            if (v11 == sub_222DDB500() && v13 == v14)
            {
              goto LABEL_25;
            }

            v16 = sub_222DDBAC0();

            if (v16)
            {
              goto LABEL_26;
            }
          }
        }

        else if (!v5)
        {
          goto LABEL_26;
        }

        a2 = (a2 + 1) & v10;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_22:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + 8 * a2) = v5;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_25:

LABEL_26:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047BF0, &qword_222DDD688);
    result = sub_222DDBAE0();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v20;
  }

  return result;
}

unint64_t sub_222DA72B8(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_222DA6D70(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_222DA77F8(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_222DDBB60();
      sub_222DDB560();
      result = sub_222DDBB90();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_222DDBAC0() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_222DA7570();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_222DDBAE0();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

id sub_222DA7420()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047BF8, &qword_222DDD690);
  v2 = *v0;
  v3 = sub_222DDB7F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_222DA7570()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C08, &qword_222DDD6A0);
  v2 = *v0;
  v3 = sub_222DDB7F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_222DA76C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047BF8, &qword_222DDD690);
  result = sub_222DDB800();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v3 + 56);
    for (i = (v7 + 63) >> 6; v9; result = sub_222DA6FCC(v14, v5))
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      v14 = *(*(v3 + 48) + 8 * (v11 | (v6 << 6)));
      v15 = v14;
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= i)
      {
        goto LABEL_13;
      }

      v13 = *(v3 + 56 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_222DA77F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C08, &qword_222DDD6A0);
  result = sub_222DDB800();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_222DDBB60();

        sub_222DDB560();
        result = sub_222DDBB90();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

void sub_222DA7A2C(uint64_t a1, void *a2)
{
  v3 = sub_222DDB440();

  [a2 setUserData_];
}

uint64_t sub_222DA7AAC(void *a1)
{
  v2 = [a1 value];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_222DDB500();

  return v3;
}

uint64_t sub_222DA7B1C(void *a1)
{
  v2 = [a1 _imageData];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_222DDA130();

  return v3;
}

uint64_t sub_222DA7B8C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_222DDB500();

  return v4;
}

void *sub_222DA7BEC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_222DDB920();
    if (v4)
    {
      v5 = v4;
      v2 = sub_222DD7A44(v4, 0);
      sub_222DA7C80((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_222DA7C80(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_222DDB920();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_222D9EB88(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_222D9E3E4(0, &qword_27D047BB0, 0x277CD3E90);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_222DA8240();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C18, &qword_222DDD6B0);
          v9 = sub_222DA7DF4(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_222DA7DF4(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_222DA549C(a3);
  sub_222D9E450();
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_41_1();
    v7 = MEMORY[0x223DCE590](v9);
  }

  *a1 = v7;
  return sub_222DA7E7C;
}

uint64_t sub_222DA7E84(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 0:
    case 1:
    case 2:
    case 4:
      goto LABEL_3;
    case 3:

LABEL_3:

      break;
    default:
      return v5;
  }

  return v5;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_222DA7F24(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 25))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_222DA7F64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t getEnumTagSinglePayload for ContactResolutionHelper(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
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

_BYTE *storeEnumTagSinglePayload for ContactResolutionHelper(_BYTE *result, int a2, int a3)
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

uint64_t sub_222DA80C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_222DDB920();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_222DA811C(uint64_t a1, uint64_t a2)
{
  sub_222DDB500();
  OUTLINED_FUNCTION_55_0();
  if (v3 == sub_222DDB500() && v2 == v4)
  {
    v6 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_17_2();
    v6 = sub_222DDBAC0();
  }

  return v6 & 1;
}

uint64_t sub_222DA8198(uint64_t a1, uint64_t a2)
{
  sub_222DDB500();
  sub_222DDB560();
}

unint64_t sub_222DA8240()
{
  result = qword_27D047C20;
  if (!qword_27D047C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D047C18, &qword_222DDD6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047C20);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_222DA8300(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_28_2();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_222DA835C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_28_2();
  (*(v6 + 32))(a2, a1);
  return a2;
}

unint64_t sub_222DA83C0()
{
  result = qword_27D047C38;
  if (!qword_27D047C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047C38);
  }

  return result;
}

uint64_t sub_222DA8414(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B28, "|M");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_222DA8498(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_222DA84D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_222DA8534()
{
  result = qword_27D047C50;
  if (!qword_27D047C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047C50);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriInferenceFlowsViewDataModels.ViewData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_222DA8678()
{
  result = qword_27D047C60;
  if (!qword_27D047C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047C60);
  }

  return result;
}

unint64_t sub_222DA86D0()
{
  result = qword_27D047C68;
  if (!qword_27D047C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047C68);
  }

  return result;
}

unint64_t sub_222DA8728()
{
  result = qword_27D047C70;
  if (!qword_27D047C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047C70);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_4(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_4_4()
{

  sub_222DD7444();
}

void OUTLINED_FUNCTION_9_2()
{

  sub_222DD7444();
}

void OUTLINED_FUNCTION_12_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

void OUTLINED_FUNCTION_13_2()
{

  sub_222DD7444();
}

void OUTLINED_FUNCTION_18_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_22_2()
{

  return sub_222DA8300(v2, v0, v1);
}

__n128 OUTLINED_FUNCTION_23_2@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a2 - 256);
  a1[1] = result;
  a1[2].n128_u64[0] = 0x7865646E69;
  a1[2].n128_u64[1] = 0xE500000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_31_2()
{
}

BOOL OUTLINED_FUNCTION_34_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_44_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_222DDBA50();
}

uint64_t OUTLINED_FUNCTION_45_1()
{

  return sub_222DDB920();
}

void OUTLINED_FUNCTION_59_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_60_0()
{
}

uint64_t sub_222DA8C4C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CA8, &qword_222DDDD40);
    v2 = sub_222DDB940();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_222D8FDAC(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_222D93798(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_222D93798(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_222D93798(v31, v32);
    result = sub_222DDB7C0();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v23 = *(v2 + 48) + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_222D93798(v32, (*(v2 + 56) + 32 * v18));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t ContactResolutionSnippetGenerator.__allocating_init(appBundleId:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_52_0();
  v6 = swift_allocObject();
  ContactResolutionSnippetGenerator.init(appBundleId:globals:)(a1, a2, a3);
  return v6;
}

void *ContactResolutionSnippetGenerator.init(appBundleId:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  sub_222DDA910();
  sub_222D97C84(&v5, (v3 + 5));
  return v3;
}

void *ContactResolutionSnippetGenerator.__allocating_init(appBundleId:globals:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  OUTLINED_FUNCTION_52_0();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  sub_222D97C84(a4, (v8 + 5));
  return v8;
}

void *ContactResolutionSnippetGenerator.init(appBundleId:globals:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  sub_222D97C84(a4, (v4 + 5));
  return v4;
}

uint64_t ContactResolutionSnippetGenerator.generateSimpleDisambiguationUniqueLabels(contacts:directInvocationID:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_12_1();
  v1[33] = v2;
  v1[34] = v0;
  v1[31] = v3;
  v1[32] = v4;
  v1[29] = v5;
  v1[30] = v6;
  v1[35] = *v0;
  v7 = sub_222DDA560();
  v1[36] = v7;
  OUTLINED_FUNCTION_10_1(v7);
  v1[37] = v8;
  v9 = OUTLINED_FUNCTION_48_0();
  v10 = OUTLINED_FUNCTION_68_0(v9);
  v1[39] = v10;
  OUTLINED_FUNCTION_10_1(v10);
  v1[40] = v11;
  v1[41] = OUTLINED_FUNCTION_48_0();
  v12 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v12);
}

uint64_t sub_222DA9284()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_3();
  *v5 = v4;
  *(v6 + 352) = v0;

  OUTLINED_FUNCTION_57();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_222DA9398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_222DB13EC;

  return sub_222DA9460();
}

uint64_t sub_222DA9460()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_40_2(v1, v2, v3, v4);
  v5 = sub_222DDA770();
  v0[27] = v5;
  OUTLINED_FUNCTION_10_1(v5);
  v0[28] = v6;
  v0[29] = OUTLINED_FUNCTION_48_0();
  v7 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_222DA9500()
{
  OUTLINED_FUNCTION_14_1();
  if (sub_222DA8780())
  {
    sub_222D9E144(*(v0 + 184));
    v1 = swift_task_alloc();
    *(v0 + 240) = v1;
    *v1 = v0;
    v2 = OUTLINED_FUNCTION_42_2(v1);

    return ContactResolutionSnippetGenerator.convertINPersonImageData(contacts:)(v2);
  }

  else
  {
    if (qword_27D0475B8 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_27D0475B8);
    }

    v4 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v4, qword_27D04C940);
    v5 = sub_222DDB3C0();
    v6 = sub_222DDB6C0();
    if (OUTLINED_FUNCTION_25_1(v6))
    {
      v7 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_1(v7);
      OUTLINED_FUNCTION_9_1(&dword_222D8A000, v8, v9, "contacts array is empty: contacts array cannot be empty");
      OUTLINED_FUNCTION_16_1();
    }

    v10 = sub_222D95EDC();
    v11 = OUTLINED_FUNCTION_50_0(&type metadata for ContactResolutionPatternError, v10);
    OUTLINED_FUNCTION_38_1(v11, v12);

    OUTLINED_FUNCTION_29_1();

    return v13();
  }
}

uint64_t sub_222DA965C()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_6_4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 248) = v3;

  v4 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_222DA9744()
{
  v23 = v1;
  v2 = v1[26];
  static ContactResolutionHelper.makeContactDialogPersons(inpersons:directInvocationID:deviceState:globals:appBundleId:)(v1[31], v1[24], v1[25], (v2 + 5), v2[4], v2[2], v2[3]);
  OUTLINED_FUNCTION_71_0();
  sub_222DA3C38(v1[23], v3, v4, v5, v6, v7, v8, v9);
  v10 = v1[29];
  v11 = v1[26];
  v20 = v1[27];
  v21 = v1[28];
  v18 = v1[24];
  v19 = v1[25];
  OUTLINED_FUNCTION_64_0();
  __swift_project_boxed_opaque_existential_1(v2 + 5, *(v11 + 64));

  sub_222DDA760();
  OUTLINED_FUNCTION_54_1();
  v17 = *(v21 + 8);
  v17(v10, v20);
  v12 = OUTLINED_FUNCTION_78();

  OUTLINED_FUNCTION_74(v2 + 5, *(v11 + 64));
  v13 = OUTLINED_FUNCTION_54_1();
  v17(v10, v20);
  sub_222DAE0B4(v0, (v13 & 1) == 0, v18, v19, __src);
  v15 = v1[22];

  memcpy(v1 + 2, __src, 0x80uLL);
  OUTLINED_FUNCTION_41_2();
  *(v15 + 153) = 1;
  *(v15 + 160) = v12;

  OUTLINED_FUNCTION_13_3();

  return v16();
}

uint64_t sub_222DA9918()
{
  OUTLINED_FUNCTION_12_1();
  v1[155] = v0;
  v1[154] = v2;
  v1[153] = v3;
  v1[152] = v4;
  v1[151] = v5;
  v1[150] = v6;
  v1[149] = v7;
  v8 = sub_222DDA800();
  v1[156] = v8;
  OUTLINED_FUNCTION_10_1(v8);
  v1[157] = v9;
  v1[158] = OUTLINED_FUNCTION_48_0();
  v10 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_222DA99D4()
{
  OUTLINED_FUNCTION_12_1();
  v1 = v0[153];
  (*(v0[157] + 16))(v0[158], v0[150], v0[156]);
  v5 = (v1 + *v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_3();
  v0[159] = v2;
  *v2 = v3;
  v2[1] = sub_222DA9AE0;

  return v5(v0 + 10);
}

uint64_t sub_222DA9AE0()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_3();
  *v5 = v4;
  *(v6 + 1280) = v0;

  OUTLINED_FUNCTION_57();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_222DA9BD8()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0[152];
  memcpy(v0 + 31, v0 + 10, 0xA8uLL);
  if (v1)
  {
    v0[166] = v1;
    v3 = v1;
    sub_222DDA7F0();
    memcpy(v0 + 73, v0 + 31, 0xA8uLL);
    swift_task_alloc();
    OUTLINED_FUNCTION_23_3();
    v0[167] = v4;
    *v4 = v5;
    OUTLINED_FUNCTION_27_3(v4);
    OUTLINED_FUNCTION_31_1();

    return sub_222DAE984();
  }

  else
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v0[161] = [objc_opt_self() bundleForClass_];
    objc_opt_self();
    v0[162] = sub_222DDB4C0();

    sub_222DA8C4C(v0[51]);
    v0[163] = sub_222DDB440();

    sub_222DDB160();
    v0[164] = sub_222DDB440();

    v0[2] = v0;
    v0[7] = v0 + 148;
    v0[3] = sub_222DAA03C;
    v8 = swift_continuation_init();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C88, &qword_222DDDD18);
    v0[142] = v9;
    v0[139] = v8;
    v0[135] = MEMORY[0x277D85DD0];
    v0[136] = 1107296256;
    v0[137] = sub_222DB13F8;
    v0[138] = &block_descriptor_67;
    OUTLINED_FUNCTION_61_1(v9, sel_execute_catId_parameters_globals_completion_);
    OUTLINED_FUNCTION_31_1();

    return MEMORY[0x282200938](v10);
  }
}

uint64_t sub_222DAA03C()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_6_4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1320) = *(v3 + 48);
  OUTLINED_FUNCTION_57();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_222DAA138()
{
  OUTLINED_FUNCTION_34_3();
  v1 = *(v0 + 1312);
  v2 = *(v0 + 1304);
  v3 = *(v0 + 1296);
  v4 = *(v0 + 1288);
  v5 = *(v0 + 1184);

  *(v0 + 1328) = v5;
  v6 = *(v0 + 1216);
  sub_222DDA7F0();
  memcpy((v0 + 584), (v0 + 248), 0xA8uLL);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_3();
  *(v0 + 1336) = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_27_3(v7);

  return sub_222DAE984();
}

uint64_t sub_222DAA304()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_24_3();
  v3 = v2;
  OUTLINED_FUNCTION_19_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_3();
  *v6 = v5;
  *(v3 + 1344) = v0;

  OUTLINED_FUNCTION_57();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_222DAA410()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_34_3();
  v1 = v0[166];
  memcpy(v0 + 94, v0 + 52, 0xA8uLL);
  sub_222DDA690();
  swift_allocObject();
  v0[169] = sub_222DDA680();
  v0[146] = &type metadata for ContactDisambiguationSnippetPluginModel;
  v0[147] = sub_222DB1010();
  v2 = swift_allocObject();
  v0[143] = v2;
  memcpy((v2 + 16), v0 + 94, 0x99uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0487F0, &unk_222DDD310);
  v3 = swift_allocObject();
  v0[170] = v3;
  *(v3 + 16) = xmmword_222DDD2F0;
  *(v3 + 32) = v1;
  sub_222DB11CC((v0 + 94), (v0 + 115));
  v4 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_3();
  v0[171] = v5;
  *v5 = v6;
  v5[1] = sub_222DAA588;
  OUTLINED_FUNCTION_81();

  return v11(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_222DAA588()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_24_3();
  v2 = v1;
  OUTLINED_FUNCTION_19_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_3_3();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 1144));
  v6 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_222DAA6B0()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_34_3();
  v1 = v0[166];
  v2 = v0[158];
  v3 = v0[157];
  v4 = v0[156];
  v5 = v0[149];
  sub_222DB0FBC((v0 + 31));
  (*(v3 + 8))(v2, v4);
  memcpy(v5, v0 + 94, 0xA8uLL);
  v5[21] = v1;

  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_81();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_222DAA758()
{
  OUTLINED_FUNCTION_12_1();
  (*(v0[157] + 8))(v0[158], v0[156]);

  OUTLINED_FUNCTION_29_1();

  return v1();
}

uint64_t sub_222DAA7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_49_0();
  v13 = v12[164];
  v14 = v12[163];
  v15 = v12[162];
  v16 = v12[161];
  v17 = v12[158];
  v18 = v12[157];
  v19 = v12[156];
  swift_willThrow();
  sub_222DB0FBC((v12 + 31));
  (*(v18 + 8))(v17, v19);

  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_43_2();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_222DAA888()
{
  OUTLINED_FUNCTION_14_1();
  v1 = *(v0 + 1264);
  v2 = *(v0 + 1256);
  v3 = *(v0 + 1248);

  (*(v2 + 8))(v1, v3);
  sub_222DB0FBC(v0 + 248);

  OUTLINED_FUNCTION_29_1();

  return v4();
}

uint64_t ContactResolutionSnippetGenerator.generateSimpleDisambiguationMixedLabels(contacts:directInvocationID:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_12_1();
  v1[33] = v2;
  v1[34] = v0;
  v1[31] = v3;
  v1[32] = v4;
  v1[29] = v5;
  v1[30] = v6;
  v1[35] = *v0;
  v7 = sub_222DDA560();
  v1[36] = v7;
  OUTLINED_FUNCTION_10_1(v7);
  v1[37] = v8;
  v9 = OUTLINED_FUNCTION_48_0();
  v10 = OUTLINED_FUNCTION_68_0(v9);
  v1[39] = v10;
  OUTLINED_FUNCTION_10_1(v10);
  v1[40] = v11;
  v1[41] = OUTLINED_FUNCTION_48_0();
  v12 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v12);
}

uint64_t sub_222DAAB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_222DB13EC;

  return sub_222DAAC44();
}

uint64_t sub_222DAAC44()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_40_2(v1, v2, v3, v4);
  v5 = sub_222DDA770();
  v0[27] = v5;
  OUTLINED_FUNCTION_10_1(v5);
  v0[28] = v6;
  v0[29] = OUTLINED_FUNCTION_48_0();
  v7 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_222DAACE4()
{
  OUTLINED_FUNCTION_14_1();
  sub_222D9FBA4(v0[26] + 40);
  v0[30] = 0;
  if (sub_222DA8780())
  {
    sub_222D9E144(v0[23]);
    v3 = swift_task_alloc();
    v0[31] = v3;
    *v3 = v0;
    v4 = OUTLINED_FUNCTION_42_2(v3);

    return ContactResolutionSnippetGenerator.convertINPersonImageData(contacts:)(v4);
  }

  else
  {
    if (qword_27D0475B8 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_27D0475B8);
    }

    v5 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v5, qword_27D04C940);
    v6 = sub_222DDB3C0();
    v7 = sub_222DDB6C0();
    if (OUTLINED_FUNCTION_25_1(v7))
    {
      v8 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_1(v8);
      OUTLINED_FUNCTION_9_1(&dword_222D8A000, v9, v10, "contacts array is empty: contacts array cannot be empty");
      OUTLINED_FUNCTION_16_1();
    }

    v11 = sub_222D95EDC();
    v12 = OUTLINED_FUNCTION_50_0(&type metadata for ContactResolutionPatternError, v11);
    OUTLINED_FUNCTION_38_1(v12, v13);

    OUTLINED_FUNCTION_29_1();

    return v1();
  }
}

uint64_t sub_222DAAE60()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_6_4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 256) = v3;

  v4 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v4);
}

uint64_t ContactResolutionSnippetGenerator.generateDetailedDisambiguationContactNames(contacts:directInvocationID:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_12_1();
  v1[33] = v2;
  v1[34] = v0;
  v1[31] = v3;
  v1[32] = v4;
  v1[29] = v5;
  v1[30] = v6;
  v1[35] = *v0;
  v7 = sub_222DDA560();
  v1[36] = v7;
  OUTLINED_FUNCTION_10_1(v7);
  v1[37] = v8;
  v9 = OUTLINED_FUNCTION_48_0();
  v10 = OUTLINED_FUNCTION_68_0(v9);
  v1[39] = v10;
  OUTLINED_FUNCTION_10_1(v10);
  v1[40] = v11;
  v1[41] = OUTLINED_FUNCTION_48_0();
  v12 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v12);
}

uint64_t sub_222DAB334()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_3();
  *v5 = v4;
  *(v6 + 352) = v0;

  OUTLINED_FUNCTION_57();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_222DAB448()
{
  OUTLINED_FUNCTION_14_1();
  v1 = v0[29];
  (*(v0[40] + 8))(v0[41], v0[39]);
  sub_222D93674((v0 + 24), v1);
  sub_222DB0380((v0 + 2));

  OUTLINED_FUNCTION_13_3();

  return v2();
}

uint64_t sub_222DAB4E4()
{
  OUTLINED_FUNCTION_12_1();
  (*(v0[40] + 8))(v0[41], v0[39]);

  OUTLINED_FUNCTION_29_1();

  return v1();
}

uint64_t sub_222DAB564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_222DAB62C;

  return sub_222DAB70C();
}

uint64_t sub_222DAB62C()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_24_3();
  v1 = *v0;
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;

  OUTLINED_FUNCTION_29_1();

  return v3();
}

uint64_t sub_222DAB70C()
{
  OUTLINED_FUNCTION_12_1();
  v5 = OUTLINED_FUNCTION_40_2(v1, v2, v3, v4);
  *(v0 + 216) = type metadata accessor for ContactResolutionDisambiguationParameters(v5);
  *(v0 + 224) = OUTLINED_FUNCTION_48_0();
  v6 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_222DAB788()
{
  OUTLINED_FUNCTION_14_1();
  if (sub_222DA8780())
  {
    v1 = *(v0 + 184);
    sub_222D9E144(v1);
    sub_222D9F3E0(v1);
    *(v0 + 169) = v2 & 1;
    v3 = swift_task_alloc();
    *(v0 + 232) = v3;
    *v3 = v0;
    v4 = OUTLINED_FUNCTION_42_2(v3);

    return ContactResolutionSnippetGenerator.convertINPersonImageData(contacts:)(v4);
  }

  else
  {
    if (qword_27D0475B8 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_27D0475B8);
    }

    v6 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v6, qword_27D04C940);
    v7 = sub_222DDB3C0();
    v8 = sub_222DDB6C0();
    if (OUTLINED_FUNCTION_25_1(v8))
    {
      v9 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_1(v9);
      OUTLINED_FUNCTION_9_1(&dword_222D8A000, v10, v11, "contacts array is empty: contacts array cannot be empty");
      OUTLINED_FUNCTION_16_1();
    }

    v12 = sub_222D95EDC();
    v13 = OUTLINED_FUNCTION_50_0(&type metadata for ContactResolutionPatternError, v12);
    OUTLINED_FUNCTION_38_1(v13, v14);

    OUTLINED_FUNCTION_29_1();

    return v15();
  }
}

uint64_t sub_222DAB8F8()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_6_4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 240) = v3;

  v4 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_222DAB9E0(uint64_t a1)
{
  v28 = v2;
  v3 = OUTLINED_FUNCTION_21_3();
  static ContactResolutionHelper.makeContactDialogPersons(inpersons:directInvocationID:deviceState:globals:appBundleId:)(v3, v4, v5, v6, v7, v8, v9);
  OUTLINED_FUNCTION_71_0();
  v10 = *(v2 + 169);
  v12 = *(v2 + 216);
  v11 = *(v2 + 224);
  v13 = sub_222D9FAB0(v1);
  v14 = v12[5];
  v15 = sub_222DDA830();
  __swift_storeEnumTagSinglePayload(v11 + v14, 1, 1, v15);
  *v11 = v1;
  *(v11 + v12[6]) = v10;
  *(v11 + v12[7]) = v13 & 1;

  v16 = sub_222D945EC();
  v18 = *(v2 + 192);
  v17 = *(v2 + 200);

  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v20._countAndFlagsBits = v18;
  v20._object = v17;
  ContactDisambiguationModel.init(contacts:prompt:contactSelectionDirectInvocationID:)(&v27, v1, v19, v20);
  if (v21)
  {
    sub_222DB0F58(*(v2 + 224));

    OUTLINED_FUNCTION_29_1();
  }

  else
  {
    v24 = *(v2 + 176);
    sub_222DB0F58(*(v2 + 224));
    v25 = *&v27.prompt._object;
    *(v2 + 16) = *&v27.contacts._rawValue;
    *(v2 + 32) = v25;
    v26 = *&v27.contactSelectionDirectInvocationKey.value._object;
    *(v2 + 48) = *&v27.contactSelectionDirectInvocationID._object;
    *(v2 + 64) = v26;
    sub_222DB0FB4(v2 + 16);
    memcpy(v24, (v2 + 16), 0x99uLL);
    *(v24 + 153) = 0;
    *(v24 + 160) = v16;

    OUTLINED_FUNCTION_13_3();
  }

  return v22();
}

uint64_t ContactResolutionSnippetGenerator.generateDetailedDisambiguationForMultipleHandlesWithSameLabel(contacts:directInvocationID:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_12_1();
  v1[33] = v2;
  v1[34] = v0;
  v1[31] = v3;
  v1[32] = v4;
  v1[29] = v5;
  v1[30] = v6;
  v1[35] = *v0;
  v7 = sub_222DDA560();
  v1[36] = v7;
  OUTLINED_FUNCTION_10_1(v7);
  v1[37] = v8;
  v9 = OUTLINED_FUNCTION_48_0();
  v10 = OUTLINED_FUNCTION_68_0(v9);
  v1[39] = v10;
  OUTLINED_FUNCTION_10_1(v10);
  v1[40] = v11;
  v1[41] = OUTLINED_FUNCTION_48_0();
  v12 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v12);
}

uint64_t sub_222DABDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_222DB13EC;

  return sub_222DABE98();
}

uint64_t sub_222DABE98()
{
  OUTLINED_FUNCTION_12_1();
  v5 = OUTLINED_FUNCTION_79(v1, v2, v3, v4);
  v0[29] = v5;
  OUTLINED_FUNCTION_10_1(v5);
  v0[30] = v6;
  v0[31] = OUTLINED_FUNCTION_48_0();
  v7 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_222DABF34()
{
  OUTLINED_FUNCTION_14_1();
  sub_222D9FBA4(v0[28] + 40);
  v0[32] = 0;
  if (sub_222DA8780())
  {
    v3 = v0[25];
    sub_222D9E144(v3);
    v0[22] = sub_222D9FD30(v3);
    v0[23] = v4;
    v5 = swift_task_alloc();
    v0[33] = v5;
    *v5 = v0;
    v6 = OUTLINED_FUNCTION_76(v5);

    return ContactResolutionSnippetGenerator.convertINPersonImageData(contacts:)(v6);
  }

  else
  {
    if (qword_27D0475B8 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_27D0475B8);
    }

    v7 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v7, qword_27D04C940);
    v8 = sub_222DDB3C0();
    v9 = sub_222DDB6C0();
    if (OUTLINED_FUNCTION_25_1(v9))
    {
      v10 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_1(v10);
      OUTLINED_FUNCTION_9_1(&dword_222D8A000, v11, v12, "contacts array is empty: contacts array cannot be empty");
      OUTLINED_FUNCTION_16_1();
    }

    v13 = sub_222D95EDC();
    v14 = OUTLINED_FUNCTION_50_0(&type metadata for ContactResolutionPatternError, v13);
    OUTLINED_FUNCTION_38_1(v14, v15);

    OUTLINED_FUNCTION_29_1();

    return v1();
  }
}

uint64_t sub_222DAC0C0()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_6_4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 272) = v3;

  v4 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v4);
}

uint64_t ContactResolutionSnippetGenerator.generateDetailedDisambiguationForMixedLabels(contacts:directInvocationID:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_12_1();
  v1[33] = v2;
  v1[34] = v0;
  v1[31] = v3;
  v1[32] = v4;
  v1[29] = v5;
  v1[30] = v6;
  v1[35] = *v0;
  v7 = sub_222DDA560();
  v1[36] = v7;
  OUTLINED_FUNCTION_10_1(v7);
  v1[37] = v8;
  v9 = OUTLINED_FUNCTION_48_0();
  v10 = OUTLINED_FUNCTION_68_0(v9);
  v1[39] = v10;
  OUTLINED_FUNCTION_10_1(v10);
  v1[40] = v11;
  v1[41] = OUTLINED_FUNCTION_48_0();
  v12 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v12);
}

uint64_t sub_222DAC52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_222DB13EC;

  return sub_222DAC5F4();
}

uint64_t sub_222DAC5F4()
{
  OUTLINED_FUNCTION_12_1();
  v5 = OUTLINED_FUNCTION_79(v1, v2, v3, v4);
  v0[29] = v5;
  OUTLINED_FUNCTION_10_1(v5);
  v0[30] = v6;
  v0[31] = OUTLINED_FUNCTION_48_0();
  v7 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_222DAC690()
{
  OUTLINED_FUNCTION_14_1();
  sub_222D9FBA4(v0[28] + 40);
  v0[32] = 0;
  if (sub_222DA8780())
  {
    v3 = v0[25];
    sub_222D9E144(v3);
    v0[22] = sub_222D9FD30(v3);
    v0[23] = v4;
    v5 = swift_task_alloc();
    v0[33] = v5;
    *v5 = v0;
    v6 = OUTLINED_FUNCTION_76(v5);

    return ContactResolutionSnippetGenerator.convertINPersonImageData(contacts:)(v6);
  }

  else
  {
    if (qword_27D0475B8 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_27D0475B8);
    }

    v7 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v7, qword_27D04C940);
    v8 = sub_222DDB3C0();
    v9 = sub_222DDB6C0();
    if (OUTLINED_FUNCTION_25_1(v9))
    {
      v10 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_1(v10);
      OUTLINED_FUNCTION_9_1(&dword_222D8A000, v11, v12, "contacts array is empty: contacts array cannot be empty");
      OUTLINED_FUNCTION_16_1();
    }

    v13 = sub_222D95EDC();
    v14 = OUTLINED_FUNCTION_50_0(&type metadata for ContactResolutionPatternError, v13);
    OUTLINED_FUNCTION_38_1(v14, v15);

    OUTLINED_FUNCTION_29_1();

    return v1();
  }
}

uint64_t sub_222DAC81C()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_6_4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 272) = v3;

  v4 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v4);
}

uint64_t ContactResolutionSnippetGenerator.generateYesNoClarificationContactName(contact:contactVerb:primaryButtonInvocationID:secondaryButtonInvocationID:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_49_0();
  *(v0 + 32) = *v1;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_10_3(v2);
  *v3 = v4;
  v3[1] = sub_222DACB14;
  OUTLINED_FUNCTION_31_1();

  return ContactResolutionSnippetGenerator.generateYesNoClarificationContactName(contact:contactVerb:primaryButtonInvocationID:secondaryButtonInvocationID:dialogOverride:outputGenerationManifest:)(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_222DACB14()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_3();
  *v5 = v4;
  *(v6 + 24) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    OUTLINED_FUNCTION_29_1();

    return v8();
  }
}

uint64_t ContactResolutionSnippetGenerator.generateYesNoClarificationContactName(contact:contactVerb:primaryButtonInvocationID:secondaryButtonInvocationID:dialogOverride:outputGenerationManifest:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 288) = v12;
  *(v9 + 296) = v8;
  *(v9 + 272) = a7;
  *(v9 + 280) = a8;
  *(v9 + 256) = a5;
  *(v9 + 264) = a6;
  *(v9 + 240) = a2;
  *(v9 + 248) = a4;
  *(v9 + 232) = a1;
  *(v9 + 304) = *v8;
  *(v9 + 336) = *a3;
  v10 = OUTLINED_FUNCTION_45_0();
  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_222DACC98()
{
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_49_0();
  if (qword_27D0475B8 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_27D0475B8);
  }

  v2 = sub_222DDB3E0();
  OUTLINED_FUNCTION_63_0(v2, qword_27D04C940);
  v3 = sub_222DDB3C0();
  v4 = sub_222DDB6D0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_19_1(v5);
    _os_log_impl(&dword_222D8A000, v3, v4, "ContactResolutionOutputGenerator::generateYesNoClarificationContactName", v0, 2u);
    OUTLINED_FUNCTION_16_1();
  }

  v6 = *(v1 + 336);
  v7 = *(v1 + 296);
  v9 = *(v1 + 264);
  v8 = *(v1 + 272);
  v16 = *(v1 + 248);
  v10 = *(v1 + 240);

  v11 = swift_task_alloc();
  *(v1 + 312) = v11;
  *(v11 + 16) = v7;
  *(v11 + 24) = v10;
  *(v11 + 32) = v6;
  *(v11 + 40) = v16;
  *(v11 + 56) = v9;
  *(v11 + 64) = v8;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_3();
  *(v1 + 320) = v12;
  *v12 = v13;
  v12[1] = sub_222DACE14;
  OUTLINED_FUNCTION_43_2();

  return sub_222DA9918();
}

uint64_t sub_222DACE14()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_24_3();
  v3 = v2;
  OUTLINED_FUNCTION_19_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_3();
  *v6 = v5;
  *(v3 + 328) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_57();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_222DACF18()
{
  OUTLINED_FUNCTION_12_1();
  sub_222D93674(v0 + 192, *(v0 + 232));
  sub_222DB0380(v0 + 16);
  OUTLINED_FUNCTION_13_3();

  return v1();
}

uint64_t sub_222DACF7C()
{
  OUTLINED_FUNCTION_12_1();

  OUTLINED_FUNCTION_29_1();

  return v0();
}

uint64_t sub_222DACFD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a4;
  v9 = swift_task_alloc();
  *(v8 + 16) = v9;
  *v9 = v8;
  v9[1] = sub_222DAD0C4;

  return sub_222DAD1FC();
}

uint64_t sub_222DAD0C4()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_3();
  *v5 = v4;
  *(v6 + 24) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    OUTLINED_FUNCTION_29_1();

    return v8();
  }
}

uint64_t sub_222DAD1FC()
{
  OUTLINED_FUNCTION_12_1();
  v3 = v2;
  *(v1 + 256) = v4;
  *(v1 + 264) = v0;
  *(v1 + 240) = v5;
  *(v1 + 248) = v6;
  *(v1 + 224) = v7;
  *(v1 + 232) = v8;
  *(v1 + 216) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479C0, &qword_222DDE100);
  *(v1 + 272) = swift_task_alloc();
  *(v1 + 280) = swift_task_alloc();
  *(v1 + 169) = *v3;
  v10 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_222DAD2B0()
{
  OUTLINED_FUNCTION_34_3();
  v1 = v0[28];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0487F0, &unk_222DDD310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222DDD2F0;
  *(inited + 32) = v1;
  v3 = v1;
  sub_222D9E144(inited);
  swift_setDeallocating();
  sub_222D9DF30();
  v4 = swift_allocObject();
  v0[36] = v4;
  *(v4 + 16) = xmmword_222DDD2F0;
  *(v4 + 32) = v3;
  v5 = v3;
  v6 = swift_task_alloc();
  v0[37] = v6;
  *v6 = v0;
  v6[1] = sub_222DAD3C8;

  return ContactResolutionSnippetGenerator.convertINPersonImageData(contacts:)(v4);
}

uint64_t sub_222DAD3C8()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_6_4();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_3_3();
  *v4 = v3;
  *(v6 + 304) = v5;

  v7 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_222DAD4C8()
{
  v57 = v0;
  OUTLINED_FUNCTION_57();
  static ContactResolutionHelper.makeContactDialogPersons(inpersons:directInvocationID:deviceState:globals:appBundleId:)(v1, v2, v3, v4, v5, v6, v7);
  v9 = v8;

  if (!sub_222DA8780())
  {

    v26 = sub_222D95EDC();
    OUTLINED_FUNCTION_50_0(&type metadata for ContactResolutionPatternError, v26);
    *v27 = 2;
    swift_willThrow();

    OUTLINED_FUNCTION_29_1();
    goto LABEL_16;
  }

  sub_222D9E450();
  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x223DCE590](0, v9);
  }

  else
  {
    v11 = *(v9 + 32);
  }

  v12 = *(v0 + 169);

  LOBYTE(v51) = v12;
  v13 = 0xE000000000000000;
  v52 = 0;
  v53 = 0xE000000000000000;
  v54 = 0;
  v55 = 0xE000000000000000;
  v56 = v11;

  v50 = sub_222D943DC(v14, v15, v16, v17, v18, v19, v20, v21);

  sub_222DCE24C(&v51);
  v48 = v52;
  v49 = v51;
  v46 = v54;
  v47 = v53;
  v44 = v56;
  v45 = v55;
  if (!sub_222DDAEE0())
  {
    goto LABEL_7;
  }

  v22 = *(v0 + 280);
  sub_222DDAE60();

  v23 = sub_222DDB240();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v23);
  v25 = *(v0 + 280);
  if (EnumTagSinglePayload == 1)
  {
    sub_222DA8300(*(v0 + 280), &qword_27D0479C0, &qword_222DDE100);
LABEL_7:
    v43 = 0;
    goto LABEL_10;
  }

  v43 = sub_222DDB220();
  v13 = v28;
  OUTLINED_FUNCTION_28_2();
  (*(v29 + 8))(v25, v23);
LABEL_10:
  v30 = sub_222DDAEE0();

  if (v30)
  {
    v31 = *(v0 + 272);
    sub_222DDAE70();

    v32 = sub_222DDB240();
    v33 = __swift_getEnumTagSinglePayload(v31, 1, v32);
    v34 = *(v0 + 272);
    if (v33 != 1)
    {
      v30 = sub_222DDB220();
      v35 = v36;
      OUTLINED_FUNCTION_28_2();
      (*(v37 + 8))(v34, v32);
      goto LABEL_15;
    }

    sub_222DA8300(*(v0 + 272), &qword_27D0479C0, &qword_222DDE100);
    v30 = 0;
  }

  v35 = 0xE000000000000000;
LABEL_15:
  v38 = *(v0 + 248);
  v39 = *(v0 + 256);
  v42 = *(v0 + 232);
  v40 = *(v0 + 216);
  swift_bridgeObjectRelease_n();

  *(v0 + 16) = v11;
  *(v0 + 24) = v42;
  *(v0 + 40) = v38;
  *(v0 + 48) = v39;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  *(v0 + 88) = v49;
  *(v0 + 96) = v48;
  *(v0 + 104) = v47;
  *(v0 + 112) = v46;
  *(v0 + 120) = v45;
  *(v0 + 128) = v44;
  *(v0 + 136) = v43;
  *(v0 + 144) = v13;
  *(v0 + 152) = v30;
  *(v0 + 160) = v35;
  sub_222DB0F40(v0 + 16);
  memcpy(v40, (v0 + 16), 0x99uLL);
  *(v40 + 153) = 5;
  *(v40 + 160) = v50;

  OUTLINED_FUNCTION_13_3();
LABEL_16:

  return v10();
}

uint64_t ContactResolutionSnippetGenerator.convertINPersonImageData(contacts:)(uint64_t a1)
{
  *(v1 + 152) = a1;
  v2 = OUTLINED_FUNCTION_45_0();
  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_222DAD8A0()
{
  v1 = sub_222DA8780();
  v0[20] = v1;
  for (i = 4; ; ++i)
  {
    v3 = v0[19];
    if (i - 4 == v1)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x223DCE590](i - 4, v0[19]);
    }

    else
    {
      OUTLINED_FUNCTION_55_1();
      if (v5)
      {
        goto LABEL_21;
      }

      v4 = *(v3 + 8 * i);
    }

    v6 = v4;
    v0[21] = v4;
    v0[22] = i - 3;
    if (__OFADD__(i - 4, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return MEMORY[0x282200938](v4);
    }

    v7 = [v4 image];
    v0[23] = v7;
    if (v7)
    {
      OUTLINED_FUNCTION_58_1();
      if (v11)
      {
        v12 = MEMORY[0x223DCE590](i - 4);
      }

      else
      {
        OUTLINED_FUNCTION_55_1();
        if (v5)
        {
          goto LABEL_22;
        }

        v12 = *(v13 + 8 * i);
      }

      v0[24] = v12;
      v0[2] = v0;
      v0[7] = v0 + 18;
      OUTLINED_FUNCTION_14_3();
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C78, &qword_222DDD968);
      OUTLINED_FUNCTION_12_3(v14);
      v0[11] = 1107296256;
      OUTLINED_FUNCTION_11_3(block_descriptor);
      [v3 retrieveImageDataWithCompletion_];
      v4 = v0 + 2;

      return MEMORY[0x282200938](v4);
    }

    v1 = v0[20];
  }

  OUTLINED_FUNCTION_29_1();
  v15 = v8;

  return v15(v9);
}

uint64_t sub_222DADA7C()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_6_4();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 200) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_57();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_222DADB84()
{
  v1 = v0[18];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  [v2 setImage_];

  for (i = v0[22] + 4; ; ++i)
  {
    v6 = v0[19];
    if (i - 4 == v0[20])
    {
      break;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x223DCE590](i - 4, v0[19]);
    }

    else
    {
      OUTLINED_FUNCTION_55_1();
      if (v8)
      {
        goto LABEL_21;
      }

      v7 = *(v6 + 8 * i);
    }

    v9 = v7;
    v0[21] = v7;
    v0[22] = i - 3;
    if (__OFADD__(i - 4, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return MEMORY[0x282200938](v7);
    }

    v10 = [v7 image];
    v0[23] = v10;
    if (v10)
    {
      OUTLINED_FUNCTION_58_1();
      if (v14)
      {
        v15 = MEMORY[0x223DCE590](i - 4);
      }

      else
      {
        OUTLINED_FUNCTION_55_1();
        if (v8)
        {
          goto LABEL_22;
        }

        v15 = *(v16 + 8 * i);
      }

      v0[24] = v15;
      v0[2] = v0;
      v0[7] = v0 + 18;
      OUTLINED_FUNCTION_14_3();
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C78, &qword_222DDD968);
      OUTLINED_FUNCTION_12_3(v17);
      v0[11] = 1107296256;
      OUTLINED_FUNCTION_11_3(block_descriptor);
      [v6 retrieveImageDataWithCompletion_];
      v7 = v0 + 2;

      return MEMORY[0x282200938](v7);
    }
  }

  OUTLINED_FUNCTION_29_1();
  v18 = v11;

  return v18(v12);
}

uint64_t sub_222DADD90(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_63();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_44_2();
  a22 = v24;
  swift_willThrow();
  if (qword_27D0475B8 != -1)
  {
LABEL_26:
    OUTLINED_FUNCTION_0_5(&qword_27D0475B8);
  }

  v27 = v24 + 18;
  v28 = v24[21];
  v29 = sub_222DDB3E0();
  OUTLINED_FUNCTION_63_0(v29, qword_27D04C940);
  v30 = v28;
  v31 = sub_222DDB3C0();
  v32 = sub_222DDB6C0();

  v33 = os_log_type_enabled(v31, v32);
  v34 = v24[25];
  v35 = v24[23];
  v36 = v24[21];
  if (v33)
  {
    v66 = v24[25];
    v37 = swift_slowAlloc();
    a12 = swift_slowAlloc();
    v38 = a12;
    *v37 = 136315138;
    v39 = [v36 displayName];
    v40 = sub_222DDB500();
    v42 = v41;

    v43 = sub_222D8F7F0(v40, v42, &a12);

    *(v37 + 4) = v43;
    _os_log_impl(&dword_222D8A000, v31, v32, "Failed to get INImage from %s.", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    v27 = v24 + 18;
    OUTLINED_FUNCTION_48_2();
    OUTLINED_FUNCTION_48_2();
  }

  else
  {
  }

  for (i = v24[22] + 4; ; ++i)
  {
    v45 = v24[19];
    if (i - 4 == v24[20])
    {
      break;
    }

    if ((v45 & 0xC000000000000001) != 0)
    {
      v47 = MEMORY[0x223DCE590](i - 4, v24[19]);
    }

    else
    {
      OUTLINED_FUNCTION_55_1();
      if (v46)
      {
        goto LABEL_25;
      }

      v47 = *(v45 + 8 * i);
    }

    v48 = v47;
    v24[21] = v47;
    v24[22] = i - 3;
    if (__OFADD__(i - 4, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v49 = [v47 image];
    v24[23] = v49;
    if (v49)
    {
      OUTLINED_FUNCTION_58_1();
      if (v60)
      {
        v61 = MEMORY[0x223DCE590](i - 4);
LABEL_21:
        v24[24] = v61;
        v24[2] = v24;
        v24[7] = v27;
        OUTLINED_FUNCTION_14_3();
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C78, &qword_222DDD968);
        OUTLINED_FUNCTION_12_3(v64);
        v24[11] = 1107296256;
        OUTLINED_FUNCTION_11_3(block_descriptor);
        [v45 retrieveImageDataWithCompletion_];
        OUTLINED_FUNCTION_42_0();
      }

      else
      {
        OUTLINED_FUNCTION_55_1();
        if (!v46)
        {
          v61 = *(v63 + 8 * i);
          goto LABEL_21;
        }

        __break(1u);
      }

      return MEMORY[0x282200938](v62);
    }
  }

  v67 = OUTLINED_FUNCTION_29_1();
  v68 = v50;

  OUTLINED_FUNCTION_42_0();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, v67, v68, a12, a13, a14, a15, a16);
}

uint64_t sub_222DAE0B4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (sub_222DA8780())
  {
    sub_222D9E450();
    v29 = a3;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x223DCE590](0, a1);
    }

    else
    {
      v10 = *(a1 + 32);
    }

    v30 = a4;

    sub_222DCE24C(&v31);
    v28 = v10;

    v11 = v31;
    v26 = v32;
    v27 = *(&v31 + 1);
    v24 = v33;
    v25 = *(&v32 + 1);
    v23 = *(&v33 + 1);
    result = sub_222DA8780();
    v13 = MEMORY[0x277D84F90];
    if (!result)
    {
LABEL_13:
      *a5 = v28;
      *(a5 + 8) = a1;
      *(a5 + 16) = a2 & 1;
      *(a5 + 24) = v29;
      *(a5 + 32) = v30;
      *(a5 + 40) = 0;
      *(a5 + 48) = 0;
      *(a5 + 56) = 0;
      *(a5 + 64) = 0xE000000000000000;
      *(a5 + 72) = v11;
      *(a5 + 80) = v27;
      *(a5 + 88) = v26;
      *(a5 + 96) = v25;
      *(a5 + 104) = v24;
      *(a5 + 112) = v23;
      *(a5 + 120) = v13;
      return result;
    }

    v14 = result;
    v35 = MEMORY[0x277D84F90];
    result = sub_222DA5508(0, result & ~(result >> 63), 0);
    if ((v14 & 0x8000000000000000) == 0)
    {
      v15 = 0;
      v13 = v35;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x223DCE590](v15, a1);
        }

        else
        {
        }

        sub_222DCF124(&v31);

        v35 = v13;
        v17 = *(v13 + 16);
        v16 = *(v13 + 24);
        if (v17 >= v16 >> 1)
        {
          result = sub_222DA5508((v16 > 1), v17 + 1, 1);
          v13 = v35;
        }

        ++v15;
        *(v13 + 16) = v17 + 1;
        v18 = (v13 + (v17 << 6));
        v19 = v31;
        v20 = v32;
        v21 = v34;
        v18[4] = v33;
        v18[5] = v21;
        v18[2] = v19;
        v18[3] = v20;
      }

      while (v14 != v15);
      goto LABEL_13;
    }

    __break(1u);
  }

  else
  {
    sub_222D95EDC();
    swift_allocError();
    *v22 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_222DAE2FC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 160) = a2;
  *(v4 + 168) = v3;
  *(v4 + 152) = a1;
  *(v4 + 216) = *a3;
  v5 = OUTLINED_FUNCTION_45_0();
  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_222DAE330()
{
  OUTLINED_FUNCTION_49_0();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0[22] = [objc_opt_self() bundleForClass_];
  objc_opt_self();
  v0[23] = sub_222DDB4C0();

  v0[24] = sub_222DDB440();
  sub_222DDB160();
  v0[25] = sub_222DDB440();

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_222DAE604;
  v2 = swift_continuation_init();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CA0, &qword_222DDDD38);
  v0[17] = v3;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_222DB13F8;
  v0[13] = &block_descriptor_76;
  v0[14] = v2;
  OUTLINED_FUNCTION_61_1(v3, sel_execute_catId_parameters_globals_completion_);
  OUTLINED_FUNCTION_31_1();

  return MEMORY[0x282200938](v4);
}

uint64_t sub_222DAE604()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_6_4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  OUTLINED_FUNCTION_57();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_222DAE700()
{
  OUTLINED_FUNCTION_34_3();
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 216);
  v5 = *(v0 + 144);

  v6 = 0xD000000000000031;
  v7 = "eLabelNoWindowing";
  switch(v4)
  {
    case 1:
      v7 = "ntactNames_Dialog";
      v6 = 0xD000000000000030;
      break;
    case 2:
      v7 = "actLabels_Dialog";
      v6 = 0xD00000000000002ELL;
      break;
    case 3:
      v7 = "sambiguationMixedLabels_Dialog";
      v6 = 0xD000000000000048;
      break;
    case 4:
      v7 = "eLabelNoWindowing_Dialog";
      v6 = 0xD00000000000003BLL;
      break;
    case 5:
      v7 = "xedLabelsNoWindowing_Dialog";
      v6 = 0xD00000000000002CLL;
      break;
    case 6:
      v7 = "rificationContactName_Dialog";
      v6 = 0xD00000000000001CLL;
      break;
    case 7:
      v7 = "contact#DisambiguationLabels";
      v6 = 0xD00000000000001BLL;
      break;
    case 8:
      v7 = "ContactLabels#PrimaryButton";
      v6 = 0xD00000000000001DLL;
      break;
    case 9:
      v7 = "ContactLabels#SecondaryButton";
      v6 = 0xD00000000000001ALL;
      break;
    default:
      break;
  }

  v8 = sub_222DBAEBC(v6, v7 | 0x8000000000000000, v5);
  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t sub_222DAE884()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_34_3();
  v1 = v0[25];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  swift_willThrow();

  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_81();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_222DAE900(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C80, &unk_222DDDFF0);
  v5 = OUTLINED_FUNCTION_50_0(v4, MEMORY[0x277D84950]);
  *v6 = a2;

  return MEMORY[0x282200958](a1, v5);
}

uint64_t sub_222DAE984()
{
  OUTLINED_FUNCTION_12_1();
  v3 = v2;
  *(v1 + 1920) = v0;
  *(v1 + 1912) = v4;
  *(v1 + 1904) = v5;
  *(v1 + 1896) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479C0, &qword_222DDE100);
  *(v1 + 1928) = swift_task_alloc();
  *(v1 + 1936) = swift_task_alloc();
  memcpy((v1 + 16), v3, 0x99uLL);
  *(v1 + 174) = *(v3 + 153);
  *(v1 + 1944) = *(v3 + 160);
  v7 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_222DAEA50()
{
  OUTLINED_FUNCTION_14_1();
  *(v0 + 1952) = sub_222DA8C4C(*(v0 + 1944));
  *(v0 + 169) = 6;
  v1 = swift_task_alloc();
  *(v0 + 1960) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_56_0(v1);

  return sub_222DAE2FC(v2, v3, v4);
}

uint64_t sub_222DAEAF8()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_24_3();
  v3 = v2;
  OUTLINED_FUNCTION_19_3();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1968) = v5;
  *(v3 + 1976) = v0;

  OUTLINED_FUNCTION_57();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_222DAEC10(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, void **a13, SiriInferenceFlow::ContactDisambiguationModel *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_62_0();
  a35 = v37;
  a36 = v38;
  OUTLINED_FUNCTION_72();
  a34 = v36;
  OUTLINED_FUNCTION_83((v36 + 176));
  v39 = sub_222DB1228(v36 + 176);
  if (!v39)
  {
    v45 = *(v36 + 1968);
    nullsub_1();
    v47 = v46;
    OUTLINED_FUNCTION_83((v36 + 1136));
    nullsub_1();
    sub_222DB133C(v48, v36 + 1736);
    v49 = OUTLINED_FUNCTION_75();
    v50 = sub_222DA02E8(v49, 0xE800000000000000, v45);
    v52 = v51;

    if (!v52)
    {
      sub_222DB128C(v36 + 16);
      if (qword_27D0475B8 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_27D0475B8);
      }

      v102 = sub_222DDB3E0();
      OUTLINED_FUNCTION_63_0(v102, qword_27D04C940);
      v103 = sub_222DDB3C0();
      v104 = sub_222DDB6C0();
      if (OUTLINED_FUNCTION_25_1(v104))
      {
        v105 = OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_19_1(v105);
        OUTLINED_FUNCTION_9_1(&dword_222D8A000, v106, v107, "localized value not found: could not find localized value for label 'whichOne'");
        OUTLINED_FUNCTION_16_1();
      }

      v108 = sub_222D95EDC();
      v109 = OUTLINED_FUNCTION_50_0(&type metadata for ContactResolutionPatternError, v108);
      OUTLINED_FUNCTION_53_1(v109, v110);
      goto LABEL_68;
    }

    v53 = [*(v36 + 1904) dialog];
    sub_222DB1398();
    v54 = sub_222DDB630();

    if (!sub_222DA8780())
    {
      goto LABEL_65;
    }

    sub_222D9E450();
    if ((v54 & 0xC000000000000001) == 0)
    {
      v55 = *(v54 + 32);
      goto LABEL_10;
    }

LABEL_75:
    v55 = MEMORY[0x223DCE590](0, v54);
LABEL_10:
    v56 = v55;

    v57 = [v56 unfilteredSupportingPrint];

    v58 = sub_222DDB500();
    v60 = v59;

    v61 = HIBYTE(v60) & 0xF;
    if ((v60 & 0x2000000000000000) == 0)
    {
      v61 = v58 & 0xFFFFFFFFFFFFLL;
    }

    if (v61)
    {
      if (qword_27D0475B8 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_27D0475B8);
      }

      v62 = sub_222DDB3E0();
      OUTLINED_FUNCTION_63_0(v62, qword_27D04C940);
      v63 = sub_222DDB3C0();
      v64 = sub_222DDB6D0();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        *&a21 = v66;
        *v65 = 136315138;

        v67 = sub_222D8F7F0(v50, v52, &a21);

        *(v65 + 4) = v67;
        _os_log_impl(&dword_222D8A000, v63, v64, "augmented localized prompt: %s", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v66);
        OUTLINED_FUNCTION_48_2();
        OUTLINED_FUNCTION_48_2();
      }

      v50 = v58;
      goto LABEL_66;
    }

LABEL_65:

    v60 = v52;
LABEL_66:
    v119._rawValue = *v47;
    v121 = *(v47 + 24);
    v120 = *(v47 + 32);

    v122._countAndFlagsBits = v50;
    v122._object = v60;
    v123._countAndFlagsBits = v121;
    v123._object = v120;
    ContactDisambiguationModel.init(contacts:prompt:contactSelectionDirectInvocationID:)(&a21, v119, v122, v123);
    if (v124)
    {
      sub_222DB128C(v36 + 16);

      goto LABEL_68;
    }

    v91 = v36 + 1296;
    sub_222DB128C(v36 + 16);

    v125 = a22;
    *(v36 + 1296) = a21;
    *(v36 + 1312) = v125;
    v126 = a24;
    *(v36 + 1328) = a23;
    *(v36 + 1344) = v126;
    sub_222DB0FB4(v36 + 1296);
    v111 = (v36 + 336);
    v112 = (v36 + 1296);
LABEL_70:
    memcpy(v111, v112, 0x99uLL);
    OUTLINED_FUNCTION_49_2();
    *(v50 + 153) = v60;
    *(v50 + 160) = v91;

    OUTLINED_FUNCTION_13_3();
    goto LABEL_71;
  }

  if (v39 == 1)
  {
    v40 = *(v36 + 1944);
    nullsub_1();
    v42 = v41;
    OUTLINED_FUNCTION_83((v36 + 816));
    nullsub_1();
    sub_222DB12E0(v43, v36 + 1608);
    sub_222DA0284(0xD000000000000013, v40, (v36 + 1800), 0x8000000222DE0B90);
    if (*(v36 + 1824))
    {
      if (swift_dynamicCast())
      {
        v44 = *(v36 + 173);
        goto LABEL_23;
      }
    }

    else
    {
      sub_222DA8300(v36 + 1800, &qword_27D047AE0, &qword_222DDDD30);
    }

    v44 = 0;
LABEL_23:
    sub_222DA0284(0xD000000000000013, *(v36 + 1944), (v36 + 1832), 0x8000000222DE0BB0);
    if (*(v36 + 1856))
    {
      if (swift_dynamicCast())
      {
        v77 = *(v36 + 172);
        goto LABEL_28;
      }
    }

    else
    {
      sub_222DA8300(v36 + 1832, &qword_27D047AE0, &qword_222DDDD30);
    }

    v77 = 0;
LABEL_28:
    sub_222DA0284(0xD000000000000010, *(v36 + 1944), (v36 + 1864), 0x8000000222DE0A90);
    if (*(v36 + 1888))
    {
      if (swift_dynamicCast())
      {
        if (((v44 | v77) & 1) == 0 && (*(v36 + 171) & 1) == 0)
        {
LABEL_32:
          v78 = *(v36 + 1968);
          v79 = OUTLINED_FUNCTION_75();
          v47 = sub_222DA02E8(v79, 0xEB00000000726F46, v78);
          v52 = v80;

          if (!v52)
          {
            if (qword_27D0475B8 != -1)
            {
              OUTLINED_FUNCTION_0_5(&qword_27D0475B8);
            }

            v81 = sub_222DDB3E0();
            OUTLINED_FUNCTION_63_0(v81, qword_27D04C940);
            v82 = sub_222DDB3C0();
            v83 = sub_222DDB6C0();
            if (!OUTLINED_FUNCTION_25_1(v83))
            {
              goto LABEL_64;
            }

            v84 = OUTLINED_FUNCTION_43_0();
            OUTLINED_FUNCTION_19_1(v84);
            v87 = "localized value not found: could not find localized value for label 'whichOneFor'";
LABEL_63:
            OUTLINED_FUNCTION_9_1(&dword_222D8A000, v85, v86, v87);
            OUTLINED_FUNCTION_16_1();
LABEL_64:

            v116 = sub_222D95EDC();
            v117 = OUTLINED_FUNCTION_50_0(&type metadata for ContactResolutionPatternError, v116);
            OUTLINED_FUNCTION_53_1(v117, v118);
            sub_222DB128C(v36 + 16);
LABEL_68:
            OUTLINED_FUNCTION_82();

            OUTLINED_FUNCTION_29_1();
LABEL_71:
            OUTLINED_FUNCTION_52_2();

            return v128(v127, v128, v129, v130, v131, v132, v133, v134, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, *(&a21 + 1), a22, *(&a22 + 1), a23, *(&a23 + 1), a24, *(&a24 + 1), a25, a26, a27, a28);
          }

LABEL_40:
          v50 = *v42;
          v60 = *(v42 + 8);
          v89 = *(v42 + 16);
          v90 = *(v42 + 24);
          a19 = *(v42 + 32);

          sub_222DCE24C(&a21);
          v91 = a21;
          a17 = a22;
          a18 = *(&a21 + 1);
          a15 = a23;
          a16 = *(&a22 + 1);
          a14 = *(&a23 + 1);
          v92 = sub_222DA8780();
          if (!v92)
          {
            sub_222DB128C(v36 + 16);
            v95 = MEMORY[0x277D84F90];
LABEL_57:
            *(v36 + 976) = v50;
            *(v36 + 984) = v60;
            *(v36 + 992) = v89;
            *(v36 + 1000) = v90;
            *(v36 + 1008) = a19;
            *(v36 + 1016) = 0u;
            *(v36 + 1032) = v47;
            *(v36 + 1040) = v52;
            *(v36 + 1048) = v91;
            *(v36 + 1056) = a18;
            *(v36 + 1064) = a17;
            *(v36 + 1072) = a16;
            *(v36 + 1080) = a15;
            *(v36 + 1088) = a14;
            *(v36 + 1096) = v95;
            sub_222DB0F4C(v36 + 976);
            v111 = (v36 + 336);
            v112 = (v36 + 976);
            goto LABEL_70;
          }

          v93 = v92;
          a9 = v91;
          a10 = v90;
          HIDWORD(a11) = v89;
          a12 = v52;
          a13 = v47;
          a20 = MEMORY[0x277D84F90];
          v54 = &a20;
          sub_222DA5508(0, v92 & ~(v92 >> 63), 0);
          if ((v93 & 0x8000000000000000) == 0)
          {
            v94 = 0;
            v95 = a20;
            if ((v60 & 0xC000000000000001) == 0)
            {
              goto LABEL_44;
            }

LABEL_43:
            MEMORY[0x223DCE590](v94, v60);
            while (1)
            {
              sub_222DCF124(&a21);

              a20 = v95;
              v97 = *(v95 + 16);
              v96 = *(v95 + 24);
              if (v97 >= v96 >> 1)
              {
                sub_222DA5508((v96 > 1), v97 + 1, 1);
                v95 = a20;
              }

              *(v95 + 16) = v97 + 1;
              v98 = (v95 + (v97 << 6));
              v99 = a21;
              v100 = a22;
              v101 = a24;
              v98[4] = a23;
              v98[5] = v101;
              v98[2] = v99;
              v98[3] = v100;
              if (v93 - 1 == v94)
              {
                break;
              }

              ++v94;
              if ((v60 & 0xC000000000000001) != 0)
              {
                goto LABEL_43;
              }

LABEL_44:
            }

            sub_222DB128C(v36 + 16);
            v52 = a12;
            v91 = a9;
            v90 = a10;
            goto LABEL_57;
          }

          __break(1u);
          goto LABEL_75;
        }

LABEL_39:
        v47 = sub_222DA02E8(0xD000000000000016, 0x8000000222DE0DB0, *(v36 + 1968));
        v52 = v88;

        if (!v52)
        {
          if (qword_27D0475B8 != -1)
          {
            OUTLINED_FUNCTION_0_5(&qword_27D0475B8);
          }

          v113 = sub_222DDB3E0();
          OUTLINED_FUNCTION_63_0(v113, qword_27D04C940);
          v82 = sub_222DDB3C0();
          v114 = sub_222DDB6C0();
          if (!OUTLINED_FUNCTION_25_1(v114))
          {
            goto LABEL_64;
          }

          v115 = OUTLINED_FUNCTION_43_0();
          OUTLINED_FUNCTION_19_1(v115);
          v87 = "localized value not found: could not find localized value for label 'whichSameHandleTypeFor'";
          goto LABEL_63;
        }

        goto LABEL_40;
      }
    }

    else
    {
      sub_222DA8300(v36 + 1864, &qword_27D047AE0, &qword_222DDDD30);
    }

    if (((v44 | v77) & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_39;
  }

  v68 = *(v36 + 1944);
  nullsub_1();
  *(v36 + 1984) = v69;
  OUTLINED_FUNCTION_83((v36 + 496));
  nullsub_1();
  sub_222DB1230(v70, v36 + 1456);
  *(v36 + 1992) = sub_222DA8C4C(v68);
  *(v36 + 170) = 7;
  v71 = swift_task_alloc();
  *(v36 + 2000) = v71;
  *v71 = v36;
  OUTLINED_FUNCTION_56_0(v71);
  OUTLINED_FUNCTION_52_2();

  return sub_222DAE2FC(v72, v73, v74);
}

uint64_t sub_222DAF558()
{
  OUTLINED_FUNCTION_14_1();
  v3 = v2;
  OUTLINED_FUNCTION_24_3();
  v5 = v4;
  OUTLINED_FUNCTION_19_3();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3_3();
  *v8 = v7;
  *(v5 + 2008) = v0;

  if (v0)
  {
  }

  else
  {
    *(v5 + 2016) = v3;
  }

  OUTLINED_FUNCTION_57();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_222DAF684()
{
  v55 = v0;
  sub_222DBE6A0(v0[252]);
  v2 = v1;
  v4 = v3;
  v6 = v5;

  v7 = v0[246];
  if (!v2)
  {

    if (qword_27D0475B8 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_27D0475B8);
    }

    v19 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v19, qword_27D04C940);
    v20 = sub_222DDB3C0();
    v21 = sub_222DDB6C0();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_16;
    }

    v22 = OUTLINED_FUNCTION_43_0();
    *v22 = 0;
    v23 = "localized value not found: could not find localized value for primary button label";
    goto LABEL_15;
  }

  v8 = sub_222DA02E8(0x65676E616863, 0xE600000000000000, v7);
  v10 = v9;

  if (!v10)
  {

    if (qword_27D0475B8 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_27D0475B8);
    }

    v24 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v24, qword_27D04C940);
    v20 = sub_222DDB3C0();
    v21 = sub_222DDB6C0();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_16;
    }

    v22 = OUTLINED_FUNCTION_43_0();
    *v22 = 0;
    v23 = "localized value not found: could not find localized value for label 'change'";
LABEL_15:
    _os_log_impl(&dword_222D8A000, v20, v21, v23, v22, 2u);
    OUTLINED_FUNCTION_48_2();
LABEL_16:

    v25 = sub_222D95EDC();
    v26 = OUTLINED_FUNCTION_50_0(&type metadata for ContactResolutionPatternError, v25);
    OUTLINED_FUNCTION_53_1(v26, v27);
    sub_222DB128C((v0 + 2));
    OUTLINED_FUNCTION_82();

    OUTLINED_FUNCTION_29_1();
    goto LABEL_25;
  }

  v11 = v0[248];
  v12 = *v11;
  v50 = v11[3];
  v51 = v11[1];
  v13 = v11[4];
  v52 = v11[2];
  v53 = v8;

  sub_222DCE24C(v54);
  v48 = v54[1];
  v49 = v54[0];
  v46 = v54[3];
  v47 = v54[2];
  v44 = v54[5];
  v45 = v54[4];
  if (sub_222DDAEE0())
  {
    v14 = v0[242];
    sub_222DDAE60();

    v15 = sub_222DDB240();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v15);
    v17 = v0[242];
    if (EnumTagSinglePayload != 1)
    {
      v18 = sub_222DDB220();
      v43 = v29;
      OUTLINED_FUNCTION_28_2();
      (*(v30 + 8))(v17, v15);
      goto LABEL_18;
    }

    sub_222DA8300(v0[242], &qword_27D0479C0, &qword_222DDE100);
  }

  v18 = 0;
  v43 = 0xE000000000000000;
LABEL_18:
  v31 = v12;
  if (sub_222DDAEE0())
  {
    v42 = v4;
    v32 = v13;
    v33 = v18;
    v34 = v0[241];
    sub_222DDAE70();

    v35 = sub_222DDB240();
    v36 = __swift_getEnumTagSinglePayload(v34, 1, v35);
    v31 = v0[241];
    if (v36 == 1)
    {
      sub_222DA8300(v0[241], &qword_27D0479C0, &qword_222DDE100);
      v37 = 0;
      v38 = 0xE000000000000000;
    }

    else
    {
      v37 = sub_222DDB220();
      v38 = v39;
      OUTLINED_FUNCTION_28_2();
      (*(v40 + 8))(v31, v35);
    }

    v18 = v33;
    v13 = v32;
    v4 = v42;
  }

  else
  {
    v37 = 0;
    v38 = 0xE000000000000000;
  }

  sub_222DB128C((v0 + 2));
  v0[82] = v12;
  v0[83] = v51;
  v0[84] = v52;
  v0[85] = v50;
  v0[86] = v13;
  v0[87] = v53;
  v0[88] = v10;
  v0[89] = v4;
  v0[90] = v6;
  v0[91] = v49;
  v0[92] = v48;
  v0[93] = v47;
  v0[94] = v46;
  v0[95] = v45;
  v0[96] = v44;
  v0[97] = v18;
  v0[98] = v43;
  v0[99] = v37;
  v0[100] = v38;
  sub_222DB0F40((v0 + 82));
  memcpy(v0 + 42, v0 + 82, 0x99uLL);
  OUTLINED_FUNCTION_49_2();
  *(v18 + 153) = v10;
  *(v18 + 160) = v31;

  OUTLINED_FUNCTION_13_3();
LABEL_25:

  return v28();
}

uint64_t sub_222DAFB0C()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_82();

  OUTLINED_FUNCTION_29_1();

  return v0();
}

uint64_t sub_222DAFB6C()
{
  OUTLINED_FUNCTION_12_1();
  sub_222DB128C(v0 + 16);
  OUTLINED_FUNCTION_82();

  OUTLINED_FUNCTION_29_1();

  return v1();
}

uint64_t sub_222DAFBD4(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_222DAE900(v5, a3);
  }

  else
  {
    return sub_222DAE964(v5, a2);
  }
}

uint64_t *sub_222DAFC38(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    return sub_222DAE900(v6, a3);
  }

  if (a2)
  {
    return sub_222DAE964(v6, a2);
  }

  __break(1u);
  return result;
}

uint64_t ContactResolutionSnippetGenerator.deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  return v0;
}

uint64_t ContactResolutionSnippetGenerator.__deallocating_deinit()
{
  ContactResolutionSnippetGenerator.deinit();
  v0 = OUTLINED_FUNCTION_52_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222DAFD00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_222DB13EC;

  return ContactResolutionSnippetGenerator.generateSimpleDisambiguationUniqueLabels(contacts:directInvocationID:outputGenerationManifest:)();
}

uint64_t sub_222DAFDCC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_222DB13EC;

  return ContactResolutionSnippetGenerator.generateSimpleDisambiguationMixedLabels(contacts:directInvocationID:outputGenerationManifest:)();
}

uint64_t sub_222DAFE98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_222DB13EC;

  return ContactResolutionSnippetGenerator.generateDetailedDisambiguationContactNames(contacts:directInvocationID:outputGenerationManifest:)();
}

uint64_t sub_222DAFF64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_222DB13EC;

  return ContactResolutionSnippetGenerator.generateDetailedDisambiguationForMultipleHandlesWithSameLabel(contacts:directInvocationID:outputGenerationManifest:)();
}

uint64_t sub_222DB0030()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_222DB13EC;

  return ContactResolutionSnippetGenerator.generateDetailedDisambiguationForMixedLabels(contacts:directInvocationID:outputGenerationManifest:)();
}

uint64_t sub_222DB00FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_222DB13EC;

  return ContactResolutionSnippetGenerator.generateYesNoClarificationContactName(contact:contactVerb:primaryButtonInvocationID:secondaryButtonInvocationID:outputGenerationManifest:)();
}

uint64_t sub_222DB01F4(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_222DB13EC;

  return ContactResolutionSnippetGenerator.generateYesNoClarificationContactName(contact:contactVerb:primaryButtonInvocationID:secondaryButtonInvocationID:dialogOverride:outputGenerationManifest:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_222DB02F4(uint64_t a1)
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_30_3();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_10_3(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_4_5(v2);
  OUTLINED_FUNCTION_81();

  return sub_222DA9398(v4, v5, v6, v7, v8);
}

uint64_t sub_222DB03B0(uint64_t a1)
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_30_3();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_10_3(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_4_5(v2);
  OUTLINED_FUNCTION_81();

  return sub_222DAAB7C(v4, v5, v6, v7, v8);
}

uint64_t sub_222DB043C(uint64_t a1)
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_30_3();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_10_3(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_4_5(v2);
  OUTLINED_FUNCTION_81();

  return sub_222DAB564(v4, v5, v6, v7, v8);
}

uint64_t sub_222DB04C8(uint64_t a1)
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_30_3();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_10_3(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_4_5(v2);
  OUTLINED_FUNCTION_81();

  return sub_222DABDD0(v4, v5, v6, v7, v8);
}

uint64_t sub_222DB0554(uint64_t a1)
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_30_3();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_10_3(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_4_5(v2);
  OUTLINED_FUNCTION_81();

  return sub_222DAC52C(v4, v5, v6, v7, v8);
}

uint64_t sub_222DB05E0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + 32);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_10_3(v10);
  *v11 = v12;
  v11[1] = sub_222DAB62C;

  return sub_222DACFD8(a1, v3, v4, v9, v5, v6, v7, v8);
}

uint64_t dispatch thunk of ContactResolutionSnippetGenerating.generateSimpleDisambiguationUniqueLabels(contacts:directInvocationID:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_2_5(v12, v13, v14, v15, v16, v17, v18);
  OUTLINED_FUNCTION_20_3();
  v33 = v19 + *v19;
  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_10_3(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_1_4(v21);
  OUTLINED_FUNCTION_43_2();

  return v30(v23, v24, v25, v26, v27, v28, v29, v30, a9, v33, a11, a12);
}

uint64_t dispatch thunk of ContactResolutionSnippetGenerating.generateSimpleDisambiguationMixedLabels(contacts:directInvocationID:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_2_5(v12, v13, v14, v15, v16, v17, v18);
  OUTLINED_FUNCTION_20_3();
  v33 = v19 + *v19;
  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_10_3(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_1_4(v21);
  OUTLINED_FUNCTION_43_2();

  return v30(v23, v24, v25, v26, v27, v28, v29, v30, a9, v33, a11, a12);
}

uint64_t dispatch thunk of ContactResolutionSnippetGenerating.generateDetailedDisambiguationContactNames(contacts:directInvocationID:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_2_5(v12, v13, v14, v15, v16, v17, v18);
  OUTLINED_FUNCTION_20_3();
  v33 = v19 + *v19;
  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_10_3(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_1_4(v21);
  OUTLINED_FUNCTION_43_2();

  return v30(v23, v24, v25, v26, v27, v28, v29, v30, a9, v33, a11, a12);
}

uint64_t dispatch thunk of ContactResolutionSnippetGenerating.generateDetailedDisambiguationForMultipleHandlesWithSameLabel(contacts:directInvocationID:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_2_5(v12, v13, v14, v15, v16, v17, v18);
  OUTLINED_FUNCTION_20_3();
  v33 = v19 + *v19;
  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_10_3(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_1_4(v21);
  OUTLINED_FUNCTION_43_2();

  return v30(v23, v24, v25, v26, v27, v28, v29, v30, a9, v33, a11, a12);
}

uint64_t dispatch thunk of ContactResolutionSnippetGenerating.generateDetailedDisambiguationForMixedLabels(contacts:directInvocationID:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_2_5(v12, v13, v14, v15, v16, v17, v18);
  OUTLINED_FUNCTION_20_3();
  v33 = v19 + *v19;
  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_10_3(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_1_4(v21);
  OUTLINED_FUNCTION_43_2();

  return v30(v23, v24, v25, v26, v27, v28, v29, v30, a9, v33, a11, a12);
}

uint64_t dispatch thunk of ContactResolutionSnippetGenerating.generateYesNoClarificationContactName(contact:contactVerb:primaryButtonInvocationID:secondaryButtonInvocationID:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_44_2();
  v35 = v19;
  OUTLINED_FUNCTION_46_2();
  v34 = *(v18 + 48) + **(v18 + 48);
  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_10_3(v20);
  *v21 = v22;
  v21[1] = sub_222DB13EC;
  OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_42_0();

  return v31(v23, v24, v25, v26, v27, v28, v29, v30, a9, v18 + 48, v34, v35, v18, a14, a15, a16, a17, a18);
}

uint64_t dispatch thunk of ContactResolutionSnippetGenerating.generateYesNoClarificationContactName(contact:contactVerb:primaryButtonInvocationID:secondaryButtonInvocationID:dialogOverride:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_44_2();
  v47 = v28;
  v46 = v29;
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_20_3();
  v45 = v30 + *v30;
  v31 = swift_task_alloc();
  v32 = OUTLINED_FUNCTION_10_3(v31);
  *v32 = v33;
  v32[1] = sub_222DB13EC;
  OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_42_0();

  return v42(v34, v35, v36, v37, v38, v39, v40, v41, a9, v45, v46, v47, v27, a14, a15, a16, a17, a18, a19);
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

uint64_t sub_222DB0E7C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 216))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 160);
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

uint64_t sub_222DB0EBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 160) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_222DB0F58(uint64_t a1)
{
  v2 = type metadata accessor for ContactResolutionDisambiguationParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_222DB1010()
{
  result = qword_27D047C90;
  if (!qword_27D047C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047C90);
  }

  return result;
}

uint64_t sub_222DB1064(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a20 == 2)
  {

    sub_222D93218(a14, a15);
  }

  else if (a20 == 1)
  {

    sub_222D93218(a14, a15);
  }

  else
  {
    if (a20)
    {
      return v20;
    }
  }
}

unint64_t sub_222DB1398()
{
  result = qword_27D047C98;
  if (!qword_27D047C98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D047C98);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_5(uint64_t a1)
{

  return swift_once();
}