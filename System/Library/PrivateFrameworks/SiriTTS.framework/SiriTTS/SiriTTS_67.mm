uint64_t escseqm_ClassClose(uint64_t *a1)
{
  if (!a1)
  {
    return 7;
  }

  v3 = *a1;
  v2 = a1[1];
  if (*v2 != 1)
  {
    goto LABEL_28;
  }

  v4 = *(v2 + 8);
  if (v4)
  {
    heap_Free(*(v3 + 8), v4);
    *(v2 + 8) = 0;
    *(v2 + 4) = 0;
  }

  v5 = *(v2 + 24);
  if (v5)
  {
    heap_Free(*(v3 + 8), v5);
    *(v2 + 24) = 0;
    *(v2 + 16) = 0;
  }

  v6 = *(v2 + 56);
  if (v6)
  {
    v7 = *(v2 + 48);
    if (*(v2 + 48))
    {
      v8 = 0;
      v9 = 0;
      do
      {
        if (*(v6 + v8))
        {
          heap_Free(*(v3 + 8), *(v6 + v8));
          v6 = *(v2 + 56);
          v7 = *(v2 + 48);
        }

        v10 = (v6 + v8);
        *v10 = 0;
        v10[2] = 0;
        ++v9;
        v8 += 24;
      }

      while (v9 < v7);
    }

    heap_Free(*(v3 + 8), v6);
    *(v2 + 56) = 0;
  }

  v11 = *(v2 + 40);
  if (v11)
  {
    v12 = *(v2 + 32);
    if (*(v2 + 32))
    {
      v13 = (v12 + 1) & 0x1FFFE;
      v14 = vdupq_n_s64(v12 - 1);
      v15 = xmmword_1C378AF00;
      v16 = (v11 + 32);
      v17 = vdupq_n_s64(2uLL);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v14, v15));
        if (v18.i8[0])
        {
          *(v16 - 3) = 0;
        }

        if (v18.i8[4])
        {
          *v16 = 0;
        }

        v15 = vaddq_s64(v15, v17);
        v16 += 6;
        v13 -= 2;
      }

      while (v13);
    }

    heap_Free(*(v3 + 8), v11);
    *(v2 + 40) = 0;
  }

  v19 = *(v2 + 72);
  if (v19)
  {
    heap_Free(*(v3 + 8), v19);
    *(v2 + 72) = 0;
  }

  v20 = *(v2 + 88);
  if (v20)
  {
    heap_Free(*(v3 + 8), v20);
  }

  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  v2 = a1[1];
  if (v2)
  {
LABEL_28:
    heap_Free(*(v3 + 8), v2);
  }

  heap_Free(*(v3 + 8), a1);
  return 0;
}

uint64_t escseqm_ObjOpen(uint64_t a1, _WORD *a2, int a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v6 = 2147491847;
  if (a1)
  {
    if (a6)
    {
      inited = InitRsrcFunction(a2, a3, &v20);
      if ((inited & 0x80000000) == 0)
      {
        v12 = inited;
        *a6 = 0;
        v13 = heap_Calloc(*(v20 + 8), 1, 64);
        if (v13)
        {
          v14 = v13;
          v15 = v20;
          *v13 = v20;
          *(v13 + 52) = 0;
          if (paramc_ParamGetStr(*(v15 + 40), "processingtnplus", &v18))
          {
            v16 = 1;
          }

          else
          {
            v16 = v18 == 0;
          }

          if (!v16 && !LH_stricmp(v18, "yes"))
          {
            *(v14 + 52) = 1;
          }

          *(v14 + 56) = 0;
          *(v14 + 24) = a4;
          *(v14 + 32) = a5;
          *(v14 + 8) = a1;
          *(v14 + 16) = 0;
          *(v14 + 40) = *(a1 + 8);
          *(v14 + 48) = 1024;
          if ((paramc_ParamGetUInt(*(v20 + 40), "ppescseqmaxlength", &v19) & 0x80000000) == 0)
          {
            *(v14 + 48) = v19 + 32;
          }

          *a6 = v14;
          return v12;
        }

        else
        {
          return 2147491850;
        }
      }
    }
  }

  return v6;
}

uint64_t escseqm_ObjClose(uint64_t *a1)
{
  if (!a1)
  {
    return 2147491847;
  }

  v1 = *a1;
  a1[5] = 0;
  heap_Free(*(v1 + 8), a1);
  return 0;
}

uint64_t escseqm_ProcessStart(uint64_t a1)
{
  if (!a1)
  {
    return 2147491847;
  }

  result = 0;
  *(a1 + 56) = 0;
  return result;
}

uint64_t escseqm_GetDefaults(void *a1, uint64_t *a2)
{
  v2 = 2147491847;
  v12 = 0;
  if (a1)
  {
    v5 = heap_Calloc(*(*a1 + 8), 1, 2561);
    if (!v5)
    {
      return 2147491850;
    }

    v6 = v5;
    v11[0] = 0;
    v7 = v5 + 64;
    v8 = 1;
    while (1)
    {
      *(v7 + 20) = v8;
      v11[1] = v7;
      *v7 = 1;
      *(v7 + 8) = 0;
      if (v8 <= 0xDu && ((1 << v8) & 0x2314) != 0)
      {
        goto LABEL_6;
      }

      hasNonConstCharPtrArg = marker_hasNonConstCharPtrArg(v8);
      checkForDefaultArgs(a1, v11, &v12);
      if (hasNonConstCharPtrArg)
      {
        break;
      }

      if (v12)
      {
        if (*(*(a1[1] + 8) + 64))
        {
          escseqm_str2enumMapping(a1, v11);
        }

        goto LABEL_7;
      }

      *(v7 + 20) = v8;
      if (!setDefaultArgIfAny(a1, v11))
      {
        goto LABEL_6;
      }

LABEL_7:
      ++v8;
      v7 += 64;
      if (v8 == 40)
      {
        v2 = 0;
        *a2 = v6;
        return v2;
      }
    }

    if (v12)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v7 + 20) = 0;
    goto LABEL_7;
  }

  return v2;
}

uint64_t checkForDefaultArgs(void *a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  v6 = *(a1[1] + 8);
  v7 = *(v6 + 80);
  if (*(v6 + 80))
  {
    v8 = 0;
    v9 = *(v6 + 88);
    while (1)
    {
      v10 = v9 + 24 * v8;
      v11 = *(v10 + 8);
      if (*(v10 + 8))
      {
        break;
      }

LABEL_7:
      if (++v8 == v7)
      {
        v14 = *(a2 + 8);
        goto LABEL_18;
      }
    }

    v12 = *(v10 + 16);
    while (1)
    {
      v13 = *v12++;
      if (*(*(a2 + 8) + 20) == v13)
      {
        break;
      }

      if (!--v11)
      {
        goto LABEL_7;
      }
    }

    v15 = *(*a1 + 8);
    v16 = strlen(*v10);
    *(*(a2 + 8) + 40) = heap_Calloc(v15, 1, (v16 + 1));
    v17 = *(*(a2 + 8) + 40);
    if (v17)
    {
      strcpy(v17, *(*(*(a1[1] + 8) + 88) + 24 * v8));
      result = 0;
      *a3 = 1;
      return result;
    }

    return 2147491850;
  }

  v14 = *(a2 + 8);
  v19 = *(v14 + 20);
  v20 = v19 > 0x24;
  v21 = (1 << v19) & 0x1000201000;
  if (!v20 && v21 != 0)
  {
    v23 = *(*a1 + 8);
    MarkerArgStr = marker_getMarkerArgStr(1u);
    v25 = strlen(MarkerArgStr);
    *(*(a2 + 8) + 40) = heap_Calloc(v23, 1, (v25 + 1));
    v26 = *(*(a2 + 8) + 40);
    if (v26)
    {
      v27 = marker_getMarkerArgStr(1u);
      strcpy(v26, v27);
      result = 0;
      *a3 = 1;
      return result;
    }

    return 2147491850;
  }

LABEL_18:
  v28 = *(v14 + 40);
  if (v28)
  {
    heap_Free(*(*a1 + 8), v28);
    *(*(a2 + 8) + 40) = 0;
  }

  result = 0;
  *(*(a2 + 8) + 20) = 0;
  return result;
}

uint64_t setDefaultArgIfAny(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 8) + 8);
  v3 = *(v2 + 4);
  if (!*(v2 + 4))
  {
LABEL_6:
    result = 0;
LABEL_7:
    *a2 = result;
    return result;
  }

  v4 = *(a2 + 8);
  v5 = *(v4 + 20);
  v6 = (*(v2 + 8) + 16);
  while (v5 != *(v6 - 1) || *(v6 - 2) != 1)
  {
    v6 += 6;
    if (!--v3)
    {
      goto LABEL_6;
    }
  }

  if (*v6 != 9999)
  {
    if (*(a1 + 52))
    {
      v8 = v5 == 8;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v9 = 29999;
    }

    else
    {
      v9 = *v6;
    }

    *(v4 + 40) = v9;
    result = 1;
    goto LABEL_7;
  }

  return 0;
}

uint64_t escseqm_Match(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  if (!a1 || !a2 || !a3 || !a4)
  {
    return 2147491847;
  }

  if (!**(a1[1] + 8))
  {
    log_OutPublic(*(*a1 + 32), "PP", 1805, 0);
    return 2147491847;
  }

  v7 = 0;
  v6[0] = 0;
  v6[1] = a4;
  result = escseqm_get_token(a1, a2, a3, v6, &v7);
  if ((result & 0x1FFF) != 0xA)
  {
    if (v7 == 2)
    {
      if (*(*(a1[1] + 8) + 64))
      {
        escseqm_str2enumMapping(a1, v6);
      }

      return 0;
    }

    else
    {
      return 2147491840;
    }
  }

  return result;
}

uint64_t getTrueEnd(uint64_t a1, char *a2, unsigned int a3, int a4, _DWORD *a5, int a6, _DWORD *a7)
{
  *a7 = 0;
  if (a3 <= a4)
  {
    return 0;
  }

  v35 = v7;
  v36 = v8;
  v10 = a4;
  v14 = 0;
  v15 = 0;
  v16 = a4;
  v18 = a6 != 26 && a6 != 7;
  v32 = v18;
  v33 = 0;
  v19 = a6 != 29 && v18;
  while (1)
  {
    if (!a2[v10])
    {
      return 0;
    }

    v20 = isEsc(a1, a2, (a3 - v10), v16, &v34);
    v21 = a2[v10];
    if (v20)
    {
      if (v21 != 92)
      {
        return 0;
      }
    }

    else if (v21 != 92)
    {
      LODWORD(v22) = v16 + 1;
      v27 = v21 == 34;
      goto LABEL_34;
    }

    v22 = v16 + 1;
    if (v22 >= a3 || (v23 = a2[v22], v23 != 92) && v23 != 34)
    {
      v25 = v15 != 1 || v19;
      if (v25 == 1)
      {
        break;
      }

      goto LABEL_28;
    }

    v24 = v32;
    if (v15 != 1)
    {
      v24 = 1;
    }

    if (a6 != 29 && (v24 & 1) != 0)
    {
      break;
    }

LABEL_28:
    if (v22 < a3)
    {
      v26 = a2[v22];
      if (v26 == 92 || v26 == 34)
      {
        ++v10;
        goto LABEL_53;
      }
    }

    v27 = 0;
LABEL_34:
    if (a6 != 26 && a6 != 7 || !v27)
    {
      goto LABEL_53;
    }

    if (v15 == 1)
    {
      if (v33 | v14)
      {
        v15 = 0;
        if (v14)
        {
          v28 = 0;
        }

        else
        {
          v28 = v33 == 1;
        }

        if (v28)
        {
          v14 = 1;
        }

        goto LABEL_53;
      }

      v15 = 0;
      v14 = 0;
      if (a2[v22] == 58)
      {
        *a7 = v22;
      }
    }

    else
    {
      if (v33 != 1)
      {
        v15 = 1;
        goto LABEL_53;
      }

      result = 0;
      if (a6 != 26 || v14 == 1)
      {
        return result;
      }

      v15 = 1;
    }

    v33 = 1;
LABEL_53:
    v16 = ++v10;
    if (v10 >= a3)
    {
      return 0;
    }
  }

  *a5 = v16;
  return 1;
}

uint64_t parseStringArg(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, _DWORD *a6, int a7)
{
  v13 = a5 - a4;
  v14 = heap_Calloc(*(*a1 + 8), 1, (v13 + 1));
  if (!v14)
  {
    return 2147491850;
  }

  v15 = v14;
  v30 = a1;
  v31 = a6;
  v16 = a2;
  v17 = v13;
  memcpy(v14, (a3 + a4), v13);
  if (v13)
  {
    v18 = 0;
    v19 = 0;
    v20 = v15;
    v21 = v13;
    do
    {
      if (v18)
      {
        if (*(v20 - 1) == 92)
        {
          v22 = *v20;
          if (v22 == 92 || v22 == 34)
          {
            memmove(v20 - 1, v20, v17 + v18);
            v15[--v21] = 0;
          }
        }
      }

      ++v19;
      v17 = v21;
      --v18;
      ++v20;
    }

    while (v19 < v21);
  }

  if (a7 == 1 || (v23 = *(v16 + 8), *(v23 + 20) == 26))
  {
    if (utf8_BelongsToSet(7u, v15, 0, v13))
    {
      v24 = strlen(v15);
      if (utf8_BelongsToSet(7u, v15, v24 - 1, v13))
      {
        v25 = strlen(v15);
        if (v25 != 1)
        {
          v26 = v25;
          memmove(v15, v15 + 1, v25 - 1);
          v15[v26 - 2] = 0;
        }
      }
    }

    if (a7 == 1)
    {
      v27 = (*(v16 + 8) + 48);
      v28 = v31;
      if (!*v15)
      {
        *v27 = 0;
        *v31 = 0;
        heap_Free(*(*v30 + 8), v15);
        return 0;
      }

      goto LABEL_22;
    }

    v23 = *(v16 + 8);
  }

  v27 = (v23 + 40);
  v28 = v31;
LABEL_22:
  result = 0;
  *v27 = v15;
  *v28 = 1;
  return result;
}

uint64_t parseNumericArg(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, int a5, _DWORD *a6, _DWORD *a7)
{
  v7 = a7;
  v26 = *MEMORY[0x1E69E9840];
  *a7 = 0;
  *a6 = 0;
  v8 = a5 - a4;
  if (v8 <= 0xA && a3)
  {
    v11 = result;
    v12 = 0;
    v13 = a3 + a4;
    *&__s[7] = 0;
    *__s = 0;
    do
    {
      v14 = *(v13 + v12);
      __s[v12] = v14;
      result = strlen(__s);
      if (v14)
      {
        v15 = result;
        result = utf8_BelongsToSet(6u, __s, v12, result);
        if (result)
        {
          result = utf8_BelongsToSet(0, __s, v12, v15);
          if (!result)
          {
            goto LABEL_7;
          }
        }
      }

      goto LABEL_21;
LABEL_7:
      if (v12 + 1 >= v8)
      {
        break;
      }

      if (v12 > 8)
      {
        break;
      }
    }

    while (__s[v12++]);
    v17 = *(*(a2 + 8) + 20);
    if (v17 == 2)
    {
      v18 = v13;
      v19 = v8;
      v20 = 0;
      v21 = 1;
LABEL_20:
      result = escseqm_ReadU32InRange(v18, v19, v20, v21);
      *(*(a2 + 8) + 40) = result;
      v7 = a6;
      goto LABEL_21;
    }

    v22 = *(*(v11 + 8) + 8);
    v23 = *(v22 + 16);
    if (*(v22 + 16))
    {
      v24 = (*(v22 + 24) + 8);
      while (*(v24 - 2) != v17)
      {
        v24 += 3;
        if (!--v23)
        {
          goto LABEL_16;
        }
      }

      v20 = *(v24 - 1);
      v21 = *v24;
      v18 = v13;
      v19 = v8;
      goto LABEL_20;
    }

LABEL_16:
    if (*a2 == 1)
    {
      v7 = a6;
    }
  }

LABEL_21:
  *v7 = 1;
  return result;
}

uint64_t escseqm_ReadU32InRange(uint64_t a1, int a2, unsigned int a3, unsigned int a4)
{
  v6 = 0;
  v15 = *MEMORY[0x1E69E9840];
  *&__str[7] = 0;
  v13 = 0;
  *__str = 0;
  do
  {
    v7 = v6;
    v8 = *(a1 + v6);
    __str[v6++] = v8;
    if (v7 > 8)
    {
      break;
    }
  }

  while (v8 && v6 < a2);
  __str[v6] = 0;
  v10 = strtoul(__str, &v13, 10);
  if (v10 >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = v10;
  }

  if (v10 >= a3)
  {
    return v11;
  }

  else
  {
    return a3;
  }
}

uint64_t escseqs_ClassOpen(_WORD *a1, uint64_t a2, uint64_t *a3)
{
  v6 = 2147491847;
  v11 = 0;
  if ((InitRsrcFunction(a1, a2, &v11) & 0x80000000) == 0)
  {
    v7 = heap_Calloc(*(v11 + 8), 1, 32);
    if (v7)
    {
      v8 = v7;
      v9 = v11;
      *(v7 + 8) = a2;
      *(v7 + 16) = v9;
      *v7 = a1;
      v6 = escseqm_ClassOpen(a1, a2, (v7 + 24));
      if ((v6 & 0x80000000) != 0)
      {
        heap_Free(*(v11 + 8), v8);
      }

      else
      {
        *a3 = v8;
      }
    }

    else
    {
      return 2147491850;
    }
  }

  return v6;
}

uint64_t escseqs_ClassClose(uint64_t a1)
{
  if (!a1)
  {
    return 2147491847;
  }

  v2 = *(a1 + 16);
  v3 = escseqm_ClassClose(*(a1 + 24));
  if ((v3 & 0x80000000) == 0)
  {
    heap_Free(*(v2 + 8), a1);
  }

  return v3;
}

uint64_t escseqs_ObjOpen(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v25 = 0;
  v26 = 0;
  v6 = 2147491847;
  if (a6 && (InitRsrcFunction(a2, a3, &v26) & 0x80000000) == 0)
  {
    *a6 = 0;
    v13 = heap_Alloc(v26[1], 96);
    if (!v13)
    {
      return 2147491850;
    }

    v14 = v13;
    *(v13 + 80) = 0u;
    *(v13 + 32) = 0u;
    *(v13 + 48) = 0u;
    *v13 = 0u;
    *(v13 + 16) = 0u;
    *(v13 + 64) = 0u;
    *(v13 + 72) = a1;
    *v13 = a2;
    *(v13 + 8) = a3;
    v15 = escseqm_ObjOpen(*(a1 + 24), a2, a3, a4, a5, (v13 + 64));
    if ((v15 & 0x80000000) != 0)
    {
      v20 = v15;
      heap_Free(v26[1], v14);
      return v20;
    }

    if ((objc_GetObject(v26[6], "AUDIOFETCHER", &v25) & 0x80000000) == 0)
    {
      v16 = v25;
      if (*v25 != 1 || (v17 = *(v25 + 8)) == 0)
      {
        v21 = v26[6];
        v22 = "AUDIOFETCHER";
LABEL_18:
        objc_ReleaseObject(v21, v22);
        log_OutPublic(v26[4], &modESCPP, 2574, 0);
        v23 = escseqs_ObjClose(v14);
        if (v23 < 0)
        {
          return v23;
        }

        else
        {
          return 2147491853;
        }
      }

      *(v14 + 32) = v17;
      *(v14 + 16) = *(v16 + 16);
    }

    if ((objc_GetObject(v26[6], "LANGCODECONVERTER", &v25) & 0x80000000) != 0)
    {
LABEL_13:
      v6 = 0;
      *a6 = v14;
      return v6;
    }

    v18 = v25;
    if (*v25 == 1)
    {
      v19 = *(v25 + 8);
      if (v19)
      {
        *(v14 + 56) = v19;
        *(v14 + 40) = *(v18 + 16);
        goto LABEL_13;
      }
    }

    v21 = v26[6];
    v22 = "LANGCODECONVERTER";
    goto LABEL_18;
  }

  return v6;
}

uint64_t escseqs_ObjClose(uint64_t a1)
{
  v1 = 2147491847;
  v5 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v5) & 0x80000000) == 0)
  {
    v3 = *(a1 + 64);
    if (v3)
    {
      escseqm_ObjClose(v3);
    }

    if (*(a1 + 56))
    {
      objc_ReleaseObject(*(v5 + 48), "LANGCODECONVERTER");
    }

    if (*(a1 + 32))
    {
      objc_ReleaseObject(*(v5 + 48), "AUDIOFETCHER");
    }

    heap_Free(*(v5 + 8), a1);
    return 0;
  }

  return v1;
}

uint64_t escseqs_SetMarkerSyncPos(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 2147491847;
  }

  *(a1 + 80) = a2;
  *(a1 + 84) = a2;
  *(a1 + 92) = 1;
  return escseqm_ProcessStart(*(a1 + 64));
}

uint64_t escseqs_SetReset(uint64_t a1)
{
  if (!a1)
  {
    return 2147491847;
  }

  result = 0;
  *(a1 + 88) = 0x100000000;
  return result;
}

uint64_t escseqs_GetPosInOut(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  *a2 = *(result + 80);
  *a3 = *(result + 84);
  return result;
}

uint64_t escseqs_SetPosInOut(uint64_t result, int a2, int a3)
{
  *(result + 80) = a2;
  *(result + 84) = a3;
  return result;
}

uint64_t escseqs_ProcessStart(uint64_t a1, _DWORD *a2)
{
  v13 = 0;
  v14 = 0;
  Defaults = 2147491847;
  __s1 = 0;
  v11 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v13) & 0x80000000) == 0)
  {
    if ((paramc_ParamGetStr(*(v13 + 40), "component_stop_not_reset", &__s1) & 0x80000000) == 0 && __s1 && !strcmp(__s1, "yes"))
    {
      paramc_ParamSetStr(*(v13 + 40), "component_stop_not_reset", "");
    }

    else if ((paramc_ParamGetUInt(*(v13 + 40), "pipelineswitchexecuting", &v11) & 0x80000000) != 0 || !v11)
    {
      *(a1 + 80) = 0;
      *(a1 + 92) = 0;
    }

    paramc_ParamSetUInt(*(v13 + 40), "pipelineswitchexecuting", 0);
    v5 = escseqm_ProcessStart(*(a1 + 64));
    if ((v5 & 0x80000000) != 0)
    {
      Defaults = v5;
    }

    else
    {
      Defaults = escseqm_GetDefaults(*(a1 + 64), &v14);
      if ((Defaults & 0x80000000) == 0)
      {
        for (i = 0; i != 2496; i += 64)
        {
          v7 = v14 + i;
          v8 = *(v14 + i + 84);
          if (v8 == 31)
          {
            *a2 = *(v7 + 104);
            v8 = *(v7 + 84);
          }

          if (marker_hasNonConstCharPtrArg(v8))
          {
            v9 = *(v14 + i + 104);
            if (v9)
            {
              heap_Free(*(v13 + 8), v9);
              *(v14 + i + 104) = 0;
            }
          }
        }
      }
    }

    if (v14)
    {
      heap_Free(*(v13 + 8), v14);
    }
  }

  return Defaults;
}

uint64_t escseqs_Process(uint64_t a1, uint64_t a2)
{
  v159 = 0;
  v160 = 0;
  v2 = 2147491847;
  __s = 0;
  __s1 = 0;
  v144 = 0;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v151 = 0u;
  v152 = 0x200000000uLL;
  v153 = 0u;
  v154 = 0u;
  LODWORD(v151) = 1;
  DWORD2(v154) = 0;
  *&v153 = 0;
  v150 = 0u;
  v147 = 0u;
  v148 = 0x2400000000uLL;
  DWORD2(v150) = 0;
  v149 = 0uLL;
  if (!a1 || !a2 || (InitRsrcFunction(*a1, *(a1 + 8), &v160) & 0x80000000) != 0)
  {
    return v2;
  }

  appended = datac_RequestBlock(a2, 1000, 1u, &v159);
  if ((appended & 0x80000000) != 0)
  {
    return appended;
  }

  v6 = *(v159 + 8);
  if (!v6)
  {
    return v2;
  }

  if (*(v159 + 2) != 1)
  {
    return 2147491865;
  }

  LODWORD(v155) = 0;
  LOWORD(v156) = 0;
  *(&v155 + 1) = 0;
  v7 = *(a1 + 80);
  v8 = *(a1 + 84);
  DWORD1(v156) = 0x4000;
  *(&v156 + 1) = v7;
  LODWORD(v157) = v8;
  *(&v157 + 4) = 0;
  DWORD2(v158) = 0;
  *&v158 = 0;
  appended = escseqs_AppendOutMarker(a2, &v155);
  if ((appended & 0x80000000) != 0)
  {
    return appended;
  }

  if ((paramc_ParamGetStr(*(v160 + 40), "textanalysison", &__s1) & 0x80000000) == 0)
  {
    if (__s1)
    {
      if (*__s1)
      {
        v9 = strcmp(__s1, "yes");
        if (!(DWORD2(v156) | v9))
        {
          v32 = heap_Calloc(*(v160 + 8), 1, 12);
          if (!v32)
          {
            return 2147491850;
          }

          v33 = v32;
          strcpy(v32, "ins_unknown");
          *(&v148 + 1) = 0;
          *&v149 = 0;
          *(&v149 + 1) = v32;
          appended = escseqs_AppendOutMarker(a2, &v147);
          if ((appended & 0x80000000) != 0)
          {
            return appended;
          }

          heap_Free(*(v160 + 8), v33);
        }
      }
    }
  }

  *&v140 = 0;
  *v161 = 0;
  appended = datac_RequestBlock(a2, 1011, 1u, &v140);
  if ((appended & 0x80000000) != 0)
  {
    return appended;
  }

  appended = datac_RequestBlock(a2, 1012, 1u, v161);
  if ((appended & 0x80000000) != 0)
  {
    return appended;
  }

  if (*(a1 + 92) == 1)
  {
    v129 = v6;
    v10 = &off_1E81A5238;
    LODWORD(v140) = 0;
    *(a1 + 92) = 0;
    v11 = 4;
    while (1)
    {
      v12 = *(v10 - 2);
      if (v12 > 30)
      {
        if (v12 == 36)
        {
LABEL_26:
          v19 = *v10;
          Str = paramc_ParamGetStr(*(v160 + 40), *v10, &__s);
          if ((Str & 0x1FFF) != 0x14)
          {
            v15 = Str;
            if ((Str & 0x80000000) != 0)
            {
              goto LABEL_282;
            }

            log_OutText(*(v160 + 32), &modESCPP, 4, 0, "[ESCSEQS] GET PARAM marker:%d param=%s val=%s", v12, v19, __s);
            v21 = strlen(__s);
            v22 = heap_Calloc(*(v160 + 8), 1, v21 + 1);
            if (!v22)
            {
              return 2147491850;
            }

            v23 = v22;
            v24 = strncpy(v22, __s, v21);
            v24[v21] = 0;
            LODWORD(v155) = 1;
            v25 = *(a1 + 80);
            v26 = *(a1 + 84);
            DWORD1(v156) = v12;
            *(&v156 + 1) = v25;
            *&v157 = v26;
            *(&v157 + 1) = v24;
            v27 = escseqs_AppendOutMarker(a2, &v155);
            if ((v27 & 0x80000000) != 0)
            {
              v15 = v27;
              heap_Free(*(v160 + 8), v23);
              goto LABEL_282;
            }

            heap_Free(*(v160 + 8), v23);
          }

          paramc_ParamRelease(*(v160 + 40));
          __s = 0;
          goto LABEL_32;
        }

        if (v12 == 31)
        {
LABEL_22:
          v13 = *v10;
          UInt = paramc_ParamGetUInt(*(v160 + 40), *v10, &v140);
          if ((UInt & 0x1FFF) != 0x14)
          {
            v15 = UInt;
            if ((UInt & 0x80000000) != 0)
            {
              goto LABEL_282;
            }

            log_OutText(*(v160 + 32), &modESCPP, 4, 0, "[ESCSEQS] GET PARAM marker:%d param=%s val=%d", v12, v13, v140);
            LODWORD(v155) = 1;
            v16 = *(a1 + 80);
            v17 = *(a1 + 84);
            DWORD1(v156) = v12;
            *(&v156 + 1) = v16;
            *&v157 = v17;
            DWORD2(v157) = v140;
            DWORD2(v158) = 0;
            *&v158 = 0;
            v18 = escseqs_AppendOutMarker(a2, &v155);
            if ((v18 & 0x80000000) != 0)
            {
              goto LABEL_281;
            }
          }
        }
      }

      else
      {
        if (v12 == 7)
        {
          goto LABEL_22;
        }

        if (v12 == 21)
        {
          goto LABEL_26;
        }
      }

LABEL_32:
      v10 += 2;
      if (!--v11)
      {
        v6 = v129;
        break;
      }
    }
  }

  v28 = &v6[*(v159 + 16)];
  v29 = v6;
  if (*(a1 + 88))
  {
    v29 = v6;
    if (*(v159 + 16))
    {
      v30 = 0;
      v29 = v6;
      while (1)
      {
        v31 = *v29;
        if (!v30 && v31 == 92)
        {
          break;
        }

        if (v31 == 34)
        {
          v30 = !v30;
        }

        v29 += utf8_determineUTF8CharLength(v31);
        if ((v29 + 1) > v28)
        {
          goto LABEL_50;
        }
      }

      v29 += utf8_determineUTF8CharLength(0x5Cu);
      *(a1 + 88) = 0;
    }
  }

LABEL_50:
  DWORD1(v156) = 0;
  v35 = *(v159 + 16);
  v139 = 1;
  if ((paramc_ParamGetStr(*(v160 + 40), "clcpppipelinemode", &v144) & 0x80000000) == 0 && v144)
  {
    v139 = *v144 == 0;
  }

  v134 = v28;
  if (&v29[utf8_determineUTF8CharLength(*v29)] > v28)
  {
    LOWORD(v36) = 0;
LABEL_55:
    v37 = v29;
    goto LABEL_251;
  }

  v126 = 0;
  v127 = 0;
  v36 = 0;
  while (1)
  {
    if (v35 != *(v159 + 16))
    {
      goto LABEL_55;
    }

    v136 = v36;
    v137 = v35;
    v161[0] = 0;
    v38 = utf8_determineUTF8CharLength(*v29);
    if (v38)
    {
      v37 = v29;
      while (1)
      {
        v39 = &v37[v38];
        if (v39 > v28 || isEsc(*(a1 + 64), v37, (v28 - v37), 0, v161))
        {
          v39 = v37;
          goto LABEL_70;
        }

        LOWORD(v140) = 0;
        if (v139 && isEscOrPartialEsc(*(a1 + 64), v37, (v28 - v37), 0, &v140) == 2)
        {
          goto LABEL_249;
        }

        if (v39 >= v28)
        {
          break;
        }

        v38 = utf8_determineUTF8CharLength(*v39);
        v37 = v39;
        if (!v38)
        {
          goto LABEL_70;
        }
      }

      v38 = 0;
    }

    else
    {
      v39 = v29;
    }

LABEL_70:
    v161[0] = 0;
    v135 = v28 - v39;
    v40 = isEsc(*(a1 + 64), v39, (v28 - v39), 0, v161);
    v41 = !v161[0] || v40 == 0;
    v42 = v41 ? 0 : v161[0] - 1;
    if (!v38 || &v39[v38 + v42] > v28)
    {
      break;
    }

    v43 = &v39[v42 + 1];
    v36 = v136;
    if (v43 < v28)
    {
      v44 = *v43;
      v45 = &v39[v42 + 2];
      if (v44 == 47)
      {
        v51 = v43[1];
        if ((v51 - 43) <= 0x3F && ((1 << (v51 - 43)) & 0xA008000000080001) != 0)
        {
          for (i = v43[1]; &v45[utf8_determineUTF8CharLength(i) + 2] <= v28; i = *v45)
          {
            v54 = *v45;
            if (v54 == 47)
            {
              v55 = v45[1] - 43;
              v56 = v55 > 0x3F;
              v57 = (1 << v55) & 0xA008000000080001;
              v58 = v56 || v57 == 0;
              if (!v58 && v39[2] == v51)
              {
                break;
              }
            }

            v45 += utf8_determineUTF8CharLength(v54);
          }

          v127 = v51 != 0;
          if ((v45 + 1) <= v28)
          {
            v36 = v136;
          }

          else
          {
            v36 = v136;
            if (!*(v159 + 20))
            {
              v137 = (v39 - v6);
            }
          }

          v59 = v137;
LABEL_180:
          if (!v59)
          {
            return 2147491849;
          }

          goto LABEL_181;
        }
      }

      else if (v44 == 92)
      {
        while ((v45 + 1) <= v28 && utf8_BelongsToSet(0, v45, 0, *(v159 + 16)))
        {
          v45 += utf8_determineUTF8CharLength(*v45);
        }

        v46 = v45;
        if (&v45[utf8_determineUTF8CharLength(*v45) + 1] <= v28)
        {
          v46 = v45;
          do
          {
            if (utf8_BelongsToSet(0, v46, 0, *(v159 + 16)))
            {
              break;
            }

            v60 = *v46;
            if (v60 == 61)
            {
              break;
            }

            if (v60 == 92)
            {
              break;
            }

            v46 += utf8_determineUTF8CharLength(v60);
          }

          while (&v46[utf8_determineUTF8CharLength(*v46) + 1] <= v28);
        }

        WORD2(v140) = 0;
        LODWORD(v140) = 0;
        v47 = v46 - v45;
        if ((v46 - v45) > 6uLL)
        {
          v47 = 6;
        }

        v130 = v6;
        if (v47)
        {
          __strncpy_chk();
          if (LH_stricmp(&v140, "audio"))
          {
            if (LH_stricmp(&v140, "mrk"))
            {
              v48 = LH_stricmp(&v140, "toi");
              v49 = 0;
              v133 = 0;
              v50 = v48 == 0;
              goto LABEL_120;
            }

            v49 = 0;
            v50 = 0;
            v128 = 0;
            v131 = 1;
            v133 = 1;
LABEL_123:
            v61 = (v46 + 1);
            if ((v46 + 1) > v28)
            {
LABEL_124:
              v6 = v130;
              if (!*(v159 + 20))
              {
                v137 = (v39 - v130);
              }

LABEL_176:
              v36 = v136;
              v59 = v137;
              v76 = v131 ^ 1;
              if (v137)
              {
                v76 = 1;
              }

              if ((v76 & 1) == 0)
              {
                v59 = 0;
                *(a1 + 88) = 1;
                goto LABEL_181;
              }

              goto LABEL_180;
            }

            v62 = 0;
            v63 = 0;
            v132 = v49;
            while (2)
            {
              v64 = *v46;
              if (!v63 && v64 == 92)
              {
                v65 = v128;
                if (v50)
                {
                  v65 = 0;
                }

                if ((v131 & v65 & 1) != 0 || (v50 == 1 ? (v66 = 1) : (v66 = v49), v62 == 1 && v133 | v66 && (v61 >= v28 || (v67 = *v61, v67 != 92) && v67 != 34)))
                {
                  v6 = v130;
                  goto LABEL_176;
                }
              }

              if (*v46 == 34)
              {
                v68 = v49;
              }

              else
              {
                v68 = 0;
              }

              if (v68)
              {
                v63 = v63 != 1;
                v64 = 34;
                if (!v62)
                {
                  goto LABEL_170;
                }

LABEL_159:
                if (v63 == 1)
                {
                  v73 = v49;
                }

                else
                {
                  v73 = 0;
                }

                if (((v133 | v73) & 1) == 0 && v50 != 1)
                {
                  v70 = v63;
                  v71 = v50;
                  v62 = 1;
                  goto LABEL_171;
                }

                v62 = 1;
                if (v64 == 92 && v61 < v28)
                {
                  v74 = *v61;
                  if (v74 == 34 || v74 == 92)
                  {
                    v75 = 2;
                    goto LABEL_172;
                  }

                  v70 = v63;
                  v71 = v50;
                  v64 = 92;
                }

                else
                {
LABEL_170:
                  v70 = v63;
                  v71 = v50;
                }
              }

              else
              {
                if (v62)
                {
                  goto LABEL_159;
                }

                if (v64 == 61)
                {
                  v124 = v63;
                  v125 = v50;
                  if ((v61 + 1) <= v28)
                  {
                    v69 = v61;
                    do
                    {
                      if (!utf8_BelongsToSet(0, v69, 0, *(v159 + 16)))
                      {
                        break;
                      }

                      v69 += utf8_determineUTF8CharLength(*v69);
                    }

                    while ((v69 + 1) <= v28);
                    v64 = *v46;
                  }

                  else
                  {
                    v64 = 61;
                    v69 = v61;
                  }

                  v72 = strncmp(v69, "orth", 4uLL);
                  v63 = v124;
                  if (v72)
                  {
                    v50 = v125;
                  }

                  else
                  {
                    v50 = 0;
                  }

                  v49 = v132;
                  goto LABEL_159;
                }

                v70 = v63;
                v71 = v50;
                v62 = 0;
              }

LABEL_171:
              v75 = utf8_determineUTF8CharLength(v64);
              v49 = v132;
              v50 = v71;
              v63 = v70;
              v28 = v134;
LABEL_172:
              v46 += v75;
              v61 = (v46 + 1);
              if ((v46 + 1) > v28)
              {
                goto LABEL_124;
              }

              continue;
            }
          }

          v131 = 0;
          v50 = 0;
          v133 = 0;
          v49 = 1;
        }

        else
        {
          v49 = 0;
          v50 = 0;
          v133 = 0;
LABEL_120:
          v131 = 1;
        }

        v128 = 1;
        goto LABEL_123;
      }

      v36 = v136;
      if (v135 > 11)
      {
        goto LABEL_106;
      }
    }

    if (*(v159 + 20))
    {
LABEL_106:
      v59 = v35;
      goto LABEL_181;
    }

    v59 = (v39 - v6);
LABEL_181:
    v138 = v59;
    if (v59 != *(v159 + 16))
    {
      v37 = v39;
      goto LABEL_251;
    }

    if (v39 != v29)
    {
      v18 = escseqs_AppendOutText(a2, v29, (v39 - v29));
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_281;
      }

      v36 += v39 - v29;
    }

    *(&v157 + 1) = 0;
    v15 = escseqm_Match(*(a1 + 64), v39, v135, &v155);
    if ((v15 & 0x1FFF) == 0xA)
    {
      goto LABEL_282;
    }

    v77 = DWORD1(v156);
    if (DWORD1(v156) == 36)
    {
      v15 = escseqs_NormalizeLanguageName(a1, &v155);
      if ((v15 & 0x80000000) != 0)
      {
        goto LABEL_282;
      }

      v77 = DWORD1(v156);
    }

    if (v158 && DWORD2(v157) != 43 && (DWORD2(v157) - 70) >= 3 && v77 != 26)
    {
      heap_Free(*(v160 + 8), v158);
      *&v158 = 0;
      DWORD2(v158) = 0;
LABEL_195:
      v18 = escseqs_AppendOutText(a2, v39, 1u);
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_281;
      }

      ++v36;
      v29 = v39 + 1;
      goto LABEL_197;
    }

    if (v15)
    {
      goto LABEL_195;
    }

    if (marker_hasNonConstCharPtrArg(v77) && !*(&v157 + 1))
    {
      LOWORD(v156) = 0;
      *(&v155 + 1) = 0;
      DWORD1(v156) = 0x4000;
      DWORD2(v157) = 0;
      goto LABEL_226;
    }

    v78 = DWORD1(v156);
    if (!v158 || DWORD1(v156) == 26)
    {
      if (v158 && DWORD1(v156) == 26)
      {
        v80 = v36;
        v81 = strlen(v158);
        *&v140 = 0;
        v82 = *(&v157 + 1);
        v83 = *(*(a1 + 32) + 64);
        NullHandle = safeh_GetNullHandle();
        if ((v83(*(a1 + 16), *(a1 + 24), v82, 0, NullHandle, v85, &v140) & 0x80000000) != 0)
        {
          log_OutText(*(v160 + 32), &modESCPP, 4, 0, "[ESCSEQS] Invalid audio file, file=%s, Putting alternate text in text stream: %s ", *(&v157 + 1), v158);
          v18 = escseqs_AppendOutText(a2, v158, v81);
          if ((v18 & 0x80000000) != 0)
          {
            goto LABEL_281;
          }

          DWORD1(v156) = 0;
          heap_Free(*(v160 + 8), *(&v157 + 1));
          *(&v157 + 1) = 0;
        }

        heap_Free(*(v160 + 8), v158);
        *&v158 = 0;
        v78 = DWORD1(v156);
        v36 = v80;
      }

      goto LABEL_224;
    }

    if (SDWORD2(v157) > 70)
    {
      if (DWORD2(v157) == 71)
      {
        DWORD2(v157) = 43;
LABEL_223:
        DWORD2(v158) = 0;
        goto LABEL_224;
      }

      if (DWORD2(v157) != 72)
      {
LABEL_218:
        DWORD2(v157) = 43;
        if (DWORD2(v158) != 3)
        {
          goto LABEL_224;
        }

        goto LABEL_223;
      }

      v79 = 4;
    }

    else if (DWORD2(v157) == 43)
    {
      v79 = 1;
    }

    else
    {
      if (DWORD2(v157) != 70)
      {
        goto LABEL_218;
      }

      v79 = 2;
    }

    DWORD2(v158) = v79;
    DWORD2(v157) = 43;
LABEL_224:
    if (v78)
    {
      goto LABEL_227;
    }

    LOWORD(v156) = 0;
    *(&v155 + 1) = 0;
    DWORD1(v156) = 999;
LABEL_226:
    DWORD2(v158) = 0;
    *&v158 = 0;
LABEL_227:
    v86 = *(a1 + 80);
    v87 = *(a1 + 84);
    LODWORD(v155) = 0;
    DWORD2(v156) = v86 + v39 - v6;
    LODWORD(v157) = v87 + v36;
    if (v127 || ((DWORD2(v157) - 15) > 0x39 || ((1 << (BYTE8(v157) - 15)) & 0x280200010000003) == 0) && (DWORD2(v157) - 106) >= 3)
    {
      v15 = escseqs_AppendOutMarker(a2, &v155);
    }

    else
    {
      if (v126 == DWORD2(v157))
      {
        DWORD1(v156) = 999;
      }

      v15 = escseqs_AppendOutMarker(a2, &v155);
      v126 = DWORD2(v157);
    }

    if (marker_hasNonConstCharPtrArg(SDWORD1(v156)) && *(&v157 + 1))
    {
      heap_Free(*(v160 + 8), *(&v157 + 1));
      *(&v157 + 1) = 0;
    }

    else
    {
      DWORD2(v157) = 0;
    }

    if ((v15 & 0x80000000) != 0)
    {
      return v15;
    }

    if (DWORD1(v156) == 13)
    {
      inserted = escseqs_InsertDefaultMarkers(a1, a2, &v155);
      if ((inserted & 0x80000000) != 0)
      {
        return inserted;
      }
    }

    else if (DWORD1(v156) == 4)
    {
      DWORD1(v152) = 2;
      *(&v152 + 1) = (HIDWORD(v156) + DWORD2(v156));
      LODWORD(v153) = v157;
      *(&v153 + 4) = 0x100000000;
      inserted = escseqs_AppendOutMarker(a2, &v151);
      if ((inserted & 0x80000000) != 0)
      {
        return inserted;
      }
    }

    v29 = &v39[HIDWORD(v156)];
    HIDWORD(v156) = 0;
    DWORD1(v156) = 0;
    *&v158 = 0;
    DWORD2(v158) = 0;
LABEL_197:
    v37 = v29;
    v35 = v138;
    if (&v29[utf8_determineUTF8CharLength(*v29)] > v28)
    {
      goto LABEL_251;
    }
  }

  v37 = v39;
LABEL_249:
  LOWORD(v36) = v136;
LABEL_251:
  v18 = escseqs_AppendOutText(a2, v29, (v37 - v29));
  if ((v18 & 0x80000000) != 0)
  {
    goto LABEL_281;
  }

  v89 = *(v159 + 20);
  *&v140 = 0;
  v18 = datac_RequestBlock(a2, 1010, 1u, &v140);
  if ((v18 & 0x80000000) != 0)
  {
    goto LABEL_281;
  }

  *(v140 + 20) = v89;
  v18 = escseqs_PutOutMarkerEos(a2, *(v159 + 20));
  if ((v18 & 0x80000000) != 0)
  {
    goto LABEL_281;
  }

  if (*(v159 + 20))
  {
    v90 = 0;
    v91 = 0;
    *(a1 + 92) = 0;
  }

  else
  {
    v90 = *(a1 + 80) + v37 - v6;
    v91 = *(a1 + 84) + (v36 + v37 - v29);
  }

  *(a1 + 80) = v90;
  *(a1 + 84) = v91;
  *&v140 = 0;
  v18 = datac_RequestBlock(a2, 1011, 1u, &v140);
  if ((v18 & 0x80000000) != 0)
  {
    goto LABEL_281;
  }

  v92 = v140;
  v93 = *(v140 + 16);
  if (v93 >= 2)
  {
    v94 = *(v140 + 8);
    v95 = 1;
    do
    {
      v96 = v94 + (v95 << 6);
      if (*(v96 + 20) == 7)
      {
        v97 = *(v96 + 40);
        if (v97 == 60 || v97 == 16)
        {
          if (v93 <= (v95 + 1))
          {
            v99 = (v95 + 1);
          }

          else
          {
            v99 = v93;
          }

          do
          {
            if (++v95 >= v93)
            {
              v95 = v99;
              goto LABEL_274;
            }

            v100 = v94 + (v95 << 6);
          }

          while (*(v100 + 20) != 7);
          v102 = *(v100 + 40);
          v101 = (v100 + 40);
          if (v97 == v102)
          {
            *v101 = 15;
            v92 = v140;
          }
        }
      }

LABEL_274:
      ++v95;
      v93 = *(v92 + 16);
    }

    while (v93 > v95);
  }

  *&v140 = 0;
  v18 = datac_RequestBlock(a2, 1011, 1u, &v140);
  if ((v18 & 0x80000000) != 0)
  {
LABEL_281:
    v15 = v18;
  }

  else
  {
    v103 = *(v140 + 16);
    if (v103 >= 2)
    {
      v104 = 0;
      v105 = *(v140 + 8);
      v106 = 2;
      while (*(v105 + v104 + 84) != 0x4000)
      {
        ++v106;
        v104 += 64;
        if ((v103 << 6) - 64 == v104)
        {
          goto LABEL_297;
        }
      }

      if (v103 > v106)
      {
        v107 = (v105 + v104 + 148);
        while (1)
        {
          v108 = *v107;
          v107 += 16;
          if (v108 != 0x4000)
          {
            break;
          }

          if (v103 == ++v106)
          {
            goto LABEL_297;
          }
        }

        if (*(v105 + (v106 << 6) + 20) == 0x4000)
        {
          v109 = v106 + 1;
          if (v109 == v103)
          {
            *(v140 + 16) = v103 - 1;
          }

          else
          {
            memmove((v105 + v104 + 128), (v105 + (v109 << 6)), (v103 - v106) << 6);
            *(v140 + 16) -= v106;
          }

          LOWORD(v28) = v134;
        }
      }
    }

LABEL_297:
    *v161 = 0;
    v15 = datac_RequestBlock(a2, 1011, 1u, v161);
    if ((v15 & 0x80000000) == 0)
    {
      v110 = *v161;
      LOWORD(v111) = *(*v161 + 16);
      if (v111)
      {
        v112 = 0;
        v113 = 0;
        v114 = 0;
        v115 = 0;
        v116 = *(*v161 + 8);
        do
        {
          v117 = (v116 + (v115 << 6));
          v118 = v117[5];
          if (v118 == 7)
          {
            if (v117[10] == 43)
            {
              v113 = !v113;
              v114 = v115;
            }

            else
            {
              v113 = 0;
            }
          }

          else if (v118 == 0x4000 && v113)
          {
            v120 = v114;
            v121 = (v116 + (v114 << 6));
            v117[6] = *(v121 + 6);
            v117[8] = *(v121 + 8);
            v140 = *v117;
            v143 = *(v117 + 3);
            v141 = *(v117 + 1);
            v142 = *(v117 + 2);
            v122 = (v112 + 1);
            if (v111 > v122)
            {
              memmove(v117, (v116 + (v122 << 6)), (v111 - v122) << 6);
              v110 = *v161;
            }

            v123 = *(v110 + 16) - 1;
            *(v110 + 16) = v123;
            memmove(v121 + 4, v121, (v123 - v120) << 6);
            v114 = 0;
            v113 = 0;
            *v121 = v140;
            v121[1] = v141;
            v121[2] = v142;
            v121[3] = v143;
            v110 = *v161;
            ++*(*v161 + 16);
            ++v115;
          }

          v112 = ++v115;
          v111 = *(v110 + 16);
        }

        while (v115 < v111);
      }

      memmove(v6, v37, (v28 - v37));
      *(v159 + 16) = v28 - v37;
    }
  }

LABEL_282:
  if (__s)
  {
    paramc_ParamRelease(*(v160 + 40));
  }

  return v15;
}

uint64_t escseqs_AppendOutMarker(uint64_t a1, __int128 *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = 0;
  if (!a2)
  {
    return 2147491847;
  }

  result = datac_RequestBlock(a1, 1012, 1u, &v23);
  if ((result & 0x80000000) == 0)
  {
    v24 = *a2;
    v5 = *(a2 + 5);
    v25 = *(a2 + 4);
    v6 = *(a2 + 5);
    v20 = a2[3];
    v21 = *(a2 + 24);
    result = datac_RequestBlock(a1, 1011, 1u, &v23);
    if ((result & 0x80000000) == 0)
    {
      v7 = *(v23 + 16) + 1;
      if (*(v23 + 18) >= v7 || (result = datac_RequestBlock(a1, 1011, (*(v23 + 16) + 1), &v23), (result & 0x80000000) == 0))
      {
        result = datac_RequestBlock(a1, 1012, 1u, &v22);
        if ((result & 0x80000000) == 0)
        {
          if (marker_hasNonConstCharPtrArg(v5) && v6)
          {
            v8 = *(v22 + 8);
            if (v8)
            {
              v9 = *(v22 + 16);
              if (*(v22 + 16))
              {
                v10 = 0;
                while (strcmp(v6, v8))
                {
                  v11 = strlen(v8) + 1;
                  v10 += v11;
                  v8 += v11;
                  if (v10 >= v9)
                  {
                    goto LABEL_14;
                  }
                }

                v13 = *(v23 + 8) + (*(v23 + 16) << 6);
                *v13 = v24;
                *(v13 + 16) = v25;
                *(v13 + 20) = v5;
                *(v13 + 24) = v21;
                *(v13 + 40) = v6 & 0xFFFFFFFF00000000 | v10;
                *(v13 + 48) = v20;
                v14 = &v23;
                goto LABEL_28;
              }
            }

LABEL_14:
            if (marker_hasNonConstCharPtrArg(*(a2 + 5)))
            {
              if (*(a2 + 5))
              {
                v12 = *(v22 + 16);
              }

              else
              {
                v12 = 0xFFFFFFFFLL;
              }

              v6 = v6 & 0xFFFFFFFF00000000 | v12;
            }
          }

          v15 = *(v23 + 8) + (*(v23 + 16) << 6);
          *v15 = v24;
          *(v15 + 16) = v25;
          *(v15 + 20) = v5;
          *(v15 + 24) = v21;
          *(v15 + 40) = v6;
          *(v15 + 48) = v20;
          *(v23 + 16) = v7;
          result = marker_hasNonConstCharPtrArg(*(a2 + 5));
          if (result)
          {
            v16 = *(a2 + 5);
            if (v16)
            {
              v17 = strlen(*(a2 + 5)) + 1;
              v18 = v22;
              v19 = *(v22 + 16);
              v7 = v19 + v17;
              if (*(v22 + 18) >= (v19 + v17))
              {
LABEL_27:
                memcpy((*(v18 + 8) + v19), v16, v17);
                v14 = &v22;
LABEL_28:
                result = 0;
                *(*v14 + 16) = v7;
                return result;
              }

              result = datac_RequestBlock(a1, 1012, (v19 + v17), &v22);
              if ((result & 0x80000000) == 0)
              {
                v18 = v22;
                v19 = *(v22 + 16);
                v16 = *(a2 + 5);
                goto LABEL_27;
              }
            }

            else
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t escseqs_AppendOutText(uint64_t a1, const void *a2, unsigned int a3)
{
  v10 = 0;
  if (!a2)
  {
    return 2147491847;
  }

  result = datac_RequestBlock(a1, 1010, 1u, &v10);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v7 = v10;
  v8 = *(v10 + 16);
  v9 = v8 + a3;
  if (*(v10 + 18) < (v8 + a3))
  {
    result = datac_RequestBlock(a1, 1010, (v8 + a3), &v10);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v7 = v10;
    v8 = *(v10 + 16);
  }

  memcpy((*(v7 + 8) + v8), a2, a3);
  result = 0;
  *(v10 + 16) = v9;
  return result;
}

uint64_t escseqs_NormalizeLanguageName(uint64_t a1, uint64_t a2)
{
  __s2 = 0;
  v13 = 0;
  v11 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v13);
  if ((inited & 0x80000000) != 0)
  {
    return 2147491847;
  }

  v5 = *(a1 + 56);
  if (!v5)
  {
    return inited;
  }

  v6 = (*(v5 + 24))(*(a1 + 40), *(a1 + 48), *(a2 + 40), &__s2, &v11);
  if ((v6 & 0x80000000) == 0)
  {
    if (v11)
    {
      v7 = __s2;
      if (__s2)
      {
        if (strcmp(*(a2 + 40), __s2) && *v7)
        {
          v8 = strhelper_Strdup(*(v13 + 8), v7);
          if (v8)
          {
            v9 = v8;
            heap_Free(*(v13 + 8), *(a2 + 40));
            *(a2 + 40) = v9;
          }

          else
          {
            return 2147491850;
          }
        }
      }
    }
  }

  return v6;
}

uint64_t escseqs_InsertDefaultMarkers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = 0;
  v18 = 0;
  if ((InitRsrcFunction(*a1, *(a1 + 8), &v17) & 0x80000000) != 0)
  {
    return 2147491847;
  }

  Defaults = escseqm_GetDefaults(*(a1 + 64), &v18);
  if ((Defaults & 0x80000000) == 0)
  {
    for (i = 0; i != 2496; i += 64)
    {
      v8 = *(v18 + i + 84);
      if (v8)
      {
        if (!marker_hasNonConstCharPtrArg(v8))
        {
          v9 = v18 + i;
          *(v9 + 88) = *(a3 + 28) + *(a3 + 24);
          *(v9 + 100) = 0;
          v10 = *(a3 + 32);
          *(v9 + 64) = 0;
          v9 += 64;
          *(v9 + 32) = v10;
          appended = escseqs_AppendOutMarker(a2, v9);
          Defaults = 0;
          if ((appended & 0x80000000) != 0)
          {
LABEL_17:
            Defaults = appended;
            goto LABEL_18;
          }
        }
      }
    }

    for (j = 104; j != 2600; j += 64)
    {
      if (marker_hasNonConstCharPtrArg(*(v18 + j - 20)))
      {
        v13 = v18 + j;
        *(v13 - 16) = *(a3 + 28) + *(a3 + 24);
        *(v13 - 4) = 0;
        v14 = *(a3 + 32);
        *(v13 - 40) = 0;
        v13 -= 40;
        *(v13 + 32) = v14;
        appended = escseqs_AppendOutMarker(a2, v13);
        if ((appended & 0x80000000) != 0)
        {
          goto LABEL_17;
        }

        v15 = *(v18 + j);
        if (v15)
        {
          heap_Free(*(v17 + 8), v15);
          Defaults = 0;
          *(v18 + j) = 0;
        }

        else
        {
          Defaults = 0;
        }
      }
    }
  }

LABEL_18:
  if (v18)
  {
    heap_Free(*(v17 + 8), v18);
  }

  return Defaults;
}

uint64_t escseqs_PutOutMarkerEos(uint64_t a1, int a2)
{
  v5 = 0;
  result = datac_RequestBlock(a1, 1011, 1u, &v5);
  if ((result & 0x80000000) == 0)
  {
    *(v5 + 20) = a2;
    result = datac_RequestBlock(a1, 1012, 1u, &v5);
    if ((result & 0x80000000) == 0)
    {
      result = 0;
      *(v5 + 20) = a2;
    }
  }

  return result;
}

uint64_t extdata_LoadSpecificData(uint64_t a1, char *a2, const char *a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  __s = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *v17 = 0u;
  v18 = 0u;
  memset(v16, 0, sizeof(v16));
  *__s2 = 0;
  if (!a1)
  {
    return 2368741383;
  }

  result = paramc_ParamGetStr(*(*(a1 + 16) + 40), "langcode", &__s);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v8 = __s;
  if (*__s)
  {
    v9 = 0;
    do
    {
      v10 = v9;
      __s2[v9] = __tolower(v8[v9]);
      ++v9;
      v8 = __s;
      v11 = strlen(__s);
    }

    while (v10 <= 1 && v9 < v11);
  }

  else
  {
    v9 = 0;
  }

  __s2[v9] = 0;
  if (strcmp(v8, __s2))
  {
    result = paramc_ParamSetStr(*(*(a1 + 16) + 40), "langcode", __s2);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    __s = __s2;
  }

  __strcat_chk();
  __strcat_chk();
  __strcat_chk();
  brokeraux_ComposeBrokerString(*(a1 + 16), v17, 1, 1, __s, 0, 0, v16, 0x80uLL);
  LODWORD(result) = readDataFile(a1, a2, v16, a3);
  v12 = result;
  v13 = result & 0x80001FFF;
  if ((result & 0x80001FFF) == 0x8000000A)
  {
    result = result;
  }

  else
  {
    result = 0;
  }

  if (v12 < 0 && v13 != -2147483638)
  {
    v17[strlen(v17) - 4] = 0;
    brokeraux_ComposeBrokerString(*(a1 + 16), v17, 1, 1, __s, 0, 0, v16, 0x80uLL);
    return readDataFile(a1, a2, v16, a3);
  }

  return result;
}

uint64_t readDataFile(uint64_t a1, char *a2, const char *a3, const char *a4)
{
  v21 = 0;
  v20 = 0;
  v18 = 0;
  *__s2 = 0;
  v16 = 0;
  v17 = 0;
  result = brk_DataOpenEx(*(*(a1 + 16) + 24), a3, 1, &v16);
  if ((result & 0x80000000) == 0)
  {
    result = brk_DataClose(*(*(a1 + 16) + 24), v16);
    if ((result & 0x80000000) == 0)
    {
      result = ssftriff_reader_ObjOpen(*a1, *(a1 + 8), 0, a3, a2, 1031, &v21);
      if ((result & 0x80000000) == 0)
      {
        do
        {
          v9 = ssftriff_reader_OpenChunk(v21, __s2, &v18, &v17);
          if (v9 < 0)
          {
            break;
          }

          v10 = *(a1 + 32);
          if (*(a1 + 32))
          {
            v11 = *(a1 + 24);
            while (strcmp(*v11, __s2))
            {
              v11 += 32;
              if (!--v10)
              {
                goto LABEL_14;
              }
            }

            if (!a4 || !strcmp(a4, __s2))
            {
              v9 = (*(v11 + 8))(*(v11 + 24), v21, v18, v17);
              if (v9 < 0)
              {
                log_OutPublic(*(*(a1 + 16) + 32), "PP_EXTDATA", 1800, "%s%s", "loading_type", __s2);
              }
            }
          }

LABEL_14:
          v12 = ssftriff_reader_CloseChunk(v21);
          if (v12 < 0 && v9 > -1)
          {
            v9 = v12;
          }
        }

        while ((v9 & 0x80000000) == 0);
        if ((v9 & 0x1FFF) == 0x14)
        {
          v14 = 0;
        }

        else
        {
          v14 = v9;
        }

        LODWORD(result) = ssftriff_reader_ObjClose(v21);
        if (v14 > -1 && result < 0)
        {
          return result;
        }

        else
        {
          return v14;
        }
      }
    }
  }

  return result;
}

uint64_t extdata_RegisterData(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a1)
  {
    return 2368741383;
  }

  if (!*(a1 + 32))
  {
    v8 = heap_Calloc(*(*(a1 + 16) + 8), 1, (32 * a3) | 1);
    *(a1 + 24) = v8;
    if (v8)
    {
      goto LABEL_7;
    }

    return (*(a1 + 36) << 20) | 0x8000200A;
  }

  v6 = heap_Realloc(*(*(a1 + 16) + 8), *(a1 + 24), (32 * (*(a1 + 32) + a3)) | 1);
  if (!v6)
  {
    return (*(a1 + 36) << 20) | 0x8000200A;
  }

  *(a1 + 24) = v6;
LABEL_7:
  if (a3)
  {
    v9 = 0;
    do
    {
      v10 = (*(a1 + 24) + 32 * *(a1 + 32) + v9);
      v11 = *(a2 + v9 + 16);
      *v10 = *(a2 + v9);
      v10[1] = v11;
      v9 += 32;
    }

    while (32 * a3 != v9);
  }

  result = 0;
  *(a1 + 32) += a3;
  return result;
}

uint64_t extdata_ObjOpen(_WORD *a1, uint64_t a2, uint64_t *a3, int a4)
{
  v12 = 0;
  if (!a3 || (InitRsrcFunction(a1, a2, &v12) & 0x80000000) != 0)
  {
    v11 = -2147475449;
  }

  else
  {
    *a3 = 0;
    v8 = heap_Alloc(*(v12 + 8), 40);
    if (v8)
    {
      v9 = v8;
      result = 0;
      *v9 = 0u;
      *(v9 + 16) = 0u;
      *(v9 + 32) = 0;
      *v9 = a1;
      *(v9 + 8) = a2;
      *(v9 + 16) = v12;
      *(v9 + 32) = 0;
      *(v9 + 36) = a4;
      *a3 = v9;
      return result;
    }

    v11 = -2147475446;
  }

  return v11 | (a4 << 20);
}

uint64_t extdata_UnregisterModule(uint64_t a1, unsigned int a2)
{
  result = 2368741383;
  if (a1)
  {
    if (*(a1 + 32) > a2)
    {
      result = 0;
      *(*(a1 + 24) + 32 * a2 + 24) = 0;
    }
  }

  return result;
}

uint64_t extdata_GetIndex(uint64_t a1, _WORD *a2)
{
  result = 2368741383;
  if (a1)
  {
    if (!a2)
    {
      return result;
    }

    v4 = *(a1 + 32);
    LOWORD(a1) = v4 - 1;
    if (v4)
    {
      result = 0;
    }

    else
    {
      LOWORD(a1) = 0;
      result = 2368741383;
    }
  }

  *a2 = a1;
  return result;
}

uint64_t extdata_FreeData(uint64_t a1)
{
  if (!a1)
  {
    return 2368741383;
  }

  v2 = *(a1 + 32);
  if (*(a1 + 32))
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1 + 24) + v3;
      if (*(v5 + 24))
      {
        result = (*(v5 + 16))();
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v2 = *(a1 + 32);
      }

      ++v4;
      v3 += 32;
    }

    while (v4 < v2);
  }

  heap_Free(*(*(a1 + 16) + 8), *(a1 + 24));
  result = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t extdata_ObjClose(uint64_t a1)
{
  if (!a1)
  {
    return 2368741383;
  }

  v2 = *(a1 + 16);
  result = extdata_FreeData(a1);
  if ((result & 0x80000000) == 0)
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      heap_Free(*(v2 + 8), v4);
      *(a1 + 32) = 0;
    }

    heap_Free(*(v2 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t freeEOSDefs(uint64_t a1)
{
  if (!*(a1 + 96))
  {
    return 0;
  }

  log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] free EOS definitions");
  v2 = *(a1 + 104);
  if (v2)
  {
    heap_Free(*(*(a1 + 16) + 8), v2);
    *(a1 + 104) = 0;
  }

  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  if (*(a1 + 128))
  {
    v3 = *(a1 + 120);
    if (v3)
    {
      heap_Free(*(*(a1 + 16) + 8), v3);
      *(a1 + 120) = 0;
    }

    *(a1 + 128) = 0;
  }

  if (*(a1 + 144))
  {
    v4 = *(a1 + 136);
    if (v4)
    {
      heap_Free(*(*(a1 + 16) + 8), v4);
      *(a1 + 136) = 0;
    }

    *(a1 + 144) = 0;
  }

  v5 = *(a1 + 152);
  if (v5)
  {
    heap_Free(*(*(a1 + 16) + 8), v5);
    *(a1 + 152) = 0;
  }

  result = *(a1 + 88);
  if (result)
  {
    result = ssftriff_reader_ReleaseChunkData(result);
    if ((result & 0x80000000) == 0)
    {
      *(a1 + 88) = 0;
    }
  }

  return result;
}

uint64_t getEOSDefs(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v30 = a4;
  if (*(a1 + 96))
  {
    return 0;
  }

  v4 = 2369789962;
  log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] get EOS definitions");
  v8 = a4[1] + 8;
  v9 = v8 + *a4;
  v10 = *(a4 + v9);
  *(a1 + 96) = v10;
  v11 = heap_Calloc(*(*(a1 + 16) + 8), 1, (8 * v10) | 1);
  *(a1 + 104) = v11;
  if (!v11)
  {
    goto LABEL_25;
  }

  v12 = v9 + 2;
  v13 = *(a1 + 96);
  if (*(a1 + 96))
  {
    v14 = (v11 + 4);
    do
    {
      v15 = *(a4 + v12);
      v16 = *(a4 + v12 + 2);
      v12 += 6;
      *v14 = v15;
      *(v14 - 1) = v16;
      v14 += 8;
      --v13;
    }

    while (v13);
  }

  v17 = *(a4 + v12);
  *(a1 + 128) = v17;
  v18 = heap_Calloc(*(*(a1 + 16) + 8), 1, (2 * v17) | 1);
  *(a1 + 120) = v18;
  if (!v18)
  {
    goto LABEL_25;
  }

  if (*(a1 + 128))
  {
    v19 = 0;
    do
    {
      v12 += 2;
      *(*(a1 + 120) + 2 * v19++) = *(a4 + v12);
    }

    while (v19 < *(a1 + 128));
  }

  *(a1 + 144) = 0;
  v20 = *(a4 + v12 + 2);
  *(a1 + 144) = v20;
  v21 = v12 + 4;
  if (v20)
  {
    v22 = heap_Calloc(*(*(a1 + 16) + 8), 1, (2 * v20) | 1);
    *(a1 + 136) = v22;
    if (v22)
    {
      if (*(a1 + 144))
      {
        v23 = 0;
        do
        {
          *(*(a1 + 136) + 2 * v23) = *(a4 + v21);
          v21 += 2;
          ++v23;
        }

        while (v23 < *(a1 + 144));
      }

      goto LABEL_16;
    }

LABEL_25:
    freeEOSDefs(a1);
    return v4;
  }

LABEL_16:
  v24 = *(a4 + v21);
  v25 = heap_Calloc(*(*(a1 + 16) + 8), 1, v24 + 1);
  *(a1 + 152) = v25;
  if (!v25)
  {
    goto LABEL_25;
  }

  v26 = v21 + 2;
  if (v24)
  {
    for (i = 0; i != v24; ++i)
    {
      *(*(a1 + 152) + i) = *(a4 + v26 + i);
    }

    v26 += i;
  }

  v28 = *(a4 + v26);
  *(a1 + 160) = v28;
  if (!v28)
  {
    v4 = 2369789959;
    goto LABEL_25;
  }

  v4 = ssftriff_reader_DetachChunkData(a2, (a1 + 88), &v30);
  if ((v4 & 0x80000000) == 0)
  {
    *(a1 + 112) = v30 + v8;
  }

  return v4;
}

uint64_t sparser_ObjOpen(_WORD *a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t a6)
{
  v37[4] = *MEMORY[0x1E69E9840];
  v35 = 0;
  v36 = 0;
  *&__c[3] = 0;
  v6 = 2369789959;
  *&__c[1] = -1;
  __c[0] = 0;
  v33 = 0;
  __s1 = 0;
  if (a5 && (InitRsrcFunction(a1, a2, &v36) & 0x80000000) == 0)
  {
    *a5 = 0;
    v13 = heap_Alloc(*(v36 + 8), 192);
    if (!v13)
    {
      return 2369789962;
    }

    v14 = v13;
    *v13 = 0u;
    *(v13 + 16) = 0u;
    *(v13 + 64) = 0u;
    *(v13 + 80) = 0u;
    *(v13 + 160) = 0u;
    *(v13 + 176) = 0u;
    *(v13 + 128) = 0u;
    *(v13 + 144) = 0u;
    *(v13 + 96) = 0u;
    *(v13 + 112) = 0u;
    *(v13 + 32) = 0u;
    *(v13 + 48) = 0u;
    *v13 = a1;
    *(v13 + 8) = a2;
    v15 = v36;
    *(v13 + 16) = v36;
    *(v13 + 80) = a6;
    *(v13 + 64) = 0;
    *(v13 + 72) = 0;
    *(v13 + 184) = 0;
    *(v13 + 176) = 0;
    *(v13 + 168) = 0;
    *(v13 + 188) = 0;
    if ((paramc_ParamGetStr(*(v15 + 40), "mnceosposition", &__s1) & 0x80000000) == 0 && __s1 && !strcmp(__s1, "yes"))
    {
      *(v14 + 188) = 1;
    }

    *(v14 + 160) = 0;
    *(v14 + 128) = 0u;
    *(v14 + 144) = 0u;
    *(v14 + 96) = 0u;
    *(v14 + 112) = 0u;
    *(v14 + 24) = a3;
    *(v14 + 32) = a4;
    *(v14 + 88) = 0;
    v37[0] = "EOSD";
    v37[1] = getEOSDefs;
    v37[2] = freeEOSDefs;
    v37[3] = v14;
    v16 = extdata_RegisterData(a6, v37, 1u);
    if ((v16 & 0x80000000) == 0)
    {
      extdata_GetIndex(a6, &v33);
      if ((objc_GetObject(*(v36 + 48), "FE_DCTLKP", &v35) & 0x80000000) != 0)
      {
        v18 = *(v14 + 40);
        if (!v18)
        {
LABEL_30:
          v6 = 0;
          *a5 = v14;
          return v6;
        }
      }

      else
      {
        v17 = v35;
        v18 = *(v35 + 8);
        *(v14 + 40) = v18;
        *(v14 + 48) = *(v17 + 16);
        if (!v18)
        {
          goto LABEL_30;
        }
      }

      *&__c[1] = -1;
      v16 = (*(v18 + 96))(*(v14 + 48), *(v14 + 56), "fecfg", "ppabbrscanback", &__c[3], &__c[1], __c);
      if ((v16 & 0x80000000) == 0)
      {
        if (*&__c[1] != 1 || !*&__c[3])
        {
          goto LABEL_30;
        }

        v19 = **&__c[3];
        v20 = strchr(**&__c[3], __c[0]);
        if (v20)
        {
          *v20 = 0;
          v19 = **&__c[3];
        }

        *(v14 + 72) = 1;
        v21 = strchr(v19, 124);
        if (v21)
        {
          v22 = 1;
          do
          {
            *(v14 + 72) = ++v22;
            v21 = strchr(v21 + 1, 124);
          }

          while (v21);
          v23 = v22 + 1;
        }

        else
        {
          v23 = 2;
        }

        v24 = heap_Calloc(*(v36 + 8), 1, v23);
        *(v14 + 64) = v24;
        if (v24)
        {
          v25 = **&__c[3];
          *(v14 + 72) = 0;
          if (v25)
          {
            do
            {
              if (*v25 == __c[0])
              {
                break;
              }

              v26 = strchr(v25, 124);
              v27 = v26;
              if (v26)
              {
                *v26 = 0;
              }

              v28 = atoi(v25);
              v29 = *(v14 + 64);
              v30 = *(v14 + 72);
              *(v14 + 72) = v30 + 1;
              *(v29 + v30) = v28;
              v25 = v27 + 1;
            }

            while (v27);
          }

          goto LABEL_30;
        }

        return 2369789962;
      }
    }

    v6 = v16;
    sparser_ObjClose(v14);
    extdata_UnregisterModule(a6, v33);
  }

  return v6;
}

uint64_t sparser_ObjClose(uint64_t a1)
{
  v1 = 2369789959;
  v5 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v5) & 0x80000000) == 0)
  {
    if (*(a1 + 40))
    {
      objc_ReleaseObject(*(v5 + 48), "FE_DCTLKP");
    }

    v3 = *(a1 + 64);
    if (v3)
    {
      heap_Free(*(v5 + 8), v3);
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
    }

    heap_Free(*(v5 + 8), a1);
    return 0;
  }

  return v1;
}

uint64_t sparser_HasTextElementLeft(_WORD **a1, uint64_t a2, _BOOL4 *a3, _WORD *a4)
{
  v49 = 0;
  v50 = 0;
  v4 = 2369789959;
  v47 = 0;
  v48 = 0;
  v44 = 0;
  v45 = 0;
  v39 = 0u;
  v43 = 0u;
  v38 = 0;
  LODWORD(v39) = 1;
  v40 = 0x200000000uLL;
  v41 = 0;
  DWORD2(v43) = 0;
  v42 = 1;
  if (!a1)
  {
    return v4;
  }

  if (!a2)
  {
    return v4;
  }

  if (!a3)
  {
    return v4;
  }

  v46 = 0;
  if ((InitRsrcFunction(*a1, a1[1], &v50) & 0x80000000) != 0)
  {
    return v4;
  }

  if (!*(a1 + 48))
  {
    log_OutPublic(*(v50 + 32), &modPP_1, 1808, 0);
    return v4;
  }

  if ((datac_RequestBlock(a2, 1010, 1u, &v49) & 0x80000000) != 0)
  {
    v4 = 0;
    *a3 = 0;
    return v4;
  }

  v9 = datac_RequestBlock(a2, 1011, 1u, &v48);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  v10 = *(v48 + 8);
  v11 = *(v48 + 16);
  v9 = datac_RequestBlock(a2, 1012, 1u, &v47);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  v9 = bed_ObjOpen(*a1, a1[1], a2, 1011, &v45, 212);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  if ((chars_ScanBlankHead(v49, &v46 + 1, v48, &v46, &v38, 1u) & 0x80000000) == 0)
  {
    if (v11 < 2)
    {
      LOWORD(v12) = 0;
    }

    else
    {
      v12 = 0;
      v13 = v10 + 21;
      v14 = v11 - 1;
      do
      {
        if (v13[3] - v10[8] > v10[8] + *(v49 + 2) * HIWORD(v46))
        {
          break;
        }

        v16 = *v13;
        v13 += 16;
        v15 = v16;
        if (v16 == 0x4000)
        {
          v17 = v12;
        }

        else
        {
          v17 = v12 + 1;
        }

        if (v15 != 3)
        {
          v12 = v17;
        }

        --v14;
      }

      while (v14);
    }

    if (*(a1 + 92) <= v12)
    {
      if ((bed_GetpBlock(v45, &v48) & 0x80000000) != 0)
      {
        goto LABEL_75;
      }

      v23 = v49;
      if (v11 >= 2)
      {
        v24 = 0;
        v25 = v10 + 26;
        v26 = 1;
        while (*(v25 - 2) - v10[8] <= *(v49 + 2) * HIWORD(v46))
        {
          v27 = *(v25 - 5);
          if (v27 == 3 && *v25 == 1)
          {
            goto LABEL_73;
          }

          if (v27 != 0x4000)
          {
            ++v24;
          }

          if (*(a1 + 92) == v24)
          {
            if ((bed_Goto(v45, v26) & 0x80000000) == 0)
            {
              v36 = *(v25 - 2);
              DWORD2(v40) = *(v25 - 4);
              LODWORD(v41) = v36;
              if ((sparser_bed_InjectMarker(v45, &v39, 0, *(a1 + 47)) & 0x80000000) == 0)
              {
                log_OutText(*(a1[2] + 4), &modPP_1, 5, 0, "[SPARSER] inserting EOS as number of markers in empty text exceeded, end marker now %u");
                goto LABEL_73;
              }
            }

            goto LABEL_75;
          }

          ++v26;
          v25 += 16;
          if (v11 == v26)
          {
            break;
          }
        }
      }
    }

    else
    {
      if (!v12 && HIWORD(v46) > 0x400u)
      {
        if ((bed_GetpBlock(v45, &v48) & 0x80000000) != 0)
        {
          goto LABEL_75;
        }

        HIWORD(v46) = 1024;
        v19 = v10[8];
        v18 = v10 + 8;
        DWORD2(v40) = *(v18 - 2);
        LODWORD(v41) = v19;
        if (v11)
        {
          v20 = 0;
          v21 = v18;
          while (*(v21 - 3) == 0x4000)
          {
            v22 = *v21;
            if (*v21 - *v18 > (*(v49 + 2) << 10))
            {
              break;
            }

            DWORD2(v40) = *(v21 - 2);
            LODWORD(v41) = v22;
            ++v20;
            v21 += 16;
            if (v11 == v20)
            {
              goto LABEL_67;
            }
          }

          LODWORD(v11) = v20;
        }

LABEL_67:
        if ((bed_Goto(v45, v11) & 0x80000000) != 0 || (sparser_bed_InjectMarker(v45, &v39, 0, *(a1 + 47)) & 0x80000000) != 0)
        {
          goto LABEL_75;
        }

        log_OutText(*(a1[2] + 4), &modPP_1, 5, 0, "[SPARSER] inserting EOS as empty text length exceeded, end marker now %u");
LABEL_73:
        v35 = 1;
LABEL_74:
        *a3 = v35;
        goto LABEL_75;
      }

      v23 = v49;
    }

    if ((chars_ScanBlankHead(v23, &v46 + 1, v48, &v46, &v38, 2u) & 0x80000000) == 0)
    {
      v28 = *(v48 + 16);
      if (v28 >= 2)
      {
        v29 = v10[8] + HIWORD(v46);
        v30 = v28 - 1;
        v31 = v10 + 26;
        do
        {
          if (*(v31 - 2) > v29)
          {
            break;
          }

          if (*(v31 - 5) == 20)
          {
            *a4 = *v31;
          }

          v31 += 16;
          --v30;
        }

        while (v30);
      }

      v32 = *a4;
      switch(v32)
      {
        case 2:
          v34 = (sparser_FindNextCharacterBoundary)(v49);
          break;
        case 4:
          v33 = sparser_FindNextLineBoundary;
          goto LABEL_59;
        case 3:
          v33 = sparser_FindNextWordBoundary;
LABEL_59:
          v34 = (v33)(v49);
          break;
        default:
          paramc_ParamGetStr(*(v50 + 40), "extraesctn", &v44);
          v34 = (sparser_FindNextSentenceBoundary)(v49);
          break;
      }

      if (v34 < 0 || *a3 || !*(v49 + 20))
      {
        goto LABEL_75;
      }

      v35 = sparser_ScanDataMarker(v48);
      goto LABEL_74;
    }
  }

LABEL_75:
  if (v45)
  {
    bed_ObjClose(v45);
  }

  return 0;
}

uint64_t sparser_bed_InjectMarker(uint64_t a1, unsigned int *a2, int a3, int a4)
{
  result = 2369789959;
  if (a1)
  {
    if (a2)
    {
      result = sparser_bed_MapPosCur(a1, a2[8], a2 + 6);
      if ((result & 0x80000000) == 0)
      {
        result = sparser_bed_MapPosCur(a1, a2[9] + a2[8], a2 + 7);
        if ((result & 0x80000000) == 0)
        {
          v10 = a2[6];
          v9 = a2[7];
          v11 = v9 >= v10;
          v12 = v9 - v10;
          if (v11)
          {
            a2[7] = v12;
          }

          if (a3 == 1 || (a4 != 1 ? (v17 = sparser_marker_HasStrictlyGreaterPosCur) : (v17 = sparser_marker_HasGreaterEqualPosCur), (result = bed_GoForward(a1, v17, a2), (result & 0x80000000) == 0) || (result & 0x1FFF) == 0x14))
          {
            __s1 = 0;
            v18 = 0;
            result = bed_GetcElem(a1, &v18);
            if ((result & 0x80000000) == 0)
            {
              result = bed_GetpElem(a1, 0, &__s1);
              if ((result & 0x80000000) == 0)
              {
                v13 = v18;
                if (v18)
                {
                  v14 = __s1;
                  v15 = a2[8];
                  do
                  {
                    if (v14[8] > v15)
                    {
                      break;
                    }

                    result = memcmp(v14, a2, 0x40uLL);
                    if (!result)
                    {
                      return result;
                    }

                    v14 += 16;
                    --v13;
                  }

                  while (v13);
                }

                v16 = bed_Insert(a1, a2, 1);
                return v16 & (v16 >> 31);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sparser_FindNextWordBoundary(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, _BOOL4 *a6)
{
  if (*(a1 + 20))
  {
    v8 = *(a1 + 16) > a4;
  }

  else
  {
    v10 = a4;
    chars_ScanNonBlanks(*(a1 + 8), &v10, *(a1 + 16));
    v8 = v10 < *(a1 + 16);
  }

  *a6 = v8;
  return 0;
}

uint64_t sparser_FindNextLineBoundary(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, _BOOL4 *a6)
{
  if (*(a1 + 20))
  {
    v8 = *(a1 + 16) > a4;
  }

  else
  {
    v10 = a4;
    chars_ScanForLineEnd(*(a1 + 8), &v10, *(a1 + 16));
    v8 = v10 < *(a1 + 16);
  }

  *a6 = v8;
  return 0;
}

uint64_t sparser_FindNextSentenceBoundary(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, char *a5, _BOOL4 *a6)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(a1 + 20))
  {
    v9 = *(a1 + 16) > a4;
    goto LABEL_29;
  }

  v13 = *(a2 + 8);
  LODWORD(v14) = *(a2 + 16);
  if (a4)
  {
    if (!*(a2 + 16))
    {
      LODWORD(v16) = 0;
      goto LABEL_28;
    }

    v15 = 0;
    LODWORD(v16) = 0;
    do
    {
      v17 = v13 + (v16 << 6);
      if (*(v17 + 32) > *(v13 + 32) + *(a1 + 2) * a4)
      {
        break;
      }

      if (a5 && *(v17 + 20) == 21)
      {
        __strcpy_chk();
        v15 = strstr(a5, v23) != 0;
        LODWORD(v14) = *(a2 + 16);
      }

      LODWORD(v16) = v16 + 1;
    }

    while (v16 < v14);
  }

  else
  {
    LODWORD(v16) = 0;
    v15 = 0;
  }

  if (v16 >= v14)
  {
    goto LABEL_28;
  }

  v16 = v16;
  v18 = (v13 + (v16 << 6));
  while (1)
  {
    v19 = v18[8];
    v20 = *(v13 + 32);
    v21 = v19 - v20;
    if (v19 == v20 || !sparser_marker_IsSentenceBoundary(v18, (*(a3 + 8) + v18[10])))
    {
      if (a5 && v18[5] == 21)
      {
        __strcpy_chk();
        v15 = strstr(a5, v23) != 0;
      }

      goto LABEL_25;
    }

    if (v15 && v18[5] == 2)
    {
LABEL_21:
      v18[10] = 0;
      goto LABEL_25;
    }

    if (!sparser_IsSuppressedSentenceBoundary(a2, a1, v21))
    {
      break;
    }

    if (v18[5] == 2)
    {
      goto LABEL_21;
    }

LABEL_25:
    ++v16;
    v14 = *(a2 + 16);
    v18 += 16;
    if (v16 >= v14)
    {
      goto LABEL_26;
    }
  }

  LODWORD(v14) = *(a2 + 16);
LABEL_26:
  LODWORD(v16) = v16;
LABEL_28:
  v9 = v16 < v14;
LABEL_29:
  *a6 = v9;
  return 0;
}

BOOL sparser_ScanDataMarker(_BOOL8 result)
{
  if (result)
  {
    if (*(result + 16))
    {
      v1 = *(result + 8);
      v2 = (v1 + 20);
      v3 = 1;
      v4 = *(result + 16);
      v5 = 1;
      do
      {
        if (v1)
        {
          if (*v2 <= 0x28u && ((1 << *v2) & 0x10024000100) != 0)
          {
            break;
          }
        }

        v5 = v3 < *(result + 16);
        v2 += 16;
        ++v3;
        --v4;
      }

      while (v4);
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sparser_PreScanTextElement(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = 0;
  v5 = datac_RequestBlock(a2, 1010, 1u, &v9);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = *(v9 + 16);
    if (v6 >= 4)
    {
      v7 = *(v9 + 8);
      v10 = 0;
      if (utf8_Utf8CharTo16bit((v7 + (v6 - 2)), &v10))
      {
        if (v10 <= 0x3Fu && ((1 << v10) & 0x8000400200000000) != 0 || v10 == 65294)
        {
          if (utf8_BelongsToSet(2u, v7, *(v9 + 16) - 1, *(v9 + 16)))
          {
            log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] text ends in period-space; get more text");
            *a3 = 1;
          }
        }
      }
    }
  }

  return v5;
}

uint64_t sparser_ScanTextElement(uint64_t a1, uint64_t a2, int a3, unsigned __int16 a4)
{
  v86 = 0;
  v87 = 0;
  v4 = 2369789959;
  v84 = 0;
  v82 = 0;
  v83 = 0;
  if (!a1 || !a2)
  {
    return v4;
  }

  if (!*(a1 + 96))
  {
    log_OutPublic(*(*(a1 + 16) + 32), &modPP_1, 1808, 0);
    return v4;
  }

  datac_RequestBlock(a2, 1012, 1u, &v82);
  v9 = datac_RequestBlock(a2, 1010, 1u, &v87);
  if ((v9 & 0x80000000) != 0)
  {
    if ((v9 & 0x1FFF) == 0x14)
    {
      return 0;
    }

    else
    {
      return v9;
    }
  }

  v10 = *(v87 + 16);
  v11 = *(v87 + 2);
  v12 = bed_ObjOpen(*a1, *(a1 + 8), a2, 1011, &v86, 212);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v12 = bed_GetpBlock(v86, &v83);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v13 = *(*(v83 + 8) + 32);
  v14 = v86;
  v88 = 0;
  v90 = 0u;
  v91 = 0x400000000000uLL;
  v93 = 0u;
  v92 = 0uLL;
  if (!v86)
  {
    goto LABEL_126;
  }

  v15 = bed_Goto(v86, 0);
  if ((v15 & 0x80000000) != 0 || (v15 = bed_GoForward(v14, sparser_marker_IsOfSameType, &v90), (v15 & 0x80000000) != 0) || (v15 = bed_GetpElem(v14, 0xFFFFu, &v88), (v15 & 0x80000000) != 0))
  {
    v4 = v15;
LABEL_126:
    v68 = 0;
    v18 = 0;
    v69 = 0;
    HIWORD(v84) = 0;
    goto LABEL_127;
  }

  v80 = *(v88 + 32);
  v16 = *(a1 + 168);
  if (v16 < v13)
  {
    *(a1 + 168) = v13;
    v16 = v13;
  }

  *(a1 + 176) = v16;
  v85 = (v16 - v13) / *(v87 + 2);
  LODWORD(v88) = v85;
  NextOrthRegion = sparser_FindNextOrthRegion(v87, v86, &v88, &v85, &v84);
  v18 = v85;
  if ((NextOrthRegion & 0x80000000) != 0)
  {
    v4 = NextOrthRegion;
  }

  else
  {
    v19 = v88;
    if (v85)
    {
      v20 = *(v87 + 16);
      if (v85 <= v20)
      {
        HIWORD(v84) = v85 - (v20 == v85);
        chars_BackScanBlanks(*(v87 + 8), &v84 + 1);
        if (!HIWORD(v84))
        {
          v4 = 0;
          goto LABEL_134;
        }
      }
    }

    if (v19 >= v18)
    {
      v4 = 0;
    }

    else
    {
      v21 = 0;
      v76 = a4;
      v73 = v13 + (v11 * v10);
      v74 = v13;
      LOWORD(v22) = v19;
      do
      {
        v75 = v22;
        if (v22 == v18)
        {
          goto LABEL_20;
        }

        v28 = v22;
        do
        {
          if (!v83)
          {
            goto LABEL_141;
          }

          v29 = *(v83 + 16);
          if (*(v83 + 16))
          {
            v30 = 0;
            v31 = *(v83 + 8);
            v32 = *(v31 + 32);
            v33 = (v31 + 40);
            v34 = v76;
            do
            {
              v35 = *(v33 - 2) - v32;
              v36 = (*(v33 - 4) - v32);
              if (v36 > v18)
              {
                break;
              }

              if (*(v33 - 5) == 20)
              {
                v37 = *v33;
                if (v34 == 1)
                {
                  v38 = v37 == 1 || v36 >= v18;
                  if (!v38 && v36 > v28)
                  {
                    v34 = 1;
LABEL_101:
                    v61 = v35;
                    LOWORD(v35) = v28;
                    v42 = v61;
                    if (a3)
                    {
                      goto LABEL_59;
                    }

                    goto LABEL_20;
                  }
                }

                v34 = *v33;
                v40 = v37 != 1 || v36 >= v18;
                if (!v40 && v36 >= v28)
                {
                  LODWORD(v30) = v30 + 1;
                  if (v30 < v29)
                  {
                    v62 = v31 + 20;
LABEL_105:
                    v30 = v30;
                    v63 = (v62 + (v30 << 6));
                    do
                    {
                      v64 = v63[3] - v32;
                      v65 = (*(v63 + 6) - v32);
                      if (v65 > v18)
                      {
                        break;
                      }

                      if (*v63 == 20)
                      {
                        v67 = v65 >= v18 || v65 < v28;
                        LODWORD(v30) = v30 + 1;
                        if (v30 < v29 && v67)
                        {
                          goto LABEL_105;
                        }

                        if (v67)
                        {
                          break;
                        }

                        v28 = v35;
                        LOWORD(v35) = v64;
                        goto LABEL_101;
                      }

                      ++v30;
                      v63 += 16;
                    }

                    while (v30 < v29);
                  }

LABEL_56:
                  v42 = v18;
                  if (a3)
                  {
                    goto LABEL_59;
                  }

                  goto LABEL_20;
                }
              }

              ++v30;
              v33 += 32;
            }

            while (v29 != v30);
            LOWORD(v35) = v28;
            goto LABEL_56;
          }

          LOWORD(v35) = v28;
          v42 = v18;
          v34 = v76;
          if (!a3)
          {
            break;
          }

LABEL_59:
          if (v35 == v42 || v34 != 1)
          {
            break;
          }

          v81 = v87;
          if (!v87 || (v43 = v86) == 0)
          {
            matched = 2369789959;
LABEL_140:
            v4 = matched;
LABEL_141:
            v13 = v74;
            goto LABEL_142;
          }

          v44 = *(v87 + 2);
          v45 = bed_Goto(v86, 0xFFFFFFFF);
          if ((v45 & 0x80000000) != 0)
          {
            goto LABEL_138;
          }

          v78 = v42;
          v89 = 0;
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v93 = 0u;
          LODWORD(v92) = v80 + v44 * v35;
          matched = bed_GoBackward(v43, sparser_marker_HasStrictlySmallerPosCur, &v90);
          if ((matched & 0x80001FFF) == 0x80000014)
          {
            matched = bed_Goto(v43, 0);
          }

          if ((matched & 0x80000000) != 0)
          {
            goto LABEL_140;
          }

          v45 = bed_GetiElem(v43, &v89);
          if ((v45 & 0x80000000) != 0)
          {
LABEL_138:
            matched = v45;
            goto LABEL_140;
          }

          v77 = v42;
          matched = sparser_MatchSb(a1, 0, 1, v81, v80, v35, v42, v43, v89);
          if ((matched & 0x80000000) != 0)
          {
            goto LABEL_140;
          }

          LOWORD(v79) = v35;
          while (1)
          {
            v47 = v89;
            v48 = *(v81 + 2);
            *&v90 = 0;
            v94[0] = 0;
            if ((bed_GetcElem(v43, v94) & 0x80000000) != 0 || (bed_GetpElem(v43, 0, &v90) & 0x80000000) != 0)
            {
              break;
            }

            if (v94[0] > v47)
            {
              v49 = (v90 + 32 + (v47 << 6));
              while (1)
              {
                v50 = *v49;
                v49 += 16;
                if (v50 > *(v90 + 32) + v48 * v79)
                {
                  break;
                }

                if (v94[0] == ++v47)
                {
                  goto LABEL_97;
                }
              }

              LODWORD(v47) = v47;
            }

            if (v47 >= v94[0])
            {
              goto LABEL_97;
            }

            v51 = *(v90 + 32);
            v52 = v51 + v48 * v77;
            v53 = v47;
            v54 = (v90 + (v47 << 6) + 20);
            while (v54[3] <= v52)
            {
              if (*v54 <= 0x28u && ((1 << *v54) & 0x10004000080) != 0)
              {
                break;
              }

              ++v53;
              v54 += 16;
              if (v94[0] == v53)
              {
                goto LABEL_97;
              }
            }

            v56 = v90 + (v53 << 6);
            v57 = *(v56 + 32);
            if (v57 > v52 || ((v58 = *(v56 + 20), v25 = v58 > 0x28, v59 = (1 << v58) & 0x10004000080, !v25) ? (v60 = v59 == 0) : (v60 = 1), v60))
            {
LABEL_97:
              if ((matched & 0x80000000) != 0)
              {
                goto LABEL_140;
              }

              break;
            }

            if (v48)
            {
              v79 = (v57 - v51) / v48;
            }

            matched = sparser_MatchSb(a1, 1, 0, v81, v80, v35, v79, v43, v89);
            if ((matched & 0x80000000) != 0)
            {
              goto LABEL_140;
            }
          }

          v28 = v78;
          v21 = 1;
        }

        while (v78 != v18);
LABEL_20:
        v23 = sparser_FindNextOrthRegion(v87, v86, &v88, &v85, &v84);
        if ((v23 & 0x80000000) != 0)
        {
          v18 = v85;
          v4 = v23;
          goto LABEL_141;
        }

        v13 = v74;
        v24 = v85;
        v25 = v85 > v18 && v88 > v75;
        if (v25)
        {
          v22 = v88;
        }

        else
        {
          v22 = v85;
        }

        LODWORD(v88) = v22;
        v26 = *(v87 + 2);
        v27 = v74 + v85 * v26 > v73 || v22 >= v85;
        v18 = v85;
      }

      while (!v27);
      if (v21 == 1)
      {
        v4 = sparser_CheckForcedSb(a1, v87, v80, (v26 * v85), v86, v84, v82);
      }

      else
      {
        v4 = 0;
      }

      v18 = v24;
    }
  }

LABEL_142:
  HIWORD(v84) = v18;
  if (v18 && (v72 = *(v87 + 16), v18 <= v72))
  {
    if (v18 == v72)
    {
      HIWORD(v84) = v18 - 1;
    }

    chars_BackScanBlanks(*(v87 + 8), &v84 + 1);
    v69 = HIWORD(v84);
    v68 = v18;
  }

  else
  {
    v68 = v18;
    v69 = v18;
  }

LABEL_127:
  if (v18 != v69)
  {
    *(a1 + 172) = v13 + *(v87 + 2) * v69;
  }

  if (v18 >= 5)
  {
    HIWORD(v84) = v68;
    chars_BackScanNChars(*(v87 + 8), &v84 + 1, 4);
    v70 = v13 + *(v87 + 2) * HIWORD(v84);
    goto LABEL_135;
  }

LABEL_134:
  v70 = v13 + v18 * *(v87 + 2);
LABEL_135:
  *(a1 + 168) = v70;
  if (v86)
  {
    bed_ObjClose(v86);
  }

  return v4;
}

uint64_t sparser_FindNextOrthRegion(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4, _WORD *a5)
{
  v53 = 0;
  result = 2369789959;
  if (!a1)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  v10 = *a3;
  v11 = *a4;
  v12 = *a5;
  v13 = *(a1 + 16);
  *a3 = v13;
  *a4 = v13;
  result = bed_GetpBlock(a2, &v53);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v14 = v53;
  v15 = *a5;
  LODWORD(v16) = *(v53 + 16);
  if (v15 >= v16)
  {
LABEL_43:
    if (v10 == *a3 && v11 == *a4)
    {
LABEL_45:
      result = 0;
      v52 = *(a1 + 16);
      *a3 = v52;
      *a4 = v52;
      return result;
    }

    return 0;
  }

  v17 = *(v53 + 8);
  v18 = *(v17 + 32);
  if (__CFADD__(v18, v11 * *(a1 + 2)))
  {
    v19 = 0;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = (v17 + 96);
    v23 = 1;
    do
    {
      v15 = v20;
      v19 = v23;
      *a5 = v20;
      if (*(v22 - 19) == 7)
      {
        v21 = !v21;
        if (*(v22 - 14) != 43)
        {
          v21 = 0;
        }
      }

      v24 = *(v14 + 16);
      if (v23 >= v24)
      {
        break;
      }

      v25 = *v22;
      v22 += 16;
      v20 = v23++;
    }

    while (v25 <= v18 + v11 * *(a1 + 2));
    v26 = !v21;
    LODWORD(v16) = *(v14 + 16);
    if (!v26)
    {
      if (v15 < v24)
      {
        v27 = (v17 + (v15 << 6) + 84);
        v28 = v15 + 1;
        do
        {
          v15 = v28;
          *a5 = v28;
          v16 = *(v14 + 16);
          if (v28 >= v16)
          {
            break;
          }

          v29 = *v27;
          v27 += 16;
          ++v28;
        }

        while (v29 != 7);
      }

      if (v15 >= v16 || *(v17 + (v15 << 6) + 20) != 7)
      {
        return 0;
      }
    }
  }

  v30 = v17 + (v15 << 6);
  LODWORD(v31) = v16;
  if (v15 < v16)
  {
    v32 = (v30 + 84);
    v33 = v15 + 1;
    do
    {
      v15 = v33;
      *a5 = v33;
      v31 = *(v14 + 16);
      if (v33 >= v31)
      {
        break;
      }

      v34 = *v32;
      v32 += 16;
      ++v33;
    }

    while (v34 != 7);
  }

  v35 = *(v17 + 32);
  v36 = *(v30 + 32) - v35;
  v37 = *(a1 + 2);
  v38 = v36 / v37;
  if (v15 >= v31)
  {
    if (v38 == *(a1 + 16))
    {
LABEL_42:
      *a3 = v38;
      goto LABEL_43;
    }
  }

  else
  {
    v39 = (*(v17 + (v15 << 6) + 32) - v35) / v37;
    if (v38 == v39)
    {
      v40 = v17 + (v19 << 6);
      v41 = v17 + 84;
      while (1)
      {
        if (*(v17 + (v15 << 6) + 20) == 7 && *(v40 + 40) == 43)
        {
          v42 = (v41 + (v15 << 6));
          v43 = v15 + 1;
          do
          {
            v44 = v42;
            v45 = v43;
            *a5 = v43;
            v31 = *(v14 + 16);
            if (v43 >= v31)
            {
              break;
            }

            v42 += 16;
            ++v43;
          }

          while (*v44 != 7);
          if (*v44 != 7)
          {
            return 0;
          }

          v15 = v45;
        }

        v46 = v15;
        if (v15 < v31)
        {
          v47 = (v41 + (v15 << 6));
          v48 = v15 + 1;
          do
          {
            v15 = v48;
            *a5 = v48;
            v31 = *(v14 + 16);
            if (v48 >= v31)
            {
              break;
            }

            v49 = *v47;
            v47 += 16;
            ++v48;
          }

          while (v49 != 7);
        }

        v50 = *(a1 + 2);
        v38 = (*(v17 + (v46 << 6) + 32) - v35) / v50;
        if (v15 >= v31)
        {
          goto LABEL_42;
        }

        v51 = (*(v17 + (v15 << 6) + 32) - v35) / v50;
        if (v38 != v51)
        {
          *a3 = v38;
          *a4 = v51;
          goto LABEL_43;
        }
      }
    }

    *a4 = v39;
  }

  *a3 = v38;
  if (v10 != v38)
  {
    return 0;
  }

  result = 0;
  if (v11 == *a4 && v12 == v15)
  {
    goto LABEL_45;
  }

  return result;
}

uint64_t sparser_CheckForcedSb(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v77 = 0;
  v7 = 2369789959;
  if (a2)
  {
    i = a5;
    if (a5)
    {
      v12 = a2;
      v78 = 0;
      if ((InitRsrcFunction(*a1, *(a1 + 8), &v78) & 0x80000000) == 0)
      {
        v75 = 0;
        sparser_getMaxCharsPerText(v78, &v75);
        v14 = *(v12 + 8);
        v7 = bed_Goto(i, a6);
        if ((v7 & 0x80000000) == 0)
        {
          v76 = 0;
          if (a4)
          {
            v68 = 0;
            v15 = 0;
            v63 = a4 + a3;
            v64 = a4;
            v16 = v75;
            v65 = i;
            v61 = v14;
            v62 = a1;
            while (1)
            {
              *&v71[0] = 0;
              v17 = bed_GetpBlock(i, v71);
              if ((v17 & 0x80000000) != 0)
              {
                return v17;
              }

              v67 = a3;
              v66 = *(*&v71[0] + 8);
              LOWORD(v74) = v15 / *(v12 + 2);
              chars_ScanBlanks(*(v12 + 8), &v74, *(v12 + 16));
              v18 = v12;
              v19 = *(v12 + 2);
              v20 = v19 * v74;
              LOWORD(v74) = 0;
              v21 = *(*&v71[0] + 16);
              v22 = v20;
              if (v20)
              {
                if (!*(*&v71[0] + 16))
                {
                  goto LABEL_28;
                }

                v23 = *(v66 + 32);
                v24 = v23 + v22;
                if (!__CFADD__(v23, v22))
                {
                  break;
                }
              }

              v25 = 0;
LABEL_13:
              if (v25 >= v21)
              {
                goto LABEL_28;
              }

              v26 = *(v66 + 32);
              v27 = v21 - v25;
              v28 = v25 + 1;
              v29 = v66 + (v25 << 6);
              while (1)
              {
                v30 = *(v29 + 32);
                if (v30 != v26)
                {
                  if (sparser_marker_IsSentenceBoundary(v29, (*(a7 + 8) + *(v29 + 40))))
                  {
                    break;
                  }
                }

                LOWORD(v74) = v28++;
                v29 += 64;
                if (!--v27)
                {
                  goto LABEL_28;
                }
              }

              v34 = v67;
              if (v26 + v22 <= v67)
              {
                v35 = 0;
              }

              else
              {
                v35 = (v26 + v22 - v67);
              }

              v12 = v18;
              v36 = Utf8_LengthInUtf8chars((*(v18 + 8) + v35), v30 - (v35 + v67));
              if (v36 <= v16)
              {
                v37 = *(v66 + (v74 << 6) + 32);
LABEL_35:
                v40 = v64;
                v7 = 0;
                v76 = v37;
                i = v65;
                v42 = v68;
                goto LABEL_74;
              }

LABEL_29:
              v74 = 0;
              v71[0] = 0u;
              v71[1] = 0x200000000uLL;
              v72 = 0u;
              v73 = 0u;
              LODWORD(v71[0]) = 1;
              *&v72 = 0;
              DWORD2(v73) = 0;
              DWORD2(v72) = 1;
              log_OutText(*(*(v62 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] sentence character count %d is greater than max %d", v36, v16);
              v74 = (v16 + v15);
              utf8_GetPreviousValidUtf8Offset(*(v12 + 8), &v74);
              v38 = v74;
              v39 = Utf8_LengthInUtf8chars((v61 + v15), v74 - v15);
              v40 = v64;
              if (v38 >= v64)
              {
                i = v65;
              }

              else
              {
                v41 = v39;
                for (i = v65; v16 > v41; ++v41)
                {
                  v38 += utf8_determineUTF8CharLength(*(v61 + v38));
                  if (v64 <= v38)
                  {
                    break;
                  }
                }
              }

              v76 = v34 - v15 + v38;
              log_OutText(*(*(v62 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] after resetting to %d characters, position=%d", v16, v76);
              eos_BackScanPhraseBoundary(*(v62 + 152), v61, v15, v34, &v76);
              v43 = v76;
              if (v76 > v63)
              {
                v43 = v63;
                v76 = v63;
              }

              log_OutText(*(*(v62 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] after scanning back to phrase boundary, position=%d", v43);
              *&v72 = v76;
              v7 = bed_GetpBlock(i, &v77);
              v42 = v68;
              if ((v7 & 0x80000000) != 0)
              {
                return v7;
              }

              v44 = *(v77 + 8);
              if (*(v77 + 16))
              {
                v45 = 0;
                v46 = 0;
                v47 = (v44 + 40);
                do
                {
                  if (*(v47 - 2) > v72)
                  {
                    break;
                  }

                  if (*(v47 - 5) == 7)
                  {
                    v46 = !v46;
                    v42 = *v47 == 43 ? v45 : v42;
                    if (*v47 != 43)
                    {
                      v46 = 0;
                    }
                  }

                  ++v45;
                  v47 += 16;
                }

                while (*(v77 + 16) != v45);
                if (v46)
                {
                  v69 = v42;
                  v48 = v42 + 1;
                  log_OutText(*(*(v62 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] position=%d is in a phoneme region", v76);
                  v49 = *(v77 + 16);
                  if (v49 <= v48)
                  {
                    goto LABEL_67;
                  }

                  v50 = v48;
                  v51 = v48 - 1;
                  v52 = (v44 + (v50 << 6) + 20);
                  do
                  {
                    v54 = *v52;
                    v52 += 16;
                    v53 = v54;
                    v55 = v51 + 2;
                    ++v51;
                  }

                  while (v55 < v49 && v53 != 7);
                  if (v53 == 7)
                  {
                    log_OutText(*(*(v62 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] set forced EOS at end of phoneme region (marker %d)", v51);
                    v76 = *(v44 + (v51 << 6) + 32);
                    LODWORD(v72) = v76;
                    v17 = bed_Goto(i, v51);
                    if ((v17 & 0x80000000) != 0)
                    {
                      return v17;
                    }

                    v17 = sparser_bed_InjectMarker(i, v71, 0, *(v62 + 188));
                    if ((v17 & 0x80000000) != 0)
                    {
                      return v17;
                    }

                    v7 = 0;
                  }

                  else
                  {
LABEL_67:
                    v17 = bed_Goto(i, v69);
                    if ((v17 & 0x80000000) != 0)
                    {
                      return v17;
                    }

                    v57 = v44 + (v69 << 6);
                    v58 = *(v57 + 24);
                    LODWORD(v72) = *(v57 + 32);
                    log_OutText(*(*(v62 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] didnt find end of phoneme region, hard reset at start of phoneme (marker %d)", v69);
                    v17 = sparser_bed_InjectMarker(i, v71, 1, *(v62 + 188));
                    if ((v17 & 0x80000000) != 0)
                    {
                      return v17;
                    }

                    v7 = bed_GetpBlock(i, &v77);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    *(*(v77 + 8) + (v69 << 6) + 24) = v58;
                    v76 = v64;
                  }

                  v34 = v67;
LABEL_72:
                  v42 = v69;
                  goto LABEL_73;
                }
              }

              if (v72 != *(v44 + 32))
              {
                v69 = v42;
                v56 = *(v77 + 16);
                do
                {
                  --v56;
                }

                while (v56 && v72 < *(v44 + (v56 << 6) + 36) + *(v44 + (v56 << 6) + 32));
                log_OutText(*(*(v62 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] hard reset at position=%d", v72);
                v17 = bed_Goto(i, v56);
                if ((v17 & 0x80000000) != 0)
                {
                  return v17;
                }

                v17 = sparser_bed_InjectMarker(i, v71, 0, *(v62 + 188));
                if ((v17 & 0x80000000) != 0)
                {
                  return v17;
                }

                v7 = 0;
                goto LABEL_72;
              }

              log_OutText(*(*(v62 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] no hard reset (at start of text)");
LABEL_73:
              log_OutPublic(*(v78 + 32), &modPP_1, 1816, 0);
              v37 = v76;
LABEL_74:
              if (v37 - v34 + v15 <= 0xFFFE)
              {
                v68 = v42;
                v59 = (v37 - v34);
                if (v37 == v34)
                {
                  v59 = 1;
                }

                v15 += v59;
                a3 = v37;
                if (v15 < v40)
                {
                  continue;
                }
              }

              return v7;
            }

            v31 = 0;
            v32 = (v66 + 96);
            while (v21 - 1 != v31)
            {
              ++v31;
              v33 = *v32;
              v32 += 16;
              if (v33 > v24)
              {
                v25 = v31;
                LOWORD(v74) = v31;
                goto LABEL_13;
              }
            }

            LOWORD(v74) = *(*&v71[0] + 16);
LABEL_28:
            v12 = v18;
            v36 = Utf8_LengthInUtf8chars(*(v18 + 8), *(v18 + 16) * v19 - v22);
            v34 = v67;
            if (v36 <= v16)
            {
              v37 = v67 + *(v18 + 2) * *(v18 + 16);
              goto LABEL_35;
            }

            goto LABEL_29;
          }
        }
      }
    }
  }

  return v7;
}

uint64_t sparser_GetTextElement(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _WORD *a7, int *a8, int *a9, uint64_t a10, _WORD *a11, _WORD *a12)
{
  v150 = 0;
  v151 = 0;
  v148 = 0;
  v149 = 0;
  v12 = 2369789959;
  v146 = 0;
  v147 = 0;
  v144 = 0;
  v143 = 0;
  if (!a2)
  {
    return v12;
  }

  v145 = 0;
  if ((InitRsrcFunction(*a1, *(a1 + 8), &v151) & 0x80000000) != 0)
  {
    return v12;
  }

  *a12 = 0;
  *a11 = 0;
  *a8 = 0;
  if (!*(a1 + 96))
  {
    v22 = *(v151 + 32);
    v23 = 1805;
    goto LABEL_8;
  }

  v21 = datac_RequestBlock(a2, 1010, 1u, &v150);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

  v140 = (datac_RequestBlock(a2, 1012, 1u, &v148) & 0x80000000) != 0 ? 0 : *(v148 + 8);
  v21 = datac_RequestBlock(a2, 1011, 1u, &v149);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

  v137 = a4;
  v138 = *(v149 + 8);
  v24 = *(v149 + 16);
  v21 = chars_ScanBlankHead(v150, &v145, v149, &v145 + 1, &v143, 0);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

  if (v143 == 1)
  {
    HIWORD(v145) = v24;
  }

  v25 = v149;
  v26 = *(v149 + 16);
  if (v26 >= 2)
  {
    v27 = *(v138 + 32) + v145;
    v28 = v26 - 1;
    v29 = (v138 + 104);
    do
    {
      if (*(v29 - 2) > v27)
      {
        break;
      }

      if (*(v29 - 5) == 20)
      {
        *a7 = *v29;
      }

      v29 += 16;
      --v28;
    }

    while (v28);
  }

  v136 = a8;
  if (*a7 - 2 > 2)
  {
    v30 = sparser_GetSentenceLength;
  }

  else
  {
    v30 = off_1F42D5918[(*a7 - 2)];
  }

  v31 = v150;
  v32 = v148;
  if (v25)
  {
    if (v150)
    {
      v33 = HIWORD(v145);
      if (HIWORD(v145))
      {
        v34 = 0;
        v35 = *(v25 + 8);
        v36 = v35;
        while ((v36[5] & 0xFFFFFFFE) != 2 || v36[10] != 1)
        {
          v36 += 16;
          if (-HIWORD(v145) == --v34)
          {
            goto LABEL_30;
          }
        }

        v48 = -v34;
        v37 = -v34;
        if (v34)
        {
          v49 = v35[16 * ~v34 + 5];
          v104 = v49 > 0x28;
          v50 = (1 << v49) & 0x10024000100;
          if (!v104 && v50 != 0)
          {
            v52 = v36[8] - v35[8] / *(v150 + 2);
LABEL_55:
            LOWORD(v145) = v52;
            HIWORD(v145) = v37;
            goto LABEL_32;
          }
        }

        if (HIWORD(v145) > v37)
        {
          while (1)
          {
            v69 = v36[5];
            v104 = v69 > 0x28;
            v70 = (1 << v69) & 0x10024000100;
            if (!v104 && v70 != 0)
            {
              break;
            }

            ++v48;
            v36 += 16;
            if (HIWORD(v145) == v48)
            {
              goto LABEL_30;
            }
          }

          if (HIWORD(v145) > v48)
          {
            v133 = *(v148 + 8);
            v135 = v150;
            v131 = v30;
            v132 = v148;
            v130 = *(v25 + 8);
            while (!sparser_marker_IsSentenceBoundary(v36, (v133 + v36[10])))
            {
              v36 += 16;
              ++v48;
              v30 = v131;
              v32 = v132;
              v31 = v135;
              if (v48 >= v33)
              {
                goto LABEL_30;
              }
            }

            v37 = v48;
            LOWORD(v52) = (*(v130 + (v48 << 6) + 32) - *(v130 + 32)) / *(v135 + 2);
            goto LABEL_55;
          }
        }
      }
    }
  }

LABEL_30:
  v21 = (v30)(v151, v31, v25, v32, &v145, &v145 + 2);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

  v37 = HIWORD(v145);
LABEL_32:
  if (v37 < 2)
  {
    v40 = 0;
    v42 = 1;
LABEL_41:
    v44 = v138;
  }

  else
  {
    v38 = 0;
    v39 = v138 + 64;
    v40 = 1;
    while (1)
    {
      v41 = *(v39 + 20);
      v42 = v38 + 1;
      if (v41 == 22)
      {
        break;
      }

      if (v41 == 0x4000)
      {
        v43 = v38;
      }

      else
      {
        v43 = v38 + 1;
      }

      ++v40;
      v38 = v43 + 1;
      v39 += 64;
      if (v37 == v40)
      {
        v40 = 0;
        v42 = v37;
        goto LABEL_41;
      }
    }

    HIWORD(v145) = v40;
    *a5 = 1;
    if ((v38 + 1) == v40 && *(v39 + 32) == *(v138 + 32))
    {
      *a6 = 1;
      log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] found immediate voice switch");
      v21 = sparser_SetArgAsParamStr(a1, a2, v39, "pipelineswitchvoice");
      if ((v21 & 0x80000000) != 0)
      {
        return v21;
      }

      v45 = v38 + 2;
      HIWORD(v145) = v38 + 2;
    }

    else
    {
      *a6 = 0;
      v45 = v40;
      v42 = v40;
    }

    v44 = v138;
    v46 = *(v150 + 16);
    if (*(v149 + 16) <= v42)
    {
      v47 = *(v150 + 16);
    }

    else
    {
      v47 = (*(v39 + 32) - *(v138 + 32)) / *(v150 + 2);
    }

    if (v47 < v46)
    {
      v46 = v47;
    }

    LOWORD(v145) = v46;
    log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] found voice switch (marker %d); adjusted text length to %u, set iMEnd to %d, bImmediateVoiceSwitch=%d bEndOnVoiceSwitch=%d", v40, v46, v45, *a6, *a5);
  }

  if (v145 <= 1u)
  {
    v53 = 1;
  }

  else
  {
    v53 = v145;
  }

  v21 = datac_RequestBlock(a2, 1020, v53, &v147);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

  v21 = datac_RequestBlock(a2, 1021, (HIWORD(v145) + 1), &v146);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

  memmove(*(v147 + 8), *(v150 + 8), *(v150 + 2) * v145);
  v54 = v145;
  *(v147 + 16) = v145;
  v55 = v150;
  v56 = *(v150 + 16) - v54;
  *(v150 + 16) = v56;
  memmove(*(v55 + 8), (*(v55 + 8) + v54), *(v55 + 2) * v56);
  v57 = v147;
  *a3 = *(v147 + 16);
  if (*a5 == 1 && !*a6)
  {
    v142 = 0;
    v141 = 0;
    v21 = chars_ScanBlankHead(v57, &v142, v146, &v141, &v143, 0);
    if ((v21 & 0x80000000) != 0)
    {
      return v21;
    }

    if (v142 == *(v147 + 16))
    {
      if (HIWORD(v145) < 2uLL)
      {
LABEL_96:
        *a6 = 1;
        log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] found immediate voice switch, due to blank text");
        v21 = sparser_SetArgAsParamStr(a1, a2, v44 + (v40 << 6), "pipelineswitchvoice");
        if ((v21 & 0x80000000) != 0)
        {
          return v21;
        }

        HIWORD(v145) = v42 + 1;
      }

      else
      {
        v72 = (v44 + 84);
        v73 = 1;
        while (1)
        {
          v74 = *v72;
          v72 += 16;
          v75 = (1 << v74) & 0x1080200084;
          if (v74 > 0x24 || v75 == 0)
          {
            break;
          }

          if (++v73 >= HIWORD(v145))
          {
            goto LABEL_96;
          }
        }

        log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] blank text, but non-eos marker found - continue with sentence");
        HIWORD(v145) = v42;
        *a5 = 0;
      }
    }
  }

  memmove(*(v146 + 8), *(v149 + 8), HIWORD(v145) << 6);
  v58 = v146;
  v59 = HIWORD(v145);
  if (!HIWORD(v145))
  {
    goto LABEL_75;
  }

  v60 = 0;
  v61 = (v44 + 48);
  v62 = (*(v146 + 8) + 48);
  do
  {
    if (*v61)
    {
      v63 = strlen(*v61);
      if (v63)
      {
        v64 = heap_Calloc(*(*(a1 + 16) + 8), 1, (v63 + 1));
        *v62 = v64;
        if (!v64)
        {
          return 2369789962;
        }

        strcpy(v64, *v61);
        heap_Free(*(*(a1 + 16) + 8), *v61);
        *v61 = 0;
        v59 = HIWORD(v145);
      }
    }

    ++v60;
    v61 += 8;
    v62 += 8;
  }

  while (v60 < v59);
  v58 = v146;
LABEL_75:
  *(v58 + 16) = v59;
  v65 = v44 + (v59 << 6);
  v66 = v150;
  if (*(v150 + 20))
  {
    v67 = v149;
    if (*(v150 + 16))
    {
      v68 = 0;
    }

    else
    {
      v68 = *(v149 + 20);
      if (v68)
      {
        v68 = *(v149 + 16) == v59;
      }
    }
  }

  else
  {
    v68 = 0;
    v67 = v149;
  }

  v77 = *(v65 + 24);
  *(v147 + 20) = v68;
  *(v58 + 20) = v68;
  if (*(v67 + 16) <= v59)
  {
    v78 = *(v66 + 2) * v145;
    v79 = *(v44 + 32) + v78;
  }

  else
  {
    v78 = *(v66 + 2) * v145;
    v79 = v78 + *(v44 + 32);
    v80 = *(v65 + 32);
    if (v79 >= v80)
    {
      v134 = 0;
      *(v44 + 24) = v77;
      *(v44 + 32) = v80;
      goto LABEL_105;
    }
  }

  *(v44 + 24) += v78;
  *(v44 + 32) = v79;
  v134 = 1;
LABEL_105:
  v139 = v77;
  if (v59 < 2u)
  {
    v84 = 1;
    v83 = v59;
  }

  else
  {
    v81 = (v44 + 84);
    v82 = 1;
    v83 = v59;
    v84 = 1;
    do
    {
      if (*v81 != 2)
      {
        *v137 += v81[2];
        if (*v81 <= 0x24 && ((1 << *v81) & 0x1080200080) != 0)
        {
          ArgOfLastOfType = marker_GetArgOfLastOfType(v44, v82, v83, 1);
          v87 = *v81;
          if (!sparser_marker_IsReadOutControlDefaultArg(*v81, ArgOfLastOfType, v140, *(a1 + 180)))
          {
            v88 = v44 + (v84 << 6);
            v89 = *(v44 + 24);
            *(v88 + 20) = v87;
            *(v88 + 24) = v89;
            v90 = *(v44 + 32);
            *(v88 + 28) = 0;
            *(v88 + 32) = v90;
            *(v88 + 40) = ArgOfLastOfType;
            *v88 = 1;
            ++v84;
          }
        }
      }

      ++v82;
      v83 = HIWORD(v145);
      v81 += 16;
    }

    while (v82 < HIWORD(v145));
  }

  if (v84 >= v83)
  {
    v93 = a12;
  }

  else
  {
    v91 = v149;
    v92 = *(v149 + 16) + v84 - v83;
    *(v149 + 16) = v92;
    v93 = a12;
    if (v92 >= 2u)
    {
      memmove((*(v91 + 8) + (v84 << 6)), (*(v91 + 8) + (v83 << 6)), (v92 - v84) << 6);
      v83 = HIWORD(v145);
    }
  }

  v94 = *(v146 + 8);
  v95 = v83 - 1;
  if ((v83 - 1) >= 2u)
  {
    v95 = v83 - 1;
    v96 = &v94[16 * (v83 - 1)];
    while (*v96 == 1 || !*v96 && v96[5] == 0x4000)
    {
      --v95;
      v96 -= 16;
      if ((v95 & 0xFFFE) == 0)
      {
        v95 = 1;
        break;
      }
    }
  }

  log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] end marker is pMrk[%d] (iMEnd=%d)", v95, v83);
  v97 = HIWORD(v145);
  if (HIWORD(v145))
  {
    v98 = v94;
    do
    {
      v99 = *v98;
      v98 += 16;
      if (!v99)
      {
        ++*a11;
      }

      --v97;
    }

    while (v97);
  }

  v100 = v94[6];
  v101 = v139 - v100;
  v102 = *(v150 + 2) * v145;
  v103 = v94[8] - v100 + v94[16 * v95 + 6] + v94[16 * v95 + 7] + v102 - (v94[16 * v95 + 8] + v94[16 * v95 + 9]);
  if (((v139 - v100) & 0x80000000) == 0 || (v103 & 0x80000000) == 0)
  {
    v104 = v139 != v100 && v103 < 0;
    if (!v104)
    {
      v101 = v94[8] - v100 + v94[16 * v95 + 6] + v94[16 * v95 + 7] + v102 - (v94[16 * v95 + 8] + v94[16 * v95 + 9]);
    }

    v94[7] = v101;
    v94[9] = v102;
    LOWORD(v145) = 0;
    v105 = v146;
    v106 = *(v146 + 16);
    if (v106)
    {
      v107 = 0;
      v108 = v94 + 5;
      while (1)
      {
        v109 = v108 - 5;
        if (*v108 == 3)
        {
          if (!v108[5] || v108[3] - v94[8] < v94[9])
          {
LABEL_148:
            v110 = v145;
            v111 = &v94[16 * v145];
            v112 = *(v108 + 3);
            v113 = *(v108 + 7);
            v114 = *(v108 - 1);
            *v111 = *v109;
            *(v111 + 1) = v114;
            *(v111 + 2) = v112;
            *(v111 + 3) = v113;
            v115 = v111[5];
            if (v115 == 3 && !v111[10] || *v108 == 3 && v108[3] - v94[8] < v94[9])
            {
              v111[5] = 999;
              v111[10] = 0;
            }

            else if (v115 == 3)
            {
              v111[5] = 2;
            }

            LOWORD(v145) = v110 + 1;
          }
        }

        else if ((*v108 & 0xFFFFFFFE) != 2)
        {
          goto LABEL_148;
        }

        if (v108[3] <= v94[8] && *v108 != 0x4000 && !*v109)
        {
          v116 = *v136 + v108[2];
          *v136 = v116;
          log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] [2] add pMrk[%d].lenRef (tag=%d) to posRefOffset(%d) %d,%d %d,%d", v107, *v108, v116, v108[1], v108[2], v108[3], v108[4]);
        }

        ++v107;
        v105 = v146;
        v108 += 16;
        if (v107 >= *(v146 + 16))
        {
          v106 = v145;
          v93 = a12;
          break;
        }
      }
    }

    *(v105 + 16) = v106;
    v21 = sparser_TrimBlankHead(a1, a2, v136, v93, &v144, a9, a10);
    if ((v21 & 0x80000000) == 0)
    {
      v21 = datac_RequestBlock(a2, 1021, 1u, &v146);
      if ((v21 & 0x80000000) == 0)
      {
        v117 = *(v146 + 8);
        v118 = *(v117 + 24);
        v119 = *(v117 + 28);
        v21 = datac_RequestBlock(a2, 1011, 1u, &v149);
        if ((v21 & 0x80000000) == 0)
        {
          if (!v134)
          {
            return 0;
          }

          v120 = v149;
          v121 = *(v149 + 8);
          v121[6] = v119 + v118;
          v122 = *(v120 + 16);
          if (v122 < 2)
          {
            return 0;
          }

          v123 = v121[8];
          v124 = v121 + 24;
          v125 = v122 - 1;
          do
          {
            if (*v124 == v123)
            {
              v126 = *(v124 - 3);
              v104 = v126 > 0x24;
              v127 = (1 << v126) & 0x1080200080;
              if (!v104 && v127 != 0)
              {
                *(v124 - 2) = v119 + v118;
              }
            }

            v12 = 0;
            v124 += 16;
            --v125;
          }

          while (v125);
          return v12;
        }
      }
    }

    return v21;
  }

  v22 = *(v151 + 32);
  v23 = 1902;
LABEL_8:
  log_OutPublic(v22, &modPP_1, v23, 0);
  return v12;
}

uint64_t sparser_GetCharacterLength(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, _WORD *a6)
{
  if (*a5 >= *(a2 + 16))
  {
    LOWORD(v12) = *(a3 + 16);
  }

  else
  {
    v10 = *(a3 + 8);
    v11 = *a5 + utf8_determineUTF8CharLength(*(*(a2 + 8) + *a5));
    *a5 = v11;
    v12 = *a6;
    v13 = *(a3 + 16);
    if (v12 < v13)
    {
      v14 = *(v10 + 32) + *(a2 + 2) * v11;
      v15 = (v10 + 32 + (v12 << 6));
      while (1)
      {
        v16 = *v15;
        v15 += 16;
        if (v16 >= v14)
        {
          break;
        }

        if (v13 == ++v12)
        {
          LOWORD(v12) = *(a3 + 16);
          break;
        }
      }
    }
  }

  *a6 = v12;
  return 0;
}

uint64_t sparser_GetWordLength(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, unsigned __int16 *a6)
{
  v11 = *(a3 + 8);
  v34 = 0;
  v12 = *a5;
  chars_ScanNonBlanks(*(a2 + 8), a5, *(a2 + 16));
  sparser_getMaxCharsPerText(a1, &v34);
  v13 = Utf8_LengthInUtf8chars(*(a2 + 8), *a5);
  v14 = v34;
  if (v34 >= v13)
  {
    v16 = *a5;
  }

  else
  {
    log_OutPublic(*(a1 + 32), &modPP_1, 1814, 0);
    *a5 = v14;
    v33 = v14;
    utf8_GetPreviousValidUtf8Offset(*(a2 + 8), &v33);
    if (v33)
    {
      --v33;
    }

    utf8_GetPreviousValidUtf8Offset(*(a2 + 8), &v33);
    v15 = v33;
    *a5 = v33;
    v16 = utf8_determineUTF8CharLength(*(*(a2 + 8) + v15));
    *a5 = v16;
    if (*(a2 + 16) > v16 && v14 >= 2)
    {
      v18 = 1;
      do
      {
        v16 = *a5 + utf8_determineUTF8CharLength(*(*(a2 + 8) + v16));
        *a5 = v16;
        ++v18;
      }

      while (*(a2 + 16) > v16 && v18 < v14);
    }
  }

  v20 = *(a3 + 16);
  if (v12 == v16)
  {
LABEL_18:
    v21 = v20;
  }

  else
  {
    if (*(a3 + 16))
    {
      v22 = 0;
      v23 = 0;
      v21 = 0;
      v24 = (v11 + 40);
      do
      {
        if (v23 || *(v24 - 2) - *(v11 + 32) >= v16)
        {
          break;
        }

        if (*(v24 - 5) == 7)
        {
          v23 = *v24 == 43;
          if (*v24 == 43)
          {
            v21 = v22;
          }
        }

        else
        {
          v23 = 0;
        }

        ++v22;
        v24 += 16;
      }

      while (v20 != v22);
      if (v23)
      {
        v25 = v11 + (v21 << 6);
        v26 = *(v11 + 32);
        if (*(v25 + 32) != v26 || *(v25 + 20) != 7)
        {
          *a5 = *(v25 + 32) - v26;
          goto LABEL_42;
        }

        while (1)
        {
          v27 = v21++;
          if (v20 <= v21)
          {
            break;
          }

          v28 = v11 + (v21 << 6);
          if (*(v28 + 20) == 7)
          {
            *a5 = *(v28 + 32) - v26;
            *a6 = v27 + 2;
            LODWORD(v20) = *(a3 + 16);
            break;
          }
        }
      }
    }

    v29 = *a6;
    v21 = *a6;
    if (v29 < v20)
    {
      v30 = (v11 + 32 + (v29 << 6));
      while (1)
      {
        v31 = *v30;
        v30 += 16;
        if (v31 >= *(v11 + 32) + *(a2 + 2) * *a5)
        {
          break;
        }

        if (v20 == ++v29)
        {
          goto LABEL_18;
        }
      }

      v21 = v29;
    }
  }

LABEL_42:
  *a6 = v21;
  return 0;
}

uint64_t sparser_GetLineLength(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, _WORD *a6)
{
  v11 = *(a3 + 8);
  v42 = 0;
  v12 = *a5;
  chars_ScanForLineEnd(*(a2 + 8), a5, *(a2 + 16));
  sparser_getMaxCharsPerText(a1, &v42);
  v13 = Utf8_LengthInUtf8chars(*(a2 + 8), *a5);
  v14 = v42;
  if (v42 < v13)
  {
    v15 = a6;
    *a5 = v42;
    v16 = v14;
    if (v14 == *(a2 + 16))
    {
      *a5 = v14 - 1;
      v16 = (v14 - 1);
    }

    v41 = v16;
    utf8_GetPreviousValidUtf8Offset(*(a2 + 8), &v41);
    v17 = v41;
    *a5 = v41;
    v18 = Utf8_LengthInUtf8chars(*(a2 + 8), v17);
    v19 = *a5;
    if (v19 < *(a2 + 16))
    {
      for (i = v18; v14 > i; ++i)
      {
        LOWORD(v19) = *a5 + utf8_determineUTF8CharLength(*(*(a2 + 8) + v19));
        *a5 = v19;
        if (*(a2 + 16) <= v19)
        {
          break;
        }
      }
    }

    chars_BackScanToBlank(*(a2 + 8), a5);
    v21 = *a5;
    if (!*a5)
    {
      *a5 = v19;
      v21 = v19;
    }

    a6 = v15;
    if (*(a3 + 16))
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = (v11 + 40);
      do
      {
        if (*(v25 - 2) - *(v11 + 32) > v21)
        {
          break;
        }

        if (*(v25 - 5) == 7)
        {
          v23 = !v23;
          if (*v25 == 43)
          {
            v24 = v22;
          }

          else
          {
            v23 = 0;
          }
        }

        ++v22;
        v25 += 16;
      }

      while (*(a3 + 16) != v22);
      if (v23)
      {
        *a5 = *(v11 + (v24 << 6) + 32) - *(v11 + 32);
      }
    }

    log_OutPublic(*(a1 + 32), &modPP_1, 1815, 0);
  }

  v26 = *a5;
  if (v12 == v26)
  {
    LOWORD(v27) = *(a3 + 16);
  }

  else
  {
    v27 = *a6;
    v28 = *(a3 + 16);
    if (v27 < v28)
    {
      v39 = a6;
      v29 = *(v11 + 32);
      v38 = *(a2 + 2);
      v30 = v38 * v26;
      v31 = v38 * v26 + v29;
      v32 = (v11 + (v27 << 6));
      while (1)
      {
        v33 = v32[8];
        if (v33 >= v31)
        {
          break;
        }

        if (v30 >= (v33 - v29))
        {
          v34 = v32[10];
          if (sparser_marker_IsSentenceBoundary(v32, (*(a4 + 8) + v34)))
          {
            v35 = v34 == 1 && (v32[5] & 0xFFFFFFFE) == 2;
            v36 = v35;
            if (v33 != v29 && !v36)
            {
              *a5 = (v33 - v29) / v38;
              break;
            }
          }
        }

        ++v27;
        v32 += 16;
        if (v28 == v27)
        {
          LOWORD(v27) = v28;
          break;
        }
      }

      a6 = v39;
    }
  }

  *a6 = v27;
  return 0;
}

uint64_t sparser_GetSentenceLength(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _WORD *a5, unsigned __int16 *a6)
{
  v6 = a6;
  v11 = *(a3 + 8);
  v12 = *a6;
  v13 = *(a3 + 16);
  if (v12 < v13)
  {
    v14 = *(v11 + 32);
    v15 = *(a2 + 2) * *a5;
    v16 = v11 + (v12 << 6);
    while (v15 >= (*(v16 + 32) - v14) || !sparser_marker_IsSentenceBoundary(v16, (*(a4 + 8) + *(v16 + 40))))
    {
      LOWORD(v12) = v12 + 1;
      v16 += 64;
      if (v13 == v12)
      {
        LOWORD(v12) = v13;
        v6 = a6;
        goto LABEL_17;
      }
    }

    LODWORD(v12) = v12;
    v6 = a6;
  }

  if (v12 < v13)
  {
    v12 = v12;
    v17 = v11 + (v12 << 6);
    do
    {
      v18 = *(v17 + 32) - *(v11 + 32);
      if (*(a2 + 2) * *a5 < (*(v17 + 32) - *(v11 + 32)))
      {
        if (sparser_marker_IsSentenceBoundary(v17, (*(a4 + 8) + *(v17 + 40))))
        {
          IsSuppressedSentenceBoundary = sparser_IsSuppressedSentenceBoundary(a3, a2, v18);
          v13 = *(a3 + 16);
          if (!IsSuppressedSentenceBoundary)
          {
            break;
          }
        }
      }

      ++v12;
      v17 += 64;
    }

    while (v12 < v13);
    LODWORD(v12) = v12;
  }

  if (v12 >= v13)
  {
LABEL_17:
    v20 = *(a2 + 16);
  }

  else
  {
    v20 = (*(v11 + (v12 << 6) + 32) - *(v11 + 32)) / *(a2 + 2);
  }

  *a5 = v20;
  *v6 = v12;
  return 0;
}

uint64_t sparser_SetArgAsParamStr(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = 2369789959;
  v12 = 0;
  v13 = 0;
  if ((InitRsrcFunction(*a1, *(a1 + 8), &v13) & 0x80000000) == 0 && (datac_RequestBlock(a2, 1012, 1u, &v12) & 0x80000000) == 0)
  {
    v8 = strlen((*(v12 + 8) + *(a3 + 40)));
    v9 = heap_Calloc(*(v13 + 8), 1, v8 + 1);
    if (v9)
    {
      v10 = v9;
      strncpy(v9, (*(v12 + 8) + *(a3 + 40)), v8)[v8] = 0;
      v7 = paramc_ParamSetStr(*(v13 + 40), a4, v10);
      if ((v7 & 0x80000000) == 0)
      {
        log_OutText(*(v13 + 32), &modPP_1, 4, 0, "[SPARSER] SET PARAM marker:%d param=%s val=%s", *(a3 + 20), a4, v10);
      }

      heap_Free(*(v13 + 8), v10);
    }

    else
    {
      return 2369789962;
    }
  }

  return v7;
}

BOOL sparser_marker_IsReadOutControlDefaultArg(int a1, unsigned int a2, uint64_t a3, int a4)
{
  result = 0;
  if (a1 > 30)
  {
    if (a1 != 31)
    {
      if (a1 != 36)
      {
        return result;
      }

      return a3 && strcmp((a3 + a2), "normal") == 0;
    }

    return a2 == a4;
  }

  else
  {
    if (a1 != 7)
    {
      if (a1 != 21)
      {
        return result;
      }

      return a3 && strcmp((a3 + a2), "normal") == 0;
    }

    return a2 == 15;
  }
}

uint64_t sparser_TrimBlankHead(uint64_t a1, uint64_t a2, _DWORD *a3, _WORD *a4, _WORD *a5, int *a6, uint64_t a7)
{
  v9 = a5;
  v108 = 0;
  v109 = 0;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v102 = 0;
  v103 = 0;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  *(a7 + 20) = 0;
  result = datac_RequestBlock(a2, 1020, 1u, &v109);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = datac_RequestBlock(a2, 1021, 1u, &v108);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = chars_ScanBlankHead(v109, &v103 + 1, v108, &v103, &v102, 0);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = datac_RequestBlock(a2, 1021, 1u, &v108);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v15 = *(v108 + 8);
  log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] got %d (byte) blanks, but do they bisect markers?", *(v109 + 2) * HIWORD(v103));
  if (v102)
  {
    v16 = 1;
  }

  else
  {
    v101 = a1;
    v17 = 0;
    v18 = v15 + 24;
    v19 = v15[8];
    v20 = v15 + 8;
    v21 = v15 + 21;
    v22 = v108;
    v23 = &modPP_1;
    LODWORD(v24) = 1;
    do
    {
      v25 = *(v22 + 16);
      if (v25 <= v17)
      {
        break;
      }

      v26 = v17 + 2;
      v27 = &v18[16 * v17];
      while (1)
      {
        v28 = v17;
        v29 = &v15[16 * v17];
        v30 = v29[5];
        v31 = v30 > 0x24 || ((1 << v30) & 0x1080300080) == 0;
        if (!v31 && !*v29)
        {
          v32 = v29[8];
          v33 = v15[8];
          v34 = *(v109 + 2);
          v35 = v34 * HIWORD(v103) + v33;
          if (v32 < v35)
          {
            break;
          }
        }

        ++v17;
        ++v26;
        v27 += 16;
        if (v25 <= v17)
        {
          goto LABEL_57;
        }
      }

      if (v25 <= (v17 + 1))
      {
        v100 = v17;
      }

      else
      {
        LOWORD(v28) = v17;
        do
        {
          v36 = *(v27 - 3);
          if (v36 <= 0x24 && ((1 << v36) & 0x1080300080) != 0)
          {
            v38 = v36 == v30 && *(v27 - 8) == 0;
            if (v38 && *v27 < v35)
            {
              LOWORD(v28) = v26 - 1;
            }
          }

          v31 = v25 == v26++;
          v27 += 16;
        }

        while (!v31);
        v100 = v28;
        v28 = v28;
        v32 = v15[16 * v28 + 8];
      }

      if (v32 < v33 || (v32 - v33) / v34 >= HIWORD(v103))
      {
        if (v29[6] - v15[6] == v34 * HIWORD(v103))
        {
          v99 = v18;
          v97 = v19;
          v93 = v21;
          v95 = v20;
          v50 = v23;
          log_OutText(*(*(v101 + 16) + 32), v23, 5, 0, "[SPARSER] reset to reference region at marker %d", v17);
          v23 = v50;
          v21 = v93;
          v20 = v95;
          v19 = v97;
          v18 = v99;
          LODWORD(v24) = 0;
          v51 = *(v109 + 2) * HIWORD(v103);
          v52 = v15[7] - v51;
          v15[6] += v51;
          v15[7] = v52;
          LOWORD(v103) = v17;
          v22 = v108;
        }
      }

      else
      {
        v92 = v21;
        v94 = v20;
        v96 = v19;
        v91 = v9;
        v39 = &v15[16 * v28];
        LOWORD(v103) = v100;
        v98 = v18;
        v40 = *(v39 + 3);
        v42 = *v39;
        v41 = *(v39 + 1);
        *(a7 + 32) = *(v39 + 2);
        *(a7 + 48) = v40;
        *a7 = v42;
        *(a7 + 16) = v41;
        log_OutText(*(*(v101 + 16) + 32), v23, 5, 0, "[SPARSER] hard reference reset at marker %d", v100);
        log_OutText(*(*(v101 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] reset to reference region at marker %d", v100);
        v43 = v39[6] - v15[6];
        *a6 = v43;
        log_OutText(*(*(v101 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] set refReset(%d) due to readout control marker %d", v43, v100);
        v44 = v39[6];
        v45 = v15[7] - v44 + v15[6];
        v15[6] = v44;
        v15[7] = v45;
        v46 = v39[7] + (HIWORD(v103) - (v39[8] - v15[8]) / *(v109 + 2)) * *(v109 + 2);
        *a3 = v46;
        log_OutText(*(*(v101 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] set posRefOffset(%d) due to readout control marker %d", v46, v100);
        v22 = v108;
        if (*(v108 + 16) <= (v100 + 1))
        {
          v18 = v98;
          v19 = v96;
          v21 = v92;
          v20 = v94;
          v23 = &modPP_1;
        }

        else
        {
          v47 = (v100 + 1);
          v21 = v92;
          v20 = v94;
          v48 = &v94[16 * v47];
          v18 = v98;
          v19 = v96;
          v23 = &modPP_1;
          do
          {
            if ((*(v48 - 3) == 999 || !*(v48 - 8)) && *v48 <= v19 + *(v109 + 2) * HIWORD(v103) && *(v48 - 2) >= v15[16 * v28 + 6])
            {
              v49 = *a3 + *(v48 - 1);
              *a3 = v49;
              log_OutText(*(*(v101 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] set posRefOffset(%d) due to marker %d", v49, v47);
              v23 = &modPP_1;
              v21 = v92;
              v20 = v94;
              v19 = v96;
              v18 = v98;
              v22 = v108;
            }

            ++v47;
            v48 += 16;
          }

          while (v47 < *(v22 + 16));
        }

        if (v100 < 2u)
        {
          LODWORD(v24) = 0;
          v9 = v91;
        }

        else
        {
          v24 = v28 - 1;
          v53 = v21;
          v9 = v91;
          do
          {
            if (*v53 == 999)
            {
              *v53 = 0x4000;
            }

            v53 += 16;
            --v24;
          }

          while (v24);
        }
      }

      v17 = *(v22 + 16) + 1;
    }

    while (!v102);
LABEL_57:
    v16 = v24 == 1;
    a1 = v101;
  }

  v54 = HIWORD(v103);
  if (!HIWORD(v103) && !*(a7 + 20))
  {
    return 0;
  }

  v55 = v109;
  v56 = *(v109 + 16) - HIWORD(v103);
  *(v109 + 16) = v56;
  memmove(*(v55 + 8), (*(v55 + 8) + v54), *(v55 + 2) * v56);
  result = datac_RequestBlock(a2, 1021, (*(v108 + 16) + 1), &v108);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v57 = a1;
  v58 = v108;
  v59 = *(v108 + 8);
  v60 = v103;
  if (v103 == 1)
  {
    v61 = v59[1];
    v104 = *v59;
    v105 = v61;
    v62 = v59[3];
    v106 = v59[2];
    v107 = v62;
    *(v59 + 7) = 0;
    *(v59 + 9) = 0;
  }

  v63 = *(v59 + 8);
  v64 = *(v59 + 6);
  v65 = v63 - v64 + *(&v59[4 * v60 - 2] - 2) + *(&v59[4 * v60 - 2] - 1) + *(v109 + 2) * HIWORD(v103) - (LODWORD(v59[4 * v60 - 2]) + *(&v59[4 * v60 - 1] - 3));
  if (v60 == 1)
  {
    v66 = v105;
    *v59 = v104;
    v59[1] = v66;
    v67 = v107;
    v59[2] = v106;
    v59[3] = v67;
  }

  v68 = *(v58 + 16);
  if (v68 < 2)
  {
    LOWORD(i) = 1;
  }

  else
  {
    v69 = v59 + 25;
    for (i = 1; i < v68; ++i)
    {
      if (v63 != *(v69 - 1))
      {
        break;
      }

      if (*v69)
      {
        break;
      }

      if (v64 != *(v69 - 3))
      {
        break;
      }

      if (v65 <= *(v69 - 2))
      {
        break;
      }

      v69 += 16;
    }
  }

  LOWORD(v103) = i;
  memmove(&v59[4 * i + 4], &v59[4 * i], (v68 - i) << 6);
  v71 = &v59[4 * v103];
  *(v71 + 1) = 0;
  *(v71 + 2) = 0x400000000000;
  *v71 = 0;
  *(v71 + 6) = v64;
  *(v71 + 7) = v65;
  *(v71 + 8) = v63;
  *(v71 + 36) = 0;
  *(v71 + 52) = 0;
  *(v71 + 44) = 0;
  *(v71 + 15) = 0;
  v72 = v108;
  v73 = v109;
  ++*(v108 + 16);
  v74 = HIWORD(v103);
  *a4 = *(v73 + 2) * HIWORD(v103);
  if (v16)
  {
    log_OutText(*(*(v57 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] add blanks (%d) to posRefOffset(%d)", *(v73 + 2) * v74, *a3);
    v74 = HIWORD(v103);
    v73 = v109;
    *a3 += *(v109 + 2) * HIWORD(v103);
    v72 = v108;
  }

  if (*(a7 + 20))
  {
    v75 = *(v72 + 16);
  }

  else
  {
    LOWORD(v103) = 1;
    if (*(v72 + 16) < 2u)
    {
      goto LABEL_94;
    }

    v76 = 1;
    do
    {
      v77 = &v59[4 * v76];
      v78 = *(v77 + 8);
      v79 = *(v59 + 8);
      if (v78 > v79 && v78 <= v79 + *(v109 + 2) * HIWORD(v103))
      {
        v80 = *(v77 + 5);
        if (v80 != 0x4000 && !*v77)
        {
          log_OutText(*(*(v57 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] adjust posRefOffset(%d) by %d for leading esc sequences (marker tag=%d %d,%d,%d,%d)", *a3, *(v77 + 7), v80, *(v77 + 6), *(v77 + 7), v78, *(v77 + 9));
          v76 = v103;
          v81 = &v59[4 * v103];
          *a3 += *(v81 + 7);
          *v9 += *(v81 + 14);
          v72 = v108;
        }
      }

      LOWORD(v103) = ++v76;
      v75 = *(v72 + 16);
    }

    while (v75 > v76);
    v74 = HIWORD(v103);
    v73 = v109;
  }

  if (v75 > 1)
  {
    v82 = *(v73 + 2) * v74;
    v83 = v75;
    v84 = *(v59 + 8);
    v85 = v59 + 6;
    v86 = v83 - 1;
    do
    {
      if (*v85 >= v82 + v84)
      {
        v87 = *v85 - v82;
      }

      else
      {
        v87 = v84;
      }

      *v85 = v87;
      v85 += 16;
      --v86;
    }

    while (v86);
    goto LABEL_95;
  }

LABEL_94:
  v82 = *(v73 + 2) * v74;
LABEL_95:
  result = 0;
  v88 = *(v59 + 9);
  v89 = v88 >= v82;
  v90 = v88 - v82;
  if (!v89)
  {
    v90 = 0;
  }

  *(v59 + 9) = v90;
  return result;
}

uint64_t sparser_ProcessStart(uint64_t a1, int a2)
{
  v7 = 0;
  v6 = 0;
  if ((InitRsrcFunction(*a1, *(a1 + 8), &v7) & 0x80000000) != 0)
  {
    return 2369789959;
  }

  *(a1 + 168) = 0;
  *(a1 + 180) = a2;
  *(a1 + 184) = 200;
  UInt = paramc_ParamGetUInt(*(v7 + 40), "ppmaxmarkersinemptytext", &v6);
  result = 0;
  if ((UInt & 0x1FFF) != 0x14)
  {
    if ((UInt & 0x80000000) == 0)
    {
      if (v6 - 1 > 0xFFFD)
      {
        log_OutPublic(*(v7 + 32), &modPP_1, 1820, 0);
      }

      else
      {
        *(a1 + 184) = v6;
      }
    }

    return UInt;
  }

  return result;
}

uint64_t sparser_bed_MapPosCur(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  v15 = 0;
  if (!a3)
  {
    return 2369789959;
  }

  v14 = 0;
  *a3 = a2;
  LODWORD(result) = bed_GetpElem(a1, 0, &v15);
  if ((result & 0x80000000) != 0)
  {
    if ((result & 0x1FFF) == 0xF)
    {
      return 0;
    }

    else
    {
      return result;
    }
  }

  else
  {
    result = bed_GetcElem(a1, &v14);
    if ((result & 0x80000000) == 0)
    {
      if (!v14)
      {
        return 0;
      }

      v7 = 0;
      v8 = 0;
      do
      {
        v9 = (v15 + (v7 << 6));
        v10 = v9[8];
        if (v10 > a2)
        {
          break;
        }

        v11 = *v9 == 1 && v7 == 0;
        if (v11 || *v9 == 0)
        {
          v13 = v9[9] + v10;
          if (v13 <= a2 && (!v8 || v8[9] + v8[8] <= v13))
          {
            v8 = (v15 + (v7 << 6));
          }
        }

        ++v7;
      }

      while (v7 < v14);
      if (v8)
      {
        result = 0;
        *a3 += v8[7] + v8[6] - (v8[8] + v8[9]);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL sparser_marker_HasGreaterEqualPosCur(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      return *(a1 + 32) <= *(a2 + 32);
    }
  }

  return result;
}

BOOL sparser_marker_HasStrictlyGreaterPosCur(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      return *(a1 + 32) < *(a2 + 32);
    }
  }

  return result;
}

uint64_t sparser_marker_IsSentenceBoundary(uint64_t result, char *__s1)
{
  if (result)
  {
    v2 = *(result + 20);
    if ((v2 & 0xFFFFFFFE) == 2 && *(result + 40) == 1)
    {
      return 1;
    }

    v3 = v2 == 12 || v2 == 20;
    return v3 || v2 == 36 && !strcmp(__s1, "vceunkn") || v2 == 200;
  }

  return result;
}

uint64_t sparser_IsSuppressedSentenceBoundary(uint64_t a1, uint64_t a2, __int16 a3)
{
  result = 0;
  if (a1 && a2)
  {
    v6 = *(a1 + 8);
    v7 = *(a2 + 2);
    v13 = a3;
    chars_BackScanNChars(*(a2 + 8), &v13, 1);
    chars_BackScanBlanksX(*(a2 + 8), &v13, (*(a2 + 16) * v7));
    chars_ScanNChars(*(a2 + 8), (*(a2 + 16) * v7), &v13, 1);
    v12 = v13;
    chars_ScanBlanks(*(a2 + 8), &v12, (*(a2 + 16) * v7));
    v8 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v9 = (v6 + 40);
      do
      {
        v10 = (*(v9 - 2) - *(v6 + 32));
        if (v10 > (v12 * v7))
        {
          break;
        }

        if (*(v9 - 5) == 3 && !*v9 && v10 >= (v13 * v7))
        {
          return 1;
        }

        v9 += 16;
        --v8;
      }

      while (v8);
    }

    return 0;
  }

  return result;
}

BOOL sparser_marker_IsOfSameType(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      return *(a1 + 20) == *(a2 + 20);
    }
  }

  return result;
}

uint64_t sparser_MatchSb(uint64_t a1, int a2, int a3, uint64_t a4, int a5, __int16 a6, __int16 a7, uint64_t a8, unsigned __int16 a9)
{
  v9 = a8;
  v88 = *MEMORY[0x1E69E9840];
  v80 = 0;
  v76[0] = 0u;
  v79 = 0u;
  LODWORD(v76[0]) = 1;
  v76[1] = 0x200000000uLL;
  v77 = 0;
  DWORD2(v79) = 0;
  v78 = 1;
  v14 = 136;
  if (!a2)
  {
    v14 = 120;
  }

  v15 = 144;
  if (!a2)
  {
    v15 = 128;
  }

  v16 = *(a1 + v15);
  v72 = *(a1 + v14);
  v75 = *(a4 + 8);
  v17 = *(a4 + 2);
  v66 = bed_GetpBlock(a8, &v80);
  if ((v66 & 0x80000000) == 0 && v16)
  {
    v18 = 0;
    v19 = "using ENDLIST";
    v20 = v17 * a7;
    if (!a2)
    {
      v19 = "using LIST";
    }

    v69 = v16;
    v70 = v19;
    v63 = v9;
    v62 = a6;
    do
    {
      v66 = bed_Goto(v9, a9);
      if ((v66 & 0x80000000) != 0)
      {
        return v66;
      }

      v74 = *(a1 + 112);
      v73 = *(*(a1 + 104) + 8 * *(v72 + 2 * v18));
      LOWORD(v21) = *(a4 + 2) * a6;
      v22 = a5;
      while (v21 < v20 && (nuance_pcre_exec(*(a1 + 24), *(a1 + 32), v74 + v73, 0, v75, v20, v21, 0, v85, 30) & 0x80000000) == 0)
      {
        log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] regex %d matched at pos %u (iSb=%d) %s %d : (of %d)", *(v72 + 2 * v18), v21, *(*(a1 + 104) + 8 * *(v72 + 2 * v18) + 4), v70, v18, v16);
        v23 = *(*(a1 + 104) + 8 * *(v72 + 2 * v18) + 4);
        if (v23 > 0xFD)
        {
          v27 = 0;
          if (v23 == 255)
          {
            v28 = v85[1];
          }

          else
          {
            v28 = v85[0];
          }

          v25 = v28 + v22;
          LODWORD(v77) = v25;
          v26 = 1;
        }

        else
        {
          v24 = v85[2 * v23];
          LOWORD(v25) = v24 + v22;
          LODWORD(v77) = v24 + v22;
          v26 = (2 * v23) | 1u;
          v27 = v85[v26] - v24;
        }

        HIDWORD(v77) = v27;
        v21 = v85[v26];
        if (!v75)
        {
          goto LABEL_65;
        }

        v29 = v25 - v22;
        v30 = (v25 - v22);
        if (v30 >= v20)
        {
          goto LABEL_65;
        }

        v68 = v80;
        v83 = v25 - v22;
        if (!*(a1 + 40))
        {
          goto LABEL_31;
        }

        chars_BackScanNChars(v75, &v83, 1);
        chars_BackScanBlanksX(v75, &v83, v20);
        if (!v83)
        {
          goto LABEL_31;
        }

        v84 = 0;
        if (!utf8_Utf8CharTo16bit(&v75[v83], &v84) || v84 != 65294 && v84 != 46)
        {
          goto LABEL_31;
        }

        v82 = v83;
        v31 = *(a1 + 64);
        v32 = *(a1 + 72);
        if (*(a1 + 160) == 1)
        {
          chars_BackScanNonBlanks(v75, &v82, v31, v32);
        }

        else
        {
          chars_BackScan2NonBlanksNonChinese(v75, &v82, v31, v32);
        }

        v33 = v82;
        v34 = v83 - v82;
        if (v34 > 0x3E)
        {
          goto LABEL_31;
        }

        v52 = v34 + 1;
        v53 = v83;
        __memcpy_chk();
        v87[v52] = 0;
        LogLevel = log_GetLogLevel(*(*(a1 + 16) + 32));
        if (sparser_IsNonFinalAbbr(a1, v87, v33, (v53 + 1), LogLevel))
        {
          v22 = a5;
          a6 = v62;
          v9 = v63;
          goto LABEL_65;
        }

        v65 = v52;
        v81 = v83 - v82 + 1;
        chars_BackScanNChars(v87, &v81, 1);
        *v86 = 6105691;
        a6 = v62;
        v9 = v63;
        if (v81)
        {
          do
          {
            chars_BackScanNChars(v87, &v81, 1);
            v55 = v81;
            v56 = v65 - v81;
            __memcpy_chk();
            v86[v56 + 3] = 0;
            v57 = v82;
            v58 = v83;
            v59 = log_GetLogLevel(*(*(a1 + 16) + 32));
            IsNonFinalAbbr = sparser_IsNonFinalAbbr(a1, v86, v57 + v55, (v58 + 1), v59);
          }

          while (v81 && !IsNonFinalAbbr);
          v9 = v63;
          a6 = v62;
          v22 = a5;
          if (IsNonFinalAbbr)
          {
            goto LABEL_65;
          }
        }

        else
        {
LABEL_31:
          v22 = a5;
        }

        v35 = *(v68 + 8);
        v36 = *(v68 + 16);
        if (!*(v68 + 16))
        {
          LOWORD(v44) = 0;
          goto LABEL_49;
        }

        v37 = 0;
        v38 = 0;
        v39 = (v35 + 32);
        v40 = *(v35 + 32);
        v41 = (v35 + 40);
        v42 = *(v68 + 16);
        do
        {
          if (*(v41 - 2) - v40 > v30)
          {
            break;
          }

          v43 = *(v41 - 5);
          if (v43 == 32)
          {
            v37 = *v41 == 1;
          }

          else if (v43 == 7)
          {
            v38 = !v38;
            if (*v41 != 43)
            {
              v38 = 0;
            }
          }

          v41 += 16;
          --v42;
        }

        while (v42);
        if (!v38 && !v37)
        {
          v44 = 0;
          while (1)
          {
            v45 = *v39;
            v39 += 16;
            if (v45 - v40 >= v30)
            {
              break;
            }

            if (v36 == ++v44)
            {
              goto LABEL_61;
            }
          }

LABEL_49:
          if (v44 <= v36)
          {
            v46 = *(v68 + 16);
          }

          else
          {
            v46 = v44;
          }

          if (v44 < v36)
          {
            v47 = *(v35 + 32);
            v48 = (v35 + (v44 << 6) + 20);
            v49 = v46 - v44;
            while (v48[3] - v47 < (v29 + v27))
            {
              if (*v48 <= 0x28u && ((1 << *v48) & 0x10004000080) != 0)
              {
                goto LABEL_65;
              }

              v48 += 16;
              if (!--v49)
              {
                break;
              }
            }
          }

LABEL_61:
          v51 = sparser_bed_InjectMarker(v9, v76, 0, *(a1 + 188));
          v66 = 0;
          if ((v51 & 0x80000000) != 0)
          {
            return v51;
          }

          goto LABEL_66;
        }

LABEL_65:
        log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] EOS insertion blocked (may be in Phon/Multiword, or non-final abbreviation preceeds the boundary)");
LABEL_66:
        v16 = v69;
        if (!a3)
        {
          break;
        }
      }

      ++v18;
    }

    while (v18 != v16);
  }

  return v66;
}

BOOL sparser_marker_HasStrictlySmallerPosCur(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      return *(a1 + 32) > *(a2 + 32);
    }
  }

  return result;
}

uint64_t sparser_IsNonFinalAbbr(void *a1, const char *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  strcpy(v15, "is not");
  v14 = 0;
  if (a5 >= 5)
  {
    log_OutText(*(a1[2] + 32), &modPP_1, 5, 0, "[SPARSER] checking if %s is a Non Final Abbr at pos %lu,%lu", a2, a3, a4);
  }

  v12 = 0;
  v13 = -1;
  if (((*(a1[5] + 96))(a1[6], a1[7], "neosnbs", a2, &v14, &v13, &v12) & 0x80000000) != 0)
  {
    return 0;
  }

  if (v13 == 1)
  {
    strcpy(v15, "is");
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  if (a5 >= 5)
  {
    log_OutText(*(a1[2] + 32), &modPP_1, 5, 0, "[SPARSER] %s %s a Non Final Abbr at pos %lu,%lu", a2, v15, a3, a4);
  }

  return v10;
}

uint64_t sparser_getMaxCharsPerText(uint64_t a1, __int16 *a2)
{
  result = *(a1 + 40);
  if (!result || (v6 = 0, result = paramc_ParamGetInt(result, "maxinputlength", &v6), (result & 0x80000000) != 0))
  {
    v5 = 750;
  }

  else
  {
    if (v6 >= 0x2710)
    {
      v4 = 10000;
    }

    else
    {
      v4 = v6;
    }

    if (v6 >= 1)
    {
      v5 = v4;
    }

    else
    {
      v5 = 1;
    }
  }

  *a2 = v5;
  return result;
}

uint64_t chars_ScanBlankHead(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _WORD *a4, _DWORD *a5, unsigned int a6)
{
  result = 2369789959;
  if (a2 && a1 && a5 && (a3 || !a4))
  {
    *a5 = 0;
    if (a6 <= 1)
    {
      v13 = *(a1 + 8);
      LODWORD(v14) = *(a1 + 16);
      if (*(a1 + 16))
      {
        for (i = *(a1 + 8); ; i = v13)
        {
          if (!utf8_BelongsToSet(2u, i, 0, v14))
          {
            LOWORD(v16) = v13;
            v13 = *(a1 + 8);
            goto LABEL_15;
          }

          v13 += utf8_determineUTF8CharLength(*v13);
          v14 = *(a1 + 16);
          if (&v13[-*(a1 + 8)] >= v14)
          {
            break;
          }
        }

        LOWORD(v16) = v13;
        v13 = *(a1 + 8);
      }

      else
      {
        v16 = *(a1 + 8);
      }

LABEL_15:
      v17 = v16 - v13;
      *a2 = v17;
      if (*(a1 + 16) == v17)
      {
        *a5 = 1;
      }
    }

    result = 0;
    if (a4 && (a6 & 0xFFFFFFFD) == 0)
    {
      *a4 = 0;
      if (*a2 && *(a3 + 16))
      {
        v18 = 0;
        v19 = *(a3 + 8);
        v22 = *(v19 + 32);
        v20 = (v19 + 32);
        v21 = v22;
        while (1)
        {
          v23 = *v20;
          v20 += 16;
          if (v23 >= v21 + *(a1 + 2) * *a2)
          {
            break;
          }

          result = 0;
          *a4 = ++v18;
          if (v18 >= *(a3 + 16))
          {
            return result;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t chars_ScanBlanks(uint64_t result, _WORD *a2, unsigned int a3)
{
  if (result)
  {
    if (a2)
    {
      v5 = *a2;
      if (v5 < a3)
      {
        v6 = result;
        do
        {
          result = utf8_BelongsToSet(2u, v6, v5, a3);
          if (!result)
          {
            break;
          }

          result = utf8_determineUTF8CharLength(*(v6 + *a2));
          LOWORD(v5) = *a2 + result;
          *a2 = v5;
        }

        while (a3 > v5);
      }
    }
  }

  return result;
}

uint64_t chars_ScanNonBlanks(uint64_t result, _WORD *a2, unsigned int a3)
{
  if (result)
  {
    if (a2)
    {
      v5 = *a2;
      if (v5 < a3)
      {
        v6 = result;
        do
        {
          result = utf8_BelongsToSet(2u, v6, v5, a3);
          if (result)
          {
            break;
          }

          result = utf8_determineUTF8CharLength(*(v6 + *a2));
          LOWORD(v5) = *a2 + result;
          *a2 = v5;
        }

        while (a3 > v5);
      }
    }
  }

  return result;
}

uint64_t chars_ScanForLineEnd(uint64_t result, _WORD *a2, unsigned int a3)
{
  if (result)
  {
    if (a2)
    {
      v3 = *a2;
      if (v3 < a3)
      {
        v4 = (result + v3);
        v5 = a3 - v3;
        v6 = v3 + 1;
        do
        {
          v7 = *v4++;
          if (v7 == 10)
          {
            break;
          }

          *a2 = v6++;
          --v5;
        }

        while (v5);
      }
    }
  }

  return result;
}

uint64_t chars_BackScanBlanks(uint64_t result, _WORD *a2)
{
  if (result && a2)
  {
    v3 = *a2;
    v6 = v3;
    if (v3)
    {
      v4 = result;
      while (1)
      {
        result = utf8_BelongsToSet(2u, v4, v3, *a2);
        v5 = v6;
        if (!result)
        {
          break;
        }

        if (v6)
        {
          --v6;
        }

        result = utf8_GetPreviousValidUtf8Offset(v4, &v6);
        v3 = v6;
        if (!v6)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v5 = 0;
    }

    *a2 = v5;
  }

  return result;
}

uint64_t chars_BackScanBlanksX(uint64_t result, _WORD *a2, unsigned int a3)
{
  if (result && a2)
  {
    v5 = *a2;
    v8 = v5;
    if (v5)
    {
      v6 = result;
      while (1)
      {
        result = utf8_BelongsToSet(2u, v6, v5, a3);
        v7 = v8;
        if (!result)
        {
          break;
        }

        --v8;
        result = utf8_GetPreviousValidUtf8Offset(v6, &v8);
        v5 = v8;
        if (!v8)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v7 = 0;
    }

    *a2 = v7;
  }

  return result;
}

uint64_t chars_BackScanToBlank(uint64_t result, _WORD *a2)
{
  if (result && a2)
  {
    v3 = *a2;
    v6 = v3;
    if (v3)
    {
      v4 = result;
      while (1)
      {
        result = utf8_BelongsToSet(2u, v4, v3, *a2);
        v5 = v6;
        if (result)
        {
          break;
        }

        if (v6)
        {
          --v6;
        }

        result = utf8_GetPreviousValidUtf8Offset(v4, &v6);
        v3 = v6;
        if (!v6)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v5 = 0;
    }

    *a2 = v5;
  }

  return result;
}

_BYTE *chars_ScanNChars(_BYTE *result, uint64_t a2, _WORD *a3, int a4)
{
  if (result && a3)
  {
    v5 = a4;
    v7 = *a3;
    if (a4)
    {
      v8 = result;
      do
      {
        result = utf8_GetNextUtf8OffsetLimit(v8, v7, a2);
        v7 = result;
        --v5;
      }

      while (v5);
    }

    *a3 = v7;
  }

  return result;
}

uint64_t chars_BackScanNChars(uint64_t result, _WORD *a2, int a3)
{
  if (result && a2)
  {
    v4 = a3;
    v5 = *a2;
    if (a3 && *a2)
    {
      v6 = result;
      do
      {
        v7 = v5 - 1;
        result = utf8_GetPreviousValidUtf8Offset(v6, &v7);
        --v4;
        v5 = v7;
      }

      while (v4 && v7);
    }

    *a2 = v5;
  }

  return result;
}

uint64_t chars_BackScanNonBlanks(uint64_t result, unsigned int *a2, unsigned __int8 *a3, unsigned int a4)
{
  if (result && a2)
  {
    v6 = *a2;
    v24 = v6;
    if (!v6)
    {
      goto LABEL_24;
    }

    v8 = result;
    v9 = a4;
    while (1)
    {
      result = utf8_BelongsToSet(2u, v8, v6, *a2);
      v6 = v24;
      if (result)
      {
LABEL_20:
        v10 = *a2;
        goto LABEL_21;
      }

      if (a4)
      {
        break;
      }

LABEL_19:
      --v24;
      result = utf8_GetPreviousValidUtf8Offset(v8, &v24);
      v6 = v24;
      if (!v24)
      {
        goto LABEL_20;
      }
    }

    v10 = *a2;
    v11 = a3;
    v12 = v9;
    while (1)
    {
      v14 = *v11++;
      v13 = v14;
      v15 = v24 == v10 && v13 == 46;
      v16 = v15;
      if (v13 == *(v8 + v24) && !v16)
      {
        break;
      }

      if (!--v12)
      {
        goto LABEL_19;
      }
    }

LABEL_21:
    if (v6 >= v10)
    {
      goto LABEL_24;
    }

    v18 = utf8_BelongsToSet(2u, v8, v6, v10);
    v6 = v24;
    result = *(v8 + v24);
    if (!v18)
    {
      if (!a4)
      {
        goto LABEL_24;
      }

      while (1)
      {
        v20 = *a3++;
        v19 = v20;
        v21 = v24 == *a2 && v19 == 46;
        v22 = v21;
        if (v19 == result && !v22)
        {
          break;
        }

        if (!--v9)
        {
          goto LABEL_24;
        }
      }
    }

    result = utf8_determineUTF8CharLength(result);
    v6 = v24 + result;
LABEL_24:
    *a2 = v6;
  }

  return result;
}

uint64_t chars_BackScan2NonBlanksNonChinese(uint64_t result, unsigned int *a2, unsigned __int8 *a3, unsigned int a4)
{
  if (result && a2)
  {
    v7 = result;
    v8 = *a2;
    v25 = v8;
    if (v8)
    {
      v9 = v8;
      while (!a4)
      {
LABEL_18:
        result = utf8_BelongsToSet(2u, v7, v9, *a2);
        v9 = v25;
        if (!result)
        {
          result = utf8_BelongsToSet(0x20u, v7, v25, *a2);
          v9 = v25;
          if (!result)
          {
            --v25;
            result = utf8_GetPreviousValidUtf8Offset(v7, &v25);
            v9 = v25;
            if (v25)
            {
              continue;
            }
          }
        }

        goto LABEL_23;
      }

      v10 = a3;
      v11 = a4;
      while (1)
      {
        v13 = *v10++;
        v12 = v13;
        v14 = v9 == v8 && v12 == 46;
        v15 = v14;
        if (v12 == *(v7 + v9) && !v15)
        {
          break;
        }

        if (!--v11)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      v9 = 0;
    }

LABEL_23:
    if (v9 >= *a2)
    {
      goto LABEL_40;
    }

    v17 = utf8_BelongsToSet(2u, v7, v9, *a2);
    v9 = v25;
    if (!v17)
    {
      v18 = *a2;
      if (a4)
      {
        v19 = a4;
        while (1)
        {
          v21 = *a3++;
          v20 = v21;
          v22 = v25 == v18 && v20 == 46;
          v23 = v22;
          if (v20 == *(v7 + v25) && !v23)
          {
            break;
          }

          if (!--v19)
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
LABEL_38:
        result = utf8_BelongsToSet(0x20u, v7, v25, v18);
        v9 = v25;
        if (!result)
        {
LABEL_40:
          *a2 = v9;
          return result;
        }
      }
    }

    result = utf8_determineUTF8CharLength(*(v7 + v9));
    v9 = v25 + result;
    goto LABEL_40;
  }

  return result;
}

char *chars_BackScanPhraseBoundary(char *result, uint64_t a2, _WORD *a3)
{
  if (a2 && a3)
  {
    v5 = result;
    v6 = *a3;
    v15 = v6;
    if (!v6)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v7 = utf8_BelongsToSet(2u, a2, v6, *a3);
      v8 = v15;
      if (!v7)
      {
        break;
      }

      if (v15)
      {
        --v15;
      }

      utf8_GetPreviousValidUtf8Offset(a2, &v15);
      v6 = v15;
      if (!v15)
      {
        goto LABEL_17;
      }
    }

    if (v15)
    {
      while (1)
      {
        v9 = utf8_BelongsToSet(2u, a2, v8, *a3);
        LODWORD(v10) = v15;
        if (v9)
        {
          break;
        }

        v11 = utf8_strchr(v5, (a2 + v15));
        LODWORD(v10) = v15;
        if (v11)
        {
          break;
        }

        if (v15)
        {
          --v15;
        }

        utf8_GetPreviousValidUtf8Offset(a2, &v15);
        v8 = v15;
        if (!v15)
        {
          LODWORD(v10) = 0;
          break;
        }
      }

      v10 = v10;
    }

    else
    {
LABEL_17:
      v10 = 0;
    }

    result = utf8_strchr(v5, (a2 + v10));
    v12 = v15;
    if (!result)
    {
      if (v15)
      {
        v13 = v15;
        do
        {
          v14 = utf8_strchr(v5, (a2 + v13));
          LODWORD(v13) = v15;
          if (v14)
          {
            break;
          }

          if (v15)
          {
            --v15;
          }

          utf8_GetPreviousValidUtf8Offset(a2, &v15);
          v13 = v15;
        }

        while (v15);
        v13 = v13;
      }

      else
      {
        v13 = 0;
      }

      result = utf8_strchr(v5, (a2 + v13));
      if (result)
      {
        v12 = v15;
      }
    }

    *a3 = v12;
  }

  return result;
}

char *eos_BackScanPhraseBoundary(char *result, uint64_t a2, unsigned int a3, unsigned int a4, _WORD *a5)
{
  if (a2 && a5 && *a5 > a4)
  {
    v9 = *a5 - a4;
    v7 = a2 + a3;
    result = chars_BackScanPhraseBoundary(result, v7, &v9);
    if (v9)
    {
      v8 = v9 + a4;
      result = utf8_determineUTF8CharLength(*(v7 + v9));
      *a5 = v8 + result;
    }
  }

  return result;
}

uint64_t tolhp_ObjOpen(_WORD *a1, uint64_t a2, uint64_t ***a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = 2370838535;
  v14 = 0;
  v15 = 0;
  if (a3 && (InitRsrcFunction(a1, a2, &v15) & 0x80000000) == 0)
  {
    *a3 = 0;
    v7 = heap_Alloc(*(v15 + 8), 40);
    if (!v7)
    {
      return 2370838538;
    }

    v8 = v7;
    *(v7 + 32) = 0;
    *v7 = 0u;
    *(v7 + 16) = 0u;
    *v7 = a1;
    *(v7 + 8) = a2;
    if (v15)
    {
      v9 = paramc_ParamGet(*(v15 + 40), "langcode", &v14, 0);
      if ((v9 & 0x80000000) != 0)
      {
        v3 = v9;
      }

      else
      {
        strcpy(v18, "nts_");
        __strcat_chk();
        v10 = dct_ObjOpen(v18, a1, a2, v8 + 2);
        if ((v10 & 0x80000000) == 0 || (v3 = v10, (v10 & 0x1FFF) == 1))
        {
          strcpy(v17, "sxm_");
          __strcat_chk();
          v11 = dct_ObjOpen(v17, a1, a2, v8 + 3);
          if ((v11 & 0x80000000) == 0 || (v3 = v11, (v11 & 0x1FFF) == 1))
          {
            strcpy(v16, "ipa_");
            __strcat_chk();
            v12 = dct_ObjOpen(v16, a1, a2, v8 + 4);
            v3 = v12;
            if ((v12 & 0x80000000) == 0)
            {
LABEL_13:
              *a3 = v8;
              return v3;
            }

            if ((v12 & 0x1FFF) == 1)
            {
              v3 = 0;
              goto LABEL_13;
            }
          }
        }
      }
    }

    tolhp_ObjClose(v8);
  }

  return v3;
}

uint64_t tolhp_ObjClose(uint64_t a1)
{
  v1 = 2370838535;
  v4 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v4) & 0x80000000) == 0)
  {
    dct_ObjClose(*(a1 + 32));
    dct_ObjClose(*(a1 + 24));
    dct_ObjClose(*(a1 + 16));
    heap_Free(*(v4 + 8), a1);
    return 0;
  }

  return v1;
}

uint64_t tolhp_ResetDcts(uint64_t a1)
{
  result = tolhp_ResetDct(a1, "nts_", (a1 + 16));
  if ((result & 0x80000000) == 0)
  {

    return tolhp_ResetDct(a1, "sxm_", (a1 + 24));
  }

  return result;
}

uint64_t tolhp_ResetDct(void *a1, uint64_t a2, uint64_t **a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = 2370838528;
  v8 = 0;
  v9 = 0;
  if (!a1)
  {
    return 2370838535;
  }

  if ((InitRsrcFunction(*a1, a1[1], &v8) & 0x80000000) != 0)
  {
    return 2370838535;
  }

  if (v8 && (paramc_ParamGet(*(v8 + 40), "langcode", &v9, 0) & 0x80000000) == 0)
  {
    __strcpy_chk();
    __strcat_chk();
    if (*a3)
    {
      v6 = dct_ObjReopen(*a3, v10);
    }

    else
    {
      v6 = dct_ObjOpen(v10, *a1, a1[1], a3);
    }

    if ((v6 & 0x80001FFF) == 0x80000001)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  return v3;
}

uint64_t tolhp_RewritePhonTextInLhp(uint64_t **a1, uint64_t a2)
{
  v76[1] = *MEMORY[0x1E69E9840];
  v59 = 0;
  v60 = 0;
  v2 = 2370838535;
  v58 = 0;
  if (a1 && a2)
  {
    v5 = bed_ObjOpen(*a1, a1[1], a2, 1020, &v60, 213);
    if ((v5 & 0x80000000) != 0 || (v5 = bed_ObjOpen(*a1, a1[1], a2, 1021, &v59, 213), (v5 & 0x80000000) != 0) || (v5 = datac_RequestBlock(a2, 1012, 1u, &v58), (v5 & 0x80000000) != 0))
    {
      v2 = v5;
    }

    else
    {
      if (v58)
      {
        v6 = *(v58 + 8);
      }

      else
      {
        v6 = 0;
      }

      v8 = v59;
      v7 = v60;
      v71 = 0;
      v70 = 0x2400000007;
      v62 = 0;
      if (!v60 || !v59)
      {
        v11 = 2370838535;
        goto LABEL_110;
      }

      v9 = bed_Goto(v59, 0);
      if ((v9 & 0x80000000) != 0)
      {
LABEL_109:
        v11 = v9;
        goto LABEL_110;
      }

      v10 = bed_GoForward(v8, bed_marker_IsOfType, &v70);
      if ((v10 & 0x1FFF) == 0x14)
      {
LABEL_14:
        v11 = 0;
        goto LABEL_110;
      }

      v11 = v10;
      if ((v10 & 0x80000000) == 0)
      {
        v11 = bed_GetpElem(v8, 0xFFFFu, &v62);
        if ((v11 & 0x80000000) == 0)
        {
          v12 = v62;
          if (v62)
          {
            while (1)
            {
              v61 = 1;
              if (*(v12 + 20) == 7)
              {
                v73 = 0;
                v72 = 0x3E700000007;
                v75 = 0;
                v76[0] = 0;
                v67 = 0;
                v66 = 0;
                v65 = 1;
                v74 = 0;
                *__dst = 0;
                v63 = 0;
                v9 = bed_GetpElem(v8, 0, v76);
                if ((v9 & 0x80000000) != 0)
                {
                  goto LABEL_109;
                }

                v9 = bed_GetpElem(v8, 0xFFFFu, &v75);
                if ((v9 & 0x80000000) != 0)
                {
                  goto LABEL_109;
                }

                v9 = bed_GetiElem(v8, &v67);
                if ((v9 & 0x80000000) != 0)
                {
                  goto LABEL_109;
                }

                v9 = bed_GetcElem(v8, &v66);
                if ((v9 & 0x80000000) != 0)
                {
                  goto LABEL_109;
                }

                if (v75 && *(v75 + 20) == 7)
                {
                  v13 = *(v75 + 40);
                  if (v13 == 43)
                  {
                    if (*(v75 + 48))
                    {
                      v14 = *(v75 + 56);
                      if ((v14 - 2) < 3)
                      {
                        v13 = v14 + 68;
LABEL_44:
                        v65 = 1;
                        bed_GoForward(v8, bed_marker_IsAt, &v65);
                        v20 = bed_GoForward(v8, bed_marker_IsOfType, &v72);
                        if ((v20 & 0x1FFF) == 0x14)
                        {
                          v74 = 0;
                        }

                        else
                        {
                          v11 = v20;
                          if ((v20 & 0x80000000) != 0)
                          {
                            break;
                          }

                          v9 = bed_GetpElem(v8, 0xFFFFu, &v74);
                          if ((v9 & 0x80000000) != 0)
                          {
                            goto LABEL_109;
                          }
                        }

                        v9 = bed_GetpElem(v7, 0, __dst);
                        if ((v9 & 0x80000000) != 0)
                        {
                          goto LABEL_109;
                        }

                        v9 = bed_GetcElem(v7, &v63);
                        if ((v9 & 0x80000000) != 0)
                        {
                          goto LABEL_109;
                        }

                        v21 = *(v75 + 32);
                        v22 = v21 - *(v76[0] + 32);
                        if (v74)
                        {
                          v23 = *(v74 + 32) - v21;
                        }

                        else
                        {
                          LOWORD(v23) = v63 - v22;
                        }

                        v28 = *__dst;
                        __src = 0;
                        v68 = 0;
                        if (!*__dst || (InitRsrcFunction(*a1, a1[1], &__src) & 0x80000000) != 0)
                        {
                          goto LABEL_117;
                        }

                        v55 = v22;
                        v29 = v22;
                        v30 = v28 + v22;
                        v31 = v29;
                        v56 = off_1F42D5930[v13 - 70];
                        v32 = 0;
                        v33 = v23;
                        if (v23)
                        {
                          while (utf8_BelongsToSet(0, v30, v32, v23))
                          {
                            if (v23 == ++v32)
                            {
                              LOWORD(v32) = v23;
                              break;
                            }
                          }
                        }

                        v34 = (v30 + v32);
                        v54 = v23;
                        v35 = v23 - v32;
                        v36 = (v23 - v32);
                        if (v36)
                        {
                          v52 = v35;
                          v53 = v31;
                          v37 = 0;
                          while (utf8_BelongsToSet(0, v34, v36 - 1 + v37, v36))
                          {
                            if (-v36 == --v37)
                            {
                              v35 = v52;
                              LOWORD(v38) = v52;
                              v31 = v53;
                              goto LABEL_80;
                            }
                          }

                          v38 = -v37;
                          v31 = v53;
                          v35 = v52;
                        }

                        else
                        {
                          LOWORD(v38) = 0;
                        }

LABEL_80:
                        v39 = (v35 - v38);
                        v40 = heap_Alloc(*(__src + 1), v39 + 1);
                        if (!v40)
                        {
                          v2 = 2370838538;
LABEL_117:
                          v11 = v2;
                          break;
                        }

                        v41 = v40;
                        memcpy(v40, v34, v39);
                        *(v41 + v39) = 0;
                        v11 = (v56)(a1, v41, 0, &v68);
                        if ((v11 & 0x80000000) != 0 || !v68)
                        {
                          goto LABEL_86;
                        }

                        v42 = heap_Alloc(*(__src + 1), ++v68);
                        if (!v42)
                        {
                          LOWORD(v57) = 0;
                          v11 = 2370838538;
                          goto LABEL_87;
                        }

                        v11 = (v56)(a1, v41, v42, &v68);
                        if ((v11 & 0x80000000) != 0)
                        {
LABEL_86:
                          v42 = 0;
                          LOWORD(v57) = 0;
                        }

                        else
                        {
                          v57 = Utf8_Utf8NbrOfSymbols(v42) - 1;
                        }

LABEL_87:
                        heap_Free(*(__src + 1), v41);
                        if ((v11 & 0x80000000) != 0)
                        {
                          break;
                        }

                        v9 = bed_Remove(v7, v55, v54);
                        if ((v9 & 0x80000000) != 0)
                        {
                          goto LABEL_109;
                        }

                        if (v57)
                        {
                          v9 = bed_Goto(v7, v31);
                          if ((v9 & 0x80000000) != 0)
                          {
                            goto LABEL_109;
                          }

                          v9 = bed_Insert(v7, v42, v57);
                          if ((v9 & 0x80000000) != 0)
                          {
                            goto LABEL_109;
                          }
                        }

                        if (v42)
                        {
                          v9 = tolhp_lhp_ObjClose(a1, v42);
                          if ((v9 & 0x80000000) != 0)
                          {
                            goto LABEL_109;
                          }
                        }

                        v43 = v75;
                        *(v76[0] + 36) += v57 - v33;
                        *(v43 + 40) = 43;
                        v9 = bed_Goto(v8, v67);
                        if ((v9 & 0x80000000) != 0)
                        {
                          goto LABEL_109;
                        }

                        v44 = v66;
                        v45 = v67 + 1;
                        if (v66 > (v67 + 1))
                        {
                          v46 = v76[0];
                          v47 = (v75 + 100);
                          do
                          {
                            v48 = *(v47 - 1);
                            v49 = *(v46 + 32);
                            if (v49 + v31 <= v48)
                            {
                              if (v49 + (v31 + v33) <= v48)
                              {
                                *(v47 - 1) = v48 + v57 - v33;
                              }

                              else
                              {
                                *(v47 - 1) = v49 + v31;
                                if (*(v47 - 4) == 1)
                                {
                                  *v47 = v57;
                                }
                              }
                            }

                            ++v45;
                            v47 += 16;
                          }

                          while (v44 > v45);
                        }
                      }
                    }
                  }

                  else if ((v13 - 73) >= 0xFFFFFFFD)
                  {
                    goto LABEL_44;
                  }
                }
              }

              else if (v6)
              {
                __dst[0] = 0;
                v15 = v6 + *(v12 + 40);
                MarkerArgStr = marker_getMarkerArgStr(1u);
                if (!strcmp(v15, MarkerArgStr))
                {
                  v72 = 0;
                  __src = 0;
                  if ((InitRsrcFunction(*a1, a1[1], &v72) & 0x80000000) == 0 && v72 && (paramc_ParamGet(*(v72 + 40), "langcode", &__src, 0) & 0x80000000) == 0)
                  {
                    strncpy(__dst, __src, 4uLL);
LABEL_41:
                    strcpy(v76, "nts_");
                    __strcat_chk();
                    v18 = a1[2];
                    v19 = v18 ? dct_ObjReopen(v18, v76) : dct_ObjOpen(v76, *a1, a1[1], a1 + 2);
                    v11 = v19;
                    if ((v19 & 0x80000000) != 0 && (v19 & 0x1FFF) != 1)
                    {
                      break;
                    }

                    strcpy(&v75, "sxm_");
                    __strcat_chk();
                    v24 = a1[3];
                    v25 = v24 ? dct_ObjReopen(v24, &v75) : dct_ObjOpen(&v75, *a1, a1[1], a1 + 3);
                    v11 = v25;
                    if ((v25 & 0x80000000) != 0 && (v25 & 0x1FFF) != 1)
                    {
                      break;
                    }

                    strcpy(&v74, "ipa_");
                    __strcat_chk();
                    v26 = a1[4];
                    v27 = v26 ? dct_ObjReopen(v26, &v74) : dct_ObjOpen(&v74, *a1, a1[1], a1 + 4);
                    v11 = v27;
                    if ((v27 & 0x80000000) != 0 && (v27 & 0x1FFF) != 1)
                    {
                      break;
                    }
                  }
                }

                else
                {
                  v17 = 0;
                  while (*(v15 + v17))
                  {
                    __dst[v17] = *(v15 + v17);
                    if (++v17 == 3)
                    {
                      if (*(v15 + 3))
                      {
                        break;
                      }

                      __dst[3] = 0;
                      goto LABEL_41;
                    }
                  }
                }
              }

              v61 = 1;
              bed_GoForward(v8, bed_marker_IsAt, &v61);
              v50 = bed_GoForward(v8, bed_marker_IsOfType, &v70);
              if ((v50 & 0x1FFF) == 0x14)
              {
                goto LABEL_14;
              }

              v11 = v50;
              if ((v50 & 0x80000000) == 0)
              {
                v11 = bed_GetpElem(v8, 0xFFFFu, &v62);
                if ((v11 & 0x80000000) == 0)
                {
                  v12 = v62;
                  if (v62)
                  {
                    continue;
                  }
                }
              }

              break;
            }
          }
        }
      }

LABEL_110:
      v2 = v11;
    }

    if (v59)
    {
      bed_ObjClose(v59);
    }

    if (v60)
    {
      bed_ObjClose(v60);
    }
  }

  return v2;
}

uint64_t tolhp_lhp_ObjClose(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  if ((InitRsrcFunction(*a1, *(a1 + 8), &v4) & 0x80000000) != 0)
  {
    return 2370838535;
  }

  heap_Free(*(v4 + 8), a2);
  return 0;
}

uint64_t tolhp_RewriteNts(uint64_t a1, char *a2, char *a3, _WORD *a4)
{
  if (a1)
  {
    return tolhp_Rewrite(*(a1 + 16), a2, a3, a4);
  }

  else
  {
    return 2370838535;
  }
}

uint64_t tolhp_RewriteSxms(uint64_t a1, char *a2, char *a3, _WORD *a4)
{
  if (a1)
  {
    return tolhp_Rewrite(*(a1 + 24), a2, a3, a4);
  }

  else
  {
    return 2370838535;
  }
}

uint64_t tolhp_RewriteIpa(uint64_t a1, char *a2, char *a3, _WORD *a4)
{
  if (a1)
  {
    return tolhp_Rewrite(*(a1 + 32), a2, a3, a4);
  }

  else
  {
    return 2370838535;
  }
}

uint64_t tolhp_Rewrite(void *a1, char *__s, char *a3, _WORD *a4)
{
  if (a3)
  {
    *a3 = 0;
  }

  else
  {
    *a4 = 0;
  }

  v8 = strlen(__s);
  result = 0;
  if (a1)
  {
    v10 = v8;
    if (v8)
    {
      if (__s)
      {
        for (i = __s; ; ++i)
        {
          if (*i == 32)
          {
            *i = 17;
          }

          else if (!*i)
          {
            break;
          }
        }
      }

      v12 = 0;
      while (1)
      {
        __sa = 0;
        LongestMatch = dct_FindLongestMatch(a1, &__s[v12], &__sa);
        if (LongestMatch < 1)
        {
          result = 0;
          *a4 = 0;
          return result;
        }

        v14 = LongestMatch;
        v15 = strlen(__sa);
        if (a3)
        {
          if (v15 + strlen(a3) + 1 > *a4)
          {
            return 2370838537;
          }

          strcat(a3, __sa);
        }

        else
        {
          *a4 += v15;
        }

        v12 += v14;
        if (v12 >= v10)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t dct_ObjOpen(const char *a1, _WORD *a2, int a3, uint64_t **a4)
{
  v19 = 0;
  v4 = 2370838535;
  if (!a4)
  {
    return 2370838535;
  }

  v18 = 0;
  if ((InitRsrcFunction(a2, a3, &v19) & 0x80000000) != 0)
  {
    return 2370838535;
  }

  *a4 = 0;
  v7 = heap_Alloc(*(v19 + 8), 40);
  v8 = 2370838538;
  if (v7)
  {
    v9 = v7;
    *(v7 + 32) = 0;
    *v7 = 0u;
    *(v7 + 16) = 0u;
    v10 = v19;
    *v7 = v19;
    v11 = *(v10 + 8);
    v12 = strlen(a1);
    v13 = heap_Alloc(v11, (v12 + 1));
    v9[1] = v13;
    if (!v13)
    {
      goto LABEL_13;
    }

    strcpy(v13, a1);
    v20 = 0;
    if (*v9)
    {
      Object = objc_GetObject(*(*v9 + 48), "FE_DCTLKP", &v20);
      if ((Object & 0x80000000) == 0)
      {
        v15 = v20;
        v16 = *(v20 + 8);
        v9[2] = v16;
        *(v9 + 3) = *(v15 + 16);
        v8 = (*(v16 + 72))(v9[3], v9[4], a1, &v18);
        if ((v8 & 0x80000000) == 0)
        {
          if (v18)
          {
            *a4 = v9;
            return v8;
          }

          v8 = 2370838529;
        }

LABEL_13:
        dct_ObjClose(v9);
        return v8;
      }

      v4 = Object;
    }

    v8 = v4;
    goto LABEL_13;
  }

  return v8;
}

uint64_t dct_ObjClose(uint64_t *a1)
{
  result = 2370838535;
  if (a1)
  {
    v3 = *a1;
    if (*a1)
    {
      if (a1[2])
      {
        objc_ReleaseObject(*(v3 + 48), "FE_DCTLKP");
        a1[2] = 0;
        a1[3] = 0;
        *(a1 + 8) = 0;
        v3 = *a1;
      }

      v4 = a1[1];
      if (v4)
      {
        heap_Free(*(v3 + 8), v4);
        v3 = *a1;
      }

      heap_Free(*(v3 + 8), a1);
      return 0;
    }
  }

  return result;
}

uint64_t dct_ObjReopen(void *a1, const char *a2)
{
  v2 = 2370838535;
  if (a1 && a2)
  {
    v5 = a1[1];
    v6 = strlen(v5);
    v7 = strlen(a2);
    if (v6 < v7)
    {
      v8 = heap_Realloc(*(*a1 + 8), v5, (v7 + 1));
      if (!v8)
      {
        return 2370838538;
      }

      v5 = v8;
      a1[1] = v8;
    }

    strcpy(v5, a2);
    return 0;
  }

  return v2;
}

uint64_t dct_FindLongestMatch(void *a1, char *__s, void *a3)
{
  result = 0;
  v17 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  if (a1 && __s && a3)
  {
    *a3 = 0;
    v6 = strlen(__s);
    if (v6)
    {
      if (v6 <= 0xAu)
      {
        v7 = v6;
      }

      else
      {
        v7 = 10;
      }

      v8 = v7;
      v9 = v7;
      __memmove_chk();
      if (v8)
      {
        v10 = v9;
        while (1)
        {
          v16[v10] = 0;
          v13 = 1;
          if (((*(a1[2] + 96))(a1[3], a1[4], a1[1], v16, &v14, &v13, &v15) & 0x80000000) != 0)
          {
            break;
          }

          v11 = v10 - 1;
          if (v10 != 1)
          {
            --v10;
            if (!v13)
            {
              continue;
            }
          }

          if (!v13)
          {
            break;
          }

LABEL_20:
          *a3 = *v14;
          return (v11 + 1);
        }
      }

      if ((paramc_ParamGetStr(*(*a1 + 40), "clcpppipelinemode", &v12) & 0x80000000) == 0)
      {
        __memmove_chk();
        if (v9)
        {
          while (1)
          {
            v16[v9] = 0;
            v13 = 0;
            if (((*(a1[2] + 96))(a1[3], a1[4], a1[1], v16, &v14, &v13, &v15) & 0x80000000) != 0)
            {
              break;
            }

            v11 = v9 - 1;
            if (v9 >= 2)
            {
              --v9;
              if (!v13)
              {
                continue;
              }
            }

            if (!v13)
            {
              return 0;
            }

            goto LABEL_20;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t textpar_AllTextProcessed(uint64_t a1)
{
  v3 = 0;
  if (!a1)
  {
    return 1;
  }

  v1 = 1;
  if ((datac_RequestBlock(*(a1 + 16), 1010, 1u, &v3) & 0x80000000) == 0)
  {
    return *(v3 + 20);
  }

  return v1;
}

uint64_t textpar_ClearOutputDataContainers(uint64_t *a1)
{
  v7 = 0;
  if (!a1)
  {
    return 2368741383;
  }

  v2 = datac_RequestBlock(a1[2], 1011, 1u, &v7);
  if ((v2 & 0x80000000) == 0)
  {
    v3 = v7;
    if (*(v7 + 16) >= 2u)
    {
      v4 = (*(v7 + 8) + 112);
      v5 = 1;
      do
      {
        if (*v4)
        {
          heap_Free(*(*a1 + 8), *v4);
          *v4 = 0;
          v3 = v7;
        }

        ++v5;
        v4 += 8;
      }

      while (v5 < *(v3 + 16));
    }

    *(v3 + 16) = 0;
  }

  return v2;
}

uint64_t textpar_WriteTextAndMarkers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = 0;
  v31 = 0;
  v5 = 2368741376;
  if (!a1)
  {
    return 2368741383;
  }

  v32 = 0;
  v11 = (*(*(a1 + 24) + 136))(a2, a3, &v32);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  marker_TraceMrk(211, "PP_TEXT_PARSER", *(a1 + 112), *a1, *(a1 + 16), 1011, "start textpar_WriteTextAndMarkers()", 0, 0, 0);
  marker_TraceTxt(211, "PP_TEXT_PARSER", *(a1 + 112), *a1, *(a1 + 16), 1010, "start textpar_WriteTextAndMarkers()");
  v11 = datac_RequestBlock(*(a1 + 16), 1010, 1u, &v31);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  v12 = *(v31 + 16);
  if (*(v31 + 16))
  {
    v11 = (*(*(a1 + 24) + 104))(a2, a3, *(v31 + 8), *(v31 + 2) * v12);
    if ((v11 & 0x80000000) != 0)
    {
      return v11;
    }

    *(v31 + 16) = 0;
  }

  if ((datac_RequestBlock(*(a1 + 16), 1012, 1u, &v31) & 0x80000000) != 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v31 + 8);
  }

  v11 = datac_RequestBlock(*(a1 + 16), 1011, 1u, &v30);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  v14 = *(v30 + 16);
  if (*(v30 + 16))
  {
    v15 = *(v30 + 8);
    if (*(v15 + 20) == 0x4000)
    {
      if (v12)
      {
        v16 = 0;
        v32 = *(v15 + 32) - v32;
      }

      else
      {
        v17 = marker_CheckForEmptyMarkers(v13, *(a1 + 76), v15, v14, 0, 0, 0);
        v16 = v17 == 1;
        v14 = *(v30 + 16);
        v32 = *(v15 + 32) - v32;
        if (!v14)
        {
          if (v17 == 1)
          {
            goto LABEL_31;
          }

          LODWORD(v25) = 0;
LABEL_30:
          marker_TraceMrk(211, "PP_TEXT_PARSER", *(a1 + 112), *a1, *(a1 + 16), 1011, "at end()", 1, v15, v25);
          v11 = (*(*(a1 + 24) + 104))(a4, a5, v15, (v25 << 6));
          if ((v11 & 0x80000000) == 0)
          {
LABEL_31:
            v26 = textpar_ClearOutputDataContainers(a1);
            return v26 & (v26 >> 31);
          }

          return v11;
        }
      }

      v29 = v16;
      v18 = v14;
      v19 = (v15 + 32);
      do
      {
        *v19 -= v32;
        v19 += 16;
        --v18;
      }

      while (v18);
      v20 = 0;
      v21 = (v15 + 40);
      do
      {
        if (marker_hasNonConstCharPtrArg(*(v21 - 5)))
        {
          v22 = *v21;
          if (v13)
          {
            v23 = v22 == 0xFFFFFFFFLL;
          }

          else
          {
            v23 = 1;
          }

          v24 = v13 + v22;
          if (v23)
          {
            v24 = 0;
          }

          *v21 = v24;
        }

        ++v20;
        v25 = *(v30 + 16);
        v21 += 8;
      }

      while (v20 < v25);
      if (!v12)
      {
        if (v25 == 1)
        {
          v28 = v29;
          if (*(v15 + 20) == 0x4000)
          {
            v28 = 1;
          }

          if (v28)
          {
            goto LABEL_31;
          }

          LODWORD(v25) = 1;
        }

        else if (v29)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_30;
    }
  }

  return v5;
}

uint64_t textpar_CheckForEOF(void *a1, _DWORD *a2, _DWORD *a3)
{
  v9 = 0;
  result = (*(a1[3] + 144))(a1[4], a1[5], &v9 + 4, &v9);
  if ((result & 0x80000000) == 0)
  {
    v6 = v9;
    v7 = HIDWORD(v9);
    if (a2 && a3)
    {
      *a2 = HIDWORD(v9);
      *a3 = v6;
    }

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = v6 == 0;
    }

    if (v8)
    {
      return result;
    }

    else
    {
      return 2368741399;
    }
  }

  return result;
}

uint64_t textpar_ClassOpen(_WORD *a1, uint64_t a2, uint64_t **a3)
{
  v9 = 0;
  if ((InitRsrcFunction(a1, a2, &v9) & 0x80000000) != 0)
  {
    return 2368741383;
  }

  v6 = heap_Calloc(*(v9 + 8), 1, 16);
  if (!v6)
  {
    return 10;
  }

  *v6 = v9;
  *a3 = v6;
  v7 = escseqs_ClassOpen(a1, a2, v6 + 1);
  if ((v7 & 0x80000000) != 0)
  {
    textpar_ClassClose(*a3);
  }

  return v7;
}

uint64_t textpar_ClassClose(uint64_t *a1)
{
  if (!a1)
  {
    return 2368741383;
  }

  v2 = *a1;
  v3 = escseqs_ClassClose(a1[1]);
  if ((v3 & 0x80000000) == 0)
  {
    heap_Free(*(v2 + 8), a1);
  }

  return v3;
}

uint64_t textpar_ObjOpen(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t **a5, int a6)
{
  v26 = 0;
  v24 = 0;
  v6 = 2368741383;
  if (a1)
  {
    if (a5)
    {
      v25 = 0uLL;
      if ((InitRsrcFunction(a2, a3, &v26) & 0x80000000) == 0)
      {
        *a5 = 0;
        v13 = heap_Alloc(*(v26 + 8), 120);
        if (v13)
        {
          v14 = v13;
          *v13 = 0u;
          *(v13 + 16) = 0u;
          *(v13 + 64) = 0u;
          *(v13 + 80) = 0u;
          *(v13 + 112) = 0;
          *(v13 + 96) = 0u;
          *(v13 + 32) = 0u;
          *(v13 + 48) = 0u;
          v15 = v26;
          *v13 = v26;
          *(v13 + 8) = a1;
          *(v13 + 24) = a4;
          *(v13 + 88) = 0;
          v16 = (v13 + 88);
          *(v13 + 76) = 0;
          *(v13 + 116) = a6;
          if (paramc_ParamGetUInt(*(v15 + 40), "ppmaxpcreframeblocks", &v24) < 0)
          {
            v17 = 30;
          }

          else
          {
            v17 = v24;
          }

          if (paramc_ParamGetUInt(*(v26 + 40), "ppnumframesinblock", &v24) < 0)
          {
            v18 = 50;
          }

          else
          {
            v18 = v24;
          }

          v19 = extdata_ObjOpen(a2, a3, v16, 211);
          if ((v19 & 0x80000000) != 0 || (v14[12] = 0, *(v14 + 26) = 0, v19 = nuance_pcre_ObjOpen(a2, a3, &v25), (v19 & 0x80000000) != 0) || (v19 = nuance_pcre_Init(v25, *(&v25 + 1), v17, v18), (v19 & 0x80000000) != 0) || (*(v14 + 6) = v25, v19 = escseqs_ObjOpen(*(v14[1] + 8), a2, a3, v14[12], v14[13], v14 + 10), (v19 & 0x80000000) != 0) || (v19 = datac_ObjOpen(a2, a3, v14 + 2, 211), (v19 & 0x80000000) != 0))
          {
            v6 = v19;
          }

          else
          {
            v20 = &word_1C37BEA3A;
            v21 = 4;
            while (1)
            {
              datac_RegisterBlock(v14[2], *(v20 - 2), *(v20 - 1), *v20);
              v6 = v22;
              if ((v22 & 0x80000000) != 0)
              {
                break;
              }

              v20 += 3;
              if (!--v21)
              {
                *a5 = v14;
                return v6;
              }
            }
          }

          textpar_ObjClose(v14);
        }

        else
        {
          return 2368741386;
        }
      }
    }
  }

  return v6;
}

uint64_t textpar_ObjClose(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[2];
  if (v3)
  {
    datac_ObjClose(v3);
    a1[2] = 0;
  }

  v4 = a1[11];
  if (v4)
  {
    extdata_ObjClose(v4);
    a1[11] = 0;
  }

  v5 = a1[10];
  if (v5)
  {
    escseqs_ObjClose(v5);
  }

  NullHandle = safeh_GetNullHandle();
  if (!safeh_HandlesEqual(a1[12], a1[13], NullHandle, v7))
  {
    nuance_pcre_DeInit(a1[12], a1[13]);
    nuance_pcre_ObjClose(a1[12], a1[13]);
    a1[12] = 0;
    *(a1 + 26) = 0;
  }

  ppParam_ClearAllPPParameters(v2);
  heap_Free(*(v2 + 8), a1);
  return 0;
}

uint64_t textpar_ObjReopen(_WORD *a1, uint64_t a2, uint64_t *a3)
{
  v3 = 2368741383;
  v12 = 0;
  __s1 = 0;
  if (a3)
  {
    v11 = 0;
    if ((InitRsrcFunction(a1, a2, &v12) & 0x80000000) == 0)
    {
      v7 = v12;
      *a3 = v12;
      if ((paramc_ParamGetStr(*(v7 + 40), "component_stop_not_reset", &__s1) & 0x80000000) == 0 && __s1 && !strcmp(__s1, "yes"))
      {
        escseqs_SetPosInOut(a3[10], 0, 0);
        paramc_ParamSetStr(*(v12 + 40), "component_stop_not_reset", "");
      }

      v8 = extdata_FreeData(a3[11]);
      if ((v8 & 0x80000000) != 0 || (escseqs_GetPosInOut(a3[10], &v11 + 1, &v11), a3[10]) && (v8 = escseqs_ObjClose(a3[10]), (v8 & 0x80000000) != 0))
      {
        v3 = v8;
      }

      else
      {
        v3 = escseqs_ObjOpen(*(a3[1] + 8), a1, a2, a3[12], a3[13], a3 + 10);
        if ((v3 & 0x80000000) == 0)
        {
          escseqs_SetPosInOut(a3[10], SHIDWORD(v11), v11);
          return v3;
        }
      }

      textpar_ObjClose(a3);
    }
  }

  return v3;
}

uint64_t textpar_ProcessStart(uint64_t a1, uint64_t a2, int a3)
{
  v7 = 0;
  if (!a1)
  {
    return 2368741383;
  }

  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  *(a1 + 112) = log_GetLogLevel(*(*a1 + 32)) > 4;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  result = escseqs_ProcessStart(*(a1 + 80), (a1 + 76));
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamSetUInt(*(*a1 + 40), "ppspellpausevalue", *(a1 + 76));
    if ((result & 0x80000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        result = datac_RequestBlock(*(a1 + 16), aMETA[v5], 1u, &v7);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        v5 += 3;
        v6 = v7;
        *(v7 + 16) = 0;
        *(v6 + 20) = 0;
        if (v5 == 12)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t textpar_Process(uint64_t a1)
{
  if (a1)
  {
    if (!*(a1 + 116) || (*(a1 + 56) = 0, *(a1 + 64) = 0, *(a1 + 72) = 0, v2 = escseqs_ProcessStart(*(a1 + 80), (a1 + 76)), (v2 & 0x80000000) == 0))
    {
      v39 = 0;
      if (*(a1 + 56))
      {
        for (i = 0; i != 3; ++i)
        {
          v4 = datac_RequestBlock(*(a1 + 16), aTAG[i], 1u, &v39);
          if (i != 2 && (v4 & 0x80000000) == 0)
          {
            *(v39 + 16) = 0;
          }
        }

        goto LABEL_23;
      }

      v2 = datac_RequestBlock(*(a1 + 16), 1011, 1u, &v39);
      if ((v2 & 0x80000000) == 0)
      {
        v6 = v39;
        if (*(v39 + 16) >= 2u)
        {
          v7 = (*(v39 + 8) + 112);
          v8 = 1;
          do
          {
            if (*v7)
            {
              heap_Free(*(*a1 + 8), *v7);
              *v7 = 0;
              v6 = v39;
            }

            ++v8;
            v7 += 8;
          }

          while (v8 < *(v6 + 16));
        }

        for (j = 0; j != 4; ++j)
        {
          v10 = datac_RequestBlock(*(a1 + 16), aAllTAG[j], 1u, &v39);
          if (j != 3 && (v10 & 0x80000000) == 0)
          {
            *(v39 + 16) = 0;
          }
        }

LABEL_23:
        v2 = textpar_CheckForEOF(a1, 0, 0);
        if ((v2 & 0x80000000) == 0)
        {
          v11 = "entering textpar_loc_GetTextBlock(bBlockHasBeenRead=%d,bBlockMoreTextRequest=%d,bMoreTextRequest=%d)";
          v12 = "AFTER textpar_loc_GetTextBlock";
          v13 = "BEFORE escseqs_Process TEXTPAR_OUT_MRK_BLOCK";
          v14 = "BEFORE escseqs_Process TEXTPAR_OUT_TXT_BLOCK";
          v15 = "AFTER escseqs_Process TEXTPAR_OUT_MRK_BLOCK";
          while (1)
          {
            v39 = 0;
            log_OutText(*(*a1 + 32), "PP_TEXT_PARSER", 5, 0, v11, *(a1 + 56), *(a1 + 72), *(a1 + 68));
            if (!*(a1 + 56) || !*(a1 + 72) && *(a1 + 68) == 1)
            {
              __n = 0;
              v16 = *(a1 + 60);
              v2 = (*(*(a1 + 24) + 88))(*(a1 + 32), *(a1 + 40), a1 + 48, a1 + 60);
              if ((v2 & 0x80000000) != 0)
              {
                return v2;
              }

              *(a1 + 56) = 1;
              log_OutText(*(*a1 + 32), "PP_TEXT_PARSER", 5, 0, "pfReadDirectStart returns cTextBytesInStream %u bytes", *(a1 + 60));
              UInt = paramc_ParamGetUInt(*(*a1 + 40), "ppresetlen", &__n);
              if ((UInt & 0x1FFF) == 0x14)
              {
                v18 = 0;
                LODWORD(__n) = 0;
              }

              else
              {
                v5 = UInt;
                if ((UInt & 0x80000000) != 0)
                {
                  return v5;
                }

                v18 = __n;
              }

              log_OutText(*(*a1 + 32), "PP_TEXT_PARSER", 5, 0, "SSFT_PARAMC_PP_RESETLEN len is %u bytes", v18);
              if (__n)
              {
                v2 = (*(*(a1 + 24) + 136))(*(a1 + 32), *(a1 + 40), &__n + 4);
                if ((v2 & 0x80000000) != 0)
                {
                  return v2;
                }

                log_OutText(*(*a1 + 32), "PP_TEXT_PARSER", 5, 0, "pfGetPosition is %u bytes - sync marker position", HIDWORD(__n));
                if (!*(a1 + 68))
                {
                  v2 = escseqs_SetMarkerSyncPos(*(a1 + 80), SHIDWORD(__n));
                  if ((v2 & 0x80000000) != 0)
                  {
                    return v2;
                  }
                }
              }

              else
              {
                v2 = escseqs_SetReset(*(a1 + 80));
                if ((v2 & 0x80000000) != 0)
                {
                  return v2;
                }
              }

              if (*(a1 + 68) == 1 && v16 && v16 == *(a1 + 60))
              {
                *(a1 + 72) = 1;
              }

              else
              {
                *(a1 + 68) = 0;
              }
            }

            v2 = datac_RequestBlock(*(a1 + 16), 1000, 1u, &v39);
            if ((v2 & 0x80000000) != 0)
            {
              return v2;
            }

            v19 = *(a1 + 60);
            if (*(v39 + 20))
            {
              break;
            }

            v20 = *(a1 + 64);
            v21 = v19 - v20;
            if (v19 == v20)
            {
              if (!*(a1 + 72) && !*(a1 + 68))
              {
                *(a1 + 68) = 1;
                if (!v19)
                {
                  return 2368743424;
                }

                if (!*(a1 + 116))
                {
                  return 2368743424;
                }

                v2 = (*(*(a1 + 24) + 96))(*(a1 + 32), *(a1 + 40));
                if ((v2 & 0x80000000) == 0)
                {
                  return 2368743424;
                }

                return v2;
              }

              *(v39 + 20) = 1;
            }

            else
            {
              v22 = v11;
              v23 = v15;
              v24 = v14;
              v25 = v13;
              v26 = v12;
              if (*(a1 + 116))
              {
                v27 = v19 - v20;
              }

              else
              {
                v27 = 128;
              }

              v2 = datac_RequestBlock(*(a1 + 16), 1000, v27, &v39);
              if ((v2 & 0x80000000) != 0)
              {
                return v2;
              }

              v28 = v39;
              if (*(v39 + 16))
              {
                v2 = datac_RequestBlock(*(a1 + 16), 1000, (*(v39 + 16) + v27), &v39);
                if ((v2 & 0x80000000) != 0)
                {
                  return v2;
                }

                v28 = v39;
              }

              v29 = *(v28 + 8);
              if (v21 <= v27)
              {
                HIDWORD(__n) = v21;
              }

              else
              {
                HIDWORD(__n) = v27;
                utf8_GetPreviousValidUtf8Offset(*(a1 + 48) + *(a1 + 64), &__n + 1);
                log_OutText(*(*a1 + 32), "PP_TEXT_PARSER", 5, 0, "adjust bytes read to align with character boundary (IN=%d, OUT=%d)", v27, HIDWORD(__n));
                v28 = v39;
                v21 = HIDWORD(__n);
              }

              v12 = v26;
              memcpy((v29 + *(v28 + 16)), (*(a1 + 48) + *(a1 + 64)), v21);
              if (!utf8_CheckValid(v29 + *(v39 + 16), v21))
              {
                log_OutPublic(*(*a1 + 32), "PP_TEXT_PARSER", 1933, "%s%s", "Invalid UTF-8 character sequence discovered", (v29 + *(v39 + 16)));
                return 2368741637;
              }

              v13 = v25;
              v30 = WORD2(__n);
              *(a1 + 64) += HIDWORD(__n);
              *(v39 + 16) += v30;
              v14 = v24;
              v15 = v23;
              v11 = v22;
            }

            if (log_HasTraceTuningDataSubscriber(*(*a1 + 32)) && !*(a1 + 68))
            {
              log_OutTraceTuningDataBinary(*(*a1 + 32), 32, "", "text/plain;charset=utf-8", *(a1 + 48), *(a1 + 60));
            }

            if (*(a1 + 116) == 1)
            {
              *(*(a1 + 48) + *(a1 + 64)) = 0;
              v2 = paramc_ParamSetStr(*(*a1 + 40), "rettt_rewritten_text", *(a1 + 48));
              if ((v2 & 0x80000000) != 0)
              {
                return v2;
              }
            }

            marker_TraceTxt(211, "PP_TEXT_PARSER", *(a1 + 112), *a1, *(a1 + 16), 1000, v12);
            marker_TraceMrk(211, "PP_TEXT_PARSER", *(a1 + 112), *a1, *(a1 + 16), 1011, v13, 0, 0, 0);
            marker_TraceTxt(211, "PP_TEXT_PARSER", *(a1 + 112), *a1, *(a1 + 16), 1010, v14);
            v5 = escseqs_Process(*(a1 + 80), *(a1 + 16));
            marker_TraceMrk(211, "PP_TEXT_PARSER", *(a1 + 112), *a1, *(a1 + 16), 1011, v15, 0, 0, 0);
            marker_TraceTxt(211, "PP_TEXT_PARSER", *(a1 + 112), *a1, *(a1 + 16), 1010, "AFTER escseqs_Process TEXTPAR_OUT_TXT_BLOCK");
            if ((v5 & 0x1FFF) != 9)
            {
              if ((v5 & 0x80000000) != 0)
              {
                return v5;
              }

              v39 = 0;
              v2 = datac_RequestBlock(*(a1 + 16), 1010, 1u, &v39);
              if ((v2 & 0x80000000) == 0)
              {
                if (*(v39 + 16) && *(a1 + 112) == 1)
                {
                  if (*(v39 + 16) >= 0x400u)
                  {
                    v31 = 1024;
                  }

                  else
                  {
                    v31 = *(v39 + 16);
                  }

                  v32 = heap_Calloc(*(*a1 + 8), 1, (v31 + 1));
                  if (!v32)
                  {
                    return 2368741386;
                  }

                  v33 = v32;
                  strncpy(v32, *(v39 + 8), v31)[v31] = 0;
                  v34 = "";
                  if (*(v39 + 16))
                  {
                    v34 = v33;
                  }

                  log_OutText(*(*a1 + 32), "PP_TEXT_PARSER", 5, 0, "(Txt) (text processed) (tag=%d) len=%d (UTF8 *) %s", 1010, *(v39 + 16), v34);
                  heap_Free(*(*a1 + 8), v33);
                }

                v35 = *(a1 + 16);
                v39 = 0;
                v2 = datac_RequestBlock(v35, 1011, 1u, &v39);
                if ((v2 & 0x80000000) == 0)
                {
                  v2 = marker_loc_FilterSyncMarkers(v39);
                  if ((v2 & 0x80000000) == 0)
                  {
                    if (!*(a1 + 116))
                    {
                      return 0;
                    }

                    v2 = (*(*(a1 + 24) + 96))(*(a1 + 32), *(a1 + 40), *(a1 + 60));
                    if ((v2 & 0x80000000) == 0)
                    {
                      return 0;
                    }
                  }
                }
              }

              return v2;
            }
          }

          if (!v19 || (v2 = (*(*(a1 + 24) + 96))(*(a1 + 32), *(a1 + 40)), (v2 & 0x80000000) == 0))
          {
            v36 = ppParam_ClearAllPPParameters(*a1);
            if (v36 < 0)
            {
              return v36;
            }

            else
            {
              return 2368741399;
            }
          }
        }
      }
    }

    return v2;
  }

  return 2368741383;
}