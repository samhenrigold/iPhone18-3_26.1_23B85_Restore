uint64_t isUmlaut(const char *a1, int a2, unsigned __int8 **a3, unsigned int a4, _WORD *a5)
{
  if (!a4)
  {
    return 0;
  }

  v9 = 0;
  v10 = a4;
  while (1)
  {
    v11 = Utf8_LengthInBytes(*a3, 1);
    if (a2 == v11 && !cstdlib_strncmp(a1, *a3, v11))
    {
      break;
    }

    ++v9;
    a3 += 2;
    if (v10 == v9)
    {
      return 0;
    }
  }

  *a5 = v9;
  return 1;
}

uint64_t crf_mde_seg_concat_strings(uint64_t a1, uint64_t a2, char **a3)
{
  if (*(a2 + 8))
  {
    v6 = 0;
    LODWORD(v7) = 0;
    do
    {
      v7 = v7 + cstdlib_strlen(*(*a2 + 16 * v6++)) + 2;
    }

    while (*(a2 + 8) > v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = heap_Calloc(*(a1 + 8), 1, v7);
  *a3 = v8;
  if (v8)
  {
    if (*(a2 + 8))
    {
      v9 = 0;
      v10 = 0;
      do
      {
        cstdlib_strcat(*a3, *(*a2 + 16 * v10));
        v11 = *(a2 + 8);
        if (v11 - 1 > v9)
        {
          cstdlib_strcat(*a3, " ");
          v11 = *(a2 + 8);
        }

        v9 = ++v10;
      }

      while (v11 > v10);
    }

    return 0;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
    return 2310021130;
  }
}

uint64_t crf_mde_seg_set_param_value(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, _WORD *a5, int *a6, int *a7, _DWORD *a8)
{
  v15 = (a2 + a3);
  if (!cstdlib_strcmp(v15, "nbest"))
  {
    v18 = (a2 + a4);
    *a8 = cstdlib_atoi(v18);
    return log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "set mde param, %s: %s", v15, v18);
  }

  if (!cstdlib_strcmp(v15, "padding"))
  {
    v18 = (a2 + a4);
    *a5 = cstdlib_atoi(v18);
    return log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "set mde param, %s: %s", v15, v18);
  }

  if (!cstdlib_strcmp(v15, "annotation"))
  {
    result = cstdlib_strcmp((a2 + a4), "BMES");
    if (result)
    {
      result = cstdlib_strcmp((a2 + a4), "BI");
      if (result)
      {
        return result;
      }

      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    *a7 = v19;
    return result;
  }

  result = cstdlib_strcmp(v15, "type");
  if (!result)
  {
    result = cstdlib_strcmp((a2 + a4), "char");
    if (!result)
    {
      v17 = 1;
      goto LABEL_18;
    }

    result = cstdlib_strcmp((a2 + a4), "morpheme");
    if (!result)
    {
      v17 = 2;
LABEL_18:
      *a6 = v17;
    }
  }

  return result;
}

uint64_t crf_mde_seg_set_featureparam_value(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, char **a5)
{
  v9 = (a2 + a3);
  if (cstdlib_strcmp(v9, "isvowel"))
  {
    return 0;
  }

  v10 = *(a1 + 8);
  v11 = (a2 + a4);
  v12 = cstdlib_strlen(v11);
  v13 = heap_Calloc(v10, 1, v12 + 1);
  *a5 = v13;
  if (v13)
  {
    cstdlib_strcpy(v13, v11);
    log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "set mde featureparam, %s: %s", v9, v11);
    return 0;
  }

  log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
  return 2310021130;
}

uint64_t oneword_posparser_Open(void *a1)
{
  v14 = 0;
  *(a1 + 501) = 0;
  *&v11[0] = 0;
  v15 = 0;
  v13 = 0;
  v16 = -1;
  v2 = a1 + 8;
  result = (*(a1[10] + 96))(a1[8], a1[9], "fecfg", "arwpospredictiononly", v11, &v16, &v15);
  if ((result & 0x80000000) != 0 || !v16)
  {
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    return oneword_posparser_Close(a1, v4, v5);
  }

  v6 = cstdlib_strchr(**&v11[0], v15);
  if (v6)
  {
    *v6 = 0;
  }

  if (cstdlib_strcmp(**&v11[0], "1"))
  {
    return oneword_posparser_Close(a1, v4, v5);
  }

  v13 = 1;
  result = posparser_Open(*a1, a1 + 251);
  if ((result & 0x80000000) == 0)
  {
    *(a1[251] + 8) = *v2;
    v7 = a1[251];
    *(v7 + 24) = a1[10];
    *(v7 + 32) = a1[7];
    *(v7 + 56) = a1[13];
    *(v7 + 40) = *(a1 + 11);
    result = paramc_ParamGetStr(*(*a1 + 40), "langcode", &v14);
    if ((result & 0x80000000) == 0)
    {
      cstdlib_strcpy((a1[251] + 240), v14);
      cstdlib_strcpy((a1[251] + 243), "pos");
      v8 = a1[251];
      result = getPosparserIGTreesAndDict(*a1, a1[2], a1[3], *(v8 + 8), *(v8 + 16), *(v8 + 24), (v8 + 232), (v8 + 216), (v8 + 224), (v8 + 236), (v8 + 240), &v13);
      if ((result & 0x80000000) == 0)
      {
        if (v13)
        {
          *(a1 + 501) = 1;
          v9 = *(*a1 + 8);
          v10 = a1[251];
          v11[0] = xmmword_287EEC128;
          v11[1] = *off_287EEC138;
          v12 = off_287EEC148;
          result = ssftmap_ObjOpen(v9, 0, v11, (v10 + 256));
          if ((result & 0x80000000) == 0)
          {
            return posparser_getPosMap(a1[251]);
          }

          return result;
        }

        return oneword_posparser_Close(a1, v4, v5);
      }
    }
  }

  return result;
}

uint64_t oneword_posparser_Close(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 2008);
  if (v4)
  {
    if (v4[32])
    {
      v5 = ssftmap_ObjClose(v4[32]);
      v4 = *(a1 + 2008);
      if ((v5 & 0x80000000) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v5 = 0;
    }

    if (v4[27] && v4[28])
    {
      v5 = freePosparserIGTrees(*a1, v4 + 27, v4 + 28);
      v4 = *(a1 + 2008);
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_10:
  posparser_Close(v4);
  *(a1 + 2008) = 0;
  *(a1 + 2004) = 0;
  return v5;
}

uint64_t oneword_posparser_Reopen(void *a1, void *a2, void *a3)
{
  result = oneword_posparser_Close(a1, a2, a3);
  if ((result & 0x80000000) == 0)
  {

    return oneword_posparser_Open(a1);
  }

  return result;
}

uint64_t oneword_posparser_Start(uint64_t a1)
{
  result = posparser_ProcessStart(*(a1 + 2008));
  if ((result & 0x80000000) == 0 && !*(*(a1 + 2008) + 248))
  {
    posparser_ProcessEnd(*(a1 + 2008));
    result = 0;
    *(a1 + 2004) = 0;
  }

  return result;
}

uint64_t oneword_posparser_Process(void *a1, uint64_t a2, uint64_t a3)
{
  v37 = 0;
  v36 = 0;
  v34 = 0;
  __s = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v29 = 0;
  __src = 0;
  v28 = 0;
  v6 = (*(a1[7] + 104))(a2, a3, 1, 0, &v37);
  if ((v6 & 0x80000000) != 0)
  {
    goto LABEL_22;
  }

  if (((*(a1[7] + 184))(a2, a3, v37, 0, &v36) & 0x80000000) != 0)
  {
    return v6;
  }

  if (v36 != 1)
  {
    return v6;
  }

  v6 = (*(a1[7] + 176))(a2, a3, v37, 0, &__s, &v32);
  if ((v6 & 0x80000000) != 0 || v32 < 2u)
  {
    return v6;
  }

  v7 = cstdlib_strlen(__s);
  v8 = heap_Calloc(*(*a1 + 8), 1, v7 + 1);
  v34 = v8;
  if (!v8)
  {
    goto LABEL_34;
  }

  v9 = v8;
  cstdlib_strcpy(v8, __s);
  v10 = (*(a1[7] + 176))(a2, a3, v37, 1, &__src, &v28);
  if ((v10 & 0x80000000) == 0)
  {
    v11 = heap_Alloc(*(*a1 + 8), 32 * v28);
    v29 = v11;
    if (v11)
    {
      v12 = v11;
      cstdlib_memcpy(v11, __src, 32 * v28);
      v13 = v37;
      v43 = 0;
      v44 = 0;
      v42 = 0;
      v41 = 0;
      __b = 0u;
      v40 = 0u;
      v14 = v28;
      v38 = v28;
      cstdlib_memset(&__b, 0, 0x20uLL);
      LODWORD(__b) = 1;
      if (((*(a1[7] + 184))(a2, a3, v13, 3, &v44 + 2) & 0x80000000) != 0 || HIWORD(v44) != 1 || ((*(a1[7] + 104))(a2, a3, 3, v13, &v44) & 0x80000000) != 0)
      {
LABEL_15:
        v17 = v12;
      }

      else
      {
        v15 = 0;
        v16 = 32 * v14 + 32;
        while (v44)
        {
          v16 += 32;
          --v15;
          if (((*(a1[7] + 120))(a2, a3) & 0x80000000) != 0)
          {
            goto LABEL_15;
          }
        }

        if (v15)
        {
          v17 = heap_Realloc(*(*a1 + 8), v12, v16);
          if (!v17)
          {
            log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 54000, 0);
            LODWORD(v14) = v28;
            goto LABEL_17;
          }
        }

        else
        {
          v17 = v12;
        }

        if (((*(a1[7] + 104))(a2, a3, 3, v13, &v44) & 0x80000000) == 0)
        {
          v26 = v44;
          if (v44)
          {
            do
            {
              if (((*(a1[7] + 168))(a2, a3, v26, 1, 1, &v43, &v43 + 2) & 0x80000000) != 0)
              {
                break;
              }

              if (((*(a1[7] + 168))(a2, a3, v44, 2, 1, &v42, &v43 + 2) & 0x80000000) != 0)
              {
                break;
              }

              if (((*(a1[7] + 168))(a2, a3, v44, 0, 1, &v41, &v43 + 2) & 0x80000000) != 0)
              {
                break;
              }

              LODWORD(__b) = 59;
              DWORD1(__b) = v43;
              v27 = *(v17 + 12) + v43;
              DWORD2(__b) = v42;
              HIDWORD(__b) = v27;
              LODWORD(v40) = v42 - v43;
              DWORD2(v40) = v41;
              posPInsertTOKMarker(v17, &v38, &__b);
              if (((*(a1[7] + 120))(a2, a3, v44, &v44) & 0x80000000) != 0)
              {
                break;
              }

              v26 = v44;
            }

            while (v44);
            LODWORD(v14) = v38;
          }
        }
      }

      v29 = v17;
      v28 = v14;
      v12 = v17;
LABEL_17:
      v10 = posparser_ExtractWords(a1[251], v12, v14, v9, v7, &v33, &v32 + 1);
      if ((v10 & 0x80000000) == 0)
      {
        v10 = posparser_Process(a1[251], a2, a3, v33, HIWORD(v32), 0, v37, &v34, &v29, &v28);
        if ((v10 & 0x80000000) == 0)
        {
          v18 = *(a1[7] + 160);
          v19 = v37;
          v20 = cstdlib_strlen(v34);
          v10 = v18(a2, a3, v19, 0, (v20 + 1), v34, &v31);
          if ((v10 & 0x80000000) == 0)
          {
            v10 = (*(a1[7] + 160))(a2, a3, v37, 1, v28, v29, &v31);
          }
        }
      }

      goto LABEL_21;
    }

LABEL_34:
    v6 = 2310021130;
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 54000, 0);
    return v6;
  }

LABEL_21:
  v6 = v10;
LABEL_22:
  if (v34)
  {
    heap_Free(*(*a1 + 8), v34);
  }

  v21 = v29;
  if (v29)
  {
    v22 = v28;
    if (v28)
    {
      v23 = 0;
      v24 = 0;
      do
      {
        if (*&v29[v23] == 58)
        {
          heap_Free(*(*a1 + 8), *&v29[v23 + 24]);
          *&v29[v23 + 24] = 0;
          v22 = v28;
        }

        ++v24;
        v23 += 32;
      }

      while (v24 < v22);
      v21 = v29;
    }

    heap_Free(*(*a1 + 8), v21);
  }

  if (v33)
  {
    posparser_FreeWords(a1[251], v33, HIWORD(v32));
  }

  return v6;
}

uint64_t dt_Main(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v101 = *MEMORY[0x277D85DE8];
  memset(v99, 0, sizeof(v99));
  memset(__b, 0, sizeof(__b));
  v97 = 0;
  v96 = 0;
  v94 = 0;
  __s = 0;
  v93 = 0;
  v92 = 0;
  cstdlib_memset(__b, 0, 0x20uLL);
  v12 = (a1 + 168);
  cstdlib_strcpy(*(a1 + 168), "");
  *(*(a1 + 160) + 127) = 0;
  if (!cstdlib_strstr((a1 + 584), a6))
  {
    v13 = *(a1 + 160);
    v14 = cstdlib_strlen(v13);
    v15 = *(a1 + 160);
    v16 = cstdlib_strlen(v15);
    v17 = utf8_Utf8ToDepes(v13, v14 + 1, 0, v15, v16 + 1, &v92, 0);
    if ((v17 & 0x80000000) != 0)
    {
      return v17;
    }
  }

  v18 = *(a1 + 160);
  v19 = cstdlib_strlen(v18);
  v20 = Transcription_Con(v99, a1 + 888, v18, v19 + 1, 4, 1);
  v21 = LH_ERROR_to_VERROR(v20);
  if ((v21 & 0x80000000) != 0)
  {
    v31 = v21;
    goto LABEL_97;
  }

  v90 = a3;
  v22 = PtrQueue_Con(__b, a1 + 888, 5, 5);
  v23 = LH_ERROR_to_VERROR(v22);
  if ((v23 & 0x80000000) != 0)
  {
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34004, 0);
    appended = v23;
    goto LABEL_91;
  }

  Word = _LexDT_FindWord(a5, v99, __b);
  v25 = LH_ERROR_to_VERROR(Word);
  v26 = v25;
  if ((v25 & 0x80000000) != 0)
  {
    v27 = v25 & 0x1FFF;
    v28 = *(*a1 + 32);
    if (v27 != 266)
    {
      log_OutPublic(v28, "FE_ONEWORD", 34004, 0);
      goto LABEL_36;
    }

    log_OutPublic(v28, "FE_ONEWORD", 34005, 0);
  }

  if (PtrQueue_IsEmpty(__b))
  {
    v29 = 1;
    appended = v26;
    if (!a2)
    {
      goto LABEL_91;
    }

LABEL_29:
    v40 = v29;
    if (cstdlib_strcmp(*v12, ""))
    {
      v41 = 0;
    }

    else
    {
      v41 = v40;
    }

    if ((v41 & 1) == 0)
    {
      if (dynamic_strcat((a1 + 168), ";_", (a1 + 200), *(*a1 + 8)))
      {
        v42 = *(*(a1 + 56) + 160);
        v43 = cstdlib_strlen(*(a1 + 168));
        appended = v42(v90, a4, a2, 11, (v43 + 1), *(a1 + 168), &v97 + 2);
      }

      else
      {
        appended = 2310021130;
      }
    }

    goto LABEL_91;
  }

  v96 = 0;
  v89 = a2;
  if (!a2)
  {
    goto LABEL_26;
  }

  v32 = (*(*(a1 + 56) + 184))(v90, a4, a2, 11, &v96);
  v33 = v96;
  if ((v32 & 0x80000000) == 0 && v96 == 1)
  {
    v26 = (*(*(a1 + 56) + 176))(v90, a4, a2, 11, &__s, &v97);
    if ((v26 & 0x80000000) == 0)
    {
      v33 = v96;
      goto LABEL_19;
    }

LABEL_36:
    appended = v26;
    goto LABEL_91;
  }

LABEL_19:
  if (v33 && __s)
  {
    v34 = a4;
    appended = 2310021130;
    v35 = cstdlib_strlen(__s);
    v36 = v35 + 3;
    v37 = *(a1 + 168);
    if (*(a1 + 200) < (v35 + 3))
    {
      v38 = heap_Realloc(*(*a1 + 8), *(a1 + 168), (v35 + 3));
      if (!v38)
      {
        log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
        goto LABEL_91;
      }

      v37 = v38;
      *v12 = v38;
      *(a1 + 200) = v36;
    }

    cstdlib_strcpy(v37, __s);
    v87 = v36;
    a4 = v34;
    a2 = v89;
    if (!dynamic_strcat((a1 + 168), "\x12", (a1 + 200), *(*a1 + 8)))
    {
      goto LABEL_91;
    }

    goto LABEL_27;
  }

LABEL_26:
  cstdlib_strcpy(*v12, "");
  v87 = 3;
LABEL_27:
  IsEmpty = PtrQueue_IsEmpty(__b);
  v29 = 1;
  appended = v26;
  if (IsEmpty)
  {
    if (!a2)
    {
      goto LABEL_91;
    }

    goto LABEL_29;
  }

  v85 = a4;
  v44 = 0;
  v86 = a2 == 0;
  do
  {
    v45 = PtrQueue_Item(__b);
    log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "DT: %s", *(v45 + 8));
    cstdlib_strcpy(__dst, "dtpostproc");
    v88 = cstdlib_strlen(__dst);
    if (*(a1 + 576) && !*(a1 + 840))
    {
      v91 = 0;
      v57 = (2 * cstdlib_strlen(*(v45 + 8))) | 1u;
      v58 = *(a1 + 176);
      if (*(a1 + 208) < v57)
      {
        v59 = heap_Realloc(*(*a1 + 8), *(a1 + 176), v57);
        if (!v59)
        {
LABEL_89:
          appended = 2310021130;
          log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
          goto LABEL_90;
        }

        v58 = v59;
        *(a1 + 176) = v59;
        *(a1 + 208) = v57;
      }

      appended = (*(*(a1 + 152) + 72))(*(a1 + 136), *(a1 + 144), 1, *(v45 + 8), v57, v58, 0);
      v60 = *(a1 + 176);
      v61 = cstdlib_strlen(v60);
      v62 = Utf8_DepesLengthInBytesUtf8(v60, v61);
      if (v62 >= *(a1 + 192))
      {
        v63 = heap_Realloc(*(*a1 + 8), *(a1 + 160), v62 + 1);
        if (!v63)
        {
          goto LABEL_99;
        }

        *(a1 + 160) = v63;
        *(a1 + 192) = v62 + 1;
      }

      if (!cstdlib_strstr((a1 + 584), a6))
      {
        v64 = *(a1 + 176);
        v65 = cstdlib_strlen(v64);
        appended = utf8_DepesToUtf8(v64, v65, 0, *(a1 + 160), v62, &v91, 0);
        if ((appended & 0x80000000) != 0)
        {
          goto LABEL_91;
        }
      }

      *(*(a1 + 160) + v91) = 0;
      goto LABEL_59;
    }

    v46 = cstdlib_strlen(*(v45 + 8)) + 1;
    v47 = *(a1 + 160);
    if (*(a1 + 192) < v46)
    {
      v48 = heap_Realloc(*(*a1 + 8), *(a1 + 160), v46);
      if (!v48)
      {
        goto LABEL_89;
      }

      v47 = v48;
      *(a1 + 160) = v48;
      *(a1 + 192) = v46;
    }

    cstdlib_strcpy(v47, *(v45 + 8));
    appended = 0;
    v49 = *(a1 + 840);
    if (!v49 && v46)
    {
      v50 = 0;
      v51 = 1;
      do
      {
        v52 = *(a1 + 160);
        v53 = &v52[v50];
        if (v52[v50] == 126)
        {
          v54 = cstdlib_strlen(v52);
          cstdlib_memmove((v53 + 1), v53, v54 + v51);
          v55 = *(a1 + 160);
          v56 = cstdlib_strlen("¡");
          cstdlib_memcpy((v55 + v50), "¡", v56);
          ++v46;
        }

        ++v50;
        --v51;
      }

      while (v50 < v46);
      appended = 0;
      a2 = v89;
LABEL_59:
      v49 = *(a1 + 840);
    }

    if (v49)
    {
      v94 = *(a1 + 160);
      if ((v44 & 1) == 0)
      {
        goto LABEL_81;
      }
    }

    else
    {
      log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", __dst, *(a1 + 160));
      v69 = *(*(a1 + 104) + 120);
      v70 = *(a1 + 160);
      v71 = cstdlib_strlen(v70);
      v72 = v69(*(a1 + 88), *(a1 + 96), 0, v70, v71);
      if ((v72 & 0x80000000) != 0)
      {
        goto LABEL_88;
      }

      if (cstdlib_strcmp(a6, "normal"))
      {
        cstdlib_strcat(__dst, "_");
        cstdlib_strcat(__dst, a6);
      }

      if (((*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __dst) & 0x80000000) != 0)
      {
        __dst[v88] = 0;
        v72 = (*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __dst);
        if ((v72 & 0x80000000) != 0)
        {
LABEL_88:
          appended = v72;
LABEL_90:
          PDELETE_Transcription(a1 + 888, v45);
          goto LABEL_91;
        }
      }

      appended = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 0, &v94, &v93);
      if ((appended & 0x80000000) != 0)
      {
        goto LABEL_90;
      }

      v94[v93] = 0;
      log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", __dst, v94);
      if (v93)
      {
        v73 = 0;
        v74 = 1;
        do
        {
          v75 = v94;
          v76 = cstdlib_strlen("¡");
          if (!cstdlib_strncmp(&v75[v73], "¡", v76))
          {
            v77 = &v94[v73];
            v78 = cstdlib_strlen(v94);
            cstdlib_memmove(v77 + 1, v77 + 2, v78 + v74);
            v94[v73] = 126;
          }

          ++v73;
          --v74;
        }

        while (v73 < v93);
      }

      log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", __dst, v94);
      a2 = v89;
      if ((v44 & 1) == 0)
      {
LABEL_81:
        appended = oneword_AppendPhon(a1, v94, "*", "*", 0, v86);
        if ((appended & 0x80000000) != 0)
        {
          goto LABEL_90;
        }

        goto LABEL_82;
      }
    }

    if (a2)
    {
      v66 = cstdlib_strlen(v94);
      v67 = v87 + v66 + 1;
      if (*(a1 + 200) < (v87 + v66 + 1))
      {
        v68 = heap_Realloc(*(*a1 + 8), *(a1 + 168), (v87 + v66 + 1));
        if (!v68)
        {
LABEL_99:
          appended = 2310021130;
          log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
          goto LABEL_91;
        }

        *v12 = v68;
        *(a1 + 200) = v67;
      }

      v87 = v67;
      if (!dynamic_strcat((a1 + 168), v94, (a1 + 200), *(*a1 + 8)) || !dynamic_strcat((a1 + 168), "\x12", (a1 + 200), *(*a1 + 8)))
      {
        appended = 2310021130;
        goto LABEL_91;
      }
    }

LABEL_82:
    PtrQueue_Remove(__b);
    PDELETE_Transcription(a1 + 888, v45);
    v44 = 1;
  }

  while (!PtrQueue_IsEmpty(__b));
  v29 = 0;
  a4 = v85;
  if (a2)
  {
    goto LABEL_29;
  }

LABEL_91:
  v79 = Transcription_Des(v99);
  v80 = LH_ERROR_to_VERROR(v79);
  if ((appended & 0x80000000) == 0)
  {
    v81 = v80;
    if ((v80 & 0x80000000) != 0)
    {
      log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34004, 0);
      appended = v81;
    }
  }

  if ((v23 & 0x80000000) == 0)
  {
    v82 = (*(*&__b[0] + 16))(__b);
    v83 = LH_ERROR_to_VERROR(v82);
    if ((appended & 0x80000000) == 0)
    {
      v31 = v83;
      if ((v83 & 0x80000000) != 0)
      {
LABEL_97:
        log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34004, 0);
        return v31;
      }
    }
  }

  return appended;
}

uint64_t mde_stemafx_Main(uint64_t a1, const char *a2, char *__s)
{
  v13 = 0;
  if (*(a1 + 286) == 1 && cstdlib_strlen(__s) >= *(a1 + 282) && cstdlib_strlen(__s) <= *(a1 + 283) && (*(a1 + 284) != 1 || (v8 = *__s, (v8 - 65) < 0x1A) || (v9 = v8 - 128, v9 <= 0x25) && ((1 << v9) & 0x200605C001) != 0))
  {
    v10 = (*(*(a1 + 80) + 104))(*(a1 + 64), *(a1 + 72), a2, __s, 128);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    cstdlib_strcpy(*(a1 + 160), "");
    cstdlib_strcpy(*(a1 + 168), "");
    cstdlib_strcpy(*(a1 + 176), "");
    v6 = hlp_MdeRecurse(a1, __s, 0, &v13, 0, 0, a2);
    if ((v6 & 0x80000000) == 0 && !v13)
    {
      log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Mde stem affix failed");
      cstdlib_strcpy(*(a1 + 160), __s);
      cstdlib_strcpy(*(a1 + 168), "");
      cstdlib_strcpy(*(a1 + 176), "");
      if (cstdlib_strlen(__s))
      {
        v11 = 0;
        while (dynamic_strcat((a1 + 168), " ", (a1 + 200), *(*a1 + 8)) && dynamic_strcat((a1 + 176), " ", (a1 + 208), *(*a1 + 8)))
        {
          v11 += utf8_determineUTF8CharLength(__s[v11]);
          if (cstdlib_strlen(__s) <= v11)
          {
            return v6;
          }
        }

        return 2310021130;
      }
    }
  }

  else
  {
    log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Mde stem affix cfg settings do not apply on %s", __s);
    v6 = (*(*(a1 + 80) + 104))(*(a1 + 64), *(a1 + 72), a2, __s, 128);
    if ((v6 & 0x80000000) == 0)
    {
      cstdlib_strcpy(*(a1 + 160), __s);
      cstdlib_strcpy(*(a1 + 168), "");
      cstdlib_strcpy(*(a1 + 176), "");
      if (cstdlib_strlen(__s))
      {
        v7 = 0;
        while (dynamic_strcat((a1 + 168), " ", (a1 + 200), *(*a1 + 8)) && dynamic_strcat((a1 + 176), " ", (a1 + 208), *(*a1 + 8)))
        {
          v7 += utf8_determineUTF8CharLength(__s[v7]);
          if (cstdlib_strlen(__s) <= v7)
          {
            return v6;
          }
        }

        return 2310021130;
      }
    }
  }

  return v6;
}

uint64_t hlp_MdeRecurse(uint64_t a1, char *a2, unsigned int a3, _DWORD *a4, int a5, char *a6, const char *a7)
{
  v232 = 0;
  v233 = 0;
  v231 = 0;
  v230 = 0;
  cstdlib_strcpy(__dst, "1*");
  cstdlib_strcpy(v228, "  ");
  v14 = 0;
  if (a3 != cstdlib_strlen(a2))
  {
LABEL_13:
    if (*(a1 + 285) != a5)
    {
      v25 = cstdlib_strlen(a2);
      if (a3 < v25)
      {
        __s = &a2[a3];
        v213 = a5 + 1;
        v26 = v25;
        v225 = a3;
        while (!*a4)
        {
          v27 = a2[v26];
          a2[v26] = 0;
          if (a3)
          {
            v28 = cstdlib_strchr(a6, 95);
            if (v28)
            {
              v29 = v28;
              v222 = v27;
              v30 = __s;
              v31 = cstdlib_strlen(__s);
              v32 = cstdlib_strlen(v29);
              cstdlib_memmove(&a6[v31], v29, v32 + 1);
              v33 = cstdlib_strlen(__s);
              cstdlib_memcpy(a6, __s, v33);
              v34 = cstdlib_strchr(a6, 95);
              if (v34)
              {
                v27 = v222;
                if (!*a4)
                {
                  v37 = v34;
                  v219 = a4;
                  v215 = v34 + 1;
                  v38 = 1;
                  while (1)
                  {
                    v39 = v215;
                    if ((v38 & 1) == 0)
                    {
                      __dst[0] = v37[1];
                      *v228 = *(v37 + 1);
                      *(v37 + 1) = 42;
                      v39 = __dst;
                    }

                    LOWORD(v231) = 0;
                    v14 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "mdeafx", a6, &v233, &v231, &v230);
                    v35 = *(*a1 + 8);
                    if ((v14 & 0x80000000) != 0)
                    {
                      goto LABEL_274;
                    }

                    v36 = hlp_saveLookupResults(v35, v233, v231, &v232, &v231 + 1);
                    if ((v36 & 0x80000000) != 0)
                    {
                      return v36;
                    }

                    if ((v38 & 1) == 0)
                    {
                      *(v37 + 1) = *v228;
                    }

                    if (HIWORD(v231) && !*v219)
                    {
                      v40 = 0;
                      v210 = a7;
                      v204 = v37;
                      while (1)
                      {
                        v206 = v40;
                        v41 = *(v232 + 8 * v40);
                        v42 = cstdlib_strchr(v41, v230);
                        v43 = v42;
                        if (v42)
                        {
                          *v42 = 0;
                          v43 = v42 + 1;
                          v44 = cstdlib_strchr(v42 + 1, v230);
                          if (v44)
                          {
                            *v44 = 0;
                          }
                        }

                        v208 = cstdlib_strlen(*(a1 + 160));
                        if (v208)
                        {
                          if (!dynamic_strcat((a1 + 160), "+", (a1 + 192), *(*a1 + 8)) || !dynamic_strcat((a1 + 168), "~", (a1 + 200), *(*a1 + 8)) || !dynamic_strcat((a1 + 176), "~", (a1 + 208), *(*a1 + 8)))
                          {
                            goto LABEL_272;
                          }
                        }

                        if (v43 && cstdlib_strlen(v43))
                        {
                          v30 = v43;
                        }

                        v45 = cstdlib_strlen(v30);
                        v46 = cstdlib_strlen(v41) << 16;
                        if (v46 <= (cstdlib_strlen(v39) << 16))
                        {
                          v47 = v39;
                        }

                        else
                        {
                          v47 = v41;
                        }

                        if (v45 << 16 <= (cstdlib_strlen(v47) << 16))
                        {
                          v49 = cstdlib_strlen(v41) << 16;
                          if (v49 <= (cstdlib_strlen(v39) << 16))
                          {
                            v48 = v39;
                          }

                          else
                          {
                            v48 = v41;
                          }
                        }

                        else
                        {
                          v48 = v30;
                        }

                        v50 = cstdlib_strlen(v48);
                        v51 = hlp_Realloc(a1, (v50 + v208 + 4));
                        if ((v51 & 0x80000000) != 0)
                        {
                          goto LABEL_277;
                        }

                        if (!dynamic_strcat((a1 + 160), v30, (a1 + 192), *(*a1 + 8)) || !dynamic_strcat((a1 + 168), v41, (a1 + 200), *(*a1 + 8)) || !dynamic_strcat((a1 + 176), v39, (a1 + 208), *(*a1 + 8)))
                        {
                          goto LABEL_272;
                        }

                        v52 = cstdlib_strlen(v30);
                        v53 = Utf8_LengthInUtf8chars(v30, v52) << 16;
                        if (v53 >= (cstdlib_strlen(v41) << 16) && (v54 = cstdlib_strlen(v30), v55 = Utf8_LengthInUtf8chars(v30, v54) << 16, v55 >= (cstdlib_strlen(v39) << 16)))
                        {
                          v67 = cstdlib_strlen(v30);
                          v68 = Utf8_LengthInUtf8chars(v30, v67);
                          if (cstdlib_strlen(v41) != v68)
                          {
                            v69 = 0;
                            while (dynamic_strcat((a1 + 168), "~", (a1 + 200), *(*a1 + 8)))
                            {
                              ++v69;
                              v70 = cstdlib_strlen(v30);
                              v71 = Utf8_LengthInUtf8chars(v30, v70);
                              if (v71 - cstdlib_strlen(v41) <= v69)
                              {
                                goto LABEL_80;
                              }
                            }

                            goto LABEL_272;
                          }

LABEL_80:
                          v72 = cstdlib_strlen(v30);
                          v73 = Utf8_LengthInUtf8chars(v30, v72);
                          if (cstdlib_strlen(v39) != v73)
                          {
                            v74 = 0;
                            while (dynamic_strcat((a1 + 176), "~", (a1 + 208), *(*a1 + 8)))
                            {
                              ++v74;
                              v75 = cstdlib_strlen(v30);
                              v76 = Utf8_LengthInUtf8chars(v30, v75);
                              if (v76 - cstdlib_strlen(v39) <= v74)
                              {
                                goto LABEL_93;
                              }
                            }

                            goto LABEL_272;
                          }
                        }

                        else
                        {
                          v56 = cstdlib_strlen(v41) << 16;
                          v57 = cstdlib_strlen(v30);
                          if (v56 >= (Utf8_LengthInUtf8chars(v30, v57) << 16) && (v58 = cstdlib_strlen(v41) << 16, v58 >= (cstdlib_strlen(v39) << 16)))
                          {
                            v77 = cstdlib_strlen(v41);
                            v78 = cstdlib_strlen(v30);
                            if (v77 != Utf8_LengthInUtf8chars(v30, v78))
                            {
                              v79 = 0;
                              while (dynamic_strcat((a1 + 160), "~", (a1 + 192), *(*a1 + 8)))
                              {
                                ++v79;
                                v80 = cstdlib_strlen(v41);
                                v81 = cstdlib_strlen(v30);
                                if (v80 - Utf8_LengthInUtf8chars(v30, v81) <= v79)
                                {
                                  goto LABEL_89;
                                }
                              }

                              goto LABEL_272;
                            }

LABEL_89:
                            v82 = cstdlib_strlen(v41);
                            if (v82 != cstdlib_strlen(v39))
                            {
                              v83 = 0;
                              while (dynamic_strcat((a1 + 176), "~", (a1 + 208), *(*a1 + 8)))
                              {
                                ++v83;
                                v84 = cstdlib_strlen(v41);
                                if (v84 - cstdlib_strlen(v39) <= v83)
                                {
                                  goto LABEL_93;
                                }
                              }

                              goto LABEL_272;
                            }
                          }

                          else
                          {
                            v59 = cstdlib_strlen(v39);
                            v60 = cstdlib_strlen(v30);
                            if (v59 != Utf8_LengthInUtf8chars(v30, v60))
                            {
                              v61 = 0;
                              while (dynamic_strcat((a1 + 160), "~", (a1 + 192), *(*a1 + 8)))
                              {
                                ++v61;
                                v62 = cstdlib_strlen(v39);
                                v63 = cstdlib_strlen(v30);
                                if (v62 - Utf8_LengthInUtf8chars(v30, v63) <= v61)
                                {
                                  goto LABEL_71;
                                }
                              }

                              goto LABEL_272;
                            }

LABEL_71:
                            v64 = cstdlib_strlen(v39);
                            if (v64 != cstdlib_strlen(v41))
                            {
                              v65 = 0;
                              while (dynamic_strcat((a1 + 168), "~", (a1 + 200), *(*a1 + 8)))
                              {
                                ++v65;
                                v66 = cstdlib_strlen(v39);
                                if (v66 - cstdlib_strlen(v41) <= v65)
                                {
                                  goto LABEL_93;
                                }
                              }

                              goto LABEL_272;
                            }
                          }
                        }

LABEL_93:
                        a2[v26] = v222;
                        a7 = v210;
                        v14 = hlp_MdeRecurse(a1, a2, v26, v219, v213, a6, v210);
                        if ((v14 & 0x80000000) != 0)
                        {
                          goto LABEL_273;
                        }

                        if (!*v219)
                        {
                          *(*(a1 + 160) + v208) = 0;
                          *(*(a1 + 168) + v208) = 0;
                          *(*(a1 + 176) + v208) = 0;
                        }

                        v37 = v204;
                        v40 = v206 + 1;
                        v30 = __s;
                        if (v206 + 1 >= HIWORD(v231) || *v219)
                        {
                          goto LABEL_37;
                        }
                      }
                    }

                    v14 = 0;
LABEL_37:
                    if (v38)
                    {
                      v38 = 0;
                      if (!*v219)
                      {
                        continue;
                      }
                    }

                    a4 = v219;
                    goto LABEL_165;
                  }
                }
              }

              else
              {
LABEL_165:
                v27 = v222;
              }
            }
          }

          else
          {
            LOWORD(v231) = 0;
            v14 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "mdestem", a2, &v233, &v231, &v230);
            v35 = *(*a1 + 8);
            if ((v14 & 0x80000000) != 0)
            {
              goto LABEL_274;
            }

            v36 = hlp_saveLookupResults(v35, v233, v231, &v232, &v231 + 1);
            if ((v36 & 0x80000000) != 0)
            {
              return v36;
            }

            if (HIWORD(v231) && !*a4)
            {
              v85 = 0;
              v211 = a7;
              v220 = a4;
              v223 = v27;
              while (1)
              {
                v86 = *(v232 + 8 * v85);
                v87 = cstdlib_strchr(v86, v230);
                v88 = v87;
                if (v87)
                {
                  *v87 = 0;
                  v88 = v87 + 1;
                  v89 = cstdlib_strchr(v87 + 1, v230);
                  v90 = v89;
                  if (v89)
                  {
                    *v89 = 0;
                    v90 = v89 + 1;
                    v91 = cstdlib_strchr(v89 + 1, v230);
                    if (v91)
                    {
                      *v91 = 0;
                    }
                  }
                }

                else
                {
                  v90 = 0;
                }

                v92 = cstdlib_strlen(*(a1 + 160));
                if (v92)
                {
                  if (!dynamic_strcat((a1 + 160), "+", (a1 + 192), *(*a1 + 8)) || !dynamic_strcat((a1 + 168), "~", (a1 + 200), *(*a1 + 8)) || !dynamic_strcat((a1 + 176), "~", (a1 + 208), *(*a1 + 8)))
                  {
                    goto LABEL_272;
                  }
                }

                if (v88)
                {
                  v93 = v88;
                }

                else
                {
                  v93 = "";
                }

                if (!v90 || !cstdlib_strcmp(v90, ""))
                {
                  v90 = a2;
                }

                v94 = cstdlib_strlen(v90);
                v95 = cstdlib_strlen(v86) << 16;
                if (v95 <= (cstdlib_strlen(v93) << 16))
                {
                  v96 = v93;
                }

                else
                {
                  v96 = v86;
                }

                if (v94 << 16 <= (cstdlib_strlen(v96) << 16))
                {
                  v98 = cstdlib_strlen(v86) << 16;
                  if (v98 <= (cstdlib_strlen(v93) << 16))
                  {
                    v97 = v93;
                  }

                  else
                  {
                    v97 = v86;
                  }
                }

                else
                {
                  v97 = v90;
                }

                v99 = cstdlib_strlen(v97);
                v51 = hlp_Realloc(a1, (v99 + v92 + 4));
                if ((v51 & 0x80000000) != 0)
                {
LABEL_277:
                  v14 = v51;
                  goto LABEL_273;
                }

                if (!dynamic_strcat((a1 + 160), v90, (a1 + 192), *(*a1 + 8)) || !dynamic_strcat((a1 + 168), v86, (a1 + 200), *(*a1 + 8)) || !dynamic_strcat((a1 + 176), v93, (a1 + 208), *(*a1 + 8)))
                {
                  goto LABEL_272;
                }

                v100 = cstdlib_strlen(v90);
                v101 = Utf8_LengthInUtf8chars(v90, v100) << 16;
                if (v101 >= (cstdlib_strlen(v86) << 16) && (v102 = cstdlib_strlen(v90), v103 = Utf8_LengthInUtf8chars(v90, v102) << 16, v103 >= (cstdlib_strlen(v93) << 16)))
                {
                  v115 = cstdlib_strlen(v90);
                  v116 = Utf8_LengthInUtf8chars(v90, v115);
                  if (cstdlib_strlen(v86) != v116)
                  {
                    v117 = 0;
                    while (dynamic_strcat((a1 + 168), "~", (a1 + 200), *(*a1 + 8)))
                    {
                      ++v117;
                      v118 = cstdlib_strlen(v90);
                      v119 = Utf8_LengthInUtf8chars(v90, v118);
                      if (v119 - cstdlib_strlen(v86) <= v117)
                      {
                        goto LABEL_144;
                      }
                    }

                    goto LABEL_272;
                  }

LABEL_144:
                  v120 = cstdlib_strlen(v90);
                  v121 = Utf8_LengthInUtf8chars(v90, v120);
                  if (cstdlib_strlen(v93) != v121)
                  {
                    v122 = 0;
                    while (dynamic_strcat((a1 + 176), "~", (a1 + 208), *(*a1 + 8)))
                    {
                      ++v122;
                      v123 = cstdlib_strlen(v90);
                      v124 = Utf8_LengthInUtf8chars(v90, v123);
                      if (v124 - cstdlib_strlen(v93) <= v122)
                      {
                        goto LABEL_157;
                      }
                    }

                    goto LABEL_272;
                  }
                }

                else
                {
                  v104 = cstdlib_strlen(v86) << 16;
                  v105 = cstdlib_strlen(v90);
                  if (v104 >= (Utf8_LengthInUtf8chars(v90, v105) << 16) && (v106 = cstdlib_strlen(v86) << 16, v106 >= (cstdlib_strlen(v93) << 16)))
                  {
                    v125 = cstdlib_strlen(v86);
                    v126 = cstdlib_strlen(v90);
                    if (v125 != Utf8_LengthInUtf8chars(v90, v126))
                    {
                      v127 = 0;
                      while (dynamic_strcat((a1 + 160), "~", (a1 + 192), *(*a1 + 8)))
                      {
                        ++v127;
                        v128 = cstdlib_strlen(v86);
                        v129 = cstdlib_strlen(v90);
                        if (v128 - Utf8_LengthInUtf8chars(v90, v129) <= v127)
                        {
                          goto LABEL_153;
                        }
                      }

                      goto LABEL_272;
                    }

LABEL_153:
                    v130 = cstdlib_strlen(v86);
                    if (v130 != cstdlib_strlen(v93))
                    {
                      v131 = 0;
                      while (dynamic_strcat((a1 + 176), "~", (a1 + 208), *(*a1 + 8)))
                      {
                        ++v131;
                        v132 = cstdlib_strlen(v86);
                        if (v132 - cstdlib_strlen(v93) <= v131)
                        {
                          goto LABEL_157;
                        }
                      }

                      goto LABEL_272;
                    }
                  }

                  else
                  {
                    v107 = cstdlib_strlen(v93);
                    v108 = cstdlib_strlen(v90);
                    if (v107 != Utf8_LengthInUtf8chars(v90, v108))
                    {
                      v109 = 0;
                      while (dynamic_strcat((a1 + 160), "~", (a1 + 192), *(*a1 + 8)))
                      {
                        ++v109;
                        v110 = cstdlib_strlen(v93);
                        v111 = cstdlib_strlen(v90);
                        if (v110 - Utf8_LengthInUtf8chars(v90, v111) <= v109)
                        {
                          goto LABEL_135;
                        }
                      }

                      goto LABEL_272;
                    }

LABEL_135:
                    v112 = cstdlib_strlen(v93);
                    if (v112 != cstdlib_strlen(v86))
                    {
                      v113 = 0;
                      while (dynamic_strcat((a1 + 168), "~", (a1 + 200), *(*a1 + 8)))
                      {
                        ++v113;
                        v114 = cstdlib_strlen(v93);
                        if (v114 - cstdlib_strlen(v86) <= v113)
                        {
                          goto LABEL_157;
                        }
                      }

                      goto LABEL_272;
                    }
                  }
                }

LABEL_157:
                a2[v26] = v223;
                v133 = *(*a1 + 8);
                v134 = cstdlib_strlen(a2);
                v135 = cstdlib_strlen(v93);
                v136 = heap_Alloc(v133, (v134 + v135 + 1));
                if (!v136)
                {
                  log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
                  hlp_freeLookupResults(*(*a1 + 8), &v232, &v231 + 1);
                  return 2310021130;
                }

                v137 = v136;
                cstdlib_strcpy(v136, "_");
                cstdlib_strcat(v137, v93);
                a7 = v211;
                v14 = hlp_MdeRecurse(a1, a2, v26, v220, v213, v137, v211);
                heap_Free(*(*a1 + 8), v137);
                if ((v14 & 0x80000000) != 0)
                {
                  goto LABEL_273;
                }

                if (!*v220)
                {
                  *(*(a1 + 160) + v92) = 0;
                  *(*(a1 + 168) + v92) = 0;
                  *(*(a1 + 176) + v92) = 0;
                }

                ++v85;
                v27 = v223;
                a6 = 0;
                if (v85 >= HIWORD(v231))
                {
                  a4 = v220;
                  goto LABEL_166;
                }

                a4 = v220;
                if (*v220)
                {
                  goto LABEL_166;
                }
              }
            }

            v14 = 0;
          }

LABEL_166:
          a2[v26--] = v27;
          a3 = v225;
          if (v225 >= v26)
          {
            goto LABEL_273;
          }
        }
      }
    }

    goto LABEL_273;
  }

  v227 = a6;
  v15 = *(*a1 + 8);
  v16 = (a1 + 168);
  v17 = cstdlib_strlen(*(a1 + 168));
  v18 = cstdlib_strlen(a7);
  v19 = heap_Alloc(v15, (v17 + v18 + 6));
  if (!v19)
  {
    v14 = 2310021130;
LABEL_170:
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
    return v14;
  }

  v20 = v19;
  cstdlib_strcpy(v19, "mde_");
  cstdlib_strcat(v20, a7);
  cstdlib_strcat(v20, "_");
  v21 = cstdlib_strlen(v20);
  if (cstdlib_strlen(*v16))
  {
    v22 = 0;
    do
    {
      v23 = *v16;
      v24 = (*v16)[v22];
      if (v24 != 32 && v24 != 126)
      {
        v20[v21] = v24;
        v23 = *v16;
        ++v21;
      }

      ++v22;
    }

    while (cstdlib_strlen(v23) > v22);
  }

  v20[v21] = 0;
  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Checking %s", v20);
  LOWORD(v231) = -1;
  v14 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", v20, &v233, &v231, &v230);
  if ((v14 & 0x80000000) != 0)
  {
    goto LABEL_281;
  }

  if (v231)
  {
LABEL_11:
    *a4 = 1;
    goto LABEL_12;
  }

  cstdlib_strcpy(v20, "mde_");
  if (cstdlib_strlen(*v16))
  {
    v138 = 0;
    v139 = 4;
    do
    {
      v140 = *v16;
      v141 = (*v16)[v138];
      if (v141 != 32 && v141 != 126)
      {
        v20[v139] = v141;
        v140 = *v16;
        ++v139;
      }

      ++v138;
    }

    while (cstdlib_strlen(v140) > v138);
    v142 = v139;
  }

  else
  {
    v142 = 4;
  }

  v20[v142] = 0;
  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Checking %s", v20);
  LOWORD(v231) = -1;
  v14 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", v20, &v233, &v231, &v230);
  if ((v14 & 0x80000000) != 0)
  {
LABEL_281:
    heap_Free(*(*a1 + 8), v20);
    return v14;
  }

  if (v231)
  {
    goto LABEL_11;
  }

  if (*a4 || !v227 || !*(a1 + 288))
  {
    goto LABEL_12;
  }

  v226 = a3;
  v143 = cstdlib_strchr(v227, 95);
  if (!v143 || (v144 = v143, v145 = cstdlib_strlen(v143), cstdlib_memmove(v227 + 1, v144, v145 + 1), *v227 = 64, (v146 = cstdlib_strchr(v227, 95)) == 0))
  {
    a3 = v226;
    goto LABEL_12;
  }

  a3 = v226;
  if (*a4)
  {
LABEL_12:
    heap_Free(*(*a1 + 8), v20);
    a6 = v227;
    goto LABEL_13;
  }

  v214 = v146;
  v216 = v146 + 1;
  v147 = 1;
  while (1)
  {
    v224 = v216;
    if ((v147 & 1) == 0)
    {
      __dst[0] = v214[1];
      *v228 = *(v214 + 1);
      *(v214 + 1) = 42;
      v224 = __dst;
    }

    LOWORD(v231) = 0;
    v148 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "mdeafx", v227, &v233, &v231, &v230);
    if ((v148 & 0x80000000) != 0)
    {
      goto LABEL_280;
    }

    if ((v147 & 1) == 0)
    {
      *(v214 + 1) = *v228;
    }

    v148 = hlp_saveLookupResults(*(*a1 + 8), v233, v231, &v232, &v231 + 1);
    if ((v148 & 0x80000000) != 0)
    {
LABEL_280:
      v14 = v148;
      goto LABEL_281;
    }

    if (HIWORD(v231) && !*a4)
    {
      break;
    }

    v14 = 0;
LABEL_197:
    if (v147)
    {
      v147 = 0;
      if (!*a4)
      {
        continue;
      }
    }

    goto LABEL_12;
  }

  v149 = 0;
  v212 = a7;
  v221 = a4;
  v207 = v147;
  while (1)
  {
    v205 = v149;
    __sa = *(v232 + 8 * v149);
    v150 = cstdlib_strchr(__sa, v230);
    v151 = v150;
    if (v150)
    {
      *v150 = 0;
      v151 = v150 + 1;
      v152 = cstdlib_strchr(v150 + 1, v230);
      if (v152)
      {
        *v152 = 0;
      }
    }

    v209 = cstdlib_strlen(*(a1 + 160));
    if (v209 && (!dynamic_strcat((a1 + 160), "+", (a1 + 192), *(*a1 + 8)) || !dynamic_strcat((a1 + 168), "~", (a1 + 200), *(*a1 + 8)) || !dynamic_strcat((a1 + 176), "~", (a1 + 208), *(*a1 + 8))))
    {
      goto LABEL_272;
    }

    if (v151)
    {
      if (cstdlib_strlen(v151))
      {
        v153 = v151;
      }

      else
      {
        v153 = "@";
      }
    }

    else
    {
      v153 = "@";
    }

    v154 = cstdlib_strlen(v153);
    v155 = cstdlib_strlen(__sa) << 16;
    if (v155 <= (cstdlib_strlen(v224) << 16))
    {
      v156 = v224;
    }

    else
    {
      v156 = __sa;
    }

    v147 = v207;
    if (v154 << 16 <= (cstdlib_strlen(v156) << 16))
    {
      v158 = cstdlib_strlen(__sa) << 16;
      if (v158 <= (cstdlib_strlen(v224) << 16))
      {
        v157 = v224;
      }

      else
      {
        v157 = __sa;
      }
    }

    else
    {
      v157 = v153;
    }

    v159 = cstdlib_strlen(v157);
    v160 = hlp_Realloc(a1, (v159 + v209 + 4));
    if ((v160 & 0x80000000) != 0)
    {
      v14 = v160;
      v203 = *(*a1 + 8);
      goto LABEL_285;
    }

    if (!dynamic_strcat((a1 + 160), v153, (a1 + 192), *(*a1 + 8)) || !dynamic_strcat((a1 + 168), __sa, (a1 + 200), *(*a1 + 8)) || !dynamic_strcat((a1 + 176), v224, (a1 + 208), *(*a1 + 8)))
    {
      goto LABEL_272;
    }

    v161 = cstdlib_strlen(v153);
    v162 = Utf8_LengthInUtf8chars(v153, v161) << 16;
    if (v162 >= (cstdlib_strlen(__sa) << 16) && (v163 = cstdlib_strlen(v153), v164 = Utf8_LengthInUtf8chars(v153, v163) << 16, v164 >= (cstdlib_strlen(v224) << 16)))
    {
      v176 = cstdlib_strlen(v153);
      v177 = Utf8_LengthInUtf8chars(v153, v176);
      if (cstdlib_strlen(__sa) != v177)
      {
        v178 = 0;
        while (dynamic_strcat((a1 + 168), "~", (a1 + 200), *(*a1 + 8)))
        {
          ++v178;
          v179 = cstdlib_strlen(v153);
          v180 = Utf8_LengthInUtf8chars(v153, v179);
          if (v180 - cstdlib_strlen(__sa) <= v178)
          {
            goto LABEL_242;
          }
        }

        goto LABEL_272;
      }

LABEL_242:
      v181 = cstdlib_strlen(v153);
      v182 = Utf8_LengthInUtf8chars(v153, v181);
      if (cstdlib_strlen(v224) != v182)
      {
        v183 = 0;
        while (dynamic_strcat((a1 + 176), "~", (a1 + 208), *(*a1 + 8)))
        {
          ++v183;
          v184 = cstdlib_strlen(v153);
          v185 = Utf8_LengthInUtf8chars(v153, v184);
          if (v185 - cstdlib_strlen(v224) <= v183)
          {
            goto LABEL_255;
          }
        }

        goto LABEL_272;
      }
    }

    else
    {
      v165 = cstdlib_strlen(__sa) << 16;
      v166 = cstdlib_strlen(v153);
      if (v165 >= (Utf8_LengthInUtf8chars(v153, v166) << 16) && (v167 = cstdlib_strlen(__sa) << 16, v167 >= (cstdlib_strlen(v224) << 16)))
      {
        v186 = cstdlib_strlen(__sa);
        v187 = cstdlib_strlen(v153);
        if (v186 != Utf8_LengthInUtf8chars(v153, v187))
        {
          v188 = 0;
          while (dynamic_strcat((a1 + 160), "~", (a1 + 192), *(*a1 + 8)))
          {
            ++v188;
            v189 = cstdlib_strlen(__sa);
            v190 = cstdlib_strlen(v153);
            if (v189 - Utf8_LengthInUtf8chars(v153, v190) <= v188)
            {
              goto LABEL_251;
            }
          }

          goto LABEL_272;
        }

LABEL_251:
        v191 = cstdlib_strlen(__sa);
        if (v191 != cstdlib_strlen(v224))
        {
          v192 = 0;
          while (dynamic_strcat((a1 + 176), "~", (a1 + 208), *(*a1 + 8)))
          {
            ++v192;
            v193 = cstdlib_strlen(__sa);
            if (v193 - cstdlib_strlen(v224) <= v192)
            {
              goto LABEL_255;
            }
          }

          goto LABEL_272;
        }
      }

      else
      {
        v168 = cstdlib_strlen(v224);
        v169 = cstdlib_strlen(v153);
        if (v168 != Utf8_LengthInUtf8chars(v153, v169))
        {
          v170 = 0;
          while (dynamic_strcat((a1 + 160), "~", (a1 + 192), *(*a1 + 8)))
          {
            ++v170;
            v171 = cstdlib_strlen(v224);
            v172 = cstdlib_strlen(v153);
            if (v171 - Utf8_LengthInUtf8chars(v153, v172) <= v170)
            {
              goto LABEL_233;
            }
          }

          goto LABEL_272;
        }

LABEL_233:
        v173 = cstdlib_strlen(v224);
        if (v173 != cstdlib_strlen(__sa))
        {
          v174 = 0;
          while (dynamic_strcat((a1 + 168), "~", (a1 + 200), *(*a1 + 8)))
          {
            ++v174;
            v175 = cstdlib_strlen(v224);
            if (v175 - cstdlib_strlen(__sa) <= v174)
            {
              goto LABEL_255;
            }
          }

LABEL_272:
          v14 = 2310021130;
          goto LABEL_273;
        }
      }
    }

LABEL_255:
    v194 = *(*a1 + 8);
    v195 = cstdlib_strlen(*(a1 + 168));
    v196 = heap_Realloc(v194, v20, (v195 + 4));
    if (!v196)
    {
      v14 = 2310021130;
      heap_Free(*(*a1 + 8), v20);
      hlp_freeLookupResults(*(*a1 + 8), &v232, &v231 + 1);
      goto LABEL_170;
    }

    v20 = v196;
    cstdlib_strcpy(v196, "mde_");
    a7 = v212;
    a3 = v226;
    if (cstdlib_strlen(*v16))
    {
      v197 = 0;
      v198 = 4;
      do
      {
        v199 = *v16;
        v200 = (*v16)[v197];
        if (v200 != 32 && v200 != 126)
        {
          v20[v198] = v200;
          v199 = *v16;
          ++v198;
        }

        ++v197;
      }

      while (cstdlib_strlen(v199) > v197);
      v201 = v198;
    }

    else
    {
      v201 = 4;
    }

    v20[v201] = 0;
    log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Checking %s", v20);
    LOWORD(v231) = -1;
    v14 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", v20, &v233, &v231, &v230);
    a4 = v221;
    if ((v14 & 0x80000000) != 0)
    {
      break;
    }

    if (v231)
    {
      *v221 = 1;
    }

    else if (!*v221)
    {
      *(*(a1 + 160) + v209) = 0;
      (*v16)[v209] = 0;
      *(*(a1 + 176) + v209) = 0;
    }

    v149 = v205 + 1;
    if (v205 + 1 >= HIWORD(v231) || *v221)
    {
      goto LABEL_197;
    }
  }

  v203 = *(*a1 + 8);
LABEL_285:
  heap_Free(v203, v20);
LABEL_273:
  v35 = *(*a1 + 8);
LABEL_274:
  hlp_freeLookupResults(v35, &v232, &v231 + 1);
  return v14;
}

uint64_t hlp_saveLookupResults(void *a1, uint64_t a2, unsigned int a3, uint64_t *a4, unsigned __int16 *a5)
{
  hlp_freeLookupResults(a1, a4, a5);
  result = 0;
  if (a2 && a3)
  {
    v11 = heap_Alloc(a1, 8 * a3);
    *a4 = v11;
    if (v11)
    {
      v12 = 0;
      *a5 = 0;
      while (1)
      {
        v13 = cstdlib_strlen(*(a2 + 8 * v12));
        v14 = heap_Alloc(a1, (v13 + 1));
        v15 = *a5;
        *(*a4 + 8 * v15) = v14;
        v16 = *(*a4 + 8 * v15);
        if (!v16)
        {
          break;
        }

        cstdlib_strcpy(v16, *(a2 + 8 * v15));
        v12 = *a5 + 1;
        *a5 = v12;
        if (a3 <= v12)
        {
          return 0;
        }
      }
    }

    hlp_freeLookupResults(a1, a4, a5);
    return 2310021130;
  }

  return result;
}

uint64_t hlp_Realloc(uint64_t *a1, unsigned int a2)
{
  v3 = a2;
  if (a1[24] < a2)
  {
    v4 = heap_Realloc(*(*a1 + 8), a1[20], a2);
    if (!v4)
    {
      goto LABEL_10;
    }

    a1[20] = v4;
    a1[24] = v3;
  }

  if (a1[25] >= v3)
  {
    goto LABEL_7;
  }

  v5 = heap_Realloc(*(*a1 + 8), a1[21], v3);
  if (!v5)
  {
LABEL_10:
    v7 = 2310021130;
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
    return v7;
  }

  a1[21] = v5;
  a1[25] = v3;
LABEL_7:
  if (a1[26] >= v3)
  {
    return 0;
  }

  v6 = heap_Realloc(*(*a1 + 8), a1[22], v3);
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = 0;
  a1[22] = v6;
  a1[26] = v3;
  return v7;
}

void *hlp_freeLookupResults(void *result, uint64_t *a2, _WORD *a3)
{
  v5 = *a2;
  if (v5)
  {
    v6 = result;
    if (*a3)
    {
      v7 = 0;
      do
      {
        heap_Free(v6, *(*a2 + 8 * v7++));
      }

      while (v7 < *a3);
      v5 = *a2;
    }

    result = heap_Free(v6, v5);
  }

  *a3 = 0;
  *a2 = 0;
  return result;
}

uint64_t hlp_WriteWordRec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, __int16 a7, __int16 a8, const char *a9, const char *a10, const char *a11, const char *a12, uint64_t a13, ...)
{
  va_start(va, a13);
  v41 = *MEMORY[0x277D85DE8];
  v37 = a4;
  v36 = a6;
  v35 = a7;
  v34 = a8;
  v33 = 0;
  cstdlib_strcpy(v40, a9);
  cstdlib_strcpy(v39, a10);
  cstdlib_strcpy(__dst, a11);
  cstdlib_strcat(__dst, "!");
  cstdlib_strcat(__dst, a12);
  if (!a5 || ((v18 = cstdlib_strlen(v40), v19 = cstdlib_strlen(v39), v20 = cstdlib_strlen(__dst), v19 <= v18) ? (v21 = v18) : (v21 = v19), v20 <= v21 ? (v22 = v21) : (v22 = v20), (result = mosynt_PadWithChar(v40, 5000, 126, v22), (result & 0x80000000) == 0) && (result = mosynt_PadWithChar(v39, 5000, 32, v22), (result & 0x80000000) == 0) && (result = mosynt_PadWithChar(__dst, 5000, 32, v22), (result & 0x80000000) == 0)))
  {
    result = (*(*(a1 + 56) + 88))(a2, a3, a4, &v37);
    if ((result & 0x80000000) == 0)
    {
      result = (*(*(a1 + 56) + 160))(a2, a3, v37, 0, 1, &v36, &v33);
      if ((result & 0x80000000) == 0)
      {
        result = (*(*(a1 + 56) + 160))(a2, a3, v37, 1, 1, &v35, &v33);
        if ((result & 0x80000000) == 0)
        {
          result = (*(*(a1 + 56) + 160))(a2, a3, v37, 2, 1, &v34, &v33);
          if ((result & 0x80000000) == 0)
          {
            v24 = *(*(a1 + 56) + 160);
            v25 = v37;
            v26 = cstdlib_strlen(v40);
            result = v24(a2, a3, v25, 3, (v26 + 1), v40, &v33);
            if ((result & 0x80000000) == 0)
            {
              v27 = *(*(a1 + 56) + 160);
              v28 = v37;
              v29 = cstdlib_strlen(v39);
              result = v27(a2, a3, v28, 5, (v29 + 1), v39, &v33);
              if ((result & 0x80000000) == 0)
              {
                v30 = *(*(a1 + 56) + 160);
                v31 = v37;
                v32 = cstdlib_strlen(__dst);
                result = v30(a2, a3, v31, 6, (v32 + 1), __dst, &v33);
                if ((result & 0x80000000) == 0)
                {
                  result = (*(*(a1 + 56) + 160))(a2, a3, v37, 7, 1, va, &v33);
                  if ((result & 0x80000000) == 0)
                  {
                    return (*(*(a1 + 56) + 160))(a2, a3, v37, 9, 1, "", &v33);
                  }
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

uint64_t mde_MosyntMorphAna(uint64_t a1, char *a2, unsigned __int8 *a3, const char *a4, uint64_t a5, __int16 a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, __int16 *a11, int a12, char a13, _DWORD *a14)
{
  v31 = *MEMORY[0x277D85DE8];
  v29 = 0;
  memset(__b, 0, 512);
  v28 = 0;
  cstdlib_memset(__b, 0, 0x8C8uLL);
  *a14 = 0;
  cstdlib_strcpy(*(a1 + 240), "");
  cstdlib_strcpy(*(a1 + 248), "");
  cstdlib_strcpy(*(a1 + 256), "");
  result = mosynt_StartWordAnalysis(*(a1 + 48), *(a1 + 2200), *(a1 + 2208), *(a1 + 2216), *(a1 + 2224), *(a1 + 2232), *(a1 + 2240), __b);
  if ((result & 0x80000000) == 0)
  {
    result = mosynt_WordAnalysis(*(a1 + 48), __b, a3, 0, 1, a13, &v29 + 1, &v28);
    if ((result & 0x80000000) == 0)
    {
      v21 = HIDWORD(v29);
      *a14 = HIDWORD(v29);
      if (v21)
      {
        *a11 = cstdlib_strlen(a4) + a6;
        HIDWORD(v29) = 1;
        v22 = a2 + 15000;
        v23 = a2 + 5000;
        v24 = 1;
        while (1)
        {
          result = mosynt_GetReading(*(a1 + 48), __b, 0, &v29 + 1, v22, 5000, v23, 5000, &v29);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = mosynt_SubstAllSubstrOcc(v23, "~", "¡", a2 + 10000, 5000);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          cstdlib_strcpy(v23, a2 + 10000);
          if (!HIDWORD(v29))
          {
            return mosynt_FinishWordAnalysis(*(a1 + 48), __b);
          }

          if (a12)
          {
            break;
          }

          if (v24)
          {
            if (v29 == v28)
            {
              hlp_WriteWordRec(a1, a9, a10, a7, 1, 8, a6, *a11, v23, "", "", "", v27);
              v24 = 0;
            }

            else
            {
              v24 = 1;
            }

LABEL_12:
            if (!HIDWORD(v29))
            {
              return mosynt_FinishWordAnalysis(*(a1 + 48), __b);
            }
          }
        }

        v25 = a10;
        v26 = a9;
        if (v24)
        {
          hlp_WriteWordRec(a1, a9, a10, a7, 1, 4, a6, *a11, v23, "Y", "Y", "", v27);
          v26 = a9;
          v25 = a10;
        }

        hlp_WriteWordRec(a1, v26, v25, a7, 0, 8, a6, *a11, v23, "N", "*", v22, v27);
        v24 = 0;
        goto LABEL_12;
      }

      return mosynt_FinishWordAnalysis(*(a1 + 48), __b);
    }
  }

  return result;
}

uint64_t mde_Main(uint64_t a1, const char *a2, char *__s, const char *a4, __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8, _WORD *a9)
{
  v33 = a5;
  v32 = a6;
  v30 = 8;
  v31 = 0;
  v29 = 0;
  v28 = 1;
  if (*(a1 + 286) == 1 || cstdlib_strlen(__s) < *(a1 + 282) || cstdlib_strlen(__s) > *(a1 + 283) || *(a1 + 284) == 1 && (v18 = *__s, (v18 - 65) >= 0x1A) && (v18 != 195 || __s[1] - 132 > 0x18 || ((1 << (__s[1] + 124)) & 0x104202F) == 0))
  {
    log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Mde cfg settings do not apply on %s", a2);
    return 0;
  }

  else
  {
    cstdlib_strcpy(*(a1 + 240), "");
    cstdlib_strcpy(*(a1 + 248), "");
    cstdlib_strcpy(*(a1 + 256), "");
    result = hlp_MdeRecurse_0(a1, a2, a4, 0, &v31, 0);
    if ((result & 0x80000000) == 0)
    {
      if (v31)
      {
        *a9 = cstdlib_strlen(__s) + a5;
        result = (*(*(a1 + 56) + 88))(a7, a8, a6, &v32);
        if ((result & 0x80000000) == 0)
        {
          result = (*(*(a1 + 56) + 160))(a7, a8, v32, 0, 1, &v30, &v29);
          if ((result & 0x80000000) == 0)
          {
            result = (*(*(a1 + 56) + 160))(a7, a8, v32, 1, 1, &v33, &v29);
            if ((result & 0x80000000) == 0)
            {
              result = (*(*(a1 + 56) + 160))(a7, a8, v32, 2, 1, a9, &v29);
              if ((result & 0x80000000) == 0)
              {
                v19 = *(*(a1 + 56) + 160);
                v20 = v32;
                v21 = cstdlib_strlen(*(a1 + 240));
                result = v19(a7, a8, v20, 3, (v21 + 1), *(a1 + 240), &v29);
                if ((result & 0x80000000) == 0)
                {
                  v22 = *(*(a1 + 56) + 160);
                  v23 = v32;
                  v24 = cstdlib_strlen(*(a1 + 248));
                  result = v22(a7, a8, v23, 5, (v24 + 1), *(a1 + 248), &v29);
                  if ((result & 0x80000000) == 0)
                  {
                    v25 = *(*(a1 + 56) + 160);
                    v26 = v32;
                    v27 = cstdlib_strlen(*(a1 + 256));
                    result = v25(a7, a8, v26, 6, (v27 + 1), *(a1 + 256), &v29);
                    if ((result & 0x80000000) == 0)
                    {
                      result = (*(*(a1 + 56) + 160))(a7, a8, v32, 7, 1, &v28, &v29);
                      if ((result & 0x80000000) == 0)
                      {
                        return (*(*(a1 + 56) + 160))(a7, a8, v32, 9, 1, "", &v29);
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

  return result;
}

uint64_t hlp_MdeRecurse_0(uint64_t a1, const char *a2, const char *a3, unsigned int a4, _DWORD *a5, int a6)
{
  v10 = a2;
  v102 = *MEMORY[0x277D85DE8];
  __c_3 = 0;
  __c_1 = 0;
  __c = 0;
  v12 = 0;
  if (a4 == cstdlib_strlen(a2))
  {
    cstdlib_strcpy(__dst, "mde_");
    cstdlib_strcat(__dst, a3);
    cstdlib_strcat(__dst, "_");
    v13 = cstdlib_strlen(__dst);
    if (cstdlib_strlen(*(a1 + 248)) && v13 <= 0xFF)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = *(a1 + 248);
        v17 = v16[v14];
        if (v17 != 32)
        {
          __dst[v13++] = v17;
        }

        if (cstdlib_strlen(v16) <= ++v15)
        {
          break;
        }

        v14 = v15;
      }

      while (v13 < 0x100);
    }

    __dst[v13] = 0;
    log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Checking %s", __dst);
    __c_1 = -1;
    v12 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", __dst, &__c_3, &__c_1, &__c);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    if (__c_1)
    {
      goto LABEL_11;
    }

    cstdlib_strcpy(__dst, "mde_");
    if (cstdlib_strlen(*(a1 + 248)))
    {
      v76 = 0;
      v77 = 0;
      v78 = 4;
      do
      {
        v79 = *(a1 + 248);
        v80 = v79[v76];
        if (v80 != 32)
        {
          __dst[v78++] = v80;
        }

        if (cstdlib_strlen(v79) <= ++v77)
        {
          break;
        }

        v76 = v77;
      }

      while (v78 < 0x100);
    }

    else
    {
      v78 = 4;
    }

    __dst[v78] = 0;
    log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Checking %s", __dst);
    __c_1 = -1;
    v12 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", __dst, &__c_3, &__c_1, &__c);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    if (__c_1)
    {
LABEL_11:
      *a5 = 1;
      log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "MDE succeeds");
    }

    else
    {
      log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "MDE fails");
    }
  }

  if (*(a1 + 285) != a6)
  {
    v18 = cstdlib_strlen(v10);
    v19 = v18;
    if (a4 < v18)
    {
      v88 = a4;
      if (!*a5)
      {
        v90 = a6 + 1;
        __s2 = &v10[a4];
        v92 = 0;
        v20 = v18;
        v93 = a5;
        while (1)
        {
          v21 = v10[v20];
          v10[v20] = 0;
          __c_1 = 0;
          v12 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "mde", __s2, &__c_3, &__c_1, &__c);
          if ((v12 & 0x80000000) != 0)
          {
            return v12;
          }

          v10[v20] = v21;
          if (!__c_1)
          {
            break;
          }

          if (!*a5)
          {
            v82 = v21;
            v22 = 0;
            __n = (v19 - v88);
            v85 = v20 - v88 + 2;
            v86 = (v19 - v88 - 1);
            __s = v10;
            do
            {
              v23 = v20;
              v24 = *(__c_3 + 8 * v22);
              v25 = cstdlib_strchr(v24, __c);
              if (v25)
              {
                *v25 = 0;
                v26 = v25 + 1;
                v27 = cstdlib_strchr(v25 + 1, __c);
                v28 = v27;
                if (v27)
                {
                  *v27 = 0;
                  v28 = v27 + 1;
                  v29 = cstdlib_strchr(v27 + 1, __c);
                  v30 = v29;
                  if (v29)
                  {
                    *v29 = 0;
                    v30 = v29 + 1;
                    v31 = cstdlib_strchr(v29 + 1, __c);
                    if (v31)
                    {
                      *v31 = 0;
                    }
                  }
                }

                else
                {
                  v30 = 0;
                }
              }

              else
              {
                v28 = 0;
                v30 = 0;
                v26 = v92;
              }

              v32 = cstdlib_strlen(*(a1 + 240));
              if (v24 && cstdlib_strcmp(v24, ""))
              {
                if (v30)
                {
                  goto LABEL_32;
                }
              }

              else
              {
                v24 = "*";
                if (v30)
                {
LABEL_32:
                  if (cstdlib_strcmp(v30, ""))
                  {
                    goto LABEL_34;
                  }
                }
              }

              v30 = "*";
LABEL_34:
              if (v32)
              {
                cstdlib_strcat(*(a1 + 240), "+");
                cstdlib_strcat(*(a1 + 248), " ");
                cstdlib_strcat(*(a1 + 256), " ");
              }

              v92 = v26;
              v89 = v32;
              if (v28 && cstdlib_strcmp(v28, ""))
              {
                v33 = cstdlib_strlen(v28);
                v34 = v32;
                v35 = hlp_Realloc_0(a1, (v33 + v32 + 4));
                if ((v35 & 0x80000000) != 0)
                {
                  return v35;
                }

                cstdlib_strcat(*(a1 + 240), "◄");
                cstdlib_strcat(*(a1 + 248), " ");
                cstdlib_strcat(*(a1 + 256), " ");
                cstdlib_strcat(*(a1 + 240), v28);
                cstdlib_strcat(*(a1 + 248), v24);
                cstdlib_strcat(*(a1 + 256), v30);
                v36 = cstdlib_strlen(v28);
                if (Utf8_LengthInUtf8chars(v28, v36) != 1)
                {
                  v37 = 0;
                  do
                  {
                    cstdlib_strcat(*(a1 + 248), " ");
                    cstdlib_strcat(*(a1 + 256), " ");
                    ++v37;
                    v38 = cstdlib_strlen(v28);
                  }

                  while ((Utf8_LengthInUtf8chars(v28, v38) - 1) > v37);
                }

                cstdlib_strcat(*(a1 + 240), "◄");
                cstdlib_strcat(*(a1 + 248), " ");
                cstdlib_strcat(*(a1 + 256), " ");
                a5 = v93;
                v20 = v23;
                v10 = __s;
              }

              else if (v26 && !cstdlib_strcmp(v26, "yes"))
              {
                v34 = v32;
                v97 = 0;
                v96 = 0;
                cstdlib_strcpy(__dst, "one_word");
                v20 = v23;
                v10 = __s;
                __s[v20] = 0;
                v95[0] = *v24;
                v95[1] = 0;
                v94[0] = *v30;
                v94[1] = 0;
                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", __dst, __s2);
                v40 = *(*(a1 + 104) + 120);
                v41 = cstdlib_strlen(__s2);
                v35 = v40(*(a1 + 88), *(a1 + 96), 0, __s2, v41);
                if ((v35 & 0x80000000) != 0)
                {
                  return v35;
                }

                __s[v20] = v82;
                v35 = (*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __dst);
                if ((v35 & 0x80000000) != 0)
                {
                  return v35;
                }

                v35 = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 0, &v97, &v96);
                if ((v35 & 0x80000000) != 0)
                {
                  return v35;
                }

                v97[v96] = 0;
                a5 = v93;
                if (cstdlib_strlen(v97))
                {
                  v42 = 0;
                  do
                  {
                    v43 = &v97[v42];
                    if (*v43 == 126)
                    {
                      v44 = cstdlib_strlen(v97);
                      cstdlib_memmove(v43, v43 + 1, (v44 - v42-- + 1));
                    }

                    else
                    {
                      v45 = cstdlib_strlen("¡");
                      if (!cstdlib_strncmp(v43, "¡", v45))
                      {
                        v46 = &v97[v42];
                        v47 = cstdlib_strlen(v97);
                        cstdlib_memmove(v46 + 1, v46 + 2, v47 - v42 + 1);
                        v97[v42] = 126;
                      }
                    }

                    ++v42;
                  }

                  while (cstdlib_strlen(v97) > v42);
                }

                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", __dst, v97);
                v48 = cstdlib_strlen(v97);
                v35 = hlp_Realloc_0(a1, (v48 + v34 + 4));
                if ((v35 & 0x80000000) != 0)
                {
                  return v35;
                }

                cstdlib_strcat(*(a1 + 240), "◄");
                cstdlib_strcat(*(a1 + 248), " ");
                cstdlib_strcat(*(a1 + 256), " ");
                cstdlib_strcat(*(a1 + 240), v97);
                cstdlib_strcat(*(a1 + 248), v95);
                cstdlib_strcat(*(a1 + 256), v94);
                v49 = v97;
                v50 = cstdlib_strlen(v97);
                if (Utf8_LengthInUtf8chars(v49, v50) != 1)
                {
                  v51 = 0;
                  do
                  {
                    cstdlib_strcat(*(a1 + 248), " ");
                    cstdlib_strcat(*(a1 + 256), " ");
                    ++v51;
                    v52 = v97;
                    v53 = cstdlib_strlen(v97);
                  }

                  while ((Utf8_LengthInUtf8chars(v52, v53) - 1) > v51);
                }

                cstdlib_strcat(*(a1 + 240), "◄");
                cstdlib_strcat(*(a1 + 248), " ");
                cstdlib_strcat(*(a1 + 256), " ");
              }

              else
              {
                v34 = v32;
                v35 = hlp_Realloc_0(a1, (v85 + v32));
                if ((v35 & 0x80000000) != 0)
                {
                  return v35;
                }

                v20 = v23;
                cstdlib_strncat(*(a1 + 240), __s2, __n);
                cstdlib_strcat(*(a1 + 248), v24);
                cstdlib_strcat(*(a1 + 256), v30);
                a5 = v93;
                v10 = __s;
                if (v86)
                {
                  v39 = v86;
                  do
                  {
                    cstdlib_strcat(*(a1 + 248), " ");
                    cstdlib_strcat(*(a1 + 256), " ");
                    --v39;
                  }

                  while (v39);
                }
              }

              v12 = hlp_MdeRecurse_0(a1, v10, a3, v20, a5, v90);
              if ((v12 & 0x80000000) != 0)
              {
                return v12;
              }

              if (!*a5)
              {
                v54 = Utf8_LengthInUtf8chars(*(a1 + 240), v89);
                *(*(a1 + 240) + v34) = 0;
                *(*(a1 + 248) + v54) = 0;
                *(*(a1 + 256) + v54) = 0;
              }

              if (++v22 >= __c_1)
              {
                goto LABEL_71;
              }
            }

            while (!*a5);
          }

LABEL_72:
          v19 = v20 - 1;
          if (v88 < (v20 - 1))
          {
            --v20;
            if (!*a5)
            {
              continue;
            }
          }

          return v12;
        }

LABEL_71:
        if (*a5)
        {
          goto LABEL_72;
        }

        v55 = v10[v20];
        v10[v20] = 0;
        __c_1 = 0;
        v12 = (*(*(a1 + 80) + 152))(*(a1 + 64), *(a1 + 72), "g2p", __s2, &__c_3, &__c_1, &__c, *(a1 + 556));
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        v10[v20] = v55;
        if (!__c_1)
        {
          goto LABEL_72;
        }

        v56 = 0;
        v83 = v20;
        while (1)
        {
          if (*a5)
          {
            goto LABEL_72;
          }

          v57 = *(__c_3 + 8 * v56);
          v58 = cstdlib_strchr(v57, __c);
          if (!v58)
          {
            break;
          }

          *v58 = 0;
          v59 = cstdlib_strchr(v58 + 1, __c);
          v60 = v59;
          if (!v59)
          {
            goto LABEL_88;
          }

          *v59 = 0;
          v60 = v59 + 1;
          v61 = cstdlib_strchr(v59 + 1, __c);
          v62 = v61;
          if (!v61)
          {
            goto LABEL_89;
          }

          *v61 = 0;
          v62 = v61 + 1;
          v63 = cstdlib_strchr(v61 + 1, __c);
          v64 = v63;
          if (!v63)
          {
            goto LABEL_90;
          }

          *v63 = 0;
          v64 = v63 + 1;
          v65 = cstdlib_strchr(v63 + 1, __c);
          if (!v65)
          {
            goto LABEL_90;
          }

          *v65 = 0;
          v66 = cstdlib_strchr(v65 + 1, __c);
          v67 = v66;
          if (v66)
          {
            *v66 = 0;
            v67 = v66 + 1;
            v68 = cstdlib_strchr(v66 + 1, __c);
            if (v68)
            {
              *v68 = 0;
            }
          }

LABEL_91:
          v69 = *(*a1 + 32);
          if (!v57)
          {
            log_OutPublic(v69, "FE_ONEWORD", 34001, 0);
            return 2310021127;
          }

          log_OutText(v69, "FE_ONEWORD", 5, 0, "G2P Validating %s", v57);
          if (v60 && cstdlib_strcmp(v60, "") && !cstdlib_strstr(v60, a3))
          {
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P Domain validation not OK");
            goto LABEL_116;
          }

          if (v67 && !cstdlib_strcmp(v67, "0"))
          {
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P MDE usage validation not OK");
LABEL_116:
            a5 = v93;
            v20 = v83;
            goto LABEL_117;
          }

          v70 = cstdlib_strlen(*(a1 + 240));
          if (cstdlib_strcmp(v57, ""))
          {
            if (!v62 || !cstdlib_strcmp(v62, ""))
            {
              v62 = "*";
            }

            if (!v64 || !cstdlib_strcmp(v64, ""))
            {
              v64 = "*";
            }

            v71 = cstdlib_strlen(v57);
            v35 = hlp_Realloc_0(a1, (v71 + v70 + 4));
            if ((v35 & 0x80000000) != 0)
            {
              return v35;
            }

            if (v70)
            {
              cstdlib_strcat(*(a1 + 240), "+");
              cstdlib_strcat(*(a1 + 248), " ");
              cstdlib_strcat(*(a1 + 256), " ");
            }

            cstdlib_strcat(*(a1 + 240), "◄");
            cstdlib_strcat(*(a1 + 248), " ");
            cstdlib_strcat(*(a1 + 256), " ");
            cstdlib_strcat(*(a1 + 240), v57);
            cstdlib_strcat(*(a1 + 248), v62);
            cstdlib_strcat(*(a1 + 256), v64);
            v72 = cstdlib_strlen(v57);
            if (Utf8_LengthInUtf8chars(v57, v72) != 1)
            {
              v73 = 0;
              do
              {
                cstdlib_strcat(*(a1 + 248), " ");
                cstdlib_strcat(*(a1 + 256), " ");
                ++v73;
                v74 = cstdlib_strlen(v57);
              }

              while ((Utf8_LengthInUtf8chars(v57, v74) - 1) > v73);
            }

            cstdlib_strcat(*(a1 + 240), "◄");
            cstdlib_strcat(*(a1 + 248), " ");
            cstdlib_strcat(*(a1 + 256), " ");
          }

          v20 = v83;
          a5 = v93;
          v12 = hlp_MdeRecurse_0(a1, v10, a3, v83, v93, v90);
          if ((v12 & 0x80000000) != 0)
          {
            return v12;
          }

          if (!*v93)
          {
            v75 = Utf8_LengthInUtf8chars(*(a1 + 240), v70);
            *(*(a1 + 240) + v70) = 0;
            *(*(a1 + 248) + v75) = 0;
            *(*(a1 + 256) + v75) = 0;
          }

LABEL_117:
          if (++v56 >= __c_1)
          {
            goto LABEL_72;
          }
        }

        v60 = 0;
LABEL_88:
        v62 = 0;
LABEL_89:
        v64 = 0;
LABEL_90:
        v67 = 0;
        goto LABEL_91;
      }
    }
  }

  return v12;
}

uint64_t hlp_Realloc_0(uint64_t *a1, unsigned int a2)
{
  if (a2 < 0x81)
  {
    return 0;
  }

  v3 = a2;
  v4 = heap_Realloc(*(*a1 + 8), a1[30], a2);
  if (v4 && (a1[30] = v4, (v5 = heap_Realloc(*(*a1 + 8), a1[31], v3)) != 0) && (a1[31] = v5, (v6 = heap_Realloc(*(*a1 + 8), a1[32], v3)) != 0))
  {
    v7 = 0;
    a1[32] = v6;
  }

  else
  {
    v7 = 2310021130;
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
  }

  return v7;
}

char *oneword_FindPhonWordSep(char *a1, char *a2)
{
  *a2 = 0;
  result = cstdlib_strstr(a1, "_");
  if (result)
  {
    v5 = 1;
  }

  else
  {
    result = cstdlib_strstr(a1, "-*");
    if (!result)
    {
      return result;
    }

    v5 = 2;
  }

  *a2 = v5;
  return result;
}

uint64_t oneword_CountPhoneticWords(char *a1, char *a2)
{
  v3 = a1;
  v4 = cstdlib_strstr(a1, "\x12");
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2;
  }

  if (v5 - v3 >= 2 && !cstdlib_strncmp(v5 - 1, "#", 1uLL))
  {
    --v5;
  }

  if (v5 <= v3)
  {
    return 1;
  }

  else
  {
    v6 = v5 - v3;
    v7 = 1;
    do
    {
      v8 = 1;
      if (cstdlib_strncmp(v3, "#", 1uLL))
      {
        v8 = 1;
        if (cstdlib_strncmp(v3, "_", 1uLL))
        {
          v8 = cstdlib_strncmp(v3, "-*", 2uLL) == 0;
        }
      }

      v7 += v8;
      ++v3;
      --v6;
    }

    while (v6);
  }

  return v7;
}

char *oneword_FindNextWord(char *result, uint64_t a2, unsigned int a3, unsigned int *a4, unsigned int *a5)
{
  v7 = a3;
  v8 = *a4;
  if (*a4 >= a3)
  {
    v8 = a3;
  }

  else
  {
    v10 = result;
    do
    {
      result = utf8_BelongsToSet(a2, v10, v8, v7);
      if (!result)
      {
        break;
      }

      result = utf8_GetNextUtf8Offset(v10, v8);
      v8 = result;
    }

    while (result < v7);
    if (v8 >= v7)
    {
      v7 = v8;
    }

    else
    {
      v11 = v8;
      do
      {
        result = utf8_BelongsToSet(a2, v10, v11, v7);
        if (result)
        {
          break;
        }

        result = utf8_GetNextUtf8Offset(v10, v11);
        v11 = result;
      }

      while (result < v7);
      v7 = v11;
    }
  }

  *a4 = v8;
  *a5 = v7;
  return result;
}

uint64_t oneword_CountOrthographicWords(char *a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = a2 - a1;
    ;
  }

  PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(a1, v7);
  if (v7)
  {
    v10 = PreviousUtf8Offset;
    v11 = v7;
    if (utf8_BelongsToSet(a3, a1, PreviousUtf8Offset, v7))
    {
      do
      {
        v11 = v10;
        v12 = utf8_GetPreviousUtf8Offset(a1, v10);
        if (!v10)
        {
          break;
        }

        v10 = v12;
      }

      while (utf8_BelongsToSet(a3, a1, v12, v7));
    }
  }

  else
  {
    v11 = 0;
  }

  for (j = 1; i < v11; i = utf8_GetNextUtf8Offset(a1, i))
  {
    if (!a1[i])
    {
      break;
    }

    if (utf8_BelongsToSet(a4, a1, i, v7))
    {
      ++j;
      for (; i < v11; i = utf8_GetNextUtf8Offset(a1, i))
      {
        if (!utf8_BelongsToSet(a4, a1, i, v7))
        {
          break;
        }
      }
    }
  }

  return j;
}

char *oneword_ReplaceCharactersInOrthography(char *result, int a2, uint64_t a3, char a4, _WORD *a5)
{
  if (a5 && *a5)
  {
    v8 = result;
    v9 = a2 - result;
    result = utf8_BelongsToSet(a3, result, 0, a2 - result);
    if (result)
    {
      NextUtf8Offset = 0;
      do
      {
        NextUtf8Offset = utf8_GetNextUtf8Offset(v8, NextUtf8Offset);
        result = utf8_BelongsToSet(a3, v8, NextUtf8Offset, v9);
      }

      while (result);
    }

    if (*a5)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = 0;
      do
      {
        if (utf8_BelongsToSet(a3, v8, v12, v9))
        {
          v8[v12] = a4;
          --*a5;
        }

        result = utf8_GetNextUtf8Offset(v8, v12);
        v12 = result;
        if (*a5)
        {
          v13 = result >= v9;
        }

        else
        {
          v13 = 1;
        }
      }

      while (!v13);
    }
  }

  return result;
}

uint64_t getDepesLayersForWordAndPOS(uint64_t a1, uint64_t a2, char *__s, char *a4)
{
  v5 = __s;
  v8 = cstdlib_strlen(__s);
  v9 = Utf8_LengthInUtf8chars(v5, v8);
  v10 = (a1 + 160);
  cstdlib_strcpy(*(a1 + 160), "");
  v11 = (a1 + 168);
  cstdlib_strcpy(*(a1 + 168), "");
  cstdlib_strcpy(*(a1 + 176), "");
  v50 = (*(*(a1 + 80) + 104))(*(a1 + 64), *(a1 + 72), a2, v5, 128);
  if ((v50 & 0x80000000) == 0)
  {
    if (a4)
    {
      v49 = a1;
      v12 = cstdlib_strlen(a4);
      Utf8_LengthInUtf8chars(a4, v12);
      v13 = cstdlib_strstr(v5, "║");
      v14 = cstdlib_strstr(a4, "+");
      v15 = v5;
      v16 = v13 != 0;
      v17 = v14 != 0;
      v51 = a4;
      __sa = v5;
      if (v13 | v14)
      {
        v18 = v14;
        v19 = 0;
        v53 = 0;
        v20 = a4;
        while (1)
        {
          if (v16)
          {
            v21 = v13 - v15;
          }

          else
          {
            v21 = 0;
          }

          if (v17)
          {
            v22 = v18 - v20;
          }

          else
          {
            v22 = 0;
          }

          v23 = v22;
          v24 = v21;
          if (!v21 || !v22)
          {
            if (!v21 || v22)
            {
              if (!v21 && v22)
              {
                cstdlib_strncat(*v11, &v51[v53], v22);
                cstdlib_strcat(*v11, " ");
                v30 = 0;
                do
                {
                  cstdlib_strcat(*v10, "~");
                  ++v30;
                }

                while (v23 > v30);
                v53 += 1 + v23;
                cstdlib_strcat(*v10, " ");
                v18 = cstdlib_strstr(v18 + 1, "+");
              }
            }

            else
            {
              cstdlib_strncat(*v10, &__sa[v19], v21);
              cstdlib_strcat(*v10, " ");
              v29 = v19 + 3;
              do
              {
                cstdlib_strcat(*v11, "~");
                LODWORD(v23) = v23 + 1;
              }

              while (v24 > v23);
              v19 = v29 + v24;
              cstdlib_strcat(*v11, " ");
              v13 = cstdlib_strstr(v13 + 3, "║");
            }

            goto LABEL_34;
          }

          v25 = v21 - v22;
          if (v21 <= v22)
          {
            v26 = v53;
            cstdlib_strncat(*v11, &v51[v53], v22);
            cstdlib_strcat(*v11, " ");
            cstdlib_strncat(*v10, &__sa[v19], v24);
            v27 = v10;
            if (v23 - v24 >= 1)
            {
              v31 = 0;
              do
              {
                cstdlib_strcat(*v10, "~");
                ++v31;
              }

              while (v23 - v24 > v31);
              v27 = v10;
              goto LABEL_32;
            }
          }

          else
          {
            cstdlib_strncat(*v10, &__sa[v19], v21);
            cstdlib_strcat(*v10, " ");
            v26 = v53;
            cstdlib_strncat(*v11, &v51[v53], v23);
            v27 = v11;
            if (v25 >= 1)
            {
              v28 = 0;
              do
              {
                cstdlib_strcat(*v11, "~");
                ++v28;
              }

              while (v25 > v28);
              v27 = v11;
LABEL_32:
              v26 = v53;
            }
          }

          cstdlib_strcat(*v27, " ");
          v19 += v24 + 3;
          v53 = v26 + v23 + 1;
          v15 = v13 + 3;
          v20 = v18 + 1;
          v13 = cstdlib_strstr(v13 + 3, "║");
          v18 = cstdlib_strstr(v18 + 1, "+");
LABEL_34:
          v16 = v13 != 0;
          v17 = v18 != 0;
          if (!(v13 | v18))
          {
            goto LABEL_44;
          }
        }
      }

      LOWORD(v53) = 0;
      LOWORD(v19) = 0;
LABEL_44:
      v39 = cstdlib_strlen(__sa);
      v40 = cstdlib_strlen(v51);
      if (v39 > v19)
      {
        cstdlib_strcat(*v10, &__sa[v19]);
      }

      if (v40 > v53)
      {
        cstdlib_strcat(*v11, &v51[v53]);
      }

      v41 = cstdlib_strlen(*v10);
      v42 = cstdlib_strlen(*v11);
      v43 = v42;
      if (v41 <= v42)
      {
        for (i = v42; i > v41; ++v41)
        {
          cstdlib_strcat(*v10, "~");
        }
      }

      else
      {
        do
        {
          cstdlib_strcat(*v11, "~");
          ++v43;
        }

        while (v41 > v43);
      }

      v45 = cstdlib_strlen(*v10);
      if (v45)
      {
        for (j = 0; j != v45; ++j)
        {
          if (*(*(v49 + 160) + j) == 32)
          {
            v47 = " ";
          }

          else
          {
            v47 = "~";
          }

          cstdlib_strcat(*(v49 + 176), v47);
        }
      }
    }

    else if (v9)
    {
      v32 = 0;
      do
      {
        v33 = v5;
        v34 = &v5[v32];
        v35 = cstdlib_strncmp(v34, "║", 3uLL);
        v36 = *v10;
        if (v35)
        {
          v37 = utf8_determineUTF8CharLength(*v34);
          cstdlib_strncat(v36, v34, v37);
          cstdlib_strcat(*(a1 + 168), "~");
          cstdlib_strcat(*(a1 + 176), "~");
          v38 = utf8_determineUTF8CharLength(*v34);
        }

        else
        {
          cstdlib_strcat(*v10, " ");
          cstdlib_strcat(*(a1 + 168), " ");
          cstdlib_strcat(*(a1 + 176), " ");
          v38 = 3;
        }

        v32 += v38;
        v5 = v33;
      }

      while (v32 < v9);
    }
  }

  return v50;
}

uint64_t oneword_SkipCrosstoken(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, unsigned int a5, __int16 a6, __int16 a7, int a8, unsigned __int16 a9)
{
  v57 = a6;
  v56 = a7;
  v53 = 17;
  v54 = 9;
  v51 = 0;
  __s = 0;
  v49 = 0;
  v50 = 0;
  v15 = heap_Calloc(*(*a1 + 8), 1, (2 * a5) | 1);
  if (v15)
  {
    v16 = v15;
    if (a5 >= 2)
    {
      v17 = a5 - 1;
      do
      {
        cstdlib_strcat(v16, "*.");
        --v17;
      }

      while (v17);
    }

    v55 = 0;
    v47 = 0;
    v48 = 0;
    v45 = 0;
    v46 = 0;
    v44 = 0;
    v43 = 0;
    cstdlib_strcat(v16, "*");
    v18 = (*(*(a1 + 56) + 168))(a2, a3, a9, 0, 1, &v55, &v48 + 2);
    if ((v18 & 0x80000000) == 0)
    {
      v19 = *(a1 + 56);
      v18 = v55 > 1 ? (*(v19 + 88))(a2, a3, a9, &v44 + 2) : (*(v19 + 80))(a2, a3, a9, &v44 + 2);
      if ((v18 & 0x80000000) == 0)
      {
        v55 = 9;
        v18 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v44), 0, 1, &v55, &v48);
        if ((v18 & 0x80000000) == 0)
        {
          v18 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v44), 1, 1, &v57, &v48);
          if ((v18 & 0x80000000) == 0)
          {
            v18 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v44), 2, 1, &v56, &v48);
            if ((v18 & 0x80000000) == 0)
            {
              v21 = *(*(a1 + 56) + 160);
              v22 = HIWORD(v44);
              v23 = cstdlib_strlen(v16);
              v18 = v21(a2, a3, v22, 3, (v23 + 1), v16, &v48);
              if ((v18 & 0x80000000) == 0)
              {
                v18 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v44), 5, 1, "*", &v48);
                if ((v18 & 0x80000000) == 0)
                {
                  v18 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v44), 6, 1, "*", &v48);
                  if ((v18 & 0x80000000) == 0)
                  {
                    if (cstdlib_strcmp(a4, "latin") || (v42 = 1, v18 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v44), 7, 1, &v42, &v48), (v18 & 0x80000000) == 0))
                    {
                      v20 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v44), 9, 7, "normal", &v48);
                      if ((v20 & 0x80000000) != 0)
                      {
                        goto LABEL_60;
                      }

                      LOWORD(v45) = a8;
                      if (HIWORD(v44) == a8)
                      {
                        goto LABEL_60;
                      }

                      v24 = 0;
                      while (1)
                      {
                        v18 = (*(*(a1 + 56) + 168))(a2, a3, a8, 0, 1, &v55, &v48 + 2);
                        if ((v18 & 0x80000000) != 0)
                        {
                          break;
                        }

                        v18 = (*(*(a1 + 56) + 168))(a2, a3, v45, 1, 1, &v47, &v48 + 2);
                        if ((v18 & 0x80000000) != 0)
                        {
                          break;
                        }

                        v18 = (*(*(a1 + 56) + 168))(a2, a3, v45, 2, 1, &v46 + 2, &v48 + 2);
                        if ((v18 & 0x80000000) != 0)
                        {
                          break;
                        }

                        if (v55 <= 1)
                        {
                          v18 = (*(*(a1 + 56) + 136))(a2, a3, v45, &v43);
LABEL_27:
                          if ((v18 & 0x80000000) != 0)
                          {
                            break;
                          }

                          v25 = v43;
                          while (v25 != v24)
                          {
                            v18 = (*(*(a1 + 56) + 168))(a2, a3, v25, 0, 1, &v54, &v48 + 2);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v18 = (*(*(a1 + 56) + 168))(a2, a3, v43, 1, 1, &v46, &v48 + 2);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v18 = (*(*(a1 + 56) + 168))(a2, a3, v43, 2, 1, &v45 + 2, &v48 + 2);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            if (v54 != 4 || v46 != v47 || HIWORD(v45) != HIWORD(v46))
                            {
                              v18 = (*(*(a1 + 56) + 136))(a2, a3, v43, &v43);
                              goto LABEL_27;
                            }

                            v18 = (*(*(a1 + 56) + 88))(a2, a3, HIWORD(v44), &v44 + 2);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v18 = (*(*(a1 + 56) + 176))(a2, a3, v43, 3, &__s, &v48 + 2);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v18 = (*(*(a1 + 56) + 176))(a2, a3, v43, 5, &v49, &v48 + 2);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v18 = (*(*(a1 + 56) + 168))(a2, a3, v43, 7, 1, &v47 + 2, &v48 + 2);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v18 = (*(*(a1 + 56) + 176))(a2, a3, v43, 6, &v51, &v48 + 2);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v18 = (*(*(a1 + 56) + 176))(a2, a3, v43, 9, &v50, &v48 + 2);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v18 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v44), 0, 1, &v53, &v48);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            LOWORD(v46) = *(a1 + 224) + v46;
                            v18 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v44), 1, 1, &v46, &v48);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            HIWORD(v45) += *(a1 + 224);
                            v18 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v44), 2, 1, &v45 + 2, &v48);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v26 = *(*(a1 + 56) + 160);
                            v27 = HIWORD(v44);
                            v28 = cstdlib_strlen(__s);
                            v18 = v26(a2, a3, v27, 3, (v28 + 1), __s, &v48);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v29 = *(*(a1 + 56) + 160);
                            v30 = HIWORD(v44);
                            v31 = cstdlib_strlen(a4);
                            v18 = v29(a2, a3, v30, 4, (v31 + 1), a4, &v48);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v32 = *(*(a1 + 56) + 160);
                            v33 = HIWORD(v44);
                            v34 = cstdlib_strlen(v49);
                            v18 = v32(a2, a3, v33, 5, (v34 + 1), v49, &v48);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v35 = *(*(a1 + 56) + 160);
                            v36 = HIWORD(v44);
                            v37 = cstdlib_strlen(v51);
                            v18 = v35(a2, a3, v36, 6, (v37 + 1), v51, &v48);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v18 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v44), 7, 1, &v47 + 2, &v48);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v38 = *(*(a1 + 56) + 160);
                            v39 = HIWORD(v44);
                            v40 = cstdlib_strlen(v50);
                            v18 = v38(a2, a3, v39, 9, (v40 + 1), v50, &v48);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v18 = (*(*(a1 + 56) + 136))(a2, a3, v43, &v44);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v18 = (*(*(a1 + 56) + 192))(a2, a3, v43);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v25 = v44;
                            v43 = v44;
                          }

                          v24 = v45;
                        }

                        v20 = (*(*(a1 + 56) + 120))(a2, a3);
                        if ((v20 & 0x80000000) == 0)
                        {
                          LOWORD(a8) = v45;
                          if (v45 != HIWORD(v44))
                          {
                            continue;
                          }
                        }

                        goto LABEL_60;
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

LABEL_59:
    v20 = v18;
LABEL_60:
    heap_Free(*(*a1 + 8), v16);
    return v20;
  }

  log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
  return 2310021130;
}

uint64_t hlp_RemoveMNCRecords(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int a7)
{
  v14 = heap_Calloc(*(*a1 + 8), 1, 129);
  if (!v14)
  {
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
    return 2310021130;
  }

  v15 = v14;
  v27 = 0;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v23 = 0;
  v16 = (*(a1[7] + 120))(a2, a3, a5, &v27);
  if ((v16 & 0x80000000) == 0)
  {
    v16 = (*(a1[7] + 168))(a2, a3, a5, 1, 1, &v24, &v25 + 2);
    if ((v16 & 0x80000000) == 0)
    {
      v17 = (*(a1[7] + 168))(a2, a3, a6, 2, 1, &v23, &v25 + 2);
      if ((v17 & 0x80000000) != 0)
      {
        goto LABEL_22;
      }

      v18 = v27;
      if (!v27)
      {
        goto LABEL_22;
      }

      while (1)
      {
        v16 = (*(a1[7] + 168))(a2, a3, v18, 0, 1, &v26, &v25 + 2);
        if ((v16 & 0x80000000) != 0)
        {
          break;
        }

        if (v26 == 4)
        {
          v16 = (*(a1[7] + 168))(a2, a3, v27, 1, 1, &v25, &v25 + 2);
          if ((v16 & 0x80000000) != 0)
          {
            break;
          }

          v17 = (*(a1[7] + 168))(a2, a3, v27, 2, 1, &v24 + 2, &v25 + 2);
          if ((v17 & 0x80000000) != 0)
          {
            goto LABEL_22;
          }

          if (v25 > ~a7)
          {
            v19 = HIWORD(v24) - v25;
            if (v19 <= 127)
            {
              cstdlib_strncpy(v15, (*a4 + v25 + a7), v19);
              v20 = HIWORD(v24);
              v21 = v25;
              v15[HIWORD(v24) - v25] = 0;
              if (v21 < v24 || v20 > v23 || cstdlib_strlen(v15) < 2 || !cstdlib_strstr(v15, "_"))
              {
                goto LABEL_22;
              }

              v16 = (*(a1[7] + 192))(a2, a3, v27);
              if ((v16 & 0x80000000) != 0)
              {
                break;
              }

              v27 = a5;
            }
          }
        }

        LOWORD(a5) = v27;
        v17 = (*(a1[7] + 120))(a2, a3, v27, &v27);
        if ((v17 & 0x80000000) == 0)
        {
          v18 = v27;
          if (v27)
          {
            continue;
          }
        }

        goto LABEL_22;
      }
    }
  }

  v17 = v16;
LABEL_22:
  heap_Free(*(*a1 + 8), v15);
  return v17;
}

uint64_t oneword_TranscribeAcronym(uint64_t a1, char *a2, const char *a3, char *a4, char *a5)
{
  v78 = *MEMORY[0x277D85DE8];
  __c_3 = 0;
  __c_1 = 0;
  __c = 0;
  *v72 = 0;
  v71 = 0;
  cstdlib_strcpy(__dst, "one_word");
  v9 = cstdlib_strlen(__dst);
  v10 = *(*a1 + 8);
  v11 = cstdlib_strlen(a3);
  v12 = heap_Alloc(v10, (v11 + 1));
  if (v12)
  {
    v13 = v12;
    cstdlib_strcpy(v12, a3);
    v61 = a4;
    if (*(a1 + 560) == 1)
    {
      v14 = cstdlib_strchr(a2, 95);
      if (v14)
      {
        v15 = v14 + 1;
      }

      else
      {
        v15 = a2;
      }

      v64 = v15;
      v16 = *v15;
    }

    else
    {
      v64 = 0;
      v16 = 32;
    }

    v63 = v16;
    cstdlib_strlen(v13);
    v18 = 0;
    v19 = 0;
    v20 = a1 + 1228;
    v21 = v9;
    v22 = 0;
    v62 = v21;
    v65 = v21 + 2;
    v69 = 32;
    v66 = v13;
    while (1)
    {
      v23 = v13[v22];
      if (v23 < -64)
      {
        goto LABEL_13;
      }

      if (!(*(*(a1 + 80) + 128))(*(a1 + 64), *(a1 + 72), &v13[v22]))
      {
        break;
      }

LABEL_17:
      v67 = v22;
      if (v19 == v18)
      {
        goto LABEL_88;
      }

      cstdlib_strcpy(*(a1 + 160), "");
      if (!dynamic_strncat((a1 + 160), &v13[v18], v19 - v18, (a1 + 192), *(*a1 + 8)))
      {
        return 2310021130;
      }

      log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P look up %s", *(a1 + 160));
      __c_1 = 0;
      if (*(a1 + 1224))
      {
        cstdlib_strcpy(__s1, "g2p");
        cstdlib_strcat(__s1, (v20 + 3 * **(a1 + 160)));
        v27 = (*(*(a1 + 80) + 232))(*(a1 + 64), *(a1 + 72), __s1, *(a1 + 160), &__c_3, &__c_1, &__c, 0);
      }

      else
      {
        v27 = (*(*(a1 + 80) + 240))(*(a1 + 64), *(a1 + 72), "g2p", *(a1 + 160), &__c_3, &__c_1, &__c, *(a1 + 556), 0);
      }

      v17 = v27;
      if ((v27 & 0x80000000) != 0)
      {
        goto LABEL_94;
      }

      if (!__c_1)
      {
        v69 = 32;
LABEL_73:
        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", __dst, *(a1 + 160));
        v54 = *(*(a1 + 104) + 120);
        v55 = *(a1 + 160);
        v56 = cstdlib_strlen(v55);
        appended = v54(*(a1 + 88), *(a1 + 96), 0, v55, v56);
        if ((appended & 0x80000000) == 0)
        {
          if (cstdlib_strcmp(a2, "normal") && v65 + cstdlib_strlen(a2) <= 0x7F)
          {
            cstdlib_strcat(__dst, "_");
            cstdlib_strcat(__dst, a2);
          }

          if (((*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __dst) & 0x80000000) == 0)
          {
            if (*(a1 + 560))
            {
              v58 = v64;
              v59 = v63;
              if (!v64)
              {
LABEL_85:
                appended = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 0, v72, &v71);
                if ((appended & 0x80000000) == 0)
                {
                  *(*v72 + v71) = 0;
                  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", __dst, *v72);
                  v53 = *v72;
                  v51 = v69;
                  v52 = a1;
LABEL_87:
                  appended = oneword_AppendPhon(v52, v53, "*", "*", v51, 1);
                  if ((appended & 0x80000000) == 0)
                  {
                    goto LABEL_88;
                  }
                }

                goto LABEL_93;
              }
            }

            else
            {
              v59 = *a2;
              v58 = a2;
            }

            cstdlib_strncpy(a5, v58, 0x14uLL);
            v69 = v59;
            goto LABEL_85;
          }

          __dst[v62] = 0;
          appended = (*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __dst);
          if ((appended & 0x80000000) == 0)
          {
            goto LABEL_85;
          }
        }

LABEL_93:
        v17 = appended;
LABEL_94:
        heap_Free(*(*a1 + 8), v13);
        return v17;
      }

      v28 = 0;
      v29 = 0;
      v30 = 0;
      v69 = 32;
      do
      {
        v31 = *(__c_3 + 8 * v28);
        v32 = cstdlib_strchr(v31, __c);
        if (!v32)
        {
          v34 = 0;
LABEL_37:
          v38 = 0;
LABEL_38:
          v41 = 0;
          goto LABEL_39;
        }

        *v32 = 0;
        v33 = cstdlib_strchr(v32 + 1, __c);
        v34 = v33;
        if (!v33)
        {
          goto LABEL_37;
        }

        *v33 = 0;
        v34 = v33 + 1;
        v35 = cstdlib_strchr(v33 + 1, __c);
        if (!v35)
        {
          goto LABEL_37;
        }

        *v35 = 0;
        v36 = cstdlib_strchr(v35 + 1, __c);
        if (!v36)
        {
          goto LABEL_37;
        }

        *v36 = 0;
        v37 = cstdlib_strchr(v36 + 1, __c);
        v38 = v37;
        if (!v37)
        {
          goto LABEL_38;
        }

        *v37 = 0;
        v38 = (v37 + 1);
        v39 = cstdlib_strchr(v37 + 1, __c);
        if (!v39)
        {
          goto LABEL_38;
        }

        *v39 = 0;
        v40 = cstdlib_strchr(v39 + 1, __c);
        v41 = v40;
        if (v40)
        {
          *v40 = 0;
          v41 = v40 + 1;
          v42 = cstdlib_strchr(v40 + 1, __c);
          if (v42)
          {
            *v42 = 0;
          }
        }

LABEL_39:
        if (!v31)
        {
          log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34001, 0);
          heap_Free(*(*a1 + 8), v66);
          return 2310021127;
        }

        oneword_ReplaceUnderscoreWithDot(v31);
        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P Validating %s", v31);
        if (v34 && cstdlib_strcmp(v34, "") && !cstdlib_strstr(v34, a2))
        {
          log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P Domain validation not OK");
        }

        else if (v41 && *(a1 + 1204) && ((v43 = cstdlib_strstr(a2, v41)) == 0 || (v44 = v43, cstdlib_strlen(v41)) && v44[cstdlib_strlen(v41)]) && ((v45 = cstdlib_strstr(*(a1 + 1216), a2), LH_stricmp(v41, *(a1 + 1208))) || !v45 || v45[cstdlib_strlen(a2)] != 124))
        {
          log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P Language %s validation not OK");
        }

        else
        {
          if (v38 && cstdlib_strcmp(v38, ""))
          {
            v46 = cstdlib_atoi(v38);
          }

          else
          {
            v46 = 1;
          }

          v47 = (v46 - 1);
          if (v47 < v29)
          {
            v48 = v29;
          }

          else
          {
            v30 = v31;
            v48 = v46;
          }

          if (v41)
          {
            v49 = v47 >= v29;
            v29 = v48;
            if (v49)
            {
              v69 = *v41;
              cstdlib_strncpy(a5, v41, 0x14uLL);
              v30 = v31;
              v29 = v46;
            }
          }

          else
          {
            v29 = v48;
          }
        }

        ++v28;
      }

      while (v28 < __c_1);
      if (!v30)
      {
        v20 = a1 + 1228;
        v13 = v66;
        goto LABEL_73;
      }

      v50 = cstdlib_strchr(v30, 18);
      v20 = a1 + 1228;
      v13 = v66;
      if (v50)
      {
        *v50 = 0;
      }

      if (cstdlib_strcmp(v30, "_"))
      {
        v51 = v69;
        v52 = a1;
        v53 = v30;
        goto LABEL_87;
      }

LABEL_88:
      v76[0] = v13[v67];
      v76[1] = 0;
      appended = oneword_AppendPhon(a1, v76, "", "", 32, 0);
      if ((appended & 0x80000000) != 0)
      {
        goto LABEL_93;
      }

      v18 = ++v19;
LABEL_90:
      v22 = v19;
      if (cstdlib_strlen(v13) < v19)
      {
        heap_Free(*(*a1 + 8), v13);
        v17 = 0;
        *v61 = v69;
        return v17;
      }
    }

    LOBYTE(v23) = v13[v22];
LABEL_13:
    v24 = v23;
    v25 = (1 << v23) & 0x100002601;
    v26 = v24 > 0x20 || v25 == 0;
    if (v26 && v24 != 95)
    {
      ++v19;
      goto LABEL_90;
    }

    goto LABEL_17;
  }

  v17 = 2310021130;
  log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
  return v17;
}

size_t oneword_ReplaceUnderscoreWithDot(char *a1)
{
  v1 = a1;
  result = cstdlib_strlen(a1);
  v3 = result;
  if (result)
  {
    do
    {
      if (*v1 == 95)
      {
        *v1 = 46;
      }

      ++v1;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t oneword_AppendPhon(uint64_t a1, char *a2, char *__s, uint64_t a4, int a5, uint64_t a6)
{
  if (a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = 32;
  }

  __s2[0] = v11;
  __s2[1] = 0;
  if (cstdlib_strlen(__s) >= 2)
  {
    if (!a6 && cstdlib_strchr(__s, 32))
    {
      if (cstdlib_strlen(a4) <= 1)
      {
        goto LABEL_14;
      }

LABEL_12:
      if (cstdlib_strchr(a4, 32))
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    __s[1] = 0;
  }

  if (cstdlib_strlen(a4) <= 1)
  {
    goto LABEL_14;
  }

  if (!a6)
  {
    goto LABEL_12;
  }

LABEL_13:
  *(a4 + 1) = 0;
LABEL_14:
  if (!cstdlib_strcmp(a2, ""))
  {
    return 0;
  }

  v12 = cstdlib_strlen(*(a1 + 240));
  v13 = cstdlib_strlen(a2);
  v14 = v12 + 7;
  if (!a6)
  {
    v14 = v12 + 1;
  }

  v15 = v14 + v13;
  if ((v14 + v13) >= 0x81u)
  {
    v16 = heap_Realloc(*(*a1 + 8), *(a1 + 240), (v14 + v13));
    if (!v16 || (*(a1 + 240) = v16, (v17 = heap_Realloc(*(*a1 + 8), *(a1 + 248), v15)) == 0) || (*(a1 + 248) = v17, (v18 = heap_Realloc(*(*a1 + 8), *(a1 + 256), v15)) == 0) || (*(a1 + 256) = v18, (v19 = heap_Realloc(*(*a1 + 8), *(a1 + 264), v15)) == 0))
    {
      a6 = 2310021130;
      log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
      return a6;
    }

    *(a1 + 264) = v19;
  }

  if (a6)
  {
    cstdlib_strcat(*(a1 + 240), "◄");
    cstdlib_strcat(*(a1 + 248), " ");
    cstdlib_strcat(*(a1 + 256), " ");
    cstdlib_strcat(*(a1 + 264), " ");
  }

  v20 = cstdlib_strstr(a2, "◄");
  if (cstdlib_strchr(__s, 32) || !v20)
  {
    cstdlib_strcat(*(a1 + 240), a2);
    cstdlib_strcat(*(a1 + 248), __s);
    cstdlib_strcat(*(a1 + 256), a4);
    cstdlib_strcat(*(a1 + 264), __s2);
    v39 = cstdlib_strlen(a2);
    v40 = Utf8_LengthInUtf8chars(a2, v39);
    if (v40 > cstdlib_strlen(__s))
    {
      v41 = 0;
      do
      {
        cstdlib_strcat(*(a1 + 248), "~");
        ++v41;
      }

      while ((v40 - cstdlib_strlen(__s)) > v41);
    }

    if (v40 > cstdlib_strlen(a4))
    {
      v42 = 0;
      do
      {
        cstdlib_strcat(*(a1 + 256), "~");
        ++v42;
      }

      while ((v40 - cstdlib_strlen(a4)) > v42);
    }

    if (v40 > cstdlib_strlen(__s2))
    {
      v43 = 0;
      do
      {
        cstdlib_strcat(*(a1 + 264), __s2);
        ++v43;
      }

      while ((v40 - cstdlib_strlen(__s2)) > v43);
    }
  }

  else
  {
    v21 = cstdlib_strlen("◄");
    v45 = cstdlib_strstr(&v20[v21], "◄");
    if (!v45)
    {
      log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34001, 0);
      return 2310021127;
    }

    v22 = *(a1 + 240);
    v23 = cstdlib_strlen("◄");
    cstdlib_strncat(v22, a2, (v23 + v20 - a2));
    v24 = cstdlib_strlen("◄");
    if (Utf8_LengthInUtf8chars(a2, v20 - a2 + v24))
    {
      v25 = 0;
      do
      {
        cstdlib_strcat(*(a1 + 248), " ");
        cstdlib_strcat(*(a1 + 256), " ");
        cstdlib_strcat(*(a1 + 264), " ");
        ++v25;
        v26 = cstdlib_strlen("◄");
      }

      while (Utf8_LengthInUtf8chars(a2, v20 - a2 + v26) > v25);
    }

    v27 = *(a1 + 240);
    v28 = &v20[cstdlib_strlen("◄")];
    v29 = cstdlib_strlen("◄");
    cstdlib_strncat(v27, v28, (v45 - v20 - v29));
    cstdlib_strcat(*(a1 + 248), __s);
    cstdlib_strcat(*(a1 + 256), a4);
    cstdlib_strcat(*(a1 + 264), __s2);
    v30 = Utf8_LengthInUtf8chars(v20, v45 - v20) - 1;
    if (v30 > cstdlib_strlen(__s))
    {
      v31 = 0;
      do
      {
        cstdlib_strcat(*(a1 + 248), "~");
        ++v31;
      }

      while (v30 - cstdlib_strlen(__s) > v31);
    }

    if (v30 > cstdlib_strlen(a4))
    {
      v32 = 0;
      do
      {
        cstdlib_strcat(*(a1 + 256), "~");
        ++v32;
      }

      while (v30 - cstdlib_strlen(a4) > v32);
    }

    if (v30 > cstdlib_strlen(__s2))
    {
      v33 = 0;
      do
      {
        cstdlib_strcat(*(a1 + 264), __s2);
        ++v33;
      }

      while (v30 - cstdlib_strlen(__s2) > v33);
    }

    cstdlib_strcat(*(a1 + 240), v45);
    v34 = cstdlib_strlen(a2);
    v35 = Utf8_LengthInUtf8chars(a2, v34) << 16;
    if (v35 > (Utf8_LengthInUtf8chars(a2, v45 - a2) << 16))
    {
      v36 = 0;
      do
      {
        cstdlib_strcat(*(a1 + 248), " ");
        cstdlib_strcat(*(a1 + 256), " ");
        cstdlib_strcat(*(a1 + 264), " ");
        ++v36;
        v37 = cstdlib_strlen(a2);
        v38 = Utf8_LengthInUtf8chars(a2, v37);
      }

      while (v38 - Utf8_LengthInUtf8chars(a2, v45 - a2) > v36);
    }
  }

  if (a6)
  {
    cstdlib_strcat(*(a1 + 240), "◄");
    cstdlib_strcat(*(a1 + 248), " ");
    cstdlib_strcat(*(a1 + 256), " ");
    cstdlib_strcat(*(a1 + 264), " ");
    return 0;
  }

  return a6;
}

uint64_t oneword_ConvertPhon(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned __int16 *a8, uint64_t a9, _WORD *a10, unsigned __int16 *a11, int a12)
{
  v12 = a8;
  v143 = *MEMORY[0x277D85DE8];
  v139 = a4;
  v18 = *a8;
  v138 = *a8;
  v136 = 0;
  v137 = 0;
  v135 = 0;
  v134 = 1;
  v133 = 0;
  __s1 = 0;
  v131 = 200;
  v129 = 0;
  v128 = 0;
  __s = 0;
  cstdlib_strcpy(__dst, "");
  v19 = *a10;
  if (v19 < *a11)
  {
    v20 = (a9 + 32 * v19 + 12);
    do
    {
      if (*v20 - a12 >= a5)
      {
        break;
      }

      *v20 += *(a1 + 224);
      v20 += 8;
      *a10 = ++v19;
    }

    while (v19 < *a11);
  }

  v21 = 0;
  if (v18)
  {
    while (!v21 || SHIWORD(v135) < a5)
    {
      v22 = (*(*(a1 + 56) + 168))(a6, a7, v18, 0, 1, &v137, &v136 + 2);
      if ((v22 & 0x80000000) != 0)
      {
        return v22;
      }

      if (v137 > 3)
      {
        v23 = 0;
        if (v137 == 5)
        {
          v21 = v138;
        }
      }

      else
      {
        v22 = (*(*(a1 + 56) + 168))(a6, a7, v138, 2, 1, &v135 + 2, &v136 + 2);
        if ((v22 & 0x80000000) != 0)
        {
          return v22;
        }

        v23 = v138;
      }

      v22 = (*(*(a1 + 56) + 120))(a6, a7);
      if ((v22 & 0x80000000) != 0)
      {
        return v22;
      }

      if (v23)
      {
        v22 = (*(*(a1 + 56) + 192))(a6, a7, v23);
        if ((v22 & 0x80000000) != 0)
        {
          return v22;
        }

        v18 = v138;
        if (*(a1 + 280) == v23)
        {
          *(a1 + 280) = v138;
        }

        if (!v18)
        {
          break;
        }
      }

      else
      {
        LOWORD(v18) = v138;
        if (!v138)
        {
          break;
        }
      }
    }
  }

  v22 = (*(*(a1 + 56) + 176))(a6, a7, v21, 3, &__s1, &v136 + 2);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  v128 = 0;
  if (((*(*(a1 + 56) + 184))(a6, a7, v21, 9, &v128) & 0x80000000) == 0 && v128 == 1)
  {
    v22 = (*(*(a1 + 56) + 176))(a6, a7, v21, 9, &__s, &v136 + 2);
    if ((v22 & 0x80000000) != 0)
    {
      return v22;
    }
  }

  cstdlib_strcpy(v140, "EXTMRKP");
  v24 = cstdlib_strstr(__s1, "\x14");
  if (v24)
  {
    v25 = v24;
    v26 = v21;
    *v24 = 0;
    v27 = cstdlib_strlen("\x14");
    v28 = cstdlib_strstr(&v25[v27], "\x14");
    if (v28)
    {
      *v28 = 0;
      v29 = v28 + 1;
      if (cstdlib_strlen(v28 + 1) == 3)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      v123 = v30;
    }

    else
    {
      v123 = 0;
    }

    v21 = v26;
    if (cstdlib_strlen(&v25[v27]) && cstdlib_strlen(&v25[v27]) + 1 <= 0x14)
    {
      cstdlib_strcpy(v140, &v25[v27]);
    }
  }

  else
  {
    v123 = 0;
  }

  v31 = __s1;
  if (*__s1 == 32)
  {
    v32 = __s1 + 1;
    do
    {
      __s1 = v32;
      v33 = *v32++;
    }

    while (v33 == 32);
    v31 = v32 - 1;
  }

  v34 = cstdlib_strchr(v31, 18);
  if (v34)
  {
    *v34 = 0;
    v121 = v34 + 1;
  }

  else
  {
    v121 = 0;
  }

  v35 = cstdlib_strlen(__s1);
  v36 = __s1;
  if (v35 >= 5)
  {
    v37 = *__s1;
    if (v37 != 92)
    {
      goto LABEL_54;
    }

    if (__s1[1] == 84)
    {
      *&__c[3] = 0;
      *&__c[1] = -1;
      __c[0] = 0;
      cstdlib_strcpy(v141, "lngphon_e");
      v142 = __s1[2];
      v22 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", v141, &__c[3], &__c[1], __c);
      if ((v22 & 0x80000000) != 0)
      {
        return v22;
      }

      if (*&__c[1])
      {
        v38 = cstdlib_strchr(**&__c[3], __c[0]);
        if (v38)
        {
          *v38 = 0;
        }

        cstdlib_strncpy(__dst, **&__c[3], 3uLL);
      }

      v36 = __s1 + 4;
      __s1 += 4;
    }
  }

  v37 = *v36;
LABEL_54:
  if (v37 == 35)
  {
    *&__c[3] = v21;
    v39 = v21 != 0;
    v40 = v137;
    if (!v21 || v137 == 4)
    {
      LOWORD(v41) = v21;
    }

    else
    {
      LOWORD(v41) = v21;
      if (v137 - 11 <= 0xFFFFFFFD)
      {
        LOWORD(v41) = v21;
        while (1)
        {
          v22 = (*(*(a1 + 56) + 136))(a6, a7, v41, &__c[3]);
          if ((v22 & 0x80000000) != 0)
          {
            return v22;
          }

          if (*&__c[3])
          {
            v22 = (*(*(a1 + 56) + 168))(a6, a7);
            if ((v22 & 0x80000000) != 0)
            {
              return v22;
            }

            v41 = *&__c[3];
          }

          else
          {
            v41 = 0;
          }

          v39 = v41 != 0;
          v40 = v137;
          if (v41)
          {
            if (v137 != 4 && v137 - 11 < 0xFFFFFFFE)
            {
              continue;
            }
          }

          break;
        }
      }
    }

    if (v39)
    {
      *&__c[1] = v41;
      *v141 = v40;
      v22 = (*(*(a1 + 56) + 160))(a6, a7, v41, 8, 1, &v131, &v136);
      if ((v22 & 0x80000000) == 0)
      {
        while (1)
        {
          v22 = (*(*(a1 + 56) + 120))(a6, a7, *&__c[1], &__c[1]);
          if ((v22 & 0x80000000) != 0)
          {
            break;
          }

          if (!*&__c[1])
          {
            goto LABEL_86;
          }

          v22 = (*(*(a1 + 56) + 168))(a6, a7);
          if ((v22 & 0x80000000) != 0)
          {
            break;
          }

          if (!*&__c[1])
          {
            goto LABEL_86;
          }

          if (*&__c[1] == v21 || *v141 != 8)
          {
            goto LABEL_86;
          }

          v22 = (*(*(a1 + 56) + 160))(a6, a7);
          if ((v22 & 0x80000000) != 0)
          {
            return v22;
          }
        }
      }

      return v22;
    }

LABEL_86:
    v36 = __s1;
    if (*__s1 == 35)
    {
      v46 = __s1 + 1;
      do
      {
        __s1 = v46;
        v47 = *v46++;
      }

      while (v47 == 35);
      v36 = v46 - 1;
    }
  }

  v137 = 10;
  LOWORD(v48) = v139;
  while (1)
  {
    v49 = *(a2 + v48);
    v50 = v49 > 0x20 || ((1 << v49) & 0x100002600) == 0;
    if (v50 && v49 != 95)
    {
      break;
    }

    LOWORD(v48) = v48 + 1;
    v139 = v48;
  }

  if (a5 <= v48)
  {
    v119 = 0;
    v51 = 0;
LABEL_200:
    v44 = (*(*(a1 + 56) + 120))(a6, a7, v135, v12);
    if ((v44 & 0x80000000) == 0 && v119 && v129 >= 2u)
    {
      v59 = (*(*(a1 + 56) + 160))(a6, a7, v119, 7, 1, &v129, &v136);
LABEL_204:
      v44 = v59;
      if (!v51)
      {
        return v44;
      }

      goto LABEL_208;
    }

    goto LABEL_207;
  }

  v51 = 0;
  v119 = 0;
  v52 = 0;
  v53 = a5;
  v118 = v12;
  v117 = v21;
  while (2)
  {
    v54 = v48;
    if (a5 <= (v48 + 1))
    {
      v55 = v48 + 1;
    }

    else
    {
      v55 = a5;
    }

    while (1)
    {
      v56 = *(a2 + v54);
      v57 = v56 > 0x20 || ((1 << v56) & 0x100002600) == 0;
      if (!v57 || v56 == 95)
      {
        break;
      }

      if (++v54 >= v53)
      {
        goto LABEL_111;
      }
    }

    v55 = v54;
LABEL_111:
    HIWORD(v135) = v55;
    v58 = *(a1 + 56);
    v120 = v52;
    if (v52)
    {
      v59 = (*(v58 + 80))(a6, a7, v135, &v135);
    }

    else
    {
      v59 = (*(v58 + 88))(a6, a7, v21, &v135);
    }

    if ((v59 & 0x80000000) != 0)
    {
      goto LABEL_204;
    }

    v59 = (*(*(a1 + 56) + 160))(a6, a7, v135, 0, 1, &v137, &v136);
    if ((v59 & 0x80000000) != 0)
    {
      goto LABEL_204;
    }

    v59 = (*(*(a1 + 56) + 160))(a6, a7, v135, 1, 1, &v139, &v136);
    if ((v59 & 0x80000000) != 0)
    {
      goto LABEL_204;
    }

    v59 = (*(*(a1 + 56) + 160))(a6, a7, v135, 2, 1, &v135 + 2, &v136);
    if ((v59 & 0x80000000) != 0)
    {
      goto LABEL_204;
    }

    v124 = v51;
    if (__s)
    {
      v60 = *(*(a1 + 56) + 160);
      v61 = v135;
      v62 = cstdlib_strlen(__s);
      v63 = v60(a6, a7, v61, 9, (v62 + 1), __s, &v136);
      if ((v63 & 0x80000000) != 0)
      {
        goto LABEL_206;
      }
    }

    v64 = *(*(a1 + 56) + 160);
    v65 = v135;
    v66 = cstdlib_strlen(v140);
    v63 = v64(a6, a7, v65, 21, (v66 + 1), v140, &v136);
    if ((v63 & 0x80000000) != 0)
    {
      goto LABEL_206;
    }

    if (v123)
    {
      v67 = *(*(a1 + 56) + 160);
      v68 = v135;
      v69 = cstdlib_strlen(v123);
      v63 = v67(a6, a7, v68, 12, (v69 + 1), v123, &v136);
      if ((v63 & 0x80000000) != 0)
      {
        goto LABEL_206;
      }
    }

    ++v129;
    for (i = v36 + 1; ; ++i)
    {
      v71 = *v36;
      if (v71 > 0x22)
      {
        break;
      }

      if (!*v36 || v71 == 32)
      {
        goto LABEL_135;
      }

LABEL_130:
      ++v36;
    }

    if (v71 == 35)
    {
      goto LABEL_135;
    }

    if (v71 != 95)
    {
      goto LABEL_130;
    }

    if (v36[1] == 95)
    {
      v72 = 2;
    }

    else
    {
      v72 = 1;
    }

    v133 = v72;
LABEL_135:
    *v36 = 0;
    if (!cstdlib_strcmp(__s1, ""))
    {
      v63 = (*(*(a1 + 56) + 160))(a6, a7, v135, 3, 1, "", &v136);
      if ((v63 & 0x80000000) != 0)
      {
        goto LABEL_206;
      }

      v51 = v124;
      goto LABEL_158;
    }

    v73 = *(*a1 + 8);
    v74 = (2 * (cstdlib_strlen(__s1) & 0x7FFFFFFF)) | 1;
    v75 = v73;
    v51 = v124;
    v76 = heap_Realloc(v75, v124, v74);
    if (!v76)
    {
      v44 = 2310021130;
      log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
      if (!v124)
      {
        return v44;
      }

      goto LABEL_208;
    }

    v77 = v76;
    v116 = v36;
    if (!*(a1 + 580))
    {
      cstdlib_strcpy(v76, __s1);
      v51 = v77;
LABEL_149:
      {
        v93 = *(*(a1 + 56) + 160);
        v125 = v51;
        v94 = v135;
        v95 = cstdlib_strlen(v125);
        v96 = v94;
        v51 = v125;
        v97 = v93(a6, a7, v96, 3, (v95 + 1), v125, &v136);
        v36 = v116;
        if ((v97 & 0x80000000) != 0)
        {
          v44 = v97;
LABEL_209:
          v87 = 0;
LABEL_210:
          heap_Free(*(*a1 + 8), v125);
          goto LABEL_211;
        }

        goto LABEL_158;
      }

      v98 = (*(*(a1 + 56) + 160))(a6, a7, v135, 3, 1, "", &v136);
      v36 = v116;
      if ((v98 & 0x80000000) == 0)
      {
LABEL_158:
        v99 = v121;
        v124 = v51;
        if (v121)
        {
          if (*(a1 + 2192))
          {
            v63 = mosynt_LHPlusMapping(*(a1 + 48), *(a1 + 2200), *(a1 + 2240), v121, v141, 5000);
            v99 = v141;
            if ((v63 & 0x80000000) != 0)
            {
              goto LABEL_206;
            }
          }

          v122 = *(*(a1 + 56) + 160);
          v100 = v135;
          v101 = v99;
          v102 = cstdlib_strlen(v99);
          v63 = (v122)(a6, a7, v100, 11, (v102 + 1), v101, &v136);
          if ((v63 & 0x80000000) != 0)
          {
            goto LABEL_206;
          }

          v119 = v135;
        }

        v63 = (*(*(a1 + 56) + 160))(a6, a7);
        if ((v63 & 0x80000000) == 0)
        {
          v63 = (*(*(a1 + 56) + 160))(a6, a7, v135, 6, 2, "*", &v136);
          if ((v63 & 0x80000000) == 0)
          {
            v59 = (*(*(a1 + 56) + 160))(a6, a7, v135, 7, 1, &v134, &v136);
            v51 = v124;
            if ((v59 & 0x80000000) != 0)
            {
              goto LABEL_204;
            }

            v59 = (*(*(a1 + 56) + 160))(a6, a7, v135, 20, 1, &v133, &v136);
            if ((v59 & 0x80000000) != 0)
            {
              goto LABEL_204;
            }

            v103 = *(*(a1 + 56) + 160);
            v104 = v135;
            if (__s)
            {
              v105 = cstdlib_strlen(__s);
              v106 = __s;
              v107 = (v105 + 1);
              v108 = a6;
              v109 = a7;
              v110 = v104;
            }

            else
            {
              v108 = a6;
              v109 = a7;
              v110 = v135;
              v107 = 1;
              v106 = "";
            }

            v63 = v103(v108, v109, v110, 9, v107, v106, &v136);
            if ((v63 & 0x80000000) == 0)
            {
              v51 = v124;
              if (v71 == 35 || v124 && cstdlib_strlen(v124) >= 2 && v124[cstdlib_strlen(v124) - 2] == 42 && (v124[cstdlib_strlen(v124) - 1] == 44 || v124[cstdlib_strlen(v124) - 1] == 59 || v124[cstdlib_strlen(v124) - 1] == 58))
              {
                v59 = (*(*(a1 + 56) + 160))(a6, a7, v135, 8, 1, &v131, &v136);
                if ((v59 & 0x80000000) != 0)
                {
                  goto LABEL_204;
                }
              }

              if (v71)
              {
                *v36 = v71;
                v12 = v118;
                v53 = a5;
                v111 = v120;
                while (1)
                {
                  v112 = *i;
                  if (v112 != 95 && v112 != 35)
                  {
                    break;
                  }

                  ++i;
                }

                __s1 = i;
                v36 = i;
              }

              else
              {
                v12 = v118;
                v53 = a5;
                v111 = v120;
              }

              v48 = HIWORD(v135);
              v21 = v117;
              if (HIWORD(v135) < a5)
              {
                while (1)
                {
                  v113 = *(a2 + v48);
                  v114 = v113 > 0x20 || ((1 << v113) & 0x100002600) == 0;
                  if (v114 && v113 != 95)
                  {
                    break;
                  }

                  if (a5 == ++v48)
                  {
                    LOWORD(v48) = a5;
                    break;
                  }
                }
              }

              v139 = v48;
              if ((v111 & 1) == 0)
              {
                LOWORD(v135) = v117;
              }

              v121 = 0;
              v52 = 1;
              if (a5 <= v48)
              {
                goto LABEL_200;
              }

              continue;
            }
          }
        }

LABEL_206:
        v44 = v63;
        v51 = v124;
LABEL_207:
        if (!v51)
        {
          return v44;
        }

        goto LABEL_208;
      }

      v44 = v98;
LABEL_208:
      v125 = v51;
      goto LABEL_209;
    }

    break;
  }

  v125 = v76;
  *&__c[3] = 0;
  v78 = cstdlib_strcmp(__dst, "");
  v115 = *(*(a1 + 152) + 72);
  v79 = __s1;
  v80 = (2 * cstdlib_strlen(__s1)) | 1;
  if (v78)
  {
    v81 = __dst;
    v82 = v79;
    v83 = v125;
  }

  else
  {
    v82 = v79;
    v83 = v125;
    v81 = 0;
  }

  v44 = v115(*(a1 + 136), *(a1 + 144), 1, v82, v80, v83, v81);
  if ((v44 & 0x80000000) != 0)
  {
    goto LABEL_209;
  }

  v84 = *(*a1 + 8);
  v85 = cstdlib_strlen(v125);
  v86 = heap_Alloc(v84, (v85 + 1));
  v87 = v86;
  if (!v86 || (cstdlib_strcpy(v86, v125), v88 = cstdlib_strlen(v125), v89 = Utf8_DepesLengthInBytesUtf8(v125, v88), (v90 = heap_Realloc(*(*a1 + 8), v125, v89 + 1)) == 0))
  {
    v44 = 2310021130;
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
    goto LABEL_210;
  }

  v51 = v90;
  v91 = cstdlib_strlen(v87);
  v92 = utf8_DepesToUtf8(v87, v91, 0, v51, v89, &__c[3], 0);
  if ((v92 & 0x80000000) == 0)
  {
    v51[*&__c[3]] = 0;
    heap_Free(*(*a1 + 8), v87);
    goto LABEL_149;
  }

  v44 = v92;
  heap_Free(*(*a1 + 8), v51);
LABEL_211:
  if (v87)
  {
    heap_Free(*(*a1 + 8), v87);
  }

  return v44;
}

uint64_t oneword_G2PLookup(void **a1, const char **a2, __int16 a3, unsigned __int16 *a4, char *a5, uint64_t a6, uint64_t a7, unsigned __int16 *a8, uint64_t a9, _WORD *a10, unsigned __int16 *a11, __int16 a12, int a13)
{
  v144 = *MEMORY[0x277D85DE8];
  v134 = a3;
  v20 = *a4;
  v133 = 0;
  v132 = 0;
  v131 = 0;
  v130 = 3;
  v129 = 0;
  v128 = a3 - 1;
  v126 = 0;
  v125 = 0;
  v124 = 0;
  v118 = *a8;
  v21 = *(a1 + 548) != 0;
  v22 = (*a1)[1];
  v23 = cstdlib_strlen(*a2);
  v24 = heap_Calloc(v22, 1, v23 + 1);
  if (!v24)
  {
    v30 = 2310021130;
    log_OutPublic((*a1)[4], "FE_ONEWORD", 34000, 0);
    return v30;
  }

  v25 = v24;
  v117 = v21;
  v127 = 0;
  v26 = heap_Calloc((*a1)[1], 1, 25016);
  if (!v26)
  {
    v30 = 2310021130;
    log_OutPublic((*a1)[4], "FE_ONEWORD", 34000, 0);
    goto LABEL_296;
  }

  v27 = v26;
  v116 = v20;
  MdeSettings = mosynt_ResetMosyntWS(a1[6], v26);
  if ((MdeSettings & 0x80000000) != 0)
  {
    goto LABEL_294;
  }

  cstdlib_strcpy(__dst, "");
  cstdlib_strcpy(__src, "");
  cstdlib_strcpy(v141, "");
  cstdlib_strcpy(__s2, "");
  cstdlib_strcpy(__s, "");
  cstdlib_strcpy(v138, "");
  *(a1 + 543) = 0;
  if (!cstdlib_strcmp(a5, a1 + 300))
  {
    goto LABEL_7;
  }

  MdeSettings = oneword_GetMdeSettings(a1, a5);
  if ((MdeSettings & 0x80000000) != 0)
  {
LABEL_294:
    v30 = MdeSettings;
    goto LABEL_295;
  }

  cstdlib_strcpy(a1 + 300, a5);
LABEL_7:
  MdeSettings = (a1[7][21])(a6, a7, *a8, 0, 1, &v131, &v133);
  if ((MdeSettings & 0x80000000) != 0)
  {
    goto LABEL_294;
  }

  for (i = oneword_read_LD_W_INPUTSPACETAG(a1, a6, a7, v131, *a8, &v125); ; i = (a1[7][21])(a6, a7))
  {
    v30 = i;
    if ((i & 0x80000000) != 0)
    {
      goto LABEL_295;
    }

    if (v131 - 5 > 2)
    {
      break;
    }

    v30 = (a1[7][15])(a6, a7, *a8, a8);
    if ((v30 & 0x80000000) != 0 || !*a8)
    {
      goto LABEL_295;
    }
  }

  if (*(a1 + 542) != 1)
  {
    goto LABEL_20;
  }

  v31 = *(a1 + 518);
  if (v31 != 1)
  {
    if (v31 || a1[267])
    {
      goto LABEL_20;
    }

LABEL_302:
    v33 = 0;
    v32 = 1;
    goto LABEL_21;
  }

  if (a1[267])
  {
    goto LABEL_302;
  }

LABEL_20:
  v32 = 0;
  v33 = 1;
LABEL_21:
  LOWORD(v34) = *a8;
  if (!*a8)
  {
    goto LABEL_295;
  }

  if (v126 >= *a4)
  {
    LOWORD(v112) = 0;
LABEL_299:
    if (v112)
    {
      *a8 = v112;
    }

    goto LABEL_295;
  }

  v105 = v33;
  v106 = v32;
  v112 = 0;
  v104 = a1 + 1228;
  v102 = (a1 + 21);
  v103 = (a1 + 20);
  v100 = (a1 + 23);
  v101 = (a1 + 22);
  v98 = (a1 + 25);
  v99 = (a1 + 24);
  v96 = (a1 + 27);
  v97 = (a1 + 26);
  v111 = -1;
  v113 = 3;
  v107 = 1;
  while (1)
  {
    v123 = 0;
    MdeSettings = (a1[7][15])(a6, a7, v34, &v132);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_294;
    }

    v123 = v132;
    if (v132)
    {
      MdeSettings = (a1[7][21])(a6, a7);
      if ((MdeSettings & 0x80000000) != 0)
      {
        goto LABEL_294;
      }

      v35 = v130;
      v36 = v132;
    }

    else
    {
      v36 = 0;
      v35 = 3;
      v130 = 3;
    }

    MdeSettings = oneword_read_LD_W_INPUTSPACETAG(a1, a6, a7, v35, v36, &v125);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_294;
    }

    if (v130 - 5 <= 2)
    {
      while (1)
      {
        MdeSettings = (a1[7][15])(a6, a7, v132, &v132);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }

        if (!v132)
        {
          break;
        }

        MdeSettings = (a1[7][21])(a6, a7);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }

        MdeSettings = (a1[7][21])(a6, a7, v132, 1, 1, &v124 + 2, &v133);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }

        MdeSettings = (a1[7][21])(a6, a7, v132, 2, 1, &v124, &v133);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }

        if (v130 - 5 >= 3)
        {
          goto LABEL_39;
        }
      }

      v130 = 3;
    }

LABEL_39:
    MdeSettings = (a1[7][21])(a6, a7, *a8, 1, 1, &v134, &v133);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_294;
    }

    v37 = v134;
    v38 = v128;
    if (v134 < v128)
    {
      goto LABEL_41;
    }

    if (v131 != 3 && v113 == 3)
    {
      v111 = *a8;
      if (oneword_GetWord(*(a1 + 112) + v134, *a2, __dst))
      {
        if (v132 && cstdlib_strcmp(a5, "prompt") && cstdlib_strcmp(a5, "internal-nuance-system-norm"))
        {
          v91 = v123;
          cstdlib_strcpy(__src, __dst);
          MdeSettings = oneword_GetMultiWordLen(a1, __src, a5, __b, &v129);
          if ((MdeSettings & 0x80000000) != 0)
          {
            goto LABEL_294;
          }

          v90 = v129;
          if (v129)
          {
            if (v134 > v128)
            {
              v39 = 0;
              v92 = 0;
              while (1)
              {
                v135[0] = 0;
                v122 = 0;
                if (v92)
                {
                  v40 = v92;
                }

                else
                {
                  v40 = v91;
                }

                v123 = v40;
                if (v40 && __b[v39])
                {
                  v119 = 0;
                  v108 = v39;
                  while (1)
                  {
                    MdeSettings = (a1[7][21])(a6, a7, v40, 0, 1, &v122, &v133);
                    if ((MdeSettings & 0x80000000) != 0)
                    {
                      goto LABEL_294;
                    }

                    if (v122 == 3)
                    {
                      ++v119;
                    }

                    else if (v122 == 5)
                    {
                      MdeSettings = (a1[7][22])(a6, a7, v123, 4, v135, &v133);
                      if ((MdeSettings & 0x80000000) != 0)
                      {
                        goto LABEL_294;
                      }

                      if (!cstdlib_strcmp(v135[0], "phon") || !cstdlib_strcmp(v135[0], "prompt") || !cstdlib_strcmp(v135[0], "internal-nuance-system-norm"))
                      {
                        v39 = v108;
                        __b[v108] = v119;
                        goto LABEL_76;
                      }

                      v92 = v123;
                    }

                    MdeSettings = (a1[7][15])(a6, a7, v123, &v123);
                    if ((MdeSettings & 0x80000000) != 0)
                    {
                      goto LABEL_294;
                    }

                    v40 = v123;
                    if (!v123)
                    {
                      break;
                    }

                    v39 = v108;
                    if (v119 >= __b[v108])
                    {
                      goto LABEL_76;
                    }
                  }

                  v39 = v108;
                }

LABEL_76:
                if (!oneword_GetMultiWord((*(a1 + 112) + v134), *a2, __src, __b[v39]))
                {
                  goto LABEL_96;
                }

                cstdlib_strcpy(__s, __src);
                if (((a1[10][18])(a1[8], a1[9], a5, __s, 256) & 0x80000000) != 0)
                {
                  goto LABEL_96;
                }

                v109 = v39;
                MdeSettings = oneword_Lookup(a1, v27, a2, __s, __src, a5, v125, v134, *a8, a6, a7, &v128, 0, a13, v117);
                if ((MdeSettings & 0x80000000) != 0)
                {
                  goto LABEL_294;
                }

                v41 = v116;
                if (v128 > *a4)
                {
                  break;
                }

                if (*(a1 + 500) && cstdlib_strlen(__s))
                {
                  v93 = v27;
                  v44 = 0;
                  v120 = 0;
                  v45 = 0;
                  do
                  {
                    if (__s[v44] == 95)
                    {
                      __s[v44] = 32;
                      v120 = 1;
                    }

                    v44 = ++v45;
                  }

                  while (cstdlib_strlen(__s) > v45);
                  if (v120)
                  {
                    v46 = oneword_Lookup(a1, v93, a2, __s, __src, a5, v125, v134, *a8, a6, a7, &v128, 0, a13, v117);
                    if ((v46 & 0x80000000) != 0)
                    {
                      goto LABEL_303;
                    }

                    if (v128 > *a4)
                    {
                      v42 = v128;
                      v41 = v116;
                      v39 = v109;
                      v27 = v93;
                      goto LABEL_81;
                    }
                  }

                  v39 = v109;
                  v27 = v93;
                }

LABEL_96:
                if (++v39 >= v90 || v134 <= v128)
                {
                  goto LABEL_98;
                }
              }

              v42 = v128;
LABEL_81:
              *a4 = v42;
              v85 = v42 > v41;
              v43 = v112;
              if (!v85)
              {
                v43 = v92;
              }

              v112 = v43;
              goto LABEL_96;
            }
          }
        }

LABEL_98:
        LOWORD(v47) = v134;
        v48 = v128;
        if (v134 >= v128)
        {
          MdeSettings = oneword_Lookup(a1, v27, a2, __dst, __dst, a5, v125, v134, *a8, a6, a7, &v128, 0, a13, v117);
          if ((MdeSettings & 0x80000000) != 0)
          {
            goto LABEL_294;
          }

          isInputBetweenPOIMrk = oneword_isInputBetweenPOIMrk(a9, *a11, v134, v128);
          v47 = v134;
          v48 = v128;
          if (isInputBetweenPOIMrk)
          {
            LOWORD(v122) = 0;
            if (v134 < v128)
            {
              v94 = v27;
              v95 = a5;
              while (1)
              {
                v50 = &(*a2)[v47];
                v51 = *(a1 + 112);
                if (utf8_IsChineseLetter(&v50[v51]))
                {
                  v121 = v50;
                  v52 = utf8_determineUTF8CharLength(v50[v51]);
                  v53 = v52;
                  v54 = v47 + v52;
                  LOWORD(v122) = v47 + v52;
                  if (v134 != v47 || v128 > v54)
                  {
                    v110 = v47 + v52;
                    cstdlib_memset(v135, 0, 0x80uLL);
                    cstdlib_strncpy(v135, &v121[v51], v53);
                    v27 = v94;
                    a5 = v95;
                    MdeSettings = oneword_Lookup(a1, v94, a2, v135, v135, v95, v125, v47, *a8, a6, a7, &v122, 0, a13, v117);
                    v54 = v110;
                    if ((MdeSettings & 0x80000000) != 0)
                    {
                      goto LABEL_294;
                    }

                    goto LABEL_110;
                  }
                }

                else
                {
                  v54 = v47 + 1;
                }

                v27 = v94;
                a5 = v95;
LABEL_110:
                v48 = v128;
                v47 = v54;
                if (v128 <= v54)
                {
                  LOWORD(v47) = v134;
                  break;
                }
              }
            }
          }
        }

        if (v48 <= v47)
        {
          cstdlib_strcpy(__s2, __dst);
          if (((a1[10][18])(a1[8], a1[9], a5, __s2, 128) & 0x80000000) == 0)
          {
            if (cstdlib_strcmp(__dst, __s2))
            {
              MdeSettings = oneword_Lookup(a1, v27, a2, __s2, __dst, a5, v125, v134, *a8, a6, a7, &v128, 0, a13, v117);
              if ((MdeSettings & 0x80000000) != 0)
              {
                goto LABEL_294;
              }
            }
          }
        }
      }

      v37 = v134;
      v38 = v128;
      if (v134 >= v128 && *(a1 + 73))
      {
        LOWORD(v135[0]) = 0;
        MdeSettings = oneword_NonDctDpsMde(a1, v134, __dst, a5, *a8, v135, a6, a7);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }

        if (LOWORD(v135[0]))
        {
          v130 = 0;
          v132 = v135[0];
        }

        v107 = 0;
        v37 = v134;
        v38 = v128;
      }

      else
      {
        v107 = 0;
      }

      v118 = v111;
    }

    if (v37 >= v38 && (v113 != 3 || v130 != 3))
    {
      break;
    }

    if (v37 < v38 || v113 != 3 || v130 != 3)
    {
      goto LABEL_41;
    }

    if (v131)
    {
      if (v131 <= 2)
      {
        LOWORD(v135[0]) = 0;
        LOWORD(v122) = 0;
        log_OutText((*a1)[4], "FE_ONEWORD", 5, 0, "Front end oneword: Digit or punctuation not in G2P dictionary. Word='%s', tokenType=%d", __dst, v131);
        v55 = v134;
        v128 = v55 + cstdlib_strlen(__dst);
        v131 = 4;
        MdeSettings = (a1[7][11])(a6, a7, *a8, a8);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }

        MdeSettings = (a1[7][20])(a6, a7, *a8, 0, 1, &v131, v135);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }

        MdeSettings = (a1[7][20])(a6, a7, *a8, 1, 1, &v134, v135);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }

        MdeSettings = (a1[7][20])(a6, a7, *a8, 2, 1, &v128, v135);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }

        MdeSettings = (a1[7][20])(a6, a7, *a8, 3, 1, "", v135);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }

        MdeSettings = (a1[7][20])(a6, a7, *a8, 5, 2, "*", v135);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }

        MdeSettings = (a1[7][20])(a6, a7, *a8, 6, 2, "*", v135);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }

        LOWORD(v122) = 1;
        MdeSettings = (a1[7][20])(a6, a7, *a8, 7, 1, &v122, v135);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }

        MdeSettings = (a1[7][20])(a6, a7, *a8, 9, 1, "", v135);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }
      }

      goto LABEL_41;
    }

    MdeSettings = (a1[7][21])(a6, a7, *a8, 2, 1, &v126, &v133);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_294;
    }

    v61 = *(a1 + 112);
    v62 = v61 + v134;
    v63 = (v126 + v61) - (v61 + v134);
    if (v63 >= 128)
    {
      v64 = 128;
    }

    else
    {
      v64 = v63;
    }

    cstdlib_strncpy(v141, &(*a2)[v62], v64);
    v141[v64] = 0;
    *(a1 + 543) = 0;
    cstdlib_strcpy(v138, v141);
    if (((a1[10][17])(a1[8], a1[9], a5, v138, 128) & 0x80000000) != 0)
    {
      goto LABEL_165;
    }

    if (*(a1 + 548))
    {
      LODWORD(v135[0]) = 0;
      v66 = cstdlib_strcmp(__dst, v141) == 0;
      MdeSettings = mde_MosyntMorphAna(a1, v27, v138, v141, a5, v134, *a8, v67, a6, a7, &v128, v66, 0, v135);
      if ((MdeSettings & 0x80000000) != 0)
      {
        goto LABEL_294;
      }

      if (LODWORD(v135[0]) == 1)
      {
        log_OutText((*a1)[4], "FE_ONEWORD", 5, 0, "OOV_METHOD WGRAM %s");
      }

LABEL_165:
      v68 = *(a1 + 542);
      v69 = v134;
      v70 = v128;
      goto LABEL_166;
    }

    if (*(a1 + 542) == 1 && !cstdlib_strstr(a5, "latin") && (!v105 || cstdlib_strcmp(a5, "prompt") && cstdlib_strcmp(a5, "internal-nuance-system-norm")))
    {
      cstdlib_strcpy(v137, v141);
      if (((a1[10][13])(a1[8], a1[9], a5, v137, 128) & 0x80000000) != 0)
      {
        cstdlib_strcpy(v137, v141);
      }

      MdeSettings = crf_mde_seg_label(*a1, *a2, (a1 + 252), v137, v134, *(a1 + 112), &v128, a8, a1[7], a6, a7, a1[10], a1[8], a1[9], *(a1 + 306), v104, *(a1 + 556), a1[11], a1[12], a1[13], *(a1 + 140), a5, v103, v102, v101, v100, v99, v98, v97, v96, a1[30], a1[31], a1[32], a1[33], a1[151], 0);
      if ((MdeSettings & 0x80000000) != 0)
      {
        goto LABEL_294;
      }

      if (v134 < v128)
      {
        *(a1 + 543) = 1;
        log_OutText((*a1)[4], "FE_ONEWORD", 5, 0, "OOV_METHOD CRF MDE SEG %s", v141);
      }
    }

    v69 = v134;
    v70 = v128;
    if (v134 >= v128 && *(a1 + 74))
    {
      MdeSettings = oneword_DpsMde(a1, v138, v141, "g2p", a5, v134, *a8, v65, a6, a7, &v128);
      if ((MdeSettings & 0x80000000) != 0)
      {
        goto LABEL_294;
      }

      v69 = v134;
      v70 = v128;
      if (v134 < v128)
      {
        log_OutText((*a1)[4], "FE_ONEWORD", 5, 0, "OOV_METHOD DEPES MDE %s", v141);
        v69 = v134;
        v70 = v128;
      }
    }

    v68 = *(a1 + 542);
    if (!v68)
    {
      if (v69 >= v70)
      {
        MdeSettings = mde_Main(a1, v138, v141, a5, v69, *a8, a6, a7, &v128);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }

        if (v134 < v128)
        {
          log_OutText((*a1)[4], "FE_ONEWORD", 5, 0, "OOV_METHOD DCTBASEDMDE %s");
        }
      }

      goto LABEL_165;
    }

LABEL_166:
    v85 = v69 < v70;
    v71 = v107;
    if (!v85)
    {
      v71 = 1;
    }

    v107 = v71;
    if (v68 != 1)
    {
      goto LABEL_190;
    }

    if (v106 && cstdlib_strstr(a5, "latin"))
    {
      v68 = *(a1 + 542);
      if (v68 != 1)
      {
        goto LABEL_190;
      }
    }

    else
    {
      MdeSettings = oneword_joinTokens(a1, a6, a7, v111, a8, v106);
      if ((MdeSettings & 0x80000000) != 0)
      {
        goto LABEL_294;
      }

      v68 = *(a1 + 542);
      if (v68 != 1)
      {
        goto LABEL_190;
      }

      if (!v106)
      {
        v68 = 1;
LABEL_216:
        MdeSettings = oneword_ProcessNTokens(a1, v27, a2, a5, a6, a7, v111, *a8, a9, a10, a11, a12, v107, v68, v68);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }

        goto LABEL_41;
      }
    }

    v79 = cstdlib_strstr(a5, "latin");
    v68 = *(a1 + 542);
    if (v79)
    {
      goto LABEL_216;
    }

LABEL_190:
    if (!v68)
    {
      goto LABEL_216;
    }

LABEL_41:
    v30 = (a1[7][21])(a6, a7, *a8, 2, 1, &v126, &v133);
    if ((v30 & 0x80000000) != 0)
    {
      goto LABEL_295;
    }

    v34 = v132;
    *a8 = v132;
    v113 = v131;
    v131 = v130;
    if (!v34 || v126 >= *a4)
    {
      goto LABEL_299;
    }
  }

  if (v131 >= 2 && (v131 != 2 || *(a1 + 234) != 1))
  {
    goto LABEL_244;
  }

  MdeSettings = (a1[7][21])(a6, a7, *a8, 2, 1, &v126, &v133);
  if ((MdeSettings & 0x80000000) != 0)
  {
    goto LABEL_294;
  }

  v56 = *(a1 + 112);
  v57 = v56 + v134;
  v58 = (v126 + v56) - (v56 + v134);
  v59 = v58 >= 128 ? 128 : v58;
  cstdlib_strncpy(v141, &(*a2)[v57], v59);
  v141[v59] = 0;
  *(a1 + 543) = 0;
  cstdlib_strcpy(v138, v141);
  if (((a1[10][17])(a1[8], a1[9], a5, v138, 128) & 0x80000000) != 0)
  {
    cstdlib_strcpy(v138, v141);
  }

  else if (cstdlib_strcmp(__s2, v138))
  {
    MdeSettings = oneword_Lookup(a1, v27, a2, v138, v141, a5, v125, v134, *a8, a6, a7, &v128, 1, a13, v117);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_294;
    }

    if (v128 > v134)
    {
      v135[0] = 0;
      LOWORD(v122) = 0;
      MdeSettings = (a1[7][17])(a6, a7, *a8, &v122);
      if ((MdeSettings & 0x80000000) != 0)
      {
        goto LABEL_294;
      }

      MdeSettings = (a1[7][22])(a6, a7, v122, 3, v135, &v133);
      if ((MdeSettings & 0x80000000) != 0)
      {
        goto LABEL_294;
      }

      oneword_ReplaceUnderscoreWithDot(v135[0]);
    }
  }

  if (v134 < v128)
  {
    goto LABEL_244;
  }

  if (v131 == 1)
  {
    LOWORD(v135[0]) = 0;
    LOWORD(v122) = 0;
    log_OutText((*a1)[4], "FE_ONEWORD", 5, 0, "Front end oneword: Digit or punctuation not in G2P dictionary. Word='%s', tokenType=%d", __dst, 1);
    v80 = v134;
    v128 = v80 + cstdlib_strlen(v141);
    v131 = 4;
    MdeSettings = (a1[7][11])(a6, a7, *a8, a8);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_294;
    }

    MdeSettings = (a1[7][20])(a6, a7, *a8, 0, 1, &v131, v135);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_294;
    }

    MdeSettings = (a1[7][20])(a6, a7, *a8, 1, 1, &v134, v135);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_294;
    }

    MdeSettings = (a1[7][20])(a6, a7, *a8, 2, 1, &v128, v135);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_294;
    }

    MdeSettings = (a1[7][20])(a6, a7, *a8, 3, 1, "", v135);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_294;
    }

    MdeSettings = (a1[7][20])(a6, a7, *a8, 5, 2, "*", v135);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_294;
    }

    MdeSettings = (a1[7][20])(a6, a7, *a8, 6, 2, "*", v135);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_294;
    }

    LOWORD(v122) = 1;
    MdeSettings = (a1[7][20])(a6, a7, *a8, 7, 1, &v122, v135);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_294;
    }

    MdeSettings = (a1[7][20])(a6, a7, *a8, 9, 1, "", v135);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_294;
    }

    MdeSettings = (a1[7][15])(a6, a7, *a8, a8);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_294;
    }

    goto LABEL_241;
  }

  if (v131)
  {
    goto LABEL_241;
  }

  if (*(a1 + 548))
  {
    LODWORD(v135[0]) = 0;
    v72 = cstdlib_strlen(__dst);
    v73 = cstdlib_strlen(v141);
    v75 = 0;
    v76 = v72 - 1;
    if (v72 >= 2u)
    {
      LOWORD(v122) = __dst[v76];
      v114 = v73;
      v77 = (a1[10][16])(a1[8], a1[9], &v122);
      v76 = v72 - 1;
      v86 = v77 == 0;
      v73 = v114;
      v75 = !v86;
    }

    v78 = v75 & (v73 == v76);
    if (v72 == v73)
    {
      v78 = 1;
    }

    MdeSettings = mde_MosyntMorphAna(a1, v27, v138, v141, a5, v134, *a8, v74, a6, a7, &v128, v78, 0, v135);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_294;
    }

LABEL_241:
    v81 = v107;
    if (v134 >= v128)
    {
      v81 = 1;
    }

    v107 = v81;
LABEL_244:
    if ((v111 & 0x8000) != 0)
    {
      goto LABEL_41;
    }

    if (v131 != 3 && v130 == 3)
    {
      MdeSettings = (a1[7][21])(a6, a7, v111, 1, 1, &v127, &v133);
      if ((MdeSettings & 0x80000000) != 0)
      {
        goto LABEL_294;
      }

      cstdlib_strcpy(v25, "");
      if (v126 > v127)
      {
        cstdlib_strncpy(v25, &(*a2)[*(a1 + 112) + v127], v126 - v127);
        v25[v126 - v127] = 0;
      }

      if (*(a1 + 234) && utf8_IsChineseLetter(v25))
      {
        v82 = *(a1 + 112);
        ChineseUTFCharNum = utf8_GetChineseUTFCharNum(*a2, (v126 + v82));
        v83 = ChineseUTFCharNum - utf8_GetChineseUTFCharNum(*a2, (*(a1 + 112) + v127));
        while (1)
        {
          v84 = (*a2)[v126 + v82];
          if (v84 == 32)
          {
            break;
          }

          v85 = v84 != 95 && v82 <= 5;
          v86 = !v85 || v84 == 0;
          if (v86)
          {
            break;
          }

          ++v82;
        }

        MdeSettings = oneword_SkipCrosstoken(a1, a6, a7, a5, v83, v127, v126 + v82 - *(a1 + 112), v111, *a8);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }

        goto LABEL_272;
      }

      v87 = *(a1 + 542);
      if (v87 == 1)
      {
        if (v106)
        {
          v88 = cstdlib_strstr(a5, "latin");
          v87 = *(a1 + 542);
          if (!v88)
          {
            goto LABEL_265;
          }
        }

        else
        {
          v87 = 1;
        }

LABEL_270:
        MdeSettings = oneword_ProcessNTokens(a1, v27, a2, a5, a6, a7, v111, *a8, a9, a10, a11, a12, v107, *(a1 + 543), v87);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }

        MdeSettings = (a1[7][21])(a6, a7, *a8, 2, 1, &v126, &v133);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_294;
        }
      }

      else
      {
LABEL_265:
        if (!v87)
        {
          goto LABEL_270;
        }
      }
    }

LABEL_272:
    if (*(a1 + 542) == 1 && (v131 != 3 && v130 == 3 || v128 == *a4) && (v106 && !cstdlib_strstr(a5, "latin") || v105 && *(a1 + 543)))
    {
      MdeSettings = oneword_joinTokens(a1, a6, a7, v111, a8, v106);
      if ((MdeSettings & 0x80000000) != 0)
      {
        goto LABEL_294;
      }

      *(a1 + 543) = 0;
    }

    goto LABEL_41;
  }

  v93 = v27;
  if (*(a1 + 542) != 1 || cstdlib_strstr(a5, "latin") || v105 && (!cstdlib_strcmp(a5, "prompt") || !cstdlib_strcmp(a5, "internal-nuance-system-norm")))
  {
    goto LABEL_306;
  }

  cstdlib_strcpy(v137, v141);
  if (((a1[10][13])(a1[8], a1[9], a5, v137, 128) & 0x80000000) != 0)
  {
    cstdlib_strcpy(v137, v141);
  }

  v46 = crf_mde_seg_label(*a1, *a2, (a1 + 252), v137, v134, *(a1 + 112), &v128, a8, a1[7], a6, a7, a1[10], a1[8], a1[9], *(a1 + 306), v104, *(a1 + 556), a1[11], a1[12], a1[13], *(a1 + 140), a5, v103, v102, v101, v100, v99, v98, v97, v96, a1[30], a1[31], a1[32], a1[33], a1[151], 1);
  if ((v46 & 0x80000000) == 0)
  {
    if (v134 < v128)
    {
      log_OutText((*a1)[4], "FE_ONEWORD", 5, 0, "OOV_METHOD CRF MDE SEG %s", v141);
      *(a1 + 543) = 1;
    }

    if (*(a1 + 517) || !*(a1 + 543) || (v46 = (a1[7][15])(a6, a7, *a8, a8), (v46 & 0x80000000) == 0))
    {
LABEL_306:
      if (v134 >= v128 && *(a1 + 74) && !*(a1 + 69))
      {
        v46 = oneword_DpsMde(a1, v138, v141, "g2p", a5, v134, *a8, v60, a6, a7, &v128);
        if ((v46 & 0x80000000) != 0)
        {
          goto LABEL_303;
        }

        if (v134 < v128)
        {
          log_OutText((*a1)[4], "FE_ONEWORD", 5, 0, "OOV_METHOD DEPES MAIN %s", v141);
          cstdlib_strcpy(a1 + 272, a1[151]);
        }
      }

      if (*(a1 + 542) || v134 < v128)
      {
LABEL_239:
        if (!*(a1 + 69))
        {
          goto LABEL_241;
        }
      }

      else if (!*(a1 + 69))
      {
        v46 = mde_Main(a1, v138, v141, a5, v134, *a8, a6, a7, &v128);
        if ((v46 & 0x80000000) != 0)
        {
          goto LABEL_303;
        }

        if (v134 < v128)
        {
          log_OutText((*a1)[4], "FE_ONEWORD", 5, 0, "OOV_METHOD DCTBASEDMDE MAIN %s", v141);
          cstdlib_strcpy(a1 + 272, a1[151]);
        }

        goto LABEL_239;
      }

      MdeSettings = oneword_DeleteDctAndMdeTokenRecords(a1, a6, a7, v118);
      if ((MdeSettings & 0x80000000) != 0)
      {
        goto LABEL_294;
      }

      goto LABEL_241;
    }
  }

LABEL_303:
  v30 = v46;
  v27 = v93;
LABEL_295:
  heap_Free((*a1)[1], v27);
LABEL_296:
  heap_Free((*a1)[1], v25);
  return v30;
}

uint64_t oneword_GetMdeSettings(uint64_t a1, const char *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  *&__c[3] = 0;
  __c[0] = 0;
  v4 = (a1 + 282);
  *(a1 + 282) = 0x10000000;
  *(a1 + 286) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 1;
  cstdlib_strcpy(__dst, "mdeminwrdlen_");
  cstdlib_strcat(__dst, a2);
  *&__c[1] = -1;
  v5 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", __dst, &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  if (*&__c[1])
  {
    goto LABEL_3;
  }

  *&__c[1] = -1;
  v5 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "mdeminwrdlen", &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  if (*&__c[1])
  {
LABEL_3:
    v6 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v6)
    {
      *v6 = 0;
    }

    *v4 = cstdlib_atoi(**&__c[3]);
  }

  cstdlib_strcpy(__dst, "mdemaxwrdlen_");
  cstdlib_strcat(__dst, a2);
  *&__c[1] = -1;
  v5 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", __dst, &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  if (*&__c[1])
  {
    goto LABEL_8;
  }

  *&__c[1] = -1;
  v5 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "mdemaxwrdlen", &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  if (*&__c[1])
  {
LABEL_8:
    v7 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v7)
    {
      *v7 = 0;
    }

    *(a1 + 283) = cstdlib_atoi(**&__c[3]);
  }

  cstdlib_strcpy(__dst, "mdemaxnrmorph_");
  cstdlib_strcat(__dst, a2);
  *&__c[1] = -1;
  v5 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", __dst, &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  if (*&__c[1])
  {
    goto LABEL_13;
  }

  *&__c[1] = -1;
  v5 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "mdemaxnrmorph", &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  if (*&__c[1])
  {
LABEL_13:
    v8 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v8)
    {
      *v8 = 0;
    }

    *(a1 + 285) = cstdlib_atoi(**&__c[3]);
  }

  cstdlib_strcpy(__dst, "mdefirstletter_");
  cstdlib_strcat(__dst, a2);
  *&__c[1] = -1;
  v5 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", __dst, &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  if (*&__c[1])
  {
    goto LABEL_18;
  }

  *&__c[1] = -1;
  v5 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "mdefirstletter", &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  if (*&__c[1])
  {
LABEL_18:
    v9 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v9)
    {
      *v9 = 0;
    }

    *(a1 + 284) = cstdlib_strcmp(**&__c[3], "upper") == 0;
  }

  cstdlib_strcpy(__dst, "mdetype_");
  cstdlib_strcat(__dst, a2);
  *&__c[1] = -1;
  v5 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", __dst, &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  if (*&__c[1])
  {
    goto LABEL_23;
  }

  *&__c[1] = -1;
  v5 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "mdetype", &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  if (*&__c[1])
  {
LABEL_23:
    v10 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v10)
    {
      *v10 = 0;
    }

    if (!cstdlib_strcmp(**&__c[3], "stemafx"))
    {
      *(a1 + 286) = 1;
    }
  }

  cstdlib_strcpy(__dst, "mdeemptyafx_");
  cstdlib_strcat(__dst, a2);
  *&__c[1] = -1;
  v5 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", __dst, &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  if (*&__c[1])
  {
    goto LABEL_43;
  }

  *&__c[1] = -1;
  v5 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "mdeemptyafx", &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  if (*&__c[1])
  {
LABEL_43:
    v11 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v11)
    {
      *v11 = 0;
    }

    *(a1 + 288) = cstdlib_strcmp(**&__c[3], "yes") == 0;
  }

  cstdlib_strcpy(__dst, "mdenondctdps_");
  cstdlib_strcat(__dst, a2);
  *&__c[1] = -1;
  v5 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", __dst, &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  if (*&__c[1])
  {
LABEL_48:
    v12 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v12)
    {
      *v12 = 0;
    }

    *(a1 + 292) = cstdlib_strcmp(**&__c[3], "yes") == 0;
    goto LABEL_51;
  }

  *&__c[1] = -1;
  v5 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "mdenondctdps", &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  if (*&__c[1])
  {
    goto LABEL_48;
  }

LABEL_51:
  cstdlib_strcpy(__dst, "mdedps_");
  cstdlib_strcat(__dst, a2);
  *&__c[1] = -1;
  v13 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", __dst, &__c[3], &__c[1], __c);
  if ((v13 & 0x80000000) == 0)
  {
    if (*&__c[1] || (*&__c[1] = -1, v13 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "mdedps", &__c[3], &__c[1], __c), (v13 & 0x80000000) == 0) && *&__c[1])
    {
      v14 = cstdlib_strchr(**&__c[3], __c[0]);
      if (v14)
      {
        *v14 = 0;
      }

      *(a1 + 296) = cstdlib_strcmp(**&__c[3], "yes") == 0;
    }
  }

  return v13;
}

uint64_t oneword_read_LD_W_INPUTSPACETAG(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void *a6)
{
  if (a4 != 6)
  {
    return 0;
  }

  v16 = v6;
  v17 = v7;
  v15 = 0;
  *a6 = 0;
  v13 = (*(*(a1 + 56) + 184))(a2, a3, a5, 19, &v15);
  result = 0;
  if ((v13 & 0x80000000) == 0 && v15 == 1)
  {
    return (*(*(a1 + 56) + 176))(a2, a3, a5, 19, a6, &v15);
  }

  return result;
}

uint64_t oneword_GetWord(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  while (1)
  {
    v4 = *(a2 + a1);
    v5 = v4 > 0x20 || ((1 << v4) & 0x100002601) == 0;
    if (!v5 || v4 == 95)
    {
      break;
    }

    ++a1;
    *(a3 + v3++) = v4;
    if (v3 == 127)
    {
      result = 0;
      goto LABEL_11;
    }
  }

  result = 1;
LABEL_11:
  *(a3 + v3) = 0;
  return result;
}

uint64_t oneword_GetMultiWordLen(void *a1, uint64_t a2, uint64_t a3, void *__b, _BYTE *a5)
{
  v17 = 0;
  v16 = 0;
  cstdlib_memset(__b, 0, 0x40uLL);
  v10 = (*(a1[10] + 120))(a1[8], a1[9], a2, 255, "femwg2p", a3, &v17, &v16);
  if ((v10 & 0x80000000) == 0)
  {
    *a5 = 0;
    if (v16)
    {
      for (i = 0; i < v16; ++i)
      {
        v12 = LH_atou(*(v17 + 8 * i));
        if (v12 <= 0x3F)
        {
          v13 = *a5;
          *a5 = v13 + 1;
          *(__b + v13) = v12;
        }
      }

      v14 = *a5;
    }

    else
    {
      v14 = 0;
    }

    ssft_qsort(__b, v14, 1, compare_0);
  }

  return v10;
}

BOOL oneword_GetMultiWord(unsigned int a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = *(a2 + a1);
  while (v7)
  {
    *(a3 + v4) = v7;
    if (v4 == 255)
    {
      return 0;
    }

    LOWORD(a1) = a1 + 1;
    v8 = (a2 + a1);
    v7 = *v8;
    v9 = v7 > 0x20 || ((1 << v7) & 0x100002600) == 0;
    if (!v9 || v7 == 95)
    {
      v10 = *(v8 - 1);
      v11 = v10 == 95 ? v5 : v5 + 1;
      v12 = v10 > 0x20;
      v13 = (1 << v10) & 0x100002600;
      if (v12 || v13 == 0)
      {
        v5 = v11;
      }
    }

    ++v4;
    ++v6;
    if (a4 <= v5)
    {
      v16 = a1;
      goto LABEL_24;
    }
  }

  v16 = a1;
  v6 = v4;
LABEL_24:
  *(a3 + v6) = 0;
  if (!*(a2 + v16))
  {
    v17 = *(a2 + v16 - 1);
    if ((v17 > 0x20 || ((1 << v17) & 0x100002600) == 0) && v17 != 95)
    {
      LOBYTE(v5) = v5 + 1;
    }
  }

  return a4 == v5;
}

uint64_t oneword_Lookup(_DWORD *a1, char *a2, void *a3, const char *a4, const char *a5, char *a6, const char *a7, unsigned __int16 a8, unsigned __int16 a9, uint64_t a10, uint64_t a11, unsigned __int16 *a12, int a13, int a14, int a15)
{
  v141 = a8;
  v140 = 0;
  v139 = 0;
  v138 = 0;
  v137 = 4;
  v136 = 0;
  v135 = 0;
  v134 = 1;
  v133 = 0;
  if ((paramc_ParamGetStr(*(*a1 + 40), "sysdctlookup", &v135) & 0x80000000) == 0 && !cstdlib_strcmp(v135, "no"))
  {
    return 0;
  }

  v130 = a13;
  if (a13)
  {
    if (a1[69])
    {
      return 0;
    }
  }

  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P look up %s", a4);
  if (a1[306])
  {
    cstdlib_strcpy(__dst, "g2p");
    cstdlib_strcat(__dst, a1 + 3 * *a4 + 1228);
    v22 = (*(*(a1 + 10) + 232))(*(a1 + 8), *(a1 + 9), __dst, a4, &v140, &v139, &v138, &v133);
  }

  else
  {
    v22 = (*(*(a1 + 10) + 240))(*(a1 + 8), *(a1 + 9), "g2p", a4, &v140, &v139, &v138, *(a1 + 556), &v133);
  }

  v21 = v22;
  if ((v22 & 0x80000000) == 0)
  {
    v23 = "ADDONDCT";
    if (!v133)
    {
      v23 = "OTHER";
    }

    v117 = v23;
    if (v139)
    {
      v118 = a7;
      v115 = a3;
      v24 = 0;
      v119 = 0;
      v25 = a2 + 10000;
      v122 = a11;
      v128 = a10;
      v26 = a12;
      v121 = a15;
      v111 = a14;
      v113 = a12;
      v114 = a2 + 5000;
      v116 = a6;
      v120 = a5;
      while (1)
      {
        if (v130 && a1[235] && v141 < *v26)
        {
          goto LABEL_171;
        }

        cstdlib_strncpy(v25, *(v140 + 8 * v24), 0x1387uLL);
        a2[14999] = 0;
        v27 = cstdlib_strchr(v25, v138);
        if (v27)
        {
          *v27 = 0;
          __s = v27 + 1;
          v28 = cstdlib_strchr(v27 + 1, v138);
          v29 = v28;
          if (!v28 || (*v28 = 0, v29 = v28 + 1, (v30 = cstdlib_strchr(v28 + 1, v138)) == 0))
          {
            __s1 = 0;
LABEL_27:
            v125 = 0;
LABEL_28:
            v123 = 0;
            v34 = 0;
LABEL_29:
            v131 = 0;
            goto LABEL_31;
          }

          *v30 = 0;
          __s1 = v30 + 1;
          v31 = cstdlib_strchr(v30 + 1, v138);
          if (!v31)
          {
            goto LABEL_27;
          }

          *v31 = 0;
          v125 = v31 + 1;
          v32 = cstdlib_strchr(v31 + 1, v138);
          if (!v32)
          {
            goto LABEL_28;
          }

          *v32 = 0;
          v123 = (v32 + 1);
          v33 = cstdlib_strchr(v32 + 1, v138);
          v34 = v33;
          if (!v33)
          {
            goto LABEL_29;
          }

          *v33 = 0;
          v34 = v33 + 1;
          v35 = cstdlib_strchr(v33 + 1, v138);
          if (!v35)
          {
            goto LABEL_29;
          }

          *v35 = 0;
          v131 = v35 + 1;
          v36 = cstdlib_strchr(v35 + 1, v138);
          if (v36)
          {
            *v36 = 0;
          }
        }

        else
        {
          v125 = 0;
          __s1 = 0;
          v123 = 0;
          v34 = 0;
          v131 = 0;
          v29 = 0;
          __s = 0;
        }

LABEL_31:
        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P Validating %s", v25);
        if (cstdlib_strcmp(a6, "name"))
        {
          if (v29 && cstdlib_strcmp(v29, "") && !cstdlib_strstr(v29, a6))
          {
            goto LABEL_77;
          }
        }

        else if (v29 && cstdlib_strcmp(v29, ""))
        {
          if ((v37 = cstdlib_strstr(v29, a6)) == 0 || (v38 = v37, v39 = cstdlib_strlen(a6), v38 != v29) && *(v38 - 1) != 44 || v38[v39] && v38[v39] != 44)
          {
LABEL_77:
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P Domain validation not OK");
            goto LABEL_78;
          }
        }

        if (!v121 || !v34 || !cstdlib_strcmp(v34, "0"))
        {
          if (!a1[301] || !v131)
          {
            v25 = a2 + 10000;
            v40 = v122;
            if (!v130)
            {
              goto LABEL_63;
            }

            goto LABEL_53;
          }

          v40 = v122;
          if (cstdlib_strchr(v131, 33))
          {
            v131[3] = 0;
            v25 = a2 + 10000;
            if (!v130)
            {
              goto LABEL_63;
            }

LABEL_154:
            v106 = cstdlib_strstr(a6, v131);
            if (!v106 || (v107 = v106, cstdlib_strlen(v131)) && v107[cstdlib_strlen(v131)])
            {
              v108 = cstdlib_strstr(*(a1 + 152), a6);
              if (LH_stricmp(v131, *(a1 + 151)) || !v108 || v108[cstdlib_strlen(a6)] != 124)
              {
                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Token lookup: G2P Language %s validation not OK");
                goto LABEL_79;
              }
            }

LABEL_53:
            if (a1[235])
            {
              if (v131 && *v131 && cstdlib_strlen(v131) < 4)
              {
                v41 = v131;
              }

              else
              {
                v41 = *(a1 + 151);
              }

              cstdlib_strcpy(__dst, v41);
              if (*(a1 + 272) && cstdlib_strncmp(__dst, a1 + 272, 2uLL) || cstdlib_strstr(a6, "latin") && !cstdlib_strcmp(__dst, *(a1 + 151)))
              {
                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Token lookup: G2P Language %s validation not OK", v131);
                if (*(a1 + 272))
                {
                  v63 = cstdlib_strncmp(__dst, a1 + 272, 2uLL);
                  v64 = v119;
                  if (v63)
                  {
                    v64 = 1;
                  }

                  v119 = v64;
                }

                goto LABEL_79;
              }

              cstdlib_strcpy(a1 + 272, __dst);
              v119 = 0;
              goto LABEL_63;
            }

            v42 = a5;
            if (v131)
            {
              v43 = v118;
              if (cstdlib_strlen(v131) == 3 && !cstdlib_strncmp(v131, *(a1 + 151), 2uLL) && cstdlib_strcmp(v131, *(a1 + 151)))
              {
                cstdlib_strcpy(v131, *(a1 + 151));
              }

LABEL_65:
              v44 = v141;
              *v26 = v44 + cstdlib_strlen(v42);
              v45 = (*(*(a1 + 7) + 88))(v128, v40, a9, &a9);
              if ((v45 & 0x80000000) != 0)
              {
                return v45;
              }

              v45 = (*(*(a1 + 7) + 160))(v128, v40, a9, 0, 1, &v137, &v136);
              if ((v45 & 0x80000000) != 0)
              {
                return v45;
              }

              v45 = (*(*(a1 + 7) + 160))(v128, v40, a9, 1, 1, &v141, &v136);
              if ((v45 & 0x80000000) != 0)
              {
                return v45;
              }

              v45 = (*(*(a1 + 7) + 160))(v128, v40, a9, 2, 1, v26, &v136);
              if ((v45 & 0x80000000) != 0)
              {
                return v45;
              }

              if (v43)
              {
                v46 = *(*(a1 + 7) + 160);
                v47 = a9;
                v48 = cstdlib_strlen(v43);
                v45 = v46(v128, v40, v47, 19, (v48 + 1), v43, &v136);
                if ((v45 & 0x80000000) != 0)
                {
                  return v45;
                }
              }

              v49 = cstdlib_strchr(v25, 18);
              v50 = v49;
              if (!v49)
              {
                v50 = &v25[cstdlib_strlen(v25)];
              }

              v51 = *(a1 + 112);
              v52 = (*v115 + v141 + v51);
              v53 = *v115 + *v26 + v51;
              v112 = a1[569];
              v54 = *(*a1 + 32);
              v142[0] = 0;
              v55 = oneword_CountPhoneticWords(v25, v50);
              log_OutText(v54, "FE_ONEWORD", 5, 0, "Number of orthographic words: %d", 0);
              v56 = oneword_CountOrthographicWords(v52, v53, 35, 35);
              log_OutText(v54, "FE_ONEWORD", 5, 0, "Number of phonetic words:     %d", v55);
              if (v55)
              {
                if (v56)
                {
                  if (v55 == 1)
                  {
                    v142[0] = v56 - 1;
                    oneword_ReplaceCharactersInOrthography(v52, v53, 33, 45, v142);
                    v57 = v52;
                    v58 = v53;
                    v59 = 5;
                    v60 = 45;
                    goto LABEL_107;
                  }

                  if (utf8_BelongsToSet(36, v52, 0, v53 - v52) && (PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v52, v53 - v52)) != 0 && utf8_BelongsToSet(36, v52, PreviousUtf8Offset, v53 - v52))
                  {
                    log_OutText(v54, "FE_ONEWORD", 5, 0, "Orthography starts and ends with underscore or hyphen: no replacement made");
                    v25 = a2 + 10000;
                  }

                  else
                  {
                    if (v112)
                    {
                      *__dst = v53 - v52;
                      oneword_ReplaceCharactersInOrthography(v52, v53, 5, 95, __dst);
                    }

                    v25 = a2 + 10000;
                    if (v56 < v55)
                    {
                      v142[0] = v55 - v56;
                      v57 = v52;
                      v58 = v53;
                      v59 = 34;
                      v60 = 95;
LABEL_107:
                      oneword_ReplaceCharactersInOrthography(v57, v58, v59, v60, v142);
                    }
                  }
                }

                else
                {
                  log_OutText(v54, "FE_ONEWORD", 5, 0, "No orthographic words found: returning");
                }
              }

              else
              {
                log_OutText(v54, "FE_ONEWORD", 5, 0, "No phonetic words found: returning");
              }

              v66 = oneword_CountOrthographicWords(v52, v53, 35, 35);
              log_OutText(v54, "FE_ONEWORD", 5, 0, "Number of orthographic words after adjustment: %d", v66);
              log_OutText(v54, "FE_ONEWORD", 5, 0, "Number of phonetic words after adjustment:     %d", v55);
              a6 = v116;
              a5 = v120;
              if (v49)
              {
                *v49 = 0;
                v67 = v49 + 1;
                if (a1[548])
                {
                  v68 = v67;
                  v67 = a2 + 5000;
                  v45 = mosynt_LHPlusMapping(*(a1 + 6), *(a1 + 275), *(a1 + 280), v68, v114, 5000);
                  if ((v45 & 0x80000000) != 0)
                  {
                    return v45;
                  }
                }

                v69 = *(*(a1 + 7) + 160);
                v70 = a9;
                v71 = cstdlib_strlen(v67);
                v45 = v69(v128, v122, v70, 11, (v71 + 1), v67, &v136);
                v25 = a2 + 10000;
                if ((v45 & 0x80000000) != 0)
                {
                  return v45;
                }
              }

              v72 = v25;
              if (a1[548])
              {
                v72 = a2 + 5000;
                v45 = mosynt_LHPlusMapping(*(a1 + 6), *(a1 + 275), *(a1 + 280), v25, v114, 5000);
                if ((v45 & 0x80000000) != 0)
                {
                  return v45;
                }
              }

              v73 = *(*(a1 + 7) + 160);
              v74 = a9;
              v75 = cstdlib_strlen(v72);
              v45 = v73(v128, v122, v74, 3, (v75 + 1), v72, &v136);
              if ((v45 & 0x80000000) != 0)
              {
                return v45;
              }

              if (__s1)
              {
                v76 = cstdlib_strcmp(__s1, "");
                v77 = *(*(a1 + 7) + 160);
                v78 = a9;
                if (v76)
                {
                  v79 = (cstdlib_strlen(__s1) + 1);
                  v80 = v128;
                  v81 = v122;
                  v82 = v78;
                  v83 = __s1;
                }

                else
                {
                  v80 = v128;
                  v81 = v122;
                  v82 = a9;
                  v79 = 2;
                  v83 = "*";
                }

                v45 = v77(v80, v81, v82, 5, v79, v83, &v136);
                if ((v45 & 0x80000000) != 0)
                {
                  return v45;
                }
              }

              if (v125)
              {
                v84 = cstdlib_strcmp(v125, "");
                v85 = *(*(a1 + 7) + 160);
                v86 = a9;
                if (v84)
                {
                  v87 = (cstdlib_strlen(v125) + 1);
                  v88 = v128;
                  v89 = v122;
                  v90 = v86;
                  v91 = v125;
                }

                else
                {
                  v88 = v128;
                  v89 = v122;
                  v90 = a9;
                  v87 = 2;
                  v91 = "*";
                }

                v45 = v85(v88, v89, v90, 6, v87, v91, &v136);
                if ((v45 & 0x80000000) != 0)
                {
                  return v45;
                }
              }

              if (__s)
              {
                v92 = *(*(a1 + 7) + 160);
                v93 = a9;
                v94 = cstdlib_strlen(__s);
                v45 = v92(v128, v122, v93, 4, (v94 + 1), __s, &v136);
                if ((v45 & 0x80000000) != 0)
                {
                  return v45;
                }
              }

              if (v123)
              {
                v95 = cstdlib_atoi(v123);
              }

              else
              {
                v95 = 1;
              }

              v134 = v95;
              if (v131)
              {
                __s1a = cstdlib_strstr(v116, v131);
                v96 = *v131;
                v97 = *(*(a1 + 7) + 160);
                v98 = a9;
                v99 = cstdlib_strlen(v131);
                v21 = v97(v128, v122, v98, 9, (v99 + 1), v131, &v136);
                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Language tag is %s", v131);
                v100 = *(a1 + 152);
                if (v100)
                {
                  v101 = cstdlib_strstr(v100, v116);
                }

                else
                {
                  v101 = 0;
                }

                v102 = v96;
                if (a1[301] && (__s1a && (!cstdlib_strlen(v131) || !__s1a[cstdlib_strlen(v131)]) || !LH_stricmp(v131, *(a1 + 151)) && v101 && v101[cstdlib_strlen(v116)] == 124))
                {
                  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Increasing priority to %d", ++v134);
                }

                a5 = v120;
              }

              else
              {
                v21 = (*(*(a1 + 7) + 160))(v128, v122, a9, 9, 1, "", &v136);
                v102 = 0;
              }

              if ((v21 & 0x80000000) != 0)
              {
                return v21;
              }

              v45 = (*(*(a1 + 7) + 160))(v128, v122, a9, 7, 1, &v134, &v136);
              if ((v45 & 0x80000000) != 0)
              {
                return v45;
              }

              v103 = *(*(a1 + 7) + 160);
              v104 = a9;
              v105 = cstdlib_strlen(v117);
              v21 = v103(v128, v122, v104, 21, (v105 + 1), v117, &v136);
              if ((v21 & 0x80000000) != 0)
              {
                return v21;
              }

              if (v139 != 1)
              {
                v25 = a2 + 10000;
                v26 = v113;
                goto LABEL_79;
              }

              v26 = v113;
              if (v102)
              {
                a1[233] = v102 == 101;
              }

              goto LABEL_78;
            }
          }

          else
          {
            v61 = cstdlib_strstr(a6, v131);
            v62 = v61;
            v25 = a2 + 10000;
            if (v111)
            {
              if (v130)
              {
                goto LABEL_154;
              }

              if ((!v61 || cstdlib_strlen(v131) && v62[cstdlib_strlen(v131)]) && LH_stricmp(v131, *(a1 + 151)))
              {
                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P Language %s validation not OK");
                goto LABEL_79;
              }
            }

            else
            {
              if (v130)
              {
                goto LABEL_154;
              }

              if (!v61 || cstdlib_strlen(v131) && v62[cstdlib_strlen(v131)])
              {
                v109 = cstdlib_strstr(*(a1 + 152), a6);
                if (LH_stricmp(v131, *(a1 + 151)) || !v109 || v109[cstdlib_strlen(a6)] != 124)
                {
                  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "User lang lookup: G2P Language %s validation not OK");
                  goto LABEL_79;
                }
              }
            }

LABEL_63:
            v42 = a5;
          }

          v43 = v118;
          goto LABEL_65;
        }

        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "MDE validation not OK");
LABEL_78:
        v25 = a2 + 10000;
LABEL_79:
        if (++v24 >= v139)
        {
          goto LABEL_171;
        }
      }
    }

    v119 = 0;
LABEL_171:
    a1[69] = v119;
  }

  return v21;
}

uint64_t oneword_isInputBetweenPOIMrk(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (!a2)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = a2;
  for (i = (a1 + 12); ; i += 16)
  {
    if (*(i - 3) == 55 && cstdlib_strstr(*(i + 6), "POI"))
    {
      v6 = *i;
LABEL_12:
      v7 = 1;
      goto LABEL_13;
    }

    if (v7 == 1)
    {
      if (*(i - 3) != 56 || !cstdlib_strstr(*(i + 6), "POI"))
      {
        goto LABEL_12;
      }

      if (v6 <= a3 && *i >= a4)
      {
        break;
      }
    }

    v7 = 0;
LABEL_13:
    if (!--v8)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t oneword_DeleteDctAndMdeTokenRecords(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  for (result = (*(*(a1 + 56) + 136))(a2, a3, a4, &v8); (result & 0x80000000) == 0; result = (*(*(a1 + 56) + 120))(a2, a3))
  {
    if (!v8)
    {
      break;
    }

    result = (*(*(a1 + 56) + 168))(a2, a3);
    if ((result & 0x80000000) != 0)
    {
      break;
    }
  }

  return result;
}

uint64_t oneword_ProcessNTokens(uint64_t a1, char *a2, const char **a3, char *a4, uint64_t a5, uint64_t a6, unsigned __int16 a7, uint64_t a8, uint64_t a9, _WORD *a10, unsigned __int16 *a11, __int16 a12, int a13, int a14, int a15)
{
  v302 = *MEMORY[0x277D85DE8];
  v297 = a7;
  v296 = 0;
  v288 = 1;
  v287 = 32;
  v286 = 0;
  v22 = heap_Calloc(*(*a1 + 8), 1, 2248);
  if (!v22)
  {
    DepesLayersForWordAndPOS = 2310021130;
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
    return DepesLayersForWordAndPOS;
  }

  v23 = v22;
  v295 = 0;
  v294 = 0;
  v293 = 0;
  v292 = 0;
  v290 = 0;
  __src = 0;
  v289 = 0;
  v285 = 0;
  v284 = 0;
  cstdlib_strcpy(__dst, "");
  cstdlib_strcpy(__s, "acronym_detection");
  v278 = v23;
  v275 = a2;
  v276 = cstdlib_strlen(__s);
  if (*(a1 + 560) == 1)
  {
    v24 = cstdlib_strchr(a4, 95);
    if (v24)
    {
      v25 = v24 + 1;
    }

    else
    {
      v25 = a4;
    }

    v26 = *v25;
  }

  else
  {
    v25 = 0;
    v26 = 32;
  }

  memset(v300, 0, 256);
  appended = (*(*(a1 + 56) + 168))(a5, a6, v297, 1, 1, &v292 + 2, &v294 + 2);
  if ((appended & 0x80000000) != 0)
  {
    goto LABEL_462;
  }

  HIWORD(v293) = HIWORD(v292);
  v29 = v297;
  if (v297)
  {
    do
    {
      v296 = v29;
      appended = (*(*(a1 + 56) + 136))(a5, a6, v29, &v297);
      if ((appended & 0x80000000) != 0)
      {
        goto LABEL_462;
      }

      if (!v297)
      {
        break;
      }

      appended = (*(*(a1 + 56) + 168))(a5, a6);
      if ((appended & 0x80000000) != 0)
      {
        goto LABEL_462;
      }

      v29 = v297;
    }

    while (HIWORD(v293) == HIWORD(v292) && v297 != 0);
  }

  v273 = a3;
  v297 = v296;
  cstdlib_strcpy(*(a1 + 240), "");
  cstdlib_strcpy(*(a1 + 248), "");
  cstdlib_strcpy(*(a1 + 256), "");
  cstdlib_strcpy(*(a1 + 264), "");
  appended = (*(*(a1 + 56) + 168))(a5, a6, a8, 2, 1, &v292, &v294 + 2);
  if ((appended & 0x80000000) != 0)
  {
    goto LABEL_462;
  }

  v270 = (a1 + 240);
  v31 = (v292 - HIWORD(v292));
  v32 = (v31 + 200);
  v271 = (a1 + 192);
  if (v32 > *(a1 + 192))
  {
    v33 = heap_Realloc(*(*a1 + 8), *(a1 + 160), (v31 + 200));
    if (!v33)
    {
      goto LABEL_401;
    }

    *(a1 + 160) = v33;
    *(a1 + 192) = v32;
  }

  v34 = (a1 + 200);
  if (v32 > *(a1 + 200))
  {
    v35 = heap_Realloc(*(*a1 + 8), *(a1 + 168), (v31 + 200));
    if (!v35)
    {
      goto LABEL_401;
    }

    *(a1 + 168) = v35;
    *(a1 + 200) = v32;
  }

  v268 = (a1 + 208);
  if (v32 > *(a1 + 208))
  {
    v36 = heap_Realloc(*(*a1 + 8), *(a1 + 176), (v31 + 200));
    if (!v36)
    {
      goto LABEL_401;
    }

    *(a1 + 176) = v36;
    *(a1 + 208) = v32;
  }

  v269 = (a1 + 160);
  cstdlib_strcpy(*(a1 + 160), "");
  v296 = v297;
  v37 = HIWORD(v292);
  v38 = v292;
  __s1 = a4;
  v251 = v25;
  if (HIWORD(v292) >= v292)
  {
    v42 = 0;
    v41 = 0;
    v39 = v273;
  }

  else
  {
    v39 = v273;
    v40 = (*(*(a1 + 80) + 128))(*(a1 + 64), *(a1 + 72), &(*v273)[*(a1 + 224) + HIWORD(v292)]);
    v37 = HIWORD(v292);
    v41 = 0;
    if (v40)
    {
      while (1)
      {
        v42 = utf8_determineUTF8CharLength((*v273)[*(a1 + 224) + (v41 + v37)]) + v41;
        v37 = HIWORD(v292);
        v41 = v42;
        v43 = HIWORD(v292) + v42;
        v38 = v292;
        if (v43 >= v292)
        {
          break;
        }

        v44 = (*(*(a1 + 80) + 128))(*(a1 + 64), *(a1 + 72), &(*v273)[*(a1 + 224) + v43]);
        v37 = HIWORD(v292);
        if (!v44)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      v42 = 0;
LABEL_36:
      v38 = v292;
    }
  }

  v45 = v37 + v42;
  HIWORD(v292) = v45;
  v46 = v38;
  if (v38 > v45)
  {
    while ((*v39)[*(a1 + 224) - 1 + v38] < -64)
    {
      v46 = --v38;
      if (v38 <= v45)
      {
        goto LABEL_42;
      }
    }

    v46 = v38;
  }

LABEL_42:
  v261 = v26;
  v252 = (a1 + 256);
  if (v46 > v45)
  {
    v47 = v38;
    do
    {
      v48 = (*(*(a1 + 80) + 128))(*(a1 + 64), *(a1 + 72), &(*v39)[v47 - 1 + *(a1 + 224)]);
      v45 = HIWORD(v292);
      if (!v48)
      {
        break;
      }

      LOWORD(v292) = --v47;
      v49 = v47;
      if (v47 > HIWORD(v292))
      {
        while ((*v39)[*(a1 + 224) - 1 + v47] < -64)
        {
          v49 = --v47;
          if (v47 <= HIWORD(v292))
          {
            goto LABEL_50;
          }
        }

        v49 = v47;
      }

LABEL_50:
      ;
    }

    while (v49 > HIWORD(v292));
  }

  v274 = a8;
  v50 = 0;
  v265 = 0;
  v256 = v31 + 100;
  v254 = (a1 + 176);
  v255 = (a1 + 168);
  v262 = 1;
  v51 = 1;
  v52 = 1;
LABEL_52:
  v53 = v296;
  if (v296 == v274)
  {
    goto LABEL_126;
  }

  v54 = v52 == 0;
  while (1)
  {
    appended = (*(*(a1 + 56) + 168))(a5, a6, v53, 0, 1, &v295, &v294 + 2);
    if ((appended & 0x80000000) != 0)
    {
      goto LABEL_462;
    }

    if (!v295)
    {
      if (v54)
      {
        appended = (*(*(a1 + 56) + 168))(a5, a6, v296, 1, 1, &v293 + 2, &v294 + 2);
        if ((appended & 0x80000000) == 0)
        {
          DepesLayersForWordAndPOS = 2310021130;
          v57 = HIWORD(v293) - v45;
          if ((v57 < 1 || dynamic_strncat(v269, &(*v273)[v45 + *(a1 + 224)], v57, v271, *(*a1 + 8))) && (!*(a1 + 292) || dynamic_strcat(v269, "+", v271, *(*a1 + 8))))
          {
            v52 = 0;
            v45 = HIWORD(v293);
            goto LABEL_121;
          }

          goto LABEL_463;
        }

        goto LABEL_462;
      }

      v52 = 0;
      goto LABEL_121;
    }

    if (*(a1 + 276))
    {
      goto LABEL_120;
    }

    if (v295 != 8 && v295 != 4)
    {
      goto LABEL_120;
    }

    appended = (*(*(a1 + 56) + 168))(a5, a6, v296, 1, 1, &v293 + 2, &v294 + 2);
    if ((appended & 0x80000000) != 0)
    {
      goto LABEL_462;
    }

    appended = (*(*(a1 + 56) + 168))(a5, a6, v296, 2, 1, &v293, &v294 + 2);
    if ((appended & 0x80000000) != 0)
    {
      goto LABEL_462;
    }

    appended = (*(*(a1 + 56) + 168))(a5, a6, v296, 7, 1, &v288, &v294 + 2);
    if ((appended & 0x80000000) != 0)
    {
      goto LABEL_462;
    }

    if (a15 && !*(a1 + 2068))
    {
      v288 = ~v288;
    }

    if (v293 != v45)
    {
      break;
    }

    if (!v50 || *(a1 + 2192))
    {
      goto LABEL_120;
    }

    if (v288 >= v51)
    {
      if (!a14 || a14 == 1 && (cstdlib_strstr(__s1, "latin") || !*(a1 + 2068)))
      {
        appended = (*(*(a1 + 56) + 192))(a5, a6, v300[v50 - 1]);
        if ((appended & 0x80000000) != 0)
        {
          goto LABEL_462;
        }
      }

      v64 = v300[v50 - 1];
      v65 = v296;
      if (v297 == v64)
      {
        v297 = v296;
      }

      if (*(a1 + 280) == v64)
      {
        *(a1 + 280) = v296;
      }

      v300[v50 - 1] = v65;
      if (a15 && !*(a1 + 2068))
      {
        v51 = v288;
      }

LABEL_120:
      v52 = 1;
LABEL_121:
      DepesLayersForWordAndPOS = (*(*(a1 + 56) + 120))(a5, a6, v296, &v296);
      if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
      {
        goto LABEL_463;
      }

      goto LABEL_52;
    }

    v56 = v296;
    appended = (*(*(a1 + 56) + 120))(a5, a6, v296, &v296);
    if ((appended & 0x80000000) != 0)
    {
      goto LABEL_462;
    }

    if (!a14 || a14 == 1 && (cstdlib_strstr(__s1, "latin") || !*(a1 + 2068)))
    {
      appended = (*(*(a1 + 56) + 192))(a5, a6, v56);
      if ((appended & 0x80000000) != 0)
      {
        goto LABEL_462;
      }
    }

    if (a15 && !*(a1 + 2068))
    {
      v288 = v51;
    }

    v54 = 0;
    v53 = v296;
    if (v296 == v274)
    {
      v52 = 1;
LABEL_126:
      v66 = (*(*(a1 + 56) + 168))(a5, a6, v274, 0, 1, &v295, &v294 + 2);
      v67 = v261;
      if ((v66 & 0x80000000) == 0)
      {
        if (!(v295 | v52))
        {
          v66 = (*(*(a1 + 56) + 168))(a5, a6, v296, 1, 1, &v293 + 2, &v294 + 2);
          if ((v66 & 0x80000000) != 0)
          {
            goto LABEL_147;
          }

          DepesLayersForWordAndPOS = 2310021130;
          v77 = HIWORD(v293) - v45;
          if (v77 >= 1 && !dynamic_strncat(v269, &(*v273)[v45 + *(a1 + 224)], v77, v271, *(*a1 + 8)) || *(a1 + 292) && !dynamic_strcat(v269, "+", v271, *(*a1 + 8)))
          {
            goto LABEL_463;
          }

          v45 = HIWORD(v293);
          v67 = v261;
        }

        v68 = v292 - v45;
        if (v68 >= 1 && !dynamic_strncat(v269, &(*v273)[v45 + *(a1 + 224)], v68, v271, *(*a1 + 8)))
        {
          DepesLayersForWordAndPOS = 2310021130;
          goto LABEL_463;
        }

        if (!a13)
        {
          if (cstdlib_strlen(*v269) - 128 >= 0xFFFFFFFFFFFFFF7FLL)
          {
            v76 = v66;
            v81 = *(a1 + 232);
          }

          else
          {
            v78 = *(*a1 + 8);
            v79 = *(a1 + 232);
            v80 = cstdlib_strlen(*(a1 + 160));
            v81 = heap_Realloc(v78, v79, (v80 + 1));
            if (!v81)
            {
              goto LABEL_401;
            }

            v76 = v66;
            *(a1 + 232) = v81;
            v67 = v261;
          }

          cstdlib_strcpy(v81, *v269);
          LOWORD(v257) = 0;
          LODWORD(v82) = cstdlib_strlen(*v269) + 1;
LABEL_156:
          if (!v82)
          {
            v238 = 0;
            v253 = 0;
            v239 = 0;
            v237 = 1;
            DepesLayersForWordAndPOS = v76;
LABEL_404:
            if (v287 == 32)
            {
              v218 = 0;
            }

            else
            {
              v218 = v287;
            }

            *(a1 + 272) = 0;
            *(a1 + 276) = 0;
            if (*(a1 + 2172) == 1 && (*(a1 + 2068) == 1 || !v253))
            {
              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s", "skipping crosstoken grammar");
              goto LABEL_463;
            }

            if (v237)
            {
              appended = oneword_crosstoken(*a1, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 560), __s1, v218, v67, v251, __dst, *(a1 + 2176), v269, v255, v254, (a1 + 184), v271, v34, v268, (a1 + 216), v270, (a1 + 248), v252, (a1 + 264));
              if ((appended & 0x80000000) != 0)
              {
                goto LABEL_462;
              }

              appended = (*(*(a1 + 56) + 88))(a5, a6, v297, &v296);
              if ((appended & 0x80000000) != 0)
              {
                goto LABEL_462;
              }
            }

            else
            {
              *(*(a1 + 248) + 1) = 0;
              *(*v252 + 1) = 0;
            }

            appended = (*(*(a1 + 56) + 168))(a5, a6, v297, 0, 1, &v295, &v294 + 2);
            if ((appended & 0x80000000) == 0)
            {
              appended = (*(*(a1 + 56) + 168))(a5, a6, v297, 1, 1, &v293 + 2, &v294 + 2);
              if ((appended & 0x80000000) == 0)
              {
                if (v295 != 4 && v239)
                {
                  HIWORD(v293) = HIWORD(v293) - v238 + *(a1 + 224);
                }

                appended = (*(*(a1 + 56) + 160))(a5, a6, v296, 1, 1, &v293 + 2, &v294);
                if ((appended & 0x80000000) == 0)
                {
                  v295 = 9;
                  appended = (*(*(a1 + 56) + 160))(a5, a6, v296, 0, 1, &v295, &v294);
                  if ((appended & 0x80000000) == 0)
                  {
                    appended = (*(*(a1 + 56) + 168))(a5, a6, v274, 2, 1, &v293, &v294 + 2);
                    if ((appended & 0x80000000) == 0)
                    {
                      v220 = v293;
                      if (v239)
                      {
                        v220 = v293 - v238 + *(a1 + 224);
                      }

                      LOWORD(v293) = v220 + v238;
                      appended = (*(*(a1 + 56) + 160))(a5, a6, v296, 2, 1, &v293, &v294);
                      if ((appended & 0x80000000) == 0)
                      {
                        v221 = *(*(a1 + 56) + 160);
                        v222 = v296;
                        v223 = cstdlib_strlen(*(a1 + 240));
                        appended = v221(a5, a6, v222, 3, (v223 + 1), *(a1 + 240), &v294);
                        if ((appended & 0x80000000) == 0)
                        {
                          v224 = *(*(a1 + 56) + 160);
                          v225 = v296;
                          v226 = cstdlib_strlen(*(a1 + 248));
                          appended = v224(a5, a6, v225, 5, (v226 + 1), *(a1 + 248), &v294);
                          if ((appended & 0x80000000) == 0)
                          {
                            v227 = *(*(a1 + 56) + 160);
                            v228 = v296;
                            v229 = cstdlib_strlen(*(a1 + 256));
                            appended = v227(a5, a6, v228, 6, (v229 + 1), *(a1 + 256), &v294);
                            if ((appended & 0x80000000) == 0)
                            {
                              if (a15 && !*(a1 + 2068) && v288 >= 2u)
                              {
                                v288 = ~v288;
                              }

                              appended = (*(*(a1 + 56) + 160))(a5, a6, v296, 7, 1, &v288, &v294);
                              if ((appended & 0x80000000) == 0)
                              {
                                if (*(a1 + 1204) && !cstdlib_strcmp(__dst, "normal"))
                                {
                                  cstdlib_strcpy(__dst, *(a1 + 1208));
                                  for (i = 0; i != 3; ++i)
                                  {
                                    __dst[i] = ssft_tolower(__dst[i]);
                                  }
                                }

                                v231 = *(*(a1 + 56) + 160);
                                v232 = v296;
                                v233 = cstdlib_strlen(__dst);
                                DepesLayersForWordAndPOS = v231(a5, a6, v232, 9, (v233 + 1), __dst, &v294);
                                if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
                                {
                                  goto LABEL_463;
                                }

                                if (v253)
                                {
                                  v234 = v300;
                                  do
                                  {
                                    v236 = *v234++;
                                    v235 = v236;
                                    if (*(a1 + 280) == v236)
                                    {
                                      DepesLayersForWordAndPOS = (*(*(a1 + 56) + 120))(a5, a6);
                                      if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
                                      {
                                        goto LABEL_463;
                                      }
                                    }

                                    if (!a14 || a14 == 1 && (cstdlib_strstr(__s1, "latin") || !*(a1 + 2068)))
                                    {
                                      DepesLayersForWordAndPOS = (*(*(a1 + 56) + 192))(a5, a6, v235);
                                      if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
                                      {
                                        goto LABEL_463;
                                      }
                                    }
                                  }

                                  while (--v253);
                                }

                                if (HIWORD(v293) != v293 || a14 && (a14 != 1 || !cstdlib_strstr(__s1, "latin") && *(a1 + 2068)))
                                {
                                  goto LABEL_463;
                                }

                                appended = (*(*(a1 + 56) + 192))(a5, a6, v296);
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

LABEL_462:
            DepesLayersForWordAndPOS = appended;
            goto LABEL_463;
          }

          v253 = 0;
          v83 = 0;
          v247 = 0;
          v248 = v82 - 2;
          v249 = v82;
          v250 = 0;
          v241 = 0;
          v277 = v82;
          while (1)
          {
            v266 = v83;
            v84 = (*(a1 + 232) + v83);
            v85 = cstdlib_strlen("↕");
            if (cstdlib_strncmp(v84, "↕", v85) || !cstdlib_strcmp(__s1, "prompt") || !cstdlib_strcmp(__s1, "internal-nuance-system-norm"))
            {
              break;
            }

            v96 = cstdlib_strlen("↕");
            v97 = v83 + v96;
            if ((v83 + v96) < v82)
            {
              v98 = (v83 + v96);
              while (1)
              {
                v99 = *(a1 + 232);
                v100 = cstdlib_strlen("↕");
                if (!cstdlib_strncmp((v99 + v98), "↕", v100))
                {
                  break;
                }

                if (v249 == ++v98)
                {
                  v97 = v277;
                  goto LABEL_224;
                }
              }

              v97 = v98;
            }

LABEL_224:
            v134 = *(a1 + 232);
            v264 = v97;
            v242 = *(v134 + v97);
            *(v134 + v97) = 0;
            v244 = v97;
            v246 = *(*(a1 + 80) + 104);
            v135 = *(a1 + 232);
            v136 = v266 + cstdlib_strlen("↕");
            v137 = *(a1 + 232);
            v138 = cstdlib_strlen("↕");
            v139 = cstdlib_strlen((v137 + v266 + v138));
            appended = v246(*(a1 + 64), *(a1 + 72), __s1, v135 + v136, (v139 + 1));
            if ((appended & 0x80000000) != 0)
            {
              goto LABEL_462;
            }

            v140 = *(a1 + 160);
            v141 = *(a1 + 232);
            v142 = cstdlib_strlen("↕");
            cstdlib_strcpy(v140, (v141 + v266 + v142));
            cstdlib_strcpy(__s, "spell_acronym");
            v143 = cstdlib_strlen(__s);
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", __s, *(a1 + 160));
            v144 = *(*(a1 + 104) + 120);
            v145 = *(a1 + 160);
            v146 = cstdlib_strlen(v145);
            appended = v144(*(a1 + 88), *(a1 + 96), 0, v145, v146);
            if ((appended & 0x80000000) != 0)
            {
              goto LABEL_462;
            }

            if (cstdlib_strcmp(__s1, "normal") && cstdlib_strlen(__s1) + v143 + 2 <= 0x7F)
            {
              cstdlib_strcat(__s, "_");
              cstdlib_strcat(__s, __s1);
            }

            if (((*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __s) & 0x80000000) != 0)
            {
              __s[v143] = 0;
              appended = (*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __s);
              if ((appended & 0x80000000) != 0)
              {
                goto LABEL_462;
              }
            }

            appended = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 0, &__src, &v289);
            if ((appended & 0x80000000) != 0)
            {
              goto LABEL_462;
            }

            __src[v289] = 0;
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", __s, __src);
            v147 = cstdlib_strlen(__src);
            v148 = cstdlib_strlen(*(a1 + 160));
            *(*(a1 + 232) + v244) = v242;
            v149 = (v257 + v147 - v148);
            v267 = v149;
            if (v149 <= 0)
            {
              v154 = v149 + 1;
              v156 = (a1 + 160);
              v157 = v273;
            }

            else
            {
              v150 = *(*a1 + 8);
              v151 = v149;
              v152 = *v273;
              v153 = cstdlib_strlen(*v273);
              v154 = v151 + 1;
              v155 = heap_Realloc(v150, v152, (v154 + v153));
              if (!v155)
              {
                goto LABEL_401;
              }

              *v273 = v155;
              v156 = (a1 + 160);
              v157 = v273;
            }

            v158 = cstdlib_strlen(__src);
            v159 = (HIWORD(v292) + *(a1 + 224) + v158);
            if (v159 > (v154 + cstdlib_strlen(*v157)))
            {
              log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34001, 0);
              DepesLayersForWordAndPOS = 2310021127;
              goto LABEL_463;
            }

            v160 = HIWORD(v292);
            v161 = cstdlib_strlen(*v156);
            LOWORD(v292) = v160 - v257 + v161;
            if (v267 < 1)
            {
              if (v267 < 0)
              {
                for (j = *(a1 + 224) + v160 - v257 + v161; j <= cstdlib_strlen(*v157); ++j)
                {
                  (*v157)[j + v267] = (*v157)[j];
                }
              }
            }

            else
            {
              v162 = cstdlib_strlen(*v157);
              if (*(a1 + 224) + v292 <= v162)
              {
                v163 = v162;
                do
                {
                  (*v157)[v163 + v267] = (*v157)[v162--];
                  v163 = v162;
                }

                while (*(a1 + 224) + v292 <= v162);
              }
            }

            v164 = &(*v157)[HIWORD(v292)];
            v165 = *(a1 + 224);
            v166 = v157;
            v167 = __src;
            v168 = cstdlib_strlen(__src);
            cstdlib_memcpy(&v164[v165], v167, v168);
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Normalizing to: %s", *v166);
            v169 = cstdlib_strlen(*(a1 + 160));
            HIWORD(v292) += v169;
            v170 = *a10;
            if (v170 < *a11)
            {
              v171 = v292;
              v172 = (a9 + 12 + 32 * v170);
              do
              {
                if (v171 <= (*v172 - a12))
                {
                  break;
                }

                *v172 += *(a1 + 224);
                v172 += 8;
                *a10 = ++v170;
              }

              while (v170 < *a11);
            }

            LOWORD(v283) = 0;
            LOWORD(v282) = 0;
            LOWORD(v281) = 0;
            LOWORD(v280) = 0;
            v173 = v267;
            if (*(a1 + 2272) == 1)
            {
              appended = hlp_RemoveMNCRecords(a1, a5, a6, v273, v297, v274, v267);
              if ((appended & 0x80000000) != 0)
              {
                goto LABEL_462;
              }
            }

            appended = (*(*(a1 + 56) + 104))(a5, a6, 1, 0, &v280);
            if ((appended & 0x80000000) != 0)
            {
              goto LABEL_462;
            }

            appended = (*(*(a1 + 56) + 104))(a5, a6, 2, v280, &v281);
            if ((appended & 0x80000000) != 0)
            {
              goto LABEL_462;
            }

            while (v281 != *(a1 + 280))
            {
              appended = (*(*(a1 + 56) + 168))(a5, a6);
              if ((appended & 0x80000000) == 0)
              {
                if (v282 - *(a1 + 224) >= v292)
                {
                  LOWORD(v282) = v282 + v267;
                }

                appended = (*(*(a1 + 56) + 160))(a5, a6, v281, 2, 1, &v282, &v294);
                if ((appended & 0x80000000) == 0)
                {
                  appended = (*(*(a1 + 56) + 120))(a5, a6, v281, &v281);
                  if ((appended & 0x80000000) == 0)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_462;
            }

            if (v281)
            {
              appended = (*(*(a1 + 56) + 168))(a5, a6, v281, 1, 1, &v283, &v294 + 2);
              if ((appended & 0x80000000) != 0)
              {
                goto LABEL_462;
              }
            }

            while (v283 < v292 && *(a1 + 280))
            {
              appended = (*(*(a1 + 56) + 168))(a5, a6);
              if ((appended & 0x80000000) == 0)
              {
                v182 = (v295 & 0xFFFFFFFC) != 4 && (v295 - 9) > 1;
                if (v182 || (appended = (*(*(a1 + 56) + 168))(a5, a6, *(a1 + 280), 2, 1, &v282, &v294 + 2), (appended & 0x80000000) == 0) && ((v183 = *(a1 + 224), LOWORD(v283) = v183 + v283, v282 >= v292) ? (v184 = v173) : (v184 = 0), (LOWORD(v282) = v282 + v183 + v184, appended = (*(*(a1 + 56) + 160))(a5, a6, *(a1 + 280), 1, 1, &v283, &v294), (appended & 0x80000000) == 0) && (appended = (*(*(a1 + 56) + 160))(a5, a6, *(a1 + 280), 2, 1, &v282, &v294), (appended & 0x80000000) == 0)))
                {
                  appended = (*(*(a1 + 56) + 120))(a5, a6, *(a1 + 280), a1 + 280);
                  if ((appended & 0x80000000) == 0)
                  {
                    if (!*(a1 + 280))
                    {
                      continue;
                    }

                    appended = (*(*(a1 + 56) + 168))(a5, a6);
                    if ((appended & 0x80000000) == 0)
                    {
                      if (v283 < v292)
                      {
                        continue;
                      }

                      while (*(a1 + 280))
                      {
                        appended = (*(*(a1 + 56) + 168))(a5, a6);
                        if ((appended & 0x80000000) != 0)
                        {
                          goto LABEL_462;
                        }

                        if (v295 != 17)
                        {
                          break;
                        }

                        DepesLayersForWordAndPOS = (*(*(a1 + 56) + 120))(a5, a6, *(a1 + 280), a1 + 280);
                        if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
                        {
                          goto LABEL_463;
                        }
                      }

                      appended = (*(*(a1 + 56) + 168))(a5, a6);
                      v173 = v267;
                      if ((appended & 0x80000000) == 0)
                      {
                        continue;
                      }
                    }
                  }
                }
              }

              goto LABEL_462;
            }

            *(a1 + 224) += v173;
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "OOV_METHOD SPELLACRONYM %s", *(a1 + 232));
            DepesLayersForWordAndPOS = oneword_TranscribeAcronym(a1, __s1, __src, &v287, __dst);
            if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
            {
              goto LABEL_463;
            }

            WORD2(v241) += v173;
            LODWORD(v241) = 1;
            v67 = v261;
            LOWORD(v82) = v277;
            v83 = v264;
LABEL_398:
            v83 += utf8_determineUTF8CharLength(*(*(a1 + 232) + v83));
            if (v83 >= v82)
            {
              v237 = v247 == 0;
              v238 = WORD2(v241);
              v239 = v241 != 0;
              goto LABEL_404;
            }
          }

          v263 = v83;
          if (*(a1 + 2192) && *(a1 + 2248))
          {
            goto LABEL_165;
          }

          v86 = *(a1 + 232);
          v87 = cstdlib_strlen("§");
          if (!cstdlib_strncmp((v86 + v83), "§", v87) || (v88 = *(a1 + 232), v89 = cstdlib_strlen("↕"), !cstdlib_strncmp((v88 + v83), "↕", v89)) && (!cstdlib_strcmp(__s1, "prompt") || !cstdlib_strcmp(__s1, "internal-nuance-system-norm")))
          {
            v282 = 0;
            v283 = 0;
            v105 = *(a1 + 232);
            v106 = cstdlib_strlen("§");
            if (cstdlib_strncmp((v105 + v83), "§", v106))
            {
              v107 = "↕";
            }

            else
            {
              v107 = "§";
            }

            v258 = cstdlib_strlen(v107);
            v108 = v83;
            v109 = v277;
            while (1)
            {
              v110 = v108++;
              if (v108 >= v109)
              {
                break;
              }

              v111 = v108;
              v112 = (*(a1 + 232) + v108);
              v113 = cstdlib_strlen("§");
              if (cstdlib_strncmp(v112, "§", v113))
              {
                v114 = *(a1 + 232);
                v115 = cstdlib_strlen("↕");
                v116 = (v114 + v108);
                v109 = v277;
                if (cstdlib_strncmp(v116, "↕", v115))
                {
                  continue;
                }
              }

              goto LABEL_203;
            }

            v111 = v108;
LABEL_203:
            v127 = *(a1 + 232);
            v128 = *(v127 + v111);
            *(v127 + v111) = 0;
            v245 = v111;
            v243 = v128;
            if (*(a1 + 2004))
            {
              v129 = *a11;
              if (v129 >= 2)
              {
                v130 = v129 - 1;
                v131 = (a9 + 56);
                while (*(v131 - 6) != 58 || *(v131 - 3) + v41 - *(a9 + 12) != HIWORD(v292))
                {
                  v131 += 4;
                  if (!--v130)
                  {
                    goto LABEL_303;
                  }
                }

                v250 = *v131;
              }

LABEL_303:
              DepesLayersForWordAndPOS = getDepesLayersForWordAndPOS(a1, __s1, (*(a1 + 232) + v266 + v258), v250);
              v132 = (*(a1 + 232) + v266 + v258);
            }

            else
            {
              DepesLayersForWordAndPOS = mde_stemafx_Main(a1, __s1, (*(a1 + 232) + v266 + v258));
              v132 = *(a1 + 160);
            }

            v185 = cstdlib_strlen(v132);
            HIWORD(v292) += v185;
            if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
            {
              goto LABEL_463;
            }

            cstdlib_strcpy(__s, "one_word");
            v260 = cstdlib_strlen(__s);
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", __s, *(a1 + 160));
            v186 = *(*(a1 + 104) + 120);
            v187 = *(a1 + 160);
            v188 = cstdlib_strlen(v187);
            appended = v186(*(a1 + 88), *(a1 + 96), 0, v187, v188);
            if ((appended & 0x80000000) != 0)
            {
              goto LABEL_462;
            }

            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L3: %s", __s, *(a1 + 168));
            v189 = *(*(a1 + 104) + 120);
            v190 = *(a1 + 168);
            v191 = cstdlib_strlen(v190);
            appended = v189(*(a1 + 88), *(a1 + 96), 2, v190, v191);
            if ((appended & 0x80000000) != 0)
            {
              goto LABEL_462;
            }

            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L4: %s", __s, *(a1 + 176));
            v192 = *(*(a1 + 104) + 120);
            v193 = *(a1 + 176);
            v194 = cstdlib_strlen(v193);
            appended = v192(*(a1 + 88), *(a1 + 96), 3, v193, v194);
            if ((appended & 0x80000000) != 0)
            {
              goto LABEL_462;
            }

            v195 = __s1;
            if (cstdlib_strcmp(__s1, "normal") && (ssftmap_Find(*(a1 + 568), __s1, &v282) & 0x80000000) == 0)
            {
              if (!v263 && v248 == v108)
              {
                appended = (*(*(a1 + 56) + 88))(a5, a6, v297, &v296);
                if ((appended & 0x80000000) != 0)
                {
                  goto LABEL_462;
                }

                appended = dt_Main(a1, v296, a5, a6, *(v282 + 16), __s1);
                DepesLayersForWordAndPOS = (appended & 0x1FFF) == 0x10A ? 0 : appended;
                v67 = v261;
                if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
                {
                  goto LABEL_462;
                }

                v247 = 1;
LABEL_323:
                v197 = *(a1 + 232);
                v198 = cstdlib_strlen("§");
                if (!cstdlib_strncmp((v197 + v266), "§", v198))
                {
                  oneword_ReplaceUnderscoreWithDot(*v270);
                  DepesLayersForWordAndPOS = 0;
                }

                LOWORD(v82) = v277;
                if (*(a1 + 560))
                {
                  v199 = v251;
                  if (v251)
                  {
                    v287 = v67;
                    goto LABEL_350;
                  }
                }

                else
                {
                  v199 = __s1;
                  v287 = *__s1;
LABEL_350:
                  cstdlib_strncpy(__dst, v199, 0x14uLL);
                }

LABEL_364:
                v108 = v110 + 2;
LABEL_397:
                LOWORD(v257) = 0;
                v83 = v108;
                goto LABEL_398;
              }

              v196 = dt_Main(a1, 0, a5, a6, *(v282 + 16), __s1);
              if ((v196 & 0x1FFF) == 0x10A)
              {
                DepesLayersForWordAndPOS = 0;
LABEL_322:
                v67 = v261;
                goto LABEL_323;
              }

              v195 = __s1;
              if ((v196 & 0x80000000) == 0)
              {
                DepesLayersForWordAndPOS = v196;
                goto LABEL_322;
              }
            }

            if (cstdlib_strcmp(v195, "normal"))
            {
              if (cstdlib_strlen(v195) + v260 + 2 <= 0x7F)
              {
                cstdlib_strcat(__s, "_");
                cstdlib_strcat(__s, v195);
                if (((*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __s) & 0x80000000) == 0)
                {
                  if (*(a1 + 560))
                  {
                    if (v251)
                    {
                      v287 = v261;
                      cstdlib_strncpy(__dst, v251, 0x14uLL);
                    }
                  }

                  else
                  {
                    v287 = *__s1;
                    cstdlib_strncpy(__dst, __s1, 0x14uLL);
                  }

                  goto LABEL_368;
                }
              }
            }

            LODWORD(v281) = 0;
            if (*(a1 + 928))
            {
              if (cstdlib_strlen(__s1) >= 2 && !cstdlib_strchr(__s1, 95))
              {
                appended = oneword_Lid(a1, &v281);
                if ((appended & 0x80000000) != 0)
                {
                  goto LABEL_462;
                }
              }

              if (v281)
              {
                __s[v260] = 0;
                goto LABEL_366;
              }
            }

            if ((ssftmap_Find(*(a1 + 568), "normal", &v282) & 0x80000000) == 0)
            {
              if (!v263 && v248 == v108)
              {
                appended = (*(*(a1 + 56) + 88))(a5, a6, v297, &v296);
                if ((appended & 0x80000000) != 0)
                {
                  goto LABEL_462;
                }

                appended = dt_Main(a1, v296, a5, a6, *(v282 + 16), __s1);
                DepesLayersForWordAndPOS = (appended & 0x1FFF) == 0x10A ? 0 : appended;
                v67 = v261;
                if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
                {
                  goto LABEL_462;
                }

                v247 = 1;
                goto LABEL_361;
              }

              v200 = dt_Main(a1, 0, a5, a6, *(v282 + 16), __s1);
              if ((v200 & 0x1FFF) == 0x10A)
              {
                DepesLayersForWordAndPOS = 0;
LABEL_360:
                v67 = v261;
LABEL_361:
                v202 = *(a1 + 232);
                v203 = cstdlib_strlen("§");
                if (!cstdlib_strncmp((v202 + v266), "§", v203))
                {
                  oneword_ReplaceUnderscoreWithDot(*v270);
                  DepesLayersForWordAndPOS = 0;
                }

                LOWORD(v82) = v277;
                goto LABEL_364;
              }

              if ((v200 & 0x80000000) == 0)
              {
                DepesLayersForWordAndPOS = v200;
                goto LABEL_360;
              }
            }

            v204 = v281;
            __s[v260] = 0;
            if (v204)
            {
LABEL_366:
              cstdlib_strcat(__s, "_e");
              v287 = 101;
              cstdlib_strcpy(__dst, "e");
            }

            appended = (*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __s);
            if ((appended & 0x80000000) != 0)
            {
              goto LABEL_462;
            }

LABEL_368:
            appended = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 0, &__src, &v289);
            if ((appended & 0x80000000) != 0)
            {
              goto LABEL_462;
            }

            __src[v289] = 0;
            appended = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 2, &v290, &v289);
            if ((appended & 0x80000000) != 0)
            {
              goto LABEL_462;
            }

            v290[v289] = 0;
            appended = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 4, &v283, &v289);
            if ((appended & 0x80000000) != 0)
            {
              goto LABEL_462;
            }

            v283[v289] = 0;
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", __s, __src);
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O3: %s", __s, v290);
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O5: %s", __s, v283);
            if (cstdlib_strlen(__src))
            {
              v205 = 0;
              do
              {
                v206 = &__src[v205];
                if (*v206 == 126)
                {
                  v207 = cstdlib_strlen(v206 + 1);
                  cstdlib_memmove(v206, v206 + 1, (v207 + 1));
                  --v205;
                }

                else
                {
                  v208 = cstdlib_strlen("¡");
                  if (!cstdlib_strncmp(v206, "¡", v208))
                  {
                    v209 = &__src[v205];
                    v210 = cstdlib_strlen(v209 + 2);
                    cstdlib_memmove(v209 + 1, v209 + 2, v210 + 1);
                    __src[v205] = 126;
                  }
                }

                ++v205;
              }

              while (cstdlib_strlen(__src) > v205);
            }

            v211 = 0;
            *(*(a1 + 232) + v245) = v243;
            v82 = v290;
            while (1)
            {
              v212 = v211;
              v213 = v290[v211];
              if (v213 != 32 && v213 != 126)
              {
                break;
              }

              ++v211;
            }

            if (v290[v211])
            {
              while (v213 != 32 && v213 != 126)
              {
                LOBYTE(v213) = v290[++v211];
              }

              v290[v211] = 0;
              v82 = v290;
            }

            v214 = 0;
            v215 = v283;
            while (1)
            {
              v216 = v214;
              v217 = v283[v214];
              if (v217 != 32 && v217 != 126)
              {
                break;
              }

              ++v214;
            }

            if (v283[v214])
            {
              while (v217 != 32 && v217 != 126)
              {
                LOBYTE(v217) = v283[++v214];
              }

              v283[v214] = 0;
              v215 = v283;
            }

            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "OOV_METHOD ONEWORDGRAMMAR %s", *(a1 + 232));
            appended = oneword_AppendPhon(a1, __src, (v82 + v212), &v215[v216], v287, 1);
            DepesLayersForWordAndPOS = 0;
            v67 = v261;
            LOWORD(v82) = v277;
            if ((appended & 0x80000000) != 0)
            {
              goto LABEL_462;
            }

            goto LABEL_397;
          }

          if (*(a1 + 2192) && *(a1 + 2248))
          {
LABEL_165:
            v90 = *(a1 + 232);
            v91 = cstdlib_strlen("§");
            if (!cstdlib_strncmp((v90 + v83), "§", v91) || (v92 = *(a1 + 232), v93 = cstdlib_strlen("↕"), !cstdlib_strncmp((v92 + v83), "↕", v93)) && (!cstdlib_strcmp(__s1, "prompt") || !cstdlib_strcmp(__s1, "internal-nuance-system-norm")))
            {
              v117 = *(a1 + 232);
              v118 = cstdlib_strlen("§");
              if (cstdlib_strncmp((v117 + v83), "§", v118))
              {
                v119 = "↕";
              }

              else
              {
                v119 = "§";
              }

              v259 = cstdlib_strlen(v119);
              while (++v83 < v277)
              {
                v120 = v83;
                v121 = v83;
                v122 = (*(a1 + 232) + v83);
                v123 = cstdlib_strlen("§");
                if (cstdlib_strncmp(v122, "§", v123))
                {
                  v124 = *(a1 + 232);
                  v125 = cstdlib_strlen("↕");
                  v126 = cstdlib_strncmp((v124 + v120), "↕", v125);
                  v83 = v121;
                  if (v126)
                  {
                    continue;
                  }
                }

                goto LABEL_212;
              }

              v120 = v83;
LABEL_212:
              *(*(a1 + 232) + v120) = 0;
              cstdlib_strncpy(v298, (*(a1 + 232) + v266 + v259), 0x7FuLL);
              v298[128] = 0;
              appended = (*(*(a1 + 80) + 136))(*(a1 + 64), *(a1 + 72), "normal", v298, 128);
              if ((appended & 0x80000000) != 0)
              {
                goto LABEL_462;
              }

              appended = mosynt_StartWordAnalysis(*(a1 + 48), *(a1 + 2200), *(a1 + 2208), *(a1 + 2216), *(a1 + 2224), *(a1 + 2232), *(a1 + 2240), v278);
              v67 = v261;
              if ((appended & 0x80000000) != 0)
              {
                goto LABEL_462;
              }

              appended = mosynt_WordAnalysis(*(a1 + 48), v278, v298, 0, 1, 1, &v286, &v284);
              if ((appended & 0x80000000) != 0)
              {
                goto LABEL_462;
              }

              appended = mosynt_SkipToFirstOptimalReading(*(a1 + 48), v278);
              if ((appended & 0x80000000) != 0)
              {
                goto LABEL_462;
              }

              appended = mosynt_GetReading(*(a1 + 48), v278, 0, &v286, v275 + 15000, 5000, v275 + 5000, 5000, &v285);
              if ((appended & 0x80000000) != 0)
              {
                goto LABEL_462;
              }

              appended = mosynt_SubstAllSubstrOcc(v275 + 5000, "~", "¡", v275 + 10000, 5000);
              if ((appended & 0x80000000) != 0)
              {
                goto LABEL_462;
              }

              cstdlib_strcpy(v275 + 5000, v275 + 10000);
              if (v286)
              {
                cstdlib_strcpy(v275 + 15000, "");
                cstdlib_strcpy(v275 + 20000, "*");
                v287 = 32;
                appended = oneword_AppendPhon(a1, v275 + 5000, v275 + 15000, (v275 + 20000), 32, 1);
                if ((appended & 0x80000000) != 0)
                {
                  goto LABEL_462;
                }
              }

              appended = mosynt_FinishWordAnalysis(*(a1 + 48), v278);
              if ((appended & 0x80000000) != 0)
              {
                goto LABEL_462;
              }

              DepesLayersForWordAndPOS = mosynt_ResetMosyntWS(*(a1 + 48), v275);
              LOWORD(v82) = v277;
              if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
              {
                goto LABEL_463;
              }

              v133 = cstdlib_strlen(*v269);
              LOWORD(v257) = 0;
              HIWORD(v292) += v133;
              goto LABEL_398;
            }
          }

          v94 = *(a1 + 232);
          v95 = cstdlib_strlen("◄");
          if (cstdlib_strncmp((v94 + v83), "◄", v95))
          {
            utf8_ToLower((*(a1 + 232) + v83), 0, &v283);
            appended = oneword_AppendPhon(a1, &v283, "", "", 32, 0);
            LOWORD(v82) = v277;
            if ((appended & 0x80000000) != 0)
            {
              goto LABEL_462;
            }

            LOWORD(v257) = 0;
            DepesLayersForWordAndPOS = 0;
            HIWORD(v292) += utf8_determineUTF8CharLength(*(*(a1 + 232) + v83));
            goto LABEL_275;
          }

          v282 = 0;
          v283 = 0;
          v280 = 0;
          v281 = 0;
          v279 = 4;
          v101 = cstdlib_strlen("◄");
          v102 = v83 + v101;
          LOWORD(v82) = v277;
          v83 += v101;
          if ((v263 + v101) < v277)
          {
            v82 = v102;
            while (1)
            {
              v103 = *(a1 + 232);
              v104 = cstdlib_strlen("◄");
              if (!cstdlib_strncmp((v103 + v82), "◄", v104))
              {
                break;
              }

              ++HIWORD(v292);
              if (v249 == ++v82)
              {
                LOWORD(v82) = v277;
                v83 = v277;
                goto LABEL_259;
              }
            }

            v83 = v82;
            LOWORD(v82) = v277;
          }

LABEL_259:
          v174 = v300[v253];
          appended = (*(*(a1 + 56) + 176))(a5, a6, v174, 3, &v283, &v294 + 2);
          if ((appended & 0x80000000) != 0)
          {
            goto LABEL_462;
          }

          appended = (*(*(a1 + 56) + 176))(a5, a6, v174, 5, &v282, &v294 + 2);
          if ((appended & 0x80000000) != 0)
          {
            goto LABEL_462;
          }

          appended = (*(*(a1 + 56) + 176))(a5, a6, v174, 6, &v281, &v294 + 2);
          if ((appended & 0x80000000) != 0)
          {
            goto LABEL_462;
          }

          appended = (*(*(a1 + 56) + 168))(a5, a6, v174, 0, 1, &v279, &v294 + 2);
          if ((appended & 0x80000000) != 0)
          {
            goto LABEL_462;
          }

          if ((v253 & 0x80) != 0)
          {
            DepesLayersForWordAndPOS = 2310021632;
            goto LABEL_463;
          }

          DepesLayersForWordAndPOS = (*(*(a1 + 56) + 176))(a5, a6, v174, 9, &v280, &v294 + 2);
          if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
          {
            goto LABEL_463;
          }

          cstdlib_strncpy(__dst, v280, 0x14uLL);
          if (__dst[0])
          {
            v175 = __dst[0];
          }

          else
          {
            v175 = 32;
          }

          v287 = v175;
          v176 = v283;
          if (v279 == 4)
          {
            if (!cstdlib_strcmp(v283, "_"))
            {
LABEL_274:
              LOWORD(v257) = 0;
              ++v253;
LABEL_275:
              v67 = v261;
              goto LABEL_398;
            }

            v177 = v282;
            v176 = v283;
            v178 = v281;
            v179 = a1;
            v180 = v175;
            v181 = 1;
          }

          else
          {
            v178 = v281;
            v177 = v282;
            v179 = a1;
            v180 = v175;
            v181 = 0;
          }

          appended = oneword_AppendPhon(v179, v176, v177, v178, v180, v181);
          if ((appended & 0x80000000) != 0)
          {
            goto LABEL_462;
          }

          DepesLayersForWordAndPOS = 0;
          goto LABEL_274;
        }

        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", __s, *(a1 + 160));
        v69 = *(*(a1 + 104) + 120);
        v70 = *(a1 + 160);
        v71 = cstdlib_strlen(v70);
        appended = v69(*(a1 + 88), *(a1 + 96), 0, v70, v71);
        if ((appended & 0x80000000) != 0)
        {
          goto LABEL_462;
        }

        if (cstdlib_strcmp(__s1, "normal") && cstdlib_strlen(__s1) + v276 + 2 <= 0x7F)
        {
          cstdlib_strcat(__s, "_");
          cstdlib_strcat(__s, __s1);
        }

        if (((*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __s) & 0x80000000) != 0)
        {
          __s[v276] = 0;
          appended = (*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __s);
          if ((appended & 0x80000000) != 0)
          {
            goto LABEL_462;
          }
        }

        v66 = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 0, &__src, &v289);
        if ((v66 & 0x80000000) == 0)
        {
          __src[v289] = 0;
          v72 = cstdlib_strlen(__src);
          v73 = cstdlib_strlen(*(a1 + 160));
          v74 = count_inserted_oneword_bytes(__src);
          log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", __s, __src);
          if (v289 <= 0x7FuLL)
          {
            v76 = v66;
            v75 = *(a1 + 232);
            goto LABEL_155;
          }

          v75 = heap_Realloc(*(*a1 + 8), *(a1 + 232), v289 + 1);
          if (v75)
          {
            v76 = v66;
            *(a1 + 232) = v75;
LABEL_155:
            v257 = (v72 - (v74 + v73)) & ~((v72 - (v74 + v73)) >> 31);
            cstdlib_strcpy(v75, __src);
            LODWORD(v82) = v289;
            v67 = v261;
            goto LABEL_156;
          }

LABEL_401:
          DepesLayersForWordAndPOS = 2310021130;
          goto LABEL_402;
        }
      }

LABEL_147:
      DepesLayersForWordAndPOS = v66;
      goto LABEL_463;
    }
  }

  DepesLayersForWordAndPOS = 2310021130;
  if ((v50 & 0x80) != 0)
  {
    DepesLayersForWordAndPOS = 2310021632;
    goto LABEL_463;
  }

  v51 = v288;
  v300[v50] = v296;
  v58 = HIWORD(v293) - v45;
  if (v58 < 1 || dynamic_strncat(v269, &(*v273)[v45 + *(a1 + 224)], v58, v271, *(*a1 + 8)))
  {
    v59 = v262;
    if (v265 + 2 > 100 * v262)
    {
      v59 = v262 + 1;
    }

    v262 = v59;
    v60 = v256 + 100 * v59;
    if (v60 > *v271)
    {
      v61 = heap_Realloc(*(*a1 + 8), *(a1 + 160), v256 + 100 * v59);
      if (v61)
      {
        *v269 = v61;
        *v271 = v60;
        goto LABEL_99;
      }

LABEL_402:
      log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
      goto LABEL_463;
    }

LABEL_99:
    if (v60 > *v34)
    {
      v62 = heap_Realloc(*(*a1 + 8), *(a1 + 168), v60);
      if (!v62)
      {
        goto LABEL_402;
      }

      *v255 = v62;
      *v34 = v60;
    }

    if (v60 > *v268)
    {
      v63 = heap_Realloc(*(*a1 + 8), *(a1 + 176), v60);
      if (!v63)
      {
        goto LABEL_402;
      }

      *v254 = v63;
      *v268 = v60;
    }

    if (dynamic_strcat(v269, "◄", v271, *(*a1 + 8)) && dynamic_strncat(v269, &(*v273)[HIWORD(v293) + *(a1 + 224)], v293 - HIWORD(v293), v271, *(*a1 + 8)) && dynamic_strcat(v269, "◄", v271, *(*a1 + 8)))
    {
      ++v50;
      v265 += 2;
      v52 = 1;
      v45 = v293;
      goto LABEL_121;
    }
  }

LABEL_463:
  heap_Free(*(*a1 + 8), v278);
  return DepesLayersForWordAndPOS;
}

uint64_t oneword_joinTokens(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, int a6)
{
  v8 = a4;
  v29 = a4;
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  v12 = *a5;
  v22 = 0;
  result = (*(*(a1 + 56) + 168))(a2, a3, a4, 1, 1, &v22, &v27 + 2);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v23 = v22;
  if (v8)
  {
    while (1)
    {
      v14 = v8;
      result = (*(*(a1 + 56) + 136))(a2, a3, v8, &v29);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (!v29)
      {
        goto LABEL_13;
      }

      result = (*(*(a1 + 56) + 168))(a2, a3);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      LOWORD(v8) = v29;
      if (v23 != v22 || v29 == 0)
      {
        goto LABEL_13;
      }
    }
  }

  v14 = 0;
LABEL_13:
  v29 = v14;
  if (v12 == v14)
  {
    result = (*(*(a1 + 56) + 168))(a2, a3, v12, 0, 1, &v28, &v27 + 2);
    if ((result & 0x80000000) == 0 && v28 == 8)
    {
      v28 = 9;
      return (*(*(a1 + 56) + 160))(a2, a3, v29, 0, 1, &v28, &v27);
    }

    return result;
  }

  LOWORD(v16) = 0;
  v24 = v14;
  while (1)
  {
    v17 = *(*(a1 + 56) + 168);
    if (v24 == v12)
    {
      break;
    }

    result = v17(a2, a3);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (v28 == 8 || v28 == 4)
    {
      if (v16)
      {
        if (v26 == HIWORD(v25))
        {
          result = (*(*(a1 + 56) + 192))(a2, a3, v16);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v19 = v24;
          if (*(a1 + 280) == v16)
          {
            *(a1 + 280) = v24;
          }

          v28 = 9;
          result = (*(*(a1 + 56) + 160))(a2, a3, v19, 0, 1, &v28, &v27);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = (*(*(a1 + 56) + 160))(a2, a3, v24, 1, 1, &v26 + 2, &v27);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (a6)
          {
            result = (*(*(a1 + 56) + 160))(a2, a3, v24, 3, 1, "", &v27);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }
        }

        else
        {
          v28 = 9;
          result = (*(*(a1 + 56) + 160))(a2, a3, v16, 0, 1, &v28, &v27);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = (*(*(a1 + 56) + 160))(a2, a3, v24, 0, 1, &v28, &v27);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          HIWORD(v26) = HIWORD(v25);
        }

        LOWORD(v26) = v25;
        LOWORD(v16) = v24;
      }

      else
      {
        v16 = v24;
        result = (*(*(a1 + 56) + 168))(a2, a3, v24, 1, 1, &v26 + 2, &v27 + 2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = (*(*(a1 + 56) + 168))(a2, a3, v16, 2, 1, &v26, &v27 + 2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }
    }

    result = (*(*(a1 + 56) + 120))(a2, a3, v24, &v24);
    if ((result & 0x80000000) == 0)
    {
      result = (*(*(a1 + 56) + 168))(a2, a3, v24, 1, 1, &v25 + 2, &v27 + 2);
      if ((result & 0x80000000) == 0)
      {
        result = (*(*(a1 + 56) + 168))(a2, a3, v24, 2, 1, &v25, &v27 + 2);
        if ((result & 0x80000000) == 0)
        {
          result = (*(*(a1 + 56) + 168))(a2, a3, v24, 0, 1, &v28, &v27 + 2);
          if ((result & 0x80000000) == 0)
          {
            continue;
          }
        }
      }
    }

    return result;
  }

  result = (v17)(a2, a3, v12, 0, 1, &v28, &v27 + 2);
  if ((result & 0x80000000) == 0)
  {
    if (v28 != 8 && v28 != 4)
    {
      if (!v16)
      {
        goto LABEL_70;
      }

      v28 = 9;
      result = (*(*(a1 + 56) + 160))(a2, a3, v16, 0, 1, &v28, &v27);
      goto LABEL_69;
    }

    if (v16)
    {
      result = (*(*(a1 + 56) + 168))(a2, a3, v24, 1, 1, &v25 + 2, &v27 + 2);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = (*(*(a1 + 56) + 168))(a2, a3, v24, 2, 1, &v25, &v27 + 2);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (v26 == HIWORD(v25))
      {
        result = (*(*(a1 + 56) + 192))(a2, a3, v16);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v21 = v24;
        if (*(a1 + 280) == v16)
        {
          *(a1 + 280) = v24;
        }

        v28 = 9;
        result = (*(*(a1 + 56) + 160))(a2, a3, v21, 0, 1, &v28, &v27);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = (*(*(a1 + 56) + 160))(a2, a3, v24, 1, 1, &v26 + 2, &v27);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (!a6)
        {
LABEL_70:
          *a5 = v24;
          return result;
        }

        result = (*(*(a1 + 56) + 160))(a2, a3, v24, 3, 1, "", &v27);
LABEL_69:
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        goto LABEL_70;
      }

      v28 = 9;
      result = (*(*(a1 + 56) + 160))(a2, a3, v16, 0, 1, &v28, &v27);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    else
    {
      v28 = 9;
    }

    result = (*(*(a1 + 56) + 160))(a2, a3, v24, 0, 1, &v28, &v27);
    goto LABEL_69;
  }

  return result;
}