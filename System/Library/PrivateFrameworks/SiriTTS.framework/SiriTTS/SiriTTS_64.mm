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
  v28 = 0u;
  v29 = 0u;
  v26 = 0;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v22 = 0;
  v2 = *(*(a2 + 72) + 128);
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v22);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  Info = edct_DctGetInfo(v2, &v28);
  v5 = LH_ERROR_to_VERROR(Info);
  if ((v5 & 0x80000000) == 0 && !v29)
  {
    edct_DctItOpen(*(v2 + 48), v2, &v27);
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
        v8 = edct_DctItCurrent(v27, &v26, &v25, &v24 + 1, &v24);
        v5 = LH_ERROR_to_VERROR(v8);
        if ((v5 & 0x80000000) != 0)
        {
          break;
        }

        if (!v26 || v25 == 0)
        {
          break;
        }

        if (HIDWORD(v24))
        {
          v15 = 0;
          v16 = 0;
          do
          {
            v17 = v25 + v15;
            if (!*(v25 + v15 + 56))
            {
              strlen(*(v17 + 48));
            }

            v18 = *(v22 + 32);
            if (*v17 != 2 && *v17)
            {
              log_OutTraceTuningData(v18, 102, "%s%s %s%s %s%s", v9, v10, v11, v12, v13, "USERDCTKEY");
            }

            else
            {
              log_OutTraceTuningData(v18, 102, "%s%s %s%.*s %s%s", v9, v10, v11, v12, v13, "USERDCTKEY");
            }

            ++v16;
            v15 += 64;
          }

          while (v16 < HIDWORD(v24));
        }

        v19 = edct_DctItIncrement(v27);
        v7 = LH_ERROR_to_VERROR(v19);
        if ((v7 & 0x80000000) != 0)
        {
          goto LABEL_24;
        }

        HasEnded = edct_DctItHasEnded(v27, &v23);
        v5 = LH_ERROR_to_VERROR(HasEnded);
      }

      while ((v5 & 0x80000000) == 0 && !v23);
    }
  }

  if (v27)
  {
    edct_DctItClose(v27);
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
  if (strcmp(v4, "application/edct-bin-dictionary"))
  {
    if (strcmp(v4, "application/cdct-bin-dictionary"))
    {
      if (!strcmp(v4, "application/x-vocalizer-userdct-pointer"))
      {
        *(a2 + 104) = *(a2 + 48);
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
      *(a2 + 104) = 0;
LABEL_20:
      if (*(a2 + 72) || *(a2 + 80))
      {
        UnloadUDct(a1, a2);
      }

      return inited;
    }

    Interface = CDSObject_QueryInterface(*(a2 + 80), 414531721, (a2 + 104));
    inited = LH_ERROR_to_VERROR(Interface);
    if ((inited & 0x80000000) == 0)
    {
      return inited;
    }

    log_OutPublic(*(v16 + 32), "DCTEG", 4482, "%s%s%s%x");
LABEL_19:
    *(a2 + 104) = 0;
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

  v8 = Dictionary_QueryInterface(*(a2 + 72), 414531721, (a2 + 104));
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
    if (!strcmp(v3, "application/edct-bin-dictionary"))
    {
      v5 = a2[9];
      if (v5)
      {
        Dictionary_Des(v5);
        heap_Free(*(v8 + 8), a2[9]);
        a2[9] = 0;
      }
    }

    else if (!strcmp(v3, "application/cdct-bin-dictionary"))
    {
      v6 = a2[10];
      if (v6)
      {
        CDSObject_Des(v6);
        heap_Free(*(v8 + 8), a2[10]);
        a2[10] = 0;
      }
    }

    else if (strcmp(v3, "application/x-vocalizer-userdct-pointer"))
    {
      log_OutPublic(*(v8 + 32), "DCTEG", 4404, "%s%s", "contentType", v3);
      return 2231378966;
    }
  }

  return inited;
}

uint64_t RetrieveUDctEntry(uint64_t a1, uint64_t a2, char *a3, char *__s, _BYTE *a5, const char *a6, _WORD *a7, char *a8, _BYTE *a9, _DWORD *a10)
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
    v24 = (*(**(a2 + 104) + 16))(*(a2 + 104) - *(**(a2 + 104) + 48), &v41);
    if ((LH_ERROR_to_VERROR(v24) & 0x80000000) == 0)
    {
      if (*v41)
      {
        for (i = 0; i != 3; ++i)
        {
          __s2[i] = __tolower(*(*v41 + i));
        }

        __s2[3] = 0;
        v26 = 2231377940;
        if (!a3 || strstr(a3, __s2))
        {
          v27 = (***(a2 + 104))(*(a2 + 104) - *(**(a2 + 104) + 48), a5, &v42, &v44);
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
              v36 = (*(**(a2 + 104) + 8))(*(a2 + 104) - *(**(a2 + 104) + 48));
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
          strcpy(a8, __s2);
          if (a9)
          {
            v31 = v41[1];
            if (v31)
            {
              if (strlen(v31) == 3)
              {
                for (j = 0; j != 3; ++j)
                {
                  a9[j] = __tolower(*(v41[1] + j));
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

uint64_t GetnTranscriptions(void *a1, const char **a2, _WORD **a3, unsigned int a4)
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
        *&(*a2)[strlen(*a2)] = 18;
        v8 = v14;
      }

      else
      {
        v8 += v11;
      }

      strcat(*a2, v12);
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
    bzero((v10 + 8 * a1[12]), 8 * (v9 - a1[12]));
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
      v32 = *(v16 + 4);
      v19 = &v18[-*v15];
      *(v14 + *(v15 + 2) - *v15 + a4) = 1;
      v20 = *(v16 + 20);
      v21 = *(v16 + 21);
      if (v20)
      {
        if (v20 < a5)
        {
          a5 = v20;
        }

        memcpy(&v19[v14], a6, v21 * a5);
      }

      else
      {
        v23 = v21 * a5;
        v24 = LD_HeapAlloc(a1 + 8, v21 * a5);
        *&v19[v14] = v24;
        if (!v24)
        {
          return v13;
        }

        memcpy(v24, a6, v23);
        if (v18 == &unk_1C37BE348 && a5 != 0)
        {
          v31 = v17;
          v26 = a5;
          v27 = a6 + 3;
          v28 = 24;
          do
          {
            if (marker_hasNonConstCharPtrArg(*(v27 - 6)))
            {
              if (*v27)
              {
                v29 = strlen(*v27);
              }

              else
              {
                v29 = 0;
              }

              v30 = LD_HeapAlloc(a1 + 8, v29 + 1);
              if (!v30)
              {
                return v13;
              }

              if (v29)
              {
                v30 = strcpy(v30, *v27);
              }

              else
              {
                *v30 = 0;
              }

              *(*&v19[v14] + v28) = v30;
            }

            v27 += 4;
            v28 += 32;
            --v26;
          }

          while (v26);
          v17 = v31;
        }
      }

      if (v32)
      {
        *(v14 + v32 - v17) = a5;
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
          memcpy(a6, v20, *(v18 + 9) * a5);
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

uint64_t LD_checkBEConsistency(void *a1, uint64_t a2, char a3, char a4, char *a5, char *a6)
{
  v6 = a6;
  v61 = 0;
  v59 = 0;
  __s = 0;
  v58 = 0;
  v56 = 0;
  if (a5 && a6)
  {
    *a5 = 0;
    *a6 = 0;
  }

  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  v62 = 0;
  v54 = 0;
  v12 = a1[8] != 0;
  v13 = LD_enquireChild(a1, a2, 2, v12, &v62);
  if ((v13 & 0x80000000) == 0)
  {
    v52 = a5;
    v49 = v12;
    v53 = a4;
    v14 = v62;
    if (v62)
    {
      v15 = 0;
      v16 = 0;
      v48 = 0;
      v55 = 0;
      v50 = 0;
      v51 = v6;
      while (1)
      {
        v17 = LD_readField(a1, a2, v14, 0, 1u, &v54, &v57);
        if ((v17 & 0x80000000) != 0)
        {
          return v17;
        }

        if ((v54 - 9) >= 6)
        {
          if (v54 == 15)
          {
            if ((a3 & 0x10) != 0)
            {
              v17 = LD_checkPHR_TNTAG(a1, a2, v53, v16, v14, v52, v6);
              if ((v17 & 0x80000000) != 0)
              {
                return v17;
              }
            }

            v50 = 0;
            v61 = v14;
            v15 = v14;
            v37 = v14;
            v48 = v16;
            goto LABEL_106;
          }

          if (v54 != 4)
          {
            goto LABEL_75;
          }
        }

        v57 = 0;
        v17 = LD_enquireField(a1, a2, v14, 3u, &v55);
        if ((v17 & 0x80000000) != 0)
        {
          return v17;
        }

        if (!v55)
        {
          goto LABEL_14;
        }

        v17 = LD_readDirectField(a1, a2, v14, 3u, &__s, &v57);
        if ((v17 & 0x80000000) != 0)
        {
          return v17;
        }

        if (!v57)
        {
LABEL_14:
          __s = &v58;
        }

        v17 = LD_enquireField(a1, a2, v14, 0xDu, &v56);
        if ((v17 & 0x80000000) != 0)
        {
          return v17;
        }

        v18 = v56;
        if (v56)
        {
          v17 = LD_readDirectField(a1, a2, v14, 0xDu, &v59, &v57);
          if ((v17 & 0x80000000) != 0)
          {
            return v17;
          }

          if (!v57)
          {
            v18 = 0;
            v56 = 0;
          }
        }

        if ((a3 & 7) != 0)
        {
          v19 = __s;
          strcpy(&v66 + 4, "1");
          __s2 = 0;
          if (v18)
          {
            v20 = 0;
          }

          else
          {
            LD_setErrorDescription(v52, v51, 0, v14, "missing PRM");
            v20 = 1;
          }

          v22 = (a3 & 2) == 0 || v18 != 0;
          if ((a3 & 4) == 0 && v22 || !*v19 || strchr(v19, 39) || strchr(v19, 34) || strstr(v19, "'2"))
          {
            v6 = v51;
          }

          else
          {
            strcpy(&v66 + 4, "0");
            v6 = v51;
            if ((a3 & 4) != 0 && v18)
            {
              v17 = LD_readDirectField(a1, a2, v14, 0xDu, &__s2, &v67);
              if ((v17 & 0x80000000) != 0)
              {
                return v17;
              }

              if (strcmp(&v66 + 4, __s2))
              {
                LD_setErrorDescription(v52, v51, 0, v14, "PRM != 0 without stress marker");
                v20 = 1;
              }
            }
          }

          if ((v53 & 1) != 0 && v20)
          {
            v23 = strlen(&v66 + 4);
            v17 = LD_writeField(a1, a2, v14, 0xDu, (v23 + 1), (&v66 + 4), &v66 + 3);
            if ((v17 & 0x80000000) != 0)
            {
              return v17;
            }

            v18 = 1;
            v56 = 1;
          }
        }

        if ((a3 & 8) != 0)
        {
          WORD2(v66) = 0;
          if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
          {
            return 2300583944;
          }

          __s2 = 0;
          v17 = LD_readDirectField(a1, a2, v14, 5u, &__s2, &v67);
          if ((v17 & 0x80000000) != 0)
          {
            return v17;
          }

          if ((LD_enquireField(a1, a2, v14, 0xEu, &v66 + 2) & 0x80000000) == 0 && !WORD2(v66))
          {
            LD_setErrorDescription(v52, v6, 0, v14, "missing NLU field");
            if (v53)
            {
              v31 = __s2;
              v32 = strlen(__s2);
              v33 = heap_Alloc(*(*a1 + 8), (v32 + 5));
              if (!v33)
              {
                goto LABEL_142;
              }

              v34 = v33;
              strcpy(v33, "POS:");
              v35 = strcat(v33, v31);
              v36 = strlen(v35);
              v13 = LD_writeField(a1, a2, v14, 0xEu, (v36 + 1), v34, &v66 + 3);
              heap_Free(*(*a1 + 8), v34);
              v6 = v51;
              if ((v13 & 0x80000000) != 0)
              {
                return v13;
              }
            }
          }
        }

        if ((a3 & 0x60) != 0)
        {
          v24 = __s;
          if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
          {
            return 2300583944;
          }

          if (v18)
          {
            __s2 = 0;
            v17 = LD_readDirectField(a1, a2, v14, 0xDu, &__s2, &v67);
            if ((v17 & 0x80000000) != 0)
            {
              return v17;
            }

            v25 = atoi(__s2);
            if ((a3 & 0x20) == 0 || v25)
            {
              if ((a3 & 0x40) == 0 || !v25 || !*v24 || strchr(v24, 39) || strchr(v24, 34) || strchr(v24, 42) || strchr(v24, 91))
              {
                goto LABEL_74;
              }

              if (strchr(v24, 45))
              {
                if (v52)
                {
                  *v52 = v14;
                }

                if (v6)
                {
                  *(v6 + 24) = 0;
                  *(v6 + 21) = unk_1C37BE5C6;
                  *(v6 + 11) = unk_1C37BE5C8;
                  *(v6 + 3) = unk_1C37BE5CC;
                  *(v6 + 4) = xmmword_1C37BE5DC;
                  *(v6 + 5) = unk_1C37BE5EC;
                  strcpy(v6, "missing marker of primary stress (unsafe)");
                }

                if ((v53 & 2) == 0)
                {
                  goto LABEL_74;
                }
              }

              else
              {
                LD_setErrorDescription(v52, v6, 0, v14, "missing marker of primary stress (safe)");
                if ((v53 & 1) == 0)
                {
                  goto LABEL_74;
                }
              }

              v39 = *v24;
              if (v39 == 39)
              {
                v40 = 2 * (v24[1] == 50);
                v39 = v24[v40];
              }

              else
              {
                v40 = 0;
              }

              v41 = &v24[v40];
              if (v39 == 96)
              {
                v42 = v41 + 1;
              }

              else
              {
                v42 = v41;
              }

              v43 = strlen(v42);
              v44 = heap_Alloc(*(*a1 + 8), (v43 + 2));
              if (!v44)
              {
LABEL_142:
                log_OutPublic(*(*a1 + 32), "LINGDB", 20000, 0);
                return 2300583946;
              }

              v28 = v44;
              *v44 = 39;
              strcat(v44, v42);
            }

            else
            {
              if (!strchr(v24, 39) && !strchr(v24, 34) && !strstr(v24, "'2"))
              {
                goto LABEL_74;
              }

              LD_setErrorDescription(v52, v6, 0, v14, "spurious stress marker in unaccented word");
              if ((v53 & 1) == 0)
              {
                goto LABEL_74;
              }

              v26 = strlen(v24);
              v27 = heap_Alloc(*(*a1 + 8), (v26 + 1));
              if (!v27)
              {
                goto LABEL_142;
              }

              v28 = v27;
              v29 = strcpy(v27, v24);
              mosynt_RemoveAllSubstrOcc(v29, "'2");
              mosynt_RemoveAllSubstrOcc(v28, "'");
              mosynt_RemoveAllSubstrOcc(v28, "");
            }

            v30 = strlen(v28);
            v13 = LD_writeField(a1, a2, v14, 3u, (v30 + 1), v28, &v66 + 3);
            heap_Free(*(*a1 + 8), v28);
            v6 = v51;
            if ((v13 & 0x80000000) != 0)
            {
              return v13;
            }
          }
        }

LABEL_74:
        if ((a3 & 0x10) != 0)
        {
          WORD1(v66) = 0;
          if (!v15)
          {
            LD_setErrorDescription(v52, v6, 0, v14, "missing initial phrase record");
            if (v53)
            {
              LODWORD(__s2) = 15;
              LOWORD(v66) = 0;
              v65 = 200;
              v64 = 0;
              v17 = LD_createPrev(a1, a2, v14, &v61);
              if ((v17 & 0x80000000) != 0)
              {
                return v17;
              }

              WORD2(v66) = 0;
              v17 = LD_enquireField(a1, a2, v14, 1u, &v66 + 1);
              if ((v17 & 0x80000000) != 0)
              {
                return v17;
              }

              if (WORD1(v66))
              {
                v17 = LD_readField(a1, a2, v14, 1u, 1u, &v66 + 4, &v67);
                if ((v17 & 0x80000000) != 0)
                {
                  return v17;
                }

                v15 = v61;
                v17 = LD_writeField(a1, a2, v61, 1u, 1u, (&v66 + 4), &v66 + 3);
                if ((v17 & 0x80000000) != 0)
                {
                  return v17;
                }

                v17 = LD_writeField(a1, a2, v15, 2u, 1u, (&v66 + 4), &v66 + 3);
                if ((v17 & 0x80000000) != 0)
                {
                  return v17;
                }
              }

              else
              {
                v15 = v61;
              }

              v17 = LD_writeField(a1, a2, v15, 0, 1u, &__s2, &v66 + 3);
              if ((v17 & 0x80000000) != 0)
              {
                return v17;
              }

              v38 = strlen(&v64);
              v17 = LD_writeField(a1, a2, v15, 4u, (v38 + 1), &v64, &v66 + 3);
              if ((v17 & 0x80000000) != 0)
              {
                return v17;
              }

              v17 = LD_writeField(a1, a2, v15, 7u, 1u, &v66, &v66 + 3);
              if ((v17 & 0x80000000) != 0)
              {
                return v17;
              }

              v17 = LD_writeField(a1, a2, v15, 8u, 1u, &v65, &v66 + 3);
              if ((v17 & 0x80000000) != 0)
              {
                return v17;
              }
            }
          }

          if (!v50)
          {
            WORD1(v66) = 0;
            if (v15)
            {
              HIDWORD(v66) = 0;
              v13 = LD_enquireField(a1, a2, v15, 1u, &v66 + 1);
              if ((v13 & 0x80000000) != 0)
              {
                goto LABEL_104;
              }

              if (!WORD1(v66))
              {
                goto LABEL_104;
              }

              v13 = LD_enquireField(a1, a2, v14, 1u, &v66 + 1);
              if ((v13 & 0x80000000) != 0 || !WORD1(v66))
              {
                goto LABEL_104;
              }

              v17 = LD_readField(a1, a2, v15, 1u, 1u, &v66 + 4, &__s2);
              if ((v17 & 0x80000000) != 0)
              {
                return v17;
              }

              v17 = LD_readField(a1, a2, v14, 1u, 1u, &v66 + 6, &__s2);
              if ((v17 & 0x80000000) != 0)
              {
                return v17;
              }

              if (HIWORD(v66) != WORD2(v66))
              {
                LD_setErrorDescription(v52, v6, 0, v15, "inconsistent phrase FROMPOS");
                if (v53)
                {
                  v13 = LD_writeField(a1, a2, v15, 1u, 1u, (&v66 + 6), &v67);
LABEL_104:
                  if ((v13 & 0x80000000) != 0)
                  {
                    return v13;
                  }
                }
              }
            }
          }

          v50 = 1;
          v37 = v15;
          goto LABEL_106;
        }

LABEL_75:
        v37 = v16;
LABEL_106:
        v17 = LD_nextInSent(a1, a2, v14, &v62);
        if ((v17 & 0x80000000) != 0)
        {
          return v17;
        }

        v14 = v62;
        v16 = v37;
        if (!v62)
        {
          if ((a3 & 0x10) == 0)
          {
            v13 = 0;
            goto LABEL_138;
          }

          if (v50)
          {
            v45 = v15;
            v46 = v52;
            v17 = LD_checkPHR_TNTAG(a1, a2, v53, v45, 0, v52, v6);
          }

          else
          {
            v46 = v52;
            v17 = LD_checkPHR_final(a1, a2, v53, v48, &v61, v52, v6);
          }

          if ((v17 & 0x80000000) == 0)
          {
            v13 = LD_checkPHR_TOPOS(a1, a2, v53, v49, v46, v6);
            if ((v13 & 0x80000000) != 0)
            {
              return v13;
            }

LABEL_138:
            if ((a3 & 0x80) == 0)
            {
              return v13;
            }

            return LD_checkRECPROMPT(a1, a2, v53, v49, v52, v6);
          }

          return v17;
        }
      }
    }
  }

  return v13;
}

uint64_t LD_checkPHR_TNTAG(uint64_t a1, int a2, char a3, unsigned int a4, unsigned int a5, char *a6, char *a7)
{
  v25 = 0;
  v26 = 0;
  if (!a4)
  {
    return 0;
  }

  HIWORD(__s) = 0;
  result = LD_enquireField(a1, a2, a4, 4u, &__s + 3);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (!HIWORD(__s))
  {
    goto LABEL_10;
  }

  WORD2(__s) = 0;
  result = LD_readDirectField(a1, a2, a4, 4u, &v26, &__s + 2);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (!WORD2(__s) || (v15 = v26) == 0)
  {
LABEL_10:
    LD_setErrorDescription(a6, a7, 0, a4, "undefined phrase type");
    if ((a3 & 1) == 0)
    {
      return 0;
    }

    if (a5)
    {
      v17 = 80;
    }

    else
    {
      v17 = 84;
    }

    LOWORD(__s) = v17;
    v18 = (strlen(&__s) + 1);
    p_s = &__s;
    v20 = a1;
    v21 = a2;
    v22 = a4;
    return LD_writeField(v20, v21, v22, 4u, v18, p_s, &__s + 1);
  }

  v16 = *v26;
  if (v16 == 89)
  {
    result = 0;
    if (!a5 || v26[1])
    {
      return result;
    }
  }

  else
  {
    if (v16 != 84)
    {
      if (*v26)
      {
        return 0;
      }

      goto LABEL_10;
    }

    result = 0;
    if (v26[1] || !a5)
    {
      return result;
    }
  }

  LD_setErrorDescription(a6, a7, 0, a4, "non-final phrase of final type");
  if ((a3 & 1) == 0)
  {
    return 0;
  }

  strcpy(&__s, "P");
  v23 = strlen(&__s);
  result = LD_writeField(a1, a2, a4, 4u, (v23 + 1), &__s, &__s + 1);
  if ((result & 0x80000000) == 0)
  {
    result = LD_enquireField(a1, a2, a5, 4u, &__s + 3);
    if ((result & 0x80000000) == 0)
    {
      if (HIWORD(__s))
      {
        result = LD_readDirectField(a1, a2, a5, 4u, &v25, &__s + 2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (WORD2(__s))
        {
          if (v25)
          {
            v24 = *v25;
            if ((v24 == 89 || v24 == 84) && !v25[1])
            {
              return 0;
            }
          }
        }
      }

      v18 = (strlen(v15) + 1);
      v20 = a1;
      v21 = a2;
      v22 = a5;
      p_s = v15;
      return LD_writeField(v20, v21, v22, 4u, v18, p_s, &__s + 1);
    }
  }

  return result;
}

uint64_t LD_checkPHR_final(uint64_t a1, uint64_t a2, char a3, unsigned int a4, __int16 *a5, char *a6, char *__dst)
{
  if (!*a5)
  {
    return 0;
  }

  v10 = a2;
  LD_setErrorDescription(a6, __dst, 0, *a5, "dangling final phrase record");
  if ((a3 & 1) == 0)
  {
    return 0;
  }

  if (!a4 || (__s = 0, result = LD_readDirectField(a1, v10, *a5, 4u, &__s, &v16), (result & 0x80000000) == 0) && (v13 = strlen(__s), result = LD_writeField(a1, v10, a4, 4u, (v13 + 1), __s, &v15), (result & 0x80000000) == 0))
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

              result = LD_writeField(a1, v9, v12, 0x12u, 9u, "external", &v22);
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

              v17 = strlen(&v18 + 7);
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

char *LD_setErrorDescription(char *result, char *__dst, int a3, __int16 a4, char *__src)
{
  if (result && (a3 || !*result))
  {
    *result = a4;
    if (!__dst)
    {
      return result;
    }
  }

  else if (!__dst)
  {
    return result;
  }

  if (a3 || !*__dst)
  {
    return strncpy(__dst, __src, 0x64uLL);
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
    LD_HeapInit((v9 + 1), v13, "records/fields", SHIDWORD(v14), v14);
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

      LD_HeapResetPool((a1 + 1));
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
    LD_HeapResetPool(a1 + 8);
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

              if (__n && !strncmp(__s1, "prompt", __n))
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
  v22[256] = *MEMORY[0x1E69E9840];
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  v21 = 0;
  if (log_GetLogLevel(*(*a1 + 32)) >= a6)
  {
    bzero(v22, 0x800uLL);
    v17 = *"LINGDB";
    v18 = unk_1C37BE2C8;
    v19 = xmmword_1C37BE2D8;
    v20 = unk_1C37BE2E8;
    LOWORD(v21) = 146;
    HIDWORD(v21) = a6;
    v16 = *(*a1 + 32);
    if (a3)
    {
      LOWORD(v21) = a3;
    }

    if (a4)
    {
      LD_logOutputCB(&v16, a4);
      LD_logOutputCB(&v16, "\n");
    }

    if (a5 == 1)
    {
      v15 = 0;
      if (LD_getDBChangedStatus(a1, a2, &v15) || v15 != 1)
      {
        LD_logOutputCB(&v16, "LingDB unchanged since last call\n");
        return 0;
      }

      LD_resetDBChangedStatus(a1, a2);
    }

    dumpSentenceRecord(a1, a2, LD_logOutputCB, &v16, v7);
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
      v12 = word_1F42D42A8;
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
        v17 = word_1F42D49B8;
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
        v45 = word_1F42D4D40;
        v46 = word_1F42D4630;
        v49 = a5;
        v48 = v9;
        v47 = word_1F42D50C8;
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
                    strncpy(v27, v28, __n);
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

uint64_t LD_printLH_U32Array(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 a9)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v9;
  v29 = *MEMORY[0x1E69E9840];
  v25 = 0;
  result = LD_enquireField(v9, v20, a9, v12, &v25 + 1);
  if ((result & 0x80000000) == 0 && HIWORD(v25) == 1)
  {
    LD_readField(v22, v21, a9, v13, 0x400u, v28, &v25);
    v27[0] = 0;
    if (v25)
    {
      v24 = 0;
      do
      {
        LH_utoa(v28[v24], v26, 0xAu);
        __strcat_chk();
        __strcat_chk();
        ++v24;
      }

      while (v24 < v25);
    }

    v19(v17, v15);
    v19(v17, "<");
    v19(v17, v11);
    v19(v17, "> ");
    v19(v17, v27);
    v19(v17, "</");
    v19(v17, v11);
    return (v19)(v17, ">\n");
  }

  return result;
}

uint64_t LD_printLH_U16String(uint64_t a1, int a2, uint64_t (*a3)(uint64_t, const char *), uint64_t a4, const char *a5, unsigned int a6, const char *a7, uint64_t a8, unsigned __int16 a9)
{
  v23 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v19 = 0;
  result = LD_enquireField(a1, a2, a9, a6, &v20);
  if ((result & 0x80000000) == 0 && v20 == 1)
  {
    LD_readField(a1, a2, a9, a6, 0x20u, v21, &v19);
    v22[0] = 0;
    if (v19)
    {
      for (i = 0; i < v19; ++i)
      {
        LH_itoa(v21[i], v18, 0xAu);
        __strcat_chk();
        __strcat_chk();
      }
    }

    a3(a4, a5);
    a3(a4, "<");
    a3(a4, a7);
    a3(a4, "> ");
    a3(a4, v22);
    a3(a4, " </");
    a3(a4, a7);
    return a3(a4, ">\n");
  }

  return result;
}

uint64_t CB_appendString(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  v5 = v4;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = *(a1 + 16);
    if (v7 > strlen(*(a1 + 8)) + v4)
    {
LABEL_7:
      strcat(v6, __s);
      return 0;
    }

    v8 = v5 + v7 + 50;
    *(a1 + 16) = v8;
    v9 = heap_Realloc(*(*a1 + 8), v6, v8);
  }

  else
  {
    v10 = v4 + *(a1 + 16) + 50;
    *(a1 + 16) = v10;
    v9 = heap_Calloc(*(*a1 + 8), 1, v10);
  }

  v6 = v9;
  if (v9)
  {
    *(a1 + 8) = v9;
    goto LABEL_7;
  }

  return 10;
}

uint64_t LD_printMarkerT(uint64_t *a1, int a2, uint64_t (*a3)(uint64_t, const char *), uint64_t a4, const char *a5, unsigned int a6, const char *a7, uint64_t a8, unsigned __int16 a9, unsigned int a10)
{
  v15 = a1;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  __s = 0;
  v35 = *a1;
  result = LD_enquireField(a1, a2, a9, a6, &v39 + 1);
  v17 = 0;
  if ((result & 0x80000000) == 0 && HIWORD(v39) == 1)
  {
    v31 = v15;
    LD_readDirectField(v15, a2, a9, a6, &v38, &v39);
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

        marker_serialize_tostring(CB_appendString, &v35, v38 + v19, 0);
        v23 = __s;
        if (v21)
        {
          v24 = strlen(__s);
          v25 = xmlaux_calculateExtraEscapeBytes(__s, v24);
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
                v15 = v31;
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
    v15 = v31;
    v17 = v34;
  }

LABEL_23:
  if (__s)
  {
    result = heap_Free(*(*v15 + 8), __s);
  }

  if (v17)
  {
    return heap_Free(*(*v15 + 8), v17);
  }

  return result;
}

uint64_t LD_logOutputCB(uint64_t a1, const char *a2)
{
  v4 = (a1 + 80);
  v5 = strlen((a1 + 80));
  if (strlen(a2) + v5 >= 0x800)
  {
    result = log_OutText(*a1, a1 + 8, *(a1 + 76), 0, "%s", v4);
    if (!result)
    {
      result = log_OutText(*a1, a1 + 8, *(a1 + 76), 0, "%s");
    }

    goto LABEL_6;
  }

  v7 = strcat(v4, a2);
  v8 = strlen(v7) - 1;
  if (v4[v8] == 10)
  {
    v4[v8] = 0;
    result = log_OutText(*a1, a1 + 8, *(a1 + 76), 0, "%s");
LABEL_6:
    *v4 = 0;
    return result;
  }

  return 0;
}

double LD_HeapInit(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 24) = a4;
  *(a1 + 28) = a5;
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

void LD_HeapResetPool(uint64_t a1)
{
  if (a1 && *a1)
  {
    LD_HeapLogStats(a1, "before ResetPool");
    for (i = *(a1 + 16); i; i = *i)
    {
      v3 = i[1];
      i[2] = v3;
      bzero(v3, (*(i + 6) - v3));
    }

    *(a1 + 36) = 0;
  }
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

uint64_t igtree_Init(_WORD *a1, int a2, uint64_t a3, char *a4)
{
  v47 = 0;
  *v46 = 0;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  bzero(a4, 0x640uLL);
  inited = InitRsrcFunction(a1, a2, &v42);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v9 = ssftriff_reader_OpenChunk(a3, &v43, &v47, v46);
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
  while (v43 ^ 0x52545344 | v44)
  {
    if (v43 ^ 0x54414546 | v44)
    {
      if (v43 ^ 0x4C424154 | v44)
      {
        if (v43 ^ 0x534F5041 | v44)
        {
          if (v43 ^ 0x4D414E46 | v44)
          {
            if (!(v43 ^ 0x41524150 | v44))
            {
              v11 = heap_Calloc(*(v42 + 8), v47 >> 2, 16);
              *(a4 + 166) = v11;
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
                  *(*(a4 + 166) + 16 * v13) = v15;
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
                  *(*(a4 + 166) + 16 * v13 + 8) = v17;
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
              *(a4 + 334) = v13;
            }
          }

          else
          {
            v36 = heap_Calloc(*(v42 + 8), v47 >> 1, 8);
            *(a4 + 164) = v36;
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
                *(*(a4 + 164) + 8 * v38) = heap_Alloc(*(v42 + 8), v45);
                v40 = *(*(a4 + 164) + 8 * v38);
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
          *(a4 + 163) = v35;
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
        inited = ssftriff_reader_DetachChunkData(a3, a4, v46);
        if ((inited & 0x80001FFF) == 0x8000000A)
        {
          return inited;
        }

        a4[1296] = 0;
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

            *&a4[8 * v26 + 272] = v30 + 2 * v33;
            v34 = v26 + 1;
            LODWORD(v27) = v27 + v32 + v31 + 1;
            ++v26;
          }

          while (v27 < v28);
          a4[1296] = v34;
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
          *&a4[v24 + 16] = *(v25 + v24);
          v24 += 2;
        }

        while (v24 < v23);
      }
    }

LABEL_44:
    ssftriff_reader_CloseChunk(a3);
    v9 = ssftriff_reader_OpenChunk(a3, &v43, &v47, v46);
    if ((v9 & 0x80000000) != 0)
    {
      goto LABEL_56;
    }
  }

  v18 = heap_Calloc(*(v42 + 8), v47 >> 1, 8);
  *(a4 + 1) = v18;
  if (!v18)
  {
    return v10;
  }

  v19 = v47;
  if (!v47)
  {
    v20 = 0;
LABEL_41:
    *(a4 + 330) = v20;
    goto LABEL_44;
  }

  v20 = 0;
  v21 = 0;
  while (1)
  {
    v45 = 0;
    ssftriff_reader_ReadStringZ(a3, *v46, v19, v21, 0, &v45);
    *(*(a4 + 1) + 8 * v20) = heap_Alloc(*(v42 + 8), v45);
    v22 = *(*(a4 + 1) + 8 * v20);
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
  v76 = *MEMORY[0x1E69E9840];
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

uint64_t igtree_Init_ReadOnly_ReferenceCnt(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, void *a5, int a6, uint64_t a7, uint64_t a8, __int16 a9, char a10)
{
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v20[4] = 0;
  result = InitRsrcFunction(a1, a2, &v24);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(a3, a4, &v23);
    if ((result & 0x80000000) == 0)
    {
      v20[0] = a1;
      v20[1] = a2;
      v20[2] = a3;
      v20[3] = a4;
      __strcpy_chk();
      LODWORD(v21) = a6;
      BYTE6(v21) = a10;
      WORD2(v21) = a9;
      ObjcForThisApi = getObjcForThisApi(v24, v23);
      result = objc_GetAddRefCountedObject(ObjcForThisApi, a7, igtree_ObjcLoad, igtree_ObjcClose, v20, &v22);
      if ((result & 0x80000000) != 0)
      {
        v19 = 0;
      }

      else
      {
        v19 = *(v22 + 32);
      }

      *a5 = v19;
    }
  }

  return result;
}

uint64_t igtree_ObjcLoad(_WORD *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v21 = 0;
  v22 = 0;
  inited = InitRsrcFunction(a1, a2, &v21);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = InitRsrcFunction(*(a5 + 16), *(a5 + 24), &v22);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v11 = *(v21 + 8);
  v12 = *(v22 + 32);
  v13 = *(a5 + 40);
  v14 = *(a5 + 44) | (*(a5 + 46) << 16);
  *v23 = 0;
  v15 = ssftriff_reader_ObjOpen(a1, a2, v13, a3, (a5 + 32), v14, v23);
  if ((v15 & 0x80000000) != 0)
  {
    v18 = v15;
    log_OutText(v12, "IGTREE", 3, 0, "failed to read IGtree %s data - going on without");
  }

  else
  {
    v16 = heap_Calloc(v11, 1, 1600);
    *(a4 + 32) = v16;
    if (v16)
    {
      v17 = igtree_Init(a1, a2, *v23, v16);
      if ((v17 & 0x80000000) != 0)
      {
        v18 = v17;
        v19 = "error initializing IGtree  %s - going on without";
        goto LABEL_12;
      }

      strcpy((*(a4 + 32) + 1340), a3);
      v18 = ssftriff_reader_ObjClose(*v23);
      if ((v18 & 0x80000000) != 0)
      {
        v19 = "cannot complete reading IGtree  %s - going on without";
LABEL_12:
        log_OutText(v12, "IGTREE", 0, 0, v19, a3);
      }
    }

    else
    {
      log_OutText(v12, "IGTREE", 0, 0, "no memory for IGtree  %s", a3);
      log_OutPublic(v12, "IGTREE", 37000, 0);
      return 2380275722;
    }
  }

  return v18;
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
  v12 = strlen(__s);
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
      strncpy(v17, __s, *a4)[*a4] = 0;
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
          strncpy(v21, &__s[v18], *a6)[*a6] = 0;
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
    v8 = *(a1 + 1312);
    v9 = g_posparser_FeatureNames[a2];
    v10 = a4;
    v6 = 0;
    while (strcmp(*(v8 + 8 * v6), v9))
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

uint64_t posparser_DumpFeatureVectorAndResult(uint64_t a1, char *a2, char **a3, char *a4, char **a5, _DWORD *a6, unsigned int a7, int a8, __int16 a9, char *a10)
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
                      result = 0;
                      **a5 = 0;
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

uint64_t posparser_add2Str(uint64_t a1, char **a2, _DWORD *a3, char *__s)
{
  v8 = strlen(__s);
  v9 = *a3;
  v10 = *a2;
  v11 = strlen(*a2);
  if (v8 >= v9 - v11)
  {
    if ((v8 - v9 + v11) <= 0x80)
    {
      v12 = 128;
    }

    else
    {
      v12 = v8 - v9 + v11;
    }

    v13 = heap_Realloc(*(a1 + 8), v10, (v9 + v12 + 1));
    if (!v13)
    {
      log_OutPublic(*(a1 + 32), "POSPARSER", 68000, 0);
      return 2687508490;
    }

    v10 = v13;
    *a2 = v13;
    *a3 += v12;
  }

  if (*v10)
  {
    strcat(v10, __s);
  }

  else
  {
    strcpy(v10, __s);
  }

  return 0;
}

uint64_t posparser_setFeature(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5, unsigned int a6, int a7)
{
  v32 = 0;
  result = posparser_isFeatureRequired(a1, a3, &v32, a6, a7);
  if (result)
  {
    if (!*a5)
    {
      result = 0;
      **(a4 + 8 * v32) = 61;
      return result;
    }

    v14 = v32;
    if (strlen(a5) <= 0x40)
    {
      v16 = *(a4 + 8 * v32);
    }

    else
    {
      v15 = strlen(a5);
      v16 = heap_Realloc(*(a2 + 8), *(a4 + 8 * v32), (v15 + 1));
      if (!v16)
      {
        log_OutPublic(*(a2 + 32), "POSPARSER", 68000, 0);
        return 2687508490;
      }

      *(a4 + 8 * v14) = v16;
    }

    strcpy(v16, a5);
    if (a7)
    {
      return 0;
    }

    v17 = *(a1 + 1336);
    if (!v17)
    {
      return 0;
    }

    v18 = *(a4 + 8 * v14);
    v19 = strlen(g_posparser_FeatureNames[a3]);
    v20 = 0;
    v21 = *(a1 + 1328);
    v22 = *(*(a1 + 1312) + 8 * v14);
    while (1)
    {
      v23 = v20;
      if (!strncmp(*(v21 + 16 * v20), v22, v19))
      {
        break;
      }

      v20 = v23 + 1;
      if (v17 <= (v23 + 1))
      {
        return 0;
      }
    }

    v24 = *(v21 + 16 * v23 + 8);
    v25 = strstr(v24, v18);
    if (v25)
    {
      v26 = v25;
      v27 = strlen(v18);
      v28 = strlen(v24);
      v29 = v28;
      v30 = &v24[v28];
      while (v26 != v24 || v29 != v27 && (v29 <= v27 + 1 || v26[v27] != 32))
      {
        if (v26 > v24)
        {
          v31 = &v26[v27];
          if (v30 > (v31 + 1) && *v31 == 32)
          {
            if (*(v26 - 1) == 32)
            {
              return 0;
            }
          }

          else if (v30 == v31)
          {
            return 0;
          }
        }

        v26 = strstr(&v26[v27], v18);
        if (!v26)
        {
          goto LABEL_29;
        }
      }

      return 0;
    }

LABEL_29:
    result = 0;
    *v18 = 61;
  }

  return result;
}

uint64_t posparser_initFeatureVector(uint64_t a1, void *a2, unsigned int a3)
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

  log_OutPublic(*(a1 + 32), "POSPARSER", 68000, 0);
  return 2687508490;
}

uint64_t posparser_getIgtreeBrkStrs(uint64_t a1, char *a2, char *a3, unint64_t a4)
{
  *v9 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v9);
  if ((result & 0x80000000) == 0)
  {
    result = brokeraux_ComposeBrokerString(a1, "diacritizerOOVPOS_igtree", 1, 1, *v9, 0, 0, a2, a4);
    if ((result & 0x80000000) == 0)
    {
      return brokeraux_ComposeBrokerString(a1, "diacritizerKNOWNPOS_igtree", 1, 1, *v9, 0, 0, a3, a4);
    }
  }

  return result;
}

uint64_t getPosparserIGTreesAndDict(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t *a8, uint64_t *a9, _DWORD *a10, uint64_t a11, _DWORD *a12)
{
  v35 = *MEMORY[0x1E69E9840];
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
    __strcpy_chk();
    __strcat_chk();
    v20 = (*(a6 + 72))(a4, a5, v34, &v31);
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

  IgtreeBrkStrs = posparser_getIgtreeBrkStrs(a1, v34, v33, 0x100uLL);
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

  if ((ssftriff_reader_ObjOpen(a2, a3, 2, v34, "IGTR", 1031, v32) & 0x80000000) != 0)
  {
    v19 = 2687508480;
    *a8 = 0;
    log_OutPublic(*(a1 + 32), "POSPARSER", 68005, "%s%s", "treename:", v34);
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

uint64_t posparser_doPatternMatching(uint64_t a1, char *__dst, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v170 = *MEMORY[0x1E69E9840];
  v165 = 0;
  v166 = 0;
  v163 = 0;
  __s2 = 0;
  if (!a5)
  {
    return v5;
  }

  v7 = 0;
  v8 = 0;
  v151 = 0;
  v9 = 0;
  v150 = 0;
  v168 = 0;
  v167 = 0;
  while (1)
  {
    v10 = v9;
    v11 = a4 + 104 * v9;
    if (*(v11 + 32))
    {
      v134 = v7;
      v12 = a4;
      log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "word %d not sent to pattern matching since found in dict", v134);
      a4 = v12;
      v10 = *(v11 + 72);
      v9 = *(v11 + 72);
LABEL_11:
      v13 = a4 + 104 * v10;
      if (*(v13 + 32))
      {
        *(v13 + 72) = v9;
      }

      goto LABEL_13;
    }

    if (*(v11 + 88) || *(v11 + 80) || *(v11 + 84) || *(v11 + 92) || *(v11 + 12) || *(v11 + 74))
    {
      goto LABEL_11;
    }

    v135 = v5;
    v138 = a4;
    if (*(a3 + 62))
    {
      break;
    }

    v156 = __dst;
    v16 = *(v11 + 8);
    if (v16 >= *(v11 + 10))
    {
      v17 = 0;
    }

    else
    {
      v17 = 0;
      do
      {
        v18 = *(a3 + 104);
        if (v8 >= v18)
        {
          v19 = 0;
        }

        else
        {
          v19 = 0;
          v20 = a3[25];
          v21 = v8;
          v152 = v16;
          do
          {
            v22 = *(v20 + 6 * v21);
            if (v22 > *(v11 + 10))
            {
              break;
            }

            v23 = v21;
            if (v16 == v22)
            {
              if (*(a3 + 49) > v17)
              {
                v144 = v8;
                v24 = 0;
                while (1)
                {
                  v20 = a3[25];
                  if (strlen((v20 + 6 * v23 + 2)) <= v24)
                  {
                    break;
                  }

                  v25 = (v17 + 1);
                  v156[v17] = *(v20 + 6 * v23 + v24++ + 2);
                  v26 = v24 + (v17 + 1);
                  v17 = v25;
                  if (v26 >= *(a3 + 49))
                  {
                    v20 = a3[25];
                    v17 = v25;
                    break;
                  }
                }

                v18 = *(a3 + 104);
                v8 = v144;
                a4 = v138;
                v16 = v152;
              }

              v19 = *(v20 + 6 * v23 + 2);
            }

            else if (*(v11 + 8) >= v22)
            {
              v8 = v21;
            }

            v21 = v23 + 1;
          }

          while (v23 + 1 < v18);
        }

        v27 = *(a1 + v16);
        if (v27 != 65 || (v28 = v19 - 66, v28 > 0x16) || ((1 << v28) & 0x400081) == 0 || !*(a3 + 38))
        {
          if (*(a3 + 49) > v17)
          {
            v156[v17] = v27;
            v17 = (v17 + 1);
          }
        }

        ++v16;
      }

      while (v16 < *(v11 + 10));
      LODWORD(v16) = v16;
    }

    v29 = *(a3 + 104);
    v30 = v8;
    v31 = v17;
    v32 = v17;
    __dst = v156;
    v145 = v8;
    v153 = v16;
    if (v8 < v29)
    {
      while (1)
      {
        v33 = *(a3[25] + 6 * v30);
        if (v33 > *(v11 + 10))
        {
          break;
        }

        v34 = v30;
        if (v33 == v16 && *(a3 + 49) > v31)
        {
          v35 = 0;
          while (1)
          {
            v36 = a3[25];
            if (strlen((v36 + 6 * v34 + 2)) <= v35)
            {
              break;
            }

            v37 = (v31 + 1);
            v156[v31] = *(v36 + 6 * v34 + v35++ + 2);
            v38 = v35 + (v31 + 1);
            v31 = v37;
            if (v38 >= *(a3 + 49))
            {
              goto LABEL_56;
            }
          }

          v37 = v31;
LABEL_56:
          __dst = v156;
          v29 = *(a3 + 104);
          v31 = v37;
          v8 = v145;
          a4 = v138;
          LODWORD(v16) = v153;
        }

        v30 = v34 + 1;
        v32 = v31;
        if (v34 + 1 >= v29)
        {
          goto LABEL_60;
        }
      }

      v32 = v31;
    }

LABEL_60:
    v151 = v32;
    if (*(a3 + 49) != v32)
    {
      __dst[v32] = 0;
      goto LABEL_63;
    }

    LODWORD(v5) = v135;
LABEL_13:
    v7 = ++v9;
    if (v9 >= v5)
    {
      goto LABEL_211;
    }
  }

  v14 = *(v11 + 96);
  strncpy(__dst, (a1 + *(v11 + 8)), *(v11 + 10) - *(v11 + 8));
  __dst[*(v11 + 10) - *(v11 + 8)] = 0;
  if (v14)
  {
    v15 = posparser_ExtractPunctuation(a3, __dst, &v166, &v165, &__s2, &v163);
    if ((v15 & 0x80000000) != 0)
    {
      v150 = v15;
LABEL_211:
      if (v166)
      {
        heap_Free(*(*a3 + 8), v166);
      }

      v5 = v150;
      if (__s2)
      {
        heap_Free(*(*a3 + 8), __s2);
      }

      return v5;
    }

    strcpy(__dst, *(v11 + 96));
  }

LABEL_63:
  log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "word %d (%s) sent to pattern matching", v7, __dst);
  v39 = 1;
  v146 = v8;
  while (2)
  {
    strcpy(v169, "diac_decomp_");
    v136 = v39;
    LH_itoa(v39, v162, 0xAu);
    __strcat_chk();
    log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "%s L1: %s", v169, __dst);
    v40 = strlen(__dst);
    v41 = (*(a3[7] + 120))(a3[5], a3[6], 0, __dst, v40);
    if ((v41 & 0x80000000) != 0)
    {
      return v41;
    }

    if (((*(a3[7] + 80))(a3[5], a3[6], v169) & 0x80000000) != 0)
    {
      LODWORD(v5) = v135;
      if (v136 == 1)
      {
        return 0;
      }

      v150 = 0;
LABEL_190:
      if (!*(v11 + 32))
      {
        v128 = *(v11 + 24);
        if (v128)
        {
          heap_Free(*(*a3 + 8), v128);
          *(v11 + 24) = 0;
        }
      }

      if (*(a3 + 62) == 1)
      {
        a4 = v138;
        if (*(v11 + 96) && v166 | __s2)
        {
          if (*(v11 + 32))
          {
            v129 = __dst;
            v130 = 0;
            v131 = 8;
            do
            {
              if (v166)
              {
                v132 = strlen(*(*(v11 + 24) + v131));
                v8 = v146;
                memmove((*(*(v11 + 24) + v131) + v165), *(*(v11 + 24) + v131), v132 + 1);
                memcpy(*(*(v11 + 24) + v131), v166, v165);
                a4 = v138;
              }

              if (__s2)
              {
                strcat(*(*(v11 + 24) + v131), __s2);
                a4 = v138;
              }

              ++v130;
              v131 += 16;
            }

            while (v130 < *(v11 + 32));
            v151 = v130;
            LODWORD(v5) = v135;
            __dst = v129;
          }

          else
          {
            v151 = 0;
          }
        }
      }

      else
      {
        a4 = v138;
      }

      goto LABEL_11;
    }

    v42 = (*(a3[7] + 128))(a3[5], a3[6], 0, &v168, &v167);
    v5 = v42;
    if ((v42 & 0x80000000) != 0)
    {
      return v5;
    }

    v150 = v42;
    v168[v167] = 0;
    log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "%s O1: %s", v169, v168);
    v43 = v168;
    v44 = *v168;
    if (v44 != 91 && v44 != 47)
    {
      LODWORD(v5) = v135;
      v8 = v146;
      goto LABEL_185;
    }

    v45 = &v168[v167];
    v46 = *(v45 - 1);
    v47 = v136;
    if (*(v45 - 1) && v46 != 93 && v46 != 47)
    {
      LODWORD(v5) = v135;
      v8 = v146;
      goto LABEL_186;
    }

    v161 = 0;
    if (v168 >= v45)
    {
      v49 = 1;
      v48 = 1;
    }

    else
    {
      v48 = 1;
      v49 = 1;
      do
      {
        v50 = *v43;
        if ((v50 - 44) <= 0x31 && ((1 << (v50 - 44)) & 0x2800000000009) != 0)
        {
          v52 = v50 == 44;
          v53 = v50 == 44 ? 1 : v48;
          v49 *= v53;
          if (v52)
          {
            ++v48;
          }

          else
          {
            v48 = 1;
          }

          v54 = strchr(v43, 58);
          if (v54)
          {
            v43 = v54 - 1;
            do
            {
              v55 = v43[2];
              ++v43;
              v55 -= 44;
              v56 = v55 > 0x31;
              v57 = (1 << v55) & 0x2800000000009;
            }

            while (v56 || v57 == 0);
          }
        }

        ++v43;
      }

      while (v43 < v45);
    }

    v139 = v48;
    log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "%d decomposition(s) found", v49);
    v59 = *a3;
    if (v49 > 0x2710)
    {
      log_OutText(*(v59 + 32), "POSPARSER", 5, 0, "More than 10000 decompositions found, invalidated the results of current depes grammar");
      LODWORD(v5) = v135;
      v8 = v146;
      goto LABEL_185;
    }

    v60 = heap_Realloc(*(v59 + 8), *(v11 + 24), 16 * (v49 + *(v11 + 32)));
    v8 = v146;
    if (v60)
    {
      *(v11 + 24) = v60;
      v5 = *(v11 + 32);
      if (!v49)
      {
        goto LABEL_102;
      }

      do
      {
        v61 = heap_Alloc(*(*a3 + 8), (v165 + v167 + v163));
        *(*(v11 + 24) + 16 * v5 + 8) = v61;
        if (!v61)
        {
          goto LABEL_206;
        }

        *v61 = 0;
        v62 = heap_Alloc(*(*a3 + 8), v167);
        *(*(v11 + 24) + 16 * v5) = v62;
        if (!v62)
        {
          log_OutPublic(*(*a3 + 32), "POSPARSER", 68000, 0);
          heap_Free(*(*a3 + 8), *(*(v11 + 24) + 16 * v5 + 8));
          return 2687508490;
        }

        *v62 = 0;
        LOWORD(v5) = v5 + 1;
      }

      while (v49 + *(v11 + 32) > v5);
      v5 = *(v11 + 32);
LABEL_102:
      v63 = v167;
      v157 = __dst;
      if (!v167)
      {
        v88 = 1;
        v64 = 1;
        goto LABEL_143;
      }

      v64 = 1;
      v65 = v168;
      v66 = v168;
      do
      {
        v67 = *v66;
        if ((v67 - 44) <= 0x31 && ((1 << (v67 - 44)) & 0x2800000000009) != 0)
        {
          v69 = v67 == 44;
          if (v67 == 44)
          {
            v70 = v151;
          }

          else
          {
            v70 = 0;
          }

          v151 = v70;
          if (v69)
          {
            v71 = 1;
          }

          else
          {
            v71 = v139;
          }

          v147 = v71 * v64;
          if (v69)
          {
            v72 = v139 + 1;
          }

          else
          {
            v72 = 1;
          }

          v139 = v72;
          v73 = strchr(v66, 58);
          if (v73)
          {
            v74 = v66;
            *v73 = 0;
            v75 = v73 + 1;
            while (1)
            {
              v76 = v73[1];
              if ((v76 - 44) <= 0x31 && ((1 << (v76 - 44)) & 0x2800000000009) != 0)
              {
                break;
              }

              ++v73;
            }

            v73[1] = 0;
            v78 = *(v11 + 32);
            v79 = v151 + v147;
            v137 = v73;
            if (v76 == 44)
            {
              v80 = v78 + v151;
              v81 = v79 + v78;
              if (v79 + v78 > (v78 + v151))
              {
                v82 = (v78 + v151);
                do
                {
                  v83 = 16 * (v82 + v147);
                  strcpy(*(*(v11 + 24) + v83 + 8), *(*(v11 + 24) + 16 * v80 + 8));
                  strcpy(*(*(v11 + 24) + v83), *(*(v11 + 24) + 16 * v80++));
                  v82 = v80;
                  v78 = *(v11 + 32);
                  v81 = v79 + v78;
                }

                while (v79 + v78 > v80);
              }
            }

            else
            {
              v81 = v79 + v78;
            }

            v84 = v78 + v151;
            while (v81 > v84)
            {
              v85 = v84;
              v86 = 16 * v84;
              strcat(*(*(v11 + 24) + v86 + 8), v74 + 1);
              v87 = *(*(v11 + 24) + v86);
              if (*v87)
              {
                *&v87[strlen(*(*(v11 + 24) + v86))] = 43;
                v87 = *(*(v11 + 24) + v86);
              }

              strcat(v87, v75);
              v84 = v85 + 1;
              v81 = v79 + *(v11 + 32);
            }

            v8 = v146;
            v64 = v147;
            v151 = (v147 + v151);
            v66 = v137;
            v137[1] = v76;
            v65 = v168;
            v63 = v167;
          }

          else
          {
            v64 = v147;
          }
        }

        ++v66;
      }

      while (v66 < &v65[v63]);
      v5 = *(v11 + 32);
      v88 = v64;
      if (v64)
      {
        __dst = v157;
LABEL_143:
        v89 = v5;
        v90 = v5;
        do
        {
          if (v90)
          {
            v142 = v88;
            v148 = v64;
            v91 = 0;
            v154 = v90;
            v92 = v90;
            v93 = *(v11 + 24);
            v94 = *(v93 + 16 * v90);
            v95 = (v93 + 8);
            while (1)
            {
              v96 = *(v95 - 1);
              if (!strcmp(v94, v96))
              {
                break;
              }

              ++v91;
              v95 += 2;
              if (v91 >= v92)
              {
                v90 = (v154 + 1);
                v97 = v91;
                __dst = v157;
                v8 = v146;
                v64 = v148;
                goto LABEL_157;
              }
            }

            v98 = *(v93 + 16 * v92 + 8);
            v99 = *v95;
            if (strcmp(v98, *v95))
            {
              log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "FEATUREVECTOR:DUPLICATE:%s POS %s, different DIA %s vs %s", v157, v96, v98, v99);
            }

            log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "removing duplicate %d %s,%s", v89, *(*(v11 + 24) + 16 * v92), *(*(v11 + 24) + 16 * v92 + 8));
            v100 = v142;
            v101 = v142 - 1 + *(v11 + 32);
            v97 = v154;
            __dst = v157;
            if (v101 > v154)
            {
              LODWORD(v97) = v154;
              v102 = v154;
              do
              {
                v103 = 16 * (v102 + 1);
                strcpy(*(*(v11 + 24) + 16 * v97 + 8), *(*(v11 + 24) + v103 + 8));
                strcpy(*(*(v11 + 24) + 16 * v97), *(*(v11 + 24) + v103));
                v97 = (v97 + 1);
                v102 = v97;
                v101 = v142 - 1 + *(v11 + 32);
              }

              while (v101 > v97);
              v100 = v142;
            }

            heap_Free(*(*a3 + 8), *(*(v11 + 24) + 16 * v101 + 8));
            heap_Free(*(*a3 + 8), *(*(v11 + 24) + 16 * (v100 + *(v11 + 32)) - 16));
            v8 = v146;
            v64 = v148 - 1;
            v90 = v154;
          }

          else
          {
            v97 = 0;
            v90 = 1;
          }

LABEL_157:
          v89 = v90;
          v5 = *(v11 + 32);
          v88 = v64;
          v104 = v5 + v64;
        }

        while (v104 > v90);
      }

      else
      {
        v104 = v5 + v64;
        v64 = 0;
        v97 = v151;
        __dst = v157;
      }

      v140 = v97;
      v105 = v5;
      v56 = v104 > v5;
      LODWORD(v5) = v135;
      if (v56)
      {
LABEL_162:
        v149 = v64;
        v159 = 0;
        __s = 0;
        v106 = 16 * v105;
        v155 = v105;
        log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "DIA %s", *(*(v11 + 24) + v106 + 8));
        log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "POS %s", *(*(v11 + 24) + v106));
        if ((ssftmap_IteratorOpen(a3[32], 0, 0, &v161) & 0x80000000) != 0)
        {
          __dst = v157;
          goto LABEL_177;
        }

        if ((ssftmap_IteratorNext(v161, &v159, &__s) & 0x80000000) != 0)
        {
          __dst = v157;
          goto LABEL_176;
        }

        v143 = v88;
        while (1)
        {
          v107 = *(*(v11 + 24) + v106);
          v108 = v159;
          v109 = strstr(v107, (v159 + 1));
          if (v109)
          {
            if (*v108 == 70)
            {
              strcpy(v107, __s);
              log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "FULL MAPPING POS %s", *(*(v11 + 24) + v106));
              if (strcmp(__s, "INVALID"))
              {
LABEL_175:
                LODWORD(v5) = v135;
                __dst = v157;
                v8 = v146;
                goto LABEL_176;
              }

              v122 = v143;
              v123 = v143 - 1 + *(v11 + 32);
              v124 = v155;
              __dst = v157;
              v125 = v155;
              if (v123 > v155)
              {
                v126 = v155;
                LODWORD(v125) = v155;
                do
                {
                  v127 = 16 * (v126 + 1);
                  strcpy(*(*(v11 + 24) + 16 * v125 + 8), *(*(v11 + 24) + v127 + 8));
                  strcpy(*(*(v11 + 24) + 16 * v125), *(*(v11 + 24) + v127));
                  v125 = (v125 + 1);
                  v126 = v125;
                  v123 = v143 - 1 + *(v11 + 32);
                }

                while (v123 > v125);
                v122 = v143;
                v124 = v155;
              }

              v140 = v125;
              heap_Free(*(*a3 + 8), *(*(v11 + 24) + 16 * v123 + 8));
              heap_Free(*(*a3 + 8), *(*(v11 + 24) + 16 * (v122 + *(v11 + 32)) - 16));
              v8 = v146;
              --v149;
              LODWORD(v155) = v124 - 1;
              LODWORD(v5) = v135;
LABEL_176:
              ssftmap_IteratorClose(v161);
LABEL_177:
              v105 = (v155 + 1);
              v64 = v149;
              v88 = v149;
              v104 = *(v11 + 32) + v149;
              if (v104 <= (v155 + 1))
              {
                v97 = v140;
                break;
              }

              goto LABEL_162;
            }

            v110 = v109;
            v111 = strlen(__s);
            v112 = strlen((v108 + 1));
            v113 = strlen(v110);
            memmove(&v110[v111], &v110[v112], v113 - v112 + 1);
            v114 = strlen(__s);
            strncpy(v110, __s, v114);
            log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "PARTIAL MAPPING POS %s", *(*(v11 + 24) + v106));
            v115 = v159;
            v116 = strstr(v110 + 1, (v159 + 1));
            if (v116)
            {
              v117 = v116;
              do
              {
                v118 = strlen(__s);
                v119 = strlen((v115 + 1));
                v120 = strlen(v117);
                memmove(&v117[v118], &v117[v119], v120 - v119 + 1);
                v121 = strlen(__s);
                strncpy(v117, __s, v121);
                log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "PARTIAL MAPPING POS %s", *(*(v11 + 24) + v106));
                v115 = v159;
                v117 = strstr(v117 + 1, (v159 + 1));
              }

              while (v117);
            }
          }

          if ((ssftmap_IteratorNext(v161, &v159, &__s) & 0x80000000) != 0)
          {
            goto LABEL_175;
          }
        }
      }

      v151 = v97;
      *(v11 + 32) = v104;
      log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "%d decomposition(s) left after invalidation step", v88);
      log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "%d decomposition(s) in total", *(v11 + 32));
LABEL_185:
      v47 = v136;
LABEL_186:
      v39 = v47 + 1;
      if (v39 == 255)
      {
        goto LABEL_190;
      }

      continue;
    }

    break;
  }

LABEL_206:
  log_OutPublic(*(*a3 + 32), "POSPARSER", 68000, 0);
  return 2687508490;
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
      v5 = strchr(v4, 124);
      if (v5)
      {
        *v5 = 0;
        v6 = (v5 + 1);
        v7 = strchr(v5 + 1, 124);
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
  v12 = 0;
  v11 = -1;
  v5 = (*(a1[3] + 96))(a1[1], a1[2], "fecfg", a2, &v12, &v11, &__c);
  if ((v5 & 0x80000000) == 0 && v11)
  {
    v6 = *v12;
    v7 = strchr(*v12, __c);
    if (v7)
    {
      *v7 = 0;
      v6 = *v12;
    }

    v8 = strlen(v6);
    v9 = heap_Calloc(*(*a1 + 8), 1, (v8 + 1));
    if (v9)
    {
      *a3 = strcpy(v9, *v12);
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
  v17 = 0;
  v16 = -1;
  *a3 = 0;
  v5 = (*(a1[3] + 96))(a1[1], a1[2], "fecfg", a2, &v17, &v16, &__c);
  if ((v5 & 0x80000000) == 0 && v16)
  {
    v6 = *v17;
    v7 = strchr(*v17, __c);
    if (v7)
    {
      *v7 = 0;
    }

    if (v6)
    {
      v8 = 0;
      do
      {
        v9 = strchr(v6, 95);
        v10 = v9;
        if (v9)
        {
          *v9 = 0;
        }

        v11 = strlen(v6);
        v12 = heap_Calloc(*(*a1 + 8), 1, (v11 + 1));
        if (!v12)
        {
          log_OutPublic(*(*a1 + 32), "POSPARSER", 68000, 0);
          return 2687508490;
        }

        v13 = v12;
        strcpy(v12, v6);
        if (v8 > 1u)
        {
          if (v8 == 2)
          {
            if (!strcmp(v13, "ENDWORD"))
            {
              v14 = 1;
LABEL_22:
              *a3 = v14;
            }

            else if (!strcmp(v13, "IFNOTFOLLOWEDBY"))
            {
              v14 = 2;
              goto LABEL_22;
            }

LABEL_23:
            heap_Free(*(*a1 + 8), v13);
            goto LABEL_24;
          }

          if (v8 != 3)
          {
            goto LABEL_23;
          }

          *(a3 + 40) = v13;
          *(a3 + 48) = strlen(v13);
        }

        else if (v8)
        {
          if (v8 != 1)
          {
            goto LABEL_23;
          }

          *(a3 + 24) = v13;
          *(a3 + 32) = strlen(v13);
        }

        else
        {
          *(a3 + 8) = v13;
          *(a3 + 16) = strlen(v13);
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
    v6 = strchr(*v12, __c);
    if (v6)
    {
      *v6 = 0;
    }

    if (v5)
    {
      for (i = 0; ; ++i)
      {
        v8 = strchr(v5, 95);
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
  v4 = *a2;
  if (v4 >= 2)
  {
    v7 = result;
    v8 = 0;
    v5 = 0;
    v9 = 0;
    do
    {
      v10 = *(v7 + 8 * v8);
      result = strlen(v10);
      if (result)
      {
        v11 = 0;
        v12 = 0;
        do
        {
          if (v10[v12] == a3)
          {
            ++v11;
          }

          ++v12;
        }

        while (v11 <= 4u && result > v12);
        if (v11 == 5 && result > v12)
        {
          v15 = strchr(&v10[v12], a3);
          if (v15)
          {
            *v15 = 0;
            v10 = *(v7 + 8 * v8);
            v4 = *a2;
          }

          result = atoi(&v10[v12]);
          if (result > v9)
          {
            v9 = result;
            v5 = v8;
          }
        }
      }

      ++v8;
    }

    while (v8 < v4);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
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

__n128 posPInsertTOKMarker(uint64_t a1, _WORD *a2, __n128 *a3)
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
      if (a3->n128_u32[3] < v8)
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

  v9 = (a1 + 32 * v7);
  memmove(&v9[2], v9, 32 * (v5 - v7));
  result = a3[1];
  *v9 = *a3;
  v9[1] = result;
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
  v5 = strlen(a2);
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
    if (v8 == v4 && !strncmp(a1, &a2[v7], v8))
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
  v8 = __s;
  v12 = *a2;
  v13 = strlen(__s);
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
  while (v8[v19 - 1] != 32)
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
    LOWORD(v8) = a4;
    v23 = a4;
  }

  else
  {
    v21 = v8 + 1;
    v22 = v8[a4 + 1];
    LOWORD(v8) = a4;
    v23 = a4;
    if (v22 != 32)
    {
      LOWORD(v8) = a4;
      do
      {
        v8 = (v8 + 1);
        v23 = v8;
      }

      while (v13 > v8 && v8[v21] != 32);
    }
  }

  v39 = v18;
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
  v27 = v26[1];
  v28 = v26[2];
  v29 = v23 - a4;
  if (a4 == v8)
  {
    v30 = 1;
  }

  else
  {
    v30 = v29;
  }

  v26[2] = a4 - v20;
  v26[4] = a4 - v20;
  v31 = *(v12 + 12);
  v32 = heap_Realloc(*(*a1 + 8), v12, 32 * *a3 + 32);
  if (v32)
  {
    v33 = v32;
    v34 = v27 - v29 + v28;
    v35 = a5 + a4 + v31;
    v36 = *a3;
    v37 = (v32 + 32 * v16);
    if (v36 != v39)
    {
      memmove(v37 + 8, v37, 32 * (v36 - v16));
    }

    result = 0;
    *v37 = 1;
    v37[1] = v34;
    v37[2] = v30;
    v37[3] = v35;
    v37[4] = v29;
    *(v37 + 5) = 0;
    v37[7] = 0;
    ++*a3;
    *a2 = v33;
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
  v91 = *MEMORY[0x1E69E9840];
  v88 = 0;
  v15 = 0;
  if (posparser_isFeatureRequired(a3, 0, &v88, a8, *(a1 + 236)) == 1)
  {
    v15 = posparser_setFeature(a3, *a1, 0, a5, a2, a8, *(a1 + 236));
    if ((v15 & 0x80000000) != 0)
    {
      return v15;
    }
  }

  if (posparser_isFeatureRequired(a3, 1, &v88, a8, *(a1 + 236)) == 1)
  {
    if (a4)
    {
      v16 = a6 + 104 * (a4 - 1);
      v17 = *(v16 + 40);
      if (!v17 || strcmp(*(v16 + 40), "MULTIWORD"))
      {
        v18 = *a1;
        v19 = *(a1 + 236);
        v20 = a3;
        v21 = a5;
        v22 = v17;
        goto LABEL_19;
      }

      v23 = a4 - 1;
      if ((a4 - 1) >= -1)
      {
        v23 = -1;
      }

      v85 = v23;
      v24 = a4;
      while (1)
      {
        v25 = v24 - 1;
        if (((v24 - 1) & 0x8000) != 0)
        {
          break;
        }

        --v24;
        v26 = *(a6 + 104 * v25 + 40);
        if (!v26 || strcmp(v26, "MULTIWORD"))
        {
          goto LABEL_17;
        }
      }

      v24 = v85;
LABEL_17:
      v18 = *a1;
      v22 = *(a6 + 104 * v24 + 40);
      v19 = *(a1 + 236);
    }

    else
    {
      v18 = *a1;
      v19 = *(a1 + 236);
      v22 = "SB";
    }

    v20 = a3;
    v21 = a5;
LABEL_19:
    v15 = posparser_setFeature(v20, v18, 1, v21, v22, a8, v19);
    if ((v15 & 0x80000000) != 0)
    {
      return v15;
    }
  }

  if (posparser_isFeatureRequired(a3, 2, &v88, a8, *(a1 + 236)) != 1)
  {
    goto LABEL_35;
  }

  v27 = a4 - 2;
  if (a4 < 2)
  {
    if (a4 != 1)
    {
      goto LABEL_35;
    }

    v30 = *a1;
    v31 = *(a1 + 236);
    v34 = "SB";
  }

  else
  {
    v28 = a6 + 104 * v27;
    v29 = *(v28 + 40);
    if (!v29 || strcmp(*(v28 + 40), "MULTIWORD"))
    {
      v30 = *a1;
      v31 = *(a1 + 236);
      v32 = a3;
      v33 = a5;
      v34 = v29;
      goto LABEL_34;
    }

    v35 = a4 - 2;
    if ((v27 & 0x8000) == 0)
    {
      while (1)
      {
        v36 = *(a6 + 104 * v35 + 40);
        if (!v36 || strcmp(v36, "MULTIWORD"))
        {
          break;
        }

        v37 = v35--;
        if (v37 <= 0)
        {
          v35 = -1;
          break;
        }
      }
    }

    v30 = *a1;
    v34 = *(a6 + 104 * v35 + 40);
    v31 = *(a1 + 236);
  }

  v32 = a3;
  v33 = a5;
LABEL_34:
  v15 = posparser_setFeature(v32, v30, 2, v33, v34, a8, v31);
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

LABEL_35:
  if (posparser_isFeatureRequired(a3, 3, &v88, a8, *(a1 + 236)) == 1)
  {
    v38 = a6 + 104 * a4;
    v39 = *(v38 + 48);
    if (!v39)
    {
      v39 = *(v38 + 40);
    }

    v15 = posparser_setFeature(a3, *a1, 3, a5, v39, a8, *(a1 + 236));
    if ((v15 & 0x80000000) != 0)
    {
      return v15;
    }
  }

  v86 = a4 + 1;
  if (a4 + 1 < a7 && posparser_isFeatureRequired(a3, 4, &v88, a8, *(a1 + 236)) == 1)
  {
    v40 = a6 + 104 * v86;
    v41 = *(v40 + 48);
    if (!v41)
    {
      v41 = *(v40 + 40);
    }

    v15 = posparser_setFeature(a3, *a1, 4, a5, v41, a8, *(a1 + 236));
    if ((v15 & 0x80000000) != 0)
    {
      return v15;
    }
  }

  if (posparser_isFeatureRequired(a3, 9, &v88, a8, *(a1 + 236)) != 1 && posparser_isFeatureRequired(a3, 10, &v88, a8, *(a1 + 236)) != 1 && posparser_isFeatureRequired(a3, 11, &v88, a8, *(a1 + 236)) != 1 && posparser_isFeatureRequired(a3, 12, &v88, a8, *(a1 + 236)) != 1 && posparser_isFeatureRequired(a3, 13, &v88, a8, *(a1 + 236)) != 1 && posparser_isFeatureRequired(a3, 14, &v88, a8, *(a1 + 236)) != 1 && posparser_isFeatureRequired(a3, 15, &v88, a8, *(a1 + 236)) != 1 && posparser_isFeatureRequired(a3, 16, &v88, a8, *(a1 + 236)) != 1)
  {
    goto LABEL_102;
  }

  v42 = strlen(a2);
  v43 = Utf8_LengthInUtf8chars(a2, v42);
  v44 = posparser_setFeature(a3, *a1, 9, a5, "=", a8, *(a1 + 236));
  if ((v44 & 0x80000000) != 0)
  {
    return v44;
  }

  v44 = posparser_setFeature(a3, *a1, 10, a5, "=", a8, *(a1 + 236));
  if ((v44 & 0x80000000) != 0)
  {
    return v44;
  }

  v44 = posparser_setFeature(a3, *a1, 11, a5, "=", a8, *(a1 + 236));
  if ((v44 & 0x80000000) != 0)
  {
    return v44;
  }

  v44 = posparser_setFeature(a3, *a1, 12, a5, "=", a8, *(a1 + 236));
  if ((v44 & 0x80000000) != 0)
  {
    return v44;
  }

  v44 = posparser_setFeature(a3, *a1, 13, a5, "=", a8, *(a1 + 236));
  if ((v44 & 0x80000000) != 0)
  {
    return v44;
  }

  v44 = posparser_setFeature(a3, *a1, 14, a5, "=", a8, *(a1 + 236));
  if ((v44 & 0x80000000) != 0)
  {
    return v44;
  }

  v44 = posparser_setFeature(a3, *a1, 15, a5, "=", a8, *(a1 + 236));
  if ((v44 & 0x80000000) != 0)
  {
    return v44;
  }

  v15 = posparser_setFeature(a3, *a1, 16, a5, "=", a8, *(a1 + 236));
  if ((v15 & 0x80000000) == 0)
  {
    v45 = v43;
    if (v43)
    {
      v46 = v43 - 2;
      v77 = v43 != 2;
      v78 = v43 != 3;
      v80 = v43 != 4;
      v79 = v43;
      v47 = 0;
      v48 = 0;
      v82 = v45;
      while (1)
      {
        v83 = v47;
        v84 = v46;
        v81 = v48;
        if (v45 != 1 && !v48)
        {
          v89 = 0;
          v90 = 0;
          utf8_getUTF8Char(a2, 0, &v89);
          v49 = posparser_setFeature(a3, *a1, 9, a5, &v89, a8, *(a1 + 236));
          v46 = v84;
          v15 = v49;
          v50 = v80;
          v51 = v77;
          v52 = v78;
          if ((v49 & 0x80000000) != 0)
          {
            return v15;
          }

          goto LABEL_80;
        }

        if (v45 != 2 && v48 == 1)
        {
          break;
        }

        if (v45 != 3 && v48 == 2)
        {
          v89 = 0;
          v90 = 0;
          utf8_determineUTF8CharLength(a2[v47]);
          __strncpy_chk();
          v15 = posparser_setFeature(a3, *a1, 11, a5, &v89, a8, *(a1 + 236));
          if ((v15 & 0x80000000) != 0)
          {
            return v15;
          }

          v51 = 1;
          v50 = v80;
          goto LABEL_78;
        }

        if (v45 != 4)
        {
          v50 = v80;
          v51 = v77;
          v52 = v78;
          if (v48 != 3)
          {
            goto LABEL_80;
          }

          v89 = 0;
          v90 = 0;
          utf8_determineUTF8CharLength(a2[v83]);
          __strncpy_chk();
          v15 = posparser_setFeature(a3, *a1, 12, a5, &v89, a8, *(a1 + 236));
          if ((v15 & 0x80000000) != 0)
          {
            return v15;
          }

          v50 = 1;
          v51 = 1;
LABEL_78:
          v52 = 1;
LABEL_79:
          v46 = v84;
          goto LABEL_80;
        }

        v50 = v80;
        v51 = v77;
        v52 = v78;
LABEL_80:
        if (v82 != 1 && v46 == -1)
        {
          v89 = 0;
          v90 = 0;
          v53 = v50;
          utf8_getUTF8Char(a2, v83, &v89);
          v54 = posparser_setFeature(a3, *a1, 13, a5, &v89, a8, *(a1 + 236));
          v50 = v53;
          v46 = v84;
          v15 = v54;
          if ((v54 & 0x80000000) != 0)
          {
            return v15;
          }
        }

        v55 = v51 ^ 1;
        if (v46)
        {
          v55 = 1;
        }

        if (v55)
        {
          v58 = v52 ^ 1;
          if (v46 != 1)
          {
            v58 = 1;
          }

          v56 = v83;
          if (v58)
          {
            if (v46 == 2)
            {
              v59 = v50;
            }

            else
            {
              v59 = 0;
            }

            v57 = v83;
            v45 = v82;
            if (v59)
            {
              v89 = 0;
              v90 = 0;
              __strcpy_chk();
              v15 = posparser_setFeature(a3, *a1, 16, a5, &v89, a8, *(a1 + 236));
              if ((v15 & 0x80000000) != 0)
              {
                return v15;
              }

              v56 = v83;
              v57 = v83;
            }
          }

          else
          {
            v89 = 0;
            v90 = 0;
            __strcpy_chk();
            v15 = posparser_setFeature(a3, *a1, 15, a5, &v89, a8, *(a1 + 236));
            v45 = v82;
            if ((v15 & 0x80000000) != 0)
            {
              return v15;
            }

            v57 = v83;
          }
        }

        else
        {
          v89 = 0;
          v90 = 0;
          v56 = v83;
          __strcpy_chk();
          v15 = posparser_setFeature(a3, *a1, 14, a5, &v89, a8, *(a1 + 236));
          if ((v15 & 0x80000000) != 0)
          {
            return v15;
          }

          v57 = v83;
          v45 = v82;
        }

        v47 = utf8_determineUTF8CharLength(a2[v57]) + v56;
        v48 = v81 + 1;
        v46 = v84 - 1;
        if (v81 + 1 >= v79)
        {
          goto LABEL_102;
        }
      }

      v89 = 0;
      v90 = 0;
      utf8_determineUTF8CharLength(a2[v47]);
      __strncpy_chk();
      v15 = posparser_setFeature(a3, *a1, 10, a5, &v89, a8, *(a1 + 236));
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }

      v51 = 1;
      v50 = v80;
      v52 = v78;
      goto LABEL_79;
    }

LABEL_102:
    if (posparser_isFeatureRequired(a3, 5, &v88, a8, *(a1 + 236)) != 1 || (a4 && (v60 = a6 + 104 * (a4 - 1), *(v60 + 12) != 1) && !*(v60 + 74) ? (v61 = *a1, v63 = *(a6 + 104 * (a4 - 1) + 56), v62 = *(a1 + 236)) : (v61 = *a1, v62 = *(a1 + 236), v63 = "="), v15 = posparser_setFeature(a3, v61, 5, a5, v63, a8, v62), (v15 & 0x80000000) == 0))
    {
      if (posparser_isFeatureRequired(a3, 6, &v88, a8, *(a1 + 236)) != 1 || (a4 >= 2 && (v64 = a6 + 104 * (a4 - 2), *(v64 + 12) != 1) && !*(v64 + 74) ? (v65 = *a1, v67 = *(a6 + 104 * (a4 - 2) + 56), v66 = *(a1 + 236)) : (v65 = *a1, v66 = *(a1 + 236), v67 = "="), v15 = posparser_setFeature(a3, v65, 6, a5, v67, a8, v66), (v15 & 0x80000000) == 0))
      {
        if (posparser_isFeatureRequired(a3, 7, &v88, a8, *(a1 + 236)) != 1 || (v86 < a7 && (v68 = a6 + 104 * v86, *(v68 + 12) != 1) && !*(v68 + 74) ? (v69 = *a1, v71 = *(a6 + 104 * v86 + 56), v70 = *(a1 + 236)) : (v69 = *a1, v70 = *(a1 + 236), v71 = "="), v15 = posparser_setFeature(a3, v69, 7, a5, v71, a8, v70), (v15 & 0x80000000) == 0))
        {
          if (posparser_isFeatureRequired(a3, 8, &v88, a8, *(a1 + 236)) == 1)
          {
            if (a4 + 2 >= a7 || (v72 = a6 + 104 * (a4 + 2), *(v72 + 12) == 1) || *(v72 + 74))
            {
              v73 = *a1;
              v74 = *(a1 + 236);
              v75 = "=";
            }

            else
            {
              v73 = *a1;
              v75 = *(a6 + 104 * (a4 + 2) + 56);
              v74 = *(a1 + 236);
            }

            return posparser_setFeature(a3, v73, 8, a5, v75, a8, v74);
          }
        }
      }
    }
  }

  return v15;
}

uint64_t posparser_GetPOSAndDiacritics(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char *a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned __int16 a9, unsigned __int8 a10, _DWORD *a11)
{
  v53 = 0;
  v52 = 0;
  v51 = 0;
  __s2 = 0;
  v50 = 0;
  v48 = 0;
  *a11 = 0;
  v14 = a4 + 104 * a6;
  *(v14 + 32) = 0;
  if (a9)
  {
    v15 = 0;
    for (i = 0; i != a9; ++i)
    {
      for (j = *(a8 + 8 * i); ; j = v18 + 1)
      {
        v18 = strchr(j, 32);
        if (!v18)
        {
          break;
        }

        *(v14 + 32) = ++v15;
      }
    }

    v19 = 16 * v15;
  }

  else
  {
    v19 = 0;
  }

  v20 = heap_Calloc(*(*a1 + 8), 1, v19);
  *(v14 + 24) = v20;
  if (!v20)
  {
LABEL_59:
    v40 = 2687508490;
    log_OutPublic(*(*a1 + 32), "POSPARSER", 68000, 0);
    return v40;
  }

  *(v14 + 32) = 0;
  if (!a9)
  {
    v40 = 0;
LABEL_61:
    heap_Free(*(*a1 + 8), *(v14 + 24));
    *(v14 + 24) = 0;
    goto LABEL_62;
  }

  v21 = 0;
  isReconcilable = 0;
  v22 = 0;
  do
  {
    v23 = *(a8 + 8 * v21);
    v24 = strchr(v23, a10);
    if (v24)
    {
      *v24 = 0;
      v23 = *(a8 + 8 * v21);
    }

    v45 = v21;
    if (v23)
    {
      v25 = strchr(v23, 32);
      do
      {
        if (v25)
        {
          *v25 = 0;
        }

        if (v22)
        {
          if (*(a1 + 248))
          {
            if (!v51 && (v51 = heap_Calloc(*(*a1 + 8), 1, 1)) == 0 || !__s2 && (__s2 = heap_Calloc(*(*a1 + 8), 1, 1)) == 0)
            {
              v40 = 2687508490;
              log_OutPublic(*(*a1 + 32), "POSPARSER", 68000, 0);
              goto LABEL_62;
            }

            isReconcilable = posparser_ExtractPunctuation(a1, a5, &v51, &v50, &__s2, &v48);
            if ((isReconcilable & 0x80000000) != 0)
            {
              goto LABEL_58;
            }

            v28 = strlen(v23);
            v29 = heap_Calloc(*(*a1 + 8), 1, (v50 + v28 + v48 + 1));
            *(*(v14 + 24) + 16 * *(v14 + 32) + 8) = v29;
            if (!v29)
            {
              goto LABEL_59;
            }

            if (v51)
            {
              strcpy(v29, v51);
              v29 = *(*(v14 + 24) + 16 * *(v14 + 32) + 8);
            }

            strcat(v29, v23);
            if (__s2)
            {
              strcat(*(*(v14 + 24) + 16 * *(v14 + 32) + 8), __s2);
            }

            log_OutText(*(*a1 + 32), "POSPARSER", 5, 0, "word=%s FOUND in TAG[%d] POS=%s DIA=%s", a5);
            goto LABEL_44;
          }

          v52 = 0;
          if (a2 != 1)
          {
            goto LABEL_41;
          }

          log_OutText(*(*a1 + 32), "POSPARSER", 5, 0, "FOUND %s in dict as %s - try reconcile", a5, v23);
          isReconcilable = posparser_isReconcilable(a1, a3, v23, *(v14 + 8), *(v14 + 104 * a7 + 10), &v52, &v53);
          if ((isReconcilable & 0x80000000) != 0)
          {
            goto LABEL_58;
          }

          if (v52)
          {
            if (v52 == 1 && v53)
            {
              posparser_PostProcess(a1, &v53);
              v30 = v53;
              v31 = strlen(v53);
              v32 = heap_Calloc(*(*a1 + 8), 1, (v31 + 1));
              *(*(v14 + 24) + 16 * *(v14 + 32) + 8) = v32;
              if (!v32)
              {
                goto LABEL_59;
              }

              strcpy(v32, v30);
              heap_Free(*(*a1 + 8), v30);
              v53 = 0;
              v33 = "word=%s FOUND in TAG[%d] POS=%s DIA=%s(RECONCILED)";
            }

            else
            {
LABEL_41:
              v34 = strlen(v23);
              v35 = heap_Calloc(*(*a1 + 8), 1, (v34 + 1));
              *(*(v14 + 24) + 16 * *(v14 + 32) + 8) = v35;
              if (!v35)
              {
                goto LABEL_59;
              }

              strcpy(v35, v23);
              v33 = "word=%s FOUND in TAG[%d] POS=%s DIA=%s";
            }

            v36 = (*(v14 + 24) + 16 * *(v14 + 32));
            log_OutText(*(*a1 + 32), "POSPARSER", 5, 0, v33, a5, *(v14 + 32), *v36, v36[1]);
LABEL_44:
            ++*(v14 + 32);
            if (!v25)
            {
              goto LABEL_54;
            }

            goto LABEL_45;
          }

          log_OutText(*(*a1 + 32), "POSPARSER", 5, 0, "FOUND in %s in dict, but couldnt reconcile with partial diacritics - FAIL ; skip diacritic", v23);
          heap_Free(*(*a1 + 8), *(*(v14 + 24) + 16 * *(v14 + 32)));
          *(*(v14 + 24) + 16 * *(v14 + 32)) = 0;
          if (!v25)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v26 = strlen(v23);
          v27 = heap_Calloc(*(*a1 + 8), 1, (v26 + 1));
          *(*(v14 + 24) + 16 * *(v14 + 32)) = v27;
          if (!v27)
          {
            goto LABEL_59;
          }

          strcpy(v27, v23);
          if (!v25)
          {
LABEL_54:
            ++v22;
            break;
          }
        }

LABEL_45:
        v37 = strchr(v25 + 1, 32);
        if (v22)
        {
          v38 = 0;
        }

        else
        {
          v38 = v25 + 1;
        }

        if (v37)
        {
          v23 = v25 + 1;
        }

        else
        {
          v23 = v38;
        }

        ++v22;
        v25 = v37;
      }

      while (v23);
    }

    ++v21;
  }

  while (v45 + 1 != a9);
  v39 = *(v14 + 32);
  if (!*(v14 + 32))
  {
    v40 = isReconcilable;
    goto LABEL_61;
  }

  *(v14 + 72) = a7 + a6;
  log_OutText(*(*a1 + 32), "POSPARSER", 5, 0, "FOUND WORD %s%d,%d in  POS dict with %d POS tags", a5, a6, a7, v39);
  *a11 = 1;
LABEL_58:
  v40 = isReconcilable;
LABEL_62:
  if (v51)
  {
    heap_Free(*(*a1 + 8), v51);
  }

  if (__s2)
  {
    heap_Free(*(*a1 + 8), __s2);
  }

  return v40;
}

uint64_t posparser_isReconcilable(uint64_t a1, uint64_t a2, char *__s, unsigned int a4, int a5, _DWORD *a6, uint64_t *a7)
{
  LODWORD(v9) = a5;
  v13 = strlen(__s);
  v102 = 3 * v13;
  *a6 = 1;
  v14 = heap_Calloc(*(*a1 + 8), 1, (3 * v13) + 1);
  v103 = v14;
  if (!v14)
  {
    log_OutPublic(*(*a1 + 32), "POSPARSER", 68000, 0);
    return 2687508490;
  }

  v15 = v14;
  strcpy(v14, __s);
  v101 = v13;
  if (a4 >= v9 || !v13)
  {
    goto LABEL_129;
  }

  v16 = 0;
  v17 = 0;
  v18 = a4;
  v9 = v9;
  v97 = a6;
  v98 = v9;
  while (1)
  {
    if (v16 >= v13)
    {
      goto LABEL_21;
    }

    v19 = v103;
    while (1)
    {
      v20 = *(a1 + 120) ? *(a1 + 120) : "^FNKauioR";
      if (!isCharInStr((v19 + v16), v20))
      {
        break;
      }

      v21 = Utf8_LengthInBytes((v19 + v16), 1);
LABEL_17:
      v16 += v21;
      if (v16 >= v13)
      {
        goto LABEL_20;
      }
    }

    v22 = Utf8_LengthInBytes((a2 + v18), 1);
    if (Utf8_LengthInBytes((v19 + v16), 1) == v22 && !strncmp((a2 + v18), (v19 + v16), v22))
    {
      goto LABEL_30;
    }

    if (*(a1 + 152) != 1 || *(a2 + v18) != 65)
    {
      v21 = Utf8_LengthInBytes((v19 + v16), 1);
      if ((v21 & 0xFFFE) != 0)
      {
        goto LABEL_17;
      }

      *a6 = 0;
LABEL_20:
      v9 = v98;
      goto LABEL_21;
    }

    v23 = *(a1 + 208);
    if (v23 <= v17)
    {
LABEL_30:
      v23 = v17;
LABEL_31:
      v9 = v98;
      goto LABEL_32;
    }

    v24 = *(a1 + 200);
    v25 = v17;
    v26 = (v24 + 6 * v17);
    while (1)
    {
      v27 = *v26;
      v26 += 3;
      v28 = v18 == v27;
      if (v18 < v27)
      {
        goto LABEL_109;
      }

      if (v28)
      {
        break;
      }

      ++v25;
      LOWORD(v17) = v17 + 1;
      if (v23 == v25)
      {
        goto LABEL_31;
      }
    }

    v91 = a7;
    v100 = v16;
    if (v23 <= v25)
    {
      v94 = 0;
      v35 = v25;
    }

    else
    {
      v35 = v23;
      v36 = v25;
      v37 = v17;
      v38 = 0;
      v39 = (v24 + 6 * v37 + 2);
      while (v18 == *(v39 - 1))
      {
        v38 += strlen(v39);
        ++v36;
        v39 += 6;
        if (v36 >= v35)
        {
          v94 = v38;
          goto LABEL_80;
        }
      }

      v94 = v38;
      v35 = v36;
LABEL_80:
      a6 = v97;
    }

    v93 = v35;
    utf8_GetPreviousValidUtf8Offset(v19 + v16, &v100);
    v62 = v100 >= v16 ? v16 : v100;
    if (v62)
    {
      v63 = 1;
      a7 = v91;
      while (1)
      {
        v64 = *(a1 + 120) ? *(a1 + 120) : "^FNKauioR";
        if (!isCharInStr((v19 + v62), v64))
        {
          break;
        }

        v63 += Utf8_LengthInBytes((v19 + v62), 1);
        v100 = v62;
        a6 = v97;
        utf8_GetPreviousValidUtf8Offset(v19 + v62, &v100);
        if (v100 < v62)
        {
          v62 = v100;
        }

        if (!v62)
        {
          v65 = 0;
          goto LABEL_96;
        }
      }

      v65 = v62;
    }

    else
    {
      v65 = 0;
      v63 = 1;
      a7 = v91;
    }

LABEL_96:
    if (v94 > v63)
    {
      break;
    }

    if (v94 != v63)
    {
LABEL_109:
      v23 = v25;
      goto LABEL_31;
    }

    if (v94)
    {
      v66 = 0;
      v67 = *(a1 + 200);
      do
      {
        if (*(v67 + 6 * v66 + 2))
        {
          v68 = 0;
          v69 = 0;
          do
          {
            *(v19 + v65++) = *(v67 + 6 * v25 + 6 * v66 + v68 + 2);
            v68 = ++v69;
            v67 = *(a1 + 200);
          }

          while (strlen((v67 + 6 * v66 + 2)) > v69);
        }

        ++v66;
      }

      while (v66 != v94);
      a7 = v91;
      a6 = v97;
    }

    v9 = v98;
LABEL_108:
    v23 = v93;
LABEL_32:
    if (*a6 == 1)
    {
      v29 = *(a1 + 208);
      if (v29 > v23)
      {
        v30 = (v18 + 1);
        v31 = *(a1 + 200);
        v17 = v23;
        v32 = (v31 + 6 * v23);
        while (1)
        {
          v33 = *v32;
          v32 += 3;
          v34 = v33 == v30;
          if (v33 > v30)
          {
            goto LABEL_21;
          }

          if (v34)
          {
            break;
          }

          ++v17;
          LOWORD(v23) = v23 + 1;
          if (v29 == v17)
          {
            v17 = *(a1 + 208);
            goto LABEL_21;
          }
        }

        if (*(a1 + 120))
        {
          v40 = *(a1 + 120);
        }

        else
        {
          v40 = "^FNKauioR";
        }

        if (!isCharInStr((v31 + 6 * v17 + 2), v40))
        {
          goto LABEL_21;
        }

        if (*(a1 + 208) <= v17)
        {
          v41 = 0;
          v44 = v17;
        }

        else
        {
          v41 = 0;
          v42 = *(a1 + 200);
          v43 = v23;
          v44 = v17;
          v45 = 6 * v43;
          do
          {
            if (v18 + 1 != *(v42 + v45))
            {
              break;
            }

            v46 = *(a1 + 120) ? *(a1 + 120) : "^FNKauioR";
            if (!isCharInStr((v42 + v45 + 2), v46))
            {
              break;
            }

            v42 = *(a1 + 200);
            v41 += strlen((v42 + v45 + 2));
            ++v44;
            v45 += 6;
          }

          while (v44 < *(a1 + 208));
        }

        v95 = v44;
        v47 = v16 + 1;
        v85 = v101;
        v48 = 0;
        if (v101 > (v16 + 1))
        {
          v49 = (v16 + 1);
          v50 = &v103[v49];
          v51 = v101 - v49;
          do
          {
            if (*(a1 + 120))
            {
              v52 = *(a1 + 120);
            }

            else
            {
              v52 = "^FNKauioR";
            }

            if (!isCharInStr(v50, v52))
            {
              break;
            }

            v48 += Utf8_LengthInBytes(v50++, 1);
            --v51;
          }

          while (v51);
        }

        if (v48 < v41)
        {
          v53 = v17;
          v17 = v95;
          result = posparser_GrowAndInsert(a1, &v103, v41, v48, (v16 + 1), v53, v95, &v101, &v102);
          v9 = v98;
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v16 = v41 + v16 - v48;
          goto LABEL_119;
        }

        v9 = v98;
        v55 = v95;
        if (v48 != v41)
        {
          if (v48 <= v41)
          {
            goto LABEL_119;
          }

          v70 = 0;
          v71 = 0;
          v72 = v48 - v41;
          v89 = *(a1 + 208);
          v87 = v103;
          while (v70 + v17 < v89)
          {
            v96 = (v70 + v47);
            v86 = v70;
            v73 = *(a1 + 200) + 6 * (v70 + v17);
            v74 = strlen((v73 + 2));
            v75 = v74;
            if (strncmp((v87 + v96), (v73 + 2), v74))
            {
              v9 = v98;
              v70 = v86;
              break;
            }

            v71 += v75;
            v70 = v71;
            v9 = v98;
            if (v71 >= v72)
            {
              break;
            }
          }

          if (v72 == v71)
          {
            goto LABEL_119;
          }

          v92 = a7;
          v76 = v72 - v71;
          v77 = (v72 - v71);
          v78 = v103;
          v88 = v76;
          memmove(&v103[v70 + v47], &v103[v70 + v47 + v76], v85 - v76);
          if (v77 > v71)
          {
            do
            {
              v79 = v17 + v71;
              if (v79 >= *(a1 + 208))
              {
                break;
              }

              v90 = v71;
              v80 = *(a1 + 200);
              if (*(v80 + 6 * v79 + 2))
              {
                v81 = 0;
                v82 = 0;
                do
                {
                  *(v78 + (v47 + v90) + v82) = *(v80 + 6 * v79 + v81 + 2);
                  v83 = v82 + 1;
                  v81 = (v82 + 1);
                  v80 = *(a1 + 200);
                  v84 = strlen((v80 + 6 * v79 + 2));
                  v82 = v83;
                }

                while (v84 > v83);
              }

              v71 = v90 + 1;
            }

            while ((v90 + 1) < v88);
          }

          v101 = v85 - v88;
          *(v78 + (v85 - v88)) = 0;
          a7 = v92;
          a6 = v97;
          v9 = v98;
          goto LABEL_21;
        }

        if (v95 <= v17)
        {
          v17 = v95;
LABEL_119:
          a6 = v97;
          goto LABEL_21;
        }

        v56 = v103;
        v57 = v17;
        do
        {
          if (*(a1 + 208) < v55)
          {
            break;
          }

          v58 = a7;
          v59 = *(a1 + 200);
          if (*(v59 + 6 * v57 + 2))
          {
            v60 = 0;
            v61 = 0;
            do
            {
              *(v56 + v47++) = *(v59 + 6 * v57 + v60 + 2);
              v60 = ++v61;
              v59 = *(a1 + 200);
            }

            while (strlen((v59 + 6 * v57 + 2)) > v61);
          }

          ++v57;
          v55 = v95;
          a7 = v58;
        }

        while (v57 < v95);
        v17 = v55;
        a6 = v97;
        goto LABEL_20;
      }
    }

    v17 = v23;
LABEL_21:
    if (++v18 < v9)
    {
      ++v16;
      v13 = v101;
      if (v101 > v16)
      {
        continue;
      }
    }

    v15 = v103;
LABEL_129:
    if (!*a6)
    {
      heap_Free(*(*a1 + 8), v15);
      v15 = 0;
    }

    result = 0;
    *a7 = v15;
    return result;
  }

  result = posparser_GrowAndInsert(a1, &v103, v94, v63, v16, v25, v93, &v101, &v102);
  v9 = v98;
  if ((result & 0x80000000) == 0)
  {
    v16 = v94 + v16 - v63;
    goto LABEL_108;
  }

  return result;
}

uint64_t posparser_PostProcess(uint64_t a1, const char **a2)
{
  v3 = a1;
  if (!*(a1 + 168))
  {
    if (LH_stricmp("arx", (a1 + 186)))
    {
      return 0;
    }

    v22 = *a2;
    v23 = strlen(*a2);
    if (!v23)
    {
LABEL_78:
      result = 0;
      *a2 = v22;
      return result;
    }

    v24 = v23;
    v25 = -2;
    v26 = 1;
    v27 = v23;
    while (1)
    {
      v28 = v24;
      if (v26 < v24)
      {
        v29 = &v22[v26 - 1];
        v30 = *v29;
        if (v30 > 0x68)
        {
          if (v30 == 111)
          {
            if (v22[v26] == 111)
            {
              goto LABEL_44;
            }
          }

          else if (v30 == 105 && v22[v26] == 105)
          {
LABEL_44:
            v31 = v25 + v28;
            v32 = &v22[v26];
LABEL_71:
            memmove(v29, v32, v31 + 1);
            goto LABEL_72;
          }
        }

        else if (v30 == 94)
        {
          if (v22[v26] == 94)
          {
            goto LABEL_44;
          }
        }

        else if (v30 == 97 && v22[v26] == 97)
        {
          goto LABEL_44;
        }
      }

      if (v26 + 2 == v28)
      {
        v32 = &v22[v26];
        v29 = &v22[v26 - 1];
        if (*v29 == 70 && *v32 == 65 && v22[v26 + 1] == 70)
        {
          goto LABEL_70;
        }
      }

      if (v26 < v28)
      {
        v33 = &v22[v26];
        if (v22[v26 - 1] == 73 && *v33 == 97)
        {
          if (v26 + 1 < v28 && v22[v26 + 1] == 112)
          {
            goto LABEL_74;
          }

          memmove(&v22[v26 - 1], v33, v25 + v28 + 1);
          v22[v26 - 1] = 73;
LABEL_72:
          --v27;
LABEL_73:
          v22[v27] = 0;
          goto LABEL_74;
        }
      }

      if (v26 + 1 < v28)
      {
        v29 = &v22[v26 - 1];
        v34 = *v29;
        if (v34 == 82)
        {
          if (v22[v26] != 82 || v22[v26 + 1] != 82)
          {
            goto LABEL_74;
          }

          memmove(v29, &v22[v26 + 1], v25 + v28);
          v27 -= 2;
          goto LABEL_73;
        }

        if (v34 == 97)
        {
          v32 = &v22[v26];
          v35 = v22[v26];
          if (v35 != 65)
          {
            if (v35 != 97 || v22[v26 + 1] != 73)
            {
              goto LABEL_74;
            }

LABEL_70:
            v31 = v25 + v28;
            goto LABEL_71;
          }

          v36 = v32[1];
          if (v36 == 97)
          {
            *v32 = 66;
            goto LABEL_74;
          }

          if (v36 == 70)
          {
            goto LABEL_70;
          }
        }
      }

LABEL_74:
      v24 = v27;
      v37 = v26++ >= v27;
      --v25;
      if (v37)
      {
        goto LABEL_78;
      }
    }
  }

  v4 = *a2;
  v5 = strlen(*a2);
  if (!v5)
  {
LABEL_30:
    result = 0;
    *a2 = v4;
    return result;
  }

  v6 = 0;
  v38 = v5 + 1;
  v40 = v3;
  while (!*(v3 + 168))
  {
LABEL_21:
    if (++v6 >= v5)
    {
      goto LABEL_30;
    }
  }

  v7 = 0;
  v8 = v5;
  v41 = v5;
  v9 = v4;
  v10 = &v4[v6];
  v11 = *(v3 + 160);
  v12 = 56 * *(v3 + 168);
  while (1)
  {
    v13 = *(v11 + v7 + 16);
    v14 = v13 + v6;
    if (v14 > v8 || strncmp(v10, *(v11 + v7 + 8), *(v11 + v7 + 16)))
    {
      goto LABEL_8;
    }

    v15 = *(v11 + v7);
    if (v15 != 1)
    {
      break;
    }

    if (v14 == v8)
    {
      goto LABEL_18;
    }

LABEL_8:
    v7 += 56;
    if (v12 == v7)
    {
      v3 = v40;
      v4 = v9;
      v5 = v41;
      goto LABEL_21;
    }
  }

  if (v15 != 2)
  {
    if (!v15)
    {
      goto LABEL_18;
    }

    goto LABEL_8;
  }

  v16 = *(v11 + v7 + 48);
  if (v14 + v16 > v8 || !strncmp((v9 + v14), *(v11 + v7 + 40), v16))
  {
    goto LABEL_8;
  }

LABEL_18:
  v17 = *(v11 + v7 + 32);
  if (v13 >= v17)
  {
    v3 = v40;
    v4 = v9;
LABEL_24:
    v19 = v13 - v17;
    if (v13 >= v17)
    {
      if (v13 > v17)
      {
        memmove(&v4[v6], &v4[v6 + v19], (v8 - (v6 + v19)));
        memcpy(&v4[v6], *(*(v3 + 160) + v7 + 24), *(*(v3 + 160) + v7 + 32));
        v5 = (v41 - v19);
      }

      else
      {
        memcpy(&v4[v6], *(v11 + v7 + 24), v17);
        v5 = v41;
      }
    }

    else
    {
      v20 = v17 - v13;
      memmove(&v4[v6 + (v17 - v13)], &v4[v6], (v8 - v6));
      memcpy(&v4[v6], *(*(v3 + 160) + v7 + 24), *(*(v3 + 160) + v7 + 32));
      v5 = (v20 + v41);
      v6 += *(*(v3 + 160) + v7 + 32);
    }

    v4[v5] = 0;
    goto LABEL_21;
  }

  v3 = v40;
  v18 = heap_Realloc(*(*v40 + 8), v9, v38 - v13 + v17);
  if (v18)
  {
    v4 = v18;
    v11 = v40[20];
    LODWORD(v13) = *(v11 + v7 + 16);
    LODWORD(v17) = *(v11 + v7 + 32);
    goto LABEL_24;
  }

  log_OutPublic(*(*v40 + 32), "POSPARSER", 68000, 0);
  return 2687508490;
}

uint64_t posparser_Open(uint64_t a1, uint64_t *a2)
{
  v2 = 2687508487;
  if (a2)
  {
    v5 = heap_Calloc(*(a1 + 8), 264, 1);
    *a2 = v5;
    if (v5)
    {
      v2 = 0;
      *v5 = a1;
      *(*a2 + 80) = 0;
      v6 = *a2;
      *(v6 + 97) = 1;
      *(v6 + 98) = 1024;
      *(v6 + 88) = 0;
      v7 = *a2;
      *(v7 + 64) = 0;
      *(v7 + 68) = 1;
      *(v7 + 72) = 1;
      *(v7 + 112) = 0;
      *(*a2 + 104) = 0;
      *(*a2 + 120) = 0;
      *(*a2 + 128) = 0;
      *(*a2 + 136) = 0;
      *(*a2 + 144) = 0;
      v8 = *a2;
      *(v8 + 188) = 120;
      *(v8 + 186) = 29281;
      *(*a2 + 189) = 0;
      v9 = *a2;
      *(v9 + 152) = 0x100000001;
      *(v9 + 160) = 0;
      v10 = *a2;
      *(v10 + 168) = 0;
      *(v10 + 192) = 1;
      *(v10 + 200) = 0;
      v11 = *a2;
      *(v11 + 208) = 0;
      *(v11 + 176) = 0;
      v12 = *a2;
      *(v12 + 184) = 0;
      *(v12 + 232) = 0;
    }

    else
    {
      log_OutPublic(*(a1 + 32), "POSPARSER", 68000, 0);
      return 2687508490;
    }
  }

  return v2;
}

void *posparser_Close(void *result)
{
  if (result)
  {
    return heap_Free(*(*result + 8), result);
  }

  return result;
}

uint64_t posparser_ExtractWords(_DWORD *a1, uint64_t a2, unsigned int a3, const char *a4, unsigned int a5, uint64_t *a6, unsigned __int16 *a7)
{
  v7 = a7;
  *a7 = 0;
  v14 = heap_Calloc(*(*a1 + 8), 1, 104 * a3 + 104);
  if (v14)
  {
    v15 = v14;
    v86 = a6;
    v16 = a3;
    v97 = a3;
    v89 = a3;
    if (a5)
    {
      v17 = a3;
      v18 = 0;
      if (v17 <= 2)
      {
        v19 = 2;
      }

      else
      {
        v19 = v17;
      }

      v88 = v16 - 1;
      v87 = v19 - 1;
      v98 = v7;
      do
      {
        if (a4[v18] == 32)
        {
          ++v18;
        }

        if (v18 >= a5)
        {
          v7 = v98;
        }

        else
        {
          if (v17 < 2)
          {
            v25 = 0;
            v95 = 0;
            v92 = 9999;
            v94 = 9999;
          }

          else
          {
            v20 = 2;
            v21 = 9998;
            v22 = (a2 + 44);
            v23 = 1;
            while (1)
            {
              if (*(v22 - 3) == 34)
              {
                v24 = *v22;
                if (*v22 - *(a2 + 12) == v18)
                {
                  break;
                }
              }

              ++v23;
              v22 += 8;
              --v21;
              ++v20;
              if (v16 == v23)
              {
                v95 = 0;
                v90 = 1;
                v92 = 9999;
                v94 = 9999;
                goto LABEL_26;
              }
            }

            while (*(v22 - 3) != 21 || v24 >= *v22)
            {
              --v21;
              v50 = v17 == v20++;
              v22 += 8;
              if (v50)
              {
                v23 = v23;
LABEL_21:
                v90 = 0;
                v95 = 1;
                v92 = v23;
                v94 = v23;
                goto LABEL_26;
              }
            }

            v23 = v23;
            if (!v21)
            {
              goto LABEL_21;
            }

            v90 = 0;
            v92 = (v20 - 1);
            v94 = v23;
            v95 = 1;
LABEL_26:
            v25 = 0;
            v27 = (a2 + 56);
            v26 = v88;
            do
            {
              if (*(v27 - 6) == 36 && *(v27 - 3) - *(a2 + 12) <= v18)
              {
                v28 = *v27;
                v25 = !strstr(*v27, "arw") && !strstr(v28, "arg") && !strstr(v28, "fai") && !strstr(v28, "hei") && strcmp(v28, "normal") != 0;
              }

              v27 += 4;
              --v26;
            }

            while (v26);
            v29 = v87;
            v30 = (a2 + 44);
            v17 = v89;
            do
            {
              if (*(v30 - 3) == 1 && *v30 - *(a2 + 12) == v18)
              {
                v7 = v98;
                v32 = *v98;
                v41 = *(v30 - 2);
                v31 = *(v30 - 1);
                *(v15 + 104 * v32) = v41;
                v16 = v97;
                goto LABEL_43;
              }

              v30 += 8;
              --v29;
            }

            while (v29);
            v16 = v97;
            if (!v90)
            {
              goto LABEL_42;
            }
          }

          log_OutText(*(*a1 + 32), "POSPARSER", 5, 0, "Could not resolve references pos (previously logged as Public 68004), thispos=%d", v18);
LABEL_42:
          v31 = 0;
          v7 = v98;
          v32 = *v98;
          *(v15 + 104 * v32) = 0;
LABEL_43:
          v33 = v15 + 104 * v32;
          *(v33 + 4) = v31;
          *(v33 + 8) = v18;
          *(v15 + 104 * *v7 + 74) = 0;
          *(v15 + 104 * *v7 + 76) = 0;
          *(v15 + 104 * *v7 + 72) = 9999;
          v34 = *v7;
          *(v15 + 104 * *v7 + 88) = v25;
          if (v95)
          {
            *(v15 + 104 * v34 + 74) = v94;
            *(v15 + 104 * *v7 + 76) = v92;
            v35 = (v15 + 104 * *v7);
            if (v35[37] == v35[38])
            {
              v35[5] = *(a2 + 16);
              v18 = a5;
            }

            else
            {
              v35[5] = *(a2 + 32 * v92 + 12) - *(a2 + 12);
              v18 = *(v15 + 104 * *v7 + 10);
            }
          }

          else
          {
            while (1)
            {
              v36 = a4[v18];
              if ((v36 | 0x20) == 0x20)
              {
                break;
              }

              if (a5 < ++v18)
              {
                v36 = a4[v18];
                break;
              }
            }

            if (v36)
            {
              v37 = v18;
            }

            else
            {
              v37 = v18 + 1;
            }

            *(v15 + 104 * v34 + 10) = v37;
            v18 = v37 + 1;
          }

          if (*(v15 + 104 * *v7 + 8) != *(v15 + 104 * *v7 + 10))
          {
            v38 = *v7 + 1;
            *v7 = v38;
            if (v17 < v38)
            {
              v39 = heap_Realloc(*(*a1 + 8), v15, 104 * v38 + 104);
              if (!v39)
              {
                heap_Free(*(*a1 + 8), v15);
                goto LABEL_146;
              }

              v40 = v39 + 104 * *v7;
              *(v40 + 96) = 0;
              *(v40 + 64) = 0u;
              *(v40 + 80) = 0u;
              *(v40 + 32) = 0u;
              *(v40 + 48) = 0u;
              *v40 = 0u;
              *(v40 + 16) = 0u;
              v15 = v39;
            }
          }
        }
      }

      while (a5 > v18);
    }

    *v86 = v15;
    v42 = strlen(a4);
    v99 = *v7;
    if (*v7)
    {
      v43 = v42;
      v44 = 0;
      v91 = 0;
      v96 = v42;
      v93 = v42;
      while (1)
      {
        v45 = v15 + 104 * v44;
        *(v45 + 80) = 1;
        if (v96 >= *(v45 + 10))
        {
          v46 = *(v45 + 10);
        }

        else
        {
          v46 = v43;
        }

        v47 = *(v45 + 8);
        if (v47 >= v46)
        {
          *(v45 + 84) = 0;
          v16 = v97;
        }

        else
        {
          v48 = 0;
          v49 = 1;
          do
          {
            if (v49 != 1)
            {
              break;
            }

            if ((a4[v47 + v48] - 48) >= 0xA && ((a4[v47 + v48] | 2) == 0x2E ? (v50 = v48 == 0) : (v50 = 1), v50))
            {
              v49 = 0;
              *(v45 + 80) = 0;
            }

            else
            {
              v49 = 1;
            }

            ++v48;
          }

          while (v46 - v47 != v48);
          v51 = 0;
          *(v45 + 84) = 0;
          do
          {
            if (v51)
            {
              break;
            }

            if (isPuncClass(a1, &a4[v47]))
            {
              v52 = a1[39];
              if (v52 == 1 || !v52 && v47 == *(v45 + 8))
              {
                *(v45 + 84) = 1;
              }
            }

            ++v47;
            v51 = *(v45 + 84);
          }

          while (v46 != v47);
          if (v51 != 1)
          {
            v16 = v97;
LABEL_96:
            v43 = v93;
            goto LABEL_97;
          }

          v16 = v97;
          if (a1[62] != 1 || v46 - *(v45 + 8) < 2 || !isPuncClass(a1, &a4[v46 - 1]))
          {
            goto LABEL_96;
          }

          *(v45 + 84) = 0;
          v43 = v93;
          if (v46 - *(v45 + 8) <= 127)
          {
            v53 = heap_Calloc(*(*a1 + 8), 1, 128);
            *(v45 + 96) = v53;
            if (!v53)
            {
              goto LABEL_146;
            }

            strncpy(v53, &a4[*(v45 + 8)], v46 - *(v45 + 8));
            v43 = v93;
            *(*(v45 + 96) + v46 - *(v45 + 8)) = 0;
            v91 = (*(*(a1 + 3) + 144))(*(a1 + 1), *(a1 + 2), "normal", *(v45 + 96), 128);
            if ((v91 & 0x80000000) != 0)
            {
              return v91;
            }
          }
        }

LABEL_97:
        if (++v44 == v99)
        {
          goto LABEL_100;
        }
      }
    }

    v91 = 0;
LABEL_100:
    if (v89)
    {
      v54 = 0;
      v55 = (a2 + 32);
      v56 = (v89 - 1) + 1;
      do
      {
        v57 = (a2 + 32 * v54);
        v58 = *v57;
        if (*v57 == 21)
        {
          v67 = *(v57 + 3);
          if (v67)
          {
            if (!LH_stricmp(v67, "spell"))
            {
              LOWORD(v77) = strlen(a4);
              v78 = v56;
              v79 = v55;
              while (--v78)
              {
                v80 = v79 + 8;
                v81 = *v79;
                v79 += 8;
                if (v81 == 21)
                {
                  v77 = *(v80 - 5) - *(a2 + 12);
                  break;
                }
              }

              if (v99)
              {
                v82 = v57[3] - *(a2 + 12);
                v83 = (v15 + 92);
                v84 = v99;
                do
                {
                  if (v82 <= *(v83 - 42) && *(v83 - 41) <= v77)
                  {
                    *v83 = 1;
                  }

                  v83 += 26;
                  --v84;
                }

                while (v84);
              }

              goto LABEL_143;
            }

            v58 = *v57;
LABEL_119:
            if (v58 == 36)
            {
              v68 = *(v57 + 3);
              if (v68)
              {
                if (!LH_stricmp(v68, "latin"))
                {
                  LOWORD(v69) = strlen(a4);
                  v70 = v56;
                  v71 = v55;
                  while (--v70)
                  {
                    v72 = v71 + 8;
                    v73 = *v71;
                    v71 += 8;
                    if (v73 == 36)
                    {
                      v69 = *(v72 - 5) - *(a2 + 12);
                      break;
                    }
                  }

                  if (v99)
                  {
                    v74 = v57[3] - *(a2 + 12);
                    v75 = (v15 + 88);
                    v76 = v99;
                    do
                    {
                      if (v74 <= *(v75 - 40) && *(v75 - 39) <= v69)
                      {
                        *v75 = 1;
                      }

                      v75 += 26;
                      --v76;
                    }

                    while (v76);
                  }
                }
              }
            }
          }
        }

        else
        {
          if (v58 != 7)
          {
            goto LABEL_119;
          }

          if (v57[6] == 60)
          {
            LOWORD(v59) = strlen(a4);
            v60 = v56;
            v61 = v55;
            while (--v60)
            {
              v62 = v61 + 8;
              v63 = *v61;
              v61 += 8;
              if (v63 == 7)
              {
                v59 = *(v62 - 5) - *(a2 + 12);
                break;
              }
            }

            if (v99)
            {
              v64 = v57[3] - *(a2 + 12);
              v65 = (v15 + 12);
              v66 = v99;
              do
              {
                if (v64 <= *(v65 - 2) && *(v65 - 1) <= v59)
                {
                  *v65 = 1;
                }

                v65 += 26;
                --v66;
              }

              while (v66);
            }
          }
        }

LABEL_143:
        ++v54;
        v55 += 8;
        --v56;
      }

      while (v54 != v16);
    }
  }

  else
  {
LABEL_146:
    log_OutPublic(*(*a1 + 32), "POSPARSER", 68000, 0);
    return -1607458806;
  }

  return v91;
}

void *posparser_FreeWords(void *result, uint64_t a2, unsigned int a3)
{
  v4 = result;
  if (a3)
  {
    v5 = 0;
    v6 = a3;
    do
    {
      v7 = a2 + 104 * v5;
      v8 = *(v7 + 32);
      if (v8)
      {
        v9 = 0;
        v10 = 0;
        v11 = *(v7 + 24);
        do
        {
          if (v11)
          {
            heap_Free(*(*v4 + 8), *(v11 + v9));
            v12 = (*(v7 + 24) + v9);
            *v12 = 0;
            heap_Free(*(*v4 + 8), v12[1]);
            v11 = *(v7 + 24);
            *(v11 + v9 + 8) = 0;
            v8 = *(v7 + 32);
          }

          ++v10;
          v9 += 16;
        }

        while (v10 < v8);
        *(v7 + 32) = 0;
      }

      v13 = *(v7 + 24);
      if (v13)
      {
        heap_Free(*(*v4 + 8), v13);
        *(v7 + 24) = 0;
      }

      v14 = *(v7 + 16);
      if (v14)
      {
        heap_Free(*(*v4 + 8), v14);
        *(v7 + 16) = 0;
      }

      v15 = *(v7 + 64);
      if (v15)
      {
        heap_Free(*(*v4 + 8), v15);
        *(v7 + 64) = 0;
      }

      v16 = *(v7 + 96);
      if (v16)
      {
        heap_Free(*(*v4 + 8), v16);
        *(v7 + 96) = 0;
      }

      ++v5;
    }

    while (v5 != v6);
  }

  else if (!a2)
  {
    return result;
  }

  v17 = *(*v4 + 8);

  return heap_Free(v17, a2);
}

uint64_t posparser_ProcessStart(char *a1)
{
  v64 = *MEMORY[0x1E69E9840];
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  __src = 0;
  DictCharString = paramc_ParamGet(*(*a1 + 40), "langcode", &__src, 0);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  strncpy(a1 + 186, __src, 3uLL);
  a1[186] = ssft_tolower(a1[186]);
  a1[187] = ssft_tolower(a1[187]);
  *(a1 + 94) = 120;
  a1[97] = 1;
  *&__c[1] = -1;
  DictCharString = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparsermwspan", &__c[3], &__c[1], __c);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  if (*&__c[1] == 1 && *&__c[3])
  {
    v3 = **&__c[3];
    v4 = strchr(**&__c[3], __c[0]);
    if (v4)
    {
      *v4 = 0;
      v3 = **&__c[3];
    }

    v5 = atoi(v3);
    v6 = v5 ? v5 : 1;
    a1[97] = v6;
  }

  else
  {
    v6 = a1[97];
  }

  *(a1 + 49) = v6 << 10;
  a1[96] = 0;
  *&__c[1] = -1;
  DictCharString = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparsernumdicts", &__c[3], &__c[1], __c);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  if (*&__c[1] && *&__c[3])
  {
    v7 = **&__c[3];
    v8 = strchr(**&__c[3], __c[0]);
    if (v8)
    {
      *v8 = 0;
      v7 = **&__c[3];
    }

    v9 = atoi(v7);
    a1[96] = v9;
    v10 = heap_Calloc(*(*a1 + 8), 1, (8 * v9) | 1u);
    *(a1 + 11) = v10;
    v11 = *a1;
    if (!v10)
    {
      EmbeddedCharRule = 2687508490;
LABEL_136:
      log_OutPublic(*(v11 + 32), "POSPARSER", 68000, 0);
      return EmbeddedCharRule;
    }

    v12 = heap_Calloc(*(v11 + 8), 1, a1[96] + 1);
    *(a1 + 10) = v12;
    if (!v12)
    {
      goto LABEL_135;
    }

    if (a1[96])
    {
      v13 = 0;
      do
      {
        *(*(a1 + 10) + v13) = 0;
        *(*(a1 + 11) + 8 * v13++) = 0;
      }

      while (v13 < a1[96]);
    }

    *&__c[1] = -1;
    if (((*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparserdicname", &__c[3], &__c[1], __c) & 0x80000000) != 0 || !*&__c[1])
    {
      goto LABEL_98;
    }

    if (*&__c[1] == 1 && *&__c[3])
    {
      v14 = **&__c[3];
      v15 = strchr(**&__c[3], __c[0]);
      if (v15)
      {
        *v15 = 0;
      }

      if (v14)
      {
        v16 = 0;
        while (1)
        {
          v17 = strchr(v14, 43);
          v18 = v17;
          if (v17)
          {
            *v17 = 0;
          }

          v19 = strlen(v14);
          *(*(a1 + 11) + 8 * v16) = heap_Calloc(*(*a1 + 8), 1, (v19 + 1));
          v20 = *(*(a1 + 11) + 8 * v16);
          if (!v20)
          {
            goto LABEL_135;
          }

          strcpy(v20, v14);
          log_OutText(*(*a1 + 32), "POSPARSER", 5, 0, "using dict[%d] %s", v16, *(*(a1 + 11) + 8 * v16));
          ++v16;
          v14 = v18 + 1;
          if (!v18)
          {
            v21 = v16;
            goto LABEL_85;
          }
        }
      }

      v21 = 0;
LABEL_85:
      if (v21 != a1[96])
      {
        v46 = *(*a1 + 32);
LABEL_104:
        log_OutPublic(v46, "POSPARSER", 68003, "%s%d%s%d");
        return 2687508480;
      }
    }

    *&__c[1] = -1;
    if (((*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparserngramlevel", &__c[3], &__c[1], __c) & 0x80000000) != 0 || !*&__c[1])
    {
LABEL_98:
      log_OutPublic(*(*a1 + 32), "POSPARSER", 68002, "%s%s");
      return 2687508480;
    }

    if (*&__c[1] == 1 && *&__c[3])
    {
      v40 = **&__c[3];
      v41 = strchr(**&__c[3], __c[0]);
      if (v41)
      {
        *v41 = 0;
      }

      if (v40)
      {
        v42 = 0;
        do
        {
          v43 = strchr(v40, 43);
          v44 = v43;
          if (v43)
          {
            *v43 = 0;
          }

          *(*(a1 + 10) + v42) = atoi(v40);
          log_OutText(*(*a1 + 32), "POSPARSER", 5, 0, "using ngram levels[%d] %d", v42, *(*(a1 + 10) + v42));
          ++v42;
          v40 = v44 + 1;
        }

        while (v44);
        v45 = v42;
      }

      else
      {
        v45 = 0;
      }

      if (v45 != a1[96])
      {
        v46 = *(*a1 + 32);
        goto LABEL_104;
      }
    }
  }

  else
  {
    *(a1 + 10) = 0;
    *(a1 + 11) = 0;
    a1[96] = 0;
    log_OutText(*(*a1 + 32), "POSPARSER", 5, 0, "WARNING - No ngram dicts, continuing anyway");
  }

  Str = paramc_ParamGetStr(*(*a1 + 40), "araparsermode", &__src);
  if ((Str & 0x80000000) == 0 && (Str & 0x1FFF) != 0x14)
  {
    log_OutText(*(*a1 + 32), "POSPARSER", 5, 0, "Araparser mode : %s", __src);
    *(a1 + 16) = 0;
    if (!LH_stricmp("dict_plus_ngrams", __src))
    {
      v23 = 0;
      goto LABEL_45;
    }

    if (!LH_stricmp("dict_only", __src))
    {
      v23 = 1;
      goto LABEL_45;
    }

    if (!LH_stricmp("ngrams_only", __src))
    {
      v23 = 2;
LABEL_45:
      *(a1 + 16) = v23;
    }
  }

  paramc_ParamRelease(*(*a1 + 40));
  __src = 0;
  DictCharString = posparser_loc_getDictCharString(a1, "araparserspacedout", a1 + 14);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  DictCharString = posparser_loc_getDictCharString(a1, "araparsersmspunc", a1 + 13);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  DictCharString = posparser_loc_getDictCharString(a1, "araparserpuncclass1", a1 + 16);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  DictCharString = posparser_loc_getDictCharString(a1, "araparserpuncclass2", a1 + 17);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  DictCharString = posparser_loc_getDictCharString(a1, "araparserpuncclass3", a1 + 18);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  *(a1 + 62) = 0;
  *&__c[1] = -1;
  DictCharString = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "arwpospredictiononly", &__c[3], &__c[1], __c);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  if (*&__c[1])
  {
    v25 = **&__c[3];
    v26 = strchr(**&__c[3], __c[0]);
    if (v26)
    {
      *v26 = 0;
      v25 = **&__c[3];
    }

    if (*v25 == 49 && !v25[1])
    {
      *(a1 + 62) = 1;
      *(a1 + 35) = 1;
      goto LABEL_106;
    }
  }

  v27 = *(a1 + 62);
  *(a1 + 35) = 1;
  if (v27 == 1)
  {
LABEL_106:
    *&__c[1] = -1;
    EmbeddedCharRule = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparsernumposdicparts", &__c[3], &__c[1], __c);
    if ((EmbeddedCharRule & 0x80000000) == 0 && *&__c[1])
    {
      v47 = **&__c[3];
      v48 = strchr(**&__c[3], __c[0]);
      if (v48)
      {
        *v48 = 0;
        v47 = **&__c[3];
      }

      *(a1 + 35) = atoi(v47);
      if (a1[97])
      {
        a1[97] = 0;
      }

      *(a1 + 49) = 2048;
    }

    return EmbeddedCharRule;
  }

  *&__c[1] = -1;
  EmbeddedCharRule = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparsernumparts", &__c[3], &__c[1], __c);
  if ((EmbeddedCharRule & 0x80000000) != 0 || !*&__c[1])
  {
    return EmbeddedCharRule;
  }

  v28 = **&__c[3];
  v29 = strchr(**&__c[3], __c[0]);
  if (v29)
  {
    *v29 = 0;
    v28 = **&__c[3];
  }

  a1[68] = atoi(v28);
  *&__c[1] = -1;
  EmbeddedCharRule = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "nrpart_tn", &__c[3], &__c[1], __c);
  if ((EmbeddedCharRule & 0x80000000) != 0 || !*&__c[1])
  {
    return EmbeddedCharRule;
  }

  v30 = **&__c[3];
  v31 = strchr(**&__c[3], __c[0]);
  if (v31)
  {
    *v31 = 0;
    v30 = **&__c[3];
  }

  a1[72] = atoi(v30);
  DictCharString = posparser_loc_getDictCharString(a1, "araparserdiacriticlist", a1 + 15);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  *&__c[1] = -1;
  DictCharString = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparsermapXBI2A", &__c[3], &__c[1], __c);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  if (*&__c[1])
  {
    v32 = **&__c[3];
    v33 = strchr(**&__c[3], __c[0]);
    if (v33)
    {
      *v33 = 0;
      v32 = **&__c[3];
    }

    if (!atoi(v32))
    {
      *(a1 + 38) = 0;
    }
  }

  *&__c[1] = -1;
  DictCharString = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparseroldPuncClass", &__c[3], &__c[1], __c);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  if (*&__c[1])
  {
    v34 = **&__c[3];
    v35 = strchr(**&__c[3], __c[0]);
    if (v35)
    {
      *v35 = 0;
      v34 = **&__c[3];
    }

    if (!atoi(v34))
    {
      *(a1 + 39) = 0;
    }
  }

  *&__c[1] = -1;
  DictCharString = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparsernumpostcorrrules", &__c[3], &__c[1], __c);
  if ((DictCharString & 0x80000000) != 0)
  {
    return DictCharString;
  }

  if (*&__c[1])
  {
    v36 = **&__c[3];
    v37 = strchr(**&__c[3], __c[0]);
    if (v37)
    {
      *v37 = 0;
      v36 = **&__c[3];
    }

    v38 = atoi(v36);
    v39 = v38;
    *(a1 + 84) = v38;
  }

  else
  {
    v39 = *(a1 + 84);
  }

  if (v39)
  {
    v49 = heap_Calloc(*(*a1 + 8), 1, (56 * v39) | 1);
    *(a1 + 20) = v49;
    if (!v49)
    {
      goto LABEL_135;
    }

    if (*(a1 + 84))
    {
      v50 = 0;
      v51 = 0;
      do
      {
        *&v63[24] = 0;
        *&v63[18] = 0;
        strcpy(v63, "araparserpostcorr");
        LH_itoa(v51, v60, 0xAu);
        __strcat_chk();
        DictCharString = posparser_loc_getPostCorrRule(a1, v63, *(a1 + 20) + v50);
        if ((DictCharString & 0x80000000) != 0)
        {
          return DictCharString;
        }

        ++v51;
        v50 += 56;
      }

      while (v51 < *(a1 + 84));
    }
  }

  *&__c[1] = -1;
  EmbeddedCharRule = (*(*(a1 + 3) + 96))(*(a1 + 1), *(a1 + 2), "fecfg", "araparsernumecharrewrite", &__c[3], &__c[1], __c);
  if ((EmbeddedCharRule & 0x80000000) == 0)
  {
    if (*&__c[1])
    {
      v52 = **&__c[3];
      v53 = strchr(**&__c[3], __c[0]);
      if (v53)
      {
        *v53 = 0;
        v52 = **&__c[3];
      }

      v54 = atoi(v52);
      v55 = v54;
      *(a1 + 92) = v54;
    }

    else
    {
      v55 = *(a1 + 92);
    }

    if (v55)
    {
      v57 = heap_Calloc(*(*a1 + 8), 1, (2 * v55) | 1);
      *(a1 + 22) = v57;
      if (v57)
      {
        if (*(a1 + 92))
        {
          v58 = 0;
          v59 = 0;
          do
          {
            *&v63[30] = 0;
            *&v63[22] = 0;
            strcpy(v63, "araparserecharrewrite");
            LH_itoa(v59, v60, 0xAu);
            __strcat_chk();
            EmbeddedCharRule = posparser_loc_getEmbeddedCharRule(a1, v63, (*(a1 + 22) + v58));
            if ((EmbeddedCharRule & 0x80000000) != 0)
            {
              break;
            }

            ++v59;
            v58 += 2;
          }

          while (v59 < *(a1 + 92));
        }

        return EmbeddedCharRule;
      }

LABEL_135:
      EmbeddedCharRule = 2687508490;
      v11 = *a1;
      goto LABEL_136;
    }
  }

  return EmbeddedCharRule;
}