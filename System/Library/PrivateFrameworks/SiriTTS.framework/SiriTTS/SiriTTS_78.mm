uint64_t uselect_ApplyOnlineReduction(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 != 1)
  {
    v5 = 2229280778;
    if (*(**(a1 + 56) + 108) != a3)
    {
      return 2229280783;
    }

    if (*(a1 + 936))
    {
      if (!a3)
      {
        return 0;
      }
    }

    else
    {
      v7 = heap_Calloc(*(*(a1 + 16) + 8), a3, 1);
      *(a1 + 936) = v7;
      if (!v7)
      {
        log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19000, 0);
        return v5;
      }

      if (!*(**(a1 + 56) + 108))
      {
        return 0;
      }
    }

    v8 = 0;
    do
    {
      *(*(a1 + 936) + v8) = *(a2 + v8);
      ++v8;
    }

    while (v8 < *(**(a1 + 56) + 108));
    return 0;
  }

  v4 = *(a1 + 936);
  if (!v4)
  {
    return 0;
  }

  heap_Free(*(*(a1 + 16) + 8), v4);
  v5 = 0;
  *(a1 + 936) = 0;
  return v5;
}

void *DeallocUnitSelectorMemory_NRowsDependency(void *result)
{
  v1 = result;
  v2 = result[108];
  if (v2)
  {
    result = heap_Free(*(result[2] + 8), v2);
    v1[108] = 0;
  }

  v3 = *(v1 + 908);
  if (!*(v1 + 908))
  {
    v5 = v1[102];
    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = 0;
  v5 = v1[102];
  v6 = 24;
  v7 = v5;
  do
  {
    if (v7 && *(v7 + v6))
    {
      result = heap_Free(*(v1[2] + 8), *(v7 + v6));
      v5 = v1[102];
      *(v5 + v6) = 0;
      v3 = *(v1 + 908);
      v7 = v5;
    }

    ++v4;
    v6 += 112;
  }

  while (v4 < 3 * v3);
  if (v5)
  {
LABEL_10:
    result = heap_Free(*(v1[2] + 8), v5);
    v1[102] = 0;
  }

LABEL_11:
  *(v1 + 908) = 0;
  return result;
}

uint64_t AllocUnitSelectorMemory_NRowsDependency(uint64_t a1)
{
  v2 = heap_Calloc(*(*(a1 + 16) + 8), 3 * *(a1 + 908), 112);
  *(a1 + 816) = v2;
  if (v2)
  {
    if (*(a1 + 908))
    {
      v3 = 0;
      v4 = 24;
      while (1)
      {
        v5 = heap_Calloc(*(*(a1 + 16) + 8), *(*(a1 + 40) + 3360), 4);
        *(*(a1 + 816) + v4) = v5;
        if (!v5)
        {
          break;
        }

        ++v3;
        v6 = *(a1 + 908);
        v4 += 112;
        if (v3 >= 3 * v6)
        {
          v7 = v6 + 1;
          goto LABEL_8;
        }
      }
    }

    else
    {
      v7 = 1;
LABEL_8:
      v8 = heap_Calloc(*(*(a1 + 16) + 8), v7, 56);
      *(a1 + 864) = v8;
      if (v8)
      {
        return 0;
      }
    }
  }

  log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19000, 0);
  return 2229280778;
}

uint64_t uselect_AddDataPart(uint64_t a1, char *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v29 = 0;
  v31[0] = 0;
  if (!a2 || !*a2)
  {
    return 0;
  }

  paramc_ParamSetStr(*(*(a1 + 16) + 40), "voiceaddon", a2);
  BrokerString = uselect_CreateBrokerString(*(a1 + 16), v31, 0x100uLL, 0, 0, 0, 0);
  if ((BrokerString & 0x80000000) != 0)
  {
    return BrokerString;
  }

  BrokerString = uselect_CheckForDataFile(*a1, *(a1 + 8), v31, &v29);
  if ((BrokerString & 0x80001FFF) == 0x8000000A)
  {
    return BrokerString;
  }

  if (!v29)
  {
    BrokerString = uselect_CreateBrokerString(*(a1 + 16), v31, 0x100uLL, 0, 0, 0, 1);
    if ((BrokerString & 0x80000000) != 0)
    {
      return BrokerString;
    }
  }

  v5 = *(a1 + 24);
  if (v5 && (v6 = *(v5 + 48)) != 0)
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = *(a1 + 16);
    v6 = *(v7 + 48);
  }

  BrokerString = objc_GetAddRefCountedObject(v6, v31, uselect_ObjcVoiceOpen, uselect_ObjcVoiceClose, v7, &v30);
  if ((BrokerString & 0x80000000) != 0)
  {
    return BrokerString;
  }

  v9 = *(v30 + 32);
  v10 = *(a1 + 40);
  if (!strcmp((v10 + 602), (v9 + 602)))
  {
    v8 = 0;
  }

  else
  {
    log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19026, "%s:%s", (v9 + 152), "Alphabet");
    v10 = *(a1 + 40);
    v8 = 2229280793;
  }

  if (strcmp((v10 + 2400), (v9 + 2400)))
  {
    log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19026, "%s:%s", (v9 + 152), "Diff");
    v10 = *(a1 + 40);
    v8 = 2229280793;
  }

  v12 = *(v10 + 2464);
  v13 = *(v9 + 2464);
  if (v12)
  {
    if (v13)
    {
      v14 = *v12;
      if (*v12)
      {
        v15 = v12 + 1;
        while (*v13)
        {
          if (strcmp(v14, *v13))
          {
            log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19026, "%s:%s", (v9 + 152), "TagAlphabet");
            v8 = 2229280793;
          }

          ++v13;
          v16 = *v15++;
          v14 = v16;
          if (!v16)
          {
            goto LABEL_28;
          }
        }

        goto LABEL_38;
      }

LABEL_28:
      if (!*v13)
      {
LABEL_29:
        if ((v8 & 0x80000000) == 0)
        {
          v17 = *(a1 + 48) + 1;
          *(a1 + 48) = v17;
          v18 = heap_Realloc(*(*(a1 + 16) + 8), *(a1 + 56), 8 * v17);
          if (v18 && (*(a1 + 56) = v18, v19 = *(a1 + 48), *(v18 + 8 * (v19 - 1)) = *(v9 + 3552), (v20 = heap_Realloc(*(*(a1 + 16) + 8), *(a1 + 64), 4 * v19)) != 0) && (*(a1 + 64) = v20, *(v20 + 4 * (*(a1 + 48) - 1)) = *(*(*(a1 + 56) + 8 * (*(a1 + 48) - 2)) + 108) + *(v20 + 4 * (*(a1 + 48) - 2)), (v21 = heap_Realloc(*(*(a1 + 16) + 8), *(a1 + 72), 8 * *(a1 + 48))) != 0))
          {
            *(a1 + 72) = v21;
            v22 = strlen(a2);
            v23 = heap_Calloc(*(*(a1 + 16) + 8), 1, (v22 + 1));
            v24 = *(a1 + 48) - 1;
            *(*(a1 + 72) + 8 * v24) = v23;
            v25 = *(*(a1 + 72) + 8 * v24);
            v8 = 2229280778;
            if (v25)
            {
              strcpy(v25, a2);
              v26 = uselect_CommunicateAddonOffset(a1, *(*(a1 + 72) + 8 * (*(a1 + 48) - 1)), *(*(a1 + 64) + 4 * (*(a1 + 48) - 1)));
              if ((v26 & 0x80000000) != 0)
              {
                v8 = v26;
              }

              else
              {
                v8 = uselect_CommunicateAddonReductionParameters(a1, *(*(a1 + 72) + 8 * (*(a1 + 48) - 1)), v9);
                if ((v8 & 0x80000000) == 0)
                {
                  return v8;
                }
              }
            }
          }

          else
          {
            v8 = 2229280778;
          }
        }

        goto LABEL_39;
      }
    }
  }

  else if (!v13)
  {
    goto LABEL_29;
  }

LABEL_38:
  log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19026, "%s:%s", (v9 + 152), "TagAlphabet");
  v8 = 2229280793;
LABEL_39:
  if (v9 && v31[0])
  {
    v27 = *(a1 + 24);
    if (!v27 || (v28 = *(v27 + 48)) == 0)
    {
      v28 = *(*(a1 + 16) + 48);
    }

    objc_ReleaseObject(v28, v31);
    if ((v8 & 0x1FFF) == 0xA)
    {
      --*(a1 + 48);
    }
  }

  return v8;
}

uint64_t uselect_CommunicateAddonOffset(uint64_t a1, char *__s, uint64_t a3)
{
  if (!__s || !*__s)
  {
    return 0;
  }

  v6 = *(*(a1 + 16) + 8);
  v7 = strlen(__s);
  v8 = heap_Calloc(v6, 1, (v7 + 18));
  if (v8)
  {
    v9 = v8;
    strcpy(v8, "voiceaddonoffset.");
    v10 = strlen(v8);
    v11 = v10;
    if (*__s)
    {
      v12 = 0;
      v13 = 0;
      v14 = v10;
      do
      {
        *(v9 + v14++) = __tolower(__s[v12]);
        v12 = ++v13;
      }

      while (strlen(__s) > v13);
    }

    else
    {
      LODWORD(v12) = 0;
    }

    *(v9 + v12 + v11) = 0;
    v16 = paramc_ParamSetInt(*(*(a1 + 16) + 40), v9, a3);
    heap_Free(*(*(a1 + 16) + 8), v9);
    return v16;
  }

  else
  {
    log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19000, 0);
    return 2229280778;
  }
}

uint64_t uselect_CommunicateAddonReductionParameters(uint64_t a1, char *__s, char *a3)
{
  v3 = 0;
  if (!__s || !a3)
  {
    return v3;
  }

  if (!*__s)
  {
    return 0;
  }

  v7 = *(*(a1 + 16) + 8);
  v8 = strlen(__s);
  v9 = heap_Calloc(v7, 1, (v8 + 26));
  if (!v9)
  {
    v3 = 2229280778;
    log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19000, 0);
    return v3;
  }

  v10 = v9;
  strcpy(v9, "voiceaddonrawdataversion.");
  v11 = strlen(v9);
  v12 = v11;
  if (*__s)
  {
    v13 = 0;
    v14 = 0;
    v15 = v11;
    do
    {
      *(v10 + v15++) = __tolower(__s[v13]);
      v13 = ++v14;
    }

    while (strlen(__s) > v14);
  }

  else
  {
    LODWORD(v13) = 0;
  }

  *(v10 + v13 + v12) = 0;
  v16 = paramc_ParamSetStr(*(*(a1 + 16) + 40), v10, a3 + 64);
  if ((v16 & 0x80000000) != 0)
  {
    v3 = v16;
    v25 = 0;
    v19 = 0;
  }

  else
  {
    v17 = strlen(__s);
    v18 = heap_Calloc(*(*(a1 + 16) + 8), 1, (v17 + 21));
    v19 = v18;
    if (v18)
    {
      strcpy(v18, "voiceaddonreduction.");
      v20 = strlen(v18);
      v21 = v20;
      if (*__s)
      {
        v22 = 0;
        v23 = 0;
        v24 = v20;
        do
        {
          *(v19 + v24++) = __tolower(__s[v22]);
          v22 = ++v23;
        }

        while (strlen(__s) > v23);
      }

      else
      {
        LODWORD(v22) = 0;
      }

      *(v19 + v22 + v21) = 0;
      v26 = paramc_ParamSetStr(*(*(a1 + 16) + 40), v19, a3 + 76);
      if ((v26 & 0x80000000) == 0)
      {
        v27 = strlen(__s);
        v28 = heap_Calloc(*(*(a1 + 16) + 8), 1, (v27 + 28));
        v25 = v28;
        if (v28)
        {
          strcpy(v28, "voiceaddonreductionversion.");
          v29 = strlen(v28);
          v30 = v29;
          if (*__s)
          {
            v31 = 0;
            v32 = 0;
            v33 = v29;
            do
            {
              *(v25 + v33++) = __tolower(__s[v31]);
              v31 = ++v32;
            }

            while (strlen(__s) > v32);
          }

          else
          {
            LODWORD(v31) = 0;
          }

          *(v25 + v31 + v30) = 0;
          v3 = paramc_ParamSetStr(*(*(a1 + 16) + 40), v25, a3 + 140);
        }

        else
        {
          v3 = 2229280778;
          log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19000, 0);
        }

        goto LABEL_32;
      }

      v3 = v26;
    }

    else
    {
      v3 = 2229280778;
      log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19000, 0);
    }

    v25 = 0;
  }

LABEL_32:
  heap_Free(*(*(a1 + 16) + 8), v10);
  if (v19)
  {
    heap_Free(*(*(a1 + 16) + 8), v19);
  }

  if (v25)
  {
    heap_Free(*(*(a1 + 16) + 8), v25);
  }

  return v3;
}

void *DeallocBufferUnitSelector(void *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    if (result[5])
    {
      v4 = result[95];
      if (v4)
      {
        result = heap_Free(*(result[2] + 8), v4);
        v2[95] = 0;
      }

      v5 = a2[441];
      if (v5)
      {
        result = heap_Free(*(v2[2] + 8), v5);
        a2[441] = 0;
      }

      v6 = a2[442];
      if (v6)
      {
        result = heap_Free(*(v2[2] + 8), v6);
        a2[442] = 0;
      }

      v7 = a2[443];
      if (v7)
      {
        result = heap_Free(*(v2[2] + 8), v7);
        a2[443] = 0;
      }

      v8 = a2[451];
      if (v8)
      {
        result = heap_Free(*(v2[2] + 8), v8);
        a2[451] = 0;
      }
    }
  }

  return result;
}

uint64_t uselect_RemoveDataPartClose(uint64_t result, unsigned int a2)
{
  if (*(result + 48) > a2)
  {
    v4 = result;
    paramc_ParamSetStr(*(*(result + 16) + 40), "voiceaddon", "");
    v5 = *(v4[9] + 8 * a2);
    if (v5)
    {
      heap_Free(*(v4[2] + 8), v5);
      *(v4[9] + 8 * a2) = 0;
    }

    v6 = v4[3];
    if (!v6 || (v7 = *(v6 + 48)) == 0)
    {
      v7 = *(v4[2] + 48);
    }

    v8 = **(v4[7] + 8 * a2) + 152;

    return objc_ReleaseObject(v7, v8);
  }

  return result;
}

uint64_t uselect_ReadDirectStart(uint64_t a1, char *__s1, void *a3, _DWORD *a4)
{
  v6 = 2229280775;
  v7 = *(a1 + 736);
  if (!*(a1 + 736))
  {
LABEL_5:
    v6 = 2229280788;
    goto LABEL_6;
  }

  v10 = a1 + 96;
  while (strcmp(*v10, __s1))
  {
    v10 += 40;
    if (!--v7)
    {
      goto LABEL_5;
    }
  }

  v12 = (*(*(a1 + 88) + 88))(*(v10 + 8), *(v10 + 16), a3, a4);
  v13 = v12;
  if ((v12 & 0x80000000) != 0)
  {
    v6 = v12;
LABEL_6:
    if (!strncmp(__s1, "application/x-realspeak-cspp-", 0x1DuLL) || !strcmp(__s1, "application/x-realspeak-usnoreusebias;version=4.0") || !strcmp(__s1, "application/x-realspeak-usprosodybias;version=4.0") || !strcmp(__s1, "application/x-realspeak-usfrozen;version=4.0"))
    {
      return v6;
    }

    v11 = 19004;
LABEL_16:
    log_OutPublic(*(*(a1 + 16) + 32), "USELECT", v11, "%s%s", "layer", __s1);
    return v6;
  }

  if (!strncmp(*v10, "text/", 5uLL) && (!*a4 || *(*a3 + (*a4 - 1))))
  {
    v11 = 19005;
    goto LABEL_16;
  }

  return v13;
}

uint64_t AllocBufferUnitSelector(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 3524);
  v5 = heap_Calloc(*(*(a1 + 16) + 8), v4, 4);
  *(a2 + 3528) = v5;
  v6 = *(a1 + 16);
  if (!v5 || (v7 = heap_Calloc(*(v6 + 8), (2 * v4), 2), *(a2 + 3536) = v7, v6 = *(a1 + 16), !v7) || (v8 = heap_Calloc(*(v6 + 8), (2 * v4), 2), *(a2 + 3544) = v8, v6 = *(a1 + 16), !v8))
  {
    v11 = 2229280778;
LABEL_9:
    log_OutPublic(*(v6 + 32), "USELECT", 19000, 0);
    return v11;
  }

  v9 = heap_Calloc(*(v6 + 8), v4, 4);
  *(a2 + 3608) = v9;
  if (!v9)
  {
    v11 = 2229280778;
    v6 = *(a1 + 16);
    goto LABEL_9;
  }

  v10 = *(a2 + 3524);
  if (v10 >= 1)
  {
    memset(v9, 255, 4 * v10);
  }

  return 0;
}

uint64_t uselect_Write(uint64_t a1, char *__s2, uint64_t a3, uint64_t a4)
{
  v6 = 2229280788;
  v7 = *(a1 + 736);
  if (!*(a1 + 736))
  {
    goto LABEL_7;
  }

  v10 = (a1 + 128);
  while (strcmp(*(v10 - 4), __s2))
  {
    v10 += 5;
    if (!--v7)
    {
      goto LABEL_7;
    }
  }

  v6 = (*(*(a1 + 88) + 104))(*(v10 - 1), *v10, a3, a4);
  if ((v6 & 0x80000000) != 0)
  {
LABEL_7:
    log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19003, "%s%s", "layer", __s2);
  }

  return v6;
}

uint64_t uselect_GetOffsetAndCountInCache3Table(_BYTE *a1, uint64_t a2, _BYTE *a3, int a4, int a5, _DWORD *a6)
{
  v6 = a3[1];
  if (v6 == 108)
  {
    v7 = 204;
  }

  else
  {
    v7 = 208;
  }

  v8 = 216;
  if (v6 != 108)
  {
    v8 = 224;
  }

  v9 = 240;
  if (v6 == 108)
  {
    v9 = 232;
    v10 = 248;
  }

  else
  {
    v10 = 252;
  }

  v11 = 264;
  if (v6 == 108)
  {
    v11 = 256;
  }

  if (a4)
  {
    v12 = a4 - a1[2496];
  }

  else
  {
    v12 = a1[3577];
  }

  v13 = *(a2 + v9);
  v14 = *(a2 + v8);
  v15 = *(a2 + v10);
  v16 = *(a2 + v7);
  if (a5)
  {
    v17 = a1[2496];
    v18 = a5 - v17;
  }

  else
  {
    v18 = a1[3577];
    v17 = a1[2496];
  }

  v19 = 0;
  v20 = *(a2 + v11);
  v21 = *a3 - v17;
  v22 = a1[3576];
  v23 = v21;
  v24 = (v22 * v12 + v21) * v22;
  v25 = v18;
  v26 = v24 + v18;
  v27 = (v16 - 1);
  v28 = v27;
  v29 = v27;
  do
  {
    v30 = (v19 + v29) >> 1;
    v31 = *(v14 + 4 * v30);
    if (v31 <= v26)
    {
      if (v31 >= v26)
      {
LABEL_57:
        if (v30 != v27)
        {
          v15 = *(v13 + 4 * (v30 + 1));
          v27 = v30;
        }

        *a6 = v15 - *(v13 + 4 * v27);
        return v20 + 4 * *(v13 + 4 * v30);
      }

      v19 = v30 + 1;
    }

    else
    {
      if (v19 + v29 < 2)
      {
        break;
      }

      v29 = v30 - 1;
    }
  }

  while (v19 <= v29);
  v32 = a1[3577];
  if (v6 == 108)
  {
    if (v25 != v32)
    {
      v33 = 0;
      v34 = v24 + v32;
      v35 = v27;
      do
      {
        v30 = (v33 + v35) >> 1;
        v36 = *(v14 + 4 * v30);
        if (v36 <= v34)
        {
          if (v36 >= v34)
          {
            goto LABEL_57;
          }

          v33 = v30 + 1;
        }

        else
        {
          if (v33 + v35 < 2)
          {
            break;
          }

          v35 = v30 - 1;
        }
      }

      while (v33 <= v35);
    }

    v37 = 0;
    v38 = v32 + (v23 + v32 * v22) * v22;
    do
    {
      v30 = (v37 + v28) >> 1;
      v39 = *(v14 + 4 * v30);
      if (v39 <= v38)
      {
        if (v39 >= v38)
        {
          goto LABEL_57;
        }

        v37 = v30 + 1;
      }

      else
      {
        if (v37 + v28 < 2)
        {
          return 0;
        }

        v28 = v30 - 1;
      }
    }

    while (v37 <= v28);
  }

  else
  {
    v40 = (v23 + v32 * v22) * v22;
    if (v32 != v12)
    {
      v41 = 0;
      v42 = v40 + v25;
      v43 = v27;
      do
      {
        v30 = (v41 + v43) >> 1;
        v44 = *(v14 + 4 * v30);
        if (v44 <= v42)
        {
          if (v44 >= v42)
          {
            goto LABEL_57;
          }

          v41 = v30 + 1;
        }

        else
        {
          if (v41 + v43 < 2)
          {
            break;
          }

          v43 = v30 - 1;
        }
      }

      while (v41 <= v43);
    }

    v45 = 0;
    v46 = v40 + v32;
    do
    {
      v30 = (v45 + v28) >> 1;
      v47 = *(v14 + 4 * v30);
      if (v47 <= v46)
      {
        if (v47 >= v46)
        {
          goto LABEL_57;
        }

        v45 = v30 + 1;
      }

      else
      {
        if (v45 + v28 < 2)
        {
          return 0;
        }

        v28 = v30 - 1;
      }
    }

    while (v45 <= v28);
  }

  return 0;
}

uint64_t uselect_InitForPreselDistFunc(uint64_t a1)
{
  v1 = 2229280769;
  v2 = dist_LPHONEME_DATACOST;
  switch(*a1)
  {
    case 1:
      goto LABEL_7;
    case 2:
      v4 = dist_RPHONEME_DATACOST;
      goto LABEL_6;
    case 3:
      v4 = dist_LLPHONEME_DATACOST;
      goto LABEL_6;
    case 4:
      v4 = dist_RRPHONEME_DATACOST;
      goto LABEL_6;
    case 5:
      v4 = dist_PITCH_CART;
      goto LABEL_6;
    case 6:
      v4 = dist_DUR_CART;
      goto LABEL_6;
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x12:
    case 0x1E:
    case 0x1F:
    case 0x20:
    case 0x21:
    case 0x22:
    case 0x23:
    case 0x24:
    case 0x25:
    case 0x26:
    case 0x27:
    case 0x28:
    case 0x29:
    case 0x2B:
    case 0x2C:
    case 0x45:
    case 0x46:
      v3 = *(a1 + 13) - 2;
      if (v3 >= 7 || ((0x47u >> v3) & 1) == 0)
      {
        return v1;
      }

      v2 = off_1F42D6CD0[(*(a1 + 13) - 2)];
      goto LABEL_7;
    case 0x11:
      v4 = dist_UNITBIAS;
      goto LABEL_6;
    case 0x13:
    case 0x14:
    case 0x15:
      v6 = *(a1 + 13);
      v4 = dist_COMMON_EMULATEBUG203_2;
      if (v6 == 2)
      {
        goto LABEL_6;
      }

      if (v6 != 3)
      {
        return v1;
      }

      v4 = dist_COMMON_EMULATEBUG203_3;
LABEL_6:
      v2 = v4;
LABEL_7:
      v1 = 0;
      *(a1 + 16) = v2;
      *(a1 + 24) = ~(-1 << *(a1 + 13));
      return v1;
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:
      v4 = dist_COMMON_8;
      goto LABEL_6;
    default:
      return v1;
  }
}

uint64_t dist_LPHONEME_DATACOST(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  if (a2 == a3)
  {
    return 0;
  }

  v6 = *(a1 + 888);
  v8 = v6[6];
  v7 = v6[7];
  v9 = *(v7 + a2);
  v10 = *(v7 + a3);
  v11 = v6[8];
  if (v9 <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v9;
  }

  if (v9 < v10)
  {
    v10 = v9;
  }

  return *a5 * *(v8 + 2 * *(v11 + 2 * v10) + 2 * v12);
}

uint64_t dist_RPHONEME_DATACOST(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  if (a2 == a3)
  {
    return 0;
  }

  v6 = *(a1 + 888);
  v8 = v6[9];
  v7 = v6[10];
  v9 = *(v7 + a2);
  v10 = *(v7 + a3);
  v11 = v6[11];
  if (v9 <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v9;
  }

  if (v9 < v10)
  {
    v10 = v9;
  }

  return *a5 * *(v8 + 2 * *(v11 + 2 * v10) + 2 * v12);
}

uint64_t dist_LLPHONEME_DATACOST(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  if (a2 == a3)
  {
    return 0;
  }

  v6 = *(a1 + 888);
  v8 = v6[12];
  v7 = v6[13];
  v9 = *(v7 + a2);
  v10 = *(v7 + a3);
  v11 = v6[14];
  if (v9 <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v9;
  }

  if (v9 < v10)
  {
    v10 = v9;
  }

  return *a5 * *(v8 + 2 * *(v11 + 2 * v10) + 2 * v12);
}

uint64_t dist_RRPHONEME_DATACOST(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  if (a2 == a3)
  {
    return 0;
  }

  v6 = *(a1 + 888);
  v8 = v6[15];
  v7 = v6[16];
  v9 = *(v7 + a2);
  v10 = *(v7 + a3);
  v11 = v6[17];
  if (v9 <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v9;
  }

  if (v9 < v10)
  {
    v10 = v9;
  }

  return *a5 * *(v8 + 2 * *(v11 + 2 * v10) + 2 * v12);
}

uint64_t dist_PITCH_CART(void *a1, unsigned int a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  v5 = a1[111];
  if (!*v5)
  {
    return 0;
  }

  if (!a3 && *a5)
  {
    return 500000;
  }

  v6 = a1[5];
  LODWORD(v7) = *(v6 + 2680);
  if (v7)
  {
    LODWORD(v7) = v5[1];
    if (v7)
    {
      v7 = *(v6 + 3000);
      if (v7)
      {
        v8 = *(a1[107] + *(v7 + 25) + 3);
        v7 = *(v6 + 2480);
        if (!v7 || (v9 = (v7 + 8 * v8), (LODWORD(v7) = *v9) == 0) || v9[1] >= a3)
        {
          v7 = *(v6 + 2488);
          if (v7)
          {
            v10 = (v7 + 8 * v8);
            LODWORD(v7) = *v10;
            if (*v10)
            {
              if (v10[1] <= a3)
              {
                LODWORD(v7) = 0;
              }
            }
          }
        }
      }
    }
  }

  v11 = a3 - a2;
  if (a2 >= a3)
  {
    v11 = a2 - a3;
  }

  if (*(v6 + 2700))
  {
    if (v11 <= v5[36] * *(v6 + 2704))
    {
      v12 = v11 * v11 * *a5 / v5[37];
    }

    else
    {
      v12 = v11 * v11 * *a5 / v5[37] * *(v6 + 2708);
    }
  }

  else
  {
    v12 = (a2 - a3) * (a2 - a3) * *a5 / v5[37];
    if (v11 > *(v6 + 2576))
    {
      v12 *= 10;
    }
  }

  return v12 + v7;
}

uint64_t dist_DUR_CART(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  v5 = *(a1 + 40);
  if (!v5[678])
  {
    if (a2)
    {
      v10 = a3 - a2;
      if (a2 >= a3)
      {
        v10 = a2 - a3;
      }

      v11 = (a2 - a3) * (a2 - a3) * *a5 / *(*(a1 + 888) + 156);
      if (v10 <= v5[645])
      {
        return v11;
      }

      else
      {
        return 10 * v11;
      }
    }

    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v6 = a2 - a3;
  if (a2 < a3)
  {
    v6 = a3 - a2;
  }

  v7 = *(a1 + 888);
  v8 = *(v7 + 152);
  if (v6 > v8 * v5[679])
  {
    v9 = v5[680];
    return v6 * v6 * *a5 / *(v7 + 156) * v9;
  }

  if (a2 > a3 && v6 > v5[681] * v8)
  {
    v9 = v5[682];
    return v6 * v6 * *a5 / *(v7 + 156) * v9;
  }

  return v6 * v6 * *a5 / *(v7 + 156);
}

uint64_t dist_UNITBIAS(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int *a5)
{
  if ((a3 >> *(a4 + 12)))
  {
    return *a5;
  }

  else
  {
    return 0;
  }
}

uint64_t dist_COMMON_EMULATEBUG203_2(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, int *a5)
{
  v5 = *a5;
  if (!*a5)
  {
    return 0;
  }

  v6 = (a3 >> *(a4 + 12)) & 3;
  v7 = *(a5 + 1);
  if (*v7)
  {
    v8 = *(v7 + 8);
    v9 = *(v7 + 16);
    if (v9)
    {
      v10 = (v8 + 2 * *(v7 + 2) * *(v9 + a2) + 2 * *(v9 + v6));
    }

    else
    {
      v10 = (v8 + 2 * (v6 + *(v7 + 2) * a2));
    }

    v13 = *v10;
    if (v13 == 150)
    {
      return 5000000;
    }

    else if (v13 == 200)
    {
      return 15000000;
    }

    else
    {
      return (v5 * v13);
    }
  }

  else
  {
    v12 = 100 * v5;
    if (v6 == a2)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t dist_COMMON_EMULATEBUG203_3(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v5 = (a3 >> *(a4 + 12)) & 7;
  v6 = *(a5 + 8);
  if (*v6)
  {
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    if (v8)
    {
      v9 = (v7 + 2 * *(v6 + 2) * *(v8 + a2) + 2 * *(v8 + v5));
    }

    else
    {
      v9 = (v7 + 2 * (v5 + *(v6 + 2) * a2));
    }

    v11 = *v9;
    if (v11 == 150)
    {
      return 5000000;
    }

    else if (v11 == 200)
    {
      return 15000000;
    }

    else
    {
      return (*a5 * v11);
    }
  }

  else if (v5 == a2)
  {
    return 0;
  }

  else
  {
    return (100 * *a5);
  }
}

uint64_t dist_COMMON_2(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v5 = (a3 >> *(a4 + 12)) & 3;
  v6 = *(a5 + 8);
  if (*v6)
  {
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    if (v8)
    {
      v9 = *(v7 + 2 * *(v6 + 2) * *(v8 + a2) + 2 * *(v8 + v5));
    }

    else
    {
      v9 = *(v7 + 2 * (v5 + *(v6 + 2) * a2));
    }

    return (*a5 * v9);
  }

  else if (v5 == a2)
  {
    return 0;
  }

  else
  {
    return (100 * *a5);
  }
}

uint64_t dist_COMMON_3(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v5 = (a3 >> *(a4 + 12)) & 7;
  v6 = *(a5 + 8);
  if (*v6)
  {
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    if (v8)
    {
      v9 = *(v7 + 2 * *(v6 + 2) * *(v8 + a2) + 2 * *(v8 + v5));
    }

    else
    {
      v9 = *(v7 + 2 * (v5 + *(v6 + 2) * a2));
    }

    return (*a5 * v9);
  }

  else if (v5 == a2)
  {
    return 0;
  }

  else
  {
    return (100 * *a5);
  }
}

uint64_t dist_COMMON_4(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v5 = (a3 >> *(a4 + 12)) & 0xFLL;
  v6 = *(a5 + 8);
  if (*v6)
  {
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    if (v8)
    {
      v9 = *(v7 + 2 * *(v6 + 2) * *(v8 + a2) + 2 * *(v8 + v5));
    }

    else
    {
      v9 = *(v7 + 2 * (v5 + *(v6 + 2) * a2));
    }

    return (*a5 * v9);
  }

  else if (v5 == a2)
  {
    return 0;
  }

  else
  {
    return (100 * *a5);
  }
}

uint64_t dist_COMMON_8(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, int *a5)
{
  v5 = *(a5 + 1);
  if (*v5)
  {
    v6 = *a5;
    v7 = *(v5 + 8);
    v8 = *(v5 + 16);
    if (v8)
    {
      v9 = *(v7 + 2 * *(v5 + 2) * *(v8 + a2) + 2 * *(v8 + a3));
    }

    else
    {
      v9 = *(v7 + 2 * *(v5 + 2) * a2 + 2 * a3);
    }
  }

  else
  {
    if (a2 == a3)
    {
      return 0;
    }

    v6 = *a5;
    v9 = 100;
  }

  return (v6 * v9);
}

uint64_t uselect_IsNextUnit(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v4 = *result;
    v2 = (result + 4);
    for (i = v4; ; --i)
    {
      if (!i)
      {
        return 0;
      }

      v5 = *v2;
      if (*v2 == a2)
      {
        break;
      }

      ++v2;
      if (v5 > a2)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t uselect_CalculateCost(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  result = 4000000000;
  v7 = *(a1 + 40);
  v8 = **(a2 + 40);
  *(a2 + 108) = 0;
  v9 = *(a1 + 848);
  if (*(a1 + 848))
  {
    v10 = 0;
    v11 = *(a1 + 824);
    v12 = a2 + 62;
    while (1)
    {
      v13 = *v11;
      v14 = **(v11 + 5);
      if (v10)
      {
        v15 = v7[667] == 1 && v13 >= result;
        if (v15)
        {
          return result;
        }
      }

      if (!(a4 | a3))
      {
        break;
      }

LABEL_9:
      if (v13 < result)
      {
        goto LABEL_10;
      }

LABEL_188:
      v11 += 28;
      if (++v10 >= v9)
      {
        return result;
      }
    }

    v16 = v7[640];
    if (v16 && (*(v11 + 61) != 1 || *(v11 + 77) != 114))
    {
      v17 = *(a2 + 96);
      if (v11[24])
      {
        if (!v17)
        {
          goto LABEL_188;
        }
      }

      else if (v17)
      {
        goto LABEL_188;
      }
    }

    if (v13 >= result)
    {
      goto LABEL_188;
    }

    if (v14 == v8 && v11[2] == *(a2 + 32))
    {
      v18 = 0;
LABEL_22:
      v19 = 1;
      if (!v16)
      {
        goto LABEL_57;
      }
    }

    else
    {
      if (a5 && (*(v11 + 86) || *(a2 + 87)))
      {
        goto LABEL_188;
      }

      if (v14 == v8)
      {
        v20 = *(v14 + 2632);
        if (v20 <= 0x63)
        {
          v21 = *(v11 + 2);
          if (v21)
          {
            v22 = *(a2 + 32);
            v25 = *v21;
            v23 = v21 + 1;
            v24 = v25;
            while (v24)
            {
              v26 = *v23;
              if (*v23 == v22)
              {
                v43 = **(v11 + 3);
                v18 = 0;
                if (*(v14 + 2588) == 1)
                {
                  v44 = (v43 << *(v11 + 86) << *(a2 + 87)) * v20;
                }

                else
                {
                  v44 = v43 * v20;
                }

                v13 = v44 / 0x64 + v13;
                goto LABEL_22;
              }

              ++v23;
              --v24;
              if (v26 > v22)
              {
                break;
              }
            }
          }
        }
      }

      if (*(v14 + 2588) == 1 && *(v8 + 2588) == 1)
      {
        v19 = 0;
        v27 = **(v11 + 3) << *(v11 + 86) << *(a2 + 87);
      }

      else
      {
        v19 = 0;
        v27 = **(v11 + 3);
      }

      v13 = (v27 + v13);
      v18 = 1;
      if (!v16)
      {
LABEL_57:
        if (v13 >= result)
        {
          goto LABEL_188;
        }

        v30 = *(v14 + 3384);
        if ((v30 & 0x80000000) != 0 || (*(v8 + 3384) & 0x80000000) != 0)
        {
LABEL_87:
          if (v14 != v8)
          {
            goto LABEL_114;
          }

          if (v18)
          {
            if (*(v14 + 2604) == 2)
            {
              if (*(v14 + 2624))
              {
                if (*(v11 + 77) != 114)
                {
                  if (*(v14 + *(v11 + 76) + 1630) == 83)
                  {
                    v46 = 0;
                    goto LABEL_104;
                  }

                  v45 = (*(v14 + 3568) + (*(v11 + 75) << 8) + *(a2 + 74) + 0x10000);
LABEL_103:
                  v46 = *v45;
LABEL_104:
                  if (v7[669] < v46)
                  {
                    goto LABEL_188;
                  }

                  v47 = *(*(v11 + 3) + 8);
                  v48 = v13 + v47 * v46;
                  LODWORD(v13) = v13 + 10 * v46 * v47;
                  if (v7[650] < v46)
                  {
                    v13 = v13;
                  }

                  else
                  {
                    v13 = v48;
                  }

                  goto LABEL_113;
                }

                v38 = *(a2 + 74);
                v39 = *(v14 + 3568) + (*(v11 + 75) << 8);
              }

              else
              {
                v38 = *(a2 + 74);
                v39 = *(v14 + 3560) + (*(v11 + 75) << 7);
              }

              v45 = (v39 + v38);
              goto LABEL_103;
            }

            v40 = *(v14 + 3560);
            if (v40)
            {
              v41 = 0;
              v42 = 0;
              do
              {
                v42 += 2 * *(v40 + *(v12 + v41 + 3) + (*(v11 + v41 + 68) << 7)) + *(v40 + *(v12 + v41) + (*(v11 + v41 + 68) << 7)) + *(v40 + *(v12 + v41 + 3) + (*(v11 + v41 + 71) << 7));
                ++v41;
                v40 += 0x4000;
              }

              while (v41 != 3);
            }

            else
            {
              v42 = 0;
              v49 = *(v14 + 3568);
              do
              {
                v42 += 2 * *(v49 + (*(v12 + v40 + 3) | (*(v11 + v40 + 68) << 8))) + *(v49 + (*(v12 + v40) | (*(v11 + v40 + 68) << 8))) + *(v49 + (*(v12 + v40 + 3) | (*(v11 + v40 + 71) << 8)));
                ++v40;
                v49 += 0x10000;
              }

              while (v40 != 3);
            }

            v50 = *(*(v11 + 3) + 8);
            if (v42 / 0xA <= v7[650])
            {
              v13 = v13 + 2 * v42 * v50;
            }

            else
            {
              v13 = v13 + 20 * v42 * v50;
            }
          }

LABEL_113:
          if (v13 >= result)
          {
            goto LABEL_188;
          }

LABEL_114:
          v51 = *(v14 + 3404);
          if ((v51 & 0x80000000) != 0 || (*(v8 + 3404) & 0x80000000) != 0)
          {
            goto LABEL_158;
          }

          if (v18 && *(v8 + 859 + *(a2 + 76)) == 118 && *(v14 + *(v11 + 76) + 859) == 118)
          {
            v52 = *(v11 + 92);
            v54 = (v52 >> 4) + ((v52 >> 4) + 1) * ((v52 >> 4) + 1);
            if ((v52 & 0x80) != 0)
            {
              v53 = ((*(v11 + 92) >> 4) - 8);
              v54 = ~v53 + ~v53 * v53 - v53;
            }

            v55 = v52 & 0xF;
            if (v55 <= 7)
            {
              v56 = v55 + (v55 + 1) * (v55 + 1);
            }

            else
            {
              v56 = ~(v55 - 8) + ~(v55 - 8) * (v55 - 8) - (v55 - 8);
            }

            if (*(v11 + 77) == 114)
            {
              v57 = v56;
            }

            else
            {
              v57 = v54;
            }

            v58 = *(a2 + 92);
            v60 = (v58 >> 4) + ((v58 >> 4) + 1) * ((v58 >> 4) + 1);
            if ((v58 & 0x80) != 0)
            {
              v59 = ((*(a2 + 92) >> 4) - 8);
              v60 = ~v59 + ~v59 * v59 - v59;
            }

            v61 = v58 & 0xF;
            if (v61 <= 7)
            {
              v62 = v61 + (v61 + 1) * (v61 + 1);
            }

            else
            {
              v62 = ~(v61 - 8) + ~(v61 - 8) * (v61 - 8) - (v61 - 8);
            }

            if (*(a2 + 77) == 114)
            {
              v63 = v62;
            }

            else
            {
              v63 = v60;
            }

            if (v63 - v57 >= 0)
            {
              v64 = v63 - v57;
            }

            else
            {
              v64 = v57 - v63;
            }

            if (v64 > v7[663])
            {
              goto LABEL_188;
            }

            v66 = v63 > 0 && v57 < 0;
            if (v64 > v7[662])
            {
              if (v66 || v63 < 0 && v57 >= 1)
              {
                v13 = v13 + 100 * v64 * *(*(v11 + 3) + 4 * v51);
                goto LABEL_157;
              }

              goto LABEL_156;
            }

            if (v66 || v63 < 0 && v57 >= 1)
            {
LABEL_156:
              v13 = v13 + 10 * v64 * *(*(v11 + 3) + 4 * v51);
              goto LABEL_157;
            }

            v13 = v13 + *(*(v11 + 3) + 4 * v51) * v64;
          }

LABEL_157:
          if (v13 >= result)
          {
            goto LABEL_188;
          }

LABEL_158:
          v67 = *(v14 + 3400);
          if ((v67 & 0x80000000) == 0 && (*(v8 + 3400) & 0x80000000) == 0)
          {
            if (v18)
            {
              v68 = *(v11 + 91);
              v69 = v68 & 0xF;
              v70 = v68 >> 4;
              if (*(v11 + 77) == 114)
              {
                v71 = v69;
              }

              else
              {
                v71 = v70;
              }

              v72 = 6554 * (66 * v71 + 38);
              v73 = HIWORD(v72);
              v74 = *(a2 + 91);
              v75 = v74 & 0xF;
              v76 = v74 >> 4;
              if (*(a2 + 77) == 114)
              {
                v77 = v75;
              }

              else
              {
                v77 = v76;
              }

              v78 = 6554 * (66 * v77 + 38);
              v79 = HIWORD(v78) - HIWORD(v72);
              v15 = v73 >= HIWORD(v78);
              v80 = v73 - HIWORD(v78);
              if (v15)
              {
                v81 = v80;
              }

              else
              {
                v81 = v79;
              }

              if (v81 > v7[666])
              {
                goto LABEL_188;
              }

              v82 = v81 * *(*(v11 + 3) + 4 * v67);
              if (v81 <= v7[665])
              {
                v13 = (v13 + 10 * v82);
              }

              else
              {
                v13 = (v13 + 100 * v82);
              }
            }

            if (v13 >= result)
            {
              goto LABEL_188;
            }
          }

          if (v14 != v8 || (v83 = *(v14 + 3392), (v83 & 0x80000000) != 0) && (v83 = *(v14 + 3396), (v83 & 0x80000000) != 0))
          {
LABEL_10:
            *(a2 + 108) = v10;
            result = v13;
            goto LABEL_188;
          }

          if (*(v8 + 1116 + *(a2 + 76)) == 86 && *(a2 + 77) == 108)
          {
            v84 = *(v11 + 85);
            if (v84 != 255)
            {
              v85 = *(a2 + 84);
              if (v85 != 255)
              {
                v86 = v85 - v84;
                v87 = *(*(v14 + 3368) + 12 * v83 + 8);
                v88 = *(a2 + 56);
                if (v86 >= v88)
                {
LABEL_187:
                  v92 = 10 * v87;
LABEL_191:
                  v13 = (v13 + *(*(v11 + 3) + 4 * v83) * v92);
                  goto LABEL_9;
                }

                v89 = *(a2 + 54);
                if (v86 >= v89)
                {
                  v93 = (v86 - v89) * v87;
                  v94 = v88 - v89;
                  goto LABEL_193;
                }

                v90 = *(a2 + 52);
                if (v90 > v86)
                {
                  v91 = *(a2 + 50);
                  if (v86 < v91)
                  {
                    goto LABEL_187;
                  }

                  v93 = (v90 - v86) * v87;
                  v94 = v90 - v91;
LABEL_193:
                  v92 = v93 / v94;
                  goto LABEL_191;
                }
              }
            }
          }

          v92 = 0;
          goto LABEL_191;
        }

        if (v18)
        {
          if (*(a2 + 80) == 1 && v11[20] == 1 && (*(a2 + 90) < 0x15u || *(v11 + 88) <= 0x14u))
          {
            v31 = 10 * *(*(v11 + 3) + 4 * v30);
            v32 = 99;
LABEL_85:
            v13 = v13 + v31 * *(*(v14 + 28160) + v32);
            goto LABEL_86;
          }

          if (*(v14 + 2612) == 1)
          {
            v33 = *(a2 + 90);
            if (*(v8 + 2612) == 1)
            {
              v34 = *(v11 + 88);
              goto LABEL_73;
            }
          }

          else
          {
            v33 = *(a2 + 90);
          }

          if (v33 >= 0x15)
          {
            v34 = *(v11 + 88);
            if (v34 >= 0x15 && *(v11 + 89) <= 0xEu)
            {
LABEL_73:
              v35 = v33 - v34;
              if (v33 >= v34)
              {
                v36 = v33 - v34;
              }

              else
              {
                v36 = v34 - v33;
              }

              if (v36 > v7[668])
              {
                goto LABEL_188;
              }

              if (v35 >= 49)
              {
                v37 = 49;
              }

              else
              {
                v37 = v35;
              }

              LODWORD(v32) = v37 + 50;
              if (v35 >= -50)
              {
                v32 = v32;
              }

              else
              {
                v32 = 0;
              }

              v31 = *(*(v11 + 3) + 4 * v30);
              if (v36 > v7[649])
              {
                v31 *= 10;
              }

              goto LABEL_85;
            }
          }
        }

LABEL_86:
        if (v13 >= result)
        {
          goto LABEL_188;
        }

        goto LABEL_87;
      }
    }

    v28 = *(v11 + 61);
    if (v28 == 1 && *(v11 + 77) == 114)
    {
      if (!*(a2 + 100))
      {
        if (*(a2 + 76) == *(v8 + 2179))
        {
          v13 = v13;
        }

        else
        {
          v13 = (v13 + 50000);
        }
      }
    }

    else
    {
      if (v11[26])
      {
        if (v11[25])
        {
          v29 = v19;
        }

        else
        {
          v29 = 1;
        }

        if (v29)
        {
          v13 = v13;
        }

        else
        {
          v13 = (v13 + 50000);
        }
      }

      if (v18 && (v28 != 1 || *(v11 + 77) != 114) && (v11[24] || *(a2 + 96)))
      {
        goto LABEL_188;
      }
    }

    goto LABEL_57;
  }

  return result;
}

void *uselect_ExtractFeatFromMsg(void *result, int a2)
{
  v2 = result;
  v3 = 0;
  v4 = result[111];
  v5 = result[107];
  v6 = result[112];
  v7 = result[5];
  v8 = ((a2 + ((a2 & 0x8000) >> 15)) >> 1);
  if (a2)
  {
    v9 = 114;
  }

  else
  {
    v9 = 108;
  }

  v114[0] = 0;
  v113 = 0;
  v5[1] = v9;
  v10 = (a2 + ((a2 & 0x8000) >> 15)) >> 1;
  *v5 = *(result[95] + 864 * v8 + 2);
  v5[2] = 0;
  if (*(v7 + 2564) != 1)
  {
    v3 = *(v7 + *(result[95] + 864 * v10 + 2) + 2144);
  }

  if (*(v7 + 2966))
  {
    v11 = 0;
    v12 = 0;
    v13 = v8 + 1;
    v14 = v5 + 3;
    v15 = v10 + 2;
    result = (v7 + 2144);
    v16 = v7 + 859;
    v17 = v7 + 1116;
    v18 = (v7 + 2179);
    v19 = (v7 + 192 * v3);
    v20 = (v19 + 3752);
    v21 = v19 + 230;
    v22 = v19 + 224;
    v23 = (v19 + 3656);
    v111 = v19 + 233;
    v109 = (v19 + 3704);
    v110 = v19 + 227;
    v108 = (v19 + 3608);
    v112 = a2 + 1;
    v24 = 864 * v10;
    v25 = v24 + 356;
    while (2)
    {
      v26 = v2[95];
      if (v5[1] == 108)
      {
        v27 = (v26 + v25 - 284);
      }

      else
      {
        v27 = (v26 + v25);
      }

      *v6 = *v27;
      *(v6 + 8) = *(v2[5] + 3416) + 24 * *(v26 + v24 + v12 + 640);
      switch(*(*(v7 + 2968) + v11))
      {
        case 1:
          v36 = v5[1];
          v37 = v18;
          if (v112 >= 3)
          {
            if (v36 != 114 || (v37 = v18, *(v26 + 864 * v10 + 2) != 35))
            {
              v37 = result + *(v26 + 864 * v10 - 862);
            }
          }

          v14[v12] = *v37;
          if (v36 == 108)
          {
            v38 = *v22;
            v39 = *(v22 + 2);
          }

          else
          {
            v38 = *v21;
            v39 = *(v21 + 2);
          }

          *(v4 + 64) = v39;
          *(v4 + 48) = v38;
          goto LABEL_82;
        case 2:
          v40 = v5[1];
          v41 = v18;
          if (*(v2 + 384) - 1 != v8)
          {
            if (v40 != 108 || (v41 = v18, *(v26 + 864 * v10 + 2) != 35))
            {
              v41 = result + *(v26 + 864 * v10 + 866);
            }
          }

          v14[v12] = *v41;
          if (v40 == 108)
          {
            v42 = v108;
          }

          else
          {
            v42 = v109;
          }

          v54 = *v42;
          *(v4 + 88) = *(v42 + 2);
          *(v4 + 72) = v54;
          goto LABEL_82;
        case 3:
          v30 = v5[1];
          v31 = v18;
          if (a2 >= 4)
          {
            if (v30 != 114 || (v31 = v18, *(v26 + 864 * v10 + 2) != 35))
            {
              v32 = v26 + 864 * v8;
              v31 = v18;
              if (*(v32 - 862) != 35)
              {
                v31 = result + *(v32 - 1726);
              }
            }
          }

          v14[v12] = *v31;
          if (v30 == 108)
          {
            v33 = v110;
          }

          else
          {
            v33 = v111;
          }

          v53 = *v33;
          *(v4 + 112) = *(v33 + 2);
          *(v4 + 96) = v53;
          goto LABEL_82;
        case 4:
          v43 = v5[1];
          v44 = v18;
          if (v15 < *(v2 + 384))
          {
            if (v43 != 108 || (v44 = v18, *(v26 + 864 * v10 + 2) != 35))
            {
              v44 = v18;
              if (*(v26 + 864 * v10 + 866) != 35)
              {
                v44 = result + *(v26 + 864 * v15 + 2);
              }
            }
          }

          v14[v12] = *v44;
          if (v43 == 108)
          {
            v45 = *v23;
            v46 = *(v23 + 2);
          }

          else
          {
            v45 = *v20;
            v46 = *(v20 + 2);
          }

          *(v4 + 136) = v46;
          *(v4 + 120) = v45;
          goto LABEL_82;
        case 5:
          if (*(v7 + 2736) == 1 && v5[1] == 114)
          {
            v47 = (v26 + 864 * v10 + 44);
          }

          else
          {
            v47 = (v26 + 864 * v10 + 22);
          }

          v14[v12] = *v47;
          v49 = *(v4 + 16);
          if (v49 && *(v49 + 4) && *(v49 + 5))
          {
            v84 = v22;
            v86 = v21;
            v88 = v20;
            v90 = v18;
            v92 = v17;
            v94 = v16;
            v96 = result;
            v98 = v15;
            v100 = v13;
            v102 = v8;
            v104 = a2;
            v106 = v4;
            uselect_splitGID(v2, *v49, v114, &v113);
            v4 = v106;
            v50 = *(v106 + 16);
            v51 = *(v50 + 4);
            if (v51 == 3)
            {
              v52 = 0;
            }

            else if (v51 == 1)
            {
              v52 = *(v50 + 5);
            }

            else
            {
              v52 = -*(v50 + 5);
            }

            a2 = v104;
            v8 = v102;
            v13 = v100;
            result = v96;
            v15 = v98;
            v17 = v92;
            v16 = v94;
            v20 = v88;
            v18 = v90;
            v22 = v84;
            v21 = v86;
            v59 = *(*(v7 + 2968) + v11 + 24) & (*(*(v114[0] + 160) + v113 * *(v114[0] + 168) + *(*(v7 + 2968) + v11 + 11)) >> *(*(v7 + 2968) + v11 + 12));
            v60 = *(v2 + 932);
            v61 = v60 - v59;
            v62 = v59 >= v60;
            v63 = v59 - v60;
            if (v63 == 0 || !v62)
            {
              LOBYTE(v63) = v61;
            }

            v64 = v52 * v63 / 100 + v59;
            if (v64 >= 255)
            {
              v64 = 255;
            }

            v14[v12] = v64 & ~(v64 >> 31);
            *v6 = *(v2 + 232);
          }

          *v6 *= 1000;
          if (*(v7 + 2736) == 1 && v5[1] == 114)
          {
            v65 = v2[95];
            v66 = (v65 + 864 * v10 + 45);
          }

          else
          {
            v65 = v2[95];
            v66 = (v65 + 864 * v10 + 23);
          }

          *(v4 + 148) = *v66 * *v66;
          *(v4 + 144) = (6554 * *v66 + 32770) >> 16;
          v67 = *(result + *(v65 + 864 * v10 + 2));
          *v4 = *(v16 + v67) == 118;
          *(v4 + 4) = *(v17 + v67) == 86 && (v68 = *(v7 + 2992)) != 0 && v14[*(v68 + 25)] == 3;
          goto LABEL_82;
        case 6:
          v34 = v26 + 864 * v10;
          if (*(v34 + 2) == 35)
          {
            v35 = 0;
          }

          else if (*(v7 + 2740) == 1 && v5[1] == 114)
          {
            v35 = *(v34 + 46);
          }

          else
          {
            v35 = *(v26 + 864 * v10 + 24);
          }

          v14[v12] = v35;
          if (*(v2[95] + 864 * v10 + 2) != 35)
          {
            v55 = *(v4 + 16);
            if (v55)
            {
              if (*(v55 + 6) && *(v55 + 7))
              {
                v85 = v22;
                v87 = v21;
                v89 = v20;
                v91 = v18;
                v93 = v17;
                v95 = v16;
                v97 = result;
                v99 = v15;
                v101 = v13;
                v103 = v8;
                v105 = a2;
                v107 = v4;
                uselect_splitGID(v2, *v55, v114, &v113);
                v4 = v107;
                v56 = *(v107 + 16);
                v57 = *(v56 + 6);
                if (v57 == 3)
                {
                  v58 = 0;
                }

                else if (v57 == 1)
                {
                  v58 = *(v56 + 7);
                }

                else
                {
                  v58 = -*(v56 + 7);
                }

                a2 = v105;
                v8 = v103;
                v13 = v101;
                result = v97;
                v15 = v99;
                v17 = v93;
                v16 = v95;
                v20 = v89;
                v18 = v91;
                v22 = v85;
                v21 = v87;
                v69 = *(*(v7 + 2968) + v11 + 24) & (*(*(v114[0] + 160) + v113 * *(v114[0] + 168) + *(*(v7 + 2968) + v11 + 11)) >> *(*(v7 + 2968) + v11 + 12));
                v70 = *(v2 + 924);
                v71 = v70 - v69;
                v62 = v69 >= v70;
                v72 = v69 - v70;
                if (v72 == 0 || !v62)
                {
                  LOBYTE(v72) = v71;
                }

                v73 = v58 * v72 / 100 + v69;
                if (v73 >= 255)
                {
                  v73 = 255;
                }

                v14[v12] = v73 & ~(v73 >> 31);
                *v6 = *(v2 + 230);
              }
            }
          }

          *v6 *= 10;
          if (*(v7 + 2740) == 1)
          {
            v74 = v2[95];
            if (v5[1] == 114)
            {
              v75 = v74 + 864 * v10;
              *(v4 + 156) = *(v75 + 47) * *(v75 + 47);
              v76 = *(v75 + 47);
              goto LABEL_144;
            }
          }

          else
          {
            v74 = v2[95];
          }

          v77 = v74 + 864 * v10;
          *(v4 + 156) = *(v77 + 25) * *(v77 + 25);
          v76 = *(v77 + 25);
LABEL_144:
          *(v4 + 152) = v76;
LABEL_82:
          v48 = !*v6 && (*(*(v7 + 2968) + v11) != 5 || !*(v2[5] + 2680) || !*(v2[111] + 4));
          *(v6 + 16) = v48;
          ++v12;
          v6 += 24;
          v25 += 4;
          v11 += 32;
          if (v12 >= *(v7 + 2966))
          {
            break;
          }

          continue;
        case 7:
          v28 = *(v26 + 864 * v10 + 13);
          goto LABEL_81;
        case 8:
          v28 = *(v26 + 864 * v10 + 14);
          goto LABEL_81;
        case 9:
          v28 = *(v26 + 864 * v10 + 15);
          goto LABEL_81;
        case 0xA:
          v28 = *(v26 + 864 * v10 + 16);
          goto LABEL_81;
        case 0xB:
          v28 = *(v26 + 864 * v10 + 17);
          goto LABEL_81;
        case 0xC:
        case 0x13:
          v28 = *(v26 + 864 * v10 + 18);
          goto LABEL_81;
        case 0xD:
        case 0x14:
          v28 = *(v26 + 864 * v10 + 21);
          goto LABEL_81;
        case 0xE:
          v28 = *(v26 + 864 * v10 + 26);
          goto LABEL_81;
        case 0xF:
          v28 = *(v26 + 864 * v10 + 27);
          goto LABEL_81;
        case 0x10:
          v28 = *(v26 + 864 * v10 + 28);
          goto LABEL_81;
        case 0x11:
          v14[v12] = 0;
          goto LABEL_82;
        case 0x12:
          v28 = *(v26 + 864 * v10 + 29);
          goto LABEL_81;
        case 0x1A:
          if (a2 < 2)
          {
            goto LABEL_60;
          }

          v29 = (v26 + 864 * v8 - 862);
          goto LABEL_59;
        case 0x1B:
          if (*(v2 + 384) <= v13)
          {
            goto LABEL_60;
          }

          v28 = *(v26 + 864 * v10 + 866);
          goto LABEL_81;
        case 0x1C:
          if (a2 < 4)
          {
            goto LABEL_60;
          }

          v29 = (v26 + 864 * v8 - 1726);
LABEL_59:
          v28 = *v29;
          goto LABEL_81;
        case 0x1D:
          if (*(v2 + 384) <= v15)
          {
LABEL_60:
            v28 = 35;
          }

          else
          {
            v28 = *(v26 + 864 * v10 + 1730);
          }

          goto LABEL_81;
        case 0x1E:
          v28 = *(v26 + 864 * v10 + 30);
          goto LABEL_81;
        case 0x1F:
          v28 = *(v26 + 864 * v10 + 31);
          goto LABEL_81;
        case 0x20:
          v28 = *(v26 + 864 * v10 + 32);
          goto LABEL_81;
        case 0x21:
          v28 = *(v26 + 864 * v10 + 33);
          goto LABEL_81;
        case 0x22:
          v28 = *(v26 + 864 * v10 + 34);
          goto LABEL_81;
        case 0x23:
          v28 = *(v26 + 864 * v10 + 35);
          goto LABEL_81;
        case 0x24:
          v28 = *(v26 + 864 * v10 + 36);
          goto LABEL_81;
        case 0x25:
          v28 = *(v26 + 864 * v10 + 37);
          goto LABEL_81;
        case 0x26:
          v28 = *(v26 + 864 * v10 + 38);
          goto LABEL_81;
        case 0x27:
          v28 = *(v26 + 864 * v10 + 39);
          goto LABEL_81;
        case 0x28:
          v28 = *(v26 + 864 * v10 + 40);
          goto LABEL_81;
        case 0x29:
          v28 = *(v26 + 864 * v10 + 41);
          goto LABEL_81;
        case 0x2B:
          v28 = *(v26 + 864 * v10 + 42);
          goto LABEL_81;
        case 0x2C:
          v28 = *(v26 + 864 * v10 + 43);
          goto LABEL_81;
        case 0x45:
          v28 = *(v26 + 864 * v10 + 48);
          goto LABEL_81;
        case 0x46:
          v28 = *(v26 + 864 * v10 + 49);
LABEL_81:
          v14[v12] = v28;
          goto LABEL_82;
        default:
          goto LABEL_82;
      }

      break;
    }
  }

  if (*(v7 + 2560))
  {
    v78 = v2[95] + 864 * v10;
    v79 = *(v78 + 68);
    *(v4 + 29) = *(v78 + 60);
    *(v4 + 37) = v79;
    v80 = *(v7 + 2144 + *(v4 + 36));
    *(v4 + 36) = v80;
    v81 = *(v7 + 2144 + *(v4 + 37));
    *(v4 + 37) = v81;
    v82 = *(v7 + 2144 + *(v4 + 34));
    *(v4 + 34) = v82;
    v83 = *(v7 + 2144 + *(v4 + 35));
    *(v4 + 35) = v83;
    if (v80 == 255 || v81 == 255 || v82 == 255 || v83 == 255)
    {
      *(v4 + 37) = 0;
      *(v4 + 29) = 0;
    }

    if (*(v2[95] + 864 * v10 + 20))
    {
      if (v5[1] == 108)
      {
        *(v4 + 40) = 100000;
      }
    }
  }

  return result;
}

uint64_t smooth_f0(uint64_t a1, _WORD *a2, unsigned int a3, unsigned int a4)
{
  v4 = a4;
  v8 = a3 + 1;
  v9 = 0x200000 / a4;
  v10 = 2229280778;
  v11 = heap_Calloc(*(a1 + 8), (3 * v8), 4);
  if (v11)
  {
    v12 = v11;
    v13 = heap_Calloc(*(a1 + 8), v8, 4);
    v14 = *(a1 + 8);
    if (!v13)
    {
      v65 = v12;
LABEL_71:
      heap_Free(v14, v65);
      return v10;
    }

    v15 = heap_Calloc(v14, v8, 2);
    if (!v15)
    {
LABEL_70:
      heap_Free(*(a1 + 8), v12);
      v14 = *(a1 + 8);
      v65 = v13;
      goto LABEL_71;
    }

    v68 = a2;
    v16 = v15;
    v17 = heap_Calloc(*(a1 + 8), v8, 4);
    v18 = *(a1 + 8);
    v70 = v17;
    if (!v17)
    {
      v66 = v16;
LABEL_69:
      heap_Free(v18, v66);
      goto LABEL_70;
    }

    v69 = heap_Calloc(v18, v8, 1);
    if (v69)
    {
      v19 = heap_Calloc(*(a1 + 8), v8, 1);
      v20 = v19;
      if (v19)
      {
        v21 = v16;
        *v16 = *v68;
        if (a3 >= 2)
        {
          v22 = v16 + 1;
          v23 = v68 + 2;
          v24 = a3 - 1;
          do
          {
            v25 = *v23;
            v26 = *(v23 - 1);
            v23 += 2;
            v27 = (v26 + v25) >> 1;
            if (!v26)
            {
              LOWORD(v27) = v25;
            }

            if (v25)
            {
              v28 = v27;
            }

            else
            {
              v28 = v26;
            }

            *v22++ = v28;
            --v24;
          }

          while (v24);
        }

        v16[a3] = v68[2 * a3 - 1];
        v29 = v70;
        if (a3 <= 0x7FFFFFFE)
        {
          v30 = v8;
          v31 = v21;
          v32 = v69;
          do
          {
            v33 = *v31++;
            *v32++ = v33 != 0;
            --v30;
          }

          while (v30);
        }

        if (a3 >= 1)
        {
          v34 = v68 + 1;
          v35 = a3;
          v36 = v19;
          v37 = v70;
          do
          {
            v38 = *(v34 - 1);
            if (*(v34 - 1))
            {
              v38 = *v34 - v38;
              if (*v34)
              {
                v39 = v4;
              }

              else
              {
                v38 = 0;
                v39 = 0;
              }
            }

            else
            {
              v39 = 0;
            }

            *v37++ = v38;
            *v36++ = v39;
            v34 += 2;
            --v35;
          }

          while (v35);
        }

        v40 = v69;
        if (a3 <= 0x7FFFFFFE)
        {
          v41 = 0;
          v42 = (v12 + 8);
          v43 = v70;
          do
          {
            v42[-1].i32[0] = 0;
            v42[-1].i32[1] = *(v69 + v41);
            v42->i32[0] = 0;
            *(v13 + 4 * v41) = *(v21 + 2 * v41) * *(v69 + v41);
            if (v41)
            {
              v44 = v42[-1].i32[1];
              v42[-1].i32[0] -= *(v19 + v41 - 1);
              v42[-1].i32[1] = v44 + *(v19 + v41 - 1);
              *(v13 + 4 * v41) += *(v43 - 1) * *(v19 + v41 - 1);
            }

            if (v41 < a3)
            {
              v45 = v42->i32[0];
              v42[-1].i32[1] += *(v19 + v41);
              v42->i32[0] = v45 - *(v19 + v41);
              *(v13 + 4 * v41) -= *v43 * *(v19 + v41);
            }

            v42[-1] = vshl_n_s32(v42[-1], 9uLL);
            v42->i32[0] <<= 9;
            v42 = (v42 + 12);
            *(v13 + 4 * v41++) <<= 9;
            ++v43;
          }

          while (v8 != v41);
        }

        if (a3 >= 1)
        {
          v46 = 0;
          do
          {
            v47 = v12 + 12 * v46;
            v48 = *(v47 + 4);
            if (v48)
            {
              v49 = *(v13 + 4 * v46);
              if (v49 <= v9)
              {
                v50 = *(v47 + 8);
              }

              else
              {
                do
                {
                  *(v13 + 4 * v46) = v49 >> 1;
                  v48 = *(v47 + 4) / 2;
                  v50 = *(v47 + 8) / 2;
                  *(v47 + 4) = v48;
                  *(v47 + 8) = v50;
                  v49 = *(v13 + 4 * v46);
                }

                while (v49 > v9);
              }

              v51 = (v12 + 12 * (v46 + 1));
              v52 = *v51;
              v51[1] -= (*v51 * v50 + v48 / 2) / v48;
              *(v13 + 4 * (v46 + 1)) -= (*(v13 + 4 * v46) * v52 + v48 / 2) / v48;
              ++v46;
            }

            else
            {
              ++v46;
            }
          }

          while (v46 != a3);
        }

        v53 = *(v12 + 12 * a3 + 4);
        if (v53)
        {
          v53 = (*(v13 + 4 * a3) + v53 / 2) / v53;
        }

        v68[2 * v8 - 3] = v53;
        v54 = a3 - 1;
        if ((a3 - 1) >= 0)
        {
          v55 = &v68[2 * a3];
          v56 = &v68[2 * v54];
          v57 = (v12 + 12 * v54 + 8);
          v58 = a3;
          v59 = a3 - 1;
          do
          {
            v60 = *(v57 - 1);
            if (v60)
            {
              if (v58 >= a3)
              {
                v61 = &v68[2 * v8 - 3];
              }

              else
              {
                v61 = v55;
              }

              v60 = (*(v13 + 4 * v59) + v60 / 2 - *v57 * *v61) / v60;
            }

            if (v59 >= a3)
            {
              v62 = &v68[2 * v8 - 3];
            }

            else
            {
              v62 = v56;
            }

            *v62 = v60;
            v55 -= 2;
            --v58;
            v56 -= 2;
            v57 -= 3;
          }

          while (v59-- > 0);
          if (a3 >= 2)
          {
            v64 = v68 + 2;
            do
            {
              *(v64 - 1) = *v64;
              v64 += 2;
              --v54;
            }

            while (v54);
          }
        }

        v10 = 0;
        goto LABEL_65;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = v16;
    v40 = v69;
    v29 = v70;
LABEL_65:
    heap_Free(*(a1 + 8), v21);
    heap_Free(*(a1 + 8), v29);
    if (v40)
    {
      heap_Free(*(a1 + 8), v40);
    }

    if (!v20)
    {
      goto LABEL_70;
    }

    v18 = *(a1 + 8);
    v66 = v20;
    goto LABEL_69;
  }

  return v10;
}

uint64_t US_comp(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 != *a2;
  }
}

uint64_t uselect_ResetUnitSelector(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 908);
    if ((v3 * a2) > *(a1 + 784))
    {
      v4 = (v3 * ((a2 & 0xFFC0) + 64));
      v5 = heap_Realloc(*(*(a1 + 16) + 8), *(a1 + 792), 4 * v4);
      if (!v5 || (*(a1 + 792) = v5, (v6 = heap_Realloc(*(*(a1 + 16) + 8), *(a1 + 800), v4)) == 0) || (*(a1 + 800) = v6, (v7 = heap_Realloc(*(*(a1 + 16) + 8), *(a1 + 808), 2 * v4)) == 0))
      {
        v8 = 2229280778;
        log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19000, 0);
        return v8;
      }

      *(a1 + 808) = v7;
      *(a1 + 784) = v4;
      memset(*(a1 + 792), 255, 4 * v4);
      memset(*(a1 + 800), 255, v4);
    }

    return 0;
  }

  else
  {
    v9 = *(a1 + 792);
    if (v9)
    {
      heap_Free(*(*(a1 + 16) + 8), v9);
      *(a1 + 792) = 0;
      *(a1 + 784) = 0;
    }

    v10 = *(a1 + 800);
    if (v10)
    {
      heap_Free(*(*(a1 + 16) + 8), v10);
      *(a1 + 800) = 0;
    }

    v11 = *(a1 + 808);
    if (v11)
    {
      heap_Free(*(*(a1 + 16) + 8), v11);
      *(a1 + 808) = 0;
    }

    v8 = 0;
    *(a1 + 784) = 0;
  }

  return v8;
}

uint64_t uselect_ProcessUnitSelector(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 2684))
  {
    v3 = *(v2 + 2688) != 0;
    v4 = 1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v5 = *(a1 + 746);
  if (*(a1 + 746))
  {
    v6 = *(a1 + 768);
  }

  else
  {
    v7 = *(a1 + 816);
    *(a1 + 824) = v7;
    v8 = *(a1 + 908);
    v9 = v7 + 112 * v8;
    *(a1 + 832) = v9;
    *(a1 + 840) = v9 + 112 * v8;
    *(a1 + 848) = 0;
    *(a1 + 850) = 0;
    if (v8)
    {
      v10 = v7 + 32;
      v11 = v8;
      do
      {
        *v10 = -1;
        *(v10 + 26) = -1;
        v10 += 112;
        --v11;
      }

      while (v11);
      v12 = v7 + 112 * v8 + 32;
      v13 = v8;
      do
      {
        *v12 = -1;
        *(v12 + 26) = -1;
        v12 += 112;
        --v13;
      }

      while (v13);
      v14 = v7 + 224 * v8 + 32;
      do
      {
        *v14 = -1;
        *(v14 + 26) = -1;
        v14 += 112;
        --v8;
      }

      while (v8);
    }

    v6 = *(a1 + 768);
    if (v6 >= 1)
    {
      v15 = 0;
      v16 = *(*(a1 + 776) + 3528);
      do
      {
        *(v16 + 4 * v15++) = -1;
        v6 = *(a1 + 768);
      }

      while (2 * v6 > v15);
    }
  }

  if (v5)
  {
    LOWORD(v5) = 2 * v5 + 4;
  }

  else
  {
    LOWORD(v5) = 0;
  }

  v17 = 2 * v6;
  v18 = 2 * v6 - 1;
  if (v17 > (2 * *(a1 + 748) + 3))
  {
    v18 = 2 * *(a1 + 748) + 3;
  }

  v19 = v18;
  if (v5 <= v18)
  {
    v87 = v2 + 2144;
    v88 = v2;
    while (1)
    {
      v22 = v5;
      v23 = v22 - 1;
      if (v22 > 1)
      {
        break;
      }

      result = uselect_SelectNextCandidate(a1, v4, 0, v5);
      if (result)
      {
        return result;
      }

      LODWORD(v25) = *(a1 + 908);
      v26 = *(a1 + 850);
      if (*(a1 + 850))
      {
        v27 = 0;
        v28 = v25 * v22;
        v29 = *(a1 + 808) + 2 * v28;
        v30 = *(a1 + 840);
        v31 = *(a1 + 64);
        v32 = *(a1 + 792) + 4 * v28;
        do
        {
          v33 = v30 + 112 * v27;
          v34 = *(a1 + 48) - 1;
          while (v34)
          {
            v35 = v34;
            v36 = *(*(a1 + 56) + 8 * v34--);
            if (v36 == *(v33 + 40))
            {
              v37 = v35;
              goto LABEL_33;
            }
          }

          v37 = 0;
LABEL_33:
          *(v32 + 4 * v27) = *(v31 + 4 * v37) + *(v33 + 32);
          *(v29 + 2 * v27) = *(v33 + 59);
          if (!v22)
          {
            *v33 = 0;
          }

          ++v27;
        }

        while (v27 != v26);
      }

LABEL_69:
      v21 = *(a1 + 849);
      *(a1 + 848) = v21;
      *(a1 + 849) = *(a1 + 850);
      *(a1 + 850) = 0;
      v61 = *(a1 + 824);
      v62 = *(a1 + 832);
      *(a1 + 824) = v62;
      *(a1 + 840) = v61;
      if (v25)
      {
        v25 = v25;
        v63 = v61 + 32;
        do
        {
          *v63 = -1;
          *(v63 + 26) = -1;
          v63 += 112;
          --v25;
        }

        while (v25);
      }

      v5 = (v22 + 1);
      if (v5 > v19)
      {
        v20 = v62;
        goto LABEL_74;
      }
    }

    if (!v3)
    {
      goto LABEL_44;
    }

    v38 = *(a1 + 40);
    if (*(v38 + 2732) == 1)
    {
      if (v22)
      {
LABEL_44:
        v39 = 0;
LABEL_45:
        result = uselect_SelectNextCandidate(a1, v4, v39, v22);
        if (result)
        {
          return result;
        }

        v40 = (v22 & 1) != 0 || v22 == 2;
        if (!v40 && v3)
        {
          v42 = *(a1 + 40);
          if (*(v42 + 2732) == 1 || *(v42 + *(v87 + *(*(a1 + 760) + 864 * (v22 >> 1) - 862)) + 1887) != 83)
          {
            result = uselect_SelectNextCandidate(a1, v4, 1, v23);
            if (result)
            {
              return result;
            }
          }
        }

        uselect_SelectBestPredecessor(a1);
        if (*(v88 + 2668) == 1)
        {
          ssft_qsort(*(a1 + 832), *(a1 + 849), 112, US_comp);
        }

        v43 = *(a1 + 849);
        LODWORD(v25) = *(a1 + 908);
        if (*(a1 + 849))
        {
          v44 = 0;
          v45 = *(a1 + 832);
          v46 = *(a1 + 64);
          v47 = *(a1 + 792) + 4 * (v23 * v25);
          do
          {
            v48 = v45 + 112 * v44;
            v49 = *(v48 + 40);
            v50 = *(v48 + 32);
            v51 = *(a1 + 48) - 1;
            while (v51)
            {
              v52 = v51;
              v53 = *(*(a1 + 56) + 8 * v51--);
              if (v53 == v49)
              {
                v54 = v52;
                goto LABEL_65;
              }
            }

            v54 = 0;
LABEL_65:
            *(v47 + 4 * v44++) = *(v46 + 4 * v54) + v50;
          }

          while (v44 != v43);
          v55 = 0;
          v56 = 0;
          v57 = *(a1 + 832);
          v58 = (v23 * v25);
          v59 = *(a1 + 800) + v58;
          v60 = *(a1 + 808) + 2 * v58 + 1;
          do
          {
            *(v59 + v56) = *(v57 + v55 + 108);
            v57 = *(a1 + 832);
            *(v60 - 1) = *(v57 + v55 + 59);
            ++v56;
            v60 += 2;
            v55 += 112;
          }

          while (v56 < *(a1 + 849));
          LODWORD(v25) = *(a1 + 908);
        }

        goto LABEL_69;
      }
    }

    else if ((v22 & 1) != 0 || *(v38 + *(v87 + *(*(a1 + 760) + 864 * (v22 >> 1) + 2)) + 1887) == 83)
    {
      goto LABEL_44;
    }

    v39 = 2;
    goto LABEL_45;
  }

  v20 = *(a1 + 824);
  v21 = *(a1 + 848);
LABEL_74:
  if (v21 < 2)
  {
    v64 = 0;
  }

  else
  {
    v64 = 0;
    v67 = *v20;
    v65 = v20 + 28;
    v66 = v67;
    for (i = 1; i < v21; ++i)
    {
      v70 = *v65;
      v65 += 28;
      v69 = v70;
      if (v70 < v66)
      {
        v66 = v69;
        v64 = i;
      }
    }
  }

  v71 = v19 - 1;
  v72 = (v19 - 1);
  if (v72 <= 2 * *(a1 + 746))
  {
    v75 = *(a1 + 792);
    v74 = *(a1 + 908);
    v83 = *(a1 + 776);
    v77 = *(v83 + 3528);
    v73 = *(a1 + 808);
    v78 = *(v83 + 3536);
  }

  else
  {
    v73 = *(a1 + 808);
    v74 = *(a1 + 908);
    v75 = *(a1 + 792);
    v76 = *(a1 + 776);
    v77 = *(v76 + 3528);
    v78 = *(v76 + 3536);
    v79 = *(a1 + 800);
    do
    {
      v80 = v74 * v72;
      v81 = v64;
      *(v77 + 4 * v71) = *(v75 + 4 * v80 + 4 * v64);
      v82 = (v73 + 2 * v80 + 2 * v64);
      *(v78 + 4 * v72) = *v82;
      *(v78 + 4 * v72 + 2) = v82[1];
      v64 = *(v79 + v80 + v81);
      v72 = --v71;
    }

    while (v71 > 2 * *(a1 + 746));
  }

  v84 = v72 * v74;
  *(v77 + 4 * v71) = *(v75 + 4 * v84 + 4 * v64);
  v85 = (v73 + 2 * v84 + 2 * v64);
  v86 = (v78 + 4 * v72);
  *v86 = *v85;
  v86[1] = v85[1];
  result = 0;
  if (v19 + 1 == (*(a1 + 768) << 16) >> 15)
  {
    *(v77 + 4 * v19) = *(*(a1 + 832) + 32);
  }

  return result;
}

uint64_t uselect_SelectNextCandidate(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v8 = *(a1 + 776);
  if (*(a1 + 916))
  {
    v9 = *(v8 + 3640);
    v10 = v9 + 504 * a4;
    if (!v9)
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 888);
  *(v11 + 8) = v10;
  v12 = *(v8 + 3648);
  if (!v12 || (v13 = v12 + 8 * a4, !*(v13 + 4)) && !*(v13 + 6))
  {
    v13 = 0;
  }

  *(v11 + 16) = v13;
  uselect_ExtractFeatFromMsg(a1, a4);
  v14 = *(a1 + 760);
  v15 = (v14 + 864 * ((v4 + ((v4 & 0x8000) >> 15)) << 16 >> 17) + 8);
  if ((v4 & 1) == 0)
  {
    v15 = (v14 + 864 * (v4 >> 1) + 4);
  }

  v16 = *v15;
  v17 = *(a1 + 888);
  *(v17 + 24) = v16;
  if (v16 <= 0)
  {
    v20 = *(*(a1 + 776) + 3632);
    if (v20)
    {
      v21 = *(v20 + 4 * v4);
      if (v21 != -1)
      {
        *(v17 + 24) = v21;
      }
    }
  }

  if (*(*(a1 + 40) + 2532))
  {
    v18 = (v4 + ((v4 & 0x8000) >> 15)) << 16 >> 17;
    if ((v4 + 1) >= 3)
    {
      v19 = *(v14 + 864 * v18 - 862);
    }

    else
    {
      v19 = 0;
    }

    *(v17 + 44) = v19;
    if (*(a1 + 768) - 1 == v18)
    {
      v23 = 0;
    }

    else
    {
      v23 = *(v14 + 864 * v18 + 866);
    }

    *(v17 + 45) = v23;
    v22 = *(a1 + 856);
    if (*v22 == 35)
    {
      if (v22[1] == 114)
      {
        *(v17 + 44) = 35;
      }

      else
      {
        *(v17 + 45) = 35;
      }
    }
  }

  else
  {
    v22 = *(a1 + 856);
  }

  *(v17 + 28) = 0;
  if (v22[1] == 108)
  {
    if (v4 < 2)
    {
      goto LABEL_34;
    }

    v24 = (v14 + 864 * (v4 >> 1) - 862);
  }

  else
  {
    v25 = ((v4 + ((v4 & 0x8000) >> 15)) >> 1) + 1;
    if (*(a1 + 768) <= v25)
    {
      goto LABEL_34;
    }

    v24 = (v14 + 864 * v25 + 2);
  }

  *(v17 + 28) = *v24;
LABEL_34:
  if (a2)
  {
    v26 = (v4 + ((v4 & 0x8000) >> 15)) >> 1;
    if (v22[1] == 108)
    {
      v27 = *(v14 + 864 * v26 + 776);
    }

    else
    {
      v27 = *(v14 + 864 * v26 + 777);
    }

    v28 = uselect_CascadingFlatSearch(a1, v27, v5);
  }

  else
  {
    v28 = uselect_FlatSearch(a1);
  }

  *(a1 + 872) = v28;
  uselect_CopyResultsToDpNode(a1, v5, v4);
  if (v5 == 1 || *(a1 + 850))
  {
    return 0;
  }

  log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19009, "%s%d", "phoneme", **(a1 + 856));
  return 2229280796;
}

uint64_t uselect_SelectBestPredecessor(uint64_t result)
{
  v1 = result;
  v2 = *(result + 824);
  v3 = *(v2 + 76);
  v4 = **(v2 + 40);
  if (v3 == *(v4 + 2179) || *(*(result + 832) + 76) == *(**(*(result + 832) + 40) + 2179))
  {
    if (!*(v4 + 2588) || (v5 = *(result + 832), !*(**(v5 + 40) + 2588)))
    {
      v6 = 1;
      goto LABEL_8;
    }

    if (!*(v2 + 86))
    {
      v6 = *(v5 + 87) == 0;
      goto LABEL_8;
    }
  }

  v6 = 0;
LABEL_8:
  v7 = *(result + 849);
  v9 = *(*(result + 40) + 2616) == 1 && *(v4 + v3 + 1630) == 83 && (v8 = *(result + 832), *(**(v8 + 40) + *(v8 + 76) + 1630) == 83) && *(v8 + 77) == 114;
  v10 = *(result + 832);
  if (*(v4 + 2696))
  {
    v11 = v4 == **(v10 + 40);
    if (!*(result + 849))
    {
      return result;
    }
  }

  else
  {
    v11 = 0;
    if (!*(result + 849))
    {
      return result;
    }
  }

  v21 = *(result + 40);
  v12 = 1;
  do
  {
    result = uselect_CalculateCost(v1, v10, v6, v9, v11);
    *(v10 + 4) = result;
    if (result < 0xEE6B2800)
    {
      v12 = 0;
    }

    v10 += 112;
    v13 = *(v1 + 832);
  }

  while (v10 < v13 + 112 * v7);
  if (v12 && v11)
  {
    do
    {
      result = uselect_CalculateCost(v1, v13, v6, v9, 0);
      *(v13 + 4) = result;
      v13 += 112;
    }

    while (v13 < *(v1 + 832) + 112 * v7);
    v13 = *(v1 + 832);
  }

  v14 = v13 + 112 * v7;
  v15 = *(v1 + 824);
  do
  {
    *v13 += *(v13 + 4);
    v16 = *(v13 + 108);
    v17 = **(v15 + 112 * *(v13 + 108) + 40);
    if ((v17[848] & 0x80000000) == 0 || (v17[849] & 0x80000000) == 0)
    {
      v18 = **(v13 + 40);
      if (((*(v18 + 3392) & 0x80000000) == 0 || (*(v18 + 3396) & 0x80000000) == 0) && *(v13 + 85) == 255)
      {
        *(v13 + 85) = *(v15 + 112 * *(v13 + 108) + 85);
      }
    }

    v19 = v15 + 112 * v16;
    if ((v17[846] & 0x80000000) == 0 && !v17[648])
    {
      v20 = **(v13 + 40);
      if ((*(v20 + 3384) & 0x80000000) == 0 && !*(v20 + 2592) && !*(v13 + 88))
      {
        *(v13 + 88) = *(v19 + 88);
        *(v13 + 89) = *(v15 + 112 * v16 + 89) + 1;
      }
    }

    if (*(v21 + 2560) && (*(v19 + 61) != 1 || *(v19 + 77) != 114) && (v17 != **(v13 + 40) || *(v19 + 8) != *(v13 + 32) || !*(v19 + 104)))
    {
      *(v13 + 104) = 0;
    }

    v13 += 112;
  }

  while (v13 < v14);
  return result;
}

uint64_t uselect_CopyResultsToDpNode(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    v3 = 114;
  }

  else
  {
    v3 = 108;
  }

  if (a2 == 1)
  {
    v4 = *(result + 832) + 112 * *(result + 849);
    v5 = *(result + 872);
    *(result + 849) += v5;
    if (v5)
    {
LABEL_6:
      v6 = (a3 + ((a3 & 0x8000) >> 15)) << 16 >> 17;
      v7 = *(result + 880);
      v8 = v4;
      while (1)
      {
        v9 = *(v7 + 1);
        *(v8 + 40) = v9;
        v10 = *v7;
        *(v8 + 32) = v10;
        *v8 = v7[4];
        *(v8 + 58) = *(v7 + 20);
        if (*(*(result + 40) + 2560))
        {
          *(v8 + 96) = vrev64_s32(*(v7 + 7));
          *(v8 + 104) = 1;
        }

        v11 = *v9;
        v12 = *(*v9 + *(*(result + 760) + 864 * v6 + 2) + 2144);
        v13 = *(*v9 + v12 + 859) == 118;
        *(v8 + 76) = v12;
        *(v8 + 77) = v3;
        *(v8 + 80) = v13;
        if (v11[658] <= 0x63u)
        {
          *(v8 + 16) = 0;
          v14 = *(v9 + 152);
          if (v14)
          {
            v15 = v10 >> 3;
            if ((v10 & 7) != 0)
            {
              ++v15;
            }

            if ((*(v14 + v15) >> (v10 & 7 ^ 7)))
            {
              v16 = *(v9 + 144);
              if (v16)
              {
                v17 = 0;
                v18 = *(v9 + 136);
                while (1)
                {
                  v19 = v17;
                  v20 = *(v18 + 4 * v17);
                  if (v20 == v10)
                  {
                    break;
                  }

                  if (v20 <= v10)
                  {
                    v17 = v19 + *(v18 + 4 * (v19 + 1)) + 2;
                    if (v17 < v16)
                    {
                      continue;
                    }
                  }

                  goto LABEL_21;
                }

                *(v8 + 16) = v18 + 4 * v19 + 4;
              }
            }
          }
        }

LABEL_21:
        v21 = v11[651];
        if (v21 != 2)
        {
          if (v21 == 1)
          {
            v22 = *(v9 + 192) + v10 * *(v9 + 200);
            *(v8 + 8) = *v22;
            v23 = *(v22 + 16);
            *(v8 + 59) = v23;
            v24 = *(v22 + 17);
            *(v8 + 60) = v24;
            if (v11[647] == 1)
            {
              v25 = *(v22 + 18);
              *(v8 + 87) = v25 & 0xF;
              *(v8 + 86) = v25 >> 4;
            }

            v26 = *(v22 + 4);
            *(v8 + 70) = *(v22 + 12);
            *(v8 + 62) = v26;
            goto LABEL_33;
          }

LABEL_32:
          v32 = *(v9 + 192) + v10 * *(v9 + 200);
          *(v8 + 8) = *v32;
          v23 = *(v32 + 4);
          *(v8 + 59) = v23;
          v24 = *(v32 + 5);
          *(v8 + 60) = v24;
          *(v8 + 74) = *(v32 + 6);
          goto LABEL_33;
        }

        v27 = v11[664];
        v28 = v11[661];
        if (!v27)
        {
          break;
        }

        v29 = *(v9 + 192) + v10 * *(v9 + 200);
        *(v8 + 8) = *v29;
        v23 = *(v29 + 4);
        *(v8 + 59) = v23;
        v24 = *(v29 + 5);
        *(v8 + 60) = v24;
        *(v8 + 74) = *(v29 + 6);
        *(v8 + 75) = *(v29 + 7);
        *(v8 + 91) = *(v29 + 8);
        if (v28)
        {
          v30 = *(v29 + 9);
LABEL_31:
          *(v8 + 92) = v30;
        }

LABEL_33:
        v33 = *v9;
        if (*(*v9 + 2696))
        {
          v34 = *(v8 + 8);
          *(v8 + 87) = v34 < 0;
          *(v8 + 86) = (v34 & 0x40000000) != 0;
          v35 = v34 & 0x3FFFFFFF;
          if (v35 == 0x3FFFFFFF)
          {
            v35 = -1;
          }

          *(v8 + 8) = v35;
          v33 = *v9;
        }

        if ((v33[846] & 0x80000000) == 0)
        {
          *(v8 + 90) = v23;
          v36 = v33[648] == 0;
          v37 = v24 < 0x15u;
          v38 = !v36 || !v37;
          if (v36 && v37)
          {
            v39 = 0;
          }

          else
          {
            v39 = v24;
          }

          if (v38)
          {
            v40 = 0;
          }

          else
          {
            v40 = 100;
          }

          *(v8 + 88) = v39;
          *(v8 + 89) = v40;
        }

        if ((v33[848] & 0x80000000) == 0 || (v33[849] & 0x80000000) == 0)
        {
          v41 = *(v7 + 36);
          *(v8 + 84) = v41;
          v42 = *(result + 760);
          v43 = (v42 + 864 * v6);
          *(v8 + 50) = v43[26];
          *(v8 + 52) = v43[27];
          *(v8 + 54) = v43[28];
          *(v8 + 56) = v43[29];
          if (*(v33 + v12 + 1116) == 86)
          {
            v44 = ((a3 + ((a3 & 0x8000) >> 15)) >> 1) - 1;
            do
            {
              if (v44 < 0)
              {
                break;
              }

              v45 = v42 + 864 * (v44 & 0x7FFF);
              if (*(v45 + 19) == 1)
              {
                goto LABEL_53;
              }

              --v44;
            }

            while (*(v33 + *(v33 + *(v45 + 2) + 2144) + 1116) != 86);
          }

          v41 = -1;
LABEL_53:
          *(v8 + 85) = v41;
        }

        v46 = *(v33 + 1680);
        if (*(v33 + 1680))
        {
          v47 = 0;
          v48 = *(result + 760);
          v49 = *(v8 + 24);
          do
          {
            v50 = v48 + 864 * v6 + 4 * v47;
            v51 = (v50 + 712);
            v52 = (v50 + 744);
            if ((a3 & 1) == 0)
            {
              v52 = v51;
            }

            *(v49 + 4 * v47++) = *v52;
          }

          while (v46 > v47);
        }

        else
        {
          v48 = *(result + 760);
        }

        *(v8 + 61) = *(v48 + 864 * v6 + 19);
        v8 += 112;
        v7 = *(v7 + 6);
        if (v8 >= v4 + 112 * *(result + 872))
        {
          return result;
        }
      }

      if (!v28)
      {
        goto LABEL_32;
      }

      v31 = *(v9 + 192) + v10 * *(v9 + 200);
      *(v8 + 8) = *v31;
      v23 = *(v31 + 4);
      *(v8 + 59) = v23;
      v24 = *(v31 + 5);
      *(v8 + 60) = v24;
      *(v8 + 74) = *(v31 + 6);
      v30 = *(v31 + 8);
      goto LABEL_31;
    }
  }

  else
  {
    v4 = *(result + 840);
    v53 = *(result + 872);
    *(result + 850) = v53;
    if (v53)
    {
      goto LABEL_6;
    }
  }

  return result;
}

uint64_t uselect_splitGID(uint64_t a1, unsigned int a2, void *a3, _DWORD *a4)
{
  v4 = *(a1 + 48);
  if (v4 <= 1)
  {
    v4 = 1;
  }

  v5 = v4 - 1;
  v6 = 1;
  while (v6 - v5 != 1)
  {
    v7 = *(*(a1 + 64) + 4 * v6++);
    if (v7 > a2)
    {
      v5 = v6 - 2;
      break;
    }
  }

  *a3 = *(*(a1 + 56) + 8 * v5);
  *a4 = a2 - *(*(a1 + 64) + 4 * v5);
  return 0;
}

uint64_t uselect_FlatSearch(uint64_t a1)
{
  v220[143] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 888);
  v3 = *(a1 + 856);
  v4 = *(a1 + 40);
  v5 = *(a1 + 908);
  v205 = -1;
  v206 = 0;
  *(a1 + 880) = 0;
  if (*(v4 + 2560))
  {
    v5 -= 20;
  }

  v188 = v5;
  v6 = *v3;
  v7 = *(v4 + 2496);
  v193 = v3;
  v8 = v3[1];
  v9 = v8 == 114;
  v10 = **(a1 + 56);
  v207 = v10;
  if (*(v4 + 2532) != 1 || *(a1 + 912) != 1)
  {
    goto LABEL_31;
  }

  if (*(v4 + *(v4 + v6 + 2144) + 859) != 118)
  {
    goto LABEL_27;
  }

  v11 = *(v4 + 2536) == 1 && v3[*(*(v4 + 2992) + 25) + 3] == 1;
  if (*(v4 + 2540) == 1 && v3[*(*(v4 + 2992) + 25) + 3] == 2)
  {
    v11 = 1;
  }

  if (*(v4 + 2544) == 1 && v3[*(*(v4 + 2992) + 25) + 3] == 3)
  {
    v11 = 1;
  }

  if (*(v4 + 2548) == 1)
  {
    v12 = v3[*(*(v4 + 3000) + 25) + 3] != 1 && !v11;
    if (v12)
    {
      goto LABEL_27;
    }
  }

  else if (!v11)
  {
    goto LABEL_27;
  }

  if (v8 == 108)
  {
    *(v2 + 45) = 0;
  }

  else if (v8 == 114)
  {
    *(v2 + 44) = 0;
  }

LABEL_27:
  OffsetAndCountInCache3Table = uselect_GetOffsetAndCountInCache3Table(v4, v10, v3, *(v2 + 44), *(v2 + 45), &v206);
  if (!*(v4 + 2532) || (v14 = OffsetAndCountInCache3Table) == 0)
  {
    v10 = v207;
LABEL_31:
    v14 = 0;
    v15 = v9 | (2 * (v6 - v7));
    v190 = *(*(v10 + 128) + 4 * v15);
    v206 = *(*(v10 + 120) + 2 * v15);
    goto LABEL_32;
  }

  v190 = 0;
LABEL_32:
  if (*v193 == 35 || *(v2 + 24) != -1)
  {
    goto LABEL_34;
  }

  v119 = *(v4 + 2556);
  if (v119 == 3)
  {
    v169 = *(a1 + 888);
    if (!*(v169 + 29))
    {
      goto LABEL_34;
    }

    v149 = v188;
    v170 = v206;
    v151 = v188 >> 1;
    if (!v206)
    {
LABEL_339:
      v153 = 0;
      v152 = 0;
LABEL_340:
      v198 = v152 > v149;
      v187 = v153 > v151;
LABEL_35:
      if (!v206)
      {
        goto LABEL_253;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      v200 = 0;
      v19 = 0;
      v204 = 0;
      v199 = 0;
      v189 = v193 + 3;
      v20 = v4 + 2144;
      v186 = v4 + 3584;
      v197 = -1;
      v191 = -1;
      v192 = 0;
      v194 = v14;
      v195 = v4;
      v196 = v4 + 2144;
      while (1)
      {
        v21 = *(v2 + 24);
        if (v21 == -1)
        {
          if (v14)
          {
            v23 = v14[v19];
          }

          else
          {
            v23 = v19 + v190;
          }

          v205 = v23;
          goto LABEL_52;
        }

        if (!v200)
        {
          v22 = v19;
          uselect_splitGID(a1, v21 & 0x7FFFFFFF, &v207, &v205);
          v23 = v205;
          v24 = v207;
          if (v205 < *(v207 + 108))
          {
            v25 = *(v2 + 24);
            if ((v25 & 0x80000000) == 0)
            {
              v19 = v206 - 1;
LABEL_191:
              v203 = v17;
              v29 = 0;
              v27 = *(v207 + 160) + v205 * *(v207 + 168);
              v28 = *(v4 + 3000);
              v200 = 1;
              goto LABEL_58;
            }

            v19 = v22;
            if (v25 != -1)
            {
              goto LABEL_191;
            }

            goto LABEL_51;
          }

          log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19028, "%s%d", "ID", *(v2 + 24));
        }

        *(v2 + 24) = -1;
        v207 = **(a1 + 56);
        v19 = 0;
        if (v14)
        {
          v23 = *v14;
        }

        else
        {
          v23 = v190;
        }

        v205 = v23;
LABEL_51:
        v200 = 1;
LABEL_52:
        v26 = *(a1 + 936);
        v24 = v207;
        if (v26 && v207 == **(a1 + 56) && *(v26 + v23) == 255)
        {
          goto LABEL_188;
        }

        v27 = *(v207 + 160) + v23 * *(v207 + 168);
        v28 = *(v4 + 3000);
        if (v28)
        {
          if (*(v27 + v28[11]) == 255)
          {
            goto LABEL_188;
          }
        }

        v203 = v17;
        v29 = 1;
LABEL_58:
        v30 = *(v4 + 2968);
        v31 = *(a1 + 896);
        v202 = v18;
        if (!v198 || *v193 == 35)
        {
          goto LABEL_60;
        }

        if (!v29)
        {
          goto LABEL_93;
        }

        v41 = *(v4 + 2556);
        switch(v41)
        {
          case 3:
            if (v189[v28[25]] != (v28[24] & (*(v27 + v28[11]) >> v28[12])))
            {
              goto LABEL_231;
            }

            v28 = *(v4 + 3016);
            v100 = v189[v28[25]];
            break;
          case 2:
            v100 = v189[v28[25]];
            break;
          case 1:
            v32 = *(v4 + 2560);
            if (v32 == 1)
            {
              goto LABEL_63;
            }

            v42 = v193[1];
            if (v42 == 114)
            {
              v43 = *(v4 + 2984);
            }

            else
            {
              if (v42 != 108)
              {
                goto LABEL_231;
              }

              v43 = *(v4 + 2976);
            }

            v100 = v189[*(v43 + 25)];
            v101 = *(v27 + *(v43 + 11));
            goto LABEL_196;
          default:
            goto LABEL_60;
        }

        v101 = v28[24] & (*(v27 + v28[11]) >> v28[12]);
LABEL_196:
        if (v100 != v101)
        {
          goto LABEL_231;
        }

LABEL_60:
        v32 = *(v4 + 2560);
        v33 = v29 ^ 1;
        if (!v32)
        {
          v33 = 1;
        }

        if (v33)
        {
LABEL_93:
          v49 = 0;
          v50 = 0;
          goto LABEL_94;
        }

LABEL_63:
        if (!*(v2 + 29))
        {
          goto LABEL_93;
        }

        if (v32 == 2)
        {
          if (*v193 != 35 && ((v44 = (*(v24 + 176) + v23 * *(v24 + 184)), v45 = *v44, v46 = *(v44 + 4), *(v2 + 29) == v45) ? (v47 = *(v2 + 33) == v46) : (v47 = 0), v47))
          {
            v49 = 0;
            v50 = 1;
          }

          else
          {
            if (v187)
            {
              goto LABEL_231;
            }

            v48 = v193[1];
            if (v48 == 114)
            {
              if (v189[*(*(v4 + 3024) + 25)] == 3)
              {
                goto LABEL_93;
              }
            }

            else if (v48 == 108 && v189[*(*(v4 + 3024) + 25)] == 1)
            {
              goto LABEL_93;
            }

            v50 = 0;
            v49 = *(v4 + 2640);
          }
        }

        else
        {
          if (v32 != 1)
          {
            goto LABEL_93;
          }

          v34 = (*(v24 + 176) + v23 * *(v24 + 184));
          v35 = *(v20 + *(v34 + 5));
          if (v35 == 255)
          {
            goto LABEL_221;
          }

          v36 = *(v20 + *(v34 + 6));
          if (v36 == 255 || *v193 == 35)
          {
            goto LABEL_221;
          }

          v37 = *v34;
          v38 = *(v34 + 4);
          if (*(v2 + 29) != v37 || *(v2 + 33) != v38)
          {
            goto LABEL_221;
          }

          if (*(v2 + 34) == v35)
          {
            v40 = 0;
          }

          else
          {
            v102 = (v186 + 192 * *(v2 + 36));
            v104 = *v102;
            v103 = v102[1];
            v105 = *(v103 + v35);
            v106 = *(v103 + *(v2 + 34));
            v107 = v102[2];
            if (v106 <= v105)
            {
              v108 = v105;
            }

            else
            {
              v108 = *(v103 + *(v2 + 34));
            }

            if (v106 < v105)
            {
              v105 = v106;
            }

            v40 = *(v104 + 2 * *(v107 + 2 * v105) + 2 * v108);
          }

          if (*(v2 + 35) != v36)
          {
            v109 = (v186 + 192 * *(v2 + 37));
            v110 = v109[15];
            v111 = v109[16];
            v112 = *(v111 + *(v2 + 35));
            v113 = v109[17];
            v114 = *(v111 + v36);
            if (v112 <= v114)
            {
              v115 = v114;
            }

            else
            {
              v115 = *(v111 + *(v2 + 35));
            }

            if (v112 < v114)
            {
              v114 = v112;
            }

            v40 += *(v110 + 2 * *(v113 + 2 * v114) + 2 * v115);
          }

          v116 = *(v2 + 40);
          v203 = v40;
          if (v40 >= v116 + 100)
          {
LABEL_221:
            v50 = 0;
          }

          else
          {
            if (v40 < v116)
            {
              *(v2 + 40) = v40;
            }

            v50 = 1;
          }

          if (*(v4 + 2556) == 1 && v198 && *v193 != 35)
          {
            v117 = v193[1];
            if (v117 == 114)
            {
              v118 = *(v4 + 2984);
            }

            else
            {
              if (v117 != 108)
              {
                goto LABEL_230;
              }

              v118 = *(v4 + 2976);
            }

            if (v189[*(v118 + 25)] != *(v27 + *(v118 + 11)))
            {
LABEL_230:
              v20 = v196;
LABEL_231:
              v17 = v203;
              goto LABEL_188;
            }
          }

          v49 = 0;
        }

LABEL_94:
        v201 = v19;
        v51 = v16;
        v52 = v2;
        if (v24 != **(a1 + 56))
        {
          goto LABEL_95;
        }

        v58 = v191 >= v197 ? v197 : v191;
        if (!*v30)
        {
          goto LABEL_95;
        }

        v59 = v193 + 3;
        while (1)
        {
          v60 = v27;
          v49 += (*(v30 + 16))(a1, *v59, *(v27 + *(v30 + 11)), v30, v31);
          if (!v50 && v49 >= v58)
          {
            break;
          }

          v61 = *(v30 + 32);
          v30 += 32;
          ++v59;
          v31 += 24;
          v27 = v60;
          if (!v61)
          {
            goto LABEL_95;
          }
        }

        v27 = v60;
        if (*v30)
        {
          v2 = v52;
          v14 = v194;
          v4 = v195;
          v16 = v51;
        }

        else
        {
LABEL_95:
          v2 = v52;
          v53 = *(v52 + 8);
          if (!v53)
          {
            v4 = v195;
LABEL_112:
            v16 = v51;
LABEL_113:
            if (*(v4 + 2620))
            {
              v62 = *(a1 + 849);
              if (!*(a1 + 849))
              {
                goto LABEL_128;
              }

              v63 = 0;
              v64 = 0;
              v65 = 0;
              do
              {
                v66 = *(a1 + 832);
                if (*(v66 + v63 + 8) == v205 && *(v66 + v63 + 40) == v207)
                {
                  break;
                }

                if (*(v4 + 2636) <= 0x63u)
                {
                  v67 = v66 + v63;
                  v68 = *(v67 + 16);
                  if (v68)
                  {
                    if (*(v67 + 40) == v207)
                    {
                      v69 = v27;
                      IsNextUnit = uselect_IsNextUnit(v68, v205);
                      v27 = v69;
                      if (IsNextUnit)
                      {
                        v65 = 1;
                      }

                      v62 = *(a1 + 849);
                    }
                  }
                }

                ++v64;
                v63 += 112;
              }

              while (v64 < v62);
              v16 = v51;
              if (v62 == v64)
              {
                if (v65)
                {
                  v49 += *(v4 + 2636) * *(v4 + 2620) / 0x64u;
                  goto LABEL_129;
                }

LABEL_128:
                v49 += *(v4 + 2620);
              }
            }

LABEL_129:
            v72 = v204;
            v71 = v205;
            v73 = v207;
            v75 = v199;
            v74 = HIDWORD(v199);
            v17 = v203;
            if (*(v4 + 2560))
            {
              v75 = v203;
              v74 = v50;
            }

            v76 = *v207;
            v77 = *(*v207 + 3008);
            if (v77 && ((*(v76 + 3392) & 0x80000000) == 0 || (*(v76 + 3396) & 0x80000000) == 0))
            {
              v192 = *(v27 + *(v77 + 11));
            }

            v78 = *(a1 + 880);
            if (v78)
            {
              while (*(v78 + 16) <= v49)
              {
                v78 = *(v78 + 48);
                if (!v78)
                {
                  goto LABEL_138;
                }
              }

              if (v204 >= v188)
              {
                if (v16 == v78)
                {
                  v81 = 0;
                }

                else
                {
                  v81 = v78;
                }

                if (v16)
                {
                  v80 = *(v78 + 40);
                  v82 = *(v16 + 40);
                  if (v82)
                  {
                    *(v82 + 48) = 0;
                    v79 = v16;
                    v16 = v82;
                  }

                  else
                  {
                    v79 = v16;
                    v16 = 0;
                  }

                  goto LABEL_146;
                }
              }

              else
              {
                v79 = *(a1 + 864) + 56 * v204;
                v80 = *(v78 + 40);
LABEL_145:
                v72 = v204 + 1;
                v81 = v78;
                if (v79)
                {
LABEL_146:
                  *v79 = v71;
                  *(v79 + 4) = 0;
                  *(v79 + 8) = v73;
                  *(v79 + 16) = v49;
                  *(v79 + 20) = 0;
                  *(v79 + 24) = v75;
                  *(v79 + 28) = v74;
                  *(v79 + 32) = 0;
                  *(v79 + 36) = v192;
                  *(v79 + 37) = 0;
                  *(v79 + 39) = 0;
                  *(v79 + 40) = v80;
                  *(v79 + 48) = v81;
                  if (v80)
                  {
                    *(v80 + 48) = v79;
                    if (v81)
                    {
                      goto LABEL_148;
                    }

LABEL_158:
                    v16 = v79;
                  }

                  else
                  {
                    *(a1 + 880) = v79;
                    v83 = *(v4 + 2568);
                    v84 = v83 + v49;
                    v12 = v83 == -1;
                    v85 = v197;
                    if (!v12)
                    {
                      v85 = v84;
                    }

                    v197 = v85;
                    if (!v81)
                    {
                      goto LABEL_158;
                    }

LABEL_148:
                    *(v81 + 40) = v79;
                  }

                  if (v72 >= v188 && v16)
                  {
                    v191 = *(v16 + 16);
                  }
                }
              }
            }

            else
            {
LABEL_138:
              if (v204 < v188)
              {
                v78 = 0;
                v79 = *(a1 + 864) + 56 * v204;
                v80 = v16;
                goto LABEL_145;
              }

              if (v16 && v49 < *(v16 + 16))
              {
                *v16 = v205;
                *(v16 + 4) = 0;
                *(v16 + 8) = v73;
                *(v16 + 16) = v49;
                *(v16 + 20) = 0;
                *(v16 + 24) = v75;
                *(v16 + 28) = v74;
                *(v16 + 32) = 0;
                *(v16 + 36) = v192;
                *(v16 + 37) = 0;
                v191 = v49;
                *(v16 + 39) = 0;
              }
            }

            v204 = v72;
            v199 = __PAIR64__(v74, v75);
            if (v50 && *(v4 + 2560))
            {
              v86 = v202;
              v87 = &v219[7 * v202];
              *(v87 + 4) = v49;
              *v87 = v205;
              v88 = v207;
              v87[1] = v207;
              *(v87 + 6) = v203;
              *(v87 + 7) = 1;
              v89 = *(*v88 + 3008);
              v20 = v196;
              if (v89)
              {
                *(v87 + 36) = *(v27 + *(v89 + 11));
              }

              v14 = v194;
              if (v202)
              {
                v90 = &v219[7 * v202];
                do
                {
                  v91 = &v219[7 * (v86 - 1)];
                  v92 = *(v91 + 6);
                  v93 = *(v90 + 6);
                  if (v92 <= v93 && (v92 != v93 || *(v91 + 4) <= *(v90 + 4)))
                  {
                    break;
                  }

                  v94 = *(v91 + 1);
                  v208 = *v91;
                  v209 = v94;
                  v210 = *(v91 + 2);
                  *&v211 = v91[6];
                  v96 = *(v90 + 1);
                  v95 = *(v90 + 2);
                  v97 = *v90;
                  v91[6] = v90[6];
                  *(v91 + 1) = v96;
                  *(v91 + 2) = v95;
                  *v91 = v97;
                  v98 = v209;
                  *v90 = v208;
                  *(v90 + 1) = v98;
                  *(v90 + 2) = v210;
                  --v86;
                  v90[6] = v211;
                  v90 -= 7;
                }

                while (v86);
              }

              if (v202 >= 0x14u)
              {
                v18 = v202;
              }

              else
              {
                v18 = (v202 + 1);
              }
            }

            else
            {
              v14 = v194;
              v18 = v202;
              v20 = v196;
            }

            goto LABEL_187;
          }

          v4 = v195;
          if (v207 != **(a1 + 56))
          {
            goto LABEL_112;
          }

          v54 = *v53;
          v16 = v51;
          if (v54)
          {
            v55 = (v53 + 1);
            v56 = (v53 + 101);
            while (1)
            {
              v57 = *v55++;
              if (v57 == v205)
              {
                break;
              }

              ++v56;
              if (!--v54)
              {
                goto LABEL_179;
              }
            }

            LODWORD(v54) = *v56;
          }

LABEL_179:
          v49 += 100 * *(a1 + 916) * v54;
          if (v50)
          {
            goto LABEL_113;
          }

          if (v49 < v191 && v49 < v197)
          {
            goto LABEL_113;
          }

          v14 = v194;
        }

        v18 = v202;
        v20 = v196;
        v17 = v203;
LABEL_187:
        v19 = v201;
LABEL_188:
        if (++v19 >= v206)
        {
          goto LABEL_254;
        }
      }
    }

    v152 = 0;
    v153 = 0;
    v171 = *(a1 + 856);
    v172 = *(a1 + 40);
    v173 = v171 + 3;
    v174 = v14;
    v175 = v190;
    while (1)
    {
      if (v152 > v188 && v153 > v151)
      {
        goto LABEL_340;
      }

      v176 = v175;
      if (v14)
      {
        v176 = *v174;
      }

      v177 = *(a1 + 936);
      if (!v177 || **(a1 + 56) != v207 || *(v177 + v176) != 255)
      {
        v178 = *(v207 + 160) + v176 * *(v207 + 168);
        v179 = v172[375];
        if (v179)
        {
          v180 = *(v178 + v179[11]);
          if (v180 == 255)
          {
            goto LABEL_335;
          }
        }

        else
        {
          v180 = *(v178 + MEMORY[0xB]);
        }

        if (*(v173 + v179[25]) == (v179[24] & (v180 >> v179[12])) && *(v173 + *(v172[377] + 25)) == (*(v172[377] + 24) & (*(v178 + *(v172[377] + 11)) >> *(v172[377] + 12))))
        {
          ++v152;
          v181 = *(v171 + 1);
          if (v181 == 114)
          {
            if (*(v173 + *(v172[378] + 25)) != 3)
            {
              goto LABEL_330;
            }
          }

          else if (v181 != 108 || *(v173 + *(v172[378] + 25)) != 1)
          {
LABEL_330:
            v182 = (*(v207 + 176) + v176 * *(v207 + 184));
            v183 = *v182;
            v184 = *(v182 + 4);
            if (*(v169 + 29) == v183 && *(v169 + 33) == v184)
            {
              ++v153;
            }
          }
        }
      }

LABEL_335:
      ++v175;
      ++v174;
      if (!--v170)
      {
        goto LABEL_340;
      }
    }
  }

  if (v119 == 2)
  {
    v148 = *(a1 + 888);
    if (!*(v148 + 29))
    {
      goto LABEL_34;
    }

    v149 = v188;
    v150 = v206;
    v151 = v188 >> 1;
    if (v206)
    {
      v152 = 0;
      v153 = 0;
      v154 = *(a1 + 856);
      v155 = *(a1 + 40);
      v156 = v154 + 3;
      v157 = v14;
      v158 = v190;
      while (1)
      {
        if (v152 > v188 && v153 > v151)
        {
          goto LABEL_340;
        }

        v159 = v158;
        if (v14)
        {
          v159 = *v157;
        }

        v160 = *(a1 + 936);
        if (!v160 || **(a1 + 56) != v207 || *(v160 + v159) != 255)
        {
          v161 = *(v207 + 160) + v159 * *(v207 + 168);
          v162 = *(v155 + 3000);
          if (v162)
          {
            v163 = *(v161 + v162[11]);
            if (v163 == 255)
            {
              goto LABEL_307;
            }
          }

          else
          {
            v163 = *(v161 + MEMORY[0xB]);
          }

          if (*(v156 + v162[25]) == (v162[24] & (v163 >> v162[12])))
          {
            ++v152;
            v164 = *(v154 + 1);
            if (v164 == 114)
            {
              if (*(v156 + *(*(v155 + 3024) + 25)) != 3)
              {
                goto LABEL_302;
              }
            }

            else if (v164 != 108 || *(v156 + *(*(v155 + 3024) + 25)) != 1)
            {
LABEL_302:
              v165 = (*(v207 + 176) + v159 * *(v207 + 184));
              v166 = *v165;
              v167 = *(v165 + 4);
              if (*(v148 + 29) == v166 && *(v148 + 33) == v167)
              {
                ++v153;
              }
            }
          }
        }

LABEL_307:
        ++v158;
        ++v157;
        if (!--v150)
        {
          goto LABEL_340;
        }
      }
    }

    goto LABEL_339;
  }

  if (v119 != 1)
  {
LABEL_34:
    v198 = 0;
    v187 = 0;
    goto LABEL_35;
  }

  if (v206)
  {
    v120 = 0;
    v121 = *(a1 + 40);
    v122 = *(a1 + 856);
    v123 = *(a1 + 936);
    v124 = 1;
    v125 = v14;
    v126 = v190;
    while (1)
    {
      v127 = v126;
      if (v14)
      {
        v127 = *v125;
      }

      if (v123 && **(a1 + 56) == v207 && *(v123 + v127) == 255)
      {
        goto LABEL_250;
      }

      v128 = *(v207 + 160) + v127 * *(v207 + 168);
      v129 = v121[375];
      if (v129)
      {
        if (*(v128 + *(v129 + 11)) == 255)
        {
          goto LABEL_250;
        }
      }

      v130 = *(v122 + 1);
      if (v130 == 114)
      {
        break;
      }

      if (v130 == 108)
      {
        v131 = v121[372];
        goto LABEL_248;
      }

LABEL_250:
      if (v124 < v206)
      {
        ++v126;
        ++v124;
        ++v125;
        if (v120 <= v188)
        {
          continue;
        }
      }

      v187 = 0;
      v198 = v120 > v188;
      goto LABEL_35;
    }

    v131 = v121[373];
LABEL_248:
    if (*(v122 + 3 + *(v131 + 25)) == *(v128 + *(v131 + 11)))
    {
      ++v120;
    }

    goto LABEL_250;
  }

LABEL_253:
  v204 = 0;
  LOWORD(v18) = 0;
  v16 = 0;
  v197 = -1;
LABEL_254:
  v132 = *(v4 + 2568);
  if (v132 != -1)
  {
    v133 = *(v4 + 2572);
    if (v133 == -1)
    {
LABEL_266:
      if (v204 >= 2 && v16)
      {
        while (*(v16 + 16) > v197)
        {
          v16 = *(v16 + 40);
          *(v16 + 48) = 0;
          result = (v204 - 1);
          if (v204 >= 3)
          {
            --v204;
            if (v16)
            {
              continue;
            }
          }

          goto LABEL_273;
        }
      }

      goto LABEL_272;
    }

    v218 = 0;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    v210 = 0u;
    v211 = 0u;
    v208 = 0u;
    v209 = 0u;
    for (i = *(a1 + 880); i; i = *(i + 48))
    {
      v135 = (v132 - v197 + *(i + 16)) / 0x9C4;
      if (v135 >= 0x27)
      {
        v135 = 39;
      }

      ++*(&v208 + v135);
    }

    v136 = 0;
    v137 = 0;
    v138 = 2500;
    while (1)
    {
      v137 += *(&v208 + v136);
      if (v138 > v132 - v137 * v133)
      {
        break;
      }

      ++v136;
      v138 += 2500;
      if (v136 == 40)
      {
        goto LABEL_272;
      }
    }

    if (v136 < 0x27)
    {
      v197 = v197 - v132 + v138;
      goto LABEL_266;
    }
  }

LABEL_272:
  result = v204;
LABEL_273:
  if (*(v4 + 2560))
  {
    v140 = v18 == 0;
  }

  else
  {
    v140 = 1;
  }

  if (!v140)
  {
    v141 = result + v18;
    v142 = v18;
    v143 = 56 * v188;
    v144 = v220;
    while (*(v144 - 2) < *(v2 + 40) + 100)
    {
      *v144 = 1;
      v145 = *(a1 + 864) + v143;
      v146 = *v144;
      v147 = *(v144 - 1);
      *v145 = *(v144 - 2);
      *(v145 + 16) = v147;
      *(v145 + 32) = v146;
      *(v145 + 40) = v16;
      *(v145 + 48) = 0;
      if (v16)
      {
        *(v16 + 48) = v145;
      }

      v144 += 14;
      result = (result + 1);
      v143 += 56;
      v16 = v145;
      if (!--v142)
      {
        return v141;
      }
    }
  }

  return result;
}

uint64_t tmp_GetFirstContextPhone(void *a1, int a2, void *a3)
{
  result = 0;
  v5 = a1[111];
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        return *(a1[5] + 2496);
      }

      return result;
    }

    v11 = *(a1[107] + 1);
    v7 = a1[5];
    v8 = v11 == 108;
    v9 = (v7 + 28264);
    v10 = 28256;
  }

  else
  {
    if (!a2)
    {
      return *(v5 + 28);
    }

    if (a2 != 1)
    {
      return result;
    }

    v6 = *(a1[107] + 1);
    v7 = a1[5];
    v8 = v6 == 108;
    v9 = (v7 + 28248);
    v10 = 28240;
  }

  v12 = (v7 + v10);
  if (!v8)
  {
    v12 = v9;
  }

  v13 = *v12;
  if (!*v12)
  {
    return 0;
  }

  v14 = *v13;
  if (!*v13)
  {
    return 0;
  }

  v15 = *(v5 + 28);
  v16 = v13 + 1;
  while (*v14 != v15)
  {
    v17 = *v16++;
    v14 = v17;
    if (!v17)
    {
      return 0;
    }
  }

  *a3 = v14 + 1;
  return v14[1];
}

uint64_t presearch_IsCarryingRequired(uint64_t a1, int a2, int a3)
{
  if (a2 == 1)
  {
    v3 = *(a1 + 849);
    if (v3 == *(a1 + 908) >> 1)
    {
      if (*(a1 + 849))
      {
        v4 = (*(a1 + 832) + 58);
        while (1)
        {
          v5 = *v4;
          v4 += 112;
          if (v5)
          {
            break;
          }

          if (!--v3)
          {
            return 1;
          }
        }

        return 0;
      }

      return 1;
    }
  }

  else if (a3 == *(a1 + 908) >> 1)
  {
    v6 = *(a1 + 880);
    if (v6)
    {
      while (!*(v6 + 20))
      {
        v6 = *(v6 + 48);
        if (!v6)
        {
          return 1;
        }
      }

      return 0;
    }

    return 1;
  }

  return 0;
}

uint64_t presearch_GetCarryCandidate(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 58))
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a2 + 40);
  v6 = *(a2 + 32);
  if (a3 == 1)
  {
    result = *(*(v5 + 272) + 4 * v6);
    if (result != -1)
    {
      v7 = *(a1 + 849);
      if (*(a1 + 849))
      {
        v8 = *(a1 + 832);
        if (*(v8 + 40) == v5)
        {
          for (i = (v8 + 40); *(i - 2) != result || *i != v5; i += 14)
          {
            if (!--v7)
            {
              return result;
            }
          }
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  else
  {
    v10 = *(a1 + 40);
    result = *(*(v5 + 192) + v6 * *(v5 + 200));
    if (*(v10 + 2696))
    {
      result &= 0x3FFFFFFFu;
      if (result == 0x3FFFFFFF)
      {
        return 0xFFFFFFFFLL;
      }
    }

    else if (result == -1)
    {
      return result;
    }

    v11 = *(a1 + 880);
    if (v11)
    {
      if (*(v11 + 8) == v5)
      {
        while (*v11 != result || *(v11 + 8) != v5)
        {
          v11 = *(v11 + 48);
          if (!v11)
          {
            return result;
          }
        }
      }

      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t presearch_GetIdRange(uint64_t result, uint64_t a2, int a3, _DWORD *a4, _DWORD *a5)
{
  v5 = *(result + 40);
  v6 = *(result + 856);
  v7 = *(v5 + 2497);
  LODWORD(v5) = *(v5 + 2496);
  v8 = v7 - v5;
  v9 = (v8 + 2);
  v10 = a3 - v5 + (*v6 - v5) * v9;
  if (v6[1] == 114)
  {
    v10 += (v8 + 1) * v9 + (v8 + 1);
  }

  v11 = *(a2 + 120);
  *a4 = *(*(a2 + 128) + 4 * v10);
  *a5 = *(v11 + 2 * v10);
  return result;
}

uint64_t presearch_CalculateUnitCost(uint64_t result, unsigned int *a2)
{
  v3 = *a2;
  if (v3 == -1 || (v4 = result, v5 = *(*(result + 40) + 2968), v6 = *(result + 896), v7 = *(result + 856), v8 = *(a2 + 1), (v9 = *(result + 936)) != 0) && v8 == **(result + 56) && *(v9 + v3) == 255)
  {
    v14 = -1;
LABEL_10:
    a2[4] = v14;
    return result;
  }

  a2[4] = 0;
  v10 = v8[20] + v3 * *(v8 + 168);
  v11 = *v8;
  v12 = *(*v8 + 3000);
  if (!v12 || *(v10 + *(v12 + 11)) != 255)
  {
    if (v8 == **(result + 56))
    {
      v13 = *v5;
      if (*v5)
      {
        v13 = 0;
        v15 = (v7 + 3);
        do
        {
          if (v13 >= a2[14])
          {
            break;
          }

          if (!*(v6 + 16))
          {
            result = (*(v5 + 16))(v4, *v15, *(v10 + *(v5 + 11)), v5, v6);
            v13 = a2[4] + result;
            a2[4] = v13;
          }

          v16 = *(v5 + 32);
          v5 += 32;
          ++v15;
          v6 += 24;
        }

        while (v16);
        v11 = *v8;
      }
    }

    else
    {
      v13 = 0;
    }

    v17 = *(v11 + 3008);
    if (v17 && ((*(v11 + 3392) & 0x80000000) == 0 || (*(v11 + 3396) & 0x80000000) == 0))
    {
      *(a2 + 36) = *(v10 + *(v17 + 11));
    }

    v18 = *(*(v4 + 888) + 8);
    if (v18)
    {
      if (v8 == **(v4 + 56) && v13 < a2[14])
      {
        v19 = *v18;
        if (v19)
        {
          v20 = (v18 + 1);
          v21 = (v18 + 101);
          while (1)
          {
            v22 = *v20++;
            if (v22 == v3)
            {
              break;
            }

            ++v21;
            if (!--v19)
            {
              goto LABEL_32;
            }
          }

          LODWORD(v19) = *v21;
        }

LABEL_32:
        v14 = v13 + 100 * *(v4 + 916) * v19;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t presearch_RetainCandidate(uint64_t result, uint64_t a2)
{
  v2 = (result + 880);
  v3 = *(result + 880);
  if (v3)
  {
    v4 = *(result + 880);
    while (*(v4 + 16) <= *(a2 + 16))
    {
      v4 = *(v4 + 48);
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    v5 = (v4 + 40);
  }

  else
  {
LABEL_5:
    v4 = 0;
    v5 = (a2 + 64);
  }

  v6 = *(result + 40);
  v7 = *v5;
  v8 = *(a2 + 80);
  if (v8 < *(a2 + 61))
  {
    v9 = *(a2 + 72);
    if (v9)
    {
      v10 = *(v9 + 40);
      *(a2 + 72) = v10;
      if (v10)
      {
        *(v10 + 48) = 0;
      }

      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
LABEL_31:
      v14 = *(a2 + 16);
      v15 = *(a2 + 32);
      *v9 = *a2;
      *(v9 + 16) = v14;
      *(v9 + 32) = v15;
      *(v9 + 40) = v7;
      *(v9 + 48) = v4;
      v16 = (v7 + 48);
      if (!v7)
      {
        v16 = (result + 880);
      }

      *v16 = v9;
      v17 = (a2 + 64);
      if (v4)
      {
        v18 = (v4 + 40);
      }

      else
      {
        v18 = (a2 + 64);
      }

      *v18 = v9;
      v19 = *(a2 + 80);
      v20 = v19 + 1;
      *(a2 + 80) = v19 + 1;
      if (!v7 && *(a2 + 60) != 1)
      {
        v21 = *(v6 + 2568);
        if (v21 != -1)
        {
          v22 = *(v9 + 16) + v21;
          *(a2 + 84) = v22;
          if (*v2)
          {
            if (*(v6 + 2568) != -1 && v19 >= 1)
            {
              v23 = *v17;
              if (*v17)
              {
                if (*(v23 + 16) >= v22)
                {
                  do
                  {
                    v24 = *(v23 + 40);
                    *(v23 + 16) = -1;
                    v25 = *(a2 + 72);
                    if (v25)
                    {
                      *(v25 + 48) = v23;
                      *(*(*(a2 + 72) + 48) + 48) = 0;
                      v26 = *(a2 + 72);
                      v27 = *(v26 + 48);
                      *(v27 + 40) = v26;
                      *(a2 + 72) = v27;
                    }

                    else
                    {
                      *(a2 + 72) = v23;
                      *(v23 + 48) = 0;
                      *(*(a2 + 72) + 40) = 0;
                    }

                    *(a2 + 64) = v24;
                    *(v24 + 48) = 0;
                    v28 = *(a2 + 80);
                    v20 = v28 - 1;
                    *(a2 + 80) = v28 - 1;
                    if (v28 < 3)
                    {
                      break;
                    }

                    if (!v24)
                    {
                      break;
                    }

                    v23 = v24;
                  }

                  while (*(v24 + 16) >= v22);
                }
              }
            }
          }

          if (v22 < *(a2 + 56))
          {
            *(a2 + 56) = v22;
          }
        }
      }

      if (v20 >= *(a2 + 61))
      {
        v29 = *(*(a2 + 64) + 16);
        *(a2 + 88) = v29;
        *(a2 + 56) = v29;
      }

      return result;
    }
  }

  v11 = *(a2 + 64);
  if (v11)
  {
    v9 = *(a2 + 64);
    while (*(v9 + 20) != *(a2 + 20))
    {
      v9 = *(v9 + 40);
      if (!v9)
      {
        return result;
      }
    }

    if (*(v9 + 16) > *(a2 + 16))
    {
      if (v7 == v9)
      {
        v7 = *(v7 + 40);
      }

      if (v4 == v9)
      {
        v4 = *(v9 + 48);
      }

      if (v3 == v9)
      {
        *v2 = *(v9 + 48);
      }

      if (v11 == v9)
      {
        *(a2 + 64) = *(v11 + 40);
      }

      v12 = *(v9 + 40);
      v13 = *(v9 + 48);
      if (v12)
      {
        *(v12 + 48) = v13;
      }

      if (v13)
      {
        *(v13 + 40) = v12;
      }

      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(a2 + 80) = v8 - 1;
      goto LABEL_31;
    }
  }

  return result;
}

uint64_t uselect_CascadingFlatSearch(uint64_t a1, unsigned int a2, int a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 888);
  v6 = *(a1 + 40);
  v37 = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  DWORD2(v33) = -1;
  *(&v35 + 4) = -1;
  BYTE12(v33) = a3;
  v7 = *(a1 + 908);
  v8 = *(a1 + 864);
  if (*(a1 + 908))
  {
    v9 = 0;
    v10 = 1;
    do
    {
      if (v9)
      {
        *(v8 + v9 + 40) = v8 + v9 - 56;
      }

      else
      {
        *(v8 + 40) = 0;
      }

      v11 = v8 + v9;
      v12 = v8 + v9 + 56;
      if (v10 >= v7)
      {
        v12 = 0;
      }

      *(v11 + 48) = v12;
      *(v11 + 16) = -1;
      v9 += 56;
      ++v10;
    }

    while (56 * v7 != v9);
  }

  *&v34 = 0;
  *(&v34 + 1) = v8 + 56 * v7 - 56;
  *(a1 + 880) = 0;
  v28 = v6;
  if (*(v6 + 2684))
  {
    LODWORD(v7) = v7 >> (*(v6 + 2688) != 0);
  }

  BYTE13(v33) = v7;
  v13 = *(v5 + 24);
  if (v13 != -1)
  {
    uselect_splitGID(a1, v13 & 0x7FFFFFFF, &v30 + 1, &v30);
    if (v30 >= *(*(&v30 + 1) + 108))
    {
      log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19028, "%s%d", "ID", *(v5 + 24));
      *(v5 + 24) = -1;
    }

    else
    {
      BYTE4(v31) = 0;
      presearch_CalculateUnitCost(a1, &v30);
      presearch_RetainCandidate(a1, &v30);
      if ((*(v5 + 24) & 0x80000000) == 0)
      {
        return v35;
      }
    }
  }

  v36 = 0;
  if (a3 != 1)
  {
    memset(v38, 0, sizeof(v38));
    if (a2 <= 3)
    {
      v15 = v35;
      v16 = BYTE13(v33);
      if (v35 < BYTE13(v33))
      {
        v17 = a2;
        do
        {
          BYTE4(v31) = v17;
          FirstContextPhone = tmp_GetFirstContextPhone(a1, v17, &v36);
          v19 = v36;
          if (FirstContextPhone)
          {
            do
            {
              v20 = FirstContextPhone;
              if (!*(v38 + FirstContextPhone))
              {
                *(v38 + FirstContextPhone) = 1;
                *(&v30 + 1) = **(a1 + 56);
                presearch_GetIdRange(a1, *(&v30 + 1), FirstContextPhone, &v37, &v37 + 1);
                v21 = HIDWORD(v37);
                if (HIDWORD(v37))
                {
                  v22 = v37;
                  do
                  {
                    LODWORD(v30) = v22;
                    presearch_CalculateUnitCost(a1, &v30);
                    if (v31 < DWORD2(v33))
                    {
                      presearch_RetainCandidate(a1, &v30);
                    }

                    ++v22;
                    --v21;
                  }

                  while (v21);
                }
              }

              if (v17 == 3)
              {
                if (*(*(a1 + 40) + 2497) <= v20)
                {
                  break;
                }

                LOBYTE(FirstContextPhone) = v20 + 1;
              }

              else
              {
                if (!v17)
                {
                  break;
                }

                v23 = *++v19;
                LOBYTE(FirstContextPhone) = v23;
              }
            }

            while (FirstContextPhone);
            v15 = v35;
            v16 = BYTE13(v33);
          }

          v36 = v19;
          if (v17 > 2u)
          {
            break;
          }

          ++v17;
        }

        while (v15 < v16);
      }
    }
  }

  if (!a2 && presearch_IsCarryingRequired(a1, a3, v35))
  {
    BYTE4(v31) = 4;
    if (a3 == 2)
    {
      v24 = *(a1 + 832);
      v25 = *(a1 + 849);
    }

    else
    {
      if (a3 != 1)
      {
        return v35;
      }

      v24 = *(a1 + 840);
      v25 = *(a1 + 850);
      v26 = *(v28 + 2568);
      if (v26 != -1)
      {
        DWORD1(v35) = **(a1 + 832) + v26;
      }
    }

    if (v24)
    {
      BYTE13(v33) = *(a1 + 908);
      DWORD2(v33) = DWORD1(v35);
      if (v25)
      {
        v27 = v25;
        do
        {
          *(&v30 + 1) = *(v24 + 40);
          LODWORD(v30) = presearch_GetCarryCandidate(a1, v24, a3);
          presearch_CalculateUnitCost(a1, &v30);
          if (v31 < DWORD2(v33))
          {
            presearch_RetainCandidate(a1, &v30);
          }

          v24 += 112;
          --v27;
        }

        while (v27);
      }
    }
  }

  return v35;
}

uint64_t uselect_CartLookup(uint64_t *a1, unsigned __int16 **a2, int a3, uint64_t *a4, int a5, _BYTE *a6, _BYTE *a7, _BYTE *a8, _BYTE *a9)
{
  v9 = (a4[4] + a5);
  if (*v9 == 35)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2 * *(a4[24] + a5);
  }

  v11 = *a4;
  if (a5 < 1)
  {
    v12 = (v11 + 2179);
  }

  else
  {
    v12 = (v11 + *(v9 - 1) + 2144);
  }

  v13 = *v12;
  if (*(a4 + 5) - 2 <= a5)
  {
    v14 = (v11 + 2179);
  }

  else
  {
    v14 = (v11 + v9[1] + 2144);
  }

  v15 = 0;
  v16 = *v14;
  if (a9)
  {
    v17 = a8 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2;
  }

  do
  {
    v19 = **a2;
    if (v19 != 0xFFFF)
    {
      v21 = *a1;
      v20 = *a2;
      while (1)
      {
        v22 = v20[2];
        v23 = *(v21 + v22);
        if (v23 > 0xFC)
        {
          break;
        }

        if (v23 == 250)
        {
          v24 = v15;
          goto LABEL_27;
        }

        v24 = v10;
        if (v23 != 251)
        {
          goto LABEL_25;
        }

LABEL_27:
        v25 = (a1[1] + 2 * v22);
        v26 = *v25;
        v27 = v25[1];
        if (v26 >= v27)
        {
LABEL_31:
          v19 = v20[1];
        }

        else
        {
          v28 = (a1[2] + v26);
          v29 = v27 - v26;
          while (1)
          {
            v30 = *v28++;
            if (v30 == v24)
            {
              break;
            }

            if (!--v29)
            {
              goto LABEL_31;
            }
          }
        }

        v20 = &(*a2)[3 * v19];
        v19 = *v20;
        if (v19 == 0xFFFF)
        {
          goto LABEL_33;
        }
      }

      v24 = v16;
      if (v23 == 254)
      {
        goto LABEL_27;
      }

      v24 = v13;
      if (v23 == 253)
      {
        goto LABEL_27;
      }

LABEL_25:
      v24 = *(a4[*(v21 + v22) + 2] + a5);
      goto LABEL_27;
    }

    v20 = *a2;
LABEL_33:
    if (a3)
    {
      v31 = *(v20 + 5);
      if (v15)
      {
        *a9 = v31;
        LODWORD(v20) = *(v20 + 4) + *(*a4 + 2584) * v31 / 0x64u;
LABEL_38:
        *a8 = v20;
        goto LABEL_41;
      }

      *a7 = v31;
      *a6 = *(v20 + 4) + *(*a4 + 2584) * v31 / 0x64u;
    }

    else
    {
      if (v15)
      {
        *a9 = *(v20 + 5);
        LOBYTE(v20) = *(v20 + 4);
        goto LABEL_38;
      }

      *a6 = *(v20 + 4);
      *a7 = *(v20 + 5);
    }

LABEL_41:
    ++v15;
  }

  while (v15 != v18);
  return 0;
}

uint64_t featextract_ObjReopen(uint64_t *a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 415, 104) & 0x80000000) != 0)
  {
    return 2364547080;
  }

  paramc_ParamSetStr(*(a1[2] + 40), "voiceaddon", "");

  return gryphon_featextract_loadVoice(a1);
}

uint64_t featextract_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 415, 104) & 0x80000000) != 0)
  {
    return 2364547080;
  }

  v7 = *(a1 + 48);
  v8 = *(v7 + 64);
  v9 = (*(v7 + 152))();
  v10 = v8(a3, a4, 207, "application/x-realspeak-markers-pp;version=4.0", v9, 1, a1 + 56);
  if ((v10 & 0x80000000) != 0)
  {
    v11 = v10;
LABEL_7:
    featextract_closeStreams(*(a1 + 48), a1 + 56);
    return v11;
  }

  v11 = (*(*(a1 + 48) + 64))(a3, a4, 207, "application/x-realspeak-feat-vector", 0, 1, a1 + 72);
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_7;
  }

  return v11;
}

uint64_t featextract_Process(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v25 = 0;
  v9 = -1930420218;
  result = safeh_HandleCheck(a1, a2, 415, 104);
  if ((result & 0x80000000) != 0)
  {
    return 2364547080;
  }

  *a5 = 1;
  if (a1[7])
  {
    v11 = a1[12];
    bzero(v11, 0xE48uLL);
    v12 = a1[4];
    *v11 = v12;
    if (v12)
    {
      v9 = usextract_ProcessStart(a1[2], "FEATEXTRACT", a1[5], a3, a4, v11, &v25);
      if ((v9 & 0x80000000) == 0)
      {
        v13 = *(v11 + 5);
        if (v13 > 1)
        {
          Layers = usextract_allocateLayers(a1[2], "FEATEXTRACT", v11, (v13 + 4 * *(v11 + 7)));
          if (Layers < 0)
          {
            v9 = Layers;
            v14 = 0;
            v15 = 1;
          }

          else
          {
            v24 = usextract_Process(a1[2], "FEATEXTRACT", a1[5], a3, a4, v11);
            if ((v24 & 0x80000000) == 0)
            {
              v24 = featextract_logFeatures(a1[2], v11);
              if ((v24 & 0x80000000) == 0)
              {
                featextract_adjustSilAudioOrder(v11);
                v24 = (*(a1[6] + 104))(a1[7], a1[8], v11[439], (32 * *(v11 + 880)));
                if ((v24 & 0x80000000) == 0)
                {
                  v24 = featextract_writeFeatures(a1[2], a1[6], (a1 + 7), a1[4], v11);
                }
              }
            }

            v9 = v24;
            v15 = 0;
            v14 = 0;
          }
        }

        else
        {
          if (!v25)
          {
            *a5 = 0;
LABEL_28:
            v20 = usextract_ProcessEnd(a1[2], "FEATEXTRACT", v11);
            if (v9 > -1 && v20 < 0)
            {
              v9 = v20;
            }

LABEL_33:
            LODWORD(result) = (*(a1[5] + 64))(a3, a4);
            if (v9 > -1 && result < 0)
            {
              return result;
            }

            else
            {
              return v9;
            }
          }

          if (a1[7])
          {
            if (*(v11 + 880))
            {
              v9 = (*(a1[6] + 104))();
              if (v9 < 0)
              {
                log_OutPublic(*(a1[2] + 32), "FEATEXTRACT", 55008, "%s%s%s%x", "contentType", "application/x-realspeak-markers-pp;version=4.0", "lhError", v9);
              }
            }
          }

          v14 = 0;
          v15 = 1;
          *a5 = 1;
        }

LABEL_15:
        if (v25)
        {
          v16 = featextract_closeStreams(a1[6], (a1 + 7));
          if (v9 > -1 && v16 < 0)
          {
            v9 = v16;
          }
        }

        if ((v15 & 1) == 0)
        {
          v18 = usextract_freeLayers(a1[2], "FEATEXTRACT", v11);
          if (v9 > -1 && v18 < 0)
          {
            v9 = v18;
          }
        }

        if (v14)
        {
          goto LABEL_33;
        }

        goto LABEL_28;
      }

      log_OutPublic(*(a1[2] + 32), "FEATEXTRACT", 55005, "%s%x", "lhError", v9);
    }

    v15 = 1;
    v14 = 1;
    goto LABEL_15;
  }

  return result;
}

uint64_t featextract_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 415, 104) & 0x80000000) != 0)
  {
    return 2364547080;
  }

  v3 = *(a1 + 48);

  return featextract_closeStreams(v3, a1 + 56);
}

uint64_t featextract_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2364547073;
  }

  result = 0;
  *a2 = &IFeatextract;
  return result;
}

uint64_t featextract_ClassOpen(_WORD *a1, int a2, uint64_t a3)
{
  v5 = 0;
  if (!a3)
  {
    return 2364547079;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  result = InitRsrcFunction(a1, a2, &v5);
  if ((result & 0x80000000) == 0)
  {
    *a3 = v5;
    *(a3 + 8) = 416;
  }

  return result;
}

uint64_t featextract_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v17 = 0;
  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v20);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v10 = heap_Calloc(*(v20 + 8), 1, 104);
  if (!v10 || (v11 = v10, *v10 = a3, v10[1] = a4, v12 = v20, v10[2] = v20, v10[3] = a1, v10[5] = 0, v10[6] = 0, v10[4] = 0, v13 = heap_Calloc(*(v12 + 8), 1, 3656), (v11[12] = v13) == 0))
  {
    Object = 2364547082;
    log_OutPublic(*(v20 + 32), "FEATEXTRACT", 31000, 0);
    return Object;
  }

  paramc_ParamSetStr(*(v11[2] + 40), "voiceaddon", "");
  Voice = gryphon_featextract_loadVoice(v11);
  if ((Voice & 0x80000000) != 0 || (Voice = objc_GetObject(*(v20 + 48), "LINGDB", &v18), (Voice & 0x80000000) != 0))
  {
    Object = Voice;
    goto LABEL_14;
  }

  v11[5] = *(v18 + 8);
  Object = objc_GetObject(*(v20 + 48), "SYNTHSTREAM", &v19);
  if ((Object & 0x80000000) != 0)
  {
LABEL_14:
    featextract_ObjClose(*a5, *(a5 + 8));
    *a5 = 0;
    *(a5 + 8) = 0;
    return Object;
  }

  v11[6] = *(v19 + 8);
  *(v11 + 22) = 0;
  if ((paramc_ParamGetUInt(*(v20 + 40), "usewordorthography", &v17) & 0x80000000) == 0 && v17 == 1)
  {
    *(v11 + 22) = 1;
  }

  *a5 = v11;
  *(a5 + 8) = 415;
  return Object;
}

uint64_t featextract_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 415, 104);
  if ((result & 0x80000000) != 0)
  {
    return 2364547080;
  }

  if (a1)
  {
    if (a1[5])
    {
      objc_ReleaseObject(*(a1[2] + 48), "LINGDB");
    }

    if (a1[6])
    {
      objc_ReleaseObject(*(a1[2] + 48), "SYNTHSTREAM");
    }

    paramc_ParamSetStr(*(a1[2] + 40), "uselectrawdataversion", "");
    paramc_ParamSetStr(*(a1[2] + 40), "uselectreductionversion", "");
    v4 = a1[4];
    if (v4)
    {
      v5 = a1[3];
      if (!v5 || (v6 = *(v5 + 48)) == 0)
      {
        v6 = *(a1[2] + 48);
      }

      objc_ReleaseObject(v6, v4 + 152);
    }

    v7 = a1[12];
    if (v7)
    {
      heap_Free(*(a1[2] + 8), v7);
    }

    heap_Free(*(a1[2] + 8), a1);
    return 0;
  }

  return result;
}

uint64_t Downsample__Resize(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 32) == a2)
    {
      return 1;
    }

    LODWORD(v3) = *(result + 36);
    if (v3 >= a2)
    {
      *(result + 32) = a2;
      if ((v3 & 0x80000000) == 0)
      {
        v13 = *(result + 16);
        v14 = -1;
        do
        {
          *v13++ = (v14 + 2) % (*(result + 32) + 1);
          v3 = *(result + 36);
          ++v14;
        }

        while (v14 < v3);
      }

      if ((v3 & 0x40000000) == 0)
      {
        v15 = 0;
        v16 = *(result + 24);
        do
        {
          *(v16 + 4 * v15) = v15 % (*(result + 32) + 1);
          v8 = v15++ <= 2 * *(result + 36);
        }

        while (v8);
      }

      v12 = *(result + 32) + 1;
      goto LABEL_25;
    }

    *(result + 36) = a2;
    result = heap_Realloc(*(result + 48), *result, 2 * a2 + 2);
    if (result)
    {
      *v2 = result;
      result = heap_Realloc(*(v2 + 48), *(v2 + 8), (4 * *(v2 + 36) + 4));
      if (result)
      {
        *(v2 + 8) = result;
        result = heap_Realloc(*(v2 + 48), *(v2 + 16), (4 * *(v2 + 36) + 4));
        if (result)
        {
          *(v2 + 16) = result;
          result = heap_Realloc(*(v2 + 48), *(v2 + 24), (8 * *(v2 + 36) + 8));
          if (result)
          {
            *(v2 + 24) = result;
            LODWORD(v4) = *(v2 + 36);
            if ((v4 & 0x80000000) == 0)
            {
              v5 = *(v2 + 16);
              v6 = -1;
              do
              {
                *v5++ = (v6 + 2) % (*(v2 + 32) + 1);
                v4 = *(v2 + 36);
                ++v6;
              }

              while (v6 < v4);
            }

            if ((v4 & 0x40000000) == 0)
            {
              v7 = 0;
              do
              {
                *(result + 4 * v7) = v7 % (*(v2 + 32) + 1);
                LODWORD(v4) = *(v2 + 36);
                v8 = v7++ <= 2 * v4;
              }

              while (v8);
            }

            v9 = *(v2 + 32) + 1;
            if (v9 <= v4)
            {
              v10 = *v2;
              v11 = *(v2 + 8);
              do
              {
                *(v10 + 2 * v9) = 0;
                *(v11 + 4 * v9++) = 0;
                LODWORD(v4) = *(v2 + 36);
              }

              while (v9 <= v4);
            }

            *(v2 + 32) = v4;
            v12 = v4 + 1;
LABEL_25:
            *(v2 + 44) = v12 >> 1;
            return 1;
          }
        }
      }
    }

    *(v2 + 32) = 0;
  }

  return result;
}

uint64_t *Downsample__Remove(uint64_t *result)
{
  if (result)
  {
    v1 = result;
    result = *result;
    if (result)
    {
      v2 = result[6];
      Downsample__Empty(result);
      result = heap_Free(v2, *v1);
      *v1 = 0;
    }
  }

  return result;
}

uint64_t *Downsample__Empty(uint64_t *result)
{
  if (result)
  {
    v1 = result;
    if (*result)
    {
      result = heap_Free(result[6], *result);
    }

    *v1 = 0;
    v2 = v1[1];
    if (v2)
    {
      result = heap_Free(v1[6], v2);
    }

    v1[1] = 0;
    v3 = v1[2];
    if (v3)
    {
      result = heap_Free(v1[6], v3);
    }

    v4 = v1[3];
    v1[2] = 0;
    if (v4)
    {
      result = heap_Free(v1[6], v4);
    }

    v1[3] = 0;
    v1[4] = 0;
    v1[5] = 0;
  }

  return result;
}

uint64_t *Downsample__Generate(uint64_t a1, unsigned int a2)
{
  if (a2 > 3)
  {
    return 0;
  }

  v4 = heap_Alloc(a1, 56);
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *v4 = 0u;
  *(v4 + 48) = a1;
  v14 = v4;
  if (a2 <= 1)
  {
    if (!a2)
    {
      if (Downsample__Resize(v4, 7u))
      {
        v6 = 0;
        v7 = *v5;
        do
        {
          *(v7 + v6 * 2) = CoeffCorrFast2[v6];
          ++v6;
        }

        while (v6 != 8);
        return v5;
      }

      goto LABEL_20;
    }

    if (Downsample__Resize(v4, 0x19u))
    {
      v10 = 0;
      v11 = *v5;
      do
      {
        *(v11 + v10 * 2) = CoeffStage1Fast[v10];
        ++v10;
      }

      while (v10 != 26);
      return v5;
    }

    goto LABEL_20;
  }

  if (a2 != 2)
  {
    if (Downsample__Resize(v4, 3u))
    {
      v12 = *v5;
      *v12 = 1223358211;
      *(v12 + 4) = 18666;
      return v5;
    }

    goto LABEL_20;
  }

  if (!Downsample__Resize(v4, 5u))
  {
LABEL_20:
    Downsample__Remove(&v14);
    return 0;
  }

  v8 = 0;
  v9 = *v5;
  do
  {
    *(v9 + v8 * 2) = CoeffStage2[v8];
    ++v8;
  }

  while (v8 != 5);
  return v5;
}

uint64_t Downsample__InterpolateBetweenTwoSamples(uint64_t a1, int a2)
{
  *(*(a1 + 8) + 4 * *(a1 + 40)) = a2;
  if (*(a1 + 44) < 1)
  {
    v4 = 0;
  }

  else
  {
    v3 = 0;
    LODWORD(v4) = 0;
    v5 = *(a1 + 40) + 1;
    v6 = 4 * (v5 + *(a1 + 32));
    do
    {
      v7 = fxd_S32MultIntS32FractS16(*(*(a1 + 8) + 4 * *(*(a1 + 24) + 4 * (v5 + v3))) + *(*(a1 + 8) + 4 * *(*(a1 + 24) + v6)), *(*a1 + 2 * v3));
      v4 = fxd_S32SatAddS32S32(v4, v7);
      ++v3;
      v6 -= 4;
    }

    while (v3 < *(a1 + 44));
  }

  *(a1 + 40) = *(*(a1 + 16) + 4 * *(a1 + 40));
  return v4;
}

uint64_t Downsample__PrepareToDownsample(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 44);
  if (v3 >= 1)
  {
    v4 = a3 - 2 * v3 + 1;
    v5 = *(result + 8);
    v6 = *(result + 16);
    v7 = (2 * v3) | 1;
    do
    {
      if ((v4 & 0x80000000) != 0)
      {
        v8 = 0;
      }

      else
      {
        v8 = *(*(a2 + 16) + 8 * v4);
      }

      v4 += 2;
      *(v5 + 4 * *(result + 40)) = v8;
      *(result + 40) = *(v6 + 4 * *(result + 40));
      --v7;
    }

    while (v7 > 2);
  }

  return result;
}

uint64_t Downsample__VectorNC(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  if (a1 && a2 && a3 && a5 >= a4 && *(a2 + 8) - 1 >= a5)
  {
    v10 = a5 - a4 + 1;
    if (*(*a3 + 8) < v10 >> 1)
    {
      Vect__Resize(*a3, v10 >> 1);
    }

    Downsample__PrepareToDownsample(a1, a2, a4);
    v11 = *(a2 + 16);
    v12 = (v11 + 8 * a4);
    v13 = *(*a3 + 16);
    v14 = *(a1 + 44);
    v15 = (v11 + 8 * (a4 + 2 * v14 - 1));
    v16 = *(*a3 + 8) - v14;
    if (v16 >= 1)
    {
      v17 = v16 + 1;
      while (1)
      {
        *v13 = *v12;
        v18 = *v13 + Downsample__InterpolateBetweenTwoSamples(a1, *v15);
        *v13 = v18;
        v19 = 65534;
        if (v18 > 65534)
        {
          goto LABEL_13;
        }

        if (v18 <= -65537)
        {
          break;
        }

LABEL_14:
        ++v13;
        v12 += 2;
        v15 += 4;
        if (--v17 <= 1)
        {
          v14 = *(a1 + 44);
          goto LABEL_16;
        }
      }

      v19 = -65536;
LABEL_13:
      *v13 = v19;
      goto LABEL_14;
    }

LABEL_16:
    v20 = *(a2 + 8);
    if (2 * v14 + a5 <= v20)
    {
      if (v14 >= 1)
      {
        v26 = v14 + 1;
        do
        {
          v27 = *v12;
          v12 += 2;
          *v13 = v27;
          LODWORD(v27) = *v15;
          v15 += 4;
          *v13++ += Downsample__InterpolateBetweenTwoSamples(a1, v27);
          --v26;
        }

        while (v26 > 1);
      }
    }

    else
    {
      if ((v20 + ~a5) >= 1)
      {
        v21 = v20 - a5;
        do
        {
          v22 = *v12;
          v12 += 2;
          *v13 = v22;
          LODWORD(v22) = *v15;
          v15 += 4;
          *v13++ += Downsample__InterpolateBetweenTwoSamples(a1, v22);
          --v21;
        }

        while (v21 > 1);
        v14 = *(a1 + 44);
        v20 = *(a2 + 8);
      }

      v23 = v14 + a5 - v20;
      if (v23 >= 1)
      {
        v24 = v23 + 1;
        do
        {
          v25 = *v12;
          v12 += 2;
          *v13 = v25;
          *v13++ += Downsample__InterpolateBetweenTwoSamples(a1, 0);
          --v24;
        }

        while (v24 > 1);
      }
    }

    v28 = *(*a3 + 8);
    if (v28 >= 1)
    {
      v29 = *(*a3 + 16);
      v30 = v28 + 1;
      do
      {
        *v29 /= 2;
        v29 += 2;
        --v30;
      }

      while (v30 > 1);
    }
  }

  return 1;
}

uint64_t Vect__Clear(uint64_t result)
{
  if (result)
  {
    v1 = result;
    *(result + 8) = 0;
    if (*(result + 4))
    {
      v2 = 0;
      do
      {
        v3 = *(v1 + 16);
        result = fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::InitMatcher();
        *(v3 + 8 * v2++) = result;
      }

      while (v2 < *(v1 + 4));
    }
  }

  return result;
}

uint64_t Vect__Reset(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 4))
    {
      v2 = 0;
      do
      {
        v3 = *(v1 + 16);
        result = fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::InitMatcher();
        *(v3 + 8 * v2++) = result;
      }

      while (v2 < *(v1 + 4));
    }
  }

  return result;
}

uint64_t Vect__Create(uint64_t a1, unsigned int a2)
{
  v4 = heap_Alloc(a1, 32);
  v5 = v4;
  if (v4)
  {
    *(v4 + 8) = 0;
    *(v4 + 4) = a2;
    *v4 = 22050;
    *(v4 + 24) = a1;
    v6 = heap_Alloc(a1, 8 * a2);
    *(v5 + 16) = v6;
    if (v6)
    {
      *(v5 + 8) = 0;
      if (*(v5 + 4))
      {
        v7 = 0;
        do
        {
          v8 = *(v5 + 16);
          *(v8 + 8 * v7++) = fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::InitMatcher();
        }

        while (v7 < *(v5 + 4));
      }
    }

    else
    {
      heap_Free(*(v5 + 24), v5);
      return 0;
    }
  }

  return v5;
}

uint64_t *Vect__Remove(uint64_t *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (*result)
    {
      v3 = *(v2 + 16);
      v4 = *(v2 + 24);
      if (v3)
      {
        heap_Free(*(v2 + 24), v3);
        v2 = *v1;
      }

      *(v2 + 16) = 0;
      result = heap_Free(v4, *v1);
      *v1 = 0;
    }
  }

  return result;
}

uint64_t Vect__Resize(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 4) >= a2)
    {
      return 1;
    }

    else
    {
      *(result + 4) = a2;
      v3 = heap_Realloc(*(result + 24), *(result + 16), 8 * a2);
      if (v3)
      {
        v4 = v3;
        result = 1;
      }

      else
      {
        *(v2 + 4) = 0;
        *(v2 + 8) = 0;
        v5 = *(v2 + 16);
        if (v5)
        {
          heap_Free(*(v2 + 24), v5);
        }

        v4 = 0;
        result = 0;
      }

      *(v2 + 16) = v4;
    }
  }

  return result;
}

uint64_t WSOLA__SetWindowOverlap(unsigned __int16 *a1, int a2)
{
  a1[1] = a2;
  v3 = 274877907 * *a1 * a2;
  v4 = (v3 >> 63) + (SHIDWORD(v3) >> 6);
  a1[2] = v4;
  a1[8] = 2 * v4;
  a1[9] = v4;
  v5 = a1[6];
  v6 = 2 * v5 - v4;
  if (v5 < v4)
  {
    v6 = a1[6];
  }

  a1[16] = v6;
  v7 = 2 * (v5 + (2 * v4)) - v4 + v6;
  *(a1 + 7) = v7;
  v8 = *(a1 + 7);
  if (!v8 || v7 <= *(v8 + 8) || (v9 = 2164269066, Vect__Resize(v8, v7) == 1) && Vect__Resize(*(a1 + 8), *(a1 + 7)) == 1 && Vect__Resize(*(a1 + 9), *(a1 + 7) >> 1) == 1 && Vect__Resize(*(a1 + 10), *(a1 + 7) >> 1) == 1 && Vect__Resize(*(a1 + 11), *(a1 + 7) >> 2) == 1 && Vect__Resize(*(a1 + 12), *(a1 + 7) >> 2) == 1)
  {
    v10 = *(a1 + 5);
    if (v10)
    {
      v11 = a1[2];
      v12 = heap_Realloc(*(a1 + 41), v10, 2 * (v11 & 0x7FFFFFFF));
      if (!v12)
      {
        return 2164269066;
      }

      *(a1 + 5) = v12;
      if (v11 >= 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 411774 * (v11 & 0x7FFFFFFF);
        do
        {
          v16 = (0x10000 - fxd_S32CosS32(v14 / a1[2])) >> 1;
          if (v16 >= 0xFFFF)
          {
            LOWORD(v16) = -1;
          }

          *(*(a1 + 5) + v13) = v16;
          v14 += 205887;
          v13 += 2;
        }

        while (v15 != v14);
      }
    }

    return 0;
  }

  return v9;
}

_WORD *WSOLA__SetTimeScaleFactor(_WORD *result, int a2)
{
  if (a2 >= 1)
  {
    v2 = result[9];
    v3 = v2 * a2 / 100;
    result[10] = v3;
    result[7] = v3 / v2;
    result[17] = result[14] - v3;
  }

  return result;
}

unsigned __int16 *WSOLA__Create(uint64_t a1, __int16 a2)
{
  v4 = *(a1 + 8);
  v5 = heap_Calloc(v4, 336, 1);
  v6 = v5;
  v26 = v5;
  if (v5)
  {
    *(v5 + 320) = a1;
    *(v5 + 328) = v4;
    *v5 = a2;
    *(v5 + 312) = 0;
    if ((WSOLA__SetWindowOverlap(v5, 10) & 0x80000000) == 0)
    {
      *(v6 + 2) = 4;
      v7 = 33555 * (*v6 >> 1);
      v8 = v7 >> 22;
      v6[6] = *v6 / 0xFAu;
      v9 = v6[9];
      if ((v7 >> 22) >= v9)
      {
        LOWORD(v8) = 2 * (v7 >> 22) - v9;
      }

      v6[16] = v8;
      v10 = 2 * (v6[8] + (v7 >> 22)) - v6[2] + v8;
      *(v6 + 7) = v10;
      v11 = *(v6 + 7);
      if (v11 && v10 > *(v11 + 8))
      {
        if (Vect__Resize(v11, v10) != 1 || Vect__Resize(*(v6 + 8), *(v6 + 7)) != 1 || Vect__Resize(*(v6 + 9), *(v6 + 7) >> 1) != 1 || Vect__Resize(*(v6 + 10), *(v6 + 7) >> 1) != 1 || Vect__Resize(*(v6 + 11), *(v6 + 7) >> 2) != 1 || Vect__Resize(*(v6 + 12), *(v6 + 7) >> 2) != 1)
        {
          goto LABEL_24;
        }

        v10 = *(v6 + 7);
      }

      v12 = Vect__Create(v4, v10);
      *(v6 + 7) = v12;
      if (v12)
      {
        v13 = Vect__Create(v4, *(v6 + 7));
        *(v6 + 8) = v13;
        if (v13)
        {
          v14 = Vect__Create(v4, *(v6 + 7) >> 1);
          *(v6 + 9) = v14;
          if (v14)
          {
            v15 = Vect__Create(v4, *(v6 + 7) >> 1);
            *(v6 + 10) = v15;
            if (v15)
            {
              v16 = Vect__Create(v4, *(v6 + 7) >> 2);
              *(v6 + 11) = v16;
              if (v16)
              {
                v17 = Vect__Create(v4, *(v6 + 7) >> 2);
                *(v6 + 12) = v17;
                if (v17)
                {
                  Vect__Clear(*(v6 + 7));
                  Vect__Clear(*(v6 + 8));
                  Vect__Clear(*(v6 + 9));
                  Vect__Clear(*(v6 + 10));
                  Vect__Clear(*(v6 + 11));
                  Vect__Clear(*(v6 + 12));
                  v18 = *(v6 + 7);
                  v19 = *(v6 + 8);
                  *(*(v6 + 7) + 8) = v18;
                  *(v19 + 8) = v18;
                  v20 = *(v6 + 10);
                  *(*(v6 + 9) + 8) = v18 >> 1;
                  *(v20 + 8) = v18 >> 1;
                  v18 >>= 2;
                  v21 = *(v6 + 12);
                  *(*(v6 + 11) + 8) = v18;
                  *(v21 + 8) = v18;
                  v22 = Downsample__Generate(v4, 0);
                  *(v6 + 15) = v22;
                  if (v22)
                  {
                    v23 = heap_Calloc(v4, 128, 4);
                    *(v6 + 18) = v23;
                    if (v23)
                    {
                      if ((WSOLA__CreateOLAWindow(v6) & 0x80000000) == 0)
                      {
                        v24 = v6[9];
                        v6[10] = v24;
                        v6[7] = 1;
                        v6[17] = v6[14] - v24;
                        WSOLA__Initialise(v6);
                        return v6;
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

LABEL_24:
    WSOLA__Remove(&v26);
    return v26;
  }

  return v6;
}

void *WSOLA__Remove(uint64_t *a1)
{
  v2 = *(*a1 + 328);
  Vect__Remove((*a1 + 56));
  Vect__Remove((*a1 + 64));
  Vect__Remove((*a1 + 72));
  Vect__Remove((*a1 + 80));
  Vect__Remove((*a1 + 88));
  Vect__Remove((*a1 + 96));
  v3 = *a1;
  if (*(*a1 + 40))
  {
    heap_Free(v2, *(*a1 + 40));
    v3 = *a1;
  }

  if (*(v3 + 120))
  {
    Downsample__Remove((v3 + 120));
    v3 = *a1;
  }

  if (*(v3 + 144))
  {
    heap_Free(v2, *(v3 + 144));
    v3 = *a1;
  }

  result = heap_Free(v2, v3);
  *a1 = 0;
  return result;
}

uint64_t WSOLA__CreateOLAWindow(uint64_t a1)
{
  v2 = *(a1 + 4);
  v3 = heap_Alloc(*(a1 + 328), 4 * (v2 & 0x7FFFFFFF));
  *(a1 + 40) = v3;
  if (!v3)
  {
    return 2164269066;
  }

  if (v2 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 4 * (v2 & 0x7FFFFFFF);
    do
    {
      v7 = (0x10000 - fxd_S32CosS32(v5 / *(a1 + 4))) >> 1;
      if (v7 >= 0xFFFF)
      {
        LOWORD(v7) = -1;
      }

      *(*(a1 + 40) + v4) = v7;
      v5 += 205887;
      v4 += 2;
    }

    while (v6 != v4);
  }

  return 0;
}

double WSOLA__Initialise(uint64_t a1)
{
  v1 = a1;
  Vect__Reset(*(a1 + 56));
  Vect__Reset(*(v1 + 64));
  Vect__Reset(*(v1 + 72));
  Vect__Reset(*(v1 + 80));
  Vect__Reset(*(v1 + 88));
  Vect__Reset(*(v1 + 96));
  *(v1 + 304) = -1;
  *(v1 + 312) = 1;
  *(v1 + 112) = 0;
  *(v1 + 104) = 0;
  *(v1 + 281) = 0;
  v2 = *(v1 + 144);
  result = 0.0;
  v2[30] = 0u;
  v2[31] = 0u;
  v2[28] = 0u;
  v2[29] = 0u;
  v2[26] = 0u;
  v2[27] = 0u;
  v2[24] = 0u;
  v2[25] = 0u;
  v2[22] = 0u;
  v2[23] = 0u;
  v2[20] = 0u;
  v2[21] = 0u;
  v2[18] = 0u;
  v2[19] = 0u;
  v2[16] = 0u;
  v2[17] = 0u;
  v2[14] = 0u;
  v2[15] = 0u;
  v2[12] = 0u;
  v2[13] = 0u;
  v2[10] = 0u;
  v2[11] = 0u;
  v2[8] = 0u;
  v2[9] = 0u;
  v2[6] = 0u;
  v2[7] = 0u;
  v2[4] = 0u;
  v2[5] = 0u;
  v2[2] = 0u;
  v2[3] = 0u;
  *v2 = 0u;
  v2[1] = 0u;
  *(v1 + 152) = 0u;
  v1 += 152;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 16) = 0u;
  *(v1 - 130) = 0;
  *(v1 - 100) = 0;
  return result;
}

uint64_t WSOLA__GetOutputLength(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  if ((a2 & 0x80) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 152 + a2) == 2;
  *a3 = v3;
  if (v3)
  {
    *(a1 + 152 + a2) = 0;
  }

  return *(*(a1 + 144) + 4 * a2);
}

uint64_t WSOLA__TimeScaleInputBuffer(uint64_t a1, char a2, __int16 *a3, int a4, _WORD *a5, int *a6, int a7, char *a8, _BYTE *a9)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v13 = *a8;
  v14 = *(a1 + 312);
  if (v14)
  {
    v11 = &a3[*(a1 + 108)];
    v9 = &a5[*(a1 + 112)];
  }

  v15 = a1 + 152;
  v187 = a1 + 56;
  v16 = (a1 + 308);
  v182 = (a1 + 72);
  v181 = (a1 + 88);
  v17 = a1 + 22;
  v169 = (a7 + 100);
  v170 = v13 | 0x80;
  v176 = a1 + 152;
  v174 = *a8;
  v173 = (a1 + 308);
  v180 = a1 + 22;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
LABEL_4:
          while (v14 <= 2)
          {
            switch(v14)
            {
              case 0:
                WSOLA__Initialise(a1);
                *(a1 + 312) = 1;
LABEL_14:
                if (*(a1 + 128) == a7)
                {
                  v19 = *(a1 + 28);
LABEL_35:
                  v33 = *(a1 + 52);
                  *(a1 + 52) = 1 - v33;
                  *(a1 + 48) = 1 - v33;
                  *(a1 + 50) = v33;
                  *(a1 + 304) = 0;
                  v34 = *(*(v187 + 8 * (1 - v33)) + 16);
                  *(a1 + 136) = v34;
                  memmove(v34, (*(*(v187 + 8 * v33) + 16) + 8 * (v19 - *(a1 + 34))), 8 * *(a1 + 34));
                  *(a1 + 136) += 8 * *(a1 + 34);
                  *(a1 + 312) = 2;
LABEL_36:
                  v35 = *v16;
                  if (*v16 == -1)
                  {
                    v35 = *(a1 + 34);
                  }

                  v36 = *(a1 + 108);
                  v37 = *(a1 + 28);
                  v38 = v37 + v36 - v35;
                  if (v38 >= v10)
                  {
                    v39 = v10;
                  }

                  else
                  {
                    v39 = v37 + v36 - v35;
                  }

                  v40 = v39 - v36 + v35;
                  *(a1 + 308) = v40;
                  if (v39 - v36 >= 1)
                  {
                    v41 = *(a1 + 136);
                    v42 = v39 - v36 + 1;
                    do
                    {
                      *(v41 + 4) = v13;
                      v43 = *v11++;
                      *v41 = v43;
                      v41 += 8;
                      --v42;
                    }

                    while (v42 > 1);
                    *(a1 + 136) = v41;
                  }

                  *(a1 + 108) = v39;
                  if (v38 >= v10)
                  {
                    if ((a2 & 1) == 0)
                    {
                      *(a1 + 108) = 0;
                      *a9 = 0;
                      *(a1 + 280) = v13;
                      return 0;
                    }

                    if (v40 < v37)
                    {
                      v44 = *(a1 + 136);
                      v45 = v36 + v37 - v35 - v39;
                      do
                      {
                        *(v44 + 4) = v170;
                        *v44 = 0;
                        v44 += 8;
                        --v45;
                      }

                      while (v45);
                      *(a1 + 136) = v44;
                    }
                  }

                  *(a1 + 280) = v13;
                  *v16 = 0x3FFFFFFFFLL;
                  goto LABEL_52;
                }

                *(a1 + 128) = a7;
                if (a7)
                {
                  v19 = *(a1 + 28);
                  if (v169 < 1)
                  {
                    goto LABEL_35;
                  }

                  v20 = *(a1 + 18);
                  v21 = v20 * v169 / 100;
                  *(a1 + 20) = v21;
                  *(a1 + 14) = v21 / v20;
                  v22 = v19 - v21;
                }

                else
                {
                  v32 = *(a1 + 18);
                  *(a1 + 20) = v32;
                  *(a1 + 14) = 1;
                  v19 = *(a1 + 28);
                  v22 = v19 - v32;
                }

                *(a1 + 34) = v22;
                goto LABEL_35;
              case 1:
                goto LABEL_14;
              case 2:
                goto LABEL_36;
            }
          }

          if (v14 != 3)
          {
            break;
          }

LABEL_52:
          if (*(a1 + 128))
          {
            v178 = *(a1 + 32);
            Downsample__VectorNC(*(a1 + 120), *(a1 + 56), v182, 0, *(*(a1 + 56) + 8) - 1);
            Downsample__VectorNC(*(a1 + 120), *(a1 + 64), (a1 + 80), 0, *(*(a1 + 64) + 8) - 1);
            Downsample__VectorNC(*(a1 + 120), *(a1 + 72), v181, 0, *(*(a1 + 72) + 8) - 1);
            Downsample__VectorNC(*(a1 + 120), *(a1 + 80), (a1 + 96), 0, *(*(a1 + 80) + 8) - 1);
            v46 = *(a1 + 32);
            v47 = *(a1 + 12);
            v48 = __OFSUB__(v46, v47);
            v49 = v46 - v47;
            if (v49 < 0 != v48)
            {
              v49 += 3;
            }

            v50 = v49 >> 2;
            v51 = (v49 >> 2) & ~(v49 >> 31);
            v52 = v51 + ((v47 + ((v47 & 0x8000) >> 15)) >> 1);
            v53 = *(*(a1 + 88) + 8);
            v54 = v53;
            v55 = v53 - 1;
            if (v54 <= v52)
            {
              v56 = v55;
            }

            else
            {
              v56 = v52;
            }

            v57 = *(a1 + 50);
            v58 = *(a1 + 18);
            v179 = v9;
            if (v51 >= v56)
            {
              v75 = *(a1 + 18);
            }

            else
            {
              v59 = 0;
              v60 = 0;
              v61 = *(v17 + 2 * v57);
              v48 = __OFADD__(v61, v58);
              v62 = v61 + v58;
              if (v62 < 0 != v48)
              {
                v62 += 3;
              }

              v184 = v62 >> 2;
              v63 = v51;
              v64 = v56;
              do
              {
                v65 = 0;
                v66 = 0;
                *v188 = 0;
                v67 = *(a1 + 16);
                if (v67 >= 4)
                {
                  v68 = v67 >> 2;
                  v69 = (*(v181[*(a1 + 50)] + 16) + 8 * v184);
                  v70 = (*(v181[*(a1 + 48)] + 16) + 8 * v63);
                  do
                  {
                    v72 = *v70;
                    v70 += 2;
                    v71 = v72;
                    v73 = *v69;
                    v69 += 2;
                    fxd_S64SatAddS32S32(&v188[1], v188, v73 * v71);
                    v74 = v68--;
                  }

                  while (v74 > 1);
                  v65 = v188[0];
                  v66 = v188[1];
                }

                if (v66 > v60 || v66 == v60 && v65 > v59)
                {
                  v60 = v66;
                  v59 = v65;
                  LOWORD(v50) = v63;
                }

                ++v63;
              }

              while (v63 != v64);
              LOWORD(v57) = *(a1 + 50);
              v75 = *(a1 + 18);
              v17 = v180;
            }

            v77 = 2 * v50;
            v78 = (2 * v50 - 3) & ~((2 * v50 - 3) >> 31);
            v79 = v77 + 3;
            v80 = *(*v182 + 8);
            v81 = v80;
            v82 = v80 - 1;
            if (v81 <= v79)
            {
              v79 = v82;
            }

            if (v78 < v79)
            {
              v83 = 0;
              v84 = 0;
              v85 = *(v17 + 2 * v57);
              v185 = (v85 + v75 + ((v85 + v75) >> 31)) >> 1;
              v86 = v78;
              v87 = v79;
              do
              {
                v88 = 0;
                v89 = 0;
                *v188 = 0;
                v90 = *(a1 + 16);
                if (v90 >= 2)
                {
                  v91 = v90 >> 1;
                  v92 = (*(v182[*(a1 + 50)] + 16) + 8 * v185);
                  v93 = (*(v182[*(a1 + 48)] + 16) + 8 * v86);
                  do
                  {
                    v95 = *v93;
                    v93 += 2;
                    v94 = v95;
                    v96 = *v92;
                    v92 += 2;
                    fxd_S64SatAddS32S32(&v188[1], v188, v96 * v94);
                    v97 = v91--;
                  }

                  while (v97 > 1);
                  v88 = v188[0];
                  v89 = v188[1];
                }

                if (v89 > v84 || v89 == v84 && v88 > v83)
                {
                  v84 = v89;
                  v83 = v88;
                  LOWORD(v78) = v86;
                }

                ++v86;
              }

              while (v86 != v87);
              LOWORD(v57) = *(a1 + 50);
              v75 = *(a1 + 18);
            }

            v98 = (2 * v78 - 3) & ~((2 * v78 - 3) >> 31);
            v99 = 2 * v78 + 3;
            v100 = *(*v187 + 8);
            v101 = v100;
            v102 = v100 - 1;
            if (v101 <= v99)
            {
              v99 = v102;
            }

            if (v98 < v99)
            {
              v103 = 0;
              v104 = 0;
              v183 = v75;
              v186 = *(v180 + 2 * v57);
              v105 = v98;
              v106 = v99;
              do
              {
                *v188 = 0;
                v107 = *(a1 + 16);
                if (v107 < 1)
                {
                  v114 = 0;
                  v115 = 0;
                }

                else
                {
                  v108 = (*(*(v187 + 8 * *(a1 + 50)) + 16) + 8 * v186 + 8 * v183);
                  v109 = (*(*(v187 + 8 * *(a1 + 48)) + 16) + 8 * v105);
                  do
                  {
                    v111 = *v109;
                    v109 += 2;
                    v110 = v111;
                    v112 = *v108;
                    v108 += 2;
                    fxd_S64SatAddS32S32(&v188[1], v188, v112 * v110);
                    v113 = v107--;
                  }

                  while (v113 > 1);
                  v114 = v188[0];
                  v115 = v188[1];
                }

                if (v115 > v104 || v115 == v104 && v114 > v103)
                {
                  v104 = v115;
                  v103 = v114;
                  LOWORD(v98) = v105;
                }

                ++v105;
              }

              while (v105 != v106);
            }

            v76 = v98 + v178 - *(a1 + 32);
            v15 = v176;
            v9 = v179;
            v17 = v180;
            v13 = v174;
            v10 = a4;
            v16 = v173;
          }

          else
          {
            v76 = *(v17 + 2 * *(a1 + 50));
          }

          *(v17 + 2 * *(a1 + 48)) = v76;
          v18 = *(*(v187 + 8 * *(a1 + 50)) + 16) + 8 * *(v17 + 2 * *(a1 + 50)) + 8 * *(a1 + 18);
          *(a1 + 288) = v18;
          *(a1 + 296) = *(*(v187 + 8 * *(a1 + 48)) + 16) + 8 * *(v17 + 2 * *(a1 + 48));
          if (*(a1 + 128))
          {
            v14 = 5;
            *(a1 + 312) = 5;
          }

          else
          {
LABEL_105:
            v116 = *(v18 + 4);
            if (*(a1 + 304) == -1)
            {
              *(a1 + 304) = 0;
            }

            v117 = v116 & 0x7F;
            v118 = *(a1 + 281);
            if (v118 != (v116 & 0x7F))
            {
              if (v117 == 127)
              {
                v119 = 0;
              }

              else
              {
                v119 = v116 & 0x7F;
              }

              v120 = v119 + 1;
              v121 = v119 + 2;
              if (v120 == v118 || v121 == v118)
              {
                goto LABEL_118;
              }

              v123 = v117 - 126;
              if (v117 < 0x7E)
              {
                v123 = v117 + 1;
              }

              if (v123 + 1 == v118)
              {
LABEL_118:
                *(v18 + 4) = v118 | v116 & 0x80;
                v117 = v118;
              }

              else
              {
                if (!*(v15 + v117))
                {
                  *(*(a1 + 144) + 4 * v117) = 0;
                }

                do
                {
                  *(v15 + v118) = 2;
                  v124 = v118 - 127 * ((((v118 - ((517 * v118) >> 16)) >> 1) + ((517 * v118) >> 16)) >> 6);
                  LODWORD(v118) = v124 + 1;
                }

                while (v117 != (v124 + 1));
                *(a1 + 281) = v117;
              }

              *(v15 + v117) = 1;
              v18 = *(a1 + 288);
              v116 = *(v18 + 4);
            }

            *(a1 + 312) = 1;
            if (v116 < 0)
            {
              *a9 = 2;
              *a6 = *(a1 + 112);
              v164 = *(a1 + 281);
              if (v164 != *(a1 + 280))
              {
                do
                {
                  *(v15 + v164) = 2;
                  v164 = v164 - 127 * ((((v164 - ((517 * v164) >> 16)) >> 1) + ((517 * v164) >> 16)) >> 6) + 1;
                  v165 = *(a1 + 280);
                }

                while (v165 != v164);
LABEL_189:
                v164 = v165;
                goto LABEL_190;
              }

              goto LABEL_190;
            }

            v125 = *(a1 + 281);
            if (*(a1 + 281))
            {
              v126 = *a6;
              v127 = *(a1 + 112);
              v128 = *(a1 + 304);
              if (*a6 >= v127 + *(a1 + 4) - v128)
              {
                v126 = v127 + *(a1 + 4) - v128;
              }

              v129 = v126 - v127;
              if (v126 - v127 > 1 && *(v18 + 8 * v129 - 4) != v125)
              {
                v139 = (v18 + 4);
                v131 = v127 - 1;
                v130 = -1;
                v140 = v129;
                while (1)
                {
                  v48 = __OFSUB__(v140--, 1);
                  if (v140 < 0 != v48)
                  {
                    break;
                  }

                  v141 = *v139;
                  v139 += 8;
                  ++v131;
                  ++v130;
                  if (v141 != v125)
                  {
                    *(a1 + 312) = 4;
                    goto LABEL_131;
                  }
                }
              }

              v130 = v129;
              v131 = v126;
LABEL_131:
              *(a1 + 304) = v130 + v128;
              *(*(a1 + 144) + 4 * v125) += v130;
              v132 = v131 - *(a1 + 112);
              if (v132 >= 1)
              {
                v133 = v132 + 1;
                do
                {
                  v134 = *v18;
                  v18 += 8;
                  *v9++ = v134;
                  --v133;
                }

                while (v133 > 1);
              }

              *(a1 + 288) = v18;
              if (v131 < *a6)
              {
                *(a1 + 112) = v131;
                goto LABEL_168;
              }

              *a9 = 1;
              *a6 = v131;
              *a8 = *(a1 + 281);
              *(a1 + 112) = 0;
              if (*(a1 + 304) == *(a1 + 4))
              {
                goto LABEL_192;
              }

              v166 = 4;
LABEL_194:
              *(a1 + 312) = v166;
              return 0;
            }

            v135 = *(a1 + 4);
            v14 = 1;
            if (*(a1 + 4))
            {
              v14 = 1;
              if (*(v18 + 8 * *(a1 + 4) - 4))
              {
                v136 = v18 - 8;
                v137 = -1;
                while (1)
                {
                  v48 = __OFSUB__(v135--, 1);
                  if (v135 < 0 != v48)
                  {
                    goto LABEL_176;
                  }

                  v138 = *(v136 + 12);
                  v136 += 8;
                  ++v137;
                  if (v138)
                  {
                    v14 = 4;
                    *(a1 + 312) = 4;
                    *(a1 + 288) = v136;
                    goto LABEL_175;
                  }
                }
              }
            }
          }
        }

        if (v14 == 5)
        {
          break;
        }

        if (v14 == 4)
        {
          v18 = *(a1 + 288);
          goto LABEL_105;
        }
      }

      v23 = *(a1 + 288);
      v24 = *(v23 + 4);
      if (*(a1 + 304) == -1)
      {
        *(a1 + 304) = 0;
      }

      v25 = v24 & 0x7F;
      v26 = *(a1 + 281);
      if (v26 != (v24 & 0x7F))
      {
        if (v25 == 127)
        {
          v27 = 0;
        }

        else
        {
          v27 = v24 & 0x7F;
        }

        v28 = v27 + 1;
        v29 = v27 + 2;
        if (v28 == v26 || v29 == v26)
        {
          goto LABEL_32;
        }

        v31 = v25 - 126;
        if (v25 < 0x7E)
        {
          v31 = v25 + 1;
        }

        if (v31 + 1 == v26)
        {
LABEL_32:
          *(v23 + 4) = v26 | v24 & 0x80;
          v25 = v26;
        }

        else
        {
          if (!*(v15 + v25))
          {
            *(*(a1 + 144) + 4 * v25) = 0;
          }

          do
          {
            *(v15 + v26) = 2;
            v142 = v26 - 127 * ((((v26 - ((517 * v26) >> 16)) >> 1) + ((517 * v26) >> 16)) >> 6);
            LODWORD(v26) = v142 + 1;
          }

          while (v25 != (v142 + 1));
          *(a1 + 281) = v25;
        }

        *(v15 + v25) = 1;
        v23 = *(a1 + 288);
        v24 = *(v23 + 4);
      }

      *(a1 + 312) = 1;
      if (v24 < 0)
      {
        *a9 = 2;
        *a6 = *(a1 + 112);
        v164 = *(a1 + 281);
        if (v164 != *(a1 + 280))
        {
          do
          {
            *(v15 + v164) = 2;
            v164 = v164 - 127 * ((((v164 - ((517 * v164) >> 16)) >> 1) + ((517 * v164) >> 16)) >> 6) + 1;
            v165 = *(a1 + 280);
          }

          while (v165 != v164);
          goto LABEL_189;
        }

LABEL_190:
        *(v15 + v164) = 2;
        *a8 = *(a1 + 281);
        *(a1 + 112) = 0;
        *(a1 + 312) = 0;
        return 0;
      }

      v143 = *(a1 + 281);
      if (*(a1 + 281))
      {
        break;
      }

      v157 = *(a1 + 4);
      v14 = 1;
      if (*(v23 + 8 * v157 - 4))
      {
        v158 = v23 - 8;
        v137 = -1;
        v159 = 8;
        while (1)
        {
          v48 = __OFSUB__(v157, 1);
          LODWORD(v157) = v157 - 1;
          if (v157 < 0 != v48)
          {
            break;
          }

          v160 = *(v158 + 12);
          v158 += 8;
          v159 -= 8;
          ++v137;
          if (v160)
          {
            v14 = 5;
            *(a1 + 312) = 5;
            v161 = *(a1 + 296) - v159;
            *(a1 + 288) = v158;
            *(a1 + 296) = v161;
LABEL_175:
            *(a1 + 304) += v137;
            goto LABEL_4;
          }
        }

LABEL_176:
        v14 = 1;
      }
    }

    v144 = *(a1 + 304);
    if (*a6 - *(a1 + 112) >= *(a1 + 4) - v144)
    {
      v145 = *(a1 + 4) - v144;
    }

    else
    {
      v145 = *a6 - *(a1 + 112);
    }

    v146 = v145 + v144;
    if (v145 >= 2 && *(v23 + 8 * v145 - 4) != v143)
    {
      v162 = (v23 + 4);
      v147 = v144 - 1;
      while (1)
      {
        v48 = __OFSUB__(v145--, 1);
        if (v145 < 0 != v48)
        {
          break;
        }

        v163 = *v162;
        v162 += 8;
        ++v147;
        if (v163 != v143)
        {
          *(a1 + 312) = 5;
          goto LABEL_159;
        }
      }
    }

    v147 = v146;
LABEL_159:
    *(*(a1 + 144) + 4 * v143) += v147 - v144;
    v148 = *(a1 + 304);
    v149 = *(a1 + 112) + v147 - v148;
    *(a1 + 112) = v149;
    if (v147 > v148)
    {
      v150 = 0;
      v151 = 0;
      v152 = *(a1 + 296);
      v153 = *(a1 + 40) + 2 * v148;
      v154 = v147 - v148;
      do
      {
        v155 = *(v153 + v151 * 2 + 2 * *(a1 + 4));
        v156 = (*(v152 + 2 * v151) >> 16) * *(v153 + v151 * 2) + ((*(v152 + 2 * v151) * *(v153 + v151 * 2)) >> 16) + (*(v23 + 2 * v151) >> 16) * v155 + ((*(v23 + 2 * v151) * v155) >> 16);
        if (v156 <= -32768)
        {
          v156 = -32768;
        }

        if (v156 >= 0x7FFF)
        {
          LOWORD(v156) = 0x7FFF;
        }

        v9[v151++] = v156;
        v150 -= 8;
        --v154;
      }

      while (v154);
      *(a1 + 296) = v152 - v150;
      v23 -= v150;
      v9 = (v9 + v151 * 2);
    }

    *(a1 + 288) = v23;
    *(a1 + 304) = v147;
    if (v149 >= *a6)
    {
      break;
    }

LABEL_168:
    v14 = *(a1 + 312);
    if (v14 == 1)
    {
      *(a1 + 304) = 0;
    }
  }

  *a9 = 1;
  *a6 = *(a1 + 112);
  *a8 = *(a1 + 281);
  *(a1 + 112) = 0;
  if (*(a1 + 304) != *(a1 + 4))
  {
    v166 = 5;
    goto LABEL_194;
  }

LABEL_192:
  *(a1 + 304) = 0;
  return 0;
}

uint64_t WSOLA__rateChange_bet4_approach(uint64_t a1, char a2, __int16 a3, __int16 *a4, int a5, _WORD *a6, int *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = 0;
  v24 = 0;
  v15 = *a7;
  v16 = (a3 - 100);
  v17 = a1 + 152;
  do
  {
    v18 = 1;
    v23 = 1;
    *a7 = v15;
    WSOLA__TimeScaleInputBuffer(a1, a2, a4, a5, a6, a7, v16, &v23, &v24);
    if ((v23 & 0x8000000000000000) == 0 && *(v17 + v23) == 2)
    {
      v18 = 0;
      *(v17 + v23) = 0;
    }

    if (v24 - 1 > 1)
    {
      break;
    }

    v14 += *a7;
    (*(a8 + 104))(a9, a10, a6, (2 * *a7));
  }

  while ((v18 & 1) != 0);
  *a7 = v14;
  return 0;
}

int *fxd_S64SatAddS32S32(int *result, int *a2, int a3)
{
  v4 = result;
  v5 = *a2;
  v6 = *a2 + a3;
  *a2 = v6;
  if (((v5 ^ a3) & 0x80000000) == 0 && (v6 ^ v5) < 0)
  {
    v7 = *result;
    if (v5 < 0)
    {
      result = fxd_S32SatAddS32S32(v7, -1);
      *v4 = result;
      v8 = -*a2;
    }

    else
    {
      result = fxd_S32SatAddS32S32(v7, 1);
      *v4 = result;
      v8 = *a2 & 0x7FFFFFFF;
    }

    goto LABEL_15;
  }

  v9 = *result;
  if (*result >= 1)
  {
    if ((v6 & 0x80000000) == 0)
    {
      return result;
    }

    --*result;
    goto LABEL_13;
  }

  if (v9)
  {
    v10 = v6 < 1;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    *result = v9 + 1;
LABEL_13:
    v8 = *a2 ^ 0x80000000;
LABEL_15:
    *a2 = v8;
  }

  return result;
}

uint64_t fxd_S32CosS32(int a1)
{
  if (a1 >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = -a1;
  }

  if (v1 >= 411774)
  {
    v2 = 411774;
  }

  else
  {
    v2 = v1;
  }

  v3 = v1 - 411774 * ((v1 + 411773 - v2) / 0x6487Eu);
  v4 = v3 - 102944;
  if (v3 > 308830)
  {
    v5 = 411774 - v3;
  }

  else
  {
    v5 = v3;
  }

  if ((v3 - 205888) >= 0x1921F)
  {
    v6 = 1;
  }

  else
  {
    v5 = v3 - 205887;
    v6 = -1;
  }

  v7 = 205887 - v3;
  if (v4 < 0x19220)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v4 < 0x19220)
  {
    v9 = -1;
  }

  else
  {
    v9 = v6;
  }

  v10 = fxd_S32Q1616MultS32S32(v8, v8);
  v11 = fxd_S32Q1616MultS32S32(2328, v10);
  return (fxd_S32Q1616MultS32S32((v11 - 32551), v10) + 0x10000) * v9;
}

uint64_t fxd_S32Q1616MultS32S32(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 0;
  fxd_DPFExtractS32S16S16(a1, &v7 + 1, &v7);
  fxd_DPFExtractS32S16S16(a2, &v6 + 1, &v6);
  v3 = fxd_S32SatAddS32S32(((v6 * v7) >> 14) & 0x1FFFF, 2 * v6 * SHIWORD(v7));
  v4 = fxd_S32SatAddS32S32(v3, 2 * v7 * SHIWORD(v6));
  return fxd_S32SatAddS32S32(v4, (HIWORD(v7) * HIWORD(v6)) << 16);
}

uint64_t Wsola__updateSubunits(uint64_t result, int a2, int a3)
{
  v3 = *(result + 152) + 56 * a2;
  v4 = *(v3 + 46);
  if (*(v3 + 46))
  {
    v5 = *(result + 144);
    v6 = *(result + 160);
    v7 = *(v3 + 44);
    v8 = (v6 + 16 * v7);
    v9 = v8 + 1;
    v10 = v8[1] + a3;
    if (v10 < 0)
    {
      if (v4 == 1)
      {
LABEL_8:
        *v9 = 1;
      }

      else
      {
        v11 = 0;
        v12 = 0;
        result = (v8 + 1);
        while (1)
        {
          v14 = *result;
          result += 16;
          v13 = v14;
          v15 = v14 + v12;
          if (v14 + v12 > 1 - a3 + v11)
          {
            break;
          }

          ++v11;
          v12 = v15;
          if (v4 == v11)
          {
            goto LABEL_8;
          }
        }

        if (v11)
        {
          v16 = vdupq_n_s64(v11 - 1);
          v17 = (v11 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v18 = v8 + 9;
          v19 = xmmword_1C378AEF0;
          v20 = xmmword_1C378AF00;
          result = 1;
          v21 = vdupq_n_s64(4uLL);
          do
          {
            v22 = vmovn_s64(vcgeq_u64(v16, v20));
            if (vuzp1_s16(v22, *v16.i8).u8[0])
            {
              *(v18 - 8) = 1;
            }

            if (vuzp1_s16(v22, *&v16).i8[2])
            {
              *(v18 - 4) = 1;
            }

            if (vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, *&v19))).i32[1])
            {
              *v18 = 1;
              v18[4] = 1;
            }

            v19 = vaddq_s64(v19, v21);
            v20 = vaddq_s64(v20, v21);
            v18 += 16;
            v17 -= 4;
          }

          while (v17);
          v23 = v11;
        }

        else
        {
          v23 = 0;
        }

        *(v6 + 16 * (v23 + v7) + 4) = a3 + v12 + v13 - v11;
      }
    }

    else
    {
      *v9 = v10;
    }

    v24 = 0;
    do
    {
      if (v24)
      {
        v5 += *(v8 - 3);
      }

      *v8 = v5;
      v8 += 4;
      ++v24;
    }

    while (v4 != v24);
  }

  return result;
}

uint64_t Wsola__findNextEventInSubUnit(uint64_t a1, unsigned int a2, int *a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = *a3;
  v4 = *(a1 + 152) + 56 * a2;
  v5 = *(v4 + 46);
  if (*a3 >= v5)
  {
LABEL_6:
    v3 = 0;
    result = 0;
  }

  else
  {
    v6 = (*(a1 + 160) + 16 * (v3 + *(v4 + 44)) + 10);
    while (1)
    {
      v7 = *v6;
      v6 += 8;
      if (v7)
      {
        break;
      }

      if (v5 == ++v3)
      {
        goto LABEL_6;
      }
    }

    result = 1;
  }

  *a3 = v3;
  return result;
}

uint64_t Wsola__Process(uint64_t a1)
{
  v2 = *(a1 + 1088);
  if (*(*(v2 + 160) + 12) != 35)
  {
    v7 = 0;
LABEL_9:
    v8 = *(v2 + 168);
    if (v7 >= v8)
    {
LABEL_28:
      synth_ProcessMarkers(a1);
      if (!*(a1 + 1144) || (v13 = *(a1 + 1096) + *(a1 + 1048), v13 < 1) || (ClientBuffer = InOut__InsertSilence(a1, v13, *(v2 + 168) - 1), (ClientBuffer & 0x80000000) == 0) && !InOut__IsEndState(a1))
      {
        *(a1 + 1076) = 1;
        *(a1 + 1024) = *(a1 + 1028);
        ++*(v2 + 224);
        ClientBuffer = InOut__GetClientBuffer(a1);
        if ((ClientBuffer & 0x80000000) == 0)
        {
          InOut__IsEndState(a1);
        }
      }

      return ClientBuffer;
    }

    v9 = v7 == v8 - 1;
    v10 = v7;
    v11 = 56 * v7;
    while (1)
    {
      ClientBuffer = Wsola__newunit(a1, *(v2 + 152) + v11);
      if ((ClientBuffer & 0x80000000) != 0 || InOut__IsEndState(a1))
      {
        return ClientBuffer;
      }

      if ((*(*(v2 + 152) + v11 + 48) & 0xF) != 0)
      {
        if ((*(*(v2 + 152) + v11 + 48) & 2) != 0)
        {
          v12 = Wsola__matchpreviousunit_wsola(a1, v10, v9);
        }

        else if (*(*(v2 + 152) + v11 + 48))
        {
          v12 = Wsola__plosive_silence(a1, v10);
        }

        else
        {
          if ((*(*(v2 + 152) + v11 + 48) & 4) == 0)
          {
            goto LABEL_23;
          }

          v12 = Wsola__plosive_rs(a1, v10);
        }
      }

      else
      {
        v12 = Wsola__Silence(a1, v10, v9);
      }

      ClientBuffer = v12;
      if ((v12 & 0x80000000) != 0 || InOut__IsEndState(a1))
      {
        return ClientBuffer;
      }

LABEL_23:
      v9 = v10 == *(v2 + 168) - 1;
      ClientBuffer = Wsola__middle(a1, v10);
      if ((ClientBuffer & 0x80000000) != 0)
      {
        return ClientBuffer;
      }

      if (InOut__IsEndState(a1))
      {
        return ClientBuffer;
      }

      ClientBuffer = Wsola__tail(a1, v10);
      if ((ClientBuffer & 0x80000000) != 0 || InOut__IsEndState(a1))
      {
        return ClientBuffer;
      }

      ++v10;
      v11 += 56;
      if (v10 >= *(v2 + 168))
      {
        goto LABEL_28;
      }
    }
  }

  ClientBuffer = Wsola__newunit(a1, *(v2 + 152));
  if ((ClientBuffer & 0x80000000) == 0 && !InOut__IsEndState(a1))
  {
    v4 = *(a1 + 1088);
    Wsola__updateSubunits(v4, 0, 0);
    v5 = *(v4 + 152);
    if (*(v5 + 46))
    {
      v6 = *(v5 + 40);
      if (v6)
      {
        ClientBuffer = InOut__InsertSilence(a1, v6, 0);
        if ((ClientBuffer & 0x80000000) != 0)
        {
          return ClientBuffer;
        }

        InOut__IsEndState(a1);
      }

      else
      {
        ClientBuffer = 0;
      }
    }

    else
    {
      ClientBuffer = 0;
      *(v5 + 40) = 0;
    }

    if (!InOut__IsEndState(a1))
    {
      ClientBuffer = Wsola__middle(a1, 0);
      if ((ClientBuffer & 0x80000000) == 0 && !InOut__IsEndState(a1))
      {
        ClientBuffer = Wsola__tail(a1, 0);
        if ((ClientBuffer & 0x80000000) == 0 && !InOut__IsEndState(a1))
        {
          v7 = 1;
          goto LABEL_9;
        }
      }
    }
  }

  return ClientBuffer;
}

uint64_t Wsola__newunit(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 1088);
  v4 = *(a2 + 28);
  v5 = *(a2 + 32);
  *(v3 + 28) = v5;
  v6 = *(a2 + 48);
  if ((v6 & 0xF) == 0)
  {
    v7 = *(v3 + 4);
LABEL_7:
    v8 = v4 >= v7;
    v9 = v4 - v7;
    if (v4 >= v7)
    {
      v5 += v7;
    }

    else
    {
      v5 += v4;
    }

    if (v4 < v7)
    {
      v7 = v4;
    }

    if (v8)
    {
      v4 = v9;
    }

    else
    {
      v4 = 0;
    }

    *(v3 + 28) = v5;
    *(v3 + 32) = v7;
    goto LABEL_16;
  }

  if ((v6 & 2) != 0)
  {
    v7 = *v3;
    goto LABEL_7;
  }

  if ((v6 & 5) == 0)
  {
    goto LABEL_17;
  }

  v7 = 0;
LABEL_16:
  *(a2 + 36) = v7;
LABEL_17:
  *(v3 + 36) = v5;
  if (v6 >= 0x10)
  {
    if ((v6 & 0x20) != 0)
    {
      v10 = 8;
    }

    else
    {
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_24;
      }

      v10 = 180;
    }
  }

  else
  {
    v10 = 4;
  }

  v5 += *(v3 + v10);
  *(v3 + 28) = v5;
LABEL_24:
  result = Lookup_Init(**(a2 + 8), v4, v5);
  if ((result & 0x80000000) == 0)
  {
    v12 = *(a2 + 46);
    *(v3 + 20) = 0;
    *(v3 + 24) = v12;
  }

  return result;
}

uint64_t Wsola__middle(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 1088);
  v4 = *(*(v3 + 152) + 56 * a2 + 48);
  if (v4 >= 0x10 && (v4 & 0x20) == 0)
  {
    if ((v4 & 0x10) != 0)
    {
      v6 = 180;
      v7 = 20;
    }

    else
    {
      if ((v4 & 0x40) == 0)
      {
        v8 = 0;
        goto LABEL_12;
      }

      v6 = 20;
      v7 = 208;
    }
  }

  else
  {
    v6 = 20;
    v7 = 4;
  }

  v8 = *(v3 + 36) - (*(v3 + v7) + *(v3 + v6));
  if (v8 < 0)
  {
    return 0;
  }

LABEL_12:
  v9 = InOut__AudioWriteToClientWithMarkers(a1, a2, v8, 2);
  if ((v9 & 0x80000000) == 0 && !InOut__IsEndState(a1))
  {
    *(v3 + 20) += v8;
  }

  return v9;
}

uint64_t Wsola__tail(uint64_t a1, int a2)
{
  v2 = *(a1 + 1088);
  v3 = **(*(v2 + 152) + 56 * a2 + 8);
  v4 = *(v2 + 28);
  v5 = *(v2 + 20);
  v6 = v4 - v5;
  if (v4 - v5 < 1)
  {
    v10 = *(*(v2 + 48) + 8);
    v11 = *(v2 + 12);
    v12 = 0;
    goto LABEL_5;
  }

  v7 = *(v2 + 12);
  v8 = *(v2 + 48);
  v9 = **(*(v2 + 152) + 56 * a2 + 8);
  if (v6 < v7)
  {
    InOut__DecodeToVector(a1, v9, v4 - v5, v8);
    v10 = *(*(v2 + 48) + 8);
    v11 = *(v2 + 12) - v6;
    v12 = v6;
LABEL_5:
    Wsola__zero(v10, v12, v11);
    goto LABEL_7;
  }

  InOut__DecodeToVector(a1, v9, v7, v8);
LABEL_7:

  return Lookup_DeInit(v3);
}

uint64_t Wsola__matchpreviousunit_wsola(uint64_t a1, int a2, int a3)
{
  v6 = *(a1 + 1088);
  v7 = **(*(v6 + 152) + 56 * a2 + 8);
  v8 = *(v6 + 28) - *(v6 + 20);
  v9 = *(v6 + 12);
  v10 = *(v6 + 64);
  if (v8 >= v9)
  {
    *(v10 + 4) = v9;
    v11 = InOut__DecodeToVector(a1, v7, v9, v10);
    if ((v11 & 0x80000000) != 0 || InOut__IsEndState(a1))
    {
      return v11;
    }
  }

  else
  {
    *(v10 + 4) = v8;
    v11 = InOut__DecodeToVector(a1, v7, v8, v10);
    if ((v11 & 0x80000000) != 0 || InOut__IsEndState(a1))
    {
      return v11;
    }

    Wsola__zero(*(*(v6 + 64) + 8), *(*(v6 + 64) + 4), *(v6 + 12) - *(*(v6 + 64) + 4));
  }

  v12 = *(v6 + 48);
  v13 = *(v6 + 64);
  v14 = *(v12 + 8);
  v15 = *(v13 + 8);
  v16 = *(v6 + 8);
  v17 = *(v6 + 16);
  if (v16 < 1)
  {
    v19 = 0;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v19 += (*(v14 + 4 * v18) * *(v15 + 4 * v18)) >> 3;
      v18 += v17;
    }

    while (v18 < v16);
  }

  if (v17 <= *v6)
  {
    v20 = 0;
    v21 = *(v6 + 16);
    v22 = v15 + 4 * v17;
    do
    {
      if (v16 < 1)
      {
        v24 = 0;
      }

      else
      {
        v23 = 0;
        v24 = 0;
        do
        {
          v24 += (*(v14 + 4 * v23) * *(v22 + 4 * v23)) >> 3;
          v23 += v17;
        }

        while (v23 < v16);
      }

      if (v24 > v19)
      {
        v20 = v21;
        v19 = v24;
      }

      v21 += v17;
      v22 += 4 * v17;
    }

    while (v21 <= *v6);
  }

  else
  {
    v20 = 0;
  }

  v25 = *(v6 + 4) + v20;
  *(v6 + 32) = v25;
  v26 = *(v6 + 152) + 56 * a2;
  *(v26 + 36) -= v25;
  Wsola__WindowsOverlap_wsola(v6, v12, v13, 0, v20);
  v27 = a2 - 1;
  if (a2 < 1)
  {
    if (*(*(v6 + 160) + 10))
    {
      v42 = 0;
      if (Wsola__findNextEventInSubUnit(v6, 0, &v42))
      {
        v35 = *(v6 + 152);
        v36 = *(v35 + 46);
        if (v42 < v36)
        {
          v37 = *(v35 + 44);
          v38 = *(v6 + 144);
          v39 = (*(v6 + 160) + 16 * v42 + 16 * v37);
          v40 = v36 - v42;
          do
          {
            if (*v39 > v38)
            {
              *v39 = v38;
            }

            v39 += 4;
            --v40;
          }

          while (v40);
        }
      }
    }
  }

  else
  {
    v43 = 0;
    if (a2 != 1)
    {
      if (Wsola__findNextEventInSubUnit(v6, a2 - 1, &v43))
      {
        v28 = *(v6 + 152);
        v29 = *(v28 + 56 * v27 + 46);
        if (v43 < v29)
        {
          v30 = *(v6 + 4);
          if (v30 >= *(*(v6 + 48) + 4))
          {
            v30 = *(*(v6 + 48) + 4);
          }

          if (a3 == 1)
          {
            v30 = 0;
          }

          v31 = *(v28 + 56 * v27 + 44);
          v32 = *(v6 + 144) + v30;
          v33 = (*(v6 + 160) + 16 * v43 + 16 * v31);
          v34 = v29 - v43;
          do
          {
            if (*v33 > v32)
            {
              *v33 = v32;
            }

            v33 += 4;
            --v34;
          }

          while (v34);
        }
      }
    }
  }

  InOut__PutVectorInBuffer(v6, *(v6 + 48), 0, *(v6 + 4));
  v11 = InOut__AudioWriteToClientWithMarkers(a1, a2 - 1, *(v6 + 4), 1);
  if ((v11 & 0x80000000) == 0 && !InOut__IsEndState(a1))
  {
    Wsola__updateSubunits(v6, a2, *(*(v6 + 152) + 56 * a2 + 36));
    InOut__PutVectorInBuffer(v6, *(v6 + 48), *(v6 + 4), *(v6 + 4));
    v11 = InOut__AudioWriteToClientWithMarkers(a1, a2, *(v6 + 4), 0);
    if ((v11 & 0x80000000) == 0 && !InOut__IsEndState(a1))
    {
      InOut__PutVectorInBuffer(v6, *(v6 + 64), *v6 + v20, (*(*(v6 + 64) + 4) - (*v6 + v20)));
      Wsola__updatepointers(v6, *(v6 + 4) + *(v6 + 32));
    }
  }

  return v11;
}

uint64_t Wsola__Silence(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  v6 = *(a1 + 1088);
  v7 = **(*(v6 + 152) + 56 * a2 + 8);
  v8 = *(v6 + 4);
  v9 = *(v6 + 64);
  if (*(v6 + 28) - *(v6 + 20) >= v8)
  {
    *(v9 + 4) = v8;
    inserted = InOut__DecodeToVector(a1, v7, v8, v9);
    if ((inserted & 0x80000000) != 0 || InOut__IsEndState(a1))
    {
      return inserted;
    }
  }

  else
  {
    inserted = InOut__DecodeToVector(a1, v7, *(v6 + 28) - *(v6 + 20), v9);
    if ((inserted & 0x80000000) != 0 || InOut__IsEndState(a1))
    {
      return inserted;
    }

    v11 = *(v6 + 28) - *(v6 + 20);
    Wsola__zero(*(*(v6 + 64) + 8), v11, *(v6 + 4) - v11);
    *(*(v6 + 64) + 4) = *(v6 + 28) - *(v6 + 20);
  }

  Wsola__fade_out(v6, *(v6 + 48), 0, *(v6 + 4));
  v12 = *(v6 + 4);
  *(v6 + 32) = v12 >> 1;
  v13 = *(v6 + 152) + 56 * v4;
  *(v13 + 36) -= v12 >> 1;
  v14 = v4 - 1;
  if (v4 < 1)
  {
    if (*(*(v6 + 160) + 10))
    {
      v30 = 0;
      if (Wsola__findNextEventInSubUnit(v6, 0, &v30))
      {
        v22 = *(v6 + 152);
        v23 = *(v22 + 46);
        if (v30 < v23)
        {
          v24 = *(v22 + 44);
          v25 = *(v6 + 144);
          v26 = (*(v6 + 160) + 16 * v30 + 16 * v24);
          v27 = v23 - v30;
          do
          {
            if (*v26 > v25)
            {
              *v26 = v25;
            }

            v26 += 4;
            --v27;
          }

          while (v27);
        }
      }
    }
  }

  else
  {
    v31 = 0;
    if (v4 != 1)
    {
      if (Wsola__findNextEventInSubUnit(v6, v4 - 1, &v31))
      {
        v15 = *(v6 + 152);
        v16 = *(v15 + 56 * v14 + 46);
        if (v31 < v16)
        {
          v17 = *(v6 + 4);
          if (v17 >= *(*(v6 + 48) + 4))
          {
            v17 = *(*(v6 + 48) + 4);
          }

          if (a3 == 1)
          {
            v17 = 0;
          }

          v18 = *(v15 + 56 * v14 + 44);
          v19 = *(v6 + 144) + v17;
          v20 = (*(v6 + 160) + 16 * v31 + 16 * v18);
          v21 = v16 - v31;
          do
          {
            if (*v20 > v19)
            {
              *v20 = v19;
            }

            v20 += 4;
            --v21;
          }

          while (v21);
        }
      }
    }
  }

  InOut__PutVectorInBuffer(v6, *(v6 + 48), 0, *(v6 + 4));
  inserted = InOut__AudioWriteToClientWithMarkers(a1, v4 - 1, *(v6 + 4), 1);
  if ((inserted & 0x80000000) == 0 && !InOut__IsEndState(a1))
  {
    v28 = *(*(v6 + 152) + 56 * v4 + 40);
    Wsola__updateSubunits(v6, v4, *(*(v6 + 152) + 56 * v4 + 36) + v28);
    inserted = InOut__InsertSilence(a1, v28, v4);
    if ((inserted & 0x80000000) == 0 && !InOut__IsEndState(a1))
    {
      Wsola__fade_in(v6, *(v6 + 64), 0, *(v6 + 4));
      InOut__PutVectorInBuffer(v6, *(v6 + 64), 0, *(v6 + 4));
      inserted = InOut__AudioWriteToClientWithMarkers(a1, v4, *(v6 + 4), 0);
      if ((inserted & 0x80000000) == 0 && !InOut__IsEndState(a1))
      {
        InOut__PutVectorInBuffer(v6, *(v6 + 64), *(v6 + 4), (*(*(v6 + 64) + 4) - *(v6 + 4)));
        Wsola__updatepointers(v6, *(v6 + 32) + (*(v6 + 4) >> 1));
      }
    }
  }

  return inserted;
}

void Wsola__zero(uint64_t a1, int a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    bzero((a1 + 4 * a2), 4 * a3);
  }
}

int *Wsola__WindowsOverlap_wsola(int *result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  LODWORD(v5) = *result;
  if (*result >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = *(a2 + 8) + 4 * a4;
    v9 = *(a3 + 8) + 4 * a5;
    v10 = *(*(result + 7) + 8);
    do
    {
      *(v8 + 4 * v7) = ((*(v9 + 4 * v7) * *(v10 + 4 * (v6 + v5))) >> 15) + ((*(v8 + 4 * v7) * *(v10 + 4 * v7)) >> 15);
      ++v7;
      v5 = *result;
      --v6;
    }

    while (v7 < v5);
  }

  return result;
}

uint64_t Wsola__fade_out(uint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  v5 = *(result + 56);
  v6 = *(v5 + 8);
  v7 = (*(a2 + 8) + 4 * a3);
  do
  {
    if (2 * (a4 & ~(a4 >> 31)) == v4)
    {
      break;
    }

    *v7 = (*v7 * *(v6 + 4 * v4)) >> 15;
    ++v7;
    v4 += 2;
  }

  while (*(v5 + 4) > v4);
  return result;
}

uint64_t Wsola__fade_in(uint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = *(result + 56);
  v5 = *(v4 + 4) - 1;
  v6 = (*(a2 + 8) + 4 * a3);
  v7 = *(v4 + 8);
  v8 = a4 & ~(a4 >> 31);
  v9 = v5 + 2;
  v10 = (v7 + 4 * v5);
  do
  {
    if (!v8)
    {
      break;
    }

    v11 = *v10;
    v10 -= 2;
    *v6 = (*v6 * v11) >> 15;
    ++v6;
    --v8;
    v9 -= 2;
  }

  while (v9 > 1);
  return result;
}

uint64_t Wsola__fade_out_closure(uint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  v5 = *(result + 56);
  v6 = *(v5 + 8);
  v7 = *(a2 + 8) + 4 * a3;
  do
  {
    if ((a4 & ~(a4 >> 31)) == v4)
    {
      break;
    }

    *(v7 + 4 * v4) = (*(v7 + 4 * v4) * *(v6 + 4 * v4)) >> 15;
    ++v4;
  }

  while (v4 < *(v5 + 4));
  return result;
}

uint64_t Wsola__fade_in_burst(uint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = *(result + 56);
  v5 = *(v4 + 4) - 1;
  v6 = *(v4 + 8);
  v7 = (*(a2 + 8) + 4 * a3);
  v8 = *(result + 216);
  v9 = a4 & ~(a4 >> 31);
  do
  {
    if (!v9)
    {
      break;
    }

    *v7 = (*v7 * *(v6 + 4 * v5)) >> 15;
    ++v7;
    v5 -= v8;
    --v9;
  }

  while ((v5 & 0x80000000) == 0);
  return result;
}

uint64_t Wsola__OverlapWindow__Init(uint64_t result, int a2)
{
  if (a2 > 15999)
  {
    if (a2 == 16000)
    {
      v2 = 161;
      v3 = &smpOverlapWindow_16;
      goto LABEL_11;
    }

    if (a2 == 22050)
    {
      v2 = 221;
      v3 = &smpOverlapWindow_22;
      goto LABEL_11;
    }
  }

  else
  {
    if (a2 == 8000)
    {
      v2 = 81;
      v3 = &smpOverlapWindow_8;
      goto LABEL_11;
    }

    if (a2 == 11025)
    {
      v2 = 113;
      v3 = &smpOverlapWindow_11;
LABEL_11:
      v4 = *(result + 56);
      *(v4 + 8) = v3;
      *v4 = v2;
      *(v4 + 4) = v2;
    }
  }

  return result;
}

uint64_t Wsola__plosive_rs(uint64_t a1, int a2)
{
  v4 = *(a1 + 1088);
  v5 = **(*(v4 + 152) + 56 * a2 + 8);
  v6 = *(v4 + 212);
  v7 = *(v4 + 64);
  if (*(v4 + 28) - *(v4 + 20) >= v6)
  {
    *(v7 + 4) = v6;
    v8 = InOut__DecodeToVector(a1, v5, v6, v7);
    if ((v8 & 0x80000000) != 0 || InOut__IsEndState(a1))
    {
      return v8;
    }
  }

  else
  {
    v8 = InOut__DecodeToVector(a1, v5, *(v4 + 28) - *(v4 + 20), v7);
    if ((v8 & 0x80000000) != 0 || InOut__IsEndState(a1))
    {
      return v8;
    }

    v9 = *(v4 + 28) - *(v4 + 20);
    Wsola__zero(*(*(v4 + 64) + 8), v9, *(v4 + 212) - v9);
    *(*(v4 + 64) + 4) = *(v4 + 28) - *(v4 + 20);
  }

  Wsola__fade_out_closure(v4, *(v4 + 48), 0, *(v4 + 208));
  *(v4 + 32) = 0;
  v10 = a2 - 1;
  if (a2 < 1)
  {
    if (*(*(v4 + 160) + 10))
    {
      v24 = 0;
      if (Wsola__findNextEventInSubUnit(v4, 0, &v24))
      {
        v17 = *(v4 + 152);
        v18 = *(v17 + 46);
        if (v24 < v18)
        {
          v19 = *(v17 + 44);
          v20 = *(v4 + 144);
          v21 = (*(v4 + 160) + 16 * v24 + 16 * v19);
          v22 = v18 - v24;
          do
          {
            if (*v21 > v20)
            {
              *v21 = v20;
            }

            v21 += 4;
            --v22;
          }

          while (v22);
        }
      }
    }
  }

  else
  {
    v25 = 0;
    if (a2 != 1)
    {
      if (Wsola__findNextEventInSubUnit(v4, a2 - 1, &v25))
      {
        v11 = *(v4 + 152);
        v12 = *(v11 + 56 * v10 + 46);
        if (v25 < v12)
        {
          v13 = *(v11 + 56 * v10 + 44);
          v14 = *(v4 + 144) + *(v4 + 208);
          v15 = (*(v4 + 160) + 16 * v25 + 16 * v13);
          v16 = v12 - v25;
          do
          {
            if (*v15 > v14)
            {
              *v15 = v14;
            }

            v15 += 4;
            --v16;
          }

          while (v16);
        }
      }
    }
  }

  InOut__PutVectorInBuffer(v4, *(v4 + 48), 0, *(*(v4 + 48) + 4));
  v8 = InOut__AudioWriteToClientWithMarkers(a1, a2 - 1, *(*(v4 + 48) + 4), 1);
  if ((v8 & 0x80000000) == 0 && !InOut__IsEndState(a1))
  {
    Wsola__fade_in_burst(v4, *(v4 + 64), 0, *(*(v4 + 64) + 4));
    Wsola__updateSubunits(v4, a2, *(*(v4 + 152) + 56 * a2 + 36));
    InOut__PutVectorInBuffer(v4, *(v4 + 64), 0, *(*(v4 + 64) + 4));
    v8 = InOut__AudioWriteToClientWithMarkers(a1, a2, *(*(v4 + 64) + 4), 0);
    if ((v8 & 0x80000000) == 0 && !InOut__IsEndState(a1))
    {
      Wsola__updatepointers(v4, *(v4 + 212) + *(v4 + 32));
    }
  }

  return v8;
}