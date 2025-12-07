uint64_t dcteg_hlp_InitializeMWDct(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v53 = 0;
  v54 = 0;
  v4 = *(*(a2 + 16) + 8);
  *__s = xmmword_287EED230;
  v51 = *off_287EED240;
  v52 = off_287EED250;
  v5 = ssftmap_ObjOpen(v4, 0, __s, (a3 + 88));
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_62;
  }

  v6 = *(a3 + 72);
  if (v6)
  {
    Dictionary_FetchKeys(v6, &v54, &v53);
  }

  else
  {
    if (cstdlib_strstr(*(a3 + 16), "application/x-vocalizer-userdct-pointer"))
    {
      v33 = *(a3 + 48);
      if (v33)
      {
        __s[0] = 0;
        v34 = (*(*v33 + 24))(v33 - *(*v33 + 48));
        if (v34)
        {
          v35 = (**v34)(v34 - *(*v34 + 64), 414531107, __s);
          v5 = LH_ERROR_to_VERROR(v35);
          if ((v5 & 0x80000000) == 0 && __s[0])
          {
            v36 = (*(*__s[0] + 16))(&__s[0][-*(*__s[0] + 32)], &v54, &v53);
            v5 = LH_ERROR_to_VERROR(v36);
          }

          if ((v5 & 0x80000000) != 0)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v5 = 0;
        }

        goto LABEL_5;
      }
    }

    v47 = *(a3 + 80);
    if (!v47)
    {
      goto LABEL_5;
    }

    Keys = CDSObject_FetchKeys(v47, &v54, &v53);
  }

  v5 = LH_ERROR_to_VERROR(Keys);
  if ((v5 & 0x80000000) != 0)
  {
LABEL_62:
    v24 = 0;
    goto LABEL_63;
  }

LABEL_5:
  if (!v53)
  {
    goto LABEL_62;
  }

  v8 = 0;
  v9 = 0;
  v48 = 0;
  while (1)
  {
    v10 = v54[v8];
    v11 = cstdlib_strlen(v10);
    v12 = v11;
    if (v11)
    {
      v13 = 0;
      v14 = 0;
      v15 = v11;
      do
      {
        if (v12 > v14)
        {
          v16 = v14;
          if (utf8_BelongsToSet(0, v10, v14, v12))
          {
            while (1)
            {
              NextUtf8Offset = utf8_GetNextUtf8Offset(v10, v14);
              v14 = NextUtf8Offset;
              if (v12 <= NextUtf8Offset)
              {
                break;
              }

              LOWORD(v16) = NextUtf8Offset;
              if (!utf8_BelongsToSet(0, v10, NextUtf8Offset, v12))
              {
                v16 = v16;
                goto LABEL_14;
              }
            }
          }

          else
          {
LABEL_14:
            if (v12 > v14 && !utf8_BelongsToSet(0, v10, v14, v12))
            {
              do
              {
                v14 = utf8_GetNextUtf8Offset(v10, v14);
              }

              while (v12 > v14 && !utf8_BelongsToSet(0, v10, v14, v12));
              v16 = v14;
            }

            ++v13;
            v14 = v16;
          }
        }
      }

      while (v14 < v15);
      if (v13 >= 2)
      {
        break;
      }
    }

    v24 = v9;
LABEL_53:
    ++v8;
    v9 = v24;
    if (v8 >= v53)
    {
      goto LABEL_63;
    }
  }

  v18 = v54[v8];
  v19 = cstdlib_strlen(v18);
  v20 = cstdlib_strlen(v18);
  if (v20)
  {
    v21 = 0;
    if (utf8_BelongsToSet(0, v18, 0, v20))
    {
      while (1)
      {
        v22 = utf8_GetNextUtf8Offset(v18, v21);
        v21 = v22;
        if (v20 <= v22)
        {
          break;
        }

        if (!utf8_BelongsToSet(0, v18, v22, v20))
        {
          goto LABEL_26;
        }
      }

      LOWORD(v23) = v22;
    }

    else
    {
LABEL_26:
      v23 = v21;
      do
      {
        if (utf8_BelongsToSet(0, v18, v23, v20))
        {
          break;
        }

        v23 = utf8_GetNextUtf8Offset(v18, v23);
      }

      while (v20 > v23);
    }
  }

  else
  {
    LOWORD(v21) = 0;
    LOWORD(v23) = 0;
  }

  v25 = (v23 - v21);
  if (v48 >= v25)
  {
    v24 = v9;
    if (!v19)
    {
LABEL_43:
      v26 = 0;
      goto LABEL_44;
    }
  }

  else
  {
    v24 = heap_Realloc(*(a1 + 8), v9, v25 + 1);
    v48 = (v23 - v21);
    if (!v24)
    {
      v5 = 2231377930;
      log_OutPublic(*(a1 + 32), "DCTEG", 4400, 0);
      v24 = v9;
      goto LABEL_63;
    }

    if (!v19)
    {
      goto LABEL_43;
    }
  }

  if (!utf8_BelongsToSet(0, v18, 0, v19))
  {
    goto LABEL_43;
  }

  LODWORD(v26) = 0;
  do
  {
    v26 = utf8_GetNextUtf8Offset(v18, v26);
  }

  while (v19 > v26 && utf8_BelongsToSet(0, v18, v26, v19));
LABEL_44:
  cstdlib_strncpy(v24, &v18[v26], v25 - v26);
  v24[v25 - v26] = 0;
  v27 = *(a3 + 88);
  __s[0] = 0;
  __s1 = 32;
  LH_itoa(v13, v56, 0xAu);
  cstdlib_strcat(&__s1, " ");
  if ((ssftmap_Find(v27, v24, __s) & 0x80000000) != 0)
  {
    v5 = ssftmap_Insert(v27, v24, &__s1);
    if ((v5 & 0x80000000) != 0)
    {
      goto LABEL_63;
    }

    goto LABEL_53;
  }

  if (cstdlib_strstr(__s[0], &__s1))
  {
    v5 = 0;
    goto LABEL_53;
  }

  v28 = cstdlib_strlen(__s[0]);
  v29 = cstdlib_strlen(&__s1);
  v30 = heap_Calloc(*(a1 + 8), v29 + v28, 1);
  if (!v30)
  {
    v5 = 2231377930;
    log_OutPublic(*(a1 + 32), "DCTEG", 4400, 0);
    goto LABEL_63;
  }

  v31 = v30;
  cstdlib_strcpy(v30, __s[0]);
  cstdlib_strcat(v31, v56);
  v32 = ssftmap_Remove(v27, v24);
  if ((v32 & 0x80000000) == 0)
  {
    v32 = ssftmap_Insert(v27, v24, v31);
  }

  v5 = v32;
  heap_Free(*(a1 + 8), v31);
  if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_53;
  }

  while (1)
  {
LABEL_63:
    if (v24)
    {
      heap_Free(*(a1 + 8), v24);
    }

    v37 = *(a3 + 72);
    if (v37)
    {
      Dictionary_ReturnKeys(v37, v54);
      return v5;
    }

    if (!cstdlib_strstr(*(a3 + 16), "application/x-vocalizer-userdct-pointer") || (v38 = *(a3 + 48)) == 0 || v5)
    {
      v45 = *(a3 + 80);
      if (v45)
      {
        CDSObject_ReturnKeys(v45, v54);
      }

      return v5;
    }

    v39 = v54;
    __s[0] = 0;
    v40 = (*(*v38 + 24))(v38 - *(*v38 + 48));
    if (!v40)
    {
      break;
    }

    v41 = (**v40)(v40 - *(*v40 + 64), 414531107, __s);
    v42 = LH_ERROR_to_VERROR(v41);
    if ((v42 & 0x80000000) == 0 && __s[0])
    {
      v43 = (*(*__s[0] + 24))(&__s[0][-*(*__s[0] + 32)], v39);
      v42 = LH_ERROR_to_VERROR(v43);
    }

    v5 = 0;
    v44 = 0;
    if ((v42 & 0x80000000) == 0)
    {
      return v44;
    }
  }

  return 0;
}

uint64_t dcteg_hlp_FetchURLHashtag(uint64_t a1, uint64_t a2)
{
  v18 = 0;
  v19 = 0;
  v17 = 0;
  __b = 0u;
  v16 = 0u;
  cstdlib_memset(&__b, 0, 0x28uLL);
  *&__b = ssftmap_ElemCopyString;
  *(&v16 + 1) = ssftmap_ElemCopyString;
  *(&__b + 1) = ssftmap_ElemFreeString;
  v17 = ssftmap_ElemFreeString;
  *&v16 = ssftmap_ElemCompareKeysString;
  v4 = *(a1 + 8);
  v13[0] = __b;
  v13[1] = v16;
  v14 = ssftmap_ElemFreeString;
  v5 = ssftmap_ObjOpen(v4, 0, v13, (a2 + 96));
  if ((v5 & 0x80000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    Dictionary_FetchKeys(*(a2 + 72), &v19, &v18);
    v7 = LH_ERROR_to_VERROR(v6);
    if ((v7 & 0x80000000) == 0 && v18)
    {
      for (i = 0; i < v18; ++i)
      {
        v9 = v19[i];
        if (*v9 == 35 || cstdlib_strchr(v19[i], 46) && !cstdlib_strchr(v9, 32))
        {
          v10 = ssftmap_Insert(*(a2 + 96), v9, "");
          v7 = v10;
          if ((v10 & 0x80000000) != 0)
          {
            if ((v10 & 0x1FFF) != 2)
            {
              break;
            }

            v7 = 0;
          }
        }
      }
    }
  }

  v11 = *(a2 + 72);
  if (v11)
  {
    Dictionary_ReturnKeys(v11, v19);
  }

  return v7;
}

uint64_t dctlist_ObjOpen(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a2;
  return 0;
}

uint64_t dctlist_ObjClose(uint64_t a1)
{
  for (i = *(a1 + 8); i; i = *(a1 + 8))
  {
    dctlist_Remove(a1, *(i + 8));
  }

  return 0;
}

uint64_t dctlist_Remove(uint64_t a1, uint64_t a2)
{
  result = 2231377940;
  v5 = *(a1 + 8);
  if (v5)
  {
    if (*(v5 + 8) == a2)
    {
      v8 = *(v5 + 16);
      *(a1 + 8) = v8;
      if (!v8)
      {
        *(a1 + 16) = 0;
      }

      heap_Free(*a1, v5);
      return 0;
    }

    else
    {
      while (1)
      {
        v6 = v5;
        v5 = *(v5 + 16);
        if (!v5)
        {
          break;
        }

        if (*(v5 + 8) == a2)
        {
          v7 = *(v5 + 16);
          heap_Free(*a1, v5);
          *(v6 + 16) = v7;
          if (v7)
          {
            return 0;
          }

          result = 0;
          *(a1 + 16) = v6;
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t dctlist_Add(uint64_t a1, uint64_t a2)
{
  v4 = heap_Calloc(*a1, 1, 24);
  if (v4)
  {
    *v4 = -1;
    *(v4 + 8) = a2;
    *(v4 + 16) = 0;
    v6 = (a1 + 8);
    v5 = *(a1 + 8);
    if (v5)
    {
      if (*v5 == -1)
      {
        *(v4 + 16) = v5;
        goto LABEL_10;
      }

      do
      {
        v7 = v5;
        v5 = *(v5 + 16);
      }

      while (v5);
      *(v7 + 16) = v4;
    }

    else
    {
      *(a1 + 8) = v4;
    }

    v6 = (a1 + 16);
LABEL_10:
    v8 = 0;
    *v6 = v4;
    return v8;
  }

  return 2231377930;
}

uint64_t dctlist_Move(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 2231377940;
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *(a1 + 8);
    do
    {
      v10 = *(v9 + 8);
      v11 = *v9;
      if (v10 == a2)
      {
        v6 = v8;
        if (v11 == a3)
        {
          return 0;
        }
      }

      if (a3 != -1 && v11 == a3)
      {
        return 2231378969;
      }

      if (v11 <= a3 && v10 != a2)
      {
        v7 = v9;
      }

      if (v6 && v7)
      {
        break;
      }

      v8 = v9;
      v9 = *(v9 + 16);
    }

    while (v9);
    if (a3 == -1 && v7 && *(v7 + 16) != *(a1 + 16))
    {
      v7 = *(a1 + 16);
    }

    if (v6 == v7)
    {
      if (v6)
      {
        v4 = *(v6 + 16);
      }

      goto LABEL_34;
    }

    if (v6)
    {
      v13 = *(v6 + 16);
      v14 = *(v13 + 16);
      *(v6 + 16) = v14;
      v15 = v4;
      v4 = v13;
      if (v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (*(v4 + 8) != a2)
      {
        return v3;
      }

      v15 = *(v4 + 16);
      *v5 = v15;
      if (v15)
      {
LABEL_28:
        if (v7)
        {
          *(v4 + 16) = *(v7 + 16);
          *(v7 + 16) = v4;
          if (*(v4 + 16))
          {
LABEL_34:
            v3 = 0;
            *v4 = a3;
            return v3;
          }

          v5 = (a1 + 16);
        }

        else
        {
          *(v4 + 16) = v15;
        }

        *v5 = v4;
        goto LABEL_34;
      }

      v6 = 0;
      v13 = v4;
    }

    *(a1 + 16) = v6;
    v4 = v13;
    goto LABEL_28;
  }

  return v3;
}

uint64_t dctlist_GetNext(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    v2 = *(*a2 + 16);
  }

  else
  {
    v2 = *(a1 + 8);
  }

  *a2 = v2;
  if (v2)
  {
    return *(v2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t OpenEDCTObj(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  inited = InitRsrcFunction(a1, a2, &v12);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v7 = heap_Calloc(*(v12 + 8), 1, 128);
  *a3 = v7;
  if (!v7)
  {
    v9 = 2231377930;
    v10 = 4400;
    goto LABEL_7;
  }

  *v7 = a1;
  v7[1] = a2;
  *(*a3 + 16) = heap_Alloc;
  *(*a3 + 24) = heap_Calloc;
  *(*a3 + 32) = heap_Realloc;
  *(*a3 + 40) = heap_Free;
  *(*a3 + 88) = dcteg_fread;
  *(*a3 + 96) = dcteg_fseek;
  *(*a3 + 112) = dcteg_ffinished;
  *(*a3 + 104) = dcteg_ferror;
  cstdlib_memset((*a3 + 120), 0, 4uLL);
  v8 = OOCAllocator_Con(*a3 + 48, (*a3 + 16), *(v12 + 8));
  v9 = LH_ERROR_to_VERROR(v8);
  if ((v9 & 0x80000000) != 0)
  {
    v10 = 4477;
LABEL_7:
    log_OutPublic(*(v12 + 32), "DCTEG", v10, 0);
  }

  return v9;
}

size_t dcteg_fread(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 68);
  if (a3 * a2 >= (*(a4 + 64) - v5))
  {
    v6 = (*(a4 + 64) - v5);
  }

  else
  {
    v6 = a3 * a2;
  }

  if (v6)
  {
    cstdlib_memcpy(a1, (*(a4 + 48) + v5), v6);
    *(a4 + 68) += v6;
  }

  return v6 / a2;
}

uint64_t dcteg_fseek(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      return 1;
    }

    v3 = *(a1 + 64);
LABEL_10:
    if (v3 >= -a2)
    {
      goto LABEL_11;
    }

    return 1;
  }

  if (a3 == 1)
  {
    v3 = *(a1 + 68);
    if ((a2 & 0x8000000000000000) == 0)
    {
LABEL_11:
      LODWORD(a2) = v3 + a2;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (a3 || a2 < 0)
  {
    return 1;
  }

LABEL_12:
  if (a2 >= *(a1 + 64))
  {
    return 1;
  }

  v4 = 0;
  *(a1 + 68) = a2;
  return v4;
}

uint64_t dcteg_ffinished(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      if (*(a1 + 44))
      {
        heap_Free(*a1, v2);
      }

      *(a1 + 48) = 0;
    }
  }

  return 0;
}

uint64_t CloseEDCTObj(uint64_t a1)
{
  v4 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v4);
  if ((inited & 0x80000000) == 0)
  {
    heap_Free(*(v4 + 8), a1);
  }

  return inited;
}

uint64_t hlp_TraceTuningData_UDctEntries(uint64_t a1, uint64_t a2)
{
  v29 = 0u;
  v30 = 0u;
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v23 = 0;
  v2 = *(*(a2 + 72) + 128);
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v23);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  Info = edct_DctGetInfo(v2, &v29);
  v5 = LH_ERROR_to_VERROR(Info);
  if ((v5 & 0x80000000) == 0 && !v30)
  {
    edct_DctItOpen(*(v2 + 48), v2, &v28);
    v7 = LH_ERROR_to_VERROR(v6);
    if ((v7 & 0x80000000) != 0)
    {
LABEL_24:
      v5 = v7;
    }

    else
    {
      do
      {
        v8 = edct_DctItCurrent(v28, &v27, &v26, &v25 + 1, &v25);
        v5 = LH_ERROR_to_VERROR(v8);
        if ((v5 & 0x80000000) != 0)
        {
          break;
        }

        if (!v27 || v26 == 0)
        {
          break;
        }

        if (HIDWORD(v25))
        {
          v15 = 0;
          v16 = 0;
          do
          {
            v17 = v26;
            if (!*(v26 + v15 + 56))
            {
              cstdlib_strlen(*(v26 + v15 + 48));
              v17 = v26;
            }

            v18 = *(v17 + v15);
            v19 = *(v23 + 32);
            if (v18 != 2 && v18)
            {
              log_OutTraceTuningData(v19, 102, "%s%s %s%s %s%s", v9, v10, v11, v12, v13, "USERDCTKEY");
            }

            else
            {
              log_OutTraceTuningData(v19, 102, "%s%s %s%.*s %s%s", v9, v10, v11, v12, v13, "USERDCTKEY");
            }

            ++v16;
            v15 += 64;
          }

          while (v16 < HIDWORD(v25));
        }

        v20 = edct_DctItIncrement(v28);
        v7 = LH_ERROR_to_VERROR(v20);
        if ((v7 & 0x80000000) != 0)
        {
          goto LABEL_24;
        }

        HasEnded = edct_DctItHasEnded(v28, &v24);
        v5 = LH_ERROR_to_VERROR(HasEnded);
      }

      while ((v5 & 0x80000000) == 0 && !v24);
    }
  }

  if (v28)
  {
    edct_DctItClose(v28);
  }

  return v5;
}

uint64_t LoadUDct(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  v4 = *(a2 + 16);
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v16);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *(a2 + 68) = 0;
  if (cstdlib_strcmp(v4, "application/edct-bin-dictionary"))
  {
    if (cstdlib_strcmp(v4, "application/cdct-bin-dictionary"))
    {
      if (!cstdlib_strcmp(v4, "application/x-vocalizer-userdct-pointer"))
      {
        *(a2 + 112) = *(a2 + 48);
        return inited;
      }

      log_OutPublic(*(v16 + 32), "DCTEG", 4403, "%s%s", "contentType", v4);
      inited = 2231378966;
      goto LABEL_20;
    }

    v10 = PNEW_CDSObject_Con(a1 + 48, a1 + 48, (a1 + 88), a2, 0, (a2 + 80));
    v11 = LH_ERROR_to_VERROR(v10);
    if ((v11 & 0x80000000) != 0)
    {
      inited = v11;
      log_OutPublic(*(v16 + 32), "DCTEG", 4481, "%s%s%s%x", "name", *(a2 + 8), "code", v11);
      *(a2 + 112) = 0;
LABEL_20:
      if (*(a2 + 72) || *(a2 + 80))
      {
        UnloadUDct(a1, a2);
      }

      return inited;
    }

    Interface = CDSObject_QueryInterface(*(a2 + 80), 414531721, (a2 + 112));
    inited = LH_ERROR_to_VERROR(Interface);
    if ((inited & 0x80000000) == 0)
    {
      return inited;
    }

    log_OutPublic(*(v16 + 32), "DCTEG", 4482, "%s%s%s%x");
LABEL_19:
    *(a2 + 112) = 0;
    goto LABEL_20;
  }

  v6 = PNEW_Dictionary_Con(a1 + 48, a1 + 48, v14, (a1 + 88), a2, (a1 + 120), 1, (a2 + 72));
  v7 = LH_ERROR_to_VERROR(v6);
  if ((v7 & 0x80000000) != 0)
  {
    inited = v7;
    log_OutPublic(*(v16 + 32), "DCTEG", 4478, "%s%s%s%x");
    goto LABEL_19;
  }

  if (*(a2 + 48) && !*(a2 + 44))
  {
    inited = 2231377945;
    log_OutPublic(*(v16 + 32), "DCTEG", 4479, "%s%s", "name", *(a2 + 8));
    goto LABEL_20;
  }

  v8 = Dictionary_QueryInterface(*(a2 + 72), 414531721, (a2 + 112));
  inited = LH_ERROR_to_VERROR(v8);
  v9 = *(v16 + 32);
  if ((inited & 0x80000000) != 0)
  {
    log_OutPublic(v9, "DCTEG", 4480, "%s%s%s%x");
    goto LABEL_19;
  }

  if (log_HasTraceTuningDataSubscriber(v9))
  {
    hlp_TraceTuningData_UDctEntries(a1, a2);
  }

  return inited;
}

uint64_t UnloadUDct(uint64_t a1, void *a2)
{
  v8 = 0;
  v3 = a2[2];
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v8);
  if ((inited & 0x80000000) == 0)
  {
    if (cstdlib_strcmp(v3, "application/edct-bin-dictionary"))
    {
      if (cstdlib_strcmp(v3, "application/cdct-bin-dictionary"))
      {
        if (cstdlib_strcmp(v3, "application/x-vocalizer-userdct-pointer"))
        {
          log_OutPublic(*(v8 + 32), "DCTEG", 4404, "%s%s", "contentType", v3);
          return 2231378966;
        }
      }

      else
      {
        v6 = a2[10];
        if (v6)
        {
          CDSObject_Des(v6);
          heap_Free(*(v8 + 8), a2[10]);
          a2[10] = 0;
        }
      }
    }

    else
    {
      v5 = a2[9];
      if (v5)
      {
        Dictionary_Des(v5);
        heap_Free(*(v8 + 8), a2[9]);
        a2[9] = 0;
      }
    }
  }

  return inited;
}

uint64_t RetrieveUDctEntry(uint64_t a1, uint64_t a2, char *a3, char *__s, _BYTE *a5, char *a6, _WORD *a7, char *a8, _BYTE *a9, _DWORD *a10)
{
  v45 = a7;
  v46 = a6;
  v10 = *(a1 + 16);
  v44 = 0;
  v43 = 0;
  v11 = *(a2 + 16);
  v42 = 0;
  if (!__s)
  {
    return 2231377940;
  }

  v18 = *(a2 + 24);
  if (v18)
  {
    if (!strhelper_csv_HasElem(v18, __s))
    {
      return 2231377940;
    }
  }

  *a8 = 0;
  if (a9)
  {
    *a9 = 0;
  }

  v41 = 0;
  UInt = paramc_ParamGetUInt(*(v10 + 40), "numberoutputtranscriptions", &v43);
  v20 = v43;
  if (UInt < 0)
  {
    v20 = 1;
  }

  v39 = v20;
  if (paramc_ParamGetUInt(*(v10 + 40), "numberoutputorthsubstitutes", &v43) < 0)
  {
    v21 = 1;
  }

  else
  {
    v21 = v43;
  }

  v22 = 2231377927;
  if (a5 && *(a1 + 48) && v11 && a7 && *a5)
  {
    v23 = v21;
    v24 = (*(**(a2 + 112) + 16))(*(a2 + 112) - *(**(a2 + 112) + 48), &v41);
    if ((LH_ERROR_to_VERROR(v24) & 0x80000000) == 0)
    {
      if (*v41)
      {
        for (i = 0; i != 3; ++i)
        {
          __s2[i] = cstdlib_tolower(*(*v41 + i));
        }

        __s2[3] = 0;
        v26 = 2231377940;
        if (!a3 || cstdlib_strstr(a3, __s2))
        {
          v27 = (***(a2 + 112))(*(a2 + 112) - *(**(a2 + 112) + 48), a5, &v42, &v44);
          v28 = LH_ERROR_to_VERROR(v27);
          v29 = v42;
          if (v28 < 0 || (v30 = v44) == 0 || !v42)
          {
            if (v28 < 0)
            {
              v22 = v28;
            }

            else
            {
              v22 = 2231377940;
            }

LABEL_47:
            if (v29)
            {
              v36 = (*(**(a2 + 112) + 8))(*(a2 + 112) - *(**(a2 + 112) + 48));
              v37 = LH_ERROR_to_VERROR(v36);
              if ((v37 & 0x80000000) != 0)
              {
                v38 = v37;
                log_OutText(*(v10 + 32), "DCTEG", 3, 0, "MSG_ITransLookUp_ReturnTranscriptions failed: %x", v37);
                return v38;
              }
            }

            return v22;
          }

          *a10 = *v42;
          cstdlib_strcpy(a8, __s2);
          if (a9)
          {
            v31 = v41[1];
            if (v31)
            {
              if (cstdlib_strlen(v31) == 3)
              {
                for (j = 0; j != 3; ++j)
                {
                  a9[j] = cstdlib_tolower(*(v41[1] + j));
                }

                a9[3] = 0;
              }
            }
          }

          v33 = *v42;
          if (*v42 == 4)
          {
            if (v23 >= v30)
            {
              v34 = v30;
            }

            else
            {
              v34 = v23;
            }
          }

          else
          {
            if (v33 != 1)
            {
              log_OutPublic(*(v10 + 32), "DCTEG", 4476, "%s%d", "contentType", v33);
              goto LABEL_46;
            }

            if (v39 >= v30)
            {
              v34 = v30;
            }

            else
            {
              v34 = v39;
            }
          }

          v26 = GetnTranscriptions(&v42, &v46, &v45, v34);
LABEL_46:
          v29 = v42;
          v22 = v26;
          goto LABEL_47;
        }
      }
    }

    return 2231377940;
  }

  return v22;
}

uint64_t GetnTranscriptions(void *a1, char **a2, _WORD **a3, unsigned int a4)
{
  **a2 = 0;
  if (a4)
  {
    v7 = 0;
    v8 = 0;
    v9 = a4;
    while (1)
    {
      v10 = *a1 + 24 * v7;
      v12 = *(v10 + 8);
      v11 = *(v10 + 16);
      if (v11)
      {
        v13 = 0;
        while (v12[v13])
        {
          if (v11 == ++v13)
          {
            goto LABEL_9;
          }
        }

        LODWORD(v11) = v13;
      }

LABEL_9:
      v14 = v8 + v11 + 1;
      if (v14 > **a3)
      {
        return 2231377929;
      }

      if (v7)
      {
        cstdlib_strcat(*a2, "\x12");
        v8 = v14;
      }

      else
      {
        v8 += v11;
      }

      cstdlib_strcat(*a2, v12);
      if (++v7 == v9)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v8 = 0;
LABEL_16:
    result = 0;
    (*a2)[v8] = 0;
    **a3 = v8;
  }

  return result;
}

uint64_t dctegdict_FetchInfo(uint64_t a1, char ***a2)
{
  if (cstdlib_strstr(*(a1 + 16), "application/edct-bin-dictionary"))
  {
    Info = Dictionary_FetchInfo(*(a1 + 72), a2);

    return LH_ERROR_to_VERROR(Info);
  }

  else
  {
    v6 = 2231377920;
    if (cstdlib_strstr(*(a1 + 16), "application/x-vocalizer-userdct-pointer"))
    {
      v7 = *(a1 + 48);
      v12 = 0;
      v8 = (*(*v7 + 24))(v7 - *(*v7 + 48));
      if (v8)
      {
        v9 = (**v8)(v8 - *(*v8 + 64), 414531107, &v12);
        if (v9)
        {
          v10 = 1;
        }

        else
        {
          v10 = v12 == 0;
        }

        if (!v10)
        {
          v9 = (**v12)(v12 - *(*v12 + 32), a2);
        }

        v11 = -2063589366;
        if (v9 != 1)
        {
          v11 = -2063589376;
        }

        if (v9)
        {
          return v11;
        }

        else
        {
          return 0;
        }
      }
    }

    return v6;
  }
}

char *dctegdict_ReturnInfo(uint64_t a1, uint64_t a2)
{
  if (cstdlib_strstr(*(a1 + 16), "application/edct-bin-dictionary"))
  {
    Dictionary_ReturnInfo(*(a1 + 72), a2);
  }

  result = cstdlib_strstr(*(a1 + 16), "application/x-vocalizer-userdct-pointer");
  if (result)
  {
    v5 = *(a1 + 48);
    v7 = 0;
    result = (*(*v5 + 24))(v5 - *(*v5 + 48));
    if (result)
    {
      result = (**result)(&result[-*(*result + 64)], 414531107, &v7);
      if (result)
      {
        v6 = 1;
      }

      else
      {
        v6 = v7 == 0;
      }

      if (!v6)
      {
        return (*(*v7 + 8))(v7 - *(*v7 + 32), a2);
      }
    }
  }

  return result;
}

uint64_t dctegdict_FetchKeys(uint64_t a1, char ***a2, void *a3)
{
  if (cstdlib_strstr(*(a1 + 16), "application/edct-bin-dictionary"))
  {
    Dictionary_FetchKeys(*(a1 + 72), a2, a3);

    return LH_ERROR_to_VERROR(v6);
  }

  else
  {
    v8 = 2231377920;
    if (cstdlib_strstr(*(a1 + 16), "application/x-vocalizer-userdct-pointer"))
    {
      v9 = *(a1 + 48);
      v14 = 0;
      v10 = (*(*v9 + 24))(v9 - *(*v9 + 48));
      if (v10)
      {
        v11 = (**v10)(v10 - *(*v10 + 64), 414531107, &v14);
        if (v11)
        {
          v12 = 1;
        }

        else
        {
          v12 = v14 == 0;
        }

        if (!v12)
        {
          v11 = (*(*v14 + 16))(v14 - *(*v14 + 32), a2, a3);
        }

        v13 = -2063589366;
        if (v11 != 1)
        {
          v13 = -2063589376;
        }

        if (v11)
        {
          return v13;
        }

        else
        {
          return 0;
        }
      }
    }

    return v8;
  }
}

char *dctegdict_ReturnKeys(uint64_t a1, uint64_t a2)
{
  if (cstdlib_strstr(*(a1 + 16), "application/edct-bin-dictionary"))
  {
    Dictionary_ReturnKeys(*(a1 + 72), a2);
  }

  result = cstdlib_strstr(*(a1 + 16), "application/x-vocalizer-userdct-pointer");
  if (result)
  {
    v5 = *(a1 + 48);
    v7 = 0;
    result = (*(*v5 + 24))(v5 - *(*v5 + 48));
    if (result)
    {
      result = (**result)(&result[-*(*result + 64)], 414531107, &v7);
      if (result)
      {
        v6 = 1;
      }

      else
      {
        v6 = v7 == 0;
      }

      if (!v6)
      {
        return (*(*v7 + 24))(v7 - *(*v7 + 32), a2);
      }
    }
  }

  return result;
}

uint64_t LD_createChild(uint64_t a1, int a2, uint64_t a3, unsigned int a4, _WORD *a5)
{
  v7 = a3;
  v20 = 0;
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  if (*(a1 + 48) > a4 && (v9 = *(*(a1 + 64) + 8 * a4)) != 0)
  {
    if (v7 > 1)
    {
      v12 = *(v9 + 2);
      if (v12 == LD_ChildParentD[v7])
      {
        v10 = LD_createRec(a1, v7, &v20);
        if ((v10 & 0x80000000) == 0)
        {
          v13 = 0;
          v14 = v20;
          *(v20 + 8) = v9;
          v15 = (v9 + 32);
          *(v14 + 24) = 0;
          *(v14 + 32) = 0;
          v16 = 1;
          do
          {
            v17 = v16;
            v18 = v15[v13];
            if (v18 && *(v18 + 2) == v7)
            {
              *(v14 + 16) = v18;
              *(v15[v13] + 24) = v14;
              v15[v13] = v14;
              goto LABEL_22;
            }

            v16 = 0;
            v13 = 1;
          }

          while ((v17 & 1) != 0);
          v19 = *v15;
          if (*v15)
          {
            if (*(v9 + 40))
            {
              log_OutPublic(*(*a1 + 32), "LINGDB", 20030, "%s%u%s%u", "childType", v7, "parentType", v12);
              return 2300591643;
            }

            v19 = 1;
          }

          v15[v19] = v14;
          *(v14 + 16) = 0;
LABEL_22:
          *a5 = *v14;
          *(a1 + 72) = 1;
        }
      }

      else
      {
        log_OutPublic(*(*a1 + 32), "LINGDB", 20006, "%s%u%s%u", "childType", v7, "parentType", v12);
        return 2300591619;
      }
    }

    else
    {
      v10 = 2300591618;
      log_OutPublic(*(*a1 + 32), "LINGDB", 20005, "%s%u", "childType", v7);
    }
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", "record", a4);
    return 2300591633;
  }

  return v10;
}

uint64_t LD_createRec(unsigned int *a1, unsigned int a2, uint64_t *a3)
{
  if (a2 - 7 <= 0xFFFFFFF9)
  {
    v5 = 2300591625;
    log_OutPublic(*(*a1 + 32), "LINGDB", 20012, "%s%s%s%u");
    return v5;
  }

  v6 = a1[12];
  if (v6 - 1 >= a1[15])
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20019, 0);
    return 2300591632;
  }

  v8 = a1[13];
  if (v6 >= v8)
  {
    v9 = a1[14] + v8;
    log_OutText(*(*a1 + 32), "LINGDB", 5, 0, "LINGDB LD_reallocSentRecList : Begin (from %u to %u)", a1[13], v9);
    v10 = heap_Realloc(*(*a1 + 8), *(a1 + 8), 8 * v9);
    if (!v10)
    {
      v5 = 2300583946;
      v20 = *(*a1 + 32);
      v21 = 20004;
      goto LABEL_22;
    }

    *(a1 + 8) = v10;
    a1[13] = v9;
    cstdlib_memset((v10 + 8 * a1[12]), 0, 8 * (v9 - a1[12]));
    log_OutText(*(*a1 + 32), "LINGDB", 5, 0, "LINGDB LD_reallocSentRecList : End (%x)", 0);
  }

  v11 = LD_HeapAlloc((a1 + 2), LD_createRec_recordSizeLookup[a2]);
  *a3 = v11;
  if (!v11)
  {
    v5 = 2300583946;
    v20 = *(*a1 + 32);
    v21 = 20000;
LABEL_22:
    log_OutPublic(v20, "LINGDB", v21, 0, v22, v23);
    return v5;
  }

  v12 = a1[12];
  *(*(a1 + 8) + 8 * v12) = v11;
  v13 = *a3;
  *v13 = v12;
  *(v13 + 2) = a2;
  a1[12] = v12 + 1;
  if (v12 + 1 > v12 && (v14 = *(*(a1 + 8) + 8 * v12)) != 0)
  {
    v15 = &LD_FIELDOFFSETSD + 904 * *(v14 + 2);
    v16 = *(v15 + 4);
    if (*(v15 + 4))
    {
      v17 = 0;
      do
      {
        v18 = &v15[40 * v17 + 24];
        if (!*(v18 + 16))
        {
          *(v14 + *v18 - *v15) = 0;
        }

        ++v17;
      }

      while (v16 > v17);
    }

    v5 = 0;
    a1[18] = 1;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", "record", v12);
    return 2300591633;
  }

  return v5;
}

uint64_t LD_createNext(uint64_t a1, int a2, unsigned int a3, _WORD *a4)
{
  v14 = 0;
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  if (*(a1 + 48) > a3 && (v7 = *(*(a1 + 64) + 8 * a3)) != 0)
  {
    v8 = *(v7 + 2);
    if (v8 == 1)
    {
      v9 = 2300591620;
      log_OutPublic(*(*a1 + 32), "LINGDB", 20007, 0);
    }

    else
    {
      v11 = LD_createRec(a1, v8, &v14);
      if ((v11 & 0x80000000) != 0)
      {
        return v11;
      }

      else
      {
        v12 = v14;
        *(v14 + 24) = v7;
        *(v12 + 8) = *(v7 + 8);
        *(v7 + 16) = v12;
        *(v12 + 32) = 0;
        v13 = *(v12 + 16);
        if (v13)
        {
          *(v13 + 24) = v12;
        }

        v9 = 0;
        *a4 = *v12;
        *(a1 + 72) = 1;
      }
    }
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", "record", a3);
    return 2300591633;
  }

  return v9;
}

uint64_t LD_findChild(uint64_t a1, int a2, int a3, unsigned int a4, _WORD *a5)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  if (a3 == 1)
  {
    v9 = *(a1 + 64) != 0;
  }

  else
  {
    if (*(a1 + 48) <= a4 || (v11 = *(*(a1 + 64) + 8 * a4)) == 0)
    {
      log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", "record", a4);
      return 2300591633;
    }

    v12 = *(v11 + 2);
    if (v12 != LD_ChildParentD[a3])
    {
      v10 = 2300591623;
      log_OutPublic(*(*a1 + 32), "LINGDB", 20010, "%s%s%s%u%s%u%s%u", "method", "LD_findChild", "childKey", a3, "parentRecordType", v12, "parentRecord", a4);
      return v10;
    }

    v13 = 0;
    v9 = 0;
    v14 = v11 + 32;
    v15 = 1;
    do
    {
      v16 = v15;
      v17 = *(v14 + 8 * v13);
      if (v17)
      {
        v18 = v9 == 0;
      }

      else
      {
        v18 = 0;
      }

      if (!v18)
      {
        break;
      }

      v9 = *(v17 + 2) == a3 ? *v17 : 0;
      v15 = 0;
      v13 = 1;
    }

    while ((v16 & 1) != 0);
    if (!v9)
    {
      log_OutPublic(*(*a1 + 32), "LINGDB", 20011, "%s%u%s%u%s%u", "childKey", a3, "parentRecordType", v12, "parentRecord", a4);
      return 2300591624;
    }
  }

  v10 = 0;
  *a5 = v9;
  return v10;
}

uint64_t LD_findNextCommonParent(uint64_t a1, int a2, unsigned int a3, _WORD *a4)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    v10 = 8200;
    return v10 | 0x89200000;
  }

  if (*(a1 + 48) <= a3 || (v7 = *(*(a1 + 64) + 8 * a3)) == 0)
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", "record", a3);
    v10 = 15889;
    return v10 | 0x89200000;
  }

  v8 = *(v7 + 16);
  if (v8)
  {
    LOWORD(v8) = *v8;
  }

  result = 0;
  *a4 = v8;
  return result;
}

uint64_t LD_nextInSent(uint64_t a1, int a2, unsigned int a3, _WORD *a4)
{
  v13 = 0;
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  NextCommonParent = LD_findNextCommonParent(a1, a2, a3, &v13);
  if ((NextCommonParent & 0x80000000) != 0)
  {
    return NextCommonParent;
  }

  if (v13)
  {
    goto LABEL_4;
  }

  if (*(a1 + 48) <= a3 || (v10 = *(*(a1 + 64) + 8 * a3)) == 0)
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", "record", a3);
    return 2300591633;
  }

  v11 = *(v10 + 2);
  if ((v11 & 0xFE) == 2)
  {
LABEL_4:
    v9 = 0;
    *a4 = v13;
  }

  else
  {
    v9 = 2300591625;
    log_OutPublic(*(*a1 + 32), "LINGDB", 20012, "%s%s%s%u%s%u", "method", "LD_nextInSent", "recordType", v11, "record", a3);
  }

  return v9;
}

uint64_t LD_findDirect(void *a1, int a2, int a3, int a4, _WORD *a5)
{
  v10 = 2300583944;
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) == 0 && (safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) == 0)
  {
    v11 = a1[8] != 0;
    v17 = a1[8] != 0;
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        v10 = 2300591625;
        log_OutPublic(*(*a1 + 32), "LINGDB", 20013, "%s%u", "recordType", a3);
        return v10;
      }

      Child = LD_findChild(a1, a2, 2, v11, &v17);
      if ((Child & 0x80000000) != 0)
      {
        return Child;
      }

      LOWORD(v11) = v17;
      if (!v17)
      {
        log_OutPublic(*(*a1 + 32), "LINGDB", 20013, "%s%u", "recordType", 2);
        return 2300591626;
      }

      v16 = v17;
      v13 = a4 - 1;
      if (v13)
      {
        v14 = 1;
        while (1)
        {
          Child = LD_findNextCommonParent(a1, a2, v11, &v16);
          if ((Child & 0x80000000) != 0)
          {
            return Child;
          }

          LOWORD(v11) = v16;
          if (v14 < v13)
          {
            ++v14;
            if (v16)
            {
              continue;
            }
          }

          break;
        }
      }
    }

    v10 = 0;
    *a5 = v11;
  }

  return v10;
}

uint64_t LD_writeField(uint64_t a1, int a2, unsigned int a3, unsigned int a4, unsigned int a5, const char **a6, _WORD *a7)
{
  v13 = 2300583946;
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  if (*(a1 + 48) > a3 && (v14 = *(*(a1 + 64) + 8 * a3)) != 0)
  {
    if (*(v14 + 2) && (v15 = &LD_FIELDOFFSETSD + 904 * *(v14 + 2), *(v15 + 4) > a4))
    {
      v16 = &v15[40 * a4];
      v17 = *v15;
      v18 = *(v16 + 3);
      v19 = *(v16 + 4);
      v20 = &v18[-*v15];
      *(v14 + *(v15 + 2) - *v15 + a4) = 1;
      v21 = *(v16 + 20);
      v22 = *(v16 + 21);
      if (v21)
      {
        if (v21 < a5)
        {
          a5 = v21;
        }

        cstdlib_memcpy(&v20[v14], a6, v22 * a5);
      }

      else
      {
        v24 = v22 * a5;
        v35 = v20;
        v25 = LD_HeapAlloc(a1 + 8, v22 * a5);
        *&v35[v14] = v25;
        if (!v25)
        {
          return v13;
        }

        cstdlib_memcpy(v25, a6, v24);
        if (v18 == &unk_26ECDB8A8 && a5 != 0)
        {
          v33 = v19;
          v34 = v17;
          v27 = a5;
          v28 = a6 + 3;
          v29 = 24;
          do
          {
            if (marker_hasNonConstCharPtrArg(*(v28 - 6)))
            {
              if (*v28)
              {
                v30 = cstdlib_strlen(*v28);
              }

              else
              {
                v30 = 0;
              }

              v31 = LD_HeapAlloc(a1 + 8, v30 + 1);
              if (!v31)
              {
                return v13;
              }

              v32 = v31;
              if (v30)
              {
                cstdlib_strcpy(v31, *v28);
              }

              else
              {
                *v31 = 0;
              }

              *(*&v35[v14] + v29) = v32;
            }

            v28 += 4;
            v29 += 32;
            --v27;
          }

          while (v27);
          v19 = v33;
          v17 = v34;
        }
      }

      if (v19)
      {
        *(v14 + v19 - v17) = a5;
      }

      v13 = 0;
      *a7 = a5;
      *(a1 + 72) = 1;
    }

    else
    {
      v13 = 2300591629;
      log_OutPublic(*(*a1 + 32), "LINGDB", 20016, "%s%s%s%u%s%u%s%u", "method", "LD_writeField", "recordType", *(v14 + 2), "record", a3, "fieldID", a4);
    }
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", "record", a3);
    return 2300591633;
  }

  return v13;
}

uint64_t LD_readField(uint64_t a1, int a2, unsigned int a3, unsigned int a4, unsigned int a5, void *a6, _WORD *a7)
{
  *a7 = 0;
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  if (*(a1 + 48) > a3 && (v13 = *(*(a1 + 64) + 8 * a3)) != 0)
  {
    v14 = *(v13 + 2);
    if (*(v13 + 2) && (v15 = &LD_FIELDOFFSETSD + 904 * *(v13 + 2), *(v15 + 4) > a4))
    {
      v16 = *v15;
      if (*(v13 + *(v15 + 2) - *v15 + a4) == 1)
      {
        v17 = &v15[40 * a4];
        v19 = *(v17 + 3);
        v18 = v17 + 24;
        v20 = (v13 + v19 - v16);
        v21 = *(v18 + 1);
        v22 = (v13 + v21 - v16);
        if (!v21)
        {
          v22 = (v18 + 16);
        }

        v23 = *v22;
        if (v23 < a5)
        {
          a5 = v23;
        }

        if (*(v18 + 8) || (v20 = *v20) != 0)
        {
          cstdlib_memcpy(a6, v20, *(v18 + 9) * a5);
          v24 = 0;
          *a7 = a5;
        }

        else
        {
          v24 = 2300591633;
          log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%s%s%u%s%u%s%u", "method", "LD_readField", "recordType", v14);
        }
      }

      else
      {
        log_OutPublic(*(*a1 + 32), "LINGDB", 20017, "%s%u%s%u%s%u", "recordType", v14, "record", a3, "field", a4);
        return 2300591630;
      }
    }

    else
    {
      log_OutPublic(*(*a1 + 32), "LINGDB", 20016, "%s%s%s%u%s%u%s%u", "method", "LD_readField", "recordType", v14, "record", a3, "fieldID", a4);
      return 2300591629;
    }
  }

  else
  {
    v24 = 2300591633;
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u");
  }

  return v24;
}

uint64_t LD_readDirectField(uint64_t a1, int a2, unsigned int a3, unsigned int a4, void *a5, _WORD *a6)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  if (*(a1 + 48) > a3 && (v11 = *(*(a1 + 64) + 8 * a3)) != 0)
  {
    v12 = *(v11 + 2);
    if (*(v11 + 2) && (v13 = &LD_FIELDOFFSETSD + 904 * *(v11 + 2), *(v13 + 4) > a4))
    {
      v14 = *v13;
      if (*(v11 + *(v13 + 2) - *v13 + a4) == 1)
      {
        v15 = &v13[40 * a4];
        v16 = *(v15 + 3);
        v15 += 24;
        v17 = (v11 + v16 - v14);
        LODWORD(v16) = *(v15 + 8);
        v18 = v15 + 16;
        v19 = v16;
        v20 = *(v18 - 1);
        v21 = (v11 + v20 - v14);
        if (!v20)
        {
          v21 = v18;
        }

        v22 = *v21;
        if (v19 || (v17 = *v17) != 0)
        {
          v23 = 0;
          *a5 = v17;
          *a6 = v22;
        }

        else
        {
          v23 = 2300591633;
          log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u%s%u%s%u", "recordType", v12);
        }
      }

      else
      {
        log_OutPublic(*(*a1 + 32), "LINGDB", 20017, "%s%u%s%u%s%u", "recordType", v12, "record", a3, "field", a4);
        return 2300591630;
      }
    }

    else
    {
      log_OutPublic(*(*a1 + 32), "LINGDB", 20016, "%s%s%s%u%s%u%s%u", "method", "LD_readDirectField", "recordType", v12, "record", a3, "fieldID", a4);
      return 2300591629;
    }
  }

  else
  {
    v23 = 2300591633;
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u");
  }

  return v23;
}

uint64_t LD_enquireField(uint64_t a1, int a2, unsigned int a3, unsigned int a4, _WORD *a5)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  v9 = 2300591633;
  if (*(a1 + 48) > a3)
  {
    v10 = *(*(a1 + 64) + 8 * a3);
    if (v10)
    {
      if (*(v10 + 2) && (v11 = &LD_FIELDOFFSETSD + 904 * *(v10 + 2), *(v11 + 4) > a4))
      {
        v9 = 0;
        *a5 = *(v10 + *(v11 + 2) - *v11 + a4);
      }

      else
      {
        log_OutPublic(*(*a1 + 32), "LINGDB", 20016, "%s%s%s%u%s%u%s%u", "method", "LD_enquireField", "recordType", *(v10 + 2), "record", a3, "fieldID", a4);
        return 2300591629;
      }
    }
  }

  return v9;
}

uint64_t LD_enquireChild(uint64_t a1, int a2, int a3, unsigned int a4, _WORD *a5)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  if (a3 == 1)
  {
    LOWORD(v9) = 1;
LABEL_4:
    v10 = 0;
    *a5 = v9;
    return v10;
  }

  v10 = 2300591633;
  if (*(a1 + 48) > a4)
  {
    v11 = *(*(a1 + 64) + 8 * a4);
    if (v11)
    {
      v12 = *(v11 + 2);
      if (v12 != LD_ChildParentD[a3])
      {
        log_OutPublic(*(*a1 + 32), "LINGDB", 20010, "%s%s%s%u%s%u%s%u", "method", "LD_enquireChild", "childKey", a3, "parentRecordType", v12, "parentRecord", a4);
        return 2300591623;
      }

      v13 = 0;
      v9 = 0;
      v14 = v11 + 32;
      v15 = 1;
      do
      {
        v16 = *(v14 + 8 * v13);
        if (v16)
        {
          v17 = v9 == 0;
        }

        else
        {
          v17 = 0;
        }

        if (!v17)
        {
          break;
        }

        v18 = v15;
        v9 = *(v16 + 2) == a3 ? *v16 : 0;
        v15 = 0;
        v13 = 1;
      }

      while ((v18 & 1) != 0);
      goto LABEL_4;
    }
  }

  return v10;
}

uint64_t LD_getDBChangedStatus(uint64_t a1, int a2, _DWORD *a3)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) == 0)
  {
    *a3 = *(a1 + 72);
  }

  return 0;
}

uint64_t LD_resetDBChangedStatus(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) == 0)
  {
    *(a1 + 72) = 0;
  }

  return 0;
}

uint64_t lingdb_RemoveAllSubstrOcc(char *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a1)
  {
    LODWORD(v3) = 0;
    v4 = 0;
    do
    {
      v5 = *a2;
      if (*a2)
      {
        v6 = 0;
        v7 = v4;
        while (a1[v7] == v5)
        {
          v5 = a2[++v6];
          ++v7;
          if (!a2[v6])
          {
            goto LABEL_10;
          }
        }

        a1[v3] = v2;
        LODWORD(v3) = v3 + 1;
        v6 = 1;
      }

      else
      {
        v6 = 0;
      }

LABEL_10:
      v4 += v6;
      v2 = a1[v4];
    }

    while (v2);
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  a1[v3] = 0;
  return 0;
}

uint64_t LD_checkBEConsistency(void *a1, uint64_t a2, char a3, uint64_t a4, char *a5, char *__dst)
{
  v8 = a4;
  v51 = 0;
  v49 = 0;
  __s = 0;
  v48 = 0;
  v46 = 0;
  if (a5 && __dst)
  {
    *a5 = 0;
    cstdlib_strcpy(__dst, "");
  }

  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  v52 = 0;
  v44 = 0;
  v12 = a1[8] != 0;
  v13 = LD_enquireChild(a1, a2, 2, v12, &v52);
  if ((v13 & 0x80000000) == 0)
  {
    v41 = v12;
    v14 = v52;
    if (v52)
    {
      v40 = 0;
      v45 = 0;
      v43 = 0;
      v42 = v8;
      while (1)
      {
        Field = LD_readField(a1, a2, v14, 0, 1u, &v44, &v47);
        if ((Field & 0x80000000) != 0)
        {
          return Field;
        }

        if ((v44 - 9) >= 6)
        {
          if (v44 == 15)
          {
            v34 = v51;
            if ((a3 & 0x10) != 0)
            {
              Field = LD_checkPHR_TNTAG(a1, a2, v8, v51, v14, a5, __dst);
              if ((Field & 0x80000000) != 0)
              {
                return Field;
              }
            }

            v40 = v34;
            v43 = 0;
            v51 = v14;
            goto LABEL_94;
          }

          if (v44 != 4)
          {
            goto LABEL_94;
          }
        }

        v47 = 0;
        Field = LD_enquireField(a1, a2, v14, 3u, &v45);
        if ((Field & 0x80000000) != 0)
        {
          return Field;
        }

        if (!v45)
        {
          goto LABEL_14;
        }

        Field = LD_readDirectField(a1, a2, v14, 3u, &__s, &v47);
        if ((Field & 0x80000000) != 0)
        {
          return Field;
        }

        if (!v47)
        {
LABEL_14:
          __s = &v48;
        }

        Field = LD_enquireField(a1, a2, v14, 0xDu, &v46);
        if ((Field & 0x80000000) != 0)
        {
          return Field;
        }

        v16 = v46;
        if (v46)
        {
          Field = LD_readDirectField(a1, a2, v14, 0xDu, &v49, &v47);
          if ((Field & 0x80000000) != 0)
          {
            return Field;
          }

          if (!v47)
          {
            v16 = 0;
            v46 = 0;
          }
        }

        if ((a3 & 7) != 0)
        {
          v17 = __s;
          strcpy(&v57 + 4, "1");
          __s2 = 0;
          if (v16)
          {
            v18 = 0;
          }

          else
          {
            LD_setErrorDescription(a5, __dst, 0, v14, "missing PRM");
            v18 = 1;
          }

          v20 = (a3 & 2) == 0 || v16 != 0;
          if ((a3 & 4) == 0 && v20 || !cstdlib_strlen(v17) || cstdlib_strstr(v17, "'") || cstdlib_strstr(v17, "") || cstdlib_strstr(v17, "'2"))
          {
            v8 = v42;
          }

          else
          {
            cstdlib_strcpy(&v57 + 4, "0");
            v8 = v42;
            if ((a3 & 4) != 0 && v16)
            {
              Field = LD_readDirectField(a1, a2, v14, 0xDu, &__s2, __src);
              if ((Field & 0x80000000) != 0)
              {
                return Field;
              }

              if (cstdlib_strcmp(&v57 + 4, __s2))
              {
                LD_setErrorDescription(a5, __dst, 0, v14, "PRM != 0 without stress marker");
                v18 = 1;
              }
            }
          }

          if ((v8 & 1) != 0 && v18)
          {
            v21 = cstdlib_strlen(&v57 + 4);
            Field = LD_writeField(a1, a2, v14, 0xDu, (v21 + 1), (&v57 + 4), &v57 + 3);
            if ((Field & 0x80000000) != 0)
            {
              return Field;
            }

            v16 = 1;
            v46 = 1;
          }
        }

        if ((a3 & 8) != 0)
        {
          WORD1(v57) = 0;
          if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
          {
            return 2300583944;
          }

          __s2 = 0;
          Field = LD_readDirectField(a1, a2, v14, 5u, &__s2, &v57 + 3);
          if ((Field & 0x80000000) != 0)
          {
            return Field;
          }

          if ((LD_enquireField(a1, a2, v14, 0xEu, &v57 + 1) & 0x80000000) == 0 && !WORD1(v57))
          {
            LD_setErrorDescription(a5, __dst, 0, v14, "missing NLU field");
            if (v8)
            {
              strcpy(__src, "POS:");
              v28 = __s2;
              v29 = cstdlib_strlen(__s2);
              v30 = heap_Alloc(*(*a1 + 8), (v29 + 5));
              if (!v30)
              {
                goto LABEL_137;
              }

              v31 = v30;
              cstdlib_strcpy(v30, __src);
              cstdlib_strcat(v31, v28);
              v32 = cstdlib_strlen(v31);
              v13 = LD_writeField(a1, a2, v14, 0xEu, (v32 + 1), v31, &v57 + 2);
              heap_Free(*(*a1 + 8), v31);
              v8 = v42;
              if ((v13 & 0x80000000) != 0)
              {
                return v13;
              }
            }
          }
        }

        if ((a3 & 0x60) != 0)
        {
          v22 = __s;
          if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
          {
            return 2300583944;
          }

          if (v16)
          {
            __s2 = 0;
            Field = LD_readDirectField(a1, a2, v14, 0xDu, &__s2, __src);
            if ((Field & 0x80000000) != 0)
            {
              return Field;
            }

            v23 = cstdlib_atoi(__s2);
            if ((a3 & 0x20) == 0 || v23)
            {
              if ((a3 & 0x40) == 0 || !v23 || !cstdlib_strlen(v22) || cstdlib_strstr(v22, "'") || cstdlib_strstr(v22, "") || cstdlib_strstr(v22, "*") || cstdlib_strstr(v22, "["))
              {
                goto LABEL_74;
              }

              if (cstdlib_strstr(v22, "-"))
              {
                LD_setErrorDescription(a5, __dst, 1, v14, "missing marker of primary stress (unsafe)");
                if ((v8 & 2) == 0)
                {
                  goto LABEL_74;
                }
              }

              else
              {
                LD_setErrorDescription(a5, __dst, 0, v14, "missing marker of primary stress (safe)");
                if ((v8 & 1) == 0)
                {
                  goto LABEL_74;
                }
              }

              if (cstdlib_strstr(v22, "'2") == v22)
              {
                v22 += cstdlib_strlen("'2");
              }

              {
              }

              v36 = cstdlib_strlen("'");
              v37 = cstdlib_strlen(v22);
              v38 = heap_Alloc(*(*a1 + 8), (v36 + v37 + 1));
              if (!v38)
              {
LABEL_137:
                log_OutPublic(*(*a1 + 32), "LINGDB", 20000, 0);
                return 2300583946;
              }

              v26 = v38;
              cstdlib_strcpy(v38, "'");
              cstdlib_strcat(v26, v22);
            }

            else
            {
              if (!cstdlib_strstr(v22, "'") && !cstdlib_strstr(v22, "") && !cstdlib_strstr(v22, "'2"))
              {
                goto LABEL_74;
              }

              LD_setErrorDescription(a5, __dst, 0, v14, "spurious stress marker in unaccented word");
              if ((v8 & 1) == 0)
              {
                goto LABEL_74;
              }

              v24 = cstdlib_strlen(v22);
              v25 = heap_Alloc(*(*a1 + 8), (v24 + 1));
              if (!v25)
              {
                goto LABEL_137;
              }

              v26 = v25;
              cstdlib_strcpy(v25, v22);
              lingdb_RemoveAllSubstrOcc(v26, "'2");
              lingdb_RemoveAllSubstrOcc(v26, "'");
              lingdb_RemoveAllSubstrOcc(v26, "");
            }

            v27 = cstdlib_strlen(v26);
            v13 = LD_writeField(a1, a2, v14, 3u, (v27 + 1), v26, &v57 + 3);
            heap_Free(*(*a1 + 8), v26);
            if ((v13 & 0x80000000) != 0)
            {
              return v13;
            }

            v14 = v52;
            v8 = v42;
          }
        }

LABEL_74:
        if ((a3 & 0x10) != 0)
        {
          WORD1(v57) = 0;
          v33 = v51;
          if (!v51)
          {
            LD_setErrorDescription(a5, __dst, 0, v14, "missing initial phrase record");
            if (v8)
            {
              LODWORD(__s2) = 15;
              LOWORD(v57) = 0;
              v56 = 200;
              v55 = 0;
              Field = LD_createPrev(a1, a2, v14, &v51);
              if ((Field & 0x80000000) != 0)
              {
                return Field;
              }

              WORD2(v57) = 0;
              Field = LD_enquireField(a1, a2, v14, 1u, &v57 + 1);
              if ((Field & 0x80000000) != 0)
              {
                return Field;
              }

              if (WORD1(v57))
              {
                Field = LD_readField(a1, a2, v14, 1u, 1u, &v57 + 4, __src);
                if ((Field & 0x80000000) != 0)
                {
                  return Field;
                }

                v33 = v51;
                Field = LD_writeField(a1, a2, v51, 1u, 1u, (&v57 + 4), &v57 + 3);
                if ((Field & 0x80000000) != 0)
                {
                  return Field;
                }

                Field = LD_writeField(a1, a2, v33, 2u, 1u, (&v57 + 4), &v57 + 3);
                if ((Field & 0x80000000) != 0)
                {
                  return Field;
                }
              }

              else
              {
                v33 = v51;
              }

              Field = LD_writeField(a1, a2, v33, 0, 1u, &__s2, &v57 + 3);
              if ((Field & 0x80000000) != 0)
              {
                return Field;
              }

              v35 = cstdlib_strlen(&v55);
              Field = LD_writeField(a1, a2, v33, 4u, (v35 + 1), &v55, &v57 + 3);
              if ((Field & 0x80000000) != 0)
              {
                return Field;
              }

              Field = LD_writeField(a1, a2, v33, 7u, 1u, &v57, &v57 + 3);
              if ((Field & 0x80000000) != 0)
              {
                return Field;
              }

              Field = LD_writeField(a1, a2, v33, 8u, 1u, &v56, &v57 + 3);
              if ((Field & 0x80000000) != 0)
              {
                return Field;
              }
            }
          }

          if (!v43)
          {
            WORD1(v57) = 0;
            if (v33)
            {
              if (v14)
              {
                HIDWORD(v57) = 0;
                v13 = LD_enquireField(a1, a2, v33, 1u, &v57 + 1);
                if ((v13 & 0x80000000) != 0)
                {
                  goto LABEL_108;
                }

                if (!WORD1(v57))
                {
                  goto LABEL_108;
                }

                v13 = LD_enquireField(a1, a2, v14, 1u, &v57 + 1);
                if ((v13 & 0x80000000) != 0 || !WORD1(v57))
                {
                  goto LABEL_108;
                }

                Field = LD_readField(a1, a2, v33, 1u, 1u, &v57 + 4, &__s2);
                if ((Field & 0x80000000) != 0)
                {
                  return Field;
                }

                Field = LD_readField(a1, a2, v14, 1u, 1u, &v57 + 6, &__s2);
                if ((Field & 0x80000000) != 0)
                {
                  return Field;
                }

                if (HIWORD(v57) != WORD2(v57))
                {
                  LD_setErrorDescription(a5, __dst, 0, v33, "inconsistent phrase FROMPOS");
                  if (v8)
                  {
                    v13 = LD_writeField(a1, a2, v33, 1u, 1u, (&v57 + 6), __src);
LABEL_108:
                    if ((v13 & 0x80000000) != 0)
                    {
                      return v13;
                    }
                  }
                }
              }
            }
          }

          v43 = 1;
        }

LABEL_94:
        Field = LD_nextInSent(a1, a2, v14, &v52);
        if ((Field & 0x80000000) != 0)
        {
          return Field;
        }

        v14 = v52;
        if (!v52)
        {
          if ((a3 & 0x10) == 0)
          {
            v13 = 0;
            goto LABEL_133;
          }

          if (v43)
          {
            Field = LD_checkPHR_TNTAG(a1, a2, v8, v51, 0, a5, __dst);
          }

          else
          {
            Field = LD_checkPHR_final(a1, a2, v8, v40, &v51, a5, __dst);
          }

          if ((Field & 0x80000000) == 0)
          {
            v13 = LD_checkPHR_TOPOS(a1, a2, v8, v41, a5, __dst);
            if ((v13 & 0x80000000) != 0)
            {
              return v13;
            }

LABEL_133:
            if ((a3 & 0x80) == 0)
            {
              return v13;
            }

            return LD_checkRECPROMPT(a1, a2, v8, v41, a5, __dst);
          }

          return Field;
        }
      }
    }
  }

  return v13;
}

uint64_t LD_checkPHR_TNTAG(uint64_t a1, int a2, char a3, unsigned int a4, unsigned int a5, char *a6, char *a7)
{
  v25 = 0;
  __s1 = 0;
  if (!a4)
  {
    return 0;
  }

  HIWORD(__dst) = 0;
  result = LD_enquireField(a1, a2, a4, 4u, &__dst + 3);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (!HIWORD(__dst))
  {
    goto LABEL_12;
  }

  WORD2(__dst) = 0;
  result = LD_readDirectField(a1, a2, a4, 4u, &__s1, &__dst + 2);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (!WORD2(__dst) || (v15 = __s1) == 0 || !cstdlib_strcmp(__s1, ""))
  {
LABEL_12:
    LD_setErrorDescription(a6, a7, 0, a4, "undefined phrase type");
    if (a3)
    {
      if (a5)
      {
        v17 = "P";
      }

      else
      {
        v17 = "T";
      }

      cstdlib_strcpy(&__dst, v17);
      v18 = (cstdlib_strlen(&__dst) + 1);
      p_dst = &__dst;
      v20 = a1;
      v21 = a2;
      v22 = a4;
      return LD_writeField(v20, v21, v22, 4u, v18, p_dst, &__dst + 1);
    }

    return 0;
  }

  if (!cstdlib_strcmp(v15, "T"))
  {
    if (!a5)
    {
      return 0;
    }

    goto LABEL_21;
  }

  v16 = cstdlib_strcmp(v15, "Y");
  result = 0;
  if (a5 && !v16)
  {
LABEL_21:
    LD_setErrorDescription(a6, a7, 0, a4, "non-final phrase of final type");
    if (a3)
    {
      cstdlib_strcpy(&__dst, "P");
      v23 = cstdlib_strlen(&__dst);
      result = LD_writeField(a1, a2, a4, 4u, (v23 + 1), &__dst, &__dst + 1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = LD_enquireField(a1, a2, a5, 4u, &__dst + 3);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (HIWORD(__dst))
      {
        result = LD_readDirectField(a1, a2, a5, 4u, &v25, &__dst + 2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (WORD2(__dst))
        {
          v24 = v25;
          if (v25)
          {
            result = cstdlib_strcmp(v25, "T");
            if (!result)
            {
              return result;
            }

            result = cstdlib_strcmp(v24, "Y");
            if (!result)
            {
              return result;
            }
          }
        }
      }

      v18 = (cstdlib_strlen(v15) + 1);
      v20 = a1;
      v21 = a2;
      v22 = a5;
      p_dst = v15;
      return LD_writeField(v20, v21, v22, 4u, v18, p_dst, &__dst + 1);
    }

    return 0;
  }

  return result;
}

uint64_t LD_checkPHR_final(uint64_t a1, uint64_t a2, char a3, unsigned int a4, __int16 *a5, char *a6, char *__s1)
{
  if (!*a5)
  {
    return 0;
  }

  v10 = a2;
  LD_setErrorDescription(a6, __s1, 0, *a5, "dangling final phrase record");
  if ((a3 & 1) == 0)
  {
    return 0;
  }

  if (!a4 || (__s = 0, result = LD_readDirectField(a1, v10, *a5, 4u, &__s, &v17), (result & 0x80000000) == 0) && (v13 = __s, v14 = cstdlib_strlen(__s), result = LD_writeField(a1, v10, a4, 4u, (v14 + 1), v13, &v16), (result & 0x80000000) == 0))
  {
    result = LD_deleteRec(a1, v10, *a5);
    if ((result & 0x80000000) == 0)
    {
      result = 0;
      *a5 = a4;
    }
  }

  return result;
}

uint64_t LD_checkPHR_TOPOS(uint64_t a1, int a2, char a3, unsigned int a4, char *a5, char *a6)
{
  v19 = 0;
  v18 = 0;
  v16 = 0;
  LODWORD(v17) = 0;
  result = LD_enquireChild(a1, a2, 2, a4, &v19);
  if ((result & 0x80000000) == 0)
  {
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = v19;
      if (!v19)
      {
        break;
      }

      result = LD_readField(a1, a2, v19, 0, 1u, &v18, &v17 + 3);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if ((v18 - 9) < 6 || v18 == 4)
      {
        v12 = v14;
      }

      else if (v18 == 15)
      {
        if (!v13)
        {
          goto LABEL_23;
        }

        result = LD_enquireField(a1, a2, v13, 2u, &v16);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (!v16)
        {
          goto LABEL_23;
        }

        result = LD_readField(a1, a2, v13, 2u, 1u, &v17, &v17 + 3);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = LD_enquireField(a1, a2, v14, 1u, &v16);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (!v16)
        {
          goto LABEL_23;
        }

        result = LD_readField(a1, a2, v14, 1u, 1u, &v17 + 2, &v17 + 3);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (v17 != WORD1(v17) && (LD_setErrorDescription(a5, a6, 0, v13, "inconsistent phrase TOPOS"), (a3 & 1) != 0))
        {
          result = LD_writeField(a1, a2, v13, 2u, 1u, (&v17 + 2), &v17 + 2);
          v13 = v14;
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        else
        {
LABEL_23:
          v13 = v14;
        }
      }

      result = LD_nextInSent(a1, a2, v14, &v19);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    result = 0;
    if (v13)
    {
      if (v12)
      {
        result = LD_enquireField(a1, a2, v12, 2u, &v16);
        if ((result & 0x80000000) == 0)
        {
          if (v16)
          {
            result = LD_readField(a1, a2, v12, 2u, 1u, &v17, &v17 + 3);
            if ((result & 0x80000000) == 0)
            {
              result = LD_enquireField(a1, a2, v13, 2u, &v16);
              if ((result & 0x80000000) == 0)
              {
                if (v16)
                {
                  result = LD_readField(a1, a2, v13, 2u, 1u, &v16 + 2, &v17 + 3);
                  if ((result & 0x80000000) == 0)
                  {
                    if (v17 != HIWORD(v16) && (LD_setErrorDescription(a5, a6, 0, v13, "inconsistent TOPOS of final phrase record"), (a3 & 1) != 0))
                    {
                      return LD_writeField(a1, a2, v13, 2u, 1u, &v17, &v17 + 2);
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
        }
      }
    }
  }

  return result;
}

uint64_t LD_checkRECPROMPT(uint64_t a1, uint64_t a2, char a3, unsigned int a4, char *a5, char *a6)
{
  v9 = a2;
  v24[2] = *MEMORY[0x277D85DE8];
  v21 = 0;
  *(&v20 + 2) = 11;
  LOWORD(v20) = 0;
  result = LD_findChild(a1, a2, 2, a4, &v21);
  if ((result & 0x80000000) == 0)
  {
    v12 = 0;
    v13 = 4;
    while (1)
    {
      v14 = v21;
      if (!v21)
      {
        return 0;
      }

      result = LD_readField(a1, v9, v21, 0, 1u, &v20 + 2, &v23);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if ((*(&v20 + 2) - 9) < 6 || *(&v20 + 2) == 4)
      {
        break;
      }

LABEL_33:
      result = LD_nextInSent(a1, v9, v14, &v21);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    if (v12)
    {
      if ((v13 & 0xFFFFFFFD) == 0xC)
      {
        if ((*(&v20 + 2) | 2) != 0xE)
        {
LABEL_15:
          result = LD_readField(a1, v9, v12, 8u, 1u, &v20, &v23);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (!v20)
          {
            LD_setErrorDescription(a5, a6, 0, v12, "End of recorded prompt should coincide with phrase boundary: inserted short break");
            LOWORD(v20) = 1;
            if (a3)
            {
              strcpy(v24, "external");
              *(&v19 + 2) = 15;
              LOWORD(v19) = 0;
              HIBYTE(v18) = 0;
              *(&v18 + 2) = 0;
              LOWORD(v18) = 0;
              result = LD_writeField(a1, v9, v12, 8u, 1u, &v20, &v22);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = LD_writeField(a1, v9, v12, 0x12u, 9u, v24, &v22);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = LD_createPrev(a1, v9, v14, &v18 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = LD_enquireField(a1, v9, v14, 1u, &v18 + 1);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              if (WORD1(v18))
              {
                result = LD_readField(a1, v9, v14, 1u, 1u, &v18, &v23);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                v16 = WORD2(v18);
                result = LD_writeField(a1, v9, WORD2(v18), 1u, 1u, &v18, &v22);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                result = LD_writeField(a1, v9, v16, 2u, 1u, &v18, &v22);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }
              }

              else
              {
                v16 = WORD2(v18);
              }

              result = LD_writeField(a1, v9, v16, 0, 1u, (&v19 + 2), &v22);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v17 = cstdlib_strlen(&v18 + 7);
              result = LD_writeField(a1, v9, v16, 4u, (v17 + 1), (&v18 + 7), &v22);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = LD_writeField(a1, v9, v16, 7u, 1u, &v19, &v22);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = LD_writeField(a1, v9, v16, 8u, 1u, &v20, &v22);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }
            }
          }
        }
      }

      else if (*(&v20 + 2) == 14)
      {
        goto LABEL_15;
      }
    }

    v13 = *(&v20 + 2);
    v12 = v14;
    goto LABEL_33;
  }

  return result;
}

uint64_t LD_traverseWordRecsFromTokenRec(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t (*a4)(uint64_t, uint64_t, unsigned __int16 *, uint64_t), uint64_t a5)
{
  while (1)
  {
    if (!*a3)
    {
      return 0;
    }

    result = a4(a1, a2, a3, a5);
    if ((result & 0x1FFF) == 0x1E1C)
    {
      break;
    }

    if ((result & 0x80000000) == 0)
    {
      result = LD_nextInSent(a1, a2, *a3, a3);
      if ((result & 0x80000000) == 0)
      {
        continue;
      }
    }

    return result;
  }

  v11 = *a3;

  return LD_nextInSent(a1, a2, v11, a3);
}

uint64_t LD_traverseWordRecs(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t (*a4)(uint64_t, uint64_t, unsigned __int16 *, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, unsigned __int16 *, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, unsigned __int16 *, uint64_t), uint64_t (*a7)(uint64_t, uint64_t, unsigned __int16 *, uint64_t), uint64_t a8)
{
  v16 = 0;
  result = LD_findChild(a1, a2, 2, a3, &v16);
  if ((result & 0x80000000) == 0)
  {
    if (!a4)
    {
      goto LABEL_5;
    }

    result = a4(a1, a2, &v16, a8);
    if ((result & 0x80000000) == 0)
    {
      while (v16)
      {
        result = a5(a1, a2, &v16, a8);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = LD_nextInSent(a1, a2, v16, &v16);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (a6)
        {
          result = a6(a1, a2, &v16, a8);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        else
        {
LABEL_5:
          result = 0;
        }
      }

      if (a7)
      {
        return a7(a1, a2, &v16, a8);
      }
    }
  }

  return result;
}

uint64_t lingdb_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2300583937;
  }

  result = 0;
  *a2 = &iLingDB;
  return result;
}

char *LD_setErrorDescription(char *result, char *__s1, int a3, __int16 a4, const char *a5)
{
  if (result && (a3 || !*result))
  {
    *result = a4;
    if (!__s1)
    {
      return result;
    }
  }

  else if (!__s1)
  {
    return result;
  }

  result = cstdlib_strcmp(__s1, "");
  if (a3 || !result)
  {

    return cstdlib_strncpy(__s1, a5, 0x64uLL);
  }

  return result;
}

uint64_t LD_createPrev(uint64_t a1, int a2, unsigned int a3, _WORD *a4)
{
  v15 = 0;
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  if (*(a1 + 48) <= a3 || (v8 = *(*(a1 + 64) + 8 * a3)) == 0)
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", "record", a3);
    return 2300591633;
  }

  v9 = *(v8 + 2);
  if (v9 == 1)
  {
    v10 = 2300591621;
    log_OutPublic(*(*a1 + 32), "LINGDB", 20008, 0);
    return v10;
  }

  v12 = *(v8 + 24);
  if (v12)
  {
    v13 = LD_createNext(a1, a2, *v12, &v15);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    v10 = 0;
    goto LABEL_14;
  }

  v14 = *(v8 + 8);
  if (!v14)
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20009, "%s%s%s%u%s%u", "method", "LD_createPrev", "recordType", v9, "record", a3);
    return 2300591622;
  }

  v10 = LD_createChild(a1, a2, v9, *v14, &v15);
  if ((v10 & 0x80000000) == 0)
  {
LABEL_14:
    *a4 = v15;
    *(a1 + 72) = 1;
  }

  return v10;
}

uint64_t LD_deleteRec(uint64_t a1, int a2, uint64_t a3)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  *(a1 + 72) = 1;

  return LD_deleteRecordRecursive(a1, a3, a3);
}

uint64_t LD_deleteRecordRecursive(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a1 + 48) > a2 && (v5 = *(*(a1 + 64) + 8 * a2)) != 0)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = *(v5 + 32 + 8 * v7);
      if (!v9)
      {
        break;
      }

      v10 = v8;
      v11 = LD_deleteRecordRecursive(a1, *v9, a3);
      if (v11)
      {
        return v11;
      }

      v8 = 0;
      v7 = 1;
    }

    while ((v10 & 1) != 0);
    if (a2 == a3)
    {
      v12 = *(v5 + 24);
      if (v12)
      {
        v13 = *(v5 + 16);
        if (v13)
        {
          *(v13 + 24) = v12;
          *(*(v5 + 24) + 16) = v13;
        }

        else
        {
          *(v12 + 16) = 0;
        }
      }

      else
      {
        v17 = 0;
        v18 = *(v5 + 8) + 32;
        v19 = 1;
        do
        {
          v20 = *(v18 + 8 * v17);
          if (!v20)
          {
            goto LABEL_20;
          }

          v21 = v17;
          v22 = v19;
          v19 = 0;
          v17 = 1;
        }

        while ((v22 & (v20 != v5)) != 0);
        if (v20 != v5)
        {
LABEL_20:
          v14 = 2300591631;
          log_OutPublic(*(*a1 + 32), "LINGDB", 20018, "%s%u%s%u", "recordType", *(v5 + 2), "record", a2);
          return v14;
        }

        v23 = *(v5 + 16);
        if (v23)
        {
          *(v18 + 8 * v21) = v23;
          *(*(v5 + 16) + 24) = 0;
        }

        else
        {
          *(v18 + 8 * v21) = 0;
          if (v22)
          {
            v24 = *(v5 + 8);
            v25 = *(v24 + 40);
            if (v25)
            {
              *(v24 + 32) = v25;
              *(*(v5 + 8) + 40) = 0;
            }
          }
        }
      }
    }

    else
    {
      v16 = *(v5 + 16);
      if (v16)
      {
        v11 = LD_deleteRecordRecursive(a1, *v16, a3);
        if (v11)
        {
          return v11;
        }
      }
    }

    v14 = 0;
    *(*(a1 + 64) + 8 * a2) = 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", "record", a2);
    return 2300591633;
  }

  return v14;
}

uint64_t LD_objOpen(uint64_t a1, uint64_t a2, _WORD *a3, int a4, uint64_t a5)
{
  v14 = 0;
  v13 = 0;
  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v13);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  log_OutText(*(v13 + 32), "LINGDB", 4, 0, "LINGDB ObjOpen: Begin");
  v7 = heap_Calloc(*(v13 + 8), 1, 80);
  v8 = v13;
  if (v7)
  {
    v9 = v7;
    *v7 = v13;
    *(v7 + 48) = 1;
    if ((paramc_ParamGetUInt(*(v8 + 40), "lingdbrecordinitialsize", (v7 + 52)) & 0x80000000) != 0)
    {
      *(v9 + 13) = 128;
    }

    if ((paramc_ParamGetUInt(*(v13 + 40), "lingdbrecordgrowbysize", v9 + 14) & 0x80000000) != 0)
    {
      *(v9 + 14) = 128;
    }

    if ((paramc_ParamGetUInt(*(v13 + 40), "lingdbmaxrecords", v9 + 15) & 0x80000000) != 0)
    {
      *(v9 + 15) = -1;
    }

    if ((paramc_ParamGetUInt(*(v13 + 40), "lingdbrecpoolinitialsize", &v14 + 1) & 0x80000000) != 0)
    {
      HIDWORD(v14) = 10240;
    }

    if ((paramc_ParamGetUInt(*(v13 + 40), "lingdbrecpoolgrowsize", &v14) & 0x80000000) != 0)
    {
      v10 = 4096;
      LODWORD(v14) = 4096;
    }

    else
    {
      v10 = v14;
    }

    log_OutText(*(*v9 + 32), "LINGDB", 5, 0, "endMallocdID=%u, growBySize=%u, maxRecords=%u, recPoolInitial=%u, recPoolGrow=%u, currentSentID=%u", *(v9 + 13), *(v9 + 14), *(v9 + 15), HIDWORD(v14), v10, *(v9 + 12));
    LD_HeapInit(v9 + 1, v13, "records/fields", SHIDWORD(v14), v14);
    *a5 = v9;
    *(a5 + 8) = 45762;
    v11 = LD_reset(v9, *(a5 + 8));
    if ((v11 & 0x80000000) != 0)
    {
      LD_objClose(*a5, *(a5 + 8));
      *a5 = 0;
      *(a5 + 8) = 0;
    }

    log_OutText(*(v13 + 32), "LINGDB", 4, 0, "LINGDB ObjOpen: End (%x)", v11);
  }

  else
  {
    log_OutPublic(*(v13 + 32), "LINGDB", 20000, 0);
    return 2300583946;
  }

  return v11;
}

uint64_t LD_objClose(void *a1, uint64_t a2)
{
  v2 = a2;
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  v4 = *a1;
  log_OutText(*(*a1 + 32), "LINGDB", 4, 0, "LINGDB ObjClose : Begin");
  LD_HeapFreePool(a1 + 1);
  LD_clear(a1, v2);
  v5 = a1[8];
  if (v5)
  {
    heap_Free(*(*a1 + 8), v5);
  }

  heap_Free(*(*a1 + 8), a1);
  log_OutText(*(v4 + 32), "LINGDB", 4, 0, "LINGDB ObjClose : End (%x)", 0);
  return 0;
}

uint64_t LD_objReopen(uint64_t *a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  v3 = *a1;
  log_OutText(*(*a1 + 32), "LINGDB", 4, 0, "LINGDB ObjReopen : Begin");
  log_OutText(*(v3 + 32), "LINGDB", 4, 0, "LINGDB ObjReopen : End (%x)", 0);
  return 0;
}

uint64_t LD_reset(uint64_t *a1, int a2)
{
  v3 = 2300583944;
  v8 = 0;
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) == 0)
  {
    log_OutText(*(*a1 + 32), "LINGDB", 4, 0, "LINGDB LD_reset : Begin");
    v4 = *(a1 + 12);
    if (v4 == 1)
    {
      if (!a1[8])
      {
        v5 = heap_Calloc(*(*a1 + 8), *(a1 + 13), 8);
        a1[8] = v5;
        if (!v5)
        {
          log_OutPublic(*(*a1 + 32), "LINGDB", 20000, 0);
          return 2300583946;
        }
      }

      LD_HeapResetPool(a1 + 1);
      v6 = LD_createRec(a1, 1u, &v8);
      if ((v6 & 0x80000000) != 0)
      {
        return v6;
      }
    }

    else if (v4 != 2)
    {
      log_OutPublic(*(*a1 + 32), "LINGDB", 20003, 0);
      return 2300591616;
    }

    a1[9] = 0;
    log_OutText(*(*a1 + 32), "LINGDB", 4, 0, "LINGDB LD_reset : End (%x)", 0);
    return 0;
  }

  return v3;
}

uint64_t LD_clear(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  log_OutText(*(*a1 + 32), "LINGDB", 4, 0, "LINGDB LD_clear : Begin");
  *(a1 + 72) = 0;
  if (*(a1 + 64))
  {
    LD_HeapResetPool((a1 + 8));
    *(a1 + 48) = 1;
  }

  log_OutText(*(*a1 + 32), "LINGDB", 4, 0, "LINGDB LD_clear : End (%x)", 0);
  return 0;
}

uint64_t LD_findParent(uint64_t a1, int a2, unsigned int a3, _WORD *a4)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    v10 = 8200;
    return v10 | 0x89200000;
  }

  if (*(a1 + 48) <= a3 || (v7 = *(*(a1 + 64) + 8 * a3)) == 0)
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", "record", a3);
    v10 = 15889;
    return v10 | 0x89200000;
  }

  v8 = *(v7 + 8);
  if (v8)
  {
    LOWORD(v8) = *v8;
  }

  result = 0;
  *a4 = v8;
  return result;
}

uint64_t LD_findPrevCommonParent(uint64_t a1, int a2, unsigned int a3, _WORD *a4)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    v10 = 8200;
    return v10 | 0x89200000;
  }

  if (*(a1 + 48) <= a3 || (v7 = *(*(a1 + 64) + 8 * a3)) == 0)
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", "record", a3);
    v10 = 15889;
    return v10 | 0x89200000;
  }

  v8 = *(v7 + 24);
  if (v8)
  {
    LOWORD(v8) = *v8;
  }

  result = 0;
  *a4 = v8;
  return result;
}

uint64_t LD_prevInSent(uint64_t a1, int a2, unsigned int a3, _WORD *a4)
{
  v13 = 0;
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  PrevCommonParent = LD_findPrevCommonParent(a1, a2, a3, &v13);
  if ((PrevCommonParent & 0x80000000) != 0)
  {
    return PrevCommonParent;
  }

  if (v13)
  {
    goto LABEL_4;
  }

  if (*(a1 + 48) <= a3 || (v10 = *(*(a1 + 64) + 8 * a3)) == 0)
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", "record", a3);
    return 2300591633;
  }

  v11 = *(v10 + 2);
  if ((v11 & 0xFE) == 2)
  {
LABEL_4:
    v9 = 0;
    *a4 = v13;
  }

  else
  {
    v9 = 2300591625;
    log_OutPublic(*(*a1 + 32), "LINGDB", 20012, "%s%s%s%u%s%u", "method", "LD_prevInSent", "recordType", v11, "record", a3);
  }

  return v9;
}

uint64_t LD_checkIfIsInPrompt(uint64_t a1, int a2, unsigned int a3, _DWORD *a4)
{
  v16 = 0;
  LODWORD(__n) = 0;
  v15 = 0;
  v14 = 11;
  __s1 = 0;
  *a4 = 0;
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  v8 = *(a1 + 64) != 0;
  v9 = LD_enquireChild(a1, a2, 2, v8, &v15);
  result = 0;
  if ((v9 & 0x80000000) == 0)
  {
    if (v15)
    {
      result = LD_findChild(a1, a2, 2, v8, &__n + 1);
      if ((result & 0x80000000) == 0)
      {
        while (1)
        {
          v11 = WORD1(__n);
          v12 = !WORD1(__n) || HIWORD(v16) > a3;
          if (v12 || *a4)
          {
            break;
          }

          result = LD_readField(a1, a2, WORD1(__n), 1u, 1u, &v16 + 2, &__n);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (HIWORD(v16) <= a3)
          {
            result = LD_readField(a1, a2, v11, 0, 1u, &v14, &__n);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            if (v14 == 5)
            {
              result = LD_readDirectField(a1, a2, v11, 4u, &__s1, &__n);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              if (__n && !cstdlib_strncmp(__s1, "prompt", __n))
              {
                result = LD_readField(a1, a2, v11, 2u, 1u, &v16, &__n);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                if (v16 > a3)
                {
                  *a4 = 1;
                }
              }
            }
          }

          result = LD_nextInSent(a1, a2, v11, &__n + 1);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t LD_setPhonInDepes(uint64_t a1, int a2, int a3)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  result = 0;
  *(a1 + 76) = a3;
  return result;
}

uint64_t LD_dumpDBViaLogging(uint64_t *a1, uint64_t a2, int a3, const char *a4, int a5, unsigned int a6, uint64_t a7)
{
  v7 = a7;
  v19 = *MEMORY[0x277D85DE8];
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  v17 = 0u;
  memset(v18, 0, 432);
  memset(v16, 0, sizeof(v16));
  if (log_GetLogLevel(*(*a1 + 32)) >= a6)
  {
    cstdlib_memset(v18, 0, 0x800uLL);
    cstdlib_memcpy(v16 + 8, "LINGDB", 0x42uLL);
    HIDWORD(v17) = a6;
    *&v16[0] = *(*a1 + 32);
    if (a3)
    {
      WORD4(v17) = a3;
    }

    if (a4)
    {
      LD_logOutputCB(v16, a4);
      LD_logOutputCB(v16, "\n");
    }

    if (a5 == 1)
    {
      v15 = 0;
      if (LD_getDBChangedStatus(a1, a2, &v15) || v15 != 1)
      {
        LD_logOutputCB(v16, "LingDB unchanged since last call\n");
        return 0;
      }

      LD_resetDBChangedStatus(a1, a2);
    }

    dumpSentenceRecord(a1, a2, LD_logOutputCB, v16, v7);
  }

  return 0;
}

uint64_t dumpSentenceRecord(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, const char *), uint64_t a4, int a5)
{
  v9 = a1;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  result = LD_findDirect(a1, a2, 1, 0, &v52);
  if (!result)
  {
    v11 = v52;
    if (v52)
    {
      v12 = word_287EED5E8;
      v55 = 0;
      if ((LD_enquireField(v9, a2, v52, 0, &v55 + 1) & 0x80000000) == 0 && HIWORD(v55) == 1 && (LD_readDirectField(v9, a2, v11, 0, &v50, &v55) & 0x80000000) == 0 && v55 <= 1u)
      {
        v50 = 0;
      }

      a3(a4, "<SentenceRecord>\n");
      if (v12)
      {
        v13 = 0;
        do
        {
          HIDWORD(v41) = a5;
          LOWORD(v41) = v52;
          (*(&LD_FIELDOFFSETSD + 5 * v13 + 120))(v9, a2, a3, a4, "  ", v13, *(&LD_FIELDOFFSETSD + 5 * v13 + 119), *(&LD_FIELDOFFSETSD + 20 * v13 + 472), v41);
          ++v13;
        }

        while (v12 > v13);
      }

      v14 = LD_enquireChild(v9, a2, 3, v52, &v51);
      v15 = v51;
      if (v14)
      {
        v16 = 1;
      }

      else
      {
        v16 = v51 == 0;
      }

      if (!v16)
      {
        v17 = word_287EEDCF8;
        do
        {
          a3(a4, " <TokenRecord>\n");
          if (v17)
          {
            v18 = 0;
            do
            {
              HIDWORD(v41) = a5;
              LOWORD(v41) = v15;
              (*(&LD_FIELDOFFSETSD + 5 * v18 + 346))(v9, a2, a3, a4, "    ", v18, *(&LD_FIELDOFFSETSD + 5 * v18 + 345), *(&LD_FIELDOFFSETSD + 20 * v18 + 1376), v41);
              ++v18;
            }

            while (v17 > v18);
          }

          a3(a4, " </TokenRecord>\n");
          LD_nextInSent(v9, a2, v51, &v51);
          v15 = v51;
        }

        while (v51);
      }

      v19 = LD_enquireChild(v9, a2, 2, v52, &v51);
      v20 = v51;
      if (v19)
      {
        v21 = 1;
      }

      else
      {
        v21 = v51 == 0;
      }

      if (!v21)
      {
        v45 = word_287EEE080;
        v46 = word_287EED970;
        v49 = a5;
        v48 = v9;
        v47 = word_287EEE408;
        do
        {
          v22 = v50;
          v44 = v20;
          v53 = v20;
          a3(a4, " <WordRecord>\n");
          if (v22)
          {
            v54 = 0;
            v55 = 0;
            if ((safeh_HandleCheck(v9, a2, 45762, 80) & 0x80000000) == 0)
            {
              v23 = *v9;
              if ((LD_enquireField(v9, a2, v44, 2u, &v54) & 0x80000000) == 0 && v54 == 1 && (LD_enquireField(v9, a2, v44, 1u, &v54) & 0x80000000) == 0 && v54 == 1 && (LD_readField(v9, a2, v44, 1u, 1u, &v55, &v55 + 1) & 0x80000000) == 0 && (LD_readField(v9, a2, v44, 2u, 1u, &v54 + 2, &v55 + 1) & 0x80000000) == 0)
              {
                v43 = v23;
                v24 = HIWORD(v54) - v55;
                v25 = a5 ? xmlaux_calculateExtraEscapeBytes(v22 + v55, HIWORD(v54) - v55) : 0;
                __n = v24;
                v26 = v25 + v24;
                v27 = heap_Alloc(*(v43 + 8), (v26 + 1));
                if (v27)
                {
                  v28 = (v22 + v55);
                  v29 = v27;
                  if (a5)
                  {
                    xmlaux_escape(v27, v28, __n);
                  }

                  else
                  {
                    cstdlib_strncpy(v27, v28, __n);
                  }

                  v29[v26] = 0;
                  a3(a4, "    ");
                  a3(a4, "<");
                  a3(a4, "LD_W_ORTH");
                  a3(a4, "> ");
                  a3(a4, v29);
                  a3(a4, " </");
                  a3(a4, "LD_W_ORTH");
                  a3(a4, ">\n");
                  heap_Free(*(v43 + 8), v29);
                }
              }
            }
          }

          if (v46)
          {
            v30 = 0;
            do
            {
              HIDWORD(v41) = a5;
              LOWORD(v41) = v44;
              (*(&LD_FIELDOFFSETSD + 5 * v30 + 233))(v9, a2, a3, a4, "    ", v30, *(&LD_FIELDOFFSETSD + 5 * v30 + 232), *(&LD_FIELDOFFSETSD + 20 * v30 + 924), v41);
              ++v30;
            }

            while (v46 > v30);
          }

          if (!LD_enquireChild(v9, a2, 4, v44, &v53))
          {
            for (i = v53; v53; a5 = v49)
            {
              HIWORD(v55) = i;
              a3(a4, "    <SI_LAYER>\n");
              v32 = &LD_FIELDOFFSETSD;
              v33 = v9;
              if (v45)
              {
                v34 = a5;
                v35 = 0;
                do
                {
                  v36 = v32;
                  HIDWORD(v41) = v34;
                  LOWORD(v41) = i;
                  (*&v32[20 * v35 + 1836])(v33, a2, a3, a4, "      ", v35, *&v32[20 * v35 + 1832], v32[20 * v35 + 1828], v41);
                  v32 = v36;
                  ++v35;
                }

                while (v45 > v35);
              }

              if (!LD_enquireChild(v33, a2, 5, i, &v55 + 1))
              {
                for (j = HIWORD(v55); HIWORD(v55); j = HIWORD(v55))
                {
                  a3(a4, "      <SI_W_TOKEN>\n");
                  v38 = &LD_FIELDOFFSETSD;
                  if (v47)
                  {
                    v39 = 0;
                    do
                    {
                      v40 = v38;
                      HIDWORD(v41) = v49;
                      LOWORD(v41) = j;
                      (*&v38[20 * v39 + 2288])(v48, a2, a3, a4, "        ", v39, *&v38[20 * v39 + 2284], v38[20 * v39 + 2280], v41);
                      v38 = v40;
                      ++v39;
                    }

                    while (v47 > v39);
                  }

                  a3(a4, "      </SI_W_TOKEN>\n");
                  LD_findNextCommonParent(v48, a2, HIWORD(v55), &v55 + 1);
                }
              }

              a3(a4, "    </SI_LAYER>\n");
              v9 = v48;
              LD_findNextCommonParent(v48, a2, v53, &v53);
              i = v53;
            }
          }

          a3(a4, " </WordRecord>\n");
          LD_nextInSent(v9, a2, v51, &v51);
          v20 = v51;
        }

        while (v51);
      }

      return a3(a4, "</SentenceRecord>\n");
    }
  }

  return result;
}

uint64_t loc_printLH_U8String(uint64_t a1, int a2, uint64_t (*a3)(uint64_t, const char *), uint64_t a4, const char *a5, unsigned int a6, const char *a7, unsigned int a8, int a9, int a10)
{
  v27 = 0;
  v25 = 0;
  v26 = 0;
  result = LD_enquireField(a1, a2, a8, a6, &v26 + 1);
  if ((result & 0x80000000) == 0 && HIWORD(v26) == 1)
  {
    LD_readDirectField(a1, a2, a8, a6, &v27, &v26);
    v19 = v26;
    if (v26)
    {
      while (!v27[v19 - 1])
      {
        LOWORD(v26) = --v19;
        if (!v19)
        {
          v19 = 0;
          break;
        }
      }
    }

    if (a10)
    {
      v20 = Utf8_DepesLengthInBytesUtf8(v27, v19);
      result = heap_Alloc(*(*a1 + 8), v20 + 1);
      if (!result)
      {
        return result;
      }

      v21 = result;
      utf8_DepesToUtf8(v27, v26, 0, result, v20, &v25, 0);
      v19 = v25;
      v21[v25] = 0;
      LOWORD(v26) = v19;
      v27 = v21;
    }

    else
    {
      v21 = 0;
    }

    if (a9 && (v22 = xmlaux_calculateExtraEscapeBytes(v27, v19)) != 0)
    {
      v23 = v22;
      result = heap_Alloc(*(*a1 + 8), v22 + v26 + 1);
      if (!result)
      {
LABEL_18:
        if (v21)
        {
          return heap_Free(*(*a1 + 8), v21);
        }

        return result;
      }

      v24 = result;
      xmlaux_escape(result, v27, v26);
      v24[v23 + v26] = 0;
      v27 = v24;
    }

    else
    {
      v24 = 0;
    }

    a3(a4, a5);
    a3(a4, "<");
    a3(a4, a7);
    a3(a4, "> ");
    a3(a4, v27);
    a3(a4, " </");
    a3(a4, a7);
    result = a3(a4, ">\n");
    if (v24)
    {
      result = heap_Free(*(*a1 + 8), v24);
    }

    goto LABEL_18;
  }

  return result;
}

uint64_t LD_printDummy(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, const char *), uint64_t a4, const char *a5, uint64_t a6, const char *a7)
{
  a3(a4, a5);
  a3(a4, "<");
  a3(a4, a7);
  a3(a4, "> ");
  a3(a4, "UNDEFINED");
  a3(a4, " </");
  a3(a4, a7);

  return a3(a4, ">\n");
}

uint64_t LD_printTokenType(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, const char *), uint64_t a4, const char *a5, unsigned int a6, const char *a7, unsigned int a8, unsigned __int16 a9)
{
  v19 = 0;
  v20 = 0;
  v18 = 0;
  result = LD_enquireField(a1, a2, a9, a6, &v19 + 1);
  if ((result & 0x80000000) == 0 && HIWORD(v19) == 1)
  {
    LD_readField(a1, a2, a9, a6, a8, &v20, &v19);
    LD_getTokenType(a1, a2, v20, &v18);
    a3(a4, a5);
    a3(a4, "<");
    a3(a4, a7);
    a3(a4, "> ");
    a3(a4, v18);
    a3(a4, " </");
    a3(a4, a7);
    return a3(a4, ">\n");
  }

  return result;
}

uint64_t LD_printWordType(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, const char *), uint64_t a4, const char *a5, unsigned int a6, const char *a7, unsigned int a8, unsigned __int16 a9)
{
  v19 = 0;
  v20 = 0;
  v18 = 0;
  result = LD_enquireField(a1, a2, a9, a6, &v19 + 1);
  if ((result & 0x80000000) == 0 && HIWORD(v19) == 1)
  {
    LD_readField(a1, a2, a9, a6, a8, &v20, &v19);
    LD_getWordType(a1, a2, v20, &v18);
    a3(a4, a5);
    a3(a4, "<");
    a3(a4, a7);
    a3(a4, "> ");
    a3(a4, v18);
    a3(a4, " </");
    a3(a4, a7);
    return a3(a4, ">\n");
  }

  return result;
}

uint64_t LD_printLH_BOOL(uint64_t a1, int a2, uint64_t (*a3)(uint64_t, const char *), uint64_t a4, const char *a5, unsigned int a6, const char *a7, unsigned int a8, unsigned __int16 a9)
{
  v19 = 0;
  v20 = 0;
  result = LD_enquireField(a1, a2, a9, a6, &v19 + 1);
  if ((result & 0x80000000) == 0 && HIWORD(v19) == 1)
  {
    LD_readField(a1, a2, a9, a6, a8, &v20, &v19);
    a3(a4, a5);
    a3(a4, "<");
    a3(a4, a7);
    a3(a4, "> ");
    if (v20)
    {
      v18 = "true";
    }

    else
    {
      v18 = "false";
    }

    a3(a4, v18);
    a3(a4, " </");
    a3(a4, a7);
    return a3(a4, ">\n");
  }

  return result;
}

uint64_t LD_printLH_U16(uint64_t a1, int a2, uint64_t (*a3)(uint64_t, const char *), uint64_t a4, const char *a5, unsigned int a6, const char *a7, unsigned int a8, unsigned __int16 a9)
{
  v20 = 0;
  v19 = 0;
  result = LD_enquireField(a1, a2, a9, a6, &v20);
  if ((result & 0x80000000) == 0 && v20 == 1)
  {
    LD_readField(a1, a2, a9, a6, a8, &v20 + 2, &v19);
    LH_utoa(HIWORD(v20), v18, 0xAu);
    a3(a4, a5);
    a3(a4, "<");
    a3(a4, a7);
    a3(a4, "> ");
    a3(a4, v18);
    a3(a4, " </");
    a3(a4, a7);
    return a3(a4, ">\n");
  }

  return result;
}

uint64_t LD_printLH_U8(uint64_t a1, int a2, uint64_t (*a3)(uint64_t, const char *), uint64_t a4, const char *a5, unsigned int a6, const char *a7, unsigned int a8, unsigned __int16 a9)
{
  v21 = 0;
  v20 = 0;
  v19 = 0;
  result = LD_enquireField(a1, a2, a9, a6, &v20);
  if ((result & 0x80000000) == 0 && v20 == 1)
  {
    LD_readField(a1, a2, a9, a6, a8, &v21, &v19);
    LH_utoa(v21, v18, 0xAu);
    a3(a4, a5);
    a3(a4, "<");
    a3(a4, a7);
    a3(a4, "> ");
    a3(a4, v18);
    a3(a4, " </");
    a3(a4, a7);
    return a3(a4, ">\n");
  }

  return result;
}

uint64_t LD_printLH_U32Array(uint64_t a1, int a2, uint64_t (*a3)(uint64_t, const char *), uint64_t a4, const char *a5, unsigned int a6, const char *a7, uint64_t a8, unsigned __int16 a9)
{
  v22 = *MEMORY[0x277D85DE8];
  v18 = 0;
  result = LD_enquireField(a1, a2, a9, a6, &v18 + 1);
  if ((result & 0x80000000) == 0 && HIWORD(v18) == 1)
  {
    LD_readField(a1, a2, a9, a6, 0x400u, v21, &v18);
    __s1[0] = 0;
    if (v18)
    {
      v17 = 0;
      do
      {
        LH_utoa(v21[v17], __s2, 0xAu);
        cstdlib_strcat(__s1, __s2);
        cstdlib_strcat(__s1, " ");
        ++v17;
      }

      while (v17 < v18);
    }

    a3(a4, a5);
    a3(a4, "<");
    a3(a4, a7);
    a3(a4, "> ");
    a3(a4, __s1);
    a3(a4, "</");
    a3(a4, a7);
    return a3(a4, ">\n");
  }

  return result;
}

uint64_t LD_printLH_U16String(uint64_t a1, int a2, uint64_t (*a3)(uint64_t, const char *), uint64_t a4, const char *a5, unsigned int a6, const char *a7, uint64_t a8, unsigned __int16 a9)
{
  v23 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v19 = 0;
  result = LD_enquireField(a1, a2, a9, a6, &v20);
  if ((result & 0x80000000) == 0 && v20 == 1)
  {
    LD_readField(a1, a2, a9, a6, 0x20u, v21, &v19);
    __s1[0] = 0;
    if (v19)
    {
      for (i = 0; i < v19; ++i)
      {
        LH_itoa(v21[i], __s2, 0xAu);
        cstdlib_strcat(__s1, __s2);
        cstdlib_strcat(__s1, " ");
      }
    }

    a3(a4, a5);
    a3(a4, "<");
    a3(a4, a7);
    a3(a4, "> ");
    a3(a4, __s1);
    a3(a4, " </");
    a3(a4, a7);
    return a3(a4, ">\n");
  }

  return result;
}

uint64_t CB_appendString(void *a1, char *__s)
{
  v4 = cstdlib_strlen(__s);
  v5 = a1[1];
  if (v5)
  {
    v6 = a1[2];
    v7 = cstdlib_strlen(v5);
    v8 = a1[1];
    if (v6 > v7 + v4)
    {
LABEL_9:
      cstdlib_strcat(v8, __s);
      return 0;
    }

    v9 = v4 + a1[2] + 50;
    a1[2] = v9;
    if (v8)
    {
      v10 = heap_Realloc(*(*a1 + 8), v8, v9);
      goto LABEL_7;
    }
  }

  else
  {
    v9 = v4 + a1[2] + 50;
    a1[2] = v9;
  }

  v10 = heap_Calloc(*(*a1 + 8), 1, v9);
LABEL_7:
  v8 = v10;
  if (v10)
  {
    a1[1] = v10;
    goto LABEL_9;
  }

  return 10;
}

uint64_t LD_printMarkerT(uint64_t *a1, int a2, uint64_t (*a3)(uint64_t, const char *), uint64_t a4, const char *a5, unsigned int a6, const char *a7, uint64_t a8, unsigned __int16 a9, unsigned int a10)
{
  v39 = 0;
  v37 = 0;
  v38 = 0;
  __b = 0;
  __s = 0;
  cstdlib_memset(&__b, 0, 0x18uLL);
  __b = *a1;
  result = LD_enquireField(a1, a2, a9, a6, &v39 + 1);
  v17 = 0;
  if ((result & 0x80000000) == 0 && HIWORD(v39) == 1)
  {
    v31 = a1;
    LD_readDirectField(a1, a2, a9, a6, &v38, &v39);
    v18 = a5;
    a3(a4, a5);
    a3(a4, "<");
    v30 = a7;
    a3(a4, a7);
    a3(a4, ">\n");
    if (v39)
    {
      v19 = 0;
      v20 = 0;
      v33 = 0;
      v34 = 0;
      v21 = a10;
      v22 = "  <MARKER> ";
      while (1)
      {
        a3(a4, v18);
        a3(a4, v22);
        if (__s)
        {
          *__s = 0;
        }

        marker_serialize_tostring(CB_appendString, &__b, v38 + v19, 0);
        v23 = __s;
        if (v21)
        {
          v24 = cstdlib_strlen(__s);
          v25 = xmlaux_calculateExtraEscapeBytes(v23, v24);
          if (v25)
          {
            v26 = v22;
            v27 = v21;
            v28 = v25 + v24;
            if (v33 <= v25 + v24)
            {
              if (v34)
              {
                heap_Free(*(*v31 + 8), v34);
              }

              v33 = 2 * v28;
              result = heap_Alloc(*(*v31 + 8), (2 * v28) & 0xFFFFFFFE);
              v17 = result;
              if (!result)
              {
                a1 = v31;
                goto LABEL_23;
              }

              v18 = a5;
            }

            else
            {
              v17 = v34;
            }

            xmlaux_escape(v17, v23, v24 + 1);
            v34 = v17;
            v23 = v17;
            v21 = v27;
            v22 = v26;
          }
        }

        if (v23)
        {
          v29 = v23;
        }

        else
        {
          v29 = "";
        }

        a3(a4, v29);
        a3(a4, " </MARKER>\n");
        ++v20;
        v19 += 32;
        if (v20 >= v39)
        {
          goto LABEL_22;
        }
      }
    }

    v34 = 0;
LABEL_22:
    a3(a4, v18);
    a3(a4, "</");
    a3(a4, v30);
    result = a3(a4, ">\n");
    a1 = v31;
    v17 = v34;
  }

LABEL_23:
  if (__s)
  {
    result = heap_Free(*(*a1 + 8), __s);
  }

  if (v17)
  {
    return heap_Free(*(*a1 + 8), v17);
  }

  return result;
}

uint64_t LD_logOutputCB(uint64_t a1, const char *a2)
{
  v4 = (a1 + 80);
  v5 = cstdlib_strlen((a1 + 80));
  if (cstdlib_strlen(a2) + v5 >= 0x800)
  {
    result = log_OutText(*a1, a1 + 8, *(a1 + 76), 0, "%s", v4);
    if (!result)
    {
      result = log_OutText(*a1, a1 + 8, *(a1 + 76), 0, "%s");
    }

    goto LABEL_6;
  }

  cstdlib_strcat(v4, a2);
  if (v4[cstdlib_strlen(v4) - 1] == 10)
  {
    v4[cstdlib_strlen(v4) - 1] = 0;
    result = log_OutText(*a1, a1 + 8, *(a1 + 76), 0, "%s");
LABEL_6:
    *v4 = 0;
    return result;
  }

  return 0;
}

void *LD_HeapInit(void *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  result = cstdlib_memset(a1, 0, 0x28uLL);
  *a1 = a2;
  a1[1] = a3;
  *(a1 + 6) = a4;
  *(a1 + 7) = a5;
  return result;
}

void *LD_HeapAlloc(uint64_t a1, int a2)
{
  v4 = (a1 + 16);
  v3 = *(a1 + 16);
  v5 = (a2 + 7) & 0xFFFFFFF8;
  if (v3)
  {
    while (1)
    {
      v6 = v3;
      result = v3[2];
      if (result + v5 <= v3[3])
      {
        goto LABEL_16;
      }

      v3 = *v3;
      if (!*v6)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = 0;
LABEL_6:
  if (*(a1 + 32) || (v8 = *(a1 + 24), v8 <= v5))
  {
    if (*(a1 + 28) <= v5)
    {
      v8 = (a2 + 7) & 0xFFFFFFF8;
    }

    else
    {
      v8 = *(a1 + 28);
    }
  }

  result = heap_Calloc(*(*a1 + 8), 1, v8 + 32);
  if (result)
  {
    v9 = result;
    result += 4;
    v9[2] = result;
    v9[3] = result + v8;
    *v9 = 0;
    v9[1] = result;
    *(a1 + 32) += v8;
    if (v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = v4;
    }

    *v10 = v9;
    v6 = v9;
LABEL_16:
    *(a1 + 36) += v5;
    v6[2] = result + v5;
  }

  return result;
}

void *LD_HeapResetPool(void *result)
{
  if (result)
  {
    v1 = result;
    if (*result)
    {
      result = LD_HeapLogStats(result, "before ResetPool");
      for (i = v1[2]; i; i = *i)
      {
        v3 = i[1];
        i[2] = v3;
        result = cstdlib_memset(v3, 0, (*(i + 6) - v3));
      }

      *(v1 + 9) = 0;
    }
  }

  return result;
}

uint64_t LD_HeapLogStats(uint64_t result, const char *a2)
{
  if (result && *result)
  {
    v2 = (result + 16);
    LODWORD(v3) = -1;
    do
    {
      v2 = *v2;
      v3 = (v3 + 1);
    }

    while (v2);
    return log_OutText(*(*result + 32), "LINGDB", 5, 0, "LD_Heap %s %s: alloc=%lu pool=%lu initial=%lu grow=%lu blocks=%lu", *(result + 8), a2, *(result + 36), *(result + 32), *(result + 24), *(result + 28), v3);
  }

  return result;
}

void *LD_HeapFreePool(void *result)
{
  if (result)
  {
    v1 = result;
    if (*result)
    {
      result = LD_HeapLogStats(result, "before FreePool");
      v2 = v1[2];
      if (v2)
      {
        do
        {
          v3 = *v2;
          result = heap_Free(*(*v1 + 8), v2);
          v2 = v3;
        }

        while (v3);
      }

      v1[2] = 0;
      v1[4] = 0;
    }
  }

  return result;
}

unint64_t fix16_exp(uint64_t a1)
{
  if (!a1)
  {
    return 0x10000;
  }

  if (a1 == 0x10000)
  {
    return 178145;
  }

  if (a1 > 681391)
  {
    return 0x7FFFFFFFLL;
  }

  if (a1 < -726817)
  {
    return 0;
  }

  v3 = int64_from_int32(0x10000);
  v4 = int64_from_int32(a1);
  v5 = int64_add(v3, v4);
  v6 = int64_from_int32(a1);
  v7 = 2;
  for (i = 3; i != 13; ++i)
  {
    v9 = int64_mul_i64_i32(v6, a1);
    v6 = int64_shift(v9, 0xFFFFFFF0);
    v10 = int64_div_i64_i32(v6, v7);
    v11 = int64_add(v5, v10);
    v5 = v11;
    v7 *= i;
  }

  return int64_lo(v11);
}

unint64_t fix16_exp_cache(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0x10000;
  }

  if (a1 == 0x10000)
  {
    return 178145;
  }

  if (a1 > 681391)
  {
    return 0x7FFFFFFFLL;
  }

  if (a1 < -726817)
  {
    return 0;
  }

  v7 = (a1 ^ (a1 >> 4)) & 0xFFF;
  if (*(a2 + 4 * ((a1 ^ (a1 >> 4)) & 0xFFF)) == a1)
  {
    return *(a3 + 4 * ((a1 ^ (a1 >> 4)) & 0xFFF));
  }

  v8 = int64_from_int32(0x10000);
  v9 = int64_from_int32(a1);
  v10 = int64_add(v8, v9);
  v11 = int64_from_int32(a1);
  v12 = 2;
  for (i = 3; i != 13; ++i)
  {
    v14 = int64_mul_i64_i32(v11, a1);
    v11 = int64_shift(v14, 0xFFFFFFF0);
    v15 = int64_div_i64_i32(v11, v12);
    v16 = int64_add(v10, v15);
    v10 = v16;
    v12 *= i;
  }

  *(a2 + 4 * v7) = a1;
  *(a3 + 4 * v7) = int64_lo(v16);

  return int64_lo(v10);
}

unint64_t int64_neg(unint64_t a1)
{
  v1 = ~a1;
  if (!HIDWORD(a1))
  {
    v1 = -a1;
  }

  return v1 - (a1 & 0xFFFFFFFF00000000);
}

unint64_t int64_sub(uint64_t a1, unint64_t a2)
{
  v2 = -a2;
  v3 = -(a2 & 0xFFFFFFFF00000000) >> 32;
  if (HIDWORD(a2))
  {
    v2 = ~a2;
  }

  v4 = v2 + a1;
  v5 = __CFADD__(v3, HIDWORD(a1));
  v6 = (v3 + HIDWORD(a1));
  v7 = v5 || a1 < 0;
  return (v4 + v7) | (v6 << 32);
}

uint64_t int64_shift(uint64_t a1, unsigned int a2)
{
  v2 = -a2;
  v3 = v2 <= 31;
  v4 = ((2 * a1) << (a2 - 1)) | (HIDWORD(a1) >> v2);
  LODWORD(v5) = a1 >> v2;
  if (!v3)
  {
    v4 = 0;
    LODWORD(v5) = 0;
  }

  v6 = (a1 << a2) | (HIDWORD(a1) >> 1 >> ~a2);
  LODWORD(v7) = HIDWORD(a1) << a2;
  if (a2 > 0x1F)
  {
    LODWORD(v7) = 0;
    v6 = 0;
  }

  if (a2 >= 1)
  {
    v7 = v7;
  }

  else
  {
    v7 = v4;
  }

  if (a2 >= 1)
  {
    v5 = v6;
  }

  else
  {
    v5 = v5;
  }

  return v5 | (v7 << 32);
}

uint64_t int64_mul_i64_i32(unint64_t a1, int a2)
{
  v2 = a1 ^ a2;
  v3 = -a1;
  if (HIDWORD(a1))
  {
    v3 = ~a1;
  }

  if ((a1 & 0x80000000) != 0)
  {
    v4 = -(a1 & 0xFFFFFFFF00000000);
  }

  else
  {
    v3 = a1;
    v4 = a1;
  }

  if (a2 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = -a2;
  }

  v6 = (v3 >> 16) * HIWORD(v5);
  v7 = (v3 >> 16) * v5 + v3 * HIWORD(v5);
  v8 = v3 * v5 + HIWORD(v5) * HIWORD(v4);
  v9 = v6 + (v7 << 16);
  v10 = 65537 * v8 + HIWORD(v7);
  v11 = -v10;
  if (v9)
  {
    v11 = ~v10;
  }

  v12 = v2 >= 0;
  if (v2 < 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = v10;
  }

  if (v12)
  {
    v14 = v9;
  }

  else
  {
    v14 = -v9;
  }

  return v13 | (v14 << 32);
}

unint64_t int64_div_i64_i32(unint64_t a1, unsigned int a2)
{
  v2 = a1 ^ a2;
  v3 = -a1;
  if (HIDWORD(a1))
  {
    v3 = ~a1;
  }

  if ((a1 & 0x80000000) != 0)
  {
    v4 = -(a1 & 0xFFFFFFFF00000000);
  }

  else
  {
    v3 = a1;
    v4 = a1;
  }

  v5 = HIDWORD(v4);
  if ((a2 & 0x80000000) == 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = -a2;
  }

  v7 = v3 / v6;
  v8 = v3 % v6;
  v9 = v5 / v6;
  v10 = v5 % v6;
  v11 = v6 << 32;
  v12 = 0x100000000;
  while (v8 > v11 || v8 == v11 && HIDWORD(v11) < v10)
  {
    v11 = (__PAIR64__(v11, HIDWORD(v11)) >> 31) | (HIDWORD(v11) << 33);
    v12 = (__PAIR64__(v12, HIDWORD(v12)) >> 31) | (HIDWORD(v12) << 33);
  }

  for (; v8; v12 = v17 | (v18 << 32))
  {
    v13 = __ROR8__(v11, 33);
    v14 = v11 >> 1;
    v15 = v13;
    v16 = v8 <= v11 >> 1;
    v11 = (v11 >> 1) | (v13 << 32);
    v17 = (v12 >> 1);
    v18 = (v12 >> 33) | (v12 << 31);
    if (!v16 || v8 == v14 && v13 <= v10)
    {
      v19 = -v13;
      if (v15)
      {
        v20 = ~v11;
      }

      else
      {
        v20 = -v11;
      }

      v21 = v20 + v8;
      v22 = v8 < 0;
      v23 = __CFADD__(v10, v19);
      LODWORD(v10) = v10 + v19;
      if (v23)
      {
        v22 = 1;
      }

      v8 = v21 + v22;
      v24 = v7 + v17;
      v25 = v7 < 0;
      v23 = __CFADD__(v18, v9);
      v9 += v18;
      if (v23)
      {
        v25 = 1;
      }

      v7 = v24 + v25;
    }
  }

  v26 = v10 / v6;
  v27 = (v26 >> 31) + v7;
  v28 = v7 < 0;
  v23 = __CFADD__(v26, v9);
  v30 = v26 + v9;
  v29 = v30 == 0;
  v31 = v23 || v28;
  v32 = v27 + v31;
  v33 = v30 << 32;
  v34 = ~v32;
  if (v29)
  {
    v34 = -v32;
  }

  v35 = v34 - v33;
  v36 = v33 & 0xFFFFFFFF00000000 | v32;
  if (v2 < 0)
  {
    return v35;
  }

  else
  {
    return v36;
  }
}

uint64_t uint32_log2(uint64_t result)
{
  if (result)
  {
    v1 = WORD1(result);
    if (!WORD1(result))
    {
      v1 = result;
    }

    if (v1 <= 0xFF)
    {
      v2 = 16 * (WORD1(result) != 0);
    }

    else
    {
      v1 >>= 8;
      v2 = (16 * (WORD1(result) != 0)) | 8;
    }

    if (v1 > 0xF)
    {
      v1 >>= 4;
      v2 |= 4u;
    }

    if (v1 > 3)
    {
      v1 >>= 2;
      v2 |= 2u;
    }

    if (v1 <= 1)
    {
      return v2;
    }

    else
    {
      return v2 + 1;
    }
  }

  return result;
}

uint64_t fix16_add(int a1, int a2)
{
  if (((a2 + a1) ^ a1) > -1 || (a2 ^ a1) < 0)
  {
    return (a2 + a1);
  }

  else
  {
    return 0x80000000;
  }
}

uint64_t fix16_sub(int a1, int a2)
{
  if ((((a1 - a2) ^ a1) & (a2 ^ a1)) < 0 != v2)
  {
    return 0x80000000;
  }

  else
  {
    return (a1 - a2);
  }
}

uint64_t fix16_sadd(int a1, int a2)
{
  v2 = a2 + a1;
  if (((a2 + a1) ^ a1) <= -1 && (a2 ^ a1) >= 0)
  {
    v2 = 0x80000000;
  }

  if (a1 > 0)
  {
    v4 = 0x7FFFFFFF;
  }

  else
  {
    v4 = 0x80000000;
  }

  if (v2 == 0x80000000)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t fix16_ssub(int a1, int a2)
{
  v3 = a1 - a2;
  if ((((a1 - a2) ^ a1) & (a2 ^ a1)) < 0 != v2)
  {
    v3 = 0x80000000;
  }

  if (a1 > 0)
  {
    v4 = 0x7FFFFFFF;
  }

  else
  {
    v4 = 0x80000000;
  }

  if (v3 == 0x80000000)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

uint64_t fix16_mul(int a1, int a2)
{
  v2 = (a2 >> 16) * a1 + a2 * (a1 >> 16);
  v3 = __PAIR64__((a2 >> 16) * (a1 >> 16), a2 * a1) + __PAIR64__(v2 >> 16, v2 << 16);
  v4 = (__PAIR64__((a2 >> 16) * (a1 >> 16), a2 * a1) + __PAIR64__(v2 >> 16, v2 << 16)) >> 16;
  if (SHIDWORD(v3) >> 31 == SHIDWORD(v3) >> 15)
  {
    return v4;
  }

  else
  {
    return 0x80000000;
  }
}

uint64_t fix16_smul(int a1, int a2)
{
  v2 = (a2 >> 16) * a1 + a2 * (a1 >> 16);
  v3 = (__PAIR64__((a2 >> 16) * (a1 >> 16), a2 * a1) + __PAIR64__(v2 >> 16, v2 << 16)) >> 32;
  v4 = (__PAIR64__((a2 >> 16) * (a1 >> 16), a2 * a1) + __PAIR64__(v2 >> 16, v2 << 16)) >> 16;
  if (v3 >> 31 != v3 >> 15)
  {
    v4 = 0x80000000;
  }

  if (v4 == 0x80000000)
  {
    return ((a2 ^ a1) >> 31) ^ 0x7FFFFFFFu;
  }

  else
  {
    return v4;
  }
}

uint64_t fix16_div(int a1, int a2)
{
  if (!a2)
  {
    return 0x80000000;
  }

  if (a1 >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = -a1;
  }

  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = -a2;
  }

  if (v3 >= 0x100000)
  {
    v4 = v2 / ((v3 >> 17) + 1);
    v2 -= (v4 * v3) >> 17;
  }

  else
  {
    v4 = 0;
  }

  if ((v3 & 0xF) != 0)
  {
    v5 = 17;
  }

  else
  {
    v6 = 17;
    do
    {
      v7 = v3;
      v3 >>= 4;
      v5 = v6 - 4;
      if ((v7 & 0xF0) != 0)
      {
        break;
      }

      v8 = v6 > 7;
      v6 -= 4;
    }

    while (v8);
  }

  while (v2 && (v5 & 0x80000000) == 0)
  {
    v9 = v2 >> 28;
    if (v2 >> 28)
    {
      LOBYTE(v9) = 0;
      v11 = v2;
      if ((v2 & 0x80000000) != 0)
      {
        goto LABEL_23;
      }

      do
      {
LABEL_22:
        LOBYTE(v9) = v9 + 1;
        v11 *= 2;
      }

      while ((v11 & 0x80000000) == 0);
      goto LABEL_23;
    }

    v10 = v2;
    do
    {
      LOBYTE(v9) = v9 + 4;
      v11 = 16 * v10;
      v12 = HIBYTE(v10);
      v10 *= 16;
    }

    while (!v12);
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_23:
    if (v5 >= v9)
    {
      v9 = v9;
    }

    else
    {
      v9 = v5;
    }

    v13 = v2 << v9;
    v14 = v5 - v9;
    v15 = v13 / v3;
    v4 += (v13 / v3) << v14;
    v16 = 0xFFFFFFFF >> v14;
    v2 = 2 * (v13 % v3);
    v5 = v14 - 1;
    if (v15 > v16)
    {
      return 0x80000000;
    }
  }

  v18 = v4 >> 1;
  if ((a2 ^ a1) >= 0)
  {
    return v18;
  }

  else
  {
    return -v18;
  }
}

uint64_t fix16_sdiv(int a1, int a2)
{
  LODWORD(result) = fix16_div(a1, a2);
  if (result == 0x80000000)
  {
    return ((a2 ^ a1) >> 31) ^ 0x7FFFFFFFu;
  }

  else
  {
    return result;
  }
}

uint64_t igtree_Init(_WORD *a1, int a2, uint64_t a3, char *__b)
{
  v47 = 0;
  *v46 = 0;
  v45 = 0;
  v44 = 0;
  *__s1 = 0;
  v42 = 0;
  cstdlib_memset(__b, 0, 0x640uLL);
  inited = InitRsrcFunction(a1, a2, &v42);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v9 = ssftriff_reader_OpenChunk(a3, __s1, &v47, v46);
  if ((v9 & 0x80000000) != 0)
  {
LABEL_56:
    if ((v9 & 0x1FFF) == 0xA)
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  v10 = 2380275722;
  while (cstdlib_strcmp(__s1, "DSTR"))
  {
    if (cstdlib_strcmp(__s1, "FEAT"))
    {
      if (cstdlib_strcmp(__s1, "TABL"))
      {
        if (cstdlib_strcmp(__s1, "APOS"))
        {
          if (cstdlib_strcmp(__s1, "FNAM"))
          {
            if (!cstdlib_strcmp(__s1, "PARA"))
            {
              v11 = heap_Calloc(*(v42 + 8), v47 >> 2, 16);
              *(__b + 166) = v11;
              if (!v11)
              {
                return v10;
              }

              v12 = v47;
              if (v47)
              {
                v13 = 0;
                v14 = 0;
                while (1)
                {
                  v45 = 0;
                  ssftriff_reader_ReadStringZ(a3, *v46, v12, v14, 0, &v45);
                  v15 = heap_Alloc(*(v42 + 8), v45);
                  *(*(__b + 166) + 16 * v13) = v15;
                  if (!v15)
                  {
                    return v10;
                  }

                  inited = ssftriff_reader_ReadStringZ(a3, *v46, v47, v14, v15, &v45);
                  if ((inited & 0x80000000) != 0)
                  {
                    return inited;
                  }

                  v16 = v45 + v14;
                  v45 = 0;
                  ssftriff_reader_ReadStringZ(a3, *v46, v47, v16, 0, &v45);
                  v17 = heap_Alloc(*(v42 + 8), v45);
                  *(*(__b + 166) + 16 * v13 + 8) = v17;
                  if (!v17)
                  {
                    return v10;
                  }

                  inited = ssftriff_reader_ReadStringZ(a3, *v46, v47, v16, v17, &v45);
                  if ((inited & 0x80000000) != 0)
                  {
                    return inited;
                  }

                  ++v13;
                  v14 = v45 + v16;
                  v12 = v47;
                  if (v14 >= v47)
                  {
                    goto LABEL_54;
                  }
                }
              }

              v13 = 0;
LABEL_54:
              *(__b + 334) = v13;
            }
          }

          else
          {
            v36 = heap_Calloc(*(v42 + 8), v47 >> 1, 8);
            *(__b + 164) = v36;
            if (!v36)
            {
              return v10;
            }

            v37 = v47;
            if (v47)
            {
              v38 = 0;
              v39 = 0;
              do
              {
                v45 = 0;
                ssftriff_reader_ReadStringZ(a3, *v46, v37, v39, 0, &v45);
                *(*(__b + 164) + 8 * v38) = heap_Alloc(*(v42 + 8), v45);
                v40 = *(*(__b + 164) + 8 * v38);
                if (!v40)
                {
                  return v10;
                }

                inited = ssftriff_reader_ReadStringZ(a3, *v46, v47, v39, v40, &v45);
                if ((inited & 0x80000000) != 0)
                {
                  return inited;
                }

                ++v38;
                v39 += v45;
                v37 = v47;
              }

              while (v39 < v47);
            }
          }
        }

        else
        {
          v45 = v47;
          v35 = heap_Alloc(*(v42 + 8), v47);
          *(__b + 163) = v35;
          if (!v35)
          {
            return v10;
          }

          inited = ssftriff_reader_ReadStringZ(a3, *v46, v47, 0, v35, &v45);
          if ((inited & 0x80000000) != 0)
          {
            return inited;
          }
        }
      }

      else
      {
        inited = ssftriff_reader_DetachChunkData(a3, __b, v46);
        if ((inited & 0x80001FFF) == 0x8000000A)
        {
          return inited;
        }

        __b[1296] = 0;
        if (v47 >= 2)
        {
          v26 = 0;
          LODWORD(v27) = 0;
          v28 = v47 >> 1;
          v29 = *v46;
          v30 = *v46 + 2;
          do
          {
            v31 = *(v29 + 2 * v27);
            if (v31 == 0xFFFF)
            {
              v32 = 0;
              do
              {
                v32 += 0xFFFF;
                v27 = (v27 + 1);
                v31 = *(v29 + 2 * v27);
              }

              while (v31 == 0xFFFF);
              v33 = v27;
            }

            else
            {
              v32 = 0;
              v33 = v27;
            }

            *&__b[8 * v26 + 272] = v30 + 2 * v33;
            v34 = v26 + 1;
            LODWORD(v27) = v27 + v32 + v31 + 1;
            ++v26;
          }

          while (v27 < v28);
          __b[1296] = v34;
        }
      }
    }

    else
    {
      v23 = v47;
      if (v47)
      {
        v24 = 0;
        v25 = *v46;
        do
        {
          *&__b[v24 + 16] = *(v25 + v24);
          v24 += 2;
        }

        while (v24 < v23);
      }
    }

LABEL_44:
    ssftriff_reader_CloseChunk(a3);
    v9 = ssftriff_reader_OpenChunk(a3, __s1, &v47, v46);
    if ((v9 & 0x80000000) != 0)
    {
      goto LABEL_56;
    }
  }

  v18 = heap_Calloc(*(v42 + 8), v47 >> 1, 8);
  *(__b + 1) = v18;
  if (!v18)
  {
    return v10;
  }

  v19 = v47;
  if (!v47)
  {
    v20 = 0;
LABEL_41:
    *(__b + 330) = v20;
    goto LABEL_44;
  }

  v20 = 0;
  v21 = 0;
  while (1)
  {
    v45 = 0;
    ssftriff_reader_ReadStringZ(a3, *v46, v19, v21, 0, &v45);
    *(*(__b + 1) + 8 * v20) = heap_Alloc(*(v42 + 8), v45);
    v22 = *(*(__b + 1) + 8 * v20);
    if (!v22)
    {
      return v10;
    }

    inited = ssftriff_reader_ReadStringZ(a3, *v46, v47, v21, v22, &v45);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    ++v20;
    v21 += v45;
    v19 = v47;
    if (v21 >= v47)
    {
      goto LABEL_41;
    }
  }
}

uint64_t igtree_Process(uint64_t a1, uint64_t a2, void *a3)
{
  v76 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 272);
  __src = v3;
  v4 = *(a1 + 1296);
  if (v4 < 2)
  {
    goto LABEL_38;
  }

  v40 = a3;
  v6 = 0;
  v3 = 0;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v7 = a1 + 272;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v60 = 0u;
  v75 = 0;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v8 = v4 - 1;
  v9 = a1 + 16;
  v39 = a1;
  v10 = (a1 + 8);
  v11 = 1;
  v12 = v8;
  memset(__dst, 0, 512);
  v41 = v8;
  do
  {
    if (v11 >= 1)
    {
      v13 = v11;
      memcpy(__dst, &__src, 8 * v11);
      v14 = 0;
      v15 = 0;
      v11 = 0;
      v16 = v6 + 1;
      while (1)
      {
        v17 = *(__dst + v14);
        v20 = *v17;
        v18 = (v17 + 1);
        v19 = v20;
        if (v20)
        {
          break;
        }

LABEL_28:
        v36 = v14 == 0;
        if (v15)
        {
          v36 = 0;
        }

        if (v36 && v3 == 0)
        {
          v3 = v18;
        }

        if (++v14 == v13)
        {
          v12 = v41;
          if (!v15)
          {
            goto LABEL_34;
          }

          goto LABEL_36;
        }
      }

      v21 = *(__dst + v14) + 4 * v19;
      while (1)
      {
        v22 = *v18;
        if (v22 == 0xFFFF)
        {
          v32 = *(v7 + 8 * v16);
          v33 = &(&__src)[v11];
          v34 = v18[1];
          while (v34 == 0xFFFF)
          {
            v32 += 131070;
            v21 += 2;
            v34 = v18[2];
            ++v18;
          }
        }

        else
        {
          v23 = *(a2 + 8 * *(v9 + 2 * v6));
          v24 = *(*v10 + 8 * v22);
          if (*v23 != *v24)
          {
            goto LABEL_25;
          }

          v25 = v23 + 1;
          v26 = v24 + 1;
          do
          {
            v28 = *v25++;
            v27 = v28;
            v30 = *v26++;
            v29 = v30;
          }

          while (v27 == v30 && v29 != 0);
          if (v27 != v29)
          {
            goto LABEL_25;
          }

          v32 = *(v7 + 8 * v16);
          v33 = &(&__src)[v11];
          v34 = v18[1];
          while (v34 == 0xFFFF)
          {
            v32 += 131070;
            v21 += 2;
            v34 = v18[2];
            ++v18;
          }

          v15 = 1;
        }

        *v33 = (v32 + 2 * v34);
        ++v11;
LABEL_25:
        ++v18;
        v21 -= 2;
        do
        {
          v35 = *v18++;
          v21 += 2;
        }

        while (v35 == -1);
        if (v18 >= v21)
        {
          goto LABEL_28;
        }
      }
    }

    v11 = 0;
LABEL_34:
    if (!v11 && v3)
    {
      a3 = v40;
      goto LABEL_40;
    }

LABEL_36:
    v37 = v6 + 1;
    v6 = (v6 + 1);
  }

  while (v12 > v37);
  v3 = __src;
  a1 = v39;
  a3 = v40;
LABEL_38:
  v10 = (a1 + 8);
LABEL_40:
  *a3 = *(*v10 + 8 * *v3);
  return 0;
}

uint64_t igtree_Deinit(uint64_t a1, uint64_t a2)
{
  ssftriff_reader_ReleaseChunkData(*a2);
  if (*(a2 + 1320))
  {
    v4 = 0;
    do
    {
      heap_Free(*(a1 + 8), *(*(a2 + 8) + 8 * v4++));
    }

    while (*(a2 + 1320) > v4);
  }

  heap_Free(*(a1 + 8), *(a2 + 8));
  heap_Free(*(a1 + 8), *(a2 + 1304));
  v5 = *(a2 + 1312);
  if (v5)
  {
    v6 = *(a2 + 1296);
    if (*(a2 + 1296))
    {
      v7 = 0;
      do
      {
        v8 = *(*(a2 + 1312) + 8 * v7);
        if (v8)
        {
          heap_Free(*(a1 + 8), v8);
          v6 = *(a2 + 1296);
        }

        ++v7;
      }

      while (v7 < v6);
      v5 = *(a2 + 1312);
    }

    heap_Free(*(a1 + 8), v5);
  }

  v9 = *(a2 + 1328);
  if (v9)
  {
    if (*(a2 + 1336))
    {
      v10 = 0;
      do
      {
        heap_Free(*(a1 + 8), *(*(a2 + 1328) + 16 * v10));
        heap_Free(*(a1 + 8), *(*(a2 + 1328) + 16 * v10++ + 8));
      }

      while (*(a2 + 1336) > v10);
      v9 = *(a2 + 1328);
    }

    heap_Free(*(a1 + 8), v9);
  }

  return 0;
}

uint64_t igtree_Init_ReadOnly_ReferenceCnt(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, void *a5, int a6, uint64_t a7, const char *a8, __int16 a9, char a10)
{
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  cstdlib_memset(&v21, 0, 0x30uLL);
  result = InitRsrcFunction(a1, a2, &v26);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(a3, a4, &v25);
    if ((result & 0x80000000) == 0)
    {
      *&v21 = a1;
      *(&v21 + 1) = a2;
      *&v22 = a3;
      *(&v22 + 1) = a4;
      cstdlib_strcpy(&v23, a8);
      DWORD2(v23) = a6;
      BYTE14(v23) = a10;
      WORD6(v23) = a9;
      ObjcForThisApi = getObjcForThisApi(v26, v25);
      result = objc_GetAddRefCountedObject(ObjcForThisApi, a7, igtree_ObjcLoad, igtree_ObjcClose, &v21, &v24);
      if ((result & 0x80000000) != 0)
      {
        v20 = 0;
      }

      else
      {
        v20 = *(v24 + 32);
      }

      *a5 = v20;
    }
  }

  return result;
}

uint64_t igtree_ObjcLoad(_WORD *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v45 = 0;
  v46 = 0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  memset(__dst, 0, sizeof(__dst));
  inited = InitRsrcFunction(a1, a2, &v45);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = InitRsrcFunction(*(a5 + 16), *(a5 + 24), &v46);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  cstdlib_memcpy(__dst, v45, 0x1A0uLL);
  v21 = *(v46 + 32);
  v11 = *(a5 + 40);
  v12 = *(a5 + 44) | (*(a5 + 46) << 16);
  v47 = 0;
  v13 = ssftriff_reader_ObjOpen(a1, a2, v11, a3, (a5 + 32), v12, &v47);
  if ((v13 & 0x80000000) != 0)
  {
    v16 = v13;
    log_OutText(v21, "IGTREE", 3, 0, "failed to read IGtree %s data - going on without");
  }

  else
  {
    v14 = heap_Calloc(*(&__dst[0] + 1), 1, 1600);
    *(a4 + 32) = v14;
    if (v14)
    {
      v15 = igtree_Init(a1, a2, v47, v14);
      if ((v15 & 0x80000000) != 0)
      {
        v16 = v15;
        v17 = v21;
        v18 = "error initializing IGtree  %s - going on without";
        goto LABEL_12;
      }

      cstdlib_strcpy((*(a4 + 32) + 1340), a3);
      v16 = ssftriff_reader_ObjClose(v47);
      if ((v16 & 0x80000000) != 0)
      {
        v17 = v21;
        v18 = "cannot complete reading IGtree  %s - going on without";
LABEL_12:
        log_OutText(v17, "IGTREE", 0, 0, v18, a3);
      }
    }

    else
    {
      log_OutText(v21, "IGTREE", 0, 0, "no memory for IGtree  %s", a3);
      log_OutPublic(v21, "IGTREE", 37000, 0);
      return 2380275722;
    }
  }

  return v16;
}

uint64_t igtree_ObjcClose(_WORD *a1, int a2, uint64_t a3)
{
  v7 = 0;
  result = InitRsrcFunction(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    v5 = *(a3 + 32);
    if (v5)
    {
      v6 = v7;
      igtree_Deinit(v7, v5);
      heap_Free(*(v6 + 8), v5);
    }

    return 0;
  }

  return result;
}

uint64_t igtree_Deinit_ReadOnly_DereferenceCnt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjcForThisApi = getObjcForThisApi(a1, a2);

  return objc_ReleaseObject(ObjcForThisApi, a3 + 1340);
}

uint64_t posparser_ExtractPunctuation(void *a1, char *__s, char **a3, size_t *a4, char **a5, size_t *a6)
{
  v12 = cstdlib_strlen(__s);
  v13 = v12;
  v24 = 0;
  if (*a3)
  {
    **a3 = 0;
    v14 = *a3;
  }

  else
  {
    v14 = 0;
  }

  *a4 = 0;
  if (*a5)
  {
    **a5 = 0;
    v15 = *a5;
  }

  else
  {
    v15 = 0;
  }

  *a6 = 0;
  if (v12)
  {
    v16 = 0;
    while ((*(a1[3] + 128))(a1[1], a1[2], &__s[v16]))
    {
      v16 += utf8_determineUTF8CharLength(__s[v16]);
      if (v16 >= v13)
      {
        goto LABEL_13;
      }
    }

    if (v16)
    {
LABEL_13:
      *a4 = v16;
      v17 = heap_Realloc(*(*a1 + 8), v14, v16 + 1);
      if (!v17)
      {
LABEL_31:
        v22 = 2687508490;
        log_OutPublic(*(*a1 + 32), "POSPARSER", 68000, 0);
        return v22;
      }

      v14 = v17;
      cstdlib_strncpy(v17, __s, *a4);
      v14[*a4] = 0;
    }

    v24 = v13 - 1;
    utf8_GetPreviousValidUtf8Offset(__s, &v24);
    if (v24 != -1)
    {
      v18 = v13;
      if ((*(a1[3] + 128))(a1[1], a1[2], &__s[v24]))
      {
        do
        {
          v18 = v24;
          PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, v24);
          v24 = PreviousUtf8Offset;
        }

        while (PreviousUtf8Offset != -1 && (*(a1[3] + 128))(a1[1], a1[2], &__s[PreviousUtf8Offset]));
      }

      v20 = v13 - v18;
      if (v13 > v18)
      {
        *a6 = v20;
        v21 = heap_Realloc(*(*a1 + 8), v15, v20 + 1);
        if (v21)
        {
          v15 = v21;
          cstdlib_strncpy(v21, &__s[v18], *a6);
          v15[*a6] = 0;
          goto LABEL_22;
        }

        goto LABEL_31;
      }
    }
  }

LABEL_22:
  if (*a3)
  {
    *a3 = v14;
  }

  else if (v14)
  {
    heap_Free(*(*a1 + 8), v14);
  }

  if (*a5)
  {
    v22 = 0;
    *a5 = v15;
  }

  else
  {
    if (v15)
    {
      heap_Free(*(*a1 + 8), v15);
    }

    return 0;
  }

  return v22;
}

uint64_t posparser_isFeatureRequired(uint64_t a1, int a2, _WORD *a3, unsigned int a4, int a5)
{
  LOWORD(v6) = a2;
  if (a5 == 1)
  {
LABEL_2:
    *a3 = v6;
    return 1;
  }

  if (a4)
  {
    v9 = g_posparser_FeatureNames[a2];
    v10 = a4;
    v6 = 0;
    while (cstdlib_strcmp(*(*(a1 + 1312) + 8 * v6), v9))
    {
      if (v10 == ++v6)
      {
        return 0;
      }
    }

    goto LABEL_2;
  }

  return 0;
}

uint64_t posparser_DumpFeatureVectorAndResult(uint64_t a1, char *a2, char **a3, char *a4, const char **a5, unsigned int *a6, unsigned int a7, int a8, __int16 a9, char *a10)
{
  __sprintf_chk(__s, 0, 6uLL, "%d", a9);
  result = posparser_add2Str(a1, a5, a6, __s);
  if ((result & 0x80000000) == 0)
  {
    result = posparser_add2Str(a1, a5, a6, " FEATUREVECTOR:");
    if ((result & 0x80000000) == 0)
    {
      result = posparser_add2Str(a1, a5, a6, a2);
      if ((result & 0x80000000) == 0)
      {
        result = posparser_add2Str(a1, a5, a6, ":");
        if ((result & 0x80000000) == 0)
        {
          __sprintf_chk(__s, 0, 6uLL, "%d", a7);
          result = posparser_add2Str(a1, a5, a6, __s);
          if ((result & 0x80000000) == 0)
          {
            result = posparser_add2Str(a1, a5, a6, ":");
            if ((result & 0x80000000) == 0)
            {
              result = posparser_add2Str(a1, a5, a6, a10);
              if ((result & 0x80000000) == 0)
              {
                if (a7)
                {
                  v19 = a7;
                  v20 = g_posparser_FeatureNames;
                  while (1)
                  {
                    if (a8 == 1)
                    {
                      result = posparser_add2Str(a1, a5, a6, *v20);
                      if ((result & 0x80000000) != 0)
                      {
                        break;
                      }

                      result = posparser_add2Str(a1, a5, a6, " ");
                      if ((result & 0x80000000) != 0)
                      {
                        break;
                      }
                    }

                    result = posparser_add2Str(a1, a5, a6, *a3);
                    if ((result & 0x80000000) != 0)
                    {
                      break;
                    }

                    result = posparser_add2Str(a1, a5, a6, " ");
                    if ((result & 0x80000000) != 0)
                    {
                      break;
                    }

                    ++v20;
                    ++a3;
                    if (!--v19)
                    {
                      goto LABEL_16;
                    }
                  }
                }

                else
                {
LABEL_16:
                  result = posparser_add2Str(a1, a5, a6, " PREDICTED:");
                  if ((result & 0x80000000) == 0)
                  {
                    result = posparser_add2Str(a1, a5, a6, a4);
                    if ((result & 0x80000000) == 0)
                    {
                      log_OutText(*(a1 + 32), "POSPARSER", 5, 0, "%s", *a5);
                      cstdlib_strcpy(*a5, "");
                      return 0;
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

uint64_t posparser_add2Str(uint64_t a1, const char **a2, unsigned int *a3, char *__s)
{
  v8 = cstdlib_strlen(__s);
  v9 = *a3;
  if (v8 >= v9 - cstdlib_strlen(*a2))
  {
    v11 = cstdlib_strlen(__s);
    v12 = *a3;
    v13 = v11 - v12 + cstdlib_strlen(*a2);
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
      log_OutPublic(*(a1 + 32), "POSPARSER", 68000, 0);
      return 2687508490;
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

uint64_t posparser_setFeature(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5, unsigned int a6, int a7)
{
  v31 = 0;
  result = posparser_isFeatureRequired(a1, a3, &v31, a6, a7);
  if (result)
  {
    if (cstdlib_strcmp(a5, ""))
    {
      v14 = cstdlib_strlen(a5);
      v15 = v31;
      if (v14 <= 0x40)
      {
        v17 = *(a4 + 8 * v31);
      }

      else
      {
        v16 = cstdlib_strlen(a5);
        v17 = heap_Realloc(*(a2 + 8), *(a4 + 8 * v15), (v16 + 1));
        if (!v17)
        {
          log_OutPublic(*(a2 + 32), "POSPARSER", 68000, 0);
          return 2687508490;
        }

        *(a4 + 8 * v15) = v17;
      }

      cstdlib_strcpy(v17, a5);
      if (a7)
      {
        return 0;
      }

      v19 = *(a4 + 8 * v15);
      v20 = cstdlib_strlen(g_posparser_FeatureNames[a3]);
      if (!*(a1 + 1336))
      {
        return 0;
      }

      v21 = v20;
      v22 = 0;
      while (1)
      {
        v23 = v22;
        if (!cstdlib_strncmp(*(*(a1 + 1328) + 16 * v22), *(*(a1 + 1312) + 8 * v15), v21))
        {
          break;
        }

        v22 = v23 + 1;
        if (*(a1 + 1336) <= (v23 + 1))
        {
          return 0;
        }
      }

      v24 = cstdlib_strlen(*(*(a1 + 1328) + 16 * v23 + 8));
      v25 = cstdlib_strlen(v19);
      v26 = *(*(a1 + 1328) + 16 * v23 + 8);
      v27 = cstdlib_strstr(v26, v19);
      if (v27)
      {
        v28 = v24;
        v29 = &v26[v24];
        while (v27 != v26 || v28 != v25 && (v28 <= v25 + 1 || v27[v25] != 32))
        {
          if (v27 > v26)
          {
            v30 = &v27[v25];
            if (v29 > (v30 + 1) && *v30 == 32)
            {
              if (*(v27 - 1) == 32)
              {
                return 0;
              }
            }

            else if (v29 == v30)
            {
              return 0;
            }
          }

          v27 = cstdlib_strstr(&v27[v25], v19);
          if (!v27)
          {
            goto LABEL_31;
          }
        }

        return 0;
      }

LABEL_31:
      v18 = v19;
    }

    else
    {
      v18 = *(a4 + 8 * v31);
    }

    cstdlib_strcpy(v18, "=");
    return 0;
  }

  return result;
}

uint64_t posparser_initFeatureVector(uint64_t a1, char **a2, unsigned int a3)
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

    cstdlib_strcpy(v6, "=");
    ++a2;
    if (!--v5)
    {
      return 0;
    }
  }

  log_OutPublic(*(a1 + 32), "POSPARSER", 68000, 0);
  return 2687508490;
}

void *posparser_freeFeatureVector(void *result, uint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    v4 = result;
    v5 = a3;
    do
    {
      v6 = *a2++;
      result = heap_Free(v4[1], v6);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t posparser_getIgtreeBrkStrs(uint64_t a1, _BYTE *a2, _BYTE *a3, size_t a4)
{
  v9 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &v9);
  if ((result & 0x80000000) == 0)
  {
    result = brokeraux_ComposeBrokerString(a1, "diacritizerOOVPOS_igtree", 1, 1, v9, 0, 0, a2, a4);
    if ((result & 0x80000000) == 0)
    {
      return brokeraux_ComposeBrokerString(a1, "diacritizerKNOWNPOS_igtree", 1, 1, v9, 0, 0, a3, a4);
    }
  }

  return result;
}

uint64_t getPosparserIGTreesAndDict(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t *a8, uint64_t *a9, _DWORD *a10, const char *a11, _DWORD *a12)
{
  v35 = *MEMORY[0x277D85DE8];
  v31 = 0;
  *v32 = 0;
  v30 = 0;
  v29 = 0;
  v27 = 0;
  *a7 = 0;
  *a8 = 0;
  *a9 = 0;
  *a10 = 0;
  *a12 = 0;
  if ((paramc_ParamGetInt(*(a1 + 40), "araparsergetfv", &v30) & 0x80000000) == 0 && v30 == 1)
  {
    *a10 = 1;
  }

  v28 = -1;
  v18 = (*(a6 + 96))(a4, a5, "fecfg", "araparsermwspan", &v29, &v28, &v27);
  if ((v18 & 0x80000000) != 0)
  {
    goto LABEL_28;
  }

  v24 = v28;
  if (v28)
  {
    *a12 = 1;
  }

  v19 = (*(a6 + 72))(a4, a5, a11, &v31 + 4);
  if ((v19 & 0x80000000) != 0)
  {
    goto LABEL_33;
  }

  if (!HIDWORD(v31))
  {
    cstdlib_strcpy(__dst, a11);
    cstdlib_strcat(__dst, "0");
    v20 = (*(a6 + 72))(a4, a5, __dst, &v31);
    v19 = v20;
    if ((v20 & 0x80000000) != 0 || !v31)
    {
      if ((v20 & 0x80000000) == 0)
      {
        return v19;
      }

      goto LABEL_33;
    }
  }

  *a7 = 1;
  if (*a10 == 1)
  {
    *a9 = 0;
    *a8 = 0;
    *a7 = 1;
LABEL_13:
    *a12 = 1;
    return v19;
  }

  IgtreeBrkStrs = posparser_getIgtreeBrkStrs(a1, __dst, v33, 0x100uLL);
  if ((IgtreeBrkStrs & 0x80000000) != 0)
  {
    v19 = IgtreeBrkStrs;
    goto LABEL_33;
  }

  if ((ssftriff_reader_ObjOpen(a2, a3, 2, v33, "IGTR", 1031, v32) & 0x80000000) != 0)
  {
    v19 = 2687508480;
    *a9 = 0;
    log_OutPublic(*(a1 + 32), "POSPARSER", 68005, "%s%s", "treename:", v33);
    goto LABEL_33;
  }

  v22 = heap_Calloc(*(a1 + 8), 1, 1600);
  *a9 = v22;
  if (!v22)
  {
    goto LABEL_38;
  }

  v18 = igtree_Init(a2, a3, *v32, v22);
  if ((v18 & 0x80000000) != 0)
  {
    goto LABEL_28;
  }

  v18 = ssftriff_reader_ObjClose(*v32);
  if ((v18 & 0x80000000) != 0)
  {
    goto LABEL_28;
  }

  if ((ssftriff_reader_ObjOpen(a2, a3, 2, __dst, "IGTR", 1031, v32) & 0x80000000) != 0)
  {
    v19 = 2687508480;
    *a8 = 0;
    log_OutPublic(*(a1 + 32), "POSPARSER", 68005, "%s%s", "treename:", __dst);
    goto LABEL_33;
  }

  v22 = heap_Calloc(*(a1 + 8), 1, 1600);
  *a8 = v22;
  if (!v22)
  {
LABEL_38:
    log_OutPublic(*(a1 + 32), "POSPARSER", 68000, v22);
    v19 = 2687508490;
    goto LABEL_33;
  }

  v18 = igtree_Init(a2, a3, *v32, v22);
  if ((v18 & 0x80000000) != 0)
  {
LABEL_28:
    v19 = v18;
    goto LABEL_33;
  }

  v19 = ssftriff_reader_ObjClose(*v32);
  if ((v19 & 0x80000000) != 0)
  {
LABEL_33:
    if (*a8)
    {
      heap_Free(*(a1 + 8), *a8);
      *a8 = 0;
    }

    if (*a9)
    {
      heap_Free(*(a1 + 8), *a9);
      *a9 = 0;
    }

    return v19;
  }

  if (v24 || HIDWORD(v31) == 1 || v31 == 1)
  {
    goto LABEL_13;
  }

  return v19;
}

uint64_t freePosparserIGTrees(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  if (v6)
  {
    v7 = igtree_Deinit(a1, v6);
    if ((v7 & 0x80000000) != 0)
    {
      return v7;
    }

    heap_Free(*(a1 + 8), *a2);
    *a2 = 0;
  }

  else
  {
    v7 = 0;
  }

  if (*a3)
  {
    v7 = igtree_Deinit(a1, *a3);
    if ((v7 & 0x80000000) == 0)
    {
      heap_Free(*(a1 + 8), *a3);
      *a3 = 0;
    }
  }

  return v7;
}

uint64_t posparser_doPatternMatching(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v164 = *MEMORY[0x277D85DE8];
  v159 = 0;
  v160 = 0;
  v157 = 0;
  v158 = 0;
  if (!a5)
  {
    return 0;
  }

  v5 = a5;
  v148 = 0;
  v8 = 0;
  v146 = 0;
  v9 = 0;
  v10 = 0;
  v162 = 0;
  v161 = 0;
LABEL_3:
  v11 = v9;
  v12 = a4 + 104 * v9;
  if (*(v12 + 32))
  {
    log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "word %d not sent to pattern matching since found in dict", v8);
    v11 = *(v12 + 72);
    v9 = *(v12 + 72);
    goto LABEL_11;
  }

  if (*(v12 + 88) || *(v12 + 80) || *(v12 + 84) || *(v12 + 92) || *(v12 + 12) || *(v12 + 74))
  {
    goto LABEL_11;
  }

  if (*(a3 + 62))
  {
    v14 = *(v12 + 96);
    v15 = a2;
    cstdlib_strncpy(a2, (a1 + *(v12 + 8)), *(v12 + 10) - *(v12 + 8));
    a2[*(v12 + 10) - *(v12 + 8)] = 0;
    if (v14)
    {
      v16 = posparser_ExtractPunctuation(a3, a2, &v160, &v159, &v158, &v157);
      if ((v16 & 0x80000000) != 0)
      {
        v10 = v16;
        goto LABEL_204;
      }

      cstdlib_strcpy(a2, *(v12 + 96));
    }
  }

  else
  {
    v132 = v10;
    v17 = *(v12 + 8);
    if (v17 >= *(v12 + 10))
    {
      v18 = 0;
      v19 = v146;
    }

    else
    {
      v18 = 0;
      v19 = v146;
      do
      {
        v20 = *(a3 + 104);
        if (v19 >= v20)
        {
          v21 = 0;
        }

        else
        {
          v21 = 0;
          v22 = a3[25];
          v23 = v19;
          v149 = v17;
          do
          {
            v24 = *(v22 + 6 * v23);
            if (v24 > *(v12 + 10))
            {
              break;
            }

            v25 = v23;
            if (v17 == v24)
            {
              if (*(a3 + 49) > v18)
              {
                v147 = v19;
                v26 = 0;
                while (cstdlib_strlen((a3[25] + 6 * v25 + 2)) > v26)
                {
                  v27 = (v18 + 1);
                  a2[v18] = *(a3[25] + 6 * v25 + v26++ + 2);
                  v28 = v26 + (v18 + 1);
                  v18 = v27;
                  if (v28 >= *(a3 + 49))
                  {
                    goto LABEL_33;
                  }
                }

                v27 = v18;
LABEL_33:
                v22 = a3[25];
                v20 = *(a3 + 104);
                v18 = v27;
                v19 = v147;
                v17 = v149;
              }

              v21 = *(v22 + 6 * v25 + 2);
            }

            else if (*(v12 + 8) >= v24)
            {
              v19 = v23;
            }

            v23 = v25 + 1;
          }

          while (v25 + 1 < v20);
        }

        v29 = *(a1 + v17);
        if ((v29 != 65 || v21 - 66 > 0x16 || ((1 << (v21 - 66)) & 0x400081) == 0 || !*(a3 + 38)) && *(a3 + 49) > v18)
        {
          a2[v18] = v29;
          v18 = (v18 + 1);
        }

        ++v17;
      }

      while (v17 < *(v12 + 10));
      LODWORD(v17) = v17;
    }

    v146 = v19;
    v30 = *(a3 + 104);
    v31 = v19;
    v32 = v18;
    v33 = v18;
    v10 = v132;
    v150 = v17;
    if (v19 < v30)
    {
      while (1)
      {
        v34 = *(a3[25] + 6 * v31);
        if (v34 > *(v12 + 10))
        {
          break;
        }

        v35 = v31;
        if (v34 == v17 && *(a3 + 49) > v32)
        {
          v36 = 0;
          while (cstdlib_strlen((a3[25] + 6 * v35 + 2)) > v36)
          {
            v37 = (v32 + 1);
            a2[v32] = *(a3[25] + 6 * v35 + v36++ + 2);
            v38 = v36 + (v32 + 1);
            v32 = v37;
            if (v38 >= *(a3 + 49))
            {
              goto LABEL_56;
            }
          }

          v37 = v32;
LABEL_56:
          v30 = *(a3 + 104);
          v32 = v37;
          LODWORD(v17) = v150;
        }

        v31 = v35 + 1;
        v33 = v32;
        v10 = v132;
        if (v31 >= v30)
        {
          goto LABEL_60;
        }
      }

      v33 = v32;
    }

LABEL_60:
    v148 = v33;
    if (*(a3 + 49) == v33)
    {
      v5 = v5;
      goto LABEL_13;
    }

    v15 = a2;
    a2[v33] = 0;
    v5 = v5;
  }

  log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "word %d (%s) sent to pattern matching", v8, v15);
  v39 = 1;
  while (1)
  {
    cstdlib_strcpy(__s1, "diac_decomp_");
    LH_itoa(v39, __s2, 0xAu);
    cstdlib_strcat(__s1, __s2);
    log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "%s L1: %s", __s1, a2);
    v40 = *(a3[7] + 120);
    v41 = cstdlib_strlen(a2);
    v42 = v40(a3[5], a3[6], 0, a2, v41);
    if ((v42 & 0x80000000) != 0)
    {
      return v42;
    }

    if (((*(a3[7] + 80))(a3[5], a3[6], __s1) & 0x80000000) != 0)
    {
      break;
    }

    v10 = (*(a3[7] + 128))(a3[5], a3[6], 0, &v162, &v161);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    v162[v161] = 0;
    log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "%s O1: %s", __s1, v162);
    if (!*v162 || !cstdlib_strchr("[/", *v162) || !cstdlib_strchr("]/", v162[v161 - 1]))
    {
      goto LABEL_180;
    }

    v129 = v39;
    v155 = 0;
    if (v161)
    {
      v139 = 1;
      v43 = v162;
      v44 = 1;
      do
      {
        v45 = *v43;
        if ((v45 - 44) <= 0x31 && ((1 << (v45 - 44)) & 0x2800000000009) != 0)
        {
          v47 = v45 == 44;
          v48 = v45 == 44 ? 1 : v139;
          v44 *= v48;
          v49 = v47 ? v139 + 1 : 1;
          v139 = v49;
          v50 = cstdlib_strchr(v43, 58);
          if (v50)
          {
            v43 = v50 - 1;
            do
            {
              v51 = v43[2];
              ++v43;
              v51 -= 44;
              v52 = v51 > 0x31;
              v53 = (1 << v51) & 0x2800000000009;
            }

            while (v52 || v53 == 0);
          }
        }

        ++v43;
      }

      while (v43 < &v162[v161]);
    }

    else
    {
      v44 = 1;
      v139 = 1;
    }

    log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "%d decomposition(s) found", v44);
    v55 = *a3;
    if (v44 > 0x2710)
    {
      log_OutText(*(v55 + 32), "POSPARSER", 5, 0, "More than 10000 decompositions found, invalidated the results of current depes grammar");
      goto LABEL_179;
    }

    v56 = heap_Realloc(*(v55 + 8), *(v12 + 24), 16 * (v44 + *(v12 + 32)));
    if (!v56)
    {
LABEL_200:
      log_OutPublic(*(*a3 + 32), "POSPARSER", 68000, 0);
      return 2687508490;
    }

    *(v12 + 24) = v56;
    v57 = *(v12 + 32);
    v133 = v10;
    if (!v44)
    {
      goto LABEL_99;
    }

    do
    {
      v58 = heap_Alloc(*(*a3 + 8), (v159 + v161 + v157));
      *(*(v12 + 24) + 16 * v57 + 8) = v58;
      if (!v58)
      {
        goto LABEL_200;
      }

      cstdlib_strcpy(v58, "");
      v59 = heap_Alloc(*(*a3 + 8), v161);
      *(*(v12 + 24) + 16 * v57) = v59;
      if (!v59)
      {
        log_OutPublic(*(*a3 + 32), "POSPARSER", 68000, 0);
        heap_Free(*(*a3 + 8), *(*(v12 + 24) + 16 * v57 + 8));
        return 2687508490;
      }

      cstdlib_strcpy(v59, "");
      LOWORD(v57) = v57 + 1;
      v10 = v133;
    }

    while (v44 + *(v12 + 32) > v57);
    v57 = *(v12 + 32);
LABEL_99:
    v130 = v5;
    if (!v161)
    {
      v82 = 1;
      v60 = 1;
      goto LABEL_139;
    }

    v60 = 1;
    v61 = v162;
    do
    {
      v62 = *v61;
      if ((v62 - 44) <= 0x31 && ((1 << (v62 - 44)) & 0x2800000000009) != 0)
      {
        v64 = v62 == 44;
        if (v62 == 44)
        {
          v65 = v148;
        }

        else
        {
          v65 = 0;
        }

        v148 = v65;
        if (v64)
        {
          v66 = 1;
        }

        else
        {
          v66 = v139;
        }

        v135 = v66 * v60;
        if (v64)
        {
          v67 = v139 + 1;
        }

        else
        {
          v67 = 1;
        }

        v139 = v67;
        v68 = cstdlib_strchr(v61, 58);
        if (v68)
        {
          *v68 = 0;
          v140 = v68 + 1;
          v143 = v61;
          v69 = v148;
          while (1)
          {
            v70 = v68[1];
            if ((v70 - 44) <= 0x31 && ((1 << (v70 - 44)) & 0x2800000000009) != 0)
            {
              break;
            }

            ++v68;
          }

          v68[1] = 0;
          v72 = *(v12 + 32);
          v131 = v68;
          if (v70 == 44)
          {
            v73 = v72 + v148;
            v74 = v148 + v135;
            v75 = v74 + v72;
            if (v74 + v72 > (v72 + v148))
            {
              v76 = (v72 + v148);
              do
              {
                v77 = 16 * (v76 + v135);
                cstdlib_strcpy(*(*(v12 + 24) + v77 + 8), *(*(v12 + 24) + 16 * v73 + 8));
                cstdlib_strcpy(*(*(v12 + 24) + v77), *(*(v12 + 24) + 16 * v73++));
                v76 = v73;
                v72 = *(v12 + 32);
                v75 = v74 + v72;
              }

              while (v74 + v72 > v73);
              v69 = v148;
            }
          }

          else
          {
            v74 = v148 + v135;
            v75 = v74 + v72;
          }

          v78 = v72 + v69;
          while (v75 > v78)
          {
            v79 = v78;
            v80 = 16 * v78;
            cstdlib_strcat(*(*(v12 + 24) + v80 + 8), v143 + 1);
            v81 = *(*(v12 + 24) + v80);
            if (*v81)
            {
              cstdlib_strcat(v81, "+");
              v81 = *(*(v12 + 24) + v80);
            }

            cstdlib_strcat(v81, v140);
            v78 = v79 + 1;
            v75 = v74 + *(v12 + 32);
          }

          v60 = v135;
          v148 = (v135 + v148);
          v61 = v131;
          v131[1] = v70;
        }

        else
        {
          v60 = v135;
        }
      }

      ++v61;
    }

    while (v61 < &v162[v161]);
    v57 = *(v12 + 32);
    if (v60)
    {
      v82 = v60;
      v10 = v133;
LABEL_139:
      v83 = v57;
      v84 = v57;
      do
      {
        if (v84)
        {
          v136 = v60;
          v85 = 0;
          v86 = 0;
          v144 = v84;
          v87 = v84;
          while (cstdlib_strcmp(*(*(v12 + 24) + 16 * v87), *(*(v12 + 24) + v85)))
          {
            ++v86;
            v85 += 16;
            if (v86 >= v87)
            {
              v84 = (v144 + 1);
              v148 = v86;
              v10 = v133;
              v60 = v136;
              goto LABEL_153;
            }
          }

          if (cstdlib_strcmp(*(*(v12 + 24) + 16 * v87 + 8), *(*(v12 + 24) + v85 + 8)))
          {
            log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "FEATUREVECTOR:DUPLICATE:%s POS %s, different DIA %s vs %s", a2, *(*(v12 + 24) + v85), *(*(v12 + 24) + 16 * v87 + 8), *(*(v12 + 24) + v85 + 8));
          }

          log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "removing duplicate %d %s,%s", v83, *(*(v12 + 24) + 16 * v87), *(*(v12 + 24) + 16 * v87 + 8));
          v88 = v82 - 1;
          v89 = v82 - 1 + *(v12 + 32);
          v90 = v144;
          if (v89 > v144)
          {
            v141 = v82;
            LODWORD(v90) = v144;
            v91 = v144;
            do
            {
              v92 = 16 * v90;
              v93 = v90;
              v94 = 16 * (v91 + 1);
              cstdlib_strcpy(*(*(v12 + 24) + v92 + 8), *(*(v12 + 24) + v94 + 8));
              cstdlib_strcpy(*(*(v12 + 24) + v92), *(*(v12 + 24) + v94));
              v90 = (v93 + 1);
              v91 = (v93 + 1);
              v89 = v88 + *(v12 + 32);
            }

            while (v89 > v91);
            v82 = v141;
          }

          v148 = v90;
          heap_Free(*(*a3 + 8), *(*(v12 + 24) + 16 * v89 + 8));
          heap_Free(*(*a3 + 8), *(*(v12 + 24) + 16 * (v82 + *(v12 + 32)) - 16));
          v60 = v136 - 1;
          v10 = v133;
          v84 = v144;
        }

        else
        {
          v148 = 0;
          v84 = 1;
        }

LABEL_153:
        v83 = v84;
        v57 = *(v12 + 32);
        v82 = v60;
        v95 = v57 + v60;
      }

      while (v95 > v84);
      v142 = v60;
    }

    else
    {
      v142 = 0;
      v95 = v57 + v60;
      v60 = 0;
      v10 = v133;
    }

    v145 = v148;
    v5 = v130;
    if (v95 <= v57)
    {
      goto LABEL_178;
    }

    while (2)
    {
      v137 = v60;
      v153 = 0;
      __s = 0;
      v96 = 16 * v57;
      v151 = v57;
      log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "DIA %s", *(*(v12 + 24) + v96 + 8));
      log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "POS %s", *(*(v12 + 24) + v96));
      if ((ssftmap_IteratorOpen(a3[32], 0, 0, &v155) & 0x80000000) != 0)
      {
        goto LABEL_171;
      }

      if ((ssftmap_IteratorNext(v155, &v153, &__s) & 0x80000000) != 0)
      {
LABEL_169:
        LODWORD(v57) = v151;
        goto LABEL_170;
      }

      while (2)
      {
        v97 = cstdlib_strstr(*(*(v12 + 24) + v96), (v153 + 1));
        if (!v97)
        {
LABEL_164:
          if ((ssftmap_IteratorNext(v155, &v153, &__s) & 0x80000000) != 0)
          {
            goto LABEL_168;
          }

          continue;
        }

        break;
      }

      if (*v153 != 70)
      {
        v98 = v97;
        v99 = cstdlib_strlen(__s);
        v100 = cstdlib_strlen((v153 + 1));
        v101 = cstdlib_strlen(v98);
        v102 = cstdlib_strlen((v153 + 1));
        cstdlib_memmove(&v98[v99], &v98[v100], v101 - v102 + 1);
        v103 = __s;
        v104 = cstdlib_strlen(__s);
        cstdlib_strncpy(v98, v103, v104);
        log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "PARTIAL MAPPING POS %s", *(*(v12 + 24) + v96));
        v105 = cstdlib_strstr(v98 + 1, (v153 + 1));
        if (v105)
        {
          v106 = v105;
          do
          {
            v107 = cstdlib_strlen(__s);
            v108 = cstdlib_strlen((v153 + 1));
            v109 = cstdlib_strlen(v106);
            v110 = cstdlib_strlen((v153 + 1));
            cstdlib_memmove(&v106[v107], &v106[v108], v109 - v110 + 1);
            v111 = __s;
            v112 = cstdlib_strlen(__s);
            cstdlib_strncpy(v106, v111, v112);
            log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "PARTIAL MAPPING POS %s", *(*(v12 + 24) + v96));
            v106 = cstdlib_strstr(v106 + 1, (v153 + 1));
          }

          while (v106);
        }

        goto LABEL_164;
      }

      cstdlib_strcpy(*(*(v12 + 24) + v96), __s);
      log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "FULL MAPPING POS %s", *(*(v12 + 24) + v96));
      if (cstdlib_strcmp(__s, "INVALID"))
      {
LABEL_168:
        v5 = v130;
        v10 = v133;
        goto LABEL_169;
      }

      v113 = (v142 - 1);
      v114 = v113 + *(v12 + 32);
      v115 = v151;
      v116 = v151;
      v10 = v133;
      if (v114 > v151)
      {
        v117 = v151;
        LODWORD(v116) = v151;
        do
        {
          v118 = 16 * (v117 + 1);
          v119 = v113;
          cstdlib_strcpy(*(*(v12 + 24) + 16 * v116 + 8), *(*(v12 + 24) + v118 + 8));
          cstdlib_strcpy(*(*(v12 + 24) + 16 * v116), *(*(v12 + 24) + v118));
          v113 = v119;
          v116 = (v116 + 1);
          v117 = v116;
          v114 = v119 + *(v12 + 32);
        }

        while (v114 > v116);
        v115 = v151;
        v10 = v133;
      }

      v145 = v116;
      heap_Free(*(*a3 + 8), *(*(v12 + 24) + 16 * v114 + 8));
      heap_Free(*(*a3 + 8), *(*(v12 + 24) + 16 * (v142 + *(v12 + 32)) - 16));
      --v137;
      LODWORD(v57) = v115 - 1;
      v5 = v130;
LABEL_170:
      ssftmap_IteratorClose(v155);
LABEL_171:
      v57 = (v57 + 1);
      v60 = v137;
      v142 = v137;
      v95 = *(v12 + 32) + v137;
      if (v95 > v57)
      {
        continue;
      }

      break;
    }

    v148 = v145;
LABEL_178:
    *(v12 + 32) = v95;
    log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "%d decomposition(s) left after invalidation step", v142);
    log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "%d decomposition(s) in total", *(v12 + 32));
LABEL_179:
    v39 = v129;
LABEL_180:
    if (++v39 == 255)
    {
LABEL_183:
      if (!*(v12 + 32))
      {
        v120 = *(v12 + 24);
        if (v120)
        {
          heap_Free(*(*a3 + 8), v120);
          *(v12 + 24) = 0;
        }
      }

      if (*(a3 + 62) == 1 && *(v12 + 96) && v160 | v158)
      {
        if (*(v12 + 32))
        {
          v134 = v10;
          v121 = 0;
          v122 = 8;
          do
          {
            if (v160)
            {
              v123 = *(*(v12 + 24) + v122);
              v124 = v5;
              v125 = v159;
              v126 = cstdlib_strlen(v123);
              v127 = &v123[v125];
              v5 = v124;
              cstdlib_memmove(v127, v123, v126 + 1);
              cstdlib_memcpy(*(*(v12 + 24) + v122), v160, v159);
            }

            if (v158)
            {
              cstdlib_strcat(*(*(v12 + 24) + v122), v158);
            }

            ++v121;
            v122 += 16;
          }

          while (v121 < *(v12 + 32));
          v148 = v121;
          v10 = v134;
        }

        else
        {
          v148 = 0;
        }
      }

LABEL_11:
      v13 = a4 + 104 * v11;
      if (*(v13 + 32))
      {
        *(v13 + 72) = v9;
      }

LABEL_13:
      v8 = ++v9;
      if (v9 >= v5)
      {
LABEL_204:
        if (v160)
        {
          heap_Free(*(*a3 + 8), v160);
        }

        if (v158)
        {
          heap_Free(*(*a3 + 8), v158);
        }

        return v10;
      }

      goto LABEL_3;
    }
  }

  v10 = 0;
  if (v39 != 1)
  {
    goto LABEL_183;
  }

  return v10;
}

uint64_t posparser_getPosMap(void *a1)
{
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v2 = (*(a1[3] + 96))(a1[1], a1[2], "fecfg", "araposmap", &v10, &v9, &v11);
  if ((v2 & 0x80000000) == 0 && v9)
  {
    for (i = 0; i < v9; ++i)
    {
      v4 = *(v10 + 8 * i);
      v5 = cstdlib_strchr(v4, 124);
      if (v5)
      {
        *v5 = 0;
        v6 = (v5 + 1);
        v7 = cstdlib_strchr(v5 + 1, 124);
        if (v7)
        {
          *v7 = 0;
          v2 = ssftmap_Insert(a1[32], v4, v6);
          if ((v2 & 0x80000000) != 0)
          {
            break;
          }
        }
      }
    }
  }

  return v2;
}

uint64_t posparser_loc_getDictCharString(void *a1, uint64_t a2, char **a3)
{
  LOBYTE(__c) = 0;
  v13 = 0;
  v12 = -1;
  v5 = (*(a1[3] + 96))(a1[1], a1[2], "fecfg", a2, &v13, &v12, &__c);
  if ((v5 & 0x80000000) == 0 && v12)
  {
    v6 = cstdlib_strchr(*v13, __c);
    if (v6)
    {
      *v6 = 0;
    }

    v7 = *(*a1 + 8);
    v8 = cstdlib_strlen(*v13);
    v9 = heap_Calloc(v7, 1, (v8 + 1));
    if (v9)
    {
      v10 = v9;
      cstdlib_strcpy(v9, *v13);
      *a3 = v10;
    }

    else
    {
      log_OutPublic(*(*a1 + 32), "POSPARSER", 68000, 0);
      return 2687508490;
    }
  }

  return v5;
}

uint64_t posparser_loc_getPostCorrRule(void *a1, uint64_t a2, uint64_t a3)
{
  LOBYTE(__c) = 0;
  v18 = 0;
  v17 = -1;
  *a3 = 0;
  v5 = (*(a1[3] + 96))(a1[1], a1[2], "fecfg", a2, &v18, &v17, &__c);
  if ((v5 & 0x80000000) == 0 && v17)
  {
    v6 = *v18;
    v7 = cstdlib_strchr(*v18, __c);
    if (v7)
    {
      *v7 = 0;
    }

    if (v6)
    {
      v8 = 0;
      do
      {
        v9 = cstdlib_strchr(v6, 95);
        v10 = v9;
        if (v9)
        {
          *v9 = 0;
        }

        v11 = *(*a1 + 8);
        v12 = cstdlib_strlen(v6);
        v13 = heap_Calloc(v11, 1, (v12 + 1));
        if (!v13)
        {
          log_OutPublic(*(*a1 + 32), "POSPARSER", 68000, 0);
          return 2687508490;
        }

        v14 = v13;
        cstdlib_strcpy(v13, v6);
        if (v8 > 1u)
        {
          if (v8 == 2)
          {
            if (cstdlib_strcmp(v14, "ENDWORD"))
            {
              if (!cstdlib_strcmp(v14, "IFNOTFOLLOWEDBY"))
              {
                v15 = 2;
                goto LABEL_22;
              }
            }

            else
            {
              v15 = 1;
LABEL_22:
              *a3 = v15;
            }

LABEL_23:
            heap_Free(*(*a1 + 8), v14);
            goto LABEL_24;
          }

          if (v8 != 3)
          {
            goto LABEL_23;
          }

          *(a3 + 40) = v14;
          *(a3 + 48) = cstdlib_strlen(v14);
        }

        else if (v8)
        {
          if (v8 != 1)
          {
            goto LABEL_23;
          }

          *(a3 + 24) = v14;
          *(a3 + 32) = cstdlib_strlen(v14);
        }

        else
        {
          *(a3 + 8) = v14;
          *(a3 + 16) = cstdlib_strlen(v14);
        }

LABEL_24:
        ++v8;
        v6 = v10 + 1;
      }

      while (v10);
    }
  }

  return v5;
}

uint64_t posparser_loc_getEmbeddedCharRule(void *a1, uint64_t a2, char *a3)
{
  LOBYTE(__c) = 0;
  v12 = 0;
  v11 = -1;
  v4 = (*(a1[3] + 96))(a1[1], a1[2], "fecfg", a2, &v12, &v11, &__c);
  if ((v4 & 0x80000000) == 0 && v11)
  {
    v5 = *v12;
    v6 = cstdlib_strchr(*v12, __c);
    if (v6)
    {
      *v6 = 0;
    }

    if (v5)
    {
      for (i = 0; ; ++i)
      {
        v8 = cstdlib_strchr(v5, 95);
        if (v8)
        {
          *v8 = 0;
        }

        v9 = a3;
        if (!i)
        {
          goto LABEL_12;
        }

        if (i == 1)
        {
          break;
        }

LABEL_13:
        v5 = v8 + 1;
        if (!v8)
        {
          return v4;
        }
      }

      v9 = a3 + 1;
LABEL_12:
      *v9 = *v5;
      goto LABEL_13;
    }
  }

  return v4;
}

size_t posparser_GetHighestPriority(size_t result, _WORD *a2, int a3)
{
  if (*a2 >= 2u)
  {
    v6 = result;
    v7 = 0;
    v4 = 0;
    v8 = 0;
    do
    {
      result = cstdlib_strlen(*(v6 + 8 * v7));
      if (result)
      {
        v9 = 0;
        v10 = 0;
        do
        {
          if (*(*(v6 + 8 * v7) + v10) == a3)
          {
            ++v9;
          }

          ++v10;
        }

        while (v9 <= 4u && result > v10);
        if (v9 == 5 && result > v10)
        {
          v13 = cstdlib_strchr((*(v6 + 8 * v7) + v10), a3);
          if (v13)
          {
            *v13 = 0;
          }

          result = cstdlib_atoi((*(v6 + 8 * v7) + v10));
          if (v8 < result)
          {
            result = cstdlib_atoi((*(v6 + 8 * v7) + v10));
            v8 = result;
            v4 = v7;
          }
        }
      }

      ++v7;
    }

    while (v7 < *a2);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t posparserGrowStr(uint64_t a1, uint64_t *a2, unsigned int a3, _WORD *a4, __int16 a5)
{
  if (*a4 >= a3)
  {
    return 0;
  }

  *a4 = a5 + a3;
  v7 = heap_Realloc(*(*a1 + 8), *a2, (a5 + a3) + 2);
  if (v7)
  {
    v8 = v7;
    result = 0;
    *a2 = v8;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "POSPARSER", 68000, 0);
    return 2687508490;
  }

  return result;
}

void *posPInsertTOKMarker(uint64_t a1, _WORD *a2, _DWORD *a3)
{
  v5 = *a2;
  if (v5 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v6 = (a1 + 44);
    v7 = 1;
    while (1)
    {
      v8 = *v6;
      v6 += 8;
      if (a3[3] < v8)
      {
        break;
      }

      if (v5 == ++v7)
      {
        LOWORD(v7) = *a2;
        break;
      }
    }

    v7 = v7;
  }

  v9 = a1 + 32 * v7;
  cstdlib_memmove((v9 + 32), v9, 32 * (v5 - v7));
  result = cstdlib_memcpy(v9, a3, 0x20uLL);
  ++*a2;
  return result;
}

uint64_t isMAPPINGXBI2A(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 152) == 1)
  {
    return isCharInStr(a2, "XBI");
  }

  else
  {
    return 0;
  }
}

uint64_t isCharInStr(unsigned __int8 *a1, const char *a2)
{
  v4 = Utf8_LengthInBytes(a1, 1);
  v5 = cstdlib_strlen(a2);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  while (1)
  {
    v8 = Utf8_LengthInBytes(&a2[v7], 1);
    v9 = v8;
    if (v8 == v4 && !cstdlib_strncmp(a1, &a2[v7], v8))
    {
      break;
    }

    v7 += v9;
    if (v7 >= v6)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t isDiacritic(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 120))
  {
    v3 = *(a1 + 120);
  }

  else
  {
    v3 = "^FNKauioR";
  }

  return isCharInStr(a2, v3);
}

uint64_t isSMSPunc(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    return isCharInStr(a2, v2);
  }

  else
  {
    return 0;
  }
}

uint64_t isPunc_0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    return isCharInStr(a2, v2);
  }

  else
  {
    return 0;
  }
}

uint64_t inSMSMode(unsigned int a1, uint64_t a2, unsigned int a3)
{
  if (!a3)
  {
    return 0;
  }

  v6 = 0;
  v7 = (a2 + 12);
  do
  {
    v8 = a2 + 32 * v6;
    if (a1 < (*(v8 + 12) - *(a2 + 12)))
    {
      break;
    }

    if (*v8 == 21 && (v9 = *(v8 + 24)) != 0 && !LH_stricmp(v9, "sms"))
    {
      if (a3 <= (v6 + 1))
      {
        v10 = (v6 + 1);
      }

      else
      {
        v10 = a3;
      }

      while (a3 > ++v6)
      {
        if (*(a2 + 32 * v6) == 21)
        {
          v11 = v7[8 * v6] - *v7;
          goto LABEL_17;
        }
      }

      LOWORD(v11) = *(a2 + 16);
      v6 = v10;
LABEL_17:
      if (a1 >= (*(v8 + 12) - *v7) && v11 > a1)
      {
        return 1;
      }
    }

    else
    {
      ++v6;
    }
  }

  while (a3 > v6);
  return 0;
}

uint64_t posparserInsertWordMarker(uint64_t a1, uint64_t *a2, unsigned __int16 *a3, unsigned int a4, int a5, char *__s, _WORD *a7)
{
  v7 = __s;
  v12 = *a2;
  v13 = cstdlib_strlen(__s);
  __src = xmmword_26ECDBBB8;
  v36 = unk_26ECDBBC8;
  v14 = *a3;
  if (v14 >= 2)
  {
    v15 = (v12 + 44);
    v16 = 1;
    while (1)
    {
      v17 = *v15;
      v15 += 8;
      if (v17 - *(v12 + 12) > a4)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v18 = *a3;
        v16 = (v14 - 2) + 2;
        if (a4)
        {
          goto LABEL_8;
        }

        goto LABEL_14;
      }
    }

    v18 = v16;
    if (a4)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  v18 = 1;
  v16 = 1;
  if (!a4)
  {
LABEL_14:
    v20 = 0;
    goto LABEL_15;
  }

LABEL_8:
  v19 = a4;
  while (v7[v19 - 1] != 32)
  {
    if (!--v19)
    {
      v19 = 0;
      break;
    }
  }

  v20 = v19;
LABEL_15:
  if (v13 <= a4)
  {
    LOWORD(v7) = a4;
    v23 = a4;
  }

  else
  {
    v21 = v7 + 1;
    v22 = v7[a4 + 1];
    LOWORD(v7) = a4;
    v23 = a4;
    if (v22 != 32)
    {
      LOWORD(v7) = a4;
      do
      {
        v7 = (v7 + 1);
        v23 = v7;
      }

      while (v13 > v7 && v7[v21] != 32);
    }
  }

  if (v14 < 2)
  {
LABEL_27:
    log_OutText(*(*a1 + 32), "POSPARSER", 5, 0, "Could not resolve references pos (previously logged as Public 68004). Word start pos=%d. Word end pos=%d. This pos=%d", v20, v23, a4);
    v24 = v18 - 1;
  }

  else
  {
    v24 = 1;
    while (1)
    {
      v25 = (v12 + 32 * v24);
      if (*v25 == 1 && v25[3] - *(v12 + 12) == v20)
      {
        break;
      }

      if (v14 <= ++v24)
      {
        goto LABEL_27;
      }
    }
  }

  *a7 = v24 + 1;
  v26 = (v12 + 32 * v24);
  if (a4 == v7)
  {
    v27 = 1;
  }

  else
  {
    v27 = v23 - a4;
  }

  DWORD1(__src) = v26[1] - (v23 - a4) + v26[2];
  DWORD2(__src) = v27;
  v26[2] = a4 - v20;
  v26[4] = a4 - v20;
  HIDWORD(__src) = a5 + a4 + *(v12 + 12);
  LODWORD(v36) = v23 - a4;
  v28 = heap_Realloc(*(*a1 + 8), v12, 32 * *a3 + 32);
  if (v28)
  {
    v29 = v28;
    v30 = *a3;
    v31 = v28 + 32 * v16;
    if (v30 != v18)
    {
      cstdlib_memmove((v31 + 32), v31, 32 * (v30 - v16));
    }

    cstdlib_memcpy(v31, &__src, 0x20uLL);
    result = 0;
    ++*a3;
    *a2 = v29;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "POSPARSER", 68000, 0);
    return 2687508490;
  }

  return result;
}

uint64_t posparser_applyEmbeddedRules(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  if (a3)
  {
    for (i = 0; i != a3; ++i)
    {
      v6 = a2 + 104 * i;
      if (!*(v6 + 88) && !*(v6 + 80) && !*(v6 + 84) && !*(v6 + 92) && !*(v6 + 12))
      {
        v7 = *(v6 + 8);
        v8 = (v7 + 1);
        v9 = *(v6 + 10);
        v10 = v8 >= a5 || v8 == 0;
        if (!v10 && v9 - 1 > v8)
        {
          v12 = v7 + 1;
          v13 = *(a1 + 184);
          v14 = v13;
          do
          {
            if (v14)
            {
              v15 = 0;
              v16 = 0;
              v17 = *(a4 + v12);
              do
              {
                v18 = *(a1 + 176);
                if (v17 == *(v18 + v15))
                {
                  v17 = *(v18 + v15 + 1);
                  *(a4 + v12) = v17;
                  v13 = *(a1 + 184);
                }

                ++v16;
                v15 += 2;
              }

              while (v16 < v13);
              v9 = *(v6 + 10);
              v14 = v13;
            }

            ++v12;
          }

          while (v12 < a5 && v9 - 1 > v12);
        }
      }
    }
  }

  return 0;
}

uint64_t setPosparserFeatureVector(uint64_t a1, char *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8)
{
  v92 = *MEMORY[0x277D85DE8];
  v90 = 0;
  v15 = 0;
  if (posparser_isFeatureRequired(a3, 0, &v90, a8, *(a1 + 236)) == 1)
  {
    v15 = posparser_setFeature(a3, *a1, 0, a5, a2, a8, *(a1 + 236));
    if ((v15 & 0x80000000) != 0)
    {
      return v15;
    }
  }

  if (posparser_isFeatureRequired(a3, 1, &v90, a8, *(a1 + 236)) == 1)
  {
    if (!a4)
    {
      v21 = *a1;
      v22 = *(a1 + 236);
      v20 = "SB";
      goto LABEL_17;
    }

    v16 = a6 + 104 * (a4 - 1);
    v19 = *(v16 + 40);
    v18 = (v16 + 40);
    v17 = v19;
    if (v19)
    {
      if (!cstdlib_strcmp(v17, "MULTIWORD"))
      {
        LOWORD(v23) = a4;
        do
        {
          v24 = v23 - 1;
          v23 = (v23 - 1);
          if (v24 < 0)
          {
            break;
          }

          v25 = *(a6 + 104 * v23 + 40);
          if (!v25)
          {
            break;
          }
        }

        while (!cstdlib_strcmp(v25, "MULTIWORD"));
        v21 = *a1;
        v20 = *(a6 + 104 * v23 + 40);
        goto LABEL_16;
      }

      v20 = *v18;
    }

    else
    {
      v20 = 0;
    }

    v21 = *a1;
LABEL_16:
    v22 = *(a1 + 236);
LABEL_17:
    v15 = posparser_setFeature(a3, v21, 1, a5, v20, a8, v22);
    if ((v15 & 0x80000000) != 0)
    {
      return v15;
    }
  }

  if (posparser_isFeatureRequired(a3, 2, &v90, a8, *(a1 + 236)) != 1)
  {
    goto LABEL_35;
  }

  v26 = a4 - 2;
  if (a4 >= 2)
  {
    v27 = a6 + 104 * v26;
    v30 = *(v27 + 40);
    v29 = (v27 + 40);
    v28 = v30;
    if (v30)
    {
      if (!cstdlib_strcmp(v28, "MULTIWORD"))
      {
        v34 = a4 - 2;
        if ((v26 & 0x8000) == 0)
        {
          while (1)
          {
            v35 = *(a6 + 104 * v34 + 40);
            if (!v35 || cstdlib_strcmp(v35, "MULTIWORD"))
            {
              break;
            }

            v36 = v34--;
            if (v36 <= 0)
            {
              v34 = -1;
              break;
            }
          }
        }

        v32 = *a1;
        v31 = *(a6 + 104 * v34 + 40);
        goto LABEL_33;
      }

      v31 = *v29;
    }

    else
    {
      v31 = 0;
    }

    v32 = *a1;
LABEL_33:
    v33 = *(a1 + 236);
    goto LABEL_34;
  }

  if (a4 != 1)
  {
    goto LABEL_35;
  }

  v32 = *a1;
  v33 = *(a1 + 236);
  v31 = "SB";
LABEL_34:
  v15 = posparser_setFeature(a3, v32, 2, a5, v31, a8, v33);
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

LABEL_35:
  if (posparser_isFeatureRequired(a3, 3, &v90, a8, *(a1 + 236)) == 1)
  {
    v37 = a6 + 104 * a4;
    v38 = *(v37 + 48);
    if (!v38)
    {
      v38 = *(v37 + 40);
    }

    v15 = posparser_setFeature(a3, *a1, 3, a5, v38, a8, *(a1 + 236));
    if ((v15 & 0x80000000) != 0)
    {
      return v15;
    }
  }

  v88 = a4 + 1;
  if (a4 + 1 < a7 && posparser_isFeatureRequired(a3, 4, &v90, a8, *(a1 + 236)) == 1)
  {
    v39 = a6 + 104 * v88;
    v40 = *(v39 + 48);
    if (!v40)
    {
      v40 = *(v39 + 40);
    }

    v15 = posparser_setFeature(a3, *a1, 4, a5, v40, a8, *(a1 + 236));
    if ((v15 & 0x80000000) != 0)
    {
      return v15;
    }
  }

  if (posparser_isFeatureRequired(a3, 9, &v90, a8, *(a1 + 236)) != 1 && posparser_isFeatureRequired(a3, 10, &v90, a8, *(a1 + 236)) != 1 && posparser_isFeatureRequired(a3, 11, &v90, a8, *(a1 + 236)) != 1 && posparser_isFeatureRequired(a3, 12, &v90, a8, *(a1 + 236)) != 1 && posparser_isFeatureRequired(a3, 13, &v90, a8, *(a1 + 236)) != 1 && posparser_isFeatureRequired(a3, 14, &v90, a8, *(a1 + 236)) != 1 && posparser_isFeatureRequired(a3, 15, &v90, a8, *(a1 + 236)) != 1 && posparser_isFeatureRequired(a3, 16, &v90, a8, *(a1 + 236)) != 1)
  {
    goto LABEL_102;
  }

  v41 = cstdlib_strlen(a2);
  v42 = Utf8_LengthInUtf8chars(a2, v41);
  v43 = posparser_setFeature(a3, *a1, 9, a5, "=", a8, *(a1 + 236));
  if ((v43 & 0x80000000) != 0)
  {
    return v43;
  }

  v43 = posparser_setFeature(a3, *a1, 10, a5, "=", a8, *(a1 + 236));
  if ((v43 & 0x80000000) != 0)
  {
    return v43;
  }

  v43 = posparser_setFeature(a3, *a1, 11, a5, "=", a8, *(a1 + 236));
  if ((v43 & 0x80000000) != 0)
  {
    return v43;
  }

  v43 = posparser_setFeature(a3, *a1, 12, a5, "=", a8, *(a1 + 236));
  if ((v43 & 0x80000000) != 0)
  {
    return v43;
  }

  v43 = posparser_setFeature(a3, *a1, 13, a5, "=", a8, *(a1 + 236));
  if ((v43 & 0x80000000) != 0)
  {
    return v43;
  }

  v43 = posparser_setFeature(a3, *a1, 14, a5, "=", a8, *(a1 + 236));
  if ((v43 & 0x80000000) != 0)
  {
    return v43;
  }

  v43 = posparser_setFeature(a3, *a1, 15, a5, "=", a8, *(a1 + 236));
  if ((v43 & 0x80000000) != 0)
  {
    return v43;
  }

  v15 = posparser_setFeature(a3, *a1, 16, a5, "=", a8, *(a1 + 236));
  if ((v15 & 0x80000000) == 0)
  {
    v44 = v42;
    if (v42)
    {
      v45 = 0;
      v46 = v42 - 2;
      v80 = v42 != 2;
      v81 = v42 != 3;
      v83 = v42 != 4;
      v84 = v42;
      v82 = v42;
      v47 = 0;
      do
      {
        v86 = v45;
        v87 = v46;
        v85 = v47;
        if (v44 == 1 || v47)
        {
          if (v44 != 2 && v47 == 1)
          {
            cstdlib_memset(__b, 0, 0x10uLL);
            v52 = utf8_determineUTF8CharLength(a2[v45]);
            cstdlib_strncpy(__b, a2, v52 + v45);
            v15 = posparser_setFeature(a3, *a1, 10, a5, __b, a8, *(a1 + 236));
            if ((v15 & 0x80000000) != 0)
            {
              return v15;
            }

            v51 = 1;
            v49 = v83;
            v50 = v81;
            goto LABEL_79;
          }

          if (v44 != 3 && v47 == 2)
          {
            cstdlib_memset(__b, 0, 0x10uLL);
            v53 = utf8_determineUTF8CharLength(a2[v45]);
            cstdlib_strncpy(__b, a2, v53 + v45);
            v15 = posparser_setFeature(a3, *a1, 11, a5, __b, a8, *(a1 + 236));
            if ((v15 & 0x80000000) != 0)
            {
              return v15;
            }

            v51 = 1;
            v49 = v83;
            goto LABEL_78;
          }

          if (v44 == 4)
          {
            v49 = v83;
            v51 = v80;
            v50 = v81;
            goto LABEL_80;
          }

          v49 = v83;
          v51 = v80;
          v50 = v81;
          if (v85 == 3)
          {
            cstdlib_memset(__b, 0, 0x10uLL);
            v54 = utf8_determineUTF8CharLength(a2[v86]);
            cstdlib_strncpy(__b, a2, v54 + v86);
            v15 = posparser_setFeature(a3, *a1, 12, a5, __b, a8, *(a1 + 236));
            if ((v15 & 0x80000000) != 0)
            {
              return v15;
            }

            v49 = 1;
            v51 = 1;
LABEL_78:
            v50 = 1;
LABEL_79:
            v46 = v87;
          }
        }

        else
        {
          cstdlib_memset(__b, 0, 0x10uLL);
          utf8_getUTF8Char(a2, 0, __b);
          v48 = posparser_setFeature(a3, *a1, 9, a5, __b, a8, *(a1 + 236));
          v46 = v87;
          v15 = v48;
          v49 = v83;
          v51 = v80;
          v50 = v81;
          if ((v48 & 0x80000000) != 0)
          {
            return v15;
          }
        }

LABEL_80:
        if (v84 != 1 && v46 == -1)
        {
          v55 = v49;
          cstdlib_memset(__b, 0, 0x10uLL);
          utf8_getUTF8Char(a2, v86, __b);
          v56 = posparser_setFeature(a3, *a1, 13, a5, __b, a8, *(a1 + 236));
          v49 = v55;
          v46 = v87;
          v15 = v56;
          if ((v56 & 0x80000000) != 0)
          {
            return v15;
          }
        }

        v57 = v51 ^ 1;
        if (v46)
        {
          v57 = 1;
        }

        if (v57)
        {
          v61 = v50 ^ 1;
          if (v46 != 1)
          {
            v61 = 1;
          }

          v58 = v86;
          if (v61)
          {
            if (v46 == 2)
            {
              v62 = v49;
            }

            else
            {
              v62 = 0;
            }

            v60 = v85;
            if (v62)
            {
              cstdlib_memset(__b, 0, 0x10uLL);
              cstdlib_strcpy(__b, &a2[v86]);
              v15 = posparser_setFeature(a3, *a1, 16, a5, __b, a8, *(a1 + 236));
              if ((v15 & 0x80000000) != 0)
              {
                return v15;
              }
            }
          }

          else
          {
            cstdlib_memset(__b, 0, 0x10uLL);
            cstdlib_strcpy(__b, &a2[v86]);
            v15 = posparser_setFeature(a3, *a1, 15, a5, __b, a8, *(a1 + 236));
            v60 = v85;
            if ((v15 & 0x80000000) != 0)
            {
              return v15;
            }
          }

          v59 = v86;
        }

        else
        {
          cstdlib_memset(__b, 0, 0x10uLL);
          v58 = v86;
          cstdlib_strcpy(__b, &a2[v86]);
          v15 = posparser_setFeature(a3, *a1, 14, a5, __b, a8, *(a1 + 236));
          if ((v15 & 0x80000000) != 0)
          {
            return v15;
          }

          v59 = v86;
          v60 = v85;
        }

        v45 = utf8_determineUTF8CharLength(a2[v59]) + v58;
        v47 = v60 + 1;
        v46 = v87 - 1;
        v44 = v84;
      }

      while (v47 < v82);
    }

LABEL_102:
    if (posparser_isFeatureRequired(a3, 5, &v90, a8, *(a1 + 236)) != 1 || (a4 && (v63 = a6 + 104 * (a4 - 1), *(v63 + 12) != 1) && !*(v63 + 74) ? (v64 = *a1, v66 = *(a6 + 104 * (a4 - 1) + 56), v65 = *(a1 + 236)) : (v64 = *a1, v65 = *(a1 + 236), v66 = "="), v15 = posparser_setFeature(a3, v64, 5, a5, v66, a8, v65), (v15 & 0x80000000) == 0))
    {
      if (posparser_isFeatureRequired(a3, 6, &v90, a8, *(a1 + 236)) != 1 || (a4 >= 2 && (v67 = a6 + 104 * (a4 - 2), *(v67 + 12) != 1) && !*(v67 + 74) ? (v68 = *a1, v70 = *(a6 + 104 * (a4 - 2) + 56), v69 = *(a1 + 236)) : (v68 = *a1, v69 = *(a1 + 236), v70 = "="), v15 = posparser_setFeature(a3, v68, 6, a5, v70, a8, v69), (v15 & 0x80000000) == 0))
      {
        if (posparser_isFeatureRequired(a3, 7, &v90, a8, *(a1 + 236)) != 1 || (v88 < a7 && (v71 = a6 + 104 * v88, *(v71 + 12) != 1) && !*(v71 + 74) ? (v72 = *a1, v74 = *(a6 + 104 * v88 + 56), v73 = *(a1 + 236)) : (v72 = *a1, v73 = *(a1 + 236), v74 = "="), v15 = posparser_setFeature(a3, v72, 7, a5, v74, a8, v73), (v15 & 0x80000000) == 0))
        {
          if (posparser_isFeatureRequired(a3, 8, &v90, a8, *(a1 + 236)) == 1)
          {
            if (a4 + 2 >= a7 || (v75 = a6 + 104 * (a4 + 2), *(v75 + 12) == 1) || *(v75 + 74))
            {
              v76 = *a1;
              v77 = *(a1 + 236);
              v78 = "=";
            }

            else
            {
              v76 = *a1;
              v78 = *(a6 + 104 * (a4 + 2) + 56);
              v77 = *(a1 + 236);
            }

            return posparser_setFeature(a3, v76, 8, a5, v78, a8, v77);
          }
        }
      }
    }
  }

  return v15;
}

uint64_t posparser_GetPOSAndDiacritics(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, char *a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned __int16 a9, unsigned __int8 a10, _DWORD *a11)
{
  v68[0] = 0;
  v67 = 0;
  v66 = 0;
  __s2 = 0;
  v65 = 0;
  v63 = 0;
  *a11 = 0;
  v16 = a4 + 104 * a6;
  *(v16 + 32) = 0;
  if (a9)
  {
    for (i = 0; i != a9; ++i)
    {
      for (j = *(a8 + 8 * i); ; j = v19 + 1)
      {
        v19 = cstdlib_strchr(j, 32);
        if (!v19)
        {
          break;
        }

        ++*(v16 + 32);
      }
    }

    v20 = 16 * *(v16 + 32);
  }

  else
  {
    v20 = 0;
  }

  v21 = heap_Calloc(*(*a1 + 8), 1, v20);
  *(v16 + 24) = v21;
  if (!v21)
  {
LABEL_59:
    v52 = 2687508490;
    v53 = *a1;
LABEL_60:
    log_OutPublic(*(v53 + 32), "POSPARSER", 68000, 0);
    return v52;
  }

  *(v16 + 32) = 0;
  if (!a9)
  {
    v52 = 0;
LABEL_62:
    heap_Free(*(*a1 + 8), *(v16 + 24));
    *(v16 + 24) = 0;
    goto LABEL_63;
  }

  v56 = a6;
  v22 = 0;
  isReconcilable = 0;
  v23 = 0;
  v55 = a7;
  v57 = v16 + 104 * a7;
  v58 = a8;
  v24 = "POSPARSER";
  do
  {
    v25 = cstdlib_strchr(*(a8 + 8 * v22), a10);
    if (v25)
    {
      *v25 = 0;
    }

    v60 = v22;
    v26 = *(a8 + 8 * v22);
    v27 = cstdlib_strchr(v26, 32);
    if (v26)
    {
      v28 = v27;
      do
      {
        if (v28)
        {
          *v28 = 0;
        }

        if (v23)
        {
          if (*(a1 + 62))
          {
            if (!v66 && (v66 = heap_Calloc(*(*a1 + 8), 1, 1)) == 0 || !__s2 && (__s2 = heap_Calloc(*(*a1 + 8), 1, 1)) == 0)
            {
              v52 = 2687508490;
              log_OutPublic(*(*a1 + 32), "POSPARSER", 68000, 0);
              goto LABEL_63;
            }

            isReconcilable = posparser_ExtractPunctuation(a1, a5, &v66, &v65, &__s2, &v63);
            if ((isReconcilable & 0x80000000) != 0)
            {
              goto LABEL_58;
            }

            v32 = a1;
            v33 = v24;
            v34 = a5;
            v35 = v32;
            v36 = *(*v32 + 8);
            v37 = v65;
            v38 = cstdlib_strlen(v26);
            v39 = heap_Calloc(v36, 1, (v37 + v38 + v63 + 1));
            *(*(v16 + 24) + 16 * *(v16 + 32) + 8) = v39;
            if (!v39)
            {
              v52 = 2687508490;
              v53 = *v35;
              goto LABEL_60;
            }

            if (v66)
            {
              cstdlib_strcpy(v39, v66);
              v39 = *(*(v16 + 24) + 16 * *(v16 + 32) + 8);
            }

            a5 = v34;
            cstdlib_strcat(v39, v26);
            v24 = v33;
            if (__s2)
            {
              cstdlib_strcat(*(*(v16 + 24) + 16 * *(v16 + 32) + 8), __s2);
            }

            a1 = v35;
            log_OutText(*(*v35 + 32), v24, 5, 0, "word=%s FOUND in TAG[%d] POS=%s DIA=%s", a5);
            goto LABEL_44;
          }

          v67 = 0;
          if (a2 != 1)
          {
            goto LABEL_41;
          }

          log_OutText(*(*a1 + 32), v24, 5, 0, "FOUND %s in dict as %s - try reconcile", a5, v26);
          isReconcilable = posparser_isReconcilable(a1, a3, v26, *(v16 + 8), *(v57 + 10), &v67, v68);
          if ((isReconcilable & 0x80000000) != 0)
          {
            goto LABEL_58;
          }

          if (v67)
          {
            if (v67 == 1 && v68[0])
            {
              posparser_PostProcess(a1, v68);
              v40 = *(*a1 + 8);
              v41 = v68[0];
              v42 = cstdlib_strlen(v68[0]);
              v43 = heap_Calloc(v40, 1, (v42 + 1));
              *(*(v16 + 24) + 16 * *(v16 + 32) + 8) = v43;
              if (!v43)
              {
                goto LABEL_59;
              }

              cstdlib_strcpy(v43, v41);
              heap_Free(*(*a1 + 8), v41);
              v68[0] = 0;
              v44 = "word=%s FOUND in TAG[%d] POS=%s DIA=%s(RECONCILED)";
            }

            else
            {
LABEL_41:
              v45 = *(*a1 + 8);
              v46 = cstdlib_strlen(v26);
              v47 = heap_Calloc(v45, 1, (v46 + 1));
              *(*(v16 + 24) + 16 * *(v16 + 32) + 8) = v47;
              if (!v47)
              {
                goto LABEL_59;
              }

              cstdlib_strcpy(v47, v26);
              v44 = "word=%s FOUND in TAG[%d] POS=%s DIA=%s";
            }

            v48 = (*(v16 + 24) + 16 * *(v16 + 32));
            log_OutText(*(*a1 + 32), v24, 5, 0, v44, a5, *(v16 + 32), *v48, v48[1]);
LABEL_44:
            ++*(v16 + 32);
            if (!v28)
            {
              goto LABEL_54;
            }

            goto LABEL_45;
          }

          log_OutText(*(*a1 + 32), v24, 5, 0, "FOUND in %s in dict, but couldnt reconcile with partial diacritics - FAIL ; skip diacritic", v26);
          heap_Free(*(*a1 + 8), *(*(v16 + 24) + 16 * *(v16 + 32)));
          *(*(v16 + 24) + 16 * *(v16 + 32)) = 0;
          if (!v28)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v29 = *(*a1 + 8);
          v30 = cstdlib_strlen(v26);
          v31 = heap_Calloc(v29, 1, (v30 + 1));
          *(*(v16 + 24) + 16 * *(v16 + 32)) = v31;
          if (!v31)
          {
            goto LABEL_59;
          }

          cstdlib_strcpy(v31, v26);
          if (!v28)
          {
LABEL_54:
            ++v23;
            break;
          }
        }

LABEL_45:
        v49 = cstdlib_strchr(v28 + 1, 32);
        if (v23)
        {
          v50 = 0;
        }

        else
        {
          v50 = v28 + 1;
        }

        if (v49)
        {
          v26 = v28 + 1;
        }

        else
        {
          v26 = v50;
        }

        ++v23;
        v28 = v49;
      }

      while (v26);
    }

    v22 = v60 + 1;
    a8 = v58;
  }

  while (v60 + 1 != a9);
  v51 = *(v16 + 32);
  if (!*(v16 + 32))
  {
    v52 = isReconcilable;
    goto LABEL_62;
  }

  *(v16 + 72) = v55 + v56;
  log_OutText(*(*a1 + 32), "POSPARSER", 5, 0, "FOUND WORD %s%d,%d in  POS dict with %d POS tags", a5, v56, v55, v51);
  *a11 = 1;
LABEL_58:
  v52 = isReconcilable;
LABEL_63:
  if (v66)
  {
    heap_Free(*(*a1 + 8), v66);
  }

  if (__s2)
  {
    heap_Free(*(*a1 + 8), __s2);
  }

  return v52;
}

uint64_t posparser_isReconcilable(uint64_t a1, uint64_t a2, char *__s, unsigned int a4, int a5, _DWORD *a6, uint64_t *a7)
{
  LODWORD(v9) = a5;
  v13 = cstdlib_strlen(__s);
  v100 = 3 * v13;
  *a6 = 1;
  v14 = heap_Calloc(*(*a1 + 8), 1, (3 * v13) + 1);
  v101 = v14;
  if (!v14)
  {
    log_OutPublic(*(*a1 + 32), "POSPARSER", 68000, 0);
    return 2687508490;
  }

  v15 = v14;
  cstdlib_strcpy(v14, __s);
  v99 = v13;
  if (a4 >= v9 || !v13)
  {
    goto LABEL_128;
  }

  v16 = 0;
  v17 = 0;
  v18 = a4;
  v9 = v9;
  v19 = "^FNKauioR";
  v95 = a7;
  v96 = v9;
  while (1)
  {
    if (v16 >= v13)
    {
      goto LABEL_21;
    }

    v20 = v101;
    while (1)
    {
      v21 = *(a1 + 120) ? *(a1 + 120) : v19;
      if (!isCharInStr((v20 + v16), v21))
      {
        break;
      }

      v22 = Utf8_LengthInBytes((v20 + v16), 1);
LABEL_17:
      v16 += v22;
      if (v16 >= v13)
      {
        goto LABEL_20;
      }
    }

    v23 = v19;
    v24 = Utf8_LengthInBytes((a2 + v18), 1);
    if (Utf8_LengthInBytes((v20 + v16), 1) == v24 && !cstdlib_strncmp((a2 + v18), (v20 + v16), v24))
    {
      goto LABEL_30;
    }

    if (*(a1 + 152) != 1 || *(a2 + v18) != 65)
    {
      v22 = Utf8_LengthInBytes((v20 + v16), 1);
      v19 = v23;
      if ((v22 & 0xFFFE) != 0)
      {
        goto LABEL_17;
      }

      *a6 = 0;
LABEL_20:
      v9 = v96;
      goto LABEL_21;
    }

    v25 = *(a1 + 208);
    if (v25 <= v17)
    {
LABEL_30:
      v25 = v17;
LABEL_31:
      v9 = v96;
      goto LABEL_32;
    }

    v26 = v17;
    v27 = (*(a1 + 200) + 6 * v17);
    while (1)
    {
      v28 = *v27;
      v27 += 3;
      v29 = v18 == v28;
      if (v18 < v28)
      {
        goto LABEL_87;
      }

      if (v29)
      {
        break;
      }

      ++v26;
      LOWORD(v17) = v17 + 1;
      if (v25 == v26)
      {
        goto LABEL_31;
      }
    }

    v98 = v16;
    v90 = a6;
    if (v25 <= v26)
    {
      v38 = 0;
      v86 = v26;
    }

    else
    {
      v36 = v26;
      v37 = 3 * v17;
      v38 = 0;
      v39 = 2 * v37;
      do
      {
        v40 = *(a1 + 200);
        if (v18 != *(v40 + v39))
        {
          break;
        }

        v38 += cstdlib_strlen((v40 + v39 + 2));
        ++v36;
        v39 += 6;
      }

      while (v36 < *(a1 + 208));
      v86 = v36;
      a6 = v90;
    }

    v92 = v38;
    utf8_GetPreviousValidUtf8Offset(v20 + v16, &v98);
    v48 = v98 >= v16 ? v16 : v98;
    if (v48)
    {
      v49 = 1;
      while (1)
      {
        v50 = *(a1 + 120) ? *(a1 + 120) : v23;
        if (!isCharInStr((v20 + v48), v50))
        {
          break;
        }

        v49 += Utf8_LengthInBytes((v20 + v48), 1);
        v98 = v48;
        utf8_GetPreviousValidUtf8Offset(v20 + v48, &v98);
        if (v98 < v48)
        {
          v48 = v98;
        }

        if (!v48)
        {
          v48 = 0;
          break;
        }
      }

      a6 = v90;
    }

    else
    {
      v48 = 0;
      v49 = 1;
    }

    if (v92 > v49)
    {
      break;
    }

    if (v92 != v49)
    {
LABEL_87:
      v25 = v26;
      goto LABEL_31;
    }

    if (v92)
    {
      v52 = 0;
      do
      {
        if (cstdlib_strlen((*(a1 + 200) + 6 * v52 + 2)))
        {
          v53 = 0;
          v54 = 0;
          do
          {
            *(v20 + v48++) = *(*(a1 + 200) + 6 * v26 + 6 * v52 + v53 + 2);
            v53 = ++v54;
          }

          while (cstdlib_strlen((*(a1 + 200) + 6 * v52 + 2)) > v54);
        }

        ++v52;
      }

      while (v52 != v92);
      a6 = v90;
    }

    v9 = v96;
LABEL_86:
    v25 = v86;
LABEL_32:
    v19 = v23;
    if (*a6 == 1)
    {
      v30 = *(a1 + 208);
      if (v30 > v25)
      {
        v31 = (v18 + 1);
        v32 = *(a1 + 200);
        v17 = v25;
        v33 = (v32 + 6 * v25);
        while (1)
        {
          v34 = *v33;
          v33 += 3;
          v35 = v34 == v31;
          if (v34 > v31)
          {
            goto LABEL_21;
          }

          if (v35)
          {
            break;
          }

          ++v17;
          LOWORD(v25) = v25 + 1;
          if (v30 == v17)
          {
            v17 = *(a1 + 208);
            goto LABEL_21;
          }
        }

        v87 = v25;
        if (*(a1 + 120))
        {
          v41 = *(a1 + 120);
        }

        else
        {
          v41 = v23;
        }

        if (!isCharInStr((v32 + 6 * v17 + 2), v41))
        {
          goto LABEL_21;
        }

        v91 = a6;
        v42 = 0;
        if (*(a1 + 208) <= v17)
        {
          v43 = v17;
        }

        else
        {
          v43 = v17;
          v44 = 6 * v87;
          do
          {
            v45 = *(a1 + 200);
            if (v18 + 1 != *(v45 + v44))
            {
              break;
            }

            v46 = v45 + v44;
            v47 = *(a1 + 120) ? *(a1 + 120) : v23;
            if (!isCharInStr((v46 + 2), v47))
            {
              break;
            }

            v42 += cstdlib_strlen((*(a1 + 200) + v44 + 2));
            ++v43;
            v44 += 6;
          }

          while (v43 < *(a1 + 208));
        }

        v93 = v43;
        v55 = v16 + 1;
        v83 = v99;
        v56 = 0;
        if (v99 > (v16 + 1))
        {
          v57 = (v16 + 1);
          v58 = &v101[v57];
          v59 = v99 - v57;
          do
          {
            if (*(a1 + 120))
            {
              v60 = *(a1 + 120);
            }

            else
            {
              v60 = v23;
            }

            if (!isCharInStr(v58, v60))
            {
              break;
            }

            v56 += Utf8_LengthInBytes(v58++, 1);
            --v59;
          }

          while (v59);
        }

        if (v56 < v42)
        {
          v61 = v17;
          v17 = v93;
          result = posparser_GrowAndInsert(a1, &v101, v42, v56, (v16 + 1), v61, v93, &v99, &v100);
          a6 = v91;
          v9 = v96;
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v16 = v42 + v16 - v56;
          goto LABEL_125;
        }

        a6 = v91;
        v9 = v96;
        if (v56 != v42)
        {
          if (v56 > v42)
          {
            v67 = 0;
            v68 = 0;
            v69 = v56 - v42;
            v84 = v101;
            do
            {
              v70 = v67 + v17;
              if (v70 >= *(a1 + 208))
              {
                break;
              }

              v94 = v68;
              v88 = v67 + v55;
              v71 = *(a1 + 200) + 6 * v70;
              v68 = v67;
              v72 = cstdlib_strlen((v71 + 2));
              if (cstdlib_strncmp((v84 + v88), (v71 + 2), v72))
              {
                a6 = v91;
                v67 = v68;
                LOWORD(v68) = v94;
                break;
              }

              v73 = cstdlib_strlen((*(a1 + 200) + 6 * v70 + 2));
              v68 = v94 + v73;
              v67 = (v94 + v73);
              a6 = v91;
            }

            while (v67 < v69);
            if (v69 != v68)
            {
              v74 = v69 - v68;
              v75 = (v69 - v68);
              v76 = v101;
              v85 = v74;
              cstdlib_memmove(&v101[v67 + v55], &v101[v67 + v55 + v74], v83 - v74);
              if (v75 > v68)
              {
                do
                {
                  v77 = v17 + v68;
                  if (v77 >= *(a1 + 208))
                  {
                    break;
                  }

                  v89 = v68;
                  if (cstdlib_strlen((*(a1 + 200) + 6 * v77 + 2)))
                  {
                    v78 = 0;
                    v79 = 0;
                    do
                    {
                      *(v76 + (v55 + v89) + v79) = *(*(a1 + 200) + 6 * v77 + v78 + 2);
                      v80 = v76;
                      v81 = v79 + 1;
                      v78 = (v79 + 1);
                      v82 = cstdlib_strlen((*(a1 + 200) + 6 * v77 + 2)) > v78;
                      v79 = v81;
                      v76 = v80;
                    }

                    while (v82);
                  }

                  LOWORD(v68) = v89 + 1;
                }

                while ((v89 + 1) < v85);
              }

              v99 = v83 - v85;
              *(v76 + (v83 - v85)) = 0;
              a6 = v91;
            }

            v9 = v96;
          }

          goto LABEL_125;
        }

        if (v93 <= v17)
        {
          v17 = v93;
LABEL_125:
          v19 = v23;
          goto LABEL_21;
        }

        v62 = v101;
        v63 = v17;
        v19 = v23;
        do
        {
          if (*(a1 + 208) < v93)
          {
            break;
          }

          v64 = a6;
          if (cstdlib_strlen((*(a1 + 200) + 6 * v63 + 2)))
          {
            v65 = 0;
            v66 = 0;
            do
            {
              *(v62 + v55++) = *(*(a1 + 200) + 6 * v63 + v65 + 2);
              v65 = ++v66;
            }

            while (cstdlib_strlen((*(a1 + 200) + 6 * v63 + 2)) > v66);
          }

          ++v63;
          a6 = v64;
          v19 = v23;
        }

        while (v63 < v93);
        v17 = v93;
        goto LABEL_20;
      }
    }

    v17 = v25;
LABEL_21:
    if (++v18 < v9)
    {
      ++v16;
      v13 = v99;
      if (v99 > v16)
      {
        continue;
      }
    }

    v15 = v101;
    a7 = v95;
LABEL_128:
    if (!*a6)
    {
      heap_Free(*(*a1 + 8), v15);
      v15 = 0;
    }

    result = 0;
    *a7 = v15;
    return result;
  }

  result = posparser_GrowAndInsert(a1, &v101, v92, v49, v16, v26, v86, &v99, &v100);
  v9 = v96;
  if ((result & 0x80000000) == 0)
  {
    v16 = v92 + v16 - v49;
    goto LABEL_86;
  }

  return result;
}

uint64_t posparser_PostProcess(uint64_t a1, const char **a2)
{
  if (!*(a1 + 168))
  {
    if (LH_stricmp("arx", (a1 + 186)))
    {
      return 0;
    }

    v22 = *a2;
    v23 = cstdlib_strlen(*a2);
    if (!v23)
    {
LABEL_75:
      result = 0;
      *a2 = v22;
      return result;
    }

    v24 = v23;
    v25 = -2;
    v26 = 3;
    v27 = v23;
    while (1)
    {
      v28 = v26 - 2;
      v29 = v24;
      if (v26 - 2 < v24)
      {
        v30 = &v22[v26 - 3];
        v31 = *v30;
        if (v31 > 0x68)
        {
          if (v31 == 111)
          {
            if (v22[v26 - 2] == 111)
            {
              goto LABEL_43;
            }
          }

          else if (v31 == 105 && v22[v26 - 2] == 105)
          {
LABEL_43:
            v32 = &v22[v26 - 2];
            goto LABEL_44;
          }
        }

        else if (v31 == 94)
        {
          if (v22[v26 - 2] == 94)
          {
            goto LABEL_43;
          }
        }

        else if (v31 == 97 && v22[v26 - 2] == 97)
        {
          goto LABEL_43;
        }
      }

      if (v26 != v29 || (v33 = &v22[v26], v30 = &v22[v26 - 3], *v30 != 70) || (v34 = *(v33 - 2), v32 = (v33 - 2), v34 != 65) || v22[v26 - 1] != 70)
      {
        if (v28 < v29)
        {
          v35 = &v22[v26];
          if (v22[v26 - 3] == 73)
          {
            v37 = *(v35 - 2);
            v36 = v35 - 2;
            if (v37 == 97)
            {
              if (v26 - 1 < v29 && v22[v26 - 1] == 112)
              {
                goto LABEL_74;
              }

              cstdlib_memmove(&v22[v26 - 3], v36, v25 + v29 + 1);
              v22[v26 - 3] = 73;
              goto LABEL_58;
            }
          }
        }

        if (v26 - 1 >= v29)
        {
          goto LABEL_74;
        }

        v30 = &v22[v26 - 3];
        v38 = *v30;
        if (v38 == 82)
        {
          if (v22[v26 - 2] != 82 || v22[v26 - 1] != 82)
          {
            goto LABEL_74;
          }

          cstdlib_memmove(v30, &v22[v26 - 1], v25 + v29);
          v27 -= 2;
          goto LABEL_59;
        }

        if (v38 != 97)
        {
          goto LABEL_74;
        }

        v32 = &v22[v26 - 2];
        v39 = *v32;
        if (v39 == 65)
        {
          v40 = v22[v26 - 1];
          if (v40 == 97)
          {
            *v32 = 66;
            goto LABEL_74;
          }

          if (v40 != 70)
          {
            goto LABEL_74;
          }
        }

        else if (v39 != 97 || v22[v26 - 1] != 73)
        {
          goto LABEL_74;
        }
      }

LABEL_44:
      cstdlib_memmove(v30, v32, v25 + v29 + 1);
LABEL_58:
      --v27;
LABEL_59:
      v22[v27] = 0;
LABEL_74:
      v24 = v27;
      ++v26;
      --v25;
      if (v28 >= v27)
      {
        goto LABEL_75;
      }
    }
  }

  v4 = *a2;
  v5 = cstdlib_strlen(*a2);
  if (!v5)
  {
LABEL_29:
    result = 0;
    *a2 = v4;
    return result;
  }

  v6 = 0;
  v41 = v5 + 1;
  v7 = v5;
  while (!*(a1 + 168))
  {
LABEL_28:
    if (++v6 >= v7)
    {
      goto LABEL_29;
    }
  }

  v8 = 0;
  v9 = 24;
  while (1)
  {
    v10 = *(a1 + 160) + v9;
    v11 = *(v10 - 8);
    if (v11 + v6 > v7 || cstdlib_strncmp(&v4[v6], *(v10 - 16), v11))
    {
      goto LABEL_8;
    }

    v12 = *(a1 + 160);
    v13 = *(v12 + v9 - 24);
    if (v13 != 1)
    {
      break;
    }

    if (*(v12 + v9 - 8) + v6 == v7)
    {
      goto LABEL_19;
    }

LABEL_8:
    ++v8;
    v9 += 56;
    if (v8 >= *(a1 + 168))
    {
      goto LABEL_28;
    }
  }

  if (v13 != 2)
  {
    if (!v13)
    {
      goto LABEL_19;
    }

    goto LABEL_8;
  }

  v14 = *(v12 + v9 - 8) + v6;
  if (v14 > v7)
  {
    goto LABEL_8;
  }

  v15 = *(v12 + v9 + 24);
  if (v14 + v15 > v7 || !cstdlib_strncmp(&v4[v14], *(v12 + v9 + 16), v15))
  {
    goto LABEL_8;
  }

  v12 = *(a1 + 160);
LABEL_19:
  v16 = *(v12 + v9 - 8);
  v17 = *(v12 + v9 + 8);
  if (v16 >= v17)
  {
LABEL_22:
    v19 = v16 - v17;
    if (v16 >= v17)
    {
      if (v16 > v17)
      {
        cstdlib_memmove(&v4[v6], &v4[v6 + v19], v7 - (v6 + v19));
        cstdlib_memcpy(&v4[v6], *(*(a1 + 160) + v9), *(*(a1 + 160) + v9 + 8));
        v7 -= v19;
      }

      else
      {
        cstdlib_memcpy(&v4[v6], *(v12 + v9), v17);
      }
    }

    else
    {
      v20 = v17 - v16;
      cstdlib_memmove(&v4[v6 + (v17 - v16)], &v4[v6], v7 - v6);
      cstdlib_memcpy(&v4[v6], *(*(a1 + 160) + v9), *(*(a1 + 160) + v9 + 8));
      v7 += v20;
      v6 += *(*(a1 + 160) + v9 + 8);
    }

    v4[v7] = 0;
    goto LABEL_28;
  }

  v18 = heap_Realloc(*(*a1 + 8), v4, v41 - v16 + v17);
  if (v18)
  {
    v4 = v18;
    v12 = *(a1 + 160);
    LODWORD(v16) = *(v12 + v9 - 8);
    LODWORD(v17) = *(v12 + v9 + 8);
    goto LABEL_22;
  }

  log_OutPublic(*(*a1 + 32), "POSPARSER", 68000, 0);
  return 2687508490;
}