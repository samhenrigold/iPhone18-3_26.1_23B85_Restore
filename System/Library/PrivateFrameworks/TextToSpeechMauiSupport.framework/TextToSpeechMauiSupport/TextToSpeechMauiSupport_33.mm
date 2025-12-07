uint64_t loc_cleanup_on_close(uint64_t *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 73449, 176);
  if ((v3 & 0x80000000) != 0)
  {
    return 2702188552;
  }

  v4 = v3;
  if (a1)
  {
    loc_deallocate_statpunc_v2_data(a1);
    puncsptn_v2_deallocate_LuaVM((a1 + 13), a1 + 20);
    OOCAllocator_Des();
    objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    heap_Free(*(*a1 + 8), a1);
  }

  return v4;
}

uint64_t fe_puncsptn_v2_ObjReopen(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 73449, 176);
  if ((result & 0x80000000) != 0)
  {
    return 2702188552;
  }

  if (a1)
  {
    v4 = 0;
    result = (*(a1[6] + 88))(a1[4], a1[5], &v4 + 4, &v4);
    if ((result & 0x80000000) == 0)
    {
      result = loc_reload_statpunc_data(a1);
      if ((result & 0x80000000) == 0)
      {
        return puncsptn_v2_reload_lua_code(a1[1], a1[2], a1[21], (a1 + 13), a1 + 20, a1 + 38);
      }
    }
  }

  return result;
}

uint64_t fe_puncsptn_v2_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 73449, 176);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2702188552;
  }
}

uint64_t fe_puncsptn_v2_Process(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v15 = 0;
  if ((safeh_HandleCheck(a1, a2, 73449, 176) & 0x80000000) != 0)
  {
    return 2702188552;
  }

  *a5 = 1;
  v9 = LingDBHasSentence(a1[3], a3, a4, &v15);
  if ((v9 & 0x80000000) == 0)
  {
    if (v15 == 1)
    {
      inited = initLDO((a1 + 13), a1 + 18);
      if ((inited & 0x80000000) != 0)
      {
LABEL_14:
        v9 = inited;
        goto LABEL_17;
      }

      v9 = importFromLingDB(*a1, a1[3], a3, a4, a1 + 18);
      if ((v9 & 0x80000000) != 0)
      {
        goto LABEL_17;
      }

      if (a1[18])
      {
        if (*(a1 + 32))
        {
          v11 = 0;
          v12 = 0;
          while (1)
          {
            inited = statpunc_v2_Process(*a1, a1[18], (a1 + 13), a1[7] + v11);
            if ((inited & 0x80000000) != 0)
            {
              break;
            }

            ++v12;
            v11 += 48;
            if (v12 >= *(a1 + 32))
            {
              goto LABEL_11;
            }
          }
        }

        else
        {
LABEL_11:
          if (*(a1 + 38) != 1 || (log_OutText(*(*a1 + 32), a1[21], 5, 0, "Lua code available: process LDO with Lua code", 0), inited = puncsptn_v2_process_ldo_with_lua(*a1, a1[21], a1[18], (a1 + 13), a1[20]), (inited & 0x80000000) == 0))
          {
            inited = exportToLingDB(*a1, a1[3], a3, a4, (a1 + 13), a1[18], 0, 0);
          }
        }

        goto LABEL_14;
      }

      log_OutText(*(*a1 + 32), a1[21], 5, 0, "Imported LDO is NULL, returning", 0);
    }

    else
    {
      log_OutText(*(*a1 + 32), a1[21], 5, 0, "LingDB has no sentence, returning", 0);
    }
  }

LABEL_17:
  v13 = a1[18];
  if (v13)
  {
    deinitLDO((a1 + 13), v13);
    a1[18] = 0;
  }

  return v9;
}

uint64_t fe_puncsptn_v2_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 73449, 176);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2702188552;
  }
}

uint64_t fe_puncsptn_v2_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2702188545;
  }

  result = 0;
  *a2 = &IFePuncsptnV2;
  return result;
}

uint64_t *loc_deallocate_statpunc_v2_data(uint64_t *result)
{
  v1 = result;
  v2 = result[7];
  if (*(result + 32))
  {
    v3 = 0;
    v4 = 8;
    do
    {
      statpunc_v2_freeIGTree(*v1, *(v2 + v4));
      v2 = v1[7];
      *(v2 + v4) = 0;
      ++v3;
      v4 += 48;
    }

    while (v3 < *(v1 + 32));
    goto LABEL_6;
  }

  if (v2)
  {
LABEL_6:
    result = heap_Free(*(*v1 + 8), v2);
    v1[7] = 0;
  }

  *(v1 + 32) = 0;
  return result;
}

uint64_t loc_extractFeatures(uint64_t a1, uint64_t a2, char *a3, char *a4, const char *a5, uint64_t a6)
{
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = cstdlib_strchr(*(a1 + 16), 124);
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      do
      {
        *v12 = 0;
        v14 = cstdlib_strstr(a3, v10);
        if (v14)
        {
          if (v14 < a4)
          {
            v13 = loc_setFeature(*(a1 + 8), a2, "collocation", a6, "left");
            if ((v13 & 0x80000000) != 0)
            {
              return v13;
            }
          }
        }

        *v12 = 124;
        v10 = v12 + 1;
        v12 = cstdlib_strchr(v12 + 1, 124);
      }

      while (v12);
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }
    }
  }

  v15 = *(a1 + 24);
  if (v15)
  {
    v16 = cstdlib_strchr(*(a1 + 24), 124);
    if (v16)
    {
      v17 = v16;
      v13 = 0;
      do
      {
        *v17 = 0;
        if (cstdlib_strstr(a3, v15) > a4)
        {
          v13 = loc_setFeature(*(a1 + 8), a2, "collocation", a6, "right");
          if ((v13 & 0x80000000) != 0)
          {
            return v13;
          }
        }

        *v17 = 124;
        v15 = v17 + 1;
        v17 = cstdlib_strchr(v17 + 1, 124);
      }

      while (v17);
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }
    }
  }

  v18 = a4;
  if (a4 > a3)
  {
    v18 = a4;
    while (*v18 != 32)
    {
      if (--v18 <= a3)
      {
        v18 = a3;
        break;
      }
    }
  }

  if (v18 > a3)
  {
    while (*v18 == 32)
    {
      if (--v18 <= a3)
      {
        v18 = a3;
        break;
      }
    }
  }

  if (cstdlib_strchr(*(a1 + 40), *v18))
  {
    v19 = "punc";
  }

  else
  {
    if (!cstdlib_strchr("0123456789", *v18))
    {
      goto LABEL_30;
    }

    v19 = "digit";
  }

  v20 = loc_setFeature(*(a1 + 8), a2, "lwordendchar", a6, v19);
  if ((v20 & 0x80000000) != 0)
  {
    return v20;
  }

LABEL_30:
    ;
  }

  do
  {
    v23 = *i++;
    v22 = v23;
  }

  while (v23 == 32);
  if (cstdlib_strchr(*(a1 + 40), v22))
  {
    v24 = "punc";
  }

  else
  {
    if (!cstdlib_strchr("0123456789", *(i - 1)))
    {
      goto LABEL_39;
    }

    v24 = "digit";
  }

  v20 = loc_setFeature(*(a1 + 8), a2, "rwordbegchar", a6, v24);
  if ((v20 & 0x80000000) != 0)
  {
    return v20;
  }

LABEL_39:
  if (a4 <= a3)
  {
    goto LABEL_45;
  }

  if (cstdlib_strchr(*(a1 + 40), *(a4 - 1)))
  {
    v25 = "punc";
  }

  else
  {
    if (!cstdlib_strchr("0123456789", *(a4 - 1)))
    {
      goto LABEL_45;
    }

    v25 = "digit";
  }

  v20 = loc_setFeature(*(a1 + 8), a2, "lchar", a6, v25);
  if ((v20 & 0x80000000) != 0)
  {
    return v20;
  }

LABEL_45:
  if (cstdlib_strchr(*(a1 + 40), a4[1]))
  {
    v26 = "punc";
  }

  else
  {
    if (!cstdlib_strchr("0123456789", a4[1]))
    {
      goto LABEL_50;
    }

    v26 = "digit";
  }

  v20 = loc_setFeature(*(a1 + 8), a2, "rchar", a6, v26);
  if ((v20 & 0x80000000) != 0)
  {
    return v20;
  }

LABEL_50:
  v27 = *(a1 + 40);
  if (a4 == a3)
  {
LABEL_63:
    v35 = a4 + 1;
    v34 = "isolated";
    do
    {
      v36 = *v35;
      if (!*v35)
      {
        goto LABEL_70;
      }

      ++v35;
    }

    while (cstdlib_strchr(v27, v36));
    if (*(v35 - 1))
    {
      if (cstdlib_strcmp(a5, a1))
      {
        goto LABEL_71;
      }

      v34 = "start";
    }

    else
    {
      v34 = "isolated";
    }

LABEL_70:
    v20 = loc_setFeature(*(a1 + 8), a2, "sentpos", a6, v34);
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

    return v20;
  }

  v28 = a4;
  do
  {
    v29 = *--v28;
    v30 = cstdlib_strchr(v27, v29);
  }

  while (v28 > a3 && v30);
  if (v28 == a3 && cstdlib_strchr(v27, *v28))
  {
    v27 = *(a1 + 40);
    goto LABEL_63;
  }

  v31 = *(a1 + 40);
  v32 = a4 + 1;
  do
  {
    v33 = *v32;
    if (!*v32)
    {
      goto LABEL_59;
    }

    ++v32;
  }

  while (cstdlib_strchr(v31, v33));
  if (!*(v32 - 1))
  {
LABEL_59:
    if (cstdlib_strcmp(a5, (a1 + 4)))
    {
      goto LABEL_71;
    }

    v34 = "end";
    goto LABEL_70;
  }

LABEL_71:
  v37 = loc_bstartword(*(a1 + 40), a3, a4);
  v38 = *(a1 + 40);
  if (!v37)
  {
    v49 = a4 + 1;
    do
    {
      v50 = *v49;
      if (!*v49)
      {
        goto LABEL_99;
      }

      ++v49;
    }

    while (cstdlib_strchr(v38, v50));
    if ((*(v49 - 1) & 0xDF) == 0)
    {
LABEL_99:
      if (!cstdlib_strcmp(a5, (a1 + 4)))
      {
        v46 = "pos";
        v47 = "end";
LABEL_91:
        v48 = *(a1 + 8);
        goto LABEL_92;
      }
    }

    return 0;
  }

  v39 = a4 + 1;
  do
  {
    v40 = *v39;
    if (!*v39)
    {
      goto LABEL_90;
    }

    ++v39;
  }

  while (cstdlib_strchr(v38, v40));
  if ((*(v39 - 1) & 0xDF) == 0)
  {
LABEL_90:
    v46 = "pos";
    v47 = "isolated";
    goto LABEL_91;
  }

  if (cstdlib_strcmp(a5, a1))
  {
    return 0;
  }

  v13 = loc_setFeature(*(a1 + 8), a2, "pos", a6, "start");
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v41 = cstdlib_strstr(a4 + 1, (a1 + 4));
  if (!v41)
  {
    return v13;
  }

  v42 = v41;
  if (loc_bstartword(*(a1 + 40), a3, v41) || !loc_bendword(*(a1 + 40), v42))
  {
    return v13;
  }

  if (v42 <= a4)
  {
    v43 = 0;
  }

  else
  {
    v43 = 0;
    do
    {
      if (*a4 == 32)
      {
        ++v43;
        do
        {
          v44 = *++a4;
        }

        while (v44 == 32);
      }

      ++a4;
    }

    while (a4 < v42);
  }

  if (*(a1 + 32) > v43)
  {
    v46 = "dist2end";
    v47 = "short";
    goto LABEL_91;
  }

  v48 = *(a1 + 8);
  v46 = "dist2end";
  if (*(a1 + 34) <= v43)
  {
    v47 = "long";
  }

  else
  {
    v47 = "medium";
  }

LABEL_92:

  return loc_setFeature(v48, a2, v46, a6, v47);
}

uint64_t loc_insertMarker(uint64_t a1, uint64_t a2, unsigned int a3, char *a4)
{
  v45 = 0;
  v44 = 0;
  v42 = 0;
  __s = 0;
  v5 = *(a1 + 32);
  v7 = *(v5 + 24);
  v6 = *(v5 + 32);
  if (v7 >= v6)
  {
    v13 = 0;
    v10 = 0;
    v9 = 0;
LABEL_16:
    if (v7 >= v6)
    {
LABEL_28:
      if (v9)
      {
        HIDWORD(v45) = LDOLabel_GetAbsoluteFrom(v9);
        v33 = *(v9 + 96);
        v32 = *(v9 + 100);
        v34 = LDO_AddLabelOnSubstring(a1, "MARKER", "MARKER_NLU", &v45 + 1, &v45 + 1, &v42);
        v25 = LH_ERROR_to_VERROR(v34);
        if ((v25 & 0x80000000) == 0)
        {
          v35 = LDOLabel_SetReferenceFrom(v42, v33);
          v25 = LH_ERROR_to_VERROR(v35);
          if ((v25 & 0x80000000) == 0)
          {
            v36 = LDOLabel_SetReferenceTo(v42, v32);
            v25 = LH_ERROR_to_VERROR(v36);
            if ((v25 & 0x80000000) == 0)
            {
              v37 = LDOObject_SetStringAttribute(v42, "STRARGS", a4);
              v25 = LH_ERROR_to_VERROR(v37);
              if ((v25 & 0x80000000) == 0)
              {
                LDOObject_SetU32Attribute(v42, "_MTYPE", 51);
                return LH_ERROR_to_VERROR(v38);
              }
            }
          }
        }

        return v25;
      }
    }

    else
    {
      v19 = 0;
      v20 = 0;
      while (1)
      {
        v21 = *v7;
        U32Attribute = LDOObject_GetU32Attribute(*v7, "_MTYPE", &v44, &v45);
        v13 = LH_ERROR_to_VERROR(U32Attribute);
        if ((v13 & 0x80000000) != 0)
        {
          break;
        }

        if (v44 == 1)
        {
          v23 = v45;
          HIDWORD(v45) = LDOLabel_GetAbsoluteFrom(v21);
          if (v23 == 51 && HIDWORD(v45) == v10)
          {
            v20 = 1;
            v19 = v21;
          }
        }

        if (++v7 >= *(*(a1 + 32) + 32))
        {
          if (!v20)
          {
            goto LABEL_28;
          }

          StringAttribute = LDOObject_GetStringAttribute(v19, "STRARGS", &v44, &__s);
          v25 = LH_ERROR_to_VERROR(StringAttribute);
          if ((v25 & 0x80000000) == 0)
          {
            if (v44)
            {
              v26 = *(a2 + 8);
              v27 = cstdlib_strlen(a4);
              v28 = cstdlib_strlen(__s);
              v29 = heap_Alloc(v26, (v27 + v28 + 2));
              if (v29)
              {
                v30 = v29;
                cstdlib_strcpy(v29, __s);
                cstdlib_strcat(v30, ";");
                cstdlib_strcat(v30, a4);
                v31 = LDOObject_SetStringAttribute(v19, "STRARGS", v30);
                v13 = LH_ERROR_to_VERROR(v31);
                heap_Free(*(a2 + 8), v30);
              }

              else
              {
                log_OutPublic(*(a2 + 32), "FE_PUNCSPTN_V2", 76000, 0);
                return 2702188554;
              }
            }

            else
            {
              v13 = 2702188544;
              log_OutPublic(*(a2 + 32), "FE_PUNCSPTN_V2", 76003, 0);
            }

            return v13;
          }

          return v25;
        }
      }
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = *v7;
      v12 = LDOObject_GetU32Attribute(*v7, "_MTYPE", &v44, &v45);
      v13 = LH_ERROR_to_VERROR(v12);
      if ((v13 & 0x80000000) != 0)
      {
        break;
      }

      if (v44 == 1)
      {
        v14 = v45;
        AbsoluteFrom = LDOLabel_GetAbsoluteFrom(v11);
        HIDWORD(v45) = AbsoluteFrom;
        if (v14 == 1 && AbsoluteFrom <= a3)
        {
          v10 = AbsoluteFrom;
          v9 = v11;
        }
      }

      ++v7;
      v18 = *(a1 + 32);
      v6 = *(v18 + 32);
      if (v7 >= v6)
      {
        v7 = *(v18 + 24);
        goto LABEL_16;
      }
    }
  }

  return v13;
}

uint64_t statpunc_v2_readIGTree(_WORD *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v31 = *MEMORY[0x277D85DE8];
  *v27 = 0;
  v28 = 0;
  Str = paramc_ParamGetStr(*(a3 + 40), "langcode", &v28);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  cstdlib_strcpy(__dst, "statpunc_");
  cstdlib_strcat(__dst, a4);
  v11 = brokeraux_ComposeBrokerString(a3, __dst, 0, 1, v28, 0, 0, v29, 0x100uLL);
  if (v11 < 0)
  {
    return v11 | 0xA1102000;
  }

  Str = ssftriff_reader_ObjOpen(a1, a2, 2, v29, "IGTR", 1031, v27);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v12 = heap_Calloc(*(a3 + 8), 1, 1600);
  *(a5 + 8) = v12;
  if (!v12)
  {
    log_OutPublic(*(a3 + 32), "FE_PUNCSPTN_V2", 76000, 0);
    return 2702188554;
  }

  Str = igtree_Init(a1, a2, *v27, v12);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v13 = ssftriff_reader_ObjClose(*v27);
  if ((v13 & 0x80000000) == 0)
  {
    *(a5 + 16) = 0;
    *(a5 + 24) = 0;
    *(a5 + 32) = 393219;
    *(a5 + 40) = ":;.!?()[]{}#',-<>";
    v14 = *(a5 + 8);
    if (*(v14 + 1336))
    {
      v15 = 0;
      do
      {
        v16 = v15;
        v17 = 16 * v15;
        v18 = cstdlib_strcmp(*(*(v14 + 1328) + v17), "leftcollocation");
        v19 = *(*(a5 + 8) + 1328);
        if (v18)
        {
          v20 = cstdlib_strcmp(*(v19 + v17), "rightcollocation");
          v21 = *(*(a5 + 8) + 1328);
          if (v20)
          {
            v22 = cstdlib_strcmp(*(v21 + v17), "dist2endmaxshort");
            v23 = *(*(a5 + 8) + 1328);
            if (v22)
            {
              v24 = cstdlib_strcmp(*(v23 + v17), "dist2endminlong");
              v25 = *(*(a5 + 8) + 1328);
              if (v24)
              {
                if (!cstdlib_strcmp(*(v25 + v17), "punctuation"))
                {
                  *(a5 + 40) = *(*(*(a5 + 8) + 1328) + 16 * v16 + 8);
                }
              }

              else
              {
                *(a5 + 34) = cstdlib_atoi(*(v25 + 16 * v16 + 8));
              }
            }

            else
            {
              *(a5 + 32) = cstdlib_atoi(*(v23 + 16 * v16 + 8));
            }
          }

          else
          {
            *(a5 + 24) = *(v21 + 16 * v16 + 8);
          }
        }

        else
        {
          *(a5 + 16) = *(v19 + 16 * v16 + 8);
        }

        v15 = v16 + 1;
        v14 = *(a5 + 8);
      }

      while (*(v14 + 1336) > (v16 + 1));
    }
  }

  return v13;
}

uint64_t statpunc_v2_freeIGTree(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = igtree_Deinit(a1, a2);
  if ((v4 & 0x80000000) == 0)
  {
    heap_Free(*(a1 + 8), a2);
  }

  return v4;
}

uint64_t statpunc_v2_Process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v39 = *MEMORY[0x277D85DE8];
  v36 = 0;
  __src = 0;
  v35 = 0;
  v8 = LDO_ComputeText(a2, &v35);
  inserted = LH_ERROR_to_VERROR(v8);
  if ((inserted & 0x80000000) == 0)
  {
    v10 = LHString_BorrowCPtr(v35);
    v11 = loc_strpunc(v10, a4, (a4 + 4), &v36);
    if (v11)
    {
      v12 = 0;
      do
      {
        ++v12;
        v11 = loc_strpunc(v11 + 1, a4, (a4 + 4), &v36);
      }

      while (v11);
      if (v12)
      {
        v13 = loc_strpunc(v10, a4, (a4 + 4), &v36);
        if (v13)
        {
          v33 = 0;
          v34 = v13;
          v31 = v6;
          v14 = 0;
          v32 = v10;
          while (1)
          {
            if (!v14)
            {
              log_OutText(*(a1 + 32), "FE_PUNCSPTN_V2", 5, 0, "traceFeatureVector %s", v10);
              v14 = heap_Calloc(*(a1 + 8), 1, 8 * *(*(a4 + 8) + 1296) - 8);
              if (!v14)
              {
                inserted = 2702188554;
                log_OutPublic(*(a1 + 32), "FE_PUNCSPTN_V2", 76000, 0);
                goto LABEL_44;
              }
            }

            v15 = *(a4 + 8);
            if (*(v15 + 1296) != 1)
            {
              v16 = 0;
              v17 = 8 * (*(v15 + 1296) - 1) - 8;
              do
              {
                if (!*(v14 + v16))
                {
                  v18 = heap_Calloc(*(a1 + 8), 1, 65);
                  *(v14 + v16) = v18;
                  if (!v18)
                  {
                    inserted = 2702188554;
                    log_OutPublic(*(a1 + 32), "FE_PUNCSPTN_V2", 76000, 0);
                    goto LABEL_38;
                  }
                }

                v19 = loc_setFeature(v15, a1, *(*(v15 + 1312) + v16), v14, "_");
                inserted = v19;
                if ((v19 & 0x80000000) != 0)
                {
                  break;
                }

                v20 = v17 == v16;
                v16 += 8;
              }

              while (!v20);
              v6 = v31;
              v10 = v32;
              if ((v19 & 0x80000000) != 0)
              {
                goto LABEL_38;
              }
            }

            Features = loc_extractFeatures(a4, a1, v10, v34, v36, v14);
            if ((Features & 0x80000000) != 0)
            {
              break;
            }

            v22 = v33;
            if (v33)
            {
              Features = loc_setFeature(*(a4 + 8), a1, "startpred", v14, v33);
              if ((Features & 0x80000000) != 0)
              {
                break;
              }
            }

            Features = igtree_Process(*(a4 + 8), v14, &__src);
            if ((Features & 0x80000000) != 0)
            {
              break;
            }

            v23 = 0;
            while (cstdlib_strcmp("pos", loc_feature_names[v23]))
            {
              if (++v23 == 9)
              {
                v24 = 0;
                goto LABEL_27;
              }
            }

            v24 = *(v14 + v23 * 8);
LABEL_27:
            if (!cstdlib_strcmp(v24, "start"))
            {
              v22 = __src;
            }

            v33 = v22;
            v25 = *(a4 + 8);
            cstdlib_strncpy(__dst, __src, 0x100uLL);
            __dst[255] = 0;
            if (*(v25 + 1296) >= 2u)
            {
              v26 = 0;
              do
              {
                v27 = cstdlib_strlen(*(v14 + 8 * v26));
                if (v27 + cstdlib_strlen(__dst) + 2 > 0xFF)
                {
                  break;
                }

                cstdlib_strcat(__dst, " ");
                cstdlib_strcat(__dst, *(v14 + 8 * v26++));
              }

              while (*(v25 + 1296) - 1 > v26);
            }

            log_OutText(*(a1 + 32), "FE_PUNCSPTN_V2", 5, 0, "traceFeatureVector %s", __dst);
            v10 = v32;
            inserted = loc_insertMarker(v6, a1, (v34 - v32), __src);
            if ((inserted & 0x80000000) == 0)
            {
              v34 = loc_strpunc(v34 + 1, a4, (a4 + 4), &v36);
              if (v34)
              {
                continue;
              }
            }

            goto LABEL_38;
          }

          inserted = Features;
LABEL_38:
          if (*(*(a4 + 8) + 1296) != 1)
          {
            v28 = (*(*(a4 + 8) + 1296) - 1);
            v29 = v14;
            do
            {
              if (*v29)
              {
                heap_Free(*(a1 + 8), *v29);
              }

              ++v29;
              --v28;
            }

            while (v28);
          }

          heap_Free(*(a1 + 8), v14);
        }
      }
    }
  }

LABEL_44:
  if (v35)
  {
    OOC_PlacementDeleteObject(a3, v35);
  }

  return inserted;
}

char *loc_strpunc(char *a1, const char *a2, const char *a3, const char **a4)
{
  v8 = cstdlib_strstr(a1, a2);
  result = cstdlib_strstr(a1, a3);
  if (v8)
  {
    if (v8 <= result)
    {
      v10 = a2;
    }

    else
    {
      v10 = a3;
    }

    if (v8 <= result)
    {
      v11 = v8;
    }

    else
    {
      v11 = result;
    }

    if (result)
    {
      a3 = v10;
    }

    else
    {
      a3 = a2;
    }

    if (result)
    {
      result = v11;
    }

    else
    {
      result = v8;
    }
  }

  else if (!result)
  {
    return result;
  }

  *a4 = a3;
  return result;
}

uint64_t loc_setFeature(uint64_t a1, uint64_t a2, char *__s1, uint64_t a4, const char *a5)
{
  if (*(a1 + 1296) < 2u)
  {
    return 0;
  }

  v10 = 0;
  while (cstdlib_strcmp(__s1, *(*(a1 + 1312) + 8 * v10)))
  {
    if (*(a1 + 1296) - 1 <= ++v10)
    {
      return 0;
    }
  }

  if (!cstdlib_strcmp(a5, ""))
  {
    v13 = *(a4 + 8 * v10);
    v14 = "_";
LABEL_14:
    cstdlib_strcpy(v13, v14);
    return 0;
  }

  if (cstdlib_strlen(a5) <= 0x40)
  {
    v13 = *(a4 + 8 * v10);
    goto LABEL_13;
  }

  v12 = cstdlib_strlen(a5);
  v13 = heap_Realloc(*(a2 + 8), *(a4 + 8 * v10), v12 + 1);
  if (v13)
  {
    *(a4 + 8 * v10) = v13;
LABEL_13:
    v14 = a5;
    goto LABEL_14;
  }

  log_OutPublic(*(a2 + 32), "FE_PUNCSPTN_V2", 76000, 0);
  return 2702188554;
}

BOOL loc_bstartword(char *__s, char *a2, char *a3)
{
  if (a3 == a2)
  {
    return 1;
  }

  v3 = a3;
  do
  {
    v6 = *--v3;
    v7 = cstdlib_strchr(__s, v6);
  }

  while (v3 > a2 && v7);
  v8 = *v3;
  return v8 == 32 || v3 == a2 && cstdlib_strchr(__s, v8);
}

BOOL loc_bendword(char *__s, uint64_t a2)
{
  v3 = (a2 + 1);
  while (1)
  {
    v4 = *v3;
    if (!*v3)
    {
      break;
    }

    ++v3;
    if (!cstdlib_strchr(__s, v4))
    {
      return (*(v3 - 1) & 0xDF) == 0;
    }
  }

  return 1;
}

uint64_t puncsptn_v2_dump_ldo(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v11 = 0;
  v7 = LDO_ToString(a3, &v11);
  v8 = LH_ERROR_to_VERROR(v7);
  if ((v8 & 0x80000000) != 0)
  {
    log_OutText(a1, a2, 5, 0, "Call to MSG_LDO_ToString failed, returning", 0);
  }

  else
  {
    log_OutText(a1, a2, 5, 0, "LDO contents: begin", 0);
    v9 = LHString_BorrowCPtr(v11);
    log_OutText(a1, a2, 5, 0, "%s", v9);
    log_OutText(a1, a2, 5, 0, "LDO contents: end", 0);
  }

  if (v11)
  {
    OOC_PlacementDeleteObject(a4, v11);
  }

  return v8;
}

uint64_t puncsptn_v2_process_ldo_with_lua(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  log_OutText(*(a1 + 32), a2, 5, 0, "LDO before calling %s in LuaVM", "runPuncsptnV2");
  v10 = puncsptn_v2_dump_ldo(*(a1 + 32), a2, a3, a4);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v11 = LuaVMLDO_RunFunction(a5, "runPuncsptnV2", a3);
  v12 = LH_ERROR_to_VERROR(v11);
  v13 = *(a1 + 32);
  if ((v12 & 0x80000000) != 0)
  {
    log_OutPublic(v13, a2, 76002, 0);
    return v12;
  }

  log_OutText(v13, a2, 5, 0, "LDO after calling %s in LuaVM", "runPuncsptnV2");
  v14 = *(a1 + 32);

  return puncsptn_v2_dump_ldo(v14, a2, a3, a4);
}

uint64_t puncsptn_v2_deallocate_LuaVM(uint64_t result, uint64_t *a2)
{
  v3 = *a2;
  if (v3)
  {
    result = OOC_PlacementDeleteObject(result, v3);
    *a2 = 0;
  }

  return result;
}

uint64_t puncsptn_v2_reload_lua_code(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5, _DWORD *a6)
{
  v22 = 0;
  *a6 = 0;
  inited = InitRsrcFunction(a1, a2, &v22);
  if ((inited & 0x80000000) != 0)
  {
    v14 = inited;
  }

  else
  {
    if (*a5)
    {
      OOC_PlacementDeleteObject(a4, *a5);
      *a5 = 0;
    }

    IsLuaCodeAvailable = LuaVMLDO_IsLuaCodeAvailable(a1, a2, 0, a6);
    v14 = LH_ERROR_to_VERROR(IsLuaCodeAvailable);
    if ((v14 & 0x80000000) == 0)
    {
      if (*a6 != 1)
      {
        v20 = *(v22 + 32);
        goto LABEL_13;
      }

      *a6 = 0;
      v15 = PNEW_LuaVMLDO_Con(a4, a4, a1, a2, "FE_PUNCSPTN_V2", a5);
      v16 = LH_ERROR_to_VERROR(v15);
      if ((v16 & 0x80000000) != 0)
      {
        v14 = v16;
        log_OutText(*(v22 + 32), a3, 5, 0, "Unable to create LuaVM", 0);
      }

      else
      {
        ScriptFromRIFF = LuaVMLDO_LoadScriptFromRIFF(*a5, 0);
        v18 = LH_ERROR_to_VERROR(ScriptFromRIFF);
        if ((v18 & 0x80000000) != 0)
        {
          v14 = v18;
          log_OutText(*(v22 + 32), a3, 5, 0, "Unable to load Lua code from RIFF", 0);
        }

        else
        {
          IsLuaFunctionAvailable = LuaVMLDO_IsLuaFunctionAvailable(*a5, "runPuncsptnV2", a6);
          v14 = LH_ERROR_to_VERROR(IsLuaFunctionAvailable);
          if ((v14 & 0x80000000) == 0)
          {
            v20 = *(v22 + 32);
            if (*a6 == 1)
            {
              log_OutText(v20, a3, 5, 0, "Lua code found and loaded", 0);
              goto LABEL_14;
            }

LABEL_13:
            log_OutText(v20, a3, 5, 0, "No Lua code found", 0);
LABEL_14:
            if (*a6)
            {
              return v14;
            }

            goto LABEL_19;
          }

          log_OutText(*(v22 + 32), a3, 5, 0, "Unable to determine if Lua entry point function is present", 0);
        }
      }
    }
  }

LABEL_19:
  if (*a5)
  {
    OOC_PlacementDeleteObject(a4, *a5);
    *a5 = 0;
  }

  return v14;
}

uint64_t initSolutionList(uint64_t a1)
{
  v2 = heap_Calloc(*(*a1 + 8), 1, 48);
  *(a1 + 360) = v2;
  if (v2)
  {
    *(a1 + 368) = 3;
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0);

    return TOKENTNERROR(10);
  }
}

void *freeSolutionList(void *result)
{
  v1 = result;
  v2 = result[45];
  if (v2)
  {
    result = heap_Free(*(*result + 8), v2);
    v1[45] = 0;
  }

  *(v1 + 92) = 0;
  return result;
}

uint64_t resetSolutionList(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    goto LABEL_7;
  }

  v3 = a2;
  if (a2 <= 3 && (a2 != 3 || *(a1 + 368) < 4u))
  {
    goto LABEL_7;
  }

  v4 = heap_Realloc(*(*a1 + 8), *(a1 + 360), 12 * a2 + 12);
  if (v4)
  {
    *(a1 + 360) = v4;
    *(a1 + 368) = v3;
LABEL_7:
    *(a1 + 370) = 0;
    return 0;
  }

  log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0);

  return TOKENTNERROR(10);
}

uint64_t initMatchList(uint64_t a1)
{
  v2 = heap_Calloc(*(*a1 + 8), 1, 32);
  *(a1 + 376) = v2;
  if (v2)
  {
    *(a1 + 384) = 3;
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0);

    return TOKENTNERROR(10);
  }
}

void *freeMatchList(void *result)
{
  v1 = result;
  v2 = result[47];
  if (v2)
  {
    result = heap_Free(*(*result + 8), v2);
    v1[47] = 0;
  }

  *(v1 + 96) = 0;
  return result;
}

uint64_t resetMatchList(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    goto LABEL_7;
  }

  v3 = a2;
  if (a2 <= 3 && (a2 != 3 || *(a1 + 384) < 4u))
  {
    goto LABEL_7;
  }

  v4 = heap_Realloc(*(*a1 + 8), *(a1 + 376), 8 * a2 + 8);
  if (v4)
  {
    *(a1 + 376) = v4;
    *(a1 + 384) = v3;
LABEL_7:
    *(a1 + 386) = 0;
    return 0;
  }

  log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0);

  return TOKENTNERROR(10);
}

uint64_t initAlignmentData(uint64_t a1)
{
  v2 = heap_Calloc(*(*a1 + 8), 1, 2 * *(a1 + 314) + 2);
  *(a1 + 536) = v2;
  if (v2 && (*(a1 + 544) = 0, v3 = heap_Calloc(*(*a1 + 8), 1, 2 * *(a1 + 314) + 2), (*(a1 + 520) = v3) != 0))
  {
    *(a1 + 528) = 0;
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0);

    return TOKENTNERROR(10);
  }
}

void *freeAlignmentData(void *result)
{
  v1 = result;
  v2 = result[67];
  if (v2)
  {
    result = heap_Free(*(*result + 8), v2);
    v1[67] = 0;
  }

  *(v1 + 272) = 0;
  v3 = v1[65];
  if (v3)
  {
    result = heap_Free(*(*v1 + 8), v3);
    v1[65] = 0;
  }

  *(v1 + 264) = 0;
  return result;
}

uint64_t resetAlignmentData(uint64_t result)
{
  *(result + 528) = 0;
  *(result + 544) = 0;
  return result;
}

uint64_t initStrRes(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 280);
  *(a2 + 12) = v4;
  v5 = heap_Calloc(*(*a1 + 8), 1, v4);
  *a2 = v5;
  if (v5)
  {
    *v5 = 0;
    *(a2 + 8) = *(a2 + 12);
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0);

    return TOKENTNERROR(10);
  }
}

uint64_t resetStrRes(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 12);
  if (*(a2 + 8) <= v3)
  {
    result = 0;
  }

  else
  {
    result = reallocStrRes(a1, a2, v3);
  }

  if (*a2)
  {
    **a2 = 0;
    *(a2 + 10) = 0;
  }

  return result;
}

uint64_t reallocStrRes(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v3 = a3;
  v6 = heap_Realloc(*(*a1 + 8), *a2, a3 + 1);
  if (v6)
  {
    *a2 = v6;
    *(a2 + 8) = v3;
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);

    return TOKENTNERROR(10);
  }
}

uint64_t growStrRes(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 8) <= a3)
  {
    return reallocStrRes(a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

void *clearStrRes(void *result, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v3 = *a2;
    if (*a2)
    {
      result = heap_Free(result[1], v3);
      *a2 = 0;
    }
  }

  *(a2 + 8) = 0;
  return result;
}

uint64_t add2StringV2(uint64_t *a1, uint64_t a2, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  if (!*__s)
  {
    return 0;
  }

  v6 = cstdlib_strlen(__s);
  v7 = v6;
  v8 = *(a2 + 8);
  if (*(a2 + 10) + v6 >= v8)
  {
    result = reallocStrRes(a1, a2, (v8 + v6));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (!*(a2 + 10))
    {
      **a2 = 0;
    }
  }

  cstdlib_strcat(*a2, __s);
  result = 0;
  *(a2 + 10) += v7;
  return result;
}

uint64_t add2StringV3(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 10);
  if (!*(a3 + 10))
  {
    return 0;
  }

  v6 = *(a2 + 8);
  if (*(a2 + 10) + v3 >= v6)
  {
    result = reallocStrRes(a1, a2, (v6 + v3));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (!*(a2 + 10))
    {
      **a2 = 0;
    }
  }

  cstdlib_strcat(*a2, *a3);
  result = 0;
  *(a2 + 10) += *(a3 + 10);
  return result;
}

uint64_t add2StringV4(uint64_t *a1, uint64_t a2, unsigned int a3, __int16 a4)
{
  v7 = a4 - a3;
  if (*(a2 + 10) + (a4 - a3) >= *(a2 + 8))
  {
    result = reallocStrRes(a1, a2, (*(a2 + 10) + a4 - a3));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (!*(a2 + 10))
    {
      **a2 = 0;
    }
  }

  cstdlib_strncat(*a2, (a1[38] + a3), v7);
  result = 0;
  *(a2 + 10) += v7;
  return result;
}

uint64_t add2StringV5(uint64_t *a1, uint64_t a2, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  if (!*__s)
  {
    return 0;
  }

  v6 = cstdlib_strlen(__s);
  v7 = *(a2 + 10);
  if (v7 + v6 + 1 >= *(a2 + 8))
  {
    result = reallocStrRes(a1, a2, (v7 + v6 + 1));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v7 = *(a2 + 10);
    if (!*(a2 + 10))
    {
      **a2 = 0;
      v7 = *(a2 + 10);
    }
  }

  cstdlib_memcpy((*a2 + v7), __s, v6);
  result = 0;
  *(*a2 + *(a2 + 10) + v6) = 0;
  *(a2 + 10) += v6 + 1;
  return result;
}

uint64_t TOK_IS_PUNCT(const char *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = utf8_determineUTF8CharLength(*a1);
  cstdlib_strncpy(v5, a1, v2);
  v5[v2] = 0;
  v3 = cstdlib_strlen(v5);
  result = utf8_BelongsToSet(10, v5, 0, v3);
  if (result != 1)
  {
    result = utf8_BelongsToSet(11, v5, 0, v3);
    if (result != 1)
    {
      result = utf8_BelongsToSet(12, v5, 0, v3);
      if (result != 1)
      {
        return utf8_BelongsToSet(13, v5, 0, v3) == 1;
      }
    }
  }

  return result;
}

uint64_t TOK_IS_ALPHANUM(const char *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = utf8_determineUTF8CharLength(*a1);
  cstdlib_strncpy(v5, a1, v2);
  v5[v2] = 0;
  v3 = cstdlib_strlen(v5);
  if (utf8_strchr(g_szSpace_0, v5))
  {
    return 0;
  }

  result = utf8_BelongsToSet(9, v5, 0, v3);
  if (result != 1)
  {
    return 0;
  }

  return result;
}

uint64_t TOK_COUNT_SP_WORDS(const char *a1)
{
  if (a1 && (v2 = cstdlib_strlen(a1)) != 0)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      if (utf8_strchr(g_szSpace_0, &a1[v3]))
      {
        while (v3 < v2 && utf8_strchr(g_szSpace_0, &a1[v3]))
        {
          v3 += utf8_determineUTF8CharLength(a1[v3]);
        }
      }

      else
      {
        ++v4;
        while (v3 < v2 && !utf8_strchr(g_szSpace_0, &a1[v3]))
        {
          v3 += utf8_determineUTF8CharLength(a1[v3]);
        }
      }
    }

    while (v3 < v2);
  }

  else
  {
    return 0;
  }

  return v4;
}

uint64_t tokenRecordReadFieldLD_T_FROMPOS(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v6 = (*(a1[8] + 184))(a1[9], a1[10], a2, 1, &v9 + 2);
  v7 = 24031;
  if ((v6 & 0x80000000) == 0 && HIWORD(v9) == 1)
  {
    (*(a1[8] + 168))(a1[9], a1[10], a2, 1, 1, a3, &v9);
    if (v9 == 1)
    {
      return 0;
    }

    v7 = 24030;
  }

  log_OutPublic(*(*a1 + 32), a1[23], v7, 0);
  return TOKENTNERROR(0);
}

uint64_t tokenRecordReadFieldLD_T_TOPOS(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v6 = (*(a1[8] + 184))(a1[9], a1[10], a2, 2, &v9 + 2);
  v7 = 24030;
  if ((v6 & 0x80000000) == 0 && HIWORD(v9) == 1)
  {
    (*(a1[8] + 168))(a1[9], a1[10], a2, 2, 1, a3, &v9);
    if (v9 == 1)
    {
      return 0;
    }

    v7 = 24031;
  }

  log_OutPublic(*(*a1 + 32), a1[23], v7, 0);
  return TOKENTNERROR(0);
}

uint64_t tokenRecordReadFieldLD_T_TYPE(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v6 = (*(a1[8] + 184))(a1[9], a1[10], a2, 0, &v8 + 2);
  result = 0;
  if ((v6 & 0x80000000) == 0 && HIWORD(v8) == 1)
  {
    (*(a1[8] + 168))(a1[9], a1[10], a2, 0, 1, a3, &v8);
    result = 0;
    if (v8 != 1)
    {
      log_OutPublic(*(*a1 + 32), a1[23], 24032, 0);
      return TOKENTNERROR(0);
    }
  }

  return result;
}

uint64_t tokenRecordReadFieldLD_T_TNTAG(void *a1, uint64_t a2, _BYTE *a3)
{
  v7 = 0;
  *a3 = 0;
  if (((*(a1[8] + 184))(a1[9], a1[10], a2, 4, &v7 + 2) & 0x80000000) == 0 && HIWORD(v7) == 1)
  {
    (*(a1[8] + 168))(a1[9], a1[10], a2, 4, 32, a3, &v7);
  }

  return 0;
}

uint64_t tokenRecordReadFieldLD_T_LANGMAP(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (((*(a1[8] + 184))(a1[9], a1[10], a2, 6, &v7 + 2) & 0x80000000) == 0 && HIWORD(v7) == 1)
  {
    (*(a1[8] + 176))(a1[9], a1[10], a2, 6, a3, &v7);
  }

  return 0;
}

uint64_t tokenRecordDirectReadFieldLD_T_NORM(void *a1, uint64_t a2, void *a3)
{
  v7 = 0;
  *a3 = 0;
  if (((*(a1[8] + 184))(a1[9], a1[10], a2, 3, &v7 + 2) & 0x80000000) == 0 && HIWORD(v7) == 1)
  {
    (*(a1[8] + 176))(a1[9], a1[10], a2, 3, a3, &v7);
  }

  return 0;
}

uint64_t partialMatchFoundInBasicToken(uint64_t result, __int16 *a2)
{
  v13 = 0;
  if (result)
  {
    v2 = result;
    v3 = *(*(result + 264) + 16);
    for (i = *(v3 + 80); i < *(v3 + 88); ++i)
    {
      __s1 = 0;
      v6 = LDOTreeNode_ComputeAbsoluteFrom(*i, &v13 + 1);
      if ((LH_ERROR_to_VERROR(v6) & 0x80000000) != 0)
      {
        break;
      }

      v7 = LDOTreeNode_ComputeAbsoluteTo(*i, &v13);
      if ((LH_ERROR_to_VERROR(v7) & 0x80000000) != 0)
      {
        break;
      }

      Type = LDOObject_GetType(*i, &__s1);
      if ((LH_ERROR_to_VERROR(Type) & 0x80000000) != 0)
      {
        break;
      }

      if (!cstdlib_strcmp(__s1, "TOKEN_ALPHA") || !cstdlib_strcmp(__s1, "TOKEN_DIGIT") || !cstdlib_strcmp(__s1, "TOKEN_PUNCT") || !cstdlib_strcmp(__s1, "TOKEN_WSPACE"))
      {
        v9 = *a2;
        if (__PAIR64__(v13, SWORD2(v13)) != __PAIR64__(a2[1], v9))
        {
          if (SWORD2(v13) >= v9)
          {
            LOWORD(v11) = a2[1];
          }

          else
          {
            v10 = v13;
            v11 = a2[1];
            if (v9 < v13)
            {
              goto LABEL_20;
            }
          }

          if (SWORD2(v13) < v11)
          {
            v11 = v11;
            v10 = v13;
            if (v11 < v13)
            {
LABEL_20:
              log_OutText(*(*v2 + 32), v2[23], 5, 0, "Regex match %d,%d bisects basic token %d,%d", v9, v11, HIDWORD(v13), v10);
              return 1;
            }
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t dumpTokenRecordsInLingDB(void *a1, const char *a2, int a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v16 = 0;
  v14 = 0;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  if (!a1)
  {
    goto LABEL_28;
  }

  if (!a1[38])
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0);
LABEL_28:

    return TOKENTNERROR(7);
  }

  if (a3 == 1)
  {
    v5 = "<LOGFE> ";
  }

  else
  {
    v5 = "";
  }

  cstdlib_strcpy(__dst, v5);
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "%stokentn : dumpTokenRecordsInLingDB : Begin : %s", __dst, a2);
  FieldLD_T_FROMPOS = (*(a1[8] + 104))(a1[9], a1[10], 1, 0, &v17);
  if ((FieldLD_T_FROMPOS & 0x80000000) != 0)
  {
LABEL_31:
    FieldLD_T_TYPE = FieldLD_T_FROMPOS;
  }

  else
  {
    FieldLD_T_TYPE = (*(a1[8] + 104))(a1[9], a1[10], 3, v17, &v16);
    if (!FieldLD_T_TYPE)
    {
      v8 = v16;
      if (v16)
      {
        while (1)
        {
          FieldLD_T_FROMPOS = tokenRecordReadFieldLD_T_FROMPOS(a1, v8, &v12 + 2);
          if ((FieldLD_T_FROMPOS & 0x80000000) != 0)
          {
            goto LABEL_31;
          }

          FieldLD_T_FROMPOS = tokenRecordReadFieldLD_T_TOPOS(a1, v16, &v12);
          if ((FieldLD_T_FROMPOS & 0x80000000) != 0)
          {
            goto LABEL_31;
          }

          FieldLD_T_TYPE = tokenRecordReadFieldLD_T_TYPE(a1, v16, &v13);
          if ((FieldLD_T_TYPE & 0x80000000) != 0)
          {
            goto LABEL_32;
          }

          if (v13 - 5 <= 1)
          {
            tokenRecordReadFieldLD_T_TNTAG(a1, v16, v19);
            if (v13 == 6)
            {
              tokenRecordDirectReadFieldLD_T_NORM(a1, v16, &v14);
              tokenRecordReadFieldLD_T_LANGMAP(a1, v16, &v15);
            }

            FieldLD_T_TYPE = 0;
          }

          if (v12 < HIWORD(v12))
          {
            break;
          }

          v9 = *(a1 + 156);
          if (v12 > v9)
          {
            log_OutPublic(*(*a1 + 32), a1[23], 24055, "%s%d%s%d", "toPos=", v12, " sentLen=", v9);
            return TOKENTNERROR(0);
          }

          cstdlib_strncpy(a1[69], (a1[38] + HIWORD(v12)), v12 - HIWORD(v12));
          *(a1[69] - HIWORD(v12) + v12) = 0;
          if (v13 > 4)
          {
            if (v13 == 5)
            {
              log_OutText(*(*a1 + 32), a1[23], 5, 0, "%s[dbId=%d] %3d,%3d ESC(%-9s) %s ", __dst, v16, HIWORD(v12));
            }

            else if (v13 == 6)
            {
              log_OutText(*(*a1 + 32), a1[23], 5, 0, "%s[dbId=%d] %3d,%3d %-15s %s %s langMap=%s", __dst, v16, HIWORD(v12), v12, v19);
            }
          }

          else
          {
            v11 = 0;
            (*(a1[8] + 264))(a1[9], a1[10], v13, &v11);
            log_OutText(*(*a1 + 32), a1[23], 5, 0, "%s[dbId=%d] %3d,%3d %-15s %s", __dst, v16, HIWORD(v12));
          }

          if (!(*(a1[8] + 120))(a1[9], a1[10], v16, &v16))
          {
            v8 = v16;
            if (v16)
            {
              continue;
            }
          }

          goto LABEL_32;
        }

        log_OutPublic(*(*a1 + 32), a1[23], 24055, "%s%d%s%d", "fromPos=", HIWORD(v12), " toPos=", v12);
        return TOKENTNERROR(0);
      }
    }
  }

LABEL_32:
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "%stokentn : dumpTokenRecordsInLingDB End (%x)", __dst, FieldLD_T_TYPE);
  return FieldLD_T_TYPE;
}

uint64_t dumpTokenLDO(uint64_t a1, const char *a2, int a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v37 = 0;
  if (!a1)
  {
    goto LABEL_28;
  }

  if (!*(a1 + 304))
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24049, 0);
LABEL_28:

    return TOKENTNERROR(7);
  }

  if (a3 == 1)
  {
    v5 = "<LOGFE> ";
  }

  else
  {
    v5 = "";
  }

  cstdlib_strcpy(__dst, v5);
  log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "%stokentn : dumpTokenLDO : Begin : %s", __dst, a2);
  v6 = *(*(a1 + 264) + 16);
  LDOObject_GetCategory(v6, &v37);
  v7 = 0;
  v8 = *(v6 + 80);
  v9 = *(v6 + 88);
  if (v8 >= v9)
  {
LABEL_10:
    LDO_GetLabels(*(a1 + 264), &v34);
    v19 = v34.n128_u64[1];
    v20 = v35;
    if (v34.n128_u64[1] >= v35)
    {
LABEL_25:
      log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "%stokentn : dumpTokenLDO End (%x)", __dst, v7);
    }

    else
    {
      while (1)
      {
        v33 = 0;
        v34.n128_u64[0] = 0;
        v36 = 0;
        v31 = 0;
        v32 = 0;
        U32Attribute = LDOObject_GetU32Attribute(*v19, "_TTYPE", &v31, &v31 + 1);
        v7 = LH_ERROR_to_VERROR(U32Attribute);
        if ((v7 & 0x80000000) != 0)
        {
          break;
        }

        if (v31 == 1 && HIDWORD(v31) == 6)
        {
          AbsoluteFrom = LDOLabel_GetAbsoluteFrom(*v19);
          AbsoluteTo = LDOLabel_GetAbsoluteTo(*v19);
          StringAttribute = LDOObject_GetStringAttribute(*v19, "TNTAG", &v31, &v34);
          v26 = LH_ERROR_to_VERROR(StringAttribute);
          if ((v26 & 0x80000000) != 0)
          {
            return v26;
          }

          v27 = LDOObject_GetStringAttribute(*v19, "NORM", &v31, &v36);
          v26 = LH_ERROR_to_VERROR(v27);
          if ((v26 & 0x80000000) != 0)
          {
            return v26;
          }

          v28 = LDOObject_GetStringAttribute(*v19, "REGEXSUBMATCHES", &v31, &v33);
          v7 = LH_ERROR_to_VERROR(v28);
          if ((v7 & 0x80000000) != 0)
          {
            return v7;
          }

          if (*(a1 + 960) == 1)
          {
            log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "%s%3d,%3d : type=TOKEN_INT_TN TNTAG=%-15s NORM=%s REGEXSUBMATCHES=%s", __dst, AbsoluteFrom, AbsoluteTo);
          }

          else
          {
            v29 = LDOObject_GetStringAttribute(*v19, "DCTMATCHES", &v31, &v32);
            v7 = LH_ERROR_to_VERROR(v29);
            if ((v7 & 0x80000000) != 0)
            {
              return v7;
            }

            log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "%s%3d,%3d : type=TOKEN_INT_TN TNTAG=%-15s NORM=%s REGEXSUBMATCHES=%s DCTMATCHES=%s", __dst, AbsoluteFrom, AbsoluteTo, v34.n128_u64[0]);
          }
        }

        if (++v19 >= v20)
        {
          goto LABEL_25;
        }
      }
    }
  }

  else
  {
    v10 = 0;
    while (1)
    {
      v34.n128_u64[0] = 0;
      v36 = 0;
      LODWORD(v33) = 0;
      LODWORD(v32) = 0;
      LDOObject_GetType(*v8, &v34);
      v11 = LDOTreeNode_ComputeText(*v8, &v36);
      v7 = LH_ERROR_to_VERROR(v11);
      if ((v7 & 0x80000000) != 0)
      {
        break;
      }

      ++v10;
      LDOTreeNode_ComputeAbsoluteFrom(*v8, &v33);
      v12 = *v8++;
      LDOTreeNode_ComputeAbsoluteTo(v12, &v32);
      v13 = *(*a1 + 32);
      v14 = *(a1 + 184);
      v15 = v34.n128_u64[0];
      v16 = v33;
      v17 = v32;
      v18 = LHString_BorrowCPtr(v36);
      log_OutText(v13, v14, 4, 0, "%sToken[%d] %d,%d : %s %s", __dst, v10, v16, v17, v15, v18);
      OOC_PlacementDeleteObject(a1 + 224, v36);
      if (v8 >= v9)
      {
        goto LABEL_10;
      }
    }
  }

  return v7;
}

uint64_t move2PreviousNonUserTNLDOToken(uint64_t a1, unsigned int a2, unsigned int a3, _WORD *a4)
{
  if (a1)
  {
    *a4 = 0;
    v7 = *(*(a1 + 264) + 16);
    NumberChildren = LDOTreeNode_GetNumberChildren(v7);
    if (NumberChildren)
    {
      v9 = *(v7 + 80);
      if (v9 >= *(v7 + 88))
      {
        return 0;
      }

      v10 = 0;
      do
      {
        v14 = 0;
        v11 = LDOTreeNode_ComputeAbsoluteFrom(*v9, &v14 + 1);
        result = LH_ERROR_to_VERROR(v11);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        v13 = LDOTreeNode_ComputeAbsoluteTo(*v9, &v14);
        result = LH_ERROR_to_VERROR(v13);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        if (WORD2(v14) < a2 || v14 < a3)
        {
          *a4 = v10;
        }

        ++v10;
        ++v9;
      }

      while (v9 < *(v7 + 88));
      return result;
    }
  }

  else
  {
    NumberChildren = 7;
  }

  return TOKENTNERROR(NumberChildren);
}

uint64_t saveExpansionInLDO(uint64_t a1, char *a2, const char *a3, char *a4, char *a5, char *a6, unsigned int a7, unsigned __int16 *a8)
{
  v39 = 0;
  v8 = *a8;
  v37 = a8[1];
  v38 = v8;
  if (a1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "tokentn : saveExpansionInLingDB Begin (%s)", a3);
    v16 = LDO_AddLabelOnSubstring(*(a1 + 264), "TOKEN", "TOKEN", &v38, &v37, &v39);
    v17 = LH_ERROR_to_VERROR(v16);
    if ((v17 & 0x80000000) != 0)
    {
      goto LABEL_21;
    }

    LDOObject_SetU32Attribute(v39, "_TTYPE", 6);
    v17 = LH_ERROR_to_VERROR(v18);
    if ((v17 & 0x80000000) != 0)
    {
      goto LABEL_21;
    }

    v19 = LDOObject_SetStringAttribute(v39, "TNTAG", a2);
    v17 = LH_ERROR_to_VERROR(v19);
    if ((v17 & 0x80000000) != 0)
    {
      goto LABEL_21;
    }

    v20 = LDOObject_SetStringAttribute(v39, "NORM", &a3[a7]);
    v21 = LH_ERROR_to_VERROR(v20);
    if ((v21 & 0x80000000) != 0)
    {
      goto LABEL_22;
    }

    if (a6)
    {
      v22 = LDOObject_SetStringAttribute(v39, "PATTERN", a6);
      v21 = LH_ERROR_to_VERROR(v22);
      if ((v21 & 0x80000000) != 0)
      {
        goto LABEL_22;
      }
    }

    if (a4)
    {
      v23 = LDOObject_SetStringAttribute(v39, "REGEXSUBMATCHES", a4);
      v21 = LH_ERROR_to_VERROR(v23);
      if ((v21 & 0x80000000) != 0)
      {
        goto LABEL_22;
      }
    }

    if (a5)
    {
      v24 = LDOObject_SetStringAttribute(v39, "DCTMATCHES", a5);
      v21 = LH_ERROR_to_VERROR(v24);
      if ((v21 & 0x80000000) != 0)
      {
        goto LABEL_22;
      }
    }

    v25 = *(a1 + 544);
    if (v25 >= 2)
    {
      LDOObject_SetU32Attribute(v39, "_MRKRD", v25);
      v17 = LH_ERROR_to_VERROR(v26);
      if ((v17 & 0x80000000) != 0)
      {
        goto LABEL_21;
      }

      v27 = heap_Calloc(*(*a1 + 8), *(a1 + 544), 4);
      if (!v27)
      {
        v21 = 10;
        goto LABEL_22;
      }

      v28 = v27;
      v29 = *(a1 + 544);
      if (*(a1 + 544))
      {
        v30 = *(a1 + 520);
        v31 = *(a1 + 544);
        v32 = v27;
        do
        {
          v33 = *v30++;
          *v32++ = v33;
          --v31;
        }

        while (v31);
      }

      v34 = LDOObject_SetListU32Attribute(v39, "_MRK", v27, v29);
      v21 = LH_ERROR_to_VERROR(v34);
      heap_Free(*(*a1 + 8), v28);
      if ((v21 & 0x80000000) != 0)
      {
        goto LABEL_22;
      }
    }

    if (!*(a1 + 418))
    {
LABEL_22:
      log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "tokentn : saveExpansionInLingDB End (%x) ", v21);
      return v21;
    }

    v35 = LDOObject_SetStringAttribute(v39, "LANGMAP", (*(a1 + 408) + a7));
    v17 = LH_ERROR_to_VERROR(v35);
LABEL_21:
    v21 = v17;
    goto LABEL_22;
  }

  return TOKENTNERROR(7);
}

uint64_t setDomainsOnSentence(uint64_t *a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v45 = 0;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  if (a1)
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : setDomainsOnSentence Begin");
    DomainDefBlockInfo = dumpTokenRecordsInLingDB(a1, "TRACE", 1);
    if ((DomainDefBlockInfo & 0x80000000) == 0)
    {
      FEData_blockData_getDomains2SearchIn(a1, *(a1 + 168), a1[43], v46, &v44, 0);
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : %d block(s) to search in", v44);
      if (v44)
      {
        for (i = 0; i < v44; ++i)
        {
          FEData_blockData_newGetDomainDefBlockInfo(a1, v46[i], &v43);
          v4 = v43;
          if (*(v43 + 24))
          {
            v5 = 0;
            v6 = 0;
            do
            {
              v7 = (*(v4 + 16) + v5);
              v8 = v7[6];
              v9 = (*(v7 + 6) + *v7);
              if (*(v7 + 15) == 1)
              {
                v10 = "(remapped to normal)";
              }

              else
              {
                v10 = "";
              }

              if (*(*(v4 + 32) + 16 * v8 + 8))
              {
                v11 = "";
              }

              else
              {
                v11 = "(VIRTUAL)";
              }

              log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : domain[%d,%d,%s,type=%d] marker %s%s %s", i, v6++, *v4, *(v4 + 8), v9, v10, v11);
              v4 = v43;
              v5 += 72;
            }

            while (v6 < *(v43 + 24));
          }
        }

        v12 = *(a1[33] + 32);
        v13 = *(v12 + 24);
        if (v13 < *(v12 + 32))
        {
          do
          {
            __s2 = 0;
            v40 = 0;
            StringAttribute = LDOObject_GetStringAttribute(*v13, "TNTAG", &v40, &__s2);
            DomainDefBlockInfo = LH_ERROR_to_VERROR(StringAttribute);
            if ((DomainDefBlockInfo & 0x80000000) != 0)
            {
              return DomainDefBlockInfo;
            }

            if (v40)
            {
              v39 = 0;
              v38 = 0;
              AbsoluteFrom = LDOLabel_GetAbsoluteFrom(*v13);
              v35 = v13;
              AbsoluteTo = LDOLabel_GetAbsoluteTo(*v13);
              log_OutText(*(*a1 + 32), a1[23], 5, 0, "doing DB token %s %d,%d", __s2, AbsoluteFrom, AbsoluteTo);
              if (v44)
              {
                v17 = 0;
                v18 = AbsoluteFrom;
                v19 = 0;
                v20 = 0;
                v37 = v18;
                v36 = v18;
                do
                {
                  FEData_blockData_newGetDomainDefBlockInfo(a1, v46[v17], &v43);
                  IsRemappable = FEData_blockData_IsRemappable(a1, __s2, &v39, &v38 + 1, &v38);
                  v42 = 0;
                  if (IsRemappable == 1)
                  {
                    log_OutText(*(*a1 + 32), a1[23], 5, 0, "domain %s is remappable to %s", __s2, v39);
                    v20 = HIWORD(v38);
                    v19 = v38;
                    DomainDefBlockInfo = FEData_blockData_newGetDomainDefBlockInfo(a1, v38, &v42);
                    if ((DomainDefBlockInfo & 0x80000000) != 0)
                    {
                      return DomainDefBlockInfo;
                    }

                    v22 = v42;
                    if (v42)
                    {
LABEL_31:
                      v26 = *(v22 + 16);
                      DomainDefBlockInfo = FERuntimeData_AddDomainRange(a1, &v45);
                      if ((DomainDefBlockInfo & 0x80000000) != 0)
                      {
                        return DomainDefBlockInfo;
                      }

                      v27 = (v26 + 72 * v20);
                      v28 = v45;
                      v45[3] = v19;
                      v28[2] = v20;
                      *v28 = v37;
                      v28[1] = AbsoluteTo;
                      *(v28 + 2) = 1;
                      log_OutText(*(*a1 + 32), a1[23], 5, 0, "Set Active Domain[%s:%s] range %d,%d", *v42, (*(v27 + 6) + *v27), v36, AbsoluteTo);
                      if (!cstdlib_strcmp((*(v27 + 6) + *v27), a1[36]) || *(v27 + 15) == 1)
                      {
                        log_OutText(*(*a1 + 32), a1[23], 5, 0, "normal domain OR was remapped to EscNormal - set additional domains, if any");
                        v29 = v43;
                        if (*(v43 + 24))
                        {
                          v30 = 0;
                          v31 = 48;
                          do
                          {
                            if (v20 != v30)
                            {
                              v32 = *(v29 + 16);
                              if (!cstdlib_strcmp((*(v32 + v31) + *(v32 + v31 - 48)), a1[36]) || *(v32 + v31 + 12) == 1)
                              {
                                DomainDefBlockInfo = FERuntimeData_AddDomainRange(a1, &v45);
                                if ((DomainDefBlockInfo & 0x80000000) != 0)
                                {
                                  return DomainDefBlockInfo;
                                }

                                v33 = v45;
                                v45[3] = v46[v17];
                                v33[2] = v30;
                                *v33 = v37;
                                v33[1] = AbsoluteTo;
                                *(v33 + 2) = 1;
                                log_OutText(*(*a1 + 32), a1[23], 5, 0, "Set (as mapped to normal) Active Domain[%s:%s] range %d,%d", *v43, (*(v32 + v31) + *(v32 + v31 - 48)), v36, AbsoluteTo);
                              }
                            }

                            ++v30;
                            v29 = v43;
                            v31 += 72;
                          }

                          while (v30 < *(v43 + 24));
                        }
                      }

                      goto LABEL_42;
                    }

                    log_OutPublic(*(*a1 + 32), a1[23], 24041, "%s%s", "skipping undefined remapped domain:", v39);
                  }

                  else
                  {
                    v22 = v43;
                    if (*(v43 + 24))
                    {
                      v23 = 0;
                      v24 = 0;
                      while (1)
                      {
                        v25 = cstdlib_strcmp((*(*(v22 + 16) + v23 + 48) + *(*(v22 + 16) + v23)), __s2);
                        v22 = v43;
                        if (!v25)
                        {
                          break;
                        }

                        ++v24;
                        v23 += 72;
                        if (v24 >= *(v43 + 24))
                        {
                          goto LABEL_28;
                        }
                      }

                      v19 = v46[v17];
                      v42 = v43;
                      v20 = v24;
                      if (v43)
                      {
                        goto LABEL_31;
                      }
                    }

                    else
                    {
LABEL_28:
                      v22 = v42;
                      if (v42)
                      {
                        goto LABEL_31;
                      }
                    }
                  }

LABEL_42:
                  ++v17;
                }

                while (v17 < v44);
              }

              v13 = v35;
            }

            ++v13;
          }

          while (v13 < *(*(a1[33] + 32) + 32));
        }

        log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : setDomainsOnSentence End (%x)", DomainDefBlockInfo);
      }

      else
      {
        return 0;
      }
    }

    return DomainDefBlockInfo;
  }

  else
  {

    return TOKENTNERROR(7);
  }
}

uint64_t mergeDomainsOnSentence(void *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v19 = 0;
  v20 = 0;
  if (a1)
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : mergeDomainsOnSentence Begin");
    v24 = 0;
    FERuntimeData_GetActiveDomains(a1, v27, &v24, 0, *(a1 + 156), 1);
    if (v24)
    {
      v2 = 0;
      v3 = 1;
      do
      {
        FERuntimeData_GetDomainRange(a1, v27[v2], &v26);
        DomainBlockIndex = FERuntimeData_GetDomainBlockIndex(a1, v27[v2++], &v23, &v22 + 1);
        v5 = v24;
        v6 = v3;
        if (v2 < v24)
        {
          while (1)
          {
            FERuntimeData_GetDomainRange(a1, v27[v6], &v25);
            v7 = FERuntimeData_GetDomainBlockIndex(a1, v27[v6], &v22, &v21);
            if (*(v25 + 2) == 1 && v22 == v23)
            {
              v8 = v21;
              if (v21 == HIWORD(v22))
              {
                v9 = *v26;
                if (v9 == *v25)
                {
                  v10 = v26[1];
                  if (v10 == v25[1])
                  {
                    *(v25 + 2) = 0;
                    log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : Remove duplicate domain %d,%d RANGE %d,%d ?", 1, v8, v9, v10);
                  }
                }
              }
            }

            if ((v7 & 0x80000000) != 0)
            {
              goto LABEL_44;
            }

            ++v6;
            v5 = v24;
            if (v6 >= v24)
            {
              goto LABEL_15;
            }
          }
        }

        v7 = DomainBlockIndex;
LABEL_15:
        ++v3;
      }

      while (v2 < v5);
      if (v5)
      {
        v11 = 0;
        while (1)
        {
          FERuntimeData_GetDomainRange(a1, v27[v11], &v26);
          DomainDefBlockInfo = FERuntimeData_GetDomainBlockIndex(a1, v27[v11], &v23, &v22 + 1);
          if ((DomainDefBlockInfo & 0x80000000) != 0)
          {
            goto LABEL_43;
          }

          DomainDefBlockInfo = FEData_blockData_newGetDomainDefBlockInfo(a1, v23, &v20);
          if ((DomainDefBlockInfo & 0x80000000) != 0)
          {
            goto LABEL_43;
          }

          v13 = (*(v20 + 16) + 72 * HIWORD(v22));
          if (*(*(v20 + 32) + 16 * v13[6] + 8) && *(v26 + 2) == 1)
          {
            v14 = v26[1];
            log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : Modify domain %s RANGE %d,%d ?", (*(v13 + 6) + *v13), *v26, v14);
            if (v11 < v24)
            {
              v15 = v11;
              do
              {
                FERuntimeData_GetDomainRange(a1, v27[v15], &v25);
                DomainDefBlockInfo = FERuntimeData_GetDomainBlockIndex(a1, v27[v15], &v22, &v21);
                if ((DomainDefBlockInfo & 0x80000000) != 0)
                {
                  goto LABEL_43;
                }

                DomainDefBlockInfo = FEData_blockData_newGetDomainDefBlockInfo(a1, v22, &v19);
                if ((DomainDefBlockInfo & 0x80000000) != 0)
                {
                  goto LABEL_43;
                }

                if (v25 != v26 && *(v25 + 2) == 1)
                {
                  v16 = *v25;
                  if (v16 == v14 || v16 == *v26 && v25[1] == v26[1])
                  {
                    v17 = (*(v19 + 16) + 72 * v21);
                    if (!cstdlib_strcmp((*(v13 + 6) + *v13), (*(v17 + 6) + *v17)))
                    {
                      v14 = v25[1];
                      log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : Modify domain %s RANGE %d,%d -> %d %d (merge with %s)", (*(v13 + 6) + *v13), *v26, v26[1], *v26, v14, (*(v17 + 6) + *v17));
                      *(v25 + 2) = 0;
                    }
                  }
                }
              }

              while (++v15 < v24);
            }

            if (v26[1] != v14)
            {
              DomainDefBlockInfo = FERuntimeData_UpdateDomainRange(a1, v11, v14);
              if ((DomainDefBlockInfo & 0x80000000) != 0)
              {
                goto LABEL_43;
              }
            }
          }

          if (++v11 >= v24)
          {
            goto LABEL_42;
          }
        }
      }

      if ((v7 & 0x80000000) != 0)
      {
        goto LABEL_44;
      }
    }

LABEL_42:
    DomainDefBlockInfo = FERuntimeData_PruneAndDumpActiveDomains(a1);
LABEL_43:
    v7 = DomainDefBlockInfo;
LABEL_44:
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : mergeDomainsOnSentence End (%x)", v7);
    return v7;
  }

  else
  {

    return TOKENTNERROR(7);
  }
}

uint64_t tokentn_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2304778241;
  }

  result = 0;
  *a2 = &ITokenizer_0;
  return result;
}

uint64_t tokenTN_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2304778247;
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

uint64_t tokenTN_ObjOpen(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v36 = 0;
  v5 = 2304778250;
  v33 = 0;
  v34 = 0;
  if (!a5)
  {
    return 2304778247;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v38);
  if ((inited & 0x80000000) == 0)
  {
    inited = InitRsrcFunction(a1, a2, &v37);
    if ((inited & 0x80000000) == 0)
    {
      log_OutText(*(v38 + 32), "TOKENTN", 4, 0, "tokentn : ObjOpen Begin");
      v12 = heap_Calloc(*(v38 + 8), 1, 16);
      if (!v12)
      {
        log_OutPublic(*(v38 + 32), "TOKENTN", 21000, 0);
LABEL_43:
        log_OutText(*(v38 + 32), "TOKENTN", 4, 0, "tokentn : ObjOpen End (%x)", v5);
        return v5;
      }

      v13 = v12;
      *v12 = 0;
      *(v12 + 8) = 0;
      v14 = heap_Calloc(*(v38 + 8), 1, 968);
      if (v14)
      {
        v15 = v14;
        *v13 = v14;
        *(v13 + 8) = 58765;
        v16 = v38;
        *v14 = v38;
        *(v14 + 8) = a3;
        v17 = v37;
        *(v14 + 16) = a4;
        *(v14 + 24) = v17;
        *(v14 + 96) = 0;
        v18 = (v14 + 96);
        *(v14 + 32) = a1;
        *(v14 + 40) = a2;
        *(v14 + 104) = 0;
        *(v14 + 120) = 0;
        v19 = (v14 + 120);
        *(v14 + 128) = 0;
        *(v14 + 152) = 0;
        *(v14 + 160) = 0;
        *(v14 + 176) = 0;
        *(v14 + 184) = "TOKENTN";
        *(v14 + 336) = 0;
        *(v14 + 344) = 0;
        *(v14 + 352) = 0;
        *(v14 + 548) = 0;
        *(v14 + 552) = 0;
        *(v14 + 520) = 0;
        *(v14 + 528) = 0;
        *(v14 + 536) = 0;
        *(v14 + 544) = 0;
        *(v14 + 288) = 0;
        *(v14 + 296) = 0;
        *(v14 + 608) = 257;
        v20 = (v14 + 612);
        *(v14 + 612) = 0;
        *(v14 + 960) = 0;
        *(v14 + 280) = 32;
        if ((paramc_ParamGetUInt(*(v16 + 40), "tokentninitstrlen", &v33 + 1) & 0x80000000) == 0)
        {
          *(v15 + 280) = WORD2(v33);
        }

        *(v15 + 282) = 5;
        if ((paramc_ParamGetUInt(*(v38 + 40), "tokentnmaxpcreframeblocks", &v33 + 1) & 0x80000000) == 0)
        {
          *(v15 + 282) = WORD2(v33);
        }

        *(v15 + 284) = 20;
        if ((paramc_ParamGetUInt(*(v38 + 40), "tokentnnumframesinblock", &v33 + 1) & 0x80000000) == 0)
        {
          *(v15 + 284) = WORD2(v33);
        }

        v21 = nuance_pcre_ObjOpen(a3, a4, v15 + 136);
        if ((v21 & 0x80000000) != 0)
        {
          v31 = v21;
          log_OutPublic(*(*v15 + 32), *(v15 + 184), 24021, 0);
          v5 = v31;
        }

        else
        {
          Object = addIdentifier2List_0(v15, "x");
          if ((Object & 0x80000000) == 0)
          {
            if ((objc_GetObject(*(v38 + 48), "FE_DCTLKP", &v35) & 0x80000000) != 0)
            {
              v5 = 0;
              v30 = 24022;
              goto LABEL_47;
            }

            v23 = v35;
            *(v15 + 88) = *(v35 + 8);
            *v18 = *(v23 + 16);
            if ((objc_GetObject(*(v38 + 48), "FE_DEPES", &v34) & 0x80000000) != 0)
            {
              v5 = 0;
              v30 = 24023;
              goto LABEL_47;
            }

            v24 = v34;
            *(v15 + 112) = *(v34 + 8);
            *v19 = *(v24 + 16);
            Object = objc_GetObject(*(v38 + 48), "LINGDB", &v36);
            if ((Object & 0x80000000) == 0)
            {
              *(v15 + 64) = *(v36 + 8);
              Object = FEData_ObjOpen(a3, a4, v15);
              if ((Object & 0x80000000) == 0)
              {
                Object = FERuntimeData_ObjOpen(v15);
                if ((Object & 0x80000000) == 0)
                {
                  Object = FEFunctionMap_ObjOpen(v15);
                  if ((Object & 0x80000000) == 0)
                  {
                    Object = tokenizer_ObjOpen(v15);
                    if ((Object & 0x80000000) == 0)
                    {
                      Object = textnormalizer_ObjOpen(v15);
                      if ((Object & 0x80000000) == 0)
                      {
                        Object = createIDStrings_0(v15);
                        if ((Object & 0x80000000) == 0)
                        {
                          if (!*(v15 + 336))
                          {
                            goto LABEL_49;
                          }

                          v25 = 0;
                          do
                          {
                            log_OutText(*(*v15 + 32), *(v15 + 184), 5, 0, "tokentn : identifier=%s", *(*(v15 + 344) + 8 * v25++));
                            v26 = *(v15 + 336);
                          }

                          while (v25 < v26);
                          if (!*(v15 + 336))
                          {
LABEL_49:
                            log_OutPublic(*(*v15 + 32), "TOKENTN", 24024, 0);
                            v5 = 2304778240;
                            goto LABEL_42;
                          }

                          Object = FEData_blockData_loadDataFiles(v15, v26, *(v15 + 344), (v15 + 616));
                          if ((Object & 0x80000000) == 0)
                          {
                            Object = getFECFGInfo_0(v15);
                            if ((Object & 0x80000000) == 0)
                            {
                              Object = nn_tn_checkIfActive(a3, a4, v38, *(v15 + 184), v20);
                              if ((Object & 0x80000000) == 0)
                              {
                                if (*v20 != 1 || (Object = nn_tn_Load(a3, a4, *(v15 + 32), *(v15 + 40), v38, *(v15 + 184), *(v15 + 88), v27, *(v15 + 96), *(v15 + 104), v15 + 640), (Object & 0x80000000) == 0))
                                {
                                  *(v15 + 192) = heap_Alloc;
                                  *(v15 + 200) = heap_Calloc;
                                  *(v15 + 208) = heap_Realloc;
                                  *(v15 + 216) = heap_Free;
                                  v28 = OOCAllocator_Con(v15 + 224, (v15 + 192), *(*v15 + 8));
                                  v5 = LH_ERROR_to_VERROR(v28);
                                  if ((v5 & 0x80000000) != 0)
                                  {
                                    log_OutPublic(*(*v15 + 32), "TOKENTN", 24024, 0);
                                  }

                                  else
                                  {
                                    *(v15 + 264) = 0;
                                    if (*(v15 + 616) != 1)
                                    {
LABEL_48:
                                      *a5 = v13;
                                      *(a5 + 8) = 58764;
                                      goto LABEL_43;
                                    }

                                    v29 = load_lua_code_0(v15, &v33);
                                    v5 = v29;
                                    if ((v29 & 0x80000000) == 0 && !v33)
                                    {
                                      v30 = 24071;
LABEL_47:
                                      log_OutPublic(*(*v15 + 32), *(v15 + 184), v30, 0);
                                      goto LABEL_48;
                                    }

                                    if ((v29 & 0x80000000) == 0)
                                    {
                                      goto LABEL_48;
                                    }
                                  }

                                  goto LABEL_42;
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
          }

          v5 = Object;
        }
      }

LABEL_42:
      tokenTN_loc_ObjClose(v38, v13);
      goto LABEL_43;
    }
  }

  return inited;
}

uint64_t tokenTN_ObjClose(uint64_t **a1, int a2)
{
  v3 = 2304778248;
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) == 0 && (safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) == 0)
  {
    v4 = *a1;
    v5 = (*a1)[23];
    log_OutText(*(**a1 + 32), v5, 4, 0, "tokentn : ObjClose Begin");
    v6 = *v4;
    v3 = FEData_blockData_unloadDataFiles(v4);
    v7 = v4[34];
    if (v7)
    {
      OOC_PlacementDeleteObject((v4 + 28), v7);
      v4[34] = 0;
    }

    OOCAllocator_Des();
    tokenTN_loc_ObjClose(v6, a1);
    log_OutText(*(v6 + 32), v5, 4, 0, "tokentn : ObjClose End (%x)", v3);
  }

  return v3;
}

uint64_t tokenTN_ObjReopen(uint64_t *a1, int a2)
{
  v3 = 2304778248;
  v15 = 0;
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) == 0 && (safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) == 0)
  {
    v4 = *a1;
    v5 = *(v4 + 344);
    if (v5)
    {
      if (*(v4 + 336))
      {
        v6 = 0;
        do
        {
          heap_Free(*(*v4 + 8), *(*(v4 + 344) + 8 * v6));
          *(*(v4 + 344) + 8 * v6++) = 0;
        }

        while (v6 < *(v4 + 336));
        v5 = *(v4 + 344);
      }

      heap_Free(*(*v4 + 8), v5);
      *(v4 + 344) = 0;
      *(v4 + 336) = 0;
      *(v4 + 352) = 0;
      *(v4 + 608) = 257;
    }

    IDStrings_0 = addIdentifier2List_0(v4, "x");
    if ((IDStrings_0 & 0x80000000) != 0)
    {
      goto LABEL_30;
    }

    IDStrings_0 = createIDStrings_0(v4);
    if ((IDStrings_0 & 0x80000000) != 0)
    {
      goto LABEL_30;
    }

    if (!*(v4 + 344))
    {
      return 6;
    }

    if (*(v4 + 336))
    {
      v8 = 0;
      do
      {
        log_OutText(*(*v4 + 32), *(v4 + 184), 5, 0, "tokentn : identifier=%s", *(*(v4 + 344) + 8 * v8++));
      }

      while (v8 < *(v4 + 336));
    }

    IDStrings_0 = getFECFGInfo_0(v4);
    if ((IDStrings_0 & 0x80000000) != 0)
    {
      goto LABEL_30;
    }

    v9 = *(v4 + 288);
    if (v9)
    {
      heap_Free(*(*v4 + 8), v9);
      *(v4 + 288) = 0;
    }

    IDStrings_0 = FEData_blockData_unloadUnusedDataFiles(v4);
    if ((IDStrings_0 & 0x80000000) != 0)
    {
      goto LABEL_30;
    }

    *(v4 + 960) = 0;
    v10 = *(v4 + 336);
    if (!*(v4 + 336))
    {
      log_OutPublic(*(*v4 + 32), "TOKENTN", 24024, 0);
      return 2304778240;
    }

    *(v4 + 616) = 0;
    IDStrings_0 = FEData_blockData_loadDataFiles(v4, v10, *(v4 + 344), (v4 + 616));
    if ((IDStrings_0 & 0x80000000) != 0 || *(v4 + 612) == 1 && (IDStrings_0 = nn_tn_UnLoad(*v4, *(v4 + 24), v4 + 640), (IDStrings_0 & 0x80000000) != 0))
    {
LABEL_30:
      v3 = IDStrings_0;
    }

    else
    {
      *(v4 + 612) = 0;
      v3 = nn_tn_checkIfActive(*(v4 + 8), *(v4 + 16), *v4, *(v4 + 184), (v4 + 612));
      if ((v3 & 0x80000000) == 0)
      {
        if (*(v4 + 612) != 1 || (v3 = nn_tn_Load(*(v4 + 8), *(v4 + 16), *(v4 + 32), *(v4 + 40), *v4, *(v4 + 184), *(v4 + 88), v11, *(v4 + 96), *(v4 + 104), v4 + 640), (v3 & 0x80000000) == 0))
        {
          if (*(v4 + 616) != 1)
          {
            return v3;
          }

          v12 = load_lua_code_0(v4, &v15);
          v3 = v12;
          if ((v12 & 0x80000000) == 0 && !v15)
          {
            log_OutPublic(*(*v4 + 32), *(v4 + 184), 24071, 0);
            return v3;
          }

          if ((v12 & 0x80000000) == 0)
          {
            return v3;
          }
        }
      }
    }

    v13 = *(v4 + 272);
    if (v13)
    {
      OOC_PlacementDeleteObject(v4 + 224, v13);
      *(v4 + 272) = 0;
    }

    OOCAllocator_Des();
  }

  return v3;
}

uint64_t tokenTN_ProcessStart(uint64_t *a1, int a2)
{
  v3 = 2304778248;
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) == 0 && (safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) == 0)
  {
    v4 = *a1;
    log_OutText(*(*v4 + 32), *(v4 + 184), 4, 0, "tokentn : ProcessStart Begin");
    if (*(v4 + 336))
    {
      v3 = nuance_pcre_Init(*(v4 + 136), *(v4 + 144), *(v4 + 282), *(v4 + 284));
      if ((v3 & 0x80000000) != 0)
      {
        log_OutPublic(*(*v4 + 32), *(v4 + 184), 24051, 0);
      }

      log_OutText(*(*v4 + 32), *(v4 + 184), 4, 0, "tokentn : ProcessStart End (%x)", v3);
    }

    else
    {
      log_OutPublic(*(*v4 + 32), "TOKENTN", 24024, 0);
      return 2304778240;
    }
  }

  return v3;
}

uint64_t tokenTN_Process(uint64_t *a1, int a2, void *a3, int a4, _DWORD *a5)
{
  v24 = 0;
  v23 = 0;
  matched = 2304778248;
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) != 0)
  {
    return matched;
  }

  if ((safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) != 0)
  {
    return matched;
  }

  v10 = *a1;
  log_OutText((*v10)[4], v10[23], 4, 0, "tokentn : Process Begin");
  v10[9] = a3;
  *(v10 + 20) = a4;
  *(v10 + 137) = log_GetLogLevel((*v10)[4]) > 4;
  v10[33] = 0;
  matched = LingDBHasSentence(v10[8], v10[9], v10[10], &v24);
  if ((matched & 0x80000000) != 0)
  {
    return matched;
  }

  if (!v24)
  {
    goto LABEL_32;
  }

  inited = initLDO((v10 + 28), v10 + 33);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_33;
  }

  matched = importFromLingDB(*v10, v10[8], v10[9], v10[10], v10 + 33);
  if ((matched & 0x80000000) == 0)
  {
    v12 = v10[33];
    if (!v12)
    {
      goto LABEL_32;
    }

    v13 = LDO_ComputeText(v12, &v23);
    matched = LH_ERROR_to_VERROR(v13);
    if ((matched & 0x80000000) == 0)
    {
      v10[38] = LHString_BorrowCPtr(v23);
      *(v10 + 156) = LHString_Length(v23);
      if (!v10[38])
      {
        goto LABEL_18;
      }

      log_OutText((*v10)[4], v10[23], 5, 0, "<LOGFE> processing sentence : _%s_", v10[38]);
      inited = tokenTN_init_ProcessData(v10);
      if ((inited & 0x80000000) != 0)
      {
        goto LABEL_33;
      }

      if (*(v10 + 240) == 1 && *(v10 + 154) == 1)
      {
        inited = tokentn_AllInOneLoop(v10, 1);
        if ((inited & 0x80000000) != 0)
        {
          goto LABEL_33;
        }

        if (*(v10 + 137) == 1)
        {
          inited = dumpTokenLDO(v10, "At End of btok Processing", 1);
          if ((inited & 0x80000000) != 0)
          {
            goto LABEL_33;
          }
        }
      }

      inited = tokentn_AllInOneLoop(v10, 0);
      if ((inited & 0x80000000) != 0)
      {
        goto LABEL_33;
      }

      matched = clearBTokMatchList(v10);
      if ((matched & 0x80000000) == 0)
      {
LABEL_18:
        v14 = v10[33];
        if (v14)
        {
          if (*(v10 + 154) != 1 || (v15 = v10[34]) == 0)
          {
LABEL_27:
            v17 = v10[33];
            if (v17)
            {
              matched = exportToLingDB(*v10, v10[8], v10[9], v10[10], (v10 + 28), v17, 1, 0);
              if ((matched & 0x80000000) != 0)
              {
                goto LABEL_34;
              }

              if (v10[38])
              {
                if (*(v10 + 137) == 1)
                {
                  matched = dumpTokenRecordsInLingDB(v10, "LINGDB At End of Processing", 1);
                  if ((matched & 0x80000000) != 0)
                  {
                    goto LABEL_34;
                  }
                }
              }
            }

            goto LABEL_32;
          }

          if (*(v10 + 137) != 1)
          {
LABEL_24:
            v16 = LuaVMLDO_RunFunction(v15, "run", v14);
            matched = LH_ERROR_to_VERROR(v16);
            if ((matched & 0x80000000) != 0)
            {
              log_OutPublic((*v10)[4], v10[23], 24072, 0);
              goto LABEL_34;
            }

            if (*(v10 + 137) == 1)
            {
              matched = dumpTokenLDO(v10, "At End of Processing; after Lua", 1);
              if ((matched & 0x80000000) != 0)
              {
                goto LABEL_34;
              }
            }

            goto LABEL_27;
          }

          inited = dumpTokenLDO(v10, "At End of Processing; before Lua", 1);
          if ((inited & 0x80000000) == 0)
          {
            v14 = v10[33];
            v15 = v10[34];
            goto LABEL_24;
          }

LABEL_33:
          matched = inited;
          goto LABEL_34;
        }

LABEL_32:
        *a5 = 1;
      }
    }
  }

LABEL_34:
  if (v23)
  {
    OOC_PlacementDeleteObject((v10 + 28), v23);
    v23 = 0;
  }

  v18 = v10[33];
  if (v18)
  {
    deinitLDO((v10 + 28), v18);
    v10[33] = 0;
  }

  v19 = v10[69];
  if (v19)
  {
    heap_Free((*v10)[1], v19);
    v10[69] = 0;
  }

  clearStrRes(*v10, (v10 + 49));
  clearStrRes(*v10, (v10 + 51));
  clearStrRes(*v10, (v10 + 61));
  clearStrRes(*v10, (v10 + 70));
  clearStrRes(*v10, (v10 + 72));
  clearStrRes(*v10, (v10 + 74));
  clearStrRes(*v10, (v10 + 63));
  clearStrRes(*v10, (v10 + 53));
  clearStrRes(*v10, (v10 + 59));
  clearStrRes(*v10, (v10 + 55));
  clearStrRes(*v10, (v10 + 57));
  freeAlignmentData(v10);
  freeMatchList(v10);
  freeSolutionList(v10);
  v20 = v10[40];
  if (v20)
  {
    heap_Free((*v10)[1], v20);
    v10[40] = 0;
  }

  v21 = v10[41];
  if (v21)
  {
    heap_Free((*v10)[1], v21);
    v10[41] = 0;
  }

  log_OutText((*v10)[4], v10[23], 4, 0, "tokentn : Process End (%x)", matched);
  return matched;
}

uint64_t tokenTN_ProcessEnd(uint64_t *a1, int a2)
{
  v3 = 2304778248;
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) == 0 && (safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) == 0)
  {
    v4 = *a1;
    log_OutText(*(**a1 + 32), *(*a1 + 184), 4, 0, "tokentn : ProcessEnd Begin");
    v5 = nuance_pcre_DeInit(*(v4 + 136), *(v4 + 144));
    log_OutText(*(*v4 + 32), *(v4 + 184), 4, 0, "tokentn : ProcessEnd End (%x)", v5);
    return 0;
  }

  return v3;
}

uint64_t addIdentifier2List_0(uint64_t a1, char *__s2)
{
  v4 = *(a1 + 336);
  if (*(a1 + 336))
  {
    v5 = 0;
    do
    {
      v6 = *(a1 + 344);
      if (v6)
      {
        if (!cstdlib_strcmp(*(v6 + 8 * v5), __s2))
        {
          return 0;
        }

        v4 = *(a1 + 336);
      }

      ++v5;
    }

    while (v5 < v4);
    if (!v4)
    {
      goto LABEL_10;
    }

    v7 = heap_Realloc(*(*a1 + 8), *(a1 + 344), 8 * v4 + 8);
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_10:
    v7 = heap_Calloc(*(*a1 + 8), 1, 8);
    if (!v7)
    {
LABEL_13:
      v13 = 2304778250;
      log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0);
      return v13;
    }
  }

  *(a1 + 344) = v7;
  v8 = *(*a1 + 8);
  v9 = cstdlib_strlen(__s2);
  v10 = heap_Calloc(v8, 1, (v9 + 1));
  v11 = *(a1 + 336);
  *(*(a1 + 344) + 8 * v11) = v10;
  v12 = *(*(a1 + 344) + 8 * v11);
  if (!v12)
  {
    goto LABEL_13;
  }

  cstdlib_strcpy(v12, __s2);
  v13 = 0;
  ++*(a1 + 336);
  return v13;
}

uint64_t createIDStrings_0(_BYTE *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  __s = 0;
  *__s2 = 0u;
  v19 = 0u;
  *v16 = 0u;
  v17 = 0u;
  *v14 = 0u;
  v15 = 0u;
  result = paramc_ParamGet(*(*a1 + 40), "langcode", &__s, 0);
  if ((result & 0x80000000) == 0)
  {
    if (cstdlib_strlen(__s))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        v5 = __s;
        v6 = __s[v3];
        v16[v3] = v6;
        __s2[v3] = v6;
        v3 = ++v4;
      }

      while (cstdlib_strlen(v5) > v4);
    }

    strcpy(&__s2[2], "x");
    v16[3] = 0;
    result = paramc_ParamGet(*(*a1 + 40), "voice", &__s, 0);
    if ((result & 0x80000000) == 0)
    {
      if (cstdlib_strlen(__s) <= 0x1A)
      {
        if (cstdlib_strlen(__s))
        {
          v7 = 0;
          v8 = 0;
          do
          {
            v9 = __s;
            v14[v7] = __s[v7];
            v7 = ++v8;
          }

          while (cstdlib_strlen(v9) > v8);
        }

        v14[cstdlib_strlen(__s)] = 0;
        if (cstdlib_strlen(__s2) >= 1)
        {
          v10 = 0;
          do
          {
            __s2[v10] = ssft_tolower(__s2[v10]);
            ++v10;
          }

          while (cstdlib_strlen(__s2) > v10);
        }

        if (cstdlib_strlen(v16) >= 1)
        {
          v11 = 0;
          do
          {
            v16[v11] = ssft_tolower(v16[v11]);
            ++v11;
          }

          while (cstdlib_strlen(v16) > v11);
        }

        if (cstdlib_strlen(v14) >= 1)
        {
          v12 = 0;
          do
          {
            v14[v12] = ssft_tolower(v14[v12]);
            ++v12;
          }

          while (cstdlib_strlen(v14) > v12);
        }

        result = addIdentifier2List_0(a1, __s2);
        if ((result & 0x80000000) == 0)
        {
          a1[352] = a1[336];
          result = addIdentifier2List_0(a1, v16);
          if ((result & 0x80000000) == 0)
          {
            return addIdentifier2List_0(a1, v14);
          }
        }
      }

      else
      {
        return 2304778240;
      }
    }
  }

  return result;
}

uint64_t getFECFGInfo_0(uint64_t a1)
{
  v2 = 2304778240;
  v11 = -1;
  __c_1 = 0;
  __c = 0;
  if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nrpart_g2p", &__c_1, &v11, &__c) & 0x80000000) == 0)
  {
    if (v11 == 1 && __c_1 != 0)
    {
      v4 = cstdlib_strchr(*__c_1, __c);
      if (v4)
      {
        *v4 = 0;
      }

      *(a1 + 608) = cstdlib_atoi(*__c_1);
    }

    v11 = -1;
    v5 = (*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nrpart_tn", &__c_1, &v11, &__c);
    if ((v5 & 0x80000000) == 0)
    {
      v6 = v5;
      if (v11 == 1 && __c_1)
      {
        v7 = cstdlib_strchr(*__c_1, __c);
        if (v7)
        {
          *v7 = 0;
        }

        *(a1 + 609) = cstdlib_atoi(*__c_1);
      }

      return v6;
    }
  }

  return v2;
}

uint64_t load_lua_code_0(uint64_t *a1, _DWORD *a2)
{
  *a2 = 0;
  v4 = a1[34];
  if (v4)
  {
    OOC_PlacementDeleteObject((a1 + 28), v4);
    a1[34] = 0;
  }

  OOCAllocator_Des();
  IsLuaCodeAvailable = LuaVMLDO_IsLuaCodeAvailable(a1[1], a1[2], 0, a2);
  v6 = LH_ERROR_to_VERROR(IsLuaCodeAvailable);
  if ((v6 & 0x80000000) == 0)
  {
    if (*a2 != 1)
    {
      return v6;
    }

    *a2 = 0;
    v7 = OOCAllocator_Con((a1 + 28), a1 + 12, *(*a1 + 8));
    v8 = LH_ERROR_to_VERROR(v7);
    if ((v8 & 0x80000000) != 0 || (v9 = PNEW_LuaVMLDO_Con((a1 + 28), (a1 + 28), a1[1], a1[2], "TOKENTN", a1 + 34), v8 = LH_ERROR_to_VERROR(v9), (v8 & 0x80000000) != 0))
    {
      v6 = v8;
    }

    else
    {
      ScriptFromRIFF = LuaVMLDO_LoadScriptFromRIFF(a1[34], 0);
      v6 = LH_ERROR_to_VERROR(ScriptFromRIFF);
      if ((v6 & 0x80000000) == 0)
      {
        *a2 = 1;
        return v6;
      }
    }
  }

  v11 = a1[34];
  if (v11)
  {
    OOC_PlacementDeleteObject((a1 + 28), v11);
    a1[34] = 0;
  }

  OOCAllocator_Des();
  return v6;
}

uint64_t tokenTN_loc_ObjClose(uint64_t result, uint64_t *a2)
{
  if (a2)
  {
    v3 = result;
    log_OutText(*(result + 32), "TOKENTN", 4, 0, "tokentn : loc ObjClose Begin");
    NullHandle = safeh_GetNullHandle();
    v6 = 0;
    if (!safeh_HandlesEqual(*a2, a2[1], NullHandle, v5))
    {
      result = safeh_HandleCheck(*a2, a2[1], 58765, 968);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v6 = result;
      v7 = *a2;
      v8 = tokenizer_ObjClose(*a2);
      if (v8 < 0)
      {
        v6 = v8;
      }

      v9 = textnormalizer_ObjClose(v7);
      if (v9 < 0)
      {
        v6 = v9;
      }

      v10 = safeh_GetNullHandle();
      if (!safeh_HandlesEqual(*(v7 + 136), *(v7 + 144), v10, v11))
      {
        v12 = nuance_pcre_ObjClose(*(v7 + 136), *(v7 + 144));
        if (v12 < 0)
        {
          v6 = v12;
        }
      }

      v13 = FEData_ObjClose(v7);
      if (v13 < 0)
      {
        v6 = v13;
      }

      *(v7 + 152) = 0;
      v14 = FERuntimeData_ObjClose(v7);
      if (v14 < 0)
      {
        v6 = v14;
      }

      *(v7 + 176) = 0;
      v15 = FEFunctionMap_ObjClose(v7);
      if (v15 < 0)
      {
        v6 = v15;
      }

      *(v7 + 160) = 0;
      if (*(v7 + 88))
      {
        objc_ReleaseObject(*(v3 + 48), "FE_DCTLKP");
      }

      if (*(v7 + 112))
      {
        objc_ReleaseObject(*(v3 + 48), "FE_DEPES");
      }

      if (*(v7 + 64))
      {
        objc_ReleaseObject(*(v3 + 48), "LINGDB");
      }

      v16 = *(v7 + 344);
      if (v16)
      {
        if (*(v7 + 336))
        {
          v17 = 0;
          do
          {
            heap_Free(*(v3 + 8), *(*(v7 + 344) + 8 * v17));
            *(*(v7 + 344) + 8 * v17++) = 0;
          }

          while (v17 < *(v7 + 336));
          v16 = *(v7 + 344);
        }

        heap_Free(*(v3 + 8), v16);
      }

      v18 = *(v7 + 288);
      if (v18)
      {
        heap_Free(*(v3 + 8), v18);
      }

      if (*(v7 + 612) == 1)
      {
        v19 = nn_tn_UnLoad(*v7, *(v7 + 24), v7 + 640);
        if (v19 < 0)
        {
          v6 = v19;
        }
      }

      heap_Free(*(v3 + 8), v7);
    }

    heap_Free(*(v3 + 8), a2);
    return log_OutText(*(v3 + 32), "TOKENTN", 4, 0, "tokentn : loc ObjClose End (%x)", v6);
  }

  return result;
}

uint64_t tokenTN_init_ProcessData(uint64_t *a1)
{
  v2 = 2304778250;
  v3 = heap_Calloc(*(*a1 + 8), 1, *(a1 + 156) + 1);
  a1[69] = v3;
  if (v3)
  {
    *(a1 + 157) = 1;
    if (*(a1 + 156))
    {
      v4 = 0;
      while (utf8_strchr(g_szSpace_1, (a1[38] + v4)))
      {
        v4 += utf8_determineUTF8CharLength(*(a1[38] + v4));
        v5 = *(a1 + 156);
        if (v5 <= v4)
        {
          goto LABEL_8;
        }
      }

      v5 = *(a1 + 156);
LABEL_8:
      if (v5 > v4)
      {
        do
        {
          v4 = v4;
          if (utf8_strchr(g_szSpace_1, (a1[38] + v4)))
          {
            ++*(a1 + 157);
            for (i = *(a1[38] + v4); ; i = *(a1[38] + v4))
            {
              v4 += utf8_determineUTF8CharLength(i);
              if (*(a1 + 156) <= v4 || !utf8_strchr(g_szSpace_1, (a1[38] + v4)))
              {
                break;
              }
            }
          }

          else
          {
            LOWORD(v4) = v4 + utf8_determineUTF8CharLength(*(a1[38] + v4));
          }
        }

        while (*(a1 + 156) > v4);
      }
    }

    inited = initStrRes(a1, (a1 + 49));
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, (a1 + 51));
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, (a1 + 61));
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, (a1 + 70));
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, (a1 + 72));
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, (a1 + 74));
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, (a1 + 63));
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, (a1 + 53));
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, (a1 + 59));
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, (a1 + 55));
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, (a1 + 57));
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initAlignmentData(a1);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initMatchList(a1);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    v2 = initSolutionList(a1);
    if ((v2 & 0x80000000) == 0)
    {
      v8 = heap_Calloc(*(*a1 + 8), 1, 40);
      a1[40] = v8;
      v9 = *a1;
      if (!v8)
      {
LABEL_33:
        log_OutPublic(*(v9 + 32), a1[23], 24048, 0);
        return 2304778250;
      }

      v10 = heap_Calloc(*(v9 + 8), 1, 48);
      a1[41] = v10;
      if (!v10)
      {
        v9 = *a1;
        goto LABEL_33;
      }
    }
  }

  return v2;
}

uint64_t tokentn_ReadSentence(void *a1)
{
  v5 = 0;
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : ReadSentence Begin");
  a1[38] = 0;
  v2 = (*(a1[8] + 104))(a1[9], a1[10], 1, 0, &v5);
  if ((v2 & 0x80000000) != 0)
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24034, 0);
    return TOKENTNERROR(0);
  }

  else
  {
    v3 = v2;
    if (v5)
    {
      (*(a1[8] + 184))(a1[9], a1[10]);
    }

    log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : ReadSentence End (%x)", v3);
  }

  return v3;
}

BOOL filteredTriggerType(int a1, unsigned int a2)
{
  if (!a1 || a1 == 1 && a2 == 2 || a1 == 2 && a2 == 1 || a1 == 3 && !a2 || a1 == 4 && a2 < 2)
  {
    return 1;
  }

  if (a1 == 6)
  {
    if (a2 - 1 < 2)
    {
      return 1;
    }
  }

  else if (a1 == 5)
  {
    return (a2 & 0xFFFFFFFD) == 0;
  }

  return 0;
}

uint64_t tokentn_ApplyOneRule(uint64_t *a1, uint64_t *a2, int a3, unsigned int a4, __int16 a5, __int16 a6, __int16 a7, __int16 a8)
{
  if (!filteredTriggerType(a3, a4))
  {
    log_OutText(*(*a1 + 32), a1[23], 5, 0, "rule %s (token %s, %d,%d) blocked by triggerType %s", *(*a2 + 24), TOKENTSTR_1[a4]);
    return 0;
  }

  if (*(a1 + 240) == 1 && blockedByBtok(a1, a5, a6) == 1)
  {
    log_OutText(*(*a1 + 32), a1[23], 5, 0, "rule %s (token %s, %d,%d) blocked by prior btok", *(*a2 + 24));
    return 0;
  }

  v15 = *a2;
  v16 = *(*a2 + 8);
  v17 = *v16;
  *(v17 + 82) = 0;
  *(v17 + 40) = 0;
  v18 = *(v15 + 24);
  v16[2] = a1[38];
  v16[3] = v18;
  *(v17 + 88) = *(v15 + 48);
  *(v17 + 104) = a7;
  *(v17 + 106) = a8;
  *(v16 + 20) = *(v15 + 40);
  *(v16 + 26) = *(v15 + 44);
  *(v16 + 27) = *(v15 + 46);
  *(v16 + 11) = 0;
  *(v16 + 12) = 0;
  result = tokenizer_apply_regex_LongestMatch(a1, v15);
  if ((result & 0x80000000) == 0)
  {
    v20 = *(*a2 + 8);
    **(v20 + 8) = 0;
    *(v20 + 44) = 0;
  }

  return result;
}

uint64_t tokentn_AllInOneLoop(uint64_t a1, int a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v54 = 0;
  bzero(v60, 0x3E8uLL);
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v4 = *(*a1 + 32);
  v5 = *(a1 + 184);
  if (*(a1 + 960) == 1)
  {
    log_OutText(v4, v5, 4, 0, "tokentn : AllInOneLoop Begin (btok=%d)");
  }

  else
  {
    log_OutText(v4, v5, 4, 0, "tokentn : AllInOneLoop Begin");
  }

  if ((paramc_ParamGetInt(*(*a1 + 40), "maxTNNNcallspersent", &v51) & 0x80000000) == 0)
  {
    v6 = v51;
    *(a1 + 728) = v51;
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "set maxNNCallsPerSent to %d", v6);
  }

  *(a1 + 730) = 0;
  v7 = *(a1 + 168);
  *(*(*v7 + 8) + 32) = a1;
  v8 = setDomainsOnSentence(a1);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v9 = mergeDomainsOnSentence(a1);
  if ((v9 & 0x80000000) == 0)
  {
    v10 = *v7;
    *(*(*v7 + 8) + 16) = *(a1 + 304);
    *(v10 + 64) = 16;
    *(v10 + 42) = *(a1 + 312);
    v11 = *(*(a1 + 264) + 16);
    NumberChildren = LDOTreeNode_GetNumberChildren(v11);
    v13 = *(*a1 + 32);
    v14 = *(a1 + 184);
    if (NumberChildren)
    {
      v48 = a2;
      log_OutText(v13, v14, 4, 0, "tokentn : start loop...");
      v16 = *(v11 + 80);
      v15 = *(v11 + 88);
      if (v16 < v15)
      {
        v47 = v15;
        while (1)
        {
          v49 = 0;
          __s1 = 0;
          v17 = *v16;
          v18 = LDOTreeNode_ComputeAbsoluteFrom(*v16, &v49 + 1);
          ActiveDomains = LH_ERROR_to_VERROR(v18);
          if ((ActiveDomains & 0x80000000) != 0 || (v20 = LDOTreeNode_ComputeAbsoluteTo(v17, &v49), ActiveDomains = LH_ERROR_to_VERROR(v20), (ActiveDomains & 0x80000000) != 0))
          {
LABEL_66:
            v9 = ActiveDomains;
            goto LABEL_67;
          }

          Type = LDOObject_GetType(v17, &__s1);
          v9 = LH_ERROR_to_VERROR(Type);
          if ((v9 & 0x80000000) != 0)
          {
            goto LABEL_67;
          }

          v22 = WORD2(v49);
          v23 = v49;
          if (cstdlib_strcmp(__s1, "TOKEN_ALPHA"))
          {
            if (cstdlib_strcmp(__s1, "TOKEN_DIGIT"))
            {
              if (cstdlib_strcmp(__s1, "TOKEN_PUNCT"))
              {
                goto LABEL_58;
              }

              v24 = 2;
            }

            else
            {
              v24 = 1;
            }
          }

          else
          {
            v24 = 0;
          }

          v53 = 0;
          ActiveDomains = FERuntimeData_GetActiveDomains(a1, v60, &v53, v22, v23, 0);
          if ((ActiveDomains & 0x80000000) != 0)
          {
            goto LABEL_66;
          }

          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "START basic token %d,%d ... %d active domains", v22, v23, v53);
          if (v53)
          {
            for (i = 0; i < v53; ++i)
            {
              v26 = v60[i];
              v59 = 0;
              v58 = 0;
              v57 = 0;
              v56 = 0;
              v55 = 0;
              v27 = *(a1 + 168);
              v28 = *v27;
              *(v28 + 46) = 0;
              *(v28 + 44) = v22;
              *(v28 + 48) = 0;
              if ((FERuntimeData_GetDomainRange(a1, v26, &v58) & 0x80000000) == 0)
              {
                log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "Domain %d : range %d,%d", i, *v58, v58[1]);
                *(*v27 + 46) = v58[1];
                if ((FERuntimeData_GetDomainBlockIndex(a1, v26, &v57, &v59) & 0x80000000) == 0 && (FEData_blockData_newGetDomainDefBlockInfo(a1, v57, &v56) & 0x80000000) == 0)
                {
                  v29 = *(v56 + 24);
                  if (v59 <= v29)
                  {
                    v30 = (*(v56 + 16) + 72 * v59);
                    if (v48 == 1 && *(a1 + 960) == 1)
                    {
                      if (v30[21])
                      {
                        v31 = 0;
                        v32 = 0;
                        do
                        {
                          v33 = *(v30 + 4);
                          v34 = *v27;
                          *(v34 + 40) = 0;
                          v34 += 40;
                          v35 = v33 + v31;
                          *(v34 + 8) = v35;
                          if ((FEData_blockData_getBTokAndRegexData(a1, *(v35 + 2), *(v35 + 4), (v34 - 8), v34, (v34 - 16), &v55) & 0x80000000) != 0)
                          {
                            break;
                          }

                          if ((tokentn_ApplyOneRule(a1, v27, v55, v24, v22, v23, v57, v59) & 0x80000000) != 0)
                          {
                            break;
                          }

                          ++v32;
                          v31 += 12;
                        }

                        while (v32 < v30[21]);
                      }
                    }

                    else
                    {
                      v36 = *(v56 + 32) + 16 * v30[6];
                      log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "doing domain %d, Domain[%s:%s] (applying %d rules)", i, *v56, (*(v30 + 6) + *v30), *(v36 + 8));
                      if (*(v36 + 8))
                      {
                        v37 = 0;
                        v38 = 0;
                        do
                        {
                          v39 = *v36 + v37;
                          v40 = *v27;
                          *(v40 + 40) = 0;
                          v40 += 40;
                          *(v40 + 8) = v39;
                          if ((FEData_blockData_getTokenAndRegexData(a1, v39, (v40 - 8), v40, (v40 - 16), &v55) & 0x80000000) != 0)
                          {
                            break;
                          }

                          if ((tokentn_ApplyOneRule(a1, v27, v55, v24, v22, v23, v57, v59) & 0x80000000) != 0)
                          {
                            break;
                          }

                          ++v38;
                          v37 += 12;
                        }

                        while (v38 < *(v36 + 8));
                      }
                    }
                  }

                  else
                  {
                    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24028, "%s%d%s%d", "domain", v59, "numDomains", v29);
                    TOKENTNERROR(0);
                  }
                }
              }
            }
          }

          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "END of loop for basic token %d,%d", v22, v23);
          v9 = tokenizer_ResolveMatches(a1);
          if ((v9 & 0x80000000) != 0)
          {
            goto LABEL_67;
          }

          if (!FERuntimeData_GetNumMatches(a1))
          {
            break;
          }

          v9 = textnormalizer_DoExpansionActions(a1, &v54);
          v15 = v47;
          if ((v9 & 0x80000000) != 0)
          {
            log_OutPublic(*(*a1 + 32), *(a1 + 184), 24029, 0);
            goto LABEL_67;
          }

          v41 = HIDWORD(v49);
          v42 = v54;
          if (HIDWORD(v49) >= v54)
          {
            v43 = HIDWORD(v49);
            v44 = v54;
          }

          else
          {
            ++v16;
            v43 = HIDWORD(v49);
            v44 = v54;
            while (v16 != v47)
            {
              v45 = LDOTreeNode_ComputeAbsoluteFrom(*v16, &v49 + 1);
              v9 = LH_ERROR_to_VERROR(v45);
              if ((v9 & 0x80000000) != 0)
              {
                goto LABEL_67;
              }

              v43 = HIDWORD(v49);
              v44 = v54;
              if (HIDWORD(v49) >= v54)
              {
                break;
              }

              ++v16;
            }
          }

          if (v43 > v44)
          {
            log_OutPublic(*(*a1 + 32), *(a1 + 184), 24063, 0);
          }

          FERuntimeData_FreeMatches(a1, 0);
          if (v41 >= v42)
          {
            goto LABEL_58;
          }

LABEL_59:
          if (v16 >= v15)
          {
            goto LABEL_60;
          }
        }

        FERuntimeData_FreeMatches(a1, 0);
        v15 = v47;
LABEL_58:
        ++v16;
        goto LABEL_59;
      }

LABEL_60:
      if ((paramc_ParamGetStr(*(*a1 + 40), "spaceInPYT", &v52) & 0x80000000) != 0 || LH_stricmp(v52, "yes") || (v9 = nntn_write_LD_T_INPUTSPACETAG(a1), (v9 & 0x80000000) == 0))
      {
LABEL_67:
        FERuntimeData_FreeMatches(a1, 1);
        log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "tokentn : AllInOneLoop End (%x)");
      }
    }

    else
    {
      log_OutText(v13, v14, 5, 0, "no basic token records to process");
    }
  }

  return v9;
}

uint64_t FEData_domainDefs_ObjOpen(uint64_t *a1, void *a2)
{
  v4 = *(*a1 + 32);
  v5 = a1[23];
  if (a2)
  {
    log_OutText(v4, v5, 4, 0, "domainDefs : ObjOpen Begin");
    *a2 = 0;
    v6 = heap_Calloc(*(*a1 + 8), 1, 2);
    if (v6)
    {
      v7 = v6;
      cstdlib_memset(v6, 0, 2uLL);
      *v7 = 0;
      *a2 = v7;
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "domainDefs : ObjOpen End (%x)", 0);
      return 0;
    }

    log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);
    v9 = 10;
  }

  else
  {
    log_OutPublic(v4, v5, 24049, 0);
    v9 = 7;
  }

  return FEDATA_ERROR(v9);
}

uint64_t FEData_domainDefs_ObjClose(uint64_t *a1)
{
  v2 = *(a1[19] + 8);
  v3 = *(*a1 + 32);
  v4 = a1[23];
  if (v2)
  {
    log_OutText(v3, v4, 4, 0, "domainDefs : ObjClose Begin");
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "domainDefs : ObjClose End (%x)", 0);
    heap_Free(*(*a1 + 8), v2);
    return 0;
  }

  else
  {
    log_OutPublic(v3, v4, 24049, 0);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_ObjOpen(uint64_t *a1, void *a2)
{
  v4 = *(*a1 + 32);
  v5 = a1[23];
  if (a2)
  {
    log_OutText(v4, v5, 4, 0, "blockData : ObjOpen Begin");
    *a2 = 0;
    v6 = heap_Calloc(*(*a1 + 8), 1, 144);
    if (v6)
    {
      v7 = v6;
      cstdlib_memset(v6, 0, 0x90uLL);
      *v7 = 0;
      v7[17] = 0;
      *a2 = v7;
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "blockData : ObjOpen End (%x)", 0);
      return 0;
    }

    log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);
    v9 = 10;
  }

  else
  {
    log_OutPublic(v4, v5, 24049, 0);
    v9 = 7;
  }

  return FEDATA_ERROR(v9);
}

uint64_t FEData_blockData_ObjClose(uint64_t *a1)
{
  v2 = *(a1[19] + 16);
  v3 = *(*a1 + 32);
  v4 = a1[23];
  if (v2)
  {
    log_OutText(v3, v4, 4, 0, "blockData : ObjClose Begin");
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "blockData : ObjClose End (%x)", 0);
    heap_Free(*(*a1 + 8), v2);
    return 0;
  }

  else
  {
    log_OutPublic(v3, v4, 24049, 0);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_IsRemappable(void *a1, char *__s2, void *a3, _WORD *a4, _WORD *a5)
{
  v5 = *(a1[19] + 16);
  if (!v5)
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5);
    return 0;
  }

  if (!*v5)
  {
    return 0;
  }

  v10 = 0;
  while (1)
  {
    v11 = *(*(*(*(v5 + 17) + 8) + 8 * v10) + 24);
    if (v11)
    {
      if (!*v11)
      {
        v12 = *(*(*(*(v5 + 17) + 8) + 8 * v10) + 24);
        if (*(v12 + 16))
        {
          break;
        }
      }
    }

LABEL_6:
    if (++v10 >= *v5)
    {
      return 0;
    }
  }

  v13 = 0;
  while (1)
  {
    v14 = *(*(v12 + 8) + 8 * v13);
    if (*(v14 + 12))
    {
      break;
    }

LABEL_14:
    ++v13;
    v12 = *(*(*(*(v5 + 17) + 8) + 8 * v10) + 24);
    if (v13 >= *(v12 + 16))
    {
      goto LABEL_6;
    }
  }

  v15 = 0;
  while (cstdlib_strcmp(*(*(v14 + 16) + 8 * v15), __s2))
  {
    if (++v15 >= *(v14 + 12))
    {
      goto LABEL_14;
    }
  }

  *a3 = *v14;
  *a4 = *(v14 + 8);
  *a5 = *(v14 + 10);
  return 1;
}

uint64_t FEData_blockData_newGetDomainDefBlockInfo(void *a1, unsigned int a2, void *a3)
{
  v3 = *(a1[19] + 16);
  if (v3)
  {
    v4 = *v3;
    if (v4 > a2)
    {
      *a3 = *(*(*(*(v3 + 17) + 8) + 8 * a2) + 16);
      return 0;
    }

    log_OutPublic(*(*a1 + 32), a1[23], 24041, "%s%d%s%d", "domain", a2, "max", v4);
    v6 = 25;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0);
    v6 = 7;
  }

  return FEDATA_ERROR(v6);
}

uint64_t FEData_blockData_newGetDomainEntry(void *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v4 = *(a1[19] + 16);
  if (v4)
  {
    if (*v4 <= a2)
    {
      log_OutPublic(*(*a1 + 32), a1[23], 24041, "%s%d%s%d");
    }

    else
    {
      v5 = *(*(*(*(v4 + 17) + 8) + 8 * a2) + 16);
      if (*(v5 + 24) > a3)
      {
        *a4 = *(v5 + 16) + 72 * a3;
        return 0;
      }

      log_OutPublic(*(*a1 + 32), a1[23], 24042, "%s%d%s%d");
    }

    v7 = 25;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0);
    v7 = 7;
  }

  return FEDATA_ERROR(v7);
}

uint64_t FEData_blockData_newGetPriorityList(void *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v4 = *(a1[19] + 16);
  if (v4)
  {
    if (*v4 <= a2)
    {
      log_OutPublic(*(*a1 + 32), a1[23], 24041, "%s%d%s%d");
    }

    else
    {
      v5 = *(*(*(*(v4 + 17) + 8) + 8 * a2) + 16);
      if (*(v5 + 48) > a3)
      {
        *a4 = *(v5 + 32) + 16 * a3;
        return 0;
      }

      log_OutPublic(*(*a1 + 32), a1[23], 24043, "%s%d%s%d");
    }

    v7 = 25;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0);
    v7 = 7;
  }

  return FEDATA_ERROR(v7);
}

uint64_t FEData_blockData_getDomains2SearchIn(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, _WORD *a5, uint64_t a6)
{
  v6 = *(a1[19] + 16);
  if (v6)
  {
    v9 = *v6;
    if (a6 == 1)
    {
      if (*v6)
      {
        v10 = 0;
        v11 = *(*(v6 + 17) + 8);
        do
        {
          if (*(*(v11 + 8 * v10) + 16))
          {
            v12 = *a5;
            if (v12 <= 0x1F2)
            {
              *(a4 + 2 * v12) = v10;
              ++*a5;
              v9 = *v6;
            }
          }

          ++v10;
        }

        while (v10 < v9);
      }
    }

    else if (*v6)
    {
      v16 = 0;
      v17 = a2;
      do
      {
        v18 = *(*(*(*(v6 + 17) + 8) + 8 * v16) + 16);
        if (v18)
        {
          v19 = a2 == 0;
        }

        else
        {
          v19 = 1;
        }

        if (!v19)
        {
          v20 = 0;
          do
          {
            if (!cstdlib_strcmp(*(a3 + 8 * v20), *v18))
            {
              v21 = *a5;
              if (v21 <= 0x1F2)
              {
                *(a4 + 2 * v21) = v16;
                ++*a5;
              }
            }

            ++v20;
          }

          while (v20 < v17);
          v9 = *v6;
        }

        ++v16;
      }

      while (v16 < v9);
    }

    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_getTokenAndCheckData(void *a1, uint64_t a2, void *a3, _WORD *a4, void *a5)
{
  v7 = *(a1[19] + 16);
  if (v7)
  {
    v8 = *(*(*(*(v7 + 136) + 8) + 8 * *(a2 + 2)) + 8);
    v9 = *(v8 + 48) + 32 * *(a2 + 4);
    *a3 = *(v8 + 24) + *(v9 + 4);
    v10 = *(v9 + 24);
    if (a4)
    {
      *a4 = v10;
    }

    if (v10)
    {
      v11 = *(v9 + 8);
    }

    else
    {
      v11 = 0;
    }

    *a5 = v11;
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, v5);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_getTokenData(void *a1, uint64_t a2, void *a3)
{
  v5 = *(a1[19] + 16);
  if (v5)
  {
    v6 = *(*(*(*(v5 + 136) + 8) + 8 * *(a2 + 2)) + 8);
    *a3 = *(v6 + 24) + *(*(v6 + 48) + 32 * *(a2 + 4) + 4);
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, v3);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_getTokenAndExpansionData(void *a1, uint64_t a2, void *a3, _WORD *a4, void *a5)
{
  v7 = *(a1[19] + 16);
  if (v7)
  {
    v8 = *(*(*(*(v7 + 136) + 8) + 8 * *(a2 + 2)) + 8);
    v9 = *(v8 + 48) + 32 * *(a2 + 4);
    *a3 = *(v8 + 24) + *(v9 + 4);
    LODWORD(v8) = *(v9 + 26);
    *a4 = v8;
    if (v8)
    {
      v10 = *(v9 + 16);
    }

    else
    {
      v10 = 0;
    }

    *a5 = v10;
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, v5);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_getTokenAndRegexData(void *a1, uint64_t a2, void *a3, _WORD *a4, void *a5, _DWORD *a6)
{
  v8 = *(a1[19] + 16);
  if (v8)
  {
    v9 = *(*(*(*(v8 + 136) + 8) + 8 * *(a2 + 2)) + 8);
    v10 = v9[6] + 32 * *(a2 + 4);
    v11 = v9[8] + 16 * *(v10 + 6);
    *a4 = *(v11 + 10);
    *a6 = *(v11 + 12);
    *a3 = v9[4] + *(v11 + 4);
    *a5 = v9[3] + *(v10 + 4);
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, v6);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_getBTokAndRegexData(void *a1, unsigned int a2, unsigned int a3, void *a4, _WORD *a5, void *a6, _DWORD *a7)
{
  v9 = *(a1[19] + 16);
  if (v9)
  {
    v10 = *(*(*(*(v9 + 136) + 8) + 8 * a2) + 8);
    v11 = v10[6] + 32 * a3;
    v12 = v10[8] + 16 * *(v11 + 6);
    *a5 = *(v12 + 10);
    *a7 = *(v12 + 12);
    *a4 = v10[4] + *(v12 + 4);
    *a6 = v10[3] + *(v11 + 4);
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, v7);

    return FEDATA_ERROR(7);
  }
}

uint64_t readDataBlockFromFileRefCntBase(uint64_t *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v12 = *(a1[19] + 16);
  v13 = heap_Calloc(*(*a1 + 8), 1, 16);
  *a6 = v13;
  v14 = *a1;
  if (!v13)
  {
LABEL_143:
    log_OutPublic(*(v14 + 32), a1[23], 24048, 0);
    StringZ = FEDATA_ERROR(10);
    if ((StringZ & 0x80000000) != 0)
    {
LABEL_144:
      log_OutPublic(*(*a1 + 32), a1[23], 24052, 0);
    }

    return StringZ;
  }

  *(*a6 + 8) = heap_Calloc(*(v14 + 8), 1, (8 * *v12) | 1);
  if (!*(*a6 + 8))
  {
LABEL_142:
    v14 = *a1;
    goto LABEL_143;
  }

  v15 = *v12;
  **a6 = v15;
  if (v15)
  {
    v107 = a3;
    v108 = a4;
    v16 = 0;
    while (1)
    {
      *(*(*a6 + 8) + 8 * v16) = heap_Calloc(*(*a1 + 8), 1, 48);
      v17 = *(*(*a6 + 8) + 8 * v16);
      if (!v17)
      {
        goto LABEL_142;
      }

      __dst = 0;
      v114 = 0;
      v113 = 0;
      v112 = 0;
      v110 = 0;
      __src = 0;
      Chunk = ssftriff_reader_FindChunk(a2, "HEAD", 1, &v113, &__src);
      if ((Chunk & 0x80000000) != 0)
      {
LABEL_124:
        StringZ = Chunk;
LABEL_125:
        v44 = 0;
LABEL_126:
        log_OutPublic(*(*a1 + 32), a1[23], 24052, 0);
        if (!v44)
        {
          goto LABEL_128;
        }

LABEL_127:
        ssftriff_reader_CloseChunk(a2);
        goto LABEL_128;
      }

      v112 = 0;
      cstdlib_memcpy(&__dst + 2, __src, 2uLL);
      v112 += 2;
      *v17 = HIWORD(__dst);
      StringZ = ssftriff_reader_CloseChunk(a2);
      if ((StringZ & 0x80000000) != 0)
      {
        goto LABEL_125;
      }

      v20 = *v17;
      if ((*v17 - 3) <= 2)
      {
        v21 = heap_Calloc(*(*a1 + 8), 1, 24);
        *(v17 + 24) = v21;
        if (!v21)
        {
          goto LABEL_40;
        }

        Chunk = ssftriff_reader_FindChunk(a2, "REMP", 1, &v113, &__src);
        if ((Chunk & 0x80000000) != 0)
        {
          goto LABEL_124;
        }

        v112 = 0;
        cstdlib_memcpy(&__dst + 2, __src, 2uLL);
        v112 += 2;
        v22 = HIWORD(__dst);
        v23 = *(v17 + 24);
        *v23 = HIWORD(__dst);
        if (!v22)
        {
          cstdlib_memcpy(v23 + 4, __src + v112, 2uLL);
          v112 += 2;
          if (*(*(v17 + 24) + 16))
          {
            v45 = heap_Calloc(*(*a1 + 8), 1, 8 * *(*(v17 + 24) + 16));
            v46 = *(v17 + 24);
            *(v46 + 8) = v45;
            if (!v45)
            {
              log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);
              *(*(v17 + 24) + 16) = 0;
              goto LABEL_133;
            }

            if (*(v46 + 16))
            {
              v47 = 0;
              while (1)
              {
                *(*(*(v17 + 24) + 8) + 8 * v47) = heap_Calloc(*(*a1 + 8), 1, 24);
                v48 = *(v17 + 24);
                if (!*(*(v48 + 8) + 8 * v47))
                {
                  goto LABEL_131;
                }

                if (++v47 >= *(v48 + 16))
                {
                  if (!*(v48 + 16))
                  {
                    break;
                  }

                  v49 = 0;
                  while (1)
                  {
                    v50 = *(*(v48 + 8) + 8 * v49);
                    cstdlib_memcpy(&__dst + 2, __src + v112, 2uLL);
                    v112 += 2;
                    ++HIWORD(__dst);
                    v51 = heap_Calloc(*(*a1 + 8), 1, HIWORD(__dst));
                    *v50 = v51;
                    if (!v51)
                    {
                      goto LABEL_131;
                    }

                    HIDWORD(v110) = HIWORD(__dst);
                    StringZ = ssftriff_reader_ReadStringZ(a2, __src, v113, v112, v51, &v110 + 1);
                    if ((StringZ & 0x80000000) != 0)
                    {
                      goto LABEL_138;
                    }

                    v104 = v49;
                    if (HIDWORD(v110) != HIWORD(__dst))
                    {
                      goto LABEL_127;
                    }

                    v112 += HIDWORD(v110);
                    cstdlib_memcpy(v50 + 1, __src + v112, 2uLL);
                    v112 += 2;
                    cstdlib_memcpy(v50 + 10, __src + v112, 2uLL);
                    v112 += 2;
                    cstdlib_memcpy(v50 + 12, __src + v112, 2uLL);
                    v112 += 2;
                    if (*(v50 + 6))
                    {
                      v52 = heap_Calloc(*(*a1 + 8), 1, 8 * *(v50 + 6));
                      v50[2] = v52;
                      if (!v52)
                      {
                        log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);
                        *(v50 + 6) = 0;
                        goto LABEL_133;
                      }

                      if (*(v50 + 6))
                      {
                        v53 = 0;
                        v54 = v112;
                        do
                        {
                          cstdlib_memcpy(&__dst + 2, __src + v54, 2uLL);
                          v112 += 2;
                          ++HIWORD(__dst);
                          *(v50[2] + 8 * v53) = heap_Calloc(*(*a1 + 8), 1, HIWORD(__dst));
                          v55 = *(v50[2] + 8 * v53);
                          if (!v55)
                          {
                            goto LABEL_131;
                          }

                          HIDWORD(v110) = HIWORD(__dst);
                          StringZ = ssftriff_reader_ReadStringZ(a2, __src, v113, v112, v55, &v110 + 1);
                          if ((StringZ & 0x80000000) != 0)
                          {
                            goto LABEL_138;
                          }

                          if (HIDWORD(v110) != HIWORD(__dst))
                          {
                            goto LABEL_127;
                          }

                          v54 = v112 + HIDWORD(v110);
                          v112 += HIDWORD(v110);
                        }

                        while (++v53 < *(v50 + 6));
                      }
                    }

                    v49 = v104 + 1;
                    v48 = *(v17 + 24);
                    if (v104 + 1 >= *(v48 + 16))
                    {
                      goto LABEL_12;
                    }
                  }
                }
              }
            }
          }
        }

LABEL_12:
        StringZ = ssftriff_reader_CloseChunk(a2);
        if ((StringZ & 0x80000000) != 0)
        {
          goto LABEL_125;
        }

        v20 = *v17;
      }

      if (v20 <= 5 && ((1 << v20) & 0x2D) != 0)
      {
        v24 = heap_Calloc(*(*a1 + 8), 1, 72);
        *(v17 + 8) = v24;
        if (!v24)
        {
          goto LABEL_40;
        }

        v20 = *v17;
      }

      if (v20 <= 5 && ((1 << v20) & 0x36) != 0)
      {
        v25 = heap_Calloc(*(*a1 + 8), 1, 64);
        *(v17 + 16) = v25;
        if (!v25)
        {
LABEL_40:
          log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);
          v43 = FEDATA_ERROR(10);
LABEL_41:
          StringZ = v43;
          v44 = 0;
          goto LABEL_42;
        }

        v20 = *v17;
      }

      if (v20 <= 5 && ((1 << v20) & 0x2D) != 0)
      {
        Chunk = ssftriff_reader_FindChunk(a2, "TDAT", 1, &v113, &__src);
        if ((Chunk & 0x80000000) != 0)
        {
          goto LABEL_124;
        }

        v112 = 0;
        v26 = __src;
        *(v17 + 40) = __src;
        cstdlib_memcpy(&__dst + 2, v26, 2uLL);
        v112 += 2;
        ++HIWORD(__dst);
        v27 = heap_Calloc(*(*a1 + 8), 1, HIWORD(__dst));
        **(v17 + 8) = v27;
        if (!v27)
        {
          goto LABEL_131;
        }

        HIDWORD(v110) = HIWORD(__dst);
        StringZ = ssftriff_reader_ReadStringZ(a2, __src, v113, v112, v27, &v110 + 1);
        if ((StringZ & 0x80000000) != 0)
        {
          goto LABEL_138;
        }

        if (HIDWORD(v110) != HIWORD(__dst))
        {
          goto LABEL_127;
        }

        v112 += HIDWORD(v110);
        cstdlib_memcpy((*(v17 + 8) + 8), __src + v112, 2uLL);
        v112 += 2;
        cstdlib_memcpy((*(v17 + 8) + 12), __src + v112, 2uLL);
        v112 += 2;
        cstdlib_memcpy(&v114, __src + v112, 4uLL);
        v112 += 4;
        cstdlib_memcpy(&v113 + 4, __src + v112, 4uLL);
        v28 = v112 + 4;
        v29 = *(v17 + 8);
        *(v29 + 16) = v28;
        v30 = __src;
        *(v29 + 24) = __src + v28;
        v31 = (v114 + v28);
        v112 = v31;
        cstdlib_memcpy(&v110, &v30[v31], 4uLL);
        v32 = v112 + v110 + 4;
        v33 = *(v17 + 8);
        *(v33 + 40) = v32;
        *(v33 + 32) = __src + v32;
        v112 = HIDWORD(v113) + v32;
        if (*(v33 + 8))
        {
          v34 = heap_Calloc(*(*a1 + 8), 1, 32 * *(v33 + 8));
          v33 = *(v17 + 8);
          *(v33 + 48) = v34;
          if (!v34)
          {
            goto LABEL_131;
          }

          v106 = a5;
          if (*(v33 + 8))
          {
            v35 = 0;
            v36 = 16;
            while (1)
            {
              v103 = *(v33 + 48);
              v37 = v103 + v36;
              cstdlib_memcpy(&__dst, __src + v112, 2uLL);
              v112 += 2;
              *(v37 - 16) = __dst;
              cstdlib_memcpy((v103 + v36 - 12), __src + v112, 2uLL);
              v112 += 2;
              cstdlib_memcpy((v103 + v36 - 10), __src + v112, 2uLL);
              v112 += 2;
              cstdlib_memcpy((v103 + v36 + 8), __src + v112, 2uLL);
              v112 += 2;
              cstdlib_memcpy((v103 + v36 + 10), __src + v112, 2uLL);
              v112 += 2;
              cstdlib_memcpy((v103 + v36 + 12), __src + v112, 2uLL);
              v112 += 2;
              *(v37 - 8) = 0;
              if (*(v103 + v36 + 8))
              {
                v38 = heap_Calloc(*(*a1 + 8), 1, 56);
                *(v37 - 8) = v38;
                if (!v38)
                {
                  goto LABEL_135;
                }

                *v38 = &StaticIntPointers_1;
                *(v38 + 24) = 0;
                *(v38 + 16) = 0;
                *(v38 + 40) = 0;
                *(v38 + 48) = 0;
                *(v38 + 32) = 0;
                v39 = FEData_readFunctionDataFromBinaryFile(a1, a2, *a1, v38, __src, &v112, v113);
                if ((v39 & 0x80000000) != 0)
                {
                  break;
                }
              }

              *(v103 + v36) = 0;
              v40 = *(v37 + 10);
              a5 = v106;
              if (v40)
              {
                v41 = heap_Calloc(*(*a1 + 8), 1, 56);
                *(v103 + v36) = v41;
                if (!v41)
                {
                  v100 = *(*a1 + 32);
                  v101 = a1[23];
                  goto LABEL_132;
                }

                *v41 = &StaticIntPointers_1;
                *(v41 + 24) = 0;
                *(v41 + 16) = 0;
                *(v41 + 40) = 0;
                *(v41 + 48) = 0;
                *(v41 + 32) = 0;
                v42 = FEData_readFunctionDataFromBinaryFile(a1, a2, *a1, v41, __src, &v112, v113);
                if ((v42 & 0x80000000) != 0)
                {
                  StringZ = v42;
                  goto LABEL_138;
                }
              }

              ++v35;
              v33 = *(v17 + 8);
              v36 += 32;
              if (v35 >= *(v33 + 8))
              {
                goto LABEL_68;
              }
            }

LABEL_134:
            StringZ = v39;
            v44 = 1;
            a5 = v106;
            goto LABEL_126;
          }
        }

        else
        {
          v106 = a5;
        }

LABEL_68:
        v56 = *(v33 + 12);
        if (v56)
        {
          v57 = heap_Calloc(*(*a1 + 8), 1, 16 * v56);
          v58 = *(v17 + 8);
          *(v58 + 64) = v57;
          if (!v57)
          {
            goto LABEL_135;
          }

          if (*(v58 + 12))
          {
            v59 = 0;
            v60 = 0;
            do
            {
              v61 = *(v58 + 64);
              v62 = v61 + v59;
              if (v107 == 1)
              {
                cstdlib_memcpy((v62 + 4), __src + v112, 4uLL);
                v63 = v112 + 4;
                v112 += 4;
              }

              else
              {
                cstdlib_memcpy(&__dst, __src + v112, 2uLL);
                v112 += 2;
                *(v62 + 4) = __dst;
                v63 = v112;
              }

              v64 = (v61 + v59);
              cstdlib_memcpy(v64 + 2, __src + v63, 2uLL);
              v112 += 2;
              cstdlib_memcpy(v64 + 10, __src + v112, 2uLL);
              v112 += 2;
              cstdlib_memcpy(v62, __src + v112, 2uLL);
              v112 += 2;
              cstdlib_memcpy(&__dst, __src + v112, 2uLL);
              v112 += 2;
              v64[3] = __dst;
              ++v60;
              v58 = *(v17 + 8);
              v59 += 16;
            }

            while (v60 < *(v58 + 12));
          }
        }

        v39 = ssftriff_reader_DetachChunkData(a2, (v17 + 32), &__src);
        if ((v39 & 0x80000000) != 0)
        {
          goto LABEL_134;
        }

        v65 = __src;
        *(v17 + 40) = __src;
        v66 = *(v17 + 8);
        v67 = &v65[*(v66 + 16)];
        v68 = &v65[*(v66 + 40)];
        *(v66 + 24) = v67;
        *(v66 + 32) = v68;
        StringZ = ssftriff_reader_CloseChunk(a2);
        a5 = v106;
        if ((StringZ & 0x80000000) != 0)
        {
          goto LABEL_125;
        }

        v20 = *v17;
      }

      if (v20 > 5 || ((1 << v20) & 0x36) == 0)
      {
        goto LABEL_129;
      }

      Chunk = ssftriff_reader_FindChunk(a2, "DDAT", 1, &v113, &__src);
      if ((Chunk & 0x80000000) != 0)
      {
        goto LABEL_124;
      }

      v112 = 0;
      cstdlib_memcpy(&__dst + 2, __src, 2uLL);
      v112 += 2;
      ++HIWORD(__dst);
      v69 = heap_Calloc(*(*a1 + 8), 1, HIWORD(__dst));
      **(v17 + 16) = v69;
      if (!v69)
      {
        goto LABEL_131;
      }

      HIDWORD(v110) = HIWORD(__dst);
      StringZ = ssftriff_reader_ReadStringZ(a2, __src, v113, v112, v69, &v110 + 1);
      if ((StringZ & 0x80000000) != 0)
      {
LABEL_138:
        v44 = 1;
        goto LABEL_126;
      }

      if (HIDWORD(v110) != HIWORD(__dst))
      {
        goto LABEL_127;
      }

      v112 += HIDWORD(v110);
      cstdlib_memcpy(&__dst + 2, __src + v112, 2uLL);
      v112 += 2;
      v70 = v112;
      v71 = *(v17 + 16);
      *(v71 + 8) = HIWORD(__dst);
      cstdlib_memcpy((v71 + 24), __src + v70, 2uLL);
      v112 += 2;
      cstdlib_memcpy((*(v17 + 16) + 50), __src + v112, 2uLL);
      v112 += 2;
      v72 = *(v17 + 16);
      *(v72 + 56) = 0;
      if (*(v72 + 50))
      {
        v73 = heap_Calloc(*(*a1 + 8), 1, 8 * *(v72 + 50));
        v72 = *(v17 + 16);
        *(v72 + 56) = v73;
        if (!v73)
        {
          goto LABEL_131;
        }

        if (*(v72 + 50))
        {
          v74 = 0;
          v75 = v112;
          do
          {
            cstdlib_memcpy(&__dst + 2, __src + v75, 2uLL);
            v112 += 2;
            ++HIWORD(__dst);
            *(*(*(v17 + 16) + 56) + 8 * v74) = heap_Calloc(*(*a1 + 8), 1, HIWORD(__dst));
            v76 = *(*(*(v17 + 16) + 56) + 8 * v74);
            if (!v76)
            {
              goto LABEL_131;
            }

            HIDWORD(v110) = HIWORD(__dst);
            StringZ = ssftriff_reader_ReadStringZ(a2, __src, v113, v112, v76, &v110 + 1);
            if ((StringZ & 0x80000000) != 0)
            {
              goto LABEL_138;
            }

            if (HIDWORD(v110) != HIWORD(__dst))
            {
              goto LABEL_127;
            }

            v75 = v112 + HIDWORD(v110);
            v112 += HIDWORD(v110);
            ++v74;
            v72 = *(v17 + 16);
          }

          while (v74 < *(v72 + 50));
        }
      }

      v106 = a5;
      if (!*(v72 + 24))
      {
        goto LABEL_111;
      }

      v77 = heap_Calloc(*(*a1 + 8), 1, 72 * *(v72 + 24));
      v72 = *(v17 + 16);
      *(v72 + 16) = v77;
      if (v77)
      {
        if (!*(v72 + 24))
        {
LABEL_111:
          cstdlib_memcpy((v72 + 48), __src + v112, 2uLL);
          v112 += 2;
          if (!*(*(v17 + 16) + 48))
          {
            goto LABEL_123;
          }

          v90 = heap_Calloc(*(a1[3] + 8), 1, 16 * *(*(v17 + 16) + 48));
          v91 = *(v17 + 16);
          *(v91 + 32) = v90;
          if (v90)
          {
            if (!*(v91 + 48))
            {
LABEL_123:
              v43 = ssftriff_reader_CloseChunk(a2);
              goto LABEL_41;
            }

            v92 = 0;
            while (1)
            {
              v93 = (*(v91 + 32) + 16 * v92);
              cstdlib_memcpy(v93 + 1, __src + v112, 2uLL);
              v112 += 2;
              v94 = heap_Calloc(*(*a1 + 8), 1, 12 * *(v93 + 4));
              *v93 = v94;
              if (!v94)
              {
                break;
              }

              if (*(v93 + 4))
              {
                v95 = 0;
                v96 = 0;
                do
                {
                  v109 = 0;
                  v97 = (*v93 + v95);
                  v97[1] = 0;
                  if (v108)
                  {
                    cstdlib_memcpy(&v109, __src + v112++, 1uLL);
                    v98 = v112;
                    *(*v93 + v95 + 2) = v109;
                    cstdlib_memcpy(&v109, __src + v98, 1uLL);
                    v99 = v112 + 1;
                    *(*v93 + v95 + 4) = v109;
                  }

                  else
                  {
                    cstdlib_memcpy(v97, __src + v112, 2uLL);
                    v112 += 2;
                    cstdlib_memcpy((*v93 + v95 + 4), __src + v112, 2uLL);
                    v99 = v112 + 2;
                  }

                  v112 = v99;
                  ++v96;
                  v95 += 12;
                }

                while (v96 < *(v93 + 4));
              }

              ++v92;
              v91 = *(v17 + 16);
              a5 = v106;
              if (v92 >= *(v91 + 48))
              {
                goto LABEL_123;
              }
            }
          }

LABEL_131:
          v100 = *(*a1 + 32);
          v101 = a1[23];
LABEL_132:
          log_OutPublic(v100, v101, 24048, 0);
LABEL_133:
          StringZ = FEDATA_ERROR(10);
          v44 = 1;
          goto LABEL_42;
        }

        v78 = 0;
        while (1)
        {
          v79 = *(v72 + 16) + 72 * v78;
          cstdlib_memcpy(&__dst + 2, __src + v112, 2uLL);
          v112 += 2;
          v80 = HIWORD(__dst);
          *(v79 + 56) = HIWORD(__dst);
          v81 = heap_Calloc(*(*a1 + 8), 1, v80 + 1);
          *(v79 + 48) = v81;
          if (!v81)
          {
            break;
          }

          v105 = v78;
          cstdlib_memcpy(v81, __src + v112, HIWORD(__dst));
          *(*(v79 + 48) + HIWORD(__dst)) = 0;
          v112 += *(v79 + 56);
          cstdlib_memcpy(v79, __src + v112, 2uLL);
          v112 += 2;
          cstdlib_memcpy((v79 + 2), __src + v112, 2uLL);
          v112 += 2;
          cstdlib_memcpy(&__dst, __src + v112, 2uLL);
          v112 += 2;
          *(v79 + 60) = __dst;
          cstdlib_memcpy(&__dst, __src + v112, 2uLL);
          v112 += 2;
          *(v79 + 64) = __dst;
          cstdlib_memcpy(&__dst, __src + v112, 2uLL);
          v112 += 2;
          v82 = __dst;
          *(v79 + 8) = __dst;
          if (v82 == 1)
          {
            cstdlib_memcpy((v79 + 4), __src + v112, 2uLL);
            v112 += 2;
            cstdlib_memcpy((v79 + 12), __src + v112, 2uLL);
            v112 += 2;
          }

          if (!v108)
          {
            cstdlib_memcpy((v79 + 40), __src + v112, 2uLL);
            v83 = v112 + 2;
            v112 += 2;
            if (*(v79 + 40))
            {
              v84 = 0;
              do
              {
                cstdlib_memcpy(&__dst, __src + v83, 2uLL);
                v112 += 2;
                cstdlib_memcpy(&__dst, __src + v112, 2uLL);
                v83 = v112 + 2;
                v112 += 2;
                ++v84;
              }

              while (v84 < *(v79 + 40));
            }
          }

          if (a5 == 1)
          {
            cstdlib_memcpy((v79 + 42), __src + v112, 2uLL);
            v112 += 2;
            if (*(v79 + 42))
            {
              v85 = heap_Calloc(*(*a1 + 8), 1, 12 * *(v79 + 42));
              *(v79 + 32) = v85;
              if (!v85)
              {
                log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);
                StringZ = FEDATA_ERROR(10);
                if ((StringZ & 0x80000000) == 0)
                {
                  goto LABEL_129;
                }

                goto LABEL_141;
              }

              if (*(v79 + 42))
              {
                v86 = 0;
                v87 = 0;
                do
                {
                  cstdlib_memcpy(&__dst, __src + v112, 2uLL);
                  v112 += 2;
                  v88 = v112;
                  *(*(v79 + 32) + v86) = __dst;
                  cstdlib_memcpy(&__dst, __src + v88, 2uLL);
                  v112 += 2;
                  v89 = *(v79 + 32) + v86;
                  *(v89 + 4) = __dst;
                  *(v89 + 8) = 1;
                  ++v87;
                  v86 += 12;
                }

                while (v87 < *(v79 + 42));
              }
            }
          }

          v78 = v105 + 1;
          v72 = *(v17 + 16);
          if (v105 + 1 >= *(v72 + 24))
          {
            goto LABEL_111;
          }
        }
      }

LABEL_135:
      log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);
      StringZ = FEDATA_ERROR(10);
      v44 = 1;
      a5 = v106;
LABEL_42:
      if ((StringZ & 0x80000000) != 0)
      {
        goto LABEL_126;
      }

      if (v44)
      {
        goto LABEL_127;
      }

LABEL_128:
      if ((StringZ & 0x80000000) != 0)
      {
LABEL_141:
        *(*(*a6 + 8) + 8 * v16) = 0;
        log_OutPublic(*(*a1 + 32), a1[23], 24044, 0);
        goto LABEL_144;
      }

LABEL_129:
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "loaded data block %d", v16);
      v16 = v16 + 1;
      if (v16 >= *v12)
      {
        return StringZ;
      }
    }
  }

  return 0;
}

uint64_t readDataBlockFromFileRefCnt_0(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  result = InitRsrcFunction(*(a1 + 8), *(a1 + 16), &v21);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(*(a1 + 32), *(a1 + 40), &v20);
    if ((result & 0x80000000) == 0)
    {
      v15[0] = a1;
      v15[1] = a2;
      v16 = a3;
      v17 = a4;
      LODWORD(v18) = a5;
      ObjcForThisApi = getObjcForThisApi(v21, v20);
      result = objc_GetAddRefCountedObject(ObjcForThisApi, a6, readDataBlockFromFile_ObjcLoad_0, readDataBlockFromFile_ObjcClose_0, v15, &v19);
      if ((result & 0x80000000) != 0)
      {
        v14 = 0;
      }

      else
      {
        v14 = *(v19 + 32);
      }

      *(*(*(a1 + 152) + 16) + 136) = v14;
    }
  }

  return result;
}

uint64_t readDataBlockFromFile_ObjcLoad_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  result = readDataBlockFromFileRefCntBase(*a5, a5[1], *(a5 + 4), *(a5 + 5), *(a5 + 6), a4 + 32);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v8 = *a5;
  v9 = *(a4 + 32);
  v66 = *(*(*a5 + 152) + 16);
  if (*v66)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(*(v9 + 8) + 8 * v10);
      if (v13)
      {
        v14 = *(v13 + 16);
        if (v14)
        {
          if (*(v14 + 24))
          {
            v15 = 0;
            do
            {
              v16 = *(v14 + 16) + 72 * v15;
              if (*(v16 + 8) == 1)
              {
                v17 = *(v14 + 48);
                if (*(v14 + 48))
                {
                  v18 = 0;
                  v19 = *(v14 + 32);
                  do
                  {
                    v20 = v19 + 16 * v18;
                    if (*(v20 + 8))
                    {
                      v21 = 0;
                      do
                      {
                        if (*(v16 + 42))
                        {
                          v22 = (*v20 + 12 * v21);
                          v23 = (*(v16 + 32) + 4);
                          v24 = *(v16 + 42);
                          while (*(v23 - 2) != *v22 || *(v23 - 1) != v22[1] || *v23 != v22[2])
                          {
                            v23 += 6;
                            if (!--v24)
                            {
                              goto LABEL_21;
                            }
                          }

                          v11 = 1;
                        }

LABEL_21:
                        ++v21;
                      }

                      while (v21 != *(v20 + 8));
                    }

                    ++v18;
                  }

                  while (v18 != v17);
                  v12 = v19 + 16 * (v17 - 1);
                }
              }

              ++v15;
            }

            while (v15 != *(v14 + 24));
          }
        }
      }

      ++v10;
    }

    while (v10 != *v66);
    v25 = v11 == 0;
  }

  else
  {
    v12 = 0;
    v25 = 1;
  }

  if (*(v8 + 616) && v25)
  {
    v26 = 1;
    *(v8 + 960) = 1;
  }

  else
  {
    v26 = *(v8 + 960);
  }

  log_OutText(*(*v8 + 32), *(v8 + 184), 4, 0, "btok twoloop data=%d", v26);
  v27 = *v66;
  if (!*v66)
  {
    return 0;
  }

  v64 = v8;
  v28 = 0;
  v65 = 0;
  v29 = *v66;
  while (1)
  {
    v30 = *(*(v9 + 8) + 8 * v28);
    if (v30)
    {
      break;
    }

LABEL_97:
    if (v29)
    {
      v54 = 0;
      v55 = *(v9 + 8);
      do
      {
        v56 = *(v55 + 8 * v54);
        if (v56)
        {
          v57 = *(v56 + 24);
          if (v57)
          {
            if (*(v57 + 16))
            {
              v58 = 0;
              do
              {
                if (v30)
                {
                  v59 = *(v30 + 16);
                  if (v59)
                  {
                    v60 = 0;
                    v61 = *(*(v57 + 8) + 8 * v58);
                    v62 = -1;
                    do
                    {
                      if (++v62 >= *(v59 + 24))
                      {
                        break;
                      }

                      if (!cstdlib_strcmp(*v61, (*(*(v59 + 16) + v60 + 48) + *(*(v59 + 16) + v60))))
                      {
                        *(v61 + 10) = v28;
                      }

                      v60 += 72;
                      v59 = *(v30 + 16);
                    }

                    while (v59);
                    v55 = *(v9 + 8);
                  }
                }

                v63 = *(v55 + 8 * v54);
                if (!v63)
                {
                  break;
                }

                v57 = *(v63 + 24);
                if (!v57)
                {
                  break;
                }

                ++v58;
              }

              while (v58 < *(v57 + 16));
            }

            v27 = *v66;
          }

          v29 = v27;
        }

        ++v54;
      }

      while (v54 < v29);
    }

    if (++v28 >= v29)
    {
      return 0;
    }
  }

  v31 = *(v30 + 16);
  if (!v31)
  {
LABEL_96:
    v29 = v27;
    goto LABEL_97;
  }

  v32 = 0;
  while (1)
  {
    if (v32 >= *(v31 + 24))
    {
LABEL_95:
      v27 = *v66;
      goto LABEL_96;
    }

    v33 = *(v31 + 16) + 72 * v32;
    if (*(v33 + 42))
    {
      v34 = 0;
      while (1)
      {
        v35 = *v66;
        if (!*v66)
        {
          goto LABEL_119;
        }

        v36 = 0;
        while (1)
        {
          v37 = *(*(v9 + 8) + 8 * v36);
          if (*v37 == 1 || *v37 == 4)
          {
            goto LABEL_47;
          }

          v39 = *(v30 + 16);
          v40 = *(v39 + 50);
          if (!*(v39 + 50))
          {
            goto LABEL_47;
          }

          if (*(v64 + 960) != 1 || v12 == 0)
          {
            v42 = *(v33 + 32);
            goto LABEL_58;
          }

          v42 = *(v33 + 32);
          if (v40 > *(*v12 + 12 * v34))
          {
            break;
          }

LABEL_58:
          v43 = *(v42 + 12 * v34);
          if (v40 > v43)
          {
            goto LABEL_59;
          }

LABEL_47:
          if (++v36 >= v35)
          {
            goto LABEL_119;
          }
        }

        v43 = *(v42 + 12 * v34);
LABEL_59:
        if (cstdlib_strcmp(**(v37 + 8), *(*(v39 + 56) + 8 * v43)))
        {
          v35 = *v66;
          goto LABEL_47;
        }

        *(*(v33 + 32) + 12 * v34++ + 2) = v36;
        if (v34 >= *(v33 + 42))
        {
          v31 = *(v30 + 16);
          v65 = 1;
          break;
        }
      }
    }

    if (*(v33 + 8) == 1 && *(v31 + 48))
    {
      break;
    }

LABEL_94:
    ++v32;
    if (!v31)
    {
      goto LABEL_95;
    }
  }

  v44 = 0;
  while (2)
  {
    v12 = *(v31 + 32) + 16 * v44;
    if (!*(v12 + 8))
    {
      goto LABEL_92;
    }

    v45 = 0;
    while (2)
    {
      v46 = *v66;
      if (!*v66)
      {
LABEL_81:
        v65 = 0;
        goto LABEL_82;
      }

      v47 = 0;
      while (2)
      {
        v48 = *(*(v9 + 8) + 8 * v47);
        v49 = *v48 == 1 || *v48 == 4;
        if (v49 || (v50 = *(v30 + 16), !*(v50 + 50)) || *(v50 + 50) <= *(*v12 + 12 * v45))
        {
LABEL_75:
          if (++v47 >= v46)
          {
            goto LABEL_81;
          }

          continue;
        }

        break;
      }

      if (cstdlib_strcmp(**(v48 + 8), *(*(v50 + 56) + 8 * *(*v12 + 12 * v45))))
      {
        v46 = *v66;
        goto LABEL_75;
      }

      *(*v12 + 12 * v45 + 2) = v47;
      v65 = 1;
LABEL_82:
      v51 = *(v33 + 42);
      if (*(v33 + 42))
      {
        v52 = *v12 + 12 * v45;
        v53 = (*(v33 + 32) + 4);
        while (*(v53 - 1) != *(v52 + 2) || *v53 != *(v52 + 4))
        {
          v53 += 6;
          if (!--v51)
          {
            goto LABEL_89;
          }
        }

        *(v52 + 8) = 1;
      }

LABEL_89:
      if (++v45 < *(v12 + 8))
      {
        continue;
      }

      break;
    }

LABEL_92:
    if (v65)
    {
      ++v44;
      v31 = *(v30 + 16);
      v65 = 1;
      if (v44 >= *(v31 + 48))
      {
        goto LABEL_94;
      }

      continue;
    }

    break;
  }

LABEL_119:
  log_OutPublic(*(*v64 + 32), *(v64 + 184), 24045, 0);
  return 0;
}

uint64_t readDataBlockFromFile_ObjcClose_0(_WORD *a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  v50 = 0;
  inited = InitRsrcFunction(a1, a2, &v50);
  v5 = inited;
  if ((inited & 0x80000000) == 0)
  {
    if (v3)
    {
      v6 = *(v3 + 1);
      if (v6)
      {
        v7 = *v3;
        if (*v3)
        {
          v49 = inited;
          v8 = 0;
          v48 = v3;
          while (1)
          {
            v9 = *(*(v3 + 1) + 8 * v8);
            if (v9)
            {
              v11 = (v9 + 32);
              v10 = *(v9 + 32);
              if (v10)
              {
                v49 = ssftriff_reader_ReleaseChunkData(v10);
                if ((v49 & 0x80000000) != 0)
                {
                  return v49;
                }

                *v11 = 0;
                *(v9 + 40) = 0;
              }

              v12 = v50;
              v14 = *(v9 + 8);
              v13 = *(v9 + 16);
              v15 = *(v9 + 24);
              if (v14)
              {
                if (*v9 <= 5u && ((1 << *v9) & 0x2D) != 0)
                {
                  heap_Free(*(v50 + 8), *v14);
                  *v14 = 0;
                  v17 = *(v14 + 48);
                  if (v17)
                  {
                    if (*(v14 + 8))
                    {
                      v18 = 0;
                      v19 = 0;
                      do
                      {
                        v20 = *(v14 + 48) + v18;
                        v21 = *(v20 + 8);
                        if (v21)
                        {
                          FEData_freeEntry(v12, v21, 1);
                          heap_Free(*(v12 + 8), *(v20 + 8));
                          *(v20 + 8) = 0;
                        }

                        v22 = *(v20 + 16);
                        if (v22)
                        {
                          FEData_freeEntry(v12, v22, 1);
                          heap_Free(*(v12 + 8), *(v20 + 16));
                          *(v20 + 16) = 0;
                        }

                        ++v19;
                        v18 += 32;
                      }

                      while (v19 < *(v14 + 8));
                      v17 = *(v14 + 48);
                      v3 = v48;
                    }

                    heap_Free(*(v12 + 8), v17);
                    *(v14 + 48) = 0;
                  }

                  v23 = *(v14 + 64);
                  if (v23)
                  {
                    heap_Free(*(v12 + 8), v23);
                    *(v14 + 64) = 0;
                  }

                  heap_Free(*(v12 + 8), *(v9 + 8));
                  *(v9 + 8) = 0;
                }
              }

              if (v13)
              {
                if (*v9 <= 5u && ((1 << *v9) & 0x36) != 0)
                {
                  if (*v13)
                  {
                    heap_Free(*(v12 + 8), *v13);
                    *v13 = 0;
                  }

                  v25 = *(v13 + 56);
                  if (v25)
                  {
                    if (*(v13 + 50))
                    {
                      v26 = 0;
                      do
                      {
                        heap_Free(*(v12 + 8), *(*(v13 + 56) + 8 * v26));
                        *(*(v13 + 56) + 8 * v26++) = 0;
                      }

                      while (v26 < *(v13 + 50));
                      v25 = *(v13 + 56);
                    }

                    heap_Free(*(v12 + 8), v25);
                    *(v13 + 56) = 0;
                  }

                  if (*(v13 + 16))
                  {
                    if (*(v13 + 24))
                    {
                      v27 = 0;
                      v28 = 0;
                      do
                      {
                        v29 = (*(v13 + 16) + v27);
                        heap_Free(*(v12 + 8), v29[6]);
                        v29[6] = 0;
                        v30 = v29[2];
                        if (v30)
                        {
                          heap_Free(*(v12 + 8), v30);
                          v29[2] = 0;
                        }

                        v31 = v29[4];
                        if (v31)
                        {
                          heap_Free(*(v12 + 8), v31);
                          v29[4] = 0;
                        }

                        ++v28;
                        v27 += 72;
                      }

                      while (v28 < *(v13 + 24));
                    }

                    v32 = *(v13 + 32);
                    v3 = v48;
                    if (v32)
                    {
                      v33 = *(v13 + 48);
                      if (v33)
                      {
                        v34 = 0;
                        for (i = 0; i < v33; ++i)
                        {
                          v36 = *(v13 + 32);
                          v37 = *(v36 + v34);
                          if (v37)
                          {
                            heap_Free(*(v12 + 8), v37);
                            *(v36 + v34) = 0;
                            v33 = *(v13 + 48);
                          }

                          v34 += 16;
                        }

                        v32 = *(v13 + 32);
                        v3 = v48;
                      }

                      heap_Free(*(v12 + 8), v32);
                      *(v13 + 32) = 0;
                    }

                    heap_Free(*(v12 + 8), *(v13 + 16));
                    *(v13 + 16) = 0;
                  }

                  heap_Free(*(v12 + 8), *(v9 + 16));
                  *(v9 + 16) = 0;
                }
              }

              if (v15)
              {
                v38 = *(v15 + 8);
                if (v38)
                {
                  v39 = *(v15 + 16);
                  if (v39)
                  {
                    for (j = 0; j < v39; ++j)
                    {
                      v41 = *(v15 + 8);
                      v42 = *(v41 + 8 * j);
                      if (v42)
                      {
                        if (*v42)
                        {
                          heap_Free(*(v12 + 8), *v42);
                          v41 = *(v15 + 8);
                          **(v41 + 8 * j) = 0;
                          v42 = *(v41 + 8 * j);
                        }

                        v43 = *(v42 + 16);
                        if (v43)
                        {
                          if (*(v42 + 12))
                          {
                            v44 = 0;
                            do
                            {
                              v45 = *(*(v42 + 16) + 8 * v44);
                              if (v45)
                              {
                                heap_Free(*(v12 + 8), v45);
                                *(*(*(*(v15 + 8) + 8 * j) + 16) + 8 * v44) = 0;
                                v41 = *(v15 + 8);
                              }

                              ++v44;
                              v42 = *(v41 + 8 * j);
                            }

                            while (v44 < *(v42 + 12));
                            v43 = *(v42 + 16);
                          }

                          heap_Free(*(v12 + 8), v43);
                          v46 = *(v15 + 8);
                          *(*(v46 + 8 * j) + 16) = 0;
                          v42 = *(v46 + 8 * j);
                        }

                        *(v42 + 12) = 0;
                        heap_Free(*(v12 + 8), v42);
                        *(*(v15 + 8) + 8 * j) = 0;
                        v39 = *(v15 + 16);
                      }
                    }

                    v38 = *(v15 + 8);
                  }

                  heap_Free(*(v12 + 8), v38);
                  *(v15 + 8) = 0;
                }

                *(v15 + 16) = 0;
                heap_Free(*(v12 + 8), v15);
              }

              if (*v11)
              {
                ssftriff_reader_ReleaseChunkData(*v11);
                *v11 = 0;
                *(v9 + 40) = 0;
              }

              heap_Free(*(v12 + 8), v9);
              v7 = *v3;
            }

            if (++v8 >= v7)
            {
              v6 = *(v3 + 1);
              v5 = v49;
              break;
            }
          }
        }

        heap_Free(*(v50 + 8), v6);
        heap_Free(*(v50 + 8), v3);
      }
    }
  }

  return v5;
}

uint64_t FEData_blockData_loadDataFiles(uint64_t *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = a1[19];
  v52 = 0;
  memset(v61, 0, sizeof(v61));
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  *__dst = 0u;
  v54 = 0u;
  v51 = 0;
  __s2 = 0;
  __src = 0;
  v48 = 0;
  *a4 = 0;
  v6 = *(v5 + 16);
  if (!v6)
  {
    v7 = *(*a1 + 32);
    v8 = a1[23];
    v9 = 24049;
    goto LABEL_5;
  }

  if (!*v6)
  {
    v12 = *(a1 + 352);
    v13 = *(a1 + 168);
    v14 = *a1;
    if (v12 > v13)
    {
      log_OutPublic(*(v14 + 32), a1[23], 24056, "%s%d%s%d", "invalid language identifier index", v12, "max=", v13);
      v10 = 0;
      goto LABEL_6;
    }

    if ((paramc_ParamGetStr(*(v14 + 40), "langcode", &v48) & 0x80000000) != 0)
    {
      v48 = "";
    }

    if ((paramc_ParamGetStr(*(*a1 + 40), "fecfg", &__s2) & 0x80000000) == 0)
    {
      cstdlib_strcpy(__dst, "tokentn/");
      cstdlib_strcat(__dst, *(a3 + 8 * *(a1 + 352)));
      cstdlib_strcat(__dst, "/");
      cstdlib_strcat(__dst, __s2);
      v17 = brokeraux_ComposeBrokerString(*a1, __dst, 1, 1, v48, 0, 0, v61, 0x80uLL);
      if (v17 < 0)
      {
        return FEDATA_ERROR(v17);
      }

      RsrcHandleForThisApi = getRsrcHandleForThisApi(*a1, a1[1], a1[2], a1[4]);
      if ((ssftriff_reader_ObjOpen(RsrcHandleForThisApi, v19, 2, v61, "TOKN", 1031, &v52) & 0x80000000) == 0)
      {
LABEL_18:
        Chunk = ssftriff_reader_FindChunk(v52, "CFIG", 0, &v51, &__src);
        v23 = Chunk & 0x1FFF;
        if ((Chunk & 0x80000000) != 0 && v23 != 20)
        {
          goto LABEL_65;
        }

        if (v23 == 20)
        {
          v24 = 0;
          v25 = 0;
LABEL_32:
          Chunk = ssftriff_reader_FindChunk(v52, "FILE", 0, &v51, &__src);
          if ((Chunk & 0x80000000) == 0)
          {
            cstdlib_memcpy(v6, __src, 2uLL);
            Chunk = ssftriff_reader_CloseChunk(v52);
            if ((Chunk & 0x80000000) == 0)
            {
              cstdlib_strcpy(v6 + 2, v61);
              DataBlockFromFileRefCnt_0 = readDataBlockFromFileRefCnt_0(a1, v52, v24, v25, *a4, v61);
              if ((DataBlockFromFileRefCnt_0 & 0x80000000) == 0)
              {
                ssftriff_reader_ObjClose(v52);
                v52 = 0;
                v27 = *v6;
                if (*v6)
                {
                  v28 = 0;
                  do
                  {
                    v29 = *(*(*(v6 + 17) + 8) + 8 * v28);
                    if (v29)
                    {
                      v30 = *(v29 + 16);
                      if (v30)
                      {
                        v31 = 0;
                        v32 = 0;
                        while (v32 < *(v30 + 24))
                        {
                          v33 = *(v30 + 16);
                          v34 = (v33 + v31);
                          if (*(v33 + v31 + 64) == 1)
                          {
                            v35 = a1[36];
                            if (v35)
                            {
                              if (cstdlib_strcmp(v35, (*(v33 + v31 + 48) + *(v33 + v31))))
                              {
                                log_OutPublic(*(*a1 + 32), a1[23], 24053, "%s%s%s%s");
                                goto LABEL_70;
                              }
                            }

                            else
                            {
                              v36 = *(*a1 + 8);
                              v37 = v33 + v31;
                              v38 = cstdlib_strlen((*(v33 + v31 + 48) + *(v33 + v31)));
                              v39 = heap_Calloc(v36, 1, (v38 + 1));
                              a1[36] = v39;
                              if (!v39)
                              {
                                log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);
                                v17 = 10;
                                return FEDATA_ERROR(v17);
                              }

                              cstdlib_strcpy(v39, (*(v37 + 48) + *v34));
                              *(a1 + 148) = v28;
                              *(a1 + 149) = v32;
                            }
                          }

                          ++v32;
                          v30 = *(v29 + 16);
                          v31 += 72;
                          if (!v30)
                          {
                            break;
                          }
                        }
                      }

                      v27 = *v6;
                    }

                    ++v28;
                  }

                  while (v28 < v27);
                  if (v27)
                  {
                    for (i = 0; i < v27; ++i)
                    {
                      v41 = *(*(*(v6 + 17) + 8) + 8 * i);
                      if (v41)
                      {
                        v42 = *(v41 + 16);
                        if (v42)
                        {
                          v43 = 0;
                          v44 = -1;
                          do
                          {
                            if (++v44 >= *(v42 + 24))
                            {
                              break;
                            }

                            v45 = *(v42 + 16) + v43;
                            if (*(v45 + 40) && (!*(v45 + 8) || !*(v42 + 48)))
                            {
                              log_OutPublic(*(*a1 + 32), a1[23], 24062, 0);
                            }

                            v43 += 72;
                            v42 = *(v41 + 16);
                          }

                          while (v42);
                        }

                        v27 = *v6;
                      }
                    }
                  }
                }

                if (!a1[36])
                {
                  log_OutPublic(*(*a1 + 32), a1[23], 24054, 0, v46);
LABEL_70:
                  v17 = 0;
                  return FEDATA_ERROR(v17);
                }

LABEL_67:
                if (v52)
                {
                  ssftriff_reader_ObjClose(v52);
                }

                return DataBlockFromFileRefCnt_0;
              }

LABEL_66:
              log_OutPublic(*(*a1 + 32), a1[23], 24052, 0);
              goto LABEL_67;
            }
          }

LABEL_65:
          DataBlockFromFileRefCnt_0 = Chunk;
          goto LABEL_66;
        }

        v47 = 0;
        cstdlib_memcpy(&v47 + 2, __src, 2uLL);
        if (HIWORD(v47))
        {
          cstdlib_memcpy(&v47, __src + 2, 2uLL);
          v24 = v47 == 1;
          if (HIWORD(v47) >= 2u)
          {
            cstdlib_memcpy(&v47, __src + 4, 2uLL);
            v25 = v47 == 1;
            if (HIWORD(v47) >= 3u)
            {
              cstdlib_memcpy(&v47, __src + 6, 2uLL);
              if (v47 == 1)
              {
                *a4 = 1;
              }
            }

LABEL_31:
            Chunk = ssftriff_reader_CloseChunk(v52);
            if ((Chunk & 0x80000000) != 0)
            {
              goto LABEL_65;
            }

            goto LABEL_32;
          }
        }

        else
        {
          v24 = 0;
        }

        v25 = 0;
        goto LABEL_31;
      }
    }

    cstdlib_strcpy(__dst, "tokentn/");
    cstdlib_strcat(__dst, *(a3 + 8 * *(a1 + 352)));
    v17 = brokeraux_ComposeBrokerString(*a1, __dst, 1, 1, v48, 0, 0, v61, 0x80uLL);
    if ((v17 & 0x80000000) == 0)
    {
      v20 = getRsrcHandleForThisApi(*a1, a1[1], a1[2], a1[4]);
      if ((ssftriff_reader_ObjOpen(v20, v21, 0, v61, "TOKN", 1031, &v52) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      log_OutPublic(*(*a1 + 32), a1[23], 24057, "%s%s", "Missing broker header file", v61);
      v17 = 3;
    }

    return FEDATA_ERROR(v17);
  }

  v7 = *(*a1 + 32);
  v8 = a1[23];
  v9 = 24055;
LABEL_5:
  log_OutPublic(v7, v8, v9, 0);
  v10 = 7;
LABEL_6:

  return FEDATA_ERROR(v10);
}

uint64_t readDataBlockFromFileDeRefCnt(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  result = InitRsrcFunction(*(a1 + 8), *(a1 + 16), &v5);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(*(a1 + 32), *(a1 + 40), &v4);
    if ((result & 0x80000000) == 0)
    {
      ObjcForThisApi = getObjcForThisApi(v5, v4);
      return objc_ReleaseObject(ObjcForThisApi, *(*(a1 + 152) + 16) + 2);
    }
  }

  return result;
}

uint64_t FEData_blockData_unloadDataFiles(void *a1)
{
  if (*(a1[19] + 16))
  {

    return readDataBlockFromFileDeRefCnt(a1);
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, v1);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_unloadUnusedDataFiles(void *a1)
{
  v1 = *(a1[19] + 16);
  if (v1)
  {
    result = readDataBlockFromFileDeRefCnt(a1);
    *v1 = 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0);

    return FEDATA_ERROR(7);
  }

  return result;
}

uint64_t FEData_ObjOpen(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  log_OutText(*(*a3 + 32), a3[23], 4, 0, "fe_data : ObjOpen Begin");
  v4 = heap_Calloc(*(*a3 + 8), 1, 24);
  if (v4)
  {
    v5 = v4;
    a3[19] = v4;
    v6 = FEData_functionData_ObjOpen(a3, v4);
    if ((v6 & 0x80000000) != 0 || (v6 = FEData_domainDefs_ObjOpen(a3, v5 + 1), (v6 & 0x80000000) != 0))
    {
      v7 = v6;
    }

    else
    {
      v7 = FEData_blockData_ObjOpen(a3, v5 + 2);
      if ((v7 & 0x80000000) == 0)
      {
LABEL_8:
        log_OutText(*(*a3 + 32), a3[23], 4, 0, "fe_data : ObjOpen End (%x)", v7);
        return v7;
      }
    }

    FEData_ObjClose(a3);
    goto LABEL_8;
  }

  log_OutPublic(*(*a3 + 32), a3[23], 24048, 0);

  return TOKENTNERROR(10);
}

uint64_t FEData_ObjClose(uint64_t *a1)
{
  v1 = a1[19];
  if (v1)
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_data : ObjClose Begin");
    v3 = FEData_functionData_ObjClose(a1);
    LODWORD(v4) = v3 & (v3 >> 31);
    v5 = FEData_blockData_ObjClose(a1);
    if (v5 < 0)
    {
      LODWORD(v4) = v5;
    }

    v6 = FEData_domainDefs_ObjClose(a1);
    if (v6 >= 0)
    {
      v4 = v4;
    }

    else
    {
      v4 = v6;
    }

    heap_Free(*(*a1 + 8), v1);
    a1[19] = 0;
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_data : ObjClose End (%x)", v4);
    return v4;
  }

  else
  {

    return TOKENTNERROR(8);
  }
}

uint64_t compareFunctions(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v4 = *result;
  if (*result != *a2)
  {
    goto LABEL_2;
  }

  v6 = result;
  if (v4 == &unk_26ECDB148)
  {
    result = *(result + 48);
    v7 = *(a2 + 48);
    if (!result)
    {
      if (v7)
      {
        goto LABEL_2;
      }

      v4 = &unk_26ECDB148;
      goto LABEL_17;
    }

    if (!v7)
    {
      goto LABEL_2;
    }

    result = cstdlib_strcmp(result, v7);
    if (result)
    {
      goto LABEL_2;
    }

    v4 = *v6;
  }

  if (v4 == &unk_26ECDB164)
  {
    if (*(v6 + 8) != *(a2 + 8))
    {
      goto LABEL_2;
    }

    v4 = &unk_26ECDB164;
  }

  else if (v4 == &unk_26ECDB144)
  {
    if (*(v6 + 8) != *(a2 + 8))
    {
      goto LABEL_2;
    }

    v4 = &unk_26ECDB144;
  }

LABEL_17:
  if ((v4 == &unk_26ECDB14C || v4 == &unk_26ECDB150 || v4 == &unk_26ECDB154 || v4 == &unk_26ECDB158 || v4 == &unk_26ECDB168) && *(v6 + 8) != *(a2 + 8))
  {
    goto LABEL_2;
  }

  result = *(v6 + 40);
  v8 = *(a2 + 40);
  if (result)
  {
    if (!v8)
    {
      goto LABEL_2;
    }

    result = cstdlib_strcmp(result, v8);
    if (result)
    {
      goto LABEL_2;
    }
  }

  else if (v8)
  {
    goto LABEL_2;
  }

  if (*a3)
  {
    return result;
  }

  if (*(v6 + 24) != *(a2 + 24))
  {
LABEL_2:
    *a3 = 1;
    return result;
  }

  if (*(v6 + 24))
  {
    v9 = 0;
    do
    {
      result = compareFunctions(*(*(v6 + 16) + 8 * v9), *(*(a2 + 16) + 8 * v9), a3);
      if (*a3 == 1)
      {
        break;
      }

      ++v9;
    }

    while (v9 < *(v6 + 24));
  }

  return result;
}

uint64_t addEntry(uint64_t *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (*a2)
  {
    v6 = heap_Realloc(*(*a1 + 8), *(a2 + 1), 8 * *a2 + 8);
    if (v6)
    {
LABEL_3:
      *(a2 + 1) = v6;
      v7 = *a2;
      *(v6 + 8 * v7) = a3;
      *a2 = v7 + 1;
      return 0;
    }
  }

  else
  {
    v6 = heap_Calloc(*(*a1 + 8), 1, 8);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);

  return FEDATA_ERROR(10);
}

uint64_t chequeUniqueFunction(unsigned __int16 *a1, uint64_t a2, _WORD *a3)
{
  if (!*a1)
  {
    return 1;
  }

  v6 = 0;
  while (1)
  {
    v8 = 0;
    compareFunctions(a2, *(*(a1 + 1) + 8 * v6), &v8);
    if (!v8)
    {
      break;
    }

    if (++v6 >= *a1)
    {
      return 1;
    }
  }

  result = 0;
  *a3 = v6;
  return result;
}

uint64_t getIndexForFunction(unsigned __int16 *a1, uint64_t a2, _WORD *a3)
{
  if (!*a1)
  {
    return 0;
  }

  v3 = 0;
  while (*(*(a1 + 1) + 8 * v3) != a2)
  {
    if (*a1 == ++v3)
    {
      return 0;
    }
  }

  *a3 = v3;
  return 1;
}

void *compressFunctionData(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    result = heap_Free(*(*result + 8), v4);
    *(a2 + 32) = 0;
  }

  if (*(a2 + 24))
  {
    v5 = 0;
    do
    {
      result = compressFunctionData(v3, *(*(a2 + 16) + 8 * v5++));
    }

    while (v5 < *(a2 + 24));
  }

  return result;
}

void *FEData_freeEntry(void *result, uint64_t a2, int a3)
{
  if (a2)
  {
    v5 = result;
    v6 = *(a2 + 40);
    if (v6)
    {
      result = heap_Free(result[1], v6);
      *(a2 + 40) = 0;
    }

    v7 = *(a2 + 32);
    if (v7)
    {
      result = heap_Free(v5[1], v7);
      *(a2 + 32) = 0;
    }

    v8 = *(a2 + 48);
    if (v8)
    {
      result = heap_Free(v5[1], v8);
      *(a2 + 48) = 0;
    }

    v9 = *(a2 + 16);
    if (v9)
    {
      v10 = *(a2 + 24);
      if (*(a2 + 24))
      {
        v11 = 0;
        do
        {
          v12 = *(a2 + 16);
          if (a3 == 1)
          {
            FEData_freeEntry(v5, *(v12 + 8 * v11), 1);
            heap_Free(v5[1], *(*(a2 + 16) + 8 * v11));
            v12 = *(a2 + 16);
            v10 = *(a2 + 24);
          }

          *(v12 + 8 * v11++) = 0;
        }

        while (v11 < v10);
        v9 = *(a2 + 16);
      }

      result = heap_Free(v5[1], v9);
      *(a2 + 24) = 0;
      *(a2 + 16) = 0;
    }
  }

  return result;
}

uint64_t freeFunctions(void **a1, unsigned __int16 *a2)
{
  if (*a2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a2 + 1) + 8 * v4);
      FEData_freeEntry(*a1, v5, 0);
      heap_Free((*a1)[1], v5);
      ++v4;
    }

    while (v4 < *a2);
  }

  v6 = *(a2 + 1);
  if (v6)
  {
    heap_Free((*a1)[1], v6);
    *(a2 + 1) = 0;
  }

  *a2 = 0;
  return 0;
}

uint64_t FEData_functionData_ObjOpen(uint64_t *a1, void *a2)
{
  v4 = *(*a1 + 32);
  v5 = a1[23];
  if (a2)
  {
    log_OutText(v4, v5, 4, 0, "functionData : ObjOpen Begin");
    *a2 = 0;
    v6 = heap_Calloc(*(*a1 + 8), 1, 16);
    if (v6)
    {
      v7 = v6;
      cstdlib_memset(v6, 0, 0x10uLL);
      *v7 = 0;
      v7[1] = 0;
      *a2 = v7;
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "functionData : ObjOpen End (%x)", 0);
      return 0;
    }

    log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);
    v9 = 10;
  }

  else
  {
    log_OutPublic(v4, v5, 24049, 0);
    v9 = 7;
  }

  return FEDATA_ERROR(v9);
}

uint64_t FEData_functionData_ObjClose(void *a1)
{
  v1 = a1[19];
  if (v1 && (v2 = *v1) != 0)
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "functionData : ObjClose Begin");
    freeFunctions(a1, v2);
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "functionData : ObjClose End (%x)", 0);
    heap_Free(*(*a1 + 8), v2);
    return 0;
  }

  else
  {

    return FEDATA_ERROR(8);
  }
}

uint64_t FEData_readFunctionDataFromBinaryFile(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, unsigned int a7)
{
  v30 = 0;
  __dst = 0;
  cstdlib_memcpy(&__dst + 2, (a5 + *a6), 2uLL);
  FunctionDataFromBinaryFile = 0;
  v15 = *a6 + 2;
  *a6 = v15;
  if (HIWORD(__dst) > 5u)
  {
    if (HIWORD(__dst) > 8u)
    {
      switch(HIWORD(__dst))
      {
        case 9u:
          FunctionDataFromBinaryFile = 0;
          v16 = &unk_26ECDB160;
          break;
        case 0xAu:
          FunctionDataFromBinaryFile = 0;
          v16 = &unk_26ECDB164;
          break;
        case 0xBu:
          FunctionDataFromBinaryFile = 0;
          v16 = &unk_26ECDB168;
          break;
        default:
          goto LABEL_31;
      }
    }

    else
    {
      switch(HIWORD(__dst))
      {
        case 6u:
          FunctionDataFromBinaryFile = 0;
          v16 = &unk_26ECDB154;
          break;
        case 7u:
          FunctionDataFromBinaryFile = 0;
          v16 = &unk_26ECDB158;
          break;
        case 8u:
          FunctionDataFromBinaryFile = 0;
          v16 = &unk_26ECDB15C;
          break;
        default:
          goto LABEL_31;
      }
    }

    goto LABEL_30;
  }

  if (HIWORD(__dst) <= 2u)
  {
    if (HIWORD(__dst))
    {
      FunctionDataFromBinaryFile = 0;
      if (HIWORD(__dst) == 1)
      {
        v16 = &unk_26ECDB140;
      }

      else
      {
        v16 = &unk_26ECDB144;
      }
    }

    else
    {
      FunctionDataFromBinaryFile = 0;
      v16 = &StaticIntPointers_2;
    }

LABEL_30:
    *a4 = v16;
    goto LABEL_31;
  }

  if (HIWORD(__dst) != 3)
  {
    if (HIWORD(__dst) == 4)
    {
      FunctionDataFromBinaryFile = 0;
      v16 = &unk_26ECDB14C;
    }

    else
    {
      if (HIWORD(__dst) != 5)
      {
        goto LABEL_31;
      }

      FunctionDataFromBinaryFile = 0;
      v16 = &unk_26ECDB150;
    }

    goto LABEL_30;
  }

  *a4 = &unk_26ECDB148;
  cstdlib_memcpy(&__dst, (a5 + v15), 2uLL);
  *a6 += 2;
  LOWORD(__dst) = __dst + 1;
  v17 = heap_Calloc(*(a3 + 8), 1, __dst);
  *(a4 + 48) = v17;
  if (!v17)
  {
    goto LABEL_45;
  }

  v30 = __dst;
  v18 = ssftriff_reader_ReadStringZ(a2, a5, a7, *a6, v17, &v30);
  if ((v18 & 0x80000000) != 0 || v30 != __dst)
  {
    goto LABEL_46;
  }

  FunctionDataFromBinaryFile = v18;
  v15 = *a6 + v30;
  *a6 = v15;
LABEL_31:
  cstdlib_memcpy(&__dst, (a5 + v15), 2uLL);
  v19 = *a6 + 2;
  *a6 = v19;
  v20 = __dst;
  if (__dst)
  {
    LOWORD(__dst) = __dst + 1;
    v21 = heap_Calloc(*(a3 + 8), 1, (v20 + 1));
    *(a4 + 40) = v21;
    if (!v21)
    {
      goto LABEL_45;
    }

    v30 = __dst;
    v22 = ssftriff_reader_ReadStringZ(a2, a5, a7, *a6, v21, &v30);
    if ((v22 & 0x80000000) == 0 && v30 == __dst)
    {
      FunctionDataFromBinaryFile = v22;
      v19 = *a6 + v30;
      *a6 = v19;
      goto LABEL_37;
    }

LABEL_46:
    v28 = 0;
    return FEDATA_ERROR(v28);
  }

  *(a4 + 40) = 0;
LABEL_37:
  cstdlib_memcpy((a4 + 8), (a5 + v19), 2uLL);
  v23 = *a6 + 2;
  *a6 = v23;
  cstdlib_memcpy(&__dst, (a5 + v23), 2uLL);
  *a6 += 2;
  v24 = __dst;
  *(a4 + 24) = __dst;
  if (!v24)
  {
    return FunctionDataFromBinaryFile;
  }

  v25 = heap_Calloc(*(a3 + 8), 1, 8 * v24);
  *(a4 + 16) = v25;
  if (!v25)
  {
LABEL_45:
    log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);
    v28 = 10;
    return FEDATA_ERROR(v28);
  }

  if (*(a4 + 24))
  {
    v26 = 0;
    while (1)
    {
      v27 = heap_Calloc(*(a3 + 8), 1, 56);
      if (!v27)
      {
        break;
      }

      *(*(a4 + 16) + 8 * v26) = v27;
      *v27 = &StaticIntPointers_2;
      *(v27 + 24) = 0;
      *(v27 + 16) = 0;
      *(v27 + 40) = 0;
      *(v27 + 48) = 0;
      *(v27 + 32) = 0;
      FunctionDataFromBinaryFile = FEData_readFunctionDataFromBinaryFile(a1, a2, a3, v27, a5, a6, a7);
      if ((FunctionDataFromBinaryFile & 0x80000000) == 0 && ++v26 < *(a4 + 24))
      {
        continue;
      }

      return FunctionDataFromBinaryFile;
    }

    goto LABEL_45;
  }

  return FunctionDataFromBinaryFile;
}

uint64_t FEData_functionData_getFunction(uint64_t a1, unsigned int a2, void *a3)
{
  v3 = **(a1 + 152);
  if (v3)
  {
    if (*v3 > a2)
    {
      *a3 = *(*(v3 + 1) + 8 * a2);
      return 0;
    }

    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24047, "%s%d%s%d");
  }

  else
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24049, 0);
  }

  return FEDATA_ERROR(7);
}

uint64_t FEFunctionMap_ObjOpen(uint64_t *a1)
{
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_functionmap : ObjOpen Begin");
  v2 = heap_Calloc(*(*a1 + 8), 1, 16);
  if (v2)
  {
    *v2 = 0;
    v2[1] = 0;
    a1[20] = v2;
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_functionmap : ObjOpen End (%x)", 0);
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);

    return TOKENTNERROR(10);
  }
}

uint64_t FEFunctionMap_ObjClose(void *a1)
{
  v1 = a1[20];
  if (v1)
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_functionmap : ObjClose Begin");
    v3 = 0;
    v4 = *a1;
    v5 = 1;
    do
    {
      v6 = v5;
      v7 = *(v1 + 8 * v3);
      if (v7)
      {
        ssftmap_ObjClose(v7);
        *(v1 + 8 * v3) = 0;
      }

      v5 = 0;
      v3 = 1;
    }

    while ((v6 & 1) != 0);
    log_OutText(*(v4 + 32), a1[23], 4, 0, "fe_functionmap : ObjClose End (%x)", 0);
    heap_Free(*(*a1 + 8), v1);
    return 0;
  }

  else
  {

    return TOKENTNERROR(8);
  }
}

uint64_t FEFunctionMap_GetMap(uint64_t *a1, uint64_t *a2)
{
  v3 = *(*a1 + 8);
  v6[0] = xmmword_287EECB30;
  v6[1] = *off_287EECB40;
  v7 = off_287EECB50;
  v4 = ssftmap_ObjOpen(v3, 0, v6, a2);
  result = 0;
  if ((v4 & 0x80000000) != 0)
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24039, 0);
    return v4;
  }

  return result;
}

uint64_t action2FunctionMap_CopyMapKey(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1 || !a2 || !a3)
  {
    return TOKENTNERROR(7);
  }

  *a3 = a1;
  return 0;
}

uint64_t action2FunctionMap_CompareKeys(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    v2 = -1;
  }

  else
  {
    v2 = 1;
  }

  if (*a1 == *a2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t action2FunctionMap_CopyFunctionData(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1 || !a2 || !a3)
  {
    return TOKENTNERROR(7);
  }

  *a3 = a1;
  return 0;
}

uint64_t FEFunctionMap_GetFunction(uint64_t a1, unsigned int a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 160);
  *a4 = 0;
  ssftmap_Find(*(v4 + 8 * a2), a3, a4);
  return 0;
}

uint64_t FERuntimeData_ObjOpen(uint64_t *a1)
{
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_runtimedata : ObjOpen Begin");
  v2 = heap_Calloc(*(*a1 + 8), 1, 88);
  if (v2)
  {
    v3 = v2;
    a1[22] = v2;
    v4 = *(*a1 + 8);
    v11 = xmmword_26ECDB178;
    v12 = 0;
    if (vector_ObjOpen(v4, &v11, 5, v3))
    {
      v5 = 0;
    }

    else
    {
      log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);
      v5 = TOKENTNERROR(10);
      if ((v5 & 0x80000000) != 0)
      {
        goto LABEL_12;
      }
    }

    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *(v3 + 40) = 50;
    *(v3 + 32) = 0x8800050000;
    v7 = heap_Calloc(*(*a1 + 8), 1, 816);
    *(v3 + 24) = v7;
    if (v7)
    {
      v8 = (v7 + 16 * *(v3 + 32));
      v9 = *(v3 + 34) * *(v3 + 36) + 1;
      v8[1] = v9;
      *v8 = 0;
      v10 = heap_Calloc(*(*a1 + 8), 1, v9);
      *v8 = v10;
      if (v10)
      {
        ++*(v3 + 32);
LABEL_13:
        log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_runtimedata : ObjOpen End (%x)", v5);
        return v5;
      }
    }

    log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);
    v5 = TOKENTNERROR(10);
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_12:
    FERuntimeData_ObjClose(a1);
    goto LABEL_13;
  }

  log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);

  return TOKENTNERROR(10);
}

uint64_t FERuntimeData_ObjClose(void *a1)
{
  v1 = a1[22];
  if (v1)
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_runtimedata : ObjClose Begin");
    v3 = a1[22];
    if (*v3)
    {
      vector_ObjClose(*v3);
      *v3 = 0;
    }

    node_clearMem(a1);
    v4 = *(v1 + 24);
    if (v4)
    {
      if (*v4)
      {
        heap_Free(*(*a1 + 8), *v4);
        v4 = *(v1 + 24);
        *v4 = 0;
      }

      heap_Free(*(*a1 + 8), v4);
      *(v1 + 24) = 0;
    }

    *(v1 + 16) = 0;
    heap_Free(*(*a1 + 8), v1);
    a1[22] = 0;
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_runtimedata : ObjClose End (%x)", 0);
    return 0;
  }

  else
  {

    return TOKENTNERROR(8);
  }
}

void *node_clearMem(void *result)
{
  v1 = result[22];
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 32);
    if (v3 >= 2)
    {
      v4 = result;
      v5 = 1;
      v6 = 16;
      do
      {
        v7 = *(v2 + v6);
        if (v7)
        {
          result = heap_Free(*(*v4 + 8), v7);
          v2 = *(v1 + 24);
          *(v2 + v6) = 0;
          v3 = *(v1 + 32);
        }

        ++v5;
        v6 += 16;
      }

      while (v5 < v3);
      if (v3 >= 2)
      {
        result = cstdlib_memset((v2 + 16), 0, (16 * v3 + 0xFFFFFFFF0) & 0xFFFFFFFF0);
        *(v1 + 32) = 1;
      }
    }

    *(v1 + 38) = 0;
  }

  return result;
}

uint64_t FERuntimeData_DumpMatch(uint64_t a1, uint64_t a2, __int16 *a3, int a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = 0;
  if (*(a1 + 176))
  {
    if (a4 == 1)
    {
      v7 = "<LOGFE> ";
    }

    else
    {
      v7 = "";
    }

    cstdlib_strcpy(__dst, v7);
    FEData_blockData_getTokenData(a1, *(a2 + 88), &v17);
    cstdlib_strncpy(*(a1 + 552), (*(a1 + 304) + *a3), (a3[1] - *a3));
    *(*(a1 + 552) - *a3 + a3[1]) = 0;
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s%20s [%d,%d] _%s_ (domainBlockID=%d, domainNum=%d)", __dst, *(a1 + 552), *a3, a3[1], *(a1 + 552), *(a2 + 104), *(a2 + 106));
    if (*(a2 + 82))
    {
      v8 = 0;
      v9 = (a2 + 44);
      do
      {
        v10 = *(v9 - 1);
        v11 = *v9;
        if (v10 == -1 && v11 == 0xFFFF)
        {
          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%30s[%d] [%d,%d] _NULL_", "MATCH");
        }

        else
        {
          cstdlib_strncpy(*(a1 + 552), (*(a1 + 304) + v10), (v11 - v10));
          *(*(a1 + 552) - *(v9 - 1) + *v9) = 0;
          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%30s[%d] [%d,%d] _%s_", "MATCH", v8 + 1);
        }

        ++v8;
        v9 += 2;
      }

      while (v8 < *(a2 + 82));
    }

    if (*(a2 + 40))
    {
      v13 = 0;
      v14 = (a2 + 2);
      do
      {
        v15 = *v14;
        v14 += 2;
        log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%30s[%d] %s", "EXPANDEDORTH", v13++, (*(a1 + 504) + v15));
      }

      while (v13 < *(a2 + 40));
    }

    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24049, 0);

    return TOKENTNERROR(7);
  }
}

uint64_t FERuntimeData_DumpMatches(uint64_t a1, const char *a2, int a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 548))
  {
    return 0;
  }

  v4 = *(a1 + 176);
  if (v4)
  {
    if (a3 == 1)
    {
      v7 = "<LOGFE> ";
    }

    else
    {
      v7 = "";
    }

    cstdlib_strcpy(__dst, v7);
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%sfe_runtimedata : DumpMatches Begin %s", __dst, a2);
    if (*(v4 + 16))
    {
      for (i = *(v4 + 8); i; i = *i)
      {
        FERuntimeData_DumpMatch(a1, (i + 12), i + 8, a3);
      }
    }

    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%sfe_runtimedata : DumpMatches End (%x)", __dst, 0);
    return 0;
  }

  log_OutPublic(*(*a1 + 32), *(a1 + 184), 24049, 0);

  return TOKENTNERROR(7);
}

uint64_t FERuntimeData_GetNumMatches(void *a1)
{
  v3 = a1[22];
  if (v3)
  {
    return *(v3 + 16);
  }

  log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, v1, v2);
  return 0;
}

uint64_t FERuntimeData_FreeMatches(void *a1, int a2)
{
  v4 = a1[22];
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_runtimedata : FreeMatches Begin");
  node_clearMem(a1);
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  if (a2 == 1)
  {
    vector_Clear(*v4);
  }

  log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_runtimedata : FreeMatches End (%x)", 0);
  return 0;
}

uint64_t FERuntimeData_AddDomainRange(uint64_t a1, void **a2)
{
  if (vector_AddGet(**(a1 + 176), a2))
  {
    cstdlib_memset(*a2, 0, 0xCuLL);
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0);

    return TOKENTNERROR(10);
  }
}

uint64_t FERuntimeData_AddMatch(uint64_t *a1, void *__src, const void *a3)
{
  if (!__src || !a3)
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0);

    return TOKENTNERROR(7);
  }

  v5 = a1[22];
  v6 = *(v5 + 32);
  if (!*(v5 + 32))
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24035, 0);
LABEL_23:
    v24 = 0;
    goto LABEL_24;
  }

  v8 = *(v5 + 24);
  v9 = *(v5 + 38);
  v10 = v8 + 16 * v9;
  v11 = *(v5 + 36);
  v12 = *(v10 + 12);
  v13 = v12 + v11;
  if (v12 + v11 < *(v10 + 8))
  {
    goto LABEL_10;
  }

  if (v6 + 1 >= *(v5 + 40))
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24036, "%s%d");
    goto LABEL_23;
  }

  if (v9 + 1 >= v6)
  {
    v14 = (v8 + 16 * *(v5 + 32));
    v15 = *(v5 + 34) * v11 + 1;
    v14[1] = v15;
    *v14 = 0;
    v16 = heap_Calloc(*(*a1 + 8), 1, v15);
    *v14 = v16;
    if (v16)
    {
      ++*(v5 + 32);
      LOWORD(v9) = *(v5 + 38);
      v8 = *(v5 + 24);
      v11 = *(v5 + 36);
      goto LABEL_9;
    }

    log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);
    v24 = 10;
LABEL_24:
    LODWORD(result) = TOKENTNERROR(v24);
    if (result >= 0)
    {
      return 6;
    }

    else
    {
      return result;
    }
  }

LABEL_9:
  v17 = v9 + 1;
  *(v5 + 38) = v17;
  v10 = v8 + 16 * v17;
  v12 = *(v10 + 12);
  v13 = v12 + v11;
LABEL_10:
  *(v10 + 12) = v13;
  if (!*v10)
  {
    return 6;
  }

  v18 = *v10 + v12;
  *v18 = 0;
  *(v18 + 8) = 0;
  cstdlib_memcpy((v18 + 16), __src, 4uLL);
  cstdlib_memcpy((v18 + 24), a3, 0x70uLL);
  v19 = *(v5 + 8);
  if (v19)
  {
    v20 = *(v18 + 16);
    while (1)
    {
      v21 = v19;
      v22 = *(v19 + 8);
      if (v22 == v20)
      {
        break;
      }

      if (v22 >= v20)
      {
        v28 = v21[1];
        v21[1] = v18;
        *v18 = v21;
        if (!v28)
        {
          goto LABEL_40;
        }

        *(v18 + 8) = v28;
        *v28 = v18;
        goto LABEL_41;
      }

      v19 = *v21;
      if (!*v21)
      {
        *v21 = v18;
        *(v18 + 8) = v21;
        goto LABEL_41;
      }
    }

    v25 = *(v18 + 18);
    if (*(v21 + 9) > v25)
    {
      while (1)
      {
        v26 = v21;
        v21 = v21[1];
        if (!v21)
        {
          break;
        }

        if (*(v21 + 8) != v20 || *(v21 + 9) <= v25)
        {
          v26[1] = v18;
          *v18 = v26;
          *(v18 + 8) = v21;
          *v21 = v18;
          goto LABEL_41;
        }
      }

      v26[1] = v18;
      *v18 = v26;
      goto LABEL_40;
    }

    while (1)
    {
      v27 = v21;
      v21 = *v21;
      if (!v21)
      {
        break;
      }

      if (*(v21 + 8) != v20 || *(v21 + 9) >= v25)
      {
        *v27 = v18;
        *v18 = v21;
        *(v18 + 8) = v27;
        v21[1] = v18;
        goto LABEL_41;
      }
    }

    *v27 = v18;
    *(v18 + 8) = v27;
  }

  else
  {
LABEL_40:
    *(v5 + 8) = v18;
  }

LABEL_41:
  result = 0;
  ++*(v5 + 16);
  return result;
}

uint64_t FERuntimeData_FindLongestMatch(uint64_t a1, unsigned __int16 *a2, _WORD *a3)
{
  v3 = *(a1 + 176);
  if (*(v3 + 16))
  {
    v4 = *(v3 + 8);
    for (*a3 = a2[1]; v4; v4 = *v4)
    {
      v5 = *(v4 + 8);
      v6 = *a2;
      if (v5 == v6)
      {
        *a3 = *(v4 + 9);
      }

      else if (v5 > v6)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t FERuntimeData_GetAllMatchesAtKey(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 176);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v5 = *(v2 + 8);
  if (v5)
  {
    v6 = 0;
    do
    {
      if (*(v5 + 8) != *a2)
      {
        break;
      }

      if (*(v5 + 9) != a2[1])
      {
        break;
      }

      ++v6;
      v5 = *v5;
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  result = resetMatchList(a1, v6);
  if ((result & 0x80000000) == 0)
  {
    v8 = *(v2 + 8);
    if (v8)
    {
      v9 = *a2;
      do
      {
        if (*(v8 + 8) != v9)
        {
          break;
        }

        if (*(v8 + 9) != a2[1])
        {
          break;
        }

        v10 = *(a1 + 386);
        *(*(a1 + 376) + 8 * v10) = v8 + 3;
        *(a1 + 386) = v10 + 1;
        v8 = *v8;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t FERuntimeData_DeleteSubsumedkeys(uint64_t a1, unsigned __int16 *a2, int a3)
{
  v3 = *(a1 + 176);
  if (*(v3 + 16))
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v5 = *a2;
      while (1)
      {
        v6 = *(v4 + 8);
        if (v6 == v5 && *(v4 + 9) == a3)
        {
          goto LABEL_8;
        }

        if (v6 < v5)
        {
          break;
        }

        if (*(v4 + 9) <= a3)
        {
          v7 = *v4;
        }

        else
        {
          v7 = *v4;
          if (v6 >= a3)
          {
            goto LABEL_16;
          }
        }

        v8 = v4[1];
        if (!v8)
        {
          if (v7)
          {
            v7[1] = 0;
          }

          *(v3 + 8) = v7;
          v9 = *v4;
          if (!*v4)
          {
            goto LABEL_16;
          }

LABEL_15:
          v9[1] = v4[1];
          goto LABEL_16;
        }

        *v8 = v7;
        v9 = v7;
        if (v7)
        {
          goto LABEL_15;
        }

LABEL_16:
        v4 = v7;
        if (!v7)
        {
          return 0;
        }
      }

      if (v6 > a3)
      {
        return 0;
      }

LABEL_8:
      v7 = *v4;
      goto LABEL_16;
    }
  }

  return 0;
}

uint64_t FERuntimeData_DeleteMatch(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = *(a1 + 176);
  if (*(v3 + 16))
  {
    v4 = (v3 + 8);
    v5 = (v3 + 8);
    while (1)
    {
      v5 = *v5;
      if (!v5)
      {
        return 0;
      }

      v6 = *(v5 + 8);
      v7 = *a2;
      if (__PAIR64__(*(v5 + 9), v6) == __PAIR64__(a2[1], v7) && v5[14] == *(a3 + 88))
      {
        break;
      }

      if (v6 > v7)
      {
        return 0;
      }
    }

    v9 = *v5;
    v10 = v5[1];
    if (v10)
    {
      *v10 = v9;
      if (!v9)
      {
        return 0;
      }

      goto LABEL_14;
    }

    if (v9)
    {
      v9[1] = 0;
    }

    *v4 = v9;
    v9 = *v5;
    if (*v5)
    {
LABEL_14:
      v9[1] = v5[1];
    }
  }

  return 0;
}

uint64_t FERuntimeData_GetKeyAtPos(uint64_t a1, int a2, void *a3, void *a4)
{
  v4 = *(a1 + 176);
  if (*(v4 + 16))
  {
    v5 = (v4 + 8);
    do
    {
      v5 = *v5;
      if (!v5)
      {
        break;
      }

      v6 = *(v5 + 8);
      if (v6 == a2)
      {
        *a3 = v5 + 2;
        *a4 = v5 + 3;
        return 0;
      }
    }

    while (v6 <= a2);
  }

  return 0;
}

uint64_t FERuntimeData_UpdateDomainRange(void *a1, unsigned int a2, __int16 a3)
{
  v6 = a1[22];
  v8 = 0;
  if (vector_GetElemAt(*v6, a2, &v8))
  {
    result = 0;
    *(v8 + 2) = a3;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24037, "%s%d", "domainIndex", a2);
    return TOKENTNERROR(0);
  }

  return result;
}

uint64_t FERuntimeData_GetDomainRange(uint64_t a1, unsigned int a2, void *a3)
{
  if (vector_GetElemAt(**(a1 + 176), a2, a3))
  {
    return 0;
  }

  log_OutPublic(*(*a1 + 32), *(a1 + 184), 24037, "%s%d", "domainIndex", a2);

  return TOKENTNERROR(0);
}

uint64_t FERuntimeData_GetActiveDomains(uint64_t a1, uint64_t a2, _WORD *a3, int a4, int a5, int a6)
{
  v15 = 0;
  v11 = *(a1 + 176);
  if (vector_GetElemAt(*v11, 0, &v15))
  {
    v12 = 0;
    while (a6)
    {
      v13 = *a3;
      if (v13 <= 0x1F3)
      {
        goto LABEL_5;
      }

LABEL_9:
      if (!vector_GetElemAt(*v11, ++v12, &v15))
      {
        return 0;
      }
    }

    if (a4 < *v15)
    {
      goto LABEL_9;
    }

    if (a5 > v15[1])
    {
      goto LABEL_9;
    }

    v13 = *a3;
    if (v13 >= 0x1F4)
    {
      goto LABEL_9;
    }

LABEL_5:
    *(a2 + 2 * v13) = v12;
    ++*a3;
    goto LABEL_9;
  }

  return 0;
}

uint64_t FERuntimeData_PruneAndDumpActiveDomains(void *a1)
{
  v11 = 0;
  v2 = a1[22];
  if (vector_GetElemAt(*v2, 0, &v11))
  {
    v3 = 0;
    v4 = 0;
    do
    {
      if (*(v11 + 2) == 1)
      {
        v5 = "ACTIVE";
      }

      else
      {
        v5 = "INACTIVE - REMOVE";
      }

      log_OutText(*(*a1 + 32), a1[23], 4, 0, "DomainRange [%d,%d] %s", *v11, v11[1], v5);
      if (*(v11 + 2))
      {
        ++v4;
      }

      else if (!vector_Remove(*v2, v3))
      {
        log_OutPublic(*(*a1 + 32), a1[23], 24038, "%s%d", "domain range index", v3);
        return 0;
      }

      v3 = v4;
    }

    while (vector_GetElemAt(*v2, v4, &v11));
  }

  Size = vector_GetSize(*v2);
  v7 = *(*a1 + 32);
  v8 = a1[23];
  if (Size)
  {
    log_OutText(v7, v8, 4, 0, "%d Final Active Domains", Size);
    if (vector_GetElemAt(*v2, 0, &v11))
    {
      v9 = 0;
      do
      {
        log_OutText(*(*a1 + 32), a1[23], 4, 0, "Domain[block=%d,num=%d] Range [%d,%d]", v11[3], v11[2], *v11, v11[1]);
        ++v9;
      }

      while (vector_GetElemAt(*v2, v9, &v11));
    }
  }

  else
  {
    log_OutText(v7, v8, 4, 0, "No Final Active Domains");
  }

  return 0;
}

uint64_t FERuntimeData_GetDomainBlockIndex(void *a1, unsigned int a2, _WORD *a3, _WORD *a4)
{
  v8 = a1[22];
  v11 = 0;
  if (vector_GetElemAt(*v8, a2, &v11))
  {
    result = 0;
    v10 = v11;
    *a3 = *(v11 + 6);
    *a4 = *(v10 + 4);
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24038, "%s%d", "iDomainIndexID", a2);
    return TOKENTNERROR(0);
  }

  return result;
}

uint64_t applyChecks(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v26[1] = 0;
  v27 = 0;
  v26[0] = 0;
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer : applyChecks Begin (recursionlevel=%d)", a5);
  inited = initStrRes(a1, &v29);
  if ((inited & 0x80000000) == 0)
  {
    DomainDefBlockInfo = initStrRes(a1, &v27);
    if ((DomainDefBlockInfo & 0x80000000) != 0)
    {
LABEL_29:
      clearStrRes(*a1, &v27);
      clearStrRes(*a1, &v29);
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer : applyChecks End");
      return DomainDefBlockInfo;
    }

    if (*(a3 + 24))
    {
      v12 = 0;
      while (1)
      {
        log_OutText(*(*a1 + 32), a1[23], 5, 0, "level %d Apply Check %d ...", a5, v12);
        v13 = applyChecks(a1, a2, *(*(a3 + 16) + 8 * v12), &v29, (a5 + 1));
        if ((v13 & 0x80000000) != 0)
        {
          break;
        }

        if (WORD1(v30))
        {
          log_OutText(*(*a1 + 32), a1[23], 5, 0, "After check %d, result = %s", v12, v29);
        }

        DomainDefBlockInfo = add2StringV3(a1, &v27, &v29);
        if ((DomainDefBlockInfo & 0x80000000) != 0)
        {
          goto LABEL_29;
        }

        if (v12 + 1 != *(a3 + 24))
        {
          DomainDefBlockInfo = add2StringV2(a1, &v27, " ");
          if ((DomainDefBlockInfo & 0x80000000) != 0)
          {
            goto LABEL_29;
          }
        }

        WORD1(v30) = 0;
        *v29 = 0;
        if (++v12 >= *(a3 + 24))
        {
          goto LABEL_12;
        }
      }

LABEL_21:
      DomainDefBlockInfo = v13;
      goto LABEL_29;
    }

LABEL_12:
    clearStrRes(*a1, &v29);
    if (WORD1(v28))
    {
      log_OutText(*(*a1 + 32), a1[23], 5, 0, "doing function calls on expanded string %s", v27);
    }

    FEFunctionMap_GetFunction(a1, 0, *a3, &v31);
    if (!v31)
    {
      v16 = *(*a1 + 32);
      v17 = a1[23];
      if (WORD1(v28))
      {
        log_OutPublic(v16, v17, 24001, "%s%s");
      }

      else
      {
        log_OutPublic(v16, v17, 24001, 0, v22, v23);
      }

      goto LABEL_29;
    }

    v13 = initStrRes(a1, v26);
    if ((v13 & 0x80000000) != 0)
    {
      goto LABEL_21;
    }

    if ((**a3 & 0xFFFFFFFE) == 8)
    {
      LODWORD(v25) = 0;
      v14 = a1[41];
      *v14 = v27;
      *(v14 + 8) = v26;
      *(v14 + 32) = 0;
      *(v14 + 40) = *(a3 + 8);
      v15 = v31(a1, &v25);
      if ((v15 & 0x80000000) == 0)
      {
LABEL_18:
        v15 = add2StringV3(a1, a4, v26);
      }
    }

    else
    {
      v25 = 0;
      v24 = 0;
      DomainDefBlockInfo = FEData_blockData_newGetDomainDefBlockInfo(a1, *(*(a1[41] + 24) + 104), &v25);
      if ((DomainDefBlockInfo & 0x80000000) != 0)
      {
        goto LABEL_27;
      }

      v18 = a1[41];
      if (*(*(v18 + 24) + 106) > *(v25 + 24))
      {
        log_OutPublic(*(*a1 + 32), a1[23], 24002, 0);
        goto LABEL_27;
      }

      v20 = *(v25 + 16) + 72 * *(*(v18 + 24) + 106);
      *v18 = *(a3 + 40);
      *(v18 + 8) = v26;
      if (*(v20 + 60))
      {
        v21 = a1[36];
      }

      else
      {
        v21 = *(v20 + 48) + *(v20 + 2);
      }

      *(v18 + 32) = v21;
      *(v18 + 40) = *(a3 + 8);
      v15 = v31(a1, &v24);
      if ((v15 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }
    }

    DomainDefBlockInfo = v15;
LABEL_27:
    clearStrRes(*a1, v26);
    goto LABEL_29;
  }

  return inited;
}

uint64_t validateCurrentMatch(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4, const char *a5, uint64_t a6, int *a7)
{
  v20 = 0;
  v18 = 0;
  v19 = 0;
  log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "tokenizer : validateCurrentMatch Begin");
  *a7 = 1;
  if (partialMatchFoundInBasicToken(a1, a3) != 1)
  {
    if (*(a1 + 548) == 1)
    {
      FERuntimeData_DumpMatch(a1, a2, a3, 0);
    }

    FEData_blockData_getTokenAndCheckData(a1, a6, &v19, &v20, &v18);
    if (v20)
    {
      log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "Applying check rule for token %s", a5);
      *(a1 + 402) = 0;
      **(a1 + 392) = 0;
      v15 = *(a1 + 328);
      *(v15 + 16) = a3;
      *(v15 + 24) = a2;
      v14 = applyChecks(a1, a4, v18, a1 + 392, 0);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      v16 = *(a1 + 402);
      if (*(a1 + 402))
      {
        v16 = cstdlib_strcmp(*(a1 + 392), "TRUE") == 0;
        *a7 = v16;
      }

      else
      {
        *a7 = 0;
      }
    }

    else
    {
      v14 = 0;
      v16 = *a7;
    }

    log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "tokenizer : validateCurrentMatch End result=%d", v16);
    return v14;
  }

  log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "tokenizer : validateCurrentMatch End result=%d (partial match in basic token found)", *a7);
  v14 = 0;
  *a7 = 0;
  return v14;
}

uint64_t tokenizer_CheckNOTNULL(uint64_t a1, _DWORD *a2)
{
  *a2 = 0;
  if (*(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "_NOTNULL( %d) = ", *(*(a1 + 328) + 40));
  }

  v8 = 0;
  if (!validateMatchAndGetKey(a1, &v8))
  {
    v3 = *(*(a1 + 328) + 8);
LABEL_10:
    v5 = "FALSE";
    goto LABEL_11;
  }

  v3 = *(*(a1 + 328) + 8);
  if (v8 == -1 && HIWORD(v8) == 0xFFFF)
  {
    goto LABEL_10;
  }

  v5 = "TRUE";
LABEL_11:
  v6 = add2StringV2(a1, v3, v5);
  if ((v6 & 0x80000000) == 0 && *(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s", **(*(a1 + 328) + 8));
  }

  return v6;
}

uint64_t tokenizer_CheckLessThan(uint64_t a1, _DWORD *a2)
{
  v11 = 0;
  if (*(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "_LESSTHAN( %d, %s) = ", *(*(a1 + 328) + 40), **(a1 + 328));
  }

  v10 = 0;
  *a2 = 0;
  if (validateMatchAndGetKey(a1, &v10))
  {
    if (v10 == -1 && HIWORD(v10) == 0xFFFF)
    {
      if (*(a1 + 548) == 1)
      {
        log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "NULL SUBMATCH");
      }

      v7 = *(*(a1 + 328) + 8);
      v6 = "TRUE";
    }

    else
    {
      if (!getValFromSentence(a1, &v10, &v11))
      {
        *a2 = 0;
      }

      getValFromArgString(a1, &v11 + 1);
      v5 = v11 >= HIWORD(v11);
      *a2 = v11 < HIWORD(v11);
      if (v5)
      {
        v6 = "FALSE";
      }

      else
      {
        v6 = "TRUE";
      }

      v7 = *(*(a1 + 328) + 8);
    }
  }

  else
  {
    v7 = *(*(a1 + 328) + 8);
    v6 = "FALSE";
  }

  v8 = add2StringV2(a1, v7, v6);
  if ((v8 & 0x80000000) == 0 && *(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s", **(*(a1 + 328) + 8));
  }

  return v8;
}

uint64_t addExpandedOrthography2Match(uint64_t a1, _DWORD *a2)
{
  *a2 = 0;
  v4 = *(a1 + 328);
  v5 = *(v4 + 40);
  v6 = (*(v4 + 24) + 4 * *(*(v4 + 24) + 40));
  *v6 = v5;
  v6[1] = *(a1 + 514);
  result = add2StringV5(a1, a1 + 504, *(a1 + 560));
  if ((result & 0x80000000) == 0)
  {
    ++*(*(*(a1 + 328) + 24) + 40);
    *a2 = 1;
  }

  return result;
}

uint64_t compareToken(uint64_t *a1, char *__s, uint64_t a3, unsigned int a4, int a5, unsigned int a6, unsigned int a7, int *a8)
{
  v16 = cstdlib_strlen(__s);
  v17 = a4;
  *a8 = 0;
  if (a6 <= a4)
  {
    v18 = a4;
  }

  else
  {
    v18 = a6;
  }

  if (v18 <= a7)
  {
    v18 = a7;
  }

  v19 = 0;
  if (v16)
  {
    do
    {
      if (__s[v19] == a3)
      {
        break;
      }

      ++v19;
    }

    while (v19 < v16);
  }

  if (a3 != __s[v19])
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24003, "%s%s%s%c", "dictionaryStr", __s, "fieldSeparator", a3);
LABEL_22:
    v27 = 0;
    result = 0;
LABEL_50:
    *a8 = v27;
    return result;
  }

  v35 = a5;
  v20 = a1;
  v36 = a8;
  if (a6 == 1)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  if (a7 == 1)
  {
    v22 = v19;
  }

  else
  {
    v22 = 0;
  }

  if (a4 == 1)
  {
    v23 = v19;
  }

  else
  {
    v23 = 0;
  }

  if (v18 != 1)
  {
    v26 = 0;
    v25 = 0;
    v24 = 0;
    v29 = 1;
    while (1)
    {
      v30 = v19 + 1;
      v19 = v30;
      if (v16 > v30)
      {
        do
        {
          if (a3 == __s[v19])
          {
            break;
          }

          ++v19;
        }

        while (v16 > v19);
        if (v30 == v16 && v30 != v19)
        {
          break;
        }
      }

      if (++v29 == a6)
      {
        v25 = v30;
        v21 = v19;
      }

      if (v29 == a7)
      {
        v26 = v30;
        v22 = v19;
      }

      if (v29 == v17)
      {
        v24 = v30;
        v23 = v19;
      }

      if (v29 == v18)
      {
        goto LABEL_36;
      }
    }

    log_OutPublic(*(*v20 + 32), v20[23], 24003, "%s%s%s%d%s%c", "dictionaryStr", __s);
    goto LABEL_48;
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
LABEL_36:
  v31 = v20;
  v32 = cstdlib_strlen(*v20[41]);
  v33 = v23 - v24;
  v34 = v33 >= 1 && v32 == v33;
  if (!v34 || cstdlib_strncmp(&__s[v24], *v31[41], v32))
  {
LABEL_48:
    v27 = 0;
    result = 0;
LABEL_49:
    a8 = v36;
    goto LABEL_50;
  }

  if (v26 != v22 && !cstdlib_strstr(&__s[v26], *(v31[41] + 32)))
  {
    a8 = v36;
    if (*(v31 + 137) == 1)
    {
      log_OutText(*(*v31 + 32), v31[23], 5, 0, "search word %s, domain=%s - blocked on domain", *v31[41], *(v31[41] + 32));
    }

    goto LABEL_22;
  }

  if (v35 != 1)
  {
    result = 0;
    goto LABEL_54;
  }

  if (v25 == v21)
  {
    log_OutPublic(*(*v31 + 32), v31[23], 24004, "%s%s%s%s");
    goto LABEL_48;
  }

  __s[v21 - v25] = 0;
  result = add2StringV2(v31, (v31 + 70), __s);
  if ((result & 0x80000000) == 0)
  {
LABEL_54:
    v27 = 1;
    goto LABEL_49;
  }

  return result;
}

uint64_t doDictionaryLookup(uint64_t a1, uint64_t a2, unsigned int a3, int a4, unsigned int a5, unsigned int a6, int *a7, uint64_t a8, int a9)
{
  v26 = 0;
  v25 = 0;
  v24 = 0;
  *a7 = 0;
  v17 = (*(*(a1 + 88) + 152))(*(a1 + 96), *(a1 + 104), a2, *(a1 + 592), &v26, &v25, &v24);
  if ((v17 & 0x80000000) == 0)
  {
    if (v25)
    {
      goto LABEL_24;
    }

    if (a9 != 1)
    {
      v20 = cstdlib_strlen(*(a1 + 592));
      v21 = *(a1 + 600);
      if (4 * v20 >= v21)
      {
        v22 = growStrRes(a1, a1 + 592, (4 * v20) | 1u);
        if ((v22 & 0x80000000) != 0)
        {
          return v22;
        }

        LOWORD(v21) = *(a1 + 600);
      }

      v17 = (*(*(a1 + 88) + 112))(*(a1 + 96), *(a1 + 104), *(*(a1 + 328) + 32), *(a1 + 592), (v21 - 1));
      if (cstdlib_strlen(*(a1 + 592)))
      {
        v17 = (*(*(a1 + 88) + 152))(*(a1 + 96), *(a1 + 104), a2, *(a1 + 592), &v26, &v25, &v24, a8);
        if ((v17 & 0x80000000) == 0)
        {
          if (v25)
          {
LABEL_24:
            if (!*a7)
            {
              v18 = 0;
              do
              {
                v17 = compareToken(a1, *(v26 + 8 * v18), v24, a3, a4, a5, a6, a7);
                if ((v17 & 0x80000000) != 0)
                {
                  break;
                }

                ++v18;
              }

              while (!*a7 && v18 < v25);
            }
          }
        }
      }
    }
  }

  return v17;
}

uint64_t doDictionaryLookupLoop(uint64_t a1, int *a2, _DWORD *a3, int a4)
{
  *a2 = 0;
  result = doDictionaryLookup(a1, "tnlab", 1u, 0, 0, 2u, a2, 1, a4);
  if ((result & 0x80000000) == 0 && *a2 != 1)
  {
    cstdlib_strcpy(*(a1 + 592), *(a1 + 576));
    result = doDictionaryLookup(a1, "tn", 2u, 1, 1u, 3u, a2, *(a1 + 609), a4);
    if ((result & 0x80000000) == 0)
    {
      if (*a2 == 1)
      {
        *a3 = 1;
      }

      else
      {
        cstdlib_strcpy(*(a1 + 592), *(a1 + 576));
        return doDictionaryLookup(a1, "g2p", 2u, 0, 0, 3u, a2, *(a1 + 608), a4);
      }
    }
  }

  return result;
}

uint64_t tokenizer_CheckToken(uint64_t a1, _DWORD *a2, int a3)
{
  v16 = 0;
  v14 = 0;
  if (*(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "_ISTOKEN( %d, %s) = ", *(*(a1 + 328) + 40), **(a1 + 328));
  }

  v15 = 0;
  *a2 = 0;
  if (!validateMatchAndGetKey(a1, &v15))
  {
    goto LABEL_18;
  }

  if (v15 == -1 && HIWORD(v15) == 0xFFFF)
  {
    if (*(a1 + 548) == 1)
    {
      log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "NULL SUBMATCH");
    }

    goto LABEL_21;
  }

  if ((resetStrRes(a1, a1 + 576) & 0x80000000) != 0 || (resetStrRes(a1, a1 + 592) & 0x80000000) != 0)
  {
    return TOKENTNERROR(8);
  }

  v7 = add2StringV4(a1, a1 + 592, v15, SHIWORD(v15));
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v7 = add2StringV4(a1, a1 + 576, v15, SHIWORD(v15));
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  if (*(a1 + 548) == 1)
  {
    v8 = *(*(a1 + 328) + 32);
    if (!v8)
    {
      v8 = "";
    }

    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "search word %s, domain=%s", *(a1 + 592), v8);
  }

  *(a1 + 570) = 0;
  **(a1 + 560) = 0;
  v7 = doDictionaryLookupLoop(a1, &v16, &v14, a3);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  if (v16 == 1)
  {
    if (v14 != 1)
    {
      goto LABEL_21;
    }

    v13 = 0;
    v7 = addExpandedOrthography2Match(a1, &v13);
    if ((v7 & 0x80000000) == 0)
    {
      if (v13 != 1)
      {
        if (*(a1 + 548) == 1)
        {
          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "ERROR : problem adding expanded orthography for word %s", *(a1 + 592));
        }

        goto LABEL_18;
      }

LABEL_21:
      v9 = *(*(a1 + 328) + 8);
      v10 = "TRUE";
      goto LABEL_22;
    }

    return v7;
  }

LABEL_18:
  v9 = *(*(a1 + 328) + 8);
  v10 = "FALSE";
LABEL_22:
  v11 = add2StringV2(a1, v9, v10);
  if ((v11 & 0x80000000) == 0 && *(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s", **(*(a1 + 328) + 8));
  }

  return v11;
}

uint64_t tokenizer_CheckEqualTo(uint64_t a1, _DWORD *a2)
{
  v10 = 0;
  if (*(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "_EQUALTO( %d, %s) = ", *(*(a1 + 328) + 40), **(a1 + 328));
  }

  v9 = 0;
  *a2 = 0;
  if (validateMatchAndGetKey(a1, &v9))
  {
    v4 = v9 == -1 && HIWORD(v9) == 0xFFFF;
    if (v4)
    {
      if (*(a1 + 548) == 1)
      {
        log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "NULL SUBMATCH");
      }

      v6 = *(*(a1 + 328) + 8);
      v5 = "TRUE";
    }

    else
    {
      if (!getValFromSentence(a1, &v9, &v10))
      {
        *a2 = 0;
      }

      getValFromArgString(a1, &v10 + 1);
      v4 = v10 == HIWORD(v10);
      *a2 = v4;
      if (v4)
      {
        v5 = "TRUE";
      }

      else
      {
        v5 = "FALSE";
      }

      v6 = *(*(a1 + 328) + 8);
    }
  }

  else
  {
    v6 = *(*(a1 + 328) + 8);
    v5 = "FALSE";
  }

  v7 = add2StringV2(a1, v6, v5);
  if ((v7 & 0x80000000) == 0 && *(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s", **(*(a1 + 328) + 8));
  }

  return v7;
}

uint64_t tokenizer_CheckAND(uint64_t a1, _DWORD *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "_AND( %s) = ", **(a1 + 328));
  }

  *a2 = 0;
  if (parseIntoBinaryArgs(a1, __s1, v8) && !cstdlib_strcmp(__s1, "TRUE"))
  {
    v4 = "TRUE";
    v7 = cstdlib_strcmp(v8, "TRUE");
    *a2 = v7 == 0;
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *a2 = 0;
  }

  v4 = "FALSE";
LABEL_7:
  v5 = add2StringV2(a1, *(*(a1 + 328) + 8), v4);
  if ((v5 & 0x80000000) == 0 && *(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s", **(*(a1 + 328) + 8));
  }

  return v5;
}

uint64_t getValFromSentence(uint64_t a1, __int16 *a2, _WORD *a3)
{
  v4 = *a2;
  v5 = a2[1];
  if (v4 == -1 && v5 == 0xFFFF)
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24005, 0);
  }

  else
  {
    v8 = (v5 - v4);
    cstdlib_strncpy(*(a1 + 552), (*(a1 + 304) + v4), v8);
    *(*(a1 + 552) + v8) = 0;
    v9 = *(a1 + 552);
    if (v5 == v4)
    {
LABEL_12:
      *a3 = cstdlib_atoi(v9);
      return 1;
    }

    v10 = 0;
    while (1)
    {
      v11 = v9[v10];
      if (v11 != 32 && (v11 - 48) >= 0xA)
      {
        break;
      }

      if (v8 == ++v10)
      {
        goto LABEL_12;
      }
    }

    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24006, "%s%s");
  }

  return 0;
}

uint64_t getValFromArgString(uint64_t a1, _WORD *a2)
{
  v4 = cstdlib_strlen(**(a1 + 328));
  v5 = **(a1 + 328);
  if (v4)
  {
    v6 = 0;
    while (1)
    {
      v7 = v5[v6];
      if (v7 != 32 && (v7 - 48) >= 0xA)
      {
        break;
      }

      if (++v6 >= v4)
      {
        goto LABEL_8;
      }
    }

    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24006, "%s%s", "string", v5);
    return 0;
  }

  else
  {
LABEL_8:
    *a2 = cstdlib_atoi(v5);
    return 1;
  }
}

uint64_t parseIntoBinaryArgs(uint64_t a1, char *a2, char *a3)
{
  v6 = cstdlib_strlen(**(a1 + 328));
  v7 = v6;
  v8 = v6;
  if (!v6)
  {
    goto LABEL_8;
  }

  v9 = **(a1 + 328);
  if (*v9 == 32)
  {
    LOWORD(v10) = 0;
  }

  else
  {
    LOWORD(v10) = 0;
    do
    {
      v10 = v10 + 1;
    }

    while (v10 < v6 && v9[v10] != 32);
  }

  if (v10 != v6)
  {
    cstdlib_strncpy(a2, **(a1 + 328), v10);
    a2[v10] = 0;
    v11 = v10;
    do
    {
      v12 = ++v11;
    }

    while (v11 < v7 && *(**(a1 + 328) + v11) == 32);
    if (v8 != v11)
    {
      v13 = v8 - v11;
      if (v8 > v11)
      {
        v14 = **(a1 + 328);
        if (*(v14 + v11) != 32)
        {
          LOWORD(v15) = v11;
          do
          {
            v15 = v15 + 1;
            v12 = v15;
          }

          while (v15 < v7 && *(v14 + v15) != 32);
        }
      }

      if (v8 == v12)
      {
        cstdlib_strncpy(a3, (**(a1 + 328) + v11), v13);
        a3[v13] = 0;
        return 1;
      }
    }

    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24008, "%s%s");
  }

  else
  {
LABEL_8:
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24007, "%s%s");
  }

  return 0;
}

uint64_t validateMatchAndGetKey(uint64_t *a1, _WORD *a2)
{
  v2 = a1[41];
  v3 = *(v2 + 40);
  if (*(v2 + 40))
  {
    v4 = *(v2 + 24);
    if (v3 > *(v4 + 82))
    {
      log_OutPublic(*(*a1 + 32), a1[23], 24008, "%s%d", "index", v3);
      return 0;
    }

    v6 = v4 + 42;
    *a2 = *(v6 + 4 * (v3 - 1));
    a2[1] = *(v6 + 4 * v3 - 2);
  }

  else
  {
    *a2 = **(v2 + 16);
  }

  return 1;
}

uint64_t tokenizer_CheckOR(uint64_t a1, _DWORD *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "_OR( %s) = ", **(a1 + 328));
  }

  *a2 = 0;
  if (parseIntoBinaryArgs(a1, __s1, v8))
  {
    if (!cstdlib_strcmp(__s1, "TRUE"))
    {
      *a2 = 1;
      v4 = "TRUE";
      goto LABEL_10;
    }

    v4 = "TRUE";
    v5 = cstdlib_strcmp(v8, "TRUE");
    *a2 = v5 == 0;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *a2 = 0;
  }

  v4 = "FALSE";
LABEL_10:
  v6 = add2StringV2(a1, *(*(a1 + 328) + 8), v4);
  if ((v6 & 0x80000000) == 0 && *(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s", **(*(a1 + 328) + 8));
  }

  return v6;
}