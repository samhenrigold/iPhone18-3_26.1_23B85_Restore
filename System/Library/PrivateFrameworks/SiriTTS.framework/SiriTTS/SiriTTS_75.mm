uint64_t be_adapt_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 503, 656);
  if ((result & 0x80000000) != 0)
  {
    return 2410684424;
  }

  if (a1)
  {
    globalbeadapt_DeInit_SpecialSymbolsFromPhonmap(a1);
    if (a1[1])
    {
      objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    }

    if (a1[4])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    }

    if (a1[7])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    }

    if (a1[10])
    {
      objc_ReleaseObject(*(*a1 + 48), "PHONMAP");
    }

    FreeFeatureMaps(a1);
    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t be_adapt_ObjReopen(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 503, 656);
  if ((result & 0x80000000) != 0)
  {
    return 2410684424;
  }

  if (a1)
  {
    FreeFeatureMaps(a1);

    return hlp_VoiceSetup_0(a1);
  }

  return result;
}

void *FreeFeatureMaps(void *result)
{
  v1 = result;
  v2 = result[59];
  if (v2)
  {
    v3 = *(result + 324);
    if (*(result + 324))
    {
      v4 = 0;
      do
      {
        v5 = v1[59];
        v6 = *(v5 + 8 * v4);
        if (v6)
        {
          ssftmap_ObjClose(v6);
          v5 = v1[59];
          v3 = *(v1 + 324);
        }

        *(v5 + 8 * v4++) = 0;
      }

      while (v4 < v3);
      v2 = v1[59];
    }

    result = heap_Free(*(*v1 + 8), v2);
    *(v1 + 324) = 0;
    v1[59] = 0;
  }

  v7 = v1[78];
  if (v7)
  {
    v8 = *(v1 + 481);
    if (*(v1 + 481))
    {
      v9 = 0;
      do
      {
        v10 = v1[78];
        v11 = *(v10 + 8 * v9);
        if (v11)
        {
          ssftmap_ObjClose(v11);
          v10 = v1[78];
          v8 = *(v1 + 481);
        }

        *(v10 + 8 * v9++) = 0;
      }

      while (v9 < v8);
      v7 = v1[78];
    }

    result = heap_Free(*(*v1 + 8), v7);
    *(v1 + 481) = 0;
    v1[78] = 0;
  }

  v12 = v1[80];
  if (v12)
  {
    result = heap_Free(*(*v1 + 8), v12);
    v1[80] = 0;
  }

  v13 = v1[81];
  if (v13)
  {
    result = heap_Free(*(*v1 + 8), v13);
    v1[81] = 0;
  }

  return result;
}

uint64_t be_adapt_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 503, 656);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2410684424;
  }
}

uint64_t be_adapt_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v49 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v28 = 2;
  if ((safeh_HandleCheck(a1, a2, 503, 656) & 0x80000000) != 0)
  {
    return 2410684424;
  }

  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v27 = 0;
  *a5 = 1;
  v9 = (*(*(a1 + 32) + 144))(*(a1 + 16), *(a1 + 24), a1 + 104);
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_101;
  }

  updated = (*(*(a1 + 8) + 104))(a3, a4, 1, 0, &v36 + 2);
  if ((updated & 0x80000000) == 0 && ((*(*(a1 + 8) + 184))(a3, a4, HIWORD(v36), 0, &v32) & 0x80000000) == 0 && v32 == 1)
  {
    updated = (*(*(a1 + 8) + 176))(a3, a4, HIWORD(v36), 0, &v37, &v36);
    if ((updated & 0x80000000) == 0 && v36 >= 2u)
    {
      updated = (*(*(a1 + 8) + 160))(a3, a4, HIWORD(v36), 2, 1, "", &v35);
      if ((updated & 0x80000000) != 0)
      {
        goto LABEL_102;
      }

      if (!*(a1 + 312) && !*(a1 + 320))
      {
LABEL_27:
        if (*(a1 + 640) && *(a1 + 648) && *(a1 + 80))
        {
          hlp_DifferentiatorLOO(a1, a3, a4, HIWORD(v36));
        }

        goto LABEL_102;
      }

      *(a1 + 268) = 0;
      strcpy(v47, "pre_be_adapt");
      v9 = globalbeadapt_SetupDepesInput(a1, a3, a4, HIWORD(v36), v47, 1);
      if ((v9 & 0x80000000) == 0)
      {
        if (((*(*(a1 + 32) + 80))(*(a1 + 16), *(a1 + 24), v47) & 0x80000000) != 0 || (v9 = (*(*(a1 + 32) + 128))(*(a1 + 16), *(a1 + 24), 0, &v34, &v33), (v9 & 0x80000000) == 0) && (v34[v33] = 0, v9 = globalbeadapt_DoPostprocessing(a1, v37, &v34, 0), (v9 & 0x80000000) == 0) && (v9 = (*(*(a1 + 8) + 320))(a3, a4, 0), (v9 & 0x80000000) == 0) && (log_OutText(*(*a1 + 32), "BE_ADAPT", 5, 0, "%s O1: %s", v47, v34), v9 = globalbeadapt_OutputToLingDB(a1, a3, a4, HIWORD(v36), v37, v34), (v9 & 0x80000000) == 0))
        {
          com_depes_FreeLayers(*a1, a1 + 96);
          if (*(a1 + 312) && !*(a1 + 636))
          {
            v9 = (*(*(a1 + 8) + 104))(a3, a4, 2, HIWORD(v36), &v31);
            if ((v9 & 0x80000000) != 0)
            {
              goto LABEL_101;
            }

            while (v31)
            {
              updated = (*(*(a1 + 8) + 168))(a3, a4);
              if ((updated & 0x80000000) != 0)
              {
                goto LABEL_102;
              }

              if (v30 <= 0xA && ((1 << v30) & 0x610) != 0)
              {
                v26 = 0;
                v12 = *(a1 + 633);
                if (*(a1 + 633))
                {
                  while (1)
                  {
                    v13 = v31;
                    v41 = v31;
                    v40 = 0;
                    v38 = 0;
                    v39 = 0;
                    v9 = (*(*(a1 + 8) + 168))(a3, a4, v31, 1, 1, &v40, &v39);
                    if ((v9 & 0x80000000) != 0)
                    {
                      goto LABEL_101;
                    }

                    updated = (*(*(a1 + 8) + 168))(a3, a4, v13, 2, 1, &v39 + 2, &v39);
                    if ((updated & 0x80000000) != 0)
                    {
                      goto LABEL_102;
                    }

                    if (HIWORD(v39) - v40 < 256)
                    {
                      __strncpy_chk();
                      v15 = HIWORD(v39);
                      v16 = v40;
                      __s[HIWORD(v39) - v40] = 0;
                      v9 = (*(*(a1 + 56) + 112))(*(a1 + 40), *(a1 + 48), "normal", __s, (v15 - v16));
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_101;
                      }

                      v14 = 1;
                      if (v12 >= 2u && v13)
                      {
                        v17 = v13;
                        while (1)
                        {
                          v9 = (*(*(a1 + 8) + 120))(a3, a4, v17, &v41);
                          if ((v9 & 0x80000000) != 0)
                          {
                            goto LABEL_101;
                          }

                          if (v41)
                          {
                            v9 = (*(*(a1 + 8) + 168))(a3, a4);
                            if ((v9 & 0x80000000) != 0)
                            {
                              goto LABEL_101;
                            }

                            if (v38 - 11 < 5)
                            {
                              break;
                            }

                            if (v38 <= 0xA && ((1 << v38) & 0x610) != 0)
                            {
                              v9 = (*(*(a1 + 8) + 168))(a3, a4, v41, 1, 1, &v40, &v39);
                              if ((v9 & 0x80000000) != 0)
                              {
                                goto LABEL_101;
                              }

                              v9 = (*(*(a1 + 8) + 168))(a3, a4, v41, 2, 1, &v39 + 2, &v39);
                              if ((v9 & 0x80000000) != 0)
                              {
                                goto LABEL_101;
                              }

                              if (strlen(__s) + HIWORD(v39) - v40 - 255 < 0xFFFFFFFFFFFFFF00)
                              {
                                break;
                              }

                              __strncpy_chk();
                              v18 = HIWORD(v39);
                              v19 = v40;
                              v48[HIWORD(v39) - v40] = 0;
                              v9 = (*(*(a1 + 56) + 112))(*(a1 + 40), *(a1 + 48), "normal", v48, (v18 - v19));
                              if ((v9 & 0x80000000) != 0)
                              {
                                goto LABEL_101;
                              }

                              __strcat_chk();
                              __strcat_chk();
                              ++v14;
                            }
                          }

                          if (v14 < v12)
                          {
                            v17 = v41;
                            if (v41)
                            {
                              continue;
                            }
                          }

                          break;
                        }
                      }

                      v45 = v13;
                      v44 = 0;
                      v43 = 0;
                      v42 = 0;
                      updated = (*(*(a1 + 8) + 176))(a3, a4, v13, 3, &v43, &v44);
                      if ((updated & 0x80000000) != 0)
                      {
                        goto LABEL_102;
                      }

                      v20 = strlen(__s);
                      if (v20 + strlen(v43) - 255 >= 0xFFFFFFFFFFFFFF00)
                      {
                        __strcat_chk();
                        __strcat_chk();
                        if (v13 && v14 >= 2u)
                        {
                          v22 = 1;
                          while (1)
                          {
                            updated = (*(*(a1 + 8) + 120))(a3, a4, v13, &v45);
                            if ((updated & 0x80000000) != 0)
                            {
                              goto LABEL_102;
                            }

                            if (v45)
                            {
                              updated = (*(*(a1 + 8) + 168))(a3, a4);
                              if ((updated & 0x80000000) != 0)
                              {
                                goto LABEL_102;
                              }

                              if (v42 <= 0xA && ((1 << v42) & 0x610) != 0)
                              {
                                updated = (*(*(a1 + 8) + 176))(a3, a4, v45, 3, &v43, &v44);
                                if ((updated & 0x80000000) != 0)
                                {
                                  goto LABEL_102;
                                }

                                v24 = strlen(__s);
                                if (v24 + strlen(v43) - 255 < 0xFFFFFFFFFFFFFF00)
                                {
                                  goto LABEL_63;
                                }

                                ++v22;
                                __strcat_chk();
                                __strcat_chk();
                              }
                            }

                            if (v22 < v14)
                            {
                              LOWORD(v13) = v45;
                              if (v45)
                              {
                                continue;
                              }
                            }

                            break;
                          }
                        }
                      }

                      else
                      {
LABEL_63:
                        __s[0] = 0;
                      }
                    }

                    else
                    {
                      __s[0] = 0;
                      v14 = v12;
                    }

                    log_OutText(*(*a1 + 32), "BE_ADAPT", 5, 0, "voice lexicon key= %s", __s);
                    v21 = 0;
                    if (v14 == 1 && __s[0])
                    {
                      v28 = 2;
                      updated = (*(*(a1 + 56) + 152))(*(a1 + 40), *(a1 + 48), "adaptlex", __s, &v29, &v28, &v27, *(a1 + 480));
                      if ((updated & 0x80000000) != 0)
                      {
                        goto LABEL_102;
                      }

                      if (v28 == 1)
                      {
                        v26 = 1;
                        updated = hlp_UpdateLdb(a1, a3, a4, &v31, *v29, 1u, 0, &v26, v37);
                        if ((updated & 0x80000000) != 0)
                        {
                          goto LABEL_102;
                        }

                        v21 = v26;
                      }

                      else
                      {
                        v21 = 0;
                      }
                    }

                    if (__s[0])
                    {
                      if (!v21)
                      {
                        v21 = *(a1 + 316);
                        if (v21)
                        {
                          v28 = 2;
                          updated = (*(*(a1 + 56) + 152))(*(a1 + 40), *(a1 + 48), "adaptlexmw", __s, &v29, &v28, &v27, *(a1 + 632));
                          if ((updated & 0x80000000) != 0)
                          {
                            goto LABEL_102;
                          }

                          if (v28 == 1)
                          {
                            v26 = 1;
                            updated = hlp_UpdateLdb(a1, a3, a4, &v31, *v29, v14, 1, &v26, v37);
                            if ((updated & 0x80000000) != 0)
                            {
                              goto LABEL_102;
                            }

                            v21 = v26;
                          }

                          else
                          {
                            v21 = 0;
                          }
                        }
                      }
                    }

                    v12 = v14 - 1;
                    if (v14 == 1 || v21)
                    {
                      break;
                    }
                  }
                }
              }

              if (v31)
              {
                updated = (*(*(a1 + 8) + 120))(a3, a4);
              }

              if ((updated & 0x80000000) != 0)
              {
                goto LABEL_102;
              }
            }
          }

          strcpy(v47, "post_be_adapt");
          v9 = globalbeadapt_SetupDepesInput(a1, a3, a4, HIWORD(v36), v47, 0);
          if ((v9 & 0x80000000) == 0)
          {
            if (!*(a1 + 636))
            {
              (*(*(a1 + 32) + 80))(*(a1 + 16), *(a1 + 24), v47);
            }

            v9 = (*(*(a1 + 32) + 128))(*(a1 + 16), *(a1 + 24), 0, &v34, &v33);
            if ((v9 & 0x80000000) == 0)
            {
              v34[v33] = 0;
              log_OutText(*(*a1 + 32), "BE_ADAPT", 5, 0, "%s O1: %s", v47, v34);
              v9 = globalbeadapt_DoPostprocessing(a1, v37, &v34, 1);
              if ((v9 & 0x80000000) == 0)
              {
                v9 = (*(*(a1 + 8) + 320))(a3, a4, 1);
                if ((v9 & 0x80000000) == 0)
                {
                  v9 = globalbeadapt_OutputToLingDB(a1, a3, a4, HIWORD(v36), v37, v34);
                  if ((v9 & 0x80000000) == 0)
                  {
                    updated = (*(*(a1 + 8) + 272))(a3, a4, 4, 1, 0, 0);
                    if ((updated & 0x80000000) == 0)
                    {
                      goto LABEL_27;
                    }

LABEL_102:
                    com_depes_FreeLayers(*a1, a1 + 96);
                    return updated;
                  }
                }
              }
            }
          }
        }
      }

LABEL_101:
      updated = v9;
      goto LABEL_102;
    }
  }

  return updated;
}

uint64_t hlp_UpdateLdb(void *a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, char *a5, unsigned int a6, int a7, _DWORD *a8, uint64_t a9)
{
  v93 = *MEMORY[0x1E69E9840];
  v89 = 0;
  __s1 = 0;
  v88 = 0;
  v85 = 0;
  v86 = 0;
  v84 = 0;
  v83 = 0;
  ReadOnly = (*(a1[1] + 176))(a2, a3, *a4, 3, &v85, &v89);
  if ((ReadOnly & 0x80000000) != 0)
  {
    return ReadOnly;
  }

  v75 = a8;
  v77 = a6;
  v18 = 481;
  if (!a7)
  {
    v18 = 324;
  }

  v19 = 78;
  if (!a7)
  {
    v19 = 59;
  }

  v20 = a1[v19];
  v21 = *(a1 + v18);
  v90[0] = 0;
  v90[1] = 0;
  v91 = 0;
  strcpy(__s, "|");
  if (v21)
  {
    v22 = 0;
    v23 = 584;
    if (!a7)
    {
      v23 = 428;
    }

    v24 = a1 + v23;
    do
    {
      if (v22)
      {
        __strcat_chk();
        *(v90 + v22) = strlen(__s);
      }

      v25 = *&v24[4 * v22];
      if (v25 > 1)
      {
        if (v25 == 2)
        {
          v81 = 0;
          v80 = 0;
          v79 = 3;
          i = (*(a1[1] + 168))(a2, a3, *a4, 1, 1, &v80 + 2, &v89);
          if ((i & 0x80000000) != 0)
          {
            return i;
          }

          LOWORD(v80) = *a4;
          for (i = (*(a1[1] + 120))(a2, a3); ; i = (*(a1[1] + 120))(a2, a3))
          {
            if ((i & 0x80000000) != 0)
            {
              return i;
            }

            if (!v80 || v81 > HIWORD(v80))
            {
              break;
            }

            i = (*(a1[1] + 168))(a2, a3);
            if ((i & 0x80000000) != 0)
            {
              return i;
            }

            i = (*(a1[1] + 168))(a2, a3, v80, 1, 1, &v81, &v89);
            if ((i & 0x80000000) != 0)
            {
              return i;
            }

            if (v83 == 15)
            {
              i = (*(a1[1] + 168))(a2, a3, v80, 7, 1, &v79, &v89);
              if ((i & 0x80000000) != 0)
              {
                return i;
              }
            }
          }

          if (v80)
          {
            v28 = v79;
          }

          else
          {
            v28 = 0;
            v79 = 0;
          }

          LH_itoa(v28, &v82, 0xAu);
          ReadOnly = ssftmap_FindReadOnly(*(v20 + 8 * v22), &v82, &v86);
          goto LABEL_21;
        }

        if (v25 == 3)
        {
          i = (*(a1[1] + 176))(a2, a3, *a4, 9, &v88, &v89);
LABEL_19:
          if ((i & 0x80000000) != 0)
          {
            return i;
          }

          ReadOnly = ssftmap_FindReadOnly(*(v20 + 8 * v22), v88, &v86);
LABEL_21:
          __strcat_chk();
        }
      }

      else
      {
        if (!v25)
        {
          ReadOnly = (*(a1[1] + 176))(a2, a3, *a4, 14, &__s1, &v89);
          if ((ReadOnly & 0x80000000) != 0)
          {
            return ReadOnly;
          }

          if ((ssftmap_IteratorOpen(*(v20 + 8 * v22), 0, 0, &v84) & 0x80000000) == 0)
          {
            while ((ssftmap_IteratorNext(v84, &v88, &v86) & 0x80000000) == 0)
            {
              if (strstr(__s1, v88))
              {
                __strcat_chk();
              }
            }

            ssftmap_IteratorClose(v84);
          }

          goto LABEL_29;
        }

        if (v25 == 1)
        {
          i = (*(a1[1] + 176))(a2, a3, *a4, 13, &v88, &v89);
          goto LABEL_19;
        }
      }

LABEL_29:
      ++v22;
    }

    while (v22 != v21);
  }

  __strcat_chk();
  v29 = strstr(a5, __s);
  if (!v29 && v21)
  {
    v30 = v21 - 1;
    v31 = v21 - 1;
    do
    {
      __s[*(v90 + v30)] = 0;
      v29 = strstr(a5, __s);
      if (v29)
      {
        break;
      }

      --v30;
    }

    while (v31--);
  }

  if (!v29)
  {
    v29 = a5;
  }

  v33 = strchr(v29, 59);
  if (v33)
  {
    v34 = v33 + 1;
    v35 = strchr(v33 + 1, 124);
    if (v35)
    {
      *v35 = 0;
      v85 = v34;
      log_OutText(*(*a1 + 32), "BE_ADAPT", 5, 0, "adapted transcription= %s", v34);
    }
  }

  v36 = v85;
  v37 = *v85 != 0;
  v38 = 1;
  while (v85[v37] == 95)
  {
    ++v38;
LABEL_62:
    ++v37;
  }

  if (v85[v37])
  {
    goto LABEL_62;
  }

  if (v77 != 1)
  {
    if (v38 != 1)
    {
      if (v77 == v38)
      {
        v52 = strchr(v85, 95);
        v53 = v52;
        if (v52)
        {
          *v52 = 0;
          v36 = v85;
        }

        ReadOnly = hlp_AdjustWordRecord(a1, a2, a3, *a4, v36);
        if ((ReadOnly & 0x80000000) == 0)
        {
          if (v77)
          {
            v54 = *a4;
            if (*a4)
            {
              if (v53)
              {
                v55 = 1;
                while (1)
                {
                  ReadOnly = (*(a1[1] + 120))(a2, a3, v54, a4);
                  if ((ReadOnly & 0x80000000) != 0)
                  {
                    break;
                  }

                  if (*a4)
                  {
                    ReadOnly = (*(a1[1] + 168))(a2, a3);
                    if ((ReadOnly & 0x80000000) != 0)
                    {
                      return ReadOnly;
                    }

                    if (v83 <= 0xA && ((1 << v83) & 0x610) != 0)
                    {
                      v57 = v53 + 1;
                      v85 = v53 + 1;
                      v58 = strchr(v53 + 1, 95);
                      v53 = v58;
                      if (v58)
                      {
                        *v58 = 0;
                        v57 = v85;
                      }

                      ReadOnly = hlp_AdjustWordRecord(a1, a2, a3, *a4, v57);
                      if ((ReadOnly & 0x80000000) != 0)
                      {
                        return ReadOnly;
                      }

                      ++v55;
                    }
                  }

                  if (v77 > v55)
                  {
                    v54 = *a4;
                    if (*a4)
                    {
                      if (v53)
                      {
                        continue;
                      }
                    }
                  }

                  return ReadOnly;
                }
              }
            }
          }
        }
      }

      else
      {
        *v75 = 0;
      }

      return ReadOnly;
    }

    v40 = *a4;
    ReadOnly = (*(a1[1] + 176))(a2, a3, v40, 14, &__s1, &v89);
    if ((ReadOnly & 0x80000000) != 0)
    {
      return ReadOnly;
    }

    v41 = __s1;
    if (!strstr(__s1, "E_") && !strstr(v41, "e_"))
    {
      if (v77)
      {
        v42 = 1;
        v43 = 1;
        while (*a4)
        {
          i = (*(a1[1] + 120))(a2, a3);
          if ((i & 0x80000000) != 0)
          {
            return i;
          }

          if (*a4)
          {
            i = (*(a1[1] + 168))(a2, a3);
            if ((i & 0x80000000) != 0)
            {
              return i;
            }

            if (v83 <= 0xA && ((1 << v83) & 0x610) != 0)
            {
              ReadOnly = (*(a1[1] + 176))(a2, a3, *a4, 14, &__s1, &v89);
              if ((ReadOnly & 0x80000000) != 0)
              {
                return ReadOnly;
              }

              v44 = __s1;
              if (v77 - 1 != v42 && (strstr(__s1, "E_") || strstr(v44, "e_")) || strstr(v44, "S_") || strstr(v44, "s_") || strstr(v44, "B-"))
              {
                *a4 = v40;
                goto LABEL_155;
              }

              ++v43;
            }
          }

          v42 = v43;
          if (v43 >= v77)
          {
            break;
          }
        }
      }

      ReadOnly = hlp_AdjustWordRecord(a1, a2, a3, v40, v85);
      if ((ReadOnly & 0x80000000) == 0)
      {
        *a4 = v40;
        if (v77)
        {
          if (v40)
          {
            v45 = 1;
            v46 = v40;
            do
            {
              ReadOnly = (*(a1[1] + 120))(a2, a3, v46, a4);
              if ((ReadOnly & 0x80000000) != 0)
              {
                break;
              }

              if (*a4)
              {
                ReadOnly = (*(a1[1] + 168))(a2, a3);
                if ((ReadOnly & 0x80000000) != 0)
                {
                  return ReadOnly;
                }

                if (v83 <= 0xA && ((1 << v83) & 0x610) != 0)
                {
                  ReadOnly = hlp_DeleteWordRecord(a1, a2, a3, a4, v40, a9);
                  if ((ReadOnly & 0x80000000) != 0)
                  {
                    return ReadOnly;
                  }

                  ++v45;
                }
              }

              if (v77 <= v45)
              {
                break;
              }

              v46 = *a4;
            }

            while (*a4);
          }
        }
      }

      return ReadOnly;
    }

    goto LABEL_155;
  }

  v39 = v38 - 1;
  if (v38 == 1)
  {
    return hlp_AdjustWordRecord(a1, a2, a3, *a4, v85);
  }

  v82 = 0;
  HIWORD(v80) = 0;
  v48 = *a4;
  i = (*(a1[1] + 168))(a2, a3, *a4, 1, 1, &v82, &v89);
  if ((i & 0x80000000) != 0)
  {
    return i;
  }

  ReadOnly = (*(a1[1] + 168))(a2, a3, *a4, 2, 1, &v80 + 2, &v89);
  if ((ReadOnly & 0x80000000) == 0)
  {
    if (v82 >= HIWORD(v80))
    {
      v49 = 0;
    }

    else
    {
      v49 = 0;
      v50 = (a9 + v82);
      do
      {
        v51 = *v50++;
        if (v51 == 45)
        {
          ++v49;
        }
      }

      while (v50 < a9 + HIWORD(v80));
    }

    if (v39 == v49)
    {
      v59 = v85;
      v60 = strchr(v85, 95);
      v61 = v60;
      if (v60)
      {
        *v60 = 0;
        v59 = v85;
      }

      i = hlp_AdjustWordRecord(a1, a2, a3, *a4, v59);
      if ((i & 0x80000000) != 0)
      {
        return i;
      }

      v62 = v82;
      v63 = strchr((a9 + v82), 45);
      if (v63)
      {
        *v63 = 32;
        v78 = v63 - a9 + 1;
        v62 = v82;
      }

      else
      {
        v78 = 0;
      }

      v81 = v62;
      v64 = *a4;
      if (*a4)
      {
        v65 = *a4;
        do
        {
          v48 = v65;
          i = (*(a1[1] + 120))(a2, a3, v65, a4);
          if ((i & 0x80000000) != 0)
          {
            return i;
          }

          if (!*a4)
          {
            break;
          }

          i = (*(a1[1] + 168))(a2, a3);
          if ((i & 0x80000000) != 0)
          {
            return i;
          }

          v65 = *a4;
        }

        while (*a4 && v81 == v82);
      }

      i = (*(a1[1] + 80))(a2, a3, v48, a4);
      if ((i & 0x80000000) != 0)
      {
        return i;
      }

      i = hlp_CopyWordRec_0(a1, a2, a3, v64, *a4, v78);
      if ((i & 0x80000000) != 0)
      {
        return i;
      }

      if (v61)
      {
        v66 = v61 + 1;
        v85 = v66;
      }

      else
      {
        v66 = v85;
      }

      v67 = strchr(v66, 95);
      if (v67)
      {
        *v67 = 0;
        v66 = v85;
      }

      v76 = v67;
      ReadOnly = hlp_AdjustWordRecord(a1, a2, a3, *a4, v66);
      if ((ReadOnly & 0x80000000) == 0)
      {
        v68 = v78;
        v82 = v78;
        if (v49 >= 2u)
        {
          v69 = 1;
          while (1)
          {
            v70 = strchr((a9 + v68), 45);
            if (v70)
            {
              *v70 = 32;
              v68 = v70 - a9 + 1;
            }

            v71 = *a4;
            i = (*(a1[1] + 80))(a2, a3, v71, a4);
            if ((i & 0x80000000) != 0)
            {
              break;
            }

            i = hlp_CopyWordRec_0(a1, a2, a3, v71, *a4, v68);
            if ((i & 0x80000000) != 0)
            {
              break;
            }

            if (v76)
            {
              v72 = v76 + 1;
              v85 = v76 + 1;
            }

            else
            {
              v72 = v85;
            }

            v73 = strchr(v72, 95);
            if (v73)
            {
              *v73 = 0;
              v72 = v85;
            }

            v76 = v73;
            ReadOnly = hlp_AdjustWordRecord(a1, a2, a3, *a4, v72);
            if ((ReadOnly & 0x80000000) == 0)
            {
              v82 = v68;
              if (++v69 < v49)
              {
                continue;
              }
            }

            return ReadOnly;
          }

          return i;
        }
      }

      return ReadOnly;
    }

LABEL_155:
    *v75 = 0;
  }

  return ReadOnly;
}

uint64_t hlp_DifferentiatorLOO(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v48 = *MEMORY[0x1E69E9840];
  v43 = 0;
  __s = 0;
  *__s2 = 0;
  v41 = 0;
  v40 = 0;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v45 = 0;
  memset(v47, 0, 512);
  while (1)
  {
    v9 = off_1E81AD208[v8];
    if ((objc_GetObject(*(*a1 + 48), v9, &v45) & 0x80000000) == 0)
    {
      break;
    }

    if (++v8 == 3)
    {
      v10 = 1;
      goto LABEL_9;
    }
  }

  v11 = v45;
  if (v45 && (NullHandle = safeh_GetNullHandle(), !safeh_HandlesEqual(v11[2], v11[3], NullHandle, v13)) && (v33 = v45[1]) != 0 && (v34 = *(v33 + 120)) != 0 && (v34(v45[2], v45[3], v47) & 0x80000000) == 0)
  {
    __strcpy_chk();
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  objc_ReleaseObject(*(*a1 + 48), v9);
LABEL_9:
  result = (*(a1[1] + 104))(a2, a3, 2, a4, &v38 + 2);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetUInt(*(*a1 + 40), "disableloodifferentiator", &v37);
    v15 = result >= 0 && v37 == 1;
    v16 = !v15;
    v17 = HIWORD(v38);
    if (HIWORD(v38))
    {
      v35 = v16;
      v36 = v10;
      v18 = 0;
      do
      {
        result = (*(a1[1] + 168))(a2, a3, v17, 0, 1, &v37 + 4, &v39 + 2);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        if (HIDWORD(v37) <= 0xA && ((1 << SBYTE4(v37)) & 0x610) != 0)
        {
          LOWORD(v38) = 0;
          result = (*(a1[1] + 184))(a2, a3, HIWORD(v38), 12, &v38);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (v38 == 1)
          {
            result = (*(a1[1] + 176))(a2, a3, HIWORD(v38), 12, &__s, &v39 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            v20 = a1[80];
            if (v20)
            {
              v21 = __s;
              v22 = a1[81];
              v23 = strlen(__s);
              do
              {
                v24 = *v22;
                if (!*v22)
                {
                  break;
                }

                if (!strncmp(v21, v20, v23))
                {
                  if ((v36 & 1) == 0 && !strchr(v46, v24))
                  {
                    break;
                  }

                  v41 = v24;
                  if (!v35)
                  {
                    goto LABEL_32;
                  }

                  result = (*(a1[1] + 176))(a2, a3, HIWORD(v38), 3, &v43, &v39 + 2);
                  if ((result & 0x80000000) == 0)
                  {
                    v26 = (2 * (strlen(v43) & 0x7FFF)) | 1;
                    v27 = heap_Realloc(*(*a1 + 8), v18, v26);
                    if (!v27)
                    {
                      result = log_OutPublic(*(*a1 + 32), "BE_ADAPT", 64000, 0);
                      goto LABEL_56;
                    }

                    v18 = v27;
                    bzero(v27, v26);
                    v40 = 0;
                    v28 = v43;
                    if (*v43)
                    {
                      v29 = 0;
                      v30 = 0;
                      v31 = 1;
                      do
                      {
                        __s2[0] = v28[v29];
                        strcat(v18, __s2);
                        if (__s2[0] == 92)
                        {
                          v31 = !v31;
                        }

                        else if (v31)
                        {
                          v31 = 1;
                          if (((*(a1[10] + 64))(a1[8], a1[9], 0, __s2, &v40, 0) & 0x80000000) == 0)
                          {
                            if (v40)
                            {
                              v31 = 1;
                              strncat(v18, &v41, 1uLL);
                            }
                          }
                        }

                        v29 = ++v30;
                        v28 = v43;
                      }

                      while (strlen(v43) > v30);
                    }

                    v32 = strlen(v18);
                    result = (*(a1[1] + 160))(a2, a3, HIWORD(v38), 3, (v32 + 1), v18, &v39);
                    if ((result & 0x80000000) == 0)
                    {
                      goto LABEL_32;
                    }
                  }

                  goto LABEL_56;
                }

                v25 = strchr(v20, 44);
                v20 = v25 + 1;
                ++v22;
              }

              while (v25);
            }

            v41 = 0;
          }
        }

LABEL_32:
        result = (*(a1[1] + 120))(a2, a3, HIWORD(v38), &v38 + 2);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        v17 = HIWORD(v38);
      }

      while (HIWORD(v38));
LABEL_56:
      if (v18)
      {
        return heap_Free(*(*a1 + 8), v18);
      }
    }
  }

  return result;
}

uint64_t be_adapt_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 503, 656);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2410684424;
  }
}

uint64_t be_adapt_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2410684417;
  }

  result = 0;
  *a2 = &IFeBeadapt;
  return result;
}

uint64_t hlp_AdjustWordRecord(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *__s)
{
  __sa = 0;
  v21 = 0;
  v16 = 0;
  v17 = 0;
  v10 = !strchr(__s, 39) && !strchr(__s, 34);
  v18 = 0;
  v19 = 0;
  result = (*(a1[1] + 176))(a2, a3, a4, 3, &__sa, &v19 + 2);
  if ((result & 0x80000000) == 0)
  {
    v12 = __sa;
    v13 = strchr(__sa, 39) || strchr(v12, 34);
    result = (*(a1[1] + 176))(a2, a3, a4, 13, &v21, &v19 + 2);
    if ((result & 0x80000000) == 0)
    {
      if (v10 || v13 || *v21 != 48 || v21[1])
      {
        if (!v10 || *v21 == 48 && !v21[1])
        {
LABEL_20:
          v14 = strlen(__s);
          result = (*(a1[1] + 160))(a2, a3, a4, 3, (v14 + 1), __s, &v19);
          if ((result & 0x80000000) == 0)
          {
            result = (*(a1[1] + 168))(a2, a3, a4, 0, 1, &v18, &v19 + 2);
            if ((result & 0x80000000) == 0 && v18 == 10)
            {
              result = (*(a1[1] + 176))(a2, a3, a4, 9, &v17, &v19 + 2);
              if ((result & 0x80000000) == 0)
              {
                if (v17 && *v17 || (result = paramc_ParamGetStr(*(*a1 + 40), "langcode", &v16), (result & 0x80000000) == 0) && (!v16 || (v15 = strlen(v16), result = (*(a1[1] + 160))(a2, a3, a4, 9, (v15 + 1), v16, &v19), (result & 0x80000000) == 0)))
                {
                  v18 = 4;
                  return (*(a1[1] + 160))(a2, a3, a4, 0, 4, &v18, &v19);
                }
              }
            }
          }

          return result;
        }

        result = (*(a1[1] + 160))(a2, a3, a4, 13, 2, "0", &v19);
      }

      else
      {
        result = (*(a1[1] + 160))(a2, a3, a4, 13, 2, "1", &v19);
      }

      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t hlp_CopyWordRec_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  v11 = 0;
  v12 = 0;
  v47 = a6;
  v46 = 0;
  v45 = 0;
  __s1 = 0;
  v43 = 0;
  do
  {
    v13 = (*(a1[1] + 184))(a2, a3, a4, v12, &v46);
    if ((v13 & 0x80000000) != 0)
    {
      break;
    }

    if (v46)
    {
      if (v12 <= 0x11u && ((1 << v12) & 0x20186) != 0)
      {
        v14 = (*(a1[1] + 168))(a2, a3, a4, v12, 1, &v45, &v43 + 2);
        if ((v14 & 0x80000000) != 0)
        {
          goto LABEL_48;
        }

        v15 = *(a1[1] + 160);
        if (v12 == 1)
        {
          v16 = a2;
          v17 = a3;
          v18 = a5;
          v19 = 1;
LABEL_12:
          v20 = v15(v16, v17, v18, v19, 1, &v47, &v43);
          goto LABEL_13;
        }

        v13 = v15(a2, a3, a5, v12, 1, &v45, &v43);
        if ((v13 & 0x80000000) != 0)
        {
          break;
        }

        if (v12 == 2)
        {
          --v47;
          v15 = *(a1[1] + 160);
          v16 = a2;
          v17 = a3;
          v18 = a4;
          v19 = 2;
          goto LABEL_12;
        }
      }

      else
      {
        v14 = (*(a1[1] + 176))(a2, a3, a4);
        if ((v14 & 0x80000000) != 0)
        {
LABEL_48:
          v13 = v14;
          break;
        }

        if (v12 != 14)
        {
          v41 = (strlen(__s1) + 1);
          v20 = (*(a1[1] + 160))(a2, a3, a5, v12, v41, __s1, &v43);
LABEL_13:
          v13 = v20;
          if ((v20 & 0x80000000) != 0)
          {
            break;
          }

          goto LABEL_14;
        }

        v22 = __s1;
        v23 = strstr(__s1, "e_");
        if (v23)
        {
          do
          {
            *v23 = 69;
            v23 = strstr(v23 + 1, "e_");
          }

          while (v23);
          v22 = __s1;
        }

        v24 = strstr(v22, "s_");
        if (v24)
        {
          do
          {
            *v24 = 83;
            v24 = strstr(v24 + 1, "s_");
          }

          while (v24);
          v22 = __s1;
        }

        v25 = a5;
        v26 = strlen(v22);
        v27 = heap_Alloc(*(*a1 + 8), (v26 + 1));
        if (!v27)
        {
          log_OutPublic(*(*a1 + 32), "BE_ADAPT", 64000, 0);
          return 2410684426;
        }

        v11 = v27;
        strcpy(v27, __s1);
        v28 = strstr(__s1, "E_");
        if (v28)
        {
          v29 = v28;
          do
          {
            *v29 = 83;
            v30 = strchr(v29, 59);
            if (v30)
            {
              v31 = v30;
              *v30 = 0;
              if (strstr(v11, v29))
              {
                v32 = strlen(v31 + 1);
                memmove(v29, v31 + 1, v32 + 1);
              }

              else
              {
                *v29 = 73;
                *v31 = 59;
              }
            }

            else if (strstr(v11, v29))
            {
              *v29 = 0;
            }

            else
            {
              *v29 = 73;
            }

            v29 = strstr(v29 + 1, "E_");
          }

          while (v29);
        }

        v33 = strstr(v11, "S_");
        if (v33)
        {
          v34 = v33;
          do
          {
            *v34 = 69;
            v35 = strchr(v34, 59);
            if (v35)
            {
              v36 = v35;
              *v35 = 0;
              v37 = v35 + 1;
              if (strstr(v35 + 1, v34))
              {
                v38 = strlen(v37);
                memmove(v34, v37, v38 + 1);
              }

              else
              {
                *v34 = 73;
                *v36 = 59;
              }
            }

            else
            {
              *v34 = 73;
            }

            v34 = strstr(v34 + 1, "S_");
          }

          while (v34);
        }

        for (i = strstr(v11, "PHR:B-"); i; i = strstr(i + 1, "PHR:B-"))
        {
          i[4] = 73;
        }

        v40 = strlen(v11);
        a5 = v25;
        v13 = (*(a1[1] + 160))(a2, a3, v25, 14, (v40 + 1), v11, &v43);
        if ((v13 & 0x80000000) != 0)
        {
          break;
        }
      }
    }

LABEL_14:
    v21 = v12++;
  }

  while (v21 < 0x15);
  if (v11)
  {
    heap_Free(*(*a1 + 8), v11);
  }

  return v13;
}

uint64_t hlp_DeleteWordRecord(void *a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t a6)
{
  __s = 0;
  v29 = 0;
  v27 = 0;
  v26 = 0;
  v12 = (*(a1[1] + 168))(a2, a3, a5, 2, 1, &v26, &v27 + 2);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  *(a6 + v26) = 45;
  v12 = (*(a1[1] + 168))(a2, a3, *a4, 2, 1, &v26, &v27 + 2);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v12 = (*(a1[1] + 160))(a2, a3, a5, 2, 1, &v26, &v27);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v12 = (*(a1[1] + 176))(a2, a3, *a4, 14, &v29, &v27 + 2);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v13 = (*(a1[1] + 176))(a2, a3, a5, 14, &__s, &v27 + 2);
  if ((v13 & 0x80000000) == 0)
  {
    v14 = v29;
    if (v29)
    {
      v15 = 0;
      do
      {
        if ((*v14 | 0x20) == 0x65 && v14[1] == 95)
        {
          LODWORD(v16) = hlp_NLUStrLength(v14);
          v17 = *(*a1 + 8);
          if (v15)
          {
            v18 = strlen(v15);
            v19 = heap_Realloc(v17, v15, (v16 + v18 + 2));
            if (!v19)
            {
              v13 = 2410684426;
              log_OutPublic(*(*a1 + 32), "BE_ADAPT", 64000, 0);
              goto LABEL_27;
            }

            v16 = v16;
            v15 = v19;
          }

          else
          {
            v20 = strlen(__s);
            v21 = heap_Alloc(v17, (v16 + v20 + 2));
            if (!v21)
            {
              v13 = 2410684426;
              log_OutPublic(*(*a1 + 32), "BE_ADAPT", 64000, 0);
              return v13;
            }

            v15 = v21;
            v16 = v16;
            strcpy(v21, __s);
          }

          v22 = v29[v16];
          v29[v16] = 0;
          hlp_NLUStrJoin(v15, v29);
          v29[v16] = v22;
          v14 = v29;
        }

        v14 = hlp_NLUStrNext(v14);
        v29 = v14;
      }

      while (v14);
      v23 = v15 == 0;
      if (v15)
      {
        v24 = strlen(v15);
        v13 = (*(a1[1] + 160))(a2, a3, a5, 14, (v24 + 1), v15, &v27);
      }

      if ((v13 & 0x80000000) != 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v15 = 0;
      v23 = 1;
    }

    v13 = (*(a1[1] + 192))(a2, a3, *a4);
    if ((v13 & 0x80000000) == 0)
    {
      *a4 = a5;
    }

LABEL_26:
    if (!v23)
    {
LABEL_27:
      heap_Free(*(*a1 + 8), v15);
    }
  }

  return v13;
}

uint64_t prmfx_CommonProcess(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 *a6)
{
  v7 = a5;
  v8 = a4;
  v146 = *MEMORY[0x1E69E9840];
  v143 = 0;
  v144 = 0;
  v142 = 0;
  v140 = 0;
  v135 = "null";
  v10 = *(a1 + 32);
  v11 = *(a1 + 72);
  __s1 = *(*(a1 + 64) + 1304);
  v124 = *(a1 + 84);
  v141 = 0;
  v139 = "null";
  v138 = 0;
  v137 = "null";
  v136 = 0;
  result = (*(v10 + 104))(a4, a5, 1, 0, &v144 + 2);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = (*(v10 + 104))(v8, v7, 2, HIWORD(v144), &v144);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v122 = v11;
  v131 = 0;
  v132 = v8;
  v123 = 0;
  v128 = 0;
  v13 = 0;
  v14 = 0xFFFF;
  v121 = 0;
  v127 = v7;
  v133 = v10;
  while (v144)
  {
    result = (*(v10 + 168))(v8, v7);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (SHIDWORD(v142) <= 8)
    {
      if (HIDWORD(v142) != 4)
      {
        if (HIDWORD(v142) == 5)
        {
          result = (*(v10 + 168))(v8, v7, v144, 1, 1, &v138, &v143);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (((*(v10 + 176))(v8, v7, v144, 4, &v139, &v143) & 0x80000000) != 0)
          {
            v139 = "null";
          }

          if (v138 == v141 && v13)
          {
            prmfx_setFeature("domain", *(*(a6 + 1) + 8 * (v13 - 1)), v139);
          }

          if (((*(v10 + 168))(v8, v7, v144, 2, 1, &v138, &v143) & 0x80000000) != 0)
          {
            v138 = v141;
          }
        }

        else if (HIDWORD(v142) == 6)
        {
          result = (*(v10 + 168))(v8, v7, v144, 1, 1, &v136, &v143);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (((*(v10 + 176))(v8, v7, v144, 4, &v137, &v143) & 0x80000000) != 0)
          {
            v137 = "null";
          }

          if (v136 == v141 && v13)
          {
            prmfx_setFeature("tn", *(*(a6 + 1) + 8 * (v13 - 1)), v137);
          }

          if (((*(v10 + 168))(v8, v7, v144, 2, 1, &v136, &v143) & 0x80000000) != 0)
          {
            v136 = v141;
          }
        }

        goto LABEL_203;
      }

LABEL_8:
      memset(__n, 0, sizeof(__n));
      v15 = v13;
      if (v13 >= *a6)
      {
        return 2382372873;
      }

      v16 = v13;
      prmfx_setFeature("phrase_type", *(*(a6 + 1) + 8 * v13), v135);
      if (((*(v133 + 176))(v8, v7, v144, 14, &v140, &v143) & 0x80000000) != 0)
      {
        v140 = "null";
        v17 = "null";
      }

      else
      {
        v17 = v140;
      }

      v18 = strlen(v17);
      v19 = heap_Alloc(*(a2 + 8), (7 * v18 + 15));
      if (!v19)
      {
        return 2382372874;
      }

      v20 = v19;
      v21 = *(a6 + 2);
      v22 = a6[12];
      a6[12] = v22 + 1;
      *(v21 + 8 * v22) = v19;
      if (hlp_NLUStrFind(v140, "POS", &__n[1], __n))
      {
        strncpy(v20, *&__n[1], __n[0]);
        v23 = &v20[__n[0]];
        *v23 = 0;
        v24 = v23 + 1;
      }

      else
      {
        v24 = v20;
        v20 = "null";
      }

      if (v13)
      {
        prmfx_setFeature("pos_next_word", *(*(a6 + 1) + 8 * v13 - 8), v20);
      }

      v130 = v13;
      prmfx_setFeature("pos_current_word", *(*(a6 + 1) + 8 * v13), v20);
      if (*a6 - 1 > v13)
      {
        prmfx_setFeature("pos_previous_word", *(*(a6 + 1) + 8 * v13 + 8), v20);
      }

      v25 = strstr(__s1, v20);
      if (!v25)
      {
        goto LABEL_40;
      }

      v26 = v25;
      do
      {
        while (*(v26 - 1) != 32)
        {
          v26 = strstr(v26 + 1, v20);
          if (!v26)
          {
            goto LABEL_40;
          }
        }

        v27 = v26[strlen(v20)];
        v28 = strstr(v26 + 1, v20);
        if (!v28)
        {
          break;
        }

        v26 = v28;
      }

      while (v27 != 32);
      v29 = "A";
      v126 = v130;
      if (v27 != 32)
      {
LABEL_40:
        v29 = "F";
        v126 = v14;
      }

      prmfx_setFeature("accentable", *(*(a6 + 1) + 8 * v16), v29);
      if (hlp_NLUStrFind(v140, "PHR", &__n[1], __n))
      {
        strncpy(v24, *&__n[1], __n[0]);
        v30 = &v24[__n[0]];
        *v30 = 0;
        v31 = v30 + 1;
      }

      else
      {
        v31 = v24;
        v24 = "null";
      }

      if (v130)
      {
        prmfx_setFeature("phr_next_word", *(*(a6 + 1) + 8 * v16 - 8), v24);
      }

      prmfx_setFeature("phr_current_word", *(*(a6 + 1) + 8 * v16), v24);
      if (*a6 - 1 > v15)
      {
        prmfx_setFeature("phr_previous_word", *(*(a6 + 1) + 8 * v16 + 8), v24);
      }

      v32 = *(a6 + 4) + 56 * v16;
      v33 = *(v32 + 32);
      if (v33)
      {
        strncpy(v31, v33, *(v32 + 24));
        v34 = *(*(a6 + 4) + 56 * v16 + 24);
        v31[v34] = 0;
        v35 = &v31[v34 + 1];
      }

      else
      {
        v35 = v31;
        v31 = "null";
      }

      if (v130)
      {
        prmfx_setFeature("bndshape_next_word", *(*(a6 + 1) + 8 * v16 - 8), v31);
      }

      prmfx_setFeature("bndshape", *(*(a6 + 1) + 8 * v16), v31);
      if (*a6 - 1 > v15)
      {
        prmfx_setFeature("bndshape_previous_word", *(*(a6 + 1) + 8 * v16 + 8), v31);
      }

      if (v124)
      {
        if (hlp_NLUStrFind(v140, "S_COMP", &__n[1], __n))
        {
          v36 = 11586;
          goto LABEL_63;
        }

        if (hlp_NLUStrFind(v140, "I_COMP", &__n[1], __n) || hlp_NLUStrFind(v140, "E_COMP", &__n[1], __n))
        {
          v36 = 11593;
LABEL_63:
          *v35 = v36;
          v35[2] = 0;
          v38 = __n[0];
          strncpy(v35 + 2, *&__n[1], __n[0] + 1);
          v37 = v38 + 2;
LABEL_64:
          v35[v37] = 0;
          v39 = &v35[v37 + 1];
LABEL_65:
          prmfx_setFeature("compound", *(*(a6 + 1) + 8 * v16), v35);
          if (hlp_NLUStrFind(v140, "S_CLASS", &__n[1], __n) || hlp_NLUStrFind(v140, "I_CLASS", &__n[1], __n) || hlp_NLUStrFind(v140, "E_CLASS", &__n[1], __n))
          {
            strncpy(v39, *&__n[1], __n[0] + 1);
            v40 = &v39[__n[0]];
            *v40 = 0;
            v41 = v40 + 1;
          }

          else
          {
            v41 = v39;
            v39 = "null";
          }

          prmfx_setFeature("doc_class", *(*(a6 + 1) + 8 * v16), v39);
          *v41 = 0;
          for (i = v140; hlp_NLUStrFind(i, "S_PUNC", &__n[1], __n); i = (*&__n[1] + __n[0]))
          {
            if (*v41)
            {
              *&v41[strlen(v41)] = 59;
            }

            v43 = strncat(v41, (*&__n[1] - 7), 7uLL);
            strncat(v43, *&__n[1], __n[0]);
          }

          for (j = v140; hlp_NLUStrFind(j, "I_PUNC", &__n[1], __n); j = (*&__n[1] + __n[0]))
          {
            if (*v41)
            {
              *&v41[strlen(v41)] = 59;
            }

            v45 = strncat(v41, (*&__n[1] - 7), 7uLL);
            strncat(v45, *&__n[1], __n[0]);
          }

          for (k = v140; hlp_NLUStrFind(k, "E_PUNC", &__n[1], __n); k = (*&__n[1] + __n[0]))
          {
            if (*v41)
            {
              *&v41[strlen(v41)] = 59;
            }

            v47 = strncat(v41, (*&__n[1] - 7), 7uLL);
            strncat(v47, *&__n[1], __n[0]);
          }

          v48 = strlen(v41);
          if (v48)
          {
            v41[v48] = 0;
            v49 = &v41[v48 + 1];
          }

          else
          {
            v49 = v41;
            v41 = "null";
          }

          if (v130)
          {
            prmfx_setFeature("doc_punc_next_word", *(*(a6 + 1) + 8 * v16 - 8), v41);
          }

          prmfx_setFeature("doc_punc", *(*(a6 + 1) + 8 * v16), v41);
          if (*a6 - 1 > v15)
          {
            prmfx_setFeature("doc_punc_previous_word", *(*(a6 + 1) + 8 * v16 + 8), v41);
          }

          if (hlp_NLUStrFind(v140, "S_NE", &__n[1], __n) || hlp_NLUStrFind(v140, "I_NE", &__n[1], __n) || hlp_NLUStrFind(v140, "E_NE", &__n[1], __n))
          {
            strncpy(v49, *&__n[1], __n[0] + 1);
            v50 = &v49[__n[0]];
            *v50 = 0;
            v51 = v50 + 1;
          }

          else
          {
            v51 = v49;
            v49 = "null";
          }

          if (v130)
          {
            prmfx_setFeature("ne_next_word", *(*(a6 + 1) + 8 * v16 - 8), v49);
          }

          prmfx_setFeature("ne_current_word", *(*(a6 + 1) + 8 * v16), v49);
          if (*a6 - 1 > v15)
          {
            prmfx_setFeature("ne_previous_word", *(*(a6 + 1) + 8 * v16 + 8), v49);
          }

          if (((*(v133 + 176))(v132, v127, v144, 9, &v140, &v143) & 0x80000000) != 0)
          {
            v140 = "null";
          }

          else
          {
            *v51 = 0;
            strncat(v51, v140, 2uLL);
          }

          prmfx_setFeature("language_tag", *(*(a6 + 1) + 8 * v16), v51);
          v52 = 0;
          if (((*(v133 + 176))(v132, v127, v144, 3, &v140, &v143) & 0x80000000) == 0)
          {
            v53 = v140;
            if (v140)
            {
              v54 = 0;
              do
              {
                ++v54;
                v55 = strchr(v53, 46);
                v53 = v55 + 1;
                if (v55)
                {
                  v56 = v55 + 1;
                }

                else
                {
                  v56 = 0;
                }

                v140 = v56;
              }

              while (v55);
              v52 = v54 >> 1;
            }
          }

          v57 = &v51[strlen(v51)];
          snprintf(v57 + 1, 4uLL, "%u", v52);
          prmfx_setFeature("word_length", *(*(a6 + 1) + 8 * v16), v57 + 1);
          if (v123 == 1)
          {
            prmfx_setFeature("phrase_length", *(*(a6 + 1) + 8 * v16), "0");
            v58 = v132;
          }

          else
          {
            v58 = v132;
            if (v123 < 6u)
            {
              v59 = "1";
            }

            else
            {
              v59 = "2";
            }

            prmfx_setFeature("phrase_length", *(*(a6 + 1) + 8 * v16), v59);
          }

          if (v123 - 1 == WORD2(v131))
          {
            v60 = *(*(a6 + 1) + 8 * v16);
            v61 = "3";
          }

          else if (WORD2(v131))
          {
            v60 = *(*(a6 + 1) + 8 * v16);
            if (v123 - 2 == WORD2(v131))
            {
              v61 = "2";
            }

            else
            {
              v61 = "1";
            }
          }

          else
          {
            v60 = *(*(a6 + 1) + 8 * v16);
            v61 = "0";
          }

          prmfx_setFeature("position", v60, v61);
          if (v128 - 1 == v131)
          {
            v72 = *(*(a6 + 1) + 8 * v16);
            v73 = "3";
          }

          else if (v131)
          {
            v72 = *(*(a6 + 1) + 8 * v16);
            if (v128 - 2 == v131)
            {
              v73 = "2";
            }

            else
            {
              v73 = "1";
            }
          }

          else
          {
            v72 = *(*(a6 + 1) + 8 * v16);
            v73 = "0";
          }

          prmfx_setFeature("position_major_ip", v72, v73);
          result = (*(v133 + 168))(v58, v127, v144, 1, 1, &v141, &v143);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (v141 >= v138)
          {
            v139 = "null";
            v74 = "null";
          }

          else
          {
            v74 = v139;
          }

          prmfx_setFeature("domain", *(*(a6 + 1) + 8 * v16), v74);
          if (v141 >= v136)
          {
            v137 = "null";
            v75 = "null";
          }

          else
          {
            v75 = v137;
          }

          prmfx_setFeature("tn", *(*(a6 + 1) + 8 * v16), v75);
          v76 = (*(a6 + 4) + 56 * v16);
          v77 = v76[1];
          v78 = *v76;
          v79 = (v77 - v78);
          v80 = heap_Alloc(*(a2 + 8), v79 + 5);
          if (!v80)
          {
            return 2382372874;
          }

          v81 = v80;
          v82 = a6[12];
          *(*(a6 + 2) + 8 * v82) = v80;
          v83 = v82 + 1;
          v84 = *(a6 + 5);
          v85 = *(*(a6 + 4) + 56 * v16);
          a6[12] = v83;
          if (v77 == v78)
          {
            v86 = 0;
          }

          else
          {
            v87 = 0;
            v88 = (v84 + v85);
            v89 = v79;
            do
            {
              v91 = *v88++;
              v90 = v91;
              if (*(a1 + 88) || !strchr(__s, v90))
              {
                v81[v87++] = v90;
              }

              --v89;
            }

            while (v89);
            v86 = v87;
          }

          v81[v86] = 0;
          if (*(a1 + 88))
          {
            result = (*(*(a1 + 56) + 112))(*(a1 + 40), *(a1 + 48), "normal", v81, v79);
            v92 = v130;
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }

          else
          {
            v92 = v130;
          }

          if (!*v81)
          {
            goto LABEL_193;
          }

          v93 = strstr(v122, v81);
          if (!v93)
          {
            goto LABEL_193;
          }

          v94 = v93;
          do
          {
            v95 = v94 != v122 && (v94 <= v122 || *(v94 - 1) != 32) || v94[strlen(v81)] != 32;
            v96 = strstr(v94 + 1, v81);
            if (!v96)
            {
              break;
            }

            v94 = v96;
          }

          while (v95);
          if (v95)
          {
LABEL_193:
            v81 = "null";
          }

          prmfx_setFeature("orth", *(*(a6 + 1) + 8 * v16), v81);
          v13 = v92 + 1;
          LOWORD(v131) = v131 + 1;
          ++WORD2(v131);
          v7 = v127;
          v8 = v132;
          v10 = v133;
          v14 = v126;
          goto LABEL_203;
        }
      }

      else if (hlp_NLUStrFind(v140, "COMP", &__n[1], __n))
      {
        strncpy(v35, *&__n[1], __n[0] + 1);
        v37 = __n[0];
        goto LABEL_64;
      }

      v39 = v35;
      v35 = "null";
      goto LABEL_65;
    }

    if ((HIDWORD(v142) - 9) < 6)
    {
      goto LABEL_8;
    }

    if (HIDWORD(v142) == 15)
    {
      if ((v14 & 0x8000) == 0)
      {
        prmfx_setFeature("accentable", *(*(a6 + 1) + 8 * v14), "L");
      }

      if (((*(v10 + 176))(v8, v7, v144, 4, &v135, &v143) & 0x80000000) != 0)
      {
        v135 = "null";
      }

      result = (*(v10 + 120))(v8, v7, v144, &v143 + 2);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (!HIWORD(v143))
      {
        LOWORD(v14) = -1;
        break;
      }

      result = (*(v10 + 168))(v8, v7);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v62 = 0;
      v63 = HIWORD(v143);
      if (HIWORD(v143))
      {
        v64 = v142;
        if (v142 != 15)
        {
          v62 = 0;
          while (1)
          {
            if ((v64 - 9) < 6 || v64 == 4)
            {
              ++v62;
            }

            result = (*(v10 + 120))(v8, v7, v63, &v143 + 2);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            if (!HIWORD(v143))
            {
              break;
            }

            result = (*(v10 + 168))(v8, v7);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v63 = HIWORD(v143);
            if (HIWORD(v143))
            {
              v64 = v142;
              if (v142 != 15)
              {
                continue;
              }
            }

            break;
          }
        }
      }

      v66 = *(a6 + 4);
      v123 = v62;
      if (v13 && v121 != *(v66 + 56 * (v13 - 1) + 4))
      {
        WORD2(v131) = 0;
        v14 = 0xFFFF;
        v10 = v133;
      }

      else
      {
        v67 = *a6 - 1;
        if (v67 <= v13)
        {
          v128 = 1;
          v68 = v13;
        }

        else
        {
          v128 = 1;
          v68 = v13;
          do
          {
            v69 = v66 + 56 * v68;
            if (*(v69 + 48))
            {
              break;
            }

            v70 = *(v69 + 32);
            if (v70)
            {
              v71 = *(v69 + 24);
              if (v71)
              {
                if (strncmp(v70, "%", v71))
                {
                  break;
                }
              }
            }

            ++v128;
            ++v68;
          }

          while (v67 > v68);
        }

        v131 = 0;
        v121 = *(v66 + 56 * v68 + 4);
        v14 = 0xFFFF;
        v8 = v132;
        v10 = v133;
      }
    }

LABEL_203:
    result = (*(v10 + 120))(v8, v7, v144, &v144);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  if (*a6)
  {
    v97 = v13;
    v98 = 0;
    v99 = *(a6 + 1);
    v100 = *v99;
    while (strcmp("prm_previous_word", g_FeatureNames[v98]))
    {
      if (++v98 == 29)
      {
        goto LABEL_219;
      }
    }

    *(v100 + v98 * 8) = "null";
    v99 = *(a6 + 1);
    v100 = *v99;
LABEL_219:
    v101 = 0;
    while (strcmp("pos_previous_word", g_FeatureNames[v101]))
    {
      if (++v101 == 29)
      {
        goto LABEL_224;
      }
    }

    *(v100 + v101 * 8) = "null";
    v99 = *(a6 + 1);
LABEL_224:
    v102 = 0;
    v103 = v97 - 1;
    v104 = v99[v103];
    while (strcmp("pos_next_word", g_FeatureNames[v102]))
    {
      if (++v102 == 29)
      {
        goto LABEL_229;
      }
    }

    *(v104 + v102 * 8) = "null";
    v99 = *(a6 + 1);
LABEL_229:
    v105 = 0;
    v106 = *v99;
    while (strcmp("phr_previous_word", g_FeatureNames[v105]))
    {
      if (++v105 == 29)
      {
        goto LABEL_234;
      }
    }

    *(v106 + v105 * 8) = "null";
    v99 = *(a6 + 1);
LABEL_234:
    v107 = 0;
    v108 = v99[v103];
    while (strcmp("phr_next_word", g_FeatureNames[v107]))
    {
      if (++v107 == 29)
      {
        goto LABEL_239;
      }
    }

    *(v108 + v107 * 8) = "null";
    v99 = *(a6 + 1);
LABEL_239:
    v109 = 0;
    v110 = *v99;
    while (strcmp("ne_previous_word", g_FeatureNames[v109]))
    {
      if (++v109 == 29)
      {
        goto LABEL_244;
      }
    }

    *(v110 + v109 * 8) = "null";
    v99 = *(a6 + 1);
LABEL_244:
    v111 = 0;
    v112 = v99[v103];
    while (strcmp("ne_next_word", g_FeatureNames[v111]))
    {
      if (++v111 == 29)
      {
        goto LABEL_249;
      }
    }

    *(v112 + v111 * 8) = "null";
    v99 = *(a6 + 1);
LABEL_249:
    v113 = 0;
    v114 = *v99;
    while (strcmp("doc_punc_previous_word", g_FeatureNames[v113]))
    {
      if (++v113 == 29)
      {
        goto LABEL_254;
      }
    }

    *(v114 + v113 * 8) = "null";
    v99 = *(a6 + 1);
LABEL_254:
    v115 = 0;
    v116 = v99[v103];
    while (strcmp("doc_punc_next_word", g_FeatureNames[v115]))
    {
      if (++v115 == 29)
      {
        goto LABEL_259;
      }
    }

    *(v116 + v115 * 8) = "null";
    v99 = *(a6 + 1);
LABEL_259:
    v117 = 0;
    v118 = *v99;
    while (strcmp("bndshape_previous_word", g_FeatureNames[v117]))
    {
      if (++v117 == 29)
      {
        goto LABEL_264;
      }
    }

    *(v118 + v117 * 8) = "null";
    v99 = *(a6 + 1);
LABEL_264:
    v119 = 0;
    v120 = v99[v103];
    while (strcmp("bndshape_next_word", g_FeatureNames[v119]))
    {
      if (++v119 == 29)
      {
        goto LABEL_269;
      }
    }

    *(v120 + v119 * 8) = "null";
  }

LABEL_269:
  if ((v14 & 0x8000) == 0)
  {
    prmfx_setFeature("accentable", *(*(a6 + 1) + 8 * v14), "L");
  }

  return 0;
}

uint64_t prmfx_setFeature(char *__s1, uint64_t a2, const char *a3)
{
  v6 = 0;
  while (1)
  {
    result = strcmp(__s1, g_FeatureNames[v6]);
    if (!result)
    {
      break;
    }

    if (++v6 == 29)
    {
      return result;
    }
  }

  if (*a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = "null";
  }

  *(a2 + v6 * 8) = v8;
  return result;
}

uint64_t fe_prmfx_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2382372865;
  }

  result = 0;
  *a2 = &IPrmFx;
  return result;
}

uint64_t prmfx_AllocateResults(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = 0;
  v9 = (*(a3 + 104))(a4, a5, 1, 0, &v13 + 2);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  v9 = (*(a3 + 104))(a4, a5, 2, HIWORD(v13), &v13);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  while (v13)
  {
    v9 = (*(a3 + 168))(a4, a5);
    if ((v9 & 0x80000000) == 0)
    {
      v9 = (*(a3 + 120))(a4, a5, v13, &v13);
      if ((v9 & 0x80000000) == 0)
      {
        continue;
      }
    }

    return v9;
  }

  v10 = 2382372874;
  v12 = heap_Alloc(*(a1 + 8), 56);
  if (v12)
  {
    *v12 = 0;
    return 0;
  }

  return v10;
}

uint64_t fillWordInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = 0;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  result = (*(a1 + 104))(a2, a3, 1, 0, &v16);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a1 + 184))(a2, a3, v16, 0, &v13 + 2);
    if ((result & 0x80000000) == 0 && HIWORD(v13) == 1)
    {
      result = (*(a1 + 176))(a2, a3, v16, 0, a4 + 40, &v15);
      if ((result & 0x80000000) == 0 && v15 >= 2u)
      {
        *(a4 + 48) = strlen(*(a4 + 40));
        result = (*(a1 + 104))(a2, a3, 2, v16, &v15 + 2);
        if ((result & 0x80000000) == 0)
        {
          v9 = HIWORD(v15);
          if (HIWORD(v15))
          {
            v10 = 0;
            while (1)
            {
              result = (*(a1 + 168))(a2, a3, v9, 0, 1, &v14, &v15);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              if ((v14 - 9) < 6)
              {
                goto LABEL_11;
              }

              if (v14 == 15)
              {
                result = (*(a1 + 168))(a2, a3, HIWORD(v15), 7, 1, &v13, &v15);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                if (v10 && v13 <= 1u)
                {
                  *(*(a4 + 32) + 56 * (v10 - 1) + 48) = 1;
                }

                goto LABEL_15;
              }

              if (v14 == 4)
              {
LABEL_11:
                v11 = *(a4 + 32) + 56 * v10;
                v12 = HIWORD(v15);
                v17 = 0;
                *(v11 + 4) = HIWORD(v15);
                *(v11 + 48) = 0;
                result = (*(a1 + 168))(a2, a3, v12, 1, 1, v11, &v17);
                if ((result & 0x80000000) != 0 || (result = (*(a1 + 168))(a2, a3, v12, 2, 1, v11 + 2, &v17), (result & 0x80000000) != 0) || (*v20 = 0, v19 = 0, result = (*(a1 + 176))(a2, a3, v12, 14, v20, &v19), (result & 0x80000000) != 0))
                {
                  *(v11 + 44) = 0;
                  return result;
                }

                ++v10;
                v18 = 0;
                hlp_NLUStrFind(*v20, "PRM", (v11 + 16), &v18);
                *(v11 + 8) = v18;
                hlp_NLUStrFind(*v20, "BNDSHAPE", (v11 + 32), &v18);
                *(v11 + 24) = v18;
                *(v11 + 44) = 1;
              }

LABEL_15:
              result = (*(a1 + 120))(a2, a3, HIWORD(v15), &v15 + 2);
              if ((result & 0x80000000) == 0)
              {
                v9 = HIWORD(v15);
                if (HIWORD(v15))
                {
                  continue;
                }
              }

              return result;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t prmfx_FreeResults(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  if (*a3)
  {
    v5 = 0;
    do
    {
      heap_Free(*(a1 + 8), *(*(a3 + 1) + 8 * v5++));
    }

    while (v5 < *a3);
  }

  heap_Free(*(a1 + 8), *(a3 + 1));
  if (a3[12])
  {
    v6 = 0;
    do
    {
      heap_Free(*(a1 + 8), *(*(a3 + 2) + 8 * v6++));
    }

    while (v6 < a3[12]);
  }

  heap_Free(*(a1 + 8), *(a3 + 2));
  heap_Free(*(a1 + 8), *(a3 + 4));
  heap_Free(*(a1 + 8), a3);
  return 0;
}

uint64_t prmfx_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = 2382372871;
  if (a3)
  {
    v12 = 0;
    inited = InitRsrcFunction(a1, a2, &v12);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    v8 = heap_Calloc(*(v12 + 8), 1, 32);
    if (!v8)
    {
      return 2382372874;
    }

    v9 = v8;
    v10 = v12;
    *v8 = v12;
    v8[1] = a1;
    v8[2] = a2;
    inited = critsec_ObjOpen(*(v10 + 16), *(v10 + 8), v8 + 3);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      v3 = 0;
      *a3 = v9;
      *(a3 + 8) = 449;
    }
  }

  return v3;
}

uint64_t prmfx_ClassClose(void **a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 449, 32);
  if ((result & 0x80000000) == 0)
  {
    critsec_ObjClose(a1[3]);
    heap_Free((*a1)[1], a1);
    return 0;
  }

  return result;
}

uint64_t prmfx_ObjOpen(uint64_t a1, int a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = 2382372871;
  v19 = 0;
  v18 = 0;
  if (!a5)
  {
    return v5;
  }

  v20 = 0;
  v21 = 0;
  inited = InitRsrcFunction(a3, a4, &v21);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v12 = heap_Calloc(*(v21 + 8), 1, 96);
  if (!v12)
  {
    return 2382372874;
  }

  v13 = v12;
  *v12 = v21;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = 0;
  v14 = v12 + 3;
  v12[4] = 0;
  inited = safeh_HandleCheck(a1, a2, 449, 32);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *v14 = a1;
  inited = objc_GetObject(*(v21 + 48), "LINGDB", &v20);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *(v13 + 32) = *(v20 + 8);
  inited = objc_GetObject(*(v21 + 48), "FE_DCTLKP", &v19);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v15 = v19;
  *(v13 + 56) = *(v19 + 8);
  *(v13 + 40) = *(v15 + 16);
  if ((paramc_ParamGetUInt(*(v21 + 40), "prmigactive", &v18) & 0x80000000) != 0 || v18 != 1)
  {
    *(v13 + 64) = 0;
    inited = paramc_ParamSetUInt(*(*v13 + 40), "prmigexists", 0);
    if ((inited & 0x80000000) == 0)
    {
LABEL_20:
      v5 = 0;
      *a5 = v13;
      *(a5 + 8) = 449;
      return v5;
    }

    return inited;
  }

  inited = hlp_CreateVoiceBrokerString_1(*v13, v22);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  critsec_Enter(*(*(v13 + 24) + 24));
  if ((igtree_Init_ReadOnly_ReferenceCnt(*(v13 + 8), *(v13 + 16), *(*(v13 + 24) + 8), *(*(v13 + 24) + 16), (v13 + 64), 2, v22, "IGTR", 5, 0) & 0x80000000) != 0)
  {
    *(v13 + 64) = 0;
    paramc_ParamSetUInt(*(*v13 + 40), "prmigexists", 0);
    v5 = 0;
  }

  else
  {
    v16 = paramc_ParamSetUInt(*(*v13 + 40), "prmigexists", 1);
    if ((v16 & 0x80000000) == 0)
    {
      v16 = processIgParams(v13);
    }

    v5 = v16;
  }

  critsec_Leave(*(*v14 + 24));
  if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  return v5;
}

uint64_t prmfx_ObjClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 449, 96);
  if ((result & 0x80000000) == 0)
  {
    v4 = *a1;
    v5 = **(a1 + 24);
    if (*(a1 + 32))
    {
      objc_ReleaseObject(*(v4 + 48), "LINGDB");
    }

    if (*(a1 + 56))
    {
      objc_ReleaseObject(*(v4 + 48), "FE_DCTLKP");
    }

    v6 = *(a1 + 64);
    if (v6)
    {
      igtree_Deinit_ReadOnly_DereferenceCnt(v4, v5, v6);
    }

    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t prmfx_ObjReopen(uint64_t *a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = 0;
  VoiceBrokerString_1 = safeh_HandleCheck(a1, a2, 449, 96);
  if ((VoiceBrokerString_1 & 0x80000000) != 0)
  {
    return VoiceBrokerString_1;
  }

  v4 = *a1;
  v5 = a1[8];
  if (v5)
  {
    igtree_Deinit_ReadOnly_DereferenceCnt(*a1, *a1[3], v5);
  }

  if ((paramc_ParamGetUInt(*(v4 + 40), "prmigactive", &v9) & 0x80000000) != 0 || v9 != 1)
  {
    a1[8] = 0;
    VoiceBrokerString_1 = paramc_ParamSetUInt(*(*a1 + 40), "prmigexists", 0);
    if ((VoiceBrokerString_1 & 0x80000000) == 0)
    {
      return 0;
    }

    return VoiceBrokerString_1;
  }

  VoiceBrokerString_1 = hlp_CreateVoiceBrokerString_1(*a1, v10);
  if ((VoiceBrokerString_1 & 0x80000000) != 0)
  {
    return VoiceBrokerString_1;
  }

  critsec_Enter(*(a1[3] + 24));
  if ((igtree_Init_ReadOnly_ReferenceCnt(a1[1], a1[2], *(a1[3] + 8), *(a1[3] + 16), a1 + 8, 2, v10, "IGTR", 5, 0) & 0x80000000) != 0)
  {
    a1[8] = 0;
    paramc_ParamSetUInt(*(*a1 + 40), "prmigexists", 0);
    v7 = 0;
  }

  else
  {
    v6 = paramc_ParamSetUInt(*(*a1 + 40), "prmigexists", 1);
    if ((v6 & 0x80000000) == 0)
    {
      v6 = processIgParams(a1);
    }

    v7 = v6;
  }

  critsec_Leave(*(a1[3] + 24));
  if ((v7 & 0x80000000) == 0)
  {
    return 0;
  }

  return v7;
}

uint64_t prmfx_ProcessStart(uint64_t *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 449, 96);
  if ((result & 0x80000000) == 0)
  {
    v6 = 0;
    v4 = *a1;
    *(a1 + 21) = 1;
    Int = paramc_ParamGetInt(*(v4 + 40), "statcompwidescope", &v6);
    result = 0;
    if ((Int & 0x80000000) == 0 && !v6)
    {
      result = 0;
      *(a1 + 21) = 0;
    }
  }

  return result;
}

uint64_t prmfx_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v48 = *MEMORY[0x1E69E9840];
  v39 = 0;
  __s1 = 0;
  v9 = safeh_HandleCheck(a1, a2, 449, 96);
  if ((v9 & 0x80000000) == 0)
  {
    v44 = 0;
    v43 = 0;
    v42 = 0;
    v47 = 0;
    memset(v46, 0, sizeof(v46));
    *a5 = 1;
    v10 = *a1;
    if ((paramc_ParamGetStr(*(*a1 + 40), "basicclcprosody", &__s1) & 0x80000000) == 0 && __s1 && !strcmp(__s1, "yes"))
    {
      log_OutText(*(v10 + 32), "PRMFX", 5, 0, "<%s> disables voice-dependent igtree", "basicclcprosody");
      return v9;
    }

    v9 = (*(*(a1 + 32) + 104))(a3, a4, 1, 0, &v44);
    if ((v9 & 0x80000000) == 0 && ((*(*(a1 + 32) + 184))(a3, a4, v44, 0, &v42 + 2) & 0x80000000) == 0 && HIWORD(v42) == 1)
    {
      v9 = (*(*(a1 + 32) + 176))(a3, a4, v44, 0, &v43, &v42);
      if ((v9 & 0x80000000) == 0 && v42 >= 2u)
      {
        Results = (*(*(a1 + 32) + 272))(a3, a4, 9, 1, 0, 0);
        if ((Results & 0x80000000) != 0)
        {
          return Results;
        }

        v9 = 0;
        if ((paramc_ParamGetUInt(*(v10 + 40), "prmigactive", &v39) & 0x80000000) == 0 && v39 == 1)
        {
          if (!*(a1 + 64))
          {
            return 0;
          }

          v45 = 0;
          Results = prmfx_AllocateResults(v10, v12, *(a1 + 32), a3, a4);
          if ((Results & 0x80000000) != 0)
          {
            return Results;
          }

          critsec_Enter(*(*(a1 + 24) + 24));
          v13 = v45;
          v9 = prmfx_CommonProcess(a1, v10, v14, a3, a4, v45);
          critsec_Leave(*(*(a1 + 24) + 24));
          if ((v9 & 0x80000000) == 0)
          {
            strcpy(v40, "null");
            v41 = v40;
            if (*v13)
            {
              v16 = 0;
              while (1)
              {
                v17 = *(*(v13 + 4) + 56 * v16 + 4);
                prmfx_setFeature("prm_previous_word", *(*(v13 + 1) + 8 * v16), v41);
                v18 = *(a1 + 64);
                v19 = *(v18 + 1296);
                if (v19 >= 2)
                {
                  v20 = 0;
                  v33 = v19 - 1;
                  v34 = v17;
                  v35 = v13;
                  while (2)
                  {
                    v21 = v16;
                    v22 = 0;
                    v23 = *(*(v18 + 1312) + 8 * v20);
                    v24 = v21;
                    v25 = *(*(v13 + 1) + 8 * v21);
                    while (strcmp(v23, g_FeatureNames[v22]))
                    {
                      if (++v22 == 29)
                      {
                        return 2382372889;
                      }
                    }

                    v26 = *(v25 + v22 * 8);
                    *(v46 + v20) = v26;
                    if (!v26)
                    {
                      return 2382372889;
                    }

                    ++v20;
                    v17 = v34;
                    v13 = v35;
                    v16 = v24;
                    if (v33 > v20)
                    {
                      continue;
                    }

                    break;
                  }
                }

                Results = igtree_Process(v18, v46, &v43);
                if ((Results & 0x80000000) != 0)
                {
                  return Results;
                }

                traceFeatureVector_0(v10, *(a1 + 64), v46, v13, v16, v43);
                *(*(v13 + 4) + 56 * v16 + 40) = *v43;
                if (((*(*(a1 + 32) + 176))(a3, a4, v17, 13, &v41, &v42) & 0x80000000) != 0)
                {
                  strcpy(v40, "null");
                  v41 = v40;
                }

                v27 = *(v13 + 4) + 56 * v16;
                v28 = *(v27 + 16);
                if (v28)
                {
                  *v41 = *v28;
                  v29 = *(v13 + 4);
                  v30 = v29 + 56 * v16;
                  if (*(v30 + 8) >= 2uLL)
                  {
                    log_OutText(*(v10 + 32), "PRMFX", 1, 0, "PRMFX: reference PRM %.*s truncated", *(v30 + 8), *(v30 + 16));
                    v29 = *(v13 + 4);
                  }

                  *(v29 + 56 * v16 + 40) = *v41;
                }

                else
                {
                  *v41 = *(v27 + 40);
                }

                if (*(a1 + 92))
                {
                  v36 = 0;
                  v37 = 0;
                  if (((*(*(a1 + 32) + 184))(a3, a4, v17, 8, &v37 + 2) & 0x80000000) == 0 && HIWORD(v37) == 1)
                  {
                    Results = (*(*(a1 + 32) + 168))(a3, a4, v17, 8, 1, &v37, &v42);
                    if ((Results & 0x80000000) != 0)
                    {
                      return Results;
                    }

                    if (v37 && *v41 == *(a1 + 92))
                    {
                      Results = (*(*(a1 + 32) + 160))(a3, a4, v17, 8, 1, a1 + 94, &v36);
                      if ((Results & 0x80000000) != 0)
                      {
                        return Results;
                      }

                      Results = (*(*(a1 + 32) + 120))(a3, a4, v17, &v36 + 2);
                      if ((Results & 0x80000000) != 0)
                      {
                        return Results;
                      }

                      while (HIWORD(v36))
                      {
                        Results = (*(*(a1 + 32) + 168))(a3, a4);
                        if ((Results & 0x80000000) == 0)
                        {
                          Results = (*(*(a1 + 32) + 120))(a3, a4, HIWORD(v36), &v36 + 2);
                          if ((Results & 0x80000000) == 0)
                          {
                            continue;
                          }
                        }

                        return Results;
                      }
                    }
                  }
                }

                if (++v16 >= *v13)
                {
                  break;
                }
              }
            }

            v31 = *(a1 + 80);
            if (v31 == 50)
            {
              Results = consistencyCheck2(*(a1 + 32), a3, a4, v13);
              if ((Results & 0x80000000) == 0)
              {
LABEL_50:
                prmfx_FreeResults(v10, v15, v13);
                return 0;
              }
            }

            else
            {
              if (v31 != 51)
              {
                goto LABEL_50;
              }

              Results = consistencyCheck3(*(a1 + 32), a3, a4, v13);
              if ((Results & 0x80000000) == 0)
              {
                goto LABEL_50;
              }
            }

            return Results;
          }
        }
      }
    }
  }

  return v9;
}

uint64_t hlp_CreateVoiceBrokerString_1(uint64_t a1, char *a2)
{
  v5 = 0;
  v6 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &v6);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "voice", &v5);
    if ((result & 0x80000000) == 0)
    {
      return brokeraux_ComposeBrokerString(a1, "igtree", 1, 1, v6, v5, 0, a2, 0x100uLL);
    }
  }

  return result;
}

uint64_t processIgParams(uint64_t a1)
{
  v1 = 2382372871;
  if (a1)
  {
    v3 = *(a1 + 64);
    if (v3)
    {
      *(a1 + 72) = "";
      *(a1 + 80) = 48;
      *(a1 + 88) = 0x50000000000000;
      if (*(v3 + 1336))
      {
        for (i = 0; *(v3 + 1336) > i; ++i)
        {
          v5 = (*(v3 + 1328) + 16 * i);
          v6 = *v5;
          if (!strcmp("accentable_pos", *v5))
          {
            v7 = strlen(v5[1]);
            v8 = heap_Realloc(*(*a1 + 8), *(v3 + 1304), (v7 + 1));
            *(v3 + 1304) = v8;
            if (!v8)
            {
              return 2382372874;
            }

            strcpy(v8, v5[1]);
          }

          else if (!strcmp("orth_top200", v6))
          {
            *(a1 + 72) = v5[1];
          }

          else if (!strcmp("canonical_conversion", v6) && !strcmp("yes", v5[1]))
          {
            *(a1 + 88) = 1;
          }

          else if (!strcmp("consistency_check", v6))
          {
            v9 = strstr(v5[1], "prm");
            if (v9)
            {
              *(a1 + 80) = v9[3];
            }
          }

          else if (!strcmp("pause_prm_value", v6))
          {
            *(a1 + 92) = *v5[1];
          }

          else if (!strcmp("pause_prm_length", v6))
          {
            *(a1 + 94) = atoi(v5[1]);
          }
        }
      }

      return 0;
    }
  }

  return v1;
}

void *traceFeatureVector_0(uint64_t a1, uint64_t a2, const char **a3, uint64_t a4, unsigned int a5, const char *a6)
{
  v9 = a3;
  v11 = *(a4 + 32);
  v12 = 1;
  LODWORD(v13) = (*(a2 + 1296) - 1);
  if (*(a2 + 1296) != 1)
  {
    v14 = (*(a2 + 1296) - 1);
    v15 = a3;
    do
    {
      v16 = *v15++;
      v12 += strlen(v16) + 1;
      --v14;
    }

    while (v14);
  }

  v17 = heap_Alloc(*(a1 + 8), v12);
  if (!v17)
  {
    return log_OutText(*(a1 + 32), "PRMFX", 0, 0, "in traceFeatureVector(): allocating %d bytes failed", v12);
  }

  v18 = v17;
  v19 = (v11 + 56 * a5);
  *v17 = 0;
  if (v13)
  {
    v13 = v13;
    do
    {
      *&v18[strlen(v18)] = 32;
      v20 = *v9++;
      strcat(v18, v20);
      --v13;
    }

    while (v13);
  }

  v21 = *v19;
  v22 = v19[1] - v21;
  v23 = (*(a4 + 40) + v21);
  v24 = *(v19 + 2);
  if (v24)
  {
    v25 = *(v19 + 1);
  }

  else
  {
    v24 = "?";
    LODWORD(v25) = 1;
  }

  log_OutText(*(a1 + 32), "PRMFX", 5, 0, "traceFeatureVector igtree [%02d] %-16.*s | %-54s | %.*s %s", a5, v22, v23, v18, v25, v24, a6);
  v27 = *(a1 + 8);

  return heap_Free(v27, v18);
}

uint64_t consistencyCheck3(uint64_t a1, uint64_t a2, uint64_t a3, signed __int16 *a4)
{
  if (!*a4)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  v19 = 0;
  v10 = -1;
  do
  {
    v11 = *(a4 + 4);
    v12 = *(v11 + 56 * v9 + 40);
    if (v12 == 49)
    {
      if ((v10 & 0x8000) != 0)
      {
        goto LABEL_17;
      }

      v14 = *(v11 + 56 * v10 + 40) >= 0x32u;
      goto LABEL_15;
    }

    if (v12 == 50)
    {
      if ((v10 & 0x8000) != 0)
      {
        goto LABEL_17;
      }

      v14 = *(v11 + 56 * v10 + 40) >= 0x33u;
LABEL_15:
      if (!v14)
      {
        v10 = v9;
      }

      goto LABEL_17;
    }

    if (v12 != 51)
    {
      goto LABEL_17;
    }

    if ((v10 & 0x8000) == 0)
    {
      v13 = v11 + 56 * v10;
      v10 = v9;
      if (*(v13 + 40) != 51)
      {
        goto LABEL_17;
      }

      v8 = (*(a1 + 160))(a2, a3, *(v13 + 4), 13, 2, "2", &v19);
      if ((v8 & 0x80000000) != 0)
      {
        return v8;
      }

      v11 = *(a4 + 4);
    }

    v10 = v9;
LABEL_17:
    if ((v10 & 0x8000u) != 0)
    {
      v10 = v9;
    }

    v15 = v11 + 56 * v9;
    v16 = *(v15 + 32);
    if (v16)
    {
      v17 = *(v15 + 24);
      if (v17)
      {
        if (strncmp(v16, "%", v17))
        {
          v8 = (*(a1 + 160))(a2, a3, *(v11 + 56 * v10 + 4), 13, 2, "3", &v19);
          if ((v8 & 0x80000000) != 0)
          {
            return v8;
          }

          v10 = -1;
        }
      }
    }

    ++v9;
  }

  while (*a4 > v9);
  if ((v10 & 0x8000) == 0)
  {
    return (*(a1 + 160))(a2, a3, *(*(a4 + 4) + 56 * v10 + 4), 13, 2, "3", &v19);
  }

  return v8;
}

uint64_t consistencyCheck2(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4)
{
  v4 = *a4;
  if (!*a4)
  {
    return 0;
  }

  v9 = 0;
  result = 0;
  v14 = 0;
  v11 = -1;
  do
  {
    v12 = *(a4 + 4);
    v13 = *(v12 + 56 * v9 + 40);
    if (v13 == 49)
    {
      if ((v11 & 0x8000) == 0 && *(v12 + 56 * v11 + 40) < 0x32u)
      {
        v11 = v9;
      }
    }

    else if (v13 == 50)
    {
      v11 = v9;
    }

    if (v11 < 0)
    {
      v11 = v9;
    }

    if (*(v12 + 56 * v9 + 48))
    {
      result = (*(a1 + 160))(a2, a3, *(v12 + 56 * v11 + 4), 13, 2, "2", &v14);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v4 = *a4;
      v11 = -1;
    }

    ++v9;
  }

  while (v4 > v9);
  if ((v11 & 0x8000) == 0)
  {
    return (*(a1 + 160))(a2, a3, *(*(a4 + 4) + 56 * v11 + 4), 13, 2, "2", &v14);
  }

  return result;
}

uint64_t fe_msp_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v26 = 0;
  v27 = 0;
  v5 = 2705334279;
  v25 = 0;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v27);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    Object = objc_GetObject(*(v27 + 48), "LINGDB", &v26);
    if ((Object & 0x80000000) != 0)
    {
      goto LABEL_11;
    }

    Object = objc_GetObject(*(v27 + 48), "FE_DCTLKP", &v25);
    if ((Object & 0x80000000) != 0)
    {
      goto LABEL_11;
    }

    v11 = heap_Alloc(*(v27 + 8), 216);
    v12 = v27;
    if (v11)
    {
      v13 = v11;
      *v11 = v27;
      *(v11 + 8) = a3;
      *(v11 + 16) = a4;
      *(v11 + 200) = *(v26 + 8);
      v14 = v25;
      *(v11 + 40) = *(v25 + 8);
      *(v11 + 24) = *(v14 + 16);
      *(v11 + 120) = 0;
      *(v11 + 208) = 0;
      log_OutText(*(v12 + 32), "FE_MSP", 4, 0, "Entering fe_msp_ObjOpen");
      Object = msp_check_dctlkp_version(v13);
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_11;
      }

      *(v13 + 48) = heap_Alloc;
      *(v13 + 56) = heap_Calloc;
      *(v13 + 64) = heap_Realloc;
      *(v13 + 72) = heap_Free;
      v15 = OOCAllocator_Con(v13 + 80, (v13 + 48), *(*v13 + 8));
      v16 = LH_ERROR_to_VERROR(v15);
      if ((v16 & 0x80000000) == 0)
      {
        *(v13 + 192) = 0;
        *(v13 + 160) = 0u;
        *(v13 + 176) = 0u;
        *(v13 + 128) = 0u;
        *(v13 + 144) = 0u;
        Object = msp_prepare_voice_specific_msp_luavm(v13, v17, v18, v19, v20, v21, v22, v23);
        if ((Object & 0x80000000) == 0)
        {
          v5 = msp_prepare_common_msp_luavm(v13);
          if ((v5 & 0x80000000) == 0)
          {
            *a5 = v13;
            *(a5 + 8) = 1065;
            return v5;
          }

LABEL_16:
          fe_msp_ObjClose(*a5, *(a5 + 8));
          return v5;
        }

LABEL_11:
        v5 = Object;
        goto LABEL_16;
      }

      v5 = v16;
      v12 = v27;
    }

    else
    {
      v5 = 2705334282;
    }

    log_OutPublic(*(v12 + 32), "FE_MSP", 78000, 0);
    goto LABEL_16;
  }

  return v5;
}

uint64_t fe_msp_ObjClose(uint64_t *a1, int a2)
{
  v3 = 2705334280;
  v4 = safeh_HandleCheck(a1, a2, 1065, 216);
  if ((v4 & 0x80000000) == 0)
  {
    if (a1)
    {
      v5 = v4;
      log_OutText(*(*a1 + 32), "FE_MSP", 4, 0, "Entering fe_msp_ObjClose");
      msp_deallocate_supported_styles(a1, (a1 + 20));
      msp_deallocate_supported_styles(a1, (a1 + 16));
      luavmldoutil_destroy_lua_vm((a1 + 10), a1 + 20);
      luavmldoutil_destroy_lua_vm((a1 + 10), a1 + 16);
      kaldi::nnet1::Component::IsUpdatable((a1 + 10));
      objc_ReleaseObject(*(*a1 + 48), "LINGDB");
      objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
      heap_Free(*(*a1 + 8), a1);
      return v5;
    }

    else
    {
      return 2705334282;
    }
  }

  return v3;
}

uint64_t fe_msp_ObjReopen(_DWORD *a1, int a2)
{
  v3 = 2705334280;
  if ((safeh_HandleCheck(a1, a2, 1065, 216) & 0x80000000) != 0)
  {
    return v3;
  }

  if (!a1)
  {
    return 2705334282;
  }

  log_OutText(*(*a1 + 32), "FE_MSP", 4, 0, "Entering fe_msp_ObjReopen");
  v4 = msp_check_dctlkp_version(a1);
  if ((v4 & 0x80000000) != 0)
  {
    return v4;
  }

  a1[48] = 0;
  v4 = msp_prepare_voice_specific_msp_luavm(a1, v5, v6, v7, v8, v9, v10, v11);
  if ((v4 & 0x80000000) != 0)
  {
    return v4;
  }

  return msp_prepare_common_msp_luavm(a1);
}

uint64_t fe_msp_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 1065, 216);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2705334280;
  }
}

uint64_t fe_msp_Process(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v15 = 0;
  v14 = 0;
  if ((safeh_HandleCheck(a1, a2, 1065, 216) & 0x80000000) != 0)
  {
    return 2705334280;
  }

  *a5 = 1;
  log_OutText(*(*a1 + 32), "FE_MSP", 4, 0, "Entering fe_msp_Process");
  has_set_style_marker = LingDBIsValid(a1[25], a3, a4, &v15);
  if ((has_set_style_marker & 0x80000000) == 0)
  {
    if (v15 == 1)
    {
      has_set_style_marker = LingDBHasSentence(a1[25], a3, a4, &v15 + 1);
      if ((has_set_style_marker & 0x80000000) != 0)
      {
        goto LABEL_23;
      }

      if (HIDWORD(v15) == 1)
      {
        v10 = auxTouchLingdbInstance(a1[25], a3, a4);
        if ((v10 & 0x80000000) != 0)
        {
LABEL_19:
          has_set_style_marker = v10;
          goto LABEL_23;
        }

        has_set_style_marker = msp_lingDB_has_set_style_marker(a1[25], a3, a4, &v14);
        if ((has_set_style_marker & 0x80000000) != 0)
        {
          goto LABEL_23;
        }

        if (v14 == 1 || a1[26])
        {
          has_set_style_marker = initLDO((a1 + 10), a1 + 15);
          if ((has_set_style_marker & 0x80000000) != 0)
          {
            goto LABEL_23;
          }

          v11 = *a1;
          if (a1[15])
          {
            v10 = importFromLingDBWordRecord(v11, a1[25], a3, a4, a1 + 15, 1);
            if ((v10 & 0x80000000) == 0)
            {
              v10 = msp_prepare_ldo_for_lua_style_processing(a1);
              if ((v10 & 0x80000000) == 0)
              {
                if (!a1[20] || (v10 = msp_execute_voice_specific_msp_entry_point(a1, "FE_MSP"), (v10 & 0x80000000) == 0))
                {
                  if (!a1[16] || (v10 = msp_execute_common_msp_entry_point(a1, "FE_MSP"), (v10 & 0x80000000) == 0))
                  {
                    v10 = exportToLingDBWordRecord(*a1, a1[25], a3, a4, (a1 + 10), a1[15], 1);
                  }
                }
              }
            }

            goto LABEL_19;
          }

          log_OutText(*(v11 + 32), "FE_MSP", 5, 0, "Init LDO is NULL, returning", 0);
        }

        else
        {
          log_OutText(*(*a1 + 32), "FE_MSP", 5, 0, "Sentence does not contain <esc>style, returning", 0);
        }
      }

      else
      {
        log_OutText(*(*a1 + 32), "FE_MSP", 5, 0, "LingDB has no sentence, returning", 0);
      }
    }

    else
    {
      log_OutText(*(*a1 + 32), "FE_MSP", 5, 0, "Empty or Invalid LingDB, returning", 0);
    }
  }

LABEL_23:
  v12 = a1[15];
  if (v12)
  {
    deinitLDO((a1 + 10), v12);
    a1[15] = 0;
  }

  return has_set_style_marker;
}

uint64_t fe_msp_ProcessEnd(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 1065, 216);
  if ((result & 0x80000000) != 0)
  {
    return 2705334280;
  }

  v4 = *(a1 + 208);
  if (v4)
  {
    v5 = OOC_PlacementDeleteObject(a1 + 80, v4);
    result = LH_ERROR_to_VERROR(v5);
    if ((result & 0x80000000) == 0)
    {
      *(a1 + 208) = 0;
    }
  }

  return result;
}

uint64_t fe_msp_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2705334273;
  }

  result = 0;
  *a2 = &IFeMSP;
  return result;
}

uint64_t msp_check_dctlkp_version(void *a1)
{
  v3 = 0;
  v2 = 0;
  return (*(a1[5] + 88))(a1[3], a1[4], &v3, &v2);
}

uint64_t msp_deallocate_supported_styles(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    result = OOC_PlacementDeleteObject(result + 80, v3);
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t loc_process_ldo_with_lua(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  v9 = a1[15];
  if (a4)
  {
    v10 = LuaVMLDO_RunFunctionWithLDOAndTableArguments(v8, a3, v9, a4);
  }

  else
  {
    v10 = LuaVMLDO_RunFunction(v8, a3, v9);
  }

  v11 = LH_ERROR_to_VERROR(v10);
  if ((v11 & 0x80000000) != 0)
  {
    log_OutPublic(*(*a1 + 32), a5, 78002, 0);
  }

  return v11;
}

uint64_t msp_lingDB_has_set_style_marker(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v13 = 0;
  v12 = 0;
  *a4 = 0;
  result = (*(a1 + 104))(a2, a3, 1, 0, &v13 + 2);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a1 + 176))(a2, a3, HIWORD(v13), 1, &v12, &v13);
    if ((result & 0x80000000) == 0)
    {
      v9 = v13;
      if (v13)
      {
        v10 = v12;
        while (1)
        {
          v11 = *v10;
          v10 += 8;
          if (v11 == 60)
          {
            break;
          }

          if (!--v9)
          {
            return result;
          }
        }

        *a4 = 1;
      }
    }
  }

  return result;
}

uint64_t msp_prepare_common_msp_luavm(uint64_t a1)
{
  *(a1 + 144) = "runMsp";
  *(a1 + 152) = "getSupportedStylesMsp";
  v2 = loc_prepare_luavm(a1, (a1 + 128), "msp");
  if ((v2 & 0x80000000) == 0)
  {
    if (*(a1 + 128))
    {
      *(a1 + 192) = 1;
      log_OutText(*(*a1 + 32), "FE_MSP", 4, 0, "Common MSP data available");
    }

    else
    {
      log_OutText(*(*a1 + 32), "FE_MSP", 4, 0, "No common MSP data available");
    }
  }

  return v2;
}

uint64_t loc_prepare_luavm(uint64_t *a1, uint64_t *a2, char *a3)
{
  v7 = a2 + 1;
  v6 = a2[1];
  if (v6)
  {
    OOC_PlacementDeleteObject((a1 + 10), v6);
    *v7 = 0;
  }

  v8 = PNEW_LDOObject_Con((a1 + 10), (a1 + 10), v7);
  v9 = LH_ERROR_to_VERROR(v8);
  if ((v9 & 0x80000000) != 0)
  {
    v11 = v9;
    log_OutText(*(*a1 + 32), "FE_MSP", 4, 0, "Error creating LDOObject for supported styles");
  }

  else
  {
    v10 = luavmldoutil_initialize_lua_vm(a1[1], a1[2], (a1 + 10), a2[2], loc_lua_log_callback, a2, a3);
    v11 = v10;
    if ((v10 & 0x80000000) != 0)
    {
      if ((v10 & 0x1FFF) != 0xA)
      {
        log_OutText(*(*a1 + 32), "FE_MSP", 4, 0, "Ignoring error from LuaVM initialize");
        return 0;
      }
    }

    else
    {
      v12 = *a2;
      if (*a2)
      {
        v17 = 0;
        IsLuaFunctionAvailable = LuaVMLDO_IsLuaFunctionAvailable(v12, a2[3], &v17);
        v11 = LH_ERROR_to_VERROR(IsLuaFunctionAvailable);
        if ((v11 & 0x80000000) != 0)
        {
          v15 = "Ignoring error from LuaVM get supported styles";
          goto LABEL_16;
        }

        if (v17 != 1)
        {
          v15 = "No Lua function to get supported styles found";
          goto LABEL_16;
        }

        LuaVMLDO_RunFunctionReturningTable(*a2, a2[3], a2[1]);
        v11 = LH_ERROR_to_VERROR(v14);
        if ((v11 & 0x80000000) != 0)
        {
          v15 = "Error executing the Lua function to get supported styles";
LABEL_16:
          log_OutText(*(*a1 + 32), "FE_MSP", 4, 0, v15);
        }
      }

      else
      {
        log_OutText(*(*a1 + 32), "FE_MSP", 4, 0, "No data to initialize LuaVM, returning");
      }
    }
  }

  return v11;
}

uint64_t msp_prepare_ldo_for_lua_style_processing(uint64_t *a1)
{
  v76 = 0;
  v77 = 0;
  v78 = 0;
  log_OutText(*(*a1 + 32), "FE_MSP", 4, 0, "Entering prepare ldo for lua processing");
  v80 = 0;
  v81 = 0;
  __s1[0] = 0;
  v83 = 0;
  v84 = 0;
  v82 = 0;
  v2 = *(a1[15] + 32);
  v3 = *(v2 + 24);
  if (v3 < *(v2 + 32))
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = *v3;
      Type = LDOObject_GetType(*v3, __s1);
      is_style_supported_by_lua = LH_ERROR_to_VERROR(Type);
      if ((is_style_supported_by_lua & 0x80000000) != 0)
      {
        goto LABEL_134;
      }

      if (!strcmp(__s1[0], "MARKER_SET_STYLE"))
      {
        StringAttribute = LDOObject_GetStringAttribute(v7, "STRARGS", &v80, &v84);
        is_style_supported_by_lua = LH_ERROR_to_VERROR(StringAttribute);
        if ((is_style_supported_by_lua & 0x80000000) != 0)
        {
          goto LABEL_134;
        }

        if (v80 == 1)
        {
          v11 = v84;
          v79 = 0;
          if (!strcmp(v84, "default"))
          {
            v79 = 1;
          }

          else
          {
            is_style_supported_by_lua = loc_is_style_supported_by_lua(a1, a1 + 20, v11, &v79);
            if ((is_style_supported_by_lua & 0x80000000) != 0)
            {
              goto LABEL_134;
            }

            is_style_supported_by_lua = loc_is_style_supported_by_lua(a1, a1 + 16, v11, &v79);
            if ((is_style_supported_by_lua & 0x80000000) != 0)
            {
              goto LABEL_134;
            }

            if (!v79)
            {
              v12 = v4 - v5;
              v13 = ((v4 - v5) >> 3) + 1;
              if (v13 > v6)
              {
                v14 = 2 * v6;
                if (2 * v6 >= v6 + 1000000)
                {
                  v14 = v6 + 1000000;
                }

                if (v14 > v13)
                {
                  v13 = v14;
                }

                if (v13 <= 8)
                {
                  v6 = 8;
                }

                else
                {
                  v6 = v13;
                }

                v15 = OOCAllocator_Realloc((a1 + 10), v5, 8 * v6, &v80 + 1);
                if (HIDWORD(v80))
                {
                  goto LABEL_27;
                }

                v5 = v15;
                v4 = (v15 + (v12 & 0x7FFFFFFF8));
              }

              *v4++ = v7;
            }
          }
        }
      }

      if (++v3 >= *(*(a1[15] + 32) + 32))
      {
        goto LABEL_26;
      }
    }
  }

  v6 = 0;
  v5 = 0;
  v4 = 0;
LABEL_26:
  v82 = v5;
  v83 = v4;
  LODWORD(v81) = v6;
  is_style_supported_by_lua = loc_delete_style_markers(a1, &v81);
  if ((is_style_supported_by_lua & 0x80000000) != 0)
  {
LABEL_134:
    v23 = is_style_supported_by_lua;
LABEL_135:
    v44 = v77;
    goto LABEL_136;
  }

LABEL_27:
  LODWORD(v84) = 0;
  __s1[0] = 0;
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v16 = *(a1[15] + 32);
  v17 = *(v16 + 24);
  if (v17 < *(v16 + 32))
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      v21 = *v17;
      v22 = LDOObject_GetType(*v17, __s1);
      v23 = LH_ERROR_to_VERROR(v22);
      if ((v23 & 0x80000000) != 0)
      {
        break;
      }

      v24 = __s1[0];
      if (!strcmp(__s1[0], "MARKER_SET_STYLE") || !strcmp(v24, "MARKER_INSERT_PROMPT") || !strcmp(v24, "MARKER_INSERT_AUDIO") || !strcmp(v24, "MARKER_SET_TYPE_OF_INPUT") || !strcmp(v24, "MARKER_SET_PINYIN"))
      {
        v25 = v18 - v19;
        v26 = ((v18 - v19) >> 3) + 1;
        if (v26 > v20)
        {
          v27 = 2 * v20;
          if (2 * v20 >= v20 + 1000000)
          {
            v27 = v20 + 1000000;
          }

          if (v27 > v26)
          {
            v26 = v27;
          }

          if (v26 <= 8)
          {
            v20 = 8;
          }

          else
          {
            v20 = v26;
          }

          v28 = OOCAllocator_Realloc((a1 + 10), v19, 8 * v20, &v84);
          v19 = v28;
          if (v84)
          {
            break;
          }

          v18 = (v28 + (v25 & 0x7FFFFFFF8));
        }

        *v18++ = v21;
      }

      if (++v17 >= *(*(a1[15] + 32) + 32))
      {
        goto LABEL_49;
      }
    }

LABEL_70:
    if (v19)
    {
      goto LABEL_71;
    }

    goto LABEL_72;
  }

  v19 = 0;
  v18 = 0;
  v23 = 0;
LABEL_49:
  if (((v18 - v19) & 0x7FFFFFFF0) == 0)
  {
    goto LABEL_70;
  }

  v29 = 0;
  v30 = v83;
  v74 = v82;
  v31 = ((v18 - v19) >> 3);
  v75 = v81;
  while (1)
  {
    v32 = *(v19 + 8 * v29);
    LDOObject_GetType(v32, __s1);
    v33 = v29 + 1;
    if (strcmp(__s1[0], "MARKER_SET_STYLE") || v33 >= v31)
    {
      goto LABEL_68;
    }

    v35 = *(v19 + 8 * v29 + 8);
    LDOObject_GetType(v35, __s1);
    if (strcmp(__s1[0], "MARKER_SET_STYLE"))
    {
      goto LABEL_68;
    }

    AbsoluteFrom = LDOLabel_GetAbsoluteFrom(v32);
    if (AbsoluteFrom != LDOLabel_GetAbsoluteFrom(v35))
    {
      goto LABEL_68;
    }

    v37 = v30 - v74;
    v38 = ((v30 - v74) >> 3) + 1;
    if (v38 > v75)
    {
      break;
    }

LABEL_67:
    *v30++ = v32;
    v83 = v30;
LABEL_68:
    v29 = v33;
    if (v31 == v33)
    {
      LODWORD(v81) = v75;
      v23 = loc_delete_style_markers(a1, &v81);
      goto LABEL_71;
    }
  }

  v39 = 2 * v75;
  if (2 * v75 >= v75 + 1000000)
  {
    v39 = v75 + 1000000;
  }

  if (v39 > v38)
  {
    v38 = v39;
  }

  if (v38 <= 8)
  {
    v40 = 8;
  }

  else
  {
    v40 = v38;
  }

  v41 = OOCAllocator_Realloc((a1 + 10), v74, 8 * v40, &v84);
  v82 = v41;
  if (!v84)
  {
    v74 = v41;
    v30 = (v41 + (v37 & 0x7FFFFFFF8));
    v75 = v40;
    goto LABEL_67;
  }

  LODWORD(v81) = v75;
LABEL_71:
  OOCAllocator_Free((a1 + 10), v19);
LABEL_72:
  if ((v23 & 0x80000000) != 0)
  {
    goto LABEL_135;
  }

  LODWORD(__s1[0]) = 0;
  v81 = 0;
  v42 = *(a1[15] + 32);
  v43 = *(v42 + 24);
  if (v43 >= *(v42 + 32))
  {
    v44 = v77;
    v45 = v78;
LABEL_91:
    v81 = 0;
    if (v45 > v44 && ((v45 - v44) & 0x7FFFFFFF8) != 0)
    {
      while (1)
      {
        v81 = *v44;
        if (!LDOLabel_GetAbsoluteFrom(v81))
        {
          break;
        }

        if (++v44 >= v45)
        {
          goto LABEL_100;
        }
      }
    }

    if (!a1[26] || (LODWORD(__s1[0]) = 0, LODWORD(v84) = 0, v55 = LDO_AddLabelOnSubstring(a1[15], "MARKER", "MARKER_SET_STYLE", __s1, &v84, &v81), is_style_supported_by_lua = LH_ERROR_to_VERROR(v55), (is_style_supported_by_lua & 0x80000000) == 0) && (LDOObject_SetU32Attribute(v81, "_MTYPE", 60), is_style_supported_by_lua = LH_ERROR_to_VERROR(v56), (is_style_supported_by_lua & 0x80000000) == 0) && (v57 = v81, v58 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(a1[26]), v59 = LDOObject_SetStringAttribute(v57, "STRARGS", v58), is_style_supported_by_lua = LH_ERROR_to_VERROR(v59), (is_style_supported_by_lua & 0x80000000) == 0))
    {
LABEL_100:
      v81 = 0;
      v82 = 0;
      __s1[0] = 0;
      __s1[1] = 0;
      v84 = 0;
      v85 = 0;
      v60 = *(a1[15] + 16);
      v61 = *(v60 + 80);
      v62 = *(v60 + 88);
      if (v61 >= v62)
      {
        v23 = 0;
        goto LABEL_135;
      }

      v63 = *(v60 + 80);
      v64 = v61;
      while (1)
      {
        v66 = *v64++;
        v65 = v66;
        v67 = v64 >= v62 ? 0 : *v64;
        v68 = v63 <= v61 ? 0 : *(v63 - 1);
        is_style_supported_by_lua = loc_find_style_suitable_for_given_node(v65, &v76, &v81);
        if ((is_style_supported_by_lua & 0x80000000) != 0)
        {
          break;
        }

        is_style_supported_by_lua = loc_find_style_suitable_for_given_node(v68, &v76, __s1);
        if ((is_style_supported_by_lua & 0x80000000) != 0)
        {
          break;
        }

        is_style_supported_by_lua = loc_find_style_suitable_for_given_node(v67, &v76, &v84);
        if ((is_style_supported_by_lua & 0x80000000) != 0)
        {
          break;
        }

        if (v81)
        {
          v69 = a1[26];
          v70 = v69 ? LHString_Erase(v69) : PNEW_LDOString_Con((a1 + 10), (a1 + 10), a1 + 26);
          is_style_supported_by_lua = LH_ERROR_to_VERROR(v70);
          if ((is_style_supported_by_lua & 0x80000000) != 0)
          {
            break;
          }

          v71 = LHString_Append(a1[26], v81);
          is_style_supported_by_lua = LH_ERROR_to_VERROR(v71);
          if ((is_style_supported_by_lua & 0x80000000) != 0)
          {
            break;
          }
        }

        if (a1[26])
        {
          v23 = 0;
          if (v85)
          {
            if (HIDWORD(v85))
            {
              v23 = loc_set_nlu_attribute(a1, v81, v65, 2);
              if ((v23 & 0x80000000) != 0)
              {
                goto LABEL_135;
              }
            }
          }

          if (!v82)
          {
            goto LABEL_128;
          }

          v23 = loc_set_nlu_attribute(a1, v81, v65, 0);
          if ((v23 & 0x80000000) != 0)
          {
            goto LABEL_135;
          }

          if (!HIDWORD(v82))
          {
            if (__s1[0])
            {
              v23 = loc_set_nlu_attribute(a1, __s1[0], v65, 2);
              if ((v23 & 0x80000000) != 0)
              {
                goto LABEL_135;
              }
            }
          }

          if (!v82)
          {
LABEL_128:
            if (!v85 || !HIDWORD(v85))
            {
              v72 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(a1[26]);
              v23 = loc_set_nlu_attribute(a1, v72, v65, 1);
            }
          }
        }

        else
        {
          v23 = 0;
        }

        if (v64 < v62)
        {
          v63 = v64;
          if ((v23 & 0x80000000) == 0)
          {
            continue;
          }
        }

        goto LABEL_135;
      }
    }

    goto LABEL_134;
  }

  v44 = v77;
  v45 = v78;
  v46 = v76;
  while (1)
  {
    v47 = *v43;
    v48 = LDOObject_GetType(*v43, &v81);
    v49 = LH_ERROR_to_VERROR(v48);
    if ((v49 & 0x80000000) != 0)
    {
      break;
    }

    if (!strcmp(v81, "MARKER_SET_STYLE"))
    {
      v50 = v45 - v44;
      v51 = ((v45 - v44) >> 3) + 1;
      if (v51 > v46)
      {
        v52 = 2 * v46;
        if (2 * v46 >= v46 + 1000000)
        {
          v52 = v46 + 1000000;
        }

        if (v52 > v51)
        {
          v51 = v52;
        }

        if (v51 <= 8)
        {
          v53 = 8;
        }

        else
        {
          v53 = v51;
        }

        v54 = OOCAllocator_Realloc((a1 + 10), v44, 8 * v53, __s1);
        v44 = v54;
        if (LODWORD(__s1[0]))
        {
LABEL_89:
          v77 = v44;
          v78 = v45;
          LODWORD(v76) = v46;
          goto LABEL_91;
        }

        v45 = (v54 + (v50 & 0x7FFFFFFF8));
        v46 = v53;
      }

      *v45++ = v47;
    }

    if (++v43 >= *(*(a1[15] + 32) + 32))
    {
      goto LABEL_89;
    }
  }

  v23 = v49;
  v77 = v44;
  v78 = v45;
LABEL_136:
  LODWORD(v76) = 0;
  if (v44)
  {
    OOCAllocator_Free((a1 + 10), v44);
  }

  return v23;
}

uint64_t msp_prepare_voice_specific_msp_luavm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *MEMORY[0x1E69E9840];
  memset(v13, 0, sizeof(v13));
  *(a1 + 176) = "runVoiceMsp";
  *(a1 + 184) = "getSupportedStylesVoiceMsp";
  voice_specific_broker_string = loc_generate_voice_specific_broker_string(a1, v13, 1);
  if ((voice_specific_broker_string & 0x80000000) != 0)
  {
    return voice_specific_broker_string;
  }

  v10 = loc_prepare_luavm(a1, (a1 + 160), v13);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  if (*(a1 + 160))
  {
    v11 = "Voice-specific MSP data available in the package";
LABEL_5:
    *(a1 + 192) = 1;
    log_OutText(*(*a1 + 32), "FE_MSP", 4, 0, v11);
    return v10;
  }

  log_OutText(*(*a1 + 32), "FE_MSP", 4, 0, "No voice-specific MSP data available in the package");
  voice_specific_broker_string = loc_generate_voice_specific_broker_string(a1, v13, 0);
  if ((voice_specific_broker_string & 0x80000000) != 0)
  {
    return voice_specific_broker_string;
  }

  v10 = loc_prepare_luavm(a1, (a1 + 160), v13);
  if ((v10 & 0x80000000) == 0)
  {
    if (*(a1 + 160))
    {
      v11 = "Voice-specific MSP data available in the stage";
      goto LABEL_5;
    }

    log_OutText(*(*a1 + 32), "FE_MSP", 4, 0, "No voice-specific MSP data available in the stage");
  }

  return v10;
}

uint64_t loc_generate_voice_specific_broker_string(uint64_t *a1, char *a2, int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = 0;
  __s = 0;
  memset(v17, 0, sizeof(v17));
  memset(v16, 0, sizeof(v16));
  Str = paramc_ParamGetStr(*(*a1 + 40), "langcode", &__s);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v7 = paramc_ParamGetStr(*(*a1 + 40), "voice", &v14);
  if ((v7 & 0x80000000) == 0)
  {
    __strncat_chk();
    __strncat_chk();
    strlen(__s);
    __strncat_chk();
    __strncat_chk();
    v8 = v17[0];
    if (LOBYTE(v17[0]))
    {
      v9 = v17 + 1;
      do
      {
        *(v9 - 1) = __tolower(v8);
        v10 = *v9++;
        v8 = v10;
      }

      while (v10);
    }

    if (a3 == 1)
    {
      v11 = *a1;
      v12 = v16;
      v7 = brokeraux_ComposeBrokerString(v11, v17, 0, 0, 0, 0, 0, v16, 0x100uLL);
      if ((v7 & 0x80000000) != 0)
      {
        return v7;
      }
    }

    else
    {
      v12 = v17;
    }

    strcpy(a2, v12);
  }

  return v7;
}

uint64_t loc_delete_style_markers(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    v6 = 0;
  }

  else
  {
    do
    {
      v5 = LDO_RemoveLabel(*(a1 + 120), *v4);
      v6 = LH_ERROR_to_VERROR(v5);
      if ((v6 & 0x80000000) != 0)
      {
        break;
      }

      ++v4;
    }

    while (v4 < *(a2 + 16));
    v4 = *(a2 + 8);
  }

  *a2 = 0;
  if (v4)
  {
    OOCAllocator_Free(a1 + 80, v4);
    *(a2 + 8) = 0;
  }

  *(a2 + 16) = 0;
  return v6;
}

uint64_t loc_is_style_supported_by_lua(uint64_t a1, void *a2, char *a3, _DWORD *a4)
{
  v10 = 0;
  if (!*a2)
  {
    return 0;
  }

  BoolAttribute = LDOObject_GetBoolAttribute(a2[1], a3, &v10 + 1, &v10);
  v7 = LH_ERROR_to_VERROR(BoolAttribute);
  if ((v7 & 0x80000000) != 0)
  {
    log_OutText(*(*a1 + 32), "FE_MSP", 4, 0, "Error getting LDOObject BOOLean attribute");
  }

  else if (HIDWORD(v10) == 1 && v10 == 1)
  {
    *a4 = 1;
  }

  return v7;
}

uint64_t loc_find_style_suitable_for_given_node(size_t a1, uint64_t a2, uint64_t a3)
{
  v17 = 0;
  *(a3 + 8) = 0;
  *(a3 + 12) = 0;
  v3 = (a3 + 8);
  if (!a1)
  {
    return 0;
  }

  v7 = LDOTreeNode_ComputeAbsoluteFrom(a1, &v17 + 1);
  v8 = LH_ERROR_to_VERROR(v7);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v9 = LDOTreeNode_ComputeAbsoluteTo(a1, &v17);
  v10 = LH_ERROR_to_VERROR(v9);
  if ((v10 & 0x80000000) == 0)
  {
    for (i = *(a2 + 8); i < *(a2 + 16); ++i)
    {
      v12 = *i;
      AbsoluteFrom = LDOLabel_GetAbsoluteFrom(*i);
      LDOLabel_GetAbsoluteFrom(v12);
      if (HIDWORD(v17) == AbsoluteFrom)
      {
        *(a3 + 12) = 1;
      }

      else if (!*(a3 + 12) && (AbsoluteFrom < HIDWORD(v17) || AbsoluteFrom > v17))
      {
        continue;
      }

      StringAttribute = LDOObject_GetStringAttribute(v12, "STRARGS", v3, a3);
      v10 = LH_ERROR_to_VERROR(StringAttribute);
      if ((v10 & 0x80000000) != 0 || *v3)
      {
        return v10;
      }
    }
  }

  return v10;
}

uint64_t loc_set_nlu_attribute(uint64_t a1, const char *a2, uint64_t *a3, int a4)
{
  result = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  if (a2)
  {
    if (a3)
    {
      v9 = PNEW_LDOString_Con(a1 + 80, a1 + 80, &v20);
      result = LH_ERROR_to_VERROR(v9);
      if ((result & 0x80000000) == 0)
      {
        v10 = LHString_Append(v20, STYLE_KEYS[a4]);
        result = LH_ERROR_to_VERROR(v10);
        if ((result & 0x80000000) == 0)
        {
          v11 = LHString_Append(v20, a2);
          result = LH_ERROR_to_VERROR(v11);
          if ((result & 0x80000000) == 0)
          {
            v12 = LHString_Append(v20, ";");
            result = LH_ERROR_to_VERROR(v12);
            if ((result & 0x80000000) == 0)
            {
              StringAttribute = LDOObject_GetStringAttribute(a3, "NLU", &v18, &v19);
              result = LH_ERROR_to_VERROR(StringAttribute);
              if ((result & 0x80000000) == 0)
              {
                if (!v18 || (v14 = LHString_Append(v20, v19), result = LH_ERROR_to_VERROR(v14), (result & 0x80000000) == 0))
                {
                  v15 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v20);
                  v16 = LDOObject_SetStringAttribute(a3, "NLU", v15);
                  result = LH_ERROR_to_VERROR(v16);
                }
              }
            }
          }
        }
      }
    }
  }

  do
  {
    if (!v20)
    {
      break;
    }

    v17 = OOC_PlacementDeleteObject(a1 + 80, v20);
    result = LH_ERROR_to_VERROR(v17);
  }

  while ((result & 0x80000000) != 0);
  return result;
}

uint64_t tbmeg_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2686459905;
  }

  result = 0;
  *a2 = &ITbmeg;
  return result;
}

uint64_t tbmeg_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t *a5)
{
  v5 = 2686459911;
  if (a5)
  {
    *a5 = safeh_GetNullHandle();
    a5[1] = v9;
    v20 = 0;
    v21 = 0;
    v19 = 0;
    if ((InitRsrcFunction(a3, a4, &v21) & 0x80000000) == 0)
    {
      v10 = heap_Calloc(*(v21 + 8), 1, 136);
      if (v10)
      {
        v11 = v10;
        *v10 = a3;
        v10[1] = a4;
        v10[4] = safeh_GetNullHandle();
        *(v11 + 40) = v12;
        *(v11 + 120) = safeh_GetNullHandle();
        *(v11 + 128) = v13;
        Object = objc_GetObject(*(v21 + 48), "SYNTHSTREAM", &v20);
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_13;
        }

        *(v11 + 48) = *(v20 + 8);
        Object = nuance_pcre_ObjOpen(a3, a4, v11 + 120);
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_13;
        }

        v15 = paramc_ParamGetUInt(*(v21 + 40), "ppmaxpcreframeblocks", &v19) < 0 ? 30 : v19;
        UInt = paramc_ParamGetUInt(*(v21 + 40), "ppnumframesinblock", &v19);
        v17 = v19;
        if (UInt < 0)
        {
          v17 = 50;
        }

        Object = nuance_pcre_Init(*(v11 + 120), *(v11 + 128), v15, v17);
        if ((Object & 0x80000000) != 0)
        {
LABEL_13:
          v5 = Object;
          tbmeg_pObjClose(v11);
        }

        else
        {
          v5 = 0;
          *a5 = v11;
          *(a5 + 2) = 1029;
        }
      }

      else
      {
        return 2686459914;
      }
    }
  }

  return v5;
}

uint64_t tbmeg_ObjClose(void *a1, uint64_t a2)
{
  v2 = a2;
  result = safeh_HandleCheck(a1, a2, 1029, 136);
  if ((result & 0x80000000) == 0)
  {
    tbmeg_ProcessEnd(a1, v2);

    return tbmeg_pObjClose(a1);
  }

  return result;
}

uint64_t tbmeg_ResourceTypes(uint64_t a1, int a2, void *a3)
{
  result = safeh_HandleCheck(a1, a2, 1029, 136);
  if ((result & 0x80000000) == 0)
  {
    *a3 = tbmeg_ResourceTypes_SZ_TBMEG_CONTENT_TYPES;
  }

  return result;
}

uint64_t tbmeg_ResourceLoad(void *a1, uint64_t a2, char *a3, const char *a4, char *a5, int a6, uint64_t *a7)
{
  *&__n[1] = a5;
  __n[0] = a6;
  v7 = 2686459911;
  v28 = 0;
  v29 = 0;
  if (a3 && a7)
  {
    v10 = a5;
    v11 = a4;
    v13 = a2;
    if (a4)
    {
      if (!a5 && a6)
      {
        return v7;
      }
    }

    else if (!a5 || !a6)
    {
      return v7;
    }

    v15 = safeh_HandleCheck(a1, a2, 1029, 136);
    if ((v15 & 0x80000000) != 0)
    {
      return v15;
    }

    *a7 = 0;
    *(a7 + 2) = 0;
    inited = InitRsrcFunction(*a1, a1[1], &v29);
    if ((inited & 0x80000000) == 0)
    {
      BinaryDataBroker = inited;
      NullHandle = safeh_GetNullHandle();
      v19 = a1 + 4;
      if (!safeh_HandlesEqual(a1[4], a1[5], NullHandle, v20))
      {
        log_OutPublic(v29[4], &modInfoTbm, 67001, 0);
        return 2686459928;
      }

      if (!v11 || v10)
      {
        if (v10 && a6)
        {
          goto LABEL_26;
        }
      }

      else if (strstr(a3, "application/x-vocalizer-pt+bin") && strstr(a3, ";loader=broker"))
      {
        BinaryDataBroker = pts_ReadBinaryDataBroker(*a1, a1[1], v11, a1 + 4);
        if ((BinaryDataBroker & 0x80000000) == 0)
        {
          *a7 = *v19;
          goto LABEL_33;
        }

        goto LABEL_37;
      }

      v21 = brk_DataOpenEx(v29[3], v11, 0, &v28);
      if ((v21 & 0x80000000) != 0)
      {
        BinaryDataBroker = v21;
        goto LABEL_37;
      }

      BinaryDataBroker = brk_DataMapEx(v29[3], v28, 0, __n, &__n[1]);
      if ((BinaryDataBroker & 0x80000000) != 0)
      {
LABEL_37:
        v26 = v28;
        if (*&__n[1])
        {
          brk_DataUnmap(v29[3], v28, *&__n[1]);
          v26 = v28;
        }

        if (v26)
        {
          brk_DataClose(v29[3], v26);
        }

        if ((BinaryDataBroker & 0x80000000) != 0)
        {
          tbmeg_ResourceUnload(a1, v13, *a7, a7[1]);
        }

        return BinaryDataBroker;
      }

      v22 = heap_Alloc(v29[1], __n[0]);
      a1[2] = v22;
      if (!v22)
      {
        return 2686459914;
      }

      memcpy(v22, *&__n[1], __n[0]);
      v10 = a1[2];
      *&__n[1] = v10;
LABEL_26:
      if (strstr(a3, "application/x-vocalizer-pt+text"))
      {
        TextData = pts_ReadTextData(*a1, a1[1], v10, __n[0], a1 + 4, 0, 0);
      }

      else
      {
        if (!strstr(a3, "application/x-vocalizer-pt+bin"))
        {
          goto LABEL_32;
        }

        TextData = pts_ReadBinaryDataBuffer(*a1, a1[1], v10, __n[0], a1 + 4);
      }

      BinaryDataBroker = TextData;
      if ((TextData & 0x80000000) != 0)
      {
        goto LABEL_37;
      }

LABEL_32:
      *a7 = *v19;
      if (!v11)
      {
LABEL_34:
        v11 = "in-memory PTS";
LABEL_35:
        v24 = strlen(v11);
        v25 = heap_Alloc(v29[1], (v24 + 1));
        a1[3] = v25;
        if (v25)
        {
          strcpy(v25, v11);
          logLoadTemplateSet(v29);
          goto LABEL_37;
        }

        return 2686459914;
      }

LABEL_33:
      if (*v11)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  return v7;
}

uint64_t tbmeg_ResourceUnload(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v21 = 0;
  v6 = pts_HandleCheck(a3, a4);
  if ((v6 & 0x80000000) != 0)
  {
    return v6;
  }

  v6 = safeh_HandleCheck(a1, a2, 1029, 136);
  if ((v6 & 0x80000000) != 0)
  {
    return v6;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v21);
  if ((inited & 0x80000000) != 0)
  {
    return 2686459911;
  }

  v8 = inited;
  v9 = v21;
  if (log_HasTraceTuningDataSubscriber(*(v21 + 32)))
  {
    log_OutTraceTuningData(*(v9 + 32), 701, "%s%s %s%s", v10, v11, v12, v13, v14, "BEG");
  }

  NullHandle = safeh_GetNullHandle();
  if (!safeh_HandlesEqual(*(a1 + 32), *(a1 + 40), NullHandle, v16))
  {
    pts_Free(*(a1 + 32), *(a1 + 40));
    *(a1 + 32) = safeh_GetNullHandle();
    *(a1 + 40) = v17;
  }

  v18 = *(a1 + 24);
  if (v18)
  {
    heap_Free(*(v21 + 8), v18);
    *(a1 + 24) = 0;
  }

  v19 = *(a1 + 16);
  if (v19)
  {
    heap_Free(*(v21 + 8), v19);
    *(a1 + 16) = 0;
  }

  return v8;
}

uint64_t tbmeg_ProcessStart(_WORD **a1, uint64_t a2, _WORD *a3, _WORD *a4)
{
  v6 = a2;
  v16 = 0;
  v8 = 2686459911;
  if ((safeh_HandleCheck(a1, a2, 1029, 136) & 0x80000000) != 0)
  {
    return 2686459912;
  }

  if ((InitRsrcFunction(*a1, a1[1], &v16) & 0x80000000) == 0)
  {
    a1[7] = a3;
    a1[8] = a4;
    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[4], a1[5], NullHandle, v10))
    {
      v12 = 0;
      do
      {
        v13 = (*(a1[6] + 8))(a3, a4, 514, tbmeg_ProcessStart_szInput[v12], 0, 0, a1 + 13);
        if ((v13 & 0x80000000) == 0)
        {
          break;
        }
      }

      while (v12++ != 6);
      if (v13 < 0)
      {
        a1[13] = 0;
      }

      v15 = (*(a1[6] + 8))(a3, a4, 514, "text/plain;charset=utf-8", 0, 0, a1 + 9);
      if ((v15 & 0x80000000) != 0)
      {
        v8 = v15;
      }

      else
      {
        v8 = (*(a1[6] + 8))(a3, a4, 514, "text/plain;charset=utf-8", 0, 1, a1 + 11);
        if ((v8 & 0x80000000) == 0)
        {
          return v8;
        }
      }

      tbmeg_ProcessEnd(a1, v6);
      return v8;
    }

    return 0;
  }

  return v8;
}

uint64_t tbmeg_Process(void *a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v42 = 0;
  __s = 0;
  __src = 0;
  __n = 0;
  __dst = 0;
  v7 = safeh_HandleCheck(a1, a2, 1029, 136);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v8 = 2686459911;
  if ((InitRsrcFunction(*a1, a1[1], &v42) & 0x80000000) == 0)
  {
    if (!a1[9] || !a1[11])
    {
      v8 = 0;
LABEL_22:
      v9 = 1;
LABEL_23:
      *a5 = v9;
      return v8;
    }

    *a5 = 0;
    v7 = (*(a1[6] + 144))(a1[9], a1[10], &__n + 4, &__n);
    if ((v7 & 0x80000000) == 0)
    {
      v9 = __n;
      if (!__n)
      {
        v8 = 0;
        goto LABEL_23;
      }

      v7 = (*(a1[6] + 88))(a1[9], a1[10], &__src, &__n + 4);
      if ((v7 & 0x80000000) == 0)
      {
        v10 = v42;
        v11 = __src;
        v12 = HIDWORD(__n);
        if (log_HasTraceTuningDataSubscriber(*(v42 + 32)))
        {
          log_OutTraceTuningData(*(v10 + 32), 702, "%s%s", v13, v14, v15, v16, v17, "BEG");
          log_OutTraceTuningDataBinary(*(v10 + 32), 703, "", "text/plain;charset=utf-8", v11, v12);
        }

        v18 = HIDWORD(__n);
        if (HIDWORD(__n) >= 3 && *__src == 239 && *(__src + 1) == 187 && *(__src + 2) == 191)
        {
          v19 = (*(a1[6] + 96))(a1[9], a1[10], 3);
          if ((v19 & 0x80000000) != 0)
          {
            v35 = v19;
            v26 = 0;
            goto LABEL_39;
          }

          v18 = HIDWORD(__n) - 3;
          HIDWORD(__n) -= 3;
          __src = __src + 3;
        }

        v25 = heap_Alloc(*(v42 + 8), (v18 + 1));
        if (!v25)
        {
          return 2686459914;
        }

        v26 = v25;
        memcpy(v25, __src, HIDWORD(__n));
        v26[HIDWORD(__n)] = 0;
        v27 = (*(a1[6] + 96))(a1[9], a1[10], HIDWORD(__n));
        if ((v27 & 0x80000000) != 0)
        {
          goto LABEL_38;
        }

        __src = 0;
        NullHandle = safeh_GetNullHandle();
        if (safeh_HandlesEqual(a1[4], a1[5], NullHandle, v29))
        {
          v30 = 0;
          __s = v26;
          v31 = v26;
        }

        else
        {
          pts_Apply(a1[4], a1[5], *a1, a1[1], a1[15], a1[16], v26, &__s);
          v31 = __s;
          v30 = v26;
          if (!__s)
          {
            goto LABEL_33;
          }
        }

        v33 = strlen(v31);
        if (v33)
        {
          v34 = (*(a1[6] + 112))(a1[11], a1[12], &__dst, v33);
          if ((v34 & 0x80000000) != 0)
          {
            v35 = v34;
            v26 = v30;
LABEL_39:
            log_OutTraceTuningData(*(v42 + 32), 4, "%s%s %s%u", v20, v21, v22, v23, v24, "END");
            if (v26)
            {
              heap_Free(*(v42 + 8), v26);
            }

            if (__s)
            {
              heap_Free(*(v42 + 8), __s);
            }

            v36 = (*(a1[6] + 72))(a1[11], a1[12]);
            if (v36 >= 0)
            {
              v8 = v35;
            }

            else
            {
              v8 = v36;
            }

            a1[11] = safeh_GetNullHandle();
            a1[12] = v37;
            goto LABEL_22;
          }

          if (__s)
          {
            memcpy(__dst, __s, v33);
          }

          logProcessOutput(v42, __dst, v33);
          v26 = v30;
          goto LABEL_37;
        }

        v26 = v30;
LABEL_33:
        v27 = (*(a1[6] + 112))(a1[11], a1[12], &__dst, 1);
        if ((v27 & 0x80000000) != 0)
        {
LABEL_38:
          v35 = v27;
          goto LABEL_39;
        }

        *__dst = 0;
        v33 = 1;
LABEL_37:
        v27 = (*(a1[6] + 120))(a1[11], a1[12], v33);
        goto LABEL_38;
      }
    }

    return v7;
  }

  return v8;
}

uint64_t tbmeg_ProcessEnd(void *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 1029, 136);
  if ((v3 & 0x80000000) == 0)
  {
    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[13], a1[14], NullHandle, v5))
    {
      v6 = (*(a1[6] + 72))(a1[13], a1[14]);
      if (v6 >= 0)
      {
        v3 = v3;
      }

      else
      {
        v3 = v6;
      }
    }

    a1[13] = safeh_GetNullHandle();
    a1[14] = v7;
    v8 = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[9], a1[10], v8, v9))
    {
      v10 = (*(a1[6] + 72))(a1[9], a1[10]);
      if (v10 >= 0)
      {
        v3 = v3;
      }

      else
      {
        v3 = v10;
      }
    }

    a1[9] = safeh_GetNullHandle();
    a1[10] = v11;
    v12 = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[11], a1[12], v12, v13))
    {
      v14 = (*(a1[6] + 72))(a1[11], a1[12]);
      if (v14 >= 0)
      {
        v3 = v3;
      }

      else
      {
        v3 = v14;
      }
    }

    a1[11] = safeh_GetNullHandle();
    a1[12] = v15;
  }

  return v3;
}

uint64_t tbmeg_pObjClose(uint64_t a1)
{
  v1 = 2686459911;
  v10 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v10) & 0x80000000) == 0)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      heap_Free(*(v10 + 8), v3);
      *(a1 + 24) = 0;
    }

    if (*(a1 + 48))
    {
      objc_ReleaseObject(*(v10 + 48), "SYNTHSTREAM");
    }

    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(*(a1 + 32), *(a1 + 40), NullHandle, v5))
    {
      pts_Free(*(a1 + 32), *(a1 + 40));
      *(a1 + 32) = safeh_GetNullHandle();
      *(a1 + 40) = v6;
    }

    v7 = *(a1 + 16);
    if (v7)
    {
      heap_Free(*(v10 + 8), v7);
      *(a1 + 16) = 0;
    }

    v8 = nuance_pcre_DeInit(*(a1 + 120), *(a1 + 128));
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    v8 = nuance_pcre_ObjClose(*(a1 + 120), *(a1 + 128));
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    else
    {
      heap_Free(*(v10 + 8), a1);
      return 0;
    }
  }

  return v1;
}

uint64_t logLoadTemplateSet(uint64_t a1)
{
  result = log_HasTraceTuningDataSubscriber(*(a1 + 32));
  if (result)
  {
    return log_OutTraceTuningData(*(a1 + 32), 700, "%s%s %s%s %s%s", v3, v4, v5, v6, v7, "BEG");
  }

  return result;
}

uint64_t logProcessOutput(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = log_HasTraceTuningDataSubscriber(*(a1 + 32));
  if (result)
  {
    log_OutTraceTuningDataBinary(*(a1 + 32), 704, "", "text/plain;charset=utf-8", a2, a3);
    return log_OutTraceTuningData(*(a1 + 32), 702, "%s%s", v7, v8, v9, v10, v11, "END");
  }

  return result;
}

uint64_t pts_strclone(uint64_t a1, char **a2, char *__s)
{
  v3 = 2686459911;
  if (a2)
  {
    v7 = strlen(__s);
    v8 = heap_Alloc(a1, v7 + 1);
    *a2 = v8;
    if (v8)
    {
      strcpy(v8, __s);
      return 0;
    }

    else
    {
      return 2686459914;
    }
  }

  return v3;
}

uint64_t numberOfOccurrences(char *a1, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  v4 = strlen(__s);
  v5 = strstr(a1, __s);
  if (!v5)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    ++v6;
    v5 = strstr(&v5[v4], __s);
  }

  while (v5);
  return v6;
}

uint64_t fillInSlots(uint64_t a1, char *a2, char *a3, unint64_t a4, int a5, char *a6, void *a7, const char **a8)
{
  v9 = a7;
  v58 = 0;
  v59 = 0;
  if (a7)
  {
    *a7 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  appended = ssftstring_ObjOpen(*(a1 + 8), &v59);
  if ((appended & 0x80000000) != 0)
  {
LABEL_75:
    v16 = appended;
  }

  else
  {
    v52 = a4;
    v53 = a1;
    v16 = ssftstring_ObjOpen(*(a1 + 8), &v58);
    if ((v16 & 0x80000000) == 0)
    {
      v17 = strchr(a2, 36);
      if (v17)
      {
        v18 = v17;
        v19 = v9;
        v20 = 0;
        v51 = v19;
        v21 = a6 | v19;
        v22 = v21 != 0;
        if (v21)
        {
          LOBYTE(v23) = 1;
        }

        else
        {
          v23 = a8 == 0;
        }

        v54 = v22;
        v55 = v23;
        v57 = a8;
        while (1)
        {
          v24 = v18 + 1;
          if (!v18[1])
          {
            if (a8)
            {
              *a8 = "use '$$' for literal dollar";
            }

            goto LABEL_89;
          }

          v25 = v18 - a2;
          if (a6)
          {
            memcpy(&a6[v20], a2, v18 - a2);
            a6[v20 + v25] = 0;
            v20 += v25;
            if (*v24 != 36)
            {
              goto LABEL_18;
            }

            *&a6[strlen(a6)] = 36;
          }

          else
          {
            v20 += v25;
            if (v18[1] != 36)
            {
LABEL_18:
              v26 = v59;
              appended = ssftstring_Clear(v59);
              if ((appended & 0x80000000) != 0)
              {
                goto LABEL_75;
              }

              if (a8)
              {
                *a8 = 0;
              }

              v27 = *v24;
              v28 = v27;
              if (v27 == 123)
              {
                v28 = v18[2];
                v24 = v18 + 2;
              }

              if (v28)
              {
                v29 = 0;
                v30 = v24;
                while (1)
                {
                  v31 = v28;
                  if (!memchr("0123456789", v28, 0xBuLL))
                  {
                    break;
                  }

                  v32 = 10 * v29 + v31 - 48;
                  if (v32 < v29)
                  {
                    v32 = 0;
                    v34 = 0;
                    v35 = "slot number a lot too big";
                    goto LABEL_36;
                  }

                  v33 = *++v30;
                  LOBYTE(v28) = v33;
                  v29 = 10 * v29 + v31 - 48;
                  if (!v33)
                  {
                    goto LABEL_31;
                  }
                }

                v32 = v29;
LABEL_31:
                v34 = v30 - v24;
                if (v55)
                {
                  goto LABEL_41;
                }

                v36 = "";
                *v57 = "";
                if (v32)
                {
                  v35 = "slot number too big";
                  if (v32 > v52)
                  {
                    goto LABEL_39;
                  }

                  goto LABEL_40;
                }

                v35 = "invalid slot number";
LABEL_39:
                *v57 = v35;
                v36 = v35;
LABEL_40:
                if (*v36)
                {
                  goto LABEL_89;
                }
              }

              else
              {
                v32 = 0;
                v34 = 0;
                v35 = "invalid slot number";
LABEL_36:
                if (!v55)
                {
                  goto LABEL_39;
                }
              }

LABEL_41:
              a2 = &v24[v34];
              if (v27 == 123)
              {
                if (*a2 != 58)
                {
                  v48 = v57;
                  if (v57)
                  {
                    v49 = "bad slot reference: ':' expected";
                    goto LABEL_88;
                  }

                  goto LABEL_89;
                }

                v37 = strchr(a2 + 1, 125);
                if (!v37)
                {
                  v48 = v57;
                  if (v57)
                  {
                    v49 = "bad slot reference: '}' expected";
                    goto LABEL_88;
                  }

LABEL_89:
                  v16 = 2686459908;
                  goto LABEL_90;
                }

                v38 = v37;
                appended = ssftstring_AppendCStrN(v26, a2 + 1, v37 - (a2 + 1));
                if ((appended & 0x80000000) != 0)
                {
                  goto LABEL_75;
                }

                a2 = v38 + 1;
              }

              if (!a5 && ssftstring_Size(v59))
              {
                v48 = v57;
                if (v57)
                {
                  v49 = "slot type mapping not allowed";
LABEL_88:
                  *v48 = v49;
                }

                goto LABEL_89;
              }

              if (v54)
              {
                v39 = v58;
                v40 = v59;
                v60 = 0;
                v61 = 0;
                v41 = a3;
                if (v32 >= 2)
                {
                  v42 = v32 - 1;
                  v41 = a3;
                  do
                  {
                    v41 += strlen(v41) + 1;
                    if (a5)
                    {
                      v41 += strlen(v41) + 1;
                    }

                    --v42;
                  }

                  while (v42);
                }

                v16 = ssftstring_AssignCStr(v58, v41);
                if ((v16 & 0x80000000) != 0)
                {
                  a8 = v57;
                }

                else
                {
                  a8 = v57;
                  if (ssftstring_Size(v40))
                  {
                    TnSequence = ssftstring_ObjOpen(*(v53 + 8), &v61);
                    if ((TnSequence & 0x80000000) == 0)
                    {
                      TnSequence = ssftstring_ObjOpen(*(v53 + 8), &v60);
                      if ((TnSequence & 0x80000000) == 0)
                      {
                        v44 = strlen(v41);
                        TnSequence = makeTnSequence(&v41[v44 + 1], v61);
                        if ((TnSequence & 0x80000000) == 0)
                        {
                          v45 = ssftstring_CStr(v40);
                          TnSequence = makeTnSequence(v45, v60);
                          if ((TnSequence & 0x80000000) == 0)
                          {
                            TnSequence = ssftstring_ReplaceAllBy(v39, v61, v60);
                          }
                        }
                      }
                    }

                    v16 = TnSequence;
                  }
                }

                if (v61)
                {
                  ssftstring_ObjClose(v61);
                }

                if (v60)
                {
                  ssftstring_ObjClose(v60);
                }

                if ((v16 & 0x80000000) != 0)
                {
                  goto LABEL_90;
                }

                if (a6)
                {
                  v46 = ssftstring_CStr(v58);
                  strcat(a6, v46);
                }

                v20 += ssftstring_Size(v58);
              }

              else
              {
                v16 = 0;
                a8 = v57;
              }

              goto LABEL_72;
            }
          }

          ++v20;
          a2 = v18 + 2;
LABEL_72:
          v18 = strchr(a2, 36);
          if (!v18)
          {
            v47 = v20 + 1;
            v9 = v51;
            if (a6)
            {
              goto LABEL_77;
            }

            goto LABEL_78;
          }
        }
      }

      v47 = 1;
      if (a6)
      {
LABEL_77:
        strcat(a6, a2);
      }

LABEL_78:
      if (v9)
      {
        *v9 = v47 + strlen(a2);
      }
    }
  }

LABEL_90:
  if (v59)
  {
    ssftstring_ObjClose(v59);
  }

  if (v58)
  {
    ssftstring_ObjClose(v58);
  }

  return v16;
}

uint64_t pts_CheckDataConsistency(uint64_t a1)
{
  if (!*(a1 + 40))
  {
    return 0;
  }

  if (*(a1 + 48))
  {
    if (*(a1 + 56))
    {
      if (*(a1 + 80))
      {
        v2 = *(a1 + 72);
        if (*(a1 + 64))
        {
          if (v2)
          {
            if (*(a1 + 88) || !*(a1 + 96))
            {
              v3 = 2686459922;
              log_OutText(*(*a1 + 32), &modInfoTBM, 0, 0, "Suspiciously initialized inputs");
            }

            else
            {
              if (!*(a1 + 104) && *(a1 + 112))
              {
                if (!*(a1 + 120))
                {
                  v3 = 2686459922;
                  log_OutText(*(*a1 + 32), &modInfoTBM, 0, 0, "Uninitialized input cache");
                  return v3;
                }

                return 0;
              }

              v3 = 2686459922;
              log_OutText(*(*a1 + 32), &modInfoTBM, 0, 0, "Suspiciously initialized outputs");
            }
          }

          else
          {
            v3 = 2686459922;
            log_OutText(*(*a1 + 32), &modInfoTBM, 0, 0, "Missing handle on input offsets");
          }
        }

        else
        {
          if (v2)
          {
            log_OutText(*(*a1 + 32), &modInfoTBM, 1, 0, "Suspiciously defined handle on input offsets");
          }

          if (*(a1 + 88) && !*(a1 + 96))
          {
            if (!*(a1 + 104) || *(a1 + 112))
            {
              v3 = 2686459922;
              log_OutText(*(*a1 + 32), &modInfoTBM, 0, 0, "uninitialized outputs");
              return v3;
            }

            if (*(a1 + 120) || *(a1 + 128))
            {
              log_OutText(*(*a1 + 32), &modInfoTBM, 1, 0, "Suspiciously configured input cache");
            }

            return 0;
          }

          v3 = 2686459922;
          log_OutText(*(*a1 + 32), &modInfoTBM, 0, 0, "uninitialized inputs");
        }
      }

      else
      {
        v3 = 2686459922;
        log_OutText(*(*a1 + 32), &modInfoTBM, 0, 0, "uninitialized input offsets");
      }
    }

    else
    {
      v3 = 2686459922;
      log_OutText(*(*a1 + 32), &modInfoTBM, 0, 0, "unknown number of bytes of output sizes");
    }
  }

  else
  {
    v3 = 2686459922;
    log_OutText(*(*a1 + 32), &modInfoTBM, 0, 0, "unknown number of bytes per output offset");
  }

  return v3;
}

uint64_t pts_SetFormat(char **a1, char *__s1)
{
  if (!a1)
  {
    return 2686459911;
  }

  a1[4] = 0;
  if (strcmp(__s1, "Binary Template 1.0"))
  {
    if (!strcmp(__s1, "Binary Template 2.0"))
    {
      *(a1 + 8) = 1;
      goto LABEL_8;
    }

    if (!strcmp(__s1, "Binary Template 2.1"))
    {
      log_OutText(*(*a1 + 4), &modInfoTBM, 0, 0, "'%s' not supported anymore", "Binary Template 2.1");
    }

    else if (!strcmp(__s1, "Binary Template 2.2"))
    {
      a1[4] = 0x100000001;
      goto LABEL_8;
    }

    return 2686459911;
  }

LABEL_8:
  v4 = *(*a1 + 1);

  return pts_strclone(v4, a1 + 1, __s1);
}

uint64_t pts_ReadBinaryDataBroker(_WORD *a1, uint64_t a2, const char *a3, uint64_t *a4)
{
  v19 = 0;
  v20 = 0;
  v4 = 2686459911;
  v18 = 0;
  if (a3 && a4 && (InitRsrcFunction(a1, a2, &v19) & 0x80000000) == 0)
  {
    *a4 = safeh_GetNullHandle();
    a4[1] = v9;
    v10 = ssftriff_reader_ObjOpen(a1, a2, 0, a3, "PT10", 131846, &v18);
    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_17;
    }

    v10 = pts_ReadBinaryData(v19, v18, 0, &v20);
    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_17;
    }

    v11 = v20;
    v10 = brk_DataOpen(*(v19 + 24));
    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_17;
    }

    if (!*(v11 + 88))
    {
      v12 = *(v11 + 128);
      if (v12)
      {
        v13 = *(v11 + 40);
        while (!(v13 >> (v12 - 1)))
        {
          *(v11 + 128) = --v12;
          if (!v12)
          {
            v12 = 0;
            break;
          }
        }
      }

      v14 = heap_Calloc(*(v19 + 8), 1 << v12, 8);
      *(v11 + 120) = v14;
      if (!v14)
      {
        return 2686459914;
      }

      v10 = pts_PrefillInputCache(v11);
      if ((v10 & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    v10 = pts_CheckDataConsistency(v11);
    if ((v10 & 0x80000000) != 0)
    {
LABEL_17:
      v4 = v10;
    }

    else
    {
      v4 = 0;
      *a4 = v11;
      *(a4 + 2) = 1060;
    }

    if (v18)
    {
      v15 = ssftriff_reader_ObjClose(v18);
      if (v15 >= 0 || v4 <= -1)
      {
        return v4;
      }

      else
      {
        return v15;
      }
    }
  }

  return v4;
}

uint64_t pts_ReadBinaryData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v22 = 0;
  v20 = 0;
  v21 = 0;
  __s = 0;
  v8 = heap_Calloc(*(a1 + 8), 1, 144);
  *a4 = v8;
  if (!v8)
  {
    return 2686459914;
  }

  v9 = v8;
  *v8 = a1;
  *(v8 + 116) = 0;
  for (i = ssftriff_reader_OpenChunk(a2, &v21, &v20, 0); (i & 0x80000000) == 0; i = ssftriff_reader_OpenChunk(a2, &v21, &v20, 0))
  {
    if (v21 ^ 0x45485450 | v22)
    {
      if (v21 ^ 0x464F5450 | v22)
      {
        if (v21 ^ 0x50495450 | v22)
        {
          if (v21 ^ 0x504F5450 | v22)
          {
            log_OutText(*(a1 + 32), &modInfoTBM, 4, 0, "pts_ReadBinaryData unknown chunk type: '%s'", &v21);
          }

          else
          {
            Position = ssftriff_reader_GetPosition(a2);
            if (a3)
            {
              *(v9 + 104) = a3 + Position;
            }

            else
            {
              *(v9 + 112) = Position;
            }
          }
        }

        else
        {
          v15 = ssftriff_reader_GetPosition(a2);
          if (a3)
          {
            *(v9 + 88) = a3 + v15;
          }

          else
          {
            *(v9 + 96) = v15;
          }
        }
      }

      else if (v20 >= 4)
      {
        *(v9 + 40) = (v20 >> 2) - 1;
        if (a3)
        {
          *(v9 + 80) = a3 + ssftriff_reader_GetPosition(a2);
        }

        else
        {
          ChunkData = ssftriff_reader_DetachChunkData(a2, (v9 + 72), (v9 + 80));
          if ((ChunkData & 0x80000000) != 0)
          {
            goto LABEL_34;
          }
        }
      }
    }

    else
    {
      ChunkData = ssftriff_reader_GetChunkData(a2, v20, &__s);
      if ((ChunkData & 0x80000000) != 0 || (ChunkData = pts_SetFormat(v9, __s), (ChunkData & 0x80000000) != 0) || (__s += strlen(__s) + 1, ChunkData = pts_strclone(*(a1 + 8), (v9 + 16), __s), (ChunkData & 0x80000000) != 0))
      {
LABEL_34:
        v17 = ChunkData;
        goto LABEL_35;
      }

      v12 = &__s[strlen(*(v9 + 16)) + 1];
      __s = v12;
      v13 = *(a1 + 8);
      v14 = (v9 + 24);
      if (*(v9 + 32))
      {
        ChunkData = pts_strclone(v13, v14, v12);
        if ((ChunkData & 0x80000000) != 0)
        {
          goto LABEL_34;
        }

        __s += strlen(*(v9 + 24)) + 1;
      }

      else
      {
        ChunkData = pts_strclone(v13, v14, "<>");
        if ((ChunkData & 0x80000000) != 0)
        {
          goto LABEL_34;
        }
      }

      *(v9 + 48) = xmmword_1C3810BF0;
      if (a3)
      {
        *(v9 + 128) = 0;
      }

      else
      {
        *(v9 + 128) = 8;
      }
    }

    ChunkData = ssftriff_reader_CloseChunk(a2);
    if ((ChunkData & 0x80000000) != 0)
    {
      goto LABEL_34;
    }
  }

  v17 = i;
  if ((i & 0x1FFF) == 0x14)
  {
    return 0;
  }

LABEL_35:
  if (*a4)
  {
    heap_Free(*(a1 + 8), *a4);
    *a4 = 0;
  }

  return v17;
}

uint64_t pts_PrefillInputCache(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (!v1)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v3 = 1 << v1;
  v6 = 0;
  v4 = (1 << v1) >> 1;
  do
  {
    result = pts_BinSearch(a1, 0, v4, &v8, &v7, &v6);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    ++v4;
  }

  while (v4 < v3);
  return result;
}

uint64_t pts_ReadBinaryDataBuffer(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v18 = 0;
  v19 = 0;
  v5 = 2686459911;
  v17 = 0;
  if (a4)
  {
    if (a3)
    {
      if (a5)
      {
        v8 = a4;
        if ((InitRsrcFunction(a1, a2, &v18) & 0x80000000) == 0)
        {
          *a5 = safeh_GetNullHandle();
          a5[1] = v11;
          v12 = ssftriff_reader_ObjOpenEx(a1, a2, 4, "PromptTemplate in RAM", a3, v8, "PT10", 131846, &v17);
          if ((v12 & 0x80000000) != 0 || (v12 = pts_ReadBinaryData(v18, v17, a3, &v19), (v12 & 0x80000000) != 0) || (v13 = v19, v12 = pts_CheckDataConsistency(v19), (v12 & 0x80000000) != 0))
          {
            v5 = v12;
          }

          else
          {
            v5 = 0;
            *a5 = v13;
            *(a5 + 2) = 1060;
          }

          if (v17)
          {
            v14 = ssftriff_reader_ObjClose(v17);
            if (v14 >= 0 || v5 <= -1)
            {
              return v5;
            }

            else
            {
              return v14;
            }
          }
        }
      }
    }
  }

  return v5;
}

uint64_t pts_Free(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 1060, 144);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *(a1 + 8);
    v5 = *(*a1 + 8);
    if (v4)
    {
      heap_Free(*(*a1 + 8), v4);
      *(a1 + 8) = 0;
    }

    v6 = *(a1 + 16);
    if (v6)
    {
      heap_Free(v5, v6);
      *(a1 + 16) = 0;
    }

    v7 = *(a1 + 24);
    if (v7)
    {
      heap_Free(v5, v7);
      *(a1 + 24) = 0;
    }

    v8 = *(a1 + 72);
    if (v8)
    {
      v3 = ssftriff_reader_ReleaseChunkData(v8);
      *(a1 + 72) = 0;
    }

    else if (*(a1 + 116))
    {
      v14 = *(a1 + 80);
      if (v14)
      {
        heap_Free(v5, v14);
      }
    }

    *(a1 + 80) = 0;
    if (*(a1 + 116))
    {
      v9 = *(a1 + 88);
      if (v9)
      {
        heap_Free(v5, v9);
      }
    }

    *(a1 + 88) = 0;
    if (*(a1 + 120))
    {
      v10 = 0;
      do
      {
        heap_Free(v5, *(*(a1 + 120) + 8 * v10++));
      }

      while (!(v10 >> *(a1 + 128)));
      heap_Free(v5, *(a1 + 120));
      *(a1 + 120) = 0;
    }

    if (*(a1 + 116))
    {
      v11 = *(a1 + 104);
      if (v11)
      {
        heap_Free(v5, v11);
      }
    }

    *(a1 + 104) = 0;
    v12 = *(a1 + 64);
    if (v12)
    {
      brk_DataClose(*(*a1 + 24), v12);
      *(a1 + 64) = 0;
    }

    heap_Free(v5, a1);
  }

  return v3;
}

uint64_t pts_MatchSlots(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t *a6, void *a7)
{
  if (a4)
  {
    v7 = a5;
    v11 = 0;
    v12 = 0;
    while (v7)
    {
      v13 = 0;
      v14 = *(a1 + 36);
      v15 = 1;
      do
      {
        if (*(a3 + v11))
        {
          if (!strcmp((a3 + v11), (a2 + v13)))
          {
            v15 = v15;
          }

          else
          {
            v15 = 0;
          }
        }

        v13 += strlen((a2 + v13)) + 1;
        v11 += strlen((a3 + v11)) + 1;
        if (v14)
        {
          if (*(a3 + v11) != 42 || *(a3 + v11 + 1))
          {
            if (!strcmp((a3 + v11), (a2 + v13)))
            {
              v15 = v15;
            }

            else
            {
              v15 = 0;
            }
          }

          v11 += strlen((a3 + v11)) + 1;
          v13 += strlen((a2 + v13)) + 1;
        }

        --v7;
      }

      while (v7);
      if (v15)
      {
        goto LABEL_22;
      }

      v11 += *(a1 + 48) + *(a1 + 56);
      ++v12;
      v7 = a5;
      if (v11 >= a4)
      {
        v15 = 0;
        goto LABEL_22;
      }
    }

    v15 = 1;
  }

  else
  {
    v15 = 0;
    v12 = 0;
    v11 = 0;
  }

LABEL_22:
  if (a7)
  {
    *a7 = v12;
  }

  if (a6)
  {
    *a6 = v11;
  }

  return v15;
}

uint64_t pts_Apply(uint64_t a1, int a2, _WORD *a3, uint64_t a4, void *a5, uint64_t a6, char *a7, uint64_t *a8)
{
  v61 = 0;
  v62 = 0;
  v59 = 0;
  v16 = safeh_HandleCheck(a1, a2, 1060, 144);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v17 = 2686459911;
  if (a7 && a8)
  {
    v64 = 0;
    matched = 0;
    v60 = 0;
    v18 = safeh_HandleCheck(a1, a2, 1060, 144);
    if ((v18 & 0x80000000) != 0)
    {
      v17 = v18;
      goto LABEL_40;
    }

    v51 = a8;
    __s = *(a1 + 24);
    v57 = *(a1 + 36);
    v72 = 0;
    v73[0] = 0;
    v70 = 0;
    v71 = 0;
    v68 = 0;
    v69 = 0;
    v66 = 0;
    v67 = 0;
    v65 = 0;
    v19 = 0;
    if ((InitRsrcFunction(a3, a4, &v65) & 0x80000000) != 0)
    {
      v20 = 0;
      goto LABEL_36;
    }

    v20 = 0;
    if (!v65)
    {
      goto LABEL_36;
    }

    v52 = a7;
    v53 = 0;
    v20 = 0;
    v56 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
LABEL_8:
    v55 = v23;
    if (v23)
    {
      v19 = heap_Calloc(*(v65 + 8), v22, 1);
      if (!v19)
      {
        goto LABEL_71;
      }

      v20 = heap_Calloc(*(v65 + 8), v21 + 1, 1);
      if (!v20)
      {
        goto LABEL_71;
      }

      v53 = v19;
      v22 = 0;
      v21 = 0;
    }

    Markup = findMarkup("slotbegin", a3, a4, a5, a6, v52, v73, &v72, &v71, &v70);
    if ((Markup & 0x80000000) != 0)
    {
      v17 = Markup;
      v19 = v53;
      goto LABEL_36;
    }

    v54 = v20;
    v25 = v52;
    v26 = v55;
    while (1)
    {
      if (!v70)
      {
        v34 = strlen(v25) + 1;
        if ((v26 & 1) == 0)
        {
          v22 += v34;
          v23 = 1;
          v20 = v54;
          goto LABEL_8;
        }

        v36 = &v53[v22];
        memcpy(v36, v25, v34);
        v37 = &v36[v34];
        v19 = v53;
        *(v37 - 1) = 0;
        if (v56 != numberOfOccurrences(v53, __s))
        {
          *v53 = 0;
        }

        replaceSubstr(v53);
        v17 = pts_BinSearch(a1, v53, 0, &v61, &v59, &matched);
        v20 = v54;
        if ((v17 & 0x80000000) != 0)
        {
          goto LABEL_37;
        }

        if (matched)
        {
          v38 = v61;
          matched = pts_MatchSlots(a1, v54, v61, v59, v56, &v60, 0);
          if (matched)
          {
            v39 = *(a1 + 48);
            if (v39)
            {
              v40 = 0;
              v41 = *(a1 + 48);
              do
              {
                v40 = *(v38 + v60 - 1 + v41--) | (v40 << 8);
              }

              while (v41);
            }

            else
            {
              v40 = 0;
            }

            v42 = *(a1 + 104);
            if (v42)
            {
              v62 = (v42 + v40);
              goto LABEL_57;
            }

            v44 = *(a1 + 56);
            if (v44)
            {
              LODWORD(v45) = 0;
              v46 = -v44;
              v47 = (v39 + v44 + v60 + v38 - 1);
              do
              {
                v48 = *v47--;
                v45 = v48 | (v45 << 8);
              }

              while (!__CFADD__(v46++, 1));
            }

            else
            {
              v45 = 0;
            }

            v17 = brk_DataMap(*(*a1 + 24), *(a1 + 64), (*(a1 + 112) + v40), v45, &v62);
            if ((v17 & 0x80000000) != 0)
            {
              v20 = v54;
            }

            else
            {
              if (!matched)
              {
                goto LABEL_67;
              }

LABEL_57:
              v20 = v54;
              v17 = fillInSlots(*a1, v62, v54, v56, *(a1 + 36), 0, &v64, 0);
              if ((v17 & 0x80000000) == 0)
              {
                v43 = v64;
                goto LABEL_68;
              }
            }

LABEL_36:
            if (v19)
            {
LABEL_37:
              heap_Free(*(*a1 + 8), v19);
            }

            if (v20)
            {
              heap_Free(*(*a1 + 8), v20);
            }

LABEL_40:
            if (!*(a1 + 104) && v62)
            {
              brk_DataUnmap(*(*a1 + 24), *(a1 + 64), v62);
            }

            return v17;
          }
        }

LABEL_67:
        v43 = strlen(v52) + 1;
        v64 = v43;
        v20 = v54;
LABEL_68:
        v50 = heap_Realloc(*(*a1 + 8), *v51, v43);
        if (v50)
        {
          *v51 = v50;
          if (matched)
          {
            v17 = fillInSlots(*a1, v62, v20, v56, *(a1 + 36), v50, 0, 0);
          }

          else
          {
            strcpy(v50, v52);
          }

          goto LABEL_36;
        }

LABEL_71:
        v17 = 2686459914;
        goto LABEL_36;
      }

      v27 = findMarkup("slotend", a3, a4, a5, a6, v70, &v69, &v67, &v66, &v68);
      if ((v27 & 0x80000000) != 0)
      {
        goto LABEL_34;
      }

      if (v68)
      {
        break;
      }

      v33 = v70;
LABEL_28:
      v27 = findMarkup("slotbegin", a3, a4, a5, a6, v33, v73, &v72, &v71, &v70);
      if ((v27 & 0x80000000) != 0)
      {
LABEL_34:
        v17 = v27;
        v19 = v53;
        v20 = v54;
        goto LABEL_36;
      }
    }

    v28 = (v73[0] - v25);
    if (v26)
    {
      memcpy(&v53[v22], v25, v73[0] - v25);
      v29 = &v28[v22];
      v30 = strlen(__s);
      ++v56;
      memcpy(&v29[v53], __s, v30);
      v22 = &v29[v30];
      v31 = v69 - v70;
      memcpy(&v54[v21], v70, v69 - v70);
      v21 += v31 + 1;
      v32 = v71;
      if (!v57)
      {
        if (v71)
        {
          log_OutText(*(v65 + 32), &modInfoTBM, 1, 0, "Slot type is not supported by currently active Prompt Template Set");
        }

        v26 = v55;
        goto LABEL_27;
      }

      memcpy(&v54[v21], v72, v71);
      v26 = v55;
    }

    else
    {
      v22 += &v28[strlen(__s)];
      v21 = &v69[v21] - v70 + 1;
      if (!v57)
      {
LABEL_27:
        v25 = v68;
        v33 = v68;
        goto LABEL_28;
      }

      v32 = v71;
    }

    v21 += v32 + 1;
    goto LABEL_27;
  }

  return v17;
}

uint64_t pts_BinSearch(uint64_t a1, char *__s1, unint64_t a3, void *a4, void *a5, _DWORD *a6)
{
  v6 = 2686459911;
  if (a4)
  {
    if (a1)
    {
      if (a5)
      {
        v8 = a6;
        if (a6)
        {
          if ((v10 = *(a1 + 40), __s1) && !a3 || !__s1 && a3 && !(a3 >> *(a1 + 128)))
          {
            *a4 = 0;
            *a6 = 0;
            *a5 = 0;
            *(a1 + 136) = 1;
            if (v10 >= 1)
            {
              v11 = 0;
              v12 = v10 - 1;
              v13 = 64 - __clz(a3);
              if (!a3)
              {
                v13 = 0;
              }

              v32 = v13;
              while (1)
              {
                v36 = v12;
                v14 = v11 + (v12 - v11) / 2;
                v16 = *(a1 + 80);
                v15 = *(a1 + 88);
                v17 = *(v16 + 4 * v14);
                v18 = *(v16 + 4 * (v14 + 1)) - v17;
                if (v15)
                {
                  v6 = 0;
                  v19 = (v15 + v17);
                  if (__s1)
                  {
                    goto LABEL_16;
                  }

                  goto LABEL_28;
                }

                __src = 0;
                v22 = *(a1 + 136);
                v23 = *(a1 + 120);
                if (v22 >> *(a1 + 128))
                {
                  v22 = 0;
                  v24 = *v23;
                }

                else
                {
                  v19 = v23[v22];
                  if (v19)
                  {
                    v6 = 0;
                    goto LABEL_27;
                  }

                  v24 = 0;
                }

                v25 = heap_Realloc(*(*a1 + 8), v24, v18);
                if (!v25)
                {
                  return 2686459914;
                }

                *(*(a1 + 120) + 8 * v22) = v25;
                v26 = brk_DataMap(*(*a1 + 24), *(a1 + 64), (*(a1 + 96) + v17), v18, &__src);
                if ((v26 & 0x80000000) != 0)
                {
                  return v26;
                }

                memcpy(*(*(a1 + 120) + 8 * v22), __src, v18);
                v6 = brk_DataUnmap(*(*a1 + 24), *(a1 + 64), __src);
                if ((v6 & 0x80000000) != 0)
                {
                  return v6;
                }

                v19 = *(*(a1 + 120) + 8 * v22);
LABEL_27:
                v8 = a6;
                if (__s1)
                {
LABEL_16:
                  v20 = strcmp(__s1, v19);
                  *(a1 + 136) = (v20 > 0) | (2 * *(a1 + 136));
                  if (v20 > 0)
                  {
                    goto LABEL_33;
                  }

                  if ((v20 & 0x80000000) == 0)
                  {
LABEL_18:
                    *v8 = 1;
                    v21 = strlen(v19);
                    *a5 = v18 - (v21 + 1);
                    *a4 = &v19[v21 + 1];
                    goto LABEL_34;
                  }

                  goto LABEL_38;
                }

LABEL_28:
                v27 = *(a1 + 136);
                v28 = 64 - __clz(v27);
                if (!v27)
                {
                  v28 = 0;
                }

                if (v28 >= v32)
                {
                  v29 = 0;
                }

                else
                {
                  if ((a3 >> (v32 + ~v28)))
                  {
                    *(a1 + 136) = (2 * v27) | 1;
LABEL_33:
                    v11 = v14 + 1;
LABEL_34:
                    v12 = v36;
                    goto LABEL_39;
                  }

                  v29 = -1;
                }

                *(a1 + 136) = 2 * v27;
                if ((v29 & 0x80000000) == 0)
                {
                  goto LABEL_18;
                }

LABEL_38:
                v12 = v14 - 1;
LABEL_39:
                if (*v8 || v11 > v12)
                {
                  return v6;
                }
              }
            }

            return 0;
          }
        }
      }
    }
  }

  return v6;
}

uint64_t makeTnSequence(char *a1, uint64_t a2)
{
  v4 = strlen(a1);
  result = ssftstring_Reserve(a2, v4 + 7);
  if ((result & 0x80000000) == 0)
  {
    result = ssftstring_Clear(a2);
    if ((result & 0x80000000) == 0)
    {
      result = ssftstring_AppendChar(a2, 27);
      if ((result & 0x80000000) == 0)
      {
        result = ssftstring_AppendCStr(a2, "\\tn=");
        if ((result & 0x80000000) == 0)
        {
          result = ssftstring_AppendCStr(a2, a1);
          if ((result & 0x80000000) == 0)
          {

            return ssftstring_AppendCStr(a2, "\"");
          }
        }
      }
    }
  }

  return result;
}

uint64_t findMarkup(char *__s, _WORD *a2, uint64_t a3, void *a4, uint64_t a5, char *a6, char **a7, char **a8, void *a9, void *a10)
{
  v45 = 0;
  v10 = 2686459911;
  if (__s)
  {
    if (*__s)
    {
      v43 = strlen(__s);
      if (a7)
      {
        if (a8 && a9 && a10)
        {
          *a7 = 0;
          *a8 = 0;
          *a10 = 0;
          *a9 = 0;
          if (a6)
          {
            v18 = strlen(a6);
            v19 = a5;
            v20 = v18;
            v42 = v19;
            v21 = esc_seq_strstr(a2, a3, a4, v19, a6, &v45);
            if (v21)
            {
              v22 = &a6[v20];
              v23 = v42;
              v41 = a8;
              while (1)
              {
                *a7 = v21;
                v24 = &v21[v45];
                if (*v24 == 92)
                {
                  v25 = v24 + 1;
                  v26 = &v21[v43 + 2 + v45];
                  do
                  {
                    v24 = v25;
                    v27 = v26;
                    if (++v25 > v22)
                    {
                      break;
                    }

                    v28 = memchr("\r\n\t ", *v24, 5uLL);
                    v26 = v27 + 1;
                  }

                  while (v28);
                  v29 = &v24[v43];
                  if (&v24[v43] >= v22)
                  {
                    goto LABEL_29;
                  }

                  v23 = v42;
                  if (!LH_strnicmp(v24, __s, v43))
                  {
                    break;
                  }
                }

LABEL_30:
                v21 = esc_seq_strstr(a2, a3, a4, v23, v24, &v45);
                if (!v21)
                {
                  return 0;
                }
              }

              do
              {
                v24 = v29;
                v31 = *v29++;
                v30 = v31;
                if (v29 > v22)
                {
                  break;
                }

                ++v27;
              }

              while (memchr("\r\n\t ", v30, 5uLL));
              v30 = v30;
              if (v30 == 61)
              {
                v32 = v24 + 1;
                do
                {
                  v33 = v32++;
                }

                while (v32 <= v22 && memchr("\r\n\t ", *v33, 5uLL));
                v34 = 0;
                *v41 = v33;
                do
                {
                  v35 = v34;
                  v36 = &v33[v34];
                  if (&v33[v34 + 1] > v22)
                  {
                    break;
                  }

                  v37 = memchr("\r\n\t \"", v33[v34], 6uLL);
                  v34 = v35 + 1;
                }

                while (!v37);
                *a9 = v35;
                do
                {
                  v24 = v36;
                  v39 = *v36++;
                  v38 = v39;
                  v30 = v39;
                }

                while (v36 <= v22 && memchr("\r\n\t ", v38, 5uLL));
              }

              if (v30 == 92)
              {
                v10 = 0;
                *a10 = v24 + 1;
                return v10;
              }

LABEL_29:
              v23 = v42;
              goto LABEL_30;
            }
          }

          return 0;
        }
      }
    }
  }

  return v10;
}

char *replaceSubstr(char *result)
{
  if (result)
  {
    result = strstr(result, "\r\n");
    if (result)
    {
      v1 = result;
      do
      {
        v2 = strlen(v1 + 2);
        memmove(v1 + 1, v1 + 2, v2 + 1);
        *v1 = 10;
        result = strstr(v1 + 1, "\r\n");
        v1 = result;
      }

      while (result);
    }
  }

  return result;
}

uint64_t pts_ReadTextData(_WORD *a1, int a2, char *a3, int a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v121 = *MEMORY[0x1E69E9840];
  v7 = 2686459914;
  if (!a5)
  {
    return 2686459911;
  }

  v88 = 0;
  if ((InitRsrcFunction(a1, a2, &v88) & 0x80000000) != 0)
  {
    return 2686459911;
  }

  s = a3;
  *a5 = safeh_GetNullHandle();
  a5[1] = v15;
  v16 = heap_Calloc(*(v88 + 8), 1, 64);
  if (v16)
  {
    v17 = v16;
    v91 = 0;
    if ((InitRsrcFunction(a1, a2, &v91) & 0x80000000) != 0)
    {
      v7 = 2686459911;
      goto LABEL_30;
    }

    v78 = a7;
    *v17 = 0u;
    *(v17 + 1) = 0u;
    *(v17 + 2) = 0u;
    *(v17 + 3) = 0u;
    v18 = v91;
    *v17 = v91;
    memsuite.realloc_fcn = builtin_Alloc;
    memsuite.free_fcn = builtin_Realloc;
    v90 = builtin_Free;
    memsuite.malloc_fcn = *(v18 + 8);
    strcpy(__s, "<>");
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    userData = 0u;
    v94 = 0u;
    *&v112 = __s;
    *&v119 = v17;
    *(&v119 + 1) = v18;
    *&v113 = heap_Calloc(*(v18 + 8), 4, 8);
    if (!v113)
    {
LABEL_29:
      DeiniState(&userData);
      goto LABEL_30;
    }

    v77 = a5;
    v19 = 0;
    v80 = a6;
    while (1)
    {
      do
      {
        ssftstring_ObjOpen(*(*(&v119 + 1) + 8), (v113 + 8 * v19++));
      }

      while (v19 != 4);
      DWORD2(v113) = -1;
      v20 = ssftstring_ObjOpen(*(*(&v119 + 1) + 8), &v114 + 1);
      if ((v20 & 0x80000000) != 0 || (v20 = ssftstring_ObjOpen(*(*(&v119 + 1) + 8), &v115), (v20 & 0x80000000) != 0) || (v20 = ssftstring_ObjOpen(*(*(&v119 + 1) + 8), &v115 + 1), (v20 & 0x80000000) != 0) || (v20 = ssftstring_ObjOpen(*(*(&v119 + 1) + 8), &v116), (v20 & 0x80000000) != 0) || (v20 = ssftstring_ObjOpen(*(*(&v119 + 1) + 8), &v116 + 1), (v20 & 0x80000000) != 0) || (v20 = ssftstring_ObjOpen(*(*(&v119 + 1) + 8), &v117), (v20 & 0x80000000) != 0))
      {
        v7 = v20;
        goto LABEL_29;
      }

      v21 = XML_ParserCreate_MM(0, &memsuite, 0);
      if (!v21)
      {
        goto LABEL_30;
      }

      v22 = v21;
      *&v120 = v21;
      XML_SetElementHandler(v21, CB_start, CB_end);
      XML_SetCharacterDataHandler(v22, CB_char);
      XML_SetUserData(v22, &userData);
      v23 = XML_Parse(v22, s, a4 - 1, 0);
      v24 = DWORD2(v120);
      if (v23)
      {
        if (DWORD2(v120) != -1608507392)
        {
          if (DWORD2(v120) == 1)
          {
LABEL_38:
            v24 = 2686459908;
            goto LABEL_39;
          }

          if ((DWORD2(v120) & 0x80000000) == 0)
          {
            v35 = pts_strclone(*(v91 + 8), v17 + 2, &v99 + 4);
            if ((v35 & 0x80000000) != 0)
            {
              v24 = v35;
            }

            else
            {
              v24 = pts_strclone(*(v91 + 8), v17 + 3, __s);
              if ((v24 & 0x80000000) == 0)
              {
                ssft_qsort(v17[6], v17[4], 48, compare_4);
              }
            }
          }

LABEL_39:
          XML_ParserFree(v22);
          DeiniState(&userData);
          v7 = v24;
          if ((v24 & 0x80000000) != 0)
          {
            goto LABEL_30;
          }

          v76 = v88;
          v36 = heap_Calloc(*(*v17 + 1), 1, 144);
          if (v36)
          {
            v37 = v36;
            *v36 = *v17;
            *(v36 + 116) = 1;
            v38 = pts_SetFormat(v36, v17[1]);
            if ((v38 & 0x80000000) != 0)
            {
              v7 = v38;
              goto LABEL_30;
            }

            v7 = pts_strclone(*(*v17 + 1), (v37 + 16), v17[2]);
            if ((v7 & 0x80000000) != 0)
            {
              goto LABEL_30;
            }

            if (*(v37 + 32))
            {
              v7 = pts_strclone(*(*v17 + 1), (v37 + 24), v17[3]);
              if ((v7 & 0x80000000) == 0)
              {
                goto LABEL_45;
              }

LABEL_30:
              v33 = *(*v17 + 1);
              intpts_FreeContent(v17);
              heap_Free(v33, v17);
              return v7;
            }

            v45 = v17[3];
            if (*v45 != 60 || v45[1] != 62 || v45[2])
            {
              log_OutText(*(v76 + 32), &modInfoTBM_0, 0, 0, "%s does not support custom slot place holders", v17[1]);
              v7 = 2686459908;
              goto LABEL_30;
            }

LABEL_45:
            *(v37 + 56) = 2;
            *(v37 + 40) = xmmword_1C3810C50;
            v39 = v17[4];
            if (v39)
            {
              v40 = 0;
              v41 = 0;
              v42 = (v17[6] + 16);
              do
              {
                v43 = *v42;
                if (!v41 || strcmp(v41, *v42))
                {
                  *(v37 + 40) = ++v40;
                  v41 = v43;
                }

                v42 += 6;
                --v39;
              }

              while (v39);
              v44 = v40 + 1;
            }

            else
            {
              v44 = 1;
            }

            v46 = heap_Calloc(*(*v17 + 1), v44, 4);
            *(v37 + 80) = v46;
            if (v46)
            {
              if (*(v37 + 40))
              {
                v47 = 0;
                v48 = 0;
                v49 = 0;
                v50 = 0;
                v51 = 0;
                v52 = 1;
                do
                {
                  v53 = v52;
                  if (v51)
                  {
                    v54 = heap_Calloc(*(*v17 + 1), v48, 1);
                    *(v37 + 88) = v54;
                    if (!v54)
                    {
                      goto LABEL_109;
                    }

                    v55 = heap_Calloc(*(*v17 + 1), v47, 1);
                    *(v37 + 104) = v55;
                    if (!v55)
                    {
                      goto LABEL_109;
                    }

                    v49 = v55;
                    v48 = 0;
                    v47 = 0;
                    v50 = *(v37 + 88);
                  }

                  v75 = v53;
                  if (v17[4])
                  {
                    v81 = 0;
                    v82 = 0;
                    *len = 0;
                    v56 = 0;
                    v57 = 0;
                    v58 = v17[6];
                    v79 = v49;
                    do
                    {
                      if (v56 && (v59 = *(v58 + 2), !strcmp(v56, v59)))
                      {
                        v84 = v59;
                        sa = v48;
                      }

                      else
                      {
                        *(*(v37 + 80) + 4 * v82) = v48;
                        if (v50)
                        {
                          strcpy((v50 + v48), *(v58 + 2));
                        }

                        v60 = *(v58 + 2);
                        v84 = v60;
                        if (v60)
                        {
                          v48 += strlen(v60) + 1;
                        }

                        v81 = v57;
                        ++v82;
                        *len = v48;
                        sa = v48;
                      }

                      v83 = strlen(*(v58 + 5));
                      if (v49)
                      {
                        strcpy((v49 + v47), *(v58 + 5));
                      }

                      v61 = v47;
                      v48 = sa;
                      if (*(v58 + 3))
                      {
                        v62 = 0;
                        v63 = *(v58 + 4);
                        v48 = sa;
                        do
                        {
                          if (v50)
                          {
                            strcpy((v50 + v48), v63);
                          }

                          v64 = strlen(v63);
                          v48 += v64 + 1;
                          v63 += v64 + 1;
                          if (*(v17 + 14))
                          {
                            if (v50)
                            {
                              strcpy((v50 + v48), v63);
                            }

                            v65 = strlen(v63);
                            v48 += v65 + 1;
                            v63 += v65 + 1;
                          }

                          ++v62;
                        }

                        while (v62 < *(v58 + 3));
                      }

                      v66 = *(v37 + 48);
                      if (v66)
                      {
                        v67 = 0;
                        v68 = v61;
                        v69 = v61;
                        v49 = v79;
                        v70 = v83;
                        do
                        {
                          if (v50)
                          {
                            *(v50 + v48) = v69;
                            v66 = *(v37 + 48);
                          }

                          ++v48;
                          v69 >>= 8;
                          ++v67;
                        }

                        while (v67 < v66);
                      }

                      else
                      {
                        v68 = v61;
                        v49 = v79;
                        v70 = v83;
                      }

                      v71 = v70 + 1;
                      v72 = *(v37 + 56);
                      if (v72)
                      {
                        v73 = 0;
                        v74 = v70 + 1;
                        do
                        {
                          if (v50)
                          {
                            *(v50 + v48) = v74;
                            v72 = *(v37 + 56);
                          }

                          ++v48;
                          v74 >>= 8;
                          ++v73;
                        }

                        while (v73 < v72);
                      }

                      if (v50)
                      {
                        if (sa > *len)
                        {
                          *&userData = 0;
                          if (pts_MatchSlots(v37, &sa[v50], v50 + *len, &sa[-*len], *(v58 + 3), 0, &userData))
                          {
                            log_OutText(*(v76 + 32), &modInfoTBM_0, 0, 0, "line %i: Template not reachable; covered by template in line %i", *(v58 + 1), *&v17[6][48 * v81 + 8 + 48 * userData]);
                          }
                        }
                      }

                      v47 = v71 + v68;
                      v58 += 48;
                      ++v57;
                      v56 = v84;
                    }

                    while (v57 < v17[4]);
                  }

                  else
                  {
                    v82 = 0;
                  }

                  v52 = 0;
                  *(*(v37 + 80) + 4 * v82) = v48;
                  v51 = 1;
                  a6 = v80;
                }

                while ((v75 & 1) != 0);
              }

              else
              {
                v48 = 0;
                v47 = 0;
              }

              if (a6)
              {
                *a6 = v48;
                *v78 = v47;
              }

              if ((v7 & 0x80000000) == 0)
              {
                v7 = pts_CheckDataConsistency(v37);
                if ((v7 & 0x80000000) == 0)
                {
                  *v77 = v37;
                  *(v77 + 2) = 1060;
                }
              }

              goto LABEL_30;
            }
          }

LABEL_109:
          v7 = 2686459914;
          goto LABEL_30;
        }
      }

      else
      {
        v25 = *(v91 + 32);
        CurrentLineNumber = XML_GetCurrentLineNumber(v22);
        ErrorCode = XML_GetErrorCode(v22);
        v28 = XML_ErrorString(ErrorCode);
        log_OutText(v25, &modInfoTBM_0, 0, 0, "XML error in line %d: %s", CurrentLineNumber, v28);
        if ((v24 & 0x80000000) == 0)
        {
          v24 = 2686459908;
          a6 = v80;
          goto LABEL_39;
        }

        a6 = v80;
        if (v24 != -1608507392)
        {
          goto LABEL_39;
        }
      }

      v29 = strlen(__s);
      if (((v29 + 3) & 0xFFFFFFFC) > 0x63uLL)
      {
        log_OutText(*(v91 + 32), &modInfoTBM_0, 0, 0, "Can't find suitable slot placeholder");
        goto LABEL_38;
      }

      v30 = v29 + 2;
      if (v29 <= 0xFFFFFFFD)
      {
        v31 = __s;
        v32 = v30 >> 1;
        do
        {
          *v31 = 60;
          v31[v30 >> 1] = 62;
          ++v31;
          --v32;
        }

        while (v32);
      }

      __s[v30] = 0;
      DeiniState(&userData);
      intpts_FreeContent(v17);
      *(v17 + 2) = 0u;
      *(v17 + 3) = 0u;
      *v17 = 0u;
      *(v17 + 1) = 0u;
      *v17 = v91;
      XML_ParserFree(v22);
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      userData = 0u;
      v94 = 0u;
      *&v112 = __s;
      *&v119 = v17;
      *(&v119 + 1) = *v17;
      v19 = 0;
      *&v113 = heap_Calloc(*(*(&v119 + 1) + 8), 4, 8);
      if (!v113)
      {
        goto LABEL_29;
      }
    }
  }

  return v7;
}

uint64_t CB_start_pts(uint64_t a1, char **a2)
{
  v3 = *a2;
  if (!*a2)
  {
    v4 = 0;
LABEL_26:
    if (*a1)
    {
      if (*(a1 + 200))
      {
        return v4;
      }

      v4 = 2686459908;
      v12 = *(a1 + 432);
      v13 = *(*(a1 + 424) + 32);
      CurrentLineNumber = XML_GetCurrentLineNumber(v12);
      v15 = "esc";
    }

    else
    {
      v4 = 2686459908;
      v16 = *(a1 + 432);
      v13 = *(*(a1 + 424) + 32);
      CurrentLineNumber = XML_GetCurrentLineNumber(v16);
      v15 = "format";
    }

    log_OutText(v13, &modInfoTBM_0, 0, 0, "line %d: Missing '%s'", CurrentLineNumber, v15);
    return v4;
  }

  v4 = 0;
  v5 = a2 + 1;
  while (LH_stricmp(v3, "format"))
  {
    if (LH_stricmp(*(v5 - 1), "version"))
    {
      if (LH_stricmp(*(v5 - 1), "esc"))
      {
        v6 = *(*(a1 + 424) + 32);
        v7 = XML_GetCurrentLineNumber(*(a1 + 432));
        v8 = *(v5 - 1);
        v9 = *(a1 + 328);
        if ((v9 & 0x80000000) != 0)
        {
          v10 = "";
        }

        else
        {
          v10 = ssftstring_CStr(*(*(a1 + 320) + 8 * v9));
        }

        log_OutText(v6, &modInfoTBM_0, 0, 0, "line %d: Unknown attribute '%s' of '%s'", v7, v8, v10);
        v4 = 1;
        goto LABEL_23;
      }

      if (*v5)
      {
LABEL_16:
        __strcpy_chk();
      }
    }

    else if (*v5)
    {
      goto LABEL_16;
    }

LABEL_23:
    v3 = v5[1];
    v5 += 2;
    if (!v3)
    {
      goto LABEL_26;
    }
  }

  if (!*v5)
  {
    goto LABEL_23;
  }

  __strcpy_chk();
  v11 = *(a1 + 416);
  *(v11 + 56) = 1;
  if (!strcmp(a1, "Text Template 2.2"))
  {
    v4 = pts_strclone(*(*v11 + 8), (v11 + 8), "Binary Template 2.2");
    if ((v4 & 0x80000000) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_20;
  }

  if (strcmp(a1, "Text Template 2.0"))
  {
    goto LABEL_33;
  }

  v4 = pts_strclone(*(*v11 + 8), (v11 + 8), "Binary Template 2.0");
  if ((v4 & 0x80000000) == 0)
  {
    *(v11 + 56) = 0;
LABEL_20:
    *(a1 + 312) = strcmp(a1, "Text Template 2.0") != 0;
    goto LABEL_23;
  }

LABEL_32:
  if (v4 != -1608507385)
  {
    return v4;
  }

LABEL_33:
  v18 = *(*(a1 + 424) + 32);
  v19 = XML_GetCurrentLineNumber(*(a1 + 432));
  log_OutText(v18, &modInfoTBM_0, 0, 0, "line %d: Unsupported format: '%s'; use '%s' instead.", v19, a1, "Text Template 2.2");
  return 2686459911;
}

uint64_t CB_start_template(uint64_t a1, const char **a2)
{
  *(a1 + 408) = XML_GetCurrentLineNumber(*(a1 + 432));
  *(a1 + 332) = 0;
  if (!*a2)
  {
    return 0;
  }

  v4 = *(*(a1 + 424) + 32);
  CurrentLineNumber = XML_GetCurrentLineNumber(*(a1 + 432));
  v6 = *a2;
  v7 = *(a1 + 328);
  if ((v7 & 0x80000000) != 0)
  {
    v8 = "";
  }

  else
  {
    v8 = ssftstring_CStr(*(*(a1 + 320) + 8 * v7));
  }

  log_OutText(v4, &modInfoTBM_0, 0, 0, "line %d: Unknown attribute '%s' of '%s'", CurrentLineNumber, v6, v8);
  return 1;
}

uint64_t CB_end_template(uint64_t a1)
{
  v2 = ssftstring_CStrDetach(*(a1 + 376));
  v3 = ssftstring_CStrDetach(*(a1 + 384));
  if (!*(a1 + 332))
  {
    v10 = "line %d: Missing <input>...</input>";
    goto LABEL_7;
  }

  if (!*(a1 + 336))
  {
    v10 = "line %d: Missing <output>...</output>";
LABEL_7:
    v11 = *(*(a1 + 424) + 32);
    CurrentLineNumber = XML_GetCurrentLineNumber(*(a1 + 432));
    log_OutText(v11, &modInfoTBM_0, 0, 0, v10, CurrentLineNumber);
    v13 = 1;
    if (!v2)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v5 = *(a1 + 408);
  v4 = *(a1 + 416);
  v6 = *(a1 + 400);
  v7 = v4[4];
  v8 = v4[5];
  if (v7 < 1000 * v8)
  {
    v9 = v4[6];
LABEL_14:
    v13 = 0;
    v16 = (v9 + 48 * v7);
    v16[5] = v3;
    v16[2] = v2;
    v16[4] = *(a1 + 392);
    *(a1 + 392) = 0;
    v16[3] = v6;
    *v16 = v7;
    v16[1] = v5;
    v4[4] = v7 + 1;
    goto LABEL_15;
  }

  v14 = 48000 * v8 + 48000;
  v15 = *(*v4 + 8);
  if (v8)
  {
    v9 = heap_Realloc(v15, v4[6], v14);
    if (v9)
    {
LABEL_13:
      v7 = v4[4];
      ++v4[5];
      v4[6] = v9;
      goto LABEL_14;
    }
  }

  else
  {
    v9 = heap_Alloc(v15, v14);
    if (v9)
    {
      goto LABEL_13;
    }
  }

  v13 = 2686459914;
  if (v2)
  {
LABEL_8:
    heap_Free(*(*(a1 + 424) + 8), v2);
  }

LABEL_9:
  if (v3)
  {
    heap_Free(*(*(a1 + 424) + 8), v3);
  }

LABEL_15:
  v17 = *(a1 + 392);
  if (v17)
  {
    heap_Free(*(*(a1 + 424) + 8), v17);
  }

  return v13;
}

uint64_t CB_start_input(uint64_t a1, void *a2)
{
  ssftstring_Clear(*(a1 + 344));
  ssftstring_Clear(*(a1 + 368));
  *(a1 + 400) = 0;
  if (*(a1 + 332))
  {
    v4 = *(a1 + 432);
    v5 = *(*(a1 + 424) + 32);
    XML_GetCurrentLineNumber(v4);
    log_OutText(v5, &modInfoTBM_0, 0, 0, "line %d: Unexpected <input>");
  }

  else
  {
    *(a1 + 332) = 1;
    if (!*a2)
    {
      return 0;
    }

    v6 = *(*(a1 + 424) + 32);
    XML_GetCurrentLineNumber(*(a1 + 432));
    v7 = *(a1 + 328);
    if ((v7 & 0x80000000) == 0)
    {
      ssftstring_CStr(*(*(a1 + 320) + 8 * v7));
    }

    log_OutText(v6, &modInfoTBM_0, 0, 0, "line %d: Unknown attribute '%s' of '%s'");
  }

  return 1;
}

uint64_t CB_end_input(uint64_t a1)
{
  v2 = ssftstring_CStr(*(a1 + 344));
  if (v2 && (v3 = v2, *v2))
  {
    replaceAltEsc(v2, (a1 + 200));
    v4 = *(a1 + 400);
    if (v4 == numberOfOccurrences(v3, *(a1 + 304)))
    {
      v5 = ssftstring_AssignCStr(*(a1 + 376), v3);
      if ((v5 & 0x80000000) == 0)
      {
        v6 = *(a1 + 392);
        if (v6)
        {
          heap_Free(*(*(a1 + 424) + 8), v6);
          *(a1 + 392) = 0;
        }

        v7 = ssftstring_Size(*(a1 + 368));
        if (v7)
        {
          v8 = v7;
          v9 = heap_Alloc(*(*(a1 + 424) + 8), v7);
          *(a1 + 392) = v9;
          if (v9)
          {
            v10 = ssftstring_CStr(*(a1 + 368));
            memcpy(*(a1 + 392), v10, v8);
          }

          else
          {
            return 2686459914;
          }
        }
      }
    }

    else
    {
      v5 = 2686459908;
      if (*(a1 + 312))
      {
        return 2686459904;
      }

      else
      {
        v14 = *(*(a1 + 424) + 32);
        XML_GetCurrentLineNumber(*(a1 + 432));
        log_OutText(v14, &modInfoTBM_0, 0, 0, "line %d: '%s' in input not allowed");
      }
    }
  }

  else
  {
    v5 = 2686459908;
    v11 = *(a1 + 432);
    v12 = *(*(a1 + 424) + 32);
    XML_GetCurrentLineNumber(v11);
    log_OutText(v12, &modInfoTBM_0, 0, 0, "line %d: empty input not allowed");
  }

  return v5;
}

uint64_t CB_start_output(uint64_t a1, void *a2)
{
  ssftstring_Clear(*(a1 + 384));
  ssftstring_Clear(*(a1 + 344));
  if (*(a1 + 336))
  {
    v4 = *(a1 + 432);
    v5 = *(*(a1 + 424) + 32);
    XML_GetCurrentLineNumber(v4);
    log_OutText(v5, &modInfoTBM_0, 0, 0, "line %d: Unexpected <output>");
    return 1;
  }

  *(a1 + 336) = 1;
  if (!*(a1 + 332))
  {
    v9 = *(a1 + 432);
    v10 = *(*(a1 + 424) + 32);
    XML_GetCurrentLineNumber(v9);
    log_OutText(v10, &modInfoTBM_0, 0, 0, "line %d: Missing <input>...</input>");
    return 1;
  }

  if (*a2)
  {
    v7 = *(*(a1 + 424) + 32);
    XML_GetCurrentLineNumber(*(a1 + 432));
    v8 = *(a1 + 328);
    if ((v8 & 0x80000000) == 0)
    {
      ssftstring_CStr(*(*(a1 + 320) + 8 * v8));
    }

    log_OutText(v7, &modInfoTBM_0, 0, 0, "line %d: Unknown attribute '%s' of '%s'");
    return 1;
  }

  return 0;
}

uint64_t CB_end_output(uint64_t a1)
{
  v8 = "";
  v2 = ssftstring_CStr(*(a1 + 344));
  replaceAltEsc(v2, (a1 + 200));
  v3 = ssftstring_AssignCStr(*(a1 + 384), v2);
  if ((v3 & 0x80000000) == 0 && (fillInSlots(*(a1 + 424), v2, *(a1 + 392), *(a1 + 400), *(*(a1 + 416) + 56), 0, 0, &v8) & 0x80000000) != 0)
  {
    v4 = *(a1 + 432);
    v5 = *(*(a1 + 424) + 32);
    CurrentLineNumber = XML_GetCurrentLineNumber(v4);
    log_OutText(v5, &modInfoTBM_0, 0, 0, "line %d: %s", CurrentLineNumber, v8);
    return 1;
  }

  return v3;
}

uint64_t CB_start_slot(uint64_t a1, const char **a2)
{
  ssftstring_Clear(*(a1 + 352));
  result = ssftstring_AssignCStr(*(a1 + 360), "*");
  if ((result & 0x80000000) == 0)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2 + 2;
      do
      {
        if (!strcmp("type", v5) && *(*(a1 + 416) + 56) == 1)
        {
          result = ssftstring_AssignCStr(*(a1 + 360), *(v6 - 1));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        else
        {
          v7 = *(*(a1 + 424) + 32);
          CurrentLineNumber = XML_GetCurrentLineNumber(*(a1 + 432));
          v9 = *(v6 - 2);
          v10 = *(a1 + 328);
          if ((v10 & 0x80000000) != 0)
          {
            v11 = "";
          }

          else
          {
            v11 = ssftstring_CStr(*(*(a1 + 320) + 8 * v10));
          }

          log_OutText(v7, &modInfoTBM_0, 0, 0, "line %d: Unknown attribute '%s' of '%s'", CurrentLineNumber, v9, v11);
          result = 1;
        }

        v12 = *v6;
        v6 += 2;
        v5 = v12;
      }

      while (v12);
    }
  }

  return result;
}

uint64_t CB_end_slot(uint64_t a1)
{
  v2 = ssftstring_CStr(*(a1 + 352));
  v3 = ssftstring_CStr(*(a1 + 360));
  if (!v2 || (replaceAltEsc(v2, (a1 + 200)), result = ssftstring_AppendCStr(*(a1 + 368), v2), (result & 0x80000000) == 0))
  {
    result = ssftstring_AppendChar(*(a1 + 368), 0);
    if ((result & 0x80000000) == 0)
    {
      if (*(*(a1 + 416) + 56) != 1 || (!v3 || (result = ssftstring_AppendCStr(*(a1 + 368), v3), (result & 0x80000000) == 0)) && (result = ssftstring_AppendChar(*(a1 + 368), 0), (result & 0x80000000) == 0))
      {
        ++*(a1 + 400);
        v5 = strlen(*(a1 + 304));
        v6 = *(a1 + 344);
        v7 = *(a1 + 304);

        return ssftstring_AppendCStrN(v6, v7, v5);
      }
    }
  }

  return result;
}

char *replaceAltEsc(char *result, char *__s2)
{
  if (result)
  {
    if (__s2)
    {
      if (*__s2)
      {
        v3 = result;
        result = strstr(result, __s2);
        if (result)
        {
          v4 = result;
          v5 = strlen(__s2);
          do
          {
            *v4 = 27;
            v6 = strlen(&v4[v5]);
            memmove(v4 + 1, &v4[v5], v6 + 1);
            result = strstr(v3, __s2);
            v4 = result;
          }

          while (result);
        }
      }
    }
  }

  return result;
}

void CB_start(uint64_t a1, char *__s1, uint64_t a3)
{
  v6 = &cbTable;
  v7 = 5;
  v8 = "";
  while (strcmp(__s1, v6))
  {
    v6 += 56;
    if (!--v7)
    {
      goto LABEL_6;
    }
  }

  v8 = v6 + 16;
LABEL_6:
  v9 = *(a1 + 328);
  if ((v9 & 0x80000000) != 0)
  {
    v10 = "";
  }

  else
  {
    v10 = ssftstring_CStr(*(*(a1 + 320) + 8 * v9));
  }

  if (!strcmp(v8, v10))
  {
    v16 = *(a1 + 328);
    if (v16 < 3)
    {
      v23 = v16 + 1;
      *(a1 + 328) = v23;
      v19 = ssftstring_AssignCStr(*(*(a1 + 320) + 8 * v23), __s1);
      if ((v19 & 0x80000000) == 0)
      {
        v24 = &cbTable;
        v25 = 5;
        while (strcmp(__s1, v24))
        {
          v24 += 56;
          if (!--v25)
          {
            goto LABEL_23;
          }
        }

        v26 = *(v24 + 4);
        if (v26)
        {
          v19 = v26(a1, a3);
          if ((v19 & 0x80000000) == 0)
          {
            setError(a1, v19);
          }
        }
      }
    }

    else
    {
      v17 = *(*(a1 + 424) + 32);
      CurrentLineNumber = XML_GetCurrentLineNumber(*(a1 + 432));
      log_OutText(v17, &modInfoTBM_0, 0, 0, "line %d: XML parsing stack too small", CurrentLineNumber);
      v19 = -1608507382;
    }
  }

  else
  {
    v11 = *(*(a1 + 424) + 32);
    v12 = XML_GetCurrentLineNumber(*(a1 + 432));
    v13 = &cbTable;
    v14 = 5;
    v15 = "";
    while (strcmp(__s1, v13))
    {
      v13 += 56;
      if (!--v14)
      {
        goto LABEL_17;
      }
    }

    v15 = v13 + 16;
LABEL_17:
    v20 = &cbTable;
    v21 = 5;
    v22 = "";
    while (strcmp(__s1, v20))
    {
      v20 += 56;
      if (!--v21)
      {
        goto LABEL_22;
      }
    }

    v22 = v20 + 16;
LABEL_22:
    v19 = -1608507388;
    log_OutText(v11, &modInfoTBM_0, 0, 0, "line %i: Unexpected <%s> inside <%s>...</%s>", v12, __s1, v15, v22);
  }

LABEL_23:

  setError(a1, v19);
}

void CB_end(uint64_t a1, char *__s1)
{
  v4 = 5;
  v5 = &cbTable;
  while (strcmp(__s1, v5))
  {
    v5 += 56;
    if (!--v4)
    {
      goto LABEL_8;
    }
  }

  v6 = *(v5 + 6);
  if (v6)
  {
    v7 = v6(a1);
    if (v7 < 0)
    {
      goto LABEL_11;
    }

    setError(a1, v7);
  }

LABEL_8:
  v8 = *(a1 + 328);
  if (v8 < 0)
  {
    v7 = -1608507388;
  }

  else
  {
    v7 = 0;
    *(a1 + 328) = v8 - 1;
  }

LABEL_11:

  setError(a1, v7);
}

void CB_char(uint64_t a1, uint64_t a2, uint64_t a3)
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
  while (strcmp(v7, v8))
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

  setError(a1, v11);
}

double DeiniState(uint64_t a1)
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
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  return result;
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
  result = strcmp(*(a1 + 16), *(a2 + 16));
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

void setError(uint64_t a1, int a2)
{
  if (a2)
  {
    if ((*(a1 + 440) & 0x80000000) == 0)
    {
      *(a1 + 440) = a2;
    }

    if (a2 < 0)
    {
      XML_SetElementHandler(*(a1 + 432), 0, 0);
      v3 = *(a1 + 432);

      XML_SetCharacterDataHandler(v3, 0);
    }
  }
}

uint64_t domain_mngr_utils_GetU32(uint64_t a1, unsigned int a2, _DWORD *a3, _DWORD *a4)
{
  v4 = (*a3 + 3) & 0xFFFFFFFC;
  *a3 = v4;
  if (v4 + 4 > a2)
  {
    return 2296389641;
  }

  if (a4)
  {
    *a4 = *(a1 + v4);
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
    v7 = strlen(__s);
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
      strncpy(a1, __s, v8);
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
  v6 = strlen(__s);
  v7 = heap_Alloc(a1, (v6 + 1));
  *a3 = v7;
  if (!v7)
  {
    return 2296389642;
  }

  strcpy(v7, __s);
  return 0;
}

uint64_t domain_mngr_utils_ListContainsString(uint64_t __s1, char *__s2)
{
  if (__s1)
  {
    v3 = __s1;
    __s1 = 0;
    if (__s2)
    {
      if (*v3)
      {
        if (*__s2)
        {
          __s1 = strstr(v3, __s2);
          if (__s1)
          {
            v4 = __s1;
            v5 = strlen(__s2);
            do
            {
              if (v4 == v3 || *(v4 - 1) == 124)
              {
                __s1 = 1;
                if (!*(v4 + v5) || *(v4 + v5) == 124)
                {
                  break;
                }
              }

              __s1 = strstr((v4 + v5), __s2);
              v4 = __s1;
            }

            while (__s1);
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return __s1;
}

uint64_t domain_mngr_utils_IsActiveVoiceAddon(uint64_t a1, char *a2, char *a3, char *a4, char *a5, int *a6)
{
  v47 = 0;
  v48 = 0;
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
        result = paramc_ParamGetStr(*(a1 + 40), "voice", &v48);
        if ((result & 0x80000000) == 0)
        {
          if ((paramc_ParamGetStr(*(a1 + 40), "voiceoperatingpoint", &__s) & 0x80000000) != 0)
          {
            v14 = 0;
          }

          else
          {
            v14 = strlen(__s) + 1;
          }

          if ((paramc_ParamGetStr(*(a1 + 40), "vopversion", &__s1) & 0x80000000) != 0 || (v15 = __s1, !strcmp(__s1, "0.0.0")))
          {
            v16 = 0;
          }

          else
          {
            v16 = strlen(v15) + 1;
          }

          v17 = strlen(v48);
          v18 = heap_Calloc(*(a1 + 8), 1, (v14 + v16 + v17 + 14));
          if (!v18)
          {
            log_OutPublic(*(a1 + 32), "DOMAIN_MNGR", 47000, 0);
            return 2296389642;
          }

          v19 = v18;
          strcpy(v18, "voiceaddons.");
          v20 = strlen(v18);
          domain_mngr_utils_StrToLower(&v19[v20], v48);
          if (v14)
          {
            *&v19[strlen(v19)] = 46;
            strcat(v19, __s);
          }

          if (v16)
          {
            *&v19[strlen(v19)] = 46;
            strcat(v19, __s1);
          }

          Str = paramc_ParamGetStr(*(a1 + 40), v19, &v47);
          if ((Str & 0x80000000) != 0)
          {
            v7 = Str;
          }

          else
          {
            v22 = v47;
            *a6 = 0;
            v23 = strchr(v22, 59);
            if (v23)
            {
              v24 = v23;
              v43 = a4;
              v44 = a5;
              v25 = 0;
              do
              {
                v26 = strlen(a2);
                if (v26 == v24 - v22)
                {
                  if (!LH_strnicmp(v22, a2, v26))
                  {
                    *a6 = 1;
                    goto LABEL_31;
                  }

                  v25 = *a6;
                  v27 = *a6 == 0;
                }

                else
                {
                  v27 = 1;
                }

                v22 = v24 + 1;
                v28 = strchr(v24 + 1, 59);
                if (!v27)
                {
                  break;
                }

                v24 = v28;
              }

              while (v28);
              if (!v25)
              {
                goto LABEL_27;
              }

LABEL_31:
              v29 = strlen(a2);
              v30 = heap_Calloc(*(a1 + 8), 1, (v29 + 26));
              if (v30)
              {
                v31 = v30;
                strcpy(v30, "voiceaddonrawdataversion.");
                v32 = strlen(v30);
                domain_mngr_utils_StrToLower((v31 + v32), a2);
                v49 = 0;
                if (a3 && *a3 && (paramc_ParamGetStr(*(a1 + 40), v31, &v49) & 0x80000000) == 0 && LH_stricmp(v49, a3))
                {
                  v33 = 0;
                }

                else
                {
                  v34 = strlen(a2);
                  v35 = heap_Calloc(*(a1 + 8), 1, (v34 + 28));
                  v33 = v35;
                  if (!v35)
                  {
                    log_OutPublic(*(a1 + 32), "DOMAIN_MNGR", 47000, 0);
                    v37 = 0;
                    goto LABEL_53;
                  }

                  strcpy(v35, "voiceaddonreductionversion.");
                  v36 = strlen(v35);
                  domain_mngr_utils_StrToLower((v33 + v36), a2);
                  if (!domain_mngr_utils_ReductionVersionCondition(a1, v44, v33))
                  {
                    v40 = strlen(a2);
                    v41 = heap_Calloc(*(a1 + 8), 1, (v40 + 21));
                    v37 = v41;
                    if (!v41)
                    {
                      log_OutPublic(*(a1 + 32), "DOMAIN_MNGR", 47000, 0);
                      goto LABEL_53;
                    }

                    strcpy(v41, "voiceaddonreduction.");
                    v42 = strlen(v41);
                    domain_mngr_utils_StrToLower((v37 + v42), a2);
                    if (!v43 || !*v43 || !domain_mngr_utils_ReductionTypeVersionCondition(a1, v44, v43, v37))
                    {
                      v7 = 0;
                      goto LABEL_53;
                    }

                    goto LABEL_40;
                  }
                }

                v37 = 0;
LABEL_40:
                v7 = 0;
                *a6 = 0;
LABEL_53:
                heap_Free(*(a1 + 8), v19);
                heap_Free(*(a1 + 8), v31);
                if (v37)
                {
                  heap_Free(*(a1 + 8), v37);
                }

                if (!v33)
                {
                  return v7;
                }

                v38 = *(a1 + 8);
                v39 = v33;
LABEL_43:
                heap_Free(v38, v39);
                return v7;
              }

              log_OutPublic(*(a1 + 32), "DOMAIN_MNGR", 47000, 0);
            }

            else
            {
LABEL_27:
              v7 = 0;
            }
          }

          v38 = *(a1 + 8);
          v39 = v19;
          goto LABEL_43;
        }
      }
    }
  }

  return result;
}

uint64_t domain_mngr_utils_StrToLower(_BYTE *a1, char *__s)
{
  v2 = __s;
  result = strlen(__s);
  v5 = result;
  if (result)
  {
    v6 = a1;
    v7 = result;
    do
    {
      v8 = *v2++;
      result = __tolower(v8);
      *v6++ = result;
      --v7;
    }

    while (v7);
  }

  a1[v5] = 0;
  return result;
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
      v8 = strchr(__s, 59);
      if (v8)
      {
        v9 = v8;
        while (1)
        {
          *v9 = 0;
          v10 = *(*(a1 + 8) + 72);
          if (v10)
          {
            if (!strcmp(v7, v10))
            {
              break;
            }
          }

          *v9 = 59;
          v7 = v9 + 1;
          v9 = strchr(v9 + 1, 59);
          if (!v9)
          {
            goto LABEL_17;
          }
        }

        v12 = strlen(v9 + 1);
        memmove(v7, v9 + 1, v12 + 1);
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

uint64_t activeprompt_db_LoadData(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  v12 = 0;
  __strcpy_chk();
  *&v14 = a3;
  DWORD2(v14) = a4;
  result = objc_GetAddRefCountedObject(*(*(a1 + 40) + 48), a2, apdb_loc_ObjcLoadData, apdb_loc_ObjcUnloadData, v13, &v12);
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
  v74 = *MEMORY[0x1E69E9840];
  v61 = 0;
  inited = InitRsrcFunction(a1, a2, &v61);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v10 = 2296389642;
  v11 = heap_Calloc(*(v61 + 8), 1, 552);
  if (!v11)
  {
    return v10;
  }

  v12 = v11;
  inited = ssftriff_reader_ObjOpenEx(a1, a2, 4 * (*(a5 + 256) != 0), a5, *(a5 + 256), *(a5 + 264), "APDB", 775, v11);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = ssftriff_reader_DetachChunkData(*v12, v12 + 2, v12 + 1);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  strcpy(v12 + 296, a5);
  v70 = 0;
  v68 = 0;
  v69 = 0;
  v66 = 0;
  *v67 = 0;
  v13 = InitRsrcFunction(a1, a2, &v66);
  if ((v13 & 0x80000000) != 0)
  {
    v10 = v13;
    goto LABEL_180;
  }

  v14 = *(v66 + 8);
  v64 = xmmword_1F42D6920;
  *&v65 = off_1F42D6930;
  if (!vector_ObjOpen(v14, &v64, 1, v12 + 33))
  {
    log_OutPublic(*(v66 + 32), "DOMAIN_MNGR", 47000, 0);
    goto LABEL_180;
  }

  v60 = a4;
  do
  {
    StringZ = ssftriff_reader_OpenChunk(*v12, &v69, &v68, v67);
    if ((StringZ & 0x80000000) != 0)
    {
      goto LABEL_178;
    }

    if (!(v69 ^ 0x52545441 | v70))
    {
      v16 = v68;
      if (!v68)
      {
        goto LABEL_141;
      }

      v17 = 0;
      while (1)
      {
        LOBYTE(__s1) = 0;
        __s[0] = 0;
        LODWORD(v64) = 64;
        StringZ = ssftriff_reader_ReadStringZ(*v12, *v67, v16, v17, &__s1, &v64);
        if ((StringZ & 0x80000000) == 0 && v17 < v68)
        {
          v17 += v64;
          LODWORD(v64) = 256;
          StringZ = ssftriff_reader_ReadStringZ(*v12, *v67, v68, v17, __s, &v64);
        }

        if ((StringZ & 0x80000000) != 0)
        {
          goto LABEL_141;
        }

        v18 = v64;
        if (__s1 == 1836216134 && *(&__s1 + 3) == 7627117)
        {
          domain_mngr_utils_CopyString(v12 + 32, __s, 0xCu);
          v33 = 0;
          while (strcmp(v12 + 32, off_1E81AD380[v33]))
          {
            if (++v33 == 2)
            {
              log_OutText(*(v66 + 32), "DOMAIN_MNGR", 3, 0, "APDB Format: %s not implemented", v12 + 32);
              StringZ = 2296389633;
              goto LABEL_141;
            }
          }

          goto LABEL_105;
        }

        if (*(v12 + 32))
        {
          if (__s1 == 6778444)
          {
            v34 = v12 + 44;
            goto LABEL_99;
          }

          if (__s1 == 0x656D614E6F6156)
          {
            v36 = *(v66 + 8);
            v37 = (v12 + 9);
LABEL_103:
            StringZ = domain_mngr_utils_DuplicateString(v36, __s, v37);
            goto LABEL_104;
          }

          if (__s1 == 1667854166 && WORD2(__s1) == 101)
          {
            v36 = *(v66 + 8);
            v37 = (v12 + 8);
            goto LABEL_103;
          }

          if (__s1 == 0x5661746144776152 && *(&__s1 + 7) == 0x6E6F6973726556)
          {
            v34 = (v12 + 10);
            goto LABEL_99;
          }

          if (__s1 == 0x6F69746375646552 && WORD4(__s1) == 110)
          {
            v34 = (v12 + 11);
            goto LABEL_112;
          }

          if (!(__s1 ^ 0x6F69746375646552 | *(&__s1 + 1) ^ 0x6E6F69737265566ELL | v73))
          {
            v34 = v12 + 100;
LABEL_99:
            v35 = 8;
LABEL_100:
            domain_mngr_utils_CopyString(v34, __s, v35);
            goto LABEL_104;
          }

          if (__s1 == 0x7954444974696E55 && *(&__s1 + 3) == 0x65707954444974)
          {
            v34 = v12 + 108;
LABEL_112:
            v35 = 12;
            goto LABEL_100;
          }

          if (!(__s1 ^ 0x6D6F436563696F56 | *(&__s1 + 1) ^ 0x4449746E656E6F70 | v73))
          {
            domain_mngr_utils_CopyString(v12 + 120, __s, 0x28u);
            *(v12 + 40) = 1;
            goto LABEL_104;
          }

          if (__s1 == 1634561860 && *(&__s1 + 3) == 7235937)
          {
            v36 = *(v66 + 8);
            v37 = (v12 + 21);
            goto LABEL_103;
          }

          if (__s1 == 2035568212 && *(&__s1 + 3) == 6647929)
          {
            v36 = *(v66 + 8);
            v37 = (v12 + 25);
            goto LABEL_103;
          }

          if (__s1 == 0x7550657361726850 && *(&__s1 + 1) == 0x6F6974617574636ELL && v73 == 110)
          {
            v36 = *(v66 + 8);
            v37 = (v12 + 23);
            goto LABEL_103;
          }

          if (__s1 == 0x74636E75506C6C41 && *(&__s1 + 7) == 0x6E6F6974617574)
          {
            v36 = *(v66 + 8);
            v37 = (v12 + 24);
            goto LABEL_103;
          }

          if (__s1 != 0x6953444974696E55 || *(&__s1 + 3) != 0x657A6953444974)
          {
            if (__s1 ^ 0x65646F4D | BYTE4(__s1))
            {
              if (__s1 != 0x6966667553495255 || WORD4(__s1) != 120)
              {
                if (__s1 == 0x6874724F69724FLL)
                {
                  *(v12 + 7) = 1;
                }

                else if (__s1 == 0x573A563855786449 && *(&__s1 + 7) == 0x6D725064726F57)
                {
                  *(v12 + 52) = 1;
                  ++*(v12 + 106);
                  *(v12 + 107) = atoi(__s);
                }

                else if (__s1 == 0x503A563855786449 && *(&__s1 + 7) == 0x646E4273726850)
                {
                  *(v12 + 55) = 1;
                  ++*(v12 + 106);
                  *(v12 + 108) = atoi(__s);
                }

                else if (!strcmp(&__s1, "SupportBackendPredictedSilenceDuration"))
                {
                  if (atoi(__s))
                  {
                    *(v12 + 57) = 1;
                  }

                  else
                  {
                    *(v12 + 57) = 0;
                  }
                }

                goto LABEL_104;
              }

              v36 = *(v66 + 8);
              v37 = (v12 + 22);
              goto LABEL_103;
            }

            v34 = v12 + 52;
            goto LABEL_112;
          }

          if (atoi(__s) == 4)
          {
            goto LABEL_104;
          }

          log_OutPublic(*(v66 + 32), "DOMAIN_MNGR", 47000, 0);
        }

        else
        {
          log_OutText(*(v66 + 32), "DOMAIN_MNGR", 3, 0, "APDB Format: 7.0.0 not supported");
        }

        StringZ = 2296389633;
LABEL_104:
        log_OutText(*(v66 + 32), "DOMAIN_MNGR", 3, 0, "APDB attribute %s=%s", &__s1, __s);
LABEL_105:
        if ((StringZ & 0x80000000) == 0)
        {
          v17 += v18;
          v16 = v68;
          if (v17 < v68)
          {
            continue;
          }
        }

        goto LABEL_141;
      }
    }

    if (v69 ^ 0x50474850 | v70)
    {
      if (!(v69 ^ 0x50525453 | v70))
      {
        v12[30] = *v67;
        goto LABEL_142;
      }

      if (!(v69 ^ 0x50444955 | v70))
      {
        v12[31] = *v67;
        goto LABEL_142;
      }

      if (!(v69 ^ 0x50445257 | v70))
      {
        v12[32] = *v67;
        goto LABEL_142;
      }

      if (v69 ^ 0x52505041 | v70 && v69 ^ 0x50434552 | v70)
      {
        if (v69 ^ 0x4C414E54 | v70)
        {
          if (v69 ^ 0x50563855 | v70)
          {
            if (v69 ^ 0x31564C41 | v70)
            {
              if (v69 ^ 0x32564C41 | v70)
              {
                log_OutText(*(v66 + 32), "DOMAIN_MNGR", 3, 0, "Unknown data: %s for %s", &v69, v12 + 296);
              }

              else
              {
                v12[36] = *v67;
              }
            }

            else
            {
              v12[35] = *v67;
            }
          }

          else
          {
            v12[34] = *v67;
          }

          goto LABEL_142;
        }

        LODWORD(v62) = 0;
        v63 = 0;
        *&v64 = 0;
        U32 = domain_mngr_utils_GetU32(*v67, v68, &v62, &v63);
        if ((U32 & 0x80000000) != 0)
        {
          StringZ = U32;
        }

        else
        {
          v49 = v12[30];
          v50 = v63;
          StringZ = domain_mngr_utils_GetU32(*v67, v68, &v62, &v63);
          if ((StringZ & 0x80000000) == 0)
          {
            v51 = (v49 + v50);
            v52 = v12[30];
            v53 = v63;
            if (vector_GetElemAt(v12[33], 0, &v64))
            {
              v54 = 1;
              while (domain_mngr_utils_ListContainsString(*(v64 + 8), (v52 + v53)) != 1)
              {
                if (!vector_GetElemAt(v12[33], v54++, &v64))
                {
                  goto LABEL_167;
                }
              }

              v56 = strlen(*(v64 + 8));
              v57 = strlen(v51);
              v58 = heap_Realloc(*(v66 + 8), *(v64 + 8), (v56 + v57 + 2));
              if (!v58)
              {
LABEL_160:
                log_OutPublic(*(v66 + 32), "DOMAIN_MNGR", 47000, 0);
                StringZ = 2296389642;
                goto LABEL_141;
              }

              *(v64 + 8) = v58;
              *&v58[strlen(v58)] = 124;
              strcat(*(v64 + 8), v51);
            }

            else
            {
LABEL_167:
              log_OutPublic(*(v66 + 32), "DOMAIN_MNGR", 47017, "%s%s%s%s", "chunk", "TNAL", "alias", v51);
              StringZ = 2296389636;
            }
          }
        }
      }

      else
      {
        v64 = xmmword_1E81AD398;
        v65 = unk_1E81AD3A8;
        v63 = 0;
        if (v69 ^ 0x50434552 | v70)
        {
          v62 = 0;
          if (vector_GetElemAt(v12[33], 0, &v62))
          {
            v45 = 1;
            do
            {
              if (*v62 == 1)
              {
                log_OutPublic(*(v66 + 32), "DOMAIN_MNGR", 47020, "%s%s", "chunk", &v69);
              }
            }

            while (vector_GetElemAt(v12[33], v45++, &v62));
          }
        }

        else
        {
          *(v12 + 6) = 1;
          LODWORD(v64) = 2;
        }

        v47 = v12[25];
        if (v47 && *v47)
        {
          *(&v64 + 1) = v12[25];
        }

        StringZ = domain_mngr_utils_GetU32(*v67, v68, &v63, &v65);
        if ((StringZ & 0x80000000) == 0)
        {
          *(&v65 + 1) = *v67 + v63;
          if (!vector_Add(v12[33], &v64))
          {
            goto LABEL_160;
          }
        }
      }
    }

    else
    {
      LODWORD(v64) = 0;
      *(v12 + 56) = 1;
      v12[29] = heap_Calloc(*(v66 + 8), 100, 8);
      v38 = v68;
      if (v68)
      {
        v39 = 0;
        do
        {
          LOBYTE(__s1) = 0;
          __s[0] = 0;
          LODWORD(v64) = 64;
          StringZ = ssftriff_reader_ReadStringZ(*v12, *v67, v38, v39, &__s1, &v64);
          if ((StringZ & 0x80000000) == 0 && v39 < v68)
          {
            v39 += v64;
            LODWORD(v64) = 256;
            StringZ = ssftriff_reader_ReadStringZ(*v12, *v67, v68, v39, __s, &v64);
          }

          if ((StringZ & 0x80000000) != 0)
          {
            break;
          }

          v40 = v64;
          if (strlen(&__s1) == 4 && __s1 == 80 && BYTE1(__s1) == 71 && BYTE2(__s1) - 48 <= 9 && BYTE3(__s1) - 48 <= 9)
          {
            v41 = BYTE3(__s1) + 10 * BYTE2(__s1) - 528;
            v42 = *(v12[29] + 8 * v41);
            if (!v42)
            {
              v43 = strlen(__s);
              *(v12[29] + 8 * v41) = heap_Calloc(*(v66 + 8), (v43 + 1), 1);
              v42 = *(v12[29] + 8 * v41);
            }

            strcpy(v42, __s);
          }

          v39 += v40;
          v38 = v68;
        }

        while (v39 < v68);
      }
    }

LABEL_141:
    if ((StringZ & 0x80000000) != 0)
    {
      goto LABEL_178;
    }

LABEL_142:
    v44 = ssftriff_reader_CloseChunk(*v12);
  }

  while ((v44 & 0x80000000) == 0);
  StringZ = v44;
LABEL_178:
  v10 = StringZ;
  a4 = v60;
  if ((StringZ & 0x1FFF) == 0x14)
  {
    v10 = 0;
    goto LABEL_181;
  }

LABEL_180:
  v12 = 0;
LABEL_181:
  *(a4 + 32) = v12;
  return v10;
}