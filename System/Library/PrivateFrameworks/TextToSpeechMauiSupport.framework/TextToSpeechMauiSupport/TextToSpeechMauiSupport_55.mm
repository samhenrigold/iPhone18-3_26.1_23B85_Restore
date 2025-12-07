uint64_t CB_char(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 328);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = "";
  }

  else
  {
    v7 = ssftstring_CStr(*(*(a1 + 320) + 8 * v6));
  }

  v8 = &cbTable;
  v9 = 5;
  while (cstdlib_strcmp(v7, v8))
  {
    v8 += 56;
    if (!--v9)
    {
      goto LABEL_11;
    }
  }

  v10 = *(v8 + 5);
  if (!v10)
  {
LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  v11 = v10(a1, a2, a3);
  if ((v11 & 0x80000000) == 0)
  {
    setError(a1, v11);
  }

LABEL_12:

  return setError(a1, v11);
}

void *DeiniState(uint64_t a1)
{
  if (*(a1 + 320))
  {
    for (i = 0; i != 32; i += 8)
    {
      ssftstring_ObjClose(*(*(a1 + 320) + i));
    }

    heap_Free(*(*(a1 + 424) + 8), *(a1 + 320));
  }

  ssftstring_ObjClose(*(a1 + 344));
  ssftstring_ObjClose(*(a1 + 352));
  ssftstring_ObjClose(*(a1 + 360));
  ssftstring_ObjClose(*(a1 + 368));
  ssftstring_ObjClose(*(a1 + 376));
  ssftstring_ObjClose(*(a1 + 384));

  return cstdlib_memset(a1, 0, 0x1C0uLL);
}

void *intpts_FreeContent(void *result)
{
  v1 = result;
  v2 = *(*result + 8);
  v3 = result[2];
  if (v3)
  {
    result = heap_Free(*(*result + 8), v3);
    v1[2] = 0;
  }

  v4 = v1[1];
  if (v4)
  {
    result = heap_Free(v2, v4);
    v1[1] = 0;
  }

  v5 = v1[3];
  if (v5)
  {
    result = heap_Free(v2, v5);
    v1[3] = 0;
  }

  v6 = v1[6];
  if (v6)
  {
    if (v1[4])
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = v1[6];
        if (v9)
        {
          v10 = v9 + v7;
          v11 = *(v9 + v7 + 16);
          if (v11)
          {
            heap_Free(v2, v11);
            *(v10 + 16) = 0;
          }

          v12 = *(v10 + 32);
          if (v12)
          {
            heap_Free(v2, v12);
            *(v10 + 32) = 0;
          }

          v13 = v9 + v7;
          v14 = *(v13 + 40);
          if (v14)
          {
            heap_Free(v2, v14);
            *(v13 + 40) = 0;
          }
        }

        ++v8;
        v7 += 48;
      }

      while (v8 < v1[4]);
      v6 = v1[6];
    }

    result = heap_Free(v2, v6);
    v1[6] = 0;
  }

  return result;
}

uint64_t compare_4(uint64_t a1, uint64_t a2)
{
  result = cstdlib_strcmp(*(a1 + 16), *(a2 + 16));
  if (!result)
  {
    if (*a1 >= *a2)
    {
      return *a1 > *a2;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t setError(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    if ((*(result + 440) & 0x80000000) == 0)
    {
      *(result + 440) = a2;
    }

    if (a2 < 0)
    {
      crnc3rdprtyrnm_XML_SetElementHandler(*(result + 432), 0, 0);
      v3 = *(v2 + 432);

      return crnc3rdprtyrnm_XML_SetCharacterDataHandler(v3, 0);
    }
  }

  return result;
}

uint64_t domain_mngr_utils_AlignOffset(uint64_t result, unsigned int a2)
{
  if (a2 <= 1)
  {
    return result;
  }

  else
  {
    return (result + a2 - 1) & -a2;
  }
}

uint64_t domain_mngr_utils_GetU16(uint64_t a1, unsigned int a2, _DWORD *a3, void *__dst)
{
  v4 = (*a3 + 1) & 0xFFFFFFFE;
  *a3 = v4;
  if (v4 + 2 > a2)
  {
    return 2296389641;
  }

  if (__dst)
  {
    cstdlib_memcpy(__dst, (a1 + v4), 2uLL);
    LODWORD(v4) = *a3;
  }

  result = 0;
  *a3 = v4 + 2;
  return result;
}

uint64_t domain_mngr_utils_GetU32(uint64_t a1, unsigned int a2, _DWORD *a3, void *__dst)
{
  v4 = (*a3 + 3) & 0xFFFFFFFC;
  *a3 = v4;
  if (v4 + 4 > a2)
  {
    return 2296389641;
  }

  if (__dst)
  {
    cstdlib_memcpy(__dst, (a1 + v4), 4uLL);
    LODWORD(v4) = *a3;
  }

  result = 0;
  *a3 = v4 + 4;
  return result;
}

uint64_t domain_mngr_utils_CopyString(char *a1, char *__s, unsigned int a3)
{
  result = 2296389639;
  if (a1 && __s)
  {
    v7 = cstdlib_strlen(__s);
    if (v7 >= a3)
    {
      v8 = a3 - 1;
    }

    else
    {
      v8 = v7;
    }

    if (v8)
    {
      cstdlib_strncpy(a1, __s, v8);
    }

    else
    {
      v8 = 0;
    }

    result = 0;
    a1[v8] = 0;
  }

  return result;
}

uint64_t domain_mngr_utils_DuplicateString(uint64_t a1, char *__s, char **a3)
{
  v6 = cstdlib_strlen(__s);
  v7 = heap_Alloc(a1, (v6 + 1));
  *a3 = v7;
  if (!v7)
  {
    return 2296389642;
  }

  cstdlib_strcpy(v7, __s);
  return 0;
}

uint64_t domain_mngr_utils_ListContainsString(char *a1, char *__s)
{
  if (!a1)
  {
    return 0;
  }

  v3 = 0;
  if (__s)
  {
    if (*a1)
    {
      v3 = *__s;
      if (*__s)
      {
        v5 = cstdlib_strlen(__s);
        v6 = cstdlib_strstr(a1, __s);
        if (v6)
        {
          while (1)
          {
            if (v6 == a1 || *(v6 - 1) == 124)
            {
              v3 = 1;
              if (!v6[v5] || v6[v5] == 124)
              {
                break;
              }
            }

            v6 = cstdlib_strstr(&v6[v5], __s);
            if (!v6)
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
    }
  }

  return v3;
}

uint64_t domain_mngr_utils_IsActiveVoiceAddon(void *a1, char *a2, char *a3, char *a4, char *a5, int *a6)
{
  v48 = 0;
  v49 = 0;
  v7 = 2296389642;
  __s1 = 0;
  __s = 0;
  result = 2296389639;
  if (a1)
  {
    if (a2)
    {
      if (a6)
      {
        *a6 = 0;
        result = paramc_ParamGetStr(a1[5], "voice", &v49);
        if ((result & 0x80000000) == 0)
        {
          if ((paramc_ParamGetStr(a1[5], "voiceoperatingpoint", &__s) & 0x80000000) != 0)
          {
            v14 = 0;
          }

          else
          {
            v14 = cstdlib_strlen(__s) + 1;
          }

          if ((paramc_ParamGetStr(a1[5], "vopversion", &__s1) & 0x80000000) != 0 || !cstdlib_strcmp(__s1, "0.0.0"))
          {
            v15 = 0;
          }

          else
          {
            v15 = cstdlib_strlen(__s1) + 1;
          }

          v16 = a1[1];
          v17 = cstdlib_strlen(v49);
          v18 = heap_Calloc(v16, 1, (v14 + v15 + v17 + 14));
          if (!v18)
          {
            log_OutPublic(a1[4], "DOMAIN_MNGR", 47000, 0);
            return 2296389642;
          }

          v19 = v18;
          cstdlib_strcpy(v18, "voiceaddons.");
          v20 = cstdlib_strlen(v19);
          domain_mngr_utils_StrToLower(&v19[v20], v49);
          if (v14)
          {
            cstdlib_strcat(v19, ".");
            cstdlib_strcat(v19, __s);
          }

          if (v15)
          {
            cstdlib_strcat(v19, ".");
            cstdlib_strcat(v19, __s1);
          }

          Str = paramc_ParamGetStr(a1[5], v19, &v48);
          if ((Str & 0x80000000) != 0)
          {
            v7 = Str;
          }

          else
          {
            v22 = v48;
            *a6 = 0;
            v23 = cstdlib_strchr(v22, 59);
            v24 = *a6;
            if (!*a6)
            {
              v25 = v23;
              if (v23)
              {
                do
                {
                  v26 = cstdlib_strlen(a2);
                  if (v26 == v25 - v22 && !LH_strnicmp(v22, a2, v26))
                  {
                    *a6 = 1;
                  }

                  v22 = v25 + 1;
                  v27 = cstdlib_strchr(v25 + 1, 59);
                  v25 = v27;
                  v24 = *a6;
                  if (*a6)
                  {
                    v28 = 1;
                  }

                  else
                  {
                    v28 = v27 == 0;
                  }
                }

                while (!v28);
              }
            }

            if (v24)
            {
              v29 = a1[1];
              v30 = cstdlib_strlen(a2);
              v31 = heap_Calloc(v29, 1, (v30 + 26));
              if (v31)
              {
                v32 = v31;
                cstdlib_strcpy(v31, "voiceaddonrawdataversion.");
                v33 = cstdlib_strlen(v32);
                domain_mngr_utils_StrToLower(&v32[v33], a2);
                v50 = 0;
                if (a3 && *a3 && (paramc_ParamGetStr(a1[5], v32, &v50) & 0x80000000) == 0 && LH_stricmp(v50, a3))
                {
                  v34 = 0;
                }

                else
                {
                  v35 = a1[1];
                  v36 = cstdlib_strlen(a2);
                  v37 = heap_Calloc(v35, 1, (v36 + 28));
                  v34 = v37;
                  if (!v37)
                  {
                    log_OutPublic(a1[4], "DOMAIN_MNGR", 47000, 0);
                    v39 = 0;
                    goto LABEL_54;
                  }

                  cstdlib_strcpy(v37, "voiceaddonreductionversion.");
                  v38 = cstdlib_strlen(v34);
                  domain_mngr_utils_StrToLower(&v34[v38], a2);
                  if (!domain_mngr_utils_ReductionVersionCondition(a1, a5, v34))
                  {
                    v42 = a1[1];
                    v43 = cstdlib_strlen(a2);
                    v44 = heap_Calloc(v42, 1, (v43 + 21));
                    v39 = v44;
                    if (!v44)
                    {
                      log_OutPublic(a1[4], "DOMAIN_MNGR", 47000, 0);
                      goto LABEL_54;
                    }

                    cstdlib_strcpy(v44, "voiceaddonreduction.");
                    v45 = cstdlib_strlen(v39);
                    domain_mngr_utils_StrToLower(&v39[v45], a2);
                    if (!a4 || !*a4 || !domain_mngr_utils_ReductionTypeVersionCondition(a1, a5, a4, v39))
                    {
                      v7 = 0;
                      goto LABEL_54;
                    }

                    goto LABEL_41;
                  }
                }

                v39 = 0;
LABEL_41:
                v7 = 0;
                *a6 = 0;
LABEL_54:
                heap_Free(a1[1], v19);
                heap_Free(a1[1], v32);
                if (v39)
                {
                  heap_Free(a1[1], v39);
                }

                if (!v34)
                {
                  return v7;
                }

                v40 = a1[1];
                v41 = v34;
LABEL_44:
                heap_Free(v40, v41);
                return v7;
              }

              log_OutPublic(a1[4], "DOMAIN_MNGR", 47000, 0);
            }

            else
            {
              v7 = 0;
            }
          }

          v40 = a1[1];
          v41 = v19;
          goto LABEL_44;
        }
      }
    }
  }

  return result;
}

uint64_t domain_mngr_utils_StrToLower(_BYTE *a1, char *__s)
{
  v2 = __s;
  result = cstdlib_strlen(__s);
  v5 = result;
  if (result)
  {
    v6 = a1;
    v7 = result;
    do
    {
      v8 = *v2++;
      result = cstdlib_tolower(v8);
      *v6++ = result;
      --v7;
    }

    while (v7);
  }

  a1[v5] = 0;
  return result;
}

uint64_t activeprompt_db_UnloadData(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return objc_ReleaseObject(*(*(a1 + 40) + 48), a2 + 296);
  }

  else
  {
    return 0;
  }
}

uint64_t activeprompt_db_ObjClose(uint64_t a1, int a2)
{
  v22 = 0;
  if (!a1)
  {
    return 2296389639;
  }

  inited = InitRsrcFunction(**a1, *(*a1 + 8), &v22);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  if (!a2)
  {
    v5 = *(*a1 + 16);
    __s = 0;
    v24 = 0;
    v6 = *(a1 + 64);
    if (!v6)
    {
      goto LABEL_18;
    }

    if ((paramc_ParamGetStr(v5[5], v6, &v24) & 0x80000000) != 0)
    {
LABEL_17:
      heap_Free(v5[1], *(a1 + 64));
      *(a1 + 64) = 0;
LABEL_18:
      v13 = *(a1 + 72);
      if (v13)
      {
        heap_Free(v5[1], v13);
        *(a1 + 72) = 0;
      }

LABEL_20:
      if (__s)
      {
        heap_Free(v5[1], __s);
      }

      goto LABEL_22;
    }

    if ((domain_mngr_utils_DuplicateString(v5[1], v24, &__s) & 0x80000000) == 0)
    {
      paramc_ParamRelease(v5[5]);
      v7 = __s;
      v8 = cstdlib_strchr(__s, 59);
      if (v8)
      {
        v9 = v8;
        while (1)
        {
          *v9 = 0;
          v10 = *(*(a1 + 8) + 72);
          if (v10)
          {
            if (!cstdlib_strcmp(v7, v10))
            {
              break;
            }
          }

          *v9 = 59;
          v7 = v9 + 1;
          v9 = cstdlib_strchr(v9 + 1, 59);
          if (!v9)
          {
            goto LABEL_17;
          }
        }

        v12 = cstdlib_strlen(v9 + 1);
        cstdlib_memmove(v7, v9 + 1, v12 + 1);
        if ((paramc_ParamSetStr(v5[5], *(a1 + 64), __s) & 0x80000000) != 0)
        {
          goto LABEL_20;
        }
      }

      goto LABEL_17;
    }

    log_OutPublic(v5[4], "DOMAIN_MNGR", 47000, 0);
  }

LABEL_22:
  v14 = *(a1 + 8);
  if (v14)
  {
    v11 = objc_ReleaseObject(*(*(*a1 + 40) + 48), v14 + 296);
    if ((v11 & 0x80000000) != 0)
    {
      return v11;
    }
  }

  else
  {
    v11 = 0;
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    heap_Free(*(v22 + 8), v15);
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    heap_Free(*(v22 + 8), v16);
  }

  v17 = *(a1 + 80);
  if (v17)
  {
    heap_Free(*(v22 + 8), v17);
  }

  v18 = *(a1 + 40);
  if (v18)
  {
    heap_Free(*(v22 + 8), v18);
  }

  v19 = *(a1 + 64);
  if (v19)
  {
    heap_Free(*(v22 + 8), v19);
    *(a1 + 64) = 0;
  }

  v20 = *(a1 + 72);
  if (v20)
  {
    heap_Free(*(v22 + 8), v20);
    *(a1 + 72) = 0;
  }

  heap_Free(*(v22 + 8), a1);
  return v11;
}

uint64_t activeprompt_db_LoadData(__int128 *a1, const char *a2, uint64_t a3, int a4, void *a5)
{
  v31 = *MEMORY[0x277D85DE8];
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
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *__dst = 0u;
  v14 = 0u;
  v12 = 0;
  cstdlib_strcpy(__dst, a2);
  *&v29 = a3;
  DWORD2(v29) = a4;
  v30 = *a1;
  result = objc_GetAddRefCountedObject(*(*(a1 + 5) + 48), a2, apdb_loc_ObjcLoadData, apdb_loc_ObjcUnloadData, __dst, &v12);
  if ((result & 0x80000000) != 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v12 + 32);
  }

  *a5 = v11;
  return result;
}

uint64_t apdb_loc_ObjcLoadData(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v73 = *MEMORY[0x277D85DE8];
  v57 = 0;
  v58 = 0;
  v56 = 0;
  NullHandle = safeh_GetNullHandle();
  v11 = v10;
  inited = InitRsrcFunction(a1, a2, &v58);
  if ((inited & 0x80000000) != 0)
  {
    v13 = inited;
    goto LABEL_154;
  }

  v13 = 2296389642;
  v14 = heap_Calloc(*(v58 + 8), 1, 560);
  if (v14)
  {
    if (UriGetUrlPrefixLength(a5, 0))
    {
      v15 = InitRsrcFunction(*(a5 + 272), *(a5 + 280), &v57);
      if ((v15 & 0x80000000) != 0)
      {
        v13 = v15;
        goto LABEL_151;
      }

      if ((objc_GetObject(*(v57 + 48), "URIFETCHER", &v56) & 0x80000000) != 0)
      {
        v16 = 0;
      }

      else
      {
        v16 = v56[1];
        NullHandle = v56[2];
        v11 = v56[3];
      }

      v55 = v16;
      v17 = osspi_DataOpenEx(*(v58 + 64), *(v58 + 8), v16, NullHandle, v11, a5, (v14 + 552));
      if ((v17 & 0x80000000) != 0)
      {
        goto LABEL_145;
      }

      v17 = osspi_DataMap(*(v14 + 552), 0, (a5 + 264), (a5 + 256));
      if ((v17 & 0x80000000) != 0)
      {
        goto LABEL_145;
      }
    }

    else
    {
      v55 = 0;
    }

    v17 = ssftriff_reader_ObjOpenEx(a1, a2, 4 * (*(a5 + 256) != 0), a5, *(a5 + 256), *(a5 + 264), "APDB", 775, v14);
    if ((v17 & 0x80000000) == 0)
    {
      v17 = ssftriff_reader_DetachChunkData(*v14, (v14 + 16), (v14 + 8));
      if ((v17 & 0x80000000) == 0)
      {
        cstdlib_strcpy((v14 + 296), a5);
        v67 = 0;
        v65 = 0;
        *__s1 = 0;
        v63 = 0;
        *v64 = 0;
        v17 = InitRsrcFunction(a1, a2, &v63);
        if ((v17 & 0x80000000) == 0)
        {
          v18 = *(v63 + 8);
          *__src = xmmword_287EEFD80;
          v69 = off_287EEFD90;
          if (!vector_ObjOpen(v18, __src, 1, (v14 + 264)))
          {
            log_OutPublic(*(v63 + 32), "DOMAIN_MNGR", 47000, 0);
            goto LABEL_146;
          }

          while (1)
          {
            StringZ = ssftriff_reader_OpenChunk(*v14, __s1, &v65, v64);
            if ((StringZ & 0x80000000) != 0)
            {
              goto LABEL_157;
            }

            if (!cstdlib_strcmp(__s1, "ATTR"))
            {
              break;
            }

            if (!cstdlib_strcmp(__s1, "PHGP"))
            {
              LODWORD(v61) = 0;
              *(v14 + 224) = 1;
              *(v14 + 232) = heap_Calloc(*(v63 + 8), 100, 8);
              v28 = v65;
              if (v65)
              {
                v29 = 0;
                do
                {
                  __s[0] = 0;
                  __src[0] = 0;
                  LODWORD(v61) = 64;
                  StringZ = ssftriff_reader_ReadStringZ(*v14, *v64, v28, v29, __s, &v61);
                  if ((StringZ & 0x80000000) == 0 && v29 < v65)
                  {
                    v29 += v61;
                    LODWORD(v61) = 256;
                    StringZ = ssftriff_reader_ReadStringZ(*v14, *v64, v65, v29, __src, &v61);
                  }

                  if ((StringZ & 0x80000000) != 0)
                  {
                    break;
                  }

                  v30 = v61;
                  if (cstdlib_strlen(__s) == 4 && __s[0] == 80 && __s[1] == 71 && v71 - 48 <= 9 && v72 - 48 <= 9)
                  {
                    v31 = v72 + 10 * v71 - 528;
                    v32 = *(*(v14 + 232) + 8 * v31);
                    if (!v32)
                    {
                      v33 = *(v63 + 8);
                      v34 = cstdlib_strlen(__src);
                      *(*(v14 + 232) + 8 * v31) = heap_Calloc(v33, (v34 + 1), 1);
                      v32 = *(*(v14 + 232) + 8 * v31);
                    }

                    cstdlib_strcpy(v32, __src);
                  }

                  v29 += v30;
                  v28 = v65;
                }

                while (v29 < v65);
              }

              goto LABEL_109;
            }

            if (cstdlib_strcmp(__s1, "STRP"))
            {
              if (cstdlib_strcmp(__s1, "UIDP"))
              {
                if (cstdlib_strcmp(__s1, "WRDP"))
                {
                  if (!cstdlib_strcmp(__s1, "APPR") || !cstdlib_strcmp(__s1, "RECP"))
                  {
                    v61 = xmmword_279DB6520;
                    v62 = *algn_279DB6530;
                    __dst = 0;
                    if (cstdlib_strcmp(__s1, "RECP"))
                    {
                      if (v61 == 1)
                      {
                        v59 = 0;
                        if (vector_GetElemAt(*(v14 + 264), 0, &v59))
                        {
                          v36 = 1;
                          do
                          {
                            if (*v59 == 1)
                            {
                              log_OutPublic(*(v63 + 32), "DOMAIN_MNGR", 47020, "%s%s", "chunk", __s1);
                            }
                          }

                          while (vector_GetElemAt(*(v14 + 264), v36++, &v59));
                        }
                      }
                    }

                    else
                    {
                      *(v14 + 24) = 1;
                      LODWORD(v61) = 2;
                    }

                    v38 = *(v14 + 200);
                    if (v38 && *v38)
                    {
                      *(&v61 + 1) = *(v14 + 200);
                    }

                    StringZ = domain_mngr_utils_GetU32(*v64, v65, &__dst, &v62);
                    if ((StringZ & 0x80000000) == 0)
                    {
                      *(&v62 + 1) = *v64 + __dst;
                      if (!vector_Add(*(v14 + 264), &v61))
                      {
                        v39 = *(v63 + 32);
                        goto LABEL_130;
                      }
                    }

LABEL_109:
                    if ((StringZ & 0x80000000) != 0)
                    {
                      goto LABEL_157;
                    }

                    goto LABEL_110;
                  }

                  if (!cstdlib_strcmp(__s1, "TNAL"))
                  {
                    LODWORD(v59) = 0;
                    __dst = 0;
                    *&v61 = 0;
                    U32 = domain_mngr_utils_GetU32(*v64, v65, &v59, &__dst);
                    if ((U32 & 0x80000000) != 0)
                    {
                      StringZ = U32;
                    }

                    else
                    {
                      v41 = *(v14 + 240);
                      v42 = __dst;
                      StringZ = domain_mngr_utils_GetU32(*v64, v65, &v59, &__dst);
                      if ((StringZ & 0x80000000) == 0)
                      {
                        v54 = (v41 + v42);
                        v43 = *(v14 + 240);
                        v44 = __dst;
                        if (vector_GetElemAt(*(v14 + 264), 0, &v61))
                        {
                          v45 = 1;
                          while (domain_mngr_utils_ListContainsString(*(v61 + 8), (v43 + v44)) != 1)
                          {
                            if (!vector_GetElemAt(*(v14 + 264), v45++, &v61))
                            {
                              goto LABEL_137;
                            }
                          }

                          v53 = *(v63 + 8);
                          v47 = *(v61 + 8);
                          v48 = cstdlib_strlen(v47);
                          v49 = cstdlib_strlen(v54);
                          v50 = heap_Realloc(v53, v47, (v48 + v49 + 2));
                          if (v50)
                          {
                            *(v61 + 8) = v50;
                            cstdlib_strcat(v50, "|");
                            cstdlib_strcat(*(v61 + 8), v54);
                          }

                          else
                          {
                            v39 = *(v63 + 32);
LABEL_130:
                            log_OutPublic(v39, "DOMAIN_MNGR", 47000, 0);
                            StringZ = -1998577654;
                          }
                        }

                        else
                        {
LABEL_137:
                          log_OutPublic(*(v63 + 32), "DOMAIN_MNGR", 47017, "%s%s%s%s", "chunk", "TNAL", "alias", v54);
                          StringZ = -1998577660;
                        }
                      }
                    }

                    goto LABEL_109;
                  }

                  if (cstdlib_strcmp(__s1, "U8VP"))
                  {
                    if (cstdlib_strcmp(__s1, "ALV1"))
                    {
                      if (cstdlib_strcmp(__s1, "ALV2"))
                      {
                        log_OutText(*(v63 + 32), "DOMAIN_MNGR", 3, 0, "Unknown data: %s for %s", __s1, (v14 + 296));
                      }

                      else
                      {
                        *(v14 + 288) = *v64;
                      }
                    }

                    else
                    {
                      *(v14 + 280) = *v64;
                    }
                  }

                  else
                  {
                    *(v14 + 272) = *v64;
                  }
                }

                else
                {
                  *(v14 + 256) = *v64;
                }
              }

              else
              {
                *(v14 + 248) = *v64;
              }
            }

            else
            {
              *(v14 + 240) = *v64;
            }

LABEL_110:
            v35 = ssftriff_reader_CloseChunk(*v14);
            if ((v35 & 0x80000000) != 0)
            {
              StringZ = v35;
LABEL_157:
              if ((StringZ & 0x1FFF) == 0x14)
              {
                v13 = 0;
              }

              else
              {
                v13 = StringZ;
              }

LABEL_146:
              if (v55 && NullHandle)
              {
                objc_ReleaseObject(*(v57 + 48), "URIFETCHER");
              }

              if ((v13 & 0x80000000) == 0)
              {
                v13 = 0;
                goto LABEL_155;
              }

LABEL_151:
              v51 = *(v14 + 552);
              if (v51)
              {
                osspi_DataClose(v51);
              }

              heap_Free(*(v58 + 8), v14);
LABEL_154:
              v14 = 0;
              goto LABEL_155;
            }
          }

          v20 = v65;
          if (!v65)
          {
            goto LABEL_109;
          }

          v21 = 0;
          while (1)
          {
            __s[0] = 0;
            __src[0] = 0;
            LODWORD(v61) = 64;
            StringZ = ssftriff_reader_ReadStringZ(*v14, *v64, v20, v21, __s, &v61);
            if ((StringZ & 0x80000000) == 0 && v21 < v65)
            {
              v21 += v61;
              LODWORD(v61) = 256;
              StringZ = ssftriff_reader_ReadStringZ(*v14, *v64, v65, v21, __src, &v61);
            }

            if ((StringZ & 0x80000000) != 0)
            {
              goto LABEL_109;
            }

            v22 = v61;
            if (!cstdlib_strcmp(__s, "Format"))
            {
              domain_mngr_utils_CopyString((v14 + 32), __src, 0xCu);
              v23 = 0;
              while (cstdlib_strcmp((v14 + 32), off_279DB6508[v23]))
              {
                if (++v23 == 2)
                {
                  log_OutText(*(v63 + 32), "DOMAIN_MNGR", 3, 0, "APDB Format: %s not implemented", (v14 + 32));
                  StringZ = -1998577663;
                  goto LABEL_109;
                }
              }

              goto LABEL_72;
            }

            if (*(v14 + 32))
            {
              if (!cstdlib_strcmp(__s, "Lng"))
              {
                v24 = (v14 + 44);
                goto LABEL_66;
              }

              if (!cstdlib_strcmp(__s, "VaoName"))
              {
                v26 = *(v63 + 8);
                v27 = (v14 + 72);
LABEL_70:
                StringZ = domain_mngr_utils_DuplicateString(v26, __src, v27);
                goto LABEL_71;
              }

              if (!cstdlib_strcmp(__s, "Voice"))
              {
                v26 = *(v63 + 8);
                v27 = (v14 + 64);
                goto LABEL_70;
              }

              if (!cstdlib_strcmp(__s, "RawDataVersion"))
              {
                v24 = (v14 + 80);
                goto LABEL_66;
              }

              if (!cstdlib_strcmp(__s, "Reduction"))
              {
                v24 = (v14 + 88);
                goto LABEL_79;
              }

              if (!cstdlib_strcmp(__s, "ReductionVersion"))
              {
                v24 = (v14 + 100);
LABEL_66:
                v25 = 8;
LABEL_67:
                domain_mngr_utils_CopyString(v24, __src, v25);
                goto LABEL_71;
              }

              if (!cstdlib_strcmp(__s, "UnitIDType"))
              {
                v24 = (v14 + 108);
LABEL_79:
                v25 = 12;
                goto LABEL_67;
              }

              if (!cstdlib_strcmp(__s, "VoiceComponentID"))
              {
                domain_mngr_utils_CopyString((v14 + 120), __src, 0x28u);
                *(v14 + 160) = 1;
                goto LABEL_71;
              }

              if (!cstdlib_strcmp(__s, "Domain"))
              {
                v26 = *(v63 + 8);
                v27 = (v14 + 168);
                goto LABEL_70;
              }

              if (!cstdlib_strcmp(__s, "TNType"))
              {
                v26 = *(v63 + 8);
                v27 = (v14 + 200);
                goto LABEL_70;
              }

              if (!cstdlib_strcmp(__s, "PhrasePunctuation"))
              {
                v26 = *(v63 + 8);
                v27 = (v14 + 184);
                goto LABEL_70;
              }

              if (!cstdlib_strcmp(__s, "AllPunctuation"))
              {
                v26 = *(v63 + 8);
                v27 = (v14 + 192);
                goto LABEL_70;
              }

              if (cstdlib_strcmp(__s, "UnitIDSize"))
              {
                if (cstdlib_strcmp(__s, "Mode"))
                {
                  if (cstdlib_strcmp(__s, "URISuffix"))
                  {
                    if (cstdlib_strcmp(__s, "OriOrth"))
                    {
                      if (cstdlib_strcmp(__s, "IdxU8V:WordPrm"))
                      {
                        if (cstdlib_strcmp(__s, "IdxU8V:PhrsBnd"))
                        {
                          if (!cstdlib_strcmp(__s, "SupportBackendPredictedSilenceDuration"))
                          {
                            if (cstdlib_atoi(__src))
                            {
                              *(v14 + 228) = 1;
                            }

                            else
                            {
                              *(v14 + 228) = 0;
                            }
                          }
                        }

                        else
                        {
                          *(v14 + 220) = 1;
                          ++*(v14 + 212);
                          *(v14 + 216) = cstdlib_atoi(__src);
                        }
                      }

                      else
                      {
                        *(v14 + 208) = 1;
                        ++*(v14 + 212);
                        *(v14 + 214) = cstdlib_atoi(__src);
                      }
                    }

                    else
                    {
                      *(v14 + 28) = 1;
                    }

                    goto LABEL_71;
                  }

                  v26 = *(v63 + 8);
                  v27 = (v14 + 176);
                  goto LABEL_70;
                }

                v24 = (v14 + 52);
                goto LABEL_79;
              }

              if (cstdlib_atoi(__src) == 4)
              {
                goto LABEL_71;
              }

              log_OutPublic(*(v63 + 32), "DOMAIN_MNGR", 47000, 0);
            }

            else
            {
              log_OutText(*(v63 + 32), "DOMAIN_MNGR", 3, 0, "APDB Format: 7.0.0 not supported");
            }

            StringZ = -1998577663;
LABEL_71:
            log_OutText(*(v63 + 32), "DOMAIN_MNGR", 3, 0, "APDB attribute %s=%s", __s, __src);
LABEL_72:
            if ((StringZ & 0x80000000) == 0)
            {
              v21 += v22;
              v20 = v65;
              if (v21 < v65)
              {
                continue;
              }
            }

            goto LABEL_109;
          }
        }
      }
    }

LABEL_145:
    v13 = v17;
    goto LABEL_146;
  }

LABEL_155:
  *(a4 + 32) = v14;
  return v13;
}

uint64_t apdb_loc_ObjcUnloadData(_WORD *a1, int a2, uint64_t a3)
{
  v21 = 0;
  inited = InitRsrcFunction(a1, a2, &v21);
  if ((inited & 0x80000000) == 0)
  {
    v5 = *(a3 + 32);
    if (v5)
    {
      v6 = *(v5 + 16);
      if (v6)
      {
        ssftriff_reader_ReleaseChunkData(v6);
        if (*v5)
        {
          v7 = ssftriff_reader_ObjClose(*v5);
          if (v7 >= 0)
          {
            inited = inited;
          }

          else
          {
            inited = v7;
          }
        }
      }

      v8 = *(v5 + 552);
      if (v8)
      {
        osspi_DataClose(v8);
      }

      v9 = *(v5 + 72);
      if (v9)
      {
        heap_Free(*(v21 + 8), v9);
      }

      v10 = *(v5 + 64);
      if (v10)
      {
        heap_Free(*(v21 + 8), v10);
      }

      v11 = *(v5 + 168);
      if (v11)
      {
        heap_Free(*(v21 + 8), v11);
      }

      v12 = *(v5 + 200);
      if (v12)
      {
        heap_Free(*(v21 + 8), v12);
      }

      v13 = *(v5 + 176);
      if (v13)
      {
        heap_Free(*(v21 + 8), v13);
      }

      v14 = *(v5 + 184);
      if (v14)
      {
        heap_Free(*(v21 + 8), v14);
      }

      v15 = *(v5 + 192);
      if (v15)
      {
        heap_Free(*(v21 + 8), v15);
      }

      v16 = *(v5 + 264);
      if (v16)
      {
        vector_ObjClose(v16);
      }

      if (*(v5 + 224) == 1)
      {
        for (i = 0; i != 800; i += 8)
        {
          v18 = *(*(v5 + 232) + i);
          if (v18)
          {
            heap_Free(*(v21 + 8), v18);
          }
        }

        v19 = *(v5 + 232);
        if (v19)
        {
          heap_Free(*(v21 + 8), v19);
        }
      }

      heap_Free(*(v21 + 8), v5);
    }
  }

  return inited;
}

uint64_t activeprompt_db_ObjOpen(uint64_t a1, __int128 *a2, char *a3, char *a4, const void *a5, int a6, uint64_t a7, uint64_t *a8)
{
  v154 = *MEMORY[0x277D85DE8];
  v129 = 0;
  v130 = 0;
  v8 = 2296389642;
  v128 = 0;
  if (!a8)
  {
    return 2296389639;
  }

  inited = InitRsrcFunction(*a2, *(a2 + 1), &v130);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *a8 = 0;
  if (a4 && *a4)
  {
    cstdlib_strncpy(__dst, a4, 0x1FFuLL);
    v152 = 0;
  }

  else
  {
    *&__s2[0] = 0;
    if (cupreader_IsCupInTheScope(v130, __s2))
    {
      snprintf(__str, 0x200uLL, "cup:%s", *&__s2[0]);
      snprintf(__dst, 0x200uLL, "cup:%s%p");
    }

    else
    {
      snprintf(__str, 0x200uLL, "in-memory APDB%p", a5);
      snprintf(__dst, 0x200uLL, "in-memory APDB%p");
    }

    v152 = 0;
    __str[511] = 0;
    a4 = __str;
  }

  v17 = activeprompt_db_LoadData(a2, __dst, a5, a6, &v129);
  if ((v17 & 0x80000000) != 0)
  {
    v16 = v17;
    if ((v17 & 0x1FFF) == 4)
    {
      log_OutPublic(*(v130 + 32), "DOMAIN_MNGR", 27002, 0);
    }

    goto LABEL_34;
  }

  v18 = heap_Calloc(*(v130 + 8), 1, 88);
  *a8 = v18;
  if (!v18)
  {
    goto LABEL_33;
  }

  *(v18 + 8) = v129;
  **a8 = a2;
  v19 = *a8;
  *(v19 + 6) = 1;
  v19[9] = 0;
  *(*a8 + 64) = 0;
  TuningDataNameInCup = cupreader_GetTuningDataNameInCup(v130, &v128);
  v21 = *a8;
  if (TuningDataNameInCup && (v22 = v128) != 0)
  {
    v23 = (v21 + 56);
  }

  else
  {
    v23 = (v21 + 56);
    v22 = a4;
  }

  v24 = domain_mngr_utils_DuplicateString(*(v130 + 8), v22, v23);
  if ((v24 & 0x80000000) != 0)
  {
    goto LABEL_33;
  }

  v16 = v24;
  v25 = *a8;
  v26 = *(*a8 + 8);
  v27 = *(v26 + 176);
  if (!v27)
  {
    goto LABEL_24;
  }

  v28 = domain_mngr_utils_DuplicateString(*(v130 + 8), v27, (v25 + 40));
  if ((v28 & 0x80000000) != 0)
  {
LABEL_33:
    log_OutPublic(*(v130 + 32), "DOMAIN_MNGR", 47000, 0);
    v16 = 2296389642;
    goto LABEL_34;
  }

  v16 = v28;
  v25 = *a8;
  v26 = *(*a8 + 8);
LABEL_24:
  if (*(v26 + 24) != 1)
  {
    goto LABEL_45;
  }

  v29 = *(*v25 + 16);
  *&__s2[0] = 0;
  *&v138 = 0;
  __s[0] = 0;
  if ((hlp_GetMimeParam(v29, a3, "urisuffix", &v138) & 0x80000000) == 0)
  {
    v30 = *(v25 + 40);
    if (v30)
    {
      heap_Free(v29[1], v30);
    }

    *(v25 + 40) = v138;
    if ((hlp_GetMimeParam(v29, a3, "uriprefix", &v138) & 0x80000000) != 0)
    {
      goto LABEL_29;
    }

LABEL_38:
    *(v25 + 32) = 2;
    v32 = *(v25 + 80);
    if (v32)
    {
      heap_Free(v29[1], v32);
    }

    v16 = 0;
    *(v25 + 80) = v138;
    goto LABEL_41;
  }

  if ((hlp_GetMimeParam(v29, a3, "uriprefix", &v138) & 0x80000000) == 0)
  {
    goto LABEL_38;
  }

  if (IsRecordingCS(v25, a4, __s2))
  {
    *(v25 + 32) = 1;
    v92 = *(v25 + 80);
    if (v92)
    {
      heap_Free(v29[1], v92);
    }

    v93 = v29[1];
    v94 = cstdlib_strlen("x-vocalizer-speechbase://");
    v95 = cstdlib_strlen(*&__s2[0]);
    v96 = heap_Alloc(v93, v94 + v95 + 100);
    *(v25 + 80) = v96;
    if (v96)
    {
      cstdlib_strcpy(v96, "x-vocalizer-speechbase://");
      cstdlib_strcat(*(v25 + 80), *&__s2[0]);
      v16 = 0;
    }

    else
    {
      log_OutPublic(v29[4], "DOMAIN_MNGR", 47000, 0);
      v16 = 2296389642;
    }

    goto LABEL_41;
  }

LABEL_29:
  if (*a4)
  {
    if ((brk_TagQueryEx(v29[3], a4, "BROKERSTRING", 1, __s) & 0x80000000) != 0)
    {
      *(v25 + 32) = 2;
      v16 = domain_mngr_utils_DuplicateString(v29[1], a4, (v25 + 48));
      goto LABEL_41;
    }

    brk_TagRelease(v29[3], __s[0]);
    __s[0] = 0;
  }

  log_OutPublic(v29[4], "DOMAIN_MNGR", 47018, "%s%s", "apdb", a4);
  v16 = 2296389652;
LABEL_41:
  if (*&__s2[0])
  {
    heap_Free(v29[1], *&__s2[0]);
  }

  if ((v16 & 0x80000000) != 0)
  {
    goto LABEL_34;
  }

  v25 = *a8;
  v26 = *(*a8 + 8);
LABEL_45:
  if (!*(v26 + 72))
  {
    goto LABEL_86;
  }

  v33 = *(*v25 + 16);
  *&v138 = 0;
  if ((paramc_ParamGetStr(v33[5], "voice", &v138) & 0x80000000) != 0)
  {
    LOBYTE(v35) = 0;
LABEL_79:
    v16 = 0;
    if (v35)
    {
      goto LABEL_86;
    }

    goto LABEL_80;
  }

  __s[0] = 0;
  __s1 = 0;
  if ((paramc_ParamGetStr(v33[5], "voiceoperatingpoint", __s) & 0x80000000) != 0)
  {
    v34 = 0;
  }

  else
  {
    v34 = cstdlib_strlen(__s[0]) + 1;
  }

  if ((paramc_ParamGetStr(v33[5], "vopversion", &__s1) & 0x80000000) != 0 || !cstdlib_strcmp(__s1, "0.0.0"))
  {
    v36 = 0;
  }

  else
  {
    v36 = cstdlib_strlen(__s1) + 1;
  }

  v37 = v33[1];
  v38 = cstdlib_strlen(v138);
  v39 = heap_Calloc(v37, 1, (v34 + v36 + v38 + 14));
  *(v25 + 64) = v39;
  if (!v39)
  {
    goto LABEL_132;
  }

  v127 = v33;
  cstdlib_strcpy(v39, "voiceaddons.");
  v40 = cstdlib_strlen(*(v25 + 64));
  if (cstdlib_strlen(v138))
  {
    v41 = 0;
    v42 = 0;
    do
    {
      *(*(v25 + 64) + v40 + v42++) = cstdlib_tolower(*(v138 + v41));
      v41 = v42;
    }

    while (cstdlib_strlen(v138) > v42);
  }

  else
  {
    LODWORD(v41) = 0;
  }

  *(*(v25 + 64) + (v41 + v40)) = 0;
  if (v34)
  {
    cstdlib_strcat(*(v25 + 64), ".");
    cstdlib_strcat(*(v25 + 64), __s[0]);
  }

  v33 = v127;
  if (v36)
  {
    cstdlib_strcat(*(v25 + 64), ".");
    cstdlib_strcat(*(v25 + 64), __s1);
  }

  v43 = *(*(v25 + 8) + 72);
  v44 = *(v25 + 56);
  v45 = *(v25 + 64);
  *&__s2[0] = 0;
  LODWORD(v147) = 0;
  if (v44)
  {
    v46 = v44;
    v125 = cstdlib_strlen(v44);
  }

  else
  {
    v46 = 0;
    v125 = 0;
  }

  Str = paramc_ParamGetStr(v127[5], v45, __s2);
  if (*&__s2[0])
  {
    v48 = v43 == 0;
  }

  else
  {
    v48 = 1;
  }

  v49 = v48 || Str < 0;
  v35 = !v49;
  if (v35 != 1 || cstdlib_strstr(*&__s2[0], v43))
  {
    goto LABEL_79;
  }

  v123 = v45;
  v124 = v43;
  v120 = v46;
  if (!v46 || !*v46 || IsThisUrlOrRealPath(v46, v125, &v147) < 1)
  {
    v99 = 0;
LABEL_141:
    v121 = 1;
    goto LABEL_142;
  }

  v97 = v147;
  v98 = cstdlib_strrchr(v46, 47);
  if (v97)
  {
    if (!v98)
    {
      v8 = 2296389639;
      goto LABEL_132;
    }

    goto LABEL_153;
  }

  if (v98 || (v98 = cstdlib_strrchr(v46, 92)) != 0)
  {
LABEL_153:
    v99 = v98 - v46 + 1;
    goto LABEL_141;
  }

  v121 = 0;
  v99 = 2;
LABEL_142:
  v100 = v127[1];
  v101 = cstdlib_strlen(*&__s2[0]);
  v102 = cstdlib_strlen(";");
  v103 = cstdlib_strlen(v124);
  v126 = v99;
  v104 = heap_Calloc(v100, 1, (v99 + v102 + v101 + v103 + 2));
  if (!v104)
  {
    goto LABEL_132;
  }

  v105 = v104;
  cstdlib_strcpy(v104, *&__s2[0]);
  v106 = v127[1];
  v107 = cstdlib_strlen("voiceaddonbaseuri.");
  v108 = cstdlib_strlen(v124);
  v109 = heap_Calloc(v106, 1, v107 + v108 + 1);
  if (!v109)
  {
    v110 = v105;
LABEL_160:
    heap_Free(v127[1], v110);
    goto LABEL_132;
  }

  v110 = v109;
  v111 = v105;
  cstdlib_strcpy(v109, "voiceaddonbaseuri.");
  cstdlib_strcat(v110, v124);
  v112 = heap_Calloc(v127[1], 1, v126 + 1);
  if (!v112)
  {
    heap_Free(v127[1], v105);
    goto LABEL_160;
  }

  v113 = v112;
  if (v126)
  {
    if (v121)
    {
      v114 = v120;
    }

    else
    {
      v114 = "./";
    }

    cstdlib_strncpy(v112, v114, v126);
  }

  v113[v126] = 0;
  v115 = paramc_ParamSetStrPermanent(v127[5], v110, v113);
  heap_Free(v127[1], v113);
  heap_Free(v127[1], v110);
  if ((v115 & 0x80000000) != 0)
  {
    v110 = v111;
    v8 = v115;
    goto LABEL_160;
  }

  v116 = v111;
  cstdlib_strcat(v111, v124);
  cstdlib_strcat(v111, ";");
  v16 = paramc_ParamSetStrPermanent(v127[5], v123, v111);
  heap_Free(v127[1], v116);
  if ((v16 & 0x80000000) != 0)
  {
    v8 = v16;
    goto LABEL_132;
  }

LABEL_80:
  v50 = *(*(v25 + 8) + 72);
  if (!v50)
  {
    goto LABEL_86;
  }

  v51 = v33[1];
  v52 = cstdlib_strlen(v50);
  v53 = heap_Calloc(v51, 1, (v52 + 18));
  *(v25 + 72) = v53;
  if (!v53)
  {
    log_OutPublic(v33[4], "DOMAIN_MNGR", 47000, 0);
LABEL_132:
    v16 = v8;
LABEL_34:
    if (*a8)
    {
      activeprompt_db_ObjClose(*a8, 0);
      *a8 = 0;
    }

    return v16;
  }

  cstdlib_strcpy(v53, "voiceaddonoffset.");
  v54 = cstdlib_strlen(*(v25 + 72));
  if (cstdlib_strlen(*(*(v25 + 8) + 72)))
  {
    v55 = 0;
    v56 = 1;
    do
    {
      *(*(v25 + 72) + v54) = cstdlib_tolower(*(*(*(v25 + 8) + 72) + v55));
      v55 = v56;
      ++v54;
      v49 = cstdlib_strlen(*(*(v25 + 8) + 72)) > v56++;
    }

    while (v49);
  }

  *(*(v25 + 72) + v54) = 0;
LABEL_86:
  if (log_HasTraceTuningDataSubscriber(*(*(**a8 + 16) + 32)))
  {
    v57 = *a8;
    v150 = 0;
    memset(__s2, 0, sizeof(__s2));
    __s1 = 0;
    v147 = 0;
    v146 = 0;
    v145 = 0;
    ssftstring_ObjOpen(*(*(*v57 + 16) + 8), &v145);
    if (v145)
    {
      activeprompt_db_GetTNTypes(v57, v145);
      v60 = v145;
    }

    else
    {
      v60 = 0;
    }

    v61 = v57[1];
    v62 = *(*v57 + 16);
    v63 = *(v62 + 32);
    v64 = v57[10];
    v65 = *(v61 + 184);
    v66 = *(v61 + 168);
    if (v60)
    {
      v118 = *(v62 + 32);
      v119 = *(v61 + 184);
      v117 = *(v61 + 168);
      v122 = v57[10];
      ssftstring_CStr(v60);
      v66 = v117;
      v65 = v119;
      v64 = v122;
      v63 = v118;
    }

    log_OutTraceTuningData(v63, 203, "%s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s", v64, v58, v65, v59, v66, "BEG");
    if (v145)
    {
      ssftstring_ObjClose(v145);
      v145 = 0;
    }

    if (vector_GetElemAt(*(v57[1] + 264), 0, &v146) && *v146 == 1 && vector_GetElemAt(*(v57[1] + 264), 1u, &v147) && (v67 = v147, *v147 == 2))
    {
      v144 = 0;
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v137 = 0;
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      *v134 = 0u;
      *__s = 0u;
      v132 = 0u;
      v68 = v146;
      hlp_FillActivePrompt(v57, *v146, *(v146 + 24), 0, &v138);
      hlp_FillActivePrompt(v57, *v67, *(v67 + 24), 0, __s);
      v69 = *(v68 + 16);
      v70 = *(v67 + 16) != 0;
      if (v69 != 0 || v70)
      {
        v71 = 0;
        v72 = 0;
        do
        {
          if (v70 && (v71 == v69 || (v73 = cstdlib_strlen(v134[0]), v73 > cstdlib_strlen(v141)) || (v79 = cstdlib_strlen(v134[0]), v79 == cstdlib_strlen(v141)) && HIDWORD(v132) > HIDWORD(v139) || (v80 = cstdlib_strlen(v134[0]), v80 == cstdlib_strlen(v141)) && HIDWORD(v132) == HIDWORD(v139) && v133 > v140))
          {
            hlp_TraceContent_AP(v57, __s);
            if (++v72 < *(v147 + 16))
            {
              v74 = *v147;
              v75 = (*(v147 + 24) + 24 * v72);
              v76 = __s;
              v77 = v57;
              v78 = v72;
LABEL_112:
              hlp_FillActivePrompt(v77, v74, v75, v78, v76);
            }
          }

          else
          {
            hlp_TraceContent_AP(v57, &v138);
            if (++v71 < *(v146 + 16))
            {
              v74 = *v146;
              v75 = (*(v146 + 24) + 24 * v71);
              v76 = &v138;
              v77 = v57;
              v78 = v71;
              goto LABEL_112;
            }
          }

          v69 = *(v146 + 16);
          v81 = *(v147 + 16);
          v70 = v72 < v81;
        }

        while (v71 < v69 || v72 < v81);
      }

      v83 = 2;
    }

    else
    {
      v83 = 0;
    }

    while (vector_GetElemAt(*(v57[1] + 264), v83, &__s1))
    {
      v84 = __s1;
      if (*(__s1 + 4))
      {
        v85 = 0;
        v86 = 0;
        do
        {
          hlp_FillActivePrompt(v57, *v84, (*(v84 + 3) + v85), v86, __s2);
          hlp_TraceContent_AP(v57, __s2);
          ++v86;
          v84 = __s1;
          v85 += 24;
        }

        while (v86 < *(__s1 + 4));
      }

      ++v83;
    }

    log_OutTraceTuningData(*(*(*v57 + 16) + 32), 203, "%s%s", v87, v88, v89, v90, v91, "END");
  }

  return v16;
}

uint64_t activeprompt_db_Get(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = 2296389652;
  v12 = 0;
  hlp_CheckBECompatibility(a1);
  if (*(a1 + 28) == 2 && *(a1 + 24) && vector_GetElemAt(*(*(a1 + 8) + 264), 0, &v12))
  {
    v7 = 0;
    while (1)
    {
      v8 = v12;
      if (*(v12 + 16))
      {
        break;
      }

LABEL_9:
      if (!vector_GetElemAt(*(*(a1 + 8) + 264), ++v7, &v12))
      {
        return v6;
      }
    }

    v9 = 0;
    v10 = 0;
    while (LH_stricmp(a2, (*(*(a1 + 8) + 240) + *(*(v8 + 24) + v9))))
    {
      ++v10;
      v8 = v12;
      v9 += 24;
      if (v10 >= *(v12 + 16))
      {
        goto LABEL_9;
      }
    }

    if (a3)
    {
      hlp_FillActivePrompt(a1, *v12, (*(v12 + 24) + v9), v10, a3);
    }

    return 0;
  }

  return v6;
}

uint64_t hlp_CheckBECompatibility(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(*a1 + 16);
  v15 = 0;
  v14 = 0;
  result = domain_mngr_utils_IsActiveVoiceAddon(v3, *(v2 + 72), (v2 + 80), (v2 + 88), (v2 + 100), &v14);
  if ((result & 0x80000000) != 0)
  {
    result = hlp_CheckAttribute(v3, *(*(a1 + 8) + 168), "langcode", (*(a1 + 8) + 44));
    if (!result)
    {
      goto LABEL_26;
    }

    result = hlp_CheckAttribute(v3, *(*(a1 + 8) + 168), "voice", *(*(a1 + 8) + 64));
    if (!result)
    {
      result = hlp_CheckAttribute(v3, *(*(a1 + 8) + 168), "fevoice", *(*(a1 + 8) + 64));
      if (!result)
      {
        goto LABEL_26;
      }
    }

    v6 = *(a1 + 8);
    if (*(v6 + 80))
    {
      result = paramc_ParamGetStr(v3[5], "uselectrawdataversion", &v15);
      v6 = *(a1 + 8);
      if ((result & 0x80000000) == 0)
      {
        result = LH_stricmp(v15, (v6 + 80));
        v6 = *(a1 + 8);
        if (result)
        {
          v7 = v3[4];
          v8 = v15;
          v12 = "apdbRawDataVersion";
          v13 = (v6 + 80);
          v9 = "voiceRawDataVersion";
LABEL_15:
          result = log_OutPublic(v7, "DOMAIN_MNGR", 47002, "%s%s%s%s", v9, v8, v12, v13);
          goto LABEL_26;
        }
      }
    }

    if (*(v6 + 100))
    {
      result = paramc_ParamGetStr(v3[5], "uselectreductionversion", &v15);
      v6 = *(a1 + 8);
      if ((result & 0x80000000) == 0)
      {
        result = LH_stricmp(v15, (v6 + 100));
        v6 = *(a1 + 8);
        if (result)
        {
          v7 = v3[4];
          v8 = v15;
          v12 = "apdbReductionVersion";
          v13 = (v6 + 100);
          v9 = "voiceReductionVersion";
          goto LABEL_15;
        }
      }
    }

    if (*(v6 + 88))
    {
      if (!*(v6 + 100) || (result = LH_stricmp((v6 + 100), "null"), v6 = *(a1 + 8), result))
      {
        result = hlp_CheckAttribute(v3, *(v6 + 168), "reduction", (v6 + 88));
        if (!result)
        {
          goto LABEL_26;
        }

        v6 = *(a1 + 8);
      }
    }

    if (*(v6 + 120))
    {
      if ((paramc_ParamGetStr(v3[5], "voicecomponentid", &v15) & 0x80000000) != 0 || (result = LH_stricmp(v15, (*(a1 + 8) + 120)), result))
      {
        v10 = v3[4];
        v11 = v15;
LABEL_25:
        result = log_OutPublic(v10, "DOMAIN_MNGR", 47002, "%s%s%s%s", "VoiceComponentID", v11, "APDBComponentID", (*(a1 + 8) + 120));
        goto LABEL_26;
      }

      v6 = *(a1 + 8);
    }

    if (*(v6 + 160) != 1)
    {
      goto LABEL_3;
    }

    if (*(v6 + 120))
    {
      goto LABEL_3;
    }

    result = paramc_ParamGetStr(v3[5], "voicecomponentid", &v15);
    v11 = v15;
    if ((result & 0x80000000) == 0 && !*v15)
    {
      goto LABEL_3;
    }

    v10 = v3[4];
    goto LABEL_25;
  }

  if (!v14)
  {
LABEL_26:
    v5 = 1;
    goto LABEL_27;
  }

LABEL_3:
  v5 = 2;
LABEL_27:
  *(a1 + 28) = v5;
  return result;
}

uint64_t hlp_FillActivePrompt(uint64_t result, int a2, unsigned int *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = *(result + 8);
  v7 = v6[30] + *a3;
  *a5 = result;
  *(a5 + 96) = a4;
  *(a5 + 8) = a2;
  *(a5 + 16) = v7;
  *(a5 + 24) = *(a3 + 2);
  v8 = *(a3 + 7);
  *(a5 + 28) = *(a3 + 6);
  *(a5 + 32) = v8;
  v9 = *(a3 + 4);
  if (v9 == 0xFFFF)
  {
    v10 = 0;
  }

  else
  {
    v10 = v7 + v9;
  }

  v11 = *(a3 + 5);
  v12 = v11 == 0xFFFF;
  v13 = v7 + v11;
  if (v12)
  {
    v13 = 0;
  }

  *(a5 + 40) = v10;
  *(a5 + 48) = v13;
  *(a5 + 56) = *(a3 + 9);
  v14 = a3[5];
  v15 = a3[3];
  *(a5 + 60) = v14;
  *(a5 + 64) = v15;
  if (a2 != 2)
  {
    v5 = v6[31] + 4 * v15;
  }

  v16 = *(a3 + 8);
  v17 = v7 + v16;
  if (v16 == 0xFFFF)
  {
    v17 = 0;
  }

  *(a5 + 72) = v5;
  *(a5 + 80) = v17;
  *(a5 + 88) = v6[32] + 8 * v14;
  return result;
}

uint64_t activeprompt_db_GetTNTypes(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  hlp_CheckBECompatibility(a1);
  if (*(a1 + 28) == 2 && vector_GetElemAt(*(*(a1 + 8) + 264), 0, &v8))
  {
    v4 = 1;
    do
    {
      v5 = *(v8 + 8);
      if (v5 && *v5)
      {
        ssftstring_AppendCStr(a2, v5);
        ssftstring_AppendChar(a2, 124);
      }
    }

    while (vector_GetElemAt(*(*(a1 + 8) + 264), v4++, &v8));
  }

  return 2296389652;
}

uint64_t activeprompt_db_ConsultOriOrth(uint64_t a1, uint64_t *a2, uint64_t *a3, unsigned __int16 *a4, uint64_t a5)
{
  v63 = 0;
  hlp_CheckBECompatibility(a1);
  if (*(a1 + 28) != 2 || !*(a1 + 24) || !*(*(a1 + 8) + 28))
  {
    return 0;
  }

  if (log_HasTraceTuningDataSubscriber(*(*(*a1 + 16) + 32)))
  {
    log_OutTraceTuningData(*(*(*a1 + 16) + 32), 213, "%s%s %s%s %s%s", v9, v10, v11, v12, v13, "BEG");
    v14 = a5;
    do
    {
      if (!v14)
      {
        log_OutTraceTuningDataBinary(*(*(*a1 + 16) + 32), 214, "", "text/plain;charset=utf-8", *a2, 0);
        if (!a4)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      v15 = v14;
      v14 = *(v14 + 16);
    }

    while (v14);
    if (!a4)
    {
      v19 = *(*(*a1 + 16) + 32);
      v20 = *a2;
      v21 = "text/plain;charset=utf-8";
      v22 = 0;
      goto LABEL_19;
    }

    if (*a4)
    {
      v16 = (*(v15 + 8) + *(v15 + 4) - *(*a3 + 12));
    }

    else
    {
      v16 = 0;
    }

    log_OutTraceTuningDataBinary(*(*(*a1 + 16) + 32), 214, "", "text/plain;charset=utf-8", *a2, v16);
LABEL_18:
    v19 = *(*(*a1 + 16) + 32);
    v20 = *a3;
    v22 = 32 * *a4;
    v21 = "application/x-realspeak-markers-pp;version=4.0";
LABEL_19:
    log_OutTraceTuningDataBinary(v19, 214, "", v21, v20, v22);
  }

LABEL_20:
  if (!a5)
  {
    v17 = 0;
    goto LABEL_73;
  }

  v23 = a5;
  while (1)
  {
    v79 = 0;
    v80 = 0;
    v78 = 0;
    if (!*v23)
    {
      v17 = 0;
      goto LABEL_67;
    }

    memset(v81, 0, 104);
    v63 = 0;
    if (vector_GetElemAt(*(*(a1 + 8) + 264), 0, &v78) && *v78 == 1 && vector_GetElemAt(*(*(a1 + 8) + 264), 1u, &v79) && *v79 == 2)
    {
      v77 = 0;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v72 = 0u;
      v71 = 0u;
      v70 = 0;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      *__s = 0u;
      v64 = 0u;
      v65 = 0u;
      v24 = domain_mngr_utils_ListContainsString(*(v78 + 8), "*");
      v25 = domain_mngr_utils_ListContainsString(*(v79 + 8), "*");
      if (v24 && v25)
      {
        v31 = v78;
        hlp_FillActivePrompt(a1, *v78, *(v78 + 24), 0, &v71);
        v32 = v79;
        hlp_FillActivePrompt(a1, *v79, *(v79 + 24), 0, &v64);
        if (*v23 == 1)
        {
          v33 = *(v31 + 16);
          v34 = *(v32 + 16) != 0;
          if (v33 != 0 || v34)
          {
            v35 = 0;
            v36 = 0;
            while (1)
            {
              if (v34 && (v36 == v33 || (v37 = cstdlib_strlen(__s[0]), v37 > cstdlib_strlen(v74)) || (v43 = cstdlib_strlen(__s[0]), v43 == cstdlib_strlen(v74)) && HIDWORD(v65) > HIDWORD(v72) || (v44 = cstdlib_strlen(__s[0]), v44 == cstdlib_strlen(v74)) && HIDWORD(v65) == HIDWORD(v72) && v66 > v73))
              {
                v17 = activeprompt_ConsultOriOrth(&v64, a2, a3, a4, v23, &v63);
                if ((v17 & 0x80000000) != 0)
                {
                  goto LABEL_73;
                }

                if (++v35 >= *(v79 + 16))
                {
                  goto LABEL_47;
                }

                v38 = *v79;
                v39 = (*(v79 + 24) + 24 * v35);
                v40 = &v64;
                v41 = a1;
                v42 = v35;
              }

              else
              {
                v17 = activeprompt_ConsultOriOrth(&v71, a2, a3, a4, v23, &v63);
                if ((v17 & 0x80000000) != 0)
                {
                  goto LABEL_73;
                }

                if (++v36 >= *(v78 + 16))
                {
                  goto LABEL_47;
                }

                v38 = *v78;
                v39 = (*(v78 + 24) + 24 * v36);
                v40 = &v71;
                v41 = a1;
                v42 = v36;
              }

              hlp_FillActivePrompt(v41, v38, v39, v42, v40);
LABEL_47:
              if (*v23 == 1)
              {
                v33 = *(v78 + 16);
                v45 = *(v79 + 16);
                v34 = v35 < v45;
                if (v36 < v33 || v35 < v45)
                {
                  continue;
                }
              }

              goto LABEL_71;
            }
          }
        }
      }

      else
      {
        log_OutTraceTuningData(*(*(*a1 + 16) + 32), 216, "%s%s", v26, v27, v28, v29, v30, "INFO");
      }

      v17 = 0;
LABEL_71:
      v47 = 2;
    }

    else
    {
      v17 = 0;
      v47 = 0;
    }

    if (vector_GetElemAt(*(*(a1 + 8) + 264), v47, &v80))
    {
      break;
    }

LABEL_67:
    v23 = *(v23 + 16);
    if (!v23)
    {
      goto LABEL_73;
    }
  }

  do
  {
    if (domain_mngr_utils_ListContainsString(*(v80 + 8), "*"))
    {
      if (*v23 == 1)
      {
        v48 = v80;
        if (*(v80 + 16))
        {
          v49 = 0;
          v50 = 0;
          while (1)
          {
            hlp_FillActivePrompt(a1, *v48, (*(v48 + 24) + v49), v50, v81);
            v17 = activeprompt_ConsultOriOrth(v81, a2, a3, a4, v23, &v63);
            if ((v17 & 0x80000000) != 0)
            {
              goto LABEL_73;
            }

            if (*v23 == 1)
            {
              ++v50;
              v48 = v80;
              v49 += 24;
              if (v50 < *(v80 + 16))
              {
                continue;
              }
            }

            break;
          }
        }
      }
    }

    ++v47;
  }

  while (vector_GetElemAt(*(*(a1 + 8) + 264), v47, &v80));
  if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_67;
  }

LABEL_73:
  if (log_HasTraceTuningDataSubscriber(*(*(*a1 + 16) + 32)))
  {
    do
    {
      if (!a5)
      {
        log_OutTraceTuningDataBinary(*(*(*a1 + 16) + 32), 215, "", "text/plain;charset=utf-8", *a2, 0);
        if (!a4)
        {
          goto LABEL_86;
        }

        goto LABEL_84;
      }

      v51 = a5;
      a5 = *(a5 + 16);
    }

    while (a5);
    if (!a4)
    {
      v58 = *(*(*a1 + 16) + 32);
      v59 = *a2;
      v60 = "text/plain;charset=utf-8";
      v61 = 0;
      goto LABEL_85;
    }

    if (*a4)
    {
      v52 = (*(v51 + 8) + *(v51 + 4) - *(*a3 + 12));
    }

    else
    {
      v52 = 0;
    }

    log_OutTraceTuningDataBinary(*(*(*a1 + 16) + 32), 215, "", "text/plain;charset=utf-8", *a2, v52);
LABEL_84:
    v58 = *(*(*a1 + 16) + 32);
    v59 = *a3;
    v61 = 32 * *a4;
    v60 = "application/x-realspeak-markers-pp;version=4.0";
LABEL_85:
    log_OutTraceTuningDataBinary(v58, 215, "", v60, v59, v61);
LABEL_86:
    log_OutTraceTuningData(*(*(*a1 + 16) + 32), 213, "%s%s %s%u", v53, v54, v55, v56, v57, "END");
  }

  return v17;
}

uint64_t activeprompt_db_Consult(uint64_t a1, uint64_t *a2, uint64_t *a3, unsigned __int16 *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = a1;
  v87 = 0;
  hlp_CheckBECompatibility(a1);
  if (*(v11 + 28) != 2 || !*(v11 + 24))
  {
    return 0;
  }

  if (log_HasTraceTuningDataSubscriber(*(*(*v11 + 16) + 32)))
  {
    log_OutTraceTuningData(*(*(*v11 + 16) + 32), 273, "%s%s %s%s %s%s", v12, v13, v14, v15, v16, "BEG");
    v17 = a7;
    do
    {
      if (!v17)
      {
        log_OutTraceTuningDataBinary(*(*(*v11 + 16) + 32), 274, "", "text/plain;charset=depes", *a2, 0);
        if (!a4)
        {
          goto LABEL_19;
        }

        goto LABEL_17;
      }

      v18 = v17;
      v17 = *(v17 + 16);
    }

    while (v17);
    if (!a4)
    {
      v22 = *(*(*v11 + 16) + 32);
      v23 = *a2;
      v24 = "text/plain;charset=depes";
      v25 = 0;
      goto LABEL_18;
    }

    if (*a4)
    {
      v19 = (*(v18 + 8) + *(v18 + 4) - *(*a3 + 12));
    }

    else
    {
      v19 = 0;
    }

    log_OutTraceTuningDataBinary(*(*(*v11 + 16) + 32), 274, "", "text/plain;charset=depes", *a2, v19);
LABEL_17:
    v22 = *(*(*v11 + 16) + 32);
    v23 = *a3;
    v25 = 32 * *a4;
    v24 = "application/x-realspeak-markers-pp;version=4.0";
LABEL_18:
    log_OutTraceTuningDataBinary(v22, 274, "", v24, v23, v25);
  }

LABEL_19:
  if (!a7)
  {
    v20 = 0;
    goto LABEL_114;
  }

  v26 = a7;
  v86 = v11;
  while (1)
  {
    v103 = 0;
    v104 = 0;
    v102 = 0;
    if (!*v26)
    {
      v20 = 0;
      goto LABEL_60;
    }

    memset(v105, 0, 104);
    v87 = 0;
    if (!vector_GetElemAt(*(*(v11 + 8) + 264), 0, &v102) || *v102 != 1 || !vector_GetElemAt(*(*(v11 + 8) + 264), 1u, &v103) || *v103 != 2)
    {
      v20 = 0;
      v32 = 0;
      goto LABEL_37;
    }

    v101 = 0;
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    *__s = 0u;
    v88 = 0u;
    v89 = 0u;
    v27 = domain_mngr_utils_ListContainsString(*(v102 + 8), "*");
    v28 = v27 != 0;
    if (!v27 && a4)
    {
      v29 = *a4;
      if (*a4)
      {
        v30 = 0;
        v31 = 0;
        v28 = 0;
        do
        {
          if (*(*a3 + v30) == 21)
          {
            if (domain_mngr_utils_ListContainsString(*(v102 + 8), *(*a3 + v30 + 24)) == 1)
            {
              v28 = 1;
            }

            v29 = *a4;
          }

          ++v31;
          v30 += 32;
        }

        while (v31 < v29);
      }

      else
      {
        v28 = 0;
      }
    }

    if (domain_mngr_utils_ListContainsString(*(v103 + 8), "*"))
    {
      v50 = 1;
      goto LABEL_65;
    }

    if (a4)
    {
      v51 = *a4;
      if (*a4)
      {
        v52 = 0;
        v53 = 0;
        v50 = 0;
        do
        {
          if (*(*a3 + v52) == 21)
          {
            if (domain_mngr_utils_ListContainsString(*(v103 + 8), *(*a3 + v52 + 24)) == 1)
            {
              v50 = 1;
            }

            v51 = *a4;
          }

          ++v53;
          v52 += 32;
        }

        while (v53 < v51);
LABEL_65:
        if (v50 && v28)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      }
    }

    v50 = 0;
LABEL_78:
    log_OutTraceTuningData(*(*(*v11 + 16) + 32), 276, "%s%s", v45, v46, v47, v48, v49, "INFO");
LABEL_79:
    v20 = 0;
    if (v50 == 1 && v28)
    {
      v54 = v102;
      hlp_FillActivePrompt(v11, *v102, *(v102 + 24), 0, &v95);
      v55 = v103;
      hlp_FillActivePrompt(v11, *v103, *(v103 + 24), 0, &v88);
      if (*v26 == 1)
      {
        v56 = *(v54 + 16);
        v57 = *(v55 + 16) != 0;
        if (v56 != 0 || v57)
        {
          v58 = 0;
          v59 = 0;
          while (1)
          {
            if (v57 && (__s[0] ? (v60 = v98 == 0) : (v60 = 1), !v60 && (v59 == v56 || (v61 = cstdlib_strlen(__s[0]), v61 > cstdlib_strlen(v98)) || (v67 = cstdlib_strlen(__s[0]), v67 == cstdlib_strlen(v98)) && HIDWORD(v89) > HIDWORD(v96) || (v68 = cstdlib_strlen(__s[0]), v68 == cstdlib_strlen(v98)) && HIDWORD(v89) == HIDWORD(v96) && v90 > v97)))
            {
              v20 = activeprompt_Consult(&v88, *(v103 + 8), a2, a3, a4, v26, a5, a6, &v87, a8);
              if ((v20 & 0x80000000) != 0)
              {
                goto LABEL_114;
              }

              if (++v58 >= *(v103 + 16))
              {
                goto LABEL_103;
              }

              v62 = *v103;
              v63 = (*(v103 + 24) + 24 * v58);
              v64 = &v88;
              v65 = v11;
              v66 = v58;
            }

            else
            {
              v20 = activeprompt_Consult(&v95, *(v102 + 8), a2, a3, a4, v26, a5, a6, &v87, a8);
              if ((v20 & 0x80000000) != 0)
              {
                goto LABEL_114;
              }

              if (++v59 >= *(v102 + 16))
              {
                goto LABEL_103;
              }

              v62 = *v102;
              v63 = (*(v102 + 24) + 24 * v59);
              v64 = &v95;
              v65 = v11;
              v66 = v59;
            }

            hlp_FillActivePrompt(v65, v62, v63, v66, v64);
LABEL_103:
            if (*v26 == 1)
            {
              v56 = *(v102 + 16);
              v69 = *(v103 + 16);
              v57 = v58 < v69;
              if (v59 < v56 || v58 < v69)
              {
                continue;
              }
            }

            goto LABEL_111;
          }
        }
      }

      v20 = 0;
    }

LABEL_111:
    v32 = 2;
LABEL_37:
    if (vector_GetElemAt(*(*(v11 + 8) + 264), v32, &v104))
    {
      break;
    }

LABEL_60:
    v26 = *(v26 + 16);
    if (!v26)
    {
      goto LABEL_114;
    }
  }

  do
  {
    if (domain_mngr_utils_ListContainsString(*(v104 + 8), "*"))
    {
      goto LABEL_130;
    }

    if (!a4)
    {
      goto LABEL_55;
    }

    v41 = *a4;
    if (!*a4)
    {
      goto LABEL_55;
    }

    v42 = 0;
    v43 = 0;
    v44 = 0;
    do
    {
      if (*(*a3 + v42) == 21)
      {
        if (domain_mngr_utils_ListContainsString(*(v104 + 8), *(*a3 + v42 + 24)) == 1)
        {
          v44 = 1;
        }

        v41 = *a4;
      }

      ++v43;
      v42 += 32;
    }

    while (v43 < v41);
    v11 = v86;
    if (v44)
    {
LABEL_130:
      if (*v26 == 1)
      {
        v38 = v104;
        if (*(v104 + 16))
        {
          v39 = 0;
          v40 = 0;
          while (1)
          {
            hlp_FillActivePrompt(v86, *v38, (*(v38 + 24) + v39), v40, v105);
            v20 = activeprompt_Consult(v105, *(v38 + 8), a2, a3, a4, v26, a5, a6, &v87, a8);
            if ((v20 & 0x80000000) != 0)
            {
              break;
            }

            if (*v26 == 1)
            {
              ++v40;
              v38 = v104;
              v39 += 24;
              if (v40 < *(v104 + 16))
              {
                continue;
              }
            }

            goto LABEL_56;
          }

          v11 = v86;
          goto LABEL_114;
        }
      }
    }

    else
    {
LABEL_55:
      log_OutTraceTuningData(*(*(*v11 + 16) + 32), 273, "%s%s", v33, v34, v35, v36, v37, "INFO");
    }

LABEL_56:
    ++v32;
    v11 = v86;
  }

  while (vector_GetElemAt(*(*(v86 + 8) + 264), v32, &v104));
  if ((v20 & 0x80000000) == 0)
  {
    goto LABEL_60;
  }

LABEL_114:
  if (log_HasTraceTuningDataSubscriber(*(*(*v11 + 16) + 32)))
  {
    do
    {
      if (!a7)
      {
        log_OutTraceTuningDataBinary(*(*(*v11 + 16) + 32), 275, "", "text/plain;charset=depes", *a2, 0);
        if (!a4)
        {
          goto LABEL_127;
        }

        goto LABEL_125;
      }

      v71 = a7;
      a7 = *(a7 + 16);
    }

    while (a7);
    if (!a4)
    {
      v78 = *(*(*v11 + 16) + 32);
      v79 = *a2;
      v80 = "text/plain;charset=depes";
      v81 = 0;
      goto LABEL_126;
    }

    if (*a4)
    {
      v72 = (*(v71 + 8) + *(v71 + 4) - *(*a3 + 12));
    }

    else
    {
      v72 = 0;
    }

    log_OutTraceTuningDataBinary(*(*(*v11 + 16) + 32), 275, "", "text/plain;charset=depes", *a2, v72);
LABEL_125:
    v78 = *(*(*v11 + 16) + 32);
    v79 = *a3;
    v81 = 32 * *a4;
    v80 = "application/x-realspeak-markers-pp;version=4.0";
LABEL_126:
    log_OutTraceTuningDataBinary(v78, 275, "", v80, v79, v81);
LABEL_127:
    log_OutTraceTuningData(*(*(*v11 + 16) + 32), 273, "%s%s %s%u", v73, v74, v75, v76, v77, "END");
  }

  return v20;
}

uint64_t IsRecordingCS(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(*a1 + 16);
  v11 = 0;
  v10 = 0;
  if ((paramc_ParamGetInt(*(v6 + 40), "frequencyhz", &v10) & 0x80000000) != 0)
  {
    result = 0;
    v8 = 0;
    if (a3)
    {
LABEL_11:
      *a3 = v8;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      if (v8)
      {
        heap_Free(*(v6 + 8), v8);
      }

      v8 = (*(&off_287EEFD50 + v7))(v6, a2, *(a1[1] + 64), *(a1[1] + 168), v10);
      if (v8)
      {
        if ((brk_DataOpenEx(*(v6 + 24), v8, 1, &v11) & 0x80000000) == 0)
        {
          break;
        }
      }

      v7 += 8;
      if (v7 == 48)
      {
        result = 0;
        if (a3)
        {
          goto LABEL_11;
        }

        return result;
      }
    }

    brk_DataClose(*(v6 + 24), v11);
    result = 1;
    if (a3)
    {
      goto LABEL_11;
    }
  }

  return result;
}

char *hlp_GetRecordingSrcFromApdbBrkString(uint64_t a1, char *__s, uint64_t a3, uint64_t a4, int a5)
{
  v8 = *(a1 + 8);
  v9 = cstdlib_strlen(__s);
  v10 = heap_Alloc(v8, v9 + 5);
  v11 = v10;
  if (v10)
  {
    cstdlib_strcpy(v10, __s);
    if (!hlp_ReplaceRpWithCs(v11, 1, a5))
    {
      heap_Free(*(a1 + 8), v11);
      return 0;
    }
  }

  return v11;
}

char *hlp_GetRecordingSrcFromFixedBrkString(uint64_t a1, uint64_t a2, const char *a3, const char *a4, uint64_t a5)
{
  v5 = a5;
  v8 = *(a1 + 8);
  v9 = cstdlib_strlen("apdb");
  v10 = cstdlib_strlen("/cs/");
  v11 = cstdlib_strlen(a3);
  v12 = cstdlib_strlen(a4);
  v13 = heap_Alloc(v8, v9 + v10 + v11 + v12 + 6);
  v14 = v13;
  if (v13)
  {
    *v13 = 0;
    hlp_AppendStandardName(v13, 1, a3, a4, v5);
  }

  return v14;
}

char *hlp_GetRecordingSrcFromApdbURI(uint64_t a1, char *__s, uint64_t a3, uint64_t a4, int a5)
{
  v6 = __s;
  v16 = *MEMORY[0x277D85DE8];
  if (__s)
  {
    __s = cstdlib_strlen(__s);
  }

  if (!IsThisUrlOrRealPath(v6, __s, 0))
  {
    return 0;
  }

  memset(v15, 0, sizeof(v15));
  v8 = *(a1 + 8);
  v9 = cstdlib_strlen(v6);
  v10 = heap_Alloc(v8, v9 + 5);
  v11 = v10;
  if (v10)
  {
    cstdlib_strcpy(v10, v6);
    v12 = cstdlib_strrchr(v11, 46);
    if (v12)
    {
      v13 = v12;
      cstdlib_strcpy(v15, v12);
      *v13 = 0;
    }

    if (hlp_ReplaceRpWithCs(v11, 0, a5))
    {
      cstdlib_strcat(v11, v15);
      return v11;
    }

    heap_Free(*(a1 + 8), v11);
    return 0;
  }

  return v11;
}

char *hlp_GetRecordingSrcFromFixedURI(uint64_t a1, char *__s, const char *a3, const char *a4, uint64_t a5)
{
  v5 = a5;
  v8 = __s;
  v24 = *MEMORY[0x277D85DE8];
  if (__s)
  {
    __s = cstdlib_strlen(__s);
  }

  if (!IsThisUrlOrRealPath(v8, __s, 0))
  {
    return 0;
  }

  if (!SplitpathOrUrl(v8, __src, __s2, v21, 0, __sa))
  {
    return 0;
  }

  v10 = *(a1 + 8);
  v11 = cstdlib_strlen(v8);
  v12 = cstdlib_strlen("apdb");
  v13 = cstdlib_strlen("_cs_");
  v14 = cstdlib_strlen(a3);
  v15 = cstdlib_strlen(a4);
  v16 = cstdlib_strlen(__sa);
  v17 = heap_Alloc(v10, v11 + v12 + v13 + v14 + v15 + v16 + 6);
  if (!v17)
  {
    return 0;
  }

  v18 = v17;
  cstdlib_strcpy(v17, __src);
  cstdlib_strcat(v18, __s2);
  cstdlib_strcat(v18, v21);
  hlp_AppendStandardName(v18, 0, a3, a4, v5);
  cstdlib_strcat(v18, __sa);
  return v18;
}

char *hlp_GetRecordingSrcFromCupWithCustomName(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = cstdlib_strlen("cup:");
  if (cstdlib_strncmp(a2, "cup:", v8))
  {
    return 0;
  }

  __s = 0;
  if (!cupreader_GetTuningDataNameInCup(a1, &__s))
  {
    return 0;
  }

  v11 = *(a1 + 8);
  v12 = cstdlib_strlen(a2);
  v13 = cstdlib_strlen(__s);
  v14 = cstdlib_strlen("cup:");
  v9 = heap_Alloc(v11, v12 + v14 + v13 + 10);
  if (v9)
  {
    v15 = cstdlib_strlen("cup:");
    cstdlib_strcpy(v9, &a2[v15]);
    cstdlib_strcat(v9, ":");
    cstdlib_strcat(v9, __s);
    if (!hlp_ReplaceRpWithCs(v9, 0, a5))
    {
      heap_Free(*(a1 + 8), v9);
      return 0;
    }
  }

  return v9;
}

char *hlp_GetRecordingSrcFromCupWithFixedName(uint64_t a1, const char *a2, const char *a3, const char *a4, uint64_t a5)
{
  v5 = a5;
  v10 = cstdlib_strlen("cup:");
  if (cstdlib_strncmp(a2, "cup:", v10))
  {
    return 0;
  }

  v12 = *(a1 + 8);
  v13 = cstdlib_strlen(a2);
  v14 = cstdlib_strlen("apdb");
  v15 = cstdlib_strlen("_cs_");
  v16 = cstdlib_strlen(a3);
  v17 = cstdlib_strlen(a4);
  v11 = heap_Alloc(v12, v13 + v14 + v15 + v16 + v17 + 6);
  if (v11)
  {
    v18 = cstdlib_strlen("cup:");
    cstdlib_strcpy(v11, &a2[v18]);
    cstdlib_strcat(v11, ":");
    hlp_AppendStandardName(v11, 0, a3, a4, v5);
  }

  return v11;
}

uint64_t activeprompt_db_CopyPartsGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (a1 && a3)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      v8 = cstdlib_strlen(v6);
      result = heap_Alloc(a2, (v8 + 1));
      *(a3 + 8) = result;
      if (!result)
      {
        return result;
      }

      cstdlib_strcpy(result, *(a1 + 8));
    }

    return 1;
  }

  return result;
}

void *activeprompt_db_FreePartsGroup(void *result, void *a2)
{
  if (result)
  {
    v2 = result[1];
    if (v2)
    {
      return heap_Free(a2, v2);
    }
  }

  return result;
}

uint64_t hlp_CheckAttribute(uint64_t a1, const char *a2, const char *a3, char *a4)
{
  v9 = 0;
  if ((paramc_ParamGetStr(*(a1 + 40), a3, &v9) & 0x80000000) == 0 && !LH_stricmp(v9, a4))
  {
    return 1;
  }

  log_OutText(*(a1 + 32), "DOMAIN_MNGR", 3, 0, "APDB does not match the voice: %s=%s, %s=%s, %s=%s, %s=%s", "domain", a2, "attribute", a3, "voiceValue", v9, "apdbValue", a4);
  return 0;
}

uint64_t hlp_ReplaceRpWithCs(char *__s1, int a2, int a3)
{
  if (a2)
  {
    v5 = "/rp/";
  }

  else
  {
    v5 = "_rp_";
  }

  if (a2)
  {
    v6 = "/cs/";
  }

  else
  {
    v6 = "_cs_";
  }

  if (a2)
  {
    v7 = "/f";
  }

  else
  {
    v7 = "_f";
  }

  v8 = __s1;
  if (*v5)
  {
    v9 = 0;
    v10 = __s1;
    do
    {
      v8 = v9;
      v9 = cstdlib_strstr(v10, v5);
      v10 = v9 + 1;
    }

    while (v9);
  }

  if (!v8)
  {
    return 0;
  }

  v11 = cstdlib_strlen(v5);
  cstdlib_strncpy(v8, v6, v11);
  cstdlib_strcat(__s1, v7);
  v12 = cstdlib_strlen(__s1);
  LH_itoa(a3 / 1000, &__s1[v12], 0xAu);
  return 1;
}

char *hlp_AppendStandardName(char *a1, int a2, const char *a3, const char *a4, int a5)
{
  cstdlib_strcat(a1, "apdb");
  v10 = a2 == 0;
  if (a2)
  {
    v11 = "/cs/";
  }

  else
  {
    v11 = "_cs_";
  }

  if (a2)
  {
    v12 = "/";
  }

  else
  {
    v12 = "_";
  }

  if (v10)
  {
    v13 = "_f";
  }

  else
  {
    v13 = "/f";
  }

  cstdlib_strcat(a1, v11);
  cstdlib_strcat(a1, a3);
  cstdlib_strcat(a1, v12);
  cstdlib_strcat(a1, a4);
  cstdlib_strcat(a1, v13);
  v14 = cstdlib_strlen(a1);

  return LH_itoa(a5 / 1000, &a1[v14], 0xAu);
}

uint64_t hlp_GetMimeParam(uint64_t a1, char *a2, char *__s, char **a4)
{
  v4 = 2296389639;
  if (a2)
  {
    if (__s)
    {
      if (*a2)
      {
        if (*__s)
        {
          *a4 = 0;
          v9 = cstdlib_strlen(__s);
          v10 = cstdlib_strchr(a2, 59);
          v4 = 2296389652;
          if (v10)
          {
            v11 = v10;
            v12 = v9;
            do
            {
              v13 = v11 + 1;
              if (!cstdlib_strncmp(v11 + 1, __s, v12))
              {
                v14 = &v13[v12];
                if (v13[v12] == 61)
                {
                  v15 = -1;
                  do
                  {
                    v16 = v11[v12 + 3 + v15++];
                  }

                  while (v16 != 59 && v16 != 0);
                  v18 = heap_Alloc(*(a1 + 8), (v15 + 1));
                  *a4 = v18;
                  if (!v18)
                  {
                    log_OutPublic(*(a1 + 32), "DOMAIN_MNGR", 47000, 0);
                    return 2296389642;
                  }

                  if (v15)
                  {
                    v19 = v15;
                    cstdlib_strncpy(v18, v14 + 1, v15);
                    v18 = &(*a4)[v15];
                  }

                  else
                  {
                    v19 = 0;
                  }

                  v4 = 0;
                  v13 = &v11[v12 + 1 + v15];
                  *v18 = 0;
                  v12 = v19;
                }
              }

              v11 = cstdlib_strchr(v13, 59);
            }

            while (v11);
          }
        }
      }
    }
  }

  return v4;
}

uint64_t hlp_TraceContent_AP(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  cstdlib_strcpy(__dst, AP_BOUNDARYCND_STR[*(a2 + 28)]);
  if (*(a2 + 28) == 5)
  {
    __dst[1] = *(a2 + 24);
  }

  cstdlib_strcpy(v10, AP_BOUNDARYCND_STR[*(a2 + 32)]);
  if (*(a2 + 32) == 5)
  {
    v10[1] = *(a2 + 25);
  }

  log_OutTraceTuningData(*(*(*a1 + 16) + 32), 204, "%s%s %s%s %s%s %s%s %s%s %s%s %s%s", v4, v5, v6, v7, v8, "NAME");
  return log_OutTraceTuningDataBinary(*(*(*a1 + 16) + 32), 204, "", "application/x-realspeak-usids;version=4.0", a2 + 64, 4 * *(a2 + 56));
}

uint64_t activeprompt_GetRecPromptURI(unsigned int *a1, uint64_t a2, char **a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = 2296389639;
  if (*a1)
  {
    if (a3)
    {
      v6 = *(*a1 + 80);
      if (v6)
      {
        v8 = cstdlib_strlen(v6);
        cstdlib_strcpy(&__dst, "#");
        LH_utoa(a1[16], v13, 0xAu);
        v9 = cstdlib_strlen(&__dst);
        v10 = heap_Alloc(a2, (v8 + v9 + 1));
        *a3 = v10;
        if (v10)
        {
          cstdlib_strcpy(v10, *(*a1 + 80));
          cstdlib_strcpy(&(*a3)[v8], &__dst);
          return 0;
        }

        else
        {
          return 2296389642;
        }
      }
    }
  }

  return v3;
}

uint64_t activeprompt_GetUserNorm(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 2296389639;
  }

  result = 0;
  *a2 = *(a1 + 40);
  return result;
}

uint64_t activeprompt_Insert(uint64_t **a1, uint64_t a2, int a3, int a4, const char **a5, uint64_t *a6, unsigned __int16 *a7, unsigned int a8, unsigned int *a9, uint64_t a10, uint64_t a11, _WORD *a12)
{
  v16 = a2;
  v17 = a1;
  v18 = a11;
  v161 = a9;
  v189 = *MEMORY[0x277D85DE8];
  v19 = **a1;
  v20 = *(v19 + 16);
  v181 = 0;
  v180 = 0;
  v178 = 0;
  v179 = 0;
  v176 = 11;
  v177 = 0;
  v175 = 0;
  v174 = 255;
  v172 = 0;
  v173 = 0;
  v168 = *(v19 + 56);
  v188 = 0;
  v187 = 0;
  v171 = 0;
  v170 = 0;
  __s = 0;
  v21 = cstdlib_strstr(a1[6], "%Ä");
  v167 = a7;
  if (v21)
  {
    a3 = v21 - *(v17 + 12) + 1;
    hlp_RemoveSetPhonInRange(a5, a6, a7, v16, (v21 - *(v17 + 24) + 1));
    goto LABEL_3;
  }

  if (!a3)
  {
    v157 = cstdlib_strlen(*a5);
    v185 = 0;
    v186 = 0;
    v183 = 11;
    v184 = 0;
    v182 = 0;
    NextTokenRecIdAtFrom = (*(v168 + 104))(a10, a11, 1, 0, &v186 + 2);
    if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
    {
      goto LABEL_276;
    }

    LOWORD(a3) = 0;
    if (((*(v168 + 152))(a10, a11, 2, HIWORD(v186), &v184) & 0x80000000) == 0 && v184)
    {
      NextTokenRecIdAtFrom = (*(v168 + 104))(a10, a11, 2, HIWORD(v186), &v186);
      if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
      {
        goto LABEL_276;
      }

      v64 = v186;
      if (v186)
      {
        LOWORD(a3) = 0;
        do
        {
          if (a3)
          {
            break;
          }

          NextTokenRecIdAtFrom = (*(v168 + 168))(a10, a11, v64, 1, 1, &v185, &v185 + 2);
          if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
          {
            goto LABEL_276;
          }

          if (v185 > v16)
          {
            goto LABEL_94;
          }

          NextTokenRecIdAtFrom = (*(v168 + 168))(a10, a11, v186, 0, 1, &v183, &v185 + 2);
          if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
          {
            goto LABEL_276;
          }

          if (v183 != 6)
          {
            goto LABEL_94;
          }

          NextTokenRecIdAtFrom = (*(v168 + 176))(a10, a11, v186, 4, &v182, &v185 + 2);
          if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
          {
            goto LABEL_276;
          }

          if (HIWORD(v185) && !cstdlib_strncmp(v182, "_PR_", HIWORD(v185)))
          {
            NextTokenRecIdAtFrom = (*(v168 + 168))(a10, a11, v186, 2, 1, &v184 + 2, &v185 + 2);
            if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
            {
              goto LABEL_276;
            }

            LOWORD(a3) = HIWORD(v184) >= v16 ? HIWORD(v184) - v16 : 0;
          }

          else
          {
LABEL_94:
            LOWORD(a3) = 0;
          }

          NextTokenRecIdAtFrom = (*(v168 + 120))(a10, a11, v186, &v186);
          if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
          {
            goto LABEL_276;
          }

          v64 = v186;
          if (!v186)
          {
            break;
          }
        }

        while (v185 <= v16);
      }

      else
      {
        LOWORD(a3) = 0;
      }
    }

    if (v16 + a3 >= v157)
    {
      if (v157 > v16)
      {
        LOWORD(a3) = v157 - v16;
      }

      else
      {
        LOWORD(a3) = 0;
      }
    }

    else
    {
      v108 = &(*a5)[v16];
      for (i = v108[a3]; i; i = v108[a3])
      {
        if (!cstdlib_strchr(" _", i) && !cstdlib_strchr(*((*v17)[1] + 192), v108[a3]))
        {
          break;
        }

        LOWORD(a3) = a3 + 1;
      }
    }
  }

  hlp_RemoveSetPhonInRange(a5, a6, a7, v16, a3);
  v24 = cstdlib_strstr(&(*a5)[v16], "§");
  if (!v24)
  {
    v26 = 0;
LABEL_104:
    *a12 -= v26;
LABEL_3:
    if (*(v17 + 2) == 2)
    {
      v22 = *v17;
      if (*(*v17 + 8) == 1)
      {
        v182 = 0;
        RecPromptURI = activeprompt_GetRecPromptURI(v17, *(v20 + 8), &v182);
        if ((RecPromptURI & 0x80000000) != 0)
        {
          v51 = RecPromptURI;
        }

        else
        {
          if (vector_Add(*(**v17 + 88), &v182))
          {
            v172 = v182;
            goto LABEL_123;
          }

          v51 = 2296389642;
          heap_Free(*(v20 + 8), v182);
        }

LABEL_117:
        log_OutPublic(*(v20 + 32), "DOMAIN_MNGR", 47000, 0);
        goto LABEL_277;
      }

      if (!*(*v22 + 64))
      {
        goto LABEL_191;
      }

      v62 = v22[10];
      if (v62)
      {
        v63 = cstdlib_strlen(v62);
        v22 = *v17;
      }

      else
      {
        v63 = 0;
      }

      v65 = v22[5];
      if (v65)
      {
        v66 = cstdlib_strlen(v65);
      }

      else
      {
        v66 = 0;
      }

      v67 = *(v20 + 8);
      v68 = cstdlib_strlen(v17[2]);
      v69 = heap_Alloc(v67, (v63 + v66 + v68 + 1));
      if (!v69)
      {
        v51 = 2296389642;
        goto LABEL_117;
      }

      v70 = v69;
      v71 = (*v17)[10];
      if (v71)
      {
        cstdlib_strcpy(v69, v71);
      }

      v165 = a5;
      cstdlib_strcpy(&v70[v63], v17[2]);
      v72 = *v17;
      if ((*v17)[5])
      {
        v73 = cstdlib_strlen(v70);
        cstdlib_strcpy(&v70[v73], (*v17)[5]);
        v74 = v17;
        v72 = *v17;
      }

      else
      {
        v74 = v17;
      }

      v75 = *v72;
      v76 = *(*(*v72 + 64) + 64);
      v77 = v72[10] ? 0 : v72[6];
      NullHandle = safeh_GetNullHandle();
      v80 = v76(*(v75 + 72), *(v75 + 80), v70, v77, NullHandle, v79, &v172);
      heap_Free(*(v20 + 8), v70);
      v17 = v74;
      a5 = v165;
      if (v80 < 0)
      {
LABEL_191:
        v153 = v17;
        v155 = v20;
        v51 = 0;
        v100 = 0;
        v101 = 0;
LABEL_192:
        v182 = 0;
        StrArrDelete(v101);
        StrArrDelete(v100);
        if ((ssftstring_ObjOpen(*(v155 + 8), &v182) & 0x80000000) == 0)
        {
          if ((ssftstring_AppendCStr(v182, *(*(*v153 + 8) + 168)) & 0x80000000) == 0 && (ssftstring_AppendCStr(v182, "::") & 0x80000000) == 0 && (ssftstring_AppendCStr(v182, *(v153 + 16)) & 0x80000000) == 0)
          {
            v102 = *(v155 + 32);
            ssftstring_CStr(v182);
            log_OutEvent(v102, 14, "%s%s", v103, v104, v105, v106, v107, "APID");
          }

          ssftstring_ObjClose(v182);
        }

        goto LABEL_277;
      }
    }

LABEL_123:
    v51 = 2296389642;
    LODWORD(v187) = -65536;
    BYTE4(v187) = 0;
    v150 = a6;
    v166 = a5;
    v81 = a11;
    NextTokenRecIdAtFrom = (*(v168 + 104))(a10, a11, 1, 0, &v181 + 2);
    if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
    {
      goto LABEL_276;
    }

    NextTokenRecIdAtFrom = (*(v168 + 104))(a10, a11, 2, HIWORD(v181), &v181);
    if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
    {
      goto LABEL_276;
    }

    v82 = v181;
    if (v181)
    {
      v83 = 0;
      v144 = 0;
      v146 = 0;
      v148 = 0;
      v145 = 0;
      v158 = v16 + a3;
      v147 = 1;
      while (1)
      {
        NextTokenRecIdAtFrom = (*(v168 + 168))(a10, a11, v82, 0, 1, &v176, &v178 + 2);
        if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
        {
          goto LABEL_276;
        }

        NextTokenRecIdAtFrom = (*(v168 + 168))(a10, a11, v181, 1, 1, &v177, &v178 + 2);
        if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
        {
          goto LABEL_276;
        }

        if (v176 - 9 < 2)
        {
LABEL_132:
          if (v177 < v16 || v158 <= v177)
          {
            v84 = 0;
            v89 = v148;
            if (v158 <= v177)
            {
              v89 = 1;
            }

            LODWORD(v148) = v89;
          }

          else if (*(v17 + 2) == 1)
          {
            v84 = v181;
            if (((*(v168 + 184))(a10, a11, v181, 14, &v177 + 2) & 0x80000000) == 0 && HIWORD(v177))
            {
              NextTokenRecIdAtFrom = (*(v168 + 176))(a10, a11, v181, 14, &v170, &v178 + 2);
              if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
              {
                goto LABEL_276;
              }

              v85 = v170;
              if (v170)
              {
                v86 = v146;
                if (!v146)
                {
                  v86 = StrArrInit(*(**v17 + 16));
                  if (!v86)
                  {
                    goto LABEL_277;
                  }

                  v85 = v170;
                }

                v146 = v86;
                NextTokenRecIdAtFrom = StrArrSave(v86, v83, v85);
                if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
                {
                  goto LABEL_276;
                }
              }
            }

            if (((*(v168 + 184))(a10, a11, v181, 5, &v177 + 2) & 0x80000000) == 0 && HIWORD(v177))
            {
              NextTokenRecIdAtFrom = (*(v168 + 176))(a10, a11, v181, 5, &__s, &v178 + 2);
              if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
              {
                goto LABEL_276;
              }

              v87 = __s;
              if (__s)
              {
                v88 = v144;
                if (!v144)
                {
                  v88 = StrArrInit(*(**v17 + 16));
                  if (!v88)
                  {
                    goto LABEL_277;
                  }

                  v87 = __s;
                }

                v144 = v88;
                NextTokenRecIdAtFrom = StrArrSave(v88, v83, v87);
                if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
                {
                  goto LABEL_276;
                }
              }
            }
          }

          else
          {
            if (v147 == 1)
            {
              v90 = 14;
            }

            else
            {
              v90 = 12;
            }

            v176 = v90;
            NextTokenRecIdAtFrom = (*(v168 + 160))(a10, a11, v181, 0, 1, &v176, &v178);
            if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
            {
              goto LABEL_276;
            }

            v84 = 0;
            v147 = 0;
          }

          goto LABEL_172;
        }

        if (v176 != 15)
        {
          break;
        }

        if (*(v17 + 2) != 1)
        {
          goto LABEL_160;
        }

        if (v177 < v16 || v158 <= v177)
        {
          v84 = 0;
          if (v148)
          {
            v91 = 1;
          }

          else
          {
            v91 = v158 > v177;
          }

          v92 = v145;
          if (!v91)
          {
            v92 = v181;
          }

          v145 = v92;
        }

        else
        {
          v84 = v181;
          if (v177 == v16)
          {
            hlp_SavePhraseProps(v168, a10, a11, v181, &v187);
          }
        }

LABEL_172:
        NextTokenRecIdAtFrom = (*(v168 + 120))(a10, a11, v181, &v181);
        if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
        {
          goto LABEL_276;
        }

        if (v84)
        {
          NextTokenRecIdAtFrom = (*(v168 + 168))(a10, a11, v84, 8, 1, &v175, &v178 + 2);
          if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
          {
            goto LABEL_276;
          }

          v93 = (*(v168 + 184))(a10, a11, v84, 18, &v177 + 2);
          v94 = 0;
          if ((v93 & 0x80000000) == 0 && HIWORD(v177))
          {
            NextTokenRecIdAtFrom = (*(v168 + 176))(a10, a11, v84, 18, &v173, &v178 + 2);
            if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
            {
              goto LABEL_276;
            }

            v94 = 0;
            if (HIWORD(v178) && v173)
            {
              v94 = cstdlib_strcmp(v173, "external") == 0;
            }
          }

          HIDWORD(v148) = v94;
          if (v176 <= 0xA && ((1 << v176) & 0x610) != 0)
          {
            ++v83;
          }

          NextTokenRecIdAtFrom = (*(v168 + 192))(a10, a11, v84);
          if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
          {
            goto LABEL_276;
          }
        }

        v82 = v181;
        if (!v181)
        {
          if (*(v17 + 2) != 1)
          {
            v81 = a11;
            v97 = a9;
            v100 = v144;
            goto LABEL_214;
          }

          v95 = v83;
          v96 = a6;
          v97 = a9;
          if (v146)
          {
            StrArrDump(v146, v83, "NLU feat Before AP subst");
            v98 = v146;
            v99 = *(v17 + 28);
            v100 = v144;
            if (v146[1] >= v99)
            {
              v81 = a11;
            }

            else
            {
              NextTokenRecIdAtFrom = StrArrRealloc(v146, v99 + 10);
              v81 = a11;
              if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
              {
                goto LABEL_276;
              }

              v99 = *(v17 + 28);
              v98 = v146;
            }

            NextTokenRecIdAtFrom = NLUFeatAdaptToAp(v98, v95, v99);
            if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
            {
              goto LABEL_276;
            }

            StrArrDump(v98, *(v17 + 28), "NLU feats after AP subst");
          }

          else
          {
            v98 = 0;
            v81 = a11;
            v100 = v144;
          }

          v146 = v98;
          if (!v100)
          {
            goto LABEL_199;
          }

          StrArrDump(v100, v95, "POS Before AP subst");
          v142 = *(v17 + 28);
          if (v100[1] < v142)
          {
            NextTokenRecIdAtFrom = StrArrRealloc(v100, v142 + 10);
            if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
            {
              goto LABEL_276;
            }

            v142 = *(v17 + 28);
          }

          NextTokenRecIdAtFrom = POSAdaptToAp(v100, v95, v142);
          if ((NextTokenRecIdAtFrom & 0x80000000) == 0)
          {
            StrArrDump(v100, *(v17 + 28), "POS after AP subst");
            goto LABEL_199;
          }

          goto LABEL_276;
        }
      }

      if (v176 == 4)
      {
        goto LABEL_132;
      }

LABEL_160:
      v84 = 0;
      goto LABEL_172;
    }

    v100 = 0;
    v146 = 0;
    HIDWORD(v148) = 0;
    LOWORD(v145) = 0;
    v96 = a6;
    v97 = a9;
    if (*(v17 + 2) == 1)
    {
LABEL_199:
      NextTokenRecIdAtFrom = hlp_AlignOrthAndPhonWords(a10, v81, v168, v17, v166, v96, v167, v97, a4, v16, &v171);
      if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
      {
        goto LABEL_276;
      }
    }

LABEL_214:
    v153 = v17;
    v110 = v16 + a4;
    v112 = v97[1];
    v111 = v97[2];
    v163 = *(v97 + 2);
    v113 = v20;
    v114 = v171 + a3;
    v155 = v113;
    v115 = *(v113 + 8);
    v116 = v110;
    v159 = *v97;
    if (v110 <= v112)
    {
      v117 = (v171 + a3);
      v51 = CI_Update(v115, v97, 0, v112, v114);
      if ((v51 & 0x80000000) != 0)
      {
        goto LABEL_277;
      }
    }

    else
    {
      v51 = CI_Update(v115, v97, *v97, v112, v110 - v112);
      if ((v51 & 0x80000000) != 0)
      {
        goto LABEL_277;
      }

      v117 = v114;
      v118 = CILE_New(*(v155 + 8), 0, v116, v114);
      if (!v118)
      {
        v138 = *(v155 + 32);
        goto LABEL_264;
      }

      *(v97 + 2) = v118;
      v161 = v118;
      v81 = a11;
    }

    v119 = v111 + v112 - (v116 + v117);
    if (v111 + v112 <= v116 + v117)
    {
      v120 = v155;
      v122 = v150;
      v121 = v161;
    }

    else
    {
      v120 = v155;
      v121 = CILE_New(*(v155 + 8), v159, v116 + v117, v119);
      v122 = v150;
      if (!v121)
      {
        log_OutPublic(*(v155 + 32), "DOMAIN_MNGR", 47000, 0);
        *(v161 + 2) = v163;
LABEL_265:
        v51 = 2296389642;
        goto LABEL_277;
      }

      *(v161 + 2) = v121;
    }

    *(v121 + 2) = v163;
    if (*(v153 + 8) == 1)
    {
      v180 = 0;
      NextTokenRecIdAtFrom = (*(v168 + 104))(a10, v81, 1, 0, &v181 + 2);
      if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
      {
        goto LABEL_276;
      }

      NextTokenRecIdAtFrom = (*(v168 + 104))(a10, v81, 2, HIWORD(v181), &v181);
      if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
      {
        goto LABEL_276;
      }

      NextTokenRecIdAtFrom = hlp_GetNextTokenRecIdAtFrom(a10, v81, v168, v16, v181, &v180);
      if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
      {
        goto LABEL_276;
      }

      if ((~v187 & 0xFFFF0000) != 0)
      {
        NextTokenRecIdAtFrom = hlp_InsertInitialPhraseRecord(a10, v81, v168, HIWORD(v181), &v187, &v180);
        if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
        {
          goto LABEL_276;
        }
      }

      v123 = v100;
      v124 = *(v153 + 56);
      if (*(v153 + 56))
      {
        v125 = 0;
        v126 = 0;
        do
        {
          LOWORD(v182) = 0;
          if (v124 - 1 == v125)
          {
            v126 = 1;
          }

          v127 = v16;
          v128 = hlp_SearchWordBoundaryInOrth(&(*v166)[v16]);
          if (v128 == 0xFFFF)
          {
            LOWORD(v128) = cstdlib_strlen(&(*v166)[v16]);
          }

          v129 = v128 + v16;
          NextTokenRecIdAtFrom = hlp_InsertPromptWordRecord(a10, a11, v168, v153, v146, v123, v125, v126, HIWORD(v181), v16, SBYTE1(v16), v128 + v16, v175, SHIDWORD(v148), &v182, &v174, &v179, &v180);
          if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
          {
            goto LABEL_276;
          }

          v130 = (*v166)[v129];
          if (v130)
          {
            LOWORD(v16) = v129;
            v131 = v153;
            do
            {
              if (!cstdlib_strchr(" _", v130))
              {
                break;
              }

              LOWORD(v16) = v16 + 1;
              v130 = (*v166)[v16];
            }

            while (v130);
          }

          else
          {
            LOWORD(v16) = v129;
            v131 = v153;
          }

          NextTokenRecIdAtFrom = hlp_GetNextTokenRecIdAtFrom(a10, a11, v168, v16, v180, &v180);
          if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
          {
            goto LABEL_276;
          }

          if (!v179)
          {
            NextTokenRecIdAtFrom = hlp_CreateOrUpdatePhraseRecord(a10, a11, v168, v126, v145, v127, v174, v182, &v180);
            if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
            {
              goto LABEL_276;
            }
          }

          ++v125;
          v124 = *(v131 + 56);
        }

        while (v125 < v124);
      }

      v51 = (*(v168 + 272))(a10, a11, 16, 3, 0, 0);
      v100 = v123;
LABEL_261:
      v101 = v146;
      if ((v51 & 0x80000000) != 0)
      {
        goto LABEL_277;
      }

      goto LABEL_192;
    }

    v132 = *v167;
    v133 = *v122;
    v134 = a8;
    if (v132 > a8)
    {
      v135 = a8;
      v136 = (v133 + 32 * a8 + 12);
      while (1)
      {
        v137 = *v136;
        v136 += 8;
        if (v137 > v116)
        {
          break;
        }

        if (v132 == ++v135)
        {
          v134 = *v167;
          goto LABEL_255;
        }
      }

      v134 = v135;
    }

LABEL_255:
    v139 = heap_Realloc(*(v120 + 8), v133, 32 * v132 + 32);
    if (v139)
    {
      *v122 = v139;
      v140 = *v167;
      if (v134 < v140)
      {
        cstdlib_memmove((v139 + 32 * v134 + 32), (v139 + 32 * v134), 32 * (v140 - v134));
        LOWORD(v140) = *v167;
        v139 = *v122;
      }

      *v167 = v140 + 1;
      cstdlib_memset((v139 + 32 * v134), 0, 0x20uLL);
      v141 = *v122 + 32 * v134;
      *v141 = 26;
      if (v134)
      {
        *(v141 + 4) = *(v141 - 28);
      }

      *(v141 + 12) = v116;
      *(v141 + 24) = v172;
      goto LABEL_261;
    }

    v138 = *(v120 + 32);
LABEL_264:
    log_OutPublic(v138, "DOMAIN_MNGR", 47000, 0);
    goto LABEL_265;
  }

  v25 = v24;
  v26 = 0;
  v27 = "§";
  v152 = v17;
  v154 = v20;
  v164 = a5;
  v151 = v16;
  while (1)
  {
    if (cstdlib_strlen(v27) + 1 >= a3)
    {
      goto LABEL_104;
    }

    v28 = a3;
    v29 = v27;
    v156 = v28;
    v30 = v25 - *a5;
    v31 = v28 + v16;
    if (v30 >= v31)
    {
      v17 = v152;
      LOWORD(a3) = v28;
      goto LABEL_104;
    }

    v32 = cstdlib_strlen(v29);
    v33 = *a5;
    if (v30 > v16 && v33[v30 - 1] == 32)
    {
      ++v32;
      LOWORD(v30) = v30 - 1;
      v34 = a10;
      v35 = v168;
    }

    else
    {
      v36 = v32 + v30;
      v34 = a10;
      v35 = v168;
      if (v36 < v31 && v33[v36] == 32)
      {
        ++v32;
      }
    }

    v27 = v29;
    v37 = cstdlib_strlen(v33);
    v38 = v32;
    if (v32)
    {
      break;
    }

    v58 = v30;
    v17 = v152;
    v59 = v156;
LABEL_72:
    v26 += v38;
    v48 = v59 >= v38;
    v61 = v59 - v38;
    if (v48)
    {
      LOWORD(a3) = v61;
    }

    else
    {
      LOWORD(a3) = 0;
    }

    a5 = v164;
    v25 = cstdlib_strstr(&(*v164)[v58], v27);
    v20 = v154;
    v16 = v151;
    if (!v25)
    {
      goto LABEL_104;
    }
  }

  v149 = v30;
  cstdlib_memmove(&(*v164)[v30], &(*v164)[v30 + v32], v37 - (v30 + v32) + 1);
  v39 = *v167;
  if (*v167)
  {
    v40 = a4 + v30;
    v41 = v40 + v32;
    v42 = (*a6 + 16);
    do
    {
      v43 = *(v42 - 1);
      v44 = *v42;
      v45 = v43 - v32;
      if (v43 <= v41)
      {
        v45 = a4 + v30;
      }

      if (v43 <= v40)
      {
        v45 = *(v42 - 1);
      }

      if (v44)
      {
        v46 = v44 + v43;
        v47 = v46 - v32;
        if (v46 <= v41)
        {
          v47 = a4 + v30;
        }

        if (v46 > v40)
        {
          v46 = v47;
        }

        v48 = v46 >= v45;
        v49 = v46 - v45;
        if (!v48)
        {
          v49 = 0;
        }

        *v42 = v49;
      }

      *(v42 - 1) = v45;
      v42 += 8;
      --v39;
    }

    while (v39);
  }

  LOWORD(v182) = 0;
  LOWORD(v183) = 0;
  v185 = 0;
  v186 = 0;
  NextTokenRecIdAtFrom = (*(v35 + 104))(v34, v18, 1, 0, &v182);
  if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
  {
    goto LABEL_276;
  }

  v51 = (*(v35 + 104))(v34, v18, 2, v182, &v183);
  if ((v51 & 0x80000000) != 0 || !v183)
  {
LABEL_65:
    if ((v51 & 0x80000000) != 0)
    {
      goto LABEL_277;
    }

LABEL_66:
    a9[2] = (a9[2] - v38) & ~((a9[2] - v38) >> 31);
    v60 = *(a9 + 2);
    if (v60)
    {
      v27 = v29;
      do
      {
        *(v60 + 4) = (*(v60 + 4) - v38) & ~((*(v60 + 4) - v38) >> 31);
        v60 = *(v60 + 16);
      }

      while (v60);
      v17 = v152;
    }

    else
    {
      v17 = v152;
      v27 = v29;
    }

    v59 = v156;
    v58 = v149;
    goto LABEL_72;
  }

  NextTokenRecIdAtFrom = (*(v35 + 168))(v34, v18);
  if ((NextTokenRecIdAtFrom & 0x80000000) == 0)
  {
    v52 = v38 + v30;
    do
    {
      NextTokenRecIdAtFrom = (*(v35 + 168))(v34, v18, v183, 2, 1, &v185, &v186 + 2);
      if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
      {
        break;
      }

      if (HIWORD(v185) > v30)
      {
        v53 = v52 >= HIWORD(v185) ? v30 : HIWORD(v185) - v38;
        HIWORD(v185) = v53;
        NextTokenRecIdAtFrom = (*(v35 + 160))(v34, v18, v183, 1, 1, &v185 + 2, &v186);
        if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
        {
          break;
        }
      }

      v54 = v185;
      if (v185 > v30)
      {
        if (v52 >= v185)
        {
          v55 = v30;
        }

        else
        {
          v55 = v185 - v38;
        }

        LOWORD(v185) = v55;
        NextTokenRecIdAtFrom = (*(v35 + 160))(v34, v18, v183, 2, 1, &v185, &v186);
        if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
        {
          break;
        }

        v54 = v185;
      }

      v56 = v18;
      if (v54 <= HIWORD(v185))
      {
        v57 = v183;
      }

      else
      {
        v57 = 0;
      }

      NextTokenRecIdAtFrom = (*(v35 + 120))(v34, v56);
      if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
      {
        break;
      }

      if (v57)
      {
        v51 = (*(v35 + 192))(v34, a11, v57);
        if ((v51 & 0x80000000) != 0)
        {
          v18 = a11;
          goto LABEL_65;
        }

        v18 = a11;
        if (!v183)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v18 = a11;
        if (!v183)
        {
          goto LABEL_66;
        }
      }

      NextTokenRecIdAtFrom = (*(v35 + 168))(v34, v18);
    }

    while ((NextTokenRecIdAtFrom & 0x80000000) == 0);
  }

LABEL_276:
  v51 = NextTokenRecIdAtFrom;
LABEL_277:
  *a12 += v171;
  return v51;
}

const char **hlp_RemoveSetPhonInRange(const char **result, void *a2, unsigned __int16 *a3, unsigned int a4, int a5)
{
  v5 = *a3;
  if (*a3)
  {
    v9 = result;
    v10 = 0;
    v11 = 0;
    v18 = 0;
    v16 = 0;
    v15 = 0;
    v12 = a5 + a4;
    do
    {
      if (*(*a2 + 32 * v10) == 34)
      {
        result = hlp_GetRangeForSETPHON(*v9, *a2, v5, v11, &v18, &v17, &v16, &v15 + 1, &v15);
        if (result)
        {
          v13 = HIDWORD(v15) >= a4;
        }

        else
        {
          v13 = 0;
        }

        if (!v13 || v15 >= v12)
        {
          ++v11;
          v5 = *a3;
        }

        else
        {
          result = cstdlib_memmove((*a2 + 32 * v10), (*a2 + 32 * v10 + 32), 32 * (*a3 + ~v10));
          v5 = *a3 - 1;
          *a3 = v5;
        }
      }

      else
      {
        ++v11;
      }

      v10 = v11;
    }

    while (v11 < v5);
  }

  return result;
}

void *StrArrInit(uint64_t a1)
{
  v2 = heap_Alloc(*(a1 + 8), 24);
  v3 = v2;
  if (v2)
  {
    *v2 = a1;
    v2[1] = 10;
    v4 = heap_Alloc(*(a1 + 8), 80);
    v3[2] = v4;
    if (v4)
    {
      v5 = v3[1];
      if (v5)
      {
        for (i = 0; i != v5; ++i)
        {
          *(v3[2] + 8 * i) = 0;
        }
      }
    }

    else
    {
      StrArrDelete(v3);
      return 0;
    }
  }

  return v3;
}

uint64_t StrArrSave(void *a1, unint64_t a2, uint64_t __s)
{
  v3 = a1[2];
  if (!v3)
  {
    return 7;
  }

  if (a1[1] <= a2)
  {
    if (StrArrRealloc(a1, a2 + 10))
    {
      return 2296389642;
    }

    v3 = a1[2];
  }

  v7 = *(v3 + 8 * a2);
  if (v7)
  {
    heap_Free(*(*a1 + 8), v7);
    *(a1[2] + 8 * a2) = 0;
  }

  if (__s)
  {
    v8 = *(*a1 + 8);
    v9 = cstdlib_strlen(__s);
    *(a1[2] + 8 * a2) = heap_Alloc(v8, (v9 + 1));
    v10 = *(a1[2] + 8 * a2);
    if (v10)
    {
      cstdlib_strcpy(v10, __s);
      return 0;
    }

    else
    {
      __s = 2296389642;
      StrArrDelete(a1);
    }
  }

  return __s;
}

uint64_t hlp_SavePhraseProps(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = 0;
  __src = 0;
  if (a4 && a5)
  {
    v9 = result;
    result = (*(result + 168))(a2, a3, a4, 8, 1, a5, &v11);
    if ((result & 0x80000000) != 0 || (result = (*(v9 + 168))(a2, a3, a4, 7, 1, a5 + 2, &v11), (result & 0x80000000) != 0) || (result = (*(v9 + 176))(a2, a3, a4, 4, &__src, &v11), (result & 0x80000000) != 0))
    {
      *a5 = -65536;
      *(a5 + 4) = 0;
    }

    else if (__src)
    {
      if (v11)
      {
        result = cstdlib_strncpy((a5 + 4), __src, 8uLL);
        *(a5 + 11) = 0;
      }
    }
  }

  return result;
}

void *StrArrDump(void *result, uint64_t a2, const char *a3)
{
  v4 = result;
  if (a3)
  {
    result = log_OutText(*(*result + 32), "DOMAIN_MNGR", 5, 0, "%s", a3);
  }

  if (a2)
  {
    v5 = 0;
    do
    {
      v6 = *(*v4 + 32);
      if (*(v4[2] + 8 * v5))
      {
        result = log_OutText(v6, "DOMAIN_MNGR", 5, 0, "%s %3u: %s");
      }

      else
      {
        result = log_OutText(v6, "DOMAIN_MNGR", 5, 0, "%s %3u: <NULL>");
      }

      ++v5;
    }

    while (a2 != v5);
  }

  return result;
}

uint64_t StrArrRealloc(void *a1, unint64_t a2)
{
  if (a1[1] >= a2)
  {
    return 0;
  }

  v4 = heap_Realloc(*(*a1 + 8), a1[2], 8 * (a2 & 0x1FFFFFFF));
  if (v4)
  {
    a1[2] = v4;
    v5 = a1[1];
    if (v5 < a2)
    {
      do
      {
        *(a1[2] + 8 * v5++) = 0;
      }

      while (a2 != v5);
    }

    result = 0;
    a1[1] = a2;
  }

  else
  {
    StrArrDelete(a1);
    return 2296389642;
  }

  return result;
}

uint64_t NLUFeatAdaptToAp(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return 7;
  }

  v4 = a2;
  v6 = a1[1];
  if (v6 < a2)
  {
    return 7;
  }

  v7 = 0;
  if (a3 && a2 && a3 != a2)
  {
    if (a3 <= a2)
    {
      v41 = 0;
      v21 = StrArrInit(*a1);
      if (!v21)
      {
        return 2296389642;
      }

      v22 = v21;
      v23 = a3 - 1;
      if (v23 >= v4)
      {
        v24 = 0;
      }

      else
      {
        v24 = 0;
        v25 = v23;
        do
        {
          v26 = a1[2];
          if (v26)
          {
            if (a1[1] > v25)
            {
              for (i = *(v26 + 8 * v25); i; i = hlp_NLUStrNext(i))
              {
                if (cstdlib_strchr("seiSEI", *i) && i[1] == 95)
                {
                  v28 = *(*a1 + 8);
                  v29 = hlp_NLUStrLength(i);
                  v30 = strhelper_StringAppend(v28, 0, i, v29, &v41, 0xAuLL);
                  if (!v30)
                  {
                    goto LABEL_70;
                  }

                  v31 = v30;
                  v32 = StrArrSave(v22, v24, v30);
                  if (v32)
                  {
                    v7 = v32;
                    goto LABEL_76;
                  }

                  heap_Free(*(*a1 + 8), v31);
                  v41 = 0;
                  ++v24;
                }
              }
            }
          }

          ++v25;
        }

        while (v25 != v4);
      }

      StrArrDump(v22, v24, "Extra words before purge");
      PurgeNLUStrArr(v22, v24, 69, 83, 0);
      PurgeNLUStrArr(v22, v24, 73, 73, 73);
      PurgeNLUStrArr(v22, v24, 73, 69, 69);
      PurgeNLUStrArr(v22, v24, 83, 73, 83);
      StrArrDump(v22, v24, "Extra words after purge");
      v33 = a1[2];
      if (v33 && a1[1] > v23 && (v34 = *(v33 + 8 * v23)) != 0)
      {
        v31 = 0;
        while (1)
        {
          if (!cstdlib_strchr("seiSEI", *v34) || v34[1] != 95)
          {
            if (v41)
            {
              v31 = strhelper_StringAppend(*(*a1 + 8), v31, ";", 0xFFFFFFFFFFFFFFFFLL, &v41, 0xAuLL);
              if (!v31)
              {
                break;
              }
            }

            v35 = *(*a1 + 8);
            v36 = hlp_NLUStrLength(v34);
            v31 = strhelper_StringAppend(v35, v31, v34, v36, &v41, 0xAuLL);
            if (!v31)
            {
              break;
            }
          }

          v34 = hlp_NLUStrNext(v34);
          if (!v34)
          {
            goto LABEL_60;
          }
        }
      }

      else
      {
        v31 = 0;
LABEL_60:
        if (!v24)
        {
          v7 = 0;
LABEL_72:
          if (v31)
          {
LABEL_76:
            heap_Free(*(*a1 + 8), v31);
          }

          goto LABEL_77;
        }

        v37 = 0;
        while (1)
        {
          v38 = v22[2];
          if (v38)
          {
            if (v22[1] > v37)
            {
              v39 = *(v38 + 8 * v37);
              if (v39)
              {
                if (v41)
                {
                  v31 = strhelper_StringAppend(*(*a1 + 8), v31, ";", 0xFFFFFFFFFFFFFFFFLL, &v41, 0xAuLL);
                  if (!v31)
                  {
                    break;
                  }
                }

                v31 = strhelper_StringAppend(*(*a1 + 8), v31, v39, 0xFFFFFFFFFFFFFFFFLL, &v41, 0xAuLL);
                if (!v31)
                {
                  break;
                }
              }
            }
          }

          v40 = StrArrSave(a1, v23, v31);
          if (v24 == ++v37)
          {
            v7 = v40;
            goto LABEL_72;
          }
        }
      }

LABEL_70:
      v7 = 2296389642;
LABEL_77:
      v41 = 0;
      StrArrDelete(v22);
      return v7;
    }

    if (v6 > a2 - 1 && (v10 = *(v3 + 8 * (a2 - 1))) != 0)
    {
      v11 = *(*a1 + 8);
      v12 = cstdlib_strlen(v10);
      v13 = heap_Alloc(v11, (v12 + 1));
      if (v13)
      {
        v14 = v13;
        cstdlib_strcpy(v13, v10);
        v15 = v14;
        do
        {
          if ((*v15 | 0x20) == 0x73 && v15[1] == 95)
          {
            v16 = hlp_NLUStrLength(v15);
            v17 = 1;
            v18 = v15;
            do
            {
              if ((*v18 | 0x20) == 0x65 && v18[1] == 95 && v16 == hlp_NLUStrLength(v18) && !cstdlib_strncmp(v15 + 2, v18 + 2, v16 - 2))
              {
                v17 = 0;
              }

              v18 = hlp_NLUStrNext(v18);
            }

            while (v18);
            if (v17)
            {
              *v15 = 73;
            }
          }

          v15 = hlp_NLUStrNext(v15);
        }

        while (v15);
        v19 = a3 - 1;
        do
        {
          v7 = StrArrSave(a1, v4, v14);
          if (v7)
          {
            break;
          }
        }

        while (v19 != v4++);
        heap_Free(*(*a1 + 8), v14);
      }

      else
      {
        return 10;
      }
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t POSAdaptToAp(void *a1, unint64_t a2, unint64_t a3)
{
  if (!a1[2])
  {
    return 7;
  }

  v3 = a2;
  if (a1[1] < a2)
  {
    return 7;
  }

  result = 0;
  if (a2 && a3 > a2)
  {
    while (1)
    {
      result = StrArrSave(a1, v3, "*");
      if (result)
      {
        break;
      }

      if (a3 == ++v3)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t hlp_AlignOrthAndPhonWords(uint64_t a1, uint64_t a2, uint64_t a3, char **a4, const char **a5, void *a6, _WORD *a7, uint64_t a8, int a9, unsigned __int16 a10, _WORD *a11)
{
  v17 = a10;
  *a11 = 0;
  v18 = hlp_SearchWordBoundaryInOrth(a4[6]);
  if (v18 == 0xFFFF)
  {
    v19 = 1;
  }

  else
  {
    v20 = 0;
    v19 = 1;
    do
    {
      ++v19;
      v20 += v18 + 1;
      v18 = hlp_SearchWordBoundaryInOrth(&a4[6][v20]);
    }

    while (v18 != 0xFFFF);
  }

  for (i = (*a5)[a10]; i; i = (*a5)[v17])
  {
    if (cstdlib_strchr(" _", i))
    {
      break;
    }

    v17 = (v17 + 1);
  }

  v22 = *(a4 + 28);
  if (v22 >= 2)
  {
    v52 = a6;
    v51 = a8;
    v23 = 1;
    v24 = v17;
    v58 = a3;
    v25 = 1;
    while (1)
    {
      v26 = *(*a4 + 1);
      v27 = *(v26 + 280);
      if (v27)
      {
        v28 = *(v27 + 4 * *(a4 + 24));
        if (v28 == -1)
        {
          goto LABEL_25;
        }

        v29 = *(*(v26 + 288) + (v28 + v25));
      }

      else
      {
        if (v19 <= v22)
        {
          if (v22 - v19 < v25)
          {
            goto LABEL_25;
          }

          goto LABEL_27;
        }

        if (v25 != 1)
        {
          goto LABEL_25;
        }

        v29 = v19 - v22 + 1;
      }

      if (v29)
      {
        if (v29 == 1)
        {
LABEL_25:
          v31 = v24;
        }

        else
        {
          v56 = v25;
          v30 = (v29 - 2);
          do
          {
            (*a5)[v24] = 45;
            do
            {
              v24 = (v24 + 1);
              v31 = v24;
            }

            while ((*a5)[v24] && !cstdlib_strchr(" _", (*a5)[v24]));
            --v29;
          }

          while (v29 > 1u);
          v23 += v30 + 1;
          v25 = v56;
        }

        ++v23;
        v17 = v24;
        goto LABEL_61;
      }

LABEL_27:
      v57 = v25;
      if (v24)
      {
        v17 = v24;
        while (cstdlib_strchr(*(*(*a4 + 1) + 192), (*a5)[(v17 - 1)]))
        {
          if (!--v17)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
LABEL_31:
        v17 = 0;
      }

      v54 = *(**a4 + 16);
      v32 = cstdlib_strlen(*a5);
      v33 = cstdlib_strlen("§");
      v31 = v17;
      if (v32 >= v17)
      {
        v35 = v33;
        v36 = heap_Realloc(*(v54 + 8), *a5, (v32 + v33 + 2));
        if (!v36)
        {
          log_OutPublic(*(v54 + 32), "DOMAIN_MNGR", 47000, 0);
          return 2296389642;
        }

        *a5 = v36;
        cstdlib_memmove(&v36[v17 + 1 + v35], &v36[v17], v32 - v17 + 1);
        (*a5)[v17] = 32;
        cstdlib_memcpy(&(*a5)[v17 + 1], "§", v35);
        v37 = *a7;
        v55 = v35 + 1;
        v38 = (v35 + 1);
        if (*a7)
        {
          v39 = a9 + v17;
          v40 = (*v52 + 16);
          do
          {
            v41 = *(v40 - 1);
            if (v41 >= v39)
            {
              *(v40 - 1) = v41 + v38;
            }

            else if (*v40 + v41 >= v39)
            {
              *v40 += v38;
            }

            v40 += 8;
            --v37;
          }

          while (v37);
        }

        v61 = 0;
        v62 = 0;
        v60 = 0;
        result = (*(v58 + 104))(a1, a2, 1, 0, &v62 + 2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = (*(v58 + 104))(a1, a2, 2, HIWORD(v62), &v62);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v43 = v62;
        v45 = v58;
        v44 = a1;
        if (v62)
        {
          while (1)
          {
            result = (*(v45 + 168))(v44, a2, v43, 1, 1, &v60 + 2, &v61 + 2);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = (*(v45 + 168))(v44, a2, v62, 2, 1, &v60, &v61 + 2);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v45 = v58;
            v44 = a1;
            if (HIWORD(v60) > v17)
            {
              HIWORD(v60) += v55;
              result = (*(v58 + 160))(a1, a2, v62, 1, 1, &v60 + 2, &v61);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }
            }

            if (v60 > v17)
            {
              LOWORD(v60) = v60 + v55;
              result = (*(v58 + 160))(a1, a2, v62, 2, 1, &v60, &v61);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }
            }

            result = (*(v58 + 120))(a1, a2, v62, &v62);
            if ((result & 0x80000000) == 0)
            {
              v43 = v62;
              if (v62)
              {
                continue;
              }
            }

            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            break;
          }
        }

        *(v51 + 8) = (*(v51 + 8) + v38) & ~((*(v51 + 8) + v38) >> 31);
        v46 = *(v51 + 16);
        if (v46)
        {
          v25 = v57;
          do
          {
            *(v46 + 4) = (*(v46 + 4) + v38) & ~((*(v46 + 4) + v38) >> 31);
            v46 = *(v46 + 16);
          }

          while (v46);
        }

        else
        {
          v25 = v57;
        }

        v34 = v55;
      }

      else
      {
        v34 = 0;
        v25 = v57;
      }

      *a11 += v34;
LABEL_61:
      v47 = *a5;
      while (1)
      {
        v48 = v47[v31];
        if (!v48)
        {
          break;
        }

        if (!cstdlib_strchr(" _", v48) && !cstdlib_strchr(*(*(*a4 + 1) + 192), (*a5)[v31]))
        {
          v49 = (*a5)[v17];
          if (v49)
          {
            v50 = v17;
            while (!cstdlib_strchr(" _", v49))
            {
              v50 = (v50 + 1);
              v49 = (*a5)[v50];
              v17 = v50;
              if (!v49)
              {
                goto LABEL_72;
              }
            }

            v17 = v50;
          }

          break;
        }

        v17 = (v17 + 1);
        v47 = *a5;
        v31 = v17;
      }

LABEL_72:
      ++v25;
      v22 = *(a4 + 28);
      v24 = v17;
      if (v25 >= v22)
      {
        goto LABEL_75;
      }
    }
  }

  v23 = 1;
LABEL_75:
  while (v23 < v19)
  {
    (*a5)[v17] = 45;
    do
    {
      LOWORD(v17) = v17 + 1;
    }

    while ((*a5)[v17] && !cstdlib_strchr(" _", (*a5)[v17]));
    ++v23;
  }

  return 0;
}

uint64_t hlp_GetNextTokenRecIdAtFrom(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, _WORD *a6)
{
  v14 = a5;
  if (!a5)
  {
    return 0;
  }

  v13 = 0;
  v12 = 0;
  do
  {
    result = (*(a3 + 168))(a1, a2, a5, 1, 1, &v13, &v12);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    if (v13 >= a4)
    {
      break;
    }

    *a6 = v14;
    result = (*(a3 + 120))(a1, a2);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    LOWORD(a5) = v14;
  }

  while (v14);
  return result;
}

uint64_t hlp_InsertInitialPhraseRecord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _WORD *a6)
{
  v17 = 0;
  v16 = 15;
  if (*a6)
  {
    result = (*(a3 + 80))(a1, a2);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  else
  {
    result = (*(a3 + 72))(a1, a2, 2, a4, a6);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  v15 = 0;
  result = (*(a3 + 160))(a1, a2, *a6, 0, 1, &v16, &v15);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a3 + 160))(a1, a2, *a6, 1, 1, &v17, &v15);
    if ((result & 0x80000000) == 0)
    {
      result = (*(a3 + 160))(a1, a2, *a6, 2, 1, &v17, &v15);
      if ((result & 0x80000000) == 0)
      {
        result = (*(a3 + 160))(a1, a2, *a6, 7, 1, a5 + 2, &v15);
        if ((result & 0x80000000) == 0)
        {
          result = (*(a3 + 160))(a1, a2, *a6, 8, 1, a5, &v15);
          if ((result & 0x80000000) == 0)
          {
            v12 = *(a3 + 160);
            v13 = *a6;
            v14 = cstdlib_strlen((a5 + 4));
            return v12(a1, a2, v13, 4, (v14 + 1), a5 + 4, &v15);
          }
        }
      }
    }
  }

  return result;
}

uint64_t hlp_SearchWordBoundaryInOrth(char *a1)
{
  v2 = cstdlib_strstr(a1, "%Ä");
  if (v2)
  {
    v3 = v2 - a1;
  }

  else
  {
    v3 = cstdlib_strlen(a1);
  }

  if (v3)
  {
    v4 = 0;
    while (1)
    {
      v5 = a1[v4];
      if (v5 == 32 || v5 == 95)
      {
        break;
      }

      if (++v4 >= v3)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    LOWORD(v4) = -1;
  }

  return v4;
}

uint64_t hlp_InsertPromptWordRecord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, int a8, unsigned __int16 a9, char a10, char a11, char a12, unsigned __int16 a13, int a14, unsigned __int16 *a15, _WORD *a16, _DWORD *a17, unsigned __int16 *a18)
{
  v23 = a18;
  v98 = *MEMORY[0x277D85DE8];
  v24 = *(a4 + 80);
  v25 = (*(a4 + 88) + 8 * a7);
  v26 = *(**a4 + 16);
  if (a7)
  {
    v27 = 11;
  }

  else
  {
    v27 = 13;
  }

  v95 = v27;
  strcpy(__s, "*");
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v86 = v25;
  v87 = *v25;
  v88 = v24;
  v90 = 0;
  if (*a18)
  {
    v28 = a1;
    v29 = a2;
    v30 = (*(a3 + 80))();
    if ((v30 & 0x80000000) != 0)
    {
      return v30;
    }
  }

  else
  {
    v28 = a1;
    v29 = a2;
    v30 = (*(a3 + 72))(a1, a2, 2, a9, a18);
    if ((v30 & 0x80000000) != 0)
    {
      return v30;
    }
  }

  v30 = (*(a3 + 160))(v28, v29, *v23, 0, 1, &v95, &v91);
  if ((v30 & 0x80000000) != 0)
  {
    return v30;
  }

  v30 = (*(a3 + 160))(v28, v29, *v23, 1, 1, &a10, &v91);
  if ((v30 & 0x80000000) != 0)
  {
    return v30;
  }

  v30 = (*(a3 + 160))(v28, v29, *v23, 2, 1, &a12, &v91);
  if ((v30 & 0x80000000) != 0)
  {
    return v30;
  }

  v83 = v26;
  v84 = a3;
  v31 = *(a3 + 160);
  v32 = *v23;
  v33 = cstdlib_strlen((v88 + v87));
  v34 = v28;
  v30 = v31(v28, v29, v32, 3, (v33 + 1), v88 + v87, &v91);
  if ((v30 & 0x80000000) != 0)
  {
    return v30;
  }

  if (a5)
  {
    v35 = *(a5 + 16);
    if (v35)
    {
      if (*(a5 + 8) > a7)
      {
        v36 = *(v35 + 8 * a7);
        if (v36)
        {
          v37 = *(v84 + 160);
          v38 = *v23;
          v39 = cstdlib_strlen(*(v35 + 8 * a7));
          v30 = v37(v28, v29, v38, 14, (v39 + 1), v36, &v91);
          if ((v30 & 0x80000000) != 0)
          {
            return v30;
          }
        }
      }
    }
  }

  if (a6 && (v40 = *(a6 + 16)) != 0 && *(a6 + 8) > a7 && (v41 = *(v40 + 8 * a7)) != 0)
  {
    v42 = *(v84 + 160);
    v43 = *v23;
    v44 = (cstdlib_strlen(*(v40 + 8 * a7)) + 1);
    v45 = v28;
    v46 = v29;
    v47 = v43;
    v48 = v41;
  }

  else
  {
    v42 = *(v84 + 160);
    v49 = *v23;
    v44 = (cstdlib_strlen(__s) + 1);
    v48 = __s;
    v45 = v28;
    v46 = v29;
    v47 = v49;
  }

  v30 = v42(v45, v46, v47, 5, v44, v48, &v91);
  if ((v30 & 0x80000000) != 0)
  {
    return v30;
  }

  v50 = 2296389642;
  v92 = cstdlib_strlen((v88 + v87)) + 1;
  v51 = heap_Calloc(*(v83 + 8), v92, 1);
  if (v51)
  {
    v52 = v51;
    v53 = cstdlib_strlen((v88 + v87));
    utf8_Utf8ToDepes(v88 + v87, v53, 0, v52, v92, &v92, 0);
    v54 = *(v84 + 160);
    v55 = *v23;
    v56 = cstdlib_strlen(v52);
    v57 = v54(v34, v29, v55, 15, (v56 + 1), v52, &v91);
    if ((v57 & 0x80000000) != 0)
    {
      v79 = v52;
      v50 = v57;
      goto LABEL_84;
    }

    if ((domain_mngr_utils_IsActiveVoiceAddon(v83, *(*(*a4 + 8) + 72), (*(*a4 + 8) + 80), (*(*a4 + 8) + 88), (*(*a4 + 8) + 100), &v90) & 0x80000000) != 0 || !v90 || (v96[0] = 0, (paramc_ParamGetInt(*(v83 + 40), *(*a4 + 72), v96) & 0x80000000) != 0) || (v58 = v96[0]) == 0)
    {
      v89 = 0;
      v59 = v86;
    }

    else
    {
      v59 = v86;
      v60 = heap_Calloc(*(v83 + 8), v86[2], 4);
      if (!v60)
      {
        v79 = v52;
        goto LABEL_84;
      }

      v61 = v60;
      cstdlib_memcpy(v60, (*(a4 + 72) + 4 * v86[1]), 4 * v86[2]);
      v62 = v86[2];
      v89 = v61;
      if (v86[2])
      {
        v63 = 0;
        v64 = v29;
        do
        {
          v65 = *&v61[v63];
          if (v65 != -1)
          {
            *&v61[v63] = v65 + v58;
          }

          v63 += 4;
        }

        while (4 * v62 != v63);
LABEL_41:
        v67 = v64;
        v68 = (*(v84 + 160))(v34);
        if ((v68 & 0x80000000) != 0)
        {
          goto LABEL_83;
        }

        v68 = (*(v84 + 160))(v34, v67, *v23, 6, 2, __s, &v91);
        if ((v68 & 0x80000000) != 0)
        {
          goto LABEL_83;
        }

        v68 = (*(v84 + 160))(v34, v67, *v23, 9, 1, &v93, &v91);
        if ((v68 & 0x80000000) != 0)
        {
          goto LABEL_83;
        }

        v69 = *(*a4 + 8);
        if (*(v69 + 208) == 1)
        {
          __sprintf_chk(v97, 0, 8uLL, "%u", *(*(v69 + 272) + *(v69 + 214) + (*(a4 + 60) + a7) * *(v69 + 212)));
          v70 = *(v84 + 160);
          v71 = *v23;
          v72 = cstdlib_strlen(v97);
          v68 = v70(v34, v29, v71, 13, (v72 + 1), v97, &v91);
          if ((v68 & 0x80000000) != 0)
          {
            goto LABEL_83;
          }

          v69 = *(*a4 + 8);
          v59 = v86;
        }

        v73 = a16;
        v74 = a17;
        v75 = a15;
        v76 = v59[3];
        *a15 = v76;
        if (*(v69 + 220) == 1)
        {
          v77 = *(*(v69 + 272) + *(v69 + 216) + (*(a4 + 60) + a7) * *(v69 + 212));
          *v73 = v77;
          if (v77 < 2)
          {
            if (*v75 != 0xFFFF && *v75)
            {
              v78 = 0;
            }

            else
            {
              v78 = 0;
              *v75 = 1;
            }

LABEL_63:
            v80 = a14;
            *v74 = 0;
            v81 = *v75;
            if (a8)
            {
              if (v80 || v81 == 0xFFFF)
              {
                v81 = a13;
                *v75 = a13;
                *v74 = 1;
              }
            }

            else if (v81 == 0xFFFF)
            {
              *v75 = 0;
LABEL_71:
              if (*(v69 + 228) == 1)
              {
                v82 = v78;
              }

              else
              {
                v82 = 1;
              }

              if (((v82 & 1) != 0 || *v75 == 65533 || !*v75) && (a8 != 1 || v80 != 1) || (strcpy(v96, "external"), v68 = (*(v84 + 160))(v34, v29, *v23, 18, 9, v96, &v91), (v68 & 0x80000000) == 0))
              {
                if (*v75 == -3)
                {
                  *v75 = 200;
                }

                v68 = (*(v84 + 160))(v34, v29, *v23, 8, 1, v75, &v91);
              }

LABEL_83:
              v50 = v68;
              heap_Free(*(v83 + 8), v52);
              v79 = v89;
              if (!v89)
              {
                return v50;
              }

LABEL_84:
              heap_Free(*(v83 + 8), v79);
              return v50;
            }

            if (v81)
            {
              *v73 = 1;
            }

            goto LABEL_71;
          }

          if (v77 == 2)
          {
            *v75 = 0;
          }
        }

        else
        {
          if (v76 && v76 != 0xFFFF)
          {
            v78 = 0;
            *v73 = 1;
            goto LABEL_63;
          }

          *v73 = 255;
        }

        v78 = 1;
        goto LABEL_63;
      }
    }

    v64 = v29;
    goto LABEL_41;
  }

  return v50;
}

uint64_t hlp_CreateOrUpdatePhraseRecord(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, __int16 a6, int a7, __int16 a8, _WORD *a9)
{
  v21 = a6;
  v20 = a7;
  v19 = a8;
  v18 = 15;
  if (a7 == 255)
  {
    result = 0;
    if (a4 && a5)
    {
      v13 = *(a3 + 192);

      return v13(a1, a2, a5);
    }
  }

  else
  {
    v17 = 0;
    if (a4 && a5)
    {
      *a9 = a5;
    }

    else
    {
      result = (*(a3 + 80))(a1, a2, *a9, a9, a5);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = (*(a3 + 160))(a1, a2, *a9, 0, 1, &v18, &v17);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = (*(a3 + 160))(a1, a2, *a9, 1, 1, &v21, &v17);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = (*(a3 + 160))(a1, a2, *a9, 2, 1, &v21, &v17);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v14 = *(a3 + 160);
      v15 = *a9;
      v16 = cstdlib_strlen("");
      result = v14(a1, a2, v15, 4, (v16 + 1), "", &v17);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      a5 = *a9;
    }

    result = (*(a3 + 160))(a1, a2, a5, 7, 1, &v20, &v17);
    if ((result & 0x80000000) == 0)
    {
      return (*(a3 + 160))(a1, a2, *a9, 8, 1, &v19, &v17);
    }
  }

  return result;
}

void *StrArrDelete(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[2];
    if (v2)
    {
      v3 = result[1];
      if (v3)
      {
        v4 = v3 - 1;
        do
        {
          v5 = *(v1[2] + 8 * v4);
          if (v5)
          {
            heap_Free(*(*v1 + 8), v5);
          }

          --v4;
        }

        while (v4 != -1);
        v2 = v1[2];
      }

      heap_Free(*(*v1 + 8), v2);
    }

    v6 = *(*v1 + 8);

    return heap_Free(v6, v1);
  }

  return result;
}

uint64_t activeprompt_InsertOrth(char **a1, unsigned __int16 a2, int a3, const char **a4, uint64_t *a5, unsigned __int16 *a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, _WORD *a11)
{
  v103[0] = a2;
  v15 = **a1;
  v16 = *(v15 + 16);
  v102 = 0;
  v101 = 0;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v97 = 5;
  v96 = 0;
  __s = 0;
  v17 = *(v15 + 56);
  v94 = 0;
  v18 = cstdlib_strstr(a1[6], "%Ä");
  v19 = a1[6];
  if (v18)
  {
    v20 = v18 - v19;
    v21 = (v18 - v19);
    v22 = heap_Alloc(*(v16 + 8), v21 + 1);
    if (!v22)
    {
      v24 = 2296389642;
      log_OutPublic(*(v16 + 32), "DOMAIN_MNGR", 47000, 0);
      return v24;
    }

    v23 = v22;
    v85 = a7;
    v87 = v17;
    cstdlib_strncpy(v22, a1[6], v20);
    v23[v21] = 0;
  }

  else
  {
    v85 = a7;
    v87 = v17;
    v20 = cstdlib_strlen(v19);
    v23 = a1[6];
  }

  v93 = v18;
  v24 = 2296389642;
  if (!v20)
  {
    v24 = 2296389639;
    goto LABEL_149;
  }

  v78 = v20;
  v80 = a6;
  v25 = v103[0];
  v26 = v103[0];
  if (v103[0] < cstdlib_strlen(*a4))
  {
    v26 = v103[0];
    do
    {
      if (!cstdlib_strchr(*(*(*a1 + 1) + 192), (*a4)[v26]))
      {
        break;
      }

      ++v26;
    }

    while (cstdlib_strlen(*a4) > v26);
  }

  v92 = v16;
  v27 = cstdlib_strlen(*a4);
  v28 = *a4;
  if (v26 == v27 || v28[v26] == 32)
  {
    v75 = 0;
    v82 = 0;
    if (v26 != cstdlib_strlen(v28))
    {
      ++v26;
    }

    v29 = v20;
    goto LABEL_15;
  }

  v29 = v20 + 1;
  v57 = cstdlib_strlen(v28);
  v82 = 1;
  v75 = -1;
  v30 = v103[0];
  if (v26 == v57)
  {
LABEL_15:
    v30 = v26;
  }

  v77 = v30;
  if (v103[0])
  {
    LOWORD(v31) = v103[0] - 1;
  }

  else
  {
    LOWORD(v31) = 0;
  }

  if (v103[0] >= 2u)
  {
    v31 = v31;
    while (cstdlib_strchr(*(*(*a1 + 1) + 192), (*a4)[v31]))
    {
      if (!--v31)
      {
        LOWORD(v31) = 0;
        break;
      }
    }
  }

  v32 = v20;
  if (v103[0])
  {
    v33 = *a4;
    if ((*a4)[v31] != 32)
    {
      ++v29;
      v76 = v103[0] + 1;
      v96 = v103[0] + 1;
      v83 = 1;
      v84 = 0;
      v34 = 1;
      goto LABEL_32;
    }

    v83 = 0;
    v34 = 0;
    v76 = v31 + 1;
    v96 = v31 + 1;
  }

  else
  {
    v83 = 0;
    v34 = 0;
    v76 = v31;
    v96 = v31;
    v33 = *a4;
  }

  v84 = 1;
LABEL_32:
  v35 = *(v16 + 8);
  v36 = cstdlib_strlen(v33);
  v37 = heap_Realloc(v35, v33, v36 + v29 + 2);
  if (v37)
  {
    v38 = v29;
    *a4 = v37;
    v39 = cstdlib_strlen(v37) + 1;
    if (v39 >= v25)
    {
      do
      {
        (*a4)[v29 + v39] = (*a4)[v39];
        v25 = v103[0];
      }

      while (v39-- > v103[0]);
    }

    v41 = v29 + v77;
    if (v34)
    {
      (*a4)[v25] = 32;
    }

    v42 = 0;
    v43 = v83;
    do
    {
      (*a4)[v103[0] + v43++] = v23[v42++];
    }

    while (v32 != v42);
    v44 = a10;
    if (v82)
    {
      (*a4)[v103[0] - 1 + v38] = 32;
    }

    *a11 += v38;
    v45 = *a5;
    v46 = *a5 + 32 * v85;
    v49 = *(v46 + 12);
    v47 = (v46 + 12);
    v48 = v49;
    v47[1] = v78;
    if ((v84 & 1) == 0 && v48 == v103[0] + a3)
    {
      *v47 = v48 + 1;
    }

    v50 = *v80;
    if (v50 > (v85 + 1))
    {
      v51 = (v85 + 1);
      v52 = (v45 + 32 * v51 + 12);
      v53 = v51 + 1;
      do
      {
        *v52 += v38;
        v52 += 8;
      }

      while (v50 != v53++);
    }

    v55 = (*(v87 + 104))(a9, a10, 1, 0, &v102 + 2);
    if ((v55 & 0x80000000) != 0)
    {
      goto LABEL_148;
    }

    if (((*(v87 + 152))(a9, a10, 3, HIWORD(v102), &v94) & 0x80000000) == 0 && v94)
    {
      v55 = (*(v87 + 104))(a9, a10, 3, HIWORD(v102), &v102);
      if ((v55 & 0x80000000) != 0)
      {
        goto LABEL_148;
      }

      while (v102)
      {
        v55 = (*(v87 + 168))(a9, a10);
        if ((v55 & 0x80000000) != 0)
        {
          goto LABEL_148;
        }

        v55 = (*(v87 + 168))(a9, a10, v102, 2, 1, &v98, &v100);
        if ((v55 & 0x80000000) != 0)
        {
          goto LABEL_148;
        }

        v56 = v103[0];
        if (v99 >= v103[0])
        {
          LOWORD(v99) = v99 + v38;
          v55 = (*(v87 + 160))(a9, a10, v102, 1, 1, &v99, &v99 + 2);
          if ((v55 & 0x80000000) != 0)
          {
            goto LABEL_148;
          }

          v56 = v103[0];
        }

        if (v98 > v56)
        {
          v98 += v38;
          v55 = (*(v87 + 160))(a9, a10, v102, 2, 1, &v98, &v99 + 2);
          if ((v55 & 0x80000000) != 0)
          {
            goto LABEL_148;
          }
        }

        v24 = (*(v87 + 120))(a9, a10, v102, &v102);
        if ((v24 & 0x80000000) != 0)
        {
          goto LABEL_149;
        }
      }
    }

    v55 = (*(v87 + 104))(a9, a10, 1, 0, &v102 + 2);
    if ((v55 & 0x80000000) == 0)
    {
      v58 = 0;
      if (((*(v87 + 152))(a9, a10, 3, HIWORD(v102), &v94) & 0x80000000) != 0)
      {
        v59 = 0;
        v91 = 0;
        v60 = 0;
      }

      else
      {
        v59 = 0;
        v91 = 0;
        v60 = 0;
        if (v94)
        {
          v61 = (*(v87 + 104))(a9, a10, 3, HIWORD(v102), &v102);
          if ((v61 & 0x80000000) != 0)
          {
            goto LABEL_131;
          }

          v62 = v102;
          if (v102)
          {
            v79 = v41;
            v81 = 0;
            v58 = 0;
            v89 = 0;
            v91 = 0;
            v86 = 0;
            while (1)
            {
              v61 = (*(v87 + 168))(a9, a10, v62, 1, 1, &v99, &v100);
              if ((v61 & 0x80000000) != 0)
              {
                goto LABEL_131;
              }

              v61 = (*(v87 + 168))(a9, a10, v102, 2, 1, &v98, &v100);
              if ((v61 & 0x80000000) != 0)
              {
                goto LABEL_131;
              }

              v61 = (*(v87 + 168))(a9, a10, v102, 0, 1, &v97, &v100);
              if ((v61 & 0x80000000) != 0)
              {
                goto LABEL_131;
              }

              v63 = v97;
              if (v97 == 3)
              {
                if (v99 >= v103[0] || v98 <= v103[0])
                {
LABEL_87:
                  v64 = v99;
                  goto LABEL_88;
                }

                v61 = (*(v87 + 160))(a9, a10, v102, 2, 1, v103, &v99 + 2);
                if ((v61 & 0x80000000) != 0)
                {
                  goto LABEL_131;
                }

                v61 = (*(v87 + 80))(a9, a10, v102, &v102);
                if ((v61 & 0x80000000) != 0)
                {
                  goto LABEL_131;
                }

                v61 = (*(v87 + 160))(a9, a10, v102, 0, 1, &v97, &v99 + 2);
                if ((v61 & 0x80000000) != 0)
                {
                  goto LABEL_131;
                }

                LOWORD(v99) = v103[0] + v38;
                v61 = (*(v87 + 160))(a9, a10, v102, 1, 1, &v99, &v99 + 2);
                if ((v61 & 0x80000000) != 0)
                {
                  goto LABEL_131;
                }

                v61 = (*(v87 + 160))(a9, a10, v102, 2, 1, &v98, &v99 + 2);
                if ((v61 & 0x80000000) != 0)
                {
                  goto LABEL_131;
                }

                LOWORD(v99) = v103[0];
                v63 = v97;
              }

              if (v63 != 5)
              {
                goto LABEL_87;
              }

              v86 = v102;
              v61 = (*(v87 + 176))(a9, a10);
              if ((v61 & 0x80000000) != 0)
              {
                goto LABEL_131;
              }

              v64 = v99;
              v81 = v98;
              v91 = v99;
LABEL_88:
              v65 = v102;
              if (!HIWORD(v101) && v64 >= v103[0])
              {
                HIWORD(v101) = v102;
              }

              if (!v89)
              {
                if (v64 >= v76)
                {
                  LOWORD(v101) = v102;
                  v58 = v102;
                  v89 = v102;
                }

                else
                {
                  v89 = 0;
                }
              }

              if (!HIWORD(v100) && v64 >= v79)
              {
                HIWORD(v100) = v102;
                if (v102)
                {
                  v44 = a10;
                  v61 = (*(v87 + 88))(a9, a10, HIWORD(v101), &v101 + 2);
                  goto LABEL_130;
                }

                goto LABEL_133;
              }

              v61 = (*(v87 + 120))(a9, a10, v102, &v102);
              if ((v61 & 0x80000000) != 0)
              {
                goto LABEL_131;
              }

              v62 = v102;
              if (!v102)
              {
                if (v65)
                {
                  v44 = a10;
                  v61 = (*(v87 + 80))(a9, a10, v65, &v101 + 2);
LABEL_130:
                  v41 = v79;
                  if ((v61 & 0x80000000) == 0)
                  {
                    goto LABEL_104;
                  }

                  goto LABEL_131;
                }

LABEL_133:
                v44 = a10;
                v41 = v79;
                v59 = v81;
                v60 = v86;
                goto LABEL_103;
              }
            }
          }

          v58 = 0;
          v59 = 0;
          v91 = 0;
          v60 = 0;
        }
      }

LABEL_103:
      v86 = v60;
      v81 = v59;
      v61 = (*(v87 + 72))(a9, v44, 3, HIWORD(v102), &v101 + 2);
      if ((v61 & 0x80000000) != 0)
      {
        goto LABEL_131;
      }

LABEL_104:
      if (HIWORD(v100))
      {
        v61 = (*(v87 + 120))(a9, v44);
        if ((v61 & 0x80000000) != 0)
        {
          goto LABEL_131;
        }

        if (!v102)
        {
          goto LABEL_163;
        }

        v61 = (*(v87 + 168))(a9, v44);
        if ((v61 & 0x80000000) != 0)
        {
          goto LABEL_131;
        }

        if (v97 == 5)
        {
          HIWORD(v100) = 0;
        }

        else
        {
LABEL_163:
          if (HIWORD(v100))
          {
            v61 = (*(v87 + 80))(a9, v44);
            if ((v61 & 0x80000000) != 0)
            {
              goto LABEL_131;
            }
          }
        }
      }

      if ((v84 & 1) == 0 && ((LOWORD(v99) = v103[0], v98 = v103[0] + 1, v97 = 3, v61 = (*(v87 + 160))(a9, v44, HIWORD(v101), 0, 1, &v97, &v99 + 2), (v61 & 0x80000000) != 0) || (v61 = (*(v87 + 160))(a9, v44, HIWORD(v101), 1, 1, &v99, &v99 + 2), (v61 & 0x80000000) != 0) || (v61 = (*(v87 + 160))(a9, v44, HIWORD(v101), 2, 1, &v98, &v99 + 2), (v61 & 0x80000000) != 0) || (v61 = (*(v87 + 80))(a9, v44, HIWORD(v101), &v101 + 2), (v61 & 0x80000000) != 0)) || (LOWORD(v99) = v103[0] + v83, v98 = v38 + v75 + v103[0], v97 = 6, v61 = (*(v87 + 160))(a9, v44, HIWORD(v101), 0, 1, &v97, &v99 + 2), (v61 & 0x80000000) != 0) || (v61 = (*(v87 + 160))(a9, v44, HIWORD(v101), 1, 1, &v99, &v99 + 2), (v61 & 0x80000000) != 0) || (v61 = (*(v87 + 160))(a9, v44, HIWORD(v101), 2, 1, &v98, &v99 + 2), (v61 & 0x80000000) != 0) || (v61 = (*(v87 + 160))(a9, v44, HIWORD(v101), 4, 5, "_PR_", &v99 + 2), (v61 & 0x80000000) != 0) || (v61 = (*(v87 + 160))(a9, v44, HIWORD(v101), 3, (v32 + 1), v23, &v99 + 2), (v61 & 0x80000000) != 0))
      {
LABEL_131:
        v24 = v61;
LABEL_132:
        v16 = v92;
        goto LABEL_149;
      }

      LOWORD(v99) = v76;
      v98 = v41;
      v66 = v41;
      do
      {
        v67 = v66;
        v68 = (*a4)[v66++];
      }

      while (v68 == 32);
      v97 = 5;
      v69 = *(v87 + 80);
      if (v83 + v103[0] == v76)
      {
        v55 = v69(a9, v44, HIWORD(v101), &v101 + 2);
        v16 = v92;
        if ((v55 & 0x80000000) != 0)
        {
          goto LABEL_148;
        }

        LOWORD(v101) = HIWORD(v101);
      }

      else
      {
        v61 = v69(a9, v44, v58, &v101);
        if ((v61 & 0x80000000) != 0)
        {
          goto LABEL_131;
        }

        v16 = v92;
      }

      v55 = (*(v87 + 160))(a9, v44);
      if ((v55 & 0x80000000) == 0)
      {
        v55 = (*(v87 + 160))(a9, v44, v101, 1, 1, &v99, &v99 + 2);
        if ((v55 & 0x80000000) == 0)
        {
          v55 = (*(v87 + 160))(a9, v44, v101, 2, 1, &v98, &v99 + 2);
          if ((v55 & 0x80000000) == 0)
          {
            v24 = (*(v87 + 160))(a9, v44, v101, 4, 7, "prompt", &v99 + 2);
            if ((v24 & 0x80000000) != 0)
            {
              goto LABEL_149;
            }

            if (v82)
            {
              v61 = (*(v87 + 80))(a9, v44, HIWORD(v101), &v101 + 2);
              if ((v61 & 0x80000000) != 0)
              {
                goto LABEL_131;
              }

              LOWORD(v99) = v103[0] + v38 - 1;
              v98 = v103[0] + v38;
              v97 = 3;
              v61 = (*(v87 + 160))(a9, a10, HIWORD(v101), 0, 1, &v97, &v99 + 2);
              if ((v61 & 0x80000000) != 0)
              {
                goto LABEL_131;
              }

              v61 = (*(v87 + 160))(a9, a10, HIWORD(v101), 1, 1, &v99, &v99 + 2);
              if ((v61 & 0x80000000) != 0)
              {
                goto LABEL_131;
              }

              v24 = (*(v87 + 160))(a9, a10, HIWORD(v101), 2, 1, &v98, &v99 + 2);
              v16 = v92;
              if ((v24 & 0x80000000) != 0)
              {
                goto LABEL_149;
              }
            }

            if (__s)
            {
              v70 = v91 >= v76 ? (*(v87 + 192))(a9, a10, v86) : (*(v87 + 160))(a9, a10, v86, 2, 1, &v96, &v99 + 2);
              v24 = v70;
              v16 = v92;
              if ((v70 & 0x80000000) != 0)
              {
                goto LABEL_149;
              }
            }

            if (HIWORD(v100))
            {
              v16 = v92;
              if (__s)
              {
                LOWORD(v99) = v67;
                v98 = v81;
                v97 = 5;
                v61 = (*(v87 + 160))(a9, a10);
                if ((v61 & 0x80000000) == 0)
                {
                  v61 = (*(v87 + 160))(a9, a10, HIWORD(v100), 1, 1, &v99, &v99 + 2);
                  if ((v61 & 0x80000000) == 0)
                  {
                    v61 = (*(v87 + 160))(a9, a10, HIWORD(v100), 2, 1, &v98, &v99 + 2);
                    if ((v61 & 0x80000000) == 0)
                    {
                      v72 = *(v87 + 160);
                      v73 = HIWORD(v100);
                      v74 = cstdlib_strlen(__s);
                      v61 = v72(a9, a10, v73, 4, (v74 + 1), __s, &v99 + 2);
                    }
                  }
                }

                goto LABEL_131;
              }

              goto LABEL_149;
            }

            goto LABEL_132;
          }
        }
      }
    }

LABEL_148:
    v24 = v55;
    goto LABEL_149;
  }

  log_OutPublic(*(v16 + 32), "DOMAIN_MNGR", 47000, 0);
LABEL_149:
  if (v93 && v23)
  {
    heap_Free(*(v16 + 8), v23);
  }

  return v24;
}

uint64_t activeprompt_ConsultOriOrth(const char **a1, const char **a2, uint64_t *a3, unsigned __int16 *a4, uint64_t a5, _WORD *a6)
{
  v218[3] = *MEMORY[0x277D85DE8];
  v6 = *(**a1 + 16);
  v212 = 0;
  v211 = 0;
  v210 = 0;
  if (!a1[5])
  {
    return 0;
  }

  v10 = a1;
  v190 = cstdlib_strlen(*a2);
  v208 = a3;
  v12 = *(*a3 + 12);
  v13 = (*(a5 + 4) - v12);
  v207 = cstdlib_strlen(v10[5]);
  v199 = v13;
  if (log_HasTraceTuningDataSubscriber(*(v6 + 32)))
  {
    v19 = a5;
    do
    {
      v20 = v19;
      v19 = *(v19 + 16);
    }

    while (v19);
    v21 = v13;
    if (a4)
    {
      v22 = v12;
      if (*a4)
      {
        v23 = (*(v20 + 8) + *(v20 + 4) - *(*a3 + 12));
      }

      else
      {
        v23 = 0;
      }

      log_OutTraceTuningData(*(v6 + 32), 217, "%s%s %s%s %s%d %s%d", v14, v15, v16, v17, v18, "BEG");
      log_OutTraceTuningDataBinary(*(v6 + 32), 218, "", "text/plain;charset=utf-8", *a2, v23);
      log_OutTraceTuningDataBinary(*(v6 + 32), 218, "", "application/x-realspeak-markers-pp;version=4.0", *a3, 32 * *a4);
      v12 = v22;
      v13 = v13;
    }

    else
    {
      log_OutTraceTuningData(*(v6 + 32), 217, "%s%s %s%s %s%d %s%d", v14, v15, v16, v17, v18, "BEG");
      log_OutTraceTuningDataBinary(*(v6 + 32), 218, "", "text/plain;charset=utf-8", *a2, 0);
    }
  }

  else
  {
    v21 = v13;
  }

  if ((*(a5 + 8) + v13) < (v13 + v207))
  {
LABEL_227:
    v24 = 0;
    goto LABEL_228;
  }

  v205 = v12;
  v189 = a6;
  v201 = 0;
  LOWORD(v193) = 0;
  LOWORD(__s) = 0;
  v197 = 0;
  v192 = v21;
  v25 = v13;
  v198 = a5;
  v196 = v10;
  v200 = v6;
  while (1)
  {
    v204 = v25;
    if (!(*a2)[v25])
    {
      goto LABEL_227;
    }

    v206 = v21;
    v26 = v25;
    v202 = v25;
    if (v190 <= v25)
    {
      v45 = v6;
      v46 = 0;
      v30 = v25;
      goto LABEL_66;
    }

    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = v25;
    v32 = v208;
    v31 = a4;
    v203 = v25;
    do
    {
      if (v28 && v26 + 1 < v190 && (*a2)[v30] == 32 && (v33 = &(*a2)[v26 + 1], v34 = cstdlib_strlen("§"), v25 = v203, v35 = cstdlib_strncmp(v33, "§", v34), v32 = v208, v31 = a4, !v35))
      {
        v44 = cstdlib_strlen("§");
        v32 = v208;
        v31 = a4;
        v30 += v44;
        --v28;
        v42 = 1;
      }

      else
      {
        if (v31)
        {
          v36 = *v31;
          v37 = v27 <= v36 ? *v31 : v27;
          if (v27 >= v36)
          {
LABEL_32:
            v27 = v37;
LABEL_34:
            LOWORD(v39) = *v31;
          }

          else
          {
            v38 = v26 + v205;
            v39 = v27;
            v40 = (*v32 + 32 * v27);
            while (1)
            {
              v41 = v40[3];
              if (v41 > v38)
              {
                v27 = v39;
                goto LABEL_34;
              }

              if (v41 >= v38 && *v40 == 34)
              {
                break;
              }

              v40 += 8;
              if (v37 == ++v39)
              {
                goto LABEL_32;
              }
            }

            v27 = v39;
          }

          if (v36 > v39)
          {
            if (!hlp_GetRangeForSETPHON(*a2, *v32, v36, v39, &v212, &v211, &v212 + 1, &v210 + 1, &v210))
            {
              goto LABEL_57;
            }

            if (v211)
            {
              v28 = HIWORD(v212);
            }

            v32 = v208;
            v31 = a4;
          }
        }

        if (v29 >= v207)
        {
          goto LABEL_51;
        }

        v42 = v10[5][v29++] == (*a2)[v30];
      }

      v26 = ++v30;
      v43 = v42 && v190 > v30;
    }

    while (v43);
    if (!v42)
    {
LABEL_57:
      v48 = 0;
      v49 = v30 - v25;
      v6 = v200;
      a5 = v198;
      goto LABEL_90;
    }

LABEL_51:
    v46 = v30 - v25;
    v47 = v210 >= v26 || v28 == 0;
    v45 = v200;
    if (v47)
    {
      a5 = v198;
      goto LABEL_66;
    }

    v50 = v30;
    if (v190 > v30)
    {
      v51 = &(*a2)[v30];
      v52 = cstdlib_strlen("§");
      v53 = v30;
      if (cstdlib_strncmp(v51, "§", v52))
      {
        while (1)
        {
          v50 = ++v53;
          if (v190 <= v53)
          {
            break;
          }

          v54 = &(*a2)[v53];
          v55 = cstdlib_strlen("§");
          v30 = v53;
          if (!cstdlib_strncmp(v54, "§", v55))
          {
            goto LABEL_64;
          }
        }

        v30 = v53;
      }
    }

LABEL_64:
    if (v190 == v50)
    {
      v24 = 0;
      a5 = v198;
      goto LABEL_277;
    }

    v30 = v30 + v28 + v28 * cstdlib_strlen("§") - 1;
    a5 = v198;
    if (v30 > v190)
    {
      break;
    }

LABEL_66:
    v49 = v30 - v25;
    v201 = v46;
    v56 = v46 + v25;
    v43 = v190 > (v46 + v25);
    v6 = v45;
    v10 = v196;
    if (v43)
    {
      while (1)
      {
        v57 = v56;
        if (cstdlib_strchr(" \t\r\n", (*a2)[v56]))
        {
          break;
        }

        v58 = cstdlib_strchr(*(*(*v196 + 1) + 192), (*a2)[v57]);
        v56 = v57 + 1;
        if (v58)
        {
          v59 = v190 > (v57 + 1);
        }

        else
        {
          v59 = 0;
        }

        if (!v59)
        {
          if (v58)
          {
            break;
          }

          v48 = 0;
          goto LABEL_90;
        }
      }
    }

    v60 = a4;
    if (a4 && (LOWORD(v61) = *a4) != 0)
    {
      v62 = 0;
      v63 = 0;
      v64 = v206 + (v30 - v25);
      v65 = v208;
      while (1)
      {
        if (*(*v65 + v62) == 34)
        {
          if (!hlp_GetRangeForSETPHON(*a2, *v65, v61, v63, &v212, &v211, &v212 + 1, &v210 + 1, &v210))
          {
            break;
          }

          v65 = v208;
          v60 = a4;
          if (v211)
          {
            if (HIDWORD(v210) < v206 && v210 >= v206 || HIDWORD(v210) < v64 && v64 <= v210)
            {
              break;
            }
          }
        }

        ++v63;
        v61 = *v60;
        v62 += 32;
        if (v63 >= v61)
        {
          v48 = 1;
          goto LABEL_88;
        }
      }

      v48 = 0;
LABEL_88:
      v49 = v30 - v25;
      v6 = v200;
    }

    else
    {
      v48 = 1;
    }

LABEL_90:
    if (!log_HasTraceTuningDataSubscriber(*(v6 + 32)))
    {
      v76 = a4;
      if (!v48)
      {
        goto LABEL_214;
      }

      goto LABEL_96;
    }

    log_OutTraceTuningData(*(v6 + 32), 220, "%s%d %s%d %s%s", v66, v67, v68, v69, v70, "IDXBEG");
    if (!v48)
    {
      goto LABEL_214;
    }

    v191 = v49;
    v77 = v208;
    v76 = a4;
    if (!*(v10 + 7) && !*(v10 + 8))
    {
      log_OutTraceTuningData(*(v6 + 32), 221, "%s%s %s%s", v71, v72, v73, v74, v75, "RES");
      log_OutTraceTuningData(*(v6 + 32), 222, "%s%s %s%s", v78, v79, v80, v81, v82, "RES");
      v76 = a4;
LABEL_96:
      v191 = v49;
      v77 = v208;
      if (!*(v10 + 7) && !*(v10 + 8))
      {
        goto LABEL_196;
      }
    }

    if (!v76)
    {
      goto LABEL_114;
    }

    v83 = *v76;
    if (*v76)
    {
      v84 = 0;
      v85 = *v77;
      while (*v85 != 40 || v85[3] < v205 + v30)
      {
        ++v84;
        v85 += 8;
        if (v83 == v84)
        {
          goto LABEL_108;
        }
      }

      LODWORD(v84) = v84;
    }

    else
    {
      LODWORD(v84) = 0;
    }

    if (v84 == v83)
    {
LABEL_108:
      v86 = v30;
      if (cstdlib_strlen(*a2) > v30)
      {
        v87 = v30;
        do
        {
          if (!cstdlib_strchr(" \t\r\n", (*a2)[v86]) && !aux_special_strchr(*(*(*v10 + 1) + 192), (*a2)[v86]))
          {
            break;
          }

          v86 = ++v87;
        }

        while (cstdlib_strlen(*a2) > v87);
      }

      v88 = cstdlib_strlen(*a2) != v86;
    }

    else
    {
LABEL_114:
      v88 = 1;
    }

    v89 = *(*v10 + 1);
    v90 = *(v89 + 192);
    __sa = *(v89 + 184);
    v91 = *a2;
    v92 = v204;
    while (v92)
    {
      v93 = v92 - 1;
      v94 = cstdlib_strchr(" \t\r\n", v91[v92 - 1]);
      v92 = v93;
      if (!v94)
      {
        if ((v93 & 0x8000) == 0)
        {
          v95 = aux_special_strchr(v90, v91[v93 & 0xFFFF7FFF]);
          if (v95)
          {
            HIDWORD(v197) = *v95;
            goto LABEL_122;
          }
        }

        break;
      }
    }

    HIDWORD(v197) = 0;
LABEL_122:
    v96 = v201 + v202;
    if (v96 << 16 >= (cstdlib_strlen(v91) << 16))
    {
      v100 = 0;
      v101 = HIDWORD(v197);
    }

    else
    {
      v97 = v91[v96];
      if (v91[v96])
      {
        v98 = &v91[v96 + 1];
        while (cstdlib_strchr(" \t\r\n", v97))
        {
          v99 = *v98++;
          v97 = v99;
          if (!v99)
          {
            goto LABEL_131;
          }
        }

        v97 = *(v98 - 1);
      }

LABEL_131:
      v102 = aux_special_strchr(v90, v97);
      v101 = HIDWORD(v197);
      if (v102)
      {
        v100 = *v102;
      }

      else
      {
        v100 = 0;
      }
    }

    v103 = v101;
    LODWORD(v197) = v100;
    if (v25)
    {
      if (!v101)
      {
        v217 = 0x600000004;
        v104 = 2;
        goto LABEL_144;
      }

      if (cstdlib_strchr(__sa, v101))
      {
        v217 = 0x300000002;
        v104 = 3;
        v105 = v218;
      }

      else
      {
        LODWORD(v217) = 4;
        v104 = 2;
        v105 = &v217 + 1;
      }

      *v105 = 6;
      v100 = v197;
LABEL_143:
      *(&v218[-1] + v104++) = 5;
      goto LABEL_144;
    }

    v217 = 0x300000001;
    v104 = 2;
    if (v101)
    {
      goto LABEL_143;
    }

LABEL_144:
    *(&v218[-1] + v104) = 0;
    if (!v88)
    {
      v215 = 0x300000001;
      v106 = 2;
      v6 = v200;
      if (!v100)
      {
        goto LABEL_154;
      }

      goto LABEL_153;
    }

    if (v100)
    {
      if (cstdlib_strchr(__sa, v100))
      {
        v215 = 0x300000002;
        v106 = 3;
        v107 = &v216;
      }

      else
      {
        LODWORD(v215) = 4;
        v106 = 2;
        v107 = (&v215 + 4);
      }

      v6 = v200;
      *v107 = 6;
LABEL_153:
      *(&v215 + v106++) = 5;
      goto LABEL_154;
    }

    v215 = 0x600000004;
    v106 = 2;
    v6 = v200;
LABEL_154:
    *(&v215 + v106) = 0;
    v108 = *(v10 + 7);
    if (v108)
    {
      v109 = 0;
      while (1)
      {
        v110 = *(&v218[-1] + v109);
        if (v110 == v108 && v108 == 5)
        {
          break;
        }

        v112 = v110 == v108 || v109++ >= v104;
        if (v112)
        {
          v113 = v110 == v108;
          goto LABEL_168;
        }
      }

      v113 = *(v10 + 24) == v103;
LABEL_168:
      v114 = v113;
    }

    else
    {
      v114 = 1;
    }

    __s = v104 + 1;
    if (log_HasTraceTuningDataSubscriber(*(v6 + 32)))
    {
      cstdlib_strcpy(__dst, "");
      hlp_ContextToString(v114, *(v10 + 7), *(v10 + 24), __s, &v217, v103, __dst);
      log_OutTraceTuningData(*(v6 + 32), 221, "%s%s %s%s", v115, v116, v117, v118, v119, "RES");
    }

    v193 = v106 + 1;
    if (v114)
    {
      v120 = *(v10 + 8);
      if (v120)
      {
        v121 = 0;
        while (1)
        {
          v122 = *(&v215 + v121);
          if (v122 == v120 && v120 == 5)
          {
            break;
          }

          if (v122 == v120 || v121++ >= v106)
          {
            v125 = v122 == v120;
            goto LABEL_190;
          }
        }

        v125 = *(v10 + 25) == v197;
LABEL_190:
        v126 = v125;
      }

      else
      {
        v126 = 1;
      }

      if (log_HasTraceTuningDataSubscriber(*(v6 + 32)))
      {
        cstdlib_strcpy(__dst, "");
        hlp_ContextToString(v126, *(v10 + 8), *(v10 + 25), v193, &v215, v197, __dst);
        log_OutTraceTuningData(*(v6 + 32), 222, "%s%s %s%s", v127, v128, v129, v130, v131, "RES");
      }

      v77 = v208;
      v76 = a4;
      a5 = v198;
      if (!v126)
      {
        goto LABEL_214;
      }

LABEL_196:
      if (*(v10 + 2) == 2 && v76 && *v76)
      {
        v132 = 0;
        v133 = 1;
        while (1)
        {
          v134 = *(*v77 + v132);
          v135 = (v134 - 16) < 4 || v134 == 24;
          if (v135 && *(v10 + 2) == 2)
          {
            v136 = *(*v77 + v132 + 12);
            if (v136 > v205 + v202 && v136 < v205 + v30)
            {
              break;
            }
          }

          v143 = 1;
          v132 += 32;
          v112 = v133++ >= *v76;
          if (v112)
          {
            goto LABEL_213;
          }
        }

        log_OutText(*(v6 + 32), "DOMAIN_MNGR", 5, 0, "    Match with [%s::%s] at %u-%u deactivated because of ESC pitch, volume or rate", *(*(*v10 + 1) + 168), v10[2], v205 + v202, v205 + v30);
        log_OutTraceTuningData(*(v6 + 32), 223, "%s%s %s%s", v138, v139, v140, v141, v142, "RES");
        v143 = 0;
LABEL_213:
        a5 = v198;
        if ((v143 & 1) == 0)
        {
          goto LABEL_214;
        }
      }

      if (log_GetLogLevel(*(v6 + 32)) >= 5)
      {
        cstdlib_strcpy(__dst, "");
        cstdlib_strcpy(__s1, "");
        hlp_ContextToString(1, *(v10 + 7), *(v10 + 24), __s, &v217, SBYTE4(v197), __dst);
        hlp_ContextToString(1, *(v10 + 8), *(v10 + 25), v193, &v215, v197, __s1);
        log_OutText(*(v6 + 32), "DOMAIN_MNGR", 5, 0, "    Match with [%s::%s], begPos %ld, endPos %ld, begCtxt %s, endCtxt %s", *(*(*v10 + 1) + 168), v10[2], v205 + v202, v205 + v30, __dst, __s1);
      }

      hlp_RemoveSetPhonInRange(a2, v208, a4, v25, (v30 - v25));
      if (a4)
      {
        v162 = *a4;
        v163 = v206;
        v164 = v206 - v192;
        v165 = *v208;
        if (*a4)
        {
          v166 = 0;
          while (*(v165 + 32 * v166 + 12) <= v164 + *(a5 + 4))
          {
            if (v162 <= ++v166)
            {
              goto LABEL_244;
            }
          }
        }

        else
        {
LABEL_244:
          v166 = *a4;
        }

        v167 = heap_Realloc(*(v6 + 8), v165, 32 * v162 + 32);
        if (!v167)
        {
LABEL_273:
          v24 = 2296389642;
LABEL_274:
          log_OutPublic(*(v6 + 32), "DOMAIN_MNGR", 47000, 0);
          goto LABEL_228;
        }

        v168 = a4;
        *v208 = v167;
        v169 = *a4;
        if (v169 > v166)
        {
          cstdlib_memmove((v167 + 32 * v166 + 32), (v167 + 32 * v166), 32 * (v169 - v166));
          v168 = a4;
          LOWORD(v169) = *a4;
          v167 = *v208;
        }

        *v168 = v169 + 1;
        cstdlib_memset((v167 + 32 * v166), 0, 0x20uLL);
        v170 = (*v208 + 32 * v166);
        *v170 = 40;
        if (v166)
        {
          v170[1] = *(v170 - 7);
        }

        v171 = v191;
        v170[3] = v164 + *(a5 + 4);
        v170[4] = v191;
        v172 = *(v200 + 8);
        v173 = cstdlib_strlen(*(*(*v10 + 1) + 168));
        v174 = cstdlib_strlen(v10[2]);
        *(*v208 + 32 * v166 + 24) = heap_Alloc(v172, (v173 + v174 + 3));
        v175 = *v208 + 32 * v166;
        v177 = *(v175 + 24);
        v176 = (v175 + 24);
        if (!v177)
        {
          v24 = 2296389642;
          log_OutPublic(*(v200 + 32), "DOMAIN_MNGR", 47000, 0);
          v6 = v200;
          goto LABEL_228;
        }

        if (!vector_Add(*(**v10 + 88), v176))
        {
          v24 = 2296389642;
          v6 = v200;
          heap_Free(*(v200 + 8), *(*v208 + 32 * v166 + 24));
          *(*v208 + 32 * v166 + 24) = 0;
          goto LABEL_274;
        }

        cstdlib_strcpy(*(*v208 + 32 * v166 + 24), *(*(*v10 + 1) + 168));
        cstdlib_strcat(*(*v208 + 32 * v166 + 24), "::");
        cstdlib_strcat(*(*v208 + 32 * v166 + 24), v10[2]);
      }

      else
      {
        v166 = 0;
        v163 = v206;
        v171 = v191;
      }

      v179 = *a2;
      v180 = v163 + v171;
      v181 = cstdlib_strlen(*a2);
      cstdlib_memmove(&v179[v204], &v179[v180], v181 - (v204 + v171) + 1);
      *v189 -= v171;
      if (a4)
      {
        v182 = *a4;
        if (v182 > (v166 + 1))
        {
          v183 = *(*v208 + 32 * v166 + 12);
          v184 = (*v208 + 32 * (v166 + 1) + 12);
          v185 = (v166 + 1) + 1;
          do
          {
            v186 = *v184 - v171;
            if (v171 > (*v184 - v183))
            {
              v186 = v183;
            }

            *v184 = v186;
            v184 += 8;
            v47 = v182 == v185++;
          }

          while (!v47);
        }
      }

      for (i = *(a5 + 16); i; i = *(i + 16))
      {
        *(i + 4) -= v171;
      }

      v6 = v200;
      v188 = CILE_New(*(v200 + 8), 1, v163 - v192 + *(a5 + 4), v192 - v180 + *(a5 + 8));
      if (v188)
      {
        *(v188 + 2) = *(a5 + 16);
        *(a5 + 8) = v163 - v192;
        if (v163 == v192)
        {
          *a5 = 0;
        }

        v24 = 0;
        *(a5 + 16) = v188;
        goto LABEL_228;
      }

      goto LABEL_273;
    }

    a5 = v198;
LABEL_214:
    v144 = (*a2)[v204];
    if ((*a2)[v204])
    {
      v145 = v199;
      while (1)
      {
        v146 = cstdlib_strchr(" \t\r\n", v144);
        v147 = *a2;
        if (v146)
        {
          break;
        }

        v25 = (v25 + 1);
        v144 = v147[v25];
        if (!v147[v25])
        {
          goto LABEL_226;
        }
      }

      v148 = v147[v25];
      if (v147[v25])
      {
        v149 = v25;
        while (cstdlib_strchr(" \t\r\n", v148))
        {
          v149 = (v149 + 1);
          v148 = (*a2)[v149];
          v25 = v149;
          if (!(*a2)[v149])
          {
            goto LABEL_226;
          }
        }

        v25 = v149;
      }
    }

    else
    {
      v145 = v199;
    }

LABEL_226:
    v21 = v25;
    if ((*(a5 + 8) + v145) < (v25 + v207))
    {
      goto LABEL_227;
    }
  }

  v24 = 0;
LABEL_277:
  v6 = v200;
LABEL_228:
  if (log_HasTraceTuningDataSubscriber(*(v6 + 32)))
  {
    do
    {
      if (!a5)
      {
        log_OutTraceTuningDataBinary(*(v6 + 32), 219, "", "text/plain;charset=utf-8", *a2, 0);
        v157 = a4;
        if (!a4)
        {
          goto LABEL_257;
        }

        goto LABEL_255;
      }

      v150 = a5;
      a5 = *(a5 + 16);
    }

    while (a5);
    if (!a4)
    {
      v158 = *(v6 + 32);
      v159 = *a2;
      v160 = "text/plain;charset=utf-8";
      v161 = 0;
      goto LABEL_256;
    }

    if (*a4)
    {
      v151 = (*(v150 + 8) + *(v150 + 4) - *(*v208 + 12));
    }

    else
    {
      v151 = 0;
    }

    log_OutTraceTuningDataBinary(*(v6 + 32), 219, "", "text/plain;charset=utf-8", *a2, v151);
    v157 = a4;
LABEL_255:
    v158 = *(v6 + 32);
    v159 = *v208;
    v161 = 32 * *v157;
    v160 = "application/x-realspeak-markers-pp;version=4.0";
LABEL_256:
    log_OutTraceTuningDataBinary(v158, 219, "", v160, v159, v161);
LABEL_257:
    log_OutTraceTuningData(*(v6 + 32), 217, "%s%s %s%s %s%u", v152, v153, v154, v155, v156, "END");
  }

  return v24;
}

uint64_t hlp_GetRangeForSETPHON(const char *a1, _DWORD *a2, unsigned int a3, unsigned int a4, _WORD *a5, _WORD *a6, _WORD *a7, unsigned int *a8, unsigned int *a9)
{
  if (a4 >= a3)
  {
    return 0;
  }

  if (*a2 != 0x4000)
  {
    return 0;
  }

  v10 = a4;
  v11 = &a2[8 * a4];
  if (*v11 != 34)
  {
    return 0;
  }

  v13 = a2[3];
  v14 = *(v11 + 3);
  *a5 = 0;
  *a6 = 0;
  *a7 = 0;
  v15 = v11[3] - v13;
  *a8 = v15;
  *a9 = v15;
  if (!v14)
  {
    return 1;
  }

  result = 1;
  if (!*v14)
  {
    return result;
  }

  v40 = v13;
  *a5 = 1;
  if (cstdlib_strlen(v14) - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v19 = 1;
    v20 = 1;
    do
    {
      v21 = v14[v19];
      if (v21 == 95 || v21 == 35)
      {
        ++*a5;
      }

      v19 = ++v20;
    }

    while (cstdlib_strlen(v14) - 1 > v20);
  }

  LOWORD(v22) = v10 + 1;
  if (a3 <= (v10 + 1))
  {
    v27 = 0;
    v24 = a7;
  }

  else
  {
    v22 = (v10 + 1);
    v23 = &a2[8 * v22];
    v24 = a7;
    while (1)
    {
      if (*v23 == 34 || *v23 == 21)
      {
        v26 = v23[3];
        if (v11[3] != v26)
        {
          break;
        }
      }

      LOWORD(v22) = v22 + 1;
      v23 += 8;
      if (a3 == v22)
      {
        goto LABEL_26;
      }
    }

    v27 = v26 - v40;
  }

  if (a3 == v22)
  {
LABEL_26:
    v27 = cstdlib_strlen(a1);
  }

  v28 = v27 - 1;
  *a9 = v27 - 1;
  v29 = *a8;
  if (v27 - 1 <= *a8)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v30 = cstdlib_strchr(" \t\r\n", a1[v28]);
    v28 = *a9;
    if (!v30)
    {
      break;
    }

    --v28;
LABEL_33:
    *a9 = v28;
    if (v28 <= *a8)
    {
      goto LABEL_34;
    }
  }

  if (v28 >= 3)
  {
    v31 = cstdlib_strncmp(&a1[v28 - 1], "§", 2uLL);
    v28 = *a9;
    if (!v31)
    {
      v28 -= 2;
      goto LABEL_33;
    }
  }

LABEL_34:
  v29 = *a8;
LABEL_35:
  if (v28 > v29)
  {
    while (1)
    {
      v32 = cstdlib_strchr(" \t\r\n", a1[v28]);
      v33 = *a9;
      if (v32)
      {
        break;
      }

      v28 = v33 - 1;
      *a9 = v28;
      v29 = *a8;
      if (v28 <= *a8)
      {
        goto LABEL_40;
      }
    }

    *a9 = v33 + 1;
    v29 = *a8;
  }

LABEL_40:
  v34 = v27 - v29;
  if (v27 > v29)
  {
    v35 = &a1[v29];
    do
    {
      if (!cstdlib_strncmp(v35, "§", 2uLL))
      {
        ++*v24;
      }

      ++v35;
      --v34;
    }

    while (v34);
  }

  v36 = *v24;
  v37 = *a5;
  v38 = v37 >= v36;
  v39 = v37 - v36;
  if (v38)
  {
    *a6 = v39;
    return 1;
  }

  return 0;
}

const char *aux_special_strchr(const char *a1, int a2)
{
  result = cstdlib_strlen(a1);
  if (result)
  {
    v5 = 0;
    v6 = 0;
    while (a1[v5] != a2)
    {
      v5 = ++v6;
      if (cstdlib_strlen(a1) <= v6)
      {
        return 0;
      }
    }

    return &a1[v5];
  }

  return result;
}

char *hlp_ContextToString(int a1, int a2, char a3, unsigned int a4, uint64_t a5, char a6, char *__s1)
{
  if (a2 == 5)
  {
    *__s1 = 91;
    __s1[1] = a3;
    *(__s1 + 1) = 93;
  }

  else
  {
    cstdlib_strcpy(__s1, AP_BOUNDARYCND_STR_0[a2]);
  }

  if (a1 == 1)
  {
    v12 = " matches (";
  }

  else
  {
    v12 = " does not match (";
  }

  cstdlib_strcat(__s1, v12);
  if (a4)
  {
    v13 = 0;
    do
    {
      if (v13)
      {
        cstdlib_strcat(__s1, " ");
      }

      v14 = *(a5 + v13);
      if (v14 == 5)
      {
        v15 = cstdlib_strlen(__s1);
        __s1[v15] = 91;
        __s1[v15 + 1] = a6;
        __s1[v15 + 2] = 93;
        __s1[v15 + 3] = 0;
      }

      else
      {
        cstdlib_strcat(__s1, AP_BOUNDARYCND_STR_0[v14]);
      }

      v13 += 4;
    }

    while (4 * a4 != v13);
  }

  return cstdlib_strcat(__s1, ")");
}

uint64_t activeprompt_Consult(uint64_t **a1, char *a2, const char **a3, uint64_t *a4, unsigned __int16 *a5, unsigned int *a6, uint64_t a7, uint64_t a8, __int16 *a9, int a10)
{
  v310 = *MEMORY[0x277D85DE8];
  v15 = **a1;
  v16 = *(v15 + 16);
  v299 = 0;
  v17 = *(v15 + 56);
  v297 = 0;
  v296 = 0;
  v295 = 0;
  v294 = 0;
  v272 = cstdlib_strlen(*a3);
  v18 = *(*a4 + 12);
  v283 = a6;
  v19 = a6[1] - v18;
  v20 = cstdlib_strstr(a1[6], "%Ä");
  v21 = a1[6];
  v269 = v20;
  if (v20)
  {
    v22 = v20 - v21;
  }

  else
  {
    v22 = cstdlib_strlen(v21);
  }

  v286 = v16;
  v293 = a1;
  v284 = v17;
  v291 = v22;
  if (log_HasTraceTuningDataSubscriber(*(v16 + 32)))
  {
    log_OutTraceTuningData(*(v16 + 32), 277, "%s%s %s%s %s%d %s%d", v23, v24, v25, v26, v27, "BEG");
    v28 = a4;
    v29 = *(v16 + 32);
    v30 = *a3;
    v31 = cstdlib_strlen(*a3);
    v32 = v29;
    a4 = v28;
    log_OutTraceTuningDataBinary(v32, 278, "", "text/plain;charset=depes", v30, v31);
    log_OutTraceTuningDataBinary(*(v16 + 32), 278, "", "application/x-realspeak-markers-pp;version=4.0", *v28, 32 * *a5);
  }

  v290 = v18;
  v285 = 0;
  v303 = 0;
  v302 = 0;
  v301 = 0;
  __s = 0;
  v298 = 0;
  v33 = v16;
  if (v283[2] + v19 < (v19 + v22))
  {
    goto LABEL_372;
  }

  v285 = 0;
  v277 = 0;
  v278 = 0;
  v270 = 0;
  v265 = 0;
  v271 = 0;
  v280 = 0;
  LOBYTE(v274) = 0;
  LOBYTE(v279) = 0;
  v273 = v22;
  v281 = v19;
  v288 = a5;
  v292 = a4;
  v276 = v19;
  while (2)
  {
    if (!(*a3)[v19])
    {
      goto LABEL_372;
    }

    v34 = v19;
    if (v272 <= v19)
    {
      v47 = 0;
      v35 = 0;
      v45 = 1;
      v37 = v19;
      v38 = v281;
      goto LABEL_40;
    }

    v35 = 0;
    v36 = 0;
    v37 = v19;
    v38 = v281;
    while (1)
    {
      if (v35)
      {
        if (v34 + 1 < v272 && (*a3)[v37] == 32)
        {
          v39 = &(*a3)[v34 + 1];
          v40 = cstdlib_strlen("§");
          if (!cstdlib_strncmp(v39, "§", v40))
          {
            v37 += cstdlib_strlen("§");
            --v35;
            v45 = 1;
            goto LABEL_31;
          }
        }
      }

      LOWORD(v41) = *a5;
      if (v37)
      {
        break;
      }

      v43 = *a5;
      if (*a5)
      {
        goto LABEL_20;
      }

LABEL_29:
      if (v36 >= v291)
      {
        v45 = 1;
        goto LABEL_39;
      }

      v45 = *(v293[6] + v36++) == (*a3)[v37];
LABEL_31:
      v34 = ++v37;
      v46 = v45 && v272 > v37;
      if (!v46)
      {
        goto LABEL_39;
      }
    }

    v42 = cstdlib_strchr(" _", (*a3)[v37 - 1]);
    v43 = *a5;
    if (!v42)
    {
      goto LABEL_25;
    }

    if (!*a5)
    {
      goto LABEL_29;
    }

LABEL_20:
    v41 = 0;
    v44 = *v292;
    while (*v44 != 34 || v44[3] != v34 + v290)
    {
      ++v41;
      v44 += 8;
      if (v43 == v41)
      {
        goto LABEL_29;
      }
    }

LABEL_25:
    if (v43 <= v41)
    {
      goto LABEL_29;
    }

    if (hlp_GetRangeForSETPHON(*a3, *v292, v43, v41, &v296 + 1, &v296, &v297, &v295, &v294))
    {
      if (v296)
      {
        v35 = v297;
      }

      goto LABEL_29;
    }

    v45 = 0;
LABEL_39:
    v47 = v36;
    a4 = v292;
LABEL_40:
    v48 = 0;
    v49 = v273 > v47 && v272 == v34;
    if (v49 || !v45)
    {
      v275 = v37 - v19;
      goto LABEL_113;
    }

    v50 = v37 - v19;
    v51 = v37;
    v267 = v37 - v19;
    if (v294 < v34)
    {
      v50 = v37 - v19;
      v51 = v37;
      if (v35)
      {
        v52 = v37;
        if (v272 <= v37)
        {
          v56 = v37;
        }

        else
        {
          v53 = &(*a3)[v37];
          v54 = cstdlib_strlen("§");
          v55 = v37;
          v56 = v37;
          if (cstdlib_strncmp(v53, "§", v54))
          {
            while (1)
            {
              v52 = ++v55;
              if (v272 <= v55)
              {
                break;
              }

              v57 = &(*a3)[v55];
              v58 = cstdlib_strlen("§");
              v56 = v55;
              if (!cstdlib_strncmp(v57, "§", v58))
              {
                goto LABEL_56;
              }
            }

            v56 = v55;
          }
        }

LABEL_56:
        if (v272 == v52)
        {
          v33 = v286;
          a5 = v288;
          a4 = v292;
          goto LABEL_372;
        }

        v59 = cstdlib_strlen("§");
        v51 = v56 + v35 + v35 * v59 - 1;
        v33 = v286;
        a4 = v292;
        if ((v56 + v35 + v35 * v59 - 1) > v272)
        {
          goto LABEL_427;
        }

        v50 = v51 - v19;
        a5 = v288;
        v38 = v281;
      }
    }

    v266 = v51;
    v275 = v50;
    LOWORD(v60) = *a5;
    if (*a5)
    {
      v61 = 0;
      v62 = 0;
      v63 = v38 + v50;
      while (*(*a4 + v61) != 34 || hlp_GetRangeForSETPHON(*a3, *a4, v60, v62, &v296 + 1, &v296, &v297, &v295, &v294) && (!v296 || (v295 >= v38 || v294 < v38) && (v295 >= v63 || v63 > v294)))
      {
        ++v62;
        v60 = *a5;
        v61 += 32;
        if (v62 >= v60)
        {
          goto LABEL_69;
        }
      }

      v48 = 0;
      v271 = v37 - v19;
LABEL_113:
      v64 = v293;
      v65 = v291;
      v89 = v276;
      v33 = v286;
      goto LABEL_114;
    }

LABEL_69:
    v64 = v293;
    v65 = v291;
    v33 = v286;
    if (!v269)
    {
      goto LABEL_221;
    }

    v66 = (*(v284 + 104))(a7, a8, 1, 0, &v298);
    if ((v66 & 0x80000000) != 0)
    {
LABEL_366:
      v285 = v66;
      goto LABEL_367;
    }

    v285 = (*(v284 + 104))(a7, a8, 2, v298, &v303);
    if ((v285 & 0x80000000) != 0)
    {
LABEL_367:
      v33 = v286;
      goto LABEL_372;
    }

    v67 = cstdlib_strlen("%Ä");
    v68 = cstdlib_strstr(v293[6], "§");
    v33 = v286;
    if (!v68)
    {
      v64 = v293;
      v65 = v291;
      goto LABEL_221;
    }

    v69 = &v269[v67];
    v70 = v284;
    v71 = v68;
    do
    {
      v72 = v303;
      v66 = v285;
      if (!v303)
      {
LABEL_81:
        v75 = 1;
        goto LABEL_82;
      }

      while (1)
      {
        v73 = a4;
        v74 = (*(v70 + 168))(a7, a8, v72, 1, 1, &v299 + 2, &v301);
        if ((v74 & 0x80000000) != 0 || (v74 = (*(v70 + 168))(a7, a8, v303, 0, 1, &v302, &v301), (v74 & 0x80000000) != 0))
        {
          v285 = v74;
          v33 = v286;
LABEL_369:
          a4 = v73;
          goto LABEL_372;
        }

        if (v302 == 5 && HIWORD(v299) == (v19 + v71 - *(v293 + 24)))
        {
          break;
        }

        v70 = v284;
        v66 = (*(v284 + 120))(a7, a8, v303, &v303);
        if ((v66 & 0x80000000) != 0)
        {
          goto LABEL_366;
        }

        v72 = v303;
        if (!v303)
        {
          goto LABEL_81;
        }
      }

      v285 = (*(v284 + 176))(a7, a8, v303, 3, &__s, &v301);
      if ((v285 & 0x80000000) != 0)
      {
        goto LABEL_367;
      }

      v88 = cstdlib_strlen(__s);
      v75 = !cstdlib_strncmp(v69, __s, v88) && (!v69[v88] || !cstdlib_strcmp(&v69[v88], "%Ä"));
      v70 = v284;
      v66 = v285;
LABEL_82:
      v285 = v66;
      v76 = v303;
      if (*v69)
      {
        v77 = 1;
        do
        {
          if (!cstdlib_strcmp(v69, "%Ä"))
          {
            break;
          }

          v69 += utf8_determineUTF8CharLength(*v69);
          v78 = *v69;
          if (v78 == 95 || v78 == 35)
          {
            v79 = *(v69 - 1) - 32;
            v46 = v79 > 0x3F;
            v80 = (1 << v79) & 0x8000000000000009;
            if (v46 || v80 == 0)
            {
              ++v77;
            }
          }
        }

        while (*v69);
        v82 = v77;
        v70 = v284;
      }

      else
      {
        v82 = 1;
      }

      v83 = cstdlib_strlen("§");
      v71 = cstdlib_strstr(&v71[v82 - 1 + v83 * v82], "§");
      v84 = *v69;
      if (v71)
      {
        v85 = v84 == 0;
      }

      else
      {
        v85 = 0;
      }

      if (v85)
      {
        v48 = 0;
        v271 = v37 - v19;
        a5 = v288;
        v65 = v291;
        a4 = v292;
        v89 = v276;
        v33 = v286;
LABEL_365:
        v64 = v293;
        goto LABEL_114;
      }

      v86 = utf8_determineUTF8CharLength(v84);
      if (v76)
      {
        v87 = v75;
      }

      else
      {
        v87 = 0;
      }

      a5 = v288;
      a4 = v292;
      if (!v71)
      {
        break;
      }

      v69 += v86;
    }

    while (v87);
    v65 = v291;
    v33 = v286;
    if (!v87)
    {
      v48 = 0;
      v271 = v37 - v19;
      v89 = v276;
      goto LABEL_365;
    }

    v64 = v293;
    while (1)
    {
LABEL_221:
      if (cstdlib_strlen(*a3) <= v37)
      {
        v48 = 1;
        goto LABEL_227;
      }

      if (cstdlib_strchr(" _", (*a3)[v37]))
      {
        break;
      }

      v149 = cstdlib_strchr(*((*v64)[1] + 192), (*a3)[v37]);
      LOWORD(v37) = v37 + 1;
      a5 = v288;
      if (!v149)
      {
        v48 = 0;
        goto LABEL_227;
      }
    }

    v48 = 1;
    a5 = v288;
LABEL_227:
    v89 = v276;
    if (a10)
    {
      if (v19)
      {
        v150 = cstdlib_strlen(*a3);
        v151 = *a3;
        if (v150 == v266 && v151[v19 - 1] == 95)
        {
          v48 = 0;
          v271 = v267;
          goto LABEL_233;
        }

        if (cstdlib_strlen(v151) <= v266)
        {
          v271 = v267;
        }

        else
        {
          if ((*a3)[v19 - 1] == 95 || (*a3)[v266] == 95)
          {
            v48 = 0;
          }

          v271 = v267;
        }

        v270 = v266;
        v278 = v19;
      }

      else
      {
        if (cstdlib_strlen(*a3) <= v266)
        {
          v278 = 0;
        }

        else
        {
          v278 = 0;
          if ((*a3)[v266] == 95)
          {
            v48 = 0;
          }
        }

        v271 = v267;
        v270 = v266;
      }

      a5 = v288;
    }

    else
    {
      v271 = v267;
LABEL_233:
      v270 = v266;
      v278 = v19;
    }

LABEL_114:
    if (!log_HasTraceTuningDataSubscriber(*(v33 + 32)))
    {
      if (v48)
      {
LABEL_120:
        if (!*(v64 + 7) && !*(v64 + 8))
        {
          goto LABEL_301;
        }

        goto LABEL_122;
      }

      goto LABEL_346;
    }

    v95 = *(v33 + 32);
    if (!v48)
    {
      log_OutTraceTuningData(v95, 280, "%s%d %s%d %s%s", v90, v91, v92, v93, v94, "IDXBEG");
      goto LABEL_346;
    }

    log_OutTraceTuningData(v95, 280, "%s%d %s%d %s%s", v90, v91, v92, v93, v94, "IDXBEG");
    if (!*(v64 + 7) && !*(v64 + 8))
    {
      log_OutTraceTuningData(*(v33 + 32), 281, "%s%s %s%s", v96, v97, v98, v99, v100, "RES");
      log_OutTraceTuningData(*(v33 + 32), 282, "%s%s %s%s", v101, v102, v103, v104, v105, "RES");
      goto LABEL_120;
    }

LABEL_122:
    v106 = v64;
    v107 = v270;
    for (i = v270; cstdlib_strlen(*a3) > v107; i = ++v107)
    {
      if (cstdlib_strchr(" _", (*a3)[i]))
      {
        break;
      }
    }

    v109 = cstdlib_strlen(*a3);
    v110 = (*v106)[1];
    v111 = *(v110 + 184);
    v112 = *(v110 + 192);
    v113 = *a3;
    v114 = v278;
    while (v114)
    {
      v115 = v114 - 1;
      v116 = cstdlib_strchr(" _", v113[v114 - 1]);
      v114 = v115;
      if (!v116)
      {
        if ((v115 & 0x8000) == 0)
        {
          v117 = v115 & 0xFFFF7FFF;
          if (cstdlib_strchr(v112, v113[v117]))
          {
            v279 = v113[v117];
            goto LABEL_132;
          }
        }

        break;
      }
    }

    v279 = 0;
LABEL_132:
    v118 = v278 + v271;
    if ((v118 << 16) >= (cstdlib_strlen(v113) << 16))
    {
      v274 = 0;
      a4 = v292;
    }

    else
    {
      v119 = &v113[v118];
      do
      {
        v120 = *v119++;
      }

      while (cstdlib_strchr(" _", v120));
      a4 = v292;
      if (cstdlib_strchr(v112, *(v119 - 1)))
      {
        v274 = *(v119 - 1);
      }

      else
      {
        v274 = 0;
      }
    }

    a5 = v288;
    if (v278)
    {
      if (v279 && cstdlib_strchr(v111, v279))
      {
        v308 = 0x300000002;
        v309 = 6;
        v121 = 3;
        goto LABEL_147;
      }

      v308 = 0x700000004;
      v309 = 6;
      v121 = 3;
    }

    else
    {
      v308 = 0x300000001;
      v121 = 2;
    }

    if (v279)
    {
LABEL_147:
      *(&v308 + v121++) = 5;
    }

    *(&v308 + v121) = 0;
    if (v109 == i)
    {
      v306 = 0x300000001;
      v122 = 2;
      v123 = v274;
      goto LABEL_154;
    }

    v123 = v274;
    if (v274 && cstdlib_strchr(v111, v274))
    {
      v306 = 0x300000002;
      v307 = 6;
      v122 = 3;
      goto LABEL_155;
    }

    v306 = 0x700000004;
    v307 = 6;
    v122 = 3;
LABEL_154:
    if (v123)
    {
LABEL_155:
      *(&v306 + v122++) = 5;
    }

    v280 = v121 + 1;
    *(&v306 + v122) = 0;
    v277 = v122 + 1;
    if (*v288)
    {
      v124 = 0;
      v125 = 0;
      v126 = (v278 + v275);
      do
      {
        if (*(*a4 + v124) == 50)
        {
          v127 = *(*a4 + v124 + 24);
          if (v127)
          {
            if (*v127)
            {
              cstdlib_strncpy(*(*a4 + v124 + 24), *(*a4 + v124 + 24), 8uLL);
              v128 = *(*a4 + v124 + 12) - v290;
              if (v128 == v278)
              {
                if (cstdlib_strcmp(v127, "medial"))
                {
                  v129 = 0;
                }

                else
                {
                  v308 = 0x700000004;
                  v129 = 2;
                }

                if (!cstdlib_strcmp(v127, "phrase-break"))
                {
                  *(&v308 + 4 * v129) = 0x300000002;
                  v129 += 2;
                }

                if (!cstdlib_strcmp(v127, "sentence-break"))
                {
                  *(&v308 + 4 * v129) = 0x300000001;
                  v129 += 2;
                }

                *(&v308 + v129) = 0;
                v280 = v129 + 1;
                a4 = v292;
                v128 = *(*v292 + v124 + 12) - v290;
              }

              if (v128 == v126 || v128 - 1 == v126)
              {
                if (cstdlib_strcmp(v127, "medial"))
                {
                  v131 = 0;
                }

                else
                {
                  v306 = 0x700000004;
                  v131 = 2;
                }

                if (!cstdlib_strcmp(v127, "phrase-break"))
                {
                  *(&v306 + 4 * v131) = 0x300000002;
                  v131 += 2;
                }

                if (!cstdlib_strcmp(v127, "sentence-break"))
                {
                  *(&v306 + 4 * v131) = 0x300000001;
                  v131 += 2;
                }

                *(&v306 + v131) = 0;
                v277 = v131 + 1;
                a4 = v292;
              }
            }
          }
        }

        ++v125;
        v124 += 32;
      }

      while (v125 < *v288);
    }

    v132 = v293;
    if (!*(v293 + 7))
    {
      LODWORD(v139) = 1;
      v133 = v284;
      goto LABEL_246;
    }

    v133 = v284;
    if (!v280)
    {
      goto LABEL_245;
    }

    v134 = 0;
    v135 = v280;
    while (2)
    {
      v136 = *(&v308 + v134);
      if (v136 != *(v132 + 7))
      {
        goto LABEL_202;
      }

      if (v136 == 7)
      {
        if (*(*((*v132)[1] + 232) + 8 * *(v132 + 24)))
        {
          __s1[0] = 0;
          v66 = (*(v133 + 104))(a7, a8, 1, 0, &v298);
          if ((v66 & 0x80000000) != 0)
          {
            goto LABEL_366;
          }

          v66 = (*(v133 + 104))(a7, a8, 2, v298, &v303);
          if ((v66 & 0x80000000) != 0)
          {
            goto LABEL_366;
          }

          v137 = v303;
          v138 = a7;
          if (v303)
          {
            while (1)
            {
              v66 = (*(v133 + 168))(v138, a8, v137, 1, 1, &v299 + 2, &v301);
              if ((v66 & 0x80000000) != 0)
              {
                goto LABEL_366;
              }

              v66 = (*(v133 + 168))(v138, a8, v303, 2, 1, &v299, &v301);
              if ((v66 & 0x80000000) != 0)
              {
                goto LABEL_366;
              }

              v138 = a7;
              if (v299 + 1 == v278)
              {
                v66 = (*(v133 + 168))(a7, a8, v303, 0, 1, &v302, &v301);
                if ((v66 & 0x80000000) != 0)
                {
                  goto LABEL_366;
                }

                if (v302 <= 0xE && ((1 << v302) & 0x7E10) != 0)
                {
                  break;
                }
              }

              v66 = (*(v133 + 120))(a7, a8, v303, &v303);
              if ((v66 & 0x80000000) != 0)
              {
                goto LABEL_366;
              }

              v137 = v303;
              if (!v303)
              {
                goto LABEL_201;
              }
            }

            v285 = (*(v133 + 176))(a7, a8, v303, 3, __s1, &v301);
            if ((v285 & 0x80000000) != 0)
            {
              goto LABEL_367;
            }

            v140 = *(v286 + 8);
            v141 = cstdlib_strlen(*(*((*v132)[1] + 232) + 8 * *(v132 + 24)));
            v142 = heap_Calloc(v140, (v141 + 1), 1);
            v143 = v132;
            v144 = v142;
            cstdlib_strcpy(v142, *(*(*(*v143 + 8) + 232) + 8 * v143[24]));
            v145 = cstdlib_strpbrk(v144, " ");
            if (v144 | v145)
            {
              v139 = v145;
              v146 = v144;
              if (v145)
              {
LABEL_208:
                *v139 = 0;
              }

              while (1)
              {
                v147 = cstdlib_strlen(__s1[0]);
                v148 = v147 - cstdlib_strlen(v146);
                if (v148 >= 0 && !cstdlib_strcmp(v146, &__s1[0][v148]))
                {
                  break;
                }

                a4 = v292;
                if (!v139)
                {
                  v133 = v284;
                  goto LABEL_215;
                }

                v146 = v139 + 1;
                v139 = cstdlib_strpbrk(v139 + 1, " ");
                if (v139)
                {
                  goto LABEL_208;
                }
              }

              LODWORD(v139) = 1;
              a4 = v292;
              v133 = v284;
            }

            else
            {
              LODWORD(v139) = 0;
            }

LABEL_215:
            heap_Free(*(v286 + 8), v144);
            v132 = v293;
          }

          else
          {
LABEL_201:
            v285 = v66;
            LODWORD(v139) = 0;
          }

          v135 = v280;
          if (v139)
          {
            goto LABEL_246;
          }

          goto LABEL_217;
        }

LABEL_202:
        LODWORD(v139) = 0;
LABEL_217:
        if (++v134 >= v135)
        {
          goto LABEL_246;
        }

        continue;
      }

      break;
    }

    if (v136 != 5 || *(v132 + 24) == v279)
    {
      LODWORD(v139) = 1;
      goto LABEL_246;
    }

LABEL_245:
    LODWORD(v139) = 0;
LABEL_246:
    if (log_HasTraceTuningDataSubscriber(*(v286 + 32)))
    {
      cstdlib_strcpy(__s1, "");
      hlp_ContextToString(v139, *(v132 + 7), *(v132 + 24), v280, &v308, v279, __s1);
      log_OutTraceTuningData(*(v286 + 32), 281, "%s%s %s%s", v152, v153, v154, v155, v156, "RES");
    }

    v89 = v276;
    if (!v139)
    {
      v65 = v291;
LABEL_339:
      v33 = v286;
      goto LABEL_346;
    }

    if (!*(v132 + 8))
    {
LABEL_296:
      v161 = 1;
      goto LABEL_298;
    }

    if (!v277)
    {
LABEL_297:
      v161 = 0;
      goto LABEL_298;
    }

    v157 = 0;
    v158 = v277;
    do
    {
      v159 = *(&v306 + v157);
      if (v159 != *(v293 + 8))
      {
LABEL_266:
        v161 = 0;
        goto LABEL_287;
      }

      if (v159 != 7)
      {
        if (v159 != 5 || *(v293 + 25) == v274)
        {
          goto LABEL_296;
        }

        goto LABEL_297;
      }

      if (!*(*((*v293)[1] + 232) + 8 * *(v293 + 25)))
      {
        goto LABEL_266;
      }

      __s1[0] = 0;
      v160 = (*(v133 + 104))(a7, a8, 1, 0, &v298);
      if ((v160 & 0x80000000) != 0 || (v160 = (*(v133 + 104))(a7, a8, 2, v298, &v303), (v160 & 0x80000000) != 0))
      {
LABEL_370:
        v285 = v160;
LABEL_371:
        v33 = v286;
        goto LABEL_372;
      }

      while (1)
      {
        if (!v303)
        {
          v285 = v160;
          v161 = 0;
          goto LABEL_286;
        }

        v160 = (*(v133 + 168))(a7, a8, v303, 1, 1, &v299 + 2, &v301);
        if ((v160 & 0x80000000) != 0)
        {
          goto LABEL_370;
        }

        if (HIWORD(v299) - 1 == v270)
        {
          v160 = (*(v133 + 168))(a7, a8, v303, 2, 1, &v299, &v301);
          if ((v160 & 0x80000000) != 0)
          {
            goto LABEL_370;
          }

          v160 = (*(v133 + 168))(a7, a8, v303, 0, 1, &v302, &v301);
          if ((v160 & 0x80000000) != 0)
          {
            goto LABEL_370;
          }

          if (v302 <= 0xE && ((1 << v302) & 0x7E10) != 0)
          {
            break;
          }
        }

        v160 = (*(v133 + 120))(a7, a8, v303, &v303);
        if ((v160 & 0x80000000) != 0)
        {
          goto LABEL_370;
        }
      }

      v285 = (*(v133 + 176))(a7, a8, v303, 3, __s1, &v301);
      if ((v285 & 0x80000000) != 0)
      {
        goto LABEL_371;
      }

      v162 = *(v286 + 8);
      v163 = cstdlib_strlen(*(*((*v293)[1] + 232) + 8 * *(v293 + 25)));
      v164 = heap_Calloc(v162, (v163 + 1), 1);
      cstdlib_strcpy(v164, *(*((*v293)[1] + 232) + 8 * *(v293 + 25)));
      v165 = cstdlib_strpbrk(v164, " ");
      if (!(v164 | v165))
      {
LABEL_284:
        v161 = 0;
        goto LABEL_285;
      }

      v166 = v165;
      v167 = v164;
      if (!v165)
      {
        goto LABEL_272;
      }

LABEL_271:
      *v166 = 0;
LABEL_272:
      while (1)
      {
        v168 = cstdlib_strstr(__s1[0], v167);
        if (v168)
        {
          break;
        }

LABEL_281:
        if (!v166)
        {
          goto LABEL_284;
        }

        v167 = v166 + 1;
        v166 = cstdlib_strpbrk(v166 + 1, " ");
        if (v166)
        {
          goto LABEL_271;
        }
      }

      v169 = v168;
      v170 = cstdlib_strlen(__s1[0]);
      v171 = v170 - cstdlib_strlen(v169);
      if (v171 >= 1)
      {
        v172 = __s1[0];
        a4 = v292;
        while (1)
        {
          v173 = *v172++;
          v174 = (1 << v173) & 0x4008400000000;
          if (v173 > 0x32 || v174 == 0)
          {
            goto LABEL_281;
          }

          if (!--v171)
          {
            v161 = 1;
            goto LABEL_285;
          }
        }
      }

      v161 = 1;
      a4 = v292;
LABEL_285:
      heap_Free(*(v286 + 8), v164);
      v133 = v284;
LABEL_286:
      v158 = v277;
      if (v161)
      {
        break;
      }

LABEL_287:
      ++v157;
    }

    while (v157 < v158);
LABEL_298:
    if (log_HasTraceTuningDataSubscriber(*(v286 + 32)))
    {
      cstdlib_strcpy(__s1, "");
      hlp_ContextToString(v161, *(v293 + 8), *(v293 + 25), v277, &v306, v274, __s1);
      log_OutTraceTuningData(*(v286 + 32), 282, "%s%s %s%s", v176, v177, v178, v179, v180, "RES");
    }

    v65 = v291;
    if (!v161)
    {
      v89 = v276;
      goto LABEL_339;
    }

LABEL_301:
    v181 = domain_mngr_utils_ListContainsString(a2, "*");
    v182 = v265;
    if (!v181)
    {
      v182 = 1;
    }

    v183 = v293;
    LODWORD(v184) = *a5;
    if (*(v293 + 2) != 2 && v182 != 1)
    {
      v33 = v286;
      v201 = a7;
      break;
    }

    v185 = v290 + v270;
    if (!*a5)
    {
      v202 = v290 + v270;
      v33 = v286;
      if (v182 == 1)
      {
        goto LABEL_344;
      }

      v228 = v286;
      v229 = a7;
      v73 = a4;
      LOWORD(v184) = 0;
LABEL_385:
      v233 = v290;
      v231 = v278;
      v234 = v279;
      v235 = v275;
      goto LABEL_386;
    }

    v265 = v182;
    v186 = 0;
    v187 = 0;
    v188 = 56;
    v189 = 2;
    v190 = v290 + v278;
    while (2)
    {
      v191 = *a4 + 32 * v186;
      v192 = *v191;
      if ((*v191 - 16) >= 4)
      {
        if (v192 == 21)
        {
          if (v265 == 1)
          {
            if (v186 + 1 >= v184)
            {
              v197 = -1;
            }

            else
            {
              v268 = v190;
              v282 = v187;
              v195 = (*a4 + v188);
              v196 = v189;
              while (*(v195 - 6) != 21 || *(v195 - 3) < *(v191 + 12) || !cstdlib_strcmp(*v195, *(v191 + 24)))
              {
                v49 = v184 == v196++;
                v195 += 4;
                if (v49)
                {
                  v197 = -1;
                  goto LABEL_331;
                }
              }

              v197 = *(v195 - 3) - *(v191 + 12);
LABEL_331:
              v187 = v282;
              v190 = v268;
            }

            a4 = v292;
            v198 = *v292 + 32 * v186;
            v199 = *(v198 + 12);
            if (v199 <= v190 && (v197 == -1 || v199 + v197 >= v185))
            {
              v200 = v187;
              if (domain_mngr_utils_ListContainsString(a2, *(v198 + 24)) == 1)
              {
                v187 = 1;
              }

              else
              {
                v187 = v200;
              }
            }

            goto LABEL_327;
          }
        }

        else if (v192 == 24)
        {
          goto LABEL_308;
        }

LABEL_326:
        a4 = v292;
        goto LABEL_327;
      }

LABEL_308:
      if (*(v293 + 2) != 2)
      {
        goto LABEL_326;
      }

      v193 = *(v191 + 12);
      v194 = v193 <= v190 || v193 >= v185;
      a4 = v292;
      if (!v194)
      {
        v33 = v286;
        log_OutText(*(v286 + 32), "DOMAIN_MNGR", 5, 0, "    Match with [%s::%s] at %u-%u deactivated because of ESC pitch, volume or rate", *((*v293)[1] + 168), v293[2], v190, v290 + v270);
        log_OutTraceTuningData(*(v286 + 32), 283, "%s%s %s%s", v214, v215, v216, v217, v218, "RES");
        v65 = v291;
        goto LABEL_345;
      }

LABEL_327:
      ++v186;
      v184 = *v288;
      ++v189;
      v188 += 32;
      if (v186 < v184)
      {
        continue;
      }

      break;
    }

    v201 = a7;
    if (v265 != 1)
    {
      a5 = v288;
      v33 = v286;
      break;
    }

    v202 = v290 + v270;
    a5 = v288;
    v183 = v293;
    v65 = v291;
    v33 = v286;
    if (!v187)
    {
LABEL_344:
      log_OutText(*(v33 + 32), "DOMAIN_MNGR", 5, 0, "    Match with [%s::%s] at %u-%u deactivated because of ESC tn", *(*(*v183 + 1) + 168), v183[2], v290 + v278, v202);
      log_OutTraceTuningData(*(v33 + 32), 283, "%s%s %s%s", v203, v204, v205, v206, v207, "RES");
      v265 = 1;
LABEL_345:
      v89 = v276;
LABEL_346:
      v208 = *a3;
      for (j = v19; ; j = v19)
      {
        v210 = v208[j];
        if (!v210)
        {
          break;
        }

        v211 = cstdlib_strchr(" _", v210);
        v208 = *a3;
        if (v211)
        {
          v212 = v208[v19];
          if (v212)
          {
            v213 = v19;
            while (cstdlib_strchr(" _", v212))
            {
              v213 = (v213 + 1);
              LOBYTE(v212) = (*a3)[v213];
              v19 = v213;
              if (!v212)
              {
                goto LABEL_356;
              }
            }

            v19 = v213;
          }

          break;
        }

        v19 = (v19 + 1);
      }

LABEL_356:
      v281 = v19;
      a5 = v288;
      if (v283[2] + v89 < (v19 + v65))
      {
        goto LABEL_372;
      }

      continue;
    }

    break;
  }

  v228 = v33;
  v229 = v201;
  if (!v184)
  {
    v73 = a4;
    goto LABEL_385;
  }

  v230 = 0;
  v231 = v278;
  v232 = (*a4 + 12);
  v233 = v290;
  v234 = v279;
  v235 = v275;
  while (1)
  {
    v236 = *v232;
    v232 += 8;
    if (v236 - v290 >= v278)
    {
      break;
    }

    if (v184 == ++v230)
    {
      v73 = a4;
      goto LABEL_386;
    }
  }

  v73 = a4;
  LOWORD(v184) = v230;
LABEL_386:
  if (log_GetLogLevel(*(v228 + 32)) >= 5)
  {
    cstdlib_strcpy(__s1, "");
    cstdlib_strcpy(__dst, "");
    hlp_ContextToString(1, *(v293 + 7), *(v293 + 24), v280, &v308, v234, __s1);
    hlp_ContextToString(1, *(v293 + 8), *(v293 + 25), v277, &v306, v274, __dst);
    v237 = *a5;
    LOWORD(v238) = v184;
    if (v237 > v184)
    {
      v238 = v184;
      v239 = (*v73 + 32 * v184);
      while (v239[3] - v233 <= v231 && *v239 == 36)
      {
        v239 += 8;
        if (v237 == ++v238)
        {
          goto LABEL_394;
        }
      }
    }

    if (v237 == v238)
    {
LABEL_394:
      v240 = (*v73 + 32 * (v237 - 1));
      v241 = v240[1];
      if (*v240 != 36)
      {
        v242 = (v240[2] + v241);
        goto LABEL_404;
      }

LABEL_403:
      v242 = v241;
    }

    else
    {
      v241 = *(*v73 + 32 * v238 + 4);
      if (!*a5)
      {
        goto LABEL_403;
      }

      v243 = (*v73 + 8);
      v242 = v241;
      do
      {
        if (v243[1] - v233 >= v270)
        {
          break;
        }

        if (*(v243 - 2) != 36)
        {
          v242 = (*v243 + *(v243 - 1));
        }

        v243 += 8;
        --v237;
      }

      while (v237);
    }

LABEL_404:
    log_OutText(*(v286 + 32), "DOMAIN_MNGR", 5, 0, "    Match with [%s::%s], begPos %ld, endPos %ld, begCtxt %s, endCtxt %s", *((*v293)[1] + 168), v293[2], v241, v242, __s1, __dst);
  }

  v244 = *a9;
  v285 = activeprompt_Insert(v293, v231, v235, v233, a3, v73, a5, v184, v283, v229, a8, a9);
  if ((v285 & 0x80000000) != 0)
  {
    v33 = v286;
    a4 = v73;
    goto LABEL_372;
  }

  v245 = *a5;
  v246 = *v73;
  v247 = v233 + v231;
  if (*a5)
  {
    v248 = 0;
    v249 = (v246 + 12);
    while (1)
    {
      v250 = *v249;
      v249 += 8;
      if (v250 > v247)
      {
        break;
      }

      if (v245 == ++v248)
      {
        v251 = *a5;
        goto LABEL_414;
      }
    }

    v251 = v248;
  }

  else
  {
    v251 = 0;
  }

LABEL_414:
  v252 = *a9;
  v253 = heap_Realloc(*(v286 + 8), v246, 32 * v245 + 32);
  if (!v253)
  {
    v285 = -1998577654;
    log_OutPublic(*(v286 + 32), "DOMAIN_MNGR", 47000, 0);
    v33 = v286;
    a5 = v288;
    goto LABEL_369;
  }

  *v73 = v253;
  v254 = *v288;
  if (v251 < v254)
  {
    cstdlib_memmove((v253 + 32 * v251 + 32), (v253 + 32 * v251), 32 * (v254 - v251));
    LOWORD(v254) = *v288;
    v253 = *v73;
  }

  *v288 = v254 + 1;
  cstdlib_memset((v253 + 32 * v251), 0, 0x20uLL);
  v255 = (*v73 + 32 * v251);
  *v255 = 40;
  if (v251)
  {
    v255[1] = *(v255 - 7);
  }

  v256 = v270 - v278 + (v252 - v244);
  v255[3] = v247;
  v255[4] = v256 & ~(v256 >> 31);
  v257 = *(v286 + 8);
  v258 = cstdlib_strlen(*((*v293)[1] + 168));
  v259 = cstdlib_strlen(v293[2]);
  v260 = heap_Alloc(v257, (v258 + v259 + 3));
  a4 = v73;
  *(*v73 + 32 * v251 + 24) = v260;
  v261 = *v73 + 32 * v251;
  v263 = *(v261 + 24);
  v262 = (v261 + 24);
  if (v263)
  {
    if (vector_Add(*(**v293 + 88), v262))
    {
      cstdlib_strcpy(*(*v73 + 32 * v251 + 24), *((*v293)[1] + 168));
      cstdlib_strcat(*(*v73 + 32 * v251 + 24), "::");
      cstdlib_strcat(*(*v73 + 32 * v251 + 24), v293[2]);
      v33 = v286;
    }

    else
    {
      v285 = -1998577654;
      v33 = v286;
      heap_Free(*(v286 + 8), *(*v73 + 32 * v251 + 24));
      *(*v73 + 32 * v251 + 24) = 0;
      log_OutPublic(*(v286 + 32), "DOMAIN_MNGR", 47000, 0);
    }
  }

  else
  {
    v285 = -1998577654;
    log_OutPublic(*(v286 + 32), "DOMAIN_MNGR", 47000, 0);
    v33 = v286;
  }

LABEL_427:
  a5 = v288;
LABEL_372:
  if (log_HasTraceTuningDataSubscriber(*(v33 + 32)))
  {
    v219 = *(v33 + 32);
    v220 = *a3;
    v221 = cstdlib_strlen(v220);
    log_OutTraceTuningDataBinary(v219, 279, "", "text/plain;charset=depes", v220, v221);
    log_OutTraceTuningDataBinary(*(v33 + 32), 279, "", "application/x-realspeak-markers-pp;version=4.0", *a4, 32 * *a5);
    log_OutTraceTuningData(*(v33 + 32), 277, "%s%s", v222, v223, v224, v225, v226, "END");
  }

  return v285;
}