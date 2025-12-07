void *freeIwInfo(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    if (*(result[191] + 1072))
    {
      v4 = 0;
      v5 = (a2 + 16);
      do
      {
        heap_Free(*(*v3 + 8), *(v5 - 1));
        *(v5 - 1) = 0;
        heap_Free(*(*v3 + 8), *v5);
        *v5 = 0;
        v5 += 3;
        ++v4;
      }

      while (v4 < *(v3[191] + 1072));
    }

    v6 = *(*v3 + 8);

    return heap_Free(v6, a2);
  }

  return result;
}

uint64_t fe_phrasing_Process(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  if ((safeh_HandleCheck(a1, a2, 62343, 1728) & 0x80000000) != 0)
  {
    return 2315264008;
  }

  *&__c[3] = 0;
  *&__c[1] = 0;
  v10 = (a1[7][13])(a3, a4, 1, 0, &__c[3]);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  if (((a1[7][23])(a3, a4, *&__c[3], 0, &__c[1]) & 0x80000000) != 0 || *&__c[1] != 1)
  {
    inserted = 0;
    *a5 = 1;
    return inserted;
  }

  if (*(a1 + 364))
  {
    v11 = a1[191];
    *(v11 + 548) = *&__c[3];
    *(v11 + 549) = 1;
  }

  v12 = a1[12];
  v13 = a1[13];
  v14 = a1[11];
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v10 = (v13[12])(v14, v12, "fecfg", "usecompound", &__c[3], &__c[1], __c);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v15 = 1;
  if (*&__c[1] == 1 && *&__c[3])
  {
    v16 = **&__c[3];
    v17 = strchr(**&__c[3], __c[0]);
    if (v17)
    {
      *v17 = 0;
      v16 = **&__c[3];
    }

    if (!strcmp("yes", v16) || !strcmp("YES", v16))
    {
      v15 = 0;
    }
  }

  v18 = paramc_ParamGetInt((*a1)[5], "nnpausingoverride", &v31) >= 0 && v31 == 1;
  v19 = !v18;
  if (v18)
  {
    log_OutText((*a1)[4], "FE_PHRASING", 5, 0, "NN pausing Override enabled - NN pausing will skipped even if data loaded", 0);
  }

  if ((paramc_ParamGetInt((*a1)[5], "nnpausingminwordspan", &v31) & 0x80000000) != 0 || (v20 = v31, v31 > 0x270E))
  {
    v20 = 0xFFFFFFFFLL;
    if (!v19)
    {
      goto LABEL_37;
    }
  }

  else
  {
    log_OutText((*a1)[4], "FE_PHRASING", 5, 0, "NN pausing min word span set to %d", v31);
    if (!v19)
    {
      goto LABEL_37;
    }
  }

  if (*(a1 + 324) == 1)
  {
    log_OutText((*a1)[4], "FE_PHRASING", 5, 0, "NN Phrasing Enabled", 0);
    v10 = hlp_MarkSildursExternal(a1, a3, a4);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    v10 = hlp_Markup(a1, a3, a4);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    v10 = fe_phrasing_Process_NN_Phrasing(a1, a2, a3, a4, a5, v20, &v30);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    v10 = hlp_SetExternalSildurs(a1, a3, a4);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    v10 = hlp_SetInternalSildurs(a1, a3, a4, 1);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }
  }

LABEL_37:
  if (!*(a1 + 40))
  {
LABEL_56:
    if (*(a1 + 364))
    {
      v24 = pw_Process(a3, a4, a1[7], *a1, a1[191], a1[181], a1[183], a1 + 186, *(a1 + 365), &v27, a1[192], *(a1 + 381), *(a1 + 380));
      if ((v24 & 0x80000000) != 0)
      {
        inserted = v24;
        freeSentenceDataNN(*a1, a1[191]);
        return inserted;
      }

      v10 = hlp_MarkSildursExternal(a1, a3, a4);
      if ((v10 & 0x80000000) == 0)
      {
        setbndfromTN(*a1, v27, a1[191]);
        v10 = fe_phrasing_Process_NNPhrasing(a1, a2, a3, a4, a1[191], a5);
        if ((v10 & 0x80000000) == 0)
        {
          v10 = hlp_SetExternalSildurs(a1, a3, a4);
          if ((v10 & 0x80000000) == 0)
          {
            v10 = hlp_SetInternalSildurs(a1, a3, a4, 1);
            if ((v10 & 0x80000000) == 0)
            {
              inserted = hlp_InsertWordPhraseBoundaries(a1, a3, a4, a1[206] != 0, 0, 0);
              if ((inserted & 0x80000000) != 0)
              {
                return inserted;
              }

              if (*(a1 + 320) == 1)
              {
                inserted = hlp_setNLUPOSMappings(a1, a3, a4);
                if ((inserted & 0x80000000) != 0)
                {
                  return inserted;
                }
              }

              if (!*(a1 + 420))
              {
                return inserted;
              }

              return fe_stress_process(*a1, a3, a4, a1[7], a1[212], a1[183], a1[213], a1[214], a1[211], *(a1 + 860), *(a1 + 421));
            }
          }
        }
      }
    }

    else if (*(a1 + 28))
    {
      log_OutText((*a1)[4], "FE_PHRASING", 5, 0, "FEPHRRES: CRF Phrasing Enabled", 0);
      v10 = hlp_MarkSildursExternal(a1, a3, a4);
      if ((v10 & 0x80000000) == 0)
      {
        v10 = fe_phrasing_Process_CRFPhrasing(a1, a2, a3, a4, a5);
        if ((v10 & 0x80000000) == 0)
        {
          v10 = hlp_SetExternalSildurs(a1, a3, a4);
          if ((v10 & 0x80000000) == 0)
          {
            v10 = hlp_SetInternalSildurs(a1, a3, a4, 1);
            if ((v10 & 0x80000000) == 0)
            {
              inserted = hlp_InsertWordPhraseBoundaries(a1, a3, a4, 0, 0, 0);
              if ((inserted & 0x80000000) != 0 || *(a1 + 320) != 1)
              {
                return inserted;
              }

              return hlp_setNLUPOSMappings(a1, a3, a4);
            }
          }
        }
      }
    }

    else
    {
      v25 = v15 ^ 1;
      if (!*(a1 + 29))
      {
        v25 = 1;
      }

      if (v25)
      {
        return fe_phrasing_Process_Depes(a1, a2, a3, a4, a5);
      }

      else
      {
        v10 = hlp_MarkSildursExternal(a1, a3, a4);
        if ((v10 & 0x80000000) == 0)
        {
          v10 = hlp_SetExternalSildurs(a1, a3, a4);
          if ((v10 & 0x80000000) == 0)
          {
            v10 = fe_phrasing_Process_Mosynt(a1, a2, a3, a4, a5);
            if ((v10 & 0x80000000) == 0)
            {
              return hlp_SetInternalSildurs(a1, a3, a4, 0);
            }
          }
        }
      }
    }

    return v10;
  }

  v10 = hlp_MarkSildursExternal(a1, a3, a4);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  if ((fe_phrasing_Process_PandP(a1, a2, a3, a4, a5) & 0x80000000) != 0)
  {
    log_OutText((*a1)[4], "FE_PHRASING", 5, 0, "FEPHRRES: processing failed, fall back to alternative method", 0);
    v10 = paramc_ParamSetUInt((*a1)[5], "prmigactive", 0);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    goto LABEL_56;
  }

  v10 = hlp_Markup(a1, a3, a4);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v10 = hlp_SetExternalSildurs(a1, a3, a4);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v10 = hlp_SetInternalSildurs(a1, a3, a4, 0);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  inserted = paramc_ParamSetUInt((*a1)[5], "prmigactive", 1);
  if ((inserted & 0x80000000) == 0)
  {
    if (*(a1 + 320) != 1 || (inserted = hlp_setNLUPOSMappings(a1, a3, a4), (inserted & 0x80000000) == 0))
    {
      if (v19 && *(a1 + 324) == 1 && *(a1 + 720) && v30 == 1)
      {
        v22 = hlp_RemoveWordPhraseBoundaries(a1, a3, a4, *(a1 + 720), &v29, &v28);
        v23 = v29;
        if ((v22 & 0x80000000) == 0)
        {
          v22 = hlp_InsertWordPhraseBoundaries(a1, a3, a4, 1, v29, v28);
          if ((v22 & 0x80000000) == 0)
          {
            log_OutText((*a1)[4], "FE_PHRASING", 5, 0, "NN Phrasing : cleanup lingdb (numwords=%d)", *(a1 + 720));
            v22 = NNPausing_cleanLingdb(*a1, a1[7], a3, a4, (a1 + 163));
          }
        }

        inserted = v22;
        if (v23)
        {
          heap_Free((*a1)[1], v23);
        }
      }
    }
  }

  return inserted;
}

uint64_t hlp_MarkSildursExternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v6 = (*(*(a1 + 56) + 104))(a2, a3, 1, 0, &v14 + 2);
  if ((v6 & 0x80000000) == 0 && ((*(*(a1 + 56) + 184))(a2, a3, HIWORD(v14), 0, &v15 + 2) & 0x80000000) == 0 && HIWORD(v15) == 1)
  {
    v6 = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v14), 0, &v11, &v13 + 2);
    if ((v6 & 0x80000000) == 0 && HIWORD(v13) >= 2u)
    {
      v6 = (*(*(a1 + 56) + 104))(a2, a3, 2, HIWORD(v14), &v14);
      if ((v6 & 0x80000000) == 0)
      {
        v7 = v14;
        if (v14)
        {
          while (1)
          {
            v8 = (*(*(a1 + 56) + 168))(a2, a3, v7, 0, 1, &v12, &v13 + 2);
            if ((v8 & 0x80000000) != 0)
            {
              break;
            }

            if (v12 <= 0xA && ((1 << v12) & 0x610) != 0)
            {
              v8 = (*(*(a1 + 56) + 184))(a2, a3, v14, 8, &v15 + 2);
              if ((v8 & 0x80000000) != 0)
              {
                break;
              }

              if (HIWORD(v15))
              {
                v8 = (*(*(a1 + 56) + 168))(a2, a3, v14, 8, 1, &v15, &v13 + 2);
                if ((v8 & 0x80000000) != 0)
                {
                  break;
                }

                if (v15)
                {
                  v8 = (*(*(a1 + 56) + 160))(a2, a3, v14, 18, 9, "external", &v13);
                  if ((v8 & 0x80000000) != 0)
                  {
                    break;
                  }
                }
              }
            }

            v6 = (*(*(a1 + 56) + 120))(a2, a3, v14, &v14);
            if ((v6 & 0x80000000) == 0)
            {
              v7 = v14;
              if (v14)
              {
                continue;
              }
            }

            return v6;
          }

          return v8;
        }
      }
    }
  }

  return v6;
}

uint64_t hlp_Markup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v27 = 0;
  v25 = 0;
  v26 = 0;
  v24 = 1;
  __s = 0;
  v22 = 0;
  v21 = 0;
  v6 = (*(*(a1 + 56) + 104))(a2, a3, 1, 0, &v28 + 2);
  if ((v6 & 0x80000000) == 0 && ((*(*(a1 + 56) + 184))(a2, a3, HIWORD(v28), 0, &v22) & 0x80000000) == 0 && v22 == 1)
  {
    v6 = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v28), 0, &v21, &v30 + 2);
    if ((v6 & 0x80000000) == 0 && HIWORD(v30) >= 2u)
    {
      v7 = (*(*(a1 + 56) + 104))(a2, a3, 2, HIWORD(v28), &v28);
      if ((v7 & 0x80000000) != 0)
      {
        return v7;
      }

      v6 = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v28), 1, &v27, &v26 + 2);
      if ((v6 & 0x80000000) == 0)
      {
        v8 = v28;
        if (v28)
        {
          v9 = 0;
          v10 = 0;
          v11 = 0;
          v12 = 0;
          v13 = *(v27 + 12);
          while (1)
          {
            v7 = (*(*(a1 + 56) + 168))(a2, a3, v8, 0, 1, &v29, &v30 + 2);
            if ((v7 & 0x80000000) != 0)
            {
              return v7;
            }

            if ((v29 - 9) < 2 || v29 == 4)
            {
              v7 = (*(*(a1 + 56) + 168))(a2, a3, v28, 1, 1, &v26, &v30 + 2);
              if ((v7 & 0x80000000) != 0)
              {
                return v7;
              }

              v7 = (*(*(a1 + 56) + 168))(a2, a3, v28, 2, 1, &v25 + 2, &v30 + 2);
              if ((v7 & 0x80000000) != 0)
              {
                return v7;
              }

              LOWORD(v25) = 0;
              v15 = HIWORD(v26);
              if (v9 >= HIWORD(v26))
              {
                v15 = v9;
              }

              else
              {
                v16 = 0;
                v17 = v9;
                v18 = (v27 + 32 * v9 + 12);
                while ((HIWORD(v25) - ((HIWORD(v25) - v26) > 1)) > (*v18 - v13))
                {
                  if (*(v18 - 3) == 8)
                  {
                    v16 += v18[6];
                    LOWORD(v25) = v16;
                  }

                  ++v17;
                  v18 += 16;
                  if (HIWORD(v26) == v17)
                  {
                    goto LABEL_34;
                  }
                }

                v15 = v17;
LABEL_34:
                if (v16 && v10)
                {
                  v7 = (*(*(a1 + 56) + 160))(a2, a3, v10, 8, 1, &v25, &v30);
                  if ((v7 & 0x80000000) != 0)
                  {
                    return v7;
                  }

                  v7 = (*(*(a1 + 56) + 160))(a2, a3, v10, 18, 9, "external", &v30);
                  if ((v7 & 0x80000000) != 0)
                  {
                    return v7;
                  }

                  v16 = v25;
                }

                if (v16 && v12)
                {
                  if (v11 && v26 == v11)
                  {
                    v7 = (*(*(a1 + 56) + 160))(a2, a3, v12, 7, 1, &v24, &v30);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v7 = (*(*(a1 + 56) + 160))(a2, a3, v12, 8, 1, &v25, &v30);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }
                  }

                  else if (v26 != v11)
                  {
                    v7 = (*(*(a1 + 56) + 88))(a2, a3, v28, &v28);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v29 = 15;
                    v7 = (*(*(a1 + 56) + 160))(a2, a3, v28, 0, 1, &v29, &v30);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v7 = (*(*(a1 + 56) + 160))(a2, a3, v28, 1, 1, &v26, &v30);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v7 = (*(*(a1 + 56) + 168))(a2, a3, v12, 2, 1, &v25 + 2, &v30 + 2);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v7 = (*(*(a1 + 56) + 160))(a2, a3, v28, 2, 1, &v25 + 2, &v30);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v7 = (*(*(a1 + 56) + 160))(a2, a3, v12, 2, 1, &v26, &v30);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v7 = (*(*(a1 + 56) + 176))(a2, a3, v12, 4, &__s, &v30 + 2);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v19 = strlen(__s);
                    v7 = (*(*(a1 + 56) + 160))(a2, a3, v28, 4, (v19 + 1), __s, &v30);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v7 = (*(*(a1 + 56) + 160))(a2, a3, v12, 4, 2, "P", &v30);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v7 = (*(*(a1 + 56) + 160))(a2, a3, v28, 7, 1, &v24, &v30);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v7 = (*(*(a1 + 56) + 160))(a2, a3, v28, 8, 1, &v25, &v30);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v12 = v28;
                    v11 = v26;
                    v7 = (*(*(a1 + 56) + 120))(a2, a3, v28, &v28);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }
                  }
                }
              }

              v10 = v28;
              v9 = v15;
            }

            else if (v29 == 15)
            {
              v12 = v28;
              v7 = (*(*(a1 + 56) + 168))(a2, a3, v28, 1, 1, &v26, &v30 + 2);
              if ((v7 & 0x80000000) != 0)
              {
                return v7;
              }

              v11 = v26;
            }

            v6 = (*(*(a1 + 56) + 120))(a2, a3, v28, &v28);
            if ((v6 & 0x80000000) == 0)
            {
              v8 = v28;
              if (v28)
              {
                continue;
              }
            }

            return v6;
          }
        }
      }
    }
  }

  return v6;
}

uint64_t hlp_SetExternalSildurs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v50 = 0;
  v51 = 0;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  HIWORD(v46) = 0;
  v45 = 0;
  v44 = 0;
  v40 = 0;
  v39 = 0;
  v6 = (*(*(a1 + 56) + 104))(a2, a3, 1, 0, &v51);
  if ((v6 & 0x80000000) == 0 && ((*(*(a1 + 56) + 184))(a2, a3, v51, 0, &v51 + 2) & 0x80000000) == 0 && HIWORD(v51) == 1)
  {
    v6 = (*(*(a1 + 56) + 176))(a2, a3, v51, 0, &v39, &v50);
    if ((v6 & 0x80000000) == 0 && v50 >= 2u)
    {
      updated = (*(*(a1 + 56) + 176))(a2, a3, v51, 1, &v45, &v44);
      if ((updated & 0x80000000) != 0)
      {
        return updated;
      }

      else
      {
        v8 = *(v45 + 12);
        v6 = (*(*(a1 + 56) + 104))(a2, a3, 2, v51, &v50 + 2);
        if ((v6 & 0x80000000) == 0)
        {
          v48 = 0;
          HIWORD(v47) = 0;
          v43 = 0;
          v42 = 0;
          strcpy(__s1, "normal");
          strcpy(v53, "normal");
          v41 = 0;
          v46 = 0;
          v9 = HIWORD(v50);
          if (HIWORD(v50))
          {
            v10 = 0;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            while (1)
            {
              updated = (*(*(a1 + 56) + 168))(a2, a3, v9, 0, 1, &v49, &v50);
              if ((updated & 0x80000000) != 0)
              {
                return updated;
              }

              if (v49 > 0xA || ((1 << v49) & 0x610) == 0)
              {
                v30 = HIWORD(v50);
                v20 = v12;
                goto LABEL_76;
              }

              updated = (*(*(a1 + 56) + 168))(a2, a3, HIWORD(v50), 1, 1, &v48 + 2, &v50);
              if ((updated & 0x80000000) != 0)
              {
                return updated;
              }

              updated = (*(*(a1 + 56) + 168))(a2, a3, HIWORD(v50), 2, 1, &v48, &v50);
              if ((updated & 0x80000000) != 0)
              {
                return updated;
              }

              HIWORD(v46) = 0;
              if (v13)
              {
                updated = (*(*(a1 + 56) + 168))(a2, a3, v13, 2, 1, &v46 + 2, &v50);
                if ((updated & 0x80000000) != 0)
                {
                  return updated;
                }
              }

              __strcpy_chk();
              updated = hlp_UpdateDomain(a1, a2, a3, v51, &v43, HIWORD(v48), v48, &v42, v53);
              if ((updated & 0x80000000) != 0)
              {
                return updated;
              }

              if (v42)
              {
                updated = (*(*(a1 + 56) + 168))(a2, a3);
                if ((updated & 0x80000000) != 0)
                {
                  return updated;
                }

                v15 = HIWORD(v47);
              }

              else
              {
                v15 = v48;
                HIWORD(v47) = v48;
              }

              v38 = v13;
              if (v15 && v11 < v44)
              {
                v16 = v10;
                v17 = (v15 - 1);
                v18 = v11;
                v19 = v45 + 32 * v11;
                v20 = v12;
                if (v17 >= (*(v19 + 12) - v8))
                {
                  v20 = v12;
                  while (1)
                  {
                    if (*v19 == 31)
                    {
                      v20 = *(v19 + 24);
                    }

                    if (v44 - 1 == v18)
                    {
                      break;
                    }

                    v21 = *(v19 + 44) - v8;
                    v19 += 32;
                    ++v18;
                    if (v17 < v21)
                    {
                      v11 = v18;
                      goto LABEL_34;
                    }
                  }

                  v11 = v44;
                }
              }

              else
              {
                v16 = v10;
                v20 = v12;
              }

LABEL_34:
              hlp_GetDomainPauseDur(a1, "spell", &v41, &v40);
              v22 = strstr(__s1, "spell");
              v23 = strstr(v53, "spell");
              v10 = v16;
              if (v22)
              {
                if (v23)
                {
                  v24 = v38;
                  if (!HIWORD(v46) || ((v25 = *(v39 + HIWORD(v46) - 1), v26 = v25 > 0x3F, v27 = (1 << v25) & 0x8C00500200000000, !v26) ? (v28 = v27 == 0) : (v28 = 1), v28))
                  {
                    LOWORD(v12) = 0;
                    v29 = 1;
                  }

                  else
                  {
                    v29 = 0;
                    if (!v12)
                    {
                      LOWORD(v12) = v41;
                    }
                  }

                  goto LABEL_55;
                }

                v24 = v38;
                if (!v12)
                {
LABEL_51:
                  v29 = 0;
                  if (v40)
                  {
                    LOWORD(v12) = v41;
                  }

                  else
                  {
                    LOWORD(v12) = 200;
                  }

                  goto LABEL_55;
                }

                v29 = 0;
              }

              else if (v23)
              {
                v24 = v38;
                if (!v20)
                {
                  goto LABEL_51;
                }

                v29 = 0;
                LOWORD(v12) = v20;
              }

              else
              {
                LOWORD(v12) = 0;
                v29 = 1;
                v24 = v38;
              }

LABEL_55:
              if (v10 >= v44)
              {
                v31 = 0;
              }

              else
              {
                v31 = 0;
                v32 = v10;
                v33 = (v45 + 32 * v10 + 12);
                while ((v48 - ((v48 - HIWORD(v48)) > 1)) > (*v33 - v8))
                {
                  if (*(v33 - 3) == 8)
                  {
                    v31 += v33[6];
                  }

                  ++v32;
                  v33 += 16;
                  if (v44 == v32)
                  {
                    v10 = v44;
                    goto LABEL_64;
                  }
                }

                v10 = v32;
              }

LABEL_64:
              if (v29)
              {
                v34 = 0;
              }

              else
              {
                v34 = v12;
              }

              v35 = v29 ^ 1;
              v36 = v31 == 0;
              if (!v31)
              {
                v31 = v34;
              }

              LOWORD(v46) = v31;
              if (!v36)
              {
                v35 = 1;
              }

              if (v24)
              {
                if (v35)
                {
                  updated = (*(*(a1 + 56) + 160))(a2, a3, v24, 8, 1, &v46, &v47);
                  if ((updated & 0x80000000) != 0)
                  {
                    return updated;
                  }

                  updated = (*(*(a1 + 56) + 160))(a2, a3, v24, 18, 9, "external", &v47);
                  if ((updated & 0x80000000) != 0)
                  {
                    return updated;
                  }
                }
              }

              v30 = HIWORD(v50);
              v13 = HIWORD(v50);
LABEL_76:
              v6 = (*(*(a1 + 56) + 120))(a2, a3, v30, &v50 + 2);
              if ((v6 & 0x80000000) == 0)
              {
                v9 = HIWORD(v50);
                v12 = v20;
                if (HIWORD(v50))
                {
                  continue;
                }
              }

              return v6;
            }
          }
        }
      }
    }
  }

  return v6;
}

uint64_t hlp_SetInternalSildurs(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  HIWORD(v26) = 0;
  v22 = 0;
  v19 = 0;
  v8 = (*(*(a1 + 56) + 104))(a2, a3, 1, 0, &v31);
  if ((v8 & 0x80000000) == 0 && ((*(*(a1 + 56) + 184))(a2, a3, v31, 0, &v31 + 2) & 0x80000000) == 0 && HIWORD(v31) == 1)
  {
    v8 = (*(*(a1 + 56) + 176))(a2, a3, v31, 0, &v19, &v30);
    if ((v8 & 0x80000000) == 0 && v30 >= 2u)
    {
      v8 = (*(*(a1 + 56) + 104))(a2, a3, 2, v31, &v30 + 2);
      if ((v8 & 0x80000000) == 0)
      {
        LOWORD(v27) = 0;
        v25 = 0;
        v26 = 0;
        v28 = 0;
        v23 = 0;
        strcpy(__s, "normal");
        strcpy(v33, "normal");
        v9 = HIWORD(v30);
        if (HIWORD(v30))
        {
          LOWORD(v10) = 0;
          v11 = 0;
          while (1)
          {
            updated = (*(*(a1 + 56) + 168))(a2, a3, v9, 0, 1, &v29, &v30);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            if ((v29 - 9) < 2 || v29 == 4)
            {
              break;
            }

            if (v29 == 15)
            {
              v10 = HIWORD(v30);
              updated = (*(*(a1 + 56) + 168))(a2, a3, HIWORD(v30), 1, 1, &v27, &v30);
              if ((updated & 0x80000000) != 0)
              {
                return updated;
              }

              updated = (*(*(a1 + 56) + 168))(a2, a3, v10, 7, 1, &v26 + 2, &v30);
              if ((updated & 0x80000000) != 0)
              {
                return updated;
              }
            }

LABEL_48:
            v8 = (*(*(a1 + 56) + 120))(a2, a3, HIWORD(v30), &v30 + 2);
            if ((v8 & 0x80000000) != 0)
            {
              return v8;
            }

            v9 = HIWORD(v30);
            if (!HIWORD(v30))
            {
              if (!v11)
              {
                return v8;
              }

              HIWORD(v25) = 0;
              return (*(*(a1 + 56) + 160))(a2, a3, v11, 8, 1, &v25 + 2, &v27 + 2);
            }
          }

          updated = (*(*(a1 + 56) + 168))(a2, a3, HIWORD(v30), 1, 1, &v28 + 2, &v30);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          updated = (*(*(a1 + 56) + 168))(a2, a3, HIWORD(v30), 2, 1, &v28, &v30);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          LOWORD(v26) = 0;
          if (v11)
          {
            updated = (*(*(a1 + 56) + 168))(a2, a3, v11, 2, 1, &v26, &v30);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            LOWORD(v25) = 0;
            v24 = 0;
            updated = hlp_ReadSildur(a1, a2, a3, v11, &v25, &v24);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            if (v24)
            {
              v14 = 0;
            }

            else
            {
              if (v25)
              {
                v15 = a4 == 0;
              }

              else
              {
                v15 = 1;
              }

              v14 = v15;
            }
          }

          else
          {
            LOWORD(v25) = 0;
            v24 = 0;
            v14 = 1;
          }

          __strcpy_chk();
          updated = hlp_UpdateDomain(a1, a2, a3, v31, &v23 + 1, HIWORD(v28), v28, &v23, v33);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          hlp_GetDomainPauseDur(a1, __s, &v22, &v20);
          hlp_GetDomainPauseDur(a1, v33, &v21, &v20);
          v16 = v22;
          HIWORD(v25) = 0;
          v17 = v10 != 0;
          if (v14)
          {
            if (!HIWORD(v28) || !v10 || (v17 = 1, v27 != HIWORD(v28)) || HIWORD(v26) > 1u)
            {
LABEL_42:
              if (v11)
              {
                updated = (*(*(a1 + 56) + 160))(a2, a3, v11, 8, 1, &v25 + 2, &v27 + 2);
                if ((updated & 0x80000000) != 0)
                {
                  return updated;
                }
              }

              if (v17 && v27 == HIWORD(v28))
              {
                updated = (*(*(a1 + 56) + 160))(a2, a3, v10, 8, 1, &v25 + 2, &v27 + 2);
                if ((updated & 0x80000000) != 0)
                {
                  return updated;
                }
              }

              v11 = HIWORD(v30);
              goto LABEL_48;
            }
          }

          else
          {
            v16 = v25;
          }

          HIWORD(v25) = v16;
          goto LABEL_42;
        }
      }
    }
  }

  return v8;
}

uint64_t hlp_setNLUPOSMappings(void *a1, uint64_t a2, uint64_t a3)
{
  v29 = 0;
  v30 = 0;
  v28 = 0;
  *v27 = 0;
  v26 = 0;
  *&__n[1] = 0;
  __n[0] = 0;
  v23 = 0;
  __s = 0;
  v21 = 0;
  v22 = 0;
  if ((com_mosynt_GetCfgParamVal(a1[11], a1[12], a1[13], "fephrase_max_search_key", "64", &v21) & 0x80000000) != 0)
  {
    v6 = 64;
  }

  else
  {
    v6 = atoi(v21);
  }

  v7 = heap_Calloc(*(*a1 + 8), 1, v6);
  if (v7)
  {
    v8 = v7;
    v9 = (*(a1[7] + 104))(a2, a3, 1, 0, &v30 + 2);
    if ((v9 & 0x80000000) != 0)
    {
LABEL_33:
      v10 = v9;
    }

    else
    {
      v10 = (*(a1[7] + 184))(a2, a3, HIWORD(v30), 0, &v26);
      if ((v10 & 0x80000000) == 0 && v26 == 1)
      {
        v10 = (*(a1[7] + 176))(a2, a3, HIWORD(v30), 0, &v22, &v29 + 2);
        if ((v10 & 0x80000000) == 0 && HIWORD(v29) >= 2u)
        {
          v10 = (*(a1[7] + 104))(a2, a3, 2, HIWORD(v30), &v30);
          if ((v10 & 0x80000000) == 0)
          {
            v11 = v30;
            if (v30)
            {
              while (1)
              {
                v9 = (*(a1[7] + 168))(a2, a3, v11, 0, 1, &v28, &v29 + 2);
                if ((v9 & 0x80000000) != 0)
                {
                  goto LABEL_33;
                }

                if (v28 <= 0xA && ((1 << v28) & 0x610) != 0)
                {
                  v9 = (*(a1[7] + 176))(a2, a3, v30, 5, &__s, &v29 + 2);
                  if ((v9 & 0x80000000) != 0)
                  {
                    goto LABEL_33;
                  }

                  if (strlen(__s) != 1)
                  {
                    v9 = (*(a1[7] + 184))(a2, a3, v30, 14, &v26);
                    if ((v9 & 0x80000000) != 0)
                    {
                      goto LABEL_33;
                    }

                    if (v26)
                    {
                      v9 = (*(a1[7] + 176))(a2, a3, v30, 14, v27, &v29 + 2);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_33;
                      }

                      if (!HIWORD(v29))
                      {
                        *v8 = *__s;
                        *(v8 + 1) = 0;
                        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "NLUPOSMAP from %s to %s (default in lieu of NLU field)", __s, v23);
                        v14 = *(a1[7] + 160);
                        v15 = (strlen(v8) + 1);
                        v16 = a2;
                        v17 = a3;
                        v18 = v30;
                        v19 = v8;
                        goto LABEL_28;
                      }

                      hlp_NLUStrFind(*v27, "POS", &__n[1], __n);
                      strncpy(v8, *&__n[1], __n[0]);
                      *(v8 + __n[0]) = 0;
                      if ((ssftmap_FindReadOnly(a1[161], v8, &v23) & 0x1FFF) != 0x14)
                      {
                        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "NLUPOSMAP from %s (NLU %s) to %s", __s, *v27, v23);
                        v14 = *(a1[7] + 160);
                        v15 = (strlen(v23) + 1);
                        v16 = a2;
                        v17 = a3;
                        v18 = v30;
                        v19 = v23;
LABEL_28:
                        v9 = v14(v16, v17, v18, 5, v15, v19, &v29);
                        if ((v9 & 0x80000000) != 0)
                        {
                          goto LABEL_33;
                        }

                        goto LABEL_29;
                      }

                      *(v8 + 1) = 0;
                      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "NLUPOSMAP from %s (NLU %s) to %s", __s, *v27, v8);
                      v13 = strlen(v8);
                      v9 = (*(a1[7] + 160))(a2, a3, v30, 5, (v13 + 1), v8, &v29);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_33;
                      }
                    }
                  }
                }

LABEL_29:
                v10 = (*(a1[7] + 120))(a2, a3, v30, &v30);
                if ((v10 & 0x80000000) == 0)
                {
                  v11 = v30;
                  if (v30)
                  {
                    continue;
                  }
                }

                break;
              }
            }
          }
        }
      }
    }

    heap_Free(*(*a1 + 8), v8);
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }

  return v10;
}

uint64_t hlp_RemoveWordPhraseBoundaries(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t *a5, _WORD *a6)
{
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  *a6 = 0;
  result = (*(a1[7] + 104))(a2, a3, 1, 0, &v22 + 2);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a1[7] + 152))(a2, a3, 2, HIWORD(v22), &v18);
    if ((result & 0x80000000) == 0)
    {
      if (!v18)
      {
        goto LABEL_26;
      }

      result = (*(a1[7] + 104))(a2, a3, 2, HIWORD(v22), &v22);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v13 = v22;
      if (v22)
      {
        v14 = 0;
        v15 = 4 * a4;
        do
        {
          result = (*(a1[7] + 168))(a2, a3, v13, 0, 1, &v21, &v20 + 2);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          v16 = v22;
          if (v21 <= 0xA && ((1 << v21) & 0x610) != 0)
          {
            result = (*(a1[7] + 168))(a2, a3, v22, 1, 1, &v19, &v20 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            result = (*(a1[7] + 168))(a2, a3, v22, 2, 1, &v18 + 2, &v20 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            if (*a6 && v14)
            {
              *(v14 + 4 * (*a6 - 1) + 2) = HIWORD(v18);
            }
          }

          result = (*(a1[7] + 120))(a2, a3, v22, &v22);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (v21 == 15)
          {
            result = (*(a1[7] + 168))(a2, a3, v16, 1, 1, &v20, &v20 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            result = (*(a1[7] + 168))(a2, a3, v16, 2, 1, &v19 + 2, &v20 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            if (!v14)
            {
              v14 = heap_Calloc(*(*a1 + 8), 1, v15);
              if (!v14)
              {
                log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0);
                result = 2315264010;
                break;
              }
            }

            *(v14 + 4 * *a6) = v20;
            *(v14 + 4 * (*a6)++ + 2) = HIWORD(v19);
            result = (*(a1[7] + 192))(a2, a3, v16);
          }

          v13 = v22;
        }

        while (v22);
      }

      else
      {
LABEL_26:
        v14 = 0;
      }

      *a5 = v14;
    }
  }

  return result;
}

uint64_t hlp_InsertWordPhraseBoundaries(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6)
{
  v41[0] = 0;
  v39 = 0;
  v40 = 0;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v34 = 0;
  __s = 0;
  __s1 = 0;
  v32 = 0;
  result = (*(*(a1 + 56) + 104))(a2, a3, 1, 0, v41);
  if ((result & 0x80000000) == 0)
  {
    result = (*(*(a1 + 56) + 152))(a2, a3, 2, v41[0], &v32);
    if ((result & 0x80000000) == 0)
    {
      if (!v32 || (result = (*(*(a1 + 56) + 104))(a2, a3, 2, v41[0], &v40 + 2), (result & 0x80000000) == 0))
      {
        v13 = HIWORD(v40);
        v14 = 1;
        if (HIWORD(v40))
        {
          v15 = 0;
          v31 = 0;
          if (a4 == 1)
          {
            v16 = 0;
          }

          else
          {
            v16 = 200;
          }

          v29 = v16;
          v30 = (a5 + 2);
          v17 = -1;
          v18 = "*?";
          while (1)
          {
            result = (*(*(a1 + 56) + 168))(a2, a3, v13, 0, 1, &v39, &v38 + 2);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            if ((v39 - 9) < 2 || v39 == 4)
            {
              break;
            }

            if (v39 == 15)
            {
              LOWORD(v40) = HIWORD(v40);
            }

LABEL_71:
            result = (*(*(a1 + 56) + 120))(a2, a3, HIWORD(v40), &v40 + 2);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v13 = HIWORD(v40);
            if (!HIWORD(v40))
            {
              v14 = v15 == 0;
              goto LABEL_82;
            }
          }

          result = (*(*(a1 + 56) + 168))(a2, a3, HIWORD(v40), 1, 1, &v37 + 2, &v38 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = (*(*(a1 + 56) + 168))(a2, a3, HIWORD(v40), 2, 1, &v37, &v38 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = (*(*(a1 + 56) + 168))(a2, a3, HIWORD(v40), 8, 1, &v36, &v38 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = (*(*(a1 + 56) + 184))(a2, a3, HIWORD(v40), 18, &v32 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          LOWORD(v32) = 0;
          if (a6)
          {
            v21 = v30;
            v20 = a6;
            do
            {
              v22 = *v21;
              v21 += 2;
              if (v22 == v37)
              {
                LOWORD(v32) = 1;
              }

              --v20;
            }

            while (v20);
          }

          if (HIWORD(v32))
          {
            result = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v40), 18, &__s1, &v38 + 2);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v31 = strcmp(__s1, "external") == 0;
          }

          result = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v40), 3, &v34, &v38 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (strstr(v34, v18))
          {
            v15 = 1;
          }

          v23 = HIWORD(v37);
          v24 = v37;
          if (HIWORD(v37) > v37)
          {
            return 2315271857;
          }

          if (!v40)
          {
            result = hlp_InsertWordPhrase(a1, a2, a3, HIWORD(v40), SHIWORD(v37), v37, 0, v29, &v40);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

LABEL_48:
            if (v36)
            {
              v25 = v18;
              v43 = HIWORD(v40);
              v42 = 0;
              v41[1] = 0;
              if (((*(*(a1 + 56) + 120))(a2, a3) & 0x80000000) == 0)
              {
                v26 = 0;
                while (v43 && ((*(*(a1 + 56) + 168))(a2, a3) & 0x80000000) == 0)
                {
                  if (v42 == 15)
                  {
                    v26 = 1;
                  }

                  else if ((v42 - 9) < 2 || v42 == 4)
                  {
                    if (v26)
                    {
                      break;
                    }

                    v17 = v36;
                    v18 = v25;
                    if (v36 <= 0x1Du && !v31)
                    {
                      v36 = 0;
                      result = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v40), 8, 1, &v36, &v38);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      v17 = v36;
                    }

                    goto LABEL_71;
                  }

                  if (((*(*(a1 + 56) + 120))(a2, a3, v43, &v43) & 0x80000000) != 0)
                  {
                    break;
                  }
                }
              }

              v18 = v25;
            }

            else if (v32 == 1 && a4 == 1)
            {
              v17 = 0;
            }

            goto LABEL_71;
          }

          if (v17 < 1)
          {
            if (v17)
            {
LABEL_45:
              if (!a4)
              {
                result = (*(*(a1 + 56) + 160))(a2, a3, v40, 2, 1, &v37, &v38);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }
              }

              v17 = -1;
              goto LABEL_48;
            }

            if (a4 == 1)
            {
              result = (*(*(a1 + 56) + 160))(a2, a3);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v23 = HIWORD(v37);
              v24 = v37;
            }

            result = hlp_InsertWordPhrase(a1, a2, a3, HIWORD(v40), v23, v24, 2, 0, &v40);
          }

          else
          {
            if (a4 == 1)
            {
              result = (*(*(a1 + 56) + 160))(a2, a3);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v23 = HIWORD(v37);
              v24 = v37;
            }

            result = hlp_InsertWordPhrase(a1, a2, a3, HIWORD(v40), v23, v24, 1, v17, &v40);
          }

          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          goto LABEL_45;
        }

LABEL_82:
        if (a4 == 1 && v40)
        {
          result = (*(*(a1 + 56) + 160))(a2, a3, v40, 2, 1, &v37, &v38);
          if ((result & 0x80000000) != 0 || !v40)
          {
            return result;
          }
        }

        else if (!v40)
        {
          return result;
        }

        result = (*(*(a1 + 56) + 176))(a2, a3, v41[0], 0, &__s, &v38 + 2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (__s && *__s)
        {
          if (__s[strlen(__s) - 1] == 63 || !v14)
          {
            return (*(*(a1 + 56) + 160))(a2, a3, v40, 4, 2, "Y", &v38);
          }
        }

        else if (!v14)
        {
          return (*(*(a1 + 56) + 160))(a2, a3, v40, 4, 2, "Y", &v38);
        }

        return (*(*(a1 + 56) + 160))(a2, a3, v40, 4, 2, "T", &v38);
      }
    }
  }

  return result;
}

uint64_t fe_phrasing_Process_Depes(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v58 = *MEMORY[0x1E69E9840];
  v55 = 0;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v48 = 0;
  __s = 0;
  v47 = 0;
  v46 = 0;
  __s1 = 0;
  v44 = 0;
  *a5 = 1;
  v8 = (*(a1[7] + 104))(a3, a4, 1, 0, &v54 + 2);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  if (((*(a1[7] + 184))(a3, a4, HIWORD(v54), 0, &v46) & 0x80000000) != 0)
  {
    return v8;
  }

  if (v46 != 1)
  {
    return v8;
  }

  v8 = (*(a1[7] + 176))(a3, a4, HIWORD(v54), 0, &v55, &v52 + 2);
  if ((v8 & 0x80000000) != 0 || HIWORD(v52) < 2u)
  {
    return v8;
  }

  v9 = (*(a1[7] + 176))(a3, a4, HIWORD(v54), 1, &v48, &v47 + 2);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  v10 = *(v48 + 12);
  LastTnMarkerUpToPos = (*(a1[7] + 104))(a3, a4, 2, HIWORD(v54), &v54);
  if ((LastTnMarkerUpToPos & 0x80000000) != 0)
  {
    goto LABEL_26;
  }

  v12 = 1;
  v13 = 1;
  while (1)
  {
    if (!v54)
    {
      v21 = heap_Alloc(*(*a1 + 8), v12 + 128);
      a1[17] = v21;
      if (!v21 || (*v21 = 0, v22 = heap_Alloc(*(*a1 + 8), v12), (a1[18] = v22) == 0) || (*v22 = 0, v23 = heap_Alloc(*(*a1 + 8), v12), (a1[19] = v23) == 0))
      {
        v8 = 2315264010;
        log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0);
        goto LABEL_27;
      }

      *v23 = 0;
      LastTnMarkerUpToPos = (*(a1[7] + 104))(a3, a4, 2, HIWORD(v54), &v54);
      if ((LastTnMarkerUpToPos & 0x80000000) == 0)
      {
        LOWORD(v24) = v54;
        HIWORD(v53) = v54;
        if (v54)
        {
          v25 = 0;
          do
          {
            LastTnMarkerUpToPos = (*(a1[7] + 168))(a3, a4, v24, 0, 1, &v50, &v52 + 2);
            if ((LastTnMarkerUpToPos & 0x80000000) != 0)
            {
              goto LABEL_26;
            }

            if (v50 - 9 < 2 || v50 == 4)
            {
              *v56 = 0;
              v43 = 0;
              v46 = 0;
              LastTnMarkerUpToPos = (*(a1[7] + 168))(a3, a4, HIWORD(v53), 1, 1, &v52, &v52 + 2);
              if ((LastTnMarkerUpToPos & 0x80000000) != 0)
              {
                goto LABEL_26;
              }

              LastTnMarkerUpToPos = (*(a1[7] + 168))(a3, a4, HIWORD(v53), 2, 1, &v51, &v52 + 2);
              if ((LastTnMarkerUpToPos & 0x80000000) != 0)
              {
                goto LABEL_26;
              }

              if ((v51 - v52) <= 1)
              {
                v27 = 0;
              }

              else
              {
                v27 = -1;
              }

              *v56 = 0;
              v28 = v47;
              v29 = HIWORD(v47);
              if (v47 < HIWORD(v47))
              {
                v42 = v25;
                v30 = v53;
                v31 = 32 * v47;
                do
                {
                  if ((*(v48 + v31 + 12) - v10) >= (v51 + v27))
                  {
                    break;
                  }

                  if (*(v48 + v31) == 8 && v30 != 0)
                  {
                    *v56 += *(v48 + v31 + 24);
                    LastTnMarkerUpToPos = (*(a1[7] + 160))(a3, a4, v30, 8, 1, v56, &v43);
                    if ((LastTnMarkerUpToPos & 0x80000000) != 0)
                    {
                      goto LABEL_26;
                    }

                    LastTnMarkerUpToPos = (*(a1[7] + 160))(a3, a4, v30, 18, 9, "external", &v43);
                    if ((LastTnMarkerUpToPos & 0x80000000) != 0)
                    {
                      goto LABEL_26;
                    }

                    v29 = HIWORD(v47);
                  }

                  ++v28;
                  v31 += 32;
                }

                while (v28 < v29);
                v25 = v42;
              }

              LOWORD(v47) = v28;
              *v56 = 0;
              if (((*(a1[7] + 184))(a3, a4, HIWORD(v53), 8, &v46) & 0x80000000) != 0 || !v46)
              {
                LastTnMarkerUpToPos = (*(a1[7] + 160))(a3, a4, HIWORD(v53), 8, 1, v56, &v43);
                if ((LastTnMarkerUpToPos & 0x80000000) != 0)
                {
                  goto LABEL_26;
                }
              }

              v33 = HIWORD(v53);
              LOWORD(v53) = HIWORD(v53);
            }

            else if (v50 == 5)
            {
              v34 = HIWORD(v53);
              v33 = v25;
              if (HIWORD(v53) != v25)
              {
                LastTnMarkerUpToPos = (*(a1[7] + 176))(a3, a4, HIWORD(v53), 4, &__s1, &v52 + 2);
                if ((LastTnMarkerUpToPos & 0x80000000) != 0)
                {
                  goto LABEL_26;
                }

                LastTnMarkerUpToPos = (*(a1[7] + 168))(a3, a4, HIWORD(v53), 1, 1, &v52, &v52 + 2);
                if ((LastTnMarkerUpToPos & 0x80000000) != 0)
                {
                  goto LABEL_26;
                }

                LastTnMarkerUpToPos = (*(a1[7] + 168))(a3, a4, HIWORD(v53), 2, 1, &v51, &v52 + 2);
                if ((LastTnMarkerUpToPos & 0x80000000) != 0)
                {
                  goto LABEL_26;
                }

                LastTnMarkerUpToPos = hlp_GetLastTnMarkerUpToPos(a1, a3, a4, HIWORD(v54), v52, v57);
                if ((LastTnMarkerUpToPos & 0x80000000) != 0)
                {
                  goto LABEL_26;
                }

                v35 = __s1;
                if (!strcmp(__s1, "phon"))
                {
                  v35 = v57;
                  __s1 = v57;
                }

                LastTnMarkerUpToPos = hlp_Remap(a1, a3, a4, HIWORD(v54), HIWORD(v53), v35, &v51);
                if ((LastTnMarkerUpToPos & 0x80000000) != 0)
                {
                  goto LABEL_26;
                }

                v44 = 0;
                strcpy(v56, "tnpausedur");
                v36 = strlen(__s1);
                if (v36 < 255 - strlen(v56))
                {
                  __strcat_chk();
                  if ((paramc_ParamGetUInt(*(*a1 + 40), v56, &v44) & 0x80000000) != 0)
                  {
                    v44 = 0;
                  }
                }

                v37 = __s1;
                if (strstr(__s1, "spell"))
                {
                  v38 = HIWORD(v47);
                  v39 = v51;
                  v40 = v48;
                  if (HIWORD(v47))
                  {
                    v41 = v48 + 12;
                    do
                    {
                      if (v51 <= (*v41 - v10))
                      {
                        break;
                      }

                      if (*(v41 - 12) == 31)
                      {
                        v44 = *(v41 + 12);
                      }

                      v41 += 32;
                      --v38;
                    }

                    while (v38);
                  }
                }

                else
                {
                  v39 = v51;
                  v40 = v48;
                }

                LastTnMarkerUpToPos = hlp_Phrasing(a1, v55, v39, v37, a3, a4, &v54, v40, &v47, &v47 + 1, v10, v44, &v53, v12);
                if ((LastTnMarkerUpToPos & 0x80000000) != 0)
                {
                  goto LABEL_26;
                }

                v24 = v54;
                HIWORD(v53) = v54;
                v25 = v34;
                if (!v54)
                {
                  break;
                }

                continue;
              }
            }

            else
            {
              v33 = HIWORD(v53);
            }

            LastTnMarkerUpToPos = (*(a1[7] + 120))(a3, a4, v33, &v53 + 2);
            if ((LastTnMarkerUpToPos & 0x80000000) != 0)
            {
              goto LABEL_26;
            }

            v24 = HIWORD(v53);
            if (!v54)
            {
              break;
            }
          }

          while (v24);
        }

        LastTnMarkerUpToPos = hlp_InsertWordPhraseBoundaries(a1, a3, a4, 0, 0, 0);
      }

LABEL_26:
      v8 = LastTnMarkerUpToPos;
      goto LABEL_27;
    }

    LastTnMarkerUpToPos = (*(a1[7] + 168))(a3, a4);
    if ((LastTnMarkerUpToPos & 0x80000000) != 0)
    {
      goto LABEL_26;
    }

    if (v50 > 0xA || ((1 << v50) & 0x610) == 0)
    {
      goto LABEL_25;
    }

    if (!v13)
    {
      ++v12;
    }

    LastTnMarkerUpToPos = (*(a1[7] + 168))(a3, a4, v54, 1, 1, &v52, &v52 + 2);
    if ((LastTnMarkerUpToPos & 0x80000000) != 0)
    {
      goto LABEL_26;
    }

    LastTnMarkerUpToPos = (*(a1[7] + 168))(a3, a4, v54, 2, 1, &v51, &v52 + 2);
    if ((LastTnMarkerUpToPos & 0x80000000) != 0)
    {
      goto LABEL_26;
    }

    LastTnMarkerUpToPos = (*(a1[7] + 176))(a3, a4, v54, 5, &__s, &v52 + 2);
    if ((LastTnMarkerUpToPos & 0x80000000) != 0)
    {
      goto LABEL_26;
    }

    if (v51 < v52)
    {
      break;
    }

    v15 = strlen(__s);
    v13 = 0;
    if (v15 <= (v51 - v52))
    {
      v16 = v51 - v52;
    }

    else
    {
      v16 = v15;
    }

    v12 += v16;
LABEL_25:
    LastTnMarkerUpToPos = (*(a1[7] + 120))(a3, a4, v54, &v54);
    if ((LastTnMarkerUpToPos & 0x80000000) != 0)
    {
      goto LABEL_26;
    }
  }

  v8 = 2315271857;
LABEL_27:
  v17 = a1[17];
  if (v17)
  {
    heap_Free(*(*a1 + 8), v17);
  }

  a1[17] = 0;
  v18 = a1[18];
  if (v18)
  {
    heap_Free(*(*a1 + 8), v18);
  }

  a1[18] = 0;
  v19 = a1[19];
  if (v19)
  {
    heap_Free(*(*a1 + 8), v19);
  }

  a1[19] = 0;
  return v8;
}

uint64_t fe_phrasing_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62343, 1728);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2315264008;
  }
}

uint64_t fe_phrasing_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2315264001;
  }

  result = 0;
  *a2 = &IFePhrasing;
  return result;
}

uint64_t hlp_ReadSildur(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _WORD *a5, _DWORD *a6)
{
  *a5 = 0;
  *a6 = 0;
  if (!a4)
  {
    return 0;
  }

  v17 = 0;
  __s1 = 0;
  v15 = 0;
  v12 = (*(*(a1 + 56) + 184))(a2, a3, a4, 8, &v17);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  if (v17)
  {
    v12 = (*(*(a1 + 56) + 168))(a2, a3, a4, 8, 1, a5, &v15);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }
  }

  v13 = (*(*(a1 + 56) + 184))(a2, a3, a4, 18, &v17);
  if ((v13 & 0x80000000) == 0)
  {
    if (v17)
    {
      v13 = (*(*(a1 + 56) + 176))(a2, a3, a4, 18, &__s1, &v15);
      if ((v13 & 0x80000000) == 0 && !strcmp(__s1, "external"))
      {
        *a6 = 1;
      }
    }
  }

  return v13;
}

uint64_t hlp_CopyWordRec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v11 = 0;
  v18 = 0;
  __s = 0;
  v16 = 0;
  v15 = 0;
  while (1)
  {
    result = (*(*(a1 + 56) + 184))(a2, a3, a4, v11, &v18 + 2);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    if (HIWORD(v18))
    {
      if (v11 <= 0x11u && ((1 << v11) & 0x20186) != 0)
      {
        result = (*(*(a1 + 56) + 168))(a2, a3, a4, v11, 1, &v18, &v16 + 2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (v11 == 8 && *(a1 + 112) && v18)
        {
          v15 = 0;
          v10 = 1;
          (*(*(a1 + 56) + 160))(a2, a3, a4, 8, 1, &v15, &v16);
        }

        result = (*(*(a1 + 56) + 160))(a2, a3, a5, v11, 1, &v18, &v16);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      else
      {
        result = (*(*(a1 + 56) + 176))(a2, a3, a4);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v14 = strlen(__s);
        result = (*(*(a1 + 56) + 160))(a2, a3, a5, v11, (v14 + 1), __s, &v16);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }
    }

    v13 = v11++;
    if (v13 >= 0x15)
    {
      if (v10 == 1)
      {
        result = (*(*(a1 + 56) + 184))(a2, a3, a4, 7, &v18 + 2);
        if ((result & 0x80000000) == 0)
        {
          v15 = 3;
          return (*(*(a1 + 56) + 160))(a2, a3, a4, 7, 1, &v15, &v16);
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t hlp_splitNLURangeTags(uint64_t *a1, char *__s, uint64_t *a3, char **a4)
{
  v4 = 2315264010;
  if (!__s)
  {
    return 2315264007;
  }

  v7 = __s;
  v8 = *a1;
  v9 = *(*a1 + 8);
  v10 = strlen(__s);
  v11 = heap_Calloc(v9, 1, v10 + 1);
  if (v11)
  {
    v12 = v11;
    strcpy(v11, v7);
    v13 = strlen(v7);
    v14 = heap_Calloc(*(v8 + 8), 1, v13 + 1);
    if (!v14)
    {
      v92 = *(v8 + 8);
      v93 = v12;
LABEL_234:
      heap_Free(v92, v93);
      return v4;
    }

    v105 = a4;
    v113 = v14;
    strcpy(v14, v7);
    v15 = 0;
    v16 = v7;
    do
    {
      if (hlp_NLUStrKeyLen(v16) >= 3)
      {
        v17 = *v16 - 69;
        v18 = v17 > 0xE;
        v19 = (1 << v17) & 0x4011;
        v20 = v18 || v19 == 0;
        if (!v20 && v16[1] == 95)
        {
          ++v15;
        }
      }

      v16 = hlp_NLUStrNext(v16);
    }

    while (v16);
    if (!v15)
    {
      goto LABEL_235;
    }

    v21 = heap_Calloc(*(v8 + 8), 8, v15);
    if (!v21)
    {
LABEL_233:
      heap_Free(*(v8 + 8), v12);
      v92 = *(v8 + 8);
      v93 = v113;
      goto LABEL_234;
    }

    v22 = v21;
    v110 = 0;
    v111 = v12;
    v23 = v7;
    v106 = a3;
    v112 = v7;
    do
    {
      v24 = hlp_NLUStrKeyLen(v23);
      if (v24 >= 3)
      {
        v25 = *v23 - 69;
        v18 = v25 > 0xE;
        v26 = (1 << v25) & 0x4011;
        v27 = v18 || v26 == 0;
        if (!v27 && v23[1] == 95)
        {
          v28 = v24;
          v29 = heap_Calloc(*(v8 + 8), 1, v24 - 1);
          if (!v29)
          {
            v114 = v22;
            goto LABEL_227;
          }

          v30 = v29;
          strncpy(v29, v23 + 2, v28 - 2);
          v31 = v110;
          if (v110)
          {
            v32 = v110;
            v33 = v22;
            v34 = v110;
            while (1)
            {
              if (!*v33)
              {
LABEL_28:
                a3 = v106;
                v31 = v110;
                v7 = v112;
                goto LABEL_30;
              }

              if (!strcmp(*v33, v30))
              {
                break;
              }

              ++v33;
              if (!--v34)
              {
                goto LABEL_28;
              }
            }

            heap_Free(*(v8 + 8), v30);
            a3 = v106;
            v7 = v112;
          }

          else
          {
            v32 = 0;
LABEL_30:
            *(v22 + 8 * v32) = v30;
            v110 = v31 + 1;
          }
        }
      }

      v23 = hlp_NLUStrNext(v23);
    }

    while (v23);
    v35 = *(v8 + 8);
    if (!v110)
    {
      heap_Free(v35, v22);
      goto LABEL_235;
    }

    v114 = heap_Realloc(v35, v22, 8 * v110);
    if (v114)
    {
      v104 = heap_Calloc(*(v8 + 8), 2, v110);
      if (v104)
      {
        v36 = v7;
        do
        {
          v37 = hlp_NLUStrKeyLen(v36);
          if (v37 >= 3)
          {
            v38 = *v36 - 69;
            v18 = v38 > 0xE;
            v39 = (1 << v38) & 0x4011;
            v40 = v18 || v39 == 0;
            if (!v40 && v36[1] == 95)
            {
              v41 = 0;
              v42 = v37 - 2;
              do
              {
                v43 = *(v114 + 8 * v41);
                if (!v43)
                {
                  break;
                }

                if (!strncmp(v43, v36 + 2, v42))
                {
                  if ((v41 & 0x8000) == 0)
                  {
                    ++*(v104 + 2 * (v41 & 0x7FFF));
                  }

                  break;
                }

                ++v41;
              }

              while (v110 != v41);
            }
          }

          v36 = hlp_NLUStrNext(v36);
        }

        while (v36);
        v44 = heap_Calloc(*(v8 + 8), 8, v110);
        if (v44)
        {
          v45 = v44;
          v46 = 0;
          do
          {
            v47 = heap_Calloc(*(v8 + 8), 8, *(v104 + 2 * v46));
            *(v45 + 8 * v46) = v47;
            if (!v47)
            {
              goto LABEL_212;
            }

            ++v46;
          }

          while (v110 != v46);
          v48 = heap_Calloc(*(v8 + 8), 2, v110);
          if (!v48)
          {
LABEL_212:
            v63 = 0;
            goto LABEL_213;
          }

          v108 = v48;
          v49 = v7;
          do
          {
            v50 = hlp_NLUStrKeyLen(v49);
            if (v50 >= 3)
            {
              v51 = *v49 - 69;
              v18 = v51 > 0xE;
              v52 = (1 << v51) & 0x4011;
              if (!v18 && v52 != 0 && v49[1] == 95)
              {
                KeyIdx = hlp_getKeyIdx(v114, v110, v49 + 2, (v50 - 2));
                if ((KeyIdx & 0x80000000) == 0)
                {
                  v55 = KeyIdx;
                  v56 = *(v45 + 8 * KeyIdx);
                  v57 = hlp_NLUStrKeyValue(v49);
                  v58 = v57;
                  v59 = v57 ? hlp_NLUStrLength(v57) : 0;
                  if (!hlp_checkValExist(v56, *(v108 + 2 * v55), v58, v59))
                  {
                    v60 = heap_Calloc(*(v8 + 8), 1, v59 + 1);
                    if (!v60)
                    {
                      v12 = v111;
                      v63 = v108;
                      goto LABEL_213;
                    }

                    if (v58)
                    {
                      v60 = strncpy(v60, v58, v59);
                    }

                    v61 = *(v108 + 2 * v55);
                    *(v56 + 8 * v61) = v60;
                    *(v108 + 2 * v55) = v61 + 1;
                  }
                }
              }
            }

            v49 = hlp_NLUStrNext(v49);
          }

          while (v49);
          v12 = v111;
          v62 = v112;
          v63 = v108;
          while (1)
          {
            v64 = heap_Realloc(*(v8 + 8), *(v45 + 8 * v49), 8 * *(v108 + 2 * v49));
            if (!v64)
            {
              break;
            }

            *(v45 + 8 * v49++) = v64;
            if (v110 == v49)
            {
              v65 = 0;
              while (!*(v63 + 2 * v65))
              {
LABEL_204:
                if (++v65 == v110)
                {
                  v4 = 0;
                  goto LABEL_213;
                }
              }

              v66 = 0;
              v109 = v65;
              while (2)
              {
                v67 = *(v114 + 8 * v65);
                v68 = *(*(v45 + 8 * v65) + 8 * v66);
                v116 = 0;
                v115 = 0;
                if (v68)
                {
                  v69 = strlen(v68);
                }

                else
                {
                  v69 = 0;
                }

                v70 = strlen(v67);
                v71 = heap_Calloc(*(v8 + 8), 1, v70 + 3);
                if (!v71)
                {
                  v82 = 0;
                  v84 = 0;
                  goto LABEL_159;
                }

                v72 = v71;
                strcpy(v71, "S_");
                strcat(v71, v67);
                v73 = strlen(v67);
                v74 = heap_Calloc(*(v8 + 8), 1, v73 + 3);
                v75 = v74;
                if (v74)
                {
                  v107 = v69;
                  strcpy(v74, "I_");
                  strcat(v74, v67);
                  v76 = strlen(v67);
                  v77 = heap_Calloc(*(v8 + 8), 1, v76 + 3);
                  v78 = v77;
                  if (!v77)
                  {
                    v82 = 0;
                    v84 = 0;
                    goto LABEL_154;
                  }

                  strcpy(v77, "E_");
                  strcat(v77, v67);
                  if (!hlp_NLUStrFind(v62, v72, &v115, &v116) || (!v68 || v116 || *v68 != 32 || *(v68 + 1)) && (!v68 || v69 != v116 || strncmp(v68, v115, v116)))
                  {
                    heap_Free(*(v8 + 8), v72);
                    v72 = 0;
                  }

                  if (!hlp_NLUStrFind(v62, v75, &v115, &v116) || (!v68 || v116 || *v68 != 32 || *(v68 + 1)) && (!v68 || v69 != v116 || strncmp(v68, v115, v116)))
                  {
                    heap_Free(*(v8 + 8), v75);
                    v75 = 0;
                  }

                  if (!hlp_NLUStrFind(v62, v78, &v115, &v116) || (!v68 || v116 || *v68 != 32 || *(v68 + 1)) && (!v68 || v69 != v116 || strncmp(v68, v115, v116)))
                  {
                    heap_Free(*(v8 + 8), v78);
                    v78 = 0;
                  }

                  v79 = strlen(v62);
                  v80 = heap_Calloc(*(v8 + 8), 1, v79 + 1);
                  v81 = v62;
                  v82 = v80;
                  if (v80)
                  {
                    v83 = strlen(v81);
                    v84 = heap_Calloc(*(v8 + 8), 1, v83 + 1);
                    if (v84)
                    {
                      if (v72 && !v75 && !v78)
                      {
                        strcpy(v82, "S_");
                        strcat(v82, v67);
                        if (v107)
                        {
                          *&v82[strlen(v82)] = 58;
                          if (v68)
                          {
                            strcat(v82, v68);
                          }

                          strcpy(v84, "I_");
                          strcat(v84, v67);
                          *&v84[strlen(v84)] = 58;
                          v85 = v68;
                          if (!v68)
                          {
                            v78 = 0;
                            v75 = 0;
                            goto LABEL_154;
                          }

LABEL_153:
                          strcat(v84, v85);
LABEL_154:
                          heap_Free(*(v8 + 8), v72);
LABEL_155:
                          if (v75)
                          {
LABEL_156:
                            heap_Free(*(v8 + 8), v75);
                          }

                          if (v78)
                          {
                            goto LABEL_158;
                          }

LABEL_159:
                          if (v68 && *v68 == 32 && !*(v68 + 1))
                          {
                            v68 = 0;
                          }

                          v12 = v111;
                          hlp_NLUStrRemoveRangeKey(v111, v67, v68);
                          hlp_NLUStrRemoveRangeKey(v113, v67, v68);
                          v89 = strlen(v111);
                          if (v89 && v111[v89 - 1] != 59)
                          {
                            *&v111[strlen(v111)] = 59;
                          }

                          strcat(v111, v82);
                          v90 = strlen(v113);
                          v63 = v108;
                          if (v90 && v113[v90 - 1] != 59)
                          {
                            *&v113[strlen(v113)] = 59;
                          }

                          strcat(v113, v84);
                          if (v82)
                          {
                            heap_Free(*(v8 + 8), v82);
                          }

                          v65 = v109;
                          if (v84)
                          {
                            heap_Free(*(v8 + 8), v84);
                          }

                          ++v66;
                          v62 = v112;
                          if (v66 >= *(v108 + 2 * v109))
                          {
                            goto LABEL_204;
                          }

                          continue;
                        }

                        v78 = 0;
                        v75 = 0;
LABEL_151:
                        v84[2] = 0;
                        v88 = 24393;
LABEL_152:
                        *v84 = v88;
                        v85 = v67;
                        goto LABEL_153;
                      }

                      if (v72)
                      {
                        v86 = 1;
                      }

                      else
                      {
                        v86 = v75 == 0;
                      }

                      v87 = !v86;
                      if (!v86 && !v78)
                      {
                        strcpy(v82, "I_");
                        strcat(v82, v67);
                        if (v107)
                        {
                          *&v82[strlen(v82)] = 58;
                          if (v68)
                          {
                            strcat(v82, v68);
                          }

                          strcpy(v84, "I_");
                          strcat(v84, v67);
                          *&v84[strlen(v84)] = 58;
                          if (!v68)
                          {
                            v78 = 0;
                            goto LABEL_156;
                          }

                          goto LABEL_149;
                        }

                        v78 = 0;
                        strcpy(v84, "I_");
LABEL_183:
                        strcat(v84, v67);
                        goto LABEL_156;
                      }

                      if (!v72 && !v75 && v78)
                      {
                        strcpy(v82, "I_");
                        strcat(v82, v67);
                        if (!v107)
                        {
                          strcpy(v84, "E_");
                          strcat(v84, v67);
                          goto LABEL_158;
                        }

                        *&v82[strlen(v82)] = 58;
                        if (v68)
                        {
                          strcat(v82, v68);
                        }

                        strcpy(v84, "E_");
                        strcat(v84, v67);
                        *&v84[strlen(v84)] = 58;
                        if (!v68)
                        {
LABEL_158:
                          heap_Free(*(v8 + 8), v78);
                          goto LABEL_159;
                        }

                        goto LABEL_149;
                      }

                      if (v72 && v78)
                      {
                        strcpy(v82, "S_");
                        strcat(v82, v67);
                        if (v107)
                        {
                          *&v82[strlen(v82)] = 58;
                          if (v68)
                          {
                            strcat(v82, v68);
                          }

                          strcpy(v84, "E_");
                          strcat(v84, v67);
                          *&v84[strlen(v84)] = 58;
                          v85 = v68;
                          if (v68)
                          {
                            goto LABEL_153;
                          }

                          goto LABEL_154;
                        }

                        v84[2] = 0;
                        v88 = 24389;
                        goto LABEL_152;
                      }

                      if (v72 && v75 && !v78)
                      {
                        strcpy(v82, "S_");
                        strcat(v82, v67);
                        if (!v107)
                        {
                          v78 = 0;
                          goto LABEL_151;
                        }

                        *&v82[strlen(v82)] = 58;
                        if (v68)
                        {
                          strcat(v82, v68);
                        }

                        strcpy(v84, "I_");
                        strcat(v84, v67);
                        *&v84[strlen(v84)] = 58;
                        if (v68)
                        {
                          v85 = v68;
                          goto LABEL_153;
                        }

LABEL_124:
                        v78 = 0;
                        goto LABEL_154;
                      }

                      v91 = v87 ^ 1;
                      if (!v78)
                      {
                        v91 = 1;
                      }

                      if ((v91 & 1) == 0)
                      {
                        strcpy(v82, "I_");
                        strcat(v82, v67);
                        if (!v107)
                        {
                          strcpy(v84, "E_");
                          goto LABEL_183;
                        }

                        *&v82[strlen(v82)] = 58;
                        if (v68)
                        {
                          strcat(v82, v68);
                        }

                        strcpy(v84, "E_");
                        strcat(v84, v67);
                        *&v84[strlen(v84)] = 58;
                        if (!v68)
                        {
                          goto LABEL_156;
                        }

LABEL_149:
                        strcat(v84, v68);
                        goto LABEL_155;
                      }
                    }
                  }

                  else
                  {
                    v84 = 0;
                  }

                  if (v72)
                  {
                    goto LABEL_154;
                  }

                  goto LABEL_155;
                }

                break;
              }

              v82 = 0;
              v84 = 0;
              goto LABEL_124;
            }
          }

LABEL_213:
          v95 = 0;
          do
          {
            v96 = *(v45 + 8 * v95);
            if (v96)
            {
              if (v63)
              {
                v97 = *(v63 + 2 * v95);
                if (v97)
                {
                  for (i = 0; i < v97; ++i)
                  {
                    v99 = *(*(v45 + 8 * v95) + 8 * i);
                    if (v99)
                    {
                      heap_Free(*(v8 + 8), v99);
                      v97 = *(v63 + 2 * v95);
                    }
                  }

                  v96 = *(v45 + 8 * v95);
                }
              }

              heap_Free(*(v8 + 8), v96);
            }

            ++v95;
          }

          while (v95 != v110);
          heap_Free(*(v8 + 8), v45);
          if (v63)
          {
            heap_Free(*(v8 + 8), v63);
          }
        }

        a3 = v106;
        heap_Free(*(v8 + 8), v104);
LABEL_227:
        v94 = v110;
        if (!v110)
        {
          goto LABEL_232;
        }

LABEL_228:
        v100 = 0;
        v101 = v94;
        do
        {
          v102 = *(v114 + 8 * v100);
          if (v102)
          {
            heap_Free(*(v8 + 8), v102);
          }

          ++v100;
        }

        while (v101 != v100);
LABEL_232:
        heap_Free(*(v8 + 8), v114);
        if (v4)
        {
          goto LABEL_233;
        }

LABEL_235:
        v4 = 0;
        *a3 = v12;
        *v105 = v113;
        return v4;
      }
    }

    else
    {
      v114 = v22;
    }

    v94 = v110;
    goto LABEL_228;
  }

  return v4;
}

uint64_t hlp_GetSubPosForSEPX(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, const char *a5, unsigned int a6, int a7, char **a8)
{
  v15 = heap_Calloc(*(*a1 + 8), 1, a6 + 1);
  *a8 = v15;
  if (!v15)
  {
    return 2315264010;
  }

  if (a2 >= a3)
  {
    v18 = 1;
    if (a7)
    {
      goto LABEL_8;
    }

LABEL_17:
    LOWORD(v22) = 0;
    if (a6 && v18)
    {
      v22 = 0;
      while (a5[v22] != 45 || --v18)
      {
        if (++v22 >= a6)
        {
          goto LABEL_27;
        }
      }

      v18 = 0;
    }

LABEL_27:
    if ((a6 - 1 == v22) == v18)
    {
      v23 = v22;
LABEL_30:
      v24 = a5;
      goto LABEL_31;
    }

LABEL_29:
    v23 = a6;
    goto LABEL_30;
  }

  v16 = (a4 + a2);
  v17 = a3 - a2;
  v18 = 1;
  do
  {
    v19 = *v16++;
    if (v19 == 45)
    {
      ++v18;
    }

    --v17;
  }

  while (v17);
  if (!a7)
  {
    goto LABEL_17;
  }

LABEL_8:
  LOWORD(v20) = a6 - 1;
  if (a6 != 1 && v18)
  {
    v20 = (a6 - 1);
    while (a5[v20] != 45 || --v18)
    {
      if (!--v20)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  if (v18)
  {
    goto LABEL_29;
  }

LABEL_25:
  v23 = ((~v20 | 0xFFFF0000) + a6);
  v24 = &a5[v20 + 1];
LABEL_31:
  strncpy(v15, v24, v23);
  return 0;
}

uint64_t hlp_UpdateDomain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, unsigned int a6, unsigned int a7, unsigned __int16 *a8, char *a9)
{
  v13 = a4;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  __src = 0;
  *a8 = 0;
  v17 = *a5;
  if (*a5)
  {
    v25 = a4;
    v31 = *a5;
    v28 = 0;
    v27 = 0;
    goto LABEL_3;
  }

  v21 = (*(*(a1 + 56) + 104))(a2, a3, 2, a4, &v31);
  if ((v21 & 0x80000000) == 0)
  {
    v25 = v13;
    v17 = v31;
    v28 = 0;
    v27 = 0;
    if (v31)
    {
      do
      {
LABEL_3:
        v18 = (*(*(a1 + 56) + 168))(a2, a3, v17, 0, 1, &v30, &v29);
        if ((v18 & 0x80000000) != 0)
        {
          return v18;
        }

        v19 = v31;
        if (v30 == 5)
        {
          *a5 = v31;
          v18 = (*(*(a1 + 56) + 168))(a2, a3);
          if ((v18 & 0x80000000) != 0)
          {
            return v18;
          }

          v18 = (*(*(a1 + 56) + 168))(a2, a3, v31, 2, 1, &v27, &v29);
          if ((v18 & 0x80000000) != 0)
          {
            return v18;
          }

          v20 = 0;
          v19 = v31;
          if (v28 <= a6 && v27 >= a7)
          {
            *a8 = v31;
            v20 = 1;
          }
        }

        else
        {
          v20 = 0;
        }

        v21 = (*(*(a1 + 56) + 120))(a2, a3, v19, &v31);
        if ((v21 & 0x80000000) != 0)
        {
          return v21;
        }

        v17 = v31;
        if (v31)
        {
          v22 = v20;
        }

        else
        {
          v22 = 1;
        }
      }

      while ((v22 & 1) == 0 && v28 <= a6);
      if ((v20 & 1) == 0)
      {
        goto LABEL_24;
      }

      v21 = (*(*(a1 + 56) + 176))(a2, a3, *a8, 4, &__src, &v29);
      if ((v21 & 0x80000000) == 0)
      {
        v23 = strncpy(a9, __src, 0x100uLL);
        a9[256] = 0;
        if (!strcmp(v23, "phon"))
        {
          return hlp_GetLastTnMarkerUpToPos(a1, a2, a3, v25, v28, a9);
        }
      }
    }

    else
    {
LABEL_24:
      strncpy(a9, "normal", 0x100uLL);
      a9[256] = 0;
    }
  }

  return v21;
}

uint64_t hlp_GetDomainPauseDur(uint64_t a1, char *__s, int *a3, _DWORD *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *a4 = 0;
  strcpy(__sa, "tnpausedur");
  v8 = strlen(__s);
  result = strlen(__sa);
  if (v8 < 255 - result)
  {
    v11 = 0;
    __strcat_chk();
    result = paramc_ParamGetUInt(*(*a1 + 40), __sa, &v11);
    if ((result & 0x80000000) != 0 || !v11)
    {
      result = strstr(__s, "spell");
      if (result)
      {
        v10 = 100;
      }

      else
      {
        v10 = 200;
      }

      *a3 = v10;
    }

    else
    {
      *a3 = v11;
      *a4 = 1;
    }
  }

  return result;
}

uint64_t hlp_GetLastTnMarkerUpToPos(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, char *a6)
{
  v13 = 0;
  v12 = 0;
  result = (*(*(a1 + 56) + 176))(a2, a3, a4, 1, &v13, &v12);
  if ((result & 0x80000000) == 0)
  {
    v9 = v13 + 12;
    v10 = *(v13 + 12);
    strncpy(a6, "normal", 0xFFuLL);
    a6[255] = 0;
    v11 = v12;
    if (v12)
    {
      do
      {
        if (a5 < (*v9 - v10))
        {
          break;
        }

        if (*(v9 - 12) == 21)
        {
          strncpy(a6, *(v9 + 12), 0xFFuLL);
          a6[255] = 0;
        }

        v9 += 32;
        --v11;
      }

      while (v11);
    }

    return 0;
  }

  return result;
}

uint64_t hlp_Remap(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, const char *a6, _WORD *a7)
{
  v33 = *MEMORY[0x1E69E9840];
  v30 = a5;
  v29 = 0;
  v28 = 0;
  __s1 = 0;
  v26 = 0;
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v24 = 0;
  v23 = -1;
  v32[0] = 0;
  v12 = (*(a1[7] + 120))(a2, a3, a5, &v30);
  if ((v12 & 0x80000000) == 0)
  {
    v13 = v30;
    if (v30)
    {
      while (1)
      {
        LastTnMarkerUpToPos = (*(a1[7] + 168))(a2, a3, v13, 0, 1, &v28, &v29);
        if ((LastTnMarkerUpToPos & 0x80000000) != 0)
        {
          break;
        }

        if (v28 == 5)
        {
          LastTnMarkerUpToPos = (*(a1[7] + 176))(a2, a3, v30, 4, &__s1, &v29);
          if ((LastTnMarkerUpToPos & 0x80000000) != 0)
          {
            return LastTnMarkerUpToPos;
          }

          v15 = __s1;
          if (!strcmp(__s1, "phon"))
          {
            LastTnMarkerUpToPos = (*(a1[7] + 168))(a2, a3, v30, 1, 1, &v26 + 2, &v29);
            if ((LastTnMarkerUpToPos & 0x80000000) != 0)
            {
              return LastTnMarkerUpToPos;
            }

            LastTnMarkerUpToPos = hlp_GetLastTnMarkerUpToPos(a1, a2, a3, a4, SHIWORD(v26), v31);
            if ((LastTnMarkerUpToPos & 0x80000000) != 0)
            {
              return LastTnMarkerUpToPos;
            }

            v15 = v31;
            __s1 = v31;
          }

          strcpy(v32, "phrasing_");
          strlen(v15);
          __strcat_chk();
          LastTnMarkerUpToPos = (*(a1[13] + 96))(a1[11], a1[12], "fecfg", v32, &__c[3], &__c[1], __c);
          if ((LastTnMarkerUpToPos & 0x80000000) != 0)
          {
            return LastTnMarkerUpToPos;
          }

          strcpy(v32, "phrasing_");
          strlen(a6);
          __strcat_chk();
          v12 = (*(a1[13] + 96))(a1[11], a1[12], "fecfg", v32, &v24, &v23, __c);
          if ((v12 & 0x80000000) != 0)
          {
            return v12;
          }

          if (*&__c[1])
          {
            v16 = strchr(**&__c[3], __c[0]);
            if (v16)
            {
              *v16 = 0;
            }
          }

          if (v23)
          {
            v17 = strchr(*v24, __c[0]);
            if (v17)
            {
              *v17 = 0;
            }
          }

          v18 = __s1;
          if (strcmp(a6, __s1))
          {
            if (*&__c[1] != 1 || v23)
            {
              if (*&__c[1] || v23 != 1)
              {
                if (*&__c[1] != 1 || v23 != 1)
                {
                  return v12;
                }

                v20 = **&__c[3];
                v19 = *v24;
              }

              else
              {
                v19 = *v24;
                v20 = v18;
              }
            }

            else
            {
              v19 = **&__c[3];
              v20 = a6;
            }

            if (strcmp(v20, v19))
            {
              return v12;
            }
          }

          LastTnMarkerUpToPos = (*(a1[7] + 168))(a2, a3, v30, 2, 1, &v26, &v29);
          if ((LastTnMarkerUpToPos & 0x80000000) != 0)
          {
            return LastTnMarkerUpToPos;
          }

          *a7 = v26;
        }

        v12 = (*(a1[7] + 120))(a2, a3, v30, &v30);
        if ((v12 & 0x80000000) == 0)
        {
          v13 = v30;
          if (v30)
          {
            continue;
          }
        }

        return v12;
      }

      return LastTnMarkerUpToPos;
    }
  }

  return v12;
}

uint64_t hlp_Phrasing(uint64_t a1, char *a2, unsigned int a3, const char *a4, uint64_t a5, uint64_t a6, unsigned __int16 *a7, uint64_t a8, _WORD *a9, unsigned __int16 *a10, __int16 a11, int a12, unsigned __int16 *a13, unsigned __int16 a14)
{
  v15 = a7;
  v91 = *MEMORY[0x1E69E9840];
  v87 = 0;
  v88 = 0;
  v86 = 0;
  v84 = 0;
  __s2 = 0;
  v82 = 0;
  v83 = 0;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v77 = *a7;
  v21 = v77;
  strcpy(__s, "phrasing");
  v22 = strlen(__s);
  **(a1 + 136) = 0;
  **(a1 + 144) = 0;
  **(a1 + 152) = 0;
  v23 = (*(*(a1 + 56) + 168))(a5, a6, v21, 1, 1, &v87 + 2, &v88 + 2);
  if ((v23 & 0x80000000) != 0)
  {
    return v23;
  }

  v74 = v15;
  v73 = a8;
  v75 = HIWORD(v87);
  if (v21 && HIWORD(v87) < a3)
  {
    v24 = 1;
    do
    {
      v23 = (*(*(a1 + 56) + 168))(a5, a6, v21, 0, 1, &v86, &v88 + 2);
      if ((v23 & 0x80000000) != 0)
      {
        return v23;
      }

      if (v86 <= 0xA && ((1 << v86) & 0x610) != 0)
      {
        v23 = (*(*(a1 + 56) + 168))(a5, a6, v77, 2, 1, &v87, &v88 + 2);
        if ((v23 & 0x80000000) != 0)
        {
          return v23;
        }

        v23 = (*(*(a1 + 56) + 176))(a5, a6, v77, 5, &__s2, &v88 + 2);
        if ((v23 & 0x80000000) != 0)
        {
          return v23;
        }

        v23 = (*(*(a1 + 56) + 176))(a5, a6, v77, 9, &v84, &v88 + 2);
        if ((v23 & 0x80000000) != 0)
        {
          return v23;
        }

        if (!v24)
        {
          v26 = HIWORD(v87);
          PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(a2, HIWORD(v87));
          strncat(*(a1 + 136), &a2[HIWORD(v87) - (v26 - PreviousUtf8Offset)], (v26 - PreviousUtf8Offset));
          *(*(a1 + 144) + strlen(*(a1 + 144))) = 32;
          *(*(a1 + 152) + strlen(*(a1 + 152))) = 32;
        }

        if (HIWORD(v87) > v87)
        {
          return 2315271857;
        }

        strncat(*(a1 + 136), &a2[HIWORD(v87)], v87 - HIWORD(v87));
        strcat(*(a1 + 144), __s2);
        strncat(*(a1 + 152), v84, 1uLL);
        v28 = __s2;
        v29 = strlen(__s2);
        v30 = v87 - HIWORD(v87);
        if (v29 <= (v87 - HIWORD(v87)))
        {
          if (v30 > v29)
          {
            v33 = Utf8_LengthInUtf8chars(&a2[HIWORD(v87)], v30);
            v34 = v33 - strlen(__s2);
            if (v34 >= 1)
            {
              v35 = v34;
              if (v34)
              {
                do
                {
                  *(*(a1 + 144) + strlen(*(a1 + 144))) = 126;
                  --v35;
                }

                while (v35);
              }
            }

            v36 = Utf8_LengthInUtf8chars(&a2[HIWORD(v87)], v87 - HIWORD(v87));
            if (v36 > 1)
            {
              v37 = (v36 - 1);
              if (v36 != 1)
              {
                do
                {
                  strncat(*(a1 + 152), v84, 1uLL);
                  --v37;
                }

                while (v37);
              }
            }
          }
        }

        else
        {
          if (v29 - v87 + HIWORD(v87))
          {
            v31 = 0;
            do
            {
              *(*(a1 + 136) + strlen(*(a1 + 136))) = 126;
              ++v31;
              v28 = __s2;
            }

            while (strlen(__s2) - v87 + HIWORD(v87) > v31);
          }

          if (strlen(v28) != 1)
          {
            v32 = 0;
            do
            {
              strncat(*(a1 + 152), v84, 1uLL);
              ++v32;
            }

            while (strlen(__s2) - 1 > v32);
          }
        }

        v24 = 0;
      }

      v23 = (*(*(a1 + 56) + 120))(a5, a6, v77, &v77);
      if ((v23 & 0x80000000) != 0)
      {
        return v23;
      }

      if (!v77)
      {
        break;
      }

      v23 = (*(*(a1 + 56) + 168))(a5, a6);
      if ((v23 & 0x80000000) != 0)
      {
        return v23;
      }

      LOWORD(v21) = v77;
      if (!v77)
      {
        break;
      }
    }

    while (HIWORD(v87) < a3);
  }

  v23 = (*(*(a1 + 104) + 104))(*(a1 + 88), *(a1 + 96), a4, *(a1 + 136), a14);
  if ((v23 & 0x80000000) != 0)
  {
    return v23;
  }

  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "%s L1: %s", __s, *(a1 + 136));
  v38 = strlen(*(a1 + 136));
  v23 = (*(*(a1 + 80) + 120))(*(a1 + 64), *(a1 + 72), 0, *(a1 + 136), v38);
  if ((v23 & 0x80000000) != 0)
  {
    return v23;
  }

  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "%s L2: %s", __s, *(a1 + 144));
  v39 = strlen(*(a1 + 144));
  v23 = (*(*(a1 + 80) + 120))(*(a1 + 64), *(a1 + 72), 1, *(a1 + 144), v39);
  if ((v23 & 0x80000000) != 0)
  {
    return v23;
  }

  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "%s L5: %s", __s, *(a1 + 152));
  v40 = strlen(*(a1 + 152));
  v23 = (*(*(a1 + 80) + 120))(*(a1 + 64), *(a1 + 72), 4, *(a1 + 152), v40);
  if ((v23 & 0x80000000) != 0)
  {
    return v23;
  }

  if (strcmp(a4, "normal") && strlen(a4) + v22 + 2 <= 0xFF)
  {
    __strcat_chk();
    __strcat_chk();
  }

  if (((*(*(a1 + 80) + 80))(*(a1 + 64), *(a1 + 72), __s) & 0x80000000) != 0)
  {
    __s[v22] = 0;
    (*(*(a1 + 80) + 80))(*(a1 + 64), *(a1 + 72), __s);
  }

  v23 = (*(*(a1 + 80) + 128))(*(a1 + 64), *(a1 + 72), 0, &v83, &v81 + 2);
  if ((v23 & 0x80000000) != 0)
  {
    return v23;
  }

  v83[HIWORD(v81)] = 0;
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "%s O1: %s", __s, v83);
  v23 = (*(*(a1 + 80) + 128))(*(a1 + 64), *(a1 + 72), 2, &v82, &v81 + 2);
  if ((v23 & 0x80000000) != 0)
  {
    return v23;
  }

  v82[HIWORD(v81)] = 0;
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "%s O3: %s", __s, v82);
  if (!v75)
  {
    if (strchr(v82, 87))
    {
      v44 = strrchr(a2, 63);
      if (v44)
      {
        if (v44 != a2 && *(v44 - 1) != 32)
        {
          *v44 = 46;
        }
      }
    }
  }

  v23 = (*(*(a1 + 56) + 168))(a5, a6, *v15, 1, 1, &v87 + 2, &v88 + 2);
  if ((v23 & 0x80000000) != 0)
  {
    return v23;
  }

  v41 = (*(*(a1 + 56) + 136))(a5, a6, *v15, &v78);
  if ((v41 & 0x80000000) == 0)
  {
    if (!v78)
    {
      goto LABEL_70;
    }

    v41 = (*(*(a1 + 56) + 168))(a5, a6);
    if ((v41 & 0x80000000) != 0)
    {
      return v41;
    }

    v42 = v78;
    if (v78)
    {
      do
      {
        if (v86 <= 0xA && ((1 << v86) & 0x610) != 0)
        {
          goto LABEL_71;
        }

        v41 = (*(*(a1 + 56) + 136))(a5, a6, v42, &v78);
        if ((v41 & 0x80000000) != 0)
        {
          return v41;
        }

        if (!v78)
        {
          break;
        }

        v41 = (*(*(a1 + 56) + 168))(a5, a6);
        if ((v41 & 0x80000000) != 0)
        {
          return v41;
        }

        v42 = v78;
      }

      while (v78);
      v42 = 0;
    }

    else
    {
LABEL_70:
      v42 = 0;
    }

LABEL_71:
    v45 = v83;
    if (*v83 == 35)
    {
      memset(v89, 0, 11);
      LOWORD(v81) = 200;
      ++v83;
      if (v45[1] == 91)
      {
        v83 = v45 + 2;
        v46 = *(v45 + 2);
        if (v45[2])
        {
          v47 = 0;
          LOWORD(v48) = 0;
          v49 = v45 + 3;
          while (v46 != 93 && v47 <= 9)
          {
            v89[v47] = v46;
            v83 = &v49[v47];
            v46 = v49[v47++];
            LOWORD(v48) = v48 + 1;
            if (!v46)
            {
              goto LABEL_81;
            }
          }

          LOWORD(v48) = v47;
LABEL_81:
          v48 = v48;
        }

        else
        {
          v48 = 0;
        }

        v89[v48] = 0;
      }

      v50 = a12;
      if (!a12)
      {
        v50 = atoi(v89);
      }

      LOWORD(v81) = v50;
      if (v42)
      {
        v41 = hlp_ReadSildur(a1, a5, a6, v42, &v80, &v79);
        if ((v41 & 0x80000000) != 0)
        {
          return v41;
        }

        if (!v79)
        {
          v41 = (*(*(a1 + 56) + 160))(a5, a6, v78, 8, 1, &v81, &v88);
          if ((v41 & 0x80000000) != 0)
          {
            return v41;
          }
        }
      }
    }

    v51 = *v15;
    if (*v15)
    {
      v52 = HIWORD(v87) >= a3;
    }

    else
    {
      v52 = 1;
    }

    if (!v52)
    {
      do
      {
        v23 = (*(*(a1 + 56) + 168))(a5, a6, v51, 0, 1, &v86, &v88 + 2);
        if ((v23 & 0x80000000) != 0)
        {
          return v23;
        }

        if (v86 <= 0xA && ((1 << v86) & 0x610) != 0)
        {
          v23 = (*(*(a1 + 56) + 168))(a5, a6, *v15, 1, 1, &v87 + 2, &v88 + 2);
          if ((v23 & 0x80000000) != 0)
          {
            return v23;
          }

          v23 = (*(*(a1 + 56) + 168))(a5, a6, *v15, 2, 1, &v87, &v88 + 2);
          if ((v23 & 0x80000000) != 0)
          {
            return v23;
          }

          v54 = v83 + 1;
          for (i = v83 + 3; ; ++i)
          {
            v56 = *(v54 - 1);
            if (v56 <= 0x22)
            {
              if (!*(v54 - 1) || v56 == 32)
              {
LABEL_111:
                *v89 = 0;
                LOWORD(v81) = 0;
                if (((*(*(a1 + 56) + 184))(a5, a6, *v15, 8, v89) & 0x80000000) == 0 && *v89 == 1)
                {
                  v23 = (*(*(a1 + 56) + 168))(a5, a6, *v15, 8, 1, &v81, &v88 + 2);
                  if ((v23 & 0x80000000) != 0)
                  {
                    return v23;
                  }
                }

                if (!v81)
                {
LABEL_115:
                  v23 = (*(*(a1 + 56) + 160))(a5, a6, *v15, 8, 1, &v81, &v88);
                  if ((v23 & 0x80000000) != 0)
                  {
                    return v23;
                  }
                }

LABEL_132:
                v63 = v83;
                v64 = *v83;
                while (1)
                {
                  v65 = v63;
                  if (((v64 - 93) > 0x21 || ((1 << (v64 - 93)) & 0x200000005) == 0) && v64 != 32)
                  {
                    break;
                  }

                  ++v63;
                  v83 = v65 + 1;
                  v64 = *(v65 + 1);
                  if (v64 == 35)
                  {
                    v66 = v65 + 2;
                    do
                    {
                      if (v64 == 32)
                      {
                        break;
                      }

                      if (v64 == 95)
                      {
                        break;
                      }

                      v83 = v66;
                      v67 = *v66++;
                      v64 = v67;
                    }

                    while (v67);
                    v63 = v66 - 1;
                  }
                }

                if ((v87 - HIWORD(v87)) <= 1)
                {
                  v68 = 0;
                }

                else
                {
                  v68 = -1;
                }

                LOWORD(v81) = 0;
                v69 = *a9;
                if (v69 < *a10)
                {
                  do
                  {
                    v70 = v73 + 32 * v69;
                    if ((*(v70 + 12) - a11) >= (v87 + v68))
                    {
                      break;
                    }

                    if (*v70 == 8 && v78 != 0)
                    {
                      LOWORD(v81) = v81 + *(v70 + 24);
                      v23 = (*(*(a1 + 56) + 160))(a5, a6);
                      if ((v23 & 0x80000000) != 0)
                      {
                        return v23;
                      }

                      v23 = (*(*(a1 + 56) + 160))(a5, a6, v78, 18, 9, "external", &v88);
                      if ((v23 & 0x80000000) != 0)
                      {
                        return v23;
                      }

                      LOWORD(v69) = *a9;
                    }

                    LOWORD(v69) = v69 + 1;
                    *a9 = v69;
                  }

                  while (*a10 > v69);
                }

                v15 = v74;
                v57 = *v74;
                v78 = *v74;
                goto LABEL_156;
              }
            }

            else
            {
              if (v56 == 35)
              {
                memset(v89, 0, 11);
                LOWORD(v81) = 200;
                v83 = v54;
                if (*v54 == 91)
                {
                  v83 = v54 + 1;
                  v58 = *(v54 + 1);
                  if (v54[1])
                  {
                    v59 = 0;
                    v60 = 0;
                    while (v58 != 93 && v59 <= 9)
                    {
                      v89[v59++] = v58;
                      ++v60;
                      v83 = i;
                      v61 = *i++;
                      v58 = v61;
                      if (!v61)
                      {
                        goto LABEL_127;
                      }
                    }

                    v60 = v59;
                  }

                  else
                  {
                    v60 = 0;
                  }

LABEL_127:
                  v89[v60] = 0;
                }

                v62 = a12;
                if (!a12)
                {
                  v62 = atoi(v89);
                }

                LOWORD(v81) = v62;
                v23 = hlp_ReadSildur(a1, a5, a6, *v15, &v80, &v79);
                if ((v23 & 0x80000000) == 0)
                {
                  if (!v79)
                  {
                    goto LABEL_115;
                  }

                  goto LABEL_132;
                }

                return v23;
              }

              if (v56 == 95 || v56 == 126)
              {
                goto LABEL_111;
              }
            }

            v83 = v54++;
          }
        }

        v57 = *v15;
LABEL_156:
        v41 = (*(*(a1 + 56) + 120))(a5, a6, v57, v15);
        if ((v41 & 0x80000000) != 0)
        {
          return v41;
        }

        if (!*v15)
        {
          break;
        }

        v41 = (*(*(a1 + 56) + 168))(a5, a6);
        if ((v41 & 0x80000000) != 0)
        {
          return v41;
        }

        v51 = *v15;
        if (!*v15)
        {
          break;
        }
      }

      while (HIWORD(v87) < a3);
    }

    *a13 = v78;
  }

  return v41;
}

uint64_t hlp_InsertWordPhrase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, __int16 a6, __int16 a7, __int16 a8, unsigned __int16 *a9)
{
  v18 = a5;
  v17 = a6;
  v16 = a7;
  v15 = a8;
  v14 = 15;
  result = (*(*(a1 + 56) + 88))(a2, a3, a4, a9);
  if ((result & 0x80000000) == 0)
  {
    v13 = 0;
    result = (*(*(a1 + 56) + 160))(a2, a3, *a9, 0, 1, &v14, &v13);
    if ((result & 0x80000000) == 0)
    {
      result = (*(*(a1 + 56) + 160))(a2, a3, *a9, 1, 1, &v18, &v13);
      if ((result & 0x80000000) == 0)
      {
        result = (*(*(a1 + 56) + 160))(a2, a3, *a9, 2, 1, &v17, &v13);
        if ((result & 0x80000000) == 0)
        {
          result = (*(*(a1 + 56) + 160))(a2, a3, *a9, 4, 2, "P", &v13);
          if ((result & 0x80000000) == 0)
          {
            result = (*(*(a1 + 56) + 160))(a2, a3, *a9, 7, 1, &v16, &v13);
            if ((result & 0x80000000) == 0)
            {
              return (*(*(a1 + 56) + 160))(a2, a3, *a9, 8, 1, &v15, &v13);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t fe_phrasing_isFeatureRequired(uint64_t a1, unsigned int a2, int a3, unsigned __int16 *a4)
{
  if (a2 < 2)
  {
    return 0;
  }

  v6 = 0;
  v7 = g_featureNames_3[a3];
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

uint64_t fe_phrasing_setFeature(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, const char *a6)
{
  v13 = -1;
  result = fe_phrasing_isFeatureRequired(a2, a3, a4, &v13);
  if (result)
  {
    if (!*a6)
    {
      result = 0;
      **(a5 + 8 * v13) = 61;
      return result;
    }

    v10 = v13;
    if (strlen(a6) <= 0x40)
    {
      v12 = *(a5 + 8 * v13);
    }

    else
    {
      v11 = strlen(a6);
      v12 = heap_Realloc(*(a1 + 8), *(a5 + 8 * v13), v11 + 1);
      if (!v12)
      {
        log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
        return 2315264010;
      }

      *(a5 + 8 * v10) = v12;
    }

    strcpy(v12, a6);
    return 0;
  }

  return result;
}

const char *fe_phrasing_feat_word(uint64_t a1, int a2, int a3)
{
  v3 = a3 + a2;
  if (a3 + a2 < 0 || v3 >= *(a1 + 1072))
  {
    return "=";
  }

  v4 = *(*(a1 + 1064) + 184 * v3 + 56);
  v5 = strlen(v4);
  if (v5)
  {
    if (doesWordEndInCommaNN(v4, ",:;.?!|_~'<>{}#()[]^\\=@/&$*#"))
    {
      v6 = &v4[v5];
      if (memchr(",:;.?!|_~'<>{}#()[]^\\=@/&$*#", *(v6 - 1), 0x1EuLL))
      {
        *(v6 - 1) = 0;
      }
    }
  }

  return v4;
}

char *fe_phrasing_feat_wordlen(char *result, int a2, int a3, char *a4)
{
  *a4 = 0;
  v5 = a3 + a2;
  if (a3 + a2 < 0 || v5 >= *(result + 536))
  {
    *a4 = 61;
  }

  else
  {
    v6 = Utf8_Utf8NbrOfSymbols(*(*(result + 133) + 184 * v5 + 56)) - 1;

    return LH_itoa(v6, a4, 0xAu);
  }

  return result;
}

size_t fe_phrasing_feat_character(uint64_t a1, int a2, int a3, int a4, _WORD *a5)
{
  bzero(a5, 0x800uLL);
  result = fe_phrasing_feat_word(a1, a2, a4);
  v11 = result;
  if (*result == 61 && !*(result + 1))
  {
    goto LABEL_6;
  }

  result = strlen(result);
  v12 = result;
  v13 = result;
  if (!result)
  {
    goto LABEL_6;
  }

  if (a3)
  {
    result = utf8_GetPreviousUtf8Offset(v11, result);
    if (result > v13)
    {
LABEL_6:
      *a5 = 61;
      return result;
    }

    v16 = &v11[result];
    NextUtf8Offset = (v12 - result);
    v15 = a5;
  }

  else
  {
    NextUtf8Offset = utf8_GetNextUtf8Offset(v11, 0);
    v15 = a5;
    v16 = v11;
  }

  return strncpy(v15, v16, NextUtf8Offset);
}

uint64_t fe_phrasing_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2315264007;
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

uint64_t statcomp_isDctFeature(char *__s1, _WORD *a2, uint64_t *a3)
{
  v3 = *(a3 + 4);
  if (!*(a3 + 4))
  {
    return 0;
  }

  v6 = 0;
  v7 = *a3;
  while (strcmp(__s1, *(v7 + 8 * v6)))
  {
    if (v3 == ++v6)
    {
      return 0;
    }
  }

  *a2 = v6;
  return 1;
}

uint64_t statcomp_isDctMappedFeature(char *__s1, _WORD *a2, unsigned __int16 *a3)
{
  v3 = a3[4];
  if (!a3[4])
  {
    return 0;
  }

  v6 = 0;
  for (i = (*a3 + 8); strcmp(__s1, *i); i += 2)
  {
    if (v3 == ++v6)
    {
      return 0;
    }
  }

  *a2 = v6;
  return 1;
}

uint64_t statcomp_isDynamicFeature(char *__s1, _WORD *a2)
{
  v4 = 0;
  while (1)
  {
    v5 = g_statcomp_FeatureNames[v4];
    if (!strcmp(__s1, v5))
    {
      break;
    }

    v6 = strlen(v5);
    v7 = strlen(__s1);
    if (v7 > v6 && !strcmp(&__s1[v7 - v6], v5))
    {
      break;
    }

    if (++v4 == 7)
    {
      return 0;
    }
  }

  *a2 = v4;
  return 1;
}

uint64_t statcomp_setFeature(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, char *__s)
{
  if (strlen(__s) <= 0x20)
  {
    v11 = *(a4 + 8 * a3);
  }

  else
  {
    v10 = strlen(__s);
    v11 = heap_Realloc(*(a2 + 8), *(a4 + 8 * a3), v10 + 1);
    if (!v11)
    {
      log_OutPublic(*(a2 + 32), "FE_POS", 35000, 0);
      return 2313166858;
    }

    *(a4 + 8 * a3) = v11;
  }

  strcpy(v11, __s);
  v12 = *(a1 + 1336);
  if (!v12)
  {
    return 0;
  }

  v13 = *(a4 + 8 * a3);
  v14 = *(*(a1 + 1312) + 8 * a3);
  v15 = strlen(v14);
  v16 = 0;
  v17 = *(a1 + 1328);
  while (1)
  {
    v18 = v16;
    if (!strncmp(*(v17 + 16 * v16), v14, v15))
    {
      break;
    }

    v16 = v18 + 1;
    if (v12 <= (v18 + 1))
    {
      return 0;
    }
  }

  v20 = *(v17 + 16 * v18 + 8);
  v21 = strstr(v20, v13);
  if (v21)
  {
    v22 = v21;
    v23 = strlen(v13);
    v24 = strlen(v20);
    v25 = v24;
    v26 = &v20[v24];
    while (v22 != v20 || v25 != v23 && (v25 <= v23 + 1 || v22[v23] != 32))
    {
      if (v22 > v20)
      {
        v27 = &v22[v23];
        if (v26 > (v27 + 1) && *v27 == 32)
        {
          if (*(v22 - 1) == 32)
          {
            return 0;
          }
        }

        else if (v26 == v27)
        {
          return 0;
        }
      }

      v22 = strstr(&v22[v23], v13);
      if (!v22)
      {
        goto LABEL_23;
      }
    }

    return 0;
  }

LABEL_23:
  result = 0;
  *v13 = 61;
  return result;
}

uint64_t statcomp_setDynamicFeature(uint64_t a1, uint64_t a2, int a3, unsigned int a4, uint64_t a5, const char **a6, const char **a7, int a8, unsigned __int16 a9)
{
  LODWORD(v9) = a8;
  v32 = *MEMORY[0x1E69E9840];
  v15 = g_statcomp_FeatureNames[a3];
  v16 = strcmp(v15, "CW_SYLLABLE_LEN");
  if (v16 && strcmp(v15, "SYLLABLE_LEN_AS_FRACTION"))
  {
    if (!strcmp(v15, "CW_ORTH_LEN"))
    {
      if (v9)
      {
LABEL_16:
        LODWORD(v19) = 0;
        v9 = v9;
        v22 = a6;
        do
        {
          v23 = *v22++;
          LODWORD(v19) = v19 + strlen(v23);
          --v9;
        }

        while (v9);
        goto LABEL_18;
      }
    }

    else if (!strcmp(v15, "ORTH_LEN_AS_FRACTION") && v9 != 0)
    {
      goto LABEL_16;
    }

    LOWORD(v18) = 0;
    LOWORD(v19) = 0;
    goto LABEL_20;
  }

  if (!v9)
  {
    LOWORD(v19) = 0;
LABEL_18:
    LOWORD(v18) = 0;
    goto LABEL_19;
  }

  v18 = 0;
  v19 = v9;
  v20 = a7;
  do
  {
    v21 = *v20++;
    v18 += strlen(v21);
    --v19;
  }

  while (v19);
LABEL_19:
  v24 = v18;
  if (v16)
  {
LABEL_20:
    v24 = v18;
    LOWORD(v18) = v19;
    if (strcmp(v15, "CW_ORTH_LEN"))
    {
      goto LABEL_22;
    }
  }

  LH_itoa(v18, __s, 0xAu);
LABEL_22:
  if (!strcmp(v15, "SYLLABLE_LEN"))
  {
    v27 = a7[a9];
LABEL_33:
    v28 = strlen(v27);
    goto LABEL_34;
  }

  if (!strcmp(v15, "SYLLABLE_LEN_AS_FRACTION"))
  {
    if (v24)
    {
      v25 = strlen(a7[a9]);
      v26 = v24;
      goto LABEL_31;
    }

LABEL_38:
    v28 = 0;
    goto LABEL_34;
  }

  if (!strcmp(v15, "ORTH_LEN"))
  {
    v27 = a6[a9];
    goto LABEL_33;
  }

  if (strcmp(v15, "ORTH_LEN_AS_FRACTION"))
  {
    goto LABEL_35;
  }

  if (!v19)
  {
    goto LABEL_38;
  }

  v25 = strlen(a6[a9]);
  v26 = v19;
LABEL_31:
  v28 = v25 / v26;
LABEL_34:
  LH_itoa(v28, __s, 0xAu);
LABEL_35:
  if (!strcmp(v15, "ORTH"))
  {
    __strcpy_chk();
  }

  return statcomp_setFeature(a2, a1, a4, a5, __s);
}

uint64_t statcomp_initFeatureVector(uint64_t a1, void *a2, unsigned int a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  while (1)
  {
    v6 = heap_Calloc(*(a1 + 8), 1, 33);
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

  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
  return 2313166858;
}

void *statcomp_freeFeatureVector(void *result, uint64_t *a2, unsigned int a3)
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

uint64_t statcomp_dumpFeatureVectorAndResult(uint64_t a1, int a2, const char **a3, _WORD *a4, char *__s, char *a6, uint64_t a7, uint64_t a8, char *__sa)
{
  if (!a2)
  {
    return 0;
  }

  v15 = statcomp_add2Str(a1, a3, a4, __s);
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  v15 = statcomp_add2Str(a1, a3, a4, " ");
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  v15 = statcomp_add2Str(a1, a3, a4, a6);
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  v15 = statcomp_add2Str(a1, a3, a4, " ");
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  if (*(a7 + 1296) >= 2u)
  {
    v16 = 0;
    do
    {
      v15 = statcomp_add2Str(a1, a3, a4, *(*(a7 + 1312) + 8 * v16));
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }

      v15 = statcomp_add2Str(a1, a3, a4, "=");
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }

      v15 = statcomp_add2Str(a1, a3, a4, *(a8 + 8 * v16));
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }

      v15 = statcomp_add2Str(a1, a3, a4, " ");
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }
    }

    while (*(a7 + 1296) - 1 > ++v16);
  }

  v15 = statcomp_add2Str(a1, a3, a4, "PRED=");
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  v15 = statcomp_add2Str(a1, a3, a4, __sa);
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  v15 = statcomp_add2Str(a1, a3, a4, " ");
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s", *a3);
  **a3 = 0;
  if (*(a7 + 1296) >= 2u)
  {
    v17 = 0;
    do
    {
      v15 = statcomp_add2Str(a1, a3, a4, *(a8 + 8 * v17));
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }

      v15 = statcomp_add2Str(a1, a3, a4, " ");
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }
    }

    while (*(a7 + 1296) - 1 > ++v17);
  }

  v15 = statcomp_add2Str(a1, a3, a4, "PRED=");
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  v15 = statcomp_add2Str(a1, a3, a4, __sa);
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  v18 = statcomp_add2Str(a1, a3, a4, " ");
  if ((v18 & 0x80000000) == 0)
  {
    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s", *a3);
    **a3 = 0;
  }

  return v18;
}

uint64_t statpos_checkIfActive(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t a6, _DWORD *a7, int *a8, _BOOL4 *a9, _BOOL4 *a10, _BOOL4 *a11)
{
  v34 = *MEMORY[0x1E69E9840];
  v30 = 0;
  memset(v33, 0, sizeof(v33));
  v29 = 0;
  v27 = 0;
  v28 = 0;
  *a8 = 0;
  *a9 = 0;
  *a10 = 0;
  *a11 = 0;
  v17 = a7 + 354;
  *(a7 + 354) = 0u;
  a7[358] = 0;
  result = paramc_ParamGetUInt(*(a6 + 40), "statpos_do_corpus_alignment", &v29);
  if ((result & 0x1FFF) != 0x14)
  {
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (v29 == 1)
    {
      *v17 = 1;
    }
  }

  result = paramc_ParamGetUInt(*(a6 + 40), "nluactive", &v29);
  if ((result & 0x1FFF) != 0x14)
  {
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (v29 == 1)
    {
      a7[358] = 1;
    }
  }

  result = statpos_igtrees_getBrkStrs(a6, v32, v31, 0x100uLL);
  if ((result & 0x80000000) == 0)
  {
    result = ssftriff_reader_ObjOpen(a4, a5, 2, v32, "IGTR", 1031, &v27);
    if ((result & 0x80000000) != 0)
    {
      if ((result & 0x1FFF) == 0xA)
      {
        return result;
      }

      log_OutText(*(a6 + 32), "FE_POS", 5, 0, "statPOS %s tree not found", v32);
    }

    else
    {
      result = ssftriff_reader_ObjClose(v27);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      a7[356] = 1;
    }

    result = ssftriff_reader_ObjOpen(a4, a5, 2, v31, "IGTR", 1031, &v27);
    if ((result & 0x80000000) != 0)
    {
      if ((result & 0x1FFF) == 0xA)
      {
        return result;
      }

      log_OutText(*(a6 + 32), "FE_POS", 5, 0, "statPOS %s tree not found", v31);
    }

    else
    {
      result = ssftriff_reader_ObjClose(v27);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      a7[356] = 1;
    }

    result = statpos_get_broker_string(a6, &v28);
    if ((result & 0x80000000) == 0)
    {
      v19 = ssftriff_reader_ObjOpen(a4, a5, 2, v28, "CRPH", 1031, &v27);
      if ((v19 & 0x80000000) != 0)
      {
        v21 = v19;
        if ((v19 & 0x1FFF) == 0xA)
        {
LABEL_47:
          if (v28)
          {
            heap_Free(*(a6 + 8), v28);
          }

          if ((v21 & 0x1FFF) == 0xA)
          {
            return v21;
          }

          else
          {
            return 0;
          }
        }

        log_OutText(*(a6 + 32), "FE_POS", 5, 0, "statPOS %s CRF not found", v28);
      }

      else
      {
        info_from_dct = ssftriff_reader_ObjClose(v27);
        if ((info_from_dct & 0x80000000) != 0)
        {
LABEL_46:
          v21 = info_from_dct;
          goto LABEL_47;
        }

        a7[357] = 1;
      }

      if (!a7[356] && !a7[357] && !*v17)
      {
        v21 = 0;
        goto LABEL_47;
      }

      info_from_dct = statpos_get_info_from_dct(a6, a1, a2, a3, "fecfg", "mdesegpos_morpheme_processing", 0, a9, "BOOL");
      if ((info_from_dct & 0x80000000) != 0)
      {
        goto LABEL_46;
      }

      info_from_dct = statpos_get_info_from_dct(a6, a1, a2, a3, "fecfg", "statphr_kok_force_igtree", 0, a10, "BOOL");
      if ((info_from_dct & 0x80000000) != 0)
      {
        goto LABEL_46;
      }

      if (*a10)
      {
        log_OutText(*(a6 + 32), "FE_POS", 5, 0, "Key statphr_kok_force_igtree is set, use statphr IGTree data instead of hardcoded values", 0);
      }

      info_from_dct = statpos_get_info_from_dct(a6, a1, a2, a3, "fecfg", "statphr_kok_remove_unaligned_phrase_boundaries", 0, a11, "BOOL");
      if ((info_from_dct & 0x80000000) != 0)
      {
        goto LABEL_46;
      }

      if (*a11)
      {
        log_OutText(*(a6 + 32), "FE_POS", 5, 0, "Key statphr_kok_remove_unaligned_phrase_boundaries is set, IGTree prediction overridden if phrase boundary is inside eojeol", 0);
      }

      if (*v17 == 1)
      {
        v22 = a7[356];
        if (v22 != 1)
        {
          v22 = a7[357] == 1;
        }
      }

      else if (a7[357] != 1 || (v22 = *a9) == 0)
      {
LABEL_42:
        info_from_dct = getBrokerString_0(a6, v33, 0x80uLL);
        if ((info_from_dct & 0x80000000) == 0)
        {
          v23 = brk_DataOpenEx(*(a6 + 24), v33, 1, &v30);
          if ((v23 & 0x80000000) != 0)
          {
            v21 = v23;
            v24 = *(a6 + 32);
            if (a7[358] == 1)
            {
              log_OutText(v24, "FE_POS", 5, 0, "openNLP statPOS rules not found", 0);
            }

            else
            {
              log_OutText(v24, "FE_POS", 5, 0, "MS statPOS rules not found", 0);
            }
          }

          else
          {
            a7[355] = 1;
            v21 = brk_DataClose(*(a6 + 24), v30);
            if ((v21 & 0x80000000) == 0)
            {
              *a8 = 1;
            }
          }

          goto LABEL_47;
        }

        goto LABEL_46;
      }

      *a8 = v22;
      goto LABEL_42;
    }
  }

  return result;
}

uint64_t statpos_load_resources(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, _WORD *a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, int a13, _DWORD *a14, int a15)
{
  v32 = *MEMORY[0x1E69E9840];
  v28 = 0;
  *a12 = a8;
  *(a12 + 1448) = a10;
  *(a12 + 1464) = a11;
  *(a12 + 1472) = a1;
  *(a12 + 1480) = a2;
  *(a12 + 1488) = a3;
  if (!a13)
  {
    *(a12 + 200) = 0;
    *(a12 + 208) = 0;
    inited = nuance_pcre_ObjOpen(a4, a5, a12 + 200);
    if ((inited & 0x80000000) == 0)
    {
      AddRefCountedObject = nuance_pcre_Init(*(a12 + 200), *(a12 + 208), 0x1Eu, 50);
      if ((AddRefCountedObject & 0x80000000) != 0)
      {
        return AddRefCountedObject;
      }

      if (*(a12 + 1424) == 1)
      {
        v27 = 0;
        inited = InitRsrcFunction(a6, a7, &v27);
        if ((inited & 0x80000000) != 0)
        {
          return inited;
        }

        inited = statpos_igtrees_getBrkStrs(a8, v31, v30, 0x100uLL);
        if ((inited & 0x80000000) != 0)
        {
          return inited;
        }

        __strcpy_chk();
        __strcat_chk();
        ObjcForThisApi = getObjcForThisApi(a8, v27);
        AddRefCountedObject = objc_GetAddRefCountedObject(ObjcForThisApi, v29, statpos_igtrees_ObjcLoad, statpos_igtrees_ObjcClose, a8, &v28);
        if ((AddRefCountedObject & 0x80000000) != 0)
        {
          return AddRefCountedObject;
        }

        memcpy((a12 + 784), *(v28 + 32), 0x218uLL);
      }

      if (*(a12 + 1428) == 1)
      {
        AddRefCountedObject = statpos_crf_load(a4, a5, a6, a7, a8, a9, *(a12 + 1448), *(a12 + 1456), *(a12 + 1464), (a12 + 1320), a12 + 8, (a12 + 1384), a15);
        if ((AddRefCountedObject & 0x80000000) != 0)
        {
          return AddRefCountedObject;
        }
      }

      if (a15)
      {
        *(a12 + 8) = a8;
        *(a12 + 384) = 5;
      }

      else
      {
        AddRefCountedObject = statpos_rules_load(a4, a5, a8, *(a12 + 1448), *(a12 + 1456), *(a12 + 1464), (a12 + 8));
        if ((AddRefCountedObject & 0x80000000) != 0)
        {
          return AddRefCountedObject;
        }
      }

      if (*(a12 + 1424) == 1 && *(a12 + 800) != *(a12 + 160))
      {
        *a14 = 0;
        log_OutText(*(a8 + 32), "FE_POS", 5, 0, "set UseStatPOS to FALSE; OOV model differs in igtrees(%d) versus rules(%d)", *(a12 + 800), *(a12 + 160));
      }

      return AddRefCountedObject;
    }

    return inited;
  }

  if (*(a12 + 1420) != 1)
  {
    AddRefCountedObject = 0;
    goto LABEL_21;
  }

  *(a12 + 200) = 0;
  *(a12 + 208) = 0;
  inited = nuance_pcre_ObjOpen(a4, a5, a12 + 200);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  AddRefCountedObject = nuance_pcre_Init(*(a12 + 200), *(a12 + 208), 0x1Eu, 50);
  if ((AddRefCountedObject & 0x80000000) != 0)
  {
    return AddRefCountedObject;
  }

  if (a15)
  {
LABEL_21:
    *(a12 + 8) = a8;
    *(a12 + 384) = 5;
    return AddRefCountedObject;
  }

  v20 = *(a12 + 1464);
  v21 = *(a12 + 1448);
  v22 = *(a12 + 1456);

  return statpos_rules_load(a4, a5, a8, v21, v22, v20, (a12 + 8));
}

uint64_t statpos_unload_resources(_WORD *a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v16 = 0;
  if (a5)
  {
    if (*(a4 + 1420) == 1)
    {
      statpos_rules_unload((a4 + 8));
      NullHandle = safeh_GetNullHandle();
      if (!safeh_HandlesEqual(*(a4 + 200), *(a4 + 208), NullHandle, v8))
      {
        nuance_pcre_DeInit(*(a4 + 200), *(a4 + 208));
        nuance_pcre_ObjClose(*(a4 + 200), *(a4 + 208));
      }
    }

    return 0;
  }

  else
  {
    v11 = a6;
    inited = InitRsrcFunction(a1, a2, &v16);
    if ((inited & 0x80000000) == 0)
    {
      statpos_crf_unload(a3, v16, a4 + 1320, a4 + 8, (a4 + 1384), v11);
      if (*(a4 + 1424))
      {
        ObjcForThisApi = getObjcForThisApi(a3, v16);
        objc_ReleaseObject(ObjcForThisApi, a4 + 808);
      }

      statpos_rules_unload((a4 + 8));
      v14 = safeh_GetNullHandle();
      if (!safeh_HandlesEqual(*(a4 + 200), *(a4 + 208), v14, v15))
      {
        nuance_pcre_DeInit(*(a4 + 200), *(a4 + 208));
        nuance_pcre_ObjClose(*(a4 + 200), *(a4 + 208));
      }
    }
  }

  return inited;
}

uint64_t statpos_process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, int a13, int a14, unsigned int a15)
{
  v23 = a12 == 1 && (*(a10 + 1436) | a13) == 0 && a14 == 1;
  *(a10 + 752) = a7;
  *(a10 + 760) = a8;
  *(a10 + 768) = a9;
  SentenceData = statpos_getSentenceData(a6, a4, a5, a10, a15);
  if ((SentenceData & 0x80000000) == 0 && *(a10 + 656))
  {
    if (a11 || (updated = statpos_disambiguatePOSTags(a10), (updated & 0x80000000) == 0))
    {
      if (*(a10 + 1416) == 1)
      {
        updated = statpos_updateNLULingdbField(a6, a4, a5, a10);
      }

      else if (a15 != 1 || (updated = statpos_setMorphemePRON(a1, a2, a3, a10), (updated & 0x80000000) == 0))
      {
        updated = statpos_alignDisambiguatedPOSToLingdb(a10, a15);
        if ((updated & 0x80000000) == 0)
        {
          updated = statpos_updatePOSLingdbWithDisambiguatedPOS(a6, a4, a5, a10, v23, a15);
        }
      }
    }

    SentenceData = updated;
  }

  statpos_freeSentenceData(a10);
  return SentenceData;
}

uint64_t statPOS_call_one_word(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char **a5, const char **a6, char **a7)
{
  v37 = *MEMORY[0x1E69E9840];
  v35 = 0;
  v33 = 0;
  __s = 0;
  strcpy(v36, "one_word");
  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s L1: %s", v36, *a5);
  v14 = *a5;
  v15 = strlen(v14);
  v16 = (*(a4 + 120))(a2, a3, 0, v14, v15);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s L2: %s", v36, *a6);
  v17 = strlen(*a6);
  v16 = (*(a4 + 120))(a2, a3, 1, *a6, v17);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v16 = (*(a4 + 80))(a2, a3, v36);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v16 = (*(a4 + 128))(a2, a3, 0, &__s, &v35);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  __s[v35] = 0;
  v18 = (*(a4 + 128))(a2, a3, 0, &v33, &v35);
  if ((v18 & 0x80000000) == 0)
  {
    v33[v35] = 0;
    v19 = __s;
    if (*__s)
    {
      v20 = 0;
      v21 = 0;
      do
      {
        v22 = &v19[v20];
        if (v19[v20] == 126)
        {
          v23 = strlen(v22 + 2);
          memmove(v22 + 1, v22 + 2, v23 + 1);
          __s[v20] = 126;
          v19 = __s;
        }

        v20 = ++v21;
        v24 = strlen(v19);
      }

      while (v24 > v21);
      v25 = v24 + 1;
    }

    else
    {
      v25 = 1;
    }

    v27 = heap_Calloc(*(a1 + 8), 1, v25);
    *a7 = v27;
    if (v27)
    {
      strcpy(v27, __s);
      log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s O1 (phonetics) : %s", v36, __s);
      v28 = v33;
      if (*v33)
      {
        v29 = 0;
        v30 = 0;
        do
        {
          v31 = &v28[v29];
          if (v28[v29] == 126)
          {
            v32 = strlen(v31 + 2);
            memmove(v31 + 1, v31 + 2, v32 + 1);
            v33[v29] = 126;
            v28 = v33;
          }

          v29 = ++v30;
        }

        while (strlen(v28) > v30);
      }

      log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s O3 (POS code): %s (ignored)", v36, v28);
    }

    else
    {
      log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
      return 2313166858;
    }
  }

  return v18;
}

uint64_t statphr_setFeature(uint64_t a1, char *__s1, char **a3, const char *a4)
{
  v8 = 0;
  while (strcmp(__s1, g_statphr_FeatureNames[v8]))
  {
    ++a3;
    if (++v8 == 8)
    {
      return 0;
    }
  }

  if (*a4)
  {
    if (strlen(a4) < 0x41 || (v9 = strlen(a4), result = resizeNFeature(a1, a3, (v9 + 1)), (result & 0x80000000) == 0))
    {
      strcpy(*a3, a4);
      return 0;
    }
  }

  else
  {
    result = 0;
    **a3 = 95;
  }

  return result;
}

uint64_t statphr_setNFeature(uint64_t a1, char *__s1, char **a3, const char *a4, unsigned int a5)
{
  v10 = 0;
  while (strcmp(__s1, g_statphr_FeatureNames[v10]))
  {
    ++a3;
    if (++v10 == 8)
    {
      return 0;
    }
  }

  if (!a5 || *a4)
  {
    if (a5 < 0x41 || (result = resizeNFeature(a1, a3, (a5 + 1)), (result & 0x80000000) == 0))
    {
      strncpy(*a3, a4, a5);
      result = 0;
      (*a3)[a5] = 0;
    }
  }

  else
  {
    result = 0;
    **a3 = 95;
  }

  return result;
}

uint64_t resizeNFeature(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v5 = heap_Realloc(*(a1 + 8), *a2, a3);
  if (v5)
  {
    v6 = v5;
    result = 0;
    *a2 = v6;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
    return 2313166858;
  }

  return result;
}

uint64_t statphr_initFeatureVector(uint64_t a1, char **a2, unsigned int a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = 0;
  v6 = 8 * a3 - 8;
  while (1)
  {
    v7 = heap_Calloc(*(a1 + 8), 1, 65);
    a2[v5 / 8] = v7;
    if (!v7)
    {
      break;
    }

    result = statphr_setFeature(a1, g_statphr_FeatureNames[v5 / 8], a2, "_");
    if ((result & 0x80000000) == 0)
    {
      v9 = v6 == v5;
      v5 += 8;
      if (!v9)
      {
        continue;
      }
    }

    return result;
  }

  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
  return 2313166858;
}

uint64_t statphr_dumpFeatureVectorAndResult(uint64_t a1, uint64_t a2, char *__src)
{
  v9 = *MEMORY[0x1E69E9840];
  strncpy(__dst, __src, 0x100uLL);
  v5 = 0;
  __dst[255] = 0;
  do
  {
    v6 = strlen(*(a2 + v5));
    if (v6 + strlen(__dst) + 2 > 0xFF)
    {
      break;
    }

    __strcat_chk();
    __strcat_chk();
    v5 += 8;
  }

  while (v5 != 64);
  return log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s", __dst);
}

uint64_t statphr_getIgtreeBrkStr(uint64_t a1, char *a2, unint64_t a3)
{
  *v7 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v7);
  if ((result & 0x80000000) == 0)
  {
    return brokeraux_ComposeBrokerString(a1, "statphr_igtree", 1, 1, *v7, 0, 0, a2, a3);
  }

  return result;
}

uint64_t statphr_readIGTree(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, void *a6, _DWORD *a7)
{
  v15 = *MEMORY[0x1E69E9840];
  *a7 = 0;
  result = statphr_getIgtreeBrkStr(a5, v14, 0x100uLL);
  if ((result & 0x80000000) == 0)
  {
    result = igtree_Init_ReadOnly_ReferenceCnt(a1, a2, a3, a4, a6, 2, v14, "IGTR", 1031, 0);
    if ((result & 0x80000000) != 0)
    {
      result = 0;
      *a6 = 0;
    }

    else
    {
      *a7 = 1;
    }
  }

  return result;
}

uint64_t statphr_searchInIGTreeParamDefs(uint64_t a1, char *__s2, const char *a3)
{
  v3 = *(a1 + 1336);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  v7 = *(a1 + 1328);
  while (1)
  {
    v8 = v7 + 16 * v6;
    if (!strcmp(*v8, __s2))
    {
      v9 = strstr(*(v8 + 8), a3);
      if (v9)
      {
        break;
      }
    }

LABEL_4:
    if (v3 <= ++v6)
    {
      return 0;
    }
  }

  v10 = v9;
  while (*(v10 - 1) != 32 || v10[strlen(a3)] != 32)
  {
    v10 = strstr(v10 + 1, a3);
    if (!v10)
    {
      goto LABEL_4;
    }
  }

  return 1;
}

uint64_t statphr_Process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v174 = *MEMORY[0x1E69E9840];
  v171 = 0;
  v172 = 0;
  v170 = 0;
  v169 = 0;
  v167 = 0;
  v168 = 0;
  v166 = 0;
  memset(v173, 0, sizeof(v173));
  __src = 0;
  v164 = -1;
  v163 = 0;
  v161 = 0;
  v160 = 0;
  v15 = paramc_ParamGetInt(*(a1 + 40), "statcompwidescope", &v160) >= 0 && v160 == 0;
  v16 = (*(a2 + 104))(a3, a4, 1, 0, &v172);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v17 = (*(a2 + 184))(a3, a4, v172, 0, &v172 + 2);
  if ((v17 & 0x80000000) == 0 && HIWORD(v172) == 1)
  {
    v17 = (*(a2 + 176))(a3, a4, v172, 0, &v168, &v171);
    if ((v17 & 0x80000000) == 0 && v171 >= 2u)
    {
      v18 = heap_Calloc(*(a1 + 8), 1, 32);
      if (!v18 || (v19 = v18, v156 = a6, *v18 = 0, v20 = strlen(v168), (v21 = heap_Calloc(*(a1 + 8), 1, v20 + 1)) == 0))
      {
        v17 = 2313166858;
        log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
        return v17;
      }

      v22 = v21;
      strcpy(v21, v168);
      v23 = (*(a2 + 104))(a3, a4, 2, v172, &v171 + 2);
      if ((v23 & 0x80000000) != 0)
      {
        v17 = v23;
        v28 = 0;
        v33 = 0;
        v29 = 0;
        v30 = 0;
        goto LABEL_31;
      }

      v149 = a7;
      v153 = v19;
      v154 = v22;
      v157 = 0;
      v24 = -1;
      while (HIWORD(v171))
      {
        v25 = (*(a2 + 168))(a3, a4);
        if ((v25 & 0x80000000) != 0)
        {
          goto LABEL_27;
        }

        if (v169 <= 0xA && ((1 << v169) & 0x610) != 0)
        {
          v25 = (*(a2 + 168))(a3, a4, HIWORD(v171), 1, 1, &v166 + 2, &v171);
          if ((v25 & 0x80000000) != 0)
          {
            goto LABEL_27;
          }

          v27 = v157;
          if (HIWORD(v166) != v24)
          {
            v27 = v157 + 1;
          }

          v157 = v27;
          v24 = HIWORD(v166);
        }

        v25 = (*(a2 + 120))(a3, a4, HIWORD(v171), &v171 + 2);
        if ((v25 & 0x80000000) != 0)
        {
LABEL_27:
          v17 = v25;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = v157;
          goto LABEL_32;
        }
      }

      v33 = v157;
      v155 = heap_Calloc(*(a1 + 8), 1, v157 << 6);
      if (!v155)
      {
        v17 = 2313166858;
        log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        goto LABEL_32;
      }

      if (v157)
      {
        v39 = 0;
        while (1)
        {
          inited = statphr_initFeatureVector(a1, (v155 + 8 * v39), 8u);
          if ((inited & 0x80000000) != 0)
          {
            break;
          }

          v39 += 8;
          if (8 * v157 <= v39)
          {
            goto LABEL_55;
          }
        }

LABEL_123:
        v17 = inited;
        v28 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = v157;
        v22 = v154;
        v29 = v155;
        goto LABEL_32;
      }

LABEL_55:
      inited = (*(a2 + 104))(a3, a4, 2, v172, &v171 + 2);
      if ((inited & 0x80000000) != 0)
      {
        goto LABEL_123;
      }

      v134 = 8 * v157;
      __s1 = 0;
      v144 = 0;
      v150 = 0;
      v22 = v154;
      v41 = -1;
      while (HIWORD(v171))
      {
        v42 = (*(a2 + 168))(a3, a4);
        if ((v42 & 0x80000000) != 0)
        {
          goto LABEL_120;
        }

        if (v169 - 9 < 2)
        {
          goto LABEL_62;
        }

        if (v169 != 6)
        {
          if (v169 != 4)
          {
            goto LABEL_119;
          }

LABEL_62:
          v42 = (*(a2 + 168))(a3, a4, HIWORD(v171), 1, 1, &v166 + 2, &v171);
          if ((v42 & 0x80000000) != 0)
          {
            goto LABEL_120;
          }

          if (HIWORD(v166) != v41)
          {
            v159 = 0;
            v158 = 0;
            HIWORD(v172) = 0;
            v17 = (*(a2 + 184))(a3, a4, HIWORD(v171), 14, &v172 + 2);
            if ((v17 & 0x80000000) != 0)
            {
              goto LABEL_277;
            }

            if (HIWORD(v172) != 1)
            {
              goto LABEL_277;
            }

            v17 = (*(a2 + 176))(a3, a4, HIWORD(v171), 14, &v167, &v171);
            if ((v17 & 0x80000000) != 0)
            {
              goto LABEL_277;
            }

            if (!hlp_NLUStrFind(v167, "POS", &v159, &v158))
            {
              log_OutText(*(a1 + 32), "FE_POS", 5, 0, "statPHR: internal ERROR - found a WordRecord %d without POS (NLU=%s), bailing out", HIWORD(v171), v167);
LABEL_277:
              v33 = v157;
LABEL_278:
              v29 = v155;
              v30 = v144;
              goto LABEL_282;
            }

            if (__s1 && !v150)
            {
              v43 = 0;
              v136 = (v155 + 8 * __s1);
              v146 = (v136 - 64);
              do
              {
                v44 = &g_statphr_FeatureNames[v43++];
              }

              while (strcmp("pos", v44[1]));
              v45 = v146[v43];
              v46 = strstr(v45, "_BVB");
              if (v46)
              {
                *v46 = 0;
              }

              v47 = statphr_setFeature(a1, "Lpos", v136, v45);
              if ((v47 & 0x80000000) != 0)
              {
                goto LABEL_124;
              }

              v47 = statphr_setNFeature(a1, "Rpos", v146, v159, v158);
              if ((v47 & 0x80000000) != 0)
              {
                goto LABEL_124;
              }
            }

            if (__s1 >= 9u && !v150)
            {
              v47 = statphr_setNFeature(a1, "RRpos", (v155 - 128 + 8 * __s1), v159, v158);
              if ((v47 & 0x80000000) != 0)
              {
                goto LABEL_124;
              }
            }

            v48 = (v155 + 8 * __s1);
            v47 = statphr_setNFeature(a1, "pos", v48, v159, v158);
            if ((v47 & 0x80000000) != 0)
            {
              goto LABEL_124;
            }

            if (HIWORD(v166) > v164 && v163)
            {
              v49 = (v155 + 8 * __s1);
              v50 = v163[3];
              v163[3] = 0;
              statphr_setFeature(a1, "Lpos", v49, v163 + 1);
              v47 = statphr_setFeature(a1, "Lchunk", v49, v163 + 1);
              if ((v47 & 0x80000000) != 0)
              {
                goto LABEL_124;
              }

              v163[3] = v50;
              if (__s1 >= 9u)
              {
                v51 = v163[3];
                v163[3] = 0;
                v47 = statphr_setFeature(a1, "Rpos", v49 - 16, v163 + 1);
                if ((v47 & 0x80000000) != 0)
                {
                  goto LABEL_124;
                }

                v163[3] = v51;
                if (__s1 >= 0x11u)
                {
                  v52 = v163[3];
                  v163[3] = 0;
                  v47 = statphr_setFeature(a1, "RRpos", v49 - 24, v163 + 1);
                  if ((v47 & 0x80000000) != 0)
                  {
                    goto LABEL_124;
                  }

                  v163[3] = v52;
                }
              }

              v164 = -1;
              v163 = 0;
              v48 = (v155 + 8 * __s1);
            }

            v47 = (*(a2 + 168))(a3, a4, HIWORD(v171), 2, 1, &v166, &v171);
            if ((v47 & 0x80000000) != 0 || (v47 = statphr_set_WBND_feature(a1, v48, v168, HIWORD(v166), 1), (v47 & 0x80000000) != 0) || (v133 = v48, v47 = statphr_set_WBND_feature(a1, v48, v168, v166, 0), (v47 & 0x80000000) != 0))
            {
LABEL_124:
              v17 = v47;
              v33 = v157;
              v22 = v154;
              goto LABEL_278;
            }

            v53 = v166 - HIWORD(v166);
            v147 = heap_Realloc(*(a1 + 8), v144, (v166 - HIWORD(v166)) + 1);
            if (!v147)
            {
              v30 = v144;
              v17 = 2313166858;
              log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
LABEL_280:
              v33 = v157;
              v22 = v154;
LABEL_281:
              v29 = v155;
LABEL_282:
              v28 = 0;
LABEL_31:
              v31 = 0;
              v32 = 0;
LABEL_32:
              heap_Free(*(a1 + 8), v19);
              heap_Free(*(a1 + 8), v22);
              if (v28)
              {
                heap_Free(*(a1 + 8), v28);
              }

              if (v32)
              {
                heap_Free(*(a1 + 8), v32);
              }

              if (v31)
              {
                heap_Free(*(a1 + 8), v31);
              }

              if (v30)
              {
                heap_Free(*(a1 + 8), v30);
              }

              if (v29)
              {
                if (v33)
                {
                  v34 = 0;
                  v35 = 8 * v33;
                  do
                  {
                    for (i = 0; i != 64; i += 8)
                    {
                      v37 = *(v29 + 8 * v34 + i);
                      if (v37)
                      {
                        heap_Free(*(a1 + 8), v37);
                      }
                    }

                    v34 += 8;
                  }

                  while (v35 > v34);
                }

                heap_Free(*(a1 + 8), v29);
              }

              return v17;
            }

            v54 = HIWORD(v166);
            v55 = v166;
            if (HIWORD(v166) < v166)
            {
              v150 = 0;
              v145 = 0;
              v137 = v53;
              while (1)
              {
                v56 = v54;
                v57 = &v168[v54];
                v58 = *v57;
                if (memchr(",:;.?!'", v58, 9uLL))
                {
                  v59 = memchr(",:;.?!", v58, 7uLL);
                  v60 = v150;
                  if (v59)
                  {
                    v60 = 1;
                  }

                  v150 = v60;
                  v54 = v56 + 1;
                }

                else
                {
                  NextUtf8Offset = utf8_GetNextUtf8Offset(v57, 0);
                  if (utf8_ToLower(v168, v56, __s))
                  {
                    if (strlen(__s) > NextUtf8Offset)
                    {
                      v62 = heap_Realloc(*(a1 + 8), v147, (v137 + 5) + 1);
                      if (!v62)
                      {
                        v17 = 2313166858;
                        log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
                        v30 = v147;
                        v19 = v153;
                        goto LABEL_280;
                      }

                      v137 += 5;
                      v147 = v62;
                    }

                    else
                    {
                      strcpy(&v147[v145], __s);
                      v145 = strlen(v147);
                    }
                  }

                  else
                  {
                    strncpy(&v147[v145], &v168[v56], NextUtf8Offset);
                    v145 += NextUtf8Offset;
                  }

                  v54 = v56 + NextUtf8Offset;
                  v55 = v166;
                }

                if (v54 >= v55)
                {
                  v63 = v145;
                  goto LABEL_115;
                }
              }
            }

            v63 = 0;
            v150 = 0;
LABEL_115:
            v147[v63] = 0;
            v19 = v153;
            v22 = v154;
            if (*v147)
            {
              if (statphr_searchInIGTreeParamDefs(a5, "orthtokeep", v147))
              {
                v64 = statphr_setFeature(a1, "orth", v133, v147);
                if ((v64 & 0x80000000) != 0)
                {
                  v17 = v64;
                  v30 = v147;
                  v33 = v157;
                  goto LABEL_281;
                }
              }
            }

            __s1 += 8;
            v144 = v147;
            v41 = HIWORD(v166);
          }

          goto LABEL_119;
        }

        v42 = (*(a2 + 168))(a3, a4, HIWORD(v171), 2, 1, &v164, &v171);
        if ((v42 & 0x80000000) != 0 || (v42 = (*(a2 + 176))(a3, a4, HIWORD(v171), 4, &v163, &v171), (v42 & 0x80000000) != 0))
        {
LABEL_120:
          v17 = v42;
          v28 = 0;
          v31 = 0;
          v32 = 0;
LABEL_121:
          v33 = v157;
          v29 = v155;
          v30 = v144;
          goto LABEL_32;
        }

        if (strlen(v163) < 4 || !strcmp(v163, "_PR_"))
        {
          v163 = 0;
          v164 = -1;
        }

        v22 = v154;
LABEL_119:
        v42 = (*(a2 + 120))(a3, a4, HIWORD(v171), &v171 + 2);
        if ((v42 & 0x80000000) != 0)
        {
          goto LABEL_120;
        }
      }

      log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Predicting PHR with IGtree");
      v17 = (*(a2 + 104))(a3, a4, 2, v172, &v171 + 2);
      if ((v17 & 0x80000000) != 0 || (v65 = HIWORD(v171)) == 0)
      {
        v28 = 0;
        v31 = 0;
        v32 = 0;
        goto LABEL_121;
      }

      __s1a = 0;
      v148 = 0;
      v135 = 0;
      v66 = 0;
      v132 = 0;
      v138 = 0;
      v131 = 0;
      __s2 = 0;
      v130 = 0;
      v151 = -1;
      while (2)
      {
        v67 = (*(a2 + 168))(a3, a4, v65, 0, 1, &v169, &v171);
        if ((v67 & 0x80000000) != 0)
        {
LABEL_283:
          v17 = v67;
LABEL_284:
          v33 = v157;
          goto LABEL_292;
        }

        if (v169 > 0xA || ((1 << v169) & 0x610) == 0)
        {
          goto LABEL_271;
        }

        v67 = (*(a2 + 168))(a3, a4, HIWORD(v171), 1, 1, &v166 + 2, &v171);
        if ((v67 & 0x80000000) != 0)
        {
          goto LABEL_283;
        }

        v67 = (*(a2 + 168))(a3, a4, HIWORD(v171), 2, 1, &v166, &v171);
        if ((v67 & 0x80000000) != 0)
        {
          goto LABEL_283;
        }

        strncpy(v22, &v168[HIWORD(v166)], v166 - HIWORD(v166));
        v22[v166 - HIWORD(v166)] = 0;
        if (HIWORD(v166) == v151)
        {
LABEL_255:
          if (__src)
          {
            v85 = (*(a2 + 176))(a3, a4, HIWORD(v171), 14, &v167, &v171);
            if ((v85 & 0x80000000) != 0)
            {
              goto LABEL_286;
            }

            v115 = *(a1 + 8);
            if (v138)
            {
              v116 = strlen(v19);
              v117 = v116 + strlen(v167) + 8;
              v118 = __s1a;
              v119 = heap_Realloc(v115, __s1a, v117);
              if (!v119)
              {
                goto LABEL_294;
              }

              v120 = v119;
              v121 = strcpy(v119, v167);
              v122 = v19;
            }

            else
            {
              v123 = strlen(__src);
              v124 = v123 + strlen(v167) + 8;
              v118 = __s1a;
              v125 = heap_Realloc(v115, __s1a, v124);
              if (!v125)
              {
LABEL_294:
                v32 = v118;
                v17 = 2313166858;
                log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
                v33 = v157;
                v22 = v154;
                v29 = v155;
                v30 = v144;
                v31 = v148;
                v28 = v130;
                goto LABEL_32;
              }

              v120 = v125;
              v121 = strcpy(v125, v167);
              v122 = __src;
            }

            v126 = hlp_NLUStrSet(v121, "PHR", v122);
            __s1a = v120;
            if (v66)
            {
              v127 = 66;
            }

            else
            {
              if (!HIDWORD(v132))
              {
LABEL_267:
                if (!v138)
                {
                  strcpy(v19, __src);
                }

                log_OutText(*(a1 + 32), "FE_POS", 5, 0, "STATPHR : word=%s NLU=%s", v154, v120);
                v128 = strlen(v120);
                v85 = (*(a2 + 160))(a3, a4, HIWORD(v171), 14, (v128 + 1), v120, &v170);
                if ((v85 & 0x80000000) == 0)
                {
                  v22 = v154;
                  goto LABEL_271;
                }

LABEL_286:
                v17 = v85;
                goto LABEL_291;
              }

              v127 = 73;
            }

            v126[4] = v127;
            goto LABEL_267;
          }

LABEL_271:
          v17 = (*(a2 + 120))(a3, a4, HIWORD(v171), &v171 + 2);
          if ((v17 & 0x80000000) != 0)
          {
            goto LABEL_284;
          }

          v65 = HIWORD(v171);
          if (!HIWORD(v171))
          {
            goto LABEL_284;
          }

          continue;
        }

        break;
      }

      v69 = 0;
      v152 = (v155 + 8 * v135);
      while (strcmp("pos", g_statphr_FeatureNames[v69]))
      {
        if (++v69 == 8)
        {
          v70 = 0;
          goto LABEL_141;
        }
      }

      v70 = v152[v69];
LABEL_141:
      if (statphr_searchInIGTreeParamDefs(a5, "preppos", v70))
      {
        v71 = v135 + 8;
        v72 = v135 + 40;
        if (v72 > (v135 + 8) && v134 > (v135 + 8))
        {
          v139 = v70;
          if (v72 >= v134)
          {
            v73 = 8 * v157;
          }

          else
          {
            v73 = v135 + 40;
          }

          do
          {
            v74 = v155 + 8 * v71;
            if (**v74 != 95 || *(*v74 + 1))
            {
              v75 = 0;
              while (strcmp("pos", g_statphr_FeatureNames[v75]))
              {
                if (++v75 == 8)
                {
                  v76 = 0;
                  goto LABEL_154;
                }
              }

              v76 = *(v74 + v75 * 8);
LABEL_154:
              v19 = v153;
              if (!statphr_searchInIGTreeParamDefs(a5, "verbpos", v76))
              {
                v71 += 8;
                continue;
              }

              v77 = strlen(v139);
              v78 = heap_Realloc(*(a1 + 8), v148, (v77 + 5));
              if (!v78)
              {
                v17 = 2313166858;
                log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
                goto LABEL_291;
              }

              v79 = v78;
              v80 = strcpy(v78, v139);
              strcpy(&v79[strlen(v80)], "_BVB");
              v81 = statphr_setFeature(a1, "pos", v152, v79);
              if ((v81 & 0x80000000) != 0)
              {
                v17 = v81;
                v31 = v79;
                v33 = v157;
                v22 = v154;
                v29 = v155;
                v30 = v144;
                goto LABEL_293;
              }

              v148 = v79;
            }

            v71 = 8 * v157;
          }

          while (v73 > v71);
        }
      }

      v140 = __src;
      if (__src)
      {
        v82 = 0;
        do
        {
          v83 = &g_statphr_FeatureNames[v82++];
        }

        while (strcmp("Lchunk", v83[1]));
        v84 = v152[v82];
        if (*v84 == 95 && !v84[1] && (**v152 != 95 || (*v152)[1]))
        {
          statphr_setFeature(a1, "Lchunk", v152, v140);
        }
      }

      if (v156 != 1)
      {
        goto LABEL_183;
      }

      v85 = (*(a2 + 176))(a3, a4, HIWORD(v171), 14, &v167, &v171);
      if ((v85 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }

      v86 = v167;
      if (v167)
      {
        v87 = v15;
      }

      else
      {
        v87 = 0;
      }

      if (v87)
      {
        v88 = strstr(v167, "COMP:");
        if (v88)
        {
          v141 = 0;
          v89 = v132;
          if (v88[5] == 66)
          {
            v89 = 1;
          }

          v131 = v88[5] == 66;
          LODWORD(v132) = v89;
LABEL_185:
          if (*(a5 + 1296) >= 2u)
          {
            v92 = 0;
            do
            {
              v93 = 0;
              v94 = *(a5 + 1312);
              v95 = *(v94 + 8 * v92);
              while (strcmp(v95, g_statphr_FeatureNames[v93]))
              {
                if (++v93 == 8)
                {
                  v96 = 0;
                  goto LABEL_192;
                }
              }

              v96 = v152[v93];
LABEL_192:
              *(v173 + v92) = v96;
              log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Feature %s is %s", *(v94 + 8 * v92++), v96);
            }

            while (*(a5 + 1296) - 1 > v92);
          }

          v97 = igtree_Process(a5, v173, &__src);
          if ((v97 & 0x80000000) != 0)
          {
LABEL_289:
            v17 = v97;
            goto LABEL_290;
          }

          statphr_dumpFeatureVectorAndResult(a1, v152, __src);
          v98 = *__src;
          if (__s1a)
          {
            if (v98 != 73 || strstr(__s1a, __src + 1))
            {
              goto LABEL_197;
            }
          }

          else if (v98 != 73)
          {
LABEL_197:
            v99 = 0;
            v100 = 1;
LABEL_200:
            if (v156)
            {
              if (v141)
              {
                v66 = v99;
                v132 = 0;
                v131 = 0;
                goto LABEL_231;
              }

              v106 = *__src;
              if (v106 == 66)
              {
                v66 = v99;
                if (v132 != 1)
                {
                  v132 = 0;
                  goto LABEL_231;
                }
              }

              else
              {
                v66 = v99;
                if (!v99)
                {
                  v138 = 0;
                  HIDWORD(v132) = 0;
                  goto LABEL_253;
                }

                if (v106 != 73 || v132 != 1)
                {
                  HIDWORD(v132) = 0;
                  v138 = 0;
                  v66 = 1;
                  v19 = v153;
                  v22 = v154;
                  if (!v149)
                  {
                    goto LABEL_254;
                  }

                  goto LABEL_238;
                }
              }

              if (v131)
              {
                HIDWORD(v132) = 0;
              }

              else
              {
                v113 = *v153;
                if (v113 == 79)
                {
                  v114 = -v153[1];
                }

                else
                {
                  v114 = 79 - v113;
                }

                if (v114)
                {
                  *v153 = 73;
                  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "STATPHR : Force PHR to %s as bisects compound", v153);
                  v131 = 0;
                  HIDWORD(v132) = 0;
                  if (v66)
                  {
                    v66 = *__src != 73;
                  }

                  LODWORD(v132) = 1;
                  v138 = 1;
                  goto LABEL_253;
                }

                HIDWORD(v132) = 0;
                v131 = 0;
              }

              LODWORD(v132) = 1;
              goto LABEL_231;
            }

            v66 = v99;
            v97 = (*(a2 + 176))(a3, a4, HIWORD(v171), 5, &v161, &v171);
            if ((v97 & 0x80000000) != 0)
            {
              goto LABEL_289;
            }

            HIDWORD(v132) = 0;
            v101 = v161;
            if (!__s1a || !__s2)
            {
LABEL_230:
              __s2 = strstr(v101, ",COMP");
LABEL_231:
              if (v149)
              {
                if (!v100)
                {
                  v66 = 1;
                  v19 = v153;
                  v22 = v154;
                  goto LABEL_238;
                }

                if (__src)
                {
                  v66 = 0;
                  v138 = 0;
                  v19 = v153;
                  v22 = v154;
                  if (*__src != 66)
                  {
                    goto LABEL_254;
                  }

LABEL_238:
                  if (statphr_isWBND(v152))
                  {
                    v138 = 0;
                  }

                  else
                  {
                    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "STATPHR : Force PHR from %s to I-* as it bisects eojeol", __src);
                    v138 = 0;
                    v66 = 0;
                    HIDWORD(v132) = 1;
                  }

                  goto LABEL_254;
                }

                v138 = 0;
                v66 = 0;
              }

              else
              {
                v138 = 0;
              }

LABEL_253:
              v19 = v153;
              v22 = v154;
LABEL_254:
              v135 += 8;
              v151 = HIWORD(v166);
              goto LABEL_255;
            }

            if (!strstr(v161, __s2) || *__src == 73 || (v102 = strstr(__s1a, "PHR:"), (__src = v102) == 0))
            {
              HIDWORD(v132) = 0;
              goto LABEL_230;
            }

            __src = v102 + 4;
            v103 = v102[4];
            v104 = strlen(v102 + 4);
            v105 = heap_Realloc(*(a1 + 8), v130, (v104 + 1));
            if (v105)
            {
              HIDWORD(v132) = v103 == 66;
              __src = strcpy(v105, __src);
              v101 = v161;
              v130 = __src;
              goto LABEL_230;
            }

            v17 = 2313166858;
            log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
LABEL_290:
            v19 = v153;
LABEL_291:
            v33 = v157;
            v22 = v154;
LABEL_292:
            v29 = v155;
            v30 = v144;
            v31 = v148;
LABEL_293:
            v28 = v130;
            v32 = __s1a;
            goto LABEL_32;
          }

          log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Forcing consistency of IOB tags");
          v100 = 0;
          v99 = 1;
          goto LABEL_200;
        }
      }

      if (v86 && !v15)
      {
        v107 = strstr(v86, "S_COMP:");
        if (v107)
        {
          v108 = 1;
        }

        else
        {
          v108 = v131;
        }

        v109 = strstr(v86, "I_COMP:");
        v110 = v132;
        if (v109 | v107)
        {
          v110 = 1;
        }

        LODWORD(v132) = v110;
        v111 = strstr(v86, "E_COMP:");
        if (v111 | v109)
        {
          v112 = 0;
        }

        else
        {
          v112 = v108;
        }

        v131 = v112;
        v91 = (v111 | v109 | v107) == 0;
      }

      else
      {
LABEL_183:
        v91 = 1;
      }

      v141 = v91;
      goto LABEL_185;
    }
  }

  return v17;
}

uint64_t statphr_set_WBND_feature(uint64_t a1, char **a2, char *__s, unsigned int a4, int a5)
{
  if (a4)
  {
    v8 = a5 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (a4 && (v10 = a4, strlen(__s) > a4) && __s[(v10 - v9)] != 32)
  {
    v12 = "0";
  }

  else
  {
    v12 = "1";
  }

  if (a5)
  {
    v13 = "Lwbnd";
  }

  else
  {
    v13 = "Rwbnd";
  }

  return statphr_setFeature(a1, v13, a2, v12);
}

BOOL statphr_isWBND(uint64_t a1)
{
  v2 = 0;
  while (strcmp("Lwbnd", g_statphr_FeatureNames[v2]))
  {
    if (++v2 == 8)
    {
      return 0;
    }
  }

  v3 = *(a1 + v2 * 8);
  return v3 && *v3 == 49 && !v3[1];
}

uint64_t statphr_MorphemeProcess(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  __s = 0;
  v22 = 0;
  v8 = (*(a2 + 104))(a3, a4, 1, 0, &v26);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v9 = (*(a2 + 184))(a3, a4, v26, 0, &v26 + 2);
  if ((v9 & 0x80000000) == 0 && HIWORD(v26) == 1)
  {
    v9 = (*(a2 + 176))(a3, a4, v26, 0, &v22, &v25);
    if ((v9 & 0x80000000) == 0 && v25 >= 2u)
    {
      v9 = (*(a2 + 104))(a3, a4, 2, v26, &v25 + 2);
      if ((v9 & 0x80000000) == 0)
      {
        v10 = HIWORD(v25);
        if (HIWORD(v25))
        {
          v11 = 0;
          while (1)
          {
            v12 = (*(a2 + 168))(a3, a4, v10, 0, 1, &v23, &v25);
            if ((v12 & 0x80000000) != 0)
            {
LABEL_31:
              v9 = v12;
              goto LABEL_34;
            }

            if (v23 <= 0xA && ((1 << v23) & 0x610) != 0)
            {
              v9 = (*(a2 + 184))(a3, a4, HIWORD(v25), 14, &v26 + 2);
              if ((v9 & 0x80000000) != 0 || HIWORD(v26) != 1)
              {
                goto LABEL_34;
              }

              v12 = (*(a2 + 176))(a3, a4, HIWORD(v25), 14, &__s, &v25);
              if ((v12 & 0x80000000) != 0)
              {
                goto LABEL_31;
              }

              v14 = strlen(__s);
              v15 = heap_Realloc(*(a1 + 8), v11, v14 + 10);
              if (!v15)
              {
                log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
                v9 = 2313166858;
LABEL_34:
                v16 = v11;
                if (!v11)
                {
                  return v9;
                }

LABEL_35:
                heap_Free(*(a1 + 8), v16);
                return v9;
              }

              v16 = v15;
              strcpy(v15, __s);
              v17 = (*(a2 + 168))(a3, a4, HIWORD(v25), 1, 1, &v24, &v25);
              if ((v17 & 0x80000000) != 0 || (!v24 ? (v18 = "PHR:B-WP") : *(v22 + v24 - 1) != 95 ? (v18 = "PHR:B-WP") : (v18 = "PHR:I-WP"), hlp_NLUStrJoin(v16, v18), v19 = strlen(v16), v17 = (*(a2 + 160))(a3, a4, HIWORD(v25), 14, (v19 + 1), v16, &v24 + 2), (v17 & 0x80000000) != 0))
              {
                v9 = v17;
                goto LABEL_35;
              }

              v11 = v16;
            }

            v9 = (*(a2 + 120))(a3, a4, HIWORD(v25), &v25 + 2);
            if ((v9 & 0x80000000) == 0)
            {
              v10 = HIWORD(v25);
              if (HIWORD(v25))
              {
                continue;
              }
            }

            goto LABEL_34;
          }
        }
      }
    }
  }

  return v9;
}

uint64_t statcomp_setParams(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  if ((paramc_ParamGetInt(*(a1 + 40), "statcompdetailtrace", &v5) & 0x80000000) == 0)
  {
    *(a2 + 8) = v5;
  }

  if ((paramc_ParamGetInt(*(a1 + 40), "statcompsrctrace", &v5) & 0x80000000) == 0)
  {
    *(a2 + 10) = v5;
  }

  *(a2 + 12) = 1;
  if ((paramc_ParamGetInt(*(a1 + 40), "statcompwidescope", &v5) & 0x80000000) == 0 && !v5)
  {
    *(a2 + 12) = 0;
  }

  return 0;
}

uint64_t statcomp_rules_unload(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[34];
  if (v3)
  {
    heap_Free(*(v2 + 8), v3);
    a1[34] = 0;
  }

  v4 = a1[36];
  if (v4)
  {
    v5 = ssftriff_reader_ReleaseChunkData(v4);
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    a1[36] = 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[39];
  if (v6)
  {
    heap_Free(*(v2 + 8), v6);
    a1[39] = 0;
  }

  v7 = a1[41];
  if (v7)
  {
    v5 = ssftriff_reader_ReleaseChunkData(v7);
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    a1[41] = 0;
  }

  v8 = a1[29];
  if (v8)
  {
    heap_Free(*(v2 + 8), v8);
    a1[29] = 0;
  }

  v9 = a1[31];
  if (v9)
  {
    v5 = ssftriff_reader_ReleaseChunkData(v9);
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    a1[31] = 0;
  }

  if (*(a1 + 36))
  {
    v10 = 0;
    v11 = 104;
    do
    {
      v12 = a1[8];
      if (v12)
      {
        heap_Free(*(v2 + 8), *(v12 + v11 - 96));
        v13 = a1[8] + v11;
        *(v13 - 96) = 0;
        freeRULEREGEXES(v2, v13 - 80);
        freeRULEREGEXES(v2, a1[8] + v11 - 64);
        v14 = a1[8];
        v15 = *(v14 + v11 - 48);
        if (v15 && *(v14 + v11 - 40))
        {
          heap_Free(*(v2 + 8), v15);
          v14 = a1[8];
          *(v14 + v11 - 48) = 0;
        }

        freeRULEREGEXES(v2, v14 + v11 - 32);
        heap_Free(*(v2 + 8), *(a1[8] + v11 - 16));
        v16 = (a1[8] + v11);
        *(v16 - 2) = 0;
        heap_Free(*(v2 + 8), *v16);
        *(a1[8] + v11) = 0;
      }

      if (*(a1 + 44))
      {
        heap_Free(*(v2 + 8), a1[10]);
        a1[10] = 0;
        *(a1 + 44) = 0;
      }

      if (*(a1 + 52))
      {
        heap_Free(*(v2 + 8), a1[12]);
        a1[12] = 0;
        *(a1 + 52) = 0;
      }

      ++v10;
      v11 += 120;
    }

    while (v10 < *(a1 + 36));
    if (*(a1 + 36))
    {
      heap_Free(*(v2 + 8), a1[8]);
      a1[8] = 0;
      *(a1 + 36) = 0;
    }
  }

  v17 = a1[4];
  if (v17)
  {
    heap_Free(*(v2 + 8), v17);
    a1[4] = 0;
  }

  *(a1 + 20) = 0;
  v18 = a1[6];
  if (v18)
  {
    if (*(a1 + 28))
    {
      v19 = 0;
      v20 = 0;
      do
      {
        heap_Free(*(v2 + 8), *(v18 + v19));
        v18 = a1[6];
        v21 = v18 + v19;
        *v21 = 0;
        *(v21 + 8) = 0;
        ++v20;
        v19 += 16;
      }

      while (v20 < *(a1 + 28));
    }

    heap_Free(*(v2 + 8), v18);
    a1[6] = 0;
  }

  *(a1 + 28) = 0;
  v22 = *(a1 + 170);
  if (*(a1 + 170))
  {
    v23 = 0;
    do
    {
      v24 = a1[43];
      if (v24)
      {
        heap_Free(*(v2 + 8), *(v24 + 8 * v23));
        *(a1[43] + 8 * v23) = 0;
        v22 = *(a1 + 170);
      }

      ++v23;
    }

    while (v23 < v22);
    heap_Free(*(v2 + 8), a1[43]);
    a1[43] = 0;
    *(a1 + 170) = 0;
  }

  v25 = a1[44];
  if (v25)
  {
    heap_Free(*(v2 + 8), v25);
    a1[44] = 0;
  }

  v26 = a1[45];
  if (v26)
  {
    heap_Free(*(v2 + 8), v26);
    a1[45] = 0;
  }

  if (*(a1 + 68))
  {
    v27 = 0;
    do
    {
      v28 = a1[19];
      if (v28)
      {
        heap_Free(*(v2 + 8), *(v28 + 8 * v27));
        *(a1[19] + 8 * v27) = 0;
      }

      v29 = a1[20];
      if (v29)
      {
        v30 = *(v29 + 8 * v27);
        if (v30)
        {
          v5 = igtree_Deinit(v2, v30);
          if ((v5 & 0x80000000) != 0)
          {
            return v5;
          }

          heap_Free(*(v2 + 8), *(a1[20] + 8 * v27));
          *(a1[20] + 8 * v27) = 0;
        }
      }

      v31 = a1[21];
      if (v31)
      {
        v32 = *(v31 + 8 * v27);
        if (v32)
        {
          if (*(v32 + 8))
          {
            v33 = 0;
            do
            {
              v34 = *v32;
              if (v34)
              {
                heap_Free(*(v2 + 8), *(v34 + 8 * v33));
                *(**(a1[21] + 8 * v27) + 8 * v33) = 0;
                v31 = a1[21];
              }

              ++v33;
              v32 = *(v31 + 8 * v27);
            }

            while (v33 < *(v32 + 8));
          }

          heap_Free(*(v2 + 8), *v32);
          v35 = a1[21];
          **(v35 + 8 * v27) = 0;
          heap_Free(*(v2 + 8), *(v35 + 8 * v27));
          *(a1[21] + 8 * v27) = 0;
        }
      }

      v36 = a1[22];
      if (v36)
      {
        v37 = *(v36 + 8 * v27);
        if (v37)
        {
          heap_Free(*(v2 + 8), v37);
          *(a1[22] + 8 * v27) = 0;
        }
      }

      v38 = a1[23];
      if (v38)
      {
        v39 = *(v38 + 8 * v27);
        if (v39)
        {
          heap_Free(*(v2 + 8), *v39);
          v40 = a1[23];
          **(v40 + 8 * v27) = 0;
          heap_Free(*(v2 + 8), *(v40 + 8 * v27));
          *(a1[23] + 8 * v27) = 0;
        }
      }

      ++v27;
    }

    while (v27 < *(a1 + 68));
    heap_Free(*(v2 + 8), a1[18]);
    a1[18] = 0;
    heap_Free(*(v2 + 8), a1[19]);
    a1[19] = 0;
    heap_Free(*(v2 + 8), a1[20]);
    a1[20] = 0;
    heap_Free(*(v2 + 8), a1[21]);
    a1[21] = 0;
    heap_Free(*(v2 + 8), a1[22]);
    a1[22] = 0;
    heap_Free(*(v2 + 8), a1[23]);
    a1[23] = 0;
    *(a1 + 68) = 0;
  }

  v41 = *(a1 + 64);
  if (*(a1 + 64))
  {
    v42 = 0;
    v43 = 0;
    v44 = a1[15];
    v45 = v44;
    do
    {
      if (v45)
      {
        heap_Free(*(v2 + 8), *(v45 + v42));
        v46 = (a1[15] + v42);
        *v46 = 0;
        heap_Free(*(v2 + 8), v46[1]);
        v44 = a1[15];
        *(v44 + v42 + 8) = 0;
        v41 = *(a1 + 64);
        v45 = v44;
      }

      ++v43;
      v42 += 16;
    }

    while (v43 < v41);
    *(a1 + 64) = 0;
    heap_Free(*(v2 + 8), v44);
    a1[15] = 0;
  }

  return v5;
}

void *freeRULEREGEXES(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = *a2;
    if (v3)
    {
      v4 = result;
      if (*(a2 + 8))
      {
        v5 = 0;
        v6 = 0;
        do
        {
          v7 = *a2;
          v8 = *(*a2 + v5);
          if (v8)
          {
            if (*(v8 + 8))
            {
              heap_Free(v4[1], *v8);
              *v8 = 0;
              v8 = *(v7 + v5);
            }

            heap_Free(v4[1], v8);
            *(v7 + v5) = 0;
          }

          v9 = v7 + v5;
          v10 = *(v9 + 8);
          if (v10)
          {
            if (*(v10 + 8))
            {
              heap_Free(v4[1], *v10);
              *v10 = 0;
              v10 = *(v9 + 8);
            }

            heap_Free(v4[1], v10);
            *(v9 + 8) = 0;
          }

          v11 = *(v9 + 16);
          if (v11)
          {
            if (*(v11 + 8))
            {
              heap_Free(v4[1], *v11);
              *v11 = 0;
              v11 = *(v9 + 16);
            }

            heap_Free(v4[1], v11);
            *(v9 + 16) = 0;
          }

          ++v6;
          v5 += 24;
        }

        while (v6 < *(a2 + 8));
        v3 = *a2;
      }

      result = heap_Free(v4[1], v3);
      *a2 = 0;
    }
  }

  return result;
}

uint64_t statcomp_rules_load(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a3;
  v240[17] = *MEMORY[0x1E69E9840];
  v236 = 0;
  v235 = 0;
  v233 = 0;
  v234 = 0;
  v231 = 0;
  v232 = 0;
  memset(v239, 0, sizeof(v239));
  *a4 = a3;
  *(a4 + 169) = 5;
  log_OutText(*(a3 + 32), "FE_POS", 5, 0, "loading StatCOMP rules", 0);
  __s = 0;
  memset(v240, 0, 128);
  *__s2 = 0;
  Str = paramc_ParamGetStr(*(v11 + 40), "langcode", &__s);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v229 = a1;
  v230 = a2;
  v15 = __s;
  if (*__s)
  {
    v16 = 0;
    do
    {
      v17 = v16;
      __s2[v16] = __tolower(v15[v16]);
      ++v16;
      v15 = __s;
      v18 = strlen(__s);
    }

    while (v17 <= 1 && v16 < v18);
  }

  else
  {
    v16 = 0;
  }

  __s2[v16] = 0;
  if (strcmp(v15, __s2))
  {
    Str = paramc_ParamSetStr(*(v11 + 40), "langcode", __s2);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    __s = __s2;
  }

  __strcpy_chk();
  __strcat_chk();
  __strcat_chk();
  Str = brokeraux_ComposeBrokerString(v11, v240, 0, 1, __s, 0, 0, v239, 0x80uLL);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = brk_DataOpenEx(*(v11 + 24), v239, 1, &v231);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = brk_DataClose(*(v11 + 24), v231);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = ssftriff_reader_ObjOpen(v229, a2, 0, v239, "SCMP", 1031, &v236);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v225 = a5;
  do
  {
    LODWORD(v19) = ssftriff_reader_OpenChunk(v236, &v234, &v233, &v232);
    if ((v19 & 0x80000000) != 0)
    {
      break;
    }

    if (v234 ^ 0x47494643 | v235)
    {
      if (!(v234 ^ 0x54455353 | v235))
      {
        v26 = v232;
        v27 = *v232;
        *(a4 + 20) = v27;
        v28 = heap_Calloc(*(*a4 + 8), 1, (8 * v27) | 1);
        a4[4] = v28;
        if (!v28)
        {
          goto LABEL_127;
        }

        if (*(a4 + 20))
        {
          v29 = 0;
          v30 = 0;
          v31 = 2;
          do
          {
            *(a4[4] + v29) = *(v26 + v31);
            v32 = v31 + 4;
            *(a4[4] + v29 + 4) = *(v26 + v32);
            v31 = v32 + 4;
            ++v30;
            v29 += 8;
          }

          while (v30 < *(a4 + 20));
        }

        LODWORD(v19) = 0;
        goto LABEL_95;
      }

      if (v234 ^ 0x50414D53 | v235)
      {
        if (v234 ^ 0x4C555243 | v235)
        {
          if (!(v234 ^ 0x58474552 | v235))
          {
            v20 = v236;
            v70 = v232;
            v240[0] = v232;
            v71 = *v232;
            *(a4 + 54) = *v232;
            if (v71)
            {
              v72 = (*(v70 + 1) + 8);
              a4[28] = v70 + v72;
              v73 = (v72 + v71);
            }

            else
            {
              v73 = 4;
            }

            v78 = *(v70 + v73);
            *(a4 + 120) = v78;
            v79 = heap_Calloc(*(*a4 + 8), 1, (4 * v78) | 1);
            a4[29] = v79;
            if (!v79)
            {
              goto LABEL_127;
            }

            if (*(a4 + 120))
            {
              v80 = 0;
              v81 = v73 + 2;
              do
              {
                *(a4[29] + 4 * v80) = *(v70 + v81);
                v81 += 4;
                ++v80;
              }

              while (v80 < *(a4 + 120));
            }

            v82 = a4 + 31;
            goto LABEL_94;
          }

          if (!(v234 ^ 0x53525453 | v235))
          {
            v20 = v236;
            v74 = v232;
            v240[0] = v232;
            v75 = *v232;
            *(a4 + 74) = *v232;
            if (v75)
            {
              v76 = (*(v74 + 1) + 8);
              a4[38] = v74 + v76;
              v77 = (v76 + v75);
            }

            else
            {
              v77 = 4;
            }

            v83 = *(v74 + v77);
            *(a4 + 160) = v83;
            v84 = heap_Calloc(*(*a4 + 8), 1, (4 * v83) | 1);
            a4[39] = v84;
            if (!v84)
            {
              goto LABEL_127;
            }

            if (*(a4 + 160))
            {
              v85 = 0;
              v86 = v77 + 2;
              do
              {
                *(a4[39] + 4 * v85) = *(v74 + v86);
                v86 += 4;
                ++v85;
              }

              while (v85 < *(a4 + 160));
            }

            v82 = a4 + 41;
            goto LABEL_94;
          }

          if (!(v234 ^ 0x54534552 | v235))
          {
            v20 = v236;
            v21 = v232;
            v240[0] = v232;
            v22 = *v232;
            *(a4 + 64) = *v232;
            if (v22)
            {
              v23 = (*(v21 + 1) + 8);
              a4[33] = v21 + v23;
              v24 = (v23 + v22);
            }

            else
            {
              v24 = 4;
            }

            v87 = *(v21 + v24);
            *(a4 + 140) = v87;
            v88 = heap_Calloc(*(*a4 + 8), 1, (4 * v87) | 1);
            a4[34] = v88;
            if (!v88)
            {
              goto LABEL_127;
            }

            if (*(a4 + 140))
            {
              v89 = 0;
              v90 = v24 + 2;
              do
              {
                *(a4[34] + 4 * v89) = *(v21 + v90);
                v90 += 4;
                ++v89;
              }

              while (v89 < *(a4 + 140));
            }

            v82 = a4 + 36;
LABEL_94:
            v19 = ssftriff_reader_DetachChunkData(v20, v82, v240);
            if ((v19 & 0x80000000) != 0)
            {
              return v19;
            }
          }
        }

        else
        {
          v42 = v232;
          v43 = *v232;
          *(a4 + 36) = v43;
          v44 = heap_Calloc(*(*a4 + 8), 1, (120 * v43) | 1);
          a4[8] = v44;
          if (!v44)
          {
            goto LABEL_127;
          }

          if (*(a4 + 36))
          {
            v45 = 0;
            v46 = 2;
            do
            {
              v47 = 120 * v45;
              *(v44 + 120 * v45) = *(v42 + v46);
              *(a4[8] + 120 * v45 + 4) = *(v42 + v46 + 4);
              *(a4[8] + 120 * v45 + 16) = *(v42 + v46 + 8);
              v48 = heap_Calloc(*(*a4 + 8), 1, (4 * *(a4[8] + 120 * v45 + 16)) | 1);
              v49 = a4[8];
              *(v49 + 120 * v45 + 8) = v48;
              if (!v48)
              {
                goto LABEL_127;
              }

              v50 = v46 + 10;
              v51 = v49 + 120 * v45;
              v52 = *(v51 + 16);
              if (*(v51 + 16))
              {
                do
                {
                  v53 = *(v42 + v50);
                  v50 += 2;
                  *v48++ = v53;
                  --v52;
                }

                while (v52);
              }

              LODWORD(v240[0]) = v50;
              Str = readRULEREGEXES(*a4, v42, v240, (v51 + 24));
              if ((Str & 0x80000000) != 0)
              {
                return Str;
              }

              Str = readRULEREGEXES(*a4, v42, v240, (a4[8] + 120 * v45 + 40));
              if ((Str & 0x80000000) != 0)
              {
                return Str;
              }

              v54 = v240[0];
              *(a4[8] + v47 + 64) = *(v42 + LODWORD(v240[0]));
              v55 = heap_Calloc(*(*a4 + 8), 1, (8 * *(a4[8] + v47 + 64)) | 1);
              v56 = a4[8];
              *(v56 + v47 + 56) = v55;
              if (!v55)
              {
                goto LABEL_127;
              }

              if (*(v56 + 120 * v45 + 64))
              {
                v57 = 0;
                v58 = 0;
                do
                {
                  *(*(v56 + v47 + 56) + v57) = *(v42 + (v54 + v57 + 2));
                  *(*(a4[8] + v47 + 56) + v57 + 4) = *(v42 + (v54 + v57 + 6));
                  ++v58;
                  v56 = a4[8];
                  v57 += 8;
                }

                while (v58 < *(v56 + v47 + 64));
                v59 = v54 + v57 + 2;
              }

              else
              {
                v59 = v54 + 2;
              }

              LODWORD(v240[0]) = v59;
              Str = readRULEREGEXES(*a4, v42, v240, (v56 + 120 * v45 + 72));
              if ((Str & 0x80000000) != 0)
              {
                return Str;
              }

              v60 = v240[0];
              *(a4[8] + v47 + 96) = *(v42 + LODWORD(v240[0]));
              v61 = heap_Calloc(*(*a4 + 8), 1, (8 * *(a4[8] + v47 + 96)) | 1);
              v62 = a4[8];
              *(v62 + v47 + 88) = v61;
              if (!v61)
              {
                goto LABEL_127;
              }

              if (*(v62 + 120 * v45 + 96))
              {
                v63 = 0;
                v64 = 0;
                do
                {
                  *(*(v62 + v47 + 88) + v63) = *(v42 + (v60 + v63 + 2));
                  *(*(a4[8] + v47 + 88) + v63 + 4) = *(v42 + (v60 + v63 + 6));
                  ++v64;
                  v62 = a4[8];
                  v63 += 8;
                }

                while (v64 < *(v62 + v47 + 96));
                v65 = v60 + v63 + 2;
              }

              else
              {
                v65 = v60 + 2;
              }

              *(v62 + v47 + 112) = *(v42 + v65);
              v66 = heap_Calloc(*(*a4 + 8), 1, (8 * *(a4[8] + v47 + 112)) | 1);
              v44 = a4[8];
              *(v44 + v47 + 104) = v66;
              v67 = (v44 + v47 + 104);
              if (!v66)
              {
                goto LABEL_127;
              }

              if (*(v44 + v47 + 112))
              {
                v68 = 0;
                v69 = 0;
                do
                {
                  *(*v67 + v68) = *(v42 + v65 + v68 + 2);
                  *(*(a4[8] + v47 + 104) + v68 + 4) = *(v42 + v65 + v68 + 6);
                  ++v69;
                  v44 = a4[8];
                  v67 = (v44 + v47 + 104);
                  v68 += 8;
                }

                while (v69 < *(v44 + v47 + 112));
                v46 = v65 + v68 + 2;
              }

              else
              {
                v46 = v65 + 2;
              }

              LODWORD(v240[0]) = v46;
            }

            while (++v45 < *(a4 + 36));
          }

          LODWORD(v19) = 0;
        }
      }

      else
      {
        v33 = v232;
        v34 = *v232;
        *(a4 + 28) = v34;
        v35 = heap_Calloc(*(*a4 + 8), 1, (16 * v34) | 1);
        a4[6] = v35;
        if (!v35)
        {
          goto LABEL_127;
        }

        if (*(a4 + 28))
        {
          v36 = 0;
          v37 = 2;
          while (1)
          {
            *(v35 + 16 * v36 + 8) = *(v33 + v37);
            v38 = heap_Calloc(*(*a4 + 8), 1, (8 * *(a4[6] + 16 * v36 + 8)) | 1);
            v35 = a4[6];
            v39 = v35 + 16 * v36;
            *v39 = v38;
            if (!v38)
            {
              break;
            }

            if (*(v39 + 8))
            {
              v40 = 0;
              v41 = 0;
              do
              {
                *(*v39 + v40) = *(v33 + v37 + v40 + 2);
                *(*(a4[6] + 16 * v36) + v40 + 4) = *(v33 + v37 + v40 + 6);
                ++v41;
                v35 = a4[6];
                v39 = v35 + 16 * v36;
                v40 += 8;
              }

              while (v41 < *(v39 + 8));
              v37 += v40 + 2;
            }

            else
            {
              v37 += 2;
            }

            if (++v36 >= *(a4 + 28))
            {
              goto LABEL_42;
            }
          }

LABEL_127:
          v19 = 2313166858;
          goto LABEL_128;
        }

LABEL_42:
        LODWORD(v19) = 0;
      }
    }

    else
    {
      LODWORD(v19) = 0;
      v25 = v232;
      *(a4 + 8) = *v232;
      *(a4 + 9) = v25[1];
      *(a4 + 10) = v25[2];
    }

LABEL_95:
    v91 = ssftriff_reader_CloseChunk(v236);
    if (v91 < 0)
    {
      LODWORD(v19) = v91;
    }
  }

  while ((v19 & 0x80000000) == 0);
  v92 = v19 & 0x1FFF;
  v19 = 2313166858;
  if (v92 == 10)
  {
    return v19;
  }

  ssftriff_reader_ObjClose(v236);
  v236 = 0;
  *(a4 + 44) = 0;
  *(a4 + 22) = 0x10000;
  *(a4 + 13) = 2;
  *(a4 + 168) = 0;
  *(a4 + 52) = 0;
  v223 = a4 + 13;
  v93 = *(a4 + 36);
  if (!*(a4 + 36))
  {
    LOWORD(v95) = 0;
    v110 = 0;
    goto LABEL_132;
  }

  v217 = v11;
  v218 = a6;
  v220 = a7;
  v227 = 0;
  v94 = 0;
  v95 = 0;
  v222 = 0;
  v97 = a4[38];
  v96 = a4[39];
  v98 = a4[8];
  while (2)
  {
    v99 = strlen((v97 + *(v96 + 4 * v98[1])));
    if (v99 > v95)
    {
      v95 = v99;
    }

    v100 = v95;
    v101 = *(v96 + 4 * *v98);
    v102 = strlen((v97 + v101));
    if (v102 >= 7)
    {
      v103 = v102;
      if (!strncmp((v97 + v101), "HYPHEN", 6uLL))
      {
        v104 = a4 + 11;
        v105 = ++v227;
LABEL_109:
        *v104 = v105;
      }

      else if (v103 >= 9 && !strncmp((v97 + v101), "COMPOUND", 8uLL))
      {
        v104 = a4 + 13;
        v105 = ++v222;
        goto LABEL_109;
      }
    }

    v95 = v100;
    v106 = *(v98 + 8);
    if (v106 > v94)
    {
      *(a4 + 168) = v106;
      v94 = v106;
      if (v106 >= 0x11)
      {
        log_OutPublic(*(*a4 + 32), "FE_POS", 35007, "%s%s", "maximum words", "16");
        return 2313166848;
      }
    }

    v98 += 30;
    if (--v93)
    {
      continue;
    }

    break;
  }

  a6 = v218;
  a7 = v220;
  v107 = v222;
  if (v227)
  {
    v108 = heap_Calloc(*(*a4 + 8), 1, (2 * v227) | 1);
    a4[10] = v108;
    if (!v108)
    {
      goto LABEL_128;
    }

    v107 = *v223;
  }

  if (v107)
  {
    v109 = heap_Calloc(*(*a4 + 8), 1, (2 * v107) | 1);
    a4[12] = v109;
    if (!v109)
    {
LABEL_128:
      v123 = *a4;
      goto LABEL_129;
    }
  }

  v110 = *(a4 + 36);
  *(a4 + 44) = 0;
  *(a4 + 52) = 0;
  if (v110)
  {
    v111 = 0;
    v112 = a4[38];
    v113 = a4[39];
    v114 = a4[8];
    v11 = v217;
    do
    {
      v115 = *v114;
      v114 += 30;
      v116 = *(v113 + 4 * v115);
      v117 = strlen((v112 + v116));
      if (v117 >= 7)
      {
        v118 = v117;
        v119 = strncmp((v112 + v116), "HYPHEN", 6uLL);
        v120 = a4 + 10;
        v121 = a4 + 11;
        if (!v119 || v118 >= 9 && (v122 = strncmp((v112 + v116), "COMPOUND", 8uLL), v120 = a4 + 12, v121 = a4 + 13, !v122))
        {
          *(*v120 + 2 * (*v121)++) = v111;
        }
      }

      ++v111;
    }

    while (v111 < *(a4 + 36));
    v110 = *v223;
    a6 = v218;
    a7 = v220;
  }

  else
  {
    v11 = v217;
  }

LABEL_132:
  log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "%d OPEN RULES", v110);
  if (*(a4 + 52))
  {
    v125 = 0;
    do
    {
      v126 = (a4[8] + 120 * *(a4[12] + 2 * v125));
      log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "label=%s (%d words)", (a4[38] + *(a4[39] + 4 * *v126)), *(v126 + 16));
      ++v125;
    }

    while (v125 < *(a4 + 52));
  }

  log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "%d HYPHENATED RULES", *(a4 + 44));
  if (*(a4 + 44))
  {
    v127 = 0;
    do
    {
      v128 = (a4[8] + 120 * *(a4[10] + 2 * v127));
      log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "label=%s (%d words)", (a4[38] + *(a4[39] + 4 * *v128)), *(v128 + 16));
      ++v127;
    }

    while (v127 < *(a4 + 44));
  }

  v240[0] = 0;
  LOWORD(__s) = -1;
  __s2[0] = 0;
  Str = (*(a7 + 96))(v225, a6, "fecfg", "compoundabbrendingstrip", v240, &__s, __s2);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  *(a4 + 170) = 0;
  a4[43] = 0;
  if (__s == 1 && v240[0])
  {
    v129 = strchr(*v240[0], 44);
    if (v129)
    {
      v130 = v95;
      v131 = 0;
      do
      {
        v132 = v131++;
        *(a4 + 170) = v131;
        v129 = strchr(v129 + 1, 44);
      }

      while (v129);
      v133 = v132 + 2;
      LOWORD(v95) = v130;
    }

    else
    {
      v133 = 1;
    }

    *(a4 + 170) = v133;
    v134 = heap_Calloc(*(*a4 + 8), 1, (8 * v133) | 1);
    a4[43] = v134;
    if (!v134)
    {
      goto LABEL_128;
    }

    *(a4 + 170) = 0;
    v135 = *v240[0];
    v136 = strchr(*v240[0], __s2[0]);
    if (v136)
    {
      *v136 = 0;
      v135 = *v240[0];
    }

    if (v135)
    {
      v137 = strchr(v135, 44);
      if (v137)
      {
        v138 = v137;
        do
        {
          *v138 = 0;
          v139 = strlen(v135);
          v140 = heap_Calloc(*(*a4 + 8), 1, (v139 + 1));
          v141 = *(a4 + 170);
          *(a4[43] + 8 * v141) = v140;
          v142 = *(a4[43] + 8 * v141);
          if (!v142)
          {
            goto LABEL_128;
          }

          strcpy(v142, v135);
          v135 = v138 + 1;
          ++*(a4 + 170);
          v138 = strchr(v138 + 1, 44);
        }

        while (v138);
      }

      v143 = strlen(v135);
      v144 = heap_Calloc(*(*a4 + 8), 1, (v143 + 1));
      v145 = *(a4 + 170);
      *(a4[43] + 8 * v145) = v144;
      v146 = *(a4[43] + 8 * v145);
      if (!v146)
      {
        goto LABEL_128;
      }

      strcpy(v146, v135);
      ++*(a4 + 170);
    }
  }

  if (!v95)
  {
LABEL_161:
    *(a4 + 68) = 0;
    *(a4 + 92) = 0;
    v224 = *(a4 + 36);
    if (!*(a4 + 36))
    {
      return 0;
    }

    v219 = a6;
    v221 = a7;
    v149 = 0;
    v150 = 0;
    v151 = 0;
    v226 = a4[8];
    do
    {
      v228 = v150;
      v152 = v226 + 120 * v150;
      v153 = *(v152 + 64);
      if (*(v152 + 64))
      {
        v155 = a4[38];
        v154 = a4[39];
        v156 = (*(v152 + 56) + 4);
        do
        {
          if (!strcmp((v155 + *(v154 + 4 * *(v156 - 1))), "IGTREE"))
          {
            *(a4 + 68) = ++v149;
            v157 = strlen((v155 + *(v154 + 4 * *v156)));
            if (v157 > v151)
            {
              v151 = v157;
            }
          }

          v156 += 2;
          --v153;
        }

        while (v153);
      }

      v158 = v226 + 120 * v228;
      v159 = *(v158 + 96);
      if (*(v158 + 96))
      {
        v161 = a4[38];
        v160 = a4[39];
        v162 = (*(v158 + 88) + 4);
        do
        {
          if (!strcmp((v161 + *(v160 + 4 * *(v162 - 1))), "IGTREE"))
          {
            *(a4 + 68) = ++v149;
            v163 = strlen((v161 + *(v160 + 4 * *v162)));
            if (v163 > v151)
            {
              v151 = v163;
            }
          }

          v162 += 2;
          --v159;
        }

        while (v159);
      }

      v164 = v226 + 120 * v228;
      v165 = *(v164 + 112);
      if (*(v164 + 112))
      {
        v167 = a4[38];
        v166 = a4[39];
        v168 = (*(v164 + 104) + 4);
        do
        {
          if (!strcmp((v167 + *(v166 + 4 * *(v168 - 1))), "IGTREE"))
          {
            *(a4 + 68) = ++v149;
            v169 = strlen((v167 + *(v166 + 4 * *v168)));
            if (v169 > v151)
            {
              v151 = v169;
            }
          }

          v168 += 2;
          --v165;
        }

        while (v165);
      }

      v150 = v228 + 1;
    }

    while (v228 + 1 != v224);
    if (!v149)
    {
      return 0;
    }

    *(a4 + 29) = 0;
    *(a4 + 28) = 0;
    Str = (*(v221 + 72))(v225, v219, "compounds_feature_map");
    if ((Str & 0x80000000) == 0)
    {
      Str = (*(v221 + 72))(v225, v219, "compounds_feature_key", a4 + 14);
      if ((Str & 0x80000000) == 0)
      {
        Str = getDctIgtreeMappings(a4, v225, v219, v221, (a4 + 15));
        if ((Str & 0x80000000) == 0)
        {
          v170 = Str;
          v171 = heap_Calloc(*(v11 + 8), 1, 20 * *(a4 + 68));
          a4[18] = v171;
          if (v171)
          {
            v172 = heap_Calloc(*(v11 + 8), 1, 8 * *(a4 + 68));
            a4[19] = v172;
            if (v172)
            {
              if (*(a4 + 68))
              {
                v173 = 0;
                while (1)
                {
                  *(a4[19] + 8 * v173) = heap_Calloc(*(v11 + 8), 1, v151 + 1);
                  if (!*(a4[19] + 8 * v173))
                  {
                    break;
                  }

                  ++v173;
                  v174 = *(a4 + 68);
                  if (v173 >= v174)
                  {
                    v175 = 8 * v174;
                    goto LABEL_197;
                  }
                }
              }

              else
              {
                v175 = 0;
LABEL_197:
                v177 = heap_Calloc(*(v11 + 8), 1, v175);
                a4[20] = v177;
                if (v177)
                {
                  if (*(a4 + 68))
                  {
                    v178 = 0;
                    while (1)
                    {
                      *(a4[20] + 8 * v178) = heap_Calloc(*(v11 + 8), 1, 1600);
                      if (!*(a4[20] + 8 * v178))
                      {
                        break;
                      }

                      ++v178;
                      v179 = *(a4 + 68);
                      if (v178 >= v179)
                      {
                        v180 = 8 * v179;
                        goto LABEL_204;
                      }
                    }
                  }

                  else
                  {
                    v180 = 0;
LABEL_204:
                    v181 = heap_Calloc(*(v11 + 8), 1, v180);
                    a4[21] = v181;
                    if (v181)
                    {
                      if (*(a4 + 68))
                      {
                        v182 = 0;
                        while (1)
                        {
                          *(a4[21] + 8 * v182) = heap_Calloc(*(v11 + 8), 1, 16);
                          if (!*(a4[21] + 8 * v182))
                          {
                            break;
                          }

                          ++v182;
                          v183 = *(a4 + 68);
                          if (v182 >= v183)
                          {
                            v184 = 8 * v183;
                            goto LABEL_211;
                          }
                        }
                      }

                      else
                      {
                        v184 = 0;
LABEL_211:
                        v185 = heap_Calloc(*(v11 + 8), 1, v184);
                        a4[22] = v185;
                        if (v185)
                        {
                          v186 = heap_Calloc(*(v11 + 8), 1, 8 * *(a4 + 68));
                          a4[23] = v186;
                          if (v186)
                          {
                            LODWORD(v187) = *(a4 + 68);
                            if (!*(a4 + 68))
                            {
LABEL_217:
                              if (*(a4 + 36))
                              {
                                v189 = 0;
                                v190 = 0;
                                v191 = a4[8];
                                do
                                {
                                  v192 = v191 + 120 * v189;
                                  if (*(v192 + 64))
                                  {
                                    v193 = 0;
                                    v194 = 0;
                                    v195 = (v192 + 56);
                                    do
                                    {
                                      v196 = a4[38];
                                      v197 = a4[39];
                                      v198 = *v195;
                                      if (!strcmp((v196 + *(v197 + 4 * *(*v195 + v193))), "IGTREE"))
                                      {
                                        v170 = setIGTreeInfo(v229, v230, a4, v190, (v196 + *(v197 + 4 * *(v198 + v193 + 4))), v225, v219, v221);
                                        if ((v170 & 0x80000000) != 0)
                                        {
                                          return v170;
                                        }

                                        ++v190;
                                        v191 = a4[8];
                                      }

                                      ++v194;
                                      v199 = v191 + 120 * v189;
                                      v195 = (v199 + 56);
                                      v193 += 8;
                                    }

                                    while (v194 < *(v199 + 64));
                                  }

                                  v200 = v191 + 120 * v189;
                                  if (*(v200 + 96))
                                  {
                                    v201 = 0;
                                    v202 = 0;
                                    v203 = (v200 + 88);
                                    do
                                    {
                                      v204 = a4[38];
                                      v205 = a4[39];
                                      v206 = *v203;
                                      if (!strcmp((v204 + *(v205 + 4 * *(*v203 + v201))), "IGTREE"))
                                      {
                                        v170 = setIGTreeInfo(v229, v230, a4, v190, (v204 + *(v205 + 4 * *(v206 + v201 + 4))), v225, v219, v221);
                                        if ((v170 & 0x80000000) != 0)
                                        {
                                          return v170;
                                        }

                                        ++v190;
                                        v191 = a4[8];
                                      }

                                      ++v202;
                                      v207 = v191 + 120 * v189;
                                      v203 = (v207 + 88);
                                      v201 += 8;
                                    }

                                    while (v202 < *(v207 + 96));
                                  }

                                  v208 = v191 + 120 * v189;
                                  if (*(v208 + 112))
                                  {
                                    v209 = 0;
                                    v210 = 0;
                                    v211 = (v208 + 104);
                                    do
                                    {
                                      v212 = a4[38];
                                      v213 = a4[39];
                                      v214 = *v211;
                                      if (!strcmp((v212 + *(v213 + 4 * *(*v211 + v209))), "IGTREE"))
                                      {
                                        v170 = setIGTreeInfo(v229, v230, a4, v190, (v212 + *(v213 + 4 * *(v214 + v209 + 4))), v225, v219, v221);
                                        if ((v170 & 0x80000000) != 0)
                                        {
                                          return v170;
                                        }

                                        ++v190;
                                        v191 = a4[8];
                                      }

                                      ++v210;
                                      v215 = v191 + 120 * v189;
                                      v211 = (v215 + 104);
                                      v209 += 8;
                                    }

                                    while (v210 < *(v215 + 112));
                                  }

                                  ++v189;
                                }

                                while (v189 < *(a4 + 36));
                                LODWORD(v187) = *(a4 + 68);
                              }

                              if (v187)
                              {
                                v216 = 0;
                                do
                                {
                                  setIGTreeWord2Nindex(a4, v216++);
                                }

                                while (*(a4 + 68) > v216);
                              }

                              return v170;
                            }

                            v188 = 0;
                            while (1)
                            {
                              *(a4[23] + 8 * v188) = heap_Calloc(*(v11 + 8), 1, 8);
                              if (!*(a4[23] + 8 * v188))
                              {
                                break;
                              }

                              ++v188;
                              v187 = *(a4 + 68);
                              if (v188 >= v187)
                              {
                                goto LABEL_217;
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

          v124 = *(v11 + 32);
          goto LABEL_130;
        }
      }
    }

    return Str;
  }

  v147 = heap_Calloc(*(*a4 + 8), 1, v95 + 11);
  a4[44] = v147;
  v123 = *a4;
  if (v147)
  {
    v148 = heap_Calloc(*(v123 + 8), 1, v95 + 11);
    a4[45] = v148;
    if (!v148)
    {
      goto LABEL_128;
    }

    goto LABEL_161;
  }

LABEL_129:
  v124 = *(v123 + 32);
LABEL_130:
  log_OutPublic(v124, "FE_POS", 35000, 0);
  return v19;
}

uint64_t getDctIgtreeMappings(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = 0;
  v28 = -1;
  if (a1[92] == 1 || !a1[29])
  {
    return 0;
  }

  v27 = 0;
  v10 = (*(a4 + 96))(a2, a3, "compounds_feature_map", "numMappings", &v29, &v28, &v27);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  if (v28 != 1 || v29 == 0)
  {
    v14 = *(a5 + 8);
  }

  else
  {
    v14 = atoi(*v29);
    *(a5 + 8) = v14;
  }

  v15 = heap_Calloc(*(*a1 + 8), 1, (16 * v14) | 1);
  *a5 = v15;
  if (!v15)
  {
LABEL_26:
    v12 = 2313166858;
    log_OutPublic(*(*a1 + 32), "FE_POS", 35000, 0);
    return v12;
  }

  if (*(a5 + 8))
  {
    v16 = 0;
    v17 = 0;
    do
    {
      LH_itoa(v17, v26, 0xAu);
      v28 = -1;
      v10 = (*(a4 + 96))(a2, a3, "compounds_feature_map", v26, &v29, &v28, &v27);
      if ((v10 & 0x80000000) != 0)
      {
        return v10;
      }

      v18 = v28 != 1 || v29 == 0;
      if (v18 || (v19 = *v29, (v20 = strchr(*v29, 43)) == 0))
      {
        log_OutPublic(*(*a1 + 32), "FE_POS", 35005, 0);
        return 2313166848;
      }

      v21 = v20;
      *v20 = 0;
      v22 = strlen(v19);
      v23 = heap_Calloc(*(*a1 + 8), 1, (v22 + 1));
      *(*a5 + v16 + 8) = v23;
      if (!v23)
      {
        goto LABEL_26;
      }

      strcpy(v23, v19);
      v24 = strlen(v21 + 1);
      v25 = heap_Calloc(*(*a1 + 8), 1, (v24 + 1));
      *(*a5 + v16) = v25;
      if (!v25)
      {
        goto LABEL_26;
      }

      strcpy(v25, v21 + 1);
      ++v17;
      v16 += 16;
    }

    while (v17 < *(a5 + 8));
  }

  v12 = 0;
  a1[92] = 1;
  return v12;
}

uint64_t setIGTreeInfo(_WORD *a1, uint64_t a2, uint64_t *a3, unsigned int a4, char *__src, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38[17] = *MEMORY[0x1E69E9840];
  v8 = 2313166855;
  memset(&__c[1], 0, 256);
  if (a3)
  {
    v10 = a3[19];
    if (v10)
    {
      *v35 = 0;
      v12 = *(v10 + 8 * a4);
      if (v12)
      {
        strcpy(v12, __src);
        v18 = *a3;
        *v36 = 0;
        memset(v38, 0, 128);
        Str = paramc_ParamGetStr(*(v18 + 40), "langcode", v36);
        if ((Str & 0x80000000) != 0)
        {
          return Str;
        }

        __strcat_chk();
        __strcat_chk();
        Str = brokeraux_ComposeBrokerString(v18, v38, 1, 1, *v36, 0, 0, &__c[1], 0x100uLL);
        if ((Str & 0x80000000) != 0)
        {
          return Str;
        }

        if ((ssftriff_reader_ObjOpen(a1, a2, 2, &__c[1], "IGTR", 1031, v35) & 0x80000000) != 0)
        {
          log_OutPublic(*(*a3 + 32), "FE_POS", 35004, 0);
          return 2313166848;
        }

        Str = igtree_Init(a1, a2, *v35, *(a3[20] + 8 * a4));
        if ((Str & 0x80000000) != 0)
        {
          return Str;
        }

        Str = ssftriff_reader_ObjClose(*v35);
        if ((Str & 0x80000000) != 0)
        {
          return Str;
        }

        v20 = *(a3[21] + 8 * a4);
        v38[0] = 0;
        LOWORD(v36[0]) = -1;
        if (*(a3 + 28))
        {
          __c[0] = 0;
          Str = (*(a8 + 96))(a6, a7, "compounds_feature_key", __src, v38, v36, __c);
          if ((Str & 0x80000000) != 0)
          {
            return Str;
          }

          if (LOWORD(v36[0]) == 1 && v38[0])
          {
            v21 = *v38[0];
            v22 = strchr(*v38[0], __c[0]);
            v23 = v22;
            if (v22)
            {
              *v22 = 0;
            }

            v24 = atoi(v21);
            *(v20 + 8) = v24;
            v25 = heap_Calloc(*(*a3 + 8), 1, (8 * v24) | 1u);
            *v20 = v25;
            if (!v25)
            {
LABEL_33:
              log_OutPublic(*(*a3 + 32), "FE_POS", 35000, 0);
              return 2313166858;
            }

            if (*(v20 + 8))
            {
              v26 = 0;
              if (v23)
              {
                v21 = v23 + 1;
              }

              do
              {
                v27 = strchr(v21, __c[0]);
                v28 = v27;
                if (v27)
                {
                  *v27 = 0;
                }

                v29 = strlen(v21);
                *(*v20 + 8 * v26) = heap_Calloc(*(*a3 + 8), 1, (v29 + 1));
                v30 = *(*v20 + 8 * v26);
                if (!v30)
                {
                  goto LABEL_33;
                }

                strcpy(v30, v21);
                ++v26;
                v31 = *(v20 + 8);
                if (v26 != v31 && v28 != 0)
                {
                  v21 = v28 + 1;
                }
              }

              while (v26 < v31);
            }
          }
        }

        *(a3[22] + 8 * a4) = heap_Calloc(*(*a3 + 8), 1, (2 * *(*(a3[21] + 8 * a4) + 8)) | 1);
        if (!*(a3[22] + 8 * a4))
        {
          return 2313166858;
        }

        return setIgtreeFVLookups(a3, *(a3[23] + 8 * a4), a4);
      }
    }
  }

  return v8;
}

char *setIGTreeWord2Nindex(char *result, unsigned int a2)
{
  v2 = *(result + 20);
  if (*(result + 20))
  {
    v3 = result;
    v4 = *(result + 38);
    v5 = *(result + 39);
    v6 = a2;
    for (i = (*(result + 4) + 4); ; i += 2)
    {
      v8 = (v4 + *(v5 + 4 * *(i - 1)));
      result = strncmp(v8, "IGTREE_", 7uLL);
      if (!result)
      {
        result = strcmp(v8 + 7, *(*(v3 + 19) + 8 * v6));
        if (!result)
        {
          break;
        }
      }

      if (!--v2)
      {
        return result;
      }
    }

    v9 = (v4 + *(v5 + 4 * *i));
    result = strchr(v9, 95);
    v10 = result;
    if (result)
    {
      v11 = 0;
      do
      {
        *v10 = 0;
        v12 = v11 + 1;
        *(*(v3 + 18) + 20 * v6 + 2 * v11) = atoi(v9);
        v9 = (v10 + 1);
        result = strchr((v10 + 1), 95);
        v10 = result;
        ++v11;
      }

      while (result);
      v10 = v12;
    }

    if (*v9)
    {
      result = atoi(v9);
      *(*(v3 + 18) + 20 * v6 + 2 * v10) = result;
    }
  }

  return result;
}

uint64_t statcomp_add2Str(uint64_t a1, char **a2, _WORD *a3, char *__s)
{
  v8 = strlen(__s);
  v9 = *a3;
  v10 = *a2;
  v11 = strlen(*a2);
  if (v8 >= v9 - v11)
  {
    if ((v8 - v9 + v11) <= 0x80u)
    {
      v12 = 128;
    }

    else
    {
      v12 = (v8 - v9 + v11);
    }

    v13 = heap_Realloc(*(a1 + 8), v10, v9 + v12 + 1);
    if (!v13)
    {
      log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
      return 2313166858;
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

uint64_t matchSTATCOMPCONTEXT_TRule(const char *a1, char **a2, _WORD *a3, char *__s, uint64_t a5, uint64_t a6, uint64_t *a7, unsigned int *a8, int *a9, _WORD *a10, int a11)
{
  v11 = a7;
  v14 = a9;
  v45 = *MEMORY[0x1E69E9840];
  *a9 = 0;
  *(a8 + 6) = 0;
  if (*(a5 + 8))
  {
    v17 = logSTATCOMPCONTEXT_TRule(a2, a3, __s, a5, a7);
    if ((v17 & 0x80000000) != 0)
    {
      return v17;
    }

    log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "         %s %s", a1, *a2);
    **a2 = 0;
  }

  else
  {
    v17 = 0;
  }

  if (!*(v11 + 4))
  {
    v36 = 1;
    goto LABEL_75;
  }

  v18 = 0;
  v19 = 0;
  v20 = a11;
  v21 = a8;
  v41 = a6;
  v42 = v11;
  while (1)
  {
    v22 = *v11;
    v23 = *(v21 + 2);
    if (*(a5 + 8))
    {
      v24 = a6;
      v25 = v20;
      log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "           regex %d", *(v22 + v18 + 2));
      v26 = *(v22 + v18 + 4) & 1;
      if (*(a5 + 8) >= 2u)
      {
        v27 = *(v22 + v18 + 4) & 1;
        log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "           ruleDef[domain=%s(%d) wordIdx=%d left_window=%d right_window=%d] defMapIdx=%s(%d) bNegateMatch=%d", STATCOMPDOMAIN2STRING[*a8], *a8, *(a8 + 2), *(a8 + 3), *(a8 + 4), (*(a5 + 304) + *(*(a5 + 312) + 4 * *(v22 + v18))), *(v22 + v18), v26);
        v26 = v27;
      }

      v20 = v25;
      a6 = v24;
      v21 = a8;
    }

    else
    {
      v26 = *(v22 + v18 + 4) & 1;
    }

    if (*v21 == 2)
    {
      v28 = *(v22 + v18);
      if (v28 == 2)
      {
        v29 = v26;
        v30 = *(a6 + 40);
        if (!v30)
        {
          log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "           ERROR : no TOK string to match", 0);
          goto LABEL_37;
        }
      }

      else if (v28 == 1)
      {
        v29 = v26;
        v30 = *(a6 + 32);
        if (!v30)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (*(v22 + v18))
        {
LABEL_25:
          if (!*(a5 + 8))
          {
            v17 = 0;
            if (!v26)
            {
              goto LABEL_66;
            }

            goto LABEL_42;
          }

          v29 = v26;
          log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "           NULL STR FOUND - no match", 0);
          goto LABEL_37;
        }

        v29 = v26;
        v30 = *(a6 + 24);
        if (!v30)
        {
          log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "           ERROR : no ORT string to match", 0);
          goto LABEL_37;
        }
      }
    }

    else
    {
      if (*v21 != 1)
      {
        goto LABEL_25;
      }

      if (v20)
      {
        if (v20 == 2)
        {
          if (v23 + *(v21 + 4) + 1 >= *(a6 + 8))
          {
            goto LABEL_67;
          }
        }

        else if (v20 != 1 || *(v21 + 3) >= v23)
        {
LABEL_67:
          v17 = 0;
          if (!*(a5 + 8))
          {
            goto LABEL_73;
          }

          v37 = "           context not found. rule not applicable. RETURN LH_FALSE";
          goto LABEL_72;
        }
      }

      v30 = *(*a6 + 96 * *(v21 + 2) + 32);
      if (!v30)
      {
        v29 = v26;
LABEL_35:
        v31 = "           ERROR : no POS string to match";
LABEL_36:
        log_OutText(*(*a5 + 32), "FE_POS", 5, 0, v31, 0);
LABEL_37:
        v17 = 0;
        goto LABEL_38;
      }

      v29 = v26;
      v31 = "           ERROR : expected POS(idx) rule";
      if (*(v22 + v18) != *(a5 + 24))
      {
        goto LABEL_36;
      }
    }

    if (*(a5 + 8))
    {
      log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "           STR=%s", v30);
    }

    v33 = strlen(v30);
    if (!v33)
    {
      log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "invalid arg for regex", 0);
      return 2313166855;
    }

    v34 = nuance_pcre_exec(*(a5 + 200), *(a5 + 208), *(a5 + 224) + *(*(a5 + 232) + 4 * *(v22 + v18 + 2)), 0, v30, v33, 0, 0, v44, 30);
    if ((v34 & 0x80000000) == 0)
    {
      break;
    }

    v35 = nuance_pcre_ErrorToLhError(v34);
    v17 = v35;
    if (v35 >> 20 == 2213)
    {
      if ((v35 & 0x1FFF) != 0x14)
      {
        if ((v35 & 0x1FFF) == 0xA)
        {
          log_OutPublic(*(*a5 + 32), "FE_POS", 11002, 0, v39, v40);
        }

        else
        {
          log_OutPublic(*(*a5 + 32), "FE_POS", 11027, "%s%x");
        }

        return v17;
      }

      goto LABEL_59;
    }

    a6 = v41;
    v11 = v42;
    if ((v35 & 0x80000000) != 0)
    {
      return v17;
    }

LABEL_38:
    if (*(a5 + 8))
    {
      log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "           REGEX FAILED", 0);
      if (!v29)
      {
        v36 = *(a5 + 8);
        if (!*(a5 + 8))
        {
          goto LABEL_74;
        }

        v37 = "           return LH_FALSE";
LABEL_72:
        v14 = a9;
        log_OutText(*(*a5 + 32), "FE_POS", 5, 0, v37, 0);
        v36 = 0;
        goto LABEL_75;
      }
    }

    else if (!v29)
    {
LABEL_66:
      v36 = 0;
      goto LABEL_74;
    }

LABEL_42:
    *a10 = *(v22 + v18 + 2);
    v32 = "           negate match - return LH_TRUE";
    if (*(a5 + 8))
    {
      goto LABEL_43;
    }

LABEL_44:
    ++v19;
    v18 += 6;
    if (v19 >= *(v11 + 4))
    {
      v36 = 1;
      goto LABEL_74;
    }
  }

  if (!v34)
  {
LABEL_59:
    v17 = 0;
    a6 = v41;
    v11 = v42;
    goto LABEL_38;
  }

  if (*(a5 + 8))
  {
    log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "           REGEX FIRED", 0);
  }

  v11 = v42;
  v17 = 0;
  if (!v29)
  {
    *a10 = *(v22 + v18 + 2);
    v32 = "           return LH_TRUE";
    a6 = v41;
    if (!*(a5 + 8))
    {
      goto LABEL_44;
    }

LABEL_43:
    log_OutText(*(*a5 + 32), "FE_POS", 5, 0, v32, 0);
    goto LABEL_44;
  }

  if (*(a5 + 8))
  {
    v37 = "           negate match - return LH_FALSE";
    goto LABEL_72;
  }

LABEL_73:
  v36 = 0;
LABEL_74:
  v14 = a9;
LABEL_75:
  *v14 = v36;
  return v17;
}

uint64_t logSTATCOMPCONTEXT_TRule(char **a1, _WORD *a2, char *__s, uint64_t *a4, uint64_t *a5)
{
  if (!*(a5 + 4))
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = *a5;
    v13 = (*a5 + v10);
    if (*(v13 + 4))
    {
      if (v13[2])
      {
        *__s = 33;
      }

      result = statcomp_add2Str(*a4, a1, a2, __s);
      if ((result & 0x80000000) != 0)
      {
        break;
      }
    }

    result = statcomp_add2Str(*a4, a1, a2, "[");
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = statcomp_add2Str(*a4, a1, a2, (a4[38] + *(a4[39] + 4 * *v13)));
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    sprintf(__s, " %d(", *(v12 + v10 + 2));
    result = statcomp_add2Str(*a4, a1, a2, __s);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = statcomp_add2Str(*a4, a1, a2, (a4[33] + *(a4[34] + 4 * *(v12 + v10 + 2))));
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = statcomp_add2Str(*a4, a1, a2, ")] ");
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    ++v11;
    v10 += 6;
    if (v11 >= *(a5 + 4))
    {
      return 0;
    }
  }

  return result;
}

uint64_t statcomp_matchRule(int a1, char **a2, _WORD *a3, char *__s, uint64_t a5, uint64_t a6, unsigned int *a7, uint64_t **a8, int *a9)
{
  v25 = 1;
  if (*(a5 + 8))
  {
    if (!a1)
    {
      goto LABEL_14;
    }

    if (*a8)
    {
      v16 = logSTATCOMPCONTEXT_TRule(a2, a3, __s, a5, *a8);
      if ((v16 & 0x80000000) != 0)
      {
        return v16;
      }
    }

    *__s = 2121504;
    v16 = statcomp_add2Str(*a5, a2, a3, __s);
    if ((v16 & 0x80000000) != 0)
    {
      return v16;
    }

    v17 = a8[1];
    if (v17)
    {
      v16 = logSTATCOMPCONTEXT_TRule(a2, a3, __s, a5, v17);
      if ((v16 & 0x80000000) != 0)
      {
        return v16;
      }
    }

    *__s = 2121504;
    v16 = statcomp_add2Str(*a5, a2, a3, __s);
    if ((v16 & 0x80000000) != 0)
    {
      return v16;
    }

    v18 = a8[2];
    if (v18)
    {
      matched = logSTATCOMPCONTEXT_TRule(a2, a3, __s, a5, v18);
      if ((matched & 0x80000000) != 0)
      {
        return matched;
      }
    }

    else
    {
LABEL_14:
      matched = 0;
    }

    log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "       <%s>", *a2);
    **a2 = 0;
  }

  else
  {
    matched = 0;
  }

  *a9 = 0;
  if (*a8)
  {
    matched = matchSTATCOMPCONTEXT_TRule("LEFT", a2, a3, __s, a5, a6, *a8, a7, &v25, &v24, 1);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    v20 = v25;
    if (v25 != 1)
    {
      goto LABEL_26;
    }
  }

  v21 = a8[1];
  if (v21)
  {
    v25 = 0;
    matched = matchSTATCOMPCONTEXT_TRule("CUR", a2, a3, __s, a5, a6, v21, a7, &v25, &v24, 0);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    v20 = v25;
    if (v25 != 1)
    {
LABEL_26:
      *a9 = v20;
      return matched;
    }
  }

  v22 = a8[2];
  if (!v22)
  {
    v20 = 1;
    goto LABEL_26;
  }

  v25 = 0;
  matched = matchSTATCOMPCONTEXT_TRule("RIGHT", a2, a3, __s, a5, a6, v22, a7, &v25, &v24, 2);
  if ((matched & 0x80000000) == 0)
  {
    v20 = v25;
    goto LABEL_26;
  }

  return matched;
}

uint64_t readRULEREGEXES(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t *a4)
{
  v8 = *(a2 + *a3);
  *(a4 + 4) = v8;
  *a3 += 2;
  v9 = heap_Calloc(*(a1 + 8), 1, (24 * v8) | 1);
  *a4 = v9;
  if (v9)
  {
    v10 = -1;
    v11 = 16;
    while (++v10 < *(a4 + 4))
    {
      v12 = *a4;
      v13 = *a4 + v11;
      result = readCONTEXT_0(a1, a2, a3, (v13 - 16));
      if ((result & 0x80000000) == 0)
      {
        result = readCONTEXT_0(a1, a2, a3, (v13 - 8));
        if ((result & 0x80000000) == 0)
        {
          result = readCONTEXT_0(a1, a2, a3, (v12 + v11));
          v11 += 24;
          if ((result & 0x80000000) == 0)
          {
            continue;
          }
        }
      }

      return result;
    }

    return 0;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
    return 2313166858;
  }
}

uint64_t readCONTEXT_0(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t *a4)
{
  v4 = *a3;
  v5 = *(a2 + v4);
  *a3 = v4 + 2;
  if (!v5)
  {
    return 0;
  }

  v10 = heap_Calloc(*(a1 + 8), 1, 17);
  if (!v10)
  {
    v19 = 2313166858;
LABEL_11:
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
    return v19;
  }

  v11 = v10;
  *(v10 + 8) = v5;
  v12 = heap_Calloc(*(a1 + 8), 1, (6 * v5) | 1);
  *v11 = v12;
  if (!v12)
  {
    v19 = 2313166858;
    heap_Free(*(a1 + 8), v11);
    goto LABEL_11;
  }

  if (*(v11 + 8))
  {
    v13 = 0;
    v14 = 0;
    v15 = *a3;
    do
    {
      *(v12 + v13) = *(a2 + v15);
      v16 = *a3 + 2;
      *a3 = v16;
      *(*v11 + v13 + 2) = *(a2 + v16);
      v17 = *a3;
      v18 = *a3 + 2;
      *a3 = v18;
      LOBYTE(v18) = *(a2 + v18);
      v15 = v17 + 4;
      *a3 = v15;
      v12 = *v11;
      *(*v11 + v13 + 4) = v18;
      ++v14;
      v13 += 6;
    }

    while (v14 < *(v11 + 8));
  }

  v19 = 0;
  *a4 = v11;
  return v19;
}

uint64_t setIgtreeFVLookups(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v6 = *(*(a1 + 160) + 8 * a3);
  v7 = heap_Calloc(*(*a1 + 8), 1, 12 * *(v6 + 1296) - 11);
  *a2 = v7;
  if (!v7)
  {
    log_OutPublic(*(*a1 + 32), "FE_POS", 35000, 0);
    return 2313166858;
  }

  if (*(v6 + 1296) < 2u)
  {
    return 0;
  }

  v8 = v7;
  v9 = 0;
  v17 = 0;
  while (1)
  {
    v10 = *(*(v6 + 1312) + 8 * v9);
    if (*v10 == 78)
    {
      if (v10[1] == 49 && v10[2] == 95)
      {
        v11 = 1;
        goto LABEL_34;
      }

      if (v10[1] == 50 && v10[2] == 95)
      {
        v11 = 2;
        goto LABEL_34;
      }

      if (v10[1] == 51 && v10[2] == 95)
      {
        v11 = 3;
        goto LABEL_34;
      }

      if (v10[1] == 52 && v10[2] == 95)
      {
        v11 = 4;
        goto LABEL_34;
      }

      if (v10[1] == 53 && v10[2] == 95)
      {
        v11 = 5;
        goto LABEL_34;
      }

      if (v10[1] == 54 && v10[2] == 95)
      {
        v11 = 6;
        goto LABEL_34;
      }

      if (v10[1] == 55 && v10[2] == 95)
      {
        v11 = 7;
        goto LABEL_34;
      }

      if (v10[1] == 56 && v10[2] == 95)
      {
        v11 = 8;
        goto LABEL_34;
      }

      if (v10[1] == 57 && v10[2] == 95)
      {
        v11 = 9;
        goto LABEL_34;
      }
    }

    if (strncmp(*(*(v6 + 1312) + 8 * v9), "N10_", 4uLL))
    {
      goto LABEL_35;
    }

    v11 = 10;
LABEL_34:
    *(v8 + 12 * v9) = v11;
LABEL_35:
    if (statcomp_isDynamicFeature(v10, &v17 + 1) != 1)
    {
      break;
    }

    v8 = *a2;
    *(*a2 + 12 * v9 + 4) = 0;
LABEL_42:
    *(v8 + 12 * v9++ + 8) = HIWORD(v17);
    if (*(v6 + 1296) - 1 <= v9)
    {
      return 0;
    }
  }

  if (statcomp_isDctFeature(*(*(v6 + 1312) + 8 * v9), &v17 + 1, *(*(a1 + 168) + 8 * a3)) == 1)
  {
    v8 = *a2;
    *(*a2 + 12 * v9 + 4) = 1;
    goto LABEL_42;
  }

  if (statcomp_isDctMappedFeature(*(*(v6 + 1312) + 8 * v9), &v17, (a1 + 120)) != 1)
  {
    v12 = 2313166848;
    v13 = *(*a1 + 32);
    v14 = *(*(v6 + 1312) + 8 * v9);
    v15 = "featurename";
    goto LABEL_47;
  }

  *(*a2 + 12 * v9 + 4) = 2;
  if (statcomp_isDctFeature(*(*(a1 + 120) + 16 * v17), &v17 + 1, *(*(a1 + 168) + 8 * a3)) == 1)
  {
    v8 = *a2;
    goto LABEL_42;
  }

  v12 = 2313166848;
  v13 = *(*a1 + 32);
  v14 = *(*(v6 + 1312) + 8 * v9);
  v15 = "featurename (mapped)";
LABEL_47:
  log_OutPublic(v13, "FE_POS", 35006, "%s%s", v15, v14);
  return v12;
}

uint64_t statpos_igtrees_getBrkStrs(uint64_t a1, char *a2, char *a3, unint64_t a4)
{
  *v9 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v9);
  if ((result & 0x80000000) == 0)
  {
    result = brokeraux_ComposeBrokerString(a1, "OOVigtree", 1, 1, *v9, 0, 0, a2, a4);
    if ((result & 0x80000000) == 0)
    {
      return brokeraux_ComposeBrokerString(a1, "KNOWNigtree", 1, 1, *v9, 0, 0, a3, a4);
    }
  }

  return result;
}

uint64_t statpos_igtrees_load(_WORD *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  *v16 = 0;
  BrkStrs = statpos_igtrees_getBrkStrs(a3, v18, v17, 0x100uLL);
  if ((BrkStrs & 0x80000000) != 0)
  {
    return BrkStrs;
  }

  *a5 = 0;
  v11 = heap_Calloc(*(a3 + 8), 1, 536);
  if (!v11)
  {
    v14 = 2313166858;
    log_OutPublic(*(a3 + 32), "FE_POS", 35000, 0);
    return v14;
  }

  v12 = v11;
  strcpy((v11 + 24), a4);
  if ((ssftriff_reader_ObjOpen(a1, a2, 2, v17, "IGTR", 1031, v16) & 0x80000000) != 0)
  {
    *(v12 + 8) = 0;
    log_OutPublic(*(a3 + 32), "FE_POS", 63000, "%s%x", "treename:", v17);
    return 2313166848;
  }

  v13 = heap_Calloc(*(a3 + 8), 1, 1600);
  *(v12 + 8) = v13;
  if (!v13)
  {
    goto LABEL_15;
  }

  BrkStrs = igtree_Init(a1, a2, *v16, v13);
  if ((BrkStrs & 0x80000000) != 0)
  {
    return BrkStrs;
  }

  BrkStrs = ssftriff_reader_ObjClose(*v16);
  if ((BrkStrs & 0x80000000) != 0)
  {
    return BrkStrs;
  }

  if ((ssftriff_reader_ObjOpen(a1, a2, 2, v18, "IGTR", 1031, v16) & 0x80000000) == 0)
  {
    v13 = heap_Calloc(*(a3 + 8), 1, 1600);
    *v12 = v13;
    if (v13)
    {
      BrkStrs = igtree_Init(a1, a2, *v16, v13);
      if ((BrkStrs & 0x80000000) == 0)
      {
        v14 = ssftriff_reader_ObjClose(*v16);
        if ((v14 & 0x80000000) != 0)
        {
          return v14;
        }

        goto LABEL_18;
      }

      return BrkStrs;
    }

LABEL_15:
    v14 = 2313166858;
    log_OutPublic(*(a3 + 32), "FE_POS", 35000, v13);
    return v14;
  }

  v14 = 0;
  *v12 = 0;
  *(v12 + 16) = 1;
LABEL_18:
  if (*(v12 + 8) || *v12)
  {
    *(v12 + 20) = 1;
  }

  *a5 = v12;
  return v14;
}

uint64_t statpos_igtrees_ObjcClose(_WORD *a1, int a2, uint64_t a3)
{
  v5 = 0;
  result = InitRsrcFunction(a1, a2, &v5);
  if ((result & 0x80000000) == 0)
  {
    return statpos_igtrees_unload(v5, *(a3 + 32));
  }

  return result;
}

uint64_t statpos_igtrees_unload(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (v4)
  {
    v5 = igtree_Deinit(a1, v4);
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    heap_Free(*(a1 + 8), *a2);
    *a2 = 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = a2[1];
  if (!v6)
  {
LABEL_8:
    heap_Free(*(a1 + 8), a2);
    return v5;
  }

  v5 = igtree_Deinit(a1, v6);
  if ((v5 & 0x80000000) == 0)
  {
    heap_Free(*(a1 + 8), a2[1]);
    a2[1] = 0;
    goto LABEL_8;
  }

  return v5;
}

uint64_t statpos_igtrees_ObjcLoad(_WORD *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v12 = 0;
  result = InitRsrcFunction(a1, a2, &v12);
  if ((result & 0x80000000) == 0)
  {
    memcpy(v11, v12, sizeof(v11));
    *&v11[32] = *(a5 + 32);
    return statpos_igtrees_load(a1, a2, v11, a3, (a4 + 32));
  }

  return result;
}

uint64_t statpos_igtrees_label(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v34 = 0;
  v35 = 0;
  __s = 0;
  v8 = *(a4[1] + 1296) - 1;
  if (!*(a4 + 4) && *(*a4 + 1296) - 1 > v8)
  {
    v8 = *(*a4 + 1296) - 1;
  }

  HIDWORD(v35) = 0;
  v9 = statpos_fv_new(a1, v8, &v34);
  if ((v9 & 0x80000000) != 0)
  {
    inited = v9;
LABEL_44:
    crf_mde_seg_fv_dealloc(a1, &v34);
    return inited;
  }

  v10 = heap_Calloc(*(a1 + 8), 1, 8 * v8);
  if (!v10)
  {
    inited = 2313166858;
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
    goto LABEL_44;
  }

  v11 = v10;
  inited = initFeatureVector(a1, v10, v8);
  if ((inited & 0x80000000) == 0 && *(a3 + 4))
  {
    v13 = 0;
    v14 = 72;
    do
    {
      if (*(a2 + 188) == 1)
      {
        if (*(a4 + 4) == 1 || !*(*a3 + v14 - 64))
        {
          features = statpos_get_features(a1, a3, a2, v13, *(a4[1] + 1312), (*(a4[1] + 1296) - 1), &v34, a4[1]);
          if ((features & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          features = statpos_get_features_for_igtree(a1, v11, &v34);
          if ((features & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          v16 = a4[1];
        }

        else
        {
          features = statpos_get_features(a1, a3, a2, v13, *(*a4 + 1312), (*(*a4 + 1296) - 1), &v34, *a4);
          if ((features & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          features = statpos_get_features_for_igtree(a1, v11, &v34);
          if ((features & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          v16 = *a4;
        }

        inited = igtree_Process(v16, v11, &__s);
        if ((inited & 0x80000000) != 0)
        {
          break;
        }

        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Disambiguate OOV Word[%d] %s %s -> %s", v13, **(*a3 + v14 - 24), *(*a3 + v14 + 8), __s);
        v24 = strlen(__s);
        v25 = heap_Calloc(*(a1 + 8), 1, v24 + 1);
        *(*a3 + v14 + 16) = v25;
        if (!v25)
        {
LABEL_46:
          inited = 2313166858;
          log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
          break;
        }

        strcpy(v25, __s);
      }

      else
      {
        v17 = *a3;
        v18 = *(*a3 + v14 - 64);
        if (v18 == 1)
        {
          if (*(a4 + 4))
          {
LABEL_28:
            features = statpos_get_features(a1, a3, a2, v13, *(a4[1] + 1312), (*(a4[1] + 1296) - 1), &v34, a4[1]);
            if ((features & 0x80000000) != 0)
            {
              goto LABEL_45;
            }

            features = statpos_get_features_for_igtree(a1, v11, &v34);
            if ((features & 0x80000000) != 0)
            {
              goto LABEL_45;
            }

            features = igtree_Process(a4[1], v11, &__s);
            if ((features & 0x80000000) != 0)
            {
              goto LABEL_45;
            }

            log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Disambiguate Word[%d] %s %s -> %s", v13, **(*a3 + v14 - 24), *(*a3 + v14 + 8), __s);
            v26 = __s;
            v27 = checkPOSIsLegal(__s, v13, a3, a2);
            features = statpos_dumpFeatureVectorAndResult(a1, *(a3 + 25), a3 + 10, a3 + 48, "KNOWNWORD", **(*a3 + v14 - 24), a4[1], &v34, v26, v27, *(*(*a3 + v14 - 24) + 24), *(*a3 + v14 + 40));
          }

          else
          {
            features = statpos_get_features(a1, a3, a2, v13, *(*a4 + 1312), (*(*a4 + 1296) - 1), &v34, *a4);
            if ((features & 0x80000000) != 0 || (features = statpos_get_features_for_igtree(a1, v11, &v34), (features & 0x80000000) != 0) || (features = igtree_Process(*a4, v11, &__s), (features & 0x80000000) != 0))
            {
LABEL_45:
              inited = features;
              break;
            }

            log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Disambiguate OOV Word[%d] %s %s -> %s", v13, **(*a3 + v14 - 24), *(*a3 + v14 + 8), __s);
            v30 = __s;
            v31 = checkPOSIsLegal(__s, v13, a3, a2);
            features = statpos_dumpFeatureVectorAndResult(a1, *(a3 + 25), a3 + 10, a3 + 48, "OOVWORD", **(*a3 + v14 - 24), *a4, &v34, v30, v31, *(*(*a3 + v14 - 24) + 24), *(*a3 + v14 + 40));
          }

          if ((features & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          v28 = strlen(__s);
          v29 = heap_Calloc(*(a1 + 8), 1, v28 + 1);
          *(*a3 + v14 + 16) = v29;
          if (!v29)
          {
            goto LABEL_46;
          }

          strcpy(v29, __s);
          inited = statpos_fv_clear(&v34);
          if ((inited & 0x80000000) != 0)
          {
            break;
          }

          clearFeatureVector(v11, v8);
          goto LABEL_36;
        }

        if (v18 || *(v17 + v14) > 1u)
        {
          goto LABEL_28;
        }

        v19 = v17 + v14;
        v20 = *(v19 + 8);
        if (!v20)
        {
          log_OutPublic(*(a1 + 32), "FE_POS", 35008, "%s%s", "word=", **(v19 - 24));
          return 2313166848;
        }

        v21 = strlen(v20);
        v22 = heap_Calloc(*(a1 + 8), 1, v21 + 1);
        v23 = *a3 + v14;
        *(v23 + 16) = v22;
        if (!v22)
        {
          goto LABEL_46;
        }

        strcpy(v22, *(v23 + 8));
        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Skip disambiguation on Word[%d] %s %s", v13, **(*a3 + v14 - 24), *(*a3 + v14 + 8));
      }

LABEL_36:
      ++v13;
      v14 += 160;
    }

    while (v13 < *(a3 + 4));
  }

  crf_mde_seg_fv_dealloc(a1, &v34);
  freeFeatureVector(a1, v11, v8);
  heap_Free(*(a1 + 8), v11);
  return inited;
}