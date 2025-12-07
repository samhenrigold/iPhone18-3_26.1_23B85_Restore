void *PurgeNLUStrArr(void *result, uint64_t a2, int a3, int a4, int a5)
{
  if (a2)
  {
    v5 = a3;
    v7 = a5 == a3 || a5 == 0;
    v8 = v7;
    v9 = a2 - 1;
    if (a2 != 1)
    {
      v10 = a4;
      v11 = result;
      v12 = 0;
      v13 = 0;
      v27 = a3 + 32;
      v14 = a4 + 32;
      v15 = a5 == a4 || v8;
      v16 = v15 ^ 1;
      while (1)
      {
        if (v11)
        {
          v17 = v11[2];
          if (v17)
          {
            if (v11[1] > v13)
            {
              v18 = *(v17 + 8 * v13);
              if (v18)
              {
                v19 = *v18;
                if (v19 == v5 || v27 == v19)
                {
                  v21 = v13 + 1;
                  do
                  {
                    v22 = v11[2];
                    if (v22)
                    {
                      if (v11[1] > v21)
                      {
                        v23 = *(v22 + 8 * v21);
                        if (v23)
                        {
                          v24 = *v23;
                          v25 = v24 == v10 || v14 == v24;
                          if (v25)
                          {
                            v12 = 1;
                          }

                          if (v25 && (v16 & 1) == 0)
                          {
                            if (v8)
                            {
                              v26 = v21;
                            }

                            else
                            {
                              v26 = v13;
                            }

                            result = StrArrSave(v11, v26, 0);
                            v12 = 1;
                          }
                        }
                      }
                    }

                    ++v21;
                  }

                  while (a2 != v21);
                }
              }
            }
          }
        }

        if (++v13 == v9)
        {
          if (!v12)
          {
            break;
          }

          v12 = 0;
          v13 = 0;
          if (!v9)
          {
            break;
          }
        }
      }
    }
  }

  return result;
}

_DWORD *CILE_New(void *a1, int a2, int a3, int a4)
{
  result = heap_Calloc(a1, 1, 24);
  if (result)
  {
    *result = a2;
    result[1] = a3;
    result[2] = a4;
  }

  return result;
}

void *CILE_Free(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    do
    {
      v4 = v3[2];
      result = heap_Free(a2, v3);
      v3 = v4;
    }

    while (v4);
  }

  return result;
}

uint64_t CILE_InsAfter(uint64_t a1, void *a2, int a3, int a4, int a5)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = a1;
  v9 = heap_Calloc(a2, 1, 24);
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  *v9 = a3;
  *(v9 + 4) = a4;
  *(v9 + 8) = a5;
  if (*v8)
  {
    *(v9 + 16) = *(*v8 + 16);
    v8 = *v8 + 16;
  }

  v10 = 0;
  *v8 = v9;
  return v10;
}

uint64_t CI_Update(uint64_t a1, _DWORD *a2, int a3, int a4, int a5)
{
  *a2 = a3;
  a2[1] = a4;
  a2[2] = a5;
  return 0;
}

uint64_t domain_mngr_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2296389633;
  }

  result = 0;
  *a2 = &IDomain_Mngr;
  return result;
}

uint64_t domain_mngr_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2296389639;
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

uint64_t domain_mngr_ObjOpen(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v30 = 0;
  v31 = 0;
  v29 = 0;
  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v31);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = InitRsrcFunction(a1, a2, &v30);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v11 = 2296389642;
  log_OutText(*(v31 + 32), "DOMAIN_MNGR", 4, 0, "Entering domain_mngr_ObjOpen");
  v12 = heap_Calloc(*(v31 + 8), 1, 136);
  if (!v12)
  {
    log_OutPublic(*(v31 + 32), "DOMAIN_MNGR", 47000, 0);
    return v11;
  }

  v13 = v12;
  *a5 = v12;
  *(a5 + 8) = 285;
  *v12 = a3;
  *(v12 + 8) = a4;
  v15 = v30;
  v14 = v31;
  *(v12 + 16) = v31;
  *(v12 + 24) = a1;
  *(v12 + 32) = a2;
  *(v12 + 40) = v15;
  *(v12 + 96) = 1;
  *(v12 + 128) = 0;
  v16 = *(v14 + 8);
  v26 = xmmword_287EEFE50;
  *&v27 = off_287EEFE60;
  v17 = vector_ObjOpen(v16, &v26, 1, (v13 + 88));
  v18 = v31;
  if (!v17)
  {
    goto LABEL_16;
  }

  v19 = *(v31 + 8);
  v26 = xmmword_287EEFE68;
  v27 = *&off_287EEFE78;
  v28 = off_287EEFE88;
  v20 = ssftmap_ObjOpen(v19, 0, &v26, (v13 + 112));
  v18 = v31;
  if ((v20 & 0x80000000) != 0)
  {
    v11 = v20;
    goto LABEL_16;
  }

  v21 = *(v31 + 8);
  v26 = xmmword_26ED4B770;
  *&v27 = 0;
  v22 = vector_ObjOpen(v21, &v26, 1, (v13 + 120));
  v18 = v31;
  if (!v22)
  {
LABEL_16:
    log_OutPublic(*(v18 + 32), "DOMAIN_MNGR", 47000, 0);
    goto LABEL_17;
  }

  Object = objc_GetObject(*(v31 + 48), "SYNTHSTREAM", &v29);
  if ((Object & 0x80000000) != 0)
  {
    v11 = Object;
  }

  else
  {
    *(v13 + 48) = *(v29 + 8);
    v11 = objc_GetObject(*(v31 + 48), "LINGDB", &v29);
    if ((v11 & 0x80000000) == 0)
    {
      *(v13 + 56) = *(v29 + 8);
      if ((objc_GetObject(*(v31 + 48), "AUDIOFETCHER", &v29) & 0x80000000) == 0)
      {
        v24 = v29;
        *(v13 + 64) = *(v29 + 8);
        *(v13 + 72) = *(v24 + 16);
      }

      log_OutText(*(v31 + 32), "DOMAIN_MNGR", 4, 0, "Exiting domain_mngr_ObjOpen");
      return v11;
    }
  }

LABEL_17:
  if (v31)
  {
    domain_mngr_ObjClose(*a5, *(a5 + 8));
    *a5 = 0;
    *(a5 + 8) = 0;
  }

  return v11;
}

uint64_t domain_mngr_ObjClose(uint64_t a1, int a2)
{
  v9 = 0;
  v3 = safeh_HandleCheck(a1, a2, 285, 136);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v9);
  if ((inited & 0x80000000) == 0)
  {
    log_OutText(*(v9 + 32), "DOMAIN_MNGR", 4, 0, "Entering domain_mngr_ObjClose");
    if (*(a1 + 64))
    {
      objc_ReleaseObject(*(v9 + 48), "AUDIOFETCHER");
    }

    if (*(a1 + 56))
    {
      objc_ReleaseObject(*(v9 + 48), "LINGDB");
    }

    if (*(a1 + 48))
    {
      objc_ReleaseObject(*(v9 + 48), "SYNTHSTREAM");
    }

    v5 = *(a1 + 120);
    if (v5)
    {
      vector_ObjClose(v5);
    }

    v6 = *(a1 + 112);
    if (v6)
    {
      ssftmap_ObjClose(v6);
    }

    v7 = *(a1 + 88);
    if (v7)
    {
      vector_ObjClose(v7);
    }

    log_OutText(*(v9 + 32), "DOMAIN_MNGR", 4, 0, "Exiting domain_mngr_ObjClose");
    heap_Free(*(v9 + 8), a1);
  }

  return inited;
}

uint64_t domain_mngr_ObjReopen(uint64_t a1, int a2)
{
  v11 = 0;
  v12 = 0;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  v3 = safeh_HandleCheck(a1, a2, 285, 136);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v12);
  if ((inited & 0x80000000) == 0)
  {
    log_OutText(*(v12 + 32), "DOMAIN_MNGR", 4, 0, "Entering domain_mngr_ObjReopen");
    if ((ssftmap_IteratorOpen(*(a1 + 112), 0, 0, &v11) & 0x80000000) == 0)
    {
      while ((ssftmap_IteratorNext(v11, &v10, &v9) & 0x80000000) == 0)
      {
        if (vector_GetElemAt(*(v9 + 16), 0, &v8))
        {
          v5 = 1;
          do
          {
            *(*v8 + 28) = 0;
          }

          while (vector_GetElemAt(*(v9 + 16), v5++, &v8));
        }
      }

      ssftmap_IteratorClose(v11);
    }

    *(a1 + 128) = 0;
    log_OutText(*(v12 + 32), "DOMAIN_MNGR", 4, 0, "Exiting domain_mngr_ObjReopen");
  }

  return inited;
}

uint64_t domain_mngr_ProcessStart(uint64_t a1, int a2)
{
  v6 = 0;
  inited = safeh_HandleCheck(a1, a2, 285, 136);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v6);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  refreshed = hlp_RefreshTNTypes(a1);
  if ((refreshed & 0x80000000) == 0)
  {
    *(a1 + 104) = vector_GetSize(*(a1 + 120));
  }

  return refreshed;
}

uint64_t domain_mngr_ProcessEnd(uint64_t a1, int a2)
{
  v8 = 0;
  v3 = safeh_HandleCheck(a1, a2, 285, 136);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v8);
  if ((inited & 0x80000000) == 0)
  {
    vector_Clear(*(a1 + 88));
    Size = vector_GetSize(*(a1 + 120));
    if (Size > *(a1 + 104))
    {
      v6 = Size;
      do
      {
        vector_StackPop(*(a1 + 120));
        --v6;
      }

      while (v6 > *(a1 + 104));
    }
  }

  return inited;
}

uint64_t domain_mngr_EnableDomain(uint64_t a1, int a2, const char *a3)
{
  v11 = 0;
  inited = safeh_HandleCheck(a1, a2, 285, 136);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v10 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v11);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v6 = ssftmap_Find(*(a1 + 112), a3, &v10);
  if ((v6 & 0x80000000) != 0)
  {
LABEL_8:
    log_OutPublic(*(v11 + 32), "DOMAIN_MNGR", 47008, "%s%s%s%x", "domain", a3, "lhError", v6);
    return v6;
  }

  v7 = vector_Add(*(a1 + 120), &v10);
  v8 = *(v11 + 32);
  if (!v7)
  {
    log_OutPublic(v8, "DOMAIN_MNGR", 47000, 0);
    v6 = 2296389642;
    goto LABEL_8;
  }

  log_OutText(v8, "DOMAIN_MNGR", 4, 0, "    Enable domain [%s]", a3);
  return v6;
}

uint64_t domain_mngr_DisableDomain(uint64_t a1, int a2, const char *a3)
{
  v10 = 0;
  v11 = 0;
  inited = safeh_HandleCheck(a1, a2, 285, 136);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v9 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v11);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v6 = ssftmap_Find(*(a1 + 112), a3, &v9);
  if ((v6 & 0x80000000) == 0 && *(a1 + 100))
  {
    v7 = 0;
    while (1)
    {
      vector_GetElemAt(*(a1 + 120), v7, &v10);
      if (v10)
      {
        if (v9 == *v10)
        {
          break;
        }
      }

      if (++v7 >= *(a1 + 100))
      {
        return v6;
      }
    }

    vector_Remove(*(a1 + 120), v7);
    --*(a1 + 100);
    log_OutText(*(v11 + 32), "DOMAIN_MNGR", 4, 0, "    Disable domain [%s]", a3);
  }

  return v6;
}

uint64_t domain_mngr_DisableAllDomains(uint64_t a1, int a2)
{
  v8 = 0;
  v3 = safeh_HandleCheck(a1, a2, 285, 136);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v8);
  if ((inited & 0x80000000) == 0)
  {
    Size = vector_GetSize(*(a1 + 120));
    if (Size > *(a1 + 100))
    {
      v6 = Size;
      do
      {
        vector_StackPop(*(a1 + 120));
        --v6;
      }

      while (v6 > *(a1 + 100));
    }

    log_OutText(*(v8 + 32), "DOMAIN_MNGR", 4, 0, "    Disable all domains");
  }

  return inited;
}

uint64_t domain_mngr_ConsultActivePromptDbs(uint64_t a1, int a2, const char **a3, uint64_t *a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7, __int16 *a8, int a9)
{
  v104 = 0;
  v17 = safeh_HandleCheck(a1, a2, 285, 136);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v104);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  log_OutText(*(v104 + 32), "DOMAIN_MNGR", 4, 0, "Entering domain_mngr_ConsultActivePromptDbs");
  vector_Clear(*(a1 + 88));
  v19 = *a5;
  if (v19 < 2)
  {
LABEL_7:
    v103 = a6;
    log_OutText(*(v104 + 32), "DOMAIN_MNGR", 5, 0, "    [%s]", *a3);
    v21 = *(*a4 + 12);
    v99 = a8;
    v22 = *a8;
    v23 = *(v104 + 8);
    v24 = cstdlib_strlen(*a3);
    v102 = CILE_New(v23, 1, v21 + v22, v24);
    if (!v102)
    {
      inited = 2296389642;
      log_OutPublic(*(v104 + 32), "DOMAIN_MNGR", 47000, 0);
      return inited;
    }

    v101 = a7;
    if (!*a5)
    {
LABEL_34:
      if (!cstdlib_strlen(*a3))
      {
        goto LABEL_107;
      }

      v41 = *(a1 + 16);
      v111 = 0;
      memset(__b, 0, sizeof(__b));
      v108 = 0;
      v109 = 0;
      v106 = 0;
      v107 = 0;
      v105 = 0;
      v42 = *(*a4 + 12);
      if (log_HasTraceTuningDataSubscriber(*(v41 + 32)))
      {
        log_OutTraceTuningData(*(v41 + 32), 250, "%s%s", v43, v44, v45, v46, v47, "BEG");
        v48 = *(v41 + 32);
        v49 = *a3;
        v50 = cstdlib_strlen(*a3);
        log_OutTraceTuningDataBinary(v48, 251, "", "text/plain;charset=depes", v49, v50);
        log_OutTraceTuningDataBinary(*(v41 + 32), 251, "", "application/x-realspeak-markers-pp;version=4.0", *a4, 32 * *a5);
      }

      v51 = *a5;
      v100 = v41;
      if (!*a5)
      {
        inited = 0;
        v59 = 0;
        goto LABEL_61;
      }

      v52 = 0;
      v53 = 0;
      inited = 2296389642;
      v54 = v102;
      while (1)
      {
        v55 = *a4 + 32 * v52;
        if (*v55 == 40)
        {
          v56 = *(v41 + 8);
          v57 = cstdlib_strlen(*(v55 + 24));
          v58 = heap_Alloc(v56, (v57 + 1));
          v59 = v58;
          if (!v58)
          {
            log_OutPublic(*(v100 + 32), "DOMAIN_MNGR", 47000, 0);
            goto LABEL_61;
          }

          cstdlib_strcpy(v58, *(*a4 + 32 * v52 + 24));
          ActivePrompt = hlp_FindActivePrompt(a1, v59, __b);
          if ((ActivePrompt & 0x80000000) != 0)
          {
            inited = ActivePrompt;
LABEL_61:
            v65 = v101;
            if (log_HasTraceTuningDataSubscriber(*(v100 + 32)))
            {
              v66 = *(v100 + 32);
              v67 = *a3;
              v68 = cstdlib_strlen(*a3);
              log_OutTraceTuningDataBinary(v66, 252, "", "text/plain;charset=depes", v67, v68);
              log_OutTraceTuningDataBinary(*(v100 + 32), 252, "", "application/x-realspeak-markers-pp;version=4.0", *a4, 32 * *a5);
              v65 = v101;
              log_OutTraceTuningData(*(v100 + 32), 250, "%s%s %s%u", v69, v70, v71, v72, v73, "END");
            }

            if ((inited & 0x80000000) == 0 && *(a1 + 96))
            {
              if (log_HasTraceTuningDataSubscriber(*(v100 + 32)))
              {
                log_OutTraceTuningData(*(v100 + 32), 270, "%s%s", v74, v75, v76, v77, v78, "BEG");
                v79 = *(v100 + 32);
                v80 = *a3;
                v81 = cstdlib_strlen(*a3);
                log_OutTraceTuningDataBinary(v79, 271, "", "text/plain;charset=depes", v80, v81);
                v65 = v101;
                log_OutTraceTuningDataBinary(*(v100 + 32), 271, "", "application/x-realspeak-markers-pp;version=4.0", *a4, 32 * *a5);
              }

              if ((ssftmap_IteratorOpen(*(a1 + 112), 0, 0, &v106) & 0x80000000) == 0)
              {
                while ((ssftmap_IteratorNext(v106, &v108, &v107) & 0x80000000) == 0)
                {
                  domain_SetConsulted(v107, 0);
                }

                ssftmap_IteratorClose(v106);
              }

              Size = vector_GetSize(*(a1 + 120));
              if (Size)
              {
                v83 = Size;
                while (vector_GetElemAt(*(a1 + 120), --v83, &v109))
                {
                  if (domain_GetConsulted(*v109))
                  {
                    if (!v83)
                    {
                      break;
                    }
                  }

                  else
                  {
                    v84 = vector_GetSize(*(*v109 + 16));
                    if (v84)
                    {
                      v85 = v84;
                      if (vector_GetElemAt(*(*v109 + 16), v84 - 1, &v105))
                      {
                        v86 = v85 - 2;
                        while (1)
                        {
                          inited = activeprompt_db_Consult(*v105, a3, a4, a5, v103, v101, v102, a9);
                          if ((inited & 0x80000000) != 0)
                          {
                            break;
                          }

                          if (v86 != -1)
                          {
                            if (vector_GetElemAt(*(*v109 + 16), v86--, &v105))
                            {
                              continue;
                            }
                          }

                          goto LABEL_83;
                        }

                        v65 = v101;
                        break;
                      }
                    }

LABEL_83:
                    domain_SetConsulted(*v109, 1);
                    v65 = v101;
                    if (!v83)
                    {
                      break;
                    }
                  }
                }
              }
            }

            if (v59)
            {
              heap_Free(*(v100 + 8), v59);
            }

            if (log_HasTraceTuningDataSubscriber(*(v100 + 32)))
            {
              v88 = *(v100 + 32);
              v89 = *a3;
              v90 = cstdlib_strlen(*a3);
              log_OutTraceTuningDataBinary(v88, 272, "", "text/plain;charset=depes", v89, v90);
              log_OutTraceTuningDataBinary(*(v100 + 32), 272, "", "application/x-realspeak-markers-pp;version=4.0", *a4, 32 * *a5);
              v91 = *(a1 + 56);
              v116 = 0;
              *v117 = 0;
              v115 = 0;
              v114 = 0;
              v113 = 0;
              v112 = 0;
              if (((*(v91 + 104))(v103, v65, 1, 0, &v117[1]) & 0x80000000) == 0 && ((*(v91 + 152))(v103, v65, 2, v117[1], &v115) & 0x80000000) == 0)
              {
                if (v115)
                {
                  if (((*(v91 + 104))(v103, v65, 2, v117[1], v117) & 0x80000000) == 0)
                  {
                    v97 = v117[0];
                    if (v117[0])
                    {
                      while (((*(v91 + 168))(v103, v65, v97, 0, 1, &v113, &v116 + 2) & 0x80000000) == 0)
                      {
                        if (v113 == 5)
                        {
                          if (((*(v91 + 176))(v103, v65, v117[0], 4, &v114, &v116 + 2) & 0x80000000) != 0)
                          {
                            break;
                          }

                          if (HIWORD(v116) && !cstdlib_strncmp(v114, "phon", HIWORD(v116)))
                          {
                            if (((*(v91 + 176))(v103, v65, v117[0], 3, &v112, &v116 + 2) & 0x80000000) != 0 || ((*(v91 + 168))(v103, v65, v117[0], 1, 1, &v116, &v116 + 2) & 0x80000000) != 0 || ((*(v91 + 168))(v103, v65, v117[0], 2, 1, &v115 + 2, &v116 + 2) & 0x80000000) != 0)
                            {
                              break;
                            }

                            log_OutTraceTuningData(*(v100 + 32), 272, "%s%s %s%d %s%d", v92, v93, v94, v95, v96, "PHON");
                          }
                        }

                        if (((*(v91 + 120))(v103, v65, v117[0], v117) & 0x80000000) == 0)
                        {
                          v97 = v117[0];
                          if (v117[0])
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

              log_OutTraceTuningData(*(v100 + 32), 270, "%s%s %s%u", v92, v93, v94, v95, v96, "END");
            }

LABEL_107:
            if (v104)
            {
              CILE_Free(v102, *(v104 + 8));
              goto LABEL_109;
            }

            return inited;
          }

          log_OutText(*(v100 + 32), "DOMAIN_MNGR", 5, 0, "    Do User Prompt Insertion for [%s]", v59);
          heap_Free(*(v100 + 8), v59);
          v41 = v100;
          while (1)
          {
            v61 = *(*a4 + 32 * v52 + 12);
            v62 = *(v54 + 1);
            v63 = *(v54 + 2) + v62;
            if (v62 <= v61 && v61 < v63)
            {
              break;
            }

            if (v61 == v63 && v61 == v42 + cstdlib_strlen(*a3))
            {
              v61 = *(*a4 + 32 * v52 + 12);
              break;
            }

            v54 = v54[2];
            if (!v54)
            {
              v59 = 0;
              inited = 2296389632;
              goto LABEL_61;
            }
          }

          v53 = activeprompt_Insert(__b, (v61 - v42), 0, v42, a3, a4, a5, v52, v54, v103, v101, v99);
          if ((v53 & 0x80000000) != 0)
          {
LABEL_56:
            v59 = 0;
            inited = v53;
            goto LABEL_61;
          }

          log_OutText(*(v100 + 32), "DOMAIN_MNGR", 5, 0, "    [%s]", *a3);
          v51 = *a5;
        }

        if (++v52 >= v51)
        {
          goto LABEL_56;
        }
      }
    }

    v25 = 0;
    v26 = 0;
    v27 = v102;
    while (1)
    {
      v28 = *a4;
      if (*(*a4 + v25) == 12)
      {
        v29 = *(v28 + v25 + 24);
        if (v29)
        {
          if (*v29)
          {
            if (cstdlib_strcmp(v29, "normal"))
            {
              v28 = *a4;
              if (!*(a1 + 128))
              {
                v30 = *(v104 + 8);
                v31 = cstdlib_strlen(*(v28 + v25 + 24));
                v32 = heap_Alloc(v30, (v31 + 1));
                if (!v32)
                {
                  goto LABEL_85;
                }

                v33 = v32;
                cstdlib_strcpy(v32, *(*a4 + v25 + 24));
                domain_mngr_EnableDomain(a1, a2, v33);
                heap_Free(*(v104 + 8), v33);
                goto LABEL_33;
              }
            }

            else
            {
              v28 = *a4;
            }
          }
        }
      }

      v34 = *(v28 + v25);
      if (v34 > 25)
      {
        if (v34 == 26 || v34 == 29)
        {
LABEL_28:
          v36 = *(v28 + v25 + 12);
          v37 = *(v27 + 1);
          v38 = v36 - v37;
          if (v36 > v37)
          {
            v39 = *(v27 + 2);
            if ((v39 - v38) >= 1)
            {
              inited = CI_Update(*(v104 + 8), v27, *v27, v37, v38);
              if ((inited & 0x80000000) != 0)
              {
                goto LABEL_107;
              }

              v40 = CILE_New(*(v104 + 8), *v27, *(*a4 + v25 + 12), v39 - *(v27 + 2));
              if (!v40)
              {
LABEL_85:
                inited = 2296389642;
                log_OutPublic(*(v104 + 32), "DOMAIN_MNGR", 47000, 0);
                goto LABEL_107;
              }

              v27[2] = v40;
              v27 = v40;
            }
          }
        }
      }

      else
      {
        if (v34 == 8)
        {
          goto LABEL_28;
        }

        if (v34 == 12 && !*(a1 + 128))
        {
          hlp_DisableLastDomain(a1);
        }
      }

LABEL_33:
      ++v26;
      v25 += 32;
      if (v26 >= *a5)
      {
        goto LABEL_34;
      }
    }
  }

  v20 = 0;
  while (*(*a4 + 32 * v20 + 12) <= *(*a4 + 44 + 32 * v20))
  {
    if ((v19 - 1) <= ++v20)
    {
      goto LABEL_7;
    }
  }

  log_OutPublic(*(v104 + 32), "DOMAIN_MNGR", 47015, 0);
  inited = 2296389639;
LABEL_109:
  if (v104)
  {
    log_OutText(*(v104 + 32), "DOMAIN_MNGR", 4, 0, "Exiting domain_mngr_ConsultActivePromptDbs");
  }

  return inited;
}

uint64_t domain_mngr_ConsultOriOrth(uint64_t a1, int a2, const char **a3, uint64_t *a4, unsigned __int16 *a5)
{
  v81 = *MEMORY[0x277D85DE8];
  v74 = 0;
  cstdlib_strcpy(__dst, "normal");
  v10 = safeh_HandleCheck(a1, a2, 285, 136);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v74);
  if ((inited & 0x80000000) == 0)
  {
    log_OutText(*(v74 + 32), "DOMAIN_MNGR", 4, 0, "Entering domain_mngr_ConsultOriOrth");
    *(a1 + 128) = 1;
    v73 = CILE_New(*(v74 + 8), 1, *(*a4 + 12), *(*a4 + 16));
    if (v73)
    {
      if (*a5)
      {
        v12 = 0;
        __s1 = __dst;
        v72 = __dst;
        v13 = v73;
        while (1)
        {
          v14 = *a4;
          v15 = *a4 + 32 * v12;
          v16 = *v15;
          if (*v15 == 12)
          {
            v17 = *(v15 + 24);
            if (!v17 || !*v17)
            {
LABEL_29:
              hlp_DisableLastDomain(a1);
              goto LABEL_30;
            }

            v18 = cstdlib_strcmp(v17, "normal");
            v14 = *a4;
            if (v18)
            {
              v19 = *(v74 + 8);
              v20 = cstdlib_strlen(*(v14 + 32 * v12 + 24));
              v21 = heap_Alloc(v19, (v20 + 1));
              if (!v21)
              {
                goto LABEL_97;
              }

              v22 = v21;
              cstdlib_strcpy(v21, *(*a4 + 32 * v12 + 24));
              domain_mngr_EnableDomain(a1, a2, v22);
              heap_Free(*(v74 + 8), v22);
              goto LABEL_30;
            }

            v16 = *(v14 + 32 * v12);
          }

          if (v16 > 0x28)
          {
            break;
          }

          if (((1 << v16) & 0x10024000100) != 0)
          {
            v23 = *(v14 + 32 * v12 + 12);
            v24 = v13[1];
            v25 = v23 - v24;
            if (v23 > v24)
            {
              v26 = v13[2];
              if (v26 != v25)
              {
                inited = CI_Update(*(v74 + 8), v13, *v13, v24, v25);
                if ((inited & 0x80000000) != 0)
                {
                  goto LABEL_98;
                }

                v27 = CILE_New(*(v74 + 8), *v13, *(*a4 + 32 * v12 + 12), v26 - v13[2]);
                if (!v27)
                {
                  goto LABEL_97;
                }

                *(v13 + 2) = v27;
                v13 = v27;
              }
            }

            goto LABEL_30;
          }

          if (v16 == 12)
          {
            goto LABEL_29;
          }

          if (v16 != 21)
          {
            break;
          }

          v28 = cstdlib_strcmp(__s1, *(v14 + 32 * v12 + 24));
          v14 = *a4;
          if (!v28)
          {
            break;
          }

LABEL_24:
          if (cstdlib_strcmp(*(v14 + 32 * v12 + 24), __dst))
          {
            goto LABEL_25;
          }

          v36 = *(*a4 + 32 * v12);
          if (v36 == 21)
          {
            if (!cstdlib_strcmp(v72, __dst))
            {
              goto LABEL_46;
            }

            v36 = *(*a4 + 32 * v12);
          }

          if (v36 != 36 || cstdlib_strcmp(__s1, __dst))
          {
LABEL_25:
            v29 = 0;
            goto LABEL_26;
          }

LABEL_46:
          v29 = 1;
LABEL_26:
          v30 = *a4 + 32 * v12;
          if (*v30 == 36)
          {
            v72 = *(v30 + 24);
          }

          else if (*v30 == 21)
          {
            __s1 = *(v30 + 24);
          }

          v37 = *(v30 + 12);
          v38 = v13[1];
          v39 = v37 - v38;
          if (v37 <= v38 || (v40 = v13[2], v40 == v39))
          {
            if (v37 == v38)
            {
              inited = CI_Update(*(v74 + 8), v13, v29, v37, v13[2]);
              if ((inited & 0x80000000) != 0)
              {
                goto LABEL_98;
              }
            }
          }

          else
          {
            inited = CI_Update(*(v74 + 8), v13, *v13, v13[1], v39);
            if ((inited & 0x80000000) != 0)
            {
              goto LABEL_98;
            }

            v41 = CILE_New(*(v74 + 8), v29, *(*a4 + 32 * v12 + 12), v40 - v13[2]);
            if (!v41)
            {
LABEL_97:
              inited = 2296389642;
              log_OutPublic(*(v74 + 32), "DOMAIN_MNGR", 47000, 0);
              goto LABEL_98;
            }

            *(v13 + 2) = v41;
            v13 = v41;
          }

LABEL_30:
          if (++v12 >= *a5)
          {
            goto LABEL_69;
          }
        }

        v31 = v74;
        __s2 = 0;
        if (!v72)
        {
          goto LABEL_30;
        }

        if (!v74)
        {
          goto LABEL_30;
        }

        if (!v14)
        {
          goto LABEL_30;
        }

        v32 = v14 + 32 * v12;
        if (*v32 != 36 || !cstdlib_strcmp(v72, *(v32 + 24)) || (paramc_ParamGetStr(*(v31 + 40), "langcode", &__s2) & 0x80000000) != 0)
        {
          goto LABEL_30;
        }

        v33 = cstdlib_strcmp(v72, "normal");
        v34 = *(v32 + 24);
        if (v33)
        {
          if (cstdlib_strcmp(v34, "normal"))
          {
LABEL_58:
            v42 = *a5;
            v14 = *a4;
            if (*a5)
            {
              v43 = 0;
              v44 = *(v14 + 32 * v12 + 12);
              v45 = *a4;
              do
              {
                if (v43)
                {
                  break;
                }

                v46 = v45[3];
                if (v46 > v44)
                {
                  break;
                }

                v43 = v46 == v44 && *v45 == 34;
                v45 += 8;
                --v42;
              }

              while (v42);
              if (v43)
              {
                goto LABEL_30;
              }
            }

            goto LABEL_24;
          }

          v35 = __s2;
          v34 = v72;
        }

        else
        {
          v35 = __s2;
        }

        if (!cstdlib_strcmp(v34, v35))
        {
          goto LABEL_30;
        }

        goto LABEL_58;
      }

LABEL_69:
      if (*a3 && cstdlib_strlen(*a3))
      {
        v47 = *(a1 + 16);
        v78 = 0;
        __s2 = 0;
        v76 = 0;
        v77 = 0;
        v75 = 0;
        if (log_HasTraceTuningDataSubscriber(*(v47 + 32)))
        {
          log_OutTraceTuningData(*(v47 + 32), 210, "%s%s", v48, v49, v50, v51, v52, "BEG");
          v53 = *(v47 + 32);
          v54 = *a3;
          v55 = cstdlib_strlen(*a3);
          log_OutTraceTuningDataBinary(v53, 211, "", "text/plain;charset=utf-8", v54, v55);
          log_OutTraceTuningDataBinary(*(v47 + 32), 211, "", "application/x-realspeak-markers-pp;version=4.0", *a4, 32 * *a5);
        }

        if ((ssftmap_IteratorOpen(*(a1 + 112), 0, 0, &v76) & 0x80000000) == 0)
        {
          while ((ssftmap_IteratorNext(v76, &v78, &v77) & 0x80000000) == 0)
          {
            domain_SetConsulted(v77, 0);
          }

          ssftmap_IteratorClose(v76);
        }

        Size = vector_GetSize(*(a1 + 120));
        if (Size)
        {
          v57 = Size;
          inited = 0;
          while (vector_GetElemAt(*(a1 + 120), --v57, &__s2))
          {
            if (domain_GetConsulted(*__s2))
            {
              if (!v57)
              {
                break;
              }
            }

            else
            {
              v58 = vector_GetSize(*(*__s2 + 16));
              if (v58)
              {
                v59 = v58;
                if (vector_GetElemAt(*(*__s2 + 16), v58 - 1, &v75))
                {
                  v60 = v59 - 2;
                  while (1)
                  {
                    inited = activeprompt_db_ConsultOriOrth(*v75, a3, a4, a5, v73);
                    if ((inited & 0x80000000) != 0)
                    {
                      goto LABEL_93;
                    }

                    if (v60 != -1)
                    {
                      if (vector_GetElemAt(*(*__s2 + 16), v60--, &v75))
                      {
                        continue;
                      }
                    }

                    break;
                  }
                }
              }

              domain_SetConsulted(*__s2, 1);
              if (!v57)
              {
                break;
              }
            }
          }
        }

        else
        {
          inited = 0;
        }

LABEL_93:
        if (log_HasTraceTuningDataSubscriber(*(v47 + 32)))
        {
          if ((inited & 0x80000000) == 0)
          {
            v67 = *(v47 + 32);
            v68 = *a3;
            v69 = cstdlib_strlen(v68);
            log_OutTraceTuningDataBinary(v67, 212, "", "text/plain;charset=utf-8", v68, v69);
            log_OutTraceTuningDataBinary(*(v47 + 32), 212, "", "application/x-realspeak-markers-pp;version=4.0", *a4, 32 * *a5);
          }

          log_OutTraceTuningData(*(v47 + 32), 210, "%s%s %s%u", v62, v63, v64, v65, v66, "END");
        }
      }

LABEL_98:
      if (v74)
      {
        CILE_Free(v73, *(v74 + 8));
        if (v74)
        {
          log_OutText(*(v74 + 32), "DOMAIN_MNGR", 4, 0, "Exiting domain_mngr_ConsultOriOrth");
        }
      }
    }

    else
    {
      inited = 2296389642;
      log_OutPublic(*(v74 + 32), "DOMAIN_MNGR", 47000, 0);
    }
  }

  return inited;
}

uint64_t domain_mngr_InsertPromptOrth(uint64_t a1, int a2, const char **a3, uint64_t *a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7, _WORD *a8)
{
  v30 = 0;
  v12 = safeh_HandleCheck(a1, a2, 285, 136);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v29 = 0;
  memset(__b, 0, sizeof(__b));
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v30);
  if ((inited & 0x80000000) == 0)
  {
    v14 = *a5;
    if (*a5)
    {
      v15 = 0;
      v16 = 0;
      v17 = *(*a4 + 12);
      do
      {
        if (*(*a4 + v15) == 40)
        {
          v18 = *(v30 + 8);
          v19 = cstdlib_strlen(*(*a4 + v15 + 24));
          v20 = heap_Alloc(v18, (v19 + 1));
          if (!v20)
          {
            log_OutPublic(*(v30 + 32), "DOMAIN_MNGR", 47000, 0);
            return 2296389642;
          }

          v21 = v20;
          cstdlib_strcpy(v20, *(*a4 + v15 + 24));
          ActivePrompt = hlp_FindActivePrompt(a1, v21, __b);
          if ((ActivePrompt & 0x80000000) != 0)
          {
            inited = ActivePrompt;
            heap_Free(*(v30 + 8), v21);
            return inited;
          }

          log_OutText(*(v30 + 32), "DOMAIN_MNGR", 5, 0, "    Do User Prompt Insertion for [%s]", v21);
          heap_Free(*(v30 + 8), v21);
          inited = activeprompt_InsertOrth(__b, *(*a4 + v15 + 12) - v17, v17, a3, a4, a5, v16, v23, a6, a7, a8);
          if ((inited & 0x80000000) != 0)
          {
            return inited;
          }

          log_OutText(*(v30 + 32), "DOMAIN_MNGR", 5, 0, "    [%s]", *a3);
          v14 = *a5;
        }

        ++v16;
        v15 += 32;
      }

      while (v16 < v14);
    }
  }

  return inited;
}

uint64_t domain_mngr_ExternalDBRegister(uint64_t a1, int a2)
{
  v4 = 0;
  result = safeh_HandleCheck(a1, a2, 285, 136);
  if ((result & 0x80000000) == 0)
  {
    LODWORD(result) = InitRsrcFunction(*a1, *(a1 + 8), &v4);
    if (result >= 0)
    {
      return 2296389633;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t domain_mngr_ActivePromptFind(uint64_t a1, int a2, char *a3, void *a4, uint64_t a5, char **a6, void *a7)
{
  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  result = safeh_HandleCheck(a1, a2, 285, 136);
  if ((result & 0x80000000) == 0)
  {
    result = hlp_FindActivePrompt(a1, a3, a4);
    if ((result & 0x80000000) == 0)
    {
      if (a6)
      {
        result = activeprompt_GetRecPromptURI(a4, a5, a6);
      }

      if (a7 && (result & 0x80000000) == 0)
      {

        return activeprompt_GetUserNorm(a4, a7);
      }
    }
  }

  return result;
}

uint64_t domain_mngr_ResourceTypes(uint64_t a1, int a2, void *a3)
{
  v6 = 0;
  result = safeh_HandleCheck(a1, a2, 285, 136);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(*a1, *(a1 + 8), &v6);
    if ((result & 0x80000000) == 0)
    {
      *a3 = &domain_mngr_ResourceTypes_SZ_CONTENT_TYPES;
    }
  }

  return result;
}

uint64_t domain_mngr_ResourceLoad(__int128 *a1, uint64_t a2, char *a3, char *a4, const void *a5, int a6, uint64_t a7)
{
  v58 = 0;
  v56 = 0;
  v57 = 0;
  active = 2296389639;
  if (!a3 || !a7)
  {
    return active;
  }

  v9 = a6;
  v13 = a2;
  if (a4)
  {
    v15 = a6 != 0;
    if (!a5 && a6)
    {
      return active;
    }
  }

  else
  {
    if (!a5 || !a6)
    {
      return active;
    }

    v15 = 1;
  }

  inited = safeh_HandleCheck(a1, a2, 285, 136);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  memset(v55, 0, sizeof(v55));
  inited = InitRsrcFunction(*a1, *(a1 + 1), &v58);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *a7 = 0;
  *(a7 + 8) = 0;
  if (v15)
  {
    v22 = a5;
  }

  else
  {
    v22 = 0;
  }

  if (a5 == 0 || !v15)
  {
    v9 = 0;
  }

  log_OutTraceTuningData(*(v58 + 32), 201, "%s%s %s%s %s%s", v17, v18, v19, v20, v21, "BEG");
  active = activeprompt_db_ObjOpen(0, a1, a3, a4, v22, v9, 0, &v56);
  if ((active & 0x80000000) != 0)
  {
    goto LABEL_43;
  }

  v28 = v56;
  if (v56)
  {
    if (!*(v56 + 80))
    {
      goto LABEL_27;
    }

    v29 = cstdlib_strstr(a3, "application/x-vocalizer-activeprompt-db");
    v28 = v56;
    if (v29)
    {
      v30 = (*(*(a1 + 8) + 104))(*(a1 + 9), *(a1 + 10), *(v56 + 80));
      active = v30;
      if ((v30 & 0x80000000) != 0 || (v28 = v56) == 0)
      {
        if ((v30 & 0x80000000) != 0)
        {
          goto LABEL_43;
        }

        goto LABEL_53;
      }

LABEL_27:
      v31 = *(*(v28 + 8) + 168);
      if ((ssftmap_Find(*(a1 + 14), v31, &v57) & 0x80000000) != 0)
      {
        v33 = domain_ObjOpen(0, *a1, *(a1 + 1), v55);
        if ((v33 & 0x80000000) != 0)
        {
          v35 = v33;
          log_OutPublic(*(v58 + 32), "DOMAIN_MNGR", 47004, "%s%s%s%x", "domain", v31, "lhError", v33);
          v36 = 0;
          v37 = 1;
          active = v35;
          goto LABEL_45;
        }

        v34 = ssftmap_Insert(*(a1 + 14), v31, v55);
        if ((v34 & 0x80000000) != 0 || (v34 = ssftmap_Find(*(a1 + 14), v31, &v57), (v34 & 0x80000000) != 0))
        {
          active = v34;
          log_OutPublic(*(v58 + 32), "DOMAIN_MNGR", 47005, "%s%s%s%x", "domain", v31, "lhError", v34);
          domain_ObjClose(v55);
          goto LABEL_43;
        }

        log_OutText(*(v58 + 32), "DOMAIN_MNGR", 4, 0, "Adding %s", v31);
      }

      v32 = domain_checkIfPresent(v57, v56);
      if ((v32 & 0x80000000) == 0)
      {
        active = domain_AddActivePromptDb(v57, v56);
        if ((active & 0x80000000) == 0)
        {
          if (cstdlib_strstr(a3, ";mode=automatic") || !cstdlib_strcmp((*(v56 + 8) + 52), "automatic"))
          {
            active = domain_mngr_EnableDomain(a1, v13, v31);
            if ((active & 0x80000000) != 0)
            {
              log_OutPublic(*(v58 + 32), "DOMAIN_MNGR", 47010, "%s%s%s%x", "domain", v31, "lhError", active);
              v36 = 0;
              v37 = 0;
              goto LABEL_44;
            }

            ++*(a1 + 25);
          }

          hlp_RefreshTNTypes(a1);
          *a7 = v56;
          *(a7 + 8) = 316;
          goto LABEL_53;
        }

        log_OutPublic(*(v58 + 32), "DOMAIN_MNGR", 47009, "%s%s%s%x", "domain", v31, "lhError", active);
LABEL_43:
        v36 = 0;
        v37 = 1;
LABEL_44:
        v35 = active;
        goto LABEL_45;
      }

      v35 = v32;
      v36 = (v32 & 0x1FFF) == 19;
      if ((v32 & 0x1FFF) == 0x13)
      {
        active = 0;
      }

      else
      {
        active = v32;
      }

      v37 = 1;
LABEL_45:
      log_OutTraceTuningData(*(v58 + 32), 201, "%s%s %s%u", v23, v24, v25, v26, v27, "END");
      v43 = v56;
      if (v56)
      {
        if (v37)
        {
          log_OutTraceTuningData(*(v58 + 32), 202, "%s%s %s%s", v38, v39, v40, v41, v42, "BEG");
          activeprompt_db_ObjClose(v56, v36);
          log_OutTraceTuningData(*(v58 + 32), 202, "%s%s %s%u", v44, v45, v46, v47, v48, "END");
          return active;
        }

        *a7 = v56;
        *(a7 + 8) = 316;
        domain_mngr_ResourceUnload(a1, v13, v43, *(a7 + 8));
        *a7 = 0;
        *(a7 + 8) = 0;
      }

      return v35;
    }

    if (v56)
    {
      goto LABEL_27;
    }
  }

LABEL_53:
  if (log_HasTraceTuningDataSubscriber(*(v58 + 32)))
  {
    log_OutTraceTuningData(*(v58 + 32), 201, "%s%s %s%u", v49, v50, v51, v52, v53, "END");
  }

  return active;
}

uint64_t domain_mngr_ResourceUnload(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  inited = safeh_HandleCheck(a1, a2, 285, 136);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = safeh_HandleCheck(a3, a4, 316, 88);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v33);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v9 = 2296390669;
  if ((ssftmap_IteratorOpen(*(a1 + 112), 0, 0, &v32) & 0x80000000) == 0)
  {
    if ((ssftmap_IteratorNext(v32, &v31, &v30) & 0x80000000) != 0)
    {
      ssftmap_IteratorClose(v32);
    }

    else
    {
      do
      {
        if (vector_GetElemAt(*(v30 + 16), 0, &v29))
        {
          v15 = 0;
          while (*v29 != a3)
          {
            if (!vector_GetElemAt(*(v30 + 16), ++v15, &v29))
            {
              goto LABEL_16;
            }
          }

          log_OutTraceTuningData(*(v33 + 32), 202, "%s%s %s%s", v10, v11, v12, v13, v14, "BEG");
          v16 = *v29;
          if (*(*v29 + 80))
          {
            inited = (*(*(a1 + 64) + 112))(*(a1 + 72), *(a1 + 80));
            if ((inited & 0x80000000) != 0)
            {
              return inited;
            }

            v16 = *v29;
          }

          v17 = domain_mngr_DisableDomain(a1, a2, *(*(v16 + 8) + 168));
          if ((v17 & 0x80000000) != 0)
          {
            v9 = v17;
            log_OutTraceTuningData(*(v33 + 32), 202, "%s%s %s%u", v18, v19, v20, v21, v22, "END");
            return v9;
          }

          vector_Remove(*(v30 + 16), v15);
          log_OutTraceTuningData(*(v33 + 32), 202, "%s%s %s%u", v23, v24, v25, v26, v27, "END");
          v9 = 0;
        }

LABEL_16:
        ;
      }

      while ((ssftmap_IteratorNext(v32, &v31, &v30) & 0x80000000) == 0);
      ssftmap_IteratorClose(v32);
      if ((v9 & 0x80000000) == 0)
      {
        hlp_RefreshTNTypes(a1);
      }
    }
  }

  return v9;
}

uint64_t domain_mngr_ResourceEnable(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  inited = safeh_HandleCheck(a1, a2, 285, 136);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = safeh_HandleCheck(a3, a4, 316, 88);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v18);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v8 = 2296390669;
  if ((ssftmap_IteratorOpen(*(a1 + 112), 0, 0, &v17) & 0x80000000) == 0)
  {
    if ((ssftmap_IteratorNext(v17, &v16, &v15) & 0x80000000) != 0)
    {
      v9 = 2296390669;
    }

    else
    {
      v9 = 2296390669;
      do
      {
        if (vector_GetElemAt(*(v15 + 16), 0, &v14))
        {
          v10 = 1;
          while (1)
          {
            v11 = *v14;
            if (*v14 == a3)
            {
              break;
            }

            if (!vector_GetElemAt(*(v15 + 16), v10++, &v14))
            {
              goto LABEL_15;
            }
          }

          if (*(v11 + 24))
          {
            v9 = 2296390682;
          }

          else
          {
            v9 = 0;
            *(v11 + 24) = 1;
          }
        }

LABEL_15:
        ;
      }

      while ((ssftmap_IteratorNext(v17, &v16, &v15) & 0x80000000) == 0);
    }

    ssftmap_IteratorClose(v17);
    return v9;
  }

  return v8;
}

uint64_t domain_mngr_ResourceDisable(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v16 = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  inited = safeh_HandleCheck(a1, a2, 285, 136);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = safeh_HandleCheck(a3, a4, 316, 88);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v17);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v8 = 2296390669;
  if ((ssftmap_IteratorOpen(*(a1 + 112), 0, 0, &v16) & 0x80000000) == 0)
  {
LABEL_5:
    while ((ssftmap_IteratorNext(v16, &v15, &v14) & 0x80000000) == 0)
    {
      if (vector_GetElemAt(*(v14 + 16), 0, &v13))
      {
        v9 = 1;
        while (1)
        {
          v10 = *v13;
          if (*v13 == a3)
          {
            break;
          }

          if (!vector_GetElemAt(*(v14 + 16), v9++, &v13))
          {
            goto LABEL_5;
          }
        }

        v8 = 2296390669;
        if (*(v10 + 24))
        {
          v8 = 0;
          *(v10 + 24) = 0;
        }
      }
    }

    ssftmap_IteratorClose(v16);
  }

  return v8;
}

uint64_t *domain_mngr_IElemConsultMemVecFreeParts(uint64_t *result, void *a2)
{
  if (result)
  {
    if (*result)
    {
      return heap_Free(a2, *result);
    }
  }

  return result;
}

uint64_t domain_mngr_IElemDomainCopy(void *a1, uint64_t a2, void *a3)
{
  v5 = heap_Alloc(a2, 32);
  if (!v5)
  {
    return 2296389642;
  }

  v6 = v5;
  cstdlib_memcpy(v5, a1, 0x20uLL);
  result = 0;
  a1[2] = 0;
  *a3 = v6;
  return result;
}

void *domain_mngr_IElemDomainFree(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    domain_ObjClose(result);

    return heap_Free(a2, v3);
  }

  return result;
}

uint64_t hlp_RefreshTNTypes(uint64_t a1)
{
  v14 = 0;
  v12 = 0;
  v13 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v14);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  log_OutText(*(v14 + 32), "DOMAIN_MNGR", 4, 0, "Entering hlp_RefreshTNTypes");
  inited = ssftstring_ObjOpen(*(v14 + 8), &v13);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  if ((ssftmap_IteratorOpen(*(a1 + 112), 0, 0, &v12) & 0x80000000) == 0)
  {
    while ((ssftmap_IteratorNext(v12, &v11, &v10) & 0x80000000) == 0)
    {
      if (vector_GetElemAt(*(v10 + 16), 0, &v9))
      {
        v3 = 1;
        do
        {
          activeprompt_db_GetTNTypes(*v9, v13);
        }

        while (vector_GetElemAt(*(v10 + 16), v3++, &v9));
      }
    }

    ssftmap_IteratorClose(v12);
  }

  v6 = *(v14 + 40);
  v7 = ssftstring_CStr(v13);
  v5 = paramc_ParamSetStr(v6, "domainmngrtntypes", v7);
  ssftstring_ObjClose(v13);
  log_OutText(*(v14 + 32), "DOMAIN_MNGR", 4, 0, "Exiting hlp_RefreshTNTypes");
  return v5;
}

uint64_t hlp_FindActivePrompt(uint64_t a1, char *__s, void *__b)
{
  v3 = *(a1 + 16);
  __s1 = 0;
  v29 = 0;
  v4 = 2296389652;
  v27 = 0;
  if (!v3)
  {
    return 2296389639;
  }

  if (__b)
  {
    cstdlib_memset(__b, 0, 0x68uLL);
  }

  v8 = domain_mngr_utils_DuplicateString(*(v3 + 8), __s, &__s1);
  if ((v8 & 0x80000000) == 0)
  {
    v14 = cstdlib_strstr(__s1, "::");
    if (!v14)
    {
      v4 = 2296389633;
      goto LABEL_17;
    }

    *v14 = 0;
    v15 = v14 + 2;
    v8 = ssftmap_Find(*(a1 + 112), __s1, &v29);
    if ((v8 & 0x80000000) == 0)
    {
      Size = vector_GetSize(*(v29 + 16));
      if (Size)
      {
        v17 = Size;
        if (vector_GetElemAt(*(v29 + 16), Size - 1, &v27))
        {
          v18 = v17 - 2;
          do
          {
            v4 = activeprompt_db_Get(*v27, v15, __b);
            if ((v4 & 0x80000000) == 0)
            {
              break;
            }

            if (v18 == -1)
            {
              break;
            }
          }

          while (vector_GetElemAt(*(v29 + 16), v18--, &v27));
        }
      }

      goto LABEL_17;
    }
  }

  v4 = v8;
LABEL_17:
  if (__s1)
  {
    heap_Free(*(v3 + 8), __s1);
    __s1 = 0;
  }

  v20 = *(v3 + 32);
  if ((v4 & 0x80000000) != 0)
  {
    log_OutPublic(v20, "DOMAIN_MNGR", 47016, "%s%s", "prompt", __s);
    log_OutTraceTuningData(*(v3 + 32), 253, "%s%s %s%d", v21, v22, v23, v24, v25, "NAME");
  }

  else
  {
    log_OutTraceTuningData(v20, 253, "%s%s", v9, v10, v11, v12, v13, "NAME");
  }

  return v4;
}

uint64_t hlp_DisableLastDomain(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (vector_GetSize(*(a1 + 120)) <= *(a1 + 100))
  {
    v3 = "    No domains were activated, so could not disable the last domain";
  }

  else
  {
    vector_StackPop(*(a1 + 120));
    v3 = "    Disable last enabled domain";
  }

  v4 = *(v2 + 32);

  return log_OutText(v4, "DOMAIN_MNGR", 4, 0, v3);
}

uint64_t domain_ObjOpen(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t *a4)
{
  v12 = 0;
  inited = InitRsrcFunction(a2, a3, &v12);
  if ((inited & 0x80000000) == 0)
  {
    cstdlib_memset(a4, 0, 0x20uLL);
    *a4 = a2;
    a4[1] = a3;
    v8 = *(v12 + 8);
    v10 = xmmword_287EEFE90;
    v11 = off_287EEFEA0;
    if (!vector_ObjOpen(v8, &v10, 1, a4 + 2))
    {
      log_OutPublic(*(v12 + 32), "DOMAIN_MNGR", 47000, 0);
      domain_ObjClose(a4);
      return 2296389642;
    }
  }

  return inited;
}

void *domain_IElemApdbVecFreeParts(void *result)
{
  if (result)
  {
    result = *result;
    if (result)
    {
      return activeprompt_db_ObjClose(result, 0);
    }
  }

  return result;
}

uint64_t domain_ObjClose(uint64_t a1)
{
  v5 = 0;
  if (!a1)
  {
    return 2296389639;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v5);
  if ((inited & 0x80000000) == 0)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      vector_ObjClose(v3);
      *(a1 + 16) = 0;
    }
  }

  return inited;
}

uint64_t domain_checkIfPresent(uint64_t a1, uint64_t a2)
{
  v2 = 2296389639;
  if (a1)
  {
    v10 = 0;
    if (vector_GetSize(*(a1 + 16)))
    {
      v5 = 0;
      while (1)
      {
        vector_GetElemAt(*(a1 + 16), v5, &v10);
        v6 = *(*v10 + 56);
        v7 = *(a2 + 56);
        v8 = !v7 || v6 == 0;
        if (!v8 && cstdlib_strlen(v7) && !cstdlib_strcmp(*(a2 + 56), v6))
        {
          break;
        }

        if (++v5 >= vector_GetSize(*(a1 + 16)))
        {
          return 0;
        }
      }

      return 2296389651;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t domain_AddActivePromptDb(uint64_t a1, uint64_t a2)
{
  v2 = 2296389639;
  if (a1)
  {
    v4 = a2;
    if (vector_Add(*(a1 + 16), &v4))
    {
      return 0;
    }

    else
    {
      return 2296389642;
    }
  }

  return v2;
}

uint64_t domain_GetConsulted(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t domain_SetConsulted(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 2296389639;
  }

  result = 0;
  *(a1 + 24) = a2;
  return result;
}

uint64_t fe_prompt_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, int a4, uint64_t a5)
{
  v22 = 0;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  if (!a5)
  {
    return 2342526983;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v23);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = objc_GetObject(v23[6], "LINGDB", &v21);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  Object = objc_GetObject(v23[6], "SYNTHSTREAM", &v22);
  v8 = v23[6];
  if ((Object & 0x80000000) != 0)
  {
    v16 = "LINGDB";
LABEL_16:
    objc_ReleaseObject(v8, v16);
    return Object;
  }

  Object = objc_GetObject(v8, "DOMAINMNGR", &v20);
  v9 = v23[6];
  if ((Object & 0x80000000) != 0)
  {
    objc_ReleaseObject(v9, "LINGDB");
    v8 = v23[6];
    v16 = "SYNTHSTREAM";
    goto LABEL_16;
  }

  Object = objc_GetObject(v9, "FE_DEPES", &v19);
  v10 = v23[6];
  if ((Object & 0x80000000) != 0)
  {
    objc_ReleaseObject(v10, "LINGDB");
    objc_ReleaseObject(v23[6], "SYNTHSTREAM");
    v8 = v23[6];
    v16 = "DOMAINMNGR";
    goto LABEL_16;
  }

  Object = objc_GetObject(v10, "FE_DCTLKP", &v18);
  if ((Object & 0x80000000) != 0)
  {
    objc_ReleaseObject(v23[6], "LINGDB");
    objc_ReleaseObject(v23[6], "SYNTHSTREAM");
    objc_ReleaseObject(v23[6], "DOMAINMNGR");
    v8 = v23[6];
    v16 = "FE_DEPES";
    goto LABEL_16;
  }

  v11 = heap_Alloc(v23[1], 920);
  if (v11)
  {
    *v11 = v23;
    v12 = *(v22 + 8);
    *(v11 + 8) = *(v21 + 8);
    *(v11 + 16) = v12;
    v13 = v19;
    v14 = v20;
    *(v11 + 24) = *(v20 + 8);
    *(v11 + 32) = *(v14 + 16);
    *(v11 + 48) = *(v13 + 8);
    *(v11 + 56) = *(v13 + 16);
    v15 = v18;
    *(v11 + 912) = *(v18 + 8);
    *(v11 + 896) = *(v15 + 16);
    *a5 = v11;
    *(a5 + 8) = 62338;
  }

  else
  {
    log_OutPublic(v23[4], "FE_PROMPT", 45200, 0);
    objc_ReleaseObject(v23[6], "LINGDB");
    objc_ReleaseObject(v23[6], "SYNTHSTREAM");
    objc_ReleaseObject(v23[6], "DOMAINMNGR");
    objc_ReleaseObject(v23[6], "FE_DEPES");
    objc_ReleaseObject(v23[6], "FE_DCTLKP");
    return 2342526986;
  }

  return Object;
}

uint64_t fe_prompt_ObjClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62338, 920);
  if ((result & 0x80000000) != 0)
  {
    return 2342526984;
  }

  if (a1)
  {
    objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    objc_ReleaseObject(*(*a1 + 48), "SYNTHSTREAM");
    objc_ReleaseObject(*(*a1 + 48), "DOMAINMNGR");
    objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_prompt_ObjReopen(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62338, 920);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2342526984;
  }
}

uint64_t fe_prompt_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 62338, 920) & 0x80000000) != 0)
  {
    return 2342526984;
  }

  synstrmaux_InitStreamOpener(a1 + 72, *(*a1 + 32), "FE_PROMPT");
  v7 = synstrmaux_OpenStreams((a1 + 72), *(a1 + 16), a3, a4);
  if ((v7 & 0x80000000) != 0)
  {
    synstrmaux_CloseStreams((a1 + 72), *(a1 + 16));
  }

  return v7;
}

uint64_t fe_prompt_Process(void *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v47 = 0;
  v48 = 0;
  v46 = 0;
  v45 = 0;
  v43 = 0;
  v42 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  if ((safeh_HandleCheck(a1, a2, 62338, 920) & 0x80000000) != 0)
  {
    return 2342526984;
  }

  v49 = 0;
  v44 = 0;
  __src = 0;
  *a5 = 1;
  v9 = (*(a1[1] + 104))(a3, a4, 1, 0, &v44);
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  if (((*(a1[1] + 184))(a3, a4, v44, 0, &v39) & 0x80000000) == 0 && v39 == 1)
  {
    v9 = (*(a1[1] + 176))(a3, a4, v44, 0, &v49, &v43);
    if ((v9 & 0x80000000) != 0)
    {
LABEL_23:
      if (v48)
      {
        heap_Free(*(*a1 + 8), v48);
      }

      v48 = 0;
      if (v40)
      {
        heap_Free(*(*a1 + 8), v40);
      }

      return v9;
    }

    if (v43 < 2u)
    {
      return v9;
    }

    v10 = (*(a1[1] + 176))(a3, a4, v44, 1, &__src, &v43);
    if ((v10 & 0x80000000) == 0)
    {
      v11 = v43;
      HIWORD(v39) = v43;
      v12 = *(*a1 + 8);
      v13 = cstdlib_strlen(v49);
      v14 = heap_Alloc(v12, (v13 + 1));
      v48 = v14;
      if (v14)
      {
        v15 = v14;
        cstdlib_strcpy(v14, v49);
        v16 = 32 * v11;
        v17 = heap_Calloc(*(*a1 + 8), 1, v16);
        v40 = v17;
        if (v17)
        {
          cstdlib_memcpy(v17, __src, v16);
          v10 = (*(a1[114] + 96))(a1[112], a1[113], "fecfg", "mdesegpos_morpheme_processing", &v47, &v45, &v46);
          if ((v10 & 0x80000000) == 0)
          {
            v18 = 0;
            if (v45 == 1 && v47)
            {
              v18 = **v47 == 49;
            }

            v10 = (*(a1[3] + 104))(a1[4], a1[5], &v48, &v40, &v39 + 2, a3, a4, &v38, v18);
            if ((v10 & 0x80000000) == 0)
            {
              if (!v48 || (v19 = *(a1[1] + 160), v20 = v44, v21 = cstdlib_strlen(v48), v10 = v19(a3, a4, v20, 0, (v21 + 1), v48, &v42), (v10 & 0x80000000) == 0))
              {
                if (!v40 || !HIWORD(v39) || (v40[4] += v38, v10 = (*(a1[1] + 160))(a3, a4, v44, 1), (v10 & 0x80000000) == 0))
                {
                  v10 = (*(a1[6] + 112))(a1[7], a1[8], &v37, 0);
                  if ((v10 & 0x80000000) == 0)
                  {
                    v37 += v38;
                    v10 = (*(a1[6] + 104))(a1[7], a1[8]);
                  }
                }
              }
            }
          }

          goto LABEL_22;
        }

        log_OutPublic(*(*a1 + 32), "FE_PROMPT", 45200, 0);
        heap_Free(*(*a1 + 8), v15);
      }

      else
      {
        log_OutPublic(*(*a1 + 32), "FE_PROMPT", 45200, 0);
      }

      return 2342526986;
    }

LABEL_22:
    v9 = v10;
    goto LABEL_23;
  }

  if (log_HasTraceTuningDataSubscriber(*(*a1 + 32)) && ((*(a1[1] + 184))(a3, a4, v44, 1, &v39) & 0x80000000) == 0 && v39 == 1 && ((*(a1[1] + 176))(a3, a4, v44, 1, &__src, &v43) & 0x80000000) == 0)
  {
    log_OutTraceTuningData(*(*a1 + 32), 270, "%s%s", v22, v23, v24, v25, v26, "BEG");
    v27 = *(*a1 + 32);
    v28 = cstdlib_strlen("");
    log_OutTraceTuningDataBinary(v27, 271, "", "text/plain;charset=depes", "", v28);
    log_OutTraceTuningDataBinary(*(*a1 + 32), 271, "", "application/x-realspeak-markers-pp;version=4.0", __src, 32 * v43);
    v29 = *(*a1 + 32);
    v30 = cstdlib_strlen("");
    log_OutTraceTuningDataBinary(v29, 272, "", "text/plain;charset=depes", "", v30);
    log_OutTraceTuningDataBinary(*(*a1 + 32), 272, "", "application/x-realspeak-markers-pp;version=4.0", __src, 32 * v43);
    log_OutTraceTuningData(*(*a1 + 32), 270, "%s%s %s%u", v31, v32, v33, v34, v35, "END");
  }

  return v9;
}

uint64_t fe_prompt_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62338, 920) & 0x80000000) != 0)
  {
    return 2342526984;
  }

  v3 = *(a1 + 16);

  return synstrmaux_CloseStreams((a1 + 72), v3);
}

uint64_t fe_prompt_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2342526977;
  }

  result = 0;
  *a2 = &IFePrompt;
  return result;
}

uint64_t fe_promptorth_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, int a4, uint64_t a5)
{
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  if (!a5)
  {
    return 2343575559;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v18);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = objc_GetObject(v18[6], "LINGDB", &v17);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  Object = objc_GetObject(v18[6], "DOMAINMNGR", &v16);
  v8 = v18[6];
  if ((Object & 0x80000000) != 0)
  {
    v13 = "LINGDB";
LABEL_12:
    objc_ReleaseObject(v8, v13);
    return Object;
  }

  Object = objc_GetObject(v8, "FE_DEPES", &v15);
  if ((Object & 0x80000000) != 0)
  {
    objc_ReleaseObject(v18[6], "LINGDB");
    v8 = v18[6];
    v13 = "DOMAINMNGR";
    goto LABEL_12;
  }

  v9 = heap_Alloc(v18[1], 64);
  if (v9)
  {
    *v9 = v18;
    v10 = v16;
    v11 = *(v16 + 8);
    *(v9 + 8) = *(v17 + 8);
    *(v9 + 16) = v11;
    *(v9 + 24) = *(v10 + 16);
    v12 = v15;
    *(v9 + 40) = *(v15 + 8);
    *(v9 + 48) = *(v12 + 16);
    *a5 = v9;
    *(a5 + 8) = 62339;
  }

  else
  {
    log_OutPublic(v18[4], "FE_PROMPTORTH", 45000, 0);
    objc_ReleaseObject(v18[6], "LINGDB");
    objc_ReleaseObject(v18[6], "DOMAINMNGR");
    objc_ReleaseObject(v18[6], "FE_DEPES");
    return 2343575562;
  }

  return Object;
}

uint64_t fe_promptorth_ObjClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62339, 64);
  if ((result & 0x80000000) != 0)
  {
    return 2343575560;
  }

  if (a1)
  {
    objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    objc_ReleaseObject(*(*a1 + 48), "DOMAINMNGR");
    objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_promptorth_ObjReopen(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62339, 64);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2343575560;
  }
}

uint64_t fe_promptorth_ProcessStart(void *a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62339, 64) & 0x80000000) != 0)
  {
    return 2343575560;
  }

  v3 = a1[3];
  v4 = *(a1[2] + 56);
  v5 = a1[4];

  return v4(v3, v5);
}

uint64_t fe_promptorth_Process(void *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  __s1 = 0;
  v31 = 0;
  v30 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  if ((safeh_HandleCheck(a1, a2, 62339, 64) & 0x80000000) != 0)
  {
    return 2343575560;
  }

  __s = 0;
  v32 = 0;
  __src = 0;
  *a5 = 1;
  v9 = (*(a1[1] + 104))(a3, a4, 1, 0, &v32);
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_26;
  }

  v10 = (*(a1[1] + 184))(a3, a4, v32, 0, &v27);
  v11 = a1[1];
  if (v10 < 0 || v27 != 1)
  {
    v12 = (*(v11 + 184))(a3, a4, v32, 1, &v27);
  }

  else
  {
    v9 = (*(v11 + 176))(a3, a4, v32, 0, &__s, &v31);
    if ((v9 & 0x80000000) != 0)
    {
      return v9;
    }

    if (v31 > 1u)
    {
      goto LABEL_13;
    }

    v12 = (*(a1[1] + 184))(a3, a4, v32, 1, &v27);
  }

  if (v12 < 0 || v27 != 1)
  {
    return v9;
  }

  __s = "";
LABEL_13:
  v13 = (*(a1[1] + 176))(a3, a4, v32, 1, &__src, &v31);
  if ((v13 & 0x80000000) == 0)
  {
    v14 = v31;
    HIWORD(v27) = v31;
    v15 = *(*a1 + 8);
    v16 = cstdlib_strlen(__s);
    v17 = heap_Alloc(v15, (v16 + 1));
    __s1 = v17;
    if (v17)
    {
      v18 = v17;
      cstdlib_strcpy(v17, __s);
      v19 = 32 * v14;
      v20 = heap_Calloc(*(*a1 + 8), 1, v19);
      v28 = v20;
      if (v20)
      {
        cstdlib_memcpy(v20, __src, v19);
        v13 = (*(a1[2] + 120))(a1[3], a1[4], &__s1, &v28, &v27 + 2, a3, a4, &v26);
        if ((v13 & 0x80000000) == 0)
        {
          if (!__s1 || !cstdlib_strcmp(__s1, "") || (v21 = *(a1[1] + 160), v22 = v32, v23 = cstdlib_strlen(__s1), v13 = v21(a3, a4, v22, 0, (v23 + 1), __s1, &v30), (v13 & 0x80000000) == 0))
          {
            if (!v28 || !HIWORD(v27) || (v28[4] += v26, v13 = (*(a1[1] + 160))(a3, a4, v32, 1), (v13 & 0x80000000) == 0))
            {
              v13 = (*(a1[5] + 112))(a1[6], a1[7], &v25, 0);
              if ((v13 & 0x80000000) == 0)
              {
                v25 += v26;
                v13 = (*(a1[5] + 104))(a1[6], a1[7]);
              }
            }
          }
        }

        goto LABEL_25;
      }

      log_OutPublic(*(*a1 + 32), "FE_PROMPTORTH", 45000, 0);
      heap_Free(*(*a1 + 8), v18);
    }

    else
    {
      log_OutPublic(*(*a1 + 32), "FE_PROMPTORTH", 45000, 0);
    }

    return 2343575562;
  }

LABEL_25:
  v9 = v13;
LABEL_26:
  if (__s1)
  {
    heap_Free(*(*a1 + 8), __s1);
  }

  __s1 = 0;
  if (v28)
  {
    heap_Free(*(*a1 + 8), v28);
  }

  return v9;
}

uint64_t fe_promptorth_ProcessEnd(void *a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62339, 64) & 0x80000000) != 0)
  {
    return 2343575560;
  }

  v3 = a1[3];
  v4 = *(a1[2] + 64);
  v5 = a1[4];

  return v4(v3, v5);
}

uint64_t fe_promptorth_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2343575553;
  }

  result = 0;
  *a2 = &IFePromptorth;
  return result;
}

uint64_t fe_promptorth_ResourceTypes(void *a1, int a2, uint64_t a3)
{
  if ((safeh_HandleCheck(a1, a2, 62339, 64) & 0x80000000) != 0)
  {
    return 2343575560;
  }

  v5 = a1[3];
  v6 = *(a1[2] + 144);
  v7 = a1[4];

  return v6(v5, v7, a3);
}

uint64_t fe_promptorth_ResourceLoad(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((safeh_HandleCheck(a1, a2, 62339, 64) & 0x80000000) != 0)
  {
    return 2343575560;
  }

  v13 = a1[3];
  v14 = *(a1[2] + 152);
  v15 = a1[4];

  return v14(v13, v15, a3, a4, a5, a6, a7);
}

uint64_t fe_promptorth_ResourceUnload(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 62339, 64) & 0x80000000) != 0)
  {
    return 2343575560;
  }

  v7 = a1[3];
  v8 = *(a1[2] + 160);
  v9 = a1[4];

  return v8(v7, v9, a3, a4);
}

uint64_t fe_promptorth_ResourceEnable(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 62339, 64) & 0x80000000) != 0)
  {
    return 2343575560;
  }

  v7 = a1[3];
  v8 = *(a1[2] + 168);
  v9 = a1[4];

  return v8(v7, v9, a3, a4);
}

uint64_t fe_promptorth_ResourceDisable(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 62339, 64) & 0x80000000) != 0)
  {
    return 2343575560;
  }

  v7 = a1[3];
  v8 = *(a1[2] + 176);
  v9 = a1[4];

  return v8(v7, v9, a3, a4);
}

uint64_t fe_promptoriorth_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, int a4, uint64_t a5)
{
  v18 = 0;
  v19 = 0;
  v5 = 2357207047;
  v16 = 0;
  v17 = 0;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v19);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    v8 = heap_Calloc(*(v19 + 8), 1, 952);
    v9 = v19;
    if (!v8)
    {
      log_OutPublic(*(v19 + 32), "FE_PROMPTORIORTH", 57000, 0);
      return 2357207050;
    }

    v10 = v8;
    *v8 = v19;
    Object = objc_GetObject(*(v9 + 48), "SYNTHSTREAM", &v18);
    if ((Object & 0x80000000) != 0 || (Object = objc_GetObject(*(v19 + 48), "DOMAINMNGR", &v17), (Object & 0x80000000) != 0))
    {
      v5 = Object;
    }

    else
    {
      v5 = objc_GetObject(*(v19 + 48), "FE_DEPES", &v16);
      if ((v5 & 0x80000000) == 0)
      {
        v12 = v17;
        v13 = *(v17 + 8);
        v10[1] = *(v18 + 8);
        v10[2] = v13;
        *(v10 + 3) = *(v12 + 16);
        v14 = v16;
        v10[7] = *(v16 + 8);
        *(v10 + 5) = *(v14 + 16);
        *a5 = v10;
        *(a5 + 8) = 62500;
        return v5;
      }
    }

    *a5 = v10;
    *(a5 + 8) = 62500;
    fe_promptoriorth_ObjClose(v10, *(a5 + 8));
    *a5 = 0;
    *(a5 + 8) = 0;
  }

  return v5;
}

uint64_t fe_promptoriorth_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62500, 952);
  if ((result & 0x80000000) != 0)
  {
    return 2357207048;
  }

  if (a1)
  {
    if (a1[1])
    {
      objc_ReleaseObject(*(*a1 + 48), "SYNTHSTREAM");
    }

    if (a1[2])
    {
      objc_ReleaseObject(*(*a1 + 48), "DOMAINMNGR");
    }

    if (a1[7])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    }

    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_promptoriorth_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 62500, 952) & 0x80000000) != 0)
  {
    return 2357207048;
  }

  synstrmaux_InitStreamOpener(a1 + 64, *(*a1 + 32), "FE_PROMPTORIORTH");
  synstrmaux_RegisterInStream((a1 + 64), "text/plain;charset=utf-8", 0, a1 + 888);
  synstrmaux_RegisterInStream((a1 + 64), "application/x-realspeak-markers-pp;version=4.0", 0, a1 + 904);
  synstrmaux_RegisterOutStream((a1 + 64), "text/plain;charset=utf-8", a1 + 920);
  synstrmaux_RegisterOutStream((a1 + 64), "application/x-realspeak-markers-pp;version=4.0", a1 + 936);
  v7 = synstrmaux_OpenStreams((a1 + 64), *(a1 + 8), a3, a4);
  if ((v7 & 0x80000000) != 0)
  {
    synstrmaux_CloseStreams((a1 + 64), *(a1 + 8));
  }

  return v7;
}

uint64_t fe_promptoriorth_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v28 = 0;
  v7 = 2357207050;
  v27 = 0;
  __src = 0;
  memset(__n, 0, sizeof(__n));
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v21 = 0;
  if ((safeh_HandleCheck(a1, a2, 62500, 952) & 0x80000000) != 0)
  {
    return 2357207048;
  }

  *a5 = 1;
  result = (*(*(a1 + 8) + 144))(*(a1 + 888), *(a1 + 896), &v28 + 4, &v27);
  if ((result & 0x80000000) == 0)
  {
    result = (*(*(a1 + 8) + 144))(*(a1 + 904), *(a1 + 912), &v28, &v27);
    if ((result & 0x80000000) == 0)
    {
      if (!v28)
      {
        if (v27 == 1)
        {
          return synstrmaux_CloseOutStreamsOnly((a1 + 64), *(a1 + 8));
        }

        *a5 = 0;
        return result;
      }

      v9 = (*(*(a1 + 8) + 88))(*(a1 + 888), *(a1 + 896), &__src, __n);
      if ((v9 & 0x80000000) != 0)
      {
        goto LABEL_22;
      }

      v10 = heap_Alloc(*(*a1 + 8), (__n[0] + 1));
      *&__n[1] = v10;
      if (v10)
      {
        v11 = v10;
        if (__src)
        {
          cstdlib_memcpy(v10, __src, __n[0]);
        }

        v11[__n[0]] = 0;
        v9 = (*(*(a1 + 8) + 88))(*(a1 + 904), *(a1 + 912), &v24, &v22 + 4);
        if ((v9 & 0x80000000) != 0)
        {
          goto LABEL_22;
        }

        v12 = HIDWORD(v22);
        LODWORD(v22) = HIDWORD(v22) >> 5;
        HIDWORD(v22) >>= 5;
        v13 = heap_Calloc(*(*a1 + 8), 1, v12 & 0xFFFFFFE0);
        v23 = v13;
        if (v13)
        {
          cstdlib_memcpy(v13, v24, 32 * HIDWORD(v22));
          v9 = (*(*(a1 + 56) + 112))(*(a1 + 40), *(a1 + 48), &v21, 0);
          if ((v9 & 0x80000000) == 0)
          {
            v9 = (*(*(a1 + 16) + 112))(*(a1 + 24), *(a1 + 32), &__n[1], &v23, &v22);
            if ((v9 & 0x80000000) == 0)
            {
              v14 = v23[4];
              v15 = cstdlib_strlen(*&__n[1]);
              v23[4] = v14 + v15 - __n[0] + 1;
              if (!cstdlib_strlen(*&__n[1]) || (v16 = *(*(a1 + 8) + 104), v17 = *&__n[1], v18 = cstdlib_strlen(*&__n[1]), v9 = v16(*(a1 + 920), *(a1 + 928), v17, (v18 + 1)), (v9 & 0x80000000) == 0))
              {
                v9 = (*(*(a1 + 8) + 96))(*(a1 + 888), *(a1 + 896), __n[0]);
                if ((v9 & 0x80000000) == 0)
                {
                  v9 = (*(*(a1 + 8) + 104))(*(a1 + 936), *(a1 + 944), v23, (32 * v22));
                  if ((v9 & 0x80000000) == 0)
                  {
                    v9 = (*(*(a1 + 8) + 96))(*(a1 + 904), *(a1 + 912), (32 * HIDWORD(v22)));
                    if ((v9 & 0x80000000) == 0)
                    {
                      v19 = v21;
                      v20 = cstdlib_strlen(*&__n[1]);
                      v21 = v19 + v20 - __n[0] + 1;
                      v9 = (*(*(a1 + 56) + 104))(*(a1 + 40), *(a1 + 48));
                    }
                  }
                }
              }
            }
          }

LABEL_22:
          v7 = v9;
LABEL_25:
          if (*&__n[1])
          {
            heap_Free(*(*a1 + 8), *&__n[1]);
          }

          if (v23)
          {
            heap_Free(*(*a1 + 8), v23);
          }

          return v7;
        }
      }

      log_OutPublic(*(*a1 + 32), "FE_PROMPTORIORTH", 57000, 0);
      goto LABEL_25;
    }
  }

  return result;
}

uint64_t fe_promptoriorth_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62500, 952) & 0x80000000) != 0)
  {
    return 2357207048;
  }

  v3 = *(a1 + 8);

  return synstrmaux_CloseStreams((a1 + 64), v3);
}

uint64_t fe_promptoriorth_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2357207041;
  }

  result = 0;
  *a2 = &IFePromptoriorth;
  return result;
}

uint64_t fe_voice_switch_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, int a4, uint64_t a5)
{
  v30 = 0;
  v31 = 0;
  v5 = 2372935687;
  __s = 0;
  v29 = 0;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v31);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      v8 = heap_Calloc(*(v31 + 8), 1, 1048);
      v9 = v31;
      if (v8)
      {
        v10 = v8;
        *v8 = v31;
        Object = objc_GetObject(*(v9 + 48), "SYNTHSTREAM", &v30);
        if ((Object & 0x80000000) != 0)
        {
          v5 = Object;
LABEL_41:
          *a5 = 0;
          *(a5 + 8) = 0;
          return v5;
        }

        v10[1] = *(v30 + 8);
        if ((objc_GetObject(*(v31 + 48), "COMPQUERY", &v30) & 0x80000000) != 0)
        {
          v10[4] = 0;
          v10[2] = safeh_GetNullHandle();
          v10[3] = v13;
        }

        else
        {
          v12 = v30;
          v10[4] = *(v30 + 8);
          *(v10 + 1) = *(v12 + 16);
        }

        if ((paramc_ParamGetStr(*(v31 + 40), "mlset", &__s) & 0x80000000) != 0)
        {
          Str = paramc_ParamGetStr(*(v31 + 40), "langcode", &__s);
          if ((Str & 0x80000000) != 0)
          {
            goto LABEL_40;
          }
        }

        v15 = __s;
        v10[130] = __s;
        if (cstdlib_strlen(v15) >= 1)
        {
          v16 = 0;
          do
          {
            *(v10[130] + v16) = cstdlib_tolower(*(v10[130] + v16));
            ++v16;
          }

          while (cstdlib_strlen(v10[130]) > v16);
        }

        *(v10 + 233) = 0;
        if ((paramc_ParamGetStr(*(v31 + 40), "lidvoiceswitch", &v29) & 0x80000000) == 0)
        {
          if (LH_stricmp(v29, "yes"))
          {
            if (LH_stricmp(v29, "no"))
            {
              goto LABEL_22;
            }

            v17 = 1;
          }

          else
          {
            v17 = 0;
          }

          *(v10 + 233) = v17;
        }

LABEL_22:
        v18 = *(v31 + 40);
        v26 = v10;
        v25 = xmmword_287EF0018;
        v27 = xmmword_287EF0018;
        Str = paramc_ListenerAdd(v18, "lidvoiceswitch", &v26);
        if ((Str & 0x80000000) == 0)
        {
          *(v10 + 232) = 0;
          if ((paramc_ParamGetStr(*(v31 + 40), "lidscope", &v29) & 0x80000000) == 0)
          {
            if (LH_stricmp(v29, "none"))
            {
              if (LH_stricmp(v29, "user-defined"))
              {
                if (LH_stricmp(v29, "message"))
                {
                  goto LABEL_38;
                }

                v19 = 2;
              }

              else
              {
                v19 = 1;
              }
            }

            else
            {
              v19 = 0;
            }

            *(v10 + 232) = v19;
LABEL_38:
            v23 = *(v31 + 40);
            v26 = v10;
            v27 = v25;
            Str = paramc_ListenerAdd(v23, "lidscope", &v26);
            if ((Str & 0x80000000) == 0)
            {
              v5 = 0;
              *a5 = v10;
              *(a5 + 8) = 62466;
              return v5;
            }

            goto LABEL_40;
          }

          v20 = *(v10 + 232);
          v21 = "message";
          if (v20 == 1)
          {
            v21 = "user-defined";
          }

          if (v20)
          {
            v22 = v21;
          }

          else
          {
            v22 = "none";
          }

          Str = paramc_ParamSetStr(*(v31 + 40), "lidscope", v22);
          if ((Str & 0x80000000) == 0)
          {
            goto LABEL_38;
          }
        }

LABEL_40:
        v5 = Str;
        log_OutPublic(*(*v10 + 32), "FE_LID", 48000, 0, v25);
        goto LABEL_41;
      }

      log_OutPublic(*(v31 + 32), "FE_LID", 48000, 0);
      return 2372935690;
    }
  }

  return v5;
}

uint64_t fe_lid_ParamCheckChange_0(int a1, char *__s1, char *a3, _BOOL4 *a4)
{
  if (cstdlib_strcmp(__s1, "lidscope"))
  {
    result = cstdlib_strcmp(__s1, "lidmode");
    if (!result)
    {
LABEL_13:
      v10 = 1;
      goto LABEL_14;
    }

    if (cstdlib_strcmp(__s1, "lidvoiceswitch"))
    {
      result = 0;
      goto LABEL_13;
    }

    result = LH_stricmp(a3, "yes");
    if (!result)
    {
      goto LABEL_13;
    }

    v8 = "no";
  }

  else
  {
    result = LH_stricmp(a3, "none");
    if (!result)
    {
      goto LABEL_13;
    }

    result = LH_stricmp(a3, "user-defined");
    if (!result)
    {
      goto LABEL_13;
    }

    v8 = "message";
  }

  v9 = LH_stricmp(a3, v8);
  v10 = v9 == 0;
  if (v9)
  {
    result = 2372935695;
  }

  else
  {
    result = 0;
  }

LABEL_14:
  *a4 = v10;
  return result;
}

uint64_t fe_lid_ParamLearnChange_0(uint64_t a1, char *__s1, char *a3)
{
  if (cstdlib_strcmp(__s1, "lidscope"))
  {
    result = cstdlib_strcmp(__s1, "lidmode");
    if (!result)
    {
      return result;
    }

    if (cstdlib_strcmp(__s1, "lidvoiceswitch"))
    {
      return 0;
    }

    result = LH_stricmp(a3, "yes");
    if (result)
    {
      result = LH_stricmp(a3, "no");
      if (result)
      {
        return 2372935695;
      }

      *(a1 + 932) = 1;
    }

    else
    {
      *(a1 + 932) = 0;
    }
  }

  else
  {
    result = LH_stricmp(a3, "none");
    if (result)
    {
      result = LH_stricmp(a3, "user-defined");
      if (result)
      {
        result = LH_stricmp(a3, "message");
        if (result)
        {
          return 2372935695;
        }

        v7 = 2;
      }

      else
      {
        v7 = 1;
      }

      *(a1 + 928) = v7;
    }

    else
    {
      *(a1 + 928) = 0;
    }
  }

  return result;
}

uint64_t fe_voice_switch_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62466, 1048);
  if ((result & 0x80000000) != 0)
  {
    return 2372935688;
  }

  if (a1)
  {
    hlp_TrackStartMsgMarkers(a1, 1, 0, 0);
    if (a1[1])
    {
      objc_ReleaseObject(*(*a1 + 48), "SYNTHSTREAM");
    }

    if (a1[4])
    {
      objc_ReleaseObject(*(*a1 + 48), "COMPQUERY");
    }

    v4 = *(*a1 + 40);
    v8 = a1;
    v7 = xmmword_287EF0018;
    v9 = xmmword_287EF0018;
    paramc_ListenerRemove(v4, "lidscope", &v8);
    v5 = *(*a1 + 40);
    v8 = a1;
    v9 = v7;
    paramc_ListenerRemove(v5, "lidmode", &v8);
    v6 = *(*a1 + 40);
    v8 = a1;
    v9 = v7;
    paramc_ListenerRemove(v6, "lidvoiceswitch", &v8);
    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t hlp_TrackStartMsgMarkers(uint64_t a1, int a2, int *a3, unsigned int a4)
{
  if (a2)
  {
    if (*(a1 + 1000) == 21)
    {
      v7 = *(a1 + 1024);
      if (v7)
      {
        heap_Free(*(*a1 + 8), v7);
      }
    }

    cstdlib_memset((a1 + 936), 0, 0x60uLL);
  }

  if (!a3)
  {
    return 0;
  }

  if (*(a1 + 928) != 1 || a4 == 0)
  {
    return 0;
  }

  v9 = a4;
  while (1)
  {
    v10 = *a3;
    if (*a3 == 31)
    {
      v17 = *(a3 + 1);
      *(a1 + 968) = *a3;
      *(a1 + 984) = v17;
      goto LABEL_23;
    }

    if (v10 != 21)
    {
      if (v10 == 7)
      {
        v11 = *(a3 + 1);
        *(a1 + 936) = *a3;
        *(a1 + 952) = v11;
      }

      goto LABEL_23;
    }

    v12 = *(a1 + 1024);
    if (v12)
    {
      heap_Free(*(*a1 + 8), v12);
    }

    if (!cstdlib_strcmp(*(a3 + 3), "normal"))
    {
      cstdlib_memset((a1 + 1000), 0, 0x20uLL);
      goto LABEL_23;
    }

    v13 = *(a3 + 1);
    *(a1 + 1000) = *a3;
    *(a1 + 1016) = v13;
    v14 = *(*a1 + 8);
    v15 = cstdlib_strlen(*(a3 + 3));
    v16 = heap_Alloc(v14, (v15 + 1));
    *(a1 + 1024) = v16;
    if (!v16)
    {
      break;
    }

    cstdlib_strcpy(v16, *(a3 + 3));
LABEL_23:
    a3 += 8;
    if (!--v9)
    {
      return 0;
    }
  }

  log_OutPublic(*(*a1 + 32), "FE_LID", 48000, 0);
  return 2372935690;
}

uint64_t fe_voice_switch_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v10 = 0;
  v11 = 0;
  v7 = safeh_HandleCheck(a1, a2, 62466, 1048);
  if ((v7 & 0x80000000) != 0)
  {
    return 2372935688;
  }

  v8 = v7;
  synstrmaux_InitStreamOpener(a1 + 40, *(*a1 + 32), "FE_LID");
  if (*(a1 + 928))
  {
    synstrmaux_RegisterInStream((a1 + 40), "text/plain;charset=utf-8", 0, a1 + 864);
    synstrmaux_RegisterInStream((a1 + 40), "application/x-realspeak-markers-pp;version=4.0", 0, a1 + 880);
    synstrmaux_RegisterOutStream((a1 + 40), "text/plain;charset=utf-8", a1 + 896);
    synstrmaux_RegisterOutStream((a1 + 40), "application/x-realspeak-markers-pp;version=4.0", a1 + 912);
    v8 = synstrmaux_OpenStreams((a1 + 40), *(a1 + 8), a3, a4);
    if ((v8 & 0x80000000) != 0)
    {
      synstrmaux_CloseStreams((a1 + 40), *(a1 + 8));
    }

    else
    {
      if (((paramc_ParamGetStr(*(*a1 + 40), "lidoriginalvoice", &v11) & 0x80000000) != 0 || !v11 || !*v11) && (paramc_ParamGetStr(*(*a1 + 40), "voice", &v11) & 0x80000000) == 0 && v11 && *v11)
      {
        paramc_ParamSetStr(*(*a1 + 40), "lidoriginalvoice", v11);
      }

      if ((paramc_ParamGetStr(*(*a1 + 40), "lidstate", &v10) & 0x80000000) == 0 && v10 && *v10)
      {
        *(a1 + 1032) = 1;
      }

      else
      {
        *(a1 + 1032) = 0;
        if ((paramc_ParamGetStr(*(*a1 + 40), "voice", &v11) & 0x80000000) == 0 && v11 && *v11)
        {
          paramc_ParamSetStr(*(*a1 + 40), "lidoriginalvoice", v11);
        }
      }
    }
  }

  return v8;
}

uint64_t fe_voice_switch_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v65 = *MEMORY[0x277D85DE8];
  memset(v63, 0, sizeof(v63));
  v62 = 0;
  v61 = 0;
  v59 = 0;
  v60 = 0;
  v58 = 0;
  v57 = 0;
  __src = 0;
  v56 = 0;
  __s1 = 0;
  bzero(__dst, 0x400uLL);
  v8 = safeh_HandleCheck(a1, a2, 62466, 1048);
  if ((v8 & 0x80000000) != 0)
  {
    return 2372935688;
  }

  BestVoiceForLidLang = v8;
  *a5 = 1;
  v10 = *(a1 + 864);
  if (v10)
  {
    Object = (*(*(a1 + 8) + 144))(v10, *(a1 + 872), &v63[8], v63);
    if ((Object & 0x80000000) != 0)
    {
      return Object;
    }

    BestVoiceForLidLang = (*(*(a1 + 8) + 144))(*(a1 + 880), *(a1 + 888), &v63[4], v63);
    if ((BestVoiceForLidLang & 0x80000000) != 0)
    {
      return BestVoiceForLidLang;
    }

    if (!*&v63[8])
    {
      v13 = *v63;
      if (!*v63)
      {
        *a5 = 0;
        return BestVoiceForLidLang;
      }

      if (*&v63[4])
      {
        InputOutputMarkers_0 = hlp_GetInputOutputMarkers_0(a1, &v60, &v59, &v58 + 1, &v58);
        if ((InputOutputMarkers_0 & 0x80000000) != 0)
        {
LABEL_149:
          BestVoiceForLidLang = InputOutputMarkers_0;
          goto LABEL_150;
        }

        BestVoiceForLidLang = (*(*(a1 + 8) + 120))(*(a1 + 912), *(a1 + 920), (32 * v58));
        v59 = 0;
        if ((BestVoiceForLidLang & 0x80000000) != 0)
        {
          return BestVoiceForLidLang;
        }

        if (HIDWORD(v58))
        {
          BestVoiceForLidLang = (*(*(a1 + 8) + 96))(*(a1 + 880), *(a1 + 888), (32 * HIDWORD(v58)));
          if ((BestVoiceForLidLang & 0x80000000) != 0)
          {
            goto LABEL_150;
          }
        }

        v13 = *v63;
      }

      if (!v13)
      {
        return BestVoiceForLidLang;
      }

      return synstrmaux_CloseOutStreamsOnly((a1 + 40), *(a1 + 8));
    }

    Object = (*(*(a1 + 8) + 88))(*(a1 + 864), *(a1 + 872), &v62, &v61);
    if ((Object & 0x80000000) != 0)
    {
      return Object;
    }

    v12 = v61;
    BestVoiceForLidLang = hlp_GetInputOutputMarkers_0(a1, &v60, &v59, &v58 + 1, &v58);
    if ((BestVoiceForLidLang & 0x80000000) != 0)
    {
      goto LABEL_150;
    }

    if (*v59 == 0x4000)
    {
      v57 = *(v59 + 3);
    }

    else
    {
      (*(*(a1 + 8) + 136))(*(a1 + 864), *(a1 + 872), &v57);
    }

    v15 = v58;
    if (v58 >= 2)
    {
      v16 = 1;
      v17 = v59;
      do
      {
        v18 = &v17[32 * v16];
        if (*v18 == 36 && *(v18 - 8) == 36 && *(v18 + 3) == *(v18 - 5))
        {
          *(v18 - 8) = 0x4000;
        }

        ++v16;
      }

      while (v15 > v16);
    }

    if ((paramc_ParamGetStr(*(*a1 + 40), "lidstate", &__s1) & 0x80000000) == 0 && __s1 && *__s1)
    {
      v19 = cstdlib_strcmp(__s1, "__NUAN_LID_voiceswitch");
      v20 = *(*a1 + 40);
      if (v19)
      {
        v21 = __s1;
LABEL_102:
        v41 = paramc_ParamSetStr(v20, "pipelineswitchvoice", v21);
        if ((v41 & 0x80000000) != 0)
        {
LABEL_124:
          BestVoiceForLidLang = v41;
        }

        else
        {
          BestVoiceForLidLang = paramc_ParamSetStr(*(*a1 + 40), "lidstate", "__NUAN_LID_voiceswitch");
          if ((BestVoiceForLidLang & 0x80000000) == 0)
          {
            *a5 = 3;
            v61 = 0;
            HIDWORD(v58) = 0;
            goto LABEL_150;
          }
        }

LABEL_125:
        log_OutPublic(*(*a1 + 32), "FE_LID", 48000, 0);
LABEL_150:
        if (v59)
        {
          (*(*(a1 + 8) + 120))(*(a1 + 912), *(a1 + 920), 0);
        }

        return BestVoiceForLidLang;
      }

      BestVoiceForLidLang = paramc_ParamRemove(v20, "lidstate");
      if ((BestVoiceForLidLang & 0x80000000) != 0)
      {
        goto LABEL_150;
      }

      if (*(a1 + 928) == 1 && v15)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        while (1)
        {
          v39 = v38;
          v40 = v59 + 32 * v38;
          if (*v40 == 36)
          {
            if (v37)
            {
              if (!cstdlib_strncmp((*(v40 + 3) + 3), "_lid", 3uLL) || !cstdlib_strncmp((*(v59 + 4 * v39 + 3) + 3), "_vli", 3uLL) || !cstdlib_strcmp(*(v59 + 4 * v39 + 3), "normal"))
              {
                v12 = (*(v59 + 8 * v39 + 3) - v57);
                v61 = *(v59 + 8 * v39 + 3) - v57;
                LODWORD(v58) = v36;
                *a5 = 2;
                v15 = v36;
                goto LABEL_112;
              }
            }

            else if (cstdlib_strncmp((*(v40 + 3) + 3), "_lid", 3uLL))
            {
              v37 = cstdlib_strncmp((*(v59 + 4 * v39 + 3) + 3), "_vli", 3uLL) == 0;
            }

            else
            {
              v37 = 1;
            }

            ++v37;
          }

          v38 = v39 + 1;
          v36 = (v39 + 1);
          if (v15 <= v36)
          {
            goto LABEL_112;
          }
        }
      }

      goto LABEL_112;
    }

    if (*(a1 + 928) == 2)
    {
      if (v15)
      {
        v22 = 0;
        while (*(v59 + 8 * v22) != 36)
        {
          if (v15 <= ++v22)
          {
            goto LABEL_100;
          }
        }

        BestVoiceForLidLang = hlp_FindBestVoiceForLidLang(a1, *(a1 + 932) == 0, *(v59 + 4 * v22 + 3), __dst);
        if ((BestVoiceForLidLang & 0x80000000) != 0)
        {
          goto LABEL_150;
        }
      }

LABEL_100:
      if (!cstdlib_strcmp(__dst, ""))
      {
        goto LABEL_112;
      }

      v20 = *(*a1 + 40);
      v21 = __dst;
      goto LABEL_102;
    }

    if (!v15)
    {
LABEL_111:
      LODWORD(v58) = v15;
LABEL_112:
      if (!v12)
      {
        goto LABEL_115;
      }

      v53 = 0;
      Object = objc_GetObject(*(*a1 + 48), "CHARCOUNT", &v53);
      if ((Object & 0x80000000) == 0)
      {
        (*(v53[1] + 72))(v53[2], v53[3], v62, v12);
        objc_ReleaseObject(*(*a1 + 48), "CHARCOUNT");
        BestVoiceForLidLang = (*(*(a1 + 8) + 104))(*(a1 + 896), *(a1 + 904), v62, v12);
        if ((BestVoiceForLidLang & 0x80000000) != 0)
        {
          goto LABEL_150;
        }

LABEL_115:
        if (!v15)
        {
          v46 = 0;
LABEL_141:
          if (v61)
          {
            BestVoiceForLidLang = (*(*(a1 + 8) + 96))(*(a1 + 864), *(a1 + 872));
            if ((BestVoiceForLidLang & 0x80000000) != 0)
            {
              goto LABEL_150;
            }
          }

          v49 = HIDWORD(v58);
          if (!HIDWORD(v58))
          {
            goto LABEL_150;
          }

          if (*a5 == 2)
          {
            v50 = v46 == 0;
            v51 = v60;
            v52 = a1;
          }

          else
          {
            v52 = a1;
            v50 = 1;
            v51 = 0;
            v49 = 0;
          }

          BestVoiceForLidLang = hlp_TrackStartMsgMarkers(v52, v50, v51, v49);
          if ((BestVoiceForLidLang & 0x80000000) != 0)
          {
            goto LABEL_150;
          }

          InputOutputMarkers_0 = (*(*(a1 + 8) + 96))(*(a1 + 880), *(a1 + 888), (32 * HIDWORD(v58)));
          goto LABEL_149;
        }

        if (*a5 == 2)
        {
          if (*(v59 + 3) - v57 >= v12)
          {
            v44 = 0;
          }

          else
          {
            v43 = 0;
            do
            {
              v44 = ++v43;
            }

            while (v15 > v43 && *(v59 + 8 * v43 + 3) - v57 < v12);
          }

          LODWORD(v58) = v44;
          if (HIDWORD(v58) && v60[3] - v57 < v61)
          {
            v47 = 0;
            do
            {
              v48 = ++v47;
            }

            while (HIDWORD(v58) > v47 && v60[8 * v47 + 3] - v57 < v61);
          }

          else
          {
            v48 = 0;
          }

          HIDWORD(v58) = v48;
          if (!v44)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v44 = v15;
        }

        if (*v59 == 0x4000)
        {
          v46 = 0;
          *(v59 + 4) = v12;
          goto LABEL_140;
        }

LABEL_139:
        hlp_AddStartMsgMarkers(a1, v59, &v58, v12);
        v46 = 1;
        v44 = v58;
LABEL_140:
        BestVoiceForLidLang = (*(*(a1 + 8) + 120))(*(a1 + 912), *(a1 + 920), 32 * v44);
        v59 = 0;
        if ((BestVoiceForLidLang & 0x80000000) != 0)
        {
          return BestVoiceForLidLang;
        }

        goto LABEL_141;
      }

      return Object;
    }

    v23 = 0;
    while (1)
    {
      if (*a5 != 1)
      {
        goto LABEL_111;
      }

      v24 = (v59 + 32 * v23);
      if (*v24 == 36)
      {
        if (cstdlib_strcmp(v24[3], "normal"))
        {
          if (*(v59 + 8 * v23) == 36 && cstdlib_strcmp(*(v59 + 4 * v23 + 3), "unknown") && cstdlib_strncmp(*(v59 + 4 * v23 + 3), "vceunkn", 7uLL) && cstdlib_strcmp(*(v59 + 4 * v23 + 3), "normal"))
          {
            v25 = v59 + 32 * v23;
            v26 = *(v25 + 3);
            v27 = v12 - v26 + v57;
            v28 = v23;
            while (v15 > ++v28)
            {
              v29 = *(v59 + 8 * v28);
              if (v29 == 36 || v29 == 7)
              {
                v27 = *(v59 + 8 * v28 + 3) - v26;
                break;
              }
            }

            if (v27)
            {
              v31 = *(a1 + 932);
              v32 = *(v25 + 3);
              if (v32 && cstdlib_strstr(*(v25 + 3), "_vli"))
              {
                v31 = 0;
              }

              BestVoiceForLidLang = hlp_FindBestVoiceForLidLang(a1, v31 == 0, v32, __dst);
              if ((BestVoiceForLidLang & 0x80000000) != 0)
              {
                goto LABEL_150;
              }

              if (!v31 && !cstdlib_strcmp(__dst, "") && (paramc_ParamGetStr(*(*a1 + 40), "lidoriginalvoice", &__src) & 0x80000000) == 0 && __src && *__src)
              {
                cstdlib_strcpy(__dst, __src);
              }

              if (cstdlib_strcmp(__dst, ""))
              {
                v33 = *(*a1 + 40);
                if (*(v59 + 8 * v23 + 3) == v57)
                {
                  v41 = paramc_ParamSetStr(v33, "pipelineswitchvoice", __dst);
                  if ((v41 & 0x80000000) != 0)
                  {
                    goto LABEL_124;
                  }

                  v33 = *(*a1 + 40);
                  v42 = "lidstate";
                  v34 = "__NUAN_LID_voiceswitch";
                  goto LABEL_109;
                }

                v34 = __dst;
LABEL_75:
                BestVoiceForLidLang = paramc_ParamSetStr(v33, "lidstate", v34);
                if ((BestVoiceForLidLang & 0x80000000) != 0)
                {
                  goto LABEL_125;
                }

                *a5 = 2;
                v35 = *(v59 + 8 * v23 + 3);
                v12 = (v35 - v57);
                v61 = v35 - v57;
              }
            }
          }
        }

        else if (*(a1 + 1032) && (paramc_ParamGetStr(*(*a1 + 40), "lidoriginalvoice", &__src) & 0x80000000) == 0 && __src && *__src && ((paramc_ParamGetStr(*(*a1 + 40), "voice", &v56) & 0x80000000) != 0 || !v56 || LH_stricmp(v56, __src)))
        {
          v33 = *(*a1 + 40);
          v34 = __src;
          if (*(v59 + 8 * v23 + 3) == v57)
          {
            v42 = "pipelineswitchvoice";
LABEL_109:
            BestVoiceForLidLang = paramc_ParamSetStr(v33, v42, v34);
            if ((BestVoiceForLidLang & 0x80000000) != 0)
            {
              goto LABEL_125;
            }

            v15 = 0;
            v12 = 0;
            *a5 = 3;
            v61 = 0;
            HIDWORD(v58) = 0;
            goto LABEL_111;
          }

          goto LABEL_75;
        }
      }

      if (v15 <= ++v23)
      {
        goto LABEL_111;
      }
    }
  }

  return BestVoiceForLidLang;
}

uint64_t hlp_GetInputOutputMarkers_0(void *a1, const void **a2, void **a3, unsigned int *a4, unsigned int *a5)
{
  *a5 = 0;
  *a4 = 0;
  v10 = (*(a1[1] + 88))(a1[110], a1[111], a2);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v11 = *a4;
  *a4 >>= 5;
  v12 = (*(a1[1] + 112))(a1[114], a1[115], a3, (v11 & 0xFFFFFFE0) + 64);
  if ((v12 & 0x80000000) == 0)
  {
    v13 = *a4;
    if (v13)
    {
      cstdlib_memcpy(*a3, *a2, 32 * v13);
      *a5 = *a4;
    }
  }

  return v12;
}

uint64_t hlp_FindBestVoiceForLidLang(void *a1, int a2, char *a3, char *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v17 = 0;
  memset(__b, 0, sizeof(__b));
  __src = 0;
  Str = paramc_ParamGetStr(*(*a1 + 40), "lidoriginalvoice", &__src);
  if ((Str & 0x80000000) != 0)
  {
    __src = 0;
  }

  cstdlib_memset(__b, 0, 0x154uLL);
  if (a3)
  {
    v9 = cstdlib_strstr(a3, "_vli");
    if (v9)
    {
      v10 = v9;
      v11 = cstdlib_strlen("_vli");
      VoiceParamExtract(&v10[v11], "gender", &__b[10] + 8);
      VoiceParamExtract(&v10[v11], "age", &__b[19] + 4);
      VoiceParamExtract(&v10[v11], "model", &__b[11] + 12);
    }

    v12 = 4;
    if (a3[2] == 120)
    {
      v12 = 20;
    }

    if (!a2)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v12 = 4;
    if (!a2)
    {
LABEL_23:
      cstdlib_strcpy(a4, "");
      return 0;
    }
  }

  if (!a1[4])
  {
    goto LABEL_23;
  }

  if (a3)
  {
    cstdlib_strncpy(&__b[v12], a3, 3uLL);
  }

  if (__src)
  {
    cstdlib_strcpy(&__b[8] + 8, __src);
  }

  if (((*(a1[4] + 136))(a1[2], a1[3], *(*a1 + 24), *(*a1 + 40), __b, a4, 1024) & 0x80000000) != 0)
  {
    result = Str;
    if ((Str & 0x80000000) != 0)
    {
      return result;
    }

    goto LABEL_25;
  }

  v13 = cstdlib_strlen(a4);
  if (v13)
  {
    result = 0;
  }

  else
  {
    result = Str;
  }

  if ((Str & 0x80000000) == 0 && !v13)
  {
LABEL_25:
    cstdlib_strcpy(&__b[8] + 8, "");
    return (*(a1[4] + 136))(a1[2], a1[3], *(*a1 + 24), *(*a1 + 40), __b, a4, 1024);
  }

  return result;
}

uint64_t hlp_AddStartMsgMarkers(void *a1, char *__src, unsigned int *a3, int a4)
{
  v8 = *a3;
  if (v8)
  {
    cstdlib_memmove(__src + 32, __src, 32 * v8);
    v9 = *a3 + 1;
  }

  else
  {
    v9 = 1;
  }

  *a3 = v9;
  *__src = 0x4000;
  *(__src + 2) = 0;
  result = (*(a1[1] + 136))(a1[108], a1[109], __src + 12);
  *(__src + 4) = 2 * a4;
  return result;
}

uint64_t fe_voice_switch_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62466, 1048) & 0x80000000) != 0)
  {
    return 2372935688;
  }

  v3 = *(a1 + 8);

  return synstrmaux_CloseStreams((a1 + 40), v3);
}

uint64_t fe_voice_switch_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2372935681;
  }

  result = 0;
  *a2 = &IFeVoiceSwitch;
  return result;
}

size_t VoiceParamExtract(size_t result, const char *a2, char *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = 0;
  if (result)
  {
    v5 = result;
    result = cstdlib_strlen(result);
    if (result <= 0x7F)
    {
      cstdlib_strcpy(__dst, v5);
      result = strhelper_SafeStrtok(__dst, "{}();,", &v12);
      if (result)
      {
        v6 = result;
        while (1)
        {
          v7 = cstdlib_strchr(v6, 58);
          if (v7)
          {
            v8 = v7;
            v9 = cstdlib_strlen(a2);
            result = cstdlib_strncmp(v6, a2, v9);
            if (!result)
            {
              break;
            }
          }

          result = strhelper_SafeStrtok(__dst, "{}();,", &v12);
          v6 = result;
          if (!result)
          {
            return result;
          }
        }

        v11 = v8[1];
        v10 = v8 + 1;
        if (v11)
        {
          return cstdlib_strcpy(a3, v10);
        }
      }
    }
  }

  return result;
}

__int16 *fxd_HighPassInputFilter(__int16 *result, _WORD *a2, int a3, int a4, __int16 *a5, __int16 *a6)
{
  if (a3 >= 1)
  {
    v9 = result;
    v10 = 2 * a4;
    v11 = a3 + 1;
    do
    {
      v12 = v10 * *a6 + 0x8000;
      v13 = fxd_S16SatSubS16S16(*v9, *a5);
      result = fxd_S16SatAddS16S16(v13, v12 >> 16);
      v14 = *v9++;
      *a5 = v14;
      *a6 = result;
      *a2++ = result;
      --v11;
    }

    while (v11 > 1);
  }

  return result;
}

__int16 *fxd_HighPrecisionHighPassInputFilter(__int16 *result, _WORD *a2, int a3, uint64_t a4, int *a5, int *a6)
{
  if (a3 >= 1)
  {
    v8 = a4;
    v10 = result;
    v11 = a3 + 1;
    while (1)
    {
      v12 = *v10;
      if (v12 >= 32256)
      {
        break;
      }

      if (v12 <= -32257)
      {
        v13 = -32256 - (((-32256 - v12) & 0xFF80) >> 7);
        goto LABEL_7;
      }

LABEL_8:
      v14 = fxd_S32ShMultRndS32S32(*a6, v8, 24);
      v15 = fxd_S32SatSubS32S32(*v10, *a5);
      result = fxd_S32SatAddS32S32(v15, v14);
      v16 = *v10++;
      *a5 = v16;
      if (result <= -32768)
      {
        v17 = -32768;
      }

      else
      {
        v17 = result;
      }

      if (v17 >= 0x7FFF)
      {
        v17 = 0x7FFF;
      }

      *a6 = v17;
      *a2++ = v17;
      if (--v11 <= 1)
      {
        return result;
      }
    }

    v13 = (((v12 - 32255) & 0xFF80) >> 7) + 32255;
LABEL_7:
    *v10 = v13;
    goto LABEL_8;
  }

  return result;
}

__int16 *fxd_SynthesisFilter(__int16 *result, _WORD *a2, int a3, __int16 *a4, int *a5, int a6)
{
  if (a3 >= 1)
  {
    do
    {
      v6 = *result++;
      v7 = v6 << 14;
      if (a6 < 1)
      {
        --a5;
      }

      else
      {
        v8 = a6 + 1;
        v9 = a4;
        v10 = a5;
        do
        {
          v12 = *v9++;
          v11 = v12;
          v13 = *v10++;
          v7 = v7 - 16 * v11 * (v13 >> 16) - ((v13 * v11) >> 12);
          --v8;
        }

        while (v8 > 1);
        a5 += (a6 - 1);
        if (a6 >= 2)
        {
          v14 = a6 + 1;
          do
          {
            v15 = a5;
            v16 = *--a5;
            *v15 = v16;
            --v14;
          }

          while (v14 > 2);
        }
      }

      v17 = (v7 + 0x2000) >> 14;
      if (v17 <= -32768)
      {
        v17 = -32768;
      }

      if (v17 >= 0x7FFF)
      {
        LOWORD(v17) = 0x7FFF;
      }

      *a2++ = v17;
      *a5 = v7;
      v18 = __OFSUB__(a3--, 1);
    }

    while (!((a3 < 0) ^ v18 | (a3 == 0)));
  }

  return result;
}

__int16 *fxd_FastSynthesisFilter(__int16 *result, _WORD *a2, int a3, char a4, __int16 *a5, unsigned int a6, char a7, uint64_t a8, char a9)
{
  if (a3)
  {
    v9 = (a8 + 4 * a6 - 4);
    v10 = a9 - a4;
    v11 = 1 << (a9 - a4 - 1);
    do
    {
      v12 = *result++;
      v13 = v12 << v10;
      if (a6)
      {
        v14 = a5;
        v15 = v9;
        v16 = a6;
        do
        {
          v18 = *v14++;
          v17 = v18;
          v19 = *v15--;
          v13 -= (((v19 >> 16) * v17) << (16 - a7)) + ((v19 * v17) >> a7);
          --v16;
        }

        while (v16);
        v9 = (v9 + ((-4 * a6) | 0xFFFFFFFFFFFC0000));
      }

      v9 += a6 + 1;
      *v9 = v13;
      v20 = (v13 + v11) >> v10;
      if (v20 <= -32768)
      {
        v20 = -32768;
      }

      if (v20 >= 0x7FFF)
      {
        LOWORD(v20) = 0x7FFF;
      }

      *a2++ = v20;
      --a3;
    }

    while (a3);
  }

  return result;
}

__int16 *fxd_FastSynthesisFilterModuloBuffer(__int16 *result, _WORD *a2, int a3, char a4, __int16 *a5, int a6, char a7, uint64_t a8, char a9)
{
  if (a3)
  {
    v9 = 0;
    v10 = a9 - a4;
    do
    {
      v11 = *result++;
      v12 = v11 << v10;
      if (a6)
      {
        v13 = a5;
        v14 = a6;
        do
        {
          v15 = *v13++;
          v12 -= (((*(a8 + 4 * v9) >> 16) * v15) << (16 - a7)) + ((*(a8 + 4 * v9) * v15) >> a7);
          v9 = (v9 + 1) % a6;
          --v14;
        }

        while (v14);
      }

      v16 = (a6 - 1 + v9) % a6;
      v9 = v16;
      *(a8 + 4 * v16) = v12;
      v17 = (v12 + (1 << (a9 - a4 - 1))) >> v10;
      if (v17 <= -32768)
      {
        v17 = -32768;
      }

      if (v17 >= 0x7FFF)
      {
        LOWORD(v17) = 0x7FFF;
      }

      *a2++ = v17;
      --a3;
    }

    while (a3);
  }

  return result;
}

uint64_t fxd_HighPrecisionFastSynthesisFilter(uint64_t result, _WORD *a2, int a3, char a4, unsigned int *a5, unsigned int a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a3)
  {
    v9 = a7;
    v11 = a3;
    v13 = result;
    v14 = (a8 + 4 * a6 - 4);
    v15 = a9 - a4;
    v26 = a6 + 1;
    v25 = 1 << (a9 - a4 - 1);
    do
    {
      v16 = *v13++;
      v17 = v16 << v15;
      if (a6)
      {
        v18 = a5;
        v19 = a6;
        do
        {
          v21 = *v14--;
          v20 = v21;
          v22 = *v18++;
          result = fxd_S32ShMultRndS32S32(v20, v22, v9);
          v17 -= result;
          --v19;
        }

        while (v19);
      }

      v14 += v26;
      *v14 = v17;
      v23 = (v17 + v25) >> v15;
      if (v23 <= -32768)
      {
        v23 = -32768;
      }

      if (v23 >= 0x7FFF)
      {
        LOWORD(v23) = 0x7FFF;
      }

      *a2++ = v23;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t fxd_LspSynthesisFilter(int a1, uint64_t a2, int a3, int *a4, char a5)
{
  v8 = a3;
  v9 = &a4[a3];
  v10 = v9 + 1;
  v11 = a1 << a5;
  if (a3 < 1)
  {
    v17 = *v9;
    v18 = v10[a3];
  }

  else
  {
    v12 = 0;
    v13 = (a2 + 2);
    v14 = a4 + 3;
    v15 = &a4[a3 + 2];
    do
    {
      *(v14 - 2) -= fxd_S32ShMultRndS32S16(*(v14 - 3), *(v13 - 1), 14);
      v16 = *v15 - fxd_S32ShMultRndS32S16(*(v15 - 1), *v13, 14);
      *v15 = v16;
      v11 += v16 + *(v14 - 2);
      *(v14 - 1) += *(v14 - 3);
      v12 += 2;
      v15[1] += *(v15 - 1);
      v13 += 2;
      v14 += 2;
      v15 += 2;
    }

    while (v12 < a3);
    v17 = *v9;
    v10 = v9 + 1;
    v18 = v9[v8 + 1];
    if (a3 >= 1)
    {
      v19 = &a4[a3];
      v20 = a3 + 1;
      v21 = v19;
      do
      {
        v22 = *--v21;
        *v19 = v22;
        v19[v8 + 1] = v19[v8];
        --v20;
        v19 = v21;
      }

      while (v20 > 1);
    }
  }

  v23 = v17 + v11 - v18;
  v24 = -(v23 >> 1);
  *v10 = v24;
  *a4 = v24;
  v25 = (v23 + (1 << (a5 - 1))) >> a5;
  if (v25 <= -32768)
  {
    v25 = -32768;
  }

  if (v25 >= 0x7FFF)
  {
    return 0x7FFFLL;
  }

  else
  {
    return v25;
  }
}

uint64_t fxd_LspInverseSynthesisFilter(int a1, uint64_t a2, int a3, int *a4, char a5)
{
  v8 = a3;
  v9 = &a4[a3];
  v10 = v9 + 1;
  v11 = a1 << a5;
  if (a3 < 1)
  {
    v17 = *v9;
    v18 = v10[a3];
  }

  else
  {
    v12 = 0;
    v13 = (a2 + 2);
    v14 = a4 + 3;
    v15 = &a4[a3 + 2];
    do
    {
      *(v14 - 2) -= fxd_S32ShMultRndS32S16(*(v14 - 3), *(v13 - 1), 14);
      v16 = *v15 - fxd_S32ShMultRndS32S16(*(v15 - 1), *v13, 14);
      *v15 = v16;
      v11 += v16 + *(v14 - 2);
      *(v14 - 1) += *(v14 - 3);
      v12 += 2;
      v15[1] += *(v15 - 1);
      v13 += 2;
      v14 += 2;
      v15 += 2;
    }

    while (v12 < a3);
    v17 = *v9;
    v10 = v9 + 1;
    v18 = v9[v8 + 1];
    if (a3 >= 1)
    {
      v19 = &a4[a3];
      v20 = a3 + 1;
      v21 = v19;
      do
      {
        v22 = *--v21;
        *v19 = v22;
        v19[v8 + 1] = v19[v8];
        --v20;
        v19 = v21;
      }

      while (v20 > 1);
    }
  }

  v23 = v17 + v11 - v18;
  *v10 = v23 >> 1;
  *a4 = v23 >> 1;
  v24 = (v23 + (1 << (a5 - 1))) >> a5;
  if (v24 <= -32768)
  {
    v24 = -32768;
  }

  if (v24 >= 0x7FFF)
  {
    return 0x7FFFLL;
  }

  else
  {
    return v24;
  }
}

__int16 *fxd_InverseSynthesisFilter(__int16 *result, _WORD *a2, int a3, __int16 *a4, int *a5, int a6)
{
  if (a3 >= 1)
  {
    do
    {
      v6 = *result << 14;
      v7 = a6 + 1;
      v8 = a4;
      v9 = a5;
      v10 = v6;
      if (a6 < 1)
      {
        --a5;
        v10 = *result << 14;
      }

      else
      {
        do
        {
          v12 = *v8++;
          v11 = v12;
          v13 = *v9++;
          v10 += 16 * v11 * (v13 >> 16) + ((v13 * v11) >> 12);
          --v7;
        }

        while (v7 > 1);
        a5 += (a6 - 1);
        if (a6 >= 2)
        {
          v14 = a6 + 1;
          do
          {
            v15 = a5;
            v16 = *--a5;
            *v15 = v16;
            --v14;
          }

          while (v14 > 2);
        }
      }

      ++result;
      *a5 = v6;
      v17 = (v10 + 0x2000) >> 14;
      if (v17 <= -32768)
      {
        v17 = -32768;
      }

      if (v17 >= 0x7FFF)
      {
        LOWORD(v17) = 0x7FFF;
      }

      *a2++ = v17;
      v18 = __OFSUB__(a3--, 1);
    }

    while (!((a3 < 0) ^ v18 | (a3 == 0)));
  }

  return result;
}

__int16 *fxd_FastInverseSynthesisFilter(__int16 *result, _WORD *a2, int a3, char a4, __int16 *a5, unsigned int a6, char a7, uint64_t a8, char a9)
{
  if (a3)
  {
    v9 = (a8 + 4 * a6);
    v10 = a9 - a4;
    v11 = 1 << (a9 - a4 - 1);
    do
    {
      v12 = *result++;
      v13 = v12 << v10;
      *v9 = v12 << v10;
      if (a6)
      {
        v14 = v9 - 1;
        v15 = a5;
        v16 = a6;
        do
        {
          v18 = *v15++;
          v17 = v18;
          v19 = *v14--;
          v13 += (((v19 >> 16) * v17) << (16 - a7)) + ((v19 * v17) >> a7);
          --v16;
        }

        while (v16);
        v9 = (v9 + ((-4 * a6) | 0xFFFFFFFFFFFC0000));
      }

      v9 += a6 + 1;
      v20 = (v13 + v11) >> v10;
      if (v20 <= -32768)
      {
        v20 = -32768;
      }

      if (v20 >= 0x7FFF)
      {
        LOWORD(v20) = 0x7FFF;
      }

      *a2++ = v20;
      --a3;
    }

    while (a3);
  }

  return result;
}

__int16 *fxd_FastIirFilter(__int16 *result, _WORD *a2, int a3, char a4, __int16 *a5, unsigned int a6, __int16 *a7, unsigned int a8, char a9, uint64_t a10, char a11)
{
  if (a3)
  {
    v11 = a10 + 4 * a8 - 4;
    v12 = a11 - a4;
    v13 = 16 - a9;
    v14 = 1 << (a11 - a4 - 1);
    do
    {
      v15 = *result++;
      v16 = v15 << v12;
      if (a8)
      {
        v17 = a7;
        v18 = v11;
        v19 = a8;
        do
        {
          v21 = *v17++;
          v20 = v21;
          v22 = *v18--;
          v16 -= (((v22 >> 16) * v20) << v13) + ((v22 * v20) >> a9);
          --v19;
        }

        while (v19);
        v11 += (-4 * a8) | 0xFFFFFFFFFFFC0000;
      }

      v23 = (v11 + 4 * (a8 + 1));
      *v23 = v16;
      v24 = ((v16 * *a5) >> a9) + (((v16 >> 16) * *a5) << v13);
      if (a6)
      {
        v25 = a5 + 1;
        v26 = a6;
        do
        {
          v28 = *--v23;
          v27 = v28;
          v29 = *v25++;
          v24 += (((v27 >> 16) * v29) << v13) + ((v27 * v29) >> a9);
          --v26;
        }

        while (v26);
      }

      v11 = &v23[a6];
      v30 = (v24 + v14) >> v12;
      if (v30 <= -32768)
      {
        v30 = -32768;
      }

      if (v30 >= 0x7FFF)
      {
        LOWORD(v30) = 0x7FFF;
      }

      *a2++ = v30;
      --a3;
    }

    while (a3);
  }

  return result;
}

uint64_t fxd_OptAllZeroFilter(uint64_t result, uint64_t a2, unsigned int a3, __int16 *a4, char a5, unsigned int a6)
{
  if (a3)
  {
    v6 = 2 * a3 - 2;
    v7 = (a2 + v6);
    v8 = (result + v6);
    do
    {
      v9 = 0;
      v10 = 0;
      v11 = a4;
      do
      {
        v13 = *v8--;
        v12 = v13;
        v14 = *v11++;
        result = v14;
        v9 += (2 * v12 * v14) >> 1;
      }

      while (v10++ < a6);
      v16 = (v9 + (1 << (a5 - 1))) >> a5;
      if (v16 <= -32768)
      {
        v16 = -32768;
      }

      if (v16 >= 0x7FFF)
      {
        LOWORD(v16) = 0x7FFF;
      }

      *v7-- = v16;
      v8 += a6;
      --a3;
    }

    while (a3);
  }

  return result;
}

uint64_t MakeStream(int *a1, unsigned __int8 *a2, unsigned int a3, unsigned __int16 *a4, _WORD *a5)
{
  v5 = *a5;
  v6 = 8;
  if (*a5)
  {
    v6 = 8 - v5;
    v7 = *a2;
    if (a3)
    {
LABEL_3:
      v8 = 0;
      v9 = 0;
      v10 = *a4;
      v11 = *a1;
      while (1)
      {
        if (v10)
        {
          if (v10 > v6)
          {
            v12 = v7 + ((as32CodeMask[v6] & v11) << v5);
            v11 >>= v6;
            v13 = v10 - v6;
            a2[v9++] = v12;
            v6 = 8;
            LOWORD(v5) = 0;
LABEL_11:
            v7 = 0;
            goto LABEL_12;
          }

          v7 += (as32CodeMask[v10] & v11) << v5;
          v6 -= v10;
          v13 = a4[++v8];
          v11 = a1[v8];
          if (!v6)
          {
            LOWORD(v5) = 0;
            a2[v9++] = v7;
            v6 = 8;
            goto LABEL_11;
          }

          LOWORD(v5) = v10 + v5;
        }

        else
        {
          v13 = a4[++v8];
          v11 = a1[v8];
        }

LABEL_12:
        v10 = v13;
        if (v8 >= a3)
        {
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    v7 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  LOWORD(v9) = 0;
LABEL_16:
  if (v6 <= 7u)
  {
    a2[v9] = v7;
  }

  *a5 = v5;
  return v9;
}

uint64_t DemuxStream(unsigned __int8 *a1, uint64_t a2, unsigned int a3, unsigned __int16 *a4, _WORD *a5)
{
  v5 = *a5;
  if (!a3)
  {
    v9 = 0;
    goto LABEL_12;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 8 - v5;
  v11 = *a1 >> v5;
  v12 = *a4;
  do
  {
    if (v12 <= v10)
    {
      *(a2 + 4 * v7) = ((as32CodeMask[v12] & v11) << v8) + v6;
      v10 -= v12;
      v13 = a4[++v7];
      v8 = 0;
      if (v10)
      {
        v11 = (v11 >> v12);
        v6 = 0;
        goto LABEL_9;
      }

      v6 = 0;
    }

    else
    {
      v6 += (as32CodeMask[v10] & v11) << v8;
      v13 = v12 - v10;
      v8 += v10;
    }

    v11 = a1[++v9];
    v10 = 8;
LABEL_9:
    v12 = v13;
  }

  while (v7 < a3);
  LOWORD(v5) = 8 - v10;
LABEL_12:
  *a5 = v5;
  return v9;
}

uint64_t FillLH_S16(uint64_t result, __int16 a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = (a3 + 7) & 0xFFFFFFF8;
    v4 = vdupq_n_s64(a3 - 1);
    v5 = xmmword_26ECDB2A0;
    v6 = xmmword_26ECDB2B0;
    v7 = xmmword_26ECCE810;
    v8 = xmmword_26ECC7980;
    v9 = (result + 8);
    v10 = vdupq_n_s64(8uLL);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v4, v8));
      if (vuzp1_s8(vuzp1_s16(v11, *v4.i8), *v4.i8).u8[0])
      {
        *(v9 - 4) = a2;
      }

      if (vuzp1_s8(vuzp1_s16(v11, *&v4), *&v4).i8[1])
      {
        *(v9 - 3) = a2;
      }

      if (vuzp1_s8(vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, *&v7))), *&v4).i8[2])
      {
        *(v9 - 2) = a2;
        *(v9 - 1) = a2;
      }

      v12 = vmovn_s64(vcgeq_u64(v4, v6));
      if (vuzp1_s8(*&v4, vuzp1_s16(v12, *&v4)).i32[1])
      {
        *v9 = a2;
      }

      if (vuzp1_s8(*&v4, vuzp1_s16(v12, *&v4)).i8[5])
      {
        v9[1] = a2;
      }

      if (vuzp1_s8(*&v4, vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, *&v5)))).i8[6])
      {
        v9[2] = a2;
        v9[3] = a2;
      }

      v6 = vaddq_s64(v6, v10);
      v7 = vaddq_s64(v7, v10);
      v8 = vaddq_s64(v8, v10);
      v9 += 8;
      v5 = vaddq_s64(v5, v10);
      v3 -= 8;
    }

    while (v3);
  }

  return result;
}

uint64_t FillLH_S32(uint64_t result, int a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = (a3 + 3) & 0xFFFFFFFC;
    v4 = vdupq_n_s64(a3 - 1);
    v5 = xmmword_26ECCE810;
    v6 = xmmword_26ECC7980;
    v7 = (result + 8);
    v8 = vdupq_n_s64(4uLL);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v4, v6));
      if (vuzp1_s16(v9, *v4.i8).u8[0])
      {
        *(v7 - 2) = a2;
      }

      if (vuzp1_s16(v9, *&v4).i8[2])
      {
        *(v7 - 1) = a2;
      }

      if (vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, *&v5))).i32[1])
      {
        *v7 = a2;
        v7[1] = a2;
      }

      v5 = vaddq_s64(v5, v8);
      v6 = vaddq_s64(v6, v8);
      v7 += 4;
      v3 -= 4;
    }

    while (v3);
  }

  return result;
}

double InitRandom(uint64_t a1)
{
  result = -2.41055443e116;
  *a1 = 0xD81878ACDEE2AD57;
  *(a1 + 8) = 82486;
  *(a1 + 12) = 4;
  return result;
}

uint64_t RandomLH_S16(int a1, uint64_t a2)
{
  v2 = *(a2 + 10);
  v3 = *(a2 + 12);
  v4 = *(a2 + 2 * v2) + *(a2 + 2 * v3);
  v5 = v4 | 0x8000;
  if (v4 < 0x8000)
  {
    v5 = *(a2 + 2 * v2) + *(a2 + 2 * v3);
  }

  if (v4 >= -32768)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4 & 0x7FFF;
  }

  *(a2 + 2 * v3) = v6;
  v7 = v3 - 1;
  if (v7 < 0)
  {
    v7 = 4;
  }

  v8 = v2 - 1;
  if (v8 < 0)
  {
    v8 = 4;
  }

  *(a2 + 10) = v8;
  *(a2 + 12) = v7;
  return ((v6 * a1) >> 15);
}

_WORD *RandomLH_S16Vector(_WORD *result, int a2, int a3, uint64_t a4)
{
  if (a3 >= 1)
  {
    v6 = result;
    v7 = a3;
    do
    {
      result = RandomLH_S16(a2, a4);
      *v6++ = result;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t fxd_Energy(uint64_t result, _DWORD *a2, unsigned int a3)
{
  if (a3 < 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = result;
    v5 = 0;
    v6 = a3;
    do
    {
      v7 = *v4++;
      result = fxd_S32FractMultS32S32(v7, v7);
      v5 += result;
      --v6;
    }

    while (v6);
  }

  *a2 = v5;
  return result;
}

uint64_t fxd_BoundedLinearInterpolation(int a1, int a2, int a3, int a4, int a5, char a6)
{
  if (a1 <= a2)
  {
    v11 = a4 << a6;
  }

  else if (a1 >= a3)
  {
    v11 = a5 << a6;
    if ((v11 & 0x8000) != 0)
    {
      LOWORD(v11) = 0x7FFF;
    }
  }

  else
  {
    v6 = a3 - a2;
    v7 = ((a3 - a2) / (a5 - a4));
    if (v7 < 3)
    {
      v10 = 0;
    }

    else
    {
      v8 = 0;
      do
      {
        ++v8;
        v9 = v7 > 5;
        v7 >>= 1;
      }

      while (v9);
      v10 = v8;
    }

    v12 = (a5 - a4) << v10 << 16;
    if (v12 == v6 << 16)
    {
      v13 = 0x7FFF;
    }

    else
    {
      v13 = ((v12 >> 1) / v6);
    }

    v11 = ((v13 * (a1 - a2)) >> (v10 - a6 + 15)) + (a4 << a6);
  }

  return v11;
}

uint64_t fxd_BoundedConstantLinearInterpolation(int a1, int a2, int a3, unsigned __int16 a4, unsigned __int16 a5, int a6, char a7, char a8)
{
  v8 = (((a1 - a2) * a6) >> (a8 - a7 + 15)) + (a4 << a7);
  v9 = a5 << a7;
  if ((v9 & 0x8000) != 0)
  {
    LOWORD(v9) = 0x7FFF;
  }

  if (a1 >= a3)
  {
    LOWORD(v8) = v9;
  }

  if (a1 <= a2)
  {
    LOWORD(v8) = a4 << a7;
  }

  return v8;
}

__int16 *fxd_InterpolateVectors(__int16 *result, __int16 *a2, _WORD *a3, int a4, unsigned int a5)
{
  if (a5 >= 1)
  {
    v5 = a5;
    do
    {
      v7 = *result++;
      v6 = v7;
      v8 = *a2++;
      *a3++ = (v6 * (a4 ^ 0x7FFFu) + v8 * a4) >> 15;
      --v5;
    }

    while (v5);
  }

  return result;
}

int *fxd_InterpolateVectors_32BIT(int *result, unsigned int *a2, _DWORD *a3, uint64_t a4, unsigned int a5)
{
  if (a5 >= 1)
  {
    v5 = a4;
    v8 = result;
    v9 = 0x800000 - a4;
    v10 = a5;
    do
    {
      v11 = *v8++;
      v12 = fxd_S32ShMultRndS32S32(v11, v9, 23);
      v13 = *a2++;
      result = fxd_S32ShMultRndS32S32(v13, v5, 23);
      *a3++ = result + v12;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t fxd_ScalarDecodeWithBounds(int a1, int a2, __int16 a3, __int16 a4, int a5)
{
  if (!a5)
  {
    a2 += (a3 - a2) * a1 / (a4 - 1);
  }

  return a2;
}

uint64_t fxd_LinSpace(uint64_t a1, unsigned int a2, int a3, unsigned int a4)
{
  if (a4 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = ((((a3 - a2) << 16) >> 7) / ((a4 << 8) + 256)) >> 1;
  v5 = (a4 + 7) & 0xFFFFFFF8;
  v6 = vdupq_n_s16(v4);
  v7 = vmlaq_s16(vdupq_n_s16(a2), v6, xmmword_26ED4B940);
  v8 = vdupq_n_s16(8 * v4);
  v9 = vdupq_n_s64(a4 - 1);
  v10 = xmmword_26ECDB2A0;
  v11 = xmmword_26ECDB2B0;
  v12 = xmmword_26ECCE810;
  v13 = xmmword_26ECC7980;
  v14 = a1 + 8;
  v15 = vdupq_n_s64(8uLL);
  do
  {
    v16 = vmovn_s64(vcgeq_u64(v9, v13));
    v17 = vaddq_s16(v7, v6);
    if (vuzp1_s8(vuzp1_s16(v16, *v7.i8), *v7.i8).u8[0])
    {
      *(v14 - 8) = v17.i16[0];
    }

    if (vuzp1_s8(vuzp1_s16(v16, *&v7), *&v7).i8[1])
    {
      *(v14 - 6) = v17.i16[1];
    }

    if (vuzp1_s8(vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v9, *&v12))), *&v7).i8[2])
    {
      *(v14 - 4) = v17.i32[1];
    }

    v18 = vmovn_s64(vcgeq_u64(v9, v11));
    if (vuzp1_s8(*&v7, vuzp1_s16(v18, *&v7)).i32[1])
    {
      *v14 = v17.i16[4];
    }

    if (vuzp1_s8(*&v7, vuzp1_s16(v18, *&v7)).i8[5])
    {
      *(v14 + 2) = v17.i16[5];
    }

    if (vuzp1_s8(*&v7, vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v9, *&v10)))).i8[6])
    {
      *(v14 + 4) = v17.i32[3];
    }

    v11 = vaddq_s64(v11, v15);
    v12 = vaddq_s64(v12, v15);
    v13 = vaddq_s64(v13, v15);
    v10 = vaddq_s64(v10, v15);
    v14 += 16;
    v7 = vaddq_s16(v7, v8);
    v5 -= 8;
  }

  while (v5);
  return 0;
}

__int16 *fxd_LspToCosLsp(__int16 *result, _WORD *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *result++;
      v5 = ((v4 << 14) / 25736) >> 1;
      if (v5 >> 13)
      {
        v5 = 0;
      }

      *a2++ = CosTbl[v5];
      --v3;
    }

    while (v3);
  }

  return result;
}

__int16 *fxd_LspToCosLsp__32BIT(__int16 *result, _DWORD *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *result++;
      v5 = ((v4 << 15) / 25736) >> 1;
      if (v5 >> 14)
      {
        v5 = 0;
      }

      *a2++ = CosTbl__32BIT[v5];
      --v3;
    }

    while (v3);
  }

  return result;
}

int *fxd_LspToCosLsp__32BITX(int *result, _DWORD *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *result++;
      v5 = ((32 * v4 / 25736) >> 1);
      if (v5 >> 14)
      {
        v5 = 0;
      }

      *a2++ = CosTbl__32BIT[v5];
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t fxd_LspToAi(__int16 *a1, _WORD *a2, int a3)
{
  v8[5] = *MEMORY[0x277D85DE8];
  if (a3 >= 1)
  {
    v3 = v8;
    v4 = a3;
    do
    {
      v5 = *a1++;
      v6 = ((v5 << 14) / 25736) >> 1;
      if (v6 >> 13)
      {
        v6 = 0;
      }

      *v3++ = CosTbl[v6];
      --v4;
    }

    while (v4);
  }

  return fxd_CosLspToAi(v8, a2, a3);
}

uint64_t fxd_CosLspToAi(uint64_t result, _WORD *a2, int a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v37 = a3;
  v3 = &v46 + a3;
  v3[3] = 0x800000;
  v48 = 0x800000;
  v3[1] = 0x800000;
  v39 = v3 + 1;
  v4 = -512 * *result;
  v46 = 0x800000;
  v47 = v4;
  v3[2] = -512 * *(result + 2);
  if (a3 >= 3)
  {
    v5 = result;
    v38 = ((a3 - 3) >> 1) + 2;
    v6 = &v48;
    v45 = &v47;
    v7 = 1;
    v8 = 2;
    v9 = 16;
    v43 = 2;
    v44 = v49;
    v10 = &v49[a3];
    do
    {
      v40 = v9;
      v41 = v7;
      v11 = v43;
      v12 = *(v5 + 2 * v43);
      v42 = v6;
      v43 += 2;
      *(&v46 + v43) = 0x800000;
      v13 = v11 | 1;
      *(&v46 + (v11 | 1)) = *(&v45 + v11 + 1) - (v12 << 9);
      v14 = v11 >> 1;
      v15 = v11;
      v16 = v6;
      do
      {
        v17 = *--v16;
        *v6 = (((*(v6 - 2) - 2 * fxd_S32ShMultRndS32S16(v17, *(v5 + 2 * v11), 15)) & 0xFFFFFFFE) + *v6) & 0xFFFFFFFE;
        --v15;
        v6 = v16;
      }

      while (v15 > v14);
      v18 = v44;
      v19 = v45;
      v20 = v8;
      do
      {
        v21 = *v18++;
        *v19-- = v21;
        --v20;
      }

      while (v20 > 1);
      v22 = *(v5 + 2 * v13);
      v39[v43] = 0x800000;
      v39[v13] = v3[v11] - (v22 << 9);
      v23 = v10;
      v24 = v10;
      do
      {
        v25 = *--v24;
        result = fxd_S32ShMultRndS32S16(v25, *(v5 + 2 * v13), 15);
        *v23 = (((*(v23 - 2) - 2 * result) & 0xFFFFFFFE) + *v23) & 0xFFFFFFFE;
        --v11;
        v23 = v24;
      }

      while (v11 > v14);
      v26 = v40;
      v27 = v8;
      do
      {
        v3[v27--] = *(v3 + v26);
        v26 += 4;
      }

      while (v27 > 1);
      v7 = v41 + 1;
      v6 = v42 + 2;
      ++v8;
      ++v44;
      ++v45;
      v10 += 2;
      v9 = v40 + 4;
    }

    while (v41 + 1 != v38);
  }

  v28 = a2;
  if (a3 >= 1)
  {
    v29 = a3;
    v30 = *v39;
    v31 = v46;
    v32 = &v48;
    do
    {
      v33 = v32[v37];
      v34 = *(v32 - 1);
      *v28++ = (v34 + v33 - v30 + v31 + 2048) >> 12;
      ++v32;
      v31 = v34;
      v30 = v33;
      --v29;
    }

    while (v29);
  }

  return result;
}

uint64_t fxd_HighPrecisionCosLspToAi(uint64_t result, _DWORD *a2, int a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v37 = a3;
  v3 = &v46 + a3;
  v3[3] = 0x800000;
  v48 = 0x800000;
  v3[1] = 0x800000;
  v39 = v3 + 1;
  v4 = -512 * *result;
  v46 = 0x800000;
  v47 = v4;
  v3[2] = -512 * *(result + 2);
  if (a3 >= 3)
  {
    v5 = result;
    v38 = ((a3 - 3) >> 1) + 2;
    v6 = &v48;
    v45 = &v47;
    v7 = 1;
    v8 = 2;
    v9 = 16;
    v43 = 2;
    v44 = v49;
    v10 = &v49[a3];
    do
    {
      v40 = v9;
      v41 = v7;
      v11 = v43;
      v12 = *(v5 + 2 * v43);
      v42 = v6;
      v43 += 2;
      *(&v46 + v43) = 0x800000;
      v13 = v11 | 1;
      *(&v46 + (v11 | 1)) = *(&v45 + v11 + 1) - (v12 << 9);
      v14 = v11 >> 1;
      v15 = v11;
      v16 = v6;
      do
      {
        v17 = *--v16;
        *v6 = (((*(v6 - 2) - 2 * fxd_S32ShMultRndS32S16(v17, *(v5 + 2 * v11), 15)) & 0xFFFFFFFE) + *v6) & 0xFFFFFFFE;
        --v15;
        v6 = v16;
      }

      while (v15 > v14);
      v18 = v44;
      v19 = v45;
      v20 = v8;
      do
      {
        v21 = *v18++;
        *v19-- = v21;
        --v20;
      }

      while (v20 > 1);
      v22 = *(v5 + 2 * v13);
      v39[v43] = 0x800000;
      v39[v13] = v3[v11] - (v22 << 9);
      v23 = v10;
      v24 = v10;
      do
      {
        v25 = *--v24;
        result = fxd_S32ShMultRndS32S16(v25, *(v5 + 2 * v13), 15);
        *v23 = (((*(v23 - 2) - 2 * result) & 0xFFFFFFFE) + *v23) & 0xFFFFFFFE;
        --v11;
        v23 = v24;
      }

      while (v11 > v14);
      v26 = v40;
      v27 = v8;
      do
      {
        v3[v27--] = *(v3 + v26);
        v26 += 4;
      }

      while (v27 > 1);
      v7 = v41 + 1;
      v6 = v42 + 2;
      ++v8;
      ++v44;
      ++v45;
      v10 += 2;
      v9 = v40 + 4;
    }

    while (v41 + 1 != v38);
  }

  v28 = a2;
  if (a3 >= 1)
  {
    v29 = a3;
    v30 = *v39;
    v31 = v46;
    v32 = &v48;
    do
    {
      v33 = *(v32 - 1);
      v34 = v32[v37];
      *v28++ = 16 * (v34 + v33 - v30 + v31);
      ++v32;
      v31 = v33;
      v30 = v34;
      --v29;
    }

    while (v29);
  }

  return result;
}

uint64_t fxd_HighPrecisionCosLspToAi__32BIT(uint64_t result, _DWORD *a2, int a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = &v47 + a3;
  v3[3] = 0x800000;
  v49 = 0x800000;
  v3[1] = 0x800000;
  v40 = v3 + 1;
  v4 = *(result + 4);
  v5 = -2 * *result;
  v47 = 0x800000;
  v48 = v5;
  v38 = a3;
  v3[2] = -2 * v4;
  if (a3 >= 3)
  {
    v6 = result;
    v39 = ((a3 - 3) >> 1) + 2;
    v7 = &v49;
    v46 = &v48;
    v8 = 1;
    v9 = 2;
    v10 = 16;
    v44 = 2;
    v45 = v50;
    v11 = &v50[a3];
    do
    {
      v41 = v10;
      v42 = v8;
      v12 = v44;
      v13 = *(v6 + 4 * v44);
      v43 = v7;
      v44 += 2;
      *(&v47 + v44) = 0x800000;
      v14 = v12 | 1;
      *(&v47 + (v12 | 1)) = *(&v46 + v12 + 1) - 2 * v13;
      v15 = v12 >> 1;
      v16 = v12;
      v17 = v7;
      do
      {
        v18 = *--v17;
        *v7 = (((*(v7 - 2) - 2 * fxd_S32ShMultRndS32S32(v18, *(v6 + 4 * v12), 23)) & 0xFFFFFFFE) + *v7) & 0xFFFFFFFE;
        --v16;
        v7 = v17;
      }

      while (v16 > v15);
      v19 = v45;
      v20 = v46;
      v21 = v9;
      do
      {
        v22 = *v19++;
        *v20-- = v22;
        --v21;
      }

      while (v21 > 1);
      v23 = *(v6 + 4 * v14);
      v40[v44] = 0x800000;
      v40[v14] = v3[v12] - 2 * v23;
      v24 = v11;
      v25 = v11;
      do
      {
        v26 = *--v25;
        result = fxd_S32ShMultRndS32S32(v26, *(v6 + 4 * v14), 23);
        *v24 = (((*(v24 - 2) - 2 * result) & 0xFFFFFFFE) + *v24) & 0xFFFFFFFE;
        --v12;
        v24 = v25;
      }

      while (v12 > v15);
      v27 = v41;
      v28 = v9;
      do
      {
        v3[v28--] = *(v3 + v27);
        v27 += 4;
      }

      while (v28 > 1);
      v8 = v42 + 1;
      v7 = v43 + 2;
      ++v9;
      ++v45;
      ++v46;
      v11 += 2;
      v10 = v41 + 4;
    }

    while (v42 + 1 != v39);
  }

  v29 = a2;
  if (a3 >= 1)
  {
    v30 = a3;
    v31 = *v40;
    v32 = v47;
    v33 = &v49;
    do
    {
      v34 = *(v33 - 1);
      v35 = v33[v38];
      *v29++ = 16 * (v35 + v34 - v31 + v32);
      ++v33;
      v32 = v34;
      v31 = v35;
      --v30;
    }

    while (v30);
  }

  return result;
}

void *fxd_AiToParCor(__int16 *a1, uint64_t a2, signed int a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = &v20[a3];
  v6 = a3 - 1;
  if (a3 >= 1)
  {
    v7 = a3;
    v8 = v20;
    do
    {
      v9 = *a1++;
      *v8++ = v9 << 15;
      --v7;
    }

    while (v7);
  }

  result = FillZeroLH_S32(&v20[a3], a3);
  if ((v6 & 0x8000) == 0)
  {
    v11 = v6;
    v12 = a3 - 2;
    do
    {
      v13 = v20[v11];
      *(a2 + 2 * v11) = v13 >> 12;
      if (!v11)
      {
        break;
      }

      v14 = 0;
      v15 = &v20[v12];
      v16 = ((((v13 >> 12) * (v13 >> 12)) >> 15) ^ 0x7FFF);
      do
      {
        v5[v14] = v20[v14];
        ++v14;
      }

      while (v11 != v14);
      v17 = v20;
      v18 = v11;
      do
      {
        result = fxd_S32FractDivS32S16(v17[a3] - 2 * *(a2 + 2 * v11) * (v15[a3] >> 16) - ((v15[a3] * *(a2 + 2 * v11)) >> 15), v16);
        *v17++ = result;
        --v15;
        --v18;
      }

      while (v18);
      --v12;
    }

    while (v11-- >= 1);
  }

  return result;
}

__int16 *fxd_ExpandLpcBandwidth(__int16 *result, _WORD *a2, int a3, unsigned int a4, int a5)
{
  if (a5)
  {
    if (a4 >= 1)
    {
      v5 = a4;
      LOWORD(v6) = a3;
      do
      {
        v7 = *result++;
        *a2++ = (v7 * v6) >> (15 - a5);
        v6 = (v6 * a3) >> 15;
        --v5;
      }

      while (v5);
    }
  }

  else if (a4 >= 1)
  {
    v8 = a4;
    LOWORD(v9) = a3;
    do
    {
      v10 = *result++;
      *a2++ = (v10 * v9) >> 15;
      v9 = (v9 * a3) >> 15;
      --v8;
    }

    while (v8);
  }

  return result;
}

int *fxd_HighPrecisionExpandLpcBandwidth(int *result, _DWORD *a2, int a3, unsigned int a4, __int16 a5)
{
  if (a4 >= 1)
  {
    v7 = result;
    v8 = 15 - a5;
    v9 = a4;
    LOWORD(v10) = a3;
    do
    {
      v11 = *v7++;
      v12 = v10;
      result = fxd_S32ShMultRndS32S16(v11, v10, v8);
      *a2++ = result;
      v10 = (v12 * a3) >> 15;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t fxd_LspToSubFrameAi(__int16 *__src, __int16 *a2, int a3, int a4, __int16 *__dst)
{
  if (a3 >= 2)
  {
    LOWORD(v9) = 0;
    v10 = (a3 << 9);
    v11 = a3 - 1;
    v12 = 0x2000000;
    do
    {
      if (v10)
      {
        v9 = (v12 / v10) >> 1;
      }

      fxd_InterpolateVectors(a2, __src, __dst, v9, a4);
      fxd_LspToAi(__dst, __dst, a4);
      v12 += 0x2000000;
      __dst += a4;
      --v11;
    }

    while (v11);
  }

  LH_S16ToLH_S16(__src, __dst, a4);

  return fxd_LspToAi(__dst, __dst, a4);
}

uint64_t fxd_LspToTilt(_WORD *a1, int a2)
{
  v2 = a1[1];
  v3 = (4 * *a1) * (v2 - *a1);
  v4 = a1[2];
  v5 = ((((32 * v3) & 0xFF80) * (v4 - v2)) >> 11) + 32 * (v4 - v2) * (v3 >> 11);
  v6 = ((v5 * (a1[3] - v4)) >> 11) + 32 * (a1[3] - v4) * (v5 >> 16);
  if (v6 > 183251937)
  {
    LOWORD(v8) = 0;
  }

  else
  {
    v7 = 768000 * (v6 >> 16) + ((24000 * v6) >> 11) - 0x7FFFFFFF;
    v8 = (2 * a2 * (v7 >> 16) + ((v7 * a2) >> 15) + 0x8000) >> 16;
  }

  return v8;
}

void *fxd_MultiStageVectorDecodeLsp(_DWORD *a1, int a2, _DWORD *a3, uint64_t a4, unsigned int a5, __int16 *a6)
{
  v6 = a6;
  result = FillZeroLH_S16(a6, a5);
  if (a2 > 1)
  {
    v13 = *a3 * a5;
    v14 = 1;
    do
    {
      if (a5 >= 1)
      {
        v15 = (a4 + 2 * v13 + 2 * (a1[v14] * a5));
        v16 = a5;
        v17 = v6;
        do
        {
          v18 = *v15++;
          *v17++ += v18;
          --v16;
        }

        while (v16);
      }

      v13 += a3[v14++] * a5;
    }

    while (v14 != a2);
  }

  if (a5 >= 1)
  {
    v19 = (a4 + 2 * (*a1 * a5));
    v20 = a5;
    do
    {
      v21 = *v6;
      *v6 >>= 2;
      v22 = *v19++;
      *v6++ = v22 + (v21 >> 2);
      --v20;
    }

    while (v20);
  }

  return result;
}

unint64_t fxd_MultiStageVectorDecodeLsp__32BIT(_DWORD *a1, int a2, _DWORD *a3, uint64_t a4, unsigned int a5, uint64_t a6, int *a7)
{
  v28 = *MEMORY[0x277D85DE8];
  result = FillZeroLH_S32(v27, a5);
  if (a2 > 1)
  {
    v15 = *a3 * a5;
    v16 = 1;
    do
    {
      if (a5 >= 1)
      {
        v17 = (a4 + 2 * v15 + 2 * (a1[v16] * a5));
        v18 = 8 - *(a6 + 4 * v16);
        v19 = v27;
        v20 = a5;
        do
        {
          v21 = *v17++;
          result = *v19;
          *v19++ = (v21 << v18) + result;
          --v20;
        }

        while (v20);
      }

      v15 += a3[v16++] * a5;
    }

    while (v16 != a2);
  }

  if (a5 >= 1)
  {
    v22 = (a4 + 2 * (*a1 * a5));
    v23 = a5;
    v24 = v27;
    do
    {
      v25 = *v22++;
      v26 = *v24 + (v25 << 10);
      *v24++ = v26;
      *a7++ = v26;
      --v23;
    }

    while (v23);
  }

  return result;
}

BOOL fxd_OrderCheckLsp(unsigned __int16 *a1, unsigned int a2, int a3)
{
  if (a3 == 3)
  {
    v3 = 5;
  }

  else
  {
    v3 = 2;
  }

  if (a2 >= 2)
  {
    v4 = 0;
    v5 = a2 - 1;
    do
    {
      v6 = 0;
      v7 = *a1;
      v8 = 1;
      do
      {
        v9 = v6 + 1;
        v10 = a1[v6 + 1];
        if (v10 < v7)
        {
          v11 = &a1[v6 + 2];
          while (1)
          {
            *(v11 - 2) = v10;
            *(v11 - 1) = v7;
            if (v5 == v9)
            {
              goto LABEL_14;
            }

            ++v9;
            v12 = *v11++;
            LOWORD(v10) = v12;
            if (v12 >= v7)
            {
              v8 = 0;
              break;
            }
          }
        }

        v7 = v10;
        v6 = v9;
      }

      while (v9 != v5);
      if (v8 == 1)
      {
        return fxd_SmoothLsp(a1, a2, a3);
      }

LABEL_14:
      ++v4;
    }

    while (v4 != v3);
  }

  return fxd_SmoothLsp(a1, a2, a3);
}

BOOL fxd_SmoothLsp(unsigned __int16 *a1, unsigned int a2, int a3)
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      return 1;
    }

    else if (a3 == 3)
    {
      if (a2 - 14 > 6)
      {
        v4 = 322;
      }

      else
      {
        v4 = dword_26ED5F994[a2 - 14];
      }

      v5 = 0;
      v6 = 2 * v4;
      v7 = a2 - 1;
      v8 = v7;
      v9 = v7 - 1;
      while (a2 >= 2)
      {
        v10 = 0;
        v11 = a1;
        do
        {
          v12 = v10 + 1;
          v13 = v11[1];
          v14 = *v11;
          if (v4 > (v11[1] - v14))
          {
            v15 = (v4 - (v13 - v14)) << 16 >> 17;
            if (v10)
            {
              if (v4 <= (v14 - *(v11 - 1)))
              {
                v17 = v14 - *(v11 - 1);
                if (v6 > v17)
                {
                  v16 = (v17 - v4) >> 1;
                }

                else
                {
                  v16 = (v4 - (v13 - v14)) >> 1;
                }
              }

              else
              {
                v16 = 0;
              }
            }

            else if (v4 <= *a1)
            {
              v16 = (v4 - (v13 - v14)) >> 1;
            }

            else
            {
              v16 = v14 >> 1;
            }

            if (v9 == v10 && 25736 - v4 < v13)
            {
              v15 = (25736 - v13) << 16 >> 17;
            }

            else if (v12 < v8)
            {
              v18 = (v11[2] - v13);
              if (v6 > v18)
              {
                v15 = (v18 - v4) << 16 >> 17;
              }

              if (v4 > (v11[2] - v13))
              {
                LOWORD(v15) = 0;
              }
            }

            *v11 = v14 - v16;
            v11[1] = v15 + v13;
          }

          ++v11;
          ++v10;
        }

        while (a2 - 1 != v12);
        v19 = 1;
        v20 = a2 - 1;
        v21 = a1 + 1;
        do
        {
          if (((32440 * v4) >> 15) > (*v21 - *(v21 - 1)))
          {
            v19 = 0;
          }

          ++v21;
          --v20;
        }

        while (v20);
        if (v19 == 1)
        {
          break;
        }

        if (++v5 == 10)
        {
          return 0;
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return !a3 || a3 == 1;
  }
}

int *fxd_OrderCheckLsp__S32(int *result, int a2)
{
  if (a2 >= 2)
  {
    v2 = 0;
    v3 = (a2 - 1);
    do
    {
LABEL_3:
      v4 = 0;
      v5 = *result;
      v6 = 1;
      while (1)
      {
        v7 = v4 + 1;
        v8 = result[v4 + 1];
        if (v5 > v8)
        {
          break;
        }

LABEL_9:
        v5 = v8;
        v4 = v7;
        if (v7 == v3)
        {
          if ((v6 == 1) | v2 & 1)
          {
            return result;
          }

          v2 = 1;
          goto LABEL_3;
        }
      }

      v9 = &result[v4 + 2];
      while (1)
      {
        *(v9 - 2) = v8;
        *(v9 - 1) = v5;
        if (v3 == v7)
        {
          break;
        }

        ++v7;
        v10 = *v9++;
        v8 = v10;
        if (v5 <= v10)
        {
          v6 = 0;
          goto LABEL_9;
        }
      }

      v11 = v2 | (a2 < 2);
      v2 = 1;
    }

    while ((v11 & 1) == 0);
  }

  return result;
}

uint64_t fxd_S16SatAddS16S16(int a1, int a2)
{
  v2 = a1 + a2;
  if (a1 + a2 >= 0x7FFF)
  {
    v2 = 0x7FFF;
  }

  if (v2 <= -32768)
  {
    return 4294934528;
  }

  else
  {
    return v2;
  }
}

uint64_t fxd_S32SatAddS32S32(int a1, int a2)
{
  if (((a2 + a1) ^ a1) > -1 || (a2 ^ a1) < 0)
  {
    return (a2 + a1);
  }

  else
  {
    return (a1 >> 31) ^ 0x7FFFFFFFu;
  }
}

uint64_t fxd_S16SatSubS16S16(int a1, int a2)
{
  v2 = a1 - a2;
  if (a1 - a2 >= 0x7FFF)
  {
    v2 = 0x7FFF;
  }

  if (v2 <= -32768)
  {
    return 4294934528;
  }

  else
  {
    return v2;
  }
}

uint64_t fxd_S32SatSubS32S32(int a1, int a2)
{
  if (((a2 ^ a1) & ((a1 - a2) ^ a1)) < 0 != v2)
  {
    return (a1 >> 31) ^ 0x7FFFFFFFu;
  }

  else
  {
    return (a1 - a2);
  }
}

uint64_t fxd_S32FractMultS32S32(int a1, int a2)
{
  if (a2 * a1 >= 1073741825)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return (2 * a2 * a1);
  }
}

uint64_t fxd_S32ShMultRndS32S32(int a1, int a2, __int16 a3)
{
  v3 = ((a2 >> 16) * a1 + a2 * (a1 >> 16) + ((a2 * a1 + 0x8000) >> 16) + (1 << (a3 - 17))) >> (a3 - 16);
  if (a3 == 16)
  {
    v3 = (a2 >> 16) * a1 + a2 * (a1 >> 16) + ((a2 * a1 + 0x8000) >> 16);
  }

  return (v3 + (((a2 >> 16) * (a1 >> 16)) << (32 - a3)));
}

uint64_t fxd_S16FractDivS32S32(int a1, int a2)
{
  v2 = 0;
  if (a1 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = -a1;
  }

  if (a2 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = -a2;
  }

  v5 = 2 * v3 - v4;
  v6 = 15;
  do
  {
    HIDWORD(v7) = v2;
    LODWORD(v7) = ~v5;
    v2 = v7 >> 31;
    if (v5 < 0)
    {
      v8 = v4;
    }

    else
    {
      v8 = -v4;
    }

    v5 = v8 + 2 * v5;
    --v6;
  }

  while (v6);
  if ((a2 ^ a1) < 0)
  {
    v2 = -v2;
  }

  return v2;
}

uint64_t fxd_S16NormS16(int a1)
{
  if (a1)
  {
    if (a1 == -1)
    {
      LOWORD(a1) = 15;
    }

    else
    {
      v1 = a1 ^ (a1 >> 15);
      if (v1 >= 0x4000)
      {
        LOWORD(a1) = 0;
      }

      else
      {
        LOWORD(a1) = 0;
        do
        {
          v1 = (2 * v1);
          LOWORD(a1) = a1 + 1;
        }

        while (v1 < 0x4000);
      }
    }
  }

  return a1;
}

uint64_t fxd_S16NormS32(int a1)
{
  if (!a1)
  {
    return 0;
  }

  if (a1 == -1)
  {
    return 31;
  }

  v2 = a1 ^ (a1 >> 31);
  if (v2 > 0x3FFFFFFF)
  {
    return 0;
  }

  v1 = 0;
  do
  {
    v3 = v2 >> 29;
    v2 *= 2;
    ++v1;
  }

  while (!v3);
  return v1;
}

uint64_t fxd_S16Lookup10Log10S16S16(int a1, uint64_t a2)
{
  if (a1 >> 5 == 1023)
  {
    LOWORD(v2) = 0;
  }

  else
  {
    v2 = *(a2 + 2 * (a1 >> 5)) + (((2 * a1 - (a1 >> 5 << 6)) * (*(a2 + 2 * (a1 >> 5) + 2) - *(a2 + 2 * (a1 >> 5))) + 0x8000) >> 24);
  }

  return v2;
}

uint64_t fxd_U16LookupPow10U16U16(unsigned int a1, uint64_t a2)
{
  v2 = a1 >> 5;
  if (a1 >> 5 > 0x400)
  {
    v2 = 1023;
  }

  return (*(a2 + 2 * v2) + (((*(a2 + 2 * v2 + 2) - *(a2 + 2 * v2)) * (a1 - 32 * v2) + 16) >> 5));
}

uint64_t fxd_DPFExtractS32S16S16(uint64_t result, _WORD *a2, _WORD *a3)
{
  *a2 = WORD1(result);
  *a3 = result >> 1;
  return result;
}

uint64_t fxd_U16FractSqrtS32(unsigned int a1)
{
  v1 = 0;
  v2 = 0;
  v3 = 0x8000;
  do
  {
    v4 = 2 * (v1 + v3) * (v1 + v3);
    if (v4 <= a1)
    {
      v1 += v3;
      if (v4 == a1)
      {
        break;
      }
    }

    v3 >>= 1;
  }

  while (v2++ < 0xF);
  return v1;
}

uint64_t fxd_U16SqrtS32(int a1)
{
  if (a1 > 3519)
  {
    if (a1 <= 5119)
    {
      if (a1 == 3520)
      {
        return 59;
      }

      if (a1 == 4096)
      {
        return 64;
      }
    }

    else
    {
      switch(a1)
      {
        case 5120:
          return 72;
        case 5632:
          return 75;
        case 7040:
          return 84;
      }
    }
  }

  else if (a1 <= 2047)
  {
    if (a1 == 1024)
    {
      return 32;
    }

    if (a1 == 1408)
    {
      return 38;
    }
  }

  else
  {
    switch(a1)
    {
      case 2048:
        return 45;
      case 2560:
        return 51;
      case 2816:
        return 53;
    }
  }

  v1 = 0;
  v2 = 0;
  v3 = 0x8000;
  do
  {
    v4 = (v1 + v3) * (v1 + v3);
    if (v4 <= a1)
    {
      v1 += v3;
      if (v4 == a1)
      {
        break;
      }
    }

    v3 >>= 1;
  }

  while (v2++ < 0xF);
  return v1;
}

uint64_t fxd_U16SqrtU32(unsigned int a1)
{
  v1 = 0;
  v2 = 0;
  v3 = 0x8000;
  do
  {
    v4 = (v1 + v3) * (v1 + v3);
    if (v4 <= a1)
    {
      v1 += v3;
      if (v4 == a1)
      {
        break;
      }
    }

    v3 >>= 1;
  }

  while (v2++ < 0xF);
  return v1;
}

uint64_t fxd_S32SqrtS32_sys32(unsigned int a1)
{
  v1 = 0;
  v2 = 0x8000;
  v3 = 16;
  do
  {
    v4 = (v1 + v2) * (v1 + v2);
    if (v4 <= a1)
    {
      v1 = v1 + v2;
      if (v4 == a1)
      {
        break;
      }
    }

    v2 >>= 1;
    --v3;
  }

  while (v3);
  return v1;
}

uint64_t uselect_CreateBrokerString(uint64_t a1, char *a2, size_t a3, char *a4, char *a5, int a6, int a7)
{
  v36 = *MEMORY[0x277D85DE8];
  v33 = 0;
  __src = 0;
  __s = 0;
  *a2 = 0;
  Str = paramc_ParamGetStr(*(a1 + 40), "voiceaddon", &__s);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  if (!__s || !*__s)
  {
    goto LABEL_12;
  }

  v15 = *(a1 + 8);
  v16 = cstdlib_strlen("voiceaddonbaseuri.");
  v17 = cstdlib_strlen(__s);
  v18 = heap_Calloc(v15, 1, v16 + v17 + 1);
  if (!v18)
  {
    return 2229280778;
  }

  v19 = v18;
  cstdlib_strcpy(v18, "voiceaddonbaseuri.");
  cstdlib_strcat(v19, __s);
  Str = paramc_ParamGetStr(*(a1 + 40), v19, &__src);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  heap_Free(*(a1 + 8), v19);
  if (__src && *__src)
  {
    Str = strhelper_SafeCat(a2, __src, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    if (a2[cstdlib_strlen(a2) - 1] != 47)
    {
      Str = strhelper_SafeCat(a2, "/", 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }
    }

    v20 = 0;
    v21 = "_";
  }

  else
  {
LABEL_12:
    v20 = 1;
    v21 = "/";
  }

  Str = paramc_ParamGetStr(*(a1 + 40), "voice", &__src);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v22 = 2229280778;
  if (!__src)
  {
    return 2229282821;
  }

  v31 = v20;
  v23 = *(a1 + 8);
  v24 = cstdlib_strlen(__src);
  v25 = heap_Calloc(v23, 1, v24 + 1);
  if (v25)
  {
    v26 = v25;
    cstdlib_strcpy(v25, __src);
    vf_MakeLower(v26);
    if (__s && *__s)
    {
      Str = strhelper_SafeCat(a2, "uselectvao", 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      Str = strhelper_SafeCat(a2, v21, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      Str = strhelper_SafeCat(a2, v26, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      Str = strhelper_SafeCat(a2, v21, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      Str = strhelper_SafeCat(a2, __s, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      Str = strhelper_SafeCat(a2, v21, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      Str = strhelper_SafeCat(a2, "vao", 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      heap_Free(*(a1 + 8), v26);
      v27 = 0;
    }

    else
    {
      Str = strhelper_SafeCat(a2, "uselect", 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      Str = strhelper_SafeCat(a2, v21, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      Str = strhelper_SafeCat(a2, v26, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      if (a4)
      {
        cstdlib_strcpy(a4, __src);
      }

      heap_Free(*(a1 + 8), v26);
      Str = strhelper_SafeCat(a2, v21, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      v27 = 1;
    }

    if (a6 == 1)
    {
      Str = paramc_ParamGetStr(*(a1 + 40), "fecfg", &__src);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      Str = strhelper_SafeCat(a2, __src, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      Str = strhelper_SafeCat(a2, v21, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }
    }

    if (v27)
    {
      Str = paramc_ParamGetStr(*(a1 + 40), "reduction", &__src);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      Str = strhelper_SafeCat(a2, __src, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      if (!a5)
      {
        goto LABEL_47;
      }

      v28 = __src;
    }

    else
    {
      if (!a5)
      {
LABEL_47:
        if ((v31 & 1) != 0 || (Str = strhelper_SafeCat(a2, ".dat", 0xFFFFFFFFFFFFFFFFLL, a3), (Str & 0x80000000) == 0))
        {
          v22 = paramc_ParamGetStr(*(a1 + 40), "datapackagename", &__src);
          if ((v22 & 0x80000000) != 0)
          {
            return v22;
          }

          v29 = v31 ^ 1;
          if (a7)
          {
            v29 = 1;
          }

          if ((v29 & 1) == 0 && __src)
          {
            if (*__src)
            {
              Str = brokeraux_ComposeBrokerString(a1, a2, 0, 0, 0, 0, 0, v35, a3);
              if ((Str & 0x80000000) == 0)
              {
                *a2 = 0;
                return strhelper_SafeCat(a2, v35, 0xFFFFFFFFFFFFFFFFLL, a3);
              }

              return Str;
            }

            return v22;
          }

          if (!a7 || !cupreader_IsCupInTheScope(a1, &v33))
          {
            return v22;
          }

          return cupreader_PrependCupName(a2, v33, a3);
        }

        return Str;
      }

      v28 = "vao";
    }

    cstdlib_strcpy(a5, v28);
    goto LABEL_47;
  }

  return v22;
}

uint64_t uselect_ObjcVoiceOpen(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  v98 = *MEMORY[0x277D85DE8];
  __src = 0;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  memset(__dst, 0, sizeof(__dst));
  inited = InitRsrcFunction(a1, a2, &__src);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  cstdlib_memcpy(__dst, __src, 0x1A0uLL);
  v63 = *(a5 + 32);
  v89 = 0;
  v88 = 0;
  cstdlib_strcpy(v96, "");
  cstdlib_strcpy(v95, "");
  cstdlib_strcpy(v94, "");
  if ((uselect_CreateBrokerString(__dst, v96, 0x100uLL, v95, v94, 1, 0) & 0x80000000) != 0)
  {
    goto LABEL_5;
  }

  inited = uselect_CheckForDataFile(v8, a2, v96, &v88);
  if ((inited & 0x80001FFF) == 0x8000000A)
  {
    return inited;
  }

  if (!v88)
  {
LABEL_5:
    inited = uselect_CreateBrokerString(__dst, v96, 0x100uLL, v95, v94, 0, 0);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = uselect_CheckForDataFile(v8, a2, v96, &v88);
    if ((inited & 0x80001FFF) == 0x8000000A)
    {
      return inited;
    }

    if (!v88)
    {
      if ((uselect_CreateBrokerString(__dst, v96, 0x100uLL, v95, v94, 0, 1) & 0x80000000) != 0)
      {
        goto LABEL_120;
      }

      inited = uselect_CheckForDataFile(v8, a2, v96, &v88);
      if ((inited & 0x80001FFF) == 0x8000000A)
      {
        return inited;
      }

      if (!v88)
      {
LABEL_120:
        v12 = 0;
        v10 = 2229280788;
        goto LABEL_121;
      }
    }
  }

  inited = ssftriff_reader_ObjOpen(v8, a2, 0, v96, "USEL", 1031, &v89);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v10 = 2229280778;
  v11 = heap_Calloc(*(&__dst[0] + 1), 1, 28400);
  v12 = v11;
  if (!v11)
  {
    goto LABEL_121;
  }

  cstdlib_strcpy(v11, v95);
  cstdlib_strcpy((v12 + 76), v94);
  cstdlib_strcpy((v12 + 152), v96);
  cstdlib_memset((v12 + 2144), 255, 0x100uLL);
  cstdlib_memset((v12 + 3048), 255, 0x11CuLL);
  cstdlib_memset((v12 + 3376), 255, 0x20uLL);
  cstdlib_memset((v12 + 2400), 0, 0x40uLL);
  cstdlib_memset((v12 + 2748), 0, 0xDAuLL);
  *(v12 + 28168) = uselect_CartLookup;
  *(v12 + 3578) = 2;
  v13 = heap_Calloc(*(&__dst[0] + 1), 1, 280);
  *(v12 + 3552) = v13;
  if (!v13)
  {
    goto LABEL_121;
  }

  v56 = v8;
  *v13 = v12;
  cstdlib_memset(__b, 0, 0x50uLL);
  v14 = uselect_ParseRiff(__dst, v89, v12, 0, __b, 0, 0, 0);
  if ((v14 & 0x80000000) == 0)
  {
    v15 = (v12 + 3504);
    v16 = (v12 + 3506);
    v92 = 0;
    v17 = v12 + 3512;
    v18 = v12 + 3488;
    v91 = 0;
    v19 = v12 + 3490;
    v20 = v12 + 3496;
    v90 = 0;
    v21 = v12 + 3472;
    v22 = v12 + 3474;
    v23 = v12 + 3480;
    v24 = v12 + 3440;
    v25 = v12 + 3442;
    v26 = v12 + 3448;
    v27 = 1;
    while (1)
    {
      if (v27 == 3)
      {
        v15 = v18;
        v16 = v19;
        v17 = v20;
      }

      v28 = (v27 == 1 ? v24 : v21);
      v29 = (v27 == 1 ? v25 : v22);
      v30 = v27 == 1 ? v26 : v23;
      if (v27 <= 2)
      {
        v31 = v29;
      }

      else
      {
        v28 = v15;
        v31 = v16;
      }

      v32 = (v27 <= 2 ? v30 : v17);
      v59 = *v28;
      if (*v28)
      {
        break;
      }

LABEL_64:
      ++v27;
      v16 = (v12 + 3506);
      v15 = (v12 + 3504);
      v18 = v12 + 3488;
      v17 = v12 + 3512;
      v20 = v12 + 3496;
      v19 = v12 + 3490;
      v22 = v12 + 3474;
      v21 = v12 + 3472;
      v24 = v12 + 3440;
      v23 = v12 + 3480;
      v26 = v12 + 3448;
      v25 = v12 + 3442;
      if (v27 == 5)
      {
        *(v12 + 2748) = 33620225;
        *(v12 + 2752) = 513;
        *(v12 + 2777) = 1;
        *(v12 + 2755) = 0x101010101010101;
        *(v12 + 2763) = 0x101010101010101;
        if ((*(v12 + 3220) & 0x80000000) == 0)
        {
          *(v12 + 2919) = 1;
        }

        v8 = v56;
        if ((*(v12 + 3224) & 0x80000000) == 0)
        {
          *(v12 + 2920) = 1;
        }

        if ((*(v12 + 3212) & 0x80000000) == 0)
        {
          *(v12 + 2824) = 1;
        }

        if ((*(v12 + 3168) & 0x80000000) == 0)
        {
          *(v12 + 2813) = 1;
        }

        if ((*(v12 + 3172) & 0x80000000) == 0)
        {
          *(v12 + 2814) = 1;
        }

        if ((*(v12 + 3176) & 0x80000000) == 0)
        {
          *(v12 + 2815) = 1;
        }

        if ((*(v12 + 3180) & 0x80000000) == 0)
        {
          *(v12 + 2816) = 1;
        }

        if ((*(v12 + 3184) & 0x80000000) == 0)
        {
          *(v12 + 2817) = 1;
        }

        if ((*(v12 + 3188) & 0x80000000) == 0)
        {
          *(v12 + 2818) = 1;
        }

        if ((*(v12 + 3192) & 0x80000000) == 0)
        {
          *(v12 + 2819) = 1;
          *(v12 + 2825) = 1;
        }

        if ((*(v12 + 3196) & 0x80000000) == 0)
        {
          *(v12 + 2820) = 1;
        }

        if ((*(v12 + 3200) & 0x80000000) == 0)
        {
          *(v12 + 2821) = 1;
        }

        if ((*(v12 + 3204) & 0x80000000) == 0)
        {
          *(v12 + 2822) = 1;
        }

        *(v12 + 2804) = -1;
        *(v12 + 2799) = -1;
        if (*(v12 + 2684))
        {
          *(v12 + 2958) = 257;
        }

        if (*(v12 + 2516))
        {
          *(v12 + 2803) = 1;
        }

        if ((*(v12 + 3104) & 0x80000000) == 0)
        {
          *(v12 + 2779) = 257;
          if ((*(v12 + 3208) & 0x80000000) == 0)
          {
            *(v12 + 2823) = 1;
          }
        }

        if ((*(v12 + 3120) & 0x80000000) == 0)
        {
          *(v12 + 2781) = 1;
        }

        if ((*(v12 + 3068) & 0x80000000) == 0)
        {
          *(v12 + 2773) = 257;
          v51 = *(v12 + 2736) != 0;
          *(v12 + 2960) = v51;
          *(v12 + 2961) = v51;
        }

        *(v12 + 2964) = *(v12 + 3324) >= 0;
        *(v12 + 2965) = *(v12 + 3328) >= 0;
        if ((*(v12 + 3392) & 0x80000000) == 0 || (*(v12 + 3396) & 0x80000000) == 0)
        {
          *(v12 + 2772) = 8;
        }

        if ((*(v12 + 3072) & 0x80000000) == 0)
        {
          *(v12 + 2775) = 257;
          v52 = *(v12 + 2740) != 0;
          *(v12 + 2962) = v52;
          *(v12 + 2963) = v52;
        }

        v10 = 0;
        if (*(v12 + 2560))
        {
          *(v12 + 2794) = 9;
        }

        goto LABEL_121;
      }
    }

    v33 = 0;
    v34 = *v32;
    v60 = *v31;
    v58 = v27;
    v57 = *v32;
LABEL_32:
    v35 = uselect_AddGenericContextRule(__dst, v12, &v92);
    if ((v35 & 0x80000000) != 0 || (v36 = v92, v35 = uselect_AddGCRAction(__dst, v92, &v90), (v35 & 0x80000000) != 0))
    {
LABEL_113:
      v10 = v35;
      goto LABEL_118;
    }

    v37 = v90;
    *v90 = v27;
    v38 = v33 * v60;
    v39 = v33 * v60 + v60;
    *(v37 + 4) = *(v34 + v39 - 2);
    v40 = *(v34 + v39 - 1);
    v37[2] = v40;
    if (v27 != 4)
    {
      if (v40)
      {
        if (v40 == 1)
        {
          v41 = 0;
        }

        else
        {
          v41 = 10 * v40;
        }
      }

      else
      {
        v41 = 10;
      }

      v37[2] = v41;
    }

    v61 = v33;
    v42 = 0;
    if (*(v12 + 3092) < 0)
    {
      v43 = 4;
    }

    else
    {
      v43 = 6;
    }

    v44 = v34 + v38;
    while (1)
    {
      cstdlib_memset(__s1, 0, 0x20uLL);
      if ((v42 & 0x7FFFFFFE) == 4)
      {
        if (**(v12 + 2464))
        {
          v45 = 0;
          v46 = 1;
          do
          {
            if (cstdlib_strchr(*(*(v12 + 3432) + 8 * *(v44 + v42)), v45 + 48))
            {
              __s1[v45 >> 3] |= 1 << (v45 & 7);
            }

            else
            {
              v46 = 0;
            }

            ++v45;
          }

          while (*(*(v12 + 2464) + 8 * v45));
          goto LABEL_59;
        }
      }

      else
      {
        v47 = *(v12 + 602);
        if (v47)
        {
          v46 = 1;
          v48 = (v12 + 603);
          do
          {
            if (cstdlib_strchr(*(*(v12 + 3424) + 8 * *(v44 + v42)), v47))
            {
              __s1[*(v48 - 1) >> 3] |= 1 << (*(v48 - 1) & 7);
            }

            else
            {
              v46 = 0;
            }

            v49 = *v48++;
            v47 = v49;
          }

          while (v49);
LABEL_59:
          if (!v46)
          {
            v35 = uselect_AddGCRCondition(__dst, v36, &v91);
            if ((v35 & 0x80000000) != 0)
            {
              goto LABEL_113;
            }

            v50 = v91;
            *v91 = 0;
            cstdlib_memcpy(v50 + 3, __s1, 0x20uLL);
            v50[1] = 0x1D1D02020202uLL >> (8 * v42);
            v50[2] = 0x10002FF0100uLL >> (8 * v42);
          }
        }
      }

      if (++v42 == v43)
      {
        v33 = v61 + 1;
        v27 = v58;
        v34 = v57;
        if (v61 + 1 == v59)
        {
          goto LABEL_64;
        }

        goto LABEL_32;
      }
    }
  }

  v10 = v14;
  cstdlib_strcpy(__s1, "");
  if (__b[0])
  {
    v54 = 0;
    v55 = __b;
    do
    {
      cstdlib_strcat(__s1, "/");
      cstdlib_strcat(__s1, v55);
      v55 = &__b[5 * ++v54];
    }

    while (*v55);
  }

  log_OutPublic(v63, "USELECT", 19000, "%s%s%s%s%s%x", "file", v96, "chunk", __s1, "lherror", v10);
LABEL_118:
  v8 = v56;
LABEL_121:
  if (v89)
  {
    ssftriff_reader_ObjClose(v89);
    v89 = 0;
  }

  if ((v10 & 0x80000000) != 0)
  {
    if ((v10 & 0x1FFF) == 0xA)
    {
      log_OutPublic(v63, "USELECT", 19000, 0);
    }

    uselect_VoiceClose(v8, a2, v12);
    v12 = 0;
  }

  *(a4 + 32) = v12;
  return v10;
}

uint64_t uselect_VoiceClose(_WORD *a1, int a2, uint64_t a3)
{
  v47 = 0;
  if (!a3)
  {
    return 0;
  }

  inited = InitRsrcFunction(a1, a2, &v47);
  if ((inited & 0x80000000) == 0)
  {
    v5 = *(a3 + 28232);
    if (v5)
    {
      heap_Free(v47[1], v5);
    }

    v6 = *(a3 + 28160);
    if (v6)
    {
      heap_Free(v47[1], v6);
    }

    v7 = *(a3 + 3512);
    if (v7)
    {
      heap_Free(v47[1], v7);
      *(a3 + 3512) = 0;
    }

    v8 = *(a3 + 3448);
    if (v8)
    {
      heap_Free(v47[1], v8);
      *(a3 + 3448) = 0;
    }

    v9 = *(a3 + 3480);
    if (v9)
    {
      heap_Free(v47[1], v9);
      *(a3 + 3480) = 0;
    }

    v10 = *(a3 + 3496);
    if (v10)
    {
      heap_Free(v47[1], v10);
      *(a3 + 3496) = 0;
    }

    v11 = *(a3 + 3520);
    if (v11)
    {
      v12 = v47;
      do
      {
        v13 = v11;
        v11 = v11[2];
        v14 = *v13;
        if (*v13)
        {
          do
          {
            v15 = *(v14 + 40);
            heap_Free(v12[1], v14);
            v14 = v15;
          }

          while (v15);
          v13 = *(a3 + 3520);
        }

        v16 = v13[1];
        if (v16)
        {
          do
          {
            v17 = *(v16 + 16);
            heap_Free(v12[1], v16);
            v16 = v17;
          }

          while (v17);
          v13 = *(a3 + 3520);
        }

        heap_Free(v12[1], v13);
        *(a3 + 3520) = v11;
      }

      while (v11);
    }

    v18 = *(a3 + 3416);
    if (v18)
    {
      v19 = *(a3 + 3408);
      if (v19)
      {
        do
        {
          *(a3 + 3408) = --v19;
          v20 = *(a3 + 3416);
          v21 = v20 + 24 * v19;
          v24 = *(v21 + 8);
          v23 = (v21 + 8);
          v22 = v24;
          if (v24)
          {
            heap_Free(v47[1], v22);
            *v23 = 0;
            v20 = *(a3 + 3416);
            v19 = *(a3 + 3408);
          }

          v25 = *(v20 + 24 * v19 + 16);
          if (v25)
          {
            heap_Free(v47[1], v25);
            v19 = *(a3 + 3408);
          }
        }

        while (v19);
        v18 = *(a3 + 3416);
      }

      heap_Free(v47[1], v18);
    }

    v26 = v47;
    v27 = *(a3 + 3336);
    if (v27)
    {
      v28 = *v27;
      if (*v27)
      {
        v29 = 0;
        do
        {
          heap_Free(v26[1], v28);
          ++v29;
          v27 = *(a3 + 3336);
          v28 = v27[v29];
        }

        while (v28);
      }

      heap_Free(v26[1], v27);
      *(a3 + 3336) = 0;
    }

    v30 = *(a3 + 3344);
    if (v30)
    {
      v31 = *v30;
      if (*v30)
      {
        v32 = 0;
        v33 = 0;
        do
        {
          v34 = *v31;
          if (*v31)
          {
            v35 = 0;
            do
            {
              heap_Free(v26[1], v34);
              ++v35;
              v31 = *(*(a3 + 3344) + 8 * v32);
              v34 = v31[v35];
            }

            while (v34);
          }

          heap_Free(v26[1], v31);
          ++v33;
          v30 = *(a3 + 3344);
          v32 = v33;
          v31 = v30[v33];
        }

        while (v31);
      }

      heap_Free(v26[1], v30);
      *(a3 + 3344) = 0;
    }

    v36 = *(a3 + 3352);
    if (v36)
    {
      v37 = *v36;
      if (*v36)
      {
        v38 = 0;
        do
        {
          heap_Free(v26[1], v37);
          ++v38;
          v36 = *(a3 + 3352);
          v37 = v36[v38];
        }

        while (v37);
      }

      heap_Free(v26[1], v36);
      *(a3 + 3352) = 0;
    }

    uselect_FreeRiffStringTable(v47, *(a3 + 3432));
    uselect_FreeRiffStringTable(v47, *(a3 + 3424));
    uselect_FreeRiffStringTable(v47, *(a3 + 2464));
    uselect_FreeRiffStringTable(v47, *(a3 + 28248));
    uselect_FreeRiffStringTable(v47, *(a3 + 28240));
    uselect_FreeRiffStringTable(v47, *(a3 + 28264));
    uselect_FreeRiffStringTable(v47, *(a3 + 28256));
    v39 = *(a3 + 2968);
    if (v39)
    {
      heap_Free(v47[1], v39);
    }

    v40 = *(a3 + 3368);
    if (v40)
    {
      heap_Free(v47[1], v40);
    }

    if (*(a3 + 600))
    {
      v41 = 0;
      do
      {
        ssftriff_reader_ReleaseChunkData(*(a3 + 408 + 8 * v41++));
      }

      while (v41 < *(a3 + 600));
    }

    *(a3 + 600) = 0;
    v42 = v47;
    v43 = *(a3 + 3552);
    if (v43)
    {
      v44 = *(v43 + 152);
      if (v44)
      {
        heap_Free(v47[1], v44);
      }

      if (*(v43 + 104))
      {
        v45 = 0;
        do
        {
          ssftriff_reader_ReleaseChunkData(*(v43 + 8 + 8 * v45++));
        }

        while (v45 < *(v43 + 104));
      }

      heap_Free(v42[1], v43);
      v42 = v47;
    }

    *(a3 + 3552) = 0;
    heap_Free(v42[1], a3);
  }

  return inited;
}

uint64_t uselect_CheckForDataFile(_WORD *a1, uint64_t a2, const char *a3, _DWORD *a4)
{
  v8 = 0;
  *a4 = 0;
  v5 = ssftriff_reader_ObjOpen(a1, a2, 2, a3, "USEL", 1031, &v8);
  v6 = v8;
  if ((v5 & 0x80000000) == 0 && v8)
  {
    *a4 = 1;
LABEL_5:
    ssftriff_reader_ObjClose(v6);
    return v5;
  }

  if (v8)
  {
    goto LABEL_5;
  }

  return v5;
}

uint64_t uselect_ParseRiff(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, const char *a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v135 = 0;
  v129 = 0;
  v141 = 0;
  v156 = *MEMORY[0x277D85DE8];
  __n = 0;
  v152 = 0;
  *__src = 0;
  v145 = 5 * a4;
  v136 = a3 + 3376;
  v137 = a3 + 3048;
  v132 = (a3 + 3024);
  v133 = (a3 + 3032);
  v134 = (a3 + 3016);
  v127 = (a3 + 3000);
  v128 = (a3 + 3040);
  v125 = (a3 + 2984);
  v126 = (a3 + 2992);
  v130 = (a3 + 2976);
  v131 = (a3 + 3008);
  v143 = a3 + 2144;
  __s = (a3 + 602);
  v140 = a3 + 3584 + 192 * a8;
  v138 = a3 + 408;
  __dst = (a3 + 140);
  v146 = (a3 + 64);
  v142 = (a3 + 152);
  while (1)
  {
    v150 = 1;
    LODWORD(v14) = ssftriff_reader_OpenChunk(a2, __src, &__n, 0);
    if ((v14 & 0x80000000) != 0)
    {
      break;
    }

    cstdlib_strcpy(&a5[v145], __src);
    if (a4 == 1)
    {
      if (cstdlib_strcmp(a5, "VCAT"))
      {
        if (!cstdlib_strcmp(a5, "PREF") && !cstdlib_strcmp(__src, "FEAT"))
        {
          *__s1 = 0;
          if (a6)
          {
            v63 = (a6 + ssftriff_reader_GetPosition(a2) - a7);
          }

          else
          {
            ssftriff_reader_GetChunkData(a2, __n, __s1, v27);
            if ((v69 & 0x80000000) != 0)
            {
              return v69;
            }

            v63 = *__s1;
          }

          v73 = *v63;
          *__s1 = v63 + 1;
          if (v73 >= 0x47)
          {
LABEL_342:
            v14 = 2229280772;
            log_OutPublic(a1[4], "USELECT", 19008, 0);
            return v14;
          }

          *(v137 + 4 * v73) = v141;
          v74 = *(a3 + 2968) + 32 * v141;
          *v74 = v73;
          *(v74 + 8) = v63[1];
          *(v74 + 4) = *(v63 + 1);
          *(v74 + 10) = *(v63 + 8) + 1;
          *(v74 + 11) = *(v63 + 9);
          *(v74 + 12) = *(v63 + 10);
          *(v74 + 13) = *(v63 + 11);
          *__s1 = v63 + 6;
          LODWORD(v14) = uselect_InitForPreselDistFunc(v74);
          v75 = *(a3 + 2968) + 32 * v141;
          *(v75 + 25) = v141;
          v76 = *v75;
          if (*v75 <= 9)
          {
            if (v76 > 4)
            {
              v77 = v131;
              if (v76 == 5)
              {
                goto LABEL_258;
              }

              v77 = v126;
              if (v76 == 7)
              {
                goto LABEL_258;
              }
            }

            else
            {
              v77 = v130;
              if (v76 == 1)
              {
                goto LABEL_258;
              }

              v77 = v125;
              if (v76 == 2)
              {
                goto LABEL_258;
              }
            }
          }

          else
          {
            if (v76 > 13)
            {
              v77 = v134;
              if (v76 != 14)
              {
                v77 = v133;
                if (v76 != 26)
                {
                  v77 = v128;
                  if (v76 != 27)
                  {
                    goto LABEL_259;
                  }
                }
              }

LABEL_258:
              *v77 = v75;
              goto LABEL_259;
            }

            v77 = v132;
            if (v76 == 10)
            {
              goto LABEL_258;
            }

            v77 = v127;
            if (v76 == 11)
            {
              goto LABEL_258;
            }
          }

LABEL_259:
          v92 = v141;
LABEL_260:
          ++v92;
          goto LABEL_261;
        }

        if (!cstdlib_strcmp(a5, "TRAF") && !cstdlib_strcmp(__src, "FEAT"))
        {
          *__s1 = 0;
          if (a6)
          {
            v67 = (a6 + ssftriff_reader_GetPosition(a2) - a7);
          }

          else
          {
            ssftriff_reader_GetChunkData(a2, __n, __s1, v28);
            v14 = v79;
            if ((v79 & 0x80000000) != 0)
            {
              return v14;
            }

            v67 = *__s1;
          }

          v80 = *v67;
          *__s1 = v67 + 1;
          if (v80 >= 8)
          {
            goto LABEL_342;
          }

          if (v80 == 1)
          {
            v81 = 0;
          }

          else
          {
            if (v80 != 3)
            {
              if (v141 == 2)
              {
                v93 = 3;
              }

              else
              {
                v93 = v141;
              }

              *(v136 + 4 * v80) = v93;
              v94 = *(a3 + 3368) + 12 * v93;
              *v94 = v80;
              v96 = *(v67 + 1);
              v95 = v67 + 2;
              *(v94 + 8) = *(v95 - 1);
              *__s1 = v95;
              v92 = v93;
              *(v94 + 4) = v96;
              goto LABEL_260;
            }

            v81 = 2;
          }

          *(v136 + 4 * v80) = v81;
          v89 = *(a3 + 3368) + 12 * v81;
          *v89 = v80;
          v91 = *(v67 + 1);
          v90 = v67 + 2;
          *(v89 + 8) = *(v90 - 1);
          *__s1 = v90;
          *(v89 + 4) = v91;
          v92 = v141;
          if (v81 == v141)
          {
            goto LABEL_260;
          }

LABEL_261:
          v141 = v92;
          goto LABEL_296;
        }

        if (cstdlib_strcmp(a5, "FUZZ") || cstdlib_strcmp(__src, "FTBL"))
        {
          if (cstdlib_strcmp(a5, "FUZZ") || cstdlib_strcmp(__src, "FTBA"))
          {
            if (cstdlib_strcmp(a5, "PCAR"))
            {
              if (cstdlib_strcmp(a5, "DCAR"))
              {
                if (cstdlib_strcmp(a5, "CCOS") || cstdlib_strcmp(__src, "CTXT"))
                {
                  if (cstdlib_strcmp(a5, "STDI") && cstdlib_strcmp(a5, "STSS"))
                  {
LABEL_43:
                    v150 = 0;
LABEL_297:
                    cstdlib_strcpy(__s1, "");
                    v107 = 0;
                    do
                    {
                      cstdlib_strcat(__s1, "/");
                      cstdlib_strcat(__s1, &a5[5 * v107++]);
                    }

                    while (a4 >= v107);
                    log_OutText(a1[4], "USELECT", 3, 0, "Unknown data: %s for %s", __s1, v142);
                    goto LABEL_300;
                  }

                  *__s1 = 0;
                  if (a6)
                  {
                    *__s1 = a6 + ssftriff_reader_GetPosition(a2) - a7;
                  }

                  else
                  {
                    ssftriff_reader_GetChunkData(a2, __n, __s1, v33);
                    v14 = v82;
                    if ((v82 & 0x80000000) != 0)
                    {
                      return v14;
                    }
                  }

                  if (cstdlib_strcmp(__src, "STVI"))
                  {
                    if (!cstdlib_strcmp(__src, "STVA"))
                    {
                      if (cstdlib_strcmp(a5, "STDI"))
                      {
                        *(a3 + 3544) = *__s1;
                      }

                      else
                      {
                        *(a3 + 3536) = *__s1;
                      }
                    }
                  }

                  else
                  {
                    *(a3 + 3528) = *__s1;
                  }
                }

                else
                {
                  LODWORD(v14) = uselect_ParseRiff(a1, a2, a3, 2u, a5, a6, a7, v135++);
                }
              }

              else
              {
                *__s1 = 0;
                if (a6)
                {
                  *__s1 = a6 + ssftriff_reader_GetPosition(a2) - a7;
                }

                else
                {
                  ssftriff_reader_GetChunkData(a2, __n, __s1, v32);
                  v14 = v78;
                  if ((v78 & 0x80000000) != 0)
                  {
                    return v14;
                  }
                }

                if (cstdlib_strcmp(__src, "CAQF"))
                {
                  if (cstdlib_strcmp(__src, "CAQI"))
                  {
                    if (cstdlib_strcmp(__src, "CAQV"))
                    {
                      if (!cstdlib_strcmp(__src, "CATN"))
                      {
                        *(*(a3 + 28232) + 8 * v129++) = *__s1;
                      }
                    }

                    else
                    {
                      *(a3 + 28224) = *__s1;
                    }
                  }

                  else
                  {
                    *(a3 + 28216) = *__s1;
                  }
                }

                else
                {
                  *(a3 + 28208) = *__s1;
                }
              }
            }

            else
            {
              *__s1 = 0;
              if (a6)
              {
                *__s1 = a6 + ssftriff_reader_GetPosition(a2) - a7;
              }

              else
              {
                ssftriff_reader_GetChunkData(a2, __n, __s1, v31);
                v14 = v71;
                if ((v71 & 0x80000000) != 0)
                {
                  return v14;
                }
              }

              if (cstdlib_strcmp(__src, "CAQF"))
              {
                if (cstdlib_strcmp(__src, "CAQI"))
                {
                  if (cstdlib_strcmp(__src, "CAQV"))
                  {
                    if (!cstdlib_strcmp(__src, "CATN"))
                    {
                      *(a3 + 28200) = *__s1;
                    }
                  }

                  else
                  {
                    *(a3 + 28192) = *__s1;
                  }
                }

                else
                {
                  *(a3 + 28184) = *__s1;
                }
              }

              else
              {
                *(a3 + 28176) = *__s1;
              }
            }
          }

          else
          {
            *__s1 = 0;
            if (a6)
            {
              *__s1 = a6 + ssftriff_reader_GetPosition(a2) - a7;
            }

            else
            {
              ssftriff_reader_GetChunkData(a2, __n, __s1, v30);
              v14 = v98;
              if ((v98 & 0x80000000) != 0)
              {
                return v14;
              }
            }

            if (!*(a3 + 3408))
            {
              goto LABEL_342;
            }

            v99 = heap_Calloc(a1[1], 1, __n);
            *(*(a3 + 3416) + 24 * *(a3 + 3408) - 8) = v99;
            if (v99)
            {
              cstdlib_memmove(v99, *__s1, __n);
            }

            else
            {
              LODWORD(v14) = -2065686518;
            }
          }
        }

        else
        {
          *__s1 = 0;
          if (a6)
          {
            v68 = (a6 + ssftriff_reader_GetPosition(a2) - a7);
            *__s1 = v68;
          }

          else
          {
            ssftriff_reader_GetChunkData(a2, __n, __s1, v29);
            if ((v69 & 0x80000000) != 0)
            {
              return v69;
            }

            v68 = *__s1;
          }

          LODWORD(v14) = -2065686524;
          v83 = __n;
          v84 = (*(a3 + 3416) + 24 * *(a3 + 3408));
          v85 = *v68;
          *v84 = v85;
          v86 = v68[1];
          v84[1] = v86;
          v87 = 2 * v85 * v86;
          if (v87 + 4 <= v83)
          {
            v88 = heap_Alloc(a1[1], v87);
            *(v84 + 1) = v88;
            if (v88)
            {
              cstdlib_memcpy(v88, v68 + 2, 2 * *v84 * v84[1]);
              LODWORD(v14) = 0;
            }

            else
            {
              LODWORD(v14) = -2065686518;
            }
          }

          ++*(a3 + 3408);
        }
      }

      else
      {
        *__s1 = 0;
        if (a6)
        {
          *__s1 = a6 + ssftriff_reader_GetPosition(a2) - a7;
        }

        else
        {
          ssftriff_reader_GetChunkData(a2, __n, __s1, v26);
          v14 = v42;
          if ((v42 & 0x80000000) != 0)
          {
            return v14;
          }
        }

        if (cstdlib_strcmp(__src, "ALPH"))
        {
          if (cstdlib_strcmp(__src, "VOIC"))
          {
            if (cstdlib_strcmp(__src, "COVO"))
            {
              if (cstdlib_strcmp(__src, "SAFE"))
              {
                if (cstdlib_strcmp(__src, "PLOS"))
                {
                  if (cstdlib_strcmp(__src, "SONO"))
                  {
                    if (cstdlib_strcmp(__src, "DIFF"))
                    {
                      if (cstdlib_strcmp(__src, "TAGA"))
                      {
                        if (cstdlib_strcmp(__src, "1BSL"))
                        {
                          if (cstdlib_strcmp(__src, "1BSR"))
                          {
                            if (cstdlib_strcmp(__src, "2BSL"))
                            {
                              if (cstdlib_strcmp(__src, "2BSR"))
                              {
                                v150 = 0;
                                goto LABEL_296;
                              }

                              v110 = *__s1;
                              v111 = __n;
                              v115 = 28264;
                            }

                            else
                            {
                              v110 = *__s1;
                              v111 = __n;
                              v115 = 28256;
                            }
                          }

                          else
                          {
                            v110 = *__s1;
                            v111 = __n;
                            v115 = 28248;
                          }
                        }

                        else
                        {
                          v110 = *__s1;
                          v111 = __n;
                          v115 = 28240;
                        }

                        v112 = (a3 + v115);
                      }

                      else
                      {
                        v110 = *__s1;
                        v111 = __n;
                        v112 = (a3 + 2464);
                      }

                      RiffStringTable = uselect_LoadRiffStringTable(a1, a2, v110, v111, v112);
                      goto LABEL_295;
                    }

                    __n_4[0] = 64;
                    v64 = *__s1;
                    v65 = __n;
                    v66 = (a3 + 2400);
                  }

                  else
                  {
                    __n_4[0] = 257;
                    v64 = *__s1;
                    v65 = __n;
                    v66 = (a3 + 1887);
                  }
                }

                else
                {
                  __n_4[0] = 257;
                  v64 = *__s1;
                  v65 = __n;
                  v66 = (a3 + 1373);
                }
              }

              else
              {
                __n_4[0] = 257;
                v64 = *__s1;
                v65 = __n;
                v66 = (a3 + 1630);
              }
            }

            else
            {
              __n_4[0] = 257;
              v64 = *__s1;
              v65 = __n;
              v66 = (a3 + 1116);
            }
          }

          else
          {
            __n_4[0] = 257;
            v64 = *__s1;
            v65 = __n;
            v66 = (a3 + 859);
          }

          RiffStringTable = ssftriff_reader_ReadStringZ(a2, v64, v65, 0, v66, __n_4);
LABEL_295:
          LODWORD(v14) = RiffStringTable;
          goto LABEL_296;
        }

        __n_4[0] = 257;
        LODWORD(v14) = ssftriff_reader_ReadStringZ(a2, *__s1, __n, 0, __s, __n_4);
        if ((v14 & 0x80000000) == 0)
        {
          *(a3 + 2496) = 255;
          if (cstdlib_strlen(__s))
          {
            v44 = 0;
            v45 = 0;
            do
            {
              v46 = __s[v44];
              if (v46 < *(a3 + 2496))
              {
                *(a3 + 2496) = v46;
                v46 = __s[v44];
              }

              if (v46 > *(a3 + 2497))
              {
                *(a3 + 2497) = v46;
                v46 = __s[v44];
              }

              *(v143 + v46) = v45;
              v44 = (v45 + 1);
              v47 = cstdlib_strlen(__s);
              v45 = v44;
            }

            while (v47 > v44);
          }

          v48 = *(a3 + 2497) - *(a3 + 2496);
          *(a3 + 3576) = v48 + 2;
          *(a3 + 3577) = v48 + 1;
        }
      }
    }

    else
    {
      if (a4)
      {
        if (cstdlib_strcmp(a5 + 5, "CTXT"))
        {
          goto LABEL_43;
        }

        *__s1 = 0;
        if (cstdlib_strcmp(__src, "L LL"))
        {
          if (!cstdlib_strcmp(__src, "L L "))
          {
            v34 = 0;
            v43 = 0;
            goto LABEL_268;
          }

          if (!cstdlib_strcmp(__src, "L R "))
          {
            v34 = 0;
            goto LABEL_146;
          }

          if (!cstdlib_strcmp(__src, "L RR"))
          {
            v34 = 0;
LABEL_183:
            v43 = 3;
            goto LABEL_268;
          }

          if (cstdlib_strcmp(__src, "R LL"))
          {
            if (cstdlib_strcmp(__src, "R L "))
            {
              if (cstdlib_strcmp(__src, "R R "))
              {
                if (!cstdlib_strcmp(__src, "R RR"))
                {
                  v34 = 1;
                  goto LABEL_183;
                }

LABEL_279:
                if ((v14 & 0x1FFF) == 0x14)
                {
                  LODWORD(v14) = 0;
                }

                goto LABEL_296;
              }

              v34 = 1;
LABEL_146:
              v43 = 1;
            }

            else
            {
              v43 = 0;
              v34 = 1;
            }

LABEL_268:
            SubChunkInfo = uselect_GetSubChunkInfo(a2, a6, a7, __src, &__n, __s1);
            if (SubChunkInfo < 0)
            {
              LODWORD(v14) = SubChunkInfo;
            }

            else
            {
              v102 = (v140 + 96 * v34 + 24 * v43);
              do
              {
                if (cstdlib_strcmp(__src, "TABL"))
                {
                  if (cstdlib_strcmp(__src, "IDX "))
                  {
                    if (!cstdlib_strcmp(__src, "IDX2"))
                    {
                      v102[2] = *__s1;
                    }
                  }

                  else
                  {
                    v102[1] = *__s1;
                  }
                }

                else
                {
                  *v102 = *__s1;
                }

                v103 = uselect_GetSubChunkInfo(a2, a6, a7, __src, &__n, __s1);
              }

              while ((v103 & 0x80000000) == 0);
              LODWORD(v14) = v103;
            }

            goto LABEL_279;
          }

          v34 = 1;
        }

        else
        {
          v34 = 0;
        }

        v43 = 2;
        goto LABEL_268;
      }

      if (!cstdlib_strcmp(__src, "VINF"))
      {
        v149 = 0;
        *v148 = 0;
        if (a6)
        {
          *v148 = a6 + ssftriff_reader_GetPosition(a2) - a7;
        }

        else
        {
          ssftriff_reader_GetChunkData(a2, __n, v148, v15);
          v14 = v35;
          if ((v35 & 0x80000000) != 0)
          {
            return v14;
          }
        }

        v36 = __n;
        if (__n)
        {
          v37 = 0;
          do
          {
            LOBYTE(__n_4[0]) = 0;
            __s1[0] = 0;
            v149 = 256;
            LODWORD(v14) = ssftriff_reader_ReadStringZ(a2, *v148, v36, v37, __s1, &v149);
            if ((v14 & 0x80000000) == 0 && v37 < __n)
            {
              v37 += v149;
              v149 = 256;
              LODWORD(v14) = ssftriff_reader_ReadStringZ(a2, *v148, __n, v37, __n_4, &v149);
            }

            if ((v14 & 0x80000000) != 0)
            {
              break;
            }

            v38 = v149;
            v39 = cstdlib_strcmp(__s1, "Version");
            v40 = v146;
            if (v39)
            {
              v41 = cstdlib_strcmp(__s1, "ReductionVersion");
              v40 = __dst;
              if (v41)
              {
                continue;
              }
            }

            cstdlib_strcpy(v40, __n_4);
            v37 += v38;
            log_OutText(a1[4], "USELECT", 3, 0, "Voice attribute %s=%s", __s1, __n_4);
            v36 = __n;
          }

          while (v37 < __n);
        }

        goto LABEL_296;
      }

      if (!cstdlib_strcmp(__src, "STAT"))
      {
        v149 = 0;
        *v148 = 0;
        if (a6)
        {
          *v148 = a6 + ssftriff_reader_GetPosition(a2) - a7;
        }

        else
        {
          ssftriff_reader_GetChunkData(a2, __n, v148, v16);
          v14 = v55;
          if ((v55 & 0x80000000) != 0)
          {
            return v14;
          }
        }

        v56 = __n;
        if (__n)
        {
          v57 = 0;
          do
          {
            LOBYTE(__n_4[0]) = 0;
            __s1[0] = 0;
            v149 = 64;
            LODWORD(v14) = ssftriff_reader_ReadStringZ(a2, *v148, v56, v57, __s1, &v149);
            if ((v14 & 0x80000000) == 0 && v57 < __n)
            {
              v57 += v149;
              v149 = 64;
              LODWORD(v14) = ssftriff_reader_ReadStringZ(a2, *v148, __n, v57, __n_4, &v149);
            }

            if ((v14 & 0x80000000) != 0)
            {
              break;
            }

            v58 = v149;
            if (cstdlib_strcmp(__s1, "p95:pitch"))
            {
              if (!cstdlib_strcmp(__s1, "p95:logdur"))
              {
                v59 = cstdlib_atoi(__n_4);
                if (v59 >= 255)
                {
                  v60 = 255;
                }

                else
                {
                  v60 = v59;
                }

                *(a3 + 2498) = v60 & ~(v60 >> 31);
              }
            }

            else
            {
              v61 = cstdlib_atoi(__n_4);
              v62 = v61 >= 255 ? 255 : v61;
              *(a3 + 2499) = v62 & ~(v62 >> 31);
            }

            v57 += v58;
            log_OutText(a1[4], "USELECT", 3, 0, "Statistics %s=%s", __s1, __n_4);
            v56 = __n;
          }

          while (v57 < __n);
        }

        goto LABEL_296;
      }

      if (!cstdlib_strcmp(__src, "VCAT"))
      {
        if (a6)
        {
          ssftriff_reader_GetPosition(a2);
        }

        else
        {
          *__s1 = 0;
          ssftriff_reader_GetChunkData(a2, __n, __s1, v17);
          if ((v69 & 0x80000000) != 0)
          {
            return v69;
          }
        }

        v70 = a1;
        goto LABEL_144;
      }

      if (!cstdlib_strcmp(__src, "VBOP"))
      {
        *__s1 = 0;
        __n_4[0] = 0;
        if (a6)
        {
          *__s1 = a6 + ssftriff_reader_GetPosition(a2) - a7;
        }

        else
        {
          ssftriff_reader_GetChunkData(a2, __n, __s1, v18);
          v14 = v72;
          if ((v72 & 0x80000000) != 0)
          {
            return v14;
          }
        }

        if (__n >= 0xF9)
        {
          goto LABEL_342;
        }

        cstdlib_memcpy((a3 + 2500), *__s1, __n);
        if ((paramc_ParamGetUInt(a1[5], "uselectmaxcandspruning", __n_4) & 0x80000000) == 0 && __n_4[0])
        {
          *(a3 + 2552) = __n_4[0];
        }

        if (__n <= 0x8F)
        {
          *(a3 + 2640) = 400000;
          goto LABEL_163;
        }

        if (__n <= 0xC3)
        {
LABEL_163:
          *(a3 + 2692) = 0;
          goto LABEL_164;
        }

        if (__n <= 0xC7)
        {
LABEL_164:
          *(a3 + 2696) = 0;
        }

        else if (__n > 0xCB)
        {
          if (__n > 0xCF)
          {
            if (__n > 0xD3)
            {
              if (__n > 0xD7)
              {
                if (__n > 0xDB)
                {
                  if (__n > 0xDF)
                  {
                    if (__n > 0xE3)
                    {
                      if (__n > 0xE7)
                      {
                        if (__n > 0xEB)
                        {
                          if (__n > 0xEF)
                          {
                            if (__n > 0xF3)
                            {
                              if (__n > 0xF7)
                              {
                                goto LABEL_177;
                              }

                              goto LABEL_176;
                            }

LABEL_175:
                            *(a3 + 2740) = 0;
LABEL_176:
                            *(a3 + 2744) = 0;
LABEL_177:
                            if (!*(a3 + 2672) && !*(a3 + 2676) && !*(a3 + 2664) && !*(a3 + 2652))
                            {
                              *(a3 + 2672) = -1;
                            }

                            goto LABEL_296;
                          }

LABEL_174:
                          *(a3 + 2736) = 0;
                          goto LABEL_175;
                        }

LABEL_173:
                        *(a3 + 2732) = 0;
                        goto LABEL_174;
                      }

LABEL_172:
                      *(a3 + 2728) = 2;
                      goto LABEL_173;
                    }

LABEL_171:
                    *(a3 + 2724) = 1;
                    goto LABEL_172;
                  }

LABEL_170:
                  *(a3 + 2720) = 5;
                  goto LABEL_171;
                }

LABEL_169:
                *(a3 + 2716) = 2;
                goto LABEL_170;
              }

LABEL_168:
              *(a3 + 2712) = 0;
              goto LABEL_169;
            }

LABEL_167:
            *(a3 + 2708) = 5;
            goto LABEL_168;
          }

LABEL_166:
          *(a3 + 2704) = 1;
          goto LABEL_167;
        }

        *(a3 + 2700) = 0;
        goto LABEL_166;
      }

      if (cstdlib_strcmp(__src, "TPMX") && cstdlib_strcmp(__src, "TPMN"))
      {
        if (!cstdlib_strcmp(__src, "PREF"))
        {
          *__s1 = 0;
          if (a6)
          {
            v97 = (a6 + ssftriff_reader_GetPosition(a2) - a7);
            *__s1 = v97;
          }

          else
          {
            ssftriff_reader_GetChunkData(a2, __n, __s1, v19);
            if ((v69 & 0x80000000) != 0)
            {
              return v69;
            }

            v97 = *__s1;
          }

          *(a3 + 2966) = *v97;
          ssftriff_reader_Seek(a2, 4u, 1);
          v105 = a1;
          v106 = heap_Calloc(a1[1], 32, *(a3 + 2966) + 1);
          *(a3 + 2968) = v106;
          if (!v106)
          {
            return 2229280778;
          }

          *(v106 + 32 * *(a3 + 2966)) = 0;
          goto LABEL_308;
        }

        if (!cstdlib_strcmp(__src, "TRAF"))
        {
          *__s1 = 0;
          if (a6)
          {
            v100 = (a6 + ssftriff_reader_GetPosition(a2) - a7);
            *__s1 = v100;
          }

          else
          {
            ssftriff_reader_GetChunkData(a2, __n, __s1, v20);
            if ((v69 & 0x80000000) != 0)
            {
              return v69;
            }

            v100 = *__s1;
          }

          *(a3 + 3360) = *v100;
          ssftriff_reader_Seek(a2, 4u, 1);
          v105 = a1;
          v109 = heap_Calloc(a1[1], 12, *(a3 + 3360));
          *(a3 + 3368) = v109;
          if (!v109)
          {
            return 2229280778;
          }

LABEL_308:
          v70 = v105;
LABEL_144:
          RiffStringTable = uselect_ParseRiff(v70, a2, a3, 1u, a5, 0, 0, 0);
          goto LABEL_295;
        }

        if (cstdlib_strcmp(__src, "FUZZ"))
        {
          if (!cstdlib_strcmp(__src, "CTXR"))
          {
            RiffStringTable = uselect_ParseContextRules(a1, a2, a3);
            goto LABEL_295;
          }

          if (!cstdlib_strcmp(__src, "GCTR"))
          {
            RiffStringTable = uselect_ParseGenericContextRule(a1, a2, a3, __n, v22);
            goto LABEL_295;
          }

          if (!cstdlib_strcmp(__src, "GENF"))
          {
            RiffStringTable = uselect_ParseGenericFeatureMap(a1, a2, a3, __n, v23);
            goto LABEL_295;
          }

          if (!cstdlib_strcmp(__src, "PCAR"))
          {
            goto LABEL_318;
          }

          if (cstdlib_strcmp(__src, "DCAR"))
          {
            if (cstdlib_strcmp(__src, "PHIS"))
            {
              if (!cstdlib_strcmp(__src, "STDI") || !cstdlib_strcmp(__src, "STSS"))
              {
                goto LABEL_318;
              }

              if (cstdlib_strcmp(__src, "CDBK"))
              {
                if (cstdlib_strcmp(__src, "CCOS"))
                {
                  RiffStringTable = uselect_ParseVoicePartChunks(a1, a2, a3, __n, __src, &v150);
                  goto LABEL_295;
                }

LABEL_318:
                Position = ssftriff_reader_GetPosition(a2);
                *__s1 = 0;
                v69 = ssftriff_reader_DetachChunkData(a2, (v138 + 8 * *(a3 + 600)), __s1);
                if ((v69 & 0x80000000) != 0)
                {
                  return v69;
                }

                ++*(a3 + 600);
                LODWORD(v14) = uselect_ParseRiff(a1, a2, a3, 1u, a5, *__s1, Position, 0);
                goto LABEL_296;
              }

              *__s1 = 0;
              v14 = ssftriff_reader_DetachChunkData(a2, (v138 + 8 * *(a3 + 600)), __s1);
              if ((v14 & 0x80000000) != 0)
              {
                return v14;
              }

              ++*(a3 + 600);
              v123 = *(a3 + 2608);
              if (!v123)
              {
                goto LABEL_336;
              }

              if (v123 != 256)
              {
                if (v123 != 128)
                {
                  return 2229280772;
                }

LABEL_336:
                *(a3 + 3560) = *__s1;
                goto LABEL_296;
              }

              *(a3 + 3568) = *__s1;
            }

            else
            {
              *__s1 = 0;
              if (a6)
              {
                *__s1 = a6 + ssftriff_reader_GetPosition(a2) - a7;
              }

              else
              {
                ssftriff_reader_GetChunkData(a2, __n, __s1, v24);
                v14 = v121;
                if ((v121 & 0x80000000) != 0)
                {
                  return v14;
                }
              }

              v122 = heap_Alloc(a1[1], __n);
              *(a3 + 28160) = v122;
              if (!v122)
              {
                return 2229280778;
              }

              cstdlib_memcpy(v122, *__s1, __n);
            }
          }

          else
          {
            v117 = ssftriff_reader_GetPosition(a2);
            *__s1 = 0;
            v69 = ssftriff_reader_DetachChunkData(a2, (v138 + 8 * *(a3 + 600)), __s1);
            if ((v69 & 0x80000000) != 0)
            {
              return v69;
            }

            ++*(a3 + 600);
            v118 = a1[1];
            v119 = cstdlib_strlen(__s);
            v120 = heap_Calloc(v118, v119, 8);
            *(a3 + 28232) = v120;
            if (!v120)
            {
              return 2229280778;
            }

            LODWORD(v14) = uselect_ParseRiff(a1, a2, a3, 1u, a5, *__s1, v117, 0);
          }
        }

        else
        {
          *__s1 = 0;
          if (a6)
          {
            v104 = (a6 + ssftriff_reader_GetPosition(a2) - a7);
            *__s1 = v104;
          }

          else
          {
            ssftriff_reader_GetChunkData(a2, __n, __s1, v21);
            if ((v69 & 0x80000000) != 0)
            {
              return v69;
            }

            v104 = *__s1;
          }

          v113 = *v104;
          ssftriff_reader_Seek(a2, 4u, 1);
          v114 = heap_Calloc(a1[1], 24, (v113 + 2));
          *(a3 + 3416) = v114;
          if (!v114)
          {
            return 2229280778;
          }

          *(a3 + 3408) = 1;
          LODWORD(v14) = uselect_ParseRiff(a1, a2, a3, 1u, a5, 0, 0, 0);
        }
      }

      else
      {
        *__s1 = 0;
        v14 = ssftriff_reader_DetachChunkData(a2, (v138 + 8 * *(a3 + 600)), __s1);
        if ((v14 & 0x80000000) != 0)
        {
          return v14;
        }

        ++*(a3 + 600);
        v49 = *(a3 + 2464);
        if (!v49)
        {
          goto LABEL_342;
        }

        v50 = 0;
        do
        {
          v51 = v50;
        }

        while (*(v49 + 8 * v50++));
        if (!v51 || (__n >> 2) != 2 * v51)
        {
          goto LABEL_342;
        }

        v53 = cstdlib_strcmp(__src, "TPMX");
        v54 = 2488;
        if (!v53)
        {
          v54 = 2480;
        }

        *(a3 + v54) = *__s1;
      }
    }

LABEL_296:
    if (!v150)
    {
      goto LABEL_297;
    }

LABEL_300:
    if ((v14 & 0x80000000) != 0)
    {
      break;
    }

    v108 = ssftriff_reader_CloseChunk(a2);
    if (v108 < 0)
    {
      LODWORD(v14) = v108;
      break;
    }
  }

  if ((v14 & 0x1FFF) == 0x14)
  {
    return 0;
  }

  else
  {
    return v14;
  }
}

uint64_t uselect_ParseContextRules(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = 0;
  v15 = 0;
  v14 = 0;
  *__s1 = 0;
  do
  {
    LODWORD(result) = ssftriff_reader_OpenChunk(a2, __s1, &v15, &v16);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    if (!cstdlib_strcmp(__s1, "RULF"))
    {
      v10 = v16;
      v11 = v15;
      v12 = (a3 + 3424);
      goto LABEL_12;
    }

    if (!cstdlib_strcmp(__s1, "RULT"))
    {
      v10 = v16;
      v11 = v15;
      v12 = (a3 + 3432);
LABEL_12:
      LODWORD(result) = uselect_LoadRiffStringTable(a1, a2, v10, v11, v12);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      goto LABEL_18;
    }

    if (cstdlib_strcmp(__s1, "FSWR"))
    {
      if (cstdlib_strcmp(__s1, "PREW"))
      {
        if (cstdlib_strcmp(__s1, "TRWD"))
        {
          if (cstdlib_strcmp(__s1, "TRWP"))
          {
            log_OutPublic(*(a1 + 32), "USELECT", 19008, 0);
            LODWORD(result) = -2065686524;
            break;
          }

          v7 = v16;
          v8 = v15;
          v9 = (a3 + 3488);
        }

        else
        {
          v7 = v16;
          v8 = v15;
          v9 = (a3 + 3472);
        }
      }

      else
      {
        v7 = v16;
        v8 = v15;
        v9 = (a3 + 3440);
      }
    }

    else
    {
      v7 = v16;
      v8 = v15;
      v9 = (a3 + 3504);
    }

    LODWORD(result) = uselect_LoadRiffMatrix2D_U8(a1, v7, v8, v9);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

LABEL_18:
    LODWORD(result) = ssftriff_reader_CloseChunk(a2);
  }

  while ((result & 0x80000000) == 0);
  if ((result & 0x1FFF) == 0x14)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t uselect_ParseGenericContextRule(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v35 = a4;
  v34 = 0;
  v33 = 0;
  *__s1 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  ssftriff_reader_GetChunkData(a2, a4, &v34, a5);
  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_32;
  }

  v8 = ssftriff_reader_Seek(a2, 4u, 1);
  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_32;
  }

  v9 = *v34;
  v34 += 4;
  if (!v9)
  {
    v8 = uselect_AddGenericContextRule(a1, a3, &v31);
    if ((v8 & 0x80000000) == 0)
    {
      v12 = v31;
      while (1)
      {
        v8 = ssftriff_reader_OpenChunk(a2, __s1, &v35, &v34);
        if ((v8 & 0x80000000) != 0)
        {
          goto LABEL_32;
        }

        if (!cstdlib_strcmp(__s1, "GCRC"))
        {
          v8 = uselect_AddGCRCondition(a1, v12, &v30);
          if ((v8 & 0x80000000) != 0)
          {
            goto LABEL_32;
          }

          v19 = 0;
          v20 = v34;
          v21 = *v34;
          v22 = v30;
          *v30 = v21;
          v34 = v20 + 1;
          v23 = v20[1];
          v22[1] = v23;
          v34 = v20 + 2;
          v22[2] = v20[2];
          v24 = v20 + 3;
          v34 = v20 + 3;
          do
          {
            v22[v19 + 3] = *v24;
            v24 = ++v34;
            ++v19;
          }

          while (v19 != 32);
          if (!v21)
          {
            *(a3 + 2748 + v23) = 1;
          }

          goto LABEL_30;
        }

        if (cstdlib_strcmp(__s1, "GCRA"))
        {
          v10 = 19008;
          goto LABEL_5;
        }

        v8 = uselect_AddGCRAction(a1, v12, &v29);
        if ((v8 & 0x80000000) != 0)
        {
          goto LABEL_32;
        }

        v13 = v34;
        v14 = *v34;
        v15 = v29;
        *v29 = v14;
        v34 = v13 + 1;
        v16 = v13[1];
        *(v15 + 4) = v16;
        if (v14 - 7 >= 2)
        {
          v17 = *(v13 + 1);
          v18 = 4;
        }

        else
        {
          v17 = *(v13 + 1);
          v18 = 8;
        }

        v15[2] = v17;
        v34 = &v13[v18];
        v10 = 19008;
        if (v14 > 8)
        {
          goto LABEL_5;
        }

        v25 = 1 << v14;
        if ((v25 & 0x72) != 0)
        {
          break;
        }

        if ((v25 & 0xC) != 0)
        {
          v26 = *(a3 + 3376 + 4 * v16);
          if (v26 < 0)
          {
            v10 = 19025;
            goto LABEL_5;
          }

          goto LABEL_29;
        }

        if ((v25 & 0x180) == 0)
        {
          goto LABEL_5;
        }

        if (v16 != 46)
        {
          v28 = 2229280772;
          log_OutPublic(*(a1 + 32), "USELECT", 19008, 0);
          return v28;
        }

LABEL_30:
        v11 = ssftriff_reader_CloseChunk(a2);
        if ((v11 & 0x80000000) != 0)
        {
          goto LABEL_33;
        }
      }

      v26 = *(a3 + 3048 + 4 * v16);
      if (v26 < 0)
      {
        v10 = 19024;
        goto LABEL_5;
      }

LABEL_29:
      *(v15 + 4) = v26;
      goto LABEL_30;
    }

LABEL_32:
    v11 = v8;
    goto LABEL_33;
  }

  v10 = 19022;
LABEL_5:
  v11 = -2065686524;
  log_OutPublic(*(a1 + 32), "USELECT", v10, 0);
LABEL_33:
  if ((v11 & 0x1FFF) == 0x14)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}