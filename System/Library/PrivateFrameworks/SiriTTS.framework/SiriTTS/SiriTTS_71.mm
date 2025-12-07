size_t hlp_updateWord(uint64_t a1, char *a2, _WORD *a3, uint64_t a4, uint64_t a5, __int16 *a6)
{
  if ((bed_Insert(a1, &szWORD_BEG_3, 1) & 0x80000000) == 0)
  {
    ++*a3;
    v12 = strlen(a2);
    if ((bed_Insert(a1, a2, v12) & 0x80000000) == 0)
    {
      *a3 += strlen(a2);
      if ((bed_Insert(a1, &szWORD_END_4, 1) & 0x80000000) == 0)
      {
        ++*a3;
      }
    }
  }

  if (*(a5 + 16) == 1)
  {
    v13 = *a6;
    v14 = *(a5 + 8);
    v15 = *a5;
    if (v14 < *(a5 + 10))
    {
LABEL_9:
      v17 = v15 + 12 * v14;
      *v17 = v13;
      *(v17 + 2) = 0;
      *(a5 + 8) = v14 + 1;
      goto LABEL_10;
    }

    v16 = heap_Realloc(*(a4 + 8), v15, 12 * *(a5 + 10) + 121);
    if (v16)
    {
      v15 = v16;
      *a5 = v16;
      *(a5 + 10) += 10;
      v14 = *(a5 + 8);
      goto LABEL_9;
    }
  }

LABEL_10:
  result = strlen(a2);
  *a6 += result;
  return result;
}

uint64_t wparserDummy_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2350915585;
  }

  result = 0;
  *a2 = &IWparserImplDummy;
  return result;
}

uint64_t wparser_impl_dummy_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2350915591;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  result = InitRsrcFunction(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    *a3 = a1;
    *(a3 + 8) = a2;
  }

  return result;
}

uint64_t wparser_impl_dummy_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v15 = 0;
  MaxWordLen = 2350915591;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v15);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      log_OutText(*(v15 + 32), "WPARSER_IMPL_DUMMY", 4, 0, "WPARSER_IMPL DUMMY ObjOpen: Begin");
      v12 = heap_Calloc(*(v15 + 8), 1, 80);
      if (v12)
      {
        v13 = v12;
        *v12 = a3;
        v12[1] = a4;
        v12[2] = v15;
        v12[3] = a1;
        v12[4] = a2;
        v12[5] = a1;
        v12[6] = "WPARSER_IMPL_DUMMY";
        MaxWordLen = wparser_impl_crf_loc_GetMaxWordLen(v12);
        *a5 = v13;
        *(a5 + 8) = 87652;
        log_OutText(*(v15 + 32), "WPARSER_IMPL_DUMMY", 4, 0, "WPARSER_IMPL DUMMY ObjOpen: End (%x)", MaxWordLen);
      }

      else
      {
        return 2350915594;
      }
    }
  }

  return MaxWordLen;
}

uint64_t wparser_impl_dummy_ObjClose(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 87652, 80);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *(a1 + 16);
    log_OutText(*(v4 + 32), "WPARSER_IMPL_DUMMY", 4, 0, "WPARSER_IMPL DUMMY ObjClose : Begin");
    heap_Free(*(v4 + 8), a1);
    log_OutText(*(v4 + 32), "WPARSER_IMPL_DUMMY", 4, 0, "WPARSER_IMPL DUMMY ObjClose : End (%x)", v3);
  }

  return v3;
}

uint64_t wparser_impl_dummy_ObjReopen(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 87652, 80);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL_DUMMY", 4, 0, "WPARSER_IMPL DUMMY ObjReopen : Begin");
  MaxWordLen = wparser_impl_crf_loc_GetMaxWordLen(a1);
  log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL_DUMMY", 4, 0, "WPARSER_IMPL DUMMY ObjReopen : End (%x)", MaxWordLen);
  return MaxWordLen;
}

uint64_t wparser_impl_dummy_Init(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = 7549556;
  v10 = 0;
  result = safeh_HandleCheck(a1, a2, 87652, 80);
  if ((result & 0x80000000) == 0)
  {
    result = (*(*a3 + 72))(a3[1], a3[2], &v11, a1 + 68);
    if ((result & 0x80000000) == 0)
    {
      *(a1 + 56) = a3;
      *(a1 + 64) = a6;
      return InitRsrcFunction(*a1, *(a1 + 8), &v10);
    }
  }

  return result;
}

uint64_t wparser_impl_dummy_Normalize(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _WORD *a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  result = safeh_HandleCheck(a1, a2, 87652, 80);
  if ((result & 0x80000000) == 0)
  {
    *(a3 + a5) = 0;
    if (*(a1 + 68) != 1 || (result = wordm_mapt2s(*(a1 + 56), a3, a5), (result & 0x80000000) == 0))
    {
      v22 = *(a1 + 16);
      v23 = *(a1 + 48);
      v24 = *(a1 + 56);

      return DoWPDUMMY(v22, v23, v24, a3, a5, a6, a7, a8, a12, a15);
    }
  }

  return result;
}

uint64_t wparser_impl_dummy_Spell(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, uint64_t a10, unsigned int a11)
{
  result = safeh_HandleCheck(a1, a2, 87652, 80);
  if ((result & 0x80000000) == 0)
  {
    LOWORD(v18) = a9;
    return DoSpell(*(a1 + 16), *(a1 + 48), *(a1 + 56), a3, a5, a6, a7, a8, v18, a10, a11, *(a1 + 72));
  }

  return result;
}

uint64_t wparser_impl_dummy_Latin(uint64_t a1, int a2, uint64_t a3, int a4, char **a5)
{
  result = safeh_HandleCheck(a1, a2, 87652, 80);
  if ((result & 0x80000000) == 0)
  {
    v10 = *(a1 + 16);
    v11 = *(a1 + 56);

    return DoLatin(v10, v11, a3, a4, a5);
  }

  return result;
}

uint64_t DoWPDUMMY(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _WORD *a9, uint64_t a10)
{
  v77 = *MEMORY[0x1E69E9840];
  LogLevel = log_GetLogLevel(*(a1 + 32));
  v62 = LogLevel > 4;
  *__s = 0;
  *(a10 + 8) = 0;
  *(a10 + 16) = 1;
  if ((bed_GetpElem(a7, 0xFFFFu, __s) & 0x80000000) == 0)
  {
    v19 = *(*__s + 36);
    if (!a5 || a5 == v19)
    {
      if (*(a10 + 16))
      {
        v20 = "";
      }

      else
      {
        v20 = "- aborting alignment";
      }
    }

    else
    {
      *(a10 + 16) = 0;
      v20 = "- aborting alignment";
    }

    log_OutText(*(a1 + 32), a2, 5, 0, "[WPDUMMY] (length for DUMMY %d - region length in Marker %d %s)", a5, v19, v20);
  }

  v64 = a2;
  v63 = a8;
  v21 = 2591039498;
  v22 = heap_Calloc(*(a1 + 8), a5, 8);
  if (!v22)
  {
    return v21;
  }

  v23 = v22;
  v24 = heap_Calloc(*(a1 + 8), a5, 8);
  v25 = *(a1 + 8);
  v65 = v24;
  if (!v24)
  {
    v42 = v23;
    goto LABEL_56;
  }

  v66 = heap_Calloc(v25, a5, 8);
  if (!v66)
  {
    LODWORD(v27) = 0;
    goto LABEL_49;
  }

  if (!a5)
  {
    LODWORD(v27) = 0;
LABEL_41:
    v34 = v63;
    goto LABEL_42;
  }

  v61 = a6;
  v26 = 0;
  LODWORD(v27) = 0;
  do
  {
    v76 = 0;
    v74 = 0u;
    v75 = 0u;
    *__s = 0u;
    v73 = 0u;
    v71 = 0;
    v69 = 0u;
    v70 = 0u;
    *__src = 0u;
    v68 = 0u;
    v28 = utf8_determineUTF8CharLength(*(a4 + v26));
    sysdct_wpdummy_LookUp_Chinese(a3, a4 + v26, v28, __s, __src, (v65 + 8 * v27));
    if (LogLevel >= 5)
    {
      log_OutText(*(a1 + 32), v64, 5, 0, "[WPCRF] Feat: %s", __s);
    }

    v29 = heap_Calloc(*(a1 + 8), 1, 65);
    *(v66 + 8 * v27) = v29;
    if (!v29)
    {
LABEL_39:
      v21 = 2350915594;
      goto LABEL_44;
    }

    if (__src[0])
    {
      if (!(*__src ^ 0x4C4C554E | __src[4]))
      {
        heap_Free(*(a1 + 8), v29);
        *(v66 + 8 * v27) = 0;
        goto LABEL_24;
      }

      strcpy(v29, __src);
    }

    else
    {
      strncpy(v29, (a4 + v26), v28);
    }

    v30 = strlen(__s);
    v31 = heap_Calloc(*(a1 + 8), 1, v30 + 1);
    *(v23 + 8 * v27) = v31;
    if (!v31)
    {
      goto LABEL_39;
    }

    strcpy(v31, __s);
    LODWORD(v27) = v27 + 1;
LABEL_24:
    v26 += v28;
  }

  while (v26 < a5);
  a6 = v61;
  if (!v27)
  {
    goto LABEL_41;
  }

  v32 = v27;
  v33 = heap_Calloc(*(a1 + 8), 64, v27);
  v34 = v63;
  if (!v33)
  {
    v21 = 2350915594;
    goto LABEL_45;
  }

  v35 = v33;
  v36 = v66;
  do
  {
    v37 = *v36++;
    strcat(v35, v37);
    --v32;
  }

  while (v32);
  a6 = v61;
  if (*v35)
  {
    if ((bed_Insert(v63, &szWORD_BEG_4, 1) & 0x80000000) == 0)
    {
      ++*a9;
      v38 = strlen(v35);
      if ((bed_Insert(v63, v35, v38) & 0x80000000) == 0)
      {
        *a9 += strlen(v35);
        if ((bed_Insert(v63, &szWORD_END_5, 1) & 0x80000000) == 0)
        {
          ++*a9;
        }
      }
    }

    if (*(a10 + 16) == 1)
    {
      v39 = *(a10 + 8);
      v40 = *a10;
      if (v39 < *(a10 + 10))
      {
        v41 = a10;
        goto LABEL_62;
      }

      v47 = heap_Realloc(*(a1 + 8), v40, 12 * *(a10 + 10) + 121);
      if (v47)
      {
        v40 = v47;
        v41 = a10;
        *a10 = v47;
        *(a10 + 10) += 10;
        v39 = *(a10 + 8);
LABEL_62:
        v48 = v40 + 12 * v39;
        *v48 = 0;
        *(v48 + 2) = 0;
        *(v41 + 8) = v39 + 1;
      }
    }
  }

  heap_Free(*(a1 + 8), v35);
  *__s = 0;
  *__src = 0;
  if ((bed_GetcElem(v63, __src) & 0x80000000) == 0)
  {
    if (*__src)
    {
      UTOISubTrace(v62, a1, v63, "replacement string");
      if (*(a10 + 16) == 1 && (bed_GetpElem(v63, 0, __s) & 0x80000000) == 0)
      {
        v49 = *__src;
        if (*__src)
        {
          v50 = 0;
          v51 = 0;
          v52 = 1;
          v53 = *__s;
          do
          {
            if (*(v53 + v50) == 16)
            {
              v54 = *(a10 + 8);
              if (v51 >= v54)
              {
LABEL_79:
                log_OutText(*(a1 + 32), v64, 5, 0, "[WPDUMMY] cant find non-deleted word to align new word number %d with", v52);
                v60 = 0;
                goto LABEL_80;
              }

              v55 = v51;
              v56 = (*a10 + 12 * v51 + 4);
              while (1)
              {
                v57 = *v56;
                v56 += 3;
                if (v57 != 1)
                {
                  break;
                }

                if (v54 == ++v55)
                {
                  goto LABEL_79;
                }
              }

              *(*a10 + 12 * v55 + 8) = v50;
              ++v52;
              v51 = v55 + 1;
              v49 = *__src;
            }

            ++v50;
          }

          while (v50 < v49);
        }

        v60 = 1;
LABEL_80:
        if (LogLevel >= 5 && *(a10 + 8))
        {
          v58 = 0;
          v59 = 0;
          do
          {
            log_OutText(*(a1 + 32), v64, 5, 0, "[WPDUMMY] [%d] origWordPos=%d, newPos=%d, bDeleted=%d", v59++, *(*a10 + v58), *(*a10 + v58 + 8), *(*a10 + v58 + 4));
            v58 += 12;
          }

          while (v59 < *(a10 + 8));
        }

        a6 = v61;
        if (v60)
        {
          *(a10 + 12) = 0;
        }
      }
    }

    else
    {
      log_OutText(*(a1 + 32), v64, 5, 0, "[WPDUMMY] deleting region, no replacement text found");
    }
  }

LABEL_42:
  v21 = utoin_IncrReplaceCurrentRegion(a6, a7, v34, a5, a10);
  if ((v21 & 0x80000000) == 0)
  {
    UTOITrace(v62, a1, a6, a7, "END of DOWPDUMMY");
  }

LABEL_44:
  if (v27)
  {
LABEL_45:
    v43 = v27;
    v44 = v23;
    do
    {
      if (*v44)
      {
        heap_Free(*(a1 + 8), *v44);
      }

      ++v44;
      --v43;
    }

    while (v43);
  }

LABEL_49:
  heap_Free(*(a1 + 8), v23);
  heap_Free(*(a1 + 8), v65);
  if (v66)
  {
    if (v27)
    {
      v27 = v27;
      v45 = v66;
      do
      {
        if (*v45)
        {
          heap_Free(*(a1 + 8), *v45);
        }

        ++v45;
        --v27;
      }

      while (v27);
    }

    v25 = *(a1 + 8);
    v42 = v66;
LABEL_56:
    heap_Free(v25, v42);
  }

  return v21;
}

uint64_t get_char_kind_hash(int a1, int a2)
{
  v2 = a2 + a1;
  if (a2 == 131)
  {
    v2 = 3;
  }

  if (a1 == 130)
  {
    v2 = a2 | 0x100;
  }

  if (!a2)
  {
    v2 = a1;
  }

  v3 = Char_kind_hash_table[v2];
  if (v3 == 0xFFFF)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v4 = &(&Char_kind)[2 * v3];
    if (**v4 == a1 && (*v4)[1] == a2)
    {
      break;
    }

    v3 = *(v4 + 5);
    if (v3 == 0xFFFF)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return *(v4 + 4);
}

unsigned __int8 *get_pron_from_grapheme_hash(unsigned __int8 *result, char *a2, int *a3, _DWORD *a4, int a5)
{
  if (result[1])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  *a3 = v5;
  while (2)
  {
    *a4 = 0;
    v6 = *result;
    v7 = *a3;
    if (*a3 == 2 && (v8 = result[1]) != 0)
    {
      v9 = v8 + v6;
      if (v8 == 131)
      {
        v9 = 3;
      }

      if (v6 == 130)
      {
        v9 = v8 | 0x100;
      }
    }

    else
    {
      v8 = 0;
      v9 = *result;
    }

    for (i = Char_pron_hash_table[v9]; i != 0xFFFF; i = *(v11 + 9))
    {
      v11 = &(&Char_pron)[3 * i];
      if (**v11 == v6 && (*v11)[1] == v8 && *(v11 + 8) == a5)
      {
        v14 = v11[1];
        v15 = *v14;
        if (*v14)
        {
          v16 = (v14 + 1);
          do
          {
            *a2++ = v15;
            ++*a4;
            v17 = *v16++;
            v15 = v17;
          }

          while (v17);
        }

        *a2 = 0;
        return result;
      }
    }

    v12 = __OFSUB__(v7, 1);
    v13 = v7 - 1;
    *a3 = v13;
    if (!((v13 < 0) ^ v12 | (v13 == 0)))
    {
      continue;
    }

    break;
  }

  *a3 = 0;
  *a4 = 0;
  return result;
}

uint64_t get_name_of_symbol(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a3 < 0 || a1[2] <= a3)
  {
    return 0;
  }

  virtual_fseek(*a1, a2, a1[1] + 32 * a3, 0);
  v7 = 0;
  while (1)
  {
    v8 = virtual_getc(*a1, a2);
    *(a4 + v7) = v8;
    if (!v8)
    {
      break;
    }

    if (++v7 == 32)
    {
      return 0;
    }
  }

  return a4;
}

uint64_t get_pointer_of_symbol(uint64_t a1, uint64_t a2)
{
  if (a2 < 0 || *(a1 + 16) <= a2)
  {
    return 0;
  }

  else
  {
    return **a1 + 32 * a2 + *(a1 + 8);
  }
}

uint64_t get_number_of_symbol(uint64_t **a1, char *__s1)
{
  v4 = a1[1];
  v3 = a1[2];
  v5 = **a1;
  v6 = v4 + v5;
  v7 = strcmp(__s1, v4 + v5);
  if (!v7)
  {
    return 0;
  }

  if (v7 < 0)
  {
    return -1;
  }

  v8 = v3 - 1;
  v9 = strcmp(__s1, &v4[4 * v8] + v5);
  if (!v9)
  {
    return v8;
  }

  if (v9 > 0 || v8 == 1)
  {
    return -1;
  }

  v11 = 0;
  v12 = v8;
  while (1)
  {
    v8 = v11 + v8 / 2;
    v13 = strcmp(__s1, &v6[32 * v8]);
    if (!v13)
    {
      break;
    }

    if (v13 < 0)
    {
      v12 = v8;
    }

    else
    {
      v11 = v8;
    }

    v8 = v12 - v11;
    if (v12 - v11 == 1)
    {
      return -1;
    }
  }

  return v8;
}

uint64_t log_output_cost(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  result = ssftstring_AppendCStr(a1, "[");
  if ((result & 0x80000000) == 0)
  {
    strcpy(__s, "f^=");
    LH_itoa(*(a2 + 56), v5, 0xAu);
    __strcat_chk();
    __strcat_chk();
    LH_itoa(*(a2 + 64), v5, 0xAu);
    __strcat_chk();
    __strcat_chk();
    result = ssftstring_AppendCStr(a1, __s);
    if ((result & 0x80000000) == 0)
    {
      return ssftstring_AppendCStr(a1, "]");
    }
  }

  return result;
}

uint64_t log_output_tree(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t *a12)
{
  v41 = *MEMORY[0x1E69E9840];
  v19 = ssftstring_Clear(a3);
  if ((v19 & 0x80000000) == 0 && get_name_of_symbol(SF_symbol_file, a12, *a4, v40))
  {
    v20 = *(a4 + 32);
    if (v20)
    {
      if (v20 == 1)
      {
        if (!a5 || v40[0] != 95)
        {
          strcpy(__s, "<");
          __strcat_chk();
          if (a5 != 1)
          {
            __strcat_chk();
            LH_itoa(*(a4 + 8), v38, 0xAu);
            __strcat_chk();
          }

          __strcat_chk();
          appended = ssftstring_AppendCStr(a3, __s);
          if ((appended & 0x80000000) != 0)
          {
            return appended;
          }

          if (a11 == 1)
          {
            strcpy(__s, "(");
            LH_itoa(*(a4 + 80), v38, 0xAu);
            __strcat_chk();
            __strcat_chk();
            appended = ssftstring_AppendCStr(a3, __s);
            if ((appended & 0x80000000) != 0)
            {
              return appended;
            }
          }

          if (a6 == 1)
          {
            appended = log_output_attribute(a3, *(a4 + 24));
            if ((appended & 0x80000000) != 0)
            {
              return appended;
            }
          }

          if (a7 == 1)
          {
            appended = log_output_cost(a3, a4);
            if ((appended & 0x80000000) != 0)
            {
              return appended;
            }
          }
        }

        v26 = *(a1 + 32);
        v27 = ssftstring_CStr(a3);
        log_OutText(v26, a2, 5, 0, "[A*] %s", v27);
        appended = ssftstring_Clear(a3);
        if ((appended & 0x80000000) != 0)
        {
          return appended;
        }
      }

      else
      {
        if (v20 != 2)
        {
LABEL_15:
          v28 = *(a1 + 32);
          v29 = ssftstring_CStr(a3);
          log_OutText(v28, a2, 5, 0, "[A*] %s", v29);
          return ssftstring_Clear(a3);
        }

        if (!a5 || v40[0] != 95)
        {
          strcpy(__s, "<");
          __strcat_chk();
          if (a5 != 1)
          {
            __strcat_chk();
            LH_itoa(*(a4 + 8), v38, 0xAu);
            __strcat_chk();
          }

          __strcat_chk();
          appended = ssftstring_AppendCStr(a3, __s);
          if ((appended & 0x80000000) != 0)
          {
            return appended;
          }

          if (a11 == 1)
          {
            strcpy(__s, "(");
            LH_itoa(*(a4 + 80), v38, 0xAu);
            __strcat_chk();
            __strcat_chk();
            appended = ssftstring_AppendCStr(a3, __s);
            if ((appended & 0x80000000) != 0)
            {
              return appended;
            }
          }

          if (a6 == 1)
          {
            appended = log_output_attribute(a3, *(a4 + 24));
            if ((appended & 0x80000000) != 0)
            {
              return appended;
            }
          }

          if (a7 == 1)
          {
            appended = log_output_cost(a3, a4);
            if ((appended & 0x80000000) != 0)
            {
              return appended;
            }
          }
        }

        v21 = *(a1 + 32);
        v22 = ssftstring_CStr(a3);
        log_OutText(v21, a2, 5, 0, "[A*] %s", v22);
        appended = ssftstring_Clear(a3);
        if ((appended & 0x80000000) != 0)
        {
          return appended;
        }

        LODWORD(v36) = a9;
        appended = log_output_tree(a1, a2, a3, *(a4 + 40), a5, a6, a7, v24, v36, a10, a11, a12);
        if ((appended & 0x80000000) != 0)
        {
          return appended;
        }
      }

      LODWORD(v37) = a9;
      appended = log_output_tree(a1, a2, a3, *(a4 + 48), a5, a6, a7, v25, v37, a10, a11, a12);
      if ((appended & 0x80000000) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      strcpy(__s, "<");
      __strcat_chk();
      if (a5 != 1)
      {
        __strcat_chk();
        LH_itoa(*(a4 + 8), v38, 0xAu);
        __strcat_chk();
      }

      __strcat_chk();
      appended = ssftstring_AppendCStr(a3, __s);
      if ((appended & 0x80000000) == 0)
      {
        if (a11 != 1 || (strcpy(__s, "("), LH_itoa(*(a4 + 80), v38, 0xAu), __strcat_chk(), __strcat_chk(), appended = ssftstring_AppendCStr(a3, __s), (appended & 0x80000000) == 0))
        {
          if (a6 != 1 || (appended = log_output_attribute(a3, *(a4 + 24)), (appended & 0x80000000) == 0))
          {
            if (a7 != 1 || (appended = log_output_cost(a3, a4), (appended & 0x80000000) == 0))
            {
              appended = ssftstring_AppendCStr(a3, "(");
              if ((appended & 0x80000000) == 0)
              {
                v30 = *(a4 + 48);
                if (v30)
                {
                  v31 = 0;
                  do
                  {
                    if (v31)
                    {
                      appended = ssftstring_AppendCStr(a3, ",");
                      if ((appended & 0x80000000) != 0)
                      {
                        return appended;
                      }
                    }

                    appended = ssftstring_AppendCStr(a3, *v30);
                    if ((appended & 0x80000000) != 0)
                    {
                      return appended;
                    }

                    appended = ssftstring_AppendCStr(a3, ":");
                    if ((appended & 0x80000000) != 0)
                    {
                      return appended;
                    }

                    appended = log_mbs_fput_sjis(a3, *(v30 + 8));
                    if ((appended & 0x80000000) != 0)
                    {
                      return appended;
                    }

                    appended = ssftstring_AppendCStr(a3, "");
                    if ((appended & 0x80000000) != 0)
                    {
                      return appended;
                    }

                    v30 = *(v30 + 16);
                    v31 = 1;
                  }

                  while (v30);
                }

                appended = ssftstring_AppendCStr(a3, ")");
                if ((appended & 0x80000000) == 0)
                {
                  v32 = *(a4 + 48);
                  while (1)
                  {
                    v32 = *(v32 + 24);
                    if (!v32)
                    {
                      goto LABEL_15;
                    }

                    strcpy(__s, "<");
                    __strcat_chk();
                    if (a5 != 1)
                    {
                      __strcat_chk();
                      LH_itoa(*(a4 + 8), v38, 0xAu);
                      __strcat_chk();
                    }

                    __strcat_chk();
                    appended = ssftstring_AppendCStr(a3, __s);
                    if ((appended & 0x80000000) != 0)
                    {
                      return appended;
                    }

                    if (a11 == 1)
                    {
                      strcpy(__s, "(");
                      LH_itoa(*(a4 + 80), v38, 0xAu);
                      __strcat_chk();
                      __strcat_chk();
                      appended = ssftstring_AppendCStr(a3, __s);
                      if ((appended & 0x80000000) != 0)
                      {
                        return appended;
                      }
                    }

                    if (a6 == 1)
                    {
                      appended = log_output_attribute(a3, *(a4 + 24));
                      if ((appended & 0x80000000) != 0)
                      {
                        return appended;
                      }
                    }

                    if (a7 == 1)
                    {
                      appended = log_output_cost(a3, a4);
                      if ((appended & 0x80000000) != 0)
                      {
                        return appended;
                      }
                    }

                    v33 = *(a4 + 48);
                    if (v33)
                    {
                      v34 = 0;
                      do
                      {
                        if (v34)
                        {
                          appended = ssftstring_AppendCStr(a3, ",");
                          if ((appended & 0x80000000) != 0)
                          {
                            return appended;
                          }
                        }

                        appended = ssftstring_AppendCStr(a3, *v33);
                        if ((appended & 0x80000000) != 0)
                        {
                          return appended;
                        }

                        appended = ssftstring_AppendCStr(a3, ":");
                        if ((appended & 0x80000000) != 0)
                        {
                          return appended;
                        }

                        appended = log_mbs_fput_sjis(a3, *(v33 + 8));
                        if ((appended & 0x80000000) != 0)
                        {
                          return appended;
                        }

                        appended = ssftstring_AppendCStr(a3, "");
                        if ((appended & 0x80000000) != 0)
                        {
                          return appended;
                        }

                        v33 = *(v33 + 16);
                        v34 = 1;
                      }

                      while (v33);
                    }

                    v19 = ssftstring_AppendCStr(a3, ")");
                    if ((v19 & 0x80000000) != 0)
                    {
                      return v19;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    return appended;
  }

  return v19;
}

uint64_t add_unit_product(void *a1, int a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t *a10, void *a11)
{
  v13 = a5;
  v14 = a4;
  leading_tree = cyk_hash_get_leading_tree(a1, a4, a5);
  v18 = 1;
  if (leading_tree)
  {
    v19 = leading_tree;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0;
    if (v14)
    {
      v20 = 0;
    }

    else
    {
      v20 = a2 - 1 == v13;
    }

    v21 = v20;
    v39 = v21;
    while (1)
    {
      *(&v42 + 1) = -1;
      *&v43 = *v19;
      v41 = &v42;
      grammar_right = find_grammar_right(&v41);
      if (grammar_right != -1)
      {
        break;
      }

LABEL_31:
      v19 = v19[11];
      if (!v19)
      {
        return 1;
      }
    }

    next_grammar_right = grammar_right - 1;
    v36 = v19;
    while (1)
    {
      v23 = heap_Alloc(a11, 96);
      if (!v23)
      {
        return 0;
      }

      v24 = v23;
      v25 = v41;
      *v23 = *v41;
      *(v23 + 24) = 0;
      *(v23 + 32) = 1;
      *(v23 + 40) = 0;
      *(v23 + 48) = v19;
      *(v23 + 88) = 0;
      *(v23 + 8) = -1;
      *(v23 + 16) = *(v25 + 32);
      v26 = *(v25 + 72);
      if ((v26 == -1 || *(a6 + 44) == 1 || eval_cond(**(&AC_pac + v26), v23) == 1) && (*(a6 + 32) != 1 || is_internal(*v24) == 1 || *v24 == a8))
      {
        v27 = cyk_hash_get_leading_tree(a1, v14, v13);
        if (v27)
        {
          do
          {
            v28 = v27;
            v27 = *(v27 + 88);
          }

          while (v27);
          *(v28 + 88) = v24;
        }

        else if ((cyk_hash_add_leading_tree(a1, v24, v14, v13, a11) & 0x1FFF) == 0xA)
        {
          return 0;
        }

        v29 = v41;
        if (v39 && *v41 == a8)
        {
          v30 = a8;
          v31 = *a7;
          v32 = tree_duplicate(v24, a6, a10, a11);
          v33 = v31;
          a8 = v30;
          *a7 = tree_append(v33, v32);
          v19 = v36;
          ++*a3;
          v29 = v41;
        }

        v34 = *(v29 + 72);
        if (v34 != -1 && !*(a6 + 44) && !exec_actions(*(*(&AC_pac + v34) + 1), v24, a11))
        {
          return 0;
        }
      }

      else
      {
        heap_Free(a11, v24);
      }

      next_grammar_right = find_next_grammar_right(&v41, grammar_right, next_grammar_right);
      if (next_grammar_right == -1)
      {
        goto LABEL_31;
      }
    }
  }

  return v18;
}

uint64_t check_left_upper(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t *a10, void *a11)
{
  if ((a3 & 0x80000000) != 0)
  {
    return 0;
  }

  v13 = a4;
  v14 = a3;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v52 = 0;
  v16 = ~a4;
  v44 = a2 - 1;
  v42 = ~a4;
  do
  {
    v17 = v13 + v16;
    if (v13 + v16 >= 0)
    {
      v45 = v14 + 1;
      v46 = v13;
      if (v14)
      {
        v18 = 0;
      }

      else
      {
        v18 = v13 == v44;
      }

      v19 = v18;
      v49 = v19;
      do
      {
        leading_tree = cyk_hash_get_leading_tree(a1, v14, v17);
        if (leading_tree)
        {
          v20 = ~v17;
          v40 = ~v17;
          v41 = v17;
          while (2)
          {
            v21 = cyk_hash_get_leading_tree(a1, v45 + v17, v13 + v20);
            if (v21)
            {
              v22 = v21;
              do
              {
                *(&v53 + 1) = *leading_tree;
                *&v54 = *v22;
                v52 = &v53;
                grammar_right = find_grammar_right(&v52);
                if (grammar_right != -1)
                {
                  next_grammar_right = grammar_right - 1;
                  do
                  {
                    result = heap_Alloc(a11, 96);
                    if (!result)
                    {
                      return result;
                    }

                    v25 = result;
                    v26 = v52;
                    *result = *v52;
                    *(result + 8) = -1;
                    *(result + 24) = 0;
                    *(result + 32) = 2;
                    *(result + 40) = leading_tree;
                    *(result + 48) = v22;
                    *(result + 88) = 0;
                    *(result + 12) = vmovn_s64(*(v26 + 24));
                    v27 = *(v26 + 72);
                    if ((v27 == -1 || eval_cond(**(&AC_pac + v27), result) == 1) && (*(a5 + 32) != 1 || is_internal(*v25) == 1 || *v25 == a8))
                    {
                      v28 = cyk_hash_get_leading_tree(a1, v14, v13);
                      if (v28)
                      {
                        do
                        {
                          v29 = v28;
                          v28 = *(v28 + 88);
                        }

                        while (v28);
                        *(v29 + 88) = v25;
                      }

                      else if ((cyk_hash_add_leading_tree(a1, v25, v14, v13, a11) & 0x1FFF) == 0xA)
                      {
                        return 0;
                      }

                      v30 = v52;
                      if (v49 && *v52 == a8)
                      {
                        v31 = a1;
                        v32 = v14;
                        v33 = a8;
                        v34 = *a7;
                        v35 = tree_duplicate(v25, a5, a10, a11);
                        v36 = v34;
                        a8 = v33;
                        v14 = v32;
                        a1 = v31;
                        *a7 = tree_append(v36, v35);
                        v13 = v46;
                        ++*a6;
                        v30 = v52;
                      }

                      v37 = *(v30 + 72);
                      if (v37 != -1)
                      {
                        result = exec_actions(*(*(&AC_pac + v37) + 1), v25, a11);
                        if (!result)
                        {
                          return result;
                        }
                      }
                    }

                    else
                    {
                      heap_Free(a11, v25);
                    }

                    next_grammar_right = find_next_grammar_right(&v52, grammar_right, next_grammar_right);
                  }

                  while (next_grammar_right != -1);
                }

                v22 = v22[11];
              }

              while (v22);
              v20 = v40;
              v17 = v41;
              leading_tree = leading_tree[11];
              if (leading_tree)
              {
                continue;
              }
            }

            break;
          }
        }

        v38 = v17-- <= 0;
      }

      while (!v38);
    }

    result = add_unit_product(a1, a2, a6, v14, v13, a5, a7, a8, v39, a10, a11);
    if (!result)
    {
      break;
    }

    v13 = (v13 + 1);
    result = 1;
    v38 = v14 <= 0;
    v14 = (v14 - 1);
    v16 = v42;
  }

  while (!v38);
  return result;
}

uint64_t fill_up_table(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t *a8, void *a9)
{
  v18 = 0;
  if (a2 >= a3)
  {
    return 0;
  }

  v14 = a2;
  while (1)
  {
    result = check_left_upper(a1, a3, v14, 0, a4, &v18, a5, a6, v17, a8, a9);
    if (!result)
    {
      break;
    }

    v14 = (v14 + 1);
    if (a3 == v14)
    {
      return v18;
    }
  }

  return result;
}

uint64_t parse_cyk(uint64_t a1, void *a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7)
{
  v10 = 0;
  v8 = fill_up_table(a2, 0, a3, a1, &v10, a4, a7, a6, a7);
  result = parser_result_create(1, v10, a7);
  *(result + 16) = v8;
  return result;
}

double partial_tree_create_as_step(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v13 = heap_Alloc(a7, 96);
  if (v13)
  {
    *v13 = a5;
    *(v13 + 24) = 0;
    if (a3)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    *(v13 + 32) = v15;
    result = NAN;
    *(v13 + 8) = -1;
    *(v13 + 40) = a3;
    *(v13 + 48) = a4;
    *(v13 + 88) = 0;
    *(v13 + 16) = -1;
    *(v13 + 72) = a1;
    *(v13 + 76) = a2;
    *(v13 + 80) = a6;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
  }

  return result;
}

uint64_t connect_terminals(int *a1, uint64_t a2, int a3, void *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a2 >= a5)
  {
    return 0;
  }

  v12 = a4;
  v15 = 0;
  v16 = (a8 + 8 * a3);
  v17 = a2;
  do
  {
    v18 = (~v17 + a5);
    if (~v17 + a5 < 0)
    {
      goto LABEL_26;
    }

    v19 = v17 - a2 + 1;
    while (1)
    {
      leading_tree = cyk_hash_get_leading_tree(v12, v17, v18);
      if (leading_tree)
      {
        break;
      }

LABEL_16:
      v25 = v18 <= 0;
      v18 = (v18 - 1);
      if (v25)
      {
        LODWORD(v18) = -1;
        goto LABEL_26;
      }
    }

    v21 = leading_tree;
    v22 = *v16;
    while (1)
    {
      v23 = *v21;
      if (*v21 == a7 || v23 == v22)
      {
        v38 = ~a2;
        goto LABEL_30;
      }

      if (!a3)
      {
        break;
      }

      if (*(v16 - 1) == v23)
      {
        goto LABEL_19;
      }

LABEL_15:
      v21 = *(v21 + 88);
      if (!v21)
      {
        goto LABEL_16;
      }
    }

    if (*(v21 + 32))
    {
      goto LABEL_15;
    }

LABEL_19:
    v26 = *(a9 + 8 * a3);
    if (v15)
    {
      v27 = a10;
      partial_tree_create_as_step(a2, v19 + v18, v15, v21, v26, a3, a10);
      if (!v28)
      {
        return 0;
      }

      v15 = v28;
      v29 = *(a6 + 52);
      v30 = (v19 + v18);
      v31 = a4;
      v32 = v15;
      v33 = a2;
    }

    else
    {
      v27 = a10;
      partial_tree_create_as_step(a2, v18, 0, v21, v26, a3, a10);
      if (!v34)
      {
        return 0;
      }

      v15 = v34;
      v29 = *(a6 + 52);
      v31 = a4;
      v32 = v15;
      v33 = a2;
      v30 = v18;
    }

    v35 = add_partial_tree_checking_FI(v31, v32, v33, v30, v29, v27);
    if (v35 < 0)
    {
      v36 = v35;
      heap_Free(v27, v15);
      v15 = 0;
      v37 = 0;
      if ((v36 & 0x1FFF) == 0xA)
      {
        return v37;
      }
    }

LABEL_26:
    v17 += v18 + 1;
    v12 = a4;
  }

  while (v17 < a5);
  v38 = ~a2;
  v22 = *v16;
LABEL_30:
  partial_tree_create_as_step(a2, v17 + v38, 0, v15, v22, a3 + 1, a10);
  v37 = v39;
  if (v39)
  {
    v40 = add_partial_tree_checking_FI(a4, v39, a2, (v17 + v38), *(a6 + 52), a10);
    if ((v40 & 0x80000000) == 0 || (v41 = v40, heap_Free(a10, v37), v37 = 0, (v41 & 0x1FFF) != 0xA))
    {
      *a1 = v17;
    }
  }

  return v37;
}

uint64_t max_len_parse(int a1, int a2, void *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, void *a12, uint64_t *a13)
{
  v21 = 0;
  v40 = a1;
  v41 = 0;
  *a13 = 0;
  if (a1 == 1)
  {
    v21 = jp_tree_create(*(a10 + 8 * a2), (a5 + (a2 << 6) + 976), 0, 0, 0, 0, a12);
    if (!v21)
    {
      return 2350915840;
    }
  }

  v37 = v21;
  v38 = a5;
  if (a4 >= 1)
  {
    v22 = 0;
    v39 = a2 + 1;
    do
    {
      v23 = ~v22 + a4;
      if (v23 < 0)
      {
LABEL_15:
        v28 = connect_terminals(&v41, v22, a2, a3, a4, v38, a7, a8, a9, a12);
        if (!v28)
        {
          goto LABEL_33;
        }

        v29 = v28;
        *(v28 + 80) = v39;
        *(a6 + 8) = as_list_insert(v28, *(a6 + 8), a12);
        if (v40 == 1)
        {
          v30 = tree_duplicate(v29, v38, a11, a12);
          if (!v30)
          {
            goto LABEL_33;
          }

          v31 = v30;
          v32 = v37[4];
          if (v32)
          {
            if (!tree_append(v32, v31))
            {
              goto LABEL_33;
            }
          }

          else
          {
            v37[4] = v31;
          }
        }

        v22 = v41;
      }

      else
      {
        while (1)
        {
          leading_tree = cyk_hash_get_leading_tree(a3, v22, v23);
          if (leading_tree)
          {
            break;
          }

LABEL_13:
          if (v23-- <= 0)
          {
            goto LABEL_15;
          }
        }

        v25 = leading_tree;
        while (*v25 != a7 && *v25 != *(a8 + 8 * a2))
        {
          v25 = *(v25 + 88);
          if (!v25)
          {
            goto LABEL_13;
          }
        }

        *(v25 + 80) = v39;
        *(a6 + 8) = as_list_insert(v25, *(a6 + 8), a12);
        if (v40 == 1)
        {
          v33 = tree_duplicate(v25, v38, a11, a12);
          if (!v33 && *v25 != a7)
          {
LABEL_33:
            v35 = 2350915840;
            jpe_FreeTree(v37, a12);
            return v35;
          }

          v34 = v37[4];
          if (v34)
          {
            if (!tree_append(v34, v33))
            {
              goto LABEL_33;
            }
          }

          else
          {
            v37[4] = v33;
          }
        }

        v22 = (v22 + v23 + 1);
      }
    }

    while (v22 < a4);
  }

  v35 = 0;
  *a13 = v37;
  return v35;
}

void *as_list_insert(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
    if (*(a1 + 56) <= *(*a2 + 56))
    {
      a2[1] = as_list_insert(a1, a2[1], a3);
    }

    else
    {
      a2[2] = as_list_insert(a1, a2[2], a3);
    }
  }

  else
  {
    v5 = heap_Alloc(a3, 24);
    v4 = v5;
    if (v5)
    {
      v5[1] = 0;
      v5[2] = 0;
      *v5 = a1;
    }
  }

  return v4;
}

uint64_t get_word_cost(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return -1;
  }

  v3 = a1;
  while (strcmp(*v3, "PROB"))
  {
    v3 = *(v3 + 16);
    if (!v3)
    {
      return -1;
    }
  }

  v5 = mbs_len_bytes(*(v3 + 8)) + 1;
  v6 = heap_Alloc(a2, v5);
  if (v6)
  {
    v7 = v6;
    if (mbs2sjis(*(v3 + 8), 0, *(*(v3 + 8) + 8), v6, v5) != -1)
    {
      return atoi(v7);
    }

    heap_Free(a2, v7);
  }

  return -1;
}

void *cyk2as_list(void *a1, int a2, uint64_t a3, void *a4)
{
  v29 = heap_Alloc(a4, 24);
  if (!v29)
  {
    return v29;
  }

  *v29 = 0;
  v29[1] = 0;
  v29[2] = 0;
  if (a2 < 1)
  {
    return v29;
  }

  v8 = 0;
  v9 = a2;
  do
  {
    if (v8 < a2)
    {
      v10 = 0;
      do
      {
        leading_tree = cyk_hash_get_leading_tree(a1, v8, v10);
        if (leading_tree)
        {
          v12 = leading_tree;
          do
          {
            if (*(a3 + 64) == 1)
            {
              word_cost = 0;
            }

            else
            {
              word_cost = get_word_cost(v12[6], a4);
            }

            v12[8] = word_cost;
            v12[7] = v12[8] + get_me_terminal(*v12);
            v29[1] = as_list_insert(v12, v29[1], a4);
            v12 = v12[11];
          }

          while (v12);
        }

        ++v10;
      }

      while (v10 != v9);
    }

    ++v8;
    --v9;
  }

  while (v8 != a2);
  v14 = a2 - 2;
  v30 = a2;
  v31 = 1;
  v35 = a2;
  while (2)
  {
    v15 = 0;
    v32 = v14;
    v34 = v35--;
    v33 = 1;
    v36 = v34;
    do
    {
      v16 = cyk_hash_get_leading_tree(a1, v15, v35);
      if (v16)
      {
        v17 = v16;
        v37 = v15;
        while (v34 < 2)
        {
LABEL_39:
          v17 = v17[11];
          if (!v17)
          {
            goto LABEL_40;
          }
        }

        v18 = v32;
        v19 = v33;
        while (1)
        {
          v20 = v15 <= v19 ? v19 : v15;
          if (v35 - v18 >= 0)
          {
            break;
          }

LABEL_38:
          --v18;
          ++v19;
          v15 = v37;
          if (v19 == v36)
          {
            goto LABEL_39;
          }
        }

        v21 = (100 * (v35 - v18));
        v22 = v37;
        while (1)
        {
          v23 = cyk_hash_get_leading_tree(a1, v22, v18);
          if (v23)
          {
            break;
          }

LABEL_36:
          v27 = v22++ == v20;
          if (v27)
          {
            goto LABEL_38;
          }
        }

        v24 = v23;
        while (is_expensive_pos(*v24, *(a3 + 56)))
        {
          v25 = v24 + 8;
          if (v24[8] < v21)
          {
            v24[8] = v21;
            v26 = *v24;
LABEL_30:
            *v25 += get_me_terminal(v26);
          }

LABEL_35:
          v24 = v24[11];
          if (!v24)
          {
            goto LABEL_36;
          }
        }

        if (is_expensive_pos(*v17, *(a3 + 56)))
        {
          goto LABEL_35;
        }

        v26 = *v17;
        if (*v17 != *v24)
        {
          goto LABEL_35;
        }

        v25 = v24 + 8;
        if (v24[8] >= v21)
        {
          goto LABEL_35;
        }

        *v25 = v21;
        goto LABEL_30;
      }

LABEL_40:
      ++v15;
      ++v33;
      ++v36;
    }

    while (v15 != v31);
    v14 = v32 - 1;
    v27 = v31++ == v30;
    if (!v27)
    {
      continue;
    }

    return v29;
  }
}

uint64_t is_expensive_pos(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  while (1)
  {
    pointer_of_symbol = get_pointer_of_symbol(SF_symbol_file, a1);
    if (pointer_of_symbol)
    {
      if (!strcmp(pointer_of_symbol, *v2))
      {
        break;
      }
    }

    v2 = *(v2 + 8);
    if (!v2)
    {
      return 0;
    }
  }

  return 1;
}

void *as_list_free_all(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    as_list_free_all(result[1], a2);
    as_list_free_all(v3[2], a2);

    return heap_Free(a2, v3);
  }

  return result;
}

uint64_t add_partial_tree_checking_FI(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v8 = a4;
  v9 = a3;
  leading_tree = cyk_hash_get_leading_tree(a1, a3, a4);
  if (leading_tree)
  {
    v13 = leading_tree;
    result = 2350907394;
    v15 = *(v13 + 88);
    if (v15)
    {
      v16 = 0;
      while (1)
      {
        v17 = v13;
        v13 = v15;
        if (*v17 == *a2)
        {
          v18 = *(v17 + 32);
          if (v18 == *(a2 + 32) && (v18 == 1 || v18 == 2 && *(v17 + 40) == *(a2 + 40)) && *(v17 + 48) == *(a2 + 48))
          {
            break;
          }
        }

        ++v16;
        v15 = *(v13 + 88);
        if (!v15)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v16 = 0;
LABEL_16:
      if (a5 < 1 || v16 < a5 - 1)
      {
        result = 0;
        *(v13 + 88) = a2;
      }
    }
  }

  else
  {

    return cyk_hash_add_leading_tree(a1, a2, v9, v8, a6);
  }

  return result;
}

uint64_t cyk_as_make_trees(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, _DWORD *a7, void *a8)
{
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  *a7 = -1;
  if (a3)
  {
    v13 = *(a3 + 72);
    v14 = *(a3 + 76) + 1;
    if (v14 + v13 != *(a4 + 18))
    {
      return 1;
    }

    v15 = (v14 + *(a4 + 19));
    v16 = *a3;
  }

  else
  {
    v13 = *(a4 + 18);
    v15 = *(a4 + 19);
    v16 = -1;
  }

  v17 = *a4;
  *(&v38 + 1) = v16;
  *&v39 = v17;
  v37 = &v38;
  grammar_right = find_grammar_right(&v37);
  if (grammar_right == -1)
  {
    return 1;
  }

  v19 = grammar_right;
  v33 = a5;
  next_grammar_right = grammar_right - 1;
  while (1)
  {
    result = heap_Alloc(a8, 96);
    if (!result)
    {
      break;
    }

    v22 = result;
    v23 = v37;
    *result = *v37;
    v24 = -1;
    *(result + 8) = -1;
    *(result + 24) = 0;
    if (a3)
    {
      v24 = *(v23 + 24);
      v25 = 2;
    }

    else
    {
      v25 = 1;
    }

    *(result + 32) = v25;
    *(result + 40) = a3;
    *(result + 48) = a4;
    *(result + 88) = 0;
    v26 = *(v23 + 32);
    *(result + 12) = v24;
    *(result + 16) = v26;
    *(result + 72) = v13;
    *(result + 76) = v15;
    v27 = *(v23 + 72);
    if (v27 == -1 || *(a6 + 44) == 1 || eval_cond(**(&AC_pac + v27), result) == 1)
    {
      if (a3)
      {
        v28 = a4[8] + *(a3 + 64) + *(v37 + 11);
      }

      else
      {
        v28 = *(v37 + 11) + a4[8];
      }

      *(v22 + 56) = v28 + *(v37 + 15);
      *(v22 + 64) = v28;
      v29 = add_partial_tree_checking_FI(a1, v22, v13, v15, *(a6 + 52), a8);
      if (v29 < 0)
      {
        v32 = v29;
        heap_Free(a8, v22);
        if ((v32 & 0x1FFF) == 0xA)
        {
          return 0;
        }
      }

      else
      {
        *(a2 + 8) = as_list_insert(v22, *(a2 + 8), a8);
        v30 = *(v37 + 9);
        if (v30 != -1 && !*(a6 + 44))
        {
          result = exec_actions(*(*(&AC_pac + v30) + 1), v22, a8);
          if (!result)
          {
            return result;
          }
        }

        if (!*(v22 + 72))
        {
          v31 = *(v22 + 76);
          if (v31 > *a7 && *v22 == v33)
          {
            *a7 = v31;
          }
        }
      }
    }

    else
    {
      heap_Free(a8, v22);
    }

    next_grammar_right = find_next_grammar_right(&v37, v19, next_grammar_right);
    if (next_grammar_right == -1)
    {
      return 1;
    }
  }

  return result;
}

uint64_t parse_cyk_as(_DWORD *a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7)
{
  v39 = 0;
  v13 = cyk2as_list(a2, a3, a1, a7);
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = 0;
    v38 = 0;
    while (1)
    {
      do
      {
        v17 = v14[1];
        v18 = v14;
        do
        {
          if (!v17)
          {
            goto LABEL_38;
          }

          v19 = v17;
          v20 = v18;
          v17 = v17[1];
          v18 = v19;
        }

        while (v17);
        v21 = *v19;
        v20[1] = v19[2];
        heap_Free(a7, v19);
        if (!v21)
        {
LABEL_38:
          as_list_free_all(v14, a7);
          v33 = 1;
          v34 = v16;
          goto LABEL_40;
        }

        v22 = *(v21 + 72);
        if (!v22)
        {
          if (*(v21 + 76) == a3 - 1 && *v21 == a4)
          {
            v23 = tree_duplicate(v21, a1, a6, a7);
            v16 = tree_append(v16, v23);
            if (v38 + 1 >= a1[1])
            {
              goto LABEL_38;
            }

            ++v38;
            v22 = *(v21 + 72);
          }

          else
          {
            v22 = 0;
          }
        }

        v24 = a1[67];
        if (v24 < 0)
        {
          break;
        }

        v25 = *(v21 + 76) + v22;
        if (v25 >= v15 - v24)
        {
          break;
        }
      }

      while (v25 >= a1[66]);
      v36 = a6;
      v37 = v16;
      if (v22 >= 1)
      {
        break;
      }

LABEL_25:
      v29 = v22 + *(v21 + 76) + 1;
      if (v29 < a3)
      {
        v30 = 0;
        while (1)
        {
          leading_tree = cyk_hash_get_leading_tree(a2, v29, v30);
          if (leading_tree)
          {
            break;
          }

LABEL_33:
          ++v30;
          v29 = *(v21 + 72) + *(v21 + 76) + 1;
          if (v30 >= a3 - v29)
          {
            goto LABEL_34;
          }
        }

        v32 = leading_tree;
        while (cyk_as_make_trees(a2, v14, v21, v32, a4, a1, &v39, a7))
        {
          if (v39 > v15)
          {
            v15 = v39;
          }

          v32 = v32[11];
          if (!v32)
          {
            goto LABEL_33;
          }
        }

        goto LABEL_43;
      }

LABEL_34:
      if (!cyk_as_make_trees(a2, v14, 0, v21, a4, a1, &v39, a7))
      {
        goto LABEL_43;
      }

      if (v39 > v15)
      {
        v15 = v39;
      }

      a6 = v36;
      v16 = v37;
    }

    v26 = 0;
    while (1)
    {
      v27 = cyk_hash_get_leading_tree(a2, v22 + ~v26, v26);
      if (v27)
      {
        break;
      }

LABEL_24:
      ++v26;
      v22 = *(v21 + 72);
      if (v26 >= v22)
      {
        goto LABEL_25;
      }
    }

    v28 = v27;
    while (cyk_as_make_trees(a2, v14, v28, v21, a4, a1, &v39, a7))
    {
      if (v39 > v15)
      {
        v15 = v39;
      }

      v28 = *(v28 + 88);
      if (!v28)
      {
        goto LABEL_24;
      }
    }

LABEL_43:
    v33 = 2;
    v34 = v37;
  }

  else
  {
    v33 = 2;
    v34 = 0;
  }

LABEL_40:

  return parser_result_create(v33, v34, a7);
}

void *set_step_partial_tree(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = result;
  while (1)
  {
    if (*a2 == a3 && *(a2 + 80) != a4)
    {
      *(a2 + 80) = a4;
      result = as_list_insert(a2, v9[1], a5);
      v9[1] = result;
    }

    v10 = *(a2 + 32);
    if (v10 != 1)
    {
      break;
    }

LABEL_8:
    a2 = *(a2 + 48);
  }

  if (v10 == 2)
  {
    result = set_step_partial_tree(v9, *(a2 + 40), a3, a4, a5);
    goto LABEL_8;
  }

  return result;
}

uint64_t cyk_as_make_trees_step(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, int a7, _DWORD *a8, void *a9)
{
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  *a8 = -1;
  if (a3)
  {
    v15 = *(a3 + 72);
    v16 = *(a3 + 76) + 1;
    if (v16 + v15 != *(a4 + 18))
    {
      return 1;
    }

    v17 = v16 + *(a4 + 19);
    v18 = *a3;
  }

  else
  {
    v15 = *(a4 + 18);
    v17 = *(a4 + 19);
    v18 = -1;
  }

  v19 = *a4;
  *(&v42 + 1) = v18;
  *&v43 = v19;
  v41 = &v42;
  grammar_right = find_grammar_right(&v41);
  if (grammar_right == -1)
  {
    return 1;
  }

  v21 = grammar_right;
  v37 = a5;
  next_grammar_right = grammar_right - 1;
  v40 = v17;
  while (1)
  {
    result = heap_Alloc(a9, 96);
    if (!result)
    {
      break;
    }

    v24 = result;
    v25 = v41;
    v26 = *v41;
    *v24 = *v41;
    v27 = -1;
    *(v24 + 8) = -1;
    *(v24 + 24) = 0;
    if (a3)
    {
      v27 = *(v25 + 24);
      v28 = 2;
    }

    else
    {
      v28 = 1;
    }

    *(v24 + 32) = v28;
    *(v24 + 40) = a3;
    *(v24 + 48) = a4;
    *(v24 + 88) = 0;
    v29 = *(v25 + 32);
    *(v24 + 12) = v27;
    *(v24 + 16) = v29;
    *(v24 + 72) = v15;
    *(v24 + 76) = v17;
    *(v24 + 80) = a7;
    v30 = *(v25 + 72);
    if ((!a7 && v30 == -1 || v30 != -1 && *(*(&AC_pac + v30) + 4) == a7) && *(a4 + 20) == a7 && (!a3 || *(a3 + 80) == a7) && (v30 == -1 || *(a6 + 44) == 1 || is_internal(v26) == 1 || eval_cond(**(&AC_pac + v41[9]), v24) == 1))
    {
      if (a3)
      {
        v31 = a4[8] + *(a3 + 64) + v41[11];
      }

      else
      {
        v31 = v41[11] + a4[8];
      }

      *(v24 + 56) = v31 + v41[15];
      *(v24 + 64) = v31;
      v32 = a6;
      v33 = add_partial_tree_checking_FI(a1, v24, v15, v40, *(a6 + 52), a9);
      if (v33 < 0)
      {
        v35 = v33;
        heap_Free(a9, v24);
        v36 = v35 & 0x1FFF;
        a6 = v32;
        v17 = v40;
        if (v36 == 10)
        {
          return 0;
        }
      }

      else
      {
        *(a2 + 8) = as_list_insert(v24, *(a2 + 8), a9);
        if (v41[9] != -1 && !*(a6 + 44) && is_internal(*v24) != 1)
        {
          result = exec_actions(*(*(&AC_pac + v41[9]) + 1), v24, a9);
          if (!result)
          {
            return result;
          }
        }

        v17 = v40;
        if (!*(v24 + 72))
        {
          v34 = *(v24 + 76);
          if (v34 > *a8 && *v24 == *(v37 + 8 * a7))
          {
            *a8 = v34;
          }
        }
      }
    }

    else
    {
      heap_Free(a9, v24);
    }

    next_grammar_right = find_next_grammar_right(&v41, v21, next_grammar_right);
    if (next_grammar_right == -1)
    {
      return 1;
    }
  }

  return result;
}

uint64_t parse_cyk_as_step(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, void *a10)
{
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v15 = a1 + 956;
  v16 = 956;
  LODWORD(v17) = *(a1 + 956);
  do
  {
    v18 = *(a1 + v16);
    if (v17 <= v18)
    {
      v17 = v18;
    }

    else
    {
      v17 = v17;
    }

    v16 += 4;
  }

  while (v16 != 976);
  v19 = heap_Calloc(a10, 8, v17);
  if (!v19)
  {

    return parser_result_create(2, 0, a10);
  }

  v20 = v19;
  v21 = cyk2as_list(a2, a3, a1, a10);
  if (!v21)
  {
    v59 = parser_result_create(2, 0, a10);
    heap_Free(a10, v20);
    return v59;
  }

  v22 = v21;
  v65 = v15;
  v67 = a6;
  v68 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v66 = a3 - 1;
  while (1)
  {
    v27 = v22[1];
    v28 = v22;
    do
    {
      if (!v27)
      {
        goto LABEL_75;
      }

      v29 = v27;
      v30 = v28;
      v27 = v27[1];
      v28 = v29;
    }

    while (v27);
    v70 = a3;
    v69 = v20;
    v31 = v26;
    v32 = a4;
    v33 = v24;
    v34 = *v29;
    v30[1] = v29[2];
    heap_Free(a10, v29);
    if (!v34)
    {
      break;
    }

    v26 = v31 + 1;
    v35 = *(a1 + 1300 + 4 * v25);
    if ((v35 & 0x80000000) != 0 || (IsUpdatable = kaldi::nnet1::UpdatableComponent::IsUpdatable(v35), v26 = v31 + 1, IsUpdatable != 1))
    {
      if (*(v34 + 80) != v25)
      {
        v24 = v33;
        a4 = v32;
LABEL_25:
        v20 = v69;
        goto LABEL_26;
      }

      v24 = v33;
      v20 = v69;
      if (*(v34 + 72))
      {
        a4 = v32;
      }

      else
      {
        a4 = v32;
        if (*(v34 + 76) == v66 && *v34 == *(a7 + 8 * v25))
        {
          v53 = (v24 + 1);
          if (v25 == *(a1 + 952) - 1)
          {
            v54 = v26;
            v55 = tree_duplicate(v34, a1, a9, a10);
            v68 = tree_append(v68, v55);
            v75 = v68;
            v24 = v53;
            if (v53 >= *(v65 + 4 * v25))
            {
              goto LABEL_74;
            }

            v26 = v54;
            goto LABEL_25;
          }

          *(v69 + 8 * v24) = v34;
          if (v53 >= *(v65 + 4 * v25))
          {
            if ((v24 & 0x80000000) != 0)
            {
              v23 = 0;
              v24 = 0;
              v26 = 0;
              ++v25;
            }

            else
            {
              v56 = v69;
              do
              {
                set_step_partial_tree(v22, *v56, *(a5 + 8 * v25), (v25 + 1), a10);
                v57 = *v56++;
                set_step_partial_tree(v22, v57, a4, (v25 + 1), a10);
                --v53;
              }

              while (v53);
              v23 = 0;
              v24 = 0;
              v26 = 0;
              ++v25;
              v20 = v69;
            }
          }

          else
          {
            v24 = (v24 + 1);
          }
        }
      }

LABEL_26:
      a3 = v70;
      if (*(v34 + 80) == v25 || v25 >= 1 && *v34 == *(a5 - 8 + 8 * v25))
      {
        v43 = *(a1 + 292 + 4 * v25);
        v44 = *(v34 + 72);
        if (v43 < 0 || (v45 = *(v34 + 76) + v44, v45 >= v23 - v43) || v45 < *(a1 + 272 + 4 * v25))
        {
          v63 = v26;
          v64 = v24;
          if (v44 >= 1)
          {
            v46 = 0;
            while (1)
            {
              leading_tree = cyk_hash_get_leading_tree(a2, v44 + ~v46, v46);
              if (leading_tree)
              {
                break;
              }

LABEL_40:
              ++v46;
              v44 = *(v34 + 72);
              if (v46 >= v44)
              {
                goto LABEL_41;
              }
            }

            v48 = leading_tree;
            while (cyk_as_make_trees_step(a2, v22, v48, v34, a7, a1, v25, &v74, a10))
            {
              if (v74 > v23)
              {
                v23 = v74;
              }

              v48 = *(v48 + 88);
              if (!v48)
              {
                goto LABEL_40;
              }
            }

            goto LABEL_72;
          }

LABEL_41:
          v49 = v44 + *(v34 + 76) + 1;
          if (v49 < v70)
          {
            v50 = 0;
            while (1)
            {
              v51 = cyk_hash_get_leading_tree(a2, v49, v50);
              if (v51)
              {
                break;
              }

LABEL_49:
              ++v50;
              v49 = *(v34 + 72) + *(v34 + 76) + 1;
              if (v50 >= v70 - v49)
              {
                goto LABEL_50;
              }
            }

            v52 = v51;
            while (cyk_as_make_trees_step(a2, v22, v34, v52, a7, a1, v25, &v74, a10))
            {
              if (v74 > v23)
              {
                v23 = v74;
              }

              v52 = v52[11];
              if (!v52)
              {
                goto LABEL_49;
              }
            }

LABEL_72:
            v60 = parser_result_create(2, v68, a10);
            heap_Free(a10, v69);
            return v60;
          }

LABEL_50:
          if (!cyk_as_make_trees_step(a2, v22, 0, v34, a7, a1, v25, &v74, a10))
          {
            goto LABEL_72;
          }

          if (v74 > v23)
          {
            v23 = v74;
          }

          v20 = v69;
          a3 = v70;
          v24 = v64;
          v26 = v63;
        }
      }
    }

    else
    {
      if (v25 == *(a1 + 952) - 1)
      {
        break;
      }

      v20 = v69;
      if (!v33)
      {
        a4 = v32;
        if ((max_len_parse(0, v25, a2, v70, a1, v22, v32, a5, v67, a7, a9, a10, &v73) & 0x80000000) == 0)
        {
LABEL_60:
          v23 = 0;
          v24 = 0;
          v26 = 0;
          ++v25;
          a3 = v70;
          continue;
        }

        as_list_free_all(v22, a10);
        heap_Free(a10, v69);
        return 0;
      }

      v37 = v33;
      v38 = v33 <= 0;
      a4 = v32;
      if (v38)
      {
        goto LABEL_60;
      }

      v39 = v69;
      v40 = v32;
      v41 = v37;
      do
      {
        set_step_partial_tree(v22, *v39, *(a5 + 8 * v25), (v25 + 1), a10);
        v42 = *v39++;
        set_step_partial_tree(v22, v42, v40, (v25 + 1), a10);
        --v41;
      }

      while (v41);
      v23 = 0;
      v24 = 0;
      v26 = 0;
      ++v25;
      a4 = v40;
      a3 = v70;
      v20 = v69;
    }
  }

  LODWORD(v24) = v33;
  a4 = v32;
LABEL_74:
  v20 = v69;
  a3 = v70;
LABEL_75:
  if (v24)
  {
    as_list_free_all(v22, a10);
    heap_Free(a10, v20);
    return parser_result_create(1, v68, a10);
  }

  else
  {
    v61 = max_len_parse(1, v25, a2, a3, a1, v22, a4, a5, v67, a7, a9, a10, &v75);
    as_list_free_all(v22, a10);
    heap_Free(a10, v20);
    if (v61 < 0)
    {
      return 0;
    }

    if (v75)
    {
      v62 = 1;
    }

    else
    {
      v62 = 2;
    }

    v60 = parser_result_create(v62, v75, a10);
    if (!v60)
    {
      jpe_FreeTree(v75, a10);
    }
  }

  return v60;
}

uint64_t cyk_one_free_all(uint64_t *a1, void *a2)
{
  v4 = *a1;
  if (*a1)
  {
    do
    {
      v5 = *(v4 + 88);
      heap_Free(a2, v4);
      v4 = v5;
    }

    while (v5);
  }

  heap_Free(a2, a1);
  return 0;
}

uint64_t cyk_hash_get_leading_tree(void *a1, int a2, int a3)
{
  v3 = 20 * (a2 % 200);
  v4 = v3 + a3 % 20;
  if ((a3 / 20))
  {
    v4 = v3 + 20 * (a3 / 20) - a3 + 19;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  while (*(v5 + 10) != a3 || *(v5 + 8) != a2)
  {
    v5 = *(v5 + 16);
    if (!v5)
    {
      return 0;
    }
  }

  return *v5;
}

uint64_t cyk_hash_add_leading_tree(void *a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v5 = a4;
  v6 = a3;
  v9 = 20 * (a3 % 200);
  if ((a4 / 20))
  {
    v10 = v9 + 20 * (a4 / 20) - a4 + 19;
  }

  else
  {
    v10 = v9 + a4 % 20;
  }

  v11 = *(*a1 + 8 * v10);
  if (v11)
  {
    while (1)
    {
      v12 = v11;
      if (*(v11 + 10) == a4 && *(v11 + 8) == a3)
      {
        break;
      }

      v11 = *(v11 + 16);
      if (!v11)
      {
        goto LABEL_10;
      }
    }

    v15 = 1;
    return v15 | 0x8C200000;
  }

  v12 = 0;
LABEL_10:
  v13 = heap_Alloc(a5, 24);
  if (!v13)
  {
    v15 = 8202;
    return v15 | 0x8C200000;
  }

  *(v13 + 8) = v6;
  *(v13 + 10) = v5;
  *(v13 + 16) = 0;
  *v13 = a2;
  if (v12)
  {
    v14 = (v12 + 16);
  }

  else
  {
    v14 = (*a1 + 8 * v10);
  }

  v16 = 0;
  *v14 = v13;
  return v16;
}

uint64_t *cyk_hash_free(void *a1, void *a2)
{
  for (i = 0; i != 4000; ++i)
  {
    result = *(*a1 + 8 * i);
    if (result)
    {
      do
      {
        v6 = result[2];
        cyk_one_free_all(result, a2);
        result = v6;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t SearchTERMINALTable(char *__s2)
{
  v2 = 0;
  v3 = 372;
  while (1)
  {
    v4 = v2 + (v3 - v2) / 2;
    v5 = &(&TERMINALTable)[2 * v4];
    v6 = strcmp(*v5, __s2);
    if (!v6)
    {
      break;
    }

    if (v6 >= 0)
    {
      v3 = v4 - 1;
    }

    else
    {
      v2 = v4 + 1;
    }

    if (v2 > v3)
    {
      return 0;
    }
  }

  return *(v5 + 8);
}

uint64_t log_intermediate_tree(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, void *a5, int a6, uint64_t *a7)
{
  v14 = ssftstring_Clear(a3);
  if ((v14 & 0x80000000) == 0)
  {
    if (a5)
    {
      if (a6 >= 1)
      {
        v25 = a5;
        v15 = 0;
        v16 = a6;
        v23 = a6;
        while (v15 >= a6)
        {
LABEL_12:
          ++v15;
          --v16;
          a6 = v23;
          if (v15 == v23)
          {
            return v14;
          }
        }

        v17 = 0;
        v24 = v16;
        while (1)
        {
          leading_tree = cyk_hash_get_leading_tree(v25, v15, v17);
          if (leading_tree)
          {
            break;
          }

LABEL_11:
          ++v17;
          v16 = v24;
          if (v17 == v24)
          {
            goto LABEL_12;
          }
        }

        v19 = leading_tree;
        while (1)
        {
          v20 = v19;
          v19 = *(v19 + 88);
          log_OutText(*(a1 + 32), a2, 5, 0, "[A*] (%d,%d) == (%d,%d)", v15, v17, *(v20 + 72), *(v20 + 76));
          LODWORD(v22) = 0;
          v14 = log_output_tree(a1, a2, a3, v20, 0, a4[3], a4[9], 1, v22, 0, a4[324], a7);
          if ((v14 & 0x80000000) != 0)
          {
            break;
          }

          if (!v19)
          {
            goto LABEL_11;
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v14;
}

uint64_t parser_result_create(int a1, uint64_t a2, uint64_t a3)
{
  result = heap_Alloc(a3, 56);
  if (result)
  {
    *result = a1;
    *(result + 8) = a2;
  }

  return result;
}

uint64_t connection_table(uint64_t a1, uint64_t a2, void *a3)
{
  result = 100000;
  v5 = *(a3[6] + 4 * a1 + 4);
  if ((v5 & 0x80000000) != 0)
  {
    return result;
  }

  v6 = *(a3[7] + 4 * a2 + 4);
  if ((v6 & 0x80000000) != 0)
  {
    return result;
  }

  LOWORD(v7) = 0;
  v8 = *(a3[3] + 2 * v5);
  v9 = (v8 + ((v8 & 0x8000) >> 15)) << 16 >> 17;
  v10 = (*(a3[2] + 8 * v5) + 8 * v9);
  while (v6 < *v10)
  {
    if (!v9)
    {
      v19 = (*(a3[4] + 8 * v5) + 2 * v6);
      return *v19;
    }

    if (v6 > *(v10 - 3))
    {
      v17 = *(a3[4] + 8 * v5);
      v18 = *(v10 - 2);
      goto LABEL_29;
    }

    v11 = v10 - 4;
    if (v6 >= *(v10 - 4))
    {
      v19 = v10 - 1;
      return *v19;
    }

    if (!v7)
    {
      LOWORD(v7) = v9;
    }

    v12 = v7;
    v7 = (v7 + ((v7 & 0x8000) >> 15)) >> 1;
    ++v12;
    v10 -= 4 * v7;
    v13 = v12 >= 3;
    if (v12 >= 3)
    {
      v14 = -v7;
    }

    else
    {
      LOWORD(v14) = -1;
    }

LABEL_22:
    if (!v13)
    {
      v10 = v11;
    }

    LOWORD(v9) = v14 + v9;
  }

  if (v6 <= v10[1])
  {
    v19 = v10 + 3;
    return *v19;
  }

  if (v8 - 1 == v9 || (v11 = v10 + 4, v6 < v10[4]))
  {
    v17 = *(a3[4] + 8 * v5);
    v18 = v10[2];
LABEL_29:
    v19 = (v17 + 2 * (v6 - v18));
    return *v19;
  }

  if (v6 > v10[5])
  {
    v15 = v8 - v9;
    if (v7)
    {
      v15 = v7;
    }

    v7 = v15 / 2;
    v16 = v15 + 1;
    v10 += 4 * v7;
    v13 = v16 >= 3;
    if (v16 < 3)
    {
      LOWORD(v14) = 1;
    }

    else
    {
      LOWORD(v14) = v7;
    }

    goto LABEL_22;
  }

  v19 = v10 + 7;
  return *v19;
}

uint64_t JpCreate(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7, uint64_t *a8, uint64_t a9)
{
  v10 = a7;
  v25 = 0;
  inited = InitRsrcFunction(a1, a2, &v25);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v18 = heap_Calloc(*(v25 + 8), 1, 72);
  if (!v18)
  {
    return 2350915594;
  }

  v19 = v18;
  *(v18 + 64) = 0;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  v20 = jparser_ClassOpen(a1, a2, v18 + 8);
  if ((v20 & 0x80000000) != 0)
  {
    v22 = v20;
LABEL_13:
    heap_Free(*(v25 + 8), v19);
    return v22;
  }

  v21 = jparser_ObjOpen(a1, a2, *(v19 + 8), *(v19 + 16), (v19 + 24), a3, a4, a5, a6, v10, a9);
  if ((v21 & 0x80000000) != 0)
  {
    v22 = v21;
LABEL_12:
    jparser_ClassClose(*(v19 + 8), *(v19 + 16));
    goto LABEL_13;
  }

  *(v19 + 48) = 0;
  v22 = ssftstring_ObjOpen(*(v25 + 8), (v19 + 48));
  if ((v22 & 0x80000000) != 0)
  {
    jparser_ObjClose((v19 + 24));
    goto LABEL_12;
  }

  *v19 = 1;
  v23 = v25;
  *(v19 + 56) = a1;
  *(v19 + 64) = a2;
  *(v19 + 32) = v23;
  *(v19 + 40) = a9;
  *a8 = v19;
  return v22;
}

uint64_t JpRemove(void *a1, uint64_t *a2)
{
  if (a2 && *a2)
  {
    jparser_ObjClose((*a2 + 24));
    jparser_ClassClose(*(*a2 + 8), *(*a2 + 16));
    v4 = *a2;
    v5 = *(*a2 + 48);
    if (v5)
    {
      ssftstring_ObjClose(v5);
      *(*a2 + 48) = 0;
      v4 = *a2;
    }

    heap_Free(a1, v4);
    *a2 = 0;
  }

  return 0;
}

uint64_t JpParse(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, _WORD *a10, uint64_t *a11, uint64_t a12, int a13, const char *a14, uint64_t a15)
{
  v21 = 2350915594;
  v87[0] = 0;
  v86 = 0;
  v84 = 0;
  v85 = 0;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  LogLevel = log_GetLogLevel(*(*(a1 + 32) + 32));
  v23 = LogLevel > 4;
  v78 = 0;
  v77 = 0;
  *(a12 + 8) = 0;
  *(a12 + 12) = 0x100000001;
  if (!*a1)
  {
    v21 = 2350915601;
    goto LABEL_58;
  }

  v24 = LogLevel;
  v25 = bed_GetpElem(a5, 0, &v78);
  if ((v25 & 0x80000000) != 0 || (v25 = bed_GetcElem(a5, &v77), (v25 & 0x80000000) != 0) || (v25 = bed_GetpElem(a5, 0xFFFFu, &v82), (v25 & 0x80000000) != 0))
  {
LABEL_57:
    v21 = v25;
LABEL_58:
    if (v86)
    {
      v63 = jparser_FreeTree(*(a1 + 24), &v86);
      if (v63 >= 0 || v21 <= -1)
      {
        return v21;
      }

      else
      {
        return v63;
      }
    }

    return v21;
  }

  v74 = a8;
  if (a13 != 1)
  {
    goto LABEL_12;
  }

  if (v77)
  {
    v26 = v78 + 5;
    v27 = 1;
    v28 = v77;
    do
    {
      v29 = *v26;
      v26 += 16;
      if (v29 == 21)
      {
        ++v27;
      }

      --v28;
    }

    while (v28);
    if (!v27)
    {
LABEL_12:
      v21 = jparser_Parse(*(a1 + 24), a2, a3, &v86, v23, *(a1 + 48), v78, v77, v82, a8, a13);
      v87[0] = v21;
      if ((v21 & 0x80000000) != 0)
      {
        return v21;
      }

      goto LABEL_33;
    }
  }

  else
  {
    v27 = 1;
  }

  v30 = heap_Calloc(*(*(a1 + 32) + 8), 1, v27 << 6);
  if (v30)
  {
    v31 = v30;
    v70 = a4;
    v32 = v77;
    if (v77)
    {
      v33 = 0;
      v34 = 0;
      v35 = v78;
      v36 = v77;
      do
      {
        if (!v33 || *(v35 + 5) == 21)
        {
          v37 = (v30 + (v34 << 6));
          v38 = *v35;
          v39 = v35[1];
          v40 = v35[3];
          v37[2] = v35[2];
          v37[3] = v40;
          *v37 = v38;
          v37[1] = v39;
          ++v34;
          v32 = v36;
        }

        ++v33;
        v35 += 4;
      }

      while (v33 < v32);
      if (v34)
      {
        v71 = v24;
        v72 = v23;
        v68 = a6;
        v69 = a5;
        v41 = v34;
        v42 = 32;
        while (1)
        {
          if (v42 != 32)
          {
            v43 = *(v78 + 8);
            v44 = (*(v31 + v42) - v43);
            if (*(v31 + v42) != v43)
            {
              v45 = a3;
              v46 = heap_Calloc(*(*(a1 + 32) + 8), (v44 + 1), 1);
              if (!v46)
              {
                heap_Free(*(*(a1 + 32) + 8), v31);
                return v21;
              }

              v47 = v46;
              v48 = strncpy(v46, a14, v44);
              v48[v44] = 0;
              *(v31 + v42) = 2 * Utf8_LengthInUtf8chars(v48, v44);
              heap_Free(*(*(a1 + 32) + 8), v47);
              a3 = v45;
            }
          }

          v42 += 64;
          if (!--v41)
          {
            a6 = v68;
            a5 = v69;
            v24 = v71;
            v23 = v72;
            goto LABEL_32;
          }
        }
      }
    }

    v34 = 0;
LABEL_32:
    v21 = jparser_Parse(*(a1 + 24), a2, a3, &v86, v23, *(a1 + 48), v31, v34, v82, v74, 1);
    v87[0] = v21;
    heap_Free(*(*(a1 + 32) + 8), v31);
    a4 = v70;
    if ((v21 & 0x80000000) == 0)
    {
LABEL_33:
      v73 = v23;
      if (a3)
      {
        v49 = *(v82 + 36);
        if (3 * a3 != 2 * v49)
        {
          *(a12 + 16) = 0;
        }
      }

      else
      {
        v49 = *(v82 + 36);
      }

      if (*(a12 + 16))
      {
        v50 = "";
      }

      else
      {
        v50 = "- aborting alignment";
      }

      log_OutText(*(*(a1 + 32) + 32), *(a1 + 40), 5, 0, "[UTOI] (normalizing %d bytes - region length %d %s)", a3, v49, v50);
      UTOITrace(v23, *(a1 + 32), a4, a5, "START of normalization");
      v81 = 0;
      jparser_extractResult(*(a1 + 32), *(a1 + 40), v86, v87, a6, a7, v74, a9, a10, v83, &v85 + 1, &v85, &v84 + 1, *(a1 + 48), a11, &v84, a12, &v81, a14, a15);
      v21 = v87[0];
      if ((v87[0] & 0x80000000) != 0)
      {
        goto LABEL_58;
      }

      v51 = a6;
      if (!a3)
      {
        goto LABEL_76;
      }

      v25 = bed_GetcElem(a6, &v79);
      if ((v25 & 0x80000000) == 0)
      {
        v52 = *(a1 + 32);
        if (!v79)
        {
          log_OutText(*(v52 + 32), *(a1 + 40), 5, 0, "[UTOI] deleting region, no replacement text found");
          goto LABEL_76;
        }

        UTOISubTrace(v23, v52, a6, "replacement string");
        if (*(a12 + 16) != 1)
        {
LABEL_76:
          v21 = utoin_IncrReplaceCurrentRegion(a4, a5, v51, a3 >> 1, a12);
          if ((v21 & 0x80000000) == 0)
          {
            UTOITrace(v23, *(a1 + 32), a4, a5, "END of normalization");
          }

          goto LABEL_58;
        }

        v25 = bed_GetpElem(a6, 0, &v80);
        if ((v25 & 0x80000000) == 0)
        {
          if (!v79)
          {
            v62 = 1;
            v57 = v24;
            goto LABEL_70;
          }

          v53 = 0;
          v54 = 0;
          v55 = 1;
          v56 = v80;
          v57 = v24;
          while (1)
          {
            if (*(v56 + v53) == 16)
            {
              v58 = *(a12 + 8);
              if (v54 >= v58)
              {
LABEL_68:
                log_OutText(*(*(a1 + 32) + 32), *(a1 + 40), 5, 0, "[UTOI] cannot find non-deleted word to align new word number %d with", v55);
                v62 = 0;
LABEL_70:
                if (v57 >= 5 && *(a12 + 8))
                {
                  v66 = 0;
                  v67 = 0;
                  do
                  {
                    log_OutText(*(*(a1 + 32) + 32), *(a1 + 40), 5, 0, "[UTOI] [%d] origWordPos=%d, newPos=%d, bDeleted=%d", v67++, *(*a12 + v66), *(*a12 + v66 + 8), *(*a12 + v66 + 4));
                    v66 += 12;
                  }

                  while (v67 < *(a12 + 8));
                }

                LODWORD(v23) = v73;
                if (v62)
                {
                  *(a12 + 12) = 0;
                }

                goto LABEL_76;
              }

              v59 = v54;
              v60 = (*a12 + 12 * v54 + 4);
              while (1)
              {
                v61 = *v60;
                v60 += 3;
                if (v61 != 1)
                {
                  break;
                }

                if (v58 == ++v59)
                {
                  goto LABEL_68;
                }
              }

              *(*a12 + 12 * v59 + 8) = v53;
              ++v55;
              v54 = v59 + 1;
            }

            if (++v53 >= v79)
            {
              v62 = 1;
              goto LABEL_70;
            }
          }
        }
      }

      goto LABEL_57;
    }
  }

  return v21;
}

uint64_t jparser_extractResult(uint64_t a1, uint64_t a2, void *a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _WORD *a9, _WORD *a10, unsigned __int16 *a11, unsigned __int16 *a12, _WORD *a13, uint64_t a14, uint64_t *a15, unsigned __int16 *a16, uint64_t a17, _WORD *a18, uint64_t a19, uint64_t a20)
{
  v101 = a7;
  if (*a4 < 0)
  {
    return 0;
  }

  v27 = ssftstring_Clear(a14);
  *a4 = v27;
  if (v27 < 0)
  {
    return 0;
  }

  if (!a3)
  {
    return 1;
  }

  v29 = a17;
  while (1)
  {
    v30 = a3[4];
    if (v30)
    {
      v31 = jparser_extractResult(a1, a2, v30, a4, a5, a6, v101, a8, a9, a10, a11, a12, a13, a14, a15, a16, v29, a18, a19, a20);
      v29 = a17;
      if (v31 != 1)
      {
        return 0;
      }

      goto LABEL_7;
    }

    v32 = a3[5];
    if (v32)
    {
      break;
    }

LABEL_7:
    a3 = a3[2];
    if (!a3)
    {
      return 1;
    }
  }

  v95 = a20;
  v96 = a2;
  v97 = a5;
  v98 = a1;
  v93 = a6;
  v94 = a8;
  v33 = 0;
  LOWORD(a6) = 0;
  v99 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  do
  {
    v37 = *v32;
    if (!strcmp(*v32, "WORD"))
    {
      v38 = *(v32 + 8);
      v99 = strlen(v38);
      v39 = *v38;
      if (*v38)
      {
        a6 = 0;
        do
        {
          v40 = v38 + 2;
          if (v39 > 0xFC)
          {
            v41 = v38 + 1;
          }

          else
          {
            v41 = v38 + 2;
          }

          if (v39 > 0xFC)
          {
            v42 = a6;
          }

          else
          {
            v42 = a6 + 1;
          }

          if (v39 == 160)
          {
            v43 = a6;
          }

          else
          {
            v43 = a6 + 1;
          }

          if (v39 <= 0xDF)
          {
            v41 = v38 + 1;
            v42 = v43;
          }

          if (v39 == 128)
          {
            v40 = v38 + 1;
            v44 = a6;
          }

          else
          {
            v44 = a6 + 1;
          }

          if (v39 <= 0x9F)
          {
            v45 = v44;
          }

          else
          {
            v40 = v41;
            v45 = v42;
          }

          if ((v39 & 0x80) != 0)
          {
            v38 = v40;
          }

          else
          {
            ++v38;
          }

          if ((v39 & 0x80) != 0)
          {
            a6 = v45;
          }

          else
          {
            ++a6;
          }

          v39 = *v38;
        }

        while (*v38);
      }

      else
      {
        LOWORD(a6) = 0;
      }

      appended = ssftstring_AppendCStr(a14, "Word ");
      *a4 = appended;
      if (appended < 0)
      {
        return 0;
      }

      v47 = ssftstring_AppendCStr(a14, *(v32 + 8));
      *a4 = v47;
      if (v47 < 0)
      {
        return 0;
      }

      v48 = ssftstring_AppendCStr(a14, "");
      *a4 = v48;
      if (v48 < 0)
      {
        return 0;
      }

      v37 = *v32;
      v36 = v32;
    }

    if (!strcmp(v37, "POS"))
    {
      v49 = ssftstring_AppendCStr(a14, "POS ");
      *a4 = v49;
      if (v49 < 0)
      {
        return 0;
      }

      v50 = ssftstring_AppendCStr(a14, *(v32 + 8));
      *a4 = v50;
      if (v50 < 0)
      {
        return 0;
      }

      v51 = ssftstring_AppendCStr(a14, "");
      *a4 = v51;
      if (v51 < 0)
      {
        return 0;
      }

      v37 = *v32;
      v34 = v32;
    }

    if (!strcmp(v37, "PRON"))
    {
      v33 = strlen(*(v32 + 8));
      v52 = ssftstring_AppendCStr(a14, "Pron ");
      *a4 = v52;
      if (v52 < 0)
      {
        return 0;
      }

      v53 = ssftstring_AppendCStr(a14, *(v32 + 8));
      *a4 = v53;
      if (v53 < 0)
      {
        return 0;
      }

      v54 = ssftstring_AppendCStr(a14, "");
      *a4 = v54;
      v35 = v32;
      if (v54 < 0)
      {
        return 0;
      }
    }

    v32 = *(v32 + 16);
  }

  while (v32);
  if (!v36 || !v35 || !v34)
  {
    v87 = -1944051456;
    goto LABEL_89;
  }

  v55 = *(v98 + 32);
  v56 = ssftstring_CStr(a14);
  log_OutText(v55, v96, 5, 0, "[UTOI RES] %s", v56);
  v57 = ssftstring_Clear(a14);
  *a4 = v57;
  if (v57 < 0)
  {
    return 0;
  }

  v58 = bed_Insert(v97, &szWORD_BEG_5, 1);
  *a4 = v58;
  if (v58 < 0)
  {
    return 0;
  }

  ++*a9;
  v59 = *a15;
  v60 = *a16 + 1;
  *a16 = v60;
  v61 = *(v98 + 8);
  v62 = 2 * v60 + 2;
  if (v59)
  {
    v63 = heap_Realloc(v61, v59, v62);
    if (!v63)
    {
      goto LABEL_86;
    }

    *a15 = v63;
  }

  else
  {
    v63 = heap_Calloc(v61, 1, v62);
    *a15 = v63;
    if (!v63)
    {
      goto LABEL_86;
    }
  }

  *v63 = *a16;
  v64 = SearchTERMINALTable(*(v34 + 8));
  if (v64)
  {
    v65 = v64;
  }

  else
  {
    v65 = 42;
  }

  *(*a15 + 2 * *a16) = v65;
  *a4 = bed_Insert(v97, *(v35 + 8), v33);
  *a9 += v33;
  v66 = bed_Insert(v97, &szWORD_END_6, 1);
  *a4 = v66;
  if (v66 < 0)
  {
    return 0;
  }

  ++*a9;
  if (!v99)
  {
    log_OutText(*(v98 + 32), v96, 5, 0, "[UTOI] jparser word length is 0, cannot get hex args");
    v87 = -1944051712;
    goto LABEL_89;
  }

  a1 = v98;
  v67 = heap_Calloc(*(v98 + 8), a6 + 1, 2);
  if (!v67)
  {
    goto LABEL_86;
  }

  v68 = v67;
  LH_wcsncpy(v67, (v95 + 2 * *a13), a6);
  *&v68[2 * a6] = 0;
  v69 = utf8_16BitNbrOfUtf8Chars(v68);
  if (!v69)
  {
    log_OutText(*(v98 + 32), v96, 5, 0, "[UTOI] converted utf8 word length is 0, cannot get hex args");
    v88 = -1944051712;
    goto LABEL_92;
  }

  v70 = (v69 - 1);
  v71 = heap_Calloc(*(v98 + 8), v70 + 1, 1);
  a2 = v96;
  if (v71)
  {
    v72 = v71;
    strncpy(v71, (a19 + *a12), v70)[v70] = 0;
    log_OutText(*(v98 + 32), v96, 5, 0, "[UTOI] get hex args from UTF16Word(%s,pos=%d) UTF8Word(%s,pos=%d)", v68, *a11, v72, *a12);
    v73 = v101;
    v74 = *(v101 + 16);
    v75 = v74 + 2 * v70 + 1;
    v91 = v68;
    if (*(v101 + 18) < v75)
    {
      v76 = datac_RequestBlock(v93, v94, (v74 + 2 * v70 + 1), &v101);
      *a4 = v76;
      if (v76 < 0)
      {
        heap_Free(*(v98 + 8), v68);
        v89 = *(v98 + 8);
        v90 = v72;
        goto LABEL_93;
      }

      v73 = v101;
      v74 = *(v101 + 16);
    }

    v77 = (*(v73 + 8) + *(v73 + 2) * v74);
    *(v73 + 16) = v75;
    v92 = v70;
    if (v70)
    {
      v78 = v70;
      v79 = v72;
      do
      {
        v80 = *v79++;
        LH_itoa(v80, v100, 0x10u);
        v100[2] = 0;
        *v77 = v100[0];
        v81 = v77 + 2;
        v77[1] = v100[1];
        v77 += 2;
        --v78;
      }

      while (v78);
    }

    else
    {
      v81 = v77;
    }

    *v81 = 0;
    *a11 += v99;
    *a12 += v92;
    *a13 += a6;
    heap_Free(*(v98 + 8), v91);
    heap_Free(*(v98 + 8), v72);
    v29 = a17;
    a8 = v94;
    a6 = v93;
    a5 = v97;
    a20 = v95;
    if (*(a17 + 16) != 1)
    {
      goto LABEL_84;
    }

    v82 = *(a17 + 8);
    v83 = *a17;
    if (v82 < *(a17 + 10))
    {
LABEL_83:
      v85 = v83 + 12 * v82;
      *v85 = *a18;
      *(v85 + 2) = 0;
      *a18 += v92;
      ++*(v29 + 8);
LABEL_84:
      *a10 = *a9;
      goto LABEL_7;
    }

    v84 = heap_Realloc(*(v98 + 8), v83, 12 * *(a17 + 10) + 121);
    if (v84)
    {
      v83 = v84;
      v29 = a17;
      *a17 = v84;
      *(a17 + 10) += 10;
      v82 = *(a17 + 8);
      goto LABEL_83;
    }

LABEL_86:
    v87 = -1944051702;
LABEL_89:
    *a4 = v87;
    return 0;
  }

  v88 = -1944051702;
LABEL_92:
  *a4 = v88;
  v89 = *(v98 + 8);
  v90 = v68;
LABEL_93:
  heap_Free(v89, v90);
  return 0;
}

uint64_t wparserJparser_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2350915585;
  }

  result = 0;
  *a2 = &IWparserImplJparser;
  return result;
}

uint64_t wparser_impl_jparser_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v12 = 0;
  if (!a5)
  {
    return 2350915591;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v12);
  if ((inited & 0x80000000) == 0)
  {
    log_OutText(*(v12 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjOpen: Begin");
    v9 = heap_Calloc(*(v12 + 8), 1, 88);
    if (v9)
    {
      *v9 = a3;
      v9[1] = a4;
      v10 = v12;
      v9[2] = v12;
      v9[3] = 0;
      v9[5] = "WPARSER_IMPL";
      *a5 = v9;
      *(a5 + 8) = 87652;
      log_OutText(*(v10 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjOpen: End (%x)", inited);
    }

    else
    {
      return 2350915594;
    }
  }

  return inited;
}

uint64_t wparser_impl_jparser_ObjClose(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  v4 = *(a1 + 16);
  log_OutText(*(v4 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjClose : Begin");
  v5 = JpRemove(*(v4 + 8), (a1 + 32));
  if ((v5 & 0x80000000) == 0)
  {
    heap_Free(*(v4 + 8), a1);
    log_OutText(*(v4 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjClose : End (%x)", v5);
  }

  return v5;
}

uint64_t wparser_impl_jparser_ObjReopen(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((v3 & 0x80000000) == 0)
  {
    log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjReopen : Begin");
    log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjReopen : End (%x)", v3);
  }

  return v3;
}

uint64_t wparser_impl_jparser_Init(uint64_t a1, int a2, void *a3, const char *a4, const char *a5, int a6, _BYTE *a7)
{
  v13 = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  *(a1 + 48) = a3;
  if (!strcmp(a5, "win932"))
  {
    *(a1 + 64) = 0;
    *(a1 + 72) = xcode_Utf16leToWin932;
    if (*a7)
    {
      v15 = (*(*a3 + 64))(a3[1], a3[2], a7, a1 + 64);
      if ((v15 & 0x80000000) != 0)
      {
        v14 = v15;
        log_OutPublic(*(*(a1 + 16) + 32), *(a1 + 40), 1819, 0);
        return v14;
      }

      a3 = *(a1 + 48);
    }

    *(a1 + 56) = 0;
    if (strcmp(a4, "null"))
    {
      v16 = (*(*a3 + 64))(a3[1], a3[2], a4, a1 + 56);
      if ((v16 & 0x80000000) != 0)
      {
        v14 = v16;
        log_OutPublic(*(*(a1 + 16) + 32), *(a1 + 40), 1804, "%s%s");
        return v14;
      }

      a3 = *(a1 + 48);
    }

    v14 = JpCreate(*a1, *(a1 + 8), *a3, a3[1], a3[2], *(a3 + 12), *(a3 + 7), (a1 + 32), *(a1 + 40));
    if ((v14 & 0x80000000) == 0)
    {
      *(a1 + 80) = a6;
    }
  }

  else
  {
    log_OutPublic(*(*(a1 + 16) + 32), *(a1 + 40), 1802, "%s%s", a5, " not implemented for jparser");
    return 2350915591;
  }

  return v14;
}

uint64_t wparser_impl_jparser_Normalize(uint64_t a1, int a2, const char *a3, unsigned int a4, unsigned __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int16 a11, _WORD *a12, uint64_t a13, uint64_t *a14, uint64_t a15)
{
  v33 = a5;
  v32 = 0;
  v21 = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

  v22 = 2350915594;
  log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL UTF8: %s", a3);
  v23 = Utf8_Utf8NbrOfSymbols(a3);
  v24 = heap_Calloc(*(*(a1 + 16) + 8), 1, 2 * (v23 + 1));
  if (v24)
  {
    v25 = v24;
    v26 = utf8_Utf8ToUtf16(a3, a4, 0, v24, 2 * v23, &v32, 0);
    if ((v26 & 0x80000000) != 0)
    {
      v28 = 0;
    }

    else
    {
      log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL UTF16: %s", v25);
      v27 = heap_Calloc(*(*(a1 + 16) + 8), 1, 2 * (v32 + 1));
      if (!v27)
      {
        return v22;
      }

      v28 = v27;
      v26 = (*(a1 + 72))(*(a1 + 56), v25, v32, v27, &v33, *(a1 + 64));
      if ((v26 & 0x80000000) == 0)
      {
        v28[v33] = 0;
        log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL WIN932: %s", v28);
        if (v33)
        {
          v26 = JpParse(*(a1 + 32), v28, v33, a6, a7, a8, a9, a10, a11, a12, a14, a15, *(a1 + 80), a3, v25);
        }

        else
        {
          v31 = 0;
          v26 = bed_GetcElem(a8, &v31);
          if ((v26 & 0x80000000) == 0)
          {
            if (!v31 || (v26 = bed_Remove(a8, 0, v31), (v26 & 0x80000000) == 0))
            {
              v30 = utoin_IncrReplaceCurrentRegion(a6, a7, a8, 0, 0);
              v22 = v30 & (v30 >> 31);
LABEL_11:
              heap_Free(*(*(a1 + 16) + 8), v25);
              if (v28)
              {
                heap_Free(*(*(a1 + 16) + 8), v28);
              }

              return v22;
            }
          }
        }
      }
    }

    v22 = v26;
    goto LABEL_11;
  }

  return v22;
}

uint64_t wparser_impl_jparser_Spell(uint64_t a1, int a2, const char *a3, unsigned int a4, __int16 a5, uint64_t a6, int a7, int a8, __int16 a9, uint64_t a10, int a11)
{
  LOWORD(v28) = a5;
  v27 = 0;
  v17 = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  v18 = 2350915594;
  log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL UTF8: %s", a3);
  v19 = Utf8_Utf8NbrOfSymbols(a3);
  v20 = heap_Calloc(*(*(a1 + 16) + 8), 1, 2 * (v19 + 1));
  if (v20)
  {
    v21 = v20;
    v22 = utf8_Utf8ToUtf16(a3, a4, 0, v20, 2 * v19, &v27, 0);
    if ((v22 & 0x80000000) != 0)
    {
      v24 = 0;
    }

    else
    {
      log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL UTF16: %s", v21);
      v23 = heap_Calloc(*(*(a1 + 16) + 8), 1, 2 * (v27 + 1));
      if (!v23)
      {
        return v18;
      }

      v24 = v23;
      v22 = (*(a1 + 72))(*(a1 + 56), v21, v27, v23, &v28, *(a1 + 64));
      if ((v22 & 0x80000000) == 0)
      {
        v24[v28] = 0;
        log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL WIN932: %s", v24);
        LOWORD(v26) = a9;
        v22 = DoJPJSpell(*(a1 + 16), *(a1 + 40), *(a1 + 48), v24, v28, a6, a7, a8, v26, a10, a11);
      }
    }

    v18 = v22;
    heap_Free(*(*(a1 + 16) + 8), v21);
    if (v24)
    {
      heap_Free(*(*(a1 + 16) + 8), v24);
    }
  }

  return v18;
}

uint64_t wparser_impl_jparser_Latin(uint64_t a1, int a2, const char *a3, unsigned int a4, char **a5)
{
  v20 = a4;
  v19 = 0;
  v9 = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  v10 = 2350915594;
  log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL UTF8: %s", a3);
  v11 = heap_Calloc(*(*(a1 + 16) + 8), 1, 2 * a4 + 2);
  if (v11)
  {
    v12 = v11;
    v13 = utf8_Utf8ToUtf16(a3, a4, 0, v11, 2 * a4, &v19, 0);
    if ((v13 & 0x80000000) != 0)
    {
      v15 = 0;
      v10 = v13;
    }

    else
    {
      log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL UTF16: %s", v12);
      v14 = heap_Calloc(*(*(a1 + 16) + 8), 1, 2 * (v19 + 1));
      if (!v14)
      {
        return v10;
      }

      v15 = v14;
      v10 = (*(a1 + 72))(*(a1 + 56), v12, v19, v14, &v20, *(a1 + 64));
      if ((v10 & 0x80000000) == 0)
      {
        v15[v20] = 0;
        log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL WIN932: %s", v15);
        v16 = *(a1 + 48);
        if (*(v16 + 28) == 1)
        {
          v10 = DoJPJLatin(*(a1 + 16), *(a1 + 40), v16, v15, a5);
          if (a5)
          {
            if (*a5)
            {
              v17 = *a3;
              if ((v17 & 0x80000000) == 0)
              {
                **a5 = v17;
              }
            }
          }
        }
      }
    }

    heap_Free(*(*(a1 + 16) + 8), v12);
    if (v15)
    {
      heap_Free(*(*(a1 + 16) + 8), v15);
    }
  }

  return v10;
}

uint64_t get_a_rule(uint64_t a1)
{
  result = 0;
  if ((a1 & 0x8000000000000000) == 0 && a1 < 1)
  {
    return *(&pBG_grammar + a1);
  }

  return result;
}

uint64_t find_grammar_right(uint64_t *a1)
{
  v1 = *a1;
  v2 = (&Sparse_index + 16 * *(*a1 + 16));
  v3 = *v2;
  if (*v2 != -1)
  {
    v4 = 0;
    v5 = v2[1];
    if ((v3 & 0x8000000000000000) == 0 && v3 < 1)
    {
      v4 = *(&pBG_grammar + v3);
    }

    v6 = 3;
    while (1)
    {
      v7 = *(v1 + 8 * --v6);
      v8 = v4[v6];
      if (v7 < v8)
      {
        return -1;
      }

      if (v7 > v8)
      {
        break;
      }

      if (v6 < 2)
      {
        v9 = v3;
LABEL_21:
        *a1 = v4;
        return v9;
      }
    }

    v4 = 0;
    if ((v5 & 0x8000000000000000) == 0 && v5 < 1)
    {
      v4 = *(&pBG_grammar + v5);
    }

    v10 = 3;
    while (1)
    {
      v11 = *(v1 + 8 * --v10);
      v12 = v4[v10];
      if (v11 < v12)
      {
        break;
      }

      if (v11 > v12)
      {
        return -1;
      }

      if (v10 < 2)
      {
        v9 = v5;
        goto LABEL_21;
      }
    }

    v13 = v5 - v3;
    if (v5 - v3 == 1)
    {
      v4 = 0;
      v9 = -1;
    }

    else
    {
      do
      {
        v4 = 0;
        v9 = v3 + v13 / 2;
        if (!v9)
        {
          v4 = &BG_grammar;
        }

        v15 = 3;
        while (1)
        {
          v16 = *(v1 + 8 * --v15);
          v17 = v4[v15];
          if (v16 < v17)
          {
            break;
          }

          if (v16 > v17)
          {
            v3 = v9;
            goto LABEL_32;
          }

          if (v15 < 2)
          {
            goto LABEL_21;
          }
        }

        v5 = v9;
LABEL_32:
        v4 = 0;
        v13 = v5 - v3;
        v9 = -1;
      }

      while (v5 - v3 != 1);
    }

    goto LABEL_21;
  }

  return -1;
}

uint64_t find_next_grammar_right(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 >= a3)
  {
    if ((a3 & 0x8000000000000000) == 0 && a3 < 1)
    {
      v3 = *(&pBG_grammar + a3);
      if (v3)
      {
        v4 = 3;
        while (1)
        {
          --v4;
          if (*(*a1 + 8 * v4) != *(v3 + 8 * v4))
          {
            break;
          }

          if (v4 < 2)
          {
            *a1 = v3;
            return a3 - 1;
          }
        }
      }
    }

    a3 = a2 + 1;
  }

  v5 = -1;
  if ((a3 & 0x8000000000000000) == 0 && a3 < 1)
  {
    v6 = *(&pBG_grammar + a3);
    if (v6)
    {
      v7 = 3;
      while (1)
      {
        --v7;
        if (*(*a1 + 8 * v7) != *(v6 + 8 * v7))
        {
          break;
        }

        if (v7 < 2)
        {
          *a1 = v6;
          return a3 + 1;
        }
      }
    }

    return -1;
  }

  return v5;
}

uint64_t get_me_terminal(uint64_t a1)
{
  v1 = 1;
  for (i = &pBG_terminal_line; **i != a1; ++i)
  {
    if (!--v1)
    {
      return -1;
    }
  }

  return *(*i + 8);
}

uint64_t mbs_copy(uint64_t a1, void *a2, int a3, int a4, void *a5)
{
  v7 = 2350915594;
  if (a4 < 1)
  {
    if (!a4 || *a1)
    {
      v13 = (a1 + 8);
LABEL_11:
      v7 = 0;
      *v13 = a4;
    }
  }

  else
  {
    v10 = 4 * a4;
    v11 = heap_Calloc(a5, 1, (4 * a4));
    *a1 = v11;
    if (v11)
    {
      v12 = 0;
      *(a1 + 8) = a4;
      v13 = (a1 + 8);
      v14 = 4 * a3;
      if (v10 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v10;
      }

      do
      {
        *(*a1 + v12++) = *(*a2 + v14++);
      }

      while (v15 != v12);
      goto LABEL_11;
    }
  }

  return v7;
}

uint64_t mbs_create(uint64_t a1, int a2, const char *a3, void *a4)
{
  v5 = a3;
  v8 = 2350915591;
  if (a3)
  {
    a2 = sjis_len(a3);
    if (a2 == -1)
    {
      return v8;
    }
  }

  if (a2 > 0)
  {
    v9 = heap_Calloc(a4, 1, (4 * a2));
    *a1 = v9;
    goto LABEL_6;
  }

  v9 = *a1;
  if (a2)
  {
LABEL_6:
    if (!v9)
    {
      return 2350915594;
    }
  }

  *(a1 + 8) = a2;
  if (v5)
  {
    v10 = strlen(v5);
    if (v10 >= 1)
    {
      v11 = 0;
      v12 = 1;
      do
      {
        v13 = *v5;
        if (v12 == 1)
        {
          v14 = 4 * v11;
          *(*a1 + v14) = 1;
          v15 = (v13 - 224) >= 0x1D && (v13 - 129) >= 0x1F;
          *(*a1 + v14 + 1) = v13;
          ++v11;
          if (v15)
          {
            v12 = 1;
          }

          else
          {
            v12 = 2;
          }
        }

        else
        {
          *(*a1 + 4 * v11 - 4) = 2;
          *(*a1 + 4 * v11 - 2) = v13;
          v12 = 1;
        }

        ++v5;
        --v10;
      }

      while (v10);
    }
  }

  return 0;
}

uint64_t mbs_compare(uint64_t *a1, uint64_t a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    v4 = *(a1 + 2);
    v5 = *(a2 + 8);
    if (v4 > v5)
    {
      return 1;
    }

    if (v4 >= v5)
    {
      if (v4 >= 1)
      {
        v6 = 0;
        v7 = *a1;
        v8 = *a2 + 1;
        for (i = (v7 + 1); ; i += 4)
        {
          v10 = *(v7 + 4 * v6);
          v11 = *(*a2 + 4 * v6);
          if (v10 > v11)
          {
            break;
          }

          if (v10 < v11)
          {
            return 0xFFFFFFFFLL;
          }

          v12 = i;
          v13 = v8;
          if (v10 >= 1)
          {
            do
            {
              v15 = *v12++;
              v14 = v15;
              v16 = *v13++;
              v17 = v14 < v16;
              if (v14 > v16)
              {
                return 1;
              }

              if (v17)
              {
                return 0xFFFFFFFFLL;
              }
            }

            while (--v10);
          }

          result = 0;
          ++v6;
          v8 += 4;
          if (v6 == v4)
          {
            return result;
          }
        }

        return 1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t *mbs_free(uint64_t *result, void *a2)
{
  if (*result)
  {
    return heap_Free(a2, *result);
  }

  return result;
}

uint64_t log_mbs_fput_sjis(uint64_t a1, int *a2)
{
  if (a2[2] < 1)
  {
    return 0;
  }

  v12 = v2;
  v13 = v3;
  v6 = 0;
  v7 = 1;
  do
  {
    v8 = *a2;
    if (*(*a2 + 4 * v6) < 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = 0;
      do
      {
        __s[v9] = *(v8 + v7 + v9);
        ++v9;
      }

      while (v9 < *(v8 + 4 * v6));
    }

    __s[v9] = 0;
    result = ssftstring_AppendCStr(a1, __s);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    ++v6;
    v7 += 4;
  }

  while (v6 < a2[2]);
  return result;
}

uint64_t sjis_len(const char *a1)
{
  v1 = a1;
  v2 = strlen(a1);
  if (v2 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 1;
  do
  {
    if (v4 == 1)
    {
      v5 = *v1;
      v6 = (v5 - 224) >= 0x1D && (v5 - 129) >= 0x1F;
      v3 = (v3 + 1);
      if (v6)
      {
        v4 = 1;
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 1;
    }

    ++v1;
    --v2;
  }

  while (v2);
  return v3;
}

unint64_t mbs_len_bytes(unint64_t result)
{
  v1 = *(result + 8);
  if (v1 < 1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = *v2;
  do
  {
    v4 = *v3;
    v3 += 4;
    result = (result + v4);
    --v1;
  }

  while (v1);
  return result;
}

uint64_t mbs_add_str(uint64_t a1, uint64_t a2, int a3, unsigned int a4, char a5, uint64_t *a6)
{
  v6 = 2350915591;
  if (a3 < 0 || *(a2 + 8) < (a4 + a3))
  {
    return v6;
  }

  v12 = *(a1 + 8);
  if (!v12)
  {
    v14 = 4 * a4;
    v13 = heap_Alloc(a6, v14);
    *a1 = v13;
    if (v13)
    {
      goto LABEL_7;
    }

    return 2350915594;
  }

  v13 = heap_Realloc(a6, *a1, 4 * (v12 + a4));
  if (!v13)
  {
    return 2350915594;
  }

  *a1 = v13;
  v14 = 4 * a4;
LABEL_7:
  memcpy((v13 + 4 * v12), (*a2 + (4 * a3)), v14);
  if (a4 >= 1)
  {
    v15 = a4;
    v16 = 4 * v12 + 3;
    do
    {
      *(*a1 + v16) = a5;
      v16 += 4;
      --v15;
    }

    while (v15);
  }

  v6 = 0;
  *(a1 + 8) += a4;
  return v6;
}

uint64_t mbs2sjis(uint64_t a1, int a2, int a3, uint64_t a4, int a5)
{
  v5 = a3 + a2;
  if (*(a1 + 8) < a3 + a2)
  {
    return -1;
  }

  if (a3 >= 1)
  {
    v6 = 0;
    v7 = 4 * a2;
    v8 = v7 | 1;
    while (1)
    {
      v9 = *(*a1 + v7);
      v10 = v8;
      if (v9 >= 1)
      {
        break;
      }

LABEL_8:
      ++a2;
      v7 += 4;
      v8 += 4;
      if (a2 >= v5)
      {
        goto LABEL_11;
      }
    }

    while (1)
    {
      *(a4 + v6++) = *(*a1 + v10);
      if (a5 < v6)
      {
        return -1;
      }

      ++v10;
      if (!--v9)
      {
        goto LABEL_8;
      }
    }
  }

  v6 = 0;
LABEL_11:
  *(a4 + v6) = 0;
  return v6;
}

uint64_t compare_tag(uint64_t a1, int a2, char *__s)
{
  v3 = __s;
  v6 = strlen(__s);
  if (v6 + a2 > *(a1 + 8))
  {
    return 0;
  }

  if (v6 >= 1)
  {
    v8 = v6 & 0x7FFFFFFF;
    for (i = (*a1 + 4 * a2 + 1); *(i - 1) == 1 && *i == *v3; i += 4)
    {
      ++v3;
      if (!--v8)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t *attribute_copy_one(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = heap_Alloc(a2, 24);
  if (v4)
  {
    v5 = strlen(*a1);
    v6 = heap_Alloc(a2, (v5 + 1));
    *v4 = v6;
    if (v6)
    {
      strcpy(v6, *a1);
      v7 = strlen(*(a1 + 8));
      v8 = heap_Alloc(a2, (v7 + 1));
      v4[1] = v8;
      if (v8)
      {
        strcpy(v8, *(a1 + 8));
        v4[2] = *(a1 + 16);
        return v4;
      }

      heap_Free(a2, *v4);
    }

    heap_Free(a2, v4);
    return 0;
  }

  return v4;
}

uint64_t *attribute_copy_all(uint64_t *result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    v6 = 1;
    while (1)
    {
      result = attribute_copy_one(v3, a2);
      if (!result)
      {
        break;
      }

      v7 = result;
      result[2] = 0;
      if ((v6 & 1) == 0)
      {
        v4[2] = result;
        result = v5;
      }

      v6 = 0;
      v3 = v3[2];
      v4 = v7;
      v5 = result;
      if (!v3)
      {
        return result;
      }
    }

    attribute_free_all(v5, a2);
    return 0;
  }

  return result;
}

uint64_t *attribute_free_all(uint64_t *result, void *a2)
{
  if (result)
  {
    v3 = result;
    if (*result)
    {
      heap_Free(a2, *result);
    }

    v4 = v3[1];
    if (v4)
    {
      heap_Free(a2, v4);
    }

    attribute_free_all(v3[2], a2);

    return heap_Free(a2, v3);
  }

  return result;
}

_BYTE *is_internal(uint64_t a1)
{
  result = get_pointer_of_symbol(&SF_symbol_file, a1);
  if (result)
  {
    return (*result == 95 && result[1] == 73);
  }

  return result;
}

uint64_t exist_symbol(uint64_t a1, uint64_t a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  v10[1] = *(a2 + 48);
  if (*(a2 + 32) == 2)
  {
    v3 = 0;
    v4 = *(a2 + 40);
  }

  else
  {
    v4 = 0;
    v3 = 1;
  }

  v10[0] = v4;
  v5 = a2 + 12;
  while (1)
  {
    v6 = v3;
    v7 = v10[v3];
    pointer_of_symbol = get_pointer_of_symbol(&SF_symbol_file, *v7);
    if (!pointer_of_symbol || *pointer_of_symbol != 95 || pointer_of_symbol[1] != 73)
    {
      break;
    }

    if (exist_symbol(a1, v7))
    {
      return 1;
    }

LABEL_13:
    v3 = 1;
    if (v6)
    {
      return 0;
    }
  }

  if (*a1 != *v7 || *(a1 + 8) != *(v5 + 4 * v6))
  {
    goto LABEL_13;
  }

  return 1;
}

uint64_t find_attribute(uint64_t a1, uint64_t a2, void *a3)
{
  v14[2] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  v14[1] = *(a2 + 48);
  if (*(a2 + 32) == 2)
  {
    v5 = 0;
    v6 = *(a2 + 40);
  }

  else
  {
    v6 = 0;
    v5 = 1;
  }

  v14[0] = v6;
  v7 = a2 + 12;
  while (1)
  {
    v8 = v5;
    v9 = v14[v5];
    pointer_of_symbol = get_pointer_of_symbol(&SF_symbol_file, *v9);
    if (pointer_of_symbol && *pointer_of_symbol == 95 && pointer_of_symbol[1] == 73)
    {
      result = find_attribute(a1, v9, a3);
      if (result == 1)
      {
        return result;
      }

      goto LABEL_17;
    }

    if (*a1 == *v9 && *(a1 + 8) == *(v7 + 4 * v8))
    {
      v12 = v9[3];
      if (v12)
      {
        break;
      }
    }

LABEL_17:
    v5 = 1;
    if (v8)
    {
      return 0;
    }
  }

  v13 = *(a1 + 16);
  while (strcmp(*v12, v13))
  {
    v12 = *(v12 + 16);
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  *a3 = *(v12 + 8);
  return 1;
}

uint64_t get_attribute(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  if (find_attribute(a1, a2, &v5) == 1)
  {
    return v5;
  }

  if (strcmp(*(a1 + 16), "POS"))
  {
    return 0;
  }

  v4 = *a1;

  return get_pointer_of_symbol(&SF_symbol_file, v4);
}

BOOL compare_operand(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  attribute = *(a2 + 8);
  if (!*a2)
  {
    attribute = get_attribute(*(a2 + 8), a4);
  }

  v8 = *(a3 + 8);
  if (!*a3)
  {
    v8 = get_attribute(*(a3 + 8), a4);
  }

  if (attribute)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    return 0;
  }

  v10 = strcmp(attribute, v8);
  result = v10 == 0;
  if (a1 != 2)
  {
    v12 = v10 != 0;
    return a1 == 3 && v12;
  }

  return result;
}

uint64_t eval_cond(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 1;
  }

  v3 = a1;
  while (1)
  {
    v4 = *v3;
    if (*v3 != 1)
    {
      break;
    }

    if (!eval_cond(*(v3 + 8), a2))
    {
      v3 = *(v3 + 16);
      if (v3)
      {
        continue;
      }
    }

    return 1;
  }

  if ((v4 - 2) >= 2)
  {
    if (v4)
    {
      if (v4 == 4)
      {
        v5 = *(v3 + 8);

        return exist_symbol(v5, a2);
      }

      return 0;
    }

    return eval_cond(*(v3 + 8), a2) && eval_cond(*(v3 + 16), a2);
  }

  v7 = *(v3 + 8);
  v8 = *(v3 + 16);

  return compare_operand(v4, v7, v8, a2);
}

uint64_t assign_attribute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  attribute = *(a2 + 8);
  if (*a2 || (attribute = get_attribute(*(a2 + 8), a3)) != 0)
  {
    v8 = *(a3 + 24);
    if (v8)
    {
      v9 = *(*(a1 + 8) + 16);
      while (1)
      {
        v10 = v8;
        v8 = *(v8 + 16);
        v11 = strcmp(*v10, v9);
        if (!v8)
        {
          break;
        }

        if (!v11)
        {
          goto LABEL_13;
        }
      }

      if (!v11)
      {
LABEL_13:
        *v10 = v9;
        *(v10 + 8) = attribute;
        return 1;
      }

      result = heap_Alloc(a4, 24);
      if (!result)
      {
        return result;
      }

      *result = *(*(a1 + 8) + 16);
      *(result + 8) = attribute;
      *(result + 16) = 0;
      *(v10 + 16) = result;
    }

    else
    {
      result = heap_Alloc(a4, 24);
      if (!result)
      {
        return result;
      }

      *result = *(*(a1 + 8) + 16);
      *(result + 8) = attribute;
      *(result + 16) = 0;
      *(a3 + 24) = result;
    }
  }

  return 1;
}

uint64_t exec_actions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 1;
  }

  v5 = a1;
  while (1)
  {
    if (*v5 == 1)
    {
      v7 = *(v5 + 8);
      if (*v7 && !eval_cond(*v7, a2))
      {
        v8 = v7[2];
      }

      else
      {
        v8 = v7[1];
      }

      result = exec_actions(v8, a2, a3);
      if (!result)
      {
        return result;
      }

      goto LABEL_12;
    }

    if (*v5)
    {
      return 0;
    }

    result = assign_attribute(**(v5 + 8), *(*(v5 + 8) + 8), a2, a3);
    if (!result)
    {
      return result;
    }

LABEL_12:
    v5 = *(v5 + 16);
    if (!v5)
    {
      return 1;
    }
  }
}

BOOL compare_attribute(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  if (!a1 || !a2)
  {
    return (v3 | v2) == 0;
  }

  while (!strcmp(*v3, *v2) && !strcmp(*(v3 + 8), *(v2 + 8)))
  {
    v3 = *(v3 + 16);
    v2 = *(v2 + 16);
    if (!v3 || !v2)
    {
      return (v3 | v2) == 0;
    }
  }

  return 0;
}

uint64_t log_output_attribute(uint64_t a1, uint64_t a2)
{
  result = ssftstring_AppendCStr(a1, "{");
  if ((result & 0x80000000) == 0)
  {
    if (a2)
    {
      v5 = 0;
      while (1)
      {
        if (v5)
        {
          result = ssftstring_AppendCStr(a1, ",");
          if ((result & 0x80000000) != 0)
          {
            break;
          }
        }

        result = ssftstring_AppendCStr(a1, *a2);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = ssftstring_AppendCStr(a1, "=");
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = ssftstring_AppendCStr(a1, *(a2 + 8));
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = ssftstring_AppendCStr(a1, " ");
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        a2 = *(a2 + 16);
        v5 = 1;
        if (!a2)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:

      return ssftstring_AppendCStr(a1, "}");
    }
  }

  return result;
}

uint64_t box_hash_get_address(int a1, int a2)
{
  v2 = 20 * (a1 % 200);
  if ((a2 / 20))
  {
    return (v2 + 20 * (a2 / 20) - a2 + 19);
  }

  else
  {
    return (v2 + a2 % 20);
  }
}

uint64_t box_hash_get_leading_word(void *a1, int a2, int a3, int a4)
{
  v4 = *(*a1 + 8 * a4);
  if (!v4)
  {
    return 0;
  }

  while (*(v4 + 10) != a3 || *(v4 + 8) != a2)
  {
    v4 = *(v4 + 16);
    if (!v4)
    {
      return 0;
    }
  }

  return *v4;
}

uint64_t *box_one_free_all(uint64_t *result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = *result;
    if (v4)
    {
      do
      {
        v5 = *(v4 + 24);
        word_data_free_all(v4, a2);
        v4 = v5;
      }

      while (v5);
    }

    return heap_Free(a2, v3);
  }

  return result;
}

uint64_t *box_hash_free(void *a1, void *a2)
{
  for (i = 0; i != 4000; ++i)
  {
    result = *(*a1 + 8 * i);
    if (result)
    {
      do
      {
        v6 = result[2];
        box_one_free_all(result, a2);
        result = v6;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t box_hash_set_unknown(uint64_t *a1, unsigned int a2, char *__b)
{
  if (a2 >= 1)
  {
    memset_pattern16(__b, &unk_1C37BE170, 4 * a2);
  }

  v5 = *(a1 + 2);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = *a1;
    do
    {
      v8 = *(v7 + 8 * v6);
      if (v8)
      {
        do
        {
          if (*v8)
          {
            v9 = *(v8 + 10);
            if ((v9 & 0x8000000000000000) == 0)
            {
              bzero(&__b[4 * *(v8 + 8)], 4 * v9 + 4);
            }
          }

          v8 = *(v8 + 16);
        }

        while (v8);
        v5 = *(a1 + 2);
      }

      ++v6;
    }

    while (v6 < v5);
  }

  return 1;
}

uint64_t box_hash_add_word(void *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v7 = a4;
  v8 = a3;
  v11 = *(*a1 + 8 * a5);
  if (v11)
  {
    while (1)
    {
      v12 = v11;
      if (*(v11 + 10) == a4 && *(v11 + 8) == a3)
      {
        break;
      }

      v11 = *(v11 + 16);
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    result = v11;
    goto LABEL_13;
  }

  v12 = 0;
LABEL_7:
  result = heap_Alloc(a6, 24);
  if (result)
  {
    *(result + 8) = v8;
    *(result + 10) = v7;
    *(result + 12) = 0;
    *result = 0;
    *(result + 16) = 0;
    if (v12)
    {
      v14 = (v12 + 16);
    }

    else
    {
      v14 = (*a1 + 8 * a5);
    }

    *v14 = result;
LABEL_13:
    v15 = 0;
    v16 = result;
    do
    {
      v17 = v15;
      v15 = *v16;
      v16 = (*v16 + 24);
    }

    while (v15);
    v18 = (v17 + 24);
    if (!v17)
    {
      v18 = result;
    }

    *v18 = a2;
    return 1;
  }

  return result;
}

uint64_t add_info_to_table(uint64_t a1, int a2, int a3, uint64_t **a4, void *a5, uint64_t *a6, uint64_t a7, void *a8)
{
  v26 = *MEMORY[0x1E69E9840];
  if (mbs2sjis(*(*(a1 + 16) + 8), 0, *(*(*(a1 + 16) + 8) + 8), __s1, 64) == -1)
  {
    return 0;
  }

  number_of_symbol = get_number_of_symbol(a4, __s1);
  if (number_of_symbol == -1)
  {
    free_information(a1, a8);
    attribute_free_all(a6, a8);
    return 1;
  }

  v17 = number_of_symbol;
  address = box_hash_get_address(a2, a3);
  if (*(a7 + 40) == 1)
  {
    leading_word = box_hash_get_leading_word(a5, a2, a3, address);
    if (leading_word)
    {
      v20 = leading_word;
      while (mbs_compare(*(a1 + 8), *(*v20 + 8)) || mbs_compare(*(*(a1 + 16) + 8), *(*(*v20 + 16) + 8)) || !compare_attribute(a6, v20[2]))
      {
        v20 = v20[3];
        if (!v20)
        {
          goto LABEL_10;
        }
      }

      *(a1 + 24) = 0;
      v23 = *v20;
      for (i = *(*v20 + 24); i; i = *(i + 24))
      {
        v23 = i;
      }

      *(v23 + 24) = a1;
      return 1;
    }
  }

LABEL_10:
  result = heap_Alloc(a8, 32);
  if (result)
  {
    v22 = result;
    *result = a1;
    *(result + 8) = v17;
    *(result + 16) = a6;
    *(result + 24) = 0;
    result = box_hash_add_word(a5, result, a2, a3, address, a8);
    if (result != 1)
    {
      heap_Free(a8, v22);
      return 0;
    }
  }

  return result;
}

uint64_t get_char_kind(uint64_t a1, int a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = mbs2sjis(a1, a2, 1, v3, 256);
  if (result != -1)
  {
    return get_char_kind_hash(v3[0], v3[1]);
  }

  return result;
}

uint64_t *unknown_info_create(const char *a1, const char *a2, const char *a3, const char *a4, void *a5)
{
  info = create_info(0, a1, a5);
  if (info)
  {
    v10 = create_info(1, a2, a5);
    info[2] = v10;
    if (v10 && (v11 = v10, *(v10 + 16) = 0, v12 = create_info(2, a3, a5), (*(v11 + 16) = v12) != 0) && (v13 = v12, *(v12 + 16) = 0, v14 = create_info(3, a4, a5), (*(v13 + 16) = v14) != 0))
    {
      *(v14 + 16) = 0;
    }

    else
    {
      free_information(info, a5);
      return 0;
    }
  }

  return info;
}

_BYTE *get_pron_from_grapheme(uint64_t a1, int a2, int a3, int a4, void *a5)
{
  v5 = a3 - a2;
  if (a3 < a2)
  {
    return 0;
  }

  v10 = v5 + 1;
  v11 = heap_Alloc(a5, (2 * (v5 + 1)) | 1u);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = 8 * v10;
  if (a4 == 3)
  {
    v14 = v13 | 2u;
  }

  else
  {
    v14 = v13 | 1u;
  }

  v15 = heap_Alloc(a5, v14);
  if (v15)
  {
    if (mbs2sjis(a1, a2, v10, v12, (2 * v10) | 1u) != -1)
    {
      v24 = 0;
      *v15 = 0;
      if (*v12)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = v12;
        do
        {
          get_pron_from_grapheme_hash(v21, &v15[v19], &v24 + 1, &v24, a4);
          if (HIDWORD(v24))
          {
            v20 += HIDWORD(v24);
            v19 += v24;
            v16 = v17;
            v17 = v18;
            v18 = v19;
          }

          v21 = &v12[v20];
        }

        while (*v21);
        if (a4 == 3 && v16 >= 1)
        {
          if (v19 >= v16)
          {
            do
            {
              v15[v19 + 1] = v15[v19];
            }

            while (v19-- > v16);
          }

          v15[v16] = 39;
        }
      }

      goto LABEL_19;
    }

    heap_Free(a5, v15);
    heap_Free(a5, v12);
    return 0;
  }

LABEL_19:
  heap_Free(a5, v12);
  return v15;
}

uint64_t non_lookup_tag(uint64_t a1, int a2, int a3, const char *a4, const char *a5, uint64_t **a6, void *a7, uint64_t a8, void *a9)
{
  v9 = a3 - a2;
  if (a3 < a2)
  {
    return 0;
  }

  result = heap_Alloc(a9, (2 * (v9 + 1)) | 1u);
  if (result)
  {
    v16 = result;
    if (mbs2sjis(a1, a2, v9 + 1, result, (2 * (v9 + 1)) | 1u) == -1)
    {
      heap_Free(a9, v16);
    }

    else
    {
      v17 = unknown_info_create(v16, a4, a5, "922", a9);
      heap_Free(a9, v16);
      if (v17)
      {
        if (*(a8 + 68))
        {
          v18 = a2 + 1;
        }

        else
        {
          v18 = a2;
        }

        if (add_info_to_table(v17, v18, v9, a6, a7, 0, a8, a9))
        {
          return 1;
        }

        free_information(v17, a9);
      }
    }

    return 0;
  }

  return result;
}

uint64_t look_up_unknown_word(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t *a4, void *a5)
{
  v10 = *(a1 + 8);
  if (*(a2 + 68))
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = v10;
  }

  v12 = heap_Calloc(a5, v11, 4);
  if (v12 && box_hash_set_unknown(a4, v11, v12))
  {
    if (v11 >= 1)
    {
      v13 = 0;
      v14 = 0;
      v15 = (v11 - 1);
      do
      {
        if (v13 == v15)
        {
          v16 = *&v12[4 * v15];
        }

        else
        {
          v16 = *&v12[4 * v13];
          if (*&v12[4 * v13 + 4] == v16)
          {
            ++v13;
            continue;
          }
        }

        if (v16 == 1 && !non_lookup_tag(a1, v14 - (*(a2 + 68) != 0), v13 - (*(a2 + 68) != 0), (a2 + 136), (a2 + 200), a3, a4, a2, a5))
        {
          goto LABEL_17;
        }

        v14 = ++v13;
      }

      while (v13 != v11);
    }

    v17 = 1;
  }

  else
  {
LABEL_17:
    v17 = 0;
  }

  heap_Free(a5, v12);
  return v17;
}

uint64_t mbs_normalize(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    result = 1;
    if (v2 >= 1)
    {
      while (1)
      {
        v3 = v2 - 1;
        v4 = (*v1 + (4 * (v2 - 1)));
        v5 = v4[1];
        if (*v4 == 1)
        {
          if ((v5 & 0xFE) == 0xDE)
          {
            if (v5 == 222)
            {
              v6 = Norm_in1;
            }

            else
            {
              v6 = &Norm_in2;
            }

            if (v5 == 222)
            {
              v7 = &Norm_out1;
            }

            else
            {
              v7 = Norm_out2;
            }

            if (v2 == 1)
            {
              return 1;
            }

            if (*(v4 - 4) == 1)
            {
              v8 = **v6;
              if (**v6)
              {
                v9 = v6 + 1;
                while (v8 != *(v4 - 3))
                {
                  v10 = *v9++;
                  v8 = *v10;
                  ++v7;
                  if (!*v10)
                  {
                    goto LABEL_50;
                  }
                }

LABEL_47:
                *v4 = 0;
                *(v4 - 4) = 2;
                v21 = *v7;
                *(v4 - 3) = **v7;
                *(v4 - 2) = v21[1];
                v3 = v2 - 2;
              }
            }
          }

          else if ((v5 - 166) <= 0x37)
          {
            v19 = 0;
            v20 = 177;
            while (v20 != v5)
            {
              v20 = *Norm_in3[++v19];
              if (v19 == 56)
              {
                goto LABEL_50;
              }
            }

            *v4 = 2;
            v22 = Norm_out3[v19];
            v4[1] = *v22;
            v4[2] = v22[1];
          }
        }

        else
        {
          v11 = v4[2];
          if (v5 == 129 && (v11 & 0xFE) == 0x4A)
          {
            if (v11 == 74)
            {
              v12 = Norm_in4;
            }

            else
            {
              v12 = Norm_in5;
            }

            if (v11 == 74)
            {
              v7 = &Norm_out4;
            }

            else
            {
              v7 = Norm_out5;
            }

            if (v2 == 1)
            {
              return 1;
            }

            if (*(v4 - 4) == 2)
            {
              v13 = *v12;
              v14 = **v12;
              if (**v12)
              {
                v15 = v12 + 1;
                while (v14 != *(v4 - 3) || v13[1] != *(v4 - 2))
                {
                  v16 = *v15++;
                  v13 = v16;
                  v14 = *v16;
                  ++v7;
                  if (!*v16)
                  {
                    goto LABEL_50;
                  }
                }

                goto LABEL_47;
              }
            }
          }

          else if (v5 == 130 && (v11 - 96) <= 0x3A)
          {
            v17 = &Norm_in6;
            for (i = Norm_out6; ; ++i)
            {
              if (**v17 == 130)
              {
                if ((*v17)[1] == v11)
                {
                  *v4 = 1;
                  v4[1] = **i;
                  break;
                }
              }

              else if (!**v17)
              {
                break;
              }

              ++v17;
            }
          }
        }

LABEL_50:
        v2 = v3;
        if (v3 <= 0)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

void *modify_comma(char *a1, unsigned int a2, void *a3)
{
  v4 = a2;
  v6 = a2;
  result = heap_Alloc(a3, a2);
  if (result)
  {
    v8 = result;
    memcpy(result, a1, v6);
    if (v4 >= 1)
    {
      v9 = 0;
      v10 = a1 + 1;
      v11 = -1;
      do
      {
        if (v11 >= 4uLL)
        {
          v12 = 4;
        }

        else
        {
          v12 = v11;
        }

        if (v11 >= 4)
        {
          v13 = 4;
        }

        else
        {
          v13 = v11;
        }

        if (!a1[v9])
        {
          if (v9)
          {
            v14 = 0;
            v15 = v12 + 1;
            v16 = v13 + 1;
            v17 = v11;
            while (a1[v17] == 1)
            {
              ++v14;
              --v17;
              if (v15 == v14)
              {
                v18 = v14 + 1;
                goto LABEL_18;
              }
            }

            v18 = v14 + 1;
            v16 = v14;
LABEL_18:
            v19 = v18;
          }

          else
          {
            v16 = 0;
            v17 = -1;
            v19 = 1;
          }

          v20 = 1;
          v21 = v10;
          while (1)
          {
            if (v4 == v20)
            {
              v22 = v4 - 1;
              goto LABEL_26;
            }

            if (*v21 != 1)
            {
              break;
            }

            ++v21;
            if (++v20 == 6)
            {
              v22 = 5;
              goto LABEL_26;
            }
          }

          v22 = v20 - 1;
LABEL_26:
          if (v16 <= 4 && (v16 > 2 || v16 && (v17 < 0 || v9 == v19 || (v24 = &a1[v17], *v24) || *(v24 - 1) != 1)) && (v22 - 3) < 2)
          {
            v23 = 1;
          }

          else
          {
            v23 = -1;
          }

          *(v8 + v9) = v23;
        }

        ++v9;
        ++v11;
        ++v10;
        --v4;
      }

      while (v9 != v6);
    }

    memcpy(a1, v8, v6);

    return heap_Free(a3, v8);
  }

  return result;
}

uint64_t mark_tag_state(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (v3 < 1)
  {
    return 1;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 36;
  do
  {
    v9 = v7;
    if (v8 == 36 || v8 == 33)
    {
      v7 += 4;
      if (v7 <= v3 && compare_tag(a1, v9, START_TAG_SAPI_PRN) == 1)
      {
        v10 = (a2 + v9);
        v8 = 34;
        *v10 = 34;
        v11 = v10 + 1;
        v12 = v9 + 2;
        if (v7 > v9 + 2)
        {
          v12 = v7;
        }

        memset(v11, 35, (v12 - v9 - 2) + 1);
        v5 = 1;
        goto LABEL_13;
      }

      if (mbs_one_char(a1, v9) == 30)
      {
        v7 = v9 + 1;
        v8 = 34;
        *(a2 + v9) = 34;
LABEL_13:
        v6 = v9;
        goto LABEL_23;
      }

      v8 = 33;
    }

    else
    {
      if (v5 == 1)
      {
        v7 += 4;
        if (v7 <= v3 && compare_tag(a1, v9, END_TAG_SAPI_PRN) == 1)
        {
          v5 = 0;
          *(a2 + v9) = 606282531;
          v8 = 36;
          goto LABEL_23;
        }
      }

      if (mbs_one_char(a1, v9) == 31)
      {
        v7 = v9 + 1;
        v8 = 36;
        *(a2 + v9) = 36;
        goto LABEL_23;
      }

      v8 = 35;
    }

    *(a2 + v9) = v8;
    v7 = v9 + 1;
LABEL_23:
    v3 = *(a1 + 8);
  }

  while (v7 < v3);
  result = 1;
  if ((v8 & 0xFFFFFFFE) == 0x22 && v6 < v7)
  {
    memset((a2 + v6), 33, (v7 + ~v6) + 1);
    return 1;
  }

  return result;
}

uint64_t look_up_dictionary(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t **a5, uint64_t *pron_from_grapheme, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int16 a10, uint64_t a11, uint64_t a12, int a13, _DWORD *a14)
{
  v18 = a14;
  v196 = *MEMORY[0x1E69E9840];
  v188[0] = 0;
  v188[1] = 0;
  v187 = 0;
  v186 = 0;
  v184 = 0;
  v185 = 0;
  __s1 = marker_getMarkerArgStr(1u);
  v182 = *(a8 + 184);
  v183 = *(a8 + 192);
  LOWORD(v184) = *(a8 + 208);
  HIDWORD(v184) = *(a8 + 212);
  bzero(v189, 0x3C0uLL);
  v19 = heap_Alloc(*(a8 + 24), 1024);
  v20 = heap_Alloc(*(a8 + 24), 1025);
  v21 = heap_Alloc(*(a8 + 24), 1025);
  v22 = 0;
  v23 = 0;
  v181 = v21;
  if (!v19 || !v20)
  {
    LODWORD(pron_from_grapheme) = 0;
    v24 = 0;
    v25 = 0;
    goto LABEL_225;
  }

  v171 = a5;
  v172 = pron_from_grapheme;
  LODWORD(pron_from_grapheme) = 0;
  v24 = 0;
  v25 = 0;
  if (v21)
  {
    v179 = v20;
    for (i = 0; i != 120; ++i)
    {
      v27 = heap_Alloc(*(a8 + 24), 80);
      v189[i] = v27;
      if (!v27)
      {
        v23 = 0;
        LODWORD(pron_from_grapheme) = 0;
        v22 = 0;
        v24 = 0;
        v25 = 0;
        goto LABEL_225;
      }
    }

    v28 = heap_Alloc(*(a8 + 24), *(a2 + 8));
    v24 = heap_Alloc(*(a8 + 24), *(a2 + 8));
    v29 = heap_Alloc(*(a8 + 24), *(a2 + 8));
    v25 = v28;
    v22 = v29;
    v23 = 0;
    if (!v28)
    {
      LODWORD(pron_from_grapheme) = 0;
      goto LABEL_225;
    }

    if (!v24 || !v29)
    {
      LODWORD(pron_from_grapheme) = 0;
      goto LABEL_225;
    }

    v167 = v28;
    if (!mark_tag_state(a2, v28))
    {
      v23 = 0;
      goto LABEL_25;
    }

    v164 = (a3 + 68);
    if (*(a3 + 68))
    {
      info = create_info(0, "", *(a8 + 24));
      if (info)
      {
        v31 = info;
        v32 = create_info(1, v164, *(a8 + 24));
        pron_from_grapheme = v32;
        v31[2] = v32;
        if (!v32)
        {
          free_information(v31, *(a8 + 24));
          v23 = 0;
          goto LABEL_210;
        }

        v161 = v19;
        *(v32 + 16) = 0;
        v33 = create_info(2, " ", *(a8 + 24));
        pron_from_grapheme[2] = v33;
        if (!v33 || (v34 = v33, *(v33 + 16) = 0, v35 = create_info(3, "0", *(a8 + 24)), (*(v34 + 16) = v35) == 0))
        {
          free_information(v31, *(a8 + 24));
          v23 = 0;
          LODWORD(pron_from_grapheme) = 0;
          goto LABEL_209;
        }

        *(v35 + 16) = 0;
        v19 = v161;
        if (add_info_to_table(v31, 0, 0, v171, v172, 0, a3, *(a8 + 24)))
        {
          goto LABEL_17;
        }

        free_information(v31, *(a8 + 24));
      }

      v23 = 0;
      LODWORD(pron_from_grapheme) = 0;
      goto LABEL_210;
    }

LABEL_17:
    LODWORD(v36) = *(a2 + 8);
    if (v36 < 1)
    {
      v20 = v179;
    }

    else
    {
      v37 = 0;
      v20 = v179;
      do
      {
        *(v24 + v37) = 0;
        *(v22 + v37++) = 0;
        v36 = *(a2 + 8);
      }

      while (v37 < v36);
    }

    if (*(a3 + 132) != 1)
    {
      v23 = 0;
      goto LABEL_68;
    }

    v23 = heap_Alloc(*(a8 + 24), v36);
    if (v23)
    {
      LODWORD(v38) = *(a2 + 8);
      v39 = v167;
      if (v38 >= 1)
      {
        v40 = 0;
        do
        {
          if (*(v39 + v40) != 33 || *(v24 + v40) == 1 || *(v22 + v40) == 1)
          {
            v41 = -2;
          }

          else
          {
            char_kind = get_char_kind(a2, v40);
            v39 = v167;
            if (char_kind == 4)
            {
              v41 = -1;
            }

            else
            {
              v41 = char_kind;
            }
          }

          *(v23 + v40++) = v41;
          v38 = *(a2 + 8);
        }

        while (v40 < v38);
      }

      modify_comma(v23, v38, *(a8 + 24));
      v43 = *(a2 + 8);
      if (v43 >= 1)
      {
        v161 = v19;
        v44 = 0;
        v45 = 0;
        while (1)
        {
          v46 = (v23 + v44);
          if (v44 == v43 - 1)
          {
            break;
          }

          v48 = v46[1];
          v47 = *v46;
          if (v48 != v47)
          {
            goto LABEL_60;
          }

          v49 = v44 - v45;
          if (v48 == 1 && v49 > 30)
          {
            goto LABEL_61;
          }

          if ((v48 & 0xFE) == 2 && v49 > 14)
          {
            goto LABEL_61;
          }

          ++v44;
LABEL_65:
          if (v44 >= v43)
          {
            v18 = a14;
            v19 = v161;
            goto LABEL_67;
          }
        }

        v47 = *v46;
LABEL_60:
        LOBYTE(v48) = v47;
        if (v47 <= 0xFD)
        {
LABEL_61:
          pron_from_grapheme = get_pron_from_grapheme(a2, v45, v44, v48, *(a8 + 24));
          if (!pron_from_grapheme)
          {
            heap_Free(*(a8 + 24), v23);
            v23 = 0;
            goto LABEL_208;
          }

          v52 = non_lookup_tag(a2, v45, v44, Dtype[*v46], pron_from_grapheme, v171, v172, a3, *(a8 + 24));
          v53 = *(a8 + 24);
          if (!v52)
          {
            heap_Free(v53, v23);
            heap_Free(*(a8 + 24), pron_from_grapheme);
            v23 = 0;
            LODWORD(pron_from_grapheme) = 0;
LABEL_208:
            v18 = a14;
LABEL_209:
            v19 = v161;
LABEL_210:
            v20 = v179;
            goto LABEL_224;
          }

          heap_Free(v53, pron_from_grapheme);
          v43 = *(a2 + 8);
        }

        v45 = ++v44;
        goto LABEL_65;
      }

LABEL_67:
      v20 = v179;
LABEL_68:
      heap_Free(*(a8 + 24), v23);
      if ((mbs_copy(v188, a2, 0, *(a2 + 8), *(a8 + 24)) & 0x80000000) != 0)
      {
        v23 = 0;
        LODWORD(pron_from_grapheme) = 0;
        goto LABEL_223;
      }

      if (a13 != 1)
      {
        mbs_normalize(v188);
        __s = 0;
        v54 = 0;
        LOWORD(v55) = 0;
        goto LABEL_71;
      }

      if (a10)
      {
        v105 = 0;
        v106 = a11;
        v107 = (a9 + 40);
        v108 = __s1;
        while (*(v107 - 2) <= *(a11 + 32))
        {
          if (*(v107 - 5) == 21)
          {
            v108 = (*(a12 + 8) + *v107);
          }

          ++v105;
          v107 += 16;
          if (a10 == v105)
          {
            __s1 = v108;
            v153 = a10;
            goto LABEL_188;
          }
        }

        __s1 = v108;
        v153 = v105;
      }

      else
      {
        v153 = 0;
        v106 = a11;
      }

LABEL_188:
      v23 = 2350915594;
      v109 = *(a8 + 24);
      MarkerArgStr = marker_getMarkerArgStr(1u);
      v111 = strlen(MarkerArgStr);
      pron_from_grapheme = heap_Calloc(v109, 1, (v111 + 1));
      if (!pron_from_grapheme)
      {
        v20 = v179;
        goto LABEL_223;
      }

      v112 = marker_getMarkerArgStr(1u);
      __s = pron_from_grapheme;
      strcpy(pron_from_grapheme, v112);
      mbs_normalize(v188);
      v113 = *(v106 + 32);
      v114 = *(a9 + 32);
      v54 = heap_Calloc(*(a8 + 24), 1, 264);
      if (!v54)
      {
        LODWORD(pron_from_grapheme) = 0;
        v20 = v179;
        goto LABEL_220;
      }

      v115 = v113 - v114;
      v163 = v19;
      if (v153 >= a10)
      {
        LODWORD(v55) = 0;
        v58 = *(a2 + 8);
        if (v58 <= 0)
        {
          v20 = v179;
          v56 = a3;
          v57 = a4;
LABEL_73:
          v168 = v54;
          if (v58 >= 1)
          {
            v59 = 0;
            v144 = v57 + 1;
            if (v55)
            {
              v60 = a13 == 1;
            }

            else
            {
              v60 = 0;
            }

            v61 = !v60;
            v157 = v61;
            v148 = v55;
            v169 = 1;
            v62 = v167;
            v155 = v18;
            v162 = v19;
            do
            {
              v193 = 0;
              if (v57 >= 1)
              {
                v63 = 0;
                v165 = 4 * v59;
                v166 = v59;
                v150 = 2 * v59;
                v64 = 1;
                while (1)
                {
                  v65 = v64 + v59;
                  if (v64 + v59 > *(a2 + 8))
                  {
                    break;
                  }

                  v66 = v65 - 1;
                  if (*(v62 + v66) != 33 || *(v24 + v66) == 1 || *(v22 + v66) == 1)
                  {
                    v20 = v179;
                    v62 = v167;
LABEL_169:
                    v58 = *(a2 + 8);
                    v56 = a3;
                    v57 = a4;
                    goto LABEL_170;
                  }

                  __s1a = v63;
                  v67 = v64;
                  v68 = v59;
                  if (mbs2sjis(a2, v59, v64, v195, 80) == -1 || (v69 = v68, v70 = v67, mbs2sjis(v188, v69, v67, v192, 80) == -1))
                  {
                    LODWORD(pron_from_grapheme) = 0;
                    v23 = 0;
                    goto LABEL_217;
                  }

                  if (!*(v188[0] + v165))
                  {
                    v20 = v179;
                    v62 = v167;
                    v59 = v166;
                    goto LABEL_169;
                  }

                  v71 = __s;
                  if (a13 != 1)
                  {
                    v71 = "normal";
                  }

                  if (v157)
                  {
                    v72 = v71;
                  }

                  else
                  {
                    v73 = 2 * v65;
                    v74 = v148;
                    v75 = v168;
                    v20 = v179;
                    while (v150 < *(v75 + 16) || v73 > *(v75 + 18))
                    {
                      v75 += 24;
                      if (!--v74)
                      {
                        v18 = v155;
                        v72 = __s;
                        v19 = v162;
                        goto LABEL_105;
                      }
                    }

                    v76 = *v75;
                    v145 = strlen(__s);
                    v77 = strlen(*v75);
                    if (v145 >= v77)
                    {
                      v78 = __s;
                    }

                    else
                    {
                      v78 = heap_Realloc(*(a8 + 24), __s, (v77 + 1));
                      if (!v78)
                      {
                        LODWORD(pron_from_grapheme) = 0;
                        v23 = 2350915594;
                        v18 = v155;
                        v19 = v162;
                        v20 = v179;
                        v129 = v168;
                        goto LABEL_219;
                      }

                      v76 = *v75;
                    }

                    v72 = strcpy(v78, v76);
                    v18 = v155;
                    v19 = v162;
                  }

                  v20 = v179;
LABEL_105:
                  __s = v72;
                  v79 = lookup_JPARSER(&v182, v192, &v187, &v186, v72);
                  if (v79 == -1)
                  {
                    if (__s1a)
                    {
                      v81 = v194[v169++];
                      v59 = v166;
                      if (v81)
                      {
                        v80 = v81 - 48;
                        v63 = 1;
                      }

                      else
                      {
                        v63 = 1;
                        v80 = v144;
                      }

                      v62 = v167;
                    }

                    else
                    {
                      v63 = 0;
                      v80 = v67 + 1;
                      v62 = v167;
                      v59 = v166;
                    }
                  }

                  else
                  {
                    CopyOutput_JPARSER(v189, 0x78u, v187, v79, v186);
                    if (__s1a)
                    {
                      if (v194[v169])
                      {
                        v80 = v194[v169] - 48;
                      }

                      else
                      {
                        v80 = a4 + 1;
                      }

                      ++v169;
                      v59 = v166;
                    }

                    else
                    {
                      v82 = 0;
                      v83 = v189[0];
                      v59 = v166;
                      while (*(v189[0] + v82) && *(v189[0] + v82) != 44)
                      {
                        ++v82;
                      }

                      v193 = *(v189[0] + v82);
                      if (!v193)
                      {
                        goto LABEL_123;
                      }

                      v84 = 0;
                      do
                      {
                        v85 = *(v83 + v82 + 1 + v84);
                        v194[v84++] = v85;
                      }

                      while (v85);
                      if (v84)
                      {
                        v80 = v194[0] - 48;
                        *(v83 + v82) = 0;
                        v169 = 1;
                      }

                      else
                      {
LABEL_123:
                        v169 = 1;
                        v80 = v144;
                      }
                    }

                    v62 = v167;
                    if (*v189[0])
                    {
                      if (*v164)
                      {
                        v86 = v59 + 1;
                      }

                      else
                      {
                        v86 = v59;
                      }

                      v146 = v86;
                      if (v195[0])
                      {
                        v87 = create_info(0, v195, *(a8 + 24));
                        if (!v87)
                        {
                          goto LABEL_228;
                        }

                        v142 = v80;
                        v143 = v70 - 1;
                        *(v87 + 16) = 0;
                        v88 = v189;
                        v89 = 1;
                        __s1b = v87;
                        v90 = v87;
                        do
                        {
                          v91 = *v88;
                          if (!*v88 || !*v91)
                          {
                            log_OutPublic(*(*(a1 + 32) + 32), *(a1 + 216), 52003, "%s%s%s%s", "empty field", off_1E81A9718[v89], "word=", v192);
                            free_information(__s1b, *(a8 + 24));
LABEL_186:
                            LODWORD(pron_from_grapheme) = 0;
                            v23 = 2350915584;
LABEL_215:
                            v18 = v155;
                            goto LABEL_216;
                          }

                          v92 = create_info(v89, v91, *(a8 + 24));
                          v23 = v92;
                          *(v90 + 16) = v92;
                          if (!v92)
                          {
                            free_information(__s1b, *(a8 + 24));
                            LODWORD(pron_from_grapheme) = 0;
                            goto LABEL_215;
                          }

                          *(v92 + 16) = 0;
                          ++v89;
                          ++v88;
                          v90 = v92;
                        }

                        while (v89 != 3);
                        if (!*v190)
                        {
                          goto LABEL_138;
                        }

                        v93 = create_info(3, v190, *(a8 + 24));
                        *(v23 + 16) = v93;
                        v18 = v155;
                        if (v93)
                        {
                          *(v93 + 16) = 0;
                          v23 = v93;
LABEL_138:
                          v94 = 0;
                          v95 = 4;
                          v96 = 3;
                          while (2)
                          {
                            v97 = *&v191[v94];
                            if (!*v97 && !**&v191[v94 + 8])
                            {
                              v18 = v155;
LABEL_164:
                              if (add_info_to_table(__s1b, v146, v143, v171, v172, 0, a3, *(a8 + 24)))
                              {
                                v63 = 1;
                                v19 = v162;
                                v20 = v179;
                                v62 = v167;
                                v59 = v166;
                                v80 = v142;
                                goto LABEL_161;
                              }

                              v140 = *(a8 + 24);
                              v141 = __s1b;
                              goto LABEL_247;
                            }

                            v98 = 24 * (v96 / 3);
                            if (v98 - 24 == v94)
                            {
                              v99 = v95;
                              if (!add_info_to_table(__s1b, v146, v143, v171, v172, 0, a3, *(a8 + 24)))
                              {
                                free_information(__s1b, *(a8 + 24));
LABEL_251:
                                LODWORD(pron_from_grapheme) = 0;
                                v23 = 0;
                                goto LABEL_215;
                              }

                              if (!v195[0])
                              {
                                log_OutPublic(*(*(a1 + 32) + 32), *(a1 + 216), 52003, "%s%s%s%s", "empty field", "WORD", "word=", v192);
                                goto LABEL_186;
                              }

                              v100 = create_info(0, v195, *(a8 + 24));
                              if (!v100)
                              {
                                goto LABEL_251;
                              }

                              *(v100 + 16) = 0;
                              v97 = *&v191[v94];
                              __s1b = v100;
                              v23 = v100;
                              v18 = v155;
                              v95 = v99;
                              if (!v97)
                              {
LABEL_245:
                                log_OutPublic(*(*(a1 + 32) + 32), *(a1 + 216), 52003, "%s%s%s%s", "empty field", off_1E81A9718[v95 - 3 * (v96 / 3)], "word=", v192);
                                free_information(__s1b, *(a8 + 24));
                                LODWORD(pron_from_grapheme) = 0;
                                v23 = 2350915584;
                                goto LABEL_216;
                              }

LABEL_151:
                              if (!*v97)
                              {
                                goto LABEL_245;
                              }

                              v101 = v95;
                              v103 = v95 - 3 * (v96 / 3);
                              v102 = *(a8 + 24);
LABEL_153:
                              v104 = create_info(v103, v97, v102);
                              *(v23 + 16) = v104;
                              if (!v104)
                              {
                                break;
                              }

                              v23 = v104;
                              v95 = v101;
                              *(v104 + 16) = 0;
                            }

                            else
                            {
                              if (v98 - 8 != v94)
                              {
                                v18 = v155;
                                goto LABEL_151;
                              }

                              v18 = v155;
                              if (*v97)
                              {
                                v101 = v95;
                                v102 = *(a8 + 24);
                                v103 = 3;
                                goto LABEL_153;
                              }
                            }

                            ++v96;
                            v94 += 8;
                            ++v95;
                            if (v94 == 928)
                            {
                              goto LABEL_164;
                            }

                            continue;
                          }
                        }

                        v140 = *(a8 + 24);
                        v141 = __s1b;
LABEL_247:
                        free_information(v141, v140);
                        LODWORD(pron_from_grapheme) = 0;
                        v23 = 0;
LABEL_216:
                        v19 = v162;
LABEL_217:
                        v20 = v179;
                      }

                      else
                      {
                        log_OutPublic(*(*(a1 + 32) + 32), *(a1 + 216), 52003, "%s%s%s%s", "empty field", "WORD", "word=", v192);
                        LODWORD(pron_from_grapheme) = 0;
                        v23 = 2350915584;
                      }

LABEL_218:
                      v129 = v168;
                      if (v168)
                      {
LABEL_219:
                        heap_Free(*(a8 + 24), v129);
                      }

LABEL_220:
                      if (a13 == 1 && __s)
                      {
                        heap_Free(*(a8 + 24), __s);
                      }

LABEL_223:
                      mbs_free(v188, *(a8 + 24));
LABEL_224:
                      v25 = v167;
                      goto LABEL_225;
                    }

                    v63 = 1;
                  }

LABEL_161:
                  v64 = v80;
                  if (v80 > a4)
                  {
                    goto LABEL_169;
                  }
                }

                v20 = v179;
                goto LABEL_169;
              }

LABEL_170:
              ++v59;
            }

            while (v59 < v58);
          }

          if (*(v56 + 136) && !look_up_unknown_word(a2, v56, v171, v172, *(a8 + 24)))
          {
LABEL_228:
            LODWORD(pron_from_grapheme) = 0;
            v23 = 0;
          }

          else
          {
            v23 = 0;
            LODWORD(pron_from_grapheme) = 1;
          }

          goto LABEL_218;
        }

        v168 = v54;
        v156 = v18;
        LOWORD(v58) = 2 * v58;
        v127 = v113 - v114;
        v20 = v179;
        v56 = a3;
        v57 = a4;
        v120 = __s1;
      }

      else
      {
        v168 = v54;
        v156 = v18;
        v158 = 0;
        v116 = (v113 - v114);
        v117 = *(a9 + 32);
        v118 = (a9 + (v153 << 6) + 40);
        v119 = a10 - v153;
        v151 = 10;
        v147 = v115;
        v152 = v115;
        v120 = __s1;
        v149 = v115;
        do
        {
          v121 = *(v118 - 2);
          if (v116 + 2 * *(a2 + 8) < (v121 - v117))
          {
            break;
          }

          if (*(v118 - 5) == 21)
          {
            v170 = v117;
            v122 = *(a12 + 8);
            v154 = *v118;
            __s1c = v120;
            if (!strcmp(v120, (v122 + v154)))
            {
              v19 = v163;
              v120 = __s1c;
              v116 = v149;
              v117 = v170;
            }

            else
            {
              v123 = v158;
              v124 = v168;
              v117 = v170;
              if (v158 >= v151)
              {
                v125 = heap_Realloc(*(a8 + 24), v168, 24 * v151 + 264);
                if (!v125)
                {
                  LODWORD(pron_from_grapheme) = 0;
                  v18 = v156;
                  v129 = v168;
                  v19 = v163;
                  v20 = v179;
                  goto LABEL_219;
                }

                v151 += 10;
                v122 = *(a12 + 8);
                v121 = *(v118 - 2);
                v124 = v125;
                v117 = *(a9 + 32);
                v123 = v158;
              }

              v116 = v149;
              v168 = v124;
              v126 = v124 + 24 * v123;
              *v126 = __s1c;
              v120 = (v122 + v154);
              *(v126 + 8) = v122 + v154;
              *(v126 + 16) = v152;
              v152 = v121 - v117;
              *(v126 + 18) = v121 - v117;
              v158 = (v123 + 1);
              v19 = v163;
            }
          }

          v118 += 16;
          --v119;
        }

        while (v119);
        v58 = *(a2 + 8);
        v127 = v152;
        v20 = v179;
        if (v116 + 2 * v58 <= v152)
        {
          v56 = a3;
          v57 = a4;
          v55 = v158;
          goto LABEL_231;
        }

        LODWORD(v55) = v158;
        if (v158 >= v151)
        {
          v138 = v120;
          v139 = heap_Realloc(*(a8 + 24), v168, 24 * v151 + 264);
          if (!v139)
          {
            LODWORD(pron_from_grapheme) = 0;
            v18 = v156;
            goto LABEL_218;
          }

          v58 = 2 * *(a2 + 8);
          v168 = v139;
          v56 = a3;
          v57 = a4;
          v120 = v138;
          LODWORD(v55) = v158;
          v115 = v147;
          v127 = v152;
        }

        else
        {
          LOWORD(v58) = 2 * v58;
          v56 = a3;
          v57 = a4;
          v115 = v147;
        }
      }

      v128 = v168 + 24 * v55;
      *v128 = v120;
      *(v128 + 8) = 0;
      *(v128 + 16) = v127;
      *(v128 + 18) = v58 + v115;
      v55 = (v55 + 1);
LABEL_231:
      v54 = v168;
      if (!v55)
      {
        LOWORD(v55) = 0;
        v18 = v156;
        goto LABEL_72;
      }

      v132 = 0;
      v133 = v55;
      do
      {
        v134 = v132 + 1;
        if (v134 < v133 && (v135 = (v54 + 24 * v134), (v136 = v135[1]) != 0))
        {
          v159 = v55;
          v137 = (v54 + 24 * v132);
          if (!strcmp(*v137, v136))
          {
            memmove(v137, v135, 24 * (v133 + (~v132 | 0x1FFF0000)));
            v55 = (v159 - 1);
            v20 = v179;
            v54 = v168;
          }

          else
          {
            ++v132;
            v20 = v179;
            v54 = v168;
            v55 = v159;
          }
        }

        else
        {
          ++v132;
        }

        v133 = v55;
      }

      while (v132 < v55);
      v18 = v156;
      v19 = v163;
LABEL_71:
      v56 = a3;
      v57 = a4;
LABEL_72:
      v58 = *(a2 + 8);
      goto LABEL_73;
    }

LABEL_25:
    LODWORD(pron_from_grapheme) = 0;
    goto LABEL_224;
  }

LABEL_225:
  heap_Free(*(a8 + 24), v25);
  heap_Free(*(a8 + 24), v24);
  heap_Free(*(a8 + 24), v22);
  heap_Free(*(a8 + 24), v19);
  heap_Free(*(a8 + 24), v20);
  heap_Free(*(a8 + 24), v181);
  for (j = 0; j != 120; ++j)
  {
    heap_Free(*(a8 + 24), v189[j]);
  }

  *v18 = pron_from_grapheme;
  return v23;
}

uint64_t sapi_prn_tag_conv_replace(uint64_t a1, char *__s, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v28 = 0;
  v6 = strlen(__s);
  v7 = mbs_create(&v27, v6, __s, *(a3 + 24));
  if ((v7 & 0x80000000) == 0)
  {
    *(a1 + 8) = 0;
    v8 = heap_Alloc(*(a3 + 24), v28);
    if (!v8)
    {
      v7 = 2350915594;
      goto LABEL_48;
    }

    if (!mark_tag_state(&v27, v8))
    {
      v7 = 2350915601;
      goto LABEL_48;
    }

    if (v28 < 1)
    {
      goto LABEL_48;
    }

    v26 = 0;
    v9 = 0;
LABEL_6:
    v10 = mbs_one_char(&v27, v9);
    if (v10 <= 0x20 && ((1 << v10) & 0x100002400) != 0)
    {
      goto LABEL_10;
    }

    v12 = v9 + 15 >= v28 ? v28 - v9 : 16;
    if (v12 < 1)
    {
      goto LABEL_10;
    }

    v13 = 0;
    v14 = v12 + 1;
    while (mbs_one_char(&v27, v9 + v13) != 30)
    {
      if (v12 == ++v13)
      {
        goto LABEL_22;
      }
    }

    v14 = v13 + 1;
LABEL_22:
    v15 = v14 - 1;
    if (v14 <= 1)
    {
LABEL_30:
      v16 = v15;
    }

    else
    {
      v16 = 0;
      while (1)
      {
        v17 = mbs_one_char(&v27, v9 + v16);
        if (v17 <= 0x20 && ((1 << v17) & 0x100002400) != 0)
        {
          break;
        }

        if (v15 == ++v16)
        {
          goto LABEL_30;
        }
      }
    }

    if (v16 < 1)
    {
LABEL_10:
      v7 = mbs_add_str(a1, &v27, v9, 1u, 0, *(a3 + 24));
      if ((v7 & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_48;
    }

    v19 = v26 == 1;
    while (1)
    {
      if (mbs2sjis(&v27, v9, v16, __sa, 1000) == -1)
      {
        v7 = 2350915840;
        goto LABEL_48;
      }

      v20 = strlen(__sa);
      if (v20 < 1)
      {
        if (v19)
        {
LABEL_44:
          v7 = mbs_add_str(a1, &v27, v9, v16, 0, *(a3 + 24));
          if ((v7 & 0x80000000) != 0)
          {
            goto LABEL_48;
          }

          v9 = v9 - 1 + v16;
          v26 = 1;
LABEL_11:
          if (++v9 >= v28)
          {
LABEL_48:
            heap_Free(*(a3 + 24), v8);
            mbs_free(&v27, *(a3 + 24));
            return v7;
          }

          goto LABEL_6;
        }
      }

      else
      {
        v21 = v20 & 0x7FFFFFFF;
        v22 = __sa;
        while (1)
        {
          v23 = *v22++;
          if ((v23 & 0xFFFFFFDF) - 91 < 0xFFFFFFE6)
          {
            break;
          }

          if (!--v21)
          {
            goto LABEL_44;
          }
        }
      }

      v19 = 0;
      if (v16-- < 2)
      {
        v26 = 0;
        goto LABEL_10;
      }
    }
  }

  return v7;
}

uint64_t jparser_ClassOpen(_WORD *a1, int a2, uint64_t a3)
{
  v7 = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  result = InitRsrcFunction(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    v5 = heap_Calloc(*(v7 + 8), 1, 8);
    if (v5)
    {
      v6 = v5;
      result = 0;
      *v6 = *(v7 + 8);
      *a3 = v6;
      *(a3 + 8) = 19024;
    }

    else
    {
      return 2350915594;
    }
  }

  return result;
}

uint64_t jparser_ClassClose(void **a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 19024, 8) & 0x80000000) != 0)
  {
    return 2350915592;
  }

  if (a1)
  {
    heap_Free(*a1, a1);
  }

  return 0;
}

uint64_t jparser_ObjOpen(_WORD *a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, int a10, uint64_t a11)
{
  v35 = 0;
  inited = InitRsrcFunction(a1, a2, &v35);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v20 = 2350915840;
  if ((safeh_HandleCheck(a3, a4, 19024, 8) & 0x80000000) != 0)
  {
    return 2350915592;
  }

  v21 = 0;
  for (i = 0; i != 1; ++i)
  {
    v23 = *(get_a_rule(i) + 72);
    if (v23 > v21)
    {
      v21 = v23;
    }
  }

  if (v21)
  {
    return 2350907394;
  }

  v24 = heap_Alloc(*(v35 + 8), 232);
  if (!v24)
  {
    return 2350915594;
  }

  v25 = v24;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 192) = 0u;
  *(v24 + 208) = 0u;
  *(v24 + 224) = 0;
  *(v24 + 160) = 0u;
  *(v24 + 176) = 0u;
  *(v24 + 128) = 0u;
  *(v24 + 144) = 0u;
  *(v24 + 96) = 0u;
  *(v24 + 112) = 0u;
  *(v24 + 64) = 0u;
  *(v24 + 80) = 0u;
  *(v24 + 32) = 0u;
  *(v24 + 48) = 0u;
  *(v24 + 8) = a1;
  *(v24 + 16) = a2;
  v26 = v35;
  *(v24 + 24) = *(v35 + 8);
  *(v24 + 32) = v26;
  *(v24 + 216) = a11;
  *(v24 + 184) = a6;
  *(v24 + 192) = a7;
  *(v24 + 200) = a8;
  *(v24 + 208) = a9;
  *(v24 + 212) = a10;
  *(v24 + 48) = get_number_of_symbol(&SF_symbol_file, "SENTENCE");
  number_of_symbol = get_number_of_symbol(&SF_symbol_file, &byte_1E81A861C);
  *(v25 + 56) = number_of_symbol;
  if ((number_of_symbol & 0x8000000000000000) == 0)
  {
    v28 = 3;
    v29 = &unk_1E81A8850;
    for (j = (v25 + 104); ; ++j)
    {
      v31 = get_number_of_symbol(&SF_symbol_file, v29 - 320);
      *(j - 5) = v31;
      if (v31 == -1)
      {
        break;
      }

      v32 = get_number_of_symbol(&SF_symbol_file, v29 + 344);
      j[5] = v32;
      if (v32 == -1)
      {
        break;
      }

      v33 = get_number_of_symbol(&SF_symbol_file, v29);
      *j = v33;
      if (v33 == -1)
      {
        break;
      }

      v29 += 64;
      if (!--v28)
      {
        v20 = 0;
        *a5 = v25;
        return v20;
      }
    }
  }

  heap_Free(*(v35 + 8), v25);
  return v20;
}

uint64_t jparser_ObjClose(uint64_t *a1)
{
  result = 2350915592;
  if (a1)
  {
    if (*a1)
    {
      heap_Free(*(*a1 + 24), *a1);
      result = 0;
      *a1 = 0;
    }
  }

  return result;
}

uint64_t jparser_Parse(uint64_t a1, char *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  v33 = 0;
  v11 = 2350915592;
  if (a1)
  {
    v12 = a8;
    v14 = a5;
    *(a1 + 224) = a6;
    v34[0] = 0;
    v34[1] = 0;
    v17 = *(a1 + 208);
    v31[12] = *(a1 + 192);
    v31[13] = v17;
    v32 = a6;
    v18 = *(a1 + 144);
    v31[8] = *(a1 + 128);
    v31[9] = v18;
    v19 = *(a1 + 176);
    v31[10] = *(a1 + 160);
    v31[11] = v19;
    v20 = *(a1 + 80);
    v31[4] = *(a1 + 64);
    v31[5] = v20;
    v21 = *(a1 + 112);
    v31[6] = *(a1 + 96);
    v31[7] = v21;
    v22 = *(a1 + 16);
    v31[0] = *a1;
    v31[1] = v22;
    v23 = *(a1 + 48);
    v31[2] = *(a1 + 32);
    v31[3] = v23;
    v24 = sapi_prn_tag_conv_replace(v34, a2, v31);
    if ((v24 & 0x80000000) != 0)
    {
      v28 = v24;
      mbs_free(v34, *(a1 + 24));
      return v28;
    }

    else
    {
      v25 = iso_parse_fdp_bas(a1, &Inifile_global, v34, CT_connection_table, v14, &v33, a7, v12, a9, a10, a11);
      if ((v25 & 0x80000000) != 0)
      {
        v29 = v25;
        mbs_free(v34, *(a1 + 24));
        return v29;
      }

      else
      {
        v26 = v33;
        mbs_free(v34, *(a1 + 24));
        if (v26)
        {
          v27 = v33;
          if (*v33 == 1)
          {
            *a4 = *(v33 + 8);
            heap_Free(*(a1 + 24), v27);
            return 0;
          }

          else
          {
            heap_Free(*(a1 + 24), v33);
            return 2350915840;
          }
        }

        else
        {
          return 2350915594;
        }
      }
    }
  }

  return v11;
}

uint64_t jparser_FreeTree(uint64_t a1, void *a2)
{
  if (a1)
  {
    return jpe_FreeTree(*a2, *(a1 + 24));
  }

  else
  {
    return 2350915592;
  }
}

uint64_t jpj_sysdct_CharLookup(uint64_t a1, uint64_t a2, uint64_t a3, char *__s, uint64_t a5, unsigned int a6, int a7)
{
  v53 = *MEMORY[0x1E69E9840];
  __c[0] = 0;
  v49 = 0;
  v48 = 0;
  *a5 = 0;
  *(a5 + 4) = 0u;
  v12 = (a5 + 4);
  *(a5 + 20) = 0u;
  *(a5 + 36) = 0u;
  *(a5 + 52) = 0u;
  *(a5 + 68) = 0;
  *(a5 + 70) = 0;
  *(a5 + 76) = 0u;
  v13 = (a5 + 76);
  *(a5 + 72) = 0;
  *(a5 + 92) = 0u;
  *(a5 + 108) = 0u;
  *(a5 + 124) = 0u;
  *(a5 + 140) = 0u;
  *(a5 + 156) = 0u;
  *(a5 + 172) = 0u;
  *(a5 + 188) = 0u;
  *(a5 + 204) = 0u;
  *(a5 + 220) = 0u;
  *(a5 + 236) = 0u;
  *(a5 + 252) = 0u;
  *(a5 + 332) = 0;
  *(a5 + 268) = 0u;
  *(a5 + 284) = 0u;
  *(a5 + 300) = 0u;
  *(a5 + 316) = 0u;
  *(a5 + 334) = 0;
  v14 = strlen(__s);
  v15 = v14;
  if ((v14 & 0xFFC0) != 0)
  {
    v16 = 64;
  }

  else
  {
    v16 = v14;
  }

  __memmove_chk();
  v52[v16] = 0;
  if (!v15)
  {
    v18 = 0;
    do
    {
      v19 = v18;
      v20 = __s[v18++];
    }

    while (v20 == 32);
    memmove(v12, __s, v19);
    return 0;
  }

  if (v16 > a6)
  {
    v52[a6] = 0;
  }

  if (v52[0] > 0x7Eu)
  {
    v17 = 2;
    *a5 = 2;
    *(a5 + 4) = *v52;
    *(a5 + 6) = 0;
  }

  else
  {
    *a5 = 3;
    *(a5 + 4) = v52[0];
    *(a5 + 5) = 0;
    v17 = 1;
  }

  *(a5 + 70) = v17;
  if (!*(a3 + 28))
  {
    *&__c[1] = 0;
    v23 = lookup_JPARSER(a3, v12, &__c[1], __c, "normal");
    if (v23 != -1)
    {
      v24 = v23;
      memmove(v13, *&__c[1], v23);
      v13[v24] = 0;
      *(a5 + 334) = v24;
      v25 = strchr(v13, __c[0]);
      if (v25)
      {
        *v25 = 0;
        v26 = v25 + 1;
        v27 = strchr(v25 + 1, __c[0]);
        if (v27)
        {
          *v27 = 0;
          v28 = strlen(v26);
          *(a5 + 334) = v28;
          memmove(v13, v26, v28);
          v13[*(a5 + 334)] = 0;
LABEL_28:
          v21 = 0;
          goto LABEL_29;
        }

        v29 = 1812;
      }

      else
      {
        v29 = 1813;
      }

      v21 = 2350915584;
      v31 = a2;
      v32 = *(a1 + 32);
      goto LABEL_39;
    }

    *a5 = 0;
    goto LABEL_28;
  }

  v48 = 0;
  v21 = (*(*a3 + 96))(*(a3 + 8), *(a3 + 16), "char", v12, &v49, &v48, __c);
  if ((v21 & 0x80000000) != 0 || !v48)
  {
    goto LABEL_45;
  }

  __sa = 0;
  v46 = 0;
  *&__c[1] = 0u;
  v51 = 0u;
  getDictSolutionJPJ(v48, v49, __c[0], &__sa, &v46 + 1, "normal", 4, &v46, &__c[1]);
  if (!HIWORD(v46) || (vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(*&__c[1]), vceqzq_s64(v51)), xmmword_1C3791520)) & 0xF) != 0)
  {
    log_OutPublic(*(a1 + 32), a2, 1817, 0);
    *a5 = 0;
  }

  else
  {
    v22 = !**&__c[1] || **&__c[1] == 49 && !*(*&__c[1] + 1);
    if (**&__c[9])
    {
      v30 = **&__c[9] != 49 || *(*&__c[9] + 1) != 0;
      if (a7 == 1 && v30)
      {
        goto LABEL_45;
      }
    }

    if (v22)
    {
      if (*__sa == __c[0])
      {
LABEL_45:
        *a5 = 0;
        return v21;
      }

      v39 = strlen(__sa);
      memmove(v13, __sa, v39);
      v13[v39] = 0;
      *(a5 + 334) = v39;
      v40 = strchr(v13, __c[0]);
      if (v40)
      {
        *v40 = 0;
        v41 = v40 + 1;
        v42 = strchr(v40 + 1, __c[0]);
        if (v42)
        {
          *v42 = 0;
          v43 = strlen(v41);
          *(a5 + 334) = v43;
          v36 = v43;
          v37 = v13;
          v38 = v41;
          goto LABEL_52;
        }

        v21 = 2350915584;
        v31 = a2;
        v32 = *(a1 + 32);
        v29 = 1812;
      }

      else
      {
        v21 = 2350915584;
        v31 = a2;
        v32 = *(a1 + 32);
        v29 = 1813;
      }

LABEL_39:
      log_OutPublic(v32, v31, v29, 0);
      return v21;
    }

    v34 = v51.i64[0];
    if (*v51.i64[0])
    {
      v35 = strlen(v51.i64[0]);
      *(a5 + 334) = v35;
      v36 = v35;
      v37 = v13;
      v38 = v34;
LABEL_52:
      memmove(v37, v38, v36);
      v13[*(a5 + 334)] = 0;
    }
  }

LABEL_29:
  if (*a5 && *v13 == 35)
  {
    *(a5 + 76) = atoi((a5 + 77));
    *(a5 + 77) = 0;
    *(a5 + 334) = 1;
  }

  return v21;
}

uint64_t DoJPJSpell(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    return 0;
  }

  v16 = 0;
  for (i = 0; i < a5; v16 = i)
  {
    memset(v26, 0, sizeof(v26));
    v18 = jpj_sysdct_CharLookup(a1, a2, a3, (a4 + i), v26, 0x16u, a11);
    if ((v18 & 0x80000000) != 0)
    {
      break;
    }

    if ((LODWORD(v26[0]) - 2) > 3)
    {
      log_OutText(*(a1 + 32), a2, 5, 0, "[UTOI] (utoi position %d len %d not in dict", v16, WORD3(v26[4]));
    }

    else
    {
      v19 = strlen(&v26[4] + 12) + 3;
      v20 = heap_Alloc(*(a1 + 8), v19);
      if (!v20)
      {
        return 2350915594;
      }

      v21 = v20;
      bzero(v20, v19);
      if (i)
      {
        strcpy(v21, &v26[4] + 12);
      }

      else
      {
        *v21 = 32;
        strcat(v21, &v26[4] + 12);
      }

      *&v21[strlen(v21)] = 32;
      v22 = strlen(v21);
      v18 = bed_Insert(a6, v21, v22);
      if ((v18 & 0x80000000) != 0)
      {
        heap_Free(*(a1 + 8), v21);
        return v18;
      }

      heap_Free(*(a1 + 8), v21);
    }

    v23 = strlen(v26 + 4);
    if (v23)
    {
      i += v23;
    }

    else
    {
      i = a5;
    }
  }

  return v18;
}

uint64_t DoJPJLatin(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char **a5)
{
  v12 = *MEMORY[0x1E69E9840];
  memset(v11, 0, sizeof(v11));
  v7 = jpj_sysdct_CharLookup(a1, a2, a3, a4, v11, 0x16u, 0);
  if (!v7)
  {
    v8 = strlen(&v11[4] + 12);
    v9 = heap_Alloc(*(a1 + 8), (v8 + 3));
    *a5 = v9;
    if (v9)
    {
      strcpy(v9, &v11[4] + 12);
    }
  }

  return v7;
}

size_t getDictSolutionJPJ(unsigned int a1, uint64_t a2, int a3, const char **a4, _WORD *a5, const char *a6, int a7, _WORD *a8, __int128 *a9)
{
  v11 = a9;
  v41 = *MEMORY[0x1E69E9840];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  if (!a1)
  {
    LOWORD(v14) = 0;
    v17 = 0;
    v25 = &v39;
    goto LABEL_40;
  }

  v28 = a8;
  v29 = a4;
  v30 = 0;
  v14 = 0;
  v31 = 0;
  v32 = a7 != 0;
  v33 = a1;
  while (1)
  {
    v35 = 0u;
    v36 = 0u;
    v15 = *(a2 + 8 * v14);
    v16 = strlen(v15);
    *a5 = v16;
    v17 = 0;
    if (v16)
    {
      v18 = a7 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      v22 = 0;
      v23 = 0;
      while (1)
      {
        v24 = *(a2 + 8 * v14);
        if (!*(&v35 + v23))
        {
          *(&v35 + v23) = &v24[v17];
        }

        if (a7 == 1 && !v17 && *v24 != a3)
        {
          break;
        }

        if (v24[v17] == a3)
        {
          ++v23;
          v24[v17] = 0;
        }

        ++v17;
        if (v22)
        {
          goto LABEL_30;
        }

        if (v23 + 1 == a7)
        {
          v15 = (*(a2 + 8 * v14) + v17);
LABEL_30:
          v22 = 1;
          goto LABEL_31;
        }

        v22 = 0;
LABEL_31:
        v19 = a7 != v23;
        if (*a5 <= v17 || a7 == v23)
        {
          goto LABEL_9;
        }
      }

      v17 = 1;
      goto LABEL_30;
    }

    v19 = v32;
LABEL_9:
    if (v19)
    {
      *a5 = 0;
    }

    if (*v15)
    {
      break;
    }

    v39 = v35;
    v40 = v36;
    v30 = v14;
    v31 = v17;
LABEL_36:
    if (++v14 >= v33)
    {
      v25 = &v39;
      v11 = a9;
      a4 = v29;
      a8 = v28;
      LOWORD(v14) = v30;
      v17 = v31;
      goto LABEL_40;
    }
  }

  v20 = strchr(v15, 44);
  while (1)
  {
    if (v20)
    {
      *v20 = 0;
    }

    if (!strcmp(v15, a6))
    {
      break;
    }

    if (v20)
    {
      v21 = v20[1];
      v15 = v20 + 1;
      v20 = strchr(v20 + 1, 44);
      if (v21)
      {
        continue;
      }
    }

    goto LABEL_36;
  }

  v37 = v35;
  v38 = v36;
  v25 = &v37;
  v11 = a9;
  a4 = v29;
  a8 = v28;
LABEL_40:
  *a8 = v14;
  *a4 = (*(a2 + 8 * v14) + v17);
  v26 = v25[1];
  *v11 = *v25;
  v11[1] = v26;
  result = strlen(*a4);
  *a5 = result;
  return result;
}

uint64_t lookup_JPARSER(uint64_t a1, uint64_t a2, const char **a3, unsigned __int8 *a4, const char *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v14 = 0;
  if (*(a1 + 28))
  {
    v16 = 0;
    if (((*(*a1 + 152))(*(a1 + 8), *(a1 + 16), "word", a2, &v15, &v16, a4, *(a1 + 24)) & 0x80000000) == 0 && v16)
    {
      v17 = 0u;
      v18 = 0u;
      getDictSolutionJPJ(v16, v15, *a4, a3, &v14, a5, 1, &v13, &v17);
      return v14;
    }

    if (*(a1 + 28) == 1)
    {
      v16 = 0;
      v12 = (*(*a1 + 96))(*(a1 + 8), *(a1 + 16), "char", a2, &v15, &v16, a4);
      result = -1;
      if ((v12 & 0x80000000) == 0 && v16)
      {
        v17 = 0u;
        v18 = 0u;
        getDictSolutionJPJ(v16, v15, *a4, a3, &v14, a5, 4, &v13, &v17);
        return v14;
      }
    }

    else
    {
      return -1;
    }
  }

  else
  {
    v16 = -1;
    v11 = (*(*a1 + 152))(*(a1 + 8), *(a1 + 16), "word", a2, &v15, &v16, a4, *(a1 + 24));
    result = -1;
    if ((v11 & 0x80000000) == 0 && v16 == 1)
    {
      LOWORD(result) = strlen(*v15);
      *a3 = *v15;
      return result;
    }
  }

  return result;
}

uint64_t FillFields(uint64_t result, unsigned int a2, uint64_t a3, int a4, int a5)
{
  if (a2)
  {
    v5 = 0;
    v6 = 0;
    for (i = (result + 8); ; ++i)
    {
      v8 = (a4 - v6);
      if (a4 <= v6)
      {
        break;
      }

      v9 = 0;
      while (1)
      {
        v10 = *(a3 + v6 + v9);
        if (v10 == a5)
        {
          break;
        }

        *(*(result + 8 * v5) + v9++) = v10;
        if (v8 == v9)
        {
          goto LABEL_11;
        }
      }

      *(*(result + 8 * v5) + v9) = 0;
      v6 += v9 + 1;
      if (++v5 == a2)
      {
        return result;
      }
    }

    v8 = 0;
LABEL_11:
    *(*(result + 8 * v5) + v8) = 0;
    for (j = 1; j != 5; ++j)
    {
      if (v5 + j >= a2)
      {
        break;
      }

      v12 = *i++;
      *v12 = 0;
    }
  }

  return result;
}

uint64_t virtual_fseek(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  switch(a4)
  {
    case 0:
      goto LABEL_6;
    case 1:
      a3 += *a2;
      goto LABEL_6;
    case 2:
      a3 = *(a1 + 8) + ~a3;
LABEL_6:
      result = 0;
      *a2 = a3;
      return result;
  }

  return 0xFFFFFFFFLL;
}

uint64_t virtual_getc(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 < 0 || v2 >= a1[1])
  {
    return 0xFFFFFFFFLL;
  }

  result = *(*a1 + v2);
  *a2 = v2 + 1;
  return result;
}

uint64_t xcode_Utf16leToWin932(uint64_t a1, unsigned __int16 *a2, unsigned int a3, uint64_t a4, _WORD *a5, uint64_t a6)
{
  v6 = 2370838535;
  if (a2 && a4 && a5)
  {
    if (a3)
    {
      v10 = a2;
      v12 = 0;
      v13 = a3;
      while (*a5 > v12)
      {
        v14 = *v10++;
        v12 += XLIT_chUnicodeWideToSJIS(v14, (a4 + v12), a1, a6);
        if (!--v13)
        {
          goto LABEL_10;
        }
      }

      return 2370838537;
    }

    else
    {
      LOWORD(v12) = 0;
LABEL_10:
      v6 = 0;
      *a5 = v12;
    }
  }

  return v6;
}

void *mas_list_insert(void *result, void *a2)
{
  if (result)
  {
    if (a2)
    {
      if (result[5] <= a2[5])
      {
        a2[1] = mas_list_insert(result, a2[1]);
      }

      else
      {
        a2[2] = mas_list_insert(result, a2[2]);
      }

      return a2;
    }

    else
    {
      result[1] = 0;
      result[2] = 0;
    }
  }

  return result;
}

uint64_t lattice_word_print_all(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v30 = *MEMORY[0x1E69E9840];
  appended = ssftstring_Reserve(a3, 64);
  if ((appended & 0x80000000) != 0)
  {
    return appended;
  }

  v13 = ssftstring_Clear(a3);
  if ((v13 & 0x80000000) == 0 && a5 >= -1)
  {
    v14 = 0;
    v15 = 560;
    if (a6 == 1)
    {
      v15 = 552;
    }

    v26 = a4;
    v27 = v15;
    v25 = (a5 + 2);
    while (1)
    {
      log_OutText(*(a1 + 32), a2, 5, 0, "[FDP] x=%d", v14);
      v16 = *(a4 + 8 * v14);
      if (v16)
      {
        break;
      }

LABEL_25:
      ++v14;
      a4 = v26;
      if (v14 == v25)
      {
        return v13;
      }
    }

    v17 = 0;
    while (1)
    {
      v18 = *(v16 + v27);
      __sprintf_chk(__s, 0, 0x40uLL, "[FDP] (%3d,%3d,%3d)", v14, *(v16 + 580), v17);
      appended = ssftstring_AssignCStr(a3, __s);
      if ((appended & 0x80000000) != 0)
      {
        return appended;
      }

      v19 = *v16;
      if (*v16)
      {
        for (i = *v19; i; i = *(i + 16))
        {
          appended = ssftstring_AppendCStr(a3, *i);
          if ((appended & 0x80000000) != 0)
          {
            return appended;
          }

          appended = ssftstring_AppendCStr(a3, ":");
          if ((appended & 0x80000000) != 0)
          {
            return appended;
          }

          appended = log_mbs_fput_sjis(a3, *(i + 8));
          if ((appended & 0x80000000) != 0)
          {
            return appended;
          }

          appended = ssftstring_AppendCStr(a3, " ");
          if ((appended & 0x80000000) != 0)
          {
            return appended;
          }
        }
      }

      else
      {
        if (*(v16 + 568) == 1)
        {
          v21 = "<_START>";
        }

        else
        {
          v21 = "<_END>";
        }

        appended = ssftstring_AppendCStr(a3, v21);
        if ((appended & 0x80000000) != 0)
        {
          return appended;
        }
      }

      strcpy(__s, "cost_h = ");
      LH_itoa(*(v16 + 8), v28, 0xAu);
      __strcat_chk();
      __strcat_chk();
      LH_itoa(*(v16 + 16), v28, 0xAu);
      __strcat_chk();
      appended = ssftstring_AppendCStr(a3, __s);
      if ((appended & 0x80000000) != 0)
      {
        return appended;
      }

      v22 = *(a1 + 32);
      v23 = ssftstring_CStr(a3);
      log_OutText(v22, a2, 5, 0, "%s", v23);
      v13 = ssftstring_Clear(a3);
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }

      ++v17;
      v16 = v18;
      if (!v18)
      {
        goto LABEL_25;
      }
    }
  }

  return v13;
}

void *lattice_word_free_all(void *result, int a2, void *a3)
{
  if (a2 >= -1)
  {
    v4 = result;
    v5 = 0;
    v6 = (a2 + 2);
    do
    {
      v7 = v4[v5];
      if (v7)
      {
        do
        {
          v8 = *(v7 + 552);
          result = heap_Free(a3, v7);
          v7 = v8;
        }

        while (v8);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t add_to_lattice(_DWORD *a1, uint64_t a2, uint64_t *a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  v10 = a2;
  if (!a2)
  {
    v18 = heap_Alloc(a10, 584);
    v10 = v18;
    if (!v18)
    {
      return v10;
    }

    *(v18 + 544) = 0;
    *(v18 + 536) = 0;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    *(v18 + 552) = 0;
    *(v18 + 568) = 0;
    *(v18 + 560) = 0;
    *v18 = a3;
    if (a3)
    {
      v19 = *a3;
      if (!*a3)
      {
        return 0;
      }

      while (strcmp(*v19, "WCOST"))
      {
        v19 = *(v19 + 16);
        if (!v19)
        {
          return 0;
        }
      }

      v31 = mbs_len_bytes(*(v19 + 8)) + 1;
      v32 = heap_Alloc(a10, v31);
      if (!v32)
      {
        heap_Free(a10, v10);
        return 0;
      }

      v33 = v32;
      bzero(v32, v31);
      if (mbs2sjis(*(v19 + 8), 0, *(*(v19 + 8) + 8), v33, v31) == -1)
      {
        return 0;
      }

      *(v10 + 16) = atoi(v33);
      heap_Free(a10, v33);
    }

    else
    {
      *(v18 + 572) = 1;
      *(v18 + 16) = 0;
    }

    *(v10 + 576) = a4;
    *(v10 + 580) = a5;
    v25 = (a6 + 8 * (a4 + 1));
    v26 = *v25;
    if (*v25)
    {
      do
      {
        v27 = v26;
        v26 = *(v26 + 552);
      }

      while (v26);
      v25 = (v27 + 552);
    }

    *v25 = v10;
    v28 = (a7 + 8 * (a4 + 1 + a5));
    v29 = *v28;
    if (*v28)
    {
      do
      {
        v30 = v29;
        v29 = *(v29 + 560);
      }

      while (v29);
      v28 = (v30 + 560);
    }

    *v28 = v10;
  }

  v12 = *(v10 + 544);
  if (v12 > 31)
  {
    return 0;
  }

  if (a1)
  {
    *(v10 + 8 * v12 + 280) = a1;
    if (a1[142] == 1)
    {
      v20 = -1;
    }

    else
    {
      v20 = *(*a1 + 8);
    }

    if (*(v10 + 572) == 1)
    {
      v21 = -1;
    }

    else
    {
      v21 = *(*v10 + 8);
    }

    v22 = connection_table(v20, v21, a9);
    v23 = *(v10 + 544);
    *(v10 + 8 * v23 + 24) = v22;
    *(v10 + 544) = v23 + 1;
  }

  return v10;
}

uint64_t forward_dp(int a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, void *a6, void *a7)
{
  if (a1 >= -1)
  {
    v13 = (a1 + 2);
    v14 = a4;
    v15 = a5;
    do
    {
      *v14++ = 0;
      *v15++ = 0;
      --v13;
    }

    while (v13);
  }

  result = heap_Alloc(a7, 584);
  if (result)
  {
    *(result + 544) = 0;
    *(result + 536) = 0;
    *result = 0;
    *(result + 8) = 0u;
    *(result + 552) = 0u;
    *(result + 568) = 0u;
    *(result + 568) = 1;
    *a4 = result;
    *a5 = result;
    if (a1 <= 0)
    {
      v19 = a1;
LABEL_22:
      v27 = &a5[v19];
      v28 = *v27;
      if (*v27)
      {
        v29 = 0;
        while (1)
        {
          result = add_to_lattice(v28, v29, 0, a1, 0, a4, a5, v17, a6, a7);
          if (!result)
          {
            break;
          }

          v29 = result;
          v28 = *(v28 + 560);
          if (!v28)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
        result = add_to_lattice(0, 0, 0, a1, 0, a4, a5, v17, a6, a7);
        if (result)
        {
LABEL_28:
          if ((a1 & 0x80000000) == 0)
          {
            v30 = 0;
            do
            {
              for (i = a4[++v30]; i; i = *(i + 552))
              {
                v32 = *(i + 544);
                if (v32)
                {
                  v33 = *(i + 280);
                  v34 = *(i + 24) + *(v33 + 8) + *(v33 + 16);
                  *(i + 8) = v34;
                  *(i + 536) = v33;
                  if (v32 >= 1)
                  {
                    v35 = i + 280;
                    do
                    {
                      v36 = *v35;
                      v37 = *(v35 - 256) + *(*v35 + 8) + *(*v35 + 16);
                      if (v37 < v34)
                      {
                        *(i + 8) = v37;
                        *(i + 536) = v36;
                        v34 = v37;
                      }

                      v35 += 8;
                      --v32;
                    }

                    while (v32);
                  }
                }

                else
                {
                  *(i + 8) = 1000000;
                  *(i + 536) = 0;
                }
              }
            }

            while (v30 != a1 + 1);
          }

          return v27[1];
        }
      }
    }

    else
    {
      v18 = 0;
      v19 = a1;
      v20 = a1;
      while (v18 >= v19)
      {
LABEL_19:
        ++v18;
        --v20;
        if (v18 == v19)
        {
          goto LABEL_22;
        }
      }

      v21 = 0;
      v38 = v19;
      v39 = a3;
      while (1)
      {
        address = box_hash_get_address(v18, v21);
        leading_word = box_hash_get_leading_word(a3, v18, v21, address);
        if (leading_word)
        {
          break;
        }

LABEL_18:
        ++v21;
        v19 = v38;
        a3 = v39;
        if (v21 == v20)
        {
          goto LABEL_19;
        }
      }

      v24 = leading_word;
      while (1)
      {
        v25 = a5[v18];
        if (v25)
        {
          break;
        }

        result = add_to_lattice(0, 0, v24, v18, v21, a4, a5, v17, a6, a7);
        if (!result)
        {
          return result;
        }

LABEL_17:
        v24 = v24[3];
        if (!v24)
        {
          goto LABEL_18;
        }
      }

      v26 = 0;
      while (1)
      {
        result = add_to_lattice(v25, v26, v24, v18, v21, a4, a5, v17, a6, a7);
        if (!result)
        {
          break;
        }

        v26 = result;
        v25 = *(v25 + 560);
        if (!v25)
        {
          goto LABEL_17;
        }
      }
    }
  }

  return result;
}

uint64_t add_lattice_word_to_cyk_table(void *a1, uint64_t a2, int *a3, void *a4)
{
  leading_tree = cyk_hash_get_leading_tree(a1, a3[144], a3[145]);
  if (leading_tree)
  {
    while (*(leading_tree + 32) || *(leading_tree + 48) != **a3)
    {
      leading_tree = *(leading_tree + 88);
      if (!leading_tree)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    result = heap_Alloc(a4, 96);
    if (!result)
    {
      return result;
    }

    v9 = result;
    v10 = **a3;
    *result = *(*a3 + 8);
    *(result + 32) = 0;
    *(result + 88) = 0;
    *(result + 48) = v10;
    *(result + 24) = *(*a3 + 16);
    *(result + 40) = 0;
    v11 = a3[144];
    v12 = a3[145];
    *(result + 72) = v11;
    *(result + 76) = v12;
    *(result + 8) = -1;
    v13 = cyk_hash_get_leading_tree(a1, v11, v12);
    if (v13)
    {
      do
      {
        v14 = v13;
        v13 = *(v13 + 88);
      }

      while (v13);
      *(v14 + 88) = v9;
    }

    else if ((cyk_hash_add_leading_tree(a1, v9, a3[144], a3[145], a4) & 0x1FFF) == 0xA)
    {
      heap_Free(a4, v9);
      return 0;
    }
  }

  return 1;
}

uint64_t add_word_to_cyk_table(void *a1, uint64_t a2, int **a3, void *a4)
{
  if ((*a3)[142] != 1)
  {
    return 0;
  }

  v5 = a3;
  while (1)
  {
    v5 = v5[3];
    if (!v5 || (*v5)[143] == 1)
    {
      break;
    }

    result = add_lattice_word_to_cyk_table(a1, a2, *v5, a4);
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

uint64_t add_unknown_to_cyk_table(uint64_t a1, int a2, int a3, char *__s1, const char *a5, uint64_t **a6, void *a7, int a8, uint64_t a9, void *a10)
{
  number_of_symbol = get_number_of_symbol(a6, __s1);
  result = 0;
  v18 = a3 - a2;
  if (a3 >= a2 && number_of_symbol != -1)
  {
    result = heap_Alloc(a10, (2 * (v18 + 1)) | 1u);
    if (result)
    {
      v19 = result;
      if (mbs2sjis(a1, a2, v18 + 1, result, (2 * (v18 + 1)) | 1u) == -1)
      {
        heap_Free(a10, v19);
        return 0;
      }

      v20 = unknown_info_create(v19, __s1, a5, "0", a10);
      heap_Free(a10, v19);
      if (!v20)
      {
        return 0;
      }

      if (*(a9 + 68))
      {
        v21 = a2 + 1;
      }

      else
      {
        v21 = a2;
      }

      result = heap_Alloc(a10, 96);
      if (result)
      {
        v22 = result;
        *result = number_of_symbol;
        *(result + 32) = 0;
        *(result + 88) = 0;
        *(result + 24) = 0;
        *(result + 40) = 0;
        *(result + 48) = v20;
        *(result + 72) = v21;
        *(result + 76) = v18;
        *(result + 80) = 0;
        *(result + 8) = -1;
        leading_tree = cyk_hash_get_leading_tree(a7, v21, v18);
        if (leading_tree)
        {
          do
          {
            v24 = leading_tree;
            leading_tree = *(leading_tree + 88);
          }

          while (leading_tree);
          *(v24 + 88) = v22;
          return 1;
        }

        return (cyk_hash_add_leading_tree(a7, v22, v21, v18, a10) & 0x1FFF) != 0xA;
      }
    }
  }

  return result;
}

void *backward_as(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t **a7, void *a8, uint64_t a9, void *a10)
{
  v16 = heap_Alloc(a10, 48);
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  v16[1] = 0u;
  v16[2] = 0u;
  *v16 = 0u;
  v18 = *(a1 + 8);
  v19 = heap_Alloc(a10, 48);
  if (!v19)
  {
    v17[1] = 0;
    goto LABEL_26;
  }

  v50 = a6;
  v51 = a7;
  v21 = 0;
  v22 = a1;
  v23 = 0;
  v24 = 0;
  v48 = v22;
  v49 = 0;
  *v19 = v22;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = 0;
  v19[5] = v18;
  v17[1] = v19;
  v53 = a4;
  v54 = a8;
  v52 = a2;
  while (1)
  {
    ++v21;
    if ((*(a4 + 1320) & 0x80000000) == 0)
    {
      break;
    }

LABEL_7:
    v26 = v17;
    while (v19)
    {
      v27 = v19;
      v28 = v26;
      v19 = v19[1];
      v26 = v27;
      if (!v19)
      {
        v29 = v28[1];
        v28[1] = v27[2];
        goto LABEL_12;
      }
    }

    v29 = 0;
LABEL_12:
    v30 = *v29;
    if (*(*v29 + 568) == 1)
    {
      add_word_to_cyk_table(a8, v20, v29, a10);
      if (++v23 >= a2)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v56 = v24;
      v57 = v21;
      if (v30[136] >= 1)
      {
        v31 = 0;
        do
        {
          v32 = *(v29 + 32);
          v33 = &v30[2 * v31];
          v34 = *(v33 + 35);
          v35 = *(v33 + 3);
          v37 = *(v34 + 8);
          v36 = *(v34 + 16);
          v38 = heap_Alloc(a10, 48);
          if (!v38)
          {
            return 0;
          }

          v39 = v36 + v32 + v35;
          *v38 = v34;
          v38[1] = 0;
          v38[2] = 0;
          v38[3] = v29;
          v38[4] = v39;
          v38[5] = v39 + v37;
          v17[1] = mas_list_insert(v38, v17[1]);
          ++v31;
          v30 = *v29;
        }

        while (v31 < *(*v29 + 544));
      }

      *(v29 + 8) = 0;
      *(v29 + 16) = 0;
      if (v56)
      {
        *(v56 + 8) = v29;
      }

      else
      {
        v49 = v29;
      }

      v24 = v29;
      a4 = v53;
      a8 = v54;
      a2 = v52;
      v21 = v57;
    }

    v19 = v17[1];
    if (!v19)
    {
      goto LABEL_30;
    }
  }

  if (kaldi::nnet1::UpdatableComponent::IsUpdatable(*(a4 + 1320)) != 1)
  {
    v19 = v17[1];
    goto LABEL_7;
  }

  if (v23)
  {
LABEL_30:
    as_list_free_all(v17, a10);
    as_list_free_all(v49, a10);
    return a8;
  }

  v41 = 0;
  v42 = *(v48 + 536);
  for (i = v42; ; v42 = *(i + 536))
  {
    v44 = *(i + 576);
    v45 = v41;
    while (!v42)
    {
      v46 = v44 - 1;
      v41 = v45;
      if (v44 >= 1)
      {
        v46 = v44;
        while (1)
        {
          v41 = *(a5 + 8 * --v46);
          if (v41)
          {
            break;
          }

          if (v46 <= 0)
          {
            v41 = 0;
            v46 = -1;
            break;
          }
        }
      }

      if (*(a4 + 68))
      {
        v47 = v44 - 2;
      }

      else
      {
        v47 = v44 - 1;
      }

      if (!add_unknown_to_cyk_table(v50, v46 - (*(a4 + 68) != 0), v47, (a4 + 136), (a4 + 200), v51, a8, v25, a4, a10))
      {
        goto LABEL_49;
      }

      v42 = 0;
      v45 = 0;
      i = v41;
      if (v41)
      {
        goto LABEL_46;
      }
    }

    v41 = v45;
    i = v42;
LABEL_46:
    if (*(i + 568) == 1)
    {
      goto LABEL_30;
    }

    if (!add_lattice_word_to_cyk_table(a8, v20, i, a10))
    {
      break;
    }
  }

LABEL_49:
  cyk_hash_free(a8, a10);
LABEL_26:
  as_list_free_all(v17, a10);
  return 0;
}