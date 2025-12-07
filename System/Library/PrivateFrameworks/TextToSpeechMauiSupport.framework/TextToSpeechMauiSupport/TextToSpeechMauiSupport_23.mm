uint64_t hlp_RecursiveAddBestAnchorsForSublist(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7, unsigned __int16 *a8, _WORD *a9)
{
  v10 = 0;
  v61 = 0;
  *a9 = -1;
  if (a3 < a4 && a6 < a7)
  {
    v13 = a3;
    if (!a8 || (v15 = a8[4]) == 0)
    {
LABEL_9:
      v60 = 0;
      v61 = 0;
      v18 = a3 + 1;
      v19 = a6;
      do
      {
        v20 = StringList_GetAt(a2, v13);
        v21 = StringList_GetAt(a5, v19);
        v22 = v19 + 1;
        if (!cstdlib_strcmp(v20, v21))
        {
          appended = hlp_RecursiveAddBestAnchorsForSublist(a1, a2, v18, a4, a5, (v19 + 1), a7, a8, &v60);
          if ((appended & 0x80000000) != 0)
          {
            goto LABEL_20;
          }

          v24 = v60 == 0xFFFFLL ? 0 : *a8 + 16 * v60;
          appended = hlp_AppendCombinedResult(a1, v13, v19, v24, &v61, &v60 + 1);
          if ((appended & 0x80000000) != 0)
          {
            goto LABEL_20;
          }
        }

        ++v19;
      }

      while (a7 > v22);
      v25 = a8;
      appended = hlp_RecursiveAddBestAnchorsForSublist(a1, a2, v18, a4, a5, a6, a7, a8, &v60);
      if ((appended & 0x80000000) != 0)
      {
LABEL_20:
        v10 = appended;
        goto LABEL_59;
      }

      if (v60 == 0xFFFFLL)
      {
        v26 = 0;
      }

      else
      {
        v26 = *a8 + 16 * v60;
      }

      v27 = hlp_AppendCombinedResult(a1, 65534, 65534, v26, &v61, &v60 + 1);
      if ((v27 & 0x80000000) == 0)
      {
        v28 = v61;
        if (v61 && (v29 = *v61) != 0)
        {
          v30 = 0;
          v31 = 0;
          v32 = -1;
          v33 = -1;
          do
          {
            v34 = 0;
            do
            {
              v35 = v34;
              v36 = v29[2 * v34++];
            }

            while (v36 != -1);
            if (v35 <= v31)
            {
              if (v35 && v35 == v31)
              {
                v40 = *v29;
                if (v40 == 0xFFFF)
                {
                  v42 = 0;
                }

                else
                {
                  v41 = 0;
                  v42 = 0;
                  v43 = v29;
                  do
                  {
                    v42 += (v40 - v43[1]) * (v40 - v43[1]);
                    v43 = &v29[2 * ++v41];
                    v40 = *v43;
                  }

                  while (v40 != 0xFFFF);
                }

                if (v42 < v33)
                {
                  v32 = v30;
                  v33 = v42;
                }
              }
            }

            else
            {
              v37 = *v29;
              if (v37 == 0xFFFF)
              {
                v33 = 0;
              }

              else
              {
                v38 = 0;
                v33 = 0;
                v39 = v29;
                do
                {
                  v33 += (v37 - v39[1]) * (v37 - v39[1]);
                  v39 = &v29[2 * ++v38];
                  v37 = *v39;
                }

                while (v37 != 0xFFFF);
              }

              v32 = v30;
              v31 = v35;
            }

            v29 = v61[++v30];
          }

          while (v29);
        }

        else
        {
          v32 = -1;
        }

        v44 = v25[4];
        if (v44 == v25[5])
        {
          v10 = 2347769856;
          if (v44 > 0xFFFC)
          {
            goto LABEL_59;
          }

          v45 = heap_Realloc(*(a1 + 8), *v25, 16 * v44 + 32);
          *v25 = v45;
          if (!v45)
          {
            log_OutPublic(*(a1 + 32), "CLM", 50000, 0);
            v10 = 2347769866;
            goto LABEL_59;
          }

          v25[5] += 2;
          LODWORD(v44) = v25[4];
        }

        else
        {
          v45 = *v25;
        }

        v46 = (v45 + 16 * v44);
        *v46 = v13;
        v46[1] = a6;
        if (v32 == 0xFFFF)
        {
          v53 = v45 + 16 * v44;
          *(v53 + 4) = 0;
          *(v53 + 8) = 0;
        }

        else
        {
          v47 = 0;
          do
          {
            v48 = v47;
            v49 = v47;
            v50 = *(v28[v32] + 4 * v47++);
          }

          while (v50 != -1);
          *(v45 + 16 * v44 + 4) = v48;
          v51 = heap_Calloc(*(a1 + 8), 4, v49);
          v52 = *v25 + 16 * v25[4];
          *(v52 + 8) = v51;
          cstdlib_memmove(v51, v28[v32], 4 * *(v52 + 4));
          LOWORD(v44) = v25[4];
        }

        *a9 = v44;
        ++v25[4];
      }

      v10 = v27;
      goto LABEL_59;
    }

    v16 = (*a8 + 2);
    while (__PAIR64__(*v16, *(v16 - 1)) != __PAIR64__(a6, a3))
    {
      v16 += 8;
      if (!--v15)
      {
        goto LABEL_9;
      }
    }

    v10 = 0;
  }

LABEL_59:
  v54 = v61;
  if (v61)
  {
    v55 = *v61;
    if (*v61)
    {
      v56 = 0;
      do
      {
        heap_Free(*(a1 + 8), v55);
        v55 = *(v54 + 8 * ++v56);
      }

      while (v55);
    }

    heap_Free(*(a1 + 8), v54);
  }

  return v10;
}

uint64_t hlp_Align(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  StringList_GetCountStrings(a2);
  StringList_GetCountStrings(a3);
  v24 = a6;
  if (a6)
  {
    v25 = *(a6 + 4);
  }

  else
  {
    v25 = 0;
  }

  v10 = 0;
  result = 0;
  v12 = 0;
  v13 = 0;
  v26 = 0;
  v14 = 0;
  v15 = 0;
  while (1)
  {
    if (v24 && v25 > v10)
    {
      v16 = (*(v24 + 8) + 4 * v12);
      v17 = *v16 + v26;
      v18 = v16[1] + v13;
    }

    else
    {
      v17 = v26 + a4;
      v18 = v13 + a5;
    }

    if (v15 < v17)
    {
      v19 = (v18 + ~v14);
      if (v19 >= (v17 + ~v15))
      {
        v19 = (v17 + ~v15);
      }

      v20 = v14 + v19;
      v21 = v15 + v19;
      if (v14 < v18)
      {
        v15 = v21 + 1;
        v14 = v20 + 1;
      }
    }

    if (v15 < v17)
    {
      break;
    }

LABEL_20:
    if (v14 < v18)
    {
      v26 = v18 + v26 - v14;
      while (1)
      {
        result = StringList_InsertAt(a2, v15, "*");
        if (result)
        {
          result = LH_ERROR_to_VERROR(result);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        if (a1)
        {
          result = StringList_InsertAt(a1, v15, "*");
          if (result)
          {
            result = LH_ERROR_to_VERROR(result);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }
        }

        ++v15;
        if (++v14 >= v18)
        {
          v14 = v18;
          break;
        }
      }
    }

    ++v15;
    ++v14;
    v10 = ++v12;
    if (v12 > v25)
    {
      return result;
    }
  }

  v13 = v17 + v13 - v15;
  while (1)
  {
    result = StringList_InsertAt(a3, v14, "*");
    if (result)
    {
      result = LH_ERROR_to_VERROR(result);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    ++v14;
    if (++v15 >= v17)
    {
      v15 = v17;
      goto LABEL_20;
    }
  }
}

uint64_t CLM_MergeSubsequentInsertionAndDeletions(uint64_t a1, uint64_t a2)
{
  v4 = 2347769856;
  CountStrings = StringList_GetCountStrings(a1);
  if (CountStrings == StringList_GetCountStrings(a2))
  {
    if (StringList_GetCountStrings(a1))
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = StringList_GetAt(a1, v7);
        if (!cstdlib_strcmp(v8, "*"))
        {
          v9 = StringList_GetAt(a2, v7);
          v10 = cstdlib_strcmp(v9, "*");
          if (v10 && v7)
          {
            v11 = v7 - 1;
            v12 = StringList_GetAt(a2, (v7 - 1));
            if (!cstdlib_strcmp(v12, "*"))
            {
              goto LABEL_15;
            }
          }

          else
          {
            v11 = v7;
            if (!v10)
            {
              goto LABEL_15;
            }
          }

          v11 = v6 + 1;
          if (v6 + 1 < StringList_GetCountStrings(a2))
          {
            v13 = StringList_GetAt(a2, (v6 + 1));
            if (!cstdlib_strcmp(v13, "*"))
            {
LABEL_15:
              StringList_RemoveAt(a1, v7);
              StringList_RemoveAt(a2, v11);
              goto LABEL_6;
            }
          }
        }

        ++v7;
LABEL_6:
        v6 = v7;
      }

      while (v7 < StringList_GetCountStrings(a1));
    }

    v14 = StringList_GetCountStrings(a1);
    if (v14 == StringList_GetCountStrings(a2))
    {
      return 0;
    }

    else
    {
      return 2347769856;
    }
  }

  return v4;
}

uint64_t CLM_PhonList_InsertAt(uint64_t a1, unsigned int a2, char *a3)
{
  result = StringList_InsertAt(a1, a2, a3);
  if (result)
  {

    return LH_ERROR_to_VERROR(result);
  }

  return result;
}

uint64_t CLM_PhonList_Append(uint64_t a1, char *a2)
{
  result = StringList_Append(a1, a2);
  if (result)
  {

    return LH_ERROR_to_VERROR(result);
  }

  return result;
}

uint64_t hlp_CalcDistOfAnchorsInResult(unsigned __int16 *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *a1;
  if (v1 == 0xFFFF)
  {
    return 0;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = a1;
    do
    {
      v3 += (v1 - v4[1]) * (v1 - v4[1]);
      v4 = &a1[2 * ++v2];
      v1 = *v4;
    }

    while (v1 != 0xFFFF);
  }

  return v3;
}

uint64_t hlp_AppendCombinedResult(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t *a5, unsigned __int16 *a6)
{
  v12 = *a5;
  if (*a6)
  {
    v13 = 0;
    do
    {
      v14 = v13;
    }

    while (*(v12 + 8 * v13++));
    if (*a6 - 1 != v14)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v14 = 0;
  }

  v16 = heap_Realloc(*(a1 + 8), v12, 8 * *a6 + 16);
  *a5 = v16;
  if (v16)
  {
    v17 = *a6 + 2;
    *a6 = v17;
    if (v14 < v17)
    {
      v18 = v14;
      do
      {
        *(*a5 + 8 * v18++) = 0;
      }

      while (v17 != v18);
    }

LABEL_11:
    v20 = a2 != 65534 && a3 != 65534;
    v21 = v20;
    if (a4)
    {
      v21 = *(a4 + 4) + v20;
    }

    *(*a5 + 8 * v14) = heap_Calloc(*(a1 + 8), 1, 4 * v21 + 4);
    if (v20)
    {
      v22 = *(*a5 + 8 * v14);
      *v22 = a2;
      v22[1] = a3;
      v23 = 1;
      if (!a4)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v23 = 0;
      if (!a4)
      {
LABEL_27:
        result = 0;
        *(*(*a5 + 8 * v14) + 4 * v23) = -1;
        return result;
      }
    }

    if (*(a4 + 4))
    {
      v24 = 0;
      v25 = v23;
      v26 = 4 * v23;
      do
      {
        *(*(*a5 + 8 * v14) + v26 + 4 * v24) = *(*(a4 + 8) + 4 * v24);
        ++v24;
      }

      while (v24 < *(a4 + 4));
      LOWORD(v23) = v25 + v24;
    }

    goto LABEL_27;
  }

  log_OutPublic(*(a1 + 32), "CLM", 50000, 0);
  return 2347769866;
}

uint64_t CLM_EnumerateLanguages(uint64_t a1, uint64_t *a2, _DWORD *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v8 = a6;
  v44 = *MEMORY[0x277D85DE8];
  v40 = 0;
  v39 = 0;
  v14 = 2347769856;
  v38 = 0;
  *a3 = 0;
  if (!CLM_FindNrOfLanguages(a1, a5, a6, a7, v43, 0x64u, v42, a3))
  {
    v15 = *a3;
    if (v15)
    {
      v16 = heap_Calloc(*(*(a1 + 24) + 8), v15, 24);
      *a2 = v16;
      if (!v16)
      {
        log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50000, 0);
        return 2347769866;
      }

      if (*a3)
      {
        v17 = 0;
        v34 = 0;
        v33 = v7;
        while (1)
        {
          cstdlib_strcpy((v16 + 24 * v17), &v43[4 * v17]);
          if (a4)
          {
            if (a4 != 1)
            {
              v21 = v42[v17];
              goto LABEL_13;
            }

            v18 = *(*(a1 + 24) + 8);
            v19 = v42[v17];
          }

          else
          {
            v18 = *(*(a1 + 24) + 8);
            v19 = v42[v17];
          }

          *(*a2 + 24 * v17 + 16) = heap_Calloc(v18, v19, 24);
          v20 = *a2 + 24 * v17;
          if (!*(v20 + 16))
          {
            v30 = 2347769866;
            v29 = 50000;
LABEL_34:
            log_OutPublic(*(*(a1 + 24) + 32), "CLM", v29, 0);
            v31 = v30;
            goto LABEL_35;
          }

          v21 = v42[v17];
          *(v20 + 8) = v21;
LABEL_13:
          v40 = v7;
          if (v21)
          {
            v22 = 0;
            for (i = 0; i < v42[v17]; ++i)
            {
              LangRecord = CLM_FindLangRecord(a5, v8, &v40, (*a2 + 24 * v17));
              if (!LangRecord)
              {
                v29 = 50003;
                v30 = 2347769856;
                goto LABEL_34;
              }

              v25 = LangRecord;
              if (a4)
              {
                if (a4 == 1)
                {
                  v37 = 0;
                  *(*(*a2 + 24 * v17 + 16) + v22) = LangRecord;
                  *(*(*a2 + 24 * v17 + 16) + v22 + 8) = &LangRecord[cstdlib_strlen(LangRecord) + 1];
                  if (cstdlib_strlen(*(*(*a2 + 24 * v17 + 16) + v22 + 8)))
                  {
                    v26 = CLM_SplitWordInPhonemes(*(a1 + 24), *(*(*a2 + 24 * v17 + 16) + v22 + 8), v41, 0xC8u, 0, &v37);
                    if ((v26 & 0x80000000) != 0 || v37)
                    {
                      v27 = (*(*a2 + 24 * v17 + 16) + v22);
                      log_OutText(*(*(a1 + 24) + 32), "CLM", 1, 0, "WARNING CLM %s to %s : invalid mapping %s %s", (*a2 + 24 * v17), (a1 + 56), *v27, v27[1]);
                      v26 = 0;
                      v41[0] = 0;
                    }

                    v34 = v26;
                    v36 = 0;
                    memset(v35, 0, sizeof(v35));
                    Allocator = ooc_utils_createAllocator(v35, *(a1 + 32), *(a1 + 40));
                    if (Allocator || (Allocator = PNEW_StringList_Con(v35, *(a1 + 32), *(a1 + 40), (*(*a2 + 24 * v17 + 16) + v22 + 16))) != 0 || (Allocator = StringList_FromSplitString(*(*(*a2 + 24 * v17 + 16) + v22 + 16), v41, 0x20u)) != 0)
                    {
                      v34 = LH_ERROR_to_VERROR(Allocator);
                      goto LABEL_37;
                    }
                  }
                }

                else
                {
                  *(*a2 + 24 * v17 + 8) = LangRecord;
                }
              }

              else
              {
                *(*(*a2 + 24 * v17 + 16) + v22) = LangRecord;
                *(*(*a2 + 24 * v17 + 16) + v22 + 16) = &LangRecord[cstdlib_strlen(LangRecord) + 1];
                *(*(*a2 + 24 * v17 + 16) + v22 + 8) = nuance_pcre_compile(*(a1 + 168), *(a1 + 176), v25, 0, &v39, &v38, 0);
              }

              ++v40;
              v22 += 24;
            }
          }

          v16 = *a2;
          *(*a2 + 24 * v17++ + 4) = a4;
          v7 = v33;
          if (v17 >= *a3)
          {
LABEL_37:
            v31 = v34;
            v14 = v34;
            if ((v34 & 0x80000000) == 0)
            {
              return v14;
            }

LABEL_35:
            v14 = v31;
            CLM_EmptyLanguageStruct(a1, a2, v17);
            return v14;
          }
        }
      }
    }

    return 0;
  }

  return v14;
}

BOOL CLM_FindNrOfLanguages(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, void *a5, unsigned int a6, void *a7, _DWORD *a8)
{
  v12 = a4;
  v22 = 0;
  *a8 = 0;
  cstdlib_memset(__b, 0, 4uLL);
  cstdlib_memset(a5, 0, 4 * a6);
  cstdlib_memset(a7, 0, 4 * a6);
  if (v12 <= a3)
  {
    do
    {
      if (v12 >= a3)
      {
        break;
      }

      cstdlib_strncpy(__b, (a2 + v12), 3uLL);
      result = CLM_IsSeperationRecord(a2, v12);
      if (!result)
      {
        return result;
      }

      if (CLM_FindLanguageInArray(a5, a6, a7, __b, &v22))
      {
        if (v22 >= a6)
        {
          goto LABEL_2;
        }

        cstdlib_strcpy(a5 + 4 * v22, __b);
        ++*a8;
      }

      v17 = 0;
      v18 = (a2 + v12);
      v19 = a3 - 1 - v12;
      do
      {
        if (!*v18++)
        {
          ++v17;
        }

        ++v12;
      }

      while (v17 <= 1 && v19-- != 0);
    }

    while (a3 != v12);
    return 0;
  }

  else
  {
LABEL_2:
    log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50003, 0);
    return 1;
  }
}

uint64_t CLM_FindLangRecord(uint64_t a1, unsigned int a2, unsigned int *a3, const char *a4)
{
  cstdlib_memset(__b, 0, 4uLL);
  cstdlib_strncpy(__b, (a1 + *a3), 3uLL);
  if (cstdlib_strcmp(a4, __b))
  {
    v8 = 0;
    do
    {
      v9 = *a3;
      if (a2 <= v9 || v8)
      {
        break;
      }

      v11 = 0;
      v12 = a2 - v9;
      do
      {
        if (!*(a1 + v9))
        {
          ++v11;
        }

        v13 = v11 > 1 || a2 - 1 == v9;
        *a3 = ++v9;
        --v12;
      }

      while (!v13);
      v8 = v12 == 0;
      cstdlib_strncpy(__b, (a1 + v9), 3uLL);
    }

    while (cstdlib_strcmp(a4, __b));
  }

  if (*a3 >= a2)
  {
    return 0;
  }

  else
  {
    return a1 + *a3 + 3;
  }
}

void *CLM_EmptyLanguageStruct(void *result, uint64_t *a2, unsigned int a3)
{
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = result;
      if (a3)
      {
        v6 = 0;
        v7 = a3;
        while (1)
        {
          v8 = v4 + 24 * v6;
          v9 = *(v8 + 4);
          if (v9 == 1)
          {
            break;
          }

          if (!v9)
          {
            v12 = *(v8 + 8);
            v11 = (v8 + 8);
            v10 = v12;
            v14 = (v11 + 2);
            v13 = *(v11 + 1);
            if (v12)
            {
              v15 = 0;
              v16 = 8;
              do
              {
                if (*(v13 + v16))
                {
                  heap_Free(*(v5[3] + 8), *(v13 + v16));
                  v13 = *v14;
                  *(*v14 + v16) = 0;
                  v10 = *v11;
                }

                ++v15;
                v16 += 24;
              }

              while (v15 < v10);
            }

LABEL_20:
            heap_Free(*(v5[3] + 8), v13);
            *v14 = 0;
            *v11 = 0;
          }

          if (++v6 == v7)
          {
            goto LABEL_22;
          }
        }

        v18 = *(v8 + 8);
        v11 = (v8 + 8);
        v17 = v18;
        v14 = (v11 + 2);
        v13 = *(v11 + 1);
        if (v18)
        {
          v19 = 0;
          v20 = 16;
          do
          {
            if (*(v13 + v20))
            {
              v22 = 0;
              memset(v21, 0, sizeof(v21));
              if (!ooc_utils_createAllocator(v21, v5[4], v5[5]))
              {
                OOC_PlacementDeleteObject(v21, *(*v14 + v20));
              }

              v13 = *v14;
              *(*v14 + v20) = 0;
              v17 = *v11;
            }

            ++v19;
            v20 += 24;
          }

          while (v19 < v17);
        }

        goto LABEL_20;
      }

LABEL_22:
      result = heap_Free(*(v5[3] + 8), v4);
      *a2 = 0;
    }
  }

  return result;
}

BOOL CLM_IsSeperationRecord(uint64_t a1, unsigned int a2)
{
  cstdlib_memset(__b, 0, 4uLL);
  cstdlib_strncpy(__b, (a1 + a2), 3uLL);
  return cstdlib_strcmp("dum", __b) || *(a1 + a2 + 3) || *(a1 + a2 + 4);
}

BOOL CLM_FindLanguageInArray(char *__s2, unsigned int a2, uint64_t a3, char *__s1, _DWORD *a5)
{
  v9 = 0;
  if (a2 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = a2;
  }

  while (cstdlib_strcmp(__s1, __s2) && *__s2)
  {
    ++v9;
    __s2 += 4;
    if (v10 == v9)
    {
      return 1;
    }
  }

  *a5 = v9;
  ++*(a3 + 4 * v9);
  return *__s2 == 0;
}

BOOL CLM_FindNextRecordInBuffer(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  v3 = *a3;
  if (v3 <= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = v3;
  }

  if (v3 < a2)
  {
    v5 = 0;
    v6 = ~v3 + v4;
    v7 = (a1 + v3);
    do
    {
      v8 = *v7++;
      LODWORD(v3) = v3 + 1;
      *a3 = v3;
      if (!v8)
      {
        ++v5;
      }
    }

    while (v5 <= 1 && v6-- != 0);
  }

  return v3 == a2;
}

uint64_t CLM_FindSeperationRecord(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  LODWORD(v6) = *a3;
  while (1)
  {
    result = CLM_IsSeperationRecord(a1, v6);
    v6 = *a3;
    if (!result)
    {
      break;
    }

    if (v6 <= a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = v6;
    }

    if (v6 < a2)
    {
      v9 = 0;
      v10 = (a1 + v6);
      v11 = ~v6 + v8;
      do
      {
        v12 = *v10++;
        LODWORD(v6) = v6 + 1;
        *a3 = v6;
        if (!v12)
        {
          ++v9;
        }
      }

      while (v9 <= 1 && v11-- != 0);
    }

    if (v6 == a2)
    {
      return 2347769856;
    }
  }

  *a3 = v6 + 5;
  return result;
}

uint64_t CLM_PreCompileSplitWordRegEx(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v5[1] = 0;
  strcpy(v8, "[#\\$&'\\.789=\\?@A-Z^_a-z]");
  strcpy(v5, "\\*");
  strcpy(v7, "(\\\\)?[!\\?,\\.;:]");
  if (a1[23] || (v6 = 0, __sprintf_chk(v11, 0, 0x1F4uLL, "(%s%s*(%%%s|%%%s+){0,}(&%s%s*(%%%s|%%%s+){0,}){0,})|(%s%s)", v8, v9, v10, v10, v8, v9, v10, v10, v5, v7), v3 = nuance_pcre_compile(a1[21], a1[22], v11, 0, &v6, &v5[1], 0), v2 = 0, (a1[23] = v3) == 0))
  {
    v2 = 2347769856;
    log_OutPublic(*(a1[3] + 32), "CLM", 50003, 0);
  }

  return v2;
}

void *CLM_FreePreCompiledSplitWordRegEx(void *result)
{
  v1 = result[23];
  if (v1)
  {
    v2 = result;
    result = heap_Free(*(result[3] + 8), v1);
    v2[23] = 0;
  }

  return result;
}

uint64_t CLM_PreCompileReplacementRegEx(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = 0;
  strcpy(v7, "(^|[^\\\\])([\\$][0-9]+)");
  if (a1[24] || (v6 = 0, v3 = nuance_pcre_compile(a1[21], a1[22], v7, 0, &v6, &v5, 0), v2 = 0, (a1[24] = v3) == 0))
  {
    v2 = 2347769856;
    log_OutPublic(*(a1[3] + 32), "CLM", 50003, 0);
  }

  return v2;
}

void *CLM_FreePreCompiledReplacementRegEx(void *result)
{
  v1 = result[24];
  if (v1)
  {
    v2 = result;
    result = heap_Free(*(result[3] + 8), v1);
    v2[24] = 0;
  }

  return result;
}

uint64_t CLM_DeleteNonPhoneChars(uint64_t a1, char *__s)
{
  strcpy(__charset, "\t ");
  v4 = *(*(a1 + 24) + 8);
  v5 = cstdlib_strlen(__s);
  v6 = heap_Calloc(v4, 1, v5 + 1);
  if (v6)
  {
    v7 = v6;
    v11 = 0;
    cstdlib_strcpy(v6, __s);
    *__s = 0;
    v8 = extstdlib_strtok_r(v7, __charset, &v11);
    if (v8)
    {
      v9 = v8;
      do
      {
        cstdlib_strcat(__s, v9);
        v9 = extstdlib_strtok_r(0, __charset, &v11);
      }

      while (v9);
    }

    heap_Free(*(*(a1 + 24) + 8), v7);
    return 0;
  }

  else
  {
    log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50000, 0);
    return 2347769866;
  }
}

uint64_t CLM_SplitWordInPhonemes(uint64_t a1, char *__s, char *a3, unsigned int a4, void *a5, _DWORD *a6)
{
  v9 = __s;
  if (a6)
  {
    *a6 = 0;
  }

  if (a3)
  {
    if (a4 <= 2 * cstdlib_strlen(__s))
    {
      return 2347769865;
    }

    *a3 = 0;
  }

  if (a5)
  {
    StringList_Reset(a5);
  }

  v11 = cstdlib_strlen(v9);
  v22 = LhpuCreate(*(a1 + 8));
  if (!v22)
  {
    log_OutPublic(*(a1 + 32), "CLM", 50000, 0);
    return 2347769866;
  }

  v12 = 0;
  v21 = 0;
  v13 = &v9[v11 + 1];
  if (v13 <= v9)
  {
    goto LABEL_31;
  }

  v12 = 0;
  v14 = 1;
  do
  {
    if (*v9 == 18)
    {
      if (a3)
      {
        cstdlib_strcat(a3, " ");
        cstdlib_strcat(a3, "\x12");
      }

LABEL_18:
      v16 = 1;
      goto LABEL_28;
    }

    Symbol = LhplGetSymbol(v9, v22, &v21 + 1, &v21);
    if (Symbol)
    {
      if (Symbol == 1)
      {
        break;
      }

      if (a6)
      {
        *a6 = 1;
      }

      goto LABEL_18;
    }

    if (!v14)
    {
      if (!a3)
      {
        goto LABEL_25;
      }

      cstdlib_strcat(a3, " ");
LABEL_24:
      LhpuGetSymbol();
      cstdlib_strcat(a3, v17);
      goto LABEL_25;
    }

    if (a3)
    {
      goto LABEL_24;
    }

LABEL_25:
    if (a5)
    {
      v18 = v22;
      LhpuGetSymbol();
      v12 = CLM_PhonList_Append(a5, v19);
      if ((v12 & 0x80000000) != 0)
      {
        goto LABEL_30;
      }
    }

    v14 = 0;
    v16 = v21 + 1;
LABEL_28:
    v9 += v16;
  }

  while (v9 < v13);
  v18 = v22;
LABEL_30:
  if (v18)
  {
LABEL_31:
    LhpuRemove(*(a1 + 8), &v22);
  }

  return v12;
}

uint64_t CLM_EscapeMetaChars(uint64_t a1, char *__s, char *a3, unsigned int a4, int a5)
{
  v21 = *MEMORY[0x277D85DE8];
  strcpy(__sa, "^$.[{()|+?*\\/");
  if (a5)
  {
    a3[1] = 115;
    v10 = 2;
    v11 = 92;
  }

  else
  {
    v10 = 1;
    v11 = 94;
  }

  *a3 = v11;
  if (cstdlib_strlen(__s))
  {
    v19 = a1;
    v12 = 0;
    while (1)
    {
      if (cstdlib_strlen(__sa))
      {
        v13 = 0;
        v14 = &__s[v12];
        while (*v14 != __sa[v13])
        {
          if (++v13 >= cstdlib_strlen(__sa))
          {
            goto LABEL_10;
          }
        }

        a3[v10] = 92;
        v16 = v10 + 1;
        v15 = 2;
      }

      else
      {
LABEL_10:
        v14 = &__s[v12];
        v15 = 1;
        v16 = v10;
      }

      a3[v16] = *v14;
      v10 += v15;
      if (v10 + 2 >= a4)
      {
        break;
      }

      if (++v12 >= cstdlib_strlen(__s))
      {
        goto LABEL_14;
      }
    }

    log_OutPublic(*(*(v19 + 24) + 32), "CLM", 50003, 0);
    return 2347769856;
  }

  else
  {
LABEL_14:
    v17 = v10 + 1;
    result = 0;
    if (a5)
    {
      a3[v10] = 92;
      a3[v17] = 115;
      a3[v10 + 2] = 0;
    }

    else
    {
      a3[v10] = 36;
      a3[v17] = 0;
    }
  }

  return result;
}

BOOL CLM_SearchAndReplace(void *a1, _BYTE *a2, char *a3, uint64_t a4, char *__s, uint64_t a6, unsigned int a7)
{
  v46 = *MEMORY[0x277D85DE8];
  v10 = cstdlib_strlen(__s);
  v44 = 0;
  v43 = 0;
  cstdlib_memset(__b, 0, 0x168uLL);
  v39 = v10;
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v37 = a1;
    do
    {
      if (v13 && *a2 == 94)
      {
        break;
      }

      v14 = cstdlib_strlen(__s);
      if (nuance_pcre_exec(a1[21], a1[22], a4, 0, &__s[v13], v14 - v13, 0, 0, __b, 90) < 1)
      {
        break;
      }

      v15 = CLM_InterpretReplacementString(a1, a3, &v43, &v44);
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }

      v16 = v44;
      if (!v44)
      {
        v13 = __b[v11 + 1] + v13 - __b[v11];
      }

      v17 = __b[0];
      v18 = v13;
      if (__b[0])
      {
        do
        {
          *(a6 + v12++) = __s[v18++];
          --v17;
        }

        while (v17);
      }

      v41 = v43;
      if (v16)
      {
        v19 = (v43 + 8);
        for (i = v16; i; --i)
        {
          v21 = *(v19 - 2);
          if (v21 == 1)
          {
            v22 = *(v19 - 1);
            v23 = (2 * v22) | 1;
            v11 = 2 * v22;
            v24 = __b[2 * v22];
            v25 = (__b[v23] - v24);
            if (v25 + v12 >= a7)
            {
LABEL_23:
              v26 = 2347769865;
              v27 = v37[3];
              goto LABEL_37;
            }

            cstdlib_strncpy((a6 + v12), &__s[v24 + v13], v25);
            v12 = __b[v23] + v12 - __b[v11];
          }

          else if (!v21 && *v19)
          {
            if (v12 + cstdlib_strlen(*v19) >= a7)
            {
              goto LABEL_23;
            }

            cstdlib_strcpy((a6 + v12), *v19);
            v12 += cstdlib_strlen(*v19);
          }

          v19 += 2;
        }
      }

      v13 += __b[1];
      a1 = v37;
      CLM_FreeListOfTypes(v37, v41, v16);
      v43 = 0;
    }

    while (v13 < v39);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v28 = v39 - v13;
  if (v39 <= v13)
  {
    v28 = 0;
LABEL_34:
    v34 = v28 + v12;
    if (v34 < a7)
    {
      *(a6 + v34) = 0;
      return v13 == 0;
    }
  }

  else
  {
    LODWORD(v29) = a7 - v12;
    if (a7 >= v12)
    {
      v29 = v29;
    }

    else
    {
      v29 = 0;
    }

    v30 = &__s[v13];
    v31 = (a6 + v12);
    v32 = v39 - v13;
    while (v29)
    {
      v33 = *v30++;
      *v31++ = v33;
      --v29;
      if (!--v32)
      {
        goto LABEL_34;
      }
    }
  }

  v26 = 2347769865;
  v27 = a1[3];
LABEL_37:
  log_OutPublic(*(v27 + 32), "CLM", 50002, 0);
  return v26;
}

uint64_t CLM_InterpretReplacementString(uint64_t a1, char *__s, uint64_t *a3, unsigned int *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  __n = 0;
  v8 = cstdlib_strlen(__s);
  if (v8)
  {
    v9 = *(a1 + 192);
    if (!v9)
    {
      v10 = CLM_PreCompileReplacementRegEx(a1);
      if ((v10 & 0x80000000) != 0)
      {
        return v10;
      }

      v9 = *(a1 + 192);
    }

    nuance_pcre_fullinfo(v9, 0, 1, &__n);
    v11 = *(a1 + 24);
    if (__n)
    {
      v12 = heap_Alloc(*(v11 + 8), __n);
      if (v12)
      {
        v13 = v12;
        *a3 = 0;
        v14 = heap_Alloc(*(*(a1 + 24) + 8), (32 * v8) & 0xFFFFFFFE0);
        *a3 = v14;
        if (v14)
        {
          v26 = a4;
          cstdlib_memset(v14, 0, (32 * v8) & 0xFFFFFFFE0);
          cstdlib_memset(__b, 0, 0x168uLL);
          v15 = 0;
          v16 = 0;
          v17 = v8;
          while (1)
          {
            cstdlib_memcpy(v13, *(a1 + 192), __n);
            if (nuance_pcre_exec(*(a1 + 168), *(a1 + 176), v13, 0, &__s[v16], v17, 0, 0, __b, 90) != 3)
            {
              break;
            }

            if (v30)
            {
              *(*a3 + 16 * v15) = 0;
              *(*a3 + 16 * v15 + 8) = heap_Alloc(*(*(a1 + 24) + 8), v30 + 1);
              v18 = *(*a3 + 16 * v15 + 8);
              if (!v18)
              {
                goto LABEL_26;
              }

              cstdlib_strncpy(v18, &__s[v16], v30);
              *(*(*a3 + 16 * v15++ + 8) + v30) = 0;
            }

            *(*a3 + 16 * v15) = 1;
            cstdlib_strncpy(__dst, &__s[v16 + 1 + v30], v31 + ~v30);
            v19 = 0;
            __dst[v31 + ~v30] = 0;
            v20 = __dst[0];
            if ((__dst[0] - 58) >= 0xF6u)
            {
              v19 = 0;
              v21 = &__dst[1];
              do
              {
                v19 = 10 * v19 + (v20 - 48);
                v22 = *v21++;
                v20 = v22;
              }

              while ((v22 - 58) >= 0xF6u);
            }

            *(*a3 + 16 * v15 + 4) = v19;
            v16 += __b[1];
            ++v15;
            v17 = (v8 - v16);
            if (v8 == v16)
            {
              goto LABEL_25;
            }
          }

          *(*a3 + 16 * v15) = 0;
          *(*a3 + 16 * v15 + 8) = heap_Alloc(*(*(a1 + 24) + 8), (v17 + 1));
          v24 = *(*a3 + 16 * v15 + 8);
          if (v24)
          {
            cstdlib_strncpy(v24, &__s[v16], v17);
            *(*(*a3 + 16 * v15++ + 8) + v17) = 0;
LABEL_25:
            *v26 = v15;
            heap_Free(*(*(a1 + 24) + 8), v13);
            return 0;
          }

LABEL_26:
          v23 = 2347769866;
          heap_Free(*(*(a1 + 24) + 8), v13);
          heap_Free(*(*(a1 + 24) + 8), *a3);
          *a3 = 0;
        }

        else
        {
          v23 = 2347769866;
          heap_Free(*(*(a1 + 24) + 8), v13);
        }
      }

      else
      {
        v23 = 2347769866;
      }

      log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50000, 0);
    }

    else
    {
      log_OutPublic(*(v11 + 32), "CLM", 50003, 0);
      return 2347769856;
    }
  }

  else
  {
    v23 = 0;
    *a4 = 0;
  }

  return v23;
}

void *CLM_FreeListOfTypes(void *result, uint64_t a2, unsigned int a3)
{
  if (a2)
  {
    v4 = result;
    if (a3)
    {
      v5 = a3;
      v6 = (a2 + 8);
      do
      {
        if (*v6)
        {
          heap_Free(*(v4[3] + 8), *v6);
        }

        v6 += 2;
        --v5;
      }

      while (v5);
    }

    v7 = *(v4[3] + 8);

    return heap_Free(v7, a2);
  }

  return result;
}

_BYTE *CLM_cstdlib_atoi(_BYTE *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if ((*result - 58) >= 0xF6u)
    {
      LODWORD(result) = 0;
      v3 = v1 + 1;
      do
      {
        result = (10 * result + (v2 - 48));
        v4 = *v3++;
        v2 = v4;
      }

      while ((v4 - 58) > 0xF5u);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const char *CLM_RemoveBackSlash(const char *result)
{
  if (result)
  {
    v1 = result;
    result = cstdlib_strlen(result);
    if (result >= 1)
    {
      v2 = result;
      LODWORD(v3) = 0;
      do
      {
        v4 = v3;
        v5 = v3 - 1;
        do
        {
          v6 = v4++;
          ++v5;
        }

        while (v6 < v2 && v1[v6] != 92);
        v3 = v4 - 1;
        if (v6 < v2)
        {
          result = cstdlib_strcpy(&v1[v3], &v1[v4]);
          --v2;
        }
      }

      while (v2 > v5);
    }
  }

  return result;
}

uint64_t CLM_RemoveInvalidPhonemes(uint64_t a1, int a2, char *a3, char *a4, _DWORD *a5)
{
  if (a5)
  {
    *a5 = 0;
  }

  v8 = 2347769864;
  if ((safeh_HandleCheck(a1, a2, 63000, 216) & 0x80000000) == 0 && a1)
  {
    log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "CLM RemoveInvalidPhonemes : Begin (%s)", a4);
    if (CLM_GiveLanguageBuffer(a3, *(a1 + 152), *(a1 + 160), 2))
    {
      v9 = CLM_DeleteNonPhoneChars(a1, a4);
      if ((v9 & 0x80000000) != 0)
      {
        return v9;
      }

      else
      {
        v10 = (2 * cstdlib_strlen(a4)) | 1;
        v11 = heap_Alloc(*(*(a1 + 24) + 8), v10);
        if (v11)
        {
          v12 = v11;
          cstdlib_memset(v11, 0, v10);
          v8 = CLM_SplitWordInPhonemes(*(a1 + 24), a4, v12, v10, 0, 0);
          heap_Free(*(*(a1 + 24) + 8), v12);
          if ((v8 & 0x80000000) == 0)
          {
            log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "CLM RemoveInvalidPhonemes : End (%s)", a4);
          }
        }

        else
        {
          log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50000, 0);
          return 2347769866;
        }
      }
    }

    else
    {
      return 2347777677;
    }
  }

  return v8;
}

uint64_t CLM_GiveLanguageBuffer(char *a1, uint64_t a2, unsigned int a3, int a4)
{
  v4 = a2;
  if (a2)
  {
    if (!a3)
    {
      return 0;
    }

    v7 = a3;
    while (LH_stricmp(v4, a1))
    {
      v4 += 24;
      if (!--v7)
      {
        return 0;
      }
    }

    if (*(v4 + 4) != a4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t CLM_ObjOpen(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v18 = 0;
  v19 = 0;
  v5 = 2347769863;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v19);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1, a2, NullHandle, v13))
    {
      inited = InitRsrcFunction(a1, a2, &v18);
      if ((inited & 0x80000000) == 0)
      {
        v14 = heap_Calloc(*(v19 + 8), 1, 216);
        v15 = v19;
        if (!v14)
        {
          log_OutPublic(*(v19 + 32), "CLM", 50000, 0);
          return 2347769866;
        }

        v16 = v14;
        v14[4] = a3;
        v14[5] = a4;
        v14[2] = a2;
        v14[3] = v15;
        *v14 = v18;
        v14[1] = a1;
        inited = nuance_pcre_ObjOpen(a3, a4, (v14 + 21));
        if ((inited & 0x80000000) == 0)
        {
          inited = nuance_pcre_Init(v16[21], v16[22], 0xAu, 10);
          if ((inited & 0x80000000) == 0)
          {
            *a5 = v16;
            *(a5 + 8) = 63000;
            return CLM_ObjReopen(v16, *(a5 + 8));
          }
        }
      }

      return inited;
    }
  }

  return v5;
}

uint64_t CLM_ObjReopen(void *a1, int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = safeh_HandleCheck(a1, a2, 63000, 216);
  v4 = 2347769864;
  if ((v3 & 0x80000000) != 0 || !a1)
  {
    return v4;
  }

  v5 = v3;
  if ((hlp_GetLanguage(*(a1[3] + 40), v13) & 0x80000000) == 0 && !LH_stricmp(a1 + 56, v13))
  {
    return v5;
  }

  CLM_DeInitFromCLMv2Lua(a1);
  Language = CLM_DeInit(a1);
  if ((Language & 0x80000000) != 0)
  {
    return Language;
  }

  memset(__s1, 0, sizeof(__s1));
  v14 = 0;
  Language = hlp_GetLanguage(*(a1[3] + 40), __s2);
  if ((Language & 0x80000000) != 0)
  {
    return Language;
  }

  cstdlib_strcat(__s1, "clm/");
  cstdlib_strcat(__s1, __s2);
  v7 = brokeraux_ComposeBrokerString(a1[3], __s1, 0, 1, __s2, 0, 0, v17, 0x100uLL);
  if (v7 < 0)
  {
    return v7 | 0x8BF02000;
  }

  ObjcForThisApi_0 = getObjcForThisApi_0(a1[3], *a1);
  if (!ObjcForThisApi_0)
  {
    return 2347769856;
  }

  if ((objc_GetAddRefCountedObject(ObjcForThisApi_0, v17, IRefCnt_ObjcLoadCLMData, IRefCnt_ObjcUnloadCLMData, a1, &v14) & 0x80000000) != 0)
  {
    v4 = 0;
    a1[6] = 0;
    *(a1 + 50) = 0;
    return v4;
  }

  v4 = 2347777666;
  v9 = *(v14 + 32);
  a1[6] = v9;
  CLM_UnloadSettings(a1);
  v10 = *(v9 + 40);
  if (!v10)
  {
    return 2347777673;
  }

  v11 = *(v9 + 32);
  if (!v11)
  {
    return 2347777665;
  }

  if (v10 <= 0x12)
  {
    log_OutPublic(*(a1[3] + 32), "CLM", 50003, 0);
    return CLM_InitFromCLMv2Lua(a1, __s2);
  }

  cstdlib_strncpy(a1 + 56, (v11 + 14), 3uLL);
  *(a1 + 59) = 0;
  *(a1 + 60) = *(v11 + 17);
  *(a1 + 61) = *(v11 + 18);
  v16 = 19;
  if ((CLM_EnumerateLanguages(a1, a1 + 9, a1 + 20, 1, *(v9 + 32), *(v9 + 40), 19) & 0x80000000) != 0)
  {
    return 2347777667;
  }

  if (!*(a1 + 20))
  {
    log_OutPublic(*(a1[3] + 32), "CLM", 50003, 0);
    return 2347777667;
  }

  if ((CLM_FindSeperationRecord(*(v9 + 32), *(v9 + 40), &v16) & 0x80000000) != 0)
  {
    return 2347777667;
  }

  if ((CLM_LoadRules(a1, *(v9 + 32), *(v9 + 40), 0, &v16) & 0x80000000) == 0 && (CLM_FindSeperationRecord(*(v9 + 32), *(v9 + 40), &v16) & 0x80000000) == 0 && (CLM_LoadRules(a1, *(v9 + 32), *(v9 + 40), 1, &v16) & 0x80000000) == 0)
  {
    if ((CLM_FindSeperationRecord(*(v9 + 32), *(v9 + 40), &v16) & 0x80000000) != 0 || (CLM_EnumerateLanguages(a1, a1 + 19, a1 + 40, 2, *(v9 + 32), *(v9 + 40), v16) & 0x80000000) != 0)
    {
      return 2347777668;
    }

    v4 = 2347777671;
    if ((CLM_PreCompileSplitWordRegEx(a1) & 0x80000000) == 0 && (CLM_PreCompileReplacementRegEx(a1) & 0x80000000) == 0)
    {
      *(a1 + 16) = 1;
      return CLM_InitFromCLMv2Lua(a1, __s2);
    }
  }

  return v4;
}

uint64_t CLM_ObjClose(uint64_t *a1, int a2)
{
  v3 = 2347769864;
  if ((safeh_HandleCheck(a1, a2, 63000, 216) & 0x80000000) == 0 && a1)
  {
    CLM_DeInitFromCLMv2Lua(a1);
    v4 = CLM_DeInit(a1);
    if ((v4 & 0x80000000) == 0)
    {
      v4 = nuance_pcre_DeInit(a1[21], a1[22]);
      if ((v4 & 0x80000000) == 0)
      {
        v4 = nuance_pcre_ObjClose(a1[21], a1[22]);
      }
    }

    v3 = v4;
    heap_Free(*(a1[3] + 8), a1);
  }

  return v3;
}

uint64_t CLM_DeInit(uint64_t *a1)
{
  CLM_UnloadSettings(a1);
  if (!a1[6])
  {
    return 0;
  }

  ObjcForThisApi_0 = getObjcForThisApi_0(a1[3], *a1);
  if (!ObjcForThisApi_0)
  {
    return 2347769856;
  }

  v3 = a1[6] + 48;

  return objc_ReleaseObject(ObjcForThisApi_0, v3);
}

uint64_t CLM_ConvertTranscription(uint64_t a1, int a2, char *a3, const char *a4, char *a5, char *a6, char *a7, uint64_t a8)
{
  v8 = a8;
  strcpy(__s2, "ANY");
  v54 = 0;
  v52 = 0;
  v53 = 0;
  v16 = -1947197430;
  v51 = 0;
  v17 = 2347769864;
  if ((safeh_HandleCheck(a1, a2, 63000, 216) & 0x80000000) == 0 && a1)
  {
    if (!*(a1 + 64))
    {
      return 2347777672;
    }

    v17 = 2347777674;
    if (a4)
    {
      if (cstdlib_strlen(a4))
      {
        if (v8 && cstdlib_strlen(a4) + 1 > v8)
        {
          return 2347777673;
        }

        v18 = *(*(a1 + 24) + 8);
        v19 = cstdlib_strlen(a4);
        v20 = heap_Alloc(v18, (v19 + 1));
        v21 = v20;
        if (!v20)
        {
          log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50000, 0);
          v25 = 0;
          v26 = 0;
LABEL_26:
          hlp_FreePhonlist(a1, &v53);
          hlp_FreePhonlist(a1, &v52);
          hlp_FreePhonlist(a1, &v51);
          if (v21)
          {
            heap_Free(*(*(a1 + 24) + 8), v21);
          }

          if (v25)
          {
            heap_Free(*(*(a1 + 24) + 8), v25);
          }

          if (v16 >= 0)
          {
            return v26;
          }

          else
          {
            return v16;
          }
        }

        cstdlib_strcpy(v20, a4);
        __src = v21;
        v22 = CLM_RemoveInvalidPhonemes(a1, a2, a3, v21, &v54);
        v23 = v22;
        if (v22 < 0)
        {
          v24 = v22;
          if ((v22 & 0x1FFF) != 0x1E8D)
          {
            v25 = 0;
            v26 = 0;
            v16 = v22;
            goto LABEL_25;
          }
        }

        else if (v54)
        {
          v24 = -1947189627;
        }

        else
        {
          v24 = 0;
        }

        if (!v8)
        {
          v25 = 0;
          v16 = v22;
          v26 = v24;
          goto LABEL_25;
        }

        v49 = v24;
        if (cstdlib_strcmp(a3, __s2))
        {
          if ((~v49 & 0x1E8D) == 0)
          {
            v26 = v49;
            cstdlib_strcpy(a5, __src);
            v25 = 0;
            v16 = v23;
            v21 = __src;
            goto LABEL_26;
          }

          if (!cstdlib_strcmp((a1 + 56), a3))
          {
            cstdlib_strcpy(a5, __src);
            v25 = 0;
            v16 = v23;
            v21 = __src;
            goto LABEL_41;
          }

          __b = heap_Alloc(*(*(a1 + 24) + 8), v8 + 1);
          if (__b)
          {
            v28 = 0;
            if (a6 && a7)
            {
              *a6 = 0;
              *a7 = 0;
              if (cstdlib_strlen(a4) <= 0x95)
              {
                v28 = &v52;
                if (hlp_AllocateAndInitializePhonlists(a1, __src, &v53, &v52, &v51) >= 0)
                {
                  v29 = &v51;
                }

                else
                {
                  v28 = 0;
                  v29 = 0;
                }

                v47 = v29;
              }

              else
              {
                a6 = 0;
                a7 = 0;
                v28 = 0;
                v47 = 0;
              }
            }

            else
            {
              v47 = 0;
            }

            cstdlib_memset(__b, 0, v8 + 1);
            cstdlib_strcpy(__b, __src);
            cstdlib_strcpy(a5, __src);
            v30 = CLM_ApplyRules(a1, *(a1 + 88), *(a1 + 96), a3, __b, a5, v8, v53, v28, v47);
            if (v30)
            {
              if (v30 < 0)
              {
                goto LABEL_71;
              }
            }

            else
            {
              cstdlib_strcpy(__b, a5);
            }

            v30 = CLM_ApplyRules(a1, *(a1 + 120), *(a1 + 128), a3, __b, a5, v8, v53, v47, v28);
            if (v30)
            {
              if (v30 < 0)
              {
                goto LABEL_71;
              }
            }

            else
            {
              cstdlib_strcpy(__b, a5);
            }

            v30 = CLM_ApplyRules(a1, *(a1 + 88), *(a1 + 96), __s2, __b, a5, v8, v53, v28, v47);
            if (v30)
            {
              if (v30 < 0)
              {
                goto LABEL_71;
              }
            }

            else
            {
              cstdlib_strcpy(__b, a5);
            }

            v31 = CLM_ApplyPhonemeMapping(a1, *(a1 + 72), *(a1 + 80), a3, __b, a5, v8, v53, v47, v28);
            if (v31 < 0)
            {
              if ((v31 & 0x1FFF) != 0)
              {
                v16 = v31;
              }

              else
              {
                v16 = -1947189621;
              }

              v26 = v49;
              v21 = __src;
              v25 = __b;
              goto LABEL_26;
            }

            cstdlib_strcpy(__b, a5);
            v30 = CLM_ApplyRules(a1, *(a1 + 104), *(a1 + 112), a3, __b, a5, v8, v53, v28, v47);
            if (v30)
            {
              if (v30 < 0)
              {
                v32 = (v30 & 0x1FFF) == 0;
                v33 = 7819;
LABEL_72:
                if (v32)
                {
                  v16 = v33;
                }

                else
                {
                  v16 = v30;
                }

                v26 = v49;
LABEL_76:
                v21 = __src;
                v25 = __b;
                goto LABEL_26;
              }
            }

            else
            {
              cstdlib_strcpy(__b, a5);
            }

            v30 = CLM_ApplyRules(a1, *(a1 + 104), *(a1 + 112), __s2, __b, a5, v8, v53, v47, v28);
            if (v30)
            {
              if (v30 < 0)
              {
LABEL_71:
                v32 = (v30 & 0x1FFF) == 0;
                v33 = -1947189621;
                goto LABEL_72;
              }
            }

            else
            {
              cstdlib_strcpy(__b, a5);
            }

            v34 = a3;
            v25 = __b;
            v35 = CLM_ApplyRules(a1, *(a1 + 136), *(a1 + 144), v34, __b, a5, v8, v53, v28, v47);
            if (v35)
            {
              v21 = __src;
              if (v35 < 0)
              {
                if ((v35 & 0x1FFF) != 0)
                {
                  v16 = v35;
                }

                else
                {
                  v16 = -1947189621;
                }

                goto LABEL_41;
              }
            }

            else
            {
              cstdlib_strcpy(__b, a5);
              v21 = __src;
            }

            v36 = CLM_RemoveInvalidPhonemes(a1, a2, (a1 + 56), a5, &v54);
            v16 = v36;
            if ((v36 & 0x80000000) == 0)
            {
              v26 = v49;
              if (v54)
              {
                v26 = -1947189626;
                goto LABEL_26;
              }

LABEL_88:
              if (!a6)
              {
                goto LABEL_26;
              }

              if (a7)
              {
                *a6 = 0;
                *a7 = 0;
                CountStrings = StringList_GetCountStrings(v53);
                if (v47)
                {
                  v38 = StringList_GetCountStrings(*v47);
                }

                else
                {
                  v38 = 0;
                }

                if (CountStrings)
                {
                  if (v38 == CountStrings && (CLM_MergeSubsequentInsertionAndDeletions(v53, *v47) & 0x80000000) == 0)
                  {
                    v39 = StringList_GetCountStrings(v53);
                    if (v39 == StringList_GetCountStrings(*v47))
                    {
                      if (v39)
                      {
                        v40 = 0;
                        while (1)
                        {
                          v41 = cstdlib_strlen(a6);
                          v42 = StringList_GetAt(v53, v40);
                          if (v41 + cstdlib_strlen(v42) + 1 >= v8)
                          {
                            break;
                          }

                          v43 = cstdlib_strlen(a7);
                          v44 = StringList_GetAt(*v47, v40);
                          if (v43 + cstdlib_strlen(v44) + 1 >= v8)
                          {
                            break;
                          }

                          v45 = StringList_GetAt(v53, v40);
                          cstdlib_strcat(a6, v45);
                          cstdlib_strcat(a6, " ");
                          v46 = StringList_GetAt(*v47, v40);
                          cstdlib_strcat(a7, v46);
                          cstdlib_strcat(a7, " ");
                          if (v39 <= ++v40)
                          {
                            goto LABEL_76;
                          }
                        }

                        *a6 = 0;
                        *a7 = 0;
                      }
                    }
                  }
                }

                goto LABEL_76;
              }

LABEL_25:
              v21 = __src;
              goto LABEL_26;
            }

            v26 = 7821;
            if ((v36 & 0x1FFF) == 0x1E8D)
            {
              goto LABEL_88;
            }

LABEL_41:
            v26 = v49;
            goto LABEL_26;
          }

          log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50000, 0);
          v25 = 0;
        }

        else
        {
          v25 = 0;
          v16 = -1947189621;
        }

        v26 = v49;
        goto LABEL_25;
      }
    }
  }

  return v17;
}

uint64_t hlp_AllocateAndInitializePhonlists(uint64_t a1, char *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v13 = 0;
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  Allocator = ooc_utils_createAllocator(v14, *(a1 + 32), *(a1 + 40));
  if (Allocator)
  {
    return LH_ERROR_to_VERROR(Allocator);
  }

  Allocator = PNEW_StringList_Con(v14, *(a1 + 32), *(a1 + 40), a3);
  if (Allocator)
  {
    return LH_ERROR_to_VERROR(Allocator);
  }

  Allocator = PNEW_StringList_Con(v14, *(a1 + 32), *(a1 + 40), a4);
  if (Allocator)
  {
    return LH_ERROR_to_VERROR(Allocator);
  }

  Allocator = PNEW_StringList_Con(v14, *(a1 + 32), *(a1 + 40), a5);
  if (Allocator)
  {
    return LH_ERROR_to_VERROR(Allocator);
  }

  LODWORD(result) = CLM_SplitWordInPhonemes(*(a1 + 24), a2, 0, 0, *a3, &v13);
  if ((result & 0x80000000) != 0 || v13)
  {
    if (result < 0)
    {
      return result;
    }

    else
    {
      return 2347769856;
    }
  }

  else
  {
    LODWORD(result) = CLM_SplitWordInPhonemes(*(a1 + 24), a2, 0, 0, *a4, &v13);
    if (v13)
    {
      v12 = result <= -1;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return result;
    }

    else
    {
      return 2347769856;
    }
  }
}

BOOL CLM_ApplyRules(void *a1, uint64_t a2, unsigned int a3, char *a4, char *a5, char *a6, unsigned int a7, void *a8, uint64_t *a9, uint64_t *a10)
{
  v32 = 0;
  v17 = hlp_CheckDoAlignment(a8, a9, a10);
  v18 = CLM_GiveLanguageBuffer(a4, a2, a3, 0);
  if (v18)
  {
    v19 = v18;
    if (*(v18 + 8))
    {
      v31 = v17;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      do
      {
        v23 = CLM_SearchAndReplace(a1, *(*(v19 + 16) + v20), *(*(v19 + 16) + v20 + 16), *(*(v19 + 16) + v20 + 8), a5, a6, a7);
        v24 = v23;
        if (v23)
        {
          if (v23 & 0x80000000)
          {
            break;
          }
        }

        else
        {
          cstdlib_strcpy(a5, a6);
          if (v31)
          {
            if (!v22)
            {
              v22 = 1;
              if ((CLM_SplitWordInPhonemes(a1[3], a6, 0, 0, *a10, &v32) & 0x80000000) == 0 && !v32)
              {
                if ((CLM_AlignPhonlists(a1[3], a8, *a9, *a10) & 0x80000000) != 0)
                {
                  v22 = 1;
                }

                else
                {
                  v25 = *a9;
                  *a9 = *a10;
                  *a10 = v25;
                  StringList_Reset(v25);
                  v22 = 0;
                }
              }
            }
          }
        }

        ++v21;
        v20 += 24;
      }

      while (v21 < *(v19 + 8));
      if (v31)
      {
        v26 = *a10;
        *a10 = *a9;
        *a9 = v26;
        if (v22)
        {
          StringList_Reset(a8);
          StringList_Reset(*a9);
          StringList_Reset(*a10);
        }
      }
    }

    else
    {
      v24 = 0;
      if (v17)
      {
        v28 = *a10;
        *a10 = *a9;
        *a9 = v28;
      }
    }
  }

  else
  {
    if (v17)
    {
      v27 = *a10;
      *a10 = *a9;
      *a9 = v27;
    }

    return 1;
  }

  return v24;
}

uint64_t CLM_ApplyPhonemeMapping(uint64_t a1, uint64_t a2, unsigned int a3, char *a4, char *a5, char *a6, unsigned int a7, void *a8, uint64_t *a9, uint64_t *a10)
{
  v60 = 0;
  v61 = 0;
  v16 = CLM_GiveLanguageBuffer(a4, a2, a3, 1);
  v17 = 2347769856;
  if (!v16)
  {
    log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "Invalid Language : %s", a4);
    return v17;
  }

  if (a6)
  {
    v18 = v16;
    v63 = 0;
    memset(v62, 0, sizeof(v62));
    Allocator = ooc_utils_createAllocator(v62, *(a1 + 32), *(a1 + 40));
    if (Allocator || (Allocator = PNEW_StringList_Con(v62, *(a1 + 32), *(a1 + 40), &v61)) != 0)
    {
      v20 = LH_ERROR_to_VERROR(Allocator);
    }

    else
    {
      v20 = CLM_SplitWordInPhonemes(*(a1 + 24), a5, 0, 0, v61, 0);
    }

    v21 = v20;
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_69;
    }

    v59 = v20;
    *&v62[0] = 0;
    v58 = a8;
    v22 = hlp_CheckDoAlignment(a8, a9, a10);
    *a6 = 0;
    if (StringList_GetCountStrings(v61))
    {
      v23 = 0;
      v24 = a7;
      while (1)
      {
        v25 = StringList_GetAt(v61, v23);
        hlp_FindPhonemeMapping((v18 + 8), v25, v62, &v60);
        if (*&v62[0])
        {
          v25 = *&v62[0];
        }

        v26 = cstdlib_strlen(a6);
        if (v26 + cstdlib_strlen(v25) + 1 > v24)
        {
          break;
        }

        cstdlib_strcat(a6, v25);
        if (StringList_GetCountStrings(v61) <= ++v23)
        {
          goto LABEL_13;
        }
      }

      log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50003, 0);
      return v17;
    }

LABEL_13:
    if (!v22)
    {
      v21 = v59;
      goto LABEL_69;
    }

    v27 = v61;
    v21 = v59;
    if (!v61 || (v28 = *a9) == 0)
    {
LABEL_69:
      hlp_FreePhonlist(a1, &v61);
      return v21;
    }

    CountStrings = StringList_GetCountStrings(v61);
    v30 = StringList_GetCountStrings(v28);
    v31 = v30;
    v32 = CountStrings != 0;
    if (!v30 || !CountStrings)
    {
      if (!v30)
      {
        goto LABEL_43;
      }

      LOWORD(v33) = 0;
      goto LABEL_38;
    }

    v56 = v27;
    v33 = 0;
    v34 = 0;
    do
    {
      while (1)
      {
        v35 = StringList_GetAt(v28, v33);
        if (cstdlib_strcmp(v35, "*"))
        {
          break;
        }

        if (v31 <= ++v33 || CountStrings <= v34)
        {
          v32 = CountStrings > v34;
          if (v31 <= v33)
          {
            goto LABEL_43;
          }

          goto LABEL_38;
        }
      }

      __s1 = StringList_GetAt(v28, v33);
      v36 = StringList_GetAt(v56, v34);
      v37 = cstdlib_strcmp(__s1, v36);
      if (!v37)
      {
        ++v34;
      }

      ++v33;
      v32 = CountStrings > v34;
    }

    while (!v37 && v31 > v33 && CountStrings > v34);
    if (v37)
    {
      goto LABEL_69;
    }

    if (v31 <= v33)
    {
LABEL_43:
      if (!v32)
      {
        goto LABEL_44;
      }

      goto LABEL_69;
    }

LABEL_38:
    if (v31 > v33)
    {
      do
      {
        v38 = StringList_GetAt(v28, v33);
        v39 = cstdlib_strcmp(v38, "*");
        if (v39)
        {
          break;
        }

        LOWORD(v33) = v33 + 1;
      }

      while (v31 > v33);
      if (v39)
      {
        goto LABEL_69;
      }
    }

LABEL_44:
    if (!StringList_GetCountStrings(*a9))
    {
      goto LABEL_69;
    }

    v40 = 0;
    v41 = 0;
    v42 = "*";
    while (1)
    {
      v43 = StringList_GetAt(*a9, v41);
      hlp_FindPhonemeMapping((v18 + 8), v43, v62, &v60);
      if (!v40)
      {
        break;
      }

      v40 = 1;
LABEL_68:
      if (StringList_GetCountStrings(*a9) <= ++v41)
      {
        goto LABEL_69;
      }
    }

    v44 = v42;
    v45 = *&v62[0];
    v46 = v60;
    v47 = *a9;
    v48 = *a10;
    if (cstdlib_strcmp(v43, v44))
    {
      if (v45)
      {
        if (cstdlib_strlen(v45))
        {
          v42 = v44;
          if (v46)
          {
            if (StringList_GetCountStrings(v46))
            {
              v49 = 0;
              do
              {
                v50 = StringList_GetAt(v46, v49);
                v51 = CLM_PhonList_Append(v48, v50);
                if (v51 < 0)
                {
                  break;
                }

                if (v49)
                {
                  v52 = CLM_PhonList_InsertAt(v47, ++v41, v42);
                  if (v52 < 0)
                  {
                    goto LABEL_64;
                  }

                  v51 = CLM_PhonList_InsertAt(v58, v41, v42);
                  if (v51 < 0)
                  {
                    break;
                  }
                }

                ++v49;
              }

              while (StringList_GetCountStrings(v46) > v49);
            }

            else
            {
              v51 = 0;
            }
          }

          else
          {
            v51 = -1947197440;
          }
        }

        else
        {
          v42 = v44;
          v52 = CLM_PhonList_Append(v48, v44);
LABEL_64:
          v51 = v52;
        }

        goto LABEL_67;
      }

      v53 = v48;
      v54 = v43;
    }

    else
    {
      v53 = v48;
      v54 = v44;
    }

    v51 = CLM_PhonList_Append(v53, v54);
    v42 = v44;
LABEL_67:
    v40 = v51 >> 31;
    v21 = v51 & ~(v51 >> 31);
    goto LABEL_68;
  }

  return v17;
}

uint64_t hlp_FreePhonlist(uint64_t a1, uint64_t *a2)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  result = ooc_utils_createAllocator(v4, *(a1 + 32), *(a1 + 40));
  if (result)
  {
    return LH_ERROR_to_VERROR(result);
  }

  if (a2)
  {
    if (*a2)
    {
      result = OOC_PlacementDeleteObject(v4, *a2);
      *a2 = 0;
    }
  }

  return result;
}

uint64_t CLM_TokenizeTranscription(uint64_t a1, int a2, char *a3, char *a4, unsigned int a5, _DWORD *a6)
{
  if ((safeh_HandleCheck(a1, a2, 63000, 216) & 0x80000000) != 0 || !a1)
  {
    return 2347769864;
  }

  v11 = *(a1 + 24);

  return CLM_SplitWordInPhonemes(v11, a3, a4, a5, 0, a6);
}

uint64_t CLM_GetFeClmCompInfo(uint64_t a1, int a2, _DWORD *a3)
{
  *a3 = 0;
  v5 = safeh_HandleCheck(a1, a2, 63000, 216);
  result = 2347769864;
  if ((v5 & 0x80000000) == 0 && a1)
  {
    if (*(a1 + 200))
    {
      v7 = 0;
      result = paramc_ParamGetUInt(*(*(a1 + 24) + 40), "fe_clm_component", &v7);
      if ((result & 0x80000000) == 0)
      {
        *a3 = v7;
      }
    }

    else
    {
      return v5;
    }
  }

  return result;
}

BOOL CLM_HasData(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 63000, 216);
  result = 0;
  if ((v3 & 0x80000000) == 0)
  {
    if (a1)
    {
      return *(a1 + 48) != 0;
    }
  }

  return result;
}

uint64_t CLM_ClassOpen(_WORD *a1, uint64_t a2, void *a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2347769863;
  }

  result = InitRsrcFunction(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    *a3 = a1;
    a3[1] = a2;
  }

  return result;
}

uint64_t hlp_GetLanguage(uint64_t a1, char *a2)
{
  __s = 0;
  *a2 = 0;
  Str = paramc_ParamGetStr(a1, "langcode", &__s);
  if ((Str & 0x80000000) == 0)
  {
    v5 = 0;
    if (cstdlib_strlen(__s))
    {
      do
      {
        v6 = v5;
        a2[v5] = cstdlib_tolower(__s[v5]);
        ++v5;
        v7 = cstdlib_strlen(__s);
      }

      while (v6 <= 1 && v5 < v7);
    }

    a2[v5] = 0;
    if (cstdlib_strcmp(__s, a2))
    {
      return paramc_ParamSetStr(a1, "langcode", a2);
    }
  }

  return Str;
}

uint64_t CLM_GetSuitableLocationOfFeCLMComponent(uint64_t a1, int a2, _DWORD *a3)
{
  result = safeh_HandleCheck(a1, a2, 63000, 216);
  if ((result & 0x80000000) != 0)
  {
    return 2347769864;
  }

  *a3 = *(a1 + 200) != 0;
  return result;
}

uint64_t CLM_ValidateTranscriptionEx(uint64_t a1, int a2, char *a3, char *a4, char *a5, _DWORD *a6, int a7)
{
  v14 = 2347769864;
  v15 = safeh_HandleCheck(a1, a2, 63000, 216);
  if ((v15 & 0x80000000) != 0 || !a1)
  {
    return v14;
  }

  v16 = v15;
  if ((safeh_HandleCheck(a1, a2, 63000, 216) & 0x80000000) != 0 || !*(a1 + 48))
  {
    log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "CLM_ValidateTranscriptionEx : CLM data not available, assume valid transcription");
    *a6 = 1;
    return v16;
  }

  if (!CLM_GiveLanguageBuffer(a3, *(a1 + 152), *(a1 + 160), 2))
  {
    log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "CLM_ValidateTranscriptionEx : CLM data not available for %s", a3);
    *a6 = 0;
    return v16;
  }

  v29 = 0;
  log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "CLM_ValidateTranscriptionEx : Begin (%s)", a5);
  CLM_GetFeClmCompInfo(a1, a2, &v29);
  v17 = v29;
  if (v29)
  {
    v18 = LH_stricmp((a1 + 56), a3);
    if (a4)
    {
      if (!v18 && cstdlib_strlen(a4) && *(a1 + 204))
      {
        v19 = 0;
        v20 = 0;
        do
        {
          if (!LH_stricmp((*(a1 + 208) + v19), a4))
          {
            break;
          }

          ++v20;
          v19 += 16;
        }

        while (v20 < *(a1 + 204));
      }
    }
  }

  *a6 = 1;
  v21 = CLM_DeleteNonPhoneChars(a1, a5);
  if ((v21 & 0x80000000) != 0)
  {
    v23 = 0;
    v14 = v21;
  }

  else
  {
    v22 = (2 * cstdlib_strlen(a5)) | 1;
    v23 = heap_Calloc(*(*(a1 + 24) + 8), v22, 1);
    if (v23)
    {
      v14 = CLM_ValidateInForeignLooLoanSet(a1, a5, v23, v22);
      if ((v14 & 0x80000000) == 0 && a7 == 1)
      {
        if (v17)
        {
          if (!*a6)
          {
            v24 = LH_stricmp((a1 + 56), a3);
            if (a4)
            {
              if (!v24 && !cstdlib_strlen(a4) && *(a1 + 204))
              {
                v25 = 0;
                for (i = 0; i < *(a1 + 204); ++i)
                {
                  v27 = *(a1 + 208);
                  *a6 = 1;
                  v14 = CLM_ValidateInForeignLooLoanSet(a1, a5, v23, v22);
                  if ((v14 & 0x80000000) != 0)
                  {
                    break;
                  }

                  if (*a6 == 1)
                  {
                    cstdlib_strcpy(a4, (v27 + v25));
                    log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "Extended phoneme set %s valid, so returned as foreign loan phoneme set", a4);
                    break;
                  }

                  v25 += 16;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50000, 0);
      v14 = 2347769866;
    }
  }

  log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "CLM_ValidateTranscriptionEx : End (%s)", a5);
  if (v23)
  {
    heap_Free(*(*(a1 + 24) + 8), v23);
  }

  return v14;
}

uint64_t CLM_ValidateInForeignLooLoanSet(uint64_t a1, char *a2, char *a3, unsigned int a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = CLM_SplitWordInPhonemes(*(a1 + 24), a2, a3, a4, 0, 0);
  if ((v6 & 0x80000000) == 0)
  {
    v10 = 0;
    v7 = extstdlib_strtok_r(a3, " ", &v10);
    *a2 = 0;
    if (v7)
    {
      v8 = v7;
      do
      {
        cstdlib_strcat(a2, v8);
        cstdlib_strcpy(__dst, " ");
        cstdlib_strcat(__dst, v8);
        cstdlib_strcat(__dst, " ");
        v8 = extstdlib_strtok_r(0, " ", &v10);
      }

      while (v8);
    }
  }

  return v6;
}

uint64_t CLM_ValidateTranscription(uint64_t a1, int a2, char *a3, char *__src, char *a5, _DWORD *a6)
{
  if (__src)
  {
    v11 = __dst;
    cstdlib_strcpy(__dst, __src);
  }

  else
  {
    v11 = 0;
  }

  return CLM_ValidateTranscriptionEx(a1, a2, a3, v11, a5, a6, 0);
}

uint64_t CLM_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2347769857;
  }

  result = 0;
  *a2 = &ICLM;
  return result;
}

void *hlp_CheckDoAlignment(void *result, void **a2, void **a3)
{
  if (result)
  {
    CountStrings = StringList_GetCountStrings(result);
    result = 0;
    if (a2)
    {
      if (CountStrings)
      {
        result = *a2;
        if (*a2)
        {
          v6 = StringList_GetCountStrings(result);
          result = 0;
          if (a3)
          {
            if (v6)
            {
              result = *a3;
              if (*a3)
              {
                StringList_Reset(result);
                return (CountStrings == v6);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

const char *hlp_FindPhonemeMapping(const char *result, char *__s2, void *a3, void *a4)
{
  *a3 = 0;
  *a4 = 0;
  v4 = *result;
  if (v4)
  {
    v8 = result;
    v9 = 0;
    for (i = 0; i < v4; ++i)
    {
      v11 = *(v8 + 1);
      result = *(v11 + v9);
      if (result && *(v11 + v9 + 8))
      {
        result = cstdlib_strcmp(result, __s2);
        if (!result)
        {
          *a3 = *(*(v8 + 1) + v9 + 8);
          *a4 = *(*(v8 + 1) + v9 + 16);
          return result;
        }

        v4 = *v8;
      }

      v9 += 24;
    }
  }

  return result;
}

void *CLM_UnloadSettings(uint64_t a1)
{
  CLM_EmptyLanguageStruct(a1, (a1 + 88), *(a1 + 96));
  *(a1 + 96) = 0;
  CLM_EmptyLanguageStruct(a1, (a1 + 104), *(a1 + 112));
  *(a1 + 112) = 0;
  CLM_EmptyLanguageStruct(a1, (a1 + 120), *(a1 + 128));
  *(a1 + 128) = 0;
  CLM_EmptyLanguageStruct(a1, (a1 + 136), *(a1 + 144));
  *(a1 + 144) = 0;
  CLM_EmptyLanguageStruct(a1, (a1 + 72), *(a1 + 80));
  *(a1 + 80) = 0;
  CLM_EmptyLanguageStruct(a1, (a1 + 152), *(a1 + 160));
  *(a1 + 160) = 0;
  *(a1 + 64) = 0;
  CLM_FreePreCompiledSplitWordRegEx(a1);

  return CLM_FreePreCompiledReplacementRegEx(a1);
}

uint64_t getObjcForThisApi_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  __s1 = 0;
  if (a1 && a2)
  {
    if ((paramc_ParamGetStr(*(a1 + 40), "clcpppipelinemode", &__s1) & 0x80000000) != 0 || !__s1 || !*__s1 || !cstdlib_strcmp(__s1, "internal"))
    {
      a1 = a2;
    }

    return *(a1 + 48);
  }

  return result;
}

uint64_t IRefCnt_ObjcLoadCLMData(_WORD *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v54 = *MEMORY[0x277D85DE8];
  v26 = 0;
  inited = InitRsrcFunction(a1, a2, &v26);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_38;
  }

  v11 = 2347769856;
  v12 = heap_Calloc(*(v26 + 8), 1, 304);
  *(a5 + 48) = v12;
  if (!v12)
  {
    log_OutPublic(*(*(a5 + 24) + 32), "CLM", 50000, 0);
    v11 = 2347769866;
    goto LABEL_39;
  }

  *v12 = v26;
  v12[1] = a1;
  v12[2] = a2;
  if (cstdlib_strlen(a3) - 256 < 0xFFFFFFFFFFFFFEFFLL)
  {
    goto LABEL_39;
  }

  cstdlib_strcpy((*(a5 + 48) + 48), a3);
  v35 = 0;
  *__s1 = 0;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  strcpy(v30, "CLMP");
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  *__dst = 0u;
  v39 = 0u;
  v28 = 0;
  v13 = *(a5 + 48);
  inited = hlp_GetLanguage(*(*(a5 + 24) + 40), __s2);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_38;
  }

  if ((paramc_ParamGetStr(*(*(a5 + 24) + 40), "clcpppipelinemode", &v28) & 0x80000000) != 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = 1;
    if (v28)
    {
      v14 = *v28 == 0;
    }
  }

  v15 = *(*v13 + 24);
  if (v15)
  {
    v16 = "clm";
  }

  else
  {
    v16 = "clm.dat";
  }

  if (v15)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  v18 = ssftriff_reader_ObjOpen(v13[1], v13[2], v17, v16, v30, 1031, &v33);
  if ((v18 & 0x80000000) == 0)
  {
    v19 = 0;
    while (!v19 && (ssftriff_reader_OpenChunk(v33, __s1, &v31, &v32) & 0x80000000) == 0)
    {
      if (cstdlib_strcmp(__s1, "CLMP"))
      {
        goto LABEL_21;
      }

      v27 = 256;
      v20 = ssftriff_reader_ReadStringZ(v33, v32, v31, 0, v36, &v27);
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_42;
      }

      if (!cstdlib_strstr(v36, __s2))
      {
LABEL_21:
        v19 = 0;
      }

      else
      {
        v20 = ssftriff_reader_DetachChunkData(v33, v13 + 3, v13 + 4);
        if ((v20 & 0x80000000) != 0)
        {
LABEL_42:
          v11 = v20;
          ssftriff_reader_CloseChunk(v33);
          ssftriff_reader_ObjClose(v33);
          goto LABEL_39;
        }

        v21 = v27 | 0xFFFFFFFC;
        if ((v27 & 3) == 0)
        {
          v21 = 0;
        }

        v22 = v27 - v21;
        v13[4] += v22;
        v19 = 1;
        *(v13 + 10) = v31 - v22;
        *(v13 + 11) = 1;
      }

      v23 = ssftriff_reader_CloseChunk(v33);
      if ((v23 & 0x80000000) != 0)
      {
        v11 = v23;
        ssftriff_reader_ObjClose(v33);
        v13[3] = 0;
        goto LABEL_39;
      }
    }

    v11 = ssftriff_reader_ObjClose(v33);
    if ((v11 & 0x80000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  if (v14)
  {
    v11 = v18;
    log_OutPublic(*(*(a5 + 24) + 32), "CLM", 30006, "%s", "clm.dat not found");
    goto LABEL_39;
  }

  cstdlib_strcpy(__dst, "clm/");
  cstdlib_strcat(__dst, __s2);
  inited = brokeraux_ComposeBrokerString(*(a5 + 24), __dst, 0, 1, __s2, 0, 0, v37, 0x100uLL);
  if ((inited & 0x80000000) != 0 || (inited = brk_DataOpenEx(*(*v13 + 24), v37, 1, (v13 + 3)), (inited & 0x80000000) != 0))
  {
LABEL_38:
    v11 = inited;
  }

  else
  {
    *(v13 + 10) = 0;
    v11 = brk_DataMapEx(*(*v13 + 24), v13[3], 0, (v13 + 5), (v13 + 4));
    if ((v11 & 0x80000000) == 0)
    {
LABEL_33:
      *(a4 + 32) = *(a5 + 48);
      return v11;
    }

    brk_DataClose(*(*v13 + 24), v13[3]);
  }

LABEL_39:
  v24 = *(a5 + 48);
  if (v24)
  {
    heap_Free(*(v26 + 8), v24);
    *(a5 + 48) = 0;
  }

  return v11;
}

uint64_t IRefCnt_ObjcUnloadCLMData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  if (v3)
  {
    if (*(v3 + 44))
    {
      ssftriff_reader_ReleaseChunkData(*(v3 + 24));
    }

    else
    {
      brk_DataUnmap(*(*v3 + 24), *(v3 + 24), *(v3 + 32));
      brk_DataClose(*(*v3 + 24), *(v3 + 24));
    }

    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    heap_Free(*(*v3 + 8), v3);
  }

  return 0;
}

uint64_t CLM_LoadRules(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _DWORD *a5)
{
  v9 = 120;
  if (!a4)
  {
    v9 = 88;
  }

  v10 = 128;
  if (a4)
  {
    v11 = 136;
  }

  else
  {
    v10 = 96;
    v11 = 104;
  }

  if (a4)
  {
    v12 = 144;
  }

  else
  {
    v12 = 112;
  }

  result = CLM_EnumerateLanguages(a1, (a1 + v9), (a1 + v10), 0, a2, a3, *a5);
  if ((result & 0x80000000) == 0)
  {
    if ((CLM_FindSeperationRecord(a2, a3, a5) & 0x80000000) != 0)
    {
      return 2347777666;
    }

    else
    {
      v14 = CLM_EnumerateLanguages(a1, (a1 + v11), (a1 + v12), 0, a2, a3, *a5);
      return v14 & (v14 >> 31);
    }
  }

  return result;
}

uint64_t CLM_GetForeignLoanPhonemeSets(uint64_t a1, int a2, _WORD *a3, void *a4)
{
  v7 = safeh_HandleCheck(a1, a2, 63000, 216);
  result = 2347769864;
  if ((v7 & 0x80000000) == 0)
  {
    if (a1)
    {
      result = 0;
      *a3 = *(a1 + 204);
      *a4 = *(a1 + 208);
    }
  }

  return result;
}

uint64_t fe_normout_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62387, 120);
  if ((result & 0x80000000) != 0)
  {
    return 2340429832;
  }

  if (a1)
  {
    v4 = a1[14];
    if (v4)
    {
      heap_Free(*(*a1 + 8), v4);
    }

    a1[14] = 0;
    objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_normout_ObjReopen(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62387, 120);
  if ((result & 0x80000000) != 0)
  {
    return 2340429832;
  }

  if (a1)
  {

    return fe_normout_get_fecfg(a1);
  }

  return result;
}

uint64_t fe_normout_get_fecfg(uint64_t a1)
{
  v5 = 0;
  v4 = 0;
  v3 = 0;
  *(a1 + 104) = 0;
  result = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "fecfg", "usetntag", &v5, &v4, &v3);
  if ((result & 0x80000000) == 0)
  {
    if (v4 == 1 && v5 && **v5 == 49)
    {
      *(a1 + 104) = 1;
    }

    v4 = 0;
    result = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "fecfg", "mdesegpos_morpheme_processing", &v5, &v4, &v3);
    if ((result & 0x80000000) == 0 && v4 == 1 && v5 && **v5 == 49)
    {
      *(a1 + 108) = 1;
    }
  }

  return result;
}

uint64_t fe_normout_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62387, 120);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2340429832;
  }
}

uint64_t fe_normout_Process(void *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v158 = *MEMORY[0x277D85DE8];
  v152 = 0;
  v150 = 0;
  v151 = 0;
  v149 = 0;
  v148 = 0;
  v147 = 0;
  v146 = 0;
  v145 = 0;
  v143 = 0;
  v144 = 0;
  v142 = 0;
  v141 = 0;
  v140 = 0;
  v139 = 0;
  v138 = 0;
  v137 = 0;
  v136 = 0;
  v135 = 1;
  v134 = 1;
  v133 = 1;
  v132 = 0;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  cstdlib_strcpy(__dst, "normout");
  if ((safeh_HandleCheck(a1, a2, 62387, 120) & 0x80000000) != 0)
  {
    return 2340429832;
  }

  *a5 = 1;
  v10 = (*(a1[4] + 112))(a1[2], a1[3], &v137, 0);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v11 = (*(a1[1] + 104))(a3, a4, 1, 0, &v151 + 2);
  if ((v11 & 0x80000000) == 0 && ((*(a1[1] + 184))(a3, a4, HIWORD(v151), 0, &v141 + 2) & 0x80000000) == 0 && HIWORD(v141) == 1)
  {
    v11 = (*(a1[1] + 176))(a3, a4, HIWORD(v151), 0, &v152, &v149);
    if ((v11 & 0x80000000) == 0 && v149 >= 2u)
    {
      v12 = *(*a1 + 8);
      v13 = cstdlib_strlen(v152);
      v14 = heap_Calloc(v12, 1, v13 + 1);
      if (!v14)
      {
        log_OutPublic(*(*a1 + 32), "FE_NORMOUT", 43000, 0);
        return 2340429834;
      }

      v15 = v14;
      cstdlib_strcpy(v14, v152);
      v16 = (*(a1[1] + 176))(a3, a4, HIWORD(v151), 1, &v138, &v150 + 2);
      if ((v16 & 0x80000000) == 0)
      {
        v17 = HIWORD(v150);
        v18 = *(v138 + 12);
        log_Markers(a1, "Markers IN", v138, HIWORD(v150));
        v156 = 0;
        v154 = 0;
        v155 = 0;
        v153 = 0;
        v19 = (*(a1[1] + 104))(a3, a4, 2, HIWORD(v151), &v156);
        v11 = v19;
        if ((v19 & 0x80000000) == 0)
        {
          v20 = v156;
          if (v156)
          {
            __src = v15;
            v21 = 0;
            while (1)
            {
              v22 = (*(a1[1] + 168))(a3, a4, v20, 0, 1, &v155, &v154 + 2);
              if ((v22 & 0x80000000) != 0)
              {
                break;
              }

              if (v155 > 0xA || ((1 << v155) & 0x610) == 0)
              {
                v27 = 0;
                v26 = v156;
              }

              else
              {
                v22 = (*(a1[1] + 168))(a3, a4, v156, 1, 1, &v154, &v154 + 2);
                if ((v22 & 0x80000000) != 0)
                {
                  break;
                }

                v22 = (*(a1[1] + 168))(a3, a4, v156, 2, 1, &v153, &v154 + 2);
                if ((v22 & 0x80000000) != 0)
                {
                  break;
                }

                v25 = v154 > v21 || v21 < v153;
                v26 = v156;
                if (v25)
                {
                  v21 = v153;
                  v27 = 0;
                }

                else
                {
                  v27 = v156;
                }
              }

              v22 = (*(a1[1] + 120))(a3, a4, v26, &v156);
              if ((v22 & 0x80000000) != 0)
              {
                break;
              }

              if (v27)
              {
                log_OutText(*(*a1 + 32), "FE_NORMOUT", 1, 0, "%s", "Dropping nested word record");
                v22 = (*(a1[1] + 192))(a3, a4, v27);
                if ((v22 & 0x80000000) != 0)
                {
                  break;
                }
              }

              v20 = v156;
              if (!v156)
              {
                v15 = __src;
                goto LABEL_40;
              }
            }

            v11 = v22;
            v60 = 0;
            v30 = 0;
            goto LABEL_77;
          }
        }

        if ((v19 & 0x80000000) != 0)
        {
          goto LABEL_74;
        }

LABEL_40:
        log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, " ");
        *(&v121 + 1) = &v134;
        *&v122 = &v133;
        *&v121 = &v141;
        *&v120 = a1;
        *(&v123 + 1) = v15;
        *&v124 = 0;
        *(&v124 + 1) = &v136;
        *&v125 = &v149 + 2;
        *(&v122 + 1) = &v140 + 2;
        *&v123 = &v135;
        *(&v125 + 1) = &v139;
        *&v126 = &v140;
        *(&v126 + 1) = &v139 + 2;
        v16 = (*(a1[1] + 288))(a3, a4, HIWORD(v151), getSentenceAndInsertedCGNLengthPre, getSentenceAndInsertedCGNLength, 0, getSentenceAndInsertedCGNLengthPost, &v120);
        if ((v16 & 0x80000000) == 0)
        {
          LOWORD(v151) = WORD4(v120);
          v29 = heap_Calloc(*(*a1 + 8), 1, (16 * v141) | 1);
          v30 = v29;
          if (v29)
          {
            cstdlib_memset(v29, 0, 0x10uLL);
            v31 = heap_Alloc(*(*a1 + 8), v133 + 128);
            a1[8] = v31;
            if (v31)
            {
              cstdlib_strcpy(v31, "");
              v32 = heap_Alloc(*(*a1 + 8), v134);
              a1[9] = v32;
              if (v32)
              {
                cstdlib_strcpy(v32, "");
                v33 = heap_Alloc(*(*a1 + 8), v134);
                a1[10] = v33;
                if (v33)
                {
                  cstdlib_strcpy(v33, "");
                  v34 = heap_Alloc(*(*a1 + 8), v133 + 128);
                  a1[11] = v34;
                  if (v34)
                  {
                    cstdlib_strcpy(v34, "");
                    if (!*(a1 + 26))
                    {
                      goto LABEL_49;
                    }

                    v35 = heap_Alloc(*(*a1 + 8), v134);
                    a1[12] = v35;
                    if (v35)
                    {
                      cstdlib_strcpy(v35, "");
LABEL_49:
                      v135 = 1;
                      *(&v128 + 1) = v30;
                      v36 = (*(a1[1] + 288))(a3, a4, HIWORD(v151), 0, normOutFnc, 0, normOutFncPost, &v120);
                      if ((v36 & 0x80000000) == 0)
                      {
                        v117 = v18;
                        v118 = v17;
                        log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "ORIG   : %s", v15);
                        log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, " ");
                        log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "L1: %s", a1[8]);
                        v37 = *(a1[4] + 120);
                        v38 = a1[8];
                        v39 = cstdlib_strlen(v38);
                        v36 = v37(a1[2], a1[3], 0, v38, v39);
                        if ((v36 & 0x80000000) == 0)
                        {
                          log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "L2: %s", a1[9]);
                          v40 = *(a1[4] + 120);
                          v41 = a1[9];
                          v42 = cstdlib_strlen(v41);
                          v36 = v40(a1[2], a1[3], 1, v41, v42);
                          if ((v36 & 0x80000000) == 0)
                          {
                            log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "L3: %s", a1[10]);
                            v43 = *(a1[4] + 120);
                            v44 = a1[10];
                            v45 = cstdlib_strlen(v44);
                            v36 = v43(a1[2], a1[3], 2, v44, v45);
                            if ((v36 & 0x80000000) == 0)
                            {
                              __src = v15;
                              log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "L4: %s", a1[11]);
                              v46 = *(a1[4] + 120);
                              v47 = a1[11];
                              v48 = cstdlib_strlen(v47);
                              v49 = v46(a1[2], a1[3], 3, v47, v48);
                              if ((v49 & 0x80000000) != 0)
                              {
                                goto LABEL_97;
                              }

                              if (*(a1 + 26))
                              {
                                log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "L5: %s", a1[12]);
                                v50 = *(a1[4] + 136);
                                v51 = a1[12];
                                v52 = cstdlib_strlen(v51);
                                v49 = v50(a1[2], a1[3], 4, v51, v52);
                                if ((v49 & 0x80000000) != 0)
                                {
                                  goto LABEL_97;
                                }
                              }

                              log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, " ");
                              if (((*(a1[4] + 80))(a1[2], a1[3], __dst) & 0x80000000) != 0)
                              {
                                v60 = 0;
                                v61 = 0;
                                v11 = 0;
                                goto LABEL_78;
                              }

                              v49 = (*(a1[4] + 128))(a1[2], a1[3], 0, &v144, &v142);
                              if ((v49 & 0x80000000) != 0 || (v144[v142] = 0, log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "O1     : %s", v144), v49 = (*(a1[4] + 128))(a1[2], a1[3], 3, &v143, &v142 + 2), (v49 & 0x80000000) != 0))
                              {
LABEL_97:
                                v11 = v49;
                                v60 = 0;
LABEL_77:
                                v61 = 0;
LABEL_78:
                                v15 = __src;
                                goto LABEL_80;
                              }

                              v143[HIWORD(v142)] = 0;
                              log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "O4     : %s", v143);
                              log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "ORIGL1 : %s", v15);
                              if (HIWORD(v142))
                              {
                                v53 = 0;
                                v54 = 0;
                                do
                                {
                                  if (!cstdlib_strncmp(&v143[v53], "▬", 3uLL) && cstdlib_strncmp(&v144[v54], "▬", 3uLL))
                                  {
                                    v55 = Utf8_LengthInUtf8chars(v143, v53);
                                    v54 = Utf8_LengthInBytes(v144, v55);
                                    cstdlib_memmove(&v144[v54 + 3], &v144[v54 + 1], v142 - v54);
                                    cstdlib_strncpy(&v144[v54], "▬", 3uLL);
                                    LOWORD(v142) = v142 + 2;
                                  }

                                  ++v53;
                                  ++v54;
                                }

                                while (v53 < HIWORD(v142));
                              }

                              v56 = v142;
                              if (v142)
                              {
                                v57 = 0;
                                do
                                {
                                  v58 = v57;
                                  if (v144[v57] == 126)
                                  {
                                    if (v57 < v56)
                                    {
                                      do
                                      {
                                        v144[v58] = v144[v58 + 1];
                                        ++v58;
                                        v56 = v142;
                                      }

                                      while (v58 < v142);
                                    }

                                    LOWORD(v142) = --v56;
                                    --v57;
                                  }

                                  ++v57;
                                }

                                while (v57 < v56);
                                v59 = v56;
                              }

                              else
                              {
                                v59 = 0;
                              }

                              v144[v59] = 0;
                              __s = heap_Calloc(*(*a1 + 8), 1, v149 + 1);
                              if (!__s)
                              {
                                log_OutPublic(*(*a1 + 32), "FE_NORMOUT", 43000, 0);
                                v60 = 0;
                                v61 = 0;
                                v11 = 2340429834;
                                goto LABEL_78;
                              }

                              cstdlib_strcpy(__s, v15);
                              v67 = cstdlib_strlen(__s);
                              cstdlib_memset(a1[14], 0, 0x80uLL);
                              v68 = fe_normout_split_words(a1, a3, a4, v144, a1[14], &v146);
                              if ((v68 & 0x80000000) != 0)
                              {
                                goto LABEL_151;
                              }

                              v68 = fe_normout_split_words(a1, a3, a4, v15, 0, &v146 + 1);
                              if ((v68 & 0x80000000) != 0)
                              {
                                goto LABEL_151;
                              }

                              log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, " ");
                              v69 = v146;
                              v70 = HIWORD(v146);
                              log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "comparing O1 (%d words) and ORIGL1 (%d words) ", v146, HIWORD(v146));
                              if (v70 != v69)
                              {
                                log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "Mismatch number of orthographic words and number of phonetic words : abandon processing");
                                v61 = 0;
                                v11 = 0;
LABEL_152:
                                v60 = __s;
                                goto LABEL_78;
                              }

                              v147 = 0;
                              v71 = v149;
                              if (!v149)
                              {
                                v96 = 0;
LABEL_144:
                                log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, " ");
                                v132 = 0;
                                LOWORD(v146) = 0;
                                v131 = __s;
                                *&v127 = &v146;
                                *(&v127 + 1) = &v145;
                                *&v129 = 0;
                                *&v128 = &v132;
                                v68 = (*(a1[1] + 288))(a3, a4, HIWORD(v151), 0, MvToEqWordRecUpdFieldsFnc, 0, 0, &v120);
                                if ((v68 & 0x80000000) == 0)
                                {
                                  v61 = *(&v131 + 1);
                                  v97 = v131;
                                  v98 = *(a1[1] + 160);
                                  v99 = HIWORD(v151);
                                  v100 = cstdlib_strlen(v131);
                                  v101 = a4;
                                  v60 = v97;
                                  v102 = v98(a3, v101, v99, 0, (v100 + 1), v97, &v150);
                                  if ((v102 & 0x80000000) != 0)
                                  {
                                    v11 = v102;
                                  }

                                  else
                                  {
                                    log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "new SE_TEXT : %s", v97);
                                    log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, " ");
                                    if (v141)
                                    {
                                      v103 = 0;
                                      v104 = (v30 + 14);
                                      do
                                      {
                                        v105 = *(v104 - 7);
                                        v106 = *(v104 - 3);
                                        v107 = *(v104 - 2);
                                        v108 = *(v104 - 1);
                                        v109 = *v104;
                                        v104 += 8;
                                        log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "WORDREC[%d] %d,%d --> %d,%d", v105, v106, v107, v108, v109);
                                        ++v103;
                                      }

                                      while (v103 < v141);
                                    }

                                    v110 = cstdlib_strlen(v97);
                                    *(v138 + 16) = v110;
                                    v137 += v96;
                                    v11 = (*(a1[4] + 104))(a1[2], a1[3]);
                                    if ((v11 & 0x80000000) == 0)
                                    {
                                      log_Markers(a1, "Markers OUT", v138, v118);
                                    }
                                  }

                                  goto LABEL_78;
                                }

                                goto LABEL_151;
                              }

                              v114 = 0;
                              v115 = 0;
                              v111 = v67;
                              while (1)
                              {
                                if (getNextWord(&v147 + 1, &v148 + 1, __src, v71))
                                {
                                  v72 = v144;
                                  NextWord = getNextWord(&v147, &v148, v144, v142);
                                  v74 = HIWORD(v147);
                                  if (NextWord)
                                  {
                                    v75 = v147;
                                    log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "COMPARE WORD[%d] %s and %s", v115, &__src[HIWORD(v147)], &v72[v147]);
                                    if (cstdlib_strcmp(&__src[HIWORD(v147)], &v144[v75]))
                                    {
                                      log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "   UPDATE WORD[%d] %s and %s", v115, &__src[HIWORD(v147)], &v144[v75]);
                                      v76 = cstdlib_strstr(&v144[v75], "▲");
                                      if (v76)
                                      {
                                        v77 = 0;
                                        while (1)
                                        {
                                          *(&v129 + 1) = v76;
                                          *&v130 = v77;
                                          *(&v130 + 1) = &v147 + 2;
                                          v68 = (*(a1[1] + 280))(a3, a4, &v151, updateWordRecFnc, &v120);
                                          if ((v68 & 0x80000000) != 0)
                                          {
                                            break;
                                          }

                                          v78 = *(&v129 + 1);
                                          v77 = v130;
                                          HIWORD(v147) = **(&v130 + 1);
                                          **(&v129 + 1) = 0;
                                          if (!v77)
                                          {
                                            log_OutPublic(*(*a1 + 32), "FE_NORMOUT", 43001, "%s%s", "message", "Wrong normout depes grammar");
                                            v61 = 0;
                                            v11 = 2340429831;
                                            goto LABEL_152;
                                          }

                                          v79 = cstdlib_strlen((v77 + 3));
                                          cstdlib_memmove(v78, (v77 + 3), v79 + 1);
                                          v76 = cstdlib_strstr(&v144[v75], "▲");
                                          if (!v76)
                                          {
                                            goto LABEL_114;
                                          }
                                        }

LABEL_151:
                                        v11 = v68;
                                        v61 = 0;
                                        goto LABEL_152;
                                      }

LABEL_114:
                                      v80 = cstdlib_strlen(&v144[v75]);
                                      v81 = cstdlib_strlen(&__src[HIWORD(v147)]);
                                      v112 = cstdlib_strlen(__s);
                                      v113 = v80;
                                      v82 = v80;
                                      if (v80 > v81)
                                      {
                                        v83 = (v80 - v81 + v112);
                                        v84 = heap_Realloc(*(*a1 + 8), __s, (v83 + 1));
                                        if (!v84)
                                        {
                                          v61 = 0;
                                          v11 = 2340429834;
                                          goto LABEL_152;
                                        }

                                        *(v84 + v83) = 0;
                                        __s = v84;
                                      }

                                      v85 = v82 - v81;
                                      if (v82 == v81)
                                      {
                                        cstdlib_memcpy(&__s[HIWORD(v147) + v114], &v144[v147], v113);
                                        goto LABEL_134;
                                      }

                                      cstdlib_memmove(&__s[v82 + v114 + HIWORD(v147)], &__s[v81 + HIWORD(v147) + v114], v111 - (v81 + HIWORD(v147)));
                                      cstdlib_memcpy(&__s[HIWORD(v147) + v114], &v144[v147], v113);
                                      updateWordRecs(a1, a3, a4, v30, v141, HIWORD(v147), v81, v113);
                                      if (v118)
                                      {
                                        v86 = 0;
                                        v87 = (v138 + 12);
                                        while (1)
                                        {
                                          v88 = *v87;
                                          v87 += 8;
                                          if (v88 - v117 > (HIWORD(v147) + v114))
                                          {
                                            break;
                                          }

                                          if (v118 == ++v86)
                                          {
                                            goto LABEL_134;
                                          }
                                        }
                                      }

                                      else
                                      {
                                        LOWORD(v86) = 0;
                                      }

                                      if (v118 > v86)
                                      {
                                        v89 = v138;
                                        v86 = v86;
                                        v90 = (v138 + 12);
                                        v91 = v86 - 1;
                                        v92 = (v138 + 12 + 32 * v86);
                                        do
                                        {
                                          if (v86)
                                          {
                                            v93 = v85 + *v92;
                                            if (*(v89 + 32 * v91 + 12) > v93)
                                            {
                                              goto LABEL_133;
                                            }
                                          }

                                          else
                                          {
                                            v93 = v85 + *v90;
                                          }

                                          *v92 = v93;
LABEL_133:
                                          ++v86;
                                          ++v91;
                                          v92 += 8;
                                        }

                                        while (v118 != v86);
                                      }

LABEL_134:
                                      v114 += v113 - v81;
                                      if (v82 < v81 && (v81 - v82) >= 1)
                                      {
                                        v94 = 0;
                                        v95 = v112 - 1;
                                        do
                                        {
                                          __s[v95] = 0;
                                          ++v94;
                                          --v95;
                                        }

                                        while (v81 - v82 > v94);
                                      }
                                    }

                                    v74 = HIWORD(v148);
                                    LOWORD(v147) = v148;
                                    ++v115;
                                    v71 = v149;
                                  }
                                }

                                else
                                {
                                  v74 = HIWORD(v147);
                                }

                                HIWORD(v147) = v74 + 1;
                                if ((v74 + 1) >= v71)
                                {
                                  v96 = v114;
                                  goto LABEL_144;
                                }
                              }
                            }
                          }
                        }
                      }

                      v11 = v36;
                      v60 = 0;
LABEL_75:
                      v61 = 0;
LABEL_80:
                      heap_Free(*(*a1 + 8), v15);
                      if (v61)
                      {
                        heap_Free(*(*a1 + 8), v61);
                      }

                      if (v30)
                      {
                        heap_Free(*(*a1 + 8), v30);
                      }

                      if (v60)
                      {
                        heap_Free(*(*a1 + 8), v60);
                      }

                      v62 = a1[8];
                      if (v62)
                      {
                        heap_Free(*(*a1 + 8), v62);
                        a1[8] = 0;
                      }

                      v63 = a1[9];
                      if (v63)
                      {
                        heap_Free(*(*a1 + 8), v63);
                        a1[9] = 0;
                      }

                      v64 = a1[10];
                      if (v64)
                      {
                        heap_Free(*(*a1 + 8), v64);
                        a1[10] = 0;
                      }

                      v65 = a1[11];
                      if (v65)
                      {
                        heap_Free(*(*a1 + 8), v65);
                        a1[11] = 0;
                      }

                      v66 = a1[12];
                      if (v66)
                      {
                        heap_Free(*(*a1 + 8), v66);
                        a1[12] = 0;
                      }

                      return v11;
                    }
                  }
                }
              }
            }
          }

          log_OutPublic(*(*a1 + 32), "FE_NORMOUT", 43000, 0);
          v60 = 0;
          v61 = 0;
          v11 = 2340429834;
          goto LABEL_80;
        }
      }

      v11 = v16;
LABEL_74:
      v60 = 0;
      v30 = 0;
      goto LABEL_75;
    }
  }

  return v11;
}

uint64_t log_Markers(uint64_t a1, const char *a2, uint64_t a3, unsigned int a4)
{
  result = log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, a2);
  if (a4)
  {
    v8 = a4;
    v9 = a3 + 8;
    do
    {
      v10 = *(*a1 + 32);
      v11 = *(v9 - 8);
      if (v11 == 0x4000)
      {
        result = log_OutText(v10, "FE_NORMOUT", 5, 0, "Marker [type=SYNC] Ref (%d,%d) Cur(%d,%d)", *(v9 - 4));
      }

      else
      {
        result = log_OutText(v10, "FE_NORMOUT", 5, 0, "Marker [type=%5u] Ref (%d,%d) Cur(%d,%d)", v11);
      }

      v9 += 32;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t getSentenceAndInsertedCGNLength(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t *a4)
{
  v24 = 0;
  v25 = 0;
  v23 = 0;
  __s = 0;
  v8 = *a4;
  v9 = (*(*(*a4 + 8) + 168))(a1, a2, *a3, 0, 1, &v25, &v24 + 2);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  ++*a4[2];
  v10 = v25;
  if (v25 <= 0xA && ((1 << v25) & 0x610) != 0)
  {
    v11 = a4[6];
    if (!*v11)
    {
      v12 = a4[4];
      ++*a4[3];
      ++*v12;
    }

    *v11 = 0;
    v13 = (*(*(v8 + 8) + 168))(a1, a2, *a3, 1, 1, &v24, &v24 + 2);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    v9 = (*(*(v8 + 8) + 168))(a1, a2, *a3, 2, 1, &v23, &v24 + 2);
    if ((v9 & 0x80000000) != 0)
    {
      return v9;
    }

    v14 = Utf8_LengthInUtf8chars((a4[7] + v24), v23 - v24);
    v15 = a4[4];
    *a4[3] += v14;
    *v15 = v23 + *v15 - v24;
    v10 = v25;
  }

  if (v10 == 7)
  {
    v9 = (*(*(v8 + 8) + 176))(a1, a2, *a3, 4, &__s, &v24 + 2);
    if ((v9 & 0x80000000) != 0)
    {
      return v9;
    }

    *a4[4] += cstdlib_strlen(__s) + 6;
    *a4[3] += cstdlib_strlen(__s) + 2;
    v10 = v25;
  }

  if (*(*a4 + 104))
  {
    v16 = v10 == 6;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    v9 = (*(*(v8 + 8) + 176))(a1, a2, *a3, 4, &__s, &v24 + 2);
    if ((v9 & 0x80000000) == 0)
    {
      v17 = *a4[3];
      v18 = cstdlib_strlen(__s);
      v19 = a4[4];
      *a4[3] = v17 + 2 * v18 - 2;
      v20 = *v19;
      *a4[4] = v20 + 2 * cstdlib_strlen(__s) - 2;
    }
  }

  return v9;
}

uint64_t normOutFnc(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t *a4)
{
  v84 = 0;
  v85 = 0;
  v83 = 0;
  v82 = 0;
  v79 = 0;
  __s2 = 0;
  __s = 0;
  v8 = *a4;
  *(a4[17] + 16 * *a4[10]) = *a3;
  BacktransPOS = (*(*(v8 + 8) + 168))();
  if ((BacktransPOS & 0x80000000) != 0)
  {
    return BacktransPOS;
  }

  *(a4[17] + 16 * *a4[10] + 4) = v85;
  BacktransPOS = (*(*(v8 + 8) + 168))(a1, a2, *a3, 1, 1, &v84, &v84 + 2);
  if ((BacktransPOS & 0x80000000) != 0)
  {
    return BacktransPOS;
  }

  v10 = (*(*(v8 + 8) + 168))(a1, a2, *a3, 2, 1, &v83, &v84 + 2);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v11 = v84;
  v12 = a4[17];
  v13 = a4[10];
  *(v12 + 16 * *v13 + 12) = v84;
  *(v12 + 16 * *v13 + 8) = v11;
  v14 = v83;
  *(v12 + 16 * *v13 + 14) = v83;
  *(v12 + 16 * *v13 + 10) = v14;
  v15 = v83 - v84;
  v16 = cstdlib_strlen((a4[7] + v84));
  v17 = a4[7];
  v18 = v84;
  if (v15 <= v16)
  {
    v21 = v83 - v84;
    v20 = (v17 + v84);
  }

  else
  {
    v19 = cstdlib_strlen((v17 + v84));
    v20 = (v17 + v18);
    v21 = v19 + 1;
  }

  v22 = Utf8_LengthInUtf8chars(v20, v21);
  v23 = v85;
  if (v85 <= 0xA && ((1 << v85) & 0x610) != 0)
  {
    *a4[5] = v83;
    BacktransPOS = (*(*(v8 + 8) + 176))(a1, a2, *a3, 5, &__s2, &v84 + 2);
    if ((BacktransPOS & 0x80000000) != 0)
    {
      return BacktransPOS;
    }

    BacktransPOS = com_mosynt_UseMosynt(*(v8 + 40), *(v8 + 48), *(v8 + 56), &v82);
    if ((BacktransPOS & 0x80000000) != 0)
    {
      return BacktransPOS;
    }

    if (v82)
    {
      BacktransPOS = com_mosynt_GetBacktransPOS(*(v8 + 40), *(v8 + 48), *(v8 + 56), __s2, v81);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        return BacktransPOS;
      }

      __s2 = v81;
    }

    v10 = (*(*(v8 + 8) + 176))(a1, a2, *a3, 6, &v79, &v84 + 2);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    if (*(v8 + 104) && !*a4[6])
    {
      v24 = a4[8];
      if (v24 && v84 != *a4[13])
      {
        if (v84 > *a4[12])
        {
          v26 = *a4[11];
          v27 = 2 * cstdlib_strlen(v24) - 2;
          cstdlib_strcat(*(v8 + 96), "X");
          v28 = *(v8 + 96);
          v29 = a4[8];
          v30 = cstdlib_strlen(v29);
          cstdlib_strncat(v28, v29 + 1, v30 - 2);
          if (v27 >= v26)
          {
            cstdlib_strcat(*(v8 + 96), "Y");
            v35 = *(v8 + 96);
            v36 = a4[8];
            v37 = cstdlib_strlen(v36);
            cstdlib_strncat(v35, v36 + 1, v37 - 2);
            v38 = *a4[11];
            if (2 * cstdlib_strlen(a4[8]) - 2 > v38)
            {
              do
              {
                cstdlib_strcat(*(v8 + 64), "~");
                cstdlib_strcat(*(v8 + 72), "~");
                cstdlib_strcat(*(v8 + 80), "~");
                cstdlib_strcat(*(v8 + 88), "~");
                LODWORD(v38) = v38 + 1;
              }

              while (2 * cstdlib_strlen(a4[8]) - 2 > v38);
            }
          }

          else
          {
            v31 = 2 * cstdlib_strlen(a4[8]) - 2;
            if ((v31 & 0xFFFEu) < *a4[11])
            {
              do
              {
                cstdlib_strcat(*(v8 + 96), "~");
                ++v31;
              }

              while (*a4[11] > v31);
            }

            cstdlib_strcat(*(v8 + 96), "Y");
            v32 = *(v8 + 96);
            v33 = a4[8];
            v34 = cstdlib_strlen(v33);
            cstdlib_strncat(v32, v33 + 1, v34 - 2);
          }

          a4[8] = 0;
        }
      }

      else if (*a4[9])
      {
        v25 = 0;
        do
        {
          cstdlib_strcat(*(v8 + 96), " ");
          ++v25;
        }

        while (v25 < *a4[9]);
      }
    }

    v39 = *a4[6];
    v40 = v84;
    if (v39)
    {
      v41 = 0;
    }

    else
    {
      v42 = v40 - utf8_GetPreviousUtf8Offset(a4[7], v84);
      cstdlib_strncat(*(v8 + 64), (a4[7] + v84 - v42), v42);
      cstdlib_strcat(*(v8 + 72), " ");
      cstdlib_strcat(*(v8 + 80), " ");
      cstdlib_strncat(*(v8 + 88), (a4[7] + v84 - v42), v42);
      v41 = 1;
      v40 = v84;
    }

    cstdlib_strncat(*(v8 + 64), (a4[7] + v40), v83 - v40);
    cstdlib_strncat(*(v8 + 88), (a4[7] + v84), v83 - v84);
    v22 = Utf8_LengthInUtf8chars((a4[7] + v84), v83 - v84);
    v43 = v22;
    if (v22)
    {
      do
      {
        cstdlib_strncat(*(v8 + 72), __s2, 1uLL);
        cstdlib_strncat(*(v8 + 80), v79, 1uLL);
        --v43;
      }

      while (v43);
    }

    *a4[9] = v22;
    if (*(v8 + 104))
    {
      v44 = a4[8];
      if (v44 && v84 != *a4[13])
      {
        *a4[11] += v41 + v22;
      }

      else
      {
        if (!v39)
        {
          cstdlib_strcat(*(v8 + 96), " ");
          v44 = a4[8];
        }

        if (v44)
        {
          *a4[11] = *a4[9];
        }
      }
    }

    *a4[6] = 0;
    v23 = v85;
  }

  if (v23 == 7)
  {
    v45 = cstdlib_strlen(*(v8 + 64));
    v10 = (*(*(v8 + 8) + 176))(a1, a2, *a3, 4, &__s, &v84 + 2);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    v46 = cstdlib_strlen(__s);
    v47 = Utf8_LengthInUtf8chars(*(v8 + 64), v45);
    v48 = Utf8_LengthInBytes(*(v8 + 88), v47);
    if (v84 >= *a4[5])
    {
      cstdlib_strcat(*(v8 + 64), "▲");
      cstdlib_strcat(*(v8 + 64), __s);
      cstdlib_strcat(*(v8 + 64), "▼");
      v58 = 0;
      v59 = v46 + 2;
      do
      {
        cstdlib_strcat(*(v8 + 72), " ");
        cstdlib_strcat(*(v8 + 80), " ");
        cstdlib_strcat(*(v8 + 88), "~");
        ++v58;
      }

      while (v59 > v58);
    }

    else
    {
      v76 = v46;
      v75 = v48;
      cstdlib_memmove((*(v8 + 64) + v45 + v84 - *a4[5] + v46 + 6), (*(v8 + 64) + v45 - *a4[5] + v84), *a4[5] - v84 + 1);
      v49 = (*(v8 + 72) + v47 - v22);
      v77 = v45;
      cstdlib_memmove(&v49[v46 + 2], v49, v22 + 1);
      v50 = (*(v8 + 80) + v47 - v22);
      cstdlib_memmove(&v50[v46 + 2], v50, v22 + 1);
      v51 = *a4[5];
      v52 = (*(v8 + 88) + v75 - v51 + v84);
      v53 = v46;
      cstdlib_memmove(&v52[v46 + 2], v52, v51 - v84 + 1);
      cstdlib_strncpy((*(v8 + 64) + (v77 - *a4[5] + v84)), "▲", 3uLL);
      v54 = v47 - v22;
      *(*(v8 + 72) + v54) = 32;
      *(*(v8 + 80) + v54) = 32;
      *(*(v8 + 88) + v75 - *a4[5] + v84) = 126;
      v55 = v54 + 1;
      if (v76)
      {
        v56 = 0;
        v57 = v75;
        do
        {
          if (__s[v56])
          {
            *(*(v8 + 64) + v77 + v56 + v84 - *a4[5] + 3) = __s[v56];
          }

          *(*(v8 + 72) + v55 + v56) = 32;
          *(*(v8 + 80) + v55 + v56) = 32;
          *(*(v8 + 88) + v57 - *a4[5] + v84 + 1) = 126;
          ++v56;
          ++v57;
        }

        while (v53 != v56);
      }

      cstdlib_strncpy((*(v8 + 64) + (v77 + v53 - *a4[5] + v84 + 3)), "▼", 3uLL);
      *(*(v8 + 72) + v55 + v76) = 32;
      *(*(v8 + 80) + v55 + v76) = 32;
      *(*(v8 + 88) + v75 + v76 + v84 - *a4[5] + 1) = 126;
    }

    if (a4[8])
    {
      *a4[11] += cstdlib_strlen(__s) + 2;
    }

    *a4[9] += cstdlib_strlen(__s) + 2;
    v23 = v85;
  }

  if (v23 != 6)
  {
LABEL_74:
    ++*a4[10];
    return v10;
  }

  BacktransPOS = (*(*(v8 + 8) + 168))(a1, a2, *a3, 1, 1, a4[13], &v84 + 2);
  if ((BacktransPOS & 0x80000000) != 0)
  {
    return BacktransPOS;
  }

  if (*(v8 + 104))
  {
    v60 = a4[8];
    if (v60)
    {
      if (*a4[13] > *a4[12])
      {
        v61 = *a4[11];
        v62 = 2 * cstdlib_strlen(v60) - 2;
        cstdlib_strcat(*(v8 + 96), "X");
        v63 = *(v8 + 96);
        v64 = a4[8];
        v65 = cstdlib_strlen(v64);
        cstdlib_strncat(v63, v64 + 1, v65 - 2);
        if (v62 >= v61)
        {
          cstdlib_strcat(*(v8 + 96), "Y");
          v70 = *(v8 + 96);
          v71 = a4[8];
          v72 = cstdlib_strlen(v71);
          cstdlib_strncat(v70, v71 + 1, v72 - 2);
          v73 = *a4[11];
          if (2 * cstdlib_strlen(a4[8]) - 2 > v73)
          {
            do
            {
              cstdlib_strcat(*(v8 + 64), "~");
              cstdlib_strcat(*(v8 + 72), "~");
              cstdlib_strcat(*(v8 + 80), "~");
              cstdlib_strcat(*(v8 + 88), "~");
              LODWORD(v73) = v73 + 1;
            }

            while (2 * cstdlib_strlen(a4[8]) - 2 > v73);
          }
        }

        else
        {
          v66 = 2 * cstdlib_strlen(a4[8]) - 2;
          if ((v66 & 0xFFFEu) < *a4[11])
          {
            do
            {
              cstdlib_strcat(*(v8 + 96), "~");
              ++v66;
            }

            while (*a4[11] > v66);
          }

          cstdlib_strcat(*(v8 + 96), "Y");
          v67 = *(v8 + 96);
          v68 = a4[8];
          v69 = cstdlib_strlen(v68);
          cstdlib_strncat(v67, v68 + 1, v69 - 2);
        }

        a4[8] = 0;
        *a4[9] = 0;
      }
    }
  }

  BacktransPOS = (*(*(v8 + 8) + 176))(a1, a2, *a3, 4, a4 + 8, &v84 + 2);
  if ((BacktransPOS & 0x80000000) != 0)
  {
    return BacktransPOS;
  }

  v10 = (*(*(v8 + 8) + 168))(a1, a2, *a3, 2, 1, a4[12], &v84 + 2);
  if ((v10 & 0x80000000) == 0)
  {
    *a4[11] = *a4[9];
    goto LABEL_74;
  }

  return v10;
}

uint64_t normOutFncPost(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a4;
  if (*(*a4 + 104) && !**(a4 + 48))
  {
    v7 = *(a4 + 64);
    if (v7)
    {
      v8 = **(a4 + 88);
      v9 = 2 * cstdlib_strlen(v7) - 2;
      cstdlib_strcat(v4[12], "X");
      v10 = v4[12];
      v11 = *(a4 + 64);
      v12 = cstdlib_strlen(v11);
      cstdlib_strncat(v10, v11 + 1, v12 - 2);
      if (v9 >= v8)
      {
        cstdlib_strcat(v4[12], "Y");
        v18 = v4[12];
        v19 = *(a4 + 64);
        v20 = cstdlib_strlen(v19);
        cstdlib_strncat(v18, v19 + 1, v20 - 2);
        v21 = **(a4 + 88);
        if (2 * cstdlib_strlen(*(a4 + 64)) - 2 > v21)
        {
          do
          {
            cstdlib_strcat(v4[8], "~");
            cstdlib_strcat(v4[9], "~");
            cstdlib_strcat(v4[10], "~");
            cstdlib_strcat(v4[11], "~");
            LODWORD(v21) = v21 + 1;
          }

          while (2 * cstdlib_strlen(*(a4 + 64)) - 2 > v21);
        }
      }

      else
      {
        v13 = 2 * cstdlib_strlen(*(a4 + 64)) - 2;
        if ((v13 & 0xFFFEu) < **(a4 + 88))
        {
          do
          {
            cstdlib_strcat(v4[12], "~");
            ++v13;
          }

          while (**(a4 + 88) > v13);
        }

        cstdlib_strcat(v4[12], "Y");
        v14 = v4[12];
        v15 = *(a4 + 64);
        v16 = cstdlib_strlen(v15);
        cstdlib_strncat(v14, v15 + 1, v16 - 2);
      }
    }

    else if (**(a4 + 72))
    {
      v17 = 0;
      do
      {
        cstdlib_strcat(v4[12], " ");
        ++v17;
      }

      while (v17 < **(a4 + 72));
    }
  }

  return 0;
}

uint64_t fe_normout_split_words(void *a1, uint64_t a2, uint64_t a3, char *__s, uint64_t a5, unsigned __int16 *a6)
{
  v11 = cstdlib_strlen(__s);
  *a6 = 0;
  v44 = v11;
  v12 = v11;
  if (!v11)
  {
    v40 = 0;
    goto LABEL_87;
  }

  v45 = 0;
  v42 = a6;
  v47 = 0;
  v13 = 0;
  v14 = v11;
  do
  {
    v15 = &__s[v13];
    v16 = *v15;
    if (v16 != 32 && v16 != 95 && cstdlib_strncmp(&__s[v13], "▬", 3uLL))
    {
      goto LABEL_82;
    }

    if (a5 && v45 >= 0x80u)
    {
      v17 = heap_Realloc(*(*a1 + 8), a1[14], (v45 & 0xFF80u) + 128);
      if (!v17)
      {
        log_OutPublic(*(*a1 + 32), "FE_NORMOUT", 43000, 0);
        return 2340429834;
      }

      a1[14] = v17;
      cstdlib_memset((v17 + v45), 0, (v45 & 0xFF80) + 128 - v45);
    }

    else if (!a5)
    {
      goto LABEL_70;
    }

    if (cstdlib_strncmp(&__s[v13], "▬", 3uLL))
    {
      goto LABEL_70;
    }

    v56 = 0;
    v55 = 0;
    v54 = 0;
    v53 = -1;
    v52 = -1;
    v51 = 0;
    v50 = 11;
    v49 = 0;
    v48 = 0;
    if (((*(a1[1] + 104))(a2, a3, 1, 0, &v56) & 0x80000000) != 0)
    {
      goto LABEL_65;
    }

    if (((*(a1[1] + 152))(a2, a3, 2, v56, &v51) & 0x80000000) != 0)
    {
      goto LABEL_65;
    }

    if (!v51)
    {
      goto LABEL_65;
    }

    if (((*(a1[1] + 104))(a2, a3, 2, v56, &v55 + 2) & 0x80000000) != 0)
    {
      goto LABEL_65;
    }

    v18 = HIWORD(v55);
    if (!HIWORD(v55))
    {
      goto LABEL_65;
    }

    v19 = 0;
    do
    {
      if (v53 != -1 && v52 != 0xFFFF)
      {
        goto LABEL_38;
      }

      if (((*(a1[1] + 168))(a2, a3, v18, 0, 1, &v50, &v55) & 0x80000000) != 0)
      {
        goto LABEL_65;
      }

      if (v50 <= 0xA && ((1 << v50) & 0x610) != 0)
      {
        if (v19 == v47)
        {
          v22 = (*(a1[1] + 168))(a2, a3, HIWORD(v55), 1, 1, &v53, &v55);
        }

        else
        {
          if (v47 + 1 != v19)
          {
LABEL_33:
            ++v19;
            goto LABEL_34;
          }

          v22 = (*(a1[1] + 168))(a2, a3, HIWORD(v55), 2, 1, &v52, &v55);
        }

        if (v22 < 0)
        {
          goto LABEL_65;
        }

        goto LABEL_33;
      }

LABEL_34:
      if (((*(a1[1] + 120))(a2, a3, HIWORD(v55), &v55 + 2) & 0x80000000) != 0)
      {
        goto LABEL_65;
      }

      v18 = HIWORD(v55);
    }

    while (HIWORD(v55));
    if (v53 != -1 && v52 != 0xFFFF)
    {
LABEL_38:
      if (((*(a1[1] + 176))(a2, a3, v56, 1, &v49, &v54) & 0x80000000) == 0)
      {
        v23 = v54;
        if (v54 < 2u)
        {
          v27 = 1;
        }

        else
        {
          v24 = (v49 + 44);
          v25 = 1;
          while (1)
          {
            v26 = *v24;
            v24 += 8;
            if (v26 - *(v49 + 12) > v53)
            {
              break;
            }

            if (v54 == ++v25)
            {
              goto LABEL_65;
            }
          }

          v27 = v25;
        }

        v28 = v48 || v27 >= v54;
        if (!v28)
        {
          v29 = v27 + 1;
          v30 = 32 * v27;
          while (1)
          {
            v31 = (v49 + v30);
            if (*(v49 + v30 + 12) - *(v49 + 12) >= v52)
            {
              break;
            }

            v32 = *v31;
            v33 = *(v31 + 3);
            v58 = 0;
            v57 = 0;
            if (v32 <= 0x39)
            {
              if (v32 == 51)
              {
                v43 = v29;
                v34 = hlp_NLUStrFind(v33, "PUNC", &v58, &v57);
                v29 = v43;
                if (!v34)
                {
                  goto LABEL_64;
                }

                v35 = v48 == 0;
                v23 = v54;
                goto LABEL_60;
              }

              if (((1 << v32) & 0x3C0010124001140) != 0)
              {
                goto LABEL_64;
              }
            }

            if (v32 == 17)
            {
LABEL_64:
              v48 = 1;
              break;
            }

            v35 = 1;
LABEL_60:
            if (v35)
            {
              v30 += 32;
              v28 = v29++ >= v23;
              if (!v28)
              {
                continue;
              }
            }

            break;
          }
        }
      }
    }

LABEL_65:
    if (!v48)
    {
      fe_normout_check_if_word_in_prompt(a1, a2, a3, v47, &v48);
      if (!v48)
      {
        fe_normout_check_if_word_in_prompt(a1, a2, a3, (v47 + 1), &v48);
        if (!v48)
        {
          *(a1[14] + v45++) = v47 + 1;
        }
      }

      v14 = v44;
    }

LABEL_70:
    if (!cstdlib_strncmp(&__s[v13], "▬", 3uLL))
    {
      *v15 = 0;
      v13 += 2;
    }

    __s[v13] = 0;
    for (i = v13 + 1; v12 > i; ++i)
    {
      v37 = &__s[i];
      v38 = *v37;
      if (v38 != 32 && v38 != 95 && cstdlib_strncmp(&__s[i], "▬", 3uLL))
      {
        break;
      }

      if (cstdlib_strncmp(&__s[i], "▬", 3uLL))
      {
        v39 = i;
      }

      else
      {
        *v37 = 0;
        i = v13 + 3;
        v39 = (v13 + 3);
      }

      v13 = i;
      __s[v39] = 0;
    }

    ++v47;
LABEL_82:
    ++v13;
  }

  while (v13 < v14);
  v40 = v47;
  if (__s[v13 - 1])
  {
    v40 = v47 + 1;
  }

  a6 = v42;
LABEL_87:
  result = 0;
  *a6 = v40;
  return result;
}

uint64_t getNextWord(_WORD *a1, _WORD *a2, uint64_t a3, unsigned int a4)
{
  v4 = *a1;
  *a2 = v4;
  if (v4 >= a4)
  {
    return 0;
  }

  v5 = (a3 + v4);
  for (i = v4 + 1; !*v5++; ++i)
  {
    *a1 = i;
    if (a4 == i)
    {
      return 0;
    }
  }

  v10 = *a2;
  v11 = a3 + (v10 + 1) + 1;
  do
  {
    v12 = v11;
    *a2 = ++v10;
    if (a4 <= v10)
    {
      break;
    }

    ++v11;
  }

  while (*(a3 + v10));
  for (j = v10 + 1; j < a4; j = v15 + 2)
  {
    if (*v12++)
    {
      break;
    }

    v15 = v10++;
    *a2 = v10;
  }

  return 1;
}

uint64_t updateWordRecFnc(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  v16 = 0;
  v17 = 0;
  v15 = 0;
  v8 = *a4;
  result = (*(*(*a4 + 8) + 168))(a1, a2, *a3, 0, 1, &v17, &v16 + 2);
  if ((result & 0x80000000) == 0)
  {
    result = (*(v8[1] + 168))(a1, a2, *a3, 1, 1, &v15, &v16 + 2);
    if ((result & 0x80000000) == 0 && v15 > **(a4 + 168) && v17 == 7)
    {
      v11 = cstdlib_strstr((*(a4 + 152) + 3), "▼");
      *(a4 + 160) = v11;
      if (v11)
      {
        *v11 = 0;
        v12 = *(v8[1] + 160);
        v13 = *a3;
        v14 = cstdlib_strlen(*(a4 + 152));
        LODWORD(result) = v12(a1, a2, v13, 4, v14, *(a4 + 152) + 3, &v16);
        if (result >= 0)
        {
          return 2340437532;
        }

        else
        {
          return result;
        }
      }

      else
      {
        log_OutPublic(*(*v8 + 32), "FE_NORMOUT", 43001, "%s%s", "message", "Wrong normout depes grammar");
        return 2340429831;
      }
    }
  }

  return result;
}

uint64_t updateWordRecs(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, int a7, __int16 a8)
{
  v30 = result;
  if (a5)
  {
    v9 = 0;
    v10 = (a8 - a7);
    v11 = a7 + a6;
    v12 = a5;
    v27 = (a4 + 14);
    v28 = a7 + a6;
    v29 = a6;
    do
    {
      v13 = a4 + 16 * v9;
      v14 = *(v13 + 4);
      v15 = v14 > 0xA;
      v16 = (1 << v14) & 0x610;
      v17 = v15 || v16 == 0;
      if (!v17 && *(v13 + 8) == a6 && v11 == *(v13 + 10))
      {
        *(v13 + 14) += v10;
        v18 = v27;
        v19 = v9;
        v20 = v12;
        do
        {
          if (v19)
          {
            v21 = *(v18 - 1);
            if (v21 > *(v13 + 12))
            {
              *(v18 - 1) = (v21 + v10) & ~((v21 + v10) >> 15);
              *v18 += v10;
            }

            v22 = *(v18 - 5);
            if (v22 <= 0xF && ((1 << v22) & 0x8060) != 0)
            {
              v24 = *(v13 + 8);
              if (v24 >= *(v18 - 3))
              {
                v25 = *(v18 - 2);
                if (v24 < v25 && v25 + 1 >= *(v13 + 10))
                {
                  if (v22 != 6 || (memset(__n, 0, sizeof(__n)), result = (*(*(v30 + 8) + 176))(a2, a3, *(v18 - 7), 4, &__n[1], __n), !__n[0]) || (result = cstdlib_strncmp(*&__n[1], "_PR_", __n[0]), (v10 & 0x80000000) == 0) || result)
                  {
                    *v18 += v10;
                  }
                }
              }
            }
          }

          --v19;
          v18 += 8;
          --v20;
        }

        while (v20);
        if (v9 + 1 < v12 && *(v13 + 4) == 4)
        {
          v26 = a4 + 16 * (v9 + 1);
          if (*(v26 + 4) == 16 && *(v26 + 12) == *(v13 + 12))
          {
            *(v26 + 14) = *(v13 + 14);
          }
        }

        v11 = v28;
        a6 = v29;
        if (v9 && *(v13 + 4) == 4 && *(v13 - 12) == 16 && *(v13 - 4) == *(v13 + 12))
        {
          *(v13 - 2) = *(v13 + 14);
        }
      }

      ++v9;
    }

    while (v9 != v12);
  }

  return result;
}

uint64_t MvToEqWordRecUpdFieldsFnc(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t *a4)
{
  v36 = 0;
  v37 = 0;
  v34 = 0;
  v35 = 0;
  v8 = *a4;
  v9 = (*(*(*a4 + 8) + 168))(a1, a2, *a3, 0, 1, &v37, &v36 + 2);
  if ((v9 & 0x80000000) == 0)
  {
    v10 = *a4[2];
    if (v10)
    {
      v11 = 0;
      v12 = "";
      do
      {
        v13 = (a4[17] + 16 * v11);
        a4[18] = v13;
        if (*v13 == *a3)
        {
          v14 = (*(v8[1] + 160))(a1, a2);
          if ((v14 & 0x80000000) != 0)
          {
            return v14;
          }

          v9 = (*(v8[1] + 160))(a1, a2, *a3, 2, 1, a4[18] + 14, &v36);
          if ((v9 & 0x80000000) != 0)
          {
            return v9;
          }

          if (v37 <= 0xA && ((1 << v37) & 0x610) != 0)
          {
            __s = 0;
            v15 = a4[14];
            v16 = *v15;
            if (*v15)
            {
              v17 = a4[16];
              if (v16 == *(v8[14] + *v17))
              {
                if (*a4[15])
                {
                  __src = 0;
                  ++*v17;
                  *(a4[22] + *(a4[18] + 12) - 1) = 45;
                  v14 = (*(v8[1] + 176))(a1, a2, *a3, 3, &__s, &v36 + 2);
                  if ((v14 & 0x80000000) != 0)
                  {
                    return v14;
                  }

                  v14 = (*(v8[1] + 176))(a1, a2, *a4[15], 3, &__src, &v36 + 2);
                  if ((v14 & 0x80000000) != 0)
                  {
                    return v14;
                  }

                  v18 = v12;
                  v19 = *(*v8 + 8);
                  v20 = a4[23];
                  v21 = cstdlib_strlen(__s);
                  v22 = cstdlib_strlen(__src);
                  v23 = heap_Realloc(v19, v20, (v21 + v22 + 2));
                  if (!v23)
                  {
                    log_OutPublic(*(*v8 + 32), "FE_NORMOUT", 43000, 0);
                    return 2340429834;
                  }

                  a4[23] = v23;
                  cstdlib_strcpy(v23, __src);
                  if (*(v8 + 27))
                  {
                    v24 = "=";
                  }

                  else
                  {
                    v24 = "-";
                  }

                  cstdlib_strcat(a4[23], v24);
                  cstdlib_strcat(a4[23], __s);
                  v25 = *(v8[1] + 160);
                  v26 = *a4[15];
                  v27 = cstdlib_strlen(a4[23]);
                  v14 = v25(a1, a2, v26, 3, (v27 + 1), a4[23], &v36);
                  if ((v14 & 0x80000000) != 0)
                  {
                    return v14;
                  }

                  v14 = (*(v8[1] + 160))(a1, a2, *a4[15], 2, 1, a4[18] + 14, &v36);
                  if ((v14 & 0x80000000) != 0)
                  {
                    return v14;
                  }

                  v12 = v18;
                  if (((*(v8[1] + 184))(a1, a2, *a4[18], 8, &v34) & 0x80000000) == 0 && v34 == 1)
                  {
                    v14 = (*(v8[1] + 168))(a1, a2, *a4[18], 8, 1, &v34 + 2, &v36 + 2);
                    if ((v14 & 0x80000000) != 0)
                    {
                      return v14;
                    }

                    v14 = (*(v8[1] + 160))(a1, a2, *a4[15], 8, 1, &v34 + 2, &v36);
                    if ((v14 & 0x80000000) != 0)
                    {
                      return v14;
                    }
                  }

                  if (((*(v8[1] + 184))(a1, a2, *a4[18], 14, &v34) & 0x80000000) == 0 && v34 == 1)
                  {
                    v14 = MvToEqWordRecUpdNLU(a1, a2, v8, a4);
                    if ((v14 & 0x80000000) != 0)
                    {
                      return v14;
                    }
                  }

                  v14 = (*(v8[1] + 192))(a1, a2, *a3);
                  if ((v14 & 0x80000000) != 0)
                  {
                    return v14;
                  }

                  *a3 = *a4[15];
                }
              }
            }

            v9 = (*(v8[1] + 176))(a1, a2, *a3, 3, &__s, &v36 + 2);
            if ((v9 & 0x80000000) != 0)
            {
              return v9;
            }

            if (cstdlib_strcmp(__s, v12) && cstdlib_strstr(__s, "-*"))
            {
              v14 = (*(v8[1] + 168))(a1, a2, *a3, 1, 1, &v35 + 2, &v36 + 2);
              if ((v14 & 0x80000000) != 0)
              {
                return v14;
              }

              v9 = (*(v8[1] + 168))(a1, a2, *a3, 2, 1, &v35, &v36 + 2);
              if ((v9 & 0x80000000) != 0)
              {
                return v9;
              }

              for (i = (a4[22] + HIWORD(v35)); ; i = v29 + 1)
              {
                v29 = cstdlib_strchr(i, 45);
                if (!v29 || v29 >= a4[22] + v35)
                {
                  break;
                }

                *v29 = 95;
              }
            }

            v30 = a4[15];
            ++*a4[14];
            *v30 = *a3;
          }

          v10 = *a4[2];
          v11 = v10;
        }

        ++v11;
      }

      while (v11 < v10);
    }
  }

  return v9;
}

uint64_t fe_normout_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62387, 120);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2340429832;
  }
}

uint64_t fe_normout_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2340429825;
  }

  result = 0;
  *a2 = &IFeNormout;
  return result;
}

uint64_t fe_normout_check_if_word_in_prompt(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, _DWORD *a5)
{
  v15 = 0;
  v16 = 0;
  v14 = 11;
  v13 = -1;
  *a5 = 0;
  result = (*(*(a1 + 8) + 104))(a2, a3, 1, 0, &v16 + 2);
  if ((result & 0x80000000) == 0)
  {
    result = (*(*(a1 + 8) + 152))(a2, a3, 2, HIWORD(v16), &v15);
    if ((result & 0x80000000) == 0)
    {
      if (v15)
      {
        result = (*(*(a1 + 8) + 104))(a2, a3, 2, HIWORD(v16), &v16);
        if ((result & 0x80000000) == 0)
        {
          v10 = v16;
          if (v16)
          {
            v11 = 0;
            while (1)
            {
              result = (*(*(a1 + 8) + 168))(a2, a3, v10, 0, 1, &v14, &v15 + 2);
              if ((result & 0x80000000) != 0)
              {
                break;
              }

              if (v14 <= 0xA && ((1 << v14) & 0x610) != 0)
              {
                if (a4 == v11)
                {
                  result = (*(*(a1 + 8) + 168))(a2, a3, v16, 1, 1, &v13, &v15 + 2);
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }
                }

                ++v11;
              }

              result = (*(*(a1 + 8) + 120))(a2, a3, v16, &v16);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v10 = v16;
              if (!v16 || a4 < v11)
              {
                if (v13 != 0xFFFF)
                {
                  return (*(*(a1 + 8) + 312))(a2, a3);
                }

                return result;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t MvToEqWordRecUpdNLU(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  __s = 0;
  v51 = 0;
  memset(v49, 0, sizeof(v49));
  *&__n[1] = 0;
  __n[0] = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v41 = 0;
  v42 = 0;
  v8 = (*(a3[1] + 176))(a1, a2, **(a4 + 144), 14, &v51, &v42);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  if (!hlp_NLUStrFind(v51, "POS", &v49[1], v49))
  {
    if (!hlp_NLUStrFind(v51, "PUNC", &v43, &v42 + 1))
    {
      return v8;
    }

    v20 = (*(a3[1] + 184))(a1, a2, **(a4 + 120), 14, &v41);
    v21 = a3[1];
    v22 = **(a4 + 120);
    if (v20 < 0 || v41 != 1)
    {
      v29 = *(v21 + 160);
      v30 = cstdlib_strlen(v51);
      return v29(a1, a2, v22, 14, (v30 + 1), v51, &v41 + 2);
    }

    (*(v21 + 176))(a1, a2, v22, 14, &__s, &v42);
    v23 = cstdlib_strlen(__s);
    v24 = cstdlib_strlen(v51);
    v25 = heap_Calloc(*(*a3 + 8), 1, (v23 + v24 + 2));
    if (v25)
    {
      v18 = v25;
      cstdlib_strcpy(v25, __s);
      hlp_NLUStrRemoveKeyVal(__s, "BND");
      hlp_NLUStrJoin(v18, v51);
      v26 = *(a3[1] + 160);
      v27 = **(a4 + 120);
      v28 = cstdlib_strlen(v18);
      v8 = v26(a1, a2, v27, 14, (v28 + 1), v18, &v41 + 2);
LABEL_32:
      heap_Free(*(*a3 + 8), v18);
      return v8;
    }

    goto LABEL_18;
  }

  hlp_NLUStrFind(v51, "BNDSHAPE", &v47, &v46);
  hlp_NLUStrFind(v51, "BND", &v45, &v44);
  hlp_NLUStrFind(v51, "PUNC", &v43, &v42 + 1);
  if (((*(a3[1] + 184))(a1, a2, **(a4 + 120), 14, &v41) & 0x80000000) != 0)
  {
    return v8;
  }

  if (v41 != 1)
  {
    return v8;
  }

  v8 = (*(a3[1] + 176))(a1, a2, **(a4 + 120), 14, &__s, &v42);
  if (!hlp_NLUStrFind(__s, "POS", &__n[1], __n))
  {
    return v8;
  }

  v9 = heap_Calloc(*(*a3 + 8), 1, __n[0] + v49[0] + 2);
  if (!v9)
  {
LABEL_18:
    v8 = 2340429834;
    log_OutPublic(*(*a3 + 32), "FE_NORMOUT", 43000, 0);
    return v8;
  }

  v10 = v9;
  v11 = cstdlib_strlen(__s);
  v12 = v49[0];
  v13 = v46;
  v14 = v44;
  v15 = HIWORD(v42);
  v16 = (v11 + v12 + v13 + v14 + v15 + cstdlib_strlen("POS:BNDSHAPE:BND:PUNC:") + 2);
  v17 = heap_Calloc(*(*a3 + 8), 1, v16);
  v18 = v17;
  if (v17)
  {
    cstdlib_strcpy(v17, __s);
    cstdlib_strncpy(v10, *&__n[1], __n[0]);
    if (!*(a3 + 27))
    {
      cstdlib_strcat(v10, "-");
    }

    cstdlib_strncat(v10, *&v49[1], v49[0]);
    hlp_NLUStrSet(v18, "POS", v10);
    if (v47)
    {
      v19 = v47[v46];
      v47[v46] = 0;
      hlp_NLUStrSet(v18, "BNDSHAPE", v47);
      v47[v46] = v19;
    }

    else
    {
      hlp_NLUStrRemoveKeyVal(v18, "BNDSHAPE");
    }

    if (v45)
    {
      v31 = v45[v46];
      v45[v46] = 0;
      hlp_NLUStrSet(v18, "BND", v45);
      v45[v46] = v31;
    }

    else
    {
      hlp_NLUStrRemoveKeyVal(v18, "BND");
    }

    if (v43)
    {
      v32 = v43[HIWORD(v42)];
      v43[HIWORD(v42)] = 0;
      hlp_NLUStrSet(v18, "PUNC", v43);
      v43[HIWORD(v42)] = v32;
    }

    else
    {
      hlp_NLUStrRemoveKeyVal(v18, "PUNC");
    }

    hlp_NLUStrRemoveKeyVal(v51, "POS");
    hlp_NLUStrRemoveKeyVal(v51, "PHR");
    hlp_NLUStrRemoveKeyVal(v51, "PUNC");
    hlp_NLUStrRemoveKeyVal(v51, "BNDSHAPE");
    hlp_NLUStrRemoveKeyVal(v51, "BND");
    if (!*v51)
    {
      goto LABEL_29;
    }

    v33 = *(*a3 + 8);
    v34 = cstdlib_strlen(v51);
    v35 = heap_Realloc(v33, v18, v34 + v16);
    if (v35)
    {
      v36 = v35;
      hlp_NLUStrJoin(v35, v51);
      v18 = v36;
LABEL_29:
      v37 = *(a3[1] + 160);
      v38 = **(a4 + 120);
      v39 = cstdlib_strlen(v18);
      v8 = v37(a1, a2, v38, 14, (v39 + 1), v18, &v41 + 2);
      goto LABEL_31;
    }
  }

  v8 = 2340429834;
  log_OutPublic(*(*a3 + 32), "FE_NORMOUT", 43000, 0);
LABEL_31:
  heap_Free(*(*a3 + 8), v10);
  if (v18)
  {
    goto LABEL_32;
  }

  return v8;
}

uint64_t fe_normout_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, int a4, uint64_t a5)
{
  v21 = 0;
  v22 = 0;
  fecfg = 2340429834;
  v19 = 0;
  v20 = 0;
  if (!a5)
  {
    return 2340429831;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v22);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = objc_GetObject(v22[6], "LINGDB", &v21);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  Object = objc_GetObject(v22[6], "FE_DEPES", &v20);
  v9 = v22[6];
  if ((Object & 0x80000000) != 0)
  {
    v17 = "LINGDB";
LABEL_15:
    objc_ReleaseObject(v9, v17);
    return Object;
  }

  v10 = objc_GetObject(v9, "FE_DCTLKP", &v19);
  if ((v10 & 0x80000000) != 0)
  {
    Object = v10;
    objc_ReleaseObject(v22[6], "LINGDB");
    v9 = v22[6];
    v17 = "FE_DEPES";
    goto LABEL_15;
  }

  v11 = heap_Alloc(v22[1], 120);
  v12 = v22;
  if (v11)
  {
    v13 = v11;
    *v11 = v22;
    *(v11 + 8) = *(v21 + 8);
    v14 = v19;
    v15 = v20;
    *(v11 + 32) = *(v20 + 8);
    *(v11 + 16) = *(v15 + 16);
    *(v11 + 56) = *(v14 + 8);
    *(v11 + 40) = *(v14 + 16);
    *(v11 + 112) = 0;
    *(v11 + 96) = 0;
    *(v11 + 64) = 0u;
    *(v11 + 80) = 0u;
    v16 = heap_Alloc(v12[1], 128);
    v13[14] = v16;
    if (v16)
    {
      fecfg = fe_normout_get_fecfg(v13);
      if ((fecfg & 0x80000000) != 0)
      {
        fe_normout_ObjClose(*a5, *(a5 + 8));
      }

      *a5 = v13;
      *(a5 + 8) = 62387;
    }

    else
    {
      log_OutPublic(*(*v13 + 32), "FE_NORMOUT", 43000, 0);
      objc_ReleaseObject(v22[6], "LINGDB");
      objc_ReleaseObject(v22[6], "FE_DEPES");
      objc_ReleaseObject(v22[6], "FE_DCTLKP");
      heap_Free(*(*v13 + 8), v13);
    }
  }

  else
  {
    log_OutPublic(v22[4], "FE_NORMOUT", 43000, 0);
    objc_ReleaseObject(v22[6], "LINGDB");
    objc_ReleaseObject(v22[6], "FE_DEPES");
    objc_ReleaseObject(v22[6], "FE_DCTLKP");
  }

  return fecfg;
}

uint64_t oneword_crosstoken(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char *a6, int a7, int a8, const char *a9, char *a10, const char *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, char **a15, uint64_t *a16, uint64_t *a17, uint64_t *a18, uint64_t *a19, const char **a20, const char **a21, const char **a22, const char **a23)
{
  v29 = a12;
  v114 = *MEMORY[0x277D85DE8];
  v112 = 0;
  v110 = 0;
  __s = 0;
  v109 = 0;
  cstdlib_strcpy(__dst, "cross_token");
  cstdlib_strlen(__dst);
  v30 = cstdlib_strlen("¡");
  v31 = (cstdlib_strlen(*a20) * v30 + 1);
  if (*a16 < v31)
  {
    v32 = heap_Realloc(*(a1 + 8), *a12, v31);
    if (!v32)
    {
      goto LABEL_99;
    }

    *a12 = v32;
    *a16 = v31;
  }

  if (*a17 < v31)
  {
    v33 = heap_Realloc(*(a1 + 8), *a13, v31);
    if (!v33)
    {
      goto LABEL_99;
    }

    *a13 = v33;
    *a17 = v31;
  }

  v102 = a2;
  v34 = a3;
  v35 = a4;
  if (*a18 < v31)
  {
    v36 = heap_Realloc(*(a1 + 8), *a14, v31);
    if (!v36)
    {
      goto LABEL_99;
    }

    *a14 = v36;
    *a18 = v31;
  }

  v37 = a15;
  if (*a19 >= v31)
  {
LABEL_13:
    v100 = a1;
    __s1 = a6;
    v98 = a8;
    cstdlib_strcpy(*a12, *a20);
    cstdlib_strcpy(*a13, *a21);
    cstdlib_strcpy(*a14, *a22);
    cstdlib_strcpy(*a15, *a23);
    if (cstdlib_strlen(*a12))
    {
      v39 = 0;
      v40 = 0;
      v41 = 0;
      do
      {
        v42 = *a12;
        v43 = cstdlib_strlen("◄");
        if (cstdlib_strncmp((v42 + v39), "◄", v43))
        {
          v44 = (*a12 + v39);
          if (*v44 == 126 && v41)
          {
            v46 = cstdlib_strlen((*a12 + v39));
            cstdlib_memmove(v44 + 1, v44, v46 + 1);
            v47 = *a12;
            v48 = cstdlib_strlen("¡");
            cstdlib_memcpy((v47 + v39), "¡", v48);
            v41 = 1;
          }
        }

        else
        {
          v41 = !v41;
        }

        v39 = ++v40;
      }

      while (cstdlib_strlen(*a12) > v40);
    }

    v49 = a20;
    cstdlib_strcpy(*a20, "");
    cstdlib_strcpy(*a21, "");
    cstdlib_strcpy(*a22, "");
    v50 = 0;
    v107 = (v100 + 32);
    while (1)
    {
      cstdlib_strcpy(__dst, "cross_token");
      v106 = cstdlib_strlen(__dst);
      v51 = v50;
      if (v50)
      {
        cstdlib_strcat(*v49, " ");
        cstdlib_strcat(*a21, " ");
        cstdlib_strcat(*a22, " ");
      }

      v52 = *v29;
      v53 = v50;
      v54 = (*v29)[v50];
      if ((*v29)[v50])
      {
        v55 = v50;
        while ((v54 > 0x20 || ((1 << v54) & 0x100002600) == 0) && v54 != 95)
        {
          v55 = ++v50;
          v54 = v52[v50];
          if (!v52[v50])
          {
            v104 = 1;
            goto LABEL_34;
          }
        }

        v104 = 0;
LABEL_34:
        v105 = v50;
        v56 = v50;
      }

      else
      {
        v105 = v50;
        v104 = 1;
        v56 = v50;
        v55 = v50;
      }

      v52[v55] = 0;
      v57 = Utf8_LengthInUtf8chars(*v29, v56);
      v58 = Utf8_LengthInUtf8chars(*v29, v51);
      *(*a13 + v57) = 0;
      *(*a14 + v57) = 0;
      (*v37)[v57] = 0;
      log_OutText(*v107, "FE_ONEWORD", 5, 0, "%s L1: %s", __dst, &(*v29)[v53]);
      v59 = *(v35 + 120);
      v60 = *v29;
      v61 = cstdlib_strlen(&(*v29)[v53]);
      v62 = v59(v102, v34, 0, &v60[v53], v61);
      if ((v62 & 0x80000000) != 0)
      {
        return v62;
      }

      log_OutText(*v107, "FE_ONEWORD", 5, 0, "%s L2: %s", __dst, (*a13 + v58));
      v63 = *(v35 + 120);
      v64 = *a13;
      v65 = cstdlib_strlen((*a13 + v58));
      v62 = v63(v102, v34, 1, v64 + v58, v65);
      if ((v62 & 0x80000000) != 0)
      {
        return v62;
      }

      log_OutText(*v107, "FE_ONEWORD", 5, 0, "%s L3: %s", __dst, (*a14 + v58));
      v66 = *(v35 + 120);
      v67 = *a14;
      v68 = cstdlib_strlen((*a14 + v58));
      v62 = v66(v102, v34, 2, v67 + v58, v68);
      if ((v62 & 0x80000000) != 0)
      {
        return v62;
      }

      log_OutText(*v107, "FE_ONEWORD", 5, 0, "%s L4: %s", __dst, &(*a15)[v58]);
      v69 = *(v35 + 136);
      v70 = *a15;
      v71 = cstdlib_strlen(&(*a15)[v58]);
      v62 = v69(v102, v34, 3, &v70[v58], v71);
      if ((v62 & 0x80000000) != 0)
      {
        return v62;
      }

      if (cstdlib_strcmp(__s1, "normal") && cstdlib_strlen(__s1) + v106 + 2 <= 0x7F)
      {
        cstdlib_strcat(__dst, "_");
        cstdlib_strcat(__dst, __s1);
      }

      v49 = a20;
      v72 = (v100 + 32);
      v29 = a12;
      if (((*(v35 + 80))(v102, v34, __dst) & 0x80000000) != 0)
      {
        __dst[v106] = 0;
        v62 = (*(v35 + 80))(v102, v34, __dst);
        if ((v62 & 0x80000000) != 0)
        {
          return v62;
        }
      }

      else if (!a7)
      {
        if (!a5)
        {
          v73 = __s1;
          a7 = *__s1;
LABEL_51:
          cstdlib_strncpy(a10, v73, 0x14uLL);
          goto LABEL_52;
        }

        v73 = a9;
        a7 = v98;
        if (a9)
        {
          goto LABEL_51;
        }

        a7 = 0;
      }

LABEL_52:
      v62 = (*(v35 + 128))(v102, v34, 0, &__s, &v112);
      if ((v62 & 0x80000000) != 0)
      {
        return v62;
      }

      __s[v112] = 0;
      log_OutText(*v107, "FE_ONEWORD", 5, 0, "%s O1: %s", __dst, __s);
      v62 = (*(v35 + 128))(v102, v34, 1, &v110, &v112);
      if ((v62 & 0x80000000) != 0)
      {
        return v62;
      }

      v110[v112] = 0;
      log_OutText(*v107, "FE_ONEWORD", 5, 0, "%s O2: %s", __dst, v110);
      v74 = (*(v35 + 128))(v102, v34, 2, &v109, &v112);
      if ((v74 & 0x80000000) != 0)
      {
        return v74;
      }

      v109[v112] = 0;
      log_OutText(*v107, "FE_ONEWORD", 5, 0, "%s O3: %s", __dst, v109);
      if (cstdlib_strlen(__s))
      {
        v75 = 0;
        v76 = 0;
        do
        {
          v77 = &__s[v75];
          if (__s[v75] == 126)
          {
            v78 = cstdlib_strlen(v77 + 1);
            cstdlib_memmove(v77, v77 + 1, v78 + 1);
            --v76;
          }

          else
          {
            v79 = cstdlib_strlen("¡");
            if (!cstdlib_strncmp(v77, "¡", v79))
            {
              v80 = &__s[v75];
              v81 = cstdlib_strlen(&__s[v75 + 2]);
              cstdlib_memmove(v80 + 1, v80 + 2, v81 + 1);
              __s[v75] = 126;
            }
          }

          v75 = ++v76;
        }

        while (cstdlib_strlen(__s) > v76);
      }

      v82 = cstdlib_strlen(*a20);
      v83 = v82 + cstdlib_strlen(__s) + 2;
      v37 = a15;
      if (v83 >= 0x81u)
      {
        v84 = heap_Realloc(*(v100 + 8), *a20, v83);
        if (!v84)
        {
          goto LABEL_100;
        }

        *a20 = v84;
      }

      if (cstdlib_strlen(__s) == 3)
      {
        v108 = 0;
        utf8_Utf8ToUtf32_Tolerant(__s, 3u, &v108 + 4, 1u, &v108);
        v85 = *a20;
        if (HIDWORD(v108) == 8230)
        {
          v86 = ".";
          goto LABEL_70;
        }
      }

      else
      {
        v85 = *a20;
      }

      v86 = __s;
LABEL_70:
      cstdlib_strcat(v85, v86);
      v87 = 0;
      v88 = v110;
      while (1)
      {
        v89 = v87;
        v90 = v110[v87];
        if (v90 != 32 && v90 != 126)
        {
          break;
        }

        ++v87;
      }

      if (v110[v87])
      {
        while (v90 != 32 && v90 != 126)
        {
          LOBYTE(v90) = v110[++v87];
        }

        v110[v87] = 0;
        v88 = v110;
      }

      if (cstdlib_strcmp(&v88[v89], ""))
      {
        v91 = &v110[v89];
      }

      else
      {
        v91 = "*";
      }

      cstdlib_strcat(*a21, v91);
      if (a11 && cstdlib_strstr(__s1, "latin"))
      {
        cstdlib_strcpy(*a21, a11);
      }

      v92 = 0;
      v93 = v109;
      while (1)
      {
        v94 = v92;
        v95 = v109[v92];
        if (v95 != 32 && v95 != 126)
        {
          break;
        }

        ++v92;
      }

      if (v109[v92])
      {
        while (v95 != 32 && v95 != 126)
        {
          LOBYTE(v95) = v109[++v92];
        }

        v109[v92] = 0;
        v93 = v109;
      }

      if (cstdlib_strcmp(&v93[v94], ""))
      {
        v96 = &v109[v94];
      }

      else
      {
        v96 = "*";
      }

      cstdlib_strcat(*a22, v96);
      v50 = v105 + 1;
      if (v104)
      {
        return v74;
      }
    }
  }

  v38 = heap_Realloc(*(a1 + 8), *a15, v31);
  if (v38)
  {
    *a15 = v38;
    *a19 = v31;
    goto LABEL_13;
  }

LABEL_99:
  v72 = (a1 + 32);
LABEL_100:
  log_OutPublic(*v72, "FE_ONEWORD", 34000, 0);
  return 2310021130;
}

uint64_t crf_mde_seg_fv_new(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v6 = heap_Calloc(*(a1 + 8), 1, 16 * a2);
  *a3 = v6;
  if (!v6)
  {
LABEL_7:
    v10 = 2310021130;
    log_OutPublic(*(a1 + 32), "FE_ONEWORD", 35000, 0);
    return v10;
  }

  *(a3 + 3) = a2;
  if (a2)
  {
    v7 = 0;
    do
    {
      v8 = heap_Calloc(*(a1 + 8), 1, 65);
      v9 = *a3;
      *(*a3 + v7) = v8;
      if (!v8)
      {
        goto LABEL_7;
      }

      *(v9 + v7 + 8) = 65;
      cstdlib_strcpy(v8, "-");
      v7 += 16;
    }

    while (16 * a2 != v7);
  }

  v10 = 0;
  *(a3 + 2) = a2;
  return v10;
}

void *crf_mde_seg_fv_dealloc(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = *a2;
    if (v3)
    {
      v4 = result;
      v5 = *(a2 + 8);
      if (v5)
      {
        v6 = 0;
        for (i = 0; i < v5; ++i)
        {
          if (*(v3 + v6))
          {
            heap_Free(v4[1], *(v3 + v6));
            v3 = *a2;
            *(*a2 + v6) = 0;
            v5 = *(a2 + 8);
          }

          v6 += 16;
        }
      }

      result = heap_Free(v4[1], v3);
      *a2 = 0;
    }
  }

  return result;
}

uint64_t crf_mde_seg_fv_clear(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      cstdlib_strcpy(*(*a1 + v2), "-");
      ++v3;
      v2 += 16;
    }

    while (v3 < *(a1 + 8));
  }

  return 0;
}

uint64_t crf_mde_seg_fv_add(uint64_t a1, void *a2, unsigned int a3, char *__s)
{
  v8 = cstdlib_strlen(__s);
  v9 = *a2 + 16 * a3;
  if (*(v9 + 8) >= v8)
  {
    v11 = *v9;
    goto LABEL_5;
  }

  v10 = v8 + 1;
  v11 = heap_Realloc(*(a1 + 8), *v9, v10);
  if (v11)
  {
    v12 = *a2 + 16 * a3;
    *v12 = v11;
    *(v12 + 8) = v10;
LABEL_5:
    cstdlib_strcpy(v11, __s);
    return 0;
  }

  log_OutPublic(*(a1 + 32), "FE_ONEWORD", 35000, 0);
  return 2310021130;
}

uint64_t crf_mde_seg_get_features(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5, __int16 a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, void *a10, unsigned int a11, unsigned int a12)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a9)
  {
    v14 = 0;
    while (2)
    {
      v15 = &byte_287EEBFB8;
      v16 = "char";
      while (cstdlib_strcmp(*(a8 + 8 * v14), v16))
      {
        v16 = *(v15 + 1);
        v15 += 24;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      BYTE2(v18) = *v15;
      LOWORD(v18) = a6;
      result = (*(v15 - 1))(a1, a2, a3, a4, a5, a11, a12, a7, v18, __s);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = crf_mde_seg_fv_add(a1, a10, v14, __s);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

LABEL_9:
      if (++v14 != a9)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

uint64_t crf_mde_seg_set_padding_features(uint64_t a1, unsigned int a2, int a3, void *a4, int a5)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 0;
  }

  v9 = 0;
  if (a5 == 1)
  {
    v10 = ">";
  }

  else
  {
    v10 = "<";
  }

  while (1)
  {
    v11 = "-";
    if (!v9)
    {
      v11 = __dst;
      cstdlib_strcpy(__dst, v10);
      LH_itoa(a2, __s2, 0xAu);
      cstdlib_strcat(__dst, __s2);
    }

    cstdlib_strcpy(__s, v11);
    result = crf_mde_seg_fv_add(a1, a4, v9, __s);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    if (a3 == ++v9)
    {
      return 0;
    }
  }

  return result;
}

uint64_t crf_mde_seg_fe_char(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, char a10, char *a11)
{
  v11 = a10 + a9;
  if (v11 >= a3)
  {
    v12 = "-";
  }

  else
  {
    v12 = *(a2 + 8 * v11);
  }

  v13 = cstdlib_strlen(v12);
  if ((v13 & 0xFE00) != 0)
  {
    v14 = 512;
  }

  else
  {
    v14 = v13;
  }

  cstdlib_strncpy(a11, v12, v14);
  a11[v14] = 0;
  return 0;
}

uint64_t crf_mde_seg_fe_isvowel(int a1, uint64_t a2, unsigned int a3, int a4, int a5, int a6, int a7, char *__s, __int16 a9, char a10, char *a11)
{
  v11 = a10 + a9;
  if (v11 >= a3)
  {
    v17 = "-";
  }

  else if (__s && (v14 = cstdlib_strlen(__s)) != 0)
  {
    v15 = v14;
    v16 = 0;
    v17 = "0";
    while (1)
    {
      v18 = Utf8_LengthInBytes(&__s[v16], 1);
      if (!cstdlib_strncmp(*(a2 + 8 * v11), &__s[v16], v18))
      {
        break;
      }

      v16 += v18;
      if (v16 >= v15)
      {
        goto LABEL_11;
      }
    }

    v17 = "1";
  }

  else
  {
    v17 = "0";
  }

LABEL_11:
  v19 = cstdlib_strlen(v17);
  if ((v19 & 0xFE00) != 0)
  {
    v20 = 512;
  }

  else
  {
    v20 = v19;
  }

  cstdlib_strncpy(a11, v17, v20);
  a11[v20] = 0;
  return 0;
}

uint64_t crf_mde_seg_fe_char_count(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, char a10, char *a11)
{
  if (a10 + a9 >= a3)
  {
    v13 = cstdlib_strlen("-");
    if ((v13 & 0xFE00) != 0)
    {
      v14 = 512;
    }

    else
    {
      v14 = v13;
    }

    cstdlib_strncpy(a11, "-", v14);
    a11[v14] = 0;
  }

  else
  {
    LH_itoa(a9, __s, 0xAu);
    v11 = cstdlib_strlen(__s);
    if ((v11 & 0xFE00) != 0)
    {
      v12 = 512;
    }

    else
    {
      v12 = v11;
    }

    cstdlib_strncpy(a11, __s, v12);
    a11[v12] = 0;
  }

  return 0;
}

uint64_t crf_mde_seg_fe_char_revcount(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, char a10, char *a11)
{
  v11 = a10 + a9;
  if (v11 < 0 || v11 >= a3)
  {
    v14 = cstdlib_strlen("-");
    if ((v14 & 0xFE00) != 0)
    {
      v15 = 512;
    }

    else
    {
      v15 = v14;
    }

    cstdlib_strncpy(a11, "-", v15);
    a11[v15] = 0;
  }

  else
  {
    LH_itoa(~a9 + a3, __s, 0xAu);
    v12 = cstdlib_strlen(__s);
    if ((v12 & 0xFE00) != 0)
    {
      v13 = 512;
    }

    else
    {
      v13 = v12;
    }

    cstdlib_strncpy(a11, __s, v13);
    a11[v13] = 0;
  }

  return 0;
}

uint64_t crf_mde_seg_fe_morpheme(uint64_t a1, uint64_t a2, signed int a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, unsigned __int16 a9, char a10, char *a11)
{
  v11 = a10 + a9;
  if (v11 >= a3)
  {
    if (a6 == 1 && (v11 & 0x80000000) != 0)
    {
      v12 = "SOS";
    }

    else if (a7 == 1 && v11 >= a3)
    {
      v12 = "EOS";
    }

    else
    {
      v12 = "-";
    }
  }

  else
  {
    v12 = *(a2 + 8 * v11);
  }

  v13 = cstdlib_strlen(v12);
  if ((v13 & 0xFE00) != 0)
  {
    v14 = 512;
  }

  else
  {
    v14 = v13;
  }

  cstdlib_strncpy(a11, v12, v14);
  a11[v14] = 0;
  return 0;
}

uint64_t crf_mde_seg_fe_punc(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, char a10, char *a11)
{
  v11 = a10 + a9;
  if (v11 >= a3)
  {
    v12 = "-";
  }

  else if (*(a4 + 4 * v11) == 1)
  {
    v12 = "YES";
  }

  else
  {
    v12 = "NO";
  }

  v13 = cstdlib_strlen(v12);
  if ((v13 & 0xFE00) != 0)
  {
    v14 = 512;
  }

  else
  {
    v14 = v13;
  }

  cstdlib_strncpy(a11, v12, v14);
  a11[v14] = 0;
  return 0;
}

uint64_t crf_mde_utils_add2Str(uint64_t a1, const char **a2, unsigned __int16 *a3, char *__s)
{
  v8 = cstdlib_strlen(__s);
  v9 = *a3;
  if (v8 >= v9 - cstdlib_strlen(*a2))
  {
    v11 = cstdlib_strlen(__s);
    v12 = *a3;
    v13 = (v11 - v12 + cstdlib_strlen(*a2));
    if (v13 <= 0x80)
    {
      v14 = 128;
    }

    else
    {
      v14 = v13;
    }

    v10 = heap_Realloc(*(a1 + 8), *a2, *a3 + v14 + 1);
    if (!v10)
    {
      log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
      return 2310021130;
    }

    *a2 = v10;
    *a3 += v14;
  }

  else
  {
    v10 = *a2;
  }

  v15 = cstdlib_strlen(v10);
  v16 = *a2;
  if (v15)
  {
    cstdlib_strcat(v16, __s);
  }

  else
  {
    cstdlib_strcpy(v16, __s);
  }

  return 0;
}

uint64_t hlp_Write2WordRec(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, __int16 a5, __int16 a6, int a7, const char *a8, char *__s, char *a10, char *a11, int a12, int a13)
{
  v35 = a5;
  v34 = a6;
  v33 = 0;
  v32 = 8;
  v31 = 0;
  if (a7)
  {
    result = (*(a1 + 80))(a2, a3, *a4, &v31);
    goto LABEL_3;
  }

  if (!a13)
  {
    result = (*(a1 + 88))(a2, a3, *a4, &v31);
LABEL_3:
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  v31 = *a4;
LABEL_7:
  result = (*(a1 + 160))(a2, a3, v31, 0, 1, &v32, &v33);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a1 + 160))(a2, a3, v31, 1, 1, &v35, &v33);
    if ((result & 0x80000000) == 0)
    {
      result = (*(a1 + 160))(a2, a3, v31, 2, 1, &v34, &v33);
      if ((result & 0x80000000) == 0)
      {
        v19 = *(a1 + 160);
        v20 = v31;
        v21 = cstdlib_strlen(__s);
        result = v19(a2, a3, v20, 3, (v21 + 1), __s, &v33);
        if ((result & 0x80000000) == 0)
        {
          v22 = *(a1 + 160);
          v23 = v31;
          v24 = cstdlib_strlen(a8);
          result = v22(a2, a3, v23, 5, (v24 + 1), a8, &v33);
          if ((result & 0x80000000) == 0)
          {
            v25 = *(a1 + 160);
            v26 = v31;
            v27 = cstdlib_strlen(a10);
            result = v25(a2, a3, v26, 6, (v27 + 1), a10, &v33);
            if ((result & 0x80000000) == 0)
            {
              v28 = *(a1 + 160);
              v29 = v31;
              v30 = cstdlib_strlen(a11);
              result = v28(a2, a3, v29, 9, (v30 + 1), a11, &v33);
              if ((result & 0x80000000) == 0)
              {
                result = (*(a1 + 160))(a2, a3, v31, 7, 1, &a12, &v33);
                if ((result & 0x80000000) == 0)
                {
                  *a4 = v31;
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

uint64_t crf_mde_utils_POS_dctlkp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, char **a7)
{
  __c_3 = 0;
  HIWORD(v18) = -1;
  BYTE5(v18) = 0;
  v11 = (*(a2 + 96))(a3, a4, a5, a6, &__c_3, &v18 + 6, &v18 + 5);
  if ((v11 & 0x80000000) == 0)
  {
    if (HIWORD(v18) || (log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s dct look up %s : no result", a5, a6), HIWORD(v18)))
    {
      v12 = cstdlib_strchr(*__c_3, BYTE5(v18));
      if (v12)
      {
        *v12 = 0;
      }

      v13 = *(a1 + 8);
      v14 = cstdlib_strlen(*__c_3);
      v15 = heap_Calloc(v13, 1, v14 + 1);
      *a7 = v15;
      if (v15)
      {
        cstdlib_strcpy(v15, *__c_3);
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s POS dct look up %s : adding %s %s %s", a5, a6, *a7, v17, v18);
      }

      else
      {
        log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
        return 2310021130;
      }
    }
  }

  return v11;
}

uint64_t crf_mde_utils_write_morphemes(uint64_t a1, int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int16 *a11, unsigned __int16 a12, __int16 a13, unsigned __int16 *a14, const char *a15, unsigned __int16 *a16)
{
  v80 = *MEMORY[0x277D85DE8];
  v78 = 0;
  v77 = *a11;
  v19 = cstdlib_strlen(a15);
  cstdlib_strcpy(__dst, "normal");
  if (*a14)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    do
    {
      v22 += cstdlib_strlen(*(*(a14 + 1) + v20)) + 1;
      ++v21;
      v20 += 48;
    }

    while (v21 < *a14);
    v23 = v22 + 1;
  }

  else
  {
    v23 = 1;
  }

  v24 = heap_Calloc(*(a1 + 8), 1, v23);
  if (!v24)
  {
    log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
    return 2310021130;
  }

  v25 = v24;
  v72 = a1;
  cstdlib_strcpy(v24, **(a14 + 1));
  if (*a14 >= 2u)
  {
    cstdlib_strcat(v25, "_");
    if (*a14 >= 2u)
    {
      v26 = 1;
      v27 = 48;
      do
      {
        cstdlib_strcat(v25, *(*(a14 + 1) + v27));
        v28 = *a14;
        if (v26 + 1 < v28)
        {
          cstdlib_strcat(v25, "_");
          v28 = *a14;
        }

        ++v26;
        v27 += 48;
      }

      while (v26 < v28);
    }
  }

  if (cstdlib_strlen(v25) == 128)
  {
    cstdlib_strcat(v25, "_");
  }

  v76 = cstdlib_strlen(v25);
  v29 = a13 + a12 + v76;
  *a16 = v29;
  v30 = Utf8_LengthInBytes(&a15[v29], 1);
  v31 = *a16;
  if (v19 > v31)
  {
    v32 = v30;
    do
    {
      if (!(*(a4 + 128))(a5, a6, &a15[v31]))
      {
        break;
      }

      if (!cstdlib_strncmp(&a15[*a16], "_", v32))
      {
        break;
      }

      v33 = *a16 + v32;
      *a16 = v33;
      v32 = Utf8_LengthInBytes(&a15[v33], 1);
      v31 = *a16;
    }

    while (v19 > v31);
  }

  v70 = a13 + a12;
  v34 = Utf8_LengthInBytes(&a15[v70], 1);
  v35 = a12 - v34 + a13;
  v74 = a5;
  if (v35 >= 0 && (v36 = v34, v37 = &a15[v35], (*(a4 + 128))(a5, a6, v37)))
  {
    v71 = 0;
    v38 = 0;
    v39 = v36;
    LOWORD(v40) = v36;
    do
    {
      v41 = v40;
      if (!cstdlib_strncmp(v37, "_", v39))
      {
        break;
      }

      v38 = v40;
      v42 = Utf8_LengthInBytes(&a15[v70 - v40], 1);
      v40 = v40 + v42;
      v43 = a12 - v40 + a13;
      if (v43 < 0)
      {
        v71 = v41;
        break;
      }

      v39 = v42;
      v37 = &a15[v43];
      v71 = v41;
    }

    while ((*(a4 + 128))(v74, a6, v37));
  }

  else
  {
    v71 = 0;
    v38 = 0;
  }

  v66 = a6;
  if (!v76)
  {
    v47 = 0;
    v45 = 0;
    v44 = 0;
LABEL_50:
    if (a2 == 1 && a3)
    {
      v56 = v72;
      v57 = crf_mde_utils_POS_dctlkp(v72, a4, v74, v66, a3, *(*(a14 + 1) + 48 * v44), &v78);
      v52 = v78;
      if ((v57 & 0x80000000) != 0)
      {
        v47 = v57;
LABEL_72:
        *a11 = v77;
        if (v52)
        {
          goto LABEL_76;
        }

        goto LABEL_77;
      }

      v58 = *a16 - a13;
      if (v78)
      {
        LOWORD(v64) = 0;
        v47 = hlp_Write2WordRec(a7, a9, a10, &v77, a12 - v71 + v45, v58, v44, v78, "", "", __dst, v64, 1);
        if ((v47 & 0x80000000) != 0)
        {
          goto LABEL_75;
        }

        heap_Free(*(v72 + 8), v52);
      }

      else
      {
        LOWORD(v64) = 0;
        v47 = hlp_Write2WordRec(a7, a9, a10, &v77, a12 - v71 + v45, v58, v44, "*", "", "", __dst, v64, 1);
        if ((v47 & 0x80000000) != 0)
        {
LABEL_70:
          *a11 = v77;
          v56 = v72;
          goto LABEL_77;
        }
      }
    }

    else
    {
      if (a12 - v38 + v45 != (*a16 - a13))
      {
        LOWORD(v64) = 0;
        v47 = hlp_Write2WordRec(a7, a9, a10, &v77, a12 - v38 + v45, *a16 - a13, v44, "", "", "", __dst, v64, 1);
      }

      if ((v47 & 0x80000000) != 0)
      {
        goto LABEL_70;
      }
    }

    v59 = (v70 + v76);
    if (v59 > v70 && v76)
    {
      v60 = 0;
      v61 = v70;
      do
      {
        v62 = v25[v60];
        if (a15[v61] != v62)
        {
          a15[v61] = v62;
        }

        if (v59 <= ++v61)
        {
          break;
        }

        ++v60;
      }

      while (v76 > v60);
    }

    goto LABEL_70;
  }

  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v49 = a2 == 1 && a3 != 0;
  v68 = v49;
  v67 = a12 - v71;
  while (1)
  {
    v50 = Utf8_LengthInBytes(&v25[v46], 1);
    if (!cstdlib_strncmp(&v25[v46], "_", v50))
    {
      break;
    }

LABEL_46:
    v46 += v50;
    if (v46 >= v76)
    {
      goto LABEL_50;
    }
  }

  if (!v68)
  {
    LOWORD(v64) = 0;
    v55 = hlp_Write2WordRec(a7, a9, a10, &v77, v67 + v45, v46 + a12, v44, "", "", "", __dst, v64, 1);
    goto LABEL_44;
  }

  v51 = crf_mde_utils_POS_dctlkp(v72, a4, v74, v66, a3, *(*(a14 + 1) + 48 * v44), &v78);
  v52 = v78;
  if ((v51 & 0x80000000) != 0)
  {
    v47 = v51;
    v56 = v72;
    goto LABEL_72;
  }

  v53 = v67 + v45;
  v54 = v46 + a12;
  if (!v78)
  {
    LOWORD(v64) = 0;
    v55 = hlp_Write2WordRec(a7, a9, a10, &v77, v53, v54, v44, "*", "", "", __dst, v64, 1);
LABEL_44:
    v47 = v55;
    if ((v55 & 0x80000000) != 0)
    {
      goto LABEL_70;
    }

    goto LABEL_45;
  }

  LOWORD(v64) = 0;
  v47 = hlp_Write2WordRec(a7, a9, a10, &v77, v53, v54, v44, v78, "", "", __dst, v64, 1);
  if ((v47 & 0x80000000) == 0)
  {
    heap_Free(*(v72 + 8), v52);
    v78 = 0;
LABEL_45:
    ++v44;
    v45 = v46 + 1;
    goto LABEL_46;
  }

  v56 = v72;
LABEL_75:
  *a11 = v77;
LABEL_76:
  heap_Free(*(v56 + 8), v52);
LABEL_77:
  heap_Free(*(v56 + 8), v25);
  return v47;
}

uint64_t crf_mde_utils_adddctres(uint64_t a1, uint64_t a2, const char *a3, char *__s, const char *a5, int a6)
{
  v12 = *(a1 + 8);
  v13 = cstdlib_strlen(__s);
  v14 = heap_Calloc(v12, 1, v13 + 1);
  if (v14)
  {
    v15 = v14;
    cstdlib_strcpy(v14, __s);
    v16 = cstdlib_strchr(__s, 92);
    for (i = 1; v16; ++i)
    {
      *v16 = 0;
      v16 = cstdlib_strchr(v16 + 1, 92);
    }

    v18 = *(a2 + 24);
    if (*(a2 + 24))
    {
      if (*(a2 + 8) + i >= v18)
      {
        v19 = heap_Realloc(*(a1 + 8), *(a2 + 16), 32 * (v18 + i) + 160);
        if (!v19)
        {
          goto LABEL_33;
        }

        *(a2 + 16) = v19;
        v20 = i + *(a2 + 24) + 5;
        *(a2 + 24) = v20;
        v21 = *(a2 + 8);
        if (v21 < v20)
        {
          v22 = v20;
          v23 = (v19 + 32 * v21 + 8);
          v24 = v22 - v21;
          do
          {
            *(v23 - 2) = 0;
            v23[1] = 0;
            v23[2] = 0;
            *v23 = 0;
            v23 += 4;
            --v24;
          }

          while (v24);
        }
      }
    }

    else
    {
      if (i >= 5u)
      {
        v26 = i + 1;
      }

      else
      {
        v26 = 5;
      }

      v27 = heap_Calloc(*(a1 + 8), 1, 32 * v26);
      *(a2 + 16) = v27;
      if (!v27)
      {
        goto LABEL_33;
      }

      *(a2 + 24) = v26;
    }

    v28 = cstdlib_strchr(v15, 92);
    v29 = v15;
    if (v28)
    {
      v30 = v28;
      v29 = v15;
      do
      {
        *v30 = 0;
        v31 = *(a1 + 8);
        v32 = cstdlib_strlen(v29);
        v33 = heap_Calloc(v31, 1, v32 + 1);
        *(*(a2 + 16) + 32 * *(a2 + 8) + 8) = v33;
        if (!v33)
        {
          goto LABEL_33;
        }

        cstdlib_strcpy(v33, v29);
        v34 = *(a1 + 8);
        v35 = cstdlib_strlen(a3);
        v36 = heap_Calloc(v34, 1, v35 + 1);
        *(*(a2 + 16) + 32 * *(a2 + 8) + 16) = v36;
        if (!v36)
        {
          goto LABEL_33;
        }

        cstdlib_strcpy(v36, a3);
        if (a5 && cstdlib_strlen(a5))
        {
          v37 = *(a1 + 8);
          v38 = cstdlib_strlen(a5);
          v39 = heap_Calloc(v37, 1, v38 + 1);
          *(*(a2 + 16) + 32 * *(a2 + 8) + 24) = v39;
          if (!v39)
          {
            goto LABEL_33;
          }

          cstdlib_strcpy(v39, a5);
        }

        v40 = *(a2 + 8);
        *(*(a2 + 16) + 32 * v40) = a6;
        *(a2 + 8) = v40 + 1;
        v29 = v30 + 1;
        v30 = cstdlib_strchr(v30 + 1, 92);
      }

      while (v30);
    }

    v41 = *(a1 + 8);
    v42 = cstdlib_strlen(v29);
    v43 = heap_Calloc(v41, 1, v42 + 1);
    *(*(a2 + 16) + 32 * *(a2 + 8) + 8) = v43;
    if (v43)
    {
      cstdlib_strcpy(v43, v29);
      v44 = *(a1 + 8);
      v45 = cstdlib_strlen(a3);
      v46 = heap_Calloc(v44, 1, v45 + 1);
      *(*(a2 + 16) + 32 * *(a2 + 8) + 16) = v46;
      if (v46)
      {
        cstdlib_strcpy(v46, a3);
        if (!a5 || !cstdlib_strlen(a5))
        {
          goto LABEL_32;
        }

        v47 = *(a1 + 8);
        v48 = cstdlib_strlen(a5);
        v49 = heap_Calloc(v47, 1, v48 + 1);
        *(*(a2 + 16) + 32 * *(a2 + 8) + 24) = v49;
        if (v49)
        {
          cstdlib_strcpy(v49, a5);
LABEL_32:
          v25 = 0;
          v50 = *(a2 + 8);
          *(*(a2 + 16) + 32 * v50) = a6;
          *(a2 + 8) = v50 + 1;
          *(a2 + 28) = 1;
          *(a2 + 40) = 1;
LABEL_34:
          heap_Free(*(a1 + 8), v15);
          return v25;
        }
      }
    }

LABEL_33:
    v25 = 2310021130;
    log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
    goto LABEL_34;
  }

  v25 = 2310021130;
  log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
  return v25;
}

uint64_t crf_mde_utils_sysdctlkp(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9, uint64_t a10)
{
  v58 = 0;
  v56 = 0;
  __s1 = 0;
  v57 = -1;
  v14 = "xps";
  if (((*(a2 + 96))(a3, a4, "fecfg", "mde_affixtags", &v58, &v57, &v56) & 0x80000000) == 0 && v57)
  {
    v15 = cstdlib_strchr(*v58, v56);
    if (v15)
    {
      *v15 = 0;
    }

    v14 = *v58;
  }

  if ((paramc_ParamGetStr(a1[5], "sysdctlookup", &__s1) & 0x80000000) == 0 && !cstdlib_strcmp(__s1, "no"))
  {
    return 0;
  }

  v16 = a9;
  v57 = 0;
  cstdlib_strcpy(__dst, "g2p");
  if (a5)
  {
    cstdlib_strcat(__dst, (a6 + 3 * *a9));
    v17 = (*(a2 + 232))(a3, a4, __dst, a9, &v58, &v57, &v56, 0);
  }

  else
  {
    v17 = (*(a2 + 240))(a3, a4, __dst, a9, &v58, &v57, &v56, a7, 0);
  }

  v18 = v17;
  if ((v17 & 0x80000000) == 0)
  {
    if (v57 || (log_OutText(a1[4], "FE_ONEWORD", 5, 0, "G2P look up %s : no result", a9), v57))
    {
      v49 = v14;
      v19 = 0;
      v20 = 0;
      do
      {
        v21 = v58[v19];
        v22 = cstdlib_strchr(v21, v56);
        if (!v22)
        {
          goto LABEL_34;
        }

        *v22 = 0;
        v23 = cstdlib_strchr(v22 + 1, v56);
        if (!v23)
        {
          goto LABEL_34;
        }

        *v23 = 0;
        v24 = cstdlib_strchr(v23 + 1, v56);
        if (!v24)
        {
          goto LABEL_34;
        }

        *v24 = 0;
        v25 = v24 + 1;
        v26 = cstdlib_strchr(v24 + 1, v56);
        v27 = v26;
        if (v26)
        {
          *v26 = 0;
          v27 = v26 + 1;
          v28 = cstdlib_strchr(v26 + 1, v56);
          if (v28)
          {
            *v28 = 0;
            v29 = cstdlib_strchr(v28 + 1, v56);
            if (v29)
            {
              *v29 = 0;
              v30 = v29 + 1;
              v31 = cstdlib_strchr(v29 + 1, v56);
              if (v31)
              {
                *v31 = 0;
                v32 = cstdlib_strchr(v31 + 1, v56);
                if (v32)
                {
                  *v32 = 0;
                }
              }

              if (!cstdlib_strcmp(v30, "0") || !cstdlib_strcmp(v30, "2"))
              {
                goto LABEL_34;
              }
            }
          }
        }

        v33 = cstdlib_strlen(v25);
        if (v21 && v33 && cstdlib_strlen(v21))
        {
          v34 = a1[1];
          v35 = cstdlib_strlen(v21);
          v36 = heap_Calloc(v34, 1, v35 + 1);
          if (!v36)
          {
            v18 = 2310021130;
            log_OutPublic(a1[4], "FE_ONEWORD", 34000, 0);
            return v18;
          }

          v37 = v36;
          cstdlib_strcpy(v36, v21);
          v38 = heap_Calloc(a1[1], 1, 256);
          if (!v38)
          {
            v18 = 2310021130;
            log_OutPublic(a1[4], "FE_ONEWORD", 34000, 0);
            v46 = a1[1];
            v47 = v37;
            goto LABEL_56;
          }

          v39 = v38;
          if (cstdlib_strlen(v25) == 1 && cstdlib_strstr(v49, v25))
          {
            cstdlib_strcpy(v39, v25);
            v40 = 2;
          }

          else
          {
            cstdlib_strcpy(v39, v25);
            if (a8)
            {
              v41 = v39;
              while (1)
              {
                v42 = cstdlib_strstr(v25, "\"");
                if (v42)
                {
                  cstdlib_strncpy(v41, v25, (v42 - v25));
                  v41[(v42 - v25)] = 0;
                }

                else
                {
                  cstdlib_strcpy(v41, v25);
                }

                v57 = -1;
                v43 = (*(a2 + 96))(a3, a4, a8, v41, &v58, &v57, &v56);
                if ((v43 & 0x80000000) != 0)
                {
                  break;
                }

                if (v57 == 1)
                {
                  v44 = cstdlib_strchr(*v58, v56);
                  if (v44)
                  {
                    *v44 = 0;
                  }

                  cstdlib_strcpy(v41, *v58);
                }

                if (!v42)
                {
                  goto LABEL_51;
                }

                v45 = &v41[cstdlib_strlen(v41)];
                cstdlib_strcpy(v45, "\"");
                v41 = v45 + 1;
                v25 = v42 + 1;
              }

LABEL_55:
              v18 = v43;
              heap_Free(a1[1], v37);
              v46 = a1[1];
              v47 = v39;
LABEL_56:
              heap_Free(v46, v47);
              return v18;
            }

LABEL_51:
            v40 = 1;
          }

          log_OutText(a1[4], "FE_ONEWORD", 5, 0, "G2P look up %s : adding %s %s %s", a9, v37, v39, v27);
          v43 = crf_mde_utils_adddctres(a1, a10, v37, v39, v27, v40);
          if ((v43 & 0x80000000) != 0)
          {
            goto LABEL_55;
          }

          heap_Free(a1[1], v37);
          heap_Free(a1[1], v39);
          v18 = 0;
          v16 = a9;
        }

        else
        {
LABEL_34:
          if (!v20)
          {
            log_OutText(a1[4], "FE_ONEWORD", 5, 0, "G2P look up %s : found entry, but discarded (mde field))", v16);
          }

          v20 = 1;
        }

        ++v19;
      }

      while (v19 < v57);
    }
  }

  return v18;
}

uint64_t crf_mde_utils_dctlkp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, uint64_t a7, int a8)
{
  memset(__c, 0, sizeof(__c));
  v11 = (*(a2 + 96))(a3, a4, a5, a6, &__c[3], &__c[1], __c);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  if (!*&__c[1])
  {
    log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s dct look up %s : no result", a5, a6);
    if (!*&__c[1])
    {
      return v11;
    }
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  while (1)
  {
    v15 = cstdlib_strchr(*(*&__c[3] + 8 * v12), __c[0]);
    v16 = v14;
    if (v15)
    {
      *v15 = 0;
      v16 = v15 + 1;
    }

    v17 = *(a1 + 8);
    v18 = cstdlib_strlen(*(*&__c[3] + 8 * v12));
    v19 = heap_Calloc(v17, 1, v18 + 1);
    if (!v19)
    {
      v11 = 2310021130;
      log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
      return v11;
    }

    v20 = v19;
    cstdlib_strcpy(v19, *(*&__c[3] + 8 * v12));
    v21 = cstdlib_strchr(v16, __c[0]);
    if (v21)
    {
      *v21 = 0;
      v14 = v21 + 1;
      v13 = v16;
      if (!v16)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v14 = v16;
      if (!v13)
      {
LABEL_27:
        v32 = 34008;
LABEL_29:
        v11 = 2310021130;
        log_OutPublic(*(a1 + 32), "FE_ONEWORD", v32, 0);
        v33 = *(a1 + 8);
        v34 = v20;
        goto LABEL_33;
      }
    }

    v22 = *(a1 + 8);
    v23 = cstdlib_strlen(v13);
    v24 = heap_Calloc(v22, 1, v23 + 1);
    if (!v24)
    {
      v32 = 34000;
      goto LABEL_29;
    }

    v25 = v24;
    cstdlib_strcpy(v24, v13);
    v26 = cstdlib_strchr(v14, __c[0]);
    if (v26)
    {
      *v26 = 0;
    }

    if (v14 && *v14 != __c[0] && cstdlib_strlen(v14))
    {
      v27 = *(a1 + 8);
      v28 = cstdlib_strlen(v14);
      v29 = heap_Calloc(v27, 1, v28 + 1);
      v30 = v29;
      if (!v29)
      {
        v11 = 2310021130;
        log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
        goto LABEL_31;
      }

      cstdlib_strcpy(v29, v14);
    }

    else
    {
      v30 = 0;
    }

    log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s dct look up %s : adding %s %s %s", a5, a6, v25, v20, v30);
    v31 = crf_mde_utils_adddctres(a1, a7, v25, v20, v30, a8);
    if ((v31 & 0x80000000) != 0)
    {
      break;
    }

    heap_Free(*(a1 + 8), v25);
    heap_Free(*(a1 + 8), v20);
    if (v30)
    {
      heap_Free(*(a1 + 8), v30);
    }

    if (++v12 >= *&__c[1])
    {
      return 0;
    }
  }

  v11 = v31;
LABEL_31:
  heap_Free(*(a1 + 8), v25);
  heap_Free(*(a1 + 8), v20);
  if (!v30)
  {
    return v11;
  }

  v33 = *(a1 + 8);
  v34 = v30;
LABEL_33:
  heap_Free(v33, v34);
  return v11;
}

uint64_t crf_mde_utils_dynstr_add(uint64_t a1, uint64_t a2, const char *a3, int a4)
{
  v8 = 2310021120;
  v9 = cstdlib_strlen(*a2);
  v10 = cstdlib_strlen(a3);
  v11 = *(a2 + 8);
  if (v9 + v10 + 2 >= v11)
  {
    v12 = heap_Realloc(*(a1 + 8), *a2, v10 + v11 + *(a2 + 10));
    if (!v12)
    {
      log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
      return 2310021130;
    }

    *a2 = v12;
    *(a2 + 8) += v10 + *(a2 + 10);
  }

  if (a4 == 1)
  {
    cstdlib_strcat(*a2, a3);
    return 0;
  }

  if (a4 == 2)
  {
    cstdlib_strcpy(*a2, a3);
    return 0;
  }

  return v8;
}

void *crf_mde_utils_dynstr_free(void *result, uint64_t a2)
{
  v3 = *a2;
  if (v3)
  {
    result = heap_Free(result[1], v3);
    *a2 = 0;
  }

  *(a2 + 8) = 0;
  return result;
}

uint64_t crf_mde_utils_dynstr_init(uint64_t a1, uint64_t a2, unsigned int a3, __int16 a4)
{
  v5 = a3;
  v8 = heap_Calloc(*(a1 + 8), 1, a3);
  *a2 = v8;
  if (v8)
  {
    *(a2 + 8) = v5;
    *(a2 + 10) = a4;
    cstdlib_strcpy(v8, "");
    return 0;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
    return 2310021130;
  }
}

uint64_t crf_mde_utils_CRF_MDE_SEGPAT_T_init(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v6 = heap_Calloc(*(a1 + 8), 1, 80 * a3);
  *a2 = v6;
  if (v6)
  {
    if (a3)
    {
      v7 = 0;
      v8 = 80 * a3;
      while (1)
      {
        result = crf_mde_utils_dynstr_init(a1, *a2 + v7, 0x20u, 16);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = crf_mde_utils_dynstr_init(a1, *a2 + v7 + 32, 0x20u, 16);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = crf_mde_utils_dynstr_init(a1, *a2 + v7 + 48, 0x20u, 16);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = crf_mde_utils_dynstr_init(a1, *a2 + v7 + 16, 0x20u, 16);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = crf_mde_utils_dynstr_init(a1, *a2 + v7 + 64, 0x20u, 16);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        v7 += 80;
        if (v8 == v7)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
    return 2310021130;
  }

  return result;
}

void *crf_mde_utils_CRF_MDE_SEGPAT_T_free(void *result, uint64_t *a2, unsigned int a3)
{
  v4 = *a2;
  if (v4)
  {
    v5 = result;
    if (a3)
    {
      v6 = 0;
      v7 = 80 * a3;
      do
      {
        v8 = *a2;
        v9 = *(*a2 + v6);
        if (v9)
        {
          heap_Free(v5[1], v9);
          *(v8 + v6) = 0;
        }

        v10 = *a2;
        *(v8 + v6 + 8) = 0;
        v11 = v10 + v6;
        v12 = *(v10 + v6 + 32);
        if (v12)
        {
          heap_Free(v5[1], v12);
          *(v11 + 32) = 0;
          v10 = *a2;
        }

        *(v11 + 40) = 0;
        v13 = v10 + v6;
        v14 = *(v10 + v6 + 48);
        if (v14)
        {
          heap_Free(v5[1], v14);
          *(v13 + 48) = 0;
          v10 = *a2;
        }

        *(v13 + 56) = 0;
        v15 = v10 + v6;
        v16 = *(v10 + v6 + 16);
        if (v16)
        {
          heap_Free(v5[1], v16);
          *(v15 + 16) = 0;
          v10 = *a2;
        }

        *(v15 + 24) = 0;
        v17 = v10 + v6;
        v18 = *(v10 + v6 + 64);
        if (v18)
        {
          heap_Free(v5[1], v18);
          *(v17 + 64) = 0;
        }

        *(v17 + 72) = 0;
        v6 += 80;
      }

      while (v7 != v6);
      v4 = *a2;
    }

    result = heap_Free(v5[1], v4);
    *a2 = 0;
  }

  return result;
}

uint64_t crf_mde_utils_do_validation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, unsigned int a7, uint64_t a8, const char *a9, const char *a10, uint64_t a11, uint64_t a12, unsigned __int16 a13, int a14, const char *a15, char **a16, unsigned __int16 *a17)
{
  v17 = a1;
  if (a13)
  {
    v18 = 0;
    v19 = a13;
    do
    {
      v20 = *(a12 + 8 * v18);
      if (*(v20 + 8) == 5)
      {
        log_OutText(*(v17 + 32), "FE_ONEWORD", 5, 0, "skip nbest[%d] as contains split umlaut", v18);
      }

      else if (*v20)
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(v20 + 1) + 48 * v22;
          if (!*(v23 + 8) && !*(v23 + 40))
          {
            *(v23 + 40) = 1;
            v24 = crf_mde_utils_sysdctlkp(v17, a2, a3, a4, a5, a6, a7, a8, *v23, v23);
            if ((v24 & 0x80000000) != 0)
            {
              return v24;
            }

            v25 = (*(*(a12 + 8 * v18) + 8) + 48 * v22);
            v24 = crf_mde_utils_dctlkp(v17, a2, a3, a4, a9, *v25, v25, 1);
            if ((v24 & 0x80000000) != 0)
            {
              return v24;
            }

            if (a10)
            {
              v26 = (*(*(a12 + 8 * v18) + 8) + 48 * v22);
              v24 = crf_mde_utils_dctlkp(v17, a2, a3, a4, a10, *v26, v26, 2);
              if ((v24 & 0x80000000) != 0)
              {
                return v24;
              }
            }

            v27 = *(*(a12 + 8 * v18) + 8);
            v28 = v27 + 48 * v22;
            if (*(v28 + 8))
            {
              v29 = 0;
              *(v28 + 32) = 0;
              v30 = 24;
              do
              {
                v31 = *(*(v27 + 48 * v22 + 16) + v30 - 8);
                if (v31)
                {
                  v32 = cstdlib_strstr(v31, "◈");
                  if (v32)
                  {
                    v33 = v32;
                    v34 = *(*(a12 + 8 * v18) + 8) + 48 * v22;
                    log_OutText(*(v17 + 32), "FE_ONEWORD", 5, 0, "segment %s has phon with special umlaut character=%s", *v34, *(*(v34 + 16) + v30 - 8));
                    v35 = *(*(a12 + 8 * v18) + 8) + 48 * v22;
                    if (*(v35 + 36) == 1)
                    {
                      v36 = "umlauted segment; modified to=%s";
                    }

                    else
                    {
                      v37 = *(*(v35 + 16) + v30 - 8);
                      v38 = cstdlib_strlen("◈");
                      v39 = cstdlib_strlen("◈");
                      v40 = cstdlib_strlen(&v33[v39]);
                      v41 = v37;
                      v17 = a1;
                      cstdlib_memcpy(v41, &v33[v38], v40);
                      v42 = *(*(*(*(a12 + 8 * v18) + 8) + 48 * v22 + 16) + v30 - 8);
                      v43 = cstdlib_strlen("◈");
                      v33 = (v42 + cstdlib_strlen(&v33[v43]));
                      v36 = "non-umlauted segment; modified to=%s";
                    }

                    *v33 = 0;
                    log_OutText(*(v17 + 32), "FE_ONEWORD", 5, 0, v36, *(*(*(*(a12 + 8 * v18) + 8) + 48 * v22 + 16) + v30 - 8));
                  }
                }

                v27 = *(*(a12 + 8 * v18) + 8);
                v44 = *(*(v27 + 48 * v22 + 16) + v30);
                if (v44)
                {
                  v45 = cstdlib_strstr(v44, "force");
                  v27 = *(*(a12 + 8 * v18) + 8);
                  if (v45)
                  {
                    v46 = v45;
                    v47 = cstdlib_strlen(*(*(v27 + 48 * v22 + 16) + v30));
                    v48 = cstdlib_strlen("force");
                    v49 = v48;
                    if (v48 + 1 < v47)
                    {
                      if (v46[v48] == 44)
                      {
                        v49 = v48 + 1;
                      }

                      else
                      {
                        v49 = v48;
                      }
                    }

                    if (!cstdlib_strcmp(*(*(*(*(a12 + 8 * v18) + 8) + 48 * v22 + 16) + v30), "force") || (cstdlib_memmove(v46, &v46[v49], v47 - v49 + 1), !cstdlib_strlen(*(*(*(*(a12 + 8 * v18) + 8) + 48 * v22 + 16) + v30))))
                    {
                      heap_Free(*(a1 + 8), *(*(*(*(a12 + 8 * v18) + 8) + 48 * v22 + 16) + v30));
                      *(*(*(*(a12 + 8 * v18) + 8) + 48 * v22 + 16) + v30) = 0;
                    }

                    v27 = *(*(a12 + 8 * v18) + 8);
                    *(v27 + 48 * v22 + 32) = 1;
                    v17 = a1;
                  }
                }

                ++v29;
                v30 += 32;
              }

              while (v29 < *(v27 + 48 * v22 + 8));
              for (i = 0; i != a13; ++i)
              {
                v51 = *(a12 + 8 * i);
                if (*v51)
                {
                  for (j = 0; j < *v51; ++j)
                  {
                    if ((v18 != i || v22 != j) && *(v51 + 8) != 5)
                    {
                      v53 = *(v51 + 1) + 48 * j;
                      if (!*(v53 + 8))
                      {
                        if (cstdlib_strcmp(*(*(*(a12 + 8 * v18) + 8) + 48 * v22), *v53))
                        {
                          v51 = *(a12 + 8 * i);
                        }

                        else
                        {
                          *(*(*(a12 + 8 * i) + 8) + 48 * j + 16) = heap_Calloc(*(v17 + 8), 1, 32 * *(*(*(a12 + 8 * v18) + 8) + 48 * v22 + 8));
                          v51 = *(a12 + 8 * i);
                          v54 = *(v51 + 1);
                          v55 = v54 + 48 * j;
                          if (!*(v55 + 16))
                          {
                            goto LABEL_213;
                          }

                          v56 = *(a12 + 8 * v18);
                          v57 = *(v56 + 8);
                          v58 = *(v57 + 48 * v22 + 8);
                          *(v55 + 24) = v58;
                          v59 = v54 + 48 * j;
                          *(v59 + 8) = v58;
                          *(v59 + 28) = 1;
                          *(v59 + 40) = 1;
                          if (v58)
                          {
                            v60 = 0;
                            v61 = 0;
                            while (1)
                            {
                              v62 = *(v57 + 48 * v22 + 16) + v60;
                              *(*(v54 + 48 * j + 16) + v60) = *v62;
                              v63 = *(v62 + 8);
                              if (v63)
                              {
                                v64 = *(v17 + 8);
                                v65 = cstdlib_strlen(v63);
                                *(*(*(*(a12 + 8 * i) + 8) + 48 * j + 16) + v60 + 8) = heap_Calloc(v64, 1, v65 + 1);
                                v66 = *(*(*(*(a12 + 8 * i) + 8) + 48 * j + 16) + v60 + 8);
                                if (!v66)
                                {
                                  break;
                                }

                                cstdlib_strcpy(v66, *(*(*(*(a12 + 8 * v18) + 8) + 48 * v22 + 16) + v60 + 8));
                                v56 = *(a12 + 8 * v18);
                                v17 = a1;
                              }

                              v67 = *(v17 + 8);
                              v68 = cstdlib_strlen(*(*(*(v56 + 8) + 48 * v22 + 16) + v60 + 16));
                              *(*(*(*(a12 + 8 * i) + 8) + 48 * j + 16) + v60 + 16) = heap_Calloc(v67, 1, v68 + 1);
                              v69 = *(*(*(*(a12 + 8 * i) + 8) + 48 * j + 16) + v60 + 16);
                              if (!v69)
                              {
                                break;
                              }

                              cstdlib_strcpy(v69, *(*(*(*(a12 + 8 * v18) + 8) + 48 * v22 + 16) + v60 + 16));
                              v56 = *(a12 + 8 * v18);
                              v57 = *(v56 + 8);
                              v70 = v57 + 48 * v22;
                              v51 = *(a12 + 8 * i);
                              v54 = *(v51 + 1);
                              *(v54 + 48 * j + 32) = *(v70 + 32);
                              ++v61;
                              v60 += 32;
                              v17 = a1;
                              if (v61 >= *(v70 + 8))
                              {
                                goto LABEL_43;
                              }
                            }

LABEL_208:
                            v110 = 2310021130;
                            v152 = *(a1 + 32);
LABEL_209:
                            log_OutPublic(v152, "FE_ONEWORD", 34000, 0);
                            return v110;
                          }
                        }
                      }
                    }

LABEL_43:
                    ;
                  }
                }

                v19 = a13;
              }
            }

            else
            {
              for (k = 0; k != a13; ++k)
              {
                v72 = *(a12 + 8 * k);
                if (*v72)
                {
                  v73 = 0;
                  v74 = 0;
                  do
                  {
                    if (v18 != k || v21 != v73)
                    {
                      v75 = cstdlib_strcmp(*(*(*(a12 + 8 * v18) + 8) + 48 * v22), *(*(v72 + 1) + v73));
                      v72 = *(a12 + 8 * k);
                      if (!v75)
                      {
                        *(*(v72 + 1) + v73 + 40) = 1;
                      }
                    }

                    ++v74;
                    v73 += 48;
                  }

                  while (v74 < *v72);
                }

                v19 = a13;
              }
            }
          }

          ++v22;
          v20 = *(a12 + 8 * v18);
          v21 += 48;
        }

        while (v22 < *v20);
      }

      ++v18;
    }

    while (v18 != v19);
    for (m = 0; m != a13; ++m)
    {
      v77 = *(a12 + 8 * m);
      v78 = *v77;
      if (*v77)
      {
        v79 = 0;
        v80 = 0;
        v81 = (*(v77 + 1) + 32);
        do
        {
          if (!*(v81 - 12))
          {
            *(v81 - 1) = 0;
            v80 = 1;
          }

          v82 = *v81;
          v81 += 12;
          if (v82 == 1)
          {
            v79 = 1;
          }

          --v78;
        }

        while (v78);
        if (v80 == 1)
        {
          *(v77 + 8) = 2;
          if (v79 == 1)
          {
            v83 = 0;
            *(v77 + 8) = 1;
            do
            {
              v84 = *(v77 + 1);
              if (*(v84 + 48 * v83 + 8))
              {
                v85 = 0;
                v86 = 8;
                do
                {
                  if (**(v84 + 48 * v83 + 16) == 2)
                  {
                    v87 = *(v17 + 8);
                    v88 = cstdlib_strlen("*");
                    *(*(*(*(a12 + 8 * m) + 8) + 48 * v83 + 16) + v86) = heap_Calloc(v87, 1, v88 + 1);
                    v89 = *(*(*(*(a12 + 8 * m) + 8) + 48 * v83 + 16) + v86);
                    if (!v89)
                    {
                      goto LABEL_208;
                    }

                    cstdlib_strcpy(v89, "*");
                    v77 = *(a12 + 8 * m);
                    v17 = a1;
                  }

                  ++v85;
                  v84 = *(v77 + 1);
                  v86 += 32;
                }

                while (v85 < *(v84 + 48 * v83 + 8));
              }

              else
              {
                *(*(*(a12 + 8 * m) + 8) + 48 * v83 + 16) = heap_Calloc(*(v17 + 8), 1, 32);
                if (!*(*(*(a12 + 8 * m) + 8) + 48 * v83 + 16))
                {
                  goto LABEL_213;
                }

                v90 = v17;
                v91 = *(v17 + 8);
                v92 = cstdlib_strlen("*");
                *(*(*(*(a12 + 8 * m) + 8) + 48 * v83 + 16) + 8) = heap_Calloc(v91, 1, v92 + 1);
                v93 = *(*(*(*(a12 + 8 * m) + 8) + 48 * v83 + 16) + 8);
                if (!v93)
                {
                  v110 = 2310021130;
                  v152 = *(v90 + 32);
                  goto LABEL_209;
                }

                cstdlib_strcpy(v93, "*");
                v94 = *(v90 + 8);
                v95 = cstdlib_strlen(*(*(*(a12 + 8 * m) + 8) + 48 * v83));
                *(*(*(*(a12 + 8 * m) + 8) + 48 * v83 + 16) + 16) = heap_Calloc(v94, 1, v95 + 1);
                v96 = *(*(a12 + 8 * m) + 8) + 48 * v83;
                v97 = *(*(v96 + 16) + 16);
                if (!v97)
                {
                  goto LABEL_208;
                }

                cstdlib_strcpy(v97, *v96);
                v77 = *(a12 + 8 * m);
                v98 = *(v77 + 1) + 48 * v83;
                **(v98 + 16) = 0;
                *(v98 + 8) = 1;
                v17 = a1;
              }

              ++v83;
            }

            while (v83 < *v77);
          }
        }
      }
    }
  }

  v99 = a13;
  v24 = crf_mde_dump(v17, "After mlex lookup", a12, a13, a14, a16, a17);
  if ((v24 & 0x80000000) != 0)
  {
    return v24;
  }

  log_OutText(*(v17 + 32), "FE_ONEWORD", 5, 0, "get pattern combinations for valid/partial segmentations:", 0);
  if (!a13)
  {
    return crf_mde_dump(v17, "results after mlex/pattern validation", a12, v99, a14, a16, a17);
  }

  v100 = 0;
  while (1)
  {
    v101 = *(v17 + 32);
    if (*(*(a12 + 8 * v100) + 32) <= 1u)
    {
      break;
    }

    log_OutText(v101, "FE_ONEWORD", 5, 0, "skip invalid nbest[%d]", v100);
LABEL_180:
    if (++v100 == v99)
    {
      return crf_mde_dump(v17, "results after mlex/pattern validation", a12, v99, a14, a16, a17);
    }
  }

  log_OutText(v101, "FE_ONEWORD", 5, 0, "doing valid nbest[%d]", v100);
  v102 = *(a12 + 8 * v100);
  v177 = 0;
  v178[0] = 0;
  v176 = 0;
  v175 = -1;
  v103 = *v102;
  if (*v102)
  {
    v104 = v102;
    v105 = (*(v102 + 1) + 8);
    v106 = 1;
    do
    {
      v107 = *v105;
      v105 += 24;
      v106 *= v107;
      --v103;
    }

    while (v103);
  }

  else
  {
    v104 = v102;
    v106 = 1;
  }

  v174 = 0;
  v108 = v106;
  v109 = crf_mde_utils_CRF_MDE_SEGPAT_T_init(v17, v178, v106);
  if ((v109 & 0x80000000) != 0 || (v109 = crf_mde_utils_CRF_MDE_SEGPAT_T_init(v17, &v177, v108), (v109 & 0x80000000) != 0))
  {
    v110 = v109;
    goto LABEL_177;
  }

  v175 = -1;
  v110 = (*(a2 + 96))(a3, a4, "fecfg", "mde_addpos", &v176, &v175, &v174);
  v166 = 1;
  if ((v110 & 0x80000000) == 0 && v175)
  {
    v111 = cstdlib_strchr(*v176, v174);
    if (v111)
    {
      *v111 = 0;
    }

    v166 = cstdlib_strcmp(*v176, "YES") && cstdlib_strcmp(*v176, "yes");
  }

  if (!*v104)
  {
LABEL_177:
    v17 = a1;
    crf_mde_utils_CRF_MDE_SEGPAT_T_free(a1, v178, v108);
    crf_mde_utils_CRF_MDE_SEGPAT_T_free(a1, &v177, v108);
    if ((v110 & 0x80000000) != 0)
    {
      return v110;
    }

    v147 = *(a12 + 8 * v100);
    if (!*(v147 + 16))
    {
      *(v147 + 32) = 3;
    }

    goto LABEL_180;
  }

  v112 = v104;
  v113 = 0;
  LOWORD(v114) = 0;
  v168 = v177;
  v162 = v178[0] + 64;
  v154 = v178[0];
  v115 = (v178[0] + 32);
  v164 = v108;
  v157 = v112;
  do
  {
    v116 = *(v112 + 1) + 48 * v113;
    if (!*(v116 + 8))
    {
      LOWORD(v114) = 0;
      v108 = v164;
      goto LABEL_172;
    }

    v155 = v115;
    v117 = 0;
    v118 = 0;
    v158 = v114;
    v160 = v114;
    v156 = v113;
    do
    {
      if (v114)
      {
        v120 = v160;
        v119 = v162;
        while (1)
        {
          v121 = v168 + 80 * v118;
          v122 = crf_mde_utils_dynstr_add(a1, v121 + 32, *(v119 - 4), 2);
          if ((v122 & 0x80000000) != 0)
          {
            goto LABEL_175;
          }

          v122 = crf_mde_utils_dynstr_add(a1, v121 + 32, a15, 1);
          if ((v122 & 0x80000000) != 0)
          {
            goto LABEL_175;
          }

          v123 = *(v116 + 16) + 32 * v117;
          if (*v123 == 2)
          {
            v122 = crf_mde_utils_dynstr_add(a1, v121 + 32, *v116, 1);
            if ((v122 & 0x80000000) != 0)
            {
              goto LABEL_175;
            }

            v124 = a1;
            if (v166)
            {
              goto LABEL_127;
            }

            v122 = crf_mde_utils_dynstr_add(a1, v121 + 32, "_", 1);
            if ((v122 & 0x80000000) != 0)
            {
              goto LABEL_175;
            }

            v125 = *(*(v116 + 16) + 32 * v117 + 8);
            v126 = v121 + 32;
          }

          else
          {
            v125 = *(v123 + 8);
            v126 = v121 + 32;
            v124 = a1;
          }

          v122 = crf_mde_utils_dynstr_add(v124, v126, v125, 1);
          if ((v122 & 0x80000000) != 0)
          {
            goto LABEL_175;
          }

LABEL_127:
          v122 = crf_mde_utils_dynstr_add(v124, v121 + 48, *(v119 - 2), 2);
          if ((v122 & 0x80000000) != 0)
          {
            goto LABEL_175;
          }

          v122 = crf_mde_utils_dynstr_add(v124, v121 + 48, a15, 1);
          if ((v122 & 0x80000000) != 0)
          {
            goto LABEL_175;
          }

          v122 = crf_mde_utils_dynstr_add(v124, v121 + 48, *(*(v116 + 16) + 32 * v117 + 8), 1);
          if ((v122 & 0x80000000) != 0)
          {
            goto LABEL_175;
          }

          v122 = crf_mde_utils_dynstr_add(v124, v121, *(v119 - 8), 2);
          if ((v122 & 0x80000000) != 0)
          {
            goto LABEL_175;
          }

          v122 = crf_mde_utils_dynstr_add(v124, v121, a15, 1);
          if ((v122 & 0x80000000) != 0)
          {
            goto LABEL_175;
          }

          v122 = crf_mde_utils_dynstr_add(v124, v121, *(*(v116 + 16) + 32 * v117 + 16), 1);
          if ((v122 & 0x80000000) != 0)
          {
            goto LABEL_175;
          }

          v122 = crf_mde_utils_dynstr_add(v124, v121 + 64, *v119, 2);
          if ((v122 & 0x80000000) != 0)
          {
            goto LABEL_175;
          }

          v122 = crf_mde_utils_dynstr_add(v124, v121 + 64, a15, 1);
          if ((v122 & 0x80000000) != 0)
          {
            goto LABEL_175;
          }

          v127 = *(*(v116 + 16) + 32 * v117 + 24);
          if (!v127)
          {
            v127 = "*";
          }

          v122 = crf_mde_utils_dynstr_add(a1, v121 + 64, v127, 1);
          if ((v122 & 0x80000000) != 0)
          {
            goto LABEL_175;
          }

          ++v118;
          v119 += 10;
          if (!--v120)
          {
            goto LABEL_153;
          }
        }
      }

      v128 = *(v116 + 16) + 32 * v117;
      v129 = v168 + 80 * v118;
      if (*v128 == 2)
      {
        v130 = a1;
        v122 = crf_mde_utils_dynstr_add(a1, v129 + 32, *v116, 2);
        if ((v122 & 0x80000000) != 0)
        {
          goto LABEL_175;
        }

        if (v166)
        {
          goto LABEL_147;
        }

        v122 = crf_mde_utils_dynstr_add(a1, v129 + 32, "_", 1);
        if ((v122 & 0x80000000) != 0)
        {
          goto LABEL_175;
        }

        v131 = *(*(v116 + 16) + 32 * v117 + 8);
        v132 = v129 + 32;
        v133 = a1;
        v134 = 1;
      }

      else
      {
        v131 = *(v128 + 8);
        v132 = v129 + 32;
        v130 = a1;
        v133 = a1;
        v134 = 2;
      }

      v122 = crf_mde_utils_dynstr_add(v133, v132, v131, v134);
      if ((v122 & 0x80000000) != 0)
      {
        goto LABEL_175;
      }

LABEL_147:
      v135 = v130;
      v136 = v168 + 80 * v118;
      v122 = crf_mde_utils_dynstr_add(v135, v136 + 48, *(*(v116 + 16) + 32 * v117 + 8), 2);
      if ((v122 & 0x80000000) != 0 || (v122 = crf_mde_utils_dynstr_add(v135, v136, *(*(v116 + 16) + 32 * v117 + 16), 2), (v122 & 0x80000000) != 0))
      {
LABEL_175:
        v110 = v122;
        v99 = a13;
        goto LABEL_176;
      }

      v137 = *(*(v116 + 16) + 32 * v117 + 24);
      if (!v137)
      {
        v137 = "*";
      }

      v138 = crf_mde_utils_dynstr_add(a1, v136 + 64, v137, 2);
      v99 = a13;
      if ((v138 & 0x80000000) != 0)
      {
        v110 = v138;
        goto LABEL_176;
      }

      ++v118;
LABEL_153:
      ++v117;
      v99 = a13;
      v113 = v156;
      v112 = v157;
      LOWORD(v114) = v158;
    }

    while (v117 < *(v116 + 8));
    if (v118)
    {
      v114 = 0;
      v139 = 0;
      v108 = v164;
      v115 = v155;
      while (1)
      {
        v159 = v114;
        if (v114)
        {
          v140 = 0;
          v141 = v114;
          v142 = v115;
          v143 = v114;
          do
          {
            v144 = *v142;
            v142 += 10;
            if (!cstdlib_strcmp(v144, *(v168 + 80 * v139 + 32)))
            {
              v140 = 1;
            }

            --v143;
          }

          while (v143);
          v115 = v155;
          if (v140)
          {
            v99 = a13;
            v17 = a1;
            v114 = v159;
            goto LABEL_169;
          }
        }

        else
        {
          v141 = 0;
        }

        v145 = (v168 + 80 * v139);
        v146 = crf_mde_utils_dynstr_add(a1, v154 + 80 * v141 + 32, v145[4], 2);
        if ((v146 & 0x80000000) != 0 || (v146 = crf_mde_utils_dynstr_add(a1, v154 + 80 * v141 + 48, v145[6], 2), (v146 & 0x80000000) != 0) || (v146 = crf_mde_utils_dynstr_add(a1, v154 + 80 * v141, *v145, 2), (v146 & 0x80000000) != 0) || (v146 = crf_mde_utils_dynstr_add(a1, v154 + 80 * v141 + 64, v145[8], 2), (v146 & 0x80000000) != 0))
        {
          v110 = v146;
          v99 = a13;
LABEL_176:
          v108 = v164;
          goto LABEL_177;
        }

        v17 = a1;
        v114 = (v159 + 1);
        v99 = a13;
        v108 = v164;
LABEL_169:
        ++v139;
        v113 = v156;
        v112 = v157;
        if (v139 == v118)
        {
          goto LABEL_172;
        }
      }
    }

    LOWORD(v114) = 0;
    v17 = a1;
    v108 = v164;
    v115 = v155;
LABEL_172:
    ++v113;
  }

  while (v113 < *v112);
  if (!v114)
  {
    v110 = 0;
    goto LABEL_177;
  }

  v169 = v114;
  v148 = heap_Calloc(*(v17 + 8), 1, 80 * v114);
  *(v157 + 3) = v148;
  if (!v148)
  {
LABEL_213:
    v110 = 2310021130;
    v152 = *(v17 + 32);
    goto LABEL_209;
  }

  v149 = 0;
  v110 = 0;
  v157[8] = 0;
  while (1)
  {
    if (a11)
    {
      log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "   check pattern %s", *v115);
      v175 = -1;
      v110 = (*(a2 + 96))(a3, a4, "mde_segpatterns", *v115, &v176, &v175, &v174);
      if ((v110 & 0x80000000) != 0)
      {
        return v110;
      }
    }

    if (v175)
    {
      v150 = cstdlib_strchr(*v176, v174);
      if (v150)
      {
        *v150 = 0;
      }

      log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "     Found Solution %d %s : Valid, PRON=%s POS=%s", v149, *v115, *(v115 - 4), *v176);
      v151 = crf_mde_utils_dynstr_init(a1, *(v157 + 3) + 80 * v157[8] + 16, 0x20u, 16);
      if ((v151 & 0x80000000) != 0 || (v151 = crf_mde_utils_dynstr_add(a1, *(v157 + 3) + 80 * v157[8] + 16, *v176, 2), (v151 & 0x80000000) != 0) || (v151 = crf_mde_utils_dynstr_init(a1, *(v157 + 3) + 80 * v157[8] + 32, 0x20u, 16), (v151 & 0x80000000) != 0) || (v151 = crf_mde_utils_dynstr_add(a1, *(v157 + 3) + 80 * v157[8] + 32, *v115, 2), (v151 & 0x80000000) != 0) || (v151 = crf_mde_utils_dynstr_init(a1, *(v157 + 3) + 80 * v157[8] + 48, 0x20u, 16), (v151 & 0x80000000) != 0) || (v151 = crf_mde_utils_dynstr_add(a1, *(v157 + 3) + 80 * v157[8] + 48, v115[2], 2), (v151 & 0x80000000) != 0) || (v151 = crf_mde_utils_dynstr_init(a1, *(v157 + 3) + 80 * v157[8], 0x20u, 16), (v151 & 0x80000000) != 0) || (v151 = crf_mde_utils_dynstr_add(a1, *(v157 + 3) + 80 * v157[8], *(v115 - 4), 2), (v151 & 0x80000000) != 0) || (v151 = crf_mde_utils_dynstr_init(a1, *(v157 + 3) + 80 * v157[8] + 64, 0x20u, 16), (v151 & 0x80000000) != 0) || (v151 = crf_mde_utils_dynstr_add(a1, *(v157 + 3) + 80 * v157[8] + 64, v115[4], 2), (v151 & 0x80000000) != 0))
      {
        v110 = v151;
        goto LABEL_176;
      }

      v110 = 0;
      ++v157[8];
      v108 = v164;
    }

    else
    {
      log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "     pattern [%d] %s : Invalid", v149, *v115);
    }

    ++v149;
    v115 += 10;
    if (v169 == v149)
    {
      goto LABEL_177;
    }
  }
}

uint64_t crf_mde_dump(uint64_t a1, const char *a2, uint64_t a3, unsigned int a4, int a5, char **a6, unsigned __int16 *a7)
{
  if (!a5)
  {
    return 0;
  }

  log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s:", a2);
  if (!a4)
  {
    return 0;
  }

  v12 = 0;
  v40 = a4;
  v41 = a6;
  v42 = a7;
  while (1)
  {
    log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "nbest[%d]", v12);
    cstdlib_strcpy(*a6, "MSD: ");
    v13 = *(a3 + 8 * v12);
    v14 = *v13;
    if (*v13)
    {
      v15 = 0;
      v16 = (*(v13 + 1) + 28);
      do
      {
        v17 = *v16;
        v16 += 12;
        if (!v17)
        {
          v15 = 1;
        }

        --v14;
      }

      while (v14);
      if (v15 != 1)
      {
        break;
      }

      result = crf_mde_utils_add2Str(a1, a6, a7, " !! ");
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v13 = *(a3 + 8 * v12);
      if (*v13)
      {
        break;
      }
    }

LABEL_18:
    log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s", *a6);
    v22 = *(*(a3 + 8 * v12) + 32) - 1;
    if (v22 <= 4)
    {
      log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, off_279DAC9D8[v22], 0);
    }

    v23 = *(a3 + 8 * v12);
    if (*v23)
    {
      v24 = 0;
      do
      {
        v25 = *(v23 + 1) + 48 * v24;
        v26 = "   ";
        if (!*(v25 + 28))
        {
          v26 = "!! ";
        }

        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s %s", v26, *v25);
        v23 = *(a3 + 8 * v12);
        v27 = *(v23 + 1);
        if (*(v27 + 48 * v24 + 8))
        {
          v28 = 0;
          v29 = 0;
          do
          {
            v30 = *(v27 + 48 * v24 + 16) + v28;
            v31 = " ISAffix";
            if (*v30 != 2)
            {
              v31 = "";
            }

            v32 = *(v30 + 8);
            v33 = *(v30 + 16);
            if (v32)
            {
              v34 = " POS:";
            }

            else
            {
              v34 = "";
            }

            if (!v32)
            {
              v32 = "";
            }

            v35 = " PHON:";
            if (!v33)
            {
              v35 = "";
              v33 = "";
            }

            v36 = *(v30 + 24);
            v37 = " FEAT:";
            if (!v36)
            {
              v37 = "";
              v36 = "";
            }

            log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "     %s%s%s%s%s%s%s", v31, v34, v32, v35, v33, v37, v36);
            v23 = *(a3 + 8 * v12);
            ++v29;
            v27 = *(v23 + 1);
            v28 += 32;
          }

          while (v29 < *(v27 + 48 * v24 + 8));
        }

        ++v24;
      }

      while (v24 < *v23);
    }

    if (v23[8])
    {
      v38 = 0;
      v39 = 0;
      do
      {
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "    solution[%d]", v39);
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "      segpat:%s", *(*(*(a3 + 8 * v12) + 24) + v38 + 32));
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "      segpatPOS:%s", *(*(*(a3 + 8 * v12) + 24) + v38 + 48));
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "      wordPOS:%s", *(*(*(a3 + 8 * v12) + 24) + v38 + 16));
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "      pron:%s", *(*(*(a3 + 8 * v12) + 24) + v38));
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "      feat:%s", *(*(*(a3 + 8 * v12) + 24) + v38 + 64));
        ++v39;
        v38 += 80;
      }

      while (v39 < *(*(a3 + 8 * v12) + 16));
    }

    ++v12;
    a6 = v41;
    a7 = v42;
    if (v12 == v40)
    {
      return 0;
    }
  }

  v19 = 0;
  v20 = 0;
  while (1)
  {
    result = crf_mde_utils_add2Str(a1, a6, a7, *(*(v13 + 1) + v19));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v13 = *(a3 + 8 * v12);
    v21 = *v13;
    if (v20 + 1 < v21)
    {
      result = crf_mde_utils_add2Str(a1, a6, a7, " | ");
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v13 = *(a3 + 8 * v12);
      v21 = *v13;
    }

    ++v20;
    v19 += 48;
    if (v20 >= v21)
    {
      goto LABEL_18;
    }
  }
}

char *dynamic_strcat(const char **a1, const char *a2, size_t *a3, uint64_t *a4)
{
  v8 = cstdlib_strlen(*a1);
  v9 = cstdlib_strlen(a2) + v8;
  v10 = *a1;
  if (v9 >= *a3)
  {
    v11 = v9 + 128;
    result = heap_Realloc(a4, v10, (v9 + 128));
    if (!result)
    {
      return result;
    }

    v10 = result;
    *a1 = result;
    *a3 = v11;
  }

  return cstdlib_strcat(v10, a2);
}

char *dynamic_strncat(const char **a1, const char *a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v10 = cstdlib_strlen(*a1) + a3;
  v11 = *a1;
  if (v10 >= *a4)
  {
    v12 = v10 + 128;
    result = heap_Realloc(a5, v11, (v10 + 128));
    if (!result)
    {
      return result;
    }

    v11 = result;
    *a1 = result;
    *a4 = v12;
  }

  return cstdlib_strncat(v11, a2, a3);
}

uint64_t fe_oneword_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v54 = 0;
  v55 = 0;
  v52 = 0;
  v53 = 0;
  v5 = 2310021130;
  v50 = 0;
  v51 = 0;
  v46 = 0;
  if (!a5)
  {
    return 2310021127;
  }

  v49 = 0;
  __b = 0u;
  v48 = 0u;
  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v55);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v12 = heap_Calloc(*(v55 + 8), 1, 2288);
  v13 = v55;
  if (!v12)
  {
    log_OutPublic(*(v55 + 32), "FE_ONEWORD", 34000, 0);
    return v5;
  }

  v14 = v12;
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a1;
  v12[5] = a2;
  *v12 = v13;
  v12[1] = a1;
  v15 = heap_Calloc(*(v13 + 8), 1, 1040);
  *(v14 + 48) = v15;
  if (!v15)
  {
LABEL_52:
    v30 = v55;
LABEL_53:
    log_OutPublic(*(v30 + 32), "FE_ONEWORD", 34000, 0);
LABEL_64:
    fe_oneword_ObjClose(*a5, *(a5 + 8));
    *a5 = 0;
    *(a5 + 8) = 0;
    return v5;
  }

  *v15 = a3;
  v15[1] = a4;
  Object = objc_GetObject(*(v55 + 48), "LINGDB", &v54);
  if ((Object & 0x80000000) != 0 || (*(v14 + 56) = *(v54 + 8), Object = objc_GetObject(*(v55 + 48), "FE_DCTLKP", &v53), (Object & 0x80000000) != 0) || (v17 = v53, *(v14 + 80) = *(v53 + 8), *(v14 + 64) = *(v17 + 16), Object = objc_GetObject(*(v55 + 48), "FE_DEPES", &v52), (Object & 0x80000000) != 0) || (v18 = v52, *(v14 + 104) = *(v52 + 8), *(v14 + 88) = *(v18 + 16), Object = objc_GetObject(*(v55 + 48), "CLMOBJECT", &v51), (Object & 0x80000000) != 0) || (v19 = v51, *(v14 + 128) = *(v51 + 8), *(v14 + 112) = *(v19 + 16), Object = objc_GetObject(*(v55 + 48), "PHONMAP", &v50), (Object & 0x80000000) != 0))
  {
LABEL_63:
    v5 = Object;
    goto LABEL_64;
  }

  v20 = v50;
  *(v14 + 152) = *(v50 + 8);
  *(v14 + 136) = *(v20 + 16);
  inited = checkStatCOMP(*(v14 + 64), *(v14 + 72), *(v14 + 80), (v14 + 2000));
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = checkSkipCrosstoken(*(v14 + 64), *(v14 + 72), *(v14 + 80), (v14 + 936));
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = checkFeOneWordCLM(*(v14 + 64), *(v14 + 72), *(v14 + 80), (v14 + 940));
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = checkParaDCT(*(v14 + 64), *(v14 + 72), *(v14 + 80), (v14 + 1996));
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = oneword_posparser_Open(v14);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v21 = *(v14 + 2176);
  if (v21)
  {
    heap_Free(*(*v14 + 8), v21);
  }

  *(v14 + 2176) = 0;
  inited = hlp_setKeyword(*v14, *(v14 + 64), *(v14 + 72), *(v14 + 80), "feoneword_latinPOStag", (v14 + 2176));
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v22 = *(v14 + 2184);
  if (v22)
  {
    heap_Free(*(*v14 + 8), v22);
  }

  *(v14 + 2184) = 0;
  inited = hlp_setKeyword(*v14, *(v14 + 64), *(v14 + 72), *(v14 + 80), "feoneword_latin2enx", (v14 + 2184));
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *(v14 + 2168) = 0;
  inited = crf_mde_seg_load(*(v14 + 16), *(v14 + 24), *(v14 + 32), *(v14 + 40), *v14, *(v14 + 8), *(v14 + 64), *(v14 + 72), *(v14 + 80), v14 + 2016, (v14 + 2168));
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *(v14 + 2192) = 0;
  if (!*(v14 + 2168))
  {
    Object = com_mosynt_UseMosynt(*(v14 + 64), *(v14 + 72), *(v14 + 80), (v14 + 2192));
    if ((Object & 0x80000000) != 0)
    {
      goto LABEL_63;
    }

    if (*(v14 + 2192))
    {
      LODWORD(v44[0]) = 1;
      Object = hlp_GetParams(v14, (v14 + 2248), v44);
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_63;
      }

      Object = wgram_LoadData(a3, a4, *(v14 + 32), *(v14 + 40), (v14 + 2232));
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_63;
      }

      Object = kbsymtab_LoadData(a3, a4, *(v14 + 32), *(v14 + 40), (v14 + 2200), v44[0]);
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_63;
      }

      Object = fst_LoadData(a3, a4, (v14 + 2240));
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_63;
      }

      Object = kblex_InitLex(*(v14 + 16), *(v14 + 24), *(v14 + 32), *(v14 + 40), v14 + 1228, *(v14 + 64), *(v14 + 72), *(v14 + 80), 0, (v14 + 2208));
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_63;
      }

      Object = kblex_InitLex(*(v14 + 16), *(v14 + 24), *(v14 + 32), *(v14 + 40), v14 + 1228, *(v14 + 64), *(v14 + 72), *(v14 + 80), 1u, (v14 + 2216));
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_63;
      }

      Object = kblex_InitLex(*(v14 + 16), *(v14 + 24), *(v14 + 32), *(v14 + 40), v14 + 1228, *(v14 + 64), *(v14 + 72), *(v14 + 80), 2u, (v14 + 2224));
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_63;
      }
    }
  }

  *a5 = v14;
  *(a5 + 8) = 62340;
  Object = (*(*(v14 + 80) + 88))(*(v14 + 64), *(v14 + 72), &v46 + 4, &v46);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_63;
  }

  v23 = v46 == 1 && HIDWORD(v46) == 1;
  v24 = v23;
  *(v14 + 560) = v24;
  *(v14 + 160) = 0u;
  *(v14 + 176) = 0u;
  *(v14 + 192) = 0u;
  *(v14 + 208) = 0u;
  *(v14 + 224) = 0;
  *(v14 + 232) = 0u;
  *(v14 + 248) = 0u;
  *(v14 + 264) = 0;
  *(v14 + 556) = 1;
  *(v14 + 568) = 0;
  Object = paramc_ParamGet(*(*v14 + 40), "langcode", (v14 + 1208), 0);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_63;
  }

  v25 = heap_Alloc(*(*v14 + 8), 128);
  *(v14 + 160) = v25;
  if (!v25)
  {
    goto LABEL_66;
  }

  *(v14 + 192) = 128;
  v26 = heap_Alloc(*(*v14 + 8), 128);
  *(v14 + 168) = v26;
  if (!v26)
  {
    goto LABEL_66;
  }

  *(v14 + 200) = 128;
  v27 = heap_Alloc(*(*v14 + 8), 128);
  *(v14 + 176) = v27;
  if (!v27)
  {
    goto LABEL_66;
  }

  *(v14 + 208) = 128;
  v28 = heap_Alloc(*(*v14 + 8), 128);
  *(v14 + 184) = v28;
  if (!v28)
  {
    goto LABEL_66;
  }

  *(v14 + 216) = 128;
  v29 = heap_Alloc(*(*v14 + 8), 128);
  *(v14 + 232) = v29;
  v30 = *v14;
  if (!v29)
  {
    goto LABEL_53;
  }

  v31 = heap_Alloc(*(v30 + 8), 128);
  *(v14 + 240) = v31;
  v30 = *v14;
  if (!v31)
  {
    goto LABEL_53;
  }

  v32 = heap_Alloc(*(v30 + 8), 128);
  *(v14 + 248) = v32;
  v30 = *v14;
  if (!v32)
  {
    goto LABEL_53;
  }

  v33 = heap_Alloc(*(v30 + 8), 128);
  *(v14 + 256) = v33;
  v30 = *v14;
  if (!v33)
  {
    goto LABEL_53;
  }

  v34 = heap_Alloc(*(v30 + 8), 128);
  *(v14 + 264) = v34;
  if (!v34)
  {
LABEL_66:
    v30 = *v14;
    goto LABEL_53;
  }

  cstdlib_strcpy((v14 + 300), "normal");
  Object = oneword_GetMdeSettings(v14, "normal");
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_63;
  }

  Object = hlp_GetPart(v14);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_63;
  }

  cstdlib_memset(&__b, 0, 0x28uLL);
  *&__b = ssftmap_ElemCopyString;
  *(&v48 + 1) = stringmap_loc_ElemCopyPtr;
  *(&__b + 1) = ssftmap_ElemFreeString;
  v49 = stringmap_loc_ElemFreeNoOp;
  *&v48 = ssftmap_ElemCompareKeysString;
  v35 = *(*v14 + 8);
  v44[0] = __b;
  v44[1] = v48;
  v45 = stringmap_loc_ElemFreeNoOp;
  Object = ssftmap_ObjOpen(v35, 0, v44, (v14 + 568));
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_63;
  }

  *(v14 + 856) = heap_Alloc;
  *(v14 + 864) = heap_Calloc;
  *(v14 + 872) = heap_Realloc;
  *(v14 + 880) = heap_Free;
  v36 = OOCAllocator_Con(v14 + 888, (v14 + 856), *(*v14 + 8));
  v37 = LH_ERROR_to_VERROR(v36);
  v38 = *v14;
  if ((v37 & 0x80000000) != 0)
  {
    v43 = v37;
    log_OutPublic(*(v38 + 32), "FE_ONEWORD", 34004, 0);
    v5 = v43;
    goto LABEL_64;
  }

  v39 = heap_Alloc(*(v38 + 8), 64);
  *(v14 + 2256) = v39;
  if (!v39)
  {
    goto LABEL_52;
  }

  cstdlib_strcpy(v39, "");
  v40 = heap_Alloc(*(*v14 + 8), 64);
  *(v14 + 2264) = v40;
  if (!v40)
  {
    goto LABEL_52;
  }

  cstdlib_strcpy(v40, "");
  v41 = heap_Alloc(*(*v14 + 8), 16);
  *(v14 + 2280) = v41;
  if (!v41)
  {
    goto LABEL_52;
  }

  cstdlib_strcpy(v41, "");
  v5 = hlp_common_ObjOpenReopen(v14);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_64;
  }

  return v5;
}