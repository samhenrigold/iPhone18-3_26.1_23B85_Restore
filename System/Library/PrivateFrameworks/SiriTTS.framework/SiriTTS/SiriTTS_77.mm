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

uint64_t domain_mngr_ActivePromptFind(uint64_t a1, int a2, char *a3, unsigned int *a4, uint64_t a5, char **a6, void *a7)
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

uint64_t domain_mngr_ResourceLoad(void *a1, uint64_t a2, char *a3, char *a4, const void *a5, int a6, uint64_t a7)
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
  inited = InitRsrcFunction(*a1, a1[1], &v58);
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
    goto LABEL_42;
  }

  v28 = v56;
  if (!v56)
  {
    goto LABEL_52;
  }

  v29 = *(v56 + 80);
  if (v29)
  {
    if (strstr(a3, "application/x-vocalizer-activeprompt-db"))
    {
      v30 = (*(a1[8] + 104))(a1[9], a1[10], v29);
      active = v30;
      if ((v30 & 0x80000000) != 0 || (v28 = v56) == 0)
      {
        if ((v30 & 0x80000000) == 0)
        {
          goto LABEL_52;
        }

        goto LABEL_42;
      }
    }
  }

  v31 = *(*(v28 + 8) + 168);
  if ((ssftmap_FindReadOnly(a1[14], v31, &v57) & 0x80000000) != 0)
  {
    v33 = domain_ObjOpen(0, *a1, a1[1], v55);
    if ((v33 & 0x80000000) != 0)
    {
      v35 = v33;
      log_OutPublic(*(v58 + 32), "DOMAIN_MNGR", 47004, "%s%s%s%x", "domain", v31, "lhError", v33);
      v36 = 0;
      v37 = 1;
      active = v35;
      goto LABEL_44;
    }

    ReadOnly = ssftmap_Insert(a1[14], v31, v55);
    if ((ReadOnly & 0x80000000) != 0 || (ReadOnly = ssftmap_FindReadOnly(a1[14], v31, &v57), (ReadOnly & 0x80000000) != 0))
    {
      active = ReadOnly;
      log_OutPublic(*(v58 + 32), "DOMAIN_MNGR", 47005, "%s%s%s%x", "domain", v31, "lhError", ReadOnly);
      domain_ObjClose(v55);
      goto LABEL_42;
    }

    log_OutText(*(v58 + 32), "DOMAIN_MNGR", 4, 0, "Adding %s", v31);
  }

  v32 = domain_checkIfPresent(v57, v56);
  if ((v32 & 0x80000000) != 0)
  {
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
LABEL_44:
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

  active = domain_AddActivePromptDb(v57, v56);
  if ((active & 0x80000000) != 0)
  {
    log_OutPublic(*(v58 + 32), "DOMAIN_MNGR", 47009, "%s%s%s%x", "domain", v31, "lhError", active);
LABEL_42:
    v36 = 0;
    v37 = 1;
LABEL_43:
    v35 = active;
    goto LABEL_44;
  }

  if (!strstr(a3, ";mode=automatic") && strcmp((*(v56 + 8) + 52), "automatic"))
  {
    goto LABEL_51;
  }

  active = domain_mngr_EnableDomain(a1, v13, v31);
  if ((active & 0x80000000) != 0)
  {
    log_OutPublic(*(v58 + 32), "DOMAIN_MNGR", 47010, "%s%s%s%x", "domain", v31, "lhError", active);
    v36 = 0;
    v37 = 0;
    goto LABEL_43;
  }

  ++*(a1 + 25);
LABEL_51:
  hlp_RefreshTNTypes(a1);
  *a7 = v56;
  *(a7 + 8) = 316;
LABEL_52:
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

uint64_t domain_mngr_IElemDomainCopy(_OWORD *a1, uint64_t a2, void *a3)
{
  v5 = heap_Alloc(a2, 32);
  if (!v5)
  {
    return 2296389642;
  }

  v6 = v5;
  result = 0;
  v8 = a1[1];
  *v6 = *a1;
  v6[1] = v8;
  *(a1 + 2) = 0;
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

uint64_t hlp_FindActivePrompt(uint64_t a1, char *__s, uint64_t a3)
{
  v3 = *(a1 + 16);
  __s1 = 0;
  v30 = 0;
  v4 = 2296389652;
  v28 = 0;
  if (!v3)
  {
    return 2296389639;
  }

  if (a3)
  {
    *(a3 + 96) = 0;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  ReadOnly = domain_mngr_utils_DuplicateString(*(v3 + 8), __s, &__s1);
  if ((ReadOnly & 0x80000000) != 0)
  {
    goto LABEL_15;
  }

  v14 = __s1;
  v15 = strstr(__s1, "::");
  if (v15)
  {
    *v15 = 0;
    v16 = v15 + 2;
    ReadOnly = ssftmap_FindReadOnly(*(a1 + 112), __s1, &v30);
    if ((ReadOnly & 0x80000000) == 0)
    {
      Size = vector_GetSize(*(v30 + 16));
      if (Size)
      {
        v18 = Size;
        if (vector_GetElemAt(*(v30 + 16), Size - 1, &v28))
        {
          v19 = v18 - 2;
          do
          {
            v4 = activeprompt_db_Get(*v28, v16, a3);
            if ((v4 & 0x80000000) == 0)
            {
              break;
            }

            if (v19 == -1)
            {
              break;
            }
          }

          while (vector_GetElemAt(*(v30 + 16), v19--, &v28));
        }
      }

LABEL_16:
      v14 = __s1;
      if (!__s1)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

LABEL_15:
    v4 = ReadOnly;
    goto LABEL_16;
  }

  v4 = 2296389633;
  if (v14)
  {
LABEL_17:
    heap_Free(*(v3 + 8), v14);
    __s1 = 0;
  }

LABEL_18:
  v21 = *(v3 + 32);
  if ((v4 & 0x80000000) != 0)
  {
    log_OutPublic(v21, "DOMAIN_MNGR", 47016, "%s%s", "prompt", __s);
    log_OutTraceTuningData(*(v3 + 32), 253, "%s%s %s%d", v22, v23, v24, v25, v26, "NAME");
  }

  else
  {
    log_OutTraceTuningData(v21, 253, "%s%s", v9, v10, v11, v12, v13, "NAME");
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

uint64_t domain_ObjOpen(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  inited = InitRsrcFunction(a2, a3, &v12);
  if ((inited & 0x80000000) == 0)
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *a4 = a2;
    *(a4 + 8) = a3;
    v8 = *(v12 + 8);
    v10 = xmmword_1F42D6A30;
    v11 = off_1F42D6A40;
    if (!vector_ObjOpen(v8, &v10, 1, (a4 + 16)))
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
        if (!v8 && *v7 && !strcmp(v7, v6))
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
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v38 = 0;
  v36 = 0;
  v35 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  if ((safeh_HandleCheck(a1, a2, 62338, 920) & 0x80000000) != 0)
  {
    return 2342526984;
  }

  v42 = 0;
  v37 = 0;
  __src = 0;
  *a5 = 1;
  v9 = (*(a1[1] + 104))(a3, a4, 1, 0, &v37);
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  if (((*(a1[1] + 184))(a3, a4, v37, 0, &v32) & 0x80000000) == 0 && v32 == 1)
  {
    v9 = (*(a1[1] + 176))(a3, a4, v37, 0, &v42, &v36);
    if ((v9 & 0x80000000) != 0)
    {
LABEL_23:
      if (v41)
      {
        heap_Free(*(*a1 + 8), v41);
      }

      v41 = 0;
      if (v33)
      {
        heap_Free(*(*a1 + 8), v33);
      }

      return v9;
    }

    if (v36 < 2u)
    {
      return v9;
    }

    v10 = (*(a1[1] + 176))(a3, a4, v37, 1, &__src, &v36);
    if ((v10 & 0x80000000) == 0)
    {
      v11 = v36;
      HIWORD(v32) = v36;
      v12 = strlen(v42);
      v13 = heap_Alloc(*(*a1 + 8), (v12 + 1));
      v41 = v13;
      if (v13)
      {
        v14 = v13;
        strcpy(v13, v42);
        v15 = 32 * v11;
        v16 = heap_Calloc(*(*a1 + 8), 1, v15);
        v33 = v16;
        if (v16)
        {
          memcpy(v16, __src, v15);
          v10 = (*(a1[114] + 96))(a1[112], a1[113], "fecfg", "mdesegpos_morpheme_processing", &v40, &v38, &v39);
          if ((v10 & 0x80000000) == 0)
          {
            v17 = 0;
            if (v38 == 1 && v40)
            {
              v17 = **v40 == 49;
            }

            v10 = (*(a1[3] + 104))(a1[4], a1[5], &v41, &v33, &v32 + 2, a3, a4, &v31, v17);
            if ((v10 & 0x80000000) == 0)
            {
              if (!v41 || (v18 = strlen(v41), v10 = (*(a1[1] + 160))(a3, a4, v37, 0, (v18 + 1), v41, &v35), (v10 & 0x80000000) == 0))
              {
                if (!v33 || !HIWORD(v32) || (v33[4] += v31, v10 = (*(a1[1] + 160))(a3, a4, v37, 1), (v10 & 0x80000000) == 0))
                {
                  v10 = (*(a1[6] + 112))(a1[7], a1[8], &v30, 0);
                  if ((v10 & 0x80000000) == 0)
                  {
                    v30 += v31;
                    v10 = (*(a1[6] + 104))(a1[7], a1[8]);
                  }
                }
              }
            }
          }

          goto LABEL_22;
        }

        log_OutPublic(*(*a1 + 32), "FE_PROMPT", 45200, 0);
        heap_Free(*(*a1 + 8), v14);
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

  if (log_HasTraceTuningDataSubscriber(*(*a1 + 32)) && ((*(a1[1] + 184))(a3, a4, v37, 1, &v32) & 0x80000000) == 0 && v32 == 1 && ((*(a1[1] + 176))(a3, a4, v37, 1, &__src, &v36) & 0x80000000) == 0)
  {
    log_OutTraceTuningData(*(*a1 + 32), 270, "%s%s", v19, v20, v21, v22, v23, "BEG");
    log_OutTraceTuningDataBinary(*(*a1 + 32), 271, "", "text/plain;charset=depes", "", 0);
    log_OutTraceTuningDataBinary(*(*a1 + 32), 271, "", "application/x-realspeak-markers-pp;version=4.0", __src, 32 * v36);
    log_OutTraceTuningDataBinary(*(*a1 + 32), 272, "", "text/plain;charset=depes", "", 0);
    log_OutTraceTuningDataBinary(*(*a1 + 32), 272, "", "application/x-realspeak-markers-pp;version=4.0", __src, 32 * v36);
    log_OutTraceTuningData(*(*a1 + 32), 270, "%s%s %s%u", v24, v25, v26, v27, v28, "END");
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
  v30 = 0;
  v28 = 0;
  v27 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  if ((safeh_HandleCheck(a1, a2, 62339, 64) & 0x80000000) != 0)
  {
    return 2343575560;
  }

  __s = 0;
  v29 = 0;
  __src = 0;
  *a5 = 1;
  v9 = (*(a1[1] + 104))(a3, a4, 1, 0, &v29);
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_26;
  }

  v10 = (*(a1[1] + 184))(a3, a4, v29, 0, &v24);
  v11 = a1[1];
  if (v10 < 0 || v24 != 1)
  {
    v12 = (*(v11 + 184))(a3, a4, v29, 1, &v24);
  }

  else
  {
    v9 = (*(v11 + 176))(a3, a4, v29, 0, &__s, &v28);
    if ((v9 & 0x80000000) != 0)
    {
      return v9;
    }

    if (v28 > 1u)
    {
      goto LABEL_13;
    }

    v12 = (*(a1[1] + 184))(a3, a4, v29, 1, &v24);
  }

  if (v12 < 0 || v24 != 1)
  {
    return v9;
  }

  __s = "";
LABEL_13:
  v13 = (*(a1[1] + 176))(a3, a4, v29, 1, &__src, &v28);
  if ((v13 & 0x80000000) == 0)
  {
    v14 = v28;
    HIWORD(v24) = v28;
    v15 = strlen(__s);
    v16 = heap_Alloc(*(*a1 + 8), (v15 + 1));
    v30 = v16;
    if (v16)
    {
      v17 = v16;
      strcpy(v16, __s);
      v18 = 32 * v14;
      v19 = heap_Calloc(*(*a1 + 8), 1, v18);
      v25 = v19;
      if (v19)
      {
        memcpy(v19, __src, v18);
        v13 = (*(a1[2] + 120))(a1[3], a1[4], &v30, &v25, &v24 + 2, a3, a4, &v23);
        if ((v13 & 0x80000000) == 0)
        {
          if (!v30 || !*v30 || (v20 = strlen(v30), v13 = (*(a1[1] + 160))(a3, a4, v29, 0, (v20 + 1), v30, &v27), (v13 & 0x80000000) == 0))
          {
            if (!v25 || !HIWORD(v24) || (v25[4] += v23, v13 = (*(a1[1] + 160))(a3, a4, v29, 1), (v13 & 0x80000000) == 0))
            {
              v13 = (*(a1[5] + 112))(a1[6], a1[7], &v22, 0);
              if ((v13 & 0x80000000) == 0)
              {
                v22 += v23;
                v13 = (*(a1[5] + 104))(a1[6], a1[7]);
              }
            }
          }
        }

        goto LABEL_25;
      }

      log_OutPublic(*(*a1 + 32), "FE_PROMPTORTH", 45000, 0);
      heap_Free(*(*a1 + 8), v17);
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
  if (v30)
  {
    heap_Free(*(*a1 + 8), v30);
  }

  v30 = 0;
  if (v25)
  {
    heap_Free(*(*a1 + 8), v25);
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
  v24 = 0;
  v7 = 2357207050;
  v23 = 0;
  __src = 0;
  memset(__n, 0, sizeof(__n));
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v17 = 0;
  if ((safeh_HandleCheck(a1, a2, 62500, 952) & 0x80000000) != 0)
  {
    return 2357207048;
  }

  *a5 = 1;
  result = (*(*(a1 + 8) + 144))(*(a1 + 888), *(a1 + 896), &v24 + 4, &v23);
  if ((result & 0x80000000) == 0)
  {
    result = (*(*(a1 + 8) + 144))(*(a1 + 904), *(a1 + 912), &v24, &v23);
    if ((result & 0x80000000) == 0)
    {
      if (!v24)
      {
        if (v23 == 1)
        {
          return synstrmaux_CloseOutStreamsOnly((a1 + 64), *(a1 + 8));
        }

        *a5 = 0;
        return result;
      }

      v9 = (*(*(a1 + 8) + 88))(*(a1 + 888), *(a1 + 896), &__src, __n);
      if ((v9 & 0x80000000) != 0)
      {
        goto LABEL_23;
      }

      v10 = heap_Alloc(*(*a1 + 8), (__n[0] + 1));
      *&__n[1] = v10;
      if (!v10)
      {
        goto LABEL_25;
      }

      v11 = v10;
      if (__src)
      {
        memcpy(v10, __src, __n[0]);
      }

      v11[__n[0]] = 0;
      v9 = (*(*(a1 + 8) + 88))(*(a1 + 904), *(a1 + 912), &v20, &v18 + 4);
      if ((v9 & 0x80000000) != 0)
      {
        goto LABEL_23;
      }

      v12 = HIDWORD(v18);
      LODWORD(v18) = HIDWORD(v18) >> 5;
      HIDWORD(v18) >>= 5;
      v13 = heap_Calloc(*(*a1 + 8), 1, v12 & 0xFFFFFFE0);
      v19 = v13;
      if (!v13)
      {
LABEL_25:
        log_OutPublic(*(*a1 + 32), "FE_PROMPTORIORTH", 57000, 0);
        goto LABEL_26;
      }

      memcpy(v13, v20, 32 * HIDWORD(v18));
      v9 = (*(*(a1 + 56) + 112))(*(a1 + 40), *(a1 + 48), &v17, 0);
      if ((v9 & 0x80000000) == 0)
      {
        v9 = (*(*(a1 + 16) + 112))(*(a1 + 24), *(a1 + 32), &__n[1], &v19, &v18);
        if ((v9 & 0x80000000) == 0)
        {
          v14 = *&__n[1];
          v15 = __n[0];
          v19[4] = v19[4] + strlen(*&__n[1]) - __n[0] + 1;
          v16 = strlen(v14);
          if (!v16)
          {
LABEL_19:
            v9 = (*(*(a1 + 8) + 96))(*(a1 + 888), *(a1 + 896), v15);
            if ((v9 & 0x80000000) == 0)
            {
              v9 = (*(*(a1 + 8) + 104))(*(a1 + 936), *(a1 + 944), v19, (32 * v18));
              if ((v9 & 0x80000000) == 0)
              {
                v9 = (*(*(a1 + 8) + 96))(*(a1 + 904), *(a1 + 912), (32 * HIDWORD(v18)));
                if ((v9 & 0x80000000) == 0)
                {
                  v17 = v17 + strlen(*&__n[1]) - __n[0] + 1;
                  v9 = (*(*(a1 + 56) + 104))(*(a1 + 40), *(a1 + 48));
                }
              }
            }

            goto LABEL_23;
          }

          v9 = (*(*(a1 + 8) + 104))(*(a1 + 920), *(a1 + 928), v14, (v16 + 1));
          if ((v9 & 0x80000000) == 0)
          {
            v15 = __n[0];
            goto LABEL_19;
          }
        }
      }

LABEL_23:
      v7 = v9;
LABEL_26:
      if (*&__n[1])
      {
        heap_Free(*(*a1 + 8), *&__n[1]);
      }

      if (v19)
      {
        heap_Free(*(*a1 + 8), v19);
      }

      return v7;
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
  v31 = 0;
  v29 = 0;
  v30 = 0;
  v5 = 2372935687;
  __s = 0;
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
        if (strlen(v15) >= 1)
        {
          v16 = 0;
          do
          {
            v15[v16] = __tolower(v15[v16]);
            ++v16;
            v15 = v10[130];
          }

          while (strlen(v15) > v16);
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
        v25 = xmmword_1F42D6BB8;
        v27 = xmmword_1F42D6BB8;
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
  if (!strcmp(__s1, "lidscope"))
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

  else
  {
    result = strcmp(__s1, "lidmode");
    if (!result)
    {
LABEL_13:
      v10 = 1;
      goto LABEL_14;
    }

    if (strcmp(__s1, "lidvoiceswitch"))
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
  if (!strcmp(__s1, "lidscope"))
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

  else
  {
    result = strcmp(__s1, "lidmode");
    if (!result)
    {
      return result;
    }

    if (strcmp(__s1, "lidvoiceswitch"))
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

  return result;
}

uint64_t fe_voice_switch_ObjClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62466, 1048);
  if ((result & 0x80000000) != 0)
  {
    return 2372935688;
  }

  if (a1)
  {
    if (*(a1 + 1000) == 21)
    {
      v4 = *(a1 + 1024);
      if (v4)
      {
        heap_Free(*(*a1 + 8), v4);
      }
    }

    *(a1 + 1000) = 0u;
    *(a1 + 1016) = 0u;
    *(a1 + 968) = 0u;
    *(a1 + 984) = 0u;
    *(a1 + 936) = 0u;
    *(a1 + 952) = 0u;
    if (*(a1 + 8))
    {
      objc_ReleaseObject(*(*a1 + 48), "SYNTHSTREAM");
    }

    if (*(a1 + 32))
    {
      objc_ReleaseObject(*(*a1 + 48), "COMPQUERY");
    }

    v5 = *(*a1 + 40);
    v9 = a1;
    v8 = xmmword_1F42D6BB8;
    v10 = xmmword_1F42D6BB8;
    paramc_ListenerRemove(v5, "lidscope", &v9);
    v6 = *(*a1 + 40);
    v9 = a1;
    v10 = v8;
    paramc_ListenerRemove(v6, "lidmode", &v9);
    v7 = *(*a1 + 40);
    v9 = a1;
    v10 = v8;
    paramc_ListenerRemove(v7, "lidvoiceswitch", &v9);
    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t hlp_TrackStartMsgMarkers(void *a1, int a2, int *a3, unsigned int a4)
{
  if (a2)
  {
    v7 = a1 + 117;
    if (*(a1 + 250) == 21)
    {
      v8 = a1[128];
      if (v8)
      {
        heap_Free(*(*a1 + 8), v8);
      }
    }

    *(a1 + 125) = 0u;
    *(a1 + 127) = 0u;
    *(a1 + 121) = 0u;
    *(a1 + 123) = 0u;
    *v7 = 0u;
    *(a1 + 119) = 0u;
  }

  if (!a3)
  {
    return 0;
  }

  if (*(a1 + 232) != 1 || a4 == 0)
  {
    return 0;
  }

  v10 = a1 + 125;
  v11 = a4;
  while (1)
  {
    v12 = *a3;
    if (*a3 == 31)
    {
      v18 = *(a3 + 1);
      *(a1 + 121) = *a3;
      *(a1 + 123) = v18;
      goto LABEL_23;
    }

    if (v12 != 21)
    {
      if (v12 == 7)
      {
        v13 = *(a3 + 1);
        *(a1 + 117) = *a3;
        *(a1 + 119) = v13;
      }

      goto LABEL_23;
    }

    v14 = a1[128];
    if (v14)
    {
      heap_Free(*(*a1 + 8), v14);
    }

    if (!strcmp(*(a3 + 3), "normal"))
    {
      *v10 = 0u;
      *(a1 + 127) = 0u;
      goto LABEL_23;
    }

    v15 = *(a3 + 1);
    *v10 = *a3;
    *(a1 + 127) = v15;
    v16 = strlen(*(a3 + 3));
    v17 = heap_Alloc(*(*a1 + 8), (v16 + 1));
    a1[128] = v17;
    if (!v17)
    {
      break;
    }

    strcpy(v17, *(a3 + 3));
LABEL_23:
    a3 += 8;
    if (!--v11)
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
  v67 = *MEMORY[0x1E69E9840];
  memset(v65, 0, sizeof(v65));
  v64 = 0;
  v63 = 0;
  __src = 0;
  v62 = 0;
  v60 = 0;
  v59 = 0;
  v57 = 0;
  v58 = 0;
  __s1 = 0;
  bzero(v66, 0x400uLL);
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
    Object = (*(*(a1 + 8) + 144))(v10, *(a1 + 872), &v65[8], v65);
    if ((Object & 0x80000000) != 0)
    {
      return Object;
    }

    BestVoiceForLidLang = (*(*(a1 + 8) + 144))(*(a1 + 880), *(a1 + 888), &v65[4], v65);
    if ((BestVoiceForLidLang & 0x80000000) != 0)
    {
      return BestVoiceForLidLang;
    }

    if (!*&v65[8])
    {
      v13 = *v65;
      if (!*v65)
      {
        *a5 = 0;
        return BestVoiceForLidLang;
      }

      if (*&v65[4])
      {
        InputOutputMarkers_0 = hlp_GetInputOutputMarkers_0(a1, &v62, &__src, &v60 + 1, &v60);
        if ((InputOutputMarkers_0 & 0x80000000) != 0)
        {
          goto LABEL_149;
        }

        BestVoiceForLidLang = (*(*(a1 + 8) + 120))(*(a1 + 912), *(a1 + 920), (32 * v60));
        __src = 0;
        if ((BestVoiceForLidLang & 0x80000000) != 0)
        {
          return BestVoiceForLidLang;
        }

        if (HIDWORD(v60))
        {
          BestVoiceForLidLang = (*(*(a1 + 8) + 96))(*(a1 + 880), *(a1 + 888), (32 * HIDWORD(v60)));
          if ((BestVoiceForLidLang & 0x80000000) != 0)
          {
            goto LABEL_154;
          }
        }

        v13 = *v65;
      }

      if (!v13)
      {
        return BestVoiceForLidLang;
      }

      return synstrmaux_CloseOutStreamsOnly((a1 + 40), *(a1 + 8));
    }

    Object = (*(*(a1 + 8) + 88))(*(a1 + 864), *(a1 + 872), &v64, &v63);
    if ((Object & 0x80000000) != 0)
    {
      return Object;
    }

    v12 = v63;
    BestVoiceForLidLang = hlp_GetInputOutputMarkers_0(a1, &v62, &__src, &v60 + 1, &v60);
    if ((BestVoiceForLidLang & 0x80000000) != 0)
    {
      goto LABEL_154;
    }

    if (*__src == 0x4000)
    {
      v59 = *(__src + 3);
    }

    else
    {
      (*(*(a1 + 8) + 136))(*(a1 + 864), *(a1 + 872), &v59);
    }

    v15 = v60;
    if (v60 >= 2)
    {
      v16 = 1;
      v17 = __src;
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

    if ((paramc_ParamGetStr(*(*a1 + 40), "lidstate", &__s1) & 0x80000000) == 0)
    {
      v19 = __s1;
      if (__s1)
      {
        if (*__s1)
        {
          v20 = strcmp(__s1, "__NUAN_LID_voiceswitch");
          v21 = *(*a1 + 40);
          if (v20)
          {
            v22 = v19;
            goto LABEL_107;
          }

          BestVoiceForLidLang = paramc_ParamRemove(v21, "lidstate");
          if ((BestVoiceForLidLang & 0x80000000) != 0)
          {
            goto LABEL_154;
          }

          if (*(a1 + 928) == 1 && v15)
          {
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v41 = __src;
            while (1)
            {
              v42 = v40;
              v43 = &v41[32 * v40];
              if (*v43 == 36)
              {
                break;
              }

LABEL_102:
              v40 = v42 + 1;
              v38 = (v42 + 1);
              if (v15 <= v38)
              {
                goto LABEL_111;
              }
            }

            if (v39)
            {
              v44 = *(v43 + 3);
              if (*(v44 + 3) == 95 && (*(v44 + 4) == 108 && *(v44 + 5) == 105 || *(v44 + 4) == 118 && *(v44 + 5) == 108) || !strcmp(v44, "normal"))
              {
                v12 = (*(v43 + 3) - v59);
                v63 = *(v43 + 3) - v59;
                LODWORD(v60) = v38;
                *a5 = 2;
                v15 = v38;
                goto LABEL_111;
              }

              goto LABEL_101;
            }

            v45 = *(v43 + 3);
            if (v45[3] == 95)
            {
              if (v45[4] == 108 && v45[5] == 105)
              {
                v39 = 1;
LABEL_101:
                ++v39;
                goto LABEL_102;
              }

              if (v45[4] == 118)
              {
                v39 = v45[5] == 108;
                goto LABEL_101;
              }
            }

            v39 = 0;
            goto LABEL_101;
          }

LABEL_111:
          if (!v12)
          {
LABEL_114:
            if (!v15)
            {
              v50 = 0;
LABEL_138:
              if (v63)
              {
                BestVoiceForLidLang = (*(*(a1 + 8) + 96))(*(a1 + 864), *(a1 + 872));
                if ((BestVoiceForLidLang & 0x80000000) != 0)
                {
                  goto LABEL_154;
                }
              }

              if (!HIDWORD(v60))
              {
                goto LABEL_154;
              }

              if (*a5 == 2)
              {
                InputOutputMarkers_0 = hlp_TrackStartMsgMarkers(a1, v50 == 0, v62, HIDWORD(v60));
                if ((InputOutputMarkers_0 & 0x80000000) != 0)
                {
                  goto LABEL_149;
                }
              }

              else
              {
                if (*(a1 + 1000) == 21)
                {
                  v53 = *(a1 + 1024);
                  if (v53)
                  {
                    heap_Free(*(*a1 + 8), v53);
                  }
                }

                *(a1 + 1000) = 0u;
                *(a1 + 1016) = 0u;
                *(a1 + 968) = 0u;
                *(a1 + 984) = 0u;
                *(a1 + 936) = 0u;
                *(a1 + 952) = 0u;
              }

              InputOutputMarkers_0 = (*(*(a1 + 8) + 96))(*(a1 + 880), *(a1 + 888), (32 * HIDWORD(v60)));
LABEL_149:
              BestVoiceForLidLang = InputOutputMarkers_0;
              goto LABEL_154;
            }

            if (*a5 == 2)
            {
              if (*(__src + 3) - v59 >= v12)
              {
                v48 = 0;
              }

              else
              {
                v47 = 0;
                do
                {
                  v48 = ++v47;
                }

                while (v15 > v47 && *(__src + 8 * v47 + 3) - v59 < v12);
              }

              LODWORD(v60) = v48;
              if (HIDWORD(v60) && v62[3] - v59 < v63)
              {
                v51 = 0;
                do
                {
                  v52 = ++v51;
                }

                while (HIDWORD(v60) > v51 && v62[8 * v51 + 3] - v59 < v63);
              }

              else
              {
                v52 = 0;
              }

              HIDWORD(v60) = v52;
              if (!v48)
              {
                goto LABEL_136;
              }
            }

            else
            {
              v48 = v15;
            }

            if (*__src == 0x4000)
            {
              v50 = 0;
              *(__src + 4) = v12;
              goto LABEL_137;
            }

LABEL_136:
            hlp_AddStartMsgMarkers(a1, __src, &v60, v12);
            v50 = 1;
            v48 = v60;
LABEL_137:
            BestVoiceForLidLang = (*(*(a1 + 8) + 120))(*(a1 + 912), *(a1 + 920), 32 * v48);
            __src = 0;
            if ((BestVoiceForLidLang & 0x80000000) != 0)
            {
              return BestVoiceForLidLang;
            }

            goto LABEL_138;
          }

          v55 = 0;
          Object = objc_GetObject(*(*a1 + 48), "CHARCOUNT", &v55);
          if ((Object & 0x80000000) == 0)
          {
            (*(v55[1] + 72))(v55[2], v55[3], v64, v12);
            objc_ReleaseObject(*(*a1 + 48), "CHARCOUNT");
            BestVoiceForLidLang = (*(*(a1 + 8) + 104))(*(a1 + 896), *(a1 + 904), v64, v12);
            if ((BestVoiceForLidLang & 0x80000000) != 0)
            {
              goto LABEL_154;
            }

            goto LABEL_114;
          }

          return Object;
        }
      }
    }

    if (*(a1 + 928) == 2)
    {
      if (v15)
      {
        v23 = 0;
        while (*(__src + 8 * v23) != 36)
        {
          if (v15 <= ++v23)
          {
            goto LABEL_105;
          }
        }

        BestVoiceForLidLang = hlp_FindBestVoiceForLidLang(a1, *(a1 + 932) == 0, *(__src + 4 * v23 + 3), v66);
        if ((BestVoiceForLidLang & 0x80000000) != 0)
        {
          goto LABEL_154;
        }
      }

LABEL_105:
      if (!v66[0])
      {
        goto LABEL_111;
      }

      v21 = *(*a1 + 40);
      v22 = v66;
LABEL_107:
      v46 = paramc_ParamSetStr(v21, "pipelineswitchvoice", v22);
      if ((v46 & 0x80000000) != 0)
      {
LABEL_152:
        BestVoiceForLidLang = v46;
        goto LABEL_153;
      }

      BestVoiceForLidLang = paramc_ParamSetStr(*(*a1 + 40), "lidstate", "__NUAN_LID_voiceswitch");
      if ((BestVoiceForLidLang & 0x80000000) != 0)
      {
        goto LABEL_153;
      }

      *a5 = 3;
      v63 = 0;
      HIDWORD(v60) = 0;
LABEL_154:
      if (__src)
      {
        (*(*(a1 + 8) + 120))(*(a1 + 912), *(a1 + 920), 0);
      }

      return BestVoiceForLidLang;
    }

    if (!v15)
    {
LABEL_80:
      LODWORD(v60) = v15;
      goto LABEL_111;
    }

    v24 = 0;
    while (1)
    {
      if (*a5 != 1)
      {
        goto LABEL_80;
      }

      v25 = __src;
      v26 = __src + 32 * v24;
      if (*v26 == 36)
      {
        v27 = *(v26 + 3);
        if (!strcmp(v27, "normal"))
        {
          if (*(a1 + 1032) && (paramc_ParamGetStr(*(*a1 + 40), "lidoriginalvoice", &v57) & 0x80000000) == 0 && v57 && *v57 && ((paramc_ParamGetStr(*(*a1 + 40), "voice", &v58) & 0x80000000) != 0 || !v58 || LH_stricmp(v58, v57)))
          {
            v35 = *(*a1 + 40);
            v36 = v57;
            if (*(__src + 8 * v24 + 3) == v59)
            {
              v54 = "pipelineswitchvoice";
LABEL_157:
              BestVoiceForLidLang = paramc_ParamSetStr(v35, v54, v36);
              if ((BestVoiceForLidLang & 0x80000000) == 0)
              {
                v15 = 0;
                v12 = 0;
                *a5 = 3;
                v63 = 0;
                HIDWORD(v60) = 0;
                goto LABEL_80;
              }

LABEL_153:
              log_OutPublic(*(*a1 + 32), "FE_LID", 48000, 0);
              goto LABEL_154;
            }

            goto LABEL_77;
          }
        }

        else if (strcmp(v27, "unknown") && strncmp(v27, "vceunkn", 7uLL))
        {
          v28 = *(v26 + 3);
          v29 = v12 - v28 + v59;
          v30 = v24;
          while (v15 > ++v30)
          {
            v31 = v25[8 * v30];
            if (v31 == 36 || v31 == 7)
            {
              v29 = v25[8 * v30 + 3] - v28;
              break;
            }
          }

          if (v29)
          {
            v33 = *(a1 + 932);
            if (v27 && strstr(v27, "_vli"))
            {
              v33 = 0;
            }

            BestVoiceForLidLang = hlp_FindBestVoiceForLidLang(a1, v33 == 0, v27, v66);
            if ((BestVoiceForLidLang & 0x80000000) != 0)
            {
              goto LABEL_154;
            }

            v34 = v66[0];
            if (!(v33 | v66[0]))
            {
              if ((paramc_ParamGetStr(*(*a1 + 40), "lidoriginalvoice", &v57) & 0x80000000) == 0 && v57 && *v57)
              {
                __strcpy_chk();
              }

              v34 = v66[0];
            }

            if (v34)
            {
              v35 = *(*a1 + 40);
              if (*(__src + 8 * v24 + 3) == v59)
              {
                v46 = paramc_ParamSetStr(v35, "pipelineswitchvoice", v66);
                if ((v46 & 0x80000000) == 0)
                {
                  v35 = *(*a1 + 40);
                  v54 = "lidstate";
                  v36 = "__NUAN_LID_voiceswitch";
                  goto LABEL_157;
                }

                goto LABEL_152;
              }

              v36 = v66;
LABEL_77:
              BestVoiceForLidLang = paramc_ParamSetStr(v35, "lidstate", v36);
              if ((BestVoiceForLidLang & 0x80000000) != 0)
              {
                goto LABEL_153;
              }

              *a5 = 2;
              v37 = *(__src + 8 * v24 + 3);
              v12 = (v37 - v59);
              v63 = v37 - v59;
            }
          }
        }
      }

      if (v15 <= ++v24)
      {
        goto LABEL_80;
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
      memcpy(*a3, *a2, 32 * v13);
      *a5 = *a4;
    }
  }

  return v12;
}

uint64_t hlp_FindBestVoiceForLidLang(void *a1, int a2, char *a3, _BYTE *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = 0;
  Str = paramc_ParamGetStr(*(*a1 + 40), "lidoriginalvoice", &v14);
  if ((Str & 0x80000000) != 0)
  {
    v14 = 0;
  }

  v19 = 0;
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  v16 = 0u;
  memset(v15, 0, sizeof(v15));
  if (a3)
  {
    v9 = strstr(a3, "_vli");
    if (v9)
    {
      v10 = v9;
      VoiceParamExtract((v9 + 4), "gender", &v18[8]);
      VoiceParamExtract((v10 + 4), "age", &v18[148]);
      VoiceParamExtract((v10 + 4), "model", &v18[28]);
    }

    v11 = 4;
    if (a3[2] == 120)
    {
      v11 = 20;
    }

    if (!a2)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v11 = 4;
    if (!a2)
    {
LABEL_23:
      result = 0;
      *a4 = 0;
      return result;
    }
  }

  v12 = a1[4];
  if (!v12)
  {
    goto LABEL_23;
  }

  if (a3)
  {
    strncpy(&v15[v11], a3, 3uLL);
  }

  if (v14)
  {
    __strcpy_chk();
    v12 = a1[4];
  }

  if (((*(v12 + 136))(a1[2], a1[3], *(*a1 + 24), *(*a1 + 40), v15, a4, 1024) & 0x80000000) != 0)
  {
    result = Str;
    if ((Str & 0x80000000) != 0)
    {
      return result;
    }

    goto LABEL_25;
  }

  if (*a4)
  {
    result = 0;
  }

  else
  {
    result = Str;
  }

  if ((Str & 0x80000000) == 0 && !*a4)
  {
LABEL_25:
    BYTE8(v16) = 0;
    return (*(a1[4] + 136))(a1[2], a1[3], *(*a1 + 24), *(*a1 + 40), v15, a4, 1024);
  }

  return result;
}

uint64_t hlp_AddStartMsgMarkers(void *a1, char *__src, unsigned int *a3, int a4)
{
  v8 = *a3;
  if (v8)
  {
    memmove(__src + 32, __src, 32 * v8);
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
  v13 = *MEMORY[0x1E69E9840];
  v11 = 0;
  if (result)
  {
    result = strlen(result);
    if (result <= 0x7F)
    {
      __strcpy_chk();
      result = strhelper_SafeStrtok(v12, "{}();,", &v11);
      if (result)
      {
        v5 = result;
        while (1)
        {
          v6 = strchr(v5, 58);
          if (v6)
          {
            v7 = v6;
            v8 = strlen(a2);
            result = strncmp(v5, a2, v8);
            if (!result)
            {
              break;
            }
          }

          result = strhelper_SafeStrtok(v12, "{}();,", &v11);
          v5 = result;
          if (!result)
          {
            return result;
          }
        }

        v10 = v7[1];
        v9 = v7 + 1;
        if (v10)
        {
          return strcpy(a3, v9);
        }
      }
    }
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

uint64_t fxd_LinSpace(uint64_t a1, unsigned int a2, int a3, unsigned int a4)
{
  if (a4 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = ((((a3 - a2) << 16) >> 7) / ((a4 << 8) + 256)) >> 1;
  v5 = (a4 + 7) & 0xFFFFFFF8;
  v6 = vdupq_n_s16(v4);
  v7 = vmlaq_s16(vdupq_n_s16(a2), v6, xmmword_1C3810EB0);
  v8 = vdupq_n_s16(8 * v4);
  v9 = vdupq_n_s64(a4 - 1);
  v10 = xmmword_1C37BDD80;
  v11 = xmmword_1C37BDD90;
  v12 = xmmword_1C378AEF0;
  v13 = xmmword_1C378AF00;
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

uint64_t fxd_HighPrecisionCosLspToAi(uint64_t result, _DWORD *a2, int a3)
{
  v50 = *MEMORY[0x1E69E9840];
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
  v51 = *MEMORY[0x1E69E9840];
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

void fxd_MultiStageVectorDecodeLsp(_DWORD *a1, int a2, _DWORD *a3, uint64_t a4, unsigned int a5, __int16 *a6)
{
  v6 = a6;
  FillZeroLH_S16(a6, a5);
  if (a2 > 1)
  {
    v12 = *a3 * a5;
    v13 = 1;
    do
    {
      if (a5 >= 1)
      {
        v14 = (a4 + 2 * v12 + 2 * (a1[v13] * a5));
        v15 = a5;
        v16 = v6;
        do
        {
          v17 = *v14++;
          *v16++ += v17;
          --v15;
        }

        while (v15);
      }

      v12 += a3[v13++] * a5;
    }

    while (v13 != a2);
  }

  if (a5 >= 1)
  {
    v18 = (a4 + 2 * (*a1 * a5));
    v19 = a5;
    do
    {
      v20 = *v6;
      *v6 >>= 2;
      v21 = *v18++;
      *v6++ = v21 + (v20 >> 2);
      --v19;
    }

    while (v19);
  }
}

void fxd_MultiStageVectorDecodeLsp__32BIT(_DWORD *a1, int a2, _DWORD *a3, uint64_t a4, unsigned int a5, uint64_t a6, int *a7)
{
  v27 = *MEMORY[0x1E69E9840];
  FillZeroLH_S32(v26, a5);
  if (a2 > 1)
  {
    v14 = *a3 * a5;
    v15 = 1;
    do
    {
      if (a5 >= 1)
      {
        v16 = (a4 + 2 * v14 + 2 * (a1[v15] * a5));
        v17 = 8 - *(a6 + 4 * v15);
        v18 = v26;
        v19 = a5;
        do
        {
          v20 = *v16++;
          *v18++ += v20 << v17;
          --v19;
        }

        while (v19);
      }

      v14 += a3[v15++] * a5;
    }

    while (v15 != a2);
  }

  if (a5 >= 1)
  {
    v21 = (a4 + 2 * (*a1 * a5));
    v22 = a5;
    v23 = v26;
    do
    {
      v24 = *v21++;
      v25 = *v23 + (v24 << 10);
      *v23++ = v25;
      *a7++ = v25;
      --v22;
    }

    while (v22);
  }
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
        v4 = dword_1C3824EC0[a2 - 14];
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

uint64_t fxd_S32ShMultRndS32S32(int a1, int a2, __int16 a3)
{
  v3 = ((a2 >> 16) * a1 + a2 * (a1 >> 16) + ((a2 * a1 + 0x8000) >> 16) + (1 << (a3 - 17))) >> (a3 - 16);
  if (a3 == 16)
  {
    v3 = (a2 >> 16) * a1 + a2 * (a1 >> 16) + ((a2 * a1 + 0x8000) >> 16);
  }

  return (v3 + (((a2 >> 16) * (a1 >> 16)) << (32 - a3)));
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

uint64_t uselect_CreateBrokerString(uint64_t a1, char *a2, size_t a3, char *a4, char *a5, int a6, int a7)
{
  v33 = *MEMORY[0x1E69E9840];
  v30 = 0;
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

  v15 = strlen(__s);
  v16 = heap_Calloc(*(a1 + 8), 1, v15 + 19);
  if (!v16)
  {
    return 2229280778;
  }

  v17 = v16;
  strcpy(v16, "voiceaddonbaseuri.");
  strcat(v16, __s);
  Str = paramc_ParamGetStr(*(a1 + 40), v17, &__src);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  heap_Free(*(a1 + 8), v17);
  if (__src && *__src)
  {
    Str = strhelper_SafeCat(a2, __src, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    if (a2[strlen(a2) - 1] != 47)
    {
      Str = strhelper_SafeCat(a2, "/", 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }
    }

    v18 = 0;
    v19 = "_";
  }

  else
  {
LABEL_12:
    v18 = 1;
    v19 = "/";
  }

  Str = paramc_ParamGetStr(*(a1 + 40), "voice", &__src);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v20 = 2229280778;
  if (!__src)
  {
    return 2229282821;
  }

  v28 = v18;
  v21 = strlen(__src);
  v22 = heap_Calloc(*(a1 + 8), 1, v21 + 1);
  if (v22)
  {
    v23 = v22;
    v24 = strcpy(v22, __src);
    vf_MakeLower(v24);
    if (__s && *__s)
    {
      Str = strhelper_SafeCat(a2, "uselectvao", 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      Str = strhelper_SafeCat(a2, v19, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      Str = strhelper_SafeCat(a2, v23, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      Str = strhelper_SafeCat(a2, v19, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      Str = strhelper_SafeCat(a2, __s, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      Str = strhelper_SafeCat(a2, v19, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      Str = strhelper_SafeCat(a2, "vao", 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      heap_Free(*(a1 + 8), v23);
      v25 = 0;
    }

    else
    {
      Str = strhelper_SafeCat(a2, "uselect", 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      Str = strhelper_SafeCat(a2, v19, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      Str = strhelper_SafeCat(a2, v23, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      if (a4)
      {
        strcpy(a4, __src);
      }

      heap_Free(*(a1 + 8), v23);
      Str = strhelper_SafeCat(a2, v19, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      v25 = 1;
    }

    if (a6 != 1 || (Str = paramc_ParamGetStr(*(a1 + 40), "fecfg", &__src), (Str & 0x80000000) == 0) && (Str = strhelper_SafeCat(a2, __src, 0xFFFFFFFFFFFFFFFFLL, a3), (Str & 0x80000000) == 0) && (Str = strhelper_SafeCat(a2, v19, 0xFFFFFFFFFFFFFFFFLL, a3), (Str & 0x80000000) == 0))
    {
      if (v25)
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

        if (a5)
        {
          strcpy(a5, __src);
        }
      }

      else if (a5)
      {
        *a5 = 7299446;
      }

      if ((v28 & 1) != 0 || (Str = strhelper_SafeCat(a2, ".dat", 0xFFFFFFFFFFFFFFFFLL, a3), (Str & 0x80000000) == 0))
      {
        v20 = paramc_ParamGetStr(*(a1 + 40), "datapackagename", &__src);
        if ((v20 & 0x80000000) != 0)
        {
          return v20;
        }

        v26 = v28 ^ 1;
        if (a7)
        {
          v26 = 1;
        }

        if ((v26 & 1) == 0 && __src)
        {
          if (*__src)
          {
            Str = brokeraux_ComposeBrokerString(a1, a2, 0, 0, 0, 0, 0, v32, a3);
            if ((Str & 0x80000000) == 0)
            {
              *a2 = 0;
              return strhelper_SafeCat(a2, v32, 0xFFFFFFFFFFFFFFFFLL, a3);
            }

            return Str;
          }

          return v20;
        }

        if (!a7 || !cupreader_IsCupInTheScope(a1, &v30))
        {
          return v20;
        }

        return cupreader_PrependCupName(a2, v30, a3);
      }
    }

    return Str;
  }

  return v20;
}

uint64_t uselect_ObjcVoiceOpen(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v74 = *MEMORY[0x1E69E9840];
  __src = 0;
  memset(__dst, 0, 408);
  inited = InitRsrcFunction(a1, a2, &__src);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  memcpy(__dst, __src, 0x198uLL);
  __dst[2] = *(a5 + 32);
  v64 = 0;
  v63 = 0;
  v72[0] = 0;
  v71[0] = 0;
  v70[0] = 0;
  if ((uselect_CreateBrokerString(__dst, v72, 0x100uLL, v71, v70, 1, 0) & 0x80000000) != 0)
  {
    goto LABEL_5;
  }

  inited = uselect_CheckForDataFile(a1, a2, v72, &v63);
  if ((inited & 0x80001FFF) == 0x8000000A)
  {
    return inited;
  }

  if (!v63)
  {
LABEL_5:
    inited = uselect_CreateBrokerString(__dst, v72, 0x100uLL, v71, v70, 0, 0);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = uselect_CheckForDataFile(a1, a2, v72, &v63);
    if ((inited & 0x80001FFF) == 0x8000000A)
    {
      return inited;
    }

    if (!v63)
    {
      if ((uselect_CreateBrokerString(__dst, v72, 0x100uLL, v71, v70, 0, 1) & 0x80000000) != 0)
      {
        goto LABEL_119;
      }

      inited = uselect_CheckForDataFile(a1, a2, v72, &v63);
      if ((inited & 0x80001FFF) == 0x8000000A)
      {
        return inited;
      }

      if (!v63)
      {
LABEL_119:
        v11 = 0;
        v10 = 2229280788;
        goto LABEL_120;
      }
    }
  }

  inited = ssftriff_reader_ObjOpen(a1, a2, 0, v72, "USEL", 1031, &v64);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v10 = 2229280778;
  v11 = heap_Calloc(*(&__dst[0] + 1), 1, 28400);
  if (!v11)
  {
    goto LABEL_120;
  }

  __strcpy_chk();
  __strcpy_chk();
  __strcpy_chk();
  *&v12 = -1;
  *(&v12 + 1) = -1;
  *(v11 + 2144) = v12;
  *(v11 + 2160) = v12;
  *(v11 + 2176) = v12;
  *(v11 + 2192) = v12;
  *(v11 + 2208) = v12;
  *(v11 + 2224) = v12;
  *(v11 + 2240) = v12;
  *(v11 + 2256) = v12;
  *(v11 + 2272) = v12;
  *(v11 + 2288) = v12;
  *(v11 + 2304) = v12;
  *(v11 + 2320) = v12;
  *(v11 + 2336) = v12;
  *(v11 + 2352) = v12;
  *(v11 + 2368) = v12;
  *(v11 + 2384) = v12;
  *(v11 + 3048) = v12;
  *(v11 + 3064) = v12;
  *(v11 + 3080) = v12;
  *(v11 + 3096) = v12;
  *(v11 + 3112) = v12;
  *(v11 + 3128) = v12;
  *(v11 + 3144) = v12;
  *(v11 + 3160) = v12;
  *(v11 + 3176) = v12;
  *(v11 + 3192) = v12;
  *(v11 + 3208) = v12;
  *(v11 + 3224) = v12;
  *(v11 + 3240) = v12;
  *(v11 + 3256) = v12;
  *(v11 + 3272) = v12;
  *(v11 + 3288) = v12;
  *(v11 + 3304) = v12;
  *(v11 + 3316) = v12;
  *(v11 + 3392) = v12;
  *(v11 + 3376) = v12;
  *(v11 + 2400) = 0u;
  *(v11 + 2416) = 0u;
  *(v11 + 2432) = 0u;
  *(v11 + 2448) = 0u;
  *(v11 + 2748) = 0u;
  *(v11 + 2764) = 0u;
  *(v11 + 2780) = 0u;
  *(v11 + 2796) = 0u;
  *(v11 + 2812) = 0u;
  *(v11 + 2828) = 0u;
  *(v11 + 2844) = 0u;
  *(v11 + 2860) = 0u;
  *(v11 + 2876) = 0u;
  *(v11 + 2892) = 0u;
  *(v11 + 2908) = 0u;
  *(v11 + 2924) = 0u;
  *(v11 + 2940) = 0u;
  *(v11 + 2950) = 0u;
  *(v11 + 28168) = uselect_CartLookup;
  *(v11 + 3578) = 2;
  v13 = heap_Calloc(*(&__dst[0] + 1), 1, 280);
  *(v11 + 3552) = v13;
  if (!v13)
  {
    goto LABEL_120;
  }

  *v13 = v11;
  memset(v73, 0, sizeof(v73));
  v14 = uselect_ParseRiff(__dst, v64, v11, 0, v73, 0, 0, 0);
  if ((v14 & 0x80000000) == 0)
  {
    v54 = a4;
    v15 = (v11 + 3504);
    v16 = (v11 + 3506);
    v67 = 0;
    v17 = v11 + 3512;
    v18 = v11 + 3488;
    v66 = 0;
    v19 = v11 + 3490;
    v20 = v11 + 3496;
    v65 = 0;
    v21 = v11 + 3472;
    v22 = v11 + 3474;
    v23 = v11 + 3480;
    v24 = v11 + 3440;
    v25 = v11 + 3442;
    v26 = v11 + 3448;
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
      v57 = v27;
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
      v55 = *v28;
      if (*v28)
      {
        break;
      }

LABEL_64:
      v27 = v57 + 1;
      v16 = (v11 + 3506);
      v15 = (v11 + 3504);
      v18 = v11 + 3488;
      v17 = v11 + 3512;
      v20 = v11 + 3496;
      v19 = v11 + 3490;
      if (v57 == 4)
      {
        *(v11 + 2748) = 33620225;
        *(v11 + 2752) = 513;
        *(v11 + 2777) = 1;
        *(v11 + 2755) = 0x101010101010101;
        *(v11 + 2763) = 0x101010101010101;
        if ((*(v11 + 3220) & 0x80000000) == 0)
        {
          *(v11 + 2919) = 1;
        }

        a4 = v54;
        if ((*(v11 + 3224) & 0x80000000) == 0)
        {
          *(v11 + 2920) = 1;
        }

        if ((*(v11 + 3212) & 0x80000000) == 0)
        {
          *(v11 + 2824) = 1;
        }

        if ((*(v11 + 3168) & 0x80000000) == 0)
        {
          *(v11 + 2813) = 1;
        }

        if ((*(v11 + 3172) & 0x80000000) == 0)
        {
          *(v11 + 2814) = 1;
        }

        if ((*(v11 + 3176) & 0x80000000) == 0)
        {
          *(v11 + 2815) = 1;
        }

        if ((*(v11 + 3180) & 0x80000000) == 0)
        {
          *(v11 + 2816) = 1;
        }

        if ((*(v11 + 3184) & 0x80000000) == 0)
        {
          *(v11 + 2817) = 1;
        }

        if ((*(v11 + 3188) & 0x80000000) == 0)
        {
          *(v11 + 2818) = 1;
        }

        if ((*(v11 + 3192) & 0x80000000) == 0)
        {
          *(v11 + 2819) = 1;
          *(v11 + 2825) = 1;
        }

        if ((*(v11 + 3196) & 0x80000000) == 0)
        {
          *(v11 + 2820) = 1;
        }

        if ((*(v11 + 3200) & 0x80000000) == 0)
        {
          *(v11 + 2821) = 1;
        }

        if ((*(v11 + 3204) & 0x80000000) == 0)
        {
          *(v11 + 2822) = 1;
        }

        *(v11 + 2804) = -1;
        *(v11 + 2799) = -1;
        if (*(v11 + 2684))
        {
          *(v11 + 2958) = 257;
        }

        if (*(v11 + 2516))
        {
          *(v11 + 2803) = 1;
        }

        if ((*(v11 + 3104) & 0x80000000) == 0)
        {
          *(v11 + 2779) = 257;
          if ((*(v11 + 3208) & 0x80000000) == 0)
          {
            *(v11 + 2823) = 1;
          }
        }

        if ((*(v11 + 3120) & 0x80000000) == 0)
        {
          *(v11 + 2781) = 1;
        }

        if ((*(v11 + 3068) & 0x80000000) == 0)
        {
          *(v11 + 2773) = 257;
          v50 = *(v11 + 2736) != 0;
          *(v11 + 2960) = v50;
          *(v11 + 2961) = v50;
        }

        *(v11 + 2964) = *(v11 + 3324) >= 0;
        *(v11 + 2965) = *(v11 + 3328) >= 0;
        if ((*(v11 + 3392) & 0x80000000) == 0 || (*(v11 + 3396) & 0x80000000) == 0)
        {
          *(v11 + 2772) = 8;
        }

        if ((*(v11 + 3072) & 0x80000000) == 0)
        {
          *(v11 + 2775) = 257;
          v51 = *(v11 + 2740) != 0;
          *(v11 + 2962) = v51;
          *(v11 + 2963) = v51;
        }

        v10 = 0;
        if (*(v11 + 2560))
        {
          *(v11 + 2794) = 9;
        }

        goto LABEL_120;
      }
    }

    v58 = *v32;
    v59 = 0;
    v56 = *v31;
LABEL_32:
    v33 = uselect_AddGenericContextRule(__dst, v11, &v67);
    if ((v33 & 0x80000000) != 0 || (v60 = v67, v33 = uselect_AddGCRAction(__dst, v67, &v65), (v33 & 0x80000000) != 0))
    {
LABEL_113:
      v10 = v33;
      a4 = v54;
      goto LABEL_120;
    }

    v34 = v65;
    *v65 = v57;
    v35 = v59 * v56 + v56;
    *(v34 + 4) = *(v58 + v35 - 2);
    v36 = *(v58 + v35 - 1);
    v34[2] = v36;
    if (v57 != 4)
    {
      if (v36)
      {
        if (v36 == 1)
        {
          v37 = 0;
        }

        else
        {
          v37 = 10 * v36;
        }
      }

      else
      {
        v37 = 10;
      }

      v34[2] = v37;
    }

    v38 = 0;
    if (*(v11 + 3092) < 0)
    {
      v39 = 4;
    }

    else
    {
      v39 = 6;
    }

    v40 = v58 + v59 * v56;
    while (1)
    {
      v68 = 0u;
      v69 = 0u;
      if ((v38 & 0x7FFFFFFE) == 4)
      {
        v41 = *(v11 + 2464);
        if (*v41)
        {
          v42 = 0;
          v43 = *(*(v11 + 3432) + 8 * *(v40 + v38));
          v44 = 1;
          do
          {
            if (strchr(v43, v42 + 48))
            {
              *(&v68 + (v42 >> 3)) |= 1 << (v42 & 7);
            }

            else
            {
              v44 = 0;
            }

            ++v42;
          }

          while (v41[v42]);
          goto LABEL_59;
        }
      }

      else
      {
        v45 = *(v11 + 602);
        if (v45)
        {
          v46 = *(*(v11 + 3424) + 8 * *(v40 + v38));
          v44 = 1;
          v47 = (v11 + 603);
          do
          {
            if (strchr(v46, v45))
            {
              *(&v68 + (v45 >> 3)) |= 1 << (v45 & 7);
            }

            else
            {
              v44 = 0;
            }

            v48 = *v47++;
            v45 = v48;
          }

          while (v48);
LABEL_59:
          if (!v44)
          {
            v33 = uselect_AddGCRCondition(__dst, v60, &v66);
            if ((v33 & 0x80000000) != 0)
            {
              goto LABEL_113;
            }

            v49 = v66;
            *v66 = 0;
            *(v49 + 3) = v68;
            *(v49 + 19) = v69;
            v49[1] = 0x1D1D02020202uLL >> (8 * v38);
            v49[2] = 0x10002FF0100uLL >> (8 * v38);
          }
        }
      }

      if (++v38 == v39)
      {
        v21 = v11 + 3472;
        ++v59;
        v23 = v11 + 3480;
        v22 = v11 + 3474;
        v25 = v11 + 3442;
        v24 = v11 + 3440;
        v26 = v11 + 3448;
        if (v59 == v55)
        {
          goto LABEL_64;
        }

        goto LABEL_32;
      }
    }
  }

  v10 = v14;
  LOBYTE(v68) = 0;
  if (LOBYTE(v73[0]))
  {
    v53 = 0;
    do
    {
      __strcat_chk();
      __strcat_chk();
      ++v53;
    }

    while (*(v73 + 5 * v53));
  }

  log_OutPublic(*&__dst[2], "USELECT", 19000, "%s%s%s%s%s%x", "file", v72, "chunk", &v68, "lherror", v10);
LABEL_120:
  if (v64)
  {
    ssftriff_reader_ObjClose(v64);
    v64 = 0;
  }

  if ((v10 & 0x80000000) != 0)
  {
    if ((v10 & 0x1FFF) == 0xA)
    {
      log_OutPublic(*&__dst[2], "USELECT", 19000, 0);
    }

    uselect_VoiceClose(a1, a2, v11);
    v11 = 0;
  }

  *(a4 + 32) = v11;
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
  v8 = a7;
  v13 = a1;
  v108 = 0;
  v102 = 0;
  v114 = 0;
  v130 = *MEMORY[0x1E69E9840];
  __n = 0;
  v125 = 0;
  *__src = 0;
  v119 = 5 * a4;
  v109 = a3 + 3376;
  v110 = a3 + 3048;
  v105 = (a3 + 3024);
  v106 = (a3 + 3032);
  v107 = (a3 + 3016);
  v100 = (a3 + 3000);
  v101 = (a3 + 3040);
  v98 = (a3 + 2984);
  v99 = (a3 + 2992);
  v103 = (a3 + 2976);
  v104 = (a3 + 3008);
  __s = (a3 + 602);
  v113 = a3 + 3584 + 192 * a8;
  v111 = a3 + 408;
  v118 = a3 + 2144;
  v117 = (a3 + 152);
  v116 = a7;
  while (1)
  {
    v123 = 1;
    LODWORD(ChunkData) = ssftriff_reader_OpenChunk(a2, __src, &__n, 0);
    if ((ChunkData & 0x80000000) != 0)
    {
      goto LABEL_350;
    }

    strcpy(&a5[v119], __src);
    v15 = v13;
    if (a4 == 1)
    {
      break;
    }

    if (a4)
    {
      if (strcmp(a5 + 5, "CTXT"))
      {
        goto LABEL_40;
      }

      *&__dst = 0;
      if (*__src ^ 0x4C4C204C | v125)
      {
        if (!(*__src ^ 0x204C204C | v125))
        {
          v17 = 0;
          v21 = 0;
          goto LABEL_279;
        }

        if (!(*__src ^ 0x2052204C | v125))
        {
          v17 = 0;
          goto LABEL_155;
        }

        if (!(*__src ^ 0x5252204C | v125))
        {
          v17 = 0;
LABEL_192:
          v21 = 3;
          goto LABEL_279;
        }

        if (*__src ^ 0x4C4C2052 | v125)
        {
          if (*__src ^ 0x204C2052 | v125)
          {
            if (*__src ^ 0x20522052 | v125)
            {
              if (!(*__src ^ 0x52522052 | v125))
              {
                v17 = 1;
                goto LABEL_192;
              }

LABEL_290:
              if ((ChunkData & 0x1FFF) == 0x14)
              {
                LODWORD(ChunkData) = 0;
              }

              goto LABEL_314;
            }

            v17 = 1;
LABEL_155:
            v21 = 1;
          }

          else
          {
            v21 = 0;
            v17 = 1;
          }

LABEL_279:
          SubChunkInfo = uselect_GetSubChunkInfo(a2, a6, v8, __src, &__n, &__dst);
          if (SubChunkInfo < 0)
          {
            LODWORD(ChunkData) = SubChunkInfo;
            v13 = a1;
          }

          else
          {
            v77 = (v113 + 96 * v17 + 24 * v21);
            do
            {
              if (*__src ^ 0x4C424154 | v125)
              {
                v78 = a6;
                if (*__src ^ 0x20584449 | v125)
                {
                  if (!(*__src ^ 0x32584449 | v125))
                  {
                    v77[2] = __dst;
                  }
                }

                else
                {
                  v77[1] = __dst;
                }
              }

              else
              {
                *v77 = __dst;
                v78 = a6;
              }

              v79 = uselect_GetSubChunkInfo(a2, v78, v8, __src, &__n, &__dst);
            }

            while ((v79 & 0x80000000) == 0);
            LODWORD(ChunkData) = v79;
            v13 = a1;
          }

          goto LABEL_290;
        }

        v17 = 1;
      }

      else
      {
        v17 = 0;
      }

      v21 = 2;
      goto LABEL_279;
    }

    if (!(*__src ^ 0x464E4956 | v125))
    {
      v122 = 0;
      *v121 = 0;
      if (a6)
      {
        *v121 = a6 + ssftriff_reader_GetPosition(a2) - v8;
      }

      else
      {
        ChunkData = ssftriff_reader_GetChunkData(a2, __n, v121);
        if ((ChunkData & 0x80000000) != 0)
        {
          return ChunkData;
        }
      }

      v18 = __n;
      if (!__n)
      {
        goto LABEL_141;
      }

      v19 = 0;
      while (1)
      {
        LOBYTE(__n_4) = 0;
        LOBYTE(__dst) = 0;
        v122 = 256;
        LODWORD(ChunkData) = ssftriff_reader_ReadStringZ(a2, *v121, v18, v19, &__dst, &v122);
        if ((ChunkData & 0x80000000) == 0 && v19 < __n)
        {
          v19 += v122;
          v122 = 256;
          LODWORD(ChunkData) = ssftriff_reader_ReadStringZ(a2, *v121, __n, v19, &__n_4, &v122);
        }

        if ((ChunkData & 0x80000000) != 0)
        {
          goto LABEL_140;
        }

        v20 = v122;
        if (__dst == 0x6E6F6973726556 || !(__dst ^ 0x6F69746375646552 | *(&__dst + 1) ^ 0x6E6F69737265566ELL | v129))
        {
          __strcpy_chk();
        }

        v19 += v20;
        v13 = v15;
        log_OutText(v15[4], "USELECT", 3, 0, "Voice attribute %s=%s", &__dst, &__n_4);
        v18 = __n;
        if (v19 >= __n)
        {
          goto LABEL_141;
        }
      }
    }

    if (!(*__src ^ 0x54415453 | v125))
    {
      v122 = 0;
      *v121 = 0;
      if (a6)
      {
        *v121 = a6 + ssftriff_reader_GetPosition(a2) - v8;
      }

      else
      {
        ChunkData = ssftriff_reader_GetChunkData(a2, __n, v121);
        if ((ChunkData & 0x80000000) != 0)
        {
          return ChunkData;
        }
      }

      v36 = __n;
      if (!__n)
      {
        goto LABEL_141;
      }

      v37 = 0;
      while (1)
      {
        LOBYTE(__n_4) = 0;
        LOBYTE(__dst) = 0;
        v122 = 64;
        LODWORD(ChunkData) = ssftriff_reader_ReadStringZ(a2, *v121, v36, v37, &__dst, &v122);
        if ((ChunkData & 0x80000000) == 0 && v37 < __n)
        {
          v37 += v122;
          v122 = 64;
          LODWORD(ChunkData) = ssftriff_reader_ReadStringZ(a2, *v121, __n, v37, &__n_4, &v122);
        }

        if ((ChunkData & 0x80000000) != 0)
        {
          break;
        }

        v38 = v122;
        if (__dst == 0x637469703A353970 && WORD4(__dst) == 104)
        {
          v43 = atoi(&__n_4);
          if (v43 >= 255)
          {
            v44 = 255;
          }

          else
          {
            v44 = v43;
          }

          *(a3 + 2499) = v44 & ~(v44 >> 31);
        }

        else if (__dst == 0x64676F6C3A353970 && *(&__dst + 3) == 0x727564676F6C3ALL)
        {
          v41 = atoi(&__n_4);
          if (v41 >= 255)
          {
            v42 = 255;
          }

          else
          {
            v42 = v41;
          }

          *(a3 + 2498) = v42 & ~(v42 >> 31);
        }

        v37 += v38;
        v13 = v15;
        log_OutText(v15[4], "USELECT", 3, 0, "Statistics %s=%s", &__dst, &__n_4);
        v36 = __n;
        if (v37 >= __n)
        {
          goto LABEL_141;
        }
      }

LABEL_140:
      v13 = v15;
      goto LABEL_141;
    }

    if (!(*__src ^ 0x54414356 | v125))
    {
      if (a6)
      {
        ssftriff_reader_GetPosition(a2);
      }

      else
      {
        *&__dst = 0;
        v51 = ssftriff_reader_GetChunkData(a2, __n, &__dst);
        if ((v51 & 0x80000000) != 0)
        {
          return v51;
        }
      }

      goto LABEL_312;
    }

    if (!(*__src ^ 0x504F4256 | v125))
    {
      *&__dst = 0;
      __n_4 = 0;
      if (a6)
      {
        *&__dst = a6 + ssftriff_reader_GetPosition(a2) - v8;
      }

      else
      {
        ChunkData = ssftriff_reader_GetChunkData(a2, __n, &__dst);
        if ((ChunkData & 0x80000000) != 0)
        {
          return ChunkData;
        }
      }

      if (__n >= 0xF9)
      {
        goto LABEL_354;
      }

      memcpy((a3 + 2500), __dst, __n);
      if ((paramc_ParamGetUInt(v13[5], "uselectmaxcandspruning", &__n_4) & 0x80000000) == 0 && __n_4)
      {
        *(a3 + 2552) = __n_4;
      }

      if (__n <= 0x8F)
      {
        *(a3 + 2640) = 400000;
        goto LABEL_172;
      }

      if (__n <= 0xC3)
      {
LABEL_172:
        *(a3 + 2692) = 0;
        goto LABEL_173;
      }

      if (__n <= 0xC7)
      {
LABEL_173:
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
                              goto LABEL_186;
                            }

                            goto LABEL_185;
                          }

LABEL_184:
                          *(a3 + 2740) = 0;
LABEL_185:
                          *(a3 + 2744) = 0;
LABEL_186:
                          if (!*(a3 + 2672) && !*(a3 + 2676) && !*(a3 + 2664) && !*(a3 + 2652))
                          {
                            *(a3 + 2672) = -1;
                          }

                          goto LABEL_314;
                        }

LABEL_183:
                        *(a3 + 2736) = 0;
                        goto LABEL_184;
                      }

LABEL_182:
                      *(a3 + 2732) = 0;
                      goto LABEL_183;
                    }

LABEL_181:
                    *(a3 + 2728) = 2;
                    goto LABEL_182;
                  }

LABEL_180:
                  *(a3 + 2724) = 1;
                  goto LABEL_181;
                }

LABEL_179:
                *(a3 + 2720) = 5;
                goto LABEL_180;
              }

LABEL_178:
              *(a3 + 2716) = 2;
              goto LABEL_179;
            }

LABEL_177:
            *(a3 + 2712) = 0;
            goto LABEL_178;
          }

LABEL_176:
          *(a3 + 2708) = 5;
          goto LABEL_177;
        }

LABEL_175:
        *(a3 + 2704) = 1;
        goto LABEL_176;
      }

      *(a3 + 2700) = 0;
      goto LABEL_175;
    }

    if (!(*__src ^ 0x584D5054 | v125) || !(*__src ^ 0x4E4D5054 | v125))
    {
      *&__dst = 0;
      ChunkData = ssftriff_reader_DetachChunkData(a2, (v111 + 8 * *(a3 + 600)), &__dst);
      if ((ChunkData & 0x80000000) != 0)
      {
        return ChunkData;
      }

      ++*(a3 + 600);
      v31 = *(a3 + 2464);
      if (!v31)
      {
        goto LABEL_354;
      }

      v32 = 0;
      do
      {
        v33 = v32;
      }

      while (*(v31 + 8 * v32++));
      if (!v33 || (__n >> 2) != 2 * v33)
      {
        goto LABEL_354;
      }

      v35 = 2480;
      if (*__src ^ 0x584D5054 | v125)
      {
        v35 = 2488;
      }

      *(a3 + v35) = __dst;
      goto LABEL_314;
    }

    if (!(*__src ^ 0x46455250 | v125))
    {
      *&__dst = 0;
      if (a6)
      {
        v73 = (a6 + ssftriff_reader_GetPosition(a2) - v8);
        *&__dst = v73;
      }

      else
      {
        v51 = ssftriff_reader_GetChunkData(a2, __n, &__dst);
        if ((v51 & 0x80000000) != 0)
        {
          return v51;
        }

        v73 = __dst;
      }

      *(a3 + 2966) = *v73;
      ssftriff_reader_Seek(a2, 4u, 1);
      v81 = heap_Calloc(v13[1], 32, *(a3 + 2966) + 1);
      *(a3 + 2968) = v81;
      if (!v81)
      {
        return 2229280778;
      }

      *(v81 + 32 * *(a3 + 2966)) = 0;
      goto LABEL_312;
    }

    if (!(*__src ^ 0x46415254 | v125))
    {
      *&__dst = 0;
      if (a6)
      {
        v75 = (a6 + ssftriff_reader_GetPosition(a2) - v8);
        *&__dst = v75;
      }

      else
      {
        v51 = ssftriff_reader_GetChunkData(a2, __n, &__dst);
        if ((v51 & 0x80000000) != 0)
        {
          return v51;
        }

        v75 = __dst;
      }

      *(a3 + 3360) = *v75;
      ssftriff_reader_Seek(a2, 4u, 1);
      v82 = heap_Calloc(v13[1], 12, *(a3 + 3360));
      *(a3 + 3368) = v82;
      if (!v82)
      {
        return 2229280778;
      }

LABEL_312:
      RiffStringTable = uselect_ParseRiff(v13, a2, a3, 1u, a5, 0, 0, 0);
      goto LABEL_313;
    }

    if (!(*__src ^ 0x5A5A5546 | v125))
    {
      *&__dst = 0;
      if (a6)
      {
        v80 = (a6 + ssftriff_reader_GetPosition(a2) - v8);
        *&__dst = v80;
      }

      else
      {
        v51 = ssftriff_reader_GetChunkData(a2, __n, &__dst);
        if ((v51 & 0x80000000) != 0)
        {
          return v51;
        }

        v80 = __dst;
      }

      v89 = *v80;
      ssftriff_reader_Seek(a2, 4u, 1);
      v90 = heap_Calloc(v13[1], 24, (v89 + 2));
      *(a3 + 3416) = v90;
      if (!v90)
      {
        return 2229280778;
      }

      *(a3 + 3408) = 1;
      LODWORD(ChunkData) = uselect_ParseRiff(v13, a2, a3, 1u, a5, 0, 0, 0);
      goto LABEL_297;
    }

    if (!(*__src ^ 0x52585443 | v125))
    {
      RiffStringTable = uselect_ParseContextRules(v13, a2, a3);
      goto LABEL_313;
    }

    if (!(*__src ^ 0x52544347 | v125))
    {
      RiffStringTable = uselect_ParseGenericContextRule(v13, a2, a3, __n);
      goto LABEL_313;
    }

    if (!(*__src ^ 0x464E4547 | v125))
    {
      RiffStringTable = uselect_ParseGenericFeatureMap(v13, a2, a3, __n);
      goto LABEL_313;
    }

    if (!(*__src ^ 0x52414350 | v125))
    {
      goto LABEL_330;
    }

    if (!(*__src ^ 0x52414344 | v125))
    {
      Position = ssftriff_reader_GetPosition(a2);
      *&__dst = 0;
      v51 = ssftriff_reader_DetachChunkData(a2, (v111 + 8 * *(a3 + 600)), &__dst);
      if ((v51 & 0x80000000) != 0)
      {
        return v51;
      }

      ++*(a3 + 600);
      v93 = strlen(__s);
      v94 = heap_Calloc(v13[1], v93, 8);
      *(a3 + 28232) = v94;
      if (!v94)
      {
        return 2229280778;
      }

LABEL_335:
      LODWORD(ChunkData) = uselect_ParseRiff(v13, a2, a3, 1u, a5, __dst, Position, 0);
LABEL_141:
      v8 = v116;
      goto LABEL_314;
    }

    if (*__src ^ 0x53494850 | v125)
    {
      if (!(*__src ^ 0x49445453 | v125) || !(*__src ^ 0x53535453 | v125))
      {
LABEL_330:
        Position = ssftriff_reader_GetPosition(a2);
        *&__dst = 0;
        v51 = ssftriff_reader_DetachChunkData(a2, (v111 + 8 * *(a3 + 600)), &__dst);
        if ((v51 & 0x80000000) != 0)
        {
          return v51;
        }

        ++*(a3 + 600);
        goto LABEL_335;
      }

      if (*__src ^ 0x4B424443 | v125)
      {
        if (!(*__src ^ 0x534F4343 | v125))
        {
          goto LABEL_330;
        }

        RiffStringTable = uselect_ParseVoicePartChunks(v13, a2, a3, __n, __src, &v123);
        goto LABEL_313;
      }

      *&__dst = 0;
      ChunkData = ssftriff_reader_DetachChunkData(a2, (v111 + 8 * *(a3 + 600)), &__dst);
      if ((ChunkData & 0x80000000) != 0)
      {
        return ChunkData;
      }

      ++*(a3 + 600);
      v96 = *(a3 + 2608);
      if (!v96)
      {
        goto LABEL_348;
      }

      if (v96 != 256)
      {
        if (v96 != 128)
        {
          return 2229280772;
        }

LABEL_348:
        *(a3 + 3560) = __dst;
        goto LABEL_314;
      }

      *(a3 + 3568) = __dst;
    }

    else
    {
      *&__dst = 0;
      if (a6)
      {
        *&__dst = a6 + ssftriff_reader_GetPosition(a2) - v8;
      }

      else
      {
        ChunkData = ssftriff_reader_GetChunkData(a2, __n, &__dst);
        if ((ChunkData & 0x80000000) != 0)
        {
          return ChunkData;
        }
      }

      v95 = heap_Alloc(v13[1], __n);
      *(a3 + 28160) = v95;
      if (!v95)
      {
        return 2229280778;
      }

      memcpy(v95, __dst, __n);
    }

LABEL_314:
    if (!v123)
    {
      goto LABEL_315;
    }

LABEL_318:
    if ((ChunkData & 0x80000000) != 0)
    {
      goto LABEL_350;
    }

    v85 = ssftriff_reader_CloseChunk(a2);
    if (v85 < 0)
    {
      LODWORD(ChunkData) = v85;
LABEL_350:
      if ((ChunkData & 0x1FFF) == 0x14)
      {
        return 0;
      }

      else
      {
        return ChunkData;
      }
    }
  }

  if (!strcmp(a5, "VCAT"))
  {
    *&__dst = 0;
    if (a6)
    {
      *&__dst = a6 + ssftriff_reader_GetPosition(a2) - v8;
    }

    else
    {
      ChunkData = ssftriff_reader_GetChunkData(a2, __n, &__dst);
      if ((ChunkData & 0x80000000) != 0)
      {
        return ChunkData;
      }
    }

    if (!(*__src ^ 0x48504C41 | v125))
    {
      __n_4 = 257;
      LODWORD(ChunkData) = ssftriff_reader_ReadStringZ(a2, __dst, __n, 0, __s, &__n_4);
      if ((ChunkData & 0x80000000) == 0)
      {
        *(a3 + 2496) = 255;
        if (*(a3 + 602))
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          v25 = -1;
          do
          {
            v26 = __s[v23];
            if (v26 >= v25)
            {
              v27 = __s[v23];
            }

            else
            {
              *(a3 + 2496) = v26;
              v27 = __s[v23];
              v25 = v26;
            }

            if (v27 <= v22)
            {
              v28 = v27;
            }

            else
            {
              *(a3 + 2497) = v27;
              v28 = __s[v23];
              v22 = v27;
            }

            *(v118 + v28) = v24;
            v23 = (v24 + 1);
            v29 = strlen(__s);
            v24 = v23;
          }

          while (v29 > v23);
          v30 = v22 - v25 + 1;
          v13 = a1;
          v8 = v116;
        }

        else
        {
          v30 = 2;
        }

        *(a3 + 3576) = v30 + 1;
        *(a3 + 3577) = v30;
      }

      goto LABEL_314;
    }

    if (*__src ^ 0x43494F56 | v125)
    {
      if (*__src ^ 0x4F564F43 | v125)
      {
        if (*__src ^ 0x45464153 | v125)
        {
          if (*__src ^ 0x534F4C50 | v125)
          {
            if (*__src ^ 0x4F4E4F53 | v125)
            {
              if (*__src ^ 0x46464944 | v125)
              {
                if (*__src ^ 0x41474154 | v125)
                {
                  if (*__src ^ 0x4C534231 | v125)
                  {
                    if (*__src ^ 0x52534231 | v125)
                    {
                      if (*__src ^ 0x4C534232 | v125)
                      {
                        if (*__src ^ 0x52534232 | v125)
                        {
                          v123 = 0;
                          goto LABEL_314;
                        }

                        v86 = __dst;
                        v87 = __n;
                        v91 = 28264;
                      }

                      else
                      {
                        v86 = __dst;
                        v87 = __n;
                        v91 = 28256;
                      }
                    }

                    else
                    {
                      v86 = __dst;
                      v87 = __n;
                      v91 = 28248;
                    }
                  }

                  else
                  {
                    v86 = __dst;
                    v87 = __n;
                    v91 = 28240;
                  }

                  v88 = (a3 + v91);
                }

                else
                {
                  v86 = __dst;
                  v87 = __n;
                  v88 = (a3 + 2464);
                }

                RiffStringTable = uselect_LoadRiffStringTable(v13, a2, v86, v87, v88);
                goto LABEL_313;
              }

              __n_4 = 64;
              v46 = __dst;
              v47 = __n;
              v48 = (a3 + 2400);
            }

            else
            {
              __n_4 = 257;
              v46 = __dst;
              v47 = __n;
              v48 = (a3 + 1887);
            }
          }

          else
          {
            __n_4 = 257;
            v46 = __dst;
            v47 = __n;
            v48 = (a3 + 1373);
          }
        }

        else
        {
          __n_4 = 257;
          v46 = __dst;
          v47 = __n;
          v48 = (a3 + 1630);
        }
      }

      else
      {
        __n_4 = 257;
        v46 = __dst;
        v47 = __n;
        v48 = (a3 + 1116);
      }
    }

    else
    {
      __n_4 = 257;
      v46 = __dst;
      v47 = __n;
      v48 = (a3 + 859);
    }

    RiffStringTable = ssftriff_reader_ReadStringZ(a2, v46, v47, 0, v48, &__n_4);
LABEL_313:
    LODWORD(ChunkData) = RiffStringTable;
    goto LABEL_314;
  }

  if (!strcmp(a5, "PREF") && !(*__src ^ 0x54414546 | v125))
  {
    *&__dst = 0;
    if (a6)
    {
      v45 = (a6 + ssftriff_reader_GetPosition(a2) - v8);
    }

    else
    {
      v51 = ssftriff_reader_GetChunkData(a2, __n, &__dst);
      if ((v51 & 0x80000000) != 0)
      {
        return v51;
      }

      v45 = __dst;
    }

    v52 = *v45;
    *&__dst = v45 + 1;
    if (v52 >= 0x47)
    {
LABEL_354:
      ChunkData = 2229280772;
      log_OutPublic(v13[4], "USELECT", 19008, 0);
      return ChunkData;
    }

    *(v110 + 4 * v52) = v114;
    v53 = *(a3 + 2968) + 32 * v114;
    *v53 = v52;
    *(v53 + 8) = v45[1];
    *(v53 + 4) = *(v45 + 1);
    *(v53 + 10) = *(v45 + 8) + 1;
    *(v53 + 11) = *(v45 + 9);
    *(v53 + 12) = *(v45 + 10);
    *(v53 + 13) = *(v45 + 11);
    *&__dst = v45 + 6;
    LODWORD(ChunkData) = uselect_InitForPreselDistFunc(v53);
    v54 = *(a3 + 2968) + 32 * v114;
    *(v54 + 25) = v114;
    v55 = *v54;
    if (*v54 <= 9)
    {
      if (v55 > 4)
      {
        v56 = v104;
        if (v55 == 5)
        {
          goto LABEL_267;
        }

        v56 = v99;
        if (v55 == 7)
        {
          goto LABEL_267;
        }
      }

      else
      {
        v56 = v103;
        if (v55 == 1)
        {
          goto LABEL_267;
        }

        v56 = v98;
        if (v55 == 2)
        {
          goto LABEL_267;
        }
      }
    }

    else
    {
      if (v55 > 13)
      {
        v56 = v107;
        if (v55 != 14)
        {
          v56 = v106;
          if (v55 != 26)
          {
            v56 = v101;
            if (v55 != 27)
            {
              goto LABEL_268;
            }
          }
        }

LABEL_267:
        *v56 = v54;
        goto LABEL_268;
      }

      v56 = v105;
      if (v55 == 10)
      {
        goto LABEL_267;
      }

      v56 = v100;
      if (v55 == 11)
      {
        goto LABEL_267;
      }
    }

LABEL_268:
    v68 = v114;
LABEL_269:
    ++v68;
    goto LABEL_270;
  }

  if (!strcmp(a5, "TRAF") && !(*__src ^ 0x54414546 | v125))
  {
    *&__dst = 0;
    if (a6)
    {
      v49 = (a6 + ssftriff_reader_GetPosition(a2) - v8);
    }

    else
    {
      ChunkData = ssftriff_reader_GetChunkData(a2, __n, &__dst);
      if ((ChunkData & 0x80000000) != 0)
      {
        return ChunkData;
      }

      v49 = __dst;
    }

    v57 = *v49;
    *&__dst = v49 + 1;
    if (v57 >= 8)
    {
      goto LABEL_354;
    }

    if (v57 == 1)
    {
      v58 = 0;
    }

    else
    {
      if (v57 != 3)
      {
        if (v114 == 2)
        {
          v69 = 3;
        }

        else
        {
          v69 = v114;
        }

        *(v109 + 4 * v57) = v69;
        v70 = *(a3 + 3368) + 12 * v69;
        *v70 = v57;
        v72 = *(v49 + 1);
        v71 = v49 + 2;
        *(v70 + 8) = *(v71 - 1);
        *&__dst = v71;
        v68 = v69;
        *(v70 + 4) = v72;
        goto LABEL_269;
      }

      v58 = 2;
    }

    *(v109 + 4 * v57) = v58;
    v65 = *(a3 + 3368) + 12 * v58;
    *v65 = v57;
    v67 = *(v49 + 1);
    v66 = v49 + 2;
    *(v65 + 8) = *(v66 - 1);
    *&__dst = v66;
    *(v65 + 4) = v67;
    v68 = v114;
    if (v58 == v114)
    {
      goto LABEL_269;
    }

LABEL_270:
    v114 = v68;
    goto LABEL_314;
  }

  if (strcmp(a5, "FUZZ"))
  {
    goto LABEL_31;
  }

  if (!(*__src ^ 0x4C425446 | v125))
  {
    *&__dst = 0;
    if (a6)
    {
      v50 = (a6 + ssftriff_reader_GetPosition(a2) - v8);
      *&__dst = v50;
    }

    else
    {
      v51 = ssftriff_reader_GetChunkData(a2, __n, &__dst);
      if ((v51 & 0x80000000) != 0)
      {
        return v51;
      }

      v50 = __dst;
    }

    LODWORD(ChunkData) = -2065686524;
    v59 = __n;
    v60 = (*(a3 + 3416) + 24 * *(a3 + 3408));
    v61 = *v50;
    *v60 = v61;
    v62 = v50[1];
    v60[1] = v62;
    v63 = 2 * v61 * v62;
    if (v63 + 4 <= v59)
    {
      v64 = heap_Alloc(v15[1], v63);
      *(v60 + 1) = v64;
      if (v64)
      {
        memcpy(v64, v50 + 2, 2 * *v60 * v60[1]);
        LODWORD(ChunkData) = 0;
      }

      else
      {
        LODWORD(ChunkData) = -2065686518;
      }
    }

    ++*(a3 + 3408);
    v8 = v116;
    goto LABEL_297;
  }

  if (*__src ^ 0x41425446 | v125)
  {
LABEL_31:
    if (!strcmp(a5, "PCAR"))
    {
      *&__dst = 0;
      if (a6)
      {
        *&__dst = a6 + ssftriff_reader_GetPosition(a2) - v8;
      }

      else
      {
        ChunkData = ssftriff_reader_GetChunkData(a2, __n, &__dst);
        if ((ChunkData & 0x80000000) != 0)
        {
          return ChunkData;
        }
      }

      if (*__src ^ 0x46514143 | v125)
      {
        if (*__src ^ 0x49514143 | v125)
        {
          if (*__src ^ 0x56514143 | v125)
          {
            if (!(*__src ^ 0x4E544143 | v125))
            {
              *(a3 + 28200) = __dst;
            }
          }

          else
          {
            *(a3 + 28192) = __dst;
          }
        }

        else
        {
          *(a3 + 28184) = __dst;
        }
      }

      else
      {
        *(a3 + 28176) = __dst;
      }
    }

    else if (!strcmp(a5, "DCAR"))
    {
      *&__dst = 0;
      if (a6)
      {
        *&__dst = a6 + ssftriff_reader_GetPosition(a2) - v8;
      }

      else
      {
        ChunkData = ssftriff_reader_GetChunkData(a2, __n, &__dst);
        if ((ChunkData & 0x80000000) != 0)
        {
          return ChunkData;
        }
      }

      if (*__src ^ 0x46514143 | v125)
      {
        if (*__src ^ 0x49514143 | v125)
        {
          if (*__src ^ 0x56514143 | v125)
          {
            if (!(*__src ^ 0x4E544143 | v125))
            {
              *(*(a3 + 28232) + 8 * v102++) = __dst;
            }
          }

          else
          {
            *(a3 + 28224) = __dst;
          }
        }

        else
        {
          *(a3 + 28216) = __dst;
        }
      }

      else
      {
        *(a3 + 28208) = __dst;
      }
    }

    else
    {
      if (!strcmp(a5, "CCOS") && !(*__src ^ 0x54585443 | v125))
      {
        LODWORD(ChunkData) = uselect_ParseRiff(v13, a2, a3, 2u, a5, a6, v8, v108++);
LABEL_297:
        v13 = v15;
        goto LABEL_314;
      }

      if (strcmp(a5, "STDI") && strcmp(a5, "STSS"))
      {
LABEL_40:
        v123 = 0;
LABEL_315:
        v83 = v13;
        v84 = 0;
        LOBYTE(__dst) = 0;
        do
        {
          __strcat_chk();
          __strcat_chk();
          ++v84;
        }

        while (a4 >= v84);
        v13 = v83;
        log_OutText(v83[4], "USELECT", 3, 0, "Unknown data: %s for %s", &__dst, v117);
        goto LABEL_318;
      }

      *&__dst = 0;
      if (a6)
      {
        *&__dst = a6 + ssftriff_reader_GetPosition(a2) - v8;
      }

      else
      {
        ChunkData = ssftriff_reader_GetChunkData(a2, __n, &__dst);
        if ((ChunkData & 0x80000000) != 0)
        {
          return ChunkData;
        }
      }

      if (*__src ^ 0x49565453 | v125)
      {
        if (!(*__src ^ 0x41565453 | v125))
        {
          if (!strcmp(a5, "STDI"))
          {
            *(a3 + 3536) = __dst;
          }

          else
          {
            *(a3 + 3544) = __dst;
          }
        }
      }

      else
      {
        *(a3 + 3528) = __dst;
      }
    }

    goto LABEL_314;
  }

  *&__dst = 0;
  if (a6)
  {
    *&__dst = a6 + ssftriff_reader_GetPosition(a2) - v8;
  }

  else
  {
    ChunkData = ssftriff_reader_GetChunkData(a2, __n, &__dst);
    if ((ChunkData & 0x80000000) != 0)
    {
      return ChunkData;
    }
  }

  if (*(a3 + 3408))
  {
    v74 = heap_Calloc(v13[1], 1, __n);
    *(*(a3 + 3416) + 24 * *(a3 + 3408) - 8) = v74;
    if (v74)
    {
      memmove(v74, __dst, __n);
    }

    else
    {
      LODWORD(ChunkData) = -2065686518;
    }

    goto LABEL_297;
  }

  log_OutPublic(v13[4], "USELECT", 19008, 0);
  return 2229280772;
}

uint64_t uselect_ParseContextRules(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  do
  {
    LODWORD(result) = ssftriff_reader_OpenChunk(a2, &v13, &v15, &v16);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    if (!(v13 ^ 0x464C5552 | v14))
    {
      v10 = v16;
      v11 = v15;
      v12 = (a3 + 3424);
      goto LABEL_12;
    }

    if (!(v13 ^ 0x544C5552 | v14))
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

    if (v13 ^ 0x52575346 | v14)
    {
      if (v13 ^ 0x57455250 | v14)
      {
        if (v13 ^ 0x44575254 | v14)
        {
          if (v13 ^ 0x50575254 | v14)
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

uint64_t uselect_ParseGenericContextRule(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  ChunkData = ssftriff_reader_GetChunkData(a2, a4, &v33);
  if ((ChunkData & 0x80000000) != 0)
  {
    goto LABEL_32;
  }

  ChunkData = ssftriff_reader_Seek(a2, 4u, 1);
  if ((ChunkData & 0x80000000) != 0)
  {
    goto LABEL_32;
  }

  v8 = *v33;
  v33 += 4;
  if (!v8)
  {
    ChunkData = uselect_AddGenericContextRule(a1, a3, &v30);
    if ((ChunkData & 0x80000000) == 0)
    {
      v11 = v30;
      while (1)
      {
        ChunkData = ssftriff_reader_OpenChunk(a2, &v31, &v34, &v33);
        if ((ChunkData & 0x80000000) != 0)
        {
          goto LABEL_32;
        }

        if (!(v31 ^ 0x43524347 | v32))
        {
          ChunkData = uselect_AddGCRCondition(a1, v11, &v29);
          if ((ChunkData & 0x80000000) != 0)
          {
            goto LABEL_32;
          }

          v18 = 0;
          v19 = v33;
          v20 = *v33;
          v21 = v29;
          *v29 = v20;
          v33 = v19 + 1;
          v22 = v19[1];
          v21[1] = v22;
          v33 = v19 + 2;
          v21[2] = v19[2];
          v23 = v19 + 3;
          v33 = v19 + 3;
          do
          {
            v21[v18 + 3] = *v23;
            v23 = ++v33;
            ++v18;
          }

          while (v18 != 32);
          if (!v20)
          {
            *(a3 + 2748 + v22) = 1;
          }

          goto LABEL_30;
        }

        if (v31 ^ 0x41524347 | v32)
        {
          v9 = 19008;
          goto LABEL_5;
        }

        ChunkData = uselect_AddGCRAction(a1, v11, &v28);
        if ((ChunkData & 0x80000000) != 0)
        {
          goto LABEL_32;
        }

        v12 = v33;
        v13 = *v33;
        v14 = v28;
        *v28 = v13;
        v33 = v12 + 1;
        v15 = v12[1];
        *(v14 + 4) = v15;
        if (v13 - 7 >= 2)
        {
          v16 = *(v12 + 1);
          v17 = 4;
        }

        else
        {
          v16 = *(v12 + 1);
          v17 = 8;
        }

        v14[2] = v16;
        v33 = &v12[v17];
        v9 = 19008;
        if (v13 > 8)
        {
          goto LABEL_5;
        }

        v24 = 1 << v13;
        if ((v24 & 0x72) != 0)
        {
          break;
        }

        if ((v24 & 0xC) != 0)
        {
          v25 = *(a3 + 3376 + 4 * v15);
          if (v25 < 0)
          {
            v9 = 19025;
            goto LABEL_5;
          }

          goto LABEL_29;
        }

        if ((v24 & 0x180) == 0)
        {
          goto LABEL_5;
        }

        if (v15 != 46)
        {
          v27 = 2229280772;
          log_OutPublic(*(a1 + 32), "USELECT", 19008, 0);
          return v27;
        }

LABEL_30:
        v10 = ssftriff_reader_CloseChunk(a2);
        if ((v10 & 0x80000000) != 0)
        {
          goto LABEL_33;
        }
      }

      v25 = *(a3 + 3048 + 4 * v15);
      if (v25 < 0)
      {
        v9 = 19024;
        goto LABEL_5;
      }

LABEL_29:
      *(v14 + 4) = v25;
      goto LABEL_30;
    }

LABEL_32:
    v10 = ChunkData;
    goto LABEL_33;
  }

  v9 = 19022;
LABEL_5:
  v10 = -2065686524;
  log_OutPublic(*(a1 + 32), "USELECT", v9, 0);
LABEL_33:
  if ((v10 & 0x1FFF) == 0x14)
  {
    return 0;
  }

  else
  {
    return v10;
  }
}

uint64_t uselect_ParseGenericFeatureMap(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  *v26 = 0;
  v24 = a4;
  ChunkData = ssftriff_reader_GetChunkData(a2, a4, v26);
  if ((ChunkData & 0x80000000) == 0)
  {
    v8 = **v26;
    if (**v26)
    {
      v9 = heap_Calloc(*(a1 + 8), v8 + 1, 8);
      a3[417] = v9;
      if (v9)
      {
        v10 = heap_Calloc(*(a1 + 8), v8 + 1, 8);
        a3[418] = v10;
        if (v10)
        {
          v11 = heap_Calloc(*(a1 + 8), v8 + 1, 8);
          a3[419] = v11;
          if (v11)
          {
            v12 = 0;
            v13 = 2;
            v23 = v8;
            while (1)
            {
              __dst[0] = 0;
              v25 = 256;
              ChunkData = ssftriff_reader_ReadStringZ(a2, *v26, v24, v13, __dst, &v25);
              v14 = v25;
              *(a3[417] + 8 * v12) = uselect_strdup(a1, __dst);
              if (!*(a3[417] + 8 * v12))
              {
                break;
              }

              v15 = v12;
              v16 = v14 + v13;
              v17 = *(*v26 + v16);
              *(a3[418] + 8 * v12) = heap_Calloc(*(a1 + 8), (v17 + 1), 8);
              if (!*(a3[418] + 8 * v12))
              {
                break;
              }

              *(a3[419] + 8 * v12) = heap_Calloc(*(a1 + 8), (v17 + 1), 1);
              if (!*(a3[419] + 8 * v12))
              {
                break;
              }

              v13 = v16 + 2;
              if (v17)
              {
                v18 = 0;
                while (1)
                {
                  v19 = v13;
                  __dst[0] = 0;
                  v25 = 256;
                  ChunkData = ssftriff_reader_ReadStringZ(a2, *v26, v24, v13, __dst, &v25);
                  v20 = v25;
                  *(*(a3[418] + 8 * v15) + 8 * v18) = uselect_strdup(a1, __dst);
                  if (!*(*(a3[418] + 8 * v15) + 8 * v18))
                  {
                    return 2229280778;
                  }

                  v13 += v20;
                  if (++v18 >= v17)
                  {
                    for (i = 0; i != v17; ++i)
                    {
                      *(*(a3[419] + 8 * v15) + i) = *(*v26 + v19 + v20 + i);
                    }

                    v13 = v19 + v20 + i;
                    LODWORD(v8) = v23;
                    break;
                  }
                }
              }

              v12 = v15 + 1;
              if (v15 + 1 >= v8)
              {
                return ChunkData;
              }
            }
          }
        }
      }

      return 2229280778;
    }
  }

  return ChunkData;
}

uint64_t uselect_ParseVoicePartChunks(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *__s1, _DWORD *a6)
{
  v43 = a4;
  v11 = *(a3 + 3552);
  if (!strcmp(__s1, "CTUN"))
  {
    v42 = 0;
    ChunkData = ssftriff_reader_GetChunkData(a2, a4, &v42);
    if ((ChunkData & 0x80000000) == 0)
    {
      *(v11 + 108) = *v42;
    }
  }

  else if (!strcmp(__s1, "CNT0"))
  {
    v42 = 0;
    ChunkData = ssftriff_reader_DetachChunkData(a2, (v11 + 8 * *(v11 + 104) + 8), &v42);
    if ((ChunkData & 0x80000000) == 0)
    {
      ++*(v11 + 104);
      *(v11 + 120) = v42;
      *(v11 + 112) = a4 >> 1;
    }
  }

  else if (!strcmp(__s1, "TAB0"))
  {
    v42 = 0;
    ChunkData = ssftriff_reader_DetachChunkData(a2, (v11 + 8 * *(v11 + 104) + 8), &v42);
    if ((ChunkData & 0x80000000) == 0)
    {
      ++*(v11 + 104);
      *(v11 + 128) = v42;
    }
  }

  else
  {
    if (strcmp(__s1, "XTNU"))
    {
      if (!strcmp(__s1, "SYMB"))
      {
        v42 = 0;
        ChunkData = ssftriff_reader_DetachChunkData(a2, (v11 + 8 * *(v11 + 104) + 8), &v42);
        if ((ChunkData & 0x80000000) != 0)
        {
          return ChunkData;
        }

        v20 = 2229280772;
        ++*(v11 + 104);
        v21 = *(v11 + 108);
        if (!v21 || a4 % v21)
        {
          return v20;
        }

        *(v11 + 168) = a4 / v21;
        *(v11 + 160) = v42;
      }

      else if (!strcmp(__s1, "SYLC"))
      {
        v42 = 0;
        ChunkData = ssftriff_reader_DetachChunkData(a2, (v11 + 8 * *(v11 + 104) + 8), &v42);
        if ((ChunkData & 0x80000000) != 0)
        {
          return ChunkData;
        }

        v20 = 2229280772;
        ++*(v11 + 104);
        v22 = *(v11 + 108);
        if (!v22 || a4 % v22)
        {
          return v20;
        }

        *(v11 + 184) = a4 / v22;
        *(v11 + 176) = v42;
      }

      else
      {
        if (strcmp(__s1, "UNIT"))
        {
          if (strcmp(__s1, "PREU"))
          {
            if (strcmp(__s1, "TRI "))
            {
              ChunkData = 0;
              *a6 = 0;
              return ChunkData;
            }

            v42 = 0;
            Position = ssftriff_reader_GetPosition(a2);
            v41 = 0;
            v27 = ssftriff_reader_DetachChunkData(a2, (v11 + 8 * *(v11 + 104) + 8), &v41);
            if ((v27 & 0x80000000) != 0)
            {
              return v27;
            }

            v28 = 0;
            v38 = v11 + 256;
            v39 = v11 + 248;
            ++*(v11 + 104);
            v40 = v11 + 232;
            v29 = v11 + 204;
            v30 = v11 + 216;
            while (1)
            {
              v31 = ssftriff_reader_OpenChunk(a2, __s1, &v43, 0);
              if (!strcmp(__s1, "TRIL"))
              {
                break;
              }

              v32 = strcmp(__s1, "TRIR");
              if (v32)
              {
                v33 = 4;
              }

              else
              {
                v33 = 1;
              }

              if (!v32)
              {
                goto LABEL_56;
              }

LABEL_66:
              if ((v28 & 0x1FFF) == 0x14)
              {
                v28 = 0;
              }

              if (v28 >= 0)
              {
                v37 = v31;
              }

              else
              {
                v37 = v28;
              }

              if ((v37 & 0x80000000) == 0)
              {
                v37 = ssftriff_reader_CloseChunk(a2);
                if ((v37 & 0x80000000) == 0)
                {
                  continue;
                }
              }

              if ((v37 & 0x1FFF) == 0x14)
              {
                return 0;
              }

              else
              {
                return v37;
              }
            }

            v33 = 0;
LABEL_56:
            if (v28 < 0)
            {
              goto LABEL_66;
            }

            while (1)
            {
              while (1)
              {
                while (1)
                {
                  SubChunkInfo = uselect_GetSubChunkInfo(a2, v41, Position, __s1, &v43, &v42);
                  if (SubChunkInfo < 0)
                  {
                    v28 = SubChunkInfo;
                    goto LABEL_66;
                  }

                  if (strcmp(__s1, "HAIN"))
                  {
                    break;
                  }

                  *(v29 + 4 * v33) = v43 >> 2;
                  *(v30 + 8 * v33) = v42;
                }

                if (strcmp(__s1, "OFCT"))
                {
                  break;
                }

                v36 = v42;
                v35 = v40;
LABEL_64:
                *(v35 + 8 * v33) = v36;
              }

              if (!strcmp(__s1, "TABL"))
              {
                v35 = v38;
                *(v39 + 4 * v33) = v43 >> 2;
                v36 = v42;
                goto LABEL_64;
              }
            }
          }

          v42 = 0;
          ChunkData = ssftriff_reader_DetachChunkData(a2, (v11 + 8 * *(v11 + 104) + 8), &v42);
          if ((ChunkData & 0x80000000) != 0)
          {
            return ChunkData;
          }

          v20 = 2229280772;
          ++*(v11 + 104);
          v24 = *(v11 + 108);
          if (v24 && a4 >> 2 == v24)
          {
            *(v11 + 272) = v42;
            return ChunkData;
          }

          return v20;
        }

        v42 = 0;
        ChunkData = ssftriff_reader_DetachChunkData(a2, (v11 + 8 * *(v11 + 104) + 8), &v42);
        if ((ChunkData & 0x80000000) != 0)
        {
          return ChunkData;
        }

        v20 = 2229280772;
        ++*(v11 + 104);
        v23 = *(v11 + 108);
        if (!v23 || a4 % v23)
        {
          return v20;
        }

        *(v11 + 200) = a4 / v23;
        *(v11 + 192) = v42;
      }

      return ChunkData;
    }

    v42 = 0;
    ChunkData = ssftriff_reader_DetachChunkData(a2, (v11 + 8 * *(v11 + 104) + 8), &v42);
    if ((ChunkData & 0x80000000) == 0)
    {
      ++*(v11 + 104);
      *(v11 + 136) = v42;
      *(v11 + 144) = a4 >> 2;
      v13 = *(v11 + 108);
      if (v13)
      {
        v14 = heap_Calloc(*(a1 + 8), 1, (v13 >> 3) + 2);
        *(v11 + 152) = v14;
        if (v14)
        {
          if (*(v11 + 144))
          {
            v15 = 0;
            v16 = *(v11 + 136);
            do
            {
              v17 = *(v16 + 4 * v15);
              v18 = v17 >> 3;
              v19 = v17 & 7;
              if (v19)
              {
                ++v18;
              }

              *(*(v11 + 152) + v18) |= 1 << (v19 ^ 7);
              v16 = *(v11 + 136);
              v15 += *(v16 + 4 * (v15 + 1)) + 2;
            }

            while (v15 < *(v11 + 144));
          }
        }

        else
        {
          return 2229280778;
        }
      }

      else
      {
        return 2229280772;
      }
    }
  }

  return ChunkData;
}

uint64_t uselect_LoadRiffStringTable(uint64_t a1, uint64_t a2, _WORD *a3, int a4, uint64_t *a5)
{
  v6 = *a3;
  if (*a3)
  {
    v11 = heap_Calloc(*(a1 + 8), v6 + 1, 8);
    *a5 = v11;
    if (v11)
    {
      v12 = 0;
      v13 = a3 + 1;
      v14 = a4 - 2;
      do
      {
        v17 = 0;
        result = ssftriff_reader_ReadStringW(a2, v13, v14, 0, 0, &v17);
        if ((result & 0x80000000) != 0 && (result & 0x1FFF) != 9)
        {
          break;
        }

        *(*a5 + 8 * v12) = heap_Alloc(*(a1 + 8), v17);
        v16 = *(*a5 + 8 * v12);
        if (!v16)
        {
          return 2229280778;
        }

        result = ssftriff_reader_ReadStringW(a2, v13, v14, 0, v16, &v17);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        v13 = (v13 + v17 + 1);
        v14 -= v17 + 1;
        ++v12;
      }

      while (v12 < v6);
    }

    else
    {
      return 2229280778;
    }
  }

  else
  {
    result = 0;
    *a5 = 0;
  }

  return result;
}

uint64_t uselect_GetSubChunkInfo(uint64_t a1, uint64_t a2, int a3, const char *a4, unsigned int *a5, void *a6)
{
  result = ssftriff_reader_OpenChunk(a1, a4, a5, 0);
  if ((result & 0x80000000) != 0)
  {
    v13 = 0;
    *a4 = 0;
  }

  else
  {
    Position = ssftriff_reader_GetPosition(a1);
    result = ssftriff_reader_CloseChunk(a1);
    v13 = a2 + (Position - a3);
  }

  *a6 = v13;
  return result;
}

uint64_t uselect_LoadRiffMatrix2D_U8(uint64_t a1, unsigned __int16 *a2, unsigned int a3, unsigned __int16 *a4)
{
  v5 = 2229280772;
  v6 = *a2;
  *a4 = v6;
  v7 = a2[1];
  a4[1] = v7;
  v8 = v7 * v6;
  if (v8 + 4 <= a3)
  {
    v10 = heap_Alloc(*(a1 + 8), v8);
    *(a4 + 1) = v10;
    if (v10)
    {
      memcpy(v10, a2 + 2, a4[1] * *a4);
      return 0;
    }

    else
    {
      return 2229280778;
    }
  }

  return v5;
}

uint64_t uselect_AddGenericContextRule(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = heap_Calloc(*(a1 + 8), 1, 24);
  *a3 = v5;
  if (!v5)
  {
    return 2229280778;
  }

  *v5 = 0;
  *(*a3 + 8) = 0;
  *(*a3 + 16) = 0;
  v6 = *(a2 + 3520);
  if (v6)
  {
    do
    {
      v7 = v6;
      v6 = *(v6 + 16);
    }

    while (v6);
    v8 = (v7 + 16);
  }

  else
  {
    v8 = (a2 + 3520);
  }

  result = 0;
  *v8 = *a3;
  return result;
}

uint64_t uselect_AddGCRCondition(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = heap_Calloc(*(a1 + 8), 1, 48);
  *a3 = v5;
  if (!v5)
  {
    return 2229280778;
  }

  *v5 = -256;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0u;
  *(v5 + 19) = 0u;
  *(*a3 + 40) = 0;
  v6 = *a2;
  if (*a2)
  {
    do
    {
      v7 = v6;
      v6 = *(v6 + 40);
    }

    while (v6);
    a2 = (v7 + 40);
  }

  result = 0;
  *a2 = *a3;
  return result;
}

uint64_t uselect_AddGCRAction(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = heap_Calloc(*(a1 + 8), 1, 24);
  *a3 = v5;
  if (!v5)
  {
    return 2229280778;
  }

  *v5 = 0;
  *(v5 + 4) = -1;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  v8 = *(a2 + 8);
  v7 = (a2 + 8);
  v6 = v8;
  if (v8)
  {
    do
    {
      v9 = v6;
      v6 = *(v6 + 16);
    }

    while (v6);
    v7 = (v9 + 16);
  }

  result = 0;
  *v7 = *a3;
  return result;
}

char *uselect_strdup(uint64_t a1, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v4 = strlen(__s);
  v5 = heap_Calloc(v3, (v4 + 1), 1);
  if (!v5)
  {
    return 0;
  }

  return strcpy(v5, __s);
}

void *uselect_FreeRiffStringTable(void *result, uint64_t *a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *a2;
    if (v4)
    {
      v5 = 0;
      do
      {
        heap_Free(v3[1], v4);
        v4 = a2[++v5];
      }

      while (v4);
    }

    v6 = v3[1];

    return heap_Free(v6, a2);
  }

  return result;
}

uint64_t uselect_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2229280769;
  }

  result = 0;
  *a2 = &IUselect;
  return result;
}

uint64_t get_f0(uint64_t a1, uint64_t a2, _DWORD *a3, int *a4)
{
  v11 = 0;
  v10 = 0;
  result = uselect_splitGID(a1, a2, &v10, &v11);
  v7 = (*(v10 + 192) + v11 * *(v10 + 200));
  if (*(*v10 + 2604) == 1)
  {
    *a3 = v7[16];
    v8 = v7 + 17;
  }

  else
  {
    *a3 = v7[4];
    v8 = v7 + 5;
  }

  v9 = *v8;
  *a4 = v9;
  if (*a3)
  {
    *a3 = ScaledLogToHz[3 * *a3 - 270];
    v9 = *a4;
  }

  if (v9)
  {
    *a4 = ScaledLogToHz[3 * v9 - 270];
  }

  return result;
}

uint64_t uselect_ClassOpen(_WORD *a1, int a2, uint64_t a3)
{
  v5 = 0;
  if (!a3)
  {
    return 2229280775;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  result = InitRsrcFunction(a1, a2, &v5);
  if ((result & 0x80000000) == 0)
  {
    *a3 = v5;
    *(a3 + 8) = 34633;
  }

  return result;
}

uint64_t uselect_ObjOpen(uint64_t a1, int a2, _WORD *a3, uint64_t a4, void *a5)
{
  v29 = 0;
  v30 = 0;
  *a5 = 0;
  *(a5 + 2) = 0;
  inited = InitRsrcFunction(a3, a4, &v30);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v11 = 2229280778;
  if ((safeh_HandleCheck(a1, a2, 34633, 408) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  v12 = heap_Calloc(*(v30 + 8), 1, 952);
  if (!v12)
  {
    log_OutPublic(*(v30 + 32), "USELECT", 19000, 0);
    return v11;
  }

  v13 = v12;
  *v12 = a3;
  v12[1] = a4;
  v14 = v30;
  v12[2] = v30;
  v12[3] = a1;
  *a5 = v12;
  *(a5 + 2) = 34632;
  v15 = heap_Calloc(*(v14 + 8), 1, 3656);
  *(v13 + 776) = v15;
  if (!v15)
  {
    log_OutPublic(*(v30 + 32), "USELECT", 19000, 0);
    goto LABEL_30;
  }

  Param = uselect_ObjReopen(*a5, a5[1]);
  if ((Param & 0x80000000) != 0 || (Param = uselect_GetParam(v13, "minphrase", 1), (Param & 0x80000000) != 0) || (Param = uselect_GetParam(v13, "uselearlyemission", 1), (Param & 0x80000000) != 0) || (Param = uselect_GetParam(v13, "uselectusetriphonecache", 1), (Param & 0x80000000) != 0) || (Param = uselect_GetParam(v13, "uselectweightnoreusebias", 1), (Param & 0x80000000) != 0) || (Param = uselect_GetParam(v13, "uselectweightdurationbias", 1), (Param & 0x80000000) != 0) || (Param = uselect_GetParam(v13, "uselectweightpitchbias", 1), (Param & 0x80000000) != 0) || (Param = uselect_GetParam(v13, "uselectonlinereduction", 1), (Param & 0x80000000) != 0) || (Param = uselect_GetParam(v13, "uselectmaxcandspruning", 1), (Param & 0x80000000) != 0) || (v17 = *(v30 + 40), *&v26 = v13, *(&v26 + 1) = uselect_ParamCheckChange, *&v27 = uselect_ParamLearnChange, Param = paramc_ListenerAdd(v17, "minphrase", &v26), (Param & 0x80000000) != 0) || (v18 = *(v30 + 40), *&v26 = v13, *(&v26 + 1) = uselect_ParamCheckChange, *&v27 = uselect_ParamLearnChange, Param = paramc_ListenerAdd(v18, "uselearlyemission", &v26), (Param & 0x80000000) != 0) || (v19 = *(v30 + 40), *&v26 = v13, *(&v26 + 1) = uselect_ParamCheckChange, *&v27 = uselect_ParamLearnChange, Param = paramc_ListenerAdd(v19, "uselectusetriphonecache", &v26), (Param & 0x80000000) != 0) || (v20 = *(v30 + 40), *&v26 = v13, *(&v26 + 1) = uselect_ParamCheckChange, *&v27 = uselect_ParamLearnChange, Param = paramc_ListenerAdd(v20, "uselectweightnoreusebias", &v26), (Param & 0x80000000) != 0) || (v21 = *(v30 + 40), *&v26 = v13, *(&v26 + 1) = uselect_ParamCheckChange, *&v27 = uselect_ParamLearnChange, Param = paramc_ListenerAdd(v21, "uselectweightdurationbias", &v26), (Param & 0x80000000) != 0) || (v22 = *(v30 + 40), *&v26 = v13, *(&v26 + 1) = uselect_ParamCheckChange, *&v27 = uselect_ParamLearnChange, Param = paramc_ListenerAdd(v22, "uselectweightpitchbias", &v26), (Param & 0x80000000) != 0) || (v23 = *(v30 + 40), *&v26 = v13, *(&v26 + 1) = uselect_ParamCheckChange, *&v27 = uselect_ParamLearnChange, Param = paramc_ListenerAdd(v23, "uselectonlinereduction", &v26), (Param & 0x80000000) != 0) || (v24 = *(v30 + 40), *&v26 = v13, *(&v26 + 1) = uselect_ParamCheckChange, *&v27 = uselect_ParamLearnChange, Param = paramc_ListenerAdd(v24, "uselectmaxcandspruning", &v26), (Param & 0x80000000) != 0) || (Param = objc_GetObject(*(v30 + 48), "SYNTHSTREAM", &v29), (Param & 0x80000000) != 0))
  {
    v11 = Param;
    goto LABEL_30;
  }

  *(v13 + 88) = *(v29 + 8);
  *(&v26 + 1) = &IUselect;
  *&v26 = 1;
  v27 = *a5;
  v28 = 0;
  v11 = objc_RegisterObject(*(v30 + 48), "USELECT", &v26);
  if ((v11 & 0x80000000) != 0)
  {
LABEL_30:
    uselect_ObjClose(*a5, a5[1]);
    *a5 = 0;
    *(a5 + 2) = 0;
    return v11;
  }

  *(v13 + 32) = 1;
  return v11;
}

uint64_t uselect_ObjClose(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 34632, 952) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  if (a1)
  {
    if (*(a1 + 88))
    {
      objc_ReleaseObject(*(*(a1 + 16) + 48), "SYNTHSTREAM");
    }

    v3 = *(a1 + 816);
    if (v3 && *(a1 + 40))
    {
      v4 = *(a1 + 908);
      if (*(a1 + 908))
      {
        v5 = 0;
        v6 = 24;
        do
        {
          if (*(v3 + v6))
          {
            heap_Free(*(*(a1 + 16) + 8), *(v3 + v6));
            v3 = *(a1 + 816);
            *(v3 + v6) = 0;
            v4 = *(a1 + 908);
          }

          ++v5;
          v6 += 112;
        }

        while (v5 < 3 * v4);
      }

      heap_Free(*(*(a1 + 16) + 8), v3);
      *(a1 + 816) = 0;
    }

    v7 = *(a1 + 856);
    if (v7)
    {
      heap_Free(*(*(a1 + 16) + 8), v7);
      *(a1 + 856) = 0;
    }

    v8 = *(a1 + 864);
    if (v8)
    {
      heap_Free(*(*(a1 + 16) + 8), v8);
      *(a1 + 864) = 0;
    }

    v9 = *(a1 + 888);
    if (v9)
    {
      heap_Free(*(*(a1 + 16) + 8), v9);
      *(a1 + 888) = 0;
    }

    v10 = *(a1 + 896);
    if (v10)
    {
      heap_Free(*(*(a1 + 16) + 8), v10);
      *(a1 + 896) = 0;
    }

    v11 = *(a1 + 936);
    if (v11)
    {
      heap_Free(*(*(a1 + 16) + 8), v11);
      *(a1 + 936) = 0;
    }

    v12 = *(a1 + 944);
    if (v12)
    {
      heap_Free(*(*(a1 + 16) + 8), v12);
      *(a1 + 944) = 0;
    }

    uselect_ResetUnitSelector(a1, 0);
    v13 = *(a1 + 776);
    if (v13)
    {
      DeallocBufferUnitSelector(a1, v13);
      heap_Free(*(*(a1 + 16) + 8), *(a1 + 776));
    }

    v14 = *(*(a1 + 16) + 40);
    *&v34 = a1;
    *(&v34 + 1) = uselect_ParamCheckChange;
    v35 = uselect_ParamLearnChange;
    paramc_ListenerRemove(v14, "minphrase", &v34);
    v15 = *(*(a1 + 16) + 40);
    *&v34 = a1;
    *(&v34 + 1) = uselect_ParamCheckChange;
    v35 = uselect_ParamLearnChange;
    paramc_ListenerRemove(v15, "uselearlyemission", &v34);
    v16 = *(*(a1 + 16) + 40);
    *&v34 = a1;
    *(&v34 + 1) = uselect_ParamCheckChange;
    v35 = uselect_ParamLearnChange;
    paramc_ListenerRemove(v16, "uselectusetriphonecache", &v34);
    v17 = *(*(a1 + 16) + 40);
    *&v34 = a1;
    *(&v34 + 1) = uselect_ParamCheckChange;
    v35 = uselect_ParamLearnChange;
    paramc_ListenerRemove(v17, "uselectweightnoreusebias", &v34);
    v18 = *(*(a1 + 16) + 40);
    *&v34 = a1;
    *(&v34 + 1) = uselect_ParamCheckChange;
    v35 = uselect_ParamLearnChange;
    paramc_ListenerRemove(v18, "uselectweightdurationbias", &v34);
    v19 = *(*(a1 + 16) + 40);
    *&v34 = a1;
    *(&v34 + 1) = uselect_ParamCheckChange;
    v35 = uselect_ParamLearnChange;
    paramc_ListenerRemove(v19, "uselectweightpitchbias", &v34);
    v20 = *(*(a1 + 16) + 40);
    *&v34 = a1;
    *(&v34 + 1) = uselect_ParamCheckChange;
    v35 = uselect_ParamLearnChange;
    paramc_ListenerRemove(v20, "uselectonlinereduction", &v34);
    v21 = *(*(a1 + 16) + 40);
    *&v34 = a1;
    *(&v34 + 1) = uselect_ParamCheckChange;
    v35 = uselect_ParamLearnChange;
    paramc_ListenerRemove(v21, "uselectmaxcandspruning", &v34);
    v22 = *(*(a1 + 16) + 40);
    v23 = *(a1 + 80);
    *&v34 = a1;
    *(&v34 + 1) = uselect_ParamCheckChange;
    v35 = uselect_ParamLearnChange;
    paramc_ListenerRemove(v22, v23, &v34);
    paramc_ParamSetStr(*(*(a1 + 16) + 40), "voiceaddon", "");
    v24 = *(a1 + 80);
    if (v24)
    {
      heap_Free(*(*(a1 + 16) + 8), v24);
      *(a1 + 80) = 0;
    }

    paramc_ParamSetStr(*(*(a1 + 16) + 40), "uselectrawdataversion", "");
    paramc_ParamSetStr(*(*(a1 + 16) + 40), "uselectreductionversion", "");
    v25 = *(a1 + 40);
    if (v25)
    {
      v26 = *(a1 + 24);
      if (!v26 || (v27 = *(v26 + 48)) == 0)
      {
        v27 = *(*(a1 + 16) + 48);
      }

      objc_ReleaseObject(v27, v25 + 152);
    }

    v28 = *(a1 + 48);
    if (v28 >= 2)
    {
      v29 = v28 - 1;
      do
      {
        uselect_RemoveDataPartClose(a1, v29--);
      }

      while (v29);
    }

    v30 = *(a1 + 72);
    if (v30)
    {
      if (!*v30 || (heap_Free(*(*(a1 + 16) + 8), *v30), **(a1 + 72) = 0, (v30 = *(a1 + 72)) != 0))
      {
        heap_Free(*(*(a1 + 16) + 8), v30);
        *(a1 + 72) = 0;
      }
    }

    v31 = *(a1 + 56);
    if (v31)
    {
      heap_Free(*(*(a1 + 16) + 8), v31);
      *(a1 + 56) = 0;
    }

    v32 = *(a1 + 64);
    if (v32)
    {
      heap_Free(*(*(a1 + 16) + 8), v32);
      *(a1 + 64) = 0;
    }

    if (*(a1 + 32) == 1)
    {
      objc_UnregisterObject(*(*(a1 + 16) + 48), "USELECT");
    }

    heap_Free(*(*(a1 + 16) + 8), a1);
  }

  return 0;
}

uint64_t uselect_ObjReopen(_WORD **a1, int a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v59 = 0;
  __s1 = 0;
  __s = 0;
  __s2[0] = 0;
  if ((safeh_HandleCheck(a1, a2, 34632, 952) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  paramc_ParamSetStr(*(a1[2] + 5), "voiceaddon", "");
  BrokerString = uselect_CreateBrokerString(a1[2], __s2, 0x100uLL, 0, 0, 0, 0);
  if ((BrokerString & 0x80000000) == 0)
  {
    v4 = a1[5];
    if (v4)
    {
      v5 = BrokerString;
      if (!strcmp(v4 + 152, __s2))
      {
        goto LABEL_21;
      }
    }
  }

  v6 = uselect_CreateBrokerString(a1[2], __s2, 0x100uLL, 0, 0, 1, 0);
  if ((v6 & 0x80000000) != 0)
  {
    __s2[0] = 0;
    goto LABEL_15;
  }

  v7 = v6;
  v8 = a1[5];
  if (!v8 || strcmp(v8 + 152, __s2))
  {
    v9 = uselect_CheckForDataFile(*a1, a1[1], __s2, &v59);
    v5 = v9;
    if (!v59)
    {
      __s2[0] = 0;
    }

    if ((v9 & 0x80001FFF) == 0x8000000A)
    {
      return v5;
    }
  }

  if (!__s2[0])
  {
LABEL_15:
    v5 = uselect_CreateBrokerString(a1[2], __s2, 0x100uLL, 0, 0, 0, 0);
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    AddRefCountedObject = uselect_CheckForDataFile(*a1, a1[1], __s2, &v59);
    if (!v59)
    {
      __s2[0] = 0;
    }

    if ((AddRefCountedObject & 0x80001FFF) == 0x8000000A)
    {
      return AddRefCountedObject;
    }

    if (!__s2[0])
    {
      v5 = uselect_CreateBrokerString(a1[2], __s2, 0x100uLL, 0, 0, 0, 1);
      if ((v5 & 0x80000000) != 0)
      {
        return v5;
      }
    }

    goto LABEL_21;
  }

  v5 = v7;
LABEL_21:
  v11 = a1[5];
  if (!v11)
  {
    goto LABEL_47;
  }

  if (strcmp(v11 + 152, __s2))
  {
    DeallocUnitSelectorMemory_NRowsDependency(a1);
    v12 = a1[107];
    if (v12)
    {
      heap_Free(*(a1[2] + 1), v12);
      a1[107] = 0;
    }

    v13 = a1[111];
    if (v13)
    {
      heap_Free(*(a1[2] + 1), v13);
      a1[111] = 0;
    }

    v14 = a1[112];
    if (v14)
    {
      heap_Free(*(a1[2] + 1), v14);
      a1[112] = 0;
    }

    uselect_ResetUnitSelector(a1, 0);
    v15 = a1[3];
    if (!v15 || (v16 = *(v15 + 6)) == 0)
    {
      v16 = *(a1[2] + 6);
    }

    v5 = objc_ReleaseObject(v16, (a1[5] + 76));
    a1[5] = 0;
    *a1[97] = 0;
    v17 = *(a1 + 12);
    if (v17 >= 2)
    {
      v18 = v17 - 1;
      do
      {
        uselect_RemoveDataPartClose(a1, v18--);
      }

      while (v18);
    }

    v19 = a1[9];
    if (v19)
    {
      if (!*v19 || (heap_Free(*(a1[2] + 1), *v19), *a1[9] = 0, (v19 = a1[9]) != 0))
      {
        heap_Free(*(a1[2] + 1), v19);
        a1[9] = 0;
      }
    }

    v20 = a1[7];
    if (v20)
    {
      heap_Free(*(a1[2] + 1), v20);
      a1[7] = 0;
    }

    v21 = a1[8];
    if (v21)
    {
      heap_Free(*(a1[2] + 1), v21);
      a1[8] = 0;
    }

    *(a1 + 12) = 0;
    v22 = *(a1[2] + 5);
    v23 = a1[10];
    *&v55 = a1;
    *(&v55 + 1) = uselect_ParamCheckChange;
    v56 = uselect_ParamLearnChange;
    paramc_ListenerRemove(v22, v23, &v55);
    v24 = a1[10];
    if (v24)
    {
      heap_Free(*(a1[2] + 1), v24);
      a1[10] = 0;
    }

    if ((v5 & 0x80000000) == 0 && !a1[5])
    {
LABEL_47:
      v54 = 0;
      v25 = a1[3];
      if (v25 && (v26 = *(v25 + 6)) != 0)
      {
        v27 = a1[2];
      }

      else
      {
        v27 = a1[2];
        v26 = *(v27 + 48);
      }

      AddRefCountedObject = objc_GetAddRefCountedObject(v26, __s2, uselect_ObjcVoiceOpen, uselect_ObjcVoiceClose, v27, &v54);
      if ((AddRefCountedObject & 0x80000000) != 0)
      {
        return AddRefCountedObject;
      }

      v5 = 2229280778;
      v28 = *(v54 + 32);
      a1[5] = v28;
      *a1[97] = v28;
      *(a1 + 12) = 1;
      v29 = heap_Calloc(*(a1[2] + 1), 1, 8);
      a1[7] = v29;
      if (v29)
      {
        *v29 = *(a1[5] + 444);
        v30 = heap_Calloc(*(a1[2] + 1), *(a1 + 12), 4);
        a1[8] = v30;
        if (v30)
        {
          *v30 = 0;
          v31 = heap_Calloc(*(a1[2] + 1), *(a1 + 12), 8);
          a1[9] = v31;
          if (v31)
          {
            *a1[9] = heap_Calloc(*(a1[2] + 1), 1, 1);
            v32 = (paramc_ParamGetStr(*(a1[2] + 5), "voiceoperatingpoint", &__s) & 0x80000000) != 0 ? 0 : strlen(__s) + 1;
            if ((paramc_ParamGetStr(*(a1[2] + 5), "vopversion", &__s1) & 0x80000000) != 0 || (v33 = __s1, !strcmp(__s1, "0.0.0")))
            {
              v34 = 0;
            }

            else
            {
              v34 = strlen(v33) + 1;
            }

            v35 = strlen(a1[5]);
            v36 = heap_Calloc(*(a1[2] + 1), 1, (v32 + v34 + v35 + 14));
            a1[10] = v36;
            if (v36)
            {
              strcpy(v36, "voiceaddons.");
              v37 = a1[10];
              v38 = strlen(v37);
              v39 = a1[5];
              if (*v39)
              {
                v40 = v38;
                v41 = 0;
                v42 = 1;
                do
                {
                  *(a1[10] + v40) = __tolower(v39[v41]);
                  v41 = v42;
                  v39 = a1[5];
                  ++v40;
                }

                while (strlen(v39) > v42++);
                v37 = a1[10];
              }

              if (v32)
              {
                *&v37[strlen(v37)] = 46;
                strcat(a1[10], __s);
                v37 = a1[10];
              }

              if (v34)
              {
                *&v37[strlen(v37)] = 46;
                strcat(a1[10], __s1);
                v37 = a1[10];
              }

              AddRefCountedObject = uselect_GetParam(a1, v37, 1);
              if ((AddRefCountedObject & 0x80000000) != 0)
              {
                return AddRefCountedObject;
              }

              v44 = *(a1[2] + 5);
              v45 = a1[10];
              *&v55 = a1;
              *(&v55 + 1) = uselect_ParamCheckChange;
              v56 = uselect_ParamLearnChange;
              AddRefCountedObject = paramc_ListenerAdd(v44, v45, &v55);
              if ((AddRefCountedObject & 0x80000000) != 0)
              {
                return AddRefCountedObject;
              }

              AddRefCountedObject = uselect_GetParam(a1, "uselectmaxcandspruning", 0);
              if ((AddRefCountedObject & 0x80000000) != 0)
              {
                return AddRefCountedObject;
              }

              AddRefCountedObject = uselect_ResetUnitSelector(a1, 500);
              if ((AddRefCountedObject & 0x80000000) != 0)
              {
                return AddRefCountedObject;
              }

              v46 = heap_Calloc(*(a1[2] + 1), 1, 74);
              a1[107] = v46;
              v47 = a1[2];
              if (v46)
              {
                v48 = heap_Calloc(*(v47 + 1), 1, 160);
                a1[111] = v48;
                v47 = a1[2];
                if (v48)
                {
                  v49 = heap_Calloc(*(v47 + 1), a1[5][1483], 24);
                  a1[112] = v49;
                  if (v49)
                  {
                    v50 = a1[5];
                    v51 = *(v50 + 770);
                    if ((v51 & 0x80000000) != 0 && (v51 = *(v50 + 769), (v51 & 0x80000000) != 0))
                    {
                      v52 = 5000;
                    }

                    else
                    {
                      v52 = 5 * *(*(v50 + 371) + 32 * v51 + 4);
                    }

                    *(a1 + 226) = v52;
                    AddRefCountedObject = paramc_ParamSetStr(*(a1[2] + 5), "uselectrawdataversion", v50 + 64);
                    if ((AddRefCountedObject & 0x80000000) == 0)
                    {
                      return paramc_ParamSetStr(*(a1[2] + 5), "uselectreductionversion", a1[5] + 140);
                    }

                    return AddRefCountedObject;
                  }

                  v47 = a1[2];
                }
              }

              log_OutPublic(*(v47 + 4), "USELECT", 19000, 0, v54);
            }
          }
        }
      }

      else
      {
        *(a1 + 12) = 0;
      }
    }
  }

  return v5;
}

uint64_t uselect_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 34632, 952) & 0x80000000) == 0)
  {
    *(a1 + 736) = 0;
    *(a1 + 744) = 1;
    v7 = *(a1 + 752);
    if (!v7 || v7 != 1 && (v7 = *(*(a1 + 40) + 2616), v7 != 1))
    {
      v7 = 0;
    }

    v8 = 0;
    *(a1 + 756) = v7;
    v9 = "application/x-realspeak-feat-vector";
    v10 = (a1 + 96);
    while (1)
    {
      if (*(a1 + 736) > 0xFuLL)
      {
        goto LABEL_22;
      }

      v11 = (*(*(a1 + 88) + 64))(a3, a4, 78, v9, 0, 0, &v10[5 * *(a1 + 736) + 1]);
      if ((v11 & 0x80000000) != 0)
      {
        v13 = v11;
        if (strncmp(v9, "application/x-realspeak-cspp-", 0x1DuLL) && strcmp(v9, "application/x-realspeak-usnoreusebias;version=4.0") && strcmp(v9, "application/x-realspeak-usprosodybias;version=4.0") && strcmp(v9, "application/x-realspeak-usfrozen;version=4.0"))
        {
          log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19001, "%s%s");
LABEL_35:
          v17 = v13;
          if (!*(a1 + 736))
          {
LABEL_32:
            *(a1 + 736) = 0;
            return v13;
          }

LABEL_23:
          v18 = 0;
          do
          {
            v19 = v10[1];
            if (v19 && ((*(*(a1 + 88) + 72))(v19, v10[2]) & 0x80000000) != 0)
            {
              log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19006, "%s%s", "layer", *v10);
            }

            v20 = v10[3];
            if (v20 && ((*(*(a1 + 88) + 72))(v20, v10[4]) & 0x80000000) != 0)
            {
              log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19006, "%s%s", "layer", *v10);
            }

            ++v18;
            v10 += 5;
          }

          while (v18 < *(a1 + 736));
          v13 = v17;
          goto LABEL_32;
        }
      }

      else
      {
        v12 = *(a1 + 736);
        v10[5 * v12] = v9;
        *(a1 + 736) = v12 + 1;
      }

      v9 = uselect_ProcessStart_szINPUT_STREAMS[++v8];
      if (v8 == 4)
      {
        v14 = "application/x-realspeak-usmarkers-u16;version=4.0";
        v15 = 1u;
        while (*(a1 + 736) <= 0xFuLL)
        {
          v13 = (*(*(a1 + 88) + 64))(a3, a4, 78, v14, 0, 1, &v10[5 * *(a1 + 736) + 3]);
          if ((v13 & 0x80000000) != 0)
          {
            log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19002, "%s%s");
            goto LABEL_35;
          }

          v16 = *(a1 + 736);
          v10[5 * v16] = v14;
          *(a1 + 736) = v16 + 1;
          v14 = uselect_ProcessStart_szOUTPUT_STREAMS[v15++];
          if (v15 == 7)
          {
            return v13;
          }
        }

LABEL_22:
        v17 = 2229280777;
        goto LABEL_23;
      }
    }
  }

  return 2229280776;
}

uint64_t uselect_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  __n = 0;
  v7 = -2065686521;
  v118 = 0;
  if ((safeh_HandleCheck(a1, a2, 34632, 952) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  __src = 0;
  v116 = 0;
  *a5 = 1;
  if (*(a1 + 744) != 1)
  {
    v14 = *(a1 + 748);
    *(a1 + 746) = *(a1 + 748);
    v15 = *(a1 + 768);
    v16 = 1;
    goto LABEL_16;
  }

  v8 = (*(*(a1 + 88) + 144))(*(a1 + 104), *(a1 + 112), &__n + 4, &v118);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  if (HIDWORD(__n))
  {
    v9 = uselect_ReadDirectStart(a1, "application/x-realspeak-feat-vector", &__src, &__n + 1);
    v10 = HIDWORD(__n);
    *(a1 + 768) = (159072863 * (HIDWORD(__n) >> 5)) >> 32;
    if ((v9 & 0x80000000) == 0)
    {
      v11 = heap_Alloc(*(*(a1 + 16) + 8), v10);
      *(a1 + 760) = v11;
      if (!v11)
      {
        log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19000, 0);
        v7 = -2065686518;
        goto LABEL_146;
      }

      memcpy(v11, __src, HIDWORD(__n));
      v10 = HIDWORD(__n);
    }

    v12 = *(a1 + 736);
    if (*(a1 + 736))
    {
      v13 = (a1 + 112);
      while (strcmp(*(v13 - 2), "application/x-realspeak-feat-vector"))
      {
        v13 += 5;
        if (!--v12)
        {
          goto LABEL_12;
        }
      }

      v100 = (*(*(a1 + 88) + 96))(*(v13 - 1), *v13, v10);
      if ((v100 & 0x80000000) == 0)
      {
        v101 = *(a1 + 768);
        if (v101 >> 15)
        {
          goto LABEL_146;
        }

        v102 = *(a1 + 776);
        *(v102 + 3524) = *(*(a1 + 40) + 3578) * v101;
        v103 = uselect_ReadDirectStart(a1, "application/x-realspeak-usfrozen;version=4.0", (v102 + 3632), &__n);
        v104 = *(a1 + 776);
        if (v103 < 0)
        {
          *(v104 + 3632) = 0;
        }

        if ((uselect_ReadDirectStart(a1, "application/x-realspeak-usnoreusebias;version=4.0", (v104 + 3640), &__n) & 0x80000000) != 0)
        {
          v105 = *(a1 + 776);
          *(v105 + 3640) = 0;
        }

        else
        {
          v105 = *(a1 + 776);
          if (__n / 0x1F8 != *(v105 + 3524))
          {
            *(v105 + 3640) = 0;
            goto LABEL_146;
          }
        }

        if ((uselect_ReadDirectStart(a1, "application/x-realspeak-usprosodybias;version=4.0", (v105 + 3648), &__n) & 0x80000000) != 0)
        {
          v106 = *(a1 + 776);
          *(v106 + 3648) = 0;
        }

        else
        {
          v106 = *(a1 + 776);
          if (*(v106 + 3524) != __n >> 3)
          {
            *(v106 + 3648) = 0;
            goto LABEL_146;
          }
        }

        v107 = *(a1 + 768);
        *(v106 + 10) = v107;
        *(v106 + 3524) = *(*(a1 + 40) + 3578) * v107;
        v28 = AllocBufferUnitSelector(a1, v106);
        if ((v28 & 0x80000000) != 0)
        {
          goto LABEL_145;
        }

        v15 = *(a1 + 768);
        if (v15)
        {
          v108 = *(a1 + 40);
          v109 = (*(a1 + 760) + 2);
          v110 = *(a1 + 768);
          do
          {
            v111 = *v109;
            if (*(v108 + 2144 + v111) != 255 && !*(v108 + 2684) && !*(*(**(a1 + 56) + 120) + 2 * (2 * (v111 - *(v108 + 2496)))))
            {
              log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19009, "%s%d", "phoneme", v111);
              v7 = -2065686500;
              goto LABEL_146;
            }

            v109 += 864;
            --v110;
          }

          while (v110);
          if (v15 == 2)
          {
            v112 = *(a1 + 760);
            if (*(v112 + 2) == 35)
            {
              v16 = *(v112 + 866) != 35;
              goto LABEL_151;
            }
          }
        }

        v16 = 1;
LABEL_151:
        v14 = 0;
        *(a1 + 746) = 0;
LABEL_16:
        v17 = v15 - 1;
        *(a1 + 748) = v15 - 1;
        v18 = *(a1 + 740);
        if (v18 < 1 || (v19 = v18 + v14 + 1, v19 >= v17))
        {
LABEL_23:
          LOWORD(v20) = v15 - 1;
        }

        else
        {
          v20 = v19;
          v21 = (*(a1 + 760) + 864 * v19 + 2);
          while (1)
          {
            v22 = *v21;
            if (v22 == 35)
            {
              break;
            }

            if (*(a1 + 756) == 1)
            {
              v23 = *(a1 + 40);
              if (*(v23 + *(v23 + v22 + 2144) + 1630) == 83)
              {
                goto LABEL_116;
              }
            }

            v21 += 864;
            if (++v20 >= v17)
            {
              goto LABEL_23;
            }
          }

          v23 = *(a1 + 40);
LABEL_116:
          *(a1 + 748) = v20;
          if (!*(v23 + 2616))
          {
            *(a1 + 756) = 0;
          }
        }

        v24 = v20;
        v25 = v15 - 1;
        v26 = *(a1 + 744);
        if (v25 <= v20)
        {
          if (v26 == 1)
          {
            v26 = 5;
          }

          else
          {
            v26 = 4;
          }

          *(a1 + 744) = v26;
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        *a5 = v27;
        log_OutText(*(*(a1 + 16) + 32), "USELECT", 3, 0, "uselect phonemes %d -> %d, state %x", v14, v24, v26);
        if (!v16)
        {
          v29 = *(a1 + 40);
          if (*(v29 + 2684))
          {
            v30 = *(v29 + 2497);
            v31 = *(v29 + 2496);
            v32 = (v30 - v31 + 1);
            v33 = **(a1 + 56);
            v34 = (v30 - v31 + 2);
            v35 = v34 * (35 - v31) - v31;
            v36 = (v35 + 35);
            v37 = *(v33 + 120);
            if (*(v37 + 2 * v36))
            {
              v38 = 0;
            }

            else
            {
              v38 = v30 > v31;
            }

            if (v38)
            {
              do
              {
                v36 = v35 + v31;
                if (*(v37 + 2 * v36))
                {
                  break;
                }

                LOBYTE(v31) = v31 + 1;
              }

              while (v30 > v31);
            }

            v39 = v32 + v32 * v34;
            v40 = *(v33 + 128);
            v41 = *(v40 + 4 * v36);
            v42 = *(a1 + 776);
            v43 = *(v42 + 3528);
            v43[2] = v41;
            *v43 = v41;
            LODWORD(v40) = *(v40 + 4 * (v36 + v39));
            v43[3] = v40;
            v43[1] = v40;
          }

          else
          {
            v51 = **(a1 + 56);
            v52 = *(v29 + 2496);
            v53 = *(v51 + 128);
            v54 = *(v53 + 4 * (70 - 2 * v52));
            v42 = *(a1 + 776);
            v55 = *(v42 + 3528);
            *v55 = v54;
            v55[2] = v54;
            v56 = 71 - 2 * v52;
            LODWORD(v51) = *(*(v51 + 120) + 2 * v56) - 1;
            v55[1] = v51 + *(v53 + 4 * v56);
            v55[3] = v51 + *(v53 + 4 * v56);
          }

          v57 = *(v42 + 3536);
          *v57 = 0;
          v57[1] = 0;
LABEL_54:
          v58 = *(a1 + 748) - *(a1 + 746) + 1;
          v59 = 2 * v58;
          v60 = *(v29 + 3578);
          if (2 * v58 * v60 >= 1)
          {
            v61 = 0;
            v62 = *(*(a1 + 776) + 3536);
            do
            {
              v63 = v61 + 2 * v60 * *(a1 + 746);
              v64 = *(v62 + 2 * v63);
              if (v64 < 0x5B)
              {
                *(v62 + 2 * v63) = 0;
              }

              else
              {
                *(v62 + 2 * v63) = v64 - 90;
                v65 = v61 + 2 * *(a1 + 746) * *(v29 + 3578);
                *(v62 + 2 * v65) *= 3;
              }

              v60 = *(v29 + 3578);
              v66 = (v59 * v60);
              ++v61;
            }

            while (v61 < v66);
            if (v66 >= 1)
            {
              v67 = 0;
              v68 = 0;
              v69 = (*(*(a1 + 776) + 3536) + 4 * v60 * *(a1 + 746));
              do
              {
                v70 = *v69++;
                v68 += v70;
                if (v70)
                {
                  ++v67;
                }

                --v66;
              }

              while (v66);
              if (v68)
              {
                v71 = v67 == 0;
              }

              else
              {
                v71 = 1;
              }

              if (!v71)
              {
                v72 = 0;
                v73 = *(*(a1 + 776) + 3536);
                v74 = v68 / v67;
                do
                {
                  v75 = v72 + 2 * v60 * *(a1 + 746);
                  if (100 * *(v73 + 2 * v75) / v74 - 201 <= 0xFFFFFF68)
                  {
                    *(v73 + 2 * v75) = 0;
                    v60 = *(v29 + 3578);
                  }

                  ++v72;
                }

                while (v72 < v59 * v60);
              }
            }
          }

          smooth_f0(*(a1 + 16), (*(*(a1 + 776) + 3536) + 4 * *(a1 + 746) * v60), 2 * v58, 2u);
          v76 = *(a1 + 40);
          v77 = *(v76 + 3578);
          if (v58 * v77 >= 1)
          {
            v78 = 0;
            v79 = *(a1 + 776);
            do
            {
              v114 = 0;
              v115 = 0;
              get_f0(a1, *(v79[441] + 4 * (v78 + *(a1 + 746) * v77)), &v115, &v114);
              v79 = *(a1 + 776);
              v80 = v79[443];
              v76 = *(a1 + 40);
              *(v80 + 2 * (2 * (v78 + *(v76 + 3578) * *(a1 + 746)))) = 1000;
              v81 = *(a1 + 746);
              v82 = *(v76 + 3578);
              if (v115)
              {
                v83 = 2 * (v78 + v82 * *(a1 + 746));
                if (*(v79[442] + 2 * v83) - 256 >= 0xFFFFFF01)
                {
                  *(v80 + 2 * v83) = 1000 * ScaledLogToHz[*(v79[442] + 2 * v83)] / v115;
                  v81 = *(a1 + 746);
                  v82 = *(v76 + 3578);
                }
              }

              *(v80 + 2 * ((2 * (v78 + v82 * v81)) | 1)) = 1000;
              v77 = *(v76 + 3578);
              v84 = v58 * v77;
              if (v78 + 1 < v58 * v77 && v114 != 0)
              {
                v86 = 2 * (v78 + *(a1 + 746) * v77);
                if (*(v79[442] + 2 * (v86 + 2)) - 256 >= 0xFFFFFF01)
                {
                  *(v80 + 2 * (v86 | 1)) = 1000 * ScaledLogToHz[*(v79[442] + 2 * (v86 + 2))] / v114;
                  v77 = *(v76 + 3578);
                  v84 = v58 * v77;
                }
              }

              ++v78;
            }

            while (v78 < v84);
          }

          if (v59 * v77 >= 1)
          {
            v87 = 0;
            v88 = *(*(a1 + 776) + 3544);
            do
            {
              v89 = v87 + 2 * v77 * *(a1 + 746);
              if (*(v88 + 2 * v89) - 1301 <= 0xFFFFFDD8)
              {
                *(v88 + 2 * v89) = 1000;
                v77 = *(v76 + 3578);
              }

              ++v87;
            }

            while (v87 < v59 * v77);
          }

          LOBYTE(v115) = *(a1 + 744);
          LOBYTE(v114) = 0;
          v28 = uselect_Write(a1, "text/x-realspeak-usphonemes;charset=tts", &v115, 1);
          if ((v28 & 0x80000000) == 0)
          {
            v116 = *(*(a1 + 40) + 2497);
            if (v58 < 1)
            {
              v28 = uselect_Write(a1, "text/x-realspeak-usphonemes;charset=tts", &v114, 1);
              if ((v28 & 0x80000000) == 0)
              {
LABEL_107:
                v96 = *(*(a1 + 40) + 3578);
                v28 = uselect_Write(a1, "application/x-realspeak-usids;version=4.0", *(*(a1 + 776) + 3528) + 4 * v96 * *(a1 + 746), (4 * v58 * v96));
                if ((v28 & 0x80000000) == 0)
                {
                  v97 = *(*(a1 + 40) + 3578);
                  v7 = uselect_Write(a1, "application/x-realspeak-targf0;version=4.0", *(*(a1 + 776) + 3544) + 4 * *(a1 + 746) * v97, (4 * v58 * v97));
                  if ((v7 & 0x80000000) == 0)
                  {
                    if (v58 < 1)
                    {
LABEL_113:
                      *(*(a1 + 760) + 864 * *(a1 + 748)) = 0;
                      v99 = *(a1 + 744);
                      if (v99 == 1)
                      {
                        *(a1 + 744) = 2;
                      }

                      else if ((v99 & 4) != 0)
                      {
                        *(a1 + 744) = 1;
                        DeallocBufferUnitSelector(a1, *(a1 + 776));
                        *(a1 + 768) = 0;
                      }
                    }

                    else
                    {
                      v98 = 0;
                      while (1)
                      {
                        v7 = uselect_Write(a1, "application/x-realspeak-usplosives;version=4.0", *(a1 + 760) + 864 * (v98 + *(a1 + 746)) + 12, 1);
                        if ((v7 & 0x80000000) != 0)
                        {
                          break;
                        }

                        if (v58 == ++v98)
                        {
                          goto LABEL_113;
                        }
                      }
                    }
                  }

                  goto LABEL_146;
                }
              }
            }

            else
            {
              v90 = 0;
              while (1)
              {
                v28 = uselect_Write(a1, "application/x-realspeak-usmarkers-u16;version=4.0", *(a1 + 760) + 864 * (v90 + *(a1 + 746)), 2);
                if ((v28 & 0x80000000) != 0)
                {
                  break;
                }

                v91 = *(a1 + 760);
                v92 = v90 + *(a1 + 746);
                v93 = v91 + 864 * v92;
                if (*(v93 + 2) != 35 || (*(v93 + 4) & 0x80000000) != 0 && (*(v93 + 8) & 0x80000000) != 0)
                {
                  v94 = (v91 + 864 * v92 + 2);
                }

                else
                {
                  v94 = &v116;
                }

                v28 = uselect_Write(a1, "text/x-realspeak-usphonemes;charset=tts", v94, 1);
                if ((v28 & 0x80000000) != 0)
                {
                  break;
                }

                if (v58 == ++v90)
                {
                  v28 = uselect_Write(a1, "text/x-realspeak-usphonemes;charset=tts", &v114, 1);
                  if ((v28 & 0x80000000) == 0)
                  {
                    v95 = 0;
                    while (1)
                    {
                      v28 = uselect_Write(a1, "application/x-realspeak-usdurs;version=4.0", *(a1 + 760) + 864 * (v95 + *(a1 + 746)) + 50, 2);
                      if ((v28 & 0x80000000) != 0)
                      {
                        break;
                      }

                      if (v58 == ++v95)
                      {
                        goto LABEL_107;
                      }
                    }
                  }

                  goto LABEL_145;
                }
              }
            }
          }

          goto LABEL_145;
        }

        v28 = uselect_ResetUnitSelector(a1, *(*(a1 + 776) + 3524));
        if ((v28 & 0x80000000) == 0)
        {
          v28 = uselect_ProcessUnitSelector(a1);
          if ((v28 & 0x80000000) == 0)
          {
            v29 = *(a1 + 40);
            goto LABEL_54;
          }
        }

LABEL_145:
        v7 = v28;
LABEL_146:
        if ((v7 & 0x1FFF) == 0x80B)
        {
          return 0;
        }

        else
        {
          return v7;
        }
      }

      v7 = v100;
    }

    else
    {
LABEL_12:
      v7 = -2065686508;
    }

    log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19004, "%s%s", "layer", "application/x-realspeak-feat-vector");
    goto LABEL_146;
  }

  if (v118)
  {
    *a5 = 1;
    v44 = *(a1 + 736);
    if (*(a1 + 736))
    {
      v45 = 0;
      v46 = (a1 + 128);
      do
      {
        v47 = *(v46 - 1);
        if (v47)
        {
          v48 = (*(*(a1 + 88) + 72))(v47, *v46);
          if ((v48 & 0x80000000) != 0)
          {
            v49 = v48;
            log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19006, "%s%s", "layer", *(v46 - 4));
            v8 = v49;
          }

          *(v46 - 1) = safeh_GetNullHandle();
          *v46 = v50;
          v44 = *(a1 + 736);
        }

        ++v45;
        v46 += 5;
      }

      while (v45 < v44);
    }
  }

  else
  {
    *a5 = 0;
  }

  return v8;
}

uint64_t uselect_ProcessEnd(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 34632, 952);
  if ((v3 & 0x80000000) != 0)
  {
    return 2229280776;
  }

  v4 = v3;
  DeallocBufferUnitSelector(a1, *(a1 + 776));
  if (*(a1 + 736))
  {
    v5 = 0;
    v6 = (a1 + 128);
    do
    {
      v7 = *(v6 - 3);
      if (v7)
      {
        v8 = (*(*(a1 + 88) + 72))(v7, *(v6 - 2));
        if ((v8 & 0x80000000) != 0)
        {
          v9 = v8;
          log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19006, "%s%s", "layer", *(v6 - 4));
          v4 = v9;
        }

        *(v6 - 3) = safeh_GetNullHandle();
        *(v6 - 2) = v10;
      }

      v11 = *(v6 - 1);
      if (v11)
      {
        v12 = (*(*(a1 + 88) + 72))(v11, *v6);
        if ((v12 & 0x80000000) != 0)
        {
          v13 = v12;
          log_OutPublic(*(*(a1 + 16) + 32), "USELECT", 19006, "%s%s", "layer", *(v6 - 4));
          v4 = v13;
        }

        *(v6 - 1) = safeh_GetNullHandle();
        *v6 = v14;
      }

      ++v5;
      v6 += 5;
    }

    while (v5 < *(a1 + 736));
  }

  *(a1 + 736) = 0;
  return v4;
}

uint64_t uselect_GetAlphabetInformation(uint64_t a1, int a2, char *a3)
{
  v5 = safeh_HandleCheck(a1, a2, 34632, 952);
  if ((v5 & 0x80000000) != 0)
  {
    return 2229280776;
  }

  if (!*(a1 + 40))
  {
    return 2229280785;
  }

  v6 = v5;
  bzero(a3, 0x985uLL);
  v7 = 0;
  for (i = 2144; i != 2400; ++i)
  {
    if (*(*(a1 + 40) + i) != 255)
    {
      a3[v7] = i - 96;
      a3[v7 + 514] = *(*(a1 + 40) + *(*(a1 + 40) + i) + 1116);
      a3[v7 + 257] = *(*(a1 + 40) + *(*(a1 + 40) + i) + 859);
      a3[v7 + 771] = *(*(a1 + 40) + *(*(a1 + 40) + i) + 1373);
      a3[v7++ + 1028] = *(*(a1 + 40) + *(*(a1 + 40) + i) + 1630);
    }
  }

  __strcpy_chk();
  v9 = *(a1 + 40);
  if ((*(v9 + 3120) & 0x80000000) == 0)
  {
    strcpy(a3 + 1349, "1234");
    v9 = *(a1 + 40);
  }

  v10 = *(v9 + 2464);
  if (v10)
  {
    v11 = *v10;
    if (*v10)
    {
      v12 = 0;
      v13 = a3 + 1413;
      do
      {
        v14 = strcat(v13, v11);
        *&v13[strlen(v14)] = 32;
        v11 = *(*(*(a1 + 40) + 2464) + 8 * ++v12);
      }

      while (v11);
    }
  }

  return v6;
}

uint64_t uselect_SetUserInformation(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 34632, 952) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  if (*(a1 + 40))
  {
    return 2229280768;
  }

  return 2229280785;
}

uint64_t uselect_QueryCapability(uint64_t a1, int a2, const char *a3, _BOOL4 *a4)
{
  v7 = 2229280768;
  v8 = safeh_HandleCheck(a1, a2, 34632, 952);
  if ((v8 & 0x80000000) != 0)
  {
    return 2229280776;
  }

  v9 = *(a1 + 40);
  if (!v9)
  {
    return 2229280785;
  }

  v10 = v8;
  if (!strcmp(a3, "PRM"))
  {
    if ((*(v9 + 3168) & 0x80000000) == 0)
    {
LABEL_24:
      v15 = 1;
      goto LABEL_25;
    }

    v14 = *(v9 + 3176);
LABEL_14:
    v15 = v14 >= 0;
LABEL_25:
    *a4 = v15;
    return v10;
  }

  if (!strcmp(a3, "BND"))
  {
    if ((*(v9 + 3172) & 0x80000000) == 0 || (*(v9 + 3176) & 0x80000000) == 0 || (*(v9 + 3180) & 0x80000000) == 0 || (*(v9 + 3184) & 0x80000000) == 0 || (*(v9 + 3188) & 0x80000000) == 0 || (*(v9 + 3192) & 0x80000000) == 0 || (*(v9 + 3196) & 0x80000000) == 0 || (*(v9 + 3200) & 0x80000000) == 0 || (*(v9 + 3204) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    v14 = *(v9 + 3212);
    goto LABEL_14;
  }

  if (!strcmp(a3, "max-PRM"))
  {
    *a4 = 0;
    v11 = *(v9 + 2968);
    for (i = (v11 + 12); ; i += 32)
    {
      v13 = *(i - 3);
      if (v13 == 30)
      {
        v19 = **(a1 + 56);
        v20 = *(v19 + 108);
        if (!v20)
        {
          return 0;
        }

        v21 = 0;
        for (j = 0; j < v20; ++j)
        {
          v23 = i[12];
          v24 = v23 & (*(*(v19 + 160) + j * *(v19 + 168) + *(i - 1)) >> *i);
          if (v24 > v21 && v24 != 4)
          {
            *a4 = v23 & (*(*(v19 + 160) + j * *(v19 + 168) + *(i - 1)) >> *i);
            v20 = *(v19 + 108);
            v21 = v24;
          }

          v7 = 0;
        }

        return v7;
      }

      if (!v13)
      {
        break;
      }
    }

    for (k = (v11 + 12); ; k += 32)
    {
      v18 = *(k - 3);
      if (!v18)
      {
        break;
      }

      if (v18 == 32)
      {
        v26 = **(a1 + 56);
        v27 = *(v26 + 108);
        if (!v27)
        {
          return 0;
        }

        v28 = 0;
        for (m = 0; m < v27; ++m)
        {
          if ((k[12] & (*(*(v26 + 160) + m * *(v26 + 168) + *(k - 1)) >> *k)) >= 6u)
          {
            v30 = 1;
          }

          else
          {
            v30 = 0x20202020203uLL >> (8 * (k[12] & (*(*(v26 + 160) + m * *(v26 + 168) + *(k - 1)) >> *k)));
          }

          if ((v30 & 3u) > v28)
          {
            *a4 = v30;
            v27 = *(v26 + 108);
            v28 = v30;
          }

          v7 = 0;
        }

        return v7;
      }
    }
  }

  return v7;
}

uint64_t uselect_GetParam(uint64_t a1, char *__s1, int a3)
{
  v64 = *MEMORY[0x1E69E9840];
  if (!strcmp(__s1, "minphrase"))
  {
    Int = paramc_ParamGetInt(*(*(a1 + 16) + 40), "minphrase", (a1 + 740));
    if ((Int & 0x80000000) == 0)
    {
      return Int;
    }

    *(a1 + 740) = 10;
    if (!a3)
    {
      return 0;
    }

    v38 = *(*(a1 + 16) + 40);

    return paramc_ParamSetInt(v38, "minphrase", 10);
  }

  if (!strcmp(__s1, "uselearlyemission"))
  {
    *__s1a = 0;
    Str = paramc_ParamGetStr(*(*(a1 + 16) + 40), "uselearlyemission", __s1a);
    if ((Str & 0x80000000) != 0 || (v41 = *__s1a, v42 = **__s1a, !**__s1a))
    {
      *(a1 + 752) = -1;
      if (!a3)
      {
        return 0;
      }

      return paramc_ParamSetStr(*(*(a1 + 16) + 40), "uselearlyemission", "");
    }

    Int = Str;
    if (!strcmp(*__s1a, "yes"))
    {
LABEL_65:
      *(a1 + 752) = 1;
      return Int;
    }

    if (v42 == 48)
    {
      if (v41[1])
      {
        goto LABEL_99;
      }
    }

    else
    {
      if (v42 != 110)
      {
        if (v42 == 49 && !v41[1])
        {
          goto LABEL_65;
        }

LABEL_99:
        *(a1 + 752) = -1;
        return 2229280783;
      }

      if (v41[1] != 111 || v41[2])
      {
        goto LABEL_99;
      }
    }

    *(a1 + 752) = 0;
    return Int;
  }

  if (!strcmp(__s1, "uselectusetriphonecache"))
  {
    *__s1a = 0;
    v43 = paramc_ParamGetInt(*(*(a1 + 16) + 40), "uselectusetriphonecache", __s1a);
    if ((v43 & 0x80000000) == 0)
    {
      Int = v43;
      *(a1 + 912) = *__s1a != 0;
      return Int;
    }

    *(a1 + 912) = 1;
    if (!a3)
    {
      return 0;
    }

    return paramc_ParamSetInt(*(*(a1 + 16) + 40), "uselectusetriphonecache", 1);
  }

  if (strcmp(__s1, "uselectweightnoreusebias"))
  {
    if (!strcmp(__s1, "uselectweightdurationbias"))
    {
      v47 = (a1 + 920);
      UInt = paramc_ParamGetUInt(*(*(a1 + 16) + 40), "uselectweightdurationbias", (a1 + 920));
      if ((UInt & 0x80000000) != 0)
      {
        *v47 = 0;
        if (!a3)
        {
          return 0;
        }

        Int = paramc_ParamSetUInt(*(*(a1 + 16) + 40), "uselectweightdurationbias", 0);
        if ((Int & 0x80000000) != 0 || !*v47)
        {
          return Int;
        }
      }

      else
      {
        Int = UInt;
        v49 = *(a1 + 904) * *(a1 + 920) / 0x64u;
        *(a1 + 920) = v49;
        if (!v49)
        {
          return Int;
        }
      }

      if (*(a1 + 924) || !*(a1 + 40))
      {
        return Int;
      }

      v50 = (a1 + 924);
      v51 = a1;
      v52 = 0;
    }

    else
    {
      if (strcmp(__s1, "uselectweightpitchbias"))
      {
        if (!strcmp(__s1, "uselectonlinereduction"))
        {
          *__s1a = 0;
          *__s2 = 0;
          LOBYTE(__s) = 0;
          if ((paramc_ParamGet(*(*(a1 + 16) + 40), "uselectonlinereduction", __s1a, __s2) & 0x80000000) == 0)
          {
            Int = uselect_ApplyOnlineReduction(a1, *__s1a, *__s2);
            paramc_ParamRelease(*(*(a1 + 16) + 40));
            return Int;
          }

          if (!a3)
          {
            return 0;
          }

          return paramc_ParamSet(*(*(a1 + 16) + 40), "uselectonlinereduction", &__s, 1uLL);
        }

        else
        {
          if (strcmp(__s1, "uselectmaxcandspruning"))
          {
            v6 = *(a1 + 80);
            if (!strcmp(__s1, v6))
            {
              __s = 0;
              Int = paramc_ParamGetStr(*(*(a1 + 16) + 40), v6, &__s);
              if ((Int & 0x80000000) != 0)
              {
                if (a3)
                {
                  Int = paramc_ParamSetStr(*(*(a1 + 16) + 40), *(a1 + 80), "");
                }

                v10 = 0;
LABEL_126:
                if (v10)
                {
LABEL_127:
                  heap_Free(*(*(a1 + 16) + 8), v10);
                }

                return Int;
              }

              v8 = strlen(__s);
              v9 = heap_Calloc(*(*(a1 + 16) + 8), 1, (v8 + 1));
              if (v9)
              {
                v10 = v9;
                strcpy(v9, __s);
                paramc_ParamRelease(*(*(a1 + 16) + 40));
                if (*(a1 + 48) >= 2u)
                {
                  v11 = 0;
                  for (i = 1; i < *(a1 + 48); ++i)
                  {
                    v13 = strchr(v10, 59);
                    if (!v13)
                    {
                      goto LABEL_22;
                    }

                    v14 = v13;
                    v15 = v10;
                    do
                    {
                      *v14 = 0;
                      v16 = strcmp(v15, *(*(a1 + 72) + 8 * i));
                      *v14 = 59;
                      v15 = v14 + 1;
                      v17 = strchr(v14 + 1, 59);
                      v14 = v17;
                      if (v16)
                      {
                        v18 = v17 == 0;
                      }

                      else
                      {
                        v18 = 1;
                      }
                    }

                    while (!v18);
                    if (v16)
                    {
LABEL_22:
                      if (i >= *(a1 + 48))
                      {
                        Int = 0;
                      }

                      else
                      {
                        paramc_ParamSetStr(*(*(a1 + 16) + 40), "voiceaddon", *(*(a1 + 72) + 8 * i));
                        BrokerString = uselect_CreateBrokerString(*(a1 + 16), __s1a, 0x100uLL, 0, 0, 0, 0);
                        if ((BrokerString & 0x80000000) != 0)
                        {
                          Int = BrokerString;
                          goto LABEL_127;
                        }

                        v20 = *(*(a1 + 72) + 8 * i);
                        if (v20)
                        {
                          heap_Free(*(*(a1 + 16) + 8), v20);
                          *(*(a1 + 72) + 8 * i) = 0;
                        }

                        v21 = *(a1 + 24);
                        if (!v21 || (v22 = *(v21 + 48)) == 0)
                        {
                          v22 = *(*(a1 + 16) + 48);
                        }

                        v23 = objc_ReleaseObject(v22, __s1a);
                        Int = uselect_CreateBrokerString(*(a1 + 16), __s2, 0x100uLL, 0, 0, 0, 1);
                        if ((Int & 0x80000000) != 0)
                        {
                          goto LABEL_126;
                        }

                        if ((v23 & 0x1FFF) == 0x14 && strcmp(__s1a, __s2))
                        {
                          v24 = *(a1 + 24);
                          if (!v24 || (v25 = *(v24 + 48)) == 0)
                          {
                            v25 = *(*(a1 + 16) + 48);
                          }

                          objc_ReleaseObject(v25, __s2);
                        }

                        v26 = *(a1 + 48);
                        v27 = v11;
                        if (i + 1 < v26)
                        {
                          do
                          {
                            *(*(a1 + 72) + 8 * v27 + 8) = *(*(a1 + 72) + 8 * v27 + 16);
                            *(*(a1 + 56) + 8 * v27 + 8) = *(*(a1 + 56) + 8 * v27 + 16);
                            v28 = *(a1 + 64);
                            v29 = (*(*(*(a1 + 56) + 8 * v27) + 108) + *(v28 + 4 * v27));
                            *(v28 + 4 * v27 + 4) = v29;
                            Int = uselect_CommunicateAddonOffset(a1, *(*(a1 + 72) + 8 * v27 + 8), v29);
                            if ((Int & 0x80000000) != 0)
                            {
                              goto LABEL_126;
                            }

                            v26 = *(a1 + 48);
                            v30 = v27 + 3;
                            ++v27;
                          }

                          while (v30 < v26);
                        }

                        *(a1 + 48) = v26 - 1;
                      }
                    }

                    ++v11;
                  }
                }

                v31 = strchr(v10, 59);
                if (v31)
                {
                  v32 = v31;
                  v33 = v10;
                  do
                  {
                    *v32 = 0;
                    v34 = *(a1 + 48);
                    if (v34 <= 1)
                    {
                      v34 = 1;
                    }

                    v35 = 8 * v34;
                    v36 = 8;
                    while (v35 != v36)
                    {
                      v37 = strcmp(v33, *(*(a1 + 72) + v36));
                      v36 += 8;
                      if (!v37)
                      {
                        goto LABEL_51;
                      }
                    }

                    Int = uselect_AddDataPart(a1, v33);
                    if ((Int & 0x80000000) != 0)
                    {
                      goto LABEL_126;
                    }

LABEL_51:
                    *v32 = 59;
                    v33 = v32 + 1;
                    v32 = strchr(v32 + 1, 59);
                  }

                  while (v32);
                }

                goto LABEL_126;
              }

              return 2229280778;
            }

            return 0;
          }

          *__s1a = 0;
          DeallocUnitSelectorMemory_NRowsDependency(a1);
          if ((paramc_ParamGetInt(*(*(a1 + 16) + 40), "uselectmaxcandspruning", __s1a) & 0x80000000) == 0)
          {
            goto LABEL_101;
          }

          *__s1a = 0;
          if (!a3)
          {
            goto LABEL_115;
          }

          v44 = paramc_ParamSetInt(*(*(a1 + 16) + 40), "uselectmaxcandspruning", 0);
          if ((v44 & 0x80000000) == 0)
          {
LABEL_101:
            LOBYTE(v57) = __s1a[0];
            if (*__s1a)
            {
              if (*__s1a >= 256)
              {
                LOBYTE(v57) = -1;
              }

              v58 = *(a1 + 40);
              goto LABEL_116;
            }

LABEL_115:
            v58 = *(a1 + 40);
            v57 = *(v58 + 2552);
LABEL_116:
            *(a1 + 908) = v57;
            if (*(v58 + 2560))
            {
              v59 = v57;
              v60 = v57 + 20;
              if (v59 > 0xEB)
              {
                v60 = -1;
              }

              *(a1 + 908) = v60;
            }

            return AllocUnitSelectorMemory_NRowsDependency(a1);
          }
        }

        return v44;
      }

      v53 = (a1 + 928);
      v54 = paramc_ParamGetUInt(*(*(a1 + 16) + 40), "uselectweightpitchbias", (a1 + 928));
      if ((v54 & 0x80000000) != 0)
      {
        *v53 = 0;
        if (!a3)
        {
          return 0;
        }

        Int = paramc_ParamSetUInt(*(*(a1 + 16) + 40), "uselectweightpitchbias", 0);
        if ((Int & 0x80000000) != 0 || !*v53)
        {
          return Int;
        }
      }

      else
      {
        Int = v54;
        v55 = *(a1 + 904) * *(a1 + 928) / 0x64u;
        *(a1 + 928) = v55;
        if (!v55)
        {
          return Int;
        }
      }

      if (*(a1 + 932) || !*(a1 + 40))
      {
        return Int;
      }

      v50 = (a1 + 932);
      v51 = a1;
      v52 = 1;
    }

    uselect_GetP95Value(v51, v52, v50);
    return Int;
  }

  v45 = (a1 + 916);
  v46 = paramc_ParamGetUInt(*(*(a1 + 16) + 40), "uselectweightnoreusebias", (a1 + 916));
  if ((v46 & 0x80000000) == 0)
  {
    Int = v46;
    *v45 *= 100;
    return Int;
  }

  *v45 = 0;
  if (!a3)
  {
    return 0;
  }

  v56 = *(*(a1 + 16) + 40);

  return paramc_ParamSetUInt(v56, "uselectweightnoreusebias", 0);
}

uint64_t uselect_ParamCheckChange(int a1, char *__s1, const char *a3, _DWORD *a4)
{
  *a4 = 1;
  if (!strcmp(__s1, "minphrase"))
  {
    if (atoi(a3) < 0)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (strcmp(__s1, "uselearlyemission"))
  {
    return 0;
  }

  result = strcmp(a3, "yes");
  if (!result)
  {
    return result;
  }

  v8 = *a3;
  if (v8 != 48)
  {
    if (v8 == 110)
    {
      if (a3[1] == 111 && !a3[2])
      {
        return 0;
      }

      goto LABEL_13;
    }

    if (v8 != 49)
    {
      goto LABEL_13;
    }
  }

  if (!a3[1])
  {
    return 0;
  }

LABEL_13:
  *a4 = 0;
  return 2229280783;
}

void *uselect_GetP95Value(void *result, int a2, _BYTE *a3)
{
  if (result)
  {
    v3 = result;
    v4 = result[5];
    if (v4)
    {
      v5 = result[7];
      if (*(*v5 + 108))
      {
        if (a2)
        {
          i = *(v4 + 3008);
          if (!i)
          {
            return result;
          }
        }

        else
        {
          v12 = *(v4 + 2966);
          if (!*(v4 + 2966))
          {
            return result;
          }

          for (i = *(v4 + 2968); *i != 6; i += 32)
          {
            if (!--v12)
            {
              return result;
            }
          }
        }

        v9 = *(result + 12);
        if (v9)
        {
          LODWORD(v10) = 0;
          do
          {
            v11 = *v5++;
            v10 = (*(v11 + 108) + v10);
            --v9;
          }

          while (v9);
        }

        else
        {
          v10 = 0;
        }

        v13 = heap_Calloc(*(result[2] + 8), v10, 1);
        v14 = v3[2];
        if (v13)
        {
          v15 = v13;
          v16 = heap_Calloc(*(v14 + 8), v10, 1);
          if (v16)
          {
            v17 = *(v3 + 12);
            if (v17)
            {
              v18 = 0;
              v19 = 0;
              do
              {
                v20 = *(v3[7] + 8 * v18);
                v21 = *(v20 + 108);
                if (v21)
                {
                  for (j = 0; j < v21; ++j)
                  {
                    if (!a2 || *(*(v20 + 160) + j * *(v20 + 168) + *(i + 11)))
                    {
                      *(v15 + v19++) = *(*(v20 + 160) + j * *(v20 + 168) + *(i + 11));
                      v21 = *(v20 + 108);
                    }
                  }

                  v17 = *(v3 + 12);
                }

                ++v18;
              }

              while (v18 < v17);
            }

            else
            {
              v19 = 0;
            }

            v25 = heap_Calloc(*(v3[2] + 8), 256, 4);
            v24 = v25;
            if (v25)
            {
              if (v19)
              {
                v26 = v19;
                v27 = v15;
                do
                {
                  v28 = *v27++;
                  ++*(v25 + 4 * v28);
                  --v26;
                }

                while (v26);
              }

              v29 = 0;
              v30 = 0;
              do
              {
                if (*(v25 + 4 * v29))
                {
                  v31 = 0;
                  do
                  {
                    *(v16 + v30 + v31++) = v29;
                  }

                  while (v31 < *(v25 + 4 * v29));
                  v30 += v31;
                }

                ++v29;
              }

              while (v29 != 256);
              *a3 = *(v16 + (95 * v30) / 0x64uLL);
            }

            else
            {
              log_OutPublic(*(v3[2] + 32), "USELECT", 19000, 0);
            }
          }

          else
          {
            log_OutPublic(*(v3[2] + 32), "USELECT", 19000, 0);
            v24 = 0;
          }

          result = heap_Free(*(v3[2] + 8), v15);
          if (v24)
          {
            result = heap_Free(*(v3[2] + 8), v24);
          }

          if (v16)
          {
            v32 = *(v3[2] + 8);

            return heap_Free(v32, v16);
          }
        }

        else
        {
          v23 = *(v14 + 32);

          return log_OutPublic(v23, "USELECT", 19000, 0);
        }
      }
    }
  }

  return result;
}