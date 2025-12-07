uint64_t getNumericFeatureValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _WORD *a5)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  *a5 = 0;
  v6 = (*(a1 + 96))(a2, a3, "fecfg", a4, &__c[3], &__c[1], __c);
  if ((v6 & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3] != 0)
  {
    v8 = **&__c[3];
    v9 = strchr(**&__c[3], __c[0]);
    if (v9)
    {
      *v9 = 0;
      v8 = **&__c[3];
    }

    *a5 = atoi(v8);
  }

  return v6;
}

uint64_t setStr(uint64_t a1, char **a2, char *__s)
{
  if (__s)
  {
    v6 = *(a1 + 8);
    v7 = strlen(__s);
    v8 = heap_Calloc(v6, 1, (v7 + 1));
    *a2 = v8;
    if (v8)
    {
      strcpy(v8, __s);
      return 0;
    }

    else
    {
      log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
      return 2315264010;
    }
  }

  else
  {
    v9 = 2315264007;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
  }

  return v9;
}

uint64_t getPrecisionFactor(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  if (v2 >= 0xA)
  {
    v4 = 0;
    do
    {
      v5 = v4++;
      v6 = v2 > 0x63;
      v2 /= 0xAu;
    }

    while (v6);
    v3 = v5 + 2;
  }

  else
  {
    v3 = 1;
  }

  v7 = *(a2 + 2);
  if (v7 >= 0xA)
  {
    v9 = 0;
    do
    {
      v10 = v9++;
      v6 = v7 > 0x63;
      v7 /= 0xAu;
    }

    while (v6);
    v8 = v10 + 2;
  }

  else
  {
    v8 = 1;
  }

  if (v3 > v8)
  {
    v11 = vdupq_n_s32(v3 - 1);
    v12.i64[0] = 0x100000001;
    v12.i64[1] = 0x100000001;
    v13 = 4;
    v14.i64[0] = 0xA0000000ALL;
    v14.i64[1] = 0xA0000000ALL;
    do
    {
      v15 = v12;
      v12 = vmulq_s32(v12, v14);
      v13 -= 4;
    }

    while (((v3 + 3) & 0x1FFFC) + v13 != 4);
LABEL_22:
    v21 = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(-v13), xmmword_1C37B17D0), v11), v15, v12);
    *v21.i8 = vmul_s32(*v21.i8, *&vextq_s8(v21, v21, 8uLL));
    return (v21.i32[0] * v21.i32[1]);
  }

  if (v8 > v3)
  {
    v16 = (v8 + 3) & 0x1FFFC;
    v11 = vdupq_n_s32(v8 - 1);
    v12.i64[0] = 0x100000001;
    v12.i64[1] = 0x100000001;
    v13 = 4;
    v17.i64[0] = 0xA0000000ALL;
    v17.i64[1] = 0xA0000000ALL;
    do
    {
      v15 = v12;
      v12 = vmulq_s32(v12, v17);
      v13 -= 4;
    }

    while (v16 + v13 != 4);
    goto LABEL_22;
  }

  if (v3)
  {
    v18 = v3;
    v19 = (v3 + 3) & 0x1FFFC;
    v11 = vdupq_n_s32(v18 - 1);
    v12.i64[0] = 0x100000001;
    v12.i64[1] = 0x100000001;
    v13 = 4;
    v20.i64[0] = 0xA0000000ALL;
    v20.i64[1] = 0xA0000000ALL;
    do
    {
      v15 = v12;
      v12 = vmulq_s32(v12, v20);
      v13 -= 4;
    }

    while (v19 + v13 != 4);
    goto LABEL_22;
  }

  return 1;
}

BOOL FLOATSUR_GT_INT(unsigned __int16 *a1, unsigned int a2, unsigned int a3)
{
  v3 = *a1;
  if (v3 > a2)
  {
    return 1;
  }

  if (v3 >= a2)
  {
    return a1[1] > a3;
  }

  return 0;
}

BOOL FLOATSUR_GT(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = *a1;
  if (v3 > v2)
  {
    return 1;
  }

  if (v3 >= v2)
  {
    return a1[1] > a2[1];
  }

  return 0;
}

BOOL FLOATSUR_GTOREQUAL(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = *a1;
  v4 = a2[1];
  if (v3 == v2)
  {
    if (a1[1] == v4)
    {
      return 1;
    }
  }

  else if (v3 > v2)
  {
    return 1;
  }

  return v3 >= v2 && a1[1] > v4;
}

BOOL FLOATSUR_LT_INT(unsigned __int16 *a1, unsigned int a2, unsigned int a3)
{
  v3 = *a1;
  if (v3 < a2)
  {
    return 1;
  }

  if (v3 > a2)
  {
    return 0;
  }

  return a1[1] < a3;
}

BOOL FLOATSUR_LT(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = *a1;
  if (v3 < v2)
  {
    return 1;
  }

  if (v3 > v2)
  {
    return 0;
  }

  return a1[1] < a2[1];
}

_WORD *FLOATSUR_SET_INT(_WORD *result, __int16 a2, __int16 a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

uint64_t FLOATSUR_PLUS(_WORD *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v14 = 0;
  v13 = 0;
  result = getVals(a2, a3, &v14 + 1, &v14, &v13);
  v5 = v13 + v14;
  v6 = HIDWORD(v14);
  v7 = (v13 + v14) / HIDWORD(v14);
  *a1 = v7;
  v8 = v5 - v7 * v6;
  if (v8)
  {
    v9 = v8 % 0xA == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    do
    {
      v10 = v8;
      v8 /= 0xAu;
    }

    while (v10 >= 0xA && v8 == 10 * ((429496730 * v8) >> 32));
  }

  if (v8 < 0x10000)
  {
    LOWORD(v11) = v8;
  }

  else
  {
    do
    {
      v11 = v8 / 0xA;
      v12 = v8 >> 17;
      v8 /= 0xAu;
    }

    while (v12 > 4);
  }

  a1[1] = v11;
  return result;
}

uint64_t getVals(unsigned __int16 *a1, unsigned __int16 *a2, unsigned int *a3, uint64_t a4, unsigned int *a5)
{
  roundUpAndNormalize(a1);
  roundUpAndNormalize(a2);
  result = getPrecisionFactor(a1, a2);
  *a3 = result;
  v11 = *a1;
  v12 = a1[1];
  *a4 = v12 + result * v11;
  v13 = *a2;
  v14 = a2[1];
  v15 = v14 + *a3 * v13;
  *a5 = v15;
  if (*a4 >= 0x10000u && v15 >= 0x10000)
  {
    v16 = 1;
    do
    {
      if (v15 < 0x10000)
      {
        break;
      }

      v16 *= 10;
      v17 = *a3 / 0xA;
      *a3 = v17;
      *a4 = v12 / (v16 & 0xFFFEu) + v17 * v11;
      v15 = v14 / (v16 & 0xFFFEu) + *a3 * v13;
      *a5 = v15;
    }

    while (*(a4 + 2));
  }

  return result;
}

uint64_t FLOATSUR_PLUS_INT(_DWORD *a1, unsigned __int16 *a2, unsigned __int16 a3, unsigned __int16 a4)
{
  v6 = 0;
  v7[0] = a3;
  v7[1] = a4;
  result = FLOATSUR_PLUS(&v6, a2, v7);
  *a1 = v6;
  return result;
}

uint64_t FLOATSUR_MINUS(_WORD *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v15 = 0;
  v14 = 0;
  result = getVals(a2, a3, &v15 + 1, &v15, &v14);
  v5 = v14;
  v6 = v15;
  if (v15 >= v14)
  {
    v7 = HIDWORD(v15);
    v8 = (v15 - v14) / HIDWORD(v15);
    *a1 = v8;
    v9 = v6 - (v5 + v8 * v7);
    if (v9)
    {
      v10 = v9 % 0xA == 0;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      do
      {
        v11 = v9;
        v9 /= 0xAu;
      }

      while (v11 >= 0xA && v9 == 10 * ((429496730 * v9) >> 32));
    }

    if (v9 < 0x10000)
    {
      LOWORD(v12) = v9;
    }

    else
    {
      do
      {
        v12 = v9 / 0xA;
        v13 = v9 >> 17;
        v9 /= 0xAu;
      }

      while (v13 > 4);
    }

    a1[1] = v12;

    return roundUpAndNormalize(a1);
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t roundUpAndNormalize(uint64_t result)
{
  v1 = *(result + 2);
  if (v1 >= 0x64)
  {
    do
    {
      v2 = v1;
      v1 /= 0xAu;
    }

    while (v2 >= 0x3E8);
    *(result + 2) = v1;
    if (v2 >= 0xA && v1 == 10 * ((429496730 * v1) >> 32))
    {
      do
      {
        v3 = v1;
        v1 /= 0xAu;
      }

      while (v3 >= 0xA && v1 == 10 * ((429496730 * v1) >> 32));
      *(result + 2) = v1;
    }
  }

  if (v1 <= 9)
  {
    *(result + 2) = 10 * v1;
  }

  return result;
}

uint64_t FLOATSUR_MINUS_INT(_DWORD *a1, unsigned __int16 *a2, unsigned __int16 a3, unsigned __int16 a4)
{
  v6 = 0;
  v7[0] = a3;
  v7[1] = a4;
  result = FLOATSUR_MINUS(&v6, a2, v7);
  *a1 = v6;
  return result;
}

uint64_t FLOATSUR_TIMES(_WORD *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v15 = 0;
  v14 = 0;
  result = getVals(a2, a3, &v15 + 1, &v15, &v14);
  v5 = v14 * v15;
  v6 = HIDWORD(v15) * HIDWORD(v15);
  v7 = v14 * v15 / (HIDWORD(v15) * HIDWORD(v15));
  if (v7 < 0x10000)
  {
    *a1 = v7;
    v8 = v7 * v6;
    if (v6 > v5)
    {
      v8 = 0;
    }

    v9 = v5 - v8;
    if (v9)
    {
      v10 = v6 / 0xA;
      if (v9 >= v10)
      {
        HIDWORD(v11) = -858993459 * v9;
        LODWORD(v11) = -858993459 * v9;
        if ((v11 >> 1) <= 0x19999999)
        {
          do
          {
            v12 = v9;
            v9 /= 0xAu;
          }

          while (v12 >= 0xA && v9 == 10 * ((429496730 * v9) >> 32));
        }

        if (v9 < 0x10000)
        {
          LOWORD(v10) = v9;
        }

        else
        {
          do
          {
            v10 = v9 / 0xA;
            v13 = v9 >> 17;
            v9 /= 0xAu;
          }

          while (v13 > 4);
        }
      }

      else
      {
        LOWORD(v10) = 10 * v9 / v10 > 5;
      }
    }

    else
    {
      LOWORD(v10) = 0;
    }

    a1[1] = v10;

    return roundUpAndNormalize(a1);
  }

  else
  {
    *a1 = 0xFFFF;
  }

  return result;
}

uint64_t FLOATSUR_TIMES_INT(_DWORD *a1, unsigned __int16 *a2, unsigned __int16 a3, unsigned __int16 a4)
{
  v6 = 0;
  v7[0] = a3;
  v7[1] = a4;
  result = FLOATSUR_TIMES(&v6, a2, v7);
  *a1 = v6;
  return result;
}

uint64_t FLOATSUR_DIV(_WORD *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v15 = 0;
  v14 = 0;
  result = getVals(a2, a3, &v15 + 1, &v15, &v14);
  v5 = v14;
  if (v14)
  {
    v6 = v15;
    v7 = v15 / v14;
    *a1 = v15 / v14;
    v8 = v6 - v7 * v5;
    if (v8)
    {
      v9 = HIDWORD(v15) * v8 * HIDWORD(v15);
      v10 = v9 / v5;
      if (v5 <= v9 && !(v10 % 0xA))
      {
        do
        {
          v11 = v10;
          v10 /= 0xAu;
        }

        while (v11 >= 0xA && v10 == 10 * ((429496730 * v10) >> 32));
      }

      if (v10 < 0x10000)
      {
        LOWORD(v12) = v10;
      }

      else
      {
        do
        {
          v12 = v10 / 0xA;
          v13 = v10 >> 17;
          v10 /= 0xAu;
        }

        while (v13 > 4);
      }
    }

    else
    {
      LOWORD(v12) = 0;
    }

    a1[1] = v12;

    return roundUpAndNormalize(a1);
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t load_stress_models(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _WORD *a7, uint64_t a8, _DWORD *a9, uint64_t *a10, void *a11, uint64_t a12, void *a13, _OWORD *a14, _WORD *a15, _BOOL4 *a16)
{
  *&__c[3] = 0;
  v39 = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v36 = 0;
  v37 = 0;
  *&v35 = safeh_GetNullHandle();
  *(&v35 + 1) = v23;
  *a10 = 0;
  *a11 = 0;
  inited = (*(a6 + 96))(a4, a5, "fecfg", "statbnd_stress", &v39, &__c[1], __c);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v33 = a8;
  v25 = 1;
  if (*&__c[1] == 1 && v39)
  {
    (*v39)[strlen(*v39) - 1] = 0;
    v25 = strcmp(*v39, "yes") != 0;
  }

  *&__c[1] = 0;
  inited = (*(a6 + 96))(a4, a5, "fecfg", "statbnd_stress_albert", &v39, &__c[1], __c);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v26 = 0;
  if (*&__c[1] == 1 && v39)
  {
    (*v39)[strlen(*v39) - 1] = 0;
    v26 = strcmp(*v39, "yes") == 0;
  }

  if (v25)
  {
    goto LABEL_10;
  }

  v30 = v26;
  inited = fe_stress_tryLoading_STRESS_igModel(a1, a2, a3, &v37);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *a10 = v37;
  inited = Init_stress_nn_model(a3, a1, a2, a7, v33, &v36);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *a11 = v36;
  v31 = v30 ? "albert" : "char";
  inited = (*(a12 + 16))(*a13, a13[1], v31, a1, a2, &v35);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *a14 = v35;
  *a9 = 1;
  *a16 = v30;
LABEL_10:
  *a15 = 20;
  __c[0] = 0;
  *&__c[1] = -1;
  v27 = (*(a6 + 96))(a4, a5, "fecfg", "statbnd_pos_dimension", &__c[3], &__c[1], __c);
  if ((v27 & 0x80000000) == 0 && *&__c[1])
  {
    v28 = **&__c[3];
    v29 = strchr(**&__c[3], __c[0]);
    if (v29)
    {
      *v29 = 0;
      v28 = **&__c[3];
    }

    *a15 = atoi(v28);
  }

  return v27;
}

uint64_t fe_stress_tryLoading_STRESS_igModel(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  memset(v17, 0, 240);
  *v14 = 0;
  v15 = 0;
  *a4 = 0;
  *v16 = 0;
  memset(v18, 0, 128);
  v17[15] = 0u;
  Str = paramc_ParamGetStr(*(a3 + 40), "langcode", v16);
  if ((Str & 0x80000000) != 0 || (Str = paramc_ParamGetStr(*(a3 + 40), "fecfg", &v15), (Str & 0x80000000) != 0) || (__strcat_chk(), __strcat_chk(), __strcat_chk(), __strcat_chk(), Str = brokeraux_ComposeBrokerString(a3, v18, 1, 1, *v16, 0, 0, v17, 0x100uLL), (Str & 0x80000000) != 0) || (Str = ssftriff_reader_ObjOpen(a1, a2, 2, v17, "IGTR", 1031, v14), (Str & 0x80000000) != 0))
  {
    v10 = Str;
  }

  else
  {
    v9 = heap_Calloc(*(a3 + 8), 1, 1600);
    *a4 = v9;
    if (v9)
    {
      v10 = igtree_Init(a1, a2, *v14, v9);
      ssftriff_reader_CloseChunk(*v14);
      if ((v10 & 0x80001FFF) == 0x14)
      {
        ssftriff_reader_CloseChunk(*v14);
        v10 = 0;
      }
    }

    else
    {
      log_OutPublic(*(a3 + 32), "FE_PHRASING", 37000, 0);
      v10 = 2315264010;
    }
  }

  if (*v14)
  {
    v11 = ssftriff_reader_ObjClose(*v14);
    if ((v10 & 0x80000000) == 0)
    {
      v12 = v11;
      if ((v11 & 0x80000000) != 0)
      {
        if (*a4)
        {
          heap_Free(*(a3 + 8), *a4);
          *a4 = 0;
        }

        return v12;
      }
    }
  }

  return v10;
}

uint64_t Init_stress_nn_model(uint64_t a1, _WORD *a2, uint64_t a3, _WORD *a4, uint64_t a5, void *a6)
{
  v19 = *MEMORY[0x1E69E9840];
  memset(v17, 0, 240);
  v14 = 0;
  v15 = 0;
  *a6 = 0;
  *v16 = 0;
  memset(v18, 0, 128);
  v17[15] = 0u;
  if ((paramc_ParamGetStr(*(a1 + 40), "langcode", v16) & 0x80000000) == 0 && (paramc_ParamGetStr(*(a1 + 40), "fecfg", &v15) & 0x80000000) == 0)
  {
    __strcat_chk();
    __strcat_chk();
    __strcat_chk();
    __strcat_chk();
    brokeraux_ComposeBrokerString(a1, v18, 1, 1, *v16, 0, 0, v17, 0x100uLL);
  }

  v12 = fi_init(a2, a3, a4, a5, &v14, 0, v17, "FINN", 1, 0);
  if ((v12 & 0x80000000) != 0)
  {
    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Init Stress FI model failed");
  }

  else
  {
    *a6 = v14;
  }

  return v12;
}

uint64_t **free_stress_model(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    igtree_Deinit(a1, a3);
    heap_Free(*(a1 + 8), a3);
  }

  if (a4)
  {
    a4 = fi_deinit(a1, a2, a4);
  }

  if (a5)
  {
    (*(a5 + 24))(a6, a7);
  }

  return a4;
}

uint64_t fe_stress_process(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t ***a9, unsigned __int16 a10, int a11)
{
  v19 = heap_Calloc(a1[1], 1, 16);
  if (!v19)
  {
    UTF8Char = 2315264010;
    log_OutPublic(a1[4], "FE_PHRASING", 37000, 0);
    return UTF8Char;
  }

  v20 = v19;
  v253 = a5;
  v281 = 0;
  v282 = 0;
  v283 = 0;
  v284 = 0;
  v280 = 0;
  v278 = 0;
  v279 = 0;
  v277 = 0;
  v275 = 0;
  *__s = 0;
  v274 = 0;
  *(v19 + 12) = 0;
  v21 = (*(a4 + 104))(a2, a3, 1, 0, &v282 + 2);
  if ((v21 & 0x80000000) != 0)
  {
    goto LABEL_452;
  }

  v256 = a8;
  UTF8Char = (*(a4 + 184))(a2, a3, HIWORD(v282), 0, &v281);
  v23 = 0;
  if ((UTF8Char & 0x80000000) != 0)
  {
    goto LABEL_125;
  }

  if (v281 != 1)
  {
    goto LABEL_125;
  }

  UTF8Char = (*(a4 + 176))(a2, a3, HIWORD(v282), 0, &v284, &v281 + 2);
  v23 = 0;
  if ((UTF8Char & 0x80000000) != 0 || HIWORD(v281) < 2u)
  {
    goto LABEL_125;
  }

  log_OutText(a1[4], "FE_PHRASING", 5, 0, "Stress: processing=%s", v284);
  v24 = heap_Calloc(a1[1], 1, 1024);
  if (!v24)
  {
    goto LABEL_492;
  }

  v25 = v24;
  v26 = strlen(v284);
  v268 = heap_Calloc(a1[1], 1, (v26 + 1));
  if (!v268)
  {
    UTF8Char = 2315264010;
    log_OutPublic(a1[4], "FE_PHRASING", 37000, 0);
    v69 = a1[1];
    v70 = v25;
    goto LABEL_249;
  }

  UTF8Char = (*(a4 + 104))(a2, a3, 2, HIWORD(v282), &v282);
  if ((UTF8Char & 0x80000000) != 0 || (v27 = v282) == 0)
  {
    heap_Free(a1[1], v25);
    v23 = 0;
    v46 = v268;
    goto LABEL_124;
  }

  v249 = v25;
  v264 = 0;
  v252 = 0;
  v23 = 0;
  v237 = a4;
  v240 = a3;
  v230 = a2;
  v261 = a6;
  while (1)
  {
    v28 = (*(a4 + 168))(a2, a3, v27, 0, 1, &v279, &v281 + 2);
    if ((v28 & 0x80000000) != 0)
    {
LABEL_100:
      UTF8Char = v28;
      goto LABEL_101;
    }

    v29 = v279;
    if (v279 == 15)
    {
      v28 = (*(a4 + 168))(a2, a3, v282, 1, 1, &v278 + 2, &v281 + 2);
      if ((v28 & 0x80000000) != 0)
      {
        goto LABEL_100;
      }

      v28 = (*(a4 + 168))(a2, a3, v282, 2, 1, &v278, &v281 + 2);
      if ((v28 & 0x80000000) != 0)
      {
        goto LABEL_100;
      }

      if (HIWORD(v278) > v278)
      {
        goto LABEL_104;
      }

      v29 = v279;
    }

    v30 = v29 > 0xA;
    v31 = (1 << v29) & 0x610;
    if (v30 || v31 == 0)
    {
      goto LABEL_92;
    }

    v33 = (*(a4 + 168))(a2, a3, v282, 1, 1, &v277 + 2, &v281 + 2);
    if ((v33 & 0x80000000) != 0 || (v33 = (*(a4 + 168))(a2, a3, v282, 2, 1, &v277, &v281 + 2), (v33 & 0x80000000) != 0))
    {
LABEL_99:
      UTF8Char = v33;
      v23 = 0;
LABEL_101:
      v46 = 0;
      v254 = 0;
      goto LABEL_119;
    }

    if (HIWORD(v277) > v277)
    {
      v23 = 0;
LABEL_104:
      v46 = 0;
      v254 = 0;
      v71 = 16049;
      goto LABEL_105;
    }

    v34 = strncpy(v268, &v284[HIWORD(v277)], v277 - HIWORD(v277));
    v34[v277 - HIWORD(v277)] = 0;
    v33 = (*(a4 + 184))(a2, a3, v282, 14, &v281);
    if ((v33 & 0x80000000) != 0)
    {
      goto LABEL_99;
    }

    if (v281 == 1)
    {
      v33 = (*(a4 + 176))(a2, a3, v282, 14, &v283, &v281 + 2);
      if ((v33 & 0x80000000) != 0)
      {
        goto LABEL_99;
      }

      hlp_NLUStrFind(v283, "POS", &v275, &v280);
    }

    v251 = v275;
    if (v275)
    {
      v23 = 0;
      goto LABEL_33;
    }

    v23 = 1;
    v35 = heap_Calloc(a1[1], 1, 2);
    v275 = v35;
    if (!v35)
    {
      v46 = 0;
      v254 = 0;
      v71 = 8202;
LABEL_105:
      UTF8Char = v71 | 0x8A000000;
      goto LABEL_119;
    }

    *v35 = 61;
    v275[1] = 0;
    v23 = 1;
LABEL_33:
    v36 = heap_Calloc(a1[1], 1, v280 + 1);
    v254 = v36;
    if (!v36)
    {
      goto LABEL_102;
    }

    v37 = strncpy(v36, v275, v280);
    v37[v280] = 0;
    a4 = v237;
    v38 = (*(v237 + 176))(a2, a3, v282, 9, __s, &v281 + 2);
    if ((v38 & 0x80000000) != 0)
    {
      UTF8Char = v38;
      v46 = 0;
      goto LABEL_119;
    }

    v39 = heap_Calloc(a1[1], 1, 16);
    if (!v39)
    {
LABEL_102:
      UTF8Char = 2315264010;
      log_OutPublic(a1[4], "FE_PHRASING", 37000, 0);
      v46 = 0;
      goto LABEL_118;
    }

    v40 = v39;
    *(v39 + 8) = 655360;
    v41 = heap_Calloc(a1[1], 10, 16);
    *v40 = v41;
    if (!v41)
    {
      v46 = 0;
      goto LABEL_116;
    }

    v42 = (*(v237 + 176))(a2, a3, v282, 3, &v274, &v281 + 2);
    if ((v42 & 0x80000000) != 0)
    {
      break;
    }

    v43 = v274;
    if (strstr(v274, "[SVOX]"))
    {
      v43 += 6;
      v274 = v43;
    }

    v44 = strlen(v43);
    v45 = heap_Alloc(a1[1], v44 + 1);
    v46 = v45;
    if (!v45)
    {
      a3 = v240;
      goto LABEL_116;
    }

    strcpy(v45, v274);
    v47 = strlen(v274);
    a3 = v240;
    if (v47 >= v252)
    {
      if ((v47 + 1) <= 4u)
      {
        v49 = 4;
      }

      else
      {
        v49 = (v47 + 1);
      }

      v252 = v49;
      v48 = heap_Realloc(a1[1], v264, v49);
      if (!v48)
      {
        goto LABEL_116;
      }
    }

    else
    {
      v48 = v264;
      if (!v264)
      {
        v264 = 0;
        goto LABEL_49;
      }
    }

    v264 = v48;
    *v48 = 0;
LABEL_49:
    if (strlen(v268))
    {
      v50 = 0;
      v51 = 0;
      v258 = a7;
      while ((utf8_getUTF8Char(v268, v51, &v273) & 0x80000000) == 0)
      {
        v52 = *(v40 + 10);
        if (*(v40 + 8) >= v52)
        {
          v53 = heap_Realloc(a1[1], *v40, 16 * v52 + 160);
          if (!v53)
          {
            a2 = v230;
            goto LABEL_116;
          }

          *v40 = v53;
          v54 = (v53 + 16 * *(v40 + 8));
          v54[8] = 0u;
          v54[9] = 0u;
          v54[6] = 0u;
          v54[7] = 0u;
          v54[4] = 0u;
          v54[5] = 0u;
          v54[2] = 0u;
          v54[3] = 0u;
          *v54 = 0u;
          v54[1] = 0u;
          *(v40 + 10) += 10;
        }

        v286[0] = v51;
        if (!v264)
        {
          goto LABEL_81;
        }

        v285 = 0;
        if (utf8_Utf8CharTo16bit(v268, &v285) && ((v285 + 24576) >> 9) <= 0x56u && (v285 > 0x3Eu || ((1 << v285) & 0x5000040000000000) == 0))
        {
          v59 = strcpy(v264, v46);
          v61 = 1;
        }

        else
        {
          utf8_GetPreviousValidUtf8Offset(v268, v286);
          v55 = v46;
          if (v286[0])
          {
            NextUtf8Offset = 0;
            v55 = v46;
            while (1)
            {
              NextUtf8Offset = utf8_GetNextUtf8Offset(v268, NextUtf8Offset);
              v57 = strchr(v55, 46);
              if (!v57)
              {
                break;
              }

              if (*v57 == 46)
              {
                v55 = v57 + 1;
              }

              else
              {
                v55 = v57;
              }

              if (NextUtf8Offset == v286[0])
              {
                goto LABEL_67;
              }
            }

            v264[NextUtf8Offset] = 0;
            a7 = v258;
            break;
          }

LABEL_67:
          LODWORD(v58) = 0;
          v59 = v264;
          while (1)
          {
            v60 = v55[v58];
            v58 = v58;
            if (!v55[v58] || v60 == 46)
            {
              break;
            }

            v264[v58] = v60;
            if (v58 && v60 == 125 && v264[(v58 - 1)] - 48 <= 9)
            {
              v55[v58] = 46;
              v58 = (v58 + 1);
              break;
            }

            LODWORD(v58) = v58 + 1;
          }

          v61 = 0;
          v264[v58] = 0;
        }

        v62 = v59;
        v63 = strlen(v59);
        v64 = heap_Alloc(a1[1], (v63 + 1));
        *(*v40 + 16 * *(v40 + 8)) = v64;
        if (!v64)
        {
          a3 = v240;
          a2 = v230;
          a7 = v258;
          goto LABEL_115;
        }

        strcpy(v64, v62);
        v50 += strlen(v62) + 1;
        v65 = *(v40 + 8) + 1;
        *(v40 + 8) = v65;
        a3 = v240;
        if (v61)
        {
          a7 = v258;
          goto LABEL_84;
        }

        v51 = utf8_GetNextUtf8Offset(v268, v51);
        a7 = v258;
        a6 = v261;
        if (v51 >= strlen(v268))
        {
          break;
        }
      }
    }

    else
    {
LABEL_81:
      v50 = 0;
    }

    v65 = *(v40 + 8);
LABEL_84:
    if (v65)
    {
      v66 = strlen(v274);
      if (v50 < v66 + 1)
      {
        v67 = strlen(*(*v40 + 16 * (v65 - 1)));
        v68 = heap_Realloc(a1[1], *(*v40 + 16 * (v65 - 1)), v66 - v50 + v67 + 2);
        if (v68)
        {
          *(*v40 + 16 * *(v40 + 8) - 16) = v68;
          strcat(v68, &v274[v50 - 1]);
          goto LABEL_88;
        }

        a3 = v240;
        a2 = v230;
LABEL_115:
        a6 = v261;
LABEL_116:
        UTF8Char = 2315264010;
        log_OutPublic(a1[4], "FE_PHRASING", 37000, 0);
        goto LABEL_117;
      }
    }

LABEL_88:
    UTF8Char = stress_addWord(a1, v268, SHIWORD(v277), v277, v278, v254, v40, *__s, v20);
    stat_stress_freeCandidatePhons(a1, v40);
    heap_Free(a1[1], v40);
    heap_Free(a1[1], v46);
    heap_Free(a1[1], v254);
    a3 = v240;
    a2 = v230;
    if (!v251 && v275)
    {
      heap_Free(a1[1], v275);
      v275 = 0;
    }

    a4 = v237;
    a6 = v261;
    if ((UTF8Char & 0x80000000) != 0)
    {
      goto LABEL_101;
    }

LABEL_92:
    UTF8Char = (*(a4 + 120))(a2, a3, v282, &v282);
    v46 = 0;
    if ((UTF8Char & 0x80000000) != 0)
    {
      v254 = 0;
      goto LABEL_119;
    }

    v27 = v282;
    v254 = 0;
    if (!v282)
    {
      goto LABEL_119;
    }
  }

  UTF8Char = v42;
  v46 = 0;
LABEL_117:
  stat_stress_freeCandidatePhons(a1, v40);
  heap_Free(a1[1], v40);
LABEL_118:
  a4 = v237;
LABEL_119:
  if (v264)
  {
    heap_Free(a1[1], v264);
  }

  heap_Free(a1[1], v249);
  heap_Free(a1[1], v268);
  if (v254)
  {
    heap_Free(a1[1], v254);
  }

  if (v46)
  {
LABEL_124:
    heap_Free(a1[1], v46);
  }

LABEL_125:
  if ((UTF8Char & 0x80000000) != 0)
  {
    if (v23 != 1)
    {
      goto LABEL_493;
    }

    v70 = v275;
    if (!v275)
    {
      goto LABEL_493;
    }

LABEL_248:
    v69 = a1[1];
    goto LABEL_249;
  }

  if (!*(v20 + 12))
  {
    goto LABEL_493;
  }

  v283 = 0;
  v284 = 0;
  __s[4] = 0;
  *__s = 0;
  LODWORD(v275) = 0;
  UTF8Char = (*(a6 + 40))(a7, v256, &v275);
  if ((UTF8Char & 0x80000000) != 0)
  {
    goto LABEL_493;
  }

  v241 = a3;
  if (a11)
  {
    v72 = heap_Calloc(a1[1], (*(v20 + 12) + 2) * v275, 4);
    if (!v72)
    {
      goto LABEL_492;
    }

    *v72 = 1120534528;
    v73 = &v72[v275];
  }

  else
  {
    v72 = heap_Calloc(a1[1], *(v20 + 12) * (a10 + v275 + 14), 4);
    v73 = v72;
    if (!v72)
    {
      goto LABEL_492;
    }
  }

  v234 = v72;
  v238 = a4;
  v74 = *(v20 + 8);
  if (*(v20 + 8))
  {
    v259 = a7;
    v75 = 0;
    while (1)
    {
      v250 = v75;
      v76 = *v20 + (v75 << 6);
      v77 = *(v76 + 24);
      v245 = *(v76 + 32);
      v239 = *(v76 + 40);
      v244 = *(v76 + 48);
      v78 = *(v76 + 52);
      v79 = *(v76 + 54);
      v246 = *(v76 + 56);
      if (!strcmp(v77, "normal") || !strcmp(v77, "mnx"))
      {
        v80 = v78 >= v79;
        v81 = v244;
        if (v80 && v244 != 0)
        {
          break;
        }
      }

LABEL_144:
      v75 = v250 + 1;
      if (v250 + 1 >= v74)
      {
        goto LABEL_250;
      }
    }

    v262 = a6;
    v231 = a2;
    v83 = 0;
    v248 = 0;
    v235 = v79 - 1;
    v84 = v256;
    while (1)
    {
      v247 = v83;
      v85 = v239 + 40 * v83;
      v86 = *(v85 + 8);
      v265 = *(v85 + 24);
      v87 = Utf8_Utf8NbrOfSymbols(v265);
      if (v87 != 1)
      {
        break;
      }

LABEL_245:
      v83 = v247 + 1;
      v81 = v244;
      if (v247 + 1 == v244)
      {
        v74 = *(v20 + 8);
        a2 = v231;
        a6 = v262;
        goto LABEL_144;
      }
    }

    v88 = 0;
    v89 = 0;
    v90 = v81 == 1;
    v233 = v87 - 1;
    v91 = (v87 - 1);
    if (v91 == 1)
    {
      v92 = 3;
    }

    else
    {
      v92 = 0;
    }

    v242 = v92;
    if (v91 != 1)
    {
      v90 = 0;
    }

    v236 = v90;
    v243 = v86;
    while (2)
    {
      v93 = v89;
      UTF8Char = utf8_getUTF8Char(v265, v89, __s);
      if ((UTF8Char & 0x80000000) != 0)
      {
        v70 = v234;
        goto LABEL_248;
      }

      v269 = strlen(__s);
      if (utf8_IsChineseLetter(__s))
      {
        if (a11)
        {
          v94 = (*(v262 + 72))(v259, v84, __s, v73);
          UTF8Char = v94;
          if (*v73 == 0.0 && v94 != 0)
          {
            v95.n128_u32[0] = *v73;
            UTF8Char = (*(v262 + 72))(v259, v84, "</s>", v73, v95);
          }

          v73 += v275;
          goto LABEL_242;
        }

        v97 = (*(v262 + 56))(v259, v84, __s, v73);
        LODWORD(UTF8Char) = v97;
        if (*v73 == 0.0 && v97 != 0)
        {
          v98.n128_u32[0] = *v73;
          LODWORD(UTF8Char) = (*(v262 + 56))(v259, v84, "</s>", v73, v98);
        }

        v100 = *(v246 + 32 * v248 + 8);
        v101 = *v100;
        if (v101 > 0x32)
        {
          v102 = a10;
          if (v101 == 51)
          {
            if (v100[1] == 53)
            {
              v103 = 1;
            }

            else
            {
              v103 = 5;
            }

            goto LABEL_181;
          }

          if (v101 == 53)
          {
            if (v100[1] == 53)
            {
              v103 = 0;
            }

            else
            {
              v103 = 3;
            }

            goto LABEL_181;
          }

          goto LABEL_176;
        }

        v102 = a10;
        if (v101 == 49)
        {
          v103 = 4;
        }

        else
        {
          if (v101 == 50)
          {
            v103 = 2;
            goto LABEL_181;
          }

LABEL_176:
          v103 = 0;
        }

LABEL_181:
        v104 = &v73[v275];
        v104[v103] = 1065353216;
        log_OutText(a1[4], "FE_PHRASING", 4, 0, "NN STRESS: %s get tune %d", __s, v103);
        if (v86)
        {
          utf8_ToLower(v86, 0, &v274);
          if (v274 - 99 > 0x16)
          {
            v105 = 0;
          }

          else
          {
            v105 = word_1C37BDA0C[(v274 - 99)];
          }
        }

        else
        {
          v105 = 2;
        }

        v104[v105 + 6] = 1065353216;
        v106 = &v104[v102 + 6];
        log_OutText(a1[4], "FE_PHRASING", 4, 0, "NN STRESS: %s get pos %d", __s, v105);
        if (v91 == 1)
        {
          v107 = 2;
        }

        else
        {
          v107 = 1;
        }

        if (!v88)
        {
          v107 = v242;
        }

        *(v106 + 4 * v107) = 1065353216;
        log_OutText(a1[4], "FE_PHRASING", 4, 0, "NN STRESS: %s get word bmes tag %d", __s, v107);
        if (v247)
        {
          if (v247 == v244 - 1 && v91 == 1)
          {
            v109 = 2;
          }

          else
          {
            v109 = 1;
          }
        }

        else
        {
          if (v236 && v88 == 0)
          {
            v109 = 3;
          }

          else
          {
            v109 = 0;
          }

          if (v88)
          {
            if (v91 == 1 && v244 == 1)
            {
              v109 = 2;
            }

            else
            {
              v109 = 1;
            }
          }
        }

        UTF8Char = UTF8Char;
        v86 = v243;
        *(v106 + 16 + 4 * v109) = 1065353216;
        log_OutText(a1[4], "FE_PHRASING", 4, 0, "NN STRESS: %s get pw bmes tag %d", __s, v109);
        if (v250 && *(*v20 + ((v250 - 1) << 6) + 32) != 1)
        {
          if (v245)
          {
            if (v109 > 1u && v91 == 1)
            {
              v113 = 69;
            }

            else
            {
              v113 = 77;
            }
          }

          else
          {
            v113 = 77;
          }
        }

        else
        {
          if (v88 || v109 != 3 && v109)
          {
            v112 = v109 != 2 || v91 != 1 || v245 == 0;
            LODWORD(v113) = 77;
            v114 = 69;
          }

          else
          {
            v112 = v109 != 3 || v233 != 1 || v245 == 0;
            LODWORD(v113) = 66;
            v114 = 83;
          }

          if (v112)
          {
            v113 = v113;
          }

          else
          {
            v113 = v114;
          }
        }

        v84 = v256;
        v73 = (v106 + 32);
        log_OutText(a1[4], "FE_PHRASING", 4, 0, "NN STRESS: %s get phrase bmes tag %c", __s, v113);
        if (!isERphon(__s, *(v246 + 32 * v248)))
        {
          if (v235 <= v248)
          {
            v117 = v248;
          }

          else
          {
            v117 = v248 + 1;
          }

          v248 = v117;
        }
      }

LABEL_242:
      v89 = v93 + v269;
      --v88;
      if (!--v91)
      {
        goto LABEL_245;
      }

      continue;
    }
  }

LABEL_250:
  if (!a11)
  {
    v70 = v234;
    v284 = v234;
    if ((UTF8Char & 0x80000000) != 0)
    {
      goto LABEL_248;
    }

    v21 = fi_predict(a9, &v284, *(v20 + 12), &v283);
    if ((v21 & 0x80000000) == 0)
    {
      v266 = v283;
      goto LABEL_257;
    }

LABEL_452:
    UTF8Char = v21;
    goto LABEL_493;
  }

  v118 = *(v20 + 12);
  v70 = v234;
  *&v234[4 * v118 + 4] = 1120665600;
  v284 = v234;
  if ((UTF8Char & 0x80000000) != 0)
  {
    goto LABEL_248;
  }

  v21 = fi_predict(a9, &v284, (v118 + 2), &v283);
  if ((v21 & 0x80000000) != 0)
  {
    goto LABEL_452;
  }

  v266 = v283 + 8;
  v283 += 8;
LABEL_257:
  v119 = *(v20 + 8);
  if (!*(v20 + 8))
  {
    goto LABEL_301;
  }

  v120 = 0;
  v121 = 0;
  v122 = *v20;
  while (1)
  {
    v123 = v122 + (v120 << 6);
    v124 = *(v123 + 24);
    if ((!strcmp(v124, "normal") || !strcmp(v124, "mnx")) && *(v123 + 52) >= *(v123 + 54) && *(v122 + (v120 << 6) + 54))
    {
      break;
    }

LABEL_300:
    if (++v120 >= v119)
    {
      goto LABEL_301;
    }
  }

  v125 = 0;
  v270 = v120;
  while (2)
  {
    if (*(v20 + 12) <= v121)
    {
      v129 = a2;
      log_OutText(a1[4], "FE_PHRASING", 4, 0, "Not Severe Error: Stress label out of range. Skip some stress tag.");
      v126 = *v20;
      v127 = *(*v20 + (v120 << 6) + 56);
    }

    else
    {
      v126 = v122;
      v127 = *(v122 + (v120 << 6) + 56);
      v128 = v127 + 32 * v125;
      v129 = a2;
      *(v128 + 24) = **&v266[8 * v121] == 49;
    }

    v130 = *(v127 + 32 * v125);
    v131 = *v130;
    v132 = strlen(v130);
    v133 = v132;
    if (v132 < 2)
    {
      goto LABEL_276;
    }

    if (v132 >= 5 && !strcmp(&v130[v132 - 5], "%~r"))
    {
      v120 = v270;
      if (!((v131 > 0x3E) | (0x2FFFFBFFFFFFFFFFuLL >> v131) & 1))
      {
        goto LABEL_296;
      }

      goto LABEL_279;
    }

    v134 = &v130[v133 - 2];
    if (*v134 != 37)
    {
LABEL_276:
      a2 = v129;
      v122 = v126;
LABEL_277:
      v120 = v270;
LABEL_298:
      ++v125;
      ++v121;
      if (v125 >= *(v122 + (v120 << 6) + 54))
      {
        v119 = *(v20 + 8);
        goto LABEL_300;
      }

      continue;
    }

    break;
  }

  v120 = v270;
  if (v134[1] != 114 || (((v131 > 0x3E) | (0x2FFFFBFFFFFFFFFFuLL >> v131)) & (v134[2] == 0)) == 0)
  {
LABEL_296:
    a2 = v129;
    goto LABEL_297;
  }

LABEL_279:
  if (v131 == 36)
  {
    goto LABEL_296;
  }

  a2 = v129;
  if (v131 == 97)
  {
LABEL_297:
    v122 = v126;
    goto LABEL_298;
  }

  v135 = 0;
  v136 = 0;
  __s[4] = 0;
  *__s = 0;
  while ((utf8_getUTF8Char(*(*v20 + (v270 << 6)), v136, __s) & 0x80000000) == 0)
  {
    v137 = utf8_GetNextUtf8Offset(*(*v20 + (v270 << 6)), v136);
    if (v137 != v136)
    {
      v138 = v137;
      if (utf8_IsChineseLetter(__s))
      {
        ++v135;
      }

      v136 = v138;
      if ((v125 + 1) >= v135)
      {
        continue;
      }
    }

    if (__s[0] == 229 && __s[1] == 132 && __s[2] == 191)
    {
      ++v121;
    }

    v122 = *v20;
    goto LABEL_277;
  }

LABEL_301:
  BYTE4(v283) = 0;
  LODWORD(v283) = 0;
  v284 = 0;
  if (!v253)
  {
    log_OutText(a1[4], "FE_PHRASING", 0, 0, "IGTree model for stress does not exist. Skip processing IGTree.");
    v199 = v238;
    goto LABEL_458;
  }

  v141 = heap_Calloc(a1[1], 1, 8 * *(v253 + 1296) - 8);
  if (!v141)
  {
    UTF8Char = 2315264010;
    goto LABEL_493;
  }

  v142 = v141;
  UTF8Char = hlp_igtree_initFeatureVector(a1, v141, (*(v253 + 1296) - 1));
  if ((UTF8Char & 0x80000000) == 0)
  {
    v143 = *(v20 + 8);
    if (*(v20 + 8))
    {
      v144 = 0;
      while (1)
      {
        v145 = *v20 + (v144 << 6);
        v146 = *(v145 + 24);
        if (!strcmp(v146, "normal") || !strcmp(v146, "mnx"))
        {
          v147 = *(v145 + 54);
          v148 = *(v145 + 52);
          if (v147 == v148 || v147 + 1 == v148)
          {
            v150 = *(v145 + 48);
            if (v150)
            {
              break;
            }
          }
        }

LABEL_450:
        if (++v144 >= v143)
        {
          goto LABEL_457;
        }
      }

      v151 = 0;
      v263 = 0;
      v232 = a2;
      v271 = v142;
      *v255 = v145;
      while (1)
      {
        v152 = *(v145 + 40) + 40 * v151;
        if (*(v152 + 32))
        {
          break;
        }

LABEL_448:
        if (++v151 >= v150)
        {
          v143 = *(v20 + 8);
          goto LABEL_450;
        }
      }

      v257 = *(v145 + 40) + 40 * v151;
      v260 = v151;
      v153 = 0;
      v154 = 0;
      while (2)
      {
        UTF8Char = utf8_getUTF8Char(*(v152 + 24), v154, &v283);
        if ((UTF8Char & 0x80000000) != 0)
        {
          break;
        }

        if (utf8_IsChineseLetter(&v283))
        {
          v267 = v154;
          v155 = *(v253 + 1312);
          v156 = *(v253 + 1296);
          v157 = heap_Calloc(a1[1], 1, 2048);
          if (!v157)
          {
            UTF8Char = 2315264010;
            log_OutPublic(a1[4], "FE_PHRASING", 37000, 0);
            a2 = v232;
            break;
          }

          v158 = v157;
          if (v156 > 1)
          {
            v159 = 0;
            while (strcmp(*(v155 + v159), "char0"))
            {
              v159 += 8;
              if (8 * (v156 - 1) == v159)
              {
                UTF8Char = 0;
                goto LABEL_328;
              }
            }

            v160 = fe_stress_feat_character(a1, v20, v144, v260, v267, 0, v158);
            if ((v160 & 0x80000000) != 0)
            {
LABEL_455:
              UTF8Char = v160;
              goto LABEL_456;
            }

            UTF8Char = fe_stress_igtr_setFeature(a1, v155, v156, 0, v271, v158);
            if ((UTF8Char & 0x80000000) != 0)
            {
              goto LABEL_456;
            }

LABEL_328:
            v161 = 0;
            if (v156 - 1 <= 1)
            {
              v162 = 1;
            }

            else
            {
              v162 = v156 - 1;
            }

            v163 = 8 * v162;
            while (strcmp(*(v155 + v161), "lchar"))
            {
              v161 += 8;
              if (v163 == v161)
              {
                goto LABEL_337;
              }
            }

            v160 = fe_stress_feat_character(a1, v20, v144, v260, v267, -1, v158);
            if ((v160 & 0x80000000) != 0)
            {
              goto LABEL_455;
            }

            UTF8Char = fe_stress_igtr_setFeature(a1, v155, v156, 1, v271, v158);
            if ((UTF8Char & 0x80000000) == 0)
            {
LABEL_337:
              v164 = 0;
              while (strcmp(*(v155 + v164), "llchar"))
              {
                v164 += 8;
                if (v163 == v164)
                {
                  goto LABEL_343;
                }
              }

              v160 = fe_stress_feat_character(a1, v20, v144, v260, v267, -2, v158);
              if ((v160 & 0x80000000) != 0)
              {
                goto LABEL_455;
              }

              UTF8Char = fe_stress_igtr_setFeature(a1, v155, v156, 2, v271, v158);
              if ((UTF8Char & 0x80000000) == 0)
              {
LABEL_343:
                v165 = 0;
                while (strcmp(*(v155 + v165), "l3char"))
                {
                  v165 += 8;
                  if (v163 == v165)
                  {
                    goto LABEL_349;
                  }
                }

                v160 = fe_stress_feat_character(a1, v20, v144, v260, v267, -3, v158);
                if ((v160 & 0x80000000) != 0)
                {
                  goto LABEL_455;
                }

                UTF8Char = fe_stress_igtr_setFeature(a1, v155, v156, 3, v271, v158);
                if ((UTF8Char & 0x80000000) == 0)
                {
LABEL_349:
                  v166 = 0;
                  while (strcmp(*(v155 + v166), "rchar"))
                  {
                    v166 += 8;
                    if (v163 == v166)
                    {
                      goto LABEL_355;
                    }
                  }

                  v160 = fe_stress_feat_character(a1, v20, v144, v260, v267, 1, v158);
                  if ((v160 & 0x80000000) != 0)
                  {
                    goto LABEL_455;
                  }

                  UTF8Char = fe_stress_igtr_setFeature(a1, v155, v156, 4, v271, v158);
                  if ((UTF8Char & 0x80000000) == 0)
                  {
LABEL_355:
                    v167 = 0;
                    while (strcmp(*(v155 + v167), "rrchar"))
                    {
                      v167 += 8;
                      if (v163 == v167)
                      {
                        goto LABEL_361;
                      }
                    }

                    v160 = fe_stress_feat_character(a1, v20, v144, v260, v267, 2, v158);
                    if ((v160 & 0x80000000) != 0)
                    {
                      goto LABEL_455;
                    }

                    UTF8Char = fe_stress_igtr_setFeature(a1, v155, v156, 5, v271, v158);
                    if ((UTF8Char & 0x80000000) == 0)
                    {
LABEL_361:
                      v168 = 0;
                      while (strcmp(*(v155 + v168), "r3char"))
                      {
                        v168 += 8;
                        if (v163 == v168)
                        {
                          goto LABEL_367;
                        }
                      }

                      v160 = fe_stress_feat_character(a1, v20, v144, v260, v267, 3, v158);
                      if ((v160 & 0x80000000) != 0)
                      {
                        goto LABEL_455;
                      }

                      UTF8Char = fe_stress_igtr_setFeature(a1, v155, v156, 6, v271, v158);
                      if ((UTF8Char & 0x80000000) != 0)
                      {
                        goto LABEL_456;
                      }

LABEL_367:
                      v169 = 0;
                      while (strcmp(*(v155 + v169), "phon0"))
                      {
                        v169 += 8;
                        if (v163 == v169)
                        {
                          goto LABEL_372;
                        }
                      }

                      v170 = fe_stress_feat_phon(v20, v144, v263, 0);
                      UTF8Char = fe_stress_igtr_setFeature(a1, v155, v156, 7, v271, v170);
                      if ((UTF8Char & 0x80000000) != 0)
                      {
                        goto LABEL_456;
                      }

LABEL_372:
                      v171 = 0;
                      while (strcmp(*(v155 + v171), "lphon"))
                      {
                        v171 += 8;
                        if (v163 == v171)
                        {
                          goto LABEL_377;
                        }
                      }

                      v172 = fe_stress_feat_phon(v20, v144, v263, -1);
                      UTF8Char = fe_stress_igtr_setFeature(a1, v155, v156, 8, v271, v172);
                      if ((UTF8Char & 0x80000000) != 0)
                      {
                        goto LABEL_456;
                      }

LABEL_377:
                      v173 = 0;
                      while (strcmp(*(v155 + v173), "rphon"))
                      {
                        v173 += 8;
                        if (v163 == v173)
                        {
                          goto LABEL_382;
                        }
                      }

                      v174 = fe_stress_feat_phon(v20, v144, v263, 1);
                      UTF8Char = fe_stress_igtr_setFeature(a1, v155, v156, 9, v271, v174);
                      if ((UTF8Char & 0x80000000) != 0)
                      {
                        goto LABEL_456;
                      }

LABEL_382:
                      v175 = 0;
                      while (strcmp(*(v155 + v175), "tone0"))
                      {
                        v175 += 8;
                        if (v163 == v175)
                        {
                          goto LABEL_387;
                        }
                      }

                      v176 = fe_stress_feat_tone(v20, v144, v263, 0);
                      UTF8Char = fe_stress_igtr_setFeature(a1, v155, v156, 10, v271, v176);
                      if ((UTF8Char & 0x80000000) != 0)
                      {
                        goto LABEL_456;
                      }

LABEL_387:
                      v177 = 0;
                      while (strcmp(*(v155 + v177), "ltone"))
                      {
                        v177 += 8;
                        if (v163 == v177)
                        {
                          goto LABEL_392;
                        }
                      }

                      v178 = fe_stress_feat_tone(v20, v144, v263, -1);
                      UTF8Char = fe_stress_igtr_setFeature(a1, v155, v156, 11, v271, v178);
                      if ((UTF8Char & 0x80000000) != 0)
                      {
                        goto LABEL_456;
                      }

LABEL_392:
                      v179 = 0;
                      while (strcmp(*(v155 + v179), "rtone"))
                      {
                        v179 += 8;
                        if (v163 == v179)
                        {
                          goto LABEL_397;
                        }
                      }

                      v180 = fe_stress_feat_tone(v20, v144, v263, 1);
                      UTF8Char = fe_stress_igtr_setFeature(a1, v155, v156, 12, v271, v180);
                      if ((UTF8Char & 0x80000000) != 0)
                      {
                        goto LABEL_456;
                      }

LABEL_397:
                      v181 = 0;
                      while (strcmp(*(v155 + v181), "word0"))
                      {
                        v181 += 8;
                        if (v163 == v181)
                        {
                          goto LABEL_402;
                        }
                      }

                      v182 = fe_stress_feat_word(v20, v144, v260, 0);
                      UTF8Char = fe_stress_igtr_setFeature(a1, v155, v156, 13, v271, v182);
                      if ((UTF8Char & 0x80000000) != 0)
                      {
                        goto LABEL_456;
                      }

LABEL_402:
                      v183 = 0;
                      while (strcmp(*(v155 + v183), "lword"))
                      {
                        v183 += 8;
                        if (v163 == v183)
                        {
                          goto LABEL_407;
                        }
                      }

                      v184 = fe_stress_feat_word(v20, v144, v260, -1);
                      UTF8Char = fe_stress_igtr_setFeature(a1, v155, v156, 14, v271, v184);
                      if ((UTF8Char & 0x80000000) != 0)
                      {
                        goto LABEL_456;
                      }

LABEL_407:
                      v185 = 0;
                      while (strcmp(*(v155 + v185), "rword"))
                      {
                        v185 += 8;
                        if (v163 == v185)
                        {
                          goto LABEL_412;
                        }
                      }

                      v186 = fe_stress_feat_word(v20, v144, v260, 1);
                      UTF8Char = fe_stress_igtr_setFeature(a1, v155, v156, 15, v271, v186);
                      if ((UTF8Char & 0x80000000) != 0)
                      {
                        goto LABEL_456;
                      }

LABEL_412:
                      v187 = 0;
                      while (strcmp(*(v155 + v187), "wordlen"))
                      {
                        v187 += 8;
                        if (v163 == v187)
                        {
                          goto LABEL_420;
                        }
                      }

                      *v158 = 0;
                      v188 = *v20 + (v144 << 6);
                      if (v260 >= *(v188 + 48))
                      {
                        *v158 = 61;
                      }

                      else
                      {
                        sprintf(v158, "%d", *(*(v188 + 40) + 40 * v260 + 32));
                      }

                      UTF8Char = fe_stress_igtr_setFeature(a1, v155, v156, 16, v271, v158);
                      if ((UTF8Char & 0x80000000) != 0)
                      {
                        goto LABEL_456;
                      }

LABEL_420:
                      v189 = 0;
                      while (strcmp(*(v155 + v189), "pos0"))
                      {
                        v189 += 8;
                        if (v163 == v189)
                        {
                          goto LABEL_425;
                        }
                      }

                      v190 = fe_stress_feat_pos(v20, v144, v260, 0);
                      UTF8Char = fe_stress_igtr_setFeature(a1, v155, v156, 17, v271, v190);
                      if ((UTF8Char & 0x80000000) != 0)
                      {
                        goto LABEL_456;
                      }

LABEL_425:
                      v191 = 0;
                      while (strcmp(*(v155 + v191), "lpos"))
                      {
                        v191 += 8;
                        if (v163 == v191)
                        {
                          goto LABEL_430;
                        }
                      }

                      v192 = fe_stress_feat_pos(v20, v144, v260, -1);
                      UTF8Char = fe_stress_igtr_setFeature(a1, v155, v156, 18, v271, v192);
                      if ((UTF8Char & 0x80000000) != 0)
                      {
                        goto LABEL_456;
                      }

LABEL_430:
                      v193 = 0;
                      while (strcmp(*(v155 + v193), "rpos"))
                      {
                        v193 += 8;
                        if (v163 == v193)
                        {
                          v142 = v271;
                          goto LABEL_435;
                        }
                      }

                      v194 = fe_stress_feat_pos(v20, v144, v260, 1);
                      v142 = v271;
                      UTF8Char = fe_stress_igtr_setFeature(a1, v155, v156, 19, v271, v194);
LABEL_435:
                      heap_Free(a1[1], v158);
                      a2 = v232;
                      v145 = *v255;
                      v152 = v257;
                      if ((UTF8Char & 0x80000000) != 0)
                      {
                        break;
                      }

                      goto LABEL_436;
                    }
                  }
                }
              }
            }

LABEL_456:
            heap_Free(a1[1], v158);
            a2 = v232;
            v142 = v271;
            break;
          }

          heap_Free(a1[1], v157);
          UTF8Char = 0;
          a2 = v232;
          v145 = *v255;
          v152 = v257;
LABEL_436:
          igtree_Process(v253, v142, &v284);
          v195 = v284;
          if (strcmp(v284, "NOMATCH"))
          {
            v196 = atoi(v195);
            if (v196 <= 1)
            {
              *(*(v145 + 56) + 32 * v263 + 24) = v196;
            }
          }

          v154 = utf8_GetNextUtf8Offset(*(v152 + 24), v267);
          v197 = *(v145 + 54);
          if (v197 + 1 == *(v145 + 52))
          {
            if (!isERphon(&v283, *(*(v145 + 56) + 32 * v263)))
            {
              v197 = *(v145 + 54);
              goto LABEL_442;
            }
          }

          else
          {
LABEL_442:
            if (v197 <= (v263 + 1))
            {
              v198 = v263;
            }

            else
            {
              v198 = v263 + 1;
            }

            v263 = v198;
          }
        }

        if (++v153 >= *(v152 + 32))
        {
          v150 = *(v145 + 48);
          v151 = v260;
          goto LABEL_448;
        }

        continue;
      }
    }
  }

LABEL_457:
  hlp_igtree_freeFeatureVector(a1, v142, (*(v253 + 1296) - 1));
  heap_Free(a1[1], v142);
  v199 = v238;
  if ((UTF8Char & 0x80000000) == 0)
  {
LABEL_458:
    LOWORD(v275) = 0;
    LOWORD(v274) = 0;
    v273 = 0;
    LOWORD(v286[0]) = 0;
    v283 = 0;
    v284 = 0;
    v200 = heap_Calloc(a1[1], 1, 2048);
    if (v200)
    {
      v201 = v200;
      *__s = 0;
      *v200 = 0;
      v202 = (*(v199 + 104))(a2, v241, 1, 0, &v275);
      if ((v202 & 0x80000000) != 0)
      {
        goto LABEL_531;
      }

      UTF8Char = (*(v199 + 104))(a2, v241, 2, v275, &v274);
      if ((UTF8Char & 0x80000000) == 0)
      {
        v203 = v274;
        if (v274)
        {
          v204 = 0;
          v272 = 2048;
          while (1)
          {
            v202 = (*(v238 + 168))(a2, v241, v203, 0, 1, __s, &v273);
            if ((v202 & 0x80000000) != 0)
            {
              break;
            }

            if (*__s <= 0xAu && ((1 << __s[0]) & 0x610) != 0)
            {
              v202 = (*(v238 + 176))(a2, v241, v274, 9, &v284, &v273);
              if ((v202 & 0x80000000) != 0)
              {
                break;
              }

              v206 = a2;
              v202 = (*(v238 + 176))(a2, v241, v274, 3, &v283, &v273);
              if ((v202 & 0x80000000) != 0)
              {
                break;
              }

              v207 = v284;
              if (!strcmp(v284, "normal") || !strcmp(v207, "mnx"))
              {
                v208 = *v20;
                v209 = *v20 + (v204 << 6);
                v210 = *(v209 + 54);
                if (v210 <= *(v209 + 52))
                {
                  v211 = v210 + strlen(v283);
                  if (v211 >= v272)
                  {
                    v272 = v211 + 1;
                    v212 = heap_Realloc(a1[1], v201, (v211 + 1));
                    if (!v212)
                    {
                      UTF8Char = 2315264010;
                      log_OutPublic(a1[4], "FE_PHRASING", 37000, 0);
                      goto LABEL_532;
                    }

                    v208 = *v20;
                    v201 = v212;
                  }

                  if (*(v208 + (v204 << 6) + 54))
                  {
                    v213 = 0;
                    v214 = 0;
                    do
                    {
                      if (v213)
                      {
                        *&v201[strlen(v201)] = 46;
                      }

                      else if (strstr(v283, "[SVOX]"))
                      {
                        strcpy(v201, "[SVOX]");
                      }

                      v215 = *(*v20 + (v204 << 6) + 56);
                      if (*(v215 + v213 + 24) == 1)
                      {
                        *&v201[strlen(v201)] = 39;
                        v215 = *(*v20 + (v204 << 6) + 56);
                      }

                      strcat(v201, *(v215 + v213));
                      ++v214;
                      v213 += 32;
                    }

                    while (v214 < *(*v20 + (v204 << 6) + 54));
                  }

                  v216 = strlen(v201);
                  a2 = v206;
                  v202 = (*(v238 + 160))(v206, v241, v274, 3, (v216 + 1), v201, v286);
                  if ((v202 & 0x80000000) != 0)
                  {
                    break;
                  }

                  *v201 = 0;
                }

                else
                {
                  a2 = v206;
                }
              }

              ++v204;
            }

            UTF8Char = (*(v238 + 120))(a2, v241, v274, &v274);
            if ((UTF8Char & 0x80000000) == 0)
            {
              v203 = v274;
              if (v274)
              {
                continue;
              }
            }

            goto LABEL_532;
          }

LABEL_531:
          UTF8Char = v202;
        }
      }

LABEL_532:
      v69 = a1[1];
      v70 = v201;
LABEL_249:
      heap_Free(v69, v70);
      goto LABEL_493;
    }

LABEL_492:
    UTF8Char = 2315264010;
    log_OutPublic(a1[4], "FE_PHRASING", 37000, 0);
  }

LABEL_493:
  if (*(v20 + 8))
  {
    v217 = 0;
    do
    {
      if (*v20)
      {
        v218 = *v20 + (v217 << 6);
        if (*v218)
        {
          heap_Free(a1[1], *v218);
          *v218 = 0;
        }

        v219 = *(v218 + 16);
        if (v219)
        {
          heap_Free(a1[1], v219);
          *(v218 + 16) = 0;
        }

        v220 = *(v218 + 24);
        if (v220)
        {
          heap_Free(a1[1], v220);
          *(v218 + 24) = 0;
        }

        v221 = *(v218 + 56);
        if (v221)
        {
          if (*(v218 + 54))
          {
            v222 = 0;
            v223 = 0;
            v224 = *(v218 + 56);
            do
            {
              if (v224)
              {
                if (*(v224 + v222))
                {
                  heap_Free(a1[1], *(v224 + v222));
                  v221 = *(v218 + 56);
                  *(v221 + v222) = 0;
                }

                if (*(v221 + v222 + 16))
                {
                  heap_Free(a1[1], *(v221 + v222 + 16));
                  v221 = *(v218 + 56);
                  *(v221 + v222 + 16) = 0;
                }

                v224 = v221;
                if (*(v221 + v222 + 8))
                {
                  heap_Free(a1[1], *(v221 + v222 + 8));
                  v221 = *(v218 + 56);
                  *(v221 + v222 + 8) = 0;
                  v224 = v221;
                }
              }

              ++v223;
              v222 += 32;
            }

            while (v223 < *(v218 + 54));
          }

          heap_Free(a1[1], v221);
          *(v218 + 56) = 0;
        }

        v225 = *(v218 + 40);
        if (v225)
        {
          if (*(v218 + 50))
          {
            v226 = 0;
            v227 = 0;
            v228 = *(v218 + 40);
            do
            {
              if (v228)
              {
                if (*(v228 + v226))
                {
                  heap_Free(a1[1], *(v228 + v226));
                  v225 = *(v218 + 40);
                  *(v225 + v226) = 0;
                }

                if (*(v225 + v226 + 8))
                {
                  heap_Free(a1[1], *(v225 + v226 + 8));
                  v225 = *(v218 + 40);
                  *(v225 + v226 + 8) = 0;
                }

                v228 = v225;
                if (*(v225 + v226 + 24))
                {
                  heap_Free(a1[1], *(v225 + v226 + 24));
                  v225 = *(v218 + 40);
                  *(v225 + v226 + 24) = 0;
                  v228 = v225;
                }
              }

              ++v227;
              v226 += 40;
            }

            while (v227 < *(v218 + 50));
          }

          heap_Free(a1[1], v225);
          *(v218 + 40) = 0;
        }
      }

      ++v217;
    }

    while (v217 < *(v20 + 8));
  }

  if (*v20)
  {
    heap_Free(a1[1], *v20);
  }

  *v20 = 0;
  *(v20 + 8) = 0;
  heap_Free(a1[1], v20);
  return UTF8Char;
}

uint64_t stress_addWord(uint64_t a1, char *__s, __int16 a3, int a4, int a5, const char *a6, uint64_t a7, const char *a8, uint64_t a9)
{
  v17 = *(a9 + 10);
  if (!*(a9 + 10))
  {
    v21 = heap_Calloc(*(a1 + 8), 1, 3201);
    *a9 = v21;
    if (v21)
    {
      v18 = v21;
      v133 = a3;
      v134 = a4;
      v19 = a5;
      v20 = a8;
      *(a9 + 10) = 50;
      goto LABEL_8;
    }

LABEL_69:
    v51 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    return v51;
  }

  v18 = *a9;
  if (*(a9 + 8) < v17)
  {
    v133 = a3;
    v134 = a4;
    v19 = a5;
    v20 = a8;
    goto LABEL_8;
  }

  v22 = heap_Realloc(*(a1 + 8), *a9, (v17 << 6) + 1280);
  if (!v22)
  {
    goto LABEL_69;
  }

  v133 = a3;
  v134 = a4;
  v19 = a5;
  v20 = a8;
  *a9 = v22;
  bzero((v22 + (*(a9 + 8) << 6)), 0x500uLL);
  *(a9 + 10) += 20;
  v18 = *a9;
LABEL_8:
  v23 = v18 + (*(a9 + 8) << 6);
  v24 = strlen(__s);
  v25 = heap_Calloc(*(a1 + 8), 1, (v24 + 4));
  *v23 = v25;
  if (!v25)
  {
    goto LABEL_38;
  }

  strcpy(v25, __s);
  v26 = strlen(a6);
  v27 = heap_Calloc(*(a1 + 8), 1, (v26 + 1));
  *(v23 + 16) = v27;
  if (!v27)
  {
    goto LABEL_38;
  }

  strcpy(v27, a6);
  v28 = v20;
  v29 = strlen(v20);
  v30 = heap_Calloc(*(a1 + 8), 1, (v29 + 1));
  *(v23 + 24) = v30;
  if (!v30)
  {
    goto LABEL_38;
  }

  strcpy(v30, v20);
  v31 = *(a7 + 8);
  *(v23 + 54) = v31;
  v32 = heap_Calloc(*(a1 + 8), v31, 32);
  *(v23 + 56) = v32;
  if (!v32)
  {
    goto LABEL_38;
  }

  v126 = v19;
  if (*(a7 + 8))
  {
    v33 = 0;
    v131 = v20;
    while (1)
    {
      v34 = strlen(*(*a7 + 16 * v33));
      v35 = heap_Calloc(*(a1 + 8), 1, (v34 + 1));
      *(*(v23 + 56) + 32 * v33) = v35;
      if (!v35)
      {
        break;
      }

      strcpy(v35, *(*a7 + 16 * v33));
      v36 = strlen(v28);
      v37 = heap_Calloc(*(a1 + 8), 1, (v36 + 1));
      *(*(v23 + 56) + 32 * v33 + 16) = v37;
      if (!v37)
      {
        break;
      }

      strcpy(v37, v28);
      v38 = heap_Calloc(*(a1 + 8), 1, 4);
      v39 = *(v23 + 56) + 32 * v33;
      *(v39 + 8) = v38;
      if (!v38)
      {
        break;
      }

      v40 = v38;
      v41 = *(v39 + 16);
      if (!strcmp(v41, "normal") || !strcmp(v41, "mnx"))
      {
        v140 = 0;
        *__sa = 0;
        if (!*v40)
        {
          v43 = Utf8_Utf8NbrOfSymbols(*v39);
          if (v43 != 1)
          {
            v44 = 0;
            v45 = 0;
            v46 = (v43 - 1);
            do
            {
              v47 = v44;
              UTF8Char = utf8_getUTF8Char(*v39, v44, __sa);
              if ((UTF8Char & 0x80000000) != 0)
              {
                v51 = UTF8Char;
                if (v18)
                {
                  goto LABEL_39;
                }

                return v51;
              }

              if (__sa[0] == 46)
              {
                break;
              }

              v49 = strlen(__sa);
              v50 = __sa[0] - 54 < 0xFFFFFFFA || v49 > 1;
              if (!v50 && strlen(*(v39 + 8)) <= 2)
              {
                strcat(*(v39 + 8), __sa);
              }

              v44 = v47 + strlen(__sa);
              ++v45;
            }

            while (v45 < v46);
          }
        }

        v42 = *(v39 + 8);
        if (!*v42)
        {
          *v42 = 61;
        }

        v28 = v131;
      }

      else
      {
        *v40 = 61;
        v28 = v131;
      }

      *(*(v23 + 56) + 32 * v33++ + 24) = 0;
      if (v33 >= *(a7 + 8))
      {
        goto LABEL_71;
      }
    }

LABEL_38:
    v51 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    goto LABEL_39;
  }

LABEL_71:
  v138 = 0;
  *v137 = 0;
  v136 = 0;
  *v135 = 0;
  v63 = heap_Calloc(*(a1 + 8), 5, 40);
  *(v23 + 40) = v63;
  if (!v63)
  {
LABEL_136:
    v51 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    goto LABEL_137;
  }

  v64 = Utf8_Utf8NbrOfSymbols(*v23);
  v65 = 0;
  v66 = 0;
  v129 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v70 = v64 - 1;
  v71 = (v64 - 1);
  v125 = 5;
  v123 = v71;
  v124 = v64 - 1;
  do
  {
    v72 = v66;
    v73 = utf8_getUTF8Char(*v23, v66, v137);
    if ((v73 & 0x80000000) != 0)
    {
      goto LABEL_118;
    }

    if (v71 != v65 && v137[0] != 45)
    {
      goto LABEL_111;
    }

    v74 = heap_Calloc(*(a1 + 8), 1, (v72 - v129 + 1));
    v75 = v69;
    *(*(v23 + 40) + 40 * v69) = v74;
    if (!v74)
    {
      goto LABEL_136;
    }

    v127 = v67;
    v128 = v69;
    strncpy(v74, (*v23 + v129), (v72 - v129));
    *(*(*(v23 + 40) + 40 * v69) + (v72 - v129)) = 0;
    v132 = 5 * v69;
    v76 = *(v23 + 40) + 40 * v69;
    v140 = 0;
    *__sa = 0;
    v77 = Utf8_Utf8NbrOfSymbols(*v76);
    v78 = v77 - 1;
    if (v77 != 1)
    {
      v122 = v68;
      v79 = 0;
      v80 = 0;
      v81 = 0;
      while (1)
      {
        v82 = v79;
        v73 = utf8_getUTF8Char(*v76, v79, __sa);
        if ((v73 & 0x80000000) != 0)
        {
          goto LABEL_118;
        }

        IsChineseLetter = utf8_IsChineseLetter(__sa);
        v84 = isPunc(__sa);
        if (!v80 && !IsChineseLetter && !v84)
        {
          v78 = 1;
LABEL_87:
          v85 = v78 - v81;
          v68 = v122;
          goto LABEL_88;
        }

        v81 += v84;
        v79 = v82 + strlen(__sa);
        if (++v80 >= v78)
        {
          goto LABEL_87;
        }
      }
    }

    v85 = 0;
LABEL_88:
    *(v76 + 32) = v85;
    v86 = *(v23 + 40);
    v87 = v86 + 40 * v75;
    v88 = *(v87 + 32);
    v89 = *v87;
    v91 = 0;
    if (*v87)
    {
      v90 = strlen(*v87);
      if (v90)
      {
        if (strstr("',.:?!;()<>[]#$+-=^_|", &v89[v90 - 1]) || strstr("',.:?!;()<>[]#$+-=^_|", v89))
        {
          v91 = 1;
        }
      }
    }

    *(v86 + 8 * v132 + 16) = v91;
    v92 = strlen(v89);
    v93 = heap_Calloc(*(a1 + 8), 1, (v92 + 4));
    *(*(v23 + 40) + 8 * v132 + 24) = v93;
    if (!v93)
    {
      goto LABEL_136;
    }

    *v93 = 0;
    v94 = *(v23 + 40) + 40 * v75;
    if (*(v94 + 16) == 1)
    {
      v140 = 0;
      *__sa = 0;
      v95 = Utf8_Utf8NbrOfSymbols(*v94);
      if (v95 != 1)
      {
        v96 = 0;
        v97 = 0;
        v98 = (v95 - 1);
        while (1)
        {
          v99 = v96;
          v73 = utf8_getUTF8Char(*v94, v96, __sa);
          if ((v73 & 0x80000000) != 0)
          {
            break;
          }

          v100 = isPunc(__sa);
          v101 = utf8_IsChineseLetter(__sa);
          if (!v97 && !v101 && !v100)
          {
            v105 = strlen(*v94);
            strncpy(*(v94 + 24), *v94, (v105 - 1));
            goto LABEL_107;
          }

          if (!v100)
          {
            strcat(*(v94 + 24), __sa);
          }

          v96 = v99 + strlen(__sa);
          if (++v97 >= v98)
          {
            goto LABEL_107;
          }
        }

LABEL_118:
        v51 = v73;
        goto LABEL_137;
      }
    }

    else
    {
      strcpy(*(v94 + 24), *v94);
    }

LABEL_107:
    v68 += v88;
    v71 = v123;
    if (v137[0] != 45)
    {
      v69 = v128;
      v67 = v127;
      v70 = v124;
LABEL_111:
      v66 = v72 + strlen(v137);
      goto LABEL_112;
    }

    v69 = (v128 + 1);
    v102 = v125;
    v67 = v127;
    v70 = v124;
    if (v125 > (v128 + 1))
    {
      v66 = v72 + strlen(v137);
LABEL_116:
      v125 = v102;
      v129 = v66;
      goto LABEL_112;
    }

    v102 = (v125 + 3);
    v103 = heap_Realloc(*(a1 + 8), *(v23 + 40), 40 * (v125 + 3));
    if (!v103)
    {
      goto LABEL_136;
    }

    *(v23 + 40) = v103;
    v104 = v103 + 40 * (v128 + 1);
    *(v104 + 112) = 0;
    *(v104 + 80) = 0u;
    *(v104 + 96) = 0u;
    *(v104 + 48) = 0u;
    *(v104 + 64) = 0u;
    *(v104 + 16) = 0u;
    *(v104 + 32) = 0u;
    *v104 = 0u;
    v125 = (v125 + 3);
    v66 = v72 + strlen(v137);
    if (v137[0] == 45)
    {
      goto LABEL_116;
    }

LABEL_112:
    v65 = ++v67;
  }

  while (v67 <= v70);
  *(v23 + 50) = v125;
  *(v23 + 48) = v69 + 1;
  *(v23 + 52) = v68;
  v106 = Utf8_Utf8NbrOfSymbols(*(v23 + 16));
  v107 = 0;
  v108 = 0;
  v109 = 0;
  v110 = 0;
  v111 = 0;
  v112 = v106 - 1;
  v113 = (v106 - 1);
  v130 = v113;
  while (1)
  {
    v114 = v108;
    v51 = utf8_getUTF8Char(*(v23 + 16), v108, v135);
    if ((v51 & 0x80000000) != 0)
    {
      break;
    }

    if (v113 == v107 || v135[0] == 45)
    {
      v115 = heap_Calloc(*(a1 + 8), 1, (v114 - v109 + 1));
      *(*(v23 + 40) + 40 * v111 + 8) = v115;
      if (!v115)
      {
        goto LABEL_136;
      }

      strncpy(v115, (*(v23 + 16) + v109), (v114 - v109));
      *(*(*(v23 + 40) + 40 * v111 + 8) + (v114 - v109)) = 0;
      v116 = strlen(v135);
      if (v135[0] == 45)
      {
        ++v111;
      }

      v108 = v114 + v116;
      if (v135[0] == 45)
      {
        v109 = v114 + v116;
      }

      v113 = v130;
    }

    else
    {
      v108 = v114 + strlen(v135);
    }

    v107 = ++v110;
    if (v110 > v112)
    {
      v117 = *(v23 + 24);
      if (!strcmp(v117, "normal") || !strcmp(v117, "mnx"))
      {
        *(a9 + 12) += *(v23 + 52);
      }

      *(v23 + 8) = v133;
      *(v23 + 10) = v134;
      *(v23 + 32) = v134 == v126;
      ++*(a9 + 8);
      return v51;
    }
  }

LABEL_137:
  v118 = *(v23 + 40);
  if (v118)
  {
    if (*(v23 + 50))
    {
      v119 = 0;
      v120 = 0;
      v121 = *(v23 + 40);
      do
      {
        if (v121)
        {
          if (*(v121 + v119))
          {
            heap_Free(*(a1 + 8), *(v121 + v119));
            v118 = *(v23 + 40);
            *(v118 + v119) = 0;
          }

          if (*(v118 + v119 + 8))
          {
            heap_Free(*(a1 + 8), *(v118 + v119 + 8));
            v118 = *(v23 + 40);
            *(v118 + v119 + 8) = 0;
          }

          v121 = v118;
          if (*(v118 + v119 + 24))
          {
            heap_Free(*(a1 + 8), *(v118 + v119 + 24));
            v118 = *(v23 + 40);
            *(v118 + v119 + 24) = 0;
            v121 = v118;
          }
        }

        ++v120;
        v119 += 40;
      }

      while (v120 < *(v23 + 50));
    }

    heap_Free(*(a1 + 8), v118);
    *(v23 + 40) = 0;
  }

LABEL_39:
  if (*v23)
  {
    heap_Free(*(a1 + 8), *v23);
    *v23 = 0;
  }

  v52 = *(v23 + 16);
  if (v52)
  {
    heap_Free(*(a1 + 8), v52);
    *(v23 + 16) = 0;
  }

  v53 = *(v23 + 24);
  if (v53)
  {
    heap_Free(*(a1 + 8), v53);
    *(v23 + 24) = 0;
  }

  v54 = *(v23 + 56);
  if (v54)
  {
    if (*(v23 + 54))
    {
      v55 = 0;
      v56 = 0;
      v57 = *(v23 + 56);
      do
      {
        if (v57)
        {
          if (*(v57 + v55))
          {
            heap_Free(*(a1 + 8), *(v57 + v55));
            v54 = *(v23 + 56);
            *(v54 + v55) = 0;
          }

          if (*(v54 + v55 + 16))
          {
            heap_Free(*(a1 + 8), *(v54 + v55 + 16));
            v54 = *(v23 + 56);
            *(v54 + v55 + 16) = 0;
          }

          v57 = v54;
          if (*(v54 + v55 + 8))
          {
            heap_Free(*(a1 + 8), *(v54 + v55 + 8));
            v54 = *(v23 + 56);
            *(v54 + v55 + 8) = 0;
            v57 = v54;
          }
        }

        ++v56;
        v55 += 32;
      }

      while (v56 < *(v23 + 54));
    }

    heap_Free(*(a1 + 8), v54);
    *(v23 + 56) = 0;
  }

  v58 = *(v23 + 40);
  if (v58)
  {
    if (*(v23 + 50))
    {
      v59 = 0;
      v60 = 0;
      v61 = *(v23 + 40);
      do
      {
        if (v61)
        {
          if (*(v61 + v59))
          {
            heap_Free(*(a1 + 8), *(v61 + v59));
            v58 = *(v23 + 40);
            *(v58 + v59) = 0;
          }

          if (*(v58 + v59 + 8))
          {
            heap_Free(*(a1 + 8), *(v58 + v59 + 8));
            v58 = *(v23 + 40);
            *(v58 + v59 + 8) = 0;
          }

          v61 = v58;
          if (*(v58 + v59 + 24))
          {
            heap_Free(*(a1 + 8), *(v58 + v59 + 24));
            v58 = *(v23 + 40);
            *(v58 + v59 + 24) = 0;
            v61 = v58;
          }
        }

        ++v60;
        v59 += 40;
      }

      while (v60 < *(v23 + 50));
    }

    heap_Free(*(a1 + 8), v58);
    *(v23 + 40) = 0;
  }

  return v51;
}

void *stat_stress_freeCandidatePhons(void *result, uint64_t a2)
{
  v3 = *a2;
  if (v3)
  {
    v4 = result;
    v5 = *(a2 + 8);
    if (*(a2 + 8))
    {
      v6 = 0;
      v7 = 0;
      v8 = v3;
      do
      {
        if (v8)
        {
          if (*(v8 + v6))
          {
            heap_Free(v4[1], *(v8 + v6));
            v3 = *a2;
            *(v3 + v6) = 0;
            v5 = *(a2 + 8);
            v8 = v3;
          }
        }

        ++v7;
        v6 += 16;
      }

      while (v7 < v5);
    }

    result = heap_Free(v4[1], v3);
    *a2 = 0;
  }

  return result;
}

BOOL isPunc(const char *a1)
{
  if (strlen(a1) > 1)
  {
    return 0;
  }

  v3 = *a1;
  result = 1;
  if ((v3 - 33) > 0x3E || ((1 << (v3 - 33)) & 0x740000007E003FCFLL) == 0)
  {
    return v3 == 124;
  }

  return result;
}

BOOL isERphon(unsigned __int8 *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = v4;
  if (v4 >= 2 && (v4 >= 5 && !strcmp(&__s[v4 - 5], "%~r") || !strcmp(&__s[v5 - 2], "%r")))
  {
    v7 = *__s;
    v6 = v7 != 97 && v7 != 36;
  }

  else
  {
    v6 = 0;
  }

  v10 = 0;
  utf8_Utf8CharTo16bit(a1, &v10);
  return v10 != 20799 && v6;
}

uint64_t fe_stress_igtr_isFeatureRequired(uint64_t a1, unsigned int a2, int a3, unsigned __int16 *a4)
{
  if (a2 < 2)
  {
    return 0;
  }

  v6 = 0;
  v7 = g_featureNames_1[a3];
  v8 = (a2 - 1);
  while (strcmp(*(a1 + 8 * v6), v7))
  {
    if (v8 <= ++v6)
    {
      return 0;
    }
  }

  *a4 = v6;
  return 1;
}

uint64_t fe_stress_feat_character(uint64_t a1, uint64_t *a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6, _BYTE *a7)
{
  v10 = *a2;
  v11 = a3;
  v50 = *a2 + (a3 << 6);
  v12 = *(v50 + 40);
  v49 = a4;
  v51 = strlen(v12[5 * a4]);
  if (a3)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = v10 + (v13 << 6);
      v16 = *(v15 + 48);
      if (*(v15 + 48))
      {
        v17 = *(v15 + 40);
        do
        {
          v18 = *v17;
          v17 += 5;
          v14 += strlen(v18);
          --v16;
        }

        while (v16);
      }

      ++v13;
    }

    while (v13 != v11);
  }

  else
  {
    v14 = 0;
  }

  if (a4)
  {
    v19 = v49;
    do
    {
      v20 = *v12;
      v12 += 5;
      v14 += strlen(v20);
      --v19;
    }

    while (v19);
  }

  v21 = *(a2 + 4);
  v22 = a3 + 1;
  if (v21 <= (a3 + 1))
  {
    v23 = 0;
  }

  else
  {
    v23 = 0;
    v24 = v22;
    do
    {
      v25 = v10 + (v24 << 6);
      v26 = *(v25 + 48);
      if (*(v25 + 48))
      {
        v27 = *(v25 + 40);
        do
        {
          v28 = *v27;
          v27 += 5;
          v23 += strlen(v28);
          --v26;
        }

        while (v26);
      }

      ++v24;
    }

    while (v21 != v24);
  }

  v29 = *(v50 + 48);
  if (v29 <= (a4 + 1))
  {
    v32 = a1;
  }

  else
  {
    v30 = (*(v50 + 40) + 40 * (a4 + 1));
    v31 = (a4 + 1) + 1;
    v32 = a1;
    do
    {
      v33 = *v30;
      v30 += 5;
      v23 += strlen(v33);
      v34 = v29 == v31++;
    }

    while (!v34);
  }

  v35 = heap_Calloc(*(v32 + 8), 1, (v51 + v14 + v23 + 1));
  if (!v35)
  {
    log_OutPublic(*(v32 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }

  v36 = v35;
  v37 = *(a2 + 4);
  v38 = *a2;
  if (*(a2 + 4))
  {
    v39 = 0;
    do
    {
      if (*(v38 + (v39 << 6) + 48))
      {
        v40 = 0;
        v41 = 0;
        do
        {
          strcat(v36, *(*(v38 + (v39 << 6) + 40) + v40));
          ++v41;
          v38 = *a2;
          v40 += 40;
        }

        while (v41 < *(*a2 + (v39 << 6) + 48));
        v37 = *(a2 + 4);
      }

      ++v39;
    }

    while (v39 < v37);
  }

  v42 = v38 + (v11 << 6);
  if (*(v42 + 48) <= a4 || strlen(*(*(v42 + 40) + 40 * v49)) <= a5)
  {
    goto LABEL_47;
  }

  NextUtf8Offset = v14 + a5;
  if (a6 < 0)
  {
    if (!NextUtf8Offset)
    {
      goto LABEL_47;
    }

    do
    {
      PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v36, NextUtf8Offset);
      NextUtf8Offset = PreviousUtf8Offset;
      v34 = ~a6 == 0;
      LOWORD(a6) = a6 + 1;
    }

    while (!v34 && PreviousUtf8Offset);
    if (a6)
    {
      goto LABEL_47;
    }
  }

  else if (a6)
  {
    while (NextUtf8Offset != strlen(v36))
    {
      NextUtf8Offset = utf8_GetNextUtf8Offset(v36, NextUtf8Offset);
      v44 = a6--;
      if (v44 <= 1)
      {
        goto LABEL_46;
      }
    }

    goto LABEL_47;
  }

LABEL_46:
  if ((utf8_getUTF8Char(v36, NextUtf8Offset, a7) & 0x80000000) != 0)
  {
LABEL_47:
    *a7 = 61;
  }

  heap_Free(*(v32 + 8), v36);
  return 0;
}

uint64_t fe_stress_igtr_setFeature(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, char *a6)
{
  v12 = -1;
  if (!fe_stress_igtr_isFeatureRequired(a2, a3, a4, &v12))
  {
    return 0;
  }

  if (*a6)
  {
    v9 = v12;
    if (strlen(a6) < 0x41)
    {
      v10 = 0;
    }

    else
    {
      v10 = hlp_resizeFeature(a1, (a5 + 8 * v12), a6);
      if ((v10 & 0x80000000) != 0)
      {
        return v10;
      }
    }

    strcpy(*(a5 + 8 * v9), a6);
  }

  else
  {
    v10 = 0;
    **(a5 + 8 * v12) = 61;
  }

  return v10;
}

const char *fe_stress_feat_phon(uint64_t *a1, uint64_t a2, int a3, int a4)
{
  v4 = *a1;
  v5 = a4 + a3;
  v6 = *(*a1 + (a2 << 6) + 54);
  if (a4 + a3 >= v6)
  {
    while (*(a1 + 4) - 1 > a2)
    {
      a4 -= v6;
      LOWORD(a2) = a2 + 1;
      v5 = a3 + a4;
      v6 = *(v4 + (a2 << 6) + 54);
      if (v5 < v6)
      {
        goto LABEL_6;
      }
    }

    v5 = a3 + a4;
  }

LABEL_6:
  if (a2 && (v5 & 0x80000000) != 0)
  {
    a2 = a2;
    v7 = (v4 + (a2 << 6) - 10);
    do
    {
      v8 = *v7;
      v7 -= 32;
      a4 += v8;
      v5 = a3 + a4;
      --a2;
    }

    while (a2 && (v5 & 0x80000000) != 0);
  }

  if ((v5 & 0x80000000) != 0)
  {
    return "=";
  }

  v9 = v4 + (a2 << 6);
  if (v5 >= *(v9 + 54))
  {
    return "=";
  }

  else
  {
    return *(*(v9 + 56) + 32 * v5);
  }
}

const char *fe_stress_feat_tone(uint64_t *a1, uint64_t a2, int a3, int a4)
{
  v4 = *a1;
  v5 = a4 + a3;
  v6 = *(*a1 + (a2 << 6) + 54);
  if (a4 + a3 >= v6)
  {
    while (*(a1 + 4) - 1 > a2)
    {
      a4 -= v6;
      LOWORD(a2) = a2 + 1;
      v5 = a3 + a4;
      v6 = *(v4 + (a2 << 6) + 54);
      if (v5 < v6)
      {
        goto LABEL_6;
      }
    }

    v5 = a3 + a4;
  }

LABEL_6:
  if (a2 && (v5 & 0x80000000) != 0)
  {
    a2 = a2;
    v7 = (v4 + (a2 << 6) - 10);
    do
    {
      v8 = *v7;
      v7 -= 32;
      a4 += v8;
      v5 = a3 + a4;
      --a2;
    }

    while (a2 && (v5 & 0x80000000) != 0);
  }

  if ((v5 & 0x80000000) != 0)
  {
    return "=";
  }

  v9 = v4 + (a2 << 6);
  if (v5 >= *(v9 + 54))
  {
    return "=";
  }

  else
  {
    return *(*(v9 + 56) + 32 * v5 + 8);
  }
}

const char *fe_stress_feat_word(uint64_t *a1, uint64_t a2, int a3, int a4)
{
  v4 = *a1;
  v5 = a4 + a3;
  v6 = *(*a1 + (a2 << 6) + 48);
  if (a4 + a3 >= v6)
  {
    while (*(a1 + 4) - 1 > a2)
    {
      a4 -= v6;
      LOWORD(a2) = a2 + 1;
      v5 = a3 + a4;
      v6 = *(v4 + (a2 << 6) + 48);
      if (v5 < v6)
      {
        goto LABEL_6;
      }
    }

    v5 = a3 + a4;
  }

LABEL_6:
  if (a2 && (v5 & 0x80000000) != 0)
  {
    a2 = a2;
    v7 = (v4 + (a2 << 6) - 16);
    do
    {
      v8 = *v7;
      v7 -= 32;
      a4 += v8;
      v5 = a3 + a4;
      --a2;
    }

    while (a2 && (v5 & 0x80000000) != 0);
  }

  if ((v5 & 0x80000000) != 0)
  {
    return "=";
  }

  v9 = v4 + (a2 << 6);
  if (v5 >= *(v9 + 48))
  {
    return "=";
  }

  else
  {
    return *(*(v9 + 40) + 40 * v5 + 24);
  }
}

const char *fe_stress_feat_pos(uint64_t *a1, uint64_t a2, int a3, int a4)
{
  v4 = *a1;
  v5 = a4 + a3;
  v6 = *(*a1 + (a2 << 6) + 48);
  if (a4 + a3 >= v6)
  {
    while (*(a1 + 4) - 1 > a2)
    {
      a4 -= v6;
      LOWORD(a2) = a2 + 1;
      v5 = a3 + a4;
      v6 = *(v4 + (a2 << 6) + 48);
      if (v5 < v6)
      {
        goto LABEL_6;
      }
    }

    v5 = a3 + a4;
  }

LABEL_6:
  if (a2 && (v5 & 0x80000000) != 0)
  {
    a2 = a2;
    v7 = (v4 + (a2 << 6) - 16);
    do
    {
      v8 = *v7;
      v7 -= 32;
      a4 += v8;
      v5 = a3 + a4;
      --a2;
    }

    while (a2 && (v5 & 0x80000000) != 0);
  }

  if ((v5 & 0x80000000) != 0)
  {
    return "=";
  }

  v9 = v4 + (a2 << 6);
  result = "=";
  if (v5 < *(v9 + 48))
  {
    v11 = *(*(v9 + 40) + 40 * v5 + 8);
    if (v11)
    {
      return v11;
    }
  }

  return result;
}

uint64_t last_POSNN(uint64_t result, uint64_t a2, unsigned int a3, const char **a4, unsigned int a5)
{
  if (!result)
  {
    return result;
  }

  v6 = 0;
  for (i = *(*(a2 + 1064) + 184 * a3 + 48) + 1; *(i - 1) == 45; ++i)
  {
    v6 = i;
LABEL_7:
    ;
  }

  if (*(i - 1))
  {
    goto LABEL_7;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = *(*(a2 + 1064) + 184 * a3 + 48);
  }

  if (!a5)
  {
    return 0;
  }

  v9 = a5;
  while (strcmp(*a4, v8))
  {
    ++a4;
    if (!--v9)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t first_POSNN(uint64_t a1, uint64_t a2, unsigned int a3, const char **a4, int a5)
{
  LODWORD(v5) = a5;
  v10 = *(a1 + 8);
  v11 = strlen(*(*(a2 + 1064) + 184 * a3 + 48));
  v12 = heap_Alloc(v10, (v11 + 1));
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = 0;
  for (i = *(*(a2 + 1064) + 184 * a3 + 48); ; ++i)
  {
    v16 = *i;
    if (!*i || v16 == 45)
    {
      break;
    }

    v17 = v14++;
    *(v12 + v17) = v16;
  }

  *(v12 + v14) = 0;
  if (v5)
  {
    v5 = v5;
    while (strcmp(v13, *a4))
    {
      ++a4;
      if (!--v5)
      {
        goto LABEL_10;
      }
    }

    v18 = 1;
  }

  else
  {
LABEL_10:
    v18 = 0;
  }

  heap_Free(*(a1 + 8), v13);
  return v18;
}

uint64_t has_POSNN(uint64_t a1, uint64_t a2, unsigned int a3, const char **a4, unsigned int a5)
{
  result = 0;
  if (a1 && a5)
  {
    v8 = *(*(a2 + 1064) + 184 * a3 + 48);
    v9 = a5;
    while (!strstr(v8, *a4))
    {
      ++a4;
      if (!--v9)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t first_characterNN(uint64_t result, uint64_t a2, unsigned int a3, const char **a4, int a5)
{
  if (result)
  {
    LODWORD(v5) = a5;
    utf8_getUTF8Char(*(*(a2 + 1064) + 184 * a3 + 48), 0, __s2);
    if (v5)
    {
      v5 = v5;
      while (strcmp(*a4, __s2))
      {
        ++a4;
        if (!--v5)
        {
          return 0;
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t last_characterNN(uint64_t result, uint64_t a2, unsigned int a3, const char **a4, int a5)
{
  v15 = 0;
  *__s2 = 0;
  if (result)
  {
    LODWORD(v5) = a5;
    v7 = *(*(a2 + 1064) + 184 * a3 + 48);
    v8 = strlen(v7);
    v9 = v8 - utf8_GetCurrentUtf8Offset(v7, v8 - 1);
    v10 = strlen(v7);
    CurrentUtf8Offset = utf8_GetCurrentUtf8Offset(v7, v10 - 1);
    if (v9 >= Utf8_LengthInBytes(&v7[CurrentUtf8Offset], 1))
    {
      v12 = strlen(v7);
      v13 = utf8_GetCurrentUtf8Offset(v7, v12 - 1);
      utf8_getUTF8Char(v7, v13, __s2);
    }

    if (v5)
    {
      v5 = v5;
      while (strcmp(*a4, __s2))
      {
        ++a4;
        if (!--v5)
        {
          return 0;
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t addPhrasingRuleNN(uint64_t a1, uint64_t a2, const char *a3)
{
  v6 = 1;
  for (i = a3; *i == 94; ++i)
  {
    ++v6;
LABEL_6:
    ;
  }

  if (*i)
  {
    goto LABEL_6;
  }

  v8 = heap_Calloc(*(a1 + 8), v6, 40);
  v9 = *a2 + 16 * *(a2 + 8);
  *v9 = v8;
  if (!v8)
  {
    return 2315264010;
  }

  *(v9 + 8) = v6;
  result = parseOneRuleNN(a1, v8, v6, a3);
  if ((result & 0x80000000) == 0)
  {
    result = 0;
    ++*(a2 + 8);
  }

  return result;
}

uint64_t parseOneRuleNN(uint64_t a1, uint64_t a2, unsigned int a3, const char *a4)
{
  for (i = 0; ; ++i)
  {
    v7 = &a4[i];
    if (__PAIR64__(*(v7 + 1), *v7) == 0x2D0000002DLL && v7[2] == 62)
    {
      break;
    }
  }

  *v7 = 0;
  if (!a3)
  {
    return 0;
  }

  v8 = 0;
  v9 = a3;
  while (2)
  {
    v10 = a4 - 1;
    do
    {
      v12 = *++v10;
      v11 = v12;
    }

    while (v12 == 32);
    v13 = v10;
    while (v11 != 95)
    {
      v14 = *++v13;
      v11 = v14;
    }

    *v13 = 0;
    v15 = a2 + 40 * v8;
    *(v15 + 8) = atoi(v10);
    do
    {
      v17 = *++v13;
      v16 = v17;
    }

    while (v17 == 32);
    v18 = v13;
    while (v16 != 40)
    {
      v19 = *++v18;
      v16 = v19;
    }

    *v18 = 0;
    if (!strcmp(v13, "last-pos"))
    {
      *v15 = last_POSNN;
    }

    if (!strcmp(v13, "first-pos"))
    {
      *v15 = first_POSNN;
    }

    if (!strcmp(v13, "has-pos"))
    {
      *v15 = has_POSNN;
    }

    if (!strcmp(v13, "first-character"))
    {
      *v15 = first_characterNN;
    }

    if (!strcmp(v13, "last-character"))
    {
      *v15 = last_characterNN;
    }

    *(v15 + 32) = 1;
    do
    {
      v21 = *++v18;
      v20 = v21;
    }

    while (v21 == 32);
    v22 = 0;
    v23 = 1;
    while (v20 == 124)
    {
      *(v15 + 32) = ++v23;
LABEL_34:
      v20 = v18[++v22];
    }

    if (v20 != 41)
    {
      goto LABEL_34;
    }

    v18[v22] = 0;
    v24 = &v18[v22 + 1];
    v25 = heap_Alloc(*(a1 + 8), (v22 + 2));
    *(v15 + 16) = v25;
    if (v25)
    {
      strcpy(v25, v18);
      v26 = heap_Alloc(*(a1 + 8), 8 * *(v15 + 32));
      *(v15 + 24) = v26;
      if (v26)
      {
        *v26 = *(v15 + 16);
        if (*(v15 + 32) >= 2u)
        {
          v27 = 1;
          do
          {
            v28 = (*(v15 + 24) + 8 * v27);
            for (j = *(v28 - 1); ; j = v30 + 1)
            {
              *v28 = j;
              v28 = (*(v15 + 24) + 8 * v27);
              v30 = *v28;
              if (**v28 == 124)
              {
                break;
              }
            }

            *v28 = v30 + 1;
            *v30 = 0;
            ++v27;
          }

          while (v27 < *(v15 + 32));
        }

        while (1)
        {
          v31 = *v24;
          if (!*v24 || v31 == 94)
          {
            break;
          }

          ++v24;
        }

        if (v31 == 94)
        {
          a4 = v24 + 1;
        }

        else
        {
          a4 = v24;
        }

        if (++v8 == v9)
        {
          return 0;
        }

        continue;
      }
    }

    return 2315264010;
  }
}

uint64_t releasePhrasingRuleStructNN(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (v3)
  {
    v5 = *(a2 + 10);
    if (*(a2 + 10))
    {
      v6 = 0;
      do
      {
        v7 = v3 + 16 * v6;
        v8 = *v7;
        if (*v7)
        {
          if (*(v7 + 8))
          {
            v9 = 0;
            v10 = 0;
            do
            {
              if (*(*v7 + v9 + 16))
              {
                heap_Free(*(a1 + 8), *(*v7 + v9 + 16));
                v3 = *a2;
              }

              if (*(*(v3 + 16 * v6) + v9 + 24))
              {
                heap_Free(*(a1 + 8), *(*(v3 + 16 * v6) + v9 + 24));
                v3 = *a2;
              }

              ++v10;
              v7 = v3 + 16 * v6;
              v9 += 40;
            }

            while (v10 < *(v7 + 8));
            v8 = *v7;
          }

          heap_Free(*(a1 + 8), v8);
          v3 = *a2;
          *(*a2 + 16 * v6) = 0;
          v5 = *(a2 + 10);
        }

        ++v6;
      }

      while (v6 < v5);
    }

    heap_Free(*(a1 + 8), v3);
  }

  *(a2 + 10) = 0;
  *a2 = 0;
  return 0;
}

uint64_t com_IncludeCRF(uint64_t a1, uint64_t a2, uint64_t a3, _BOOL4 *a4)
{
  __s1 = 0;
  CfgParamVal = com_mosynt_GetCfgParamVal(a1, a2, a3, "statbnd_include", "NO", &__s1);
  if ((CfgParamVal & 0x80000000) != 0)
  {
    v7 = 0;
  }

  else
  {
    v6 = __s1;
    v7 = !strcmp(__s1, "CRF") || strcmp(v6, "crf") == 0;
  }

  *a4 = v7;
  return CfgParamVal;
}

uint64_t pandpCrfInit(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v83[4] = *MEMORY[0x1E69E9840];
  *(a11 + 224) = 0;
  v17 = (a11 + 224);
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v18 = hlp_BrokerString(a5, &v67, "crfphrase");
  if (v18 < 0)
  {
    v24 = v18;
    v20 = a5;
    log_OutText(*(a5 + 32), "FE_PHRASING", 0, 0, "Could not assemble broker string for CRF phrasing model %s");
    goto LABEL_7;
  }

  v19 = a1;
  v20 = a5;
  v21 = v19;
  Only_ReferenceCnt = crf_Init_ReadOnly_ReferenceCnt(v19, a2, a3, a4, v17, 2, &v67, "CRPH", 1031, 0, 0);
  if (Only_ReferenceCnt < 0)
  {
    v24 = Only_ReferenceCnt;
    log_OutText(*(v20 + 32), "FE_PHRASING", 5, 0, "no CRF Phrasing model found");
LABEL_7:
    v25 = v24 | 0x8A002000;
    if (*v17)
    {
      crf_Deinit_ReadOnly_DereferenceCnt(v20, a6, *v17);
      *v17 = 0;
    }

    return v25;
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v64 = 0;
  __c = 0;
  v61 = 0;
  *v62 = 0;
  v83[0] = 0;
  v65 = 0;
  v66 = 0;
  if ((com_mosynt_GetCfgParamVal(a9, a10, a7, "fephrase_max_rule", "1024", &v61) & 0x80000000) != 0)
  {
    v23 = 1024;
  }

  else
  {
    v23 = atoi(v61);
  }

  v26 = a11;
  v27 = v20;
  v28 = heap_Calloc(*(v20 + 8), 1, v23);
  if (v28)
  {
    v29 = v28;
    v30 = hlp_BrokerString(v20, &v67, "sprules");
    v31 = *(v20 + 32);
    if (v30 < 0)
    {
      log_OutText(v31, "FE_PHRASING", 0, 0, "Could not assemble broker string for SP rules %s", "sprules");
      v45 = v30 | 0x8A002000;
    }

    else
    {
      log_OutText(v31, "FE_PHRASING", 5, 0, "looking for SP rules %s at %s", "sprules", &v67);
      v32 = ssftriff_reader_ObjOpen(v21, a2, 2, &v67, "SPDT", 1031, &v65);
      if (v32 < 0)
      {
        v45 = v32;
        log_OutText(*(v20 + 32), "FE_PHRASING", 0, 0, "no sp rules");
        *(a11 + 242) = 0;
        *(a11 + 232) = 0;
      }

      else
      {
        while (1)
        {
          v33 = ssftriff_reader_OpenChunk(v65, &__c, &v62[1], v83);
          if (v33 < 0)
          {
            break;
          }

          if (!(__c ^ 0x52545344 | v64))
          {
            ChunkData = ssftriff_reader_GetChunkData(v65, v62[1], &v66);
            if (ChunkData < 0)
            {
              goto LABEL_41;
            }

            v62[0] = 0;
            ssftriff_reader_ReadStringZ(v65, v66, v62[1], 0, 0, v62);
            ssftriff_reader_ReadStringZ(v65, v66, v62[1], 0, v29, v62);
            v35 = strchr(v29, 10);
            if (v35)
            {
              *v35 = 0;
            }

            v36 = strchr(v29, 58);
            v37 = v36 ? atoi(v36 + 2) : 0;
            v38 = v62[0];
            ChunkData = initPhrasingRuleStruct(v27, a11 + 232, v37);
            if (ChunkData < 0)
            {
              goto LABEL_41;
            }

            if (v37)
            {
              v39 = v37;
              v40 = 0;
              while (1)
              {
                do
                {
                  v62[0] = 0;
                  ssftriff_reader_ReadStringZ(v65, v66, v62[1], v38, 0, v62);
                  ssftriff_reader_ReadStringZ(v65, v66, v62[1], v38, v29, v62);
                  v38 += v62[0];
                  v41 = v29 + 1;
                  for (i = v29; ; ++i)
                  {
                    v43 = *i;
                    if (v43 > 0x23)
                    {
                      goto LABEL_33;
                    }

                    if (((1 << v43) & 0x100000200) == 0)
                    {
                      break;
                    }

                    ++v41;
                  }
                }

                while (((1 << v43) & 0x800002401) != 0);
LABEL_33:
                while (v43)
                {
                  if (v43 == 35)
                  {
                    *(v41 - 1) = 0;
                    break;
                  }

                  v44 = *v41++;
                  LOBYTE(v43) = v44;
                }

                ChunkData = addPhrasingRule(v27, a11 + 232, v29);
                if (ChunkData < 0)
                {
                  break;
                }

                if (++v40 >= v39)
                {
                  goto LABEL_15;
                }
              }

LABEL_41:
              v45 = ChunkData;
              goto LABEL_42;
            }
          }

LABEL_15:
          ChunkData = ssftriff_reader_CloseChunk(v65);
          if (ChunkData < 0)
          {
            goto LABEL_41;
          }
        }

        if ((v33 & 0x1FFF) == 0x14)
        {
          v45 = 0;
        }

        else
        {
          v45 = v33;
        }

LABEL_42:
        v26 = a11;
      }
    }

    if (v65)
    {
      v46 = ssftriff_reader_ObjClose(v65);
      if (v46 < 0 && v45 > -1)
      {
        v45 = v46;
      }
    }

    heap_Free(*(v27 + 8), v29);
    if ((v45 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }
  }

  else
  {
    log_OutPublic(*(v20 + 32), "FE_PHRASING", 37000, 0);
  }

  releasePhrasingRuleStruct(v27, v26 + 232);
LABEL_52:
  v48 = 0;
  v65 = 0;
  v66 = 0;
  LOWORD(v61) = -1;
  LOBYTE(__c) = 0;
  *(v26 + 250) = 0u;
  *(v26 + 266) = 0u;
  *(v26 + 282) = 0u;
  *(v26 + 298) = 0u;
  *(v26 + 314) = 0u;
  v83[0] = "JOY_KEYS";
  v83[1] = "DID_KEYS";
  v83[2] = "NEU_KEYS";
  v83[3] = "COM_KEYS";
  while (1)
  {
    strcpy(&v67, "statbnd_");
    __strcat_chk();
    LOWORD(v61) = 0;
    if (((*(a7 + 96))(a9, a10, "fecfg", &v67, &v66, &v61, &__c) & 0x80000000) != 0 || !v61)
    {
      return 0;
    }

    v49 = *v66;
    v50 = strchr(*v66, __c);
    if (v50)
    {
      *v50 = 0;
      v49 = *v66;
    }

    v51 = *v49;
    if (*v49)
    {
      break;
    }

    v52 = 0;
LABEL_78:
    if (++v48 == 4)
    {
      *(a11 + 248) = v52;
      return 0;
    }
  }

  v52 = 0;
  while (1)
  {
    for (j = 0; v51; v51 = v49[++j])
    {
      if (v51 == 44)
      {
        break;
      }
    }

    strcpy(&v67, "statbnd_");
    __strncat_chk();
    LOWORD(v61) = 0;
    v54 = (*(a7 + 96))(a9, a10, "fecfg", &v67, &v65, &v61, &__c);
    if ((v54 & 0x80000000) != 0)
    {
      return v54;
    }

    if (v61)
    {
      v55 = *v65;
      v56 = strchr(*v65, __c);
      if (v56)
      {
        *v56 = 0;
        v55 = *v65;
      }

      v57 = atoi(v55);
      v58 = v26 + 250;
      if (v48)
      {
        v58 = v26 + 270;
        if (v48 != 1)
        {
          v58 = v26 + 310;
        }

        if (v48 == 2)
        {
          v58 = v26 + 290;
        }
      }

      *(v58 + 2 * v52) = v57;
    }

    if (v49[j] == 44)
    {
      v49 += j + 1;
    }

    else
    {
      v49 += j;
    }

    ++v52;
    v51 = *v49;
    if (!*v49)
    {
      goto LABEL_78;
    }
  }
}

uint64_t pandpCrfDeinit(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = *(a3 + 224);
    if (v5)
    {
      crf_Deinit_ReadOnly_DereferenceCnt(result, a2, v5);
      *(a3 + 224) = 0;
    }

    return releasePhrasingRuleStruct(v4, a3 + 232);
  }

  return result;
}

uint64_t crfWeakPhrasing(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v141 = 0;
  v140 = 0;
  v139 = 0;
  if ((com_mosynt_GetCfgParamVal(a2, a3, a1, "fephrase_max_char", "6", &v139) & 0x80000000) != 0)
  {
    v15 = 6;
  }

  else
  {
    v15 = atoi(v139);
  }

  if ((com_mosynt_GetCfgParamVal(a2, a3, a1, "fephrase_max_pos", "6", &v139) & 0x80000000) != 0)
  {
    v16 = 6;
  }

  else
  {
    v16 = atoi(v139);
  }

  v131 = a6;
  if ((com_mosynt_GetCfgParamVal(a2, a3, a1, "fephrase_max_obs", "1024", &v139) & 0x80000000) != 0)
  {
    v17 = 1024;
  }

  else
  {
    v17 = atoi(v139);
  }

  v132 = v17;
  v18 = heap_Calloc(*(a4 + 8), 1, v15);
  v19 = heap_Calloc(*(a4 + 8), 1, v15);
  v20 = heap_Calloc(*(a4 + 8), 2, v15);
  v21 = heap_Calloc(*(a4 + 8), 1, v15);
  v22 = heap_Calloc(*(a4 + 8), 1, v15);
  v23 = v15;
  v24 = v22;
  v25 = heap_Calloc(*(a4 + 8), 2, v23);
  v133 = heap_Calloc(*(a4 + 8), 1, v16);
  v135 = heap_Calloc(*(a4 + 8), 1, v16);
  if (!v18 || !v19 || !v20 || !v21 || !v24 || !v25 || !v133 || !v135)
  {
    goto LABEL_102;
  }

  v127 = v18;
  *v18 = 0;
  *v19 = 0;
  *v20 = 0;
  *v21 = 0;
  *v24 = 0;
  *v25 = 0;
  if (a5 | a7)
  {
    log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "Parameter errors: %s %s\n", "level0", "rules");
  }

  v26 = v131;
  v27 = heap_Calloc(*(a4 + 8), *(v131 + 8), 8);
  if (v27 && (v28 = v27, v122 = v19, (v29 = heap_Calloc(*(a4 + 8), *(v131 + 8), 8)) != 0) && (v30 = v29, (v31 = heap_Calloc(*(a4 + 8), *(v131 + 8), 4)) != 0))
  {
    v32 = v31;
    v126 = v20;
    v121 = v21;
    v119 = v24;
    if (*(v131 + 8))
    {
      v116 = v28;
      v33 = 0;
      v112 = 0;
      v128 = v25;
      while (1)
      {
        v137 = 0;
        __lasts = 0;
        v136 = 0;
        v34 = strlen(*(*v26 + 224 * v33 + 8));
        v129 = heap_Alloc(*(a4 + 8), (v34 + 2));
        if (!v129)
        {
          goto LABEL_102;
        }

        extractAndConvertTones(a4, *(*v26 + 224 * v33 + 8), v129);
        v35 = strlen(v129);
        if (v35)
        {
          v117 = v129[v35 - 1];
          v118 = *v129;
        }

        else
        {
          v117 = 48;
          v118 = 48;
        }

        v25 = v128;
        v130 = v33;
        v36 = *(*(*v26 + 224 * v33 + 16) + 8);
        if (!strcmp(v36, "{T:comma}"))
        {
          *v36 = 103;
        }

        __dst = heap_Alloc(*(a4 + 8), v132);
        if (!__dst || (v37 = heap_Alloc(*(a4 + 8), v132)) == 0)
        {
LABEL_104:
          v93 = 2315264010;
          log_OutPublic(*(a4 + 32), "FE_PHRASING", 37000, 0);
          LODWORD(v95) = *(v26 + 8);
LABEL_118:
          v20 = v126;
          v28 = v116;
          goto LABEL_119;
        }

        v38 = v37;
        v39 = *(*v26 + 224 * v33 + 16);
        if (**v39 == 45 && !(*v39)[1])
        {
          v61 = a8;
          if (*(*(a8 + 224) + 32))
          {
            v62 = __dst;
            sprintf(__dst, "%s %d %s %s %s %s %s %s %s %s %s %s %s %s %d %d %s %s %d", "-", 1, v39[1], v129, "-", "-", "-", "-", "NULL", "NULL", "-", "-", v39[1], v39[1], 1, 1, v129, v129, 1);
            v63 = strtok_r(__dst, " ", &v136);
            *v38 = 0;
            v20 = v126;
            if (v63)
            {
              v64 = v63;
              v65 = 0;
              do
              {
                v66 = *(*(*(a8 + 224) + 32) + 8);
                if (v66[v65] == 49)
                {
                  v67 = strlen(v66) - 1;
                  *&v38[strlen(v38)] = 32;
                  strcat(v38, v64);
                  v68 = v67 == v65;
                  v20 = v126;
                  if (!v68)
                  {
                    *&v38[strlen(v38)] = 32;
                  }
                }

                ++v65;
                v64 = strtok_r(0, " ", &v136);
              }

              while (v64);
            }

            strcpy(__dst, v38);
            v33 = v130;
          }

          else
          {
            v62 = __dst;
            strcpy(__dst, "- 1 ");
            v87 = strcat(__dst, *(*(*v26 + 224 * v33 + 16) + 8));
            *&__dst[strlen(v87)] = 32;
            v88 = strcat(__dst, v129);
            strcpy(&__dst[strlen(v88)], " 1 - - NULL NULL");
            v20 = v126;
          }

          v89 = strlen(v62);
          v90 = heap_Alloc(*(a4 + 8), (v89 + 1));
          v116[v33] = v90;
          if (!v90)
          {
            goto LABEL_102;
          }

          strcpy(v90, v62);
          v124 = v129;
          goto LABEL_96;
        }

        v40 = heap_Alloc(*(a4 + 8), v132);
        if (!v40)
        {
          goto LABEL_104;
        }

        v41 = v40;
        v42 = strlen(*(*(*v26 + 224 * v130 + 16) + 8));
        v124 = heap_Alloc(*(a4 + 8), (v42 + 2));
        if (!v124)
        {
          goto LABEL_104;
        }

        *v41 = 0;
        strcpy(v124, *(*(*v26 + 224 * v130 + 16) + 8));
        v43 = strtok_r(**(*v26 + 224 * v130 + 16), "-", &__lasts);
        v44 = strtok_r(*(*(*v26 + 224 * v130 + 16) + 8), "-", &v137);
        v45 = strlen(v43);
        v125 = heap_Alloc(*(a4 + 8), (v45 + 2));
        if (!v125)
        {
          goto LABEL_104;
        }

        v46 = heap_Alloc(*(a4 + 8), v132);
        if (!v46)
        {
          goto LABEL_104;
        }

        v47 = v46;
        strcpy(v125, v43);
        if (v44)
        {
          strcpy(v133, v44);
        }

        else
        {
          strcpy(v133, "NULL");
        }

        v48 = strlen(v125);
        v114 = Utf8_LengthInUtf8chars(v125, v48);
        if (v43)
        {
          v49 = 0;
          do
          {
            strcat(v41, v43);
            strcpy(v47, v43);
            v43 = strtok_r(0, "-", &__lasts);
            if (v44)
            {
              strcpy(v135, v44);
            }

            else
            {
              strcpy(v135, "NULL");
            }

            if (v137)
            {
              v44 = strtok_r(0, "-", &v137);
            }

            ++v49;
          }

          while (v43);
          v115 = v49;
        }

        else
        {
          v115 = 0;
        }

        v50 = v128;
        v51 = strlen(v47);
        v113 = Utf8_LengthInUtf8chars(v47, v51);
        strcpy(**(*v131 + 224 * v130 + 16), v41);
        v52 = strlen(v41);
        v53 = Utf8_LengthInUtf8chars(v41, v52);
        utf8_getUTF8Char(v41, 0, v127);
        v54 = strlen(v41);
        CurrentUtf8Offset = utf8_GetCurrentUtf8Offset(v41, v54 - 1);
        utf8_getUTF8Char(v41, CurrentUtf8Offset, v121);
        v56 = v53;
        v120 = v53;
        if (v53 >= 3u)
        {
          break;
        }

        if (v53 == 2)
        {
          v60 = v126;
          strcpy(v126, v41);
          strcpy(v128, v41);
          goto LABEL_56;
        }

        v60 = v126;
        strcpy(v126, "NULL");
        strcpy(v128, "NULL");
LABEL_66:
        v26 = v131;
        v61 = a8;
        if (*(*(a8 + 224) + 32))
        {
          sprintf(__dst, "%s %d %s %s %s %s %s %s %s %s %s %s %s %s %d %d %c %c %d", v41, v56, v124, v129, v127, v121, v122, v119, v60, v50, v125, v47, v133, v135, v114, v113, v118, v117, v115);
          v69 = strtok_r(__dst, " ", &v136);
          *v38 = 0;
          if (v69)
          {
            v70 = v69;
            v71 = 0;
            do
            {
              v72 = *(*(*(v61 + 224) + 32) + 8);
              if (v72[v71] == 49)
              {
                v73 = strlen(v72) - 1;
                *&v38[strlen(v38)] = 32;
                strcat(v38, v70);
                v68 = v73 == v71;
                v61 = a8;
                if (!v68)
                {
                  *&v38[strlen(v38)] = 32;
                }
              }

              ++v71;
              v70 = strtok_r(0, " ", &v136);
            }

            while (v70);
          }

          v74 = __dst;
          strcpy(__dst, v38);
        }

        else
        {
          v111 = v50;
          v74 = __dst;
          sprintf(__dst, "%s %d %s %s %d %s %s %s %s", v41, v56, v124, v129, v115, v127, v121, v60, v111);
        }

        log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "Crf Phrasing Obversation: %s", v74);
        v75 = strlen(v74);
        v76 = heap_Alloc(*(a4 + 8), (v75 + 1));
        v116[v130] = v76;
        v20 = v126;
        if (!v76)
        {
          goto LABEL_102;
        }

        strcpy(v76, v74);
        v77 = *(*v131 + 224 * v130 + 136);
        if (v77)
        {
          v78 = *v77;
          if (v78 == 83)
          {
            v79 = v120;
            if (v77[1])
            {
              goto LABEL_90;
            }

            v80 = v130;
            *(v32 + 4 * v130) = 1;
            v92 = heap_Calloc(*(a4 + 8), 1, 8);
            *(v30 + 8 * v130) = v92;
            if (!v92)
            {
              goto LABEL_102;
            }

            **(v30 + 8 * v130) = heap_Calloc(*(a4 + 8), 2, 1);
            v82 = **(v30 + 8 * v130);
            if (!v82)
            {
              goto LABEL_102;
            }

            v83 = 83;
LABEL_101:
            *v82 = v83;
            v86 = v120;
          }

          else
          {
            v79 = v120;
            if (v78 == 69)
            {
              if (v77[1])
              {
                goto LABEL_90;
              }

              v80 = v130;
              *(v32 + 4 * v130) = 1;
              v84 = heap_Calloc(*(a4 + 8), 1, 8);
              *(v30 + 8 * v130) = v84;
              if (!v84)
              {
                goto LABEL_102;
              }

              **(v30 + 8 * v130) = heap_Calloc(*(a4 + 8), 2, 1);
              v85 = **(v30 + 8 * v130);
              if (!v85)
              {
                goto LABEL_102;
              }

              v86 = v120 + v112;
              *v85 = 69;
            }

            else
            {
              if (v78 == 66 && !v77[1])
              {
                v80 = v130;
                *(v32 + 4 * v130) = 1;
                v81 = heap_Calloc(*(a4 + 8), 1, 8);
                *(v30 + 8 * v130) = v81;
                if (!v81)
                {
                  goto LABEL_102;
                }

                **(v30 + 8 * v130) = heap_Calloc(*(a4 + 8), 2, 1);
                v82 = **(v30 + 8 * v130);
                if (!v82)
                {
                  goto LABEL_102;
                }

                v83 = 66;
                goto LABEL_101;
              }

LABEL_90:
              v86 = v79 + v112;
              v80 = v130;
              *(v32 + 4 * v130) = 0;
              *(v30 + 8 * v130) = 0;
            }
          }

          *(*v131 + 224 * v80 + 144) = v86;
          v112 = v86;
          goto LABEL_92;
        }

        *(v32 + 4 * v130) = 0;
        *(v30 + 8 * v130) = 0;
LABEL_92:
        heap_Free(*(a4 + 8), v129);
        heap_Free(*(a4 + 8), v41);
        heap_Free(*(a4 + 8), v125);
        heap_Free(*(a4 + 8), v47);
        heap_Free(*(a4 + 8), __dst);
        heap_Free(*(a4 + 8), v38);
LABEL_96:
        v25 = v128;
        heap_Free(*(a4 + 8), v124);
        v33 = v130 + 1;
        v91 = *(v26 + 8);
        if (v130 + 1 >= v91)
        {
          v28 = v116;
          goto LABEL_106;
        }
      }

      v57 = strlen(v127);
      utf8_getUTF8Char(v41, v57, v122);
      v58 = strlen(v41);
      PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v41, v58 - 1);
      utf8_getUTF8Char(v41, PreviousUtf8Offset, v119);
      v60 = strcpy(v126, v127);
      strcat(v60, v122);
      v50 = v128;
      strcpy(v128, v119);
      strcat(v128, v121);
LABEL_56:
      v56 = v120;
      goto LABEL_66;
    }

    LODWORD(v91) = 0;
    v61 = a8;
LABEL_106:
    v93 = crf_Process_Constrained(*(v61 + 224), v28, v91, &v141, &v140, v30, v32);
    LODWORD(v95) = *(v26 + 8);
    if ((v93 & 0x80000000) != 0)
    {
LABEL_119:
      if (v95)
      {
        v101 = 0;
        do
        {
          v102 = v28[v101];
          if (v102)
          {
            heap_Free(*(a4 + 8), v102);
            LODWORD(v95) = *(v26 + 8);
          }

          ++v101;
        }

        while (v101 < v95);
      }
    }

    else if (*(v26 + 8))
    {
      v116 = v28;
      v96 = 0;
      v97 = v141;
      v98 = 73;
      while (1)
      {
        log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "returned labels: %s\n", *(v97 + 8 * v96));
        v97 = v141;
        v99 = **(v141 + 8 * v96);
        v100 = 1;
        if (v99 <= 0x4C)
        {
          break;
        }

        if (v99 == 77)
        {
          goto LABEL_116;
        }

        if (v99 == 83)
        {
          goto LABEL_115;
        }

LABEL_117:
        ++v96;
        v95 = *(v26 + 8);
        v98 += 224;
        if (v96 >= v95)
        {
          goto LABEL_118;
        }
      }

      if (v99 != 66)
      {
        if (v99 != 69)
        {
          goto LABEL_117;
        }

LABEL_115:
        v100 = 3;
      }

LABEL_116:
      *(*v26 + v98) = v100;
      goto LABEL_117;
    }

    heap_Free(*(a4 + 8), v28);
    v103 = *(v26 + 8);
    if (*(v26 + 8))
    {
      v104 = 0;
      do
      {
        v105 = *(v30 + 8 * v104);
        if (v105)
        {
          if (*(v32 + 4 * v104))
          {
            v106 = 0;
            do
            {
              heap_Free(*(a4 + 8), *(*(v30 + 8 * v104) + 8 * v106++));
            }

            while (*(v32 + 4 * v104) > v106);
            v105 = *(v30 + 8 * v104);
          }

          heap_Free(*(a4 + 8), v105);
          v103 = *(v26 + 8);
        }

        ++v104;
      }

      while (v104 < v103);
    }

    heap_Free(*(a4 + 8), v30);
    heap_Free(*(a4 + 8), v32);
    v107 = v141;
    if (v141)
    {
      v108 = v140;
      if (v140)
      {
        v109 = 0;
        do
        {
          v110 = *(v141 + 8 * v109);
          if (v110)
          {
            heap_Free(*(a4 + 8), v110);
            v108 = v140;
          }

          ++v109;
        }

        while (v108 > v109);
        v107 = v141;
      }

      heap_Free(*(a4 + 8), v107);
    }

    heap_Free(*(a4 + 8), v127);
    heap_Free(*(a4 + 8), v122);
    heap_Free(*(a4 + 8), v20);
    heap_Free(*(a4 + 8), v121);
    heap_Free(*(a4 + 8), v119);
    heap_Free(*(a4 + 8), v25);
    heap_Free(*(a4 + 8), v133);
    heap_Free(*(a4 + 8), v135);
  }

  else
  {
LABEL_102:
    v93 = 2315264010;
    log_OutPublic(*(a4 + 32), "FE_PHRASING", 37000, 0);
  }

  return v93;
}

uint64_t extractAndConvertTones(uint64_t a1, _BYTE *a2, char *__s)
{
  if (a2)
  {
    if (__s)
    {
      *__s = 0;
      v5 = *a2;
      if (*a2)
      {
        do
        {
          v6 = a2 + 1;
          if ((v5 - 48) - 1 <= 8)
          {
            v7 = *v6;
            if (v7 == 125)
            {
              v6 = a2 + 2;
            }

            else
            {
              __s1[0] = v5;
              if (v7)
              {
                v8 = 0;
                v9 = 1;
                while (1)
                {
                  if ((v7 - 48) - 1 > 4)
                  {
                    v9 = (v8 + 1);
                    v6 = &a2[v8 + 1];
                    goto LABEL_17;
                  }

                  v10 = &a2[v8];
                  __s1[v8 + 1] = v7;
                  if (v8 == 1)
                  {
                    break;
                  }

                  ++v9;
                  LOWORD(v7) = v10[2];
                  ++v8;
                  if (!v10[2])
                  {
                    goto LABEL_16;
                  }
                }

                v9 = 3;
LABEL_16:
                v6 = v10 + 2;
              }

              else
              {
                v9 = 1;
              }

LABEL_17:
              __s1[v9] = 0;
              convertTones(a1, __s1, __s);
            }
          }

          v5 = *v6;
          a2 = v6;
        }

        while (*v6);
      }

      v11 = strlen(__s);
      v12 = 0;
      if (v11)
      {
        __s[v11 - 1] = 0;
      }

      else
      {
        *__s = 48;
      }
    }

    else
    {
      v12 = 2315264006;
      log_OutText(*(a1 + 32), "FE_PHRASING", 0, 0, "invalid input prone: %s\n");
    }
  }

  else
  {
    v12 = 2315264006;
    log_OutText(*(a1 + 32), "FE_PHRASING", 0, 0, "invalid input parameter: %s\n");
  }

  return v12;
}

uint64_t recursiveFindSplit(uint64_t result, unsigned int a2, unsigned int a3, unsigned int a4, uint64_t a5, _WORD *a6, signed int a7)
{
  v11 = result;
  if (a2 <= a3)
  {
    v12 = 0;
    v13 = a2;
    do
    {
      v12 += *(result + 2 * v13);
      if (a4 >> 1 <= v12)
      {
        break;
      }

      ++v13;
    }

    while (a3 >= v13);
  }

  else
  {
    v12 = 0;
    v13 = a2;
  }

  if (a7 <= v12)
  {
    v14 = a4 - v12;
    if (v14 >= a7)
    {
      recursiveFindSplit(result, a2, v13, v12, a5, a6, a7);
      result = recursiveFindSplit(v11, (v13 + 1), a3, v14, a5, a6, a7);
      *(a5 + 2 * (*a6)++) = v13;
    }
  }

  return result;
}

uint64_t getDocumentClass(uint64_t *a1)
{
  v1 = *(a1 + 4);
  if (!*(a1 + 4))
  {
    return 0;
  }

  v2 = 0;
  v3 = *a1;
  while (1)
  {
    v4 = v3 + 224 * v2;
    v5 = *(v4 + 152);
    if (v5)
    {
      if (strstr(*(v4 + 152), "joyfulstyle"))
      {
        return 1;
      }

      if (strstr(v5, "didacticstyle"))
      {
        return 2;
      }

      if (strstr(v5, "neutralstyle"))
      {
        break;
      }
    }

    if (v1 <= ++v2)
    {
      return 0;
    }
  }

  return 3;
}

uint64_t puncPhrasing(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2;
  if (!a2)
  {
    log_OutText(*(a1 + 32), "FE_PHRASING", 0, 0, "%s\n", "input parameter: sent is NULL");
    return v3;
  }

  if (!a3)
  {
    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "%s\n", "input parameter: rules is NULL, but it is ok");
    return 0;
  }

  v5 = (a3 + 270);
  v6 = *(a3 + 242);
  DocumentClass = getDocumentClass(a2);
  v124 = v6;
  if (DocumentClass > 1)
  {
    if (DocumentClass == 2)
    {
      v121 = vbsl_s8(vceqz_s16(*v5), 0x6001400030009, *v5);
      v67 = *(a3 + 278);
      if (!*(a3 + 278))
      {
        v67 = 9;
      }

      v125 = v67;
      v68 = *(a3 + 280);
      if (!*(a3 + 280))
      {
        v68 = 21;
      }

      v122 = v68;
      v69 = *(a3 + 282);
      if (!*(a3 + 282))
      {
        v69 = 6;
      }

      v128 = v69;
      v11 = *(a3 + 284);
      if (!v11)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v121 = vbsl_s8(vceqz_s16(*(a3 + 290)), 0x6001400030009, *(a3 + 290));
      v103 = *(a3 + 298);
      if (!*(a3 + 298))
      {
        v103 = 9;
      }

      v125 = v103;
      v104 = *(a3 + 300);
      if (!*(a3 + 300))
      {
        v104 = 21;
      }

      v122 = v104;
      v105 = *(a3 + 302);
      if (!*(a3 + 302))
      {
        v105 = 6;
      }

      v128 = v105;
      v11 = *(a3 + 304);
      if (!v11)
      {
        goto LABEL_13;
      }
    }
  }

  else if (DocumentClass)
  {
    v121 = vbsl_s8(vceqz_s16(*(a3 + 250)), 0x6001400030009, *(a3 + 250));
    v100 = *(a3 + 258);
    if (!*(a3 + 258))
    {
      v100 = 9;
    }

    v125 = v100;
    v101 = *(a3 + 260);
    if (!*(a3 + 260))
    {
      v101 = 21;
    }

    v122 = v101;
    v102 = *(a3 + 262);
    if (!*(a3 + 262))
    {
      v102 = 6;
    }

    v128 = v102;
    v11 = *(a3 + 264);
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v121 = vbsl_s8(vceqz_s16(*(a3 + 310)), 0x6001400030009, *(a3 + 310));
    v8 = *(a3 + 318);
    if (!*(a3 + 318))
    {
      v8 = 9;
    }

    v125 = v8;
    v9 = *(a3 + 320);
    if (!*(a3 + 320))
    {
      v9 = 21;
    }

    v122 = v9;
    v10 = *(a3 + 322);
    if (!*(a3 + 322))
    {
      v10 = 6;
    }

    v128 = v10;
    v11 = *(a3 + 324);
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  *(a3 + 242) = v11;
LABEL_13:
  v129 = a3;
  v134 = 0;
  v133 = 0;
  v12 = *(v3 + 8);
  if (*(v3 + 8))
  {
    v13 = 0;
    v14 = *v3;
    v15 = 1;
    while (1)
    {
      v16 = *(v14 + v13 + 16);
      v17 = *v16;
      if (*v16)
      {
        v18 = strlen(*v16);
        if (v18)
        {
          v19 = v17[v18 - 1];
          v20 = v19 > 0x3B;
          v21 = (1 << v19) & 0xC00500000000000;
          v22 = v20 || v21 == 0;
          if (!v22 && v15 < v12)
          {
            *(v14 + v13 + 73) = 4;
          }
        }
      }

      v24 = *(v14 + v13 + 136);
      if (!v24)
      {
        goto LABEL_37;
      }

      v25 = *v24;
      if (v25 == 83)
      {
        break;
      }

      if (v25 == 69)
      {
        if (v24[1] || *(v14 + v13 + 144) < v125)
        {
          goto LABEL_37;
        }

        v27 = 73;
        goto LABEL_34;
      }

      if (v25 == 66)
      {
        break;
      }

LABEL_37:
      v13 += 224;
      ++v15;
      if (224 * v12 == v13)
      {
        goto LABEL_40;
      }
    }

    if (v24[1])
    {
      v26 = 1;
    }

    else
    {
      v26 = v13 == 0;
    }

    if (v26)
    {
      goto LABEL_37;
    }

    v27 = -151;
LABEL_34:
    *(v14 + v27 + v13) = 4;
    goto LABEL_37;
  }

LABEL_40:
  v28 = a1;
  printPhrases(a1, v3);
  v29 = heap_Calloc(*(a1 + 8), 1024, 2);
  if (!v29)
  {
    v3 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    v98 = v129;
    v99 = v124;
    goto LABEL_200;
  }

  v30 = v29;
  if (!*(v3 + 8))
  {
LABEL_108:
    v130 = v30;
    printPhrases(v28, v3);
    v70 = *(v3 + 8);
    if (*(v3 + 8))
    {
      v71 = 0;
      do
      {
        v72 = *v3;
        if (*(*v3 + 224 * v71 + 73) != 3)
        {
          goto LABEL_147;
        }

        v73 = v71 + 1;
        if ((v71 + 1) < v70)
        {
          v74 = 1;
          LODWORD(v75) = v71 + 1;
          while (1)
          {
            v76 = *(v72 + 224 * v75 + 73);
            if (v76 == 3)
            {
              ++v74;
            }

            else if (v76 == 4)
            {
              goto LABEL_119;
            }

            LODWORD(v75) = v75 + 1;
            if (v75 >= v70)
            {
              LODWORD(v75) = v70;
LABEL_119:
              if (v74 == 1)
              {
                v73 = v75;
                break;
              }

              v77 = v71 + 1;
              if ((v71 & 0x8000) == 0)
              {
                do
                {
                  if (*(v72 + 224 * v71 + 73) == 4)
                  {
                    goto LABEL_125;
                  }

                  v78 = v71;
                  LOWORD(v71) = v71 - 1;
                }

                while (v78 > 0);
                LOWORD(v71) = -1;
LABEL_125:
                v77 = v71 + 1;
              }

              if (v74 < 9u)
              {
                v79 = v74;
              }

              else
              {
                LODWORD(v75) = v73;
                v79 = 8;
              }

              if (v74 < 9u || v73 >= v70)
              {
                goto LABEL_140;
              }

              v80 = 0;
              v75 = v73;
              v81 = (v72 + 224 * v73 + 73);
              while (1)
              {
                v82 = *v81;
                if (v82 == 3)
                {
                  if (++v80 >= 8u)
                  {
                    *v81 = 4;
LABEL_139:
                    v79 = 8;
LABEL_140:
                    v83 = v75 == v70;
                    v71 = v75 - v83;
                    if (v77 <= (v75 - v83))
                    {
                      v84 = 0;
                      v85 = v77;
                      do
                      {
                        v86 = **(*v3 + 224 * v85 + 16);
                        if (!strstr(v86, "comma"))
                        {
                          v87 = strlen(v86);
                          v84 += Utf8_LengthInUtf8chars(v86, v87);
                        }

                        ++v85;
                      }

                      while (v85 <= v71);
                      if (v122 <= v84)
                      {
                        LOWORD(v133) = v84;
                        HIWORD(v133) = v79;
                        astar_search(a1, v3, v77, v71, &v133, (v129 + 232));
                      }
                    }

LABEL_147:
                    v73 = v71 + 1;
                    v70 = *(v3 + 8);
                    goto LABEL_148;
                  }
                }

                else if (v82 == 4)
                {
                  goto LABEL_139;
                }

                ++v75;
                v81 += 224;
                if (v70 == v75)
                {
                  v79 = 8;
                  LODWORD(v75) = v70;
                  goto LABEL_140;
                }
              }
            }
          }
        }

LABEL_148:
        v71 = v73;
      }

      while (v73 < v70);
    }

    printPhrases(a1, v3);
    v88 = *(v3 + 8);
    v89 = v88 - 2;
    v90 = v88 + 1;
    while (1)
    {
      v91 = v89;
      v92 = (v90 - 2);
      if (v92 < 1)
      {
        break;
      }

      v93 = *v3;
      v94 = *v3 + 224 * ((v90 - 2) & 0x7FFF);
      --v89;
      --v90;
      if (*(v94 + 136))
      {
        *(v94 + 73) = 4;
        if (((v90 - 2) & 0x8000) == 0)
        {
          v95 = v91;
          while (1)
          {
            v96 = v93 + 224 * v95;
            if (*(v96 + 136))
            {
              if (*(v96 + 73) == 4)
              {
                break;
              }
            }

            v97 = v95--;
            if (v97 <= 0)
            {
              goto LABEL_178;
            }
          }

          if ((v92 - v95) <= v121.u16[1])
          {
            *(v96 + 73) = 3;
          }
        }

        break;
      }
    }

LABEL_178:
    printPhrases(a1, v3);
    if (*(v3 + 8))
    {
      v106 = 0;
      v107 = *v3;
      do
      {
        v108 = v106;
        v109 = v107 + 224 * v106;
        if (*(v109 + 73) == 4 && ((v110 = *(v109 + 16), (v111 = *v110) == 0) || (v112 = strlen(*v110)) == 0 || ((v113 = v111[v112 - 1], v20 = v113 > 0x3B, v114 = (1 << v113) & 0xC00500000000000, !v20) ? (v115 = v114 == 0) : (v115 = 1), v115)))
        {
          ++v106;
          if (*(v3 + 8) <= (v108 + 1))
          {
            LOWORD(v116) = 0;
          }

          else
          {
            v116 = 0;
            do
            {
              v117 = 224 * v106;
              v118 = strlen(**(v107 + v117 + 16));
              v116 += Utf8_LengthInUtf8chars(**(v107 + v117 + 16), v118);
              v107 = *v3;
              if (*(*v3 + v117 + 73) == 4)
              {
                break;
              }

              ++v106;
            }

            while (*(v3 + 8) > v106);
          }

          if (v128 > v116)
          {
            *(v107 + 224 * v108 + 73) = 3;
          }
        }

        else
        {
          ++v106;
        }
      }

      while (*(v3 + 8) > v106);
    }

    printPhrases(a1, v3);
    v3 = 0;
LABEL_198:
    v98 = v129;
    v30 = v130;
    goto LABEL_199;
  }

  v31 = 0;
  v32 = 0;
  v33 = 0;
  v126 = 0;
  v127 = 1024;
  v123 = 0;
  while (1)
  {
    v34 = *(*v3 + 224 * v33 + 73);
    if (v34 == 4)
    {
      goto LABEL_93;
    }

    if (v34 == 3)
    {
      break;
    }

LABEL_94:
    v31 = ++v33;
    if (v33 >= *(v3 + 8))
    {
      goto LABEL_108;
    }
  }

  v35 = v32;
  v36 = **(*v3 + 224 * v32 + 16);
  if (strstr(v36, "comma"))
  {
    v37 = 0;
  }

  else
  {
    v38 = strlen(v36);
    v37 = Utf8_LengthInUtf8chars(v36, v38);
  }

  v130 = v30;
  v131 = v32;
  v39 = v32 + 1;
  if ((v32 + 1) <= v33)
  {
    v40 = v32 + 1;
    do
    {
      v41 = **(*v3 + 224 * v40 + 16);
      if (!strstr(v41, "comma"))
      {
        v42 = strlen(v41);
        v37 += Utf8_LengthInUtf8chars(v41, v42);
      }

      ++v40;
    }

    while (v40 <= v33);
  }

  v43 = heap_Alloc(*(a1 + 8), (4 * v37) | 2);
  if (!v43)
  {
    v3 = 2315264010;
    goto LABEL_198;
  }

  v44 = v43;
  v45 = **(*v3 + 224 * v35 + 16);
  v30 = v130;
  if (strstr(v45, "comma"))
  {
    v46 = 0;
    *v44 = 0;
  }

  else
  {
    v47 = strlen(v45);
    *v130 = Utf8_LengthInUtf8chars(v45, v47);
    strcpy(v44, **(*v3 + 224 * v35 + 16));
    v46 = 1;
  }

  v48 = v31 - v131 + v46;
  if (v48 > v127)
  {
    v49 = 2 * v48;
    if (v49 > 0x1000)
    {
      v120 = a1;
      log_OutText(*(a1 + 32), "FE_PHRASING", 0, 0, "Memory exceeds upper boundary: %d/%d", 2 * v48, 4096);
      v3 = 2315264015;
    }

    else
    {
      v50 = heap_Realloc(*(a1 + 8), v130, v49);
      if (v50)
      {
        v127 = v48;
        v30 = v50;
        goto LABEL_64;
      }

      v3 = 2315264010;
      v120 = a1;
    }

    heap_Free(*(v120 + 8), v44);
    goto LABEL_205;
  }

LABEL_64:
  while (v39 <= v33)
  {
    v51 = **(*v3 + 224 * v39 + 16);
    if (!strstr(v51, "comma"))
    {
      strcat(v44, v51);
      v52 = strlen(**(*v3 + 224 * v39 + 16));
      *(v30 + 2 * v46) = Utf8_LengthInUtf8chars(**(*v3 + 224 * v39 + 16), v52);
      LOWORD(v46) = v46 + 1;
    }

    ++v39;
  }

  v53 = strlen(v44);
  v54 = Utf8_LengthInUtf8chars(v44, v53);
  v28 = a1;
  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "WEAK PHRASE:%s %d\n", v44, v54);
  v55 = strlen(v44);
  CurrentUtf8Offset = utf8_GetCurrentUtf8Offset(v44, v55 - 1);
  utf8_getUTF8Char(v44, CurrentUtf8Offset, v135);
  heap_Free(*(a1 + 8), v44);
  if (v54 && applyRules(a1, v3, v33, (v129 + 232)) == 1)
  {
    v126 += v54;
    v123 = v33;
    v32 = v131;
    goto LABEL_94;
  }

  if (v54 < v121.u16[0])
  {
LABEL_93:
    v32 = (v33 + 1);
    goto LABEL_94;
  }

  if (v54 - v126 <= v121.u16[3] && v126)
  {
    v126 = 0;
    v123 = 0;
    goto LABEL_72;
  }

  if (v126)
  {
    v126 = 0;
    v33 = v123 + 1;
    v32 = (v123 + 1);
    v123 = 0;
    goto LABEL_94;
  }

  if (v54 < v121.u16[2] && applyRules(a1, v3, v33, (v129 + 232)) != 1)
  {
LABEL_72:
    *(*v3 + 224 * v33 + 73) = 4;
    goto LABEL_93;
  }

  if (v46 >= 0x801u)
  {
    log_OutText(*(a1 + 32), "FE_PHRASING", 0, 0, "Memory exceeds upper boundary: %d/%d", 2 * v46, 4096);
    v3 = 2315264015;
    goto LABEL_205;
  }

  v57 = heap_Calloc(*(a1 + 8), 1, 2 * v46);
  if (v57)
  {
    v58 = v57;
    v134 = 0;
    recursiveFindSplit(v30, 0, v46, v54, v57, &v134, v125);
    if (v131 <= v33)
    {
      v59 = 0;
      v60 = v131;
      do
      {
        v61 = v60;
        v62 = v60;
        if (strstr(**(*v3 + 224 * v60 + 16), "comma"))
        {
          v63 = 1;
        }

        else
        {
          v63 = v62 == v131;
        }

        if (!v63)
        {
          ++v59;
        }

        v64 = v134;
        v65 = v58;
        if (v134)
        {
          while (1)
          {
            v66 = *v65++;
            if (v66 == v59)
            {
              break;
            }

            if (!--v64)
            {
              goto LABEL_91;
            }
          }

          if (applyRules(a1, v3, v61, (v129 + 232)) != 1)
          {
            *(*v3 + 224 * v61 + 73) = 4;
          }
        }

LABEL_91:
        v60 = v61 + 1;
      }

      while ((v61 + 1) <= v33);
    }

    v28 = a1;
    heap_Free(*(a1 + 8), v58);
    goto LABEL_93;
  }

  v3 = 2315264010;
  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
LABEL_205:
  v98 = v129;
LABEL_199:
  v99 = v124;
  heap_Free(*(a1 + 8), v30);
LABEL_200:
  *(v98 + 242) = v99;
  return v3;
}

uint64_t printPhrases(uint64_t result, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      result = log_OutText(*(v3 + 32), "FE_PHRASING", 5, 0, "%s\t\t%s\n", **(*a2 + v4 + 16), (&off_1E81A4308)[*(*a2 + v4 + 73)]);
      ++v5;
      v4 += 224;
    }

    while (v5 < *(a2 + 8));
  }

  return result;
}

uint64_t convertTones(uint64_t a1, char *__s1, char *__s)
{
  v6 = *__s1;
  if (v6 != 53)
  {
    if (v6 == 51)
    {
      if (__s1[1] == 53 && !__s1[2])
      {
        v7 = &__s[strlen(__s)];
        v8 = 11570;
        goto LABEL_19;
      }

      v9 = 1;
LABEL_10:
      if (!strcmp(__s1, "214") || v9 && __s1[1] == 51 && !__s1[2])
      {
        v7 = &__s[strlen(__s)];
        v8 = 11571;
        goto LABEL_19;
      }

      switch(v6)
      {
        case '5':
          if (__s1[1] == 49 && !__s1[2])
          {
LABEL_39:
            v7 = &__s[strlen(__s)];
            v8 = 11572;
            goto LABEL_19;
          }

          break;
        case '1':
          if (__s1[1] == 49 && !__s1[2] || __s1[1] == 51 && !__s1[2])
          {
            v7 = &__s[strlen(__s)];
            v8 = 11573;
            goto LABEL_19;
          }

          break;
        case '2':
          if (__s1[1] == 49 && !__s1[2])
          {
            goto LABEL_39;
          }

          v10 = 1;
          if (!v9)
          {
            goto LABEL_33;
          }

LABEL_31:
          if (__s1[1] == 52 && !__s1[2])
          {
LABEL_38:
            v7 = &__s[strlen(__s)];
            v8 = 11574;
            goto LABEL_19;
          }

LABEL_33:
          if (!v10 || __s1[1] != 50 || __s1[2])
          {
            log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "invalid input prone: %s\n", __s1);
            return 0;
          }

          goto LABEL_38;
      }

      v10 = 0;
      if (!v9)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  if (__s1[1] != 53 || __s1[2])
  {
    goto LABEL_9;
  }

  v7 = &__s[strlen(__s)];
  v8 = 11569;
LABEL_19:
  *v7 = v8;
  v7[2] = 0;
  return 0;
}

uint64_t hlp_BrokerString(uint64_t a1, char *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  *v7 = 0;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v7);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v6);
    if ((result & 0x80000000) == 0)
    {
      __strcpy_chk();
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      return brokeraux_ComposeBrokerString(a1, v8, 1, 1, *v7, 0, 0, a2, 0x100uLL);
    }
  }

  return result;
}

uint64_t getTokenRuleset(uint64_t a1, __int16 a2, _DWORD *a3, _WORD *a4)
{
  v15 = 0;
  *a3 = 0;
  v12 = a2;
  v10 = 0;
  v11 = 2;
  v13 = 0;
  v14 = 0;
  if (!*(a1 + 192))
  {
    return 0;
  }

  v7 = 0;
  for (i = 0; i < *(a1 + 192); ++i)
  {
    result = matchPANDPRULE_TRule(*(a1 + 1108), (a1 + 1088), (a1 + 1104), *(a1 + 1096), a1 + 8, a1 + 672, *(*(a1 + 184) + v7), &v11, &v10);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    if (v10)
    {
      if (v10 == 1)
      {
        *a3 = 1;
        *a4 = i;
      }

      return result;
    }

    v7 += 40;
  }

  return result;
}

uint64_t handleTokenWord(uint64_t a1, unsigned int a2, int a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned int a6)
{
  *&v29[2] = 0;
  v25 = 0;
  v24 = 0;
  FLOATSUR_SET_INT(&v25 + 2, 0, 0);
  FLOATSUR_SET_INT(&v25, *(*(a1 + 672) + 224 * a2 + 24), 0);
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "    [1] apply word weight rules", 0);
  v22 = a2;
  v28 = a2;
  v26 = 0;
  v27 = 1;
  *v29 = 0;
  v11 = a6;
  v12 = *(a1 + 184);
  v23 = a6;
  if (*(v12 + 40 * a6 + 32))
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      matched = matchMAPRULE2NUMANDOPERATOR_TRule(*(a1 + 1108), (a1 + 1088), (a1 + 1104), *(a1 + 1096), a1 + 8, a1 + 672, (*(v12 + 40 * v11 + 24) + v13), &v27, &v26, &v25 + 2);
      if ((matched & 0x80000000) != 0)
      {
        break;
      }

      v16 = v26;
      if (v26 == 1)
      {
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "    wordwweight : rulset %d, idx %d FIRED wordWeight=%d.%d", v23, v14, WORD2(v25), HIWORD(v25));
        v16 = v26;
      }

      if (!v16)
      {
        ++v14;
        v12 = *(a1 + 184);
        v13 += 32;
        if (v14 < *(v12 + 40 * v11 + 32))
        {
          continue;
        }
      }

      goto LABEL_10;
    }
  }

  else
  {
    matched = 0;
LABEL_10:
    FLOATSUR_PLUS(&v24, &v25 + 2, &v25);
    FLOATSUR_PLUS(a4, a4, &v24);
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "    runningPhraseWeight=%d.%d (wordWeight=%d.%d pronWeight=%d.%d)", *a4, a4[1], WORD2(v25), HIWORD(v25), v25, WORD1(v25));
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "    [2] apply token rules", 0);
    v28 = v22;
    v26 = 0;
    v27 = 1;
    *v29 = 0;
    v17 = *(a1 + 184);
    if (*(v17 + 40 * v11 + 16))
    {
      v18 = 0;
      v19 = 8;
      while (1)
      {
        matched = matchMAPRULE2NUM_TRule(*(a1 + 1108), (a1 + 1088), (a1 + 1104), *(a1 + 1096), a1 + 8, a1 + 672, *(v17 + 40 * v11 + 8) + v19 - 8, &v27, &v26, a5);
        if ((matched & 0x80000000) != 0)
        {
          break;
        }

        if (v26 == 1)
        {
          matched = logPANDPRULE_TRule(*(a1 + 1108), (a1 + 1088), (a1 + 1104), *(a1 + 1096), (a1 + 8), (*(*(a1 + 184) + 40 * v11 + 8) + v19));
          if ((matched & 0x80000000) == 0)
          {
            log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "    FIRED : ruleset %d, idx %d <%s> bndWeight=%d.%d", v23, v18, *(a1 + 1088), *a5, a5[1]);
            **(a1 + 1088) = 0;
          }

          return matched;
        }

        ++v18;
        v17 = *(a1 + 184);
        v19 += 32;
        if (v18 >= *(v17 + 40 * v11 + 16))
        {
          if (v26)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "    no token rules fire.", 0);
LABEL_17:
      if (v22 + 1 == a3)
      {
        FLOATSUR_SET_INT(a5, *(a1 + 176), 0);
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "    END token word; set TOKENENDWORDBNDWEIGHT bndWeight=%d.%d", *a5, a5[1]);
      }

      else
      {
        FLOATSUR_SET_INT(a5, 0, 0);
      }
    }
  }

  return matched;
}

uint64_t getPhrasingForToken(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v3 = a3;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v6 = *(a1[84] + 224 * a3 + 56) + 32 * *(a1 + 15);
  v7 = *(v6 + 16);
  v8 = *(v6 + 10);
  FLOATSUR_SET_INT(&v21 + 2, 0, 0);
  FLOATSUR_SET_INT(&v21, 0, 0);
  TokenRuleset = getTokenRuleset(a1, v3, &v20, &v19);
  if ((TokenRuleset & 0x80000000) != 0)
  {
    return TokenRuleset;
  }

  v10 = *(*a1 + 32);
  if (v20 == 1)
  {
    v11 = v8 + 1;
    v12 = v19;
    log_OutText(v10, "FE_PHRASING", 5, 0, "  using token rule set %d (for %s)", v19, v7);
    v13 = v11 - v3;
    v14 = v3;
    do
    {
      v15 = v3;
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  doing token word[%d]=%s", v3, *(*(a1[84] + 224 * v3 + 16) + 8 * *(a1 + 12)));
      v16 = handleTokenWord(a1, v3, v11, &v21 + 2, &v21, v12);
      if ((v16 & 0x80000000) != 0)
      {
        break;
      }

      if (FLOATSUR_GT_INT(&v21, 0, 0))
      {
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  add token node %d,%d", v14, v3 + 1);
        v16 = addNode(*a1, a2, v14, v3 + 1, 2, v13);
        if ((v16 & 0x80000000) != 0)
        {
          return v16;
        }

        *(*a2 + 32 * *(a2 + 8) - 24) = HIDWORD(v21);
        v17 = *a2 + 32 * *(a2 + 8);
        *(v17 - 12) = 1;
        *(v17 - 20) = v21;
        FLOATSUR_SET_INT(&v21 + 2, 0, 0);
        FLOATSUR_SET_INT(&v21, 0, 0);
        v14 = v3 + 1;
      }

      ++v3;
    }

    while ((v15 + 1) < v11);
  }

  else
  {
    log_OutText(v10, "FE_PHRASING", 5, 0, "  no rules match for token type =%s", v7);
    return 2315264000;
  }

  return v16;
}

uint64_t assignTokenPOS(uint64_t a1)
{
  v23 = 0;
  v1 = *(a1 + 680);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  matched = 0;
  memset(v22, 0, sizeof(v22));
  v5 = *(a1 + 672);
  while (1)
  {
    v6 = *(v5 + 224 * v3 + 56);
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = *(a1 + 30);
    if (*(v6 + 32 * v7) != 1)
    {
      goto LABEL_7;
    }

    v8 = *(*(v5 + 224 * v3 + 56) + 32 * v7 + 10);
    if (v8 >= v3)
    {
      break;
    }

LABEL_6:
    v3 = v8;
LABEL_7:
    if (++v3 >= v1)
    {
      return matched;
    }
  }

  v21 = v3;
  while (1)
  {
    v23 = 0;
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "get token POS for %s", *(*(v5 + 224 * v3 + 16) + 8 * *(a1 + 24)));
    if (!v23)
    {
      if (*(a1 + 128))
      {
        break;
      }
    }

LABEL_11:
    ++v3;
    v5 = *(a1 + 672);
    v8 = *(*(v5 + 224 * v21 + 56) + 32 * *(a1 + 30) + 10);
    if (v8 < v3)
    {
      v1 = *(a1 + 680);
      goto LABEL_6;
    }
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    *&v22[4] = v3;
    *v22 = 1;
    *&v22[6] = 0;
    matched = matchMAPRULE2STR_TRule(*(a1 + 1108), (a1 + 1088), (a1 + 1104), *(a1 + 1096), a1 + 8, a1 + 672, *(a1 + 120) + v9, v22, &v23);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    v11 = v23;
    if (v23 == 1)
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "POS tagging rule %d FIRED (word %d) %s -> %s", v10, v3, *(*(*(a1 + 672) + 224 * v3 + 16) + 8 * *(a1 + 26)), (*(a1 + 536) + *(*(a1 + 544) + 4 * *(*(a1 + 120) + v9))));
      v12 = *(a1 + 672);
      v13 = v12 + 224 * v3;
      v14 = *(a1 + 536);
      v15 = *(a1 + 544);
      v16 = *(a1 + 120);
      if (!*(v13 + 88) && !strcmp("UNK", (v14 + *(v15 + 4 * *(v16 + v9)))))
      {
        v17 = strlen(*(*(v13 + 16) + 8 * *(a1 + 26)));
        v18 = heap_Calloc(*(*a1 + 8), 1, v17 + 1);
        v19 = *(a1 + 672);
        *(v19 + 224 * v3 + 88) = v18;
        if (!v18)
        {
          log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0);
          return 2315264010;
        }

        strcpy(v18, *(*(v19 + 224 * v3 + 16) + 8 * *(a1 + 26)));
        v12 = *(a1 + 672);
        v14 = *(a1 + 536);
        v15 = *(a1 + 544);
        v16 = *(a1 + 120);
      }

      matched = doMapStr(*a1, (*(v12 + 224 * v3 + 16) + 8 * *(a1 + 26)), (v14 + *(v15 + 4 * *(v16 + v9))));
      if ((matched & 0x80000000) != 0)
      {
        return matched;
      }

      v11 = v23;
    }

    if (!v11)
    {
      ++v10;
      v9 += 32;
      if (v10 < *(a1 + 128))
      {
        continue;
      }
    }

    goto LABEL_11;
  }
}

uint64_t assignTokenTags(uint64_t *a1)
{
  v21 = 0;
  v20 = 0;
  v1 = *(a1 + 340);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  memset(v19, 0, 12);
  v5 = a1[84];
  while (1)
  {
    v6 = v3;
    v7 = *(v5 + 224 * v3 + 56);
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = *(a1 + 15);
    if (*(v7 + 32 * v8) != 1)
    {
      goto LABEL_7;
    }

    v9 = *(*(v5 + 224 * v3 + 56) + 32 * v8 + 10);
    if (v9 >= v3)
    {
      break;
    }

LABEL_6:
    v3 = v9;
LABEL_7:
    if (++v3 >= v1)
    {
      return v4;
    }
  }

  while (1)
  {
    v21 = 0;
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "get token tag for word %d %s", v3, *(*(v5 + 224 * v3 + 16) + 8 * *(a1 + 12)));
    if (!v21)
    {
      v10 = 0;
      while (v10 < *(a1 + 76))
      {
        if (*(a1[18] + 4 * v10) == 1)
        {
          WORD2(v19[0]) = v3;
          LODWORD(v19[0]) = 1;
          *(v19 + 6) = 0;
          matched = matchMMAPREGEX2STR_TRule(a1 + 4, (a1 + 84), *(a1[17] + 8 * v10), v19, &v21, &v20);
        }

        else
        {
          matched = matchMAPSTRSTR_TRule((a1 + 1), a1 + 84, *(a1[17] + 8 * v10), v19, &v21);
        }

        v4 = matched;
        if ((matched & 0x80000000) != 0)
        {
          return v4;
        }

        v12 = v21;
        if (v21 == 1)
        {
          v13 = *(*a1 + 32);
          if (*(a1[18] + 4 * v10) == 1)
          {
            log_OutText(v13, "FE_PHRASING", 5, 0, "regex rule %d FIRED %s -> %s", v20, *(*(a1[84] + 224 * v3 + 16) + 8 * *(a1 + 12)), (a1[67] + *(a1[68] + 4 * *(*(a1[17] + 8 * v10) + 8))));
            v14 = *a1;
            v15 = a1[67];
            v16 = a1[68];
            v17 = *(*(a1[17] + 8 * v10) + 8);
          }

          else
          {
            log_OutText(v13, "FE_PHRASING", 5, 0, "normal rule FIRED %s -> %s", *(*(a1[84] + 224 * v3 + 16) + 8 * *(a1 + 12)), (a1[67] + *(a1[68] + 4 * *(*(a1[17] + 8 * v10) + 4))));
            v14 = *a1;
            v15 = a1[67];
            v16 = a1[68];
            v17 = *(*(a1[17] + 8 * v10) + 4);
          }

          v4 = addTokenTag(v14, v3, (v15 + *(v16 + 4 * v17)), (a1 + 1), a1 + 84);
          if ((v4 & 0x80000000) != 0)
          {
            return v4;
          }

          v12 = v21;
        }

        ++v10;
        if (v12)
        {
          goto LABEL_10;
        }
      }

      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "no matches found");
      v4 = addTokenTag(*a1, v3, "UNK", (a1 + 1), a1 + 84);
      if ((v4 & 0x80000000) != 0)
      {
        return v4;
      }
    }

LABEL_10:
    ++v3;
    v5 = a1[84];
    v9 = *(*(v5 + 224 * v6 + 56) + 32 * *(a1 + 15) + 10);
    if (v9 < v3)
    {
      v1 = *(a1 + 340);
      goto LABEL_6;
    }
  }
}

uint64_t extendPHRContainingTokenTags(uint64_t a1)
{
  if (!*(a1 + 680))
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  LODWORD(v6) = 0;
  v7 = 0;
  v8 = *(a1 + 672);
  while (1)
  {
    v9 = *(v8 + 224 * v2 + 56);
    if (!v9)
    {
      goto LABEL_47;
    }

    v10 = v9 + 32 * *(a1 + 32);
    if (*v10 == 1)
    {
      v6 = *(v10 + 10);
      v11 = *(v10 + 8);
      v7 = v2;
      if (v11 >= v6)
      {
        v5 = 0;
      }

      else
      {
        v5 = 0;
        v12 = (v8 + 224 * v11 + 56);
        v13 = v6 - v11;
        do
        {
          if (*v12 && *(*v12 + 32 * *(a1 + 30)) == 1)
          {
            ++v5;
          }

          v12 += 28;
          --v13;
        }

        while (v13);
      }

      v4 = 0;
    }

    v14 = *(a1 + 30);
    v15 = v9 + 32 * v14;
    if (!*(v15 + 16))
    {
      goto LABEL_47;
    }

    v16 = v4 + 1;
    v17 = v4 || v2 == v7;
    v18 = !v17;
    v19 = *(v15 + 10);
    v20 = *(v8 + 224 * *(v15 + 10) + 56);
    if (!v20)
    {
      break;
    }

    v22 = *(v20 + 32 * v14 + 4) != 1 || v16 != v5 || v19 >= v6;
    v23 = !v22;
    if (!v22 && v18)
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "Extend token at %d to Left and Right", v3);
      v25 = *(a1 + 672);
      v26 = *(a1 + 30);
      v27 = *(v25 + 224 * v2 + 56) + 32 * v26;
      *v27 = 0;
      *(*(v25 + 224 * v19 + 56) + 32 * v26 + 4) = 0;
      v28 = *(v25 + 224 * v7 + 56) + 32 * v26;
      *v28 = 1;
      *(v28 + 8) = v7;
      *(v28 + 10) = v6;
      *(v28 + 24) = 1;
      v29 = strlen(*(v27 + 16));
      v30 = heap_Calloc(*(*a1 + 8), 1, (v29 + 1));
      v31 = *(a1 + 672);
      v32 = *(a1 + 30);
      *(*(v31 + 224 * v7 + 56) + 32 * v32 + 16) = v30;
      if (!v30)
      {
        goto LABEL_50;
      }

      strcpy(v30, *(*(v31 + 224 * v2 + 56) + 32 * v32 + 16));
      heap_Free(*(*a1 + 8), *(*(*(a1 + 672) + 224 * v2 + 56) + 32 * *(a1 + 30) + 16));
      v8 = *(a1 + 672);
      v33 = *(a1 + 30);
      *(*(v8 + 224 * v2 + 56) + 32 * v33 + 16) = 0;
      v34 = *(v8 + 224 * v6 + 56) + 32 * v33;
      v4 = 1;
      *(v34 + 4) = 1;
      *(v34 + 8) = v7;
    }

    else
    {
      if (v18)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
LABEL_46:
        v4 = v16;
        goto LABEL_47;
      }

      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "Extend token at %d to Right", v3);
      v8 = *(a1 + 672);
      v44 = *(a1 + 30);
      *(*(v8 + 224 * v19 + 56) + 32 * v44 + 4) = 0;
      v45 = *(v8 + 224 * v2 + 56) + 32 * v44;
      *(v45 + 10) = v6;
      *(v45 + 24) = 1;
      v46 = *(v8 + 224 * v6 + 56) + 32 * v44;
      *(v46 + 4) = 1;
      *(v46 + 8) = *(v45 + 8);
      v4 = v5;
    }

LABEL_47:
    v3 = ++v2;
    if (v2 >= *(a1 + 680))
    {
      return 0;
    }
  }

  if (!v18)
  {
    goto LABEL_46;
  }

LABEL_40:
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "Extend token at %d to Left", v3);
  v8 = *(a1 + 672);
  v35 = *(v8 + 224 * v2 + 56);
  v36 = *(a1 + 30);
  *(v35 + 32 * v36) = 0;
  v37 = *(v8 + 224 * v7 + 56);
  if (!v37)
  {
LABEL_43:
    *(*(v8 + 224 * *(v35 + 32 * v36 + 10) + 56) + 32 * v36 + 8) = v7;
    v4 = 1;
    goto LABEL_47;
  }

  v38 = v37 + 32 * v36;
  *v38 = 1;
  *(v38 + 8) = v7;
  v39 = v35 + 32 * v36;
  *(v38 + 10) = *(v39 + 10);
  *(v38 + 24) = 1;
  v40 = strlen(*(v39 + 16));
  v41 = heap_Calloc(*(*a1 + 8), 1, (v40 + 1));
  v42 = *(a1 + 672);
  v43 = *(a1 + 30);
  *(*(v42 + 224 * v7 + 56) + 32 * v43 + 16) = v41;
  if (v41)
  {
    strcpy(v41, *(*(v42 + 224 * v2 + 56) + 32 * v43 + 16));
    heap_Free(*(*a1 + 8), *(*(*(a1 + 672) + 224 * v2 + 56) + 32 * *(a1 + 30) + 16));
    v8 = *(a1 + 672);
    v35 = *(v8 + 224 * v2 + 56);
    v36 = *(a1 + 30);
    *(v35 + 32 * v36 + 16) = 0;
    goto LABEL_43;
  }

LABEL_50:
  log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0);
  return 2315264010;
}

uint64_t annotateTokenTypeOnEachWord(uint64_t a1)
{
  v1 = *(a1 + 680);
  if (*(a1 + 680))
  {
    v2 = 0;
    v3 = (*(a1 + 672) + 104);
    do
    {
      v4 = *(v3 - 6);
      if (v4)
      {
        v5 = v4 + 32 * *(a1 + 30);
        if (*v5 == 1)
        {
          v2 = *(v5 + 16);
        }

        *v3 = v2;
        if (*(v5 + 4) == 1)
        {
          v2 = 0;
        }
      }

      else
      {
        *v3 = v2;
      }

      v3 += 28;
      --v1;
    }

    while (v1);
  }

  return 0;
}

uint64_t load_pw_igtree_cfg(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v9 = 0;
  v8 = -1;
  v7 = 0;
  *a4 = 0;
  v5 = (*(a3 + 96))(a1, a2, "fecfg", "statbnd_pw_igtree", &v9, &v8, &v7);
  if ((v5 & 0x80000000) == 0 && v8 == 1)
  {
    (*v9)[strlen(*v9) - 1] = 0;
    if (!strcmp(*v9, "yes"))
    {
      *a4 = 1;
    }
  }

  return v5;
}

uint64_t load_pw_igtree(_WORD *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v16 = *MEMORY[0x1E69E9840];
  memset(v15, 0, sizeof(v15));
  *v14 = 0;
  *a4 = 0;
  BrokerString = nn_model_getBrokerString(a3, v15, "pwigtree_", 0x100uLL);
  if ((BrokerString & 0x80000000) != 0 || (BrokerString = ssftriff_reader_ObjOpen(a1, a2, 2, v15, "IGTR", 1031, v14), (BrokerString & 0x80000000) != 0))
  {
    v10 = BrokerString;
  }

  else
  {
    v9 = heap_Calloc(*(a3 + 8), 1, 1600);
    *a4 = v9;
    if (v9)
    {
      v10 = igtree_Init(a1, a2, *v14, v9);
      ssftriff_reader_CloseChunk(*v14);
      if ((v10 & 0x80001FFF) == 0x14)
      {
        ssftriff_reader_CloseChunk(*v14);
        v10 = 0;
      }
    }

    else
    {
      log_OutPublic(*(a3 + 32), "FE_PHRASING", 37000, 0);
      v10 = 2315264010;
    }
  }

  if (*v14)
  {
    v11 = ssftriff_reader_ObjClose(*v14);
    if (v11 >= 0 || v10 <= -1)
    {
      return v10;
    }

    else
    {
      return v11;
    }
  }

  return v10;
}

uint64_t hlp_igtree_initFeatureVector(uint64_t a1, void *a2, unsigned int a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  while (1)
  {
    v6 = heap_Calloc(*(a1 + 8), 1, 65);
    *a2 = v6;
    if (!v6)
    {
      break;
    }

    *v6 = 61;
    ++a2;
    if (!--v5)
    {
      return 0;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
  return 2315264010;
}

uint64_t hlp_igtree_freeFeatureVector(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      if (*a2)
      {
        heap_Free(*(a1 + 8), *a2);
        *a2 = 0;
      }

      ++a2;
      --v5;
    }

    while (v5);
  }

  return 0;
}

uint64_t hlp_resizeFeature(uint64_t a1, uint64_t *a2, char *__s)
{
  v5 = strlen(__s);
  v6 = heap_Realloc(*(a1 + 8), *a2, (v5 + 1));
  if (v6)
  {
    v7 = v6;
    result = 0;
    *a2 = v7;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }

  return result;
}

uint64_t hlp_igtree_setFeature(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v11 = -1;
  result = hlp_igtree_isFeatureRequired(a2, a3, a4, &v11);
  if (result)
  {
    if (*a6)
    {
      v10 = v11;
      if (strlen(a6) < 0x41 || (result = hlp_resizeFeature(a1, (a5 + 8 * v11), a6), (result & 0x80000000) == 0))
      {
        strcpy(*(a5 + 8 * v10), a6);
        return 0;
      }
    }

    else
    {
      result = 0;
      **(a5 + 8 * v11) = 61;
    }
  }

  return result;
}

uint64_t hlp_igtree_isFeatureRequired(uint64_t a1, unsigned int a2, int a3, unsigned __int16 *a4)
{
  if (a2 < 2)
  {
    return 0;
  }

  v6 = 0;
  v7 = g_featureNames_2[a3];
  v8 = (a2 - 1);
  while (strcmp(*(a1 + 8 * v6), v7))
  {
    if (v8 <= ++v6)
    {
      return 0;
    }
  }

  *a4 = v6;
  return 1;
}

char *feat_wordlength(uint64_t a1, unsigned int a2, int a3, int a4, char *__src, char *__dst)
{
  *__dst = 0;
  if (a4 + a3 < a2)
  {
    return sprintf(__dst, "%d", *(a1 + 40 * (a4 + a3) + 26));
  }

  return strcpy(__dst, __src);
}

uint64_t hlp_igtree_setFeatureVector(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v7 = a7;
  v77 = 0;
  v14 = heap_Calloc(*(a1 + 8), 1, 2048);
  if (v14)
  {
    v15 = v14;
    v76 = a6;
    if (a4 < 2)
    {
      goto LABEL_101;
    }

    v16 = 0;
    v17 = (a4 - 1);
    while (strcmp(*(a3 + 8 * v16), "word"))
    {
      if (v17 == ++v16)
      {
        goto LABEL_12;
      }
    }

    v77 = v16;
    if (v7 >= v76)
    {
      v19 = "=";
    }

    else
    {
      v19 = *(a5 + 40 * v7);
    }

    v20 = hlp_igtree_setFeature(a1, a3, a4, 0, a2, v19);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_188;
    }

LABEL_12:
    v21 = 0;
    v22 = v17 <= 1 ? 1 : (a4 - 1);
    while (strcmp(*(a3 + 8 * v21), "lword"))
    {
      if (v22 == ++v21)
      {
        goto LABEL_22;
      }
    }

    v77 = v21;
    if (v7 - 1 >= v76)
    {
      v23 = "=";
    }

    else
    {
      v23 = *(a5 + 40 * (v7 - 1));
    }

    v20 = hlp_igtree_setFeature(a1, a3, a4, 1, a2, v23);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_188;
    }

LABEL_22:
    v24 = 0;
    while (strcmp(*(a3 + 8 * v24), "llword"))
    {
      if (v22 == ++v24)
      {
        goto LABEL_30;
      }
    }

    v77 = v24;
    if (v7 - 2 >= v76)
    {
      v25 = "=";
    }

    else
    {
      v25 = *(a5 + 40 * (v7 - 2));
    }

    v20 = hlp_igtree_setFeature(a1, a3, a4, 2, a2, v25);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_188;
    }

LABEL_30:
    v26 = 0;
    while (strcmp(*(a3 + 8 * v26), "rword"))
    {
      if (v22 == ++v26)
      {
        goto LABEL_38;
      }
    }

    v77 = v26;
    if (v7 + 1 >= v76)
    {
      v27 = "=";
    }

    else
    {
      v27 = *(a5 + 40 * (v7 + 1));
    }

    v20 = hlp_igtree_setFeature(a1, a3, a4, 3, a2, v27);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_188;
    }

LABEL_38:
    v28 = 0;
    while (strcmp(*(a3 + 8 * v28), "rrword"))
    {
      if (v22 == ++v28)
      {
        goto LABEL_46;
      }
    }

    v77 = v28;
    if (v7 + 2 >= v76)
    {
      v29 = "=";
    }

    else
    {
      v29 = *(a5 + 40 * (v7 + 2));
    }

    v20 = hlp_igtree_setFeature(a1, a3, a4, 4, a2, v29);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_188;
    }

LABEL_46:
    v30 = 0;
    while (strcmp(*(a3 + 8 * v30), "wordlen"))
    {
      if (v22 == ++v30)
      {
        goto LABEL_51;
      }
    }

    v77 = v30;
    feat_wordlength(a5, v76, v7, 0, "=", v15);
    v20 = hlp_igtree_setFeature(a1, a3, a4, 5, a2, v15);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_188;
    }

LABEL_51:
    v31 = 0;
    while (strcmp(*(a3 + 8 * v31), "lwordlen"))
    {
      if (v22 == ++v31)
      {
        goto LABEL_56;
      }
    }

    v77 = v31;
    feat_wordlength(a5, v76, v7, -1, "=", v15);
    v20 = hlp_igtree_setFeature(a1, a3, a4, 6, a2, v15);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_188;
    }

LABEL_56:
    v32 = 0;
    while (strcmp(*(a3 + 8 * v32), "rwordlen"))
    {
      if (v22 == ++v32)
      {
        goto LABEL_61;
      }
    }

    v77 = v32;
    feat_wordlength(a5, v76, v7, 1, "=", v15);
    v20 = hlp_igtree_setFeature(a1, a3, a4, 7, a2, v15);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_188;
    }

LABEL_61:
    v33 = 0;
    while (strcmp(*(a3 + 8 * v33), "pos"))
    {
      if (v22 == ++v33)
      {
        goto LABEL_69;
      }
    }

    v77 = v33;
    if (v7 >= v76)
    {
      v34 = "=";
    }

    else
    {
      v34 = *(a5 + 40 * v7 + 8);
    }

    v20 = hlp_igtree_setFeature(a1, a3, a4, 8, a2, v34);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_188;
    }

LABEL_69:
    v35 = 0;
    while (strcmp(*(a3 + 8 * v35), "lpos"))
    {
      if (v22 == ++v35)
      {
        goto LABEL_77;
      }
    }

    v77 = v35;
    if (v7 - 1 >= v76)
    {
      v36 = "=";
    }

    else
    {
      v36 = *(a5 + 40 * (v7 - 1) + 8);
    }

    v20 = hlp_igtree_setFeature(a1, a3, a4, 9, a2, v36);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_188;
    }

LABEL_77:
    v37 = 0;
    while (strcmp(*(a3 + 8 * v37), "llpos"))
    {
      if (v22 == ++v37)
      {
        goto LABEL_85;
      }
    }

    v77 = v37;
    if (v7 - 2 >= v76)
    {
      v38 = "=";
    }

    else
    {
      v38 = *(a5 + 40 * (v7 - 2) + 8);
    }

    v20 = hlp_igtree_setFeature(a1, a3, a4, 10, a2, v38);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_188;
    }

LABEL_85:
    v39 = 0;
    while (strcmp(*(a3 + 8 * v39), "rpos"))
    {
      if (v22 == ++v39)
      {
        goto LABEL_93;
      }
    }

    v77 = v39;
    if (v7 + 1 >= v76)
    {
      v40 = "=";
    }

    else
    {
      v40 = *(a5 + 40 * (v7 + 1) + 8);
    }

    v20 = hlp_igtree_setFeature(a1, a3, a4, 11, a2, v40);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_188;
    }

LABEL_93:
    v41 = 0;
    while (strcmp(*(a3 + 8 * v41), "rrpos"))
    {
      if (v22 == ++v41)
      {
        goto LABEL_101;
      }
    }

    v77 = v41;
    v42 = v7 + 2 >= v76 ? "=" : *(a5 + 40 * (v7 + 2) + 8);
    v20 = hlp_igtree_setFeature(a1, a3, a4, 12, a2, v42);
    if ((v20 & 0x80000000) == 0)
    {
LABEL_101:
      if (!hlp_igtree_isFeatureRequired(a3, a4, 13, &v77) || (v43 = feat_char(a5, v7, 0, v15), v20 = hlp_igtree_setFeature(a1, a3, a4, 13, a2, v43), (v20 & 0x80000000) == 0))
      {
        if (!hlp_igtree_isFeatureRequired(a3, a4, 15, &v77) || (v44 = feat_char(a5, v7, 1, v15), v20 = hlp_igtree_setFeature(a1, a3, a4, 15, a2, v44), (v20 & 0x80000000) == 0))
        {
          if (!hlp_igtree_isFeatureRequired(a3, a4, 14, &v77) || (v45 = feat_char(a5, v7, -1, v15), v20 = hlp_igtree_setFeature(a1, a3, a4, 14, a2, v45), (v20 & 0x80000000) == 0))
          {
            if (!hlp_igtree_isFeatureRequired(a3, a4, 16, &v77) || (v46 = feat_char(a5, v7, -2, v15), v20 = hlp_igtree_setFeature(a1, a3, a4, 16, a2, v46), (v20 & 0x80000000) == 0))
            {
              if (!hlp_igtree_isFeatureRequired(a3, a4, 17, &v77))
              {
                goto LABEL_196;
              }

              if (v7)
              {
                v47 = v7 + 4294967294;
                v48 = v7 - 1;
                v49 = "=";
                while (v48)
                {
                  v50 = (a5 + 40 * v47--);
                  --v48;
                  if (*v50[1] == 110)
                  {
                    v49 = *v50;
                    break;
                  }
                }
              }

              else
              {
                v49 = "=";
              }

              v20 = hlp_igtree_setFeature(a1, a3, a4, 17, a2, v49);
              if ((v20 & 0x80000000) == 0)
              {
LABEL_196:
                if (!hlp_igtree_isFeatureRequired(a3, a4, 18, &v77))
                {
                  goto LABEL_193;
                }

                if (v7)
                {
                  v51 = v7 + 4294967294;
                  v52 = v7 - 1;
                  v53 = "=";
                  while (v52)
                  {
                    v54 = (a5 + 40 * v51--);
                    --v52;
                    if (*v54[1] == 118)
                    {
                      v53 = *v54;
                      break;
                    }
                  }
                }

                else
                {
                  v53 = "=";
                }

                v20 = hlp_igtree_setFeature(a1, a3, a4, 18, a2, v53);
                if ((v20 & 0x80000000) == 0)
                {
LABEL_193:
                  if (!hlp_igtree_isFeatureRequired(a3, a4, 19, &v77))
                  {
                    goto LABEL_194;
                  }

                  v55 = "=";
                  v56 = v7;
                  while (v76 > ++v56)
                  {
                    v57 = (a5 + 40 * v56);
                    if (*v57[1] == 110)
                    {
                      v55 = *v57;
                      break;
                    }
                  }

                  v20 = hlp_igtree_setFeature(a1, a3, a4, 19, a2, v55);
                  if ((v20 & 0x80000000) == 0)
                  {
LABEL_194:
                    if (!hlp_igtree_isFeatureRequired(a3, a4, 19, &v77))
                    {
                      goto LABEL_195;
                    }

                    v58 = "=";
                    v59 = v7;
                    while (v76 > ++v59)
                    {
                      v60 = (a5 + 40 * v59);
                      if (*v60[1] == 118)
                      {
                        v58 = *v60;
                        break;
                      }
                    }

                    v20 = hlp_igtree_setFeature(a1, a3, a4, 20, a2, v58);
                    if ((v20 & 0x80000000) == 0)
                    {
LABEL_195:
                      if (!hlp_igtree_isFeatureRequired(a3, a4, 21, &v77) || (v7 >= v76 ? (v62 = "=") : ((v15[1] = 0, *(a5 + 40 * v7 + 26) > 5u) ? (v61 = 48) : (v61 = 49), *v15 = v61, v62 = v15), v20 = hlp_igtree_setFeature(a1, a3, a4, 21, a2, v62), (v20 & 0x80000000) == 0))
                      {
                        if (!hlp_igtree_isFeatureRequired(a3, a4, 22, &v77) || (v7 >= v76 ? (v64 = "=") : ((v15[1] = 0, *(a5 + 40 * v7 + 26) < 2u) ? (v63 = 48) : (v63 = 49), *v15 = v63, v64 = v15), v20 = hlp_igtree_setFeature(a1, a3, a4, 22, a2, v64), (v20 & 0x80000000) == 0))
                        {
                          if (!hlp_igtree_isFeatureRequired(a3, a4, 23, &v77) || (v7 - 1 >= v76 ? (v66 = "=") : ((v15[1] = 0, *(a5 + 40 * (v7 - 1) + 26) > 5u) ? (v65 = 48) : (v65 = 49), *v15 = v65, v66 = v15), v20 = hlp_igtree_setFeature(a1, a3, a4, 23, a2, v66), (v20 & 0x80000000) == 0))
                          {
                            if (!hlp_igtree_isFeatureRequired(a3, a4, 24, &v77) || (v7 - 1 >= v76 ? (v68 = "=") : ((v15[1] = 0, *(a5 + 40 * (v7 - 1) + 26) < 2u) ? (v67 = 48) : (v67 = 49), *v15 = v67, v68 = v15), v20 = hlp_igtree_setFeature(a1, a3, a4, 24, a2, v68), (v20 & 0x80000000) == 0))
                            {
                              if (!hlp_igtree_isFeatureRequired(a3, a4, 25, &v77) || (v7 + 1 >= v76 ? (v70 = "=") : ((v15[1] = 0, *(a5 + 40 * (v7 + 1) + 26) > 5u) ? (v69 = 48) : (v69 = 49), *v15 = v69, v70 = v15), v20 = hlp_igtree_setFeature(a1, a3, a4, 25, a2, v70), (v20 & 0x80000000) == 0))
                              {
                                if (!hlp_igtree_isFeatureRequired(a3, a4, 26, &v77) || (v7 + 1 >= v76 ? (v72 = "=") : ((v15[1] = 0, *(a5 + 40 * (v7 + 1) + 26) < 2u) ? (v71 = 48) : (v71 = 49), *v15 = v71, v72 = v15), v20 = hlp_igtree_setFeature(a1, a3, a4, 26, a2, v72), (v20 & 0x80000000) == 0))
                                {
                                  v73 = 0;
                                  v74 = v77;
                                  do
                                  {
                                    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "igtree feature %s", *(a2 + 8 * v73));
                                    v18 = 0;
                                    ++v73;
                                  }

                                  while (v74 >= v73);
                                  goto LABEL_189;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_188:
    v18 = v20;
LABEL_189:
    heap_Free(*(a1 + 8), v15);
    return v18;
  }

  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
  return 2315264010;
}

char *feat_char(uint64_t a1, unsigned int a2, int a3, char *a4)
{
  v5 = a3;
  v6 = *(a1 + 40 * a2 + 26);
  if (a3 < 0)
  {
    if (((v6 + a3) & 0x8000) != 0)
    {
      return "=";
    }

    v5 = (v6 + a3);
  }

  if (v6 <= v5)
  {
    return "=";
  }

  v7 = 0;
  v8 = (a1 + 40 * a2);
  do
  {
    utf8_getUTF8Char(*v8, v7, a4);
    v7 += strlen(a4);
  }

  while (v5-- != 0);
  return a4;
}

uint64_t pandpIgtreeInit(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v14 = IgtreeContextInit(a1, a2, a3, a4, a5, a6, a7 + 7, "igtree2ps");
  if (v14 < 0)
  {
    goto LABEL_5;
  }

  if (a7[8])
  {
    v14 = IgtreeContextInit(a1, a2, a3, a4, a5, a6, a7 + 14, "igtree2pw");
    if ((v14 & 0x80000000) == 0)
    {
      v15 = "igtreexsh";
      v16 = a7 + 21;
      v17 = a1;
      v18 = a2;
      v19 = a3;
      v20 = a4;
      v21 = a5;
      v22 = a6;
      goto LABEL_7;
    }

LABEL_5:
    v23 = v14;
    pandpIgtreeDeinit(a5, a6, a7);
    return v23 | 0x8A002000;
  }

  v15 = "igtree1p";
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v16 = a7;
LABEL_7:
  v24 = IgtreeContextInit(v17, v18, v19, v20, v21, v22, v16, v15);
  if ((v24 & 0x80000000) != 0)
  {
    pandpIgtreeDeinit(a5, a6, a7);
    return v24 | 0x8A002000;
  }

  return v24;
}

uint64_t IgtreeContextInit(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char *__s1)
{
  __s1a = 0;
  *a7 = __s1;
  a7[3] = 0;
  a7[5] = 0;
  a7[6] = 0;
  if (!strcmp(__s1, "igtree2ps"))
  {
    v16 = 1;
    if ((paramc_ParamGetStr(*(a5 + 40), "compatstrongbnd", &__s1a) & 0x80000000) == 0 && __s1a && !strcmp(__s1a, "yes"))
    {
      log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "<%s> disables voice-dependent strong BND model", "compatstrongbnd");
      v16 = 0;
    }
  }

  else
  {
    v16 = 1;
  }

  if ((paramc_ParamGetStr(*(a5 + 40), "basicclcprosody", &__s1a) & 0x80000000) == 0 && __s1a && !strcmp(__s1a, "yes"))
  {
    log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "<%s> disables voice-dependent %s", "basicclcprosody", __s1);
  }

  else if (v16)
  {
    v17 = tryLoadingIgtreeModel(a1, a2, a3, a4, a5, a7, __s1, 1);
    if (v17 < 0)
    {
      return v17 | 0x8A002000;
    }
  }

  v18 = a7[1];
  if (v18)
  {
    goto LABEL_15;
  }

  v17 = tryLoadingIgtreeModel(a1, a2, a3, a4, a5, a7, __s1, 0);
  if (v17 < 0)
  {
    return v17 | 0x8A002000;
  }

  v18 = a7[1];
  if (v18)
  {
LABEL_15:
    a7[2] = 0;
    v19 = *(v18 + 1312);
    v20 = *(v18 + 1296);
    v21 = v20 - 1;
    v22 = heap_Calloc(*(a5 + 8), (v20 - 1), 8);
    a7[2] = v22;
    if (v22)
    {
      v37 = a6;
      if (!v21)
      {
LABEL_25:
        a7[3] = "";
        *(a7 + 8) = 1;
        v29 = a7[1];
        if (v29 && *(v29 + 1328) && *(v29 + 1336))
        {
          v30 = 0;
          do
          {
            v31 = v30;
            v32 = (*(v29 + 1328) + 16 * v30);
            v33 = *v32;
            if (!strcmp("orth_top200", *v32))
            {
              a7[3] = v32[1];
            }

            else if (!strcmp("bnd1_dist_min", v33))
            {
              v34 = strtol(v32[1], 0, 10);
              if (v34 < 1)
              {
                log_OutText(*(a5 + 32), "FE_PHRASING", 1, 0, "readIgtreeParams: ignore invalid bnd1_dist_min value %s", *(*(a7[1] + 1328) + 16 * v31 + 8));
              }

              else
              {
                *(a7 + 8) = v34;
              }
            }

            v30 = v31 + 1;
            v29 = a7[1];
          }

          while (*(v29 + 1336) > (v31 + 1));
        }

        return 0;
      }

      v23 = 0;
      while (1)
      {
        v24 = v23;
        *(v22 + 8 * v23) = 0;
        v25 = *(v19 + 8 * v23);
        v26 = &off_1F42D2EA0;
        v27 = "pos_current";
        while (strcmp(v27, v25))
        {
          v28 = *v26;
          v26 += 2;
          v27 = v28;
          if (!v28)
          {
            goto LABEL_23;
          }
        }

        log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "traceFeatureMap %s [%d] => %s", *a7, v24, v27);
        *(a7[2] + 8 * v24) = *(v26 - 1);
LABEL_23:
        v22 = a7[2];
        if (!*(v22 + 8 * v24))
        {
          break;
        }

        v23 = (v24 + 1);
        if (v23 >= v21)
        {
          goto LABEL_25;
        }
      }

      log_OutText(*(a5 + 32), "FE_PHRASING", 0, 0, "no implementation for feature[%d] => %s", v24, *(v19 + 8 * v24));
      log_OutPublic(*(a5 + 32), "FE_PHRASING", 37001, "%s%s", "unimplemented feature", *(v19 + 8 * v24));
      heap_Free(*(a5 + 8), a7[2]);
      a7[2] = 0;
      v35 = 2315264025;
      a6 = v37;
    }

    else
    {
      log_OutPublic(*(a5 + 32), "FE_PHRASING", 37000, 0);
      v35 = 2315264010;
    }

    IgtreeContextDeinit(a5, a6, a7);
    return v35;
  }

  return 0;
}

void *pandpIgtreeDeinit(void *a1, uint64_t a2, void *a3)
{
  IgtreeContextDeinit(a1, a2, a3);
  IgtreeContextDeinit(a1, a2, a3 + 7);
  IgtreeContextDeinit(a1, a2, a3 + 14);

  return IgtreeContextDeinit(a1, a2, a3 + 21);
}

void *IgtreeContextDeinit(void *result, uint64_t a2, void *a3)
{
  v4 = result;
  *a3 = 0;
  a3[3] = 0;
  v5 = a3[1];
  if (v5)
  {
    result = igtree_Deinit_ReadOnly_DereferenceCnt(result, a2, v5);
    a3[1] = 0;
  }

  v6 = a3[2];
  if (v6)
  {
    result = heap_Free(v4[1], v6);
    a3[2] = 0;
  }

  a3[3] = 0;
  a3[5] = 0;
  a3[6] = 0;
  return result;
}

uint64_t singlePassIgtreePhrasing(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v25 = 0;
  v5 = *(a5[1] + 1296);
  v26 = 0;
  if (*(a2 + 8) < 2u)
  {
    return 0;
  }

  v27 = 0;
  v23 = v5 - 1;
  v11 = allocateFeatureVector(a1, (v5 - 1), &v27, &v26);
  if (v11 < 0)
  {
    return v11 | 0x8A002000;
  }

  a5[5] = a3;
  a5[6] = a4;
  v12 = v27;
  if (*(a2 + 8) >= 2u)
  {
    v6 = 0;
    v13 = 0;
    while (1)
    {
      v14 = *a2 + 32 * v13;
      if (*(v14 + 4) == 2 && *(v14 + 36) == 2)
      {
        goto LABEL_29;
      }

      v15 = *(v14 + 2) - 1;
      if (v23)
      {
        v16 = 0;
        do
        {
          (*(a5[2] + v16 * 8))(a5, v15, v12[v16], 128);
          ++v16;
        }

        while (v23 != v16);
      }

      v6 = igtree_Process(a5[1], v12, &v25);
      if ((v6 & 0x80000000) != 0)
      {
        goto LABEL_29;
      }

      v17 = "?";
      if ((*(*a3 + 224 * v15 + 75) - 1) <= 3u)
      {
        v17 = off_1E81A4408[(*(*a3 + 224 * v15 + 75) - 1)];
      }

      v18 = v25;
      traceFeatureVector(a1, a5, v15, v12, v25, v17);
      if (*(*a3 + 224 * v15 + 75))
      {
        v19 = v17;
      }

      else
      {
        v19 = v18;
      }

      v20 = *v19;
      if (v20 == 50)
      {
        if (!v19[1])
        {
          v21 = 3;
          goto LABEL_28;
        }
      }

      else if (v20 == 49)
      {
        if (!v19[1])
        {
          v21 = 4;
LABEL_28:
          *(*a3 + 224 * v15 + 73) = v21;
        }
      }

      else if (v20 == 46)
      {
        if (!v19[1])
        {
          goto LABEL_27;
        }
      }

      else if (46 == v20)
      {
LABEL_27:
        v21 = 2;
        goto LABEL_28;
      }

LABEL_29:
      if (*(a2 + 8) - 1 <= ++v13)
      {
        goto LABEL_33;
      }
    }
  }

  v6 = 0;
LABEL_33:
  heap_Free(*(a1 + 8), v12);
  heap_Free(*(a1 + 8), v26);
  return v6;
}

uint64_t allocateFeatureVector(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t *a4)
{
  v8 = a2;
  v9 = heap_Calloc(*(a1 + 8), a2, 128);
  *a4 = v9;
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = heap_Calloc(*(a1 + 8), v8, 8);
  *a3 = v10;
  if (!v10)
  {
    heap_Free(*(a1 + 8), *a4);
    *a4 = 0;
LABEL_8:
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }

  if (a2)
  {
    v11 = 0;
    do
    {
      *(*a3 + 8 * v11) = *a4 + (v11 << 7);
      ++v11;
    }

    while (v11 != v8);
  }

  return 0;
}

uint64_t traceFeatureVector(uint64_t a1, uint64_t a2, unsigned int a3, const char **a4, const char *a5, const char *a6)
{
  v12 = (*(*(a2 + 8) + 1296) - 1);
  if (v12 >= 2)
  {
    v13 = 8 * v12;
    v14 = 8;
    do
    {
      *&(*a4)[strlen(*a4)] = 32;
      strcat(*a4, a4[v14 / 8]);
      v14 += 8;
    }

    while (v13 != v14);
  }

  return log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "traceFeatureVector %s [%02d] %-16s | %-44s | %s %s", *a2, a3, *(*(**(a2 + 40) + 224 * a3 + 16) + 8 * *(*(a2 + 48) + 16)), *a4, a6, a5);
}

uint64_t twoPassIgtreePhrasing(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v49 = 0;
  v50 = 0;
  if (*(a2 + 8) >= 2u)
  {
    v9 = *(a5[8] + 1296) - 1;
    v10 = a5[15];
    if (v10)
    {
      v11 = *(v10 + 1296) - 1;
      if (v11 > v9)
      {
        v9 = v11;
      }
    }

    v51 = 0;
    v12 = allocateFeatureVector(a1, v9, &v51, &v50);
    if (v12 < 0)
    {
      return v12 | 0x8A002000;
    }

    v13 = *(a5[8] + 1296);
    a5[12] = a3;
    a5[13] = a4;
    if (*(a2 + 8) < 2u)
    {
      v5 = 0;
      if (a5[15])
      {
        a5[19] = a3;
        a5[20] = a4;
      }
    }

    else
    {
      v44 = a4;
      v5 = 0;
      v14 = 0;
      v15 = v51;
      v45 = (v13 - 1);
      do
      {
        v16 = *a2 + 32 * v14;
        if (*(v16 + 4) != 2 || *(v16 + 36) != 2)
        {
          v17 = *(v16 + 2) - 1;
          if (v45)
          {
            for (i = 0; i != v45; ++i)
            {
              (*(a5[9] + i * 8))(a5 + 7, v17, v15[i], 128);
            }
          }

          v5 = igtree_Process(a5[8], v15, &v49);
          if ((v5 & 0x80000000) == 0)
          {
            v19 = "?";
            if ((*(*a3 + 224 * v17 + 75) - 1) <= 3u)
            {
              v19 = off_1E81A4428[(*(*a3 + 224 * v17 + 75) - 1)];
            }

            v20 = v49;
            traceFeatureVector(a1, (a5 + 7), v17, v15, v49, v19);
            if (*(*a3 + 224 * v17 + 75))
            {
              v21 = v19;
            }

            else
            {
              v21 = v20;
            }

            v22 = *v21;
            if (v22 == 43)
            {
              v23 = -*(v21 + 1);
            }

            else
            {
              v23 = 43 - v22;
            }

            if (v23)
            {
              v24 = 2;
            }

            else
            {
              v24 = 4;
            }

            *(*a3 + 224 * v17 + 73) = v24;
          }
        }

        ++v14;
        v25 = *(a2 + 8);
      }

      while ((v25 - 1) > v14);
      v26 = a5[15];
      if (v26)
      {
        v27 = *(v26 + 1296);
        a5[19] = a3;
        a5[20] = v44;
        v28 = v51;
        if (v25 >= 2)
        {
          v29 = 0;
          v46 = (v27 - 1);
          do
          {
            v30 = *a2 + 32 * v29;
            if (*(v30 + 4) != 2 || *(v30 + 36) != 2)
            {
              v31 = (*(v30 + 2) - 1);
              v32 = *a3 + 224 * v31;
              if (*(v32 + 73) != 4 || *(v32 + 75) != 4)
              {
                if (v46)
                {
                  for (j = 0; j != v46; ++j)
                  {
                    (*(a5[16] + j * 8))(a5 + 14, v31, v28[j], 128);
                  }
                }

                v5 = igtree_Process(a5[15], v28, &v49);
                if ((v5 & 0x80000000) == 0)
                {
                  v34 = "?";
                  if ((*(*a3 + 224 * v31 + 75) - 1) <= 3u)
                  {
                    v34 = off_1E81A4448[(*(*a3 + 224 * v31 + 75) - 1)];
                  }

                  v35 = v49;
                  traceFeatureVector(a1, (a5 + 14), v31, v28, v49, v34);
                  v36 = *a3 + 224 * v31;
                  v38 = *(v36 + 73);
                  v37 = (v36 + 73);
                  if (v38 != 4)
                  {
                    if (*(*a3 + 224 * v31 + 75))
                    {
                      v39 = v34;
                    }

                    else
                    {
                      v39 = v35;
                    }

                    v40 = *v39;
                    if (v40 == 43)
                    {
                      v41 = -*(v39 + 1);
                    }

                    else
                    {
                      v41 = 43 - v40;
                    }

                    if (v41)
                    {
                      v42 = 2;
                    }

                    else
                    {
                      v42 = 3;
                    }

                    *v37 = v42;
                  }
                }
              }
            }

            ++v29;
          }

          while (*(a2 + 8) - 1 > v29);
        }

        goto LABEL_59;
      }
    }

    v28 = v51;
LABEL_59:
    heap_Free(*(a1 + 8), v28);
    heap_Free(*(a1 + 8), v50);
    return v5;
  }

  return 0;
}

uint64_t threePassIgtreePhrasing(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v31 = 0;
  v32 = 0;
  v10 = twoPassIgtreePhrasing(a1, a2, a3, a4, a5);
  if (v10 < 0)
  {
    return v10 | 0x8A002000;
  }

  v33 = 0;
  v10 = allocateFeatureVector(a1, (*(a5[22] + 1296) - 1), &v33, &v32);
  if (v10 < 0)
  {
    return v10 | 0x8A002000;
  }

  v28 = a1;
  v11 = *(a5[22] + 1296);
  a5[26] = a3;
  a5[27] = a4;
  LODWORD(v12) = *(v8 + 8);
  v13 = v33;
  if (*(v8 + 8))
  {
    v14 = 0;
    v15 = 0;
    v30 = 0;
    v29 = (v11 - 1);
    v27 = v8;
    while (1)
    {
      v16 = *a3;
      v17 = (*(*v8 + 32 * v14 + 2) - 1);
      v18 = *a3 + 224 * v17;
      if (*(v18 + 216) == 2)
      {
        *(v18 + 73) = 4;
      }

      if (v12 - 1 == v15 || *(v16 + 224 * v17 + 73) - 3 <= 1)
      {
        if (v29)
        {
          for (i = 0; i != v29; ++i)
          {
            (*(a5[23] + i * 8))(a5 + 21, v17, v13[i], 128);
          }
        }

        v30 = igtree_Process(a5[22], v13, &v31);
        if ((v30 & 0x80000000) == 0)
        {
          v20 = v31;
          if (*(*a3 + 224 * v17 + 120))
          {
            v21 = *(*a3 + 224 * v17 + 120);
          }

          else
          {
            v21 = "?";
          }

          traceFeatureVector(v28, (a5 + 21), v17, v13, v31, v21);
          v22 = *a3 + 224 * v17;
          v23 = *(v22 + 112);
          if (*(v22 + 120))
          {
            v20 = v21;
          }

          v24 = strlen(v20);
          v25 = heap_Realloc(*(v28 + 8), v23, (v24 + 1));
          if (!v25)
          {
            log_OutPublic(*(v28 + 32), "FE_PHRASING", 37000, 0);
            return 2315264010;
          }

          *(*a3 + 224 * v17 + 112) = v25;
          strcpy(v25, v20);
          v8 = v27;
        }
      }

      ++v14;
      v12 = *(v8 + 8);
      v15 = v14;
      if (v14 >= v12)
      {
        goto LABEL_24;
      }
    }
  }

  v30 = 0;
LABEL_24:
  heap_Free(*(v28 + 8), v13);
  heap_Free(*(v28 + 8), v32);
  return v30;
}

uint64_t simplifiedTokenPhrasing(uint64_t a1, uint64_t *a2, void *a3, unsigned __int16 *a4)
{
  if (*(a2 + 4) >= 2u)
  {
    v23 = v4;
    v24 = v5;
    v10 = 0;
    v11 = 0;
    v12 = *a2;
    do
    {
      v22 = 0;
      v13 = v12 + 32 * v11;
      if (*(v13 + 4) == 2)
      {
        v14 = v12 + v10;
        if (*(v12 + v10 + 36) == 2)
        {
          v21 = 0;
          v19 = 0;
          v20 = 0;
          FLOATSUR_PLUS(&v21, a4 + 194, a4 + 196);
          FLOATSUR_PLUS(&v19, a4 + 192, &v21);
          FLOATSUR_TIMES(&v21, (v13 + 8), a4 + 192);
          FLOATSUR_TIMES(&v20 + 2, (v14 + 40), a4 + 194);
          FLOATSUR_TIMES(&v20, (v13 + 12), a4 + 196);
          FLOATSUR_PLUS(&v19 + 2, &v21, &v20 + 2);
          FLOATSUR_PLUS(&v19 + 2, &v19 + 2, &v20);
          FLOATSUR_DIV(&v21, &v19 + 2, &v19);
          FLOATSUR_TIMES_INT(&v22, &v21, 0xAu, 0);
          log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "bndVal[%d] = %d.%d (thisphraseWeight=%d.%d thisBndWeight=%d.%d nextphraseWeight=%d.%d)", v11, v22, HIWORD(v22), *(v13 + 8), *(v13 + 10), *(v13 + 12), *(v13 + 14), *(v14 + 40), *(v14 + 42));
          if (FLOATSUR_LT(&v22, a4 + 186))
          {
            v12 = *a2;
            v15 = *a3 + 224 * *(*a2 + 32 * v11 + 2);
            v16 = 2;
          }

          else
          {
            v17 = FLOATSUR_LT(&v22, a4 + 188);
            v12 = *a2;
            v15 = *a3 + 224 * *(*a2 + 32 * v11 + 2);
            if (v17)
            {
              v16 = 3;
            }

            else
            {
              v16 = 4;
            }
          }

          *(v15 - 151) = v16;
        }
      }

      ++v11;
      v10 += 32;
    }

    while (*(a2 + 4) - 1 > v11);
  }

  return 0;
}

uint64_t tryLoadingIgtreeModel(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, int a8)
{
  v33 = *MEMORY[0x1E69E9840];
  memset(v24, 0, sizeof(v24));
  *(a6 + 8) = 0;
  __s1 = 0;
  v23 = 0;
  v20 = 0;
  v21 = "";
  memset(v32, 0, sizeof(v32));
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  Str = paramc_ParamGetStr(*(a5 + 40), "langcode", &v23);
  if (Str < 0)
  {
    goto LABEL_11;
  }

  Str = paramc_ParamGetStr(*(a5 + 40), "fecfg", &v21);
  if (Str < 0)
  {
    goto LABEL_11;
  }

  v25 = 0;
  __strcat_chk();
  __strcat_chk();
  __strcat_chk();
  if (a8 == 1)
  {
    Str = paramc_ParamGetStr(*(a5 + 40), "voice", &__s1);
    if (Str < 0)
    {
LABEL_11:
      v18 = Str;
      log_OutText(*(a5 + 32), "FE_PHRASING", 3, 0, "Could not assemble broker string for IGtree phrasing model %s", a7);
      return v18 | 0x8A002000;
    }

    if (strstr(__s1, "uni"))
    {
      __s1 = 0;
    }

    else
    {
      __strcat_chk();
      __strcat_chk();
    }
  }

  __strcat_chk();
  __strcat_chk();
  __strcat_chk();
  Str = brokeraux_ComposeBrokerString(a5, &v25, 1, 1, v23, __s1, 0, v24, 0x80uLL);
  if (Str < 0)
  {
    goto LABEL_11;
  }

  if ((igtree_Init_ReadOnly_ReferenceCnt(a1, a2, a3, a4, &v20, 2, v24, "IGTR", 1031, 0) & 0x80000000) != 0)
  {
    log_OutText(*(a5 + 32), "FE_PHRASING", 3, 0, "failed to read IGtree phrasing model data - going on without");
    v17 = 0;
  }

  else
  {
    v17 = v20;
  }

  result = 0;
  *(a6 + 8) = v17;
  return result;
}

char *BND_pos_current(uint64_t a1, unsigned int a2, char *__s1, unsigned int a4)
{
  LODWORD(v4) = a4;
  *__s1 = 0;
  v6 = *(a1 + 40);
  if (*(v6 + 8) <= a2)
  {
    v4 = a4;
    v11 = a4 - 1;
    v12 = "%";
LABEL_8:
    result = strncat(__s1, v12, v11);
    goto LABEL_9;
  }

  v7 = *v6 + 224 * a2;
  if (!*(v7 + 104))
  {
    v12 = *(v7 + 88);
    if (!v12)
    {
      v12 = *(*(v7 + 16) + 8 * *(*(a1 + 48) + 18));
    }

    v4 = a4;
    v11 = a4 - 1;
    goto LABEL_8;
  }

  v8 = strncat(__s1, "_", (a4 - 1));
  strncat(v8, *(v7 + 104), v4 - 2);
  v9 = strlen(*(v7 + 104));
  result = strncat(__s1, "_", v4 - 2 - v9);
  v4 = v4;
LABEL_9:
  __s1[v4 - 1] = 0;
  return result;
}

char *BND_pos_prev(char *result, unsigned int a2, char *a3, unsigned int a4)
{
  if (!a2)
  {
    goto LABEL_6;
  }

  v4 = *(**(result + 5) + 224 * a2 + 56);
  if (!v4 || (v5 = v4 + 32 * *(*(result + 6) + 22), *(v5 + 4) != 1))
  {
    v7 = a2 - 1;
    return BND_pos_current(result, v7, a3, a4);
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
LABEL_6:
    *a3 = 37;
    return result;
  }

  v7 = v6 - 1;
  return BND_pos_current(result, v7, a3, a4);
}

size_t BND_syn_boundary_current(size_t result, unsigned int a2, char *__s1, unsigned int a4)
{
  v6 = *(*(result + 48) + 24);
  *__s1 = 0;
  v7 = *(result + 40);
  if (*(v7 + 4) <= a2)
  {

    return strncat(__s1, "%", a4 - 1);
  }

  v8 = *v7;
  for (i = a2; ; --i)
  {
    v10 = *(v8 + 224 * i + 56);
    if (!v10)
    {
LABEL_9:
      if (!i)
      {
        goto LABEL_23;
      }

      continue;
    }

    v11 = v10 + 32 * v6;
    if (*v11 == 1)
    {
      break;
    }

    if (a2 <= i)
    {
      goto LABEL_9;
    }

    if (!i || *(v11 + 4) == 1)
    {
      goto LABEL_23;
    }
  }

  v12 = *(v11 + 16);
  if (*v12 == 79 && !*(v12 + 1))
  {
LABEL_23:
    *__s1 = 79;
    return result;
  }

  if (a2 == i)
  {
    v13 = 66;
  }

  else
  {
    v13 = 73;
  }

  *__s1 = v13;
  *(__s1 + 1) = 45;
  v14 = strncat(__s1, v12, a4 - 3);
  __s1[a4 - 1] = 0;
  result = strlen(v14);
  if (result >= 5)
  {
    v15 = &__s1[result];
    if (__s1[result - 2] == 45 && *(v15 - 1) == 80)
    {
      *(v15 - 2) = 0;
    }
  }

  return result;
}

size_t BND_syn_boundary_prev(size_t result, unsigned int a2, char *a3, unsigned int a4)
{
  if (!a2)
  {
    goto LABEL_6;
  }

  v4 = *(**(result + 40) + 224 * a2 + 56);
  if (!v4 || (v5 = v4 + 32 * *(*(result + 48) + 22), *(v5 + 4) != 1))
  {
    v7 = a2 - 1;
    return BND_syn_boundary_current(result, v7, a3, a4);
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
LABEL_6:
    *a3 = 37;
    return result;
  }

  v7 = v6 - 1;
  return BND_syn_boundary_current(result, v7, a3, a4);
}

char *BND_orth_uni200(uint64_t a1, unsigned int a2, char *__s1, unsigned int a4)
{
  LODWORD(v4) = a4;
  *__s1 = 0;
  v6 = *(a1 + 40);
  if (*(v6 + 8) <= a2)
  {
    v4 = a4;
    v11 = a4 - 1;
    v12 = "%";
LABEL_5:
    v13 = __s1;
LABEL_6:
    result = strncat(v13, v12, v11);
    goto LABEL_7;
  }

  v7 = *v6 + 224 * a2;
  if (*(v7 + 104))
  {
    v8 = strncat(__s1, "_", (a4 - 1));
    strncat(v8, *(v7 + 104), v4 - 2);
    v9 = strlen(*(v7 + 104));
    result = strncat(__s1, "_", v4 - 2 - v9);
    v4 = v4;
    goto LABEL_7;
  }

  v15 = *(v7 + 16);
  v16 = *(*(a1 + 48) + 16);
  v17 = *(v15 + 8 * v16);
  if (!v17)
  {
    v4 = a4;
    v11 = a4 - 1;
    v12 = "?";
    goto LABEL_5;
  }

  v18 = strlen(*(v15 + 8 * v16));
  v19 = strncat(__s1, " ", v4 - 1);
  v20 = strncat(v19, v17, v4 - 2);
  v4 = v4;
  strncat(v20, " ", v4 - v18 - 2);
  if (v18 >= 2)
  {
    v21 = __s1[1];
    if (v21 != 32)
    {
      v22 = __s1 + 2;
      do
      {
        if ((v21 - 91) >= 0xFFFFFFE6)
        {
          *(v22 - 1) = v21 | 0x60;
        }

        v23 = *v22++;
        v21 = v23;
      }

      while (v23 != 32);
    }
  }

  result = strstr(*(a1 + 24), __s1);
  if (!result)
  {
    *__s1 = 0;
    v12 = "?";
    v13 = __s1;
    v11 = v4 - 1;
    goto LABEL_6;
  }

  if (v18)
  {
    v24 = 0;
    v25 = __s1 + 1;
    do
    {
      *(v25 - 1) = *v25;
      ++v24;
      ++v25;
    }

    while (v18 > v24);
  }

  __s1[v18] = 0;
LABEL_7:
  __s1[v4 - 1] = 0;
  return result;
}

char *BND_punct_current(char *result, unsigned int a2, char *__s1, unsigned int a4)
{
  v4 = a4;
  v12 = *MEMORY[0x1E69E9840];
  v6 = *(*(**(result + 5) + 224 * a2 + 16) + 8 * *(*(result + 6) + 16));
  *__s1 = 0;
  if (v6)
  {
    v7 = *v6;
    if (*v6)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        result = strchr(__s, v7);
        if (result)
        {
          v9 = 1;
          result = strncat(__s1, v6, 1uLL);
          --v4;
        }

        else
        {
          if (v9 == 1 || !v8)
          {
            result = strncat(__s1, "_", --v4);
          }

          v9 = 0;
        }

        v10 = *++v6;
        v7 = v10;
        --v8;
      }

      while (v10);
    }
  }

  else
  {

    return strncat(__s1, "?", a4 - 1);
  }

  return result;
}

uint64_t BND_phr1_dist(uint64_t result, uint64_t a2, _WORD *a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    result = bnd_dist(result, a2, 4);
    if (result >= 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = result;
    }

    *a3 = v5 | 0x30;
  }

  return result;
}

uint64_t BND_phr1_dist3(uint64_t result, uint64_t a2, _WORD *a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    result = bnd_dist(result, a2, 4);
    if (result >= 3)
    {
      v5 = 3;
    }

    else
    {
      v5 = result;
    }

    *a3 = v5 | 0x30;
  }

  return result;
}

uint64_t BND_phr1_dist3_fwd(uint64_t result, unsigned int a2, char *a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    v4 = *(result + 40);
    v5 = *(v4 + 4);
    if (v5 <= a2)
    {
      v14 = 48;
    }

    else
    {
      v6 = 0;
      v7 = *v4;
      while (1)
      {
        v8 = v7 + 224 * a2;
        v9 = *(v8 + 56);
        if (v9)
        {
          v10 = v9 + 32 * *(*(result + 48) + 22);
          if (*v10 == 1)
          {
            LOWORD(a2) = *(v10 + 10);
            v8 = v7 + 224 * a2;
          }
        }

        if (*(v8 + 73) == 4 || v5 - 1 == a2)
        {
          break;
        }

        v12 = v6 + 1;
        LOWORD(a2) = a2 + 1;
        if (v5 > a2 && v6++ < 2)
        {
          continue;
        }

        goto LABEL_17;
      }

      v12 = v6;
LABEL_17:
      v14 = v12 + 48;
    }

    *a3 = v14;
    a3[1] = 0;
  }

  return result;
}

uint64_t BND_phr2_dist(uint64_t result, uint64_t a2, _WORD *a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    result = bnd_dist(result, a2, 3);
    if (result >= 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = result;
    }

    *a3 = v5 | 0x30;
  }

  return result;
}

uint64_t BND_bnd1_dist_min_passed(uint64_t result, uint64_t a2, char *a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    v5 = result;
    result = bnd_dist(result, a2, 4);
    if (*(v5 + 32) >= result)
    {
      v6 = 45;
    }

    else
    {
      v6 = 43;
    }

    *a3 = v6;
    a3[1] = 0;
  }

  return result;
}

char *BND_trailpunct(uint64_t a1, unsigned int a2, char *__s1, unsigned int a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = *(*(**(a1 + 40) + 224 * a2 + 16) + 8 * *(*(a1 + 48) + 16));
  *__s1 = 0;
  if (v6 && (v7 = strlen(v6), *v6))
  {
    v8 = &v6[v7 - 1];
    *&__s1[strlen(__s1)] = 95;
    result = strchr(__s, *v8);
    if (result)
    {
      return strncat(__s1, v8, 1uLL);
    }
  }

  else
  {

    return strncat(__s1, "?", a4 - 1);
  }

  return result;
}

char *BND_doc_class(char *result, unsigned int a2, char *__s1, unsigned int a4)
{
  v4 = **(result + 5);
  *__s1 = 0;
  if (a4 >= 2)
  {
    v5 = *(v4 + 224 * a2 + 152);
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = "%";
    }

    return strncat(__s1, v6, a4 - 1);
  }

  return result;
}

size_t BND_doc_punc(size_t result, int a2, char *a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    __n_2[9] = v4;
    __n_2[10] = v5;
    v6 = a3;
    if (*(*(result + 40) + 8) <= a2)
    {
LABEL_45:
      *v6 = 37;
      return result;
    }

    __n_2[0] = 0;
    __n = 0;
    *a3 = 0;
    v8 = *(result + 40);
    v9 = *v8 + 224 * a2;
    if (*(v8 + 8) - 1 > a2 && hlp_NLUStrFind(*(v9 + 384), "S_PUNC", __n_2, &__n))
    {
      v10 = 0;
      do
      {
        if (v10 && v10 + 1 < a4)
        {
          *&v6[strlen(v6)] = 59;
          v10 = (v10 + 1);
        }

        if (v10 + 7 < a4)
        {
          *&v6[strlen(v6)] = 0x3A434E55505F53;
          v10 = (v10 + 7);
        }

        v11 = __n;
        v12 = v10 + __n;
        if (v12 < a4)
        {
          strncat(v6, __n_2[0], __n);
          v10 = v12;
          v11 = __n;
        }
      }

      while (hlp_NLUStrFind(&__n_2[0][v11], "S_PUNC", __n_2, &__n));
    }

    else
    {
      v10 = 0;
    }

    if (hlp_NLUStrFind(*(v9 + 160), "I_PUNC", __n_2, &__n))
    {
      do
      {
        if (v10 && v10 + 1 < a4)
        {
          *&v6[strlen(v6)] = 59;
          v10 = (v10 + 1);
        }

        if (v10 + 7 < a4)
        {
          *&v6[strlen(v6)] = 0x3A434E55505F49;
          v10 = (v10 + 7);
        }

        v13 = __n;
        v14 = v10 + __n;
        if (v14 < a4)
        {
          strncat(v6, __n_2[0], __n);
          v10 = v14;
          v13 = __n;
        }
      }

      while (hlp_NLUStrFind(&__n_2[0][v13], "I_PUNC", __n_2, &__n));
    }

    if (hlp_NLUStrFind(*(v9 + 160), "S_PUNC", __n_2, &__n))
    {
      do
      {
        if (v10 && v10 + 1 < a4)
        {
          *&v6[strlen(v6)] = 59;
          v10 = (v10 + 1);
        }

        if (v10 + 7 < a4)
        {
          *&v6[strlen(v6)] = 0x3A434E55505F49;
          v10 = (v10 + 7);
        }

        v15 = __n;
        v16 = v10 + __n;
        if (v16 < a4)
        {
          strncat(v6, __n_2[0], __n);
          v10 = v16;
          v15 = __n;
        }
      }

      while (hlp_NLUStrFind(&__n_2[0][v15], "S_PUNC", __n_2, &__n));
    }

    for (result = hlp_NLUStrFind(*(v9 + 160), "E_PUNC", __n_2, &__n); result; result = hlp_NLUStrFind(&__n_2[0][v17], "E_PUNC", __n_2, &__n))
    {
      if (v10 && v10 + 1 < a4)
      {
        *&v6[strlen(v6)] = 59;
        v10 = (v10 + 1);
      }

      if (v10 + 7 < a4)
      {
        *&v6[strlen(v6)] = 0x3A434E55505F45;
        v10 = (v10 + 7);
      }

      v17 = __n;
      v18 = v10 + __n;
      if (v18 < a4)
      {
        strncat(v6, __n_2[0], __n);
        v10 = v18;
        v17 = __n;
      }
    }

    if (!v10)
    {
      result = strlen(v6);
      v6 += result;
      goto LABEL_45;
    }
  }

  return result;
}

char *BND_orth(uint64_t a1, unsigned int a2, char *__s1, unsigned int a4)
{
  *__s1 = 0;
  v6 = *(a1 + 40);
  if (*(v6 + 8) <= a2)
  {
    v11 = a4;
    v12 = a4 - 1;
    v13 = "%";
LABEL_5:
    v14 = __s1;
LABEL_6:
    result = strncat(v14, v13, v12);
    goto LABEL_7;
  }

  v7 = *v6 + 224 * a2;
  if (*(v7 + 104))
  {
    v8 = strncat(__s1, "_", (a4 - 1));
    strncat(v8, *(v7 + 104), (a4 - 2));
    v9 = strlen(*(v7 + 104));
    result = strncat(__s1, "_", (a4 - 2) - v9);
    v11 = a4;
    goto LABEL_7;
  }

  v16 = *(v7 + 16);
  v17 = *(*(a1 + 48) + 16);
  v18 = *(v16 + 8 * v17);
  if (!v18)
  {
    v11 = a4;
    v12 = a4 - 1;
    v13 = "?";
    goto LABEL_5;
  }

  v19 = strlen(*(v16 + 8 * v17));
  v11 = a4;
  v20 = a4 - 1;
  strncat(__s1, " ", v20);
  if (v19 >= 1)
  {
    v21 = &v18[v19];
    do
    {
      v22 = Utf8_LengthInBytes(v18, 1);
      if (!utf8_BelongsToSet(0xAu, v18, 0, v22))
      {
        if (utf8_ToLower(v18, 0, v29))
        {
          v23 = v20 - strlen(__s1);
          v24 = v29;
          v25 = __s1;
LABEL_16:
          strncat(v25, v24, v23);
          goto LABEL_17;
        }

        if (v11 - strlen(__s1) > v22)
        {
          v23 = v22;
          v25 = __s1;
          v24 = v18;
          goto LABEL_16;
        }
      }

LABEL_17:
      v18 += v22;
    }

    while (v18 < v21);
  }

  v26 = strlen(__s1);
  strncat(__s1, " ", v20 - v26);
  result = strstr(*(a1 + 24), __s1);
  if (!result)
  {
    *__s1 = 0;
    v13 = "?";
    v14 = __s1;
    v12 = v20;
    goto LABEL_6;
  }

  if (v19)
  {
    v27 = 0;
    v28 = __s1 + 1;
    do
    {
      *(v28 - 1) = *v28;
      ++v27;
      ++v28;
    }

    while (v19 > v27);
  }

  __s1[v19] = 0;
LABEL_7:
  __s1[v11 - 1] = 0;
  return result;
}