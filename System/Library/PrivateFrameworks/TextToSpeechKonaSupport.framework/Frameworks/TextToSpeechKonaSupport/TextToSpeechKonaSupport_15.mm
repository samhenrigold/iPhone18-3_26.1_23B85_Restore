uint64_t test_string_i()
{
  OUTLINED_FUNCTION_13_43();
  v5 = v4 + v3;
  OUTLINED_FUNCTION_15_40();
  OUTLINED_FUNCTION_2_58();
  while (v0 < v5)
  {
    OUTLINED_FUNCTION_3_53();
    if (v6)
    {
      OUTLINED_FUNCTION_1_61();
    }

    else
    {
      OUTLINED_FUNCTION_4_49();
    }

    OUTLINED_FUNCTION_12_43();
    if (v8)
    {
      return 1;
    }

    if ((*v7 & 2) == 0)
    {
      OUTLINED_FUNCTION_11_44();
      v10 = OUTLINED_FUNCTION_6_48(v9);
      v11(v10);
      OUTLINED_FUNCTION_7_47();
      vcompare(v1, v12, v13);
      OUTLINED_FUNCTION_14_41();
      if (v14)
      {
        return 1;
      }

      v0 += 2;
    }

    if (!OUTLINED_FUNCTION_5_49())
    {
      return v2;
    }
  }

  return 0;
}

uint64_t test_string_f(uint64_t a1, unsigned int a2)
{
  v4 = &vstmtbl[12 * a2];
  OUTLINED_FUNCTION_2_58();
  if (!v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_43();
  while (1)
  {
    OUTLINED_FUNCTION_3_53();
    if (v6)
    {
      OUTLINED_FUNCTION_1_61();
    }

    else
    {
      OUTLINED_FUNCTION_4_49();
    }

    v8 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
    if (!v8)
    {
      break;
    }

    if ((*v8 & 2) == 0)
    {
      atof(v2);
      (*v4[2])(v8 + 16);
      OUTLINED_FUNCTION_7_47();
      vcompare(v3, v9, v10);
      if (*(*(v3 + 192) + 8120))
      {
        break;
      }
    }

    if (!OUTLINED_FUNCTION_5_49())
    {
      return v8;
    }
  }

  return 1;
}

uint64_t test_ptr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 112))
  {
    return 1;
  }

  if ((*(a1 + 136) & 2) != 0)
  {
    vnormalize(a1, a1 + 112, a3);
  }

  while (*(*(a1 + 192) + 8080) != *(a1 + 112))
  {
    v4 = 1;
    if (!OUTLINED_FUNCTION_9_46())
    {
      return v4;
    }
  }

  return 0;
}

uint64_t test_time(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 128);
  v15[0] = *(a1 + 112);
  v15[1] = v4;
  vtsttmark_tv(a1, v15, 0);
  v5 = 1;
  if (!v6)
  {
    *(a1 + 144) = *(*(a1 + 192) + 8080);
    *(a1 + 168) = 1;
    if (!vcomp_pta(a1, a1 + 112, a1 + 144))
    {
      while (*(*(a1 + 192) + 8120))
      {
        v5 = 1;
        if (OUTLINED_FUNCTION_9_46())
        {
          *(a1 + 144) = *(*(a1 + 192) + 8080);
          if (!vcomp_pta(a1, a1 + 112, a1 + 144))
          {
            continue;
          }
        }

        return v5;
      }

      v5 = 0;
      OUTLINED_FUNCTION_10_46();
      v9 = *(v8 + 1728);
      *(v10 + 8) = a2;
      v11 = *(v8 + 284);
      v12 = v10 - v11;
      *(v8 + 1720) = v12;
      *(v8 + 1728) = v9 - (v13 + v11);
      *v12 = 1;
      *(v12 + 8) = *(v14 + 8080);
      *(*(a1 + 280) + *(*(a1 + 264) + *(a1 + 120))) = 1;
    }
  }

  return v5;
}

uint64_t test_synch(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v7 = 0;
  v8 = a3;
  while (!v7)
  {
    v9 = 0;
    v7 = 1;
    while (v9 < v8 && v7)
    {
      if (*(*(a1[24] + 8080) + 8 * (*(a1[24] + 9084) + a4[v9])))
      {
        v7 = 1;
      }

      else
      {
        v10 = 1;
        v11 = vscanadv(a1, 0, 1);
        v7 = 0;
        if (!v11)
        {
          return v10;
        }
      }

      ++v9;
    }
  }

  OUTLINED_FUNCTION_10_46();
  *(v12 + 8) = a2;
  *(v13 + 1720) = v12 - *(v13 + 284);
  OUTLINED_FUNCTION_8_46(v13);
  for (; v8; --v8)
  {
    v15 = *a4++;
    *(a1[35] + *(a1[33] + v15)) = v14;
  }

  return 0;
}

uint64_t test_fence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = a3;
    v8 = 0;
    while (!v8)
    {
      v9 = 0;
      v8 = 1;
      while (v7 > v9 && v8)
      {
        v10 = *(a4 + v9);
        if (*(*(a1 + 264) + v10) == *(a1 + 288) && !FENCED(a1, *(*(a1 + 192) + 8080), v10))
        {
          v11 = 1;
          v12 = OUTLINED_FUNCTION_9_46();
          v8 = 0;
          if (!v12)
          {
            return v11;
          }
        }

        else
        {
          v8 = 1;
        }

        ++v9;
      }
    }

    v19 = 0;
    v21 = *(a1 + 192);
    v20 = *(a1 + 200);
    v22 = *(v20 + 288);
    v23 = *(v20 + 1720) - v22;
    *v23 = 3;
    *(v23 + 8) = a2;
    v24 = *(v20 + 284);
    v25 = v23 - v24;
    LODWORD(v22) = v22 + v24;
    LODWORD(v24) = *(v20 + 1728);
    *(v20 + 1720) = v25;
    *(v20 + 1728) = v24 - v22;
    *v25 = 1;
    *(v25 + 8) = *(v21 + 8080);
    while (v7 > v19)
    {
      *(*(a1 + 280) + *(*(a1 + 264) + *(a4 + v19++))) = 1;
    }

    return 0;
  }

  else
  {
    v13 = 0;
    while (!v13)
    {
      v14 = 0;
      v13 = 1;
      while (1)
      {
        v15 = v14;
        v16 = *(a1 + 288);
        if (!v13 || v15 >= v16)
        {
          break;
        }

        v17 = *(a1 + 192);
        if (v15 == *(v17 + 8088) || *(*(a1 + 264) + v15) != v16 || FENCED(a1, *(v17 + 8080), v15))
        {
          v13 = 1;
        }

        else
        {
          v11 = 1;
          v18 = OUTLINED_FUNCTION_9_46();
          v13 = 0;
          if (!v18)
          {
            return v11;
          }
        }

        v14 = v15 + 1;
      }
    }

    v11 = 0;
    OUTLINED_FUNCTION_10_46();
    *(v26 + 8) = a2;
    *(v27 + 1720) = v26 - *(v27 + 284);
    OUTLINED_FUNCTION_8_46(v27);
    *(*(a1 + 192) + 8090) = v28;
  }

  return v11;
}

uint64_t test_hasval(uint64_t a1)
{
  v1 = *(a1 + 184);
  *(v1 + 436) = 0;
  *(v1 + 32) = 0;
  return 1;
}

uint64_t freeDeltaStackTo_2(uint64_t result, uint64_t a2)
{
  v2 = *(result + 200);
  v3 = *(v2 + 1744);
  if (v3)
  {
    *(v2 + 1720) = a2;
    *(v2 + 1728) = *(v2 + 1780) + a2 - *(v3 + 32);
  }

  return result;
}

void OUTLINED_FUNCTION_0_67()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v1 + 288);
  v4 = *(v1 + 1720) - v3;
  *(v1 + 1720) = v4;
  *(v1 + 1728) -= v3;
  *v4 = 0;
  *(v4 + 8) = *(v2 + 8064);
  *(v2 + 8096) = 1;
}

uint64_t OUTLINED_FUNCTION_5_49()
{

  return vscanadv(v0, 1, 1);
}

__n128 OUTLINED_FUNCTION_8_46@<Q0>(uint64_t a1@<X8>)
{
  *(a1 + 1728) = v4 - v2;
  *v3 = 1;
  result = v1[505];
  *(v3 + 8) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_46()
{

  return vscanadv(v0, 0, 1);
}

uint64_t num_fields(uint64_t a1)
{
  result = 0;
  v3 = *a1 & ~(*a1 >> 31);
  v4 = 4;
  if ((*a1 & ~(*a1 >> 31)) != 0)
  {
    do
    {
      result = (*(*(a1 + 8) + v4) + result);
      --v3;
      v4 += 16;
    }

    while (v3);
  }

  return result;
}

uint64_t first_field(uint64_t a1, uint64_t a2, _BYTE *a3, _DWORD *a4)
{
  *(*(a1 + 200) + 300) = 0;
  if (*a2 < 1)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  if (*(v4 + 4) < 1)
  {
    return 0;
  }

  else
  {
    return OUTLINED_FUNCTION_0_68(a1, a2, a3, a4, *v4);
  }
}

uint64_t next_field(uint64_t a1, uint64_t a2, _BYTE *a3, _DWORD *a4)
{
  v4 = *(a1 + 200);
  v5 = *(v4 + 304) + 1;
  *(v4 + 304) = v5;
  v6 = *(a2 + 8);
  v7 = *(v4 + 300);
  if (v5 < *(v6 + 16 * v7 + 4))
  {
    return OUTLINED_FUNCTION_0_68(a1, a2, a3, a4, *(v6 + 16 * v7));
  }

  LODWORD(v7) = v7 + 1;
  *(v4 + 300) = v7;
  if (v7 < *a2)
  {
    *(v4 + 304) = 0;
    v7 = v7;
    return OUTLINED_FUNCTION_0_68(a1, a2, a3, a4, *(v6 + 16 * v7));
  }

  return 0;
}

uint64_t is_token_prev(int a1, uint64_t a2)
{
  if ((*(a2 + 8 * a1 + 24) & 0xFFFFFFFFFFFFFFFCLL) != 0 && (*(*(a2 + 8 * a1 + 24) & 0xFFFFFFFFFFFFFFFCLL) & 2) != 0)
  {
    return 0;
  }

  else
  {
    return OUTLINED_FUNCTION_4_50();
  }
}

uint64_t is_token_next(uint64_t a1, int a2, uint64_t a3)
{
  if ((*(a3 + 8 * (*(*(a1 + 192) + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL) != 0 && (*(*(a3 + 8 * (*(*(a1 + 192) + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL) & 2) != 0)
  {
    return 0;
  }

  else
  {
    return OUTLINED_FUNCTION_4_50();
  }
}

void *left_context(uint64_t a1, int a2, uint64_t a3)
{
  if ((*(a3 + 8 * (*(*(a1 + 192) + 9084) + a2)) & 1) == 0)
  {
    return VLSYNC(a3, a2);
  }

  return a3;
}

unint64_t right_context(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 8 * (*(*(a1 + 192) + 9084) + a2)) & 1) == 0)
  {
    return VRSYNC(a1, a3, a2);
  }

  return a3;
}

void valid_prefix()
{
  OUTLINED_FUNCTION_8_47();
  v7 = v6;
  switch(v8)
  {
    case 0xFFFB:
      OUTLINED_FUNCTION_15_41();

      legal_double();
      break;
    case 0xFFFC:
      OUTLINED_FUNCTION_15_41();

      legal_int();
      break;
    case 0xFFFD:
      OUTLINED_FUNCTION_15_41();

      legal_long();
      break;
    case 0xFFFE:
    case 0xFFFF:
      v9 = v5;
      if (allchrs(v6))
      {
        OUTLINED_FUNCTION_6_49();
        do
        {
          if (v4 == v2)
          {
            break;
          }

          v10 = strcmp(*(*(v3 + 16) + v2), "undefined");
          v2 += 8;
        }

        while (v10);
      }

      else
      {
        OUTLINED_FUNCTION_14_42();
      }

      v14 = 0;
      v15 = v0 + 40 * v9;
      do
      {
        if (8 * v1 == v14)
        {
          break;
        }

        v16 = strprefix(*(*(v15 + 16) + v14), v7);
        v14 += 8;
      }

      while (!v16);
      goto LABEL_20;
    default:
LABEL_20:
      OUTLINED_FUNCTION_15_41();
      break;
  }
}

BOOL allchrs(unsigned __int8 *a1)
{
  while (1)
  {
    v1 = *a1;
    if (v1 != 45)
    {
      break;
    }

    ++a1;
  }

  return v1 == 0;
}

uint64_t strprefix(unsigned __int8 *a1, unsigned __int8 *a2)
{
  while (1)
  {
    v3 = *a2++;
    v2 = v3;
    if (!v3)
    {
      break;
    }

    v4 = *a1++;
    if (v4 != v2)
    {
      return 0;
    }
  }

  return OUTLINED_FUNCTION_4_50();
}

uint64_t legal_long()
{
  v1 = OUTLINED_FUNCTION_12_44();
  v2 = OUTLINED_FUNCTION_5_50(v1);
  v4 = strtol(v2, v3, 0);
  if (*v7)
  {
    return 0;
  }

  v5 = v4;
  if (*__error() == 34)
  {
    return 0;
  }

  if (v0)
  {
    *v0 = v5;
  }

  return 1;
}

uint64_t legal_int()
{
  v1 = OUTLINED_FUNCTION_12_44();
  v2 = OUTLINED_FUNCTION_5_50(v1);
  v4 = strtol(v2, v3, 0);
  if (*v8)
  {
    return 0;
  }

  v5 = v4;
  if (*__error() == 34 || (v5 - 0x80000000) < 0xFFFFFFFF00000000)
  {
    return 0;
  }

  if (v0)
  {
    *v0 = v5;
  }

  return 1;
}

uint64_t legal_double()
{
  v1 = OUTLINED_FUNCTION_12_44();
  v2 = OUTLINED_FUNCTION_5_50(v1);
  v4 = strtod(v2, v3);
  if (*v7)
  {
    return 0;
  }

  v5 = v4;
  if (*__error() == 34)
  {
    return 0;
  }

  if (v0)
  {
    *v0 = v5;
  }

  return 1;
}

void valid_prefix_char(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_8_47();
  if ((v10 - 65532) >= 2 && (v10 - 65534) < 2)
  {
    v11 = v9;
    if (a3 == 45)
    {
      OUTLINED_FUNCTION_6_49();
      while (v7 != v5)
      {
        v12 = strcmp(*(*(v6 + 16) + v5), "undefined");
        v5 += 8;
        if (!v12)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_14_42();
    }

    v13 = 0;
    do
    {
      if (8 * v4 == v13)
      {
        break;
      }

      v14 = **(*(v3 + 40 * v11 + 16) + v13);
      v13 += 8;
    }

    while (v14 != a3);
  }

LABEL_14:
  OUTLINED_FUNCTION_15_41();
}

uint64_t unique_value(uint64_t a1, int a2, int a3, unsigned __int8 *a4, void *a5, void *a6, uint64_t a7, _WORD *a8, _WORD *a9, _WORD *a10, _WORD *a11)
{
  if (!*a4)
  {
    return 0;
  }

  v11 = vstmtbl[12 * a2 + 1];
  v14 = a4;
  switch(*&v11[40 * a3 + 30])
  {
    case 0xFFFB:
      v15 = a11;
      OUTLINED_FUNCTION_7_48();
      result = legal_double();
      if (result)
      {
        goto LABEL_28;
      }

      break;
    case 0xFFFC:
      v15 = a10;
      OUTLINED_FUNCTION_7_48();
      result = legal_int();
      if (result)
      {
        goto LABEL_28;
      }

      break;
    case 0xFFFD:
      v15 = a9;
      OUTLINED_FUNCTION_7_48();
      result = legal_long();
      if (result)
      {
        goto LABEL_28;
      }

      break;
    case 0xFFFE:
    case 0xFFFF:
      v15 = a8;
      *a8 = -1;
      if (allchrs(a4))
      {
        v27 = a6;
        v18 = 0;
        v19 = &v11[40 * a3];
        v20 = -1;
        while (v18 < *(v19 + 14))
        {
          if (!strcmp(*(*(v19 + 2) + 8 * v18), "undefined"))
          {
            if (v20 != -1)
            {
              goto LABEL_30;
            }

            *v15 = v18;
            v20 = v18;
          }

          ++v18;
        }

        a6 = v27;
      }

      else
      {
        v20 = -1;
      }

      v22 = 0;
      OUTLINED_FUNCTION_13_44();
      v25 = &v11[v24 * v23];
      while (v22 < *(v25 + 14))
      {
        if (strprefix(*(*(v25 + 2) + 8 * v22), v14))
        {
          if (v20 != -1)
          {
            goto LABEL_30;
          }

          *v15 = v22;
          v20 = v22;
        }

        ++v22;
      }

      if (v20 == -1)
      {
        goto LABEL_30;
      }

      v26 = *(*(v25 + 2) + 8 * v20);
      *a5 = v26;
      if (!strcmp(v26, "undefined"))
      {
        v14 = *(*(a1 + 200) + 336);
LABEL_28:
        *a5 = v14;
      }

      *a6 = v15;
      result = 1;
      break;
    default:
LABEL_30:
      result = 0;
      break;
  }

  return result;
}

uint64_t non_unique_value(uint64_t a1, int a2, int a3, unsigned __int8 *a4, void *a5, void *a6, uint64_t a7, _WORD *a8, _WORD *a9, _WORD *a10, _WORD *a11)
{
  if (!*a4)
  {
    return 0;
  }

  v11 = vstmtbl[12 * a2 + 1];
  v14 = a4;
  switch(*&v11[40 * a3 + 30])
  {
    case 0xFFFB:
      v15 = a11;
      OUTLINED_FUNCTION_7_48();
      result = legal_double();
      if (result)
      {
        goto LABEL_26;
      }

      break;
    case 0xFFFC:
      v15 = a10;
      OUTLINED_FUNCTION_7_48();
      result = legal_int();
      if (result)
      {
        goto LABEL_26;
      }

      break;
    case 0xFFFD:
      v15 = a9;
      OUTLINED_FUNCTION_7_48();
      result = legal_long();
      if (result)
      {
        goto LABEL_26;
      }

      break;
    case 0xFFFE:
    case 0xFFFF:
      v15 = a8;
      *a8 = -1;
      if (allchrs(a4))
      {
        v17 = 0;
        OUTLINED_FUNCTION_13_44();
        v20 = &v11[v19 * v18];
        v21 = *(v20 + 14) & ~(*(v20 + 14) >> 31);
        while (v21 != v17)
        {
          if (!strcmp(*(*(v20 + 2) + 8 * v17), "undefined"))
          {
            *v15 = v17;
            LOWORD(v23) = v17;
            goto LABEL_24;
          }

          ++v17;
        }
      }

      v23 = 0;
      OUTLINED_FUNCTION_13_44();
      v26 = &v11[v25 * v24];
      v27 = *(v26 + 14) & ~(*(v26 + 14) >> 31);
      while (1)
      {
        if (v27 == v23)
        {
          LOWORD(v23) = -1;
          goto LABEL_21;
        }

        if (strprefix(*(*(v26 + 2) + 8 * v23), v14))
        {
          break;
        }

        ++v23;
      }

      *v15 = v23;
LABEL_21:
      if (v23 == 0xFFFF)
      {
        goto LABEL_22;
      }

LABEL_24:
      OUTLINED_FUNCTION_13_44();
      v30 = *(*&v11[v29 * v28 + 16] + 8 * v23);
      *a5 = v30;
      if (!strcmp(v30, "undefined"))
      {
        v14 = *(*(a1 + 200) + 336);
LABEL_26:
        *a5 = v14;
      }

      *a6 = v15;
      result = 1;
      break;
    default:
LABEL_22:
      result = 0;
      break;
  }

  return result;
}

char *field_value(uint64_t a1, uint64_t a2, int a3, char *a4)
{
  v5 = &vstmtbl[12 * a1];
  v6 = &v5[1][40 * a3];
  switch(*(v6 + 30))
  {
    case 0xFFFB:
      v8 = OUTLINED_FUNCTION_3_54(a1, a2);
      v10 = v9(v8);
      v11 = *v10;
      v12 = &v5[1][40 * a3];
      if (*(v12 + 32))
      {
        v13 = v11 == 2.22507386e-308;
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        goto LABEL_26;
      }

      sprintf(a4, *(v12 + 8), v11, *v10);
      return a4;
    case 0xFFFC:
      v28 = OUTLINED_FUNCTION_3_54(a1, a2);
      v29(v28);
      OUTLINED_FUNCTION_11_45();
      if (!v13 && v30 == 32769)
      {
        goto LABEL_26;
      }

      v20 = v30;
      goto LABEL_24;
    case 0xFFFD:
      v18 = OUTLINED_FUNCTION_3_54(a1, a2);
      v19(v18);
      OUTLINED_FUNCTION_11_45();
      if (v13 || v20 != -2147483647)
      {
LABEL_24:
        sprintf(a4, *(v21 + 8), v22, v20);
        return a4;
      }

LABEL_26:
      v27 = 5259591;
      goto LABEL_29;
    case 0xFFFE:
      v14 = *(v6 + 16);
      v24 = OUTLINED_FUNCTION_3_54(a1, a2);
      v17 = *v25(v24);
      goto LABEL_15;
    case 0xFFFF:
      v14 = *(v6 + 16);
      v15 = OUTLINED_FUNCTION_3_54(a1, a2);
      v17 = *v16(v15);
LABEL_15:
      v26 = strcpy(a4, *(v14 + 8 * v17));
      if (!strcmp(v26, "undefined"))
      {
        v27 = 2960685;
        goto LABEL_29;
      }

      if (*a4 == 32 && !a4[1])
      {
        v27 = 2564135;
LABEL_29:
        *a4 = v27;
      }

      return a4;
    default:
      v27 = 4144959;
      goto LABEL_29;
  }
}

uint64_t time_field_value(int a1, uint64_t a2)
{
  v2 = &vstmtbl[12 * a1];
  if (!*(v2 + 86))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(v2[1] + 15);
  if (v3 == 65532)
  {
    return *(*v2[2])(a2 + 16);
  }

  if (v3 == 65533)
  {
    return *(*v2[2])(a2 + 16);
  }

  return 0xFFFFFFFFLL;
}

void first_fieldval(uint64_t a1, char a2, int a3, unsigned __int8 *a4)
{
  v5 = *(a1 + 200);
  *(v5 + 308) = a2;
  *(v5 + 312) = a3;
  *(v5 + 320) = a4;
  *(v5 + 328) = -1;
  if (a4)
  {
    v6 = allchrs(a4);
  }

  else
  {
    v6 = 0;
  }

  *(v5 + 332) = v6;

  next_fieldval(a1);
}

void next_fieldval(uint64_t a1)
{
  v1 = *(a1 + 200);
  v2 = *(v1 + 328);
  v3 = v2 + 1;
  *(v1 + 328) = v2 + 1;
  v4 = vstmtbl[12 * *(v1 + 308) + 1];
  v5 = *(v1 + 312);
  if (v2 + 1 >= *&v4[40 * v5 + 28] || (v6 = *(v1 + 320)) != 0 && *v6)
  {
    v7 = *&v4[40 * v5 + 28];
    v8 = &v4[40 * v5];
    for (i = v2 + 2; v3 < v7; ++i)
    {
      v10 = *(*(v8 + 2) + 8 * v3);
      if (strprefix(v10, *(v1 + 320)) || *(v1 + 332) && !strcmp(v10, "undefined"))
      {
        break;
      }

      ++v3;
      *(v1 + 328) = i;
    }
  }

  OUTLINED_FUNCTION_15_41();
}

uint64_t can_del_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 200);
  if (*v3 == a3 || v3[1] == a3)
  {
    return 0;
  }

  if (!is_token_next(a1, a2, a3))
  {
    return 1;
  }

  v7 = (*(a3 + 8 * a2 + 24) & 0xFFFFFFFFFFFFFFFCLL);
  if (v7)
  {
    if ((*v7 & 2) != 0)
    {
      return 1;
    }
  }

  v8 = *(a3 + 8 * (*(*(a1 + 192) + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL;
  v9 = &vstmtbl[12 * a2];
  if (*(v9 + 86) || (field_value(a2, v7, 0, v37), *v37 == 5259591) && (field_value(a2, v8, 0, v36), *v36 == 5259591))
  {
    v10 = 1;
    while (v10 < *(v9 + 16))
    {
      switch(*(v9[1] + 15))
      {
        case 0xFFFB:
          v11 = OUTLINED_FUNCTION_2_59();
          v13 = *v12(v11);
          v14 = OUTLINED_FUNCTION_1_62();
          if (v13 != *v15(v14))
          {
            return 0;
          }

          goto LABEL_18;
        case 0xFFFC:
          v31 = OUTLINED_FUNCTION_2_59();
          v18 = *v32(v31);
          v33 = OUTLINED_FUNCTION_1_62();
          v21 = *v34(v33);
          goto LABEL_17;
        case 0xFFFD:
          v22 = OUTLINED_FUNCTION_2_59();
          v24 = *v23(v22);
          v25 = OUTLINED_FUNCTION_1_62();
          if (v24 != *v26(v25))
          {
            return 0;
          }

          goto LABEL_18;
        case 0xFFFE:
          v27 = OUTLINED_FUNCTION_2_59();
          v18 = *v28(v27);
          v29 = OUTLINED_FUNCTION_1_62();
          v21 = *v30(v29);
          goto LABEL_17;
        case 0xFFFF:
          v16 = OUTLINED_FUNCTION_2_59();
          v18 = *v17(v16);
          v19 = OUTLINED_FUNCTION_1_62();
          v21 = *v20(v19);
LABEL_17:
          if (v18 != v21)
          {
            return 0;
          }

LABEL_18:
          ++v10;
          break;
        default:
          return 0;
      }
    }

    return 1;
  }

  return 0;
}

unsigned __int16 *pvlist_size(unsigned __int16 *result)
{
  if (result)
  {
    return (bswap32(*result) >> 17);
  }

  return result;
}

void *pvlist_name()
{
  OUTLINED_FUNCTION_10_47();
  v4 = vardesc(v0, v1, v2, v3);
  if (v4)
  {
    return *v4;
  }

  else
  {
    return &unk_26E7817DA;
  }
}

uint64_t allow_left_ctxt(uint64_t a1, _BYTE *a2, int a3, _BYTE *a4)
{
  if (a2 != a4)
  {
    v4 = *(*(a1 + 192) + 9084) + a3;
    if (*&a2[8 * v4])
    {
      while (a2 != a4)
      {
        a2 = (*&a2[8 * v4] & 0xFFFFFFFFFFFFFFFCLL);
        if (!a2 || (*a2 & 2) == 0)
        {
          return 0;
        }
      }
    }
  }

  return OUTLINED_FUNCTION_4_50();
}

uint64_t allow_right_ctxt(uint64_t a1, _BYTE *a2, int a3, _BYTE *a4)
{
  if (a2 != a4)
  {
    v4 = *(*(a1 + 192) + 9084) + a3;
    if (*&a2[8 * v4])
    {
      while (a2 != a4)
      {
        a2 = (*&a2[8 * v4] & 0xFFFFFFFFFFFFFFFCLL);
        if (!a2 || (*a2 & 2) == 0)
        {
          return 0;
        }
      }
    }
  }

  return OUTLINED_FUNCTION_4_50();
}

char *extract_string(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char *a5, int a6)
{
  v9 = a3;
  v18 = *MEMORY[0x277D85DE8];
  if (!visleft(a1, a3, a4))
  {
    return 0;
  }

  v12 = a6 - 1;
  v13 = a5;
  while (v9 != a4 && v12)
  {
    if (is_token_next(a1, a2, v9))
    {
      v14 = v17;
      field_value(a2, *(v9 + 8 * (*(*(a1 + 192) + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL, 0, v17);
      while (1)
      {
        v15 = *v14;
        if (!*v14 || !v12)
        {
          break;
        }

        ++v14;
        *v13++ = v15;
        --v12;
      }
    }

    v9 = VRSYNC(a1, v9, a2);
  }

  *v13 = 0;
  return a5;
}

BOOL ins_tok_named(uint64_t *a1, int a2, uint64_t a3, char *__s1, uint64_t a5)
{
  v11 = 0;
  v10 = a3;
  LOWORD(v11) = *(vstmtbl[12 * a2 + 1] + 15);
  *(&v11 + 2) = strcmp(__s1, "GAP") == 0;
  v8 = VLSYNC(a5, a2);
  return vins_tok(a1, a2, v8, a5, &v10) != 0;
}

uint64_t set_fld_value(uint64_t *a1, unsigned __int8 a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = VLSYNC(a6, a2);
  vmark(a1, a2, a3, v11, a6, a4);
  return 1;
}

void *ins_sync(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v5 = a2;
  if (a4)
  {
    vins_sync(a1, a2, (a3[a2 + 3] & 0xFFFFFFFFFFFFFFFCLL), a3);
    return VLSYNC(a3, v5);
  }

  else
  {
    vins_sync(a1, a2, a3, a3[*(*(a1 + 192) + 9084) + a2] & 0xFFFFFFFFFFFFFFFCLL);
    return VRSYNC(a1, a3, v5);
  }
}

uint64_t project_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = 0;
  if (a2 && a4)
  {
    if (a5)
    {
      if (vproj_l(a1, a2, a4, a3))
      {
        return 1;
      }
    }

    else if (vproj_r(a1, a2, a4, a3))
    {
      return 1;
    }

    return 0;
  }

  return v5;
}

void merge_sync(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((*(a4 + 8 * (*(*(a1 + 192) + 9084) + a3)) & 1) != 0 && project_sync(a1, a2, a3, a4, 0))
  {
    if (a2 == a4)
    {
LABEL_5:
      vmerge(a1, a4, a2, v7);
      goto LABEL_6;
    }

    v8 = *(a1 + 200);
    v9 = *v8;
    v10 = v8[1];
    if ((v9 != a2 || v10 != a4) && (v9 != a4 || v10 != a2))
    {
      for (i = 0; ; ++i)
      {
        if (i >= *(a1 + 288))
        {
          goto LABEL_5;
        }

        v14 = i + *(*(a1 + 192) + 9084);
        v15 = *(a2 + 8 * v14);
        v16 = *(a4 + 8 * v14);
        v17 = a2 + 8 * i;
        v18 = a4 + 8 * i;
        if (v15)
        {
          if (v16)
          {
            if ((v15 & 0xFFFFFFFFFFFFFFFCLL) != a4 && (*(v17 + 24) & 0xFFFFFFFFFFFFFFFCLL) != a4)
            {
              break;
            }
          }

          else
          {
            v19 = *(v18 + 24) & 0xFFFFFFFFFFFFFFFCLL;
            if (v19 != a2 && !visleft(a1, v19, a2))
            {
              break;
            }

            v20 = v16 & 0xFFFFFFFFFFFFFFFCLL;
            if ((v16 & 0xFFFFFFFFFFFFFFFCLL) != a2)
            {
              v21 = a1;
              v22 = a2;
              goto LABEL_31;
            }
          }
        }

        else if (v16)
        {
          v23 = *(v17 + 24) & 0xFFFFFFFFFFFFFFFCLL;
          if (v23 != a4 && !visleft(a1, v23, a4))
          {
            break;
          }

          v20 = v15 & 0xFFFFFFFFFFFFFFFCLL;
          if ((v15 & 0xFFFFFFFFFFFFFFFCLL) != a4)
          {
            v21 = a1;
            v22 = a4;
LABEL_31:
            if (!visright(v21, v20, v22))
            {
              break;
            }

            continue;
          }
        }

        else if (visleft(a1, v15 & 0xFFFFFFFFFFFFFFFCLL, *(v18 + 24) & 0xFFFFFFFFFFFFFFFCLL) || visright(a1, *(v17 + 24) & 0xFFFFFFFFFFFFFFFCLL, *(a4 + 8 * (i + *(*(a1 + 192) + 9084))) & 0xFFFFFFFFFFFFFFFCLL))
        {
          break;
        }
      }
    }
  }

LABEL_6:
  OUTLINED_FUNCTION_15_41();
}

void fill_stream_list(uint64_t a1, int *a2, _BYTE *a3)
{
  if (*a3)
  {
    v5 = OUTLINED_FUNCTION_9_47(*a3);
    *(a2 + 1) = v5;
    if (!v5)
    {
      goto LABEL_29;
    }

    v6 = 0;
    v7 = 1;
    while (1)
    {
      v8 = *a2;
      if (v6 >= v8)
      {
        break;
      }

      v9 = &a3[v7];
      v10 = *(a2 + 1);
      *(v10 + 16 * v6) = *v9;
      v11 = v9[1];
      v12 = v9 + 2;
      v13 = 1;
      for (i = v11; i; --i)
      {
        if (*v12++)
        {
          ++v13;
        }
      }

      *(v10 + 16 * v6 + 4) = v13;
      v16 = malloc_type_calloc(v13, 4uLL, 0x100004052888210uLL);
      *(*(a2 + 1) + 16 * v6 + 8) = v16;
      if (v16)
      {
        *v16 = 0;
        v17 = &a3[v7 + 2];
        v7 += v11 + 2;
        v18 = 1;
        while (1)
        {
          v19 = __OFSUB__(v11, 1);
          LODWORD(v11) = v11 - 1;
          if (v11 < 0 != v19)
          {
            break;
          }

          if (*v17)
          {
            *(*(*(a2 + 1) + 16 * v6 + 8) + v18++) = *v17;
          }

          ++v17;
        }
      }

      else
      {
        v7 += 2;
      }

      ++v6;
    }

    v20 = *(a2 + 1) + 16 * v8;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_9_47(*(a1 + 288));
    *(a2 + 1) = v21;
    if (!v21)
    {
      goto LABEL_29;
    }

    for (j = 0; ; ++j)
    {
      v23 = *a2;
      if (j >= v23)
      {
        break;
      }

      v24 = &v21[2 * j];
      *v24 = j;
      v25 = SLODWORD(vstmtbl[12 * j + 8]);
      *(v24 + 1) = v25;
      v26 = malloc_type_calloc(v25, 4uLL, 0x100004052888210uLL);
      v21 = *(a2 + 1);
      v21[2 * j + 1] = v26;
      if (v26)
      {
        for (k = 0; ; ++k)
        {
          v28 = &v21[2 * j];
          if (k >= *(v28 + 1))
          {
            break;
          }

          *(*(v28 + 1) + k) = k;
          v21 = *(a2 + 1);
        }
      }
    }

    v20 = &v21[2 * v23];
  }

  if (!*(v20 - 8))
  {
    free_stream_list(a2);
  }

LABEL_29:
  OUTLINED_FUNCTION_15_41();
}

void free_stream_list(int *a1)
{
  v2 = 0;
  for (i = 8; ; i += 16)
  {
    v4 = *(a1 + 1);
    if (v2 >= *a1)
    {
      break;
    }

    free(*&v4[i]);
    ++v2;
  }

  free(v4);
  *(a1 + 1) = 0;
}

BOOL insert_string(uint64_t *a1, uint64_t a2, uint64_t *a3, char *a4)
{
  *__s2 = 0;
  v4 = &vstmtbl[12 * a2];
  v6 = v4[1];
  v5 = v4 + 1;
  if (*(v6 + 15) >= 0xFFFEu && LOBYTE(vstmtbl[12 * a2 + 10]))
  {
    if ((a3[a2 + 3] & 0xFFFFFFFFFFFFFFFCLL) == 0 || (*(a3[a2 + 3] & 0xFFFFFFFFFFFFFFFCLL) & 2) == 0)
    {
LABEL_8:
      ins_sync(a1, a2, a3, 1);
    }

LABEL_9:
    if (!*a4)
    {
      result = 1;
      *(a1[23] + 452) = 1;
      return result;
    }

    v12 = 0;
    __s2[0] = *a4;
    v13 = *v5;
    v14 = *(*v5 + 14) & ~(*(*v5 + 14) >> 31);
    while (v14 != v12)
    {
      if (!strcmp(*(*(v13 + 2) + 8 * v12), __s2))
      {
        if (*(v13 + 15) == -1)
        {
          v18 = v12;
          v15 = &v18;
        }

        else
        {
          v17 = v12;
          v15 = &v17;
        }

        result = ins_tok_named(a1, a2, v15, __s2, a3);
        if (!result)
        {
          return result;
        }

        if (*++a4)
        {
          goto LABEL_8;
        }

        goto LABEL_9;
      }

      ++v12;
    }
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_0_68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, _DWORD *a4@<X3>, char a5@<W8>)
{
  *a3 = a5;
  *a4 = *(*(*(a2 + 8) + 16 * *(*(a1 + 200) + 300) + 8) + *(*(a1 + 200) + 304));
  return 1;
}

void *OUTLINED_FUNCTION_9_47(size_t a1)
{
  *v1 = a1;

  return malloc_type_calloc(a1, 0x10uLL, 0x1010040449DF08BuLL);
}

int *OUTLINED_FUNCTION_12_44()
{

  return __error();
}

uint64_t vproj_r(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if ((*(a2 + 8 * (*(*(a1 + 192) + 9084) + a4)) & 1) == 0)
  {
    OUTLINED_FUNCTION_7_49();
    if (*(v9 + 8864))
    {
      OUTLINED_FUNCTION_2_60(v5, 1);
      OUTLINED_FUNCTION_2_60(v5, 0);
      v8 = *(*(v5 + 192) + 9084) + v6;
    }

    v10 = *(v7 + 8 * v8) & 0xFFFFFFFFFFFFFFFCLL;
    if (!v10 || (v11 = *(v7 + 8 * v8) & 0xFFFFFFFFFFFFFFFCLL, (*v10 & 2) == 0))
    {
      v11 = *(v10 + 8) & 0xFFFFFFFFFFFFFFFCLL;
    }

    v12 = OUTLINED_FUNCTION_3_55();
    project_rl(v12, v13, v7, v14, v6);
    if (NONSEQ(v4) && *(*(v5 + 192) + 8868))
    {
      v15 = OUTLINED_FUNCTION_3_55();
      DELSPINE(v15, v16);
      v17 = OUTLINED_FUNCTION_3_55();
      INSSPINEL(v17, v18, v11);
    }
  }

  return 1;
}

unint64_t vgetsc(uint64_t a1, int a2, int a3, uint64_t a4, unsigned int a5)
{
  v6 = a4;
  if (a3)
  {
    if (*(*(a1 + 192) + 8868))
    {
      if (!NONSEQ(a4))
      {
        v9 = *(a1 + 192);
        if (!*(*(v9 + 9072) + a5))
        {
          if (!a2)
          {
            for (i = *(v9 + 9084); ; v6 = *(v6 + 8 * i - 16) & 0xFFFFFFFFFFFFFFFCLL)
            {
              if (*(v6 + 8 * (i + a5)))
              {
                if (!NONSEQ(v6))
                {
                  return v6;
                }

                OUTLINED_FUNCTION_9_48();
              }
            }
          }

          while (1)
          {
            if (*(v6 + 8 * (*(v9 + 9084) + a5)))
            {
              if (!NONSEQ(v6))
              {
                return v6;
              }

              v9 = *(a1 + 192);
            }

            v6 = *(v6 + 8) & 0xFFFFFFFFFFFFFFFCLL;
          }
        }
      }
    }

    v10 = 0;
    v11 = 1;
    v12 = v6;
    v13 = v6;
LABEL_6:
    if (v11 >= 1 && v6)
    {
      while (1)
      {
        v14 = v6;
        OUTLINED_FUNCTION_9_48();
        if ((*(v6 + 8 * (v15 + a5)) & 1) == 0)
        {
          break;
        }

        v6 = *(v6 + 8 * v15 - 8) & 0xFFFFFFFFFFFFFFFCLL;
        v10 = v14;
        if (!v6)
        {
          goto LABEL_29;
        }
      }

      for (j = 0; ; ++j)
      {
        OUTLINED_FUNCTION_9_48();
        if (j >= v18)
        {
          v23 = v14 + 8 * v17;
          v24 = *(v23 - 8);
          v6 = v24 & 0xFFFFFFFFFFFFFFFCLL;
          *(v23 - 8) = v24 & 3;
          if (v10)
          {
            OUTLINED_FUNCTION_5_51();
            *(v10 + 8 * v25 - 8) = *(v10 + 8 * v25 - 8) & 3 | v6;
          }

          else
          {
            v13 = v24 & 0xFFFFFFFFFFFFFFFCLL;
          }

          --v11;
          goto LABEL_6;
        }

        if ((*(v14 + 8 * (j + v17)) & 1) == 0)
        {
          goto LABEL_23;
        }

        if (a2)
        {
          if (!VLSYNC(v14, j))
          {
            goto LABEL_23;
          }
        }

        else if (!VRSYNC(a1, v14, j))
        {
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_5_51();
        v21 = v20 - 1;
        if (*(v19 + 8 * v21) <= 3uLL && v19 != v12)
        {
          *(v12 + 8 * v21) = *(v12 + 8 * v21) & 3 | v19;
          ++v11;
          goto LABEL_24;
        }

LABEL_23:
        v19 = v12;
LABEL_24:
        v12 = v19;
      }
    }

LABEL_29:
    v6 = 0;
    v26 = *(*(a1 + 200) + 8 * (a2 != 0));
LABEL_30:
    while (1)
    {
      v27 = v13;
      if (v11 < 2)
      {
        break;
      }

      while (v27)
      {
        v28 = v27;
        OUTLINED_FUNCTION_5_51();
        v27 = *(v27 + 8 * v29 - 8) & 0xFFFFFFFFFFFFFFFCLL;
        v30 = *(v28 + 16);
        if ((v30 & 1) == 0)
        {
          v31 = v30 & 0xFFFFFFFFFFFFFFFCLL;
          if (v31)
          {
            v32 = v31;
          }

          else
          {
            v32 = v28;
          }

          if (a2)
          {
            v33 = VRSYNC(a1, v32, a5);
          }

          else
          {
            v33 = VLSYNC(v32, a5);
          }

          if (v33 == v26)
          {
            v11 = 1;
            v6 = v28;
            goto LABEL_30;
          }

          OUTLINED_FUNCTION_5_51();
          if (*(v34 + 8 * v35 - 8) > 3uLL || v34 == v12)
          {
            *(v28 + 16) |= 1uLL;
            --v11;
          }

          else
          {
            *(v28 + 16) = *(v28 + 16) & 3 | v34;
          }
        }
      }
    }

    while (v13)
    {
      if (!v6)
      {
        if (*(v13 + 16))
        {
          v6 = 0;
        }

        else
        {
          v6 = v13;
        }
      }

      OUTLINED_FUNCTION_5_51();
      *(v13 + 8 * v37 - 8) &= 3uLL;
      *(v13 + 16) &= 2uLL;
      OUTLINED_FUNCTION_5_51();
      v39 = v13 + 8 * v38;
      v13 = v40 & 0xFFFFFFFFFFFFFFFCLL;
      *(v39 - 8) &= ~1uLL;
    }
  }

  else
  {
    if (a2)
    {
      v41 = (a4 + 8 * a5 + 24);
    }

    else
    {
      OUTLINED_FUNCTION_9_48();
      v41 = (v6 + 8 * (v42 + a5));
    }

    return *v41 & 0xFFFFFFFFFFFFFFFCLL;
  }

  return v6;
}

void project_rl(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unsigned int a5)
{
  v10 = *(*(a1 + 192) + 9084) + a5;
  *(a2 + 8 * v10) |= 1uLL;
  CLRONESTM(a2);
  if (ALLNSQ(a2) && !*(*(*(a1 + 192) + 9072) + a5))
  {
    CLRALLNSQ(a2);
  }

  if (a3 != a4)
  {
    *(a2 + 8 * (a5 + 3)) = *(a2 + 8 * (a5 + 3)) & 3 | a3;
    v11 = *(*(a1 + 192) + 9084) + a5;
    *(a2 + 8 * v11) = *(a2 + 8 * v11) & 3 | a4;
    if (a3 && (*a3 & 2) != 0)
    {
      v12 = *(*(a1 + 192) + 9084) + a5;
      *(a3 + 8 * v12) = *(a3 + 8 * v12) & 3 | a2;
      if (!a4)
      {
LABEL_11:
        *a4 = a2;
        return;
      }
    }

    else
    {
      *(a3 + 8) = a2;
      if (!a4)
      {
        goto LABEL_11;
      }
    }

    if ((*a4 & 2) == 0)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_8_48(a5 + 3);
  }
}

uint64_t vproj_l(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*(a2 + 8 * (*(*(a1 + 192) + 9084) + a4)))
  {
    return 1;
  }

  OUTLINED_FUNCTION_7_49();
  if (*(v8 + 8864))
  {
    OUTLINED_FUNCTION_2_60(v5, 1);
    if ((*(v4 + 8 * (*(*(v5 + 192) + 9084) + v6)) & 1) == 0)
    {
      OUTLINED_FUNCTION_2_60(v5, 0);
    }
  }

  v9 = (*(v7 + 8 * v6 + 24) & 0xFFFFFFFFFFFFFFFCLL);
  if (v9)
  {
    v10 = *v9;
    v11 = *(v7 + 8 * v6 + 24) & 0xFFFFFFFFFFFFFFFCLL;
    if ((*v9 & 2) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = MEMORY[0];
  }

  v11 = v10 & 0xFFFFFFFFFFFFFFFCLL;
LABEL_10:
  v12 = OUTLINED_FUNCTION_3_55();
  project_rl(v12, v13, v14, v7, v6);
  if (NONSEQ(v4) && *(*(v5 + 192) + 8868))
  {
    v15 = OUTLINED_FUNCTION_3_55();
    DELSPINE(v15, v16);
    v17 = OUTLINED_FUNCTION_3_55();
    INSSPINER(v17, v18, v11);
  }

  return 1;
}

uint64_t vctxtinit(uint64_t a1)
{
  if (*(a1 + 288))
  {
    *(*(a1 + 200) + 352) = malloc_type_malloc(8 * *(a1 + 288), 0x80040B8603338uLL);
    *(*(a1 + 200) + 360) = OUTLINED_FUNCTION_6_50();
    *(*(a1 + 200) + 368) = OUTLINED_FUNCTION_6_50();
    *(*(a1 + 200) + 376) = OUTLINED_FUNCTION_6_50();
    *(*(a1 + 200) + 384) = malloc_type_malloc(*(a1 + 288), 0x100004077774924uLL);
    v2 = malloc_type_malloc(*(a1 + 288), 0x100004077774924uLL);
    v3 = *(a1 + 200);
    v3[49] = v2;
  }

  else
  {
    v3 = *(a1 + 200);
  }

  v4 = v3[44];
  if (v4 && v3[45] && v3[46] && v3[47] && v3[48] && v3[49])
  {
    return 1;
  }

  free(v4);
  free(*(*(a1 + 200) + 360));
  free(*(*(a1 + 200) + 368));
  free(*(*(a1 + 200) + 376));
  free(*(*(a1 + 200) + 384));
  free(*(*(a1 + 200) + 392));
  return 0;
}

uint64_t vproject(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5)
{
  v5 = *(*(a1 + 192) + 9084) + a5;
  if ((*(a2 + 8 * v5) & 1) == 0)
  {
    if (a3 && a4 && (*a3 & 2) != 0)
    {
      if ((*a4 & 2) != 0)
      {
        v11 = a5 + 3;
        OUTLINED_FUNCTION_1_63(v5);
        v12 = ALLNSQ(a2);
        v13 = *(a1 + 192);
        if (v12 && !*(*(v13 + 9072) + a5))
        {
          CLRALLNSQ(a2);
          v13 = *(a1 + 192);
        }

        OUTLINED_FUNCTION_4_51(v13);
        *&a4[8 * v11] = *&a4[8 * v11] & 3 | a2;
        OUTLINED_FUNCTION_0_69(*(a1 + 192));
        v14 = (a2 + 8 * v11);
LABEL_24:
        *v14 = *v14 & 3 | a3;
        if (NONSEQ(a2))
        {
          if (*(*(a1 + 192) + 8868))
          {
            DELSPINE(a1, a2);
            INSSPINEL(a1, a2, a4);
          }
        }

        return 1;
      }
    }

    else
    {
      if (a4 && (*a4 & 2) != 0)
      {
        OUTLINED_FUNCTION_1_63(v5);
        v19 = ALLNSQ(a2);
        v20 = *(a1 + 192);
        if (v19 && !*(*(v20 + 9072) + a5))
        {
          CLRALLNSQ(a2);
          v20 = *(a1 + 192);
        }

        *(a3 + 8) = a2;
        OUTLINED_FUNCTION_0_69(v20);
        OUTLINED_FUNCTION_8_48(a5 + 3);
        v14 = (a2 + 8 * v21);
        goto LABEL_24;
      }

      if (!a3)
      {
        return 0;
      }
    }

    if ((*a3 & 2) != 0)
    {
      OUTLINED_FUNCTION_1_63(v5);
      v16 = ALLNSQ(a2);
      v17 = *(a1 + 192);
      if (v16)
      {
        v18 = a5;
        if (!*(*(v17 + 9072) + a5))
        {
          CLRALLNSQ(a2);
          v17 = *(a1 + 192);
        }
      }

      else
      {
        v18 = a5;
      }

      OUTLINED_FUNCTION_4_51(v17);
      OUTLINED_FUNCTION_0_69(*(a1 + 192));
      *a4 = a2;
      v14 = (a2 + 8 * v18 + 24);
      goto LABEL_24;
    }

    return 0;
  }

  return 1;
}

uint64_t vdef_proj(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 8 * (*(*(a1 + 192) + 9084) + a3)))
  {
    return 1;
  }

  v6 = vgetsc(a1, 1, 1, a2, a3);
  if (*(*(a1 + 192) + 8864))
  {
    v7 = vgetsc(a1, 0, 1, a2, a3);
  }

  else
  {
    v7 = VRSYNC(a1, v6, a3);
  }

  return vproject(a1, a2, v6, v7, a3);
}

uint64_t vsetsc(uint64_t result, int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  if (a2)
  {
    v6 = (a4 + 8 * a5 + 24);
  }

  else
  {
    v6 = (a4 + 8 * (*(*(result + 192) + 9084) + a5));
  }

  *v6 = *v6 & 3 | a6;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_63@<X0>(uint64_t a1@<X8>)
{
  *(*(v3 + 184) + 452) = 1;
  *(v2 + 8 * a1) = v1 | 1;

  return CLRONESTM(v2);
}

unint64_t OUTLINED_FUNCTION_2_60(uint64_t a1, int a2)
{

  return vgetsc(a1, a2, 1, v2, v3);
}

void *OUTLINED_FUNCTION_6_50()
{
  v3 = 8 * *(v0 + 288);

  return malloc_type_malloc(v3, v1);
}

double delta_lib_new(uint64_t a1)
{
  v2 = malloc_type_malloc(0x930uLL, 0x10B00402BA2B37CuLL);
  *(a1 + 200) = v2;
  bzero(v2, 0x930uLL);
  v3 = *(a1 + 200);
  *(v3 + 336) = "---";
  *(v3 + 344) = 1;
  result = NAN;
  *(v3 + 656) = -1;
  *(v3 + 2232) = 0;
  return result;
}

void delta_lib_delete(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 200);
    if (v2)
    {
      bzero(v2, 0x930uLL);
      free(*(a1 + 200));
      *(a1 + 200) = 0;
    }
  }
}

uint64_t absoluteSyncNumPtr(uint64_t a1)
{
  if (a1)
  {
    return a1 & 0xFFFFFFFC;
  }

  else
  {
    return -1;
  }
}

uint64_t absoluteSyncNum(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return getDeltaHeapSegNumber(a1, a2, *(*(a1 + 200) + 248));
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void *VLSYNC(uint64_t a1, int a2)
{
  result = (*(a1 + 8 * a2 + 24) & 0xFFFFFFFFFFFFFFFCLL);
  if (result)
  {
    if ((*result & 2) == 0)
    {
      return (*result & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  return result;
}

unint64_t VRSYNC(uint64_t a1, uint64_t a2, int a3)
{
  result = *(a2 + 8 * (*(*(a1 + 192) + 9084) + a3)) & 0xFFFFFFFFFFFFFFFCLL;
  if (result)
  {
    if ((*result & 2) == 0)
    {
      return *(result + 8) & 0xFFFFFFFFFFFFFFFCLL;
    }
  }

  return result;
}

uint64_t SETFENCE(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(*(result + 192) + 9084) + a3;
  *(a2 + 8 * v3) |= 2uLL;
  return result;
}

uint64_t UNSETFENCE(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(*(result + 192) + 9084) + a3;
  *(a2 + 8 * v3) &= ~2uLL;
  return result;
}

uint64_t SETSPINER(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a2 + 8 * *(*(result + 192) + 9084);
  *(v3 - 16) = *(v3 - 16) & 3 | a3;
  return result;
}

void INSSPINER(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 8 * *(*(a1 + 192) + 9084) - 16;
  v4 = *(a3 + v3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a2 + v3) = v4 | *(a2 + v3) & 3;
  *(v4 + 8) = *(v4 + 8) & 3 | a2;
  v5 = a3 + 8 * *(*(a1 + 192) + 9084);
  *(v5 - 16) = *(v5 - 16) & 3 | a2;
  *(a2 + 8) = *(a2 + 8) & 3 | a3;
  OUTLINED_FUNCTION_0_70(&spine_changed);
}

void INSSPINEL(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8) & 0xFFFFFFFFFFFFFFFCLL;
  *(a2 + 8) = v3 | *(a2 + 8) & 3;
  v4 = v3 + 8 * *(*(a1 + 192) + 9084);
  *(v4 - 16) = *(v4 - 16) & 3 | a2;
  *(a3 + 8) = *(a3 + 8) & 3 | a2;
  v5 = a2 + 8 * *(*(a1 + 192) + 9084);
  *(v5 - 16) = *(v5 - 16) & 3 | a3;
  OUTLINED_FUNCTION_0_70(&spine_changed);
}

void DELSPINE(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = 8 * *(*(a1 + 192) + 9084) - 16;
  v4 = *(a2 + v3) & 0xFFFFFFFFFFFFFFFCLL;
  *((v2 & 0xFFFFFFFFFFFFFFFCLL) + v3) = v4 | *((v2 & 0xFFFFFFFFFFFFFFFCLL) + v3) & 3;
  *(v4 + 8) = v2 & 0xFFFFFFFFFFFFFFFCLL | *(v4 + 8) & 3;
  OUTLINED_FUNCTION_0_70(&spine_changed);
}

uint64_t vinit_stm(uint64_t a1, int a2)
{
  v2 = a2;
  v4 = &vstmtbl[12 * a2];
  vdel_2pt(a1, a2, **(a1 + 200), *(*(a1 + 200) + 8));
  if (!*(v4 + 48))
  {
    return 1;
  }

  v9 = 0;
  v5 = v4[1];
  v6 = v4[2];
  LOWORD(v9) = *(v5 + 15);
  BYTE2(v9) = v5[32];
  v8 = (*v6)(v4[5]);
  result = vins_tok(a1, v2, **(a1 + 200), *(*(a1 + 200) + 8), &v8);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t vdel_2pt(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[25];
  *(v8 + 136) = a2;
  *(v8 + 120) = a3;
  *(v8 + 128) = a4;
  v9 = a2;
  v10 = VRSYNC(a1, a3, a2);
  *(v8 + 104) = v10;
  *(v8 + 112) = VLSYNC(a4, v9);
  OUTLINED_FUNCTION_8_49(a1[23]);
  if (v10 == a4)
  {
    v11 = (*(a3 + 8 * (*(a1[24] + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL);
    if (!v11 || (*v11 & 2) == 0)
    {
      fdeldel(a1, v11, v11);
    }
  }

  else
  {
    fdel(a1, 0);
  }

  return 1;
}

uint64_t vins_tok(uint64_t *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[24];
  *(a1[23] + 452) = 1;
  v12 = a4 + 8 * a2;
  if ((*(a3 + 8 * (*(v10 + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL) != a4 || (*(v12 + 24) & 0xFFFFFFFFFFFFFFFCLL) != a3)
  {
    vdel_2pt(a1, a2, a3, a4);
  }

  v13 = &vstmtbl[12 * a2];
  result = alloc_tok(a1, v13);
  if (result)
  {
    v15 = *(a1[24] + 9084) + a2;
    *(a3 + 8 * v15) = *(a3 + 8 * v15) & 3 | result;
    *(v12 + 24) = *(v12 + 24) & 3 | result;
    *result = a3;
    *(result + 8) = a4;
    if (*(a5 + 8) < 0)
    {
      vinitflds(result, a2, (result + 16), *a5);
    }

    else
    {
      memcpy((result + 16), *a5, *(v13 + 17));
    }

    result = 1;
    v16 = a1[24];
    *(a1[23] + 452) = 1;
    *(v16 + 9080) = 0;
  }

  return result;
}

uint64_t vmergable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 1;
  if (a2 != a3 && *(*(a1 + 192) + 8864))
  {
    v5 = *(a1 + 200);
    v6 = *v5;
    v7 = v5[1];
    if (v6 == a2 && v7 == a3)
    {
      return OUTLINED_FUNCTION_2_61();
    }

    else
    {
      return v6 != a3 || v7 != a2;
    }
  }

  return result;
}

uint64_t vmerge(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 1;
  if (a2 != a3)
  {
    v6 = a3;
    *(*(a1 + 184) + 452) = 1;
    v7 = *(a1 + 200);
    if (*v7 == a3 || v7[1] == a3 || *(*(a1 + 192) + 8868) && (*(a2 + 16) & 2) != 0)
    {
      v8 = a3;
      v6 = a2;
    }

    else
    {
      v8 = a2;
    }

    v9 = 0;
    v10 = *(a1 + 288);
    while (1)
    {
      if (v9 >= v10)
      {
        v12 = 0;
        goto LABEL_15;
      }

      v11 = *(*(a1 + 192) + 9084) + v9;
      if (*(v8 + 8 * v11) & 1) != 0 && (*(v6 + 8 * v11))
      {
        break;
      }

      ++v9;
    }

    v12 = v8 == (*(v6 + 8 * v9 + 24) & 0xFFFFFFFFFFFFFFFCLL);
LABEL_15:
    for (i = 0; ; i = v14 + 1)
    {
      v14 = i;
      if (i >= v10)
      {
        break;
      }

      v15 = *(*(a1 + 192) + 9084) + i;
      if (*(v6 + 8 * v15))
      {
        if ((*(v8 + 8 * v15) & 1) == 0 && v12)
        {
          v16 = OUTLINED_FUNCTION_7_50();
          result = vproj_l(v16, v17, v18, v19);
          if (!result)
          {
            return result;
          }

          v20 = OUTLINED_FUNCTION_7_50();
          result = vproj_r(v20, v21, v22, v23);
          if (!result)
          {
            return result;
          }
        }

        vdel_1pt(a1, v14, v6);
        v10 = *(a1 + 288);
      }
    }

    return 1;
  }

  return result;
}

uint64_t vdel_1pt(uint64_t a1, unsigned int a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8_49(*(a1 + 184));
  v7 = *(v6 + 200);
  *(v7 + 136) = v8;
  *(v7 + 104) = v9;
  *(v7 + 112) = v9;
  v10 = v8;
  *(v7 + 120) = VLSYNC(v9, v8);
  *(v7 + 128) = VRSYNC(a1, a3, v10);
  v11 = *(a3 + 8 * (*(*(a1 + 192) + 9084) + a2));
  if (v11)
  {
    v23 = 0;
    v21 = 0;
    v12 = (*(a3 + 8 * (a2 + 3)) & 0xFFFFFFFFFFFFFFFCLL);
    if (!v12 || (*v12 & 2) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFFFFCLL;
      if ((v11 & 0xFFFFFFFFFFFFFFFCLL) == 0 || (*v13 & 2) == 0)
      {
        v14 = &vstmtbl[12 * a2];
        LOWORD(v21) = *(vstmtbl[12 * a2 + 1] + 15);
        LOWORD(v23) = v21;
        v15 = v14[2];
        BYTE2(v21) = v14[1][32];
        BYTE2(v23) = BYTE2(v21);
        __dst = (*v15)((v12 + 16));
        v20 = (*v14[2])(v13 + 16);
        if (*(v14 + 86))
        {
          vadd(a1, &v20, &__dst);
          vinitflds(v16, a2, __dst, v20);
          v17 = *(a1 + 192);
          *(*(a1 + 184) + 452) = 1;
          v18 = *(v13 + 8) & 0xFFFFFFFFFFFFFFFCLL;
          *(a3 + 8 * (*(v17 + 9084) + a2)) = v18 | *(a3 + 8 * (*(v17 + 9084) + a2)) & 3;
          *(v18 + 8 * (a2 + 3)) = *(v18 + 8 * (a2 + 3)) & 3 | a3;
          cacheDeletedDeltaObject(a1, v13);
        }
      }
    }

    fdel(a1, 1);
  }

  return 1;
}

uint64_t vscanadv(void *a1, int a2, int a3)
{
  i = 0;
  v4 = a1[24];
  v5 = *(v4 + 8080);
  v6 = *(v4 + 8088);
  if (a3)
  {
    v7 = *(v4 + 8121);
    if (*(v4 + 8121))
    {
      if (*(v4 + 8090))
      {
        i = 0;
      }

      else
      {
        for (i = 0; i < v7; ++i)
        {
          v11 = *(v4 + 9084);
          v12 = *(a1[31] + i);
          if (*(v5 + 8 * (v11 + v12)))
          {
            return OUTLINED_FUNCTION_2_61();
          }

          v13 = *(v5 + 8 * (v11 + v12));
          v14 = a1[35];
          if ((v13 & 2) != 0 && v6 != v12 && !*(v14 + i))
          {
            return OUTLINED_FUNCTION_2_61();
          }

          *(v14 + i) = 0;
          v4 = a1[24];
          v7 = *(v4 + 8121);
        }
      }
    }
  }

  if (!v5)
  {
    return OUTLINED_FUNCTION_2_61();
  }

  v8 = (*(v4 + 8089) ? v5 + 8 * (*(v4 + 9084) + v6) : v5 + 8 * v6 + 24);
  v9 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
  if (!v9)
  {
    return OUTLINED_FUNCTION_2_61();
  }

  if ((*v9 & 2) != 0)
  {
    goto LABEL_13;
  }

  if (!a2)
  {
    return OUTLINED_FUNCTION_2_61();
  }

  v9 = (*&v9[8 * (*(v4 + 8089) != 0)] & 0xFFFFFFFFFFFFFFFCLL);
LABEL_13:
  *(v4 + 8080) = v9;
  *(v4 + 8090) = 0;
  while (i < *(v4 + 8121))
  {
    *(a1[35] + i++) = 0;
    v4 = a1[24];
  }

  return OUTLINED_FUNCTION_4_52();
}

uint64_t vscanadvUptoTokenOrMarker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_10_48();
  do
  {
    if (v6)
    {
      i = 0;
      if (v5)
      {
        v12 = *(v10 + 8121);
        if (v12)
        {
          if (*(v10 + 8090))
          {
            i = 0;
          }

          else
          {
            for (i = 0; i < v12; ++i)
            {
              v14 = *(v10 + 9084);
              v15 = *(v3[31] + i);
              if (*&v6[8 * v14 + 8 * v15])
              {
                return OUTLINED_FUNCTION_2_61();
              }

              v16 = *&v6[8 * v14 + 8 * v15];
              v17 = v3[35];
              if ((v16 & 2) != 0 && v7 != v15 && !*(v17 + i))
              {
                return OUTLINED_FUNCTION_2_61();
              }

              *(v17 + i) = 0;
              v10 = v3[24];
              v12 = *(v10 + v9);
            }
          }
        }
      }

      v13 = v8;
      if (*(v10 + 8089))
      {
        v13 = *(v10 + 9084) + v7;
      }

      v6 = (*&v6[8 * v13] & 0xFFFFFFFFFFFFFFFCLL);
      if (v6)
      {
        goto LABEL_10;
      }
    }

    return OUTLINED_FUNCTION_2_61();
LABEL_10:
    if ((*v6 & 2) == 0)
    {
      break;
    }

    *(v10 + 8080) = v6;
    *(v10 + 8090) = 0;
    while (i < *(v10 + v9))
    {
      *(v3[35] + i++) = 0;
      v10 = v3[24];
    }
  }

  while (v6 != v4);
  return OUTLINED_FUNCTION_4_52();
}

uint64_t vscanadvUptoToken(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_10_48();
  while (1)
  {
    if (!v6)
    {
      return OUTLINED_FUNCTION_2_61();
    }

    i = 0;
    if (v5)
    {
      v12 = *(v10 + 8121);
      if (v12)
      {
        if (*(v10 + 8090))
        {
          i = 0;
        }

        else
        {
          for (i = 0; i < v12; ++i)
          {
            v14 = *(v10 + 9084);
            v15 = *(v4[31] + i);
            if (*&v6[8 * v14 + 8 * v15])
            {
              return OUTLINED_FUNCTION_2_61();
            }

            v16 = *&v6[8 * v14 + 8 * v15];
            v17 = v4[35];
            if ((v16 & 2) != 0 && v7 != v15 && !*(v17 + i))
            {
              return OUTLINED_FUNCTION_2_61();
            }

            *(v17 + i) = 0;
            v10 = v4[24];
            v12 = *(v10 + v9);
          }
        }
      }
    }

    v13 = v8;
    if (*(v10 + 8089))
    {
      v13 = *(v10 + 9084) + v7;
    }

    v6 = (*&v6[8 * v13] & 0xFFFFFFFFFFFFFFFCLL);
    if (!v6)
    {
      return OUTLINED_FUNCTION_2_61();
    }

    if ((*v6 & 2) == 0)
    {
      break;
    }

    *(v10 + 8080) = v6;
    *(v10 + 8090) = 0;
    while (i < *(v10 + v9))
    {
      *(v4[35] + i++) = 0;
      v10 = v4[24];
    }
  }

  return OUTLINED_FUNCTION_4_52();
}

uint64_t vscanadvOverToken(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_10_48();
  while (v6)
  {
    i = 0;
    if (v5)
    {
      v12 = *(v10 + 8121);
      if (v12)
      {
        if (*(v10 + 8090))
        {
          i = 0;
        }

        else
        {
          for (i = 0; i < v12; ++i)
          {
            v14 = *(v10 + 9084);
            v15 = *(v4[31] + i);
            if (*&v6[8 * v14 + 8 * v15])
            {
              return OUTLINED_FUNCTION_2_61();
            }

            v16 = *&v6[8 * v14 + 8 * v15];
            v17 = v4[35];
            if ((v16 & 2) != 0 && v7 != v15 && !*(v17 + i))
            {
              return OUTLINED_FUNCTION_2_61();
            }

            *(v17 + i) = 0;
            v10 = v4[24];
            v12 = *(v10 + v9);
          }
        }
      }
    }

    v13 = v8;
    if (*(v10 + 8089))
    {
      v13 = *(v10 + 9084) + v7;
    }

    v6 = (*&v6[8 * v13] & 0xFFFFFFFFFFFFFFFCLL);
    if (!v6)
    {
      break;
    }

    *(v10 + 8080) = v6;
    *(v10 + 8090) = 0;
    while (i < *(v10 + 8121))
    {
      *(v4[35] + i++) = 0;
      v10 = v4[24];
    }

    if ((*v6 & 2) == 0)
    {
      *(v10 + 8080) = *&v6[8 * (*(v10 + 8089) != 0)] & 0xFFFFFFFFFFFFFFFCLL;
      return OUTLINED_FUNCTION_4_52();
    }
  }

  return OUTLINED_FUNCTION_2_61();
}

_BYTE *vmovel(_BYTE *a1, int a2)
{
  do
  {
    v2 = a1;
    a1 = (*&a1[8 * a2 + 24] & 0xFFFFFFFFFFFFFFFCLL);
  }

  while (a1 && (*a1 & 2) != 0);
  return v2;
}

_BYTE *vmover(uint64_t a1, _BYTE *a2, int a3)
{
  v3 = *(*(a1 + 192) + 9084) + a3;
  do
  {
    result = a2;
    a2 = (*&a2[8 * v3] & 0xFFFFFFFFFFFFFFFCLL);
  }

  while (a2 && (*a2 & 2) != 0);
  return result;
}

uint64_t vmark(uint64_t *a1, unsigned int a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = a3;
  v11 = a1[25];
  *(v11 + 96) = -1;
  *(v11 + 88) = &v16;
  *(v11 + 98) = 0;
  v12 = &vstmtbl[12 * a2];
LABEL_2:
  v13 = *(v11 + 8);
  while (a4 != a5 && a4 != v13)
  {
    a4 = *(a4 + 8 * (*(a1[24] + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL;
    if (!a4 || (*a4 & 2) == 0)
    {
      (*&v12[3][8 * v16])(a4 + 16, a6);
      a4 = *(a4 + 8) & 0xFFFFFFFFFFFFFFFCLL;
      v11 = a1[25];
      goto LABEL_2;
    }
  }

  OUTLINED_FUNCTION_8_49(a1[23]);
  return 1;
}

uint64_t vsplit_time(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v26 = 0;
  v27 = 0;
  if ((a4 & 0x8000000000000000) == 0)
  {
    v8 = (a3[*(a1[24] + 9084) + a2] & 0xFFFFFFFFFFFFFFFCLL);
    if (v8 && (*v8 & 2) != 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = a3[*(a1[24] + 9084) + a2] & 0xFFFFFFFFFFFFFFFCLL;
    }

    v11 = vins_sync(a1, a2, a3, v8);
    v12 = v5;
    v5 = v11;
    if (v11)
    {
      goto LABEL_10;
    }

    return 0;
  }

  v10 = (a3[a2 + 3] & 0xFFFFFFFFFFFFFFFCLL);
  if (v10 && (*v10 & 2) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v10;
  }

  v11 = vins_sync(a1, a2, v10, v5);
  v12 = v11;
  if (!v11)
  {
    return 0;
  }

LABEL_10:
  v25 = 0;
  v23 = 0;
  v24 = 0;
  if (!v9)
  {
    goto LABEL_16;
  }

  v13 = &vstmtbl[12 * v6];
  v14 = *(v13[1] + 15);
  if (v14 == 65532)
  {
    (*v13[2])(v9 + 16);
    OUTLINED_FUNCTION_9_49();
    v25 = v18;
    v16 = (v9 + 16);
    v17 = &v25;
  }

  else
  {
    if (v14 != 65533)
    {
      goto LABEL_16;
    }

    (*v13[2])(v9 + 16);
    OUTLINED_FUNCTION_9_49();
    v16 = (v9 + 16);
    v17 = &v27;
  }

  vinitflds(v15, v6, v16, v17);
LABEL_16:
  if (v4 >= 0)
  {
    v19 = v4;
  }

  else
  {
    v19 = -v4;
  }

  v26 = v19;
  v20 = *(vstmtbl[12 * v6 + 1] + 15);
  if (v20 == 65532)
  {
    LOWORD(v24) = -4;
    v25 = v19;
    v21 = &v25;
  }

  else
  {
    if (v20 != 65533)
    {
      goto LABEL_24;
    }

    LOWORD(v24) = -3;
    v21 = &v26;
  }

  v23 = v21;
  BYTE2(v24) = 0;
LABEL_24:
  if (vins_tok(a1, v6, v12, v5, &v23))
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t vins_sync(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = a2;
  v8 = alloc_sync(a1);
  if (v8)
  {
    OUTLINED_FUNCTION_5_52();
    *(v8 + 8 * v9) |= 1uLL;
    if (*(*(*(a1 + 192) + 9072) + v6))
    {
      *(v8 + 8) |= 2uLL;
    }

    OUTLINED_FUNCTION_8_49(*(a1 + 184));
    if (a3 && (v10 = *a3, (*a3 & 2) != 0))
    {
      OUTLINED_FUNCTION_5_52();
      a3[v11] = a3[v11] & 3 | v8;
      v12 = a3;
    }

    else
    {
      v12 = v10 & 0xFFFFFFFFFFFFFFFCLL;
      a3[1] = v8;
    }

    *(v8 + 8 * (v6 + 3)) = *(v8 + 8 * (v6 + 3)) & 3 | a3;
    if (a4 && (*a4 & 2) != 0)
    {
      *(a4 + 8 * (v6 + 3)) = *(a4 + 8 * (v6 + 3)) & 3 | v8;
      v13 = a4;
    }

    else
    {
      v13 = *(a4 + 8) & 0xFFFFFFFFFFFFFFFCLL;
      *a4 = v8;
    }

    OUTLINED_FUNCTION_5_52();
    *(v8 + 8 * v14) = *(v8 + 8 * v14) & 3 | a4;
    v15 = *(a1 + 192);
    if (*(v15 + 8868))
    {
      v16 = *(v15 + 9084) - 2;
      v17 = *(v12 + 8 * v16);
      v18 = v17 & 0xFFFFFFFFFFFFFFFCLL;
      if (v13 != (v17 & 0xFFFFFFFFFFFFFFFCLL))
      {
        if (*(*(v15 + 9072) + v6))
        {
LABEL_15:
          *(v8 + 16) |= 2uLL;
          if (*(*(a1 + 192) + 8864) && (*(v8 + 8) & 1) == 0 && !vchkseqbad(a1, v8))
          {
            return 0;
          }
        }

        else
        {
          while (v18 != v13)
          {
            if ((*(v18 + 8) & 3) == 0)
            {
              goto LABEL_15;
            }

            v18 = *(v18 + 8 * v16) & 0xFFFFFFFFFFFFFFFCLL;
          }

          while (1)
          {
            v20 = v17 & 0xFFFFFFFFFFFFFFFCLL;
            if (v13 == (v17 & 0xFFFFFFFFFFFFFFFCLL))
            {
              break;
            }

            *(v20 + 16) |= 2uLL;
            v21 = *(a1 + 192);
            if (*(v21 + 8864) && (*(v20 + 8) & 1) == 0)
            {
              if (!vchkseqbad(a1, v20))
              {
                return 0;
              }

              v21 = *(a1 + 192);
            }

            v17 = *(v20 + 8 * *(v21 + 9084) - 16);
          }
        }
      }

      INSSPINER(a1, v8, v12);
      v15 = *(a1 + 192);
    }

    *(v15 + 9080) = 0;
  }

  return v8;
}

void *vinitflds(int a1, unsigned int a2, void *__dst, unsigned __int8 *a4)
{
  v6 = &vstmtbl[12 * a2];
  memmove(__dst, v6[5], *(v6 + 17));
  result = (*v6[3])(__dst, a4);
  v8 = v6[4];
  if (v8)
  {
    v9 = *(v6[1] + 15);
    if (v9 == 0xFFFF)
    {
      v10 = *a4;
    }

    else
    {
      if (v9 != 65534)
      {
        return result;
      }

      v10 = *a4;
    }

    v11 = *(v6 + 19);
    v12 = &v8[*(v6 + 18) * v10];

    return memmove(__dst, v12, v11);
  }

  return result;
}

uint64_t vchkseqbad(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 8) & 3) != 0)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    while (*(a1 + 288) != v2)
    {
      v5 = *(a1 + 192);
      if (*(a2 + 8 * (v2 + *(v5 + 9084))))
      {
        ++v3;
        if (*(*(v5 + 9072) + v2))
        {
          ++v4;
        }
      }

      ++v2;
    }

    if (v3 < 2 || v4 >= v3)
    {
      return 1;
    }
  }

  vseqbad();
  return 0;
}

uint64_t vnsqflags(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = *(*(result + 200) + 160);
  while (1)
  {
    v6 = *v4++;
    v5 = v6;
    if (v6 < 0)
    {
      break;
    }

    v7 = *(a2 + 8 * (*(*(result + 192) + 9084) + v5)) & 1;
    v2 += v7;
    if (v7)
    {
      v3 = 1;
    }
  }

  v8 = *(result + 288);
LABEL_6:
  v9 = v8;
  while (1)
  {
    v8 = v9 - 1;
    if (v9 < 1)
    {
      break;
    }

    v10 = *(result + 192);
    v11 = *(a2 - 8 + 8 * *(v10 + 9084) + 8 * v9--);
    if (v11)
    {
      if (!*(*(v10 + 9072) + v8))
      {
        ++v2;
        v3 = 0;
      }

      if (v2 >= 2 && v3 == 0)
      {
        v3 = 0;
        goto LABEL_19;
      }

      goto LABEL_6;
    }
  }

  if (v2 == 1)
  {
    v13 = *(a2 + 8) | 1;
    goto LABEL_20;
  }

LABEL_19:
  v13 = *(a2 + 8) & 0xFFFFFFFFFFFFFFFELL;
LABEL_20:
  *(a2 + 8) = v13 & 0xFFFFFFFFFFFFFFFDLL | (2 * (v3 != 0));
  return result;
}

uint64_t visnonseq(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(a1 + 288);
  while (1)
  {
    if (v7 >= v8)
    {
      return 0;
    }

    if (a2 != v7)
    {
      v10 = v7 + *(*(a1 + 192) + 9084);
      if ((*(a3 + 8 * v10) & 1) != 0 && (*(a4 + 8 * v10) & 1) != 0 && VRSYNC(a1, a3, v7) != a4)
      {
        break;
      }
    }

    ++v7;
  }

  return 1;
}

void fdeldel(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(*(result + 184) + 452) = 1;
  if (a2)
  {
    v6 = *a2;
    if ((*a2 & 2) != 0)
    {
      v6 = a2[*(*(result + 200) + 136) + 3];
    }

    v7 = v6 & 0xFFFFFFFFFFFFFFFCLL;
  }

  else
  {
    v7 = 0;
  }

  do
  {
    if (!v4)
    {
      return;
    }

    if ((*v4 & 2) == 0)
    {
      v8 = v4[1];
LABEL_35:
      cacheDeletedDeltaObject(result, v4);
      goto LABEL_36;
    }

    v9 = *(*(result + 192) + 9084) + *(*(result + 200) + 136);
    v8 = v4[v9];
    v10 = v4[1];
    v4[v9] = v8 & 0xFFFFFFFFFFFFFFFELL;
    v11 = &v4[*(*(result + 200) + 136)];
    v11[3] &= 3uLL;
    LODWORD(v11) = *(*(result + 192) + 9084) + *(*(result + 200) + 136);
    v4[v11] &= 3uLL;
    if (v10)
    {
      if (*(*(result + 192) + 8868))
      {
        DELSPINE(result, v4);
      }

      goto LABEL_35;
    }

    vnsqflags(result, v4);
    v12 = *(result + 192);
    if (!*(v12 + 8868))
    {
      goto LABEL_36;
    }

    v13 = *(result + 200);
    v14 = v4;
    do
    {
      v14 = *(v14 + 8) & 0xFFFFFFFFFFFFFFFCLL;
    }

    while ((*(v14 + 16) & 2) != 0);
    v15 = *(v12 + 9084);
    v16 = v4;
    do
    {
      v16 = *(v16 + 8 * v15 - 16) & 0xFFFFFFFFFFFFFFFCLL;
    }

    while ((*(v16 + 16) & 2) != 0);
    LODWORD(v17) = 0;
    v18 = 0;
    v19 = 0;
    v20 = *(result + 288);
    v21 = v16 + 8 * v15 - 8;
    v22 = v14 + 8 * v15 - 8;
LABEL_16:
    v23 = v17;
    for (i = v20; i > *(v13 + 136); --i)
    {
      if ((v4[v15 - 1 + i] & 1) == 0)
      {
        v20 = i - 1;
        LODWORD(v17) = 1;
        if (!v23)
        {
          LODWORD(v17) = 0;
          if (*(v22 + 8 * i))
          {
            v17 = *(v21 + 8 * i) & 1;
          }
        }

        goto LABEL_16;
      }

      if (*(v22 + 8 * i))
      {
        if (v19 || (*(v21 + 8 * i) & 1) != 0)
        {
          goto LABEL_36;
        }

        v19 = 0;
        ++v18;
      }

      else
      {
        if (v19)
        {
          goto LABEL_21;
        }

        if (*(v21 + 8 * i))
        {
          if (v18)
          {
            goto LABEL_36;
          }

LABEL_21:
          v19 = 1;
          continue;
        }

        v19 = 0;
      }
    }

    v26 = 8 * v15;
    v27 = *(v13 + 136);
    if (*(v13 + 136))
    {
      do
      {
        if (v4[v26 / 8])
        {
          if (*(v14 + v26))
          {
            if (v19 || (*(v16 + v26) & 1) != 0)
            {
              goto LABEL_36;
            }

            v19 = 0;
            ++v18;
          }

          else if (v19)
          {
            v19 = 1;
          }

          else
          {
            if (v18)
            {
              goto LABEL_36;
            }

            v19 = *(v16 + v26) & 1;
          }
        }

        else if (v23)
        {
          v23 = 1;
        }

        else if (*(v14 + v26))
        {
          v23 = *(v16 + v26) & 1;
        }

        else
        {
          v23 = 0;
        }

        v26 += 8;
        --v27;
      }

      while (v27);
    }

    if (!v19 || !v18)
    {
      if (v23)
      {
        *(v13 + 16) = 0;
        *(v13 + 24) = v4;
        *(v13 + 32) = v4;
        v28 = (v4[1] & 2) == 0 && (v4[1] & 1) == 0;
        *(v13 + 20) = v28;
        if (v19 | v18)
        {
          if (v19)
          {
            v29 = -1;
          }

          else
          {
            v29 = 1;
          }

          if (v19)
          {
            v30 = v14;
          }

          else
          {
            v30 = v16;
          }

          *(v13 + 48) = v30;
        }

        else
        {
          v29 = 2;
        }

        *(v13 + 40) = v29;
        goto LABEL_82;
      }

      if (v19 | v18)
      {
        v31 = v19 == 0;
        if (v19)
        {
          v32 = -1;
        }

        else
        {
          v32 = 1;
        }

        if (v19)
        {
          v33 = v14;
        }

        else
        {
          v33 = v16;
        }

        *(v13 + 16) = v32;
        v34 = v13 + 16;
        *(v34 + 8) = v33;
        if (v31)
        {
          v35 = -1;
        }

        else
        {
          v35 = 1;
        }

        *(v34 + 32) = v4;
        *(v34 + 24) = v35;
        seqscan(result, v34);
        v13 = *(result + 200);
        v29 = *(v13 + 40);
LABEL_82:
        switch(v29)
        {
          case 0xFFu:
LABEL_85:
            seqscan(result, (v13 + 40));
            v13 = *(result + 200);
            break;
          case 2u:
            if (*(v13 + 24) == v14 && *(v13 + 16) == 255)
            {
              *(v13 + 64) = -1;
              v44 = *(v13 + 32);
              *(v13 + 72) = v14;
              *(v13 + 80) = v44;
              *(v13 + 68) = *(v13 + 20);
            }

            else
            {
              *(v13 + 64) = -1;
              v36 = v13 + 64;
              *(v36 + 8) = v14;
              seqscan(result, v36);
              v13 = *(result + 200);
            }

            *(v13 + 40) = 1;
            v37 = v13 + 40;
            *(v37 + 8) = v16;
            seqscan(result, v37);
            v13 = *(result + 200);
            *(v13 + 48) = *(v13 + 80);
            *(v13 + 44) |= *(v13 + 68);
            break;
          case 1u:
            goto LABEL_85;
        }

        v38 = v13 + 24 * (*(v13 + 20) != 0);
        v41 = *(v38 + 16);
        v39 = v38 + 16;
        v40 = v41;
        for (j = *(v39 + 8); ; j = *v43 & 0xFFFFFFFFFFFFFFFCLL)
        {
          *(j + 16) |= 2uLL;
          if (*(*(result + 192) + 8864))
          {
            if ((*(j + 8) & 1) == 0 && !vchkseqbad(result, j))
            {
              break;
            }
          }

          if (j == *(v39 + 16))
          {
            break;
          }

          if (v40 < 0)
          {
            v43 = (j + 8);
          }

          else
          {
            v43 = (j + 8 * *(*(result + 192) + 9084) - 16);
          }
        }
      }
    }

LABEL_36:
    v25 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v31 = v4 == a3;
    v4 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
  }

  while (!v31);
  if (v7 && (*v7 & 2) != 0)
  {
    v45 = *(*(result + 192) + 9084) + *(*(result + 200) + 136);
    *(v7 + 8 * v45) = *(v7 + 8 * v45) & 3 | v25;
    if (v25 && (*v25 & 2) != 0)
    {
LABEL_109:
      v46 = v25 + 8 * *(*(result + 200) + 136);
      *(v46 + 24) = *(v46 + 24) & 3 | v7;
    }

    else
    {
      *v25 = v7;
    }
  }

  else if (v25 && (*v25 & 2) != 0)
  {
    *(v7 + 8) = v25;
    goto LABEL_109;
  }
}

void fdel(uint64_t a1, int a2)
{
  v2 = *(a1 + 200);
  if (a2)
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
  }

  else
  {
    v5 = *(v2 + 136);
    v3 = (*(*(v2 + 120) + 8 * (*(*(a1 + 192) + 9084) + v5)) & 0xFFFFFFFFFFFFFFFCLL);
    v4 = (*(*(v2 + 128) + 8 * v5 + 24) & 0xFFFFFFFFFFFFFFFCLL);
  }

  fdeldel(a1, v3, v4);
}

uint64_t vdelinit(uint64_t a1)
{
  *(*(a1 + 192) + 9072) = malloc_type_malloc(*(a1 + 288), 0x100004077774924uLL);
  v2 = malloc_type_malloc(*(a1 + 288), 0x100004077774924uLL);
  result = 0;
  v4 = *(a1 + 192);
  *(*(a1 + 200) + 160) = v2;
  if (*(v4 + 9072) && v2)
  {
    for (i = 0; i < *(a1 + 288); ++i)
    {
      *(*(*(a1 + 192) + 9072) + i) = 0;
    }

    **(*(a1 + 200) + 160) = -1;
    return 1;
  }

  return result;
}

void vdelCleanup(uint64_t a1)
{
  v2 = *(*(a1 + 200) + 160);
  if (v2)
  {
    free(v2);
    *(*(a1 + 200) + 160) = 0;
  }

  v3 = *(*(a1 + 192) + 9072);
  if (v3)
  {
    free(v3);
    *(*(a1 + 192) + 9072) = 0;
  }
}

uint64_t setnonseqIndex(uint64_t result, int a2)
{
  v2 = 0;
  v3 = *(*(result + 200) + 160);
  while (1)
  {
    v4 = *(v3 + v2);
    if (v4 == -1)
    {
      break;
    }

    ++v2;
    if (v4 == a2)
    {
      return result;
    }
  }

  *(v3 + v2) = a2;
  *(*(*(result + 200) + 160) + v2 + 1) = -1;
  return result;
}

uint64_t mapsyncs(uint64_t a1, uint64_t a2)
{
  result = absoluteSyncNum(a1, a2);
  v5 = 0;
  v6 = a2 + 8 * *(*(a1 + 192) + 9084);
  *(v6 - 24) |= 2uLL;
  v7 = *(a1 + 200);
  v8 = *(v7 + 200);
  *(v7 + 200) = v8 + 1;
  *(*(v7 + 192) + 2 * result) = v8;
  while (1)
  {
    v9 = v5;
    if (v5 >= *(a1 + 288))
    {
      break;
    }

    v10 = *(*(a1 + 192) + 9084);
    if (*(a2 + 8 * (v10 + v5)))
    {
      result = VRSYNC(a1, a2, v5);
      if (result)
      {
        if ((*(result + 8 * v10 - 24) & 2) == 0)
        {
          result = mapsyncs(a1, result);
        }
      }
    }

    v5 = v9 + 1;
  }

  return result;
}

uint64_t vredoctxt(uint64_t a1, int a2)
{
  v4 = 0;
  v5 = *(a1 + 200);
  v5[86] = 0;
  v5[56] = a2;
  v5[57] = 0;
  while (*(a1 + 288) > v4)
  {
    for (i = *(*(a1 + 200) + 8); i; i = VLSYNC(i, v4))
    {
      if (*(*(a1 + 200) + 224))
      {
        v7 = i[*(*(a1 + 192) + 9084) - 3];
        if ((v7 & 2) != 0 || (!v7 ? (v8 = *i > 3uLL) : (v8 = 1), !v8 ? (v9 = ((*i | v7) & 1) == 0) : (v9 = 0), !v9))
        {
          v10 = checkInterrupt(a1);
          v11 = *(a1 + 200);
          if (v10)
          {
            *(v11 + 224) = 0;
          }

          else if (*(v11 + 224))
          {
            *(v11 + 228) = 1;
            goto LABEL_19;
          }
        }
      }

      OUTLINED_FUNCTION_6_51();
      *(v13 - 24) = v12 & 0xFFFFFFFFFFFFFFFDLL;
      *i &= ~1uLL;
      OUTLINED_FUNCTION_6_51();
      *(v15 - 24) = v14 & 0xFFFFFFFFFFFFFFFELL;
      *i &= 3uLL;
      OUTLINED_FUNCTION_6_51();
      *(v17 - 24) = v16 & 3;
    }

    ++v4;
  }

LABEL_19:
  vclrctxt(a1);
  v18 = *(a1 + 200);
  if (a2 && !*(v18 + 228))
  {
    vf_printf(a1, *(*(a1 + 216) + 4), 1, "The delta is correct.\n");
    v18 = *(a1 + 200);
  }

  *(v18 + 344) = 1;
  return 1;
}

uint64_t vclrctxt(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 288);
  while (v3 > v2)
  {
    for (i = *(*(a1 + 200) + 8); i; i = VLSYNC(i, v2))
    {
      for (j = 0; v3 != j; ++j)
      {
        if ((i[j + *(*(a1 + 192) + 9084)] & 1) == 0)
        {
          i[j + 3] &= 3uLL;
          v6 = j + *(*(a1 + 192) + 9084);
          i[v6] &= 3uLL;
          *(*(a1 + 200) + 228) = 1;
        }
      }
    }

    ++v2;
  }

  return 1;
}

uint64_t seqscan(uint64_t result, unsigned __int8 *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a2 + 1);
  *(a2 + 2) = v3;
  if (v2 == 1)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = (v3 + 8 * *(*(result + 192) + 9084) - 16);
  }

  v5 = 0;
  v6 = 0;
  v7 = *v4 & 0xFFFFFFFFFFFFFFFCLL;
  v8 = *(result + 288);
  while (v8 != v5)
  {
    if (*(v7 + 8 * (v5 + *(*(result + 192) + 9084))))
    {
      v12[v6++] = v5;
    }

    ++v5;
  }

LABEL_9:
  v9 = 0;
  do
  {
    if (v6 <= v9)
    {
      v11 = (v3 + 8);
      if ((~*(v3 + 8) & 3) != 0)
      {
        *(a2 + 1) = 1;
      }

      *(a2 + 2) = v3;
      if (v2 == 1)
      {
        v11 = (v3 + 8 * *(*(result + 192) + 9084) - 16);
      }

      v3 = *v11 & 0xFFFFFFFFFFFFFFFCLL;
      goto LABEL_9;
    }

    v10 = *(v3 + 8 * (*(*(result + 192) + 9084) + v12[v9++]));
  }

  while ((v10 & 1) == 0);
  return result;
}

uint64_t varloc(uint64_t a1, __int16 a2, unsigned __int16 a3, uint64_t a4)
{
  v4 = a3 | (a2 << 8);
  if ((a2 & 0x80) != 0)
  {
    v7 = *(a1 + 192) + 8 * ((a3 | (a2 << 8)) & 0x3FFF) + 9288;
    return *v7;
  }

  v5 = *(a1 + 192);
  if (!a4 || *(v5 + 8104) == a4)
  {
    result = *(*(v5 + 8112) + 8);
    if (!result)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = vonstack(a1, a4);
  if (result)
  {
LABEL_7:
    v7 = *(result + 16) + 8 * (v4 & 0x3FFF);
    return *v7;
  }

  return result;
}

uint64_t vrd_nvar()
{
  OUTLINED_FUNCTION_14_43();
  v2 = 0;
  v3 = 0;
  v26 = *MEMORY[0x277D85DE8];
LABEL_2:
  while ((v3 & 1) == 0)
  {
    v4 = 1;
    v5 = v25;
    while (1)
    {
      v6 = v4;
      v7 = OUTLINED_FUNCTION_8_50();
      v9 = vf_getc(v7, v8);
      if (v9 == 10)
      {
        break;
      }

      if ((v9 + 1) < 2)
      {
        *v5 = 0;
        v10 = 1;
        vf_puts(v0, *(*(v0 + 216) + 5), *(v0 + 184) + 32, 1);
        *(*(v0 + 184) + 32) = 0;
        *(*(v0 + 184) + 436) = 0;
        OUTLINED_FUNCTION_8_50();
        v11 = var_rderr();
        v2 = 0;
        v3 = 0;
        if (!v11)
        {
          goto LABEL_2;
        }

        return v10;
      }

      if (v9 == 32)
      {
        v4 = 1;
        if ((v6 & 1) == 0)
        {
          v2 = 32;
          goto LABEL_13;
        }
      }

      else
      {
        v4 = 0;
        *v5++ = v9;
      }
    }

    v2 = 10;
LABEL_13:
    *v5 = 0;
    v12 = *(v1 + 8);
    if (v12 == 65532)
    {
      if (chk_itok(v25))
      {
        **v1 = atoi(v25);
        v3 = 1;
        continue;
      }

      v13 = OUTLINED_FUNCTION_8_50();
      v20 = "%s is not an integer";
    }

    else
    {
      v3 = 1;
      if (v12 != 65533)
      {
        continue;
      }

      if (chk_itok(v25))
      {
        **v1 = atol(v25);
        v3 = 1;
        continue;
      }

      v13 = OUTLINED_FUNCTION_8_50();
      v20 = "%s is not an long integer (longint)";
    }

    readErrorReport(v13, v14, v15, v20, v16, v17, v18, v19, v25);
    OUTLINED_FUNCTION_8_50();
    v21 = var_rderr();
    v3 = 1;
    if (v21)
    {
      return 1;
    }
  }

  if (v2 != 10)
  {
    v22 = OUTLINED_FUNCTION_8_50();
    if (vf_getc(v22, v23) != 10)
    {
      OUTLINED_FUNCTION_8_50();
      vf_ungetc();
    }
  }

  return 0;
}

uint64_t var_rderr()
{
  OUTLINED_FUNCTION_14_43();
  if (OUTLINED_FUNCTION_26_27(v1, v2, "cmdwin") || (v3 = 1, v4 = OUTLINED_FUNCTION_8_50(), OUTLINED_FUNCTION_26_27(v4, v5, v6)))
  {
    v7 = OUTLINED_FUNCTION_8_50();
    v9 = logicalFileInputBuffer(v7, v8);
    v10 = dynaBufMoveRel(v9, 0);
    v11 = dynaBufLength(v9);
    dynaBufMoveAbs(v9, v11 - 1);
    dynaBufDeleteChars(v9, 1uLL);
    dynaBufMoveAbs(v9, v10);
    v12 = dynaBufContents(v9);
    v19 = v12 + v10 - strlen(v0);
    v13 = OUTLINED_FUNCTION_8_50();
    vf_printf(v13, v14, 1, v15, v19);
    v16 = OUTLINED_FUNCTION_8_50();
    vf_clrbuf(v16, v17);
    return 0;
  }

  return v3;
}

uint64_t chk_itok(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 != 43 && v1 != 45 && (v1 - 48) > 9)
  {
    return 0;
  }

  v2 = a1 + 1;
  while (1)
  {
    v4 = *v2++;
    v3 = v4;
    if (!v4)
    {
      break;
    }

    if ((v3 - 48) >= 0xA)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t readErrorReport(uint64_t a1, unsigned __int8 a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a1 + 216);
  v12 = 4;
  if (*(v11 + 1) != a2)
  {
    v12 = 5;
  }

  v13 = *(v11 + v12);
  vf_printf(a1, v13, 0, "Error: %s: ", "DELTIO");
  return vf_printf(a1, v13, 1, a4, &a9);
}

size_t lithex(size_t result, char *a2, int a3)
{
  v4 = result;
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3 - 8;
  v6 = a2;
  while (1)
  {
    v7 = *v4;
    if (!*v4 || v6 - a2 >= v5)
    {
      break;
    }

    if ((v7 - 127) >= 0xA1u)
    {
      *v6++ = v7;
    }

    else
    {
      if ((v7 - 7) > 6)
      {
        OUTLINED_FUNCTION_25_27();
        __sprintf_chk(v12, v13, v14, "'\\x%2x'");
      }

      else
      {
        OUTLINED_FUNCTION_25_27();
        __sprintf_chk(v9, v10, v11, "'\\%s'");
      }

      strcpy(v6, __src);
      result = strlen(__src);
      v6 += result;
    }

    ++v4;
  }

  *v6 = 0;
  return result;
}

uint64_t vrd_tvar(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  LOBYTE(v6) = 0;
  v7 = 0;
  v70 = *MEMORY[0x277D85DE8];
  v68 = 0;
  v67 = 0;
  v66 = 0;
  HIWORD(v65) = 0;
  v64 = 0;
  v62 = a3;
  v8 = *(a3 + 8);
  v9 = &vstmtbl[12 * *(a3 + 8)];
  v10 = v8;
  while (1)
  {
    v11 = v5;
    if (v7)
    {
      vinitflds(a1, v8, *v62, v5);
      if (v6 != 10)
      {
        v60 = OUTLINED_FUNCTION_6_52();
        if (vf_getc(v60, v61) != 10)
        {
          OUTLINED_FUNCTION_6_52();
          vf_ungetc();
        }
      }

      return 0;
    }

    v12 = gettok_0(a1, v8, a2, __s1);
    if (!v12)
    {
      break;
    }

    v6 = v12;
    if (checkInterrupt(a1))
    {
      break;
    }

    v7 = 0;
    v5 = v11;
    if (v6 != 10)
    {
      v13 = STMTYP(v10);
      v7 = 1;
      v5 = v11;
      switch(v13)
      {
        case -5:
          v21 = chk_ftok(__s1);
          if (v21)
          {
            v64 = atof(__s1);
            v7 = 1;
            v5 = &v64;
          }

          else
          {
            v57 = OUTLINED_FUNCTION_10_49(v21, v22, v23, v24, v25, v26, v27, v28, v62, v63, v64, v65);
            v7 = 0;
            v5 = &v64;
            if (v57)
            {
              return 1;
            }
          }

          continue;
        case -4:
          v48 = chk_itok(__s1);
          if (v48)
          {
            HIWORD(v65) = atoi(__s1);
            v7 = 1;
            v5 = (&v65 + 6);
          }

          else
          {
            v58 = OUTLINED_FUNCTION_10_49(v48, v49, v50, v51, v52, v53, v54, v55, v62, v63, v64, v65);
            v7 = 0;
            v5 = (&v65 + 6);
            if (v58)
            {
              return 1;
            }
          }

          break;
        case -3:
          v34 = chk_itok(__s1);
          if (v34)
          {
            v66 = atol(__s1);
            v7 = 1;
            v5 = &v66;
          }

          else
          {
            v56 = OUTLINED_FUNCTION_10_49(v34, v35, v36, v37, v38, v39, v40, v41, v62, v63, v64, v65);
            v7 = 0;
            v5 = &v66;
            if (v56)
            {
              return 1;
            }
          }

          continue;
        case -2:
          HIDWORD(v63) = v10;
          v42 = 0;
          v43 = v9;
          v44 = v9[1];
          v45 = *(v44 + 14);
          v46 = v45 & ~(v45 >> 31);
          while (1)
          {
            v67 = v42;
            if (v46 == v42)
            {
              break;
            }

            v13 = strcmp(__s1, *(*(v44 + 2) + 8 * v42++));
            if (!v13)
            {
              LODWORD(v46) = v42 - 1;
              break;
            }
          }

          v7 = 1;
          v5 = &v67;
          v33 = v46 == v45;
          v9 = v43;
          v10 = HIDWORD(v63);
LABEL_20:
          if (v33)
          {
            v47 = OUTLINED_FUNCTION_10_49(v13, v14, v15, v16, v17, v18, v19, v20, v62, v63, v64, v65);
            v7 = 0;
            v5 = v11;
            if (v47)
            {
              return 1;
            }
          }

          continue;
        case -1:
          v29 = 0;
          v30 = v9[1];
          v31 = *(v30 + 14);
          do
          {
            v68 = v29;
            v32 = v29;
            if (v29 >= v31)
            {
              break;
            }

            v13 = strcmp(__s1, *(*(v30 + 2) + 8 * v29));
            v29 = v32 + 1;
          }

          while (v13);
          v7 = 1;
          v5 = &v68;
          v33 = v32 == v31;
          goto LABEL_20;
        default:
          continue;
      }
    }
  }

  OUTLINED_FUNCTION_24_28();
  return 1;
}

uint64_t gettok_0(uint64_t a1, unsigned int a2, uint64_t a3, _BYTE *a4)
{
  v4 = &vstmtbl[12 * a2];
  v5 = *(v4 + 20);
  v6 = a2;
  if (STMTYP(a2) == -4 || STMTYP(v6) == -3)
  {
    v7 = 0;
  }

  else
  {
    v8 = STMTYP(v6) != -5 && v5 == 1;
    v7 = v8;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = OUTLINED_FUNCTION_12_45();
    v13 = vf_getc(v11, v12);
    v14 = v13;
    if (v13 == 92)
    {
      v15 = OUTLINED_FUNCTION_12_45();
      v17 = vf_getc(v15, v16);
      v18 = v17;
      if ((v17 & 0xFFFFFFF8) == 0x30)
      {
        v19 = 0;
        while ((v18 & 0xFFFFFFF8) == 0x30)
        {
          v19 = v18 + 8 * v19 - 48;
          v20 = OUTLINED_FUNCTION_12_45();
          v18 = vf_getc(v20, v21);
        }

        OUTLINED_FUNCTION_12_45();
        vf_ungetc();
        LOBYTE(v18) = v19;
      }

      else
      {
        if ((v17 & 0xFFFFFFDF) == 0x58)
        {
          for (LOBYTE(v18) = 0; ; LOBYTE(v18) = v24 + 16 * v18 + v25)
          {
            v22 = OUTLINED_FUNCTION_12_45();
            v24 = vf_getc(v22, v23);
            if ((v24 - 48) >= 0xA)
            {
              if ((v24 - 97) >= 6)
              {
                if ((v24 - 65) > 5)
                {
                  OUTLINED_FUNCTION_12_45();
                  vf_ungetc();
                  goto LABEL_27;
                }

                v25 = -55;
              }

              else
              {
                v25 = -87;
              }
            }

            else
            {
              v25 = -48;
            }
          }
        }

        switch(v17)
        {
          case 'n':
            LOBYTE(v18) = 10;
            break;
          case 'o':
          case 'p':
          case 'q':
          case 's':
          case 'u':
            break;
          case 'r':
            LOBYTE(v18) = 13;
            break;
          case 't':
            LOBYTE(v18) = 9;
            break;
          case 'v':
            LOBYTE(v18) = 11;
            break;
          default:
            switch(v17)
            {
              case 'a':
                LOBYTE(v18) = 7;
                break;
              case 'f':
                LOBYTE(v18) = 12;
                break;
              case 'b':
                LOBYTE(v18) = 8;
                break;
            }

            break;
        }
      }

LABEL_27:
      v14 = v18;
    }

    if (v13 != 92 && v14 == 10)
    {
      break;
    }

    if (v13 != 92 && (v14 + 1) <= 1)
    {
      LOBYTE(v14) = 0;
LABEL_71:
      *a4 = 0;
      return v14;
    }

    if (v13 == 92)
    {
      goto LABEL_48;
    }

    if (v14 == *(v4 + 84))
    {
      v8 = v9 == 0;
      v9 = 1;
      if (!v8)
      {
        if (v14 == *(v4 + 85))
        {
          goto LABEL_78;
        }

        goto LABEL_73;
      }
    }

    else
    {
      if (v14 == *(v4 + 85))
      {
        if (v9)
        {
LABEL_78:
          *a4 = 0;
          LOBYTE(v14) = *(a4 - 1);
          return v14;
        }

LABEL_73:
        LOBYTE(v14) = 0;
        return v14;
      }

LABEL_48:
      if (v13 == 92 || (v14 == 32 ? (v28 = v5 == 1) : (v28 = 1), v28 || v9))
      {
        *a4++ = v14;
        v29 = v7 ^ 1;
        if (v9)
        {
          v29 = 1;
        }

        if (v7)
        {
          v9 = 1;
        }

        else
        {
          v10 = 1;
        }

        if ((v29 & 1) == 0)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v9 = 0;
        v8 = v10 == 0;
        v10 = 0;
        if (!v8)
        {
          *a4 = 0;
          LOBYTE(v14) = 32;
          return v14;
        }
      }
    }
  }

  if (v9)
  {
    if (v5 == 1)
    {
      LOBYTE(v14) = *(v4 + 84);
      *a4 = v14;
      return v14;
    }

    goto LABEL_73;
  }

  *a4 = 0;
  if (v10)
  {
    OUTLINED_FUNCTION_12_45();
    vf_ungetc();
    LOBYTE(v14) = *(a4 - 1);
  }

  else
  {
    LOBYTE(v14) = 10;
  }

  return v14;
}

uint64_t rdtokverr(uint64_t a1, unsigned __int8 a2, uint64_t a3, size_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  lithex(a4, v12, 75);
  readErrorReport(a1, a2, v6, "%s is not a token name in stream %s", v7, v8, v9, v10, v12);
  return var_rderr();
}

uint64_t chk_ftok(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 > 0x2E || ((1 << v1) & 0x680000000000) == 0;
  if (v2 && (v1 - 48) > 9)
  {
    return 0;
  }

  v3 = 0;
  for (i = a1 + 1; ; ++i)
  {
    if (v1 == 46)
    {
      if (v3)
      {
        return 0;
      }

      v1 = *i;
      if (!*i)
      {
        return 0;
      }

      v3 = 1;
    }

    else
    {
      v1 = *i;
    }

    if (v1 != 46)
    {
      break;
    }

LABEL_14:
    ;
  }

  if (v1)
  {
    if ((v1 - 48) >= 0xA)
    {
      return 0;
    }

    goto LABEL_14;
  }

  return 1;
}

uint64_t vrd_delta(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0.0;
  v43 = 0;
  v6 = a3;
  v44 = STMTYP(a3);
  v7 = &vstmtbl[12 * a3];
  v9 = v7[1];
  v8 = v7 + 1;
  BYTE2(v44) = v9[32];
  v10 = *(a1 + 200);
  v11 = *(v10 + 292);
  v12 = *(v10 + 1720) - v11;
  *(v10 + 1720) = v12;
  *(v10 + 1728) -= v11;
  *v12 = 5;
  *(v12 + 8) = *(v10 + 1760);
  *(v10 + 1760) = v12;
  while (1)
  {
    v13 = OUTLINED_FUNCTION_6_52();
    v16 = gettok_0(v13, v14, a2, v15);
    if (v16 == 10)
    {
      return 0;
    }

    v17 = v16;
    if (checkInterrupt(a1))
    {
      return 1;
    }

    if (!v17)
    {
      OUTLINED_FUNCTION_24_28();
      return 1;
    }

    switch(STMTYP(v6))
    {
      case 0xFFFBu:
        v43 = &v45;
        if (!chk_ftok(__s1))
        {
          goto LABEL_23;
        }

        v45 = atof(__s1);
        goto LABEL_25;
      case 0xFFFCu:
        v43 = &v46;
        if (!chk_itok(__s1))
        {
          goto LABEL_23;
        }

        v46 = atoi(__s1);
        goto LABEL_25;
      case 0xFFFDu:
        v43 = &v47;
        if (!chk_itok(__s1))
        {
          goto LABEL_23;
        }

        v47 = atol(__s1);
        goto LABEL_25;
      case 0xFFFEu:
        v23 = 0;
        v43 = &v48;
        v24 = *v8;
        v25 = *(*v8 + 14);
        v26 = v25 & ~(v25 >> 31);
        break;
      case 0xFFFFu:
        v18 = 0;
        v43 = &v49;
        v19 = *v8;
        v20 = *(*v8 + 14);
        do
        {
          v49 = v18;
          v21 = v18;
          if (v18 >= v20)
          {
            break;
          }

          v22 = strcmp(__s1, *(*(v19 + 2) + 8 * v18));
          v18 = v21 + 1;
        }

        while (v22);
        if (v21 != v20)
        {
          goto LABEL_25;
        }

LABEL_23:
        v35 = OUTLINED_FUNCTION_17_37();
        readErrorReport(v35, v36, v37, "%s is not a token name", v38, v39, v40, v41, __s1);
        goto LABEL_24;
      default:
        goto LABEL_25;
    }

    while (1)
    {
      v48 = v23;
      if (v26 == v23)
      {
        break;
      }

      if (!strcmp(__s1, *(*(v24 + 2) + 8 * v23++)))
      {
        LODWORD(v26) = v23 - 1;
        break;
      }
    }

    if (v26 == v25)
    {
      v28 = OUTLINED_FUNCTION_17_37();
      readErrorReport(v28, v29, v30, "%s is not a token name", v31, v32, v33, v34, __s1);
      v43 = 0;
LABEL_24:
      OUTLINED_FUNCTION_17_37();
      if (dlt_rderr())
      {
        return 1;
      }
    }

LABEL_25:
    vpush_var(a1, &v43);
  }
}

uint64_t dlt_rderr()
{
  OUTLINED_FUNCTION_14_43();
  if (OUTLINED_FUNCTION_26_27(v2, v3, "cmdwin") || (v4 = 1, v5 = OUTLINED_FUNCTION_8_50(), OUTLINED_FUNCTION_26_27(v5, v6, v7)))
  {
    v8 = OUTLINED_FUNCTION_8_50();
    v10 = logicalFileInputBuffer(v8, v9);
    v11 = dynaBufMoveRel(v10, 0);
    v12 = dynaBufLength(v10);
    dynaBufMoveAbs(v10, v12 - 1);
    dynaBufDeleteChars(v10, 1uLL);
    dynaBufMoveAbs(v10, v11);
    v13 = dynaBufContents(v10);
    v23 = v13 + v11 - strlen(v1);
    v14 = OUTLINED_FUNCTION_8_50();
    vf_printf(v14, v15, 1, v16, v23);
    v17 = *(v0 + 200);
    v18 = *(v17 + 1744);
    if (v18)
    {
      v19 = *(v17 + 1760);
      *(v17 + 1720) = v19;
      *(v17 + 1728) = *(v17 + 1780) + v19 - *(v18 + 32);
    }

    v20 = OUTLINED_FUNCTION_8_50();
    vf_clrbuf(v20, v21);
    return 0;
  }

  return v4;
}

uint64_t vprt_strm(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, int a6, const char *a7)
{
  v28 = *MEMORY[0x277D85DE8];
  while (1)
  {
    OUTLINED_FUNCTION_23_28();
    if (a3 == a4 || a3 == v14)
    {
      break;
    }

    a3 = *(a3 + 8 * (*(*(a1 + 192) + 9084) + a5)) & 0xFFFFFFFFFFFFFFFCLL;
    if (!a3 || (*a3 & 2) == 0)
    {
      disptok(v13, a3 + 16, a5, a6, __s1);
      if (__s1[0] == 92)
      {
        cleanLiteral(__s1, 0, 0);
      }

      __strcat_chk();
      v16 = OUTLINED_FUNCTION_6_52();
      vf_puts(v16, v17, v18, 0);
      a3 = *(a3 + 8) & 0xFFFFFFFFFFFFFFFCLL;
    }
  }

  v19 = strlen(a7);
  __memset_chk();
  __s1[v19] = 0;
  v20 = OUTLINED_FUNCTION_6_52();
  vf_puts(v20, v21, v22, 0);
  __memset_chk();
  v23 = OUTLINED_FUNCTION_6_52();
  return vf_puts(v23, v24, v25, 1);
}

uint64_t disptok(int a1, int a2, int a3, int a4, char *__s1)
{
  v6 = &vstmtbl[12 * a3];
  v7 = &v6[1][40 * a4];
  switch(*(v7 + 30))
  {
    case 0xFFFB:
      v8 = OUTLINED_FUNCTION_7_51();
      v9(v8);
      v10 = OUTLINED_FUNCTION_3_57();
      v28 = *v11(v10);
      sprintf(__s1, v6, v28);
      break;
    case 0xFFFC:
      v23 = OUTLINED_FUNCTION_7_51();
      v24(v23);
      v25 = OUTLINED_FUNCTION_3_57();
      v20 = *v26(v25);
      goto LABEL_8;
    case 0xFFFD:
      v16 = OUTLINED_FUNCTION_7_51();
      v17(v16);
      v18 = OUTLINED_FUNCTION_3_57();
      v20 = *v19(v18);
LABEL_8:
      sprintf(__s1, v6, v20);
      break;
    case 0xFFFE:
      v12 = *(v7 + 16);
      v21 = OUTLINED_FUNCTION_7_51();
      v15 = *v22(v21);
      goto LABEL_6;
    case 0xFFFF:
      v12 = *(v7 + 16);
      v13 = OUTLINED_FUNCTION_7_51();
      v15 = *v14(v13);
LABEL_6:
      strcpy(__s1, *(v12 + 8 * v15));
      break;
    default:
      break;
  }

  result = strcmp(__s1, "undefined");
  if (!result)
  {
    *__s1 = 2960685;
  }

  return result;
}

uint64_t vsvdelta(uint64_t a1, char a2)
{
  v2 = *(a1 + 200);
  if (!*(v2 + 248))
  {
    return 0;
  }

  *(v2 + 478) = a2;
  if (!*(v2 + 400))
  {
    v4 = malloc_type_malloc(8 * *(a1 + 288), 0x80040B8603338uLL);
    *(*(a1 + 200) + 400) = v4;
    if (!v4)
    {
      return 0;
    }
  }

  v5 = 0;
  v6 = 8 * *(a1 + 288);
  while (v6 != v5)
  {
    *(*(*(a1 + 200) + 400) + v5) = **(a1 + 200);
    v5 += 8;
  }

  v7 = OUTLINED_FUNCTION_5_53();
  vf_puts(v7, v8, v9, v10);
  v11 = 0;
  v12 = vstmtbl;
  while (v11 < *(a1 + 288))
  {
    v72 = *v12;
    v13 = OUTLINED_FUNCTION_2_62(*(a1 + 200));
    __sprintf_chk(v13, v14, v15, "\nset ^_%s = ^left", v72);
    v16 = OUTLINED_FUNCTION_0_71();
    vf_puts(v16, v17, v18, v19);
    v20 = *v12;
    v12 += 12;
    v21 = OUTLINED_FUNCTION_2_62(*(a1 + 200));
    __sprintf_chk(v21, v22, v23, "\ndelta delete %s ^left...^right", v20);
    v24 = OUTLINED_FUNCTION_0_71();
    vf_puts(v24, v25, v26, v27);
    ++v11;
  }

  v28 = OUTLINED_FUNCTION_5_53();
  vf_puts(v28, v29, v30, v31);
  v32 = *(a1 + 288);
  while (1)
  {
    v33 = __OFSUB__(v32--, 1);
    if (v32 < 0 != v33)
    {
      break;
    }

    OUTLINED_FUNCTION_4_53();
    vf_puts(a1, v34, "\nprint . to cmdout", 1);
    v35 = OUTLINED_FUNCTION_6_52();
    reach(v35, v36, v37, 0xFFFFFFFF);
  }

  OUTLINED_FUNCTION_4_53();
  v38 = OUTLINED_FUNCTION_5_53();
  vf_puts(v38, v39, v40, v41);
  v42 = 0;
  v43 = vstmtbl;
  while (v42 < *(a1 + 288))
  {
    v44 = *v43;
    v43 += 12;
    v45 = OUTLINED_FUNCTION_2_62(*(a1 + 200));
    __sprintf_chk(v45, v46, v47, "\ndelta delete %s ^_%s", v44, v44);
    v48 = OUTLINED_FUNCTION_0_71();
    vf_puts(v48, v49, v50, v51);
    ++v42;
  }

  v52 = 1162;
  v53 = 9186;
  while (v52 - 1161 < *(a1 + 16))
  {
    v54 = *(a1 + 192);
    v55 = v54 + v53;
    if (*(v54 + v53 - 2) == -6 && (*(v54 + v53) & 0x20) == 0)
    {
      v56 = **(v54 + 8 * v52);
      v57 = *(a1 + 200);
      if (v56 == *v57 || v56 == v57[1])
      {
        v73 = *(v55 - 18);
        v58 = OUTLINED_FUNCTION_13_45();
        __sprintf_chk(v58, v59, v60, v61, v73);
        v62 = OUTLINED_FUNCTION_0_71();
        vf_puts(v62, v63, v64, v65);
      }
    }

    ++v52;
    v53 += 24;
  }

  OUTLINED_FUNCTION_4_53();
  v66 = 1;
  v67 = OUTLINED_FUNCTION_5_53();
  vf_puts(v67, v68, v69, v70);
  return v66;
}

void reach(uint64_t result, int a2, _BYTE *a3, unsigned int a4)
{
  v5 = *(*(*(result + 200) + 400) + 8 * a2);
  if (v5 != a3)
  {
    for (i = VRSYNC(result, v5, a2); i != a3; i = VRSYNC(result, i, a2))
    {
      v8 = 0;
      v9 = 0;
      for (j = vstmtbl; ; j += 12)
      {
        OUTLINED_FUNCTION_18_36();
        if (v11)
        {
          break;
        }

        if (a2 != v8)
        {
          OUTLINED_FUNCTION_9_50();
          if (*&i[8 * v12])
          {
            v13 = ",";
            if (!v9)
            {
              OUTLINED_FUNCTION_21_31();
              prstuff(result, a2, *(v14 + 8 * a2), i, 0xFFFFFFFFLL);
              OUTLINED_FUNCTION_21_31();
              *(v15 + 8 * a2) = i;
              OUTLINED_FUNCTION_4_53();
              vf_puts(result, v16, "\ndelta project ", 1);
              v13 = &unk_26E7817DA;
            }

            v37 = v13;
            v39 = *j;
            v17 = OUTLINED_FUNCTION_13_45();
            __sprintf_chk(v17, v18, v19, "%s%s", v37, v39);
            OUTLINED_FUNCTION_4_53();
            v9 = 1;
            v20 = OUTLINED_FUNCTION_5_53();
            vf_puts(v20, v21, v22, v23);
          }
        }

        ++v8;
      }

      if (v9)
      {
        v38 = vstmtbl[12 * a2];
        v24 = OUTLINED_FUNCTION_2_62(*(result + 200));
        __sprintf_chk(v24, v25, v26, " (.1) ^_%s", v38);
        v27 = OUTLINED_FUNCTION_0_71();
        vf_puts(v27, v28, v29, v30);
        for (k = 0; k < *(result + 288); ++k)
        {
          if (a2 != k)
          {
            OUTLINED_FUNCTION_9_50();
            if (*&i[8 * v32])
            {
              v33 = OUTLINED_FUNCTION_6_52();
              reach(v33, v34, i);
            }
          }
        }
      }
    }

    OUTLINED_FUNCTION_21_31();
    prstuff(result, a2, *(v35 + 8 * a2), a3, a4);
    OUTLINED_FUNCTION_21_31();
    *(v36 + 8 * a2) = i;
  }
}

uint64_t svgetl()
{
  OUTLINED_FUNCTION_11_46();
  fread(&__ptr, 1uLL, 4uLL, v0);
  return bswap32(__ptr);
}

uint64_t svgeti()
{
  OUTLINED_FUNCTION_11_46();
  fread(__ptr, 1uLL, 2uLL, v0);
  return (__ptr[0] << 8) | __ptr[1];
}

uint64_t svgetc()
{
  v0 = OUTLINED_FUNCTION_1_65();
  fread(v0, v1, v2, v3);
  return 0;
}

uint64_t svgetu()
{
  v0 = OUTLINED_FUNCTION_1_65();
  fread(v0, v1, v2, v3);
  return 0;
}

uint64_t svgets(uint64_t a1)
{
  v2 = *(a1 + 200);
  v3 = 496;
  do
  {
    fread((v2 + v3), 1uLL, 1uLL, *(v2 + 480));
    v2 = *(a1 + 200);
  }

  while (*(v2 + v3++));
  return v2 + 496;
}

size_t svputl(uint64_t a1, unsigned int a2)
{
  __ptr = bswap32(a2);
  OUTLINED_FUNCTION_11_46();
  return fwrite(&__ptr, 1uLL, 4uLL, v2);
}

size_t svputi(uint64_t a1, unsigned int a2)
{
  __ptr = bswap32(a2) >> 16;
  OUTLINED_FUNCTION_11_46();
  return fwrite(&__ptr, 1uLL, 2uLL, v2);
}

size_t svputs(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(*(a1 + 200) + 480);

  return fwrite(__s, 1uLL, v4 + 1, v5);
}

uint64_t svputlptrs(uint64_t result, uint64_t a2)
{
  v2 = *(result + 192);
  v3 = *(v2 + 8112);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v5 = *(v2 + 8104);
      if (v5)
      {
        v7 = result;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        while (v9 < *(v5 + 58))
        {
          v11 = *(v5 + 16);
          if (*(v11 + v8 + 16) == -6 && (*(v11 + v8 + 18) & 0x80000000) == 0 && **(*(v4 + 16) + 8 * v9) == a2)
          {
            if (!v10)
            {
              OUTLINED_FUNCTION_6_52();
              svputc();
              v11 = *(*(*(v7 + 192) + 8104) + 16);
            }

            result = svputs(v7, *(v11 + v8));
            v5 = *(*(v7 + 192) + 8104);
            v10 = 1;
          }

          ++v9;
          v8 += 24;
        }

        if (v10)
        {

          return svputs(v7, &unk_26E7817DA);
        }
      }
    }
  }

  return result;
}

FILE *vsv2delta(uint64_t a1, char *__filename)
{
  v37 = *MEMORY[0x277D85DE8];
  *(*(a1 + 200) + 488) = __filename;
  result = fopen(__filename, "wb");
  *(*(a1 + 200) + 480) = result;
  if (result)
  {
    svputs(a1, &unk_26E7817DA);
    v4 = OUTLINED_FUNCTION_16_38();
    svputi(v4, v5);
    svputi(a1, 1u);
    v6 = OUTLINED_FUNCTION_16_38();
    svputi(v6, v7);
    svputi(a1, *(*(a1 + 192) + 8868));
    for (i = 0; ; ++i)
    {
      OUTLINED_FUNCTION_18_36();
      if (v10)
      {
        break;
      }

      v11 = &vstmtbl[12 * i];
      svputs(a1, *v11);
      svputi(a1, *(v11 + 16));
      svputc();
      v12 = 0;
      for (j = 0; j < *(v11 + 16); ++j)
      {
        v14 = &v11[1][v12];
        svputs(a1, *v14);
        svputi(a1, *(v14 + 15));
        svputi(a1, *(v14 + 14));
        svputi(a1, v14[32]);
        v12 += 40;
      }
    }

    for (k = -2; k < v9; k = v16)
    {
      v16 = k + 1;
      if (k != -1)
      {
        svputc();
        v17 = OUTLINED_FUNCTION_17_37();
        svputi(v17, v18);
        if (k == -2)
        {
          v19 = 0;
        }

        else
        {
          v19 = &vstmtbl[12 * k];
        }

        v20 = **(a1 + 200);
        if (k == -2)
        {
          v21 = -99;
        }

        else
        {
          v21 = -2;
        }

        for (; v20; v20 = (*v27 & 0xFFFFFFFFFFFFFFFCLL))
        {
          if ((*v20 & 2) != 0)
          {
            v28 = *(a1 + 200);
            if (v20 != *v28 && v20 != v28[1])
            {
              svputc();
              v29 = absoluteSyncNum(a1, v20);
              svputi(a1, v29);
              v30 = *(a1 + 192);
              LODWORD(v31) = v21;
              if (!*(v30 + 8868))
              {
                v31 = -2;
                v32 = 1;
                while (*(a1 + 288) != v31)
                {
                  if (v32 && k > v31 && (*&v20[8 * v31 + 8 * *(v30 + 9084)] & 1) != 0)
                  {
                    goto LABEL_40;
                  }

                  ++v31;
                  --v32;
                }

                LODWORD(v31) = -99;
              }

LABEL_40:
              svputc();
              if (v31 == -99)
              {
                NONSEQ(v20);
                svputc();
                ONESTM(v20);
                svputc();
                ALLNSQ(v20);
                svputc();
                svputlptrs(a1, v20);
              }
            }

            v27 = &v20[8 * k + 8 * *(*(a1 + 192) + 9084)];
          }

          else
          {
            svputc();
            v22 = 0;
            v23 = 30;
            while (v22 < *(v19 + 16))
            {
              v24 = v19[1];
              v25 = (*&v19[2][8 * v22])(v20 + 16);
              switch(*&v24[v23])
              {
                case 0xFFFB:
                  __sprintf_chk(__s, 0, 0x32uLL, "%g", *v25);
                  svputs(a1, __s);
                  break;
                case 0xFFFC:
                  v26 = *v25;
                  goto LABEL_27;
                case 0xFFFD:
                  svputl(a1, *v25);
                  break;
                case 0xFFFE:
                  v26 = *v25;
LABEL_27:
                  svputi(a1, v26);
                  break;
                case 0xFFFF:
                  svputu();
                  break;
                default:
                  break;
              }

              ++v22;
              v23 += 40;
            }

            v27 = v20 + 8;
          }
        }

        v9 = *(a1 + 288);
        v16 = k + 1;
      }
    }

    OUTLINED_FUNCTION_22_30();
    svputlptrs(a1, v33);
    OUTLINED_FUNCTION_20_32();
    svputlptrs(a1, v34);
    svputc();
    fclose(*(*(a1 + 200) + 480));
    v35 = OUTLINED_FUNCTION_16_38();
    return vclrctxt(v35);
  }

  return result;
}

void *findsync(uint64_t a1, int a2, char a3)
{
  v4 = (4 * a2);
  v5 = **(a1 + 200);
  for (i = a3; v5; v5 = VRSYNC(a1, v5, i))
  {
    if ((*v5 & 0xFFFFFFFFFFFFFFFCLL) == v4)
    {
      break;
    }
  }

  return v5;
}

FILE *vrsdelta2(uint64_t a1, char *__filename)
{
  *(*(a1 + 200) + 488) = __filename;
  result = fopen(__filename, "rb");
  *(*(a1 + 200) + 480) = result;
  if (!result)
  {
    return result;
  }

  if (*svgets(a1) || svgeti() || svgeti() != 1 || svgeti() || svgeti() != *(*(a1 + 192) + 8868))
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_16_38();
  vdltinit(v4, v5);
  *(*(a1 + 184) + 452) = 1;
  OUTLINED_FUNCTION_22_30();
  v7 = *v6;
  ***(a1 + 200) = (4 * absoluteSyncNum(a1, v6)) | (v7 & 3);
  OUTLINED_FUNCTION_20_32();
  v9 = *v8;
  **(*(a1 + 200) + 8) = (4 * absoluteSyncNum(a1, v8)) | (v9 & 3);
  v10 = *(a1 + 16);
  v11 = 1162;
  for (i = 9184; ; i += 24)
  {
    v13 = v11 - 1161;
    if (v11 - 1161 >= v10)
    {
      break;
    }

    v14 = *(a1 + 192);
    if (*(v14 + i) == -6 && v13 != *(a1 + 290) && v13 != *(a1 + 292))
    {
      **(v14 + 8 * v11) = 0;
    }

    ++v11;
  }

  for (j = 0; ; ++j)
  {
    OUTLINED_FUNCTION_18_36();
    if (v16)
    {
      break;
    }

    v17 = &vstmtbl[12 * j];
    svgets(a1);
    v18 = *(v17 + 16);
    if (v18 != svgeti())
    {
      return 0;
    }

    *(*(*(a1 + 192) + 9072) + j) = svgetc();
    v19 = OUTLINED_FUNCTION_6_52();
    setnonseqIndex(v19, v20);
    if (*(*(*(a1 + 192) + 9072) + j) > 1u)
    {
      return 0;
    }

    v21 = 0;
    v22 = -1;
    while (++v22 < *(v17 + 16))
    {
      v23 = v17[1];
      svgets(a1);
      v24 = *&v23[v21 + 30];
      if (svgeti() != v24)
      {
        return 0;
      }

      v25 = *&v23[v21 + 28];
      if (svgeti() != v25)
      {
        return 0;
      }

      v26 = v23[v21 + 32];
      v27 = svgeti();
      result = 0;
      v21 += 40;
      if (v27 != v26)
      {
        return result;
      }
    }
  }

  if (svgetc() != 125)
  {
    return 0;
  }

  v28 = 0;
  for (k = -2; ; k = v32)
  {
    OUTLINED_FUNCTION_18_36();
    if (v30 == v31)
    {
      fclose(*(*(a1 + 200) + 480));
      if (v28)
      {
        v62 = 0;
        do
        {
          if (v62 >= *(a1 + 288))
          {
            break;
          }

          for (m = **(a1 + 200); m; m = (*v64 & 0xFFFFFFFFFFFFFFFCLL))
          {
            if ((*m & 2) != 0)
            {
              *m &= 3uLL;
              v64 = &m[*(*(a1 + 192) + 9084) + v62];
            }

            else
            {
              v64 = m + 1;
            }
          }

          ++v62;
        }

        while (!checkInterrupt(a1));
        *(*(a1 + 192) + 9080) = 0;
        return 1;
      }

      return 0;
    }

    v32 = k + 1;
    if (k != -1)
    {
      break;
    }

LABEL_86:
    ;
  }

  if (v28)
  {
    return 0;
  }

  v67 = svgeti();
  if (v67 != k)
  {
    return 0;
  }

  v28 = 0;
  v33 = &vstmtbl[12 * k];
  v34 = **(a1 + 200);
  v65 = k + 3;
  v35 = 1;
  while (2)
  {
    if ((v35 & 1) == 0)
    {
      v32 = k + 1;
      goto LABEL_86;
    }

    v35 = 1;
    switch(svgetc())
    {
      case 't':
        OUTLINED_FUNCTION_20_32();
        goto LABEL_57;
      case 'u':
        OUTLINED_FUNCTION_22_30();
LABEL_57:
        v38 = a1;
        goto LABEL_58;
      case 'v':
        v38 = a1;
        v36 = v34;
LABEL_58:
        svgetptrs(v38, v36, 0);
        continue;
      case 'w':
        OUTLINED_FUNCTION_20_32();
        goto LABEL_40;
      case 'x':
        OUTLINED_FUNCTION_22_30();
LABEL_40:
        v39 = a1;
        goto LABEL_61;
      case 'y':
        v35 = 0;
        v28 = 1;
        continue;
      case 'z':
        v39 = a1;
        v37 = v34;
LABEL_61:
        svgetptrs(v39, v37, 1);
        continue;
      case '{':
        v66 = v28;
        v40 = 0;
        v41 = 30;
LABEL_42:
        if (v40 >= *(v33 + 16))
        {
          v35 = 1;
          v28 = v66;
          continue;
        }

        v71 = 0;
        v70 = 0;
        v69 = 0;
        v68 = 0;
        switch(*&v33[1][v41])
        {
          case 0xFFFB:
            v43 = svgets(a1);
            v42 = &v68;
            sscanf(v43, "%lg", &v68);
            break;
          case 0xFFFC:
            v69 = svgeti();
            v42 = &v69;
            break;
          case 0xFFFD:
          case 0xFFFE:
            v70 = svgetl();
            v42 = &v70;
            break;
          case 0xFFFF:
            v71 = svgetu();
            v42 = &v71;
            break;
          default:
            v42 = 0;
            break;
        }

        if (v40)
        {
          (*&v33[3][8 * v40])(16, v42);
          v44 = v34;
LABEL_55:
          ++v40;
          v41 += 40;
          v34 = v44;
          goto LABEL_42;
        }

        v45 = *(v33[1] + 15);
        result = alloc_tok(a1, v33);
        if (result)
        {
          v44 = result;
          OUTLINED_FUNCTION_9_50();
          *(v34 + 8 * v46) = *(v34 + 8 * v46) & 3 | v47;
          OUTLINED_FUNCTION_23_28();
          *(v48 + 8 * k + 24) = *(v48 + 8 * k + 24) & 3 | v49;
          OUTLINED_FUNCTION_23_28();
          *v50 = v34;
          v50[1] = v51;
          if (v45 < 0)
          {
            vinitflds(a1, v67, &v44->_flags, v42);
          }

          else
          {
            memcpy(&v44->_flags, v42, *(v33 + 17));
          }

          goto LABEL_55;
        }

        return result;
      case '|':
        v52 = svgeti();
        v53 = svgetc();
        v54 = (4 * v52);
        if (v53 != -99)
        {
          v56 = v53;
          v57 = *(a1 + 200);
          v55 = *v57;
          while (v55 != v57[1])
          {
            if ((*v55 & 0xFFFFFFFFFFFFFFFCLL) == v54)
            {
              goto LABEL_78;
            }

            v55 = VRSYNC(a1, v55, v56);
            v57 = *(a1 + 200);
          }

          return 0;
        }

        result = alloc_sync(a1);
        if (!result)
        {
          return result;
        }

        v55 = result;
        result->_p = (result->_p & 3 | v54);
        if (svgetc())
        {
          SETNONSEQ(v55);
        }

        else
        {
          CLRNONSEQ(v55);
        }

        if (svgetc())
        {
          SETONESTM(v55);
        }

        else
        {
          CLRONESTM(v55);
        }

        if (svgetc())
        {
          SETALLNSQ(v55);
        }

        else
        {
          CLRALLNSQ(v55);
        }

LABEL_78:
        if (k != -2)
        {
          OUTLINED_FUNCTION_9_50();
          *(v55 + 8 * v58) |= 1uLL;
        }

        OUTLINED_FUNCTION_23_28();
        *(v59 + 8 * v65) = *(v59 + 8 * v65) & 3 | v55;
        v60 = k + *(*(a1 + 192) + 9084);
        *(v55 + 8 * v60) = *(v55 + 8 * v60) & 3 | *(*(a1 + 200) + 8);
        *(v55 + 8 * v65) = *(v55 + 8 * v65) & 3 | v34;
        if (v34 && (*v34 & 2) != 0)
        {
          OUTLINED_FUNCTION_9_50();
          *(v34 + 8 * v61) = *(v34 + 8 * v61) & 3 | v55;
        }

        else
        {
          *(v34 + 8) = v55;
        }

        v35 = 1;
        v34 = v55;
        continue;
      case '}':
        v35 = 0;
        continue;
      default:
        continue;
    }
  }
}

_BYTE *svgetptrs(uint64_t a1, uint64_t a2, int a3)
{
  while (1)
  {
    result = svgets(a1);
    if (!*result)
    {
      break;
    }

    v6 = OUTLINED_FUNCTION_15_42();
    if (a3)
    {
      if (!getgptr(v6, v7, v8))
      {
        v9 = OUTLINED_FUNCTION_15_42();
        getlptr(v9, v10, v11);
      }
    }

    else if (!getlptr(v6, v7, v8))
    {
      v12 = OUTLINED_FUNCTION_15_42();
      getgptr(v12, v13, v14);
    }
  }

  return result;
}

uint64_t prstuff(uint64_t result, int a2, _BYTE *a3, _BYTE *a4, uint64_t a5)
{
  if (a3 != a4)
  {
    v6 = a3;
    v8 = result;
    v9 = 0;
    v10 = 0;
    v11 = a3;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_4:
    if (!v10)
    {
      OUTLINED_FUNCTION_6_52();
      LODWORD(result) = prinsert();
    }

    disptok(result, v11 + 16, a2, 0, (*(v8 + 200) + 408));
    OUTLINED_FUNCTION_4_53();
    if (v14 > 2)
    {
      vf_puts(v8, v12, "'", 1);
      v17 = OUTLINED_FUNCTION_0_71();
      vf_puts(v17, v18, v19, v20);
      OUTLINED_FUNCTION_4_53();
      v16 = v8;
      v15 = "'";
    }

    else
    {
      v15 = (v13 + 408);
      v16 = v8;
    }

    vf_puts(v16, v12, v15, 1);
    OUTLINED_FUNCTION_4_53();
    v10 = 1;
    result = vf_puts(v8, v21, " ", 1);
    v9 = 0;
    v22 = v11 + 8;
    while (1)
    {
      v11 = (*v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (!v11)
      {
        goto LABEL_4;
      }

LABEL_3:
      if ((*v11 & 2) == 0)
      {
        goto LABEL_4;
      }

      if (v9)
      {
        if (v10)
        {
          OUTLINED_FUNCTION_6_52();
          prrange();
        }

        OUTLINED_FUNCTION_6_52();
        result = prinsert();
        v10 = 0;
      }

      v23 = a5;
      v25 = a5 >= 0 && v11 == a4;
      v26 = v6;
      if (v11 != v6 && !v25)
      {
        v27 = 9184;
        for (i = 1162; i - 1161 < *(v8 + 16); ++i)
        {
          v29 = *(v8 + 192);
          v30 = v29 + v27;
          if (*(v29 + v27) == -6 && **(v29 + 8 * i) == v11)
          {
            v31 = *(v8 + 200);
            if (v11 != *v31 && v11 != v31[1])
            {
              v56 = *(v30 - 16);
              v32 = OUTLINED_FUNCTION_13_45();
              __sprintf_chk(v32, v33, v34, "!%s ", v56);
              v35 = OUTLINED_FUNCTION_0_71();
              result = vf_puts(v35, v36, v37, v38);
            }
          }

          v27 += 24;
        }
      }

      if (v9)
      {
        OUTLINED_FUNCTION_6_52();
        result = prrange();
      }

      if (v11 == a4)
      {
        break;
      }

      v22 = &v11[8 * *(*(v8 + 192) + 9084) + 8 * a2];
      v9 = 1;
      a5 = v23;
      v6 = v26;
    }

    if (v10)
    {
      OUTLINED_FUNCTION_6_52();
      result = prrange();
    }

    if ((v23 & 0x80000000) == 0)
    {
      v39 = &vstmtbl[12 * v23];
      v57 = *v39;
      v40 = OUTLINED_FUNCTION_2_62(*(v8 + 200));
      __sprintf_chk(v40, v41, v42, v43, v57);
      v44 = OUTLINED_FUNCTION_0_71();
      result = vf_puts(v44, v45, v46, v47);
      if (!v10)
      {
        v58 = vstmtbl[12 * a2];
        v59 = *v39;
        v48 = OUTLINED_FUNCTION_2_62(*(v8 + 200));
        __sprintf_chk(v48, v49, v50, v51, v58, v59);
        v52 = OUTLINED_FUNCTION_0_71();

        return vf_puts(v52, v53, v54, v55);
      }
    }
  }

  return result;
}

uint64_t prrange()
{
  OUTLINED_FUNCTION_19_34();
  v11 = *(vstmtbl + v0);
  v2 = OUTLINED_FUNCTION_2_62(v1);
  __sprintf_chk(v2, v3, v4, v5, v11, v11);
  v6 = OUTLINED_FUNCTION_0_71();

  return vf_puts(v6, v7, v8, v9);
}

uint64_t prinsert()
{
  OUTLINED_FUNCTION_19_34();
  v11 = *(vstmtbl + v0);
  v2 = OUTLINED_FUNCTION_2_62(v1);
  __sprintf_chk(v2, v3, v4, v5, "%", v11);
  v6 = OUTLINED_FUNCTION_0_71();

  return vf_puts(v6, v7, v8, v9);
}

uint64_t getgptr(uint64_t a1, uint64_t a2, char *__s2)
{
  v6 = *(a1 + 16);
  v7 = 1162;
  for (i = 9184; ; i += 24)
  {
    if (v7 - 1161 >= v6)
    {
      return 0;
    }

    v9 = *(a1 + 192);
    if (*(v9 + i) == -6 && !strcmp(*(v9 + i - 16), __s2))
    {
      break;
    }

    ++v7;
  }

  **(v9 + 8 * v7) = a2;
  return 1;
}

uint64_t getlptr(uint64_t a1, uint64_t a2, char *__s2)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a1 + 192);
  v8 = *(*(v7 + 8112) + 8);
  v9 = *(v7 + 8104);
  v10 = 8 * (*(v9 + 58) & ~(*(v9 + 58) >> 31));
  while (1)
  {
    if (v10 == v6)
    {
      return 0;
    }

    v11 = *(v9 + 16);
    if (*(v11 + v5 + 16) == -6 && !strcmp(*(v11 + v5), __s2))
    {
      break;
    }

    v6 += 8;
    v5 += 24;
  }

  **(*(v8 + 16) + v6) = a2;
  return 1;
}

uint64_t OUTLINED_FUNCTION_10_49(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return rdtokverr(v12, v13, v14, va);
}

const char **OUTLINED_FUNCTION_26_27(uint64_t a1, int a2, char *a3)
{

  return logicalFileFindPhysical(a1, a2, a3, 1, 1);
}

uint64_t vdur_ass(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v23 = 0;
  if (vrange_2pt(a1, a2, a3, a4, 0))
  {
    return 1;
  }

  v11 = vdur(a1, a2, a3, a4);
  v12.n128_u64[0] = 0;
  v13 = 0.0;
  if (v11)
  {
    v13 = a5 / v11;
  }

  v14 = &vstmtbl[12 * a4];
  v15 = -0.5;
  if (v13 >= 0.0)
  {
    v15 = 0.5;
  }

  if ((*(v14[1] + 15) & 0xFFFE) == 0xFFFC)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0.0;
  }

  for (i = *a2; i != *a3; i = (*v21 & 0xFFFFFFFFFFFFFFFCLL))
  {
    if (i && (*i & 2) != 0)
    {
      OUTLINED_FUNCTION_1_66();
      v21 = &i[8 * v22 + 8 * a4];
    }

    else
    {
      v18 = *(v14[1] + 15);
      v19 = (*v14[2])(i + 16, v12);
      if (v18 == -3)
      {
        v24 = (v16 + *v19 * v13);
        v20 = &v24;
      }

      else
      {
        v24 = (v16 + *v19 * v13);
        v23 = v24;
        v20 = &v23;
      }

      vinitflds(a1, a4, i + 16, v20);
      v21 = i + 8;
    }
  }

  return 0;
}

uint64_t vrange_2pt(uint64_t a1, unint64_t *a2, uint64_t a3, unsigned __int8 a4, int a5)
{
  if (a5)
  {
    OUTLINED_FUNCTION_3_58();
    if ((*&v11[8 * v12 + 8 * *(a2 + 8)] & 1) == 0 || a2[2])
    {
      v10 = vnormalize(a1, a2, v11);
      if (v10 == 2)
      {
        *a2 = vsplit_time(a1, *(a2 + 8), *a2, a2[2]);
        OUTLINED_FUNCTION_3_58();
        v23 = *(v19 + 8 * (v22 + v20));
        goto LABEL_22;
      }

      if (v10 == 4)
      {
LABEL_13:
        v13 = *a2;
        v14 = *(a1 + 200);
        if (a5 == 205)
        {
          v15 = v14[1];
          if (v13 != v15)
          {
LABEL_20:
            if (v13 != v15)
            {
              OUTLINED_FUNCTION_3_58();
              v23 = v21[v24 + v20];
LABEL_22:
              v25 = OUTLINED_FUNCTION_20_33(v19, v20, v21, v23 & 0xFFFFFFFFFFFFFFFCLL);
              *a3 = v25;
              if (!v25)
              {
                return 1;
              }

              goto LABEL_26;
            }

            return 1;
          }
        }

        else if (a5 != 206)
        {
          v15 = v14[1];
          goto LABEL_20;
        }

        if (v13 == *v14)
        {
          return 1;
        }

        *a3 = v13;
        v26 = OUTLINED_FUNCTION_20_33(v10, *(a2 + 8), (*(*a2 + 8 * *(a2 + 8) + 24) & 0xFFFFFFFFFFFFFFFCLL), *a2);
        *a2 = v26;
        if (!v26)
        {
          return 1;
        }

LABEL_26:
        v18 = 1;
        *(a2 + 24) = 1;
        *(a3 + 24) = 1;
        goto LABEL_27;
      }

      if (v10 != 3)
      {
        return 1;
      }

      v11 = *a2;
    }

    *a3 = v11;
    if ((a5 - 205) <= 1)
    {
      v10 = lmost(*(a2 + 8), *a2);
      *a2 = v10;
      v11 = *a3;
    }

    if ((a5 & 0xFFFFFFFD) == 0xCD)
    {
      v10 = rmost(a1, *(a2 + 8), v11);
      v11 = v10;
      *a3 = v10;
    }

    if (*a2 != v11)
    {
      goto LABEL_26;
    }

    goto LABEL_13;
  }

  v16 = *(a2 + 1);
  v29[0] = *a2;
  v29[1] = v16;
  v17 = *(a3 + 16);
  v28[0] = *a3;
  v28[1] = v17;
  vcomp_pta(a1, v29, v28);
  if (!*(*(a1 + 192) + 8120))
  {
    return 1;
  }

  vtmark_tv(a1, a2, 0);
  v18 = 1;
  vtmark_tv(a1, a3, 1);
LABEL_27:
  if (vdef_proj(a1, *a2, a4) && vdef_proj(a1, *a3, a4))
  {
    return 0;
  }

  return v18;
}

uint64_t gcql(__n128 a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  while (1)
  {
    OUTLINED_FUNCTION_1_66();
    if (*(v7 + 8 * (v8 + a4)))
    {
      break;
    }

    VLSYNC(v7, a5);
  }

  return v7;
}

uint64_t gcqr(uint64_t a1, __n128 a2, uint64_t a3, int a4, int a5)
{
  while (1)
  {
    OUTLINED_FUNCTION_1_66();
    if (*(v8 + 8 * (v9 + a4)))
    {
      break;
    }

    VRSYNC(a1, v8, a5);
  }

  return v8;
}

unint64_t dur2(uint64_t a1, uint64_t a2, unint64_t *a3, int a4, int a5)
{
  v7 = *a2;
  v8 = *a3;
  if (v7 == *a3)
  {
    return a3[2] - *(a2 + 16);
  }

  if (a5)
  {
    v11 = v7;
  }

  else
  {
    v13 = visleft(a1, v7, *a3);
    if (v13)
    {
      v14 = a2;
    }

    else
    {
      v14 = a3;
    }

    if (v13)
    {
      v15 = a3;
    }

    else
    {
      v15 = a2;
    }

    v8 = *v15;
    v11 = *v14;
    v7 = *a2;
  }

  v16 = *(*(a1 + 192) + 9084) + a4;
  if ((*(v7 + 8 * v16) & 1) == 0)
  {
    if (!ctxt_clstr(a1, v7, a4))
    {
      return -2147483647;
    }

    v16 = *(*(a1 + 192) + 9084) + a4;
  }

  if ((*(*a3 + 8 * v16) & 1) == 0 && !ctxt_clstr(a1, *a3, a4))
  {
    return -2147483647;
  }

  v17 = 0;
  v18 = 0;
  v19 = &vstmtbl[12 * a4];
  while (v11 != v8 && v11)
  {
    if ((*v11 & 2) != 0)
    {
      v21 = &v11[8 * *(*(a1 + 192) + 9084) + 8 * a4];
    }

    else
    {
      v20 = *(v19[1] + 15);
      if (v20 == 65532)
      {
        v17 += *(*v19[2])(v11 + 16);
      }

      else if (v20 == 65533)
      {
        v17 += *(*v19[2])(v11 + 16);
      }

      v21 = v11 + 8;
      v18 = 1;
    }

    v11 = (*v21 & 0xFFFFFFFFFFFFFFFCLL);
  }

  if (v8 == *a2)
  {
    if ((*(a2 + 24) & 2) != 0)
    {
      v17 += *(a2 + 16);
    }

    if ((a3[3] & 2) != 0)
    {
      v17 -= a3[2];
    }

    v17 = -v17;
  }

  else
  {
    if ((*(a2 + 24) & 2) != 0)
    {
      v17 -= *(a2 + 16);
    }

    if ((a3[3] & 2) != 0)
    {
      v17 += a3[2];
    }
  }

  if (v17)
  {
    v22 = 0;
  }

  else
  {
    v22 = v18 == 0;
  }

  if (v22)
  {
    return -2147483647;
  }

  else
  {
    return v17;
  }
}

uint64_t val_expr2(__int16 *a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, _BYTE *a7)
{
  v8 = a3;
  v9 = a2;
  *a7 = 0;
  v11 = *(a2 + 8);
  if (!a5)
  {
    if (BYTE4(vstmtbl[12 * a3 + 11]))
    {
      a5 = vstmtbl[12 * *(a2 + 8) + 11];
    }

    else
    {
      a5 = 0;
    }
  }

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v101 = a5;
  if (a6 == 9)
  {
    v12 = -2147483647;
    switch(vnormalize(a1, a2, a3))
    {
      case 2u:
        v13 = *v9;
        if ((v9[2] & 0x8000000000000000) != 0)
        {
          v15 = *(*(v13 + 8 * v11 + 24) & 0xFFFFFFFFFFFFFFFCLL) & 0xFFFFFFFFFFFFFFFCLL;
        }

        else
        {
          OUTLINED_FUNCTION_1_66();
          v15 = v13;
          v13 = *((*(v13 + 8 * (v14 + v11)) & 0xFFFFFFFFFFFFFFFCLL) + 8) & 0xFFFFFFFFFFFFFFFCLL;
        }

        *&v106 = v15;
        *&v104 = v13;
        OUTLINED_FUNCTION_10_50();
        v17 = gcql(v40, v36, v37, v38, v39);
        goto LABEL_14;
      case 3u:
        v19 = rmost(a1, v11, *v9);
        firstdefd(a1, v11, v19, v8, 0);
        v20 = lmost(v11, *v9);
        v102 = 1;
        firstdefd(a1, v11, v20, v8, 1);
        OUTLINED_FUNCTION_10_50();
        v17 = gcql(v25, v21, v22, v23, v24);
        OUTLINED_FUNCTION_10_50();
        v18 = gcqr(v26, v30, v27, v28, v29);
        goto LABEL_15;
      case 4u:
        OUTLINED_FUNCTION_10_50();
        v17 = gcql(v35, v31, v32, v33, v34);
LABEL_14:
        OUTLINED_FUNCTION_10_50();
        v18 = gcqr(v41, v45, v42, v43, v44);
        v102 = 1;
        goto LABEL_15;
      default:
        return v12;
    }
  }

  v102 = 0;
  v16 = *(a1 + 25);
  v17 = *(*(v16 + 616) + 8 * a3);
  v18 = *(*(v16 + 624) + 8 * a3);
LABEL_15:
  v46 = 0;
  v103 = v8;
  v47 = v17;
  v12 = -2147483647;
  while (v47 != v18)
  {
    if (v47 && (*v47 & 2) != 0)
    {
      v48 = v11;
      v49 = v9;
      v50 = *&v47[8 * *(*(a1 + 24) + 9084) + 8 * v8] & 0xFFFFFFFFFFFFFFFCLL;
      v51 = *&vstmtbl[12 * v8 + 1][40 * a4 + 30];
      if (v51 == 65532)
      {
        OUTLINED_FUNCTION_2_63();
        v54 = v53(v50 + 16);
        if (*v54 == -32767)
        {
          v46 = -2147483647;
        }

        else
        {
          v46 = *v54;
        }
      }

      else if (v51 == 65533)
      {
        OUTLINED_FUNCTION_2_63();
        v46 = *v52(v50 + 16);
      }

      v55 = v46;
      if (v12 != -2147483647)
      {
        v55 = v12;
        if (v12 != v46)
        {
          return -2147483647;
        }
      }

      v47 = (*(v50 + 8) & 0xFFFFFFFFFFFFFFFCLL);
      v12 = v55;
      v9 = v49;
      v11 = v48;
    }
  }

  if (v12 == -2147483647)
  {
    *&v107 = 0;
    BYTE8(v107) = 1;
    *&v105 = 0;
    BYTE8(v105) = 1;
    if (!v17)
    {
LABEL_32:
      v56 = -2147483647;
      goto LABEL_43;
    }

    while ((*v17 & 2) != 0)
    {
      v17 = (*&v17[8 * v8 + 24] & 0xFFFFFFFFFFFFFFFCLL);
      if (!v17)
      {
        goto LABEL_32;
      }
    }

    OUTLINED_FUNCTION_1_66();
    if ((*(v57 + 8 * (v58 + v11)) & 1) == 0)
    {
      v59 = OUTLINED_FUNCTION_11_47();
      v57 = vgetsc(v59, 0, 1, v60, v61);
    }

    *&v106 = v57;
    OUTLINED_FUNCTION_15_43();
    v56 = -2147483647;
    if (v62 == 65532)
    {
      OUTLINED_FUNCTION_2_63();
      v64(v17 + 16);
      v56 = -2147483647;
      OUTLINED_FUNCTION_5_54();
      if (!v88)
      {
        v56 = v65;
      }
    }

    else if (v62 == 65533)
    {
      OUTLINED_FUNCTION_2_63();
      v56 = *v63(v17 + 16);
    }

    while (1)
    {
LABEL_43:
      if (!v18)
      {
        if (!v17)
        {
          return -32767;
        }

        v67 = OUTLINED_FUNCTION_17_38();
        v72 = durcalc(v67, v68, v69, v70, v71, v102);
        if (!v72)
        {
          return v56;
        }

        v12 = -2147483647;
        if (v72 == -2147483647)
        {
          return v56;
        }

        return v12;
      }

      if ((*v18 & 2) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_1_66();
      v18 = (v18[v66 + v8] & 0xFFFFFFFFFFFFFFFCLL);
    }

    OUTLINED_FUNCTION_1_66();
    if ((*(v73 + 8 * (v74 + v11)) & 1) == 0)
    {
      OUTLINED_FUNCTION_11_47();
      OUTLINED_FUNCTION_16_39();
      v73 = vgetsc(v75, v76, v77, v78, v79);
    }

    *&v104 = v73;
    OUTLINED_FUNCTION_15_43();
    if (v80 == 65532)
    {
      OUTLINED_FUNCTION_2_63();
      v83(v18 + 2);
      OUTLINED_FUNCTION_5_54();
      if (v88)
      {
        v81 = -2147483647;
      }

      else
      {
        v81 = v84;
      }
    }

    else if (v80 == 65533)
    {
      OUTLINED_FUNCTION_2_63();
      v81 = *v82(v18 + 2);
    }

    v85 = v81;
    v86 = *(a1 + 25);
    if (v17)
    {
      v87 = durcalc(a1, &v106, &v104, v11, (*(v86 + 632) + 24 * v103), v102);
      v88 = v87 == -2147483647 || v87 == 0;
      if (!v88)
      {
        v91 = v87;
        *a7 = 1;
        v92 = OUTLINED_FUNCTION_17_38();
        v97 = durcalc(v92, v93, v94, v95, v96, v102);
        if (v97 == -2147483647)
        {
          v98 = 0;
        }

        else
        {
          v98 = v97;
        }

        return (v56 + (v85 - v56) * (v98 / v91));
      }

      if (v101 == -1)
      {
        return v56;
      }

      if (v101 != 1)
      {
        if (v101)
        {
          return -2147483647;
        }

        return vcvtd_n_f64_s64(v85 + v56, 1uLL);
      }
    }

    else
    {
      v90 = durcalc(a1, v9, &v104, v11, (*(v86 + 648) + 24 * v103), v102);
      if (v90)
      {
        v12 = -2147483647;
        if (v90 != -2147483647)
        {
          return v12;
        }
      }
    }

    return v85;
  }

  return v12;
}

uint64_t vnormalize(__int16 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = &vstmtbl[12 * v6];
  v41 = *v7[2];
  v8 = *(a2 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v17 = 0;
    v18 = 65532;
    v19 = *(a2 + 16);
    v20 = &v5[v6 + 3];
LABEL_17:
    v12 = v19;
    v21 = v20;
    while (v5 != **(a1 + 25))
    {
      v20 = (*v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (!v20 || (*v20 & 2) == 0)
      {
        v22 = *(v7[1] + 15);
        if (v22 == v18)
        {
          v41(v20 + 16);
          OUTLINED_FUNCTION_5_54();
          if (v24)
          {
            v17 = -2147483647;
          }
        }

        else if (v22 == 65533)
        {
          v23 = (v41)(v20 + 16);
          v18 = 65532;
          v17 = *v23;
        }

        v19 = v17 + v12;
        if (v17 != -2147483647 && v19 < 1)
        {
          goto LABEL_17;
        }

        break;
      }

      v21 = &v20[8 * v6 + 24];
      v5 = v20;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_53();
    v11 = &v5[v10];
    v12 = v8;
LABEL_3:
    v13 = *(*(a1 + 25) + 8);
    while (v5 != v13)
    {
      v14 = (*v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (!v14 || (*v14 & 2) == 0)
      {
        v16 = *(v7[1] + 15);
        if (v16 == 65532)
        {
          v9 = *(v41)(v14 + 16);
          if (v9 == -32767)
          {
            break;
          }
        }

        else
        {
          if (v16 == 65533)
          {
            v9 = *(v41)(v14 + 16);
          }

          if (v9 == -2147483647)
          {
            break;
          }
        }

        if (v12 - v9 < 0)
        {
          break;
        }

        v11 = v14 + 8;
        v12 -= v9;
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_6_53();
      v11 = &v14[8 * v15];
      v5 = v14;
    }
  }

  v26 = *(a2 + 24);
  if ((v26 & 4) != 0)
  {
    if (v12 < 0)
    {
      if ((v5[v6 + 3] & 0xFFFFFFFFFFFFFFFCLL) != 0)
      {
        v32 = *(v5[v6 + 3] & 0xFFFFFFFFFFFFFFFCLL);
        if ((v32 & 2) != 0)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v32 = MEMORY[0];
      }

      v5 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
    }

    else if (!v12)
    {
      v5 = lmost(v6, v5);
      v27 = *(a2 + 24);
LABEL_51:
      v34 = v27 ^ 4;
      goto LABEL_52;
    }

LABEL_50:
    v27 = *(a2 + 24);
    goto LABEL_51;
  }

  if ((v26 & 8) == 0)
  {
    v28 = v8 >> 63;
    v29 = 1;
    goto LABEL_53;
  }

  if (v12 >= 1)
  {
    OUTLINED_FUNCTION_3_58();
    v31 = v5[v30 + v6] & 0xFFFFFFFFFFFFFFFCLL;
    if (!v31 || (*v31 & 2) == 0)
    {
      v5 = (*(v31 + 8) & 0xFFFFFFFFFFFFFFFCLL);
    }

    goto LABEL_46;
  }

  if (v12 < 0)
  {
LABEL_46:
    v33 = v26;
    goto LABEL_47;
  }

  v5 = rmost(a1, v6, v5);
  v33 = *(a2 + 24);
LABEL_47:
  v34 = v33 ^ 8;
LABEL_52:
  v12 = 0;
  v29 = 0;
  LODWORD(v28) = (v26 >> 2) & 1;
  *(a2 + 24) = v34;
LABEL_53:
  *a2 = v5;
  *(a2 + 16) = v12;
  v35 = *(a1 + 25);
  if (v5 == *v35 && v12 < 0)
  {
    return 1;
  }

  if (v5 == v35[1] && v12 > 0)
  {
    return 1;
  }

  if (v12)
  {
    return 2;
  }

  if (!v29)
  {
    return 4;
  }

  if (v28)
  {
    v38 = *(*(a1 + 24) + 9084) + v6;
  }

  else
  {
    v38 = v6 + 3;
  }

  v39 = (v5[v38] & 0xFFFFFFFFFFFFFFFCLL);
  v40 = *(v7[1] + 15);
  if (v40 == 65532)
  {
    if (v39 && ((*v39 & 2) != 0 || !*(v41)(v39 + 16)))
    {
      return 3;
    }

    return 4;
  }

  if (v40 != 65533 || !v39 || (*v39 & 2) == 0 && *(v41)(v39 + 16))
  {
    return 4;
  }

  return 3;
}

_BYTE *firstdefd(uint64_t a1, int a2, _BYTE *a3, int a4, int a5)
{
  v7 = a3;
  v10 = 0;
  v11 = &vstmtbl[12 * a2];
  v21 = *v11[2];
  v12 = *(v11 + 86);
  v13 = 8 * (a5 != 0);
  if (a3)
  {
    goto LABEL_2;
  }

  while (1)
  {
LABEL_3:
    v14 = *(v11[1] + 15);
    if (v14 == 65532)
    {
      v10 = 0;
      if (v7 && v12)
      {
        v15 = *v21(v7 + 16) == 0;
LABEL_15:
        v10 = v15;
      }
    }

    else if (v14 == 65533)
    {
      v10 = 0;
      if (v7)
      {
        if (v12)
        {
          v15 = *v21(v7 + 16) == 0;
          goto LABEL_15;
        }
      }
    }

    if (!v10)
    {
      return a3;
    }

    v18 = &v7[v13];
    v10 = 1;
    while (1)
    {
      v7 = (*v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (!v7)
      {
        break;
      }

LABEL_2:
      if ((*v7 & 2) == 0)
      {
        goto LABEL_3;
      }

      v16 = *(*(a1 + 192) + 9084);
      if (*&v7[8 * v16 + 8 * a4])
      {
        return v7;
      }

      v17 = v16 + a2;
      if (!a5)
      {
        v17 = a2 + 3;
      }

      v18 = &v7[8 * v17];
    }
  }
}

_BYTE *rmost(void *a1, int a2, _BYTE *a3)
{
  v3 = a3;
  v4 = 0;
  v5 = &vstmtbl[12 * a2];
  v6 = *v5[2];
  v7 = *(v5 + 86);
  v8 = &a3[8 * *(a1[24] + 9084) + 8 * a2];
  while (1)
  {
    while (1)
    {
      v9 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
      if (!v9 || (*v9 & 2) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_6_53();
      v8 = &v9[8 * v12];
      v3 = v9;
    }

    v10 = *(v5[1] + 15);
    if (v10 == 65532)
    {
      v4 = 0;
      if (v9 && v7)
      {
        v11 = *v6(v9 + 16) == 0;
LABEL_12:
        v4 = v11;
      }
    }

    else if (v10 == 65533)
    {
      v4 = 0;
      if (v9)
      {
        if (v7)
        {
          v11 = *v6(v9 + 16) == 0;
          goto LABEL_12;
        }
      }
    }

    if (!v4)
    {
      return v3;
    }

    v8 = v9 + 8;
    v4 = 1;
  }
}

void *lmost(int a1, void *a2)
{
  v3 = 0;
  v4 = &vstmtbl[12 * a1];
  v5 = *v4[2];
  v6 = *(v4 + 86);
  v7 = a1 + 3;
LABEL_2:
  v8 = &a2[v7];
  do
  {
    v8 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
    if (v8 && (*v8 & 2) != 0)
    {
      a2 = v8;
      goto LABEL_2;
    }

    v9 = *(v4[1] + 15);
    if (v9 == 65532)
    {
      v3 = 0;
      if (v8 && v6)
      {
        v10 = *v5(v8 + 2) == 0;
LABEL_13:
        v3 = v10;
      }
    }

    else if (v9 == 65533)
    {
      v3 = 0;
      if (v8)
      {
        if (v6)
        {
          v10 = *v5(v8 + 2) == 0;
          goto LABEL_13;
        }
      }
    }

    v10 = v3 == 0;
    v3 = 1;
  }

  while (!v10);
  return a2;
}

unint64_t durcalc(uint64_t a1, unint64_t *a2, unint64_t *a3, int a4, unint64_t *a5, int a6)
{
  if (a6)
  {

    return dur2(a1, a2, a3, a4, 0);
  }

  else
  {
    v17[2] = 0;
    v16[2] = 0;
    v16[3] = 1;
    v17[3] = 1;
    v12 = a5[1];
    v17[0] = *a5;
    v17[1] = 0;
    v16[0] = v12;
    v16[1] = 0;
    v13 = a5[2];
    v14 = dur2(a1, v16, a3, a4, 1) + v13;
    result = v14 - dur2(a1, v17, a2, a4, 1);
    a5[2] = result - a3[2] + a2[2];
    v15 = *a3;
    *a5 = *a2;
    a5[1] = v15;
  }

  return result;
}

uint64_t vgen(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, char a5)
{
  v139 = *MEMORY[0x277D85DE8];
  v138[0] = 0;
  if ((~*(a4 + 24) & 7) != 0)
  {
    return 0;
  }

  v8 = a2;
  v10 = *(a4 + 8);
  *(a2 + 8) = *(a4 + 8);
  *(a2 + 24) = 2;
  *(a2 + 16) = 0;
  result = dynaBufNew(40);
  v137 = result;
  if (!result)
  {
    return result;
  }

  v12 = *(a1 + 200);
  if (!*(v12 + 616))
  {
    *(*(a1 + 200) + 616) = malloc_type_malloc(8 * *(a1 + 288), 0x80040B8603338uLL);
    *(*(a1 + 200) + 624) = malloc_type_malloc(8 * *(a1 + 288), 0x80040B8603338uLL);
    v43 = OUTLINED_FUNCTION_7_52();
    *(*(a1 + 200) + 640) = malloc_type_malloc(v43, 0x1080040CC6EE3FDuLL);
    v44 = OUTLINED_FUNCTION_7_52();
    *(*(a1 + 200) + 632) = malloc_type_malloc(v44, 0x1080040CC6EE3FDuLL);
    v45 = OUTLINED_FUNCTION_7_52();
    v46 = malloc_type_malloc(v45, 0x1080040CC6EE3FDuLL);
    v12 = *(a1 + 200);
    *(v12 + 648) = v46;
    v47 = *(v12 + 616);
    if (!v47 || !*(v12 + 624) || !*(v12 + 640) || !v46)
    {
      free(v47);
      free(*(*(a1 + 200) + 624));
      free(*(*(a1 + 200) + 640));
      free(*(*(a1 + 200) + 632));
      v48 = *(*(a1 + 200) + 648);
LABEL_36:
      free(v48);
      return 0;
    }
  }

  v13 = 0;
  v14 = *(a1 + 288);
  while (v14 > v13)
  {
    *(*(v12 + 624) + 8 * v13) = 0;
    *(*(*(a1 + 200) + 616) + 8 * v13) = 0;
    v12 = *(a1 + 200);
    v15 = vld1q_dup_f64(v12);
    v16 = *(v12 + 648) + 24 * v13;
    *v16 = v15;
    v17 = *(v12 + 632) + 24 * v13;
    *v17 = v15;
    v18 = *(v12 + 640) + 24 * v13;
    *v18 = v15;
    *(v16 + 16) = 0;
    *(v17 + 16) = 0;
    *(v18 + 16) = 0;
    ++v13;
  }

  v134 = a3;
  v130 = a5;
  v19 = dynaBufContents(*(a4 + 16));
  v20 = 0;
  v21 = 0;
  v23 = (v19 + 1);
  v22 = *v19;
  v136 = v8;
  v132 = v22;
  while (v22 > v21)
  {
    v24 = *v23;
    OUTLINED_FUNCTION_16_39();
    v29 = vgetsc(v25, v26, v27, v28, v24);
    if (v29)
    {
      do
      {
        v30 = v29;
        v29 = (*&v29[8 * v24 + 24] & 0xFFFFFFFFFFFFFFFCLL);
      }

      while (v29 && (*v29 & 2) != 0);
    }

    else
    {
      v30 = 0;
    }

    if (vgetsc(a1, 0, 1, *v134, v24))
    {
      OUTLINED_FUNCTION_13_46();
      v34 = v33 + v24;
      do
      {
        v35 = v32;
        v32 = (*&v32[8 * v34] & 0xFFFFFFFFFFFFFFFCLL);
      }

      while (v32 && (*v32 & 2) != 0);
      if (v30)
      {
LABEL_21:
        while (1)
        {
          OUTLINED_FUNCTION_13_46();
          if ((*(v30 + 8 * (v36 + v10)) & 1) == 0)
          {
            goto LABEL_85;
          }

          v37 = VRSYNC(a1, v30, v24);
          if (v37)
          {
            v30 = v37;
            if (v37 != v35)
            {
              continue;
            }
          }

          break;
        }
      }
    }

    else
    {
      v35 = 0;
      if (v30)
      {
        goto LABEL_21;
      }
    }

    v8 = v136;
    *(*(*(a1 + 200) + 616) + 8 * v24) = gcql(v31, a1, *v136, v24, v10);
    v39 = gcqr(a1, v38, *v136, v24, v10);
    v40 = 0;
    *(*(*(a1 + 200) + 624) + 8 * v24) = v39;
    v41 = v23[1];
    while (v40 < v41)
    {
      if (*(a4 + 9) == v20)
      {
        v42 = v20 + 1;
      }

      else
      {
        v42 = v20;
      }

      v20 = v42 + 1;
      ++v40;
    }

    v23 += v41 + 2;
    ++v21;
    v22 = v132;
  }

  v133 = malloc_type_malloc(8 * v20 * *(a1 + 288), 0x10040436913F5uLL);
  if (!v133)
  {
LABEL_85:
    dynaBufDelete(v137);
    return 0;
  }

  v128 = 0;
  v129 = 0;
  v49 = 0;
  v50 = 1;
  HIDWORD(v121) = v130;
  v135 = vdur(a1, v8, v134, *(a4 + 8));
  for (i = v135; i >= 1; i = v131 - v116)
  {
    v53 = *v136;
    if (v129 == 3 && (v49 & 1) != 0)
    {
      v53 = lmost(v10, *v136);
    }

    v54 = vnormalize(a1, v136, v51);
    v127 = v53;
    if (v54 - 3 >= 2)
    {
      if (v54 != 2)
      {
LABEL_88:
        dynaBufDelete(v137);
        v48 = v133;
        goto LABEL_36;
      }

      v55 = v136[2] <= v128;
    }

    else
    {
      v55 = 1;
    }

    LODWORD(v124) = v55;
    v56 = v54;
    v57 = *a4;
    if (i < *a4)
    {
      v57 = i;
    }

    v128 = v57;
    v137 = dynaBufReset(v137);
    v58 = dynaBufContents(*(a4 + 16));
    v59 = 0;
    v60 = 0;
    v62 = (v58 + 1);
    v61 = *v58;
    v129 = v56;
    v131 = i;
    HIDWORD(v123) = v50 | (v56 != 2);
    v63 = v136;
    HIDWORD(v124) = v61;
    do
    {
      if (v61 <= v60)
      {
        break;
      }

      HIDWORD(v126) = v60;
      v64 = *v62;
      v65 = *(a1 + 200);
      v66 = *(*(v65 + 616) + 8 * v64);
      v67 = v62[1];
      v125 = *(*(v65 + 624) + 8 * v64);
      v68 = *v63;
      if (v129 == 2)
      {
        goto LABEL_92;
      }

      if (v129 != 4)
      {
        if (v129 != 3)
        {
          goto LABEL_88;
        }

        firstdefd(a1, v10, *v63, *v62, 0);
        v122 = v66;
        v69 = lmost(v10, v68);
        v68 = firstdefd(a1, v10, v69, v64, 1);
      }

      OUTLINED_FUNCTION_13_46();
      if (v68[v71 + v64])
      {
        v73 = 0;
        *(*(*(a1 + 200) + 624) + 8 * v64) = v70;
        *(*(*(a1 + 200) + 616) + 8 * v64) = v68;
      }

      else
      {
LABEL_92:
        if (v124)
        {
          while (1)
          {
            OUTLINED_FUNCTION_13_46();
            if (v68[v72 + v64])
            {
              break;
            }

            if (v68 == v127)
            {
              goto LABEL_61;
            }

            v68 = VLSYNC(v68, v10);
          }

          *(*(*(a1 + 200) + 616) + 8 * v64) = v68;
          *(*(*(a1 + 200) + 624) + 8 * v64) = VRSYNC(a1, v68, v64);
        }

LABEL_61:
        v73 = (v123 & 0x100000000) == 0 && (v74 = *(a1 + 200), v66 == *(*(v74 + 616) + 8 * v64)) && v125 == *(*(v74 + 624) + 8 * v64);
      }

      v75 = 0;
      v62 += 2;
      do
      {
        if (v75 >= v67)
        {
          break;
        }

        if (*(a4 + 9) == v59)
        {
          v76 = OUTLINED_FUNCTION_8_51();
          v79 = __sprintf_chk(v76, v77, v78, "%d ", v128);
          OUTLINED_FUNCTION_12_46(v79, v80, v81, v82, v83, v84, v85, v86, v117, v121, v122, v123, v124, v125, v126, v127, v128, v129, v131, v133, v135, v136, v137);
          ++v59;
        }

        if (i == v135)
        {
          v87 = vstmtbl[12 * *(a4 + 8) + 11];
        }

        else
        {
          v87 = 0;
        }

        v89 = *v62++;
        v88 = v89;
        if (!v73 || (v90 = *(v133 + v59), v90 == 0x8000000000000000))
        {
          LODWORD(v90) = val_expr2(a1, v136, v64, v88, v87, v129, v138);
          v91 = 0x8000000000000000;
          if (!v138[0])
          {
            v91 = v90;
          }

          *(v133 + v59) = v91;
        }

        if (v90 == -2147483647)
        {
          goto LABEL_88;
        }

        v118 = v90;
        v92 = OUTLINED_FUNCTION_8_51();
        v95 = __sprintf_chk(v92, v93, v94, "%d ", v118);
        OUTLINED_FUNCTION_12_46(v95, v96, v97, v98, v99, v100, v101, v102, v119, v121, v122, v123, v124, v125, v126, v127, v128, v129, v131, v133, v135, v136, v137);
        ++v59;
        ++v75;
        i = v131;
      }

      while (!checkInterrupt(a1));
      v103 = checkInterrupt(a1);
      v60 = HIDWORD(v126) + 1;
      v63 = v136;
      v61 = HIDWORD(v124);
    }

    while (!v103);
    if (checkInterrupt(a1))
    {
      break;
    }

    if (*(a4 + 9) == v59)
    {
      v104 = OUTLINED_FUNCTION_8_51();
      v107 = __sprintf_chk(v104, v105, v106, "%d ", v128);
      OUTLINED_FUNCTION_12_46(v107, v108, v109, v110, v111, v112, v113, v114, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v131, v133, v135, v136, v137);
    }

    dynaBufAddChar(v137, 10, 0);
    dynaBufAddChar(v137, 0, 0);
    v115 = dynaBufContents(v137);
    v49 = 1;
    vf_puts(a1, SHIDWORD(v121), v115, 1);
    v50 = 0;
    *(v136 + 24) = 2;
    v116 = *a4;
    v136[2] += *a4;
  }

  dynaBufDelete(v137);
  free(v133);
  return 1;
}

uint64_t visleft(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  result = 0;
  if (a2)
  {
    v6 = a3;
    if (a3)
    {
      if (!*(*(a1 + 192) + 8868) || NONSEQ(a2) || NONSEQ(v6))
      {
        v7 = 0;
        v8 = *(a1 + 288);
        while (1)
        {
          if (--v8 < 0)
          {
            OUTLINED_FUNCTION_11_47();
            OUTLINED_FUNCTION_16_39();
            result = vgetsc(v10, v11, v12, v6, v13);
            goto LABEL_15;
          }

          v9 = *(*(a1 + 192) + 9084) + (v8 & 0x7F);
          if (*(a2 + 8 * v9))
          {
            v7 = v8;
            if (*(v6 + 8 * v9))
            {
              break;
            }
          }
        }

        v7 = v8;
        result = VLSYNC(v6, v8);
        if (!result)
        {
          return result;
        }

LABEL_15:
        v14 = v7 + 3;
        while (1)
        {
          if (result == a2)
          {
            return 1;
          }

          v15 = (*(result + 8 * v14) & 0xFFFFFFFFFFFFFFFCLL);
          if (!v15)
          {
            break;
          }

          if ((*v15 & 2) != 0)
          {
            result = *(result + 8 * v14) & 0xFFFFFFFFFFFFFFFCLL;
          }

          else
          {
            result = *v15 & 0xFFFFFFFFFFFFFFFCLL;
          }
        }

        return 0;
      }

      else
      {
        v16 = *(a1 + 200);
        if (*(v16 + 656) == spine_changed)
        {
          v17 = 0;
          v18 = v16 + 1064;
          for (i = (v16 + 664); ; ++i)
          {
            if (v17 == 50)
            {
              v23 = *(v16 + 660);
              if (v23 <= 48)
              {
                v24 = v23 + 1;
              }

              else
              {
                v24 = 0;
              }

              *(v16 + 660) = v24;
              v25 = v24;
              while (*(v16 + 1516 + 4 * v25) >= 13)
              {
                if (v25 <= 48)
                {
                  ++v25;
                }

                else
                {
                  v25 = 0;
                }

                if (v25 == v24)
                {
                  v21 = v24;
                  v25 = v24;
LABEL_45:
                  *(v16 + 660) = v25;
                  *(v16 + 664 + 8 * v21) = a2;
                  *(*(a1 + 200) + 8 * v21 + 1064) = v6;
                  v22 = *(a1 + 200);
                  v22[v21 + 379] = 1;
                  goto LABEL_46;
                }
              }

              v21 = v25;
              goto LABEL_45;
            }

            if (*i == a2 && i[50] == v6)
            {
              break;
            }

            ++v17;
          }

          ++*(v18 + 4 * v17 + 452);
          return *(v18 + v17 + 400);
        }

        else
        {
          for (j = 0; j != 50; ++j)
          {
            *(v16 + 8 * j + 664) = 0;
            *(*(a1 + 200) + 8 * j + 1064) = 0;
            v16 = *(a1 + 200);
            *(v16 + 4 * j + 1516) = 0;
          }

          v21 = 0;
          *(v16 + 664) = a2;
          *(*(a1 + 200) + 1064) = v6;
          v22 = *(a1 + 200);
          v22[379] = 1;
          v22[165] = 0;
          v22[164] = spine_changed;
LABEL_46:
          while (1)
          {
            v6 = *(v6 + 8) & 0xFFFFFFFFFFFFFFFCLL;
            if (!v6)
            {
              break;
            }

            if (v6 == a2)
            {
              result = 1;
              *(v22 + v21 + 1464) = 1;
              return result;
            }
          }

          result = 0;
          *(v22 + v21 + 1464) = 0;
        }
      }
    }
  }

  return result;
}

uint64_t vsync_tv(__int16 *a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    if (vnormalize(a1, a2, a3) == 2)
    {
      *a2 = OUTLINED_FUNCTION_19_35();
    }

    OUTLINED_FUNCTION_0_72();
  }

  return 1;
}

uint64_t vtmark_tv(__int16 *a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    v6 = OUTLINED_FUNCTION_4_54(a1, a2, a3);
    if (v6 == 2)
    {
      v7 = OUTLINED_FUNCTION_19_35();
    }

    else
    {
      if (v6 != 3)
      {
LABEL_9:
        OUTLINED_FUNCTION_0_72();
        return 1;
      }

      if (v5)
      {
        v7 = lmost(*(v3 + 8), *v3);
      }

      else
      {
        v7 = rmost(v4, *(v3 + 8), *v3);
      }
    }

    *v3 = v7;
    goto LABEL_9;
  }

  return 1;
}

uint64_t vtimept_tv(__int16 *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 24))
  {
    return 1;
  }

  v6 = OUTLINED_FUNCTION_4_54(a1, a2, a3);
  if (v6 != 2)
  {
    if (v6 != 4)
    {
      if (v6 != 3)
      {
        return 0;
      }

      if (v5)
      {
        v7 = lmost(*(v3 + 8), *v3);
      }

      else
      {
        v7 = rmost(v4, *(v3 + 8), *v3);
      }

      *v3 = v7;
    }

    OUTLINED_FUNCTION_0_72();
  }

  return 1;
}

BOOL vctxt_tv(__int16 *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 24))
  {
    return 1;
  }

  v3 = vnormalize(a1, a2, a3);
  if ((v3 - 3) < 2)
  {
    OUTLINED_FUNCTION_0_72();
    return 1;
  }

  return v3 == 2;
}

uint64_t vmove_tv(__int16 *a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    vnormalize(a1, a2, a3);
    OUTLINED_FUNCTION_0_72();
  }

  return 1;
}

void vtsttmark_tv(__int16 *a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    v6 = OUTLINED_FUNCTION_4_54(a1, a2, a3);
    if ((v6 - 1) >= 2)
    {
      if (v6 == 3)
      {
        if (v5)
        {
          v7 = lmost(*(v3 + 8), *v3);
        }

        else
        {
          v7 = rmost(v4, *(v3 + 8), *v3);
        }

        *v3 = v7;
      }

      OUTLINED_FUNCTION_0_72();
    }
  }
}

void vtstctx_tv(__int16 *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 24))
  {
    return;
  }

  v5 = OUTLINED_FUNCTION_4_54(a1, a2, a3);
  if (v5 == 2)
  {
    v6 = v3[2];
    if (v4 == 1 && v6 >= 1)
    {
      OUTLINED_FUNCTION_14_44();
      if (v13)
      {
        v17 = *v14(v15 + 16);
        v18 = -2147483647;
      }

      else
      {
        if (v16 != 65532)
        {
          v17 = 0;
LABEL_25:
          v3[2] -= v17;
LABEL_26:
          v19 = *(*v3 + 8);
LABEL_33:
          *v3 = v19 & 0xFFFFFFFFFFFFFFFCLL;
          return;
        }

        v17 = *v14(v15 + 16);
        v18 = -32767;
      }

      if (v17 == v18)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    if (v4 || (v6 & 0x8000000000000000) == 0)
    {
      return;
    }

    OUTLINED_FUNCTION_14_44();
    if (v13)
    {
      v11 = *v8(v9 + 16);
      v12 = -2147483647;
    }

    else
    {
      if (v10 != 65532)
      {
        v11 = 0;
LABEL_31:
        v3[2] += v11;
LABEL_32:
        v19 = **v3;
        goto LABEL_33;
      }

      v11 = *v8(v9 + 16);
      v12 = -32767;
    }

    if (v11 == v12)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (v5 == 4 || v5 == 3)
  {
    OUTLINED_FUNCTION_0_72();
  }
}

uint64_t vcomp_pta(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (*(a2 + 24) & 1) != 0 && (*(a3 + 24))
  {
    v15 = *a2 == *a3;
LABEL_23:
    v14 = !v15;
    goto LABEL_26;
  }

  if ((*(a2 + 24) & 2) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  if ((*(a3 + 24) & 2) != 0)
  {
    vnormalize(a1, a2, a3);
    vnormalize(a1, v3, v16);
    if (*(a2 + 8) != *(v3 + 8) || *a2 != *v3 || *(a2 + 16) != v3[2])
    {
LABEL_20:
      v10 = a1 + 192;
LABEL_21:
      v14 = 1;
      goto LABEL_27;
    }

    v14 = 0;
LABEL_26:
    v10 = a1 + 192;
    goto LABEL_27;
  }

  v6 = a3;
  v3 = a2;
LABEL_7:
  v7 = *v6;
  switch(vnormalize(a1, v3, a3))
  {
    case 3u:
      v8 = lmost(*(v3 + 8), *v3);
      v9 = rmost(a1, *(v3 + 8), *v3);
      v10 = a1 + 192;
      v11 = *(v3 + 8);
      v12 = *(v7 + 8 * (*(*(a1 + 192) + 9084) + v11));
      v13 = v7;
      if ((v12 & 1) == 0)
      {
        v7 = *(v7 + 8 * v11 + 24) & 0xFFFFFFFFFFFFFFFCLL;
        v13 = v12 & 0xFFFFFFFFFFFFFFFCLL;
      }

      if (v7 != v8 && !visleft(a1, v8, v7) || v13 != v9 && !visleft(a1, v13, v9))
      {
        goto LABEL_21;
      }

      v14 = 0;
      break;
    case 4u:
      v15 = *v3 == v7;
      goto LABEL_23;
    default:
      goto LABEL_20;
  }

LABEL_27:
  *(*v10 + 8120) = v14;
  return 0;
}

uint64_t vrange_l()
{
  OUTLINED_FUNCTION_9_51();
  vtmark_tv(v5, v6, 1);
  result = vdef_proj(v1, *v2, v4);
  if (result)
  {
    if (*v2 == **(v1 + 200))
    {
      return 0;
    }

    else
    {
      result = OUTLINED_FUNCTION_20_33(result, v4, (*(*v2 + 8 * v4 + 24) & 0xFFFFFFFFFFFFFFFCLL), *v2);
      *v0 = result;
      if (result)
      {
        if (v3)
        {
          dupsync(v1, result, *v2, 1);
        }

        result = 1;
        *(v0 + 24) = 1;
      }
    }
  }

  return result;
}

void dupsync(uint64_t result, uint64_t a2, _BYTE *a3, int a4)
{
  v7 = 0;
  if (a4)
  {
    while (v7 < *(result + 288))
    {
      OUTLINED_FUNCTION_18_37();
      if (v8)
      {
        v9 = OUTLINED_FUNCTION_11_47();
        if (!vproject(v9, a2, v10, a3, v11))
        {
          break;
        }
      }

      ++v7;
    }
  }

  else
  {
    while (v7 < *(result + 288))
    {
      OUTLINED_FUNCTION_18_37();
      if (v12)
      {
        v13 = OUTLINED_FUNCTION_11_47();
        if (!vproject(v13, a2, a3, v14, v15))
        {
          break;
        }
      }

      LODWORD(v7) = v7 + 1;
    }
  }
}

uint64_t vrange_r()
{
  OUTLINED_FUNCTION_9_51();
  vtmark_tv(v5, v6, 0);
  result = vdef_proj(v1, *v2, v4);
  if (result)
  {
    if (*v2 == *(*(v1 + 200) + 8))
    {
      return 0;
    }

    else
    {
      OUTLINED_FUNCTION_3_58();
      result = OUTLINED_FUNCTION_20_33(v9, v4, v10, v10[v8 + v4] & 0xFFFFFFFFFFFFFFFCLL);
      *v0 = result;
      if (result)
      {
        if (v3)
        {
          dupsync(v1, result, *v2, 0);
        }

        result = 1;
        *(v0 + 24) = 1;
      }
    }
  }

  return result;
}

uint64_t vprt_range(__int16 *a1, uint64_t a2, uint64_t a3)
{
  result = vtimept_tv(a1, a2, 0);
  if (result)
  {
    result = vtimept_tv(a1, a3, 1);
    if (result)
    {
      if ((*(a2 + 24) & 2) != 0 && *(a2 + 16) >= 1)
      {
        *a2 = VRSYNC(a1, *a2, *(a2 + 8));
      }

      if ((*(a3 + 24) & 2) != 0 && (*(a3 + 16) & 0x8000000000000000) != 0)
      {
        *a3 = VLSYNC(*a3, *(a3 + 8));
      }

      return 1;
    }
  }

  return result;
}

uint64_t ctxt_clstr(uint64_t a1, uint64_t a2, int a3)
{
  v6 = &vstmtbl[12 * a3];
  v7 = *v6[2];
  OUTLINED_FUNCTION_16_39();
  v12 = vgetsc(v8, v9, v10, a2, v11);
  v13 = vgetsc(a1, 0, 1, a2, a3);
  while (1)
  {
    if (v12 == v13)
    {
      return 1;
    }

    if (v12 && (*v12 & 2) != 0)
    {
      OUTLINED_FUNCTION_3_58();
      v16 = &v12[8 * v15 + 8 * a3];
      goto LABEL_12;
    }

    v14 = *(v6[1] + 15);
    if (v14 == 65532)
    {
      if (*v7(v12 + 16))
      {
        return 0;
      }

      goto LABEL_11;
    }

    if (v14 == 65533 && *v7(v12 + 16))
    {
      return 0;
    }

LABEL_11:
    v16 = v12 + 8;
LABEL_12:
    v12 = (*v16 & 0xFFFFFFFFFFFFFFFCLL);
  }
}

uint64_t OUTLINED_FUNCTION_4_54(__int16 *a1, uint64_t a2, uint64_t a3)
{

  return vnormalize(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_12_46(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t *a23)
{

  return dynaBufAddString(a23, (v23 - 116), 0);
}

uint64_t OUTLINED_FUNCTION_19_35()
{
  v3 = *(v0 + 16);
  v4 = *(v0 + 8);
  v5 = *v0;

  return vsplit_time(v1, v4, v5, v3);
}

uint64_t OUTLINED_FUNCTION_20_33(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{

  return vins_sync(v4, a2, a3, a4);
}

BOOL initializeDeltaHeap(uint64_t a1, unsigned int a2)
{
  v4 = allocDynaSegment(a1, a2);
  v5 = 0;
  v6 = *(a1 + 200);
  *(v6 + 1736) = v4;
  *(v6 + 1752) = v4;
  *(v6 + 1776) = a2;
  v7 = v6 + 1800;
  while (v5 != 400)
  {
    *(v7 + v5) = 1;
    v5 += 40;
  }

  return v4 != 0;
}

_DWORD *allocDynaSegment(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 200);
  v3 = *(v2 + 2192);
  if (v3)
  {
    v3[4] = 0;
    v4 = *(v3 + 4);
    *(v2 + 2192) = *(v3 + 5);
    --*(v2 + 2184);
    v5 = v4 & 3;
    if ((v4 & 7) == 0)
    {
      v5 = 4;
    }

    *(v3 + 5) = 0;
    *v3 = 0;
    *(v3 + 1) = v5;
  }

  else
  {
    v8 = malloc_type_malloc(0x30uLL, 0x10A0040B1233896uLL);
    v3 = v8;
    if (v8)
    {
      v8[5] = 0;
      *v8 = 0;
      *(v8 + 4) = 0;
      v9 = malloc_type_malloc(a2, 0x100004077774924uLL);
      *(v3 + 3) = v9;
      if (v9)
      {
        v10 = v9 + a2 - 1;
        *(v3 + 4) = v10;
        v11 = v10 & 3;
        v12 = (v10 & 7) == 0;
        v13 = 4;
        if (!v12)
        {
          v13 = v11;
        }

        *(v3 + 1) = v13;
      }

      else
      {
        free(v3);
        return 0;
      }
    }
  }

  return v3;
}

void *allocDeltaHeapObject(uint64_t a1, int a2)
{
  v2 = *(a1 + 200);
  v3 = *(v2 + 1752);
  if (a2 + 8 < 1)
  {
    LODWORD(v6) = *(v3 + 2);
  }

  else
  {
    if ((a2 & 7) != 0)
    {
      v4 = ((a2 + 8) & 0x7FFFFFF8) + 8;
    }

    else
    {
      v4 = a2 + 8;
    }

    v5 = v3[1];
    v6 = v5 + v4;
    v3[1] = v6;
    v7 = *(v2 + 1776);
    if (v7 <= v6)
    {
      v3[1] = v5;
      result = allocDynaSegment(a1, v7);
      v3[5] = result;
      if (!result)
      {
        return result;
      }

      v6 = result[1] + v4;
      *result = v3;
      result[1] = v6;
      v2 = *(a1 + 200);
      if (*(v2 + 1776) < v6)
      {
        return 0;
      }

      v3 = result;
    }
  }

  v10 = v3[4];
  if (!v10)
  {
    return 0;
  }

  v11 = (v10 - v6);
  v12 = *(v2 + 1752);
  v13 = *(v12 + 40);
  if (v13)
  {
    *(v2 + 1752) = v13;
    v12 = v13;
  }

  *v11 = v12;
  result = v11 + 1;
  ++*(v12 + 16);
  return result;
}

void freeDeltaHeapObject(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 8);
  v3 = *(v2 + 4) - 1;
  *(v2 + 4) = v3;
  if (!v3)
  {
    v4 = *(a1 + 200);
    v5 = *(v4 + 1752);
    if (v2 == v5)
    {
      v5[1] = v5[4] & 3;
    }

    else
    {
      v6 = *(v4 + 2184);
      v7 = v2[5];
      v8 = *v2;
      *(*v2 + 40) = v7;
      if (v6 > 19)
      {
        if (v7)
        {
          *v7 = v8;
        }

        free(v2[3]);

        free(v2);
      }

      else
      {
        if (v7)
        {
          *v7 = v8;
        }

        v2[5] = *(v4 + 2192);
        *(v4 + 2192) = v2;
        *(v4 + 2184) = v6 + 1;
      }
    }
  }
}

BOOL resetDeltaHeap()
{
  OUTLINED_FUNCTION_0_73();
  freeDynaMem(*(v1 + 1736));
  v2 = *(*(v0 + 200) + 1776);

  return initializeDeltaHeap(v0, v2);
}

void freeDynaMem(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    do
    {
      v2 = *(v1 + 40);
      free(*(v1 + 24));
      free(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void freeDeltaHeapTo(uint64_t a1, uint64_t a2, int a3)
{
  for (i = 0; i != 10; ++i)
  {
    v7 = *(a1 + 200);
    v8 = v7 + 40 * i;
    if (!*(v8 + 1800) && *(v8 + 1784) == a2)
    {
      while (1)
      {
        v11 = *(v7 + 1752);
        v12 = v7 + 1784;
        if (!v11 || v11 == *(v12 + 40 * i + 8))
        {
          break;
        }

        free(*(v11 + 24));
        v9 = *(a1 + 200);
        v10 = **(v9 + 1752);
        *(v9 + 1752) = v10;
        free(*(v10 + 40));
        v7 = *(a1 + 200);
      }

      if (v11)
      {
        v14 = v12 + 40 * i;
        *(v11 + 8) = *(v14 + 24);
        *(v11 + 16) = *(v14 + 32);
        if (a3)
        {
          *(v12 + 40 * i + 16) = 1;
        }

        return;
      }
    }
  }
}

uint64_t recordDeltaHeapPos(uint64_t a1)
{
  v1 = *(a1 + 200);
  v2 = v1 + 1744;
  v3 = 11;
  while (--v3)
  {
    v4 = v2 + 40;
    v5 = *(v2 + 56);
    v2 += 40;
    if (v5)
    {
      *(v4 + 16) = 0;
      v6 = *(v1 + 1752);
      v7 = *(v6 + 8);
      v8 = *(v6 + 32) - v7;
      *(v4 + 24) = v7;
      *(v4 + 32) = *(v6 + 16);
      *v4 = v8;
      *(v4 + 8) = v6;
      return 1;
    }
  }

  return 0;
}

uint64_t getDeltaHeapSegNumber(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 0;
  v4 = *(a2 - 8);
  v5 = *(a1 + 200);
  for (i = (v5 + 1736); ; i = (v7 + 40))
  {
    v7 = *i;
    if (!v7 || v7 == v4)
    {
      break;
    }

    ++v3;
  }

  if (v7)
  {
    return ((*(v4 + 32) - a2) / a3) + *(v5 + 1776) / a3 * v3;
  }

  v10 = (v5 + 2192);
  do
  {
    v11 = *v10;
    v10 = (*v10 + 40);
    if (v11)
    {
      v12 = v11 == v4;
    }

    else
    {
      v12 = 1;
    }
  }

  while (!v12);
  if (v11)
  {
    return 4294967294;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t initializeDeltaStack(uint64_t a1, unsigned int a2)
{
  v4 = allocDynaSegment(a1, a2);
  v5 = *(a1 + 200);
  *(v5 + 1744) = v4;
  v6 = *(v4 + 1);
  v7 = *(v4 + 4) - v6;
  *(v5 + 1780) = a2;
  v8 = *(v5 + 296);
  v9 = (v7 - v8);
  *(v5 + 1720) = v9;
  *(v5 + 1728) = a2 - v6 - v8;
  *v9 = 8;
  *(v5 + 1760) = v9;
  return 1;
}

uint64_t resetDeltaStack()
{
  OUTLINED_FUNCTION_0_73();
  freeDynaMem(*(v1 + 1744));
  v2 = *(v0 + 200);
  *(v2 + 1744) = 0;
  v3 = *(v2 + 1780);

  return initializeDeltaStack(v0, v3);
}

uint64_t peekDeltaStackStart()
{
  OUTLINED_FUNCTION_0_73();
  *(v1 + 1768) = *(v1 + 1720);
  peekDeltaStackNext(v2);
  return *(*(v0 + 200) + 1768);
}

uint64_t peekDeltaStackNext(uint64_t a1)
{
  v1 = *(a1 + 200);
  result = *(v1 + 1768);
  switch(*result)
  {
    case 0:
    case 3:
      v3 = *(v1 + 288);
      break;
    case 1:
      v3 = *(v1 + 284);
      break;
    case 2:
      v3 = *(v1 + 280) + ((*(result + 16) - 1) | 3) + 1;
      break;
    case 4:
    case 6:
      v3 = *(v1 + 296);
      break;
    case 5:
      v3 = *(v1 + 292);
      break;
    case 7:
      v3 = *(v1 + 276);
      break;
    case 8:
      v3 = 2;
      break;
    default:
      v3 = 0;
      break;
  }

  *(v1 + 1768) = result + v3;
  return result;
}

uint64_t popDeltaStackTop(uint64_t a1)
{
  v1 = *(a1 + 200);
  result = *(v1 + 1720);
  switch(*result)
  {
    case 0:
    case 3:
      v3 = *(v1 + 288);
      break;
    case 1:
      v3 = *(v1 + 284);
      break;
    case 2:
      v3 = *(v1 + 280) + ((*(result + 16) - 1) | 3) + 1;
      break;
    case 4:
    case 6:
      v3 = *(v1 + 296);
      break;
    case 5:
      v3 = *(v1 + 292);
      break;
    case 7:
      v3 = *(v1 + 276);
      break;
    default:
      v3 = 0;
      break;
  }

  *(v1 + 1720) = result + v3;
  *(v1 + 1728) += v3;
  return result;
}

void deltaHeapCleanup()
{
  OUTLINED_FUNCTION_0_73();
  v2 = v1[274];
  if (v2)
  {
    freeDynaMem(v2);
    v1 = *(v0 + 200);
  }

  v3 = v1[217];
  if (v3)
  {
    freeDynaMem(v3);
    v1 = *(v0 + 200);
  }

  v4 = v1[218];
  if (v4)
  {
    freeDynaMem(v4);
    v1 = *(v0 + 200);
  }

  v1[274] = 0;
  v1[217] = 0;
  v1[219] = 0;
  v1[218] = 0;
}

uint64_t vmeminit(uint64_t a1)
{
  v2 = *(a1 + 200);
  *(v2 + 276) = ((*(a1 + 232) - 1) | 3) + 1;
  *(v2 + 280) = xmmword_26E780270;
  *(v2 + 296) = 4;
  result = initializeDeltaStack(a1, 0xFA00u);
  if (result)
  {
    result = initializeDeltaHeap(a1, 0x2000u);
    if (result)
    {
      v4 = *(a1 + 200);
      *(*(a1 + 192) + 8112) = *(v4 + 1720);
      *(v4 + 252) = 0;
      *(v4 + 256) = 0;
      result = malloc_type_malloc(0x50uLL, 0x100004090896170uLL);
      v5 = *(a1 + 200);
      *(v5 + 264) = result;
      if (result)
      {
        *(v5 + 272) = -1;
        viasizes();
        return 1;
      }
    }
  }

  return result;
}

void *vpush_var(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = &unk_26E780280 + 4 * (v2 + 6);
  if (v2 <= 0xFFFFFFF9)
  {
    v3 = &vstmtbl[12 * *(a2 + 8) + 8] + 4;
  }

  v4 = *v3;
  v5 = *(a1 + 200);
  v6 = *(v5 + 280);
  v7 = ((v4 - 1) | 3) + 1;
  v8 = *(v5 + 1720) - (v7 + v6);
  *(v5 + 1720) = v8;
  *(v5 + 1728) -= v7 + v6;
  *v8 = 2;
  *(v8 + 2) = v2;
  *(v8 + 16) = v4;
  v9 = *a2;
  *(v8 + 8) = v9;
  return memcpy((v8 + v6), v9, v7);
}

void vadd(uint64_t a1, double **a2, __int16 **a3)
{
  v4 = *(a2 + 4);
  switch(v4)
  {
    case 65531:
      v7 = *(a3 + 4);
      switch(v7)
      {
        case 65531:
          v9 = OUTLINED_FUNCTION_6_54(v3, a2);
          break;
        case 65532:
          v8 = *a2;
          v9 = **a2;
          v11 = **a3;
          break;
        case 65533:
          v9 = OUTLINED_FUNCTION_6_54(v3, a2);
          v11 = v10;
          break;
        default:
          return;
      }

      *v8 = v9 + v11;
      break;
    case 65532:
      v6 = *(a3 + 4);
      if (v6 == 65531 || v6 == 65532 || v6 == 65533)
      {
        OUTLINED_FUNCTION_3_59(*a2);
      }

      break;
    case 65533:
      v5 = *(a3 + 4);
      if (v5 == 65531 || v5 == 65532 || v5 == 65533)
      {
        OUTLINED_FUNCTION_2_64(*a2);
      }

      break;
  }
}

void vsub(uint64_t a1, double **a2, __int16 **a3)
{
  v4 = *(a2 + 4);
  switch(v4)
  {
    case 65531:
      v7 = *(a3 + 4);
      switch(v7)
      {
        case 65531:
          v9 = OUTLINED_FUNCTION_6_54(v3, a2);
          break;
        case 65532:
          v8 = *a2;
          v9 = **a2;
          v11 = **a3;
          break;
        case 65533:
          v9 = OUTLINED_FUNCTION_6_54(v3, a2);
          v11 = v10;
          break;
        default:
          return;
      }

      *v8 = v9 - v11;
      break;
    case 65532:
      v6 = *(a3 + 4);
      if (v6 == 65531 || v6 == 65532 || v6 == 65533)
      {
        OUTLINED_FUNCTION_3_59(*a2);
      }

      break;
    case 65533:
      v5 = *(a3 + 4);
      if (v5 == 65531 || v5 == 65532 || v5 == 65533)
      {
        OUTLINED_FUNCTION_2_64(*a2);
      }

      break;
  }
}

void vmult(uint64_t a1, double **a2, __int16 **a3)
{
  v4 = *(a2 + 4);
  switch(v4)
  {
    case 65531:
      v7 = *(a3 + 4);
      switch(v7)
      {
        case 65531:
          v9 = OUTLINED_FUNCTION_6_54(v3, a2);
          break;
        case 65532:
          v8 = *a2;
          v9 = **a2;
          v11 = **a3;
          break;
        case 65533:
          v9 = OUTLINED_FUNCTION_6_54(v3, a2);
          v11 = v10;
          break;
        default:
          return;
      }

      *v8 = v9 * v11;
      break;
    case 65532:
      v6 = *(a3 + 4);
      if (v6 == 65531 || v6 == 65532 || v6 == 65533)
      {
        OUTLINED_FUNCTION_3_59(*a2);
      }

      break;
    case 65533:
      v5 = *(a3 + 4);
      if (v5 == 65531 || v5 == 65532 || v5 == 65533)
      {
        OUTLINED_FUNCTION_2_64(*a2);
      }

      break;
  }
}

void vdiv(uint64_t a1, double **a2, uint64_t **a3)
{
  v3 = *(a2 + 4);
  switch(v3)
  {
    case 65531:
      v7 = *(a3 + 4);
      if (v7 != 65531)
      {
        if (v7 == 65532)
        {
          v8 = *a2;
          v9 = **a2;
          v10 = **a3;
        }

        else
        {
          if (v7 != 65533)
          {
            return;
          }

          v8 = *a2;
          v9 = **a2;
          v10 = **a3;
        }

        *v8 = v9 / v10;
        return;
      }

      **a2 = **a2 / **a3;
      break;
    case 65532:
      v6 = *(a3 + 4);
      switch(v6)
      {
        case 65531:
          OUTLINED_FUNCTION_3_59(*a2);
          break;
        case 65532:
          **a2 /= **a3;
          break;
        case 65533:
          **a2 = **a2 / **a3;
          break;
      }

      break;
    case 65533:
      v4 = *(a3 + 4);
      switch(v4)
      {
        case 65531:
          OUTLINED_FUNCTION_2_64(*a2);
          break;
        case 65532:
          v5 = **a3;
          goto LABEL_21;
        case 65533:
          v5 = **a3;
LABEL_21:
          **a2 /= v5;
          break;
      }

      break;
  }
}

uint64_t vnegative(uint64_t a1, double **a2)
{
  v2 = *(a2 + 4);
  switch(v2)
  {
    case 65531:
      return **a2 < 0.0;
    case 65532:
      return **a2 >> 15;
    case 65533:
      return **a2 >> 63;
  }

  return 0;
}

double vnegate(uint64_t a1, void **a2)
{
  v2 = *(a2 + 4);
  switch(v2)
  {
    case 65531:
      result = -**a2;
      **a2 = result;
      break;
    case 65532:
      OUTLINED_FUNCTION_3_59(*a2);
      break;
    case 65533:
      OUTLINED_FUNCTION_2_64(*a2);
      break;
  }

  return result;
}

void vassign(uint64_t a1, void **a2, double **a3)
{
  switch(*(a2 + 4))
  {
    case 0xFFFA:
      goto LABEL_2;
    case 0xFFFB:
      v7 = *(a3 + 4);
      if (v7 == 65531)
      {
        v9 = **a3;
        goto LABEL_30;
      }

      if (v7 == 65532)
      {
        v11 = **a3;
        if (v11 == 32769)
        {
          goto LABEL_2;
        }

        v9 = v11;
        goto LABEL_30;
      }

      if (v7 != 65533)
      {
        return;
      }

      v8 = **a3;
      if (v8 != -2147483647)
      {
        v9 = v8;
LABEL_30:
        **a2 = v9;
        return;
      }

LABEL_2:
      OUTLINED_FUNCTION_2_64(*a2);
      return;
    case 0xFFFC:
      v5 = *(a3 + 4);
      switch(v5)
      {
        case 65531:
          v12 = **a3;
          if (v12 == 2.22507386e-308)
          {
            OUTLINED_FUNCTION_3_59(*a2);
            return;
          }

          v6 = v12;
LABEL_12:
          **a2 = v6;
          return;
        case 65532:
LABEL_11:
          LOWORD(v6) = **a3;
          goto LABEL_12;
        case 65533:
          **a2 = **a3;
          break;
      }

      return;
    case 0xFFFD:
      v3 = *(a3 + 4);
      switch(v3)
      {
        case 65531:
          v10 = **a3;
          if (v10 == 2.22507386e-308)
          {
            goto LABEL_2;
          }

          v4 = v10;
          break;
        case 65532:
          v4 = **a3;
          break;
        case 65533:
          v4 = **a3;
          break;
        default:
          return;
      }

      **a2 = v4;
      return;
    case 0xFFFE:
      goto LABEL_11;
    case 0xFFFF:
      **a2 = **a3;
      return;
    default:
      memcpy(*a2, *a3, SHIDWORD(vstmtbl[12 * *(a2 + 4) + 8]));
      return;
  }
}

void vcompare(uint64_t a1, uint64_t **a2, uint64_t **a3)
{
  v4 = *(a2 + 4);
  switch(v4)
  {
    case 0xFFFAu:
      v5 = absoluteSyncNumPtr(**a2);
      absoluteSyncNumPtr(**a3);
      OUTLINED_FUNCTION_4_55();
      if (v5 == v8)
      {
        goto LABEL_31;
      }

      goto LABEL_32;
    case 0xFFFBu:
      v18 = *(a3 + 4);
      if (v18 == 65531)
      {
        v19 = OUTLINED_FUNCTION_5_55(a1, a2);
      }

      else
      {
        if (v18 != 65533)
        {
          return;
        }

        v19 = OUTLINED_FUNCTION_5_55(a1, a2);
        v21 = v20;
      }

      if (v19 < v21)
      {
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_4_55();
      if (v26 != v27)
      {
        goto LABEL_32;
      }

LABEL_31:
      *(v6 + v7) = 0;
      return;
    case 0xFFFCu:
      v12 = *(a3 + 4);
      if (v12 == 65532)
      {
        goto LABEL_12;
      }

      if (v12 != 65533)
      {
        return;
      }

      v13 = **a2;
      v14 = **a3;
      if (v14 > v13)
      {
        goto LABEL_29;
      }

      v15 = *(a1 + 192);
      if (v14 != v13)
      {
        goto LABEL_26;
      }

      goto LABEL_19;
    case 0xFFFDu:
      v9 = *(a3 + 4);
      if (v9 == 65532)
      {
        v10 = **a2;
        v11 = **a3;
      }

      else
      {
        if (v9 != 65533)
        {
          return;
        }

        v10 = **a2;
        v11 = **a3;
      }

      if (v10 < v11)
      {
LABEL_29:
        OUTLINED_FUNCTION_4_55();
        v25 = -1;
        goto LABEL_33;
      }

      v15 = *(a1 + 192);
      if (v10 == v11)
      {
LABEL_19:
        *(v15 + 8120) = 0;
      }

      else
      {
LABEL_26:
        *(v15 + 8120) = 1;
      }

      break;
    case 0xFFFEu:
LABEL_12:
      v16 = **a2;
      v17 = **a3;
      if (v16 < v17)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    case 0xFFFFu:
      v16 = **a2;
      v17 = **a3;
      if (v16 < v17)
      {
        goto LABEL_29;
      }

LABEL_18:
      v15 = *(a1 + 192);
      if (v16 == v17)
      {
        goto LABEL_19;
      }

      goto LABEL_26;
    default:
      if (*(a3 + 4) == v4)
      {
        memcmp(*a2, *a3, SHIDWORD(vstmtbl[12 * v4 + 8]));
        OUTLINED_FUNCTION_4_55();
        *(v23 + v24) = v22;
      }

      else
      {
        OUTLINED_FUNCTION_4_55();
LABEL_32:
        v25 = 1;
LABEL_33:
        *(v6 + v7) = v25;
      }

      break;
  }
}

BOOL vcompareTypeCheck(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  switch(v3)
  {
    case -6:
      v5 = *(a3 + 8) == -6;
      goto LABEL_6;
    case -5:
    case -4:
    case -3:
      return (*(a3 + 8) + 5) < 3u;
    case -2:
      v5 = *(a3 + 8) == -2;
      goto LABEL_6;
    case -1:
      v5 = *(a3 + 8) == -1;
LABEL_6:
      result = v5;
      break;
    default:
      result = (v3 & 0x80000000) == 0 && v3 < *(a1 + 288);
      break;
  }

  return result;
}

uint64_t vinitloc(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(*a2 + 16);
  if (v4 < 0 || (v5 = *(a2 + 8), v5 == -1))
  {
    v8 = 0;
    *(result + 8) = v4;
    *result = *(a2 + 16);
  }

  else
  {
    v6 = *&vstmtbl[12 * *(*a2 + 16) + 2][8 * v5];
    TVFLDS();
    result = v6();
    *v3 = result;
    v7 = &vstmtbl[12 * *(*a2 + 16) + 1][40 * *(a2 + 8)];
    *(v3 + 8) = *(v7 + 15);
    v8 = v7[32];
  }

  *(v3 + 10) = v8;
  return result;
}

uint64_t vnspush(uint64_t result, _WORD **a2)
{
  v2 = *(a2 + 4);
  v3 = *(result + 200);
  v4 = *(v3 + 264);
  v5 = *(v3 + 272) + 1;
  *(v3 + 272) = v5;
  *(v4 + 16 * v5 + 8) = v2;
  switch(v2)
  {
    case 0xFFFB:
      *(v4 + 16 * v5) = **a2;
      break;
    case 0xFFFC:
    case 0xFFFE:
      *(v4 + 16 * v5) = **a2;
      break;
    case 0xFFFD:
      *(v4 + 16 * v5) = **a2;
      break;
    case 0xFFFF:
      *(v4 + 16 * v5) = **a2;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t vnspop(uint64_t result, uint64_t a2)
{
  v2 = *(result + 200);
  v3 = *(v2 + 272);
  v4 = *(v2 + 264) + 16 * v3;
  v5 = *(v4 + 8);
  *(a2 + 8) = v5;
  *(a2 + 10) = 0;
  if (v5 >= 0xFFFB)
  {
    *a2 = v4;
  }

  *(v2 + 272) = v3 - 1;
  return result;
}

uint64_t vonstack(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 192) + 8112;
  while (1)
  {
    v3 = *v2;
    if (!v3)
    {
      break;
    }

    v4 = *(v3 + 8);
    v5 = *v4;
    v2 = (v4 + 7);
    if (v5 == a2)
    {
      return *(*v2 + 8);
    }
  }

  return 0;
}

void *alloc_sync(uint64_t a1)
{
  v2 = allocDeltaHeapObject(a1, *(*(a1 + 200) + 248));
  v3 = v2;
  if (v2)
  {
    bzero(v2, *(*(a1 + 200) + 248));
    *v3 |= 2uLL;
    SETONESTM(v3);
    CLRALLNSQ(v3);
  }

  return v3;
}

uint64_t vdltinit(uint64_t a1, int a2)
{
  *(*(a1 + 200) + 248) = 16 * *(a1 + 288) + 48;
  resetDeltaHeap();
  **(a1 + 200) = alloc_sync(a1);
  v4 = alloc_sync(a1);
  result = 0;
  v6 = *(a1 + 200);
  v6[1] = v4;
  if (*v6)
  {
    if (v4)
    {
      result = recordDeltaHeapPos(a1);
      if (result)
      {
        CLRONESTM(**(a1 + 200));
        CLRONESTM(*(*(a1 + 200) + 8));
        v7 = 0;
        v8 = &qword_2806BD1A8;
        while (v7 < *(a1 + 288))
        {
          *v8 = 0;
          OUTLINED_FUNCTION_0_74(**(a1 + 200));
          OUTLINED_FUNCTION_0_74(*(v9 + 8));
          OUTLINED_FUNCTION_1_67(v10);
          if (a2)
          {
            result = vinit_stm(a1, v7);
            if (!result)
            {
              return result;
            }
          }

          ++v7;
          v8 += 12;
        }

        SETSPINER(a1, **(a1 + 200), *(*(a1 + 200) + 8));
        SETSPINEL(*(*(a1 + 200) + 8), **(a1 + 200));
        v11 = *(a1 + 192);
        *(v11 + 8080) = 0;
        *(v11 + 8088) = 256;
        result = 1;
        *(v11 + 8090) = 1;
        *(v11 + 9080) = 1;
      }
    }
  }

  return result;
}

uint64_t vscaninit(uint64_t result)
{
  v1 = *(result + 192);
  *(v1 + 8080) = 0;
  *(v1 + 8088) = 256;
  *(v1 + 8090) = 1;
  return result;
}

uint64_t deltaReinit(uint64_t a1, int a2)
{
  CLRONESTM(**(a1 + 200));
  CLRONESTM(*(*(a1 + 200) + 8));
  v4 = 0;
  v5 = &qword_2806BD1A8;
  while (v4 < *(a1 + 288))
  {
    *v5 = 0;
    OUTLINED_FUNCTION_0_74(**(a1 + 200));
    OUTLINED_FUNCTION_0_74(*(v6 + 8));
    OUTLINED_FUNCTION_1_67(v7);
    if (a2)
    {
      vinit_stm(a1, v4);
    }

    ++v4;
    v5 += 12;
  }

  SETSPINER(a1, **(a1 + 200), *(*(a1 + 200) + 8));
  v8 = *(a1 + 200);
  v10 = *v8;
  v9 = v8[1];

  return SETSPINEL(v9, v10);
}

void vnstackCleanup(uint64_t a1)
{
  v2 = *(*(a1 + 200) + 264);
  if (v2)
  {
    free(v2);
    *(*(a1 + 200) + 264) = 0;
  }
}

void OUTLINED_FUNCTION_1_67(void *a1@<X8>)
{
  *(*a1 + 8 * (v3 + *(v1 + 9084))) = *(*a1 + 8 * (v3 + *(v1 + 9084))) & 3 | a1[1];
  v4 = *(*(v2 + 200) + 8) + 8 * v3;
  *(v4 + 24) = *(v4 + 24) & 3 | **(v2 + 200);
}

int *print_delta(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, int a9, char a10, char a11)
{
  v109 = *MEMORY[0x277D85DE8];
  *v108 = a4;
  *&v108[8] = a5;
  v15 = malloc_type_malloc(0x58uLL, 0x10300406A7A1B15uLL);
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  v15[16] = a9 + 2;
  v15[6] = a9;
  *v15 = *v108;
  *(v15 + 2) = a8;
  *(v15 + 68) = a6;
  v17 = num_fields(v15);
  *(v16 + 28) = v17;
  v18 = malloc_type_calloc(v17 + 1, 0x10uLL, 0x1010040449DF08BuLL);
  *(v16 + 32) = v18;
  if (!v18)
  {
    goto LABEL_20;
  }

  v19 = 0;
  v20 = *(v16 + 28);
  v21 = v18 + 8;
  while (v19 <= v20)
  {
    *v21 = 0;
    v21 += 2;
    ++v19;
  }

  OUTLINED_FUNCTION_15_44();
  v25 = hashNew(v22, v23, v24);
  *(v16 + 72) = v25;
  if (!v25)
  {
LABEL_19:
    free_lines(v16);
LABEL_20:
    free(v16);
    return 0;
  }

  OUTLINED_FUNCTION_15_44();
  v29 = hashNew(v26, v27, v28);
  *(v16 + 80) = v29;
  if (!v29)
  {
LABEL_18:
    OUTLINED_FUNCTION_15_44();
    *(v16 + 72) = hashDelete(v36, v37, v38);
    goto LABEL_19;
  }

  v30 = rb_alloc(*(v16 + 28), 0);
  *(v16 + 40) = v30;
  if (!v30)
  {
LABEL_17:
    OUTLINED_FUNCTION_15_44();
    *(v16 + 80) = hashDelete(v33, v34, v35);
    goto LABEL_18;
  }

  if (a6)
  {
    v31 = rb_alloc(1, 0);
    *(v16 + 48) = v31;
    if (!v31)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *(v16 + 48) = 0;
  }

  if (pvlist_size(*(v16 + 16)) < 1)
  {
    *(v16 + 56) = 0;
  }

  else
  {
    v32 = rb_alloc(1, 0);
    *(v16 + 56) = v32;
    if (!v32)
    {
      rb_free(*(v16 + 48));
LABEL_16:
      rb_free(*(v16 + 40));
      goto LABEL_17;
    }
  }

  v40 = OUTLINED_FUNCTION_18_38();
  if (first_field(v40, v41, v42, v43))
  {
    v44 = 0;
    do
    {
      v45 = *(v16 + 32) + 16 * v44;
      *v45 = 0;
      *(v45 + 4) = 0;
      v46 = stream_name(0);
      v47 = 0;
      *(*(v16 + 32) + 16 * v44 + 8) = strdup(v46);
      while (v47 < *(v16 + 64))
      {
        place_char(v16, v44, v47, 32);
        v47 = (v47 + 1);
      }

      place_char(v16, v44++, v47, 0);
      v48 = OUTLINED_FUNCTION_18_38();
    }

    while (next_field(v48, v49, v50, v51));
  }

  for (i = 0; ; i = (i + 1))
  {
    v53 = *(v16 + 28);
    if (i >= *(v16 + 64))
    {
      break;
    }

    place_char(v16, v53, i, 45);
  }

  place_char(v16, v53, i, 0);
  v54 = 0;
  while (1)
  {
    v55 = *(v16 + 28);
    if (v54 >= v55)
    {
      break;
    }

    v56 = left_delta(a1);
    if (register_sync(v16, v54, v56, 0))
    {
      v57 = right_delta(a1);
      v58 = register_sync(v16, v54, v57, (*(v16 + 64) - 1));
      v54 = (v54 + 1);
      if (v58)
      {
        continue;
      }
    }

    goto LABEL_37;
  }

  if (!a7)
  {
    v93 = 0;
    for (j = 0; j < v55; ++j)
    {
      if (time_stream(*(*(v16 + 32) + v93)))
      {
        v95 = OUTLINED_FUNCTION_5_56();
        if (!add_tokens(v95, v96, v97))
        {
          goto LABEL_37;
        }

        if (a11)
        {
          v98 = OUTLINED_FUNCTION_5_56();
          if (!space_syncs(v98, v99, v100))
          {
            goto LABEL_37;
          }
        }
      }

      v55 = *(v16 + 28);
      v93 += 16;
    }
  }

  v59 = 0;
  for (k = 0; k < v55; ++k)
  {
    if (!time_stream(*(*(v16 + 32) + v59)))
    {
      v61 = OUTLINED_FUNCTION_5_56();
      if (!add_tokens(v61, v62, v63))
      {
        goto LABEL_37;
      }

      if (a11)
      {
        v64 = OUTLINED_FUNCTION_5_56();
        if (!space_syncs(v64, v65, v66))
        {
          goto LABEL_37;
        }
      }
    }

    v55 = *(v16 + 28);
    v59 += 16;
  }

  if (a7)
  {
    for (m = 0; m < v55; ++m)
    {
      if (!time_stream(*(*(v16 + 32) + 16 * m)))
      {
        goto LABEL_72;
      }

      v68 = *(*(v16 + 32) + 16 * m);
      if (checkInterrupt(a1))
      {
        goto LABEL_37;
      }

      v69 = left_delta(a1);
      v70 = 0;
      while (1)
      {
        v71 = right_delta(a1);
        if (syncmark_equ(v69, v71))
        {
          break;
        }

        v72 = v69;
        do
        {
          v72 = sync_to_right(a1, v68, v72);
          v73 = hashLookupInt(*(v16 + 80), v72);
        }

        while (!v73);
        find_off(v73, v16, v72);
        v74 = OUTLINED_FUNCTION_19_36();
        v77 = place_char(v74, v75, v76, 124);
        find_off(v77, v16, v69);
        v78 = OUTLINED_FUNCTION_19_36();
        v81 = OUTLINED_FUNCTION_21_32(v78, v79, v80);
        if (v82)
        {
          goto LABEL_37;
        }

        v83 = v81;
        v84 = 1;
        while (1)
        {
          v69 = sync_to_right(a1, v68, v69);
          if (syncmark_equ(v69, v72))
          {
            break;
          }

          if (is_token_prev(v68, v69))
          {
            if (v84)
            {
              v70 = 0;
            }

            token = prev_token(v68, v69);
            v84 = 0;
            v70 += time_field_value(v68, token);
          }
        }

        if (is_token_prev(v68, v72))
        {
          if (v84)
          {
            v70 = 0;
          }

          v86 = prev_token(v68, v72);
          v70 += time_field_value(v68, v86);
          goto LABEL_67;
        }

        v69 = v72;
        if ((v84 & 1) == 0)
        {
LABEL_67:
          __sprintf_chk(v108, 0, 0x10uLL, "%i", v70);
          v87 = OUTLINED_FUNCTION_19_36();
          if (insert_token_name(v87, v88, v83, v89) == -1)
          {
            goto LABEL_37;
          }

          v90 = OUTLINED_FUNCTION_19_36();
          v69 = v72;
          if (insert_padding(v90, v91, v92) == -1)
          {
            goto LABEL_37;
          }
        }
      }

      if (a11 && !space_syncs(a1, v16, m))
      {
        goto LABEL_37;
      }

LABEL_72:
      v55 = *(v16 + 28);
    }
  }

  if (a6)
  {
    for (n = 0; n < *(v16 + 64); ++n)
    {
      if (*(*(*(*(v16 + 40) + 16) + 8 * *(v16 + 28)) + n) == 43)
      {
        sync = find_sync(v16, n);
        v103 = absoluteSyncNum(a1, sync);
        __sprintf_chk(v108, 0, 6uLL, "%i", v103);
        if (!rb_stradd(*(v16 + 48), n, v108))
        {
          goto LABEL_37;
        }
      }
    }
  }

  if (checkInterrupt(a1))
  {
LABEL_37:
    close_ddisp(v16);
    return 0;
  }

  if (pvlist_size(*(v16 + 16)) >= 1)
  {
    for (ii = 0; ii < pvlist_size(*(v16 + 16)); ++ii)
    {
      v105 = pvlist_name();
      v106 = pvlist_val();
      if (v106)
      {
        off = find_off(v106, v16, v106);
        if ((off & 0x80000000) == 0 && !rb_stradd(*(v16 + 56), off, v105))
        {
          goto LABEL_37;
        }
      }
    }
  }

  return v16;
}